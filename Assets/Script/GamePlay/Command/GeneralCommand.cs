using Global;
using GamePlay.unit;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.Skill;
using System.Collections;
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

        public MoveCommand(MapUnit unit, List<Vector3Int> path)
        {
            _unit = unit;
            _path = path;
        }

        protected override void OnExecute()
        {
            _unit.MoveAlongPath(_path);
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
            yield return SkillPerformer.Perform(_attacker, _target, _skillData.VisualConfig);
            isFinished = true;
            _attacker.SetState(UnitState.Idle);
        }
    }
}