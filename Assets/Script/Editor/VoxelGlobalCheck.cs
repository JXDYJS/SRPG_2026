using UnityEditor;
using UnityEngine;

namespace Render.EditorTools
{
    /// <summary>TEMP: prints the voxel global shader bindings as seen by shaders.</summary>
    public static class VoxelGlobalCheck
    {
        [MenuItem("Tools/Voxel Diag/Global Check")]
        public static void Run()
        {
            var tiles = Shader.GetGlobalTexture(Managers.ShaderManager.VoxelFaceTilesId);
            var vol = Shader.GetGlobalTexture(Managers.ShaderManager.VoxelMapId);
            var hmap = Shader.GetGlobalTexture(Managers.ShaderManager.VoxelHeightMapId);
            var size = Shader.GetGlobalVector(Managers.ShaderManager.VoxelMapSizeId);
            Debug.Log($"[VoxelGlobalCheck] _VoxelFaceTiles={(tiles != null ? tiles.name + " " + tiles.width + "x" + tiles.height + " d" + (tiles as Texture2DArray)?.depth : "NULL")} " +
                      $"_VoxelMap={(vol != null ? vol.name + " " + vol.width + "x" + vol.height + "x" + (vol as Texture3D)?.depth : "NULL")} " +
                      $"_VoxelHeightMap={(hmap != null ? hmap.name + " " + hmap.width + "x" + hmap.height : "NULL")} " +
                      $"_VoxelMapSize={size}");
        }
    }
}