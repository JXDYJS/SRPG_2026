namespace Core.Data
{
    public class ViewConfigData
    {
        public string deathAnimationName = "Death";
        public float deathAnimationStateTimeout = 3f;
        public float deathAnimationDefaultClipLength = 1f;
        public bool useMinecraftStyleDeath = true;
        public float minecraftDeathFallDegrees = 90f;
        public float minecraftDeathFallDuration = 0.5f;
        public float minecraftDeathSinkDuration = 0.8f;
        public float minecraftDeathSinkFactor = 1.0f;
        public string defaultImage = "UI/blindness";
        public string defaultAddressableImage = "Assets/textures/mob_effect/blindness.png";
        public string defaultPortraitMob = "Assets/Perfob/mob_portrait/Steve";
        public string defaultPortraitMobRoot = "Assets/Perfob/mob_portrait";
        public float BattleStartUnitAnimationAscendingHeight = 10.0f;
        public int mapNodeMaxPerLayer = 6;
    }
}
