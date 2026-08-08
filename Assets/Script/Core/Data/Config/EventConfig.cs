namespace Core.Data
{
    public class EventConfigData
    {
        public class FlyBirdData
        {
            public readonly float speed = 60.0f;
            public readonly float spacing = 500f;        // 管柱水平间距
            public readonly float gapSize = 140f;        // 洞口高度
            public readonly float gapCenterMin = 80f;    // 洞中心最低点
            public readonly float gapCenterMax = 300f;   // 洞中心最高点
            public readonly float maxGapDelta = 60f;     // 相邻洞中心最大高度差
            public readonly float speedUpRate = 0.5f;

            // ================== 鸟物理 ==================
            public readonly float gravity = 800f;       // 重力加速度 px/s²
            public readonly float flapVel = 300f;        // 点击累加的上升速度 px/s
            public readonly float maxClimbSpeed = 800f;  // 上升速度上限(连点保护)
            public readonly float maxFallSpeed = -1000f; // 终端下落速度(防穿洞)
            public readonly float clickInterval = 0.1f;  // 连点间隔(秒)

            // ================== 鸟旋转 ==================
            public readonly float angleScale = 0.12f;    // vy → 角度 映射系数
            public readonly float minAngle = -30f;       // 下落最大俯角
            public readonly float maxAngle = 90f;        // 上升最大仰角
            public readonly float rotSpeed = 8f;         // 旋转插值速度
        };
        public readonly FlyBirdData flyBirdData = new();
    }
}