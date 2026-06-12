using System.Collections.Generic;
using UnityEngine;
using Cysharp.Threading.Tasks;

namespace UI.Panel
{
    public class UIStack
    {
        private Stack<IUIPanel> _stack = new Stack<IUIPanel>();
        private bool _isAnimating = false;

        public IUIPanel Current => _stack.Count > 0 ? _stack.Peek() : null;

        public int Count => _stack.Count;

        public async UniTask Push(IUIPanel panel)
        {
            if (_isAnimating)
            {
                Debug.Log($"UIStack: Push ignored, animation in progress");
                return;
            }

            _isAnimating = true;
            Debug.Log($"UIStack: Push called for panel: {panel.GetType().Name}, current stack count: {_stack.Count}");
            
            if (_stack.Count > 0)
            {
                var current = _stack.Peek();
                Debug.Log($"UIStack: Hiding current panel: {current.GetType().Name}");
                current.SetInteractable(false);
                await current.PlayExitAnimation();
            }

            _stack.Push(panel);
            Debug.Log($"UIStack: Pushed panel: {panel.GetType().Name}, stack count now: {_stack.Count}");
            panel.PanelObject.SetActive(true);
            panel.SetInteractable(false);
            await panel.PlayEnterAnimation();
            panel.SetInteractable(true);
            _isAnimating = false;
        }

        public async UniTask Pop()
        {
            if (_isAnimating)
            {
                Debug.Log($"UIStack: Pop ignored, animation in progress");
                return;
            }

            if (_stack.Count == 0) 
            {
                Debug.Log("UIStack: Stack is empty, returning");
                return;
            }

            _isAnimating = true;
            var current = _stack.Pop();
            Debug.Log($"UIStack: Popped panel: {current.GetType().Name}, stack count now: {_stack.Count}");
            current.SetInteractable(false);
            await current.PlayExitAnimation();
            current.PanelObject.SetActive(false);

            if (_stack.Count > 0)
            {
                var previous = _stack.Peek();
                Debug.Log($"UIStack: Showing previous panel: {previous.GetType().Name}");
                previous.PanelObject.SetActive(true);
                previous.SetInteractable(false);
                await previous.PlayEnterAnimation();
                previous.SetInteractable(true);
            }
            else
            {
                Debug.Log("UIStack: Stack is now empty");
            }
            _isAnimating = false;
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
