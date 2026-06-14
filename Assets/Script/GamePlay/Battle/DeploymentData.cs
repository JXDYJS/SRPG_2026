using System;
using System.Collections.Generic;
using UnityEngine;
using Global;

namespace GamePlay.Battle
{
    /// <summary>
    /// DeploymentSlot — 单个部署槽位数据（运行时，不存盘）
    /// </summary>
    [Serializable]
    public class DeploymentSlot
    {
        public int CharacterIndex;
        public Vector3Int GridPosition;
        public UnitFacing Facing = UnitFacing.South;
    }

    /// <summary>
    /// DeploymentData — 部署阶段运行时数据
    /// 仅在 Deploying 阶段存活，确认部署后销毁
    /// </summary>
    public class DeploymentData
    {
        public List<DeploymentSlot> Slots = new List<DeploymentSlot>();
        public int MaxSlots;
    }
}
