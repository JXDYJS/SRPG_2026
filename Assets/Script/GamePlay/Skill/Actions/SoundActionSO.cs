using Cysharp.Threading.Tasks;
using GamePlay.View;
using UnityEngine;
using UnityEngine.AddressableAssets;

namespace GamePlay.Skill
{
    /// <summary>
    /// Plays a one-shot sound clip on the caster's audio source, optionally
    /// spatialized at a body part.
    /// </summary>
    [CreateAssetMenu(menuName = "Game/Skill Action/Sound")]
    public class SoundActionSO : SkillActionSO
    {
        public AssetReferenceT<AudioClip> Clip;
        public float Volume = 1f;
        public BodyPart Socket = BodyPart.None;

        public override async UniTask ExecuteAsync(UnitView caster, ActionContext ctx)
        {
            if (Clip == null || !Clip.RuntimeKeyIsValid())
            {
                return;
            }

            var handle = Clip.LoadAssetAsync();
            AudioClip clip = await handle.Task;

            if (clip == null)
            {
                Debug.LogWarning($"[Sound] {name}: failed to load audio clip.");
                return;
            }

            caster.PlayOneShot(clip, Volume, Socket);
        }
    }
}
