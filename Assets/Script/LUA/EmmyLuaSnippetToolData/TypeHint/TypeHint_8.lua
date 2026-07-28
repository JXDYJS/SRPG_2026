---@meta


---@class UnityEngine.Rendering.Universal.ShadowCaster2D : UnityEngine.Rendering.Universal.ShadowCasterGroup2D
---@field mesh UnityEngine.Mesh
---@field shapePath UnityEngine.Vector3[]
---@field useRendererSilhouette boolean
---@field selfShadows boolean
---@field castsShadows boolean
UnityEngine.Rendering.Universal.ShadowCaster2D = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowCaster2D UnityEngine.Rendering.Universal.ShadowCaster2D
CS.UnityEngine.Rendering.Universal.ShadowCaster2D = UnityEngine.Rendering.Universal.ShadowCaster2D

function UnityEngine.Rendering.Universal.ShadowCaster2D:Update() end
function UnityEngine.Rendering.Universal.ShadowCaster2D:OnBeforeSerialize() end
function UnityEngine.Rendering.Universal.ShadowCaster2D:OnAfterDeserialize() end

---@class UnityEngine.Rendering.Universal.ShadowCasterGroup2D : UnityEngine.MonoBehaviour
UnityEngine.Rendering.Universal.ShadowCasterGroup2D = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowCasterGroup2D UnityEngine.Rendering.Universal.ShadowCasterGroup2D
CS.UnityEngine.Rendering.Universal.ShadowCasterGroup2D = UnityEngine.Rendering.Universal.ShadowCasterGroup2D

---@return System.Collections.Generic.List
function UnityEngine.Rendering.Universal.ShadowCasterGroup2D:GetShadowCasters() end
---@return number
function UnityEngine.Rendering.Universal.ShadowCasterGroup2D:GetShadowGroup() end
---@param shadowCaster2D UnityEngine.Rendering.Universal.ShadowCaster2D
function UnityEngine.Rendering.Universal.ShadowCasterGroup2D:RegisterShadowCaster2D(shadowCaster2D) end
---@param shadowCaster2D UnityEngine.Rendering.Universal.ShadowCaster2D
function UnityEngine.Rendering.Universal.ShadowCasterGroup2D:UnregisterShadowCaster2D(shadowCaster2D) end

---@class UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager : System.Object
---@field shadowCasterGroups System.Collections.Generic.List
UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager
CS.UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager = UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager

---@return UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.New() end
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.CacheValues() end
---@param shadowCaster UnityEngine.Rendering.Universal.ShadowCasterGroup2D
---@param list System.Collections.Generic.List
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.AddShadowCasterGroupToList(shadowCaster, list) end
---@param shadowCaster UnityEngine.Rendering.Universal.ShadowCasterGroup2D
---@param list System.Collections.Generic.List
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.RemoveShadowCasterGroupFromList(shadowCaster, list) end
---@param shadowCaster UnityEngine.Rendering.Universal.ShadowCaster2D
---@param ref_shadowCasterGroup UnityEngine.Rendering.Universal.ShadowCasterGroup2D
---@return boolean,UnityEngine.Rendering.Universal.ShadowCasterGroup2D
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.AddToShadowCasterGroup(shadowCaster, ref_shadowCasterGroup) end
---@param shadowCaster UnityEngine.Rendering.Universal.ShadowCaster2D
---@param shadowCasterGroup UnityEngine.Rendering.Universal.ShadowCasterGroup2D
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.RemoveFromShadowCasterGroup(shadowCaster, shadowCasterGroup) end
---@param group UnityEngine.Rendering.Universal.ShadowCasterGroup2D
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.AddGroup(group) end
---@param group UnityEngine.Rendering.Universal.ShadowCasterGroup2D
function UnityEngine.Rendering.Universal.ShadowCasterGroup2DManager.RemoveGroup(group) end

---@class UnityEngine.Rendering.Universal.ShadowRendering : System.Object
---@field maxTextureCount number
UnityEngine.Rendering.Universal.ShadowRendering = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowRendering UnityEngine.Rendering.Universal.ShadowRendering
CS.UnityEngine.Rendering.Universal.ShadowRendering = UnityEngine.Rendering.Universal.ShadowRendering

---@param maxTextureCount number
function UnityEngine.Rendering.Universal.ShadowRendering.InitializeBudget(maxTextureCount) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmdBuffer UnityEngine.Rendering.CommandBuffer
---@param shadowIndex number
function UnityEngine.Rendering.Universal.ShadowRendering.CreateShadowRenderTexture(pass, renderingData, cmdBuffer, shadowIndex) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmdBuffer UnityEngine.Rendering.CommandBuffer
---@param layerToRender number
---@param light UnityEngine.Rendering.Universal.Light2D
---@param shadowIndex number
---@param shadowIntensity number
---@return boolean
function UnityEngine.Rendering.Universal.ShadowRendering.PrerenderShadows(pass, renderingData, cmdBuffer, layerToRender, light, shadowIndex, shadowIntensity) end
---@param cmdBuffer UnityEngine.Rendering.CommandBuffer
---@param light UnityEngine.Rendering.Universal.Light2D
---@param shadowIndex number
function UnityEngine.Rendering.Universal.ShadowRendering.SetGlobalShadowTexture(cmdBuffer, light, shadowIndex) end
---@param cmdBuffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.ShadowRendering.DisableGlobalShadowTexture(cmdBuffer) end
---@param cmdBuffer UnityEngine.Rendering.CommandBuffer
---@param shadowIndex number
function UnityEngine.Rendering.Universal.ShadowRendering.ReleaseShadowRenderTexture(cmdBuffer, shadowIndex) end
---@param cmdBuffer UnityEngine.Rendering.CommandBuffer
---@param shadowCaster UnityEngine.Rendering.Universal.ShadowCaster2D
function UnityEngine.Rendering.Universal.ShadowRendering.SetShadowProjectionGlobals(cmdBuffer, shadowCaster) end
---@param pass UnityEngine.Rendering.Universal.IRenderPass2D
---@param renderingData UnityEngine.Rendering.Universal.RenderingData
---@param cmdBuffer UnityEngine.Rendering.CommandBuffer
---@param layerToRender number
---@param light UnityEngine.Rendering.Universal.Light2D
---@param shadowIntensity number
---@param renderTexture UnityEngine.Rendering.RenderTargetIdentifier
---@param colorBit number
---@return boolean
function UnityEngine.Rendering.Universal.ShadowRendering.RenderShadows(pass, renderingData, cmdBuffer, layerToRender, light, shadowIntensity, renderTexture, colorBit) end

---@class UnityEngine.Rendering.Universal.ShadowUtility : System.Object
UnityEngine.Rendering.Universal.ShadowUtility = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowUtility UnityEngine.Rendering.Universal.ShadowUtility
CS.UnityEngine.Rendering.Universal.ShadowUtility = UnityEngine.Rendering.Universal.ShadowUtility

---@return UnityEngine.Rendering.Universal.ShadowUtility
function UnityEngine.Rendering.Universal.ShadowUtility.New() end
---@param mesh UnityEngine.Mesh
---@param shapePath UnityEngine.Vector3[]
---@return UnityEngine.Bounds
function UnityEngine.Rendering.Universal.ShadowUtility.GenerateShadowMesh(mesh, shapePath) end

---@class UnityEngine.Rendering.Universal.ComponentUtility : System.Object
UnityEngine.Rendering.Universal.ComponentUtility = {}
---@alias CS.UnityEngine.Rendering.Universal.ComponentUtility UnityEngine.Rendering.Universal.ComponentUtility
CS.UnityEngine.Rendering.Universal.ComponentUtility = UnityEngine.Rendering.Universal.ComponentUtility

---@param camera UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.Universal.ComponentUtility.IsUniversalCamera(camera) end
---@param light UnityEngine.Light
---@return boolean
function UnityEngine.Rendering.Universal.ComponentUtility.IsUniversalLight(light) end

---@class UnityEngine.Rendering.Universal.PostProcessData : UnityEngine.ScriptableObject
---@field shaders UnityEngine.Rendering.Universal.PostProcessData.ShaderResources
---@field textures UnityEngine.Rendering.Universal.PostProcessData.TextureResources
UnityEngine.Rendering.Universal.PostProcessData = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessData UnityEngine.Rendering.Universal.PostProcessData
CS.UnityEngine.Rendering.Universal.PostProcessData = UnityEngine.Rendering.Universal.PostProcessData

---@return UnityEngine.Rendering.Universal.PostProcessData
function UnityEngine.Rendering.Universal.PostProcessData.New() end

---@class UnityEngine.Rendering.Universal.StencilStateData : System.Object
---@field overrideStencilState boolean
---@field stencilReference number
---@field stencilCompareFunction UnityEngine.Rendering.CompareFunction
---@field passOperation UnityEngine.Rendering.StencilOp
---@field failOperation UnityEngine.Rendering.StencilOp
---@field zFailOperation UnityEngine.Rendering.StencilOp
UnityEngine.Rendering.Universal.StencilStateData = {}
---@alias CS.UnityEngine.Rendering.Universal.StencilStateData UnityEngine.Rendering.Universal.StencilStateData
CS.UnityEngine.Rendering.Universal.StencilStateData = UnityEngine.Rendering.Universal.StencilStateData

---@return UnityEngine.Rendering.Universal.StencilStateData
function UnityEngine.Rendering.Universal.StencilStateData.New() end

---@class UnityEngine.Rendering.Universal.ShadowQuality
---@field Disabled UnityEngine.Rendering.Universal.ShadowQuality
---@field HardShadows UnityEngine.Rendering.Universal.ShadowQuality
---@field SoftShadows UnityEngine.Rendering.Universal.ShadowQuality
UnityEngine.Rendering.Universal.ShadowQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowQuality UnityEngine.Rendering.Universal.ShadowQuality
CS.UnityEngine.Rendering.Universal.ShadowQuality = UnityEngine.Rendering.Universal.ShadowQuality


---@class UnityEngine.Rendering.Universal.SoftShadowQuality
---@field UsePipelineSettings UnityEngine.Rendering.Universal.SoftShadowQuality
---@field Low UnityEngine.Rendering.Universal.SoftShadowQuality
---@field Medium UnityEngine.Rendering.Universal.SoftShadowQuality
---@field High UnityEngine.Rendering.Universal.SoftShadowQuality
UnityEngine.Rendering.Universal.SoftShadowQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.SoftShadowQuality UnityEngine.Rendering.Universal.SoftShadowQuality
CS.UnityEngine.Rendering.Universal.SoftShadowQuality = UnityEngine.Rendering.Universal.SoftShadowQuality


---@class UnityEngine.Rendering.Universal.ShadowResolution
---@field _256 UnityEngine.Rendering.Universal.ShadowResolution
---@field _512 UnityEngine.Rendering.Universal.ShadowResolution
---@field _1024 UnityEngine.Rendering.Universal.ShadowResolution
---@field _2048 UnityEngine.Rendering.Universal.ShadowResolution
---@field _4096 UnityEngine.Rendering.Universal.ShadowResolution
UnityEngine.Rendering.Universal.ShadowResolution = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowResolution UnityEngine.Rendering.Universal.ShadowResolution
CS.UnityEngine.Rendering.Universal.ShadowResolution = UnityEngine.Rendering.Universal.ShadowResolution


---@class UnityEngine.Rendering.Universal.LightCookieResolution
---@field _256 UnityEngine.Rendering.Universal.LightCookieResolution
---@field _512 UnityEngine.Rendering.Universal.LightCookieResolution
---@field _1024 UnityEngine.Rendering.Universal.LightCookieResolution
---@field _2048 UnityEngine.Rendering.Universal.LightCookieResolution
---@field _4096 UnityEngine.Rendering.Universal.LightCookieResolution
UnityEngine.Rendering.Universal.LightCookieResolution = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieResolution UnityEngine.Rendering.Universal.LightCookieResolution
CS.UnityEngine.Rendering.Universal.LightCookieResolution = UnityEngine.Rendering.Universal.LightCookieResolution


---@class UnityEngine.Rendering.Universal.LightCookieFormat
---@field GrayscaleLow UnityEngine.Rendering.Universal.LightCookieFormat
---@field GrayscaleHigh UnityEngine.Rendering.Universal.LightCookieFormat
---@field ColorLow UnityEngine.Rendering.Universal.LightCookieFormat
---@field ColorHigh UnityEngine.Rendering.Universal.LightCookieFormat
---@field ColorHDR UnityEngine.Rendering.Universal.LightCookieFormat
UnityEngine.Rendering.Universal.LightCookieFormat = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieFormat UnityEngine.Rendering.Universal.LightCookieFormat
CS.UnityEngine.Rendering.Universal.LightCookieFormat = UnityEngine.Rendering.Universal.LightCookieFormat


---@class UnityEngine.Rendering.Universal.HDRColorBufferPrecision
---@field _32Bits UnityEngine.Rendering.Universal.HDRColorBufferPrecision
---@field _64Bits UnityEngine.Rendering.Universal.HDRColorBufferPrecision
UnityEngine.Rendering.Universal.HDRColorBufferPrecision = {}
---@alias CS.UnityEngine.Rendering.Universal.HDRColorBufferPrecision UnityEngine.Rendering.Universal.HDRColorBufferPrecision
CS.UnityEngine.Rendering.Universal.HDRColorBufferPrecision = UnityEngine.Rendering.Universal.HDRColorBufferPrecision


---@class UnityEngine.Rendering.Universal.MsaaQuality
---@field Disabled UnityEngine.Rendering.Universal.MsaaQuality
---@field _2x UnityEngine.Rendering.Universal.MsaaQuality
---@field _4x UnityEngine.Rendering.Universal.MsaaQuality
---@field _8x UnityEngine.Rendering.Universal.MsaaQuality
UnityEngine.Rendering.Universal.MsaaQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.MsaaQuality UnityEngine.Rendering.Universal.MsaaQuality
CS.UnityEngine.Rendering.Universal.MsaaQuality = UnityEngine.Rendering.Universal.MsaaQuality


---@class UnityEngine.Rendering.Universal.Downsampling
---@field None UnityEngine.Rendering.Universal.Downsampling
---@field _2xBilinear UnityEngine.Rendering.Universal.Downsampling
---@field _4xBox UnityEngine.Rendering.Universal.Downsampling
---@field _4xBilinear UnityEngine.Rendering.Universal.Downsampling
UnityEngine.Rendering.Universal.Downsampling = {}
---@alias CS.UnityEngine.Rendering.Universal.Downsampling UnityEngine.Rendering.Universal.Downsampling
CS.UnityEngine.Rendering.Universal.Downsampling = UnityEngine.Rendering.Universal.Downsampling


---@class UnityEngine.Rendering.Universal.DefaultMaterialType
---@field Standard UnityEngine.Rendering.Universal.DefaultMaterialType
---@field Particle UnityEngine.Rendering.Universal.DefaultMaterialType
---@field Terrain UnityEngine.Rendering.Universal.DefaultMaterialType
---@field Sprite UnityEngine.Rendering.Universal.DefaultMaterialType
---@field UnityBuiltinDefault UnityEngine.Rendering.Universal.DefaultMaterialType
---@field SpriteMask UnityEngine.Rendering.Universal.DefaultMaterialType
---@field Decal UnityEngine.Rendering.Universal.DefaultMaterialType
UnityEngine.Rendering.Universal.DefaultMaterialType = {}
---@alias CS.UnityEngine.Rendering.Universal.DefaultMaterialType UnityEngine.Rendering.Universal.DefaultMaterialType
CS.UnityEngine.Rendering.Universal.DefaultMaterialType = UnityEngine.Rendering.Universal.DefaultMaterialType


---@class UnityEngine.Rendering.Universal.LightRenderingMode
---@field Disabled UnityEngine.Rendering.Universal.LightRenderingMode
---@field PerVertex UnityEngine.Rendering.Universal.LightRenderingMode
---@field PerPixel UnityEngine.Rendering.Universal.LightRenderingMode
UnityEngine.Rendering.Universal.LightRenderingMode = {}
---@alias CS.UnityEngine.Rendering.Universal.LightRenderingMode UnityEngine.Rendering.Universal.LightRenderingMode
CS.UnityEngine.Rendering.Universal.LightRenderingMode = UnityEngine.Rendering.Universal.LightRenderingMode


---@class UnityEngine.Rendering.Universal.PipelineDebugLevel
---@field Disabled UnityEngine.Rendering.Universal.PipelineDebugLevel
---@field Profiling UnityEngine.Rendering.Universal.PipelineDebugLevel
UnityEngine.Rendering.Universal.PipelineDebugLevel = {}
---@alias CS.UnityEngine.Rendering.Universal.PipelineDebugLevel UnityEngine.Rendering.Universal.PipelineDebugLevel
CS.UnityEngine.Rendering.Universal.PipelineDebugLevel = UnityEngine.Rendering.Universal.PipelineDebugLevel


---@class UnityEngine.Rendering.Universal.RendererType
---@field Custom UnityEngine.Rendering.Universal.RendererType
---@field UniversalRenderer UnityEngine.Rendering.Universal.RendererType
---@field _2DRenderer UnityEngine.Rendering.Universal.RendererType
UnityEngine.Rendering.Universal.RendererType = {}
---@alias CS.UnityEngine.Rendering.Universal.RendererType UnityEngine.Rendering.Universal.RendererType
CS.UnityEngine.Rendering.Universal.RendererType = UnityEngine.Rendering.Universal.RendererType


---@class UnityEngine.Rendering.Universal.ColorGradingMode
---@field LowDynamicRange UnityEngine.Rendering.Universal.ColorGradingMode
---@field HighDynamicRange UnityEngine.Rendering.Universal.ColorGradingMode
UnityEngine.Rendering.Universal.ColorGradingMode = {}
---@alias CS.UnityEngine.Rendering.Universal.ColorGradingMode UnityEngine.Rendering.Universal.ColorGradingMode
CS.UnityEngine.Rendering.Universal.ColorGradingMode = UnityEngine.Rendering.Universal.ColorGradingMode


---@class UnityEngine.Rendering.Universal.StoreActionsOptimization
---@field Auto UnityEngine.Rendering.Universal.StoreActionsOptimization
---@field Discard UnityEngine.Rendering.Universal.StoreActionsOptimization
---@field Store UnityEngine.Rendering.Universal.StoreActionsOptimization
UnityEngine.Rendering.Universal.StoreActionsOptimization = {}
---@alias CS.UnityEngine.Rendering.Universal.StoreActionsOptimization UnityEngine.Rendering.Universal.StoreActionsOptimization
CS.UnityEngine.Rendering.Universal.StoreActionsOptimization = UnityEngine.Rendering.Universal.StoreActionsOptimization


---@class UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
---@field EveryFrame UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
---@field ViaScripting UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
---@field UsePipelineSettings UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode = {}
---@alias CS.UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
CS.UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode = UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode


---@class UnityEngine.Rendering.Universal.UpscalingFilterSelection
---@field Auto UnityEngine.Rendering.Universal.UpscalingFilterSelection
---@field Linear UnityEngine.Rendering.Universal.UpscalingFilterSelection
---@field Point UnityEngine.Rendering.Universal.UpscalingFilterSelection
---@field FSR UnityEngine.Rendering.Universal.UpscalingFilterSelection
UnityEngine.Rendering.Universal.UpscalingFilterSelection = {}
---@alias CS.UnityEngine.Rendering.Universal.UpscalingFilterSelection UnityEngine.Rendering.Universal.UpscalingFilterSelection
CS.UnityEngine.Rendering.Universal.UpscalingFilterSelection = UnityEngine.Rendering.Universal.UpscalingFilterSelection


---@class UnityEngine.Rendering.Universal.LODCrossFadeDitheringType
---@field BayerMatrix UnityEngine.Rendering.Universal.LODCrossFadeDitheringType
---@field BlueNoise UnityEngine.Rendering.Universal.LODCrossFadeDitheringType
UnityEngine.Rendering.Universal.LODCrossFadeDitheringType = {}
---@alias CS.UnityEngine.Rendering.Universal.LODCrossFadeDitheringType UnityEngine.Rendering.Universal.LODCrossFadeDitheringType
CS.UnityEngine.Rendering.Universal.LODCrossFadeDitheringType = UnityEngine.Rendering.Universal.LODCrossFadeDitheringType


---@class UnityEngine.Rendering.Universal.ShEvalMode
---@field Auto UnityEngine.Rendering.Universal.ShEvalMode
---@field PerVertex UnityEngine.Rendering.Universal.ShEvalMode
---@field Mixed UnityEngine.Rendering.Universal.ShEvalMode
---@field PerPixel UnityEngine.Rendering.Universal.ShEvalMode
UnityEngine.Rendering.Universal.ShEvalMode = {}
---@alias CS.UnityEngine.Rendering.Universal.ShEvalMode UnityEngine.Rendering.Universal.ShEvalMode
CS.UnityEngine.Rendering.Universal.ShEvalMode = UnityEngine.Rendering.Universal.ShEvalMode


---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset : UnityEngine.Rendering.RenderPipelineAsset
---@field k_MinLutSize number
---@field k_MaxLutSize number
---@field AdditionalLightsDefaultShadowResolutionTierLow number
---@field AdditionalLightsDefaultShadowResolutionTierMedium number
---@field AdditionalLightsDefaultShadowResolutionTierHigh number
---@field packagePath string
---@field editorResourcesGUID string
---@field scriptableRenderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@field supportsCameraDepthTexture boolean
---@field supportsCameraOpaqueTexture boolean
---@field opaqueDownsampling UnityEngine.Rendering.Universal.Downsampling
---@field supportsTerrainHoles boolean
---@field storeActionsOptimization UnityEngine.Rendering.Universal.StoreActionsOptimization
---@field supportsHDR boolean
---@field hdrColorBufferPrecision UnityEngine.Rendering.Universal.HDRColorBufferPrecision
---@field msaaSampleCount number
---@field renderScale number
---@field enableLODCrossFade boolean
---@field lodCrossFadeDitheringType UnityEngine.Rendering.Universal.LODCrossFadeDitheringType
---@field upscalingFilter UnityEngine.Rendering.Universal.UpscalingFilterSelection
---@field fsrOverrideSharpness boolean
---@field fsrSharpness number
---@field shEvalMode UnityEngine.Rendering.Universal.ShEvalMode
---@field mainLightRenderingMode UnityEngine.Rendering.Universal.LightRenderingMode
---@field supportsMainLightShadows boolean
---@field mainLightShadowmapResolution number
---@field additionalLightsRenderingMode UnityEngine.Rendering.Universal.LightRenderingMode
---@field maxAdditionalLightsCount number
---@field supportsAdditionalLightShadows boolean
---@field additionalLightsShadowmapResolution number
---@field additionalLightsShadowResolutionTierLow number
---@field additionalLightsShadowResolutionTierMedium number
---@field additionalLightsShadowResolutionTierHigh number
---@field reflectionProbeBlending boolean
---@field reflectionProbeBoxProjection boolean
---@field shadowDistance number
---@field shadowCascadeCount number
---@field cascade2Split number
---@field cascade3Split UnityEngine.Vector2
---@field cascade4Split UnityEngine.Vector3
---@field cascadeBorder number
---@field shadowDepthBias number
---@field shadowNormalBias number
---@field supportsSoftShadows boolean
---@field supportsDynamicBatching boolean
---@field supportsMixedLighting boolean
---@field supportsLightCookies boolean
---@field useRenderingLayers boolean
---@field volumeFrameworkUpdateMode UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
---@field useSRPBatcher boolean
---@field colorGradingMode UnityEngine.Rendering.Universal.ColorGradingMode
---@field colorGradingLutSize number
---@field useFastSRGBLinearConversion boolean
---@field supportDataDrivenLensFlare boolean
---@field useAdaptivePerformance boolean
---@field conservativeEnclosingSphere boolean
---@field numIterationsEnclosingSphere number
---@field defaultMaterial UnityEngine.Material
---@field defaultParticleMaterial UnityEngine.Material
---@field defaultLineMaterial UnityEngine.Material
---@field defaultTerrainMaterial UnityEngine.Material
---@field defaultUIMaterial UnityEngine.Material
---@field defaultUIOverdrawMaterial UnityEngine.Material
---@field defaultUIETC1SupportedMaterial UnityEngine.Material
---@field default2DMaterial UnityEngine.Material
---@field default2DMaskMaterial UnityEngine.Material
---@field decalMaterial UnityEngine.Material
---@field defaultShader UnityEngine.Shader
---@field autodeskInteractiveShader UnityEngine.Shader
---@field autodeskInteractiveTransparentShader UnityEngine.Shader
---@field autodeskInteractiveMaskedShader UnityEngine.Shader
---@field terrainDetailLitShader UnityEngine.Shader
---@field terrainDetailGrassShader UnityEngine.Shader
---@field terrainDetailGrassBillboardShader UnityEngine.Shader
---@field defaultSpeedTree7Shader UnityEngine.Shader
---@field defaultSpeedTree8Shader UnityEngine.Shader
---@field renderPipelineShaderTag string
---@field renderingLayerMaskNames System.String[]
---@field prefixedRenderingLayerMaskNames System.String[]
---@field textures UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources
UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset = UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.New() end
---@param rendererData UnityEngine.Rendering.Universal.ScriptableRendererData
---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.Create(rendererData) end
---@param type UnityEngine.Rendering.Universal.RendererType
---@return UnityEngine.Rendering.Universal.ScriptableRendererData
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset:LoadBuiltinRendererData(type) end
---@param index number
---@return UnityEngine.Rendering.Universal.ScriptableRenderer
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset:GetRenderer(index) end
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset:OnBeforeSerialize() end
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset:OnAfterDeserialize() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources : UnityEngine.ScriptableObject
---@field shaders UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources
---@field materials UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources
UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources = UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources
function UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.New() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor : UnityEditor.Editor
UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor = UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor
function UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor.New() end
function UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResourcesEditor:OnInspectorGUI() end

---@class UnityEngine.Rendering.Universal.XRSystemData : UnityEngine.ScriptableObject
---@field shaders UnityEngine.Rendering.Universal.XRSystemData.ShaderResources
UnityEngine.Rendering.Universal.XRSystemData = {}
---@alias CS.UnityEngine.Rendering.Universal.XRSystemData UnityEngine.Rendering.Universal.XRSystemData
CS.UnityEngine.Rendering.Universal.XRSystemData = UnityEngine.Rendering.Universal.XRSystemData

---@return UnityEngine.Rendering.Universal.XRSystemData
function UnityEngine.Rendering.Universal.XRSystemData.New() end

---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon : System.Object
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon = UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon

---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon
function UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.New() end
---@param ref__ UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon:TryGetScreenClearColor(ref__) end
---@return UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable
function UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon:CreatePanel() end

---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting : System.Object
---@field lightingDebugMode UnityEngine.Rendering.Universal.DebugLightingMode
---@field lightingFeatureFlags UnityEngine.Rendering.Universal.DebugLightingFeatureFlags
---@field hdrDebugMode UnityEngine.Rendering.Universal.HDRDebugMode
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting = UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting

---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting
function UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.New() end
---@param ref_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting:TryGetScreenClearColor(ref_color) end

---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial : System.Object
---@field albedoValidationPreset UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field albedoMinLuminance number
---@field albedoMaxLuminance number
---@field albedoHueTolerance number
---@field albedoSaturationTolerance number
---@field albedoCompareColor UnityEngine.Color
---@field metallicMinValue number
---@field metallicMaxValue number
---@field materialValidationMode UnityEngine.Rendering.Universal.DebugMaterialValidationMode
---@field materialDebugMode UnityEngine.Rendering.Universal.DebugMaterialMode
---@field vertexAttributeDebugMode UnityEngine.Rendering.Universal.DebugVertexAttributeMode
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial = UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial

---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial
function UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.New() end
---@param ref_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial:TryGetScreenClearColor(ref_color) end

---@class UnityEngine.Rendering.Universal.DebugWireframeMode
---@field None UnityEngine.Rendering.Universal.DebugWireframeMode
---@field Wireframe UnityEngine.Rendering.Universal.DebugWireframeMode
---@field SolidWireframe UnityEngine.Rendering.Universal.DebugWireframeMode
---@field ShadedWireframe UnityEngine.Rendering.Universal.DebugWireframeMode
UnityEngine.Rendering.Universal.DebugWireframeMode = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugWireframeMode UnityEngine.Rendering.Universal.DebugWireframeMode
CS.UnityEngine.Rendering.Universal.DebugWireframeMode = UnityEngine.Rendering.Universal.DebugWireframeMode


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering : System.Object
---@field wireframeMode UnityEngine.Rendering.Universal.DebugWireframeMode
---@field overdrawMode UnityEngine.Rendering.Universal.DebugOverdrawMode
---@field maxOverdrawCount number
---@field fullScreenDebugMode UnityEngine.Rendering.Universal.DebugFullScreenMode
---@field fullScreenDebugModeOutputSizeScreenPercent number
---@field postProcessingDebugMode UnityEngine.Rendering.Universal.DebugPostProcessingMode
---@field enableMsaa boolean
---@field enableHDR boolean
---@field taaDebugMode UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode
---@field validationMode UnityEngine.Rendering.Universal.DebugValidationMode
---@field validationChannels UnityEngine.Rendering.Universal.PixelValidationChannels
---@field validationRangeMin number
---@field validationRangeMax number
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering = UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering

---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering
function UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.New() end
---@param ref_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering:TryGetScreenClearColor(ref_color) end

---@class UnityEngine.Rendering.Universal.DebugDisplayStats : System.Object
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.Universal.DebugDisplayStats = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplayStats UnityEngine.Rendering.Universal.DebugDisplayStats
CS.UnityEngine.Rendering.Universal.DebugDisplayStats = UnityEngine.Rendering.Universal.DebugDisplayStats

---@return UnityEngine.Rendering.Universal.DebugDisplayStats
function UnityEngine.Rendering.Universal.DebugDisplayStats.New() end
function UnityEngine.Rendering.Universal.DebugDisplayStats:UpdateFrameTiming() end
---@param ref__ UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.Universal.DebugDisplayStats:TryGetScreenClearColor(ref__) end
---@return UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable
function UnityEngine.Rendering.Universal.DebugDisplayStats:CreatePanel() end

---@class UnityEngine.Rendering.Universal.DebugHandler : System.Object
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.Universal.DebugHandler = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugHandler UnityEngine.Rendering.Universal.DebugHandler
CS.UnityEngine.Rendering.Universal.DebugHandler = UnityEngine.Rendering.Universal.DebugHandler

---@param ref_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.Universal.DebugHandler:TryGetScreenClearColor(ref_color) end
function UnityEngine.Rendering.Universal.DebugHandler:Dispose() end

---@class UnityEngine.Rendering.Universal.DebugRenderSetup : System.Object
UnityEngine.Rendering.Universal.DebugRenderSetup = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugRenderSetup UnityEngine.Rendering.Universal.DebugRenderSetup
CS.UnityEngine.Rendering.Universal.DebugRenderSetup = UnityEngine.Rendering.Universal.DebugRenderSetup

function UnityEngine.Rendering.Universal.DebugRenderSetup:Dispose() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings : UnityEngine.Rendering.DebugDisplaySettings
---@field materialSettings UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial
---@field renderingSettings UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering
---@field lightingSettings UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting
---@field volumeSettings UnityEngine.Rendering.DebugDisplaySettingsVolume
---@field IsPostProcessingAllowed boolean
---@field Instance UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings -- infered from UnityEngine.Rendering.DebugDisplaySettings`1[UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings]
UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings = UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings
function UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings.New() end
function UnityEngine.Rendering.Universal.UniversalRenderPipelineDebugDisplaySettings:Reset() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings : UnityEngine.Rendering.VolumeDebugSettings
---@field targetRenderPipeline System.Type
---@field selectedCameraVolumeStack UnityEngine.Rendering.VolumeStack
---@field selectedCameraLayerMask UnityEngine.LayerMask
---@field selectedCameraPosition UnityEngine.Vector3
UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings = UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings
function UnityEngine.Rendering.Universal.UniversalRenderPipelineVolumeDebugSettings.New() end

---@class UnityEngine.Rendering.Universal.DecalDrawDBufferSystem : UnityEngine.Rendering.Universal.DecalDrawSystem
UnityEngine.Rendering.Universal.DecalDrawDBufferSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalDrawDBufferSystem UnityEngine.Rendering.Universal.DecalDrawDBufferSystem
CS.UnityEngine.Rendering.Universal.DecalDrawDBufferSystem = UnityEngine.Rendering.Universal.DecalDrawDBufferSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalDrawDBufferSystem
function UnityEngine.Rendering.Universal.DecalDrawDBufferSystem.New(entityManager) end

---@class UnityEngine.Rendering.Universal.DBufferRenderPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.DBufferRenderPass = {}
---@alias CS.UnityEngine.Rendering.Universal.DBufferRenderPass UnityEngine.Rendering.Universal.DBufferRenderPass
CS.UnityEngine.Rendering.Universal.DBufferRenderPass = UnityEngine.Rendering.Universal.DBufferRenderPass

---@param dBufferClear UnityEngine.Material
---@param settings UnityEngine.Rendering.Universal.DBufferSettings
---@param drawSystem UnityEngine.Rendering.Universal.DecalDrawDBufferSystem
---@param decalLayers boolean
---@return UnityEngine.Rendering.Universal.DBufferRenderPass
function UnityEngine.Rendering.Universal.DBufferRenderPass.New(dBufferClear, settings, drawSystem, decalLayers) end
function UnityEngine.Rendering.Universal.DBufferRenderPass:Dispose() end
---@overload fun(self: UnityEngine.Rendering.Universal.DBufferRenderPass, ref_cameraData: UnityEngine.Rendering.Universal.CameraData) : UnityEngine.Rendering.Universal.CameraData
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@param depthTextureHandle UnityEngine.Rendering.RTHandle
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.DBufferRenderPass:Setup(ref_cameraData, depthTextureHandle) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DBufferRenderPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DBufferRenderPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.DBufferRenderPass:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem : UnityEngine.Rendering.Universal.DecalDrawSystem
UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem
CS.UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem = UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem
function UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem.New(entityManager) end

---@class UnityEngine.Rendering.Universal.DecalForwardEmissivePass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.DecalForwardEmissivePass = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalForwardEmissivePass UnityEngine.Rendering.Universal.DecalForwardEmissivePass
CS.UnityEngine.Rendering.Universal.DecalForwardEmissivePass = UnityEngine.Rendering.Universal.DecalForwardEmissivePass

---@param drawSystem UnityEngine.Rendering.Universal.DecalDrawFowardEmissiveSystem
---@return UnityEngine.Rendering.Universal.DecalForwardEmissivePass
function UnityEngine.Rendering.Universal.DecalForwardEmissivePass.New(drawSystem) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DecalForwardEmissivePass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.DecalDrawErrorSystem : UnityEngine.Rendering.Universal.DecalDrawSystem
UnityEngine.Rendering.Universal.DecalDrawErrorSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalDrawErrorSystem UnityEngine.Rendering.Universal.DecalDrawErrorSystem
CS.UnityEngine.Rendering.Universal.DecalDrawErrorSystem = UnityEngine.Rendering.Universal.DecalDrawErrorSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@param technique UnityEngine.Rendering.Universal.DecalTechnique
---@return UnityEngine.Rendering.Universal.DecalDrawErrorSystem
function UnityEngine.Rendering.Universal.DecalDrawErrorSystem.New(entityManager, technique) end

---@class UnityEngine.Rendering.Universal.DecalPreviewPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.DecalPreviewPass = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalPreviewPass UnityEngine.Rendering.Universal.DecalPreviewPass
CS.UnityEngine.Rendering.Universal.DecalPreviewPass = UnityEngine.Rendering.Universal.DecalPreviewPass

---@return UnityEngine.Rendering.Universal.DecalPreviewPass
function UnityEngine.Rendering.Universal.DecalPreviewPass.New() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DecalPreviewPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.DecalScaleMode
---@field ScaleInvariant UnityEngine.Rendering.Universal.DecalScaleMode
---@field InheritFromHierarchy UnityEngine.Rendering.Universal.DecalScaleMode
UnityEngine.Rendering.Universal.DecalScaleMode = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalScaleMode UnityEngine.Rendering.Universal.DecalScaleMode
CS.UnityEngine.Rendering.Universal.DecalScaleMode = UnityEngine.Rendering.Universal.DecalScaleMode


---@class UnityEngine.Rendering.Universal.DecalProjector : UnityEngine.MonoBehaviour
---@field material UnityEngine.Material
---@field drawDistance number
---@field fadeScale number
---@field startAngleFade number
---@field endAngleFade number
---@field uvScale UnityEngine.Vector2
---@field uvBias UnityEngine.Vector2
---@field renderingLayerMask number
---@field scaleMode UnityEngine.Rendering.Universal.DecalScaleMode
---@field pivot UnityEngine.Vector3
---@field size UnityEngine.Vector3
---@field fadeFactor number
UnityEngine.Rendering.Universal.DecalProjector = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalProjector UnityEngine.Rendering.Universal.DecalProjector
CS.UnityEngine.Rendering.Universal.DecalProjector = UnityEngine.Rendering.Universal.DecalProjector

---@return boolean
function UnityEngine.Rendering.Universal.DecalProjector:IsValid() end

---@class UnityEngine.Rendering.Universal.DecalShaderPassNames : System.Object
---@field DecalPreview string
---@field DBufferProjector string
---@field DecalProjectorForwardEmissive string
---@field DecalScreenSpaceProjector string
---@field DecalGBufferProjector string
---@field DBufferMesh string
---@field DecalMeshForwardEmissive string
---@field DecalScreenSpaceMesh string
---@field DecalGBufferMesh string
UnityEngine.Rendering.Universal.DecalShaderPassNames = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalShaderPassNames UnityEngine.Rendering.Universal.DecalShaderPassNames
CS.UnityEngine.Rendering.Universal.DecalShaderPassNames = UnityEngine.Rendering.Universal.DecalShaderPassNames


---@class UnityEngine.Rendering.Universal.DecalChunk : System.Object
---@field count number
---@field capacity number
---@field currentJobHandle Unity.Jobs.JobHandle
UnityEngine.Rendering.Universal.DecalChunk = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalChunk UnityEngine.Rendering.Universal.DecalChunk
CS.UnityEngine.Rendering.Universal.DecalChunk = UnityEngine.Rendering.Universal.DecalChunk

function UnityEngine.Rendering.Universal.DecalChunk:Push() end
---@param index number
function UnityEngine.Rendering.Universal.DecalChunk:RemoveAtSwapBack(index) end
---@param capacity number
function UnityEngine.Rendering.Universal.DecalChunk:SetCapacity(capacity) end
function UnityEngine.Rendering.Universal.DecalChunk:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalSubDrawCall : System.ValueType
---@field start number
---@field end number
---@field count number
UnityEngine.Rendering.Universal.DecalSubDrawCall = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalSubDrawCall UnityEngine.Rendering.Universal.DecalSubDrawCall
CS.UnityEngine.Rendering.Universal.DecalSubDrawCall = UnityEngine.Rendering.Universal.DecalSubDrawCall


---@class UnityEngine.Rendering.Universal.DecalDrawCallChunk : UnityEngine.Rendering.Universal.DecalChunk
---@field decalToWorlds Unity.Collections.NativeArray
---@field normalToDecals Unity.Collections.NativeArray
---@field renderingLayerMasks Unity.Collections.NativeArray
---@field subCalls Unity.Collections.NativeArray
---@field subCallCounts Unity.Collections.NativeArray
---@field subCallCount number
UnityEngine.Rendering.Universal.DecalDrawCallChunk = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalDrawCallChunk UnityEngine.Rendering.Universal.DecalDrawCallChunk
CS.UnityEngine.Rendering.Universal.DecalDrawCallChunk = UnityEngine.Rendering.Universal.DecalDrawCallChunk

---@return UnityEngine.Rendering.Universal.DecalDrawCallChunk
function UnityEngine.Rendering.Universal.DecalDrawCallChunk.New() end
---@param entityIndex number
function UnityEngine.Rendering.Universal.DecalDrawCallChunk:RemoveAtSwapBack(entityIndex) end
---@param newCapacity number
function UnityEngine.Rendering.Universal.DecalDrawCallChunk:SetCapacity(newCapacity) end
function UnityEngine.Rendering.Universal.DecalDrawCallChunk:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem : System.Object
---@field maxDrawDistance number
UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem
CS.UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem = UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@param maxDrawDistance number
---@return UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem
function UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.New(entityManager, maxDrawDistance) end
function UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem:Execute() end

---@class UnityEngine.Rendering.Universal.DecalDrawSystem : System.Object
---@field overrideMaterial UnityEngine.Material
UnityEngine.Rendering.Universal.DecalDrawSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalDrawSystem UnityEngine.Rendering.Universal.DecalDrawSystem
CS.UnityEngine.Rendering.Universal.DecalDrawSystem = UnityEngine.Rendering.Universal.DecalDrawSystem

---@param sampler string
---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalDrawSystem
function UnityEngine.Rendering.Universal.DecalDrawSystem.New(sampler, entityManager) end
---@overload fun(self: UnityEngine.Rendering.Universal.DecalDrawSystem, cmd: UnityEngine.Rendering.CommandBuffer)
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.DecalDrawSystem:Execute(ref_cameraData) end

---@class UnityEngine.Rendering.Universal.DecalEntityIndexer : System.Object
UnityEngine.Rendering.Universal.DecalEntityIndexer = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalEntityIndexer UnityEngine.Rendering.Universal.DecalEntityIndexer
CS.UnityEngine.Rendering.Universal.DecalEntityIndexer = UnityEngine.Rendering.Universal.DecalEntityIndexer

---@return UnityEngine.Rendering.Universal.DecalEntityIndexer
function UnityEngine.Rendering.Universal.DecalEntityIndexer.New() end
---@param decalEntity UnityEngine.Rendering.Universal.DecalEntity
---@return boolean
function UnityEngine.Rendering.Universal.DecalEntityIndexer:IsValid(decalEntity) end
---@param arrayIndex number
---@param chunkIndex number
---@return UnityEngine.Rendering.Universal.DecalEntity
function UnityEngine.Rendering.Universal.DecalEntityIndexer:CreateDecalEntity(arrayIndex, chunkIndex) end
---@param decalEntity UnityEngine.Rendering.Universal.DecalEntity
function UnityEngine.Rendering.Universal.DecalEntityIndexer:DestroyDecalEntity(decalEntity) end
---@param decalEntity UnityEngine.Rendering.Universal.DecalEntity
---@return UnityEngine.Rendering.Universal.DecalEntityIndexer.DecalEntityItem
function UnityEngine.Rendering.Universal.DecalEntityIndexer:GetItem(decalEntity) end
---@param decalEntity UnityEngine.Rendering.Universal.DecalEntity
---@param newArrayIndex number
function UnityEngine.Rendering.Universal.DecalEntityIndexer:UpdateIndex(decalEntity, newArrayIndex) end
---@param remaper System.Collections.Generic.List
function UnityEngine.Rendering.Universal.DecalEntityIndexer:RemapChunkIndices(remaper) end
function UnityEngine.Rendering.Universal.DecalEntityIndexer:Clear() end

---@class UnityEngine.Rendering.Universal.DecalEntity : System.ValueType
---@field index number
---@field version number
UnityEngine.Rendering.Universal.DecalEntity = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalEntity UnityEngine.Rendering.Universal.DecalEntity
CS.UnityEngine.Rendering.Universal.DecalEntity = UnityEngine.Rendering.Universal.DecalEntity


---@class UnityEngine.Rendering.Universal.DecalEntityChunk : UnityEngine.Rendering.Universal.DecalChunk
---@field material UnityEngine.Material
---@field decalEntities Unity.Collections.NativeArray
---@field decalProjectors UnityEngine.Rendering.Universal.DecalProjector[]
---@field transformAccessArray UnityEngine.Jobs.TransformAccessArray
UnityEngine.Rendering.Universal.DecalEntityChunk = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalEntityChunk UnityEngine.Rendering.Universal.DecalEntityChunk
CS.UnityEngine.Rendering.Universal.DecalEntityChunk = UnityEngine.Rendering.Universal.DecalEntityChunk

---@return UnityEngine.Rendering.Universal.DecalEntityChunk
function UnityEngine.Rendering.Universal.DecalEntityChunk.New() end
function UnityEngine.Rendering.Universal.DecalEntityChunk:Push() end
---@param entityIndex number
function UnityEngine.Rendering.Universal.DecalEntityChunk:RemoveAtSwapBack(entityIndex) end
---@param newCapacity number
function UnityEngine.Rendering.Universal.DecalEntityChunk:SetCapacity(newCapacity) end
function UnityEngine.Rendering.Universal.DecalEntityChunk:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalEntityManager : System.Object
---@field entityChunks System.Collections.Generic.List
---@field cachedChunks System.Collections.Generic.List
---@field culledChunks System.Collections.Generic.List
---@field drawCallChunks System.Collections.Generic.List
---@field chunkCount number
---@field errorMaterial UnityEngine.Material
---@field decalProjectorMesh UnityEngine.Mesh
UnityEngine.Rendering.Universal.DecalEntityManager = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalEntityManager UnityEngine.Rendering.Universal.DecalEntityManager
CS.UnityEngine.Rendering.Universal.DecalEntityManager = UnityEngine.Rendering.Universal.DecalEntityManager

---@return UnityEngine.Rendering.Universal.DecalEntityManager
function UnityEngine.Rendering.Universal.DecalEntityManager.New() end
---@param decalEntity UnityEngine.Rendering.Universal.DecalEntity
---@return boolean
function UnityEngine.Rendering.Universal.DecalEntityManager:IsValid(decalEntity) end
---@param decalProjector UnityEngine.Rendering.Universal.DecalProjector
---@return UnityEngine.Rendering.Universal.DecalEntity
function UnityEngine.Rendering.Universal.DecalEntityManager:CreateDecalEntity(decalProjector) end
function UnityEngine.Rendering.Universal.DecalEntityManager:UpdateAllDecalEntitiesData() end
---@param decalEntity UnityEngine.Rendering.Universal.DecalEntity
---@param decalProjector UnityEngine.Rendering.Universal.DecalProjector
function UnityEngine.Rendering.Universal.DecalEntityManager:UpdateDecalEntityData(decalEntity, decalProjector) end
---@param decalEntity UnityEngine.Rendering.Universal.DecalEntity
function UnityEngine.Rendering.Universal.DecalEntityManager:DestroyDecalEntity(decalEntity) end
function UnityEngine.Rendering.Universal.DecalEntityManager:Update() end
function UnityEngine.Rendering.Universal.DecalEntityManager:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalSkipCulledSystem : System.Object
UnityEngine.Rendering.Universal.DecalSkipCulledSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalSkipCulledSystem UnityEngine.Rendering.Universal.DecalSkipCulledSystem
CS.UnityEngine.Rendering.Universal.DecalSkipCulledSystem = UnityEngine.Rendering.Universal.DecalSkipCulledSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalSkipCulledSystem
function UnityEngine.Rendering.Universal.DecalSkipCulledSystem.New(entityManager) end
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.Universal.DecalSkipCulledSystem:Execute(camera) end

---@class UnityEngine.Rendering.Universal.DecalCachedChunk : UnityEngine.Rendering.Universal.DecalChunk
---@field propertyBlock UnityEngine.MaterialPropertyBlock
---@field passIndexDBuffer number
---@field passIndexEmissive number
---@field passIndexScreenSpace number
---@field passIndexGBuffer number
---@field drawOrder number
---@field isCreated boolean
---@field decalToWorlds Unity.Collections.NativeArray
---@field normalToWorlds Unity.Collections.NativeArray
---@field sizeOffsets Unity.Collections.NativeArray
---@field drawDistances Unity.Collections.NativeArray
---@field angleFades Unity.Collections.NativeArray
---@field uvScaleBias Unity.Collections.NativeArray
---@field layerMasks Unity.Collections.NativeArray
---@field sceneLayerMasks Unity.Collections.NativeArray
---@field fadeFactors Unity.Collections.NativeArray
---@field boundingSpheres Unity.Collections.NativeArray
---@field scaleModes Unity.Collections.NativeArray
---@field renderingLayerMasks Unity.Collections.NativeArray
---@field positions Unity.Collections.NativeArray
---@field rotation Unity.Collections.NativeArray
---@field scales Unity.Collections.NativeArray
---@field dirty Unity.Collections.NativeArray
---@field boundingSphereArray UnityEngine.BoundingSphere[]
UnityEngine.Rendering.Universal.DecalCachedChunk = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalCachedChunk UnityEngine.Rendering.Universal.DecalCachedChunk
CS.UnityEngine.Rendering.Universal.DecalCachedChunk = UnityEngine.Rendering.Universal.DecalCachedChunk

---@return UnityEngine.Rendering.Universal.DecalCachedChunk
function UnityEngine.Rendering.Universal.DecalCachedChunk.New() end
---@param entityIndex number
function UnityEngine.Rendering.Universal.DecalCachedChunk:RemoveAtSwapBack(entityIndex) end
---@param newCapacity number
function UnityEngine.Rendering.Universal.DecalCachedChunk:SetCapacity(newCapacity) end
function UnityEngine.Rendering.Universal.DecalCachedChunk:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalUpdateCachedSystem : System.Object
UnityEngine.Rendering.Universal.DecalUpdateCachedSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalUpdateCachedSystem UnityEngine.Rendering.Universal.DecalUpdateCachedSystem
CS.UnityEngine.Rendering.Universal.DecalUpdateCachedSystem = UnityEngine.Rendering.Universal.DecalUpdateCachedSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalUpdateCachedSystem
function UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.New(entityManager) end
function UnityEngine.Rendering.Universal.DecalUpdateCachedSystem:Execute() end

---@class UnityEngine.Rendering.Universal.DecalUpdateCulledSystem : System.Object
UnityEngine.Rendering.Universal.DecalUpdateCulledSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalUpdateCulledSystem UnityEngine.Rendering.Universal.DecalUpdateCulledSystem
CS.UnityEngine.Rendering.Universal.DecalUpdateCulledSystem = UnityEngine.Rendering.Universal.DecalUpdateCulledSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalUpdateCulledSystem
function UnityEngine.Rendering.Universal.DecalUpdateCulledSystem.New(entityManager) end
function UnityEngine.Rendering.Universal.DecalUpdateCulledSystem:Execute() end

---@class UnityEngine.Rendering.Universal.DecalCulledChunk : UnityEngine.Rendering.Universal.DecalChunk
---@field cameraPosition UnityEngine.Vector3
---@field sceneCullingMask number
---@field cullingMask number
---@field cullingGroups UnityEngine.CullingGroup
---@field visibleDecalIndexArray System.Int32[]
---@field visibleDecalIndices Unity.Collections.NativeArray
---@field visibleDecalCount number
UnityEngine.Rendering.Universal.DecalCulledChunk = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalCulledChunk UnityEngine.Rendering.Universal.DecalCulledChunk
CS.UnityEngine.Rendering.Universal.DecalCulledChunk = UnityEngine.Rendering.Universal.DecalCulledChunk

---@return UnityEngine.Rendering.Universal.DecalCulledChunk
function UnityEngine.Rendering.Universal.DecalCulledChunk.New() end
---@param entityIndex number
function UnityEngine.Rendering.Universal.DecalCulledChunk:RemoveAtSwapBack(entityIndex) end
---@param newCapacity number
function UnityEngine.Rendering.Universal.DecalCulledChunk:SetCapacity(newCapacity) end
function UnityEngine.Rendering.Universal.DecalCulledChunk:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem : System.Object
---@field boundingDistance number
UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem
CS.UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem = UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@param drawDistance number
---@return UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem
function UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem.New(entityManager, drawDistance) end
---@overload fun(self: UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem, camera: UnityEngine.Camera)
---@param cachedChunk UnityEngine.Rendering.Universal.DecalCachedChunk
---@param culledChunk UnityEngine.Rendering.Universal.DecalCulledChunk
---@param count number
function UnityEngine.Rendering.Universal.DecalUpdateCullingGroupSystem:Execute(cachedChunk, culledChunk, count) end

---@class UnityEngine.Rendering.Universal.DecalDrawGBufferSystem : UnityEngine.Rendering.Universal.DecalDrawSystem
UnityEngine.Rendering.Universal.DecalDrawGBufferSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalDrawGBufferSystem UnityEngine.Rendering.Universal.DecalDrawGBufferSystem
CS.UnityEngine.Rendering.Universal.DecalDrawGBufferSystem = UnityEngine.Rendering.Universal.DecalDrawGBufferSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalDrawGBufferSystem
function UnityEngine.Rendering.Universal.DecalDrawGBufferSystem.New(entityManager) end

---@class UnityEngine.Rendering.Universal.DecalGBufferRenderPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.DecalGBufferRenderPass = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalGBufferRenderPass UnityEngine.Rendering.Universal.DecalGBufferRenderPass
CS.UnityEngine.Rendering.Universal.DecalGBufferRenderPass = UnityEngine.Rendering.Universal.DecalGBufferRenderPass

---@param settings UnityEngine.Rendering.Universal.DecalScreenSpaceSettings
---@param drawSystem UnityEngine.Rendering.Universal.DecalDrawGBufferSystem
---@param decalLayers boolean
---@return UnityEngine.Rendering.Universal.DecalGBufferRenderPass
function UnityEngine.Rendering.Universal.DecalGBufferRenderPass.New(settings, drawSystem, decalLayers) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.DecalGBufferRenderPass:Configure(cmd, cameraTextureDescriptor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DecalGBufferRenderPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.DecalGBufferRenderPass:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem : UnityEngine.Rendering.Universal.DecalDrawSystem
UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem
CS.UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem = UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem

---@param entityManager UnityEngine.Rendering.Universal.DecalEntityManager
---@return UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem
function UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem.New(entityManager) end

---@class UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass
CS.UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass = UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass

---@param settings UnityEngine.Rendering.Universal.DecalScreenSpaceSettings
---@param drawSystem UnityEngine.Rendering.Universal.DecalDrawScreenSpaceSystem
---@param decalLayers boolean
---@return UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass
function UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass.New(settings, drawSystem, decalLayers) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.DecalScreenSpaceRenderPass:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.ScriptableRenderPass : System.Object
---@field k_CameraTarget UnityEngine.Rendering.RTHandle
---@field renderPassEvent UnityEngine.Rendering.Universal.RenderPassEvent
---@field colorAttachmentHandles UnityEngine.Rendering.RTHandle[]
---@field colorAttachmentHandle UnityEngine.Rendering.RTHandle
---@field depthAttachmentHandle UnityEngine.Rendering.RTHandle
---@field colorStoreActions UnityEngine.Rendering.RenderBufferStoreAction[]
---@field depthStoreAction UnityEngine.Rendering.RenderBufferStoreAction
---@field input UnityEngine.Rendering.Universal.ScriptableRenderPassInput
---@field clearFlag UnityEngine.Rendering.ClearFlag
---@field clearColor UnityEngine.Color
UnityEngine.Rendering.Universal.ScriptableRenderPass = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderPass UnityEngine.Rendering.Universal.ScriptableRenderPass
CS.UnityEngine.Rendering.Universal.ScriptableRenderPass = UnityEngine.Rendering.Universal.ScriptableRenderPass

---@return UnityEngine.Rendering.Universal.ScriptableRenderPass
function UnityEngine.Rendering.Universal.ScriptableRenderPass.New() end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.ScriptableRenderPass:FrameCleanup(cmd) end
---@param passInput UnityEngine.Rendering.Universal.ScriptableRenderPassInput
function UnityEngine.Rendering.Universal.ScriptableRenderPass:ConfigureInput(passInput) end
---@param storeAction UnityEngine.Rendering.RenderBufferStoreAction
---@param attachmentIndex number
function UnityEngine.Rendering.Universal.ScriptableRenderPass:ConfigureColorStoreAction(storeAction, attachmentIndex) end
---@param storeActions UnityEngine.Rendering.RenderBufferStoreAction[]
function UnityEngine.Rendering.Universal.ScriptableRenderPass:ConfigureColorStoreActions(storeActions) end
---@param storeAction UnityEngine.Rendering.RenderBufferStoreAction
function UnityEngine.Rendering.Universal.ScriptableRenderPass:ConfigureDepthStoreAction(storeAction) end
function UnityEngine.Rendering.Universal.ScriptableRenderPass:ResetTarget() end
---@overload fun(self: UnityEngine.Rendering.Universal.ScriptableRenderPass, colorAttachment: UnityEngine.Rendering.RTHandle, depthAttachment: UnityEngine.Rendering.RTHandle)
---@overload fun(self: UnityEngine.Rendering.Universal.ScriptableRenderPass, colorAttachments: UnityEngine.Rendering.RTHandle[], depthAttachment: UnityEngine.Rendering.RTHandle)
---@overload fun(self: UnityEngine.Rendering.Universal.ScriptableRenderPass, colorAttachment: UnityEngine.Rendering.RTHandle)
---@param colorAttachments UnityEngine.Rendering.RTHandle[]
function UnityEngine.Rendering.Universal.ScriptableRenderPass:ConfigureTarget(colorAttachments) end
---@param clearFlag UnityEngine.Rendering.ClearFlag
---@param clearColor UnityEngine.Color
function UnityEngine.Rendering.Universal.ScriptableRenderPass:ConfigureClear(clearFlag, clearColor) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRenderPass:OnCameraSetup(cmd, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.ScriptableRenderPass:Configure(cmd, cameraTextureDescriptor) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.ScriptableRenderPass:OnCameraCleanup(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.ScriptableRenderPass:OnFinishCameraStackRendering(cmd) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRenderPass:Execute(context, ref_renderingData) end
---@overload fun(self: UnityEngine.Rendering.Universal.ScriptableRenderPass, cmd: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RTHandle, destination: UnityEngine.Rendering.RTHandle, material: UnityEngine.Material, passIndex: number)
---@overload fun(self: UnityEngine.Rendering.Universal.ScriptableRenderPass, cmd: UnityEngine.Rendering.CommandBuffer, ref_data: UnityEngine.Rendering.Universal.RenderingData, material: UnityEngine.Material, passIndex: number) : UnityEngine.Rendering.Universal.RenderingData
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_data UnityEngine.Rendering.Universal.RenderingData
---@param source UnityEngine.Rendering.RTHandle
---@param material UnityEngine.Material
---@param passIndex number
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRenderPass:Blit(cmd, ref_data, source, material, passIndex) end
---@overload fun(self: UnityEngine.Rendering.Universal.ScriptableRenderPass, shaderTagId: UnityEngine.Rendering.ShaderTagId, ref_renderingData: UnityEngine.Rendering.Universal.RenderingData, sortingCriteria: UnityEngine.Rendering.SortingCriteria) : UnityEngine.Rendering.DrawingSettings, UnityEngine.Rendering.Universal.RenderingData
---@param shaderTagIdList System.Collections.Generic.List
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@param sortingCriteria UnityEngine.Rendering.SortingCriteria
---@return UnityEngine.Rendering.DrawingSettings,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRenderPass:CreateDrawingSettings(shaderTagIdList, ref_renderingData, sortingCriteria) end

---@class UnityEngine.Rendering.Universal.ForwardRenderer : UnityEngine.Rendering.Universal.ScriptableRenderer
UnityEngine.Rendering.Universal.ForwardRenderer = {}
---@alias CS.UnityEngine.Rendering.Universal.ForwardRenderer UnityEngine.Rendering.Universal.ForwardRenderer
CS.UnityEngine.Rendering.Universal.ForwardRenderer = UnityEngine.Rendering.Universal.ForwardRenderer

---@param data UnityEngine.Rendering.Universal.ForwardRendererData
---@return UnityEngine.Rendering.Universal.ForwardRenderer
function UnityEngine.Rendering.Universal.ForwardRenderer.New(data) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ForwardRenderer:Setup(context, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ForwardRenderer:SetupLights(context, ref_renderingData) end
---@param ref_cullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.ScriptableCullingParameters,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.ForwardRenderer:SetupCullingParameters(ref_cullingParameters, ref_cameraData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.ForwardRenderer:FinishRendering(cmd) end

---@class UnityEngine.Rendering.Universal.ShadowCascadesOption
---@field NoCascades UnityEngine.Rendering.Universal.ShadowCascadesOption
---@field TwoCascades UnityEngine.Rendering.Universal.ShadowCascadesOption
---@field FourCascades UnityEngine.Rendering.Universal.ShadowCascadesOption
UnityEngine.Rendering.Universal.ShadowCascadesOption = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowCascadesOption UnityEngine.Rendering.Universal.ShadowCascadesOption
CS.UnityEngine.Rendering.Universal.ShadowCascadesOption = UnityEngine.Rendering.Universal.ShadowCascadesOption


---@class UnityEngine.Rendering.Universal.ShaderVariantLogLevel
---@field Disabled UnityEngine.Rendering.Universal.ShaderVariantLogLevel
---@field OnlyUniversalRPShaders UnityEngine.Rendering.Universal.ShaderVariantLogLevel
---@field AllShaders UnityEngine.Rendering.Universal.ShaderVariantLogLevel
UnityEngine.Rendering.Universal.ShaderVariantLogLevel = {}
---@alias CS.UnityEngine.Rendering.Universal.ShaderVariantLogLevel UnityEngine.Rendering.Universal.ShaderVariantLogLevel
CS.UnityEngine.Rendering.Universal.ShaderVariantLogLevel = UnityEngine.Rendering.Universal.ShaderVariantLogLevel


---@class UnityEngine.Rendering.Universal.ScriptableRenderer : System.Object
---@field cameraColorTargetHandle UnityEngine.Rendering.RTHandle
---@field cameraDepthTargetHandle UnityEngine.Rendering.RTHandle
---@field supportedRenderingFeatures UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures
---@field unsupportedGraphicsDeviceTypes UnityEngine.Rendering.GraphicsDeviceType[]
UnityEngine.Rendering.Universal.ScriptableRenderer = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer UnityEngine.Rendering.Universal.ScriptableRenderer
CS.UnityEngine.Rendering.Universal.ScriptableRenderer = UnityEngine.Rendering.Universal.ScriptableRenderer

---@param data UnityEngine.Rendering.Universal.ScriptableRendererData
---@return UnityEngine.Rendering.Universal.ScriptableRenderer
function UnityEngine.Rendering.Universal.ScriptableRenderer.New(data) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@param setInverseMatrices boolean
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.ScriptableRenderer.SetCameraMatrices(cmd, ref_cameraData, setInverseMatrices) end
---@return number
function UnityEngine.Rendering.Universal.ScriptableRenderer:SupportedCameraStackingTypes() end
---@param cameraRenderType UnityEngine.Rendering.Universal.CameraRenderType
---@return boolean
function UnityEngine.Rendering.Universal.ScriptableRenderer:SupportsCameraStackingType(cameraRenderType) end
function UnityEngine.Rendering.Universal.ScriptableRenderer:Dispose() end
---@param colorTarget UnityEngine.Rendering.RTHandle
---@param depthTarget UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.ScriptableRenderer:ConfigureCameraTarget(colorTarget, depthTarget) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRenderer:Setup(context, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRenderer:SetupLights(context, ref_renderingData) end
---@param ref_cullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.ScriptableCullingParameters,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.ScriptableRenderer:SetupCullingParameters(ref_cullingParameters, ref_cameraData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.ScriptableRenderer:FinishRendering(cmd) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRenderer:Execute(context, ref_renderingData) end
---@param pass UnityEngine.Rendering.Universal.ScriptableRenderPass
function UnityEngine.Rendering.Universal.ScriptableRenderer:EnqueuePass(pass) end

---@class UnityEngine.Rendering.Universal.Bloom : UnityEngine.Rendering.VolumeComponent
---@field threshold UnityEngine.Rendering.MinFloatParameter
---@field intensity UnityEngine.Rendering.MinFloatParameter
---@field scatter UnityEngine.Rendering.ClampedFloatParameter
---@field clamp UnityEngine.Rendering.MinFloatParameter
---@field tint UnityEngine.Rendering.ColorParameter
---@field highQualityFiltering UnityEngine.Rendering.BoolParameter
---@field downscale UnityEngine.Rendering.Universal.DownscaleParameter
---@field maxIterations UnityEngine.Rendering.ClampedIntParameter
---@field dirtTexture UnityEngine.Rendering.TextureParameter
---@field dirtIntensity UnityEngine.Rendering.MinFloatParameter
UnityEngine.Rendering.Universal.Bloom = {}
---@alias CS.UnityEngine.Rendering.Universal.Bloom UnityEngine.Rendering.Universal.Bloom
CS.UnityEngine.Rendering.Universal.Bloom = UnityEngine.Rendering.Universal.Bloom

---@return UnityEngine.Rendering.Universal.Bloom
function UnityEngine.Rendering.Universal.Bloom.New() end
---@return boolean
function UnityEngine.Rendering.Universal.Bloom:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.Bloom:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.URPHelpURLAttribute : UnityEngine.Rendering.CoreRPHelpURLAttribute
UnityEngine.Rendering.Universal.URPHelpURLAttribute = {}
---@alias CS.UnityEngine.Rendering.Universal.URPHelpURLAttribute UnityEngine.Rendering.Universal.URPHelpURLAttribute
CS.UnityEngine.Rendering.Universal.URPHelpURLAttribute = UnityEngine.Rendering.Universal.URPHelpURLAttribute

---@param pageName string
---@param pageHash string
---@return UnityEngine.Rendering.Universal.URPHelpURLAttribute
function UnityEngine.Rendering.Universal.URPHelpURLAttribute.New(pageName, pageHash) end

---@class UnityEngine.Rendering.Universal.Documentation : UnityEngine.Rendering.DocumentationInfo
---@field packageName string
UnityEngine.Rendering.Universal.Documentation = {}
---@alias CS.UnityEngine.Rendering.Universal.Documentation UnityEngine.Rendering.Universal.Documentation
CS.UnityEngine.Rendering.Universal.Documentation = UnityEngine.Rendering.Universal.Documentation

---@return UnityEngine.Rendering.Universal.Documentation
function UnityEngine.Rendering.Universal.Documentation.New() end

---@class UnityEngine.Rendering.Universal.ForwardRendererData : UnityEngine.Rendering.Universal.ScriptableRendererData
---@field shaders UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources
---@field postProcessData UnityEngine.Rendering.Universal.PostProcessData
---@field xrSystemData UnityEngine.Rendering.Universal.XRSystemData
---@field opaqueLayerMask UnityEngine.LayerMask
---@field transparentLayerMask UnityEngine.LayerMask
---@field defaultStencilState UnityEngine.Rendering.Universal.StencilStateData
---@field shadowTransparentReceive boolean
---@field renderingMode UnityEngine.Rendering.Universal.RenderingMode
---@field accurateGbufferNormals boolean
UnityEngine.Rendering.Universal.ForwardRendererData = {}
---@alias CS.UnityEngine.Rendering.Universal.ForwardRendererData UnityEngine.Rendering.Universal.ForwardRendererData
CS.UnityEngine.Rendering.Universal.ForwardRendererData = UnityEngine.Rendering.Universal.ForwardRendererData

---@return UnityEngine.Rendering.Universal.ForwardRendererData
function UnityEngine.Rendering.Universal.ForwardRendererData.New() end

---@class UnityEngine.Rendering.Universal.IntermediateTextureMode
---@field Auto UnityEngine.Rendering.Universal.IntermediateTextureMode
---@field Always UnityEngine.Rendering.Universal.IntermediateTextureMode
UnityEngine.Rendering.Universal.IntermediateTextureMode = {}
---@alias CS.UnityEngine.Rendering.Universal.IntermediateTextureMode UnityEngine.Rendering.Universal.IntermediateTextureMode
CS.UnityEngine.Rendering.Universal.IntermediateTextureMode = UnityEngine.Rendering.Universal.IntermediateTextureMode


---@class UnityEngine.Rendering.Universal.LightCookieManager : System.Object
UnityEngine.Rendering.Universal.LightCookieManager = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager UnityEngine.Rendering.Universal.LightCookieManager
CS.UnityEngine.Rendering.Universal.LightCookieManager = UnityEngine.Rendering.Universal.LightCookieManager

---@param ref_settings UnityEngine.Rendering.Universal.LightCookieManager.Settings
---@return UnityEngine.Rendering.Universal.LightCookieManager,UnityEngine.Rendering.Universal.LightCookieManager.Settings
function UnityEngine.Rendering.Universal.LightCookieManager.New(ref_settings) end
---@return boolean
function UnityEngine.Rendering.Universal.LightCookieManager:isInitialized() end
function UnityEngine.Rendering.Universal.LightCookieManager:Dispose() end
---@param visibleLightIndex number
---@return number
function UnityEngine.Rendering.Universal.LightCookieManager:GetLightCookieShaderDataIndex(visibleLightIndex) end
---@param ctx UnityEngine.Rendering.ScriptableRenderContext
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_lightData UnityEngine.Rendering.Universal.LightData
---@return ,UnityEngine.Rendering.Universal.LightData
function UnityEngine.Rendering.Universal.LightCookieManager:Setup(ctx, cmd, ref_lightData) end

---@class UnityEngine.Rendering.Universal.BuddyAllocation : System.ValueType
---@field level number
---@field index number
---@field index2D Unity.Mathematics.uint2
UnityEngine.Rendering.Universal.BuddyAllocation = {}
---@alias CS.UnityEngine.Rendering.Universal.BuddyAllocation UnityEngine.Rendering.Universal.BuddyAllocation
CS.UnityEngine.Rendering.Universal.BuddyAllocation = UnityEngine.Rendering.Universal.BuddyAllocation

---@param level number
---@param index number
---@return UnityEngine.Rendering.Universal.BuddyAllocation
function UnityEngine.Rendering.Universal.BuddyAllocation.New(level, index) end

---@class UnityEngine.Rendering.Universal.BuddyAllocator : System.ValueType
---@field levelCount number
UnityEngine.Rendering.Universal.BuddyAllocator = {}
---@alias CS.UnityEngine.Rendering.Universal.BuddyAllocator UnityEngine.Rendering.Universal.BuddyAllocator
CS.UnityEngine.Rendering.Universal.BuddyAllocator = UnityEngine.Rendering.Universal.BuddyAllocator

---@param levelCount number
---@param branchingOrder number
---@param allocator Unity.Collections.Allocator
---@return UnityEngine.Rendering.Universal.BuddyAllocator
function UnityEngine.Rendering.Universal.BuddyAllocator.New(levelCount, branchingOrder, allocator) end
---@param requestedLevel number
---@param out_allocation UnityEngine.Rendering.Universal.BuddyAllocation
---@return boolean,UnityEngine.Rendering.Universal.BuddyAllocation
function UnityEngine.Rendering.Universal.BuddyAllocator:TryAllocate(requestedLevel, out_allocation) end
---@param allocation UnityEngine.Rendering.Universal.BuddyAllocation
function UnityEngine.Rendering.Universal.BuddyAllocator:Free(allocation) end
function UnityEngine.Rendering.Universal.BuddyAllocator:Dispose() end

---@class UnityEngine.Rendering.Universal.Fixed2 : System.ValueType
---@field item1 T
---@field item2 T
---@field Item T
UnityEngine.Rendering.Universal.Fixed2 = {}
---@alias CS.UnityEngine.Rendering.Universal.Fixed2 UnityEngine.Rendering.Universal.Fixed2
CS.UnityEngine.Rendering.Universal.Fixed2 = UnityEngine.Rendering.Universal.Fixed2

---@overload fun(item1: T) : UnityEngine.Rendering.Universal.Fixed2
---@param item1 T
---@param item2 T
---@return UnityEngine.Rendering.Universal.Fixed2
function UnityEngine.Rendering.Universal.Fixed2.New(item1, item2) end

---@class UnityEngine.Rendering.Universal.PinnedArray : System.ValueType
---@field managedArray T[]
---@field handle System.Runtime.InteropServices.GCHandle
---@field nativeArray Unity.Collections.NativeArray[T]
---@field length number
UnityEngine.Rendering.Universal.PinnedArray = {}
---@alias CS.UnityEngine.Rendering.Universal.PinnedArray UnityEngine.Rendering.Universal.PinnedArray
CS.UnityEngine.Rendering.Universal.PinnedArray = UnityEngine.Rendering.Universal.PinnedArray

---@param length number
---@return UnityEngine.Rendering.Universal.PinnedArray
function UnityEngine.Rendering.Universal.PinnedArray.New(length) end
function UnityEngine.Rendering.Universal.PinnedArray:Dispose() end

---@class UnityEngine.Rendering.Universal.MotionVectorsPersistentData : System.Object
UnityEngine.Rendering.Universal.MotionVectorsPersistentData = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionVectorsPersistentData UnityEngine.Rendering.Universal.MotionVectorsPersistentData
CS.UnityEngine.Rendering.Universal.MotionVectorsPersistentData = UnityEngine.Rendering.Universal.MotionVectorsPersistentData

function UnityEngine.Rendering.Universal.MotionVectorsPersistentData:Reset() end
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.MotionVectorsPersistentData:Update(ref_cameraData) end

---@class UnityEngine.Rendering.Universal.BloomDownscaleMode
---@field Half UnityEngine.Rendering.Universal.BloomDownscaleMode
---@field Quarter UnityEngine.Rendering.Universal.BloomDownscaleMode
UnityEngine.Rendering.Universal.BloomDownscaleMode = {}
---@alias CS.UnityEngine.Rendering.Universal.BloomDownscaleMode UnityEngine.Rendering.Universal.BloomDownscaleMode
CS.UnityEngine.Rendering.Universal.BloomDownscaleMode = UnityEngine.Rendering.Universal.BloomDownscaleMode


---@class UnityEngine.Rendering.Universal.DownscaleParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.DownscaleParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.BloomDownscaleMode]
UnityEngine.Rendering.Universal.DownscaleParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.DownscaleParameter UnityEngine.Rendering.Universal.DownscaleParameter
CS.UnityEngine.Rendering.Universal.DownscaleParameter = UnityEngine.Rendering.Universal.DownscaleParameter

---@param value UnityEngine.Rendering.Universal.BloomDownscaleMode
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.DownscaleParameter
function UnityEngine.Rendering.Universal.DownscaleParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.ChannelMixer : UnityEngine.Rendering.VolumeComponent
---@field redOutRedIn UnityEngine.Rendering.ClampedFloatParameter
---@field redOutGreenIn UnityEngine.Rendering.ClampedFloatParameter
---@field redOutBlueIn UnityEngine.Rendering.ClampedFloatParameter
---@field greenOutRedIn UnityEngine.Rendering.ClampedFloatParameter
---@field greenOutGreenIn UnityEngine.Rendering.ClampedFloatParameter
---@field greenOutBlueIn UnityEngine.Rendering.ClampedFloatParameter
---@field blueOutRedIn UnityEngine.Rendering.ClampedFloatParameter
---@field blueOutGreenIn UnityEngine.Rendering.ClampedFloatParameter
---@field blueOutBlueIn UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.ChannelMixer = {}
---@alias CS.UnityEngine.Rendering.Universal.ChannelMixer UnityEngine.Rendering.Universal.ChannelMixer
CS.UnityEngine.Rendering.Universal.ChannelMixer = UnityEngine.Rendering.Universal.ChannelMixer

---@return UnityEngine.Rendering.Universal.ChannelMixer
function UnityEngine.Rendering.Universal.ChannelMixer.New() end
---@return boolean
function UnityEngine.Rendering.Universal.ChannelMixer:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.ChannelMixer:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.ChromaticAberration : UnityEngine.Rendering.VolumeComponent
---@field intensity UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.ChromaticAberration = {}
---@alias CS.UnityEngine.Rendering.Universal.ChromaticAberration UnityEngine.Rendering.Universal.ChromaticAberration
CS.UnityEngine.Rendering.Universal.ChromaticAberration = UnityEngine.Rendering.Universal.ChromaticAberration

---@return UnityEngine.Rendering.Universal.ChromaticAberration
function UnityEngine.Rendering.Universal.ChromaticAberration.New() end
---@return boolean
function UnityEngine.Rendering.Universal.ChromaticAberration:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.ChromaticAberration:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.ColorAdjustments : UnityEngine.Rendering.VolumeComponent
---@field postExposure UnityEngine.Rendering.FloatParameter
---@field contrast UnityEngine.Rendering.ClampedFloatParameter
---@field colorFilter UnityEngine.Rendering.ColorParameter
---@field hueShift UnityEngine.Rendering.ClampedFloatParameter
---@field saturation UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.ColorAdjustments = {}
---@alias CS.UnityEngine.Rendering.Universal.ColorAdjustments UnityEngine.Rendering.Universal.ColorAdjustments
CS.UnityEngine.Rendering.Universal.ColorAdjustments = UnityEngine.Rendering.Universal.ColorAdjustments

---@return UnityEngine.Rendering.Universal.ColorAdjustments
function UnityEngine.Rendering.Universal.ColorAdjustments.New() end
---@return boolean
function UnityEngine.Rendering.Universal.ColorAdjustments:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.ColorAdjustments:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.ColorCurves : UnityEngine.Rendering.VolumeComponent
---@field master UnityEngine.Rendering.TextureCurveParameter
---@field red UnityEngine.Rendering.TextureCurveParameter
---@field green UnityEngine.Rendering.TextureCurveParameter
---@field blue UnityEngine.Rendering.TextureCurveParameter
---@field hueVsHue UnityEngine.Rendering.TextureCurveParameter
---@field hueVsSat UnityEngine.Rendering.TextureCurveParameter
---@field satVsSat UnityEngine.Rendering.TextureCurveParameter
---@field lumVsSat UnityEngine.Rendering.TextureCurveParameter
UnityEngine.Rendering.Universal.ColorCurves = {}
---@alias CS.UnityEngine.Rendering.Universal.ColorCurves UnityEngine.Rendering.Universal.ColorCurves
CS.UnityEngine.Rendering.Universal.ColorCurves = UnityEngine.Rendering.Universal.ColorCurves

---@return UnityEngine.Rendering.Universal.ColorCurves
function UnityEngine.Rendering.Universal.ColorCurves.New() end
---@return boolean
function UnityEngine.Rendering.Universal.ColorCurves:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.ColorCurves:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.ColorLookup : UnityEngine.Rendering.VolumeComponent
---@field texture UnityEngine.Rendering.TextureParameter
---@field contribution UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.ColorLookup = {}
---@alias CS.UnityEngine.Rendering.Universal.ColorLookup UnityEngine.Rendering.Universal.ColorLookup
CS.UnityEngine.Rendering.Universal.ColorLookup = UnityEngine.Rendering.Universal.ColorLookup

---@return UnityEngine.Rendering.Universal.ColorLookup
function UnityEngine.Rendering.Universal.ColorLookup.New() end
---@return boolean
function UnityEngine.Rendering.Universal.ColorLookup:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.ColorLookup:IsTileCompatible() end
---@return boolean
function UnityEngine.Rendering.Universal.ColorLookup:ValidateLUT() end

---@class UnityEngine.Rendering.Universal.DepthOfFieldMode
---@field Off UnityEngine.Rendering.Universal.DepthOfFieldMode
---@field Gaussian UnityEngine.Rendering.Universal.DepthOfFieldMode
---@field Bokeh UnityEngine.Rendering.Universal.DepthOfFieldMode
UnityEngine.Rendering.Universal.DepthOfFieldMode = {}
---@alias CS.UnityEngine.Rendering.Universal.DepthOfFieldMode UnityEngine.Rendering.Universal.DepthOfFieldMode
CS.UnityEngine.Rendering.Universal.DepthOfFieldMode = UnityEngine.Rendering.Universal.DepthOfFieldMode


---@class UnityEngine.Rendering.Universal.DepthOfField : UnityEngine.Rendering.VolumeComponent
---@field mode UnityEngine.Rendering.Universal.DepthOfFieldModeParameter
---@field gaussianStart UnityEngine.Rendering.MinFloatParameter
---@field gaussianEnd UnityEngine.Rendering.MinFloatParameter
---@field gaussianMaxRadius UnityEngine.Rendering.ClampedFloatParameter
---@field highQualitySampling UnityEngine.Rendering.BoolParameter
---@field focusDistance UnityEngine.Rendering.MinFloatParameter
---@field aperture UnityEngine.Rendering.ClampedFloatParameter
---@field focalLength UnityEngine.Rendering.ClampedFloatParameter
---@field bladeCount UnityEngine.Rendering.ClampedIntParameter
---@field bladeCurvature UnityEngine.Rendering.ClampedFloatParameter
---@field bladeRotation UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.DepthOfField = {}
---@alias CS.UnityEngine.Rendering.Universal.DepthOfField UnityEngine.Rendering.Universal.DepthOfField
CS.UnityEngine.Rendering.Universal.DepthOfField = UnityEngine.Rendering.Universal.DepthOfField

---@return UnityEngine.Rendering.Universal.DepthOfField
function UnityEngine.Rendering.Universal.DepthOfField.New() end
---@return boolean
function UnityEngine.Rendering.Universal.DepthOfField:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.DepthOfField:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.DepthOfFieldModeParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.DepthOfFieldModeParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.DepthOfFieldMode]
UnityEngine.Rendering.Universal.DepthOfFieldModeParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.DepthOfFieldModeParameter UnityEngine.Rendering.Universal.DepthOfFieldModeParameter
CS.UnityEngine.Rendering.Universal.DepthOfFieldModeParameter = UnityEngine.Rendering.Universal.DepthOfFieldModeParameter

---@param value UnityEngine.Rendering.Universal.DepthOfFieldMode
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.DepthOfFieldModeParameter
function UnityEngine.Rendering.Universal.DepthOfFieldModeParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Thin1 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Thin2 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Medium1 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Medium2 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Medium3 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Medium4 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Medium5 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Medium6 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Large01 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Large02 UnityEngine.Rendering.Universal.FilmGrainLookup
---@field Custom UnityEngine.Rendering.Universal.FilmGrainLookup
UnityEngine.Rendering.Universal.FilmGrainLookup = {}
---@alias CS.UnityEngine.Rendering.Universal.FilmGrainLookup UnityEngine.Rendering.Universal.FilmGrainLookup
CS.UnityEngine.Rendering.Universal.FilmGrainLookup = UnityEngine.Rendering.Universal.FilmGrainLookup


---@class UnityEngine.Rendering.Universal.FilmGrain : UnityEngine.Rendering.VolumeComponent
---@field type UnityEngine.Rendering.Universal.FilmGrainLookupParameter
---@field intensity UnityEngine.Rendering.ClampedFloatParameter
---@field response UnityEngine.Rendering.ClampedFloatParameter
---@field texture UnityEngine.Rendering.NoInterpTextureParameter
UnityEngine.Rendering.Universal.FilmGrain = {}
---@alias CS.UnityEngine.Rendering.Universal.FilmGrain UnityEngine.Rendering.Universal.FilmGrain
CS.UnityEngine.Rendering.Universal.FilmGrain = UnityEngine.Rendering.Universal.FilmGrain

---@return UnityEngine.Rendering.Universal.FilmGrain
function UnityEngine.Rendering.Universal.FilmGrain.New() end
---@return boolean
function UnityEngine.Rendering.Universal.FilmGrain:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.FilmGrain:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.FilmGrainLookupParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.FilmGrainLookupParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.FilmGrainLookup]
UnityEngine.Rendering.Universal.FilmGrainLookupParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.FilmGrainLookupParameter UnityEngine.Rendering.Universal.FilmGrainLookupParameter
CS.UnityEngine.Rendering.Universal.FilmGrainLookupParameter = UnityEngine.Rendering.Universal.FilmGrainLookupParameter

---@param value UnityEngine.Rendering.Universal.FilmGrainLookup
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.FilmGrainLookupParameter
function UnityEngine.Rendering.Universal.FilmGrainLookupParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.LensDistortion : UnityEngine.Rendering.VolumeComponent
---@field intensity UnityEngine.Rendering.ClampedFloatParameter
---@field xMultiplier UnityEngine.Rendering.ClampedFloatParameter
---@field yMultiplier UnityEngine.Rendering.ClampedFloatParameter
---@field center UnityEngine.Rendering.Vector2Parameter
---@field scale UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.LensDistortion = {}
---@alias CS.UnityEngine.Rendering.Universal.LensDistortion UnityEngine.Rendering.Universal.LensDistortion
CS.UnityEngine.Rendering.Universal.LensDistortion = UnityEngine.Rendering.Universal.LensDistortion

---@return UnityEngine.Rendering.Universal.LensDistortion
function UnityEngine.Rendering.Universal.LensDistortion.New() end
---@return boolean
function UnityEngine.Rendering.Universal.LensDistortion:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.LensDistortion:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.LiftGammaGain : UnityEngine.Rendering.VolumeComponent
---@field lift UnityEngine.Rendering.Vector4Parameter
---@field gamma UnityEngine.Rendering.Vector4Parameter
---@field gain UnityEngine.Rendering.Vector4Parameter
UnityEngine.Rendering.Universal.LiftGammaGain = {}
---@alias CS.UnityEngine.Rendering.Universal.LiftGammaGain UnityEngine.Rendering.Universal.LiftGammaGain
CS.UnityEngine.Rendering.Universal.LiftGammaGain = UnityEngine.Rendering.Universal.LiftGammaGain

---@return UnityEngine.Rendering.Universal.LiftGammaGain
function UnityEngine.Rendering.Universal.LiftGammaGain.New() end
---@return boolean
function UnityEngine.Rendering.Universal.LiftGammaGain:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.LiftGammaGain:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.MotionBlurMode
---@field CameraOnly UnityEngine.Rendering.Universal.MotionBlurMode
---@field CameraAndObjects UnityEngine.Rendering.Universal.MotionBlurMode
UnityEngine.Rendering.Universal.MotionBlurMode = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionBlurMode UnityEngine.Rendering.Universal.MotionBlurMode
CS.UnityEngine.Rendering.Universal.MotionBlurMode = UnityEngine.Rendering.Universal.MotionBlurMode


---@class UnityEngine.Rendering.Universal.MotionBlurQuality
---@field Low UnityEngine.Rendering.Universal.MotionBlurQuality
---@field Medium UnityEngine.Rendering.Universal.MotionBlurQuality
---@field High UnityEngine.Rendering.Universal.MotionBlurQuality
UnityEngine.Rendering.Universal.MotionBlurQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionBlurQuality UnityEngine.Rendering.Universal.MotionBlurQuality
CS.UnityEngine.Rendering.Universal.MotionBlurQuality = UnityEngine.Rendering.Universal.MotionBlurQuality


---@class UnityEngine.Rendering.Universal.MotionBlur : UnityEngine.Rendering.VolumeComponent
---@field mode UnityEngine.Rendering.Universal.MotionBlurModeParameter
---@field quality UnityEngine.Rendering.Universal.MotionBlurQualityParameter
---@field intensity UnityEngine.Rendering.ClampedFloatParameter
---@field clamp UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.MotionBlur = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionBlur UnityEngine.Rendering.Universal.MotionBlur
CS.UnityEngine.Rendering.Universal.MotionBlur = UnityEngine.Rendering.Universal.MotionBlur

---@return UnityEngine.Rendering.Universal.MotionBlur
function UnityEngine.Rendering.Universal.MotionBlur.New() end
---@return boolean
function UnityEngine.Rendering.Universal.MotionBlur:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.MotionBlur:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.MotionBlurModeParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.MotionBlurModeParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.MotionBlurMode]
UnityEngine.Rendering.Universal.MotionBlurModeParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionBlurModeParameter UnityEngine.Rendering.Universal.MotionBlurModeParameter
CS.UnityEngine.Rendering.Universal.MotionBlurModeParameter = UnityEngine.Rendering.Universal.MotionBlurModeParameter

---@param value UnityEngine.Rendering.Universal.MotionBlurMode
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.MotionBlurModeParameter
function UnityEngine.Rendering.Universal.MotionBlurModeParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.MotionBlurQualityParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.MotionBlurQualityParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.MotionBlurQuality]
UnityEngine.Rendering.Universal.MotionBlurQualityParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionBlurQualityParameter UnityEngine.Rendering.Universal.MotionBlurQualityParameter
CS.UnityEngine.Rendering.Universal.MotionBlurQualityParameter = UnityEngine.Rendering.Universal.MotionBlurQualityParameter

---@param value UnityEngine.Rendering.Universal.MotionBlurQuality
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.MotionBlurQualityParameter
function UnityEngine.Rendering.Universal.MotionBlurQualityParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.PaniniProjection : UnityEngine.Rendering.VolumeComponent
---@field distance UnityEngine.Rendering.ClampedFloatParameter
---@field cropToFit UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.PaniniProjection = {}
---@alias CS.UnityEngine.Rendering.Universal.PaniniProjection UnityEngine.Rendering.Universal.PaniniProjection
CS.UnityEngine.Rendering.Universal.PaniniProjection = UnityEngine.Rendering.Universal.PaniniProjection

---@return UnityEngine.Rendering.Universal.PaniniProjection
function UnityEngine.Rendering.Universal.PaniniProjection.New() end
---@return boolean
function UnityEngine.Rendering.Universal.PaniniProjection:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.PaniniProjection:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights : UnityEngine.Rendering.VolumeComponent
---@field shadows UnityEngine.Rendering.Vector4Parameter
---@field midtones UnityEngine.Rendering.Vector4Parameter
---@field highlights UnityEngine.Rendering.Vector4Parameter
---@field shadowsStart UnityEngine.Rendering.MinFloatParameter
---@field shadowsEnd UnityEngine.Rendering.MinFloatParameter
---@field highlightsStart UnityEngine.Rendering.MinFloatParameter
---@field highlightsEnd UnityEngine.Rendering.MinFloatParameter
UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights
CS.UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights = UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights

---@return UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights
function UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights.New() end
---@return boolean
function UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.ShadowsMidtonesHighlights:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.SplitToning : UnityEngine.Rendering.VolumeComponent
---@field shadows UnityEngine.Rendering.ColorParameter
---@field highlights UnityEngine.Rendering.ColorParameter
---@field balance UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.SplitToning = {}
---@alias CS.UnityEngine.Rendering.Universal.SplitToning UnityEngine.Rendering.Universal.SplitToning
CS.UnityEngine.Rendering.Universal.SplitToning = UnityEngine.Rendering.Universal.SplitToning

---@return UnityEngine.Rendering.Universal.SplitToning
function UnityEngine.Rendering.Universal.SplitToning.New() end
---@return boolean
function UnityEngine.Rendering.Universal.SplitToning:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.SplitToning:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.TonemappingMode
---@field None UnityEngine.Rendering.Universal.TonemappingMode
---@field Neutral UnityEngine.Rendering.Universal.TonemappingMode
---@field ACES UnityEngine.Rendering.Universal.TonemappingMode
UnityEngine.Rendering.Universal.TonemappingMode = {}
---@alias CS.UnityEngine.Rendering.Universal.TonemappingMode UnityEngine.Rendering.Universal.TonemappingMode
CS.UnityEngine.Rendering.Universal.TonemappingMode = UnityEngine.Rendering.Universal.TonemappingMode


---@class UnityEngine.Rendering.Universal.NeutralRangeReductionMode
---@field Reinhard UnityEngine.Rendering.Universal.NeutralRangeReductionMode
---@field BT2390 UnityEngine.Rendering.Universal.NeutralRangeReductionMode
UnityEngine.Rendering.Universal.NeutralRangeReductionMode = {}
---@alias CS.UnityEngine.Rendering.Universal.NeutralRangeReductionMode UnityEngine.Rendering.Universal.NeutralRangeReductionMode
CS.UnityEngine.Rendering.Universal.NeutralRangeReductionMode = UnityEngine.Rendering.Universal.NeutralRangeReductionMode


---@class UnityEngine.Rendering.Universal.HDRACESPreset
---@field ACES1000Nits UnityEngine.Rendering.Universal.HDRACESPreset
---@field ACES2000Nits UnityEngine.Rendering.Universal.HDRACESPreset
---@field ACES4000Nits UnityEngine.Rendering.Universal.HDRACESPreset
UnityEngine.Rendering.Universal.HDRACESPreset = {}
---@alias CS.UnityEngine.Rendering.Universal.HDRACESPreset UnityEngine.Rendering.Universal.HDRACESPreset
CS.UnityEngine.Rendering.Universal.HDRACESPreset = UnityEngine.Rendering.Universal.HDRACESPreset


---@class UnityEngine.Rendering.Universal.Tonemapping : UnityEngine.Rendering.VolumeComponent
---@field mode UnityEngine.Rendering.Universal.TonemappingModeParameter
---@field neutralHDRRangeReductionMode UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter
---@field acesPreset UnityEngine.Rendering.Universal.HDRACESPresetParameter
---@field hueShiftAmount UnityEngine.Rendering.ClampedFloatParameter
---@field detectPaperWhite UnityEngine.Rendering.BoolParameter
---@field paperWhite UnityEngine.Rendering.ClampedFloatParameter
---@field detectBrightnessLimits UnityEngine.Rendering.BoolParameter
---@field minNits UnityEngine.Rendering.ClampedFloatParameter
---@field maxNits UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.Tonemapping = {}
---@alias CS.UnityEngine.Rendering.Universal.Tonemapping UnityEngine.Rendering.Universal.Tonemapping
CS.UnityEngine.Rendering.Universal.Tonemapping = UnityEngine.Rendering.Universal.Tonemapping

---@return UnityEngine.Rendering.Universal.Tonemapping
function UnityEngine.Rendering.Universal.Tonemapping.New() end
---@return boolean
function UnityEngine.Rendering.Universal.Tonemapping:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.Tonemapping:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.TonemappingModeParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.TonemappingModeParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.TonemappingMode]
UnityEngine.Rendering.Universal.TonemappingModeParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.TonemappingModeParameter UnityEngine.Rendering.Universal.TonemappingModeParameter
CS.UnityEngine.Rendering.Universal.TonemappingModeParameter = UnityEngine.Rendering.Universal.TonemappingModeParameter

---@param value UnityEngine.Rendering.Universal.TonemappingMode
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.TonemappingModeParameter
function UnityEngine.Rendering.Universal.TonemappingModeParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.NeutralRangeReductionMode]
UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter
CS.UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter = UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter

---@param value UnityEngine.Rendering.Universal.NeutralRangeReductionMode
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter
function UnityEngine.Rendering.Universal.NeutralRangeReductionModeParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.HDRACESPresetParameter : UnityEngine.Rendering.VolumeParameter
---@field value UnityEngine.Rendering.Universal.HDRACESPresetParameter -- infered from UnityEngine.Rendering.VolumeParameter`1[UnityEngine.Rendering.Universal.HDRACESPreset]
UnityEngine.Rendering.Universal.HDRACESPresetParameter = {}
---@alias CS.UnityEngine.Rendering.Universal.HDRACESPresetParameter UnityEngine.Rendering.Universal.HDRACESPresetParameter
CS.UnityEngine.Rendering.Universal.HDRACESPresetParameter = UnityEngine.Rendering.Universal.HDRACESPresetParameter

---@param value UnityEngine.Rendering.Universal.HDRACESPreset
---@param overrideState boolean
---@return UnityEngine.Rendering.Universal.HDRACESPresetParameter
function UnityEngine.Rendering.Universal.HDRACESPresetParameter.New(value, overrideState) end

---@class UnityEngine.Rendering.Universal.Vignette : UnityEngine.Rendering.VolumeComponent
---@field color UnityEngine.Rendering.ColorParameter
---@field center UnityEngine.Rendering.Vector2Parameter
---@field intensity UnityEngine.Rendering.ClampedFloatParameter
---@field smoothness UnityEngine.Rendering.ClampedFloatParameter
---@field rounded UnityEngine.Rendering.BoolParameter
UnityEngine.Rendering.Universal.Vignette = {}
---@alias CS.UnityEngine.Rendering.Universal.Vignette UnityEngine.Rendering.Universal.Vignette
CS.UnityEngine.Rendering.Universal.Vignette = UnityEngine.Rendering.Universal.Vignette

---@return UnityEngine.Rendering.Universal.Vignette
function UnityEngine.Rendering.Universal.Vignette.New() end
---@return boolean
function UnityEngine.Rendering.Universal.Vignette:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.Vignette:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.WhiteBalance : UnityEngine.Rendering.VolumeComponent
---@field temperature UnityEngine.Rendering.ClampedFloatParameter
---@field tint UnityEngine.Rendering.ClampedFloatParameter
UnityEngine.Rendering.Universal.WhiteBalance = {}
---@alias CS.UnityEngine.Rendering.Universal.WhiteBalance UnityEngine.Rendering.Universal.WhiteBalance
CS.UnityEngine.Rendering.Universal.WhiteBalance = UnityEngine.Rendering.Universal.WhiteBalance

---@return UnityEngine.Rendering.Universal.WhiteBalance
function UnityEngine.Rendering.Universal.WhiteBalance.New() end
---@return boolean
function UnityEngine.Rendering.Universal.WhiteBalance:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.WhiteBalance:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.CapturePass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.CapturePass = {}
---@alias CS.UnityEngine.Rendering.Universal.CapturePass UnityEngine.Rendering.Universal.CapturePass
CS.UnityEngine.Rendering.Universal.CapturePass = UnityEngine.Rendering.Universal.CapturePass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@return UnityEngine.Rendering.Universal.CapturePass
function UnityEngine.Rendering.Universal.CapturePass.New(evt) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.CapturePass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass = {}
---@alias CS.UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass
CS.UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass = UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param renderOffscreen boolean
---@return UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass
function UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.New(evt, renderOffscreen) end
---@param ref_descriptor UnityEngine.RenderTextureDescriptor
---@param cameraWidth number
---@param cameraHeight number
---@return ,UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.ConfigureColorDescriptor(ref_descriptor, cameraWidth, cameraHeight) end
---@param ref_descriptor UnityEngine.RenderTextureDescriptor
---@param depthBufferBits number
---@param cameraWidth number
---@param cameraHeight number
---@return ,UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.ConfigureDepthDescriptor(ref_descriptor, depthBufferBits, cameraWidth, cameraHeight) end
function UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass:Dispose() end
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@param depthBufferBits number
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass:Setup(ref_cameraData, depthBufferBits) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.DrawSkyboxPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
---@field m_IsActiveTargetBackBuffer boolean
UnityEngine.Rendering.Universal.DrawSkyboxPass = {}
---@alias CS.UnityEngine.Rendering.Universal.DrawSkyboxPass UnityEngine.Rendering.Universal.DrawSkyboxPass
CS.UnityEngine.Rendering.Universal.DrawSkyboxPass = UnityEngine.Rendering.Universal.DrawSkyboxPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@return UnityEngine.Rendering.Universal.DrawSkyboxPass
function UnityEngine.Rendering.Universal.DrawSkyboxPass.New(evt) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DrawSkyboxPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.HDRDebugViewPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.HDRDebugViewPass = {}
---@alias CS.UnityEngine.Rendering.Universal.HDRDebugViewPass UnityEngine.Rendering.Universal.HDRDebugViewPass
CS.UnityEngine.Rendering.Universal.HDRDebugViewPass = UnityEngine.Rendering.Universal.HDRDebugViewPass

---@param mat UnityEngine.Material
---@return UnityEngine.Rendering.Universal.HDRDebugViewPass
function UnityEngine.Rendering.Universal.HDRDebugViewPass.New(mat) end
---@param ref_descriptor UnityEngine.RenderTextureDescriptor
---@return ,UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.HDRDebugViewPass.ConfigureDescriptor(ref_descriptor) end
---@param ref_descriptor UnityEngine.RenderTextureDescriptor
---@return ,UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.HDRDebugViewPass.ConfigureDescriptorForCIEPrepass(ref_descriptor) end
function UnityEngine.Rendering.Universal.HDRDebugViewPass:Dispose() end
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@param hdrdebugMode UnityEngine.Rendering.Universal.HDRDebugMode
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.HDRDebugViewPass:Setup(ref_cameraData, hdrdebugMode) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.HDRDebugViewPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass = {}
---@alias CS.UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass
CS.UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass = UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@return UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass
function UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.New(evt) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.MotionVectorRenderPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.MotionVectorRenderPass = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionVectorRenderPass UnityEngine.Rendering.Universal.MotionVectorRenderPass
CS.UnityEngine.Rendering.Universal.MotionVectorRenderPass = UnityEngine.Rendering.Universal.MotionVectorRenderPass

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.MotionVectorRenderPass:Configure(cmd, cameraTextureDescriptor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.MotionVectorRenderPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.IPostProcessComponent
UnityEngine.Rendering.Universal.IPostProcessComponent = {}
---@alias CS.UnityEngine.Rendering.Universal.IPostProcessComponent UnityEngine.Rendering.Universal.IPostProcessComponent
CS.UnityEngine.Rendering.Universal.IPostProcessComponent = UnityEngine.Rendering.Universal.IPostProcessComponent

---@return boolean
function UnityEngine.Rendering.Universal.IPostProcessComponent:IsActive() end
---@return boolean
function UnityEngine.Rendering.Universal.IPostProcessComponent:IsTileCompatible() end

---@class UnityEngine.Rendering.Universal.PostProcessPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.PostProcessPass = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessPass UnityEngine.Rendering.Universal.PostProcessPass
CS.UnityEngine.Rendering.Universal.PostProcessPass = UnityEngine.Rendering.Universal.PostProcessPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param data UnityEngine.Rendering.Universal.PostProcessData
---@param ref_postProcessParams UnityEngine.Rendering.Universal.PostProcessParams
---@return UnityEngine.Rendering.Universal.PostProcessPass,UnityEngine.Rendering.Universal.PostProcessParams
function UnityEngine.Rendering.Universal.PostProcessPass.New(evt, data, ref_postProcessParams) end
function UnityEngine.Rendering.Universal.PostProcessPass:Cleanup() end
function UnityEngine.Rendering.Universal.PostProcessPass:Dispose() end
---@overload fun(self: UnityEngine.Rendering.Universal.PostProcessPass, ref_baseDescriptor: UnityEngine.RenderTextureDescriptor, ref_source: UnityEngine.Rendering.RTHandle, resolveToScreen: boolean, ref_depth: UnityEngine.Rendering.RTHandle, ref_internalLut: UnityEngine.Rendering.RTHandle, ref_motionVectors: UnityEngine.Rendering.RTHandle, hasFinalPass: boolean, enableColorEncoding: boolean) : UnityEngine.RenderTextureDescriptor, UnityEngine.Rendering.RTHandle, UnityEngine.Rendering.RTHandle, UnityEngine.Rendering.RTHandle, UnityEngine.Rendering.RTHandle
---@param ref_baseDescriptor UnityEngine.RenderTextureDescriptor
---@param ref_source UnityEngine.Rendering.RTHandle
---@param destination UnityEngine.Rendering.RTHandle
---@param ref_depth UnityEngine.Rendering.RTHandle
---@param ref_internalLut UnityEngine.Rendering.RTHandle
---@param hasFinalPass boolean
---@param enableColorEncoding boolean
---@return ,UnityEngine.RenderTextureDescriptor,UnityEngine.Rendering.RTHandle,UnityEngine.Rendering.RTHandle,UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.PostProcessPass:Setup(ref_baseDescriptor, ref_source, destination, ref_depth, ref_internalLut, hasFinalPass, enableColorEncoding) end
---@param ref_source UnityEngine.Rendering.RTHandle
---@param useSwapBuffer boolean
---@param enableColorEncoding boolean
---@return ,UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.PostProcessPass:SetupFinalPass(ref_source, useSwapBuffer, enableColorEncoding) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.PostProcessPass:OnCameraSetup(cmd, ref_renderingData) end
---@return boolean
function UnityEngine.Rendering.Universal.PostProcessPass:CanRunOnTile() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.PostProcessPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.ScriptableRenderPassInput
---@field None UnityEngine.Rendering.Universal.ScriptableRenderPassInput
---@field Depth UnityEngine.Rendering.Universal.ScriptableRenderPassInput
---@field Normal UnityEngine.Rendering.Universal.ScriptableRenderPassInput
---@field Color UnityEngine.Rendering.Universal.ScriptableRenderPassInput
---@field Motion UnityEngine.Rendering.Universal.ScriptableRenderPassInput
UnityEngine.Rendering.Universal.ScriptableRenderPassInput = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderPassInput UnityEngine.Rendering.Universal.ScriptableRenderPassInput
CS.UnityEngine.Rendering.Universal.ScriptableRenderPassInput = UnityEngine.Rendering.Universal.ScriptableRenderPassInput


---@class UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRendering UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingShadows UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingShadows UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingPrePasses UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingPrePasses UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingGbuffer UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingGbuffer UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingDeferredLights UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingDeferredLights UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingOpaques UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingOpaques UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingSkybox UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingSkybox UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingTransparents UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingTransparents UnityEngine.Rendering.Universal.RenderPassEvent
---@field BeforeRenderingPostProcessing UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRenderingPostProcessing UnityEngine.Rendering.Universal.RenderPassEvent
---@field AfterRendering UnityEngine.Rendering.Universal.RenderPassEvent
UnityEngine.Rendering.Universal.RenderPassEvent = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderPassEvent UnityEngine.Rendering.Universal.RenderPassEvent
CS.UnityEngine.Rendering.Universal.RenderPassEvent = UnityEngine.Rendering.Universal.RenderPassEvent


---@class UnityEngine.Rendering.Universal.RenderPassEventsEnumValues : System.Object
---@field values System.Int32[]
UnityEngine.Rendering.Universal.RenderPassEventsEnumValues = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderPassEventsEnumValues UnityEngine.Rendering.Universal.RenderPassEventsEnumValues
CS.UnityEngine.Rendering.Universal.RenderPassEventsEnumValues = UnityEngine.Rendering.Universal.RenderPassEventsEnumValues


---@class UnityEngine.Rendering.Universal.TransparentSettingsPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.TransparentSettingsPass = {}
---@alias CS.UnityEngine.Rendering.Universal.TransparentSettingsPass UnityEngine.Rendering.Universal.TransparentSettingsPass
CS.UnityEngine.Rendering.Universal.TransparentSettingsPass = UnityEngine.Rendering.Universal.TransparentSettingsPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param shadowReceiveSupported boolean
---@return UnityEngine.Rendering.Universal.TransparentSettingsPass
function UnityEngine.Rendering.Universal.TransparentSettingsPass.New(evt, shadowReceiveSupported) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param shouldReceiveShadows boolean
function UnityEngine.Rendering.Universal.TransparentSettingsPass.ExecutePass(cmd, shouldReceiveShadows) end
---@return boolean
function UnityEngine.Rendering.Universal.TransparentSettingsPass:Setup() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.TransparentSettingsPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.XROcclusionMeshPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
---@field m_IsActiveTargetBackBuffer boolean
UnityEngine.Rendering.Universal.XROcclusionMeshPass = {}
---@alias CS.UnityEngine.Rendering.Universal.XROcclusionMeshPass UnityEngine.Rendering.Universal.XROcclusionMeshPass
CS.UnityEngine.Rendering.Universal.XROcclusionMeshPass = UnityEngine.Rendering.Universal.XROcclusionMeshPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@return UnityEngine.Rendering.Universal.XROcclusionMeshPass
function UnityEngine.Rendering.Universal.XROcclusionMeshPass.New(evt) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.XROcclusionMeshPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.PostProcessParams : System.ValueType
---@field blitMaterial UnityEngine.Material
---@field requestHDRFormat UnityEngine.Experimental.Rendering.GraphicsFormat
UnityEngine.Rendering.Universal.PostProcessParams = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessParams UnityEngine.Rendering.Universal.PostProcessParams
CS.UnityEngine.Rendering.Universal.PostProcessParams = UnityEngine.Rendering.Universal.PostProcessParams

---@return UnityEngine.Rendering.Universal.PostProcessParams
function UnityEngine.Rendering.Universal.PostProcessParams.Create() end

---@class UnityEngine.Rendering.Universal.PostProcessPasses : System.ValueType
---@field colorGradingLutPass UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass
---@field postProcessPass UnityEngine.Rendering.Universal.PostProcessPass
---@field finalPostProcessPass UnityEngine.Rendering.Universal.PostProcessPass
---@field afterPostProcessColor UnityEngine.Rendering.RTHandle
---@field colorGradingLut UnityEngine.Rendering.RTHandle
---@field isCreated boolean
UnityEngine.Rendering.Universal.PostProcessPasses = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessPasses UnityEngine.Rendering.Universal.PostProcessPasses
CS.UnityEngine.Rendering.Universal.PostProcessPasses = UnityEngine.Rendering.Universal.PostProcessPasses

---@param rendererPostProcessData UnityEngine.Rendering.Universal.PostProcessData
---@param ref_postProcessParams UnityEngine.Rendering.Universal.PostProcessParams
---@return UnityEngine.Rendering.Universal.PostProcessPasses,UnityEngine.Rendering.Universal.PostProcessParams
function UnityEngine.Rendering.Universal.PostProcessPasses.New(rendererPostProcessData, ref_postProcessParams) end
---@param data UnityEngine.Rendering.Universal.PostProcessData
---@param ref_ppParams UnityEngine.Rendering.Universal.PostProcessParams
---@return ,UnityEngine.Rendering.Universal.PostProcessParams
function UnityEngine.Rendering.Universal.PostProcessPasses:Recreate(data, ref_ppParams) end
function UnityEngine.Rendering.Universal.PostProcessPasses:Dispose() end

---@class UnityEngine.Rendering.Universal.PostProcessUtils : System.Object
UnityEngine.Rendering.Universal.PostProcessUtils = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessUtils UnityEngine.Rendering.Universal.PostProcessUtils
CS.UnityEngine.Rendering.Universal.PostProcessUtils = UnityEngine.Rendering.Universal.PostProcessUtils

---@param data UnityEngine.Rendering.Universal.PostProcessData
---@param index number
---@param cameraPixelWidth number
---@param cameraPixelHeight number
---@param material UnityEngine.Material
---@return number
function UnityEngine.Rendering.Universal.PostProcessUtils.ConfigureDithering(data, index, cameraPixelWidth, cameraPixelHeight, material) end
---@param data UnityEngine.Rendering.Universal.PostProcessData
---@param settings UnityEngine.Rendering.Universal.FilmGrain
---@param cameraPixelWidth number
---@param cameraPixelHeight number
---@param material UnityEngine.Material
function UnityEngine.Rendering.Universal.PostProcessUtils.ConfigureFilmGrain(data, settings, cameraPixelWidth, cameraPixelHeight, material) end

---@class UnityEngine.Rendering.Universal.ReflectionProbeManager : System.ValueType
---@field atlasRT UnityEngine.RenderTexture
UnityEngine.Rendering.Universal.ReflectionProbeManager = {}
---@alias CS.UnityEngine.Rendering.Universal.ReflectionProbeManager UnityEngine.Rendering.Universal.ReflectionProbeManager
CS.UnityEngine.Rendering.Universal.ReflectionProbeManager = UnityEngine.Rendering.Universal.ReflectionProbeManager

---@return UnityEngine.Rendering.Universal.ReflectionProbeManager
function UnityEngine.Rendering.Universal.ReflectionProbeManager.Create() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ReflectionProbeManager:UpdateGpuData(cmd, ref_renderingData) end
function UnityEngine.Rendering.Universal.ReflectionProbeManager:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalSurfaceData
---@field Albedo UnityEngine.Rendering.Universal.DecalSurfaceData
---@field AlbedoNormal UnityEngine.Rendering.Universal.DecalSurfaceData
---@field AlbedoNormalMAOS UnityEngine.Rendering.Universal.DecalSurfaceData
UnityEngine.Rendering.Universal.DecalSurfaceData = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalSurfaceData UnityEngine.Rendering.Universal.DecalSurfaceData
CS.UnityEngine.Rendering.Universal.DecalSurfaceData = UnityEngine.Rendering.Universal.DecalSurfaceData


---@class UnityEngine.Rendering.Universal.DecalTechnique
---@field Invalid UnityEngine.Rendering.Universal.DecalTechnique
---@field DBuffer UnityEngine.Rendering.Universal.DecalTechnique
---@field ScreenSpace UnityEngine.Rendering.Universal.DecalTechnique
---@field GBuffer UnityEngine.Rendering.Universal.DecalTechnique
UnityEngine.Rendering.Universal.DecalTechnique = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalTechnique UnityEngine.Rendering.Universal.DecalTechnique
CS.UnityEngine.Rendering.Universal.DecalTechnique = UnityEngine.Rendering.Universal.DecalTechnique


---@class UnityEngine.Rendering.Universal.DecalTechniqueOption
---@field Automatic UnityEngine.Rendering.Universal.DecalTechniqueOption
---@field DBuffer UnityEngine.Rendering.Universal.DecalTechniqueOption
---@field ScreenSpace UnityEngine.Rendering.Universal.DecalTechniqueOption
UnityEngine.Rendering.Universal.DecalTechniqueOption = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalTechniqueOption UnityEngine.Rendering.Universal.DecalTechniqueOption
CS.UnityEngine.Rendering.Universal.DecalTechniqueOption = UnityEngine.Rendering.Universal.DecalTechniqueOption


---@class UnityEngine.Rendering.Universal.DBufferSettings : System.Object
---@field surfaceData UnityEngine.Rendering.Universal.DecalSurfaceData
UnityEngine.Rendering.Universal.DBufferSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.DBufferSettings UnityEngine.Rendering.Universal.DBufferSettings
CS.UnityEngine.Rendering.Universal.DBufferSettings = UnityEngine.Rendering.Universal.DBufferSettings

---@return UnityEngine.Rendering.Universal.DBufferSettings
function UnityEngine.Rendering.Universal.DBufferSettings.New() end

---@class UnityEngine.Rendering.Universal.DecalNormalBlend
---@field Low UnityEngine.Rendering.Universal.DecalNormalBlend
---@field Medium UnityEngine.Rendering.Universal.DecalNormalBlend
---@field High UnityEngine.Rendering.Universal.DecalNormalBlend
UnityEngine.Rendering.Universal.DecalNormalBlend = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalNormalBlend UnityEngine.Rendering.Universal.DecalNormalBlend
CS.UnityEngine.Rendering.Universal.DecalNormalBlend = UnityEngine.Rendering.Universal.DecalNormalBlend


---@class UnityEngine.Rendering.Universal.DecalScreenSpaceSettings : System.Object
---@field normalBlend UnityEngine.Rendering.Universal.DecalNormalBlend
UnityEngine.Rendering.Universal.DecalScreenSpaceSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalScreenSpaceSettings UnityEngine.Rendering.Universal.DecalScreenSpaceSettings
CS.UnityEngine.Rendering.Universal.DecalScreenSpaceSettings = UnityEngine.Rendering.Universal.DecalScreenSpaceSettings

---@return UnityEngine.Rendering.Universal.DecalScreenSpaceSettings
function UnityEngine.Rendering.Universal.DecalScreenSpaceSettings.New() end

---@class UnityEngine.Rendering.Universal.DecalSettings : System.Object
---@field technique UnityEngine.Rendering.Universal.DecalTechniqueOption
---@field maxDrawDistance number
---@field decalLayers boolean
---@field dBufferSettings UnityEngine.Rendering.Universal.DBufferSettings
---@field screenSpaceSettings UnityEngine.Rendering.Universal.DecalScreenSpaceSettings
UnityEngine.Rendering.Universal.DecalSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalSettings UnityEngine.Rendering.Universal.DecalSettings
CS.UnityEngine.Rendering.Universal.DecalSettings = UnityEngine.Rendering.Universal.DecalSettings

---@return UnityEngine.Rendering.Universal.DecalSettings
function UnityEngine.Rendering.Universal.DecalSettings.New() end

---@class UnityEngine.Rendering.Universal.SharedDecalEntityManager : System.Object
UnityEngine.Rendering.Universal.SharedDecalEntityManager = {}
---@alias CS.UnityEngine.Rendering.Universal.SharedDecalEntityManager UnityEngine.Rendering.Universal.SharedDecalEntityManager
CS.UnityEngine.Rendering.Universal.SharedDecalEntityManager = UnityEngine.Rendering.Universal.SharedDecalEntityManager

---@return UnityEngine.Rendering.Universal.SharedDecalEntityManager
function UnityEngine.Rendering.Universal.SharedDecalEntityManager.New() end
---@return UnityEngine.Rendering.Universal.DecalEntityManager
function UnityEngine.Rendering.Universal.SharedDecalEntityManager:Get() end
---@param decalEntityManager UnityEngine.Rendering.Universal.DecalEntityManager
function UnityEngine.Rendering.Universal.SharedDecalEntityManager:Release(decalEntityManager) end
function UnityEngine.Rendering.Universal.SharedDecalEntityManager:Dispose() end

---@class UnityEngine.Rendering.Universal.DecalRendererFeature : UnityEngine.Rendering.Universal.ScriptableRendererFeature
UnityEngine.Rendering.Universal.DecalRendererFeature = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalRendererFeature UnityEngine.Rendering.Universal.DecalRendererFeature
CS.UnityEngine.Rendering.Universal.DecalRendererFeature = UnityEngine.Rendering.Universal.DecalRendererFeature

---@return UnityEngine.Rendering.Universal.DecalRendererFeature
function UnityEngine.Rendering.Universal.DecalRendererFeature.New() end
function UnityEngine.Rendering.Universal.DecalRendererFeature:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.DecalRendererFeature:OnCameraPreCull(renderer, ref_cameraData) end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DecalRendererFeature:AddRenderPasses(renderer, ref_renderingData) end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.DecalRendererFeature:SetupRenderPasses(renderer, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature : System.Attribute
---@field customTitle string
UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature = {}
---@alias CS.UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature
CS.UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature = UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature

---@param customTitle string
---@return UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature
function UnityEngine.Rendering.Universal.DisallowMultipleRendererFeature.New(customTitle) end

---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings : System.Object
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings

---@return UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.New() end

---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion : UnityEngine.Rendering.Universal.ScriptableRendererFeature
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion

---@return UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.New() end
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion:AddRenderPasses(renderer, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings : System.Object
UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings
CS.UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings = UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings

---@return UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings
function UnityEngine.Rendering.Universal.ScreenSpaceShadowsSettings.New() end

---@class UnityEngine.Rendering.Universal.ScreenSpaceShadows : UnityEngine.Rendering.Universal.ScriptableRendererFeature
UnityEngine.Rendering.Universal.ScreenSpaceShadows = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceShadows UnityEngine.Rendering.Universal.ScreenSpaceShadows
CS.UnityEngine.Rendering.Universal.ScreenSpaceShadows = UnityEngine.Rendering.Universal.ScreenSpaceShadows

---@return UnityEngine.Rendering.Universal.ScreenSpaceShadows
function UnityEngine.Rendering.Universal.ScreenSpaceShadows.New() end
function UnityEngine.Rendering.Universal.ScreenSpaceShadows:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScreenSpaceShadows:AddRenderPasses(renderer, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.RenderingLayerUtils : System.Object
UnityEngine.Rendering.Universal.RenderingLayerUtils = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderingLayerUtils UnityEngine.Rendering.Universal.RenderingLayerUtils
CS.UnityEngine.Rendering.Universal.RenderingLayerUtils = UnityEngine.Rendering.Universal.RenderingLayerUtils

---@param isDeferred boolean
---@param msaaSampleCount number
---@param rendererEvent UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
---@param ref_combinedEvent UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
---@return ,UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
function UnityEngine.Rendering.Universal.RenderingLayerUtils.CombineRendererEvents(isDeferred, msaaSampleCount, rendererEvent, ref_combinedEvent) end
---@overload fun(universalRendererData: UnityEngine.Rendering.Universal.UniversalRendererData, msaaSampleCount: number, out_combinedEvent: UnityEngine.Rendering.Universal.RenderingLayerUtils.Event, out_combinedMaskSize: UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize) : boolean, UnityEngine.Rendering.Universal.RenderingLayerUtils.Event, UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
---@param universalRenderer UnityEngine.Rendering.Universal.UniversalRenderer
---@param rendererFeatures System.Collections.Generic.List
---@param msaaSampleCount number
---@param out_combinedEvent UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
---@param out_combinedMaskSize UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
---@return boolean,UnityEngine.Rendering.Universal.RenderingLayerUtils.Event,UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
function UnityEngine.Rendering.Universal.RenderingLayerUtils.RequireRenderingLayers(universalRenderer, rendererFeatures, msaaSampleCount, out_combinedEvent, out_combinedMaskSize) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param maskSize UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
function UnityEngine.Rendering.Universal.RenderingLayerUtils.SetupProperties(cmd, maskSize) end
---@param maskSize UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Rendering.Universal.RenderingLayerUtils.GetFormat(maskSize) end
---@param renderingLayers number
---@return number
function UnityEngine.Rendering.Universal.RenderingLayerUtils.ToValidRenderingLayers(renderingLayers) end

---@class UnityEngine.Rendering.Universal.RenderingUtils : System.Object
UnityEngine.Rendering.Universal.RenderingUtils = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderingUtils UnityEngine.Rendering.Universal.RenderingUtils
CS.UnityEngine.Rendering.Universal.RenderingUtils = UnityEngine.Rendering.Universal.RenderingUtils

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param viewMatrix UnityEngine.Matrix4x4
---@param projectionMatrix UnityEngine.Matrix4x4
---@param setInverseMatrices boolean
function UnityEngine.Rendering.Universal.RenderingUtils.SetViewAndProjectionMatrices(cmd, viewMatrix, projectionMatrix, setInverseMatrices) end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.Rendering.Universal.RenderingUtils.SupportsRenderTextureFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return boolean
function UnityEngine.Rendering.Universal.RenderingUtils.SupportsGraphicsFormat(format, usage) end
---@overload fun(ref_handle: UnityEngine.Rendering.RTHandle, ref_descriptor: UnityEngine.RenderTextureDescriptor, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, name: string) : boolean, UnityEngine.Rendering.RTHandle, UnityEngine.RenderTextureDescriptor
---@overload fun(ref_handle: UnityEngine.Rendering.RTHandle, scaleFactor: UnityEngine.Vector2, ref_descriptor: UnityEngine.RenderTextureDescriptor, filterMode: UnityEngine.FilterMode, wrapMode: UnityEngine.TextureWrapMode, isShadowMap: boolean, anisoLevel: number, mipMapBias: number, name: string) : boolean, UnityEngine.Rendering.RTHandle, UnityEngine.RenderTextureDescriptor
---@param ref_handle UnityEngine.Rendering.RTHandle
---@param scaleFunc UnityEngine.Rendering.ScaleFunc
---@param ref_descriptor UnityEngine.RenderTextureDescriptor
---@param filterMode UnityEngine.FilterMode
---@param wrapMode UnityEngine.TextureWrapMode
---@param isShadowMap boolean
---@param anisoLevel number
---@param mipMapBias number
---@param name string
---@return boolean,UnityEngine.Rendering.RTHandle,UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.RenderingUtils.ReAllocateIfNeeded(ref_handle, scaleFunc, ref_descriptor, filterMode, wrapMode, isShadowMap, anisoLevel, mipMapBias, name) end
---@param capacity number
---@return boolean
function UnityEngine.Rendering.Universal.RenderingUtils.SetMaxRTHandlePoolCapacity(capacity) end
---@overload fun(shaderTagId: UnityEngine.Rendering.ShaderTagId, ref_renderingData: UnityEngine.Rendering.Universal.RenderingData, sortingCriteria: UnityEngine.Rendering.SortingCriteria) : UnityEngine.Rendering.DrawingSettings, UnityEngine.Rendering.Universal.RenderingData
---@param shaderTagIdList System.Collections.Generic.List
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@param sortingCriteria UnityEngine.Rendering.SortingCriteria
---@return UnityEngine.Rendering.DrawingSettings,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.RenderingUtils.CreateDrawingSettings(shaderTagIdList, ref_renderingData, sortingCriteria) end

---@class UnityEngine.Rendering.Universal.RenderTargetHandle : System.ValueType
---@field CameraTarget UnityEngine.Rendering.Universal.RenderTargetHandle
---@field id number
UnityEngine.Rendering.Universal.RenderTargetHandle = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderTargetHandle UnityEngine.Rendering.Universal.RenderTargetHandle
CS.UnityEngine.Rendering.Universal.RenderTargetHandle = UnityEngine.Rendering.Universal.RenderTargetHandle

---@overload fun(renderTargetIdentifier: UnityEngine.Rendering.RenderTargetIdentifier) : UnityEngine.Rendering.Universal.RenderTargetHandle
---@param rtHandle UnityEngine.Rendering.RTHandle
---@return UnityEngine.Rendering.Universal.RenderTargetHandle
function UnityEngine.Rendering.Universal.RenderTargetHandle.New(rtHandle) end
---@overload fun(self: UnityEngine.Rendering.Universal.RenderTargetHandle, shaderProperty: string)
---@param renderTargetIdentifier UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.Universal.RenderTargetHandle:Init(renderTargetIdentifier) end
---@return UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.Universal.RenderTargetHandle:Identifier() end
---@return boolean
function UnityEngine.Rendering.Universal.RenderTargetHandle:HasInternalRenderTargetId() end
---@overload fun(self: UnityEngine.Rendering.Universal.RenderTargetHandle, other: UnityEngine.Rendering.Universal.RenderTargetHandle) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.Universal.RenderTargetHandle:Equals(obj) end
---@return number
function UnityEngine.Rendering.Universal.RenderTargetHandle:GetHashCode() end

---@class UnityEngine.Rendering.Universal.RTHandleResourcePool : System.Object
UnityEngine.Rendering.Universal.RTHandleResourcePool = {}
---@alias CS.UnityEngine.Rendering.Universal.RTHandleResourcePool UnityEngine.Rendering.Universal.RTHandleResourcePool
CS.UnityEngine.Rendering.Universal.RTHandleResourcePool = UnityEngine.Rendering.Universal.RTHandleResourcePool

---@return UnityEngine.Rendering.Universal.RTHandleResourcePool
function UnityEngine.Rendering.Universal.RTHandleResourcePool.New() end

---@class UnityEngine.Rendering.Universal.SampleCount
---@field One UnityEngine.Rendering.Universal.SampleCount
---@field Two UnityEngine.Rendering.Universal.SampleCount
---@field Four UnityEngine.Rendering.Universal.SampleCount
UnityEngine.Rendering.Universal.SampleCount = {}
---@alias CS.UnityEngine.Rendering.Universal.SampleCount UnityEngine.Rendering.Universal.SampleCount
CS.UnityEngine.Rendering.Universal.SampleCount = UnityEngine.Rendering.Universal.SampleCount


---@class UnityEngine.Rendering.Universal.ScriptableRendererData : UnityEngine.ScriptableObject
---@field debugShaders UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources
---@field rendererFeatures System.Collections.Generic.List
---@field useNativeRenderPass boolean
UnityEngine.Rendering.Universal.ScriptableRendererData = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRendererData UnityEngine.Rendering.Universal.ScriptableRendererData
CS.UnityEngine.Rendering.Universal.ScriptableRendererData = UnityEngine.Rendering.Universal.ScriptableRendererData

function UnityEngine.Rendering.Universal.ScriptableRendererData:SetDirty() end

---@class UnityEngine.Rendering.Universal.ScriptableRendererFeature : UnityEngine.ScriptableObject
---@field isActive boolean
UnityEngine.Rendering.Universal.ScriptableRendererFeature = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRendererFeature UnityEngine.Rendering.Universal.ScriptableRendererFeature
CS.UnityEngine.Rendering.Universal.ScriptableRendererFeature = UnityEngine.Rendering.Universal.ScriptableRendererFeature

function UnityEngine.Rendering.Universal.ScriptableRendererFeature:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.ScriptableRendererFeature:OnCameraPreCull(renderer, ref_cameraData) end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRendererFeature:AddRenderPasses(renderer, ref_renderingData) end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScriptableRendererFeature:SetupRenderPasses(renderer, ref_renderingData) end
---@param active boolean
function UnityEngine.Rendering.Universal.ScriptableRendererFeature:SetActive(active) end
function UnityEngine.Rendering.Universal.ScriptableRendererFeature:Dispose() end

---@class UnityEngine.Rendering.Universal.ShaderData : System.Object
UnityEngine.Rendering.Universal.ShaderData = {}
---@alias CS.UnityEngine.Rendering.Universal.ShaderData UnityEngine.Rendering.Universal.ShaderData
CS.UnityEngine.Rendering.Universal.ShaderData = UnityEngine.Rendering.Universal.ShaderData

function UnityEngine.Rendering.Universal.ShaderData:Dispose() end

---@class UnityEngine.Rendering.Universal.ShaderPathID
---@field Lit UnityEngine.Rendering.Universal.ShaderPathID
---@field SimpleLit UnityEngine.Rendering.Universal.ShaderPathID
---@field Unlit UnityEngine.Rendering.Universal.ShaderPathID
---@field TerrainLit UnityEngine.Rendering.Universal.ShaderPathID
---@field ParticlesLit UnityEngine.Rendering.Universal.ShaderPathID
---@field ParticlesSimpleLit UnityEngine.Rendering.Universal.ShaderPathID
---@field ParticlesUnlit UnityEngine.Rendering.Universal.ShaderPathID
---@field BakedLit UnityEngine.Rendering.Universal.ShaderPathID
---@field SpeedTree7 UnityEngine.Rendering.Universal.ShaderPathID
---@field SpeedTree7Billboard UnityEngine.Rendering.Universal.ShaderPathID
---@field SpeedTree8 UnityEngine.Rendering.Universal.ShaderPathID
UnityEngine.Rendering.Universal.ShaderPathID = {}
---@alias CS.UnityEngine.Rendering.Universal.ShaderPathID UnityEngine.Rendering.Universal.ShaderPathID
CS.UnityEngine.Rendering.Universal.ShaderPathID = UnityEngine.Rendering.Universal.ShaderPathID


---@class UnityEngine.Rendering.Universal.ShaderUtils : System.Object
UnityEngine.Rendering.Universal.ShaderUtils = {}
---@alias CS.UnityEngine.Rendering.Universal.ShaderUtils UnityEngine.Rendering.Universal.ShaderUtils
CS.UnityEngine.Rendering.Universal.ShaderUtils = UnityEngine.Rendering.Universal.ShaderUtils

---@param id UnityEngine.Rendering.Universal.ShaderPathID
---@return string
function UnityEngine.Rendering.Universal.ShaderUtils.GetShaderPath(id) end
---@param path string
---@return UnityEngine.Rendering.Universal.ShaderPathID
function UnityEngine.Rendering.Universal.ShaderUtils.GetEnumFromPath(path) end
---@param shader UnityEngine.Shader
---@return boolean
function UnityEngine.Rendering.Universal.ShaderUtils.IsLWShader(shader) end
---@param id UnityEngine.Rendering.Universal.ShaderPathID
---@return string
function UnityEngine.Rendering.Universal.ShaderUtils.GetShaderGUID(id) end

---@class UnityEngine.Rendering.Universal.ShadowSliceData : System.ValueType
---@field viewMatrix UnityEngine.Matrix4x4
---@field projectionMatrix UnityEngine.Matrix4x4
---@field shadowTransform UnityEngine.Matrix4x4
---@field offsetX number
---@field offsetY number
---@field resolution number
---@field splitData UnityEngine.Rendering.ShadowSplitData
UnityEngine.Rendering.Universal.ShadowSliceData = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowSliceData UnityEngine.Rendering.Universal.ShadowSliceData
CS.UnityEngine.Rendering.Universal.ShadowSliceData = UnityEngine.Rendering.Universal.ShadowSliceData

function UnityEngine.Rendering.Universal.ShadowSliceData:Clear() end

---@class UnityEngine.Rendering.Universal.ShadowUtils : System.Object
UnityEngine.Rendering.Universal.ShadowUtils = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowUtils UnityEngine.Rendering.Universal.ShadowUtils
CS.UnityEngine.Rendering.Universal.ShadowUtils = UnityEngine.Rendering.Universal.ShadowUtils

---@overload fun(ref_cullResults: UnityEngine.Rendering.CullingResults, ref_shadowData: UnityEngine.Rendering.Universal.ShadowData, shadowLightIndex: number, cascadeIndex: number, shadowmapWidth: number, shadowmapHeight: number, shadowResolution: number, shadowNearPlane: number, out_cascadeSplitDistance: UnityEngine.Vector4, out_shadowSliceData: UnityEngine.Rendering.Universal.ShadowSliceData, out_viewMatrix: UnityEngine.Matrix4x4, out_projMatrix: UnityEngine.Matrix4x4) : boolean, UnityEngine.Rendering.CullingResults, UnityEngine.Rendering.Universal.ShadowData, UnityEngine.Vector4, UnityEngine.Rendering.Universal.ShadowSliceData, UnityEngine.Matrix4x4, UnityEngine.Matrix4x4
---@param ref_cullResults UnityEngine.Rendering.CullingResults
---@param ref_shadowData UnityEngine.Rendering.Universal.ShadowData
---@param shadowLightIndex number
---@param cascadeIndex number
---@param shadowmapWidth number
---@param shadowmapHeight number
---@param shadowResolution number
---@param shadowNearPlane number
---@param out_cascadeSplitDistance UnityEngine.Vector4
---@param out_shadowSliceData UnityEngine.Rendering.Universal.ShadowSliceData
---@return boolean,UnityEngine.Rendering.CullingResults,UnityEngine.Rendering.Universal.ShadowData,UnityEngine.Vector4,UnityEngine.Rendering.Universal.ShadowSliceData
function UnityEngine.Rendering.Universal.ShadowUtils.ExtractDirectionalLightMatrix(ref_cullResults, ref_shadowData, shadowLightIndex, cascadeIndex, shadowmapWidth, shadowmapHeight, shadowResolution, shadowNearPlane, out_cascadeSplitDistance, out_shadowSliceData) end
---@param ref_cullResults UnityEngine.Rendering.CullingResults
---@param ref_shadowData UnityEngine.Rendering.Universal.ShadowData
---@param shadowLightIndex number
---@param out_shadowMatrix UnityEngine.Matrix4x4
---@param out_viewMatrix UnityEngine.Matrix4x4
---@param out_projMatrix UnityEngine.Matrix4x4
---@param out_splitData UnityEngine.Rendering.ShadowSplitData
---@return boolean,UnityEngine.Rendering.CullingResults,UnityEngine.Rendering.Universal.ShadowData,UnityEngine.Matrix4x4,UnityEngine.Matrix4x4,UnityEngine.Matrix4x4,UnityEngine.Rendering.ShadowSplitData
function UnityEngine.Rendering.Universal.ShadowUtils.ExtractSpotLightMatrix(ref_cullResults, ref_shadowData, shadowLightIndex, out_shadowMatrix, out_viewMatrix, out_projMatrix, out_splitData) end
---@param ref_cullResults UnityEngine.Rendering.CullingResults
---@param ref_shadowData UnityEngine.Rendering.Universal.ShadowData
---@param shadowLightIndex number
---@param cubemapFace UnityEngine.CubemapFace
---@param fovBias number
---@param out_shadowMatrix UnityEngine.Matrix4x4
---@param out_viewMatrix UnityEngine.Matrix4x4
---@param out_projMatrix UnityEngine.Matrix4x4
---@param out_splitData UnityEngine.Rendering.ShadowSplitData
---@return boolean,UnityEngine.Rendering.CullingResults,UnityEngine.Rendering.Universal.ShadowData,UnityEngine.Matrix4x4,UnityEngine.Matrix4x4,UnityEngine.Matrix4x4,UnityEngine.Rendering.ShadowSplitData
function UnityEngine.Rendering.Universal.ShadowUtils.ExtractPointLightMatrix(ref_cullResults, ref_shadowData, shadowLightIndex, cubemapFace, fovBias, out_shadowMatrix, out_viewMatrix, out_projMatrix, out_splitData) end
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, ref_context: UnityEngine.Rendering.ScriptableRenderContext, ref_shadowSliceData: UnityEngine.Rendering.Universal.ShadowSliceData, ref_settings: UnityEngine.Rendering.ShadowDrawingSettings, proj: UnityEngine.Matrix4x4, view: UnityEngine.Matrix4x4) : UnityEngine.Rendering.ScriptableRenderContext, UnityEngine.Rendering.Universal.ShadowSliceData, UnityEngine.Rendering.ShadowDrawingSettings
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_shadowSliceData UnityEngine.Rendering.Universal.ShadowSliceData
---@param ref_settings UnityEngine.Rendering.ShadowDrawingSettings
---@return ,UnityEngine.Rendering.ScriptableRenderContext,UnityEngine.Rendering.Universal.ShadowSliceData,UnityEngine.Rendering.ShadowDrawingSettings
function UnityEngine.Rendering.Universal.ShadowUtils.RenderShadowSlice(cmd, ref_context, ref_shadowSliceData, ref_settings) end
---@param atlasWidth number
---@param atlasHeight number
---@param tileCount number
---@return number
function UnityEngine.Rendering.Universal.ShadowUtils.GetMaxTileResolutionInAtlas(atlasWidth, atlasHeight, tileCount) end
---@param ref_shadowSliceData UnityEngine.Rendering.Universal.ShadowSliceData
---@param atlasWidth number
---@param atlasHeight number
---@return ,UnityEngine.Rendering.Universal.ShadowSliceData
function UnityEngine.Rendering.Universal.ShadowUtils.ApplySliceTransform(ref_shadowSliceData, atlasWidth, atlasHeight) end
---@param ref_shadowLight UnityEngine.Rendering.VisibleLight
---@param shadowLightIndex number
---@param ref_shadowData UnityEngine.Rendering.Universal.ShadowData
---@param lightProjectionMatrix UnityEngine.Matrix4x4
---@param shadowResolution number
---@return UnityEngine.Vector4,UnityEngine.Rendering.VisibleLight,UnityEngine.Rendering.Universal.ShadowData
function UnityEngine.Rendering.Universal.ShadowUtils.GetShadowBias(ref_shadowLight, shadowLightIndex, ref_shadowData, lightProjectionMatrix, shadowResolution) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_shadowLight UnityEngine.Rendering.VisibleLight
---@param shadowBias UnityEngine.Vector4
---@return ,UnityEngine.Rendering.VisibleLight
function UnityEngine.Rendering.Universal.ShadowUtils.SetupShadowCasterConstantBuffer(cmd, ref_shadowLight, shadowBias) end
---@param handle UnityEngine.Rendering.RTHandle
---@param width number
---@param height number
---@param bits number
---@param anisoLevel number
---@param mipMapBias number
---@param name string
---@return boolean
function UnityEngine.Rendering.Universal.ShadowUtils.ShadowRTNeedsReAlloc(handle, width, height, bits, anisoLevel, mipMapBias, name) end
---@param width number
---@param height number
---@param bits number
---@param anisoLevel number
---@param mipMapBias number
---@param name string
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.ShadowUtils.AllocShadowRT(width, height, bits, anisoLevel, mipMapBias, name) end
---@param ref_handle UnityEngine.Rendering.RTHandle
---@param width number
---@param height number
---@param bits number
---@param anisoLevel number
---@param mipMapBias number
---@param name string
---@return boolean,UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.ShadowUtils.ShadowRTReAllocateIfNeeded(ref_handle, width, height, bits, anisoLevel, mipMapBias, name) end

---@class UnityEngine.Rendering.Universal.SpaceFillingCurves : System.Object
UnityEngine.Rendering.Universal.SpaceFillingCurves = {}
---@alias CS.UnityEngine.Rendering.Universal.SpaceFillingCurves UnityEngine.Rendering.Universal.SpaceFillingCurves
CS.UnityEngine.Rendering.Universal.SpaceFillingCurves = UnityEngine.Rendering.Universal.SpaceFillingCurves

---@param coord Unity.Mathematics.uint2
---@return number
function UnityEngine.Rendering.Universal.SpaceFillingCurves.EncodeMorton2D(coord) end
---@param code number
---@return Unity.Mathematics.uint2
function UnityEngine.Rendering.Universal.SpaceFillingCurves.DecodeMorton2D(code) end

---@class UnityEngine.Rendering.Universal.TemporalAAQuality
---@field VeryLow UnityEngine.Rendering.Universal.TemporalAAQuality
---@field Low UnityEngine.Rendering.Universal.TemporalAAQuality
---@field Medium UnityEngine.Rendering.Universal.TemporalAAQuality
---@field High UnityEngine.Rendering.Universal.TemporalAAQuality
---@field VeryHigh UnityEngine.Rendering.Universal.TemporalAAQuality
UnityEngine.Rendering.Universal.TemporalAAQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.TemporalAAQuality UnityEngine.Rendering.Universal.TemporalAAQuality
CS.UnityEngine.Rendering.Universal.TemporalAAQuality = UnityEngine.Rendering.Universal.TemporalAAQuality


---@class UnityEngine.Rendering.Universal.TaaPersistentData : System.Object
---@field rtd UnityEngine.RenderTextureDescriptor
UnityEngine.Rendering.Universal.TaaPersistentData = {}
---@alias CS.UnityEngine.Rendering.Universal.TaaPersistentData UnityEngine.Rendering.Universal.TaaPersistentData
CS.UnityEngine.Rendering.Universal.TaaPersistentData = UnityEngine.Rendering.Universal.TaaPersistentData

---@return UnityEngine.Rendering.Universal.TaaPersistentData
function UnityEngine.Rendering.Universal.TaaPersistentData.New() end
---@param index number
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.TaaPersistentData:accumulationTexture(index) end
---@param index number
---@return number
function UnityEngine.Rendering.Universal.TaaPersistentData:GetLastAccumFrameIndex(index) end
---@param index number
---@param value number
function UnityEngine.Rendering.Universal.TaaPersistentData:SetLastAccumFrameIndex(index, value) end
---@param sizeX number
---@param sizeY number
---@param volumeDepth number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param vrUsage UnityEngine.VRTextureUsage
---@param texDim UnityEngine.Rendering.TextureDimension
function UnityEngine.Rendering.Universal.TaaPersistentData:Init(sizeX, sizeY, volumeDepth, format, vrUsage, texDim) end
---@param xrMultipassEnabled boolean
---@return boolean
function UnityEngine.Rendering.Universal.TaaPersistentData:AllocateTargets(xrMultipassEnabled) end
function UnityEngine.Rendering.Universal.TaaPersistentData:DeallocateTargets() end

---@class UnityEngine.Rendering.Universal.TemporalAA : System.Object
UnityEngine.Rendering.Universal.TemporalAA = {}
---@alias CS.UnityEngine.Rendering.Universal.TemporalAA UnityEngine.Rendering.Universal.TemporalAA
CS.UnityEngine.Rendering.Universal.TemporalAA = UnityEngine.Rendering.Universal.TemporalAA


---@class UnityEngine.Rendering.Universal.InclusiveRange : System.ValueType
---@field start number
---@field end number
---@field empty UnityEngine.Rendering.Universal.InclusiveRange
---@field isEmpty boolean
UnityEngine.Rendering.Universal.InclusiveRange = {}
---@alias CS.UnityEngine.Rendering.Universal.InclusiveRange UnityEngine.Rendering.Universal.InclusiveRange
CS.UnityEngine.Rendering.Universal.InclusiveRange = UnityEngine.Rendering.Universal.InclusiveRange

---@overload fun(startEnd: number) : UnityEngine.Rendering.Universal.InclusiveRange
---@param start number
---@param _end number
---@return UnityEngine.Rendering.Universal.InclusiveRange
function UnityEngine.Rendering.Universal.InclusiveRange.New(start, _end) end
---@param a UnityEngine.Rendering.Universal.InclusiveRange
---@param b UnityEngine.Rendering.Universal.InclusiveRange
---@return UnityEngine.Rendering.Universal.InclusiveRange
function UnityEngine.Rendering.Universal.InclusiveRange.Merge(a, b) end
---@param index number
function UnityEngine.Rendering.Universal.InclusiveRange:Expand(index) end
---@param min number
---@param max number
function UnityEngine.Rendering.Universal.InclusiveRange:Clamp(min, max) end
---@param index number
---@return boolean
function UnityEngine.Rendering.Universal.InclusiveRange:Contains(index) end
---@return string
function UnityEngine.Rendering.Universal.InclusiveRange:ToString() end

---@class UnityEngine.Rendering.Universal.LightMinMaxZJob : System.ValueType
---@field worldToViews UnityEngine.Rendering.Universal.Fixed2
---@field lights Unity.Collections.NativeArray
---@field minMaxZs Unity.Collections.NativeArray
UnityEngine.Rendering.Universal.LightMinMaxZJob = {}
---@alias CS.UnityEngine.Rendering.Universal.LightMinMaxZJob UnityEngine.Rendering.Universal.LightMinMaxZJob
CS.UnityEngine.Rendering.Universal.LightMinMaxZJob = UnityEngine.Rendering.Universal.LightMinMaxZJob

---@param index number
function UnityEngine.Rendering.Universal.LightMinMaxZJob:Execute(index) end

---@class UnityEngine.Rendering.Universal.ReflectionProbeMinMaxZJob : System.ValueType
---@field worldToViews UnityEngine.Rendering.Universal.Fixed2
---@field reflectionProbes Unity.Collections.NativeArray
---@field minMaxZs Unity.Collections.NativeArray
UnityEngine.Rendering.Universal.ReflectionProbeMinMaxZJob = {}
---@alias CS.UnityEngine.Rendering.Universal.ReflectionProbeMinMaxZJob UnityEngine.Rendering.Universal.ReflectionProbeMinMaxZJob
CS.UnityEngine.Rendering.Universal.ReflectionProbeMinMaxZJob = UnityEngine.Rendering.Universal.ReflectionProbeMinMaxZJob

---@param index number
function UnityEngine.Rendering.Universal.ReflectionProbeMinMaxZJob:Execute(index) end

---@class UnityEngine.Rendering.Universal.TileRangeExpansionJob : System.ValueType
---@field tileRanges Unity.Collections.NativeArray
---@field tileMasks Unity.Collections.NativeArray
---@field rangesPerItem number
---@field itemsPerTile number
---@field wordsPerTile number
---@field tileResolution Unity.Mathematics.int2
UnityEngine.Rendering.Universal.TileRangeExpansionJob = {}
---@alias CS.UnityEngine.Rendering.Universal.TileRangeExpansionJob UnityEngine.Rendering.Universal.TileRangeExpansionJob
CS.UnityEngine.Rendering.Universal.TileRangeExpansionJob = UnityEngine.Rendering.Universal.TileRangeExpansionJob

---@param jobIndex number
function UnityEngine.Rendering.Universal.TileRangeExpansionJob:Execute(jobIndex) end

---@class UnityEngine.Rendering.Universal.TileSize
---@field _8 UnityEngine.Rendering.Universal.TileSize
---@field _16 UnityEngine.Rendering.Universal.TileSize
---@field _32 UnityEngine.Rendering.Universal.TileSize
---@field _64 UnityEngine.Rendering.Universal.TileSize
UnityEngine.Rendering.Universal.TileSize = {}
---@alias CS.UnityEngine.Rendering.Universal.TileSize UnityEngine.Rendering.Universal.TileSize
CS.UnityEngine.Rendering.Universal.TileSize = UnityEngine.Rendering.Universal.TileSize

---@return boolean
function UnityEngine.Rendering.Universal.TileSize:IsValid() end

---@class UnityEngine.Rendering.Universal.TileSizeExtensions : System.Object
UnityEngine.Rendering.Universal.TileSizeExtensions = {}
---@alias CS.UnityEngine.Rendering.Universal.TileSizeExtensions UnityEngine.Rendering.Universal.TileSizeExtensions
CS.UnityEngine.Rendering.Universal.TileSizeExtensions = UnityEngine.Rendering.Universal.TileSizeExtensions

---@param tileSize UnityEngine.Rendering.Universal.TileSize
---@return boolean
function UnityEngine.Rendering.Universal.TileSizeExtensions.IsValid(tileSize) end

---@class UnityEngine.Rendering.Universal.TilingJob : System.ValueType
---@field lights Unity.Collections.NativeArray
---@field reflectionProbes Unity.Collections.NativeArray
---@field tileRanges Unity.Collections.NativeArray
---@field itemsPerTile number
---@field rangesPerItem number
---@field worldToViews UnityEngine.Rendering.Universal.Fixed2
---@field tileScale Unity.Mathematics.float2
---@field tileScaleInv Unity.Mathematics.float2
---@field viewPlaneBottoms UnityEngine.Rendering.Universal.Fixed2
---@field viewPlaneTops UnityEngine.Rendering.Universal.Fixed2
---@field viewToViewportScaleBiases UnityEngine.Rendering.Universal.Fixed2
---@field tileCount Unity.Mathematics.int2
---@field near number
---@field isOrthographic boolean
UnityEngine.Rendering.Universal.TilingJob = {}
---@alias CS.UnityEngine.Rendering.Universal.TilingJob UnityEngine.Rendering.Universal.TilingJob
CS.UnityEngine.Rendering.Universal.TilingJob = UnityEngine.Rendering.Universal.TilingJob

---@param jobIndex number
function UnityEngine.Rendering.Universal.TilingJob:Execute(jobIndex) end

---@class UnityEngine.Rendering.Universal.ZBinningJob : System.ValueType
---@field batchSize number
---@field headerLength number
---@field bins Unity.Collections.NativeArray
---@field minMaxZs Unity.Collections.NativeArray
---@field zBinScale number
---@field zBinOffset number
---@field binCount number
---@field wordsPerTile number
---@field lightCount number
---@field reflectionProbeCount number
---@field batchCount number
---@field viewCount number
---@field isOrthographic boolean
UnityEngine.Rendering.Universal.ZBinningJob = {}
---@alias CS.UnityEngine.Rendering.Universal.ZBinningJob UnityEngine.Rendering.Universal.ZBinningJob
CS.UnityEngine.Rendering.Universal.ZBinningJob = UnityEngine.Rendering.Universal.ZBinningJob

---@param jobIndex number
function UnityEngine.Rendering.Universal.ZBinningJob:Execute(jobIndex) end

---@class UnityEngine.Rendering.Universal.CameraOverrideOption
---@field Off UnityEngine.Rendering.Universal.CameraOverrideOption
---@field On UnityEngine.Rendering.Universal.CameraOverrideOption
---@field UsePipelineSettings UnityEngine.Rendering.Universal.CameraOverrideOption
UnityEngine.Rendering.Universal.CameraOverrideOption = {}
---@alias CS.UnityEngine.Rendering.Universal.CameraOverrideOption UnityEngine.Rendering.Universal.CameraOverrideOption
CS.UnityEngine.Rendering.Universal.CameraOverrideOption = UnityEngine.Rendering.Universal.CameraOverrideOption


---@class UnityEngine.Rendering.Universal.RendererOverrideOption
---@field Custom UnityEngine.Rendering.Universal.RendererOverrideOption
---@field UsePipelineSettings UnityEngine.Rendering.Universal.RendererOverrideOption
UnityEngine.Rendering.Universal.RendererOverrideOption = {}
---@alias CS.UnityEngine.Rendering.Universal.RendererOverrideOption UnityEngine.Rendering.Universal.RendererOverrideOption
CS.UnityEngine.Rendering.Universal.RendererOverrideOption = UnityEngine.Rendering.Universal.RendererOverrideOption


---@class UnityEngine.Rendering.Universal.AntialiasingMode
---@field None UnityEngine.Rendering.Universal.AntialiasingMode
---@field FastApproximateAntialiasing UnityEngine.Rendering.Universal.AntialiasingMode
---@field SubpixelMorphologicalAntiAliasing UnityEngine.Rendering.Universal.AntialiasingMode
---@field TemporalAntiAliasing UnityEngine.Rendering.Universal.AntialiasingMode
UnityEngine.Rendering.Universal.AntialiasingMode = {}
---@alias CS.UnityEngine.Rendering.Universal.AntialiasingMode UnityEngine.Rendering.Universal.AntialiasingMode
CS.UnityEngine.Rendering.Universal.AntialiasingMode = UnityEngine.Rendering.Universal.AntialiasingMode


---@class UnityEngine.Rendering.Universal.CameraRenderType
---@field Base UnityEngine.Rendering.Universal.CameraRenderType
---@field Overlay UnityEngine.Rendering.Universal.CameraRenderType
UnityEngine.Rendering.Universal.CameraRenderType = {}
---@alias CS.UnityEngine.Rendering.Universal.CameraRenderType UnityEngine.Rendering.Universal.CameraRenderType
CS.UnityEngine.Rendering.Universal.CameraRenderType = UnityEngine.Rendering.Universal.CameraRenderType

---@return string
function UnityEngine.Rendering.Universal.CameraRenderType:GetName() end

---@class UnityEngine.Rendering.Universal.AntialiasingQuality
---@field Low UnityEngine.Rendering.Universal.AntialiasingQuality
---@field Medium UnityEngine.Rendering.Universal.AntialiasingQuality
---@field High UnityEngine.Rendering.Universal.AntialiasingQuality
UnityEngine.Rendering.Universal.AntialiasingQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.AntialiasingQuality UnityEngine.Rendering.Universal.AntialiasingQuality
CS.UnityEngine.Rendering.Universal.AntialiasingQuality = UnityEngine.Rendering.Universal.AntialiasingQuality


---@class UnityEngine.Rendering.Universal.CameraExtensions : System.Object
UnityEngine.Rendering.Universal.CameraExtensions = {}
---@alias CS.UnityEngine.Rendering.Universal.CameraExtensions UnityEngine.Rendering.Universal.CameraExtensions
CS.UnityEngine.Rendering.Universal.CameraExtensions = UnityEngine.Rendering.Universal.CameraExtensions

---@param camera UnityEngine.Camera
---@return UnityEngine.Rendering.Universal.UniversalAdditionalCameraData
function UnityEngine.Rendering.Universal.CameraExtensions.GetUniversalAdditionalCameraData(camera) end
---@param camera UnityEngine.Camera
---@return UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
function UnityEngine.Rendering.Universal.CameraExtensions.GetVolumeFrameworkUpdateMode(camera) end
---@param camera UnityEngine.Camera
---@param mode UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
function UnityEngine.Rendering.Universal.CameraExtensions.SetVolumeFrameworkUpdateMode(camera, mode) end
---@overload fun(camera: UnityEngine.Camera)
---@param camera UnityEngine.Camera
---@param cameraData UnityEngine.Rendering.Universal.UniversalAdditionalCameraData
function UnityEngine.Rendering.Universal.CameraExtensions.UpdateVolumeStack(camera, cameraData) end
---@overload fun(camera: UnityEngine.Camera)
---@param camera UnityEngine.Camera
---@param cameraData UnityEngine.Rendering.Universal.UniversalAdditionalCameraData
function UnityEngine.Rendering.Universal.CameraExtensions.DestroyVolumeStack(camera, cameraData) end

---@class UnityEngine.Rendering.Universal.CameraTypeUtility : System.Object
UnityEngine.Rendering.Universal.CameraTypeUtility = {}
---@alias CS.UnityEngine.Rendering.Universal.CameraTypeUtility UnityEngine.Rendering.Universal.CameraTypeUtility
CS.UnityEngine.Rendering.Universal.CameraTypeUtility = UnityEngine.Rendering.Universal.CameraTypeUtility

---@param type UnityEngine.Rendering.Universal.CameraRenderType
---@return string
function UnityEngine.Rendering.Universal.CameraTypeUtility.GetName(type) end

---@class UnityEngine.Rendering.Universal.UniversalAdditionalCameraData : UnityEngine.MonoBehaviour
---@field version number
---@field renderShadows boolean
---@field requiresDepthOption UnityEngine.Rendering.Universal.CameraOverrideOption
---@field requiresColorOption UnityEngine.Rendering.Universal.CameraOverrideOption
---@field renderType UnityEngine.Rendering.Universal.CameraRenderType
---@field cameraStack System.Collections.Generic.List
---@field clearDepth boolean
---@field requiresDepthTexture boolean
---@field requiresColorTexture boolean
---@field scriptableRenderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@field volumeLayerMask UnityEngine.LayerMask
---@field volumeTrigger UnityEngine.Transform
---@field requiresVolumeFrameworkUpdate boolean
---@field volumeStack UnityEngine.Rendering.VolumeStack
---@field renderPostProcessing boolean
---@field antialiasing UnityEngine.Rendering.Universal.AntialiasingMode
---@field antialiasingQuality UnityEngine.Rendering.Universal.AntialiasingQuality
---@field taaSettings UnityEngine.Rendering.Universal.TemporalAA.Settings&
---@field resetHistory boolean
---@field stopNaN boolean
---@field dithering boolean
---@field allowXRRendering boolean
---@field useScreenCoordOverride boolean
---@field screenSizeOverride UnityEngine.Vector4
---@field screenCoordScaleBias UnityEngine.Vector4
---@field allowHDROutput boolean
UnityEngine.Rendering.Universal.UniversalAdditionalCameraData = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData UnityEngine.Rendering.Universal.UniversalAdditionalCameraData
CS.UnityEngine.Rendering.Universal.UniversalAdditionalCameraData = UnityEngine.Rendering.Universal.UniversalAdditionalCameraData

---@param index number
function UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:SetRenderer(index) end
function UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:OnBeforeSerialize() end
function UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:OnAfterDeserialize() end
function UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:OnDrawGizmos() end
function UnityEngine.Rendering.Universal.UniversalAdditionalCameraData:OnDestroy() end

---@class UnityEngine.Rendering.Universal.LightLayerEnum
---@field Nothing UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayerDefault UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayer1 UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayer2 UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayer3 UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayer4 UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayer5 UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayer6 UnityEngine.Rendering.Universal.LightLayerEnum
---@field LightLayer7 UnityEngine.Rendering.Universal.LightLayerEnum
---@field Everything UnityEngine.Rendering.Universal.LightLayerEnum
UnityEngine.Rendering.Universal.LightLayerEnum = {}
---@alias CS.UnityEngine.Rendering.Universal.LightLayerEnum UnityEngine.Rendering.Universal.LightLayerEnum
CS.UnityEngine.Rendering.Universal.LightLayerEnum = UnityEngine.Rendering.Universal.LightLayerEnum


---@class UnityEngine.Rendering.Universal.LightExtensions : System.Object
UnityEngine.Rendering.Universal.LightExtensions = {}
---@alias CS.UnityEngine.Rendering.Universal.LightExtensions UnityEngine.Rendering.Universal.LightExtensions
CS.UnityEngine.Rendering.Universal.LightExtensions = UnityEngine.Rendering.Universal.LightExtensions

---@param light UnityEngine.Light
---@return UnityEngine.Rendering.Universal.UniversalAdditionalLightData
function UnityEngine.Rendering.Universal.LightExtensions.GetUniversalAdditionalLightData(light) end

---@class UnityEngine.Rendering.Universal.UniversalAdditionalLightData : UnityEngine.MonoBehaviour
---@field AdditionalLightsShadowResolutionTierCustom number
---@field AdditionalLightsShadowResolutionTierLow number
---@field AdditionalLightsShadowResolutionTierMedium number
---@field AdditionalLightsShadowResolutionTierHigh number
---@field AdditionalLightsShadowDefaultResolutionTier number
---@field AdditionalLightsShadowDefaultCustomResolution number
---@field AdditionalLightsShadowMinimumResolution number
---@field usePipelineSettings boolean
---@field additionalLightsShadowResolutionTier number
---@field renderingLayers number
---@field customShadowLayers boolean
---@field shadowRenderingLayers number
---@field lightCookieSize UnityEngine.Vector2
---@field lightCookieOffset UnityEngine.Vector2
---@field softShadowQuality UnityEngine.Rendering.Universal.SoftShadowQuality
UnityEngine.Rendering.Universal.UniversalAdditionalLightData = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalAdditionalLightData UnityEngine.Rendering.Universal.UniversalAdditionalLightData
CS.UnityEngine.Rendering.Universal.UniversalAdditionalLightData = UnityEngine.Rendering.Universal.UniversalAdditionalLightData

function UnityEngine.Rendering.Universal.UniversalAdditionalLightData:OnBeforeSerialize() end
function UnityEngine.Rendering.Universal.UniversalAdditionalLightData:OnAfterDeserialize() end

---@class UnityEngine.Rendering.Universal.RenderingMode
---@field Forward UnityEngine.Rendering.Universal.RenderingMode
---@field ForwardPlus UnityEngine.Rendering.Universal.RenderingMode
---@field Deferred UnityEngine.Rendering.Universal.RenderingMode
UnityEngine.Rendering.Universal.RenderingMode = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderingMode UnityEngine.Rendering.Universal.RenderingMode
CS.UnityEngine.Rendering.Universal.RenderingMode = UnityEngine.Rendering.Universal.RenderingMode


---@class UnityEngine.Rendering.Universal.DepthPrimingMode
---@field Disabled UnityEngine.Rendering.Universal.DepthPrimingMode
---@field Auto UnityEngine.Rendering.Universal.DepthPrimingMode
---@field Forced UnityEngine.Rendering.Universal.DepthPrimingMode
UnityEngine.Rendering.Universal.DepthPrimingMode = {}
---@alias CS.UnityEngine.Rendering.Universal.DepthPrimingMode UnityEngine.Rendering.Universal.DepthPrimingMode
CS.UnityEngine.Rendering.Universal.DepthPrimingMode = UnityEngine.Rendering.Universal.DepthPrimingMode


---@class UnityEngine.Rendering.Universal.UniversalRenderer : UnityEngine.Rendering.Universal.ScriptableRenderer
---@field depthPrimingMode UnityEngine.Rendering.Universal.DepthPrimingMode
UnityEngine.Rendering.Universal.UniversalRenderer = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderer UnityEngine.Rendering.Universal.UniversalRenderer
CS.UnityEngine.Rendering.Universal.UniversalRenderer = UnityEngine.Rendering.Universal.UniversalRenderer

---@param data UnityEngine.Rendering.Universal.UniversalRendererData
---@return UnityEngine.Rendering.Universal.UniversalRenderer
function UnityEngine.Rendering.Universal.UniversalRenderer.New(data) end
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return boolean,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.UniversalRenderer.IsOffscreenDepthTexture(ref_cameraData) end
---@return number
function UnityEngine.Rendering.Universal.UniversalRenderer:SupportedCameraStackingTypes() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.UniversalRenderer:Setup(context, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.UniversalRenderer:SetupLights(context, ref_renderingData) end
---@param ref_cullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.ScriptableCullingParameters,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.UniversalRenderer:SetupCullingParameters(ref_cullingParameters, ref_cameraData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.UniversalRenderer:FinishRendering(cmd) end

---@class UnityEngine.Rendering.Universal.CopyDepthMode
---@field AfterOpaques UnityEngine.Rendering.Universal.CopyDepthMode
---@field AfterTransparents UnityEngine.Rendering.Universal.CopyDepthMode
---@field ForcePrepass UnityEngine.Rendering.Universal.CopyDepthMode
UnityEngine.Rendering.Universal.CopyDepthMode = {}
---@alias CS.UnityEngine.Rendering.Universal.CopyDepthMode UnityEngine.Rendering.Universal.CopyDepthMode
CS.UnityEngine.Rendering.Universal.CopyDepthMode = UnityEngine.Rendering.Universal.CopyDepthMode


---@class UnityEngine.Rendering.Universal.UniversalRendererData : UnityEngine.Rendering.Universal.ScriptableRendererData
---@field postProcessData UnityEngine.Rendering.Universal.PostProcessData
---@field xrSystemData UnityEngine.Rendering.Universal.XRSystemData
---@field shaders UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources
---@field opaqueLayerMask UnityEngine.LayerMask
---@field transparentLayerMask UnityEngine.LayerMask
---@field defaultStencilState UnityEngine.Rendering.Universal.StencilStateData
---@field shadowTransparentReceive boolean
---@field renderingMode UnityEngine.Rendering.Universal.RenderingMode
---@field depthPrimingMode UnityEngine.Rendering.Universal.DepthPrimingMode
---@field copyDepthMode UnityEngine.Rendering.Universal.CopyDepthMode
---@field accurateGbufferNormals boolean
---@field intermediateTextureMode UnityEngine.Rendering.Universal.IntermediateTextureMode
UnityEngine.Rendering.Universal.UniversalRendererData = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRendererData UnityEngine.Rendering.Universal.UniversalRendererData
CS.UnityEngine.Rendering.Universal.UniversalRendererData = UnityEngine.Rendering.Universal.UniversalRendererData

---@return UnityEngine.Rendering.Universal.UniversalRendererData
function UnityEngine.Rendering.Universal.UniversalRendererData.New() end

---@class UnityEngine.Rendering.Universal.ClearTargetsPass : System.Object
UnityEngine.Rendering.Universal.ClearTargetsPass = {}
---@alias CS.UnityEngine.Rendering.Universal.ClearTargetsPass UnityEngine.Rendering.Universal.ClearTargetsPass
CS.UnityEngine.Rendering.Universal.ClearTargetsPass = UnityEngine.Rendering.Universal.ClearTargetsPass

---@return UnityEngine.Rendering.Universal.ClearTargetsPass
function UnityEngine.Rendering.Universal.ClearTargetsPass.New() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipeline : UnityEngine.Rendering.RenderPipeline
---@field k_ShaderTagName string
---@field maxShadowBias number
---@field minRenderScale number
---@field maxRenderScale number
---@field maxNumIterationsEnclosingSphere number
---@field maxPerObjectLights number
---@field maxVisibleAdditionalLights number
---@field asset UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset
---@field defaultSettings UnityEngine.Rendering.RenderPipelineGlobalSettings
UnityEngine.Rendering.Universal.UniversalRenderPipeline = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline UnityEngine.Rendering.Universal.UniversalRenderPipeline
CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline = UnityEngine.Rendering.Universal.UniversalRenderPipeline

---@param asset UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset
---@return UnityEngine.Rendering.Universal.UniversalRenderPipeline
function UnityEngine.Rendering.Universal.UniversalRenderPipeline.New(asset) end
---@param camera UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.Universal.UniversalRenderPipeline.IsGameCamera(camera) end
---@param lightType UnityEngine.LightType
---@param lightRange number
---@param lightLocalToWorldMatrix UnityEngine.Matrix4x4
---@param spotAngle number
---@param innerSpotAngle System.Nullable
---@param out_lightAttenuation UnityEngine.Vector4
---@param out_lightSpotDir UnityEngine.Vector4
---@return ,UnityEngine.Vector4,UnityEngine.Vector4
function UnityEngine.Rendering.Universal.UniversalRenderPipeline.GetLightAttenuationAndSpotDirection(lightType, lightRange, lightLocalToWorldMatrix, spotAngle, innerSpotAngle, out_lightAttenuation, out_lightSpotDir) end
---@param lights Unity.Collections.NativeArray
---@param lightIndex number
---@param out_lightPos UnityEngine.Vector4
---@param out_lightColor UnityEngine.Vector4
---@param out_lightAttenuation UnityEngine.Vector4
---@param out_lightSpotDir UnityEngine.Vector4
---@param out_lightOcclusionProbeChannel UnityEngine.Vector4
---@return ,UnityEngine.Vector4,UnityEngine.Vector4,UnityEngine.Vector4,UnityEngine.Vector4,UnityEngine.Vector4
function UnityEngine.Rendering.Universal.UniversalRenderPipeline.InitializeLightConstants_Common(lights, lightIndex, out_lightPos, out_lightColor, out_lightAttenuation, out_lightSpotDir, out_lightOcclusionProbeChannel) end
---@return string
function UnityEngine.Rendering.Universal.UniversalRenderPipeline:ToString() end

---@class UnityEngine.Rendering.Universal.NativeArrayExtensions : System.Object
UnityEngine.Rendering.Universal.NativeArrayExtensions = {}
---@alias CS.UnityEngine.Rendering.Universal.NativeArrayExtensions UnityEngine.Rendering.Universal.NativeArrayExtensions
CS.UnityEngine.Rendering.Universal.NativeArrayExtensions = UnityEngine.Rendering.Universal.NativeArrayExtensions


---@class UnityEngine.Rendering.Universal.MixedLightingSetup
---@field None UnityEngine.Rendering.Universal.MixedLightingSetup
---@field ShadowMask UnityEngine.Rendering.Universal.MixedLightingSetup
---@field Subtractive UnityEngine.Rendering.Universal.MixedLightingSetup
UnityEngine.Rendering.Universal.MixedLightingSetup = {}
---@alias CS.UnityEngine.Rendering.Universal.MixedLightingSetup UnityEngine.Rendering.Universal.MixedLightingSetup
CS.UnityEngine.Rendering.Universal.MixedLightingSetup = UnityEngine.Rendering.Universal.MixedLightingSetup


---@class UnityEngine.Rendering.Universal.ImageScalingMode
---@field None UnityEngine.Rendering.Universal.ImageScalingMode
---@field Upscaling UnityEngine.Rendering.Universal.ImageScalingMode
---@field Downscaling UnityEngine.Rendering.Universal.ImageScalingMode
UnityEngine.Rendering.Universal.ImageScalingMode = {}
---@alias CS.UnityEngine.Rendering.Universal.ImageScalingMode UnityEngine.Rendering.Universal.ImageScalingMode
CS.UnityEngine.Rendering.Universal.ImageScalingMode = UnityEngine.Rendering.Universal.ImageScalingMode


---@class UnityEngine.Rendering.Universal.ImageUpscalingFilter
---@field Linear UnityEngine.Rendering.Universal.ImageUpscalingFilter
---@field Point UnityEngine.Rendering.Universal.ImageUpscalingFilter
---@field FSR UnityEngine.Rendering.Universal.ImageUpscalingFilter
UnityEngine.Rendering.Universal.ImageUpscalingFilter = {}
---@alias CS.UnityEngine.Rendering.Universal.ImageUpscalingFilter UnityEngine.Rendering.Universal.ImageUpscalingFilter
CS.UnityEngine.Rendering.Universal.ImageUpscalingFilter = UnityEngine.Rendering.Universal.ImageUpscalingFilter


---@class UnityEngine.Rendering.Universal.RenderingData : System.ValueType
---@field cullResults UnityEngine.Rendering.CullingResults
---@field cameraData UnityEngine.Rendering.Universal.CameraData
---@field lightData UnityEngine.Rendering.Universal.LightData
---@field shadowData UnityEngine.Rendering.Universal.ShadowData
---@field postProcessingData UnityEngine.Rendering.Universal.PostProcessingData
---@field supportsDynamicBatching boolean
---@field perObjectData UnityEngine.Rendering.PerObjectData
---@field postProcessingEnabled boolean
UnityEngine.Rendering.Universal.RenderingData = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderingData UnityEngine.Rendering.Universal.RenderingData
CS.UnityEngine.Rendering.Universal.RenderingData = UnityEngine.Rendering.Universal.RenderingData


---@class UnityEngine.Rendering.Universal.LightData : System.ValueType
---@field mainLightIndex number
---@field additionalLightsCount number
---@field maxPerObjectAdditionalLightsCount number
---@field visibleLights Unity.Collections.NativeArray
---@field shadeAdditionalLightsPerVertex boolean
---@field supportsMixedLighting boolean
---@field reflectionProbeBoxProjection boolean
---@field reflectionProbeBlending boolean
---@field supportsLightLayers boolean
---@field supportsAdditionalLights boolean
UnityEngine.Rendering.Universal.LightData = {}
---@alias CS.UnityEngine.Rendering.Universal.LightData UnityEngine.Rendering.Universal.LightData
CS.UnityEngine.Rendering.Universal.LightData = UnityEngine.Rendering.Universal.LightData


---@class UnityEngine.Rendering.Universal.CameraData : System.ValueType
---@field camera UnityEngine.Camera
---@field renderType UnityEngine.Rendering.Universal.CameraRenderType
---@field targetTexture UnityEngine.RenderTexture
---@field cameraTargetDescriptor UnityEngine.RenderTextureDescriptor
---@field renderScale number
---@field clearDepth boolean
---@field cameraType UnityEngine.CameraType
---@field isDefaultViewport boolean
---@field isHdrEnabled boolean
---@field allowHDROutput boolean
---@field requiresDepthTexture boolean
---@field requiresOpaqueTexture boolean
---@field postProcessingRequiresDepthTexture boolean
---@field xrRendering boolean
---@field defaultOpaqueSortFlags UnityEngine.Rendering.SortingCriteria
---@field maxShadowDistance number
---@field postProcessEnabled boolean
---@field captureActions System.Collections.Generic.IEnumerator
---@field volumeLayerMask UnityEngine.LayerMask
---@field volumeTrigger UnityEngine.Transform
---@field isStopNaNEnabled boolean
---@field isDitheringEnabled boolean
---@field antialiasing UnityEngine.Rendering.Universal.AntialiasingMode
---@field antialiasingQuality UnityEngine.Rendering.Universal.AntialiasingQuality
---@field renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@field resolveFinalTarget boolean
---@field worldSpaceCameraPos UnityEngine.Vector3
---@field backgroundColor UnityEngine.Color
---@field baseCamera UnityEngine.Camera
---@field scaledWidth number
---@field scaledHeight number
---@field isSceneViewCamera boolean
---@field isPreviewCamera boolean
---@field isHDROutputActive boolean
---@field hdrDisplayInformation UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation
---@field hdrDisplayColorGamut UnityEngine.ColorGamut
---@field rendersOverlayUI boolean
---@field xr UnityEngine.Experimental.Rendering.XRPass
UnityEngine.Rendering.Universal.CameraData = {}
---@alias CS.UnityEngine.Rendering.Universal.CameraData UnityEngine.Rendering.Universal.CameraData
CS.UnityEngine.Rendering.Universal.CameraData = UnityEngine.Rendering.Universal.CameraData

---@param viewIndex number
---@return UnityEngine.Matrix4x4
function UnityEngine.Rendering.Universal.CameraData:GetViewMatrix(viewIndex) end
---@param viewIndex number
---@return UnityEngine.Matrix4x4
function UnityEngine.Rendering.Universal.CameraData:GetProjectionMatrix(viewIndex) end
---@param viewIndex number
---@return UnityEngine.Matrix4x4
function UnityEngine.Rendering.Universal.CameraData:GetGPUProjectionMatrix(viewIndex) end
---@param viewIndex number
---@return UnityEngine.Matrix4x4
function UnityEngine.Rendering.Universal.CameraData:GetGPUProjectionMatrixNoJitter(viewIndex) end
---@param handle UnityEngine.Rendering.RTHandle
---@return boolean
function UnityEngine.Rendering.Universal.CameraData:IsHandleYFlipped(handle) end
---@return boolean
function UnityEngine.Rendering.Universal.CameraData:IsCameraProjectionMatrixFlipped() end
---@param color UnityEngine.Rendering.RTHandle
---@param depth UnityEngine.Rendering.RTHandle
---@return boolean
function UnityEngine.Rendering.Universal.CameraData:IsRenderTargetProjectionMatrixFlipped(color, depth) end

---@class UnityEngine.Rendering.Universal.ShadowData : System.ValueType
---@field supportsMainLightShadows boolean
---@field mainLightShadowmapWidth number
---@field mainLightShadowmapHeight number
---@field mainLightShadowCascadesCount number
---@field mainLightShadowCascadesSplit UnityEngine.Vector3
---@field mainLightShadowCascadeBorder number
---@field supportsAdditionalLightShadows boolean
---@field additionalLightsShadowmapWidth number
---@field additionalLightsShadowmapHeight number
---@field supportsSoftShadows boolean
---@field shadowmapDepthBufferBits number
---@field bias System.Collections.Generic.List
---@field resolution System.Collections.Generic.List
UnityEngine.Rendering.Universal.ShadowData = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowData UnityEngine.Rendering.Universal.ShadowData
CS.UnityEngine.Rendering.Universal.ShadowData = UnityEngine.Rendering.Universal.ShadowData


---@class UnityEngine.Rendering.Universal.PreTile : System.ValueType
---@field planeLeft Unity.Mathematics.float4
---@field planeRight Unity.Mathematics.float4
---@field planeBottom Unity.Mathematics.float4
---@field planeTop Unity.Mathematics.float4
UnityEngine.Rendering.Universal.PreTile = {}
---@alias CS.UnityEngine.Rendering.Universal.PreTile UnityEngine.Rendering.Universal.PreTile
CS.UnityEngine.Rendering.Universal.PreTile = UnityEngine.Rendering.Universal.PreTile


---@class UnityEngine.Rendering.Universal.TileData : System.ValueType
---@field tileID number
---@field listBitMask number
---@field relLightOffset number
---@field unused number
UnityEngine.Rendering.Universal.TileData = {}
---@alias CS.UnityEngine.Rendering.Universal.TileData UnityEngine.Rendering.Universal.TileData
CS.UnityEngine.Rendering.Universal.TileData = UnityEngine.Rendering.Universal.TileData


---@class UnityEngine.Rendering.Universal.PunctualLightData : System.ValueType
---@field wsPos UnityEngine.Vector3
---@field radius number
---@field color UnityEngine.Vector4
---@field attenuation UnityEngine.Vector4
---@field spotDirection UnityEngine.Vector3
---@field flags number
---@field occlusionProbeInfo UnityEngine.Vector4
---@field layerMask number
UnityEngine.Rendering.Universal.PunctualLightData = {}
---@alias CS.UnityEngine.Rendering.Universal.PunctualLightData UnityEngine.Rendering.Universal.PunctualLightData
CS.UnityEngine.Rendering.Universal.PunctualLightData = UnityEngine.Rendering.Universal.PunctualLightData


---@class UnityEngine.Rendering.Universal.ShaderPropertyId : System.Object
---@field glossyEnvironmentColor number
---@field subtractiveShadowColor number
---@field glossyEnvironmentCubeMap number
---@field glossyEnvironmentCubeMapHDR number
---@field ambientSkyColor number
---@field ambientEquatorColor number
---@field ambientGroundColor number
---@field time number
---@field sinTime number
---@field cosTime number
---@field deltaTime number
---@field timeParameters number
---@field scaledScreenParams number
---@field worldSpaceCameraPos number
---@field screenParams number
---@field alphaToMaskAvailable number
---@field projectionParams number
---@field zBufferParams number
---@field orthoParams number
---@field globalMipBias number
---@field screenSize number
---@field screenCoordScaleBias number
---@field screenSizeOverride number
---@field viewMatrix number
---@field projectionMatrix number
---@field viewAndProjectionMatrix number
---@field inverseViewMatrix number
---@field inverseProjectionMatrix number
---@field inverseViewAndProjectionMatrix number
---@field cameraProjectionMatrix number
---@field inverseCameraProjectionMatrix number
---@field worldToCameraMatrix number
---@field cameraToWorldMatrix number
---@field shadowBias number
---@field lightDirection number
---@field lightPosition number
---@field cameraWorldClipPlanes number
---@field billboardNormal number
---@field billboardTangent number
---@field billboardCameraParams number
---@field blitTexture number
---@field blitScaleBias number
---@field sourceTex number
---@field scaleBias number
---@field scaleBiasRt number
---@field rendererColor number
---@field ditheringTexture number
---@field ditheringTextureInvSize number
---@field renderingLayerMaxInt number
---@field renderingLayerRcpMaxInt number
---@field overlayUITexture number
---@field hdrOutputLuminanceParams number
---@field hdrOutputGradingParams number
UnityEngine.Rendering.Universal.ShaderPropertyId = {}
---@alias CS.UnityEngine.Rendering.Universal.ShaderPropertyId UnityEngine.Rendering.Universal.ShaderPropertyId
CS.UnityEngine.Rendering.Universal.ShaderPropertyId = UnityEngine.Rendering.Universal.ShaderPropertyId


---@class UnityEngine.Rendering.Universal.PostProcessingData : System.ValueType
---@field gradingMode UnityEngine.Rendering.Universal.ColorGradingMode
---@field lutSize number
---@field useFastSRGBLinearConversion boolean
---@field supportDataDrivenLensFlare boolean
UnityEngine.Rendering.Universal.PostProcessingData = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessingData UnityEngine.Rendering.Universal.PostProcessingData
CS.UnityEngine.Rendering.Universal.PostProcessingData = UnityEngine.Rendering.Universal.PostProcessingData


---@class UnityEngine.Rendering.Universal.ShaderKeywordStrings : System.Object
---@field MainLightShadows string
---@field MainLightShadowCascades string
---@field MainLightShadowScreen string
---@field CastingPunctualLightShadow string
---@field AdditionalLightsVertex string
---@field AdditionalLightsPixel string
---@field AdditionalLightShadows string
---@field ReflectionProbeBoxProjection string
---@field ReflectionProbeBlending string
---@field SoftShadows string
---@field SoftShadowsLow string
---@field SoftShadowsMedium string
---@field SoftShadowsHigh string
---@field MixedLightingSubtractive string
---@field LightmapShadowMixing string
---@field ShadowsShadowMask string
---@field LightLayers string
---@field RenderPassEnabled string
---@field BillboardFaceCameraPos string
---@field LightCookies string
---@field DepthNoMsaa string
---@field DepthMsaa2 string
---@field DepthMsaa4 string
---@field DepthMsaa8 string
---@field LinearToSRGBConversion string
---@field DBufferMRT1 string
---@field DBufferMRT2 string
---@field DBufferMRT3 string
---@field DecalNormalBlendLow string
---@field DecalNormalBlendMedium string
---@field DecalNormalBlendHigh string
---@field DecalLayers string
---@field WriteRenderingLayers string
---@field SmaaLow string
---@field SmaaMedium string
---@field SmaaHigh string
---@field PaniniGeneric string
---@field PaniniUnitDistance string
---@field BloomLQ string
---@field BloomHQ string
---@field BloomLQDirt string
---@field BloomHQDirt string
---@field UseRGBM string
---@field Distortion string
---@field ChromaticAberration string
---@field HDRGrading string
---@field TonemapACES string
---@field TonemapNeutral string
---@field FilmGrain string
---@field Fxaa string
---@field Dithering string
---@field ScreenSpaceOcclusion string
---@field PointSampling string
---@field Rcas string
---@field EasuRcasAndHDRInput string
---@field Gamma20 string
---@field FxaaAndGamma20 string
---@field HighQualitySampling string
---@field _SPOT string
---@field _DIRECTIONAL string
---@field _POINT string
---@field _DEFERRED_STENCIL string
---@field _DEFERRED_FIRST_LIGHT string
---@field _DEFERRED_MAIN_LIGHT string
---@field _GBUFFER_NORMALS_OCT string
---@field _DEFERRED_MIXED_LIGHTING string
---@field LIGHTMAP_ON string
---@field DYNAMICLIGHTMAP_ON string
---@field _ALPHATEST_ON string
---@field DIRLIGHTMAP_COMBINED string
---@field _DETAIL_MULX2 string
---@field _DETAIL_SCALED string
---@field _CLEARCOAT string
---@field _CLEARCOATMAP string
---@field DEBUG_DISPLAY string
---@field LOD_FADE_CROSSFADE string
---@field USE_UNITY_CROSSFADE string
---@field _EMISSION string
---@field _RECEIVE_SHADOWS_OFF string
---@field _SURFACE_TYPE_TRANSPARENT string
---@field _ALPHAPREMULTIPLY_ON string
---@field _ALPHAMODULATE_ON string
---@field _NORMALMAP string
---@field EDITOR_VISUALIZATION string
---@field DisableTexture2DXArray string
---@field BlitSingleSlice string
---@field XROcclusionMeshCombined string
---@field SCREEN_COORD_OVERRIDE string
---@field DOWNSAMPLING_SIZE_2 string
---@field DOWNSAMPLING_SIZE_4 string
---@field DOWNSAMPLING_SIZE_8 string
---@field DOWNSAMPLING_SIZE_16 string
---@field FoveatedRenderingNonUniformRaster string
---@field EVALUATE_SH_MIXED string
---@field EVALUATE_SH_VERTEX string
---@field UseDrawProcedural string
UnityEngine.Rendering.Universal.ShaderKeywordStrings = {}
---@alias CS.UnityEngine.Rendering.Universal.ShaderKeywordStrings UnityEngine.Rendering.Universal.ShaderKeywordStrings
CS.UnityEngine.Rendering.Universal.ShaderKeywordStrings = UnityEngine.Rendering.Universal.ShaderKeywordStrings


---@class UnityEngine.Rendering.Universal.URPProfileId
---@field UniversalRenderTotal UnityEngine.Rendering.Universal.URPProfileId
---@field UpdateVolumeFramework UnityEngine.Rendering.Universal.URPProfileId
---@field RenderCameraStack UnityEngine.Rendering.Universal.URPProfileId
---@field AdditionalLightsShadow UnityEngine.Rendering.Universal.URPProfileId
---@field ColorGradingLUT UnityEngine.Rendering.Universal.URPProfileId
---@field CopyColor UnityEngine.Rendering.Universal.URPProfileId
---@field CopyDepth UnityEngine.Rendering.Universal.URPProfileId
---@field DepthNormalPrepass UnityEngine.Rendering.Universal.URPProfileId
---@field DepthPrepass UnityEngine.Rendering.Universal.URPProfileId
---@field UpdateReflectionProbeAtlas UnityEngine.Rendering.Universal.URPProfileId
---@field DrawOpaqueObjects UnityEngine.Rendering.Universal.URPProfileId
---@field DrawTransparentObjects UnityEngine.Rendering.Universal.URPProfileId
---@field DrawScreenSpaceUI UnityEngine.Rendering.Universal.URPProfileId
---@field LightCookies UnityEngine.Rendering.Universal.URPProfileId
---@field MainLightShadow UnityEngine.Rendering.Universal.URPProfileId
---@field ResolveShadows UnityEngine.Rendering.Universal.URPProfileId
---@field SSAO UnityEngine.Rendering.Universal.URPProfileId
---@field StopNaNs UnityEngine.Rendering.Universal.URPProfileId
---@field SMAA UnityEngine.Rendering.Universal.URPProfileId
---@field GaussianDepthOfField UnityEngine.Rendering.Universal.URPProfileId
---@field BokehDepthOfField UnityEngine.Rendering.Universal.URPProfileId
---@field TemporalAA UnityEngine.Rendering.Universal.URPProfileId
---@field MotionBlur UnityEngine.Rendering.Universal.URPProfileId
---@field PaniniProjection UnityEngine.Rendering.Universal.URPProfileId
---@field UberPostProcess UnityEngine.Rendering.Universal.URPProfileId
---@field Bloom UnityEngine.Rendering.Universal.URPProfileId
---@field LensFlareDataDrivenComputeOcclusion UnityEngine.Rendering.Universal.URPProfileId
---@field LensFlareDataDriven UnityEngine.Rendering.Universal.URPProfileId
---@field MotionVectors UnityEngine.Rendering.Universal.URPProfileId
---@field DrawFullscreen UnityEngine.Rendering.Universal.URPProfileId
---@field FinalBlit UnityEngine.Rendering.Universal.URPProfileId
UnityEngine.Rendering.Universal.URPProfileId = {}
---@alias CS.UnityEngine.Rendering.Universal.URPProfileId UnityEngine.Rendering.Universal.URPProfileId
CS.UnityEngine.Rendering.Universal.URPProfileId = UnityEngine.Rendering.Universal.URPProfileId


---@class UnityEngine.Rendering.Universal.PlatformAutoDetect : System.Object
UnityEngine.Rendering.Universal.PlatformAutoDetect = {}
---@alias CS.UnityEngine.Rendering.Universal.PlatformAutoDetect UnityEngine.Rendering.Universal.PlatformAutoDetect
CS.UnityEngine.Rendering.Universal.PlatformAutoDetect = UnityEngine.Rendering.Universal.PlatformAutoDetect


---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings : UnityEngine.Rendering.RenderPipelineGlobalSettings
---@field defaultAssetName string
---@field instance UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings
---@field renderingLayerMaskNames System.String[]
---@field prefixedRenderingLayerMaskNames System.String[]
---@field validRenderingLayers number
---@field stripDebugVariants boolean
---@field stripUnusedPostProcessingVariants boolean
---@field stripUnusedVariants boolean
---@field stripScreenCoordOverrideVariants boolean
---@field shaderVariantLogLevel UnityEngine.Rendering.ShaderVariantLogLevel
---@field exportShaderVariants boolean
UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings = UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings
function UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings.New() end
function UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings:OnBeforeSerialize() end
function UnityEngine.Rendering.Universal.UniversalRenderPipelineGlobalSettings:OnAfterDeserialize() end

---@class UnityEngine.Rendering.Universal.XRPassUniversal : UnityEngine.Experimental.Rendering.XRPass
UnityEngine.Rendering.Universal.XRPassUniversal = {}
---@alias CS.UnityEngine.Rendering.Universal.XRPassUniversal UnityEngine.Rendering.Universal.XRPassUniversal
CS.UnityEngine.Rendering.Universal.XRPassUniversal = UnityEngine.Rendering.Universal.XRPassUniversal

---@return UnityEngine.Rendering.Universal.XRPassUniversal
function UnityEngine.Rendering.Universal.XRPassUniversal.New() end
---@param createInfo UnityEngine.Experimental.Rendering.XRPassCreateInfo
---@return UnityEngine.Experimental.Rendering.XRPass
function UnityEngine.Rendering.Universal.XRPassUniversal.Create(createInfo) end
function UnityEngine.Rendering.Universal.XRPassUniversal:Release() end

---@class UnityEngine.Rendering.Universal.XRSystemUniversal : System.Object
UnityEngine.Rendering.Universal.XRSystemUniversal = {}
---@alias CS.UnityEngine.Rendering.Universal.XRSystemUniversal UnityEngine.Rendering.Universal.XRSystemUniversal
CS.UnityEngine.Rendering.Universal.XRSystemUniversal = UnityEngine.Rendering.Universal.XRSystemUniversal


---@class UnityEngine.Rendering.Universal.LibTessDotNet.Dict : System.Object
UnityEngine.Rendering.Universal.LibTessDotNet.Dict = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Dict UnityEngine.Rendering.Universal.LibTessDotNet.Dict
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Dict = UnityEngine.Rendering.Universal.LibTessDotNet.Dict

---@param leq UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual[TValue]
---@return UnityEngine.Rendering.Universal.LibTessDotNet.Dict
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict.New(leq) end
---@param key TValue
---@return UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node[TValue]
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict:Insert(key) end
---@param node UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node[TValue]
---@param key TValue
---@return UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node[TValue]
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict:InsertBefore(node, key) end
---@param key TValue
---@return UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node[TValue]
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict:Find(key) end
---@return UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node[TValue]
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict:Min() end
---@param node UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node[TValue]
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict:Remove(node) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.Geom : System.Object
UnityEngine.Rendering.Universal.LibTessDotNet.Geom = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Geom UnityEngine.Rendering.Universal.LibTessDotNet.Geom
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Geom = UnityEngine.Rendering.Universal.LibTessDotNet.Geom

---@param rule UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
---@param n number
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.IsWindingInside(rule, n) end
---@param u UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param v UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param w UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.VertCCW(u, v, w) end
---@param lhs UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param rhs UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.VertEq(lhs, rhs) end
---@param lhs UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param rhs UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.VertLeq(lhs, rhs) end
---@param u UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param v UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param w UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return number
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.EdgeEval(u, v, w) end
---@param u UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param v UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param w UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return number
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.EdgeSign(u, v, w) end
---@param lhs UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param rhs UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.TransLeq(lhs, rhs) end
---@param u UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param v UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param w UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return number
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.TransEval(u, v, w) end
---@param u UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param v UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param w UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return number
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.TransSign(u, v, w) end
---@param e UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.EdgeGoesLeft(e) end
---@param e UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.EdgeGoesRight(e) end
---@param u UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param v UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@return number
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.VertL1dist(u, v) end
---@param eDst UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@param eSrc UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.AddWinding(eDst, eSrc) end
---@param a number
---@param x number
---@param b number
---@param y number
---@return number
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.Interpolate(a, x, b, y) end
---@param o1 UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param d1 UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param o2 UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param d2 UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param v UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
function UnityEngine.Rendering.Universal.LibTessDotNet.Geom.EdgeIntersect(o1, d1, o2, d2, v) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.Mesh : UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled
UnityEngine.Rendering.Universal.LibTessDotNet.Mesh = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Mesh UnityEngine.Rendering.Universal.LibTessDotNet.Mesh
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Mesh = UnityEngine.Rendering.Universal.LibTessDotNet.Mesh

---@return UnityEngine.Rendering.Universal.LibTessDotNet.Mesh
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh.New() end
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:Reset() end
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:OnFree() end
---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:MakeEdge() end
---@param eOrg UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@param eDst UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:Splice(eOrg, eDst) end
---@param eDel UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:Delete(eDel) end
---@param eOrg UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:AddEdgeVertex(eOrg) end
---@param eOrg UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:SplitEdge(eOrg) end
---@param eOrg UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@param eDst UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:Connect(eOrg, eDst) end
---@param fZap UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:ZapFace(fZap) end
---@param maxVertsPerFace number
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:MergeConvexFaces(maxVertsPerFace) end
function UnityEngine.Rendering.Universal.LibTessDotNet.Mesh:Check() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.Vec3 : System.ValueType
---@field Zero UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@field X number
---@field Y number
---@field Z number
---@field Item number
UnityEngine.Rendering.Universal.LibTessDotNet.Vec3 = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Vec3 UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Vec3 = UnityEngine.Rendering.Universal.LibTessDotNet.Vec3

---@param ref_lhs UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@param ref_rhs UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@param out_result UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@return ,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
function UnityEngine.Rendering.Universal.LibTessDotNet.Vec3.Sub(ref_lhs, ref_rhs, out_result) end
---@param ref_v UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@return ,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
function UnityEngine.Rendering.Universal.LibTessDotNet.Vec3.Neg(ref_v) end
---@param ref_u UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@param ref_v UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@param out_dot number
---@return ,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3,number
function UnityEngine.Rendering.Universal.LibTessDotNet.Vec3.Dot(ref_u, ref_v, out_dot) end
---@param ref_v UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@return ,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
function UnityEngine.Rendering.Universal.LibTessDotNet.Vec3.Normalize(ref_v) end
---@param ref_v UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@return number,UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
function UnityEngine.Rendering.Universal.LibTessDotNet.Vec3.LongAxis(ref_v) end
---@return string
function UnityEngine.Rendering.Universal.LibTessDotNet.Vec3:ToString() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils : System.Object
---@field Undef number
UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils
CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils = UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils

---@param eNext UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.MakeEdge(eNext) end
---@param a UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@param b UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Splice(a, b) end
---@param eOrig UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@param vNext UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.MakeVertex(eOrig, vNext) end
---@param eOrig UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
---@param fNext UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.MakeFace(eOrig, fNext) end
---@param eDel UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.KillEdge(eDel) end
---@param vDel UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
---@param newOrg UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.KillVertex(vDel, newOrg) end
---@param fDel UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face
---@param newLFace UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.KillFace(fDel, newLFace) end
---@param f UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face
---@return number
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.FaceArea(f) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle : System.ValueType
---@field Invalid number
UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle
CS.UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle = UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle


---@class UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap : System.Object
---@field Empty boolean
UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap
CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap = UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap

---@param initialSize number
---@param leq UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual[TValue]
---@return UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.New(initialSize, leq) end
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap:Init() end
---@param value TValue
---@return UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap:Insert(value) end
---@return TValue
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap:ExtractMin() end
---@return TValue
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap:Minimum() end
---@param handle UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap:Remove(handle) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue : System.Object
---@field Empty boolean
UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue
CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue = UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue

---@param initialSize number
---@param leq UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual[TValue]
---@return UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.New(initialSize, leq) end
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue:Init() end
---@param value TValue
---@return UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue:Insert(value) end
---@return TValue
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue:ExtractMin() end
---@return TValue
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue:Minimum() end
---@param handle UnityEngine.Rendering.Universal.LibTessDotNet.PQHandle
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue:Remove(handle) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.Tess : System.Object
---@field SUnitX number
---@field SUnitY number
---@field SentinelCoord number
---@field NoEmptyPolygons boolean
---@field UsePooling boolean
---@field Normal UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@field Vertices UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex[]
---@field VertexCount number
---@field Elements System.Int32[]
---@field ElementCount number
UnityEngine.Rendering.Universal.LibTessDotNet.Tess = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Tess UnityEngine.Rendering.Universal.LibTessDotNet.Tess
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Tess = UnityEngine.Rendering.Universal.LibTessDotNet.Tess

---@return UnityEngine.Rendering.Universal.LibTessDotNet.Tess
function UnityEngine.Rendering.Universal.LibTessDotNet.Tess.New() end
---@overload fun(self: UnityEngine.Rendering.Universal.LibTessDotNet.Tess, vertices: UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex[])
---@param vertices UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex[]
---@param forceOrientation UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation
function UnityEngine.Rendering.Universal.LibTessDotNet.Tess:AddContour(vertices, forceOrientation) end
---@overload fun(self: UnityEngine.Rendering.Universal.LibTessDotNet.Tess, windingRule: UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule, elementType: UnityEngine.Rendering.Universal.LibTessDotNet.ElementType, polySize: number)
---@param windingRule UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
---@param elementType UnityEngine.Rendering.Universal.LibTessDotNet.ElementType
---@param polySize number
---@param combineCallback UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback
function UnityEngine.Rendering.Universal.LibTessDotNet.Tess:Tessellate(windingRule, elementType, polySize, combineCallback) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
---@field EvenOdd UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
---@field NonZero UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
---@field Positive UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
---@field Negative UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
---@field AbsGeqTwo UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule
CS.UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule = UnityEngine.Rendering.Universal.LibTessDotNet.WindingRule


---@class UnityEngine.Rendering.Universal.LibTessDotNet.ElementType
---@field Polygons UnityEngine.Rendering.Universal.LibTessDotNet.ElementType
---@field ConnectedPolygons UnityEngine.Rendering.Universal.LibTessDotNet.ElementType
---@field BoundaryContours UnityEngine.Rendering.Universal.LibTessDotNet.ElementType
UnityEngine.Rendering.Universal.LibTessDotNet.ElementType = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.ElementType UnityEngine.Rendering.Universal.LibTessDotNet.ElementType
CS.UnityEngine.Rendering.Universal.LibTessDotNet.ElementType = UnityEngine.Rendering.Universal.LibTessDotNet.ElementType


---@class UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation
---@field Original UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation
---@field Clockwise UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation
---@field CounterClockwise UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation
UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation
CS.UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation = UnityEngine.Rendering.Universal.LibTessDotNet.ContourOrientation


---@class UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex : System.ValueType
---@field Position UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@field Data System.Object
UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex
CS.UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex = UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex

---@return string
function UnityEngine.Rendering.Universal.LibTessDotNet.ContourVertex:ToString() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback : System.MulticastDelegate
UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback
CS.UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback = UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback
function UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback.New(object, method) end
---@param position UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@param data System.Object[]
---@param weights System.Single[]
---@return System.Object
function UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback:Invoke(position, data, weights) end
---@param position UnityEngine.Rendering.Universal.LibTessDotNet.Vec3
---@param data System.Object[]
---@param weights System.Single[]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback:BeginInvoke(position, data, weights, callback, object) end
---@param result System.IAsyncResult
---@return System.Object
function UnityEngine.Rendering.Universal.LibTessDotNet.CombineCallback:EndInvoke(result) end

---@class UnityEngine.Rendering.Universal.Internal.DeferredConfig : System.Object
UnityEngine.Rendering.Universal.Internal.DeferredConfig = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DeferredConfig UnityEngine.Rendering.Universal.Internal.DeferredConfig
CS.UnityEngine.Rendering.Universal.Internal.DeferredConfig = UnityEngine.Rendering.Universal.Internal.DeferredConfig


---@class UnityEngine.Rendering.Universal.Internal.LightFlag
---@field SubtractiveMixedLighting UnityEngine.Rendering.Universal.Internal.LightFlag
UnityEngine.Rendering.Universal.Internal.LightFlag = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.LightFlag UnityEngine.Rendering.Universal.Internal.LightFlag
CS.UnityEngine.Rendering.Universal.Internal.LightFlag = UnityEngine.Rendering.Universal.Internal.LightFlag


---@class UnityEngine.Rendering.Universal.Internal.DeferredLights : System.Object
UnityEngine.Rendering.Universal.Internal.DeferredLights = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DeferredLights UnityEngine.Rendering.Universal.Internal.DeferredLights
CS.UnityEngine.Rendering.Universal.Internal.DeferredLights = UnityEngine.Rendering.Universal.Internal.DeferredLights

---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@param additionalLightsShadowCasterPass UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass
---@param hasDepthPrepass boolean
---@param hasNormalPrepass boolean
---@param hasRenderingLayerPrepass boolean
---@param depthCopyTexture UnityEngine.Rendering.RTHandle
---@param depthAttachment UnityEngine.Rendering.RTHandle
---@param colorAttachment UnityEngine.Rendering.RTHandle
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.DeferredLights:Setup(ref_renderingData, additionalLightsShadowCasterPass, hasDepthPrepass, hasNormalPrepass, hasRenderingLayerPrepass, depthCopyTexture, depthAttachment, colorAttachment) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.Internal.DeferredLights:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass
CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass = UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@return UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.New(evt) end
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass:Dispose() end
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return boolean,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass:Setup(ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass:Configure(cmd, cameraTextureDescriptor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass:Execute(context, ref_renderingData) end
---@param visibleLightIndex number
---@return number
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass:GetShadowLightIndexFromLightIndex(visibleLightIndex) end

---@class UnityEngine.Rendering.Universal.Internal.ForwardLights : System.Object
UnityEngine.Rendering.Universal.Internal.ForwardLights = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.ForwardLights UnityEngine.Rendering.Universal.Internal.ForwardLights
CS.UnityEngine.Rendering.Universal.Internal.ForwardLights = UnityEngine.Rendering.Universal.Internal.ForwardLights

---@return UnityEngine.Rendering.Universal.Internal.ForwardLights
function UnityEngine.Rendering.Universal.Internal.ForwardLights.New() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.ForwardLights:Setup(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.Internal.NormalReconstruction : System.Object
UnityEngine.Rendering.Universal.Internal.NormalReconstruction = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.NormalReconstruction UnityEngine.Rendering.Universal.Internal.NormalReconstruction
CS.UnityEngine.Rendering.Universal.Internal.NormalReconstruction = UnityEngine.Rendering.Universal.Internal.NormalReconstruction

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_cameraData UnityEngine.Rendering.Universal.CameraData
---@return ,UnityEngine.Rendering.Universal.CameraData
function UnityEngine.Rendering.Universal.Internal.NormalReconstruction.SetupProperties(cmd, ref_cameraData) end

---@class UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass
CS.UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass = UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param data UnityEngine.Rendering.Universal.PostProcessData
---@return UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass
function UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.New(evt, data) end
---@param ref_internalLut UnityEngine.Rendering.RTHandle
---@return ,UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass:Setup(ref_internalLut) end
---@param ref_postProcessingData UnityEngine.Rendering.Universal.PostProcessingData
---@param out_descriptor UnityEngine.RenderTextureDescriptor
---@param out_filterMode UnityEngine.FilterMode
---@return ,UnityEngine.Rendering.Universal.PostProcessingData,UnityEngine.RenderTextureDescriptor,UnityEngine.FilterMode
function UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass:ConfigureDescriptor(ref_postProcessingData, out_descriptor, out_filterMode) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass:Execute(context, ref_renderingData) end
function UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass:Cleanup() end

---@class UnityEngine.Rendering.Universal.Internal.CopyColorPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.CopyColorPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.CopyColorPass UnityEngine.Rendering.Universal.Internal.CopyColorPass
CS.UnityEngine.Rendering.Universal.Internal.CopyColorPass = UnityEngine.Rendering.Universal.Internal.CopyColorPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param samplingMaterial UnityEngine.Material
---@param copyColorMaterial UnityEngine.Material
---@return UnityEngine.Rendering.Universal.Internal.CopyColorPass
function UnityEngine.Rendering.Universal.Internal.CopyColorPass.New(evt, samplingMaterial, copyColorMaterial) end
---@param downsamplingMethod UnityEngine.Rendering.Universal.Downsampling
---@param ref_descriptor UnityEngine.RenderTextureDescriptor
---@param out_filterMode UnityEngine.FilterMode
---@return ,UnityEngine.RenderTextureDescriptor,UnityEngine.FilterMode
function UnityEngine.Rendering.Universal.Internal.CopyColorPass.ConfigureDescriptor(downsamplingMethod, ref_descriptor, out_filterMode) end
---@param source UnityEngine.Rendering.RTHandle
---@param destination UnityEngine.Rendering.RTHandle
---@param downsampling UnityEngine.Rendering.Universal.Downsampling
function UnityEngine.Rendering.Universal.Internal.CopyColorPass:Setup(source, destination, downsampling) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.CopyColorPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.CopyColorPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.Internal.CopyColorPass:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.Internal.CopyDepthPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.CopyDepthPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.CopyDepthPass UnityEngine.Rendering.Universal.Internal.CopyDepthPass
CS.UnityEngine.Rendering.Universal.Internal.CopyDepthPass = UnityEngine.Rendering.Universal.Internal.CopyDepthPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param copyDepthMaterial UnityEngine.Material
---@param shouldClear boolean
---@param copyToDepth boolean
---@param copyResolvedDepth boolean
---@return UnityEngine.Rendering.Universal.Internal.CopyDepthPass
function UnityEngine.Rendering.Universal.Internal.CopyDepthPass.New(evt, copyDepthMaterial, shouldClear, copyToDepth, copyResolvedDepth) end
---@param source UnityEngine.Rendering.RTHandle
---@param destination UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.CopyDepthPass:Setup(source, destination) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.CopyDepthPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.CopyDepthPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.Internal.CopyDepthPass:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.Internal.DeferredPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.DeferredPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DeferredPass UnityEngine.Rendering.Universal.Internal.DeferredPass
CS.UnityEngine.Rendering.Universal.Internal.DeferredPass = UnityEngine.Rendering.Universal.Internal.DeferredPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param deferredLights UnityEngine.Rendering.Universal.Internal.DeferredLights
---@return UnityEngine.Rendering.Universal.Internal.DeferredPass
function UnityEngine.Rendering.Universal.Internal.DeferredPass.New(evt, deferredLights) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescripor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.Internal.DeferredPass:Configure(cmd, cameraTextureDescripor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.DeferredPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.Internal.DeferredPass:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass
CS.UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass = UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@param layerMask UnityEngine.LayerMask
---@return UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass
function UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.New(evt, renderQueueRange, layerMask) end
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.GetGraphicsFormat() end
---@overload fun(self: UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass, depthHandle: UnityEngine.Rendering.RTHandle, normalHandle: UnityEngine.Rendering.RTHandle)
---@param depthHandle UnityEngine.Rendering.RTHandle
---@param normalHandle UnityEngine.Rendering.RTHandle
---@param decalLayerHandle UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass:Setup(depthHandle, normalHandle, decalLayerHandle) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass:OnCameraCleanup(cmd) end

---@class UnityEngine.Rendering.Universal.Internal.DepthOnlyPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.DepthOnlyPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DepthOnlyPass UnityEngine.Rendering.Universal.Internal.DepthOnlyPass
CS.UnityEngine.Rendering.Universal.Internal.DepthOnlyPass = UnityEngine.Rendering.Universal.Internal.DepthOnlyPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@param layerMask UnityEngine.LayerMask
---@return UnityEngine.Rendering.Universal.Internal.DepthOnlyPass
function UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.New(evt, renderQueueRange, layerMask) end
---@param baseDescriptor UnityEngine.RenderTextureDescriptor
---@param depthAttachmentHandle UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.DepthOnlyPass:Setup(baseDescriptor, depthAttachmentHandle) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.DepthOnlyPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.DepthOnlyPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass : UnityEngine.Rendering.Universal.Internal.DrawObjectsPass
UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass
CS.UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass = UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass

---@param profilerTag UnityEngine.Rendering.Universal.URPProfileId
---@param opaque boolean
---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@param layerMask UnityEngine.LayerMask
---@param stencilState UnityEngine.Rendering.StencilState
---@param stencilReference number
---@return UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass
function UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass.New(profilerTag, opaque, evt, renderQueueRange, layerMask, stencilState, stencilReference) end
---@param colorAttachment UnityEngine.Rendering.RTHandle
---@param renderingLayersTexture UnityEngine.Rendering.RTHandle
---@param depthAttachment UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass:Setup(colorAttachment, renderingLayersTexture, depthAttachment) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.Internal.DrawObjectsWithRenderingLayersPass:Configure(cmd, cameraTextureDescriptor) end

---@class UnityEngine.Rendering.Universal.Internal.DrawObjectsPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
---@field m_IsActiveTargetBackBuffer boolean
---@field m_ShouldTransparentsReceiveShadows boolean
UnityEngine.Rendering.Universal.Internal.DrawObjectsPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DrawObjectsPass UnityEngine.Rendering.Universal.Internal.DrawObjectsPass
CS.UnityEngine.Rendering.Universal.Internal.DrawObjectsPass = UnityEngine.Rendering.Universal.Internal.DrawObjectsPass

---@overload fun(profilerTag: string, shaderTagIds: UnityEngine.Rendering.ShaderTagId[], opaque: boolean, evt: UnityEngine.Rendering.Universal.RenderPassEvent, renderQueueRange: UnityEngine.Rendering.RenderQueueRange, layerMask: UnityEngine.LayerMask, stencilState: UnityEngine.Rendering.StencilState, stencilReference: number) : UnityEngine.Rendering.Universal.Internal.DrawObjectsPass
---@param profilerTag string
---@param opaque boolean
---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@param layerMask UnityEngine.LayerMask
---@param stencilState UnityEngine.Rendering.StencilState
---@param stencilReference number
---@return UnityEngine.Rendering.Universal.Internal.DrawObjectsPass
function UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.New(profilerTag, opaque, evt, renderQueueRange, layerMask, stencilState, stencilReference) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.DrawObjectsPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.Internal.FinalBlitPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.FinalBlitPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass UnityEngine.Rendering.Universal.Internal.FinalBlitPass
CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass = UnityEngine.Rendering.Universal.Internal.FinalBlitPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param blitMaterial UnityEngine.Material
---@param blitHDRMaterial UnityEngine.Material
---@return UnityEngine.Rendering.Universal.Internal.FinalBlitPass
function UnityEngine.Rendering.Universal.Internal.FinalBlitPass.New(evt, blitMaterial, blitHDRMaterial) end
function UnityEngine.Rendering.Universal.Internal.FinalBlitPass:Dispose() end
---@param baseDescriptor UnityEngine.RenderTextureDescriptor
---@param colorHandle UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.FinalBlitPass:Setup(baseDescriptor, colorHandle) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.FinalBlitPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.FinalBlitPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.Internal.GBufferPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.GBufferPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.GBufferPass UnityEngine.Rendering.Universal.Internal.GBufferPass
CS.UnityEngine.Rendering.Universal.Internal.GBufferPass = UnityEngine.Rendering.Universal.Internal.GBufferPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@param renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@param layerMask UnityEngine.LayerMask
---@param stencilState UnityEngine.Rendering.StencilState
---@param stencilReference number
---@param deferredLights UnityEngine.Rendering.Universal.Internal.DeferredLights
---@return UnityEngine.Rendering.Universal.Internal.GBufferPass
function UnityEngine.Rendering.Universal.Internal.GBufferPass.New(evt, renderQueueRange, layerMask, stencilState, stencilReference, deferredLights) end
function UnityEngine.Rendering.Universal.Internal.GBufferPass:Dispose() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.Internal.GBufferPass:Configure(cmd, cameraTextureDescriptor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.GBufferPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass
CS.UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass = UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass

---@param evt UnityEngine.Rendering.Universal.RenderPassEvent
---@return UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass
function UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.New(evt) end
function UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass:Dispose() end
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return boolean,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass:Setup(ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass:Configure(cmd, cameraTextureDescriptor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem : System.Object
UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem
CS.UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem = UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem

---@param name string
---@return UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem.New(name) end
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:Dispose() end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:PeekBackBuffer() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:GetBackBuffer(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:GetFrontBuffer(cmd) end
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:Swap() end
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:Clear() end
---@param desc UnityEngine.RenderTextureDescriptor
---@param filterMode UnityEngine.FilterMode
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:SetCameraSettings(desc, filterMode) end
---@return UnityEngine.Rendering.RTHandle
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:GetBufferA() end
---@param enable boolean
function UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem:EnableMSAA(enable) end

---@class UnityEngine.Rendering.Universal.Internal.StencilUsage
---@field UserMask UnityEngine.Rendering.Universal.Internal.StencilUsage
---@field StencilLight UnityEngine.Rendering.Universal.Internal.StencilUsage
---@field MaterialMask UnityEngine.Rendering.Universal.Internal.StencilUsage
---@field MaterialUnlit UnityEngine.Rendering.Universal.Internal.StencilUsage
---@field MaterialLit UnityEngine.Rendering.Universal.Internal.StencilUsage
---@field MaterialSimpleLit UnityEngine.Rendering.Universal.Internal.StencilUsage
UnityEngine.Rendering.Universal.Internal.StencilUsage = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.StencilUsage UnityEngine.Rendering.Universal.Internal.StencilUsage
CS.UnityEngine.Rendering.Universal.Internal.StencilUsage = UnityEngine.Rendering.Universal.Internal.StencilUsage


---@class UnityEngine.Rendering.Universal.UTess.ArraySlice : System.ValueType
---@field Item T
---@field Stride number
---@field Length number
UnityEngine.Rendering.Universal.UTess.ArraySlice = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.ArraySlice UnityEngine.Rendering.Universal.UTess.ArraySlice
CS.UnityEngine.Rendering.Universal.UTess.ArraySlice = UnityEngine.Rendering.Universal.UTess.ArraySlice

---@param array Unity.Collections.NativeArray[T]
---@param start number
---@param length number
---@return UnityEngine.Rendering.Universal.UTess.ArraySlice
function UnityEngine.Rendering.Universal.UTess.ArraySlice.New(array, start, length) end
---@param dataPointer System.Void*
---@param stride number
---@param length number
---@return UnityEngine.Rendering.Universal.UTess.ArraySlice
function UnityEngine.Rendering.Universal.UTess.ArraySlice.ConvertExistingDataToArraySlice(dataPointer, stride, length) end
---@overload fun(self: UnityEngine.Rendering.Universal.UTess.ArraySlice, other: UnityEngine.Rendering.Universal.UTess.ArraySlice) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.Universal.UTess.ArraySlice:Equals(obj) end
---@return number
function UnityEngine.Rendering.Universal.UTess.ArraySlice:GetHashCode() end

---@class UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView : System.Object
---@field Items T[]
UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView
CS.UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView = UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView

---@param slice UnityEngine.Rendering.Universal.UTess.ArraySlice[T]
---@return UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView
function UnityEngine.Rendering.Universal.UTess.ArraySliceDebugView.New(slice) end

---@class UnityEngine.Rendering.Universal.UTess.PlanarGraph : System.ValueType
UnityEngine.Rendering.Universal.UTess.PlanarGraph = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.PlanarGraph UnityEngine.Rendering.Universal.UTess.PlanarGraph
CS.UnityEngine.Rendering.Universal.UTess.PlanarGraph = UnityEngine.Rendering.Universal.UTess.PlanarGraph


---@class UnityEngine.Rendering.Universal.UTess.Refinery : System.ValueType
UnityEngine.Rendering.Universal.UTess.Refinery = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Refinery UnityEngine.Rendering.Universal.UTess.Refinery
CS.UnityEngine.Rendering.Universal.UTess.Refinery = UnityEngine.Rendering.Universal.UTess.Refinery


---@class UnityEngine.Rendering.Universal.UTess.Smoothen : System.ValueType
UnityEngine.Rendering.Universal.UTess.Smoothen = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Smoothen UnityEngine.Rendering.Universal.UTess.Smoothen
CS.UnityEngine.Rendering.Universal.UTess.Smoothen = UnityEngine.Rendering.Universal.UTess.Smoothen


---@class UnityEngine.Rendering.Universal.UTess.Tessellator : System.ValueType
UnityEngine.Rendering.Universal.UTess.Tessellator = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Tessellator UnityEngine.Rendering.Universal.UTess.Tessellator
CS.UnityEngine.Rendering.Universal.UTess.Tessellator = UnityEngine.Rendering.Universal.UTess.Tessellator


---@class UnityEngine.Rendering.Universal.UTess.UEventType
---@field EVENT_POINT UnityEngine.Rendering.Universal.UTess.UEventType
---@field EVENT_END UnityEngine.Rendering.Universal.UTess.UEventType
---@field EVENT_START UnityEngine.Rendering.Universal.UTess.UEventType
UnityEngine.Rendering.Universal.UTess.UEventType = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UEventType UnityEngine.Rendering.Universal.UTess.UEventType
CS.UnityEngine.Rendering.Universal.UTess.UEventType = UnityEngine.Rendering.Universal.UTess.UEventType


---@class UnityEngine.Rendering.Universal.UTess.UEvent : System.ValueType
---@field a Unity.Mathematics.float2
---@field b Unity.Mathematics.float2
---@field idx number
---@field type number
UnityEngine.Rendering.Universal.UTess.UEvent = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UEvent UnityEngine.Rendering.Universal.UTess.UEvent
CS.UnityEngine.Rendering.Universal.UTess.UEvent = UnityEngine.Rendering.Universal.UTess.UEvent


---@class UnityEngine.Rendering.Universal.UTess.UHull : System.ValueType
---@field a Unity.Mathematics.float2
---@field b Unity.Mathematics.float2
---@field idx number
---@field ilarray UnityEngine.Rendering.Universal.UTess.ArraySlice
---@field ilcount number
---@field iuarray UnityEngine.Rendering.Universal.UTess.ArraySlice
---@field iucount number
UnityEngine.Rendering.Universal.UTess.UHull = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UHull UnityEngine.Rendering.Universal.UTess.UHull
CS.UnityEngine.Rendering.Universal.UTess.UHull = UnityEngine.Rendering.Universal.UTess.UHull


---@class UnityEngine.Rendering.Universal.UTess.UStar : System.ValueType
---@field points UnityEngine.Rendering.Universal.UTess.ArraySlice
---@field pointCount number
UnityEngine.Rendering.Universal.UTess.UStar = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UStar UnityEngine.Rendering.Universal.UTess.UStar
CS.UnityEngine.Rendering.Universal.UTess.UStar = UnityEngine.Rendering.Universal.UTess.UStar


---@class UnityEngine.Rendering.Universal.UTess.UBounds : System.ValueType
---@field min Unity.Mathematics.double2
---@field max Unity.Mathematics.double2
UnityEngine.Rendering.Universal.UTess.UBounds = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UBounds UnityEngine.Rendering.Universal.UTess.UBounds
CS.UnityEngine.Rendering.Universal.UTess.UBounds = UnityEngine.Rendering.Universal.UTess.UBounds


---@class UnityEngine.Rendering.Universal.UTess.UCircle : System.ValueType
---@field center Unity.Mathematics.float2
---@field radius number
UnityEngine.Rendering.Universal.UTess.UCircle = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UCircle UnityEngine.Rendering.Universal.UTess.UCircle
CS.UnityEngine.Rendering.Universal.UTess.UCircle = UnityEngine.Rendering.Universal.UTess.UCircle


---@class UnityEngine.Rendering.Universal.UTess.UTriangle : System.ValueType
---@field va Unity.Mathematics.float2
---@field vb Unity.Mathematics.float2
---@field vc Unity.Mathematics.float2
---@field c UnityEngine.Rendering.Universal.UTess.UCircle
---@field area number
---@field indices Unity.Mathematics.int3
UnityEngine.Rendering.Universal.UTess.UTriangle = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UTriangle UnityEngine.Rendering.Universal.UTess.UTriangle
CS.UnityEngine.Rendering.Universal.UTess.UTriangle = UnityEngine.Rendering.Universal.UTess.UTriangle


---@class UnityEngine.Rendering.Universal.UTess.UEncroachingSegment : System.ValueType
---@field a Unity.Mathematics.float2
---@field b Unity.Mathematics.float2
---@field index number
UnityEngine.Rendering.Universal.UTess.UEncroachingSegment = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.UEncroachingSegment UnityEngine.Rendering.Universal.UTess.UEncroachingSegment
CS.UnityEngine.Rendering.Universal.UTess.UEncroachingSegment = UnityEngine.Rendering.Universal.UTess.UEncroachingSegment


---@class UnityEngine.Rendering.Universal.UTess.ICondition2
UnityEngine.Rendering.Universal.UTess.ICondition2 = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.ICondition2 UnityEngine.Rendering.Universal.UTess.ICondition2
CS.UnityEngine.Rendering.Universal.UTess.ICondition2 = UnityEngine.Rendering.Universal.UTess.ICondition2

---@param x T
---@param y U
---@param ref_t number
---@return boolean,number
function UnityEngine.Rendering.Universal.UTess.ICondition2:Test(x, y, ref_t) end

---@class UnityEngine.Rendering.Universal.UTess.XCompare : System.ValueType
UnityEngine.Rendering.Universal.UTess.XCompare = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.XCompare UnityEngine.Rendering.Universal.UTess.XCompare
CS.UnityEngine.Rendering.Universal.UTess.XCompare = UnityEngine.Rendering.Universal.UTess.XCompare

---@param a number
---@param b number
---@return number
function UnityEngine.Rendering.Universal.UTess.XCompare:Compare(a, b) end

---@class UnityEngine.Rendering.Universal.UTess.IntersectionCompare : System.ValueType
---@field points Unity.Collections.NativeArray
---@field edges Unity.Collections.NativeArray
---@field xvasort UnityEngine.Rendering.Universal.UTess.IntersectionCompare.<xvasort>e__FixedBuffer
---@field xvbsort UnityEngine.Rendering.Universal.UTess.IntersectionCompare.<xvbsort>e__FixedBuffer
UnityEngine.Rendering.Universal.UTess.IntersectionCompare = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.IntersectionCompare UnityEngine.Rendering.Universal.UTess.IntersectionCompare
CS.UnityEngine.Rendering.Universal.UTess.IntersectionCompare = UnityEngine.Rendering.Universal.UTess.IntersectionCompare

---@param a Unity.Mathematics.int2
---@param b Unity.Mathematics.int2
---@return number
function UnityEngine.Rendering.Universal.UTess.IntersectionCompare:Compare(a, b) end

---@class UnityEngine.Rendering.Universal.UTess.TessEventCompare : System.ValueType
UnityEngine.Rendering.Universal.UTess.TessEventCompare = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.TessEventCompare UnityEngine.Rendering.Universal.UTess.TessEventCompare
CS.UnityEngine.Rendering.Universal.UTess.TessEventCompare = UnityEngine.Rendering.Universal.UTess.TessEventCompare

---@param a UnityEngine.Rendering.Universal.UTess.UEvent
---@param b UnityEngine.Rendering.Universal.UTess.UEvent
---@return number
function UnityEngine.Rendering.Universal.UTess.TessEventCompare:Compare(a, b) end

---@class UnityEngine.Rendering.Universal.UTess.TessEdgeCompare : System.ValueType
UnityEngine.Rendering.Universal.UTess.TessEdgeCompare = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.TessEdgeCompare UnityEngine.Rendering.Universal.UTess.TessEdgeCompare
CS.UnityEngine.Rendering.Universal.UTess.TessEdgeCompare = UnityEngine.Rendering.Universal.UTess.TessEdgeCompare

---@param a Unity.Mathematics.int2
---@param b Unity.Mathematics.int2
---@return number
function UnityEngine.Rendering.Universal.UTess.TessEdgeCompare:Compare(a, b) end

---@class UnityEngine.Rendering.Universal.UTess.TessCellCompare : System.ValueType
UnityEngine.Rendering.Universal.UTess.TessCellCompare = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.TessCellCompare UnityEngine.Rendering.Universal.UTess.TessCellCompare
CS.UnityEngine.Rendering.Universal.UTess.TessCellCompare = UnityEngine.Rendering.Universal.UTess.TessCellCompare

---@param a Unity.Mathematics.int3
---@param b Unity.Mathematics.int3
---@return number
function UnityEngine.Rendering.Universal.UTess.TessCellCompare:Compare(a, b) end

---@class UnityEngine.Rendering.Universal.UTess.TessJunctionCompare : System.ValueType
UnityEngine.Rendering.Universal.UTess.TessJunctionCompare = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.TessJunctionCompare UnityEngine.Rendering.Universal.UTess.TessJunctionCompare
CS.UnityEngine.Rendering.Universal.UTess.TessJunctionCompare = UnityEngine.Rendering.Universal.UTess.TessJunctionCompare

---@param a Unity.Mathematics.int2
---@param b Unity.Mathematics.int2
---@return number
function UnityEngine.Rendering.Universal.UTess.TessJunctionCompare:Compare(a, b) end

---@class UnityEngine.Rendering.Universal.UTess.DelaEdgeCompare : System.ValueType
UnityEngine.Rendering.Universal.UTess.DelaEdgeCompare = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.DelaEdgeCompare UnityEngine.Rendering.Universal.UTess.DelaEdgeCompare
CS.UnityEngine.Rendering.Universal.UTess.DelaEdgeCompare = UnityEngine.Rendering.Universal.UTess.DelaEdgeCompare

---@param a Unity.Mathematics.int4
---@param b Unity.Mathematics.int4
---@return number
function UnityEngine.Rendering.Universal.UTess.DelaEdgeCompare:Compare(a, b) end

---@class UnityEngine.Rendering.Universal.UTess.TessLink : System.ValueType
UnityEngine.Rendering.Universal.UTess.TessLink = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.TessLink UnityEngine.Rendering.Universal.UTess.TessLink
CS.UnityEngine.Rendering.Universal.UTess.TessLink = UnityEngine.Rendering.Universal.UTess.TessLink


---@class UnityEngine.Rendering.Universal.UTess.ModuleHandle : System.ValueType
UnityEngine.Rendering.Universal.UTess.ModuleHandle = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.ModuleHandle UnityEngine.Rendering.Universal.UTess.ModuleHandle
CS.UnityEngine.Rendering.Universal.UTess.ModuleHandle = UnityEngine.Rendering.Universal.UTess.ModuleHandle

---@param allocator Unity.Collections.Allocator
---@param points Unity.Collections.NativeArray
---@param edges Unity.Collections.NativeArray
---@param ref_outVertices Unity.Collections.NativeArray
---@param ref_outVertexCount number
---@param ref_outIndices Unity.Collections.NativeArray
---@param ref_outIndexCount number
---@param ref_outEdges Unity.Collections.NativeArray
---@param ref_outEdgeCount number
---@return Unity.Mathematics.float4,Unity.Collections.NativeArray,number,Unity.Collections.NativeArray,number,Unity.Collections.NativeArray,number
function UnityEngine.Rendering.Universal.UTess.ModuleHandle.ConvexQuad(allocator, points, edges, ref_outVertices, ref_outVertexCount, ref_outIndices, ref_outIndexCount, ref_outEdges, ref_outEdgeCount) end
---@param allocator Unity.Collections.Allocator
---@param points Unity.Collections.NativeArray
---@param edges Unity.Collections.NativeArray
---@param ref_outVertices Unity.Collections.NativeArray
---@param ref_outVertexCount number
---@param ref_outIndices Unity.Collections.NativeArray
---@param ref_outIndexCount number
---@param ref_outEdges Unity.Collections.NativeArray
---@param ref_outEdgeCount number
---@return Unity.Mathematics.float4,Unity.Collections.NativeArray,number,Unity.Collections.NativeArray,number,Unity.Collections.NativeArray,number
function UnityEngine.Rendering.Universal.UTess.ModuleHandle.Tessellate(allocator, points, edges, ref_outVertices, ref_outVertexCount, ref_outIndices, ref_outIndexCount, ref_outEdges, ref_outEdgeCount) end
---@param allocator Unity.Collections.Allocator
---@param points Unity.Collections.NativeArray
---@param edges Unity.Collections.NativeArray
---@param ref_outVertices Unity.Collections.NativeArray
---@param ref_outVertexCount number
---@param ref_outIndices Unity.Collections.NativeArray
---@param ref_outIndexCount number
---@param ref_outEdges Unity.Collections.NativeArray
---@param ref_outEdgeCount number
---@param areaFactor number
---@param targetArea number
---@param refineIterations number
---@param smoothenIterations number
---@return Unity.Mathematics.float4,Unity.Collections.NativeArray,number,Unity.Collections.NativeArray,number,Unity.Collections.NativeArray,number
function UnityEngine.Rendering.Universal.UTess.ModuleHandle.Subdivide(allocator, points, edges, ref_outVertices, ref_outVertexCount, ref_outIndices, ref_outIndexCount, ref_outEdges, ref_outEdgeCount, areaFactor, targetArea, refineIterations, smoothenIterations) end

---@class FullScreenPassRendererFeature.InjectionPoint
---@field BeforeRenderingTransparents FullScreenPassRendererFeature.InjectionPoint
---@field BeforeRenderingPostProcessing FullScreenPassRendererFeature.InjectionPoint
---@field AfterRenderingPostProcessing FullScreenPassRendererFeature.InjectionPoint
FullScreenPassRendererFeature.InjectionPoint = {}
---@alias CS.FullScreenPassRendererFeature.InjectionPoint FullScreenPassRendererFeature.InjectionPoint
CS.FullScreenPassRendererFeature.InjectionPoint = FullScreenPassRendererFeature.InjectionPoint


---@class FullScreenPassRendererFeature.FullScreenRenderPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
FullScreenPassRendererFeature.FullScreenRenderPass = {}
---@alias CS.FullScreenPassRendererFeature.FullScreenRenderPass FullScreenPassRendererFeature.FullScreenRenderPass
CS.FullScreenPassRendererFeature.FullScreenRenderPass = FullScreenPassRendererFeature.FullScreenRenderPass

---@param passName string
---@return FullScreenPassRendererFeature.FullScreenRenderPass
function FullScreenPassRendererFeature.FullScreenRenderPass.New(passName) end
---@param material UnityEngine.Material
---@param passIndex number
---@param copyActiveColor boolean
---@param bindDepthStencilAttachment boolean
function FullScreenPassRendererFeature.FullScreenRenderPass:SetupMembers(material, passIndex, copyActiveColor, bindDepthStencilAttachment) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function FullScreenPassRendererFeature.FullScreenRenderPass:OnCameraSetup(cmd, ref_renderingData) end
function FullScreenPassRendererFeature.FullScreenRenderPass:Dispose() end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function FullScreenPassRendererFeature.FullScreenRenderPass:Execute(context, ref_renderingData) end

---@class FullScreenPassRendererFeature.Version
---@field Uninitialised FullScreenPassRendererFeature.Version
---@field Initial FullScreenPassRendererFeature.Version
---@field AddFetchColorBufferCheckbox FullScreenPassRendererFeature.Version
---@field Count FullScreenPassRendererFeature.Version
---@field Latest FullScreenPassRendererFeature.Version
FullScreenPassRendererFeature.Version = {}
---@alias CS.FullScreenPassRendererFeature.Version FullScreenPassRendererFeature.Version
CS.FullScreenPassRendererFeature.Version = FullScreenPassRendererFeature.Version


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
---@field None UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
---@field Pillarbox UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
---@field Letterbox UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
---@field Windowbox UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
---@field StretchFill UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame
CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame = UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.CropFrame


---@class UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping
---@field None UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping
---@field PixelSnapping UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping
---@field UpscaleRenderTexture UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping
UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping
CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping = UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.GridSnapping


---@class UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode
---@field RetroAA UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode
---@field Point UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode
UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode
CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode = UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.PixelPerfectFilterMode


---@class UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions
---@field Version_Unserialized UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions
---@field Version_1 UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions
UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions
CS.UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions = UnityEngine.Experimental.Rendering.Universal.PixelPerfectCamera.ComponentVersions


---@class UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData : System.Object
UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData
CS.UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData = UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData

---@return UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData
function UnityEngine.Experimental.Rendering.Universal.RenderObjectsPass.PassData.New() end

---@class UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings : System.Object
---@field passTag string
---@field Event UnityEngine.Rendering.Universal.RenderPassEvent
---@field filterSettings UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings
---@field overrideMaterial UnityEngine.Material
---@field overrideMaterialPassIndex number
---@field overrideShader UnityEngine.Shader
---@field overrideShaderPassIndex number
---@field overrideMode UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode
---@field overrideDepthState boolean
---@field depthCompareFunction UnityEngine.Rendering.CompareFunction
---@field enableWrite boolean
---@field stencilSettings UnityEngine.Rendering.Universal.StencilStateData
---@field cameraSettings UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings
UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings
CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings = UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings

---@return UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings
function UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.New() end

---@class UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings : System.Object
---@field RenderQueueType UnityEngine.Experimental.Rendering.Universal.RenderQueueType
---@field LayerMask UnityEngine.LayerMask
---@field PassNames System.String[]
UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings
CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings = UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings

---@return UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings
function UnityEngine.Experimental.Rendering.Universal.RenderObjects.FilterSettings.New() end

---@class UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings : System.Object
---@field overrideCamera boolean
---@field restoreCamera boolean
---@field offset UnityEngine.Vector4
---@field cameraFieldOfView number
UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings
CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings = UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings

---@return UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings
function UnityEngine.Experimental.Rendering.Universal.RenderObjects.CustomCameraSettings.New() end

---@class UnityEngine.Rendering.Universal.Clipper.NodeType
---@field ntAny UnityEngine.Rendering.Universal.Clipper.NodeType
---@field ntOpen UnityEngine.Rendering.Universal.Clipper.NodeType
---@field ntClosed UnityEngine.Rendering.Universal.Clipper.NodeType
UnityEngine.Rendering.Universal.Clipper.NodeType = {}
---@alias CS.UnityEngine.Rendering.Universal.Clipper.NodeType UnityEngine.Rendering.Universal.Clipper.NodeType
CS.UnityEngine.Rendering.Universal.Clipper.NodeType = UnityEngine.Rendering.Universal.Clipper.NodeType


---@class UnityEngine.Rendering.Universal.Light2D.DeprecatedLightType
---@field Parametric UnityEngine.Rendering.Universal.Light2D.DeprecatedLightType
UnityEngine.Rendering.Universal.Light2D.DeprecatedLightType = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2D.DeprecatedLightType UnityEngine.Rendering.Universal.Light2D.DeprecatedLightType
CS.UnityEngine.Rendering.Universal.Light2D.DeprecatedLightType = UnityEngine.Rendering.Universal.Light2D.DeprecatedLightType


---@class UnityEngine.Rendering.Universal.Light2D.LightType
---@field Parametric UnityEngine.Rendering.Universal.Light2D.LightType
---@field Freeform UnityEngine.Rendering.Universal.Light2D.LightType
---@field Sprite UnityEngine.Rendering.Universal.Light2D.LightType
---@field Point UnityEngine.Rendering.Universal.Light2D.LightType
---@field Global UnityEngine.Rendering.Universal.Light2D.LightType
UnityEngine.Rendering.Universal.Light2D.LightType = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2D.LightType UnityEngine.Rendering.Universal.Light2D.LightType
CS.UnityEngine.Rendering.Universal.Light2D.LightType = UnityEngine.Rendering.Universal.Light2D.LightType


---@class UnityEngine.Rendering.Universal.Light2D.NormalMapQuality
---@field Disabled UnityEngine.Rendering.Universal.Light2D.NormalMapQuality
---@field Fast UnityEngine.Rendering.Universal.Light2D.NormalMapQuality
---@field Accurate UnityEngine.Rendering.Universal.Light2D.NormalMapQuality
UnityEngine.Rendering.Universal.Light2D.NormalMapQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2D.NormalMapQuality UnityEngine.Rendering.Universal.Light2D.NormalMapQuality
CS.UnityEngine.Rendering.Universal.Light2D.NormalMapQuality = UnityEngine.Rendering.Universal.Light2D.NormalMapQuality


---@class UnityEngine.Rendering.Universal.Light2D.OverlapOperation
---@field Additive UnityEngine.Rendering.Universal.Light2D.OverlapOperation
---@field AlphaBlend UnityEngine.Rendering.Universal.Light2D.OverlapOperation
UnityEngine.Rendering.Universal.Light2D.OverlapOperation = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2D.OverlapOperation UnityEngine.Rendering.Universal.Light2D.OverlapOperation
CS.UnityEngine.Rendering.Universal.Light2D.OverlapOperation = UnityEngine.Rendering.Universal.Light2D.OverlapOperation


---@class UnityEngine.Rendering.Universal.Light2D.ComponentVersions
---@field Version_Unserialized UnityEngine.Rendering.Universal.Light2D.ComponentVersions
---@field Version_1 UnityEngine.Rendering.Universal.Light2D.ComponentVersions
UnityEngine.Rendering.Universal.Light2D.ComponentVersions = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2D.ComponentVersions UnityEngine.Rendering.Universal.Light2D.ComponentVersions
CS.UnityEngine.Rendering.Universal.Light2D.ComponentVersions = UnityEngine.Rendering.Universal.Light2D.ComponentVersions


---@class UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field None UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field R UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field G UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field B UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field A UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field OneMinusR UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field OneMinusG UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field OneMinusB UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
---@field OneMinusA UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel
CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel = UnityEngine.Rendering.Universal.Light2DBlendStyle.TextureChannel


---@class UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter : System.ValueType
---@field mask UnityEngine.Vector4
---@field inverted UnityEngine.Vector4
UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter
CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter = UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter

---@param m UnityEngine.Vector4
---@param i UnityEngine.Vector4
---@return UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter
function UnityEngine.Rendering.Universal.Light2DBlendStyle.MaskChannelFilter.New(m, i) end

---@class UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode
---@field Additive UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode
---@field Multiply UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode
---@field Subtractive UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode
UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode
CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode = UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendMode


---@class UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendFactors : System.ValueType
---@field multiplicative number
---@field additive number
UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendFactors = {}
---@alias CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendFactors UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendFactors
CS.UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendFactors = UnityEngine.Rendering.Universal.Light2DBlendStyle.BlendFactors


---@class UnityEngine.Rendering.Universal.LightUtility.PivotType
---@field PivotBase UnityEngine.Rendering.Universal.LightUtility.PivotType
---@field PivotCurve UnityEngine.Rendering.Universal.LightUtility.PivotType
---@field PivotIntersect UnityEngine.Rendering.Universal.LightUtility.PivotType
---@field PivotSkip UnityEngine.Rendering.Universal.LightUtility.PivotType
---@field PivotClip UnityEngine.Rendering.Universal.LightUtility.PivotType
UnityEngine.Rendering.Universal.LightUtility.PivotType = {}
---@alias CS.UnityEngine.Rendering.Universal.LightUtility.PivotType UnityEngine.Rendering.Universal.LightUtility.PivotType
CS.UnityEngine.Rendering.Universal.LightUtility.PivotType = UnityEngine.Rendering.Universal.LightUtility.PivotType


---@class UnityEngine.Rendering.Universal.LightUtility.LightMeshVertex : System.ValueType
---@field VertexLayout UnityEngine.Rendering.VertexAttributeDescriptor[]
---@field position UnityEngine.Vector3
---@field color UnityEngine.Color
---@field uv UnityEngine.Vector2
UnityEngine.Rendering.Universal.LightUtility.LightMeshVertex = {}
---@alias CS.UnityEngine.Rendering.Universal.LightUtility.LightMeshVertex UnityEngine.Rendering.Universal.LightUtility.LightMeshVertex
CS.UnityEngine.Rendering.Universal.LightUtility.LightMeshVertex = UnityEngine.Rendering.Universal.LightUtility.LightMeshVertex


---@class UnityEngine.Rendering.Universal.Renderer2D.RenderPassInputSummary : System.ValueType
UnityEngine.Rendering.Universal.Renderer2D.RenderPassInputSummary = {}
---@alias CS.UnityEngine.Rendering.Universal.Renderer2D.RenderPassInputSummary UnityEngine.Rendering.Universal.Renderer2D.RenderPassInputSummary
CS.UnityEngine.Rendering.Universal.Renderer2D.RenderPassInputSummary = UnityEngine.Rendering.Universal.Renderer2D.RenderPassInputSummary


---@class UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType
---@field Lit UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType
---@field Unlit UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType
---@field Custom UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType
UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType = {}
---@alias CS.UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType
CS.UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType = UnityEngine.Rendering.Universal.Renderer2DData.Renderer2DDefaultMaterialType


---@class UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions
---@field Version_Unserialized UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions
---@field Version_1 UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions
UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions
CS.UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions = UnityEngine.Rendering.Universal.ShadowCaster2D.ComponentVersions


---@class UnityEngine.Rendering.Universal.ShadowUtility.Edge : System.ValueType
---@field vertexIndex0 number
---@field vertexIndex1 number
---@field tangent UnityEngine.Vector4
UnityEngine.Rendering.Universal.ShadowUtility.Edge = {}
---@alias CS.UnityEngine.Rendering.Universal.ShadowUtility.Edge UnityEngine.Rendering.Universal.ShadowUtility.Edge
CS.UnityEngine.Rendering.Universal.ShadowUtility.Edge = UnityEngine.Rendering.Universal.ShadowUtility.Edge

---@param vi0 number
---@param vi1 number
function UnityEngine.Rendering.Universal.ShadowUtility.Edge:AssignVertexIndices(vi0, vi1) end
---@param a UnityEngine.Rendering.Universal.ShadowUtility.Edge
---@param b UnityEngine.Rendering.Universal.ShadowUtility.Edge
---@return number
function UnityEngine.Rendering.Universal.ShadowUtility.Edge:Compare(a, b) end
---@param edgeToCompare UnityEngine.Rendering.Universal.ShadowUtility.Edge
---@return number
function UnityEngine.Rendering.Universal.ShadowUtility.Edge:CompareTo(edgeToCompare) end

---@class UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset : UnityEditor.ProjectWindowCallback.EndNameEditAction
UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset
CS.UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset = UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset

---@return UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset
function UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset.New() end
---@param instanceId number
---@param pathName string
---@param resourceFile string
function UnityEngine.Rendering.Universal.PostProcessData.CreatePostProcessDataAsset:Action(instanceId, pathName, resourceFile) end

---@class UnityEngine.Rendering.Universal.PostProcessData.ShaderResources : System.Object
---@field stopNanPS UnityEngine.Shader
---@field subpixelMorphologicalAntialiasingPS UnityEngine.Shader
---@field gaussianDepthOfFieldPS UnityEngine.Shader
---@field bokehDepthOfFieldPS UnityEngine.Shader
---@field cameraMotionBlurPS UnityEngine.Shader
---@field paniniProjectionPS UnityEngine.Shader
---@field lutBuilderLdrPS UnityEngine.Shader
---@field lutBuilderHdrPS UnityEngine.Shader
---@field bloomPS UnityEngine.Shader
---@field temporalAntialiasingPS UnityEngine.Shader
---@field LensFlareDataDrivenPS UnityEngine.Shader
---@field scalingSetupPS UnityEngine.Shader
---@field easuPS UnityEngine.Shader
---@field uberPostPS UnityEngine.Shader
---@field finalPostPassPS UnityEngine.Shader
UnityEngine.Rendering.Universal.PostProcessData.ShaderResources = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessData.ShaderResources UnityEngine.Rendering.Universal.PostProcessData.ShaderResources
CS.UnityEngine.Rendering.Universal.PostProcessData.ShaderResources = UnityEngine.Rendering.Universal.PostProcessData.ShaderResources

---@return UnityEngine.Rendering.Universal.PostProcessData.ShaderResources
function UnityEngine.Rendering.Universal.PostProcessData.ShaderResources.New() end

---@class UnityEngine.Rendering.Universal.PostProcessData.TextureResources : System.Object
---@field blueNoise16LTex UnityEngine.Texture2D[]
---@field filmGrainTex UnityEngine.Texture2D[]
---@field smaaAreaTex UnityEngine.Texture2D
---@field smaaSearchTex UnityEngine.Texture2D
UnityEngine.Rendering.Universal.PostProcessData.TextureResources = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessData.TextureResources UnityEngine.Rendering.Universal.PostProcessData.TextureResources
CS.UnityEngine.Rendering.Universal.PostProcessData.TextureResources = UnityEngine.Rendering.Universal.PostProcessData.TextureResources

---@return UnityEngine.Rendering.Universal.PostProcessData.TextureResources
function UnityEngine.Rendering.Universal.PostProcessData.TextureResources.New() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset : UnityEditor.ProjectWindowCallback.EndNameEditAction
UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset = UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset.New() end
---@param instanceId number
---@param pathName string
---@param resourceFile string
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.CreateUniversalPipelineAsset:Action(instanceId, pathName, resourceFile) end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources : System.Object
---@field blueNoise64LTex UnityEngine.Texture2D
---@field bayerMatrixTex UnityEngine.Texture2D
UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources = UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources.New() end
---@return boolean
function UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.TextureResources:NeedsReload() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
---@field Remove UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
---@field Select UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
---@field SelectOnly UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode = UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode


---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
---@field Remove UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
---@field SelectMainLight UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
---@field SelectMainLightAndOff UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
---@field SelectMainLightAndCascades UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
---@field SelectAll UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows = UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows


---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
---@field Remove UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
---@field SelectVertex UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
---@field SelectVertexAndOff UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
---@field SelectPixel UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
---@field SelectPixelAndOff UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights = UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights


---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.ShaderPrefilteringData : System.ValueType
---@field forwardPlusPrefilteringMode UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
---@field deferredPrefilteringMode UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
---@field mainLightShadowsPrefilteringMode UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeMainLightShadows
---@field additionalLightsPrefilteringMode UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringModeAdditionalLights
---@field additionalLightsShadowsPrefilteringMode UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
---@field screenSpaceOcclusionPrefilteringMode UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.PrefilteringMode
---@field stripXRKeywords boolean
---@field stripHDRKeywords boolean
---@field stripDebugDisplay boolean
---@field stripScreenCoordOverride boolean
---@field stripWriteRenderingLayers boolean
---@field stripDBufferMRT1 boolean
---@field stripDBufferMRT2 boolean
---@field stripDBufferMRT3 boolean
---@field stripNativeRenderPass boolean
---@field stripSoftShadowsQualityLow boolean
---@field stripSoftShadowsQualityMedium boolean
---@field stripSoftShadowsQualityHigh boolean
---@field stripSSAOBlueNoise boolean
---@field stripSSAOInterleaved boolean
---@field stripSSAODepthNormals boolean
---@field stripSSAOSourceDepthLow boolean
---@field stripSSAOSourceDepthMedium boolean
---@field stripSSAOSourceDepthHigh boolean
---@field stripSSAOSampleCountLow boolean
---@field stripSSAOSampleCountMedium boolean
---@field stripSSAOSampleCountHigh boolean
UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.ShaderPrefilteringData = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.ShaderPrefilteringData UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.ShaderPrefilteringData
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.ShaderPrefilteringData = UnityEngine.Rendering.Universal.UniversalRenderPipelineAsset.ShaderPrefilteringData


---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources : System.Object
---@field autodeskInteractivePS UnityEngine.Shader
---@field autodeskInteractiveTransparentPS UnityEngine.Shader
---@field autodeskInteractiveMaskedPS UnityEngine.Shader
---@field terrainDetailLitPS UnityEngine.Shader
---@field terrainDetailGrassPS UnityEngine.Shader
---@field terrainDetailGrassBillboardPS UnityEngine.Shader
---@field defaultSpeedTree7PS UnityEngine.Shader
---@field defaultSpeedTree8PS UnityEngine.Shader
UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources = UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources
function UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.ShaderResources.New() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources : System.Object
---@field lit UnityEngine.Material
---@field particleLit UnityEngine.Material
---@field terrainLit UnityEngine.Material
---@field decal UnityEngine.Material
UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources
CS.UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources = UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources

---@return UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources
function UnityEngine.Rendering.Universal.UniversalRenderPipelineEditorResources.MaterialResources.New() end

---@class UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset : UnityEditor.ProjectWindowCallback.EndNameEditAction
UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset = {}
---@alias CS.UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset
CS.UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset = UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset

---@return UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset
function UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset.New() end
---@param instanceId number
---@param pathName string
---@param resourceFile string
function UnityEngine.Rendering.Universal.XRSystemData.CreateXRSystemDataAsset:Action(instanceId, pathName, resourceFile) end

---@class UnityEngine.Rendering.Universal.XRSystemData.ShaderResources : System.Object
---@field xrOcclusionMeshPS UnityEngine.Shader
---@field xrMirrorViewPS UnityEngine.Shader
UnityEngine.Rendering.Universal.XRSystemData.ShaderResources = {}
---@alias CS.UnityEngine.Rendering.Universal.XRSystemData.ShaderResources UnityEngine.Rendering.Universal.XRSystemData.ShaderResources
CS.UnityEngine.Rendering.Universal.XRSystemData.ShaderResources = UnityEngine.Rendering.Universal.XRSystemData.ShaderResources

---@return UnityEngine.Rendering.Universal.XRSystemData.ShaderResources
function UnityEngine.Rendering.Universal.XRSystemData.ShaderResources.New() end

---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.WidgetFactory : System.Object
UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.WidgetFactory = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.WidgetFactory UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.WidgetFactory
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.WidgetFactory = UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.WidgetFactory


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel : UnityEngine.Rendering.DebugDisplaySettingsPanel
---@field Flags UnityEngine.Rendering.DebugUI.Flags
UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel = UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel

---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel
function UnityEngine.Rendering.Universal.DebugDisplaySettingsCommon.SettingsPanel.New() end

---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.Strings : System.Object
---@field LightingDebugMode UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field LightingFeatures UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field HDRDebugMode UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.Strings = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.Strings UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.Strings
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.Strings = UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.Strings


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.WidgetFactory : System.Object
UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.WidgetFactory = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.WidgetFactory UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.WidgetFactory
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.WidgetFactory = UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.WidgetFactory


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel : UnityEngine.Rendering.DebugDisplaySettingsPanel
---@field data UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel -- infered from UnityEngine.Rendering.DebugDisplaySettingsPanel`1[UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting]
UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel = UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel

---@param data UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting
---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel
function UnityEngine.Rendering.Universal.DebugDisplaySettingsLighting.SettingsPanel.New(data) end

---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field DefaultLuminance UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field BlackAcrylicPaint UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field DarkSoil UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field WornAsphalt UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field DryClaySoil UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field GreenGrass UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field OldConcrete UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field RedClayTile UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field DrySand UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field NewConcrete UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field WhiteAcrylicPaint UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field FreshSnow UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field BlueSky UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field Foliage UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
---@field Custom UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset = UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPreset


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPresetData : System.ValueType
---@field name string
---@field color UnityEngine.Color
---@field minLuminance number
---@field maxLuminance number
UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPresetData = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPresetData UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPresetData
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPresetData = UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.AlbedoDebugValidationPresetData


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.Strings : System.Object
---@field AlbedoSettingsContainerName string
---@field MetallicSettingsContainerName string
---@field MaterialOverride UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field VertexAttribute UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field MaterialValidationMode UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field ValidationPreset UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field AlbedoCustomColor UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field AlbedoMinLuminance UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field AlbedoMaxLuminance UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field AlbedoHueTolerance UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field AlbedoSaturationTolerance UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field MetallicMinValue UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field MetallicMaxValue UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.Strings = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.Strings UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.Strings
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.Strings = UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.Strings


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.WidgetFactory : System.Object
UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.WidgetFactory = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.WidgetFactory UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.WidgetFactory
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.WidgetFactory = UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.WidgetFactory


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel : UnityEngine.Rendering.DebugDisplaySettingsPanel
---@field data UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel -- infered from UnityEngine.Rendering.DebugDisplaySettingsPanel`1[UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial]
UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel = UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel

---@param data UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial
---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel
function UnityEngine.Rendering.Universal.DebugDisplaySettingsMaterial.SettingsPanel.New(data) end

---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode
---@field None UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode
---@field ShowRawFrame UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode
---@field ShowRawFrameNoJitter UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode
---@field ShowClampedHistory UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode
UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode = UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.TaaDebugMode


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.Strings : System.Object
---@field RangeValidationSettingsContainerName string
---@field MapOverlays UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field MapSize UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field AdditionalWireframeModes UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field WireframeNotSupportedWarning UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field OverdrawMode UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field MaxOverdrawCount UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field PostProcessing UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field MSAA UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field HDR UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field TaaDebugMode UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field PixelValidationMode UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field Channels UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field ValueRangeMin UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
---@field ValueRangeMax UnityEngine.Rendering.DebugUI.Widget.NameAndTooltip
UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.Strings = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.Strings UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.Strings
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.Strings = UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.Strings


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.WidgetFactory : System.Object
UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.WidgetFactory = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.WidgetFactory UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.WidgetFactory
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.WidgetFactory = UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.WidgetFactory


---@class UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel : UnityEngine.Rendering.DebugDisplaySettingsPanel
---@field data UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel -- infered from UnityEngine.Rendering.DebugDisplaySettingsPanel`1[UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering]
UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel
CS.UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel = UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel

---@param data UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering
---@return UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel
function UnityEngine.Rendering.Universal.DebugDisplaySettingsRendering.SettingsPanel.New(data) end

---@class UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel : UnityEngine.Rendering.DebugDisplaySettingsPanel
---@field Flags UnityEngine.Rendering.DebugUI.Flags
UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel
CS.UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel = UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel

---@param frameTiming UnityEngine.Rendering.DebugFrameTiming
---@return UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel
function UnityEngine.Rendering.Universal.DebugDisplayStats.StatsPanel.New(frameTiming) end

---@class UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable : System.Object
UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable
CS.UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable = UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable

---@param debugHandler UnityEngine.Rendering.Universal.DebugHandler
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@param filteringSettings UnityEngine.Rendering.FilteringSettings
---@return UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable
function UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.New(debugHandler, context, commandBuffer, filteringSettings) end
---@return System.Collections.Generic.IEnumerator
function UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable:GetEnumerator() end

---@class UnityEngine.Rendering.Universal.DebugHandler.DrawFunction : System.MulticastDelegate
UnityEngine.Rendering.Universal.DebugHandler.DrawFunction = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugHandler.DrawFunction UnityEngine.Rendering.Universal.DebugHandler.DrawFunction
CS.UnityEngine.Rendering.Universal.DebugHandler.DrawFunction = UnityEngine.Rendering.Universal.DebugHandler.DrawFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.Universal.DebugHandler.DrawFunction
function UnityEngine.Rendering.Universal.DebugHandler.DrawFunction.New(object, method) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@param ref_drawingSettings UnityEngine.Rendering.DrawingSettings
---@param ref_filteringSettings UnityEngine.Rendering.FilteringSettings
---@param ref_renderStateBlock UnityEngine.Rendering.RenderStateBlock
---@return ,UnityEngine.Rendering.Universal.RenderingData,UnityEngine.Rendering.DrawingSettings,UnityEngine.Rendering.FilteringSettings,UnityEngine.Rendering.RenderStateBlock
function UnityEngine.Rendering.Universal.DebugHandler.DrawFunction:Invoke(context, ref_renderingData, ref_drawingSettings, ref_filteringSettings, ref_renderStateBlock) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@param ref_drawingSettings UnityEngine.Rendering.DrawingSettings
---@param ref_filteringSettings UnityEngine.Rendering.FilteringSettings
---@param ref_renderStateBlock UnityEngine.Rendering.RenderStateBlock
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,UnityEngine.Rendering.Universal.RenderingData,UnityEngine.Rendering.DrawingSettings,UnityEngine.Rendering.FilteringSettings,UnityEngine.Rendering.RenderStateBlock
function UnityEngine.Rendering.Universal.DebugHandler.DrawFunction:BeginInvoke(context, ref_renderingData, ref_drawingSettings, ref_filteringSettings, ref_renderStateBlock, callback, object) end
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@param ref_drawingSettings UnityEngine.Rendering.DrawingSettings
---@param ref_filteringSettings UnityEngine.Rendering.FilteringSettings
---@param ref_renderStateBlock UnityEngine.Rendering.RenderStateBlock
---@param result System.IAsyncResult
---@return ,UnityEngine.Rendering.Universal.RenderingData,UnityEngine.Rendering.DrawingSettings,UnityEngine.Rendering.FilteringSettings,UnityEngine.Rendering.RenderStateBlock
function UnityEngine.Rendering.Universal.DebugHandler.DrawFunction:EndInvoke(ref_renderingData, ref_drawingSettings, ref_filteringSettings, ref_renderStateBlock, result) end

---@class UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction : System.MulticastDelegate
UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction
CS.UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction = UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction
function UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction.New(object, method) end
---@param decalProjector UnityEngine.Rendering.Universal.DecalProjector
function UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction:Invoke(decalProjector) end
---@param decalProjector UnityEngine.Rendering.Universal.DecalProjector
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction:BeginInvoke(decalProjector, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Rendering.Universal.DecalProjector.DecalProjectorAction:EndInvoke(result) end

---@class UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.DrawCallJob : System.ValueType
---@field decalToWorlds Unity.Collections.NativeArray
---@field normalToWorlds Unity.Collections.NativeArray
---@field sizeOffsets Unity.Collections.NativeArray
---@field drawDistances Unity.Collections.NativeArray
---@field angleFades Unity.Collections.NativeArray
---@field uvScaleBiases Unity.Collections.NativeArray
---@field layerMasks Unity.Collections.NativeArray
---@field sceneLayerMasks Unity.Collections.NativeArray
---@field fadeFactors Unity.Collections.NativeArray
---@field boundingSpheres Unity.Collections.NativeArray
---@field renderingLayerMasks Unity.Collections.NativeArray
---@field cameraPosition UnityEngine.Vector3
---@field sceneCullingMask number
---@field cullingMask number
---@field visibleDecalIndices Unity.Collections.NativeArray
---@field visibleDecalCount number
---@field maxDrawDistance number
---@field decalToWorldsDraw Unity.Collections.NativeArray
---@field normalToDecalsDraw Unity.Collections.NativeArray
---@field renderingLayerMasksDraw Unity.Collections.NativeArray
---@field subCalls Unity.Collections.NativeArray
---@field subCallCount Unity.Collections.NativeArray
UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.DrawCallJob = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.DrawCallJob UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.DrawCallJob
CS.UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.DrawCallJob = UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.DrawCallJob

function UnityEngine.Rendering.Universal.DecalCreateDrawCallSystem.DrawCallJob:Execute() end

---@class UnityEngine.Rendering.Universal.DecalEntityIndexer.DecalEntityItem : System.ValueType
---@field chunkIndex number
---@field arrayIndex number
---@field version number
UnityEngine.Rendering.Universal.DecalEntityIndexer.DecalEntityItem = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalEntityIndexer.DecalEntityItem UnityEngine.Rendering.Universal.DecalEntityIndexer.DecalEntityItem
CS.UnityEngine.Rendering.Universal.DecalEntityIndexer.DecalEntityItem = UnityEngine.Rendering.Universal.DecalEntityIndexer.DecalEntityItem


---@class UnityEngine.Rendering.Universal.DecalEntityManager.CombinedChunks : System.ValueType
---@field entityChunk UnityEngine.Rendering.Universal.DecalEntityChunk
---@field cachedChunk UnityEngine.Rendering.Universal.DecalCachedChunk
---@field culledChunk UnityEngine.Rendering.Universal.DecalCulledChunk
---@field drawCallChunk UnityEngine.Rendering.Universal.DecalDrawCallChunk
---@field previousChunkIndex number
---@field valid boolean
UnityEngine.Rendering.Universal.DecalEntityManager.CombinedChunks = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalEntityManager.CombinedChunks UnityEngine.Rendering.Universal.DecalEntityManager.CombinedChunks
CS.UnityEngine.Rendering.Universal.DecalEntityManager.CombinedChunks = UnityEngine.Rendering.Universal.DecalEntityManager.CombinedChunks


---@class UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.UpdateTransformsJob : System.ValueType
---@field positions Unity.Collections.NativeArray
---@field rotations Unity.Collections.NativeArray
---@field scales Unity.Collections.NativeArray
---@field dirty Unity.Collections.NativeArray
---@field scaleModes Unity.Collections.NativeArray
---@field sizeOffsets Unity.Collections.NativeArray
---@field decalToWorlds Unity.Collections.NativeArray
---@field normalToWorlds Unity.Collections.NativeArray
---@field boundingSpheres Unity.Collections.NativeArray
---@field minDistance number
UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.UpdateTransformsJob = {}
---@alias CS.UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.UpdateTransformsJob UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.UpdateTransformsJob
CS.UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.UpdateTransformsJob = UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.UpdateTransformsJob

---@param index number
---@param transform UnityEngine.Jobs.TransformAccess
function UnityEngine.Rendering.Universal.DecalUpdateCachedSystem.UpdateTransformsJob:Execute(index, transform) end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling : System.Object
---@field setMRTAttachmentsList UnityEngine.Rendering.ProfilingSampler
---@field setAttachmentList UnityEngine.Rendering.ProfilingSampler
---@field execute UnityEngine.Rendering.ProfilingSampler
---@field setupFrameData UnityEngine.Rendering.ProfilingSampler
---@field setPerCameraShaderVariables UnityEngine.Rendering.ProfilingSampler
---@field sortRenderPasses UnityEngine.Rendering.ProfilingSampler
---@field setupLights UnityEngine.Rendering.ProfilingSampler
---@field setupCamera UnityEngine.Rendering.ProfilingSampler
---@field vfxProcessCamera UnityEngine.Rendering.ProfilingSampler
---@field addRenderPasses UnityEngine.Rendering.ProfilingSampler
---@field setupRenderPasses UnityEngine.Rendering.ProfilingSampler
---@field clearRenderingState UnityEngine.Rendering.ProfilingSampler
---@field internalStartRendering UnityEngine.Rendering.ProfilingSampler
---@field internalFinishRendering UnityEngine.Rendering.ProfilingSampler
---@field drawGizmos UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling = UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling


---@class UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassDescriptor : System.ValueType
UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassDescriptor = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassDescriptor UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassDescriptor
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassDescriptor = UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassDescriptor


---@class UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures : System.Object
---@field msaa boolean
UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures = UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures

---@return UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderingFeatures.New() end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassBlock : System.Object
---@field BeforeRendering number
---@field MainRenderingOpaque number
---@field MainRenderingTransparent number
---@field AfterRendering number
UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassBlock = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassBlock UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassBlock
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassBlock = UnityEngine.Rendering.Universal.ScriptableRenderer.RenderPassBlock


---@class UnityEngine.Rendering.Universal.ScriptableRenderer.RTHandleRenderTargetIdentifierCompat : System.ValueType
---@field handle UnityEngine.Rendering.RTHandle
---@field fallback UnityEngine.Rendering.RenderTargetIdentifier
---@field useRTHandle boolean
---@field nameID UnityEngine.Rendering.RenderTargetIdentifier
UnityEngine.Rendering.Universal.ScriptableRenderer.RTHandleRenderTargetIdentifierCompat = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RTHandleRenderTargetIdentifierCompat UnityEngine.Rendering.Universal.ScriptableRenderer.RTHandleRenderTargetIdentifierCompat
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RTHandleRenderTargetIdentifierCompat = UnityEngine.Rendering.Universal.ScriptableRenderer.RTHandleRenderTargetIdentifierCompat


---@class UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData : System.Object
UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData = UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData

---@return UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData
function UnityEngine.Rendering.Universal.ScriptableRenderer.VFXProcessCameraPassData.New() end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData : System.Object
---@field renderingData UnityEngine.Rendering.Universal.RenderingData
---@field renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@field gizmoSubset UnityEngine.Rendering.GizmoSubset
UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData = UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData

---@return UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData
function UnityEngine.Rendering.Universal.ScriptableRenderer.DrawGizmosPassData.New() end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData : System.Object
---@field renderingData UnityEngine.Rendering.Universal.RenderingData
---@field cameraData UnityEngine.Rendering.Universal.CameraData
UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData = UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData

---@return UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData
function UnityEngine.Rendering.Universal.ScriptableRenderer.BeginXRPassData.New() end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData : System.Object
---@field renderingData UnityEngine.Rendering.Universal.RenderingData
---@field cameraData UnityEngine.Rendering.Universal.CameraData
UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData = UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData

---@return UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData
function UnityEngine.Rendering.Universal.ScriptableRenderer.EndXRPassData.New() end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.PassData : System.Object
UnityEngine.Rendering.Universal.ScriptableRenderer.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.PassData UnityEngine.Rendering.Universal.ScriptableRenderer.PassData
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.PassData = UnityEngine.Rendering.Universal.ScriptableRenderer.PassData

---@return UnityEngine.Rendering.Universal.ScriptableRenderer.PassData
function UnityEngine.Rendering.Universal.ScriptableRenderer.PassData.New() end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks : System.ValueType
UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks = UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks

---@param activeRenderPassQueue System.Collections.Generic.List
---@return UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.New(activeRenderPassQueue) end
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks:Dispose() end
---@param index number
---@return number
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks:GetLength(index) end
---@param index number
---@return UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks:GetRange(index) end

---@class UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources : System.Object
---@field blitPS UnityEngine.Shader
---@field copyDepthPS UnityEngine.Shader
---@field samplingPS UnityEngine.Shader
---@field stencilDeferredPS UnityEngine.Shader
---@field fallbackErrorPS UnityEngine.Shader
---@field fallbackLoadingPS UnityEngine.Shader
---@field cameraMotionVector UnityEngine.Shader
---@field objectMotionVector UnityEngine.Shader
UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources = {}
---@alias CS.UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources
CS.UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources = UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources

---@return UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources
function UnityEngine.Rendering.Universal.ForwardRendererData.ShaderResources.New() end

---@class UnityEngine.Rendering.Universal.LightCookieManager.ShaderProperty : System.Object
---@field mainLightTexture number
---@field mainLightWorldToLight number
---@field mainLightCookieTextureFormat number
---@field additionalLightsCookieAtlasTexture number
---@field additionalLightsCookieAtlasTextureFormat number
---@field additionalLightsCookieEnableBits number
---@field additionalLightsCookieAtlasUVRectBuffer number
---@field additionalLightsCookieAtlasUVRects number
---@field additionalLightsWorldToLightBuffer number
---@field additionalLightsLightTypeBuffer number
---@field additionalLightsWorldToLights number
---@field additionalLightsLightTypes number
UnityEngine.Rendering.Universal.LightCookieManager.ShaderProperty = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.ShaderProperty UnityEngine.Rendering.Universal.LightCookieManager.ShaderProperty
CS.UnityEngine.Rendering.Universal.LightCookieManager.ShaderProperty = UnityEngine.Rendering.Universal.LightCookieManager.ShaderProperty


---@class UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat
---@field None UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat
---@field RGB UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat
---@field Alpha UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat
---@field Red UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat
UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat
CS.UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat = UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderFormat


---@class UnityEngine.Rendering.Universal.LightCookieManager.Settings : System.ValueType
---@field atlas UnityEngine.Rendering.Universal.LightCookieManager.Settings.AtlasSettings
---@field maxAdditionalLights number
---@field cubeOctahedralSizeScale number
---@field useStructuredBuffer boolean
UnityEngine.Rendering.Universal.LightCookieManager.Settings = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.Settings UnityEngine.Rendering.Universal.LightCookieManager.Settings
CS.UnityEngine.Rendering.Universal.LightCookieManager.Settings = UnityEngine.Rendering.Universal.LightCookieManager.Settings

---@return UnityEngine.Rendering.Universal.LightCookieManager.Settings
function UnityEngine.Rendering.Universal.LightCookieManager.Settings.Create() end

---@class UnityEngine.Rendering.Universal.LightCookieManager.Sorting : System.ValueType
UnityEngine.Rendering.Universal.LightCookieManager.Sorting = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.Sorting UnityEngine.Rendering.Universal.LightCookieManager.Sorting
CS.UnityEngine.Rendering.Universal.LightCookieManager.Sorting = UnityEngine.Rendering.Universal.LightCookieManager.Sorting


---@class UnityEngine.Rendering.Universal.LightCookieManager.LightCookieMapping : System.ValueType
---@field s_CompareByCookieSize System.Func
---@field s_CompareByBufferIndex System.Func
---@field visibleLightIndex number
---@field lightBufferIndex number
---@field light UnityEngine.Light
UnityEngine.Rendering.Universal.LightCookieManager.LightCookieMapping = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.LightCookieMapping UnityEngine.Rendering.Universal.LightCookieManager.LightCookieMapping
CS.UnityEngine.Rendering.Universal.LightCookieManager.LightCookieMapping = UnityEngine.Rendering.Universal.LightCookieManager.LightCookieMapping


---@class UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice : System.ValueType
---@field Item T
---@field length number
---@field capacity number
UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice
CS.UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice = UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice

---@overload fun(src: T[], srcLen: number) : UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice
---@param src T[]
---@param srcStart number
---@param srcLen number
---@return UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice
function UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice.New(src, srcStart, srcLen) end
---@param compare System.Func[T,T,System.Int32]
function UnityEngine.Rendering.Universal.LightCookieManager.WorkSlice:Sort(compare) end

---@class UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory : System.Object
---@field lightMappings UnityEngine.Rendering.Universal.LightCookieManager.LightCookieMapping[]
---@field uvRects UnityEngine.Vector4[]
UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory
CS.UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory = UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory

---@return UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory
function UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory.New() end
---@param size number
function UnityEngine.Rendering.Universal.LightCookieManager.WorkMemory:Resize(size) end

---@class UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray : System.ValueType
---@field elemLength number
---@field bitCapacity number
---@field data System.Single[]
---@field Item boolean
UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray
CS.UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray = UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray

---@param bitCount number
function UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray:Resize(bitCount) end
function UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray:Clear() end
---@return string
function UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray:ToString() end

---@class UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData : System.Object
---@field worldToLights UnityEngine.Matrix4x4[]
---@field cookieEnableBits UnityEngine.Rendering.Universal.LightCookieManager.ShaderBitArray
---@field atlasUVRects UnityEngine.Vector4[]
---@field lightTypes System.Single[]
---@field isUploaded boolean
UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData
CS.UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData = UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData

---@param size number
---@param useStructuredBuffer boolean
---@return UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData
function UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData.New(size, useStructuredBuffer) end
function UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData:Dispose() end
---@param size number
function UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData:Resize(size) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData:Upload(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.LightCookieManager.LightCookieShaderData:Clear(cmd) end

---@class UnityEngine.Rendering.Universal.BuddyAllocator.Header : System.ValueType
---@field branchingOrder number
---@field levelCount number
---@field allocationCount number
---@field freeAllocationIdsCount number
UnityEngine.Rendering.Universal.BuddyAllocator.Header = {}
---@alias CS.UnityEngine.Rendering.Universal.BuddyAllocator.Header UnityEngine.Rendering.Universal.BuddyAllocator.Header
CS.UnityEngine.Rendering.Universal.BuddyAllocator.Header = UnityEngine.Rendering.Universal.BuddyAllocator.Header


---@class UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData : System.Object
UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData
CS.UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData = UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData

---@return UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData
function UnityEngine.Rendering.Universal.DrawScreenSpaceUIPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData : System.Object
UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData
CS.UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData = UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData

---@return UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData
function UnityEngine.Rendering.Universal.DrawSkyboxPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId
---@field CIExyPrepass UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId
---@field DebugViewPass UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId
UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId = {}
---@alias CS.UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId
CS.UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId = UnityEngine.Rendering.Universal.HDRDebugViewPass.HDRDebugPassId


---@class UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData : System.Object
UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData
CS.UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData = UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData

---@return UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData
function UnityEngine.Rendering.Universal.HDRDebugViewPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants : System.Object
---@field _DebugHDRModeId number
---@field _HDRDebugParamsId number
---@field _xyTextureId number
---@field _SizeOfHDRXYMapping number
---@field _CIExyUAVIndex number
UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants = {}
---@alias CS.UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants
CS.UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants = UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants

---@return UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants
function UnityEngine.Rendering.Universal.HDRDebugViewPass.ShaderConstants.New() end

---@class UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData : System.Object
UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData
CS.UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData = UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData

---@return UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData
function UnityEngine.Rendering.Universal.InvokeOnRenderObjectCallbackPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData : System.Object
UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData
CS.UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData = UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData

---@return UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData
function UnityEngine.Rendering.Universal.MotionVectorRenderPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary : System.Object
---@field stopNaN UnityEngine.Material
---@field subpixelMorphologicalAntialiasing UnityEngine.Material
---@field gaussianDepthOfField UnityEngine.Material
---@field bokehDepthOfField UnityEngine.Material
---@field cameraMotionBlur UnityEngine.Material
---@field paniniProjection UnityEngine.Material
---@field bloom UnityEngine.Material
---@field temporalAntialiasing UnityEngine.Material
---@field scalingSetup UnityEngine.Material
---@field easu UnityEngine.Material
---@field uber UnityEngine.Material
---@field finalPass UnityEngine.Material
---@field lensFlareDataDriven UnityEngine.Material
UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary
CS.UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary = UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary

---@param data UnityEngine.Rendering.Universal.PostProcessData
---@return UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary
function UnityEngine.Rendering.Universal.PostProcessPass.MaterialLibrary.New(data) end

---@class UnityEngine.Rendering.Universal.PostProcessPass.ShaderConstants : System.Object
---@field _TempTarget number
---@field _TempTarget2 number
---@field _StencilRef number
---@field _StencilMask number
---@field _FullCoCTexture number
---@field _HalfCoCTexture number
---@field _DofTexture number
---@field _CoCParams number
---@field _BokehKernel number
---@field _BokehConstants number
---@field _PongTexture number
---@field _PingTexture number
---@field _Metrics number
---@field _AreaTexture number
---@field _SearchTexture number
---@field _EdgeTexture number
---@field _BlendTexture number
---@field _ColorTexture number
---@field _Params number
---@field _SourceTexLowMip number
---@field _Bloom_Params number
---@field _Bloom_RGBM number
---@field _Bloom_Texture number
---@field _LensDirt_Texture number
---@field _LensDirt_Params number
---@field _LensDirt_Intensity number
---@field _Distortion_Params1 number
---@field _Distortion_Params2 number
---@field _Chroma_Params number
---@field _Vignette_Params1 number
---@field _Vignette_Params2 number
---@field _Vignette_ParamsXR number
---@field _Lut_Params number
---@field _UserLut_Params number
---@field _InternalLut number
---@field _UserLut number
---@field _DownSampleScaleFactor number
---@field _FlareOcclusionRemapTex number
---@field _FlareOcclusionTex number
---@field _FlareOcclusionIndex number
---@field _FlareTex number
---@field _FlareColorValue number
---@field _FlareData0 number
---@field _FlareData1 number
---@field _FlareData2 number
---@field _FlareData3 number
---@field _FlareData4 number
---@field _FlareData5 number
---@field _FullscreenProjMat number
---@field _BloomMipUp System.Int32[]
---@field _BloomMipDown System.Int32[]
UnityEngine.Rendering.Universal.PostProcessPass.ShaderConstants = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessPass.ShaderConstants UnityEngine.Rendering.Universal.PostProcessPass.ShaderConstants
CS.UnityEngine.Rendering.Universal.PostProcessPass.ShaderConstants = UnityEngine.Rendering.Universal.PostProcessPass.ShaderConstants


---@class UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData : System.Object
UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData
CS.UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData = UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData

---@return UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData
function UnityEngine.Rendering.Universal.XROcclusionMeshPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.PostProcessUtils.ShaderConstants : System.Object
---@field _Grain_Texture number
---@field _Grain_Params number
---@field _Grain_TilingParams number
---@field _BlueNoise_Texture number
---@field _Dithering_Params number
---@field _SourceSize number
UnityEngine.Rendering.Universal.PostProcessUtils.ShaderConstants = {}
---@alias CS.UnityEngine.Rendering.Universal.PostProcessUtils.ShaderConstants UnityEngine.Rendering.Universal.PostProcessUtils.ShaderConstants
CS.UnityEngine.Rendering.Universal.PostProcessUtils.ShaderConstants = UnityEngine.Rendering.Universal.PostProcessUtils.ShaderConstants


---@class UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe : System.ValueType
---@field updateCount number
---@field imageContentsHash UnityEngine.Hash128
---@field size number
---@field mipCount number
---@field dataIndices UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe.<dataIndices>e__FixedBuffer
---@field levels UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe.<levels>e__FixedBuffer
---@field texture UnityEngine.Texture
---@field lastUsed number
---@field hdrData UnityEngine.Vector4
UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe = {}
---@alias CS.UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe
CS.UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe = UnityEngine.Rendering.Universal.ReflectionProbeManager.CachedProbe


---@class UnityEngine.Rendering.Universal.ReflectionProbeManager.ShaderProperties : System.Object
---@field BoxMin number
---@field BoxMax number
---@field ProbePosition number
---@field MipScaleOffset number
---@field Count number
---@field Atlas number
UnityEngine.Rendering.Universal.ReflectionProbeManager.ShaderProperties = {}
---@alias CS.UnityEngine.Rendering.Universal.ReflectionProbeManager.ShaderProperties UnityEngine.Rendering.Universal.ReflectionProbeManager.ShaderProperties
CS.UnityEngine.Rendering.Universal.ReflectionProbeManager.ShaderProperties = UnityEngine.Rendering.Universal.ReflectionProbeManager.ShaderProperties


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource
---@field Depth UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource
---@field DepthNormals UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.DepthSource


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality
---@field Low UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality
---@field Medium UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality
---@field High UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.NormalQuality


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption
---@field High UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption
---@field Medium UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption
---@field Low UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOSampleOption


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions
---@field BlueNoise UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions
---@field InterleavedGradient UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.AOMethodOptions


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions
---@field High UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions
---@field Medium UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions
---@field Low UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusionSettings.BlurQualityOptions


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass:OnCameraCleanup(cmd) end
function UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass:Dispose() end

---@class UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass
CS.UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass = UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass

function UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass:Dispose() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass
CS.UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass = UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass

---@return UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass
function UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass.New() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass:Configure(cmd, cameraTextureDescriptor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function UnityEngine.Rendering.Universal.ScreenSpaceShadows.ScreenSpaceShadowsPostPass:Execute(context, ref_renderingData) end

---@class UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
---@field DepthNormalPrePass UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
---@field Opaque UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
UnityEngine.Rendering.Universal.RenderingLayerUtils.Event = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderingLayerUtils.Event UnityEngine.Rendering.Universal.RenderingLayerUtils.Event
CS.UnityEngine.Rendering.Universal.RenderingLayerUtils.Event = UnityEngine.Rendering.Universal.RenderingLayerUtils.Event


---@class UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
---@field Bits8 UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
---@field Bits16 UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
---@field Bits24 UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
---@field Bits32 UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize = {}
---@alias CS.UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize
CS.UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize = UnityEngine.Rendering.Universal.RenderingLayerUtils.MaskSize


---@class UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources : System.Object
---@field debugReplacementPS UnityEngine.Shader
---@field hdrDebugViewPS UnityEngine.Shader
UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources
CS.UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources = UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources

---@return UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources
function UnityEngine.Rendering.Universal.ScriptableRendererData.DebugShaderResources.New() end

---@class UnityEngine.Rendering.Universal.TemporalAA.ShaderConstants : System.Object
---@field _TaaAccumulationTex number
---@field _TaaMotionVectorTex number
---@field _TaaFilterWeights number
---@field _TaaFrameInfluence number
---@field _TaaVarianceClampScale number
---@field _CameraDepthTexture number
UnityEngine.Rendering.Universal.TemporalAA.ShaderConstants = {}
---@alias CS.UnityEngine.Rendering.Universal.TemporalAA.ShaderConstants UnityEngine.Rendering.Universal.TemporalAA.ShaderConstants
CS.UnityEngine.Rendering.Universal.TemporalAA.ShaderConstants = UnityEngine.Rendering.Universal.TemporalAA.ShaderConstants


---@class UnityEngine.Rendering.Universal.TemporalAA.ShaderKeywords : System.Object
---@field TAA_LOW_PRECISION_SOURCE string
UnityEngine.Rendering.Universal.TemporalAA.ShaderKeywords = {}
---@alias CS.UnityEngine.Rendering.Universal.TemporalAA.ShaderKeywords UnityEngine.Rendering.Universal.TemporalAA.ShaderKeywords
CS.UnityEngine.Rendering.Universal.TemporalAA.ShaderKeywords = UnityEngine.Rendering.Universal.TemporalAA.ShaderKeywords


---@class UnityEngine.Rendering.Universal.TemporalAA.Settings : System.ValueType
---@field quality UnityEngine.Rendering.Universal.TemporalAAQuality
---@field baseBlendFactor number
---@field jitterScale number
---@field mipBias number
---@field varianceClampScale number
---@field contrastAdaptiveSharpening number
UnityEngine.Rendering.Universal.TemporalAA.Settings = {}
---@alias CS.UnityEngine.Rendering.Universal.TemporalAA.Settings UnityEngine.Rendering.Universal.TemporalAA.Settings
CS.UnityEngine.Rendering.Universal.TemporalAA.Settings = UnityEngine.Rendering.Universal.TemporalAA.Settings

---@return UnityEngine.Rendering.Universal.TemporalAA.Settings
function UnityEngine.Rendering.Universal.TemporalAA.Settings.Create() end

---@class UnityEngine.Rendering.Universal.TemporalAA.TaaPassData : System.Object
UnityEngine.Rendering.Universal.TemporalAA.TaaPassData = {}
---@alias CS.UnityEngine.Rendering.Universal.TemporalAA.TaaPassData UnityEngine.Rendering.Universal.TemporalAA.TaaPassData
CS.UnityEngine.Rendering.Universal.TemporalAA.TaaPassData = UnityEngine.Rendering.Universal.TemporalAA.TaaPassData

---@return UnityEngine.Rendering.Universal.TemporalAA.TaaPassData
function UnityEngine.Rendering.Universal.TemporalAA.TaaPassData.New() end

---@class UnityEngine.Rendering.Universal.UniversalRenderer.Profiling : System.Object
---@field createCameraRenderTarget UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.UniversalRenderer.Profiling = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderer.Profiling UnityEngine.Rendering.Universal.UniversalRenderer.Profiling
CS.UnityEngine.Rendering.Universal.UniversalRenderer.Profiling = UnityEngine.Rendering.Universal.UniversalRenderer.Profiling


---@class UnityEngine.Rendering.Universal.UniversalRenderer.RenderPassInputSummary : System.ValueType
UnityEngine.Rendering.Universal.UniversalRenderer.RenderPassInputSummary = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderer.RenderPassInputSummary UnityEngine.Rendering.Universal.UniversalRenderer.RenderPassInputSummary
CS.UnityEngine.Rendering.Universal.UniversalRenderer.RenderPassInputSummary = UnityEngine.Rendering.Universal.UniversalRenderer.RenderPassInputSummary


---@class UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources : System.Object
UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources
CS.UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources = UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources

---@return UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources
function UnityEngine.Rendering.Universal.UniversalRenderer.RenderGraphFrameResources.New() end

---@class UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset : UnityEditor.ProjectWindowCallback.EndNameEditAction
UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset
CS.UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset = UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset

---@return UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset
function UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset.New() end
---@param instanceId number
---@param pathName string
---@param resourceFile string
function UnityEngine.Rendering.Universal.UniversalRendererData.CreateUniversalRendererAsset:Action(instanceId, pathName, resourceFile) end

---@class UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources : System.Object
---@field blitPS UnityEngine.Shader
---@field copyDepthPS UnityEngine.Shader
---@field samplingPS UnityEngine.Shader
---@field stencilDeferredPS UnityEngine.Shader
---@field fallbackErrorPS UnityEngine.Shader
---@field fallbackLoadingPS UnityEngine.Shader
---@field cameraMotionVector UnityEngine.Shader
---@field objectMotionVector UnityEngine.Shader
---@field dataDrivenLensFlare UnityEngine.Shader
UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources
CS.UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources = UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources

---@return UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources
function UnityEngine.Rendering.Universal.UniversalRendererData.ShaderResources.New() end

---@class UnityEngine.Rendering.Universal.ClearTargetsPass.PassData : System.Object
UnityEngine.Rendering.Universal.ClearTargetsPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.ClearTargetsPass.PassData UnityEngine.Rendering.Universal.ClearTargetsPass.PassData
CS.UnityEngine.Rendering.Universal.ClearTargetsPass.PassData = UnityEngine.Rendering.Universal.ClearTargetsPass.PassData

---@return UnityEngine.Rendering.Universal.ClearTargetsPass.PassData
function UnityEngine.Rendering.Universal.ClearTargetsPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling : System.Object
---@field unknownSampler UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling
CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling = UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling

---@param camera UnityEngine.Camera
---@return UnityEngine.Rendering.ProfilingSampler
function UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.TryGetOrAddCameraSampler(camera) end

---@class UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest : System.Object
---@field destination UnityEngine.RenderTexture
---@field mipLevel number
---@field face UnityEngine.CubemapFace
---@field slice number
UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest
CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest = UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest

---@return UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest
function UnityEngine.Rendering.Universal.UniversalRenderPipeline.SingleCameraRequest.New() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node : System.Object
---@field Key TValue
---@field Prev UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node
---@field Next UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node
UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node = UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node

---@return UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict.Node.New() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual : System.MulticastDelegate
UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual = UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual.New(object, method) end
---@param lhs TValue
---@param rhs TValue
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual:Invoke(lhs, rhs) end
---@param lhs TValue
---@param rhs TValue
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual:BeginInvoke(lhs, rhs, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.Dict.LessOrEqual:EndInvoke(result) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled : System.Object
UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled
CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled = UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled

---@return T
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled.Create() end
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled:Reset() end
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled:OnFree() end
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled:Free() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex : UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled
UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex = UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex

---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex.New() end
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Vertex:Reset() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face : UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled
UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face
CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face = UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face

---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face.New() end
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Face:Reset() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair : System.ValueType
UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair
CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair = UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair

---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair.Create() end
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.EdgePair:Reset() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge : UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Pooled
UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
CS.UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge = UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge

---@return UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge.New() end
function UnityEngine.Rendering.Universal.LibTessDotNet.MeshUtils.Edge:Reset() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual : System.MulticastDelegate
UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual
CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual = UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual.New(object, method) end
---@param lhs TValue
---@param rhs TValue
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual:Invoke(lhs, rhs) end
---@param lhs TValue
---@param rhs TValue
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual:BeginInvoke(lhs, rhs, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.LessOrEqual:EndInvoke(result) end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem : System.Object
UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem
CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem = UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem

---@return UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityHeap.HandleElem.New() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem : System.Object
UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem
CS.UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem = UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem

---@return UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem
function UnityEngine.Rendering.Universal.LibTessDotNet.PriorityQueue.StackItem.New() end

---@class UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion : System.Object
UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion = {}
---@alias CS.UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion
CS.UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion = UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion

---@return UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion
function UnityEngine.Rendering.Universal.LibTessDotNet.Tess.ActiveRegion.New() end

---@class UnityEngine.Rendering.Universal.Internal.DeferredLights.ShaderConstants : System.Object
---@field _LitStencilRef number
---@field _LitStencilReadMask number
---@field _LitStencilWriteMask number
---@field _SimpleLitStencilRef number
---@field _SimpleLitStencilReadMask number
---@field _SimpleLitStencilWriteMask number
---@field _StencilRef number
---@field _StencilReadMask number
---@field _StencilWriteMask number
---@field _LitPunctualStencilRef number
---@field _LitPunctualStencilReadMask number
---@field _LitPunctualStencilWriteMask number
---@field _SimpleLitPunctualStencilRef number
---@field _SimpleLitPunctualStencilReadMask number
---@field _SimpleLitPunctualStencilWriteMask number
---@field _LitDirStencilRef number
---@field _LitDirStencilReadMask number
---@field _LitDirStencilWriteMask number
---@field _SimpleLitDirStencilRef number
---@field _SimpleLitDirStencilReadMask number
---@field _SimpleLitDirStencilWriteMask number
---@field _ClearStencilRef number
---@field _ClearStencilReadMask number
---@field _ClearStencilWriteMask number
---@field _ScreenToWorld number
---@field _MainLightPosition number
---@field _MainLightColor number
---@field _MainLightLayerMask number
---@field _SpotLightScale number
---@field _SpotLightBias number
---@field _SpotLightGuard number
---@field _LightPosWS number
---@field _LightColor number
---@field _LightAttenuation number
---@field _LightOcclusionProbInfo number
---@field _LightDirection number
---@field _LightFlags number
---@field _ShadowLightIndex number
---@field _LightLayerMask number
---@field _CookieLightIndex number
UnityEngine.Rendering.Universal.Internal.DeferredLights.ShaderConstants = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DeferredLights.ShaderConstants UnityEngine.Rendering.Universal.Internal.DeferredLights.ShaderConstants
CS.UnityEngine.Rendering.Universal.Internal.DeferredLights.ShaderConstants = UnityEngine.Rendering.Universal.Internal.DeferredLights.ShaderConstants


---@class UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field StencilVolume UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field PunctualLit UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field PunctualSimpleLit UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field DirectionalLit UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field DirectionalSimpleLit UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field ClearStencilPartial UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field Fog UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
---@field SSAOOnly UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses
CS.UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses = UnityEngine.Rendering.Universal.Internal.DeferredLights.StencilDeferredPasses


---@class UnityEngine.Rendering.Universal.Internal.DeferredLights.InitParams : System.ValueType
---@field stencilDeferredMaterial UnityEngine.Material
---@field lightCookieManager UnityEngine.Rendering.Universal.LightCookieManager
UnityEngine.Rendering.Universal.Internal.DeferredLights.InitParams = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DeferredLights.InitParams UnityEngine.Rendering.Universal.Internal.DeferredLights.InitParams
CS.UnityEngine.Rendering.Universal.Internal.DeferredLights.InitParams = UnityEngine.Rendering.Universal.Internal.DeferredLights.InitParams


---@class UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.AdditionalShadowsConstantBuffer : System.Object
---@field _AdditionalLightsWorldToShadow number
---@field _AdditionalShadowParams number
---@field _AdditionalShadowOffset0 number
---@field _AdditionalShadowOffset1 number
---@field _AdditionalShadowFadeParams number
---@field _AdditionalShadowmapSize number
UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.AdditionalShadowsConstantBuffer = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.AdditionalShadowsConstantBuffer UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.AdditionalShadowsConstantBuffer
CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.AdditionalShadowsConstantBuffer = UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.AdditionalShadowsConstantBuffer


---@class UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest : System.ValueType
---@field visibleLightIndex number
---@field perLightShadowSliceIndex number
---@field requestedResolution number
---@field softShadow boolean
---@field pointLightShadow boolean
---@field offsetX number
---@field offsetY number
---@field allocatedResolution number
UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest
CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest = UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest

---@param _visibleLightIndex number
---@param _perLightShadowSliceIndex number
---@param _requestedResolution number
---@param _softShadow boolean
---@param _pointLightShadow boolean
---@return UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.ShadowResolutionRequest.New(_visibleLightIndex, _perLightShadowSliceIndex, _requestedResolution, _softShadow, _pointLightShadow) end

---@class UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData = UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData
function UnityEngine.Rendering.Universal.Internal.AdditionalLightsShadowCasterPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.ForwardLights.LightConstantBuffer : System.Object
---@field _MainLightPosition number
---@field _MainLightColor number
---@field _MainLightOcclusionProbesChannel number
---@field _MainLightLayerMask number
---@field _AdditionalLightsCount number
---@field _AdditionalLightsPosition number
---@field _AdditionalLightsColor number
---@field _AdditionalLightsAttenuation number
---@field _AdditionalLightsSpotDir number
---@field _AdditionalLightOcclusionProbeChannel number
---@field _AdditionalLightsLayerMasks number
UnityEngine.Rendering.Universal.Internal.ForwardLights.LightConstantBuffer = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.ForwardLights.LightConstantBuffer UnityEngine.Rendering.Universal.Internal.ForwardLights.LightConstantBuffer
CS.UnityEngine.Rendering.Universal.Internal.ForwardLights.LightConstantBuffer = UnityEngine.Rendering.Universal.Internal.ForwardLights.LightConstantBuffer


---@class UnityEngine.Rendering.Universal.Internal.ForwardLights.InitParams : System.ValueType
---@field lightCookieManager UnityEngine.Rendering.Universal.LightCookieManager
---@field forwardPlus boolean
UnityEngine.Rendering.Universal.Internal.ForwardLights.InitParams = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.ForwardLights.InitParams UnityEngine.Rendering.Universal.Internal.ForwardLights.InitParams
CS.UnityEngine.Rendering.Universal.Internal.ForwardLights.InitParams = UnityEngine.Rendering.Universal.Internal.ForwardLights.InitParams


---@class UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData = UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData
function UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.ShaderConstants : System.Object
---@field _Lut_Params number
---@field _ColorBalance number
---@field _ColorFilter number
---@field _ChannelMixerRed number
---@field _ChannelMixerGreen number
---@field _ChannelMixerBlue number
---@field _HueSatCon number
---@field _Lift number
---@field _Gamma number
---@field _Gain number
---@field _Shadows number
---@field _Midtones number
---@field _Highlights number
---@field _ShaHiLimits number
---@field _SplitShadows number
---@field _SplitHighlights number
---@field _CurveMaster number
---@field _CurveRed number
---@field _CurveGreen number
---@field _CurveBlue number
---@field _CurveHueVsHue number
---@field _CurveHueVsSat number
---@field _CurveLumVsSat number
---@field _CurveSatVsSat number
UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.ShaderConstants = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.ShaderConstants UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.ShaderConstants
CS.UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.ShaderConstants = UnityEngine.Rendering.Universal.Internal.ColorGradingLutPass.ShaderConstants


---@class UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData = UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData
function UnityEngine.Rendering.Universal.Internal.CopyColorPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData = UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData
function UnityEngine.Rendering.Universal.Internal.CopyDepthPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData = UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData
function UnityEngine.Rendering.Universal.Internal.DeferredPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData = UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData
function UnityEngine.Rendering.Universal.Internal.DepthNormalOnlyPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData = UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData
function UnityEngine.Rendering.Universal.Internal.DepthOnlyPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData = UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData
function UnityEngine.Rendering.Universal.Internal.DrawObjectsPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitPassNames : System.Object
---@field NearestSampler string
---@field BilinearSampler string
UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitPassNames = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitPassNames UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitPassNames
CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitPassNames = UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitPassNames


---@class UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType
---@field Core UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType
---@field HDR UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType
---@field Count UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType
UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType
CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType = UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitType


---@class UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitMaterialData : System.ValueType
---@field material UnityEngine.Material
---@field nearestSamplerPass number
---@field bilinearSamplerPass number
UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitMaterialData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitMaterialData UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitMaterialData
CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitMaterialData = UnityEngine.Rendering.Universal.Internal.FinalBlitPass.BlitMaterialData


---@class UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData = UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData
function UnityEngine.Rendering.Universal.Internal.FinalBlitPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData = UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData
function UnityEngine.Rendering.Universal.Internal.GBufferPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.MainLightShadowConstantBuffer : System.Object
---@field _WorldToShadow number
---@field _ShadowParams number
---@field _CascadeShadowSplitSpheres0 number
---@field _CascadeShadowSplitSpheres1 number
---@field _CascadeShadowSplitSpheres2 number
---@field _CascadeShadowSplitSpheres3 number
---@field _CascadeShadowSplitSphereRadii number
---@field _ShadowOffset0 number
---@field _ShadowOffset1 number
---@field _ShadowmapSize number
UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.MainLightShadowConstantBuffer = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.MainLightShadowConstantBuffer UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.MainLightShadowConstantBuffer
CS.UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.MainLightShadowConstantBuffer = UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.MainLightShadowConstantBuffer


---@class UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData : System.Object
UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData
CS.UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData = UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData

---@return UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData
function UnityEngine.Rendering.Universal.Internal.MainLightShadowCasterPass.PassData.New() end

---@class UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem.SwapBuffer : System.ValueType
---@field rtMSAA UnityEngine.Rendering.RTHandle
---@field rtResolve UnityEngine.Rendering.RTHandle
---@field name string
---@field msaa number
UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem.SwapBuffer = {}
---@alias CS.UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem.SwapBuffer UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem.SwapBuffer
CS.UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem.SwapBuffer = UnityEngine.Rendering.Universal.Internal.RenderTargetBufferSystem.SwapBuffer


---@class UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointL : System.ValueType
UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointL = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointL UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointL
CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointL = UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointL

---@param h UnityEngine.Rendering.Universal.UTess.UHull
---@param p Unity.Mathematics.float2
---@param ref_t number
---@return boolean,number
function UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointL:Test(h, p, ref_t) end

---@class UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointU : System.ValueType
UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointU = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointU UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointU
CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointU = UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointU

---@param h UnityEngine.Rendering.Universal.UTess.UHull
---@param p Unity.Mathematics.float2
---@param ref_t number
---@return boolean,number
function UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullPointU:Test(h, p, ref_t) end

---@class UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventLe : System.ValueType
UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventLe = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventLe UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventLe
CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventLe = UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventLe

---@param h UnityEngine.Rendering.Universal.UTess.UHull
---@param p UnityEngine.Rendering.Universal.UTess.UEvent
---@param ref_t number
---@return boolean,number
function UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventLe:Test(h, p, ref_t) end

---@class UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventE : System.ValueType
UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventE = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventE UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventE
CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventE = UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventE

---@param h UnityEngine.Rendering.Universal.UTess.UHull
---@param p UnityEngine.Rendering.Universal.UTess.UEvent
---@param ref_t number
---@return boolean,number
function UnityEngine.Rendering.Universal.UTess.Tessellator.TestHullEventE:Test(h, p, ref_t) end

---@class UnityEngine.Rendering.Universal.UTess.Tessellator.TestEdgePointE : System.ValueType
UnityEngine.Rendering.Universal.UTess.Tessellator.TestEdgePointE = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestEdgePointE UnityEngine.Rendering.Universal.UTess.Tessellator.TestEdgePointE
CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestEdgePointE = UnityEngine.Rendering.Universal.UTess.Tessellator.TestEdgePointE

---@param h Unity.Mathematics.int2
---@param p Unity.Mathematics.int2
---@param ref_t number
---@return boolean,number
function UnityEngine.Rendering.Universal.UTess.Tessellator.TestEdgePointE:Test(h, p, ref_t) end

---@class UnityEngine.Rendering.Universal.UTess.Tessellator.TestCellE : System.ValueType
UnityEngine.Rendering.Universal.UTess.Tessellator.TestCellE = {}
---@alias CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestCellE UnityEngine.Rendering.Universal.UTess.Tessellator.TestCellE
CS.UnityEngine.Rendering.Universal.UTess.Tessellator.TestCellE = UnityEngine.Rendering.Universal.UTess.Tessellator.TestCellE

---@param h Unity.Mathematics.int3
---@param p Unity.Mathematics.int3
---@param ref_t number
---@return boolean,number
function UnityEngine.Rendering.Universal.UTess.Tessellator.TestCellE:Test(h, p, ref_t) end

---@class UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode
---@field None UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode
---@field Material UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode
---@field Shader UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode
UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode = {}
---@alias CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode
CS.UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode = UnityEngine.Experimental.Rendering.Universal.RenderObjects.RenderObjectsSettings.OverrideMaterialMode


---@class UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator : System.Object
---@field Current UnityEngine.Rendering.Universal.DebugRenderSetup
UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator = {}
---@alias CS.UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator
CS.UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator = UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator

---@param debugHandler UnityEngine.Rendering.Universal.DebugHandler
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@param filteringSettings UnityEngine.Rendering.FilteringSettings
---@return UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator
function UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator.New(debugHandler, context, commandBuffer, filteringSettings) end
---@return boolean
function UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator:MoveNext() end
function UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator:Reset() end
function UnityEngine.Rendering.Universal.DebugHandler.DebugRenderPassEnumerable.Enumerator:Dispose() end

---@class UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderBlock : System.Object
---@field beforeRendering UnityEngine.Rendering.ProfilingSampler
---@field mainRenderingOpaque UnityEngine.Rendering.ProfilingSampler
---@field mainRenderingTransparent UnityEngine.Rendering.ProfilingSampler
---@field afterRendering UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderBlock = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderBlock UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderBlock
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderBlock = UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderBlock


---@class UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderPass : System.Object
---@field configure UnityEngine.Rendering.ProfilingSampler
---@field setRenderPassAttachments UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderPass = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderPass UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderPass
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderPass = UnityEngine.Rendering.Universal.ScriptableRenderer.Profiling.RenderPass


---@class UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange : System.ValueType
---@field Current number
UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange = {}
---@alias CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange
CS.UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange = UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange

---@param begin number
---@param _end number
---@return UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange.New(begin, _end) end
---@return UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange:GetEnumerator() end
---@return boolean
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange:MoveNext() end
function UnityEngine.Rendering.Universal.ScriptableRenderer.RenderBlocks.BlockRange:Dispose() end

---@class UnityEngine.Rendering.Universal.LightCookieManager.Settings.AtlasSettings : System.ValueType
---@field resolution UnityEngine.Vector2Int
---@field format UnityEngine.Experimental.Rendering.GraphicsFormat
---@field useMips boolean
---@field isPow2 boolean
---@field isSquare boolean
UnityEngine.Rendering.Universal.LightCookieManager.Settings.AtlasSettings = {}
---@alias CS.UnityEngine.Rendering.Universal.LightCookieManager.Settings.AtlasSettings UnityEngine.Rendering.Universal.LightCookieManager.Settings.AtlasSettings
CS.UnityEngine.Rendering.Universal.LightCookieManager.Settings.AtlasSettings = UnityEngine.Rendering.Universal.LightCookieManager.Settings.AtlasSettings


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes
---@field Bilateral UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes
---@field Gaussian UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes
---@field Kawase UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.BlurTypes


---@class UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field AmbientOcclusion UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field BilateralBlurHorizontal UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field BilateralBlurVertical UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field BilateralBlurFinal UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field BilateralAfterOpaque UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field GaussianBlurHorizontal UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field GaussianBlurVertical UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field GaussianAfterOpaque UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field KawaseBlur UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
---@field KawaseAfterOpaque UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses = {}
---@alias CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses
CS.UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses = UnityEngine.Rendering.Universal.ScreenSpaceAmbientOcclusion.ScreenSpaceAmbientOcclusionPass.ShaderPasses


---@class UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline : System.Object
---@field beginContextRendering UnityEngine.Rendering.ProfilingSampler
---@field endContextRendering UnityEngine.Rendering.ProfilingSampler
---@field beginCameraRendering UnityEngine.Rendering.ProfilingSampler
---@field endCameraRendering UnityEngine.Rendering.ProfilingSampler
---@field initializeCameraData UnityEngine.Rendering.ProfilingSampler
---@field initializeStackedCameraData UnityEngine.Rendering.ProfilingSampler
---@field initializeAdditionalCameraData UnityEngine.Rendering.ProfilingSampler
---@field initializeRenderingData UnityEngine.Rendering.ProfilingSampler
---@field initializeShadowData UnityEngine.Rendering.ProfilingSampler
---@field initializeLightData UnityEngine.Rendering.ProfilingSampler
---@field getPerObjectLightFlags UnityEngine.Rendering.ProfilingSampler
---@field getMainLightIndex UnityEngine.Rendering.ProfilingSampler
---@field setupPerFrameShaderConstants UnityEngine.Rendering.ProfilingSampler
---@field setupPerCameraShaderConstants UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline
CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline = UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline


---@class UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Renderer : System.Object
---@field setupCullingParameters UnityEngine.Rendering.ProfilingSampler
---@field setup UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Renderer = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Renderer UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Renderer
CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Renderer = UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Renderer


---@class UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Context : System.Object
---@field submit UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Context = {}
---@alias CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Context UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Context
CS.UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Context = UnityEngine.Rendering.Universal.UniversalRenderPipeline.Profiling.Pipeline.Context


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

---@class UnityEngine.ProBuilder.ActionResult : System.Object
---@field Success UnityEngine.ProBuilder.ActionResult
---@field NoSelection UnityEngine.ProBuilder.ActionResult
---@field UserCanceled UnityEngine.ProBuilder.ActionResult
---@field status UnityEngine.ProBuilder.ActionResult.Status
---@field notification string
UnityEngine.ProBuilder.ActionResult = {}
---@alias CS.UnityEngine.ProBuilder.ActionResult UnityEngine.ProBuilder.ActionResult
CS.UnityEngine.ProBuilder.ActionResult = UnityEngine.ProBuilder.ActionResult

---@param status UnityEngine.ProBuilder.ActionResult.Status
---@param notification string
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.ActionResult.New(status, notification) end
---@param success boolean
---@return boolean
function UnityEngine.ProBuilder.ActionResult.FromBool(success) end
---@return boolean
function UnityEngine.ProBuilder.ActionResult:ToBool() end

---@class UnityEngine.ProBuilder.ArrayUtility : System.Object
UnityEngine.ProBuilder.ArrayUtility = {}
---@alias CS.UnityEngine.ProBuilder.ArrayUtility UnityEngine.ProBuilder.ArrayUtility
CS.UnityEngine.ProBuilder.ArrayUtility = UnityEngine.ProBuilder.ArrayUtility


---@class UnityEngine.ProBuilder.AutoUnwrapSettings : System.ValueType
---@field defaultAutoUnwrapSettings UnityEngine.ProBuilder.AutoUnwrapSettings
---@field tile UnityEngine.ProBuilder.AutoUnwrapSettings
---@field fit UnityEngine.ProBuilder.AutoUnwrapSettings
---@field stretch UnityEngine.ProBuilder.AutoUnwrapSettings
---@field useWorldSpace boolean
---@field flipU boolean
---@field flipV boolean
---@field swapUV boolean
---@field fill UnityEngine.ProBuilder.AutoUnwrapSettings.Fill
---@field scale UnityEngine.Vector2
---@field offset UnityEngine.Vector2
---@field rotation number
---@field anchor UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
UnityEngine.ProBuilder.AutoUnwrapSettings = {}
---@alias CS.UnityEngine.ProBuilder.AutoUnwrapSettings UnityEngine.ProBuilder.AutoUnwrapSettings
CS.UnityEngine.ProBuilder.AutoUnwrapSettings = UnityEngine.ProBuilder.AutoUnwrapSettings

---@param unwrapSettings UnityEngine.ProBuilder.AutoUnwrapSettings
---@return UnityEngine.ProBuilder.AutoUnwrapSettings
function UnityEngine.ProBuilder.AutoUnwrapSettings.New(unwrapSettings) end
function UnityEngine.ProBuilder.AutoUnwrapSettings:Reset() end
---@return string
function UnityEngine.ProBuilder.AutoUnwrapSettings:ToString() end

---@class UnityEngine.ProBuilder.BezierTangentMode
---@field Free UnityEngine.ProBuilder.BezierTangentMode
---@field Aligned UnityEngine.ProBuilder.BezierTangentMode
---@field Mirrored UnityEngine.ProBuilder.BezierTangentMode
UnityEngine.ProBuilder.BezierTangentMode = {}
---@alias CS.UnityEngine.ProBuilder.BezierTangentMode UnityEngine.ProBuilder.BezierTangentMode
CS.UnityEngine.ProBuilder.BezierTangentMode = UnityEngine.ProBuilder.BezierTangentMode


---@class UnityEngine.ProBuilder.BezierTangentDirection
---@field In UnityEngine.ProBuilder.BezierTangentDirection
---@field Out UnityEngine.ProBuilder.BezierTangentDirection
UnityEngine.ProBuilder.BezierTangentDirection = {}
---@alias CS.UnityEngine.ProBuilder.BezierTangentDirection UnityEngine.ProBuilder.BezierTangentDirection
CS.UnityEngine.ProBuilder.BezierTangentDirection = UnityEngine.ProBuilder.BezierTangentDirection


---@class UnityEngine.ProBuilder.BezierPoint : System.ValueType
---@field position UnityEngine.Vector3
---@field tangentIn UnityEngine.Vector3
---@field tangentOut UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
UnityEngine.ProBuilder.BezierPoint = {}
---@alias CS.UnityEngine.ProBuilder.BezierPoint UnityEngine.ProBuilder.BezierPoint
CS.UnityEngine.ProBuilder.BezierPoint = UnityEngine.ProBuilder.BezierPoint

---@param position UnityEngine.Vector3
---@param tangentIn UnityEngine.Vector3
---@param tangentOut UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.ProBuilder.BezierPoint
function UnityEngine.ProBuilder.BezierPoint.New(position, tangentIn, tangentOut, rotation) end
---@param a UnityEngine.ProBuilder.BezierPoint
---@param b UnityEngine.ProBuilder.BezierPoint
---@param t number
---@return UnityEngine.Vector3
function UnityEngine.ProBuilder.BezierPoint.QuadraticPosition(a, b, t) end
---@param a UnityEngine.ProBuilder.BezierPoint
---@param b UnityEngine.ProBuilder.BezierPoint
---@param t number
---@return UnityEngine.Vector3
function UnityEngine.ProBuilder.BezierPoint.CubicPosition(a, b, t) end
---@param points System.Collections.Generic.IList
---@param index number
---@param previous number
---@param next number
---@return UnityEngine.Vector3
function UnityEngine.ProBuilder.BezierPoint.GetLookDirection(points, index, previous, next) end
---@param master UnityEngine.ProBuilder.BezierTangentDirection
---@param mode UnityEngine.ProBuilder.BezierTangentMode
function UnityEngine.ProBuilder.BezierPoint:EnforceTangentMode(master, mode) end
---@param position UnityEngine.Vector3
function UnityEngine.ProBuilder.BezierPoint:SetPosition(position) end
---@param tangent UnityEngine.Vector3
---@param mode UnityEngine.ProBuilder.BezierTangentMode
function UnityEngine.ProBuilder.BezierPoint:SetTangentIn(tangent, mode) end
---@param tangent UnityEngine.Vector3
---@param mode UnityEngine.ProBuilder.BezierTangentMode
function UnityEngine.ProBuilder.BezierPoint:SetTangentOut(tangent, mode) end

---@class UnityEngine.ProBuilder.BezierShape : UnityEngine.MonoBehaviour
---@field points System.Collections.Generic.List
---@field closeLoop boolean
---@field radius number
---@field rows number
---@field columns number
---@field smooth boolean
---@field isEditing boolean
---@field mesh UnityEngine.ProBuilder.ProBuilderMesh
UnityEngine.ProBuilder.BezierShape = {}
---@alias CS.UnityEngine.ProBuilder.BezierShape UnityEngine.ProBuilder.BezierShape
CS.UnityEngine.ProBuilder.BezierShape = UnityEngine.ProBuilder.BezierShape

function UnityEngine.ProBuilder.BezierShape:Init() end
function UnityEngine.ProBuilder.BezierShape:Refresh() end

---@class UnityEngine.ProBuilder.Bounds2D : System.Object
---@field center UnityEngine.Vector2
---@field size UnityEngine.Vector2
---@field extents UnityEngine.Vector2
---@field corners UnityEngine.Vector2[]
UnityEngine.ProBuilder.Bounds2D = {}
---@alias CS.UnityEngine.ProBuilder.Bounds2D UnityEngine.ProBuilder.Bounds2D
CS.UnityEngine.ProBuilder.Bounds2D = UnityEngine.ProBuilder.Bounds2D

---@overload fun() : UnityEngine.ProBuilder.Bounds2D
---@overload fun(center: UnityEngine.Vector2, size: UnityEngine.Vector2) : UnityEngine.ProBuilder.Bounds2D
---@overload fun(points: System.Collections.Generic.IList) : UnityEngine.ProBuilder.Bounds2D
---@overload fun(points: System.Collections.Generic.IList, indexes: System.Collections.Generic.IList) : UnityEngine.ProBuilder.Bounds2D
---@param points UnityEngine.Vector2[]
---@param length number
---@return UnityEngine.ProBuilder.Bounds2D
function UnityEngine.ProBuilder.Bounds2D.New(points, length) end
---@overload fun(points: System.Collections.Generic.IList) : UnityEngine.Vector2
---@param points System.Collections.Generic.IList
---@param indexes System.Collections.Generic.IList
---@return UnityEngine.Vector2
function UnityEngine.ProBuilder.Bounds2D.Center(points, indexes) end
---@param points System.Collections.Generic.IList
---@param indexes System.Collections.Generic.IList
---@return UnityEngine.Vector2
function UnityEngine.ProBuilder.Bounds2D.Size(points, indexes) end
---@param point UnityEngine.Vector2
---@return boolean
function UnityEngine.ProBuilder.Bounds2D:ContainsPoint(point) end
---@param lineStart UnityEngine.Vector2
---@param lineEnd UnityEngine.Vector2
---@return boolean
function UnityEngine.ProBuilder.Bounds2D:IntersectsLineSegment(lineStart, lineEnd) end
---@overload fun(self: UnityEngine.ProBuilder.Bounds2D, bounds: UnityEngine.ProBuilder.Bounds2D) : boolean
---@param rect UnityEngine.Rect
---@return boolean
function UnityEngine.ProBuilder.Bounds2D:Intersects(rect) end
---@overload fun(self: UnityEngine.ProBuilder.Bounds2D, points: System.Collections.Generic.IList)
---@param points System.Collections.Generic.IList
---@param indexes System.Collections.Generic.IList
function UnityEngine.ProBuilder.Bounds2D:SetWithPoints(points, indexes) end
---@return string
function UnityEngine.ProBuilder.Bounds2D:ToString() end

---@class UnityEngine.ProBuilder.BuiltinMaterials : System.Object
---@field faceShader string
---@field lineShader string
---@field lineShaderMetal string
---@field pointShader string
---@field wireShader string
---@field dotShader string
---@field geometryShadersSupported boolean
---@field defaultMaterial UnityEngine.Material
UnityEngine.ProBuilder.BuiltinMaterials = {}
---@alias CS.UnityEngine.ProBuilder.BuiltinMaterials UnityEngine.ProBuilder.BuiltinMaterials
CS.UnityEngine.ProBuilder.BuiltinMaterials = UnityEngine.ProBuilder.BuiltinMaterials


---@class UnityEngine.ProBuilder.ChangelogEntry : System.Object
---@field versionInfo UnityEngine.ProBuilder.SemVer
---@field releaseNotes string
UnityEngine.ProBuilder.ChangelogEntry = {}
---@alias CS.UnityEngine.ProBuilder.ChangelogEntry UnityEngine.ProBuilder.ChangelogEntry
CS.UnityEngine.ProBuilder.ChangelogEntry = UnityEngine.ProBuilder.ChangelogEntry

---@param version UnityEngine.ProBuilder.SemVer
---@param releaseNotes string
---@return UnityEngine.ProBuilder.ChangelogEntry
function UnityEngine.ProBuilder.ChangelogEntry.New(version, releaseNotes) end
---@return string
function UnityEngine.ProBuilder.ChangelogEntry:ToString() end

---@class UnityEngine.ProBuilder.Changelog : System.Object
---@field entries System.Collections.ObjectModel.ReadOnlyCollection
UnityEngine.ProBuilder.Changelog = {}
---@alias CS.UnityEngine.ProBuilder.Changelog UnityEngine.ProBuilder.Changelog
CS.UnityEngine.ProBuilder.Changelog = UnityEngine.ProBuilder.Changelog

---@param log string
---@return UnityEngine.ProBuilder.Changelog
function UnityEngine.ProBuilder.Changelog.New(log) end

---@class UnityEngine.ProBuilder.Clipping : System.Object
UnityEngine.ProBuilder.Clipping = {}
---@alias CS.UnityEngine.ProBuilder.Clipping UnityEngine.ProBuilder.Clipping
CS.UnityEngine.ProBuilder.Clipping = UnityEngine.ProBuilder.Clipping


---@class UnityEngine.ProBuilder.ColliderBehaviour : UnityEngine.ProBuilder.EntityBehaviour
UnityEngine.ProBuilder.ColliderBehaviour = {}
---@alias CS.UnityEngine.ProBuilder.ColliderBehaviour UnityEngine.ProBuilder.ColliderBehaviour
CS.UnityEngine.ProBuilder.ColliderBehaviour = UnityEngine.ProBuilder.ColliderBehaviour

function UnityEngine.ProBuilder.ColliderBehaviour:Initialize() end
function UnityEngine.ProBuilder.ColliderBehaviour:OnEnterPlayMode() end
---@param scene UnityEngine.SceneManagement.Scene
---@param mode UnityEngine.SceneManagement.LoadSceneMode
function UnityEngine.ProBuilder.ColliderBehaviour:OnSceneLoaded(scene, mode) end

---@class UnityEngine.ProBuilder.ColorPalette : UnityEngine.ScriptableObject
---@field current UnityEngine.Color
---@field colors System.Collections.ObjectModel.ReadOnlyCollection
---@field Item UnityEngine.Color
---@field Count number
UnityEngine.ProBuilder.ColorPalette = {}
---@alias CS.UnityEngine.ProBuilder.ColorPalette UnityEngine.ProBuilder.ColorPalette
CS.UnityEngine.ProBuilder.ColorPalette = UnityEngine.ProBuilder.ColorPalette

---@return UnityEngine.ProBuilder.ColorPalette
function UnityEngine.ProBuilder.ColorPalette.New() end
---@param colors System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ColorPalette:SetColors(colors) end
function UnityEngine.ProBuilder.ColorPalette:SetDefaultValues() end

---@class UnityEngine.ProBuilder.HSVColor : System.Object
---@field h number
---@field s number
---@field v number
UnityEngine.ProBuilder.HSVColor = {}
---@alias CS.UnityEngine.ProBuilder.HSVColor UnityEngine.ProBuilder.HSVColor
CS.UnityEngine.ProBuilder.HSVColor = UnityEngine.ProBuilder.HSVColor

---@overload fun(h: number, s: number, v: number) : UnityEngine.ProBuilder.HSVColor
---@param h number
---@param s number
---@param v number
---@param sv_modifier number
---@return UnityEngine.ProBuilder.HSVColor
function UnityEngine.ProBuilder.HSVColor.New(h, s, v, sv_modifier) end
---@param col UnityEngine.Color
---@return UnityEngine.ProBuilder.HSVColor
function UnityEngine.ProBuilder.HSVColor.FromRGB(col) end
---@return string
function UnityEngine.ProBuilder.HSVColor:ToString() end
---@param InColor UnityEngine.ProBuilder.HSVColor
---@return number
function UnityEngine.ProBuilder.HSVColor:SqrDistance(InColor) end

---@class UnityEngine.ProBuilder.XYZColor : System.Object
---@field x number
---@field y number
---@field z number
UnityEngine.ProBuilder.XYZColor = {}
---@alias CS.UnityEngine.ProBuilder.XYZColor UnityEngine.ProBuilder.XYZColor
CS.UnityEngine.ProBuilder.XYZColor = UnityEngine.ProBuilder.XYZColor

---@param x number
---@param y number
---@param z number
---@return UnityEngine.ProBuilder.XYZColor
function UnityEngine.ProBuilder.XYZColor.New(x, y, z) end
---@overload fun(col: UnityEngine.Color) : UnityEngine.ProBuilder.XYZColor
---@param R number
---@param G number
---@param B number
---@return UnityEngine.ProBuilder.XYZColor
function UnityEngine.ProBuilder.XYZColor.FromRGB(R, G, B) end
---@return string
function UnityEngine.ProBuilder.XYZColor:ToString() end

---@class UnityEngine.ProBuilder.CIELabColor : System.Object
---@field L number
---@field a number
---@field b number
UnityEngine.ProBuilder.CIELabColor = {}
---@alias CS.UnityEngine.ProBuilder.CIELabColor UnityEngine.ProBuilder.CIELabColor
CS.UnityEngine.ProBuilder.CIELabColor = UnityEngine.ProBuilder.CIELabColor

---@param L number
---@param a number
---@param b number
---@return UnityEngine.ProBuilder.CIELabColor
function UnityEngine.ProBuilder.CIELabColor.New(L, a, b) end
---@param xyz UnityEngine.ProBuilder.XYZColor
---@return UnityEngine.ProBuilder.CIELabColor
function UnityEngine.ProBuilder.CIELabColor.FromXYZ(xyz) end
---@param col UnityEngine.Color
---@return UnityEngine.ProBuilder.CIELabColor
function UnityEngine.ProBuilder.CIELabColor.FromRGB(col) end
---@return string
function UnityEngine.ProBuilder.CIELabColor:ToString() end

---@class UnityEngine.ProBuilder.ColorUtility : System.Object
UnityEngine.ProBuilder.ColorUtility = {}
---@alias CS.UnityEngine.ProBuilder.ColorUtility UnityEngine.ProBuilder.ColorUtility
CS.UnityEngine.ProBuilder.ColorUtility = UnityEngine.ProBuilder.ColorUtility

---@param vec UnityEngine.Vector3
---@return UnityEngine.Color
function UnityEngine.ProBuilder.ColorUtility.GetColor(vec) end
---@overload fun(col: UnityEngine.Color) : UnityEngine.ProBuilder.XYZColor
---@param r number
---@param g number
---@param b number
---@return UnityEngine.ProBuilder.XYZColor
function UnityEngine.ProBuilder.ColorUtility.RGBToXYZ(r, g, b) end
---@param xyz UnityEngine.ProBuilder.XYZColor
---@return UnityEngine.ProBuilder.CIELabColor
function UnityEngine.ProBuilder.ColorUtility.XYZToCIE_Lab(xyz) end
---@param lhs UnityEngine.ProBuilder.CIELabColor
---@param rhs UnityEngine.ProBuilder.CIELabColor
---@return number
function UnityEngine.ProBuilder.ColorUtility.DeltaE(lhs, rhs) end
---@overload fun(hsv: UnityEngine.ProBuilder.HSVColor) : UnityEngine.Color
---@param h number
---@param s number
---@param v number
---@return UnityEngine.Color
function UnityEngine.ProBuilder.ColorUtility.HSVtoRGB(h, s, v) end
---@param color UnityEngine.Color
---@return UnityEngine.ProBuilder.HSVColor
function UnityEngine.ProBuilder.ColorUtility.RGBtoHSV(color) end
---@param InColor UnityEngine.Color
---@return string
function UnityEngine.ProBuilder.ColorUtility.GetColorName(InColor) end

---@class UnityEngine.ProBuilder.Edge : System.ValueType
---@field Empty UnityEngine.ProBuilder.Edge
---@field a number
---@field b number
UnityEngine.ProBuilder.Edge = {}
---@alias CS.UnityEngine.ProBuilder.Edge UnityEngine.ProBuilder.Edge
CS.UnityEngine.ProBuilder.Edge = UnityEngine.ProBuilder.Edge

---@param a number
---@param b number
---@return UnityEngine.ProBuilder.Edge
function UnityEngine.ProBuilder.Edge.New(a, b) end
---@param a UnityEngine.ProBuilder.Edge
---@param b UnityEngine.ProBuilder.Edge
---@return UnityEngine.ProBuilder.Edge
function UnityEngine.ProBuilder.Edge.Add(a, b) end
---@param a UnityEngine.ProBuilder.Edge
---@param b UnityEngine.ProBuilder.Edge
---@return UnityEngine.ProBuilder.Edge
function UnityEngine.ProBuilder.Edge.Subtract(a, b) end
---@return boolean
function UnityEngine.ProBuilder.Edge:IsValid() end
---@return string
function UnityEngine.ProBuilder.Edge:ToString() end
---@overload fun(self: UnityEngine.ProBuilder.Edge, other: UnityEngine.ProBuilder.Edge) : boolean
---@overload fun(self: UnityEngine.ProBuilder.Edge, obj: System.Object) : boolean
---@param other UnityEngine.ProBuilder.Edge
---@param lookup System.Collections.Generic.Dictionary
---@return boolean
function UnityEngine.ProBuilder.Edge:Equals(other, lookup) end
---@return number
function UnityEngine.ProBuilder.Edge:GetHashCode() end
---@overload fun(self: UnityEngine.ProBuilder.Edge, index: number) : boolean
---@param other UnityEngine.ProBuilder.Edge
---@return boolean
function UnityEngine.ProBuilder.Edge:Contains(other) end

---@class UnityEngine.ProBuilder.EdgeLookup : System.ValueType
---@field local UnityEngine.ProBuilder.Edge
---@field common UnityEngine.ProBuilder.Edge
UnityEngine.ProBuilder.EdgeLookup = {}
---@alias CS.UnityEngine.ProBuilder.EdgeLookup UnityEngine.ProBuilder.EdgeLookup
CS.UnityEngine.ProBuilder.EdgeLookup = UnityEngine.ProBuilder.EdgeLookup

---@overload fun(common: UnityEngine.ProBuilder.Edge, _local: UnityEngine.ProBuilder.Edge) : UnityEngine.ProBuilder.EdgeLookup
---@param cx number
---@param cy number
---@param x number
---@param y number
---@return UnityEngine.ProBuilder.EdgeLookup
function UnityEngine.ProBuilder.EdgeLookup.New(cx, cy, x, y) end
---@param edges System.Collections.Generic.IEnumerable
---@param lookup System.Collections.Generic.Dictionary
---@return System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.EdgeLookup.GetEdgeLookup(edges, lookup) end
---@param edges System.Collections.Generic.IEnumerable
---@param lookup System.Collections.Generic.Dictionary
---@return System.Collections.Generic.HashSet
function UnityEngine.ProBuilder.EdgeLookup.GetEdgeLookupHashSet(edges, lookup) end
---@overload fun(self: UnityEngine.ProBuilder.EdgeLookup, other: UnityEngine.ProBuilder.EdgeLookup) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.ProBuilder.EdgeLookup:Equals(obj) end
---@return number
function UnityEngine.ProBuilder.EdgeLookup:GetHashCode() end
---@return string
function UnityEngine.ProBuilder.EdgeLookup:ToString() end

---@class UnityEngine.ProBuilder.EdgeUtility : System.Object
UnityEngine.ProBuilder.EdgeUtility = {}
---@alias CS.UnityEngine.ProBuilder.EdgeUtility UnityEngine.ProBuilder.EdgeUtility
CS.UnityEngine.ProBuilder.EdgeUtility = UnityEngine.ProBuilder.EdgeUtility

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edges System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.EdgeUtility.GetSharedVertexHandleEdges(mesh, edges) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edge UnityEngine.ProBuilder.Edge
---@return UnityEngine.ProBuilder.Edge
function UnityEngine.ProBuilder.EdgeUtility.GetSharedVertexHandleEdge(mesh, edge) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edge UnityEngine.ProBuilder.Edge
---@param out_validEdge UnityEngine.ProBuilder.SimpleTuple
---@return boolean,UnityEngine.ProBuilder.SimpleTuple
function UnityEngine.ProBuilder.EdgeUtility.ValidateEdge(mesh, edge, out_validEdge) end

---@class UnityEngine.ProBuilder.Entity : UnityEngine.MonoBehaviour
---@field entityType UnityEngine.ProBuilder.EntityType
UnityEngine.ProBuilder.Entity = {}
---@alias CS.UnityEngine.ProBuilder.Entity UnityEngine.ProBuilder.Entity
CS.UnityEngine.ProBuilder.Entity = UnityEngine.ProBuilder.Entity

function UnityEngine.ProBuilder.Entity:Awake() end
---@param t UnityEngine.ProBuilder.EntityType
function UnityEngine.ProBuilder.Entity:SetEntity(t) end

---@class UnityEngine.ProBuilder.EntityBehaviour : UnityEngine.MonoBehaviour
---@field manageVisibility boolean
UnityEngine.ProBuilder.EntityBehaviour = {}
---@alias CS.UnityEngine.ProBuilder.EntityBehaviour UnityEngine.ProBuilder.EntityBehaviour
CS.UnityEngine.ProBuilder.EntityBehaviour = UnityEngine.ProBuilder.EntityBehaviour

function UnityEngine.ProBuilder.EntityBehaviour:Initialize() end
function UnityEngine.ProBuilder.EntityBehaviour:OnEnterPlayMode() end
---@param scene UnityEngine.SceneManagement.Scene
---@param mode UnityEngine.SceneManagement.LoadSceneMode
function UnityEngine.ProBuilder.EntityBehaviour:OnSceneLoaded(scene, mode) end

---@class UnityEngine.ProBuilder.Face : System.Object
---@field manualUV boolean
---@field textureGroup number
---@field indexes System.Collections.ObjectModel.ReadOnlyCollection
---@field distinctIndexes System.Collections.ObjectModel.ReadOnlyCollection
---@field edges System.Collections.ObjectModel.ReadOnlyCollection
---@field smoothingGroup number
---@field submeshIndex number
---@field uv UnityEngine.ProBuilder.AutoUnwrapSettings
---@field Item number
UnityEngine.ProBuilder.Face = {}
---@alias CS.UnityEngine.ProBuilder.Face UnityEngine.ProBuilder.Face
CS.UnityEngine.ProBuilder.Face = UnityEngine.ProBuilder.Face

---@overload fun() : UnityEngine.ProBuilder.Face
---@overload fun(indices: System.Collections.Generic.IEnumerable) : UnityEngine.ProBuilder.Face
---@param other UnityEngine.ProBuilder.Face
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.Face.New(other) end
---@param indices System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.Face:SetIndexes(indices) end
---@param other UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.Face:CopyFrom(other) end
---@param a number
---@param b number
---@param c number
---@return boolean
function UnityEngine.ProBuilder.Face:Contains(a, b, c) end
---@return boolean
function UnityEngine.ProBuilder.Face:IsQuad() end
---@return System.Int32[]
function UnityEngine.ProBuilder.Face:ToQuad() end
---@return string
function UnityEngine.ProBuilder.Face:ToString() end
---@param offset number
function UnityEngine.ProBuilder.Face:ShiftIndexes(offset) end
function UnityEngine.ProBuilder.Face:ShiftIndexesToZero() end
function UnityEngine.ProBuilder.Face:Reverse() end

---@class UnityEngine.ProBuilder.FaceRebuildData : System.Object
---@field face UnityEngine.ProBuilder.Face
---@field vertices System.Collections.Generic.List
---@field sharedIndexes System.Collections.Generic.List
---@field sharedIndexesUV System.Collections.Generic.List
UnityEngine.ProBuilder.FaceRebuildData = {}
---@alias CS.UnityEngine.ProBuilder.FaceRebuildData UnityEngine.ProBuilder.FaceRebuildData
CS.UnityEngine.ProBuilder.FaceRebuildData = UnityEngine.ProBuilder.FaceRebuildData

---@return UnityEngine.ProBuilder.FaceRebuildData
function UnityEngine.ProBuilder.FaceRebuildData.New() end
---@overload fun(newFaces: System.Collections.Generic.IEnumerable, mesh: UnityEngine.ProBuilder.ProBuilderMesh, vertices: System.Collections.Generic.List, faces: System.Collections.Generic.List)
---@param newFaces System.Collections.Generic.IEnumerable
---@param vertices System.Collections.Generic.List
---@param faces System.Collections.Generic.List
---@param sharedVertexLookup System.Collections.Generic.Dictionary
---@param sharedTextureLookup System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.FaceRebuildData.Apply(newFaces, vertices, faces, sharedVertexLookup, sharedTextureLookup) end
---@return number
function UnityEngine.ProBuilder.FaceRebuildData:Offset() end
---@return string
function UnityEngine.ProBuilder.FaceRebuildData:ToString() end

---@class UnityEngine.ProBuilder.HandleConstraint2D : System.Object
---@field None UnityEngine.ProBuilder.HandleConstraint2D
---@field x number
---@field y number
UnityEngine.ProBuilder.HandleConstraint2D = {}
---@alias CS.UnityEngine.ProBuilder.HandleConstraint2D UnityEngine.ProBuilder.HandleConstraint2D
CS.UnityEngine.ProBuilder.HandleConstraint2D = UnityEngine.ProBuilder.HandleConstraint2D

---@param x number
---@param y number
---@return UnityEngine.ProBuilder.HandleConstraint2D
function UnityEngine.ProBuilder.HandleConstraint2D.New(x, y) end
---@return UnityEngine.ProBuilder.HandleConstraint2D
function UnityEngine.ProBuilder.HandleConstraint2D:Inverse() end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.ProBuilder.HandleConstraint2D:Mask(v) end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.ProBuilder.HandleConstraint2D:InverseMask(v) end
---@return number
function UnityEngine.ProBuilder.HandleConstraint2D:GetHashCode() end
---@param o System.Object
---@return boolean
function UnityEngine.ProBuilder.HandleConstraint2D:Equals(o) end
---@return string
function UnityEngine.ProBuilder.HandleConstraint2D:ToString() end

---@class UnityEngine.ProBuilder.HandleOrientation
---@field World UnityEngine.ProBuilder.HandleOrientation
---@field ActiveObject UnityEngine.ProBuilder.HandleOrientation
---@field ActiveElement UnityEngine.ProBuilder.HandleOrientation
UnityEngine.ProBuilder.HandleOrientation = {}
---@alias CS.UnityEngine.ProBuilder.HandleOrientation UnityEngine.ProBuilder.HandleOrientation
CS.UnityEngine.ProBuilder.HandleOrientation = UnityEngine.ProBuilder.HandleOrientation


---@class UnityEngine.ProBuilder.HandleUtility : System.Object
UnityEngine.ProBuilder.HandleUtility = {}
---@alias CS.UnityEngine.ProBuilder.HandleUtility UnityEngine.ProBuilder.HandleUtility
CS.UnityEngine.ProBuilder.HandleUtility = UnityEngine.ProBuilder.HandleUtility

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indices System.Collections.Generic.IEnumerable
---@return UnityEngine.Quaternion
function UnityEngine.ProBuilder.HandleUtility.GetRotation(mesh, indices) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, orientation: UnityEngine.ProBuilder.HandleOrientation, faces: System.Collections.Generic.IEnumerable) : UnityEngine.Quaternion
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return UnityEngine.Quaternion
function UnityEngine.ProBuilder.HandleUtility.GetFaceRotation(mesh, face) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, orientation: UnityEngine.ProBuilder.HandleOrientation, edges: System.Collections.Generic.IEnumerable) : UnityEngine.Quaternion
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edge UnityEngine.ProBuilder.Edge
---@return UnityEngine.Quaternion
function UnityEngine.ProBuilder.HandleUtility.GetEdgeRotation(mesh, edge) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, orientation: UnityEngine.ProBuilder.HandleOrientation, vertices: System.Collections.Generic.IEnumerable) : UnityEngine.Quaternion
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param vertex number
---@return UnityEngine.Quaternion
function UnityEngine.ProBuilder.HandleUtility.GetVertexRotation(mesh, vertex) end

---@class UnityEngine.ProBuilder.IHasDefault
UnityEngine.ProBuilder.IHasDefault = {}
---@alias CS.UnityEngine.ProBuilder.IHasDefault UnityEngine.ProBuilder.IHasDefault
CS.UnityEngine.ProBuilder.IHasDefault = UnityEngine.ProBuilder.IHasDefault

function UnityEngine.ProBuilder.IHasDefault:SetDefaultValues() end

---@class UnityEngine.ProBuilder.InternalUtility : System.Object
UnityEngine.ProBuilder.InternalUtility = {}
---@alias CS.UnityEngine.ProBuilder.InternalUtility UnityEngine.ProBuilder.InternalUtility
CS.UnityEngine.ProBuilder.InternalUtility = UnityEngine.ProBuilder.InternalUtility

---@param t UnityEngine.Transform
---@return UnityEngine.GameObject
function UnityEngine.ProBuilder.InternalUtility.EmptyGameObjectWithTransform(t) end
---@param name string
---@param t UnityEngine.Transform
---@param mesh UnityEngine.Mesh
---@param mat UnityEngine.Material
---@param inheritParent boolean
---@return UnityEngine.GameObject
function UnityEngine.ProBuilder.InternalUtility.MeshGameObjectWithTransform(name, t, mesh, mat, inheritParent) end
---@param character System.Char
---@return string
function UnityEngine.ProBuilder.InternalUtility.ControlKeyString(character) end
---@param value string
---@param ref_col UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.ProBuilder.InternalUtility.TryParseColor(value, ref_col) end

---@class UnityEngine.ProBuilder.IntVec2 : System.ValueType
---@field value UnityEngine.Vector2
---@field x number
---@field y number
UnityEngine.ProBuilder.IntVec2 = {}
---@alias CS.UnityEngine.ProBuilder.IntVec2 UnityEngine.ProBuilder.IntVec2
CS.UnityEngine.ProBuilder.IntVec2 = UnityEngine.ProBuilder.IntVec2

---@param vector UnityEngine.Vector2
---@return UnityEngine.ProBuilder.IntVec2
function UnityEngine.ProBuilder.IntVec2.New(vector) end
---@return string
function UnityEngine.ProBuilder.IntVec2:ToString() end
---@overload fun(self: UnityEngine.ProBuilder.IntVec2, p: UnityEngine.ProBuilder.IntVec2) : boolean
---@overload fun(self: UnityEngine.ProBuilder.IntVec2, p: UnityEngine.Vector2) : boolean
---@param b System.Object
---@return boolean
function UnityEngine.ProBuilder.IntVec2:Equals(b) end
---@return number
function UnityEngine.ProBuilder.IntVec2:GetHashCode() end

---@class UnityEngine.ProBuilder.IntVec3 : System.ValueType
---@field value UnityEngine.Vector3
---@field x number
---@field y number
---@field z number
UnityEngine.ProBuilder.IntVec3 = {}
---@alias CS.UnityEngine.ProBuilder.IntVec3 UnityEngine.ProBuilder.IntVec3
CS.UnityEngine.ProBuilder.IntVec3 = UnityEngine.ProBuilder.IntVec3

---@param vector UnityEngine.Vector3
---@return UnityEngine.ProBuilder.IntVec3
function UnityEngine.ProBuilder.IntVec3.New(vector) end
---@return string
function UnityEngine.ProBuilder.IntVec3:ToString() end
---@overload fun(self: UnityEngine.ProBuilder.IntVec3, p: UnityEngine.ProBuilder.IntVec3) : boolean
---@overload fun(self: UnityEngine.ProBuilder.IntVec3, p: UnityEngine.Vector3) : boolean
---@param b System.Object
---@return boolean
function UnityEngine.ProBuilder.IntVec3:Equals(b) end
---@return number
function UnityEngine.ProBuilder.IntVec3:GetHashCode() end

---@class UnityEngine.ProBuilder.IntVec4 : System.ValueType
---@field value UnityEngine.Vector4
---@field x number
---@field y number
---@field z number
---@field w number
UnityEngine.ProBuilder.IntVec4 = {}
---@alias CS.UnityEngine.ProBuilder.IntVec4 UnityEngine.ProBuilder.IntVec4
CS.UnityEngine.ProBuilder.IntVec4 = UnityEngine.ProBuilder.IntVec4

---@param vector UnityEngine.Vector4
---@return UnityEngine.ProBuilder.IntVec4
function UnityEngine.ProBuilder.IntVec4.New(vector) end
---@return string
function UnityEngine.ProBuilder.IntVec4:ToString() end
---@overload fun(self: UnityEngine.ProBuilder.IntVec4, p: UnityEngine.ProBuilder.IntVec4) : boolean
---@overload fun(self: UnityEngine.ProBuilder.IntVec4, p: UnityEngine.Vector4) : boolean
---@param b System.Object
---@return boolean
function UnityEngine.ProBuilder.IntVec4:Equals(b) end
---@return number
function UnityEngine.ProBuilder.IntVec4:GetHashCode() end

---@class UnityEngine.ProBuilder.LogLevel
---@field None UnityEngine.ProBuilder.LogLevel
---@field Error UnityEngine.ProBuilder.LogLevel
---@field Warning UnityEngine.ProBuilder.LogLevel
---@field Info UnityEngine.ProBuilder.LogLevel
---@field Default UnityEngine.ProBuilder.LogLevel
---@field All UnityEngine.ProBuilder.LogLevel
UnityEngine.ProBuilder.LogLevel = {}
---@alias CS.UnityEngine.ProBuilder.LogLevel UnityEngine.ProBuilder.LogLevel
CS.UnityEngine.ProBuilder.LogLevel = UnityEngine.ProBuilder.LogLevel


---@class UnityEngine.ProBuilder.LogOutput
---@field None UnityEngine.ProBuilder.LogOutput
---@field Console UnityEngine.ProBuilder.LogOutput
---@field File UnityEngine.ProBuilder.LogOutput
UnityEngine.ProBuilder.LogOutput = {}
---@alias CS.UnityEngine.ProBuilder.LogOutput UnityEngine.ProBuilder.LogOutput
CS.UnityEngine.ProBuilder.LogOutput = UnityEngine.ProBuilder.LogOutput


---@class UnityEngine.ProBuilder.Log : System.Object
---@field k_ProBuilderLogFileName string
UnityEngine.ProBuilder.Log = {}
---@alias CS.UnityEngine.ProBuilder.Log UnityEngine.ProBuilder.Log
CS.UnityEngine.ProBuilder.Log = UnityEngine.ProBuilder.Log

---@param level UnityEngine.ProBuilder.LogLevel
function UnityEngine.ProBuilder.Log.PushLogLevel(level) end
function UnityEngine.ProBuilder.Log.PopLogLevel() end
---@param level UnityEngine.ProBuilder.LogLevel
function UnityEngine.ProBuilder.Log.SetLogLevel(level) end
---@param output UnityEngine.ProBuilder.LogOutput
function UnityEngine.ProBuilder.Log.SetOutput(output) end
---@param path string
function UnityEngine.ProBuilder.Log.SetLogFile(path) end
---@overload fun(message: string)
---@param format string
---@param values System.Object[]
function UnityEngine.ProBuilder.Log.Debug(format, values) end
---@overload fun(format: string, values: System.Object[])
---@param message string
function UnityEngine.ProBuilder.Log.Info(message) end
---@overload fun(format: string, values: System.Object[])
---@param message string
function UnityEngine.ProBuilder.Log.Warning(message) end
---@overload fun(format: string, values: System.Object[])
---@param message string
function UnityEngine.ProBuilder.Log.Error(message) end
function UnityEngine.ProBuilder.Log.ClearLogFile() end

---@class UnityEngine.ProBuilder.MaterialUtility : System.Object
UnityEngine.ProBuilder.MaterialUtility = {}
---@alias CS.UnityEngine.ProBuilder.MaterialUtility UnityEngine.ProBuilder.MaterialUtility
CS.UnityEngine.ProBuilder.MaterialUtility = UnityEngine.ProBuilder.MaterialUtility


---@class UnityEngine.ProBuilder.Math : System.Object
---@field phi number
UnityEngine.ProBuilder.Math = {}
---@alias CS.UnityEngine.ProBuilder.Math UnityEngine.ProBuilder.Math
CS.UnityEngine.ProBuilder.Math = UnityEngine.ProBuilder.Math

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return number
function UnityEngine.ProBuilder.Math.SqrDistance(a, b) end
---@param x UnityEngine.Vector3
---@param y UnityEngine.Vector3
---@param z UnityEngine.Vector3
---@return number
function UnityEngine.ProBuilder.Math.TriangleArea(x, y, z) end
---@param v UnityEngine.Vector2
---@param origin UnityEngine.Vector2
---@param scale UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.ProBuilder.Math.ScaleAroundPoint(v, origin, scale) end
---@param point UnityEngine.Vector2
---@param lineStart UnityEngine.Vector2
---@param lineEnd UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.ProBuilder.Math.ReflectPoint(point, lineStart, lineEnd) end
---@overload fun(point: UnityEngine.Vector2, lineStart: UnityEngine.Vector2, lineEnd: UnityEngine.Vector2) : number
---@param point UnityEngine.Vector3
---@param lineStart UnityEngine.Vector3
---@param lineEnd UnityEngine.Vector3
---@return number
function UnityEngine.ProBuilder.Math.DistancePointLineSegment(point, lineStart, lineEnd) end
---@param a UnityEngine.Ray
---@param b UnityEngine.Ray
---@return UnityEngine.Vector3
function UnityEngine.ProBuilder.Math.GetNearestPointRayRay(a, b) end
---@param InRay UnityEngine.Ray
---@param InTriangleA UnityEngine.Vector3
---@param InTriangleB UnityEngine.Vector3
---@param InTriangleC UnityEngine.Vector3
---@param out_OutDistance number
---@param out_OutPoint UnityEngine.Vector3
---@return boolean,number,UnityEngine.Vector3
function UnityEngine.ProBuilder.Math.RayIntersectsTriangle(InRay, InTriangleA, InTriangleB, InTriangleC, out_OutDistance, out_OutPoint) end
---@param x number
---@return number
function UnityEngine.ProBuilder.Math.Secant(x) end
---@overload fun(p0: UnityEngine.Vector3, p1: UnityEngine.Vector3, p2: UnityEngine.Vector3) : UnityEngine.Vector3
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return UnityEngine.Vector3
function UnityEngine.ProBuilder.Math.Normal(mesh, face) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return UnityEngine.ProBuilder.Normal
function UnityEngine.ProBuilder.Math.NormalTangentBitangent(mesh, face) end
---@overload fun(array: System.Collections.Generic.IList, indexes: System.Collections.Generic.IList) : UnityEngine.Vector2
---@overload fun(array: System.Collections.Generic.IList, indexes: System.Collections.Generic.IList) : UnityEngine.Vector3
---@param array System.Collections.Generic.IList
---@param indexes System.Collections.Generic.IList
---@return UnityEngine.Vector4
function UnityEngine.ProBuilder.Math.Average(array, indexes) end
---@param value number
---@param lowerBound number
---@param upperBound number
---@return number
function UnityEngine.ProBuilder.Math.Clamp(value, lowerBound, upperBound) end

---@class UnityEngine.ProBuilder.MeshHandle : System.Object
---@field mesh UnityEngine.Mesh
UnityEngine.ProBuilder.MeshHandle = {}
---@alias CS.UnityEngine.ProBuilder.MeshHandle UnityEngine.ProBuilder.MeshHandle
CS.UnityEngine.ProBuilder.MeshHandle = UnityEngine.ProBuilder.MeshHandle

---@param transform UnityEngine.Transform
---@param mesh UnityEngine.Mesh
---@return UnityEngine.ProBuilder.MeshHandle
function UnityEngine.ProBuilder.MeshHandle.New(transform, mesh) end
---@param submeshIndex number
function UnityEngine.ProBuilder.MeshHandle:DrawMeshNow(submeshIndex) end

---@class UnityEngine.ProBuilder.MeshHandles : System.Object
UnityEngine.ProBuilder.MeshHandles = {}
---@alias CS.UnityEngine.ProBuilder.MeshHandles UnityEngine.ProBuilder.MeshHandles
CS.UnityEngine.ProBuilder.MeshHandles = UnityEngine.ProBuilder.MeshHandles


---@class UnityEngine.ProBuilder.MeshUtility : System.Object
UnityEngine.ProBuilder.MeshUtility = {}
---@alias CS.UnityEngine.ProBuilder.MeshUtility UnityEngine.ProBuilder.MeshUtility
CS.UnityEngine.ProBuilder.MeshUtility = UnityEngine.ProBuilder.MeshUtility

---@param mesh UnityEngine.Mesh
function UnityEngine.ProBuilder.MeshUtility.GenerateTangent(mesh) end
---@param source UnityEngine.Mesh
---@return UnityEngine.Mesh
function UnityEngine.ProBuilder.MeshUtility.DeepCopy(source) end
---@param source UnityEngine.Mesh
---@param destination UnityEngine.Mesh
function UnityEngine.ProBuilder.MeshUtility.CopyTo(source, destination) end
---@param mesh UnityEngine.Mesh
---@return string
function UnityEngine.ProBuilder.MeshUtility.Print(mesh) end
---@param mesh UnityEngine.Mesh
---@return number
function UnityEngine.ProBuilder.MeshUtility.GetIndexCount(mesh) end
---@param mesh UnityEngine.Mesh
---@return number
function UnityEngine.ProBuilder.MeshUtility.GetPrimitiveCount(mesh) end
---@param probuilderMesh UnityEngine.ProBuilder.ProBuilderMesh
---@param targetMesh UnityEngine.Mesh
---@param preferredTopology UnityEngine.MeshTopology
function UnityEngine.ProBuilder.MeshUtility.Compile(probuilderMesh, targetMesh, preferredTopology) end
---@param mesh UnityEngine.Mesh
---@return UnityEngine.ProBuilder.Vertex[]
function UnityEngine.ProBuilder.MeshUtility.GetVertices(mesh) end
---@param mesh UnityEngine.Mesh
---@param vertices UnityEngine.ProBuilder.Vertex[]
function UnityEngine.ProBuilder.MeshUtility.CollapseSharedVertices(mesh, vertices) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param currentSize UnityEngine.Bounds
---@param sizeToFit UnityEngine.Vector3
function UnityEngine.ProBuilder.MeshUtility.FitToSize(mesh, currentSize, sizeToFit) end

---@class UnityEngine.ProBuilder.Normal : System.ValueType
---@field normal UnityEngine.Vector3
---@field tangent UnityEngine.Vector4
---@field bitangent UnityEngine.Vector3
UnityEngine.ProBuilder.Normal = {}
---@alias CS.UnityEngine.ProBuilder.Normal UnityEngine.ProBuilder.Normal
CS.UnityEngine.ProBuilder.Normal = UnityEngine.ProBuilder.Normal

---@overload fun(self: UnityEngine.ProBuilder.Normal, obj: System.Object) : boolean
---@param other UnityEngine.ProBuilder.Normal
---@return boolean
function UnityEngine.ProBuilder.Normal:Equals(other) end
---@return number
function UnityEngine.ProBuilder.Normal:GetHashCode() end

---@class UnityEngine.ProBuilder.Normals : System.Object
UnityEngine.ProBuilder.Normals = {}
---@alias CS.UnityEngine.ProBuilder.Normals UnityEngine.ProBuilder.Normals
CS.UnityEngine.ProBuilder.Normals = UnityEngine.ProBuilder.Normals

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.Normals.CalculateTangents(mesh) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.Normals.CalculateNormals(mesh) end

---@class UnityEngine.ProBuilder.ObjectPool : System.Object
---@field desiredSize number
---@field constructor System.Func[T]
---@field destructor System.Action[T]
UnityEngine.ProBuilder.ObjectPool = {}
---@alias CS.UnityEngine.ProBuilder.ObjectPool UnityEngine.ProBuilder.ObjectPool
CS.UnityEngine.ProBuilder.ObjectPool = UnityEngine.ProBuilder.ObjectPool

---@param initialSize number
---@param desiredSize number
---@param constructor System.Func[T]
---@param destructor System.Action[T]
---@param lazyInitialization boolean
---@return UnityEngine.ProBuilder.ObjectPool
function UnityEngine.ProBuilder.ObjectPool.New(initialSize, desiredSize, constructor, destructor, lazyInitialization) end
---@return T
function UnityEngine.ProBuilder.ObjectPool:Dequeue() end
---@param obj T
function UnityEngine.ProBuilder.ObjectPool:Enqueue(obj) end
function UnityEngine.ProBuilder.ObjectPool:Empty() end
function UnityEngine.ProBuilder.ObjectPool:Dispose() end

---@class UnityEngine.ProBuilder.PivotPoint
---@field Center UnityEngine.ProBuilder.PivotPoint
---@field IndividualOrigins UnityEngine.ProBuilder.PivotPoint
---@field ActiveElement UnityEngine.ProBuilder.PivotPoint
UnityEngine.ProBuilder.PivotPoint = {}
---@alias CS.UnityEngine.ProBuilder.PivotPoint UnityEngine.ProBuilder.PivotPoint
CS.UnityEngine.ProBuilder.PivotPoint = UnityEngine.ProBuilder.PivotPoint


---@class UnityEngine.ProBuilder.PolyShape : UnityEngine.MonoBehaviour
---@field controlPoints System.Collections.ObjectModel.ReadOnlyCollection
---@field extrude number
---@field flipNormals boolean
UnityEngine.ProBuilder.PolyShape = {}
---@alias CS.UnityEngine.ProBuilder.PolyShape UnityEngine.ProBuilder.PolyShape
CS.UnityEngine.ProBuilder.PolyShape = UnityEngine.ProBuilder.PolyShape

---@param points System.Collections.Generic.IList
function UnityEngine.ProBuilder.PolyShape:SetControlPoints(points) end
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.PolyShape:CreateShapeFromPolygon() end

---@class UnityEngine.ProBuilder.PreferenceDictionary : UnityEngine.ScriptableObject
UnityEngine.ProBuilder.PreferenceDictionary = {}
---@alias CS.UnityEngine.ProBuilder.PreferenceDictionary UnityEngine.ProBuilder.PreferenceDictionary
CS.UnityEngine.ProBuilder.PreferenceDictionary = UnityEngine.ProBuilder.PreferenceDictionary

---@return UnityEngine.ProBuilder.PreferenceDictionary
function UnityEngine.ProBuilder.PreferenceDictionary.New() end
function UnityEngine.ProBuilder.PreferenceDictionary:OnBeforeSerialize() end
function UnityEngine.ProBuilder.PreferenceDictionary:OnAfterDeserialize() end
function UnityEngine.ProBuilder.PreferenceDictionary:SetDefaultValues() end
---@param key string
---@return boolean
function UnityEngine.ProBuilder.PreferenceDictionary:HasKey(key) end
---@param key string
function UnityEngine.ProBuilder.PreferenceDictionary:DeleteKey(key) end
---@param key string
---@param fallback boolean
---@return boolean
function UnityEngine.ProBuilder.PreferenceDictionary:GetBool(key, fallback) end
---@param key string
---@param fallback number
---@return number
function UnityEngine.ProBuilder.PreferenceDictionary:GetInt(key, fallback) end
---@param key string
---@param fallback number
---@return number
function UnityEngine.ProBuilder.PreferenceDictionary:GetFloat(key, fallback) end
---@param key string
---@param fallback string
---@return string
function UnityEngine.ProBuilder.PreferenceDictionary:GetString(key, fallback) end
---@param key string
---@param fallback UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.ProBuilder.PreferenceDictionary:GetColor(key, fallback) end
---@param key string
---@param fallback UnityEngine.Material
---@return UnityEngine.Material
function UnityEngine.ProBuilder.PreferenceDictionary:GetMaterial(key, fallback) end
---@param key string
---@param value boolean
function UnityEngine.ProBuilder.PreferenceDictionary:SetBool(key, value) end
---@param key string
---@param value number
function UnityEngine.ProBuilder.PreferenceDictionary:SetInt(key, value) end
---@param key string
---@param value number
function UnityEngine.ProBuilder.PreferenceDictionary:SetFloat(key, value) end
---@param key string
---@param value string
function UnityEngine.ProBuilder.PreferenceDictionary:SetString(key, value) end
---@param key string
---@param value UnityEngine.Color
function UnityEngine.ProBuilder.PreferenceDictionary:SetColor(key, value) end
---@param key string
---@param value UnityEngine.Material
function UnityEngine.ProBuilder.PreferenceDictionary:SetMaterial(key, value) end
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.PreferenceDictionary:GetBoolDictionary() end
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.PreferenceDictionary:GetIntDictionary() end
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.PreferenceDictionary:GetFloatDictionary() end
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.PreferenceDictionary:GetStringDictionary() end
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.PreferenceDictionary:GetColorDictionary() end
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.PreferenceDictionary:GetMaterialDictionary() end
function UnityEngine.ProBuilder.PreferenceDictionary:Clear() end

---@class UnityEngine.ProBuilder.PreferenceKeys : System.Object
---@field pluginTitle string
---@field menuEditor number
---@field menuSelection number
---@field menuGeometry number
---@field menuActions number
---@field menuMaterialColors number
---@field menuVertexColors number
---@field menuRepair number
---@field menuMisc number
---@field menuExport number
UnityEngine.ProBuilder.PreferenceKeys = {}
---@alias CS.UnityEngine.ProBuilder.PreferenceKeys UnityEngine.ProBuilder.PreferenceKeys
CS.UnityEngine.ProBuilder.PreferenceKeys = UnityEngine.ProBuilder.PreferenceKeys


---@class UnityEngine.ProBuilder.SelectMode
---@field None UnityEngine.ProBuilder.SelectMode
---@field Object UnityEngine.ProBuilder.SelectMode
---@field Vertex UnityEngine.ProBuilder.SelectMode
---@field Edge UnityEngine.ProBuilder.SelectMode
---@field Face UnityEngine.ProBuilder.SelectMode
---@field TextureFace UnityEngine.ProBuilder.SelectMode
---@field TextureEdge UnityEngine.ProBuilder.SelectMode
---@field TextureVertex UnityEngine.ProBuilder.SelectMode
---@field InputTool UnityEngine.ProBuilder.SelectMode
---@field Any UnityEngine.ProBuilder.SelectMode
UnityEngine.ProBuilder.SelectMode = {}
---@alias CS.UnityEngine.ProBuilder.SelectMode UnityEngine.ProBuilder.SelectMode
CS.UnityEngine.ProBuilder.SelectMode = UnityEngine.ProBuilder.SelectMode


---@class UnityEngine.ProBuilder.ComponentMode
---@field Vertex UnityEngine.ProBuilder.ComponentMode
---@field Edge UnityEngine.ProBuilder.ComponentMode
---@field Face UnityEngine.ProBuilder.ComponentMode
UnityEngine.ProBuilder.ComponentMode = {}
---@alias CS.UnityEngine.ProBuilder.ComponentMode UnityEngine.ProBuilder.ComponentMode
CS.UnityEngine.ProBuilder.ComponentMode = UnityEngine.ProBuilder.ComponentMode


---@class UnityEngine.ProBuilder.EditLevel
---@field Top UnityEngine.ProBuilder.EditLevel
---@field Geometry UnityEngine.ProBuilder.EditLevel
---@field Texture UnityEngine.ProBuilder.EditLevel
---@field Plugin UnityEngine.ProBuilder.EditLevel
UnityEngine.ProBuilder.EditLevel = {}
---@alias CS.UnityEngine.ProBuilder.EditLevel UnityEngine.ProBuilder.EditLevel
CS.UnityEngine.ProBuilder.EditLevel = UnityEngine.ProBuilder.EditLevel


---@class UnityEngine.ProBuilder.EntityType
---@field Detail UnityEngine.ProBuilder.EntityType
---@field Occluder UnityEngine.ProBuilder.EntityType
---@field Trigger UnityEngine.ProBuilder.EntityType
---@field Collider UnityEngine.ProBuilder.EntityType
---@field Mover UnityEngine.ProBuilder.EntityType
UnityEngine.ProBuilder.EntityType = {}
---@alias CS.UnityEngine.ProBuilder.EntityType UnityEngine.ProBuilder.EntityType
CS.UnityEngine.ProBuilder.EntityType = UnityEngine.ProBuilder.EntityType


---@class UnityEngine.ProBuilder.ColliderType
---@field None UnityEngine.ProBuilder.ColliderType
---@field BoxCollider UnityEngine.ProBuilder.ColliderType
---@field MeshCollider UnityEngine.ProBuilder.ColliderType
UnityEngine.ProBuilder.ColliderType = {}
---@alias CS.UnityEngine.ProBuilder.ColliderType UnityEngine.ProBuilder.ColliderType
CS.UnityEngine.ProBuilder.ColliderType = UnityEngine.ProBuilder.ColliderType


---@class UnityEngine.ProBuilder.ProjectionAxis
---@field X UnityEngine.ProBuilder.ProjectionAxis
---@field Y UnityEngine.ProBuilder.ProjectionAxis
---@field Z UnityEngine.ProBuilder.ProjectionAxis
---@field XNegative UnityEngine.ProBuilder.ProjectionAxis
---@field YNegative UnityEngine.ProBuilder.ProjectionAxis
---@field ZNegative UnityEngine.ProBuilder.ProjectionAxis
UnityEngine.ProBuilder.ProjectionAxis = {}
---@alias CS.UnityEngine.ProBuilder.ProjectionAxis UnityEngine.ProBuilder.ProjectionAxis
CS.UnityEngine.ProBuilder.ProjectionAxis = UnityEngine.ProBuilder.ProjectionAxis


---@class UnityEngine.ProBuilder.HandleAxis
---@field X UnityEngine.ProBuilder.HandleAxis
---@field Y UnityEngine.ProBuilder.HandleAxis
---@field Z UnityEngine.ProBuilder.HandleAxis
---@field Free UnityEngine.ProBuilder.HandleAxis
UnityEngine.ProBuilder.HandleAxis = {}
---@alias CS.UnityEngine.ProBuilder.HandleAxis UnityEngine.ProBuilder.HandleAxis
CS.UnityEngine.ProBuilder.HandleAxis = UnityEngine.ProBuilder.HandleAxis


---@class UnityEngine.ProBuilder.Axis
---@field Right UnityEngine.ProBuilder.Axis
---@field Left UnityEngine.ProBuilder.Axis
---@field Up UnityEngine.ProBuilder.Axis
---@field Down UnityEngine.ProBuilder.Axis
---@field Forward UnityEngine.ProBuilder.Axis
---@field Backward UnityEngine.ProBuilder.Axis
UnityEngine.ProBuilder.Axis = {}
---@alias CS.UnityEngine.ProBuilder.Axis UnityEngine.ProBuilder.Axis
CS.UnityEngine.ProBuilder.Axis = UnityEngine.ProBuilder.Axis


---@class UnityEngine.ProBuilder.WindingOrder
---@field Unknown UnityEngine.ProBuilder.WindingOrder
---@field Clockwise UnityEngine.ProBuilder.WindingOrder
---@field CounterClockwise UnityEngine.ProBuilder.WindingOrder
UnityEngine.ProBuilder.WindingOrder = {}
---@alias CS.UnityEngine.ProBuilder.WindingOrder UnityEngine.ProBuilder.WindingOrder
CS.UnityEngine.ProBuilder.WindingOrder = UnityEngine.ProBuilder.WindingOrder


---@class UnityEngine.ProBuilder.SortMethod
---@field Clockwise UnityEngine.ProBuilder.SortMethod
---@field CounterClockwise UnityEngine.ProBuilder.SortMethod
UnityEngine.ProBuilder.SortMethod = {}
---@alias CS.UnityEngine.ProBuilder.SortMethod UnityEngine.ProBuilder.SortMethod
CS.UnityEngine.ProBuilder.SortMethod = UnityEngine.ProBuilder.SortMethod


---@class UnityEngine.ProBuilder.CullingMode
---@field None UnityEngine.ProBuilder.CullingMode
---@field Back UnityEngine.ProBuilder.CullingMode
---@field Front UnityEngine.ProBuilder.CullingMode
---@field FrontBack UnityEngine.ProBuilder.CullingMode
UnityEngine.ProBuilder.CullingMode = {}
---@alias CS.UnityEngine.ProBuilder.CullingMode UnityEngine.ProBuilder.CullingMode
CS.UnityEngine.ProBuilder.CullingMode = UnityEngine.ProBuilder.CullingMode


---@class UnityEngine.ProBuilder.RectSelectMode
---@field Partial UnityEngine.ProBuilder.RectSelectMode
---@field Complete UnityEngine.ProBuilder.RectSelectMode
UnityEngine.ProBuilder.RectSelectMode = {}
---@alias CS.UnityEngine.ProBuilder.RectSelectMode UnityEngine.ProBuilder.RectSelectMode
CS.UnityEngine.ProBuilder.RectSelectMode = UnityEngine.ProBuilder.RectSelectMode


---@class UnityEngine.ProBuilder.MeshSyncState
---@field Null UnityEngine.ProBuilder.MeshSyncState
---@field Lightmap UnityEngine.ProBuilder.MeshSyncState
---@field InSync UnityEngine.ProBuilder.MeshSyncState
---@field NeedsRebuild UnityEngine.ProBuilder.MeshSyncState
UnityEngine.ProBuilder.MeshSyncState = {}
---@alias CS.UnityEngine.ProBuilder.MeshSyncState UnityEngine.ProBuilder.MeshSyncState
CS.UnityEngine.ProBuilder.MeshSyncState = UnityEngine.ProBuilder.MeshSyncState


---@class UnityEngine.ProBuilder.MeshArrays
---@field Position UnityEngine.ProBuilder.MeshArrays
---@field Texture0 UnityEngine.ProBuilder.MeshArrays
---@field Texture1 UnityEngine.ProBuilder.MeshArrays
---@field Lightmap UnityEngine.ProBuilder.MeshArrays
---@field Texture2 UnityEngine.ProBuilder.MeshArrays
---@field Texture3 UnityEngine.ProBuilder.MeshArrays
---@field Color UnityEngine.ProBuilder.MeshArrays
---@field Normal UnityEngine.ProBuilder.MeshArrays
---@field Tangent UnityEngine.ProBuilder.MeshArrays
---@field All UnityEngine.ProBuilder.MeshArrays
UnityEngine.ProBuilder.MeshArrays = {}
---@alias CS.UnityEngine.ProBuilder.MeshArrays UnityEngine.ProBuilder.MeshArrays
CS.UnityEngine.ProBuilder.MeshArrays = UnityEngine.ProBuilder.MeshArrays


---@class UnityEngine.ProBuilder.IndexFormat
---@field Local UnityEngine.ProBuilder.IndexFormat
---@field Common UnityEngine.ProBuilder.IndexFormat
---@field Both UnityEngine.ProBuilder.IndexFormat
UnityEngine.ProBuilder.IndexFormat = {}
---@alias CS.UnityEngine.ProBuilder.IndexFormat UnityEngine.ProBuilder.IndexFormat
CS.UnityEngine.ProBuilder.IndexFormat = UnityEngine.ProBuilder.IndexFormat


---@class UnityEngine.ProBuilder.RefreshMask
---@field UV UnityEngine.ProBuilder.RefreshMask
---@field Colors UnityEngine.ProBuilder.RefreshMask
---@field Normals UnityEngine.ProBuilder.RefreshMask
---@field Tangents UnityEngine.ProBuilder.RefreshMask
---@field Collisions UnityEngine.ProBuilder.RefreshMask
---@field Bounds UnityEngine.ProBuilder.RefreshMask
---@field All UnityEngine.ProBuilder.RefreshMask
UnityEngine.ProBuilder.RefreshMask = {}
---@alias CS.UnityEngine.ProBuilder.RefreshMask UnityEngine.ProBuilder.RefreshMask
CS.UnityEngine.ProBuilder.RefreshMask = UnityEngine.ProBuilder.RefreshMask


---@class UnityEngine.ProBuilder.ExtrudeMethod
---@field IndividualFaces UnityEngine.ProBuilder.ExtrudeMethod
---@field VertexNormal UnityEngine.ProBuilder.ExtrudeMethod
---@field FaceNormal UnityEngine.ProBuilder.ExtrudeMethod
UnityEngine.ProBuilder.ExtrudeMethod = {}
---@alias CS.UnityEngine.ProBuilder.ExtrudeMethod UnityEngine.ProBuilder.ExtrudeMethod
CS.UnityEngine.ProBuilder.ExtrudeMethod = UnityEngine.ProBuilder.ExtrudeMethod


---@class UnityEngine.ProBuilder.ProBuilderMesh : UnityEngine.MonoBehaviour
---@field maxVertexCount number
---@field userCollisions boolean
---@field unwrapParameters UnityEngine.ProBuilder.UnwrapParameters
---@field preserveMeshAssetOnDestroy boolean
---@field faces System.Collections.Generic.IList
---@field sharedVertices System.Collections.Generic.IList
---@field positions System.Collections.Generic.IList
---@field normals System.Collections.Generic.IList
---@field colors System.Collections.Generic.IList
---@field tangents System.Collections.Generic.IList
---@field textures System.Collections.Generic.IList
---@field faceCount number
---@field vertexCount number
---@field edgeCount number
---@field indexCount number
---@field triangleCount number
---@field meshSyncState UnityEngine.ProBuilder.MeshSyncState
---@field selectable boolean
---@field selectedFaceCount number
---@field selectedVertexCount number
---@field selectedEdgeCount number
---@field selectedFaceIndexes System.Collections.ObjectModel.ReadOnlyCollection
---@field selectedVertices System.Collections.ObjectModel.ReadOnlyCollection
---@field selectedEdges System.Collections.ObjectModel.ReadOnlyCollection
UnityEngine.ProBuilder.ProBuilderMesh = {}
---@alias CS.UnityEngine.ProBuilder.ProBuilderMesh UnityEngine.ProBuilder.ProBuilderMesh
CS.UnityEngine.ProBuilder.ProBuilderMesh = UnityEngine.ProBuilder.ProBuilderMesh

---@overload fun() : UnityEngine.ProBuilder.ProBuilderMesh
---@overload fun(positions: System.Collections.Generic.IEnumerable, faces: System.Collections.Generic.IEnumerable) : UnityEngine.ProBuilder.ProBuilderMesh
---@param vertices System.Collections.Generic.IList
---@param faces System.Collections.Generic.IList
---@param sharedVertices System.Collections.Generic.IList
---@param sharedTextures System.Collections.Generic.IList
---@param materials System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ProBuilderMesh.Create(vertices, faces, sharedVertices, sharedTextures, materials) end
---@param channels UnityEngine.ProBuilder.MeshArrays
---@return boolean
function UnityEngine.ProBuilder.ProBuilderMesh:HasArrays(channels) end
---@param indexes System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Vertex[]
function UnityEngine.ProBuilder.ProBuilderMesh:GetVertices(indexes) end
---@param vertices System.Collections.Generic.IList
---@param applyMesh boolean
function UnityEngine.ProBuilder.ProBuilderMesh:SetVertices(vertices, applyMesh) end
---@return UnityEngine.Vector3[]
function UnityEngine.ProBuilder.ProBuilderMesh:GetNormals() end
---@return UnityEngine.Color[]
function UnityEngine.ProBuilder.ProBuilderMesh:GetColors() end
---@return UnityEngine.Vector4[]
function UnityEngine.ProBuilder.ProBuilderMesh:GetTangents() end
---@param channel number
---@param uvs System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:GetUVs(channel, uvs) end
---@param channel number
---@param uvs System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:SetUVs(channel, uvs) end
function UnityEngine.ProBuilder.ProBuilderMesh:OnBeforeSerialize() end
function UnityEngine.ProBuilder.ProBuilderMesh:OnAfterDeserialize() end
function UnityEngine.ProBuilder.ProBuilderMesh:Clear() end
---@param vertices System.Collections.Generic.IEnumerable
---@param faces System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:RebuildWithPositionsAndFaces(vertices, faces) end
---@param preferredTopology UnityEngine.MeshTopology
function UnityEngine.ProBuilder.ProBuilderMesh:ToMesh(preferredTopology) end
function UnityEngine.ProBuilder.ProBuilderMesh:MakeUnique() end
---@param other UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ProBuilderMesh:CopyFrom(other) end
---@param mask UnityEngine.ProBuilder.RefreshMask
function UnityEngine.ProBuilder.ProBuilderMesh:Refresh(mask) end
---@param facesToRefresh System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:RefreshUV(facesToRefresh) end
---@param face UnityEngine.ProBuilder.Face
---@param color UnityEngine.Color
function UnityEngine.ProBuilder.ProBuilderMesh:SetFaceColor(face, color) end
---@param faces System.Collections.Generic.IEnumerable
---@param material UnityEngine.Material
function UnityEngine.ProBuilder.ProBuilderMesh:SetMaterial(faces, material) end
---@overload fun(self: UnityEngine.ProBuilder.ProBuilderMesh, vertices: System.Collections.Generic.IEnumerable) : System.Collections.Generic.List
---@overload fun(self: UnityEngine.ProBuilder.ProBuilderMesh, faces: System.Collections.Generic.IEnumerable, coincident: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.ProBuilder.ProBuilderMesh, edges: System.Collections.Generic.IEnumerable, coincident: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.ProBuilder.ProBuilderMesh, vertices: System.Collections.Generic.IEnumerable, coincident: System.Collections.Generic.List)
---@param vertex number
---@param coincident System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:GetCoincidentVertices(vertex, coincident) end
---@param vertices System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:SetVerticesCoincident(vertices) end
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:GetSelectedFaces() end
---@param selected System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:SetSelectedFaces(selected) end
---@param edges System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:SetSelectedEdges(edges) end
---@param vertices System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:SetSelectedVertices(vertices) end
function UnityEngine.ProBuilder.ProBuilderMesh:ClearSelection() end
---@param edges System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:GetSharedVertexHandleEdges(edges) end
---@param edge UnityEngine.ProBuilder.Edge
---@return UnityEngine.ProBuilder.Edge
function UnityEngine.ProBuilder.ProBuilderMesh:GetSharedVertexHandleEdge(edge) end
---@return UnityEngine.Vector3[]
function UnityEngine.ProBuilder.ProBuilderMesh:VerticesInWorldSpace() end
---@param indexes System.Int32[]
---@param offset UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderMesh:TranslateVerticesInWorldSpace(indexes, offset) end
---@param indexes System.Collections.Generic.IEnumerable
---@param offset UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderMesh:TranslateVertices(indexes, offset) end
---@param edges System.Collections.Generic.IEnumerable
---@param offset UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderMesh:TranslateVertices(edges, offset) end
---@param faces System.Collections.Generic.IEnumerable
---@param offset UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderMesh:TranslateVertices(faces, offset) end
---@param sharedVertexHandle number
---@param position UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderMesh:SetSharedVertexPosition(sharedVertexHandle, position) end
---@param positions UnityEngine.Vector3[][]
---@param colors UnityEngine.Color[][]
---@param uvs UnityEngine.Vector2[][]
---@param faces UnityEngine.ProBuilder.Face[]
---@param shared System.Int32[][]
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:AppendFaces(positions, colors, uvs, faces, shared) end
---@param indexes System.Collections.Generic.IList
---@param unordered boolean
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.ProBuilderMesh:CreatePolygon(indexes, unordered) end
---@param indexes System.Collections.Generic.IList
---@param holes System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.ProBuilderMesh:CreatePolygonWithHole(indexes, holes) end
---@param points System.Collections.Generic.IList
---@param extrude number
---@param flipNormals boolean
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.ProBuilderMesh:CreateShapeFromPolygon(points, extrude, flipNormals) end
---@param points System.Collections.Generic.IList
---@param extrude number
---@param flipNormals boolean
---@param cameraLookAt UnityEngine.Vector3
---@param holePoints System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.ProBuilderMesh:CreateShapeFromPolygon(points, extrude, flipNormals, cameraLookAt, holePoints) end
---@param points System.Collections.Generic.IList
---@param extrude number
---@param flipNormals boolean
---@param holePoints System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.ProBuilderMesh:CreateShapeFromPolygon(points, extrude, flipNormals, holePoints) end
---@param faces UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:DuplicateAndFlip(faces) end
---@param a UnityEngine.ProBuilder.Edge
---@param b UnityEngine.ProBuilder.Edge
---@param allowNonManifoldGeometry boolean
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.ProBuilderMesh:Bridge(a, b, allowNonManifoldGeometry) end
---@param face UnityEngine.ProBuilder.Face
---@param points UnityEngine.Vector3[]
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.ProBuilderMesh:AppendVerticesToFace(face, points) end
---@param face UnityEngine.ProBuilder.Face
---@param points UnityEngine.Vector3[]
---@param insertOnEdge boolean
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.ProBuilderMesh:AppendVerticesToFace(face, points, insertOnEdge) end
---@param edge UnityEngine.ProBuilder.Edge
---@param count number
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:AppendVerticesToEdge(edge, count) end
---@param edges System.Collections.Generic.IList
---@param count number
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:AppendVerticesToEdge(edges, count) end
---@param face UnityEngine.ProBuilder.Face
---@param point UnityEngine.Vector3
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:InsertVertexInFace(face, point) end
---@param originalEdge UnityEngine.ProBuilder.Edge
---@param point UnityEngine.Vector3
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.ProBuilderMesh:InsertVertexOnEdge(originalEdge, point) end
---@param point UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.ProBuilderMesh:InsertVertexInMesh(point, normal) end
---@param faces System.Collections.Generic.IEnumerable
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:Connect(faces) end
---@param edges System.Collections.Generic.IEnumerable
---@return UnityEngine.ProBuilder.SimpleTuple
function UnityEngine.ProBuilder.ProBuilderMesh:Connect(edges) end
---@param indexes System.Collections.Generic.IList
---@return System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:Connect(indexes) end
---@param distinctIndexes System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:DeleteVertices(distinctIndexes) end
---@param face UnityEngine.ProBuilder.Face
---@return System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:DeleteFace(face) end
---@param faces System.Collections.Generic.IEnumerable
---@return System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:DeleteFaces(faces) end
---@param faceIndexes System.Collections.Generic.IList
---@return System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:DeleteFaces(faceIndexes) end
---@return System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:RemoveDegenerateTriangles() end
---@return System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:RemoveUnusedVertices() end
---@param faces System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:GetPerimeterEdges(faces) end
---@param faces System.Collections.Generic.IEnumerable
---@param method UnityEngine.ProBuilder.ExtrudeMethod
---@param distance number
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:Extrude(faces, method, distance) end
---@param edges System.Collections.Generic.IEnumerable
---@param distance number
---@param extrudeAsGroup boolean
---@param enableManifoldExtrude boolean
---@return UnityEngine.ProBuilder.Edge[]
function UnityEngine.ProBuilder.ProBuilderMesh:Extrude(edges, distance, extrudeAsGroup, enableManifoldExtrude) end
---@param faces System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:DetachFaces(faces) end
---@param faces System.Collections.Generic.IEnumerable
---@param deleteSourceFaces boolean
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:DetachFaces(faces, deleteSourceFaces) end
---@param indexes System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:CenterPivot(indexes) end
---@param worldPosition UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderMesh:SetPivot(worldPosition) end
function UnityEngine.ProBuilder.ProBuilderMesh:FreezeScaleTransform() end
---@return boolean
function UnityEngine.ProBuilder.ProBuilderMesh:ContainsDegenerateTriangles() end
---@param faces System.Collections.Generic.IList
---@return boolean
function UnityEngine.ProBuilder.ProBuilderMesh:ContainsDegenerateTriangles(faces) end
---@param face UnityEngine.ProBuilder.Face
---@return boolean
function UnityEngine.ProBuilder.ProBuilderMesh:ContainsDegenerateTriangles(face) end
---@param face UnityEngine.ProBuilder.Face
---@return boolean
function UnityEngine.ProBuilder.ProBuilderMesh:ContainsNonContiguousTriangles(face) end
---@param faces System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:EnsureFacesAreComposedOfContiguousTriangles(faces) end
---@param faces System.Collections.Generic.IList
---@param smoothing boolean
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.ProBuilderMesh:ToQuads(faces, smoothing) end
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.ProBuilderMesh:Subdivide() end
---@param faces System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:Subdivide(faces) end
---@param faces System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.ProBuilderMesh:ToTriangles(faces) end
---@param face UnityEngine.ProBuilder.Face
---@return UnityEngine.ProBuilder.WindingOrder
function UnityEngine.ProBuilder.ProBuilderMesh:GetWindingOrder(face) end
---@param face UnityEngine.ProBuilder.Face
---@return boolean
function UnityEngine.ProBuilder.ProBuilderMesh:FlipEdge(face) end
---@param faces System.Collections.Generic.IEnumerable
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.ProBuilderMesh:ConformNormals(faces) end
---@param indexes System.Int32[]
---@param delta number
function UnityEngine.ProBuilder.ProBuilderMesh:SewUVs(indexes, delta) end
---@param indexes System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:CollapseUVs(indexes) end
---@param indexes System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:SplitUVs(indexes) end
---@param indexes System.Int32[]
---@param collapseToFirst boolean
---@return number
function UnityEngine.ProBuilder.ProBuilderMesh:MergeVertices(indexes, collapseToFirst) end
---@param edge UnityEngine.ProBuilder.Edge
function UnityEngine.ProBuilder.ProBuilderMesh:SplitVertices(edge) end
---@param vertices System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.ProBuilderMesh:SplitVertices(vertices) end
---@param indexes System.Collections.Generic.IEnumerable
---@param neighborRadius number
---@return System.Int32[]
function UnityEngine.ProBuilder.ProBuilderMesh:WeldVertices(indexes, neighborRadius) end

---@class UnityEngine.ProBuilder.ProBuilderSnapping : System.Object
UnityEngine.ProBuilder.ProBuilderSnapping = {}
---@alias CS.UnityEngine.ProBuilder.ProBuilderSnapping UnityEngine.ProBuilder.ProBuilderSnapping
CS.UnityEngine.ProBuilder.ProBuilderSnapping = UnityEngine.ProBuilder.ProBuilderSnapping

---@overload fun(val: number, snap: number) : number
---@param val UnityEngine.Vector3
---@param snap UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderSnapping.Snap(val, snap) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Collections.Generic.IEnumerable
---@param snap UnityEngine.Vector3
function UnityEngine.ProBuilder.ProBuilderSnapping.SnapVertices(mesh, indexes, snap) end

---@class UnityEngine.ProBuilder.ProGridsNoSnapAttribute : System.Attribute
UnityEngine.ProBuilder.ProGridsNoSnapAttribute = {}
---@alias CS.UnityEngine.ProBuilder.ProGridsNoSnapAttribute UnityEngine.ProBuilder.ProGridsNoSnapAttribute
CS.UnityEngine.ProBuilder.ProGridsNoSnapAttribute = UnityEngine.ProBuilder.ProGridsNoSnapAttribute

---@return UnityEngine.ProBuilder.ProGridsNoSnapAttribute
function UnityEngine.ProBuilder.ProGridsNoSnapAttribute.New() end

---@class UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute : System.Attribute
UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute = {}
---@alias CS.UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute
CS.UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute = UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute

---@return UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute
function UnityEngine.ProBuilder.ProGridsConditionalSnapAttribute.New() end

---@class UnityEngine.ProBuilder.Projection : System.Object
UnityEngine.ProBuilder.Projection = {}
---@alias CS.UnityEngine.ProBuilder.Projection UnityEngine.ProBuilder.Projection
CS.UnityEngine.ProBuilder.Projection = UnityEngine.ProBuilder.Projection

---@overload fun(positions: System.Collections.Generic.IList, indexes: System.Collections.Generic.IList) : UnityEngine.Vector2[]
---@param positions System.Collections.Generic.IList
---@param indexes System.Collections.Generic.IList
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector2[]
function UnityEngine.ProBuilder.Projection.PlanarProject(positions, indexes, direction) end
---@param points System.Collections.Generic.IList
---@param indexes System.Collections.Generic.IList
---@return UnityEngine.Plane
function UnityEngine.ProBuilder.Projection.FindBestPlane(points, indexes) end

---@class UnityEngine.ProBuilder.RaycastHit : System.Object
---@field distance number
---@field point UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field face number
UnityEngine.ProBuilder.RaycastHit = {}
---@alias CS.UnityEngine.ProBuilder.RaycastHit UnityEngine.ProBuilder.RaycastHit
CS.UnityEngine.ProBuilder.RaycastHit = UnityEngine.ProBuilder.RaycastHit

---@param distance number
---@param point UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param face number
---@return UnityEngine.ProBuilder.RaycastHit
function UnityEngine.ProBuilder.RaycastHit.New(distance, point, normal, face) end

---@class UnityEngine.ProBuilder.SelectionModifierBehavior
---@field Add UnityEngine.ProBuilder.SelectionModifierBehavior
---@field Subtract UnityEngine.ProBuilder.SelectionModifierBehavior
---@field Difference UnityEngine.ProBuilder.SelectionModifierBehavior
UnityEngine.ProBuilder.SelectionModifierBehavior = {}
---@alias CS.UnityEngine.ProBuilder.SelectionModifierBehavior UnityEngine.ProBuilder.SelectionModifierBehavior
CS.UnityEngine.ProBuilder.SelectionModifierBehavior = UnityEngine.ProBuilder.SelectionModifierBehavior


---@class UnityEngine.ProBuilder.SelectionPicker : System.Object
UnityEngine.ProBuilder.SelectionPicker = {}
---@alias CS.UnityEngine.ProBuilder.SelectionPicker UnityEngine.ProBuilder.SelectionPicker
CS.UnityEngine.ProBuilder.SelectionPicker = UnityEngine.ProBuilder.SelectionPicker

---@param cam UnityEngine.Camera
---@param rect UnityEngine.Rect
---@param selectable System.Collections.Generic.IList
---@param options UnityEngine.ProBuilder.PickerOptions
---@param pixelsPerPoint number
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.SelectionPicker.PickVerticesInRect(cam, rect, selectable, options, pixelsPerPoint) end
---@param cam UnityEngine.Camera
---@param rect UnityEngine.Rect
---@param selectable System.Collections.Generic.IList
---@param options UnityEngine.ProBuilder.PickerOptions
---@param pixelsPerPoint number
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.SelectionPicker.PickFacesInRect(cam, rect, selectable, options, pixelsPerPoint) end
---@param cam UnityEngine.Camera
---@param rect UnityEngine.Rect
---@param selectable System.Collections.Generic.IList
---@param options UnityEngine.ProBuilder.PickerOptions
---@param pixelsPerPoint number
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.SelectionPicker.PickEdgesInRect(cam, rect, selectable, options, pixelsPerPoint) end
---@param camera UnityEngine.Camera
---@param mousePosition UnityEngine.Vector3
---@param pickable UnityEngine.ProBuilder.ProBuilderMesh
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.SelectionPicker.PickFace(camera, mousePosition, pickable) end

---@class UnityEngine.ProBuilder.PickerOptions : System.ValueType
---@field Default UnityEngine.ProBuilder.PickerOptions
---@field depthTest boolean
---@field rectSelectMode UnityEngine.ProBuilder.RectSelectMode
UnityEngine.ProBuilder.PickerOptions = {}
---@alias CS.UnityEngine.ProBuilder.PickerOptions UnityEngine.ProBuilder.PickerOptions
CS.UnityEngine.ProBuilder.PickerOptions = UnityEngine.ProBuilder.PickerOptions

---@overload fun(self: UnityEngine.ProBuilder.PickerOptions, obj: System.Object) : boolean
---@param other UnityEngine.ProBuilder.PickerOptions
---@return boolean
function UnityEngine.ProBuilder.PickerOptions:Equals(other) end
---@return number
function UnityEngine.ProBuilder.PickerOptions:GetHashCode() end

---@class UnityEngine.ProBuilder.SelectionPickerRenderer : System.Object
UnityEngine.ProBuilder.SelectionPickerRenderer = {}
---@alias CS.UnityEngine.ProBuilder.SelectionPickerRenderer UnityEngine.ProBuilder.SelectionPickerRenderer
CS.UnityEngine.ProBuilder.SelectionPickerRenderer = UnityEngine.ProBuilder.SelectionPickerRenderer

---@param camera UnityEngine.Camera
---@param pickerRect UnityEngine.Rect
---@param selection System.Collections.Generic.IList
---@param renderTextureWidth number
---@param renderTextureHeight number
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.SelectionPickerRenderer.PickFacesInRect(camera, pickerRect, selection, renderTextureWidth, renderTextureHeight) end
---@param camera UnityEngine.Camera
---@param pickerRect UnityEngine.Rect
---@param selection System.Collections.Generic.IList
---@param doDepthTest boolean
---@param renderTextureWidth number
---@param renderTextureHeight number
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.SelectionPickerRenderer.PickVerticesInRect(camera, pickerRect, selection, doDepthTest, renderTextureWidth, renderTextureHeight) end
---@param camera UnityEngine.Camera
---@param pickerRect UnityEngine.Rect
---@param selection System.Collections.Generic.IList
---@param doDepthTest boolean
---@param renderTextureWidth number
---@param renderTextureHeight number
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.SelectionPickerRenderer.PickEdgesInRect(camera, pickerRect, selection, doDepthTest, renderTextureWidth, renderTextureHeight) end
---@param color UnityEngine.Color32
---@return number
function UnityEngine.ProBuilder.SelectionPickerRenderer.DecodeRGBA(color) end
---@param hash number
---@return UnityEngine.Color32
function UnityEngine.ProBuilder.SelectionPickerRenderer.EncodeRGBA(hash) end

---@class UnityEngine.ProBuilder.SceneSelection : System.Object
---@field gameObject UnityEngine.GameObject
---@field mesh UnityEngine.ProBuilder.ProBuilderMesh
---@field vertexes System.Collections.Generic.List
---@field edges System.Collections.Generic.List
---@field faces System.Collections.Generic.List
UnityEngine.ProBuilder.SceneSelection = {}
---@alias CS.UnityEngine.ProBuilder.SceneSelection UnityEngine.ProBuilder.SceneSelection
CS.UnityEngine.ProBuilder.SceneSelection = UnityEngine.ProBuilder.SceneSelection

---@overload fun(gameObject: UnityEngine.GameObject) : UnityEngine.ProBuilder.SceneSelection
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, vertex: number) : UnityEngine.ProBuilder.SceneSelection
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, edge: UnityEngine.ProBuilder.Edge) : UnityEngine.ProBuilder.SceneSelection
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return UnityEngine.ProBuilder.SceneSelection
function UnityEngine.ProBuilder.SceneSelection.New(mesh, face) end
---@param face UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.SceneSelection:SetSingleFace(face) end
---@param vertex number
function UnityEngine.ProBuilder.SceneSelection:SetSingleVertex(vertex) end
---@param edge UnityEngine.ProBuilder.Edge
function UnityEngine.ProBuilder.SceneSelection:SetSingleEdge(edge) end
function UnityEngine.ProBuilder.SceneSelection:Clear() end
---@param dst UnityEngine.ProBuilder.SceneSelection
function UnityEngine.ProBuilder.SceneSelection:CopyTo(dst) end
---@return string
function UnityEngine.ProBuilder.SceneSelection:ToString() end
---@overload fun(self: UnityEngine.ProBuilder.SceneSelection, other: UnityEngine.ProBuilder.SceneSelection) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.ProBuilder.SceneSelection:Equals(obj) end
---@return number
function UnityEngine.ProBuilder.SceneSelection:GetHashCode() end

---@class UnityEngine.ProBuilder.VertexPickerEntry : System.ValueType
---@field mesh UnityEngine.ProBuilder.ProBuilderMesh
---@field vertex number
---@field screenDistance number
---@field worldPosition UnityEngine.Vector3
UnityEngine.ProBuilder.VertexPickerEntry = {}
---@alias CS.UnityEngine.ProBuilder.VertexPickerEntry UnityEngine.ProBuilder.VertexPickerEntry
CS.UnityEngine.ProBuilder.VertexPickerEntry = UnityEngine.ProBuilder.VertexPickerEntry


---@class UnityEngine.ProBuilder.SelectPathFaces : System.Object
UnityEngine.ProBuilder.SelectPathFaces = {}
---@alias CS.UnityEngine.ProBuilder.SelectPathFaces UnityEngine.ProBuilder.SelectPathFaces
CS.UnityEngine.ProBuilder.SelectPathFaces = UnityEngine.ProBuilder.SelectPathFaces

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param start number
---@param _end number
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.SelectPathFaces.GetPath(mesh, start, _end) end

---@class UnityEngine.ProBuilder.SemVer : System.Object
---@field DefaultStringFormat string
---@field major number
---@field minor number
---@field patch number
---@field build number
---@field type string
---@field metadata string
---@field date string
---@field MajorMinorPatch UnityEngine.ProBuilder.SemVer
UnityEngine.ProBuilder.SemVer = {}
---@alias CS.UnityEngine.ProBuilder.SemVer UnityEngine.ProBuilder.SemVer
CS.UnityEngine.ProBuilder.SemVer = UnityEngine.ProBuilder.SemVer

---@overload fun() : UnityEngine.ProBuilder.SemVer
---@overload fun(formatted: string, date: string) : UnityEngine.ProBuilder.SemVer
---@param major number
---@param minor number
---@param patch number
---@param build number
---@param type string
---@param date string
---@param metadata string
---@return UnityEngine.ProBuilder.SemVer
function UnityEngine.ProBuilder.SemVer.New(major, minor, patch, build, type, date, metadata) end
---@param input string
---@param out_version UnityEngine.ProBuilder.SemVer
---@return boolean,UnityEngine.ProBuilder.SemVer
function UnityEngine.ProBuilder.SemVer.TryGetVersionInfo(input, out_version) end
---@return boolean
function UnityEngine.ProBuilder.SemVer:IsValid() end
---@overload fun(self: UnityEngine.ProBuilder.SemVer, o: System.Object) : boolean
---@param version UnityEngine.ProBuilder.SemVer
---@return boolean
function UnityEngine.ProBuilder.SemVer:Equals(version) end
---@return number
function UnityEngine.ProBuilder.SemVer:GetHashCode() end
---@overload fun(self: UnityEngine.ProBuilder.SemVer, obj: System.Object) : number
---@param version UnityEngine.ProBuilder.SemVer
---@return number
function UnityEngine.ProBuilder.SemVer:CompareTo(version) end
---@overload fun(self: UnityEngine.ProBuilder.SemVer, format: string) : string
---@return string
function UnityEngine.ProBuilder.SemVer:ToString() end

---@class UnityEngine.ProBuilder.PivotLocation
---@field Center UnityEngine.ProBuilder.PivotLocation
---@field FirstCorner UnityEngine.ProBuilder.PivotLocation
UnityEngine.ProBuilder.PivotLocation = {}
---@alias CS.UnityEngine.ProBuilder.PivotLocation UnityEngine.ProBuilder.PivotLocation
CS.UnityEngine.ProBuilder.PivotLocation = UnityEngine.ProBuilder.PivotLocation


---@class UnityEngine.ProBuilder.ShapeFactory : System.Object
UnityEngine.ProBuilder.ShapeFactory = {}
---@alias CS.UnityEngine.ProBuilder.ShapeFactory UnityEngine.ProBuilder.ShapeFactory
CS.UnityEngine.ProBuilder.ShapeFactory = UnityEngine.ProBuilder.ShapeFactory

---@overload fun(shapeType: System.Type, pivotType: UnityEngine.ProBuilder.PivotLocation) : UnityEngine.ProBuilder.ProBuilderMesh
---@param shape UnityEngine.ProBuilder.Shapes.Shape
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeFactory.Instantiate(shape, pivotType) end

---@class UnityEngine.ProBuilder.ShapeType
---@field Cube UnityEngine.ProBuilder.ShapeType
---@field Stair UnityEngine.ProBuilder.ShapeType
---@field CurvedStair UnityEngine.ProBuilder.ShapeType
---@field Prism UnityEngine.ProBuilder.ShapeType
---@field Cylinder UnityEngine.ProBuilder.ShapeType
---@field Plane UnityEngine.ProBuilder.ShapeType
---@field Door UnityEngine.ProBuilder.ShapeType
---@field Pipe UnityEngine.ProBuilder.ShapeType
---@field Cone UnityEngine.ProBuilder.ShapeType
---@field Sprite UnityEngine.ProBuilder.ShapeType
---@field Arch UnityEngine.ProBuilder.ShapeType
---@field Sphere UnityEngine.ProBuilder.ShapeType
---@field Torus UnityEngine.ProBuilder.ShapeType
UnityEngine.ProBuilder.ShapeType = {}
---@alias CS.UnityEngine.ProBuilder.ShapeType UnityEngine.ProBuilder.ShapeType
CS.UnityEngine.ProBuilder.ShapeType = UnityEngine.ProBuilder.ShapeType


---@class UnityEngine.ProBuilder.ShapeGenerator : System.Object
UnityEngine.ProBuilder.ShapeGenerator = {}
---@alias CS.UnityEngine.ProBuilder.ShapeGenerator UnityEngine.ProBuilder.ShapeGenerator
CS.UnityEngine.ProBuilder.ShapeGenerator = UnityEngine.ProBuilder.ShapeGenerator

---@param shape UnityEngine.ProBuilder.ShapeType
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.CreateShape(shape, pivotType) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param size UnityEngine.Vector3
---@param steps number
---@param buildSides boolean
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateStair(pivotType, size, steps, buildSides) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param stairWidth number
---@param height number
---@param innerRadius number
---@param circumference number
---@param steps number
---@param buildSides boolean
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateCurvedStair(pivotType, stairWidth, height, innerRadius, circumference, steps, buildSides) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param size UnityEngine.Vector3
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateCube(pivotType, size) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param axisDivisions number
---@param radius number
---@param height number
---@param heightCuts number
---@param smoothing number
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateCylinder(pivotType, axisDivisions, radius, height, heightCuts, smoothing) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param size UnityEngine.Vector3
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GeneratePrism(pivotType, size) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param totalWidth number
---@param totalHeight number
---@param ledgeHeight number
---@param legWidth number
---@param depth number
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateDoor(pivotType, totalWidth, totalHeight, ledgeHeight, legWidth, depth) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param width number
---@param height number
---@param widthCuts number
---@param heightCuts number
---@param axis UnityEngine.ProBuilder.Axis
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GeneratePlane(pivotType, width, height, widthCuts, heightCuts, axis) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param radius number
---@param height number
---@param thickness number
---@param subdivAxis number
---@param subdivHeight number
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GeneratePipe(pivotType, radius, height, thickness, subdivAxis, subdivHeight) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param radius number
---@param height number
---@param subdivAxis number
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateCone(pivotType, radius, height, subdivAxis) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param angle number
---@param radius number
---@param width number
---@param depth number
---@param radialCuts number
---@param insideFaces boolean
---@param outsideFaces boolean
---@param frontFaces boolean
---@param backFaces boolean
---@param endCaps boolean
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateArch(pivotType, angle, radius, width, depth, radialCuts, insideFaces, outsideFaces, frontFaces, backFaces, endCaps) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param radius number
---@param subdivisions number
---@param weldVertices boolean
---@param manualUvs boolean
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateIcosahedron(pivotType, radius, subdivisions, weldVertices, manualUvs) end
---@param pivotType UnityEngine.ProBuilder.PivotLocation
---@param rows number
---@param columns number
---@param innerRadius number
---@param outerRadius number
---@param smooth boolean
---@param horizontalCircumference number
---@param verticalCircumference number
---@param manualUvs boolean
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.ShapeGenerator.GenerateTorus(pivotType, rows, columns, innerRadius, outerRadius, smooth, horizontalCircumference, verticalCircumference, manualUvs) end

---@class UnityEngine.ProBuilder.SharedVertex : System.Object
---@field Item number
---@field Count number
---@field IsReadOnly boolean
UnityEngine.ProBuilder.SharedVertex = {}
---@alias CS.UnityEngine.ProBuilder.SharedVertex UnityEngine.ProBuilder.SharedVertex
CS.UnityEngine.ProBuilder.SharedVertex = UnityEngine.ProBuilder.SharedVertex

---@overload fun(indexes: System.Collections.Generic.IEnumerable) : UnityEngine.ProBuilder.SharedVertex
---@param sharedVertex UnityEngine.ProBuilder.SharedVertex
---@return UnityEngine.ProBuilder.SharedVertex
function UnityEngine.ProBuilder.SharedVertex.New(sharedVertex) end
---@param sharedVertices System.Collections.Generic.IList
---@param lookup System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.SharedVertex.GetSharedVertexLookup(sharedVertices, lookup) end
---@param positions System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.SharedVertex[]
function UnityEngine.ProBuilder.SharedVertex.GetSharedVerticesWithPositions(positions) end
---@return System.Collections.Generic.IEnumerator
function UnityEngine.ProBuilder.SharedVertex:GetEnumerator() end
---@return string
function UnityEngine.ProBuilder.SharedVertex:ToString() end
---@param item number
function UnityEngine.ProBuilder.SharedVertex:Add(item) end
function UnityEngine.ProBuilder.SharedVertex:Clear() end
---@param item number
---@return boolean
function UnityEngine.ProBuilder.SharedVertex:Contains(item) end
---@param array System.Int32[]
---@param arrayIndex number
function UnityEngine.ProBuilder.SharedVertex:CopyTo(array, arrayIndex) end
---@param item number
---@return boolean
function UnityEngine.ProBuilder.SharedVertex:Remove(item) end

---@class UnityEngine.ProBuilder.SimpleTuple : System.ValueType
---@field item1 T1
---@field item2 T2
UnityEngine.ProBuilder.SimpleTuple = {}
---@alias CS.UnityEngine.ProBuilder.SimpleTuple UnityEngine.ProBuilder.SimpleTuple
CS.UnityEngine.ProBuilder.SimpleTuple = UnityEngine.ProBuilder.SimpleTuple

---@param item1 T1
---@param item2 T2
---@return UnityEngine.ProBuilder.SimpleTuple
function UnityEngine.ProBuilder.SimpleTuple.New(item1, item2) end
---@return string
function UnityEngine.ProBuilder.SimpleTuple:ToString() end

---@class UnityEngine.ProBuilder.SimpleTuple : System.ValueType
---@field item1 T1
---@field item2 T2
---@field item3 T3
UnityEngine.ProBuilder.SimpleTuple = {}
---@alias CS.UnityEngine.ProBuilder.SimpleTuple UnityEngine.ProBuilder.SimpleTuple
CS.UnityEngine.ProBuilder.SimpleTuple = UnityEngine.ProBuilder.SimpleTuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@return UnityEngine.ProBuilder.SimpleTuple
function UnityEngine.ProBuilder.SimpleTuple.New(item1, item2, item3) end
---@return string
function UnityEngine.ProBuilder.SimpleTuple:ToString() end

---@class UnityEngine.ProBuilder.Smoothing : System.Object
UnityEngine.ProBuilder.Smoothing = {}
---@alias CS.UnityEngine.ProBuilder.Smoothing UnityEngine.ProBuilder.Smoothing
CS.UnityEngine.ProBuilder.Smoothing = UnityEngine.ProBuilder.Smoothing

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@return number
function UnityEngine.ProBuilder.Smoothing.GetUnusedSmoothingGroup(mesh) end
---@param index number
---@return boolean
function UnityEngine.ProBuilder.Smoothing.IsSmooth(index) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@param angleThreshold number
function UnityEngine.ProBuilder.Smoothing.ApplySmoothingGroups(mesh, faces, angleThreshold) end

---@class UnityEngine.ProBuilder.Spline : System.Object
UnityEngine.ProBuilder.Spline = {}
---@alias CS.UnityEngine.ProBuilder.Spline UnityEngine.ProBuilder.Spline
CS.UnityEngine.ProBuilder.Spline = UnityEngine.ProBuilder.Spline


---@class UnityEngine.ProBuilder.Submesh : System.Object
---@field indexes System.Collections.Generic.IEnumerable
---@field topology UnityEngine.MeshTopology
---@field submeshIndex number
UnityEngine.ProBuilder.Submesh = {}
---@alias CS.UnityEngine.ProBuilder.Submesh UnityEngine.ProBuilder.Submesh
CS.UnityEngine.ProBuilder.Submesh = UnityEngine.ProBuilder.Submesh

---@overload fun(submeshIndex: number, topology: UnityEngine.MeshTopology, indexes: System.Collections.Generic.IEnumerable) : UnityEngine.ProBuilder.Submesh
---@param mesh UnityEngine.Mesh
---@param subMeshIndex number
---@return UnityEngine.ProBuilder.Submesh
function UnityEngine.ProBuilder.Submesh.New(mesh, subMeshIndex) end
---@param faces System.Collections.Generic.IEnumerable
---@param submeshCount number
---@param preferredTopology UnityEngine.MeshTopology
---@return UnityEngine.ProBuilder.Submesh[]
function UnityEngine.ProBuilder.Submesh.GetSubmeshes(faces, submeshCount, preferredTopology) end
---@return string
function UnityEngine.ProBuilder.Submesh:ToString() end

---@class UnityEngine.ProBuilder.Transform2D : System.Object
---@field position UnityEngine.Vector2
---@field rotation number
---@field scale UnityEngine.Vector2
UnityEngine.ProBuilder.Transform2D = {}
---@alias CS.UnityEngine.ProBuilder.Transform2D UnityEngine.ProBuilder.Transform2D
CS.UnityEngine.ProBuilder.Transform2D = UnityEngine.ProBuilder.Transform2D

---@param position UnityEngine.Vector2
---@param rotation number
---@param scale UnityEngine.Vector2
---@return UnityEngine.ProBuilder.Transform2D
function UnityEngine.ProBuilder.Transform2D.New(position, rotation, scale) end
---@param p UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.ProBuilder.Transform2D:TransformPoint(p) end
---@return string
function UnityEngine.ProBuilder.Transform2D:ToString() end

---@class UnityEngine.ProBuilder.TransformUtility : System.Object
UnityEngine.ProBuilder.TransformUtility = {}
---@alias CS.UnityEngine.ProBuilder.TransformUtility UnityEngine.ProBuilder.TransformUtility
CS.UnityEngine.ProBuilder.TransformUtility = UnityEngine.ProBuilder.TransformUtility

---@param transform UnityEngine.Transform
---@param vertex UnityEngine.ProBuilder.Vertex
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.TransformUtility.TransformVertex(transform, vertex) end
---@param transform UnityEngine.Transform
---@param vertex UnityEngine.ProBuilder.Vertex
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.TransformUtility.InverseTransformVertex(transform, vertex) end

---@class UnityEngine.ProBuilder.Triangle : System.ValueType
---@field a number
---@field b number
---@field c number
---@field indices System.Collections.Generic.IEnumerable
UnityEngine.ProBuilder.Triangle = {}
---@alias CS.UnityEngine.ProBuilder.Triangle UnityEngine.ProBuilder.Triangle
CS.UnityEngine.ProBuilder.Triangle = UnityEngine.ProBuilder.Triangle

---@param a number
---@param b number
---@param c number
---@return UnityEngine.ProBuilder.Triangle
function UnityEngine.ProBuilder.Triangle.New(a, b, c) end
---@overload fun(self: UnityEngine.ProBuilder.Triangle, other: UnityEngine.ProBuilder.Triangle) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.ProBuilder.Triangle:Equals(obj) end
---@return number
function UnityEngine.ProBuilder.Triangle:GetHashCode() end
---@param other UnityEngine.ProBuilder.Triangle
---@return boolean
function UnityEngine.ProBuilder.Triangle:IsAdjacent(other) end

---@class UnityEngine.ProBuilder.TriggerBehaviour : UnityEngine.ProBuilder.EntityBehaviour
UnityEngine.ProBuilder.TriggerBehaviour = {}
---@alias CS.UnityEngine.ProBuilder.TriggerBehaviour UnityEngine.ProBuilder.TriggerBehaviour
CS.UnityEngine.ProBuilder.TriggerBehaviour = UnityEngine.ProBuilder.TriggerBehaviour

function UnityEngine.ProBuilder.TriggerBehaviour:Initialize() end
function UnityEngine.ProBuilder.TriggerBehaviour:OnEnterPlayMode() end
---@param scene UnityEngine.SceneManagement.Scene
---@param mode UnityEngine.SceneManagement.LoadSceneMode
function UnityEngine.ProBuilder.TriggerBehaviour:OnSceneLoaded(scene, mode) end

---@class UnityEngine.ProBuilder.UnwrapParameters : System.Object
---@field hardAngle number
---@field packMargin number
---@field angleError number
---@field areaError number
UnityEngine.ProBuilder.UnwrapParameters = {}
---@alias CS.UnityEngine.ProBuilder.UnwrapParameters UnityEngine.ProBuilder.UnwrapParameters
CS.UnityEngine.ProBuilder.UnwrapParameters = UnityEngine.ProBuilder.UnwrapParameters

---@overload fun() : UnityEngine.ProBuilder.UnwrapParameters
---@param other UnityEngine.ProBuilder.UnwrapParameters
---@return UnityEngine.ProBuilder.UnwrapParameters
function UnityEngine.ProBuilder.UnwrapParameters.New(other) end
function UnityEngine.ProBuilder.UnwrapParameters:Reset() end
---@return string
function UnityEngine.ProBuilder.UnwrapParameters:ToString() end

---@class UnityEngine.ProBuilder.UvUnwrapping : System.Object
UnityEngine.ProBuilder.UvUnwrapping = {}
---@alias CS.UnityEngine.ProBuilder.UvUnwrapping UnityEngine.ProBuilder.UvUnwrapping
CS.UnityEngine.ProBuilder.UvUnwrapping = UnityEngine.ProBuilder.UvUnwrapping


---@class UnityEngine.ProBuilder.VectorHash : System.Object
---@field FltCompareResolution number
UnityEngine.ProBuilder.VectorHash = {}
---@alias CS.UnityEngine.ProBuilder.VectorHash UnityEngine.ProBuilder.VectorHash
CS.UnityEngine.ProBuilder.VectorHash = UnityEngine.ProBuilder.VectorHash

---@overload fun(v: UnityEngine.Vector2) : number
---@overload fun(v: UnityEngine.Vector3) : number
---@param v UnityEngine.Vector4
---@return number
function UnityEngine.ProBuilder.VectorHash.GetHashCode(v) end

---@class UnityEngine.ProBuilder.Vector2Mask : System.ValueType
---@field XY UnityEngine.ProBuilder.Vector2Mask
---@field x number
---@field y number
UnityEngine.ProBuilder.Vector2Mask = {}
---@alias CS.UnityEngine.ProBuilder.Vector2Mask UnityEngine.ProBuilder.Vector2Mask
CS.UnityEngine.ProBuilder.Vector2Mask = UnityEngine.ProBuilder.Vector2Mask

---@overload fun(v: UnityEngine.Vector3, epsilon: number) : UnityEngine.ProBuilder.Vector2Mask
---@param mask number
---@return UnityEngine.ProBuilder.Vector2Mask
function UnityEngine.ProBuilder.Vector2Mask.New(mask) end

---@class UnityEngine.ProBuilder.Vector3Mask : System.ValueType
---@field XYZ UnityEngine.ProBuilder.Vector3Mask
---@field x number
---@field y number
---@field z number
---@field active number
---@field Item number
UnityEngine.ProBuilder.Vector3Mask = {}
---@alias CS.UnityEngine.ProBuilder.Vector3Mask UnityEngine.ProBuilder.Vector3Mask
CS.UnityEngine.ProBuilder.Vector3Mask = UnityEngine.ProBuilder.Vector3Mask

---@overload fun(v: UnityEngine.Vector3, epsilon: number) : UnityEngine.ProBuilder.Vector3Mask
---@param mask number
---@return UnityEngine.ProBuilder.Vector3Mask
function UnityEngine.ProBuilder.Vector3Mask.New(mask) end
---@return string
function UnityEngine.ProBuilder.Vector3Mask:ToString() end
---@overload fun(self: UnityEngine.ProBuilder.Vector3Mask, other: UnityEngine.ProBuilder.Vector3Mask) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.ProBuilder.Vector3Mask:Equals(obj) end
---@return number
function UnityEngine.ProBuilder.Vector3Mask:GetHashCode() end

---@class UnityEngine.ProBuilder.Vertex : System.Object
---@field position UnityEngine.Vector3
---@field color UnityEngine.Color
---@field normal UnityEngine.Vector3
---@field tangent UnityEngine.Vector4
---@field uv0 UnityEngine.Vector2
---@field uv2 UnityEngine.Vector2
---@field uv3 UnityEngine.Vector4
---@field uv4 UnityEngine.Vector4
UnityEngine.ProBuilder.Vertex = {}
---@alias CS.UnityEngine.ProBuilder.Vertex UnityEngine.ProBuilder.Vertex
CS.UnityEngine.ProBuilder.Vertex = UnityEngine.ProBuilder.Vertex

---@overload fun() : UnityEngine.ProBuilder.Vertex
---@param vertex UnityEngine.ProBuilder.Vertex
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.Vertex.New(vertex) end
---@overload fun(a: UnityEngine.ProBuilder.Vertex, b: UnityEngine.ProBuilder.Vertex) : UnityEngine.ProBuilder.Vertex
---@param b UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.Vertex:Add(b) end
---@overload fun(a: UnityEngine.ProBuilder.Vertex, b: UnityEngine.ProBuilder.Vertex) : UnityEngine.ProBuilder.Vertex
---@param b UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.Vertex:Subtract(b) end
---@overload fun(a: UnityEngine.ProBuilder.Vertex, value: number) : UnityEngine.ProBuilder.Vertex
---@param value number
function UnityEngine.ProBuilder.Vertex:Multiply(value) end
---@overload fun(a: UnityEngine.ProBuilder.Vertex, value: number) : UnityEngine.ProBuilder.Vertex
---@param value number
function UnityEngine.ProBuilder.Vertex:Divide(value) end
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
---@param attributes UnityEngine.ProBuilder.MeshArrays
---@return ,UnityEngine.Vector3[],UnityEngine.Color[],UnityEngine.Vector2[],UnityEngine.Vector3[],UnityEngine.Vector4[],UnityEngine.Vector2[],System.Collections.Generic.List,System.Collections.Generic.List
function UnityEngine.ProBuilder.Vertex.GetArrays(vertices, out_position, out_color, out_uv0, out_normal, out_tangent, out_uv2, out_uv3, out_uv4, attributes) end
---@param mesh UnityEngine.Mesh
---@param vertices System.Collections.Generic.IList
function UnityEngine.ProBuilder.Vertex.SetMesh(mesh, vertices) end
---@param vertices System.Collections.Generic.IList
---@param indexes System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.Vertex.Average(vertices, indexes) end
---@param x UnityEngine.ProBuilder.Vertex
---@param y UnityEngine.ProBuilder.Vertex
---@param weight number
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.Vertex.Mix(x, y, weight) end
---@param attribute UnityEngine.ProBuilder.MeshArrays
---@return boolean
function UnityEngine.ProBuilder.Vertex:HasArrays(attribute) end
---@overload fun(self: UnityEngine.ProBuilder.Vertex, obj: System.Object) : boolean
---@overload fun(self: UnityEngine.ProBuilder.Vertex, other: UnityEngine.ProBuilder.Vertex) : boolean
---@param other UnityEngine.ProBuilder.Vertex
---@param mask UnityEngine.ProBuilder.MeshArrays
---@return boolean
function UnityEngine.ProBuilder.Vertex:Equals(other, mask) end
---@return number
function UnityEngine.ProBuilder.Vertex:GetHashCode() end
function UnityEngine.ProBuilder.Vertex:Normalize() end
---@param args string
---@return string
function UnityEngine.ProBuilder.Vertex:ToString(args) end

---@class UnityEngine.ProBuilder.VertexPositioning : System.Object
UnityEngine.ProBuilder.VertexPositioning = {}
---@alias CS.UnityEngine.ProBuilder.VertexPositioning UnityEngine.ProBuilder.VertexPositioning
CS.UnityEngine.ProBuilder.VertexPositioning = UnityEngine.ProBuilder.VertexPositioning

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@return UnityEngine.Vector3[]
function UnityEngine.ProBuilder.VertexPositioning.VerticesInWorldSpace(mesh) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Int32[]
---@param offset UnityEngine.Vector3
function UnityEngine.ProBuilder.VertexPositioning.TranslateVerticesInWorldSpace(mesh, indexes, offset) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, indexes: System.Collections.Generic.IEnumerable, offset: UnityEngine.Vector3)
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, edges: System.Collections.Generic.IEnumerable, offset: UnityEngine.Vector3)
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@param offset UnityEngine.Vector3
function UnityEngine.ProBuilder.VertexPositioning.TranslateVertices(mesh, faces, offset) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param sharedVertexHandle number
---@param position UnityEngine.Vector3
function UnityEngine.ProBuilder.VertexPositioning.SetSharedVertexPosition(mesh, sharedVertexHandle, position) end

---@class UnityEngine.ProBuilder.WingedEdge : System.Object
---@field edge UnityEngine.ProBuilder.EdgeLookup
---@field face UnityEngine.ProBuilder.Face
---@field next UnityEngine.ProBuilder.WingedEdge
---@field previous UnityEngine.ProBuilder.WingedEdge
---@field opposite UnityEngine.ProBuilder.WingedEdge
UnityEngine.ProBuilder.WingedEdge = {}
---@alias CS.UnityEngine.ProBuilder.WingedEdge UnityEngine.ProBuilder.WingedEdge
CS.UnityEngine.ProBuilder.WingedEdge = UnityEngine.ProBuilder.WingedEdge

---@overload fun(face: UnityEngine.ProBuilder.Face) : System.Collections.Generic.List
---@param edges System.Collections.Generic.List
function UnityEngine.ProBuilder.WingedEdge.SortEdgesByAdjacency(edges) end
---@param wings System.Collections.Generic.List
---@return System.Collections.Generic.Dictionary
function UnityEngine.ProBuilder.WingedEdge.GetSpokes(wings) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, oneWingPerFace: boolean) : System.Collections.Generic.List
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@param oneWingPerFace boolean
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.WingedEdge.GetWingedEdges(mesh, faces, oneWingPerFace) end
---@overload fun(self: UnityEngine.ProBuilder.WingedEdge, other: UnityEngine.ProBuilder.WingedEdge) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.ProBuilder.WingedEdge:Equals(obj) end
---@return number
function UnityEngine.ProBuilder.WingedEdge:GetHashCode() end
---@return number
function UnityEngine.ProBuilder.WingedEdge:Count() end
---@return string
function UnityEngine.ProBuilder.WingedEdge:ToString() end
---@param common number
---@return UnityEngine.ProBuilder.WingedEdge
function UnityEngine.ProBuilder.WingedEdge:GetAdjacentEdgeWithCommonIndex(common) end

---@class UnityEngine.ProBuilder.WingedEdgeEnumerator : System.Object
---@field Current UnityEngine.ProBuilder.WingedEdge
UnityEngine.ProBuilder.WingedEdgeEnumerator = {}
---@alias CS.UnityEngine.ProBuilder.WingedEdgeEnumerator UnityEngine.ProBuilder.WingedEdgeEnumerator
CS.UnityEngine.ProBuilder.WingedEdgeEnumerator = UnityEngine.ProBuilder.WingedEdgeEnumerator

---@param start UnityEngine.ProBuilder.WingedEdge
---@return UnityEngine.ProBuilder.WingedEdgeEnumerator
function UnityEngine.ProBuilder.WingedEdgeEnumerator.New(start) end
---@return boolean
function UnityEngine.ProBuilder.WingedEdgeEnumerator:MoveNext() end
function UnityEngine.ProBuilder.WingedEdgeEnumerator:Reset() end
function UnityEngine.ProBuilder.WingedEdgeEnumerator:Dispose() end

---@class UnityEngine.ProBuilder.Shapes.Arch : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Arch = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Arch UnityEngine.ProBuilder.Shapes.Arch
CS.UnityEngine.ProBuilder.Shapes.Arch = UnityEngine.ProBuilder.Shapes.Arch

---@return UnityEngine.ProBuilder.Shapes.Arch
function UnityEngine.ProBuilder.Shapes.Arch.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Arch:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Arch:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.ArchDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.ArchDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.ArchDrawer UnityEngine.ProBuilder.Shapes.ArchDrawer
CS.UnityEngine.ProBuilder.Shapes.ArchDrawer = UnityEngine.ProBuilder.Shapes.ArchDrawer

---@return UnityEngine.ProBuilder.Shapes.ArchDrawer
function UnityEngine.ProBuilder.Shapes.ArchDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.ArchDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Cone : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Cone = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Cone UnityEngine.ProBuilder.Shapes.Cone
CS.UnityEngine.ProBuilder.Shapes.Cone = UnityEngine.ProBuilder.Shapes.Cone

---@return UnityEngine.ProBuilder.Shapes.Cone
function UnityEngine.ProBuilder.Shapes.Cone.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Cone:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Cone:UpdateBounds(mesh, size, rotation, bounds) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Cone:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.ConeDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.ConeDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.ConeDrawer UnityEngine.ProBuilder.Shapes.ConeDrawer
CS.UnityEngine.ProBuilder.Shapes.ConeDrawer = UnityEngine.ProBuilder.Shapes.ConeDrawer

---@return UnityEngine.ProBuilder.Shapes.ConeDrawer
function UnityEngine.ProBuilder.Shapes.ConeDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.ConeDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Cube : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Cube = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Cube UnityEngine.ProBuilder.Shapes.Cube
CS.UnityEngine.ProBuilder.Shapes.Cube = UnityEngine.ProBuilder.Shapes.Cube

---@return UnityEngine.ProBuilder.Shapes.Cube
function UnityEngine.ProBuilder.Shapes.Cube.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Cube:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Cube:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.CubeDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.CubeDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.CubeDrawer UnityEngine.ProBuilder.Shapes.CubeDrawer
CS.UnityEngine.ProBuilder.Shapes.CubeDrawer = UnityEngine.ProBuilder.Shapes.CubeDrawer

---@return UnityEngine.ProBuilder.Shapes.CubeDrawer
function UnityEngine.ProBuilder.Shapes.CubeDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.CubeDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Cylinder : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Cylinder = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Cylinder UnityEngine.ProBuilder.Shapes.Cylinder
CS.UnityEngine.ProBuilder.Shapes.Cylinder = UnityEngine.ProBuilder.Shapes.Cylinder

---@return UnityEngine.ProBuilder.Shapes.Cylinder
function UnityEngine.ProBuilder.Shapes.Cylinder.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Cylinder:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Cylinder:UpdateBounds(mesh, size, rotation, bounds) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Cylinder:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.CylinderDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.CylinderDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.CylinderDrawer UnityEngine.ProBuilder.Shapes.CylinderDrawer
CS.UnityEngine.ProBuilder.Shapes.CylinderDrawer = UnityEngine.ProBuilder.Shapes.CylinderDrawer

---@return UnityEngine.ProBuilder.Shapes.CylinderDrawer
function UnityEngine.ProBuilder.Shapes.CylinderDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.CylinderDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Door : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Door = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Door UnityEngine.ProBuilder.Shapes.Door
CS.UnityEngine.ProBuilder.Shapes.Door = UnityEngine.ProBuilder.Shapes.Door

---@return UnityEngine.ProBuilder.Shapes.Door
function UnityEngine.ProBuilder.Shapes.Door.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Door:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Door:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.DoorDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.DoorDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.DoorDrawer UnityEngine.ProBuilder.Shapes.DoorDrawer
CS.UnityEngine.ProBuilder.Shapes.DoorDrawer = UnityEngine.ProBuilder.Shapes.DoorDrawer

---@return UnityEngine.ProBuilder.Shapes.DoorDrawer
function UnityEngine.ProBuilder.Shapes.DoorDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.DoorDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Pipe : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Pipe = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Pipe UnityEngine.ProBuilder.Shapes.Pipe
CS.UnityEngine.ProBuilder.Shapes.Pipe = UnityEngine.ProBuilder.Shapes.Pipe

---@return UnityEngine.ProBuilder.Shapes.Pipe
function UnityEngine.ProBuilder.Shapes.Pipe.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Pipe:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Pipe:UpdateBounds(mesh, size, rotation, bounds) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Pipe:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.PipeDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.PipeDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.PipeDrawer UnityEngine.ProBuilder.Shapes.PipeDrawer
CS.UnityEngine.ProBuilder.Shapes.PipeDrawer = UnityEngine.ProBuilder.Shapes.PipeDrawer

---@return UnityEngine.ProBuilder.Shapes.PipeDrawer
function UnityEngine.ProBuilder.Shapes.PipeDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.PipeDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Plane : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Plane = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Plane UnityEngine.ProBuilder.Shapes.Plane
CS.UnityEngine.ProBuilder.Shapes.Plane = UnityEngine.ProBuilder.Shapes.Plane

---@return UnityEngine.ProBuilder.Shapes.Plane
function UnityEngine.ProBuilder.Shapes.Plane.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Plane:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Plane:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.PlaneDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.PlaneDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.PlaneDrawer UnityEngine.ProBuilder.Shapes.PlaneDrawer
CS.UnityEngine.ProBuilder.Shapes.PlaneDrawer = UnityEngine.ProBuilder.Shapes.PlaneDrawer

---@return UnityEngine.ProBuilder.Shapes.PlaneDrawer
function UnityEngine.ProBuilder.Shapes.PlaneDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.PlaneDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Prism : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Prism = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Prism UnityEngine.ProBuilder.Shapes.Prism
CS.UnityEngine.ProBuilder.Shapes.Prism = UnityEngine.ProBuilder.Shapes.Prism

---@return UnityEngine.ProBuilder.Shapes.Prism
function UnityEngine.ProBuilder.Shapes.Prism.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Prism:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Prism:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.PrismDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.PrismDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.PrismDrawer UnityEngine.ProBuilder.Shapes.PrismDrawer
CS.UnityEngine.ProBuilder.Shapes.PrismDrawer = UnityEngine.ProBuilder.Shapes.PrismDrawer

---@return UnityEngine.ProBuilder.Shapes.PrismDrawer
function UnityEngine.ProBuilder.Shapes.PrismDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.PrismDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.ProBuilderShape : UnityEngine.MonoBehaviour
---@field shape UnityEngine.ProBuilder.Shapes.Shape
---@field pivotLocation UnityEngine.ProBuilder.PivotLocation
---@field pivotLocalPosition UnityEngine.Vector3
---@field pivotGlobalPosition UnityEngine.Vector3
---@field size UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field editionBounds UnityEngine.Bounds
---@field shapeBox UnityEngine.Bounds
---@field isEditable boolean
---@field mesh UnityEngine.ProBuilder.ProBuilderMesh
UnityEngine.ProBuilder.Shapes.ProBuilderShape = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.ProBuilderShape UnityEngine.ProBuilder.Shapes.ProBuilderShape
CS.UnityEngine.ProBuilder.Shapes.ProBuilderShape = UnityEngine.ProBuilder.Shapes.ProBuilderShape


---@class UnityEngine.ProBuilder.Shapes.Shape : System.Object
UnityEngine.ProBuilder.Shapes.Shape = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Shape UnityEngine.ProBuilder.Shapes.Shape
CS.UnityEngine.ProBuilder.Shapes.Shape = UnityEngine.ProBuilder.Shapes.Shape

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Shape:UpdateBounds(mesh, size, rotation, bounds) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Shape:RebuildMesh(mesh, size, rotation) end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Shape:CopyShape(shape) end

---@class UnityEngine.ProBuilder.Shapes.ShapeAttribute : System.Attribute
---@field name string
UnityEngine.ProBuilder.Shapes.ShapeAttribute = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.ShapeAttribute UnityEngine.ProBuilder.Shapes.ShapeAttribute
CS.UnityEngine.ProBuilder.Shapes.ShapeAttribute = UnityEngine.ProBuilder.Shapes.ShapeAttribute

---@param n string
---@return UnityEngine.ProBuilder.Shapes.ShapeAttribute
function UnityEngine.ProBuilder.Shapes.ShapeAttribute.New(n) end

---@class UnityEngine.ProBuilder.Shapes.Sphere : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Sphere = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Sphere UnityEngine.ProBuilder.Shapes.Sphere
CS.UnityEngine.ProBuilder.Shapes.Sphere = UnityEngine.ProBuilder.Shapes.Sphere

---@return UnityEngine.ProBuilder.Shapes.Sphere
function UnityEngine.ProBuilder.Shapes.Sphere.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Sphere:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Sphere:UpdateBounds(mesh, size, rotation, bounds) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Sphere:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.SphereDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.SphereDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.SphereDrawer UnityEngine.ProBuilder.Shapes.SphereDrawer
CS.UnityEngine.ProBuilder.Shapes.SphereDrawer = UnityEngine.ProBuilder.Shapes.SphereDrawer

---@return UnityEngine.ProBuilder.Shapes.SphereDrawer
function UnityEngine.ProBuilder.Shapes.SphereDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.SphereDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Sprite : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Sprite = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Sprite UnityEngine.ProBuilder.Shapes.Sprite
CS.UnityEngine.ProBuilder.Shapes.Sprite = UnityEngine.ProBuilder.Shapes.Sprite

---@return UnityEngine.ProBuilder.Shapes.Sprite
function UnityEngine.ProBuilder.Shapes.Sprite.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Sprite:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Sprite:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.SpriteDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.SpriteDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.SpriteDrawer UnityEngine.ProBuilder.Shapes.SpriteDrawer
CS.UnityEngine.ProBuilder.Shapes.SpriteDrawer = UnityEngine.ProBuilder.Shapes.SpriteDrawer

---@return UnityEngine.ProBuilder.Shapes.SpriteDrawer
function UnityEngine.ProBuilder.Shapes.SpriteDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.SpriteDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.StepGenerationType
---@field Height UnityEngine.ProBuilder.Shapes.StepGenerationType
---@field Count UnityEngine.ProBuilder.Shapes.StepGenerationType
UnityEngine.ProBuilder.Shapes.StepGenerationType = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.StepGenerationType UnityEngine.ProBuilder.Shapes.StepGenerationType
CS.UnityEngine.ProBuilder.Shapes.StepGenerationType = UnityEngine.ProBuilder.Shapes.StepGenerationType


---@class UnityEngine.ProBuilder.Shapes.Stairs : UnityEngine.ProBuilder.Shapes.Shape
---@field sides boolean
UnityEngine.ProBuilder.Shapes.Stairs = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Stairs UnityEngine.ProBuilder.Shapes.Stairs
CS.UnityEngine.ProBuilder.Shapes.Stairs = UnityEngine.ProBuilder.Shapes.Stairs

---@return UnityEngine.ProBuilder.Shapes.Stairs
function UnityEngine.ProBuilder.Shapes.Stairs.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Stairs:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Stairs:RebuildMesh(mesh, size, rotation) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Stairs:UpdateBounds(mesh, size, rotation, bounds) end

---@class UnityEngine.ProBuilder.Shapes.StairsDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.StairsDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.StairsDrawer UnityEngine.ProBuilder.Shapes.StairsDrawer
CS.UnityEngine.ProBuilder.Shapes.StairsDrawer = UnityEngine.ProBuilder.Shapes.StairsDrawer

---@return UnityEngine.ProBuilder.Shapes.StairsDrawer
function UnityEngine.ProBuilder.Shapes.StairsDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.StairsDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.Shapes.Torus : UnityEngine.ProBuilder.Shapes.Shape
UnityEngine.ProBuilder.Shapes.Torus = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.Torus UnityEngine.ProBuilder.Shapes.Torus
CS.UnityEngine.ProBuilder.Shapes.Torus = UnityEngine.ProBuilder.Shapes.Torus

---@return UnityEngine.ProBuilder.Shapes.Torus
function UnityEngine.ProBuilder.Shapes.Torus.New() end
---@param shape UnityEngine.ProBuilder.Shapes.Shape
function UnityEngine.ProBuilder.Shapes.Torus:CopyShape(shape) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param bounds UnityEngine.Bounds
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Torus:UpdateBounds(mesh, size, rotation, bounds) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param size UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Bounds
function UnityEngine.ProBuilder.Shapes.Torus:RebuildMesh(mesh, size, rotation) end

---@class UnityEngine.ProBuilder.Shapes.TorusDrawer : UnityEditor.PropertyDrawer
UnityEngine.ProBuilder.Shapes.TorusDrawer = {}
---@alias CS.UnityEngine.ProBuilder.Shapes.TorusDrawer UnityEngine.ProBuilder.Shapes.TorusDrawer
CS.UnityEngine.ProBuilder.Shapes.TorusDrawer = UnityEngine.ProBuilder.Shapes.TorusDrawer

---@return UnityEngine.ProBuilder.Shapes.TorusDrawer
function UnityEngine.ProBuilder.Shapes.TorusDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.ProBuilder.Shapes.TorusDrawer:OnGUI(position, property, label) end

---@class UnityEngine.ProBuilder.MeshOperations.AppendElements : System.Object
UnityEngine.ProBuilder.MeshOperations.AppendElements = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.AppendElements UnityEngine.ProBuilder.MeshOperations.AppendElements
CS.UnityEngine.ProBuilder.MeshOperations.AppendElements = UnityEngine.ProBuilder.MeshOperations.AppendElements

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param positions UnityEngine.Vector3[][]
---@param colors UnityEngine.Color[][]
---@param uvs UnityEngine.Vector2[][]
---@param faces UnityEngine.ProBuilder.Face[]
---@param shared System.Int32[][]
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.MeshOperations.AppendElements.AppendFaces(mesh, positions, colors, uvs, faces, shared) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Collections.Generic.IList
---@param unordered boolean
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.MeshOperations.AppendElements.CreatePolygon(mesh, indexes, unordered) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Collections.Generic.IList
---@param holes System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.MeshOperations.AppendElements.CreatePolygonWithHole(mesh, indexes, holes) end
---@overload fun(poly: UnityEngine.ProBuilder.PolyShape) : UnityEngine.ProBuilder.ActionResult
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, points: System.Collections.Generic.IList, extrude: number, flipNormals: boolean) : UnityEngine.ProBuilder.ActionResult
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param points System.Collections.Generic.IList
---@param extrude number
---@param flipNormals boolean
---@param holePoints System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.MeshOperations.AppendElements.CreateShapeFromPolygon(mesh, points, extrude, flipNormals, holePoints) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.MeshOperations.AppendElements.DuplicateAndFlip(mesh, faces) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param a UnityEngine.ProBuilder.Edge
---@param b UnityEngine.ProBuilder.Edge
---@param allowNonManifoldGeometry boolean
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.MeshOperations.AppendElements.Bridge(mesh, a, b, allowNonManifoldGeometry) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, face: UnityEngine.ProBuilder.Face, points: UnityEngine.Vector3[]) : UnityEngine.ProBuilder.Face
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@param points UnityEngine.Vector3[]
---@param insertOnEdge boolean
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.MeshOperations.AppendElements.AppendVerticesToFace(mesh, face, points, insertOnEdge) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, edge: UnityEngine.ProBuilder.Edge, count: number) : System.Collections.Generic.List
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edges System.Collections.Generic.IList
---@param count number
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.AppendElements.AppendVerticesToEdge(mesh, edges, count) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@param point UnityEngine.Vector3
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.MeshOperations.AppendElements.InsertVertexInFace(mesh, face, point) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param originalEdge UnityEngine.ProBuilder.Edge
---@param point UnityEngine.Vector3
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.MeshOperations.AppendElements.InsertVertexOnEdge(mesh, originalEdge, point) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param point UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.ProBuilder.MeshOperations.AppendElements.InsertVertexInMesh(mesh, point, normal) end

---@class UnityEngine.ProBuilder.MeshOperations.Bevel : System.Object
UnityEngine.ProBuilder.MeshOperations.Bevel = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.Bevel UnityEngine.ProBuilder.MeshOperations.Bevel
CS.UnityEngine.ProBuilder.MeshOperations.Bevel = UnityEngine.ProBuilder.MeshOperations.Bevel

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edges System.Collections.Generic.IList
---@param amount number
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.Bevel.BevelEdges(mesh, edges, amount) end

---@class UnityEngine.ProBuilder.MeshOperations.CombineMeshes : System.Object
UnityEngine.ProBuilder.MeshOperations.CombineMeshes = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.CombineMeshes UnityEngine.ProBuilder.MeshOperations.CombineMeshes
CS.UnityEngine.ProBuilder.MeshOperations.CombineMeshes = UnityEngine.ProBuilder.MeshOperations.CombineMeshes

---@param meshes System.Collections.Generic.IEnumerable
---@param meshTarget UnityEngine.ProBuilder.ProBuilderMesh
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.CombineMeshes.Combine(meshes, meshTarget) end

---@class UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData : System.Object
---@field faceRebuildData UnityEngine.ProBuilder.FaceRebuildData
---@field newVertexIndexes System.Collections.Generic.List
UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData
CS.UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData = UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData

---@param faceRebuildData UnityEngine.ProBuilder.FaceRebuildData
---@param newVertexIndexes System.Collections.Generic.List
---@return UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData
function UnityEngine.ProBuilder.MeshOperations.ConnectFaceRebuildData.New(faceRebuildData, newVertexIndexes) end

---@class UnityEngine.ProBuilder.MeshOperations.ConnectElements : System.Object
UnityEngine.ProBuilder.MeshOperations.ConnectElements = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.ConnectElements UnityEngine.ProBuilder.MeshOperations.ConnectElements
CS.UnityEngine.ProBuilder.MeshOperations.ConnectElements = UnityEngine.ProBuilder.MeshOperations.ConnectElements

---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, faces: System.Collections.Generic.IEnumerable) : UnityEngine.ProBuilder.Face[]
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, edges: System.Collections.Generic.IEnumerable) : UnityEngine.ProBuilder.SimpleTuple
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Collections.Generic.IList
---@return System.Int32[]
function UnityEngine.ProBuilder.MeshOperations.ConnectElements.Connect(mesh, indexes) end

---@class UnityEngine.ProBuilder.MeshOperations.DeleteElements : System.Object
UnityEngine.ProBuilder.MeshOperations.DeleteElements = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.DeleteElements UnityEngine.ProBuilder.MeshOperations.DeleteElements
CS.UnityEngine.ProBuilder.MeshOperations.DeleteElements = UnityEngine.ProBuilder.MeshOperations.DeleteElements

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param distinctIndexes System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.MeshOperations.DeleteElements.DeleteVertices(mesh, distinctIndexes) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return System.Int32[]
function UnityEngine.ProBuilder.MeshOperations.DeleteElements.DeleteFace(mesh, face) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, faces: System.Collections.Generic.IEnumerable) : System.Int32[]
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faceIndexes System.Collections.Generic.IList
---@return System.Int32[]
function UnityEngine.ProBuilder.MeshOperations.DeleteElements.DeleteFaces(mesh, faceIndexes) end

---@class UnityEngine.ProBuilder.MeshOperations.ElementSelection : System.Object
UnityEngine.ProBuilder.MeshOperations.ElementSelection = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.ElementSelection UnityEngine.ProBuilder.MeshOperations.ElementSelection
CS.UnityEngine.ProBuilder.MeshOperations.ElementSelection = UnityEngine.ProBuilder.MeshOperations.ElementSelection

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edge UnityEngine.ProBuilder.Edge
---@param neighborFaces System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.ElementSelection.GetNeighborFaces(mesh, edge, neighborFaces) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.MeshOperations.ElementSelection.GetPerimeterEdges(mesh, faces) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@param maxAngleDiff number
---@return System.Collections.Generic.HashSet
function UnityEngine.ProBuilder.MeshOperations.ElementSelection.GrowSelection(mesh, faces, maxAngleDiff) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IList
---@param maxAngleDiff number
---@return System.Collections.Generic.HashSet
function UnityEngine.ProBuilder.MeshOperations.ElementSelection.FloodSelection(mesh, faces, maxAngleDiff) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces UnityEngine.ProBuilder.Face[]
---@param ring boolean
---@return System.Collections.Generic.HashSet
function UnityEngine.ProBuilder.MeshOperations.ElementSelection.GetFaceLoop(mesh, faces, ring) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces UnityEngine.ProBuilder.Face[]
---@return System.Collections.Generic.HashSet
function UnityEngine.ProBuilder.MeshOperations.ElementSelection.GetFaceRingAndLoop(mesh, faces) end

---@class UnityEngine.ProBuilder.MeshOperations.ExtrudeElements : System.Object
UnityEngine.ProBuilder.MeshOperations.ExtrudeElements = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.ExtrudeElements UnityEngine.ProBuilder.MeshOperations.ExtrudeElements
CS.UnityEngine.ProBuilder.MeshOperations.ExtrudeElements = UnityEngine.ProBuilder.MeshOperations.ExtrudeElements

---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, faces: System.Collections.Generic.IEnumerable, method: UnityEngine.ProBuilder.ExtrudeMethod, distance: number) : UnityEngine.ProBuilder.Face[]
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param edges System.Collections.Generic.IEnumerable
---@param distance number
---@param extrudeAsGroup boolean
---@param enableManifoldExtrude boolean
---@return UnityEngine.ProBuilder.Edge[]
function UnityEngine.ProBuilder.MeshOperations.ExtrudeElements.Extrude(mesh, edges, distance, extrudeAsGroup, enableManifoldExtrude) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, faces: System.Collections.Generic.IEnumerable) : System.Collections.Generic.List
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@param deleteSourceFaces boolean
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.ExtrudeElements.DetachFaces(mesh, faces, deleteSourceFaces) end

---@class UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility : System.Object
UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility
CS.UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility = UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility

---@param t UnityEngine.Transform
---@param preserveFaces boolean
---@return UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility.CreateMeshWithTransform(t, preserveFaces) end
---@param pb UnityEngine.ProBuilder.ProBuilderMesh
---@param preserveFaces boolean
---@return boolean
function UnityEngine.ProBuilder.MeshOperations.InternalMeshUtility.ResetPbObjectWithMeshFilter(pb, preserveFaces) end

---@class UnityEngine.ProBuilder.MeshOperations.MergeElements : System.Object
UnityEngine.ProBuilder.MeshOperations.MergeElements = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.MergeElements UnityEngine.ProBuilder.MeshOperations.MergeElements
CS.UnityEngine.ProBuilder.MeshOperations.MergeElements = UnityEngine.ProBuilder.MeshOperations.MergeElements

---@param target UnityEngine.ProBuilder.ProBuilderMesh
---@param pairs System.Collections.Generic.IEnumerable
---@param collapseCoincidentVertices boolean
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.MergeElements.MergePairs(target, pairs, collapseCoincidentVertices) end
---@param target UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@return UnityEngine.ProBuilder.Face
function UnityEngine.ProBuilder.MeshOperations.MergeElements.Merge(target, faces) end

---@class UnityEngine.ProBuilder.MeshOperations.MeshImportSettings : System.Object
---@field quads boolean
---@field smoothing boolean
---@field smoothingAngle number
UnityEngine.ProBuilder.MeshOperations.MeshImportSettings = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.MeshImportSettings UnityEngine.ProBuilder.MeshOperations.MeshImportSettings
CS.UnityEngine.ProBuilder.MeshOperations.MeshImportSettings = UnityEngine.ProBuilder.MeshOperations.MeshImportSettings

---@return UnityEngine.ProBuilder.MeshOperations.MeshImportSettings
function UnityEngine.ProBuilder.MeshOperations.MeshImportSettings.New() end
---@return string
function UnityEngine.ProBuilder.MeshOperations.MeshImportSettings:ToString() end

---@class UnityEngine.ProBuilder.MeshOperations.MeshImporter : System.Object
UnityEngine.ProBuilder.MeshOperations.MeshImporter = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.MeshImporter UnityEngine.ProBuilder.MeshOperations.MeshImporter
CS.UnityEngine.ProBuilder.MeshOperations.MeshImporter = UnityEngine.ProBuilder.MeshOperations.MeshImporter

---@overload fun(gameObject: UnityEngine.GameObject) : UnityEngine.ProBuilder.MeshOperations.MeshImporter
---@overload fun(sourceMesh: UnityEngine.Mesh, sourceMaterials: UnityEngine.Material[], destination: UnityEngine.ProBuilder.ProBuilderMesh) : UnityEngine.ProBuilder.MeshOperations.MeshImporter
---@param destination UnityEngine.ProBuilder.ProBuilderMesh
---@return UnityEngine.ProBuilder.MeshOperations.MeshImporter
function UnityEngine.ProBuilder.MeshOperations.MeshImporter.New(destination) end
---@param importSettings UnityEngine.ProBuilder.MeshOperations.MeshImportSettings
function UnityEngine.ProBuilder.MeshOperations.MeshImporter:Import(importSettings) end

---@class UnityEngine.ProBuilder.MeshOperations.MeshTransform : System.Object
UnityEngine.ProBuilder.MeshOperations.MeshTransform = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.MeshTransform UnityEngine.ProBuilder.MeshOperations.MeshTransform
CS.UnityEngine.ProBuilder.MeshOperations.MeshTransform = UnityEngine.ProBuilder.MeshOperations.MeshTransform

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Int32[]
function UnityEngine.ProBuilder.MeshOperations.MeshTransform.CenterPivot(mesh, indexes) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param worldPosition UnityEngine.Vector3
function UnityEngine.ProBuilder.MeshOperations.MeshTransform.SetPivot(mesh, worldPosition) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
function UnityEngine.ProBuilder.MeshOperations.MeshTransform.FreezeScaleTransform(mesh) end

---@class UnityEngine.ProBuilder.MeshOperations.MeshValidation : System.Object
UnityEngine.ProBuilder.MeshOperations.MeshValidation = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.MeshValidation UnityEngine.ProBuilder.MeshOperations.MeshValidation
CS.UnityEngine.ProBuilder.MeshOperations.MeshValidation = UnityEngine.ProBuilder.MeshOperations.MeshValidation

---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh) : boolean
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, faces: System.Collections.Generic.IList) : boolean
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return boolean
function UnityEngine.ProBuilder.MeshOperations.MeshValidation.ContainsDegenerateTriangles(mesh, face) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return boolean
function UnityEngine.ProBuilder.MeshOperations.MeshValidation.ContainsNonContiguousTriangles(mesh, face) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.MeshValidation.EnsureFacesAreComposedOfContiguousTriangles(mesh, faces) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param removed System.Collections.Generic.List
---@return boolean
function UnityEngine.ProBuilder.MeshOperations.MeshValidation.RemoveDegenerateTriangles(mesh, removed) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param removed System.Collections.Generic.List
---@return boolean
function UnityEngine.ProBuilder.MeshOperations.MeshValidation.RemoveUnusedVertices(mesh, removed) end

---@class UnityEngine.ProBuilder.MeshOperations.QuadUtility : System.Object
UnityEngine.ProBuilder.MeshOperations.QuadUtility = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.QuadUtility UnityEngine.ProBuilder.MeshOperations.QuadUtility
CS.UnityEngine.ProBuilder.MeshOperations.QuadUtility = UnityEngine.ProBuilder.MeshOperations.QuadUtility

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IList
---@param smoothing boolean
---@return System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.QuadUtility.ToQuads(mesh, faces, smoothing) end

---@class UnityEngine.ProBuilder.MeshOperations.Subdivision : System.Object
UnityEngine.ProBuilder.MeshOperations.Subdivision = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.Subdivision UnityEngine.ProBuilder.MeshOperations.Subdivision
CS.UnityEngine.ProBuilder.MeshOperations.Subdivision = UnityEngine.ProBuilder.MeshOperations.Subdivision

---@overload fun(pb: UnityEngine.ProBuilder.ProBuilderMesh) : UnityEngine.ProBuilder.ActionResult
---@param pb UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.MeshOperations.Subdivision.Subdivide(pb, faces) end

---@class UnityEngine.ProBuilder.MeshOperations.SurfaceTopology : System.Object
UnityEngine.ProBuilder.MeshOperations.SurfaceTopology = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.SurfaceTopology UnityEngine.ProBuilder.MeshOperations.SurfaceTopology
CS.UnityEngine.ProBuilder.MeshOperations.SurfaceTopology = UnityEngine.ProBuilder.MeshOperations.SurfaceTopology

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.Face[]
function UnityEngine.ProBuilder.MeshOperations.SurfaceTopology.ToTriangles(mesh, faces) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, face: UnityEngine.ProBuilder.Face) : UnityEngine.ProBuilder.WindingOrder
---@param points System.Collections.Generic.IList
---@return UnityEngine.ProBuilder.WindingOrder
function UnityEngine.ProBuilder.MeshOperations.SurfaceTopology.GetWindingOrder(points) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param face UnityEngine.ProBuilder.Face
---@return boolean
function UnityEngine.ProBuilder.MeshOperations.SurfaceTopology.FlipEdge(mesh, face) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces System.Collections.Generic.IEnumerable
---@return UnityEngine.ProBuilder.ActionResult
function UnityEngine.ProBuilder.MeshOperations.SurfaceTopology.ConformNormals(mesh, faces) end

---@class UnityEngine.ProBuilder.MeshOperations.Triangulation : System.Object
UnityEngine.ProBuilder.MeshOperations.Triangulation = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.Triangulation UnityEngine.ProBuilder.MeshOperations.Triangulation
CS.UnityEngine.ProBuilder.MeshOperations.Triangulation = UnityEngine.ProBuilder.MeshOperations.Triangulation

---@param points System.Collections.Generic.IList
---@param out_indexes System.Collections.Generic.List
---@param convex boolean
---@return boolean,System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.Triangulation.SortAndTriangulate(points, out_indexes, convex) end
---@overload fun(vertices: System.Collections.Generic.IList, out_triangles: System.Collections.Generic.List, unordered: boolean, convex: boolean) : boolean, System.Collections.Generic.List
---@overload fun(vertices: UnityEngine.Vector3[], out_triangles: System.Collections.Generic.List, holes: UnityEngine.Vector3[][]) : boolean, System.Collections.Generic.List
---@param vertices UnityEngine.Vector3[]
---@param out_triangles System.Collections.Generic.List
---@param unordered boolean
---@param convex boolean
---@return boolean,System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.Triangulation.TriangulateVertices(vertices, out_triangles, unordered, convex) end
---@overload fun(points: System.Collections.Generic.IList, out_indexes: System.Collections.Generic.List, convex: boolean) : boolean, System.Collections.Generic.List
---@param points System.Collections.Generic.IList
---@param holes System.Collections.Generic.IList
---@param out_indexes System.Collections.Generic.List
---@return boolean,System.Collections.Generic.List
function UnityEngine.ProBuilder.MeshOperations.Triangulation.Triangulate(points, holes, out_indexes) end

---@class UnityEngine.ProBuilder.MeshOperations.UVEditing : System.Object
UnityEngine.ProBuilder.MeshOperations.UVEditing = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.UVEditing UnityEngine.ProBuilder.MeshOperations.UVEditing
CS.UnityEngine.ProBuilder.MeshOperations.UVEditing = UnityEngine.ProBuilder.MeshOperations.UVEditing

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param f1 UnityEngine.ProBuilder.Face
---@param f2 UnityEngine.ProBuilder.Face
---@param channel number
---@return boolean
function UnityEngine.ProBuilder.MeshOperations.UVEditing.AutoStitch(mesh, f1, f2, channel) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Int32[]
---@param delta number
function UnityEngine.ProBuilder.MeshOperations.UVEditing.SewUVs(mesh, indexes, delta) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Int32[]
function UnityEngine.ProBuilder.MeshOperations.UVEditing.CollapseUVs(mesh, indexes) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.MeshOperations.UVEditing.SplitUVs(mesh, indexes) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, faces: UnityEngine.ProBuilder.Face[], channel: number)
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param faces UnityEngine.ProBuilder.Face[]
---@param lowerLeftAnchor UnityEngine.Vector2
---@param channel number
function UnityEngine.ProBuilder.MeshOperations.UVEditing.ProjectFacesBox(mesh, faces, lowerLeftAnchor, channel) end
---@param pb UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Int32[]
---@param channel number
function UnityEngine.ProBuilder.MeshOperations.UVEditing.ProjectFacesSphere(pb, indexes, channel) end
---@param uvs UnityEngine.Vector2[]
---@return UnityEngine.Vector2[]
function UnityEngine.ProBuilder.MeshOperations.UVEditing.FitUVs(uvs) end

---@class UnityEngine.ProBuilder.MeshOperations.VertexEditing : System.Object
UnityEngine.ProBuilder.MeshOperations.VertexEditing = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.VertexEditing UnityEngine.ProBuilder.MeshOperations.VertexEditing
CS.UnityEngine.ProBuilder.MeshOperations.VertexEditing = UnityEngine.ProBuilder.MeshOperations.VertexEditing

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Int32[]
---@param collapseToFirst boolean
---@return number
function UnityEngine.ProBuilder.MeshOperations.VertexEditing.MergeVertices(mesh, indexes, collapseToFirst) end
---@overload fun(mesh: UnityEngine.ProBuilder.ProBuilderMesh, edge: UnityEngine.ProBuilder.Edge)
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param vertices System.Collections.Generic.IEnumerable
function UnityEngine.ProBuilder.MeshOperations.VertexEditing.SplitVertices(mesh, vertices) end
---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@param indexes System.Collections.Generic.IEnumerable
---@param neighborRadius number
---@return System.Int32[]
function UnityEngine.ProBuilder.MeshOperations.VertexEditing.WeldVertices(mesh, indexes, neighborRadius) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.ProBuilder.ActionResult.Status
---@field Success UnityEngine.ProBuilder.ActionResult.Status
---@field Failure UnityEngine.ProBuilder.ActionResult.Status
---@field Canceled UnityEngine.ProBuilder.ActionResult.Status
---@field NoChange UnityEngine.ProBuilder.ActionResult.Status
UnityEngine.ProBuilder.ActionResult.Status = {}
---@alias CS.UnityEngine.ProBuilder.ActionResult.Status UnityEngine.ProBuilder.ActionResult.Status
CS.UnityEngine.ProBuilder.ActionResult.Status = UnityEngine.ProBuilder.ActionResult.Status


---@class UnityEngine.ProBuilder.ArrayUtility.SearchRange : System.ValueType
---@field begin number
---@field end number
UnityEngine.ProBuilder.ArrayUtility.SearchRange = {}
---@alias CS.UnityEngine.ProBuilder.ArrayUtility.SearchRange UnityEngine.ProBuilder.ArrayUtility.SearchRange
CS.UnityEngine.ProBuilder.ArrayUtility.SearchRange = UnityEngine.ProBuilder.ArrayUtility.SearchRange

---@param begin number
---@param _end number
---@return UnityEngine.ProBuilder.ArrayUtility.SearchRange
function UnityEngine.ProBuilder.ArrayUtility.SearchRange.New(begin, _end) end
---@return boolean
function UnityEngine.ProBuilder.ArrayUtility.SearchRange:Valid() end
---@return number
function UnityEngine.ProBuilder.ArrayUtility.SearchRange:Center() end
---@return string
function UnityEngine.ProBuilder.ArrayUtility.SearchRange:ToString() end

---@class UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field UpperLeft UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field UpperCenter UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field UpperRight UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field MiddleLeft UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field MiddleCenter UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field MiddleRight UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field LowerLeft UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field LowerCenter UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field LowerRight UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
---@field None UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor = {}
---@alias CS.UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor
CS.UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor = UnityEngine.ProBuilder.AutoUnwrapSettings.Anchor


---@class UnityEngine.ProBuilder.AutoUnwrapSettings.Fill
---@field Fit UnityEngine.ProBuilder.AutoUnwrapSettings.Fill
---@field Tile UnityEngine.ProBuilder.AutoUnwrapSettings.Fill
---@field Stretch UnityEngine.ProBuilder.AutoUnwrapSettings.Fill
UnityEngine.ProBuilder.AutoUnwrapSettings.Fill = {}
---@alias CS.UnityEngine.ProBuilder.AutoUnwrapSettings.Fill UnityEngine.ProBuilder.AutoUnwrapSettings.Fill
CS.UnityEngine.ProBuilder.AutoUnwrapSettings.Fill = UnityEngine.ProBuilder.AutoUnwrapSettings.Fill


---@class UnityEngine.ProBuilder.Clipping.OutCode
---@field Inside UnityEngine.ProBuilder.Clipping.OutCode
---@field Left UnityEngine.ProBuilder.Clipping.OutCode
---@field Right UnityEngine.ProBuilder.Clipping.OutCode
---@field Bottom UnityEngine.ProBuilder.Clipping.OutCode
---@field Top UnityEngine.ProBuilder.Clipping.OutCode
UnityEngine.ProBuilder.Clipping.OutCode = {}
---@alias CS.UnityEngine.ProBuilder.Clipping.OutCode UnityEngine.ProBuilder.Clipping.OutCode
CS.UnityEngine.ProBuilder.Clipping.OutCode = UnityEngine.ProBuilder.Clipping.OutCode


---@class UnityEngine.ProBuilder.PolyShape.PolyEditMode
---@field None UnityEngine.ProBuilder.PolyShape.PolyEditMode
---@field Path UnityEngine.ProBuilder.PolyShape.PolyEditMode
---@field Height UnityEngine.ProBuilder.PolyShape.PolyEditMode
---@field Edit UnityEngine.ProBuilder.PolyShape.PolyEditMode
UnityEngine.ProBuilder.PolyShape.PolyEditMode = {}
---@alias CS.UnityEngine.ProBuilder.PolyShape.PolyEditMode UnityEngine.ProBuilder.PolyShape.PolyEditMode
CS.UnityEngine.ProBuilder.PolyShape.PolyEditMode = UnityEngine.ProBuilder.PolyShape.PolyEditMode


---@class UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState
---@field SharedVertex UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState
---@field SharedTexture UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState
UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState = {}
---@alias CS.UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState
CS.UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState = UnityEngine.ProBuilder.ProBuilderMesh.CacheValidState


---@class UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope : System.ValueType
UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope = {}
---@alias CS.UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope
CS.UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope = UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope

---@param mesh UnityEngine.ProBuilder.ProBuilderMesh
---@return UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope
function UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope.New(mesh) end
function UnityEngine.ProBuilder.ProBuilderMesh.NonVersionedEditScope:Dispose() end

---@class UnityEngine.ProBuilder.SelectionPickerRenderer.ISelectionPickerRenderer
UnityEngine.ProBuilder.SelectionPickerRenderer.ISelectionPickerRenderer = {}
---@alias CS.UnityEngine.ProBuilder.SelectionPickerRenderer.ISelectionPickerRenderer UnityEngine.ProBuilder.SelectionPickerRenderer.ISelectionPickerRenderer
CS.UnityEngine.ProBuilder.SelectionPickerRenderer.ISelectionPickerRenderer = UnityEngine.ProBuilder.SelectionPickerRenderer.ISelectionPickerRenderer

---@param camera UnityEngine.Camera
---@param shader UnityEngine.Shader
---@param tag string
---@param width number
---@param height number
---@return UnityEngine.Texture2D
function UnityEngine.ProBuilder.SelectionPickerRenderer.ISelectionPickerRenderer:RenderLookupTexture(camera, shader, tag, width, height) end

---@class UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP : System.Object
UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP = {}
---@alias CS.UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP
CS.UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP = UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP

---@return UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP
function UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP.New() end
---@param camera UnityEngine.Camera
---@param shader UnityEngine.Shader
---@param tag string
---@param width number
---@param height number
---@return UnityEngine.Texture2D
function UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererHDRP:RenderLookupTexture(camera, shader, tag, width, height) end

---@class UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard : System.Object
UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard = {}
---@alias CS.UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard
CS.UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard = UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard

---@return UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard
function UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard.New() end
---@param camera UnityEngine.Camera
---@param shader UnityEngine.Shader
---@param tag string
---@param width number
---@param height number
---@return UnityEngine.Texture2D
function UnityEngine.ProBuilder.SelectionPickerRenderer.SelectionPickerRendererStandard:RenderLookupTexture(camera, shader, tag, width, height) end

---@class UnityEngine.ProBuilder.UvUnwrapping.UVTransform : System.ValueType
---@field translation UnityEngine.Vector2
---@field rotation number
---@field scale UnityEngine.Vector2
UnityEngine.ProBuilder.UvUnwrapping.UVTransform = {}
---@alias CS.UnityEngine.ProBuilder.UvUnwrapping.UVTransform UnityEngine.ProBuilder.UvUnwrapping.UVTransform
CS.UnityEngine.ProBuilder.UvUnwrapping.UVTransform = UnityEngine.ProBuilder.UvUnwrapping.UVTransform

---@return string
function UnityEngine.ProBuilder.UvUnwrapping.UVTransform:ToString() end

---@class UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy
---@field Resize UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy
---@field Nullify UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy
UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy = {}
---@alias CS.UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy
CS.UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy = UnityEngine.ProBuilder.MeshOperations.MeshValidation.AttributeValidationStrategy


---@class TimelinePreferences : UnityEditor.ScriptableSingleton
---@field timeFormat UnityEditor.Timeline.TimeFormat
---@field showAudioWaveform boolean
---@field snapToFrame boolean
---@field edgeSnap boolean
---@field playbackScrollMode UnityEditor.Timeline.PlaybackScrollMode
---@field audioScrubbing boolean
---@field playbackLockedToFrame boolean
---@field instance TimelinePreferences -- infered from UnityEditor.ScriptableSingleton`1[TimelinePreferences]
TimelinePreferences = {}
---@alias CS.TimelinePreferences TimelinePreferences
CS.TimelinePreferences = TimelinePreferences

---@return TimelinePreferences
function TimelinePreferences.New() end
function TimelinePreferences:Save() end

---@class TimelinePreferencesProvider : UnityEditor.SettingsProvider
TimelinePreferencesProvider = {}
---@alias CS.TimelinePreferencesProvider TimelinePreferencesProvider
CS.TimelinePreferencesProvider = TimelinePreferencesProvider

---@param path string
---@param scopes UnityEditor.SettingsScope
---@param keywords System.Collections.Generic.IEnumerable
---@return TimelinePreferencesProvider
function TimelinePreferencesProvider.New(path, scopes, keywords) end
---@return UnityEditor.SettingsProvider
function TimelinePreferencesProvider.CreateTimelineProjectSettingProvider() end
---@param searchContext string
---@param rootElement UnityEngine.UIElements.VisualElement
function TimelinePreferencesProvider:OnActivate(searchContext, rootElement) end
---@param searchContext string
function TimelinePreferencesProvider:OnGUI(searchContext) end

---@class TimelineProjectSettings : UnityEditor.ScriptableSingleton
---@field defaultFrameRate number
---@field instance TimelineProjectSettings -- infered from UnityEditor.ScriptableSingleton`1[TimelineProjectSettings]
TimelineProjectSettings = {}
---@alias CS.TimelineProjectSettings TimelineProjectSettings
CS.TimelineProjectSettings = TimelineProjectSettings

---@return TimelineProjectSettings
function TimelineProjectSettings.New() end
function TimelineProjectSettings:Save() end

---@class TimelineProjectSettingsProvider : UnityEditor.SettingsProvider
TimelineProjectSettingsProvider = {}
---@alias CS.TimelineProjectSettingsProvider TimelineProjectSettingsProvider
CS.TimelineProjectSettingsProvider = TimelineProjectSettingsProvider

---@param path string
---@param scopes UnityEditor.SettingsScope
---@param keywords System.Collections.Generic.IEnumerable
---@return TimelineProjectSettingsProvider
function TimelineProjectSettingsProvider.New(path, scopes, keywords) end
---@return UnityEditor.SettingsProvider
function TimelineProjectSettingsProvider.CreateTimelineProjectSettingProvider() end
---@param searchContext string
---@param rootElement UnityEngine.UIElements.VisualElement
function TimelineProjectSettingsProvider:OnActivate(searchContext, rootElement) end
---@param searchContext string
function TimelineProjectSettingsProvider:OnGUI(searchContext) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.Timeline.AudioClipPropertiesDrawer : UnityEditor.PropertyDrawer
UnityEngine.Timeline.AudioClipPropertiesDrawer = {}
---@alias CS.UnityEngine.Timeline.AudioClipPropertiesDrawer UnityEngine.Timeline.AudioClipPropertiesDrawer
CS.UnityEngine.Timeline.AudioClipPropertiesDrawer = UnityEngine.Timeline.AudioClipPropertiesDrawer

---@return UnityEngine.Timeline.AudioClipPropertiesDrawer
function UnityEngine.Timeline.AudioClipPropertiesDrawer.New() end
---@param position UnityEngine.Rect
---@param property UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function UnityEngine.Timeline.AudioClipPropertiesDrawer:OnGUI(position, property, label) end

---@class UnityEngine.Timeline.AudioPlayableAssetInspector : UnityEditor.Timeline.BasicAssetInspector
UnityEngine.Timeline.AudioPlayableAssetInspector = {}
---@alias CS.UnityEngine.Timeline.AudioPlayableAssetInspector UnityEngine.Timeline.AudioPlayableAssetInspector
CS.UnityEngine.Timeline.AudioPlayableAssetInspector = UnityEngine.Timeline.AudioPlayableAssetInspector

---@return UnityEngine.Timeline.AudioPlayableAssetInspector
function UnityEngine.Timeline.AudioPlayableAssetInspector.New() end
function UnityEngine.Timeline.AudioPlayableAssetInspector:OnPlayableAssetChangedInInspector() end

---@class UnityEngine.Timeline.AudioTrackInspector : UnityEditor.Timeline.TrackAssetInspector
UnityEngine.Timeline.AudioTrackInspector = {}
---@alias CS.UnityEngine.Timeline.AudioTrackInspector UnityEngine.Timeline.AudioTrackInspector
CS.UnityEngine.Timeline.AudioTrackInspector = UnityEngine.Timeline.AudioTrackInspector

---@return UnityEngine.Timeline.AudioTrackInspector
function UnityEngine.Timeline.AudioTrackInspector.New() end
function UnityEngine.Timeline.AudioTrackInspector:OnEnable() end

---@class UnityEngine.Timeline.DirectorNamedColor : UnityEngine.ScriptableObject
---@field colorPlayhead UnityEngine.Color
---@field colorSelection UnityEngine.Color
---@field colorEndmarker UnityEngine.Color
---@field colorGroup UnityEngine.Color
---@field colorGroupTrackBackground UnityEngine.Color
---@field colorAnimation UnityEngine.Color
---@field colorAnimationRecorded UnityEngine.Color
---@field colorAudio UnityEngine.Color
---@field colorAudioWaveform UnityEngine.Color
---@field colorActivation UnityEngine.Color
---@field colorDropTarget UnityEngine.Color
---@field colorClipFont UnityEngine.Color
---@field colorInvalidClipOverlay UnityEngine.Color
---@field colorTrackBackground UnityEngine.Color
---@field colorTrackHeaderBackground UnityEngine.Color
---@field colorTrackDarken UnityEngine.Color
---@field colorTrackBackgroundRecording UnityEngine.Color
---@field colorInfiniteTrackBackgroundRecording UnityEngine.Color
---@field colorTrackBackgroundSelected UnityEngine.Color
---@field colorTrackFont UnityEngine.Color
---@field colorClipUnion UnityEngine.Color
---@field colorTopOutline3 UnityEngine.Color
---@field colorDurationLine UnityEngine.Color
---@field colorRange UnityEngine.Color
---@field colorSequenceBackground UnityEngine.Color
---@field colorTooltipBackground UnityEngine.Color
---@field colorInfiniteClipLine UnityEngine.Color
---@field colorDefaultTrackDrawer UnityEngine.Color
---@field colorDuration UnityEngine.Color
---@field colorRecordingClipOutline UnityEngine.Color
---@field colorAnimEditorBinding UnityEngine.Color
---@field colorTimelineBackground UnityEngine.Color
---@field colorLockTextBG UnityEngine.Color
---@field colorInlineCurveVerticalLines UnityEngine.Color
---@field colorInlineCurveOutOfRangeOverlay UnityEngine.Color
---@field colorInlineCurvesBackground UnityEngine.Color
---@field markerDrawerBackgroundColor UnityEngine.Color
---@field markerHeaderDrawerBackgroundColor UnityEngine.Color
---@field colorControl UnityEngine.Color
---@field colorSubSequenceBackground UnityEngine.Color
---@field colorTrackSubSequenceBackground UnityEngine.Color
---@field colorTrackSubSequenceBackgroundSelected UnityEngine.Color
---@field colorSubSequenceOverlay UnityEngine.Color
---@field colorSubSequenceDurationLine UnityEngine.Color
---@field clipBckg UnityEngine.Color
---@field clipSelectedBckg UnityEngine.Color
---@field clipBorderColor UnityEngine.Color
---@field clipEaseBckgColor UnityEngine.Color
---@field clipBlendIn UnityEngine.Color
---@field clipBlendInSelected UnityEngine.Color
---@field clipBlendOut UnityEngine.Color
---@field clipBlendOutSelected UnityEngine.Color
UnityEngine.Timeline.DirectorNamedColor = {}
---@alias CS.UnityEngine.Timeline.DirectorNamedColor UnityEngine.Timeline.DirectorNamedColor
CS.UnityEngine.Timeline.DirectorNamedColor = UnityEngine.Timeline.DirectorNamedColor
