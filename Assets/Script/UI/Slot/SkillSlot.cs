using UnityEngine;
using System;

namespace UI.Slot
{
    public class SkillSlot : SimpleSlot
    {
        public TMPro.TextMeshProUGUI Title;//不会被更改  所以直接让外部复制  不会有问题
    }
}