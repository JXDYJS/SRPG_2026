using UnityEngine;
using System.Collections.Generic;
using GamePlay.relics;   // 引用藏品
using Character.instance; // 引用角色

namespace Managers
{
    public class RunManager : MonoBehaviour
    {
        // 单例模式：保证全局只有一个 RunManager
        public static RunManager Instance { get; private set; }

        [Header("肉鸽全局数据")]
        // 玩家拥有的藏品列表 (MapUnit 会来读取这个列表)
        public List<RelicBase> Relics = new List<RelicBase>();

        // 玩家当前的队伍数据 (灵魂列表)
        public List<CharacterInstance> MyTeam = new List<CharacterInstance>();

        void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
                DontDestroyOnLoad(gameObject); // 核心：切换场景不销毁
            }
            else
            {
                // 如果已经有一个了，销毁新的这个，防止重复
                Destroy(gameObject);
            }
        }

        // 测试辅助方法：给玩家发一个藏品
        public void AddRelic(RelicBase relic)
        {
            if (relic != null && !Relics.Contains(relic))
            {
                Relics.Add(relic);
                Debug.Log($"获得了藏品: {relic.RelicName}");
            }
        }
    }
}