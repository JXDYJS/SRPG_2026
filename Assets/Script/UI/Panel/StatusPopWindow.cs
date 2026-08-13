using UnityEngine;
using System;
using GamePlay.Units;
using GamePlay.Buff;
using UnityEngine.UI;
using Managers;
using Core.Data;
using System.IO;
using Cysharp.Threading.Tasks;
using System.Collections.Generic;
using UI.Item;
namespace UI.Panel
{
    [UIPanelResource("Assets/UI/Battle/StatusPopWindow.prefab")]
    public class StatusPopWindow : BaseUIPanel
    {
        public UnityEngine.UI.GridLayoutGroup BuffContent;
        public UnityEngine.UI.VerticalLayoutGroup StatsContent;
        public UnityEngine.UI.VerticalLayoutGroup SkillContent;
        public GameObject SimpleSlotPerfab;
        public GameObject StatSlotPerfab;
        public GameObject SkillSlotPerfab;
        public VirtualCamera VirtualCamera;
        public Button BgBtn;
        public int RowCount = 3;
        public float SlotSize = 40f;
        public Shader targetShader;

        protected override void Awake()
        {
            base.Awake();
            AnimateOnOpenClose = true;
        }

        public void initBuffStatus(MapUnit unit)
        {
            int count = unit.ActiveBuffs.Count;
            var buffList = unit.ActiveBuffs;
            int row = (count + RowCount - 1) / RowCount;
            float height = SlotSize * row;
            float width = SlotSize * RowCount;
            var rect = BuffContent.gameObject.GetComponent<RectTransform>();
            if (rect.rect.width < width)
            {
                Debug.LogError($"rect width < width,rect width :{rect.rect.width},width: {width}");
                return;
            }
            float space = (rect.rect.width - width) / (RowCount - 1);
            BuffContent.cellSize = new Vector2(SlotSize, SlotSize);
            BuffContent.spacing = new Vector2(space, 0f);
            for (int i = BuffContent.transform.childCount - 1; i >= 0; i--)
                Destroy(BuffContent.transform.GetChild(i).gameObject);
            foreach (var buff in buffList)
            {
                var simpleItem = Instantiate(SimpleSlotPerfab, BuffContent.gameObject.transform).GetComponent<UI.Slot.SimpleSlot>();
                simpleItem.Init(buff);
            }
        }
        public void initStats(MapUnit unit)
        {
            for (int i = StatsContent.transform.childCount - 1; i >= 0; i--)
            {
                Destroy(StatsContent.transform.GetChild(i).gameObject);
            }
            var statList = unit.Character.statSystem.statList;
            foreach (var (name, stat) in statList)
            {
                var _name = name;
                if(name == "MaxHP")_name = "HP";
                if(name == "MaxMP")_name = "MP";// Some stats cannot be shown under their raw names.
                var slot = Instantiate(StatSlotPerfab, StatsContent.gameObject.transform).GetComponent<UI.Slot.SimpleSlot>();
                slot.Init(stat, new SlotContext { unit = unit, label = _name });
            }
        }
        public void initSkill(MapUnit unit)
        {
            for (int i = SkillContent.transform.childCount - 1; i >= 0; i--)
            {
                Destroy(SkillContent.transform.GetChild(i).gameObject);
            }
            var slots = unit.Character.SkillInventory.GetAllSlots();
            foreach (var runtimeSlot in slots)
            {
                var go = Instantiate(SkillSlotPerfab, SkillContent.gameObject.transform);
                var skillSlot = go.GetComponent<UI.Slot.SkillSlot>();
                string typeLabel = Utils.Utils.GetSkillSlotTypeString(runtimeSlot.SlotType);
                if (skillSlot.Title != null)
                    skillSlot.Title.text = typeLabel;
                skillSlot.Init(runtimeSlot.CurrentSkill);
            }
        }

        public async UniTask initVirtualCamera(MapUnit unit)
        {
            var root = VirtualCamera.ShowRoot;
            for(int i = root.transform.childCount - 1 ;i >= 0; i--)
            {
                Destroy(root.transform.GetChild(i).gameObject);
            }
            var unit_portraitMob = unit.Character.characterData.portraitMob;
            GameObject go = null;
            string name = unit.Character.characterData.CharacterName;
            string path = Data.Config.ViewConfig.defaultPortraitMobRoot + "/" + name + ".prefab";
            if(unit_portraitMob != null && unit_portraitMob.RuntimeKeyIsValid())
            {
                go = await unit_portraitMob.InstantiateAsync(root.gameObject.transform);
                goto flag;
            }
            go = await Utils.Utils.InstantiateAddressableAsync(path, root.transform);
            flag:
            // Use unlit material for direct display.
            if(go == null)
            {
                Debug.LogError($"加载角色立绘失败: {path}");
                return;
            }
            if(targetShader == null)return;
            Stack<GameObject> s = new();
            s.Push(go);
            while(s.Count > 0)
            {
                var node = s.Pop();
                
                var renderer = node.GetComponent<Renderer>();
                if(renderer != null)
                {
                    foreach(var mat in renderer.materials)
                    {
                        mat.shader = targetShader;
                    }
                }
                for(int i = 0; i < node.transform.childCount; i++)
                {
                    s.Push(node.transform.GetChild(i).gameObject);
                }
            }
            return;
        }
        
        public void OnEnable()
        {
            if (BgBtn == null)
            {
                var bg = PanelObject.transform.Find("Window/Content/BG/BG");
                if (bg != null)
                {
                    var img = bg.GetComponent<Image>();
                    if (img != null)
                    {
                        BgBtn = bg.gameObject.AddComponent<Button>();
                        BgBtn.targetGraphic = img;
                        BgBtn.transition = Selectable.Transition.None;
                    }
                }
            }
            if (BgBtn != null)
            {
                BgBtn.onClick.RemoveAllListeners();
                BgBtn.onClick.AddListener(() => UIManager.Instance.ClosePanel<StatusPopWindow>());
            }
        }
        public void init(MapUnit unit)
        {
            Canvas.ForceUpdateCanvases();
            initBuffStatus(unit);
            initStats(unit);
            initSkill(unit);
            initVirtualCamera(unit);
        }
        public void OnDisable()
        {
            var bic = GamePlay.Control.BattleInputController.Instance;
            if (bic != null && bic.currentState == GamePlay.Control.InputState.ShowingAttribute)
                bic.ChangeState(GamePlay.Control.InputState.Idle);
        }
    }
}