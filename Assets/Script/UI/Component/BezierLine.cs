using UnityEngine;
using UnityEngine.UI;

namespace UI.Component
{
public class BezierLine : MaskableGraphic
    {
        [SerializeField] private float _width = 4f;
        [SerializeField] private int _segments = 24;
        [SerializeField] private Transform _startTarget;
        [SerializeField] private Transform _endTarget;
        // Reference rect: target world positions are converted to this rect's local space
        [SerializeField] private RectTransform _referenceRect;

        public void SetEndpoints(Transform start, Transform end, RectTransform reference)
        {
            _startTarget = start;
            _endTarget = end;
            _referenceRect = reference;
            SetVerticesDirty();
        }

        protected override void OnPopulateMesh(VertexHelper vh)
        {
            vh.Clear();

            if (_startTarget == null || _endTarget == null || _referenceRect == null)
                return;

            Vector2 from = _referenceRect.InverseTransformPoint(_startTarget.position);
            Vector2 to = _referenceRect.InverseTransformPoint(_endTarget.position);
            Vector2 dir = to - from;
            float dist = dir.magnitude;

            if (dist < 0.01f) return;

            float halfWidth = _width * 0.5f;
            float vPull = dir.y * 0.4f;
            float hPull = Mathf.Clamp(dir.x * 0.3f, -50f, 50f);

            Vector2 cp1 = from + new Vector2(hPull, vPull);
            Vector2 cp2 = to - new Vector2(hPull, vPull);

            UIVertex vert = UIVertex.simpleVert;
            vert.color = color;

            for (int i = 0; i <= _segments; i++)
            {
                float t = i / (float)_segments;
                Vector2 p = EvalCubic(from, cp1, cp2, to, t);
                Vector2 tan;

                if (i == 0)
                    tan = (EvalCubic(from, cp1, cp2, to, 0.001f) - p).normalized;
                else if (i == _segments)
                    tan = (p - EvalCubic(from, cp1, cp2, to, 0.999f)).normalized;
                else
                    tan = (EvalCubic(from, cp1, cp2, to, t + 0.001f) -
                           EvalCubic(from, cp1, cp2, to, t - 0.001f)).normalized;

                Vector2 perp = new(-tan.y, tan.x);

                vert.position = (Vector3)(p - perp * halfWidth);
                vh.AddVert(vert);

                vert.position = (Vector3)(p + perp * halfWidth);
                vh.AddVert(vert);
            }

            for (int i = 0; i < _segments; i++)
            {
                int idx = i * 2;
                vh.AddTriangle(idx, idx + 2, idx + 1);
                vh.AddTriangle(idx + 1, idx + 2, idx + 3);
            }
        }

        private static Vector2 EvalCubic(Vector2 p0, Vector2 p1, Vector2 p2, Vector2 p3, float t)
        {
            float u = 1f - t;
            return u * u * u * p0 + 3f * u * u * t * p1 + 3f * u * t * t * p2 + t * t * t * p3;
        }
    }
}
