using System.IO;
using System.Text;
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
    ///   - TextAsset 无 byte[] 构造函数：按 UTF-8 读文本构造，序列化时按 UTF-8 编码回 bytes
    ///     （与原文件一致；BOM 会被剥离，对 XLua 无影响）
    /// </summary>
    [ScriptedImporter(1, "lua")]
    public class LuaScriptImporter : ScriptedImporter
    {
        public override void OnImportAsset(AssetImportContext ctx)
        {
            // 读为 UTF-8 文本（BOM 由 ReadAllText 剥离），TextAsset 序列化时再编码回 UTF-8 字节
            string text = File.ReadAllText(ctx.assetPath, Encoding.UTF8);

            TextAsset asset = new TextAsset(text);
            ctx.AddObjectToAsset("main", asset);
            ctx.SetMainObject(asset);
        }
    }
}
