using System.Collections;
using UnityEngine;
using GamePlay.unit;
using Global;

namespace GamePlay.Skill
{
    public static class SkillPerformer
    {
        public static IEnumerator Perform(MapUnit attacker, MapUnit target, SkillVisualData config)
        {
            // --- 阶段 1: 起手 (Cast) ---
            // 播放动作
            if (!string.IsNullOrEmpty(config.CastAnimTrigger))
            {
                //TODO: 播放动作
                Debug.Log($"{attacker.name} 播放动作: {config.CastAnimTrigger}");
            }
            // 播放施法特效
            if (config.CastEffect != null)
            {
                if(config.CastEffect != null){
                    GameObject.Instantiate(config.CastEffect, attacker.transform.position, Quaternion.identity);
                }
            }
            
            yield return new WaitForSeconds(config.CastDelay);


            // --- 阶段 2: 传导 (Transit) ---
            if (config.Transit == TransitType.Projectile && config.ProjectilePrefab != null)
            {
                // === 生成飞弹 ===
                var bullet = GameObject.Instantiate(config.ProjectilePrefab, attacker.transform.position, Quaternion.identity);
                bullet.transform.LookAt(target.transform); // 面向目标

                // 简单的飞弹追踪逻辑
                while (bullet != null && target != null)
                {
                    // 飞向目标中心点（假设高度+1）
                    Vector3 targetPos = target.transform.position + Vector3.up; 
                    
                    // 移动
                    bullet.transform.position = Vector3.MoveTowards(bullet.transform.position, targetPos, config.ProjectileSpeed * Time.deltaTime);

                    // 撞到了吗？
                    if (Vector3.Distance(bullet.transform.position, targetPos) < 0.2f)
                    {
                        GameObject.Destroy(bullet); // 销毁飞弹
                        break;
                    }
                    yield return null; // 等待下一帧
                }
            }
            else if (config.Transit == TransitType.Teleport)
            {
                // === 瞬移逻辑 ===
                attacker.transform.position = target.transform.position - attacker.transform.forward;
                yield return new WaitForSeconds(0.2f);
            }
            // 如果是 None (近战)，这里直接跳过


            // --- 阶段 3: 命中 (Impact) ---
            if (target != null)
            {
                // 播放受击特效
                if (config.HitEffect != null)
                {
                    GameObject.Instantiate(config.HitEffect, target.transform.position + Vector3.up, Quaternion.identity);
                }
                
                // 播放受击反馈 (变红/后仰)
                target.PlayHitVisual(); 
                
                // TODO: 在这里弹出伤害数字 (ShowDamageText)
            }

            // 等待后摇
            yield return new WaitForSeconds(config.HitDelay);
        }
    }
}