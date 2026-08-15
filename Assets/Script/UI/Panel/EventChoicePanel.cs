using System;
using System.Collections.Generic;
using Core.Data;
using DG.Tweening;
using GamePlay.Event;
using Map;
using TMPro;
using UI.Slot;
using UnityEngine;
using UnityEngine.UI;

namespace UI.Panel
{
    /// <summary>
    /// Generic event choice panel: renders the current screen's options, executes the chosen
    /// action, then jumps to the next screen (or finishes if none).
    /// </summary>
    [UIPanelResource("Assets/UI/Event/EventChoicePanel.prefab")]
    public class EventChoicePanel : BaseUIPanel, IEventPanel
    {
        [Header("布局")]
        public Transform optionContainer;
        public GameObject optionPrefab;
        public GameObject resultView;
        public TextMeshProUGUI resultText;
        public Button confirmButton;
        public TextMeshProUGUI titleText;

        private readonly List<GameObject> _optionInstances = new();
        private CanvasGroup _optionCanvasGroup;
        private CanvasGroup _resultCanvasGroup;
        private TableData.EventOption? _lastOption;

        protected override void Awake()
        {
            base.Awake();
            if (optionContainer != null)
            {
                _optionCanvasGroup = optionContainer.GetComponent<CanvasGroup>();
            }
            if (resultView != null)
            {
                _resultCanvasGroup = resultView.GetComponent<CanvasGroup>();
            }
        }
        private void OnEnable()
        {
            for (int i = optionContainer.childCount - 1; i >= 0; i--)
            {
                Destroy(optionContainer.GetChild(i).gameObject);
            }
        }

        public override void OnOpen(object data = null)
        {
            base.OnOpen(data);
            if (data is EventNode node)
            {
                Init(node);
            }
        }

        public void Init(EventNode node)
        {
            if (titleText != null)
            {
                TableData.EventConfig cfg = EventFlow.CurrentConfig;
                titleText.text = !string.IsNullOrEmpty(cfg.title) ? cfg.title : $"Event: {cfg.id}";
            }
            EventFlow.SwitchScreen(EventFlow.CurrentConfig.startScreen);
            RenderCurrentScreen();
        }

        private void RenderCurrentScreen()
        {
            ClearOptions();
            resultView?.SetActive(false);

            Debug.Log($"[EventPanel] 渲染屏幕 '{EventFlow.CurrentScreenId}' 事件='{EventFlow.CurrentConfig.id}' " +
                      $"container={(optionContainer != null)} prefab={(optionPrefab != null)}");

            if (optionContainer == null || optionPrefab == null)
            {
                Debug.LogError("[EventChoicePanel] optionContainer/optionPrefab 未赋值");
                return;
            }

            TableData.EventScreen? found = FindScreen(EventFlow.CurrentScreenId);
            if (!found.HasValue)
            {
                Debug.LogError($"[EventChoicePanel] 找不到屏幕: {EventFlow.CurrentScreenId}");
                Utils.Utils.FinishNode<EventChoicePanel>();
                return;
            }
            TableData.EventScreen screen = found.Value;

            if (screen.options == null || screen.options.Count == 0)
            {
                Debug.LogError($"[EventChoicePanel] 事件 '{EventFlow.CurrentConfig.id}' 屏幕 '{screen.id}' 没有任何选项，请检查 EventConfigs 配置");
                return;
            }

            Debug.Log($"[EventPanel] 找到屏幕 '{screen.id}' 选项数={screen.options.Count}");
            foreach (var option in screen.options)
            {
                try
                {
                    GameObject go = Instantiate(optionPrefab, optionContainer);
                    var slot = go.GetComponent<EventOptionSlot>();
                    Debug.Log($"[EventPanel] 实例化选项 '{option.title}' slot={(slot != null ? "OK" : "NULL")}");
                    if (slot != null)
                    {
                        bool available = EventFlow.IsOptionAvailable(option);
                        slot.Setup(option, available, OnOptionClicked);
                    }
                    _optionInstances.Add(go);
                }
                catch (Exception e)
                {
                    Debug.LogError($"[EventChoicePanel] 实例化选项 '{option.title}' 失败: {e}");
                }
            }

            AnimateIn(_optionCanvasGroup);
        }

        private void OnOptionClicked(TableData.EventOption option)
        {
            _lastOption = option;
            EventFlow.ExecuteAction(option);

            string result = EventFlow.ResolveResultText(option);
            if (string.IsNullOrEmpty(result) || resultView == null || confirmButton == null)
            {
                GoToNextScreen();
                return;
            }

            if (resultText != null)
            {
                resultText.text = result;
            }
            resultView.SetActive(true);
            optionContainer.gameObject.SetActive(false);

            confirmButton.onClick.RemoveAllListeners();
            confirmButton.onClick.AddListener(GoToNextScreen);
            AnimateIn(_resultCanvasGroup);
        }

        private void GoToNextScreen()
        {
            if (!_lastOption.HasValue)
            {
                Utils.Utils.FinishNode<EventChoicePanel>();
                return;
            }

            string next = EventFlow.ResolveNextScreen(_lastOption.Value);
            if (string.IsNullOrEmpty(next))
            {
                Utils.Utils.FinishNode<EventChoicePanel>();
                return;
            }

            EventFlow.SwitchScreen(next);
            resultView?.SetActive(false);
            optionContainer.gameObject.SetActive(true);
            RenderCurrentScreen();
        }

        private TableData.EventScreen? FindScreen(string screenId)
        {
            var screens = EventFlow.CurrentConfig.screens;
            if (screens == null) return null;
            foreach (var screen in screens)
            {
                if (screen.id == screenId) return screen;
            }
            return null;
        }

        private void ClearOptions()
        {
            foreach (var go in _optionInstances)
            {
                if (go != null)
                {
                    Destroy(go);
                }
            }
            _optionInstances.Clear();
        }

        private static void AnimateIn(CanvasGroup canvasGroup)
        {
            if (canvasGroup == null) return;
            canvasGroup.alpha = 0f;
            canvasGroup.DOKill();
            canvasGroup.DOFade(1f, 0.2f).SetEase(Ease.OutCubic);
        }

        public override void OnClose()
        {
            base.OnClose();
            if (confirmButton != null)
            {
                confirmButton.onClick.RemoveAllListeners();
            }
            _lastOption = null;
        }
    }
}
