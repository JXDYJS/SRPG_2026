using System.IO;
using System.Text;
using UnityEditor.AssetImporters;
using UnityEngine;

namespace EditorTools
{
    /// <summary>
    /// Imports .lua files as TextAssets so Addressables can manage hot-update content.
    /// </summary>
    [ScriptedImporter(1, "lua")]
    public class LuaScriptImporter : ScriptedImporter
    {
        public override void OnImportAsset(AssetImportContext ctx)
        {
            string text = File.ReadAllText(ctx.assetPath, Encoding.UTF8);

            TextAsset asset = new TextAsset(text);
            ctx.AddObjectToAsset("main", asset);
            ctx.SetMainObject(asset);
        }
    }
}
