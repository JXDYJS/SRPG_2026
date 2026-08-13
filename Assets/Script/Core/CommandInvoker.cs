using System.Collections.Generic;
using UnityEngine;

namespace Command
{
    public class CommandInvoker : MonoBehaviour
    {
        private Stack<ICommand> _undoStack = new Stack<ICommand>();

        public void ExecuteCommand(ICommand command)
        {
            command.Execute();
            _undoStack.Push(command);
        }

        public void Undo()
        {
            if (_undoStack.Count > 0)
            {
                ICommand activeCommand = _undoStack.Pop();
                activeCommand.Undo();
            }
            else
            {
                Debug.Log("没有可以撤销的操作了！");
            }
        }
        
        public void ClearHistory()
        {
            _undoStack.Clear();
        }
    }
}