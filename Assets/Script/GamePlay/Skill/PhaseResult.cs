using System.Collections.Generic;
using GamePlay.Unit;
using Global;
using UnityEngine;

namespace GamePlay.Skill
{
    public class PhaseResult
    {
        public MapUnit Caster;
        public Vector3Int TargetPosition;
        public List<TargetResult> TargetResults;
        public bool CasterMoved;
        public Vector3Int CasterEndPosition;

        public PhaseResult(MapUnit caster, Vector3Int targetPosition)
        {
            Caster = caster;
            TargetPosition = targetPosition;
            TargetResults = new List<TargetResult>();
            CasterMoved = false;
        }
    }
}
