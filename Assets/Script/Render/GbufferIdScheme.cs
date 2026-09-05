namespace Render
{
    /// <summary>
    /// Single source of truth for the GBuffer ID layout (R8G8B8A8, 8-bit channels).
    /// R = visible face ID, G = nearest unit ID. Keep in sync with GBufferIds.hlsl.
    /// </summary>
    public static class GbufferIdScheme
    {
        /// <summary>RT clear value; sky pixels are never drawn.</summary>
        public const int SkyId = 0;

        /// <summary>Unit ids are allocated 1..UnitMax (starts at 1 to keep voxel slot (objID-1) unchanged).</summary>
        public const int UnitMin = 1;
        public const int UnitMax = 250;

        /// <summary>All opaque walls share this constant; walls are semantic markers, not tracked entities.</summary>
        public const int WallId = 253;

        /// <summary>All water surfaces share this constant.</summary>
        public const int WaterId = 254;

        /// <summary>Reserved for a future block-entity pool.</summary>
        public const int ReservedId = 255;

        /// <summary>True if the id belongs to a registered unit.</summary>
        public static bool IsUnitId(int id) => id >= UnitMin && id <= UnitMax;

        /// <summary>Unit is directly visible in the camera image: R == G.</summary>
        public static bool IsUnitVisible(int visibleFaceId, int nearestUnitId)
            => nearestUnitId != SkyId && visibleFaceId == nearestUnitId;

        /// <summary>Unit is behind a wall/water (through-wall stroke pixel): R != G.</summary>
        public static bool IsUnitThrough(int visibleFaceId, int nearestUnitId)
            => nearestUnitId != SkyId && visibleFaceId != nearestUnitId;
    }
}
