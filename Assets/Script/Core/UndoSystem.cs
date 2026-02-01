using System.Collections.Generic;
using UnityEngine;

namespace Command
{
    // 所有能被撤销的对象（Unit, 地格, 全局变量）都要实现这个接口
    public interface ITrackable
    {
        object CaptureState();       // 拍快照
        void RestoreState(object state); // 读档
    }

    public class UndoSystem : MonoBehaviour
    {
        public static UndoSystem Instance { get; private set; }

        private class Transaction
        {
            public Dictionary<ITrackable, object> Records = new Dictionary<ITrackable, object>();

            public void RegisterOriginalState(ITrackable target)
            {
                if (!Records.ContainsKey(target))
                {
                    Records[target] = target.CaptureState();
                }
            }

            public void Undo()
            {
                foreach (var kvp in Records)
                {
                    kvp.Key.RestoreState(kvp.Value);
                }
            }
        }

        private Stack<Transaction> _history = new Stack<Transaction>();
        private Transaction _currentTransaction;

        void Awake() { Instance = this; }

        public void BeginTransaction()
        {
            if (_currentTransaction != null) CommitTransaction();
            _currentTransaction = new Transaction();
        }

        public void RegisterDirty(ITrackable target)
        {
            if (_currentTransaction != null)
            {
                _currentTransaction.RegisterOriginalState(target);
            }
        }

        public void CommitTransaction()
        {
            if (_currentTransaction != null && _currentTransaction.Records.Count > 0)
            {
                _history.Push(_currentTransaction);
            }
            _currentTransaction = null;
        }

        public void Undo()
        {
            if (_history.Count > 0)
            {
                Transaction lastTrans = _history.Pop();
                lastTrans.Undo();
                Debug.Log($"撤销成功，回滚了 {lastTrans.Records.Count} 个对象");
            }
        }
    }
}