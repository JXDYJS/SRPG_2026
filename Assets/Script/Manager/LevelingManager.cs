using UnityEngine;
using Character.data;
using Character.instance;
using GamePlay.unit;

namespace Managers
{
    public class LevelingManager : MonoBehaviour
    {
        [Header("设置")]
        public GlobalLevelConfig globalLevelConfig;
        int GlobalLevel = 0;
        int CurrentExp = 0;
        int UpgradePoint = 0;
        public void AddExp(int exp)
        {
            CurrentExp += exp;
            CheckLevelUp();
        }

        private void CheckLevelUp()
        {
            if (CurrentExp >= globalLevelConfig.ExpRequirements[GlobalLevel])
            {
                CurrentExp -= globalLevelConfig.ExpRequirements[GlobalLevel];
                GlobalLevel++;
                UpgradePoint+=3;
            }
        }

        public bool TryUpgradeUnit(MapUnit unit)
        {
            if(UpgradePoint <= 0 && unit.Character.level >= unit.Character.maxLevel)
            {
                return false;
            }
            UpgradePoint--;
            unit.LevelUp();
            return true;
        }
    }
}