namespace Core.Data
{
    public class ViewConfigData
    {
        public string deathAnimationName = "Death";
        public float deathAnimationStateTimeout = 3f;
        public float deathAnimationDefaultClipLength = 1f;
        public bool useMinecraftStyleDeath = true;//是否使用"我的世界式"死亡动画（程序化后倒+下沉，不依赖动画clip）
        public float minecraftDeathFallDegrees = 90f;//后倒角度（锚点在脚底，向后旋转该角度躺平）
        public float minecraftDeathFallDuration = 0.5f;//后倒时长（秒）
        public float minecraftDeathSinkDuration = 0.8f;//下沉时长（秒）
        public float minecraftDeathSinkFactor = 1.0f;//下沉倍率（相对模型站立高度）
        public string defaultImage = "UI/blindness";//没有资源时的默认图片
        public string defaultPortraitMob = "Assets/Perfob/mob_portrait/Steve";
        public string defaultPortraitMobRoot = "Assets/Perfob/mob_portrait";
        public float BattleStartUnitAnimationAscendingHeight = 10.0f;
        public int mapNodeMaxPerLayer = 6;
    }
}
