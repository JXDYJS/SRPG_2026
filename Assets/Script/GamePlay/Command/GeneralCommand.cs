using Global;
using GamePlay.unit;
using System.Collections.Generic;
using UnityEngine;
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

    public class AttackCommand : BaseCommand
    {
        private MapUnit _attacker;
        private MapUnit _target;

        public AttackCommand(MapUnit attacker, MapUnit target)
        {
            _attacker = attacker;
            _target = target;
        }

        protected override void OnExecute()
        {
            _attacker.Attack(_target);
        }
    }
}