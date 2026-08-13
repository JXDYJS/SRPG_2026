namespace Core.Data
{
    public class EventConfigData
    {
        public class FlyBirdData
        {
            public readonly float speed = 60.0f;
            public readonly float spacing = 500f;        // horizontal pipe spacing
            public readonly float gapSize = 140f;        // gap height
            public readonly float gapCenterMin = 80f;    // lowest gap center
            public readonly float gapCenterMax = 300f;   // highest gap center
            public readonly float maxGapDelta = 60f;     // max height diff between adjacent gap centers
            public readonly float speedUpRate = 0.5f;

            public readonly float gravity = 800f;       // gravity acceleration px/s²
            public readonly float flapVel = 300f;        // upward velocity added per click px/s
            public readonly float maxClimbSpeed = 800f;  // max climb speed (rapid-click guard)
            public readonly float maxFallSpeed = -1000f; // terminal fall speed (prevents tunneling)
            public readonly float clickInterval = 0.1f;  // click interval (sec)

            public readonly float angleScale = 0.12f;    // vy -> angle mapping scale
            public readonly float minAngle = -30f;       // max dive angle
            public readonly float maxAngle = 90f;        // max climb angle
            public readonly float rotSpeed = 8f;         // rotation lerp speed
        };
        public readonly FlyBirdData flyBirdData = new();
    }
}
