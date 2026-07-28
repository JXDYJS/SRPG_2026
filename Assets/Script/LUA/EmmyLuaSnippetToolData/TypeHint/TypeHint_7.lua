---@meta

---@return boolean
function UnityEngine.Rendering.ICloudBackground:IsCloudBackgroundUsable() end

---@class UnityEngine.Rendering.ShaderVariantLogLevel
---@field Disabled UnityEngine.Rendering.ShaderVariantLogLevel
---@field OnlySRPShaders UnityEngine.Rendering.ShaderVariantLogLevel
---@field AllShaders UnityEngine.Rendering.ShaderVariantLogLevel
UnityEngine.Rendering.ShaderVariantLogLevel = {}
---@alias CS.UnityEngine.Rendering.ShaderVariantLogLevel UnityEngine.Rendering.ShaderVariantLogLevel
CS.UnityEngine.Rendering.ShaderVariantLogLevel = UnityEngine.Rendering.ShaderVariantLogLevel


---@class UnityEngine.Rendering.IShaderVariantSettings
---@field shaderVariantLogLevel UnityEngine.Rendering.ShaderVariantLogLevel
---@field exportShaderVariants boolean
UnityEngine.Rendering.IShaderVariantSettings = {}
---@alias CS.UnityEngine.Rendering.IShaderVariantSettings UnityEngine.Rendering.IShaderVariantSettings
CS.UnityEngine.Rendering.IShaderVariantSettings = UnityEngine.Rendering.IShaderVariantSettings


---@class UnityEngine.Rendering.IVolumetricCloud
UnityEngine.Rendering.IVolumetricCloud = {}
---@alias CS.UnityEngine.Rendering.IVolumetricCloud UnityEngine.Rendering.IVolumetricCloud
CS.UnityEngine.Rendering.IVolumetricCloud = UnityEngine.Rendering.IVolumetricCloud

---@return boolean
function UnityEngine.Rendering.IVolumetricCloud:IsVolumetricCloudUsable() end

---@class UnityEngine.Rendering.RenderPipelineResources : UnityEngine.ScriptableObject
UnityEngine.Rendering.RenderPipelineResources = {}
---@alias CS.UnityEngine.Rendering.RenderPipelineResources UnityEngine.Rendering.RenderPipelineResources
CS.UnityEngine.Rendering.RenderPipelineResources = UnityEngine.Rendering.RenderPipelineResources


---@class UnityEngine.Rendering.PackingRules
---@field Exact UnityEngine.Rendering.PackingRules
---@field Aggressive UnityEngine.Rendering.PackingRules
UnityEngine.Rendering.PackingRules = {}
---@alias CS.UnityEngine.Rendering.PackingRules UnityEngine.Rendering.PackingRules
CS.UnityEngine.Rendering.PackingRules = UnityEngine.Rendering.PackingRules


---@class UnityEngine.Rendering.FieldPacking
---@field NoPacking UnityEngine.Rendering.FieldPacking
---@field R11G11B10 UnityEngine.Rendering.FieldPacking
---@field PackedFloat UnityEngine.Rendering.FieldPacking
---@field PackedUint UnityEngine.Rendering.FieldPacking
UnityEngine.Rendering.FieldPacking = {}
---@alias CS.UnityEngine.Rendering.FieldPacking UnityEngine.Rendering.FieldPacking
CS.UnityEngine.Rendering.FieldPacking = UnityEngine.Rendering.FieldPacking


---@class UnityEngine.Rendering.FieldPrecision
---@field Half UnityEngine.Rendering.FieldPrecision
---@field Real UnityEngine.Rendering.FieldPrecision
---@field Default UnityEngine.Rendering.FieldPrecision
UnityEngine.Rendering.FieldPrecision = {}
---@alias CS.UnityEngine.Rendering.FieldPrecision UnityEngine.Rendering.FieldPrecision
CS.UnityEngine.Rendering.FieldPrecision = UnityEngine.Rendering.FieldPrecision


---@class UnityEngine.Rendering.GenerateHLSL : System.Attribute
---@field packingRules UnityEngine.Rendering.PackingRules
---@field containsPackedFields boolean
---@field needAccessors boolean
---@field needSetters boolean
---@field needParamDebug boolean
---@field paramDefinesStart number
---@field omitStructDeclaration boolean
---@field generateCBuffer boolean
---@field constantRegister number
---@field sourcePath string
UnityEngine.Rendering.GenerateHLSL = {}
---@alias CS.UnityEngine.Rendering.GenerateHLSL UnityEngine.Rendering.GenerateHLSL
CS.UnityEngine.Rendering.GenerateHLSL = UnityEngine.Rendering.GenerateHLSL

---@param rules UnityEngine.Rendering.PackingRules
---@param needAccessors boolean
---@param needSetters boolean
---@param needParamDebug boolean
---@param paramDefinesStart number
---@param omitStructDeclaration boolean
---@param containsPackedFields boolean
---@param generateCBuffer boolean
---@param constantRegister number
---@param sourcePath string
---@return UnityEngine.Rendering.GenerateHLSL
function UnityEngine.Rendering.GenerateHLSL.New(rules, needAccessors, needSetters, needParamDebug, paramDefinesStart, omitStructDeclaration, containsPackedFields, generateCBuffer, constantRegister, sourcePath) end

---@class UnityEngine.Rendering.SurfaceDataAttributes : System.Attribute
---@field displayNames System.String[]
---@field isDirection boolean
---@field sRGBDisplay boolean
---@field precision UnityEngine.Rendering.FieldPrecision
---@field checkIsNormalized boolean
---@field preprocessor string
UnityEngine.Rendering.SurfaceDataAttributes = {}
---@alias CS.UnityEngine.Rendering.SurfaceDataAttributes UnityEngine.Rendering.SurfaceDataAttributes
CS.UnityEngine.Rendering.SurfaceDataAttributes = UnityEngine.Rendering.SurfaceDataAttributes

---@overload fun(displayName: string, isDirection: boolean, sRGBDisplay: boolean, precision: UnityEngine.Rendering.FieldPrecision, checkIsNormalized: boolean, preprocessor: string) : UnityEngine.Rendering.SurfaceDataAttributes
---@param displayNames System.String[]
---@param isDirection boolean
---@param sRGBDisplay boolean
---@param precision UnityEngine.Rendering.FieldPrecision
---@param checkIsNormalized boolean
---@param preprocessor string
---@return UnityEngine.Rendering.SurfaceDataAttributes
function UnityEngine.Rendering.SurfaceDataAttributes.New(displayNames, isDirection, sRGBDisplay, precision, checkIsNormalized, preprocessor) end

---@class UnityEngine.Rendering.HLSLArray : System.Attribute
---@field arraySize number
---@field elementType System.Type
UnityEngine.Rendering.HLSLArray = {}
---@alias CS.UnityEngine.Rendering.HLSLArray UnityEngine.Rendering.HLSLArray
CS.UnityEngine.Rendering.HLSLArray = UnityEngine.Rendering.HLSLArray

---@param arraySize number
---@param elementType System.Type
---@return UnityEngine.Rendering.HLSLArray
function UnityEngine.Rendering.HLSLArray.New(arraySize, elementType) end

---@class UnityEngine.Rendering.PackingAttribute : System.Attribute
---@field displayNames System.String[]
---@field range System.Single[]
---@field packingScheme UnityEngine.Rendering.FieldPacking
---@field offsetInSource number
---@field sizeInBits number
---@field isDirection boolean
---@field sRGBDisplay boolean
---@field checkIsNormalized boolean
---@field preprocessor string
UnityEngine.Rendering.PackingAttribute = {}
---@alias CS.UnityEngine.Rendering.PackingAttribute UnityEngine.Rendering.PackingAttribute
CS.UnityEngine.Rendering.PackingAttribute = UnityEngine.Rendering.PackingAttribute

---@overload fun(displayNames: System.String[], packingScheme: UnityEngine.Rendering.FieldPacking, bitSize: number, offsetInSource: number, minValue: number, maxValue: number, isDirection: boolean, sRGBDisplay: boolean, checkIsNormalized: boolean, preprocessor: string) : UnityEngine.Rendering.PackingAttribute
---@param displayName string
---@param packingScheme UnityEngine.Rendering.FieldPacking
---@param bitSize number
---@param offsetInSource number
---@param minValue number
---@param maxValue number
---@param isDirection boolean
---@param sRGBDisplay boolean
---@param checkIsNormalized boolean
---@param preprocessor string
---@return UnityEngine.Rendering.PackingAttribute
function UnityEngine.Rendering.PackingAttribute.New(displayName, packingScheme, bitSize, offsetInSource, minValue, maxValue, isDirection, sRGBDisplay, checkIsNormalized, preprocessor) end

---@class UnityEngine.Rendering.ShaderGenUInt4 : System.ValueType
UnityEngine.Rendering.ShaderGenUInt4 = {}
---@alias CS.UnityEngine.Rendering.ShaderGenUInt4 UnityEngine.Rendering.ShaderGenUInt4
CS.UnityEngine.Rendering.ShaderGenUInt4 = UnityEngine.Rendering.ShaderGenUInt4


---@class UnityEngine.Rendering.Hammersley : System.Object
UnityEngine.Rendering.Hammersley = {}
---@alias CS.UnityEngine.Rendering.Hammersley UnityEngine.Rendering.Hammersley
CS.UnityEngine.Rendering.Hammersley = UnityEngine.Rendering.Hammersley

function UnityEngine.Rendering.Hammersley.Initialize() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cs UnityEngine.ComputeShader
function UnityEngine.Rendering.Hammersley.BindConstants(cmd, cs) end

---@class UnityEngine.Rendering.BufferedRTHandleSystem : System.Object
---@field maxWidth number
---@field maxHeight number
---@field rtHandleProperties UnityEngine.Rendering.RTHandleProperties
UnityEngine.Rendering.BufferedRTHandleSystem = {}
---@alias CS.UnityEngine.Rendering.BufferedRTHandleSystem UnityEngine.Rendering.BufferedRTHandleSystem
CS.UnityEngine.Rendering.BufferedRTHandleSystem = UnityEngine.Rendering.BufferedRTHandleSystem

---@return UnityEngine.Rendering.BufferedRTHandleSystem
function UnityEngine.Rendering.BufferedRTHandleSystem.New() end
---@param bufferId number
---@param frameIndex number
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.BufferedRTHandleSystem:GetFrameRT(bufferId, frameIndex) end
---@param bufferId number
---@param allocator System.Func
---@param bufferCount number
function UnityEngine.Rendering.BufferedRTHandleSystem:AllocBuffer(bufferId, allocator, bufferCount) end
---@param bufferId number
function UnityEngine.Rendering.BufferedRTHandleSystem:ReleaseBuffer(bufferId) end
---@param width number
---@param height number
function UnityEngine.Rendering.BufferedRTHandleSystem:SwapAndSetReferenceSize(width, height) end
---@param width number
---@param height number
function UnityEngine.Rendering.BufferedRTHandleSystem:ResetReferenceSize(width, height) end
---@param bufferId number
---@return number
function UnityEngine.Rendering.BufferedRTHandleSystem:GetNumFramesAllocated(bufferId) end
---@param width number
---@param height number
---@return UnityEngine.Vector2
function UnityEngine.Rendering.BufferedRTHandleSystem:CalculateRatioAgainstMaxSize(width, height) end
function UnityEngine.Rendering.BufferedRTHandleSystem:Dispose() end
function UnityEngine.Rendering.BufferedRTHandleSystem:ReleaseAll() end

---@class UnityEngine.Rendering.DepthBits
---@field None UnityEngine.Rendering.DepthBits
---@field Depth8 UnityEngine.Rendering.DepthBits
---@field Depth16 UnityEngine.Rendering.DepthBits
---@field Depth24 UnityEngine.Rendering.DepthBits
---@field Depth32 UnityEngine.Rendering.DepthBits
UnityEngine.Rendering.DepthBits = {}
---@alias CS.UnityEngine.Rendering.DepthBits UnityEngine.Rendering.DepthBits
CS.UnityEngine.Rendering.DepthBits = UnityEngine.Rendering.DepthBits


---@class UnityEngine.Rendering.MSAASamples
---@field None UnityEngine.Rendering.MSAASamples
---@field MSAA2x UnityEngine.Rendering.MSAASamples
---@field MSAA4x UnityEngine.Rendering.MSAASamples
---@field MSAA8x UnityEngine.Rendering.MSAASamples
UnityEngine.Rendering.MSAASamples = {}
---@alias CS.UnityEngine.Rendering.MSAASamples UnityEngine.Rendering.MSAASamples
CS.UnityEngine.Rendering.MSAASamples = UnityEngine.Rendering.MSAASamples


---@class UnityEngine.Rendering.PowerOfTwoTextureAtlas : UnityEngine.Rendering.Texture2DAtlas
---@field mipPadding number
UnityEngine.Rendering.PowerOfTwoTextureAtlas = {}
---@alias CS.UnityEngine.Rendering.PowerOfTwoTextureAtlas UnityEngine.Rendering.PowerOfTwoTextureAtlas
CS.UnityEngine.Rendering.PowerOfTwoTextureAtlas = UnityEngine.Rendering.PowerOfTwoTextureAtlas

---@param size number
---@param mipPadding number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param filterMode UnityEngine.FilterMode
---@param name string
---@param useMipMap boolean
---@return UnityEngine.Rendering.PowerOfTwoTextureAtlas
function UnityEngine.Rendering.PowerOfTwoTextureAtlas.New(size, mipPadding, format, filterMode, name, useMipMap) end
---@overload fun(ref_textureSize: UnityEngine.Vector2, ref_paddingSize: UnityEngine.Vector2, ref_scaleOffset: UnityEngine.Vector4) : UnityEngine.Vector4, UnityEngine.Vector2, UnityEngine.Vector2, UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param ref_scaleOffset UnityEngine.Vector4
---@return UnityEngine.Vector4,UnityEngine.Vector4
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:GetPayloadScaleOffset(texture, ref_scaleOffset) end
---@param nbElement number
---@param resolution number
---@param hasMipmap boolean
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function UnityEngine.Rendering.PowerOfTwoTextureAtlas.GetApproxCacheSizeInByte(nbElement, resolution, hasMipmap, format) end
---@param weight number
---@param hasMipmap boolean
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function UnityEngine.Rendering.PowerOfTwoTextureAtlas.GetMaxCacheSizeForWeightInByte(weight, hasMipmap, format) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param sourceScaleOffset UnityEngine.Vector4
---@param blitMips boolean
---@param overrideInstanceID number
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:BlitTexture(cmd, scaleOffset, texture, sourceScaleOffset, blitMips, overrideInstanceID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param sourceScaleOffset UnityEngine.Vector4
---@param blitMips boolean
---@param overrideInstanceID number
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:BlitTextureMultiply(cmd, scaleOffset, texture, sourceScaleOffset, blitMips, overrideInstanceID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param sourceScaleOffset UnityEngine.Vector4
---@param blitMips boolean
---@param overrideInstanceID number
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:BlitOctahedralTexture(cmd, scaleOffset, texture, sourceScaleOffset, blitMips, overrideInstanceID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param sourceScaleOffset UnityEngine.Vector4
---@param blitMips boolean
---@param overrideInstanceID number
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:BlitOctahedralTextureMultiply(cmd, scaleOffset, texture, sourceScaleOffset, blitMips, overrideInstanceID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param width number
---@param height number
---@param overrideInstanceID number
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:AllocateTexture(cmd, ref_scaleOffset, texture, width, height, overrideInstanceID) end
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:ResetRequestedTexture() end
---@overload fun(self: UnityEngine.Rendering.PowerOfTwoTextureAtlas, texture: UnityEngine.Texture) : boolean
---@overload fun(self: UnityEngine.Rendering.PowerOfTwoTextureAtlas, texture: UnityEngine.Texture, width: number, height: number) : boolean
---@param textureA UnityEngine.Texture
---@param textureB UnityEngine.Texture
---@param width number
---@param height number
---@return boolean
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:ReserveSpace(textureA, textureB, width, height) end
---@return boolean
function UnityEngine.Rendering.PowerOfTwoTextureAtlas:RelayoutEntries() end

---@class UnityEngine.Rendering.RTHandleStaticHelpers : System.ValueType
---@field s_RTHandleWrapper UnityEngine.Rendering.RTHandle
UnityEngine.Rendering.RTHandleStaticHelpers = {}
---@alias CS.UnityEngine.Rendering.RTHandleStaticHelpers UnityEngine.Rendering.RTHandleStaticHelpers
CS.UnityEngine.Rendering.RTHandleStaticHelpers = UnityEngine.Rendering.RTHandleStaticHelpers

---@param rtId UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.RTHandleStaticHelpers.SetRTHandleStaticWrapper(rtId) end
---@param ref_rtWrapper UnityEngine.Rendering.RTHandle
---@param rtId UnityEngine.Rendering.RenderTargetIdentifier
---@return ,UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.RTHandleStaticHelpers.SetRTHandleUserManagedWrapper(ref_rtWrapper, rtId) end

---@class UnityEngine.Rendering.RTHandle : System.Object
---@field scaleFactor UnityEngine.Vector2
---@field useScaling boolean
---@field referenceSize UnityEngine.Vector2Int
---@field rtHandleProperties UnityEngine.Rendering.RTHandleProperties
---@field rt UnityEngine.RenderTexture
---@field nameID UnityEngine.Rendering.RenderTargetIdentifier
---@field name string
---@field isMSAAEnabled boolean
UnityEngine.Rendering.RTHandle = {}
---@alias CS.UnityEngine.Rendering.RTHandle UnityEngine.Rendering.RTHandle
CS.UnityEngine.Rendering.RTHandle = UnityEngine.Rendering.RTHandle

---@param ref_properties UnityEngine.Rendering.RTHandleProperties
---@return ,UnityEngine.Rendering.RTHandleProperties
function UnityEngine.Rendering.RTHandle:SetCustomHandleProperties(ref_properties) end
function UnityEngine.Rendering.RTHandle:ClearCustomHandleProperties() end
---@return number
function UnityEngine.Rendering.RTHandle:GetInstanceID() end
function UnityEngine.Rendering.RTHandle:Release() end
---@overload fun(self: UnityEngine.Rendering.RTHandle, refSize: UnityEngine.Vector2Int) : UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Rendering.RTHandle:GetScaledSize() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param residencyFraction number
---@param flags UnityEngine.Rendering.FastMemoryFlags
---@param copyContents boolean
function UnityEngine.Rendering.RTHandle:SwitchToFastMemory(cmd, residencyFraction, flags, copyContents) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param residencyFraction number
---@param flags UnityEngine.Rendering.FastMemoryFlags
function UnityEngine.Rendering.RTHandle:CopyToFastMemory(cmd, residencyFraction, flags) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param copyContents boolean
function UnityEngine.Rendering.RTHandle:SwitchOutFastMemory(cmd, copyContents) end

---@class UnityEngine.Rendering.RTHandles : System.Object
---@field maxWidth number
---@field maxHeight number
---@field rtHandleProperties UnityEngine.Rendering.RTHandleProperties
UnityEngine.Rendering.RTHandles = {}
---@alias CS.UnityEngine.Rendering.RTHandles UnityEngine.Rendering.RTHandles
CS.UnityEngine.Rendering.RTHandles = UnityEngine.Rendering.RTHandles

---@overload fun(width: number, height: number, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(width: number, height: number, wrapModeU: UnityEngine.TextureWrapMode, wrapModeV: UnityEngine.TextureWrapMode, wrapModeW: UnityEngine.TextureWrapMode, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(ref_descriptor: UnityEngine.RenderTextureDescriptor, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, name: string) : UnityEngine.Rendering.RTHandle, UnityEngine.RenderTextureDescriptor
---@overload fun(scaleFactor: UnityEngine.Vector2, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(scaleFactor: UnityEngine.Vector2, ref_descriptor: UnityEngine.RenderTextureDescriptor, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, name: string) : UnityEngine.Rendering.RTHandle, UnityEngine.RenderTextureDescriptor
---@overload fun(scaleFunc: UnityEngine.Rendering.ScaleFunc, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(scaleFunc: UnityEngine.Rendering.ScaleFunc, ref_descriptor: UnityEngine.RenderTextureDescriptor, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, name: string) : UnityEngine.Rendering.RTHandle, UnityEngine.RenderTextureDescriptor
---@overload fun(tex: UnityEngine.Texture) : UnityEngine.Rendering.RTHandle
---@overload fun(tex: UnityEngine.RenderTexture) : UnityEngine.Rendering.RTHandle
---@overload fun(tex: UnityEngine.Rendering.RenderTargetIdentifier) : UnityEngine.Rendering.RTHandle
---@param tex UnityEngine.Rendering.RenderTargetIdentifier
---@param name string
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.RTHandles.Alloc(tex, name) end
---@param width number
---@param height number
function UnityEngine.Rendering.RTHandles.Initialize(width, height) end
---@param rth UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.RTHandles.Release(rth) end
---@param hwDynamicResRequested boolean
function UnityEngine.Rendering.RTHandles.SetHardwareDynamicResolutionState(hwDynamicResRequested) end
---@param width number
---@param height number
function UnityEngine.Rendering.RTHandles.SetReferenceSize(width, height) end
---@param width number
---@param height number
function UnityEngine.Rendering.RTHandles.ResetReferenceSize(width, height) end
---@param width number
---@param height number
---@return UnityEngine.Vector2
function UnityEngine.Rendering.RTHandles.CalculateRatioAgainstMaxSize(width, height) end

---@class UnityEngine.Rendering.ScaleFunc : System.MulticastDelegate
UnityEngine.Rendering.ScaleFunc = {}
---@alias CS.UnityEngine.Rendering.ScaleFunc UnityEngine.Rendering.ScaleFunc
CS.UnityEngine.Rendering.ScaleFunc = UnityEngine.Rendering.ScaleFunc

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.ScaleFunc
function UnityEngine.Rendering.ScaleFunc.New(object, method) end
---@param size UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Rendering.ScaleFunc:Invoke(size) end
---@param size UnityEngine.Vector2Int
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.ScaleFunc:BeginInvoke(size, callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.Vector2Int
function UnityEngine.Rendering.ScaleFunc:EndInvoke(result) end

---@class UnityEngine.Rendering.RTHandleProperties : System.ValueType
---@field previousViewportSize UnityEngine.Vector2Int
---@field previousRenderTargetSize UnityEngine.Vector2Int
---@field currentViewportSize UnityEngine.Vector2Int
---@field currentRenderTargetSize UnityEngine.Vector2Int
---@field rtHandleScale UnityEngine.Vector4
UnityEngine.Rendering.RTHandleProperties = {}
---@alias CS.UnityEngine.Rendering.RTHandleProperties UnityEngine.Rendering.RTHandleProperties
CS.UnityEngine.Rendering.RTHandleProperties = UnityEngine.Rendering.RTHandleProperties


---@class UnityEngine.Rendering.RTHandleSystem : System.Object
---@field rtHandleProperties UnityEngine.Rendering.RTHandleProperties
UnityEngine.Rendering.RTHandleSystem = {}
---@alias CS.UnityEngine.Rendering.RTHandleSystem UnityEngine.Rendering.RTHandleSystem
CS.UnityEngine.Rendering.RTHandleSystem = UnityEngine.Rendering.RTHandleSystem

---@return UnityEngine.Rendering.RTHandleSystem
function UnityEngine.Rendering.RTHandleSystem.New() end
function UnityEngine.Rendering.RTHandleSystem:Dispose() end
---@param width number
---@param height number
function UnityEngine.Rendering.RTHandleSystem:Initialize(width, height) end
---@param rth UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.RTHandleSystem:Release(rth) end
---@param width number
---@param height number
function UnityEngine.Rendering.RTHandleSystem:ResetReferenceSize(width, height) end
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, width: number, height: number)
---@param width number
---@param height number
---@param reset boolean
function UnityEngine.Rendering.RTHandleSystem:SetReferenceSize(width, height, reset) end
---@param enableHWDynamicRes boolean
function UnityEngine.Rendering.RTHandleSystem:SetHardwareDynamicResolutionState(enableHWDynamicRes) end
---@return number
function UnityEngine.Rendering.RTHandleSystem:GetMaxWidth() end
---@return number
function UnityEngine.Rendering.RTHandleSystem:GetMaxHeight() end
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, width: number, height: number, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, width: number, height: number, wrapModeU: UnityEngine.TextureWrapMode, wrapModeV: UnityEngine.TextureWrapMode, wrapModeW: UnityEngine.TextureWrapMode, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, scaleFactor: UnityEngine.Vector2, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, scaleFunc: UnityEngine.Rendering.ScaleFunc, slices: number, depthBufferBits: UnityEngine.Rendering.DepthBits, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, dimension: UnityEngine.Rendering.TextureDimension, enableRandomWrite: boolean, useMipMap: boolean, autoGenerateMips: boolean, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, msaaSamples: UnityEngine.Rendering.MSAASamples, bindTextureMS: boolean, useDynamicScale: boolean, memoryless: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, name: string) : UnityEngine.Rendering.RTHandle
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, texture: UnityEngine.RenderTexture) : UnityEngine.Rendering.RTHandle
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, texture: UnityEngine.Texture) : UnityEngine.Rendering.RTHandle
---@overload fun(self: UnityEngine.Rendering.RTHandleSystem, texture: UnityEngine.Rendering.RenderTargetIdentifier) : UnityEngine.Rendering.RTHandle
---@param texture UnityEngine.Rendering.RenderTargetIdentifier
---@param name string
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.RTHandleSystem:Alloc(texture, name) end

---@class UnityEngine.Rendering.AtlasAllocator : System.Object
UnityEngine.Rendering.AtlasAllocator = {}
---@alias CS.UnityEngine.Rendering.AtlasAllocator UnityEngine.Rendering.AtlasAllocator
CS.UnityEngine.Rendering.AtlasAllocator = UnityEngine.Rendering.AtlasAllocator

---@param width number
---@param height number
---@param potPadding boolean
---@return UnityEngine.Rendering.AtlasAllocator
function UnityEngine.Rendering.AtlasAllocator.New(width, height, potPadding) end
---@param ref_result UnityEngine.Vector4
---@param width number
---@param height number
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.AtlasAllocator:Allocate(ref_result, width, height) end
function UnityEngine.Rendering.AtlasAllocator:Reset() end

---@class UnityEngine.Rendering.Texture2DAtlas : System.Object
---@field maxMipLevelPadding number
---@field AtlasTexture UnityEngine.Rendering.RTHandle
UnityEngine.Rendering.Texture2DAtlas = {}
---@alias CS.UnityEngine.Rendering.Texture2DAtlas UnityEngine.Rendering.Texture2DAtlas
CS.UnityEngine.Rendering.Texture2DAtlas = UnityEngine.Rendering.Texture2DAtlas

---@param width number
---@param height number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param filterMode UnityEngine.FilterMode
---@param powerOfTwoPadding boolean
---@param name string
---@param useMipMap boolean
---@return UnityEngine.Rendering.Texture2DAtlas
function UnityEngine.Rendering.Texture2DAtlas.New(width, height, format, filterMode, powerOfTwoPadding, name, useMipMap) end
function UnityEngine.Rendering.Texture2DAtlas:Release() end
function UnityEngine.Rendering.Texture2DAtlas:ResetAllocator() end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Texture2DAtlas:ClearTarget(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param sourceScaleOffset UnityEngine.Vector4
---@param blitMips boolean
---@param overrideInstanceID number
function UnityEngine.Rendering.Texture2DAtlas:BlitTexture(cmd, scaleOffset, texture, sourceScaleOffset, blitMips, overrideInstanceID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param sourceScaleOffset UnityEngine.Vector4
---@param blitMips boolean
---@param overrideInstanceID number
function UnityEngine.Rendering.Texture2DAtlas:BlitOctahedralTexture(cmd, scaleOffset, texture, sourceScaleOffset, blitMips, overrideInstanceID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param blitMips boolean
---@param overrideInstanceID number
function UnityEngine.Rendering.Texture2DAtlas:BlitCubeTexture2D(cmd, scaleOffset, texture, blitMips, overrideInstanceID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@param width number
---@param height number
---@param overrideInstanceID number
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlas:AllocateTexture(cmd, ref_scaleOffset, texture, width, height, overrideInstanceID) end
---@overload fun(self: UnityEngine.Rendering.Texture2DAtlas, texture: UnityEngine.Texture, width: number, height: number, ref_scaleOffset: UnityEngine.Vector4) : boolean, UnityEngine.Vector4
---@param instanceId number
---@param width number
---@param height number
---@param ref_scaleOffset UnityEngine.Vector4
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlas:AllocateTextureWithoutBlit(instanceId, width, height, ref_scaleOffset) end
---@overload fun(self: UnityEngine.Rendering.Texture2DAtlas, texture: UnityEngine.Texture) : number
---@param textureA UnityEngine.Texture
---@param textureB UnityEngine.Texture
---@return number
function UnityEngine.Rendering.Texture2DAtlas:GetTextureID(textureA, textureB) end
---@overload fun(self: UnityEngine.Rendering.Texture2DAtlas, out_scaleOffset: UnityEngine.Vector4, textureA: UnityEngine.Texture, textureB: UnityEngine.Texture) : boolean, UnityEngine.Vector4
---@overload fun(self: UnityEngine.Rendering.Texture2DAtlas, out_scaleOffset: UnityEngine.Vector4, texture: UnityEngine.Texture) : boolean, UnityEngine.Vector4
---@param out_scaleOffset UnityEngine.Vector4
---@param id number
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlas:IsCached(out_scaleOffset, id) end
---@overload fun(self: UnityEngine.Rendering.Texture2DAtlas, texture: UnityEngine.Texture, needMips: boolean) : boolean
---@param textureA UnityEngine.Texture
---@param textureB UnityEngine.Texture
---@param needMips boolean
---@return boolean
function UnityEngine.Rendering.Texture2DAtlas:NeedsUpdate(textureA, textureB, needMips) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlas:AddTexture(cmd, ref_scaleOffset, texture) end
---@overload fun(self: UnityEngine.Rendering.Texture2DAtlas, cmd: UnityEngine.Rendering.CommandBuffer, oldTexture: UnityEngine.Texture, newTexture: UnityEngine.Texture, ref_scaleOffset: UnityEngine.Vector4, sourceScaleOffset: UnityEngine.Vector4, updateIfNeeded: boolean, blitMips: boolean) : boolean, UnityEngine.Vector4
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param texture UnityEngine.Texture
---@param ref_scaleOffset UnityEngine.Vector4
---@param updateIfNeeded boolean
---@param blitMips boolean
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlas:UpdateTexture(cmd, texture, ref_scaleOffset, updateIfNeeded, blitMips) end

---@class UnityEngine.Rendering.AtlasAllocatorDynamic : System.Object
UnityEngine.Rendering.AtlasAllocatorDynamic = {}
---@alias CS.UnityEngine.Rendering.AtlasAllocatorDynamic UnityEngine.Rendering.AtlasAllocatorDynamic
CS.UnityEngine.Rendering.AtlasAllocatorDynamic = UnityEngine.Rendering.AtlasAllocatorDynamic

---@param width number
---@param height number
---@param capacityAllocations number
---@return UnityEngine.Rendering.AtlasAllocatorDynamic
function UnityEngine.Rendering.AtlasAllocatorDynamic.New(width, height, capacityAllocations) end
---@param out_result UnityEngine.Vector4
---@param key number
---@param width number
---@param height number
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.AtlasAllocatorDynamic:Allocate(out_result, key, width, height) end
---@overload fun(self: UnityEngine.Rendering.AtlasAllocatorDynamic, key: number)
function UnityEngine.Rendering.AtlasAllocatorDynamic:Release() end
---@param depthMax number
---@return string
function UnityEngine.Rendering.AtlasAllocatorDynamic:DebugStringFromRoot(depthMax) end

---@class UnityEngine.Rendering.Texture2DAtlasDynamic : System.Object
---@field AtlasTexture UnityEngine.Rendering.RTHandle
UnityEngine.Rendering.Texture2DAtlasDynamic = {}
---@alias CS.UnityEngine.Rendering.Texture2DAtlasDynamic UnityEngine.Rendering.Texture2DAtlasDynamic
CS.UnityEngine.Rendering.Texture2DAtlasDynamic = UnityEngine.Rendering.Texture2DAtlasDynamic

---@overload fun(width: number, height: number, capacity: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.Rendering.Texture2DAtlasDynamic
---@param width number
---@param height number
---@param capacity number
---@param atlasTexture UnityEngine.Rendering.RTHandle
---@return UnityEngine.Rendering.Texture2DAtlasDynamic
function UnityEngine.Rendering.Texture2DAtlasDynamic.New(width, height, capacity, atlasTexture) end
function UnityEngine.Rendering.Texture2DAtlasDynamic:Release() end
function UnityEngine.Rendering.Texture2DAtlasDynamic:ResetAllocator() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param out_scaleOffset UnityEngine.Vector4
---@param texture UnityEngine.Texture
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlasDynamic:AddTexture(cmd, out_scaleOffset, texture) end
---@param out_scaleOffset UnityEngine.Vector4
---@param key number
---@return boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlasDynamic:IsCached(out_scaleOffset, key) end
---@param out_isUploadNeeded boolean
---@param out_scaleOffset UnityEngine.Vector4
---@param key number
---@param width number
---@param height number
---@return boolean,boolean,UnityEngine.Vector4
function UnityEngine.Rendering.Texture2DAtlasDynamic:EnsureTextureSlot(out_isUploadNeeded, out_scaleOffset, key, width, height) end
---@param key number
function UnityEngine.Rendering.Texture2DAtlasDynamic:ReleaseTextureSlot(key) end

---@class UnityEngine.Rendering.TextureXR : System.Object
---@field maxViews number
---@field slices number
---@field useTexArray boolean
---@field dimension UnityEngine.Rendering.TextureDimension
UnityEngine.Rendering.TextureXR = {}
---@alias CS.UnityEngine.Rendering.TextureXR UnityEngine.Rendering.TextureXR
CS.UnityEngine.Rendering.TextureXR = UnityEngine.Rendering.TextureXR

---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.TextureXR.GetBlackUIntTexture() end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.TextureXR.GetClearTexture() end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.TextureXR.GetMagentaTexture() end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.TextureXR.GetBlackTexture() end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.TextureXR.GetBlackTextureArray() end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.TextureXR.GetBlackTexture3D() end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.TextureXR.GetWhiteTexture() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param clearR32_UIntShader UnityEngine.ComputeShader
function UnityEngine.Rendering.TextureXR.Initialize(cmd, clearR32_UIntShader) end

---@class UnityEngine.Rendering.ArrayExtensions : System.Object
UnityEngine.Rendering.ArrayExtensions = {}
---@alias CS.UnityEngine.Rendering.ArrayExtensions UnityEngine.Rendering.ArrayExtensions
CS.UnityEngine.Rendering.ArrayExtensions = UnityEngine.Rendering.ArrayExtensions

---@param ref_array UnityEngine.Jobs.TransformAccessArray
---@param capacity number
---@return ,UnityEngine.Jobs.TransformAccessArray
function UnityEngine.Rendering.ArrayExtensions.ResizeArray(ref_array, capacity) end

---@class UnityEngine.Rendering.SHCoefficients : System.ValueType
---@field SHAr UnityEngine.Vector4
---@field SHAg UnityEngine.Vector4
---@field SHAb UnityEngine.Vector4
---@field SHBr UnityEngine.Vector4
---@field SHBg UnityEngine.Vector4
---@field SHBb UnityEngine.Vector4
---@field SHC UnityEngine.Vector4
---@field ProbesOcclusion UnityEngine.Vector4
UnityEngine.Rendering.SHCoefficients = {}
---@alias CS.UnityEngine.Rendering.SHCoefficients UnityEngine.Rendering.SHCoefficients
CS.UnityEngine.Rendering.SHCoefficients = UnityEngine.Rendering.SHCoefficients

---@overload fun(sh: UnityEngine.Rendering.SphericalHarmonicsL2) : UnityEngine.Rendering.SHCoefficients
---@param sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param probesOcclusion UnityEngine.Vector4
---@return UnityEngine.Rendering.SHCoefficients
function UnityEngine.Rendering.SHCoefficients.New(sh, probesOcclusion) end
---@overload fun(self: UnityEngine.Rendering.SHCoefficients, other: UnityEngine.Rendering.SHCoefficients) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.SHCoefficients:Equals(obj) end
---@return number
function UnityEngine.Rendering.SHCoefficients:GetHashCode() end

---@class UnityEngine.Rendering.BatchRendererGroupGlobals : System.ValueType
---@field kGlobalsPropertyName string
---@field kGlobalsPropertyId number
---@field ProbesOcclusion UnityEngine.Vector4
---@field SpecCube0_HDR UnityEngine.Vector4
---@field SpecCube1_HDR UnityEngine.Vector4
---@field SHCoefficients UnityEngine.Rendering.SHCoefficients
---@field Default UnityEngine.Rendering.BatchRendererGroupGlobals
UnityEngine.Rendering.BatchRendererGroupGlobals = {}
---@alias CS.UnityEngine.Rendering.BatchRendererGroupGlobals UnityEngine.Rendering.BatchRendererGroupGlobals
CS.UnityEngine.Rendering.BatchRendererGroupGlobals = UnityEngine.Rendering.BatchRendererGroupGlobals

---@overload fun(self: UnityEngine.Rendering.BatchRendererGroupGlobals, other: UnityEngine.Rendering.BatchRendererGroupGlobals) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BatchRendererGroupGlobals:Equals(obj) end
---@return number
function UnityEngine.Rendering.BatchRendererGroupGlobals:GetHashCode() end

---@class UnityEngine.Rendering.IBitArray
---@field capacity number
---@field allFalse boolean
---@field allTrue boolean
---@field Item boolean
---@field humanizedData string
UnityEngine.Rendering.IBitArray = {}
---@alias CS.UnityEngine.Rendering.IBitArray UnityEngine.Rendering.IBitArray
CS.UnityEngine.Rendering.IBitArray = UnityEngine.Rendering.IBitArray

---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.IBitArray:BitAnd(other) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.IBitArray:BitOr(other) end
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.IBitArray:BitNot() end

---@class UnityEngine.Rendering.BitArray8 : System.ValueType
---@field capacity number
---@field allFalse boolean
---@field allTrue boolean
---@field humanizedData string
---@field Item boolean
UnityEngine.Rendering.BitArray8 = {}
---@alias CS.UnityEngine.Rendering.BitArray8 UnityEngine.Rendering.BitArray8
CS.UnityEngine.Rendering.BitArray8 = UnityEngine.Rendering.BitArray8

---@overload fun(initValue: number) : UnityEngine.Rendering.BitArray8
---@param bitIndexTrue System.Collections.Generic.IEnumerable
---@return UnityEngine.Rendering.BitArray8
function UnityEngine.Rendering.BitArray8.New(bitIndexTrue) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray8:BitAnd(other) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray8:BitOr(other) end
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray8:BitNot() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BitArray8:Equals(obj) end
---@return number
function UnityEngine.Rendering.BitArray8:GetHashCode() end

---@class UnityEngine.Rendering.BitArray16 : System.ValueType
---@field capacity number
---@field allFalse boolean
---@field allTrue boolean
---@field humanizedData string
---@field Item boolean
UnityEngine.Rendering.BitArray16 = {}
---@alias CS.UnityEngine.Rendering.BitArray16 UnityEngine.Rendering.BitArray16
CS.UnityEngine.Rendering.BitArray16 = UnityEngine.Rendering.BitArray16

---@overload fun(initValue: number) : UnityEngine.Rendering.BitArray16
---@param bitIndexTrue System.Collections.Generic.IEnumerable
---@return UnityEngine.Rendering.BitArray16
function UnityEngine.Rendering.BitArray16.New(bitIndexTrue) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray16:BitAnd(other) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray16:BitOr(other) end
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray16:BitNot() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BitArray16:Equals(obj) end
---@return number
function UnityEngine.Rendering.BitArray16:GetHashCode() end

---@class UnityEngine.Rendering.BitArray32 : System.ValueType
---@field capacity number
---@field allFalse boolean
---@field allTrue boolean
---@field humanizedData string
---@field Item boolean
UnityEngine.Rendering.BitArray32 = {}
---@alias CS.UnityEngine.Rendering.BitArray32 UnityEngine.Rendering.BitArray32
CS.UnityEngine.Rendering.BitArray32 = UnityEngine.Rendering.BitArray32

---@overload fun(initValue: number) : UnityEngine.Rendering.BitArray32
---@param bitIndexTrue System.Collections.Generic.IEnumerable
---@return UnityEngine.Rendering.BitArray32
function UnityEngine.Rendering.BitArray32.New(bitIndexTrue) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray32:BitAnd(other) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray32:BitOr(other) end
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray32:BitNot() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BitArray32:Equals(obj) end
---@return number
function UnityEngine.Rendering.BitArray32:GetHashCode() end

---@class UnityEngine.Rendering.BitArray64 : System.ValueType
---@field capacity number
---@field allFalse boolean
---@field allTrue boolean
---@field humanizedData string
---@field Item boolean
UnityEngine.Rendering.BitArray64 = {}
---@alias CS.UnityEngine.Rendering.BitArray64 UnityEngine.Rendering.BitArray64
CS.UnityEngine.Rendering.BitArray64 = UnityEngine.Rendering.BitArray64

---@overload fun(initValue: number) : UnityEngine.Rendering.BitArray64
---@param bitIndexTrue System.Collections.Generic.IEnumerable
---@return UnityEngine.Rendering.BitArray64
function UnityEngine.Rendering.BitArray64.New(bitIndexTrue) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray64:BitAnd(other) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray64:BitOr(other) end
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray64:BitNot() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BitArray64:Equals(obj) end
---@return number
function UnityEngine.Rendering.BitArray64:GetHashCode() end

---@class UnityEngine.Rendering.BitArray128 : System.ValueType
---@field capacity number
---@field allFalse boolean
---@field allTrue boolean
---@field humanizedData string
---@field Item boolean
UnityEngine.Rendering.BitArray128 = {}
---@alias CS.UnityEngine.Rendering.BitArray128 UnityEngine.Rendering.BitArray128
CS.UnityEngine.Rendering.BitArray128 = UnityEngine.Rendering.BitArray128

---@overload fun(initValue1: number, initValue2: number) : UnityEngine.Rendering.BitArray128
---@param bitIndexTrue System.Collections.Generic.IEnumerable
---@return UnityEngine.Rendering.BitArray128
function UnityEngine.Rendering.BitArray128.New(bitIndexTrue) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray128:BitAnd(other) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray128:BitOr(other) end
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray128:BitNot() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BitArray128:Equals(obj) end
---@return number
function UnityEngine.Rendering.BitArray128:GetHashCode() end

---@class UnityEngine.Rendering.BitArray256 : System.ValueType
---@field capacity number
---@field allFalse boolean
---@field allTrue boolean
---@field humanizedData string
---@field Item boolean
UnityEngine.Rendering.BitArray256 = {}
---@alias CS.UnityEngine.Rendering.BitArray256 UnityEngine.Rendering.BitArray256
CS.UnityEngine.Rendering.BitArray256 = UnityEngine.Rendering.BitArray256

---@overload fun(initValue1: number, initValue2: number, initValue3: number, initValue4: number) : UnityEngine.Rendering.BitArray256
---@param bitIndexTrue System.Collections.Generic.IEnumerable
---@return UnityEngine.Rendering.BitArray256
function UnityEngine.Rendering.BitArray256.New(bitIndexTrue) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray256:BitAnd(other) end
---@param other UnityEngine.Rendering.IBitArray
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray256:BitOr(other) end
---@return UnityEngine.Rendering.IBitArray
function UnityEngine.Rendering.BitArray256:BitNot() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BitArray256:Equals(obj) end
---@return number
function UnityEngine.Rendering.BitArray256:GetHashCode() end

---@class UnityEngine.Rendering.BitArrayUtilities : System.Object
UnityEngine.Rendering.BitArrayUtilities = {}
---@alias CS.UnityEngine.Rendering.BitArrayUtilities UnityEngine.Rendering.BitArrayUtilities
CS.UnityEngine.Rendering.BitArrayUtilities = UnityEngine.Rendering.BitArrayUtilities

---@param index number
---@param data number
---@return boolean
function UnityEngine.Rendering.BitArrayUtilities.Get8(index, data) end
---@param index number
---@param data number
---@return boolean
function UnityEngine.Rendering.BitArrayUtilities.Get16(index, data) end
---@param index number
---@param data number
---@return boolean
function UnityEngine.Rendering.BitArrayUtilities.Get32(index, data) end
---@param index number
---@param data number
---@return boolean
function UnityEngine.Rendering.BitArrayUtilities.Get64(index, data) end
---@param index number
---@param data1 number
---@param data2 number
---@return boolean
function UnityEngine.Rendering.BitArrayUtilities.Get128(index, data1, data2) end
---@param index number
---@param data1 number
---@param data2 number
---@param data3 number
---@param data4 number
---@return boolean
function UnityEngine.Rendering.BitArrayUtilities.Get256(index, data1, data2, data3, data4) end
---@param index number
---@param ref_data number
---@param value boolean
---@return ,number
function UnityEngine.Rendering.BitArrayUtilities.Set8(index, ref_data, value) end
---@param index number
---@param ref_data number
---@param value boolean
---@return ,number
function UnityEngine.Rendering.BitArrayUtilities.Set16(index, ref_data, value) end
---@param index number
---@param ref_data number
---@param value boolean
---@return ,number
function UnityEngine.Rendering.BitArrayUtilities.Set32(index, ref_data, value) end
---@param index number
---@param ref_data number
---@param value boolean
---@return ,number
function UnityEngine.Rendering.BitArrayUtilities.Set64(index, ref_data, value) end
---@param index number
---@param ref_data1 number
---@param ref_data2 number
---@param value boolean
---@return ,number,number
function UnityEngine.Rendering.BitArrayUtilities.Set128(index, ref_data1, ref_data2, value) end
---@param index number
---@param ref_data1 number
---@param ref_data2 number
---@param ref_data3 number
---@param ref_data4 number
---@param value boolean
---@return ,number,number,number,number
function UnityEngine.Rendering.BitArrayUtilities.Set256(index, ref_data1, ref_data2, ref_data3, ref_data4, value) end

---@class UnityEngine.Rendering.Blitter : System.Object
UnityEngine.Rendering.Blitter = {}
---@alias CS.UnityEngine.Rendering.Blitter UnityEngine.Rendering.Blitter
CS.UnityEngine.Rendering.Blitter = UnityEngine.Rendering.Blitter

---@param blitPS UnityEngine.Shader
---@param blitColorAndDepthPS UnityEngine.Shader
function UnityEngine.Rendering.Blitter.Initialize(blitPS, blitColorAndDepthPS) end
function UnityEngine.Rendering.Blitter.Cleanup() end
---@param dimension UnityEngine.Rendering.TextureDimension
---@param singleSlice boolean
---@return UnityEngine.Material
function UnityEngine.Rendering.Blitter.GetBlitMaterial(dimension, singleSlice) end
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RTHandle, scaleBias: UnityEngine.Vector4, mipLevel: number, bilinear: boolean)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RTHandle, scaleBias: UnityEngine.Vector4, material: UnityEngine.Material, pass: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, scaleBias: UnityEngine.Vector4, material: UnityEngine.Material, pass: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, destination: UnityEngine.Rendering.RenderTargetIdentifier, material: UnityEngine.Material, pass: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, destination: UnityEngine.Rendering.RenderTargetIdentifier, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction, material: UnityEngine.Material, pass: number)
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param scaleBias UnityEngine.Vector4
---@param material UnityEngine.Material
---@param pass number
function UnityEngine.Rendering.Blitter.BlitTexture(cmd, scaleBias, material, pass) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Rendering.RTHandle
---@param scaleBias UnityEngine.Vector4
---@param mipLevel number
---@param bilinear boolean
function UnityEngine.Rendering.Blitter.BlitTexture2D(cmd, source, scaleBias, mipLevel, bilinear) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param sourceColor UnityEngine.Texture
---@param sourceDepth UnityEngine.RenderTexture
---@param scaleBias UnityEngine.Vector4
---@param mipLevel number
---@param blitDepth boolean
function UnityEngine.Rendering.Blitter.BlitColorAndDepth(cmd, sourceColor, sourceDepth, scaleBias, mipLevel, blitDepth) end
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RTHandle, destination: UnityEngine.Rendering.RTHandle, mipLevel: number, bilinear: boolean)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RTHandle, destination: UnityEngine.Rendering.RTHandle, material: UnityEngine.Material, pass: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RTHandle, destination: UnityEngine.Rendering.RTHandle, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction, material: UnityEngine.Material, pass: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RTHandle, destination: UnityEngine.Rendering.RTHandle, scaleBias: UnityEngine.Vector4, mipLevel: number, bilinear: boolean)
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Rendering.RTHandle
---@param destination UnityEngine.Rendering.RTHandle
---@param destViewport UnityEngine.Rect
---@param mipLevel number
---@param bilinear boolean
function UnityEngine.Rendering.Blitter.BlitCameraTexture(cmd, source, destination, destViewport, mipLevel, bilinear) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Rendering.RTHandle
---@param destination UnityEngine.Rendering.RTHandle
---@param mipLevel number
---@param bilinear boolean
function UnityEngine.Rendering.Blitter.BlitCameraTexture2D(cmd, source, destination, mipLevel, bilinear) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param scaleBiasTex UnityEngine.Vector4
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
---@param bilinear boolean
function UnityEngine.Rendering.Blitter.BlitQuad(cmd, source, scaleBiasTex, scaleBiasRT, mipLevelTex, bilinear) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param textureSize UnityEngine.Vector2
---@param scaleBiasTex UnityEngine.Vector4
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
---@param bilinear boolean
---@param paddingInPixels number
function UnityEngine.Rendering.Blitter.BlitQuadWithPadding(cmd, source, textureSize, scaleBiasTex, scaleBiasRT, mipLevelTex, bilinear, paddingInPixels) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param textureSize UnityEngine.Vector2
---@param scaleBiasTex UnityEngine.Vector4
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
---@param bilinear boolean
---@param paddingInPixels number
function UnityEngine.Rendering.Blitter.BlitQuadWithPaddingMultiply(cmd, source, textureSize, scaleBiasTex, scaleBiasRT, mipLevelTex, bilinear, paddingInPixels) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param textureSize UnityEngine.Vector2
---@param scaleBiasTex UnityEngine.Vector4
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
---@param bilinear boolean
---@param paddingInPixels number
function UnityEngine.Rendering.Blitter.BlitOctahedralWithPadding(cmd, source, textureSize, scaleBiasTex, scaleBiasRT, mipLevelTex, bilinear, paddingInPixels) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param textureSize UnityEngine.Vector2
---@param scaleBiasTex UnityEngine.Vector4
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
---@param bilinear boolean
---@param paddingInPixels number
function UnityEngine.Rendering.Blitter.BlitOctahedralWithPaddingMultiply(cmd, source, textureSize, scaleBiasTex, scaleBiasRT, mipLevelTex, bilinear, paddingInPixels) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
function UnityEngine.Rendering.Blitter.BlitCubeToOctahedral2DQuad(cmd, source, scaleBiasRT, mipLevelTex) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param textureSize UnityEngine.Vector2
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
---@param bilinear boolean
---@param paddingInPixels number
---@param decodeInstructions System.Nullable
function UnityEngine.Rendering.Blitter.BlitCubeToOctahedral2DQuadWithPadding(cmd, source, textureSize, scaleBiasRT, mipLevelTex, bilinear, paddingInPixels, decodeInstructions) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
function UnityEngine.Rendering.Blitter.BlitCubeToOctahedral2DQuadSingleChannel(cmd, source, scaleBiasRT, mipLevelTex) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param source UnityEngine.Texture
---@param scaleBiasTex UnityEngine.Vector4
---@param scaleBiasRT UnityEngine.Vector4
---@param mipLevelTex number
function UnityEngine.Rendering.Blitter.BlitQuadSingleChannel(cmd, source, scaleBiasTex, scaleBiasRT, mipLevelTex) end

---@class UnityEngine.Rendering.CameraCaptureBridge : System.Object
---@field enabled boolean
UnityEngine.Rendering.CameraCaptureBridge = {}
---@alias CS.UnityEngine.Rendering.CameraCaptureBridge UnityEngine.Rendering.CameraCaptureBridge
CS.UnityEngine.Rendering.CameraCaptureBridge = UnityEngine.Rendering.CameraCaptureBridge

---@param camera UnityEngine.Camera
---@return System.Collections.Generic.IEnumerator
function UnityEngine.Rendering.CameraCaptureBridge.GetCaptureActions(camera) end
---@param camera UnityEngine.Camera
---@param action System.Action
function UnityEngine.Rendering.CameraCaptureBridge.AddCaptureAction(camera, action) end
---@param camera UnityEngine.Camera
---@param action System.Action
function UnityEngine.Rendering.CameraCaptureBridge.RemoveCaptureAction(camera, action) end

---@class UnityEngine.Rendering.ColorSpaceUtils : System.Object
---@field Rec709ToRec2020Mat UnityEngine.Matrix4x4
---@field Rec709ToP3D65Mat UnityEngine.Matrix4x4
---@field Rec2020ToRec709Mat UnityEngine.Matrix4x4
---@field Rec2020ToP3D65Mat UnityEngine.Matrix4x4
---@field P3D65ToRec2020Mat UnityEngine.Matrix4x4
UnityEngine.Rendering.ColorSpaceUtils = {}
---@alias CS.UnityEngine.Rendering.ColorSpaceUtils UnityEngine.Rendering.ColorSpaceUtils
CS.UnityEngine.Rendering.ColorSpaceUtils = UnityEngine.Rendering.ColorSpaceUtils


---@class UnityEngine.Rendering.ColorUtils : System.Object
---@field s_LightMeterCalibrationConstant number
---@field s_LensAttenuation number
---@field lensImperfectionExposureScale number
UnityEngine.Rendering.ColorUtils = {}
---@alias CS.UnityEngine.Rendering.ColorUtils UnityEngine.Rendering.ColorUtils
CS.UnityEngine.Rendering.ColorUtils = UnityEngine.Rendering.ColorUtils

---@param x number
---@return number
function UnityEngine.Rendering.ColorUtils.StandardIlluminantY(x) end
---@param x number
---@param y number
---@return UnityEngine.Vector3
function UnityEngine.Rendering.ColorUtils.CIExyToLMS(x, y) end
---@param temperature number
---@param tint number
---@return UnityEngine.Vector3
function UnityEngine.Rendering.ColorUtils.ColorBalanceToLMSCoeffs(temperature, tint) end
---@param ref_inShadows UnityEngine.Vector4
---@param ref_inMidtones UnityEngine.Vector4
---@param ref_inHighlights UnityEngine.Vector4
---@return System.ValueTuple,UnityEngine.Vector4,UnityEngine.Vector4,UnityEngine.Vector4
function UnityEngine.Rendering.ColorUtils.PrepareShadowsMidtonesHighlights(ref_inShadows, ref_inMidtones, ref_inHighlights) end
---@param ref_inLift UnityEngine.Vector4
---@param ref_inGamma UnityEngine.Vector4
---@param ref_inGain UnityEngine.Vector4
---@return System.ValueTuple,UnityEngine.Vector4,UnityEngine.Vector4,UnityEngine.Vector4
function UnityEngine.Rendering.ColorUtils.PrepareLiftGammaGain(ref_inLift, ref_inGamma, ref_inGain) end
---@param ref_inShadows UnityEngine.Vector4
---@param ref_inHighlights UnityEngine.Vector4
---@param balance number
---@return System.ValueTuple,UnityEngine.Vector4,UnityEngine.Vector4
function UnityEngine.Rendering.ColorUtils.PrepareSplitToning(ref_inShadows, ref_inHighlights, balance) end
---@param ref_color UnityEngine.Color
---@return number,UnityEngine.Color
function UnityEngine.Rendering.ColorUtils.Luminance(ref_color) end
---@param aperture number
---@param shutterSpeed number
---@param ISO number
---@return number
function UnityEngine.Rendering.ColorUtils.ComputeEV100(aperture, shutterSpeed, ISO) end
---@param EV100 number
---@return number
function UnityEngine.Rendering.ColorUtils.ConvertEV100ToExposure(EV100) end
---@param exposure number
---@return number
function UnityEngine.Rendering.ColorUtils.ConvertExposureToEV100(exposure) end
---@param avgLuminance number
---@return number
function UnityEngine.Rendering.ColorUtils.ComputeEV100FromAvgLuminance(avgLuminance) end
---@param aperture number
---@param shutterSpeed number
---@param targetEV100 number
---@return number
function UnityEngine.Rendering.ColorUtils.ComputeISO(aperture, shutterSpeed, targetEV100) end
---@param c UnityEngine.Color
---@return number
function UnityEngine.Rendering.ColorUtils.ToHex(c) end
---@param hex number
---@return UnityEngine.Color
function UnityEngine.Rendering.ColorUtils.ToRGBA(hex) end

---@class UnityEngine.Rendering.CoreMatrixUtils : System.Object
UnityEngine.Rendering.CoreMatrixUtils = {}
---@alias CS.UnityEngine.Rendering.CoreMatrixUtils UnityEngine.Rendering.CoreMatrixUtils
CS.UnityEngine.Rendering.CoreMatrixUtils = UnityEngine.Rendering.CoreMatrixUtils

---@param ref_inOutMatrix UnityEngine.Matrix4x4
---@param translation UnityEngine.Vector3
---@return ,UnityEngine.Matrix4x4
function UnityEngine.Rendering.CoreMatrixUtils.MatrixTimesTranslation(ref_inOutMatrix, translation) end
---@param ref_inOutMatrix UnityEngine.Matrix4x4
---@param translation UnityEngine.Vector3
---@return ,UnityEngine.Matrix4x4
function UnityEngine.Rendering.CoreMatrixUtils.TranslationTimesMatrix(ref_inOutMatrix, translation) end
---@param perspective UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function UnityEngine.Rendering.CoreMatrixUtils.MultiplyPerspectiveMatrix(perspective, rhs) end
---@param ortho UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@param centered boolean
---@return UnityEngine.Matrix4x4
function UnityEngine.Rendering.CoreMatrixUtils.MultiplyOrthoMatrix(ortho, rhs, centered) end
---@param projMatrix UnityEngine.Matrix4x4
---@param rhs UnityEngine.Matrix4x4
---@param orthoCentered boolean
---@return UnityEngine.Matrix4x4
function UnityEngine.Rendering.CoreMatrixUtils.MultiplyProjectionMatrix(projMatrix, rhs, orthoCentered) end

---@class UnityEngine.Rendering.CoreRenderPipelinePreferences : System.Object
---@field previewBackgroundColor UnityEngine.Color
UnityEngine.Rendering.CoreRenderPipelinePreferences = {}
---@alias CS.UnityEngine.Rendering.CoreRenderPipelinePreferences UnityEngine.Rendering.CoreRenderPipelinePreferences
CS.UnityEngine.Rendering.CoreRenderPipelinePreferences = UnityEngine.Rendering.CoreRenderPipelinePreferences

---@param name string
---@param defaultColor UnityEngine.Color
---@return System.Func
function UnityEngine.Rendering.CoreRenderPipelinePreferences.RegisterPreferenceColor(name, defaultColor) end

---@class UnityEngine.Rendering.CoreUtils : System.Object
---@field lookAtList UnityEngine.Vector3[]
---@field upVectorList UnityEngine.Vector3[]
---@field blackCubeTexture UnityEngine.Cubemap
---@field magentaCubeTexture UnityEngine.Cubemap
---@field magentaCubeTextureArray UnityEngine.CubemapArray
---@field whiteCubeTexture UnityEngine.Cubemap
---@field emptyUAV UnityEngine.RenderTexture
---@field blackVolumeTexture UnityEngine.Texture3D
UnityEngine.Rendering.CoreUtils = {}
---@alias CS.UnityEngine.Rendering.CoreUtils UnityEngine.Rendering.CoreUtils
CS.UnityEngine.Rendering.CoreUtils = UnityEngine.Rendering.CoreUtils

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param clearFlag UnityEngine.Rendering.ClearFlag
---@param clearColor UnityEngine.Color
function UnityEngine.Rendering.CoreUtils.ClearRenderTarget(cmd, clearFlag, clearColor) end
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RenderTargetIdentifier, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RenderTargetIdentifier, clearFlag: UnityEngine.Rendering.ClearFlag, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, clearFlag: UnityEngine.Rendering.ClearFlag, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffers: UnityEngine.Rendering.RenderTargetIdentifier[], depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffers: UnityEngine.Rendering.RenderTargetIdentifier[], depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, clearFlag: UnityEngine.Rendering.ClearFlag)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffers: UnityEngine.Rendering.RenderTargetIdentifier[], depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RenderTargetIdentifier, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RenderTargetIdentifier, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RenderTargetIdentifier, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RenderTargetIdentifier, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RTHandle, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RTHandle, clearFlag: UnityEngine.Rendering.ClearFlag, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RTHandle, depthBuffer: UnityEngine.Rendering.RTHandle, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RTHandle, depthBuffer: UnityEngine.Rendering.RTHandle, clearFlag: UnityEngine.Rendering.ClearFlag, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RTHandle, depthBuffer: UnityEngine.Rendering.RTHandle, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.Rendering.RTHandle, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffer: UnityEngine.Rendering.RTHandle, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthBuffer: UnityEngine.Rendering.RTHandle, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, clearFlag: UnityEngine.Rendering.ClearFlag, clearColor: UnityEngine.Color, miplevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffers: UnityEngine.Rendering.RenderTargetIdentifier[], depthBuffer: UnityEngine.Rendering.RTHandle)
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, colorBuffers: UnityEngine.Rendering.RenderTargetIdentifier[], depthBuffer: UnityEngine.Rendering.RTHandle, clearFlag: UnityEngine.Rendering.ClearFlag)
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param colorBuffers UnityEngine.Rendering.RenderTargetIdentifier[]
---@param depthBuffer UnityEngine.Rendering.RTHandle
---@param clearFlag UnityEngine.Rendering.ClearFlag
---@param clearColor UnityEngine.Color
function UnityEngine.Rendering.CoreUtils.SetRenderTarget(cmd, colorBuffers, depthBuffer, clearFlag, clearColor) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param target UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.CoreUtils.SetViewport(cmd, target) end
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.RenderTextureFormat, name: string, mips: boolean, enableMSAA: boolean, msaaSamples: UnityEngine.Rendering.MSAASamples) : string
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, name: string, mips: boolean, enableMSAA: boolean, msaaSamples: UnityEngine.Rendering.MSAASamples) : string
---@param width number
---@param height number
---@param depth number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param dim UnityEngine.Rendering.TextureDimension
---@param name string
---@param mips boolean
---@param enableMSAA boolean
---@param msaaSamples UnityEngine.Rendering.MSAASamples
---@param dynamicRes boolean
---@return string
function UnityEngine.Rendering.CoreUtils.GetRenderTargetAutoName(width, height, depth, format, dim, name, mips, enableMSAA, msaaSamples, dynamicRes) end
---@overload fun(width: number, height: number, format: UnityEngine.TextureFormat, dim: UnityEngine.Rendering.TextureDimension, name: string, mips: boolean, depth: number) : string
---@param width number
---@param height number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param dim UnityEngine.Rendering.TextureDimension
---@param name string
---@param mips boolean
---@param depth number
---@return string
function UnityEngine.Rendering.CoreUtils.GetTextureAutoName(width, height, format, dim, name, mips, depth) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param renderTexture UnityEngine.RenderTexture
---@param clearColor UnityEngine.Color
---@param clearMips boolean
function UnityEngine.Rendering.CoreUtils.ClearCubemap(cmd, renderTexture, clearColor, clearMips) end
---@overload fun(commandBuffer: UnityEngine.Rendering.CommandBuffer, material: UnityEngine.Material, properties: UnityEngine.MaterialPropertyBlock, shaderPassId: number)
---@overload fun(commandBuffer: UnityEngine.Rendering.CommandBuffer, material: UnityEngine.Material, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, properties: UnityEngine.MaterialPropertyBlock, shaderPassId: number)
---@overload fun(commandBuffer: UnityEngine.Rendering.CommandBuffer, material: UnityEngine.Material, colorBuffer: UnityEngine.Rendering.RenderTargetIdentifier, depthStencilBuffer: UnityEngine.Rendering.RenderTargetIdentifier, properties: UnityEngine.MaterialPropertyBlock, shaderPassId: number)
---@overload fun(commandBuffer: UnityEngine.Rendering.CommandBuffer, material: UnityEngine.Material, colorBuffers: UnityEngine.Rendering.RenderTargetIdentifier[], depthStencilBuffer: UnityEngine.Rendering.RenderTargetIdentifier, properties: UnityEngine.MaterialPropertyBlock, shaderPassId: number)
---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@param material UnityEngine.Material
---@param colorBuffers UnityEngine.Rendering.RenderTargetIdentifier[]
---@param properties UnityEngine.MaterialPropertyBlock
---@param shaderPassId number
function UnityEngine.Rendering.CoreUtils.DrawFullScreen(commandBuffer, material, colorBuffers, properties, shaderPassId) end
---@param color UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.Rendering.CoreUtils.ConvertSRGBToActiveColorSpace(color) end
---@param color UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.Rendering.CoreUtils.ConvertLinearToActiveColorSpace(color) end
---@overload fun(shaderPath: string) : UnityEngine.Material
---@param shader UnityEngine.Shader
---@return UnityEngine.Material
function UnityEngine.Rendering.CoreUtils.CreateEngineMaterial(shader) end
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, keyword: string, state: boolean)
---@overload fun(material: UnityEngine.Material, keyword: string, state: boolean)
---@param cs UnityEngine.ComputeShader
---@param keyword string
---@param state boolean
function UnityEngine.Rendering.CoreUtils.SetKeyword(cs, keyword, state) end
---@param obj UnityEngine.Object
function UnityEngine.Rendering.CoreUtils.Destroy(obj) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Rendering.CoreUtils.GetAllAssemblyTypes() end
---@overload fun(buffer: UnityEngine.GraphicsBuffer)
---@param buffer UnityEngine.ComputeBuffer
function UnityEngine.Rendering.CoreUtils.SafeRelease(buffer) end
---@param min UnityEngine.Vector3
---@param max UnityEngine.Vector3
---@return UnityEngine.Mesh
function UnityEngine.Rendering.CoreUtils.CreateCubeMesh(min, max) end
---@param camera UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.CoreUtils.ArePostProcessesEnabled(camera) end
---@param camera UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.CoreUtils.AreAnimatedMaterialsEnabled(camera) end
---@param camera UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.CoreUtils.IsSceneLightingDisabled(camera) end
---@param camera UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.CoreUtils.IsLightOverlapDebugEnabled(camera) end
---@param camera UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.CoreUtils.IsSceneViewFogEnabled(camera) end
---@return boolean
function UnityEngine.Rendering.CoreUtils.IsSceneFilteringEnabled() end
---@return boolean
function UnityEngine.Rendering.CoreUtils.IsSceneViewPrefabStageContextHidden() end
---@param renderContext UnityEngine.Rendering.ScriptableRenderContext
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param rendererList UnityEngine.Rendering.RendererList
function UnityEngine.Rendering.CoreUtils.DrawRendererList(renderContext, cmd, rendererList) end
---@param texture UnityEngine.Texture
---@return number
function UnityEngine.Rendering.CoreUtils.GetTextureHash(texture) end
---@param size number
---@return number
function UnityEngine.Rendering.CoreUtils.PreviousPowerOfTwo(size) end
---@param filePath string
function UnityEngine.Rendering.CoreUtils.EnsureFolderTreeInAssetFilePath(filePath) end

---@class UnityEngine.Rendering.DelegateUtility : System.Object
UnityEngine.Rendering.DelegateUtility = {}
---@alias CS.UnityEngine.Rendering.DelegateUtility UnityEngine.Rendering.DelegateUtility
CS.UnityEngine.Rendering.DelegateUtility = UnityEngine.Rendering.DelegateUtility

---@param source System.Delegate
---@param type System.Type
---@return System.Delegate
function UnityEngine.Rendering.DelegateUtility.Cast(source, type) end

---@class UnityEngine.Rendering.FSRUtils : System.Object
---@field kDefaultSharpnessStops number
---@field kDefaultSharpnessLinear number
UnityEngine.Rendering.FSRUtils = {}
---@alias CS.UnityEngine.Rendering.FSRUtils UnityEngine.Rendering.FSRUtils
CS.UnityEngine.Rendering.FSRUtils = UnityEngine.Rendering.FSRUtils

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param inputViewportSizeInPixels UnityEngine.Vector2
---@param inputImageSizeInPixels UnityEngine.Vector2
---@param outputImageSizeInPixels UnityEngine.Vector2
function UnityEngine.Rendering.FSRUtils.SetEasuConstants(cmd, inputViewportSizeInPixels, inputImageSizeInPixels, outputImageSizeInPixels) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param sharpnessStops number
function UnityEngine.Rendering.FSRUtils.SetRcasConstants(cmd, sharpnessStops) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param sharpnessLinear number
function UnityEngine.Rendering.FSRUtils.SetRcasConstantsLinear(cmd, sharpnessLinear) end
---@return boolean
function UnityEngine.Rendering.FSRUtils.IsSupported() end

---@class UnityEngine.Rendering.HableCurve : System.Object
---@field segments UnityEngine.Rendering.HableCurve.Segment[]
---@field uniforms UnityEngine.Rendering.HableCurve.Uniforms
---@field whitePoint number
---@field inverseWhitePoint number
---@field x0 number
---@field x1 number
UnityEngine.Rendering.HableCurve = {}
---@alias CS.UnityEngine.Rendering.HableCurve UnityEngine.Rendering.HableCurve
CS.UnityEngine.Rendering.HableCurve = UnityEngine.Rendering.HableCurve

---@return UnityEngine.Rendering.HableCurve
function UnityEngine.Rendering.HableCurve.New() end
---@param x number
---@return number
function UnityEngine.Rendering.HableCurve:Eval(x) end
---@param toeStrength number
---@param toeLength number
---@param shoulderStrength number
---@param shoulderLength number
---@param shoulderAngle number
---@param gamma number
function UnityEngine.Rendering.HableCurve:Init(toeStrength, toeLength, shoulderStrength, shoulderLength, shoulderAngle, gamma) end

---@class UnityEngine.Rendering.HaltonSequence : System.Object
UnityEngine.Rendering.HaltonSequence = {}
---@alias CS.UnityEngine.Rendering.HaltonSequence UnityEngine.Rendering.HaltonSequence
CS.UnityEngine.Rendering.HaltonSequence = UnityEngine.Rendering.HaltonSequence

---@param index number
---@param radix number
---@return number
function UnityEngine.Rendering.HaltonSequence.Get(index, radix) end

---@class UnityEngine.Rendering.HashFNV1A32 : System.ValueType
---@field value number
UnityEngine.Rendering.HashFNV1A32 = {}
---@alias CS.UnityEngine.Rendering.HashFNV1A32 UnityEngine.Rendering.HashFNV1A32
CS.UnityEngine.Rendering.HashFNV1A32 = UnityEngine.Rendering.HashFNV1A32

---@return UnityEngine.Rendering.HashFNV1A32
function UnityEngine.Rendering.HashFNV1A32.Create() end
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: number) : number
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: number) : number
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: boolean) : boolean
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: number) : number
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: number) : number
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: UnityEngine.Vector2) : UnityEngine.Vector2
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: UnityEngine.Vector3) : UnityEngine.Vector3
---@overload fun(self: UnityEngine.Rendering.HashFNV1A32, ref_input: UnityEngine.Vector4) : UnityEngine.Vector4
---@param del System.Delegate
function UnityEngine.Rendering.HashFNV1A32:Append(del) end
---@return number
function UnityEngine.Rendering.HashFNV1A32:GetHashCode() end

---@class UnityEngine.Rendering.HDROutputUtils : System.Object
UnityEngine.Rendering.HDROutputUtils = {}
---@alias CS.UnityEngine.Rendering.HDROutputUtils UnityEngine.Rendering.HDROutputUtils
CS.UnityEngine.Rendering.HDROutputUtils = UnityEngine.Rendering.HDROutputUtils

---@param gamut UnityEngine.ColorGamut
---@param out_colorspace number
---@return boolean,number
function UnityEngine.Rendering.HDROutputUtils.GetColorSpaceForGamut(gamut, out_colorspace) end
---@param gamut UnityEngine.ColorGamut
---@param out_encoding number
---@return boolean,number
function UnityEngine.Rendering.HDROutputUtils.GetColorEncodingForGamut(gamut, out_encoding) end
---@overload fun(material: UnityEngine.Material, gamut: UnityEngine.ColorGamut, operations: UnityEngine.Rendering.HDROutputUtils.Operation)
---@overload fun(properties: UnityEngine.MaterialPropertyBlock, gamut: UnityEngine.ColorGamut)
---@overload fun(material: UnityEngine.Material, operations: UnityEngine.Rendering.HDROutputUtils.Operation)
---@param computeShader UnityEngine.ComputeShader
---@param gamut UnityEngine.ColorGamut
---@param operations UnityEngine.Rendering.HDROutputUtils.Operation
function UnityEngine.Rendering.HDROutputUtils.ConfigureHDROutput(computeShader, gamut, operations) end
---@param shaderKeywordSet UnityEngine.Rendering.ShaderKeywordSet
---@param isHDREnabled boolean
---@return boolean
function UnityEngine.Rendering.HDROutputUtils.IsShaderVariantValid(shaderKeywordSet, isHDREnabled) end

---@class UnityEngine.Rendering.MaterialQuality
---@field Low UnityEngine.Rendering.MaterialQuality
---@field Medium UnityEngine.Rendering.MaterialQuality
---@field High UnityEngine.Rendering.MaterialQuality
UnityEngine.Rendering.MaterialQuality = {}
---@alias CS.UnityEngine.Rendering.MaterialQuality UnityEngine.Rendering.MaterialQuality
CS.UnityEngine.Rendering.MaterialQuality = UnityEngine.Rendering.MaterialQuality

---@return UnityEngine.Rendering.MaterialQuality
function UnityEngine.Rendering.MaterialQuality:GetHighestQuality() end
---@param requestedLevel UnityEngine.Rendering.MaterialQuality
---@return UnityEngine.Rendering.MaterialQuality
function UnityEngine.Rendering.MaterialQuality:GetClosestQuality(requestedLevel) end
function UnityEngine.Rendering.MaterialQuality:SetGlobalShaderKeywords() end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.MaterialQuality:SetGlobalShaderKeywords(cmd) end
---@return number
function UnityEngine.Rendering.MaterialQuality:ToFirstIndex() end

---@class UnityEngine.Rendering.MaterialQualityUtilities : System.Object
---@field KeywordNames System.String[]
---@field EnumNames System.String[]
---@field Keywords UnityEngine.Rendering.ShaderKeyword[]
UnityEngine.Rendering.MaterialQualityUtilities = {}
---@alias CS.UnityEngine.Rendering.MaterialQualityUtilities UnityEngine.Rendering.MaterialQualityUtilities
CS.UnityEngine.Rendering.MaterialQualityUtilities = UnityEngine.Rendering.MaterialQualityUtilities

---@param levels UnityEngine.Rendering.MaterialQuality
---@return UnityEngine.Rendering.MaterialQuality
function UnityEngine.Rendering.MaterialQualityUtilities.GetHighestQuality(levels) end
---@param availableLevels UnityEngine.Rendering.MaterialQuality
---@param requestedLevel UnityEngine.Rendering.MaterialQuality
---@return UnityEngine.Rendering.MaterialQuality
function UnityEngine.Rendering.MaterialQualityUtilities.GetClosestQuality(availableLevels, requestedLevel) end
---@overload fun(level: UnityEngine.Rendering.MaterialQuality)
---@param level UnityEngine.Rendering.MaterialQuality
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.MaterialQualityUtilities.SetGlobalShaderKeywords(level, cmd) end
---@param level UnityEngine.Rendering.MaterialQuality
---@return number
function UnityEngine.Rendering.MaterialQualityUtilities.ToFirstIndex(level) end
---@param index number
---@return UnityEngine.Rendering.MaterialQuality
function UnityEngine.Rendering.MaterialQualityUtilities.FromIndex(index) end

---@class UnityEngine.Rendering.MeshGizmo : System.Object
---@field vertexCountPerCube number
---@field mesh UnityEngine.Mesh
UnityEngine.Rendering.MeshGizmo = {}
---@alias CS.UnityEngine.Rendering.MeshGizmo UnityEngine.Rendering.MeshGizmo
CS.UnityEngine.Rendering.MeshGizmo = UnityEngine.Rendering.MeshGizmo

---@param capacity number
---@return UnityEngine.Rendering.MeshGizmo
function UnityEngine.Rendering.MeshGizmo.New(capacity) end
function UnityEngine.Rendering.MeshGizmo:Clear() end
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
---@param color UnityEngine.Color
function UnityEngine.Rendering.MeshGizmo:AddWireCube(center, size, color) end
---@param trs UnityEngine.Matrix4x4
---@param depthTest UnityEngine.Rendering.CompareFunction
---@param gizmoName string
function UnityEngine.Rendering.MeshGizmo:RenderWireframe(trs, depthTest, gizmoName) end
function UnityEngine.Rendering.MeshGizmo:Dispose() end

---@class UnityEngine.Rendering.ResourceReloader : System.Object
UnityEngine.Rendering.ResourceReloader = {}
---@alias CS.UnityEngine.Rendering.ResourceReloader UnityEngine.Rendering.ResourceReloader
CS.UnityEngine.Rendering.ResourceReloader = UnityEngine.Rendering.ResourceReloader

---@param container System.Object
---@param basePath string
---@return System.ValueTuple
function UnityEngine.Rendering.ResourceReloader.TryReloadAllNullIn(container, basePath) end
---@param container System.Object
---@param basePath string
---@return boolean
function UnityEngine.Rendering.ResourceReloader.ReloadAllNullIn(container, basePath) end

---@class UnityEngine.Rendering.ReloadAttribute : System.Attribute
---@field package UnityEngine.Rendering.ReloadAttribute.Package
---@field paths System.String[]
UnityEngine.Rendering.ReloadAttribute = {}
---@alias CS.UnityEngine.Rendering.ReloadAttribute UnityEngine.Rendering.ReloadAttribute
CS.UnityEngine.Rendering.ReloadAttribute = UnityEngine.Rendering.ReloadAttribute

---@overload fun(paths: System.String[], package: UnityEngine.Rendering.ReloadAttribute.Package) : UnityEngine.Rendering.ReloadAttribute
---@overload fun(path: string, package: UnityEngine.Rendering.ReloadAttribute.Package) : UnityEngine.Rendering.ReloadAttribute
---@param pathFormat string
---@param rangeMin number
---@param rangeMax number
---@param package UnityEngine.Rendering.ReloadAttribute.Package
---@return UnityEngine.Rendering.ReloadAttribute
function UnityEngine.Rendering.ReloadAttribute.New(pathFormat, rangeMin, rangeMax, package) end

---@class UnityEngine.Rendering.ReloadGroupAttribute : System.Attribute
UnityEngine.Rendering.ReloadGroupAttribute = {}
---@alias CS.UnityEngine.Rendering.ReloadGroupAttribute UnityEngine.Rendering.ReloadGroupAttribute
CS.UnityEngine.Rendering.ReloadGroupAttribute = UnityEngine.Rendering.ReloadGroupAttribute

---@return UnityEngine.Rendering.ReloadGroupAttribute
function UnityEngine.Rendering.ReloadGroupAttribute.New() end

---@class UnityEngine.Rendering.SceneRenderPipeline : UnityEngine.MonoBehaviour
---@field renderPipelineAsset UnityEngine.Rendering.RenderPipelineAsset
UnityEngine.Rendering.SceneRenderPipeline = {}
---@alias CS.UnityEngine.Rendering.SceneRenderPipeline UnityEngine.Rendering.SceneRenderPipeline
CS.UnityEngine.Rendering.SceneRenderPipeline = UnityEngine.Rendering.SceneRenderPipeline


---@class UnityEngine.Rendering.TextureCurve : System.Object
---@field length number
---@field Item UnityEngine.Keyframe
UnityEngine.Rendering.TextureCurve = {}
---@alias CS.UnityEngine.Rendering.TextureCurve UnityEngine.Rendering.TextureCurve
CS.UnityEngine.Rendering.TextureCurve = UnityEngine.Rendering.TextureCurve

---@overload fun(baseCurve: UnityEngine.AnimationCurve, zeroValue: number, loop: boolean, ref_bounds: UnityEngine.Vector2) : UnityEngine.Rendering.TextureCurve, UnityEngine.Vector2
---@param keys UnityEngine.Keyframe[]
---@param zeroValue number
---@param loop boolean
---@param ref_bounds UnityEngine.Vector2
---@return UnityEngine.Rendering.TextureCurve,UnityEngine.Vector2
function UnityEngine.Rendering.TextureCurve.New(keys, zeroValue, loop, ref_bounds) end
function UnityEngine.Rendering.TextureCurve:Release() end
function UnityEngine.Rendering.TextureCurve:SetDirty() end
---@return UnityEngine.Texture2D
function UnityEngine.Rendering.TextureCurve:GetTexture() end
---@param time number
---@return number
function UnityEngine.Rendering.TextureCurve:Evaluate(time) end
---@param time number
---@param value number
---@return number
function UnityEngine.Rendering.TextureCurve:AddKey(time, value) end
---@param index number
---@param ref_key UnityEngine.Keyframe
---@return number,UnityEngine.Keyframe
function UnityEngine.Rendering.TextureCurve:MoveKey(index, ref_key) end
---@param index number
function UnityEngine.Rendering.TextureCurve:RemoveKey(index) end
---@param index number
---@param weight number
function UnityEngine.Rendering.TextureCurve:SmoothTangents(index, weight) end

---@class UnityEngine.Rendering.TextureCurveParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.TextureCurveParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.TextureCurve]
UnityEngine.Rendering.TextureCurveParameter = {}
---@alias CS.UnityEngine.Rendering.TextureCurveParameter UnityEngine.Rendering.TextureCurveParameter
CS.UnityEngine.Rendering.TextureCurveParameter = UnityEngine.Rendering.TextureCurveParameter

---@param value UnityEngine.Rendering.TextureCurve
---@param overrideState boolean
---@return UnityEngine.Rendering.TextureCurveParameter
function UnityEngine.Rendering.TextureCurveParameter.New(value, overrideState) end
function UnityEngine.Rendering.TextureCurveParameter:Release() end

---@class UnityEngine.Rendering.TileLayoutUtils : System.Object
UnityEngine.Rendering.TileLayoutUtils = {}
---@alias CS.UnityEngine.Rendering.TileLayoutUtils UnityEngine.Rendering.TileLayoutUtils
CS.UnityEngine.Rendering.TileLayoutUtils = UnityEngine.Rendering.TileLayoutUtils

---@param src UnityEngine.RectInt
---@param tileSize number
---@param out_main UnityEngine.RectInt
---@param out_topRow UnityEngine.RectInt
---@param out_rightCol UnityEngine.RectInt
---@param out_topRight UnityEngine.RectInt
---@return boolean,UnityEngine.RectInt,UnityEngine.RectInt,UnityEngine.RectInt,UnityEngine.RectInt
function UnityEngine.Rendering.TileLayoutUtils.TryLayoutByTiles(src, tileSize, out_main, out_topRow, out_rightCol, out_topRight) end
---@param src UnityEngine.RectInt
---@param tileSize number
---@param out_main UnityEngine.RectInt
---@param out_other UnityEngine.RectInt
---@return boolean,UnityEngine.RectInt,UnityEngine.RectInt
function UnityEngine.Rendering.TileLayoutUtils.TryLayoutByRow(src, tileSize, out_main, out_other) end
---@param src UnityEngine.RectInt
---@param tileSize number
---@param out_main UnityEngine.RectInt
---@param out_other UnityEngine.RectInt
---@return boolean,UnityEngine.RectInt,UnityEngine.RectInt
function UnityEngine.Rendering.TileLayoutUtils.TryLayoutByCol(src, tileSize, out_main, out_other) end

---@class UnityEngine.Rendering.XRUtils : System.Object
UnityEngine.Rendering.XRUtils = {}
---@alias CS.UnityEngine.Rendering.XRUtils UnityEngine.Rendering.XRUtils
CS.UnityEngine.Rendering.XRUtils = UnityEngine.Rendering.XRUtils

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param camera UnityEngine.Camera
---@param stereoEnabled boolean
function UnityEngine.Rendering.XRUtils.DrawOcclusionMesh(cmd, camera, stereoEnabled) end

---@class UnityEngine.Rendering.IVolume
---@field isGlobal boolean
---@field colliders System.Collections.Generic.List
UnityEngine.Rendering.IVolume = {}
---@alias CS.UnityEngine.Rendering.IVolume UnityEngine.Rendering.IVolume
CS.UnityEngine.Rendering.IVolume = UnityEngine.Rendering.IVolume


---@class UnityEngine.Rendering.KeyframeUtility : System.Object
UnityEngine.Rendering.KeyframeUtility = {}
---@alias CS.UnityEngine.Rendering.KeyframeUtility UnityEngine.Rendering.KeyframeUtility
CS.UnityEngine.Rendering.KeyframeUtility = UnityEngine.Rendering.KeyframeUtility

---@return UnityEngine.Rendering.KeyframeUtility
function UnityEngine.Rendering.KeyframeUtility.New() end
---@param curve UnityEngine.AnimationCurve
function UnityEngine.Rendering.KeyframeUtility.ResetAnimationCurve(curve) end
---@param ref_lhsAndResultCurve UnityEngine.AnimationCurve
---@param rhsCurve UnityEngine.AnimationCurve
---@param t number
---@return ,UnityEngine.AnimationCurve
function UnityEngine.Rendering.KeyframeUtility.InterpAnimationCurve(ref_lhsAndResultCurve, rhsCurve, t) end

---@class UnityEngine.Rendering.Volume : UnityEngine.MonoBehaviour
---@field priority number
---@field blendDistance number
---@field weight number
---@field sharedProfile UnityEngine.Rendering.VolumeProfile
---@field isGlobal boolean
---@field profile UnityEngine.Rendering.VolumeProfile
---@field colliders System.Collections.Generic.List
UnityEngine.Rendering.Volume = {}
---@alias CS.UnityEngine.Rendering.Volume UnityEngine.Rendering.Volume
CS.UnityEngine.Rendering.Volume = UnityEngine.Rendering.Volume

---@return boolean
function UnityEngine.Rendering.Volume:HasInstantiatedProfile() end

---@class UnityEngine.Rendering.VolumeComponentMenu : System.Attribute
---@field menu string
UnityEngine.Rendering.VolumeComponentMenu = {}
---@alias CS.UnityEngine.Rendering.VolumeComponentMenu UnityEngine.Rendering.VolumeComponentMenu
CS.UnityEngine.Rendering.VolumeComponentMenu = UnityEngine.Rendering.VolumeComponentMenu

---@param menu string
---@return UnityEngine.Rendering.VolumeComponentMenu
function UnityEngine.Rendering.VolumeComponentMenu.New(menu) end

---@class UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline : UnityEngine.Rendering.VolumeComponentMenu
---@field pipelineTypes System.Type[]
UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline = {}
---@alias CS.UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline
CS.UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline = UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline

---@param menu string
---@param pipelineTypes System.Type[]
---@return UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline
function UnityEngine.Rendering.VolumeComponentMenuForRenderPipeline.New(menu, pipelineTypes) end

---@class UnityEngine.Rendering.VolumeComponentDeprecated : System.Attribute
UnityEngine.Rendering.VolumeComponentDeprecated = {}
---@alias CS.UnityEngine.Rendering.VolumeComponentDeprecated UnityEngine.Rendering.VolumeComponentDeprecated
CS.UnityEngine.Rendering.VolumeComponentDeprecated = UnityEngine.Rendering.VolumeComponentDeprecated

---@return UnityEngine.Rendering.VolumeComponentDeprecated
function UnityEngine.Rendering.VolumeComponentDeprecated.New() end

---@class UnityEngine.Rendering.VolumeComponent : UnityEngine.ScriptableObject
---@field active boolean
---@field displayName string
---@field parameters System.Collections.ObjectModel.ReadOnlyCollection
UnityEngine.Rendering.VolumeComponent = {}
---@alias CS.UnityEngine.Rendering.VolumeComponent UnityEngine.Rendering.VolumeComponent
CS.UnityEngine.Rendering.VolumeComponent = UnityEngine.Rendering.VolumeComponent

---@return UnityEngine.Rendering.VolumeComponent
function UnityEngine.Rendering.VolumeComponent.New() end
---@param state UnityEngine.Rendering.VolumeComponent
---@param interpFactor number
function UnityEngine.Rendering.VolumeComponent:Override(state, interpFactor) end
---@param state boolean
function UnityEngine.Rendering.VolumeComponent:SetAllOverridesTo(state) end
---@return number
function UnityEngine.Rendering.VolumeComponent:GetHashCode() end
---@return boolean
function UnityEngine.Rendering.VolumeComponent:AnyPropertiesIsOverridden() end
function UnityEngine.Rendering.VolumeComponent:Release() end
---@param property UnityEditor.SerializedProperty
---@param out_revertMethod System.Action
---@return boolean,System.Action
function UnityEngine.Rendering.VolumeComponent:TryGetRevertMethodForFieldName(property, out_revertMethod) end
---@return string
function UnityEngine.Rendering.VolumeComponent:GetSourceTerm() end
---@param property UnityEditor.SerializedProperty
---@param out_applyMethod System.Action
---@return boolean,System.Action
function UnityEngine.Rendering.VolumeComponent:TryGetApplyMethodForFieldName(property, out_applyMethod) end
---@param comp UnityEngine.Component
---@return string
function UnityEngine.Rendering.VolumeComponent:GetSourceName(comp) end

---@class UnityEngine.Rendering.VolumeManager : System.Object
---@field instance UnityEngine.Rendering.VolumeManager
---@field stack UnityEngine.Rendering.VolumeStack
---@field baseComponentTypeArray System.Type[]
UnityEngine.Rendering.VolumeManager = {}
---@alias CS.UnityEngine.Rendering.VolumeManager UnityEngine.Rendering.VolumeManager
CS.UnityEngine.Rendering.VolumeManager = UnityEngine.Rendering.VolumeManager

---@return UnityEngine.Rendering.VolumeStack
function UnityEngine.Rendering.VolumeManager:CreateStack() end
function UnityEngine.Rendering.VolumeManager:ResetMainStack() end
---@param stack UnityEngine.Rendering.VolumeStack
function UnityEngine.Rendering.VolumeManager:DestroyStack(stack) end
---@param volume UnityEngine.Rendering.Volume
---@param layer number
function UnityEngine.Rendering.VolumeManager:Register(volume, layer) end
---@param volume UnityEngine.Rendering.Volume
---@param layer number
function UnityEngine.Rendering.VolumeManager:Unregister(volume, layer) end
function UnityEngine.Rendering.VolumeManager:CheckBaseTypes() end
---@param stack UnityEngine.Rendering.VolumeStack
function UnityEngine.Rendering.VolumeManager:CheckStack(stack) end
---@overload fun(self: UnityEngine.Rendering.VolumeManager, trigger: UnityEngine.Transform, layerMask: UnityEngine.LayerMask)
---@param stack UnityEngine.Rendering.VolumeStack
---@param trigger UnityEngine.Transform
---@param layerMask UnityEngine.LayerMask
function UnityEngine.Rendering.VolumeManager:Update(stack, trigger, layerMask) end
---@param layerMask UnityEngine.LayerMask
---@return UnityEngine.Rendering.Volume[]
function UnityEngine.Rendering.VolumeManager:GetVolumes(layerMask) end

---@class UnityEngine.Rendering.VolumeIsolationScope : System.ValueType
UnityEngine.Rendering.VolumeIsolationScope = {}
---@alias CS.UnityEngine.Rendering.VolumeIsolationScope UnityEngine.Rendering.VolumeIsolationScope
CS.UnityEngine.Rendering.VolumeIsolationScope = UnityEngine.Rendering.VolumeIsolationScope

---@param unused boolean
---@return UnityEngine.Rendering.VolumeIsolationScope
function UnityEngine.Rendering.VolumeIsolationScope.New(unused) end

---@class UnityEngine.Rendering.VolumeParameter : System.Object
---@field k_DebuggerDisplay string
---@field overrideState boolean
UnityEngine.Rendering.VolumeParameter = {}
---@alias CS.UnityEngine.Rendering.VolumeParameter UnityEngine.Rendering.VolumeParameter
CS.UnityEngine.Rendering.VolumeParameter = UnityEngine.Rendering.VolumeParameter

---@param type System.Type
---@return boolean
function UnityEngine.Rendering.VolumeParameter.IsObjectParameter(type) end
---@param parameter UnityEngine.Rendering.VolumeParameter
function UnityEngine.Rendering.VolumeParameter:SetValue(parameter) end
function UnityEngine.Rendering.VolumeParameter:Release() end
---@return System.Object
function UnityEngine.Rendering.VolumeParameter:Clone() end

---@class UnityEngine.Rendering.VolumeParameter : UnityEngine.Rendering.VolumeParameter
---@field value T
UnityEngine.Rendering.VolumeParameter = {}
---@alias CS.UnityEngine.Rendering.VolumeParameter UnityEngine.Rendering.VolumeParameter
CS.UnityEngine.Rendering.VolumeParameter = UnityEngine.Rendering.VolumeParameter

---@return UnityEngine.Rendering.VolumeParameter
function UnityEngine.Rendering.VolumeParameter.New() end
---@param from T
---@param to T
---@param t number
function UnityEngine.Rendering.VolumeParameter:Interp(from, to, t) end
---@param x T
function UnityEngine.Rendering.VolumeParameter:Override(x) end
---@param parameter UnityEngine.Rendering.VolumeParameter
function UnityEngine.Rendering.VolumeParameter:SetValue(parameter) end
---@return number
function UnityEngine.Rendering.VolumeParameter:GetHashCode() end
---@return string
function UnityEngine.Rendering.VolumeParameter:ToString() end
---@overload fun(self: UnityEngine.Rendering.VolumeParameter, other: UnityEngine.Rendering.VolumeParameter) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.VolumeParameter:Equals(obj) end
---@return System.Object
function UnityEngine.Rendering.VolumeParameter:Clone() end

---@class UnityEngine.Rendering.BoolParameter : UnityEngine.Rendering.VolumeParameter
---@field displayType UnityEngine.Rendering.BoolParameter.DisplayType
---@field value UnityEngine.Rendering.BoolParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Boolean]
UnityEngine.Rendering.BoolParameter = {}
---@alias CS.UnityEngine.Rendering.BoolParameter UnityEngine.Rendering.BoolParameter
CS.UnityEngine.Rendering.BoolParameter = UnityEngine.Rendering.BoolParameter

---@overload fun(value: boolean, overrideState: boolean) : UnityEngine.Rendering.BoolParameter
---@param value boolean
---@param displayType UnityEngine.Rendering.BoolParameter.DisplayType
---@param overrideState boolean
---@return UnityEngine.Rendering.BoolParameter
function UnityEngine.Rendering.BoolParameter.New(value, displayType, overrideState) end

---@class UnityEngine.Rendering.LayerMaskParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.LayerMaskParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.LayerMask]
UnityEngine.Rendering.LayerMaskParameter = {}
---@alias CS.UnityEngine.Rendering.LayerMaskParameter UnityEngine.Rendering.LayerMaskParameter
CS.UnityEngine.Rendering.LayerMaskParameter = UnityEngine.Rendering.LayerMaskParameter

---@param value UnityEngine.LayerMask
---@param overrideState boolean
---@return UnityEngine.Rendering.LayerMaskParameter
function UnityEngine.Rendering.LayerMaskParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.IntParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.IntParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Int32]
UnityEngine.Rendering.IntParameter = {}
---@alias CS.UnityEngine.Rendering.IntParameter UnityEngine.Rendering.IntParameter
CS.UnityEngine.Rendering.IntParameter = UnityEngine.Rendering.IntParameter

---@param value number
---@param overrideState boolean
---@return UnityEngine.Rendering.IntParameter
function UnityEngine.Rendering.IntParameter.New(value, overrideState) end
---@param from number
---@param to number
---@param t number
function UnityEngine.Rendering.IntParameter:Interp(from, to, t) end

---@class UnityEngine.Rendering.NoInterpIntParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpIntParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Int32]
UnityEngine.Rendering.NoInterpIntParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpIntParameter UnityEngine.Rendering.NoInterpIntParameter
CS.UnityEngine.Rendering.NoInterpIntParameter = UnityEngine.Rendering.NoInterpIntParameter

---@param value number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpIntParameter
function UnityEngine.Rendering.NoInterpIntParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.MinIntParameter : UnityEngine.Rendering.IntParameter
---@field min number
---@field value number
UnityEngine.Rendering.MinIntParameter = {}
---@alias CS.UnityEngine.Rendering.MinIntParameter UnityEngine.Rendering.MinIntParameter
CS.UnityEngine.Rendering.MinIntParameter = UnityEngine.Rendering.MinIntParameter

---@param value number
---@param min number
---@param overrideState boolean
---@return UnityEngine.Rendering.MinIntParameter
function UnityEngine.Rendering.MinIntParameter.New(value, min, overrideState) end

---@class UnityEngine.Rendering.NoInterpMinIntParameter : UnityEngine.Rendering.VolumeParameter
---@field min number
---@field value number
---@field value UnityEngine.Rendering.NoInterpMinIntParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Int32]
UnityEngine.Rendering.NoInterpMinIntParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpMinIntParameter UnityEngine.Rendering.NoInterpMinIntParameter
CS.UnityEngine.Rendering.NoInterpMinIntParameter = UnityEngine.Rendering.NoInterpMinIntParameter

---@param value number
---@param min number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpMinIntParameter
function UnityEngine.Rendering.NoInterpMinIntParameter.New(value, min, overrideState) end

---@class UnityEngine.Rendering.MaxIntParameter : UnityEngine.Rendering.IntParameter
---@field max number
---@field value number
UnityEngine.Rendering.MaxIntParameter = {}
---@alias CS.UnityEngine.Rendering.MaxIntParameter UnityEngine.Rendering.MaxIntParameter
CS.UnityEngine.Rendering.MaxIntParameter = UnityEngine.Rendering.MaxIntParameter

---@param value number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.MaxIntParameter
function UnityEngine.Rendering.MaxIntParameter.New(value, max, overrideState) end

---@class UnityEngine.Rendering.NoInterpMaxIntParameter : UnityEngine.Rendering.VolumeParameter
---@field max number
---@field value number
---@field value UnityEngine.Rendering.NoInterpMaxIntParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Int32]
UnityEngine.Rendering.NoInterpMaxIntParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpMaxIntParameter UnityEngine.Rendering.NoInterpMaxIntParameter
CS.UnityEngine.Rendering.NoInterpMaxIntParameter = UnityEngine.Rendering.NoInterpMaxIntParameter

---@param value number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpMaxIntParameter
function UnityEngine.Rendering.NoInterpMaxIntParameter.New(value, max, overrideState) end

---@class UnityEngine.Rendering.ClampedIntParameter : UnityEngine.Rendering.IntParameter
---@field min number
---@field max number
---@field value number
UnityEngine.Rendering.ClampedIntParameter = {}
---@alias CS.UnityEngine.Rendering.ClampedIntParameter UnityEngine.Rendering.ClampedIntParameter
CS.UnityEngine.Rendering.ClampedIntParameter = UnityEngine.Rendering.ClampedIntParameter

---@param value number
---@param min number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.ClampedIntParameter
function UnityEngine.Rendering.ClampedIntParameter.New(value, min, max, overrideState) end

---@class UnityEngine.Rendering.NoInterpClampedIntParameter : UnityEngine.Rendering.VolumeParameter
---@field min number
---@field max number
---@field value number
---@field value UnityEngine.Rendering.NoInterpClampedIntParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Int32]
UnityEngine.Rendering.NoInterpClampedIntParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpClampedIntParameter UnityEngine.Rendering.NoInterpClampedIntParameter
CS.UnityEngine.Rendering.NoInterpClampedIntParameter = UnityEngine.Rendering.NoInterpClampedIntParameter

---@param value number
---@param min number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpClampedIntParameter
function UnityEngine.Rendering.NoInterpClampedIntParameter.New(value, min, max, overrideState) end

---@class UnityEngine.Rendering.FloatParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.FloatParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Single]
UnityEngine.Rendering.FloatParameter = {}
---@alias CS.UnityEngine.Rendering.FloatParameter UnityEngine.Rendering.FloatParameter
CS.UnityEngine.Rendering.FloatParameter = UnityEngine.Rendering.FloatParameter

---@param value number
---@param overrideState boolean
---@return UnityEngine.Rendering.FloatParameter
function UnityEngine.Rendering.FloatParameter.New(value, overrideState) end
---@param from number
---@param to number
---@param t number
function UnityEngine.Rendering.FloatParameter:Interp(from, to, t) end

---@class UnityEngine.Rendering.NoInterpFloatParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpFloatParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Single]
UnityEngine.Rendering.NoInterpFloatParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpFloatParameter UnityEngine.Rendering.NoInterpFloatParameter
CS.UnityEngine.Rendering.NoInterpFloatParameter = UnityEngine.Rendering.NoInterpFloatParameter

---@param value number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpFloatParameter
function UnityEngine.Rendering.NoInterpFloatParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.MinFloatParameter : UnityEngine.Rendering.FloatParameter
---@field min number
---@field value number
UnityEngine.Rendering.MinFloatParameter = {}
---@alias CS.UnityEngine.Rendering.MinFloatParameter UnityEngine.Rendering.MinFloatParameter
CS.UnityEngine.Rendering.MinFloatParameter = UnityEngine.Rendering.MinFloatParameter

---@param value number
---@param min number
---@param overrideState boolean
---@return UnityEngine.Rendering.MinFloatParameter
function UnityEngine.Rendering.MinFloatParameter.New(value, min, overrideState) end

---@class UnityEngine.Rendering.NoInterpMinFloatParameter : UnityEngine.Rendering.VolumeParameter
---@field min number
---@field value number
---@field value UnityEngine.Rendering.NoInterpMinFloatParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Single]
UnityEngine.Rendering.NoInterpMinFloatParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpMinFloatParameter UnityEngine.Rendering.NoInterpMinFloatParameter
CS.UnityEngine.Rendering.NoInterpMinFloatParameter = UnityEngine.Rendering.NoInterpMinFloatParameter

---@param value number
---@param min number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpMinFloatParameter
function UnityEngine.Rendering.NoInterpMinFloatParameter.New(value, min, overrideState) end

---@class UnityEngine.Rendering.MaxFloatParameter : UnityEngine.Rendering.FloatParameter
---@field max number
---@field value number
UnityEngine.Rendering.MaxFloatParameter = {}
---@alias CS.UnityEngine.Rendering.MaxFloatParameter UnityEngine.Rendering.MaxFloatParameter
CS.UnityEngine.Rendering.MaxFloatParameter = UnityEngine.Rendering.MaxFloatParameter

---@param value number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.MaxFloatParameter
function UnityEngine.Rendering.MaxFloatParameter.New(value, max, overrideState) end

---@class UnityEngine.Rendering.NoInterpMaxFloatParameter : UnityEngine.Rendering.VolumeParameter
---@field max number
---@field value number
---@field value UnityEngine.Rendering.NoInterpMaxFloatParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Single]
UnityEngine.Rendering.NoInterpMaxFloatParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpMaxFloatParameter UnityEngine.Rendering.NoInterpMaxFloatParameter
CS.UnityEngine.Rendering.NoInterpMaxFloatParameter = UnityEngine.Rendering.NoInterpMaxFloatParameter

---@param value number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpMaxFloatParameter
function UnityEngine.Rendering.NoInterpMaxFloatParameter.New(value, max, overrideState) end

---@class UnityEngine.Rendering.ClampedFloatParameter : UnityEngine.Rendering.FloatParameter
---@field min number
---@field max number
---@field value number
UnityEngine.Rendering.ClampedFloatParameter = {}
---@alias CS.UnityEngine.Rendering.ClampedFloatParameter UnityEngine.Rendering.ClampedFloatParameter
CS.UnityEngine.Rendering.ClampedFloatParameter = UnityEngine.Rendering.ClampedFloatParameter

---@param value number
---@param min number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.ClampedFloatParameter
function UnityEngine.Rendering.ClampedFloatParameter.New(value, min, max, overrideState) end

---@class UnityEngine.Rendering.NoInterpClampedFloatParameter : UnityEngine.Rendering.VolumeParameter
---@field min number
---@field max number
---@field value number
---@field value UnityEngine.Rendering.NoInterpClampedFloatParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[System.Single]
UnityEngine.Rendering.NoInterpClampedFloatParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpClampedFloatParameter UnityEngine.Rendering.NoInterpClampedFloatParameter
CS.UnityEngine.Rendering.NoInterpClampedFloatParameter = UnityEngine.Rendering.NoInterpClampedFloatParameter

---@param value number
---@param min number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpClampedFloatParameter
function UnityEngine.Rendering.NoInterpClampedFloatParameter.New(value, min, max, overrideState) end

---@class UnityEngine.Rendering.FloatRangeParameter : UnityEngine.Rendering.VolumeParameter
---@field min number
---@field max number
---@field value UnityEngine.Vector2
---@field value UnityEngine.Rendering.FloatRangeParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector2]
UnityEngine.Rendering.FloatRangeParameter = {}
---@alias CS.UnityEngine.Rendering.FloatRangeParameter UnityEngine.Rendering.FloatRangeParameter
CS.UnityEngine.Rendering.FloatRangeParameter = UnityEngine.Rendering.FloatRangeParameter

---@param value UnityEngine.Vector2
---@param min number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.FloatRangeParameter
function UnityEngine.Rendering.FloatRangeParameter.New(value, min, max, overrideState) end
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@param t number
function UnityEngine.Rendering.FloatRangeParameter:Interp(from, to, t) end

---@class UnityEngine.Rendering.NoInterpFloatRangeParameter : UnityEngine.Rendering.VolumeParameter
---@field min number
---@field max number
---@field value UnityEngine.Vector2
---@field value UnityEngine.Rendering.NoInterpFloatRangeParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector2]
UnityEngine.Rendering.NoInterpFloatRangeParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpFloatRangeParameter UnityEngine.Rendering.NoInterpFloatRangeParameter
CS.UnityEngine.Rendering.NoInterpFloatRangeParameter = UnityEngine.Rendering.NoInterpFloatRangeParameter

---@param value UnityEngine.Vector2
---@param min number
---@param max number
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpFloatRangeParameter
function UnityEngine.Rendering.NoInterpFloatRangeParameter.New(value, min, max, overrideState) end

---@class UnityEngine.Rendering.ColorParameter : UnityEngine.Rendering.VolumeParameter
---@field hdr boolean
---@field showAlpha boolean
---@field showEyeDropper boolean
---@field value UnityEngine.Rendering.ColorParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Color]
UnityEngine.Rendering.ColorParameter = {}
---@alias CS.UnityEngine.Rendering.ColorParameter UnityEngine.Rendering.ColorParameter
CS.UnityEngine.Rendering.ColorParameter = UnityEngine.Rendering.ColorParameter

---@overload fun(value: UnityEngine.Color, overrideState: boolean) : UnityEngine.Rendering.ColorParameter
---@param value UnityEngine.Color
---@param hdr boolean
---@param showAlpha boolean
---@param showEyeDropper boolean
---@param overrideState boolean
---@return UnityEngine.Rendering.ColorParameter
function UnityEngine.Rendering.ColorParameter.New(value, hdr, showAlpha, showEyeDropper, overrideState) end
---@param from UnityEngine.Color
---@param to UnityEngine.Color
---@param t number
function UnityEngine.Rendering.ColorParameter:Interp(from, to, t) end

---@class UnityEngine.Rendering.NoInterpColorParameter : UnityEngine.Rendering.VolumeParameter
---@field hdr boolean
---@field showAlpha boolean
---@field showEyeDropper boolean
---@field value UnityEngine.Rendering.NoInterpColorParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Color]
UnityEngine.Rendering.NoInterpColorParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpColorParameter UnityEngine.Rendering.NoInterpColorParameter
CS.UnityEngine.Rendering.NoInterpColorParameter = UnityEngine.Rendering.NoInterpColorParameter

---@overload fun(value: UnityEngine.Color, overrideState: boolean) : UnityEngine.Rendering.NoInterpColorParameter
---@param value UnityEngine.Color
---@param hdr boolean
---@param showAlpha boolean
---@param showEyeDropper boolean
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpColorParameter
function UnityEngine.Rendering.NoInterpColorParameter.New(value, hdr, showAlpha, showEyeDropper, overrideState) end

---@class UnityEngine.Rendering.Vector2Parameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Vector2Parameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector2]
UnityEngine.Rendering.Vector2Parameter = {}
---@alias CS.UnityEngine.Rendering.Vector2Parameter UnityEngine.Rendering.Vector2Parameter
CS.UnityEngine.Rendering.Vector2Parameter = UnityEngine.Rendering.Vector2Parameter

---@param value UnityEngine.Vector2
---@param overrideState boolean
---@return UnityEngine.Rendering.Vector2Parameter
function UnityEngine.Rendering.Vector2Parameter.New(value, overrideState) end
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@param t number
function UnityEngine.Rendering.Vector2Parameter:Interp(from, to, t) end

---@class UnityEngine.Rendering.NoInterpVector2Parameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpVector2Parameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector2]
UnityEngine.Rendering.NoInterpVector2Parameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpVector2Parameter UnityEngine.Rendering.NoInterpVector2Parameter
CS.UnityEngine.Rendering.NoInterpVector2Parameter = UnityEngine.Rendering.NoInterpVector2Parameter

---@param value UnityEngine.Vector2
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpVector2Parameter
function UnityEngine.Rendering.NoInterpVector2Parameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Vector3Parameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Vector3Parameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector3]
UnityEngine.Rendering.Vector3Parameter = {}
---@alias CS.UnityEngine.Rendering.Vector3Parameter UnityEngine.Rendering.Vector3Parameter
CS.UnityEngine.Rendering.Vector3Parameter = UnityEngine.Rendering.Vector3Parameter

---@param value UnityEngine.Vector3
---@param overrideState boolean
---@return UnityEngine.Rendering.Vector3Parameter
function UnityEngine.Rendering.Vector3Parameter.New(value, overrideState) end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param t number
function UnityEngine.Rendering.Vector3Parameter:Interp(from, to, t) end

---@class UnityEngine.Rendering.NoInterpVector3Parameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpVector3Parameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector3]
UnityEngine.Rendering.NoInterpVector3Parameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpVector3Parameter UnityEngine.Rendering.NoInterpVector3Parameter
CS.UnityEngine.Rendering.NoInterpVector3Parameter = UnityEngine.Rendering.NoInterpVector3Parameter

---@param value UnityEngine.Vector3
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpVector3Parameter
function UnityEngine.Rendering.NoInterpVector3Parameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Vector4Parameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Vector4Parameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector4]
UnityEngine.Rendering.Vector4Parameter = {}
---@alias CS.UnityEngine.Rendering.Vector4Parameter UnityEngine.Rendering.Vector4Parameter
CS.UnityEngine.Rendering.Vector4Parameter = UnityEngine.Rendering.Vector4Parameter

---@param value UnityEngine.Vector4
---@param overrideState boolean
---@return UnityEngine.Rendering.Vector4Parameter
function UnityEngine.Rendering.Vector4Parameter.New(value, overrideState) end
---@param from UnityEngine.Vector4
---@param to UnityEngine.Vector4
---@param t number
function UnityEngine.Rendering.Vector4Parameter:Interp(from, to, t) end

---@class UnityEngine.Rendering.NoInterpVector4Parameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpVector4Parameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Vector4]
UnityEngine.Rendering.NoInterpVector4Parameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpVector4Parameter UnityEngine.Rendering.NoInterpVector4Parameter
CS.UnityEngine.Rendering.NoInterpVector4Parameter = UnityEngine.Rendering.NoInterpVector4Parameter

---@param value UnityEngine.Vector4
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpVector4Parameter
function UnityEngine.Rendering.NoInterpVector4Parameter.New(value, overrideState) end

---@class UnityEngine.Rendering.TextureParameter : UnityEngine.Rendering.VolumeParameter
---@field dimension UnityEngine.Rendering.TextureDimension
---@field value UnityEngine.Rendering.TextureParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Texture]
UnityEngine.Rendering.TextureParameter = {}
---@alias CS.UnityEngine.Rendering.TextureParameter UnityEngine.Rendering.TextureParameter
CS.UnityEngine.Rendering.TextureParameter = UnityEngine.Rendering.TextureParameter

---@overload fun(value: UnityEngine.Texture, overrideState: boolean) : UnityEngine.Rendering.TextureParameter
---@param value UnityEngine.Texture
---@param dimension UnityEngine.Rendering.TextureDimension
---@param overrideState boolean
---@return UnityEngine.Rendering.TextureParameter
function UnityEngine.Rendering.TextureParameter.New(value, dimension, overrideState) end
---@return number
function UnityEngine.Rendering.TextureParameter:GetHashCode() end

---@class UnityEngine.Rendering.NoInterpTextureParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpTextureParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Texture]
UnityEngine.Rendering.NoInterpTextureParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpTextureParameter UnityEngine.Rendering.NoInterpTextureParameter
CS.UnityEngine.Rendering.NoInterpTextureParameter = UnityEngine.Rendering.NoInterpTextureParameter

---@param value UnityEngine.Texture
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpTextureParameter
function UnityEngine.Rendering.NoInterpTextureParameter.New(value, overrideState) end
---@return number
function UnityEngine.Rendering.NoInterpTextureParameter:GetHashCode() end

---@class UnityEngine.Rendering.Texture2DParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Texture2DParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Texture]
UnityEngine.Rendering.Texture2DParameter = {}
---@alias CS.UnityEngine.Rendering.Texture2DParameter UnityEngine.Rendering.Texture2DParameter
CS.UnityEngine.Rendering.Texture2DParameter = UnityEngine.Rendering.Texture2DParameter

---@param value UnityEngine.Texture
---@param overrideState boolean
---@return UnityEngine.Rendering.Texture2DParameter
function UnityEngine.Rendering.Texture2DParameter.New(value, overrideState) end
---@return number
function UnityEngine.Rendering.Texture2DParameter:GetHashCode() end

---@class UnityEngine.Rendering.Texture3DParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Texture3DParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Texture]
UnityEngine.Rendering.Texture3DParameter = {}
---@alias CS.UnityEngine.Rendering.Texture3DParameter UnityEngine.Rendering.Texture3DParameter
CS.UnityEngine.Rendering.Texture3DParameter = UnityEngine.Rendering.Texture3DParameter

---@param value UnityEngine.Texture
---@param overrideState boolean
---@return UnityEngine.Rendering.Texture3DParameter
function UnityEngine.Rendering.Texture3DParameter.New(value, overrideState) end
---@return number
function UnityEngine.Rendering.Texture3DParameter:GetHashCode() end

---@class UnityEngine.Rendering.RenderTextureParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.RenderTextureParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.RenderTexture]
UnityEngine.Rendering.RenderTextureParameter = {}
---@alias CS.UnityEngine.Rendering.RenderTextureParameter UnityEngine.Rendering.RenderTextureParameter
CS.UnityEngine.Rendering.RenderTextureParameter = UnityEngine.Rendering.RenderTextureParameter

---@param value UnityEngine.RenderTexture
---@param overrideState boolean
---@return UnityEngine.Rendering.RenderTextureParameter
function UnityEngine.Rendering.RenderTextureParameter.New(value, overrideState) end
---@return number
function UnityEngine.Rendering.RenderTextureParameter:GetHashCode() end

---@class UnityEngine.Rendering.NoInterpRenderTextureParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpRenderTextureParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.RenderTexture]
UnityEngine.Rendering.NoInterpRenderTextureParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpRenderTextureParameter UnityEngine.Rendering.NoInterpRenderTextureParameter
CS.UnityEngine.Rendering.NoInterpRenderTextureParameter = UnityEngine.Rendering.NoInterpRenderTextureParameter

---@param value UnityEngine.RenderTexture
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpRenderTextureParameter
function UnityEngine.Rendering.NoInterpRenderTextureParameter.New(value, overrideState) end
---@return number
function UnityEngine.Rendering.NoInterpRenderTextureParameter:GetHashCode() end

---@class UnityEngine.Rendering.CubemapParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.CubemapParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Texture]
UnityEngine.Rendering.CubemapParameter = {}
---@alias CS.UnityEngine.Rendering.CubemapParameter UnityEngine.Rendering.CubemapParameter
CS.UnityEngine.Rendering.CubemapParameter = UnityEngine.Rendering.CubemapParameter

---@param value UnityEngine.Texture
---@param overrideState boolean
---@return UnityEngine.Rendering.CubemapParameter
function UnityEngine.Rendering.CubemapParameter.New(value, overrideState) end
---@return number
function UnityEngine.Rendering.CubemapParameter:GetHashCode() end

---@class UnityEngine.Rendering.NoInterpCubemapParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.NoInterpCubemapParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Cubemap]
UnityEngine.Rendering.NoInterpCubemapParameter = {}
---@alias CS.UnityEngine.Rendering.NoInterpCubemapParameter UnityEngine.Rendering.NoInterpCubemapParameter
CS.UnityEngine.Rendering.NoInterpCubemapParameter = UnityEngine.Rendering.NoInterpCubemapParameter

---@param value UnityEngine.Cubemap
---@param overrideState boolean
---@return UnityEngine.Rendering.NoInterpCubemapParameter
function UnityEngine.Rendering.NoInterpCubemapParameter.New(value, overrideState) end
---@return number
function UnityEngine.Rendering.NoInterpCubemapParameter:GetHashCode() end

---@class UnityEngine.Rendering.ObjectParameter : UnityEngine.Rendering.VolumeParameter[T]
---@field overrideState boolean
---@field value T
UnityEngine.Rendering.ObjectParameter = {}
---@alias CS.UnityEngine.Rendering.ObjectParameter UnityEngine.Rendering.ObjectParameter
CS.UnityEngine.Rendering.ObjectParameter = UnityEngine.Rendering.ObjectParameter

---@param value T
---@return UnityEngine.Rendering.ObjectParameter
function UnityEngine.Rendering.ObjectParameter.New(value) end

---@class UnityEngine.Rendering.AnimationCurveParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.AnimationCurveParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.AnimationCurve]
UnityEngine.Rendering.AnimationCurveParameter = {}
---@alias CS.UnityEngine.Rendering.AnimationCurveParameter UnityEngine.Rendering.AnimationCurveParameter
CS.UnityEngine.Rendering.AnimationCurveParameter = UnityEngine.Rendering.AnimationCurveParameter

---@param value UnityEngine.AnimationCurve
---@param overrideState boolean
---@return UnityEngine.Rendering.AnimationCurveParameter
function UnityEngine.Rendering.AnimationCurveParameter.New(value, overrideState) end
---@param lhsCurve UnityEngine.AnimationCurve
---@param rhsCurve UnityEngine.AnimationCurve
---@param t number
function UnityEngine.Rendering.AnimationCurveParameter:Interp(lhsCurve, rhsCurve, t) end
---@param parameter UnityEngine.Rendering.VolumeParameter
function UnityEngine.Rendering.AnimationCurveParameter:SetValue(parameter) end
---@return System.Object
function UnityEngine.Rendering.AnimationCurveParameter:Clone() end
---@return number
function UnityEngine.Rendering.AnimationCurveParameter:GetHashCode() end

---@class UnityEngine.Rendering.MaterialParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.MaterialParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Material]
UnityEngine.Rendering.MaterialParameter = {}
---@alias CS.UnityEngine.Rendering.MaterialParameter UnityEngine.Rendering.MaterialParameter
CS.UnityEngine.Rendering.MaterialParameter = UnityEngine.Rendering.MaterialParameter

---@param value UnityEngine.Material
---@param overrideState boolean
---@return UnityEngine.Rendering.MaterialParameter
function UnityEngine.Rendering.MaterialParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.VolumeProfile : UnityEngine.ScriptableObject
---@field components System.Collections.Generic.List
---@field isDirty boolean
UnityEngine.Rendering.VolumeProfile = {}
---@alias CS.UnityEngine.Rendering.VolumeProfile UnityEngine.Rendering.VolumeProfile
CS.UnityEngine.Rendering.VolumeProfile = UnityEngine.Rendering.VolumeProfile

---@return UnityEngine.Rendering.VolumeProfile
function UnityEngine.Rendering.VolumeProfile.New() end
function UnityEngine.Rendering.VolumeProfile:Reset() end
---@param type System.Type
---@param overrides boolean
---@return UnityEngine.Rendering.VolumeComponent
function UnityEngine.Rendering.VolumeProfile:Add(type, overrides) end
---@param type System.Type
function UnityEngine.Rendering.VolumeProfile:Remove(type) end
---@param type System.Type
---@return boolean
function UnityEngine.Rendering.VolumeProfile:Has(type) end
---@param type System.Type
---@return boolean
function UnityEngine.Rendering.VolumeProfile:HasSubclassOf(type) end
---@return number
function UnityEngine.Rendering.VolumeProfile:GetHashCode() end

---@class UnityEngine.Rendering.VolumeStack : System.Object
UnityEngine.Rendering.VolumeStack = {}
---@alias CS.UnityEngine.Rendering.VolumeStack UnityEngine.Rendering.VolumeStack
CS.UnityEngine.Rendering.VolumeStack = UnityEngine.Rendering.VolumeStack

---@param type System.Type
---@return UnityEngine.Rendering.VolumeComponent
function UnityEngine.Rendering.VolumeStack:GetComponent(type) end
function UnityEngine.Rendering.VolumeStack:Dispose() end

---@class UnityEngine.Rendering.XRGraphicsAutomatedTests : System.Object
---@field running boolean
---@field enabled boolean
UnityEngine.Rendering.XRGraphicsAutomatedTests = {}
---@alias CS.UnityEngine.Rendering.XRGraphicsAutomatedTests UnityEngine.Rendering.XRGraphicsAutomatedTests
CS.UnityEngine.Rendering.XRGraphicsAutomatedTests = UnityEngine.Rendering.XRGraphicsAutomatedTests


---@class UnityEngine.Rendering.LookDev.IDataProvider
---@field supportedDebugModes System.Collections.Generic.IEnumerable
UnityEngine.Rendering.LookDev.IDataProvider = {}
---@alias CS.UnityEngine.Rendering.LookDev.IDataProvider UnityEngine.Rendering.LookDev.IDataProvider
CS.UnityEngine.Rendering.LookDev.IDataProvider = UnityEngine.Rendering.LookDev.IDataProvider

---@param stage UnityEngine.Rendering.LookDev.StageRuntimeInterface
function UnityEngine.Rendering.LookDev.IDataProvider:FirstInitScene(stage) end
---@param camera UnityEngine.Camera
---@param sky UnityEngine.Rendering.LookDev.Sky
---@param stage UnityEngine.Rendering.LookDev.StageRuntimeInterface
function UnityEngine.Rendering.LookDev.IDataProvider:UpdateSky(camera, sky, stage) end
---@param debugIndex number
function UnityEngine.Rendering.LookDev.IDataProvider:UpdateDebugMode(debugIndex) end
---@param ref_output UnityEngine.RenderTexture
---@param stage UnityEngine.Rendering.LookDev.StageRuntimeInterface
---@return ,UnityEngine.RenderTexture
function UnityEngine.Rendering.LookDev.IDataProvider:GetShadowMask(ref_output, stage) end
---@param stage UnityEngine.Rendering.LookDev.StageRuntimeInterface
function UnityEngine.Rendering.LookDev.IDataProvider:OnBeginRendering(stage) end
---@param stage UnityEngine.Rendering.LookDev.StageRuntimeInterface
function UnityEngine.Rendering.LookDev.IDataProvider:OnEndRendering(stage) end
---@param SRI UnityEngine.Rendering.LookDev.StageRuntimeInterface
function UnityEngine.Rendering.LookDev.IDataProvider:Cleanup(SRI) end

---@class UnityEngine.Rendering.LookDev.Sky : System.ValueType
---@field cubemap UnityEngine.Cubemap
---@field longitudeOffset number
---@field exposure number
UnityEngine.Rendering.LookDev.Sky = {}
---@alias CS.UnityEngine.Rendering.LookDev.Sky UnityEngine.Rendering.LookDev.Sky
CS.UnityEngine.Rendering.LookDev.Sky = UnityEngine.Rendering.LookDev.Sky


---@class UnityEngine.Rendering.LookDev.StageRuntimeInterface : System.Object
---@field SRPData System.Object
---@field camera UnityEngine.Camera
---@field sunLight UnityEngine.Light
UnityEngine.Rendering.LookDev.StageRuntimeInterface = {}
---@alias CS.UnityEngine.Rendering.LookDev.StageRuntimeInterface UnityEngine.Rendering.LookDev.StageRuntimeInterface
CS.UnityEngine.Rendering.LookDev.StageRuntimeInterface = UnityEngine.Rendering.LookDev.StageRuntimeInterface

---@param AddGameObject System.Func
---@param GetCamera System.Func
---@param GetSunLight System.Func
---@return UnityEngine.Rendering.LookDev.StageRuntimeInterface
function UnityEngine.Rendering.LookDev.StageRuntimeInterface.New(AddGameObject, GetCamera, GetSunLight) end
---@param persistent boolean
---@return UnityEngine.GameObject
function UnityEngine.Rendering.LookDev.StageRuntimeInterface:AddGameObject(persistent) end

---@class UnityEngine.Rendering.UI.DebugUIHandlerBitField : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.Rendering.UI.UIFoldout
---@field toggles System.Collections.Generic.List
UnityEngine.Rendering.UI.DebugUIHandlerBitField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerBitField UnityEngine.Rendering.UI.DebugUIHandlerBitField
CS.UnityEngine.Rendering.UI.DebugUIHandlerBitField = UnityEngine.Rendering.UI.DebugUIHandlerBitField

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerBitField:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerBitField:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerBitField:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerBitField:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerBitField:OnAction() end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerBitField:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerButton : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerButton = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerButton UnityEngine.Rendering.UI.DebugUIHandlerButton
CS.UnityEngine.Rendering.UI.DebugUIHandlerButton = UnityEngine.Rendering.UI.DebugUIHandlerButton

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerButton:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerButton:OnDeselection() end
function UnityEngine.Rendering.UI.DebugUIHandlerButton:OnAction() end

---@class UnityEngine.Rendering.UI.DebugUIPrefabBundle : System.Object
---@field type string
---@field prefab UnityEngine.RectTransform
UnityEngine.Rendering.UI.DebugUIPrefabBundle = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIPrefabBundle UnityEngine.Rendering.UI.DebugUIPrefabBundle
CS.UnityEngine.Rendering.UI.DebugUIPrefabBundle = UnityEngine.Rendering.UI.DebugUIPrefabBundle

---@return UnityEngine.Rendering.UI.DebugUIPrefabBundle
function UnityEngine.Rendering.UI.DebugUIPrefabBundle.New() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerCanvas : UnityEngine.MonoBehaviour
---@field panelPrefab UnityEngine.Transform
---@field prefabs System.Collections.Generic.List
UnityEngine.Rendering.UI.DebugUIHandlerCanvas = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerCanvas UnityEngine.Rendering.UI.DebugUIHandlerCanvas
CS.UnityEngine.Rendering.UI.DebugUIHandlerCanvas = UnityEngine.Rendering.UI.DebugUIHandlerCanvas


---@class UnityEngine.Rendering.UI.DebugUIHandlerColor : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.Rendering.UI.UIFoldout
---@field colorImage UnityEngine.UI.Image
---@field fieldR UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldG UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldB UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldA UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
UnityEngine.Rendering.UI.DebugUIHandlerColor = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerColor UnityEngine.Rendering.UI.DebugUIHandlerColor
CS.UnityEngine.Rendering.UI.DebugUIHandlerColor = UnityEngine.Rendering.UI.DebugUIHandlerColor

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerColor:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerColor:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerColor:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerColor:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerColor:OnAction() end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerColor:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerContainer : UnityEngine.MonoBehaviour
---@field contentHolder UnityEngine.RectTransform
UnityEngine.Rendering.UI.DebugUIHandlerContainer = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerContainer UnityEngine.Rendering.UI.DebugUIHandlerContainer
CS.UnityEngine.Rendering.UI.DebugUIHandlerContainer = UnityEngine.Rendering.UI.DebugUIHandlerContainer


---@class UnityEngine.Rendering.UI.DebugUIHandlerEnumField : UnityEngine.Rendering.UI.DebugUIHandlerField
UnityEngine.Rendering.UI.DebugUIHandlerEnumField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerEnumField UnityEngine.Rendering.UI.DebugUIHandlerEnumField
CS.UnityEngine.Rendering.UI.DebugUIHandlerEnumField = UnityEngine.Rendering.UI.DebugUIHandlerEnumField

---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerEnumField:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerEnumField:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerEnumField:UpdateValueLabel() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerEnumHistory : UnityEngine.Rendering.UI.DebugUIHandlerEnumField
UnityEngine.Rendering.UI.DebugUIHandlerEnumHistory = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerEnumHistory UnityEngine.Rendering.UI.DebugUIHandlerEnumHistory
CS.UnityEngine.Rendering.UI.DebugUIHandlerEnumHistory = UnityEngine.Rendering.UI.DebugUIHandlerEnumHistory

function UnityEngine.Rendering.UI.DebugUIHandlerEnumHistory:UpdateValueLabel() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerField : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nextButtonText UnityEngine.UI.Text
---@field previousButtonText UnityEngine.UI.Text
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerField UnityEngine.Rendering.UI.DebugUIHandlerField
CS.UnityEngine.Rendering.UI.DebugUIHandlerField = UnityEngine.Rendering.UI.DebugUIHandlerField

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerField:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerField:OnDeselection() end
function UnityEngine.Rendering.UI.DebugUIHandlerField:OnAction() end
function UnityEngine.Rendering.UI.DebugUIHandlerField:UpdateValueLabel() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerFloatField : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerFloatField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerFloatField UnityEngine.Rendering.UI.DebugUIHandlerFloatField
CS.UnityEngine.Rendering.UI.DebugUIHandlerFloatField = UnityEngine.Rendering.UI.DebugUIHandlerFloatField

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerFloatField:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerFloatField:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerFloatField:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerFloatField:OnDecrement(fast) end

---@class UnityEngine.Rendering.UI.DebugUIHandlerFoldout : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.Rendering.UI.UIFoldout
UnityEngine.Rendering.UI.DebugUIHandlerFoldout = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerFoldout UnityEngine.Rendering.UI.DebugUIHandlerFoldout
CS.UnityEngine.Rendering.UI.DebugUIHandlerFoldout = UnityEngine.Rendering.UI.DebugUIHandlerFoldout

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerFoldout:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerFoldout:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerFoldout:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerFoldout:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerFoldout:OnAction() end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerFoldout:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerGroup : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field header UnityEngine.Transform
UnityEngine.Rendering.UI.DebugUIHandlerGroup = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerGroup UnityEngine.Rendering.UI.DebugUIHandlerGroup
CS.UnityEngine.Rendering.UI.DebugUIHandlerGroup = UnityEngine.Rendering.UI.DebugUIHandlerGroup

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerGroup:OnSelection(fromNext, previous) end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerGroup:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerHBox : UnityEngine.Rendering.UI.DebugUIHandlerWidget
UnityEngine.Rendering.UI.DebugUIHandlerHBox = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerHBox UnityEngine.Rendering.UI.DebugUIHandlerHBox
CS.UnityEngine.Rendering.UI.DebugUIHandlerHBox = UnityEngine.Rendering.UI.DebugUIHandlerHBox

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerHBox:OnSelection(fromNext, previous) end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerHBox:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
---@field getter System.Func
---@field setter System.Action
---@field incStepGetter System.Func
---@field incStepMultGetter System.Func
---@field decimalsGetter System.Func
UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
CS.UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField = UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField

function UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField:Init() end
---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField:OnDecrement(fast) end

---@class UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.UI.Toggle
---@field checkmarkImage UnityEngine.UI.Image
---@field getter System.Func
---@field setter System.Action
UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle
CS.UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle = UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle

function UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle:Init() end
---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle:OnDeselection() end
function UnityEngine.Rendering.UI.DebugUIHandlerIndirectToggle:OnAction() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerIntField : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerIntField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerIntField UnityEngine.Rendering.UI.DebugUIHandlerIntField
CS.UnityEngine.Rendering.UI.DebugUIHandlerIntField = UnityEngine.Rendering.UI.DebugUIHandlerIntField

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerIntField:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerIntField:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerIntField:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerIntField:OnDecrement(fast) end

---@class UnityEngine.Rendering.UI.DebugUIHandlerMessageBox : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerMessageBox = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerMessageBox UnityEngine.Rendering.UI.DebugUIHandlerMessageBox
CS.UnityEngine.Rendering.UI.DebugUIHandlerMessageBox = UnityEngine.Rendering.UI.DebugUIHandlerMessageBox

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerMessageBox:OnSelection(fromNext, previous) end

---@class UnityEngine.Rendering.UI.DebugUIHandlerObject : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerObject = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerObject UnityEngine.Rendering.UI.DebugUIHandlerObject
CS.UnityEngine.Rendering.UI.DebugUIHandlerObject = UnityEngine.Rendering.UI.DebugUIHandlerObject

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerObject:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerObject:OnDeselection() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerObjectList : UnityEngine.Rendering.UI.DebugUIHandlerField
UnityEngine.Rendering.UI.DebugUIHandlerObjectList = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerObjectList UnityEngine.Rendering.UI.DebugUIHandlerObjectList
CS.UnityEngine.Rendering.UI.DebugUIHandlerObjectList = UnityEngine.Rendering.UI.DebugUIHandlerObjectList

---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerObjectList:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerObjectList:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerObjectList:UpdateValueLabel() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField : UnityEngine.Rendering.UI.DebugUIHandlerField
UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField
CS.UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField = UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField

---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerObjectPopupField:UpdateValueLabel() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerPanel : UnityEngine.MonoBehaviour
---@field nameLabel UnityEngine.UI.Text
---@field scrollRect UnityEngine.UI.ScrollRect
---@field viewport UnityEngine.RectTransform
---@field Canvas UnityEngine.Rendering.UI.DebugUIHandlerCanvas
UnityEngine.Rendering.UI.DebugUIHandlerPanel = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerPanel UnityEngine.Rendering.UI.DebugUIHandlerPanel
CS.UnityEngine.Rendering.UI.DebugUIHandlerPanel = UnityEngine.Rendering.UI.DebugUIHandlerPanel

function UnityEngine.Rendering.UI.DebugUIHandlerPanel:SelectNextItem() end
function UnityEngine.Rendering.UI.DebugUIHandlerPanel:SelectPreviousItem() end
function UnityEngine.Rendering.UI.DebugUIHandlerPanel:OnScrollbarClicked() end
function UnityEngine.Rendering.UI.DebugUIHandlerPanel:ResetDebugManager() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerPersistentCanvas : UnityEngine.MonoBehaviour
---@field panel UnityEngine.RectTransform
---@field valuePrefab UnityEngine.RectTransform
UnityEngine.Rendering.UI.DebugUIHandlerPersistentCanvas = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerPersistentCanvas UnityEngine.Rendering.UI.DebugUIHandlerPersistentCanvas
CS.UnityEngine.Rendering.UI.DebugUIHandlerPersistentCanvas = UnityEngine.Rendering.UI.DebugUIHandlerPersistentCanvas


---@class UnityEngine.Rendering.UI.DebugUIHandlerProgressBar : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
---@field progressBarRect UnityEngine.RectTransform
UnityEngine.Rendering.UI.DebugUIHandlerProgressBar = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerProgressBar UnityEngine.Rendering.UI.DebugUIHandlerProgressBar
CS.UnityEngine.Rendering.UI.DebugUIHandlerProgressBar = UnityEngine.Rendering.UI.DebugUIHandlerProgressBar

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerProgressBar:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerProgressBar:OnDeselection() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerRow : UnityEngine.Rendering.UI.DebugUIHandlerFoldout
UnityEngine.Rendering.UI.DebugUIHandlerRow = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerRow UnityEngine.Rendering.UI.DebugUIHandlerRow
CS.UnityEngine.Rendering.UI.DebugUIHandlerRow = UnityEngine.Rendering.UI.DebugUIHandlerRow


---@class UnityEngine.Rendering.UI.DebugUIHandlerToggle : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.UI.Toggle
---@field checkmarkImage UnityEngine.UI.Image
UnityEngine.Rendering.UI.DebugUIHandlerToggle = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerToggle UnityEngine.Rendering.UI.DebugUIHandlerToggle
CS.UnityEngine.Rendering.UI.DebugUIHandlerToggle = UnityEngine.Rendering.UI.DebugUIHandlerToggle

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerToggle:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerToggle:OnDeselection() end
function UnityEngine.Rendering.UI.DebugUIHandlerToggle:OnAction() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerToggleHistory : UnityEngine.Rendering.UI.DebugUIHandlerToggle
UnityEngine.Rendering.UI.DebugUIHandlerToggleHistory = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerToggleHistory UnityEngine.Rendering.UI.DebugUIHandlerToggleHistory
CS.UnityEngine.Rendering.UI.DebugUIHandlerToggleHistory = UnityEngine.Rendering.UI.DebugUIHandlerToggleHistory


---@class UnityEngine.Rendering.UI.DebugUIHandlerUIntField : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerUIntField = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerUIntField UnityEngine.Rendering.UI.DebugUIHandlerUIntField
CS.UnityEngine.Rendering.UI.DebugUIHandlerUIntField = UnityEngine.Rendering.UI.DebugUIHandlerUIntField

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerUIntField:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerUIntField:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerUIntField:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerUIntField:OnDecrement(fast) end

---@class UnityEngine.Rendering.UI.DebugUIHandlerValue : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerValue = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerValue UnityEngine.Rendering.UI.DebugUIHandlerValue
CS.UnityEngine.Rendering.UI.DebugUIHandlerValue = UnityEngine.Rendering.UI.DebugUIHandlerValue

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerValue:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerValue:OnDeselection() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerValueTuple : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueLabel UnityEngine.UI.Text
UnityEngine.Rendering.UI.DebugUIHandlerValueTuple = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerValueTuple UnityEngine.Rendering.UI.DebugUIHandlerValueTuple
CS.UnityEngine.Rendering.UI.DebugUIHandlerValueTuple = UnityEngine.Rendering.UI.DebugUIHandlerValueTuple

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerValueTuple:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerValueTuple:OnDeselection() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerVBox : UnityEngine.Rendering.UI.DebugUIHandlerWidget
UnityEngine.Rendering.UI.DebugUIHandlerVBox = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerVBox UnityEngine.Rendering.UI.DebugUIHandlerVBox
CS.UnityEngine.Rendering.UI.DebugUIHandlerVBox = UnityEngine.Rendering.UI.DebugUIHandlerVBox

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVBox:OnSelection(fromNext, previous) end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerVBox:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerVector2 : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.Rendering.UI.UIFoldout
---@field fieldX UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldY UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
UnityEngine.Rendering.UI.DebugUIHandlerVector2 = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerVector2 UnityEngine.Rendering.UI.DebugUIHandlerVector2
CS.UnityEngine.Rendering.UI.DebugUIHandlerVector2 = UnityEngine.Rendering.UI.DebugUIHandlerVector2

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector2:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerVector2:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector2:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector2:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerVector2:OnAction() end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerVector2:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerVector3 : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.Rendering.UI.UIFoldout
---@field fieldX UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldY UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldZ UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
UnityEngine.Rendering.UI.DebugUIHandlerVector3 = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerVector3 UnityEngine.Rendering.UI.DebugUIHandlerVector3
CS.UnityEngine.Rendering.UI.DebugUIHandlerVector3 = UnityEngine.Rendering.UI.DebugUIHandlerVector3

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector3:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerVector3:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector3:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector3:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerVector3:OnAction() end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerVector3:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerVector4 : UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nameLabel UnityEngine.UI.Text
---@field valueToggle UnityEngine.Rendering.UI.UIFoldout
---@field fieldX UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldY UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldZ UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
---@field fieldW UnityEngine.Rendering.UI.DebugUIHandlerIndirectFloatField
UnityEngine.Rendering.UI.DebugUIHandlerVector4 = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerVector4 UnityEngine.Rendering.UI.DebugUIHandlerVector4
CS.UnityEngine.Rendering.UI.DebugUIHandlerVector4 = UnityEngine.Rendering.UI.DebugUIHandlerVector4

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector4:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerVector4:OnDeselection() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector4:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerVector4:OnDecrement(fast) end
function UnityEngine.Rendering.UI.DebugUIHandlerVector4:OnAction() end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerVector4:Next() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerWidget : UnityEngine.MonoBehaviour
---@field colorDefault UnityEngine.Color
---@field colorSelected UnityEngine.Color
---@field parentUIHandler UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field previousUIHandler UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@field nextUIHandler UnityEngine.Rendering.UI.DebugUIHandlerWidget
UnityEngine.Rendering.UI.DebugUIHandlerWidget = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerWidget UnityEngine.Rendering.UI.DebugUIHandlerWidget
CS.UnityEngine.Rendering.UI.DebugUIHandlerWidget = UnityEngine.Rendering.UI.DebugUIHandlerWidget

---@param fromNext boolean
---@param previous UnityEngine.Rendering.UI.DebugUIHandlerWidget
---@return boolean
function UnityEngine.Rendering.UI.DebugUIHandlerWidget:OnSelection(fromNext, previous) end
function UnityEngine.Rendering.UI.DebugUIHandlerWidget:OnDeselection() end
function UnityEngine.Rendering.UI.DebugUIHandlerWidget:OnAction() end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerWidget:OnIncrement(fast) end
---@param fast boolean
function UnityEngine.Rendering.UI.DebugUIHandlerWidget:OnDecrement(fast) end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerWidget:Previous() end
---@return UnityEngine.Rendering.UI.DebugUIHandlerWidget
function UnityEngine.Rendering.UI.DebugUIHandlerWidget:Next() end

---@class UnityEngine.Rendering.UI.UIFoldout : UnityEngine.UI.Toggle
---@field content UnityEngine.GameObject
---@field arrowOpened UnityEngine.GameObject
---@field arrowClosed UnityEngine.GameObject
UnityEngine.Rendering.UI.UIFoldout = {}
---@alias CS.UnityEngine.Rendering.UI.UIFoldout UnityEngine.Rendering.UI.UIFoldout
CS.UnityEngine.Rendering.UI.UIFoldout = UnityEngine.Rendering.UI.UIFoldout

---@overload fun(self: UnityEngine.Rendering.UI.UIFoldout, state: boolean)
---@param state boolean
---@param rebuildLayout boolean
function UnityEngine.Rendering.UI.UIFoldout:SetState(state, rebuildLayout) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.InputManagerEntry.Kind
---@field KeyOrButton UnityEngine.InputManagerEntry.Kind
---@field Mouse UnityEngine.InputManagerEntry.Kind
---@field Axis UnityEngine.InputManagerEntry.Kind
UnityEngine.InputManagerEntry.Kind = {}
---@alias CS.UnityEngine.InputManagerEntry.Kind UnityEngine.InputManagerEntry.Kind
CS.UnityEngine.InputManagerEntry.Kind = UnityEngine.InputManagerEntry.Kind


---@class UnityEngine.InputManagerEntry.Axis
---@field X UnityEngine.InputManagerEntry.Axis
---@field Y UnityEngine.InputManagerEntry.Axis
---@field Third UnityEngine.InputManagerEntry.Axis
---@field Fourth UnityEngine.InputManagerEntry.Axis
---@field Fifth UnityEngine.InputManagerEntry.Axis
---@field Sixth UnityEngine.InputManagerEntry.Axis
---@field Seventh UnityEngine.InputManagerEntry.Axis
---@field Eigth UnityEngine.InputManagerEntry.Axis
UnityEngine.InputManagerEntry.Axis = {}
---@alias CS.UnityEngine.InputManagerEntry.Axis UnityEngine.InputManagerEntry.Axis
CS.UnityEngine.InputManagerEntry.Axis = UnityEngine.InputManagerEntry.Axis


---@class UnityEngine.InputManagerEntry.Joy
---@field All UnityEngine.InputManagerEntry.Joy
---@field First UnityEngine.InputManagerEntry.Joy
---@field Second UnityEngine.InputManagerEntry.Joy
UnityEngine.InputManagerEntry.Joy = {}
---@alias CS.UnityEngine.InputManagerEntry.Joy UnityEngine.InputManagerEntry.Joy
CS.UnityEngine.InputManagerEntry.Joy = UnityEngine.InputManagerEntry.Joy


---@class UnityEngine.LightAnchor.UpDirection
---@field World UnityEngine.LightAnchor.UpDirection
---@field Local UnityEngine.LightAnchor.UpDirection
UnityEngine.LightAnchor.UpDirection = {}
---@alias CS.UnityEngine.LightAnchor.UpDirection UnityEngine.LightAnchor.UpDirection
CS.UnityEngine.LightAnchor.UpDirection = UnityEngine.LightAnchor.UpDirection


---@class UnityEngine.LightAnchor.Axes : System.ValueType
---@field up UnityEngine.Vector3
---@field right UnityEngine.Vector3
---@field forward UnityEngine.Vector3
UnityEngine.LightAnchor.Axes = {}
---@alias CS.UnityEngine.LightAnchor.Axes UnityEngine.LightAnchor.Axes
CS.UnityEngine.LightAnchor.Axes = UnityEngine.LightAnchor.Axes


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams.Strings : System.Object
---@field ClearRenderTargetsAtCreation UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field DisablePassCulling UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field ImmediateMode UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field EnableLogging UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field LogFrameInformation UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field LogResources UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams.Strings = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams.Strings UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams.Strings
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams.Strings = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams.Strings


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.PassDebugData : System.ValueType
---@field name string
---@field resourceReadLists System.Collections.Generic.List
---@field resourceWriteLists System.Collections.Generic.List
---@field culled boolean
---@field async boolean
---@field syncToPassIndex number
---@field syncFromPassIndex number
---@field generateDebugData boolean
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.PassDebugData = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.PassDebugData UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.PassDebugData
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.PassDebugData = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.PassDebugData


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.ResourceDebugData : System.ValueType
---@field name string
---@field imported boolean
---@field creationPassIndex number
---@field releasePassIndex number
---@field consumerList System.Collections.Generic.List
---@field producerList System.Collections.Generic.List
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.ResourceDebugData = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.ResourceDebugData UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.ResourceDebugData
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.ResourceDebugData = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.ResourceDebugData


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledResourceInfo : System.ValueType
---@field producers System.Collections.Generic.List
---@field consumers System.Collections.Generic.List
---@field refCount number
---@field imported boolean
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledResourceInfo = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledResourceInfo UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledResourceInfo
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledResourceInfo = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledResourceInfo

function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledResourceInfo:Reset() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledPassInfo : System.ValueType
---@field pass UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass
---@field resourceCreateList System.Collections.Generic.List
---@field resourceReleaseList System.Collections.Generic.List
---@field refCount number
---@field culled boolean
---@field culledByRendererList boolean
---@field hasSideEffect boolean
---@field syncToPassIndex number
---@field syncFromPassIndex number
---@field needGraphicsFence boolean
---@field fence UnityEngine.Rendering.GraphicsFence
---@field enableAsyncCompute boolean
---@field debugResourceReads System.Collections.Generic.List
---@field debugResourceWrites System.Collections.Generic.List
---@field allowPassCulling boolean
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledPassInfo = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledPassInfo UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledPassInfo
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledPassInfo = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledPassInfo

---@param pass UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.CompiledPassInfo:Reset(pass) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData : System.Object
---@field sampler UnityEngine.Rendering.ProfilingSampler
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.ProfilingScopePassData.New() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate : System.MulticastDelegate
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate.New(object, method) end
---@param graph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate:Invoke(graph) end
---@param graph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate:BeginInvoke(graph, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnGraphRegisteredDelegate:EndInvoke(result) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate : System.MulticastDelegate
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate.New(object, method) end
---@param graph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph
---@param executionName string
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate:Invoke(graph, executionName) end
---@param graph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph
---@param executionName string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate:BeginInvoke(graph, executionName, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.OnExecutionRegisteredDelegate:EndInvoke(result) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase : System.Object
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase

function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase.ClearAll() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool : UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPoolBase
---@field sharedPool UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool.New() end
---@return T
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool:Get() end
---@param value T
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool.SharedObjectPool:Release(value) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool.ResourceLogInfo : System.ValueType
---@field name string
---@field size number
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool.ResourceLogInfo = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool.ResourceLogInfo UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool.ResourceLogInfo
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool.ResourceLogInfo = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool.ResourceLogInfo


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback : System.MulticastDelegate
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback.New(object, method) end
---@param rgContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
---@param res UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback:Invoke(rgContext, res) end
---@param rgContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
---@param res UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback:BeginInvoke(rgContext, res, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback:EndInvoke(result) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback : System.MulticastDelegate
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback.New(object, method) end
---@param rgContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
---@param res UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback:Invoke(rgContext, res) end
---@param rgContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
---@param res UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback:BeginInvoke(rgContext, res, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback:EndInvoke(result) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData : System.Object
---@field resourceArray UnityEngine.Rendering.DynamicArray
---@field sharedResourcesCount number
---@field pool UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool
---@field createResourceCallback UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCreateCallback
---@field releaseResourceCallback UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.ResourceCallback
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData.New() end
---@param onException boolean
---@param frameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData:Clear(onException, frameIndex) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData:Cleanup() end
---@param frameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry.RenderGraphResourcesData:PurgeUnusedGraphicsResources(frameIndex) end

---@class UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue : System.ValueType
---@field Count number
UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue = {}
---@alias CS.UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue
CS.UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue = UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue

---@param ptr System.Byte*
---@param length number
---@return UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue
function UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue.New(ptr, length) end
---@param v string
---@return boolean
function UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue:TryPush(v) end
---@param out_v string
---@return boolean,string
function UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue:TryPop(out_v) end
function UnityEngine.Rendering.CoreUnsafeUtils.FixedBufferStringQueue:Clear() end

---@class UnityEngine.Rendering.CoreUnsafeUtils.IKeyGetter
UnityEngine.Rendering.CoreUnsafeUtils.IKeyGetter = {}
---@alias CS.UnityEngine.Rendering.CoreUnsafeUtils.IKeyGetter UnityEngine.Rendering.CoreUnsafeUtils.IKeyGetter
CS.UnityEngine.Rendering.CoreUnsafeUtils.IKeyGetter = UnityEngine.Rendering.CoreUnsafeUtils.IKeyGetter

---@param ref_v TValue
---@return TKey,TValue
function UnityEngine.Rendering.CoreUnsafeUtils.IKeyGetter:Get(ref_v) end

---@class UnityEngine.Rendering.CoreUnsafeUtils.DefaultKeyGetter : System.ValueType
UnityEngine.Rendering.CoreUnsafeUtils.DefaultKeyGetter = {}
---@alias CS.UnityEngine.Rendering.CoreUnsafeUtils.DefaultKeyGetter UnityEngine.Rendering.CoreUnsafeUtils.DefaultKeyGetter
CS.UnityEngine.Rendering.CoreUnsafeUtils.DefaultKeyGetter = UnityEngine.Rendering.CoreUnsafeUtils.DefaultKeyGetter

---@param ref_v T
---@return T,T
function UnityEngine.Rendering.CoreUnsafeUtils.DefaultKeyGetter:Get(ref_v) end

---@class UnityEngine.Rendering.CoreUnsafeUtils.UintKeyGetter : System.ValueType
UnityEngine.Rendering.CoreUnsafeUtils.UintKeyGetter = {}
---@alias CS.UnityEngine.Rendering.CoreUnsafeUtils.UintKeyGetter UnityEngine.Rendering.CoreUnsafeUtils.UintKeyGetter
CS.UnityEngine.Rendering.CoreUnsafeUtils.UintKeyGetter = UnityEngine.Rendering.CoreUnsafeUtils.UintKeyGetter

---@param ref_v number
---@return number,number
function UnityEngine.Rendering.CoreUnsafeUtils.UintKeyGetter:Get(ref_v) end

---@class UnityEngine.Rendering.DynamicArray.Iterator : System.ValueType
---@field Current T&
UnityEngine.Rendering.DynamicArray.Iterator = {}
---@alias CS.UnityEngine.Rendering.DynamicArray.Iterator UnityEngine.Rendering.DynamicArray.Iterator
CS.UnityEngine.Rendering.DynamicArray.Iterator = UnityEngine.Rendering.DynamicArray.Iterator

---@param setOwner UnityEngine.Rendering.DynamicArray[T]
---@return UnityEngine.Rendering.DynamicArray.Iterator
function UnityEngine.Rendering.DynamicArray.Iterator.New(setOwner) end
---@return boolean
function UnityEngine.Rendering.DynamicArray.Iterator:MoveNext() end
function UnityEngine.Rendering.DynamicArray.Iterator:Reset() end

---@class UnityEngine.Rendering.DynamicArray.RangeEnumerable : System.ValueType
---@field iterator UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator[T]
UnityEngine.Rendering.DynamicArray.RangeEnumerable = {}
---@alias CS.UnityEngine.Rendering.DynamicArray.RangeEnumerable UnityEngine.Rendering.DynamicArray.RangeEnumerable
CS.UnityEngine.Rendering.DynamicArray.RangeEnumerable = UnityEngine.Rendering.DynamicArray.RangeEnumerable

---@return UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator[T]
function UnityEngine.Rendering.DynamicArray.RangeEnumerable:GetEnumerator() end

---@class UnityEngine.Rendering.DynamicResolutionHandler.ScalerContainer : System.ValueType
---@field type UnityEngine.Rendering.DynamicResScalePolicyType
---@field method UnityEngine.Rendering.PerformDynamicRes
UnityEngine.Rendering.DynamicResolutionHandler.ScalerContainer = {}
---@alias CS.UnityEngine.Rendering.DynamicResolutionHandler.ScalerContainer UnityEngine.Rendering.DynamicResolutionHandler.ScalerContainer
CS.UnityEngine.Rendering.DynamicResolutionHandler.ScalerContainer = UnityEngine.Rendering.DynamicResolutionHandler.ScalerContainer


---@class UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType
---@field BeforePost UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType
---@field AfterDepthOfField UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType
---@field AfterPost UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType
UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType = {}
---@alias CS.UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType
CS.UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType = UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType


---@class UnityEngine.Rendering.ObjectPool.PooledObject : System.ValueType
UnityEngine.Rendering.ObjectPool.PooledObject = {}
---@alias CS.UnityEngine.Rendering.ObjectPool.PooledObject UnityEngine.Rendering.ObjectPool.PooledObject
CS.UnityEngine.Rendering.ObjectPool.PooledObject = UnityEngine.Rendering.ObjectPool.PooledObject


---@class UnityEngine.Rendering.XRGraphics.StereoRenderingMode
---@field MultiPass UnityEngine.Rendering.XRGraphics.StereoRenderingMode
---@field SinglePass UnityEngine.Rendering.XRGraphics.StereoRenderingMode
---@field SinglePassInstanced UnityEngine.Rendering.XRGraphics.StereoRenderingMode
---@field SinglePassMultiView UnityEngine.Rendering.XRGraphics.StereoRenderingMode
UnityEngine.Rendering.XRGraphics.StereoRenderingMode = {}
---@alias CS.UnityEngine.Rendering.XRGraphics.StereoRenderingMode UnityEngine.Rendering.XRGraphics.StereoRenderingMode
CS.UnityEngine.Rendering.XRGraphics.StereoRenderingMode = UnityEngine.Rendering.XRGraphics.StereoRenderingMode


---@class UnityEngine.Rendering.DebugDisplaySettingsVolume.Styles : System.Object
---@field none UnityEngine.GUIContent
---@field editorCamera UnityEngine.GUIContent
UnityEngine.Rendering.DebugDisplaySettingsVolume.Styles = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.Styles UnityEngine.Rendering.DebugDisplaySettingsVolume.Styles
CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.Styles = UnityEngine.Rendering.DebugDisplaySettingsVolume.Styles


---@class UnityEngine.Rendering.DebugDisplaySettingsVolume.Strings : System.Object
---@field none string
---@field camera string
---@field parameter string
---@field component string
---@field debugViewNotSupported string
---@field volumeInfo string
---@field interpolatedValue string
---@field defaultValue string
---@field global string
---@field local string
UnityEngine.Rendering.DebugDisplaySettingsVolume.Strings = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.Strings UnityEngine.Rendering.DebugDisplaySettingsVolume.Strings
CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.Strings = UnityEngine.Rendering.DebugDisplaySettingsVolume.Strings


---@class UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory : System.Object
UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory
CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory = UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory

---@param panel UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel
---@param refresh System.Action
---@return UnityEngine.Rendering.DebugUI.EnumField
function UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory.CreateComponentSelector(panel, refresh) end
---@param panel UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel
---@param refresh System.Action
---@return UnityEngine.Rendering.DebugUI.ObjectPopupField
function UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory.CreateCameraSelector(panel, refresh) end
---@param data UnityEngine.Rendering.DebugDisplaySettingsVolume
---@return UnityEngine.Rendering.DebugUI.Table
function UnityEngine.Rendering.DebugDisplaySettingsVolume.WidgetFactory.CreateVolumeTable(data) end

---@class UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel : UnityEngine.Rendering.DebugDisplaySettingsPanel
---@field data UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel -- infered from UnityEngine.Rendering.DebugDisplaySettingsPanel`1[UnityEngine.Rendering.DebugDisplaySettingsVolume]
UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel
CS.UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel = UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel

---@param data UnityEngine.Rendering.DebugDisplaySettingsVolume
---@return UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel
function UnityEngine.Rendering.DebugDisplaySettingsVolume.SettingsPanel.New(data) end

---@class UnityEngine.Rendering.DebugManager.UIMode
---@field EditorMode UnityEngine.Rendering.DebugManager.UIMode
---@field RuntimeMode UnityEngine.Rendering.DebugManager.UIMode
UnityEngine.Rendering.DebugManager.UIMode = {}
---@alias CS.UnityEngine.Rendering.DebugManager.UIMode UnityEngine.Rendering.DebugManager.UIMode
CS.UnityEngine.Rendering.DebugManager.UIMode = UnityEngine.Rendering.DebugManager.UIMode


---@class UnityEngine.Rendering.DebugManager.UIState : System.Object
---@field mode UnityEngine.Rendering.DebugManager.UIMode
---@field open boolean
UnityEngine.Rendering.DebugManager.UIState = {}
---@alias CS.UnityEngine.Rendering.DebugManager.UIState UnityEngine.Rendering.DebugManager.UIState
CS.UnityEngine.Rendering.DebugManager.UIState = UnityEngine.Rendering.DebugManager.UIState

---@return UnityEngine.Rendering.DebugManager.UIState
function UnityEngine.Rendering.DebugManager.UIState.New() end

---@class UnityEngine.Rendering.DebugActionState.DebugActionKeyType
---@field Button UnityEngine.Rendering.DebugActionState.DebugActionKeyType
---@field Axis UnityEngine.Rendering.DebugActionState.DebugActionKeyType
---@field Key UnityEngine.Rendering.DebugActionState.DebugActionKeyType
UnityEngine.Rendering.DebugActionState.DebugActionKeyType = {}
---@alias CS.UnityEngine.Rendering.DebugActionState.DebugActionKeyType UnityEngine.Rendering.DebugActionState.DebugActionKeyType
CS.UnityEngine.Rendering.DebugActionState.DebugActionKeyType = UnityEngine.Rendering.DebugActionState.DebugActionKeyType


---@class UnityEngine.Rendering.DebugUI.Container : UnityEngine.Rendering.DebugUI.Widget
---@field children UnityEngine.Rendering.ObservableList
---@field panel UnityEngine.Rendering.DebugUI.Panel
UnityEngine.Rendering.DebugUI.Container = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Container UnityEngine.Rendering.DebugUI.Container
CS.UnityEngine.Rendering.DebugUI.Container = UnityEngine.Rendering.DebugUI.Container

---@overload fun() : UnityEngine.Rendering.DebugUI.Container
---@overload fun(id: string) : UnityEngine.Rendering.DebugUI.Container
---@param displayName string
---@param children UnityEngine.Rendering.ObservableList
---@return UnityEngine.Rendering.DebugUI.Container
function UnityEngine.Rendering.DebugUI.Container.New(displayName, children) end
---@return number
function UnityEngine.Rendering.DebugUI.Container:GetHashCode() end

---@class UnityEngine.Rendering.DebugUI.Foldout : UnityEngine.Rendering.DebugUI.Container
---@field opened boolean
---@field isHeader boolean
---@field contextMenuItems System.Collections.Generic.List
---@field isReadOnly boolean
---@field columnLabels System.String[]
---@field columnTooltips System.String[]
UnityEngine.Rendering.DebugUI.Foldout = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Foldout UnityEngine.Rendering.DebugUI.Foldout
CS.UnityEngine.Rendering.DebugUI.Foldout = UnityEngine.Rendering.DebugUI.Foldout

---@overload fun() : UnityEngine.Rendering.DebugUI.Foldout
---@param displayName string
---@param children UnityEngine.Rendering.ObservableList
---@param columnLabels System.String[]
---@param columnTooltips System.String[]
---@return UnityEngine.Rendering.DebugUI.Foldout
function UnityEngine.Rendering.DebugUI.Foldout.New(displayName, children, columnLabels, columnTooltips) end
---@return boolean
function UnityEngine.Rendering.DebugUI.Foldout:GetValue() end
---@overload fun(self: UnityEngine.Rendering.DebugUI.Foldout, value: System.Object)
---@param value boolean
function UnityEngine.Rendering.DebugUI.Foldout:SetValue(value) end
---@param value System.Object
---@return System.Object
function UnityEngine.Rendering.DebugUI.Foldout:ValidateValue(value) end

---@class UnityEngine.Rendering.DebugUI.HBox : UnityEngine.Rendering.DebugUI.Container
UnityEngine.Rendering.DebugUI.HBox = {}
---@alias CS.UnityEngine.Rendering.DebugUI.HBox UnityEngine.Rendering.DebugUI.HBox
CS.UnityEngine.Rendering.DebugUI.HBox = UnityEngine.Rendering.DebugUI.HBox

---@return UnityEngine.Rendering.DebugUI.HBox
function UnityEngine.Rendering.DebugUI.HBox.New() end

---@class UnityEngine.Rendering.DebugUI.VBox : UnityEngine.Rendering.DebugUI.Container
UnityEngine.Rendering.DebugUI.VBox = {}
---@alias CS.UnityEngine.Rendering.DebugUI.VBox UnityEngine.Rendering.DebugUI.VBox
CS.UnityEngine.Rendering.DebugUI.VBox = UnityEngine.Rendering.DebugUI.VBox

---@return UnityEngine.Rendering.DebugUI.VBox
function UnityEngine.Rendering.DebugUI.VBox.New() end

---@class UnityEngine.Rendering.DebugUI.Table : UnityEngine.Rendering.DebugUI.Container
---@field isReadOnly boolean
---@field scroll UnityEngine.Vector2
---@field Header UnityEditor.IMGUI.Controls.MultiColumnHeader
UnityEngine.Rendering.DebugUI.Table = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Table UnityEngine.Rendering.DebugUI.Table
CS.UnityEngine.Rendering.DebugUI.Table = UnityEngine.Rendering.DebugUI.Table

---@return UnityEngine.Rendering.DebugUI.Table
function UnityEngine.Rendering.DebugUI.Table.New() end
---@param index number
---@param visible boolean
function UnityEngine.Rendering.DebugUI.Table:SetColumnVisibility(index, visible) end
---@param index number
---@return boolean
function UnityEngine.Rendering.DebugUI.Table:GetColumnVisibility(index) end

---@class UnityEngine.Rendering.DebugUI.Flags
---@field None UnityEngine.Rendering.DebugUI.Flags
---@field EditorOnly UnityEngine.Rendering.DebugUI.Flags
---@field RuntimeOnly UnityEngine.Rendering.DebugUI.Flags
---@field EditorForceUpdate UnityEngine.Rendering.DebugUI.Flags
---@field FrequentlyUsed UnityEngine.Rendering.DebugUI.Flags
UnityEngine.Rendering.DebugUI.Flags = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Flags UnityEngine.Rendering.DebugUI.Flags
CS.UnityEngine.Rendering.DebugUI.Flags = UnityEngine.Rendering.DebugUI.Flags


---@class UnityEngine.Rendering.DebugUI.Widget : System.Object
---@field isHiddenCallback System.Func
---@field panel UnityEngine.Rendering.DebugUI.Panel
---@field parent UnityEngine.Rendering.DebugUI.IContainer
---@field flags UnityEngine.Rendering.DebugUI.Flags
---@field displayName string
---@field tooltip string
---@field queryPath string
---@field isEditorOnly boolean
---@field isRuntimeOnly boolean
---@field isInactiveInEditor boolean
---@field isHidden boolean
---@field nameAndTooltip UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
UnityEngine.Rendering.DebugUI.Widget = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Widget UnityEngine.Rendering.DebugUI.Widget
CS.UnityEngine.Rendering.DebugUI.Widget = UnityEngine.Rendering.DebugUI.Widget

---@return number
function UnityEngine.Rendering.DebugUI.Widget:GetHashCode() end

---@class UnityEngine.Rendering.DebugUI.IContainer
---@field children UnityEngine.Rendering.ObservableList
---@field displayName string
---@field queryPath string
UnityEngine.Rendering.DebugUI.IContainer = {}
---@alias CS.UnityEngine.Rendering.DebugUI.IContainer UnityEngine.Rendering.DebugUI.IContainer
CS.UnityEngine.Rendering.DebugUI.IContainer = UnityEngine.Rendering.DebugUI.IContainer


---@class UnityEngine.Rendering.DebugUI.IValueField
UnityEngine.Rendering.DebugUI.IValueField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.IValueField UnityEngine.Rendering.DebugUI.IValueField
CS.UnityEngine.Rendering.DebugUI.IValueField = UnityEngine.Rendering.DebugUI.IValueField

---@return System.Object
function UnityEngine.Rendering.DebugUI.IValueField:GetValue() end
---@param value System.Object
function UnityEngine.Rendering.DebugUI.IValueField:SetValue(value) end
---@param value System.Object
---@return System.Object
function UnityEngine.Rendering.DebugUI.IValueField:ValidateValue(value) end

---@class UnityEngine.Rendering.DebugUI.Button : UnityEngine.Rendering.DebugUI.Widget
---@field action System.Action
UnityEngine.Rendering.DebugUI.Button = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Button UnityEngine.Rendering.DebugUI.Button
CS.UnityEngine.Rendering.DebugUI.Button = UnityEngine.Rendering.DebugUI.Button

---@return UnityEngine.Rendering.DebugUI.Button
function UnityEngine.Rendering.DebugUI.Button.New() end

---@class UnityEngine.Rendering.DebugUI.Value : UnityEngine.Rendering.DebugUI.Widget
---@field refreshRate number
---@field formatString string
---@field getter System.Func
UnityEngine.Rendering.DebugUI.Value = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Value UnityEngine.Rendering.DebugUI.Value
CS.UnityEngine.Rendering.DebugUI.Value = UnityEngine.Rendering.DebugUI.Value

---@return UnityEngine.Rendering.DebugUI.Value
function UnityEngine.Rendering.DebugUI.Value.New() end
---@return System.Object
function UnityEngine.Rendering.DebugUI.Value:GetValue() end
---@param value System.Object
---@return string
function UnityEngine.Rendering.DebugUI.Value:FormatString(value) end

---@class UnityEngine.Rendering.DebugUI.ProgressBarValue : UnityEngine.Rendering.DebugUI.Value
---@field min number
---@field max number
UnityEngine.Rendering.DebugUI.ProgressBarValue = {}
---@alias CS.UnityEngine.Rendering.DebugUI.ProgressBarValue UnityEngine.Rendering.DebugUI.ProgressBarValue
CS.UnityEngine.Rendering.DebugUI.ProgressBarValue = UnityEngine.Rendering.DebugUI.ProgressBarValue

---@return UnityEngine.Rendering.DebugUI.ProgressBarValue
function UnityEngine.Rendering.DebugUI.ProgressBarValue.New() end
---@param value System.Object
---@return string
function UnityEngine.Rendering.DebugUI.ProgressBarValue:FormatString(value) end

---@class UnityEngine.Rendering.DebugUI.ValueTuple : UnityEngine.Rendering.DebugUI.Widget
---@field values UnityEngine.Rendering.DebugUI.Value[]
---@field pinnedElementIndex number
---@field numElements number
---@field refreshRate number
UnityEngine.Rendering.DebugUI.ValueTuple = {}
---@alias CS.UnityEngine.Rendering.DebugUI.ValueTuple UnityEngine.Rendering.DebugUI.ValueTuple
CS.UnityEngine.Rendering.DebugUI.ValueTuple = UnityEngine.Rendering.DebugUI.ValueTuple

---@return UnityEngine.Rendering.DebugUI.ValueTuple
function UnityEngine.Rendering.DebugUI.ValueTuple.New() end

---@class UnityEngine.Rendering.DebugUI.Field : UnityEngine.Rendering.DebugUI.Widget
---@field onValueChanged System.Action[UnityEngine.Rendering.DebugUI.Field[T],T]
---@field getter System.Func[T]
---@field setter System.Action[T]
UnityEngine.Rendering.DebugUI.Field = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Field UnityEngine.Rendering.DebugUI.Field
CS.UnityEngine.Rendering.DebugUI.Field = UnityEngine.Rendering.DebugUI.Field

---@param value T
---@return T
function UnityEngine.Rendering.DebugUI.Field:ValidateValue(value) end
---@return T
function UnityEngine.Rendering.DebugUI.Field:GetValue() end
---@overload fun(self: UnityEngine.Rendering.DebugUI.Field, value: System.Object)
---@param value T
function UnityEngine.Rendering.DebugUI.Field:SetValue(value) end

---@class UnityEngine.Rendering.DebugUI.BoolField : UnityEngine.Rendering.DebugUI.Field
UnityEngine.Rendering.DebugUI.BoolField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.BoolField UnityEngine.Rendering.DebugUI.BoolField
CS.UnityEngine.Rendering.DebugUI.BoolField = UnityEngine.Rendering.DebugUI.BoolField

---@return UnityEngine.Rendering.DebugUI.BoolField
function UnityEngine.Rendering.DebugUI.BoolField.New() end

---@class UnityEngine.Rendering.DebugUI.HistoryBoolField : UnityEngine.Rendering.DebugUI.BoolField
---@field historyGetter System.Func
---@field historyDepth number
UnityEngine.Rendering.DebugUI.HistoryBoolField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.HistoryBoolField UnityEngine.Rendering.DebugUI.HistoryBoolField
CS.UnityEngine.Rendering.DebugUI.HistoryBoolField = UnityEngine.Rendering.DebugUI.HistoryBoolField

---@return UnityEngine.Rendering.DebugUI.HistoryBoolField
function UnityEngine.Rendering.DebugUI.HistoryBoolField.New() end
---@param historyIndex number
---@return boolean
function UnityEngine.Rendering.DebugUI.HistoryBoolField:GetHistoryValue(historyIndex) end

---@class UnityEngine.Rendering.DebugUI.IntField : UnityEngine.Rendering.DebugUI.Field
---@field min System.Func
---@field max System.Func
---@field incStep number
---@field intStepMult number
UnityEngine.Rendering.DebugUI.IntField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.IntField UnityEngine.Rendering.DebugUI.IntField
CS.UnityEngine.Rendering.DebugUI.IntField = UnityEngine.Rendering.DebugUI.IntField

---@return UnityEngine.Rendering.DebugUI.IntField
function UnityEngine.Rendering.DebugUI.IntField.New() end
---@param value number
---@return number
function UnityEngine.Rendering.DebugUI.IntField:ValidateValue(value) end

---@class UnityEngine.Rendering.DebugUI.UIntField : UnityEngine.Rendering.DebugUI.Field
---@field min System.Func
---@field max System.Func
---@field incStep number
---@field intStepMult number
UnityEngine.Rendering.DebugUI.UIntField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.UIntField UnityEngine.Rendering.DebugUI.UIntField
CS.UnityEngine.Rendering.DebugUI.UIntField = UnityEngine.Rendering.DebugUI.UIntField

---@return UnityEngine.Rendering.DebugUI.UIntField
function UnityEngine.Rendering.DebugUI.UIntField.New() end
---@param value number
---@return number
function UnityEngine.Rendering.DebugUI.UIntField:ValidateValue(value) end

---@class UnityEngine.Rendering.DebugUI.FloatField : UnityEngine.Rendering.DebugUI.Field
---@field min System.Func
---@field max System.Func
---@field incStep number
---@field incStepMult number
---@field decimals number
UnityEngine.Rendering.DebugUI.FloatField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.FloatField UnityEngine.Rendering.DebugUI.FloatField
CS.UnityEngine.Rendering.DebugUI.FloatField = UnityEngine.Rendering.DebugUI.FloatField

---@return UnityEngine.Rendering.DebugUI.FloatField
function UnityEngine.Rendering.DebugUI.FloatField.New() end
---@param value number
---@return number
function UnityEngine.Rendering.DebugUI.FloatField:ValidateValue(value) end

---@class UnityEngine.Rendering.DebugUI.EnumField : UnityEngine.Rendering.DebugUI.Field[T]
---@field enumNames UnityEngine.GUIContent[]
---@field enumValues System.Int32[]
UnityEngine.Rendering.DebugUI.EnumField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.EnumField UnityEngine.Rendering.DebugUI.EnumField
CS.UnityEngine.Rendering.DebugUI.EnumField = UnityEngine.Rendering.DebugUI.EnumField


---@class UnityEngine.Rendering.DebugUI.EnumField : UnityEngine.Rendering.DebugUI.EnumField
---@field getIndex System.Func
---@field setIndex System.Action
---@field currentIndex number
---@field autoEnum System.Type
UnityEngine.Rendering.DebugUI.EnumField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.EnumField UnityEngine.Rendering.DebugUI.EnumField
CS.UnityEngine.Rendering.DebugUI.EnumField = UnityEngine.Rendering.DebugUI.EnumField

---@return UnityEngine.Rendering.DebugUI.EnumField
function UnityEngine.Rendering.DebugUI.EnumField.New() end
---@param value number
function UnityEngine.Rendering.DebugUI.EnumField:SetValue(value) end

---@class UnityEngine.Rendering.DebugUI.ObjectPopupField : UnityEngine.Rendering.DebugUI.Field
---@field getObjects System.Func
UnityEngine.Rendering.DebugUI.ObjectPopupField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.ObjectPopupField UnityEngine.Rendering.DebugUI.ObjectPopupField
CS.UnityEngine.Rendering.DebugUI.ObjectPopupField = UnityEngine.Rendering.DebugUI.ObjectPopupField

---@return UnityEngine.Rendering.DebugUI.ObjectPopupField
function UnityEngine.Rendering.DebugUI.ObjectPopupField.New() end

---@class UnityEngine.Rendering.DebugUI.HistoryEnumField : UnityEngine.Rendering.DebugUI.EnumField
---@field historyIndexGetter System.Func
---@field historyDepth number
UnityEngine.Rendering.DebugUI.HistoryEnumField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.HistoryEnumField UnityEngine.Rendering.DebugUI.HistoryEnumField
CS.UnityEngine.Rendering.DebugUI.HistoryEnumField = UnityEngine.Rendering.DebugUI.HistoryEnumField

---@return UnityEngine.Rendering.DebugUI.HistoryEnumField
function UnityEngine.Rendering.DebugUI.HistoryEnumField.New() end
---@param historyIndex number
---@return number
function UnityEngine.Rendering.DebugUI.HistoryEnumField:GetHistoryValue(historyIndex) end

---@class UnityEngine.Rendering.DebugUI.BitField : UnityEngine.Rendering.DebugUI.EnumField
---@field enumType System.Type
UnityEngine.Rendering.DebugUI.BitField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.BitField UnityEngine.Rendering.DebugUI.BitField
CS.UnityEngine.Rendering.DebugUI.BitField = UnityEngine.Rendering.DebugUI.BitField

---@return UnityEngine.Rendering.DebugUI.BitField
function UnityEngine.Rendering.DebugUI.BitField.New() end

---@class UnityEngine.Rendering.DebugUI.ColorField : UnityEngine.Rendering.DebugUI.Field
---@field hdr boolean
---@field showAlpha boolean
---@field showPicker boolean
---@field incStep number
---@field incStepMult number
---@field decimals number
UnityEngine.Rendering.DebugUI.ColorField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.ColorField UnityEngine.Rendering.DebugUI.ColorField
CS.UnityEngine.Rendering.DebugUI.ColorField = UnityEngine.Rendering.DebugUI.ColorField

---@return UnityEngine.Rendering.DebugUI.ColorField
function UnityEngine.Rendering.DebugUI.ColorField.New() end
---@param value UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.Rendering.DebugUI.ColorField:ValidateValue(value) end

---@class UnityEngine.Rendering.DebugUI.Vector2Field : UnityEngine.Rendering.DebugUI.Field
---@field incStep number
---@field incStepMult number
---@field decimals number
UnityEngine.Rendering.DebugUI.Vector2Field = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Vector2Field UnityEngine.Rendering.DebugUI.Vector2Field
CS.UnityEngine.Rendering.DebugUI.Vector2Field = UnityEngine.Rendering.DebugUI.Vector2Field

---@return UnityEngine.Rendering.DebugUI.Vector2Field
function UnityEngine.Rendering.DebugUI.Vector2Field.New() end

---@class UnityEngine.Rendering.DebugUI.Vector3Field : UnityEngine.Rendering.DebugUI.Field
---@field incStep number
---@field incStepMult number
---@field decimals number
UnityEngine.Rendering.DebugUI.Vector3Field = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Vector3Field UnityEngine.Rendering.DebugUI.Vector3Field
CS.UnityEngine.Rendering.DebugUI.Vector3Field = UnityEngine.Rendering.DebugUI.Vector3Field

---@return UnityEngine.Rendering.DebugUI.Vector3Field
function UnityEngine.Rendering.DebugUI.Vector3Field.New() end

---@class UnityEngine.Rendering.DebugUI.Vector4Field : UnityEngine.Rendering.DebugUI.Field
---@field incStep number
---@field incStepMult number
---@field decimals number
UnityEngine.Rendering.DebugUI.Vector4Field = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Vector4Field UnityEngine.Rendering.DebugUI.Vector4Field
CS.UnityEngine.Rendering.DebugUI.Vector4Field = UnityEngine.Rendering.DebugUI.Vector4Field

---@return UnityEngine.Rendering.DebugUI.Vector4Field
function UnityEngine.Rendering.DebugUI.Vector4Field.New() end

---@class UnityEngine.Rendering.DebugUI.ObjectField : UnityEngine.Rendering.DebugUI.Field
---@field type System.Type
UnityEngine.Rendering.DebugUI.ObjectField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.ObjectField UnityEngine.Rendering.DebugUI.ObjectField
CS.UnityEngine.Rendering.DebugUI.ObjectField = UnityEngine.Rendering.DebugUI.ObjectField

---@return UnityEngine.Rendering.DebugUI.ObjectField
function UnityEngine.Rendering.DebugUI.ObjectField.New() end

---@class UnityEngine.Rendering.DebugUI.ObjectListField : UnityEngine.Rendering.DebugUI.Field
---@field type System.Type
UnityEngine.Rendering.DebugUI.ObjectListField = {}
---@alias CS.UnityEngine.Rendering.DebugUI.ObjectListField UnityEngine.Rendering.DebugUI.ObjectListField
CS.UnityEngine.Rendering.DebugUI.ObjectListField = UnityEngine.Rendering.DebugUI.ObjectListField

---@return UnityEngine.Rendering.DebugUI.ObjectListField
function UnityEngine.Rendering.DebugUI.ObjectListField.New() end

---@class UnityEngine.Rendering.DebugUI.MessageBox : UnityEngine.Rendering.DebugUI.Widget
---@field style UnityEngine.Rendering.DebugUI.MessageBox.Style
UnityEngine.Rendering.DebugUI.MessageBox = {}
---@alias CS.UnityEngine.Rendering.DebugUI.MessageBox UnityEngine.Rendering.DebugUI.MessageBox
CS.UnityEngine.Rendering.DebugUI.MessageBox = UnityEngine.Rendering.DebugUI.MessageBox

---@return UnityEngine.Rendering.DebugUI.MessageBox
function UnityEngine.Rendering.DebugUI.MessageBox.New() end

---@class UnityEngine.Rendering.DebugUI.Panel : System.Object
---@field flags UnityEngine.Rendering.DebugUI.Flags
---@field displayName string
---@field groupIndex number
---@field queryPath string
---@field isEditorOnly boolean
---@field isRuntimeOnly boolean
---@field isInactiveInEditor boolean
---@field editorForceUpdate boolean
---@field children UnityEngine.Rendering.ObservableList
UnityEngine.Rendering.DebugUI.Panel = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Panel UnityEngine.Rendering.DebugUI.Panel
CS.UnityEngine.Rendering.DebugUI.Panel = UnityEngine.Rendering.DebugUI.Panel

---@return UnityEngine.Rendering.DebugUI.Panel
function UnityEngine.Rendering.DebugUI.Panel.New() end
function UnityEngine.Rendering.DebugUI.Panel:SetDirty() end
---@return number
function UnityEngine.Rendering.DebugUI.Panel:GetHashCode() end

---@class UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher : UnityEngine.MonoBehaviour
---@field s_Instance UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher
UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher = {}
---@alias CS.UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher
CS.UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher = UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher

function UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher.Cleanup() end
function UnityEngine.Rendering.MousePositionDebug.GameViewEventCatcher.Build() end

---@class UnityEngine.Rendering.ShaderDebugPrintManager.Profiling : System.Object
---@field BufferReadComplete UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.ShaderDebugPrintManager.Profiling = {}
---@alias CS.UnityEngine.Rendering.ShaderDebugPrintManager.Profiling UnityEngine.Rendering.ShaderDebugPrintManager.Profiling
CS.UnityEngine.Rendering.ShaderDebugPrintManager.Profiling = UnityEngine.Rendering.ShaderDebugPrintManager.Profiling


---@class UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeUint UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeInt UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeFloat UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeUint2 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeInt2 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeFloat2 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeUint3 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeInt3 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeFloat3 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeUint4 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeInt4 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeFloat4 UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
---@field TypeBool UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType = {}
---@alias CS.UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType
CS.UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType = UnityEngine.Rendering.ShaderDebugPrintManager.DebugValueType


---@class UnityEngine.Rendering.ProbeBrickIndex.Brick : System.ValueType
---@field position UnityEngine.Vector3Int
---@field subdivisionLevel number
UnityEngine.Rendering.ProbeBrickIndex.Brick = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickIndex.Brick UnityEngine.Rendering.ProbeBrickIndex.Brick
CS.UnityEngine.Rendering.ProbeBrickIndex.Brick = UnityEngine.Rendering.ProbeBrickIndex.Brick

---@param other UnityEngine.Rendering.ProbeBrickIndex.Brick
---@return boolean
function UnityEngine.Rendering.ProbeBrickIndex.Brick:Equals(other) end

---@class UnityEngine.Rendering.ProbeBrickIndex.ReservedBrick : System.ValueType
---@field brick UnityEngine.Rendering.ProbeBrickIndex.Brick
---@field flattenedIdx number
UnityEngine.Rendering.ProbeBrickIndex.ReservedBrick = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickIndex.ReservedBrick UnityEngine.Rendering.ProbeBrickIndex.ReservedBrick
CS.UnityEngine.Rendering.ProbeBrickIndex.ReservedBrick = UnityEngine.Rendering.ProbeBrickIndex.ReservedBrick


---@class UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta : System.Object
---@field cell UnityEngine.Rendering.ProbeReferenceVolume.Cell
---@field brickIndices System.Collections.Generic.List
UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta
CS.UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta = UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta

---@return UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta
function UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta.New() end
function UnityEngine.Rendering.ProbeBrickIndex.VoxelMeta:Clear() end

---@class UnityEngine.Rendering.ProbeBrickIndex.BrickMeta : System.Object
---@field voxels System.Collections.Generic.HashSet
---@field bricks System.Collections.Generic.List
UnityEngine.Rendering.ProbeBrickIndex.BrickMeta = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickIndex.BrickMeta UnityEngine.Rendering.ProbeBrickIndex.BrickMeta
CS.UnityEngine.Rendering.ProbeBrickIndex.BrickMeta = UnityEngine.Rendering.ProbeBrickIndex.BrickMeta

---@return UnityEngine.Rendering.ProbeBrickIndex.BrickMeta
function UnityEngine.Rendering.ProbeBrickIndex.BrickMeta.New() end
function UnityEngine.Rendering.ProbeBrickIndex.BrickMeta:Clear() end

---@class UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo : System.ValueType
---@field firstChunkIndex number
---@field numberOfChunks number
---@field minSubdivInCell number
---@field minValidBrickIndexForCellAtMaxRes UnityEngine.Vector3Int
---@field maxValidBrickIndexForCellAtMaxResPlusOne UnityEngine.Vector3Int
---@field cellPositionInBricksAtMaxRes UnityEngine.Vector3Int
UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo
CS.UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo = UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo


---@class UnityEngine.Rendering.ProbeBrickPool.BrickChunkAlloc : System.ValueType
---@field x number
---@field y number
---@field z number
UnityEngine.Rendering.ProbeBrickPool.BrickChunkAlloc = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickPool.BrickChunkAlloc UnityEngine.Rendering.ProbeBrickPool.BrickChunkAlloc
CS.UnityEngine.Rendering.ProbeBrickPool.BrickChunkAlloc = UnityEngine.Rendering.ProbeBrickPool.BrickChunkAlloc


---@class UnityEngine.Rendering.ProbeBrickPool.DataLocation : System.ValueType
UnityEngine.Rendering.ProbeBrickPool.DataLocation = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickPool.DataLocation UnityEngine.Rendering.ProbeBrickPool.DataLocation
CS.UnityEngine.Rendering.ProbeBrickPool.DataLocation = UnityEngine.Rendering.ProbeBrickPool.DataLocation


---@class UnityEngine.Rendering.ProbeCellIndices.IndexMetaData : System.ValueType
UnityEngine.Rendering.ProbeCellIndices.IndexMetaData = {}
---@alias CS.UnityEngine.Rendering.ProbeCellIndices.IndexMetaData UnityEngine.Rendering.ProbeCellIndices.IndexMetaData
CS.UnityEngine.Rendering.ProbeCellIndices.IndexMetaData = UnityEngine.Rendering.ProbeCellIndices.IndexMetaData


---@class UnityEngine.Rendering.ProbeReferenceVolume.Cell : System.Object
---@field position UnityEngine.Vector3Int
---@field index number
---@field probeCount number
---@field minSubdiv number
---@field maxSubdiv number
---@field indexChunkCount number
---@field shChunkCount number
---@field hasTwoScenarios boolean
---@field shBands UnityEngine.Rendering.ProbeVolumeSHBands
---@field scenario0 UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData
---@field scenario1 UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData
---@field bricks Unity.Collections.NativeArray
---@field validityNeighMaskData Unity.Collections.NativeArray
---@field probePositions Unity.Collections.NativeArray
---@field touchupVolumeInteraction Unity.Collections.NativeArray
---@field offsetVectors Unity.Collections.NativeArray
---@field validity Unity.Collections.NativeArray
---@field bakingScenario UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData
UnityEngine.Rendering.ProbeReferenceVolume.Cell = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.Cell UnityEngine.Rendering.ProbeReferenceVolume.Cell
CS.UnityEngine.Rendering.ProbeReferenceVolume.Cell = UnityEngine.Rendering.ProbeReferenceVolume.Cell

---@return UnityEngine.Rendering.ProbeReferenceVolume.Cell
function UnityEngine.Rendering.ProbeReferenceVolume.Cell.New() end

---@class UnityEngine.Rendering.ProbeReferenceVolume.CellInfo : System.Object
---@field cell UnityEngine.Rendering.ProbeReferenceVolume.Cell
---@field blendingCell UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo
---@field chunkList System.Collections.Generic.List
---@field flatIdxInCellIndices number
---@field loaded boolean
---@field updateInfo UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo
---@field indexUpdated boolean
---@field tempUpdateInfo UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo
---@field sourceAssetInstanceID number
---@field streamingScore number
---@field referenceCount number
---@field debugProbes UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes
UnityEngine.Rendering.ProbeReferenceVolume.CellInfo = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.CellInfo UnityEngine.Rendering.ProbeReferenceVolume.CellInfo
CS.UnityEngine.Rendering.ProbeReferenceVolume.CellInfo = UnityEngine.Rendering.ProbeReferenceVolume.CellInfo

---@return UnityEngine.Rendering.ProbeReferenceVolume.CellInfo
function UnityEngine.Rendering.ProbeReferenceVolume.CellInfo.New() end
---@param other UnityEngine.Rendering.ProbeReferenceVolume.CellInfo
---@return number
function UnityEngine.Rendering.ProbeReferenceVolume.CellInfo:CompareTo(other) end
function UnityEngine.Rendering.ProbeReferenceVolume.CellInfo:Clear() end

---@class UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo : System.Object
---@field cellInfo UnityEngine.Rendering.ProbeReferenceVolume.CellInfo
---@field chunkList System.Collections.Generic.List
---@field streamingScore number
---@field blendingFactor number
---@field blending boolean
UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo
CS.UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo = UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo

---@return UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo.New() end
---@param other UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo
---@return number
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:CompareTo(other) end
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:Clear() end
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:MarkUpToDate() end
---@return boolean
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:IsUpToDate() end
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:ForceReupload() end
---@return boolean
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:ShouldReupload() end
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:Prioritize() end
---@return boolean
function UnityEngine.Rendering.ProbeReferenceVolume.BlendingCellInfo:ShouldPrioritize() end

---@class UnityEngine.Rendering.ProbeReferenceVolume.Volume : System.ValueType
UnityEngine.Rendering.ProbeReferenceVolume.Volume = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.Volume UnityEngine.Rendering.ProbeReferenceVolume.Volume
CS.UnityEngine.Rendering.ProbeReferenceVolume.Volume = UnityEngine.Rendering.ProbeReferenceVolume.Volume

---@overload fun(trs: UnityEngine.Matrix4x4, maxSubdivision: number, minSubdivision: number) : UnityEngine.Rendering.ProbeReferenceVolume.Volume
---@overload fun(corner: UnityEngine.Vector3, X: UnityEngine.Vector3, Y: UnityEngine.Vector3, Z: UnityEngine.Vector3, maxSubdivision: number, minSubdivision: number) : UnityEngine.Rendering.ProbeReferenceVolume.Volume
---@overload fun(copy: UnityEngine.Rendering.ProbeReferenceVolume.Volume) : UnityEngine.Rendering.ProbeReferenceVolume.Volume
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Rendering.ProbeReferenceVolume.Volume
function UnityEngine.Rendering.ProbeReferenceVolume.Volume.New(bounds) end
---@return UnityEngine.Bounds
function UnityEngine.Rendering.ProbeReferenceVolume.Volume:CalculateAABB() end
---@param out_center UnityEngine.Vector3
---@param out_size UnityEngine.Vector3
---@return ,UnityEngine.Vector3,UnityEngine.Vector3
function UnityEngine.Rendering.ProbeReferenceVolume.Volume:CalculateCenterAndSize(out_center, out_size) end
---@param trs UnityEngine.Matrix4x4
function UnityEngine.Rendering.ProbeReferenceVolume.Volume:Transform(trs) end
---@return string
function UnityEngine.Rendering.ProbeReferenceVolume.Volume:ToString() end
---@param other UnityEngine.Rendering.ProbeReferenceVolume.Volume
---@return boolean
function UnityEngine.Rendering.ProbeReferenceVolume.Volume:Equals(other) end

---@class UnityEngine.Rendering.ProbeReferenceVolume.RefVolTransform : System.ValueType
---@field posWS UnityEngine.Vector3
---@field rot UnityEngine.Quaternion
---@field scale number
UnityEngine.Rendering.ProbeReferenceVolume.RefVolTransform = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.RefVolTransform UnityEngine.Rendering.ProbeReferenceVolume.RefVolTransform
CS.UnityEngine.Rendering.ProbeReferenceVolume.RefVolTransform = UnityEngine.Rendering.ProbeReferenceVolume.RefVolTransform


---@class UnityEngine.Rendering.ProbeReferenceVolume.RuntimeResources : System.ValueType
---@field index UnityEngine.ComputeBuffer
---@field cellIndices UnityEngine.ComputeBuffer
---@field L0_L1rx UnityEngine.RenderTexture
---@field L1_G_ry UnityEngine.RenderTexture
---@field L1_B_rz UnityEngine.RenderTexture
---@field L2_0 UnityEngine.RenderTexture
---@field L2_1 UnityEngine.RenderTexture
---@field L2_2 UnityEngine.RenderTexture
---@field L2_3 UnityEngine.RenderTexture
---@field Validity UnityEngine.Texture3D
UnityEngine.Rendering.ProbeReferenceVolume.RuntimeResources = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.RuntimeResources UnityEngine.Rendering.ProbeReferenceVolume.RuntimeResources
CS.UnityEngine.Rendering.ProbeReferenceVolume.RuntimeResources = UnityEngine.Rendering.ProbeReferenceVolume.RuntimeResources


---@class UnityEngine.Rendering.ProbeReferenceVolume.ExtraDataActionInput : System.ValueType
UnityEngine.Rendering.ProbeReferenceVolume.ExtraDataActionInput = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.ExtraDataActionInput UnityEngine.Rendering.ProbeReferenceVolume.ExtraDataActionInput
CS.UnityEngine.Rendering.ProbeReferenceVolume.ExtraDataActionInput = UnityEngine.Rendering.ProbeReferenceVolume.ExtraDataActionInput


---@class UnityEngine.Rendering.ProbeReferenceVolume.InitInfo : System.ValueType
---@field pendingMinCellPosition UnityEngine.Vector3Int
---@field pendingMaxCellPosition UnityEngine.Vector3Int
UnityEngine.Rendering.ProbeReferenceVolume.InitInfo = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.InitInfo UnityEngine.Rendering.ProbeReferenceVolume.InitInfo
CS.UnityEngine.Rendering.ProbeReferenceVolume.InitInfo = UnityEngine.Rendering.ProbeReferenceVolume.InitInfo


---@class UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes : System.Object
---@field probeBuffers System.Collections.Generic.List
---@field offsetBuffers System.Collections.Generic.List
---@field props System.Collections.Generic.List
UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes
CS.UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes = UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes

---@return UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes
function UnityEngine.Rendering.ProbeReferenceVolume.CellInstancedDebugProbes.New() end

---@class UnityEngine.Rendering.ProbeReferenceVolumeProfile.Version
---@field Initial UnityEngine.Rendering.ProbeReferenceVolumeProfile.Version
UnityEngine.Rendering.ProbeReferenceVolumeProfile.Version = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolumeProfile.Version UnityEngine.Rendering.ProbeReferenceVolumeProfile.Version
CS.UnityEngine.Rendering.ProbeReferenceVolumeProfile.Version = UnityEngine.Rendering.ProbeReferenceVolumeProfile.Version


---@class UnityEngine.Rendering.ProbeVolume.Mode
---@field Global UnityEngine.Rendering.ProbeVolume.Mode
---@field Scene UnityEngine.Rendering.ProbeVolume.Mode
---@field Local UnityEngine.Rendering.ProbeVolume.Mode
UnityEngine.Rendering.ProbeVolume.Mode = {}
---@alias CS.UnityEngine.Rendering.ProbeVolume.Mode UnityEngine.Rendering.ProbeVolume.Mode
CS.UnityEngine.Rendering.ProbeVolume.Mode = UnityEngine.Rendering.ProbeVolume.Mode


---@class UnityEngine.Rendering.ProbeVolume.Version
---@field Initial UnityEngine.Rendering.ProbeVolume.Version
---@field LocalMode UnityEngine.Rendering.ProbeVolume.Version
---@field Count UnityEngine.Rendering.ProbeVolume.Version
UnityEngine.Rendering.ProbeVolume.Version = {}
---@alias CS.UnityEngine.Rendering.ProbeVolume.Version UnityEngine.Rendering.ProbeVolume.Version
CS.UnityEngine.Rendering.ProbeVolume.Version = UnityEngine.Rendering.ProbeVolume.Version


---@class UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field First UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field AddProbeVolumesAtlasEncodingModes UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field PV2 UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field ChunkBasedIndex UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field BinaryRuntimeDebugSplit UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field BinaryTextureData UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field Max UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
---@field Current UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion
CS.UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion = UnityEngine.Rendering.ProbeVolumeAsset.AssetVersion


---@class UnityEngine.Rendering.ProbeVolumeAsset.CellCounts : System.ValueType
---@field bricksCount number
---@field probesCount number
---@field offsetsCount number
---@field chunksCount number
UnityEngine.Rendering.ProbeVolumeAsset.CellCounts = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeAsset.CellCounts UnityEngine.Rendering.ProbeVolumeAsset.CellCounts
CS.UnityEngine.Rendering.ProbeVolumeAsset.CellCounts = UnityEngine.Rendering.ProbeVolumeAsset.CellCounts

---@param o UnityEngine.Rendering.ProbeVolumeAsset.CellCounts
function UnityEngine.Rendering.ProbeVolumeAsset.CellCounts:Add(o) end

---@class UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion
---@field Initial UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion
---@field ThreadedVirtualOffset UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion
---@field Max UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion
---@field Current UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion
UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion
CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion = UnityEngine.Rendering.ProbeVolumeBakingProcessSettings.SettingsVersion


---@class UnityEngine.Rendering.GIContributors.TerrainContributor : System.ValueType
---@field component UnityEngine.Terrain
---@field boundsWithTrees UnityEngine.Bounds
---@field boundsTerrainOnly UnityEngine.Bounds
---@field treePrototypes UnityEngine.Rendering.GIContributors.TerrainContributor.TreePrototype[]
UnityEngine.Rendering.GIContributors.TerrainContributor = {}
---@alias CS.UnityEngine.Rendering.GIContributors.TerrainContributor UnityEngine.Rendering.GIContributors.TerrainContributor
CS.UnityEngine.Rendering.GIContributors.TerrainContributor = UnityEngine.Rendering.GIContributors.TerrainContributor


---@class UnityEngine.Rendering.GIContributors.ContributorFilter
---@field All UnityEngine.Rendering.GIContributors.ContributorFilter
---@field Scene UnityEngine.Rendering.GIContributors.ContributorFilter
---@field Selection UnityEngine.Rendering.GIContributors.ContributorFilter
UnityEngine.Rendering.GIContributors.ContributorFilter = {}
---@alias CS.UnityEngine.Rendering.GIContributors.ContributorFilter UnityEngine.Rendering.GIContributors.ContributorFilter
CS.UnityEngine.Rendering.GIContributors.ContributorFilter = UnityEngine.Rendering.GIContributors.ContributorFilter


---@class UnityEngine.Rendering.ProbeVolumePerSceneData.PerScenarioData : System.ValueType
---@field sceneHash number
---@field cellDataAsset UnityEngine.TextAsset
---@field cellOptionalDataAsset UnityEngine.TextAsset
UnityEngine.Rendering.ProbeVolumePerSceneData.PerScenarioData = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumePerSceneData.PerScenarioData UnityEngine.Rendering.ProbeVolumePerSceneData.PerScenarioData
CS.UnityEngine.Rendering.ProbeVolumePerSceneData.PerScenarioData = UnityEngine.Rendering.ProbeVolumePerSceneData.PerScenarioData


---@class UnityEngine.Rendering.ProbeVolumePerSceneData.SerializablePerScenarioDataItem : System.ValueType
---@field scenario string
---@field data UnityEngine.Rendering.ProbeVolumePerSceneData.PerScenarioData
UnityEngine.Rendering.ProbeVolumePerSceneData.SerializablePerScenarioDataItem = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumePerSceneData.SerializablePerScenarioDataItem UnityEngine.Rendering.ProbeVolumePerSceneData.SerializablePerScenarioDataItem
CS.UnityEngine.Rendering.ProbeVolumePerSceneData.SerializablePerScenarioDataItem = UnityEngine.Rendering.ProbeVolumePerSceneData.SerializablePerScenarioDataItem


---@class UnityEngine.Rendering.ProbeVolumeSceneData.SerializableBoundItem : System.ValueType
---@field sceneGUID string
---@field bounds UnityEngine.Bounds
UnityEngine.Rendering.ProbeVolumeSceneData.SerializableBoundItem = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializableBoundItem UnityEngine.Rendering.ProbeVolumeSceneData.SerializableBoundItem
CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializableBoundItem = UnityEngine.Rendering.ProbeVolumeSceneData.SerializableBoundItem


---@class UnityEngine.Rendering.ProbeVolumeSceneData.SerializableHasPVItem : System.ValueType
---@field sceneGUID string
---@field hasProbeVolumes boolean
UnityEngine.Rendering.ProbeVolumeSceneData.SerializableHasPVItem = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializableHasPVItem UnityEngine.Rendering.ProbeVolumeSceneData.SerializableHasPVItem
CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializableHasPVItem = UnityEngine.Rendering.ProbeVolumeSceneData.SerializableHasPVItem


---@class UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVProfile : System.ValueType
---@field sceneGUID string
---@field profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVProfile = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVProfile UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVProfile
CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVProfile = UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVProfile


---@class UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVBakeSettings : System.ValueType
---@field sceneGUID string
---@field settings UnityEngine.Rendering.ProbeVolumeBakingProcessSettings
UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVBakeSettings = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVBakeSettings UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVBakeSettings
CS.UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVBakeSettings = UnityEngine.Rendering.ProbeVolumeSceneData.SerializablePVBakeSettings


---@class UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet : System.Object
---@field name string
---@field sceneGUIDs System.Collections.Generic.List
---@field settings UnityEngine.Rendering.ProbeVolumeBakingProcessSettings
---@field profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
---@field lightingScenarios System.Collections.Generic.List
UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet
CS.UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet = UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet

---@return UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet
function UnityEngine.Rendering.ProbeVolumeSceneData.BakingSet.New() end

---@class UnityEngine.Rendering.LensFlareCommonSRP.LensFlareCompInfo : System.Object
UnityEngine.Rendering.LensFlareCommonSRP.LensFlareCompInfo = {}
---@alias CS.UnityEngine.Rendering.LensFlareCommonSRP.LensFlareCompInfo UnityEngine.Rendering.LensFlareCommonSRP.LensFlareCompInfo
CS.UnityEngine.Rendering.LensFlareCommonSRP.LensFlareCompInfo = UnityEngine.Rendering.LensFlareCommonSRP.LensFlareCompInfo


---@class UnityEngine.Rendering.Hammersley.Hammersley2dSeq16 : System.ValueType
---@field hammersley2dSeq16 UnityEngine.Rendering.Hammersley.Hammersley2dSeq16.<hammersley2dSeq16>e__FixedBuffer
UnityEngine.Rendering.Hammersley.Hammersley2dSeq16 = {}
---@alias CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq16 UnityEngine.Rendering.Hammersley.Hammersley2dSeq16
CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq16 = UnityEngine.Rendering.Hammersley.Hammersley2dSeq16


---@class UnityEngine.Rendering.Hammersley.Hammersley2dSeq32 : System.ValueType
---@field hammersley2dSeq32 UnityEngine.Rendering.Hammersley.Hammersley2dSeq32.<hammersley2dSeq32>e__FixedBuffer
UnityEngine.Rendering.Hammersley.Hammersley2dSeq32 = {}
---@alias CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq32 UnityEngine.Rendering.Hammersley.Hammersley2dSeq32
CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq32 = UnityEngine.Rendering.Hammersley.Hammersley2dSeq32


---@class UnityEngine.Rendering.Hammersley.Hammersley2dSeq64 : System.ValueType
---@field hammersley2dSeq64 UnityEngine.Rendering.Hammersley.Hammersley2dSeq64.<hammersley2dSeq64>e__FixedBuffer
UnityEngine.Rendering.Hammersley.Hammersley2dSeq64 = {}
---@alias CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq64 UnityEngine.Rendering.Hammersley.Hammersley2dSeq64
CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq64 = UnityEngine.Rendering.Hammersley.Hammersley2dSeq64


---@class UnityEngine.Rendering.Hammersley.Hammersley2dSeq256 : System.ValueType
---@field hammersley2dSeq256 UnityEngine.Rendering.Hammersley.Hammersley2dSeq256.<hammersley2dSeq256>e__FixedBuffer
UnityEngine.Rendering.Hammersley.Hammersley2dSeq256 = {}
---@alias CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq256 UnityEngine.Rendering.Hammersley.Hammersley2dSeq256
CS.UnityEngine.Rendering.Hammersley.Hammersley2dSeq256 = UnityEngine.Rendering.Hammersley.Hammersley2dSeq256


---@class UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType
---@field Padding UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType
---@field PaddingMultiply UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType
---@field OctahedralPadding UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType
---@field OctahedralPaddingMultiply UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType
UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType = {}
---@alias CS.UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType
CS.UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType = UnityEngine.Rendering.PowerOfTwoTextureAtlas.BlitType


---@class UnityEngine.Rendering.RTHandleSystem.ResizeMode
---@field Auto UnityEngine.Rendering.RTHandleSystem.ResizeMode
---@field OnDemand UnityEngine.Rendering.RTHandleSystem.ResizeMode
UnityEngine.Rendering.RTHandleSystem.ResizeMode = {}
---@alias CS.UnityEngine.Rendering.RTHandleSystem.ResizeMode UnityEngine.Rendering.RTHandleSystem.ResizeMode
CS.UnityEngine.Rendering.RTHandleSystem.ResizeMode = UnityEngine.Rendering.RTHandleSystem.ResizeMode


---@class UnityEngine.Rendering.AtlasAllocator.AtlasNode : System.Object
---@field m_RightChild UnityEngine.Rendering.AtlasAllocator.AtlasNode
---@field m_BottomChild UnityEngine.Rendering.AtlasAllocator.AtlasNode
---@field m_Rect UnityEngine.Vector4
UnityEngine.Rendering.AtlasAllocator.AtlasNode = {}
---@alias CS.UnityEngine.Rendering.AtlasAllocator.AtlasNode UnityEngine.Rendering.AtlasAllocator.AtlasNode
CS.UnityEngine.Rendering.AtlasAllocator.AtlasNode = UnityEngine.Rendering.AtlasAllocator.AtlasNode

---@return UnityEngine.Rendering.AtlasAllocator.AtlasNode
function UnityEngine.Rendering.AtlasAllocator.AtlasNode.New() end
---@param ref_pool UnityEngine.Rendering.ObjectPool
---@param width number
---@param height number
---@param powerOfTwoPadding boolean
---@return UnityEngine.Rendering.AtlasAllocator.AtlasNode,UnityEngine.Rendering.ObjectPool
function UnityEngine.Rendering.AtlasAllocator.AtlasNode:Allocate(ref_pool, width, height, powerOfTwoPadding) end
---@param ref_pool UnityEngine.Rendering.ObjectPool
---@return ,UnityEngine.Rendering.ObjectPool
function UnityEngine.Rendering.AtlasAllocator.AtlasNode:Release(ref_pool) end

---@class UnityEngine.Rendering.Texture2DAtlas.BlitType
---@field Default UnityEngine.Rendering.Texture2DAtlas.BlitType
---@field CubeTo2DOctahedral UnityEngine.Rendering.Texture2DAtlas.BlitType
---@field SingleChannel UnityEngine.Rendering.Texture2DAtlas.BlitType
---@field CubeTo2DOctahedralSingleChannel UnityEngine.Rendering.Texture2DAtlas.BlitType
UnityEngine.Rendering.Texture2DAtlas.BlitType = {}
---@alias CS.UnityEngine.Rendering.Texture2DAtlas.BlitType UnityEngine.Rendering.Texture2DAtlas.BlitType
CS.UnityEngine.Rendering.Texture2DAtlas.BlitType = UnityEngine.Rendering.Texture2DAtlas.BlitType


---@class UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool : System.Object
UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool = {}
---@alias CS.UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool
CS.UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool = UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool

---@param capacity number
---@return UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool.New(capacity) end
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool:Dispose() end
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool:Clear() end
---@param parent number
---@return number
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool:AtlasNodeCreate(parent) end
---@param index number
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool:AtlasNodeFree(index) end

---@class UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode : System.ValueType
---@field m_Self number
---@field m_Parent number
---@field m_LeftChild number
---@field m_RightChild number
---@field m_FreelistNext number
---@field m_Flags number
---@field m_Rect UnityEngine.Vector4
UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode = {}
---@alias CS.UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode
CS.UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode = UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode

---@param self number
---@param parent number
---@return UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.New(self, parent) end
---@return boolean
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:IsOccupied() end
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:SetIsOccupied() end
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:ClearIsOccupied() end
---@return boolean
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:IsLeafNode() end
---@param pool UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool
---@param width number
---@param height number
---@return number
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:Allocate(pool, width, height) end
---@param pool UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:ReleaseChildren(pool) end
---@param pool UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:ReleaseAndMerge(pool) end
---@param pool UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNodePool
---@return boolean
function UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode:IsMergeNeeded(pool) end

---@class UnityEngine.Rendering.Blitter.BlitShaderIDs : System.Object
---@field _BlitTexture number
---@field _BlitCubeTexture number
---@field _BlitScaleBias number
---@field _BlitScaleBiasRt number
---@field _BlitMipLevel number
---@field _BlitTextureSize number
---@field _BlitPaddingSize number
---@field _BlitDecodeInstructions number
---@field _InputDepth number
UnityEngine.Rendering.Blitter.BlitShaderIDs = {}
---@alias CS.UnityEngine.Rendering.Blitter.BlitShaderIDs UnityEngine.Rendering.Blitter.BlitShaderIDs
CS.UnityEngine.Rendering.Blitter.BlitShaderIDs = UnityEngine.Rendering.Blitter.BlitShaderIDs


---@class UnityEngine.Rendering.CoreUtils.Sections : System.Object
---@field section1 number
---@field section2 number
---@field section3 number
---@field section4 number
---@field section5 number
---@field section6 number
---@field section7 number
---@field section8 number
UnityEngine.Rendering.CoreUtils.Sections = {}
---@alias CS.UnityEngine.Rendering.CoreUtils.Sections UnityEngine.Rendering.CoreUtils.Sections
CS.UnityEngine.Rendering.CoreUtils.Sections = UnityEngine.Rendering.CoreUtils.Sections


---@class UnityEngine.Rendering.CoreUtils.Priorities : System.Object
---@field assetsCreateShaderMenuPriority number
---@field assetsCreateRenderingMenuPriority number
---@field editMenuPriority number
---@field gameObjectMenuPriority number
---@field srpLensFlareMenuPriority number
UnityEngine.Rendering.CoreUtils.Priorities = {}
---@alias CS.UnityEngine.Rendering.CoreUtils.Priorities UnityEngine.Rendering.CoreUtils.Priorities
CS.UnityEngine.Rendering.CoreUtils.Priorities = UnityEngine.Rendering.CoreUtils.Priorities


---@class UnityEngine.Rendering.FSRUtils.ShaderConstants : System.Object
---@field _FsrEasuConstants0 number
---@field _FsrEasuConstants1 number
---@field _FsrEasuConstants2 number
---@field _FsrEasuConstants3 number
---@field _FsrRcasConstants number
UnityEngine.Rendering.FSRUtils.ShaderConstants = {}
---@alias CS.UnityEngine.Rendering.FSRUtils.ShaderConstants UnityEngine.Rendering.FSRUtils.ShaderConstants
CS.UnityEngine.Rendering.FSRUtils.ShaderConstants = UnityEngine.Rendering.FSRUtils.ShaderConstants


---@class UnityEngine.Rendering.HableCurve.Segment : System.Object
---@field offsetX number
---@field offsetY number
---@field scaleX number
---@field scaleY number
---@field lnA number
---@field B number
UnityEngine.Rendering.HableCurve.Segment = {}
---@alias CS.UnityEngine.Rendering.HableCurve.Segment UnityEngine.Rendering.HableCurve.Segment
CS.UnityEngine.Rendering.HableCurve.Segment = UnityEngine.Rendering.HableCurve.Segment

---@return UnityEngine.Rendering.HableCurve.Segment
function UnityEngine.Rendering.HableCurve.Segment.New() end
---@param x number
---@return number
function UnityEngine.Rendering.HableCurve.Segment:Eval(x) end

---@class UnityEngine.Rendering.HableCurve.DirectParams : System.ValueType
UnityEngine.Rendering.HableCurve.DirectParams = {}
---@alias CS.UnityEngine.Rendering.HableCurve.DirectParams UnityEngine.Rendering.HableCurve.DirectParams
CS.UnityEngine.Rendering.HableCurve.DirectParams = UnityEngine.Rendering.HableCurve.DirectParams


---@class UnityEngine.Rendering.HableCurve.Uniforms : System.Object
---@field curve UnityEngine.Vector4
---@field toeSegmentA UnityEngine.Vector4
---@field toeSegmentB UnityEngine.Vector4
---@field midSegmentA UnityEngine.Vector4
---@field midSegmentB UnityEngine.Vector4
---@field shoSegmentA UnityEngine.Vector4
---@field shoSegmentB UnityEngine.Vector4
UnityEngine.Rendering.HableCurve.Uniforms = {}
---@alias CS.UnityEngine.Rendering.HableCurve.Uniforms UnityEngine.Rendering.HableCurve.Uniforms
CS.UnityEngine.Rendering.HableCurve.Uniforms = UnityEngine.Rendering.HableCurve.Uniforms


---@class UnityEngine.Rendering.HDROutputUtils.Operation
---@field None UnityEngine.Rendering.HDROutputUtils.Operation
---@field ColorConversion UnityEngine.Rendering.HDROutputUtils.Operation
---@field ColorEncoding UnityEngine.Rendering.HDROutputUtils.Operation
UnityEngine.Rendering.HDROutputUtils.Operation = {}
---@alias CS.UnityEngine.Rendering.HDROutputUtils.Operation UnityEngine.Rendering.HDROutputUtils.Operation
CS.UnityEngine.Rendering.HDROutputUtils.Operation = UnityEngine.Rendering.HDROutputUtils.Operation


---@class UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation : System.ValueType
---@field maxFullFrameToneMapLuminance number
---@field maxToneMapLuminance number
---@field minToneMapLuminance number
---@field paperWhiteNits number
UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation = {}
---@alias CS.UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation
CS.UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation = UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation

---@param maxFullFrameToneMapLuminance number
---@param maxToneMapLuminance number
---@param minToneMapLuminance number
---@param hdrPaperWhiteNits number
---@return UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation
function UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation.New(maxFullFrameToneMapLuminance, maxToneMapLuminance, minToneMapLuminance, hdrPaperWhiteNits) end

---@class UnityEngine.Rendering.HDROutputUtils.ShaderKeywords : System.Object
---@field HDR_COLORSPACE_CONVERSION string
---@field HDR_ENCODING string
---@field HDR_COLORSPACE_CONVERSION_AND_ENCODING string
---@field HDR_INPUT string
UnityEngine.Rendering.HDROutputUtils.ShaderKeywords = {}
---@alias CS.UnityEngine.Rendering.HDROutputUtils.ShaderKeywords UnityEngine.Rendering.HDROutputUtils.ShaderKeywords
CS.UnityEngine.Rendering.HDROutputUtils.ShaderKeywords = UnityEngine.Rendering.HDROutputUtils.ShaderKeywords


---@class UnityEngine.Rendering.HDROutputUtils.ShaderPropertyId : System.Object
---@field hdrColorSpace number
---@field hdrEncoding number
UnityEngine.Rendering.HDROutputUtils.ShaderPropertyId = {}
---@alias CS.UnityEngine.Rendering.HDROutputUtils.ShaderPropertyId UnityEngine.Rendering.HDROutputUtils.ShaderPropertyId
CS.UnityEngine.Rendering.HDROutputUtils.ShaderPropertyId = UnityEngine.Rendering.HDROutputUtils.ShaderPropertyId


---@class UnityEngine.Rendering.ReloadAttribute.Package
---@field Builtin UnityEngine.Rendering.ReloadAttribute.Package
---@field Root UnityEngine.Rendering.ReloadAttribute.Package
---@field BuiltinExtra UnityEngine.Rendering.ReloadAttribute.Package
UnityEngine.Rendering.ReloadAttribute.Package = {}
---@alias CS.UnityEngine.Rendering.ReloadAttribute.Package UnityEngine.Rendering.ReloadAttribute.Package
CS.UnityEngine.Rendering.ReloadAttribute.Package = UnityEngine.Rendering.ReloadAttribute.Package


---@class UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic : System.Object
UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic = {}
---@alias CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic
CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic = UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic


---@class UnityEngine.Rendering.VolumeComponent.Indent : UnityEngine.PropertyAttribute
---@field relativeAmount number
UnityEngine.Rendering.VolumeComponent.Indent = {}
---@alias CS.UnityEngine.Rendering.VolumeComponent.Indent UnityEngine.Rendering.VolumeComponent.Indent
CS.UnityEngine.Rendering.VolumeComponent.Indent = UnityEngine.Rendering.VolumeComponent.Indent

---@param relativeAmount number
---@return UnityEngine.Rendering.VolumeComponent.Indent
function UnityEngine.Rendering.VolumeComponent.Indent.New(relativeAmount) end

---@class UnityEngine.Rendering.BoolParameter.DisplayType
---@field Checkbox UnityEngine.Rendering.BoolParameter.DisplayType
---@field EnumPopup UnityEngine.Rendering.BoolParameter.DisplayType
UnityEngine.Rendering.BoolParameter.DisplayType = {}
---@alias CS.UnityEngine.Rendering.BoolParameter.DisplayType UnityEngine.Rendering.BoolParameter.DisplayType
CS.UnityEngine.Rendering.BoolParameter.DisplayType = UnityEngine.Rendering.BoolParameter.DisplayType


---@class UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator : System.ValueType
---@field Current T&
UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator = {}
---@alias CS.UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator
CS.UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator = UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator

---@param setOwner UnityEngine.Rendering.DynamicArray[T]
---@param first number
---@param numItems number
---@return UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator
function UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator.New(setOwner, first, numItems) end
---@return boolean
function UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator:MoveNext() end
function UnityEngine.Rendering.DynamicArray.RangeEnumerable.RangeIterator:Reset() end

---@class UnityEngine.Rendering.DebugUI.Foldout.ContextMenuItem : System.ValueType
---@field displayName string
---@field action System.Action
UnityEngine.Rendering.DebugUI.Foldout.ContextMenuItem = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Foldout.ContextMenuItem UnityEngine.Rendering.DebugUI.Foldout.ContextMenuItem
CS.UnityEngine.Rendering.DebugUI.Foldout.ContextMenuItem = UnityEngine.Rendering.DebugUI.Foldout.ContextMenuItem


---@class UnityEngine.Rendering.DebugUI.Table.Row : UnityEngine.Rendering.DebugUI.Foldout
UnityEngine.Rendering.DebugUI.Table.Row = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Table.Row UnityEngine.Rendering.DebugUI.Table.Row
CS.UnityEngine.Rendering.DebugUI.Table.Row = UnityEngine.Rendering.DebugUI.Table.Row

---@return UnityEngine.Rendering.DebugUI.Table.Row
function UnityEngine.Rendering.DebugUI.Table.Row.New() end

---@class UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip : System.ValueType
---@field name string
---@field tooltip string
UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip = {}
---@alias CS.UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
CS.UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip = UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip


---@class UnityEngine.Rendering.DebugUI.MessageBox.Style
---@field Info UnityEngine.Rendering.DebugUI.MessageBox.Style
---@field Warning UnityEngine.Rendering.DebugUI.MessageBox.Style
---@field Error UnityEngine.Rendering.DebugUI.MessageBox.Style
UnityEngine.Rendering.DebugUI.MessageBox.Style = {}
---@alias CS.UnityEngine.Rendering.DebugUI.MessageBox.Style UnityEngine.Rendering.DebugUI.MessageBox.Style
CS.UnityEngine.Rendering.DebugUI.MessageBox.Style = UnityEngine.Rendering.DebugUI.MessageBox.Style


---@class UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData : System.ValueType
---@field shL0L1RxData Unity.Collections.NativeArray
---@field shL1GL1RyData Unity.Collections.NativeArray
---@field shL1BL1RzData Unity.Collections.NativeArray
---@field shL2Data_0 Unity.Collections.NativeArray
---@field shL2Data_1 Unity.Collections.NativeArray
---@field shL2Data_2 Unity.Collections.NativeArray
---@field shL2Data_3 Unity.Collections.NativeArray
UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData
CS.UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData = UnityEngine.Rendering.ProbeReferenceVolume.Cell.PerScenarioData


---@class UnityEngine.Rendering.GIContributors.TerrainContributor.TreePrototype : System.ValueType
---@field component UnityEngine.MeshRenderer
---@field transform UnityEngine.Matrix4x4
---@field prefabBounds UnityEngine.Bounds
---@field instances System.Collections.Generic.List
UnityEngine.Rendering.GIContributors.TerrainContributor.TreePrototype = {}
---@alias CS.UnityEngine.Rendering.GIContributors.TerrainContributor.TreePrototype UnityEngine.Rendering.GIContributors.TerrainContributor.TreePrototype
CS.UnityEngine.Rendering.GIContributors.TerrainContributor.TreePrototype = UnityEngine.Rendering.GIContributors.TerrainContributor.TreePrototype


---@class UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.AtlasNodeFlags
---@field IsOccupied UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.AtlasNodeFlags
UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.AtlasNodeFlags = {}
---@alias CS.UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.AtlasNodeFlags UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.AtlasNodeFlags
CS.UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.AtlasNodeFlags = UnityEngine.Rendering.AtlasAllocatorDynamic.AtlasNode.AtlasNodeFlags


---@class UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.Data : System.ValueType
---@field scene_guid string
UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.Data = {}
---@alias CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.Data UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.Data
CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.Data = UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.Data


---@class UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.SceneExtensions : System.Object
UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.SceneExtensions = {}
---@alias CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.SceneExtensions UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.SceneExtensions
CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.SceneExtensions = UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.SceneExtensions

---@param scene UnityEngine.SceneManagement.Scene
---@return string
function UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.SceneExtensions.GetGUID(scene) end

---@class UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions : System.Object
UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions = {}
---@alias CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions
CS.UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions = UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions

---@param eventName string
---@param maxEventPerHour number
---@param maxItems number
---@param vendorKey string
---@return boolean
function UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions.RegisterEventWithLimit(eventName, maxEventPerHour, maxItems, vendorKey) end
---@param eventName string
---@param parameters System.Object
---@return boolean
function UnityEngine.Rendering.SceneRenderPipeline.SceneRenderPipelineAnalytic.EditorAnalyticsExtensions.SendEventWithLimit(eventName, parameters) end

---@class CinemachineShotClipEditor : UnityEditor.Timeline.ClipEditor
---@field TimelineGlobalToLocalTime CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate
CinemachineShotClipEditor = {}
---@alias CS.CinemachineShotClipEditor CinemachineShotClipEditor
CS.CinemachineShotClipEditor = CinemachineShotClipEditor

---@return CinemachineShotClipEditor
function CinemachineShotClipEditor.New() end
---@param clip UnityEngine.Timeline.TimelineClip
---@return UnityEditor.Timeline.ClipDrawOptions
function CinemachineShotClipEditor:GetClipOptions(clip) end
---@param clip UnityEngine.Timeline.TimelineClip
function CinemachineShotClipEditor:OnClipChanged(clip) end
---@param clip UnityEngine.Timeline.TimelineClip
---@param track UnityEngine.Timeline.TrackAsset
---@param clonedFrom UnityEngine.Timeline.TimelineClip
function CinemachineShotClipEditor:OnCreate(clip, track, clonedFrom) end
---@param clip UnityEngine.Timeline.TimelineClip
---@param region UnityEditor.Timeline.ClipBackgroundRegion
function CinemachineShotClipEditor:DrawBackground(clip, region) end

---@class CinemachineShotEditor : Cinemachine.Editor.BaseEditor
---@field AutoCreateShotFromSceneView boolean
---@field UseScrubbingCache boolean
CinemachineShotEditor = {}
---@alias CS.CinemachineShotEditor CinemachineShotEditor
CS.CinemachineShotEditor = CinemachineShotEditor

---@return CinemachineShotEditor
function CinemachineShotEditor.New() end
---@return Cinemachine.CinemachineVirtualCameraBase
function CinemachineShotEditor.CreatePassiveVcamFromSceneView() end
function CinemachineShotEditor:OnInspectorGUI() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class CinemachineShotClipEditor.EditorInitialize : System.Object
CinemachineShotClipEditor.EditorInitialize = {}
---@alias CS.CinemachineShotClipEditor.EditorInitialize CinemachineShotClipEditor.EditorInitialize
CS.CinemachineShotClipEditor.EditorInitialize = CinemachineShotClipEditor.EditorInitialize

---@return CinemachineShotClipEditor.EditorInitialize
function CinemachineShotClipEditor.EditorInitialize.New() end

---@class CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate : System.MulticastDelegate
CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate = {}
---@alias CS.CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate
CS.CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate = CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate

---@param object System.Object
---@param method System.IntPtr
---@return CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate
function CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate.New(object, method) end
---@param globalTime number
---@return number
function CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate:Invoke(globalTime) end
---@param globalTime number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate:BeginInvoke(globalTime, callback, object) end
---@param result System.IAsyncResult
---@return number
function CinemachineShotClipEditor.TimelineGlobalToLocalTimeDelegate:EndInvoke(result) end

---@class CinemachineShotEditor.SyncCacheEnabledSetting : System.Object
CinemachineShotEditor.SyncCacheEnabledSetting = {}
---@alias CS.CinemachineShotEditor.SyncCacheEnabledSetting CinemachineShotEditor.SyncCacheEnabledSetting
CS.CinemachineShotEditor.SyncCacheEnabledSetting = CinemachineShotEditor.SyncCacheEnabledSetting

---@return CinemachineShotEditor.SyncCacheEnabledSetting
function CinemachineShotEditor.SyncCacheEnabledSetting.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.ProBuilder.Stl.FileType
---@field Ascii UnityEngine.ProBuilder.Stl.FileType
---@field Binary UnityEngine.ProBuilder.Stl.FileType
UnityEngine.ProBuilder.Stl.FileType = {}
---@alias CS.UnityEngine.ProBuilder.Stl.FileType UnityEngine.ProBuilder.Stl.FileType
CS.UnityEngine.ProBuilder.Stl.FileType = UnityEngine.ProBuilder.Stl.FileType


---@class UnityEngine.ProBuilder.Stl.pb_Stl : System.Object
UnityEngine.ProBuilder.Stl.pb_Stl = {}
---@alias CS.UnityEngine.ProBuilder.Stl.pb_Stl UnityEngine.ProBuilder.Stl.pb_Stl
CS.UnityEngine.ProBuilder.Stl.pb_Stl = UnityEngine.ProBuilder.Stl.pb_Stl

---@overload fun(path: string, mesh: UnityEngine.Mesh, type: UnityEngine.ProBuilder.Stl.FileType, convertToRightHandedCoordinates: boolean) : boolean
---@param path string
---@param meshes System.Collections.Generic.IList
---@param type UnityEngine.ProBuilder.Stl.FileType
---@param convertToRightHandedCoordinates boolean
---@return boolean
function UnityEngine.ProBuilder.Stl.pb_Stl.WriteFile(path, meshes, type, convertToRightHandedCoordinates) end
---@overload fun(mesh: UnityEngine.Mesh, convertToRightHandedCoordinates: boolean) : string
---@param meshes System.Collections.Generic.IList
---@param convertToRightHandedCoordinates boolean
---@return string
function UnityEngine.ProBuilder.Stl.pb_Stl.WriteString(meshes, convertToRightHandedCoordinates) end

---@class UnityEngine.ProBuilder.Stl.pb_Stl_Exporter : System.Object
UnityEngine.ProBuilder.Stl.pb_Stl_Exporter = {}
---@alias CS.UnityEngine.ProBuilder.Stl.pb_Stl_Exporter UnityEngine.ProBuilder.Stl.pb_Stl_Exporter
CS.UnityEngine.ProBuilder.Stl.pb_Stl_Exporter = UnityEngine.ProBuilder.Stl.pb_Stl_Exporter

---@param path string
---@param gameObjects UnityEngine.GameObject[]
---@param type UnityEngine.ProBuilder.Stl.FileType
---@return boolean
function UnityEngine.ProBuilder.Stl.pb_Stl_Exporter.Export(path, gameObjects, type) end

---@class UnityEngine.ProBuilder.Stl.pb_Stl_Importer : System.Object
UnityEngine.ProBuilder.Stl.pb_Stl_Importer = {}
---@alias CS.UnityEngine.ProBuilder.Stl.pb_Stl_Importer UnityEngine.ProBuilder.Stl.pb_Stl_Importer
CS.UnityEngine.ProBuilder.Stl.pb_Stl_Importer = UnityEngine.ProBuilder.Stl.pb_Stl_Importer

---@param path string
---@return UnityEngine.Mesh[]
function UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Import(path) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet : System.Object
---@field normal UnityEngine.Vector3
---@field a UnityEngine.Vector3
---@field b UnityEngine.Vector3
---@field c UnityEngine.Vector3
UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet = {}
---@alias CS.UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet
CS.UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet = UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet

---@return UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet
function UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet.New() end
---@return string
function UnityEngine.ProBuilder.Stl.pb_Stl_Importer.Facet:ToString() end

---@class DelegateList : System.Object
---@field Count number
DelegateList = {}
---@alias CS.DelegateList DelegateList
CS.DelegateList = DelegateList

---@param acquireFunc System.Func[System.Action[T],System.Collections.Generic.LinkedListNode[System.Action[T]]]
---@param releaseFunc System.Action[System.Collections.Generic.LinkedListNode[System.Action[T]]]
---@return DelegateList
function DelegateList.New(acquireFunc, releaseFunc) end
---@return DelegateList
function DelegateList.CreateWithGlobalCache() end
---@param action System.Action[T]
function DelegateList:Add(action) end
---@param action System.Action[T]
function DelegateList:Remove(action) end
---@param res T
function DelegateList:Invoke(res) end
function DelegateList:Clear() end

---@class ListWithEvents : System.Object
---@field Item T
---@field Count number
---@field IsReadOnly boolean
ListWithEvents = {}
---@alias CS.ListWithEvents ListWithEvents
CS.ListWithEvents = ListWithEvents

---@return ListWithEvents
function ListWithEvents.New() end
---@param item T
function ListWithEvents:Add(item) end
function ListWithEvents:Clear() end
---@param item T
---@return boolean
function ListWithEvents:Contains(item) end
---@param array T[]
---@param arrayIndex number
function ListWithEvents:CopyTo(array, arrayIndex) end
---@return System.Collections.Generic.IEnumerator[T]
function ListWithEvents:GetEnumerator() end
---@param item T
---@return number
function ListWithEvents:IndexOf(item) end
---@param index number
---@param item T
function ListWithEvents:Insert(index, item) end
---@param item T
---@return boolean
function ListWithEvents:Remove(item) end
---@param index number
function ListWithEvents:RemoveAt(index) end

---@class MonoBehaviourCallbackHooks : UnityEngine.ResourceManagement.Util.ComponentSingleton
---@field Instance MonoBehaviourCallbackHooks -- infered from UnityEngine.ResourceManagement.Util.ComponentSingleton`1[MonoBehaviourCallbackHooks]
MonoBehaviourCallbackHooks = {}
---@alias CS.MonoBehaviourCallbackHooks MonoBehaviourCallbackHooks
CS.MonoBehaviourCallbackHooks = MonoBehaviourCallbackHooks


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.ResourceManagement.ChainOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase[TObject]
UnityEngine.ResourceManagement.ChainOperation = {}
---@alias CS.UnityEngine.ResourceManagement.ChainOperation UnityEngine.ResourceManagement.ChainOperation
CS.UnityEngine.ResourceManagement.ChainOperation = UnityEngine.ResourceManagement.ChainOperation

---@return UnityEngine.ResourceManagement.ChainOperation
function UnityEngine.ResourceManagement.ChainOperation.New() end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.ChainOperation:GetDependencies(deps) end
---@param dependentOp UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle[TObjectDependency]
---@param callback System.Func[UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle[TObjectDependency],UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle[TObject]]
---@param releaseDependenciesOnFailure boolean
function UnityEngine.ResourceManagement.ChainOperation:Init(dependentOp, callback, releaseDependenciesOnFailure) end

---@class UnityEngine.ResourceManagement.ChainOperationTypelessDepedency : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase[TObject]
UnityEngine.ResourceManagement.ChainOperationTypelessDepedency = {}
---@alias CS.UnityEngine.ResourceManagement.ChainOperationTypelessDepedency UnityEngine.ResourceManagement.ChainOperationTypelessDepedency
CS.UnityEngine.ResourceManagement.ChainOperationTypelessDepedency = UnityEngine.ResourceManagement.ChainOperationTypelessDepedency

---@return UnityEngine.ResourceManagement.ChainOperationTypelessDepedency
function UnityEngine.ResourceManagement.ChainOperationTypelessDepedency.New() end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.ChainOperationTypelessDepedency:GetDependencies(deps) end
---@param dependentOp UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param callback System.Func[UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle,UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle[TObject]]
---@param releaseDependenciesOnFailure boolean
function UnityEngine.ResourceManagement.ChainOperationTypelessDepedency:Init(dependentOp, callback, releaseDependenciesOnFailure) end

---@class UnityEngine.ResourceManagement.ResourceManager : System.Object
---@field ExceptionHandler System.Action
---@field InternalIdTransformFunc System.Func
---@field WebRequestOverride System.Action
---@field Allocator UnityEngine.ResourceManagement.Util.IAllocationStrategy
---@field ResourceProviders System.Collections.Generic.IList
---@field CertificateHandlerInstance UnityEngine.Networking.CertificateHandler
UnityEngine.ResourceManagement.ResourceManager = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceManager UnityEngine.ResourceManagement.ResourceManager
CS.UnityEngine.ResourceManagement.ResourceManager = UnityEngine.ResourceManagement.ResourceManager

---@param alloc UnityEngine.ResourceManagement.Util.IAllocationStrategy
---@return UnityEngine.ResourceManagement.ResourceManager
function UnityEngine.ResourceManagement.ResourceManager.New(alloc) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return string
function UnityEngine.ResourceManagement.ResourceManager:TransformInternalId(location) end
---@param receiver UnityEngine.ResourceManagement.IUpdateReceiver
function UnityEngine.ResourceManagement.ResourceManager:AddUpdateReceiver(receiver) end
---@param receiver UnityEngine.ResourceManagement.IUpdateReceiver
function UnityEngine.ResourceManagement.ResourceManager:RemoveUpdateReciever(receiver) end
function UnityEngine.ResourceManagement.ResourceManager:ClearDiagnosticCallbacks() end
---@param func System.Action
function UnityEngine.ResourceManagement.ResourceManager:UnregisterDiagnosticCallback(func) end
---@param func System.Action
function UnityEngine.ResourceManagement.ResourceManager:RegisterDiagnosticCallback(func) end
---@param t System.Type
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider
function UnityEngine.ResourceManagement.ResourceManager:GetResourceProvider(t, location) end
---@param handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceManager:Release(handle) end
---@param handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceManager:Acquire(handle) end
---@param operations System.Collections.Generic.List
---@param releasedCachedOpOnComplete boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceManager:CreateGenericGroupOperation(operations, releasedCachedOpOnComplete) end
---@overload fun(self: UnityEngine.ResourceManagement.ResourceManager, sceneProvider: UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, loadSceneMode: UnityEngine.SceneManagement.LoadSceneMode, activateOnLoad: boolean, priority: number) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param sceneProvider UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param loadSceneParameters UnityEngine.SceneManagement.LoadSceneParameters
---@param activateOnLoad boolean
---@param priority number
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceManager:ProvideScene(sceneProvider, location, loadSceneParameters, activateOnLoad, priority) end
---@param sceneProvider UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider
---@param sceneLoadHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceManager:ReleaseScene(sceneProvider, sceneLoadHandle) end
---@param provider UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param instantiateParameters UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceManager:ProvideInstance(provider, location, instantiateParameters) end
---@param scene UnityEngine.SceneManagement.Scene
function UnityEngine.ResourceManagement.ResourceManager:CleanupSceneInstances(scene) end
function UnityEngine.ResourceManagement.ResourceManager:Dispose() end

---@class UnityEngine.ResourceManagement.IUpdateReceiver
UnityEngine.ResourceManagement.IUpdateReceiver = {}
---@alias CS.UnityEngine.ResourceManagement.IUpdateReceiver UnityEngine.ResourceManagement.IUpdateReceiver
CS.UnityEngine.ResourceManagement.IUpdateReceiver = UnityEngine.ResourceManagement.IUpdateReceiver

---@param unscaledDeltaTime number
function UnityEngine.ResourceManagement.IUpdateReceiver:Update(unscaledDeltaTime) end

---@class UnityEngine.ResourceManagement.WebRequestQueueOperation : System.Object
---@field Result UnityEngine.Networking.UnityWebRequestAsyncOperation
---@field OnComplete System.Action
---@field IsDone boolean
---@field WebRequest UnityEngine.Networking.UnityWebRequest
UnityEngine.ResourceManagement.WebRequestQueueOperation = {}
---@alias CS.UnityEngine.ResourceManagement.WebRequestQueueOperation UnityEngine.ResourceManagement.WebRequestQueueOperation
CS.UnityEngine.ResourceManagement.WebRequestQueueOperation = UnityEngine.ResourceManagement.WebRequestQueueOperation

---@param request UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.ResourceManagement.WebRequestQueueOperation
function UnityEngine.ResourceManagement.WebRequestQueueOperation.New(request) end

---@class UnityEngine.ResourceManagement.WebRequestQueue : System.Object
UnityEngine.ResourceManagement.WebRequestQueue = {}
---@alias CS.UnityEngine.ResourceManagement.WebRequestQueue UnityEngine.ResourceManagement.WebRequestQueue
CS.UnityEngine.ResourceManagement.WebRequestQueue = UnityEngine.ResourceManagement.WebRequestQueue

---@param maxRequests number
function UnityEngine.ResourceManagement.WebRequestQueue.SetMaxConcurrentRequests(maxRequests) end
---@param request UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.ResourceManagement.WebRequestQueueOperation
function UnityEngine.ResourceManagement.WebRequestQueue.QueueRequest(request) end
---@param request UnityEngine.ResourceManagement.WebRequestQueueOperation
---@param millisecondsTimeout number
function UnityEngine.ResourceManagement.WebRequestQueue.WaitForRequestToBeActive(request, millisecondsTimeout) end

---@class UnityEngine.ResourceManagement.Exceptions.ResourceManagerException : System.Exception
UnityEngine.ResourceManagement.Exceptions.ResourceManagerException = {}
---@alias CS.UnityEngine.ResourceManagement.Exceptions.ResourceManagerException UnityEngine.ResourceManagement.Exceptions.ResourceManagerException
CS.UnityEngine.ResourceManagement.Exceptions.ResourceManagerException = UnityEngine.ResourceManagement.Exceptions.ResourceManagerException

---@overload fun() : UnityEngine.ResourceManagement.Exceptions.ResourceManagerException
---@overload fun(message: string) : UnityEngine.ResourceManagement.Exceptions.ResourceManagerException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.ResourceManagement.Exceptions.ResourceManagerException
function UnityEngine.ResourceManagement.Exceptions.ResourceManagerException.New(message, innerException) end
---@return string
function UnityEngine.ResourceManagement.Exceptions.ResourceManagerException:ToString() end

---@class UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException : UnityEngine.ResourceManagement.Exceptions.ResourceManagerException
---@field Location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field Message string
UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException = {}
---@alias CS.UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException
CS.UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException = UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException

---@overload fun(location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation) : UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException
---@overload fun() : UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException
---@overload fun(message: string) : UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException
function UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException.New(message, innerException) end
---@return string
function UnityEngine.ResourceManagement.Exceptions.UnknownResourceProviderException:ToString() end

---@class UnityEngine.ResourceManagement.Exceptions.OperationException : System.Exception
UnityEngine.ResourceManagement.Exceptions.OperationException = {}
---@alias CS.UnityEngine.ResourceManagement.Exceptions.OperationException UnityEngine.ResourceManagement.Exceptions.OperationException
CS.UnityEngine.ResourceManagement.Exceptions.OperationException = UnityEngine.ResourceManagement.Exceptions.OperationException

---@param message string
---@param innerException System.Exception
---@return UnityEngine.ResourceManagement.Exceptions.OperationException
function UnityEngine.ResourceManagement.Exceptions.OperationException.New(message, innerException) end
---@return string
function UnityEngine.ResourceManagement.Exceptions.OperationException:ToString() end

---@class UnityEngine.ResourceManagement.Exceptions.ProviderException : UnityEngine.ResourceManagement.Exceptions.OperationException
---@field Location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
UnityEngine.ResourceManagement.Exceptions.ProviderException = {}
---@alias CS.UnityEngine.ResourceManagement.Exceptions.ProviderException UnityEngine.ResourceManagement.Exceptions.ProviderException
CS.UnityEngine.ResourceManagement.Exceptions.ProviderException = UnityEngine.ResourceManagement.Exceptions.ProviderException

---@param message string
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param innerException System.Exception
---@return UnityEngine.ResourceManagement.Exceptions.ProviderException
function UnityEngine.ResourceManagement.Exceptions.ProviderException.New(message, location, innerException) end

---@class UnityEngine.ResourceManagement.Exceptions.RemoteProviderException : UnityEngine.ResourceManagement.Exceptions.ProviderException
---@field Message string
---@field WebRequestResult UnityEngine.ResourceManagement.Util.UnityWebRequestResult
UnityEngine.ResourceManagement.Exceptions.RemoteProviderException = {}
---@alias CS.UnityEngine.ResourceManagement.Exceptions.RemoteProviderException UnityEngine.ResourceManagement.Exceptions.RemoteProviderException
CS.UnityEngine.ResourceManagement.Exceptions.RemoteProviderException = UnityEngine.ResourceManagement.Exceptions.RemoteProviderException

---@param message string
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param uwrResult UnityEngine.ResourceManagement.Util.UnityWebRequestResult
---@param innerException System.Exception
---@return UnityEngine.ResourceManagement.Exceptions.RemoteProviderException
function UnityEngine.ResourceManagement.Exceptions.RemoteProviderException.New(message, location, uwrResult, innerException) end
---@return string
function UnityEngine.ResourceManagement.Exceptions.RemoteProviderException:ToString() end

---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer : System.Object
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer UnityEngine.ResourceManagement.Util.BinaryStorageBuffer
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer

---@return UnityEngine.ResourceManagement.Util.BinaryStorageBuffer
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.New() end

---@class UnityEngine.ResourceManagement.Util.LRUCache : System.ValueType
UnityEngine.ResourceManagement.Util.LRUCache = {}
---@alias CS.UnityEngine.ResourceManagement.Util.LRUCache UnityEngine.ResourceManagement.Util.LRUCache
CS.UnityEngine.ResourceManagement.Util.LRUCache = UnityEngine.ResourceManagement.Util.LRUCache

---@param limit number
---@return UnityEngine.ResourceManagement.Util.LRUCache
function UnityEngine.ResourceManagement.Util.LRUCache.New(limit) end
---@param id TKey
---@param obj TValue
---@return boolean
function UnityEngine.ResourceManagement.Util.LRUCache:TryAdd(id, obj) end
---@param offset TKey
---@param out_val TValue
---@return boolean,TValue
function UnityEngine.ResourceManagement.Util.LRUCache:TryGet(offset, out_val) end

---@class UnityEngine.ResourceManagement.Util.ComponentSingleton : UnityEngine.MonoBehaviour
---@field Exists boolean
---@field Instance T
UnityEngine.ResourceManagement.Util.ComponentSingleton = {}
---@alias CS.UnityEngine.ResourceManagement.Util.ComponentSingleton UnityEngine.ResourceManagement.Util.ComponentSingleton
CS.UnityEngine.ResourceManagement.Util.ComponentSingleton = UnityEngine.ResourceManagement.Util.ComponentSingleton

function UnityEngine.ResourceManagement.Util.ComponentSingleton.DestroySingleton() end

---@class UnityEngine.ResourceManagement.Util.DelayedActionManager : UnityEngine.ResourceManagement.Util.ComponentSingleton
---@field IsActive boolean
---@field Instance UnityEngine.ResourceManagement.Util.DelayedActionManager -- infered from UnityEngine.ResourceManagement.Util.ComponentSingleton`1[UnityEngine.ResourceManagement.Util.DelayedActionManager]
UnityEngine.ResourceManagement.Util.DelayedActionManager = {}
---@alias CS.UnityEngine.ResourceManagement.Util.DelayedActionManager UnityEngine.ResourceManagement.Util.DelayedActionManager
CS.UnityEngine.ResourceManagement.Util.DelayedActionManager = UnityEngine.ResourceManagement.Util.DelayedActionManager

function UnityEngine.ResourceManagement.Util.DelayedActionManager.Clear() end
---@param action System.Delegate
---@param delay number
---@param parameters System.Object[]
function UnityEngine.ResourceManagement.Util.DelayedActionManager.AddAction(action, delay, parameters) end
---@param timeout number
---@param timeAdvanceAmount number
---@return boolean
function UnityEngine.ResourceManagement.Util.DelayedActionManager.Wait(timeout, timeAdvanceAmount) end

---@class UnityEngine.ResourceManagement.Util.IOperationCacheKey
UnityEngine.ResourceManagement.Util.IOperationCacheKey = {}
---@alias CS.UnityEngine.ResourceManagement.Util.IOperationCacheKey UnityEngine.ResourceManagement.Util.IOperationCacheKey
CS.UnityEngine.ResourceManagement.Util.IOperationCacheKey = UnityEngine.ResourceManagement.Util.IOperationCacheKey


---@class UnityEngine.ResourceManagement.Util.IdCacheKey : System.Object
---@field ID string
---@field locationType System.Type
UnityEngine.ResourceManagement.Util.IdCacheKey = {}
---@alias CS.UnityEngine.ResourceManagement.Util.IdCacheKey UnityEngine.ResourceManagement.Util.IdCacheKey
CS.UnityEngine.ResourceManagement.Util.IdCacheKey = UnityEngine.ResourceManagement.Util.IdCacheKey

---@param locType System.Type
---@param id string
---@return UnityEngine.ResourceManagement.Util.IdCacheKey
function UnityEngine.ResourceManagement.Util.IdCacheKey.New(locType, id) end
---@return number
function UnityEngine.ResourceManagement.Util.IdCacheKey:GetHashCode() end
---@overload fun(self: UnityEngine.ResourceManagement.Util.IdCacheKey, obj: System.Object) : boolean
---@param other UnityEngine.ResourceManagement.Util.IOperationCacheKey
---@return boolean
function UnityEngine.ResourceManagement.Util.IdCacheKey:Equals(other) end

---@class UnityEngine.ResourceManagement.Util.LocationCacheKey : System.Object
UnityEngine.ResourceManagement.Util.LocationCacheKey = {}
---@alias CS.UnityEngine.ResourceManagement.Util.LocationCacheKey UnityEngine.ResourceManagement.Util.LocationCacheKey
CS.UnityEngine.ResourceManagement.Util.LocationCacheKey = UnityEngine.ResourceManagement.Util.LocationCacheKey

---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param desiredType System.Type
---@return UnityEngine.ResourceManagement.Util.LocationCacheKey
function UnityEngine.ResourceManagement.Util.LocationCacheKey.New(location, desiredType) end
---@return number
function UnityEngine.ResourceManagement.Util.LocationCacheKey:GetHashCode() end
---@overload fun(self: UnityEngine.ResourceManagement.Util.LocationCacheKey, obj: System.Object) : boolean
---@param other UnityEngine.ResourceManagement.Util.IOperationCacheKey
---@return boolean
function UnityEngine.ResourceManagement.Util.LocationCacheKey:Equals(other) end

---@class UnityEngine.ResourceManagement.Util.DependenciesCacheKey : System.Object
UnityEngine.ResourceManagement.Util.DependenciesCacheKey = {}
---@alias CS.UnityEngine.ResourceManagement.Util.DependenciesCacheKey UnityEngine.ResourceManagement.Util.DependenciesCacheKey
CS.UnityEngine.ResourceManagement.Util.DependenciesCacheKey = UnityEngine.ResourceManagement.Util.DependenciesCacheKey

---@param dependencies System.Collections.Generic.IList
---@param dependenciesHash number
---@return UnityEngine.ResourceManagement.Util.DependenciesCacheKey
function UnityEngine.ResourceManagement.Util.DependenciesCacheKey.New(dependencies, dependenciesHash) end
---@return number
function UnityEngine.ResourceManagement.Util.DependenciesCacheKey:GetHashCode() end
---@overload fun(self: UnityEngine.ResourceManagement.Util.DependenciesCacheKey, obj: System.Object) : boolean
---@param other UnityEngine.ResourceManagement.Util.IOperationCacheKey
---@return boolean
function UnityEngine.ResourceManagement.Util.DependenciesCacheKey:Equals(other) end

---@class UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey : System.Object
UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey = {}
---@alias CS.UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey
CS.UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey = UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey

---@param handles System.Collections.Generic.IList
---@return UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey
function UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey.New(handles) end
---@return number
function UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey:GetHashCode() end
---@overload fun(self: UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey, obj: System.Object) : boolean
---@param other UnityEngine.ResourceManagement.Util.IOperationCacheKey
---@return boolean
function UnityEngine.ResourceManagement.Util.AsyncOpHandlesCacheKey:Equals(other) end

---@class UnityEngine.ResourceManagement.Util.LocationUtils : System.Object
UnityEngine.ResourceManagement.Util.LocationUtils = {}
---@alias CS.UnityEngine.ResourceManagement.Util.LocationUtils UnityEngine.ResourceManagement.Util.LocationUtils
CS.UnityEngine.ResourceManagement.Util.LocationUtils = UnityEngine.ResourceManagement.Util.LocationUtils

---@param loc1 UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param loc2 UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return boolean
function UnityEngine.ResourceManagement.Util.LocationUtils.LocationEquals(loc1, loc2) end
---@param deps1 System.Collections.Generic.IList
---@param deps2 System.Collections.Generic.IList
---@return boolean
function UnityEngine.ResourceManagement.Util.LocationUtils.DependenciesEqual(deps1, deps2) end

---@class UnityEngine.ResourceManagement.Util.PlatformUtilities : System.Object
UnityEngine.ResourceManagement.Util.PlatformUtilities = {}
---@alias CS.UnityEngine.ResourceManagement.Util.PlatformUtilities UnityEngine.ResourceManagement.Util.PlatformUtilities
CS.UnityEngine.ResourceManagement.Util.PlatformUtilities = UnityEngine.ResourceManagement.Util.PlatformUtilities

---@return UnityEngine.ResourceManagement.Util.PlatformUtilities
function UnityEngine.ResourceManagement.Util.PlatformUtilities.New() end

---@class UnityEngine.ResourceManagement.Util.IInitializableObject
UnityEngine.ResourceManagement.Util.IInitializableObject = {}
---@alias CS.UnityEngine.ResourceManagement.Util.IInitializableObject UnityEngine.ResourceManagement.Util.IInitializableObject
CS.UnityEngine.ResourceManagement.Util.IInitializableObject = UnityEngine.ResourceManagement.Util.IInitializableObject

---@param id string
---@param data string
---@return boolean
function UnityEngine.ResourceManagement.Util.IInitializableObject:Initialize(id, data) end
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param id string
---@param data string
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.Util.IInitializableObject:InitializeAsync(rm, id, data) end

---@class UnityEngine.ResourceManagement.Util.IObjectInitializationDataProvider
---@field Name string
UnityEngine.ResourceManagement.Util.IObjectInitializationDataProvider = {}
---@alias CS.UnityEngine.ResourceManagement.Util.IObjectInitializationDataProvider UnityEngine.ResourceManagement.Util.IObjectInitializationDataProvider
CS.UnityEngine.ResourceManagement.Util.IObjectInitializationDataProvider = UnityEngine.ResourceManagement.Util.IObjectInitializationDataProvider

---@return UnityEngine.ResourceManagement.Util.ObjectInitializationData
function UnityEngine.ResourceManagement.Util.IObjectInitializationDataProvider:CreateObjectInitializationData() end

---@class UnityEngine.ResourceManagement.Util.IAllocationStrategy
UnityEngine.ResourceManagement.Util.IAllocationStrategy = {}
---@alias CS.UnityEngine.ResourceManagement.Util.IAllocationStrategy UnityEngine.ResourceManagement.Util.IAllocationStrategy
CS.UnityEngine.ResourceManagement.Util.IAllocationStrategy = UnityEngine.ResourceManagement.Util.IAllocationStrategy

---@param type System.Type
---@param typeHash number
---@return System.Object
function UnityEngine.ResourceManagement.Util.IAllocationStrategy:New(type, typeHash) end
---@param typeHash number
---@param obj System.Object
function UnityEngine.ResourceManagement.Util.IAllocationStrategy:Release(typeHash, obj) end

---@class UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy : System.Object
UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy = {}
---@alias CS.UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy
CS.UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy = UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy

---@return UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy
function UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy.New() end
---@param type System.Type
---@param typeHash number
---@return System.Object
function UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy:New(type, typeHash) end
---@param typeHash number
---@param obj System.Object
function UnityEngine.ResourceManagement.Util.DefaultAllocationStrategy:Release(typeHash, obj) end

---@class UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy : System.Object
UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy = {}
---@alias CS.UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy
CS.UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy = UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy

---@param poolMaxSize number
---@param poolCapacity number
---@param poolCacheMaxSize number
---@param initialPoolCacheCapacity number
---@return UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy
function UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy.New(poolMaxSize, poolCapacity, poolCacheMaxSize, initialPoolCacheCapacity) end
---@param type System.Type
---@param typeHash number
---@return System.Object
function UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy:New(type, typeHash) end
---@param typeHash number
---@param obj System.Object
function UnityEngine.ResourceManagement.Util.LRUCacheAllocationStrategy:Release(typeHash, obj) end

---@class UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute : System.Attribute
---@field type System.Type
UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute = {}
---@alias CS.UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute
CS.UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute = UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute

---@return UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute
function UnityEngine.ResourceManagement.Util.SerializedTypeRestrictionAttribute.New() end

---@class UnityEngine.ResourceManagement.Util.LinkedListNodeCache : System.Object
UnityEngine.ResourceManagement.Util.LinkedListNodeCache = {}
---@alias CS.UnityEngine.ResourceManagement.Util.LinkedListNodeCache UnityEngine.ResourceManagement.Util.LinkedListNodeCache
CS.UnityEngine.ResourceManagement.Util.LinkedListNodeCache = UnityEngine.ResourceManagement.Util.LinkedListNodeCache

---@return UnityEngine.ResourceManagement.Util.LinkedListNodeCache
function UnityEngine.ResourceManagement.Util.LinkedListNodeCache.New() end
---@param val T
---@return System.Collections.Generic.LinkedListNode[T]
function UnityEngine.ResourceManagement.Util.LinkedListNodeCache:Acquire(val) end
---@param node System.Collections.Generic.LinkedListNode[T]
function UnityEngine.ResourceManagement.Util.LinkedListNodeCache:Release(node) end

---@class UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache : System.Object
---@field CacheExists boolean
UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache = {}
---@alias CS.UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache
CS.UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache = UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache

---@param length number
function UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache.SetCacheSize(length) end
---@param val T
---@return System.Collections.Generic.LinkedListNode[T]
function UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache.Acquire(val) end
---@param node System.Collections.Generic.LinkedListNode[T]
function UnityEngine.ResourceManagement.Util.GlobalLinkedListNodeCache.Release(node) end

---@class UnityEngine.ResourceManagement.Util.SerializedType : System.ValueType
---@field AssemblyName string
---@field ClassName string
---@field Value System.Type
---@field ValueChanged boolean
UnityEngine.ResourceManagement.Util.SerializedType = {}
---@alias CS.UnityEngine.ResourceManagement.Util.SerializedType UnityEngine.ResourceManagement.Util.SerializedType
CS.UnityEngine.ResourceManagement.Util.SerializedType = UnityEngine.ResourceManagement.Util.SerializedType

---@return string
function UnityEngine.ResourceManagement.Util.SerializedType:ToString() end

---@class UnityEngine.ResourceManagement.Util.ObjectInitializationData : System.ValueType
---@field Id string
---@field ObjectType UnityEngine.ResourceManagement.Util.SerializedType
---@field Data string
UnityEngine.ResourceManagement.Util.ObjectInitializationData = {}
---@alias CS.UnityEngine.ResourceManagement.Util.ObjectInitializationData UnityEngine.ResourceManagement.Util.ObjectInitializationData
CS.UnityEngine.ResourceManagement.Util.ObjectInitializationData = UnityEngine.ResourceManagement.Util.ObjectInitializationData

---@param objectType System.Type
---@param id string
---@param dataObject System.Object
---@return UnityEngine.ResourceManagement.Util.ObjectInitializationData
function UnityEngine.ResourceManagement.Util.ObjectInitializationData.CreateSerializedInitializationData(objectType, id, dataObject) end
---@return string
function UnityEngine.ResourceManagement.Util.ObjectInitializationData:ToString() end
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param idOverride string
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.Util.ObjectInitializationData:GetAsyncInitHandle(rm, idOverride) end
---@return System.Type[]
function UnityEngine.ResourceManagement.Util.ObjectInitializationData:GetRuntimeTypes() end

---@class UnityEngine.ResourceManagement.Util.ResourceManagerConfig : System.Object
UnityEngine.ResourceManagement.Util.ResourceManagerConfig = {}
---@alias CS.UnityEngine.ResourceManagement.Util.ResourceManagerConfig UnityEngine.ResourceManagement.Util.ResourceManagerConfig
CS.UnityEngine.ResourceManagement.Util.ResourceManagerConfig = UnityEngine.ResourceManagement.Util.ResourceManagerConfig

---@param keyObj System.Object
---@param out_mainKey string
---@param out_subKey string
---@return boolean,string,string
function UnityEngine.ResourceManagement.Util.ResourceManagerConfig.ExtractKeyAndSubKey(keyObj, out_mainKey, out_subKey) end
---@param path string
---@return boolean
function UnityEngine.ResourceManagement.Util.ResourceManagerConfig.IsPathRemote(path) end
---@param path string
---@return string
function UnityEngine.ResourceManagement.Util.ResourceManagerConfig.StripQueryParameters(path) end
---@param path string
---@return boolean
function UnityEngine.ResourceManagement.Util.ResourceManagerConfig.ShouldPathUseWebRequest(path) end
---@param type System.Type
---@param allAssets UnityEngine.Object[]
---@return System.Array
function UnityEngine.ResourceManagement.Util.ResourceManagerConfig.CreateArrayResult(type, allAssets) end
---@param type System.Type
---@param allAssets UnityEngine.Object[]
---@return System.Collections.IList
function UnityEngine.ResourceManagement.Util.ResourceManagerConfig.CreateListResult(type, allAssets) end

---@class UnityEngine.ResourceManagement.Util.BundleSource
---@field None UnityEngine.ResourceManagement.Util.BundleSource
---@field Local UnityEngine.ResourceManagement.Util.BundleSource
---@field Cache UnityEngine.ResourceManagement.Util.BundleSource
---@field Download UnityEngine.ResourceManagement.Util.BundleSource
UnityEngine.ResourceManagement.Util.BundleSource = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BundleSource UnityEngine.ResourceManagement.Util.BundleSource
CS.UnityEngine.ResourceManagement.Util.BundleSource = UnityEngine.ResourceManagement.Util.BundleSource


---@class UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities : System.Object
UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities = {}
---@alias CS.UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities
CS.UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities = UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities

---@return UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities
function UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities.New() end
---@param webReq UnityEngine.Networking.UnityWebRequest
---@param out_result UnityEngine.ResourceManagement.Util.UnityWebRequestResult
---@return boolean,UnityEngine.ResourceManagement.Util.UnityWebRequestResult
function UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities.RequestHasErrors(webReq, out_result) end
---@param op UnityEngine.Networking.UnityWebRequestAsyncOperation
---@return boolean
function UnityEngine.ResourceManagement.Util.UnityWebRequestUtilities.IsAssetBundleDownloaded(op) end

---@class UnityEngine.ResourceManagement.Util.UnityWebRequestResult : System.Object
---@field Error string
---@field ResponseCode number
---@field Result UnityEngine.Networking.UnityWebRequest.Result
---@field Method string
---@field Url string
UnityEngine.ResourceManagement.Util.UnityWebRequestResult = {}
---@alias CS.UnityEngine.ResourceManagement.Util.UnityWebRequestResult UnityEngine.ResourceManagement.Util.UnityWebRequestResult
CS.UnityEngine.ResourceManagement.Util.UnityWebRequestResult = UnityEngine.ResourceManagement.Util.UnityWebRequestResult

---@param request UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.ResourceManagement.Util.UnityWebRequestResult
function UnityEngine.ResourceManagement.Util.UnityWebRequestResult.New(request) end
---@return string
function UnityEngine.ResourceManagement.Util.UnityWebRequestResult:ToString() end
---@return boolean
function UnityEngine.ResourceManagement.Util.UnityWebRequestResult:ShouldRetryDownloadError() end

---@class UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation : UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper
UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation
CS.UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation = UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation

---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation
function UnityEngine.ResourceManagement.ResourceProviders.DownloadOnlyLocation.New(location) end

---@class UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode
---@field RequestedAssetAndDependencies UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode
---@field AllPackedAssetsAndDependencies UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode
UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode
CS.UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode = UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode


---@class UnityEngine.ResourceManagement.ResourceProviders.IAssetBundleResource
UnityEngine.ResourceManagement.ResourceProviders.IAssetBundleResource = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.IAssetBundleResource UnityEngine.ResourceManagement.ResourceProviders.IAssetBundleResource
CS.UnityEngine.ResourceManagement.ResourceProviders.IAssetBundleResource = UnityEngine.ResourceManagement.ResourceProviders.IAssetBundleResource

---@return UnityEngine.AssetBundle
function UnityEngine.ResourceManagement.ResourceProviders.IAssetBundleResource:GetAssetBundle() end

---@class UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions : System.Object
---@field Hash string
---@field Crc number
---@field Timeout number
---@field ChunkedTransfer boolean
---@field RedirectLimit number
---@field RetryCount number
---@field BundleName string
---@field AssetLoadMode UnityEngine.ResourceManagement.ResourceProviders.AssetLoadMode
---@field BundleSize number
---@field UseCrcForCachedBundle boolean
---@field UseUnityWebRequestForLocalBundles boolean
---@field ClearOtherCachedVersionsWhenLoaded boolean
UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions
CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions = UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions

---@return UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions.New() end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@return number
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions:ComputeSize(location, resourceManager) end

---@class UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource : System.Object
UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource
CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource = UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource

---@return UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.New() end
---@param handle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param out_loadType UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType
---@param out_path string
---@return ,UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType,string
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.GetLoadInfo(handle, out_loadType, out_path) end
---@return UnityEngine.AssetBundleRequest
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource:GetAssetPreloadRequest() end
---@return UnityEngine.AssetBundle
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource:GetAssetBundle() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param unloadOp UnityEngine.AssetBundleUnloadOperation
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource:Start(provideHandle, unloadOp) end
---@param unscaledDeltaTime number
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource:Update(unscaledDeltaTime) end
---@param out_unloadOp UnityEngine.AssetBundleUnloadOperation
---@return boolean,UnityEngine.AssetBundleUnloadOperation
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource:Unload(out_unloadOp) end

---@class UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider = UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider.New() end
---@param providerInterface UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider:Provide(providerInterface) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return System.Type
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider:GetDefaultType(location) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param asset System.Object
function UnityEngine.ResourceManagement.ResourceProviders.AssetBundleProvider:Release(location, asset) end

---@class UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider = UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider

---@overload fun() : UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider
---@param delay number
---@return UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider
function UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.New(delay) end
---@param t System.Type
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider:CanProvide(t, location) end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider:Provide(provideHandle) end

---@class UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider = UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider
function UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider.New() end
---@param providerInterface UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider:Provide(providerInterface) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param obj System.Object
function UnityEngine.ResourceManagement.ResourceProviders.AtlasSpriteProvider:Release(location, obj) end

---@class UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider : UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider
UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider = UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider
function UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider.New() end
---@param type System.Type
---@param data System.Byte[]
---@return System.Object
function UnityEngine.ResourceManagement.ResourceProviders.BinaryAssetProvider:Convert(type, data) end

---@class UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
---@field IgnoreFailures boolean
UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider = UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider
function UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.New() end
---@param type System.Type
---@param data System.Byte[]
---@return System.Object
function UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider:Convert(type, data) end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider:Provide(provideHandle) end

---@class UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider = UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider
function UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider:Provide(provideHandle) end

---@class UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters : System.ValueType
---@field Position UnityEngine.Vector3
---@field Rotation UnityEngine.Quaternion
---@field Parent UnityEngine.Transform
---@field InstantiateInWorldPosition boolean
---@field SetPositionRotation boolean
UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
CS.UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters = UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters

---@overload fun(parent: UnityEngine.Transform, instantiateInWorldSpace: boolean) : UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param parent UnityEngine.Transform
---@return UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
function UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters.New(position, rotation, parent) end

---@class UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider
UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider = UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider

---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param prefabHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param instantiateParameters UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
---@return UnityEngine.GameObject
function UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider:ProvideInstance(resourceManager, prefabHandle, instantiateParameters) end
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param instance UnityEngine.GameObject
function UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider:ReleaseInstance(resourceManager, instance) end

---@class UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider : System.Object
UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider = UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider
function UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider.New() end
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param prefabHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param instantiateParameters UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
---@return UnityEngine.GameObject
function UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider:ProvideInstance(resourceManager, prefabHandle, instantiateParameters) end
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param instance UnityEngine.GameObject
function UnityEngine.ResourceManagement.ResourceProviders.InstanceProvider:ReleaseInstance(resourceManager, instance) end

---@class UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags
---@field None UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags
---@field CanProvideWithFailedDependencies UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags
UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags
CS.UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags = UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags


---@class UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle : System.ValueType
---@field ResourceManager UnityEngine.ResourceManagement.ResourceManager
---@field Type System.Type
---@field Location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field DependencyCount number
UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
CS.UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle = UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle

---@param list System.Collections.Generic.IList
function UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle:GetDependencies(list) end
---@param callback System.Func
function UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle:SetProgressCallback(callback) end
---@param callback System.Func
function UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle:SetDownloadProgressCallbacks(callback) end
---@param callback System.Func
function UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle:SetWaitForCompletionCallback(callback) end

---@class UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider
---@field ProviderId string
---@field BehaviourFlags UnityEngine.ResourceManagement.ResourceProviders.ProviderBehaviourFlags
UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider = UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider

---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return System.Type
function UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider:GetDefaultType(location) end
---@param type System.Type
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider:CanProvide(type, location) end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider:Provide(provideHandle) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param asset System.Object
function UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider:Release(location, asset) end

---@class UnityEngine.ResourceManagement.ResourceProviders.SceneInstance : System.ValueType
---@field Scene UnityEngine.SceneManagement.Scene
UnityEngine.ResourceManagement.ResourceProviders.SceneInstance = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.SceneInstance UnityEngine.ResourceManagement.ResourceProviders.SceneInstance
CS.UnityEngine.ResourceManagement.ResourceProviders.SceneInstance = UnityEngine.ResourceManagement.ResourceProviders.SceneInstance

---@return UnityEngine.AsyncOperation
function UnityEngine.ResourceManagement.ResourceProviders.SceneInstance:ActivateAsync() end
---@return number
function UnityEngine.ResourceManagement.ResourceProviders.SceneInstance:GetHashCode() end
---@param obj System.Object
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.SceneInstance:Equals(obj) end

---@class UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider
UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider = UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider

---@overload fun(self: UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider, resourceManager: UnityEngine.ResourceManagement.ResourceManager, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, loadMode: UnityEngine.SceneManagement.LoadSceneMode, activateOnLoad: boolean, priority: number) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param loadSceneParameters UnityEngine.SceneManagement.LoadSceneParameters
---@param activateOnLoad boolean
---@param priority number
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider:ProvideScene(resourceManager, location, loadSceneParameters, activateOnLoad, priority) end
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param sceneLoadHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider:ReleaseScene(resourceManager, sceneLoadHandle) end
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param sceneLoadHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param unloadOptions UnityEngine.SceneManagement.UnloadSceneOptions
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider:ReleaseScene(resourceManager, sceneLoadHandle, unloadOptions) end

---@class UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2
UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2 = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2 UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2
CS.UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2 = UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2

---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param sceneLoadHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param unloadOptions UnityEngine.SceneManagement.UnloadSceneOptions
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2:ReleaseScene(resourceManager, sceneLoadHandle, unloadOptions) end

---@class UnityEngine.ResourceManagement.ResourceProviders.SceneProviderExtensions : System.Object
UnityEngine.ResourceManagement.ResourceProviders.SceneProviderExtensions = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProviderExtensions UnityEngine.ResourceManagement.ResourceProviders.SceneProviderExtensions
CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProviderExtensions = UnityEngine.ResourceManagement.ResourceProviders.SceneProviderExtensions

---@param provider UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param sceneLoadHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param unloadOptions UnityEngine.SceneManagement.UnloadSceneOptions
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.SceneProviderExtensions.ReleaseScene(provider, resourceManager, sceneLoadHandle, unloadOptions) end

---@class UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider : UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider
UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider = UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider
function UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider.New() end
---@param type System.Type
---@param text string
---@return System.Object
function UnityEngine.ResourceManagement.ResourceProviders.JsonAssetProvider:Convert(type, text) end

---@class UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider = UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider
function UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.New() end
---@param pi UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider:Provide(pi) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param asset System.Object
function UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider:Release(location, asset) end

---@class UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase : System.Object
---@field ProviderId string
UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
CS.UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase = UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase

---@param id string
---@param data string
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase:Initialize(id, data) end
---@param t System.Type
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase:CanProvide(t, location) end
---@return string
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase:ToString() end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param obj System.Object
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase:Release(location, obj) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return System.Type
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase:GetDefaultType(location) end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase:Provide(provideHandle) end
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param id string
---@param data string
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase:InitializeAsync(rm, id, data) end

---@class UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions : System.Object
---@field IgnoreFailures boolean
---@field WebRequestTimeout number
UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions
CS.UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions = UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions

---@return UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions
function UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions.New() end
---@return UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions
function UnityEngine.ResourceManagement.ResourceProviders.ProviderLoadRequestOptions:Copy() end

---@class UnityEngine.ResourceManagement.ResourceProviders.SceneProvider : System.Object
UnityEngine.ResourceManagement.ResourceProviders.SceneProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProvider UnityEngine.ResourceManagement.ResourceProviders.SceneProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProvider = UnityEngine.ResourceManagement.ResourceProviders.SceneProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.SceneProvider
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.New() end
---@overload fun(self: UnityEngine.ResourceManagement.ResourceProviders.SceneProvider, resourceManager: UnityEngine.ResourceManagement.ResourceManager, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, loadSceneMode: UnityEngine.SceneManagement.LoadSceneMode, activateOnLoad: boolean, priority: number) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param loadSceneParameters UnityEngine.SceneManagement.LoadSceneParameters
---@param activateOnLoad boolean
---@param priority number
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider:ProvideScene(resourceManager, location, loadSceneParameters, activateOnLoad, priority) end
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@param sceneLoadHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider:ReleaseScene(resourceManager, sceneLoadHandle) end

---@class UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
---@field IgnoreFailures boolean
UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider = UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider
function UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.New() end
---@param type System.Type
---@param text string
---@return System.Object
function UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider:Convert(type, text) end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider:Provide(provideHandle) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation : System.Object
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation

---@return UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:GetDownloadStatus() end
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:WaitForCompletion() end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation : UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation
---@field Status UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
---@field OperationException System.Exception
---@field Result TObject
---@field IsDone boolean
---@field PercentComplete number
---@field Context System.Object
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation

---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation.New() end
---@return UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:GetDownloadStatus() end
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:WaitForCompletion() end
---@return string
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:ToString() end
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:InvokeCompletionEvent() end
---@param result TObject
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:SetResult(result) end
---@param context System.Object
---@param key System.Object
---@param val TObject
---@param error System.Exception
---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation:StartCompleted(context, key, val, error) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry : System.Object
---@field Name string
---@field Size number
---@field AssetPath string
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry

---@overload fun() : UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry
---@param name string
---@param size number
---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry.New(name, size) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle : System.Object
---@field Name string
---@field Assets System.Collections.Generic.List
---@field PercentComplete number
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle

---@overload fun() : UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle
---@param name string
---@param _local boolean
---@param crc number
---@param hash string
---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.New(name, _local, crc, hash) end
---@param dataSize number
---@param headerSize number
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle:SetSize(dataSize, headerSize) end
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle:OnBeforeSerialize() end
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle:OnAfterDeserialize() end
---@return UnityEngine.AssetBundle
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle:GetAssetBundle() end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider

---@param data UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData
---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.New(data) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return System.Type
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider:GetDefaultType(location) end
---@param id string
---@param data string
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider:Initialize(id, data) end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider:Provide(provideHandle) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param asset System.Object
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider:Release(location, asset) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData : System.Object
---@field AssetBundles System.Collections.Generic.List
---@field RemoteLoadSpeed number
---@field LocalLoadSpeed number
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData

---@overload fun() : UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData
---@param localSpeed number
---@param remoteSpeed number
---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRuntimeData.New(localSpeed, remoteSpeed) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions : UnityEngine.ResourceManagement.ResourceProviders.AssetBundleRequestOptions
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions

---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions.New() end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@return number
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleRequestOptions:ComputeSize(location, resourceManager) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider

---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider:Provide(provideHandle) end

---@class UnityEngine.ResourceManagement.ResourceLocations.ILocationSizeData
UnityEngine.ResourceManagement.ResourceLocations.ILocationSizeData = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceLocations.ILocationSizeData UnityEngine.ResourceManagement.ResourceLocations.ILocationSizeData
CS.UnityEngine.ResourceManagement.ResourceLocations.ILocationSizeData = UnityEngine.ResourceManagement.ResourceLocations.ILocationSizeData

---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@return number
function UnityEngine.ResourceManagement.ResourceLocations.ILocationSizeData:ComputeSize(location, resourceManager) end

---@class UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field InternalId string
---@field ProviderId string
---@field Dependencies System.Collections.Generic.IList
---@field DependencyHashCode number
---@field HasDependencies boolean
---@field Data System.Object
---@field PrimaryKey string
---@field ResourceType System.Type
UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
CS.UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation = UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation

---@param resultType System.Type
---@return number
function UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation:Hash(resultType) end

---@class UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase : System.Object
---@field InternalId string
---@field ProviderId string
---@field Dependencies System.Collections.Generic.IList
---@field HasDependencies boolean
---@field Data System.Object
---@field PrimaryKey string
---@field DependencyHashCode number
---@field ResourceType System.Type
UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase
CS.UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase = UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase

---@param name string
---@param id string
---@param providerId string
---@param t System.Type
---@param dependencies UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation[]
---@return UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase
function UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase.New(name, id, providerId, t, dependencies) end
---@param t System.Type
---@return number
function UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase:Hash(t) end
---@return string
function UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase:ToString() end
function UnityEngine.ResourceManagement.ResourceLocations.ResourceLocationBase:ComputeDependencyHash() end

---@class UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper : System.Object
---@field InternalId string
---@field ProviderId string
---@field Dependencies System.Collections.Generic.IList
---@field DependencyHashCode number
---@field HasDependencies boolean
---@field Data System.Object
---@field PrimaryKey string
---@field ResourceType System.Type
UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper
CS.UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper = UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper

---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper
function UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper.New(location) end
---@param resultType System.Type
---@return number
function UnityEngine.ResourceManagement.ResourceLocations.LocationWrapper:Hash(resultType) end

---@class UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent : System.ValueType
---@field Graph string
---@field ObjectId number
---@field DisplayName string
---@field Dependencies System.Int32[]
---@field Stream number
---@field Frame number
---@field Value number
UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent = {}
---@alias CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent
CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent = UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent

---@param graph string
---@param name string
---@param id number
---@param stream number
---@param frame number
---@param value number
---@param deps System.Int32[]
---@return UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent.New(graph, name, id, stream, frame, value, deps) end
---@param data System.Byte[]
---@return UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent.Deserialize(data) end

---@class UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton : UnityEngine.ResourceManagement.Util.ComponentSingleton
---@field PlayerConnectionGuid System.Guid
---@field Instance UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton -- infered from UnityEngine.ResourceManagement.Util.ComponentSingleton`1[UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton]
UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton = {}
---@alias CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton
CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton = UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton

---@param handler System.Action
---@param register boolean
---@param create boolean
---@return boolean
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton.RegisterEventHandler(handler, register, create) end
---@param handler System.Action
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton:UnregisterEventHandler(handler) end
---@param diagnosticEvent UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollectorSingleton:PostEvent(diagnosticEvent) end

---@class UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector : UnityEngine.MonoBehaviour
---@field PlayerConnectionGuid System.Guid
UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector = {}
---@alias CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector
CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector = UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector

---@return UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.FindOrCreateGlobalInstance() end
---@param handler System.Action
---@param register boolean
---@param create boolean
---@return boolean
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.RegisterEventHandler(handler, register, create) end
---@param handler System.Action
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector:UnregisterEventHandler(handler) end
---@param diagnosticEvent UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent
function UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector:PostEvent(diagnosticEvent) end

---@class UnityEngine.ResourceManagement.AsyncOperations.ICachable
---@field Key UnityEngine.ResourceManagement.Util.IOperationCacheKey
UnityEngine.ResourceManagement.AsyncOperations.ICachable = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.ICachable UnityEngine.ResourceManagement.AsyncOperations.ICachable
CS.UnityEngine.ResourceManagement.AsyncOperations.ICachable = UnityEngine.ResourceManagement.AsyncOperations.ICachable


---@class UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation
---@field ResultType System.Type
---@field Version number
---@field DebugName string
---@field ReferenceCount number
---@field PercentComplete number
---@field Status UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
---@field OperationException System.Exception
---@field IsDone boolean
---@field OnDestroy System.Action
---@field IsRunning boolean
---@field Task System.Threading.Tasks.Task
---@field Handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation
CS.UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation = UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation

---@return System.Object
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:GetResultAsObject() end
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:DecrementReferenceCount() end
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:IncrementReferenceCount() end
---@param visited System.Collections.Generic.HashSet
---@return UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:GetDownloadStatus(visited) end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:GetDependencies(deps) end
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:InvokeCompletionEvent() end
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param dependency UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param updateCallbacks DelegateList
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:Start(rm, dependency, updateCallbacks) end
function UnityEngine.ResourceManagement.AsyncOperations.IAsyncOperation:WaitForCompletion() end

---@class UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase : System.Object
---@field Result TObject
---@field IsRunning boolean
UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase = UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase

---@param dependencies System.Collections.Generic.List
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase:GetDependencies(dependencies) end
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase:WaitForCompletion() end
---@return string
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase:ToString() end
---@overload fun(self: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase, result: TObject, success: boolean, errorMsg: string)
---@overload fun(self: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase, result: TObject, success: boolean, errorMsg: string, releaseDependenciesOnFailure: boolean)
---@param result TObject
---@param success boolean
---@param exception System.Exception
---@param releaseDependenciesOnFailure boolean
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase:Complete(result, success, exception, releaseDependenciesOnFailure) end

---@class UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle : System.ValueType
---@field DebugName string
---@field IsDone boolean
---@field OperationException System.Exception
---@field PercentComplete number
---@field Result TObject
---@field Status UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
---@field Task System.Threading.Tasks.Task[TObject]
UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle = UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle

---@return UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:GetDownloadStatus() end
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:ReleaseHandleOnCompletion() end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:GetDependencies(deps) end
---@param other UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@return boolean
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:Equals(other) end
---@return number
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:GetHashCode() end
---@return TObject
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:WaitForCompletion() end
---@return boolean
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:IsValid() end
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:Release() end

---@class UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle : System.ValueType
---@field DebugName string
---@field IsDone boolean
---@field OperationException System.Exception
---@field PercentComplete number
---@field Result System.Object
---@field Status UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
---@field Task System.Threading.Tasks.Task
UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle = UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle

function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:ReleaseHandleOnCompletion() end
---@param other UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@return boolean
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:Equals(other) end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:GetDependencies(deps) end
---@return number
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:GetHashCode() end
---@return boolean
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:IsValid() end
---@return UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:GetDownloadStatus() end
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:Release() end
---@return System.Object
function UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle:WaitForCompletion() end

---@class UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
---@field None UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
---@field Succeeded UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
---@field Failed UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus
CS.UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus = UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationStatus


---@class UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus : System.ValueType
---@field TotalBytes number
---@field DownloadedBytes number
---@field IsDone boolean
---@field Percent number
UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus
CS.UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus = UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus


---@class UnityEngine.ResourceManagement.AsyncOperations.GroupOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.ResourceManagement.AsyncOperations.GroupOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Collections.Generic.IList`1[UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle]]
UnityEngine.ResourceManagement.AsyncOperations.GroupOperation = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.GroupOperation UnityEngine.ResourceManagement.AsyncOperations.GroupOperation
CS.UnityEngine.ResourceManagement.AsyncOperations.GroupOperation = UnityEngine.ResourceManagement.AsyncOperations.GroupOperation

---@return UnityEngine.ResourceManagement.AsyncOperations.GroupOperation
function UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.New() end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.AsyncOperations.GroupOperation:GetDependencies(deps) end
---@overload fun(self: UnityEngine.ResourceManagement.AsyncOperations.GroupOperation, operations: System.Collections.Generic.List, releaseDependenciesOnFailure: boolean, allowFailedDependencies: boolean)
---@param operations System.Collections.Generic.List
---@param settings UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings
function UnityEngine.ResourceManagement.AsyncOperations.GroupOperation:Init(operations, settings) end

---@class UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation
---@field ProvideHandleVersion number
---@field Location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field DependencyCount number
---@field RequestedType System.Type
UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation
CS.UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation = UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation

---@overload fun(self: UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation, rm: UnityEngine.ResourceManagement.ResourceManager, provider: UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, depOp: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle)
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param provider UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param depOp UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param releaseDependenciesOnFailure boolean
function UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation:Init(rm, provider, location, depOp, releaseDependenciesOnFailure) end
---@param dstList System.Collections.Generic.IList
function UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation:GetDependencies(dstList) end
---@param callback System.Func
function UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation:SetProgressCallback(callback) end
---@param callback System.Func
function UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation:SetDownloadProgressCallback(callback) end
---@param callback System.Func
function UnityEngine.ResourceManagement.AsyncOperations.IGenericProviderOperation:SetWaitForCompletionCallback(callback) end

---@class UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase[TObject]
---@field ProvideHandleVersion number
---@field Location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field RequestedType System.Type
---@field DependencyCount number
UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation
CS.UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation = UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation

---@return UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation
function UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation.New() end
---@param callback System.Func
function UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation:SetDownloadProgressCallback(callback) end
---@param callback System.Func
function UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation:SetWaitForCompletionCallback(callback) end
---@overload fun(self: UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation, deps: System.Collections.Generic.List)
---@param dstList System.Collections.Generic.IList
function UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation:GetDependencies(dstList) end
---@param callback System.Func
function UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation:SetProgressCallback(callback) end
---@overload fun(self: UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation, rm: UnityEngine.ResourceManagement.ResourceManager, provider: UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, depOp: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle)
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param provider UnityEngine.ResourceManagement.ResourceProviders.IResourceProvider
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param depOp UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param releaseDependenciesOnFailure boolean
function UnityEngine.ResourceManagement.AsyncOperations.ProviderOperation:Init(rm, provider, location, depOp, releaseDependenciesOnFailure) end

---@class UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[UnityEngine.Networking.UnityWebRequest]
UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation
CS.UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation = UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation

---@param webRequest UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation
function UnityEngine.ResourceManagement.AsyncOperations.UnityWebRequestOperation.New(webRequest) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@field AsyncOperationFail UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@field AsyncOperationCreate UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@field AsyncOperationPercentComplete UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@field AsyncOperationComplete UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@field AsyncOperationReferenceCount UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@field AsyncOperationDestroy UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
CS.UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType = UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType


---@class UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext : System.ValueType
---@field OperationHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@field Type UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@field EventValue number
---@field Location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field Context System.Object
---@field Error string
UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext
CS.UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext = UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext

---@param op UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param type UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@param eventValue number
---@param error string
---@param context System.Object
---@return UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext
function UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventContext.New(op, type, eventValue, error, context) end

---@class UnityEngine.ResourceManagement.ResourceManager.DeferredCallbackRegisterRequest : System.ValueType
UnityEngine.ResourceManagement.ResourceManager.DeferredCallbackRegisterRequest = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceManager.DeferredCallbackRegisterRequest UnityEngine.ResourceManagement.ResourceManager.DeferredCallbackRegisterRequest
CS.UnityEngine.ResourceManagement.ResourceManager.DeferredCallbackRegisterRequest = UnityEngine.ResourceManagement.ResourceManager.DeferredCallbackRegisterRequest


---@class UnityEngine.ResourceManagement.ResourceManager.CompletedOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase[TObject]
UnityEngine.ResourceManagement.ResourceManager.CompletedOperation = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceManager.CompletedOperation UnityEngine.ResourceManagement.ResourceManager.CompletedOperation
CS.UnityEngine.ResourceManagement.ResourceManager.CompletedOperation = UnityEngine.ResourceManagement.ResourceManager.CompletedOperation

---@return UnityEngine.ResourceManagement.ResourceManager.CompletedOperation
function UnityEngine.ResourceManagement.ResourceManager.CompletedOperation.New() end
---@overload fun(self: UnityEngine.ResourceManagement.ResourceManager.CompletedOperation, result: TObject, success: boolean, errorMsg: string, releaseDependenciesOnFailure: boolean)
---@param result TObject
---@param success boolean
---@param exception System.Exception
---@param releaseDependenciesOnFailure boolean
function UnityEngine.ResourceManagement.ResourceManager.CompletedOperation:Init(result, success, exception, releaseDependenciesOnFailure) end

---@class UnityEngine.ResourceManagement.ResourceManager.InstanceOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.ResourceManagement.ResourceManager.InstanceOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[UnityEngine.GameObject]
UnityEngine.ResourceManagement.ResourceManager.InstanceOperation = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceManager.InstanceOperation UnityEngine.ResourceManagement.ResourceManager.InstanceOperation
CS.UnityEngine.ResourceManagement.ResourceManager.InstanceOperation = UnityEngine.ResourceManagement.ResourceManager.InstanceOperation

---@return UnityEngine.ResourceManagement.ResourceManager.InstanceOperation
function UnityEngine.ResourceManagement.ResourceManager.InstanceOperation.New() end
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param instanceProvider UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider
---@param instantiationParams UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
---@param dependency UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceManager.InstanceOperation:Init(rm, instanceProvider, instantiationParams, dependency) end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.ResourceManager.InstanceOperation:GetDependencies(deps) end
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.ResourceManagement.ResourceManager.InstanceOperation:InstanceScene() end

---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer : System.Object
---@field Dependencies System.Collections.Generic.IEnumerable
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer

---@return UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer.New() end
---@param reader UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader
---@param t System.Type
---@param offset number
---@return System.Object
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer:Deserialize(reader, t, offset) end
---@param writer UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer
---@param val System.Object
---@return number
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer:Serialize(writer, val) end

---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer : System.Object
---@field Dependencies System.Collections.Generic.IEnumerable
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer

---@return UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer.New() end
---@param reader UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader
---@param type System.Type
---@param offset number
---@return System.Object
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer:Deserialize(reader, type, offset) end
---@param writer UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer
---@param val System.Object
---@return number
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer:Serialize(writer, val) end

---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.DynamicString : System.ValueType
---@field stringId number
---@field nextId number
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.DynamicString = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.DynamicString UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.DynamicString
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.DynamicString = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.DynamicString


---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ObjectTypeData : System.ValueType
---@field typeId number
---@field objectId number
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ObjectTypeData = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ObjectTypeData UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ObjectTypeData
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ObjectTypeData = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ObjectTypeData


---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter
---@field Dependencies System.Collections.Generic.IEnumerable
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter

---@param writer UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer
---@param val System.Object
---@return number
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter:Serialize(writer, val) end
---@param reader UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader
---@param t System.Type
---@param offset number
---@return System.Object
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter:Deserialize(reader, t, offset) end

---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter


---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader : System.Object
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader

---@overload fun(data: System.Byte[], maxCachedObjects: number, adapters: UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter[]) : UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader
---@param inputStream System.IO.Stream
---@param bufferSize number
---@param maxCachedObjects number
---@param adapters UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter[]
---@return UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader.New(inputStream, bufferSize, maxCachedObjects, adapters) end
---@param a UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader:AddSerializationAdapter(a) end
---@overload fun(self: UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader, id: number, cacheValues: boolean) : System.Object[]
---@param t System.Type
---@param id number
---@param cacheValues boolean
---@return System.Object[]
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader:ReadObjectArray(t, id, cacheValues) end
---@overload fun(self: UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader, id: number, cacheValue: boolean) : System.Object
---@param t System.Type
---@param id number
---@param cacheValue boolean
---@return System.Object
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader:ReadObject(t, id, cacheValue) end
---@param id number
---@param sep System.Char
---@param cacheValue boolean
---@return string
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Reader:ReadString(id, sep, cacheValue) end

---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer : System.Object
---@field Length number
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer

---@param chunkSize number
---@param adapters UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.ISerializationAdapter[]
---@return UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.New(chunkSize, adapters) end
---@param obj System.Object
---@param serializeTypeData boolean
---@return number
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer:WriteObject(obj, serializeTypeData) end
---@param str string
---@param sep System.Char
---@return number
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer:WriteString(str, sep) end
---@return System.Byte[]
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer:SerializeToByteArray() end
---@param str System.IO.Stream
---@return number
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer:SerializeToStream(str) end

---@class UnityEngine.ResourceManagement.Util.LRUCache.Entry : System.ValueType
---@field lruNode System.Collections.Generic.LinkedListNode[TKey]
---@field Value TValue
UnityEngine.ResourceManagement.Util.LRUCache.Entry = {}
---@alias CS.UnityEngine.ResourceManagement.Util.LRUCache.Entry UnityEngine.ResourceManagement.Util.LRUCache.Entry
CS.UnityEngine.ResourceManagement.Util.LRUCache.Entry = UnityEngine.ResourceManagement.Util.LRUCache.Entry

---@param other UnityEngine.ResourceManagement.Util.LRUCache.Entry
---@return boolean
function UnityEngine.ResourceManagement.Util.LRUCache.Entry:Equals(other) end
---@return number
function UnityEngine.ResourceManagement.Util.LRUCache.Entry:GetHashCode() end

---@class UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo : System.ValueType
---@field InvocationTime number
UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo = {}
---@alias CS.UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo
CS.UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo = UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo

---@param d System.Delegate
---@param invocationTime number
---@param p System.Object[]
---@return UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo
function UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo.New(d, invocationTime, p) end
---@return string
function UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo:ToString() end
function UnityEngine.ResourceManagement.Util.DelayedActionManager.DelegateInfo:Invoke() end

---@class UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType
---@field None UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType
---@field Local UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType
---@field Web UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType
UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType
CS.UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType = UnityEngine.ResourceManagement.ResourceProviders.AssetBundleResource.LoadType


---@class UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp : System.Object
UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp
CS.UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp = UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp

---@return UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp
function UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param loadDelay number
function UnityEngine.ResourceManagement.ResourceProviders.AssetDatabaseProvider.InternalOp:Start(provideHandle, loadDelay) end

---@class UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp : System.Object
UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp
CS.UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp = UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp

---@return UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp
function UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param rawProvider UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider
function UnityEngine.ResourceManagement.ResourceProviders.BinaryDataProvider.InternalOp:Start(provideHandle, rawProvider) end

---@class UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp : System.Object
UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp
CS.UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp = UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp

---@return UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp
function UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp:Start(provideHandle) end
---@return number
function UnityEngine.ResourceManagement.ResourceProviders.BundledAssetProvider.InternalOp:ProgressCallback() end

---@class UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp : System.Object
UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp
CS.UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp = UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp

---@return UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp
function UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp:Start(provideHandle) end
---@return number
function UnityEngine.ResourceManagement.ResourceProviders.LegacyResourcesProvider.InternalOp:PercentComplete() end

---@class UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Boolean]
UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp
CS.UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp = UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp

---@return UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp.New() end
---@param callback System.Func
function UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase.BaseInitAsyncOp:Init(callback) end

---@class UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[UnityEngine.ResourceManagement.ResourceProviders.SceneInstance]
UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp
CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp = UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp

---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param provider UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider2
---@return UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp.New(rm, provider) end
---@overload fun(self: UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, loadSceneMode: UnityEngine.SceneManagement.LoadSceneMode, activateOnLoad: boolean, priority: number, depOp: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle)
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param loadSceneParameters UnityEngine.SceneManagement.LoadSceneParameters
---@param activateOnLoad boolean
---@param priority number
---@param depOp UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp:Init(location, loadSceneParameters, activateOnLoad, priority, depOp) end
---@param deps System.Collections.Generic.List
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.SceneOp:GetDependencies(deps) end

---@class UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[UnityEngine.ResourceManagement.ResourceProviders.SceneInstance]
UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp
CS.UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp = UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp

---@return UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp.New() end
---@param sceneLoadHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param options UnityEngine.SceneManagement.UnloadSceneOptions
function UnityEngine.ResourceManagement.ResourceProviders.SceneProvider.UnloadSceneOp:Init(sceneLoadHandle, options) end

---@class UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp : System.Object
UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp
CS.UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp = UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp

---@return UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp
function UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param rawProvider UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider
function UnityEngine.ResourceManagement.ResourceProviders.TextDataProvider.InternalOp:Start(provideHandle, rawProvider) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp : UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation
---@field PercentComplete number
---@field Result UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp -- infered from UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation`1[UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle]
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp

---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param bundle UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle
---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp.New(location, bundle) end
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp:WaitForCompletion() end
---@return UnityEngine.ResourceManagement.AsyncOperations.DownloadStatus
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp:GetDownloadStatus() end
---@param localBandwidth number
---@param remoteBandwidth number
---@param unscaledDeltaTime number
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetBundleOp:Update(localBandwidth, remoteBandwidth, unscaledDeltaTime) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.IVirtualLoadable
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.IVirtualLoadable = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.IVirtualLoadable UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.IVirtualLoadable
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.IVirtualLoadable = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.IVirtualLoadable

---@param localBandwidth number
---@param remoteBandwidth number
---@param unscaledDeltaTime number
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.IVirtualLoadable:Load(localBandwidth, remoteBandwidth, unscaledDeltaTime) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp : UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation
---@field PercentComplete number
---@field Result UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp -- infered from UnityEngine.ResourceManagement.ResourceProviders.Simulation.VBAsyncOperation`1[System.Object]
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp

---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param assetInfo UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleEntry
---@param ph UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp.New(location, assetInfo, ph) end
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp:WaitForCompletion() end
---@param localBandwidth number
---@param remoteBandwidth number
---@param unscaledDeltaTime number
---@return boolean
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle.LoadAssetOp:Load(localBandwidth, remoteBandwidth, unscaledDeltaTime) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp : System.Object
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp

---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp.New() end
---@return number
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp:GetPercentComplete() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param provider UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundleProvider.InternalOp:Start(provideHandle, provider) end

---@class UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp : System.Object
UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp = {}
---@alias CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp
CS.UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp = UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp

---@return UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp.New() end
---@param provideHandle UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param bundle UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualAssetBundle
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp:Start(provideHandle, bundle) end
---@return number
function UnityEngine.ResourceManagement.ResourceProviders.Simulation.VirtualBundledAssetProvider.InternalOp:GetPercentComplete() end

---@class UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.PlayStateNotifier : System.Object
UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.PlayStateNotifier = {}
---@alias CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.PlayStateNotifier UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.PlayStateNotifier
CS.UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.PlayStateNotifier = UnityEngine.ResourceManagement.Diagnostics.DiagnosticEventCollector.PlayStateNotifier


---@class UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings
---@field None UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings
---@field ReleaseDependenciesOnFailure UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings
---@field AllowFailedDependencies UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings
UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings
CS.UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings = UnityEngine.ResourceManagement.AsyncOperations.GroupOperation.GroupOperationSettings


---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer.ObjectToStringRemap : System.ValueType
---@field stringId number
---@field separator System.Char
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer.ObjectToStringRemap = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer.ObjectToStringRemap UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer.ObjectToStringRemap
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer.ObjectToStringRemap = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.BuiltinTypesSerializer.ObjectToStringRemap


---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer.Data : System.ValueType
---@field assemblyId number
---@field classId number
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer.Data = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer.Data UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer.Data
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer.Data = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.TypeSerializer.Data


---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk : System.Object
---@field position number
---@field data System.Byte[]
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk

---@return UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk
function UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.Chunk.New() end

---@class UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.StringParts : System.ValueType
---@field str string
---@field dataSize number
---@field isUnicode boolean
UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.StringParts = {}
---@alias CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.StringParts UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.StringParts
CS.UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.StringParts = UnityEngine.ResourceManagement.Util.BinaryStorageBuffer.Writer.StringParts


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest : UnityEngine.ScriptableObject
UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest = {}
---@alias CS.UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest
CS.UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest = UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest

---@return UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest.New() end
---@param results System.Collections.Generic.Dictionary
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:SetResults(results) end
---@return System.String[]
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:GetAllAssetBundles() end
---@return System.String[]
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:GetAllAssetBundlesWithVariant() end
---@param assetBundleName string
---@return UnityEngine.Hash128
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:GetAssetBundleHash(assetBundleName) end
---@param assetBundleName string
---@return number
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:GetAssetBundleCrc(assetBundleName) end
---@param assetBundleName string
---@return System.String[]
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:GetDirectDependencies(assetBundleName) end
---@param assetBundleName string
---@return System.String[]
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:GetAllDependencies(assetBundleName) end
---@return string
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:ToString() end
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:OnBeforeSerialize() end
function UnityEngine.Build.Pipeline.CompatibilityAssetBundleManifest:OnAfterDeserialize() end

---@class UnityEngine.Build.Pipeline.BundleDetails : System.ValueType
---@field FileName string
---@field Crc number
---@field Hash UnityEngine.Hash128
---@field Dependencies System.String[]
UnityEngine.Build.Pipeline.BundleDetails = {}
---@alias CS.UnityEngine.Build.Pipeline.BundleDetails UnityEngine.Build.Pipeline.BundleDetails
CS.UnityEngine.Build.Pipeline.BundleDetails = UnityEngine.Build.Pipeline.BundleDetails

---@overload fun(self: UnityEngine.Build.Pipeline.BundleDetails, obj: System.Object) : boolean
---@param other UnityEngine.Build.Pipeline.BundleDetails
---@return boolean
function UnityEngine.Build.Pipeline.BundleDetails:Equals(other) end
---@return number
function UnityEngine.Build.Pipeline.BundleDetails:GetHashCode() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.U2D.Sprites.IGL
UnityEngine.U2D.Sprites.IGL = {}
---@alias CS.UnityEngine.U2D.Sprites.IGL UnityEngine.U2D.Sprites.IGL
CS.UnityEngine.U2D.Sprites.IGL = UnityEngine.U2D.Sprites.IGL

function UnityEngine.U2D.Sprites.IGL:PushMatrix() end
function UnityEngine.U2D.Sprites.IGL:PopMatrix() end
---@param m UnityEngine.Matrix4x4
function UnityEngine.U2D.Sprites.IGL:MultMatrix(m) end
---@param mode number
function UnityEngine.U2D.Sprites.IGL:Begin(mode) end
function UnityEngine.U2D.Sprites.IGL:End() end
---@param c UnityEngine.Color
function UnityEngine.U2D.Sprites.IGL:Color(c) end
---@param v UnityEngine.Vector3
function UnityEngine.U2D.Sprites.IGL:Vertex(v) end

---@class UnityEngine.U2D.Sprites.GLSystem : System.Object
UnityEngine.U2D.Sprites.GLSystem = {}
---@alias CS.UnityEngine.U2D.Sprites.GLSystem UnityEngine.U2D.Sprites.GLSystem
CS.UnityEngine.U2D.Sprites.GLSystem = UnityEngine.U2D.Sprites.GLSystem

---@return UnityEngine.U2D.Sprites.GLSystem
function UnityEngine.U2D.Sprites.GLSystem.New() end
function UnityEngine.U2D.Sprites.GLSystem:PushMatrix() end
function UnityEngine.U2D.Sprites.GLSystem:PopMatrix() end
---@param m UnityEngine.Matrix4x4
function UnityEngine.U2D.Sprites.GLSystem:MultMatrix(m) end
---@param mode number
function UnityEngine.U2D.Sprites.GLSystem:Begin(mode) end
function UnityEngine.U2D.Sprites.GLSystem:End() end
---@param c UnityEngine.Color
function UnityEngine.U2D.Sprites.GLSystem:Color(c) end
---@param v UnityEngine.Vector3
function UnityEngine.U2D.Sprites.GLSystem:Vertex(v) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.ProBuilder.Csg.Model : System.Object
---@field materials System.Collections.Generic.List
---@field vertices System.Collections.Generic.List
---@field indices System.Collections.Generic.List
---@field mesh UnityEngine.Mesh
UnityEngine.ProBuilder.Csg.Model = {}
---@alias CS.UnityEngine.ProBuilder.Csg.Model UnityEngine.ProBuilder.Csg.Model
CS.UnityEngine.ProBuilder.Csg.Model = UnityEngine.ProBuilder.Csg.Model

---@overload fun(gameObject: UnityEngine.GameObject) : UnityEngine.ProBuilder.Csg.Model
---@param mesh UnityEngine.Mesh
---@param materials UnityEngine.Material[]
---@param transform UnityEngine.Transform
---@return UnityEngine.ProBuilder.Csg.Model
function UnityEngine.ProBuilder.Csg.Model.New(mesh, materials, transform) end

---@class UnityEngine.ProBuilder.Csg.Node : System.Object
---@field polygons System.Collections.Generic.List
---@field front UnityEngine.ProBuilder.Csg.Node
---@field back UnityEngine.ProBuilder.Csg.Node
---@field plane UnityEngine.ProBuilder.Csg.Plane
UnityEngine.ProBuilder.Csg.Node = {}
---@alias CS.UnityEngine.ProBuilder.Csg.Node UnityEngine.ProBuilder.Csg.Node
CS.UnityEngine.ProBuilder.Csg.Node = UnityEngine.ProBuilder.Csg.Node

---@overload fun() : UnityEngine.ProBuilder.Csg.Node
---@overload fun(list: System.Collections.Generic.List) : UnityEngine.ProBuilder.Csg.Node
---@param list System.Collections.Generic.List
---@param plane UnityEngine.ProBuilder.Csg.Plane
---@param front UnityEngine.ProBuilder.Csg.Node
---@param back UnityEngine.ProBuilder.Csg.Node
---@return UnityEngine.ProBuilder.Csg.Node
function UnityEngine.ProBuilder.Csg.Node.New(list, plane, front, back) end
---@param a1 UnityEngine.ProBuilder.Csg.Node
---@param b1 UnityEngine.ProBuilder.Csg.Node
---@return UnityEngine.ProBuilder.Csg.Node
function UnityEngine.ProBuilder.Csg.Node.Union(a1, b1) end
---@param a1 UnityEngine.ProBuilder.Csg.Node
---@param b1 UnityEngine.ProBuilder.Csg.Node
---@return UnityEngine.ProBuilder.Csg.Node
function UnityEngine.ProBuilder.Csg.Node.Subtract(a1, b1) end
---@param a1 UnityEngine.ProBuilder.Csg.Node
---@param b1 UnityEngine.ProBuilder.Csg.Node
---@return UnityEngine.ProBuilder.Csg.Node
function UnityEngine.ProBuilder.Csg.Node.Intersect(a1, b1) end
---@return UnityEngine.ProBuilder.Csg.Node
function UnityEngine.ProBuilder.Csg.Node:Clone() end
---@param other UnityEngine.ProBuilder.Csg.Node
function UnityEngine.ProBuilder.Csg.Node:ClipTo(other) end
function UnityEngine.ProBuilder.Csg.Node:Invert() end
---@param list System.Collections.Generic.List
function UnityEngine.ProBuilder.Csg.Node:Build(list) end
---@param list System.Collections.Generic.List
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.Csg.Node:ClipPolygons(list) end
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.Csg.Node:AllPolygons() end

---@class UnityEngine.ProBuilder.Csg.Plane : System.Object
---@field normal UnityEngine.Vector3
---@field w number
UnityEngine.ProBuilder.Csg.Plane = {}
---@alias CS.UnityEngine.ProBuilder.Csg.Plane UnityEngine.ProBuilder.Csg.Plane
CS.UnityEngine.ProBuilder.Csg.Plane = UnityEngine.ProBuilder.Csg.Plane

---@overload fun() : UnityEngine.ProBuilder.Csg.Plane
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param c UnityEngine.Vector3
---@return UnityEngine.ProBuilder.Csg.Plane
function UnityEngine.ProBuilder.Csg.Plane.New(a, b, c) end
---@return string
function UnityEngine.ProBuilder.Csg.Plane:ToString() end
---@return boolean
function UnityEngine.ProBuilder.Csg.Plane:Valid() end
function UnityEngine.ProBuilder.Csg.Plane:Flip() end
---@param polygon UnityEngine.ProBuilder.Csg.Polygon
---@param coplanarFront System.Collections.Generic.List
---@param coplanarBack System.Collections.Generic.List
---@param front System.Collections.Generic.List
---@param back System.Collections.Generic.List
function UnityEngine.ProBuilder.Csg.Plane:SplitPolygon(polygon, coplanarFront, coplanarBack, front, back) end

---@class UnityEngine.ProBuilder.Csg.Polygon : System.Object
---@field vertices System.Collections.Generic.List
---@field plane UnityEngine.ProBuilder.Csg.Plane
---@field material UnityEngine.Material
UnityEngine.ProBuilder.Csg.Polygon = {}
---@alias CS.UnityEngine.ProBuilder.Csg.Polygon UnityEngine.ProBuilder.Csg.Polygon
CS.UnityEngine.ProBuilder.Csg.Polygon = UnityEngine.ProBuilder.Csg.Polygon

---@param list System.Collections.Generic.List
---@param mat UnityEngine.Material
---@return UnityEngine.ProBuilder.Csg.Polygon
function UnityEngine.ProBuilder.Csg.Polygon.New(list, mat) end
function UnityEngine.ProBuilder.Csg.Polygon:Flip() end
---@return string
function UnityEngine.ProBuilder.Csg.Polygon:ToString() end

---@class UnityEngine.ProBuilder.Csg.Vertex : System.ValueType
---@field position UnityEngine.Vector3
---@field color UnityEngine.Color
---@field normal UnityEngine.Vector3
---@field tangent UnityEngine.Vector4
---@field uv0 UnityEngine.Vector2
---@field uv2 UnityEngine.Vector2
---@field uv3 UnityEngine.Vector4
---@field uv4 UnityEngine.Vector4
---@field hasPosition boolean
---@field hasColor boolean
---@field hasNormal boolean
---@field hasTangent boolean
---@field hasUV0 boolean
---@field hasUV2 boolean
---@field hasUV3 boolean
---@field hasUV4 boolean
UnityEngine.ProBuilder.Csg.Vertex = {}
---@alias CS.UnityEngine.ProBuilder.Csg.Vertex UnityEngine.ProBuilder.Csg.Vertex
CS.UnityEngine.ProBuilder.Csg.Vertex = UnityEngine.ProBuilder.Csg.Vertex

---@param attribute UnityEngine.ProBuilder.Csg.VertexAttributes
---@return boolean
function UnityEngine.ProBuilder.Csg.Vertex:HasArrays(attribute) end
function UnityEngine.ProBuilder.Csg.Vertex:Flip() end
---@param y UnityEngine.ProBuilder.Csg.Vertex
---@param weight number
---@return UnityEngine.ProBuilder.Csg.Vertex
function UnityEngine.ProBuilder.Csg.Vertex:Mix(y, weight) end

---@class UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Position UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Texture0 UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Texture1 UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Lightmap UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Texture2 UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Texture3 UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Color UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Normal UnityEngine.ProBuilder.Csg.VertexAttributes
---@field Tangent UnityEngine.ProBuilder.Csg.VertexAttributes
---@field All UnityEngine.ProBuilder.Csg.VertexAttributes
UnityEngine.ProBuilder.Csg.VertexAttributes = {}
---@alias CS.UnityEngine.ProBuilder.Csg.VertexAttributes UnityEngine.ProBuilder.Csg.VertexAttributes
CS.UnityEngine.ProBuilder.Csg.VertexAttributes = UnityEngine.ProBuilder.Csg.VertexAttributes


---@class UnityEngine.ProBuilder.Csg.VertexUtility : System.Object
UnityEngine.ProBuilder.Csg.VertexUtility = {}
---@alias CS.UnityEngine.ProBuilder.Csg.VertexUtility UnityEngine.ProBuilder.Csg.VertexUtility
CS.UnityEngine.ProBuilder.Csg.VertexUtility = UnityEngine.ProBuilder.Csg.VertexUtility

---@overload fun(vertices: System.Collections.Generic.IList, out_position: UnityEngine.Vector3[], out_color: UnityEngine.Color[], out_uv0: UnityEngine.Vector2[], out_normal: UnityEngine.Vector3[], out_tangent: UnityEngine.Vector4[], out_uv2: UnityEngine.Vector2[], out_uv3: System.Collections.Generic.List, out_uv4: System.Collections.Generic.List) : UnityEngine.Vector3[], UnityEngine.Color[], UnityEngine.Vector2[], UnityEngine.Vector3[], UnityEngine.Vector4[], UnityEngine.Vector2[], System.Collections.Generic.List, System.Collections.Generic.List
---@param vertices System.Collections.Generic.IList
---@param out_position UnityEngine.Vector3[]
---@param out_color UnityEngine.Color[]
---@param out_uv0 UnityEngine.Vector2[]
---@param out_normal UnityEngine.Vector3[]
---@param out_tangent UnityEngine.Vector4[]
---@param out_uv2 UnityEngine.Vector2[]
---@param out_uv3 System.Collections.Generic.List
---@param out_uv4 System.Collections.Generic.List
---@param attributes UnityEngine.ProBuilder.Csg.VertexAttributes
---@return ,UnityEngine.Vector3[],UnityEngine.Color[],UnityEngine.Vector2[],UnityEngine.Vector3[],UnityEngine.Vector4[],UnityEngine.Vector2[],System.Collections.Generic.List,System.Collections.Generic.List
function UnityEngine.ProBuilder.Csg.VertexUtility.GetArrays(vertices, out_position, out_color, out_uv0, out_normal, out_tangent, out_uv2, out_uv3, out_uv4, attributes) end
---@param mesh UnityEngine.Mesh
---@return UnityEngine.ProBuilder.Csg.Vertex[]
function UnityEngine.ProBuilder.Csg.VertexUtility.GetVertices(mesh) end
---@param mesh UnityEngine.Mesh
---@param vertices System.Collections.Generic.IList
function UnityEngine.ProBuilder.Csg.VertexUtility.SetMesh(mesh, vertices) end
---@param x UnityEngine.ProBuilder.Csg.Vertex
---@param y UnityEngine.ProBuilder.Csg.Vertex
---@param weight number
---@return UnityEngine.ProBuilder.Csg.Vertex
function UnityEngine.ProBuilder.Csg.VertexUtility.Mix(x, y, weight) end
---@param transform UnityEngine.Transform
---@param vertex UnityEngine.ProBuilder.Csg.Vertex
---@return UnityEngine.ProBuilder.Csg.Vertex
function UnityEngine.ProBuilder.Csg.VertexUtility.TransformVertex(transform, vertex) end

---@class UnityEngine.ProBuilder.Csg.CSG : System.Object
---@field epsilon number
UnityEngine.ProBuilder.Csg.CSG = {}
---@alias CS.UnityEngine.ProBuilder.Csg.CSG UnityEngine.ProBuilder.Csg.CSG
CS.UnityEngine.ProBuilder.Csg.CSG = UnityEngine.ProBuilder.Csg.CSG

---@param op UnityEngine.ProBuilder.Csg.CSG.BooleanOp
---@param lhs UnityEngine.GameObject
---@param rhs UnityEngine.GameObject
---@return UnityEngine.ProBuilder.Csg.Model
function UnityEngine.ProBuilder.Csg.CSG.Perform(op, lhs, rhs) end
---@param lhs UnityEngine.GameObject
---@param rhs UnityEngine.GameObject
---@return UnityEngine.ProBuilder.Csg.Model
function UnityEngine.ProBuilder.Csg.CSG.Union(lhs, rhs) end
---@param lhs UnityEngine.GameObject
---@param rhs UnityEngine.GameObject
---@return UnityEngine.ProBuilder.Csg.Model
function UnityEngine.ProBuilder.Csg.CSG.Subtract(lhs, rhs) end
---@param lhs UnityEngine.GameObject
---@param rhs UnityEngine.GameObject
---@return UnityEngine.ProBuilder.Csg.Model
function UnityEngine.ProBuilder.Csg.CSG.Intersect(lhs, rhs) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.ProBuilder.Csg.Plane.EPolygonType
---@field Coplanar UnityEngine.ProBuilder.Csg.Plane.EPolygonType
---@field Front UnityEngine.ProBuilder.Csg.Plane.EPolygonType
---@field Back UnityEngine.ProBuilder.Csg.Plane.EPolygonType
---@field Spanning UnityEngine.ProBuilder.Csg.Plane.EPolygonType
UnityEngine.ProBuilder.Csg.Plane.EPolygonType = {}
---@alias CS.UnityEngine.ProBuilder.Csg.Plane.EPolygonType UnityEngine.ProBuilder.Csg.Plane.EPolygonType
CS.UnityEngine.ProBuilder.Csg.Plane.EPolygonType = UnityEngine.ProBuilder.Csg.Plane.EPolygonType


---@class UnityEngine.ProBuilder.Csg.CSG.BooleanOp
---@field Intersection UnityEngine.ProBuilder.Csg.CSG.BooleanOp
---@field Union UnityEngine.ProBuilder.Csg.CSG.BooleanOp
---@field Subtraction UnityEngine.ProBuilder.Csg.CSG.BooleanOp
UnityEngine.ProBuilder.Csg.CSG.BooleanOp = {}
---@alias CS.UnityEngine.ProBuilder.Csg.CSG.BooleanOp UnityEngine.ProBuilder.Csg.CSG.BooleanOp
CS.UnityEngine.ProBuilder.Csg.CSG.BooleanOp = UnityEngine.ProBuilder.Csg.CSG.BooleanOp


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.Rendering.Universal.ShaderOptions : System.Object
---@field k_MaxVisibleLightCountLowEndMobile number
---@field k_MaxVisibleLightCountMobile number
---@field k_MaxVisibleLightCountDesktop number
UnityEngine.Rendering.Universal.ShaderOptions = {}
---@alias CS.UnityEngine.Rendering.Universal.ShaderOptions UnityEngine.Rendering.Universal.ShaderOptions
CS.UnityEngine.Rendering.Universal.ShaderOptions = UnityEngine.Rendering.Universal.ShaderOptions


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class RenderGraphViewer : UnityEditor.EditorWindow
RenderGraphViewer = {}
---@alias CS.RenderGraphViewer RenderGraphViewer
CS.RenderGraphViewer = RenderGraphViewer

---@return RenderGraphViewer
function RenderGraphViewer.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.FlareEditor : UnityEditor.Editor
UnityEngine.FlareEditor = {}
---@alias CS.UnityEngine.FlareEditor UnityEngine.FlareEditor
CS.UnityEngine.FlareEditor = UnityEngine.FlareEditor

---@return UnityEngine.FlareEditor
function UnityEngine.FlareEditor.New() end
function UnityEngine.FlareEditor:OnInspectorGUI() end

---@class UnityEngine.LensFlareEditor : UnityEditor.Editor
UnityEngine.LensFlareEditor = {}
---@alias CS.UnityEngine.LensFlareEditor UnityEngine.LensFlareEditor
CS.UnityEngine.LensFlareEditor = UnityEngine.LensFlareEditor

---@return UnityEngine.LensFlareEditor
function UnityEngine.LensFlareEditor.New() end
function UnityEngine.LensFlareEditor:OnInspectorGUI() end

---@class UnityEngine.Rendering.BakingCell : System.ValueType
---@field position UnityEngine.Vector3Int
---@field index number
---@field bricks UnityEngine.Rendering.ProbeBrickIndex.Brick[]
---@field probePositions UnityEngine.Vector3[]
---@field sh UnityEngine.Rendering.SphericalHarmonicsL2[]
---@field validityNeighbourMask System.Byte[]
---@field validity System.Single[]
---@field offsetVectors UnityEngine.Vector3[]
---@field touchupVolumeInteraction System.Single[]
---@field minSubdiv number
---@field indexChunkCount number
---@field shChunkCount number
---@field probeIndices System.Int32[]
---@field bounds UnityEngine.Bounds
UnityEngine.Rendering.BakingCell = {}
---@alias CS.UnityEngine.Rendering.BakingCell UnityEngine.Rendering.BakingCell
CS.UnityEngine.Rendering.BakingCell = UnityEngine.Rendering.BakingCell


---@class UnityEngine.Rendering.BakingBatch : System.Object
---@field index number
---@field cellIndex2SceneReferences System.Collections.Generic.Dictionary
---@field cells System.Collections.Generic.List
---@field virtualOffsets UnityEngine.Vector3[]
---@field uniqueBrickSubdiv System.Collections.Generic.Dictionary
---@field invalidatedPositions System.Collections.Generic.Dictionary
---@field uniqueProbeCount number
UnityEngine.Rendering.BakingBatch = {}
---@alias CS.UnityEngine.Rendering.BakingBatch UnityEngine.Rendering.BakingBatch
CS.UnityEngine.Rendering.BakingBatch = UnityEngine.Rendering.BakingBatch

---@param index number
---@param cellCount UnityEngine.Vector3Int
---@return UnityEngine.Rendering.BakingBatch
function UnityEngine.Rendering.BakingBatch.New(index, cellCount) end
function UnityEngine.Rendering.BakingBatch:Clear() end
---@param position UnityEngine.Vector3
---@return number
function UnityEngine.Rendering.BakingBatch:GetProbePositionHash(position) end
---@param position UnityEngine.Vector3
---@return number
function UnityEngine.Rendering.BakingBatch:GetSubdivLevelAt(position) end

---@class UnityEngine.Rendering.ProbeGIBaking : System.Object
UnityEngine.Rendering.ProbeGIBaking = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking UnityEngine.Rendering.ProbeGIBaking
CS.UnityEngine.Rendering.ProbeGIBaking = UnityEngine.Rendering.ProbeGIBaking

---@return UnityEngine.Rendering.ProbeGIBaking
function UnityEngine.Rendering.ProbeGIBaking.New() end
function UnityEngine.Rendering.ProbeGIBaking.Init() end
function UnityEngine.Rendering.ProbeGIBaking.Clear() end
---@return boolean
function UnityEngine.Rendering.ProbeGIBaking.CanFreezePlacement() end
---@param out_hasFoundInvalidSetup boolean
---@return ,boolean
function UnityEngine.Rendering.ProbeGIBaking.FindWorldBounds(out_hasFoundInvalidSetup) end
function UnityEngine.Rendering.ProbeGIBaking.OnBakeCompletedCleanup() end
function UnityEngine.Rendering.ProbeGIBaking.RunPlacement() end
---@return UnityEngine.Rendering.ProbeSubdivisionContext
function UnityEngine.Rendering.ProbeGIBaking.PrepareProbeSubdivisionContext() end
---@param ctx UnityEngine.Rendering.ProbeSubdivisionContext
---@return UnityEngine.Rendering.ProbeSubdivisionResult
function UnityEngine.Rendering.ProbeGIBaking.BakeBricks(ctx) end
---@return UnityEngine.Rendering.ProbeSubdivisionResult
function UnityEngine.Rendering.ProbeGIBaking.GetBricksFromLoaded() end
---@param profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
---@return boolean
function UnityEngine.Rendering.ProbeGIBaking.ModifyProfileFromLoadedData(profile) end
---@param results UnityEngine.Rendering.ProbeSubdivisionResult
---@param refToWS UnityEngine.Matrix4x4
function UnityEngine.Rendering.ProbeGIBaking.ApplySubdivisionResults(results, refToWS) end

---@class UnityEngine.Rendering.ProbePlacement : System.Object
UnityEngine.Rendering.ProbePlacement = {}
---@alias CS.UnityEngine.Rendering.ProbePlacement UnityEngine.Rendering.ProbePlacement
CS.UnityEngine.Rendering.ProbePlacement = UnityEngine.Rendering.ProbePlacement

---@return UnityEngine.Rendering.ProbePlacement
function UnityEngine.Rendering.ProbePlacement.New() end
---@param probeVolumeCount number
---@param profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
---@return UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext
function UnityEngine.Rendering.ProbePlacement.AllocateGPUResources(probeVolumeCount, profile) end
---@param cellBounds UnityEngine.Bounds
---@param subdivisionCtx UnityEngine.Rendering.ProbeSubdivisionContext
---@param ctx UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext
---@param contributors UnityEngine.Rendering.GIContributors
---@param probeVolumes System.Collections.Generic.List
---@return UnityEngine.Rendering.ProbeBrickIndex.Brick[]
function UnityEngine.Rendering.ProbePlacement.SubdivideCell(cellBounds, subdivisionCtx, ctx, contributors, probeVolumes) end

---@class UnityEngine.Rendering.ProbeSubdivisionContext : System.Object
---@field probeVolumes System.Collections.Generic.List
---@field cells System.Collections.Generic.List
---@field contributors UnityEngine.Rendering.GIContributors
---@field profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
UnityEngine.Rendering.ProbeSubdivisionContext = {}
---@alias CS.UnityEngine.Rendering.ProbeSubdivisionContext UnityEngine.Rendering.ProbeSubdivisionContext
CS.UnityEngine.Rendering.ProbeSubdivisionContext = UnityEngine.Rendering.ProbeSubdivisionContext

---@return UnityEngine.Rendering.ProbeSubdivisionContext
function UnityEngine.Rendering.ProbeSubdivisionContext.New() end
---@param profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
---@param refVolOrigin UnityEngine.Vector3
function UnityEngine.Rendering.ProbeSubdivisionContext:Initialize(profile, refVolOrigin) end

---@class UnityEngine.Rendering.ProbeSubdivisionResult : System.Object
---@field cells System.Collections.Generic.List
---@field scenesPerCells System.Collections.Generic.Dictionary
UnityEngine.Rendering.ProbeSubdivisionResult = {}
---@alias CS.UnityEngine.Rendering.ProbeSubdivisionResult UnityEngine.Rendering.ProbeSubdivisionResult
CS.UnityEngine.Rendering.ProbeSubdivisionResult = UnityEngine.Rendering.ProbeSubdivisionResult

---@return UnityEngine.Rendering.ProbeSubdivisionResult
function UnityEngine.Rendering.ProbeSubdivisionResult.New() end

---@class UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer : UnityEditor.PropertyDrawer
UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer
CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer = UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer

---@return UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer
function UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer.New() end
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
---@return number
function UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer:GetPropertyHeight(property, label) end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer:OnGUI(position, property, label) end

---@class UnityEngine.Rendering.ProbeVolumeBakingWindow : UnityEditor.EditorWindow
UnityEngine.Rendering.ProbeVolumeBakingWindow = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingWindow UnityEngine.Rendering.ProbeVolumeBakingWindow
CS.UnityEngine.Rendering.ProbeVolumeBakingWindow = UnityEngine.Rendering.ProbeVolumeBakingWindow

---@return UnityEngine.Rendering.ProbeVolumeBakingWindow
function UnityEngine.Rendering.ProbeVolumeBakingWindow.New() end

---@class UnityEngine.Rendering.RenderPipelineResourcesEditor : UnityEditor.Editor
UnityEngine.Rendering.RenderPipelineResourcesEditor = {}
---@alias CS.UnityEngine.Rendering.RenderPipelineResourcesEditor UnityEngine.Rendering.RenderPipelineResourcesEditor
CS.UnityEngine.Rendering.RenderPipelineResourcesEditor = UnityEngine.Rendering.RenderPipelineResourcesEditor

---@return UnityEngine.Rendering.RenderPipelineResourcesEditor
function UnityEngine.Rendering.RenderPipelineResourcesEditor.New() end
function UnityEngine.Rendering.RenderPipelineResourcesEditor:OnInspectorGUI() end

---@class UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor : UnityEditor.Editor
UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor = {}
---@alias CS.UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor
CS.UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor = UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor

---@return UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor
function UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor.New() end
function UnityEngine.Rendering.UI.DebugUIHandlerCanvasEditor:OnInspectorGUI() end

---@class RenderGraphViewer.Style : System.Object
---@field title UnityEngine.GUIContent
RenderGraphViewer.Style = {}
---@alias CS.RenderGraphViewer.Style RenderGraphViewer.Style
CS.RenderGraphViewer.Style = RenderGraphViewer.Style


---@class RenderGraphViewer.CellElement : UnityEngine.UIElements.VisualElement
RenderGraphViewer.CellElement = {}
---@alias CS.RenderGraphViewer.CellElement RenderGraphViewer.CellElement
CS.RenderGraphViewer.CellElement = RenderGraphViewer.CellElement

---@param idxStart number
---@param idxEnd number
---@return RenderGraphViewer.CellElement
function RenderGraphViewer.CellElement.New(idxStart, idxEnd) end
---@param color UnityEngine.UIElements.StyleColor
function RenderGraphViewer.CellElement:SetColor(color) end

---@class RenderGraphViewer.Filter
---@field ImportedResources RenderGraphViewer.Filter
---@field CulledPasses RenderGraphViewer.Filter
---@field Textures RenderGraphViewer.Filter
---@field ComputeBuffers RenderGraphViewer.Filter
RenderGraphViewer.Filter = {}
---@alias CS.RenderGraphViewer.Filter RenderGraphViewer.Filter
CS.RenderGraphViewer.Filter = RenderGraphViewer.Filter


---@class RenderGraphViewer.ResourceElementInfo : System.ValueType
---@field lifetime UnityEngine.UIElements.VisualElement
---@field resourceLabel UnityEngine.UIElements.VisualElement
RenderGraphViewer.ResourceElementInfo = {}
---@alias CS.RenderGraphViewer.ResourceElementInfo RenderGraphViewer.ResourceElementInfo
CS.RenderGraphViewer.ResourceElementInfo = RenderGraphViewer.ResourceElementInfo

function RenderGraphViewer.ResourceElementInfo:Reset() end

---@class RenderGraphViewer.PassElementInfo : System.ValueType
---@field pass UnityEngine.UIElements.VisualElement
---@field remap number
RenderGraphViewer.PassElementInfo = {}
---@alias CS.RenderGraphViewer.PassElementInfo RenderGraphViewer.PassElementInfo
CS.RenderGraphViewer.PassElementInfo = RenderGraphViewer.PassElementInfo

function RenderGraphViewer.PassElementInfo:Reset() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.Rendering.ProbeGIBaking.BakingStage
---@field NotStarted UnityEngine.Rendering.ProbeGIBaking.BakingStage
---@field Started UnityEngine.Rendering.ProbeGIBaking.BakingStage
---@field PlacementDone UnityEngine.Rendering.ProbeGIBaking.BakingStage
---@field OnBakeCompletedStarted UnityEngine.Rendering.ProbeGIBaking.BakingStage
---@field OnBakeCompletedFinished UnityEngine.Rendering.ProbeGIBaking.BakingStage
UnityEngine.Rendering.ProbeGIBaking.BakingStage = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.BakingStage UnityEngine.Rendering.ProbeGIBaking.BakingStage
CS.UnityEngine.Rendering.ProbeGIBaking.BakingStage = UnityEngine.Rendering.ProbeGIBaking.BakingStage


---@class UnityEngine.Rendering.ProbeGIBaking.BakingProfiling : System.Object
UnityEngine.Rendering.ProbeGIBaking.BakingProfiling = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.BakingProfiling UnityEngine.Rendering.ProbeGIBaking.BakingProfiling
CS.UnityEngine.Rendering.ProbeGIBaking.BakingProfiling = UnityEngine.Rendering.ProbeGIBaking.BakingProfiling

---@param stage T
---@param ref_currentStage T
---@return UnityEngine.Rendering.ProbeGIBaking.BakingProfiling,T
function UnityEngine.Rendering.ProbeGIBaking.BakingProfiling.New(stage, ref_currentStage) end
---@param stage T
---@return number
function UnityEngine.Rendering.ProbeGIBaking.BakingProfiling:GetProgress(stage) end
---@return T
function UnityEngine.Rendering.ProbeGIBaking.BakingProfiling:GetLastStep() end
---@param ref_currentStage T
---@return ,T
function UnityEngine.Rendering.ProbeGIBaking.BakingProfiling:OnDispose(ref_currentStage) end

---@class UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling : UnityEngine.Rendering.ProbeGIBaking.BakingProfiling
UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling
CS.UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling = UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling

---@param stage UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@return UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling
function UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.New(stage) end
---@param out_progress0 number
---@param out_progress1 number
---@return ,number,number
function UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.GetProgressRange(out_progress0, out_progress1) end
---@return UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
function UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling:GetLastStep() end
function UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling:Dispose() end

---@class UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling : UnityEngine.Rendering.ProbeGIBaking.BakingProfiling
UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling
CS.UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling = UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling

---@param stage UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
---@return UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling
function UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.New(stage) end
---@param out_progress0 number
---@param out_progress1 number
---@return ,number,number
function UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.GetProgressRange(out_progress0, out_progress1) end
---@return UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
function UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling:GetLastStep() end
function UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling:Dispose() end

---@class UnityEngine.Rendering.ProbeGIBaking.DilatedProbe : System.ValueType
---@field L0 UnityEngine.Vector3
---@field L1_0 UnityEngine.Vector3
---@field L1_1 UnityEngine.Vector3
---@field L1_2 UnityEngine.Vector3
---@field L2_0 UnityEngine.Vector3
---@field L2_1 UnityEngine.Vector3
---@field L2_2 UnityEngine.Vector3
---@field L2_3 UnityEngine.Vector3
---@field L2_4 UnityEngine.Vector3
UnityEngine.Rendering.ProbeGIBaking.DilatedProbe = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.DilatedProbe UnityEngine.Rendering.ProbeGIBaking.DilatedProbe
CS.UnityEngine.Rendering.ProbeGIBaking.DilatedProbe = UnityEngine.Rendering.ProbeGIBaking.DilatedProbe


---@class UnityEngine.Rendering.ProbeGIBaking.DataForDilation : System.ValueType
---@field positionBuffer UnityEngine.ComputeBuffer
---@field outputProbes UnityEngine.ComputeBuffer
---@field needDilatingBuffer UnityEngine.ComputeBuffer
UnityEngine.Rendering.ProbeGIBaking.DataForDilation = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.DataForDilation UnityEngine.Rendering.ProbeGIBaking.DataForDilation
CS.UnityEngine.Rendering.ProbeGIBaking.DataForDilation = UnityEngine.Rendering.ProbeGIBaking.DataForDilation

---@param cell UnityEngine.Rendering.ProbeReferenceVolume.Cell
---@param defaultThreshold number
---@return UnityEngine.Rendering.ProbeGIBaking.DataForDilation
function UnityEngine.Rendering.ProbeGIBaking.DataForDilation.New(cell, defaultThreshold) end
function UnityEngine.Rendering.ProbeGIBaking.DataForDilation:ExtractDilatedProbes() end
function UnityEngine.Rendering.ProbeGIBaking.DataForDilation:Dispose() end

---@class UnityEngine.Rendering.ProbeGIBaking.CreateRayCastCommandsJob : System.ValueType
---@field voSettings UnityEngine.Rendering.VirtualOffsetSettings
---@field positions Unity.Collections.NativeArray
---@field positionIndex Unity.Collections.NativeArray
---@field searchDistanceForPosition Unity.Collections.NativeArray
---@field startIdx number
---@field raycastCommands Unity.Collections.NativeArray
---@field raycastHits Unity.Collections.NativeArray
---@field queryParams UnityEngine.QueryParameters
UnityEngine.Rendering.ProbeGIBaking.CreateRayCastCommandsJob = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.CreateRayCastCommandsJob UnityEngine.Rendering.ProbeGIBaking.CreateRayCastCommandsJob
CS.UnityEngine.Rendering.ProbeGIBaking.CreateRayCastCommandsJob = UnityEngine.Rendering.ProbeGIBaking.CreateRayCastCommandsJob

---@param i number
function UnityEngine.Rendering.ProbeGIBaking.CreateRayCastCommandsJob:Execute(i) end

---@class UnityEngine.Rendering.ProbeGIBaking.PushOutGeometryJob : System.ValueType
---@field voSettings UnityEngine.Rendering.VirtualOffsetSettings
---@field positionIndex Unity.Collections.NativeArray
---@field startIdx number
---@field raycastCommands Unity.Collections.NativeArray
---@field raycastHits Unity.Collections.NativeArray
---@field positions Unity.Collections.NativeArray
---@field offsets Unity.Collections.NativeArray
UnityEngine.Rendering.ProbeGIBaking.PushOutGeometryJob = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.PushOutGeometryJob UnityEngine.Rendering.ProbeGIBaking.PushOutGeometryJob
CS.UnityEngine.Rendering.ProbeGIBaking.PushOutGeometryJob = UnityEngine.Rendering.ProbeGIBaking.PushOutGeometryJob

---@param i number
function UnityEngine.Rendering.ProbeGIBaking.PushOutGeometryJob:Execute(i) end

---@class UnityEngine.Rendering.ProbePlacement.GPUProbeVolumeOBB : System.ValueType
---@field corner UnityEngine.Vector3
---@field X UnityEngine.Vector3
---@field Y UnityEngine.Vector3
---@field Z UnityEngine.Vector3
---@field minControllerSubdivLevel number
---@field maxControllerSubdivLevel number
---@field fillEmptySpaces number
---@field maxSubdivLevelInsideVolume number
UnityEngine.Rendering.ProbePlacement.GPUProbeVolumeOBB = {}
---@alias CS.UnityEngine.Rendering.ProbePlacement.GPUProbeVolumeOBB UnityEngine.Rendering.ProbePlacement.GPUProbeVolumeOBB
CS.UnityEngine.Rendering.ProbePlacement.GPUProbeVolumeOBB = UnityEngine.Rendering.ProbePlacement.GPUProbeVolumeOBB


---@class UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext : System.Object
---@field maxSubdivisionLevel number
---@field maxBrickCountPerAxis number
---@field maxSubdivisionLevelInSubCell number
---@field maxBrickCountPerAxisInSubCell number
---@field sceneSDF UnityEngine.RenderTexture
---@field sceneSDF2 UnityEngine.RenderTexture
---@field dummyRenderTarget UnityEngine.RenderTexture
---@field probeVolumesBuffer UnityEngine.ComputeBuffer
---@field bricksBuffers UnityEngine.ComputeBuffer[]
---@field readbackCountBuffers UnityEngine.ComputeBuffer[]
---@field brickPositions UnityEngine.Vector3[]
UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext = {}
---@alias CS.UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext
CS.UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext = UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext

---@param probeVolumeCount number
---@param profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
---@return UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext
function UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext.New(probeVolumeCount, profile) end
function UnityEngine.Rendering.ProbePlacement.GPUSubdivisionContext:Dispose() end

---@class UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug : System.Object
UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug = {}
---@alias CS.UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug
CS.UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug = UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug

---@return UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug
function UnityEngine.Rendering.ProbeSubdivisionContext.RealtimeProbeSubdivisionDebug.New() end

---@class UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer.Styles : System.Object
---@field enableDilation UnityEngine.GUIContent
---@field dilationDistance UnityEngine.GUIContent
---@field dilationValidity UnityEngine.GUIContent
---@field dilationIterationCount UnityEngine.GUIContent
---@field dilationSquaredDistanceWeighting UnityEngine.GUIContent
---@field useVirtualOffset UnityEngine.GUIContent
---@field virtualOffsetSearchMultiplier UnityEngine.GUIContent
---@field virtualOffsetBiasOutGeometry UnityEngine.GUIContent
---@field virtualOffsetRayOriginBias UnityEngine.GUIContent
---@field virtualOffsetMaxHitsPerRay UnityEngine.GUIContent
---@field virtualOffsetCollisionMask UnityEngine.GUIContent
---@field advanced UnityEngine.GUIContent
---@field dilationSettingsTitle UnityEngine.GUIContent
---@field virtualOffsetSettingsTitle UnityEngine.GUIContent
UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer.Styles = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer.Styles UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer.Styles
CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer.Styles = UnityEngine.Rendering.ProbeVolumeBakingProcessSettingsDrawer.Styles


---@class UnityEngine.Rendering.ProbeVolumeBakingWindow.SceneData : System.ValueType
---@field asset UnityEditor.SceneAsset
---@field guid string
UnityEngine.Rendering.ProbeVolumeBakingWindow.SceneData = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.SceneData UnityEngine.Rendering.ProbeVolumeBakingWindow.SceneData
CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.SceneData = UnityEngine.Rendering.ProbeVolumeBakingWindow.SceneData

---@return string
function UnityEngine.Rendering.ProbeVolumeBakingWindow.SceneData:GetPath() end

---@class UnityEngine.Rendering.ProbeVolumeBakingWindow.Styles : System.Object
---@field sceneIcon UnityEngine.Texture
---@field probeVolumeIcon UnityEngine.Texture
---@field debugIcon UnityEngine.Texture
---@field sceneLightingSettings UnityEngine.GUIContent
---@field activeScenarioLabel UnityEngine.GUIContent
---@field sceneNotFound UnityEngine.GUIContent
---@field bakingSetsTitle UnityEngine.GUIContent
---@field debugButton UnityEngine.GUIContent
---@field stats UnityEngine.GUIContent
---@field scenarioCostStat UnityEngine.GUIContent
---@field totalCostStat UnityEngine.GUIContent
---@field invalidLabel UnityEngine.GUIContent
---@field emptyLabel UnityEngine.GUIContent
---@field notLoadedLabel UnityEngine.GUIContent
---@field scenariosStatusLabel UnityEngine.GUIContent[]
---@field labelRed UnityEngine.GUIStyle
---@field boldFoldout UnityEngine.GUIStyle
UnityEngine.Rendering.ProbeVolumeBakingWindow.Styles = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.Styles UnityEngine.Rendering.ProbeVolumeBakingWindow.Styles
CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.Styles = UnityEngine.Rendering.ProbeVolumeBakingWindow.Styles


---@class UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus
---@field Valid UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus
---@field NotLoaded UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus
---@field OutOfDate UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus
---@field NotBaked UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus
UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus
CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus = UnityEngine.Rendering.ProbeVolumeBakingWindow.ScenariosStatus


---@class UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable
---@field RendererFilterSettings UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable
---@field Dilation UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable
---@field VirtualOffset UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable
UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable
CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable = UnityEngine.Rendering.ProbeVolumeBakingWindow.Expandable


---@class UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay : UnityEditor.Overlays.Overlay
---@field visible boolean
UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay
CS.UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay = UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay

---@return UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay
function UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay.New() end
function UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay:OnCreated() end
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.Rendering.ProbeVolumeBakingWindow.ProbeVolumeOverlay:CreatePanelContent() end

---@class UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field PrepareWorldSubdivision UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field EnsurePerSceneDataInOpenScenes UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field FindWorldBounds UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field PlaceProbes UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field BakeBricks UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field ApplySubdivisionResults UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field ApplyVirtualOffsets UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
---@field None UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages
CS.UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages = UnityEngine.Rendering.ProbeGIBaking.BakingSetupProfiling.Stages


---@class UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
---@field FinalizingBake UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
---@field AddOccluders UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
---@field FetchResults UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
---@field WriteBakedData UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
---@field PerformDilation UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
---@field None UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages = {}
---@alias CS.UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages
CS.UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages = UnityEngine.Rendering.ProbeGIBaking.BakingCompleteProfiling.Stages


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.TestTools.EnterPlayMode : System.Object
---@field ExpectDomainReload boolean
---@field ExpectedPlaymodeState boolean
UnityEngine.TestTools.EnterPlayMode = {}
---@alias CS.UnityEngine.TestTools.EnterPlayMode UnityEngine.TestTools.EnterPlayMode
CS.UnityEngine.TestTools.EnterPlayMode = UnityEngine.TestTools.EnterPlayMode

---@param expectDomainReload boolean
---@return UnityEngine.TestTools.EnterPlayMode
function UnityEngine.TestTools.EnterPlayMode.New(expectDomainReload) end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.EnterPlayMode:Perform() end

---@class UnityEngine.TestTools.ExitPlayMode : System.Object
---@field ExpectDomainReload boolean
---@field ExpectedPlaymodeState boolean
UnityEngine.TestTools.ExitPlayMode = {}
---@alias CS.UnityEngine.TestTools.ExitPlayMode UnityEngine.TestTools.ExitPlayMode
CS.UnityEngine.TestTools.ExitPlayMode = UnityEngine.TestTools.ExitPlayMode

---@return UnityEngine.TestTools.ExitPlayMode
function UnityEngine.TestTools.ExitPlayMode.New() end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.ExitPlayMode:Perform() end

---@class UnityEngine.TestTools.RecompileScripts : System.Object
---@field Current UnityEngine.TestTools.RecompileScripts
---@field ExpectDomainReload boolean
---@field ExpectedPlaymodeState boolean
---@field ExpectScriptCompilation boolean
---@field ExpectScriptCompilationSuccess boolean
UnityEngine.TestTools.RecompileScripts = {}
---@alias CS.UnityEngine.TestTools.RecompileScripts UnityEngine.TestTools.RecompileScripts
CS.UnityEngine.TestTools.RecompileScripts = UnityEngine.TestTools.RecompileScripts

---@overload fun() : UnityEngine.TestTools.RecompileScripts
---@overload fun(expectScriptCompilation: boolean) : UnityEngine.TestTools.RecompileScripts
---@param expectScriptCompilation boolean
---@param expectScriptCompilationSuccess boolean
---@return UnityEngine.TestTools.RecompileScripts
function UnityEngine.TestTools.RecompileScripts.New(expectScriptCompilation, expectScriptCompilationSuccess) end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.RecompileScripts:Perform() end

---@class UnityEngine.TestTools.WaitForDomainReload : System.Object
---@field ExpectDomainReload boolean
---@field ExpectedPlaymodeState boolean
UnityEngine.TestTools.WaitForDomainReload = {}
---@alias CS.UnityEngine.TestTools.WaitForDomainReload UnityEngine.TestTools.WaitForDomainReload
CS.UnityEngine.TestTools.WaitForDomainReload = UnityEngine.TestTools.WaitForDomainReload

---@return UnityEngine.TestTools.WaitForDomainReload
function UnityEngine.TestTools.WaitForDomainReload.New() end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.WaitForDomainReload:Perform() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class DummyShaderLibrary : System.Object
DummyShaderLibrary = {}
---@alias CS.DummyShaderLibrary DummyShaderLibrary
CS.DummyShaderLibrary = DummyShaderLibrary

---@return DummyShaderLibrary
function DummyShaderLibrary.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class OrganizationCredentials : System.Object
---@field User string
---@field Password string
OrganizationCredentials = {}
---@alias CS.OrganizationCredentials OrganizationCredentials
CS.OrganizationCredentials = OrganizationCredentials

---@return OrganizationCredentials
function OrganizationCredentials.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.ProBuilder.Poly2Tri.P2T : System.Object
UnityEngine.ProBuilder.Poly2Tri.P2T = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.P2T UnityEngine.ProBuilder.Poly2Tri.P2T
CS.UnityEngine.ProBuilder.Poly2Tri.P2T = UnityEngine.ProBuilder.Poly2Tri.P2T

---@overload fun(ps: UnityEngine.ProBuilder.Poly2Tri.PolygonSet)
---@overload fun(p: UnityEngine.ProBuilder.Poly2Tri.Polygon)
---@overload fun(cps: UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet)
---@overload fun(ps: UnityEngine.ProBuilder.Poly2Tri.PointSet)
---@overload fun(algorithm: UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm, t: UnityEngine.ProBuilder.Poly2Tri.Triangulatable)
---@param tcx UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
function UnityEngine.ProBuilder.Poly2Tri.P2T.Triangulate(tcx) end
---@param algorithm UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
function UnityEngine.ProBuilder.Poly2Tri.P2T.CreateContext(algorithm) end
function UnityEngine.ProBuilder.Poly2Tri.P2T.Warmup() end

---@class UnityEngine.ProBuilder.Poly2Tri.Polygon : System.Object
---@field TriangulationMode UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
---@field Points System.Collections.Generic.IList
---@field Triangles System.Collections.Generic.IList
---@field Holes System.Collections.Generic.IList
UnityEngine.ProBuilder.Poly2Tri.Polygon = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.Polygon UnityEngine.ProBuilder.Poly2Tri.Polygon
CS.UnityEngine.ProBuilder.Poly2Tri.Polygon = UnityEngine.ProBuilder.Poly2Tri.Polygon

---@overload fun(points: System.Collections.Generic.IList) : UnityEngine.ProBuilder.Poly2Tri.Polygon
---@overload fun(points: System.Collections.Generic.IEnumerable) : UnityEngine.ProBuilder.Poly2Tri.Polygon
---@param points UnityEngine.ProBuilder.Poly2Tri.PolygonPoint[]
---@return UnityEngine.ProBuilder.Poly2Tri.Polygon
function UnityEngine.ProBuilder.Poly2Tri.Polygon.New(points) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.Polygon:AddSteinerPoint(point) end
---@param points System.Collections.Generic.List
function UnityEngine.ProBuilder.Poly2Tri.Polygon:AddSteinerPoints(points) end
function UnityEngine.ProBuilder.Poly2Tri.Polygon:ClearSteinerPoints() end
---@param poly UnityEngine.ProBuilder.Poly2Tri.Polygon
function UnityEngine.ProBuilder.Poly2Tri.Polygon:AddHole(poly) end
---@param point UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
---@param newPoint UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
function UnityEngine.ProBuilder.Poly2Tri.Polygon:InsertPointAfter(point, newPoint) end
---@param list System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.Poly2Tri.Polygon:AddPoints(list) end
---@param p UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
function UnityEngine.ProBuilder.Poly2Tri.Polygon:AddPoint(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
function UnityEngine.ProBuilder.Poly2Tri.Polygon:RemovePoint(p) end
---@param t UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.Polygon:AddTriangle(t) end
---@param list System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.Poly2Tri.Polygon:AddTriangles(list) end
function UnityEngine.ProBuilder.Poly2Tri.Polygon:ClearTriangles() end
---@param tcx UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
function UnityEngine.ProBuilder.Poly2Tri.Polygon:Prepare(tcx) end

---@class UnityEngine.ProBuilder.Poly2Tri.PolygonPoint : UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field Next UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
---@field Previous UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
UnityEngine.ProBuilder.Poly2Tri.PolygonPoint = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.PolygonPoint UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
CS.UnityEngine.ProBuilder.Poly2Tri.PolygonPoint = UnityEngine.ProBuilder.Poly2Tri.PolygonPoint

---@param x number
---@param y number
---@param index number
---@return UnityEngine.ProBuilder.Poly2Tri.PolygonPoint
function UnityEngine.ProBuilder.Poly2Tri.PolygonPoint.New(x, y, index) end

---@class UnityEngine.ProBuilder.Poly2Tri.PolygonSet : System.Object
---@field Polygons System.Collections.Generic.IEnumerable
UnityEngine.ProBuilder.Poly2Tri.PolygonSet = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.PolygonSet UnityEngine.ProBuilder.Poly2Tri.PolygonSet
CS.UnityEngine.ProBuilder.Poly2Tri.PolygonSet = UnityEngine.ProBuilder.Poly2Tri.PolygonSet

---@overload fun() : UnityEngine.ProBuilder.Poly2Tri.PolygonSet
---@param poly UnityEngine.ProBuilder.Poly2Tri.Polygon
---@return UnityEngine.ProBuilder.Poly2Tri.PolygonSet
function UnityEngine.ProBuilder.Poly2Tri.PolygonSet.New(poly) end
---@param p UnityEngine.ProBuilder.Poly2Tri.Polygon
function UnityEngine.ProBuilder.Poly2Tri.PolygonSet:Add(p) end

---@class UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle : System.Object
---@field Points UnityEngine.ProBuilder.Poly2Tri.FixedArray3
---@field Neighbors UnityEngine.ProBuilder.Poly2Tri.FixedArray3
---@field EdgeIsConstrained UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3
---@field EdgeIsDelaunay UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3
---@field IsInterior boolean
UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
CS.UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle = UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle

---@param p1 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param p2 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param p3 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle.New(p1, p2, p3) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return number
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:IndexOf(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return number
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:IndexCWFrom(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return number
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:IndexCCWFrom(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:Contains(p) end
---@param t UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:MarkNeighbor(t) end
---@param t UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:OppositePoint(t, p) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:NeighborCWFrom(point) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:NeighborCCWFrom(point) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:NeighborAcrossFrom(point) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:PointCCWFrom(point) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:PointCWFrom(point) end
---@param oPoint UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param nPoint UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:Legalize(oPoint, nPoint) end
---@return string
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:ToString() end
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:MarkNeighborEdges() end
---@overload fun(self: UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle, triangle: UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle)
---@param tList System.Collections.Generic.List
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:MarkEdge(tList) end
---@overload fun(self: UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle, index: number)
---@overload fun(self: UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle, edge: UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint)
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param q UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:MarkConstrainedEdge(p, q) end
---@return number
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:Area() end
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:Centroid() end
---@param p1 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param p2 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return number
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:EdgeIndex(p1, p2) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:GetConstrainedEdgeCCW(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:GetConstrainedEdgeCW(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:GetConstrainedEdgeAcross(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param ce boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:SetConstrainedEdgeCCW(p, ce) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param ce boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:SetConstrainedEdgeCW(p, ce) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param ce boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:SetConstrainedEdgeAcross(p, ce) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:GetDelaunayEdgeCCW(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:GetDelaunayEdgeCW(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:GetDelaunayEdgeAcross(p) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param ce boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:SetDelaunayEdgeCCW(p, ce) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param ce boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:SetDelaunayEdgeCW(p, ce) end
---@param p UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param ce boolean
function UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle:SetDelaunayEdgeAcross(p, ce) end

---@class UnityEngine.ProBuilder.Poly2Tri.AdvancingFront : System.Object
---@field Head UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@field Tail UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
UnityEngine.ProBuilder.Poly2Tri.AdvancingFront = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.AdvancingFront UnityEngine.ProBuilder.Poly2Tri.AdvancingFront
CS.UnityEngine.ProBuilder.Poly2Tri.AdvancingFront = UnityEngine.ProBuilder.Poly2Tri.AdvancingFront

---@param head UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@param tail UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@return UnityEngine.ProBuilder.Poly2Tri.AdvancingFront
function UnityEngine.ProBuilder.Poly2Tri.AdvancingFront.New(head, tail) end
---@param node UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.AdvancingFront:AddNode(node) end
---@param node UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.AdvancingFront:RemoveNode(node) end
---@return string
function UnityEngine.ProBuilder.Poly2Tri.AdvancingFront:ToString() end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.AdvancingFront:LocateNode(point) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.AdvancingFront:LocatePoint(point) end

---@class UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode : System.Object
---@field Next UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@field Prev UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@field Value number
---@field Point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field Triangle UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
---@field HasNext boolean
---@field HasPrev boolean
UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
CS.UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode = UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode

---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode.New(point) end

---@class UnityEngine.ProBuilder.Poly2Tri.DTSweep : System.Object
UnityEngine.ProBuilder.Poly2Tri.DTSweep = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DTSweep UnityEngine.ProBuilder.Poly2Tri.DTSweep
CS.UnityEngine.ProBuilder.Poly2Tri.DTSweep = UnityEngine.ProBuilder.Poly2Tri.DTSweep

---@param tcx UnityEngine.ProBuilder.Poly2Tri.DTSweepContext
function UnityEngine.ProBuilder.Poly2Tri.DTSweep.Triangulate(tcx) end

---@class UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin : System.Object
---@field leftNode UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@field bottomNode UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@field rightNode UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@field width number
---@field leftHighest boolean
UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin
CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin = UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin

---@return UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin
function UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin.New() end

---@class UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint : UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint
UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint
CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint = UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint

---@param p1 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param p2 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint
function UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint.New(p1, p2) end

---@class UnityEngine.ProBuilder.Poly2Tri.DTSweepContext : UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
---@field Front UnityEngine.ProBuilder.Poly2Tri.AdvancingFront
---@field Basin UnityEngine.ProBuilder.Poly2Tri.DTSweepBasin
---@field EdgeEvent UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent
---@field Head UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field Tail UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field IsDebugEnabled boolean
---@field Algorithm UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm
UnityEngine.ProBuilder.Poly2Tri.DTSweepContext = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepContext UnityEngine.ProBuilder.Poly2Tri.DTSweepContext
CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepContext = UnityEngine.ProBuilder.Poly2Tri.DTSweepContext

---@return UnityEngine.ProBuilder.Poly2Tri.DTSweepContext
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext.New() end
---@param triangle UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:RemoveFromList(triangle) end
---@param triangle UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:MeshClean(triangle) end
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:Clear() end
---@param node UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:AddNode(node) end
---@param node UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:RemoveNode(node) end
---@param point UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:LocateNode(point) end
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:CreateAdvancingFront() end
---@param t UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:MapTriangleToNodes(t) end
---@param t UnityEngine.ProBuilder.Poly2Tri.Triangulatable
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:PrepareTriangulation(t) end
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:FinalizeTriangulation() end
---@param a UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param b UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint
function UnityEngine.ProBuilder.Poly2Tri.DTSweepContext:NewConstraint(a, b) end

---@class UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext : UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext
---@field PrimaryTriangle UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
---@field SecondaryTriangle UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
---@field ActivePoint UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field ActiveNode UnityEngine.ProBuilder.Poly2Tri.AdvancingFrontNode
---@field ActiveConstraint UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint
---@field IsDebugContext boolean
UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext
CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext = UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext

---@param tcx UnityEngine.ProBuilder.Poly2Tri.DTSweepContext
---@return UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext
function UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext.New(tcx) end
function UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext:Clear() end

---@class UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent : System.Object
---@field ConstrainedEdge UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint
---@field Right boolean
UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent
CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent = UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent

---@return UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent
function UnityEngine.ProBuilder.Poly2Tri.DTSweepEdgeEvent.New() end

---@class UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator : System.Object
UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator
CS.UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator = UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator

---@return UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator
function UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator.New() end
---@param p1 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param p2 UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return number
function UnityEngine.ProBuilder.Poly2Tri.DTSweepPointComparator:Compare(p1, p2) end

---@class UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException : System.NotImplementedException
---@field A UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field B UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field C UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException
CS.UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException = UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException

---@param message string
---@param a UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param b UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param c UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException
function UnityEngine.ProBuilder.Poly2Tri.PointOnEdgeException.New(message, a, b, c) end

---@class UnityEngine.ProBuilder.Poly2Tri.Triangulatable
---@field Points System.Collections.Generic.IList
---@field Triangles System.Collections.Generic.IList
---@field TriangulationMode UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
UnityEngine.ProBuilder.Poly2Tri.Triangulatable = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.Triangulatable UnityEngine.ProBuilder.Poly2Tri.Triangulatable
CS.UnityEngine.ProBuilder.Poly2Tri.Triangulatable = UnityEngine.ProBuilder.Poly2Tri.Triangulatable

---@param tcx UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
function UnityEngine.ProBuilder.Poly2Tri.Triangulatable:Prepare(tcx) end
---@param t UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.Triangulatable:AddTriangle(t) end
---@param list System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.Poly2Tri.Triangulatable:AddTriangles(list) end
function UnityEngine.ProBuilder.Poly2Tri.Triangulatable:ClearTriangles() end

---@class UnityEngine.ProBuilder.Poly2Tri.Orientation
---@field CW UnityEngine.ProBuilder.Poly2Tri.Orientation
---@field CCW UnityEngine.ProBuilder.Poly2Tri.Orientation
---@field Collinear UnityEngine.ProBuilder.Poly2Tri.Orientation
UnityEngine.ProBuilder.Poly2Tri.Orientation = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.Orientation UnityEngine.ProBuilder.Poly2Tri.Orientation
CS.UnityEngine.ProBuilder.Poly2Tri.Orientation = UnityEngine.ProBuilder.Poly2Tri.Orientation


---@class UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet : UnityEngine.ProBuilder.Poly2Tri.PointSet
---@field EdgeIndex System.Int32[]
---@field TriangulationMode UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet
CS.UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet = UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet

---@param points System.Collections.Generic.List
---@param index System.Int32[]
---@return UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet
function UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet.New(points, index) end
---@param tcx UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
function UnityEngine.ProBuilder.Poly2Tri.ConstrainedPointSet:Prepare(tcx) end

---@class UnityEngine.ProBuilder.Poly2Tri.PointSet : System.Object
---@field Points System.Collections.Generic.IList
---@field Triangles System.Collections.Generic.IList
---@field TriangulationMode UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
UnityEngine.ProBuilder.Poly2Tri.PointSet = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.PointSet UnityEngine.ProBuilder.Poly2Tri.PointSet
CS.UnityEngine.ProBuilder.Poly2Tri.PointSet = UnityEngine.ProBuilder.Poly2Tri.PointSet

---@param points System.Collections.Generic.List
---@return UnityEngine.ProBuilder.Poly2Tri.PointSet
function UnityEngine.ProBuilder.Poly2Tri.PointSet.New(points) end
---@param t UnityEngine.ProBuilder.Poly2Tri.DelaunayTriangle
function UnityEngine.ProBuilder.Poly2Tri.PointSet:AddTriangle(t) end
---@param list System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.Poly2Tri.PointSet:AddTriangles(list) end
function UnityEngine.ProBuilder.Poly2Tri.PointSet:ClearTriangles() end
---@param tcx UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
function UnityEngine.ProBuilder.Poly2Tri.PointSet:Prepare(tcx) end

---@class UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm
---@field DTSweep UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm
UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm
CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm = UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm


---@class UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint : System.Object
---@field P UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@field Q UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint
CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint = UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint

---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint
function UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint.New() end

---@class UnityEngine.ProBuilder.Poly2Tri.TriangulationContext : System.Object
---@field Triangles System.Collections.Generic.List
---@field Points System.Collections.Generic.List
---@field DebugContext UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext
---@field TriangulationMode UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
---@field Triangulatable UnityEngine.ProBuilder.Poly2Tri.Triangulatable
---@field StepCount number
---@field Algorithm UnityEngine.ProBuilder.Poly2Tri.TriangulationAlgorithm
---@field IsDebugEnabled boolean
---@field DTDebugContext UnityEngine.ProBuilder.Poly2Tri.DTSweepDebugContext
UnityEngine.ProBuilder.Poly2Tri.TriangulationContext = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationContext UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationContext = UnityEngine.ProBuilder.Poly2Tri.TriangulationContext

function UnityEngine.ProBuilder.Poly2Tri.TriangulationContext:Done() end
---@param t UnityEngine.ProBuilder.Poly2Tri.Triangulatable
function UnityEngine.ProBuilder.Poly2Tri.TriangulationContext:PrepareTriangulation(t) end
---@param a UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param b UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationConstraint
function UnityEngine.ProBuilder.Poly2Tri.TriangulationContext:NewConstraint(a, b) end
---@param message string
function UnityEngine.ProBuilder.Poly2Tri.TriangulationContext:Update(message) end
function UnityEngine.ProBuilder.Poly2Tri.TriangulationContext:Clear() end

---@class UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext : System.Object
UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext
CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext = UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext

---@param tcx UnityEngine.ProBuilder.Poly2Tri.TriangulationContext
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext
function UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext.New(tcx) end
function UnityEngine.ProBuilder.Poly2Tri.TriangulationDebugContext:Clear() end

---@class UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
---@field Unconstrained UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
---@field Constrained UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
---@field Polygon UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
UnityEngine.ProBuilder.Poly2Tri.TriangulationMode = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationMode UnityEngine.ProBuilder.Poly2Tri.TriangulationMode
CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationMode = UnityEngine.ProBuilder.Poly2Tri.TriangulationMode


---@class UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint : System.Object
---@field INSERTED_INDEX number
---@field INVALID_INDEX number
---@field X number
---@field Y number
---@field Index number
---@field Edges System.Collections.Generic.List
---@field Xf number
---@field Yf number
---@field HasEdges boolean
UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint = UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint

---@param x number
---@param y number
---@param index number
---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
function UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint.New(x, y, index) end
---@return string
function UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint:ToString() end
---@param e UnityEngine.ProBuilder.Poly2Tri.DTSweepConstraint
function UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint:AddEdge(e) end

---@class UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil : System.Object
---@field EPSILON number
UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil
CS.UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil = UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil

---@return UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil
function UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil.New() end
---@param pa UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pb UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pc UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pd UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil.SmartIncircle(pa, pb, pc, pd) end
---@param pa UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pb UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pc UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pd UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil.InScanArea(pa, pb, pc, pd) end
---@param pa UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pb UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@param pc UnityEngine.ProBuilder.Poly2Tri.TriangulationPoint
---@return UnityEngine.ProBuilder.Poly2Tri.Orientation
function UnityEngine.ProBuilder.Poly2Tri.TriangulationUtil.Orient2d(pa, pb, pc) end

---@class UnityEngine.ProBuilder.Poly2Tri.PointGenerator : System.Object
UnityEngine.ProBuilder.Poly2Tri.PointGenerator = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.PointGenerator UnityEngine.ProBuilder.Poly2Tri.PointGenerator
CS.UnityEngine.ProBuilder.Poly2Tri.PointGenerator = UnityEngine.ProBuilder.Poly2Tri.PointGenerator

---@return UnityEngine.ProBuilder.Poly2Tri.PointGenerator
function UnityEngine.ProBuilder.Poly2Tri.PointGenerator.New() end
---@param n number
---@param scale number
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.Poly2Tri.PointGenerator.UniformDistribution(n, scale) end
---@param n number
---@param scale number
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.Poly2Tri.PointGenerator.UniformGrid(n, scale) end

---@class UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator : System.Object
UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator
CS.UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator = UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator

---@return UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator
function UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator.New() end
---@param scale number
---@param vertexCount number
---@return UnityEngine.ProBuilder.Poly2Tri.Polygon
function UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator.RandomCircleSweep(scale, vertexCount) end
---@param scale number
---@param vertexCount number
---@return UnityEngine.ProBuilder.Poly2Tri.Polygon
function UnityEngine.ProBuilder.Poly2Tri.PolygonGenerator.RandomCircleSweep2(scale, vertexCount) end

---@class UnityEngine.ProBuilder.Poly2Tri.FixedArray3 : System.ValueType
---@field _0 T
---@field _1 T
---@field _2 T
---@field Item T
UnityEngine.ProBuilder.Poly2Tri.FixedArray3 = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.FixedArray3 UnityEngine.ProBuilder.Poly2Tri.FixedArray3
CS.UnityEngine.ProBuilder.Poly2Tri.FixedArray3 = UnityEngine.ProBuilder.Poly2Tri.FixedArray3

---@param value T
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.FixedArray3:Contains(value) end
---@param value T
---@return number
function UnityEngine.ProBuilder.Poly2Tri.FixedArray3:IndexOf(value) end
---@overload fun()
---@param value T
function UnityEngine.ProBuilder.Poly2Tri.FixedArray3:Clear(value) end
---@return System.Collections.Generic.IEnumerator[T]
function UnityEngine.ProBuilder.Poly2Tri.FixedArray3:GetEnumerator() end

---@class UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3 : System.ValueType
---@field _0 boolean
---@field _1 boolean
---@field _2 boolean
---@field Item boolean
UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3 = {}
---@alias CS.UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3 UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3
CS.UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3 = UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3

---@param value boolean
---@return boolean
function UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3:Contains(value) end
---@param value boolean
---@return number
function UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3:IndexOf(value) end
---@overload fun()
---@param value boolean
function UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3:Clear(value) end
---@return System.Collections.Generic.IEnumerator
function UnityEngine.ProBuilder.Poly2Tri.FixedBitArray3:GetEnumerator() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple : System.Object
---@field source UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
---@field destination UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple

---@overload fun() : UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple
---@param src UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
---@param dest UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
---@return UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple.New(src, dest) end
---@param other UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple
---@return boolean
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple:AssetEquals(other) end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple : System.Object
---@field key string
---@field value string
UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple = UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple

---@param k string
---@param v string
---@return UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple
function UnityEngine.ProBuilder.AssetIdRemapUtility.StringTuple.New(k, v) end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.Origin
---@field Source UnityEngine.ProBuilder.AssetIdRemapUtility.Origin
---@field Destination UnityEngine.ProBuilder.AssetIdRemapUtility.Origin
UnityEngine.ProBuilder.AssetIdRemapUtility.Origin = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.Origin UnityEngine.ProBuilder.AssetIdRemapUtility.Origin
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.Origin = UnityEngine.ProBuilder.AssetIdRemapUtility.Origin


---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject : System.Object
---@field sourceDirectory System.Collections.Generic.List
---@field destinationDirectory string
---@field map System.Collections.Generic.List
---@field Item UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdentifierTuple
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject

---@return UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject.New() end
---@param origin UnityEngine.ProBuilder.AssetIdRemapUtility.Origin
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject:Clear(origin) end
---@param entries System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject:Delete(entries) end
---@param entries System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapObject:Merge(entries) end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId : System.Object
---@field localPath string
---@field name string
---@field type string
---@field assetType string
---@field fileId string
---@field guid string
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId

---@overload fun() : UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
---@overload fun(other: UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId) : UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
---@param obj UnityEngine.Object
---@param file string
---@param guid string
---@param localPath string
---@return UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.New(obj, file, guid, localPath) end
---@param id UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
---@return boolean
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.IsValid(id) end
---@overload fun(self: UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId, other: UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId:Equals(obj) end
---@return number
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId:GetHashCode() end
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId:Clear() end
---@param dir string
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId:SetPathRelativeTo(dir) end
---@return boolean
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId:IsMonoScript() end
---@param other UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId
---@return boolean
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId:AssetEquals(other) end
---@return boolean
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId:ExistsInProject() end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor : UnityEditor.EditorWindow
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor

---@return UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.New() end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field enabled boolean
---@field isDirectory boolean
---@field fullPath string
---@field relativePath string
---@field isMixedState boolean
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem

---@param id number
---@param fullPath string
---@param relativePath string
---@return UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem.New(id, fullPath, relativePath) end
---@param isEnabled boolean
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem:SetEnabled(isEnabled) end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView : UnityEditor.IMGUI.Controls.TreeView
---@field directoryRoot string
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView

---@param state UnityEditor.IMGUI.Controls.TreeViewState
---@param header UnityEditor.IMGUI.Controls.MultiColumnHeader
---@return UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView.New(state, header) end
---@return UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeItem
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView:GetRoot() end
---@param regexStrings System.String[]
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView:SetDirectoryIgnorePatterns(regexStrings) end
---@param regexStrings System.String[]
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView:SetFileIgnorePatterns(regexStrings) end
---@param root UnityEditor.IMGUI.Controls.TreeViewItem
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView:ApplyEnabledFilters(root) end
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetTreeView:GetAssetList() end

---@class UnityEngine.ProBuilder.AssetIdRemapUtility.PackageImporter : System.Object
UnityEngine.ProBuilder.AssetIdRemapUtility.PackageImporter = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.PackageImporter UnityEngine.ProBuilder.AssetIdRemapUtility.PackageImporter
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.PackageImporter = UnityEngine.ProBuilder.AssetIdRemapUtility.PackageImporter


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType
---@field Unknown UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType
---@field Default UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType
---@field MonoScript UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetId.AssetType


---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field Ready UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field NoActionRequired UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field SerializationError UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field AssetStoreDeleteError UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field AssetStoreDeleteWarning UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field AssetStoreInstallFound UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field DeprecatedAssetIdsFound UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field MissingRemapFile UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
---@field ConversionRan UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.ConversionReadyState


---@class UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.Styles : System.Object
---@field settingsIcon UnityEngine.GUIStyle
---@field convertButton UnityEngine.GUIStyle
UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.Styles = {}
---@alias CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.Styles UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.Styles
CS.UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.Styles = UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.Styles

function UnityEngine.ProBuilder.AssetIdRemapUtility.AssetIdRemapEditor.Styles.Init() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class URP2DConverterUtility : System.Object
URP2DConverterUtility = {}
---@alias CS.URP2DConverterUtility URP2DConverterUtility
CS.URP2DConverterUtility = URP2DConverterUtility

---@param path string
---@param id string
---@return boolean
function URP2DConverterUtility.IsMaterialPath(path, id) end
---@overload fun(path: string, ids: System.String[]) : boolean
---@param path string
---@param id string
---@return boolean
function URP2DConverterUtility.IsPrefabOrScenePath(path, id) end
---@param path string
---@param strs System.String[]
---@return boolean
function URP2DConverterUtility.DoesFileContainString(path, strs) end
---@param path string
---@param objectUpgrader System.Action
---@return string
function URP2DConverterUtility.UpgradePrefab(path, objectUpgrader) end
---@param path string
---@param objectUpgrader System.Action
function URP2DConverterUtility.UpgradeScene(path, objectUpgrader) end
---@param path string
---@param oldShader UnityEngine.Shader
---@param newShader UnityEngine.Shader
function URP2DConverterUtility.UpgradeMaterial(path, oldShader, newShader) end
---@param obj UnityEngine.Object
---@return string
function URP2DConverterUtility.GetObjectIDString(obj) end

---@class FullScreenPassRendererFeatureEditor : UnityEditor.Editor
FullScreenPassRendererFeatureEditor = {}
---@alias CS.FullScreenPassRendererFeatureEditor FullScreenPassRendererFeatureEditor
CS.FullScreenPassRendererFeatureEditor = FullScreenPassRendererFeatureEditor

---@return FullScreenPassRendererFeatureEditor
function FullScreenPassRendererFeatureEditor.New() end
function FullScreenPassRendererFeatureEditor:OnInspectorGUI() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.Rendering.Universal.ProjectedTransform : System.Object
UnityEngine.Rendering.Universal.ProjectedTransform = {}
---@alias CS.UnityEngine.Rendering.Universal.ProjectedTransform UnityEngine.Rendering.Universal.ProjectedTransform
CS.UnityEngine.Rendering.Universal.ProjectedTransform = UnityEngine.Rendering.Universal.ProjectedTransform

---@return UnityEngine.Rendering.Universal.ProjectedTransform
function UnityEngine.Rendering.Universal.ProjectedTransform.New() end
---@param position UnityEngine.Vector3
---@param zProjectionDistance number
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function UnityEngine.Rendering.Universal.ProjectedTransform.DrawHandles(position, zProjectionDistance, rotation) end

---@class UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator : UnityEditor.ProjectWindowCallback.EndNameEditAction
UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator
CS.UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator = UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator

---@return UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator
function UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator.New() end
---@param src UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings
---@param activateAsset boolean
function UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator.Clone(src, activateAsset) end
---@param useProjectSettingsFolder boolean
---@param activateAsset boolean
function UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator.Create(useProjectSettingsFolder, activateAsset) end
---@param instanceId number
---@param pathName string
---@param resourceFile string
function UnityEngine.Rendering.Universal.UniversalGlobalSettingsCreator:Action(instanceId, pathName, resourceFile) end

---@class UnityEngine.Experimental.Rendering.Universal.BlendStyle
---@field LightTex0 UnityEngine.Experimental.Rendering.Universal.BlendStyle
---@field LightTex1 UnityEngine.Experimental.Rendering.Universal.BlendStyle
---@field LightTex2 UnityEngine.Experimental.Rendering.Universal.BlendStyle
---@field LightTex3 UnityEngine.Experimental.Rendering.Universal.BlendStyle
UnityEngine.Experimental.Rendering.Universal.BlendStyle = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.BlendStyle UnityEngine.Experimental.Rendering.Universal.BlendStyle
CS.UnityEngine.Experimental.Rendering.Universal.BlendStyle = UnityEngine.Experimental.Rendering.Universal.BlendStyle


---@class UnityEngine.Experimental.Rendering.Universal.LightTextureNode : UnityEditor.ShaderGraph.AbstractMaterialNode
---@field blendStyle UnityEngine.Experimental.Rendering.Universal.BlendStyle
UnityEngine.Experimental.Rendering.Universal.LightTextureNode = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.LightTextureNode UnityEngine.Experimental.Rendering.Universal.LightTextureNode
CS.UnityEngine.Experimental.Rendering.Universal.LightTextureNode = UnityEngine.Experimental.Rendering.Universal.LightTextureNode

---@return UnityEngine.Experimental.Rendering.Universal.LightTextureNode
function UnityEngine.Experimental.Rendering.Universal.LightTextureNode.New() end
function UnityEngine.Experimental.Rendering.Universal.LightTextureNode:UpdateNodeAfterDeserialization() end
---@param slotId number
---@return string
function UnityEngine.Experimental.Rendering.Universal.LightTextureNode:GetVariableNameForSlot(slotId) end
---@param properties UnityEditor.ShaderGraph.PropertyCollector
---@param generationMode UnityEditor.ShaderGraph.GenerationMode
function UnityEngine.Experimental.Rendering.Universal.LightTextureNode:CollectShaderProperties(properties, generationMode) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds : System.ValueType
---@field x number
---@field y number
---@field z number
---@field xy number
---@field default UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds
---@field Item number
UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds = {}
---@alias CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds
CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds = UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds

---@param x number
---@param y number
---@param z number
---@param xy number
---@return UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds
function UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds.New(x, y, z, xy) end
---@param id number
---@return boolean
function UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds:Has(id) end
---@return number
function UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds:GetHashCode() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleIds:Equals(obj) end

---@class UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam : System.ValueType
---@field defaultHandleXY UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam
---@field defaultHandleZ UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam
---@field axisOffset UnityEngine.Vector3
---@field axisSize UnityEngine.Vector3
---@field planeOffset UnityEngine.Vector3
---@field planeSize UnityEngine.Vector3
---@field handles UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@field axesOrientation UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
---@field planeOrientation UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam = {}
---@alias CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam
CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam = UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam

---@param handles UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@param axisOffset UnityEngine.Vector3
---@param axisSize UnityEngine.Vector3
---@param planeOffset UnityEngine.Vector3
---@param planeSize UnityEngine.Vector3
---@param axesOrientation UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
---@param planeOrientation UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
---@return UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam
function UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.New(handles, axisOffset, axisSize, planeOffset, planeSize, axesOrientation, planeOrientation) end
---@overload fun(self: UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam, axis: number) : boolean
---@param handle UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@return boolean
function UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam:ShouldShow(handle) end

---@class UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@field None UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@field X UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@field Y UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@field Z UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@field XY UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
---@field All UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle = {}
---@alias CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle
CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle = UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Handle


---@class UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
---@field Signed UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
---@field Camera UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation = {}
---@alias CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation
CS.UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation = UnityEngine.Rendering.Universal.ProjectedTransform.PositionHandleParam.Orientation


---@class DummyShaderGraphLibrary : System.Object
DummyShaderGraphLibrary = {}
---@alias CS.DummyShaderGraphLibrary DummyShaderGraphLibrary
CS.DummyShaderGraphLibrary = DummyShaderGraphLibrary

---@return DummyShaderGraphLibrary
function DummyShaderGraphLibrary.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class FullScreenPassRendererFeature : UnityEngine.Rendering.Universal.ScriptableRendererFeature
---@field injectionPoint FullScreenPassRendererFeature.InjectionPoint
---@field fetchColorBuffer boolean
---@field requirements UnityEngine.Rendering.Universal.ScriptableRenderPassInput
---@field passMaterial UnityEngine.Material
---@field passIndex number
---@field bindDepthStencilAttachment boolean
FullScreenPassRendererFeature = {}
---@alias CS.FullScreenPassRendererFeature FullScreenPassRendererFeature
CS.FullScreenPassRendererFeature = FullScreenPassRendererFeature

---@return FullScreenPassRendererFeature
function FullScreenPassRendererFeature.New() end
function FullScreenPassRendererFeature:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function FullScreenPassRendererFeature:AddRenderPasses(renderer, ref_renderingData) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera : UnityEngine.MonoBehaviour
---@field cropFrame UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
---@field gridSnapping UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping
---@field orthographicSize number
---@field assetsPPU number
---@field refResolutionX number
---@field refResolutionY number
---@field pixelRatio number
---@field requiresUpscalePass boolean
UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera
CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera = UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera:RoundToPixel(position) end
---@param targetOrthoSize number
---@return number
function UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera:CorrectCinemachineOrthoSize(targetOrthoSize) end
function UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera:OnBeforeSerialize() end
function UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera:OnAfterDeserialize() end

---@class UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
---@field overrideMaterial UnityEngine.Material
---@field overrideMaterialPassIndex number
---@field overrideShader UnityEngine.Shader
---@field overrideShaderPassIndex number
UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass
CS.UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass = UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass

---@param profilerTag string
---@param renderPassEvent UnityEngine.Rendering.Universal.RenderPassEvent
---@param shaderTags System.String[]
---@param renderQueueType UnityEngine.Experimental.Rendering.Universal.RenderQueueType
---@param layerMask number
---@param cameraSettings UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings
---@return UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass
function UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.New(profilerTag, renderPassEvent, shaderTags, renderQueueType, layerMask, cameraSettings) end
---@param writeEnabled boolean
---@param _function UnityEngine.Rendering.CompareFunction
function UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass:SetDetphState(writeEnabled, _function) end
---@param reference number
---@param compareFunction UnityEngine.Rendering.CompareFunction
---@param passOp UnityEngine.Rendering.StencilOp
---@param failOp UnityEngine.Rendering.StencilOp
---@param zFailOp UnityEngine.Rendering.StencilOp
function UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass:SetStencilState(reference, compareFunction, passOp, failOp, zFailOp) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Experimental.Rendering.Universal.RenderQueueType
---@field Opaque UnityEngine.Experimental.Rendering.Universal.RenderQueueType
---@field Transparent UnityEngine.Experimental.Rendering.Universal.RenderQueueType
UnityEngine.Experimental.Rendering.Universal.RenderQueueType = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderQueueType UnityEngine.Experimental.Rendering.Universal.RenderQueueType
CS.UnityEngine.Experimental.Rendering.Universal.RenderQueueType = UnityEngine.Experimental.Rendering.Universal.RenderQueueType


---@class UnityEngine.Experimental.Rendering.Universal.RenderObjects : UnityEngine.Rendering.Universal.ScriptableRendererFeature
---@field settings UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings
UnityEngine.Experimental.Rendering.Universal.RenderObjects = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects UnityEngine.Experimental.Rendering.Universal.RenderObjects
CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects = UnityEngine.Experimental.Rendering.Universal.RenderObjects

---@return UnityEngine.Experimental.Rendering.Universal.RenderObjects
function UnityEngine.Experimental.Rendering.Universal.RenderObjects.New() end
function UnityEngine.Experimental.Rendering.Universal.RenderObjects:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Experimental.Rendering.Universal.RenderObjects:AddRenderPasses(renderer, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.CinemachineUniversalPixelPerfect : UnityEngine.MonoBehaviour
UnityEngine.Rendering.Universal.CinemachineUniversalPixelPerfect = {}
---@alias CS.UnityEngine.Rendering.Universal.CinemachineUniversalPixelPerfect UnityEngine.Rendering.Universal.CinemachineUniversalPixelPerfect
CS.UnityEngine.Rendering.Universal.CinemachineUniversalPixelPerfect = UnityEngine.Rendering.Universal.CinemachineUniversalPixelPerfect


---@class UnityEngine.Rendering.Universal.DoublePoint : System.ValueType
---@field X number
---@field Y number
UnityEngine.Rendering.Universal.DoublePoint = {}
---@alias CS.UnityEngine.Rendering.Universal.DoublePoint UnityEngine.Rendering.Universal.DoublePoint
CS.UnityEngine.Rendering.Universal.DoublePoint = UnityEngine.Rendering.Universal.DoublePoint

---@overload fun(x: number, y: number) : UnityEngine.Rendering.Universal.DoublePoint
---@overload fun(dp: UnityEngine.Rendering.Universal.DoublePoint) : UnityEngine.Rendering.Universal.DoublePoint
---@param ip UnityEngine.Rendering.Universal.IntPoint
---@return UnityEngine.Rendering.Universal.DoublePoint
function UnityEngine.Rendering.Universal.DoublePoint.New(ip) end

---@class UnityEngine.Rendering.Universal.PolyTree : UnityEngine.Rendering.Universal.PolyNode
---@field Total number
UnityEngine.Rendering.Universal.PolyTree = {}
---@alias CS.UnityEngine.Rendering.Universal.PolyTree UnityEngine.Rendering.Universal.PolyTree
CS.UnityEngine.Rendering.Universal.PolyTree = UnityEngine.Rendering.Universal.PolyTree

---@return UnityEngine.Rendering.Universal.PolyTree
function UnityEngine.Rendering.Universal.PolyTree.New() end
function UnityEngine.Rendering.Universal.PolyTree:Clear() end
---@return UnityEngine.Rendering.Universal.PolyNode
function UnityEngine.Rendering.Universal.PolyTree:GetFirst() end

---@class UnityEngine.Rendering.Universal.PolyNode : System.Object
---@field ChildCount number
---@field Contour System.Collections.Generic.List
---@field Childs System.Collections.Generic.List
---@field Parent UnityEngine.Rendering.Universal.PolyNode
---@field IsHole boolean
---@field IsOpen boolean
UnityEngine.Rendering.Universal.PolyNode = {}
---@alias CS.UnityEngine.Rendering.Universal.PolyNode UnityEngine.Rendering.Universal.PolyNode
CS.UnityEngine.Rendering.Universal.PolyNode = UnityEngine.Rendering.Universal.PolyNode

---@return UnityEngine.Rendering.Universal.PolyNode
function UnityEngine.Rendering.Universal.PolyNode.New() end
---@return UnityEngine.Rendering.Universal.PolyNode
function UnityEngine.Rendering.Universal.PolyNode:GetNext() end

---@class UnityEngine.Rendering.Universal.Int128 : System.ValueType
UnityEngine.Rendering.Universal.Int128 = {}
---@alias CS.UnityEngine.Rendering.Universal.Int128 UnityEngine.Rendering.Universal.Int128
CS.UnityEngine.Rendering.Universal.Int128 = UnityEngine.Rendering.Universal.Int128

---@overload fun(_lo: number) : UnityEngine.Rendering.Universal.Int128
---@overload fun(_hi: number, _lo: number) : UnityEngine.Rendering.Universal.Int128
---@param val UnityEngine.Rendering.Universal.Int128
---@return UnityEngine.Rendering.Universal.Int128
function UnityEngine.Rendering.Universal.Int128.New(val) end
---@param lhs number
---@param rhs number
---@return UnityEngine.Rendering.Universal.Int128
function UnityEngine.Rendering.Universal.Int128.Int128Mul(lhs, rhs) end
---@return boolean
function UnityEngine.Rendering.Universal.Int128:IsNegative() end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.Universal.Int128:Equals(obj) end
---@return number
function UnityEngine.Rendering.Universal.Int128:GetHashCode() end

---@class UnityEngine.Rendering.Universal.IntPoint : System.ValueType
---@field N number
---@field X number
---@field Y number
---@field D number
---@field NX number
---@field NY number
UnityEngine.Rendering.Universal.IntPoint = {}
---@alias CS.UnityEngine.Rendering.Universal.IntPoint UnityEngine.Rendering.Universal.IntPoint
CS.UnityEngine.Rendering.Universal.IntPoint = UnityEngine.Rendering.Universal.IntPoint

---@overload fun(X: number, Y: number) : UnityEngine.Rendering.Universal.IntPoint
---@overload fun(x: number, y: number) : UnityEngine.Rendering.Universal.IntPoint
---@param pt UnityEngine.Rendering.Universal.IntPoint
---@return UnityEngine.Rendering.Universal.IntPoint
function UnityEngine.Rendering.Universal.IntPoint.New(pt) end
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.Universal.IntPoint:Equals(obj) end
---@return number
function UnityEngine.Rendering.Universal.IntPoint:GetHashCode() end

---@class UnityEngine.Rendering.Universal.IntRect : System.ValueType
---@field left number
---@field top number
---@field right number
---@field bottom number
UnityEngine.Rendering.Universal.IntRect = {}
---@alias CS.UnityEngine.Rendering.Universal.IntRect UnityEngine.Rendering.Universal.IntRect
CS.UnityEngine.Rendering.Universal.IntRect = UnityEngine.Rendering.Universal.IntRect

---@overload fun(l: number, t: number, r: number, b: number) : UnityEngine.Rendering.Universal.IntRect
---@param ir UnityEngine.Rendering.Universal.IntRect
---@return UnityEngine.Rendering.Universal.IntRect
function UnityEngine.Rendering.Universal.IntRect.New(ir) end

---@class UnityEngine.Rendering.Universal.ClipType
---@field ctIntersection UnityEngine.Rendering.Universal.ClipType
---@field ctUnion UnityEngine.Rendering.Universal.ClipType
---@field ctDifference UnityEngine.Rendering.Universal.ClipType
---@field ctXor UnityEngine.Rendering.Universal.ClipType
UnityEngine.Rendering.Universal.ClipType = {}
---@alias CS.UnityEngine.Rendering.Universal.ClipType UnityEngine.Rendering.Universal.ClipType
CS.UnityEngine.Rendering.Universal.ClipType = UnityEngine.Rendering.Universal.ClipType


---@class UnityEngine.Rendering.Universal.PolyType
---@field ptSubject UnityEngine.Rendering.Universal.PolyType
---@field ptClip UnityEngine.Rendering.Universal.PolyType
UnityEngine.Rendering.Universal.PolyType = {}
---@alias CS.UnityEngine.Rendering.Universal.PolyType UnityEngine.Rendering.Universal.PolyType
CS.UnityEngine.Rendering.Universal.PolyType = UnityEngine.Rendering.Universal.PolyType


---@class UnityEngine.Rendering.Universal.PolyFillType
---@field pftEvenOdd UnityEngine.Rendering.Universal.PolyFillType
---@field pftNonZero UnityEngine.Rendering.Universal.PolyFillType
---@field pftPositive UnityEngine.Rendering.Universal.PolyFillType
---@field pftNegative UnityEngine.Rendering.Universal.PolyFillType
UnityEngine.Rendering.Universal.PolyFillType = {}
---@alias CS.UnityEngine.Rendering.Universal.PolyFillType UnityEngine.Rendering.Universal.PolyFillType
CS.UnityEngine.Rendering.Universal.PolyFillType = UnityEngine.Rendering.Universal.PolyFillType


---@class UnityEngine.Rendering.Universal.JoinType
---@field jtRound UnityEngine.Rendering.Universal.JoinType
UnityEngine.Rendering.Universal.JoinType = {}
---@alias CS.UnityEngine.Rendering.Universal.JoinType UnityEngine.Rendering.Universal.JoinType
CS.UnityEngine.Rendering.Universal.JoinType = UnityEngine.Rendering.Universal.JoinType


---@class UnityEngine.Rendering.Universal.EndType
---@field etClosedPolygon UnityEngine.Rendering.Universal.EndType
---@field etClosedLine UnityEngine.Rendering.Universal.EndType
UnityEngine.Rendering.Universal.EndType = {}
---@alias CS.UnityEngine.Rendering.Universal.EndType UnityEngine.Rendering.Universal.EndType
CS.UnityEngine.Rendering.Universal.EndType = UnityEngine.Rendering.Universal.EndType


---@class UnityEngine.Rendering.Universal.EdgeSide
---@field esLeft UnityEngine.Rendering.Universal.EdgeSide
---@field esRight UnityEngine.Rendering.Universal.EdgeSide
UnityEngine.Rendering.Universal.EdgeSide = {}
---@alias CS.UnityEngine.Rendering.Universal.EdgeSide UnityEngine.Rendering.Universal.EdgeSide
CS.UnityEngine.Rendering.Universal.EdgeSide = UnityEngine.Rendering.Universal.EdgeSide


---@class UnityEngine.Rendering.Universal.Direction
---@field dRightToLeft UnityEngine.Rendering.Universal.Direction
---@field dLeftToRight UnityEngine.Rendering.Universal.Direction
UnityEngine.Rendering.Universal.Direction = {}
---@alias CS.UnityEngine.Rendering.Universal.Direction UnityEngine.Rendering.Universal.Direction
CS.UnityEngine.Rendering.Universal.Direction = UnityEngine.Rendering.Universal.Direction


---@class UnityEngine.Rendering.Universal.TEdge : System.Object
UnityEngine.Rendering.Universal.TEdge = {}
---@alias CS.UnityEngine.Rendering.Universal.TEdge UnityEngine.Rendering.Universal.TEdge
CS.UnityEngine.Rendering.Universal.TEdge = UnityEngine.Rendering.Universal.TEdge

---@return UnityEngine.Rendering.Universal.TEdge
function UnityEngine.Rendering.Universal.TEdge.New() end

---@class UnityEngine.Rendering.Universal.IntersectNode : System.Object
UnityEngine.Rendering.Universal.IntersectNode = {}
---@alias CS.UnityEngine.Rendering.Universal.IntersectNode UnityEngine.Rendering.Universal.IntersectNode
CS.UnityEngine.Rendering.Universal.IntersectNode = UnityEngine.Rendering.Universal.IntersectNode

---@return UnityEngine.Rendering.Universal.IntersectNode
function UnityEngine.Rendering.Universal.IntersectNode.New() end

---@class UnityEngine.Rendering.Universal.MyIntersectNodeSort : System.Object
UnityEngine.Rendering.Universal.MyIntersectNodeSort = {}
---@alias CS.UnityEngine.Rendering.Universal.MyIntersectNodeSort UnityEngine.Rendering.Universal.MyIntersectNodeSort
CS.UnityEngine.Rendering.Universal.MyIntersectNodeSort = UnityEngine.Rendering.Universal.MyIntersectNodeSort

---@return UnityEngine.Rendering.Universal.MyIntersectNodeSort
function UnityEngine.Rendering.Universal.MyIntersectNodeSort.New() end
---@param node1 UnityEngine.Rendering.Universal.IntersectNode
---@param node2 UnityEngine.Rendering.Universal.IntersectNode
---@return number
function UnityEngine.Rendering.Universal.MyIntersectNodeSort:Compare(node1, node2) end

---@class UnityEngine.Rendering.Universal.LocalMinima : System.Object
UnityEngine.Rendering.Universal.LocalMinima = {}
---@alias CS.UnityEngine.Rendering.Universal.LocalMinima UnityEngine.Rendering.Universal.LocalMinima
CS.UnityEngine.Rendering.Universal.LocalMinima = UnityEngine.Rendering.Universal.LocalMinima

---@return UnityEngine.Rendering.Universal.LocalMinima
function UnityEngine.Rendering.Universal.LocalMinima.New() end

---@class UnityEngine.Rendering.Universal.Scanbeam : System.Object
UnityEngine.Rendering.Universal.Scanbeam = {}
---@alias CS.UnityEngine.Rendering.Universal.Scanbeam UnityEngine.Rendering.Universal.Scanbeam
CS.UnityEngine.Rendering.Universal.Scanbeam = UnityEngine.Rendering.Universal.Scanbeam

---@return UnityEngine.Rendering.Universal.Scanbeam
function UnityEngine.Rendering.Universal.Scanbeam.New() end

---@class UnityEngine.Rendering.Universal.Maxima : System.Object
UnityEngine.Rendering.Universal.Maxima = {}
---@alias CS.UnityEngine.Rendering.Universal.Maxima UnityEngine.Rendering.Universal.Maxima
CS.UnityEngine.Rendering.Universal.Maxima = UnityEngine.Rendering.Universal.Maxima

---@return UnityEngine.Rendering.Universal.Maxima
function UnityEngine.Rendering.Universal.Maxima.New() end

---@class UnityEngine.Rendering.Universal.OutRec : System.Object
UnityEngine.Rendering.Universal.OutRec = {}
---@alias CS.UnityEngine.Rendering.Universal.OutRec UnityEngine.Rendering.Universal.OutRec
CS.UnityEngine.Rendering.Universal.OutRec = UnityEngine.Rendering.Universal.OutRec

---@return UnityEngine.Rendering.Universal.OutRec
function UnityEngine.Rendering.Universal.OutRec.New() end

---@class UnityEngine.Rendering.Universal.OutPt : System.Object
UnityEngine.Rendering.Universal.OutPt = {}
---@alias CS.UnityEngine.Rendering.Universal.OutPt UnityEngine.Rendering.Universal.OutPt
CS.UnityEngine.Rendering.Universal.OutPt = UnityEngine.Rendering.Universal.OutPt

---@return UnityEngine.Rendering.Universal.OutPt
function UnityEngine.Rendering.Universal.OutPt.New() end

---@class UnityEngine.Rendering.Universal.Join : System.Object
UnityEngine.Rendering.Universal.Join = {}
---@alias CS.UnityEngine.Rendering.Universal.Join UnityEngine.Rendering.Universal.Join
CS.UnityEngine.Rendering.Universal.Join = UnityEngine.Rendering.Universal.Join

---@return UnityEngine.Rendering.Universal.Join
function UnityEngine.Rendering.Universal.Join.New() end

---@class UnityEngine.Rendering.Universal.ClipperBase : System.Object
---@field loRange number
---@field hiRange number
---@field PreserveCollinear boolean
UnityEngine.Rendering.Universal.ClipperBase = {}
---@alias CS.UnityEngine.Rendering.Universal.ClipperBase UnityEngine.Rendering.Universal.ClipperBase
CS.UnityEngine.Rendering.Universal.ClipperBase = UnityEngine.Rendering.Universal.ClipperBase

---@param paths System.Collections.Generic.List
---@return UnityEngine.Rendering.Universal.IntRect
function UnityEngine.Rendering.Universal.ClipperBase.GetBounds(paths) end
---@param ref_val1 number
---@param ref_val2 number
---@return ,number,number
function UnityEngine.Rendering.Universal.ClipperBase:Swap(ref_val1, ref_val2) end
function UnityEngine.Rendering.Universal.ClipperBase:Clear() end
---@param pg System.Collections.Generic.List
---@param polyType UnityEngine.Rendering.Universal.PolyType
---@param Closed boolean
---@return boolean
function UnityEngine.Rendering.Universal.ClipperBase:AddPath(pg, polyType, Closed) end
---@param ppg System.Collections.Generic.List
---@param polyType UnityEngine.Rendering.Universal.PolyType
---@param closed boolean
---@return boolean
function UnityEngine.Rendering.Universal.ClipperBase:AddPaths(ppg, polyType, closed) end

---@class UnityEngine.Rendering.Universal.Clipper : UnityEngine.Rendering.Universal.ClipperBase
---@field ioReverseSolution number
---@field ioStrictlySimple number
---@field ioPreserveCollinear number
---@field LastIndex number
---@field ReverseSolution boolean
---@field StrictlySimple boolean
UnityEngine.Rendering.Universal.Clipper = {}
---@alias CS.UnityEngine.Rendering.Universal.Clipper UnityEngine.Rendering.Universal.Clipper
CS.UnityEngine.Rendering.Universal.Clipper = UnityEngine.Rendering.Universal.Clipper

---@param InitOptions number
---@return UnityEngine.Rendering.Universal.Clipper
function UnityEngine.Rendering.Universal.Clipper.New(InitOptions) end
---@param polys System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.ReversePaths(polys) end
---@param poly System.Collections.Generic.List
---@return boolean
function UnityEngine.Rendering.Universal.Clipper.Orientation(poly) end
---@param pt UnityEngine.Rendering.Universal.IntPoint
---@param path System.Collections.Generic.List
---@return number
function UnityEngine.Rendering.Universal.Clipper.PointInPolygon(pt, path) end
---@param poly System.Collections.Generic.List
---@return number
function UnityEngine.Rendering.Universal.Clipper.Area(poly) end
---@param poly System.Collections.Generic.List
---@param fillType UnityEngine.Rendering.Universal.PolyFillType
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.SimplifyPolygon(poly, fillType) end
---@param polys System.Collections.Generic.List
---@param fillType UnityEngine.Rendering.Universal.PolyFillType
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.SimplifyPolygons(polys, fillType) end
---@param path System.Collections.Generic.List
---@param distance number
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.CleanPolygon(path, distance) end
---@param polys System.Collections.Generic.List
---@param distance number
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.CleanPolygons(polys, distance) end
---@overload fun(pattern: System.Collections.Generic.List, path: System.Collections.Generic.List, pathIsClosed: boolean) : System.Collections.Generic.List
---@param pattern System.Collections.Generic.List
---@param paths System.Collections.Generic.List
---@param pathIsClosed boolean
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.MinkowskiSum(pattern, paths, pathIsClosed) end
---@param poly1 System.Collections.Generic.List
---@param poly2 System.Collections.Generic.List
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.MinkowskiDiff(poly1, poly2) end
---@param polytree UnityEngine.Rendering.Universal.PolyTree
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.PolyTreeToPaths(polytree) end
---@param polytree UnityEngine.Rendering.Universal.PolyTree
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.OpenPathsFromPolyTree(polytree) end
---@param polytree UnityEngine.Rendering.Universal.PolyTree
---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.Clipper.ClosedPathsFromPolyTree(polytree) end
---@overload fun(self: UnityEngine.Rendering.Universal.Clipper, clipType: UnityEngine.Rendering.Universal.ClipType, solution: System.Collections.Generic.List, FillType: UnityEngine.Rendering.Universal.PolyFillType) : boolean
---@overload fun(self: UnityEngine.Rendering.Universal.Clipper, clipType: UnityEngine.Rendering.Universal.ClipType, polytree: UnityEngine.Rendering.Universal.PolyTree, FillType: UnityEngine.Rendering.Universal.PolyFillType) : boolean
---@overload fun(self: UnityEngine.Rendering.Universal.Clipper, clipType: UnityEngine.Rendering.Universal.ClipType, solution: System.Collections.Generic.List, subjFillType: UnityEngine.Rendering.Universal.PolyFillType, clipFillType: UnityEngine.Rendering.Universal.PolyFillType) : boolean
---@param clipType UnityEngine.Rendering.Universal.ClipType
---@param polytree UnityEngine.Rendering.Universal.PolyTree
---@param subjFillType UnityEngine.Rendering.Universal.PolyFillType
---@param clipFillType UnityEngine.Rendering.Universal.PolyFillType
---@return boolean
function UnityEngine.Rendering.Universal.Clipper:Execute(clipType, polytree, subjFillType, clipFillType) end

---@class UnityEngine.Rendering.Universal.ClipperOffset : System.Object
---@field ArcTolerance number
UnityEngine.Rendering.Universal.ClipperOffset = {}
---@alias CS.UnityEngine.Rendering.Universal.ClipperOffset UnityEngine.Rendering.Universal.ClipperOffset
CS.UnityEngine.Rendering.Universal.ClipperOffset = UnityEngine.Rendering.Universal.ClipperOffset

---@param arcTolerance number
---@return UnityEngine.Rendering.Universal.ClipperOffset
function UnityEngine.Rendering.Universal.ClipperOffset.New(arcTolerance) end
function UnityEngine.Rendering.Universal.ClipperOffset:Clear() end
---@param path System.Collections.Generic.List
---@param joinType UnityEngine.Rendering.Universal.JoinType
---@param endType UnityEngine.Rendering.Universal.EndType
function UnityEngine.Rendering.Universal.ClipperOffset:AddPath(path, joinType, endType) end
---@param paths System.Collections.Generic.List
---@param joinType UnityEngine.Rendering.Universal.JoinType
---@param endType UnityEngine.Rendering.Universal.EndType
function UnityEngine.Rendering.Universal.ClipperOffset:AddPaths(paths, joinType, endType) end
---@overload fun(self: UnityEngine.Rendering.Universal.ClipperOffset, ref_solution: System.Collections.Generic.List, delta: number, inputSize: number) : System.Collections.Generic.List
---@param ref_solution UnityEngine.Rendering.Universal.PolyTree
---@param delta number
---@return ,UnityEngine.Rendering.Universal.PolyTree
function UnityEngine.Rendering.Universal.ClipperOffset:Execute(ref_solution, delta) end

---@class UnityEngine.Rendering.Universal.ClipperException : System.Exception
UnityEngine.Rendering.Universal.ClipperException = {}
---@alias CS.UnityEngine.Rendering.Universal.ClipperException UnityEngine.Rendering.Universal.ClipperException
CS.UnityEngine.Rendering.Universal.ClipperException = UnityEngine.Rendering.Universal.ClipperException

---@param description string
---@return UnityEngine.Rendering.Universal.ClipperException
function UnityEngine.Rendering.Universal.ClipperException.New(description) end

---@class UnityEngine.Rendering.Universal.Light2D : UnityEngine.U2D.Light2DBase
---@field lightType UnityEngine.Rendering.Universal.Light2D.LightType
---@field blendStyleIndex number
---@field shadowIntensity number
---@field shadowsEnabled boolean
---@field shadowVolumeIntensity number
---@field volumetricShadowsEnabled boolean
---@field color UnityEngine.Color
---@field intensity number
---@field volumeIntensity number
---@field volumeIntensityEnabled boolean
---@field lightCookieSprite UnityEngine.Sprite
---@field falloffIntensity number
---@field overlapOperation UnityEngine.Rendering.Universal.Light2D.OverlapOperation
---@field lightOrder number
---@field normalMapDistance number
---@field normalMapQuality UnityEngine.Rendering.Universal.Light2D.NormalMapQuality
---@field renderVolumetricShadows boolean
---@field pointLightInnerAngle number
---@field pointLightOuterAngle number
---@field pointLightInnerRadius number
---@field pointLightOuterRadius number
---@field shapeLightParametricSides number
---@field shapeLightParametricAngleOffset number
---@field shapeLightParametricRadius number
---@field shapeLightFalloffSize number
---@field shapePath UnityEngine.Vector3[]
UnityEngine.Rendering.Universal.Light2D = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2D UnityEngine.Rendering.Universal.Light2D
CS.UnityEngine.Rendering.Universal.Light2D = UnityEngine.Rendering.Universal.Light2D

function UnityEngine.Rendering.Universal.Light2D:OnBeforeSerialize() end
function UnityEngine.Rendering.Universal.Light2D:OnAfterDeserialize() end
---@param path UnityEngine.Vector3[]
function UnityEngine.Rendering.Universal.Light2D:SetShapePath(path) end

---@class UnityEngine.Rendering.Universal.Light2DBlendStyle : System.ValueType
---@field name string
UnityEngine.Rendering.Universal.Light2DBlendStyle = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DBlendStyle UnityEngine.Rendering.Universal.Light2DBlendStyle
CS.UnityEngine.Rendering.Universal.Light2DBlendStyle = UnityEngine.Rendering.Universal.Light2DBlendStyle


---@class UnityEngine.Rendering.Universal.LightStats : System.ValueType
---@field totalLights number
---@field totalNormalMapUsage number
---@field totalVolumetricUsage number
---@field blendStylesUsed number
---@field blendStylesWithLights number
---@field useNormalMap boolean
UnityEngine.Rendering.Universal.LightStats = {}
---@alias CS.UnityEngine.Rendering.Universal.LightStats UnityEngine.Rendering.Universal.LightStats
CS.UnityEngine.Rendering.Universal.LightStats = UnityEngine.Rendering.Universal.LightStats


---@class UnityEngine.Rendering.Universal.ILight2DCullResult
---@field visibleLights System.Collections.Generic.List
---@field visibleShadows System.Collections.Generic.List
UnityEngine.Rendering.Universal.ILight2DCullResult = {}
---@alias CS.UnityEngine.Rendering.Universal.ILight2DCullResult UnityEngine.Rendering.Universal.ILight2DCullResult
CS.UnityEngine.Rendering.Universal.ILight2DCullResult = UnityEngine.Rendering.Universal.ILight2DCullResult

---@param layer number
---@return UnityEngine.Rendering.Universal.LightStats
function UnityEngine.Rendering.Universal.ILight2DCullResult:GetLightStatsByLayer(layer) end
---@return boolean
function UnityEngine.Rendering.Universal.ILight2DCullResult:IsSceneLit() end
---@return boolean
function UnityEngine.Rendering.Universal.ILight2DCullResult:IsGameView() end

---@class UnityEngine.Rendering.Universal.Light2DCullResult : System.Object
---@field visibleLights System.Collections.Generic.List
---@field visibleShadows System.Collections.Generic.List
UnityEngine.Rendering.Universal.Light2DCullResult = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DCullResult UnityEngine.Rendering.Universal.Light2DCullResult
CS.UnityEngine.Rendering.Universal.Light2DCullResult = UnityEngine.Rendering.Universal.Light2DCullResult

---@return UnityEngine.Rendering.Universal.Light2DCullResult
function UnityEngine.Rendering.Universal.Light2DCullResult.New() end
---@return boolean
function UnityEngine.Rendering.Universal.Light2DCullResult:IsSceneLit() end
---@return boolean
function UnityEngine.Rendering.Universal.Light2DCullResult:IsGameView() end
---@param layer number
---@return UnityEngine.Rendering.Universal.LightStats
function UnityEngine.Rendering.Universal.Light2DCullResult:GetLightStatsByLayer(layer) end
---@param ref_cullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@param camera UnityEngine.Camera
---@return ,UnityEngine.Rendering.ScriptableCullingParameters
function UnityEngine.Rendering.Universal.Light2DCullResult:SetupCulling(ref_cullingParameters, camera) end

---@class UnityEngine.Rendering.Universal.Light2DManager : System.Object
---@field lights System.Collections.Generic.List
UnityEngine.Rendering.Universal.Light2DManager = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DManager UnityEngine.Rendering.Universal.Light2DManager
CS.UnityEngine.Rendering.Universal.Light2DManager = UnityEngine.Rendering.Universal.Light2DManager

---@param light UnityEngine.Rendering.Universal.Light2D
function UnityEngine.Rendering.Universal.Light2DManager.RegisterLight(light) end
---@param light UnityEngine.Rendering.Universal.Light2D
function UnityEngine.Rendering.Universal.Light2DManager.DeregisterLight(light) end
---@param light UnityEngine.Rendering.Universal.Light2D
function UnityEngine.Rendering.Universal.Light2DManager.ErrorIfDuplicateGlobalLight(light) end
---@param sortingLayerIndex number
---@param blendStyleIndex number
---@param out_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.Universal.Light2DManager.GetGlobalColor(sortingLayerIndex, blendStyleIndex, out_color) end
---@return UnityEngine.SortingLayer[]
function UnityEngine.Rendering.Universal.Light2DManager.GetCachedSortingLayer() end

---@class UnityEngine.Rendering.Universal.LightUtility : System.Object
UnityEngine.Rendering.Universal.LightUtility = {}
---@alias CS.UnityEngine.Rendering.Universal.LightUtility UnityEngine.Rendering.Universal.LightUtility
CS.UnityEngine.Rendering.Universal.LightUtility = UnityEngine.Rendering.Universal.LightUtility

---@overload fun(a: UnityEngine.Rendering.Universal.Light2D.LightType, ref_b: UnityEngine.Rendering.Universal.Light2D.LightType) : boolean, UnityEngine.Rendering.Universal.Light2D.LightType
---@overload fun(a: number, ref_b: number) : boolean, number
---@overload fun(a: number, ref_b: number) : boolean, number
---@param a boolean
---@param ref_b boolean
---@return boolean,boolean
function UnityEngine.Rendering.Universal.LightUtility.CheckForChange(a, ref_b) end
---@param light UnityEngine.Rendering.Universal.Light2D
---@param shapePath UnityEngine.Vector3[]
---@param falloffDistance number
---@return UnityEngine.Bounds
function UnityEngine.Rendering.Universal.LightUtility.GenerateShapeMesh(light, shapePath, falloffDistance) end
---@param light UnityEngine.Rendering.Universal.Light2D
---@param radius number
---@param falloffDistance number
---@param angle number
---@param sides number
---@return UnityEngine.Bounds
function UnityEngine.Rendering.Universal.LightUtility.GenerateParametricMesh(light, radius, falloffDistance, angle, sides) end
---@param light UnityEngine.Rendering.Universal.Light2D
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Bounds
function UnityEngine.Rendering.Universal.LightUtility.GenerateSpriteMesh(light, sprite) end
---@param path UnityEngine.Vector3[]
---@return number
function UnityEngine.Rendering.Universal.LightUtility.GetShapePathHash(path) end

---@class UnityEngine.Rendering.Universal.IRenderPass2D
---@field rendererData UnityEngine.Rendering.Universal.Renderer2DData
UnityEngine.Rendering.Universal.IRenderPass2D = {}
---@alias CS.UnityEngine.Rendering.Universal.IRenderPass2D UnityEngine.Rendering.Universal.IRenderPass2D
CS.UnityEngine.Rendering.Universal.IRenderPass2D = UnityEngine.Rendering.Universal.IRenderPass2D

---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param renderScale number
function UnityEngine.Rendering.Universal.IRenderPass2D:CreateNormalMapRenderTexture(renderingData, cmd, renderScale) end
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@return UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.IRenderPass2D:GetBlendStyleRenderTextureDesc(renderingData) end
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param downsamplingMethod UnityEngine.Rendering.Universal.Downsampling
function UnityEngine.Rendering.Universal.IRenderPass2D:CreateCameraSortingLayerRenderTexture(renderingData, cmd, downsamplingMethod) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.IRenderPass2D:DisableAllKeywords(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.IRenderPass2D:ReleaseRenderTextures(cmd) end
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param layerToRender number
---@param endLayerValue number
---@param renderTexture UnityEngine.Rendering.RenderTargetIdentifier
---@param depthTexture UnityEngine.Rendering.RenderTargetIdentifier
---@param intermediateStoreAction UnityEngine.Rendering.RenderBufferStoreAction
---@param finalStoreAction UnityEngine.Rendering.RenderBufferStoreAction
---@param requiresRTInit boolean
---@param lights System.Collections.Generic.List
function UnityEngine.Rendering.Universal.IRenderPass2D:RenderLightVolumes(renderingData, cmd, layerToRender, endLayerValue, renderTexture, depthTexture, intermediateStoreAction, finalStoreAction, requiresRTInit, lights) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.IRenderPass2D:SetShapeLightShaderGlobals(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param blendStylesUsed number
function UnityEngine.Rendering.Universal.IRenderPass2D:ClearDirtyLighting(cmd, blendStylesUsed) end
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param layerToRender number
---@param ref_layerBatch UnityEngine.Rendering.Universal.LayerBatch
---@param ref_rtDesc UnityEngine.RenderTextureDescriptor
---@return ,UnityEngine.Rendering.Universal.LayerBatch,UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.IRenderPass2D:RenderLights(renderingData, cmd, layerToRender, ref_layerBatch, ref_rtDesc) end

---@class UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass = {}
---@alias CS.UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass
CS.UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass = UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@return UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass
function UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass.New(evt) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.PixelPerfectBackgroundPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.Render2DLightingPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Render2DLightingPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Render2DLightingPass UnityEngine.Rendering.Universal.Render2DLightingPass
CS.UnityEngine.Rendering.Universal.Render2DLightingPass = UnityEngine.Rendering.Universal.Render2DLightingPass

---@param rendererData UnityEngine.Rendering.Universal.Renderer2DData
---@param blitMaterial UnityEngine.Material
---@param samplingMaterial UnityEngine.Material
---@return UnityEngine.Rendering.Universal.Render2DLightingPass
function UnityEngine.Rendering.Universal.Render2DLightingPass.New(rendererData, blitMaterial, samplingMaterial) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Render2DLightingPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.UpscalePass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.UpscalePass = {}
---@alias CS.UnityEngine.Rendering.Universal.UpscalePass UnityEngine.Rendering.Universal.UpscalePass
CS.UnityEngine.Rendering.Universal.UpscalePass = UnityEngine.Rendering.Universal.UpscalePass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param blitMaterial UnityEngine.Material
---@return UnityEngine.Rendering.Universal.UpscalePass
function UnityEngine.Rendering.Universal.UpscalePass.New(evt, blitMaterial) end
---@param colorTargetHandle UnityEngine.Rendering.RTHandle
---@param width number
---@param height number
---@param mode UnityEngine.FilterMode
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@param out_upscaleHandle UnityEngine.Rendering.RTHandle
---@return ,UnityEngine.Rendering.Universal.RenderingData,UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.UpscalePass:Setup(colorTargetHandle, width, height, mode, ref_renderingData, out_upscaleHandle) end
function UnityEngine.Rendering.Universal.UpscalePass:Dispose() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.UpscalePass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.LayerBatch : System.ValueType
---@field startIndex number
---@field endIndex number
---@field startLayerID number
---@field endLayerValue number
---@field layerRange UnityEngine.Rendering.SortingLayerRange
---@field lightStats UnityEngine.Rendering.Universal.LightStats
---@field useNormals boolean
UnityEngine.Rendering.Universal.LayerBatch = {}
---@alias CS.UnityEngine.Rendering.Universal.LayerBatch UnityEngine.Rendering.Universal.LayerBatch
CS.UnityEngine.Rendering.Universal.LayerBatch = UnityEngine.Rendering.Universal.LayerBatch

---@param index number
function UnityEngine.Rendering.Universal.LayerBatch:InitRTIds(index) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param desc UnityEngine.RenderTextureDescriptor
---@param index number
---@return UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.Universal.LayerBatch:GetRTId(cmd, desc, index) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.LayerBatch:ReleaseRT(cmd) end

---@class UnityEngine.Rendering.Universal.LayerUtility : System.Object
---@field maxTextureCount number
UnityEngine.Rendering.Universal.LayerUtility = {}
---@alias CS.UnityEngine.Rendering.Universal.LayerUtility UnityEngine.Rendering.Universal.LayerUtility
CS.UnityEngine.Rendering.Universal.LayerUtility = UnityEngine.Rendering.Universal.LayerUtility

---@param maxTextureCount number
function UnityEngine.Rendering.Universal.LayerUtility.InitializeBudget(maxTextureCount) end
---@param lightCullResult UnityEngine.Rendering.Universal.ILight2DCullResult
---@param out_batchCount number
---@return UnityEngine.Rendering.Universal.LayerBatch[],number
function UnityEngine.Rendering.Universal.LayerUtility.CalculateBatches(lightCullResult, out_batchCount) end

---@class UnityEngine.Rendering.Universal.Light2DLookupTexture : System.Object
UnityEngine.Rendering.Universal.Light2DLookupTexture = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DLookupTexture UnityEngine.Rendering.Universal.Light2DLookupTexture
CS.UnityEngine.Rendering.Universal.Light2DLookupTexture = UnityEngine.Rendering.Universal.Light2DLookupTexture

---@return UnityEngine.Texture
function UnityEngine.Rendering.Universal.Light2DLookupTexture.GetLightLookupTexture() end

---@class UnityEngine.Rendering.Universal.RendererLighting : System.Object
UnityEngine.Rendering.Universal.RendererLighting = {}
---@alias CS.UnityEngine.Rendering.Universal.RendererLighting UnityEngine.Rendering.Universal.RendererLighting
CS.UnityEngine.Rendering.Universal.RendererLighting = UnityEngine.Rendering.Universal.RendererLighting

---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param renderScale number
function UnityEngine.Rendering.Universal.RendererLighting.CreateNormalMapRenderTexture(pass, renderingData, cmd, renderScale) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@return UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.RendererLighting.GetBlendStyleRenderTextureDesc(pass, renderingData) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param downsamplingMethod UnityEngine.Rendering.Universal.Downsampling
function UnityEngine.Rendering.Universal.RendererLighting.CreateCameraSortingLayerRenderTexture(pass, renderingData, cmd, downsamplingMethod) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param blendStyleIndex number
---@param enabled boolean
function UnityEngine.Rendering.Universal.RendererLighting.EnableBlendStyle(cmd, blendStyleIndex, enabled) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.RendererLighting.DisableAllKeywords(pass, cmd) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.RendererLighting.ReleaseRenderTextures(pass, cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param light UnityEngine.Rendering.Universal.Light2D
---@param lightMesh UnityEngine.Mesh
---@param material UnityEngine.Material
function UnityEngine.Rendering.Universal.RendererLighting.DrawPointLight(cmd, light, lightMesh, material) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param layerToRender number
---@param endLayerValue number
---@param renderTexture UnityEngine.Rendering.RenderTargetIdentifier
---@param depthTexture UnityEngine.Rendering.RenderTargetIdentifier
---@param intermediateStoreAction UnityEngine.Rendering.RenderBufferStoreAction
---@param finalStoreAction UnityEngine.Rendering.RenderBufferStoreAction
---@param requiresRTInit boolean
---@param lights System.Collections.Generic.List
function UnityEngine.Rendering.Universal.RendererLighting.RenderLightVolumes(pass, renderingData, cmd, layerToRender, endLayerValue, renderTexture, depthTexture, intermediateStoreAction, finalStoreAction, requiresRTInit, lights) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.RendererLighting.SetShapeLightShaderGlobals(pass, cmd) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param blendStylesUsed number
function UnityEngine.Rendering.Universal.RendererLighting.ClearDirtyLighting(pass, cmd, blendStylesUsed) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param layerToRender number
---@param ref_layerBatch UnityEngine.Rendering.Universal.LayerBatch
---@param ref_rtDesc UnityEngine.RenderTextureDescriptor
---@return ,UnityEngine.Rendering.Universal.LayerBatch,UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.RendererLighting.RenderLights(pass, renderingData, cmd, layerToRender, ref_layerBatch, ref_rtDesc) end

---@class UnityEngine.Rendering.Universal.IPixelPerfectCamera
---@field assetsPPU number
---@field refResolutionX number
---@field refResolutionY number
---@field upscaleRT boolean
---@field pixelSnapping boolean
---@field cropFrameX boolean
---@field cropFrameY boolean
---@field stretchFill boolean
UnityEngine.Rendering.Universal.IPixelPerfectCamera = {}
---@alias CS.UnityEngine.Rendering.Universal.IPixelPerfectCamera UnityEngine.Rendering.Universal.IPixelPerfectCamera
CS.UnityEngine.Rendering.Universal.IPixelPerfectCamera = UnityEngine.Rendering.Universal.IPixelPerfectCamera


---@class UnityEngine.Rendering.Universal.PixelPerfectCameraInternal : System.Object
UnityEngine.Rendering.Universal.PixelPerfectCameraInternal = {}
---@alias CS.UnityEngine.Rendering.Universal.PixelPerfectCameraInternal UnityEngine.Rendering.Universal.PixelPerfectCameraInternal
CS.UnityEngine.Rendering.Universal.PixelPerfectCameraInternal = UnityEngine.Rendering.Universal.PixelPerfectCameraInternal

function UnityEngine.Rendering.Universal.PixelPerfectCameraInternal:OnBeforeSerialize() end
function UnityEngine.Rendering.Universal.PixelPerfectCameraInternal:OnAfterDeserialize() end

---@class UnityEngine.Rendering.Universal.Renderer2D : UnityEngine.Rendering.Universal.ScriptableRenderer
UnityEngine.Rendering.Universal.Renderer2D = {}
---@alias CS.UnityEngine.Rendering.Universal.Renderer2D UnityEngine.Rendering.Universal.Renderer2D
CS.UnityEngine.Rendering.Universal.Renderer2D = UnityEngine.Rendering.Universal.Renderer2D

---@param data UnityEngine.Rendering.Universal.Renderer2DData
---@return UnityEngine.Rendering.Universal.Renderer2D
function UnityEngine.Rendering.Universal.Renderer2D.New(data) end
---@return number
function UnityEngine.Rendering.Universal.Renderer2D:SupportedCameraStackingTypes() end
---@return UnityEngine.Rendering.Universal.Renderer2DData
function UnityEngine.Rendering.Universal.Renderer2D:GetRenderer2DData() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Renderer2D:Setup(context, ref_renderingData) end
---@param ref_cullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.ScriptableCullingParameters,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.Renderer2D:SetupCullingParameters(ref_cullingParameters, ref_cameraData) end

---@class UnityEngine.Rendering.Universal.Renderer2DData : UnityEngine.Rendering.Universal.ScriptableRendererData
---@field hdrEmulationScale number
---@field lightBlendStyles UnityEngine.Rendering.Universal.Light2DBlendStyle[]
UnityEngine.Rendering.Universal.Renderer2DData = {}
---@alias CS.UnityEngine.Rendering.Universal.Renderer2DData UnityEngine.Rendering.Universal.Renderer2DData
CS.UnityEngine.Rendering.Universal.Renderer2DData = UnityEngine.Rendering.Universal.Renderer2DData

---@return UnityEngine.Rendering.Universal.Renderer2DData
function UnityEngine.Rendering.Universal.Renderer2DData.New() end

---@class UnityEngine.Rendering.Universal.CompositeShadowCaster2D : UnityEngine.Rendering.Universal.ShadowCasterGroup2D
UnityEngine.Rendering.Universal.CompositeShadowCaster2D = {}
---@alias CS.UnityEngine.Rendering.Universal.CompositeShadowCaster2D UnityEngine.Rendering.Universal.CompositeShadowCaster2D
CS.UnityEngine.Rendering.Universal.CompositeShadowCaster2D = UnityEngine.Rendering.Universal.CompositeShadowCaster2D
