using System;
using System.Collections.Generic;
using Core.Data;
using Map;
using Managers;
using UI.Panel;
using UnityEngine;

namespace GamePlay.Event
{
    /// <summary>
    /// 事件流程编排 — 静态状态机。
    ///
    /// 流程：节点点击 → Start；窗口渲染当前屏选项；
    /// 选项选中 → ExecuteAction（纯数据变更）→ 结果视图 → 确认 → 切 nextScreen（空则 Finish）。
    ///
    /// Action 均为无参静态方法，可覆盖两处纯数据字段：
    ///   - ResultText：选中后的结果文本（未设置时用配表 option.result 兜底）
    ///   - NextScreenOverride：下一屏（未设置时用配表 option.nextScreen，空 = 事件结束）
    /// </summary>
    public static class EventFlow
    {
        private static readonly Dictionary<string, Type> _panelTypeCache = new();

        public static EventNode CurrentNode { get; private set; }
        public static TableData.EventConfig CurrentConfig { get; private set; }
        public static string CurrentScreenId { get; private set; }

        /// <summary>Action 可覆盖的结果文本，每次执行 action 前清空</summary>
        public static string ResultText { get; set; }

        /// <summary>Action 可覆盖的下一屏，优先级高于配表 nextScreen，读取后清空</summary>
        public static string NextScreenOverride { get; set; }

        /// <summary>事件入口：按 eventId 解析配置并打开对应窗口</summary>
        public static void Start(EventNode node)
        {
            CurrentNode = node;
            ResultText = null;
            NextScreenOverride = null;

            if (string.IsNullOrEmpty(node.eventId) ||
                !Data.Table.EventConfigs.TryGetValue(node.eventId, out TableData.EventConfig config))
            {
                Debug.LogError($"[EventFlow] 事件节点缺少有效 eventId: '{node.eventId}'");
                ReturnToMap();
                return;
            }

            CurrentConfig = config;
            CurrentScreenId = config.startScreen;

            // panelName 非空 → 短路打开专用窗口（小游戏钩子）
            if (!string.IsNullOrEmpty(config.panelName))
            {
                Type panelType = ResolvePanelType(config.panelName);
                if (panelType == null)
                {
                    Debug.LogError($"[EventFlow] 无法解析事件面板: '{config.panelName}'");
                    ReturnToMap();
                    return;
                }
                UIManager.Instance.OpenPanel(panelType, node, UILayer.Popup);
                return;
            }

            UIManager.Instance.OpenPanel<EventChoicePanel>(node, UILayer.Popup);
        }

        /// <summary>渲染选项时判断可用性；condition 为空 = 恒可用</summary>
        public static bool IsOptionAvailable(TableData.EventOption option)
        {
            if (string.IsNullOrEmpty(option.condition)) return true;
            return EventActionResolver.InvokeBool(option.condition);
        }

        /// <summary>执行选项 action（纯数据变更），并清理覆盖字段</summary>
        public static void ExecuteAction(TableData.EventOption option)
        {
            ResultText = null;
            NextScreenOverride = null;
            if (string.IsNullOrEmpty(option.action)) return;
            EventActionResolver.Invoke(option.action);
        }

        /// <summary>确认后决定下一屏；返回空表示事件结束</summary>
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

        /// <summary>选中后要展示的结果文本：Action 覆盖优先，否则配表 result</summary>
        public static string ResolveResultText(TableData.EventOption option)
        {
            if (!string.IsNullOrEmpty(ResultText)) return ResultText;
            return option.result;
        }

        public static void SwitchScreen(string screenId)
        {
            CurrentScreenId = screenId;
        }

        /// <summary>唯一"回到地图"入口：关掉当前事件窗口 + 重开地图 + 解锁下一层</summary>
        public static void Finish<T>() where T : BaseUIPanel
        {
            UIManager.Instance.ClosePanel<T>();
            ReturnToMap();
        }

        private static void ReturnToMap()
        {
            var mapPopWindow = UIManager.Instance.OpenPanel<MapPopWindow>();
            if (mapPopWindow != null)
            {
                mapPopWindow.NextLevel();
            }
        }

        /// <summary>按窗口类名解析 UI.Panel 下的面板 Type</summary>
        private static Type ResolvePanelType(string panelName)
        {
            if (_panelTypeCache.TryGetValue(panelName, out Type cached)) return cached;

            Type type = EventActionResolver.ResolveType(panelName);
            if (type != null)
            {
                _panelTypeCache[panelName] = type;
            }
            return type;
        }
    }
}
