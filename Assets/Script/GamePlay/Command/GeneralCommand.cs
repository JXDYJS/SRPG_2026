using Global;
using GamePlay.unit;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.Skill;
using System.Collections;
using Managers;
using System;
using Cysharp.Threading.Tasks;

namespace Command
{
    public static class Tool
    {
        public static IEnumerator WaitUntilCommandFinish(BaseCommand cmd)
        {
            cmd.Execute();
            
            while (!cmd.IsFinished)
            {
                yield return null;
            }
        }

        public static IEnumerator ExecuteCommandWithCallback(BaseCommand cmd, Action onComplete)
        {
            yield return WaitUntilCommandFinish(cmd);
            onComplete?.Invoke();
        }
    }

    public abstract class BaseCommand : ICommand
    {
        public bool IsFinished { get; protected set; }
        public void Execute()
        {
            UndoSystem.Instance.BeginTransaction();
            OnExecute();
            UndoSystem.Instance.CommitTransaction();
        }

        public void Undo()
        {
            UndoSystem.Instance.Undo();
        }

        protected abstract void OnExecute();
    }

    public class MoveCommand : BaseCommand
    {
        private MapUnit _unit;
        private List<Vector3Int> _path;

        public MoveCommand(MapUnit unit, List<Vector3Int> path)
        {
            _unit = unit;
            _path = path;
        }

        protected override void OnExecute()
        {
            if (_path == null || _path.Count == 0)
            {
                IsFinished = true;
                return;
            }
            if(!_unit.CanMove)
            {
                IsFinished = true;
                return;
            }

            Vector3Int endPos = _path[_path.Count - 1];
            _unit.SetGridPositionDirectly(endPos);

            _unit.MarkAsMoved();

            IsFinished = false;
            _unit.StartCoroutine(MoveRoutine());
        }

        private IEnumerator MoveRoutine()
        {
            _unit.SwitchState(UnitState.Moving);

            foreach (var step in _path)
            {
                Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(step);

                Vector3 direction = (targetWorldPos - _unit.transform.position);
                direction.y = 0;
                if (direction != Vector3.zero)
                {
                    _unit.transform.rotation = Quaternion.LookRotation(direction);
                }
                while (Vector3.Distance(_unit.transform.position, targetWorldPos) > 0.05f)
                {
                    _unit.transform.position = Vector3.MoveTowards(
                        _unit.transform.position, 
                        targetWorldPos, 
                        _unit.moveSpeed * Time.deltaTime
                    );
                    yield return null;
                }
                _unit.transform.position = targetWorldPos;
            }
            _unit.SetGridPosition(Vector3Int.RoundToInt(_unit.transform.position));
            _unit.SwitchState(UnitState.Idle);
            IsFinished = true;
        }
    }

    public class SkillCommand : BaseCommand
    {
        private MapUnit _caster;
        private SkillDataSO _skillData;
        private SkillTargetContext _targetContext;

        public SkillCommand(MapUnit caster, SkillDataSO skillData, SkillTargetContext targetContext)
        {
            _caster = caster;
            _skillData = skillData;
            _targetContext = targetContext;
        }

        protected override void OnExecute()
        {
            _caster.MarkAsActionDone();

            IsFinished = false;
            ExecuteAsync().Forget();
        }

        private async UniTaskVoid ExecuteAsync()
        {
            if (_skillData == null)
            {
                Debug.LogError("SkillCommand: SkillData is null");
                IsFinished = true;
                return;
            }

            if (_targetContext == null)
            {
                Debug.LogError("SkillCommand: TargetContext is null");
                IsFinished = true;
                return;
            }

            _caster.SetState(UnitState.Attacking);

            SkillSequenceResult result = SkillExecutor.ExecuteSequence(_caster, _targetContext, _skillData);

            await SkillPerformer.PerformSkillSequence(_skillData, result);

            IsFinished = true;
            _caster.SetState(UnitState.Idle);
        }
    }
}
