using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace UI.Tooltip
{
    /// <summary>
    /// DescMarkup — 描述文本中的 {id} 引用标记解析器
    ///
    /// 约定：desc 纯文本 + `{引用id}` 标记。例如
    ///   "At battle start all allied units gain 1 stack of {power}."
    /// 解析产物为片段列表（文本段 / 引用段），供两层消费：
    ///   - 渲染：RenderRichText 把引用段替换为高亮富文本（TMP rich text）
    ///   - 收集：Parse 提取引用 id，供 TooltipWindow 分层构建右侧列
    /// 数值占位（如 BuffAdapter 已格式化的 {Stacks}）不会出现在本层。
    /// </summary>
    public static class DescMarkup
    {
        private static readonly Regex _refRegex = new Regex(@"\{([^{}]+)\}", RegexOptions.Compiled);

        public enum SegmentKind
        {
            Text,
            Reference,
        }

        public readonly struct Segment
        {
            public readonly SegmentKind Kind;
            public readonly string Text;

            public Segment(SegmentKind kind, string text)
            {
                Kind = kind;
                Text = text;
            }
        }

        /// <summary>把 desc 解析为文本/引用片段序列（纯函数，无副作用）</summary>
        public static List<Segment> Parse(string desc)
        {
            var segments = new List<Segment>();
            if (string.IsNullOrEmpty(desc)) return segments;

            int pos = 0;
            foreach (Match m in _refRegex.Matches(desc))
            {
                if (m.Index > pos)
                {
                    segments.Add(new Segment(SegmentKind.Text, desc.Substring(pos, m.Index - pos)));
                }
                segments.Add(new Segment(SegmentKind.Reference, m.Groups[1].Value));
                pos = m.Index + m.Length;
            }
            if (pos < desc.Length)
            {
                segments.Add(new Segment(SegmentKind.Text, desc.Substring(pos)));
            }
            return segments;
        }

        /// <summary>
        /// 渲染为 TMP 富文本：文本段原样，引用段替换为高亮名称（未解析到时回退显示 id）。
        /// refNames：id → 显示名，由 TooltipWindow 在解析引用时收集。
        /// </summary>
        public static string RenderRichText(string desc, IReadOnlyDictionary<string, string> refNames)
        {
            List<Segment> segments = Parse(desc);
            if (segments.Count == 0) return string.Empty;

            var sb = new StringBuilder(desc.Length + 16);
            foreach (Segment seg in segments)
            {
                if (seg.Kind == SegmentKind.Text)
                {
                    sb.Append(seg.Text);
                }
                else
                {
                    string name = refNames != null && refNames.TryGetValue(seg.Text, out string n)
                        ? n
                        : seg.Text;
                    sb.Append("<color=#FFD700>").Append(name).Append("</color>");
                }
            }
            return sb.ToString();
        }
    }
}
