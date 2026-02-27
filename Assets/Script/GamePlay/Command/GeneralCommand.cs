using Global;
using GamePlay.unit;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.Skill;
using System.Collections;
using Managers;
using System;
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

            // 标记单位已移动
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
            _unit.gridPosition = Vector3Int.RoundToInt(_unit.transform.position);
            UnitManager.Instance.UpdateUnitPosition(_unit, _unit.gridPosition);
            _unit.SwitchState(UnitState.Idle);
            IsFinished = true;
        }
    }

    public class AttackCommand : BaseCommand
    {
        private MapUnit _attacker;
        private MapUnit _target;
        private SkillDataSO _skillData;

        public AttackCommand(MapUnit attacker, MapUnit target, SkillDataSO skill)
        {
            _attacker = attacker;
            _target = target;
            _skillData = skill;
        }

        protected override void OnExecute()
        {
            //_attacker.Attack(_target);
            
            // 标记单位已行动（攻击后不能再行动）
            _attacker.MarkAsActionDone();

            IsFinished = false;
            _attacker.StartCoroutine(ExecuteRoutine());
        }

        private IEnumerator ExecuteRoutine()
        {
            if(_skillData == null)
            {
                Debug.LogError("AttackCommand: SkillData is null");
                yield break;
            }
            _attacker.SetState(UnitState.Attacking);
            yield return SkillPerformer.Perform(_attacker, _target.gridPosition, _skillData);
            IsFinished = true;
            _attacker.SetState(UnitState.Idle);
        }
    }
}