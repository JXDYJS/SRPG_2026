using System.IO;
using UnityEditor.AssetImporters;
using UnityEngine;

namespace EditorTools
{
    /// <summary>
    /// LuaScriptImporter — 把 .lua 文件导入为 TextAsset，使其能被 Addressables 管理。
    ///
    /// 收益：Lua 变为 Addressable 资源后，热更完全复用 Addressables 内容更新管线
    /// （catalog / content_state.bin / 补丁下载），不再需要 Lua 独立的 md5 manifest。
    ///
    /// 注意：
    ///   - 作用域是项目内所有 .lua（含 XLua 示例），均变为 TextAsset，无引用影响
    ///   - 版本号保持 1，改动版本号会触发全量重导
    ///   - 用字节构造 TextAsset，保证 .bytes 与原文件完全一致（XLua 用字节解析）
    /// </summary>
    [ScriptedImporter(1, "lua")]
    public class LuaScriptImporter : ScriptedImporter
    {
        public override void OnImportAsset(AssetImportContext ctx)
        {
            byte[] bytes = File.ReadAllBytes(ctx.assetPath);

            TextAsset asset = new TextAsset(bytes);
            ctx.AddObjectToAsset("main", asset);
            ctx.SetMainObject(asset);
        }
    }
}
