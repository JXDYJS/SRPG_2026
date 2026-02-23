using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using GamePlay.unit;
using GamePlay.Grid;
using Managers;
using Global;
using Anim;

namespace GamePlay.Skill
{
    public static class SkillPerformer
    {
        public static IEnumerator Perform(MapUnit attacker, Vector3Int targetGrid, SkillDataSO skillData)
        {
            var config = skillData.VisualConfig;
            var linker = attacker.GetComponentInChildren<AnimationEventLinker>();
            
            bool hasHit = false;
            bool isAnimFinished = false;

            if (linker != null) 
            {
                linker.OnHitPoint += () => { hasHit = true; };
                linker.OnCompleted += () => { isAnimFinished = true; };
            }

            //  起手：播放动画
            if (!string.IsNullOrEmpty(config.CastAnimTrigger))
            {
                attacker.GetComponent<Animator>().SetTrigger(config.CastAnimTrigger);
            }

            // 3. 等待打击点
            if (linker != null) 
            {
                yield return new WaitUntil(() => hasHit);
            }
            else 
            {
                yield return new WaitForSeconds(config.CastDelay);
            }

            if (config.Transit == TransitType.Projectile && config.ProjectilePrefab != null)
            {
                // === 远程 ===
                Vector3 targetWorldPos = MapManager.Instance.GetWorldPosition(targetGrid) + Vector3.up;
                var bullet = GameObject.Instantiate(config.ProjectilePrefab, attacker.transform.position + Vector3.up, Quaternion.identity);
                bullet.transform.LookAt(targetWorldPos); // 面向目标

                while (bullet != null && Vector3.Distance(bullet.transform.position, targetWorldPos) > 0.1f)
                {
                    bullet.transform.position = Vector3.MoveTowards(bullet.transform.position, targetWorldPos, config.ProjectileSpeed * Time.deltaTime);
                    yield return null;
                }
                
                if (bullet != null) GameObject.Destroy(bullet);
                yield return new WaitForSeconds(0.15f); // 爽感停顿
            }

            // 【统一结算伤害和表现】
            List<Vector3Int> affectedTiles = AttackRangeSystem.GetSkillRange3D(attacker.gridPosition, targetGrid, skillData);
            foreach (Vector3Int pos in affectedTiles) 
            {
                MapUnit target = UnitManager.Instance.GetUnitAt(pos);
                if (target != null && target != attacker) 
                {
                    attacker.Attack(target);
                    if (!target.gameObject.activeInHierarchy) continue;
                    target.PlayHitVisual();
                    if (config.HitEffect != null)
                        GameObject.Instantiate(config.HitEffect, target.transform.position + Vector3.up, Quaternion.identity);
                }
            }

            if (linker != null) 
            {
                yield return new WaitUntil(() => isAnimFinished);
            }
            else 
            {
                yield return new WaitForSeconds(config.HitDelay);
            }
            
            // 6. 清理
            if (linker != null) 
            {
                linker.OnHitPoint = null;
                linker.OnCompleted = null;
            }
        }
    }
}