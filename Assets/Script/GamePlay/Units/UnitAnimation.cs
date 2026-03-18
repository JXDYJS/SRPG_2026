using UnityEngine;

namespace GamePlay.Unit
{
    public class UnitAnimation : MonoBehaviour
    {
        [Header("组件引用")]
        public Animator animator;
        public MapUnit mapUnit;  

        [Header("参数配置")]
        public float dampTime = 0.1f; 

        private static readonly int SpeedHash = Animator.StringToHash("Speed");
        private static readonly int AttackHash = Animator.StringToHash("Attack"); // TODO
        public float currentSpeed = 0f;
        
        private Vector3 _lastPosition;

        void Start()
        {
            if (animator == null) animator = GetComponentInChildren<Animator>();
            if (mapUnit == null) mapUnit = GetComponent<MapUnit>();

            _lastPosition = transform.position;
        }

        void Update()
        {
            float distanceMoved = Vector3.Distance(transform.position, _lastPosition);
            
            currentSpeed = distanceMoved / Time.deltaTime;
            animator.SetFloat(SpeedHash, currentSpeed, dampTime, Time.deltaTime);
            _lastPosition = transform.position;
        }
    }
}