using System.Collections.Generic;

namespace GamePlay.Grid
{
    /// <summary>Binary min-heap for the A* open set: O(log n) extract/insert.</summary>
    public class AStarMinHeap
    {
        private List<Node> _heap = new List<Node>();

        public int Count => _heap.Count;

        public void Clear()
        {
            _heap.Clear();
        }

        public void Insert(Node node)
        {
            _heap.Add(node);
            HeapifyUp(_heap.Count - 1);
        }

        public Node ExtractMin()
        {
            Node min = _heap[0];
            int last = _heap.Count - 1;
            _heap[0] = _heap[last];
            _heap.RemoveAt(last);
            if (_heap.Count > 0)
                HeapifyDown(0);
            return min;
        }

        private void HeapifyUp(int idx)
        {
            while (idx > 0)
            {
                int parent = (idx - 1) / 2;
                if (_heap[idx].gCost >= _heap[parent].gCost)
                    break;
                Swap(idx, parent);
                idx = parent;
            }
        }

        private void HeapifyDown(int idx)
        {
            int size = _heap.Count;
            while (true)
            {
                int smallest = idx;
                int left = 2 * idx + 1;
                int right = 2 * idx + 2;

                if (left < size && _heap[left].gCost < _heap[smallest].gCost)
                    smallest = left;
                if (right < size && _heap[right].gCost < _heap[smallest].gCost)
                    smallest = right;

                if (smallest == idx) break;
                Swap(idx, smallest);
                idx = smallest;
            }
        }

        private void Swap(int a, int b)
        {
            Node temp = _heap[a];
            _heap[a] = _heap[b];
            _heap[b] = temp;
        }
    }
}
