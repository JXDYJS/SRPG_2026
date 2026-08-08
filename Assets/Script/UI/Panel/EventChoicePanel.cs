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
    /// 通用事件选择窗口 — 屏幕渲染器状态机。
    ///
    /// 渲染当前屏（EventFlow.CurrentScreenId）的选项列表；
    /// 点选项 → ExecuteAction → 有结果文本则切结果视图，否则直接跳屏；
    /// 确认 → 按 nextScreen（可被 Action 覆盖）跳屏，空则 Finish 回地图。
    ///
    /// 需要的 prefab 节点（由美术/策划搭建）：
    ///   optionContainer / optionPrefab(挂 EventOptionSlot) / resultView / resultText /
    ///   confirmButton / titleText
    /// </summary>
    [UIPanelResource("UI/Event/EventChoicePanel")]
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
                titleText.text = string.IsNullOrEmpty(EventFlow.CurrentConfig.id) ? "" : $"Event: {EventFlow.CurrentConfig.id}";
            }
            EventFlow.SwitchScreen(EventFlow.CurrentConfig.startScreen);
            RenderCurrentScreen();
        }

        private void RenderCurrentScreen()
        {
            ClearOptions();
            resultView?.SetActive(false);

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

            foreach (var option in screen.options)
            {
                GameObject go = Instantiate(optionPrefab, optionContainer);
                var slot = go.GetComponent<EventOptionSlot>();
                if (slot != null)
                {
                    bool available = EventFlow.IsOptionAvailable(option);
                    slot.Setup(option, available, OnOptionClicked);
                }
                _optionInstances.Add(go);
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
