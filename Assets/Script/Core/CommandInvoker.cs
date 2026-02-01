using System.Collections.Generic;
using UnityEngine;

namespace Command
{
    public class CommandInvoker : MonoBehaviour
    {
        // 历史记录堆栈
        private Stack<ICommand> _undoStack = new Stack<ICommand>();

        // 执行一个新命令
        public void ExecuteCommand(ICommand command)
        {
            command.Execute();
            _undoStack.Push(command);
        }

        // 悔棋
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