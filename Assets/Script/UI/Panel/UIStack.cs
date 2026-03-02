using System.Collections.Generic;
using UnityEngine;
using Cysharp.Threading.Tasks;

namespace UI.Panel
{
    public class UIStack
    {
        private Stack<IUIPanel> _stack = new Stack<IUIPanel>();

        public IUIPanel Current => _stack.Count > 0 ? _stack.Peek() : null;

        public int Count => _stack.Count;

        public async UniTask Push(IUIPanel panel)
        {
            if (_stack.Count > 0)
            {
                var current = _stack.Peek();
                current.SetInteractable(false);
                await current.PlayExitAnimation();
            }

            _stack.Push(panel);
            panel.PanelObject.SetActive(true);
            panel.SetInteractable(false);
            await panel.PlayEnterAnimation();
            panel.SetInteractable(true);
        }

        public async UniTask Pop()
        {
            if (_stack.Count == 0) return;

            var current = _stack.Pop();
            current.SetInteractable(false);
            await current.PlayExitAnimation();
            current.PanelObject.SetActive(false);

            if (_stack.Count > 0)
            {
                var previous = _stack.Peek();
                previous.PanelObject.SetActive(true);
                previous.SetInteractable(false);
                await previous.PlayEnterAnimation();
                previous.SetInteractable(true);
            }
        }

        public void Clear()
        {
            while (_stack.Count > 0)
            {
                var panel = _stack.Pop();
                panel.PanelObject.SetActive(false);
            }
        }

        public bool IsEmpty => _stack.Count == 0;
    }
}
