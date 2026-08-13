using System;
using Core.Data;
using Map;
using Managers;
using UI.Panel;
using UnityEngine;

namespace GamePlay.Event
{
    /// <summary>
    /// Static event flow state machine. Start renders the current screen's options; picking one
    /// executes an action, shows the result, then resolves the next screen (empty = event ends).
    /// </summary>
    public static class EventFlow
    {
        public static EventNode CurrentNode { get; private set; }
        public static TableData.EventConfig CurrentConfig { get; private set; }
        public static string CurrentScreenId { get; private set; }

        /// <summary>Result text an action can override; cleared before each action.</summary>
        public static string ResultText { get; set; }

        /// <summary>Next screen an action can override; higher priority than the config, cleared on read.</summary>
        public static string NextScreenOverride { get; set; }

        /// <summary>Entry point: resolve config by eventId and open the matching panel.</summary>
        public static void Start(EventNode node)
        {
            CurrentNode = node;
            ResultText = null;
            NextScreenOverride = null;

            if (string.IsNullOrEmpty(node.eventId) ||
                !Data.Table.EventConfigs.TryGetValue(node.eventId, out TableData.EventConfig config))
            {
                Debug.LogError($"[EventFlow] 事件节点缺少有效 eventId: '{node.eventId}'");
                Utils.Utils.ReturnToMap();
                return;
            }

            CurrentConfig = config;
            CurrentScreenId = config.startScreen;

            // Non-empty panelName short-circuits to a dedicated panel (minigame hook).
            if (!string.IsNullOrEmpty(config.panelName))
            {
                Type panelType = UIManager.ResolvePanelType(config.panelName);
                if (panelType == null)
                {
                    Debug.LogError($"[EventFlow] 无法解析事件面板: '{config.panelName}'");
                    Utils.Utils.ReturnToMap();
                    return;
                }
                UIManager.Instance.OpenPanel(panelType, node, UILayer.Popup);
                return;
            }

            UIManager.Instance.OpenPanel<EventChoicePanel>(node, UILayer.Popup);
        }

        /// <summary>Whether an option is selectable; empty condition is always available.</summary>
        public static bool IsOptionAvailable(TableData.EventOption option)
        {
            if (string.IsNullOrEmpty(option.condition)) return true;
            return EventActionResolver.InvokeBool(option.condition);
        }

        /// <summary>Execute the option's action (pure data change) and clear override fields.</summary>
        public static void ExecuteAction(TableData.EventOption option)
        {
            ResultText = null;
            NextScreenOverride = null;
            if (string.IsNullOrEmpty(option.action)) return;
            EventActionResolver.Invoke(option.action);
        }

        /// <summary>Resolve the next screen after confirmation; empty means the event ends.</summary>
        public static string ResolveNextScreen(TableData.EventOption option)
        {
            if (!string.IsNullOrEmpty(NextScreenOverride))
            {
                string overridden = NextScreenOverride;
                NextScreenOverride = null;
                return overridden;
            }
            return option.nextScreen;
        }

        /// <summary>Result text to display; action override takes priority over the config.</summary>
        public static string ResolveResultText(TableData.EventOption option)
        {
            if (!string.IsNullOrEmpty(ResultText)) return ResultText;
            return option.result;
        }

        public static void SwitchScreen(string screenId)
        {
            CurrentScreenId = screenId;
        }
    }
}
