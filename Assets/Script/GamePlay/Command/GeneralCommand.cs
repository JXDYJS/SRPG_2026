using Global;
using GamePlay.unit;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.Skill;
using System.Collections;
using Managers;
namespace Command
{
    public abstract class BaseCommand : ICommand
    {
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
        public bool isFinished = false;
    }

    public class MoveCommand : BaseCommand
    {
        private MapUnit _unit;
        private List<Vector3Int> _path;

        // 1. 【核心】信号灯
        public bool IsFinished { get; private set; } = false;

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

            // 2. 【逻辑层】瞬间结算
            // 直接把单位的逻辑坐标改到终点
            Vector3Int endPos = _path[_path.Count - 1];
            _unit.SetGridPositionDirectly(endPos); 

            // 3. 【表现层】启动移动协程
            IsFinished = false;
            _unit.StartCoroutine(MoveRoutine());
        }

        private IEnumerator MoveRoutine()
        {
            _unit.SwitchState(UnitState.Moving);

            foreach (var step in _path)
            {
                Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(step);

                //面向目标
                Vector3 direction = (targetWorldPos - _unit.transform.position);
                direction.y = 0; // 忽略高度差的旋转
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
            _unit.SwitchState(UnitState.Idle);
            IsFinished = true;
        }
    }

    //CREATE BY GEMINI
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
            // 1. 【逻辑层】瞬间结算 (数据先行)
            _attacker.Attack(_target); // 这一步只负责算数值，把原来的 AttackVisualRoutine 删掉或改名
            isFinished = false;
            // 2. 【表现层】启动导演协程
            // 因为 Command 不是 MonoBehaviour，我们需要借用 Attacker 来开启协程
            _attacker.StartCoroutine(ExecuteRoutine());
        }

        // 这是一个负责“等待动画”的协程
        private IEnumerator ExecuteRoutine()
        {
            if(_skillData == null)
            {
                Debug.LogError("AttackCommand: SkillData is null");
                yield break;
            }
            _attacker.SetState(UnitState.Attacking);
            yield return SkillPerformer.Perform(_attacker, _target.gridPosition, _skillData);
            isFinished = true;
            _attacker.SetState(UnitState.Idle);
        }
    }
}