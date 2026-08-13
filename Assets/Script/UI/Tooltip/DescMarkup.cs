using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace UI.Tooltip
{
    /// <summary>
    /// Parses {id} references in desc text into text/reference segments.
    /// RenderRichText highlights references; Parse collects their ids.
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

        /// <summary>Parses desc into text/reference segments (pure).</summary>
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

        /// <summary>Renders desc as TMP rich text, replacing references with highlighted names (falls back to id).</summary>
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
