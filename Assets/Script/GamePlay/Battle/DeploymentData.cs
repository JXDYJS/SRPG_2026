using System;
using System.Collections.Generic;
using UnityEngine;
using Global;

namespace GamePlay.Battle
{
    [Serializable]
    public class DeploymentSlot
    {
        public int CharacterIndex;
        public Vector3Int GridPosition;
        public UnitFacing Facing = UnitFacing.South;
    }

    public class DeploymentData
    {
        public List<DeploymentSlot> Slots = new List<DeploymentSlot>();
        public int MaxSlots;
    }
}
