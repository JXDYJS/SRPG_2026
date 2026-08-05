using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UI.Item;

namespace UI.Tooltip
{
    /// <summary>
    /// Tooltip — 单张提示卡（title + desc）
    ///
    /// 由 TooltipWindow 实例化，接收统一描述 IItemDescriptor：
    ///   - Title = desc.Name
    ///   - Desc = desc.Tooltip（为空时回退 Subtext，兼容 stat 等无描述的类型）
    ///           引用段 {id} 经 DescMarkup 渲染为富文本高亮，refNames 提供 id→显示名
    /// </summary>
    public class Tooltip : MonoBehaviour
    {
        public TextMeshProUGUI Title;
        public TextMeshProUGUI Desc;

        public void Init(IItemDescriptor desc, IReadOnlyDictionary<string, string> refNames = null)
        {
            if (Title != null)
            {
                Title.text = desc?.Name ?? string.Empty;
            }
            if (Desc != null)
            {
                string body = string.IsNullOrEmpty(desc?.Tooltip) ? desc?.Subtext : desc.Tooltip;
                Desc.text = DescMarkup.RenderRichText(body ?? string.Empty, refNames);
            }
        }
    }
}
