---@meta

---@class UnityEngine.AddressableAssets.AssetPathToTypes : UnityEditor.AssetPostprocessor
UnityEngine.AddressableAssets.AssetPathToTypes = {}
---@alias CS.UnityEngine.AddressableAssets.AssetPathToTypes UnityEngine.AddressableAssets.AssetPathToTypes
CS.UnityEngine.AddressableAssets.AssetPathToTypes = UnityEngine.AddressableAssets.AssetPathToTypes

---@return UnityEngine.AddressableAssets.AssetPathToTypes
function UnityEngine.AddressableAssets.AssetPathToTypes.New() end
---@param path string
---@return System.Collections.Generic.HashSet
function UnityEngine.AddressableAssets.AssetPathToTypes.GetTypesForAssetPath(path) end

---@class UnityEngine.AddressableAssets.IKeyEvaluator
---@field RuntimeKey System.Object
UnityEngine.AddressableAssets.IKeyEvaluator = {}
---@alias CS.UnityEngine.AddressableAssets.IKeyEvaluator UnityEngine.AddressableAssets.IKeyEvaluator
CS.UnityEngine.AddressableAssets.IKeyEvaluator = UnityEngine.AddressableAssets.IKeyEvaluator

---@return boolean
function UnityEngine.AddressableAssets.IKeyEvaluator:RuntimeKeyIsValid() end

---@class UnityEngine.AddressableAssets.CheckCatalogsOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.AddressableAssets.CheckCatalogsOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Collections.Generic.List`1[System.String]]
UnityEngine.AddressableAssets.CheckCatalogsOperation = {}
---@alias CS.UnityEngine.AddressableAssets.CheckCatalogsOperation UnityEngine.AddressableAssets.CheckCatalogsOperation
CS.UnityEngine.AddressableAssets.CheckCatalogsOperation = UnityEngine.AddressableAssets.CheckCatalogsOperation

---@param aa UnityEngine.AddressableAssets.AddressablesImpl
---@return UnityEngine.AddressableAssets.CheckCatalogsOperation
function UnityEngine.AddressableAssets.CheckCatalogsOperation.New(aa) end
---@param locatorInfos System.Collections.Generic.List
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.CheckCatalogsOperation:Start(locatorInfos) end
---@param dependencies System.Collections.Generic.List
function UnityEngine.AddressableAssets.CheckCatalogsOperation:GetDependencies(dependencies) end

---@class UnityEngine.AddressableAssets.CleanBundleCacheOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.AddressableAssets.CleanBundleCacheOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Boolean]
UnityEngine.AddressableAssets.CleanBundleCacheOperation = {}
---@alias CS.UnityEngine.AddressableAssets.CleanBundleCacheOperation UnityEngine.AddressableAssets.CleanBundleCacheOperation
CS.UnityEngine.AddressableAssets.CleanBundleCacheOperation = UnityEngine.AddressableAssets.CleanBundleCacheOperation

---@param aa UnityEngine.AddressableAssets.AddressablesImpl
---@param forceSingleThreading boolean
---@return UnityEngine.AddressableAssets.CleanBundleCacheOperation
function UnityEngine.AddressableAssets.CleanBundleCacheOperation.New(aa, forceSingleThreading) end
---@param depOp UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.CleanBundleCacheOperation:Start(depOp) end
---@param result boolean
---@param success boolean
---@param errorMsg string
function UnityEngine.AddressableAssets.CleanBundleCacheOperation:CompleteInternal(result, success, errorMsg) end
---@param dependencies System.Collections.Generic.List
function UnityEngine.AddressableAssets.CleanBundleCacheOperation:GetDependencies(dependencies) end

---@class UnityEngine.AddressableAssets.UpdateCatalogsOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.AddressableAssets.UpdateCatalogsOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Collections.Generic.List`1[UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator]]
UnityEngine.AddressableAssets.UpdateCatalogsOperation = {}
---@alias CS.UnityEngine.AddressableAssets.UpdateCatalogsOperation UnityEngine.AddressableAssets.UpdateCatalogsOperation
CS.UnityEngine.AddressableAssets.UpdateCatalogsOperation = UnityEngine.AddressableAssets.UpdateCatalogsOperation

---@param aa UnityEngine.AddressableAssets.AddressablesImpl
---@return UnityEngine.AddressableAssets.UpdateCatalogsOperation
function UnityEngine.AddressableAssets.UpdateCatalogsOperation.New(aa) end
---@param catalogIds System.Collections.Generic.IEnumerable
---@param autoCleanBundleCache boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.UpdateCatalogsOperation:Start(catalogIds, autoCleanBundleCache) end
---@param dependencies System.Collections.Generic.List
function UnityEngine.AddressableAssets.UpdateCatalogsOperation:GetDependencies(dependencies) end

---@class UnityEngine.AddressableAssets.DynamicResourceLocator : System.Object
---@field LocatorId string
---@field Keys System.Collections.Generic.IEnumerable
---@field AllLocations System.Collections.Generic.IEnumerable
UnityEngine.AddressableAssets.DynamicResourceLocator = {}
---@alias CS.UnityEngine.AddressableAssets.DynamicResourceLocator UnityEngine.AddressableAssets.DynamicResourceLocator
CS.UnityEngine.AddressableAssets.DynamicResourceLocator = UnityEngine.AddressableAssets.DynamicResourceLocator

---@param addr UnityEngine.AddressableAssets.AddressablesImpl
---@return UnityEngine.AddressableAssets.DynamicResourceLocator
function UnityEngine.AddressableAssets.DynamicResourceLocator.New(addr) end
---@param key System.Object
---@param type System.Type
---@param out_locations System.Collections.Generic.IList
---@return boolean,System.Collections.Generic.IList
function UnityEngine.AddressableAssets.DynamicResourceLocator:Locate(key, type, out_locations) end

---@class UnityEngine.AddressableAssets.AddressablesPlatform
---@field Unknown UnityEngine.AddressableAssets.AddressablesPlatform
---@field Windows UnityEngine.AddressableAssets.AddressablesPlatform
---@field OSX UnityEngine.AddressableAssets.AddressablesPlatform
---@field Linux UnityEngine.AddressableAssets.AddressablesPlatform
---@field PS4 UnityEngine.AddressableAssets.AddressablesPlatform
---@field Switch UnityEngine.AddressableAssets.AddressablesPlatform
---@field XboxOne UnityEngine.AddressableAssets.AddressablesPlatform
---@field WebGL UnityEngine.AddressableAssets.AddressablesPlatform
---@field iOS UnityEngine.AddressableAssets.AddressablesPlatform
---@field Android UnityEngine.AddressableAssets.AddressablesPlatform
---@field WindowsUniversal UnityEngine.AddressableAssets.AddressablesPlatform
UnityEngine.AddressableAssets.AddressablesPlatform = {}
---@alias CS.UnityEngine.AddressableAssets.AddressablesPlatform UnityEngine.AddressableAssets.AddressablesPlatform
CS.UnityEngine.AddressableAssets.AddressablesPlatform = UnityEngine.AddressableAssets.AddressablesPlatform


---@class UnityEngine.AddressableAssets.PlatformMappingService : System.Object
UnityEngine.AddressableAssets.PlatformMappingService = {}
---@alias CS.UnityEngine.AddressableAssets.PlatformMappingService UnityEngine.AddressableAssets.PlatformMappingService
CS.UnityEngine.AddressableAssets.PlatformMappingService = UnityEngine.AddressableAssets.PlatformMappingService

---@return UnityEngine.AddressableAssets.PlatformMappingService
function UnityEngine.AddressableAssets.PlatformMappingService.New() end
---@return string
function UnityEngine.AddressableAssets.PlatformMappingService.GetPlatformPathSubFolder() end

---@class UnityEngine.AddressableAssets.Utility.DiagnosticInfo : System.Object
---@field DisplayName string
---@field ObjectId number
---@field Dependencies System.Int32[]
UnityEngine.AddressableAssets.Utility.DiagnosticInfo = {}
---@alias CS.UnityEngine.AddressableAssets.Utility.DiagnosticInfo UnityEngine.AddressableAssets.Utility.DiagnosticInfo
CS.UnityEngine.AddressableAssets.Utility.DiagnosticInfo = UnityEngine.AddressableAssets.Utility.DiagnosticInfo

---@return UnityEngine.AddressableAssets.Utility.DiagnosticInfo
function UnityEngine.AddressableAssets.Utility.DiagnosticInfo.New() end
---@param category string
---@param eventType UnityEngine.ResourceManagement.ResourceManager.DiagnosticEventType
---@param frame number
---@param val number
---@return UnityEngine.ResourceManagement.Diagnostics.DiagnosticEvent
function UnityEngine.AddressableAssets.Utility.DiagnosticInfo:CreateEvent(category, eventType, frame, val) end

---@class UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics : System.Object
UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics = {}
---@alias CS.UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics
CS.UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics = UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics

---@param resourceManager UnityEngine.ResourceManagement.ResourceManager
---@return UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics
function UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics.New(resourceManager) end
function UnityEngine.AddressableAssets.Utility.ResourceManagerDiagnostics:Dispose() end

---@class UnityEngine.AddressableAssets.Utility.SerializationUtilities : System.Object
UnityEngine.AddressableAssets.Utility.SerializationUtilities = {}
---@alias CS.UnityEngine.AddressableAssets.Utility.SerializationUtilities UnityEngine.AddressableAssets.Utility.SerializationUtilities
CS.UnityEngine.AddressableAssets.Utility.SerializationUtilities = UnityEngine.AddressableAssets.Utility.SerializationUtilities


---@class UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider : UnityEngine.ResourceManagement.ResourceProviders.ResourceProviderBase
---@field DisableCatalogUpdateOnStart boolean
---@field IsLocalCatalogInBundle boolean
UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider
CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider = UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider

---@param resourceManagerInstance UnityEngine.ResourceManagement.ResourceManager
---@return UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.New(resourceManagerInstance) end
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param obj System.Object
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider:Release(location, obj) end
---@param providerInterface UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider:Provide(providerInterface) end

---@class UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry : System.Object
---@field InternalId string
---@field Provider string
---@field Keys System.Collections.Generic.List
---@field Dependencies System.Collections.Generic.List
---@field Data System.Object
---@field ResourceType System.Type
UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry
CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry = UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry

---@param type System.Type
---@param internalId string
---@param provider string
---@param keys System.Collections.Generic.IEnumerable
---@param dependencies System.Collections.Generic.IEnumerable
---@param extraData System.Object
---@return UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry.New(type, internalId, provider, keys, dependencies, extraData) end

---@class UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData : System.Object
---@field LocalHash string
---@field BuildResultHash string
---@field ProviderId string
---@field InstanceProviderData UnityEngine.ResourceManagement.Util.ObjectInitializationData
---@field SceneProviderData UnityEngine.ResourceManagement.Util.ObjectInitializationData
---@field ResourceProviderData System.Collections.Generic.List
---@field ProviderIds System.String[]
---@field InternalIds System.String[]
UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData
CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData = UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData

---@overload fun(id: string) : UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData
---@overload fun() : UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData
---@param entries System.Collections.Generic.IList
---@param id string
---@return UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.New(entries, id) end
---@param providerSuffix string
---@return UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData:CreateLocator(providerSuffix) end
---@param data System.Collections.Generic.IList
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData:SetData(data) end

---@class UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
---@field LocatorId string
---@field Keys System.Collections.Generic.IEnumerable
UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
CS.UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator = UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator

---@param key System.Object
---@param type System.Type
---@param out_locations System.Collections.Generic.IList
---@return boolean,System.Collections.Generic.IList
function UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator:Locate(key, type, out_locations) end

---@class UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator : System.Object
---@field Keys System.Collections.Generic.IEnumerable
---@field LocatorId string
UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator
CS.UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator = UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator

---@return UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator
function UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator.New() end
---@param key System.Object
---@param type System.Type
---@param out_locations System.Collections.Generic.IList
---@return boolean,System.Collections.Generic.IList
function UnityEngine.AddressableAssets.ResourceLocators.LegacyResourcesLocator:Locate(key, type, out_locations) end

---@class UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData : System.Object
---@field Keys System.String[]
---@field InternalId string
---@field Provider string
---@field Dependencies System.String[]
---@field ResourceType System.Type
---@field Data System.Object
UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData
CS.UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData = UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData

---@param keys System.String[]
---@param id string
---@param provider System.Type
---@param t System.Type
---@param dependencies System.String[]
---@return UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData
function UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationData.New(keys, id, provider, t, dependencies) end

---@class UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap : System.Object
---@field LocatorId string
---@field Locations System.Collections.Generic.Dictionary
---@field Keys System.Collections.Generic.IEnumerable
UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap
CS.UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap = UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap

---@overload fun(id: string, capacity: number) : UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap
---@param id string
---@param locations System.Collections.Generic.IList
---@return UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap
function UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap.New(id, locations) end
---@param key System.Object
---@param type System.Type
---@param out_locations System.Collections.Generic.IList
---@return boolean,System.Collections.Generic.IList
function UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap:Locate(key, type, out_locations) end
---@overload fun(self: UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap, key: System.Object, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation)
---@param key System.Object
---@param locations System.Collections.Generic.IList
function UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap:Add(key, locations) end

---@class UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties : System.Object
UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties = {}
---@alias CS.UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties
CS.UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties = UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties

---@param name string
---@param val string
function UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties.SetPropertyValue(name, val) end
function UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties.ClearCachedPropertyValues() end
---@param name string
---@return string
function UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties.EvaluateProperty(name) end
---@overload fun(input: string) : string
---@param inputString string
---@param startDelimiter System.Char
---@param endDelimiter System.Char
---@param varFunc System.Func
---@return string
function UnityEngine.AddressableAssets.Initialization.AddressablesRuntimeProperties.EvaluateString(inputString, startDelimiter, endDelimiter, varFunc) end

---@class UnityEngine.AddressableAssets.Initialization.CacheInitialization : System.Object
---@field RootPath string
UnityEngine.AddressableAssets.Initialization.CacheInitialization = {}
---@alias CS.UnityEngine.AddressableAssets.Initialization.CacheInitialization UnityEngine.AddressableAssets.Initialization.CacheInitialization
CS.UnityEngine.AddressableAssets.Initialization.CacheInitialization = UnityEngine.AddressableAssets.Initialization.CacheInitialization

---@return UnityEngine.AddressableAssets.Initialization.CacheInitialization
function UnityEngine.AddressableAssets.Initialization.CacheInitialization.New() end
---@param id string
---@param dataStr string
---@return boolean
function UnityEngine.AddressableAssets.Initialization.CacheInitialization:Initialize(id, dataStr) end
---@param rm UnityEngine.ResourceManagement.ResourceManager
---@param id string
---@param data string
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Initialization.CacheInitialization:InitializeAsync(rm, id, data) end

---@class UnityEngine.AddressableAssets.Initialization.CacheInitializationData : System.Object
---@field CompressionEnabled boolean
---@field CacheDirectoryOverride string
---@field LimitCacheSize boolean
---@field MaximumCacheSize number
UnityEngine.AddressableAssets.Initialization.CacheInitializationData = {}
---@alias CS.UnityEngine.AddressableAssets.Initialization.CacheInitializationData UnityEngine.AddressableAssets.Initialization.CacheInitializationData
CS.UnityEngine.AddressableAssets.Initialization.CacheInitializationData = UnityEngine.AddressableAssets.Initialization.CacheInitializationData

---@return UnityEngine.AddressableAssets.Initialization.CacheInitializationData
function UnityEngine.AddressableAssets.Initialization.CacheInitializationData.New() end

---@class UnityEngine.AddressableAssets.Initialization.InitializationOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.AddressableAssets.Initialization.InitializationOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator]
UnityEngine.AddressableAssets.Initialization.InitializationOperation = {}
---@alias CS.UnityEngine.AddressableAssets.Initialization.InitializationOperation UnityEngine.AddressableAssets.Initialization.InitializationOperation
CS.UnityEngine.AddressableAssets.Initialization.InitializationOperation = UnityEngine.AddressableAssets.Initialization.InitializationOperation

---@param aa UnityEngine.AddressableAssets.AddressablesImpl
---@return UnityEngine.AddressableAssets.Initialization.InitializationOperation
function UnityEngine.AddressableAssets.Initialization.InitializationOperation.New(aa) end
---@overload fun(addressables: UnityEngine.AddressableAssets.AddressablesImpl, loc: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, providerSuffix: string, remoteHashLocation: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param loc UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param providerSuffix string
---@param remoteHashLocation UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Initialization.InitializationOperation:LoadContentCatalog(loc, providerSuffix, remoteHashLocation) end

---@class UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData : System.Object
---@field kCatalogAddress string
---@field BuildTarget string
---@field SettingsHash string
---@field CatalogLocations System.Collections.Generic.List
---@field ProfileEvents boolean
---@field LogResourceManagerExceptions boolean
---@field InitializationObjects System.Collections.Generic.List
---@field DisableCatalogUpdateOnStartup boolean
---@field IsLocalCatalogInBundle boolean
---@field CertificateHandlerType System.Type
---@field AddressablesVersion string
---@field MaxConcurrentWebRequests number
---@field CatalogRequestsTimeout number
UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData = {}
---@alias CS.UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData
CS.UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData = UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData

---@return UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData
function UnityEngine.AddressableAssets.Initialization.ResourceManagerRuntimeData.New() end

---@class PackedPlayModeBuildLogs.RuntimeBuildLog : System.ValueType
---@field Type UnityEngine.LogType
---@field Message string
PackedPlayModeBuildLogs.RuntimeBuildLog = {}
---@alias CS.PackedPlayModeBuildLogs.RuntimeBuildLog PackedPlayModeBuildLogs.RuntimeBuildLog
CS.PackedPlayModeBuildLogs.RuntimeBuildLog = PackedPlayModeBuildLogs.RuntimeBuildLog

---@param type UnityEngine.LogType
---@param message string
---@return PackedPlayModeBuildLogs.RuntimeBuildLog
function PackedPlayModeBuildLogs.RuntimeBuildLog.New(type, message) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.AddressableAssets.Addressables.MergeMode
---@field None UnityEngine.AddressableAssets.Addressables.MergeMode
---@field UseFirst UnityEngine.AddressableAssets.Addressables.MergeMode
---@field Union UnityEngine.AddressableAssets.Addressables.MergeMode
---@field Intersection UnityEngine.AddressableAssets.Addressables.MergeMode
UnityEngine.AddressableAssets.Addressables.MergeMode = {}
---@alias CS.UnityEngine.AddressableAssets.Addressables.MergeMode UnityEngine.AddressableAssets.Addressables.MergeMode
CS.UnityEngine.AddressableAssets.Addressables.MergeMode = UnityEngine.AddressableAssets.Addressables.MergeMode


---@class UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Collections.Generic.IList`1[UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation]]
UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp = {}
---@alias CS.UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp
CS.UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp = UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp

---@return UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp
function UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp.New() end
---@param aa UnityEngine.AddressableAssets.AddressablesImpl
---@param t System.Type
---@param keys System.Object
function UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeyOp:Init(aa, t, keys) end

---@class UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Collections.Generic.IList`1[UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation]]
UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp = {}
---@alias CS.UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp
CS.UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp = UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp

---@return UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp
function UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp.New() end
---@param aa UnityEngine.AddressableAssets.AddressablesImpl
---@param t System.Type
---@param key System.Collections.IEnumerable
---@param mergeMode UnityEngine.AddressableAssets.Addressables.MergeMode
function UnityEngine.AddressableAssets.AddressablesImpl.LoadResourceLocationKeysOp:Init(aa, t, key, mergeMode) end

---@class UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field AsciiString UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field UnicodeString UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field UInt16 UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field UInt32 UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field Int32 UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field Hash128 UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field Type UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
---@field JsonObject UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType = {}
---@alias CS.UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType
CS.UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType = UnityEngine.AddressableAssets.Utility.SerializationUtilities.ObjectType


---@class UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex
---@field Remote UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex
---@field Cache UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex
---@field Count UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex
UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex
CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex = UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.DependencyHashIndex


---@class UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp : System.Object
UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp
CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp = UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp

---@return UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.New() end
---@param providerInterface UnityEngine.ResourceManagement.ResourceProviders.ProvideHandle
---@param disableCatalogUpdateOnStart boolean
---@param isLocalCatalogInBundle boolean
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp:Start(providerInterface, disableCatalogUpdateOnStart, isLocalCatalogInBundle) end
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp:Release() end

---@class UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.Bucket : System.ValueType
---@field dataOffset number
---@field entries System.Int32[]
UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.Bucket = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.Bucket UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.Bucket
CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.Bucket = UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.Bucket


---@class UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation : System.Object
---@field InternalId string
---@field ProviderId string
---@field Dependencies System.Collections.Generic.IList
---@field HasDependencies boolean
---@field DependencyHashCode number
---@field Data System.Object
---@field PrimaryKey string
---@field ResourceType System.Type
UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation
CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation = UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation

---@param locator UnityEngine.AddressableAssets.ResourceLocators.ResourceLocationMap
---@param internalId string
---@param providerId string
---@param dependencyKey System.Object
---@param data System.Object
---@param depHash number
---@param primaryKey string
---@param type System.Type
---@return UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation.New(locator, internalId, providerId, dependencyKey, data, depHash, primaryKey, type) end
---@return string
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation:ToString() end
---@param t System.Type
---@return number
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.CompactLocation:Hash(t) end

---@class UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer : System.Object
---@field values System.Collections.Generic.List[T]
---@field map System.Collections.Generic.Dictionary[T,System.Int32]
UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer
CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer = UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer

---@param keyCollection System.Collections.Generic.IEnumerable[T]
---@param capacity number
---@return UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer.New(keyCollection, capacity) end
---@overload fun(self: UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer, keyCollection: System.Collections.Generic.IEnumerable[T])
---@param key T
---@param ref_isNew boolean
---@return ,boolean
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer:Add(key, ref_isNew) end

---@class UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer : System.Object
---@field values System.Collections.Generic.List[TVal]
---@field map System.Collections.Generic.Dictionary[TKey,System.Int32]
---@field Item TVal
UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer
CS.UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer = UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer

---@param keyCollection System.Collections.Generic.IEnumerable[TKey]
---@param func System.Func[TKey,TVal]
---@param capacity number
---@return UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer.New(keyCollection, func, capacity) end
---@param key TKey
---@param val TVal
function UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogData.KeyIndexer:Add(key, val) end

---@class UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Boolean]
UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp = {}
---@alias CS.UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp
CS.UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp = UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp

---@return UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp
function UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp.New() end
---@param callback System.Func
function UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp:Init(callback) end
---@param unscaledDeltaTime number
function UnityEngine.AddressableAssets.Initialization.CacheInitialization.CacheInitOp:Update(unscaledDeltaTime) end

---@class UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog : System.Object
---@field OpInProgress boolean
---@field OpIsSuccess boolean
UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog
CS.UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog = UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog

---@param bundlePath string
---@param webRequestTimeout number
---@return UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog.New(bundlePath, webRequestTimeout) end
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog:LoadCatalogFromBundleAsync() end
---@return boolean
function UnityEngine.AddressableAssets.ResourceProviders.ContentCatalogProvider.InternalOp.BundledCatalog:WaitForCompletion() end

---@class WinUserInput : System.Object
WinUserInput = {}
---@alias CS.WinUserInput WinUserInput
CS.WinUserInput = WinUserInput

---@param nInputs number
---@param pInputs WinUserInput.INPUT[]
---@param cbSize number
---@return number
function WinUserInput.SendInput(nInputs, pInputs, cbSize) end
---@param x number
---@param y number
function WinUserInput.SendRDPMouseMoveEvent(x, y) end
---@param x number
---@param y number
function WinUserInput.SendMouseMoveEvent(x, y) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.InputSystem.AssetDatabaseUtils : System.Object
UnityEngine.InputSystem.AssetDatabaseUtils = {}
---@alias CS.UnityEngine.InputSystem.AssetDatabaseUtils UnityEngine.InputSystem.AssetDatabaseUtils
CS.UnityEngine.InputSystem.AssetDatabaseUtils = UnityEngine.InputSystem.AssetDatabaseUtils

---@param path string
function UnityEngine.InputSystem.AssetDatabaseUtils.ExternalDeleteFileOrDirectory(path) end
---@param source string
---@param dest string
function UnityEngine.InputSystem.AssetDatabaseUtils.ExternalMoveFileOrDirectory(source, dest) end
---@return string
function UnityEngine.InputSystem.AssetDatabaseUtils.CreateDirectory() end
function UnityEngine.InputSystem.AssetDatabaseUtils.Restore() end
---@return string
function UnityEngine.InputSystem.AssetDatabaseUtils.RandomDirectoryPath() end

---@class UnityEngine.InputSystem.InputTestFixture : System.Object
---@field currentTime number
UnityEngine.InputSystem.InputTestFixture = {}
---@alias CS.UnityEngine.InputSystem.InputTestFixture UnityEngine.InputSystem.InputTestFixture
CS.UnityEngine.InputSystem.InputTestFixture = UnityEngine.InputSystem.InputTestFixture

---@return UnityEngine.InputSystem.InputTestFixture
function UnityEngine.InputSystem.InputTestFixture.New() end
---@param stick UnityEngine.InputSystem.Controls.StickControl
---@param stickValue UnityEngine.Vector2
---@param up number
---@param down number
---@param left number
---@param right number
function UnityEngine.InputSystem.InputTestFixture.AssertStickValues(stick, stickValue, up, down, left, right) end
function UnityEngine.InputSystem.InputTestFixture:Setup() end
function UnityEngine.InputSystem.InputTestFixture:TearDown() end
---@param name string
---@param keyboard UnityEngine.InputSystem.Keyboard
function UnityEngine.InputSystem.InputTestFixture:SetKeyboardLayout(name, keyboard) end
---@param key UnityEngine.InputSystem.Key
---@param displayName string
---@param scanCode number
function UnityEngine.InputSystem.InputTestFixture:SetKeyInfo(key, displayName, scanCode) end
---@param action UnityEngine.InputSystem.InputAction
---@param control UnityEngine.InputSystem.InputControl
---@param time System.Nullable
---@param value System.Object
---@return UnityEngine.InputSystem.InputTestFixture.ActionConstraint
function UnityEngine.InputSystem.InputTestFixture:Started(action, control, time, value) end
---@param action UnityEngine.InputSystem.InputAction
---@param control UnityEngine.InputSystem.InputControl
---@param time System.Nullable
---@param duration System.Nullable
---@param value System.Object
---@return UnityEngine.InputSystem.InputTestFixture.ActionConstraint
function UnityEngine.InputSystem.InputTestFixture:Performed(action, control, time, duration, value) end
---@param action UnityEngine.InputSystem.InputAction
---@param control UnityEngine.InputSystem.InputControl
---@param time System.Nullable
---@param duration System.Nullable
---@param value System.Object
---@return UnityEngine.InputSystem.InputTestFixture.ActionConstraint
function UnityEngine.InputSystem.InputTestFixture:Canceled(action, control, time, duration, value) end
---@param button UnityEngine.InputSystem.Controls.ButtonControl
---@param time number
---@param timeOffset number
---@param queueEventOnly boolean
function UnityEngine.InputSystem.InputTestFixture:Press(button, time, timeOffset, queueEventOnly) end
---@param button UnityEngine.InputSystem.Controls.ButtonControl
---@param time number
---@param timeOffset number
---@param queueEventOnly boolean
function UnityEngine.InputSystem.InputTestFixture:Release(button, time, timeOffset, queueEventOnly) end
---@param button UnityEngine.InputSystem.Controls.ButtonControl
---@param time number
---@param timeOffset number
---@param queueEventOnly boolean
function UnityEngine.InputSystem.InputTestFixture:PressAndRelease(button, time, timeOffset, queueEventOnly) end
---@param button UnityEngine.InputSystem.Controls.ButtonControl
---@param time number
---@param timeOffset number
---@param queueEventOnly boolean
function UnityEngine.InputSystem.InputTestFixture:Click(button, time, timeOffset, queueEventOnly) end
---@param positionControl UnityEngine.InputSystem.InputControl
---@param position UnityEngine.Vector2
---@param delta System.Nullable
---@param time number
---@param timeOffset number
---@param queueEventOnly boolean
function UnityEngine.InputSystem.InputTestFixture:Move(positionControl, position, delta, time, timeOffset, queueEventOnly) end
---@overload fun(self: UnityEngine.InputSystem.InputTestFixture, touchId: number, position: UnityEngine.Vector2, queueEventOnly: boolean, screen: UnityEngine.InputSystem.Touchscreen, time: number, timeOffset: number, displayIndex: number)
---@param touchId number
---@param position UnityEngine.Vector2
---@param pressure number
---@param queueEventOnly boolean
---@param screen UnityEngine.InputSystem.Touchscreen
---@param time number
---@param timeOffset number
function UnityEngine.InputSystem.InputTestFixture:BeginTouch(touchId, position, pressure, queueEventOnly, screen, time, timeOffset) end
---@overload fun(self: UnityEngine.InputSystem.InputTestFixture, touchId: number, position: UnityEngine.Vector2, delta: UnityEngine.Vector2, queueEventOnly: boolean, screen: UnityEngine.InputSystem.Touchscreen, time: number, timeOffset: number)
---@param touchId number
---@param position UnityEngine.Vector2
---@param pressure number
---@param delta UnityEngine.Vector2
---@param queueEventOnly boolean
---@param screen UnityEngine.InputSystem.Touchscreen
---@param time number
---@param timeOffset number
function UnityEngine.InputSystem.InputTestFixture:MoveTouch(touchId, position, pressure, delta, queueEventOnly, screen, time, timeOffset) end
---@overload fun(self: UnityEngine.InputSystem.InputTestFixture, touchId: number, position: UnityEngine.Vector2, delta: UnityEngine.Vector2, queueEventOnly: boolean, screen: UnityEngine.InputSystem.Touchscreen, time: number, timeOffset: number, displayIndex: number)
---@param touchId number
---@param position UnityEngine.Vector2
---@param pressure number
---@param delta UnityEngine.Vector2
---@param queueEventOnly boolean
---@param screen UnityEngine.InputSystem.Touchscreen
---@param time number
---@param timeOffset number
function UnityEngine.InputSystem.InputTestFixture:EndTouch(touchId, position, pressure, delta, queueEventOnly, screen, time, timeOffset) end
---@overload fun(self: UnityEngine.InputSystem.InputTestFixture, touchId: number, position: UnityEngine.Vector2, delta: UnityEngine.Vector2, queueEventOnly: boolean, screen: UnityEngine.InputSystem.Touchscreen, time: number, timeOffset: number)
---@param touchId number
---@param position UnityEngine.Vector2
---@param pressure number
---@param delta UnityEngine.Vector2
---@param queueEventOnly boolean
---@param screen UnityEngine.InputSystem.Touchscreen
---@param time number
---@param timeOffset number
function UnityEngine.InputSystem.InputTestFixture:CancelTouch(touchId, position, pressure, delta, queueEventOnly, screen, time, timeOffset) end
---@overload fun(self: UnityEngine.InputSystem.InputTestFixture, touchId: number, phase: UnityEngine.InputSystem.TouchPhase, position: UnityEngine.Vector2, delta: UnityEngine.Vector2, queueEventOnly: boolean, screen: UnityEngine.InputSystem.Touchscreen, time: number, timeOffset: number)
---@param touchId number
---@param phase UnityEngine.InputSystem.TouchPhase
---@param position UnityEngine.Vector2
---@param pressure number
---@param delta UnityEngine.Vector2
---@param queueEventOnly boolean
---@param screen UnityEngine.InputSystem.Touchscreen
---@param time number
---@param timeOffset number
---@param displayIndex number
function UnityEngine.InputSystem.InputTestFixture:SetTouch(touchId, phase, position, pressure, delta, queueEventOnly, screen, time, timeOffset, displayIndex) end
---@param action UnityEngine.InputSystem.InputAction
function UnityEngine.InputSystem.InputTestFixture:Trigger(action) end

---@class UnityEngine.InputSystem.InputTestRuntime : System.Object
---@field unityRemoteGyroEnabled System.Nullable
---@field unityRemoteGyroUpdateInterval System.Nullable
---@field onUpdate UnityEngine.InputSystem.LowLevel.InputUpdateDelegate
---@field onBeforeUpdate System.Action
---@field onShouldRunUpdate System.Func
---@field onPlayerLoopInitialization System.Action
---@field onDeviceDiscovered System.Action
---@field onShutdown System.Action
---@field onPlayerFocusChanged System.Action
---@field isPlayerFocused boolean
---@field pollingFrequency number
---@field currentTime number
---@field currentTimeForFixedUpdate number
---@field unscaledGameTime number
---@field dontAdvanceUnscaledGameTimeNextDynamicUpdate boolean
---@field advanceTimeEachDynamicUpdate number
---@field dontAdvanceTimeNextDynamicUpdate boolean
---@field runInBackground boolean
---@field screenSize UnityEngine.Vector2
---@field screenOrientation UnityEngine.ScreenOrientation
---@field normalizeScrollWheelDelta boolean
---@field scrollWheelDeltaPerTick number
---@field userAccountPairings System.Collections.Generic.List
---@field currentTimeOffsetToRealtimeSinceStartup number
---@field isInBatchMode boolean
---@field isInPlayMode boolean
---@field isPaused boolean
---@field isEditorActive boolean
---@field onUnityRemoteMessage System.Func
---@field onPlayModeChanged System.Action
---@field onProjectChange System.Action
---@field eventCount number
---@field onRegisterAnalyticsEvent System.Action
---@field onSendAnalyticsEvent System.Action
UnityEngine.InputSystem.InputTestRuntime = {}
---@alias CS.UnityEngine.InputSystem.InputTestRuntime UnityEngine.InputSystem.InputTestRuntime
CS.UnityEngine.InputSystem.InputTestRuntime = UnityEngine.InputSystem.InputTestRuntime

---@return UnityEngine.InputSystem.InputTestRuntime
function UnityEngine.InputSystem.InputTestRuntime.New() end
---@return number
function UnityEngine.InputSystem.InputTestRuntime:AllocateDeviceId() end
---@param type UnityEngine.InputSystem.LowLevel.InputUpdateType
function UnityEngine.InputSystem.InputTestRuntime:Update(type) end
---@param eventPtr UnityEngine.InputSystem.LowLevel.InputEvent*
function UnityEngine.InputSystem.InputTestRuntime:QueueEvent(eventPtr) end
---@param deviceId number
function UnityEngine.InputSystem.InputTestRuntime:SetCanRunInBackground(deviceId) end
---@overload fun(self: UnityEngine.InputSystem.InputTestRuntime, device: UnityEngine.InputSystem.InputDevice, callback: UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback)
---@param deviceId number
---@param callback UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback
function UnityEngine.InputSystem.InputTestRuntime:SetDeviceCommandCallback(deviceId, callback) end
---@param deviceId number
---@param commandPtr UnityEngine.InputSystem.LowLevel.InputDeviceCommand*
---@return number
function UnityEngine.InputSystem.InputTestRuntime:DeviceCommand(deviceId, commandPtr) end
---@param newFocusState boolean
function UnityEngine.InputSystem.InputTestRuntime:InvokePlayerFocusChanged(newFocusState) end
function UnityEngine.InputSystem.InputTestRuntime:PlayerFocusLost() end
function UnityEngine.InputSystem.InputTestRuntime:PlayerFocusGained() end
---@overload fun(self: UnityEngine.InputSystem.InputTestRuntime, deviceDescriptor: string, deviceId: number) : number
---@param description UnityEngine.InputSystem.Layouts.InputDeviceDescription
---@param deviceId number
---@param userHandle number
---@param userName string
---@param userId string
---@return number
function UnityEngine.InputSystem.InputTestRuntime:ReportNewInputDevice(description, deviceId, userHandle, userName, userId) end
---@overload fun(self: UnityEngine.InputSystem.InputTestRuntime, deviceId: number)
---@param device UnityEngine.InputSystem.InputDevice
function UnityEngine.InputSystem.InputTestRuntime:ReportInputDeviceRemoved(device) end
---@overload fun(self: UnityEngine.InputSystem.InputTestRuntime, deviceId: number, userHandle: number, userName: string, userId: string)
---@param device UnityEngine.InputSystem.InputDevice
---@param userHandle number
---@param userName string
---@param userId string
function UnityEngine.InputSystem.InputTestRuntime:AssociateInputDeviceWithUser(device, userHandle, userName, userId) end
function UnityEngine.InputSystem.InputTestRuntime:Dispose() end
---@param value boolean
function UnityEngine.InputSystem.InputTestRuntime:SetUnityRemoteGyroEnabled(value) end
---@param interval number
function UnityEngine.InputSystem.InputTestRuntime:SetUnityRemoteGyroUpdateInterval(interval) end
---@param analytic UnityEngine.InputSystem.InputAnalytics.IInputAnalytic
function UnityEngine.InputSystem.InputTestRuntime:SendAnalytic(analytic) end

---@class UnityEngine.InputSystem.ScopedDisposable : System.Object
---@field value T
UnityEngine.InputSystem.ScopedDisposable = {}
---@alias CS.UnityEngine.InputSystem.ScopedDisposable UnityEngine.InputSystem.ScopedDisposable
CS.UnityEngine.InputSystem.ScopedDisposable = UnityEngine.InputSystem.ScopedDisposable

---@param obj T
---@param dispose System.Action[T]
---@return UnityEngine.InputSystem.ScopedDisposable
function UnityEngine.InputSystem.ScopedDisposable.New(obj, dispose) end
function UnityEngine.InputSystem.ScopedDisposable:Dispose() end

---@class UnityEngine.InputSystem.Scoped : System.Object
UnityEngine.InputSystem.Scoped = {}
---@alias CS.UnityEngine.InputSystem.Scoped UnityEngine.InputSystem.Scoped
CS.UnityEngine.InputSystem.Scoped = UnityEngine.InputSystem.Scoped


---@class WinUserInput.INPUT : System.ValueType
---@field type WinUserInput.InputType
---@field U WinUserInput.InputUnion
---@field Size number
WinUserInput.INPUT = {}
---@alias CS.WinUserInput.INPUT WinUserInput.INPUT
CS.WinUserInput.INPUT = WinUserInput.INPUT


---@class WinUserInput.InputUnion : System.ValueType
---@field mi WinUserInput.MOUSEINPUT
---@field ki WinUserInput.KEYBDINPUT
---@field hi WinUserInput.HARDWAREINPUT
WinUserInput.InputUnion = {}
---@alias CS.WinUserInput.InputUnion WinUserInput.InputUnion
CS.WinUserInput.InputUnion = WinUserInput.InputUnion


---@class WinUserInput.MOUSEINPUT : System.ValueType
---@field dx number
---@field dy number
---@field mouseData WinUserInput.MouseEventDataXButtons
---@field dwFlags WinUserInput.MOUSEEVENTF
---@field time number
---@field dwExtraInfo System.UIntPtr
WinUserInput.MOUSEINPUT = {}
---@alias CS.WinUserInput.MOUSEINPUT WinUserInput.MOUSEINPUT
CS.WinUserInput.MOUSEINPUT = WinUserInput.MOUSEINPUT


---@class WinUserInput.InputType
---@field INPUT_MOUSE WinUserInput.InputType
---@field INPUT_KEYBOARD WinUserInput.InputType
---@field INPUT_HARDWARE WinUserInput.InputType
WinUserInput.InputType = {}
---@alias CS.WinUserInput.InputType WinUserInput.InputType
CS.WinUserInput.InputType = WinUserInput.InputType


---@class WinUserInput.MouseEventDataXButtons
---@field Nothing WinUserInput.MouseEventDataXButtons
---@field XBUTTON1 WinUserInput.MouseEventDataXButtons
---@field XBUTTON2 WinUserInput.MouseEventDataXButtons
WinUserInput.MouseEventDataXButtons = {}
---@alias CS.WinUserInput.MouseEventDataXButtons WinUserInput.MouseEventDataXButtons
CS.WinUserInput.MouseEventDataXButtons = WinUserInput.MouseEventDataXButtons


---@class WinUserInput.MOUSEEVENTF
---@field ABSOLUTE WinUserInput.MOUSEEVENTF
---@field HWHEEL WinUserInput.MOUSEEVENTF
---@field MOVE WinUserInput.MOUSEEVENTF
---@field MOVE_NOCOALESCE WinUserInput.MOUSEEVENTF
---@field LEFTDOWN WinUserInput.MOUSEEVENTF
---@field LEFTUP WinUserInput.MOUSEEVENTF
---@field RIGHTDOWN WinUserInput.MOUSEEVENTF
---@field RIGHTUP WinUserInput.MOUSEEVENTF
---@field MIDDLEDOWN WinUserInput.MOUSEEVENTF
---@field MIDDLEUP WinUserInput.MOUSEEVENTF
---@field VIRTUALDESK WinUserInput.MOUSEEVENTF
---@field WHEEL WinUserInput.MOUSEEVENTF
---@field XDOWN WinUserInput.MOUSEEVENTF
---@field XUP WinUserInput.MOUSEEVENTF
WinUserInput.MOUSEEVENTF = {}
---@alias CS.WinUserInput.MOUSEEVENTF WinUserInput.MOUSEEVENTF
CS.WinUserInput.MOUSEEVENTF = WinUserInput.MOUSEEVENTF


---@class WinUserInput.KEYBDINPUT : System.ValueType
---@field wVk WinUserInput.VirtualKeyShort
---@field wScan WinUserInput.ScanCodeShort
---@field dwFlags WinUserInput.KEYEVENTF
---@field time number
---@field dwExtraInfo System.UIntPtr
WinUserInput.KEYBDINPUT = {}
---@alias CS.WinUserInput.KEYBDINPUT WinUserInput.KEYBDINPUT
CS.WinUserInput.KEYBDINPUT = WinUserInput.KEYBDINPUT


---@class WinUserInput.KEYEVENTF
---@field EXTENDEDKEY WinUserInput.KEYEVENTF
---@field KEYUP WinUserInput.KEYEVENTF
---@field SCANCODE WinUserInput.KEYEVENTF
---@field UNICODE WinUserInput.KEYEVENTF
WinUserInput.KEYEVENTF = {}
---@alias CS.WinUserInput.KEYEVENTF WinUserInput.KEYEVENTF
CS.WinUserInput.KEYEVENTF = WinUserInput.KEYEVENTF


---@class WinUserInput.VirtualKeyShort
---@field LBUTTON WinUserInput.VirtualKeyShort
---@field RBUTTON WinUserInput.VirtualKeyShort
---@field CANCEL WinUserInput.VirtualKeyShort
---@field MBUTTON WinUserInput.VirtualKeyShort
---@field XBUTTON1 WinUserInput.VirtualKeyShort
---@field XBUTTON2 WinUserInput.VirtualKeyShort
---@field BACK WinUserInput.VirtualKeyShort
---@field TAB WinUserInput.VirtualKeyShort
---@field CLEAR WinUserInput.VirtualKeyShort
---@field RETURN WinUserInput.VirtualKeyShort
---@field SHIFT WinUserInput.VirtualKeyShort
---@field CONTROL WinUserInput.VirtualKeyShort
---@field MENU WinUserInput.VirtualKeyShort
---@field PAUSE WinUserInput.VirtualKeyShort
---@field CAPITAL WinUserInput.VirtualKeyShort
---@field KANA WinUserInput.VirtualKeyShort
---@field HANGUL WinUserInput.VirtualKeyShort
---@field JUNJA WinUserInput.VirtualKeyShort
---@field FINAL WinUserInput.VirtualKeyShort
---@field HANJA WinUserInput.VirtualKeyShort
---@field KANJI WinUserInput.VirtualKeyShort
---@field ESCAPE WinUserInput.VirtualKeyShort
---@field CONVERT WinUserInput.VirtualKeyShort
---@field NONCONVERT WinUserInput.VirtualKeyShort
---@field ACCEPT WinUserInput.VirtualKeyShort
---@field MODECHANGE WinUserInput.VirtualKeyShort
---@field SPACE WinUserInput.VirtualKeyShort
---@field PRIOR WinUserInput.VirtualKeyShort
---@field NEXT WinUserInput.VirtualKeyShort
---@field END WinUserInput.VirtualKeyShort
---@field HOME WinUserInput.VirtualKeyShort
---@field LEFT WinUserInput.VirtualKeyShort
---@field UP WinUserInput.VirtualKeyShort
---@field RIGHT WinUserInput.VirtualKeyShort
---@field DOWN WinUserInput.VirtualKeyShort
---@field SELECT WinUserInput.VirtualKeyShort
---@field PRINT WinUserInput.VirtualKeyShort
---@field EXECUTE WinUserInput.VirtualKeyShort
---@field SNAPSHOT WinUserInput.VirtualKeyShort
---@field INSERT WinUserInput.VirtualKeyShort
---@field DELETE WinUserInput.VirtualKeyShort
---@field HELP WinUserInput.VirtualKeyShort
---@field KEY_0 WinUserInput.VirtualKeyShort
---@field KEY_1 WinUserInput.VirtualKeyShort
---@field KEY_2 WinUserInput.VirtualKeyShort
---@field KEY_3 WinUserInput.VirtualKeyShort
---@field KEY_4 WinUserInput.VirtualKeyShort
---@field KEY_5 WinUserInput.VirtualKeyShort
---@field KEY_6 WinUserInput.VirtualKeyShort
---@field KEY_7 WinUserInput.VirtualKeyShort
---@field KEY_8 WinUserInput.VirtualKeyShort
---@field KEY_9 WinUserInput.VirtualKeyShort
---@field KEY_A WinUserInput.VirtualKeyShort
---@field KEY_B WinUserInput.VirtualKeyShort
---@field KEY_C WinUserInput.VirtualKeyShort
---@field KEY_D WinUserInput.VirtualKeyShort
---@field KEY_E WinUserInput.VirtualKeyShort
---@field KEY_F WinUserInput.VirtualKeyShort
---@field KEY_G WinUserInput.VirtualKeyShort
---@field KEY_H WinUserInput.VirtualKeyShort
---@field KEY_I WinUserInput.VirtualKeyShort
---@field KEY_J WinUserInput.VirtualKeyShort
---@field KEY_K WinUserInput.VirtualKeyShort
---@field KEY_L WinUserInput.VirtualKeyShort
---@field KEY_M WinUserInput.VirtualKeyShort
---@field KEY_N WinUserInput.VirtualKeyShort
---@field KEY_O WinUserInput.VirtualKeyShort
---@field KEY_P WinUserInput.VirtualKeyShort
---@field KEY_Q WinUserInput.VirtualKeyShort
---@field KEY_R WinUserInput.VirtualKeyShort
---@field KEY_S WinUserInput.VirtualKeyShort
---@field KEY_T WinUserInput.VirtualKeyShort
---@field KEY_U WinUserInput.VirtualKeyShort
---@field KEY_V WinUserInput.VirtualKeyShort
---@field KEY_W WinUserInput.VirtualKeyShort
---@field KEY_X WinUserInput.VirtualKeyShort
---@field KEY_Y WinUserInput.VirtualKeyShort
---@field KEY_Z WinUserInput.VirtualKeyShort
---@field LWIN WinUserInput.VirtualKeyShort
---@field RWIN WinUserInput.VirtualKeyShort
---@field APPS WinUserInput.VirtualKeyShort
---@field SLEEP WinUserInput.VirtualKeyShort
---@field NUMPAD0 WinUserInput.VirtualKeyShort
---@field NUMPAD1 WinUserInput.VirtualKeyShort
---@field NUMPAD2 WinUserInput.VirtualKeyShort
---@field NUMPAD3 WinUserInput.VirtualKeyShort
---@field NUMPAD4 WinUserInput.VirtualKeyShort
---@field NUMPAD5 WinUserInput.VirtualKeyShort
---@field NUMPAD6 WinUserInput.VirtualKeyShort
---@field NUMPAD7 WinUserInput.VirtualKeyShort
---@field NUMPAD8 WinUserInput.VirtualKeyShort
---@field NUMPAD9 WinUserInput.VirtualKeyShort
---@field MULTIPLY WinUserInput.VirtualKeyShort
---@field ADD WinUserInput.VirtualKeyShort
---@field SEPARATOR WinUserInput.VirtualKeyShort
---@field SUBTRACT WinUserInput.VirtualKeyShort
---@field DECIMAL WinUserInput.VirtualKeyShort
---@field DIVIDE WinUserInput.VirtualKeyShort
---@field F1 WinUserInput.VirtualKeyShort
---@field F2 WinUserInput.VirtualKeyShort
---@field F3 WinUserInput.VirtualKeyShort
---@field F4 WinUserInput.VirtualKeyShort
---@field F5 WinUserInput.VirtualKeyShort
---@field F6 WinUserInput.VirtualKeyShort
---@field F7 WinUserInput.VirtualKeyShort
---@field F8 WinUserInput.VirtualKeyShort
---@field F9 WinUserInput.VirtualKeyShort
---@field F10 WinUserInput.VirtualKeyShort
---@field F11 WinUserInput.VirtualKeyShort
---@field F12 WinUserInput.VirtualKeyShort
---@field F13 WinUserInput.VirtualKeyShort
---@field F14 WinUserInput.VirtualKeyShort
---@field F15 WinUserInput.VirtualKeyShort
---@field F16 WinUserInput.VirtualKeyShort
---@field F17 WinUserInput.VirtualKeyShort
---@field F18 WinUserInput.VirtualKeyShort
---@field F19 WinUserInput.VirtualKeyShort
---@field F20 WinUserInput.VirtualKeyShort
---@field F21 WinUserInput.VirtualKeyShort
---@field F22 WinUserInput.VirtualKeyShort
---@field F23 WinUserInput.VirtualKeyShort
---@field F24 WinUserInput.VirtualKeyShort
---@field NUMLOCK WinUserInput.VirtualKeyShort
---@field SCROLL WinUserInput.VirtualKeyShort
---@field LSHIFT WinUserInput.VirtualKeyShort
---@field RSHIFT WinUserInput.VirtualKeyShort
---@field LCONTROL WinUserInput.VirtualKeyShort
---@field RCONTROL WinUserInput.VirtualKeyShort
---@field LMENU WinUserInput.VirtualKeyShort
---@field RMENU WinUserInput.VirtualKeyShort
---@field BROWSER_BACK WinUserInput.VirtualKeyShort
---@field BROWSER_FORWARD WinUserInput.VirtualKeyShort
---@field BROWSER_REFRESH WinUserInput.VirtualKeyShort
---@field BROWSER_STOP WinUserInput.VirtualKeyShort
---@field BROWSER_SEARCH WinUserInput.VirtualKeyShort
---@field BROWSER_FAVORITES WinUserInput.VirtualKeyShort
---@field BROWSER_HOME WinUserInput.VirtualKeyShort
---@field VOLUME_MUTE WinUserInput.VirtualKeyShort
---@field VOLUME_DOWN WinUserInput.VirtualKeyShort
---@field VOLUME_UP WinUserInput.VirtualKeyShort
---@field MEDIA_NEXT_TRACK WinUserInput.VirtualKeyShort
---@field MEDIA_PREV_TRACK WinUserInput.VirtualKeyShort
---@field MEDIA_STOP WinUserInput.VirtualKeyShort
---@field MEDIA_PLAY_PAUSE WinUserInput.VirtualKeyShort
---@field LAUNCH_MAIL WinUserInput.VirtualKeyShort
---@field LAUNCH_MEDIA_SELECT WinUserInput.VirtualKeyShort
---@field LAUNCH_APP1 WinUserInput.VirtualKeyShort
---@field LAUNCH_APP2 WinUserInput.VirtualKeyShort
---@field OEM_1 WinUserInput.VirtualKeyShort
---@field OEM_PLUS WinUserInput.VirtualKeyShort
---@field OEM_COMMA WinUserInput.VirtualKeyShort
---@field OEM_MINUS WinUserInput.VirtualKeyShort
---@field OEM_PERIOD WinUserInput.VirtualKeyShort
---@field OEM_2 WinUserInput.VirtualKeyShort
---@field OEM_3 WinUserInput.VirtualKeyShort
---@field OEM_4 WinUserInput.VirtualKeyShort
---@field OEM_5 WinUserInput.VirtualKeyShort
---@field OEM_6 WinUserInput.VirtualKeyShort
---@field OEM_7 WinUserInput.VirtualKeyShort
---@field OEM_8 WinUserInput.VirtualKeyShort
---@field OEM_102 WinUserInput.VirtualKeyShort
---@field PROCESSKEY WinUserInput.VirtualKeyShort
---@field PACKET WinUserInput.VirtualKeyShort
---@field ATTN WinUserInput.VirtualKeyShort
---@field CRSEL WinUserInput.VirtualKeyShort
---@field EXSEL WinUserInput.VirtualKeyShort
---@field EREOF WinUserInput.VirtualKeyShort
---@field PLAY WinUserInput.VirtualKeyShort
---@field ZOOM WinUserInput.VirtualKeyShort
---@field NONAME WinUserInput.VirtualKeyShort
---@field PA1 WinUserInput.VirtualKeyShort
---@field OEM_CLEAR WinUserInput.VirtualKeyShort
WinUserInput.VirtualKeyShort = {}
---@alias CS.WinUserInput.VirtualKeyShort WinUserInput.VirtualKeyShort
CS.WinUserInput.VirtualKeyShort = WinUserInput.VirtualKeyShort


---@class WinUserInput.ScanCodeShort
---@field LBUTTON WinUserInput.ScanCodeShort
---@field RBUTTON WinUserInput.ScanCodeShort
---@field CANCEL WinUserInput.ScanCodeShort
---@field MBUTTON WinUserInput.ScanCodeShort
---@field XBUTTON1 WinUserInput.ScanCodeShort
---@field XBUTTON2 WinUserInput.ScanCodeShort
---@field BACK WinUserInput.ScanCodeShort
---@field TAB WinUserInput.ScanCodeShort
---@field CLEAR WinUserInput.ScanCodeShort
---@field RETURN WinUserInput.ScanCodeShort
---@field SHIFT WinUserInput.ScanCodeShort
---@field CONTROL WinUserInput.ScanCodeShort
---@field MENU WinUserInput.ScanCodeShort
---@field PAUSE WinUserInput.ScanCodeShort
---@field CAPITAL WinUserInput.ScanCodeShort
---@field KANA WinUserInput.ScanCodeShort
---@field HANGUL WinUserInput.ScanCodeShort
---@field JUNJA WinUserInput.ScanCodeShort
---@field FINAL WinUserInput.ScanCodeShort
---@field HANJA WinUserInput.ScanCodeShort
---@field KANJI WinUserInput.ScanCodeShort
---@field ESCAPE WinUserInput.ScanCodeShort
---@field CONVERT WinUserInput.ScanCodeShort
---@field NONCONVERT WinUserInput.ScanCodeShort
---@field ACCEPT WinUserInput.ScanCodeShort
---@field MODECHANGE WinUserInput.ScanCodeShort
---@field SPACE WinUserInput.ScanCodeShort
---@field PRIOR WinUserInput.ScanCodeShort
---@field NEXT WinUserInput.ScanCodeShort
---@field END WinUserInput.ScanCodeShort
---@field HOME WinUserInput.ScanCodeShort
---@field LEFT WinUserInput.ScanCodeShort
---@field UP WinUserInput.ScanCodeShort
---@field RIGHT WinUserInput.ScanCodeShort
---@field DOWN WinUserInput.ScanCodeShort
---@field SELECT WinUserInput.ScanCodeShort
---@field PRINT WinUserInput.ScanCodeShort
---@field EXECUTE WinUserInput.ScanCodeShort
---@field SNAPSHOT WinUserInput.ScanCodeShort
---@field INSERT WinUserInput.ScanCodeShort
---@field DELETE WinUserInput.ScanCodeShort
---@field HELP WinUserInput.ScanCodeShort
---@field KEY_0 WinUserInput.ScanCodeShort
---@field KEY_1 WinUserInput.ScanCodeShort
---@field KEY_2 WinUserInput.ScanCodeShort
---@field KEY_3 WinUserInput.ScanCodeShort
---@field KEY_4 WinUserInput.ScanCodeShort
---@field KEY_5 WinUserInput.ScanCodeShort
---@field KEY_6 WinUserInput.ScanCodeShort
---@field KEY_7 WinUserInput.ScanCodeShort
---@field KEY_8 WinUserInput.ScanCodeShort
---@field KEY_9 WinUserInput.ScanCodeShort
---@field KEY_A WinUserInput.ScanCodeShort
---@field KEY_B WinUserInput.ScanCodeShort
---@field KEY_C WinUserInput.ScanCodeShort
---@field KEY_D WinUserInput.ScanCodeShort
---@field KEY_E WinUserInput.ScanCodeShort
---@field KEY_F WinUserInput.ScanCodeShort
---@field KEY_G WinUserInput.ScanCodeShort
---@field KEY_H WinUserInput.ScanCodeShort
---@field KEY_I WinUserInput.ScanCodeShort
---@field KEY_J WinUserInput.ScanCodeShort
---@field KEY_K WinUserInput.ScanCodeShort
---@field KEY_L WinUserInput.ScanCodeShort
---@field KEY_M WinUserInput.ScanCodeShort
---@field KEY_N WinUserInput.ScanCodeShort
---@field KEY_O WinUserInput.ScanCodeShort
---@field KEY_P WinUserInput.ScanCodeShort
---@field KEY_Q WinUserInput.ScanCodeShort
---@field KEY_R WinUserInput.ScanCodeShort
---@field KEY_S WinUserInput.ScanCodeShort
---@field KEY_T WinUserInput.ScanCodeShort
---@field KEY_U WinUserInput.ScanCodeShort
---@field KEY_V WinUserInput.ScanCodeShort
---@field KEY_W WinUserInput.ScanCodeShort
---@field KEY_X WinUserInput.ScanCodeShort
---@field KEY_Y WinUserInput.ScanCodeShort
---@field KEY_Z WinUserInput.ScanCodeShort
---@field LWIN WinUserInput.ScanCodeShort
---@field RWIN WinUserInput.ScanCodeShort
---@field APPS WinUserInput.ScanCodeShort
---@field SLEEP WinUserInput.ScanCodeShort
---@field NUMPAD0 WinUserInput.ScanCodeShort
---@field NUMPAD1 WinUserInput.ScanCodeShort
---@field NUMPAD2 WinUserInput.ScanCodeShort
---@field NUMPAD3 WinUserInput.ScanCodeShort
---@field NUMPAD4 WinUserInput.ScanCodeShort
---@field NUMPAD5 WinUserInput.ScanCodeShort
---@field NUMPAD6 WinUserInput.ScanCodeShort
---@field NUMPAD7 WinUserInput.ScanCodeShort
---@field NUMPAD8 WinUserInput.ScanCodeShort
---@field NUMPAD9 WinUserInput.ScanCodeShort
---@field MULTIPLY WinUserInput.ScanCodeShort
---@field ADD WinUserInput.ScanCodeShort
---@field SEPARATOR WinUserInput.ScanCodeShort
---@field SUBTRACT WinUserInput.ScanCodeShort
---@field DECIMAL WinUserInput.ScanCodeShort
---@field DIVIDE WinUserInput.ScanCodeShort
---@field F1 WinUserInput.ScanCodeShort
---@field F2 WinUserInput.ScanCodeShort
---@field F3 WinUserInput.ScanCodeShort
---@field F4 WinUserInput.ScanCodeShort
---@field F5 WinUserInput.ScanCodeShort
---@field F6 WinUserInput.ScanCodeShort
---@field F7 WinUserInput.ScanCodeShort
---@field F8 WinUserInput.ScanCodeShort
---@field F9 WinUserInput.ScanCodeShort
---@field F10 WinUserInput.ScanCodeShort
---@field F11 WinUserInput.ScanCodeShort
---@field F12 WinUserInput.ScanCodeShort
---@field F13 WinUserInput.ScanCodeShort
---@field F14 WinUserInput.ScanCodeShort
---@field F15 WinUserInput.ScanCodeShort
---@field F16 WinUserInput.ScanCodeShort
---@field F17 WinUserInput.ScanCodeShort
---@field F18 WinUserInput.ScanCodeShort
---@field F19 WinUserInput.ScanCodeShort
---@field F20 WinUserInput.ScanCodeShort
---@field F21 WinUserInput.ScanCodeShort
---@field F22 WinUserInput.ScanCodeShort
---@field F23 WinUserInput.ScanCodeShort
---@field F24 WinUserInput.ScanCodeShort
---@field NUMLOCK WinUserInput.ScanCodeShort
---@field SCROLL WinUserInput.ScanCodeShort
---@field LSHIFT WinUserInput.ScanCodeShort
---@field RSHIFT WinUserInput.ScanCodeShort
---@field LCONTROL WinUserInput.ScanCodeShort
---@field RCONTROL WinUserInput.ScanCodeShort
---@field LMENU WinUserInput.ScanCodeShort
---@field RMENU WinUserInput.ScanCodeShort
---@field BROWSER_BACK WinUserInput.ScanCodeShort
---@field BROWSER_FORWARD WinUserInput.ScanCodeShort
---@field BROWSER_REFRESH WinUserInput.ScanCodeShort
---@field BROWSER_STOP WinUserInput.ScanCodeShort
---@field BROWSER_SEARCH WinUserInput.ScanCodeShort
---@field BROWSER_FAVORITES WinUserInput.ScanCodeShort
---@field BROWSER_HOME WinUserInput.ScanCodeShort
---@field VOLUME_MUTE WinUserInput.ScanCodeShort
---@field VOLUME_DOWN WinUserInput.ScanCodeShort
---@field VOLUME_UP WinUserInput.ScanCodeShort
---@field MEDIA_NEXT_TRACK WinUserInput.ScanCodeShort
---@field MEDIA_PREV_TRACK WinUserInput.ScanCodeShort
---@field MEDIA_STOP WinUserInput.ScanCodeShort
---@field MEDIA_PLAY_PAUSE WinUserInput.ScanCodeShort
---@field LAUNCH_MAIL WinUserInput.ScanCodeShort
---@field LAUNCH_MEDIA_SELECT WinUserInput.ScanCodeShort
---@field LAUNCH_APP1 WinUserInput.ScanCodeShort
---@field LAUNCH_APP2 WinUserInput.ScanCodeShort
---@field OEM_1 WinUserInput.ScanCodeShort
---@field OEM_PLUS WinUserInput.ScanCodeShort
---@field OEM_COMMA WinUserInput.ScanCodeShort
---@field OEM_MINUS WinUserInput.ScanCodeShort
---@field OEM_PERIOD WinUserInput.ScanCodeShort
---@field OEM_2 WinUserInput.ScanCodeShort
---@field OEM_3 WinUserInput.ScanCodeShort
---@field OEM_4 WinUserInput.ScanCodeShort
---@field OEM_5 WinUserInput.ScanCodeShort
---@field OEM_6 WinUserInput.ScanCodeShort
---@field OEM_7 WinUserInput.ScanCodeShort
---@field OEM_8 WinUserInput.ScanCodeShort
---@field OEM_102 WinUserInput.ScanCodeShort
---@field PROCESSKEY WinUserInput.ScanCodeShort
---@field PACKET WinUserInput.ScanCodeShort
---@field ATTN WinUserInput.ScanCodeShort
---@field CRSEL WinUserInput.ScanCodeShort
---@field EXSEL WinUserInput.ScanCodeShort
---@field EREOF WinUserInput.ScanCodeShort
---@field PLAY WinUserInput.ScanCodeShort
---@field ZOOM WinUserInput.ScanCodeShort
---@field NONAME WinUserInput.ScanCodeShort
---@field PA1 WinUserInput.ScanCodeShort
---@field OEM_CLEAR WinUserInput.ScanCodeShort
WinUserInput.ScanCodeShort = {}
---@alias CS.WinUserInput.ScanCodeShort WinUserInput.ScanCodeShort
CS.WinUserInput.ScanCodeShort = WinUserInput.ScanCodeShort


---@class WinUserInput.HARDWAREINPUT : System.ValueType
---@field uMsg number
---@field wParamL number
---@field wParamH number
WinUserInput.HARDWAREINPUT = {}
---@alias CS.WinUserInput.HARDWAREINPUT WinUserInput.HARDWAREINPUT
CS.WinUserInput.HARDWAREINPUT = WinUserInput.HARDWAREINPUT


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.InputSystem.InputTestFixture.ActionConstraint : NUnit.Framework.Constraints.Constraint
---@field phase UnityEngine.InputSystem.InputActionPhase
---@field time System.Nullable
---@field duration System.Nullable
---@field action UnityEngine.InputSystem.InputAction
---@field control UnityEngine.InputSystem.InputControl
---@field value System.Object
---@field interaction System.Type
UnityEngine.InputSystem.InputTestFixture.ActionConstraint = {}
---@alias CS.UnityEngine.InputSystem.InputTestFixture.ActionConstraint UnityEngine.InputSystem.InputTestFixture.ActionConstraint
CS.UnityEngine.InputSystem.InputTestFixture.ActionConstraint = UnityEngine.InputSystem.InputTestFixture.ActionConstraint

---@param phase UnityEngine.InputSystem.InputActionPhase
---@param action UnityEngine.InputSystem.InputAction
---@param control UnityEngine.InputSystem.InputControl
---@param value System.Object
---@param interaction System.Type
---@param time System.Nullable
---@param duration System.Nullable
---@return UnityEngine.InputSystem.InputTestFixture.ActionConstraint
function UnityEngine.InputSystem.InputTestFixture.ActionConstraint.New(phase, action, control, value, interaction, time, duration) end
---@param actual System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function UnityEngine.InputSystem.InputTestFixture.ActionConstraint:ApplyTo(actual) end
---@param constraint UnityEngine.InputSystem.InputTestFixture.ActionConstraint
---@return UnityEngine.InputSystem.InputTestFixture.ActionConstraint
function UnityEngine.InputSystem.InputTestFixture.ActionConstraint:AndThen(constraint) end

---@class UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData : System.ValueType
---@field name string
---@field maxPerHour number
---@field maxPropertiesPerEvent number
UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData = {}
---@alias CS.UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData
CS.UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData = UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData

---@param name string
---@param maxPerHour number
---@param maxPropertiesPerEvent number
---@return UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData
function UnityEngine.InputSystem.InputTestFixture.AnalyticsRegistrationEventData.New(name, maxPerHour, maxPropertiesPerEvent) end

---@class UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData : System.ValueType
---@field name string
---@field data System.Object
UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData = {}
---@alias CS.UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData
CS.UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData = UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData

---@param name string
---@param data System.Object
---@return UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData
function UnityEngine.InputSystem.InputTestFixture.AnalyticsEventData.New(name, data) end

---@class UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback : System.MulticastDelegate
UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback = {}
---@alias CS.UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback
CS.UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback = UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback
function UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback.New(object, method) end
---@param deviceId number
---@param command UnityEngine.InputSystem.LowLevel.InputDeviceCommand*
---@return number
function UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback:Invoke(deviceId, command) end
---@param deviceId number
---@param command UnityEngine.InputSystem.LowLevel.InputDeviceCommand*
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback:BeginInvoke(deviceId, command, callback, object) end
---@param result System.IAsyncResult
---@return number
function UnityEngine.InputSystem.InputTestRuntime.DeviceCommandCallback:EndInvoke(result) end

---@class UnityEngine.InputSystem.InputTestRuntime.PairedUser : System.ValueType
---@field deviceId number
---@field userHandle number
---@field userName string
---@field userId string
UnityEngine.InputSystem.InputTestRuntime.PairedUser = {}
---@alias CS.UnityEngine.InputSystem.InputTestRuntime.PairedUser UnityEngine.InputSystem.InputTestRuntime.PairedUser
CS.UnityEngine.InputSystem.InputTestRuntime.PairedUser = UnityEngine.InputSystem.InputTestRuntime.PairedUser


---@class System.Lazy : System.Object
---@field Value T
---@field IsValueCreated boolean
System.Lazy = {}
---@alias CS.System.Lazy System.Lazy
CS.System.Lazy = System.Lazy

---@overload fun() : System.Lazy
---@overload fun(valueFactory: System.Func[T]) : System.Lazy
---@overload fun(isThreadSafe: boolean) : System.Lazy
---@overload fun(valueFactory: System.Func[T], isThreadSafe: boolean) : System.Lazy
---@overload fun(mode: System.Threading.LazyThreadSafetyMode) : System.Lazy
---@param valueFactory System.Func[T]
---@param mode System.Threading.LazyThreadSafetyMode
---@return System.Lazy
function System.Lazy.New(valueFactory, mode) end
---@return string
function System.Lazy:ToString() end

---@class System.Web.UI.ICallbackEventHandler
System.Web.UI.ICallbackEventHandler = {}
---@alias CS.System.Web.UI.ICallbackEventHandler System.Web.UI.ICallbackEventHandler
CS.System.Web.UI.ICallbackEventHandler = System.Web.UI.ICallbackEventHandler

---@param report string
function System.Web.UI.ICallbackEventHandler:RaiseCallbackEvent(report) end
---@return string
function System.Web.UI.ICallbackEventHandler:GetCallbackResult() end

---@class System.Threading.LazyThreadSafetyMode
---@field None System.Threading.LazyThreadSafetyMode
---@field PublicationOnly System.Threading.LazyThreadSafetyMode
---@field ExecutionAndPublication System.Threading.LazyThreadSafetyMode
System.Threading.LazyThreadSafetyMode = {}
---@alias CS.System.Threading.LazyThreadSafetyMode System.Threading.LazyThreadSafetyMode
CS.System.Threading.LazyThreadSafetyMode = System.Threading.LazyThreadSafetyMode


---@class System.Threading.SpinWait : System.ValueType
---@field NextSpinWillYield boolean
---@field Count number
System.Threading.SpinWait = {}
---@alias CS.System.Threading.SpinWait System.Threading.SpinWait
CS.System.Threading.SpinWait = System.Threading.SpinWait

---@overload fun(condition: System.Func)
---@overload fun(condition: System.Func, timeout: System.TimeSpan) : boolean
---@param condition System.Func
---@param millisecondsTimeout number
---@return boolean
function System.Threading.SpinWait.SpinUntil(condition, millisecondsTimeout) end
function System.Threading.SpinWait:SpinOnce() end
function System.Threading.SpinWait:Reset() end

---@class System.Collections.Generic.CollectionDebuggerView : System.Object
---@field Items T[]
System.Collections.Generic.CollectionDebuggerView = {}
---@alias CS.System.Collections.Generic.CollectionDebuggerView System.Collections.Generic.CollectionDebuggerView
CS.System.Collections.Generic.CollectionDebuggerView = System.Collections.Generic.CollectionDebuggerView

---@param col System.Collections.Generic.ICollection[T]
---@return System.Collections.Generic.CollectionDebuggerView
function System.Collections.Generic.CollectionDebuggerView.New(col) end

---@class System.Collections.Generic.CollectionDebuggerView : System.Object
---@field Items System.Collections.Generic.KeyValuePair[T,U][]
System.Collections.Generic.CollectionDebuggerView = {}
---@alias CS.System.Collections.Generic.CollectionDebuggerView System.Collections.Generic.CollectionDebuggerView
CS.System.Collections.Generic.CollectionDebuggerView = System.Collections.Generic.CollectionDebuggerView

---@param col System.Collections.Generic.ICollection[System.Collections.Generic.KeyValuePair[T,U]]
---@return System.Collections.Generic.CollectionDebuggerView
function System.Collections.Generic.CollectionDebuggerView.New(col) end

---@class System.Collections.Concurrent.ConcurrentQueue : System.Object
---@field Count number
---@field IsEmpty boolean
System.Collections.Concurrent.ConcurrentQueue = {}
---@alias CS.System.Collections.Concurrent.ConcurrentQueue System.Collections.Concurrent.ConcurrentQueue
CS.System.Collections.Concurrent.ConcurrentQueue = System.Collections.Concurrent.ConcurrentQueue

---@overload fun() : System.Collections.Concurrent.ConcurrentQueue
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Concurrent.ConcurrentQueue
function System.Collections.Concurrent.ConcurrentQueue.New(collection) end
---@param item T
function System.Collections.Concurrent.ConcurrentQueue:Enqueue(item) end
---@param out_result T
---@return boolean,T
function System.Collections.Concurrent.ConcurrentQueue:TryDequeue(out_result) end
---@param out_result T
---@return boolean,T
function System.Collections.Concurrent.ConcurrentQueue:TryPeek(out_result) end
---@return System.Collections.Generic.IEnumerator[T]
function System.Collections.Concurrent.ConcurrentQueue:GetEnumerator() end
---@param array T[]
---@param index number
function System.Collections.Concurrent.ConcurrentQueue:CopyTo(array, index) end
---@return T[]
function System.Collections.Concurrent.ConcurrentQueue:ToArray() end

---@class System.Collections.Concurrent.IProducerConsumerCollection
System.Collections.Concurrent.IProducerConsumerCollection = {}
---@alias CS.System.Collections.Concurrent.IProducerConsumerCollection System.Collections.Concurrent.IProducerConsumerCollection
CS.System.Collections.Concurrent.IProducerConsumerCollection = System.Collections.Concurrent.IProducerConsumerCollection

---@param item T
---@return boolean
function System.Collections.Concurrent.IProducerConsumerCollection:TryAdd(item) end
---@param out_item T
---@return boolean,T
function System.Collections.Concurrent.IProducerConsumerCollection:TryTake(out_item) end
---@return T[]
function System.Collections.Concurrent.IProducerConsumerCollection:ToArray() end
---@param array T[]
---@param index number
function System.Collections.Concurrent.IProducerConsumerCollection:CopyTo(array, index) end

---@class System.Collections.Concurrent.ConcurrentQueue.Node : System.Object
---@field Value T
---@field Next System.Collections.Concurrent.ConcurrentQueue.Node
System.Collections.Concurrent.ConcurrentQueue.Node = {}
---@alias CS.System.Collections.Concurrent.ConcurrentQueue.Node System.Collections.Concurrent.ConcurrentQueue.Node
CS.System.Collections.Concurrent.ConcurrentQueue.Node = System.Collections.Concurrent.ConcurrentQueue.Node

---@return System.Collections.Concurrent.ConcurrentQueue.Node
function System.Collections.Concurrent.ConcurrentQueue.Node.New() end

---@class Consts : System.Object
---@field AssemblyName string
---@field PublicKey string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class DG.DOTweenEditor.EditorCompatibilityUtils : System.Object
DG.DOTweenEditor.EditorCompatibilityUtils = {}
---@alias CS.DG.DOTweenEditor.EditorCompatibilityUtils DG.DOTweenEditor.EditorCompatibilityUtils
CS.DG.DOTweenEditor.EditorCompatibilityUtils = DG.DOTweenEditor.EditorCompatibilityUtils

---@param type System.Type
---@param includeInactive boolean
---@return UnityEngine.Object
function DG.DOTweenEditor.EditorCompatibilityUtils.FindObjectOfType(type, includeInactive) end
---@param type System.Type
---@param includeInactive boolean
---@return UnityEngine.Object[]
function DG.DOTweenEditor.EditorCompatibilityUtils.FindObjectsOfType(type, includeInactive) end

---@class DG.DOTweenEditor.DelayedCall : System.Object
---@field delay number
---@field callback System.Action
DG.DOTweenEditor.DelayedCall = {}
---@alias CS.DG.DOTweenEditor.DelayedCall DG.DOTweenEditor.DelayedCall
CS.DG.DOTweenEditor.DelayedCall = DG.DOTweenEditor.DelayedCall

---@param delay number
---@param callback System.Action
---@return DG.DOTweenEditor.DelayedCall
function DG.DOTweenEditor.DelayedCall.New(delay, callback) end

---@class DG.DOTweenEditor.ASMDEFManager : System.Object
---@field hasModulesASMDEF boolean
---@field hasProASMDEF boolean
---@field hasProEditorASMDEF boolean
---@field hasDOTweenTimelineASMDEF boolean
---@field hasDOTweenTimelineEditorASMDEF boolean
DG.DOTweenEditor.ASMDEFManager = {}
---@alias CS.DG.DOTweenEditor.ASMDEFManager DG.DOTweenEditor.ASMDEFManager
CS.DG.DOTweenEditor.ASMDEFManager = DG.DOTweenEditor.ASMDEFManager

function DG.DOTweenEditor.ASMDEFManager.ApplyASMDEFSettings() end
function DG.DOTweenEditor.ASMDEFManager.Refresh() end
function DG.DOTweenEditor.ASMDEFManager.RefreshExistingASMDEFFiles() end
function DG.DOTweenEditor.ASMDEFManager.CreateAllASMDEF() end
function DG.DOTweenEditor.ASMDEFManager.RemoveAllASMDEF() end

---@class DG.DOTweenEditor.DOTweenEditorPreview : System.Object
---@field isPreviewing boolean
DG.DOTweenEditor.DOTweenEditorPreview = {}
---@alias CS.DG.DOTweenEditor.DOTweenEditorPreview DG.DOTweenEditor.DOTweenEditorPreview
CS.DG.DOTweenEditor.DOTweenEditorPreview = DG.DOTweenEditor.DOTweenEditorPreview

---@param onPreviewUpdated System.Action
function DG.DOTweenEditor.DOTweenEditorPreview.Start(onPreviewUpdated) end
---@param resetTweenTargets boolean
---@param clearTweens boolean
function DG.DOTweenEditor.DOTweenEditorPreview.Stop(resetTweenTargets, clearTweens) end
---@param t DG.Tweening.Tween
---@param clearCallbacks boolean
---@param preventAutoKill boolean
---@param andPlay boolean
function DG.DOTweenEditor.DOTweenEditorPreview.PrepareTweenForPreview(t, clearCallbacks, preventAutoKill, andPlay) end

---@class DG.DOTweenEditor.EditorVersion : System.Object
---@field Version number
---@field MajorVersion number
---@field MinorVersion number
DG.DOTweenEditor.EditorVersion = {}
---@alias CS.DG.DOTweenEditor.EditorVersion DG.DOTweenEditor.EditorVersion
CS.DG.DOTweenEditor.EditorVersion = DG.DOTweenEditor.EditorVersion


---@class DG.DOTweenEditor.MenuItems : System.Object
DG.DOTweenEditor.MenuItems = {}
---@alias CS.DG.DOTweenEditor.MenuItems DG.DOTweenEditor.MenuItems
CS.DG.DOTweenEditor.MenuItems = DG.DOTweenEditor.MenuItems


---@class DG.DOTweenEditor.EditorUtils : System.Object
---@field projectPath string
---@field assetsPath string
---@field hasPro boolean
---@field hasDOTweenTimeline boolean
---@field hasDOTweenTimelineUnityPackage boolean
---@field isValidDOTweenTimelineUnityVersion boolean
---@field proVersion string
---@field dotweenTimelineVersion string
---@field editorADBDir string
---@field demigiantDir string
---@field dotweenDir string
---@field dotweenProDir string
---@field dotweenProEditorDir string
---@field dotweenModulesDir string
---@field dotweenTimelineDir string
---@field dotweenTimelineScriptsDir string
---@field dotweenTimelineEditorScriptsDir string
---@field dotweenTimelineUnityPackageFilePath string
---@field isOSXEditor boolean
---@field pathSlash string
---@field pathSlashToReplace string
DG.DOTweenEditor.EditorUtils = {}
---@alias CS.DG.DOTweenEditor.EditorUtils DG.DOTweenEditor.EditorUtils
CS.DG.DOTweenEditor.EditorUtils = DG.DOTweenEditor.EditorUtils

---@param force boolean
function DG.DOTweenEditor.EditorUtils.RetrieveDependenciesData(force) end
---@param delay number
---@param callback System.Action
function DG.DOTweenEditor.EditorUtils.DelayedCall(delay, callback) end
---@param texture UnityEngine.Texture2D
---@param filterMode UnityEngine.FilterMode
---@param maxTextureSize number
function DG.DOTweenEditor.EditorUtils.SetEditorTexture(texture, filterMode, maxTextureSize) end
---@return boolean
function DG.DOTweenEditor.EditorUtils.DOTweenSetupRequired() end
function DG.DOTweenEditor.EditorUtils.DeleteDOTweenUpgradeManagerFiles() end
function DG.DOTweenEditor.EditorUtils.DeleteLegacyNoModulesDOTweenFiles() end
function DG.DOTweenEditor.EditorUtils.DeleteOldDemiLibCore() end
---@param adbPath string
---@return boolean
function DG.DOTweenEditor.EditorUtils.AssetExists(adbPath) end
---@param adbPath string
---@return string
function DG.DOTweenEditor.EditorUtils.ADBPathToFullPath(adbPath) end
---@param fullPath string
---@return string
function DG.DOTweenEditor.EditorUtils.FullPathToADBPath(fullPath) end
---@param assembly System.Reflection.Assembly
---@return string
function DG.DOTweenEditor.EditorUtils.GetAssemblyFilePath(assembly) end
---@param id string
function DG.DOTweenEditor.EditorUtils.AddGlobalDefine(id) end
---@param id string
function DG.DOTweenEditor.EditorUtils.RemoveGlobalDefine(id) end
---@param id string
---@param buildTargetGroup System.Nullable
---@return boolean
function DG.DOTweenEditor.EditorUtils.HasGlobalDefine(id, buildTargetGroup) end

---@class DG.DOTweenEditor.UtilityWindowModificationProcessor : UnityEditor.AssetModificationProcessor
DG.DOTweenEditor.UtilityWindowModificationProcessor = {}
---@alias CS.DG.DOTweenEditor.UtilityWindowModificationProcessor DG.DOTweenEditor.UtilityWindowModificationProcessor
CS.DG.DOTweenEditor.UtilityWindowModificationProcessor = DG.DOTweenEditor.UtilityWindowModificationProcessor

---@return DG.DOTweenEditor.UtilityWindowModificationProcessor
function DG.DOTweenEditor.UtilityWindowModificationProcessor.New() end

---@class DG.DOTweenEditor.UtilityWindowPostProcessor : UnityEditor.AssetPostprocessor
DG.DOTweenEditor.UtilityWindowPostProcessor = {}
---@alias CS.DG.DOTweenEditor.UtilityWindowPostProcessor DG.DOTweenEditor.UtilityWindowPostProcessor
CS.DG.DOTweenEditor.UtilityWindowPostProcessor = DG.DOTweenEditor.UtilityWindowPostProcessor

---@return DG.DOTweenEditor.UtilityWindowPostProcessor
function DG.DOTweenEditor.UtilityWindowPostProcessor.New() end

---@class DG.DOTweenEditor.DOTweenDefines : System.Object
---@field DOTween DG.DOTweenEditor.DOTweenDefines.Def
---@field NoAudio DG.DOTweenEditor.DOTweenDefines.Def
---@field NoPhysics DG.DOTweenEditor.DOTweenDefines.Def
---@field NoPhysics2D DG.DOTweenEditor.DOTweenDefines.Def
---@field NoSprites DG.DOTweenEditor.DOTweenDefines.Def
---@field NoUI DG.DOTweenEditor.DOTweenDefines.Def
---@field UIToolkit DG.DOTweenEditor.DOTweenDefines.Def
---@field DeAudio DG.DOTweenEditor.DOTweenDefines.Def
---@field DeUnityExtended DG.DOTweenEditor.DOTweenDefines.Def
---@field TK2D DG.DOTweenEditor.DOTweenDefines.Def
---@field TextMeshPro DG.DOTweenEditor.DOTweenDefines.Def
---@field EasyPerformantOutline DG.DOTweenEditor.DOTweenDefines.Def
DG.DOTweenEditor.DOTweenDefines = {}
---@alias CS.DG.DOTweenEditor.DOTweenDefines DG.DOTweenEditor.DOTweenDefines
CS.DG.DOTweenEditor.DOTweenDefines = DG.DOTweenEditor.DOTweenDefines

---@param src DG.Tweening.Core.DOTweenSettings
function DG.DOTweenEditor.DOTweenDefines.RefreshDOTweenSettings(src) end
function DG.DOTweenEditor.DOTweenDefines.RefreshAll() end
function DG.DOTweenEditor.DOTweenDefines.ApplyGUIEnabledToAll() end
function DG.DOTweenEditor.DOTweenDefines.RemoveAll() end
function DG.DOTweenEditor.DOTweenDefines.RemoveAllLegacy() end

---@class DG.DOTweenEditor.UnityEditorVersion : System.Object
---@field Version number
---@field MajorVersion number
---@field MinorVersion number
DG.DOTweenEditor.UnityEditorVersion = {}
---@alias CS.DG.DOTweenEditor.UnityEditorVersion DG.DOTweenEditor.UnityEditorVersion
CS.DG.DOTweenEditor.UnityEditorVersion = DG.DOTweenEditor.UnityEditorVersion


---@class DG.DOTweenEditor.UI.EditorGUIUtils : System.Object
---@field boldLabelStyle UnityEngine.GUIStyle
---@field setupLabelStyle UnityEngine.GUIStyle
---@field redLabelStyle UnityEngine.GUIStyle
---@field btBigStyle UnityEngine.GUIStyle
---@field btSetup UnityEngine.GUIStyle
---@field btImgStyle UnityEngine.GUIStyle
---@field wrapCenterLabelStyle UnityEngine.GUIStyle
---@field handlelabelStyle UnityEngine.GUIStyle
---@field handleSelectedLabelStyle UnityEngine.GUIStyle
---@field wordWrapLabelStyle UnityEngine.GUIStyle
---@field wordWrapRichTextLabelStyle UnityEngine.GUIStyle
---@field wordWrapItalicLabelStyle UnityEngine.GUIStyle
---@field titleStyle UnityEngine.GUIStyle
---@field logoIconStyle UnityEngine.GUIStyle
---@field sideBtStyle UnityEngine.GUIStyle
---@field sideLogoIconBoldLabelStyle UnityEngine.GUIStyle
---@field wordWrapTextArea UnityEngine.GUIStyle
---@field popupButton UnityEngine.GUIStyle
---@field btIconStyle UnityEngine.GUIStyle
---@field infoboxStyle UnityEngine.GUIStyle
---@field btTweenStyle UnityEngine.GUIStyle
---@field btSequenceStyle UnityEngine.GUIStyle
---@field btSequencedStyle UnityEngine.GUIStyle
---@field btPlayPauseStyle UnityEngine.GUIStyle
---@field FilteredEaseTypes System.String[]
---@field logo UnityEngine.Texture2D
---@field miniIcon UnityEngine.Texture2D
DG.DOTweenEditor.UI.EditorGUIUtils = {}
---@alias CS.DG.DOTweenEditor.UI.EditorGUIUtils DG.DOTweenEditor.UI.EditorGUIUtils
CS.DG.DOTweenEditor.UI.EditorGUIUtils = DG.DOTweenEditor.UI.EditorGUIUtils

---@overload fun(label: string, currEase: DG.Tweening.Ease, style: UnityEngine.GUIStyle) : DG.Tweening.Ease
---@param rect UnityEngine.Rect
---@param label string
---@param currEase DG.Tweening.Ease
---@param style UnityEngine.GUIStyle
---@return DG.Tweening.Ease
function DG.DOTweenEditor.UI.EditorGUIUtils.FilteredEasePopup(rect, label, currEase, style) end
function DG.DOTweenEditor.UI.EditorGUIUtils.InspectorLogo() end
---@param toggled boolean
---@param content UnityEngine.GUIContent
---@param alert boolean
---@param guiStyle UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return boolean
function DG.DOTweenEditor.UI.EditorGUIUtils.ToggleButton(toggled, content, alert, guiStyle, options) end
---@param footerSize System.Nullable
function DG.DOTweenEditor.UI.EditorGUIUtils.SetGUIStyles(footerSize) end

---@class DG.DOTweenEditor.UI.DOTweenComponentInspector : UnityEditor.Editor
DG.DOTweenEditor.UI.DOTweenComponentInspector = {}
---@alias CS.DG.DOTweenEditor.UI.DOTweenComponentInspector DG.DOTweenEditor.UI.DOTweenComponentInspector
CS.DG.DOTweenEditor.UI.DOTweenComponentInspector = DG.DOTweenEditor.UI.DOTweenComponentInspector

---@return DG.DOTweenEditor.UI.DOTweenComponentInspector
function DG.DOTweenEditor.UI.DOTweenComponentInspector.New() end
function DG.DOTweenEditor.UI.DOTweenComponentInspector:OnInspectorGUI() end

---@class DG.DOTweenEditor.UI.DOTweenUtilityWindowModules : System.Object
DG.DOTweenEditor.UI.DOTweenUtilityWindowModules = {}
---@alias CS.DG.DOTweenEditor.UI.DOTweenUtilityWindowModules DG.DOTweenEditor.UI.DOTweenUtilityWindowModules
CS.DG.DOTweenEditor.UI.DOTweenUtilityWindowModules = DG.DOTweenEditor.UI.DOTweenUtilityWindowModules

---@param editor UnityEditor.EditorWindow
---@param src DG.Tweening.Core.DOTweenSettings
---@return boolean
function DG.DOTweenEditor.UI.DOTweenUtilityWindowModules.Draw(editor, src) end
function DG.DOTweenEditor.UI.DOTweenUtilityWindowModules.ApplyModulesSettings() end
---@param src DG.Tweening.Core.DOTweenSettings
function DG.DOTweenEditor.UI.DOTweenUtilityWindowModules.RefreshDOTweenSettings(src) end

---@class DG.DOTweenEditor.UI.DOTweenSettingsInspector : UnityEditor.Editor
DG.DOTweenEditor.UI.DOTweenSettingsInspector = {}
---@alias CS.DG.DOTweenEditor.UI.DOTweenSettingsInspector DG.DOTweenEditor.UI.DOTweenSettingsInspector
CS.DG.DOTweenEditor.UI.DOTweenSettingsInspector = DG.DOTweenEditor.UI.DOTweenSettingsInspector

---@return DG.DOTweenEditor.UI.DOTweenSettingsInspector
function DG.DOTweenEditor.UI.DOTweenSettingsInspector.New() end
function DG.DOTweenEditor.UI.DOTweenSettingsInspector:OnInspectorGUI() end

---@class DG.DOTweenEditor.UI.DOTweenUtilityWindow : UnityEditor.EditorWindow
---@field Id string
---@field IdPro string
DG.DOTweenEditor.UI.DOTweenUtilityWindow = {}
---@alias CS.DG.DOTweenEditor.UI.DOTweenUtilityWindow DG.DOTweenEditor.UI.DOTweenUtilityWindow
CS.DG.DOTweenEditor.UI.DOTweenUtilityWindow = DG.DOTweenEditor.UI.DOTweenUtilityWindow

---@return DG.DOTweenEditor.UI.DOTweenUtilityWindow
function DG.DOTweenEditor.UI.DOTweenUtilityWindow.New() end
function DG.DOTweenEditor.UI.DOTweenUtilityWindow.Open() end
---@return DG.Tweening.Core.DOTweenSettings
function DG.DOTweenEditor.UI.DOTweenUtilityWindow.GetDOTweenSettings() end

---@class DG.DOTweenEditor.ASMDEFManager.ASMDEFType
---@field Modules DG.DOTweenEditor.ASMDEFManager.ASMDEFType
---@field DOTweenPro DG.DOTweenEditor.ASMDEFManager.ASMDEFType
---@field DOTweenProEditor DG.DOTweenEditor.ASMDEFManager.ASMDEFType
---@field DOTweenTimeline DG.DOTweenEditor.ASMDEFManager.ASMDEFType
---@field DOTweenTimelineEditor DG.DOTweenEditor.ASMDEFManager.ASMDEFType
DG.DOTweenEditor.ASMDEFManager.ASMDEFType = {}
---@alias CS.DG.DOTweenEditor.ASMDEFManager.ASMDEFType DG.DOTweenEditor.ASMDEFManager.ASMDEFType
CS.DG.DOTweenEditor.ASMDEFManager.ASMDEFType = DG.DOTweenEditor.ASMDEFManager.ASMDEFType


---@class DG.DOTweenEditor.ASMDEFManager.ChangeType
---@field Deleted DG.DOTweenEditor.ASMDEFManager.ChangeType
---@field Created DG.DOTweenEditor.ASMDEFManager.ChangeType
---@field Overwritten DG.DOTweenEditor.ASMDEFManager.ChangeType
DG.DOTweenEditor.ASMDEFManager.ChangeType = {}
---@alias CS.DG.DOTweenEditor.ASMDEFManager.ChangeType DG.DOTweenEditor.ASMDEFManager.ChangeType
CS.DG.DOTweenEditor.ASMDEFManager.ChangeType = DG.DOTweenEditor.ASMDEFManager.ChangeType


---@class DG.DOTweenEditor.DOTweenDefines.Def : System.Object
---@field id string
---@field isInverted boolean
---@field guiEnabled boolean
---@field enabled boolean
DG.DOTweenEditor.DOTweenDefines.Def = {}
---@alias CS.DG.DOTweenEditor.DOTweenDefines.Def DG.DOTweenEditor.DOTweenDefines.Def
CS.DG.DOTweenEditor.DOTweenDefines.Def = DG.DOTweenEditor.DOTweenDefines.Def

---@param id string
---@param isInverted boolean
---@return DG.DOTweenEditor.DOTweenDefines.Def
function DG.DOTweenEditor.DOTweenDefines.Def.New(id, isInverted) end
function DG.DOTweenEditor.DOTweenDefines.Def:Refresh() end
---@param enable boolean
function DG.DOTweenEditor.DOTweenDefines.Def:Enable(enable) end
function DG.DOTweenEditor.DOTweenDefines.Def:Remove() end
function DG.DOTweenEditor.DOTweenDefines.Def:Add() end

---@class DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData : System.ValueType
---@field dir string
---@field filePath string
---@field adbFilePath string
---@field adbParentDir string
DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData = {}
---@alias CS.DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData
CS.DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData = DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData

---@param srcDir string
---@return DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData
function DG.DOTweenEditor.UI.DOTweenUtilityWindow.LocationData.New(srcDir) end

---@class System.Runtime.CompilerServices.IsReadOnlyAttribute : System.Attribute
System.Runtime.CompilerServices.IsReadOnlyAttribute = {}
---@alias CS.System.Runtime.CompilerServices.IsReadOnlyAttribute System.Runtime.CompilerServices.IsReadOnlyAttribute
CS.System.Runtime.CompilerServices.IsReadOnlyAttribute = System.Runtime.CompilerServices.IsReadOnlyAttribute

---@return System.Runtime.CompilerServices.IsReadOnlyAttribute
function System.Runtime.CompilerServices.IsReadOnlyAttribute.New() end

---@class System.Runtime.CompilerServices.NullableAttribute : System.Attribute
---@field NullableFlags System.Byte[]
System.Runtime.CompilerServices.NullableAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableAttribute System.Runtime.CompilerServices.NullableAttribute
CS.System.Runtime.CompilerServices.NullableAttribute = System.Runtime.CompilerServices.NullableAttribute

---@overload fun(: number) : System.Runtime.CompilerServices.NullableAttribute
---@param  System.Byte[]
---@return System.Runtime.CompilerServices.NullableAttribute
function System.Runtime.CompilerServices.NullableAttribute.New() end

---@class System.Runtime.CompilerServices.NullableContextAttribute : System.Attribute
---@field Flag number
System.Runtime.CompilerServices.NullableContextAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableContextAttribute System.Runtime.CompilerServices.NullableContextAttribute
CS.System.Runtime.CompilerServices.NullableContextAttribute = System.Runtime.CompilerServices.NullableContextAttribute

---@param  number
---@return System.Runtime.CompilerServices.NullableContextAttribute
function System.Runtime.CompilerServices.NullableContextAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.NotNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.NotNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.NotNullAttribute System.Diagnostics.CodeAnalysis.NotNullAttribute
CS.System.Diagnostics.CodeAnalysis.NotNullAttribute = System.Diagnostics.CodeAnalysis.NotNullAttribute

---@return System.Diagnostics.CodeAnalysis.NotNullAttribute
function System.Diagnostics.CodeAnalysis.NotNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.NotNullWhenAttribute : System.Attribute
---@field ReturnValue boolean
System.Diagnostics.CodeAnalysis.NotNullWhenAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.NotNullWhenAttribute System.Diagnostics.CodeAnalysis.NotNullWhenAttribute
CS.System.Diagnostics.CodeAnalysis.NotNullWhenAttribute = System.Diagnostics.CodeAnalysis.NotNullWhenAttribute

---@param returnValue boolean
---@return System.Diagnostics.CodeAnalysis.NotNullWhenAttribute
function System.Diagnostics.CodeAnalysis.NotNullWhenAttribute.New(returnValue) end

---@class System.Diagnostics.CodeAnalysis.MaybeNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.MaybeNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.MaybeNullAttribute System.Diagnostics.CodeAnalysis.MaybeNullAttribute
CS.System.Diagnostics.CodeAnalysis.MaybeNullAttribute = System.Diagnostics.CodeAnalysis.MaybeNullAttribute

---@return System.Diagnostics.CodeAnalysis.MaybeNullAttribute
function System.Diagnostics.CodeAnalysis.MaybeNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.AllowNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.AllowNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.AllowNullAttribute System.Diagnostics.CodeAnalysis.AllowNullAttribute
CS.System.Diagnostics.CodeAnalysis.AllowNullAttribute = System.Diagnostics.CodeAnalysis.AllowNullAttribute

---@return System.Diagnostics.CodeAnalysis.AllowNullAttribute
function System.Diagnostics.CodeAnalysis.AllowNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute : System.Attribute
---@field ParameterValue boolean
System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute
CS.System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute = System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute

---@param parameterValue boolean
---@return System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute
function System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute.New(parameterValue) end

---@class System.Runtime.CompilerServices.ExtensionAttribute : System.Attribute
System.Runtime.CompilerServices.ExtensionAttribute = {}
---@alias CS.System.Runtime.CompilerServices.ExtensionAttribute System.Runtime.CompilerServices.ExtensionAttribute
CS.System.Runtime.CompilerServices.ExtensionAttribute = System.Runtime.CompilerServices.ExtensionAttribute

---@return System.Runtime.CompilerServices.ExtensionAttribute
function System.Runtime.CompilerServices.ExtensionAttribute.New() end

---@class System.Runtime.CompilerServices.NullableAttribute : System.Attribute
---@field NullableFlags System.Byte[]
System.Runtime.CompilerServices.NullableAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableAttribute System.Runtime.CompilerServices.NullableAttribute
CS.System.Runtime.CompilerServices.NullableAttribute = System.Runtime.CompilerServices.NullableAttribute

---@overload fun(: number) : System.Runtime.CompilerServices.NullableAttribute
---@param  System.Byte[]
---@return System.Runtime.CompilerServices.NullableAttribute
function System.Runtime.CompilerServices.NullableAttribute.New() end

---@class System.Runtime.CompilerServices.NullableContextAttribute : System.Attribute
---@field Flag number
System.Runtime.CompilerServices.NullableContextAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableContextAttribute System.Runtime.CompilerServices.NullableContextAttribute
CS.System.Runtime.CompilerServices.NullableContextAttribute = System.Runtime.CompilerServices.NullableContextAttribute

---@param  number
---@return System.Runtime.CompilerServices.NullableContextAttribute
function System.Runtime.CompilerServices.NullableContextAttribute.New() end

---@class TokenStreamWithHiddenTokens : System.Object
TokenStreamWithHiddenTokens = {}
---@alias CS.TokenStreamWithHiddenTokens TokenStreamWithHiddenTokens
CS.TokenStreamWithHiddenTokens = TokenStreamWithHiddenTokens


---@class System.StringExtensions : System.Object
System.StringExtensions = {}
---@alias CS.System.StringExtensions System.StringExtensions
CS.System.StringExtensions = System.StringExtensions

---@param sourceString string
---@param toCheck string
---@return boolean
function System.StringExtensions.ContainsInvariantCultureIgnoreCase(sourceString, toCheck) end
---@param sourceString string
---@return string
function System.StringExtensions.PrependWhitespace(sourceString) end
---@param sourceString string
---@return string
function System.StringExtensions.AppendWhitespace(sourceString) end
---@param sourceString string
---@param separator System.Char
---@return string
function System.StringExtensions.GetLastPartFromSeparator(sourceString, separator) end

---@class System.IO.InotifyWatcher : System.Object
System.IO.InotifyWatcher = {}
---@alias CS.System.IO.InotifyWatcher System.IO.InotifyWatcher
CS.System.IO.InotifyWatcher = System.IO.InotifyWatcher

---@return boolean
function System.IO.InotifyWatcher.IsInotifyAvailable() end
---@param fullPath string
---@param ignoredDirPath string
---@return System.IO.InotifyWatcher
function System.IO.InotifyWatcher.Build(fullPath, ignoredDirPath) end

---@class DG.Tweening.AutoPlay
---@field None DG.Tweening.AutoPlay
---@field AutoPlaySequences DG.Tweening.AutoPlay
---@field AutoPlayTweeners DG.Tweening.AutoPlay
---@field All DG.Tweening.AutoPlay
DG.Tweening.AutoPlay = {}
---@alias CS.DG.Tweening.AutoPlay DG.Tweening.AutoPlay
CS.DG.Tweening.AutoPlay = DG.Tweening.AutoPlay


---@class DG.Tweening.AxisConstraint
---@field None DG.Tweening.AxisConstraint
---@field X DG.Tweening.AxisConstraint
---@field Y DG.Tweening.AxisConstraint
---@field Z DG.Tweening.AxisConstraint
---@field W DG.Tweening.AxisConstraint
DG.Tweening.AxisConstraint = {}
---@alias CS.DG.Tweening.AxisConstraint DG.Tweening.AxisConstraint
CS.DG.Tweening.AxisConstraint = DG.Tweening.AxisConstraint


---@class DG.Tweening.Color2 : System.ValueType
---@field ca UnityEngine.Color
---@field cb UnityEngine.Color
DG.Tweening.Color2 = {}
---@alias CS.DG.Tweening.Color2 DG.Tweening.Color2
CS.DG.Tweening.Color2 = DG.Tweening.Color2

---@param ca UnityEngine.Color
---@param cb UnityEngine.Color
---@return DG.Tweening.Color2
function DG.Tweening.Color2.New(ca, cb) end

---@class DG.Tweening.TweenCallback : System.MulticastDelegate
DG.Tweening.TweenCallback = {}
---@alias CS.DG.Tweening.TweenCallback DG.Tweening.TweenCallback
CS.DG.Tweening.TweenCallback = DG.Tweening.TweenCallback

---@param object System.Object
---@param method System.IntPtr
---@return DG.Tweening.TweenCallback
function DG.Tweening.TweenCallback.New(object, method) end
function DG.Tweening.TweenCallback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function DG.Tweening.TweenCallback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function DG.Tweening.TweenCallback:EndInvoke(result) end

---@class DG.Tweening.TweenCallback : System.MulticastDelegate
DG.Tweening.TweenCallback = {}
---@alias CS.DG.Tweening.TweenCallback DG.Tweening.TweenCallback
CS.DG.Tweening.TweenCallback = DG.Tweening.TweenCallback

---@param object System.Object
---@param method System.IntPtr
---@return DG.Tweening.TweenCallback
function DG.Tweening.TweenCallback.New(object, method) end
---@param value T
function DG.Tweening.TweenCallback:Invoke(value) end
---@param value T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function DG.Tweening.TweenCallback:BeginInvoke(value, callback, object) end
---@param result System.IAsyncResult
function DG.Tweening.TweenCallback:EndInvoke(result) end

---@class DG.Tweening.EaseFunction : System.MulticastDelegate
DG.Tweening.EaseFunction = {}
---@alias CS.DG.Tweening.EaseFunction DG.Tweening.EaseFunction
CS.DG.Tweening.EaseFunction = DG.Tweening.EaseFunction

---@param object System.Object
---@param method System.IntPtr
---@return DG.Tweening.EaseFunction
function DG.Tweening.EaseFunction.New(object, method) end
---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@return number
function DG.Tweening.EaseFunction:Invoke(time, duration, overshootOrAmplitude, period) end
---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function DG.Tweening.EaseFunction:BeginInvoke(time, duration, overshootOrAmplitude, period, callback, object) end
---@param result System.IAsyncResult
---@return number
function DG.Tweening.EaseFunction:EndInvoke(result) end

---@class DG.Tweening.DOCurve : System.Object
DG.Tweening.DOCurve = {}
---@alias CS.DG.Tweening.DOCurve DG.Tweening.DOCurve
CS.DG.Tweening.DOCurve = DG.Tweening.DOCurve


---@class DG.Tweening.DOTween : System.Object
---@field Version string
---@field useSafeMode boolean
---@field safeModeLogBehaviour DG.Tweening.Core.Enums.SafeModeLogBehaviour
---@field nestedTweenFailureBehaviour DG.Tweening.Core.Enums.NestedTweenFailureBehaviour
---@field showUnityEditorReport boolean
---@field timeScale number
---@field unscaledTimeScale number
---@field useSmoothDeltaTime boolean
---@field maxSmoothUnscaledTime number
---@field onWillLog System.Func
---@field drawGizmos boolean
---@field debugMode boolean
---@field defaultUpdateType DG.Tweening.UpdateType
---@field defaultTimeScaleIndependent boolean
---@field defaultAutoPlay DG.Tweening.AutoPlay
---@field defaultAutoKill boolean
---@field defaultLoopType DG.Tweening.LoopType
---@field defaultRecyclable boolean
---@field defaultEaseType DG.Tweening.Ease
---@field defaultEaseOvershootOrAmplitude number
---@field defaultEasePeriod number
---@field instance DG.Tweening.Core.DOTweenComponent
---@field logBehaviour DG.Tweening.LogBehaviour
---@field tweenersCapacity number
---@field sequencesCapacity number
---@field debugStoreTargetId boolean
DG.Tweening.DOTween = {}
---@alias CS.DG.Tweening.DOTween DG.Tweening.DOTween
CS.DG.Tweening.DOTween = DG.Tweening.DOTween

---@return DG.Tweening.DOTween
function DG.Tweening.DOTween.New() end
---@param recycleAllByDefault System.Nullable
---@param useSafeMode System.Nullable
---@param logBehaviour System.Nullable
---@return DG.Tweening.IDOTweenInit
function DG.Tweening.DOTween.Init(recycleAllByDefault, useSafeMode, logBehaviour) end
---@param tweenersCapacity number
---@param sequencesCapacity number
function DG.Tweening.DOTween.SetTweensCapacity(tweenersCapacity, sequencesCapacity) end
---@param destroy boolean
function DG.Tweening.DOTween.Clear(destroy) end
function DG.Tweening.DOTween.ClearCachedTweens() end
---@return number
function DG.Tweening.DOTween.Validate() end
---@param deltaTime number
---@param unscaledDeltaTime number
function DG.Tweening.DOTween.ManualUpdate(deltaTime, unscaledDeltaTime) end
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: string, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: UnityEngine.Vector2, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: UnityEngine.Vector3, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: UnityEngine.Vector4, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: UnityEngine.Vector3, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: UnityEngine.Rect, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, endValue: UnityEngine.RectOffset, duration: number) : DG.Tweening.Tweener
---@param setter DG.Tweening.Core.DOSetter
---@param startValue number
---@param endValue number
---@param duration number
---@return DG.Tweening.Tweener
function DG.Tweening.DOTween.To(setter, startValue, endValue, duration) end
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param endValue number
---@param duration number
---@param axisConstraint DG.Tweening.AxisConstraint
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTween.ToAxis(getter, setter, endValue, duration, axisConstraint) end
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTween.ToAlpha(getter, setter, endValue, duration) end
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param direction UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTween.Punch(getter, setter, direction, duration, vibrato, elasticity) end
---@overload fun(getter: DG.Tweening.Core.DOGetter, setter: DG.Tweening.Core.DOSetter, duration: number, strength: number, vibrato: number, randomness: number, ignoreZAxis: boolean, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Core.TweenerCore
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTween.Shake(getter, setter, duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param endValues UnityEngine.Vector3[]
---@param durations System.Single[]
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTween.ToArray(getter, setter, endValues, durations) end
---@overload fun() : DG.Tweening.Sequence
---@param target System.Object
---@return DG.Tweening.Sequence
function DG.Tweening.DOTween.Sequence(target) end
---@param withCallbacks boolean
---@return number
function DG.Tweening.DOTween.CompleteAll(withCallbacks) end
---@param targetOrId System.Object
---@param withCallbacks boolean
---@return number
function DG.Tweening.DOTween.Complete(targetOrId, withCallbacks) end
---@return number
function DG.Tweening.DOTween.FlipAll() end
---@param targetOrId System.Object
---@return number
function DG.Tweening.DOTween.Flip(targetOrId) end
---@param to number
---@param andPlay boolean
---@return number
function DG.Tweening.DOTween.GotoAll(to, andPlay) end
---@param targetOrId System.Object
---@param to number
---@param andPlay boolean
---@return number
function DG.Tweening.DOTween.Goto(targetOrId, to, andPlay) end
---@overload fun(complete: boolean) : number
---@param complete boolean
---@param idsOrTargetsToExclude System.Object[]
---@return number
function DG.Tweening.DOTween.KillAll(complete, idsOrTargetsToExclude) end
---@overload fun(targetOrId: System.Object, complete: boolean) : number
---@param target System.Object
---@param id System.Object
---@param complete boolean
---@return number
function DG.Tweening.DOTween.Kill(target, id, complete) end
---@return number
function DG.Tweening.DOTween.PauseAll() end
---@param targetOrId System.Object
---@return number
function DG.Tweening.DOTween.Pause(targetOrId) end
---@return number
function DG.Tweening.DOTween.PlayAll() end
---@overload fun(targetOrId: System.Object) : number
---@param target System.Object
---@param id System.Object
---@return number
function DG.Tweening.DOTween.Play(target, id) end
---@return number
function DG.Tweening.DOTween.PlayBackwardsAll() end
---@overload fun(targetOrId: System.Object) : number
---@param target System.Object
---@param id System.Object
---@return number
function DG.Tweening.DOTween.PlayBackwards(target, id) end
---@return number
function DG.Tweening.DOTween.PlayForwardAll() end
---@overload fun(targetOrId: System.Object) : number
---@param target System.Object
---@param id System.Object
---@return number
function DG.Tweening.DOTween.PlayForward(target, id) end
---@param includeDelay boolean
---@return number
function DG.Tweening.DOTween.RestartAll(includeDelay) end
---@overload fun(targetOrId: System.Object, includeDelay: boolean, changeDelayTo: number) : number
---@param target System.Object
---@param id System.Object
---@param includeDelay boolean
---@param changeDelayTo number
---@return number
function DG.Tweening.DOTween.Restart(target, id, includeDelay, changeDelayTo) end
---@param includeDelay boolean
---@return number
function DG.Tweening.DOTween.RewindAll(includeDelay) end
---@param targetOrId System.Object
---@param includeDelay boolean
---@return number
function DG.Tweening.DOTween.Rewind(targetOrId, includeDelay) end
---@return number
function DG.Tweening.DOTween.SmoothRewindAll() end
---@param targetOrId System.Object
---@return number
function DG.Tweening.DOTween.SmoothRewind(targetOrId) end
---@return number
function DG.Tweening.DOTween.TogglePauseAll() end
---@param targetOrId System.Object
---@return number
function DG.Tweening.DOTween.TogglePause(targetOrId) end
---@param targetOrId System.Object
---@param alsoCheckIfIsPlaying boolean
---@return boolean
function DG.Tweening.DOTween.IsTweening(targetOrId, alsoCheckIfIsPlaying) end
---@return number
function DG.Tweening.DOTween.TotalActiveTweens() end
---@return number
function DG.Tweening.DOTween.TotalActiveTweeners() end
---@return number
function DG.Tweening.DOTween.TotalActiveSequences() end
---@return number
function DG.Tweening.DOTween.TotalPlayingTweens() end
---@param id System.Object
---@param playingOnly boolean
---@return number
function DG.Tweening.DOTween.TotalTweensById(id, playingOnly) end
---@param fillableList System.Collections.Generic.List
---@return System.Collections.Generic.List
function DG.Tweening.DOTween.PlayingTweens(fillableList) end
---@param fillableList System.Collections.Generic.List
---@return System.Collections.Generic.List
function DG.Tweening.DOTween.PausedTweens(fillableList) end
---@param id System.Object
---@param playingOnly boolean
---@param fillableList System.Collections.Generic.List
---@return System.Collections.Generic.List
function DG.Tweening.DOTween.TweensById(id, playingOnly, fillableList) end
---@param target System.Object
---@param playingOnly boolean
---@param fillableList System.Collections.Generic.List
---@return System.Collections.Generic.List
function DG.Tweening.DOTween.TweensByTarget(target, playingOnly, fillableList) end

---@class DG.Tweening.DOVirtual : System.Object
DG.Tweening.DOVirtual = {}
---@alias CS.DG.Tweening.DOVirtual DG.Tweening.DOVirtual
CS.DG.Tweening.DOVirtual = DG.Tweening.DOVirtual

---@param from number
---@param to number
---@param duration number
---@param onVirtualUpdate DG.Tweening.TweenCallback
---@return DG.Tweening.Tweener
function DG.Tweening.DOVirtual.Float(from, to, duration, onVirtualUpdate) end
---@param from number
---@param to number
---@param duration number
---@param onVirtualUpdate DG.Tweening.TweenCallback
---@return DG.Tweening.Tweener
function DG.Tweening.DOVirtual.Int(from, to, duration, onVirtualUpdate) end
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@param duration number
---@param onVirtualUpdate DG.Tweening.TweenCallback
---@return DG.Tweening.Tweener
function DG.Tweening.DOVirtual.Vector2(from, to, duration, onVirtualUpdate) end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param duration number
---@param onVirtualUpdate DG.Tweening.TweenCallback
---@return DG.Tweening.Tweener
function DG.Tweening.DOVirtual.Vector3(from, to, duration, onVirtualUpdate) end
---@param from UnityEngine.Color
---@param to UnityEngine.Color
---@param duration number
---@param onVirtualUpdate DG.Tweening.TweenCallback
---@return DG.Tweening.Tweener
function DG.Tweening.DOVirtual.Color(from, to, duration, onVirtualUpdate) end
---@overload fun(from: number, to: number, lifetimePercentage: number, easeType: DG.Tweening.Ease) : number
---@overload fun(from: number, to: number, lifetimePercentage: number, easeType: DG.Tweening.Ease, overshoot: number) : number
---@overload fun(from: number, to: number, lifetimePercentage: number, easeType: DG.Tweening.Ease, amplitude: number, period: number) : number
---@overload fun(from: number, to: number, lifetimePercentage: number, easeCurve: UnityEngine.AnimationCurve) : number
---@overload fun(from: UnityEngine.Vector3, to: UnityEngine.Vector3, lifetimePercentage: number, easeType: DG.Tweening.Ease) : UnityEngine.Vector3
---@overload fun(from: UnityEngine.Vector3, to: UnityEngine.Vector3, lifetimePercentage: number, easeType: DG.Tweening.Ease, overshoot: number) : UnityEngine.Vector3
---@overload fun(from: UnityEngine.Vector3, to: UnityEngine.Vector3, lifetimePercentage: number, easeType: DG.Tweening.Ease, amplitude: number, period: number) : UnityEngine.Vector3
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param lifetimePercentage number
---@param easeCurve UnityEngine.AnimationCurve
---@return UnityEngine.Vector3
function DG.Tweening.DOVirtual.EasedValue(from, to, lifetimePercentage, easeCurve) end
---@param delay number
---@param callback DG.Tweening.TweenCallback
---@param ignoreTimeScale boolean
---@return DG.Tweening.Tween
function DG.Tweening.DOVirtual.DelayedCall(delay, callback, ignoreTimeScale) end

---@class DG.Tweening.Ease
---@field Unset DG.Tweening.Ease
---@field Linear DG.Tweening.Ease
---@field InSine DG.Tweening.Ease
---@field OutSine DG.Tweening.Ease
---@field InOutSine DG.Tweening.Ease
---@field InQuad DG.Tweening.Ease
---@field OutQuad DG.Tweening.Ease
---@field InOutQuad DG.Tweening.Ease
---@field InCubic DG.Tweening.Ease
---@field OutCubic DG.Tweening.Ease
---@field InOutCubic DG.Tweening.Ease
---@field InQuart DG.Tweening.Ease
---@field OutQuart DG.Tweening.Ease
---@field InOutQuart DG.Tweening.Ease
---@field InQuint DG.Tweening.Ease
---@field OutQuint DG.Tweening.Ease
---@field InOutQuint DG.Tweening.Ease
---@field InExpo DG.Tweening.Ease
---@field OutExpo DG.Tweening.Ease
---@field InOutExpo DG.Tweening.Ease
---@field InCirc DG.Tweening.Ease
---@field OutCirc DG.Tweening.Ease
---@field InOutCirc DG.Tweening.Ease
---@field InElastic DG.Tweening.Ease
---@field OutElastic DG.Tweening.Ease
---@field InOutElastic DG.Tweening.Ease
---@field InBack DG.Tweening.Ease
---@field OutBack DG.Tweening.Ease
---@field InOutBack DG.Tweening.Ease
---@field InBounce DG.Tweening.Ease
---@field OutBounce DG.Tweening.Ease
---@field InOutBounce DG.Tweening.Ease
---@field Flash DG.Tweening.Ease
---@field InFlash DG.Tweening.Ease
---@field OutFlash DG.Tweening.Ease
---@field InOutFlash DG.Tweening.Ease
---@field INTERNAL_Zero DG.Tweening.Ease
---@field INTERNAL_Custom DG.Tweening.Ease
DG.Tweening.Ease = {}
---@alias CS.DG.Tweening.Ease DG.Tweening.Ease
CS.DG.Tweening.Ease = DG.Tweening.Ease


---@class DG.Tweening.EaseFactory : System.Object
DG.Tweening.EaseFactory = {}
---@alias CS.DG.Tweening.EaseFactory DG.Tweening.EaseFactory
CS.DG.Tweening.EaseFactory = DG.Tweening.EaseFactory

---@return DG.Tweening.EaseFactory
function DG.Tweening.EaseFactory.New() end
---@overload fun(motionFps: number, ease: System.Nullable) : DG.Tweening.EaseFunction
---@overload fun(motionFps: number, animCurve: UnityEngine.AnimationCurve) : DG.Tweening.EaseFunction
---@param motionFps number
---@param customEase DG.Tweening.EaseFunction
---@return DG.Tweening.EaseFunction
function DG.Tweening.EaseFactory.StopMotion(motionFps, customEase) end

---@class DG.Tweening.IDOTweenInit
DG.Tweening.IDOTweenInit = {}
---@alias CS.DG.Tweening.IDOTweenInit DG.Tweening.IDOTweenInit
CS.DG.Tweening.IDOTweenInit = DG.Tweening.IDOTweenInit

---@param tweenersCapacity number
---@param sequencesCapacity number
---@return DG.Tweening.IDOTweenInit
function DG.Tweening.IDOTweenInit:SetCapacity(tweenersCapacity, sequencesCapacity) end

---@class DG.Tweening.LinkBehaviour
---@field PauseOnDisable DG.Tweening.LinkBehaviour
---@field PauseOnDisablePlayOnEnable DG.Tweening.LinkBehaviour
---@field PauseOnDisableRestartOnEnable DG.Tweening.LinkBehaviour
---@field PlayOnEnable DG.Tweening.LinkBehaviour
---@field RestartOnEnable DG.Tweening.LinkBehaviour
---@field KillOnDisable DG.Tweening.LinkBehaviour
---@field KillOnDestroy DG.Tweening.LinkBehaviour
---@field CompleteOnDisable DG.Tweening.LinkBehaviour
---@field CompleteAndKillOnDisable DG.Tweening.LinkBehaviour
---@field RewindOnDisable DG.Tweening.LinkBehaviour
---@field RewindAndKillOnDisable DG.Tweening.LinkBehaviour
DG.Tweening.LinkBehaviour = {}
---@alias CS.DG.Tweening.LinkBehaviour DG.Tweening.LinkBehaviour
CS.DG.Tweening.LinkBehaviour = DG.Tweening.LinkBehaviour


---@class DG.Tweening.PathMode
---@field Ignore DG.Tweening.PathMode
---@field Full3D DG.Tweening.PathMode
---@field TopDown2D DG.Tweening.PathMode
---@field Sidescroller2D DG.Tweening.PathMode
DG.Tweening.PathMode = {}
---@alias CS.DG.Tweening.PathMode DG.Tweening.PathMode
CS.DG.Tweening.PathMode = DG.Tweening.PathMode


---@class DG.Tweening.PathType
---@field Linear DG.Tweening.PathType
---@field CatmullRom DG.Tweening.PathType
---@field CubicBezier DG.Tweening.PathType
DG.Tweening.PathType = {}
---@alias CS.DG.Tweening.PathType DG.Tweening.PathType
CS.DG.Tweening.PathType = DG.Tweening.PathType


---@class DG.Tweening.RotateMode
---@field Fast DG.Tweening.RotateMode
---@field FastBeyond360 DG.Tweening.RotateMode
---@field WorldAxisAdd DG.Tweening.RotateMode
---@field LocalAxisAdd DG.Tweening.RotateMode
DG.Tweening.RotateMode = {}
---@alias CS.DG.Tweening.RotateMode DG.Tweening.RotateMode
CS.DG.Tweening.RotateMode = DG.Tweening.RotateMode


---@class DG.Tweening.ScrambleMode
---@field None DG.Tweening.ScrambleMode
---@field All DG.Tweening.ScrambleMode
---@field Uppercase DG.Tweening.ScrambleMode
---@field Lowercase DG.Tweening.ScrambleMode
---@field Numerals DG.Tweening.ScrambleMode
---@field Custom DG.Tweening.ScrambleMode
DG.Tweening.ScrambleMode = {}
---@alias CS.DG.Tweening.ScrambleMode DG.Tweening.ScrambleMode
CS.DG.Tweening.ScrambleMode = DG.Tweening.ScrambleMode


---@class DG.Tweening.ShakeRandomnessMode
---@field Full DG.Tweening.ShakeRandomnessMode
---@field Harmonic DG.Tweening.ShakeRandomnessMode
DG.Tweening.ShakeRandomnessMode = {}
---@alias CS.DG.Tweening.ShakeRandomnessMode DG.Tweening.ShakeRandomnessMode
CS.DG.Tweening.ShakeRandomnessMode = DG.Tweening.ShakeRandomnessMode


---@class DG.Tweening.TweenExtensions : System.Object
DG.Tweening.TweenExtensions = {}
---@alias CS.DG.Tweening.TweenExtensions DG.Tweening.TweenExtensions
CS.DG.Tweening.TweenExtensions = DG.Tweening.TweenExtensions

---@overload fun(t: DG.Tweening.Tween)
---@param t DG.Tweening.Tween
---@param withCallbacks boolean
function DG.Tweening.TweenExtensions.Complete(t, withCallbacks) end
---@param t DG.Tweening.Tween
function DG.Tweening.TweenExtensions.Flip(t) end
---@param t DG.Tweening.Tween
function DG.Tweening.TweenExtensions.ForceInit(t) end
---@param t DG.Tweening.Tween
---@param to number
---@param andPlay boolean
function DG.Tweening.TweenExtensions.Goto(t, to, andPlay) end
---@param t DG.Tweening.Tween
---@param to number
---@param andPlay boolean
function DG.Tweening.TweenExtensions.GotoWithCallbacks(t, to, andPlay) end
---@param t DG.Tweening.Tween
---@param complete boolean
function DG.Tweening.TweenExtensions.Kill(t, complete) end
---@param t DG.Tweening.Tween
---@param deltaTime number
---@param unscaledDeltaTime number
function DG.Tweening.TweenExtensions.ManualUpdate(t, deltaTime, unscaledDeltaTime) end
---@param t DG.Tweening.Tween
function DG.Tweening.TweenExtensions.PlayBackwards(t) end
---@param t DG.Tweening.Tween
function DG.Tweening.TweenExtensions.PlayForward(t) end
---@param t DG.Tweening.Tween
---@param includeDelay boolean
---@param changeDelayTo number
function DG.Tweening.TweenExtensions.Restart(t, includeDelay, changeDelayTo) end
---@param t DG.Tweening.Tween
---@param includeDelay boolean
function DG.Tweening.TweenExtensions.Rewind(t, includeDelay) end
---@param t DG.Tweening.Tween
function DG.Tweening.TweenExtensions.SmoothRewind(t) end
---@param t DG.Tweening.Tween
function DG.Tweening.TweenExtensions.TogglePause(t) end
---@param t DG.Tweening.Tween
---@param waypointIndex number
---@param andPlay boolean
function DG.Tweening.TweenExtensions.GotoWaypoint(t, waypointIndex, andPlay) end
---@param t DG.Tweening.Tween
---@return UnityEngine.YieldInstruction
function DG.Tweening.TweenExtensions.WaitForCompletion(t) end
---@param t DG.Tweening.Tween
---@return UnityEngine.YieldInstruction
function DG.Tweening.TweenExtensions.WaitForRewind(t) end
---@param t DG.Tweening.Tween
---@return UnityEngine.YieldInstruction
function DG.Tweening.TweenExtensions.WaitForKill(t) end
---@param t DG.Tweening.Tween
---@param elapsedLoops number
---@return UnityEngine.YieldInstruction
function DG.Tweening.TweenExtensions.WaitForElapsedLoops(t, elapsedLoops) end
---@param t DG.Tweening.Tween
---@param position number
---@return UnityEngine.YieldInstruction
function DG.Tweening.TweenExtensions.WaitForPosition(t, position) end
---@param t DG.Tweening.Tween
---@return UnityEngine.Coroutine
function DG.Tweening.TweenExtensions.WaitForStart(t) end
---@param t DG.Tweening.Tween
---@return number
function DG.Tweening.TweenExtensions.CompletedLoops(t) end
---@param t DG.Tweening.Tween
---@return number
function DG.Tweening.TweenExtensions.Delay(t) end
---@param t DG.Tweening.Tween
---@return number
function DG.Tweening.TweenExtensions.ElapsedDelay(t) end
---@param t DG.Tweening.Tween
---@param includeLoops boolean
---@return number
function DG.Tweening.TweenExtensions.Duration(t, includeLoops) end
---@param t DG.Tweening.Tween
---@param includeLoops boolean
---@return number
function DG.Tweening.TweenExtensions.Elapsed(t, includeLoops) end
---@param t DG.Tweening.Tween
---@param includeLoops boolean
---@return number
function DG.Tweening.TweenExtensions.ElapsedPercentage(t, includeLoops) end
---@param t DG.Tweening.Tween
---@return number
function DG.Tweening.TweenExtensions.ElapsedDirectionalPercentage(t) end
---@param t DG.Tweening.Tween
---@return boolean
function DG.Tweening.TweenExtensions.IsActive(t) end
---@param t DG.Tweening.Tween
---@return boolean
function DG.Tweening.TweenExtensions.IsBackwards(t) end
---@param t DG.Tweening.Tween
---@return boolean
function DG.Tweening.TweenExtensions.IsLoopingOrExecutingBackwards(t) end
---@param t DG.Tweening.Tween
---@return boolean
function DG.Tweening.TweenExtensions.IsComplete(t) end
---@param t DG.Tweening.Tween
---@return boolean
function DG.Tweening.TweenExtensions.IsTimeScaleIndependent(t) end
---@param t DG.Tweening.Tween
---@return boolean
function DG.Tweening.TweenExtensions.IsInitialized(t) end
---@param t DG.Tweening.Tween
---@return boolean
function DG.Tweening.TweenExtensions.IsPlaying(t) end
---@param t DG.Tweening.Tween
---@return number
function DG.Tweening.TweenExtensions.Loops(t) end
---@param t DG.Tweening.Tween
---@param pathPercentage number
---@return UnityEngine.Vector3
function DG.Tweening.TweenExtensions.PathGetPoint(t, pathPercentage) end
---@param t DG.Tweening.Tween
---@param subdivisionsXSegment number
---@return UnityEngine.Vector3[]
function DG.Tweening.TweenExtensions.PathGetDrawPoints(t, subdivisionsXSegment) end
---@param t DG.Tweening.Tween
---@return number
function DG.Tweening.TweenExtensions.PathLength(t) end

---@class DG.Tweening.LoopType
---@field Restart DG.Tweening.LoopType
---@field Yoyo DG.Tweening.LoopType
---@field Incremental DG.Tweening.LoopType
DG.Tweening.LoopType = {}
---@alias CS.DG.Tweening.LoopType DG.Tweening.LoopType
CS.DG.Tweening.LoopType = DG.Tweening.LoopType


---@class DG.Tweening.Sequence : DG.Tweening.Tween
DG.Tweening.Sequence = {}
---@alias CS.DG.Tweening.Sequence DG.Tweening.Sequence
CS.DG.Tweening.Sequence = DG.Tweening.Sequence

---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:Append(t) end
---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:Prepend(t) end
---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:Join(t) end
---@param atPosition number
---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:Insert(atPosition, t) end
---@param interval number
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:AppendInterval(interval) end
---@param interval number
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:PrependInterval(interval) end
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:AppendCallback(callback) end
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:PrependCallback(callback) end
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:JoinCallback(callback) end
---@param atPosition number
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.Sequence:InsertCallback(atPosition, callback) end

---@class DG.Tweening.ShortcutExtensions : System.Object
DG.Tweening.ShortcutExtensions = {}
---@alias CS.DG.Tweening.ShortcutExtensions DG.Tweening.ShortcutExtensions
CS.DG.Tweening.ShortcutExtensions = DG.Tweening.ShortcutExtensions

---@param target UnityEngine.Camera
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOAspect(target, endValue, duration) end
---@overload fun(target: UnityEngine.Camera, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.Light, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.LineRenderer, startValue: DG.Tweening.Color2, endValue: DG.Tweening.Color2, duration: number) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.Material, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.Material, endValue: UnityEngine.Color, property: string, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Material
---@param endValue UnityEngine.Color
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOColor(target, endValue, propertyID, duration) end
---@param target UnityEngine.Camera
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOFarClipPlane(target, endValue, duration) end
---@param target UnityEngine.Camera
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOFieldOfView(target, endValue, duration) end
---@param target UnityEngine.Camera
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DONearClipPlane(target, endValue, duration) end
---@param target UnityEngine.Camera
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOOrthoSize(target, endValue, duration) end
---@param target UnityEngine.Camera
---@param endValue UnityEngine.Rect
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOPixelRect(target, endValue, duration) end
---@param target UnityEngine.Camera
---@param endValue UnityEngine.Rect
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DORect(target, endValue, duration) end
---@overload fun(target: UnityEngine.Camera, duration: number, strength: number, vibrato: number, randomness: number, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.Camera, duration: number, strength: UnityEngine.Vector3, vibrato: number, randomness: number, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.Transform, duration: number, strength: number, vibrato: number, randomness: number, snapping: boolean, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@param target UnityEngine.Transform
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param snapping boolean
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOShakePosition(target, duration, strength, vibrato, randomness, snapping, fadeOut, randomnessMode) end
---@overload fun(target: UnityEngine.Camera, duration: number, strength: number, vibrato: number, randomness: number, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.Camera, duration: number, strength: UnityEngine.Vector3, vibrato: number, randomness: number, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.Transform, duration: number, strength: number, vibrato: number, randomness: number, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@param target UnityEngine.Transform
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOShakeRotation(target, duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param target UnityEngine.Light
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOIntensity(target, endValue, duration) end
---@param target UnityEngine.Light
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOShadowStrength(target, endValue, duration) end
---@overload fun(target: UnityEngine.Material, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.Material, endValue: number, property: string, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Material
---@param endValue number
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOFade(target, endValue, propertyID, duration) end
---@overload fun(target: UnityEngine.Material, endValue: number, property: string, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Material
---@param endValue number
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOFloat(target, endValue, propertyID, duration) end
---@overload fun(target: UnityEngine.Material, endValue: UnityEngine.Vector2, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Material
---@param endValue UnityEngine.Vector2
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOOffset(target, endValue, property, duration) end
---@overload fun(target: UnityEngine.Material, endValue: UnityEngine.Vector2, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Material
---@param endValue UnityEngine.Vector2
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOTiling(target, endValue, property, duration) end
---@overload fun(target: UnityEngine.Material, endValue: UnityEngine.Vector4, property: string, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Material
---@param endValue UnityEngine.Vector4
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOVector(target, endValue, propertyID, duration) end
---@param target UnityEngine.TrailRenderer
---@param toStartWidth number
---@param toEndWidth number
---@param duration number
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOResize(target, toStartWidth, toEndWidth, duration) end
---@param target UnityEngine.TrailRenderer
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOTime(target, endValue, duration) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOMove(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOMoveX(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOMoveY(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOMoveZ(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOLocalMove(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOLocalMoveX(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOLocalMoveY(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOLocalMoveZ(target, endValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DORotate(target, endValue, duration, mode) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Quaternion
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DORotateQuaternion(target, endValue, duration) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOLocalRotate(target, endValue, duration, mode) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Quaternion
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOLocalRotateQuaternion(target, endValue, duration) end
---@overload fun(target: UnityEngine.Transform, endValue: UnityEngine.Vector3, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOScale(target, endValue, duration) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOScaleX(target, endValue, duration) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOScaleY(target, endValue, duration) end
---@param target UnityEngine.Transform
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOScaleZ(target, endValue, duration) end
---@param target UnityEngine.Transform
---@param towards UnityEngine.Vector3
---@param duration number
---@param axisConstraint DG.Tweening.AxisConstraint
---@param up System.Nullable
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOLookAt(target, towards, duration, axisConstraint, up) end
---@param target UnityEngine.Transform
---@param towards UnityEngine.Vector3
---@param duration number
---@param axisConstraint DG.Tweening.AxisConstraint
---@param up System.Nullable
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DODynamicLookAt(target, towards, duration, axisConstraint, up) end
---@param target UnityEngine.Transform
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@param snapping boolean
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOPunchPosition(target, punch, duration, vibrato, elasticity, snapping) end
---@param target UnityEngine.Transform
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOPunchScale(target, punch, duration, vibrato, elasticity) end
---@param target UnityEngine.Transform
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOPunchRotation(target, punch, duration, vibrato, elasticity) end
---@overload fun(target: UnityEngine.Transform, duration: number, strength: number, vibrato: number, randomness: number, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@param target UnityEngine.Transform
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOShakeScale(target, duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Vector3
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function DG.Tweening.ShortcutExtensions.DOJump(target, endValue, jumpPower, numJumps, duration, snapping) end
---@param target UnityEngine.Transform
---@param endValue UnityEngine.Vector3
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function DG.Tweening.ShortcutExtensions.DOLocalJump(target, endValue, jumpPower, numJumps, duration, snapping) end
---@overload fun(target: UnityEngine.Transform, path: UnityEngine.Vector3[], duration: number, pathType: DG.Tweening.PathType, pathMode: DG.Tweening.PathMode, resolution: number, gizmoColor: System.Nullable) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Transform
---@param path DG.Tweening.Plugins.Core.PathCore.Path
---@param duration number
---@param pathMode DG.Tweening.PathMode
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOPath(target, path, duration, pathMode) end
---@overload fun(target: UnityEngine.Transform, path: UnityEngine.Vector3[], duration: number, pathType: DG.Tweening.PathType, pathMode: DG.Tweening.PathMode, resolution: number, gizmoColor: System.Nullable) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.Transform
---@param path DG.Tweening.Plugins.Core.PathCore.Path
---@param duration number
---@param pathMode DG.Tweening.PathMode
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOLocalPath(target, path, duration, pathMode) end
---@param target DG.Tweening.Tween
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.ShortcutExtensions.DOTimeScale(target, endValue, duration) end
---@overload fun(target: UnityEngine.Light, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.Material, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.Material, endValue: UnityEngine.Color, property: string, duration: number) : DG.Tweening.Tweener
---@param target UnityEngine.Material
---@param endValue UnityEngine.Color
---@param propertyID number
---@param duration number
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOBlendableColor(target, endValue, propertyID, duration) end
---@param target UnityEngine.Transform
---@param byValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOBlendableMoveBy(target, byValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param byValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOBlendableLocalMoveBy(target, byValue, duration, snapping) end
---@param target UnityEngine.Transform
---@param byValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOBlendableRotateBy(target, byValue, duration, mode) end
---@param target UnityEngine.Transform
---@param byValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOBlendableLocalRotateBy(target, byValue, duration, mode) end
---@param target UnityEngine.Transform
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOBlendablePunchRotation(target, punch, duration, vibrato, elasticity) end
---@param target UnityEngine.Transform
---@param byValue UnityEngine.Vector3
---@param duration number
---@return DG.Tweening.Tweener
function DG.Tweening.ShortcutExtensions.DOBlendableScaleBy(target, byValue, duration) end
---@overload fun(target: UnityEngine.Component, withCallbacks: boolean) : number
---@param target UnityEngine.Material
---@param withCallbacks boolean
---@return number
function DG.Tweening.ShortcutExtensions.DOComplete(target, withCallbacks) end
---@overload fun(target: UnityEngine.Component, complete: boolean) : number
---@param target UnityEngine.Material
---@param complete boolean
---@return number
function DG.Tweening.ShortcutExtensions.DOKill(target, complete) end
---@overload fun(target: UnityEngine.Component) : number
---@param target UnityEngine.Material
---@return number
function DG.Tweening.ShortcutExtensions.DOFlip(target) end
---@overload fun(target: UnityEngine.Component, to: number, andPlay: boolean) : number
---@param target UnityEngine.Material
---@param to number
---@param andPlay boolean
---@return number
function DG.Tweening.ShortcutExtensions.DOGoto(target, to, andPlay) end
---@overload fun(target: UnityEngine.Component) : number
---@param target UnityEngine.Material
---@return number
function DG.Tweening.ShortcutExtensions.DOPause(target) end
---@overload fun(target: UnityEngine.Component) : number
---@param target UnityEngine.Material
---@return number
function DG.Tweening.ShortcutExtensions.DOPlay(target) end
---@overload fun(target: UnityEngine.Component) : number
---@param target UnityEngine.Material
---@return number
function DG.Tweening.ShortcutExtensions.DOPlayBackwards(target) end
---@overload fun(target: UnityEngine.Component) : number
---@param target UnityEngine.Material
---@return number
function DG.Tweening.ShortcutExtensions.DOPlayForward(target) end
---@overload fun(target: UnityEngine.Component, includeDelay: boolean) : number
---@param target UnityEngine.Material
---@param includeDelay boolean
---@return number
function DG.Tweening.ShortcutExtensions.DORestart(target, includeDelay) end
---@overload fun(target: UnityEngine.Component, includeDelay: boolean) : number
---@param target UnityEngine.Material
---@param includeDelay boolean
---@return number
function DG.Tweening.ShortcutExtensions.DORewind(target, includeDelay) end
---@overload fun(target: UnityEngine.Component) : number
---@param target UnityEngine.Material
---@return number
function DG.Tweening.ShortcutExtensions.DOSmoothRewind(target) end
---@overload fun(target: UnityEngine.Component) : number
---@param target UnityEngine.Material
---@return number
function DG.Tweening.ShortcutExtensions.DOTogglePause(target) end

---@class DG.Tweening.TweenParams : System.Object
---@field Params DG.Tweening.TweenParams
DG.Tweening.TweenParams = {}
---@alias CS.DG.Tweening.TweenParams DG.Tweening.TweenParams
CS.DG.Tweening.TweenParams = DG.Tweening.TweenParams

---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams.New() end
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:Clear() end
---@param autoKillOnCompletion boolean
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetAutoKill(autoKillOnCompletion) end
---@overload fun(self: DG.Tweening.TweenParams, objectId: System.Object) : DG.Tweening.TweenParams
---@overload fun(self: DG.Tweening.TweenParams, stringId: string) : DG.Tweening.TweenParams
---@param intId number
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetId(intId) end
---@param target System.Object
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetTarget(target) end
---@param loops number
---@param loopType System.Nullable
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetLoops(loops, loopType) end
---@overload fun(self: DG.Tweening.TweenParams, ease: DG.Tweening.Ease, overshootOrAmplitude: System.Nullable, period: System.Nullable) : DG.Tweening.TweenParams
---@overload fun(self: DG.Tweening.TweenParams, animCurve: UnityEngine.AnimationCurve) : DG.Tweening.TweenParams
---@param customEase DG.Tweening.EaseFunction
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetEase(customEase) end
---@param recyclable boolean
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetRecyclable(recyclable) end
---@overload fun(self: DG.Tweening.TweenParams, isIndependentUpdate: boolean) : DG.Tweening.TweenParams
---@param updateType DG.Tweening.UpdateType
---@param isIndependentUpdate boolean
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetUpdate(updateType, isIndependentUpdate) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnStart(action) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnPlay(action) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnRewind(action) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnUpdate(action) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnStepComplete(action) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnComplete(action) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnKill(action) end
---@param action DG.Tweening.TweenCallback
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:OnWaypointChange(action) end
---@param delay number
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetDelay(delay) end
---@param isRelative boolean
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetRelative(isRelative) end
---@param isSpeedBased boolean
---@return DG.Tweening.TweenParams
function DG.Tweening.TweenParams:SetSpeedBased(isSpeedBased) end

---@class DG.Tweening.TweenSettingsExtensions : System.Object
DG.Tweening.TweenSettingsExtensions = {}
---@alias CS.DG.Tweening.TweenSettingsExtensions DG.Tweening.TweenSettingsExtensions
CS.DG.Tweening.TweenSettingsExtensions = DG.Tweening.TweenSettingsExtensions

---@param s DG.Tweening.Sequence
---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.Append(s, t) end
---@param s DG.Tweening.Sequence
---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.Prepend(s, t) end
---@param s DG.Tweening.Sequence
---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.Join(s, t) end
---@param s DG.Tweening.Sequence
---@param atPosition number
---@param t DG.Tweening.Tween
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.Insert(s, atPosition, t) end
---@param s DG.Tweening.Sequence
---@param interval number
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.AppendInterval(s, interval) end
---@param s DG.Tweening.Sequence
---@param interval number
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.PrependInterval(s, interval) end
---@param s DG.Tweening.Sequence
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.AppendCallback(s, callback) end
---@param s DG.Tweening.Sequence
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.PrependCallback(s, callback) end
---@param s DG.Tweening.Sequence
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.JoinCallback(s, callback) end
---@param s DG.Tweening.Sequence
---@param atPosition number
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Sequence
function DG.Tweening.TweenSettingsExtensions.InsertCallback(s, atPosition, callback) end
---@overload fun(t: DG.Tweening.Core.TweenerCore, fromAlphaValue: number, setImmediately: boolean, isRelative: boolean) : DG.Tweening.Core.TweenerCore
---@overload fun(t: DG.Tweening.Core.TweenerCore, fromValue: number, setImmediately: boolean, isRelative: boolean) : DG.Tweening.Core.TweenerCore
---@param t DG.Tweening.Core.TweenerCore
---@param fromValueDegrees number
---@param setImmediately boolean
---@param isRelative boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.TweenSettingsExtensions.From(t, fromValueDegrees, setImmediately, isRelative) end
---@overload fun(t: DG.Tweening.Core.TweenerCore, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, axisConstraint: DG.Tweening.AxisConstraint, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, axisConstraint: DG.Tweening.AxisConstraint, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, axisConstraint: DG.Tweening.AxisConstraint, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, useShortest360Route: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, alphaOnly: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, richTextEnabled: boolean, scrambleMode: DG.Tweening.ScrambleMode, scrambleChars: string) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, axisConstraint: DG.Tweening.AxisConstraint, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, endValueDegrees: number, relativeCenter: boolean, snapping: boolean) : DG.Tweening.Tweener
---@overload fun(t: DG.Tweening.Core.TweenerCore, lockPosition: DG.Tweening.AxisConstraint, lockRotation: DG.Tweening.AxisConstraint) : DG.Tweening.Core.TweenerCore
---@param t DG.Tweening.Core.TweenerCore
---@param closePath boolean
---@param lockPosition DG.Tweening.AxisConstraint
---@param lockRotation DG.Tweening.AxisConstraint
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.TweenSettingsExtensions.SetOptions(t, closePath, lockPosition, lockRotation) end
---@overload fun(t: DG.Tweening.Core.TweenerCore, lookAtPosition: UnityEngine.Vector3, forwardDirection: System.Nullable, up: System.Nullable) : DG.Tweening.Core.TweenerCore
---@overload fun(t: DG.Tweening.Core.TweenerCore, lookAtPosition: UnityEngine.Vector3, stableZRotation: boolean) : DG.Tweening.Core.TweenerCore
---@overload fun(t: DG.Tweening.Core.TweenerCore, lookAtTransform: UnityEngine.Transform, forwardDirection: System.Nullable, up: System.Nullable) : DG.Tweening.Core.TweenerCore
---@overload fun(t: DG.Tweening.Core.TweenerCore, lookAtTransform: UnityEngine.Transform, stableZRotation: boolean) : DG.Tweening.Core.TweenerCore
---@overload fun(t: DG.Tweening.Core.TweenerCore, lookAhead: number, forwardDirection: System.Nullable, up: System.Nullable) : DG.Tweening.Core.TweenerCore
---@param t DG.Tweening.Core.TweenerCore
---@param lookAhead number
---@param stableZRotation boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.TweenSettingsExtensions.SetLookAt(t, lookAhead, stableZRotation) end

---@class DG.Tweening.LogBehaviour
---@field Default DG.Tweening.LogBehaviour
---@field Verbose DG.Tweening.LogBehaviour
---@field ErrorsOnly DG.Tweening.LogBehaviour
DG.Tweening.LogBehaviour = {}
---@alias CS.DG.Tweening.LogBehaviour DG.Tweening.LogBehaviour
CS.DG.Tweening.LogBehaviour = DG.Tweening.LogBehaviour


---@class DG.Tweening.Tween : DG.Tweening.Core.ABSSequentiable
---@field timeScale number
---@field isBackwards boolean
---@field id System.Object
---@field stringId string
---@field intId number
---@field target System.Object
---@field onPlay DG.Tweening.TweenCallback
---@field onPause DG.Tweening.TweenCallback
---@field onRewind DG.Tweening.TweenCallback
---@field onUpdate DG.Tweening.TweenCallback
---@field onStepComplete DG.Tweening.TweenCallback
---@field onComplete DG.Tweening.TweenCallback
---@field onKill DG.Tweening.TweenCallback
---@field onWaypointChange DG.Tweening.TweenCallback
---@field easeOvershootOrAmplitude number
---@field easePeriod number
---@field debugTargetId string
---@field isRelative boolean
---@field active boolean
---@field fullPosition number
---@field hasLoops boolean
---@field playedOnce boolean
---@field position number
DG.Tweening.Tween = {}
---@alias CS.DG.Tweening.Tween DG.Tweening.Tween
CS.DG.Tweening.Tween = DG.Tweening.Tween

---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.Tween:WaitForCompletion(returnCustomYieldInstruction) end
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.Tween:WaitForRewind(returnCustomYieldInstruction) end
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.Tween:WaitForKill(returnCustomYieldInstruction) end
---@param elapsedLoops number
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.Tween:WaitForElapsedLoops(elapsedLoops, returnCustomYieldInstruction) end
---@param position number
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.Tween:WaitForPosition(position, returnCustomYieldInstruction) end
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.Tween:WaitForStart(returnCustomYieldInstruction) end
---@return System.Threading.Tasks.Task
function DG.Tweening.Tween:AsyncWaitForCompletion() end
---@return System.Threading.Tasks.Task
function DG.Tweening.Tween:AsyncWaitForRewind() end
---@return System.Threading.Tasks.Task
function DG.Tweening.Tween:AsyncWaitForKill() end
---@param elapsedLoops number
---@return System.Threading.Tasks.Task
function DG.Tweening.Tween:AsyncWaitForElapsedLoops(elapsedLoops) end
---@param position number
---@return System.Threading.Tasks.Task
function DG.Tweening.Tween:AsyncWaitForPosition(position) end
---@return System.Threading.Tasks.Task
function DG.Tweening.Tween:AsyncWaitForStart() end
function DG.Tweening.Tween:Complete() end
---@param withCallbacks boolean
function DG.Tweening.Tween:Complete(withCallbacks) end
function DG.Tweening.Tween:Flip() end
function DG.Tweening.Tween:ForceInit() end
---@param to number
---@param andPlay boolean
function DG.Tweening.Tween:Goto(to, andPlay) end
---@param to number
---@param andPlay boolean
function DG.Tweening.Tween:GotoWithCallbacks(to, andPlay) end
---@param complete boolean
function DG.Tweening.Tween:Kill(complete) end
---@param deltaTime number
---@param unscaledDeltaTime number
function DG.Tweening.Tween:ManualUpdate(deltaTime, unscaledDeltaTime) end
function DG.Tweening.Tween:PlayBackwards() end
function DG.Tweening.Tween:PlayForward() end
---@param includeDelay boolean
---@param changeDelayTo number
function DG.Tweening.Tween:Restart(includeDelay, changeDelayTo) end
---@param includeDelay boolean
function DG.Tweening.Tween:Rewind(includeDelay) end
function DG.Tweening.Tween:SmoothRewind() end
function DG.Tweening.Tween:TogglePause() end
---@param waypointIndex number
---@param andPlay boolean
function DG.Tweening.Tween:GotoWaypoint(waypointIndex, andPlay) end
---@return UnityEngine.YieldInstruction
function DG.Tweening.Tween:WaitForCompletion() end
---@return UnityEngine.YieldInstruction
function DG.Tweening.Tween:WaitForRewind() end
---@return UnityEngine.YieldInstruction
function DG.Tweening.Tween:WaitForKill() end
---@param elapsedLoops number
---@return UnityEngine.YieldInstruction
function DG.Tweening.Tween:WaitForElapsedLoops(elapsedLoops) end
---@param position number
---@return UnityEngine.YieldInstruction
function DG.Tweening.Tween:WaitForPosition(position) end
---@return UnityEngine.Coroutine
function DG.Tweening.Tween:WaitForStart() end
---@return number
function DG.Tweening.Tween:CompletedLoops() end
---@return number
function DG.Tweening.Tween:Delay() end
---@return number
function DG.Tweening.Tween:ElapsedDelay() end
---@param includeLoops boolean
---@return number
function DG.Tweening.Tween:Duration(includeLoops) end
---@param includeLoops boolean
---@return number
function DG.Tweening.Tween:Elapsed(includeLoops) end
---@param includeLoops boolean
---@return number
function DG.Tweening.Tween:ElapsedPercentage(includeLoops) end
---@return number
function DG.Tweening.Tween:ElapsedDirectionalPercentage() end
---@return boolean
function DG.Tweening.Tween:IsActive() end
---@return boolean
function DG.Tweening.Tween:IsBackwards() end
---@return boolean
function DG.Tweening.Tween:IsLoopingOrExecutingBackwards() end
---@return boolean
function DG.Tweening.Tween:IsComplete() end
---@return boolean
function DG.Tweening.Tween:IsTimeScaleIndependent() end
---@return boolean
function DG.Tweening.Tween:IsInitialized() end
---@return boolean
function DG.Tweening.Tween:IsPlaying() end
---@return number
function DG.Tweening.Tween:Loops() end
---@param pathPercentage number
---@return UnityEngine.Vector3
function DG.Tweening.Tween:PathGetPoint(pathPercentage) end
---@param subdivisionsXSegment number
---@return UnityEngine.Vector3[]
function DG.Tweening.Tween:PathGetDrawPoints(subdivisionsXSegment) end
---@return number
function DG.Tweening.Tween:PathLength() end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.Tween:DOTimeScale(endValue, duration) end

---@class DG.Tweening.Tweener : DG.Tweening.Tween
DG.Tweening.Tweener = {}
---@alias CS.DG.Tweening.Tweener DG.Tweening.Tweener
CS.DG.Tweening.Tweener = DG.Tweening.Tweener

---@param newStartValue System.Object
---@param newDuration number
---@return DG.Tweening.Tweener
function DG.Tweening.Tweener:ChangeStartValue(newStartValue, newDuration) end
---@overload fun(self: DG.Tweening.Tweener, newEndValue: System.Object, newDuration: number, snapStartValue: boolean) : DG.Tweening.Tweener
---@param newEndValue System.Object
---@param snapStartValue boolean
---@return DG.Tweening.Tweener
function DG.Tweening.Tweener:ChangeEndValue(newEndValue, snapStartValue) end
---@param newStartValue System.Object
---@param newEndValue System.Object
---@param newDuration number
---@return DG.Tweening.Tweener
function DG.Tweening.Tweener:ChangeValues(newStartValue, newEndValue, newDuration) end

---@class DG.Tweening.TweenType
---@field Tweener DG.Tweening.TweenType
---@field Sequence DG.Tweening.TweenType
---@field Callback DG.Tweening.TweenType
DG.Tweening.TweenType = {}
---@alias CS.DG.Tweening.TweenType DG.Tweening.TweenType
CS.DG.Tweening.TweenType = DG.Tweening.TweenType


---@class DG.Tweening.UpdateType
---@field Normal DG.Tweening.UpdateType
---@field Late DG.Tweening.UpdateType
---@field Fixed DG.Tweening.UpdateType
---@field Manual DG.Tweening.UpdateType
DG.Tweening.UpdateType = {}
---@alias CS.DG.Tweening.UpdateType DG.Tweening.UpdateType
CS.DG.Tweening.UpdateType = DG.Tweening.UpdateType


---@class DG.Tweening.Plugins.CircleOptions : System.ValueType
---@field endValueDegrees number
---@field relativeCenter boolean
---@field snapping boolean
DG.Tweening.Plugins.CircleOptions = {}
---@alias CS.DG.Tweening.Plugins.CircleOptions DG.Tweening.Plugins.CircleOptions
CS.DG.Tweening.Plugins.CircleOptions = DG.Tweening.Plugins.CircleOptions

function DG.Tweening.Plugins.CircleOptions:Reset() end
---@param startValue UnityEngine.Vector2
---@param endValue UnityEngine.Vector2
function DG.Tweening.Plugins.CircleOptions:Initialize(startValue, endValue) end

---@class DG.Tweening.Plugins.CirclePlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.CirclePlugin = {}
---@alias CS.DG.Tweening.Plugins.CirclePlugin DG.Tweening.Plugins.CirclePlugin
CS.DG.Tweening.Plugins.CirclePlugin = DG.Tweening.Plugins.CirclePlugin

---@return DG.Tweening.Plugins.CirclePlugin
function DG.Tweening.Plugins.CirclePlugin.New() end
---@return DG.Tweening.Plugins.Core.ABSTweenPlugin
function DG.Tweening.Plugins.CirclePlugin.Get() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.CirclePlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.CirclePlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Vector2
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.CirclePlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Vector2
---@return UnityEngine.Vector2
function DG.Tweening.Plugins.CirclePlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.CirclePlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.CirclePlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.CircleOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Vector2
---@return number
function DG.Tweening.Plugins.CirclePlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.CircleOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Vector2
---@param changeValue UnityEngine.Vector2
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.CirclePlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end
---@param options DG.Tweening.Plugins.CircleOptions
---@param degrees number
---@return UnityEngine.Vector2
function DG.Tweening.Plugins.CirclePlugin:GetPositionOnCircle(options, degrees) end

---@class DG.Tweening.Plugins.Color2Plugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.Color2Plugin = {}
---@alias CS.DG.Tweening.Plugins.Color2Plugin DG.Tweening.Plugins.Color2Plugin
CS.DG.Tweening.Plugins.Color2Plugin = DG.Tweening.Plugins.Color2Plugin

---@return DG.Tweening.Plugins.Color2Plugin
function DG.Tweening.Plugins.Color2Plugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Color2Plugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.Color2Plugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue DG.Tweening.Color2
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.Color2Plugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value DG.Tweening.Color2
---@return DG.Tweening.Color2
function DG.Tweening.Plugins.Color2Plugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Color2Plugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Color2Plugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.ColorOptions
---@param unitsXSecond number
---@param changeValue DG.Tweening.Color2
---@return number
function DG.Tweening.Plugins.Color2Plugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.ColorOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue DG.Tweening.Color2
---@param changeValue DG.Tweening.Color2
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.Color2Plugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.DoublePlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.DoublePlugin = {}
---@alias CS.DG.Tweening.Plugins.DoublePlugin DG.Tweening.Plugins.DoublePlugin
CS.DG.Tweening.Plugins.DoublePlugin = DG.Tweening.Plugins.DoublePlugin

---@return DG.Tweening.Plugins.DoublePlugin
function DG.Tweening.Plugins.DoublePlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.DoublePlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.DoublePlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue number
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.DoublePlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value number
---@return number
function DG.Tweening.Plugins.DoublePlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.DoublePlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.DoublePlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param unitsXSecond number
---@param changeValue number
---@return number
function DG.Tweening.Plugins.DoublePlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue number
---@param changeValue number
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.DoublePlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.LongPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.LongPlugin = {}
---@alias CS.DG.Tweening.Plugins.LongPlugin DG.Tweening.Plugins.LongPlugin
CS.DG.Tweening.Plugins.LongPlugin = DG.Tweening.Plugins.LongPlugin

---@return DG.Tweening.Plugins.LongPlugin
function DG.Tweening.Plugins.LongPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.LongPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.LongPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue number
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.LongPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value number
---@return number
function DG.Tweening.Plugins.LongPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.LongPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.LongPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param unitsXSecond number
---@param changeValue number
---@return number
function DG.Tweening.Plugins.LongPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue number
---@param changeValue number
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.LongPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.UlongPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.UlongPlugin = {}
---@alias CS.DG.Tweening.Plugins.UlongPlugin DG.Tweening.Plugins.UlongPlugin
CS.DG.Tweening.Plugins.UlongPlugin = DG.Tweening.Plugins.UlongPlugin

---@return DG.Tweening.Plugins.UlongPlugin
function DG.Tweening.Plugins.UlongPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.UlongPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.UlongPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue number
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.UlongPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value number
---@return number
function DG.Tweening.Plugins.UlongPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.UlongPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.UlongPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param unitsXSecond number
---@param changeValue number
---@return number
function DG.Tweening.Plugins.UlongPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue number
---@param changeValue number
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.UlongPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.Vector3ArrayPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.Vector3ArrayPlugin = {}
---@alias CS.DG.Tweening.Plugins.Vector3ArrayPlugin DG.Tweening.Plugins.Vector3ArrayPlugin
CS.DG.Tweening.Plugins.Vector3ArrayPlugin = DG.Tweening.Plugins.Vector3ArrayPlugin

---@return DG.Tweening.Plugins.Vector3ArrayPlugin
function DG.Tweening.Plugins.Vector3ArrayPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector3ArrayPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.Vector3ArrayPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Vector3[]
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.Vector3ArrayPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Vector3
---@return UnityEngine.Vector3[]
function DG.Tweening.Plugins.Vector3ArrayPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector3ArrayPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector3ArrayPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.Vector3ArrayOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Vector3[]
---@return number
function DG.Tweening.Plugins.Vector3ArrayPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.Vector3ArrayOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Vector3[]
---@param changeValue UnityEngine.Vector3[]
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.Vector3ArrayPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.PathPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
---@field MinLookAhead number
DG.Tweening.Plugins.PathPlugin = {}
---@alias CS.DG.Tweening.Plugins.PathPlugin DG.Tweening.Plugins.PathPlugin
CS.DG.Tweening.Plugins.PathPlugin = DG.Tweening.Plugins.PathPlugin

---@return DG.Tweening.Plugins.PathPlugin
function DG.Tweening.Plugins.PathPlugin.New() end
---@return DG.Tweening.Plugins.Core.ABSTweenPlugin
function DG.Tweening.Plugins.PathPlugin.Get() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.PathPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.PathPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue DG.Tweening.Plugins.Core.PathCore.Path
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.PathPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Vector3
---@return DG.Tweening.Plugins.Core.PathCore.Path
function DG.Tweening.Plugins.PathPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.PathPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.PathPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.PathOptions
---@param unitsXSecond number
---@param changeValue DG.Tweening.Plugins.Core.PathCore.Path
---@return number
function DG.Tweening.Plugins.PathPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.PathOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue DG.Tweening.Plugins.Core.PathCore.Path
---@param changeValue DG.Tweening.Plugins.Core.PathCore.Path
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.PathPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end
---@param options DG.Tweening.Plugins.Options.PathOptions
---@param t DG.Tweening.Tween
---@param path DG.Tweening.Plugins.Core.PathCore.Path
---@param pathPerc number
---@param tPos UnityEngine.Vector3
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.PathPlugin:SetOrientation(options, t, path, pathPerc, tPos, updateNotice) end

---@class DG.Tweening.Plugins.ColorPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.ColorPlugin = {}
---@alias CS.DG.Tweening.Plugins.ColorPlugin DG.Tweening.Plugins.ColorPlugin
CS.DG.Tweening.Plugins.ColorPlugin = DG.Tweening.Plugins.ColorPlugin

---@return DG.Tweening.Plugins.ColorPlugin
function DG.Tweening.Plugins.ColorPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.ColorPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.ColorPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Color
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.ColorPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Color
---@return UnityEngine.Color
function DG.Tweening.Plugins.ColorPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.ColorPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.ColorPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.ColorOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Color
---@return number
function DG.Tweening.Plugins.ColorPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.ColorOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Color
---@param changeValue UnityEngine.Color
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.ColorPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.IntPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.IntPlugin = {}
---@alias CS.DG.Tweening.Plugins.IntPlugin DG.Tweening.Plugins.IntPlugin
CS.DG.Tweening.Plugins.IntPlugin = DG.Tweening.Plugins.IntPlugin

---@return DG.Tweening.Plugins.IntPlugin
function DG.Tweening.Plugins.IntPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.IntPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.IntPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue number
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.IntPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value number
---@return number
function DG.Tweening.Plugins.IntPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.IntPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.IntPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param unitsXSecond number
---@param changeValue number
---@return number
function DG.Tweening.Plugins.IntPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue number
---@param changeValue number
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.IntPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.QuaternionPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.QuaternionPlugin = {}
---@alias CS.DG.Tweening.Plugins.QuaternionPlugin DG.Tweening.Plugins.QuaternionPlugin
CS.DG.Tweening.Plugins.QuaternionPlugin = DG.Tweening.Plugins.QuaternionPlugin

---@return DG.Tweening.Plugins.QuaternionPlugin
function DG.Tweening.Plugins.QuaternionPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.QuaternionPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.QuaternionPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Vector3
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.QuaternionPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Quaternion
---@return UnityEngine.Vector3
function DG.Tweening.Plugins.QuaternionPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.QuaternionPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.QuaternionPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.QuaternionOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Vector3
---@return number
function DG.Tweening.Plugins.QuaternionPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.QuaternionOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Vector3
---@param changeValue UnityEngine.Vector3
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.QuaternionPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.RectOffsetPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.RectOffsetPlugin = {}
---@alias CS.DG.Tweening.Plugins.RectOffsetPlugin DG.Tweening.Plugins.RectOffsetPlugin
CS.DG.Tweening.Plugins.RectOffsetPlugin = DG.Tweening.Plugins.RectOffsetPlugin

---@return DG.Tweening.Plugins.RectOffsetPlugin
function DG.Tweening.Plugins.RectOffsetPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.RectOffsetPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.RectOffsetPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.RectOffset
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.RectOffsetPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.RectOffset
---@return UnityEngine.RectOffset
function DG.Tweening.Plugins.RectOffsetPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.RectOffsetPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.RectOffsetPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.RectOffset
---@return number
function DG.Tweening.Plugins.RectOffsetPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.RectOffset
---@param changeValue UnityEngine.RectOffset
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.RectOffsetPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.RectPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.RectPlugin = {}
---@alias CS.DG.Tweening.Plugins.RectPlugin DG.Tweening.Plugins.RectPlugin
CS.DG.Tweening.Plugins.RectPlugin = DG.Tweening.Plugins.RectPlugin

---@return DG.Tweening.Plugins.RectPlugin
function DG.Tweening.Plugins.RectPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.RectPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.RectPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Rect
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.RectPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Rect
---@return UnityEngine.Rect
function DG.Tweening.Plugins.RectPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.RectPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.RectPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.RectOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Rect
---@return number
function DG.Tweening.Plugins.RectPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.RectOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Rect
---@param changeValue UnityEngine.Rect
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.RectPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.UintPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.UintPlugin = {}
---@alias CS.DG.Tweening.Plugins.UintPlugin DG.Tweening.Plugins.UintPlugin
CS.DG.Tweening.Plugins.UintPlugin = DG.Tweening.Plugins.UintPlugin

---@return DG.Tweening.Plugins.UintPlugin
function DG.Tweening.Plugins.UintPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.UintPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.UintPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue number
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.UintPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value number
---@return number
function DG.Tweening.Plugins.UintPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.UintPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.UintPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.UintOptions
---@param unitsXSecond number
---@param changeValue number
---@return number
function DG.Tweening.Plugins.UintPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.UintOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue number
---@param changeValue number
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.UintPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.Vector2Plugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.Vector2Plugin = {}
---@alias CS.DG.Tweening.Plugins.Vector2Plugin DG.Tweening.Plugins.Vector2Plugin
CS.DG.Tweening.Plugins.Vector2Plugin = DG.Tweening.Plugins.Vector2Plugin

---@return DG.Tweening.Plugins.Vector2Plugin
function DG.Tweening.Plugins.Vector2Plugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector2Plugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.Vector2Plugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Vector2
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.Vector2Plugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Vector2
---@return UnityEngine.Vector2
function DG.Tweening.Plugins.Vector2Plugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector2Plugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector2Plugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.VectorOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Vector2
---@return number
function DG.Tweening.Plugins.Vector2Plugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.VectorOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Vector2
---@param changeValue UnityEngine.Vector2
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.Vector2Plugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.Vector4Plugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.Vector4Plugin = {}
---@alias CS.DG.Tweening.Plugins.Vector4Plugin DG.Tweening.Plugins.Vector4Plugin
CS.DG.Tweening.Plugins.Vector4Plugin = DG.Tweening.Plugins.Vector4Plugin

---@return DG.Tweening.Plugins.Vector4Plugin
function DG.Tweening.Plugins.Vector4Plugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector4Plugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.Vector4Plugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Vector4
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.Vector4Plugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Vector4
---@return UnityEngine.Vector4
function DG.Tweening.Plugins.Vector4Plugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector4Plugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector4Plugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.VectorOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Vector4
---@return number
function DG.Tweening.Plugins.Vector4Plugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.VectorOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Vector4
---@param changeValue UnityEngine.Vector4
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.Vector4Plugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.StringPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.StringPlugin = {}
---@alias CS.DG.Tweening.Plugins.StringPlugin DG.Tweening.Plugins.StringPlugin
CS.DG.Tweening.Plugins.StringPlugin = DG.Tweening.Plugins.StringPlugin

---@return DG.Tweening.Plugins.StringPlugin
function DG.Tweening.Plugins.StringPlugin.New() end
---@overload fun(self: DG.Tweening.Plugins.StringPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue string
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.StringPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.StringPlugin:Reset(t) end
---@param t DG.Tweening.Core.TweenerCore
---@param value string
---@return string
function DG.Tweening.Plugins.StringPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.StringPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.StringPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.StringOptions
---@param unitsXSecond number
---@param changeValue string
---@return number
function DG.Tweening.Plugins.StringPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.StringOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue string
---@param changeValue string
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.StringPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.StringPluginExtensions : System.Object
---@field ScrambledCharsAll System.Char[]
---@field ScrambledCharsUppercase System.Char[]
---@field ScrambledCharsLowercase System.Char[]
---@field ScrambledCharsNumerals System.Char[]
DG.Tweening.Plugins.StringPluginExtensions = {}
---@alias CS.DG.Tweening.Plugins.StringPluginExtensions DG.Tweening.Plugins.StringPluginExtensions
CS.DG.Tweening.Plugins.StringPluginExtensions = DG.Tweening.Plugins.StringPluginExtensions


---@class DG.Tweening.Plugins.FloatPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.FloatPlugin = {}
---@alias CS.DG.Tweening.Plugins.FloatPlugin DG.Tweening.Plugins.FloatPlugin
CS.DG.Tweening.Plugins.FloatPlugin = DG.Tweening.Plugins.FloatPlugin

---@return DG.Tweening.Plugins.FloatPlugin
function DG.Tweening.Plugins.FloatPlugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.FloatPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.FloatPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue number
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.FloatPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value number
---@return number
function DG.Tweening.Plugins.FloatPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.FloatPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.FloatPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.FloatOptions
---@param unitsXSecond number
---@param changeValue number
---@return number
function DG.Tweening.Plugins.FloatPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.FloatOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue number
---@param changeValue number
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.FloatPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.Vector3Plugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.Plugins.Vector3Plugin = {}
---@alias CS.DG.Tweening.Plugins.Vector3Plugin DG.Tweening.Plugins.Vector3Plugin
CS.DG.Tweening.Plugins.Vector3Plugin = DG.Tweening.Plugins.Vector3Plugin

---@return DG.Tweening.Plugins.Vector3Plugin
function DG.Tweening.Plugins.Vector3Plugin.New() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector3Plugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.Vector3Plugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Vector3
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.Vector3Plugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Vector3
---@return UnityEngine.Vector3
function DG.Tweening.Plugins.Vector3Plugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector3Plugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.Plugins.Vector3Plugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.VectorOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Vector3
---@return number
function DG.Tweening.Plugins.Vector3Plugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.VectorOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Vector3
---@param changeValue UnityEngine.Vector3
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.Vector3Plugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.Options.IPlugOptions
DG.Tweening.Plugins.Options.IPlugOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.IPlugOptions DG.Tweening.Plugins.Options.IPlugOptions
CS.DG.Tweening.Plugins.Options.IPlugOptions = DG.Tweening.Plugins.Options.IPlugOptions

function DG.Tweening.Plugins.Options.IPlugOptions:Reset() end

---@class DG.Tweening.Plugins.Options.OrientType
---@field None DG.Tweening.Plugins.Options.OrientType
---@field ToPath DG.Tweening.Plugins.Options.OrientType
---@field LookAtTransform DG.Tweening.Plugins.Options.OrientType
---@field LookAtPosition DG.Tweening.Plugins.Options.OrientType
DG.Tweening.Plugins.Options.OrientType = {}
---@alias CS.DG.Tweening.Plugins.Options.OrientType DG.Tweening.Plugins.Options.OrientType
CS.DG.Tweening.Plugins.Options.OrientType = DG.Tweening.Plugins.Options.OrientType


---@class DG.Tweening.Plugins.Options.PathOptions : System.ValueType
---@field mode DG.Tweening.PathMode
---@field orientType DG.Tweening.Plugins.Options.OrientType
---@field lockPositionAxis DG.Tweening.AxisConstraint
---@field lockRotationAxis DG.Tweening.AxisConstraint
---@field isClosedPath boolean
---@field lookAtPosition UnityEngine.Vector3
---@field lookAtTransform UnityEngine.Transform
---@field lookAhead number
---@field hasCustomForwardDirection boolean
---@field forward UnityEngine.Quaternion
---@field useLocalPosition boolean
---@field parent UnityEngine.Transform
---@field isRigidbody boolean
---@field isRigidbody2D boolean
---@field stableZRotation boolean
DG.Tweening.Plugins.Options.PathOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.PathOptions DG.Tweening.Plugins.Options.PathOptions
CS.DG.Tweening.Plugins.Options.PathOptions = DG.Tweening.Plugins.Options.PathOptions

function DG.Tweening.Plugins.Options.PathOptions:Reset() end

---@class DG.Tweening.Plugins.Options.QuaternionOptions : System.ValueType
---@field rotateMode DG.Tweening.RotateMode
---@field axisConstraint DG.Tweening.AxisConstraint
---@field up UnityEngine.Vector3
---@field dynamicLookAt boolean
---@field dynamicLookAtWorldPosition UnityEngine.Vector3
DG.Tweening.Plugins.Options.QuaternionOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.QuaternionOptions DG.Tweening.Plugins.Options.QuaternionOptions
CS.DG.Tweening.Plugins.Options.QuaternionOptions = DG.Tweening.Plugins.Options.QuaternionOptions

function DG.Tweening.Plugins.Options.QuaternionOptions:Reset() end

---@class DG.Tweening.Plugins.Options.UintOptions : System.ValueType
---@field isNegativeChangeValue boolean
DG.Tweening.Plugins.Options.UintOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.UintOptions DG.Tweening.Plugins.Options.UintOptions
CS.DG.Tweening.Plugins.Options.UintOptions = DG.Tweening.Plugins.Options.UintOptions

function DG.Tweening.Plugins.Options.UintOptions:Reset() end

---@class DG.Tweening.Plugins.Options.Vector3ArrayOptions : System.ValueType
---@field axisConstraint DG.Tweening.AxisConstraint
---@field snapping boolean
DG.Tweening.Plugins.Options.Vector3ArrayOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.Vector3ArrayOptions DG.Tweening.Plugins.Options.Vector3ArrayOptions
CS.DG.Tweening.Plugins.Options.Vector3ArrayOptions = DG.Tweening.Plugins.Options.Vector3ArrayOptions

function DG.Tweening.Plugins.Options.Vector3ArrayOptions:Reset() end

---@class DG.Tweening.Plugins.Options.NoOptions : System.ValueType
DG.Tweening.Plugins.Options.NoOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.NoOptions DG.Tweening.Plugins.Options.NoOptions
CS.DG.Tweening.Plugins.Options.NoOptions = DG.Tweening.Plugins.Options.NoOptions

function DG.Tweening.Plugins.Options.NoOptions:Reset() end

---@class DG.Tweening.Plugins.Options.ColorOptions : System.ValueType
---@field alphaOnly boolean
DG.Tweening.Plugins.Options.ColorOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.ColorOptions DG.Tweening.Plugins.Options.ColorOptions
CS.DG.Tweening.Plugins.Options.ColorOptions = DG.Tweening.Plugins.Options.ColorOptions

function DG.Tweening.Plugins.Options.ColorOptions:Reset() end

---@class DG.Tweening.Plugins.Options.FloatOptions : System.ValueType
---@field snapping boolean
DG.Tweening.Plugins.Options.FloatOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.FloatOptions DG.Tweening.Plugins.Options.FloatOptions
CS.DG.Tweening.Plugins.Options.FloatOptions = DG.Tweening.Plugins.Options.FloatOptions

function DG.Tweening.Plugins.Options.FloatOptions:Reset() end

---@class DG.Tweening.Plugins.Options.RectOptions : System.ValueType
---@field snapping boolean
DG.Tweening.Plugins.Options.RectOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.RectOptions DG.Tweening.Plugins.Options.RectOptions
CS.DG.Tweening.Plugins.Options.RectOptions = DG.Tweening.Plugins.Options.RectOptions

function DG.Tweening.Plugins.Options.RectOptions:Reset() end

---@class DG.Tweening.Plugins.Options.StringOptions : System.ValueType
---@field richTextEnabled boolean
---@field scrambleMode DG.Tweening.ScrambleMode
---@field scrambledChars System.Char[]
DG.Tweening.Plugins.Options.StringOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.StringOptions DG.Tweening.Plugins.Options.StringOptions
CS.DG.Tweening.Plugins.Options.StringOptions = DG.Tweening.Plugins.Options.StringOptions

function DG.Tweening.Plugins.Options.StringOptions:Reset() end

---@class DG.Tweening.Plugins.Options.VectorOptions : System.ValueType
---@field axisConstraint DG.Tweening.AxisConstraint
---@field snapping boolean
DG.Tweening.Plugins.Options.VectorOptions = {}
---@alias CS.DG.Tweening.Plugins.Options.VectorOptions DG.Tweening.Plugins.Options.VectorOptions
CS.DG.Tweening.Plugins.Options.VectorOptions = DG.Tweening.Plugins.Options.VectorOptions

function DG.Tweening.Plugins.Options.VectorOptions:Reset() end

---@class DG.Tweening.Plugins.Core.ITPlugin
DG.Tweening.Plugins.Core.ITPlugin = {}
---@alias CS.DG.Tweening.Plugins.Core.ITPlugin DG.Tweening.Plugins.Core.ITPlugin
CS.DG.Tweening.Plugins.Core.ITPlugin = DG.Tweening.Plugins.Core.ITPlugin


---@class DG.Tweening.Plugins.Core.SpecialPluginsUtils : System.Object
DG.Tweening.Plugins.Core.SpecialPluginsUtils = {}
---@alias CS.DG.Tweening.Plugins.Core.SpecialPluginsUtils DG.Tweening.Plugins.Core.SpecialPluginsUtils
CS.DG.Tweening.Plugins.Core.SpecialPluginsUtils = DG.Tweening.Plugins.Core.SpecialPluginsUtils


---@class DG.Tweening.Plugins.Core.IPlugSetter
DG.Tweening.Plugins.Core.IPlugSetter = {}
---@alias CS.DG.Tweening.Plugins.Core.IPlugSetter DG.Tweening.Plugins.Core.IPlugSetter
CS.DG.Tweening.Plugins.Core.IPlugSetter = DG.Tweening.Plugins.Core.IPlugSetter

---@return DG.Tweening.Core.DOGetter[T1]
function DG.Tweening.Plugins.Core.IPlugSetter:Getter() end
---@return DG.Tweening.Core.DOSetter[T1]
function DG.Tweening.Plugins.Core.IPlugSetter:Setter() end
---@return T2
function DG.Tweening.Plugins.Core.IPlugSetter:EndValue() end
---@return TPlugOptions
function DG.Tweening.Plugins.Core.IPlugSetter:GetOptions() end

---@class DG.Tweening.Plugins.Core.ITweenPlugin
DG.Tweening.Plugins.Core.ITweenPlugin = {}
---@alias CS.DG.Tweening.Plugins.Core.ITweenPlugin DG.Tweening.Plugins.Core.ITweenPlugin
CS.DG.Tweening.Plugins.Core.ITweenPlugin = DG.Tweening.Plugins.Core.ITweenPlugin


---@class DG.Tweening.Plugins.Core.ABSTweenPlugin : System.Object
DG.Tweening.Plugins.Core.ABSTweenPlugin = {}
---@alias CS.DG.Tweening.Plugins.Core.ABSTweenPlugin DG.Tweening.Plugins.Core.ABSTweenPlugin
CS.DG.Tweening.Plugins.Core.ABSTweenPlugin = DG.Tweening.Plugins.Core.ABSTweenPlugin

---@param t DG.Tweening.Core.TweenerCore[T1,T2,TPlugOptions]
function DG.Tweening.Plugins.Core.ABSTweenPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.Plugins.Core.ABSTweenPlugin, t: DG.Tweening.Core.TweenerCore[T1,T2,TPlugOptions], isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore[T1,T2,TPlugOptions]
---@param fromValue T2
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.Plugins.Core.ABSTweenPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore[T1,T2,TPlugOptions]
---@param value T1
---@return T2
function DG.Tweening.Plugins.Core.ABSTweenPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore[T1,T2,TPlugOptions]
function DG.Tweening.Plugins.Core.ABSTweenPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore[T1,T2,TPlugOptions]
function DG.Tweening.Plugins.Core.ABSTweenPlugin:SetChangeValue(t) end
---@param options TPlugOptions
---@param unitsXSecond number
---@param changeValue T2
---@return number
function DG.Tweening.Plugins.Core.ABSTweenPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options TPlugOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter[T1]
---@param setter DG.Tweening.Core.DOSetter[T1]
---@param elapsed number
---@param startValue T2
---@param changeValue T2
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.Plugins.Core.ABSTweenPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Plugins.Core.PluginsManager : System.Object
DG.Tweening.Plugins.Core.PluginsManager = {}
---@alias CS.DG.Tweening.Plugins.Core.PluginsManager DG.Tweening.Plugins.Core.PluginsManager
CS.DG.Tweening.Plugins.Core.PluginsManager = DG.Tweening.Plugins.Core.PluginsManager


---@class DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder : DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder
DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder = {}
---@alias CS.DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder
CS.DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder = DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder

---@return DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder
function DG.Tweening.Plugins.Core.PathCore.CubicBezierDecoder.New() end

---@class DG.Tweening.Plugins.Core.PathCore.ControlPoint : System.ValueType
---@field a UnityEngine.Vector3
---@field b UnityEngine.Vector3
DG.Tweening.Plugins.Core.PathCore.ControlPoint = {}
---@alias CS.DG.Tweening.Plugins.Core.PathCore.ControlPoint DG.Tweening.Plugins.Core.PathCore.ControlPoint
CS.DG.Tweening.Plugins.Core.PathCore.ControlPoint = DG.Tweening.Plugins.Core.PathCore.ControlPoint

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return DG.Tweening.Plugins.Core.PathCore.ControlPoint
function DG.Tweening.Plugins.Core.PathCore.ControlPoint.New(a, b) end
---@return string
function DG.Tweening.Plugins.Core.PathCore.ControlPoint:ToString() end

---@class DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder : System.Object
DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder = {}
---@alias CS.DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder
CS.DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder = DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder


---@class DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder : DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder
DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder = {}
---@alias CS.DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder
CS.DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder = DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder

---@return DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder
function DG.Tweening.Plugins.Core.PathCore.CatmullRomDecoder.New() end

---@class DG.Tweening.Plugins.Core.PathCore.LinearDecoder : DG.Tweening.Plugins.Core.PathCore.ABSPathDecoder
DG.Tweening.Plugins.Core.PathCore.LinearDecoder = {}
---@alias CS.DG.Tweening.Plugins.Core.PathCore.LinearDecoder DG.Tweening.Plugins.Core.PathCore.LinearDecoder
CS.DG.Tweening.Plugins.Core.PathCore.LinearDecoder = DG.Tweening.Plugins.Core.PathCore.LinearDecoder

---@return DG.Tweening.Plugins.Core.PathCore.LinearDecoder
function DG.Tweening.Plugins.Core.PathCore.LinearDecoder.New() end

---@class DG.Tweening.Plugins.Core.PathCore.Path : System.Object
---@field wpLengths System.Single[]
---@field wps UnityEngine.Vector3[]
DG.Tweening.Plugins.Core.PathCore.Path = {}
---@alias CS.DG.Tweening.Plugins.Core.PathCore.Path DG.Tweening.Plugins.Core.PathCore.Path
CS.DG.Tweening.Plugins.Core.PathCore.Path = DG.Tweening.Plugins.Core.PathCore.Path

---@param type DG.Tweening.PathType
---@param waypoints UnityEngine.Vector3[]
---@param subdivisionsXSegment number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Plugins.Core.PathCore.Path
function DG.Tweening.Plugins.Core.PathCore.Path.New(type, waypoints, subdivisionsXSegment, gizmoColor) end

---@class DG.Tweening.CustomPlugins.PureQuaternionPlugin : DG.Tweening.Plugins.Core.ABSTweenPlugin
DG.Tweening.CustomPlugins.PureQuaternionPlugin = {}
---@alias CS.DG.Tweening.CustomPlugins.PureQuaternionPlugin DG.Tweening.CustomPlugins.PureQuaternionPlugin
CS.DG.Tweening.CustomPlugins.PureQuaternionPlugin = DG.Tweening.CustomPlugins.PureQuaternionPlugin

---@return DG.Tweening.CustomPlugins.PureQuaternionPlugin
function DG.Tweening.CustomPlugins.PureQuaternionPlugin.New() end
---@return DG.Tweening.CustomPlugins.PureQuaternionPlugin
function DG.Tweening.CustomPlugins.PureQuaternionPlugin.Plug() end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.CustomPlugins.PureQuaternionPlugin:Reset(t) end
---@overload fun(self: DG.Tweening.CustomPlugins.PureQuaternionPlugin, t: DG.Tweening.Core.TweenerCore, isRelative: boolean)
---@param t DG.Tweening.Core.TweenerCore
---@param fromValue UnityEngine.Quaternion
---@param setImmediately boolean
---@param isRelative boolean
function DG.Tweening.CustomPlugins.PureQuaternionPlugin:SetFrom(t, fromValue, setImmediately, isRelative) end
---@param t DG.Tweening.Core.TweenerCore
---@param value UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function DG.Tweening.CustomPlugins.PureQuaternionPlugin:ConvertToStartValue(t, value) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.CustomPlugins.PureQuaternionPlugin:SetRelativeEndValue(t) end
---@param t DG.Tweening.Core.TweenerCore
function DG.Tweening.CustomPlugins.PureQuaternionPlugin:SetChangeValue(t) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param unitsXSecond number
---@param changeValue UnityEngine.Quaternion
---@return number
function DG.Tweening.CustomPlugins.PureQuaternionPlugin:GetSpeedBasedDuration(options, unitsXSecond, changeValue) end
---@param options DG.Tweening.Plugins.Options.NoOptions
---@param t DG.Tweening.Tween
---@param isRelative boolean
---@param getter DG.Tweening.Core.DOGetter
---@param setter DG.Tweening.Core.DOSetter
---@param elapsed number
---@param startValue UnityEngine.Quaternion
---@param changeValue UnityEngine.Quaternion
---@param duration number
---@param usingInversePosition boolean
---@param newCompletedSteps number
---@param updateNotice DG.Tweening.Core.Enums.UpdateNotice
function DG.Tweening.CustomPlugins.PureQuaternionPlugin:EvaluateAndApply(options, t, isRelative, getter, setter, elapsed, startValue, changeValue, duration, usingInversePosition, newCompletedSteps, updateNotice) end

---@class DG.Tweening.Core.ABSSequentiable : System.Object
DG.Tweening.Core.ABSSequentiable = {}
---@alias CS.DG.Tweening.Core.ABSSequentiable DG.Tweening.Core.ABSSequentiable
CS.DG.Tweening.Core.ABSSequentiable = DG.Tweening.Core.ABSSequentiable


---@class DG.Tweening.Core.DOGetter : System.MulticastDelegate
DG.Tweening.Core.DOGetter = {}
---@alias CS.DG.Tweening.Core.DOGetter DG.Tweening.Core.DOGetter
CS.DG.Tweening.Core.DOGetter = DG.Tweening.Core.DOGetter

---@param object System.Object
---@param method System.IntPtr
---@return DG.Tweening.Core.DOGetter
function DG.Tweening.Core.DOGetter.New(object, method) end
---@return T
function DG.Tweening.Core.DOGetter:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function DG.Tweening.Core.DOGetter:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return T
function DG.Tweening.Core.DOGetter:EndInvoke(result) end

---@class DG.Tweening.Core.DOSetter : System.MulticastDelegate
DG.Tweening.Core.DOSetter = {}
---@alias CS.DG.Tweening.Core.DOSetter DG.Tweening.Core.DOSetter
CS.DG.Tweening.Core.DOSetter = DG.Tweening.Core.DOSetter

---@param object System.Object
---@param method System.IntPtr
---@return DG.Tweening.Core.DOSetter
function DG.Tweening.Core.DOSetter.New(object, method) end
---@param pNewValue T
function DG.Tweening.Core.DOSetter:Invoke(pNewValue) end
---@param pNewValue T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function DG.Tweening.Core.DOSetter:BeginInvoke(pNewValue, callback, object) end
---@param result System.IAsyncResult
function DG.Tweening.Core.DOSetter:EndInvoke(result) end

---@class DG.Tweening.Core.Debugger : System.Object
---@field logPriority number
DG.Tweening.Core.Debugger = {}
---@alias CS.DG.Tweening.Core.Debugger DG.Tweening.Core.Debugger
CS.DG.Tweening.Core.Debugger = DG.Tweening.Core.Debugger

---@param message System.Object
function DG.Tweening.Core.Debugger.Log(message) end
---@param message System.Object
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogWarning(message, t) end
---@param message System.Object
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogError(message, t) end
---@param message System.Object
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogSafeModeCapturedError(message, t) end
---@param message System.Object
function DG.Tweening.Core.Debugger.LogReport(message) end
---@param message System.Object
function DG.Tweening.Core.Debugger.LogSafeModeReport(message) end
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogInvalidTween(t) end
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogNestedTween(t) end
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogNullTween(t) end
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogNonPathTween(t) end
---@overload fun(propertyName: string)
---@param propertyId number
function DG.Tweening.Core.Debugger.LogMissingMaterialProperty(propertyId) end
---@param errorInfo string
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogRemoveActiveTweenError(errorInfo, t) end
---@param errorInfo string
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.LogAddActiveTweenError(errorInfo, t) end
---@param logBehaviour DG.Tweening.LogBehaviour
function DG.Tweening.Core.Debugger.SetLogPriority(logBehaviour) end
---@return boolean
function DG.Tweening.Core.Debugger.ShouldLogSafeModeCapturedError() end

---@class DG.Tweening.Core.DOTweenComponent : UnityEngine.MonoBehaviour
---@field inspectorUpdater number
DG.Tweening.Core.DOTweenComponent = {}
---@alias CS.DG.Tweening.Core.DOTweenComponent DG.Tweening.Core.DOTweenComponent
CS.DG.Tweening.Core.DOTweenComponent = DG.Tweening.Core.DOTweenComponent

---@param pauseStatus boolean
function DG.Tweening.Core.DOTweenComponent:OnApplicationPause(pauseStatus) end
---@param tweenersCapacity number
---@param sequencesCapacity number
---@return DG.Tweening.IDOTweenInit
function DG.Tweening.Core.DOTweenComponent:SetCapacity(tweenersCapacity, sequencesCapacity) end

---@class DG.Tweening.Core.DOTweenSettings : UnityEngine.ScriptableObject
---@field AssetName string
---@field AssetFullFilename string
---@field useSafeMode boolean
---@field safeModeOptions DG.Tweening.Core.DOTweenSettings.SafeModeOptions
---@field timeScale number
---@field unscaledTimeScale number
---@field useSmoothDeltaTime boolean
---@field maxSmoothUnscaledTime number
---@field rewindCallbackMode DG.Tweening.Core.Enums.RewindCallbackMode
---@field showUnityEditorReport boolean
---@field logBehaviour DG.Tweening.LogBehaviour
---@field drawGizmos boolean
---@field defaultRecyclable boolean
---@field defaultAutoPlay DG.Tweening.AutoPlay
---@field defaultUpdateType DG.Tweening.UpdateType
---@field defaultTimeScaleIndependent boolean
---@field defaultEaseType DG.Tweening.Ease
---@field defaultEaseOvershootOrAmplitude number
---@field defaultEasePeriod number
---@field defaultAutoKill boolean
---@field defaultLoopType DG.Tweening.LoopType
---@field debugMode boolean
---@field debugStoreTargetId boolean
---@field showPreviewPanel boolean
---@field storeSettingsLocation DG.Tweening.Core.DOTweenSettings.SettingsLocation
---@field modules DG.Tweening.Core.DOTweenSettings.ModulesSetup
---@field createASMDEF boolean
---@field showPlayingTweens boolean
---@field showPausedTweens boolean
DG.Tweening.Core.DOTweenSettings = {}
---@alias CS.DG.Tweening.Core.DOTweenSettings DG.Tweening.Core.DOTweenSettings
CS.DG.Tweening.Core.DOTweenSettings = DG.Tweening.Core.DOTweenSettings

---@return DG.Tweening.Core.DOTweenSettings
function DG.Tweening.Core.DOTweenSettings.New() end

---@class DG.Tweening.Core.Extensions : System.Object
DG.Tweening.Core.Extensions = {}
---@alias CS.DG.Tweening.Core.Extensions DG.Tweening.Core.Extensions
CS.DG.Tweening.Core.Extensions = DG.Tweening.Core.Extensions


---@class DG.Tweening.Core.DOTweenExternalCommand : System.Object
DG.Tweening.Core.DOTweenExternalCommand = {}
---@alias CS.DG.Tweening.Core.DOTweenExternalCommand DG.Tweening.Core.DOTweenExternalCommand
CS.DG.Tweening.Core.DOTweenExternalCommand = DG.Tweening.Core.DOTweenExternalCommand


---@class DG.Tweening.Core.SafeModeReport : System.ValueType
---@field totMissingTargetOrFieldErrors number
---@field totCallbackErrors number
---@field totStartupErrors number
---@field totUnsetErrors number
DG.Tweening.Core.SafeModeReport = {}
---@alias CS.DG.Tweening.Core.SafeModeReport DG.Tweening.Core.SafeModeReport
CS.DG.Tweening.Core.SafeModeReport = DG.Tweening.Core.SafeModeReport

---@param type DG.Tweening.Core.SafeModeReport.SafeModeReportType
function DG.Tweening.Core.SafeModeReport:Add(type) end
---@return number
function DG.Tweening.Core.SafeModeReport:GetTotErrors() end

---@class DG.Tweening.Core.SequenceCallback : DG.Tweening.Core.ABSSequentiable
DG.Tweening.Core.SequenceCallback = {}
---@alias CS.DG.Tweening.Core.SequenceCallback DG.Tweening.Core.SequenceCallback
CS.DG.Tweening.Core.SequenceCallback = DG.Tweening.Core.SequenceCallback

---@param sequencedPosition number
---@param callback DG.Tweening.TweenCallback
---@return DG.Tweening.Core.SequenceCallback
function DG.Tweening.Core.SequenceCallback.New(sequencedPosition, callback) end

---@class DG.Tweening.Core.TweenLink : System.Object
---@field target UnityEngine.GameObject
---@field behaviour DG.Tweening.LinkBehaviour
---@field lastSeenActive boolean
DG.Tweening.Core.TweenLink = {}
---@alias CS.DG.Tweening.Core.TweenLink DG.Tweening.Core.TweenLink
CS.DG.Tweening.Core.TweenLink = DG.Tweening.Core.TweenLink

---@param target UnityEngine.GameObject
---@param behaviour DG.Tweening.LinkBehaviour
---@return DG.Tweening.Core.TweenLink
function DG.Tweening.Core.TweenLink.New(target, behaviour) end

---@class DG.Tweening.Core.TweenManager : System.Object
DG.Tweening.Core.TweenManager = {}
---@alias CS.DG.Tweening.Core.TweenManager DG.Tweening.Core.TweenManager
CS.DG.Tweening.Core.TweenManager = DG.Tweening.Core.TweenManager


---@class DG.Tweening.Core.DOTweenUtils : System.Object
DG.Tweening.Core.DOTweenUtils = {}
---@alias CS.DG.Tweening.Core.DOTweenUtils DG.Tweening.Core.DOTweenUtils
CS.DG.Tweening.Core.DOTweenUtils = DG.Tweening.Core.DOTweenUtils

---@param center UnityEngine.Vector2
---@param radius number
---@param degrees number
---@return UnityEngine.Vector2
function DG.Tweening.Core.DOTweenUtils.GetPointOnCircle(center, radius, degrees) end

---@class DG.Tweening.Core.TweenerCore : DG.Tweening.Tweener
---@field startValue T2
---@field endValue T2
---@field changeValue T2
---@field plugOptions TPlugOptions
---@field getter DG.Tweening.Core.DOGetter[T1]
---@field setter DG.Tweening.Core.DOSetter[T1]
DG.Tweening.Core.TweenerCore = {}
---@alias CS.DG.Tweening.Core.TweenerCore DG.Tweening.Core.TweenerCore
CS.DG.Tweening.Core.TweenerCore = DG.Tweening.Core.TweenerCore

---@overload fun(self: DG.Tweening.Core.TweenerCore, newStartValue: System.Object, newDuration: number) : DG.Tweening.Tweener
---@param newStartValue T2
---@param newDuration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.Core.TweenerCore:ChangeStartValue(newStartValue, newDuration) end
---@overload fun(self: DG.Tweening.Core.TweenerCore, newEndValue: System.Object, snapStartValue: boolean) : DG.Tweening.Tweener
---@overload fun(self: DG.Tweening.Core.TweenerCore, newEndValue: System.Object, newDuration: number, snapStartValue: boolean) : DG.Tweening.Tweener
---@overload fun(self: DG.Tweening.Core.TweenerCore, newEndValue: T2, snapStartValue: boolean) : DG.Tweening.Core.TweenerCore
---@param newEndValue T2
---@param newDuration number
---@param snapStartValue boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.Core.TweenerCore:ChangeEndValue(newEndValue, newDuration, snapStartValue) end
---@overload fun(self: DG.Tweening.Core.TweenerCore, newStartValue: System.Object, newEndValue: System.Object, newDuration: number) : DG.Tweening.Tweener
---@param newStartValue T2
---@param newEndValue T2
---@param newDuration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.Core.TweenerCore:ChangeValues(newStartValue, newEndValue, newDuration) end

---@class DG.Tweening.Core.Enums.FilterType
---@field All DG.Tweening.Core.Enums.FilterType
---@field TargetOrId DG.Tweening.Core.Enums.FilterType
---@field TargetAndId DG.Tweening.Core.Enums.FilterType
---@field AllExceptTargetsOrIds DG.Tweening.Core.Enums.FilterType
---@field DOGetter DG.Tweening.Core.Enums.FilterType
DG.Tweening.Core.Enums.FilterType = {}
---@alias CS.DG.Tweening.Core.Enums.FilterType DG.Tweening.Core.Enums.FilterType
CS.DG.Tweening.Core.Enums.FilterType = DG.Tweening.Core.Enums.FilterType


---@class DG.Tweening.Core.Enums.NestedTweenFailureBehaviour
---@field TryToPreserveSequence DG.Tweening.Core.Enums.NestedTweenFailureBehaviour
---@field KillWholeSequence DG.Tweening.Core.Enums.NestedTweenFailureBehaviour
DG.Tweening.Core.Enums.NestedTweenFailureBehaviour = {}
---@alias CS.DG.Tweening.Core.Enums.NestedTweenFailureBehaviour DG.Tweening.Core.Enums.NestedTweenFailureBehaviour
CS.DG.Tweening.Core.Enums.NestedTweenFailureBehaviour = DG.Tweening.Core.Enums.NestedTweenFailureBehaviour


---@class DG.Tweening.Core.Enums.OperationType
---@field Complete DG.Tweening.Core.Enums.OperationType
---@field Despawn DG.Tweening.Core.Enums.OperationType
---@field Flip DG.Tweening.Core.Enums.OperationType
---@field Goto DG.Tweening.Core.Enums.OperationType
---@field Pause DG.Tweening.Core.Enums.OperationType
---@field Play DG.Tweening.Core.Enums.OperationType
---@field PlayForward DG.Tweening.Core.Enums.OperationType
---@field PlayBackwards DG.Tweening.Core.Enums.OperationType
---@field Rewind DG.Tweening.Core.Enums.OperationType
---@field SmoothRewind DG.Tweening.Core.Enums.OperationType
---@field Restart DG.Tweening.Core.Enums.OperationType
---@field TogglePause DG.Tweening.Core.Enums.OperationType
---@field IsTweening DG.Tweening.Core.Enums.OperationType
DG.Tweening.Core.Enums.OperationType = {}
---@alias CS.DG.Tweening.Core.Enums.OperationType DG.Tweening.Core.Enums.OperationType
CS.DG.Tweening.Core.Enums.OperationType = DG.Tweening.Core.Enums.OperationType


---@class DG.Tweening.Core.Enums.SafeModeLogBehaviour
---@field None DG.Tweening.Core.Enums.SafeModeLogBehaviour
---@field Normal DG.Tweening.Core.Enums.SafeModeLogBehaviour
---@field Warning DG.Tweening.Core.Enums.SafeModeLogBehaviour
---@field Error DG.Tweening.Core.Enums.SafeModeLogBehaviour
DG.Tweening.Core.Enums.SafeModeLogBehaviour = {}
---@alias CS.DG.Tweening.Core.Enums.SafeModeLogBehaviour DG.Tweening.Core.Enums.SafeModeLogBehaviour
CS.DG.Tweening.Core.Enums.SafeModeLogBehaviour = DG.Tweening.Core.Enums.SafeModeLogBehaviour


---@class DG.Tweening.Core.Enums.SpecialStartupMode
---@field None DG.Tweening.Core.Enums.SpecialStartupMode
---@field SetLookAt DG.Tweening.Core.Enums.SpecialStartupMode
---@field SetShake DG.Tweening.Core.Enums.SpecialStartupMode
---@field SetPunch DG.Tweening.Core.Enums.SpecialStartupMode
---@field SetCameraShakePosition DG.Tweening.Core.Enums.SpecialStartupMode
DG.Tweening.Core.Enums.SpecialStartupMode = {}
---@alias CS.DG.Tweening.Core.Enums.SpecialStartupMode DG.Tweening.Core.Enums.SpecialStartupMode
CS.DG.Tweening.Core.Enums.SpecialStartupMode = DG.Tweening.Core.Enums.SpecialStartupMode


---@class DG.Tweening.Core.Enums.UpdateNotice
---@field None DG.Tweening.Core.Enums.UpdateNotice
---@field RewindStep DG.Tweening.Core.Enums.UpdateNotice
DG.Tweening.Core.Enums.UpdateNotice = {}
---@alias CS.DG.Tweening.Core.Enums.UpdateNotice DG.Tweening.Core.Enums.UpdateNotice
CS.DG.Tweening.Core.Enums.UpdateNotice = DG.Tweening.Core.Enums.UpdateNotice


---@class DG.Tweening.Core.Enums.UpdateMode
---@field Update DG.Tweening.Core.Enums.UpdateMode
---@field Goto DG.Tweening.Core.Enums.UpdateMode
---@field IgnoreOnUpdate DG.Tweening.Core.Enums.UpdateMode
---@field IgnoreOnComplete DG.Tweening.Core.Enums.UpdateMode
DG.Tweening.Core.Enums.UpdateMode = {}
---@alias CS.DG.Tweening.Core.Enums.UpdateMode DG.Tweening.Core.Enums.UpdateMode
CS.DG.Tweening.Core.Enums.UpdateMode = DG.Tweening.Core.Enums.UpdateMode


---@class DG.Tweening.Core.Enums.RewindCallbackMode
---@field FireIfPositionChanged DG.Tweening.Core.Enums.RewindCallbackMode
---@field FireAlwaysWithRewind DG.Tweening.Core.Enums.RewindCallbackMode
---@field FireAlways DG.Tweening.Core.Enums.RewindCallbackMode
DG.Tweening.Core.Enums.RewindCallbackMode = {}
---@alias CS.DG.Tweening.Core.Enums.RewindCallbackMode DG.Tweening.Core.Enums.RewindCallbackMode
CS.DG.Tweening.Core.Enums.RewindCallbackMode = DG.Tweening.Core.Enums.RewindCallbackMode


---@class DG.Tweening.Core.Easing.Bounce : System.Object
DG.Tweening.Core.Easing.Bounce = {}
---@alias CS.DG.Tweening.Core.Easing.Bounce DG.Tweening.Core.Easing.Bounce
CS.DG.Tweening.Core.Easing.Bounce = DG.Tweening.Core.Easing.Bounce

---@param time number
---@param duration number
---@param unusedOvershootOrAmplitude number
---@param unusedPeriod number
---@return number
function DG.Tweening.Core.Easing.Bounce.EaseIn(time, duration, unusedOvershootOrAmplitude, unusedPeriod) end
---@param time number
---@param duration number
---@param unusedOvershootOrAmplitude number
---@param unusedPeriod number
---@return number
function DG.Tweening.Core.Easing.Bounce.EaseOut(time, duration, unusedOvershootOrAmplitude, unusedPeriod) end
---@param time number
---@param duration number
---@param unusedOvershootOrAmplitude number
---@param unusedPeriod number
---@return number
function DG.Tweening.Core.Easing.Bounce.EaseInOut(time, duration, unusedOvershootOrAmplitude, unusedPeriod) end

---@class DG.Tweening.Core.Easing.EaseManager : System.Object
DG.Tweening.Core.Easing.EaseManager = {}
---@alias CS.DG.Tweening.Core.Easing.EaseManager DG.Tweening.Core.Easing.EaseManager
CS.DG.Tweening.Core.Easing.EaseManager = DG.Tweening.Core.Easing.EaseManager

---@overload fun(t: DG.Tweening.Tween, time: number, duration: number, overshootOrAmplitude: number, period: number) : number
---@param easeType DG.Tweening.Ease
---@param customEase DG.Tweening.EaseFunction
---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@return number
function DG.Tweening.Core.Easing.EaseManager.Evaluate(easeType, customEase, time, duration, overshootOrAmplitude, period) end
---@param t DG.Tweening.Tween
---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@return number
function DG.Tweening.Core.Easing.EaseManager.EvaluateUnclamped(t, time, duration, overshootOrAmplitude, period) end
---@param ease DG.Tweening.Ease
---@return DG.Tweening.EaseFunction
function DG.Tweening.Core.Easing.EaseManager.ToEaseFunction(ease) end

---@class DG.Tweening.Core.Easing.EaseCurve : System.Object
DG.Tweening.Core.Easing.EaseCurve = {}
---@alias CS.DG.Tweening.Core.Easing.EaseCurve DG.Tweening.Core.Easing.EaseCurve
CS.DG.Tweening.Core.Easing.EaseCurve = DG.Tweening.Core.Easing.EaseCurve

---@param animCurve UnityEngine.AnimationCurve
---@return DG.Tweening.Core.Easing.EaseCurve
function DG.Tweening.Core.Easing.EaseCurve.New(animCurve) end
---@param time number
---@param duration number
---@param unusedOvershoot number
---@param unusedPeriod number
---@return number
function DG.Tweening.Core.Easing.EaseCurve:Evaluate(time, duration, unusedOvershoot, unusedPeriod) end

---@class DG.Tweening.Core.Easing.Flash : System.Object
DG.Tweening.Core.Easing.Flash = {}
---@alias CS.DG.Tweening.Core.Easing.Flash DG.Tweening.Core.Easing.Flash
CS.DG.Tweening.Core.Easing.Flash = DG.Tweening.Core.Easing.Flash

---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@return number
function DG.Tweening.Core.Easing.Flash.Ease(time, duration, overshootOrAmplitude, period) end
---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@return number
function DG.Tweening.Core.Easing.Flash.EaseIn(time, duration, overshootOrAmplitude, period) end
---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@return number
function DG.Tweening.Core.Easing.Flash.EaseOut(time, duration, overshootOrAmplitude, period) end
---@param time number
---@param duration number
---@param overshootOrAmplitude number
---@param period number
---@return number
function DG.Tweening.Core.Easing.Flash.EaseInOut(time, duration, overshootOrAmplitude, period) end

---@class DG.Tweening.DOCurve.CubicBezier : System.Object
DG.Tweening.DOCurve.CubicBezier = {}
---@alias CS.DG.Tweening.DOCurve.CubicBezier DG.Tweening.DOCurve.CubicBezier
CS.DG.Tweening.DOCurve.CubicBezier = DG.Tweening.DOCurve.CubicBezier

---@param startPoint UnityEngine.Vector3
---@param startControlPoint UnityEngine.Vector3
---@param endPoint UnityEngine.Vector3
---@param endControlPoint UnityEngine.Vector3
---@param factor number
---@return UnityEngine.Vector3
function DG.Tweening.DOCurve.CubicBezier.GetPointOnSegment(startPoint, startControlPoint, endPoint, endControlPoint, factor) end
---@overload fun(startPoint: UnityEngine.Vector3, startControlPoint: UnityEngine.Vector3, endPoint: UnityEngine.Vector3, endControlPoint: UnityEngine.Vector3, resolution: number) : UnityEngine.Vector3[]
---@param addToList System.Collections.Generic.List
---@param startPoint UnityEngine.Vector3
---@param startControlPoint UnityEngine.Vector3
---@param endPoint UnityEngine.Vector3
---@param endControlPoint UnityEngine.Vector3
---@param resolution number
function DG.Tweening.DOCurve.CubicBezier.GetSegmentPointCloud(addToList, startPoint, startControlPoint, endPoint, endControlPoint, resolution) end

---@class DG.Tweening.Core.Debugger.Sequence : System.Object
DG.Tweening.Core.Debugger.Sequence = {}
---@alias CS.DG.Tweening.Core.Debugger.Sequence DG.Tweening.Core.Debugger.Sequence
CS.DG.Tweening.Core.Debugger.Sequence = DG.Tweening.Core.Debugger.Sequence

function DG.Tweening.Core.Debugger.Sequence.LogAddToNullSequence() end
function DG.Tweening.Core.Debugger.Sequence.LogAddToInactiveSequence() end
function DG.Tweening.Core.Debugger.Sequence.LogAddToLockedSequence() end
function DG.Tweening.Core.Debugger.Sequence.LogAddNullTween() end
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.Sequence.LogAddInactiveTween(t) end
---@param t DG.Tweening.Tween
function DG.Tweening.Core.Debugger.Sequence.LogAddAlreadySequencedTween(t) end

---@class DG.Tweening.Core.DOTweenSettings.SettingsLocation
---@field AssetsDirectory DG.Tweening.Core.DOTweenSettings.SettingsLocation
---@field DOTweenDirectory DG.Tweening.Core.DOTweenSettings.SettingsLocation
---@field DemigiantDirectory DG.Tweening.Core.DOTweenSettings.SettingsLocation
DG.Tweening.Core.DOTweenSettings.SettingsLocation = {}
---@alias CS.DG.Tweening.Core.DOTweenSettings.SettingsLocation DG.Tweening.Core.DOTweenSettings.SettingsLocation
CS.DG.Tweening.Core.DOTweenSettings.SettingsLocation = DG.Tweening.Core.DOTweenSettings.SettingsLocation


---@class DG.Tweening.Core.DOTweenSettings.SafeModeOptions : System.Object
---@field logBehaviour DG.Tweening.Core.Enums.SafeModeLogBehaviour
---@field nestedTweenFailureBehaviour DG.Tweening.Core.Enums.NestedTweenFailureBehaviour
DG.Tweening.Core.DOTweenSettings.SafeModeOptions = {}
---@alias CS.DG.Tweening.Core.DOTweenSettings.SafeModeOptions DG.Tweening.Core.DOTweenSettings.SafeModeOptions
CS.DG.Tweening.Core.DOTweenSettings.SafeModeOptions = DG.Tweening.Core.DOTweenSettings.SafeModeOptions

---@return DG.Tweening.Core.DOTweenSettings.SafeModeOptions
function DG.Tweening.Core.DOTweenSettings.SafeModeOptions.New() end

---@class DG.Tweening.Core.DOTweenSettings.ModulesSetup : System.Object
---@field showPanel boolean
---@field audioEnabled boolean
---@field physicsEnabled boolean
---@field physics2DEnabled boolean
---@field spriteEnabled boolean
---@field uiEnabled boolean
---@field uiToolkitEnabled boolean
---@field textMeshProEnabled boolean
---@field tk2DEnabled boolean
---@field deAudioEnabled boolean
---@field deUnityExtendedEnabled boolean
---@field epoOutlineEnabled boolean
DG.Tweening.Core.DOTweenSettings.ModulesSetup = {}
---@alias CS.DG.Tweening.Core.DOTweenSettings.ModulesSetup DG.Tweening.Core.DOTweenSettings.ModulesSetup
CS.DG.Tweening.Core.DOTweenSettings.ModulesSetup = DG.Tweening.Core.DOTweenSettings.ModulesSetup

---@return DG.Tweening.Core.DOTweenSettings.ModulesSetup
function DG.Tweening.Core.DOTweenSettings.ModulesSetup.New() end

---@class DG.Tweening.Core.SafeModeReport.SafeModeReportType
---@field Unset DG.Tweening.Core.SafeModeReport.SafeModeReportType
---@field TargetOrFieldMissing DG.Tweening.Core.SafeModeReport.SafeModeReportType
---@field Callback DG.Tweening.Core.SafeModeReport.SafeModeReportType
---@field StartupFailure DG.Tweening.Core.SafeModeReport.SafeModeReportType
DG.Tweening.Core.SafeModeReport.SafeModeReportType = {}
---@alias CS.DG.Tweening.Core.SafeModeReport.SafeModeReportType DG.Tweening.Core.SafeModeReport.SafeModeReportType
CS.DG.Tweening.Core.SafeModeReport.SafeModeReportType = DG.Tweening.Core.SafeModeReport.SafeModeReportType


---@class DG.Tweening.Core.TweenManager.CapacityIncreaseMode
---@field TweenersAndSequences DG.Tweening.Core.TweenManager.CapacityIncreaseMode
---@field TweenersOnly DG.Tweening.Core.TweenManager.CapacityIncreaseMode
---@field SequencesOnly DG.Tweening.Core.TweenManager.CapacityIncreaseMode
DG.Tweening.Core.TweenManager.CapacityIncreaseMode = {}
---@alias CS.DG.Tweening.Core.TweenManager.CapacityIncreaseMode DG.Tweening.Core.TweenManager.CapacityIncreaseMode
CS.DG.Tweening.Core.TweenManager.CapacityIncreaseMode = DG.Tweening.Core.TweenManager.CapacityIncreaseMode


---@class System.Runtime.Versioning.NonVersionableAttribute : System.Attribute
System.Runtime.Versioning.NonVersionableAttribute = {}
---@alias CS.System.Runtime.Versioning.NonVersionableAttribute System.Runtime.Versioning.NonVersionableAttribute
CS.System.Runtime.Versioning.NonVersionableAttribute = System.Runtime.Versioning.NonVersionableAttribute

---@return System.Runtime.Versioning.NonVersionableAttribute
function System.Runtime.Versioning.NonVersionableAttribute.New() end

---@class System.Runtime.CompilerServices.IsReadOnlyAttribute : System.Attribute
System.Runtime.CompilerServices.IsReadOnlyAttribute = {}
---@alias CS.System.Runtime.CompilerServices.IsReadOnlyAttribute System.Runtime.CompilerServices.IsReadOnlyAttribute
CS.System.Runtime.CompilerServices.IsReadOnlyAttribute = System.Runtime.CompilerServices.IsReadOnlyAttribute

---@return System.Runtime.CompilerServices.IsReadOnlyAttribute
function System.Runtime.CompilerServices.IsReadOnlyAttribute.New() end

---@class System.Runtime.CompilerServices.IsReadOnlyAttribute : System.Attribute
System.Runtime.CompilerServices.IsReadOnlyAttribute = {}
---@alias CS.System.Runtime.CompilerServices.IsReadOnlyAttribute System.Runtime.CompilerServices.IsReadOnlyAttribute
CS.System.Runtime.CompilerServices.IsReadOnlyAttribute = System.Runtime.CompilerServices.IsReadOnlyAttribute

---@return System.Runtime.CompilerServices.IsReadOnlyAttribute
function System.Runtime.CompilerServices.IsReadOnlyAttribute.New() end

---@class System.Runtime.CompilerServices.NullableAttribute : System.Attribute
---@field NullableFlags System.Byte[]
System.Runtime.CompilerServices.NullableAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableAttribute System.Runtime.CompilerServices.NullableAttribute
CS.System.Runtime.CompilerServices.NullableAttribute = System.Runtime.CompilerServices.NullableAttribute

---@overload fun(: number) : System.Runtime.CompilerServices.NullableAttribute
---@param  System.Byte[]
---@return System.Runtime.CompilerServices.NullableAttribute
function System.Runtime.CompilerServices.NullableAttribute.New() end

---@class System.Runtime.CompilerServices.NullableContextAttribute : System.Attribute
---@field Flag number
System.Runtime.CompilerServices.NullableContextAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableContextAttribute System.Runtime.CompilerServices.NullableContextAttribute
CS.System.Runtime.CompilerServices.NullableContextAttribute = System.Runtime.CompilerServices.NullableContextAttribute

---@param  number
---@return System.Runtime.CompilerServices.NullableContextAttribute
function System.Runtime.CompilerServices.NullableContextAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.NotNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.NotNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.NotNullAttribute System.Diagnostics.CodeAnalysis.NotNullAttribute
CS.System.Diagnostics.CodeAnalysis.NotNullAttribute = System.Diagnostics.CodeAnalysis.NotNullAttribute

---@return System.Diagnostics.CodeAnalysis.NotNullAttribute
function System.Diagnostics.CodeAnalysis.NotNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.NotNullWhenAttribute : System.Attribute
---@field ReturnValue boolean
System.Diagnostics.CodeAnalysis.NotNullWhenAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.NotNullWhenAttribute System.Diagnostics.CodeAnalysis.NotNullWhenAttribute
CS.System.Diagnostics.CodeAnalysis.NotNullWhenAttribute = System.Diagnostics.CodeAnalysis.NotNullWhenAttribute

---@param returnValue boolean
---@return System.Diagnostics.CodeAnalysis.NotNullWhenAttribute
function System.Diagnostics.CodeAnalysis.NotNullWhenAttribute.New(returnValue) end

---@class System.Diagnostics.CodeAnalysis.MaybeNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.MaybeNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.MaybeNullAttribute System.Diagnostics.CodeAnalysis.MaybeNullAttribute
CS.System.Diagnostics.CodeAnalysis.MaybeNullAttribute = System.Diagnostics.CodeAnalysis.MaybeNullAttribute

---@return System.Diagnostics.CodeAnalysis.MaybeNullAttribute
function System.Diagnostics.CodeAnalysis.MaybeNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.AllowNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.AllowNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.AllowNullAttribute System.Diagnostics.CodeAnalysis.AllowNullAttribute
CS.System.Diagnostics.CodeAnalysis.AllowNullAttribute = System.Diagnostics.CodeAnalysis.AllowNullAttribute

---@return System.Diagnostics.CodeAnalysis.AllowNullAttribute
function System.Diagnostics.CodeAnalysis.AllowNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute : System.Attribute
---@field ParameterValue boolean
System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute
CS.System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute = System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute

---@param parameterValue boolean
---@return System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute
function System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute.New(parameterValue) end

---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class Locale : System.Object
Locale = {}
---@alias CS.Locale Locale
CS.Locale = Locale

---@overload fun(msg: string) : string
---@param fmt string
---@param args System.Object[]
---@return string
function Locale.GetText(fmt, args) end

---@class MapAttribute : System.Attribute
---@field NativeType string
---@field SuppressFlags string
MapAttribute = {}
---@alias CS.MapAttribute MapAttribute
CS.MapAttribute = MapAttribute

---@overload fun() : MapAttribute
---@param nativeType string
---@return MapAttribute
function MapAttribute.New(nativeType) end

---@class System.Runtime.CompilerServices.NullableAttribute : System.Attribute
---@field NullableFlags System.Byte[]
System.Runtime.CompilerServices.NullableAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableAttribute System.Runtime.CompilerServices.NullableAttribute
CS.System.Runtime.CompilerServices.NullableAttribute = System.Runtime.CompilerServices.NullableAttribute

---@overload fun(: number) : System.Runtime.CompilerServices.NullableAttribute
---@param  System.Byte[]
---@return System.Runtime.CompilerServices.NullableAttribute
function System.Runtime.CompilerServices.NullableAttribute.New() end

---@class System.Runtime.CompilerServices.NullableContextAttribute : System.Attribute
---@field Flag number
System.Runtime.CompilerServices.NullableContextAttribute = {}
---@alias CS.System.Runtime.CompilerServices.NullableContextAttribute System.Runtime.CompilerServices.NullableContextAttribute
CS.System.Runtime.CompilerServices.NullableContextAttribute = System.Runtime.CompilerServices.NullableContextAttribute

---@param  number
---@return System.Runtime.CompilerServices.NullableContextAttribute
function System.Runtime.CompilerServices.NullableContextAttribute.New() end

---@class Consts : System.Object
---@field AssemblyName string
---@field PublicKey string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class System.Tuple : System.Object
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@return System.Tuple
function System.Tuple.New() end

---@class System.Tuple : System.Object
---@field Item1 T1
---@field Item2 T2
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@param item2 T2
---@return System.Tuple
function System.Tuple.New(item1, item2) end

---@class System.StringBuilderExt : System.Object
System.StringBuilderExt = {}
---@alias CS.System.StringBuilderExt System.StringBuilderExt
CS.System.StringBuilderExt = System.StringBuilderExt

---@param builder System.Text.StringBuilder
function System.StringBuilderExt.Clear(builder) end

---@class System.Runtime.CompilerServices.IsReadOnlyAttribute : System.Attribute
System.Runtime.CompilerServices.IsReadOnlyAttribute = {}
---@alias CS.System.Runtime.CompilerServices.IsReadOnlyAttribute System.Runtime.CompilerServices.IsReadOnlyAttribute
CS.System.Runtime.CompilerServices.IsReadOnlyAttribute = System.Runtime.CompilerServices.IsReadOnlyAttribute

---@return System.Runtime.CompilerServices.IsReadOnlyAttribute
function System.Runtime.CompilerServices.IsReadOnlyAttribute.New() end

---@class Consts : System.Object
---@field MonoCorlibVersion string
---@field MonoVersion string
---@field MonoCompany string
---@field MonoProduct string
---@field MonoCopyright string
---@field FxVersion string
---@field FxFileVersion string
---@field EnvironmentVersion string
---@field VsVersion string
---@field VsFileVersion string
---@field AssemblyI18N string
---@field AssemblyMicrosoft_JScript string
---@field AssemblyMicrosoft_VisualStudio string
---@field AssemblyMicrosoft_VisualStudio_Web string
---@field AssemblyMicrosoft_VSDesigner string
---@field AssemblyMono_Http string
---@field AssemblyMono_Posix string
---@field AssemblyMono_Security string
---@field AssemblyMono_Messaging_RabbitMQ string
---@field AssemblyCorlib string
---@field AssemblySystem string
---@field AssemblySystem_Data string
---@field AssemblySystem_Design string
---@field AssemblySystem_DirectoryServices string
---@field AssemblySystem_Drawing string
---@field AssemblySystem_Drawing_Design string
---@field AssemblySystem_Messaging string
---@field AssemblySystem_Security string
---@field AssemblySystem_ServiceProcess string
---@field AssemblySystem_Web string
---@field AssemblySystem_Windows_Forms string
---@field AssemblySystem_2_0 string
---@field AssemblySystemCore_3_5 string
---@field AssemblySystem_Core string
---@field WindowsBase_3_0 string
---@field AssemblyWindowsBase string
---@field AssemblyPresentationCore_3_5 string
---@field AssemblyPresentationCore_4_0 string
---@field AssemblyPresentationFramework_3_5 string
---@field AssemblySystemServiceModel_3_0 string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


---@class Locale : System.Object
Locale = {}
---@alias CS.Locale Locale
CS.Locale = Locale

---@overload fun(msg: string) : string
---@param fmt string
---@param args System.Object[]
---@return string
function Locale.GetText(fmt, args) end

---@class PageLifeCycle
---@field Unknown PageLifeCycle
---@field Start PageLifeCycle
---@field PreInit PageLifeCycle
---@field Init PageLifeCycle
---@field InitComplete PageLifeCycle
---@field PreLoad PageLifeCycle
---@field Load PageLifeCycle
---@field ControlEvents PageLifeCycle
---@field LoadComplete PageLifeCycle
---@field PreRender PageLifeCycle
---@field PreRenderComplete PageLifeCycle
---@field SaveStateComplete PageLifeCycle
---@field Render PageLifeCycle
---@field Unload PageLifeCycle
---@field End PageLifeCycle
PageLifeCycle = {}
---@alias CS.PageLifeCycle PageLifeCycle
CS.PageLifeCycle = PageLifeCycle


---@class System.MonoTODOAttribute : System.Attribute
---@field Comment string
System.MonoTODOAttribute = {}
---@alias CS.System.MonoTODOAttribute System.MonoTODOAttribute
CS.System.MonoTODOAttribute = System.MonoTODOAttribute

---@overload fun() : System.MonoTODOAttribute
---@param comment string
---@return System.MonoTODOAttribute
function System.MonoTODOAttribute.New(comment) end

---@class System.MonoDocumentationNoteAttribute : System.MonoTODOAttribute
System.MonoDocumentationNoteAttribute = {}
---@alias CS.System.MonoDocumentationNoteAttribute System.MonoDocumentationNoteAttribute
CS.System.MonoDocumentationNoteAttribute = System.MonoDocumentationNoteAttribute

---@param comment string
---@return System.MonoDocumentationNoteAttribute
function System.MonoDocumentationNoteAttribute.New(comment) end

---@class System.MonoExtensionAttribute : System.MonoTODOAttribute
System.MonoExtensionAttribute = {}
---@alias CS.System.MonoExtensionAttribute System.MonoExtensionAttribute
CS.System.MonoExtensionAttribute = System.MonoExtensionAttribute

---@param comment string
---@return System.MonoExtensionAttribute
function System.MonoExtensionAttribute.New(comment) end

---@class System.MonoInternalNoteAttribute : System.MonoTODOAttribute
System.MonoInternalNoteAttribute = {}
---@alias CS.System.MonoInternalNoteAttribute System.MonoInternalNoteAttribute
CS.System.MonoInternalNoteAttribute = System.MonoInternalNoteAttribute

---@param comment string
---@return System.MonoInternalNoteAttribute
function System.MonoInternalNoteAttribute.New(comment) end

---@class System.MonoLimitationAttribute : System.MonoTODOAttribute
System.MonoLimitationAttribute = {}
---@alias CS.System.MonoLimitationAttribute System.MonoLimitationAttribute
CS.System.MonoLimitationAttribute = System.MonoLimitationAttribute

---@param comment string
---@return System.MonoLimitationAttribute
function System.MonoLimitationAttribute.New(comment) end

---@class System.MonoNotSupportedAttribute : System.MonoTODOAttribute
System.MonoNotSupportedAttribute = {}
---@alias CS.System.MonoNotSupportedAttribute System.MonoNotSupportedAttribute
CS.System.MonoNotSupportedAttribute = System.MonoNotSupportedAttribute

---@param comment string
---@return System.MonoNotSupportedAttribute
function System.MonoNotSupportedAttribute.New(comment) end

---@class System.MonoToolsLocator : System.Object
---@field Mono string
---@field McsCSharpCompiler string
---@field VBCompiler string
---@field AssemblyLinker string
System.MonoToolsLocator = {}
---@alias CS.System.MonoToolsLocator System.MonoToolsLocator
CS.System.MonoToolsLocator = System.MonoToolsLocator


---@class System.InvariantComparer : System.Object
System.InvariantComparer = {}
---@alias CS.System.InvariantComparer System.InvariantComparer
CS.System.InvariantComparer = System.InvariantComparer

---@param a System.Object
---@param b System.Object
---@return number
function System.InvariantComparer:Compare(a, b) end

---@class System.Configuration.NullableStringValidator : System.Configuration.ConfigurationValidatorBase
System.Configuration.NullableStringValidator = {}
---@alias CS.System.Configuration.NullableStringValidator System.Configuration.NullableStringValidator
CS.System.Configuration.NullableStringValidator = System.Configuration.NullableStringValidator

---@overload fun(minLength: number) : System.Configuration.NullableStringValidator
---@overload fun(minLength: number, maxLength: number) : System.Configuration.NullableStringValidator
---@param minLength number
---@param maxLength number
---@param invalidCharacters string
---@return System.Configuration.NullableStringValidator
function System.Configuration.NullableStringValidator.New(minLength, maxLength, invalidCharacters) end
---@param type System.Type
---@return boolean
function System.Configuration.NullableStringValidator:CanValidate(type) end
---@param value System.Object
function System.Configuration.NullableStringValidator:Validate(value) end

---@class System.Collections.Concurrent.SplitOrderedList : System.Object
---@field Count number
System.Collections.Concurrent.SplitOrderedList = {}
---@alias CS.System.Collections.Concurrent.SplitOrderedList System.Collections.Concurrent.SplitOrderedList
CS.System.Collections.Concurrent.SplitOrderedList = System.Collections.Concurrent.SplitOrderedList

---@param comparer System.Collections.Generic.IEqualityComparer[TKey]
---@return System.Collections.Concurrent.SplitOrderedList
function System.Collections.Concurrent.SplitOrderedList.New(comparer) end
---@overload fun(self: System.Collections.Concurrent.SplitOrderedList, key: number, subKey: TKey, addGetter: System.Func[T], updateGetter: System.Func[T,T]) : T
---@param key number
---@param subKey TKey
---@param addValue T
---@param updateValue T
---@return T
function System.Collections.Concurrent.SplitOrderedList:InsertOrUpdate(key, subKey, addValue, updateValue) end
---@param key number
---@param subKey TKey
---@param data T
---@return boolean
function System.Collections.Concurrent.SplitOrderedList:Insert(key, subKey, data) end
---@param key number
---@param subKey TKey
---@param data T
---@param dataCreator System.Func[T]
---@return T
function System.Collections.Concurrent.SplitOrderedList:InsertOrGet(key, subKey, data, dataCreator) end
---@param key number
---@param subKey TKey
---@param out_data T
---@return boolean,T
function System.Collections.Concurrent.SplitOrderedList:Find(key, subKey, out_data) end
---@param key number
---@param subKey TKey
---@param data T
---@param check System.Func[T,System.Boolean]
---@return boolean
function System.Collections.Concurrent.SplitOrderedList:CompareExchange(key, subKey, data, check) end
---@param key number
---@param subKey TKey
---@param out_data T
---@return boolean,T
function System.Collections.Concurrent.SplitOrderedList:Delete(key, subKey, out_data) end
---@return System.Collections.Generic.IEnumerator[T]
function System.Collections.Concurrent.SplitOrderedList:GetEnumerator() end

---@class System.Collections.Concurrent.SplitOrderedList.Node : System.Object
---@field Marked boolean
---@field Key number
---@field SubKey TKey
---@field Data T
---@field Next System.Collections.Concurrent.SplitOrderedList.Node
System.Collections.Concurrent.SplitOrderedList.Node = {}
---@alias CS.System.Collections.Concurrent.SplitOrderedList.Node System.Collections.Concurrent.SplitOrderedList.Node
CS.System.Collections.Concurrent.SplitOrderedList.Node = System.Collections.Concurrent.SplitOrderedList.Node

---@return System.Collections.Concurrent.SplitOrderedList.Node
function System.Collections.Concurrent.SplitOrderedList.Node.New() end
---@overload fun(self: System.Collections.Concurrent.SplitOrderedList.Node, key: number, subKey: TKey, data: T) : System.Collections.Concurrent.SplitOrderedList.Node
---@overload fun(self: System.Collections.Concurrent.SplitOrderedList.Node, key: number) : System.Collections.Concurrent.SplitOrderedList.Node
---@param wrapped System.Collections.Concurrent.SplitOrderedList.Node
---@return System.Collections.Concurrent.SplitOrderedList.Node
function System.Collections.Concurrent.SplitOrderedList.Node:Init(wrapped) end

---@class System.Collections.Concurrent.SplitOrderedList.SimpleRwLock : System.ValueType
System.Collections.Concurrent.SplitOrderedList.SimpleRwLock = {}
---@alias CS.System.Collections.Concurrent.SplitOrderedList.SimpleRwLock System.Collections.Concurrent.SplitOrderedList.SimpleRwLock
CS.System.Collections.Concurrent.SplitOrderedList.SimpleRwLock = System.Collections.Concurrent.SplitOrderedList.SimpleRwLock

function System.Collections.Concurrent.SplitOrderedList.SimpleRwLock:EnterReadLock() end
function System.Collections.Concurrent.SplitOrderedList.SimpleRwLock:ExitReadLock() end
function System.Collections.Concurrent.SplitOrderedList.SimpleRwLock:EnterWriteLock() end
function System.Collections.Concurrent.SplitOrderedList.SimpleRwLock:ExitWriteLock() end

---@class System.Resources.AssemblyNamesTypeResolutionService : System.Object
System.Resources.AssemblyNamesTypeResolutionService = {}
---@alias CS.System.Resources.AssemblyNamesTypeResolutionService System.Resources.AssemblyNamesTypeResolutionService
CS.System.Resources.AssemblyNamesTypeResolutionService = System.Resources.AssemblyNamesTypeResolutionService

---@param names System.Reflection.AssemblyName[]
---@return System.Resources.AssemblyNamesTypeResolutionService
function System.Resources.AssemblyNamesTypeResolutionService.New(names) end
---@overload fun(self: System.Resources.AssemblyNamesTypeResolutionService, name: System.Reflection.AssemblyName) : System.Reflection.Assembly
---@param name System.Reflection.AssemblyName
---@param throwOnError boolean
---@return System.Reflection.Assembly
function System.Resources.AssemblyNamesTypeResolutionService:GetAssembly(name, throwOnError) end
---@overload fun(self: System.Resources.AssemblyNamesTypeResolutionService, name: string) : System.Type
---@overload fun(self: System.Resources.AssemblyNamesTypeResolutionService, name: string, throwOnError: boolean) : System.Type
---@param name string
---@param throwOnError boolean
---@param ignoreCase boolean
---@return System.Type
function System.Resources.AssemblyNamesTypeResolutionService:GetType(name, throwOnError, ignoreCase) end
---@param name System.Reflection.AssemblyName
function System.Resources.AssemblyNamesTypeResolutionService:ReferenceAssembly(name) end
---@param name System.Reflection.AssemblyName
---@return string
function System.Resources.AssemblyNamesTypeResolutionService:GetPathOfAssembly(name) end

---@class System.Resources.ByteArrayFromResXHandler : System.Resources.ResXDataNodeHandler
---@field DataString string
System.Resources.ByteArrayFromResXHandler = {}
---@alias CS.System.Resources.ByteArrayFromResXHandler System.Resources.ByteArrayFromResXHandler
CS.System.Resources.ByteArrayFromResXHandler = System.Resources.ByteArrayFromResXHandler

---@param data string
---@return System.Resources.ByteArrayFromResXHandler
function System.Resources.ByteArrayFromResXHandler.New(data) end
---@overload fun(self: System.Resources.ByteArrayFromResXHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Object
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Object
function System.Resources.ByteArrayFromResXHandler:GetValue(assemblyNames) end
---@overload fun(self: System.Resources.ByteArrayFromResXHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return string
function System.Resources.ByteArrayFromResXHandler:GetValueTypeName(assemblyNames) end

---@class System.Resources.FileRefHandler : System.Resources.ResXDataNodeHandler
System.Resources.FileRefHandler = {}
---@alias CS.System.Resources.FileRefHandler System.Resources.FileRefHandler
CS.System.Resources.FileRefHandler = System.Resources.FileRefHandler

---@param fileRef System.Resources.ResXFileRef
---@return System.Resources.FileRefHandler
function System.Resources.FileRefHandler.New(fileRef) end
---@overload fun(self: System.Resources.FileRefHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Object
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Object
function System.Resources.FileRefHandler:GetValue(assemblyNames) end
---@overload fun(self: System.Resources.FileRefHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return string
function System.Resources.FileRefHandler:GetValueTypeName(assemblyNames) end

---@class System.Resources.InMemoryHandler : System.Resources.ResXDataNodeHandler
System.Resources.InMemoryHandler = {}
---@alias CS.System.Resources.InMemoryHandler System.Resources.InMemoryHandler
CS.System.Resources.InMemoryHandler = System.Resources.InMemoryHandler

---@param valueObject System.Object
---@return System.Resources.InMemoryHandler
function System.Resources.InMemoryHandler.New(valueObject) end
---@overload fun(self: System.Resources.InMemoryHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Object
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Object
function System.Resources.InMemoryHandler:GetValue(assemblyNames) end
---@overload fun(self: System.Resources.InMemoryHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return string
function System.Resources.InMemoryHandler:GetValueTypeName(assemblyNames) end

---@class System.Resources.NullRefHandler : System.Resources.ResXDataNodeHandler
---@field DataString string
System.Resources.NullRefHandler = {}
---@alias CS.System.Resources.NullRefHandler System.Resources.NullRefHandler
CS.System.Resources.NullRefHandler = System.Resources.NullRefHandler

---@param _dataString string
---@return System.Resources.NullRefHandler
function System.Resources.NullRefHandler.New(_dataString) end
---@overload fun(self: System.Resources.NullRefHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Object
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Object
function System.Resources.NullRefHandler:GetValue(assemblyNames) end
---@overload fun(self: System.Resources.NullRefHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return string
function System.Resources.NullRefHandler:GetValueTypeName(assemblyNames) end

---@class System.Resources.ResXDataNode : System.Object
---@field Comment string
---@field FileRef System.Resources.ResXFileRef
---@field Name string
System.Resources.ResXDataNode = {}
---@alias CS.System.Resources.ResXDataNode System.Resources.ResXDataNode
CS.System.Resources.ResXDataNode = System.Resources.ResXDataNode

---@overload fun(name: string, value: System.Object) : System.Resources.ResXDataNode
---@param name string
---@param fileRef System.Resources.ResXFileRef
---@return System.Resources.ResXDataNode
function System.Resources.ResXDataNode.New(name, fileRef) end
---@return System.Drawing.Point
function System.Resources.ResXDataNode:GetNodePosition() end
---@overload fun(self: System.Resources.ResXDataNode, names: System.Reflection.AssemblyName[]) : string
---@param typeResolver System.ComponentModel.Design.ITypeResolutionService
---@return string
function System.Resources.ResXDataNode:GetValueTypeName(typeResolver) end
---@overload fun(self: System.Resources.ResXDataNode, names: System.Reflection.AssemblyName[]) : System.Object
---@param typeResolver System.ComponentModel.Design.ITypeResolutionService
---@return System.Object
function System.Resources.ResXDataNode:GetValue(typeResolver) end

---@class System.Resources.IWritableHandler
---@field DataString string
System.Resources.IWritableHandler = {}
---@alias CS.System.Resources.IWritableHandler System.Resources.IWritableHandler
CS.System.Resources.IWritableHandler = System.Resources.IWritableHandler


---@class System.Resources.ResXDataNodeHandler : System.Object
System.Resources.ResXDataNodeHandler = {}
---@alias CS.System.Resources.ResXDataNodeHandler System.Resources.ResXDataNodeHandler
CS.System.Resources.ResXDataNodeHandler = System.Resources.ResXDataNodeHandler

---@overload fun(self: System.Resources.ResXDataNodeHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Object
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Object
function System.Resources.ResXDataNodeHandler:GetValue(assemblyNames) end
---@overload fun(self: System.Resources.ResXDataNodeHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return string
function System.Resources.ResXDataNodeHandler:GetValueTypeName(assemblyNames) end
---@return System.Object
function System.Resources.ResXDataNodeHandler:GetValueForResX() end

---@class System.Resources.ResXFileRef : System.Object
---@field FileName string
---@field TextFileEncoding System.Text.Encoding
---@field TypeName string
System.Resources.ResXFileRef = {}
---@alias CS.System.Resources.ResXFileRef System.Resources.ResXFileRef
CS.System.Resources.ResXFileRef = System.Resources.ResXFileRef

---@overload fun(fileName: string, typeName: string) : System.Resources.ResXFileRef
---@param fileName string
---@param typeName string
---@param textFileEncoding System.Text.Encoding
---@return System.Resources.ResXFileRef
function System.Resources.ResXFileRef.New(fileName, typeName, textFileEncoding) end
---@return string
function System.Resources.ResXFileRef:ToString() end

---@class System.Resources.ResXFileRef.Converter : System.ComponentModel.TypeConverter
System.Resources.ResXFileRef.Converter = {}
---@alias CS.System.Resources.ResXFileRef.Converter System.Resources.ResXFileRef.Converter
CS.System.Resources.ResXFileRef.Converter = System.Resources.ResXFileRef.Converter

---@return System.Resources.ResXFileRef.Converter
function System.Resources.ResXFileRef.Converter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Resources.ResXFileRef.Converter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Resources.ResXFileRef.Converter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Resources.ResXFileRef.Converter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Resources.ResXFileRef.Converter:ConvertTo(context, culture, value, destinationType) end

---@class System.Resources.ResXNullRef : System.Object
System.Resources.ResXNullRef = {}
---@alias CS.System.Resources.ResXNullRef System.Resources.ResXNullRef
CS.System.Resources.ResXNullRef = System.Resources.ResXNullRef

---@return System.Resources.ResXNullRef
function System.Resources.ResXNullRef.New() end

---@class System.Resources.ResXResourceReader : System.Object
---@field BasePath string
---@field UseResXDataNodes boolean
System.Resources.ResXResourceReader = {}
---@alias CS.System.Resources.ResXResourceReader System.Resources.ResXResourceReader
CS.System.Resources.ResXResourceReader = System.Resources.ResXResourceReader

---@overload fun(stream: System.IO.Stream) : System.Resources.ResXResourceReader
---@overload fun(stream: System.IO.Stream, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Resources.ResXResourceReader
---@overload fun(fileName: string) : System.Resources.ResXResourceReader
---@overload fun(fileName: string, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Resources.ResXResourceReader
---@overload fun(reader: System.IO.TextReader) : System.Resources.ResXResourceReader
---@overload fun(reader: System.IO.TextReader, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Resources.ResXResourceReader
---@overload fun(stream: System.IO.Stream, assemblyNames: System.Reflection.AssemblyName[]) : System.Resources.ResXResourceReader
---@overload fun(fileName: string, assemblyNames: System.Reflection.AssemblyName[]) : System.Resources.ResXResourceReader
---@param reader System.IO.TextReader
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Resources.ResXResourceReader
function System.Resources.ResXResourceReader.New(reader, assemblyNames) end
---@overload fun(fileContents: string) : System.Resources.ResXResourceReader
---@overload fun(fileContents: string, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Resources.ResXResourceReader
---@param fileContents string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Resources.ResXResourceReader
function System.Resources.ResXResourceReader.FromFileContents(fileContents, assemblyNames) end
function System.Resources.ResXResourceReader:Close() end
---@return System.Collections.IDictionaryEnumerator
function System.Resources.ResXResourceReader:GetEnumerator() end
---@return System.Collections.IDictionaryEnumerator
function System.Resources.ResXResourceReader:GetMetadataEnumerator() end

---@class System.Resources.ResXResourceReader.ResXHeader : System.Object
---@field ResMimeType string
---@field Reader string
---@field Version string
---@field Writer string
---@field IsValid boolean
System.Resources.ResXResourceReader.ResXHeader = {}
---@alias CS.System.Resources.ResXResourceReader.ResXHeader System.Resources.ResXResourceReader.ResXHeader
CS.System.Resources.ResXResourceReader.ResXHeader = System.Resources.ResXResourceReader.ResXHeader

---@return System.Resources.ResXResourceReader.ResXHeader
function System.Resources.ResXResourceReader.ResXHeader.New() end
function System.Resources.ResXResourceReader.ResXHeader:Verify() end

---@class System.Resources.ResXResourceSet : System.Resources.ResourceSet
System.Resources.ResXResourceSet = {}
---@alias CS.System.Resources.ResXResourceSet System.Resources.ResXResourceSet
CS.System.Resources.ResXResourceSet = System.Resources.ResXResourceSet

---@overload fun(stream: System.IO.Stream) : System.Resources.ResXResourceSet
---@param fileName string
---@return System.Resources.ResXResourceSet
function System.Resources.ResXResourceSet.New(fileName) end
---@return System.Type
function System.Resources.ResXResourceSet:GetDefaultReader() end
---@return System.Type
function System.Resources.ResXResourceSet:GetDefaultWriter() end

---@class System.Resources.ResXResourceWriter : System.Object
---@field BinSerializedObjectMimeType string
---@field ByteArraySerializedObjectMimeType string
---@field DefaultSerializedObjectMimeType string
---@field ResMimeType string
---@field ResourceSchema string
---@field SoapSerializedObjectMimeType string
---@field Version string
---@field BasePath string
System.Resources.ResXResourceWriter = {}
---@alias CS.System.Resources.ResXResourceWriter System.Resources.ResXResourceWriter
CS.System.Resources.ResXResourceWriter = System.Resources.ResXResourceWriter

---@overload fun(stream: System.IO.Stream) : System.Resources.ResXResourceWriter
---@overload fun(textWriter: System.IO.TextWriter) : System.Resources.ResXResourceWriter
---@param fileName string
---@return System.Resources.ResXResourceWriter
function System.Resources.ResXResourceWriter.New(fileName) end
---@overload fun(self: System.Resources.ResXResourceWriter, name: string, value: System.Byte[])
---@overload fun(self: System.Resources.ResXResourceWriter, name: string, value: System.Object)
---@overload fun(self: System.Resources.ResXResourceWriter, name: string, value: string)
---@param node System.Resources.ResXDataNode
function System.Resources.ResXResourceWriter:AddResource(node) end
---@param aliasName string
---@param assemblyName System.Reflection.AssemblyName
function System.Resources.ResXResourceWriter:AddAlias(aliasName, assemblyName) end
---@overload fun(self: System.Resources.ResXResourceWriter, name: string, value: string)
---@overload fun(self: System.Resources.ResXResourceWriter, name: string, value: System.Byte[])
---@param name string
---@param value System.Object
function System.Resources.ResXResourceWriter:AddMetadata(name, value) end
function System.Resources.ResXResourceWriter:Close() end
function System.Resources.ResXResourceWriter:Dispose() end
function System.Resources.ResXResourceWriter:Generate() end

---@class System.Resources.SerializedFromResXHandler : System.Resources.ResXDataNodeHandler
---@field DataString string
System.Resources.SerializedFromResXHandler = {}
---@alias CS.System.Resources.SerializedFromResXHandler System.Resources.SerializedFromResXHandler
CS.System.Resources.SerializedFromResXHandler = System.Resources.SerializedFromResXHandler

---@param data string
---@param _mime_type string
---@return System.Resources.SerializedFromResXHandler
function System.Resources.SerializedFromResXHandler.New(data, _mime_type) end
---@overload fun(self: System.Resources.SerializedFromResXHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Object
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Object
function System.Resources.SerializedFromResXHandler:GetValue(assemblyNames) end
---@overload fun(self: System.Resources.SerializedFromResXHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return string
function System.Resources.SerializedFromResXHandler:GetValueTypeName(assemblyNames) end

---@class System.Resources.SerializedFromResXHandler.CustomBinder : System.Runtime.Serialization.SerializationBinder
System.Resources.SerializedFromResXHandler.CustomBinder = {}
---@alias CS.System.Resources.SerializedFromResXHandler.CustomBinder System.Resources.SerializedFromResXHandler.CustomBinder
CS.System.Resources.SerializedFromResXHandler.CustomBinder = System.Resources.SerializedFromResXHandler.CustomBinder

---@param _typeResolver System.ComponentModel.Design.ITypeResolutionService
---@return System.Resources.SerializedFromResXHandler.CustomBinder
function System.Resources.SerializedFromResXHandler.CustomBinder.New(_typeResolver) end
---@param assemblyName string
---@param typeName string
---@return System.Type
function System.Resources.SerializedFromResXHandler.CustomBinder:BindToType(assemblyName, typeName) end

---@class System.Resources.TypeConverterFromResXHandler : System.Resources.ResXDataNodeHandler
---@field DataString string
System.Resources.TypeConverterFromResXHandler = {}
---@alias CS.System.Resources.TypeConverterFromResXHandler System.Resources.TypeConverterFromResXHandler
CS.System.Resources.TypeConverterFromResXHandler = System.Resources.TypeConverterFromResXHandler

---@param data string
---@param _mime_type string
---@param _typeString string
---@return System.Resources.TypeConverterFromResXHandler
function System.Resources.TypeConverterFromResXHandler.New(data, _mime_type, _typeString) end
---@overload fun(self: System.Resources.TypeConverterFromResXHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : System.Object
---@param assemblyNames System.Reflection.AssemblyName[]
---@return System.Object
function System.Resources.TypeConverterFromResXHandler:GetValue(assemblyNames) end
---@overload fun(self: System.Resources.TypeConverterFromResXHandler, typeResolver: System.ComponentModel.Design.ITypeResolutionService) : string
---@param assemblyNames System.Reflection.AssemblyName[]
---@return string
function System.Resources.TypeConverterFromResXHandler:GetValueTypeName(assemblyNames) end

---@class System.Data.Design.TypedDataSetGenerator : System.Object
---@field ReferencedAssemblies System.Collections.Generic.ICollection
System.Data.Design.TypedDataSetGenerator = {}
---@alias CS.System.Data.Design.TypedDataSetGenerator System.Data.Design.TypedDataSetGenerator
CS.System.Data.Design.TypedDataSetGenerator = System.Data.Design.TypedDataSetGenerator

---@overload fun(dataSet: System.Data.DataSet, codeNamespace: System.CodeDom.CodeNamespace, codeProvider: System.CodeDom.Compiler.CodeDomProvider) : string
---@overload fun(inputFileContent: string, compileUnit: System.CodeDom.CodeCompileUnit, mainNamespace: System.CodeDom.CodeNamespace, codeProvider: System.CodeDom.Compiler.CodeDomProvider) : string
---@overload fun(inputFileContent: string, compileUnit: System.CodeDom.CodeCompileUnit, mainNamespace: System.CodeDom.CodeNamespace, codeProvider: System.CodeDom.Compiler.CodeDomProvider, customDBProviders: System.Collections.Hashtable)
---@overload fun(inputFileContent: string, compileUnit: System.CodeDom.CodeCompileUnit, mainNamespace: System.CodeDom.CodeNamespace, codeProvider: System.CodeDom.Compiler.CodeDomProvider, specifiedFactory: System.Data.Common.DbProviderFactory)
---@overload fun(inputFileContent: string, compileUnit: System.CodeDom.CodeCompileUnit, mainNamespace: System.CodeDom.CodeNamespace, codeProvider: System.CodeDom.Compiler.CodeDomProvider, option: System.Data.Design.TypedDataSetGenerator.GenerateOption) : string
---@param inputFileContent string
---@param compileUnit System.CodeDom.CodeCompileUnit
---@param mainNamespace System.CodeDom.CodeNamespace
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@param customDBProviders System.Collections.Hashtable
---@param option System.Data.Design.TypedDataSetGenerator.GenerateOption
function System.Data.Design.TypedDataSetGenerator.Generate(inputFileContent, compileUnit, mainNamespace, codeProvider, customDBProviders, option) end
---@overload fun(inputFileContent: string) : string
---@param inputFileContent string
---@param tableName string
---@return string
function System.Data.Design.TypedDataSetGenerator.GetProviderName(inputFileContent, tableName) end

---@class System.Data.Design.TypedDataSetGenerator.GenerateOption
---@field None System.Data.Design.TypedDataSetGenerator.GenerateOption
---@field HierarchicalUpdate System.Data.Design.TypedDataSetGenerator.GenerateOption
---@field LinqOverTypedDatasets System.Data.Design.TypedDataSetGenerator.GenerateOption
System.Data.Design.TypedDataSetGenerator.GenerateOption = {}
---@alias CS.System.Data.Design.TypedDataSetGenerator.GenerateOption System.Data.Design.TypedDataSetGenerator.GenerateOption
CS.System.Data.Design.TypedDataSetGenerator.GenerateOption = System.Data.Design.TypedDataSetGenerator.GenerateOption


---@class System.Runtime.CompilerServices.FriendAccessAllowedAttribute : System.Attribute
System.Runtime.CompilerServices.FriendAccessAllowedAttribute = {}
---@alias CS.System.Runtime.CompilerServices.FriendAccessAllowedAttribute System.Runtime.CompilerServices.FriendAccessAllowedAttribute
CS.System.Runtime.CompilerServices.FriendAccessAllowedAttribute = System.Runtime.CompilerServices.FriendAccessAllowedAttribute

---@return System.Runtime.CompilerServices.FriendAccessAllowedAttribute
function System.Runtime.CompilerServices.FriendAccessAllowedAttribute.New() end

---@class System.Web.UplevelHelper : System.Object
System.Web.UplevelHelper = {}
---@alias CS.System.Web.UplevelHelper System.Web.UplevelHelper
CS.System.Web.UplevelHelper = System.Web.UplevelHelper

---@return System.Web.UplevelHelper
function System.Web.UplevelHelper.New() end
---@param ua string
---@return boolean
function System.Web.UplevelHelper.IsUplevel(ua) end

---@class System.Web.HttpApplicationStateBase : System.Collections.Specialized.NameObjectCollectionBase
---@field AllKeys System.String[]
---@field Contents System.Web.HttpApplicationStateBase
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Object
---@field Item System.Object
---@field StaticObjects System.Web.HttpStaticObjectsCollectionBase
System.Web.HttpApplicationStateBase = {}
---@alias CS.System.Web.HttpApplicationStateBase System.Web.HttpApplicationStateBase
CS.System.Web.HttpApplicationStateBase = System.Web.HttpApplicationStateBase

---@param name string
---@param value System.Object
function System.Web.HttpApplicationStateBase:Add(name, value) end
function System.Web.HttpApplicationStateBase:Clear() end
---@param array System.Array
---@param index number
function System.Web.HttpApplicationStateBase:CopyTo(array, index) end
---@overload fun(self: System.Web.HttpApplicationStateBase, index: number) : System.Object
---@param name string
---@return System.Object
function System.Web.HttpApplicationStateBase:Get(name) end
---@return System.Collections.IEnumerator
function System.Web.HttpApplicationStateBase:GetEnumerator() end
---@param index number
---@return string
function System.Web.HttpApplicationStateBase:GetKey(index) end
function System.Web.HttpApplicationStateBase:Lock() end
---@param name string
function System.Web.HttpApplicationStateBase:Remove(name) end
function System.Web.HttpApplicationStateBase:RemoveAll() end
---@param index number
function System.Web.HttpApplicationStateBase:RemoveAt(index) end
---@param name string
---@param value System.Object
function System.Web.HttpApplicationStateBase:Set(name, value) end
function System.Web.HttpApplicationStateBase:UnLock() end

---@class System.Web.HttpApplicationStateWrapper : System.Web.HttpApplicationStateBase
---@field AllKeys System.String[]
---@field Contents System.Web.HttpApplicationStateBase
---@field Count number
---@field IsSynchronized boolean
---@field Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
---@field SyncRoot System.Object
---@field Item System.Object
---@field Item System.Object
---@field StaticObjects System.Web.HttpStaticObjectsCollectionBase
System.Web.HttpApplicationStateWrapper = {}
---@alias CS.System.Web.HttpApplicationStateWrapper System.Web.HttpApplicationStateWrapper
CS.System.Web.HttpApplicationStateWrapper = System.Web.HttpApplicationStateWrapper

---@param httpApplicationState System.Web.HttpApplicationState
---@return System.Web.HttpApplicationStateWrapper
function System.Web.HttpApplicationStateWrapper.New(httpApplicationState) end
---@param name string
---@param value System.Object
function System.Web.HttpApplicationStateWrapper:Add(name, value) end
function System.Web.HttpApplicationStateWrapper:Clear() end
---@param array System.Array
---@param index number
function System.Web.HttpApplicationStateWrapper:CopyTo(array, index) end
---@overload fun(self: System.Web.HttpApplicationStateWrapper, index: number) : System.Object
---@param name string
---@return System.Object
function System.Web.HttpApplicationStateWrapper:Get(name) end
---@return System.Collections.IEnumerator
function System.Web.HttpApplicationStateWrapper:GetEnumerator() end
---@param index number
---@return string
function System.Web.HttpApplicationStateWrapper:GetKey(index) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.HttpApplicationStateWrapper:GetObjectData(info, context) end
function System.Web.HttpApplicationStateWrapper:Lock() end
---@param sender System.Object
function System.Web.HttpApplicationStateWrapper:OnDeserialization(sender) end
---@param name string
function System.Web.HttpApplicationStateWrapper:Remove(name) end
function System.Web.HttpApplicationStateWrapper:RemoveAll() end
---@param index number
function System.Web.HttpApplicationStateWrapper:RemoveAt(index) end
---@param name string
---@param value System.Object
function System.Web.HttpApplicationStateWrapper:Set(name, value) end
function System.Web.HttpApplicationStateWrapper:UnLock() end

---@class System.Web.HttpBrowserCapabilitiesBase : System.Object
---@field ActiveXControls boolean
---@field Adapters System.Collections.IDictionary
---@field AOL boolean
---@field BackgroundSounds boolean
---@field Beta boolean
---@field Browser string
---@field Browsers System.Collections.ArrayList
---@field CanCombineFormsInDeck boolean
---@field CanInitiateVoiceCall boolean
---@field CanRenderAfterInputOrSelectElement boolean
---@field CanRenderEmptySelects boolean
---@field CanRenderInputAndSelectElementsTogether boolean
---@field CanRenderMixedSelects boolean
---@field CanRenderOneventAndPrevElementsTogether boolean
---@field CanRenderPostBackCards boolean
---@field CanRenderSetvarZeroWithMultiSelectionList boolean
---@field CanSendMail boolean
---@field Capabilities System.Collections.IDictionary
---@field CDF boolean
---@field ClrVersion System.Version
---@field Cookies boolean
---@field Crawler boolean
---@field DefaultSubmitButtonLimit number
---@field EcmaScriptVersion System.Version
---@field Frames boolean
---@field GatewayMajorVersion number
---@field GatewayMinorVersion number
---@field GatewayVersion string
---@field HasBackButton boolean
---@field HidesRightAlignedMultiselectScrollbars boolean
---@field HtmlTextWriter string
---@field Id string
---@field InputType string
---@field IsColor boolean
---@field IsMobileDevice boolean
---@field JavaApplets boolean
---@field JScriptVersion System.Version
---@field MajorVersion number
---@field MaximumHrefLength number
---@field MaximumRenderedPageSize number
---@field MaximumSoftkeyLabelLength number
---@field MinorVersion number
---@field MinorVersionString string
---@field MobileDeviceManufacturer string
---@field MobileDeviceModel string
---@field MSDomVersion System.Version
---@field NumberOfSoftkeys number
---@field Platform string
---@field PreferredImageMime string
---@field PreferredRenderingMime string
---@field PreferredRenderingType string
---@field PreferredRequestEncoding string
---@field PreferredResponseEncoding string
---@field RendersBreakBeforeWmlSelectAndInput boolean
---@field RendersBreaksAfterHtmlLists boolean
---@field RendersBreaksAfterWmlAnchor boolean
---@field RendersBreaksAfterWmlInput boolean
---@field RendersWmlDoAcceptsInline boolean
---@field RendersWmlSelectsAsMenuCards boolean
---@field RequiredMetaTagNameValue string
---@field RequiresAttributeColonSubstitution boolean
---@field RequiresContentTypeMetaTag boolean
---@field RequiresControlStateInSession boolean
---@field RequiresDBCSCharacter boolean
---@field RequiresHtmlAdaptiveErrorReporting boolean
---@field RequiresLeadingPageBreak boolean
---@field RequiresNoBreakInFormatting boolean
---@field RequiresOutputOptimization boolean
---@field RequiresPhoneNumbersAsPlainText boolean
---@field RequiresSpecialViewStateEncoding boolean
---@field RequiresUniqueFilePathSuffix boolean
---@field RequiresUniqueHtmlCheckboxNames boolean
---@field RequiresUniqueHtmlInputNames boolean
---@field RequiresUrlEncodedPostfieldValues boolean
---@field ScreenBitDepth number
---@field ScreenCharactersHeight number
---@field ScreenCharactersWidth number
---@field ScreenPixelsHeight number
---@field ScreenPixelsWidth number
---@field SupportsAccesskeyAttribute boolean
---@field SupportsBodyColor boolean
---@field SupportsBold boolean
---@field SupportsCacheControlMetaTag boolean
---@field SupportsCallback boolean
---@field SupportsCss boolean
---@field SupportsDivAlign boolean
---@field SupportsDivNoWrap boolean
---@field SupportsEmptyStringInCookieValue boolean
---@field SupportsFontColor boolean
---@field SupportsFontName boolean
---@field SupportsFontSize boolean
---@field SupportsImageSubmit boolean
---@field SupportsIModeSymbols boolean
---@field SupportsInputIStyle boolean
---@field SupportsInputMode boolean
---@field SupportsItalic boolean
---@field SupportsJPhoneMultiMediaAttributes boolean
---@field SupportsJPhoneSymbols boolean
---@field SupportsQueryStringInFormAction boolean
---@field SupportsRedirectWithCookie boolean
---@field SupportsSelectMultiple boolean
---@field SupportsUncheck boolean
---@field SupportsXmlHttp boolean
---@field Tables boolean
---@field TagWriter System.Type
---@field Type string
---@field UseOptimizedCacheKey boolean
---@field VBScript boolean
---@field Version string
---@field W3CDomVersion System.Version
---@field Win16 boolean
---@field Win32 boolean
---@field Item string
System.Web.HttpBrowserCapabilitiesBase = {}
---@alias CS.System.Web.HttpBrowserCapabilitiesBase System.Web.HttpBrowserCapabilitiesBase
CS.System.Web.HttpBrowserCapabilitiesBase = System.Web.HttpBrowserCapabilitiesBase

---@param browserName string
function System.Web.HttpBrowserCapabilitiesBase:AddBrowser(browserName) end
---@param w System.IO.TextWriter
---@return System.Web.UI.HtmlTextWriter
function System.Web.HttpBrowserCapabilitiesBase:CreateHtmlTextWriter(w) end
function System.Web.HttpBrowserCapabilitiesBase:DisableOptimizedCacheKey() end
---@return System.Version[]
function System.Web.HttpBrowserCapabilitiesBase:GetClrVersions() end
---@param browserName string
---@return boolean
function System.Web.HttpBrowserCapabilitiesBase:IsBrowser(browserName) end
---@param filter1 string
---@param filter2 string
---@return number
function System.Web.HttpBrowserCapabilitiesBase:CompareFilters(filter1, filter2) end
---@param filterName string
---@return boolean
function System.Web.HttpBrowserCapabilitiesBase:EvaluateFilter(filterName) end

---@class System.Web.HttpBrowserCapabilitiesWrapper : System.Web.HttpBrowserCapabilitiesBase
---@field Browser string
---@field EcmaScriptVersion System.Version
---@field JScriptVersion System.Version
---@field SupportsCallback boolean
---@field W3CDomVersion System.Version
---@field ActiveXControls boolean
---@field Adapters System.Collections.IDictionary
---@field AOL boolean
---@field BackgroundSounds boolean
---@field Beta boolean
---@field Browsers System.Collections.ArrayList
---@field CanCombineFormsInDeck boolean
---@field CanInitiateVoiceCall boolean
---@field CanRenderAfterInputOrSelectElement boolean
---@field CanRenderEmptySelects boolean
---@field CanRenderInputAndSelectElementsTogether boolean
---@field CanRenderMixedSelects boolean
---@field CanRenderOneventAndPrevElementsTogether boolean
---@field CanRenderPostBackCards boolean
---@field CanRenderSetvarZeroWithMultiSelectionList boolean
---@field CanSendMail boolean
---@field Capabilities System.Collections.IDictionary
---@field CDF boolean
---@field ClrVersion System.Version
---@field Cookies boolean
---@field Crawler boolean
---@field DefaultSubmitButtonLimit number
---@field Frames boolean
---@field GatewayMajorVersion number
---@field GatewayMinorVersion number
---@field GatewayVersion string
---@field HasBackButton boolean
---@field HidesRightAlignedMultiselectScrollbars boolean
---@field HtmlTextWriter string
---@field Id string
---@field InputType string
---@field IsColor boolean
---@field IsMobileDevice boolean
---@field JavaApplets boolean
---@field MajorVersion number
---@field MaximumHrefLength number
---@field MaximumRenderedPageSize number
---@field MaximumSoftkeyLabelLength number
---@field MinorVersion number
---@field MinorVersionString string
---@field MobileDeviceManufacturer string
---@field MobileDeviceModel string
---@field MSDomVersion System.Version
---@field NumberOfSoftkeys number
---@field Platform string
---@field PreferredImageMime string
---@field PreferredRenderingMime string
---@field PreferredRenderingType string
---@field PreferredRequestEncoding string
---@field PreferredResponseEncoding string
---@field RendersBreakBeforeWmlSelectAndInput boolean
---@field RendersBreaksAfterHtmlLists boolean
---@field RendersBreaksAfterWmlAnchor boolean
---@field RendersBreaksAfterWmlInput boolean
---@field RendersWmlDoAcceptsInline boolean
---@field RendersWmlSelectsAsMenuCards boolean
---@field RequiredMetaTagNameValue string
---@field RequiresAttributeColonSubstitution boolean
---@field RequiresContentTypeMetaTag boolean
---@field RequiresControlStateInSession boolean
---@field RequiresDBCSCharacter boolean
---@field RequiresHtmlAdaptiveErrorReporting boolean
---@field RequiresLeadingPageBreak boolean
---@field RequiresNoBreakInFormatting boolean
---@field RequiresOutputOptimization boolean
---@field RequiresPhoneNumbersAsPlainText boolean
---@field RequiresSpecialViewStateEncoding boolean
---@field RequiresUniqueFilePathSuffix boolean
---@field RequiresUniqueHtmlCheckboxNames boolean
---@field RequiresUniqueHtmlInputNames boolean
---@field RequiresUrlEncodedPostfieldValues boolean
---@field ScreenBitDepth number
---@field ScreenCharactersHeight number
---@field ScreenCharactersWidth number
---@field ScreenPixelsHeight number
---@field ScreenPixelsWidth number
---@field SupportsAccesskeyAttribute boolean
---@field SupportsBodyColor boolean
---@field SupportsBold boolean
---@field SupportsCacheControlMetaTag boolean
---@field SupportsCss boolean
---@field SupportsDivAlign boolean
---@field SupportsDivNoWrap boolean
---@field SupportsEmptyStringInCookieValue boolean
---@field SupportsFontColor boolean
---@field SupportsFontName boolean
---@field SupportsFontSize boolean
---@field SupportsImageSubmit boolean
---@field SupportsIModeSymbols boolean
---@field SupportsInputIStyle boolean
---@field SupportsInputMode boolean
---@field SupportsItalic boolean
---@field SupportsJPhoneMultiMediaAttributes boolean
---@field SupportsJPhoneSymbols boolean
---@field SupportsQueryStringInFormAction boolean
---@field SupportsRedirectWithCookie boolean
---@field SupportsSelectMultiple boolean
---@field SupportsUncheck boolean
---@field SupportsXmlHttp boolean
---@field Tables boolean
---@field TagWriter System.Type
---@field Type string
---@field UseOptimizedCacheKey boolean
---@field VBScript boolean
---@field Version string
---@field Win16 boolean
---@field Win32 boolean
---@field Item string
System.Web.HttpBrowserCapabilitiesWrapper = {}
---@alias CS.System.Web.HttpBrowserCapabilitiesWrapper System.Web.HttpBrowserCapabilitiesWrapper
CS.System.Web.HttpBrowserCapabilitiesWrapper = System.Web.HttpBrowserCapabilitiesWrapper

---@param httpBrowserCapabilities System.Web.HttpBrowserCapabilities
---@return System.Web.HttpBrowserCapabilitiesWrapper
function System.Web.HttpBrowserCapabilitiesWrapper.New(httpBrowserCapabilities) end
---@param browserName string
function System.Web.HttpBrowserCapabilitiesWrapper:AddBrowser(browserName) end
---@param w System.IO.TextWriter
---@return System.Web.UI.HtmlTextWriter
function System.Web.HttpBrowserCapabilitiesWrapper:CreateHtmlTextWriter(w) end
function System.Web.HttpBrowserCapabilitiesWrapper:DisableOptimizedCacheKey() end
---@return System.Version[]
function System.Web.HttpBrowserCapabilitiesWrapper:GetClrVersions() end
---@param browserName string
---@return boolean
function System.Web.HttpBrowserCapabilitiesWrapper:IsBrowser(browserName) end
---@param filter1 string
---@param filter2 string
---@return number
function System.Web.HttpBrowserCapabilitiesWrapper:CompareFilters(filter1, filter2) end
---@param filterName string
---@return boolean
function System.Web.HttpBrowserCapabilitiesWrapper:EvaluateFilter(filterName) end

---@class System.Web.HttpCachePolicyBase : System.Object
---@field VaryByContentEncodings System.Web.HttpCacheVaryByContentEncodings
---@field VaryByHeaders System.Web.HttpCacheVaryByHeaders
---@field VaryByParams System.Web.HttpCacheVaryByParams
System.Web.HttpCachePolicyBase = {}
---@alias CS.System.Web.HttpCachePolicyBase System.Web.HttpCachePolicyBase
CS.System.Web.HttpCachePolicyBase = System.Web.HttpCachePolicyBase

---@param handler System.Web.HttpCacheValidateHandler
---@param data System.Object
function System.Web.HttpCachePolicyBase:AddValidationCallback(handler, data) end
---@param extension string
function System.Web.HttpCachePolicyBase:AppendCacheExtension(extension) end
---@param allow boolean
function System.Web.HttpCachePolicyBase:SetAllowResponseInBrowserHistory(allow) end
---@overload fun(self: System.Web.HttpCachePolicyBase, cacheability: System.Web.HttpCacheability)
---@param cacheability System.Web.HttpCacheability
---@param field string
function System.Web.HttpCachePolicyBase:SetCacheability(cacheability, field) end
---@param etag string
function System.Web.HttpCachePolicyBase:SetETag(etag) end
function System.Web.HttpCachePolicyBase:SetETagFromFileDependencies() end
---@param date System.DateTime
function System.Web.HttpCachePolicyBase:SetExpires(date) end
---@param date System.DateTime
function System.Web.HttpCachePolicyBase:SetLastModified(date) end
function System.Web.HttpCachePolicyBase:SetLastModifiedFromFileDependencies() end
---@param delta System.TimeSpan
function System.Web.HttpCachePolicyBase:SetMaxAge(delta) end
function System.Web.HttpCachePolicyBase:SetNoServerCaching() end
function System.Web.HttpCachePolicyBase:SetNoStore() end
function System.Web.HttpCachePolicyBase:SetNoTransforms() end
---@param omit boolean
function System.Web.HttpCachePolicyBase:SetOmitVaryStar(omit) end
---@param delta System.TimeSpan
function System.Web.HttpCachePolicyBase:SetProxyMaxAge(delta) end
---@param revalidation System.Web.HttpCacheRevalidation
function System.Web.HttpCachePolicyBase:SetRevalidation(revalidation) end
---@param slide boolean
function System.Web.HttpCachePolicyBase:SetSlidingExpiration(slide) end
---@param validUntilExpires boolean
function System.Web.HttpCachePolicyBase:SetValidUntilExpires(validUntilExpires) end
---@param custom string
function System.Web.HttpCachePolicyBase:SetVaryByCustom(custom) end

---@class System.Web.HttpCachePolicyWrapper : System.Web.HttpCachePolicyBase
---@field VaryByContentEncodings System.Web.HttpCacheVaryByContentEncodings
---@field VaryByHeaders System.Web.HttpCacheVaryByHeaders
---@field VaryByParams System.Web.HttpCacheVaryByParams
System.Web.HttpCachePolicyWrapper = {}
---@alias CS.System.Web.HttpCachePolicyWrapper System.Web.HttpCachePolicyWrapper
CS.System.Web.HttpCachePolicyWrapper = System.Web.HttpCachePolicyWrapper

---@param httpCachePolicy System.Web.HttpCachePolicy
---@return System.Web.HttpCachePolicyWrapper
function System.Web.HttpCachePolicyWrapper.New(httpCachePolicy) end
---@param handler System.Web.HttpCacheValidateHandler
---@param data System.Object
function System.Web.HttpCachePolicyWrapper:AddValidationCallback(handler, data) end
---@param extension string
function System.Web.HttpCachePolicyWrapper:AppendCacheExtension(extension) end
---@param allow boolean
function System.Web.HttpCachePolicyWrapper:SetAllowResponseInBrowserHistory(allow) end
---@overload fun(self: System.Web.HttpCachePolicyWrapper, cacheability: System.Web.HttpCacheability)
---@param cacheability System.Web.HttpCacheability
---@param field string
function System.Web.HttpCachePolicyWrapper:SetCacheability(cacheability, field) end
---@param etag string
function System.Web.HttpCachePolicyWrapper:SetETag(etag) end
function System.Web.HttpCachePolicyWrapper:SetETagFromFileDependencies() end
---@param date System.DateTime
function System.Web.HttpCachePolicyWrapper:SetExpires(date) end
---@param date System.DateTime
function System.Web.HttpCachePolicyWrapper:SetLastModified(date) end
function System.Web.HttpCachePolicyWrapper:SetLastModifiedFromFileDependencies() end
---@param delta System.TimeSpan
function System.Web.HttpCachePolicyWrapper:SetMaxAge(delta) end
function System.Web.HttpCachePolicyWrapper:SetNoServerCaching() end
function System.Web.HttpCachePolicyWrapper:SetNoStore() end
function System.Web.HttpCachePolicyWrapper:SetNoTransforms() end
---@param omit boolean
function System.Web.HttpCachePolicyWrapper:SetOmitVaryStar(omit) end
---@param delta System.TimeSpan
function System.Web.HttpCachePolicyWrapper:SetProxyMaxAge(delta) end
---@param revalidation System.Web.HttpCacheRevalidation
function System.Web.HttpCachePolicyWrapper:SetRevalidation(revalidation) end
---@param slide boolean
function System.Web.HttpCachePolicyWrapper:SetSlidingExpiration(slide) end
---@param validUntilExpires boolean
function System.Web.HttpCachePolicyWrapper:SetValidUntilExpires(validUntilExpires) end
---@param custom string
function System.Web.HttpCachePolicyWrapper:SetVaryByCustom(custom) end

---@class System.Web.HttpFileCollectionBase : System.Collections.Specialized.NameObjectCollectionBase
---@field AllKeys System.String[]
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Web.HttpPostedFileBase
---@field Item System.Web.HttpPostedFileBase
System.Web.HttpFileCollectionBase = {}
---@alias CS.System.Web.HttpFileCollectionBase System.Web.HttpFileCollectionBase
CS.System.Web.HttpFileCollectionBase = System.Web.HttpFileCollectionBase

---@param dest System.Array
---@param index number
function System.Web.HttpFileCollectionBase:CopyTo(dest, index) end
---@overload fun(self: System.Web.HttpFileCollectionBase, index: number) : System.Web.HttpPostedFileBase
---@param name string
---@return System.Web.HttpPostedFileBase
function System.Web.HttpFileCollectionBase:Get(name) end
---@param name string
---@return System.Collections.Generic.IList
function System.Web.HttpFileCollectionBase:GetMultiple(name) end
---@return System.Collections.IEnumerator
function System.Web.HttpFileCollectionBase:GetEnumerator() end
---@param index number
---@return string
function System.Web.HttpFileCollectionBase:GetKey(index) end

---@class System.Web.HttpPostedFileBase : System.Object
---@field ContentLength number
---@field ContentType string
---@field FileName string
---@field InputStream System.IO.Stream
System.Web.HttpPostedFileBase = {}
---@alias CS.System.Web.HttpPostedFileBase System.Web.HttpPostedFileBase
CS.System.Web.HttpPostedFileBase = System.Web.HttpPostedFileBase

---@param filename string
function System.Web.HttpPostedFileBase:SaveAs(filename) end

---@class System.Web.HttpPostedFileWrapper : System.Web.HttpPostedFileBase
---@field ContentLength number
---@field ContentType string
---@field FileName string
---@field InputStream System.IO.Stream
System.Web.HttpPostedFileWrapper = {}
---@alias CS.System.Web.HttpPostedFileWrapper System.Web.HttpPostedFileWrapper
CS.System.Web.HttpPostedFileWrapper = System.Web.HttpPostedFileWrapper

---@param httpPostedFile System.Web.HttpPostedFile
---@return System.Web.HttpPostedFileWrapper
function System.Web.HttpPostedFileWrapper.New(httpPostedFile) end
---@param filename string
function System.Web.HttpPostedFileWrapper:SaveAs(filename) end

---@class System.Web.HttpRequestBase : System.Object
---@field AcceptTypes System.String[]
---@field ApplicationPath string
---@field AnonymousID string
---@field AppRelativeCurrentExecutionFilePath string
---@field Browser System.Web.HttpBrowserCapabilitiesBase
---@field HttpChannelBinding System.Security.Authentication.ExtendedProtection.ChannelBinding
---@field ClientCertificate System.Web.HttpClientCertificate
---@field ContentEncoding System.Text.Encoding
---@field ContentLength number
---@field ContentType string
---@field Cookies System.Web.HttpCookieCollection
---@field CurrentExecutionFilePath string
---@field CurrentExecutionFilePathExtension string
---@field FilePath string
---@field Files System.Web.HttpFileCollectionBase
---@field Filter System.IO.Stream
---@field Form System.Collections.Specialized.NameValueCollection
---@field HttpMethod string
---@field InputStream System.IO.Stream
---@field IsAuthenticated boolean
---@field IsLocal boolean
---@field IsSecureConnection boolean
---@field LogonUserIdentity System.Security.Principal.WindowsIdentity
---@field Params System.Collections.Specialized.NameValueCollection
---@field Path string
---@field PathInfo string
---@field PhysicalApplicationPath string
---@field PhysicalPath string
---@field RawUrl string
---@field ReadEntityBodyMode System.Web.ReadEntityBodyMode
---@field RequestContext System.Web.Routing.RequestContext
---@field RequestType string
---@field ServerVariables System.Collections.Specialized.NameValueCollection
---@field TimedOutToken System.Threading.CancellationToken
---@field TlsTokenBindingInfo System.Web.ITlsTokenBindingInfo
---@field TotalBytes number
---@field Unvalidated System.Web.UnvalidatedRequestValuesBase
---@field Url System.Uri
---@field UrlReferrer System.Uri
---@field UserAgent string
---@field UserLanguages System.String[]
---@field UserHostAddress string
---@field UserHostName string
---@field Headers System.Collections.Specialized.NameValueCollection
---@field QueryString System.Collections.Specialized.NameValueCollection
---@field Item string
System.Web.HttpRequestBase = {}
---@alias CS.System.Web.HttpRequestBase System.Web.HttpRequestBase
CS.System.Web.HttpRequestBase = System.Web.HttpRequestBase

function System.Web.HttpRequestBase:Abort() end
---@param count number
---@return System.Byte[]
function System.Web.HttpRequestBase:BinaryRead(count) end
---@return System.IO.Stream
function System.Web.HttpRequestBase:GetBufferedInputStream() end
---@overload fun() : System.IO.Stream
---@param disableMaxRequestLength boolean
---@return System.IO.Stream
function System.Web.HttpRequestBase:GetBufferlessInputStream(disableMaxRequestLength) end
---@overload fun()
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.HttpRequestBase:InsertEntityBody(buffer, offset, count) end
---@param imageFieldName string
---@return System.Int32[]
function System.Web.HttpRequestBase:MapImageCoordinates(imageFieldName) end
---@param imageFieldName string
---@return System.Double[]
function System.Web.HttpRequestBase:MapRawImageCoordinates(imageFieldName) end
---@overload fun(self: System.Web.HttpRequestBase, virtualPath: string) : string
---@param virtualPath string
---@param baseVirtualDir string
---@param allowCrossAppMapping boolean
---@return string
function System.Web.HttpRequestBase:MapPath(virtualPath, baseVirtualDir, allowCrossAppMapping) end
function System.Web.HttpRequestBase:ValidateInput() end
---@param filename string
---@param includeHeaders boolean
function System.Web.HttpRequestBase:SaveAs(filename, includeHeaders) end

---@class System.Web.HttpResponseBase : System.Object
---@field Buffer boolean
---@field BufferOutput boolean
---@field Cache System.Web.HttpCachePolicyBase
---@field CacheControl string
---@field Charset string
---@field ClientDisconnectedToken System.Threading.CancellationToken
---@field ContentEncoding System.Text.Encoding
---@field ContentType string
---@field Cookies System.Web.HttpCookieCollection
---@field Expires number
---@field ExpiresAbsolute System.DateTime
---@field Filter System.IO.Stream
---@field Headers System.Collections.Specialized.NameValueCollection
---@field HeadersWritten boolean
---@field HeaderEncoding System.Text.Encoding
---@field IsClientConnected boolean
---@field IsRequestBeingRedirected boolean
---@field Output System.IO.TextWriter
---@field OutputStream System.IO.Stream
---@field RedirectLocation string
---@field Status string
---@field StatusCode number
---@field StatusDescription string
---@field SubStatusCode number
---@field SupportsAsyncFlush boolean
---@field SuppressContent boolean
---@field SuppressDefaultCacheControlHeader boolean
---@field SuppressFormsAuthenticationRedirect boolean
---@field TrySkipIisCustomErrors boolean
System.Web.HttpResponseBase = {}
---@alias CS.System.Web.HttpResponseBase System.Web.HttpResponseBase
CS.System.Web.HttpResponseBase = System.Web.HttpResponseBase

---@param cacheKey string
function System.Web.HttpResponseBase:AddCacheItemDependency(cacheKey) end
---@overload fun(self: System.Web.HttpResponseBase, cacheKeys: System.Collections.ArrayList)
---@param cacheKeys System.String[]
function System.Web.HttpResponseBase:AddCacheItemDependencies(cacheKeys) end
---@param dependencies System.Web.Caching.CacheDependency[]
function System.Web.HttpResponseBase:AddCacheDependency(dependencies) end
---@param filename string
function System.Web.HttpResponseBase:AddFileDependency(filename) end
---@overload fun(self: System.Web.HttpResponseBase, filenames: System.Collections.ArrayList)
---@param filenames System.String[]
function System.Web.HttpResponseBase:AddFileDependencies(filenames) end
---@param name string
---@param value string
function System.Web.HttpResponseBase:AddHeader(name, value) end
---@param callback System.Action
---@return System.Web.ISubscriptionToken
function System.Web.HttpResponseBase:AddOnSendingHeaders(callback) end
---@param cookie System.Web.HttpCookie
function System.Web.HttpResponseBase:AppendCookie(cookie) end
---@param name string
---@param value string
function System.Web.HttpResponseBase:AppendHeader(name, value) end
---@param param string
function System.Web.HttpResponseBase:AppendToLog(param) end
---@param virtualPath string
---@return string
function System.Web.HttpResponseBase:ApplyAppPathModifier(virtualPath) end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.HttpResponseBase:BeginFlush(callback, state) end
---@param buffer System.Byte[]
function System.Web.HttpResponseBase:BinaryWrite(buffer) end
function System.Web.HttpResponseBase:Clear() end
function System.Web.HttpResponseBase:ClearContent() end
function System.Web.HttpResponseBase:ClearHeaders() end
function System.Web.HttpResponseBase:Close() end
function System.Web.HttpResponseBase:DisableKernelCache() end
function System.Web.HttpResponseBase:DisableUserCache() end
function System.Web.HttpResponseBase:End() end
---@param asyncResult System.IAsyncResult
function System.Web.HttpResponseBase:EndFlush(asyncResult) end
function System.Web.HttpResponseBase:Flush() end
---@return System.Threading.Tasks.Task
function System.Web.HttpResponseBase:FlushAsync() end
---@param value string
function System.Web.HttpResponseBase:Pics(value) end
---@overload fun(self: System.Web.HttpResponseBase, url: string)
---@param url string
---@param endResponse boolean
function System.Web.HttpResponseBase:Redirect(url, endResponse) end
---@overload fun(self: System.Web.HttpResponseBase, routeValues: System.Object)
---@overload fun(self: System.Web.HttpResponseBase, routeName: string)
---@overload fun(self: System.Web.HttpResponseBase, routeValues: System.Web.Routing.RouteValueDictionary)
---@overload fun(self: System.Web.HttpResponseBase, routeName: string, routeValues: System.Object)
---@param routeName string
---@param routeValues System.Web.Routing.RouteValueDictionary
function System.Web.HttpResponseBase:RedirectToRoute(routeName, routeValues) end
---@overload fun(self: System.Web.HttpResponseBase, routeValues: System.Object)
---@overload fun(self: System.Web.HttpResponseBase, routeName: string)
---@overload fun(self: System.Web.HttpResponseBase, routeValues: System.Web.Routing.RouteValueDictionary)
---@overload fun(self: System.Web.HttpResponseBase, routeName: string, routeValues: System.Object)
---@param routeName string
---@param routeValues System.Web.Routing.RouteValueDictionary
function System.Web.HttpResponseBase:RedirectToRoutePermanent(routeName, routeValues) end
---@overload fun(self: System.Web.HttpResponseBase, url: string)
---@param url string
---@param endResponse boolean
function System.Web.HttpResponseBase:RedirectPermanent(url, endResponse) end
---@overload fun(self: System.Web.HttpResponseBase, path: string)
---@param path string
---@param providerName string
function System.Web.HttpResponseBase:RemoveOutputCacheItem(path, providerName) end
---@param cookie System.Web.HttpCookie
function System.Web.HttpResponseBase:SetCookie(cookie) end
---@overload fun(self: System.Web.HttpResponseBase, filename: string)
---@param filename string
---@param offset number
---@param length number
function System.Web.HttpResponseBase:TransmitFile(filename, offset, length) end
---@overload fun(self: System.Web.HttpResponseBase, ch: System.Char)
---@overload fun(self: System.Web.HttpResponseBase, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.Web.HttpResponseBase, obj: System.Object)
---@param s string
function System.Web.HttpResponseBase:Write(s) end
---@overload fun(self: System.Web.HttpResponseBase, filename: string)
---@overload fun(self: System.Web.HttpResponseBase, filename: string, readIntoMemory: boolean)
---@overload fun(self: System.Web.HttpResponseBase, filename: string, offset: number, size: number)
---@param fileHandle System.IntPtr
---@param offset number
---@param size number
function System.Web.HttpResponseBase:WriteFile(fileHandle, offset, size) end
---@param callback System.Web.HttpResponseSubstitutionCallback
function System.Web.HttpResponseBase:WriteSubstitution(callback) end
---@overload fun(self: System.Web.HttpResponseBase, path: string)
---@param path string
---@param method string
---@param headers System.Collections.Specialized.NameValueCollection
function System.Web.HttpResponseBase:PushPromise(path, method, headers) end

---@class System.Web.HttpServerUtilityBase : System.Object
---@field MachineName string
---@field ScriptTimeout number
System.Web.HttpServerUtilityBase = {}
---@alias CS.System.Web.HttpServerUtilityBase System.Web.HttpServerUtilityBase
CS.System.Web.HttpServerUtilityBase = System.Web.HttpServerUtilityBase

function System.Web.HttpServerUtilityBase:ClearError() end
---@overload fun(self: System.Web.HttpServerUtilityBase, progID: string) : System.Object
---@param type System.Type
---@return System.Object
function System.Web.HttpServerUtilityBase:CreateObject(type) end
---@param clsid string
---@return System.Object
function System.Web.HttpServerUtilityBase:CreateObjectFromClsid(clsid) end
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string)
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string, writer: System.IO.TextWriter)
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string, preserveForm: boolean)
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string, writer: System.IO.TextWriter, preserveForm: boolean)
---@param handler System.Web.IHttpHandler
---@param writer System.IO.TextWriter
---@param preserveForm boolean
function System.Web.HttpServerUtilityBase:Execute(handler, writer, preserveForm) end
---@return System.Exception
function System.Web.HttpServerUtilityBase:GetLastError() end
---@overload fun(self: System.Web.HttpServerUtilityBase, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityBase:HtmlDecode(s, output) end
---@overload fun(self: System.Web.HttpServerUtilityBase, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityBase:HtmlEncode(s, output) end
---@param path string
---@return string
function System.Web.HttpServerUtilityBase:MapPath(path) end
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string, preserveForm: boolean)
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string)
---@param handler System.Web.IHttpHandler
---@param preserveForm boolean
function System.Web.HttpServerUtilityBase:Transfer(handler, preserveForm) end
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string)
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string, preserveForm: boolean)
---@overload fun(self: System.Web.HttpServerUtilityBase, path: string, preserveForm: boolean, method: string, headers: System.Collections.Specialized.NameValueCollection)
---@param path string
---@param preserveForm boolean
---@param method string
---@param headers System.Collections.Specialized.NameValueCollection
---@param preserveUser boolean
function System.Web.HttpServerUtilityBase:TransferRequest(path, preserveForm, method, headers, preserveUser) end
---@overload fun(self: System.Web.HttpServerUtilityBase, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityBase:UrlDecode(s, output) end
---@overload fun(self: System.Web.HttpServerUtilityBase, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityBase:UrlEncode(s, output) end
---@param s string
---@return string
function System.Web.HttpServerUtilityBase:UrlPathEncode(s) end
---@param input string
---@return System.Byte[]
function System.Web.HttpServerUtilityBase:UrlTokenDecode(input) end
---@param input System.Byte[]
---@return string
function System.Web.HttpServerUtilityBase:UrlTokenEncode(input) end

---@class System.Web.HttpSessionStateBase : System.Object
---@field CodePage number
---@field Contents System.Web.HttpSessionStateBase
---@field CookieMode System.Web.HttpCookieMode
---@field IsCookieless boolean
---@field IsNewSession boolean
---@field IsReadOnly boolean
---@field Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
---@field LCID number
---@field Mode System.Web.SessionState.SessionStateMode
---@field SessionID string
---@field StaticObjects System.Web.HttpStaticObjectsCollectionBase
---@field Timeout number
---@field Item System.Object
---@field Item System.Object
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Web.HttpSessionStateBase = {}
---@alias CS.System.Web.HttpSessionStateBase System.Web.HttpSessionStateBase
CS.System.Web.HttpSessionStateBase = System.Web.HttpSessionStateBase

function System.Web.HttpSessionStateBase:Abandon() end
---@param name string
---@param value System.Object
function System.Web.HttpSessionStateBase:Add(name, value) end
function System.Web.HttpSessionStateBase:Clear() end
---@param name string
function System.Web.HttpSessionStateBase:Remove(name) end
function System.Web.HttpSessionStateBase:RemoveAll() end
---@param index number
function System.Web.HttpSessionStateBase:RemoveAt(index) end
---@param array System.Array
---@param index number
function System.Web.HttpSessionStateBase:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.HttpSessionStateBase:GetEnumerator() end

---@class System.Web.HttpSessionStateWrapper : System.Web.HttpSessionStateBase
---@field CodePage number
---@field Contents System.Web.HttpSessionStateBase
---@field CookieMode System.Web.HttpCookieMode
---@field IsCookieless boolean
---@field IsNewSession boolean
---@field IsReadOnly boolean
---@field Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
---@field LCID number
---@field Mode System.Web.SessionState.SessionStateMode
---@field SessionID string
---@field StaticObjects System.Web.HttpStaticObjectsCollectionBase
---@field Timeout number
---@field Item System.Object
---@field Item System.Object
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Web.HttpSessionStateWrapper = {}
---@alias CS.System.Web.HttpSessionStateWrapper System.Web.HttpSessionStateWrapper
CS.System.Web.HttpSessionStateWrapper = System.Web.HttpSessionStateWrapper

---@param httpSessionState System.Web.SessionState.HttpSessionState
---@return System.Web.HttpSessionStateWrapper
function System.Web.HttpSessionStateWrapper.New(httpSessionState) end
function System.Web.HttpSessionStateWrapper:Abandon() end
---@param name string
---@param value System.Object
function System.Web.HttpSessionStateWrapper:Add(name, value) end
function System.Web.HttpSessionStateWrapper:Clear() end
---@param name string
function System.Web.HttpSessionStateWrapper:Remove(name) end
function System.Web.HttpSessionStateWrapper:RemoveAll() end
---@param index number
function System.Web.HttpSessionStateWrapper:RemoveAt(index) end
---@param array System.Array
---@param index number
function System.Web.HttpSessionStateWrapper:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.HttpSessionStateWrapper:GetEnumerator() end

---@class System.Web.HttpStaticObjectsCollectionBase : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field NeverAccessed boolean
---@field SyncRoot System.Object
System.Web.HttpStaticObjectsCollectionBase = {}
---@alias CS.System.Web.HttpStaticObjectsCollectionBase System.Web.HttpStaticObjectsCollectionBase
CS.System.Web.HttpStaticObjectsCollectionBase = System.Web.HttpStaticObjectsCollectionBase

---@param array System.Array
---@param index number
function System.Web.HttpStaticObjectsCollectionBase:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.HttpStaticObjectsCollectionBase:GetEnumerator() end
---@param name string
---@return System.Object
function System.Web.HttpStaticObjectsCollectionBase:GetObject(name) end
---@param writer System.IO.BinaryWriter
function System.Web.HttpStaticObjectsCollectionBase:Serialize(writer) end

---@class System.Web.HttpStaticObjectsCollectionWrapper : System.Web.HttpStaticObjectsCollectionBase
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field NeverAccessed boolean
---@field SyncRoot System.Object
System.Web.HttpStaticObjectsCollectionWrapper = {}
---@alias CS.System.Web.HttpStaticObjectsCollectionWrapper System.Web.HttpStaticObjectsCollectionWrapper
CS.System.Web.HttpStaticObjectsCollectionWrapper = System.Web.HttpStaticObjectsCollectionWrapper

---@param httpStaticObjectsCollection System.Web.HttpStaticObjectsCollection
---@return System.Web.HttpStaticObjectsCollectionWrapper
function System.Web.HttpStaticObjectsCollectionWrapper.New(httpStaticObjectsCollection) end
---@param array System.Array
---@param index number
function System.Web.HttpStaticObjectsCollectionWrapper:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.HttpStaticObjectsCollectionWrapper:GetEnumerator() end
---@param name string
---@return System.Object
function System.Web.HttpStaticObjectsCollectionWrapper:GetObject(name) end
---@param writer System.IO.BinaryWriter
function System.Web.HttpStaticObjectsCollectionWrapper:Serialize(writer) end

---@class System.Web.HtmlString : System.Object
System.Web.HtmlString = {}
---@alias CS.System.Web.HtmlString System.Web.HtmlString
CS.System.Web.HtmlString = System.Web.HtmlString

---@param value string
---@return System.Web.HtmlString
function System.Web.HtmlString.New(value) end
---@return string
function System.Web.HtmlString:ToHtmlString() end
---@return string
function System.Web.HtmlString:ToString() end

---@class System.Web.HttpChannelBindingToken : System.Security.Authentication.ExtendedProtection.ChannelBinding
---@field Size number
System.Web.HttpChannelBindingToken = {}
---@alias CS.System.Web.HttpChannelBindingToken System.Web.HttpChannelBindingToken
CS.System.Web.HttpChannelBindingToken = System.Web.HttpChannelBindingToken


---@class System.Web.HttpRawResponse : System.Object
System.Web.HttpRawResponse = {}
---@alias CS.System.Web.HttpRawResponse System.Web.HttpRawResponse
CS.System.Web.HttpRawResponse = System.Web.HttpRawResponse


---@class System.Web.IHtmlString
System.Web.IHtmlString = {}
---@alias CS.System.Web.IHtmlString System.Web.IHtmlString
CS.System.Web.IHtmlString = System.Web.IHtmlString

---@return string
function System.Web.IHtmlString:ToHtmlString() end

---@class System.Web.IHttpAsyncHandler
System.Web.IHttpAsyncHandler = {}
---@alias CS.System.Web.IHttpAsyncHandler System.Web.IHttpAsyncHandler
CS.System.Web.IHttpAsyncHandler = System.Web.IHttpAsyncHandler

---@param context System.Web.HttpContext
---@param cb System.AsyncCallback
---@param extraData System.Object
---@return System.IAsyncResult
function System.Web.IHttpAsyncHandler:BeginProcessRequest(context, cb, extraData) end
---@param result System.IAsyncResult
function System.Web.IHttpAsyncHandler:EndProcessRequest(result) end

---@class System.Web.IHttpHandler
---@field IsReusable boolean
System.Web.IHttpHandler = {}
---@alias CS.System.Web.IHttpHandler System.Web.IHttpHandler
CS.System.Web.IHttpHandler = System.Web.IHttpHandler

---@param context System.Web.HttpContext
function System.Web.IHttpHandler:ProcessRequest(context) end

---@class System.Web.IHttpHandlerFactory
System.Web.IHttpHandlerFactory = {}
---@alias CS.System.Web.IHttpHandlerFactory System.Web.IHttpHandlerFactory
CS.System.Web.IHttpHandlerFactory = System.Web.IHttpHandlerFactory

---@param context System.Web.HttpContext
---@param requestType string
---@param url string
---@param pathTranslated string
---@return System.Web.IHttpHandler
function System.Web.IHttpHandlerFactory:GetHandler(context, requestType, url, pathTranslated) end
---@param handler System.Web.IHttpHandler
function System.Web.IHttpHandlerFactory:ReleaseHandler(handler) end

---@class System.Web.IHttpHandlerFactory2
System.Web.IHttpHandlerFactory2 = {}
---@alias CS.System.Web.IHttpHandlerFactory2 System.Web.IHttpHandlerFactory2
CS.System.Web.IHttpHandlerFactory2 = System.Web.IHttpHandlerFactory2

---@param context System.Web.HttpContext
---@param requestType string
---@param virtualPath System.Web.VirtualPath
---@param physicalPath string
---@return System.Web.IHttpHandler
function System.Web.IHttpHandlerFactory2:GetHandler(context, requestType, virtualPath, physicalPath) end

---@class System.Web.IHttpModule
System.Web.IHttpModule = {}
---@alias CS.System.Web.IHttpModule System.Web.IHttpModule
CS.System.Web.IHttpModule = System.Web.IHttpModule

---@param context System.Web.HttpApplication
function System.Web.IHttpModule:Init(context) end
function System.Web.IHttpModule:Dispose() end

---@class System.Web.IPrincipalContainer
---@field Principal System.Security.Principal.IPrincipal
System.Web.IPrincipalContainer = {}
---@alias CS.System.Web.IPrincipalContainer System.Web.IPrincipalContainer
CS.System.Web.IPrincipalContainer = System.Web.IPrincipalContainer


---@class System.Web.IRequestCompletedNotifier
---@field IsRequestCompleted boolean
System.Web.IRequestCompletedNotifier = {}
---@alias CS.System.Web.IRequestCompletedNotifier System.Web.IRequestCompletedNotifier
CS.System.Web.IRequestCompletedNotifier = System.Web.IRequestCompletedNotifier


---@class System.Web.ISubscriptionToken
---@field IsActive boolean
System.Web.ISubscriptionToken = {}
---@alias CS.System.Web.ISubscriptionToken System.Web.ISubscriptionToken
CS.System.Web.ISubscriptionToken = System.Web.ISubscriptionToken

function System.Web.ISubscriptionToken:Unsubscribe() end

---@class System.Web.ITlsTokenBindingInfo
System.Web.ITlsTokenBindingInfo = {}
---@alias CS.System.Web.ITlsTokenBindingInfo System.Web.ITlsTokenBindingInfo
CS.System.Web.ITlsTokenBindingInfo = System.Web.ITlsTokenBindingInfo

---@return System.Byte[]
function System.Web.ITlsTokenBindingInfo:GetProvidedTokenBindingId() end
---@return System.Byte[]
function System.Web.ITlsTokenBindingInfo:GetReferredTokenBindingId() end

---@class System.Web.GlobalPerfCounter
---@field APPLICATION_RESTARTS System.Web.GlobalPerfCounter
---@field APPLICATIONS_RUNNING System.Web.GlobalPerfCounter
---@field REQUESTS_DISCONNECTED System.Web.GlobalPerfCounter
---@field REQUEST_EXECUTION_TIME System.Web.GlobalPerfCounter
---@field REQUESTS_REJECTED System.Web.GlobalPerfCounter
---@field REQUESTS_QUEUED System.Web.GlobalPerfCounter
---@field WPS_RUNNING System.Web.GlobalPerfCounter
---@field WPS_RESTARTS System.Web.GlobalPerfCounter
---@field REQUEST_WAIT_TIME System.Web.GlobalPerfCounter
---@field STATE_SERVER_SESSIONS_ACTIVE System.Web.GlobalPerfCounter
---@field STATE_SERVER_SESSIONS_ABANDONED System.Web.GlobalPerfCounter
---@field STATE_SERVER_SESSIONS_TIMED_OUT System.Web.GlobalPerfCounter
---@field STATE_SERVER_SESSIONS_TOTAL System.Web.GlobalPerfCounter
---@field REQUESTS_CURRENT System.Web.GlobalPerfCounter
---@field GLOBAL_AUDIT_SUCCESS System.Web.GlobalPerfCounter
---@field GLOBAL_AUDIT_FAIL System.Web.GlobalPerfCounter
---@field GLOBAL_EVENTS_ERROR System.Web.GlobalPerfCounter
---@field GLOBAL_EVENTS_HTTP_REQ_ERROR System.Web.GlobalPerfCounter
---@field GLOBAL_EVENTS_HTTP_INFRA_ERROR System.Web.GlobalPerfCounter
---@field REQUESTS_IN_NATIVE_QUEUE System.Web.GlobalPerfCounter
System.Web.GlobalPerfCounter = {}
---@alias CS.System.Web.GlobalPerfCounter System.Web.GlobalPerfCounter
CS.System.Web.GlobalPerfCounter = System.Web.GlobalPerfCounter


---@class System.Web.AppPerfCounter
---@field ANONYMOUS_REQUESTS System.Web.AppPerfCounter
---@field TOTAL_CACHE_ENTRIES System.Web.AppPerfCounter
---@field TOTAL_CACHE_TURNOVER_RATE System.Web.AppPerfCounter
---@field TOTAL_CACHE_HITS System.Web.AppPerfCounter
---@field TOTAL_CACHE_MISSES System.Web.AppPerfCounter
---@field TOTAL_CACHE_RATIO_BASE System.Web.AppPerfCounter
---@field API_CACHE_ENTRIES System.Web.AppPerfCounter
---@field API_CACHE_TURNOVER_RATE System.Web.AppPerfCounter
---@field API_CACHE_HITS System.Web.AppPerfCounter
---@field API_CACHE_MISSES System.Web.AppPerfCounter
---@field API_CACHE_RATIO_BASE System.Web.AppPerfCounter
---@field OUTPUT_CACHE_ENTRIES System.Web.AppPerfCounter
---@field OUTPUT_CACHE_TURNOVER_RATE System.Web.AppPerfCounter
---@field OUTPUT_CACHE_HITS System.Web.AppPerfCounter
---@field OUTPUT_CACHE_MISSES System.Web.AppPerfCounter
---@field OUTPUT_CACHE_RATIO_BASE System.Web.AppPerfCounter
---@field COMPILATIONS System.Web.AppPerfCounter
---@field DEBUGGING_REQUESTS System.Web.AppPerfCounter
---@field ERRORS_PRE_PROCESSING System.Web.AppPerfCounter
---@field ERRORS_COMPILING System.Web.AppPerfCounter
---@field ERRORS_DURING_REQUEST System.Web.AppPerfCounter
---@field ERRORS_UNHANDLED System.Web.AppPerfCounter
---@field ERRORS_TOTAL System.Web.AppPerfCounter
---@field PIPELINES System.Web.AppPerfCounter
---@field REQUEST_BYTES_IN System.Web.AppPerfCounter
---@field REQUEST_BYTES_OUT System.Web.AppPerfCounter
---@field REQUESTS_EXECUTING System.Web.AppPerfCounter
---@field REQUESTS_FAILED System.Web.AppPerfCounter
---@field REQUESTS_NOT_FOUND System.Web.AppPerfCounter
---@field REQUESTS_NOT_AUTHORIZED System.Web.AppPerfCounter
---@field REQUESTS_IN_APPLICATION_QUEUE System.Web.AppPerfCounter
---@field REQUESTS_TIMED_OUT System.Web.AppPerfCounter
---@field REQUESTS_SUCCEDED System.Web.AppPerfCounter
---@field REQUESTS_TOTAL System.Web.AppPerfCounter
---@field SESSIONS_ACTIVE System.Web.AppPerfCounter
---@field SESSIONS_ABANDONED System.Web.AppPerfCounter
---@field SESSIONS_TIMED_OUT System.Web.AppPerfCounter
---@field SESSIONS_TOTAL System.Web.AppPerfCounter
---@field TRANSACTIONS_ABORTED System.Web.AppPerfCounter
---@field TRANSACTIONS_COMMITTED System.Web.AppPerfCounter
---@field TRANSACTIONS_PENDING System.Web.AppPerfCounter
---@field TRANSACTIONS_TOTAL System.Web.AppPerfCounter
---@field SESSION_STATE_SERVER_CONNECTIONS System.Web.AppPerfCounter
---@field SESSION_SQL_SERVER_CONNECTIONS System.Web.AppPerfCounter
---@field EVENTS_TOTAL System.Web.AppPerfCounter
---@field EVENTS_APP System.Web.AppPerfCounter
---@field EVENTS_ERROR System.Web.AppPerfCounter
---@field EVENTS_HTTP_REQ_ERROR System.Web.AppPerfCounter
---@field EVENTS_HTTP_INFRA_ERROR System.Web.AppPerfCounter
---@field EVENTS_WEB_REQ System.Web.AppPerfCounter
---@field AUDIT_SUCCESS System.Web.AppPerfCounter
---@field AUDIT_FAIL System.Web.AppPerfCounter
---@field MEMBER_SUCCESS System.Web.AppPerfCounter
---@field MEMBER_FAIL System.Web.AppPerfCounter
---@field FORMS_AUTH_SUCCESS System.Web.AppPerfCounter
---@field FORMS_AUTH_FAIL System.Web.AppPerfCounter
---@field VIEWSTATE_MAC_FAIL System.Web.AppPerfCounter
---@field APP_REQUEST_EXEC_TIME System.Web.AppPerfCounter
---@field APP_REQUEST_DISCONNECTED System.Web.AppPerfCounter
---@field APP_REQUESTS_REJECTED System.Web.AppPerfCounter
---@field APP_REQUEST_WAIT_TIME System.Web.AppPerfCounter
---@field CACHE_PERCENT_MACH_MEM_LIMIT_USED System.Web.AppPerfCounter
---@field CACHE_PERCENT_MACH_MEM_LIMIT_USED_BASE System.Web.AppPerfCounter
---@field CACHE_PERCENT_PROC_MEM_LIMIT_USED System.Web.AppPerfCounter
---@field CACHE_PERCENT_PROC_MEM_LIMIT_USED_BASE System.Web.AppPerfCounter
---@field CACHE_TOTAL_TRIMS System.Web.AppPerfCounter
---@field CACHE_API_TRIMS System.Web.AppPerfCounter
---@field CACHE_OUTPUT_TRIMS System.Web.AppPerfCounter
---@field APP_CPU_USED System.Web.AppPerfCounter
---@field APP_CPU_USED_BASE System.Web.AppPerfCounter
---@field APP_MEMORY_USED System.Web.AppPerfCounter
---@field REQUEST_BYTES_IN_WEBSOCKETS System.Web.AppPerfCounter
---@field REQUEST_BYTES_OUT_WEBSOCKETS System.Web.AppPerfCounter
---@field REQUESTS_EXECUTING_WEBSOCKETS System.Web.AppPerfCounter
---@field REQUESTS_FAILED_WEBSOCKETS System.Web.AppPerfCounter
---@field REQUESTS_SUCCEEDED_WEBSOCKETS System.Web.AppPerfCounter
---@field REQUESTS_TOTAL_WEBSOCKETS System.Web.AppPerfCounter
System.Web.AppPerfCounter = {}
---@alias CS.System.Web.AppPerfCounter System.Web.AppPerfCounter
CS.System.Web.AppPerfCounter = System.Web.AppPerfCounter


---@class System.Web.StateServicePerfCounter
---@field STATE_SERVICE_SESSIONS_ACTIVE System.Web.StateServicePerfCounter
---@field STATE_SERVICE_SESSIONS_ABANDONED System.Web.StateServicePerfCounter
---@field STATE_SERVICE_SESSIONS_TIMED_OUT System.Web.StateServicePerfCounter
---@field STATE_SERVICE_SESSIONS_TOTAL System.Web.StateServicePerfCounter
System.Web.StateServicePerfCounter = {}
---@alias CS.System.Web.StateServicePerfCounter System.Web.StateServicePerfCounter
CS.System.Web.StateServicePerfCounter = System.Web.StateServicePerfCounter


---@class System.Web.ModuleConfigurationInfo : System.Object
System.Web.ModuleConfigurationInfo = {}
---@alias CS.System.Web.ModuleConfigurationInfo System.Web.ModuleConfigurationInfo
CS.System.Web.ModuleConfigurationInfo = System.Web.ModuleConfigurationInfo


---@class System.Web.PreApplicationStartMethodAttribute : System.Attribute
---@field Type System.Type
---@field MethodName string
System.Web.PreApplicationStartMethodAttribute = {}
---@alias CS.System.Web.PreApplicationStartMethodAttribute System.Web.PreApplicationStartMethodAttribute
CS.System.Web.PreApplicationStartMethodAttribute = System.Web.PreApplicationStartMethodAttribute

---@param type System.Type
---@param methodName string
---@return System.Web.PreApplicationStartMethodAttribute
function System.Web.PreApplicationStartMethodAttribute.New(type, methodName) end

---@class System.Web.ReadEntityBodyMode
---@field None System.Web.ReadEntityBodyMode
---@field Classic System.Web.ReadEntityBodyMode
---@field Bufferless System.Web.ReadEntityBodyMode
---@field Buffered System.Web.ReadEntityBodyMode
System.Web.ReadEntityBodyMode = {}
---@alias CS.System.Web.ReadEntityBodyMode System.Web.ReadEntityBodyMode
CS.System.Web.ReadEntityBodyMode = System.Web.ReadEntityBodyMode


---@class System.Web.RequestNotification
---@field BeginRequest System.Web.RequestNotification
---@field AuthenticateRequest System.Web.RequestNotification
---@field AuthorizeRequest System.Web.RequestNotification
---@field ResolveRequestCache System.Web.RequestNotification
---@field MapRequestHandler System.Web.RequestNotification
---@field AcquireRequestState System.Web.RequestNotification
---@field PreExecuteRequestHandler System.Web.RequestNotification
---@field ExecuteRequestHandler System.Web.RequestNotification
---@field ReleaseRequestState System.Web.RequestNotification
---@field UpdateRequestCache System.Web.RequestNotification
---@field LogRequest System.Web.RequestNotification
---@field EndRequest System.Web.RequestNotification
---@field SendResponse System.Web.RequestNotification
System.Web.RequestNotification = {}
---@alias CS.System.Web.RequestNotification System.Web.RequestNotification
CS.System.Web.RequestNotification = System.Web.RequestNotification


---@class System.Web.RequestNotificationStatus
---@field Continue System.Web.RequestNotificationStatus
---@field Pending System.Web.RequestNotificationStatus
---@field FinishRequest System.Web.RequestNotificationStatus
System.Web.RequestNotificationStatus = {}
---@alias CS.System.Web.RequestNotificationStatus System.Web.RequestNotificationStatus
CS.System.Web.RequestNotificationStatus = System.Web.RequestNotificationStatus


---@class System.Web.TaskWrapperAsyncResult : System.Object
---@field AsyncState System.Object
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field CompletedSynchronously boolean
---@field IsCompleted boolean
System.Web.TaskWrapperAsyncResult = {}
---@alias CS.System.Web.TaskWrapperAsyncResult System.Web.TaskWrapperAsyncResult
CS.System.Web.TaskWrapperAsyncResult = System.Web.TaskWrapperAsyncResult


---@class System.Web.TraceContextEventArgs : System.EventArgs
---@field TraceRecords System.Collections.ICollection
System.Web.TraceContextEventArgs = {}
---@alias CS.System.Web.TraceContextEventArgs System.Web.TraceContextEventArgs
CS.System.Web.TraceContextEventArgs = System.Web.TraceContextEventArgs

---@param records System.Collections.ICollection
---@return System.Web.TraceContextEventArgs
function System.Web.TraceContextEventArgs.New(records) end

---@class System.Web.TraceContextEventHandler : System.MulticastDelegate
System.Web.TraceContextEventHandler = {}
---@alias CS.System.Web.TraceContextEventHandler System.Web.TraceContextEventHandler
CS.System.Web.TraceContextEventHandler = System.Web.TraceContextEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.TraceContextEventHandler
function System.Web.TraceContextEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.TraceContextEventArgs
function System.Web.TraceContextEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.TraceContextEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.TraceContextEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.TraceContextEventHandler:EndInvoke(result) end

---@class System.Web.UnvalidatedRequestValuesBase : System.Object
---@field Form System.Collections.Specialized.NameValueCollection
---@field QueryString System.Collections.Specialized.NameValueCollection
---@field Headers System.Collections.Specialized.NameValueCollection
---@field Cookies System.Web.HttpCookieCollection
---@field Files System.Web.HttpFileCollectionBase
---@field RawUrl string
---@field Path string
---@field PathInfo string
---@field Item string
---@field Url System.Uri
System.Web.UnvalidatedRequestValuesBase = {}
---@alias CS.System.Web.UnvalidatedRequestValuesBase System.Web.UnvalidatedRequestValuesBase
CS.System.Web.UnvalidatedRequestValuesBase = System.Web.UnvalidatedRequestValuesBase


---@class System.Web.UnvalidatedRequestValuesWrapper : System.Web.UnvalidatedRequestValuesBase
---@field Form System.Collections.Specialized.NameValueCollection
---@field QueryString System.Collections.Specialized.NameValueCollection
---@field Headers System.Collections.Specialized.NameValueCollection
---@field Cookies System.Web.HttpCookieCollection
---@field Files System.Web.HttpFileCollectionBase
---@field RawUrl string
---@field Path string
---@field PathInfo string
---@field Item string
---@field Url System.Uri
System.Web.UnvalidatedRequestValuesWrapper = {}
---@alias CS.System.Web.UnvalidatedRequestValuesWrapper System.Web.UnvalidatedRequestValuesWrapper
CS.System.Web.UnvalidatedRequestValuesWrapper = System.Web.UnvalidatedRequestValuesWrapper

---@param requestValues System.Web.UnvalidatedRequestValues
---@return System.Web.UnvalidatedRequestValuesWrapper
function System.Web.UnvalidatedRequestValuesWrapper.New(requestValues) end

---@class System.Web.ValidateStringCallback : System.MulticastDelegate
System.Web.ValidateStringCallback = {}
---@alias CS.System.Web.ValidateStringCallback System.Web.ValidateStringCallback
CS.System.Web.ValidateStringCallback = System.Web.ValidateStringCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.ValidateStringCallback
function System.Web.ValidateStringCallback.New(object, method) end
---@param key string
---@param value string
function System.Web.ValidateStringCallback:Invoke(key, value) end
---@param key string
---@param value string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.ValidateStringCallback:BeginInvoke(key, value, callback, object) end
---@param result System.IAsyncResult
function System.Web.ValidateStringCallback:EndInvoke(result) end

---@class System.Web.WebSocketTransitionState
---@field Inactive System.Web.WebSocketTransitionState
---@field AcceptWebSocketRequestCalled System.Web.WebSocketTransitionState
---@field TransitionStarted System.Web.WebSocketTransitionState
---@field TransitionCompleted System.Web.WebSocketTransitionState
System.Web.WebSocketTransitionState = {}
---@alias CS.System.Web.WebSocketTransitionState System.Web.WebSocketTransitionState
CS.System.Web.WebSocketTransitionState = System.Web.WebSocketTransitionState


---@class System.Web.WebSysDefaultValueAttribute : System.ComponentModel.DefaultValueAttribute
---@field TypeId System.Object
---@field Value System.Object
System.Web.WebSysDefaultValueAttribute = {}
---@alias CS.System.Web.WebSysDefaultValueAttribute System.Web.WebSysDefaultValueAttribute
CS.System.Web.WebSysDefaultValueAttribute = System.Web.WebSysDefaultValueAttribute


---@class System.Web.WebSysDescriptionAttribute : System.ComponentModel.DescriptionAttribute
---@field Description string
---@field TypeId System.Object
System.Web.WebSysDescriptionAttribute = {}
---@alias CS.System.Web.WebSysDescriptionAttribute System.Web.WebSysDescriptionAttribute
CS.System.Web.WebSysDescriptionAttribute = System.Web.WebSysDescriptionAttribute


---@class System.Web.WebSysDisplayNameAttribute : System.ComponentModel.DisplayNameAttribute
---@field DisplayName string
---@field TypeId System.Object
System.Web.WebSysDisplayNameAttribute = {}
---@alias CS.System.Web.WebSysDisplayNameAttribute System.Web.WebSysDisplayNameAttribute
CS.System.Web.WebSysDisplayNameAttribute = System.Web.WebSysDisplayNameAttribute


---@class System.Web.TelemetryLogger : System.Object
System.Web.TelemetryLogger = {}
---@alias CS.System.Web.TelemetryLogger System.Web.TelemetryLogger
CS.System.Web.TelemetryLogger = System.Web.TelemetryLogger

---@param type System.Type
function System.Web.TelemetryLogger.LogHttpHandler(type) end
---@param version System.Version
function System.Web.TelemetryLogger.LogTargetFramework(version) end

---@class System.Web.ApplicationShutdownReason
---@field None System.Web.ApplicationShutdownReason
---@field HostingEnvironment System.Web.ApplicationShutdownReason
---@field ChangeInGlobalAsax System.Web.ApplicationShutdownReason
---@field ConfigurationChange System.Web.ApplicationShutdownReason
---@field UnloadAppDomainCalled System.Web.ApplicationShutdownReason
---@field ChangeInSecurityPolicyFile System.Web.ApplicationShutdownReason
---@field BinDirChangeOrDirectoryRename System.Web.ApplicationShutdownReason
---@field BrowsersDirChangeOrDirectoryRename System.Web.ApplicationShutdownReason
---@field CodeDirChangeOrDirectoryRename System.Web.ApplicationShutdownReason
---@field ResourcesDirChangeOrDirectoryRename System.Web.ApplicationShutdownReason
---@field IdleTimeout System.Web.ApplicationShutdownReason
---@field PhysicalApplicationPathChanged System.Web.ApplicationShutdownReason
---@field HttpRuntimeClose System.Web.ApplicationShutdownReason
---@field InitializationError System.Web.ApplicationShutdownReason
---@field MaxRecompilationsReached System.Web.ApplicationShutdownReason
---@field BuildManagerChange System.Web.ApplicationShutdownReason
System.Web.ApplicationShutdownReason = {}
---@alias CS.System.Web.ApplicationShutdownReason System.Web.ApplicationShutdownReason
CS.System.Web.ApplicationShutdownReason = System.Web.ApplicationShutdownReason


---@class System.Web.BaseParamsCollection : System.Web.WebROCollection
---@field AllKeys System.String[]
---@field Count number
---@field Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
System.Web.BaseParamsCollection = {}
---@alias CS.System.Web.BaseParamsCollection System.Web.BaseParamsCollection
CS.System.Web.BaseParamsCollection = System.Web.BaseParamsCollection

---@param request System.Web.HttpRequest
---@return System.Web.BaseParamsCollection
function System.Web.BaseParamsCollection.New(request) end
---@overload fun(self: System.Web.BaseParamsCollection, index: number) : string
---@param name string
---@return string
function System.Web.BaseParamsCollection:Get(name) end
---@param index number
---@return string
function System.Web.BaseParamsCollection:GetKey(index) end
---@overload fun(self: System.Web.BaseParamsCollection, index: number) : System.String[]
---@param name string
---@return System.String[]
function System.Web.BaseParamsCollection:GetValues(name) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.BaseParamsCollection:GetObjectData(info, context) end
---@return System.Collections.IEnumerator
function System.Web.BaseParamsCollection:GetEnumerator() end

---@class System.Web.BeginEventHandler : System.MulticastDelegate
System.Web.BeginEventHandler = {}
---@alias CS.System.Web.BeginEventHandler System.Web.BeginEventHandler
CS.System.Web.BeginEventHandler = System.Web.BeginEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.BeginEventHandler
function System.Web.BeginEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.EventArgs
---@param cb System.AsyncCallback
---@param extraData System.Object
---@return System.IAsyncResult
function System.Web.BeginEventHandler:Invoke(sender, e, cb, extraData) end
---@param sender System.Object
---@param e System.EventArgs
---@param cb System.AsyncCallback
---@param extraData System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.BeginEventHandler:BeginInvoke(sender, e, cb, extraData, callback, object) end
---@param result System.IAsyncResult
---@return System.IAsyncResult
function System.Web.BeginEventHandler:EndInvoke(result) end

---@class System.Web.BrowserData : System.Object
---@field Parent System.Web.BrowserData
System.Web.BrowserData = {}
---@alias CS.System.Web.BrowserData System.Web.BrowserData
CS.System.Web.BrowserData = System.Web.BrowserData

---@param pattern string
---@return System.Web.BrowserData
function System.Web.BrowserData.New(pattern) end
---@param key string
---@param value string
function System.Web.BrowserData:Add(key, value) end
---@param tbl System.Collections.Hashtable
---@return System.Collections.Hashtable
function System.Web.BrowserData:GetProperties(tbl) end
---@return string
function System.Web.BrowserData:GetParentName() end
---@return string
function System.Web.BrowserData:GetAlternateBrowser() end
---@return string
function System.Web.BrowserData:GetBrowser() end
---@param expression string
---@return boolean
function System.Web.BrowserData:IsMatch(expression) end

---@class System.Web.CapabilitiesLoader : System.MarshalByRefObject
System.Web.CapabilitiesLoader = {}
---@alias CS.System.Web.CapabilitiesLoader System.Web.CapabilitiesLoader
CS.System.Web.CapabilitiesLoader = System.Web.CapabilitiesLoader

---@param userAgent string
---@return System.Collections.Hashtable
function System.Web.CapabilitiesLoader.GetCapabilities(userAgent) end

---@class System.Web.DefaultExceptionPageTemplate : System.Web.ExceptionPageTemplate
System.Web.DefaultExceptionPageTemplate = {}
---@alias CS.System.Web.DefaultExceptionPageTemplate System.Web.DefaultExceptionPageTemplate
CS.System.Web.DefaultExceptionPageTemplate = System.Web.DefaultExceptionPageTemplate

---@return System.Web.DefaultExceptionPageTemplate
function System.Web.DefaultExceptionPageTemplate.New() end
function System.Web.DefaultExceptionPageTemplate:Init() end

---@class System.Web.DefaultHttpHandler : System.Object
---@field IsReusable boolean
System.Web.DefaultHttpHandler = {}
---@alias CS.System.Web.DefaultHttpHandler System.Web.DefaultHttpHandler
CS.System.Web.DefaultHttpHandler = System.Web.DefaultHttpHandler

---@return System.Web.DefaultHttpHandler
function System.Web.DefaultHttpHandler.New() end
---@param context System.Web.HttpContext
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.DefaultHttpHandler:BeginProcessRequest(context, callback, state) end
---@param result System.IAsyncResult
function System.Web.DefaultHttpHandler:EndProcessRequest(result) end
---@param context System.Web.HttpContext
function System.Web.DefaultHttpHandler:ProcessRequest(context) end
function System.Web.DefaultHttpHandler:OnExecuteUrlPreconditionFailure() end
---@return string
function System.Web.DefaultHttpHandler:OverrideExecuteUrlPath() end

---@class System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult : System.Object
---@field AsyncState System.Object
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field CompletedSynchronously boolean
---@field IsCompleted boolean
System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult = {}
---@alias CS.System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult
CS.System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult = System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult

---@param callback System.AsyncCallback
---@param state System.Object
---@return System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult
function System.Web.DefaultHttpHandler.DefaultHandlerAsyncResult.New(callback, state) end

---@class System.Web.DynamicModuleManager : System.Object
System.Web.DynamicModuleManager = {}
---@alias CS.System.Web.DynamicModuleManager System.Web.DynamicModuleManager
CS.System.Web.DynamicModuleManager = System.Web.DynamicModuleManager

---@return System.Web.DynamicModuleManager
function System.Web.DynamicModuleManager.New() end
---@param moduleType System.Type
function System.Web.DynamicModuleManager:Add(moduleType) end
---@return System.Collections.Generic.ICollection
function System.Web.DynamicModuleManager:LockAndGetModules() end

---@class System.Web.DynamicModuleInfo : System.ValueType
---@field Name string
---@field Type System.Type
System.Web.DynamicModuleInfo = {}
---@alias CS.System.Web.DynamicModuleInfo System.Web.DynamicModuleInfo
CS.System.Web.DynamicModuleInfo = System.Web.DynamicModuleInfo

---@param type System.Type
---@param name string
---@return System.Web.DynamicModuleInfo
function System.Web.DynamicModuleInfo.New(type, name) end

---@class System.Web.EndEventHandler : System.MulticastDelegate
System.Web.EndEventHandler = {}
---@alias CS.System.Web.EndEventHandler System.Web.EndEventHandler
CS.System.Web.EndEventHandler = System.Web.EndEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.EndEventHandler
function System.Web.EndEventHandler.New(object, method) end
---@param ar System.IAsyncResult
function System.Web.EndEventHandler:Invoke(ar) end
---@param ar System.IAsyncResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.EndEventHandler:BeginInvoke(ar, callback, object) end
---@param result System.IAsyncResult
function System.Web.EndEventHandler:EndInvoke(result) end

---@class System.Web.EventHandlerTaskAsyncHelper : System.Object
---@field BeginEventHandler System.Web.BeginEventHandler
---@field EndEventHandler System.Web.EndEventHandler
System.Web.EventHandlerTaskAsyncHelper = {}
---@alias CS.System.Web.EventHandlerTaskAsyncHelper System.Web.EventHandlerTaskAsyncHelper
CS.System.Web.EventHandlerTaskAsyncHelper = System.Web.EventHandlerTaskAsyncHelper

---@param handler System.Web.TaskEventHandler
---@return System.Web.EventHandlerTaskAsyncHelper
function System.Web.EventHandlerTaskAsyncHelper.New(handler) end

---@class System.Web.ExceptionPageTemplate : System.Object
---@field Template_PageTopName string
---@field Template_PageBottomName string
---@field Template_PageStandardName string
---@field Template_PageCustomErrorDefaultName string
---@field Template_PageHtmlizedExceptionName string
---@field Template_PageTitleName string
---@field Template_ExceptionTypeName string
---@field Template_ExceptionMessageName string
---@field Template_DescriptionName string
---@field Template_DetailsName string
---@field Template_RuntimeVersionInformationName string
---@field Template_AspNetVersionInformationName string
---@field Template_StackTraceName string
---@field Template_FullStackTraceName string
---@field Template_HtmlizedExceptionOriginName string
---@field Template_HtmlizedExceptionShortSourceName string
---@field Template_HtmlizedExceptionLongSourceName string
---@field Template_HtmlizedExceptionSourceFileName string
---@field Template_HtmlizedExceptionErrorLinesName string
---@field Template_HtmlizedExceptionCompilerOutputName string
---@field Fragments System.Collections.Generic.List
System.Web.ExceptionPageTemplate = {}
---@alias CS.System.Web.ExceptionPageTemplate System.Web.ExceptionPageTemplate
CS.System.Web.ExceptionPageTemplate = System.Web.ExceptionPageTemplate

function System.Web.ExceptionPageTemplate:Init() end
---@overload fun(self: System.Web.ExceptionPageTemplate, values: System.Web.ExceptionPageTemplateValues, pageType: System.Web.ExceptionPageTemplateType) : string
---@param response System.Web.HttpResponse
---@param values System.Web.ExceptionPageTemplateValues
---@param pageType System.Web.ExceptionPageTemplateType
function System.Web.ExceptionPageTemplate:Render(response, values, pageType) end

---@class System.Web.ExceptionPageTemplateFragment : System.Object
---@field Name string
---@field FilePath string
---@field ResourceName string
---@field ResourceAssembly string
---@field MacroNames System.Collections.Generic.List
---@field RequiredMacros System.Collections.Generic.List
---@field Value string
---@field ValidForPageType System.Web.ExceptionPageTemplateType
System.Web.ExceptionPageTemplateFragment = {}
---@alias CS.System.Web.ExceptionPageTemplateFragment System.Web.ExceptionPageTemplateFragment
CS.System.Web.ExceptionPageTemplateFragment = System.Web.ExceptionPageTemplateFragment

---@return System.Web.ExceptionPageTemplateFragment
function System.Web.ExceptionPageTemplateFragment.New() end
---@param values System.Web.ExceptionPageTemplateValues
function System.Web.ExceptionPageTemplateFragment:Init(values) end
---@param values System.Web.ExceptionPageTemplateValues
---@return boolean
function System.Web.ExceptionPageTemplateFragment:Visible(values) end
---@param value string
---@param values System.Web.ExceptionPageTemplateValues
---@return string
function System.Web.ExceptionPageTemplateFragment:ReplaceMacros(value, values) end

---@class System.Web.ExceptionPageTemplateFragmentValue : System.Object
---@field Value string
System.Web.ExceptionPageTemplateFragmentValue = {}
---@alias CS.System.Web.ExceptionPageTemplateFragmentValue System.Web.ExceptionPageTemplateFragmentValue
CS.System.Web.ExceptionPageTemplateFragmentValue = System.Web.ExceptionPageTemplateFragmentValue

---@overload fun(name: string, valueProvider: System.Func) : System.Web.ExceptionPageTemplateFragmentValue
---@param name string
---@param value string
---@return System.Web.ExceptionPageTemplateFragmentValue
function System.Web.ExceptionPageTemplateFragmentValue.New(name, value) end

---@class System.Web.ExceptionPageTemplateType
---@field Standard System.Web.ExceptionPageTemplateType
---@field CustomErrorDefault System.Web.ExceptionPageTemplateType
---@field Htmlized System.Web.ExceptionPageTemplateType
---@field SourceError System.Web.ExceptionPageTemplateType
---@field CompilerOutput System.Web.ExceptionPageTemplateType
---@field Any System.Web.ExceptionPageTemplateType
System.Web.ExceptionPageTemplateType = {}
---@alias CS.System.Web.ExceptionPageTemplateType System.Web.ExceptionPageTemplateType
CS.System.Web.ExceptionPageTemplateType = System.Web.ExceptionPageTemplateType


---@class System.Web.ExceptionPageTemplateValues : System.Object
---@field Count number
System.Web.ExceptionPageTemplateValues = {}
---@alias CS.System.Web.ExceptionPageTemplateValues System.Web.ExceptionPageTemplateValues
CS.System.Web.ExceptionPageTemplateValues = System.Web.ExceptionPageTemplateValues

---@return System.Web.ExceptionPageTemplateValues
function System.Web.ExceptionPageTemplateValues.New() end
---@param name string
---@return string
function System.Web.ExceptionPageTemplateValues:Get(name) end
---@overload fun(self: System.Web.ExceptionPageTemplateValues, name: string, valueProvider: System.Func)
---@param name string
---@param value string
function System.Web.ExceptionPageTemplateValues:Add(name, value) end

---@class System.Web.HeadersCollection : System.Web.BaseParamsCollection
System.Web.HeadersCollection = {}
---@alias CS.System.Web.HeadersCollection System.Web.HeadersCollection
CS.System.Web.HeadersCollection = System.Web.HeadersCollection

---@param request System.Web.HttpRequest
---@return System.Web.HeadersCollection
function System.Web.HeadersCollection.New(request) end
---@param name string
---@param value string
function System.Web.HeadersCollection:Add(name, value) end
---@param name string
---@param value string
function System.Web.HeadersCollection:Set(name, value) end
---@param name string
function System.Web.HeadersCollection:Remove(name) end

---@class System.Web.HtmlizedException : System.Web.HttpException
---@field Title string
---@field Description string
---@field ErrorMessage string
---@field FileName string
---@field SourceFile string
---@field FileText string
---@field ErrorLines System.Int32[]
---@field ErrorLinesPaired boolean
System.Web.HtmlizedException = {}
---@alias CS.System.Web.HtmlizedException System.Web.HtmlizedException
CS.System.Web.HtmlizedException = System.Web.HtmlizedException


---@class System.Web.HttpApplication : System.Object
---@field Application System.Web.HttpApplicationState
---@field Context System.Web.HttpContext
---@field Modules System.Web.HttpModuleCollection
---@field Request System.Web.HttpRequest
---@field Response System.Web.HttpResponse
---@field Server System.Web.HttpServerUtility
---@field Session System.Web.SessionState.HttpSessionState
---@field Site System.ComponentModel.ISite
---@field User System.Security.Principal.IPrincipal
System.Web.HttpApplication = {}
---@alias CS.System.Web.HttpApplication System.Web.HttpApplication
CS.System.Web.HttpApplication = System.Web.HttpApplication

---@return System.Web.HttpApplication
function System.Web.HttpApplication.New() end
---@param moduleType System.Type
function System.Web.HttpApplication.RegisterModule(moduleType) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnAcquireRequestStateAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnAuthenticateRequestAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnAuthorizeRequestAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnBeginRequestAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnEndRequestAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostRequestHandlerExecuteAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPreRequestHandlerExecuteAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnReleaseRequestStateAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnResolveRequestCacheAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnUpdateRequestCacheAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostAuthenticateRequestAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostAuthorizeRequestAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostResolveRequestCacheAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostMapRequestHandlerAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostAcquireRequestStateAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostReleaseRequestStateAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostUpdateRequestCacheAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnLogRequestAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnMapRequestHandlerAsync(beginHandler, endHandler, state) end
---@overload fun(self: System.Web.HttpApplication, bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.HttpApplication:AddOnPostLogRequestAsync(beginHandler, endHandler, state) end
function System.Web.HttpApplication:CompleteRequest() end
function System.Web.HttpApplication:Dispose() end
---@param context System.Web.HttpContext
---@return string
function System.Web.HttpApplication:GetOutputCacheProviderName(context) end
---@param context System.Web.HttpContext
---@param custom string
---@return string
function System.Web.HttpApplication:GetVaryByCustomString(context, custom) end
function System.Web.HttpApplication:Init() end
---@param callback System.Action
function System.Web.HttpApplication:OnExecuteRequestStep(callback) end

---@class System.Web.HttpApplication.Tim : System.Object
---@field Name string
System.Web.HttpApplication.Tim = {}
---@alias CS.System.Web.HttpApplication.Tim System.Web.HttpApplication.Tim
CS.System.Web.HttpApplication.Tim = System.Web.HttpApplication.Tim

---@overload fun() : System.Web.HttpApplication.Tim
---@param name string
---@return System.Web.HttpApplication.Tim
function System.Web.HttpApplication.Tim.New(name) end
function System.Web.HttpApplication.Tim:Start() end
function System.Web.HttpApplication.Tim:Stop() end

---@class System.Web.AsyncRequestState : System.Object
---@field AsyncState System.Object
---@field CompletedSynchronously boolean
---@field IsCompleted boolean
---@field AsyncWaitHandle System.Threading.WaitHandle
System.Web.AsyncRequestState = {}
---@alias CS.System.Web.AsyncRequestState System.Web.AsyncRequestState
CS.System.Web.AsyncRequestState = System.Web.AsyncRequestState


---@class System.Web.AsyncInvoker : System.Object
---@field begin System.Web.BeginEventHandler
---@field end System.Web.EndEventHandler
---@field data System.Object
System.Web.AsyncInvoker = {}
---@alias CS.System.Web.AsyncInvoker System.Web.AsyncInvoker
CS.System.Web.AsyncInvoker = System.Web.AsyncInvoker

---@overload fun(bh: System.Web.BeginEventHandler, eh: System.Web.EndEventHandler, a: System.Web.HttpApplication, d: System.Object) : System.Web.AsyncInvoker
---@param bh System.Web.BeginEventHandler
---@param eh System.Web.EndEventHandler
---@param app System.Web.HttpApplication
---@return System.Web.AsyncInvoker
function System.Web.AsyncInvoker.New(bh, eh, app) end
---@param sender System.Object
---@param e System.EventArgs
function System.Web.AsyncInvoker:Invoke(sender, e) end

---@class System.Web.HttpApplicationFactory : System.Object
System.Web.HttpApplicationFactory = {}
---@alias CS.System.Web.HttpApplicationFactory System.Web.HttpApplicationFactory
CS.System.Web.HttpApplicationFactory = System.Web.HttpApplicationFactory

---@return System.Web.HttpApplicationFactory
function System.Web.HttpApplicationFactory.New() end
function System.Web.HttpApplicationFactory.Dispose() end

---@class System.Web.HttpApplicationState : System.Collections.Specialized.NameObjectCollectionBase
---@field AllKeys System.String[]
---@field Contents System.Web.HttpApplicationState
---@field Count number
---@field Item System.Object
---@field Item System.Object
---@field StaticObjects System.Web.HttpStaticObjectsCollection
System.Web.HttpApplicationState = {}
---@alias CS.System.Web.HttpApplicationState System.Web.HttpApplicationState
CS.System.Web.HttpApplicationState = System.Web.HttpApplicationState

---@param name string
---@param value System.Object
function System.Web.HttpApplicationState:Add(name, value) end
function System.Web.HttpApplicationState:Clear() end
---@overload fun(self: System.Web.HttpApplicationState, name: string) : System.Object
---@param index number
---@return System.Object
function System.Web.HttpApplicationState:Get(index) end
---@param index number
---@return string
function System.Web.HttpApplicationState:GetKey(index) end
function System.Web.HttpApplicationState:Lock() end
---@param name string
function System.Web.HttpApplicationState:Remove(name) end
function System.Web.HttpApplicationState:RemoveAll() end
---@param index number
function System.Web.HttpApplicationState:RemoveAt(index) end
---@param name string
---@param value System.Object
function System.Web.HttpApplicationState:Set(name, value) end
function System.Web.HttpApplicationState:UnLock() end

---@class System.Web.HttpBrowserCapabilities : System.Web.Configuration.HttpCapabilitiesBase
System.Web.HttpBrowserCapabilities = {}
---@alias CS.System.Web.HttpBrowserCapabilities System.Web.HttpBrowserCapabilities
CS.System.Web.HttpBrowserCapabilities = System.Web.HttpBrowserCapabilities

---@return System.Web.HttpBrowserCapabilities
function System.Web.HttpBrowserCapabilities.New() end

---@class System.Web.HttpCachePolicy : System.Object
---@field VaryByContentEncodings System.Web.HttpCacheVaryByContentEncodings
---@field VaryByHeaders System.Web.HttpCacheVaryByHeaders
---@field VaryByParams System.Web.HttpCacheVaryByParams
---@field UtcTimestampCreated System.DateTime
System.Web.HttpCachePolicy = {}
---@alias CS.System.Web.HttpCachePolicy System.Web.HttpCachePolicy
CS.System.Web.HttpCachePolicy = System.Web.HttpCachePolicy

---@param handler System.Web.HttpCacheValidateHandler
---@param data System.Object
function System.Web.HttpCachePolicy:AddValidationCallback(handler, data) end
---@param extension string
function System.Web.HttpCachePolicy:AppendCacheExtension(extension) end
---@overload fun(self: System.Web.HttpCachePolicy, cacheability: System.Web.HttpCacheability)
---@param cacheability System.Web.HttpCacheability
---@param field string
function System.Web.HttpCachePolicy:SetCacheability(cacheability, field) end
---@param etag string
function System.Web.HttpCachePolicy:SetETag(etag) end
function System.Web.HttpCachePolicy:SetETagFromFileDependencies() end
---@param date System.DateTime
function System.Web.HttpCachePolicy:SetExpires(date) end
---@param date System.DateTime
function System.Web.HttpCachePolicy:SetLastModified(date) end
function System.Web.HttpCachePolicy:SetLastModifiedFromFileDependencies() end
---@param delta System.TimeSpan
function System.Web.HttpCachePolicy:SetMaxAge(delta) end
function System.Web.HttpCachePolicy:SetNoServerCaching() end
function System.Web.HttpCachePolicy:SetNoStore() end
function System.Web.HttpCachePolicy:SetNoTransforms() end
---@param delta System.TimeSpan
function System.Web.HttpCachePolicy:SetProxyMaxAge(delta) end
---@param revalidation System.Web.HttpCacheRevalidation
function System.Web.HttpCachePolicy:SetRevalidation(revalidation) end
---@param slide boolean
function System.Web.HttpCachePolicy:SetSlidingExpiration(slide) end
---@param validUntilExpires boolean
function System.Web.HttpCachePolicy:SetValidUntilExpires(validUntilExpires) end
---@param custom string
function System.Web.HttpCachePolicy:SetVaryByCustom(custom) end
---@param allow boolean
function System.Web.HttpCachePolicy:SetAllowResponseInBrowserHistory(allow) end
---@param omit boolean
function System.Web.HttpCachePolicy:SetOmitVaryStar(omit) end
---@return System.Web.HttpCacheability
function System.Web.HttpCachePolicy:GetCacheability() end
---@return string
function System.Web.HttpCachePolicy:GetCacheExtensions() end
---@return string
function System.Web.HttpCachePolicy:GetETag() end
---@return boolean
function System.Web.HttpCachePolicy:GetETagFromFileDependencies() end
---@return System.DateTime
function System.Web.HttpCachePolicy:GetExpires() end
---@return boolean
function System.Web.HttpCachePolicy:GetIgnoreRangeRequests() end
---@return boolean
function System.Web.HttpCachePolicy:GetLastModifiedFromFileDependencies() end
---@return System.TimeSpan
function System.Web.HttpCachePolicy:GetMaxAge() end
---@return boolean
function System.Web.HttpCachePolicy:GetNoServerCaching() end
---@return boolean
function System.Web.HttpCachePolicy:GetNoStore() end
---@return boolean
function System.Web.HttpCachePolicy:GetNoTransforms() end
---@return number
function System.Web.HttpCachePolicy:GetOmitVaryStar() end
---@return System.TimeSpan
function System.Web.HttpCachePolicy:GetProxyMaxAge() end
---@return System.Web.HttpCacheRevalidation
function System.Web.HttpCachePolicy:GetRevalidation() end
---@return System.DateTime
function System.Web.HttpCachePolicy:GetUtcLastModified() end
---@return boolean
function System.Web.HttpCachePolicy:HasSlidingExpiration() end
---@return boolean
function System.Web.HttpCachePolicy:IsModified() end
---@return boolean
function System.Web.HttpCachePolicy:IsValidUntilExpires() end

---@class System.Web.HttpCacheRevalidation
---@field AllCaches System.Web.HttpCacheRevalidation
---@field ProxyCaches System.Web.HttpCacheRevalidation
---@field None System.Web.HttpCacheRevalidation
System.Web.HttpCacheRevalidation = {}
---@alias CS.System.Web.HttpCacheRevalidation System.Web.HttpCacheRevalidation
CS.System.Web.HttpCacheRevalidation = System.Web.HttpCacheRevalidation


---@class System.Web.HttpCacheValidateHandler : System.MulticastDelegate
System.Web.HttpCacheValidateHandler = {}
---@alias CS.System.Web.HttpCacheValidateHandler System.Web.HttpCacheValidateHandler
CS.System.Web.HttpCacheValidateHandler = System.Web.HttpCacheValidateHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.HttpCacheValidateHandler
function System.Web.HttpCacheValidateHandler.New(object, method) end
---@param context System.Web.HttpContext
---@param data System.Object
---@param ref_validationStatus System.Web.HttpValidationStatus
---@return ,System.Web.HttpValidationStatus
function System.Web.HttpCacheValidateHandler:Invoke(context, data, ref_validationStatus) end
---@param context System.Web.HttpContext
---@param data System.Object
---@param ref_validationStatus System.Web.HttpValidationStatus
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Web.HttpValidationStatus
function System.Web.HttpCacheValidateHandler:BeginInvoke(context, data, ref_validationStatus, callback, object) end
---@param ref_validationStatus System.Web.HttpValidationStatus
---@param result System.IAsyncResult
---@return ,System.Web.HttpValidationStatus
function System.Web.HttpCacheValidateHandler:EndInvoke(ref_validationStatus, result) end

---@class System.Web.HttpCacheVaryByContentEncodings : System.Object
---@field Item boolean
System.Web.HttpCacheVaryByContentEncodings = {}
---@alias CS.System.Web.HttpCacheVaryByContentEncodings System.Web.HttpCacheVaryByContentEncodings
CS.System.Web.HttpCacheVaryByContentEncodings = System.Web.HttpCacheVaryByContentEncodings

---@return System.Web.HttpCacheVaryByContentEncodings
function System.Web.HttpCacheVaryByContentEncodings.New() end
---@return System.String[]
function System.Web.HttpCacheVaryByContentEncodings:GetContentEncodings() end
---@param contentEncodings System.String[]
function System.Web.HttpCacheVaryByContentEncodings:SetContentEncodings(contentEncodings) end

---@class System.Web.HttpCacheVaryByHeaders : System.Object
---@field AcceptTypes boolean
---@field UserAgent boolean
---@field UserCharSet boolean
---@field UserLanguage boolean
---@field Item boolean
System.Web.HttpCacheVaryByHeaders = {}
---@alias CS.System.Web.HttpCacheVaryByHeaders System.Web.HttpCacheVaryByHeaders
CS.System.Web.HttpCacheVaryByHeaders = System.Web.HttpCacheVaryByHeaders

---@return System.Web.HttpCacheVaryByHeaders
function System.Web.HttpCacheVaryByHeaders.New() end
function System.Web.HttpCacheVaryByHeaders:VaryByUnspecifiedParameters() end
---@return System.String[]
function System.Web.HttpCacheVaryByHeaders:GetHeaders() end
---@param headers System.String[]
function System.Web.HttpCacheVaryByHeaders:SetHeaders(headers) end

---@class System.Web.HttpCacheVaryByParams : System.Object
---@field IgnoreParams boolean
---@field Item boolean
System.Web.HttpCacheVaryByParams = {}
---@alias CS.System.Web.HttpCacheVaryByParams System.Web.HttpCacheVaryByParams
CS.System.Web.HttpCacheVaryByParams = System.Web.HttpCacheVaryByParams

---@return System.Web.HttpCacheVaryByParams
function System.Web.HttpCacheVaryByParams.New() end
---@return System.String[]
function System.Web.HttpCacheVaryByParams:GetParams() end
---@param parameters System.String[]
function System.Web.HttpCacheVaryByParams:SetParams(parameters) end

---@class System.Web.HttpCacheability
---@field NoCache System.Web.HttpCacheability
---@field Private System.Web.HttpCacheability
---@field Server System.Web.HttpCacheability
---@field Public System.Web.HttpCacheability
---@field ServerAndPrivate System.Web.HttpCacheability
---@field ServerAndNoCache System.Web.HttpCacheability
System.Web.HttpCacheability = {}
---@alias CS.System.Web.HttpCacheability System.Web.HttpCacheability
CS.System.Web.HttpCacheability = System.Web.HttpCacheability


---@class System.Web.HttpClientCertificate : System.Collections.Specialized.NameValueCollection
---@field BinaryIssuer System.Byte[]
---@field CertEncoding number
---@field Certificate System.Byte[]
---@field Cookie string
---@field Flags number
---@field IsPresent boolean
---@field Issuer string
---@field IsValid boolean
---@field KeySize number
---@field PublicKey System.Byte[]
---@field SecretKeySize number
---@field SerialNumber string
---@field ServerIssuer string
---@field ServerSubject string
---@field Subject string
---@field ValidFrom System.DateTime
---@field ValidUntil System.DateTime
System.Web.HttpClientCertificate = {}
---@alias CS.System.Web.HttpClientCertificate System.Web.HttpClientCertificate
CS.System.Web.HttpClientCertificate = System.Web.HttpClientCertificate

---@param field string
---@return string
function System.Web.HttpClientCertificate:Get(field) end

---@class System.Web.HttpCompileException : System.Web.HttpException
---@field Results System.CodeDom.Compiler.CompilerResults
---@field SourceCode string
---@field Message string
System.Web.HttpCompileException = {}
---@alias CS.System.Web.HttpCompileException System.Web.HttpCompileException
CS.System.Web.HttpCompileException = System.Web.HttpCompileException

---@overload fun() : System.Web.HttpCompileException
---@overload fun(message: string) : System.Web.HttpCompileException
---@overload fun(message: string, innerException: System.Exception) : System.Web.HttpCompileException
---@param results System.CodeDom.Compiler.CompilerResults
---@param sourceCode string
---@return System.Web.HttpCompileException
function System.Web.HttpCompileException.New(results, sourceCode) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.HttpCompileException:GetObjectData(info, context) end

---@class System.Web.HttpContext : System.Object
---@field Current System.Web.HttpContext
---@field AllErrors System.Exception[]
---@field Application System.Web.HttpApplicationState
---@field ApplicationInstance System.Web.HttpApplication
---@field Cache System.Web.Caching.Cache
---@field Error System.Exception
---@field Handler System.Web.IHttpHandler
---@field IsCustomErrorEnabled boolean
---@field IsDebuggingEnabled boolean
---@field Items System.Collections.IDictionary
---@field Request System.Web.HttpRequest
---@field Response System.Web.HttpResponse
---@field Server System.Web.HttpServerUtility
---@field Session System.Web.SessionState.HttpSessionState
---@field SkipAuthorization boolean
---@field Timestamp System.DateTime
---@field Trace System.Web.TraceContext
---@field User System.Security.Principal.IPrincipal
---@field CurrentNotification System.Web.RequestNotification
---@field IsPostNotification boolean
---@field CurrentHandler System.Web.IHttpHandler
---@field PreviousHandler System.Web.IHttpHandler
---@field Profile System.Web.Profile.ProfileBase
---@field AllowAsyncDuringSyncStages boolean
---@field AsyncPreloadMode System.Web.Configuration.AsyncPreloadModeFlags
---@field IsWebSocketRequest boolean
---@field IsWebSocketRequestUpgrading boolean
---@field PageInstrumentation System.Web.Instrumentation.PageInstrumentationService
---@field ThreadAbortOnTimeout boolean
---@field WebSocketNegotiatedProtocol string
---@field WebSocketRequestedProtocols System.Collections.Generic.IList
System.Web.HttpContext = {}
---@alias CS.System.Web.HttpContext System.Web.HttpContext
CS.System.Web.HttpContext = System.Web.HttpContext

---@overload fun(wr: System.Web.HttpWorkerRequest) : System.Web.HttpContext
---@param request System.Web.HttpRequest
---@param response System.Web.HttpResponse
---@return System.Web.HttpContext
function System.Web.HttpContext.New(request, response) end
---@overload fun(classKey: string, resourceKey: string) : System.Object
---@param classKey string
---@param resourceKey string
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Web.HttpContext.GetGlobalResourceObject(classKey, resourceKey, culture) end
---@overload fun(virtualPath: string, resourceKey: string) : System.Object
---@param virtualPath string
---@param resourceKey string
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Web.HttpContext.GetLocalResourceObject(virtualPath, resourceKey, culture) end
---@param errorInfo System.Exception
function System.Web.HttpContext:AddError(errorInfo) end
function System.Web.HttpContext:ClearError() end
---@param sectionName string
---@return System.Object
function System.Web.HttpContext:GetSection(sectionName) end
---@param handler System.Web.IHttpHandler
function System.Web.HttpContext:RemapHandler(handler) end
---@overload fun(self: System.Web.HttpContext, path: string)
---@overload fun(self: System.Web.HttpContext, filePath: string, pathInfo: string, queryString: string)
---@overload fun(self: System.Web.HttpContext, path: string, rebaseClientPath: boolean)
---@param filePath string
---@param pathInfo string
---@param queryString string
---@param setClientFilePath boolean
function System.Web.HttpContext:RewritePath(filePath, pathInfo, queryString, setClientFilePath) end
---@param sessionStateBehavior System.Web.SessionState.SessionStateBehavior
function System.Web.HttpContext:SetSessionStateBehavior(sessionStateBehavior) end
---@overload fun(self: System.Web.HttpContext, userFunc: System.Func)
---@param userFunc System.Func
---@param options System.Web.WebSockets.AspNetWebSocketOptions
function System.Web.HttpContext:AcceptWebSocketRequest(userFunc, options) end
---@param callback System.Action
---@return System.Web.ISubscriptionToken
function System.Web.HttpContext:AddOnRequestCompleted(callback) end
---@param target System.IDisposable
---@return System.Web.ISubscriptionToken
function System.Web.HttpContext:DisposeOnPipelineCompleted(target) end

---@class System.Web.StepTimeout : System.Object
System.Web.StepTimeout = {}
---@alias CS.System.Web.StepTimeout System.Web.StepTimeout
CS.System.Web.StepTimeout = System.Web.StepTimeout

---@return System.Web.StepTimeout
function System.Web.StepTimeout.New() end

---@class System.Web.HttpContextBase : System.Object
---@field AllErrors System.Exception[]
---@field Application System.Web.HttpApplicationStateBase
---@field ApplicationInstance System.Web.HttpApplication
---@field Cache System.Web.Caching.Cache
---@field CurrentHandler System.Web.IHttpHandler
---@field CurrentNotification System.Web.RequestNotification
---@field Error System.Exception
---@field Handler System.Web.IHttpHandler
---@field IsCustomErrorEnabled boolean
---@field IsDebuggingEnabled boolean
---@field IsPostNotification boolean
---@field Items System.Collections.IDictionary
---@field PreviousHandler System.Web.IHttpHandler
---@field Profile System.Web.Profile.ProfileBase
---@field Request System.Web.HttpRequestBase
---@field Response System.Web.HttpResponseBase
---@field Server System.Web.HttpServerUtilityBase
---@field Session System.Web.HttpSessionStateBase
---@field SkipAuthorization boolean
---@field Timestamp System.DateTime
---@field Trace System.Web.TraceContext
---@field User System.Security.Principal.IPrincipal
---@field AllowAsyncDuringSyncStages boolean
---@field AsyncPreloadMode System.Web.Configuration.AsyncPreloadModeFlags
---@field IsWebSocketRequest boolean
---@field IsWebSocketRequestUpgrading boolean
---@field PageInstrumentation System.Web.Instrumentation.PageInstrumentationService
---@field ThreadAbortOnTimeout boolean
---@field WebSocketNegotiatedProtocol string
---@field WebSocketRequestedProtocols System.Collections.Generic.IList
System.Web.HttpContextBase = {}
---@alias CS.System.Web.HttpContextBase System.Web.HttpContextBase
CS.System.Web.HttpContextBase = System.Web.HttpContextBase

---@param errorInfo System.Exception
function System.Web.HttpContextBase:AddError(errorInfo) end
function System.Web.HttpContextBase:ClearError() end
---@overload fun(self: System.Web.HttpContextBase, classKey: string, resourceKey: string) : System.Object
---@param classKey string
---@param resourceKey string
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Web.HttpContextBase:GetGlobalResourceObject(classKey, resourceKey, culture) end
---@overload fun(self: System.Web.HttpContextBase, virtualPath: string, resourceKey: string) : System.Object
---@param virtualPath string
---@param resourceKey string
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Web.HttpContextBase:GetLocalResourceObject(virtualPath, resourceKey, culture) end
---@param sectionName string
---@return System.Object
function System.Web.HttpContextBase:GetSection(sectionName) end
---@param serviceType System.Type
---@return System.Object
function System.Web.HttpContextBase:GetService(serviceType) end
---@param handler System.Web.IHttpHandler
function System.Web.HttpContextBase:RemapHandler(handler) end
---@overload fun(self: System.Web.HttpContextBase, path: string)
---@overload fun(self: System.Web.HttpContextBase, path: string, rebaseClientPath: boolean)
---@overload fun(self: System.Web.HttpContextBase, filePath: string, pathInfo: string, queryString: string)
---@param filePath string
---@param pathInfo string
---@param queryString string
---@param setClientFilePath boolean
function System.Web.HttpContextBase:RewritePath(filePath, pathInfo, queryString, setClientFilePath) end
---@param sessionStateBehavior System.Web.SessionState.SessionStateBehavior
function System.Web.HttpContextBase:SetSessionStateBehavior(sessionStateBehavior) end
---@overload fun(self: System.Web.HttpContextBase, userFunc: System.Func)
---@param userFunc System.Func
---@param options System.Web.WebSockets.AspNetWebSocketOptions
function System.Web.HttpContextBase:AcceptWebSocketRequest(userFunc, options) end
---@param callback System.Action
---@return System.Web.ISubscriptionToken
function System.Web.HttpContextBase:AddOnRequestCompleted(callback) end
---@param target System.IDisposable
---@return System.Web.ISubscriptionToken
function System.Web.HttpContextBase:DisposeOnPipelineCompleted(target) end

---@class System.Web.HttpContextWrapper : System.Web.HttpContextBase
---@field AllErrors System.Exception[]
---@field Application System.Web.HttpApplicationStateBase
---@field ApplicationInstance System.Web.HttpApplication
---@field Cache System.Web.Caching.Cache
---@field CurrentHandler System.Web.IHttpHandler
---@field CurrentNotification System.Web.RequestNotification
---@field Error System.Exception
---@field Handler System.Web.IHttpHandler
---@field IsCustomErrorEnabled boolean
---@field IsDebuggingEnabled boolean
---@field IsPostNotification boolean
---@field Items System.Collections.IDictionary
---@field PreviousHandler System.Web.IHttpHandler
---@field Profile System.Web.Profile.ProfileBase
---@field Request System.Web.HttpRequestBase
---@field Response System.Web.HttpResponseBase
---@field Server System.Web.HttpServerUtilityBase
---@field Session System.Web.HttpSessionStateBase
---@field SkipAuthorization boolean
---@field Timestamp System.DateTime
---@field Trace System.Web.TraceContext
---@field User System.Security.Principal.IPrincipal
---@field AllowAsyncDuringSyncStages boolean
---@field AsyncPreloadMode System.Web.Configuration.AsyncPreloadModeFlags
---@field IsWebSocketRequest boolean
---@field IsWebSocketRequestUpgrading boolean
---@field PageInstrumentation System.Web.Instrumentation.PageInstrumentationService
---@field ThreadAbortOnTimeout boolean
---@field WebSocketNegotiatedProtocol string
---@field WebSocketRequestedProtocols System.Collections.Generic.IList
System.Web.HttpContextWrapper = {}
---@alias CS.System.Web.HttpContextWrapper System.Web.HttpContextWrapper
CS.System.Web.HttpContextWrapper = System.Web.HttpContextWrapper

---@param httpContext System.Web.HttpContext
---@return System.Web.HttpContextWrapper
function System.Web.HttpContextWrapper.New(httpContext) end
---@param errorInfo System.Exception
function System.Web.HttpContextWrapper:AddError(errorInfo) end
function System.Web.HttpContextWrapper:ClearError() end
---@overload fun(self: System.Web.HttpContextWrapper, classKey: string, resourceKey: string) : System.Object
---@param classKey string
---@param resourceKey string
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Web.HttpContextWrapper:GetGlobalResourceObject(classKey, resourceKey, culture) end
---@overload fun(self: System.Web.HttpContextWrapper, virtualPath: string, resourceKey: string) : System.Object
---@param virtualPath string
---@param resourceKey string
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Web.HttpContextWrapper:GetLocalResourceObject(virtualPath, resourceKey, culture) end
---@param sectionName string
---@return System.Object
function System.Web.HttpContextWrapper:GetSection(sectionName) end
---@param serviceType System.Type
---@return System.Object
function System.Web.HttpContextWrapper:GetService(serviceType) end
---@param handler System.Web.IHttpHandler
function System.Web.HttpContextWrapper:RemapHandler(handler) end
---@overload fun(self: System.Web.HttpContextWrapper, path: string)
---@overload fun(self: System.Web.HttpContextWrapper, path: string, rebaseClientPath: boolean)
---@overload fun(self: System.Web.HttpContextWrapper, filePath: string, pathInfo: string, queryString: string)
---@param filePath string
---@param pathInfo string
---@param queryString string
---@param setClientFilePath boolean
function System.Web.HttpContextWrapper:RewritePath(filePath, pathInfo, queryString, setClientFilePath) end
---@param sessionStateBehavior System.Web.SessionState.SessionStateBehavior
function System.Web.HttpContextWrapper:SetSessionStateBehavior(sessionStateBehavior) end
---@overload fun(self: System.Web.HttpContextWrapper, userFunc: System.Func)
---@param userFunc System.Func
---@param options System.Web.WebSockets.AspNetWebSocketOptions
function System.Web.HttpContextWrapper:AcceptWebSocketRequest(userFunc, options) end
---@param callback System.Action
---@return System.Web.ISubscriptionToken
function System.Web.HttpContextWrapper:AddOnRequestCompleted(callback) end
---@param target System.IDisposable
---@return System.Web.ISubscriptionToken
function System.Web.HttpContextWrapper:DisposeOnPipelineCompleted(target) end

---@class System.Web.CookieFlags
---@field Secure System.Web.CookieFlags
---@field HttpOnly System.Web.CookieFlags
System.Web.CookieFlags = {}
---@alias CS.System.Web.CookieFlags System.Web.CookieFlags
CS.System.Web.CookieFlags = System.Web.CookieFlags


---@class System.Web.HttpCookie : System.Object
---@field Domain string
---@field Expires System.DateTime
---@field HasKeys boolean
---@field Item string
---@field Name string
---@field Path string
---@field Secure boolean
---@field Value string
---@field Values System.Collections.Specialized.NameValueCollection
---@field HttpOnly boolean
---@field SameSite System.Web.SameSiteMode
---@field Shareable boolean
System.Web.HttpCookie = {}
---@alias CS.System.Web.HttpCookie System.Web.HttpCookie
CS.System.Web.HttpCookie = System.Web.HttpCookie

---@overload fun(name: string) : System.Web.HttpCookie
---@param name string
---@param value string
---@return System.Web.HttpCookie
function System.Web.HttpCookie.New(name, value) end
---@param input string
---@param out_result System.Web.HttpCookie
---@return boolean,System.Web.HttpCookie
function System.Web.HttpCookie.TryParse(input, out_result) end

---@class System.Web.HttpCookie.CookieNVC : System.Collections.Specialized.NameValueCollection
System.Web.HttpCookie.CookieNVC = {}
---@alias CS.System.Web.HttpCookie.CookieNVC System.Web.HttpCookie.CookieNVC
CS.System.Web.HttpCookie.CookieNVC = System.Web.HttpCookie.CookieNVC

---@return System.Web.HttpCookie.CookieNVC
function System.Web.HttpCookie.CookieNVC.New() end
---@return string
function System.Web.HttpCookie.CookieNVC:ToString() end
---@param name string
---@param value string
function System.Web.HttpCookie.CookieNVC:Set(name, value) end

---@class System.Web.HttpCookieCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field Item System.Web.HttpCookie
---@field Item System.Web.HttpCookie
---@field AllKeys System.String[]
System.Web.HttpCookieCollection = {}
---@alias CS.System.Web.HttpCookieCollection System.Web.HttpCookieCollection
CS.System.Web.HttpCookieCollection = System.Web.HttpCookieCollection

---@return System.Web.HttpCookieCollection
function System.Web.HttpCookieCollection.New() end
---@param cookie System.Web.HttpCookie
function System.Web.HttpCookieCollection:Add(cookie) end
function System.Web.HttpCookieCollection:Clear() end
---@param dest System.Array
---@param index number
function System.Web.HttpCookieCollection:CopyTo(dest, index) end
---@param index number
---@return string
function System.Web.HttpCookieCollection:GetKey(index) end
---@param name string
function System.Web.HttpCookieCollection:Remove(name) end
---@param cookie System.Web.HttpCookie
function System.Web.HttpCookieCollection:Set(cookie) end
---@overload fun(self: System.Web.HttpCookieCollection, index: number) : System.Web.HttpCookie
---@param name string
---@return System.Web.HttpCookie
function System.Web.HttpCookieCollection:Get(name) end

---@class System.Web.HttpCookieMode
---@field UseUri System.Web.HttpCookieMode
---@field UseCookies System.Web.HttpCookieMode
---@field AutoDetect System.Web.HttpCookieMode
---@field UseDeviceProfile System.Web.HttpCookieMode
System.Web.HttpCookieMode = {}
---@alias CS.System.Web.HttpCookieMode System.Web.HttpCookieMode
CS.System.Web.HttpCookieMode = System.Web.HttpCookieMode


---@class System.Web.HttpException : System.Runtime.InteropServices.ExternalException
---@field WebEventCode number
System.Web.HttpException = {}
---@alias CS.System.Web.HttpException System.Web.HttpException
CS.System.Web.HttpException = System.Web.HttpException

---@overload fun() : System.Web.HttpException
---@overload fun(message: string) : System.Web.HttpException
---@overload fun(message: string, innerException: System.Exception) : System.Web.HttpException
---@overload fun(httpCode: number, message: string) : System.Web.HttpException
---@overload fun(httpCode: number, message: string, hr: number) : System.Web.HttpException
---@overload fun(message: string, hr: number) : System.Web.HttpException
---@param httpCode number
---@param message string
---@param innerException System.Exception
---@return System.Web.HttpException
function System.Web.HttpException.New(httpCode, message, innerException) end
---@param message string
---@return System.Web.HttpException
function System.Web.HttpException.CreateFromLastError(message) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.HttpException:GetObjectData(info, context) end
---@return string
function System.Web.HttpException:GetHtmlErrorMessage() end
---@return number
function System.Web.HttpException:GetHttpCode() end

---@class System.Web.HttpFileCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field Item System.Web.HttpPostedFile
---@field Item System.Web.HttpPostedFile
---@field AllKeys System.String[]
System.Web.HttpFileCollection = {}
---@alias CS.System.Web.HttpFileCollection System.Web.HttpFileCollection
CS.System.Web.HttpFileCollection = System.Web.HttpFileCollection

---@param dest System.Array
---@param index number
function System.Web.HttpFileCollection:CopyTo(dest, index) end
---@param index number
---@return string
function System.Web.HttpFileCollection:GetKey(index) end
---@overload fun(self: System.Web.HttpFileCollection, index: number) : System.Web.HttpPostedFile
---@param name string
---@return System.Web.HttpPostedFile
function System.Web.HttpFileCollection:Get(name) end
---@param name string
---@return System.Collections.Generic.IList
function System.Web.HttpFileCollection:GetMultiple(name) end

---@class System.Web.HttpFileCollectionWrapper : System.Web.HttpFileCollectionBase
---@field AllKeys System.String[]
---@field Count number
---@field IsSynchronized boolean
---@field Item System.Web.HttpPostedFileBase
---@field Item System.Web.HttpPostedFileBase
---@field Keys System.Collections.Specialized.NameObjectCollectionBase.KeysCollection
---@field SyncRoot System.Object
System.Web.HttpFileCollectionWrapper = {}
---@alias CS.System.Web.HttpFileCollectionWrapper System.Web.HttpFileCollectionWrapper
CS.System.Web.HttpFileCollectionWrapper = System.Web.HttpFileCollectionWrapper

---@param httpFileCollection System.Web.HttpFileCollection
---@return System.Web.HttpFileCollectionWrapper
function System.Web.HttpFileCollectionWrapper.New(httpFileCollection) end
---@param dest System.Array
---@param index number
function System.Web.HttpFileCollectionWrapper:CopyTo(dest, index) end
---@overload fun(self: System.Web.HttpFileCollectionWrapper, index: number) : System.Web.HttpPostedFileBase
---@param name string
---@return System.Web.HttpPostedFileBase
function System.Web.HttpFileCollectionWrapper:Get(name) end
---@return System.Collections.IEnumerator
function System.Web.HttpFileCollectionWrapper:GetEnumerator() end
---@param index number
---@return string
function System.Web.HttpFileCollectionWrapper:GetKey(index) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.HttpFileCollectionWrapper:GetObjectData(info, context) end
---@param sender System.Object
function System.Web.HttpFileCollectionWrapper:OnDeserialization(sender) end

---@class System.Web.HttpForbiddenHandler : System.Object
---@field IsReusable boolean
System.Web.HttpForbiddenHandler = {}
---@alias CS.System.Web.HttpForbiddenHandler System.Web.HttpForbiddenHandler
CS.System.Web.HttpForbiddenHandler = System.Web.HttpForbiddenHandler

---@return System.Web.HttpForbiddenHandler
function System.Web.HttpForbiddenHandler.New() end
---@param context System.Web.HttpContext
function System.Web.HttpForbiddenHandler:ProcessRequest(context) end

---@class System.Web.HttpHeaderCollection : System.Collections.Specialized.NameValueCollection
System.Web.HttpHeaderCollection = {}
---@alias CS.System.Web.HttpHeaderCollection System.Web.HttpHeaderCollection
CS.System.Web.HttpHeaderCollection = System.Web.HttpHeaderCollection

---@return System.Web.HttpHeaderCollection
function System.Web.HttpHeaderCollection.New() end
---@param name string
---@param value string
function System.Web.HttpHeaderCollection:Add(name, value) end
---@param name string
---@param value string
function System.Web.HttpHeaderCollection:Set(name, value) end

---@class System.Web.HttpMethodNotAllowedHandler : System.Object
---@field IsReusable boolean
System.Web.HttpMethodNotAllowedHandler = {}
---@alias CS.System.Web.HttpMethodNotAllowedHandler System.Web.HttpMethodNotAllowedHandler
CS.System.Web.HttpMethodNotAllowedHandler = System.Web.HttpMethodNotAllowedHandler

---@return System.Web.HttpMethodNotAllowedHandler
function System.Web.HttpMethodNotAllowedHandler.New() end
---@param context System.Web.HttpContext
function System.Web.HttpMethodNotAllowedHandler:ProcessRequest(context) end

---@class System.Web.HttpModuleCollection : System.Collections.Specialized.NameObjectCollectionBase
---@field Item System.Web.IHttpModule
---@field Item System.Web.IHttpModule
---@field AllKeys System.String[]
System.Web.HttpModuleCollection = {}
---@alias CS.System.Web.HttpModuleCollection System.Web.HttpModuleCollection
CS.System.Web.HttpModuleCollection = System.Web.HttpModuleCollection

---@param dest System.Array
---@param index number
function System.Web.HttpModuleCollection:CopyTo(dest, index) end
---@param index number
---@return string
function System.Web.HttpModuleCollection:GetKey(index) end
---@overload fun(self: System.Web.HttpModuleCollection, index: number) : System.Web.IHttpModule
---@param name string
---@return System.Web.IHttpModule
function System.Web.HttpModuleCollection:Get(name) end

---@class System.Web.HttpNotFoundHandler : System.Object
---@field IsReusable boolean
System.Web.HttpNotFoundHandler = {}
---@alias CS.System.Web.HttpNotFoundHandler System.Web.HttpNotFoundHandler
CS.System.Web.HttpNotFoundHandler = System.Web.HttpNotFoundHandler

---@return System.Web.HttpNotFoundHandler
function System.Web.HttpNotFoundHandler.New() end
---@param context System.Web.HttpContext
function System.Web.HttpNotFoundHandler:ProcessRequest(context) end

---@class System.Web.HttpNotImplementedHandler : System.Object
---@field IsReusable boolean
System.Web.HttpNotImplementedHandler = {}
---@alias CS.System.Web.HttpNotImplementedHandler System.Web.HttpNotImplementedHandler
CS.System.Web.HttpNotImplementedHandler = System.Web.HttpNotImplementedHandler

---@return System.Web.HttpNotImplementedHandler
function System.Web.HttpNotImplementedHandler.New() end
---@param context System.Web.HttpContext
function System.Web.HttpNotImplementedHandler:ProcessRequest(context) end

---@class System.Web.HttpParamsCollection : System.Web.WebROCollection
---@field AllKeys System.String[]
---@field Count number
System.Web.HttpParamsCollection = {}
---@alias CS.System.Web.HttpParamsCollection System.Web.HttpParamsCollection
CS.System.Web.HttpParamsCollection = System.Web.HttpParamsCollection

---@param queryString System.Collections.Specialized.NameValueCollection
---@param form System.Collections.Specialized.NameValueCollection
---@param serverVariables System.Collections.Specialized.NameValueCollection
---@param cookies System.Web.HttpCookieCollection
---@return System.Web.HttpParamsCollection
function System.Web.HttpParamsCollection.New(queryString, form, serverVariables, cookies) end
---@overload fun(self: System.Web.HttpParamsCollection, name: string) : string
---@param index number
---@return string
function System.Web.HttpParamsCollection:Get(index) end
---@param index number
---@return string
function System.Web.HttpParamsCollection:GetKey(index) end
---@overload fun(self: System.Web.HttpParamsCollection, index: number) : System.String[]
---@param name string
---@return System.String[]
function System.Web.HttpParamsCollection:GetValues(name) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.HttpParamsCollection:GetObjectData(info, context) end

---@class System.Web.HttpParseException : System.Web.HttpException
---@field FileName string
---@field Line number
---@field VirtualPath string
---@field ParserErrors System.Web.ParserErrorCollection
System.Web.HttpParseException = {}
---@alias CS.System.Web.HttpParseException System.Web.HttpParseException
CS.System.Web.HttpParseException = System.Web.HttpParseException

---@overload fun() : System.Web.HttpParseException
---@overload fun(message: string) : System.Web.HttpParseException
---@overload fun(message: string, innerException: System.Exception) : System.Web.HttpParseException
---@param message string
---@param innerException System.Exception
---@param virtualPath string
---@param sourceCode string
---@param line number
---@return System.Web.HttpParseException
function System.Web.HttpParseException.New(message, innerException, virtualPath, sourceCode, line) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.HttpParseException:GetObjectData(info, context) end

---@class System.Web.HttpPostedFile : System.Object
---@field ContentType string
---@field ContentLength number
---@field FileName string
---@field InputStream System.IO.Stream
System.Web.HttpPostedFile = {}
---@alias CS.System.Web.HttpPostedFile System.Web.HttpPostedFile
CS.System.Web.HttpPostedFile = System.Web.HttpPostedFile

---@param filename string
function System.Web.HttpPostedFile:SaveAs(filename) end

---@class System.Web.HttpPostedFile.ReadSubStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
System.Web.HttpPostedFile.ReadSubStream = {}
---@alias CS.System.Web.HttpPostedFile.ReadSubStream System.Web.HttpPostedFile.ReadSubStream
CS.System.Web.HttpPostedFile.ReadSubStream = System.Web.HttpPostedFile.ReadSubStream

---@param s System.IO.Stream
---@param offset number
---@param length number
---@return System.Web.HttpPostedFile.ReadSubStream
function System.Web.HttpPostedFile.ReadSubStream.New(s, offset, length) end
function System.Web.HttpPostedFile.ReadSubStream:Flush() end
---@param buffer System.Byte[]
---@param dest_offset number
---@param count number
---@return number
function System.Web.HttpPostedFile.ReadSubStream:Read(buffer, dest_offset, count) end
---@return number
function System.Web.HttpPostedFile.ReadSubStream:ReadByte() end
---@param d number
---@param origin System.IO.SeekOrigin
---@return number
function System.Web.HttpPostedFile.ReadSubStream:Seek(d, origin) end
---@param value number
function System.Web.HttpPostedFile.ReadSubStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.HttpPostedFile.ReadSubStream:Write(buffer, offset, count) end

---@class System.Web.HttpRequest : System.Object
---@field AcceptTypes System.String[]
---@field LogonUserIdentity System.Security.Principal.WindowsIdentity
---@field AnonymousID string
---@field ApplicationPath string
---@field Browser System.Web.HttpBrowserCapabilities
---@field ClientCertificate System.Web.HttpClientCertificate
---@field ContentEncoding System.Text.Encoding
---@field ContentLength number
---@field ContentType string
---@field Cookies System.Web.HttpCookieCollection
---@field CurrentExecutionFilePath string
---@field CurrentExecutionFilePathExtension string
---@field AppRelativeCurrentExecutionFilePath string
---@field FilePath string
---@field Files System.Web.HttpFileCollection
---@field Filter System.IO.Stream
---@field Form System.Collections.Specialized.NameValueCollection
---@field Headers System.Collections.Specialized.NameValueCollection
---@field HttpMethod string
---@field RequestContext System.Web.Routing.RequestContext
---@field HttpChannelBinding System.Security.Authentication.ExtendedProtection.ChannelBinding
---@field InputStream System.IO.Stream
---@field IsAuthenticated boolean
---@field IsSecureConnection boolean
---@field Item string
---@field Params System.Collections.Specialized.NameValueCollection
---@field Path string
---@field PathInfo string
---@field PhysicalApplicationPath string
---@field PhysicalPath string
---@field QueryString System.Collections.Specialized.NameValueCollection
---@field RawUrl string
---@field RequestType string
---@field ServerVariables System.Collections.Specialized.NameValueCollection
---@field TimedOutToken System.Threading.CancellationToken
---@field TotalBytes number
---@field Unvalidated System.Web.UnvalidatedRequestValues
---@field Url System.Uri
---@field UrlReferrer System.Uri
---@field UserAgent string
---@field UserHostAddress string
---@field UserHostName string
---@field UserLanguages System.String[]
---@field IsLocal boolean
---@field ReadEntityBodyMode System.Web.ReadEntityBodyMode
---@field TlsTokenBindingInfo System.Web.ITlsTokenBindingInfo
System.Web.HttpRequest = {}
---@alias CS.System.Web.HttpRequest System.Web.HttpRequest
CS.System.Web.HttpRequest = System.Web.HttpRequest

---@param filename string
---@param url string
---@param queryString string
---@return System.Web.HttpRequest
function System.Web.HttpRequest.New(filename, url, queryString) end
---@return System.IO.Stream
function System.Web.HttpRequest:GetBufferedInputStream() end
---@overload fun() : System.IO.Stream
---@param disableMaxRequestLength boolean
---@return System.IO.Stream
function System.Web.HttpRequest:GetBufferlessInputStream(disableMaxRequestLength) end
---@param count number
---@return System.Byte[]
function System.Web.HttpRequest:BinaryRead(count) end
---@param imageFieldName string
---@return System.Int32[]
function System.Web.HttpRequest:MapImageCoordinates(imageFieldName) end
---@param imageFieldName string
---@return System.Double[]
function System.Web.HttpRequest:MapRawImageCoordinates(imageFieldName) end
---@overload fun(self: System.Web.HttpRequest, virtualPath: string) : string
---@param virtualPath string
---@param baseVirtualDir string
---@param allowCrossAppMapping boolean
---@return string
function System.Web.HttpRequest:MapPath(virtualPath, baseVirtualDir, allowCrossAppMapping) end
---@param filename string
---@param includeHeaders boolean
function System.Web.HttpRequest:SaveAs(filename, includeHeaders) end
function System.Web.HttpRequest:ValidateInput() end
---@overload fun()
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.HttpRequest:InsertEntityBody(buffer, offset, count) end
function System.Web.HttpRequest:Abort() end

---@class System.Web.HttpRequest.BufferlessInputStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
System.Web.HttpRequest.BufferlessInputStream = {}
---@alias CS.System.Web.HttpRequest.BufferlessInputStream System.Web.HttpRequest.BufferlessInputStream
CS.System.Web.HttpRequest.BufferlessInputStream = System.Web.HttpRequest.BufferlessInputStream

---@param request System.Web.HttpRequest
---@return System.Web.HttpRequest.BufferlessInputStream
function System.Web.HttpRequest.BufferlessInputStream.New(request) end
function System.Web.HttpRequest.BufferlessInputStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Web.HttpRequest.BufferlessInputStream:Read(buffer, offset, count) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Web.HttpRequest.BufferlessInputStream:Seek(offset, origin) end
---@param value number
function System.Web.HttpRequest.BufferlessInputStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.HttpRequest.BufferlessInputStream:Write(buffer, offset, count) end

---@class System.Web.HttpMultipart : System.Object
System.Web.HttpMultipart = {}
---@alias CS.System.Web.HttpMultipart System.Web.HttpMultipart
CS.System.Web.HttpMultipart = System.Web.HttpMultipart

---@param data System.IO.Stream
---@param b string
---@param encoding System.Text.Encoding
---@return System.Web.HttpMultipart
function System.Web.HttpMultipart.New(data, b, encoding) end
---@return System.Web.HttpMultipart.Element
function System.Web.HttpMultipart:ReadNextElement() end

---@class System.Web.HttpMultipart.Element : System.Object
---@field ContentType string
---@field Name string
---@field Filename string
---@field Start number
---@field Length number
System.Web.HttpMultipart.Element = {}
---@alias CS.System.Web.HttpMultipart.Element System.Web.HttpMultipart.Element
CS.System.Web.HttpMultipart.Element = System.Web.HttpMultipart.Element

---@return System.Web.HttpMultipart.Element
function System.Web.HttpMultipart.Element.New() end
---@return string
function System.Web.HttpMultipart.Element:ToString() end

---@class System.Web.HttpRequestValidationException : System.Web.HttpException
System.Web.HttpRequestValidationException = {}
---@alias CS.System.Web.HttpRequestValidationException System.Web.HttpRequestValidationException
CS.System.Web.HttpRequestValidationException = System.Web.HttpRequestValidationException

---@overload fun() : System.Web.HttpRequestValidationException
---@overload fun(message: string) : System.Web.HttpRequestValidationException
---@param message string
---@param innerException System.Exception
---@return System.Web.HttpRequestValidationException
function System.Web.HttpRequestValidationException.New(message, innerException) end

---@class System.Web.HttpRequestWrapper : System.Web.HttpRequestBase
---@field AcceptTypes System.String[]
---@field AnonymousID string
---@field ApplicationPath string
---@field AppRelativeCurrentExecutionFilePath string
---@field Browser System.Web.HttpBrowserCapabilitiesBase
---@field ClientCertificate System.Web.HttpClientCertificate
---@field ContentEncoding System.Text.Encoding
---@field ContentLength number
---@field ContentType string
---@field Cookies System.Web.HttpCookieCollection
---@field CurrentExecutionFilePath string
---@field FilePath string
---@field Files System.Web.HttpFileCollectionBase
---@field Filter System.IO.Stream
---@field Form System.Collections.Specialized.NameValueCollection
---@field Headers System.Collections.Specialized.NameValueCollection
---@field HttpMethod string
---@field HttpChannelBinding System.Security.Authentication.ExtendedProtection.ChannelBinding
---@field InputStream System.IO.Stream
---@field IsAuthenticated boolean
---@field IsLocal boolean
---@field IsSecureConnection boolean
---@field Item string
---@field LogonUserIdentity System.Security.Principal.WindowsIdentity
---@field Params System.Collections.Specialized.NameValueCollection
---@field Path string
---@field PathInfo string
---@field PhysicalApplicationPath string
---@field PhysicalPath string
---@field QueryString System.Collections.Specialized.NameValueCollection
---@field RawUrl string
---@field RequestType string
---@field RequestContext System.Web.Routing.RequestContext
---@field ServerVariables System.Collections.Specialized.NameValueCollection
---@field TimedOutToken System.Threading.CancellationToken
---@field TotalBytes number
---@field Unvalidated System.Web.UnvalidatedRequestValuesBase
---@field ReadEntityBodyMode System.Web.ReadEntityBodyMode
---@field Url System.Uri
---@field UrlReferrer System.Uri
---@field UserAgent string
---@field UserHostAddress string
---@field UserHostName string
---@field UserLanguages System.String[]
System.Web.HttpRequestWrapper = {}
---@alias CS.System.Web.HttpRequestWrapper System.Web.HttpRequestWrapper
CS.System.Web.HttpRequestWrapper = System.Web.HttpRequestWrapper

---@param httpRequest System.Web.HttpRequest
---@return System.Web.HttpRequestWrapper
function System.Web.HttpRequestWrapper.New(httpRequest) end
---@return System.IO.Stream
function System.Web.HttpRequestWrapper:GetBufferedInputStream() end
---@overload fun() : System.IO.Stream
---@param disableMaxRequestLength boolean
---@return System.IO.Stream
function System.Web.HttpRequestWrapper:GetBufferlessInputStream(disableMaxRequestLength) end
function System.Web.HttpRequestWrapper:Abort() end
---@param count number
---@return System.Byte[]
function System.Web.HttpRequestWrapper:BinaryRead(count) end
---@param imageFieldName string
---@return System.Int32[]
function System.Web.HttpRequestWrapper:MapImageCoordinates(imageFieldName) end
---@overload fun(self: System.Web.HttpRequestWrapper, virtualPath: string) : string
---@param virtualPath string
---@param baseVirtualDir string
---@param allowCrossAppMapping boolean
---@return string
function System.Web.HttpRequestWrapper:MapPath(virtualPath, baseVirtualDir, allowCrossAppMapping) end
---@param imageFieldName string
---@return System.Double[]
function System.Web.HttpRequestWrapper:MapRawImageCoordinates(imageFieldName) end
---@param filename string
---@param includeHeaders boolean
function System.Web.HttpRequestWrapper:SaveAs(filename, includeHeaders) end
function System.Web.HttpRequestWrapper:ValidateInput() end

---@class System.Web.HttpResponse : System.Object
---@field Buffer boolean
---@field BufferOutput boolean
---@field ContentEncoding System.Text.Encoding
---@field ContentType string
---@field Charset string
---@field Cookies System.Web.HttpCookieCollection
---@field Expires number
---@field ExpiresAbsolute System.DateTime
---@field Filter System.IO.Stream
---@field HeaderEncoding System.Text.Encoding
---@field Headers System.Collections.Specialized.NameValueCollection
---@field IsClientConnected boolean
---@field IsRequestBeingRedirected boolean
---@field Output System.IO.TextWriter
---@field OutputStream System.IO.Stream
---@field RedirectLocation string
---@field Status string
---@field SubStatusCode number
---@field SuppressFormsAuthenticationRedirect boolean
---@field TrySkipIisCustomErrors boolean
---@field StatusCode number
---@field StatusDescription string
---@field SuppressContent boolean
---@field Cache System.Web.HttpCachePolicy
---@field CacheControl string
---@field ClientDisconnectedToken System.Threading.CancellationToken
---@field HeadersWritten boolean
---@field SupportsAsyncFlush boolean
---@field SuppressDefaultCacheControlHeader boolean
System.Web.HttpResponse = {}
---@alias CS.System.Web.HttpResponse System.Web.HttpResponse
CS.System.Web.HttpResponse = System.Web.HttpResponse

---@param writer System.IO.TextWriter
---@return System.Web.HttpResponse
function System.Web.HttpResponse.New(writer) end
---@overload fun(path: string, providerName: string)
---@param path string
function System.Web.HttpResponse.RemoveOutputCacheItem(path) end
---@param dependencies System.Web.Caching.CacheDependency[]
function System.Web.HttpResponse:AddCacheDependency(dependencies) end
---@overload fun(self: System.Web.HttpResponse, cacheKeys: System.String[])
---@param cacheKeys System.Collections.ArrayList
function System.Web.HttpResponse:AddCacheItemDependencies(cacheKeys) end
---@param cacheKey string
function System.Web.HttpResponse:AddCacheItemDependency(cacheKey) end
---@overload fun(self: System.Web.HttpResponse, filenames: System.Collections.ArrayList)
---@param filenames System.String[]
function System.Web.HttpResponse:AddFileDependencies(filenames) end
---@param filename string
function System.Web.HttpResponse:AddFileDependency(filename) end
---@param name string
---@param value string
function System.Web.HttpResponse:AddHeader(name, value) end
---@param cookie System.Web.HttpCookie
function System.Web.HttpResponse:AppendCookie(cookie) end
---@param name string
---@param value string
function System.Web.HttpResponse:AppendHeader(name, value) end
---@param param string
function System.Web.HttpResponse:AppendToLog(param) end
---@param virtualPath string
---@return string
function System.Web.HttpResponse:ApplyAppPathModifier(virtualPath) end
---@param buffer System.Byte[]
function System.Web.HttpResponse:BinaryWrite(buffer) end
function System.Web.HttpResponse:Clear() end
function System.Web.HttpResponse:ClearContent() end
function System.Web.HttpResponse:ClearHeaders() end
function System.Web.HttpResponse:Close() end
function System.Web.HttpResponse:DisableKernelCache() end
function System.Web.HttpResponse:End() end
function System.Web.HttpResponse:Flush() end
---@param value string
function System.Web.HttpResponse:Pics(value) end
---@overload fun(self: System.Web.HttpResponse, url: string)
---@param url string
---@param endResponse boolean
function System.Web.HttpResponse:Redirect(url, endResponse) end
---@overload fun(self: System.Web.HttpResponse, url: string)
---@param url string
---@param endResponse boolean
function System.Web.HttpResponse:RedirectPermanent(url, endResponse) end
---@overload fun(self: System.Web.HttpResponse, routeValues: System.Object)
---@overload fun(self: System.Web.HttpResponse, routeValues: System.Web.Routing.RouteValueDictionary)
---@overload fun(self: System.Web.HttpResponse, routeName: string)
---@overload fun(self: System.Web.HttpResponse, routeName: string, routeValues: System.Object)
---@param routeName string
---@param routeValues System.Web.Routing.RouteValueDictionary
function System.Web.HttpResponse:RedirectToRoute(routeName, routeValues) end
---@overload fun(self: System.Web.HttpResponse, routeValues: System.Object)
---@overload fun(self: System.Web.HttpResponse, routeValues: System.Web.Routing.RouteValueDictionary)
---@overload fun(self: System.Web.HttpResponse, routeName: string)
---@overload fun(self: System.Web.HttpResponse, routeName: string, routeValues: System.Object)
---@param routeName string
---@param routeValues System.Web.Routing.RouteValueDictionary
function System.Web.HttpResponse:RedirectToRoutePermanent(routeName, routeValues) end
---@param cookie System.Web.HttpCookie
function System.Web.HttpResponse:SetCookie(cookie) end
---@overload fun(self: System.Web.HttpResponse, ch: System.Char)
---@overload fun(self: System.Web.HttpResponse, obj: System.Object)
---@overload fun(self: System.Web.HttpResponse, s: string)
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Web.HttpResponse:Write(buffer, index, count) end
---@overload fun(self: System.Web.HttpResponse, filename: string)
---@overload fun(self: System.Web.HttpResponse, filename: string, readIntoMemory: boolean)
---@overload fun(self: System.Web.HttpResponse, fileHandle: System.IntPtr, offset: number, size: number)
---@param filename string
---@param offset number
---@param size number
function System.Web.HttpResponse:WriteFile(filename, offset, size) end
---@param callback System.Web.HttpResponseSubstitutionCallback
function System.Web.HttpResponse:WriteSubstitution(callback) end
---@overload fun(self: System.Web.HttpResponse, filename: string)
---@param filename string
---@param offset number
---@param length number
function System.Web.HttpResponse:TransmitFile(filename, offset, length) end
---@param callback System.Action
---@return System.Web.ISubscriptionToken
function System.Web.HttpResponse:AddOnSendingHeaders(callback) end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.HttpResponse:BeginFlush(callback, state) end
function System.Web.HttpResponse:DisableUserCache() end
---@param asyncResult System.IAsyncResult
function System.Web.HttpResponse:EndFlush(asyncResult) end
---@return System.Threading.Tasks.Task
function System.Web.HttpResponse:FlushAsync() end
---@overload fun(self: System.Web.HttpResponse, path: string)
---@param path string
---@param method string
---@param headers System.Collections.Specialized.NameValueCollection
function System.Web.HttpResponse:PushPromise(path, method, headers) end

---@class System.Web.FlagEnd : System.Object
---@field Value System.Object
System.Web.FlagEnd = {}
---@alias CS.System.Web.FlagEnd System.Web.FlagEnd
CS.System.Web.FlagEnd = System.Web.FlagEnd


---@class System.Web.BaseResponseHeader : System.Object
---@field Value string
System.Web.BaseResponseHeader = {}
---@alias CS.System.Web.BaseResponseHeader System.Web.BaseResponseHeader
CS.System.Web.BaseResponseHeader = System.Web.BaseResponseHeader


---@class System.Web.KnownResponseHeader : System.Web.BaseResponseHeader
---@field ID number
System.Web.KnownResponseHeader = {}
---@alias CS.System.Web.KnownResponseHeader System.Web.KnownResponseHeader
CS.System.Web.KnownResponseHeader = System.Web.KnownResponseHeader


---@class System.Web.UnknownResponseHeader : System.Web.BaseResponseHeader
---@field Name string
System.Web.UnknownResponseHeader = {}
---@alias CS.System.Web.UnknownResponseHeader System.Web.UnknownResponseHeader
CS.System.Web.UnknownResponseHeader = System.Web.UnknownResponseHeader

---@param name string
---@param val string
---@return System.Web.UnknownResponseHeader
function System.Web.UnknownResponseHeader.New(name, val) end

---@class System.Web.HttpResponseStream : System.IO.Stream
---@field Filter System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
System.Web.HttpResponseStream = {}
---@alias CS.System.Web.HttpResponseStream System.Web.HttpResponseStream
CS.System.Web.HttpResponseStream = System.Web.HttpResponseStream

---@param response System.Web.HttpResponse
---@return System.Web.HttpResponseStream
function System.Web.HttpResponseStream.New(response) end
function System.Web.HttpResponseStream:Flush() end
---@param f string
---@param offset number
---@param length number
function System.Web.HttpResponseStream:WriteFile(f, offset, length) end
---@param ptr System.IntPtr
---@param length number
function System.Web.HttpResponseStream:WritePtr(ptr, length) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.HttpResponseStream:Write(buffer, offset, count) end
function System.Web.HttpResponseStream:Clear() end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Web.HttpResponseStream:Seek(offset, origin) end
---@param value number
function System.Web.HttpResponseStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Web.HttpResponseStream:Read(buffer, offset, count) end

---@class System.Web.HttpResponseStream.BlockManager : System.Object
---@field Position number
System.Web.HttpResponseStream.BlockManager = {}
---@alias CS.System.Web.HttpResponseStream.BlockManager System.Web.HttpResponseStream.BlockManager
CS.System.Web.HttpResponseStream.BlockManager = System.Web.HttpResponseStream.BlockManager

---@return System.Web.HttpResponseStream.BlockManager
function System.Web.HttpResponseStream.BlockManager.New() end
---@overload fun(self: System.Web.HttpResponseStream.BlockManager, buffer: System.Byte[], offset: number, count: number)
---@param ptr System.IntPtr
---@param count number
function System.Web.HttpResponseStream.BlockManager:Write(ptr, count) end
---@overload fun(self: System.Web.HttpResponseStream.BlockManager, wr: System.Web.HttpWorkerRequest, start: number, _end: number)
---@param stream System.IO.Stream
---@param start number
---@param _end number
function System.Web.HttpResponseStream.BlockManager:Send(stream, start, _end) end
function System.Web.HttpResponseStream.BlockManager:Dispose() end

---@class System.Web.HttpResponseStream.Bucket : System.Object
---@field Next System.Web.HttpResponseStream.Bucket
---@field Length number
System.Web.HttpResponseStream.Bucket = {}
---@alias CS.System.Web.HttpResponseStream.Bucket System.Web.HttpResponseStream.Bucket
CS.System.Web.HttpResponseStream.Bucket = System.Web.HttpResponseStream.Bucket

function System.Web.HttpResponseStream.Bucket:Dispose() end
---@overload fun(self: System.Web.HttpResponseStream.Bucket, wr: System.Web.HttpWorkerRequest)
---@param stream System.IO.Stream
function System.Web.HttpResponseStream.Bucket:Send(stream) end

---@class System.Web.HttpResponseStream.ByteBucket : System.Web.HttpResponseStream.Bucket
---@field blocks System.Web.HttpResponseStream.BlockManager
---@field Expandable boolean
---@field Length number
System.Web.HttpResponseStream.ByteBucket = {}
---@alias CS.System.Web.HttpResponseStream.ByteBucket System.Web.HttpResponseStream.ByteBucket
CS.System.Web.HttpResponseStream.ByteBucket = System.Web.HttpResponseStream.ByteBucket

---@overload fun() : System.Web.HttpResponseStream.ByteBucket
---@param blocks System.Web.HttpResponseStream.BlockManager
---@return System.Web.HttpResponseStream.ByteBucket
function System.Web.HttpResponseStream.ByteBucket.New(blocks) end
---@overload fun(self: System.Web.HttpResponseStream.ByteBucket, buf: System.Byte[], offset: number, count: number) : number
---@param ptr System.IntPtr
---@param count number
---@return number
function System.Web.HttpResponseStream.ByteBucket:Write(ptr, count) end
function System.Web.HttpResponseStream.ByteBucket:Dispose() end
---@overload fun(self: System.Web.HttpResponseStream.ByteBucket, wr: System.Web.HttpWorkerRequest)
---@param stream System.IO.Stream
function System.Web.HttpResponseStream.ByteBucket:Send(stream) end

---@class System.Web.HttpResponseStream.BufferedFileBucket : System.Web.HttpResponseStream.Bucket
---@field Length number
System.Web.HttpResponseStream.BufferedFileBucket = {}
---@alias CS.System.Web.HttpResponseStream.BufferedFileBucket System.Web.HttpResponseStream.BufferedFileBucket
CS.System.Web.HttpResponseStream.BufferedFileBucket = System.Web.HttpResponseStream.BufferedFileBucket

---@param f string
---@param off number
---@param len number
---@return System.Web.HttpResponseStream.BufferedFileBucket
function System.Web.HttpResponseStream.BufferedFileBucket.New(f, off, len) end
---@overload fun(self: System.Web.HttpResponseStream.BufferedFileBucket, wr: System.Web.HttpWorkerRequest)
---@param stream System.IO.Stream
function System.Web.HttpResponseStream.BufferedFileBucket:Send(stream) end
---@return string
function System.Web.HttpResponseStream.BufferedFileBucket:ToString() end

---@class System.Web.HttpResponseSubstitutionCallback : System.MulticastDelegate
System.Web.HttpResponseSubstitutionCallback = {}
---@alias CS.System.Web.HttpResponseSubstitutionCallback System.Web.HttpResponseSubstitutionCallback
CS.System.Web.HttpResponseSubstitutionCallback = System.Web.HttpResponseSubstitutionCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.HttpResponseSubstitutionCallback
function System.Web.HttpResponseSubstitutionCallback.New(object, method) end
---@param context System.Web.HttpContext
---@return string
function System.Web.HttpResponseSubstitutionCallback:Invoke(context) end
---@param context System.Web.HttpContext
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.HttpResponseSubstitutionCallback:BeginInvoke(context, callback, object) end
---@param result System.IAsyncResult
---@return string
function System.Web.HttpResponseSubstitutionCallback:EndInvoke(result) end

---@class System.Web.HttpResponseWrapper : System.Web.HttpResponseBase
---@field Buffer boolean
---@field BufferOutput boolean
---@field Cache System.Web.HttpCachePolicyBase
---@field CacheControl string
---@field Charset string
---@field ClientDisconnectedToken System.Threading.CancellationToken
---@field ContentEncoding System.Text.Encoding
---@field ContentType string
---@field Cookies System.Web.HttpCookieCollection
---@field Expires number
---@field ExpiresAbsolute System.DateTime
---@field Filter System.IO.Stream
---@field HeaderEncoding System.Text.Encoding
---@field Headers System.Collections.Specialized.NameValueCollection
---@field IsClientConnected boolean
---@field IsRequestBeingRedirected boolean
---@field Output System.IO.TextWriter
---@field OutputStream System.IO.Stream
---@field RedirectLocation string
---@field Status string
---@field StatusCode number
---@field StatusDescription string
---@field SubStatusCode number
---@field SuppressContent boolean
---@field SuppressFormsAuthenticationRedirect boolean
---@field TrySkipIisCustomErrors boolean
System.Web.HttpResponseWrapper = {}
---@alias CS.System.Web.HttpResponseWrapper System.Web.HttpResponseWrapper
CS.System.Web.HttpResponseWrapper = System.Web.HttpResponseWrapper

---@param httpResponse System.Web.HttpResponse
---@return System.Web.HttpResponseWrapper
function System.Web.HttpResponseWrapper.New(httpResponse) end
---@param dependencies System.Web.Caching.CacheDependency[]
function System.Web.HttpResponseWrapper:AddCacheDependency(dependencies) end
---@overload fun(self: System.Web.HttpResponseWrapper, cacheKeys: System.Collections.ArrayList)
---@param cacheKeys System.String[]
function System.Web.HttpResponseWrapper:AddCacheItemDependencies(cacheKeys) end
---@param cacheKey string
function System.Web.HttpResponseWrapper:AddCacheItemDependency(cacheKey) end
---@overload fun(self: System.Web.HttpResponseWrapper, filenames: System.Collections.ArrayList)
---@param filenames System.String[]
function System.Web.HttpResponseWrapper:AddFileDependencies(filenames) end
---@param filename string
function System.Web.HttpResponseWrapper:AddFileDependency(filename) end
---@param name string
---@param value string
function System.Web.HttpResponseWrapper:AddHeader(name, value) end
---@param cookie System.Web.HttpCookie
function System.Web.HttpResponseWrapper:AppendCookie(cookie) end
---@param name string
---@param value string
function System.Web.HttpResponseWrapper:AppendHeader(name, value) end
---@param param string
function System.Web.HttpResponseWrapper:AppendToLog(param) end
---@param virtualPath string
---@return string
function System.Web.HttpResponseWrapper:ApplyAppPathModifier(virtualPath) end
---@param buffer System.Byte[]
function System.Web.HttpResponseWrapper:BinaryWrite(buffer) end
function System.Web.HttpResponseWrapper:Clear() end
function System.Web.HttpResponseWrapper:ClearContent() end
function System.Web.HttpResponseWrapper:ClearHeaders() end
function System.Web.HttpResponseWrapper:Close() end
function System.Web.HttpResponseWrapper:DisableKernelCache() end
function System.Web.HttpResponseWrapper:End() end
function System.Web.HttpResponseWrapper:Flush() end
---@param value string
function System.Web.HttpResponseWrapper:Pics(value) end
---@overload fun(self: System.Web.HttpResponseWrapper, url: string)
---@param url string
---@param endResponse boolean
function System.Web.HttpResponseWrapper:Redirect(url, endResponse) end
---@overload fun(self: System.Web.HttpResponseWrapper, url: string)
---@param url string
---@param endResponse boolean
function System.Web.HttpResponseWrapper:RedirectPermanent(url, endResponse) end
---@overload fun(self: System.Web.HttpResponseWrapper, path: string, providerName: string)
---@param path string
function System.Web.HttpResponseWrapper:RemoveOutputCacheItem(path) end
---@param cookie System.Web.HttpCookie
function System.Web.HttpResponseWrapper:SetCookie(cookie) end
---@overload fun(self: System.Web.HttpResponseWrapper, filename: string)
---@param filename string
---@param offset number
---@param length number
function System.Web.HttpResponseWrapper:TransmitFile(filename, offset, length) end
---@overload fun(self: System.Web.HttpResponseWrapper, ch: System.Char)
---@overload fun(self: System.Web.HttpResponseWrapper, obj: System.Object)
---@overload fun(self: System.Web.HttpResponseWrapper, s: string)
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Web.HttpResponseWrapper:Write(buffer, index, count) end
---@overload fun(self: System.Web.HttpResponseWrapper, filename: string)
---@overload fun(self: System.Web.HttpResponseWrapper, filename: string, readIntoMemory: boolean)
---@overload fun(self: System.Web.HttpResponseWrapper, fileHandle: System.IntPtr, offset: number, size: number)
---@param filename string
---@param offset number
---@param size number
function System.Web.HttpResponseWrapper:WriteFile(filename, offset, size) end
---@param callback System.Web.HttpResponseSubstitutionCallback
function System.Web.HttpResponseWrapper:WriteSubstitution(callback) end

---@class System.Web.HttpRuntime : System.Object
---@field AspClientScriptPhysicalPath string
---@field AspClientScriptVirtualPath string
---@field AppDomainAppId string
---@field AppDomainAppPath string
---@field AppDomainAppVirtualPath string
---@field AppDomainId string
---@field AspInstallDirectory string
---@field BinDirectory string
---@field Cache System.Web.Caching.Cache
---@field ClrInstallDirectory string
---@field CodegenDir string
---@field IsOnUNCShare boolean
---@field MachineConfigurationDirectory string
---@field UsingIntegratedPipeline boolean
---@field IISVersion System.Version
---@field TargetFramework System.Version
---@field WebObjectActivator System.IServiceProvider
System.Web.HttpRuntime = {}
---@alias CS.System.Web.HttpRuntime System.Web.HttpRuntime
CS.System.Web.HttpRuntime = System.Web.HttpRuntime

---@return System.Web.HttpRuntime
function System.Web.HttpRuntime.New() end
function System.Web.HttpRuntime.Close() end
---@param wr System.Web.HttpWorkerRequest
function System.Web.HttpRuntime.ProcessRequest(wr) end
function System.Web.HttpRuntime.UnloadAppDomain() end
---@return System.Security.NamedPermissionSet
function System.Web.HttpRuntime.GetNamedPermissionSet() end

---@class System.Web.HttpServerUtility : System.Object
---@field MachineName string
---@field ScriptTimeout number
System.Web.HttpServerUtility = {}
---@alias CS.System.Web.HttpServerUtility System.Web.HttpServerUtility
CS.System.Web.HttpServerUtility = System.Web.HttpServerUtility

---@param input string
---@return System.Byte[]
function System.Web.HttpServerUtility.UrlTokenDecode(input) end
---@param input System.Byte[]
---@return string
function System.Web.HttpServerUtility.UrlTokenEncode(input) end
function System.Web.HttpServerUtility:ClearError() end
---@overload fun(self: System.Web.HttpServerUtility, progID: string) : System.Object
---@param type System.Type
---@return System.Object
function System.Web.HttpServerUtility:CreateObject(type) end
---@param clsid string
---@return System.Object
function System.Web.HttpServerUtility:CreateObjectFromClsid(clsid) end
---@overload fun(self: System.Web.HttpServerUtility, path: string)
---@overload fun(self: System.Web.HttpServerUtility, path: string, writer: System.IO.TextWriter)
---@overload fun(self: System.Web.HttpServerUtility, path: string, preserveForm: boolean)
---@overload fun(self: System.Web.HttpServerUtility, path: string, writer: System.IO.TextWriter, preserveForm: boolean)
---@param handler System.Web.IHttpHandler
---@param writer System.IO.TextWriter
---@param preserveForm boolean
function System.Web.HttpServerUtility:Execute(handler, writer, preserveForm) end
---@return System.Exception
function System.Web.HttpServerUtility:GetLastError() end
---@overload fun(self: System.Web.HttpServerUtility, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtility:HtmlDecode(s, output) end
---@overload fun(self: System.Web.HttpServerUtility, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtility:HtmlEncode(s, output) end
---@param path string
---@return string
function System.Web.HttpServerUtility:MapPath(path) end
---@overload fun(self: System.Web.HttpServerUtility, path: string)
---@overload fun(self: System.Web.HttpServerUtility, path: string, preserveForm: boolean)
---@overload fun(self: System.Web.HttpServerUtility, path: string, preserveForm: boolean, method: string, headers: System.Collections.Specialized.NameValueCollection)
---@param path string
---@param preserveForm boolean
---@param method string
---@param headers System.Collections.Specialized.NameValueCollection
---@param preserveUser boolean
function System.Web.HttpServerUtility:TransferRequest(path, preserveForm, method, headers, preserveUser) end
---@overload fun(self: System.Web.HttpServerUtility, path: string)
---@overload fun(self: System.Web.HttpServerUtility, path: string, preserveForm: boolean)
---@param handler System.Web.IHttpHandler
---@param preserveForm boolean
function System.Web.HttpServerUtility:Transfer(handler, preserveForm) end
---@overload fun(self: System.Web.HttpServerUtility, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtility:UrlDecode(s, output) end
---@overload fun(self: System.Web.HttpServerUtility, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtility:UrlEncode(s, output) end
---@param s string
---@return string
function System.Web.HttpServerUtility:UrlPathEncode(s) end

---@class System.Web.HttpServerUtilityWrapper : System.Web.HttpServerUtilityBase
---@field MachineName string
---@field ScriptTimeout number
System.Web.HttpServerUtilityWrapper = {}
---@alias CS.System.Web.HttpServerUtilityWrapper System.Web.HttpServerUtilityWrapper
CS.System.Web.HttpServerUtilityWrapper = System.Web.HttpServerUtilityWrapper

---@param httpServerUtility System.Web.HttpServerUtility
---@return System.Web.HttpServerUtilityWrapper
function System.Web.HttpServerUtilityWrapper.New(httpServerUtility) end
function System.Web.HttpServerUtilityWrapper:ClearError() end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, progID: string) : System.Object
---@param type System.Type
---@return System.Object
function System.Web.HttpServerUtilityWrapper:CreateObject(type) end
---@param clsid string
---@return System.Object
function System.Web.HttpServerUtilityWrapper:CreateObjectFromClsid(clsid) end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string)
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string, preserveForm: boolean)
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string, writer: System.IO.TextWriter)
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string, writer: System.IO.TextWriter, preserveForm: boolean)
---@param handler System.Web.IHttpHandler
---@param writer System.IO.TextWriter
---@param preserveForm boolean
function System.Web.HttpServerUtilityWrapper:Execute(handler, writer, preserveForm) end
---@return System.Exception
function System.Web.HttpServerUtilityWrapper:GetLastError() end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityWrapper:HtmlDecode(s, output) end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityWrapper:HtmlEncode(s, output) end
---@param path string
---@return string
function System.Web.HttpServerUtilityWrapper:MapPath(path) end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string)
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string, preserveForm: boolean)
---@param handler System.Web.IHttpHandler
---@param preserveForm boolean
function System.Web.HttpServerUtilityWrapper:Transfer(handler, preserveForm) end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string)
---@overload fun(self: System.Web.HttpServerUtilityWrapper, path: string, preserveForm: boolean)
---@param path string
---@param preserveForm boolean
---@param method string
---@param headers System.Collections.Specialized.NameValueCollection
function System.Web.HttpServerUtilityWrapper:TransferRequest(path, preserveForm, method, headers) end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityWrapper:UrlDecode(s, output) end
---@overload fun(self: System.Web.HttpServerUtilityWrapper, s: string) : string
---@param s string
---@param output System.IO.TextWriter
function System.Web.HttpServerUtilityWrapper:UrlEncode(s, output) end
---@param s string
---@return string
function System.Web.HttpServerUtilityWrapper:UrlPathEncode(s) end
---@param input string
---@return System.Byte[]
function System.Web.HttpServerUtilityWrapper:UrlTokenDecode(input) end
---@param input System.Byte[]
---@return string
function System.Web.HttpServerUtilityWrapper:UrlTokenEncode(input) end

---@class System.Web.HttpStaticObjectsCollection : System.Object
---@field Item System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field NeverAccessed boolean
---@field SyncRoot System.Object
System.Web.HttpStaticObjectsCollection = {}
---@alias CS.System.Web.HttpStaticObjectsCollection System.Web.HttpStaticObjectsCollection
CS.System.Web.HttpStaticObjectsCollection = System.Web.HttpStaticObjectsCollection

---@return System.Web.HttpStaticObjectsCollection
function System.Web.HttpStaticObjectsCollection.New() end
---@param reader System.IO.BinaryReader
---@return System.Web.HttpStaticObjectsCollection
function System.Web.HttpStaticObjectsCollection.Deserialize(reader) end
---@param name string
---@return System.Object
function System.Web.HttpStaticObjectsCollection:GetObject(name) end
---@return System.Collections.IEnumerator
function System.Web.HttpStaticObjectsCollection:GetEnumerator() end
---@param array System.Array
---@param index number
function System.Web.HttpStaticObjectsCollection:CopyTo(array, index) end
---@param writer System.IO.BinaryWriter
function System.Web.HttpStaticObjectsCollection:Serialize(writer) end

---@class System.Web.HttpStaticObjectsCollection.StaticItem : System.Object
---@field Instance System.Object
System.Web.HttpStaticObjectsCollection.StaticItem = {}
---@alias CS.System.Web.HttpStaticObjectsCollection.StaticItem System.Web.HttpStaticObjectsCollection.StaticItem
CS.System.Web.HttpStaticObjectsCollection.StaticItem = System.Web.HttpStaticObjectsCollection.StaticItem

---@overload fun(type: System.Type) : System.Web.HttpStaticObjectsCollection.StaticItem
---@param item System.Web.HttpStaticObjectsCollection.StaticItem
---@return System.Web.HttpStaticObjectsCollection.StaticItem
function System.Web.HttpStaticObjectsCollection.StaticItem.New(item) end

---@class System.Web.HttpTaskAsyncHandler : System.Object
---@field IsReusable boolean
System.Web.HttpTaskAsyncHandler = {}
---@alias CS.System.Web.HttpTaskAsyncHandler System.Web.HttpTaskAsyncHandler
CS.System.Web.HttpTaskAsyncHandler = System.Web.HttpTaskAsyncHandler

---@param context System.Web.HttpContext
function System.Web.HttpTaskAsyncHandler:ProcessRequest(context) end
---@param context System.Web.HttpContext
---@return System.Threading.Tasks.Task
function System.Web.HttpTaskAsyncHandler:ProcessRequestAsync(context) end

---@class System.Web.HttpUnhandledException : System.Web.HttpException
System.Web.HttpUnhandledException = {}
---@alias CS.System.Web.HttpUnhandledException System.Web.HttpUnhandledException
CS.System.Web.HttpUnhandledException = System.Web.HttpUnhandledException

---@overload fun() : System.Web.HttpUnhandledException
---@overload fun(message: string) : System.Web.HttpUnhandledException
---@param message string
---@param innerException System.Exception
---@return System.Web.HttpUnhandledException
function System.Web.HttpUnhandledException.New(message, innerException) end

---@class System.Web.HttpValidationStatus
---@field Invalid System.Web.HttpValidationStatus
---@field IgnoreThisRequest System.Web.HttpValidationStatus
---@field Valid System.Web.HttpValidationStatus
System.Web.HttpValidationStatus = {}
---@alias CS.System.Web.HttpValidationStatus System.Web.HttpValidationStatus
CS.System.Web.HttpValidationStatus = System.Web.HttpValidationStatus


---@class System.Web.HttpWorkerRequest : System.Object
---@field HeaderCacheControl number
---@field HeaderConnection number
---@field HeaderDate number
---@field HeaderKeepAlive number
---@field HeaderPragma number
---@field HeaderTrailer number
---@field HeaderTransferEncoding number
---@field HeaderUpgrade number
---@field HeaderVia number
---@field HeaderWarning number
---@field HeaderAllow number
---@field HeaderContentLength number
---@field HeaderContentType number
---@field HeaderContentEncoding number
---@field HeaderContentLanguage number
---@field HeaderContentLocation number
---@field HeaderContentMd5 number
---@field HeaderContentRange number
---@field HeaderExpires number
---@field HeaderLastModified number
---@field HeaderAccept number
---@field HeaderAcceptCharset number
---@field HeaderAcceptEncoding number
---@field HeaderAcceptLanguage number
---@field HeaderAuthorization number
---@field HeaderCookie number
---@field HeaderExpect number
---@field HeaderFrom number
---@field HeaderHost number
---@field HeaderIfMatch number
---@field HeaderIfModifiedSince number
---@field HeaderIfNoneMatch number
---@field HeaderIfRange number
---@field HeaderIfUnmodifiedSince number
---@field HeaderMaxForwards number
---@field HeaderProxyAuthorization number
---@field HeaderReferer number
---@field HeaderRange number
---@field HeaderTe number
---@field HeaderUserAgent number
---@field RequestHeaderMaximum number
---@field HeaderAcceptRanges number
---@field HeaderAge number
---@field HeaderEtag number
---@field HeaderLocation number
---@field HeaderProxyAuthenticate number
---@field HeaderRetryAfter number
---@field HeaderServer number
---@field HeaderSetCookie number
---@field HeaderVary number
---@field HeaderWwwAuthenticate number
---@field ResponseHeaderMaximum number
---@field ReasonResponseCacheMiss number
---@field ReasonFileHandleCacheMiss number
---@field ReasonCachePolicy number
---@field ReasonCacheSecurity number
---@field ReasonClientDisconnect number
---@field ReasonDefault number
---@field MachineConfigPath string
---@field MachineInstallDirectory string
---@field RequestTraceIdentifier System.Guid
---@field RootWebConfigPath string
---@field SupportsAsyncFlush boolean
---@field SupportsAsyncRead boolean
System.Web.HttpWorkerRequest = {}
---@alias CS.System.Web.HttpWorkerRequest System.Web.HttpWorkerRequest
CS.System.Web.HttpWorkerRequest = System.Web.HttpWorkerRequest

---@param header string
---@return number
function System.Web.HttpWorkerRequest.GetKnownRequestHeaderIndex(header) end
---@param index number
---@return string
function System.Web.HttpWorkerRequest.GetKnownRequestHeaderName(index) end
---@param header string
---@return number
function System.Web.HttpWorkerRequest.GetKnownResponseHeaderIndex(header) end
---@param index number
---@return string
function System.Web.HttpWorkerRequest.GetKnownResponseHeaderName(index) end
---@param code number
---@return string
function System.Web.HttpWorkerRequest.GetStatusDescription(code) end
function System.Web.HttpWorkerRequest:CloseConnection() end
---@return string
function System.Web.HttpWorkerRequest:GetAppPath() end
---@return string
function System.Web.HttpWorkerRequest:GetAppPathTranslated() end
---@return string
function System.Web.HttpWorkerRequest:GetAppPoolID() end
---@return number
function System.Web.HttpWorkerRequest:GetBytesRead() end
---@return string
function System.Web.HttpWorkerRequest:GetFilePath() end
---@return string
function System.Web.HttpWorkerRequest:GetFilePathTranslated() end
---@param index number
---@return string
function System.Web.HttpWorkerRequest:GetKnownRequestHeader(index) end
---@return string
function System.Web.HttpWorkerRequest:GetPathInfo() end
---@overload fun() : System.Byte[]
---@param buffer System.Byte[]
---@param offset number
---@return number
function System.Web.HttpWorkerRequest:GetPreloadedEntityBody(buffer, offset) end
---@return number
function System.Web.HttpWorkerRequest:GetPreloadedEntityBodyLength() end
---@return string
function System.Web.HttpWorkerRequest:GetProtocol() end
---@return System.Byte[]
function System.Web.HttpWorkerRequest:GetQueryStringRawBytes() end
---@return string
function System.Web.HttpWorkerRequest:GetRemoteName() end
---@return number
function System.Web.HttpWorkerRequest:GetRequestReason() end
---@return string
function System.Web.HttpWorkerRequest:GetServerName() end
---@param name string
---@return string
function System.Web.HttpWorkerRequest:GetServerVariable(name) end
---@return number
function System.Web.HttpWorkerRequest:GetTotalEntityBodyLength() end
---@param name string
---@return string
function System.Web.HttpWorkerRequest:GetUnknownRequestHeader(name) end
---@return System.String[][]
function System.Web.HttpWorkerRequest:GetUnknownRequestHeaders() end
---@return System.IntPtr
function System.Web.HttpWorkerRequest:GetUserToken() end
---@return boolean
function System.Web.HttpWorkerRequest:HasEntityBody() end
---@return boolean
function System.Web.HttpWorkerRequest:HeadersSent() end
---@return boolean
function System.Web.HttpWorkerRequest:IsClientConnected() end
---@return boolean
function System.Web.HttpWorkerRequest:IsEntireEntityBodyIsPreloaded() end
---@return boolean
function System.Web.HttpWorkerRequest:IsSecure() end
---@param virtualPath string
---@return string
function System.Web.HttpWorkerRequest:MapPath(virtualPath) end
---@overload fun(self: System.Web.HttpWorkerRequest, buffer: System.Byte[], size: number) : number
---@param buffer System.Byte[]
---@param offset number
---@param size number
---@return number
function System.Web.HttpWorkerRequest:ReadEntityBody(buffer, offset, size) end
---@overload fun(self: System.Web.HttpWorkerRequest, contentLength: number)
---@param contentLength number
function System.Web.HttpWorkerRequest:SendCalculatedContentLength(contentLength) end
---@overload fun(self: System.Web.HttpWorkerRequest, data: System.IntPtr, length: number)
---@param data System.Byte[]
---@param length number
function System.Web.HttpWorkerRequest:SendResponseFromMemory(data, length) end
---@param callback System.Web.HttpWorkerRequest.EndOfSendNotification
---@param extraData System.Object
function System.Web.HttpWorkerRequest:SetEndOfSendNotification(callback, extraData) end
function System.Web.HttpWorkerRequest:EndOfRequest() end
---@param finalFlush boolean
function System.Web.HttpWorkerRequest:FlushResponse(finalFlush) end
---@return string
function System.Web.HttpWorkerRequest:GetHttpVerbName() end
---@return string
function System.Web.HttpWorkerRequest:GetHttpVersion() end
---@return string
function System.Web.HttpWorkerRequest:GetLocalAddress() end
---@return number
function System.Web.HttpWorkerRequest:GetLocalPort() end
---@return string
function System.Web.HttpWorkerRequest:GetQueryString() end
---@return string
function System.Web.HttpWorkerRequest:GetRawUrl() end
---@return string
function System.Web.HttpWorkerRequest:GetRemoteAddress() end
---@return number
function System.Web.HttpWorkerRequest:GetRemotePort() end
---@return string
function System.Web.HttpWorkerRequest:GetUriPath() end
---@param index number
---@param value string
function System.Web.HttpWorkerRequest:SendKnownResponseHeader(index, value) end
---@overload fun(self: System.Web.HttpWorkerRequest, handle: System.IntPtr, offset: number, length: number)
---@param filename string
---@param offset number
---@param length number
function System.Web.HttpWorkerRequest:SendResponseFromFile(filename, offset, length) end
---@param statusCode number
---@param statusDescription string
function System.Web.HttpWorkerRequest:SendStatus(statusCode, statusDescription) end
---@param name string
---@param value string
function System.Web.HttpWorkerRequest:SendUnknownResponseHeader(name, value) end
---@return System.Byte[]
function System.Web.HttpWorkerRequest:GetClientCertificate() end
---@return System.Byte[]
function System.Web.HttpWorkerRequest:GetClientCertificateBinaryIssuer() end
---@return number
function System.Web.HttpWorkerRequest:GetClientCertificateEncoding() end
---@return System.Byte[]
function System.Web.HttpWorkerRequest:GetClientCertificatePublicKey() end
---@return System.DateTime
function System.Web.HttpWorkerRequest:GetClientCertificateValidFrom() end
---@return System.DateTime
function System.Web.HttpWorkerRequest:GetClientCertificateValidUntil() end
---@return number
function System.Web.HttpWorkerRequest:GetConnectionID() end
---@return number
function System.Web.HttpWorkerRequest:GetUrlContextID() end
---@return System.IntPtr
function System.Web.HttpWorkerRequest:GetVirtualPathToken() end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.HttpWorkerRequest:BeginFlush(callback, state) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.HttpWorkerRequest:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.Web.HttpWorkerRequest:EndFlush(asyncResult) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Web.HttpWorkerRequest:EndRead(asyncResult) end

---@class System.Web.HttpWorkerRequest.EndOfSendNotification : System.MulticastDelegate
System.Web.HttpWorkerRequest.EndOfSendNotification = {}
---@alias CS.System.Web.HttpWorkerRequest.EndOfSendNotification System.Web.HttpWorkerRequest.EndOfSendNotification
CS.System.Web.HttpWorkerRequest.EndOfSendNotification = System.Web.HttpWorkerRequest.EndOfSendNotification

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.HttpWorkerRequest.EndOfSendNotification
function System.Web.HttpWorkerRequest.EndOfSendNotification.New(object, method) end
---@param wr System.Web.HttpWorkerRequest
---@param extraData System.Object
function System.Web.HttpWorkerRequest.EndOfSendNotification:Invoke(wr, extraData) end
---@param wr System.Web.HttpWorkerRequest
---@param extraData System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.HttpWorkerRequest.EndOfSendNotification:BeginInvoke(wr, extraData, callback, object) end
---@param result System.IAsyncResult
function System.Web.HttpWorkerRequest.EndOfSendNotification:EndInvoke(result) end

---@class System.Web.HttpWriter : System.IO.TextWriter
---@field Encoding System.Text.Encoding
---@field OutputStream System.IO.Stream
System.Web.HttpWriter = {}
---@alias CS.System.Web.HttpWriter System.Web.HttpWriter
CS.System.Web.HttpWriter = System.Web.HttpWriter

function System.Web.HttpWriter:Close() end
function System.Web.HttpWriter:Flush() end
---@overload fun(self: System.Web.HttpWriter, ch: System.Char)
---@overload fun(self: System.Web.HttpWriter, obj: System.Object)
---@overload fun(self: System.Web.HttpWriter, s: string)
---@param buffer System.Char[]
---@param index number
---@param count number
function System.Web.HttpWriter:Write(buffer, index, count) end
function System.Web.HttpWriter:WriteLine() end
---@param s string
---@param index number
---@param count number
function System.Web.HttpWriter:WriteString(s, index, count) end
---@param buffer System.Byte[]
---@param index number
---@param count number
function System.Web.HttpWriter:WriteBytes(buffer, index, count) end

---@class System.Web.IHttpMapPath
---@field MachineConfigPath string
System.Web.IHttpMapPath = {}
---@alias CS.System.Web.IHttpMapPath System.Web.IHttpMapPath
CS.System.Web.IHttpMapPath = System.Web.IHttpMapPath

---@param path string
---@return string
function System.Web.IHttpMapPath:MapPath(path) end

---@class System.Web.IPartitionResolver
System.Web.IPartitionResolver = {}
---@alias CS.System.Web.IPartitionResolver System.Web.IPartitionResolver
CS.System.Web.IPartitionResolver = System.Web.IPartitionResolver

function System.Web.IPartitionResolver:Initialize() end
---@param key System.Object
---@return string
function System.Web.IPartitionResolver:ResolvePartition(key) end

---@class System.Web.IisTraceListener : System.Diagnostics.TraceListener
System.Web.IisTraceListener = {}
---@alias CS.System.Web.IisTraceListener System.Web.IisTraceListener
CS.System.Web.IisTraceListener = System.Web.IisTraceListener

---@return System.Web.IisTraceListener
function System.Web.IisTraceListener.New() end
---@overload fun(self: System.Web.IisTraceListener, eventCache: System.Diagnostics.TraceEventCache, source: string, eventType: System.Diagnostics.TraceEventType, id: number, data: System.Object)
---@param eventCache System.Diagnostics.TraceEventCache
---@param source string
---@param eventType System.Diagnostics.TraceEventType
---@param id number
---@param data System.Object[]
function System.Web.IisTraceListener:TraceData(eventCache, source, eventType, id, data) end
---@overload fun(self: System.Web.IisTraceListener, eventCache: System.Diagnostics.TraceEventCache, source: string, severity: System.Diagnostics.TraceEventType, id: number, message: string)
---@param eventCache System.Diagnostics.TraceEventCache
---@param source string
---@param severity System.Diagnostics.TraceEventType
---@param id number
---@param format string
---@param args System.Object[]
function System.Web.IisTraceListener:TraceEvent(eventCache, source, severity, id, format, args) end
---@overload fun(self: System.Web.IisTraceListener, message: string)
---@param message string
---@param category string
function System.Web.IisTraceListener:Write(message, category) end
---@overload fun(self: System.Web.IisTraceListener, message: string)
---@param message string
---@param category string
function System.Web.IisTraceListener:WriteLine(message, category) end

---@class System.Web.InputFilterStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Position number
---@field Length number
System.Web.InputFilterStream = {}
---@alias CS.System.Web.InputFilterStream System.Web.InputFilterStream
CS.System.Web.InputFilterStream = System.Web.InputFilterStream

---@return System.Web.InputFilterStream
function System.Web.InputFilterStream.New() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Web.InputFilterStream:Read(buffer, offset, count) end
---@return number
function System.Web.InputFilterStream:ReadByte() end
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function System.Web.InputFilterStream:Seek(offset, loc) end
---@param value number
function System.Web.InputFilterStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.InputFilterStream:Write(buffer, offset, count) end
---@param value number
function System.Web.InputFilterStream:WriteByte(value) end
function System.Web.InputFilterStream:Flush() end
function System.Web.InputFilterStream:Close() end

---@class System.Web.IntPtrStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Position number
---@field Length number
System.Web.IntPtrStream = {}
---@alias CS.System.Web.IntPtrStream System.Web.IntPtrStream
CS.System.Web.IntPtrStream = System.Web.IntPtrStream

---@overload fun(base_address: System.IntPtr, size: number) : System.Web.IntPtrStream
---@param stream System.IO.Stream
---@return System.Web.IntPtrStream
function System.Web.IntPtrStream.New(stream) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Web.IntPtrStream:Read(buffer, offset, count) end
---@return number
function System.Web.IntPtrStream:ReadByte() end
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function System.Web.IntPtrStream:Seek(offset, loc) end
---@param value number
function System.Web.IntPtrStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.IntPtrStream:Write(buffer, offset, count) end
---@param value number
function System.Web.IntPtrStream:WriteByte(value) end
function System.Web.IntPtrStream:Flush() end
function System.Web.IntPtrStream:Close() end

---@class System.Web.MimeMapping : System.Object
System.Web.MimeMapping = {}
---@alias CS.System.Web.MimeMapping System.Web.MimeMapping
CS.System.Web.MimeMapping = System.Web.MimeMapping

---@param fileName string
---@return string
function System.Web.MimeMapping.GetMimeMapping(fileName) end

---@class System.Web.MimeTypes : System.Object
System.Web.MimeTypes = {}
---@alias CS.System.Web.MimeTypes System.Web.MimeTypes
CS.System.Web.MimeTypes = System.Web.MimeTypes

---@return System.Web.MimeTypes
function System.Web.MimeTypes.New() end
---@param fileName string
---@return string
function System.Web.MimeTypes.GetMimeType(fileName) end

---@class System.Web.NoParamsDelegate : System.MulticastDelegate
System.Web.NoParamsDelegate = {}
---@alias CS.System.Web.NoParamsDelegate System.Web.NoParamsDelegate
CS.System.Web.NoParamsDelegate = System.Web.NoParamsDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.NoParamsDelegate
function System.Web.NoParamsDelegate.New(object, method) end
function System.Web.NoParamsDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.NoParamsDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function System.Web.NoParamsDelegate:EndInvoke(result) end

---@class System.Web.NoParamsInvoker : System.Object
---@field FakeDelegate System.EventHandler
System.Web.NoParamsInvoker = {}
---@alias CS.System.Web.NoParamsInvoker System.Web.NoParamsInvoker
CS.System.Web.NoParamsInvoker = System.Web.NoParamsInvoker

---@param o System.Object
---@param method System.Reflection.MethodInfo
---@return System.Web.NoParamsInvoker
function System.Web.NoParamsInvoker.New(o, method) end

---@class System.Web.OutputFilterStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Position number
---@field Length number
System.Web.OutputFilterStream = {}
---@alias CS.System.Web.OutputFilterStream System.Web.OutputFilterStream
CS.System.Web.OutputFilterStream = System.Web.OutputFilterStream

---@param stream System.Web.HttpResponseStream
---@return System.Web.OutputFilterStream
function System.Web.OutputFilterStream.New(stream) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Web.OutputFilterStream:Read(buffer, offset, count) end
---@return number
function System.Web.OutputFilterStream:ReadByte() end
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function System.Web.OutputFilterStream:Seek(offset, loc) end
---@param value number
function System.Web.OutputFilterStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.OutputFilterStream:Write(buffer, offset, count) end
function System.Web.OutputFilterStream:Flush() end

---@class System.Web.ParserError : System.Object
---@field ErrorText string
---@field VirtualPath string
---@field Line number
System.Web.ParserError = {}
---@alias CS.System.Web.ParserError System.Web.ParserError
CS.System.Web.ParserError = System.Web.ParserError

---@overload fun() : System.Web.ParserError
---@param errorText string
---@param virtualPath string
---@param line number
---@return System.Web.ParserError
function System.Web.ParserError.New(errorText, virtualPath, line) end

---@class System.Web.ParserErrorCollection : System.Collections.CollectionBase
---@field Item System.Web.ParserError
System.Web.ParserErrorCollection = {}
---@alias CS.System.Web.ParserErrorCollection System.Web.ParserErrorCollection
CS.System.Web.ParserErrorCollection = System.Web.ParserErrorCollection

---@overload fun() : System.Web.ParserErrorCollection
---@param value System.Web.ParserError[]
---@return System.Web.ParserErrorCollection
function System.Web.ParserErrorCollection.New(value) end
---@param value System.Web.ParserError
---@return number
function System.Web.ParserErrorCollection:Add(value) end
---@overload fun(self: System.Web.ParserErrorCollection, value: System.Web.ParserErrorCollection)
---@param value System.Web.ParserError[]
function System.Web.ParserErrorCollection:AddRange(value) end
---@param value System.Web.ParserError
---@return boolean
function System.Web.ParserErrorCollection:Contains(value) end
---@param array System.Web.ParserError[]
---@param index number
function System.Web.ParserErrorCollection:CopyTo(array, index) end
---@param value System.Web.ParserError
---@return number
function System.Web.ParserErrorCollection:IndexOf(value) end
---@param index number
---@param value System.Web.ParserError
function System.Web.ParserErrorCollection:Insert(index, value) end
---@param value System.Web.ParserError
function System.Web.ParserErrorCollection:Remove(value) end

---@class System.Web.ProcessInfo : System.Object
---@field Age System.TimeSpan
---@field PeakMemoryUsed number
---@field ProcessID number
---@field RequestCount number
---@field ShutdownReason System.Web.ProcessShutdownReason
---@field StartTime System.DateTime
---@field Status System.Web.ProcessStatus
System.Web.ProcessInfo = {}
---@alias CS.System.Web.ProcessInfo System.Web.ProcessInfo
CS.System.Web.ProcessInfo = System.Web.ProcessInfo

---@overload fun() : System.Web.ProcessInfo
---@param startTime System.DateTime
---@param age System.TimeSpan
---@param processID number
---@param requestCount number
---@param status System.Web.ProcessStatus
---@param shutdownReason System.Web.ProcessShutdownReason
---@param peakMemoryUsed number
---@return System.Web.ProcessInfo
function System.Web.ProcessInfo.New(startTime, age, processID, requestCount, status, shutdownReason, peakMemoryUsed) end
---@param startTime System.DateTime
---@param age System.TimeSpan
---@param processID number
---@param requestCount number
---@param status System.Web.ProcessStatus
---@param shutdownReason System.Web.ProcessShutdownReason
---@param peakMemoryUsed number
function System.Web.ProcessInfo:SetAll(startTime, age, processID, requestCount, status, shutdownReason, peakMemoryUsed) end

---@class System.Web.ProcessModelInfo : System.Object
System.Web.ProcessModelInfo = {}
---@alias CS.System.Web.ProcessModelInfo System.Web.ProcessModelInfo
CS.System.Web.ProcessModelInfo = System.Web.ProcessModelInfo

---@return System.Web.ProcessModelInfo
function System.Web.ProcessModelInfo.New() end
---@return System.Web.ProcessInfo
function System.Web.ProcessModelInfo.GetCurrentProcessInfo() end
---@param numRecords number
---@return System.Web.ProcessInfo[]
function System.Web.ProcessModelInfo.GetHistory(numRecords) end

---@class System.Web.ProcessShutdownReason
---@field None System.Web.ProcessShutdownReason
---@field Unexpected System.Web.ProcessShutdownReason
---@field RequestsLimit System.Web.ProcessShutdownReason
---@field RequestQueueLimit System.Web.ProcessShutdownReason
---@field Timeout System.Web.ProcessShutdownReason
---@field IdleTimeout System.Web.ProcessShutdownReason
---@field MemoryLimitExceeded System.Web.ProcessShutdownReason
---@field PingFailed System.Web.ProcessShutdownReason
---@field DeadlockSuspected System.Web.ProcessShutdownReason
System.Web.ProcessShutdownReason = {}
---@alias CS.System.Web.ProcessShutdownReason System.Web.ProcessShutdownReason
CS.System.Web.ProcessShutdownReason = System.Web.ProcessShutdownReason


---@class System.Web.ProcessStatus
---@field Alive System.Web.ProcessStatus
---@field ShuttingDown System.Web.ProcessStatus
---@field ShutDown System.Web.ProcessStatus
---@field Terminated System.Web.ProcessStatus
System.Web.ProcessStatus = {}
---@alias CS.System.Web.ProcessStatus System.Web.ProcessStatus
CS.System.Web.ProcessStatus = System.Web.ProcessStatus


---@class System.Web.QueueManager : System.Object
---@field HasException boolean
---@field InitialException System.Exception
System.Web.QueueManager = {}
---@alias CS.System.Web.QueueManager System.Web.QueueManager
CS.System.Web.QueueManager = System.Web.QueueManager

---@return System.Web.QueueManager
function System.Web.QueueManager.New() end
---@param req System.Web.HttpWorkerRequest
---@return System.Web.HttpWorkerRequest
function System.Web.QueueManager:GetNextRequest(req) end
function System.Web.QueueManager:Dispose() end

---@class System.Web.ServerVariablesCollection : System.Web.BaseParamsCollection
System.Web.ServerVariablesCollection = {}
---@alias CS.System.Web.ServerVariablesCollection System.Web.ServerVariablesCollection
CS.System.Web.ServerVariablesCollection = System.Web.ServerVariablesCollection

---@param request System.Web.HttpRequest
---@return System.Web.ServerVariablesCollection
function System.Web.ServerVariablesCollection.New(request) end

---@class System.Web.SiteMap : System.Object
---@field CurrentNode System.Web.SiteMapNode
---@field RootNode System.Web.SiteMapNode
---@field Provider System.Web.SiteMapProvider
---@field Providers System.Web.SiteMapProviderCollection
---@field Enabled boolean
System.Web.SiteMap = {}
---@alias CS.System.Web.SiteMap System.Web.SiteMap
CS.System.Web.SiteMap = System.Web.SiteMap


---@class System.Web.SiteMapNode : System.Object
---@field HasChildNodes boolean
---@field NextSibling System.Web.SiteMapNode
---@field PreviousSibling System.Web.SiteMapNode
---@field ParentNode System.Web.SiteMapNode
---@field ChildNodes System.Web.SiteMapNodeCollection
---@field RootNode System.Web.SiteMapNode
---@field Item string
---@field Description string
---@field Title string
---@field Url string
---@field Roles System.Collections.IList
---@field ReadOnly boolean
---@field ResourceKey string
---@field Key string
---@field Provider System.Web.SiteMapProvider
System.Web.SiteMapNode = {}
---@alias CS.System.Web.SiteMapNode System.Web.SiteMapNode
CS.System.Web.SiteMapNode = System.Web.SiteMapNode

---@overload fun(provider: System.Web.SiteMapProvider, key: string) : System.Web.SiteMapNode
---@overload fun(provider: System.Web.SiteMapProvider, key: string, url: string) : System.Web.SiteMapNode
---@overload fun(provider: System.Web.SiteMapProvider, key: string, url: string, title: string) : System.Web.SiteMapNode
---@overload fun(provider: System.Web.SiteMapProvider, key: string, url: string, title: string, description: string) : System.Web.SiteMapNode
---@param provider System.Web.SiteMapProvider
---@param key string
---@param url string
---@param title string
---@param description string
---@param roles System.Collections.IList
---@param attributes System.Collections.Specialized.NameValueCollection
---@param explicitResourceKeys System.Collections.Specialized.NameValueCollection
---@param implicitResourceKey string
---@return System.Web.SiteMapNode
function System.Web.SiteMapNode.New(provider, key, url, title, description, roles, attributes, explicitResourceKeys, implicitResourceKey) end
---@param owner System.Web.UI.WebControls.SiteMapDataSource
---@param viewName string
---@return System.Web.UI.WebControls.SiteMapDataSourceView
function System.Web.SiteMapNode:GetDataSourceView(owner, viewName) end
---@return System.Web.UI.WebControls.SiteMapHierarchicalDataSourceView
function System.Web.SiteMapNode:GetHierarchicalDataSourceView() end
---@param context System.Web.HttpContext
---@return boolean
function System.Web.SiteMapNode:IsAccessibleToUser(context) end
---@return string
function System.Web.SiteMapNode:ToString() end
---@return System.Web.SiteMapNodeCollection
function System.Web.SiteMapNode:GetAllNodes() end
---@param node System.Web.SiteMapNode
---@return boolean
function System.Web.SiteMapNode:IsDescendantOf(node) end
---@overload fun() : System.Web.SiteMapNode
---@param cloneParentNodes boolean
---@return System.Web.SiteMapNode
function System.Web.SiteMapNode:Clone(cloneParentNodes) end
---@param obj System.Object
---@return boolean
function System.Web.SiteMapNode:Equals(obj) end
---@return number
function System.Web.SiteMapNode:GetHashCode() end

---@class System.Web.SiteMapNodeCollection : System.Object
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Web.SiteMapNode
---@field IsFixedSize boolean
---@field IsReadOnly boolean
System.Web.SiteMapNodeCollection = {}
---@alias CS.System.Web.SiteMapNodeCollection System.Web.SiteMapNodeCollection
CS.System.Web.SiteMapNodeCollection = System.Web.SiteMapNodeCollection

---@overload fun() : System.Web.SiteMapNodeCollection
---@overload fun(capacity: number) : System.Web.SiteMapNodeCollection
---@overload fun(value: System.Web.SiteMapNode) : System.Web.SiteMapNodeCollection
---@overload fun(value: System.Web.SiteMapNode[]) : System.Web.SiteMapNodeCollection
---@param value System.Web.SiteMapNodeCollection
---@return System.Web.SiteMapNodeCollection
function System.Web.SiteMapNodeCollection.New(value) end
---@param collection System.Web.SiteMapNodeCollection
---@return System.Web.SiteMapNodeCollection
function System.Web.SiteMapNodeCollection.ReadOnly(collection) end
---@return System.Collections.IEnumerator
function System.Web.SiteMapNodeCollection:GetEnumerator() end
function System.Web.SiteMapNodeCollection:Clear() end
---@param index number
function System.Web.SiteMapNodeCollection:RemoveAt(index) end
---@param value System.Web.SiteMapNode
---@return number
function System.Web.SiteMapNodeCollection:Add(value) end
---@overload fun(self: System.Web.SiteMapNodeCollection, value: System.Web.SiteMapNode[])
---@param value System.Web.SiteMapNodeCollection
function System.Web.SiteMapNodeCollection:AddRange(value) end
---@param value System.Web.SiteMapNode
---@return boolean
function System.Web.SiteMapNodeCollection:Contains(value) end
---@param array System.Web.SiteMapNode[]
---@param index number
function System.Web.SiteMapNodeCollection:CopyTo(array, index) end
---@param value System.Web.SiteMapNode
---@return number
function System.Web.SiteMapNodeCollection:IndexOf(value) end
---@param index number
---@param value System.Web.SiteMapNode
function System.Web.SiteMapNodeCollection:Insert(index, value) end
---@param value System.Web.SiteMapNode
function System.Web.SiteMapNodeCollection:Remove(value) end
---@param enumeratedItem System.Object
---@return System.Web.UI.IHierarchyData
function System.Web.SiteMapNodeCollection:GetHierarchyData(enumeratedItem) end
---@param owner System.Web.UI.WebControls.SiteMapDataSource
---@param viewName string
---@return System.Web.UI.WebControls.SiteMapDataSourceView
function System.Web.SiteMapNodeCollection:GetDataSourceView(owner, viewName) end
---@return System.Web.UI.WebControls.SiteMapHierarchicalDataSourceView
function System.Web.SiteMapNodeCollection:GetHierarchicalDataSourceView() end

---@class System.Web.SiteMapProvider : System.Configuration.Provider.ProviderBase
---@field CurrentNode System.Web.SiteMapNode
---@field ParentProvider System.Web.SiteMapProvider
---@field RootProvider System.Web.SiteMapProvider
---@field EnableLocalization boolean
---@field SecurityTrimmingEnabled boolean
---@field ResourceKey string
---@field RootNode System.Web.SiteMapNode
System.Web.SiteMapProvider = {}
---@alias CS.System.Web.SiteMapProvider System.Web.SiteMapProvider
CS.System.Web.SiteMapProvider = System.Web.SiteMapProvider

---@overload fun(self: System.Web.SiteMapProvider, context: System.Web.HttpContext) : System.Web.SiteMapNode
---@param rawUrl string
---@return System.Web.SiteMapNode
function System.Web.SiteMapProvider:FindSiteMapNode(rawUrl) end
---@param key string
---@return System.Web.SiteMapNode
function System.Web.SiteMapProvider:FindSiteMapNodeFromKey(key) end
---@param node System.Web.SiteMapNode
---@return System.Web.SiteMapNodeCollection
function System.Web.SiteMapProvider:GetChildNodes(node) end
---@param upLevel number
---@return System.Web.SiteMapNode
function System.Web.SiteMapProvider:GetCurrentNodeAndHintAncestorNodes(upLevel) end
---@param upLevel number
---@param downLevel number
---@return System.Web.SiteMapNode
function System.Web.SiteMapProvider:GetCurrentNodeAndHintNeighborhoodNodes(upLevel, downLevel) end
---@param node System.Web.SiteMapNode
---@return System.Web.SiteMapNode
function System.Web.SiteMapProvider:GetParentNode(node) end
---@param walkupLevels number
---@param relativeDepthFromWalkup number
---@return System.Web.SiteMapNode
function System.Web.SiteMapProvider:GetParentNodeRelativeToCurrentNodeAndHintDownFromParent(walkupLevels, relativeDepthFromWalkup) end
---@param node System.Web.SiteMapNode
---@param walkupLevels number
---@param relativeDepthFromWalkup number
---@return System.Web.SiteMapNode
function System.Web.SiteMapProvider:GetParentNodeRelativeToNodeAndHintDownFromParent(node, walkupLevels, relativeDepthFromWalkup) end
---@param node System.Web.SiteMapNode
---@param upLevel number
function System.Web.SiteMapProvider:HintAncestorNodes(node, upLevel) end
---@param node System.Web.SiteMapNode
---@param upLevel number
---@param downLevel number
function System.Web.SiteMapProvider:HintNeighborhoodNodes(node, upLevel, downLevel) end
---@param name string
---@param attributes System.Collections.Specialized.NameValueCollection
function System.Web.SiteMapProvider:Initialize(name, attributes) end
---@param context System.Web.HttpContext
---@param node System.Web.SiteMapNode
---@return boolean
function System.Web.SiteMapProvider:IsAccessibleToUser(context, node) end

---@class System.Web.SiteMapProviderCollection : System.Configuration.Provider.ProviderCollection
---@field Item System.Web.SiteMapProvider
System.Web.SiteMapProviderCollection = {}
---@alias CS.System.Web.SiteMapProviderCollection System.Web.SiteMapProviderCollection
CS.System.Web.SiteMapProviderCollection = System.Web.SiteMapProviderCollection

---@return System.Web.SiteMapProviderCollection
function System.Web.SiteMapProviderCollection.New() end
---@overload fun(self: System.Web.SiteMapProviderCollection, provider: System.Configuration.Provider.ProviderBase)
---@param provider System.Web.SiteMapProvider
function System.Web.SiteMapProviderCollection:Add(provider) end
---@param providerArray System.Web.SiteMapProvider[]
function System.Web.SiteMapProviderCollection:AddArray(providerArray) end

---@class System.Web.SiteMapResolveEventHandler : System.MulticastDelegate
System.Web.SiteMapResolveEventHandler = {}
---@alias CS.System.Web.SiteMapResolveEventHandler System.Web.SiteMapResolveEventHandler
CS.System.Web.SiteMapResolveEventHandler = System.Web.SiteMapResolveEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.SiteMapResolveEventHandler
function System.Web.SiteMapResolveEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.SiteMapResolveEventArgs
---@return System.Web.SiteMapNode
function System.Web.SiteMapResolveEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.SiteMapResolveEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.SiteMapResolveEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
---@return System.Web.SiteMapNode
function System.Web.SiteMapResolveEventHandler:EndInvoke(result) end

---@class System.Web.SiteMapResolveEventArgs : System.EventArgs
---@field Context System.Web.HttpContext
---@field Provider System.Web.SiteMapProvider
System.Web.SiteMapResolveEventArgs = {}
---@alias CS.System.Web.SiteMapResolveEventArgs System.Web.SiteMapResolveEventArgs
CS.System.Web.SiteMapResolveEventArgs = System.Web.SiteMapResolveEventArgs

---@param context System.Web.HttpContext
---@param provider System.Web.SiteMapProvider
---@return System.Web.SiteMapResolveEventArgs
function System.Web.SiteMapResolveEventArgs.New(context, provider) end

---@class System.Web.StaticFileHandler : System.Object
---@field IsReusable boolean
System.Web.StaticFileHandler = {}
---@alias CS.System.Web.StaticFileHandler System.Web.StaticFileHandler
CS.System.Web.StaticFileHandler = System.Web.StaticFileHandler

---@return System.Web.StaticFileHandler
function System.Web.StaticFileHandler.New() end
---@param context System.Web.HttpContext
function System.Web.StaticFileHandler:ProcessRequest(context) end

---@class System.Web.StaticSiteMapProvider : System.Web.SiteMapProvider
System.Web.StaticSiteMapProvider = {}
---@alias CS.System.Web.StaticSiteMapProvider System.Web.StaticSiteMapProvider
CS.System.Web.StaticSiteMapProvider = System.Web.StaticSiteMapProvider

---@param rawUrl string
---@return System.Web.SiteMapNode
function System.Web.StaticSiteMapProvider:FindSiteMapNode(rawUrl) end
---@param node System.Web.SiteMapNode
---@return System.Web.SiteMapNodeCollection
function System.Web.StaticSiteMapProvider:GetChildNodes(node) end
---@param node System.Web.SiteMapNode
---@return System.Web.SiteMapNode
function System.Web.StaticSiteMapProvider:GetParentNode(node) end
---@param key string
---@return System.Web.SiteMapNode
function System.Web.StaticSiteMapProvider:FindSiteMapNodeFromKey(key) end
---@return System.Web.SiteMapNode
function System.Web.StaticSiteMapProvider:BuildSiteMap() end

---@class System.Web.TaskAsyncResult : System.Object
---@field AsyncState System.Object
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field CompletedSynchronously boolean
---@field IsCompleted boolean
System.Web.TaskAsyncResult = {}
---@alias CS.System.Web.TaskAsyncResult System.Web.TaskAsyncResult
CS.System.Web.TaskAsyncResult = System.Web.TaskAsyncResult

---@param task System.Threading.Tasks.Task
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.TaskAsyncResult.GetAsyncResult(task, callback, state) end
---@param result System.IAsyncResult
function System.Web.TaskAsyncResult.Wait(result) end

---@class System.Web.TaskEventHandler : System.MulticastDelegate
System.Web.TaskEventHandler = {}
---@alias CS.System.Web.TaskEventHandler System.Web.TaskEventHandler
CS.System.Web.TaskEventHandler = System.Web.TaskEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.TaskEventHandler
function System.Web.TaskEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.EventArgs
---@return System.Threading.Tasks.Task
function System.Web.TaskEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.EventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.TaskEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
---@return System.Threading.Tasks.Task
function System.Web.TaskEventHandler:EndInvoke(result) end

---@class System.Web.TempFileStream : System.IO.FileStream
---@field CanRead boolean
---@field CanWrite boolean
System.Web.TempFileStream = {}
---@alias CS.System.Web.TempFileStream System.Web.TempFileStream
CS.System.Web.TempFileStream = System.Web.TempFileStream

---@param name string
---@return System.Web.TempFileStream
function System.Web.TempFileStream.New(name) end
function System.Web.TempFileStream:SavePosition() end
function System.Web.TempFileStream:RestorePosition() end
function System.Web.TempFileStream:SetReadOnly() end
function System.Web.TempFileStream:SetWriteOnly() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.TempFileStream:Write(buffer, offset, count) end
---@param out_buffer number
---@param offset number
---@param count number
---@return number,number
function System.Web.TempFileStream:Read(out_buffer, offset, count) end

---@class System.Web.TraceContext : System.Object
---@field IsEnabled boolean
---@field TraceMode System.Web.TraceMode
System.Web.TraceContext = {}
---@alias CS.System.Web.TraceContext System.Web.TraceContext
CS.System.Web.TraceContext = System.Web.TraceContext

---@param context System.Web.HttpContext
---@return System.Web.TraceContext
function System.Web.TraceContext.New(context) end
---@overload fun(self: System.Web.TraceContext, message: string)
---@overload fun(self: System.Web.TraceContext, category: string, message: string)
---@param category string
---@param message string
---@param errorInfo System.Exception
function System.Web.TraceContext:Warn(category, message, errorInfo) end
---@overload fun(self: System.Web.TraceContext, message: string)
---@overload fun(self: System.Web.TraceContext, category: string, message: string)
---@param category string
---@param message string
---@param errorInfo System.Exception
function System.Web.TraceContext:Write(category, message, errorInfo) end

---@class System.Web.TraceContextRecord : System.Object
---@field Category string
---@field ErrorInfo System.Exception
---@field IsWarning boolean
---@field Message string
System.Web.TraceContextRecord = {}
---@alias CS.System.Web.TraceContextRecord System.Web.TraceContextRecord
CS.System.Web.TraceContextRecord = System.Web.TraceContextRecord

---@param category string
---@param msg string
---@param isWarning boolean
---@param errorInfo System.Exception
---@return System.Web.TraceContextRecord
function System.Web.TraceContextRecord.New(category, msg, isWarning, errorInfo) end

---@class System.Web.InfoTraceData : System.Object
---@field Category string
---@field Message string
---@field Exception string
---@field TimeSinceFirst number
---@field TimeSinceLast number
---@field IsWarning boolean
System.Web.InfoTraceData = {}
---@alias CS.System.Web.InfoTraceData System.Web.InfoTraceData
CS.System.Web.InfoTraceData = System.Web.InfoTraceData

---@param category string
---@param message string
---@param exception string
---@param timeSinceFirst number
---@param timeSinceLast number
---@param isWarning boolean
---@return System.Web.InfoTraceData
function System.Web.InfoTraceData.New(category, message, exception, timeSinceFirst, timeSinceLast, isWarning) end

---@class System.Web.ControlTraceData : System.Object
---@field ControlId string
---@field Type System.Type
---@field RenderSize number
---@field ViewstateSize number
---@field Depth number
---@field ControlstateSize number
System.Web.ControlTraceData = {}
---@alias CS.System.Web.ControlTraceData System.Web.ControlTraceData
CS.System.Web.ControlTraceData = System.Web.ControlTraceData

---@param controlId string
---@param type System.Type
---@param renderSize number
---@param viewstateSize number
---@param controlstateSize number
---@param depth number
---@return System.Web.ControlTraceData
function System.Web.ControlTraceData.New(controlId, type, renderSize, viewstateSize, controlstateSize, depth) end

---@class System.Web.NameValueTraceData : System.Object
---@field Name string
---@field Value string
System.Web.NameValueTraceData = {}
---@alias CS.System.Web.NameValueTraceData System.Web.NameValueTraceData
CS.System.Web.NameValueTraceData = System.Web.NameValueTraceData

---@param name string
---@param value string
---@return System.Web.NameValueTraceData
function System.Web.NameValueTraceData.New(name, value) end

---@class System.Web.TraceData : System.Object
---@field TraceMode System.Web.TraceMode
---@field RequestPath string
---@field SessionID string
---@field RequestTime System.DateTime
---@field RequestEncoding System.Text.Encoding
---@field ResponseEncoding System.Text.Encoding
---@field RequestType string
---@field StatusCode number
System.Web.TraceData = {}
---@alias CS.System.Web.TraceData System.Web.TraceData
CS.System.Web.TraceData = System.Web.TraceData

---@return System.Web.TraceData
function System.Web.TraceData.New() end
---@param category string
---@param msg string
---@param error System.Exception
---@param Warning boolean
function System.Web.TraceData:Write(category, msg, error, Warning) end
---@param page System.Web.UI.Page
---@param ctrl_vs System.Collections.Hashtable
---@param ctrl_cs System.Collections.Hashtable
---@param sizes System.Collections.Hashtable
function System.Web.TraceData:AddControlTree(page, ctrl_vs, ctrl_cs, sizes) end
---@param name string
---@param value string
function System.Web.TraceData:AddCookie(name, value) end
---@param name string
---@param value string
function System.Web.TraceData:AddHeader(name, value) end
---@param name string
---@param value string
function System.Web.TraceData:AddServerVar(name, value) end
---@param output System.Web.UI.HtmlTextWriter
function System.Web.TraceData:Render(output) end

---@class System.Web.TraceManager : System.Object
---@field HasException boolean
---@field InitialException System.Exception
---@field Enabled boolean
---@field LocalOnly boolean
---@field PageOutput boolean
---@field RequestLimit number
---@field TraceMode System.Web.TraceMode
---@field TraceData System.Web.TraceData[]
---@field ItemCount number
System.Web.TraceManager = {}
---@alias CS.System.Web.TraceManager System.Web.TraceManager
CS.System.Web.TraceManager = System.Web.TraceManager

---@return System.Web.TraceManager
function System.Web.TraceManager.New() end
---@param item System.Web.TraceData
function System.Web.TraceManager:AddTraceData(item) end
function System.Web.TraceManager:Clear() end

---@class System.Web.TraceMode
---@field SortByTime System.Web.TraceMode
---@field SortByCategory System.Web.TraceMode
---@field Default System.Web.TraceMode
System.Web.TraceMode = {}
---@alias CS.System.Web.TraceMode System.Web.TraceMode
CS.System.Web.TraceMode = System.Web.TraceMode


---@class System.Web.UnvalidatedRequestValues : System.Object
---@field Cookies System.Web.HttpCookieCollection
---@field Files System.Web.HttpFileCollection
---@field Form System.Collections.Specialized.NameValueCollection
---@field Headers System.Collections.Specialized.NameValueCollection
---@field Path string
---@field PathInfo string
---@field QueryString System.Collections.Specialized.NameValueCollection
---@field RawUrl string
---@field Url System.Uri
---@field Item string
System.Web.UnvalidatedRequestValues = {}
---@alias CS.System.Web.UnvalidatedRequestValues System.Web.UnvalidatedRequestValues
CS.System.Web.UnvalidatedRequestValues = System.Web.UnvalidatedRequestValues

---@return System.Web.UnvalidatedRequestValues
function System.Web.UnvalidatedRequestValues.New() end

---@class System.Web.VirtualPath : System.Object
---@field IsAbsolute boolean
---@field IsFake boolean
---@field IsRooted boolean
---@field IsAppRelative boolean
---@field Original string
---@field Absolute string
---@field AppRelative string
---@field AppRelativeNotRooted string
---@field Extension string
---@field Directory string
---@field DirectoryNoNormalize string
---@field CurrentRequestDirectory string
---@field PhysicalPath string
System.Web.VirtualPath = {}
---@alias CS.System.Web.VirtualPath System.Web.VirtualPath
CS.System.Web.VirtualPath = System.Web.VirtualPath

---@overload fun(vpath: string) : System.Web.VirtualPath
---@overload fun(vpath: string, baseVirtualDir: string) : System.Web.VirtualPath
---@param vpath string
---@param physicalPath string
---@param isFake boolean
---@return System.Web.VirtualPath
function System.Web.VirtualPath.New(vpath, physicalPath, isFake) end
---@param physical_path string
---@return System.Web.VirtualPath
function System.Web.VirtualPath.PhysicalToVirtual(physical_path) end
---@param s string
---@return boolean
function System.Web.VirtualPath:StartsWith(s) end
function System.Web.VirtualPath:Dispose() end
---@return string
function System.Web.VirtualPath:ToString() end

---@class System.Web.VirtualPathUtility : System.Object
System.Web.VirtualPathUtility = {}
---@alias CS.System.Web.VirtualPathUtility System.Web.VirtualPathUtility
CS.System.Web.VirtualPathUtility = System.Web.VirtualPathUtility

---@param virtualPath string
---@return string
function System.Web.VirtualPathUtility.AppendTrailingSlash(virtualPath) end
---@param basePath string
---@param relativePath string
---@return string
function System.Web.VirtualPathUtility.Combine(basePath, relativePath) end
---@param virtualPath string
---@return string
function System.Web.VirtualPathUtility.GetDirectory(virtualPath) end
---@param virtualPath string
---@return string
function System.Web.VirtualPathUtility.GetExtension(virtualPath) end
---@param virtualPath string
---@return string
function System.Web.VirtualPathUtility.GetFileName(virtualPath) end
---@param virtualPath string
---@return boolean
function System.Web.VirtualPathUtility.IsAbsolute(virtualPath) end
---@param virtualPath string
---@return boolean
function System.Web.VirtualPathUtility.IsAppRelative(virtualPath) end
---@param fromPath string
---@param toPath string
---@return string
function System.Web.VirtualPathUtility.MakeRelative(fromPath, toPath) end
---@param virtualPath string
---@return string
function System.Web.VirtualPathUtility.RemoveTrailingSlash(virtualPath) end
---@overload fun(virtualPath: string) : string
---@param virtualPath string
---@param applicationPath string
---@return string
function System.Web.VirtualPathUtility.ToAbsolute(virtualPath, applicationPath) end
---@overload fun(virtualPath: string) : string
---@param virtualPath string
---@param applicationPath string
---@return string
function System.Web.VirtualPathUtility.ToAppRelative(virtualPath, applicationPath) end

---@class System.Web.WebCategoryAttribute : System.ComponentModel.CategoryAttribute
System.Web.WebCategoryAttribute = {}
---@alias CS.System.Web.WebCategoryAttribute System.Web.WebCategoryAttribute
CS.System.Web.WebCategoryAttribute = System.Web.WebCategoryAttribute

---@param category string
---@return System.Web.WebCategoryAttribute
function System.Web.WebCategoryAttribute.New(category) end

---@class System.Web.WebPageTraceListener : System.Diagnostics.TraceListener
System.Web.WebPageTraceListener = {}
---@alias CS.System.Web.WebPageTraceListener System.Web.WebPageTraceListener
CS.System.Web.WebPageTraceListener = System.Web.WebPageTraceListener

---@return System.Web.WebPageTraceListener
function System.Web.WebPageTraceListener.New() end
---@overload fun(self: System.Web.WebPageTraceListener, eventCache: System.Diagnostics.TraceEventCache, source: string, severity: System.Diagnostics.TraceEventType, id: number, message: string)
---@param eventCache System.Diagnostics.TraceEventCache
---@param source string
---@param severity System.Diagnostics.TraceEventType
---@param id number
---@param format string
---@param args System.Object[]
function System.Web.WebPageTraceListener:TraceEvent(eventCache, source, severity, id, format, args) end
---@overload fun(self: System.Web.WebPageTraceListener, message: string)
---@param message string
---@param category string
function System.Web.WebPageTraceListener:Write(message, category) end
---@overload fun(self: System.Web.WebPageTraceListener, message: string)
---@param message string
---@param category string
function System.Web.WebPageTraceListener:WriteLine(message, category) end

---@class System.Web.WebROCollection : System.Collections.Specialized.NameValueCollection
---@field GotID boolean
---@field ID number
System.Web.WebROCollection = {}
---@alias CS.System.Web.WebROCollection System.Web.WebROCollection
CS.System.Web.WebROCollection = System.Web.WebROCollection

---@return System.Web.WebROCollection
function System.Web.WebROCollection.New() end
function System.Web.WebROCollection:Protect() end
function System.Web.WebROCollection:Unprotect() end
---@return string
function System.Web.WebROCollection:ToString() end

---@class System.Web.XmlSiteMapProvider : System.Web.StaticSiteMapProvider
---@field RootNode System.Web.SiteMapNode
System.Web.XmlSiteMapProvider = {}
---@alias CS.System.Web.XmlSiteMapProvider System.Web.XmlSiteMapProvider
CS.System.Web.XmlSiteMapProvider = System.Web.XmlSiteMapProvider

---@return System.Web.XmlSiteMapProvider
function System.Web.XmlSiteMapProvider.New() end
---@return System.Web.SiteMapNode
function System.Web.XmlSiteMapProvider:BuildSiteMap() end
function System.Web.XmlSiteMapProvider:Dispose() end
---@param rawUrl string
---@return System.Web.SiteMapNode
function System.Web.XmlSiteMapProvider:FindSiteMapNode(rawUrl) end
---@param key string
---@return System.Web.SiteMapNode
function System.Web.XmlSiteMapProvider:FindSiteMapNodeFromKey(key) end
---@param name string
---@param attributes System.Collections.Specialized.NameValueCollection
function System.Web.XmlSiteMapProvider:Initialize(name, attributes) end

---@class System.Web.Properties.Resources : System.Object
System.Web.Properties.Resources = {}
---@alias CS.System.Web.Properties.Resources System.Web.Properties.Resources
CS.System.Web.Properties.Resources = System.Web.Properties.Resources


---@class System.Web.Mail.Base64AttachmentEncoder : System.Object
System.Web.Mail.Base64AttachmentEncoder = {}
---@alias CS.System.Web.Mail.Base64AttachmentEncoder System.Web.Mail.Base64AttachmentEncoder
CS.System.Web.Mail.Base64AttachmentEncoder = System.Web.Mail.Base64AttachmentEncoder

---@return System.Web.Mail.Base64AttachmentEncoder
function System.Web.Mail.Base64AttachmentEncoder.New() end
---@param ins System.IO.Stream
---@param outs System.IO.Stream
function System.Web.Mail.Base64AttachmentEncoder:EncodeStream(ins, outs) end

---@class System.Web.Mail.IAttachmentEncoder
System.Web.Mail.IAttachmentEncoder = {}
---@alias CS.System.Web.Mail.IAttachmentEncoder System.Web.Mail.IAttachmentEncoder
CS.System.Web.Mail.IAttachmentEncoder = System.Web.Mail.IAttachmentEncoder

---@param ins System.IO.Stream
---@param outs System.IO.Stream
function System.Web.Mail.IAttachmentEncoder:EncodeStream(ins, outs) end

---@class System.Web.Mail.MailAddress : System.Object
---@field User string
---@field Host string
---@field Name string
---@field Address string
System.Web.Mail.MailAddress = {}
---@alias CS.System.Web.Mail.MailAddress System.Web.Mail.MailAddress
CS.System.Web.Mail.MailAddress = System.Web.Mail.MailAddress

---@return System.Web.Mail.MailAddress
function System.Web.Mail.MailAddress.New() end
---@param str string
---@return System.Web.Mail.MailAddress
function System.Web.Mail.MailAddress.Parse(str) end
---@return string
function System.Web.Mail.MailAddress:ToString() end

---@class System.Web.Mail.MailAddressCollection : System.Object
---@field Item System.Web.Mail.MailAddress
---@field Count number
System.Web.Mail.MailAddressCollection = {}
---@alias CS.System.Web.Mail.MailAddressCollection System.Web.Mail.MailAddressCollection
CS.System.Web.Mail.MailAddressCollection = System.Web.Mail.MailAddressCollection

---@return System.Web.Mail.MailAddressCollection
function System.Web.Mail.MailAddressCollection.New() end
---@param str string
---@return System.Web.Mail.MailAddressCollection
function System.Web.Mail.MailAddressCollection.Parse(str) end
---@param addr System.Web.Mail.MailAddress
function System.Web.Mail.MailAddressCollection:Add(addr) end
---@param index number
---@return System.Web.Mail.MailAddress
function System.Web.Mail.MailAddressCollection:Get(index) end
---@return System.Collections.IEnumerator
function System.Web.Mail.MailAddressCollection:GetEnumerator() end
---@return string
function System.Web.Mail.MailAddressCollection:ToString() end

---@class System.Web.Mail.MailAttachment : System.Object
---@field Filename string
---@field Encoding System.Web.Mail.MailEncoding
System.Web.Mail.MailAttachment = {}
---@alias CS.System.Web.Mail.MailAttachment System.Web.Mail.MailAttachment
CS.System.Web.Mail.MailAttachment = System.Web.Mail.MailAttachment

---@overload fun(filename: string) : System.Web.Mail.MailAttachment
---@param filename string
---@param encoding System.Web.Mail.MailEncoding
---@return System.Web.Mail.MailAttachment
function System.Web.Mail.MailAttachment.New(filename, encoding) end

---@class System.Web.Mail.MailEncoding
---@field UUEncode System.Web.Mail.MailEncoding
---@field Base64 System.Web.Mail.MailEncoding
System.Web.Mail.MailEncoding = {}
---@alias CS.System.Web.Mail.MailEncoding System.Web.Mail.MailEncoding
CS.System.Web.Mail.MailEncoding = System.Web.Mail.MailEncoding


---@class System.Web.Mail.MailFormat
---@field Text System.Web.Mail.MailFormat
---@field Html System.Web.Mail.MailFormat
System.Web.Mail.MailFormat = {}
---@alias CS.System.Web.Mail.MailFormat System.Web.Mail.MailFormat
CS.System.Web.Mail.MailFormat = System.Web.Mail.MailFormat


---@class System.Web.Mail.MailHeader : System.Object
---@field To string
---@field From string
---@field Cc string
---@field Bcc string
---@field Subject string
---@field Importance string
---@field Priority string
---@field MimeVersion string
---@field ContentType string
---@field ContentTransferEncoding string
---@field ContentDisposition string
---@field ContentBase string
---@field ContentLocation string
---@field Data System.Collections.Specialized.NameValueCollection
System.Web.Mail.MailHeader = {}
---@alias CS.System.Web.Mail.MailHeader System.Web.Mail.MailHeader
CS.System.Web.Mail.MailHeader = System.Web.Mail.MailHeader

---@return System.Web.Mail.MailHeader
function System.Web.Mail.MailHeader.New() end

---@class System.Web.Mail.MailMessage : System.Object
---@field Attachments System.Collections.IList
---@field Bcc string
---@field Body string
---@field BodyEncoding System.Text.Encoding
---@field BodyFormat System.Web.Mail.MailFormat
---@field Cc string
---@field From string
---@field Headers System.Collections.IDictionary
---@field Priority System.Web.Mail.MailPriority
---@field Subject string
---@field To string
---@field UrlContentBase string
---@field UrlContentLocation string
---@field Fields System.Collections.IDictionary
System.Web.Mail.MailMessage = {}
---@alias CS.System.Web.Mail.MailMessage System.Web.Mail.MailMessage
CS.System.Web.Mail.MailMessage = System.Web.Mail.MailMessage

---@return System.Web.Mail.MailMessage
function System.Web.Mail.MailMessage.New() end

---@class System.Web.Mail.MailMessageWrapper : System.Object
---@field Attachments System.Collections.IList
---@field Bcc System.Web.Mail.MailAddressCollection
---@field Body string
---@field BodyEncoding System.Text.Encoding
---@field BodyFormat System.Web.Mail.MailFormat
---@field Cc System.Web.Mail.MailAddressCollection
---@field From System.Web.Mail.MailAddress
---@field Header System.Web.Mail.MailHeader
---@field Priority System.Web.Mail.MailPriority
---@field Subject string
---@field To System.Web.Mail.MailAddressCollection
---@field UrlContentBase string
---@field UrlContentLocation string
---@field Fields System.Web.Mail.MailHeader
System.Web.Mail.MailMessageWrapper = {}
---@alias CS.System.Web.Mail.MailMessageWrapper System.Web.Mail.MailMessageWrapper
CS.System.Web.Mail.MailMessageWrapper = System.Web.Mail.MailMessageWrapper

---@param message System.Web.Mail.MailMessage
---@return System.Web.Mail.MailMessageWrapper
function System.Web.Mail.MailMessageWrapper.New(message) end

---@class System.Web.Mail.MailPriority
---@field Normal System.Web.Mail.MailPriority
---@field Low System.Web.Mail.MailPriority
---@field High System.Web.Mail.MailPriority
System.Web.Mail.MailPriority = {}
---@alias CS.System.Web.Mail.MailPriority System.Web.Mail.MailPriority
CS.System.Web.Mail.MailPriority = System.Web.Mail.MailPriority


---@class System.Web.Mail.MailUtil : System.Object
System.Web.Mail.MailUtil = {}
---@alias CS.System.Web.Mail.MailUtil System.Web.Mail.MailUtil
CS.System.Web.Mail.MailUtil = System.Web.Mail.MailUtil

---@return System.Web.Mail.MailUtil
function System.Web.Mail.MailUtil.New() end
---@param str string
---@return boolean
function System.Web.Mail.MailUtil.NeedEncoding(str) end
---@param str string
---@return string
function System.Web.Mail.MailUtil.Base64Encode(str) end
---@return string
function System.Web.Mail.MailUtil.GenerateBoundary() end

---@class System.Web.Mail.RelatedBodyPart : System.Object
---@field Name string
---@field Path string
System.Web.Mail.RelatedBodyPart = {}
---@alias CS.System.Web.Mail.RelatedBodyPart System.Web.Mail.RelatedBodyPart
CS.System.Web.Mail.RelatedBodyPart = System.Web.Mail.RelatedBodyPart

---@param id string
---@param fileName string
---@return System.Web.Mail.RelatedBodyPart
function System.Web.Mail.RelatedBodyPart.New(id, fileName) end

---@class System.Web.Mail.SmtpClient : System.Object
System.Web.Mail.SmtpClient = {}
---@alias CS.System.Web.Mail.SmtpClient System.Web.Mail.SmtpClient
CS.System.Web.Mail.SmtpClient = System.Web.Mail.SmtpClient

---@param server string
---@return System.Web.Mail.SmtpClient
function System.Web.Mail.SmtpClient.New(server) end
---@param msg System.Web.Mail.MailMessageWrapper
function System.Web.Mail.SmtpClient:Send(msg) end
function System.Web.Mail.SmtpClient:Close() end

---@class System.Web.Mail.SmtpException : System.IO.IOException
System.Web.Mail.SmtpException = {}
---@alias CS.System.Web.Mail.SmtpException System.Web.Mail.SmtpException
CS.System.Web.Mail.SmtpException = System.Web.Mail.SmtpException

---@param message string
---@return System.Web.Mail.SmtpException
function System.Web.Mail.SmtpException.New(message) end

---@class System.Web.Mail.SmtpMail : System.Object
---@field SmtpServer string
System.Web.Mail.SmtpMail = {}
---@alias CS.System.Web.Mail.SmtpMail System.Web.Mail.SmtpMail
CS.System.Web.Mail.SmtpMail = System.Web.Mail.SmtpMail

---@overload fun(message: System.Web.Mail.MailMessage)
---@param from string
---@param to string
---@param subject string
---@param messageText string
function System.Web.Mail.SmtpMail.Send(from, to, subject, messageText) end

---@class System.Web.Mail.SmtpResponse : System.Object
---@field StatusCode number
---@field RawResponse string
---@field Parts System.String[]
System.Web.Mail.SmtpResponse = {}
---@alias CS.System.Web.Mail.SmtpResponse System.Web.Mail.SmtpResponse
CS.System.Web.Mail.SmtpResponse = System.Web.Mail.SmtpResponse

---@param line string
---@return System.Web.Mail.SmtpResponse
function System.Web.Mail.SmtpResponse.Parse(line) end

---@class System.Web.Mail.SmtpStream : System.Object
---@field Stream System.IO.Stream
---@field LastResponse System.Web.Mail.SmtpResponse
System.Web.Mail.SmtpStream = {}
---@alias CS.System.Web.Mail.SmtpStream System.Web.Mail.SmtpStream
CS.System.Web.Mail.SmtpStream = System.Web.Mail.SmtpStream

---@param stream System.IO.Stream
---@return System.Web.Mail.SmtpStream
function System.Web.Mail.SmtpStream.New(stream) end
function System.Web.Mail.SmtpStream:WriteRset() end
function System.Web.Mail.SmtpStream:WriteAuthLogin() end
---@return boolean
function System.Web.Mail.SmtpStream:WriteStartTLS() end
---@param hostName string
function System.Web.Mail.SmtpStream:WriteEhlo(hostName) end
---@param hostName string
function System.Web.Mail.SmtpStream:WriteHelo(hostName) end
---@param from string
function System.Web.Mail.SmtpStream:WriteMailFrom(from) end
---@param to string
function System.Web.Mail.SmtpStream:WriteRcptTo(to) end
function System.Web.Mail.SmtpStream:WriteData() end
function System.Web.Mail.SmtpStream:WriteQuit() end
---@param boundary string
function System.Web.Mail.SmtpStream:WriteBoundary(boundary) end
---@param boundary string
function System.Web.Mail.SmtpStream:WriteFinalBoundary(boundary) end
function System.Web.Mail.SmtpStream:WriteDataEndTag() end
---@param header System.Web.Mail.MailHeader
function System.Web.Mail.SmtpStream:WriteHeader(header) end
---@param statusCode number
function System.Web.Mail.SmtpStream:CheckForStatusCode(statusCode) end
---@param buffer System.Byte[]
function System.Web.Mail.SmtpStream:WriteBytes(buffer) end
---@overload fun(self: System.Web.Mail.SmtpStream, format: string, args: System.Object[])
---@param line string
function System.Web.Mail.SmtpStream:WriteLine(line) end
function System.Web.Mail.SmtpStream:ReadResponse() end

---@class System.Web.Mail.ToUUEncodingTransform : System.Object
---@field InputBlockSize number
---@field OutputBlockSize number
---@field CanTransformMultipleBlocks boolean
---@field CanReuseTransform boolean
System.Web.Mail.ToUUEncodingTransform = {}
---@alias CS.System.Web.Mail.ToUUEncodingTransform System.Web.Mail.ToUUEncodingTransform
CS.System.Web.Mail.ToUUEncodingTransform = System.Web.Mail.ToUUEncodingTransform

---@return System.Web.Mail.ToUUEncodingTransform
function System.Web.Mail.ToUUEncodingTransform.New() end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@param outputBuffer System.Byte[]
---@param outputOffset number
---@return number
function System.Web.Mail.ToUUEncodingTransform:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset) end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@return System.Byte[]
function System.Web.Mail.ToUUEncodingTransform:TransformFinalBlock(inputBuffer, inputOffset, inputCount) end
function System.Web.Mail.ToUUEncodingTransform:Dispose() end

---@class System.Web.Mail.UUAttachmentEncoder : System.Object
System.Web.Mail.UUAttachmentEncoder = {}
---@alias CS.System.Web.Mail.UUAttachmentEncoder System.Web.Mail.UUAttachmentEncoder
CS.System.Web.Mail.UUAttachmentEncoder = System.Web.Mail.UUAttachmentEncoder

---@param mode number
---@param fileName string
---@return System.Web.Mail.UUAttachmentEncoder
function System.Web.Mail.UUAttachmentEncoder.New(mode, fileName) end
---@param ins System.IO.Stream
---@param outs System.IO.Stream
function System.Web.Mail.UUAttachmentEncoder:EncodeStream(ins, outs) end

---@class System.Web.Handlers.AssemblyResourceLoader : System.Object
System.Web.Handlers.AssemblyResourceLoader = {}
---@alias CS.System.Web.Handlers.AssemblyResourceLoader System.Web.Handlers.AssemblyResourceLoader
CS.System.Web.Handlers.AssemblyResourceLoader = System.Web.Handlers.AssemblyResourceLoader

---@return System.Web.Handlers.AssemblyResourceLoader
function System.Web.Handlers.AssemblyResourceLoader.New() end

---@class System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper : System.Object
System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper = {}
---@alias CS.System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper
CS.System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper = System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper

---@param assembly System.Reflection.Assembly
---@return System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper
function System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper.New(assembly) end
---@param reader System.IO.TextReader
---@param writer System.IO.TextWriter
function System.Web.Handlers.AssemblyResourceLoader.PerformSubstitutionHelper:PerformSubstitution(reader, writer) end

---@class System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource : System.Object
---@field Name string
---@field Url string
---@field Attribute System.Web.UI.WebResourceAttribute
System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource = {}
---@alias CS.System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource
CS.System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource = System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource

---@return System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource
function System.Web.Handlers.AssemblyResourceLoader.EmbeddedResource.New() end

---@class System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources : System.Object
---@field AssemblyName string
---@field Resources System.Collections.Generic.Dictionary
System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources = {}
---@alias CS.System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources
CS.System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources = System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources

---@return System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources
function System.Web.Handlers.AssemblyResourceLoader.AssemblyEmbeddedResources.New() end

---@class System.Web.Handlers.TraceNotAvailableException : System.Web.HttpException
System.Web.Handlers.TraceNotAvailableException = {}
---@alias CS.System.Web.Handlers.TraceNotAvailableException System.Web.Handlers.TraceNotAvailableException
CS.System.Web.Handlers.TraceNotAvailableException = System.Web.Handlers.TraceNotAvailableException

---@param notLocal boolean
---@return System.Web.Handlers.TraceNotAvailableException
function System.Web.Handlers.TraceNotAvailableException.New(notLocal) end

---@class System.Web.Handlers.TraceHandler : System.Object
System.Web.Handlers.TraceHandler = {}
---@alias CS.System.Web.Handlers.TraceHandler System.Web.Handlers.TraceHandler
CS.System.Web.Handlers.TraceHandler = System.Web.Handlers.TraceHandler

---@return System.Web.Handlers.TraceHandler
function System.Web.Handlers.TraceHandler.New() end

---@class System.Web.WebSockets.AspNetWebSocketOptions : System.Object
---@field RequireSameOrigin boolean
---@field SubProtocol string
System.Web.WebSockets.AspNetWebSocketOptions = {}
---@alias CS.System.Web.WebSockets.AspNetWebSocketOptions System.Web.WebSockets.AspNetWebSocketOptions
CS.System.Web.WebSockets.AspNetWebSocketOptions = System.Web.WebSockets.AspNetWebSocketOptions

---@return System.Web.WebSockets.AspNetWebSocketOptions
function System.Web.WebSockets.AspNetWebSocketOptions.New() end

---@class System.Web.WebSockets.SubProtocolUtil : System.Object
System.Web.WebSockets.SubProtocolUtil = {}
---@alias CS.System.Web.WebSockets.SubProtocolUtil System.Web.WebSockets.SubProtocolUtil
CS.System.Web.WebSockets.SubProtocolUtil = System.Web.WebSockets.SubProtocolUtil

---@param subprotocol string
---@return boolean
function System.Web.WebSockets.SubProtocolUtil.IsValidSubProtocolName(subprotocol) end
---@param headerValue string
---@return System.Collections.Generic.List
function System.Web.WebSockets.SubProtocolUtil.ParseHeader(headerValue) end

---@class System.Web.Util.AppVerifierErrorCode
---@field Ok System.Web.Util.AppVerifierErrorCode
---@field HttpApplicationInstanceWasNull System.Web.Util.AppVerifierErrorCode
---@field BeginHandlerDelegateWasNull System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedMultipleTimes System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedWithNullParameter System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackGivenAsyncResultWhichWasNotCompleted System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedSynchronouslyButAsyncResultWasNotMarkedCompletedSynchronously System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedAsynchronouslyButAsyncResultWasMarkedCompletedSynchronously System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedWithUnexpectedAsyncResultInstance System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedAsynchronouslyThenBeginHandlerThrew System.Web.Util.AppVerifierErrorCode
---@field BeginHandlerThrewThenAsyncCallbackInvokedAsynchronously System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedSynchronouslyThenBeginHandlerThrew System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackInvokedWithUnexpectedAsyncResultAsyncState System.Web.Util.AppVerifierErrorCode
---@field AsyncCallbackCalledAfterHttpApplicationReassigned System.Web.Util.AppVerifierErrorCode
---@field BeginHandlerReturnedNull System.Web.Util.AppVerifierErrorCode
---@field BeginHandlerReturnedAsyncResultMarkedCompletedSynchronouslyButWhichWasNotCompleted System.Web.Util.AppVerifierErrorCode
---@field BeginHandlerReturnedAsyncResultMarkedCompletedSynchronouslyButAsyncCallbackNeverCalled System.Web.Util.AppVerifierErrorCode
---@field BeginHandlerReturnedUnexpectedAsyncResultInstance System.Web.Util.AppVerifierErrorCode
---@field BeginHandlerReturnedUnexpectedAsyncResultAsyncState System.Web.Util.AppVerifierErrorCode
---@field SyncContextSendOrPostCalledAfterRequestCompleted System.Web.Util.AppVerifierErrorCode
---@field SyncContextSendOrPostCalledBetweenNotifications System.Web.Util.AppVerifierErrorCode
---@field SyncContextPostCalledInNestedNotification System.Web.Util.AppVerifierErrorCode
---@field RequestNotificationCompletedSynchronouslyWithNotificationContextPending System.Web.Util.AppVerifierErrorCode
---@field NotificationContextHasChangedAfterSynchronouslyProcessingNotification System.Web.Util.AppVerifierErrorCode
---@field PendingProcessRequestNotificationStatusAfterCompletingNestedNotification System.Web.Util.AppVerifierErrorCode
System.Web.Util.AppVerifierErrorCode = {}
---@alias CS.System.Web.Util.AppVerifierErrorCode System.Web.Util.AppVerifierErrorCode
CS.System.Web.Util.AppVerifierErrorCode = System.Web.Util.AppVerifierErrorCode


---@class System.Web.Util.AppVerifierException : System.Exception
---@field ErrorCode System.Web.Util.AppVerifierErrorCode
System.Web.Util.AppVerifierException = {}
---@alias CS.System.Web.Util.AppVerifierException System.Web.Util.AppVerifierException
CS.System.Web.Util.AppVerifierException = System.Web.Util.AppVerifierException

---@param errorCode System.Web.Util.AppVerifierErrorCode
---@param message string
---@return System.Web.Util.AppVerifierException
function System.Web.Util.AppVerifierException.New(errorCode, message) end

---@class System.Web.Util.AssemblyUtil : System.Object
System.Web.Util.AssemblyUtil = {}
---@alias CS.System.Web.Util.AssemblyUtil System.Web.Util.AssemblyUtil
CS.System.Web.Util.AssemblyUtil = System.Web.Util.AssemblyUtil

---@param assembly System.Reflection.Assembly
---@return string
function System.Web.Util.AssemblyUtil.GetAssemblyFileVersion(assembly) end

---@class System.Web.Util.BinaryCompatibility : System.Object
---@field Current System.Web.Util.BinaryCompatibility
---@field TargetsAtLeastFramework45 boolean
---@field TargetsAtLeastFramework451 boolean
---@field TargetsAtLeastFramework452 boolean
---@field TargetsAtLeastFramework46 boolean
---@field TargetsAtLeastFramework461 boolean
---@field TargetsAtLeastFramework463 boolean
---@field TargetFramework System.Version
System.Web.Util.BinaryCompatibility = {}
---@alias CS.System.Web.Util.BinaryCompatibility System.Web.Util.BinaryCompatibility
CS.System.Web.Util.BinaryCompatibility = System.Web.Util.BinaryCompatibility

---@param frameworkName System.Runtime.Versioning.FrameworkName
---@return System.Web.Util.BinaryCompatibility
function System.Web.Util.BinaryCompatibility.New(frameworkName) end

---@class System.Web.Util.CancellationTokenHelper : System.Object
System.Web.Util.CancellationTokenHelper = {}
---@alias CS.System.Web.Util.CancellationTokenHelper System.Web.Util.CancellationTokenHelper
CS.System.Web.Util.CancellationTokenHelper = System.Web.Util.CancellationTokenHelper

---@param canceled boolean
---@return System.Web.Util.CancellationTokenHelper
function System.Web.Util.CancellationTokenHelper.New(canceled) end
function System.Web.Util.CancellationTokenHelper:Cancel() end
function System.Web.Util.CancellationTokenHelper:Dispose() end

---@class System.Web.Util.TimeUnit
---@field Unknown System.Web.Util.TimeUnit
---@field Days System.Web.Util.TimeUnit
---@field Hours System.Web.Util.TimeUnit
---@field Minutes System.Web.Util.TimeUnit
---@field Seconds System.Web.Util.TimeUnit
---@field Milliseconds System.Web.Util.TimeUnit
System.Web.Util.TimeUnit = {}
---@alias CS.System.Web.Util.TimeUnit System.Web.Util.TimeUnit
CS.System.Web.Util.TimeUnit = System.Web.Util.TimeUnit


---@class System.Web.Util.DateTimeUtil : System.Object
System.Web.Util.DateTimeUtil = {}
---@alias CS.System.Web.Util.DateTimeUtil System.Web.Util.DateTimeUtil
CS.System.Web.Util.DateTimeUtil = System.Web.Util.DateTimeUtil


---@class System.Web.Util.Debug : System.Object
System.Web.Util.Debug = {}
---@alias CS.System.Web.Util.Debug System.Web.Util.Debug
CS.System.Web.Util.Debug = System.Web.Util.Debug

---@param tagName string
---@param e System.Exception
function System.Web.Util.Debug.TraceException(tagName, e) end

---@class System.Web.Util.Debug.NativeMethods : System.Object
System.Web.Util.Debug.NativeMethods = {}
---@alias CS.System.Web.Util.Debug.NativeMethods System.Web.Util.Debug.NativeMethods
CS.System.Web.Util.Debug.NativeMethods = System.Web.Util.Debug.NativeMethods


---@class System.Web.Util.DisposableAction : System.Object
---@field Empty System.Web.Util.DisposableAction
System.Web.Util.DisposableAction = {}
---@alias CS.System.Web.Util.DisposableAction System.Web.Util.DisposableAction
CS.System.Web.Util.DisposableAction = System.Web.Util.DisposableAction

---@param disposeAction System.Action
---@return System.Web.Util.DisposableAction
function System.Web.Util.DisposableAction.New(disposeAction) end
function System.Web.Util.DisposableAction:Dispose() end

---@class System.Web.Util.DoNotResetAttribute : System.Attribute
System.Web.Util.DoNotResetAttribute = {}
---@alias CS.System.Web.Util.DoNotResetAttribute System.Web.Util.DoNotResetAttribute
CS.System.Web.Util.DoNotResetAttribute = System.Web.Util.DoNotResetAttribute

---@return System.Web.Util.DoNotResetAttribute
function System.Web.Util.DoNotResetAttribute.New() end

---@class System.Web.Util.EmptyCollection : System.Object
---@field Count number
System.Web.Util.EmptyCollection = {}
---@alias CS.System.Web.Util.EmptyCollection System.Web.Util.EmptyCollection
CS.System.Web.Util.EmptyCollection = System.Web.Util.EmptyCollection

---@param array System.Array
---@param index number
function System.Web.Util.EmptyCollection:CopyTo(array, index) end

---@class System.Web.Util.EnumerationRangeValidationUtil : System.Object
System.Web.Util.EnumerationRangeValidationUtil = {}
---@alias CS.System.Web.Util.EnumerationRangeValidationUtil System.Web.Util.EnumerationRangeValidationUtil
CS.System.Web.Util.EnumerationRangeValidationUtil = System.Web.Util.EnumerationRangeValidationUtil

---@param value System.Web.UI.WebControls.RepeatLayout
function System.Web.Util.EnumerationRangeValidationUtil.ValidateRepeatLayout(value) end

---@class System.Web.Util.ExceptionUtil : System.Object
System.Web.Util.ExceptionUtil = {}
---@alias CS.System.Web.Util.ExceptionUtil System.Web.Util.ExceptionUtil
CS.System.Web.Util.ExceptionUtil = System.Web.Util.ExceptionUtil


---@class System.Web.Util.FastDelegateCreator : System.Object
System.Web.Util.FastDelegateCreator = {}
---@alias CS.System.Web.Util.FastDelegateCreator System.Web.Util.FastDelegateCreator
CS.System.Web.Util.FastDelegateCreator = System.Web.Util.FastDelegateCreator


---@class System.Web.Util.GCUtil : System.Object
System.Web.Util.GCUtil = {}
---@alias CS.System.Web.Util.GCUtil System.Web.Util.GCUtil
CS.System.Web.Util.GCUtil = System.Web.Util.GCUtil

---@param obj System.Object
---@return System.IntPtr
function System.Web.Util.GCUtil.RootObject(obj) end
---@param pointer System.IntPtr
---@return System.Object
function System.Web.Util.GCUtil.UnrootObject(pointer) end

---@class System.Web.Util.DisposableGCHandleRef : System.Object
---@field Target T
System.Web.Util.DisposableGCHandleRef = {}
---@alias CS.System.Web.Util.DisposableGCHandleRef System.Web.Util.DisposableGCHandleRef
CS.System.Web.Util.DisposableGCHandleRef = System.Web.Util.DisposableGCHandleRef

---@param t T
---@return System.Web.Util.DisposableGCHandleRef
function System.Web.Util.DisposableGCHandleRef.New(t) end
function System.Web.Util.DisposableGCHandleRef:Dispose() end

---@class System.Web.Util.IWebObjectFactory
System.Web.Util.IWebObjectFactory = {}
---@alias CS.System.Web.Util.IWebObjectFactory System.Web.Util.IWebObjectFactory
CS.System.Web.Util.IWebObjectFactory = System.Web.Util.IWebObjectFactory

---@return System.Object
function System.Web.Util.IWebObjectFactory:CreateInstance() end

---@class System.Web.Util.ITypedWebObjectFactory
---@field InstantiatedType System.Type
System.Web.Util.ITypedWebObjectFactory = {}
---@alias CS.System.Web.Util.ITypedWebObjectFactory System.Web.Util.ITypedWebObjectFactory
CS.System.Web.Util.ITypedWebObjectFactory = System.Web.Util.ITypedWebObjectFactory


---@class System.Web.Util.ISyncContext
---@field HttpContext System.Web.HttpContext
System.Web.Util.ISyncContext = {}
---@alias CS.System.Web.Util.ISyncContext System.Web.Util.ISyncContext
CS.System.Web.Util.ISyncContext = System.Web.Util.ISyncContext

---@return System.Web.Util.ISyncContextLock
function System.Web.Util.ISyncContext:Enter() end

---@class System.Web.Util.ISyncContextLock
System.Web.Util.ISyncContextLock = {}
---@alias CS.System.Web.Util.ISyncContextLock System.Web.Util.ISyncContextLock
CS.System.Web.Util.ISyncContextLock = System.Web.Util.ISyncContextLock

function System.Web.Util.ISyncContextLock:Leave() end

---@class System.Web.Util.Msec : System.Object
System.Web.Util.Msec = {}
---@alias CS.System.Web.Util.Msec System.Web.Util.Msec
CS.System.Web.Util.Msec = System.Web.Util.Msec


---@class System.Web.Util.ObjectSet : System.Object
---@field Count number
System.Web.Util.ObjectSet = {}
---@alias CS.System.Web.Util.ObjectSet System.Web.Util.ObjectSet
CS.System.Web.Util.ObjectSet = System.Web.Util.ObjectSet

---@param o System.Object
function System.Web.Util.ObjectSet:Add(o) end
---@param c System.Collections.ICollection
function System.Web.Util.ObjectSet:AddCollection(c) end
---@param o System.Object
function System.Web.Util.ObjectSet:Remove(o) end
---@param o System.Object
---@return boolean
function System.Web.Util.ObjectSet:Contains(o) end
---@param array System.Array
---@param index number
function System.Web.Util.ObjectSet:CopyTo(array, index) end

---@class System.Web.Util.ObjectSet.EmptyEnumerator : System.Object
---@field Current System.Object
System.Web.Util.ObjectSet.EmptyEnumerator = {}
---@alias CS.System.Web.Util.ObjectSet.EmptyEnumerator System.Web.Util.ObjectSet.EmptyEnumerator
CS.System.Web.Util.ObjectSet.EmptyEnumerator = System.Web.Util.ObjectSet.EmptyEnumerator

---@return System.Web.Util.ObjectSet.EmptyEnumerator
function System.Web.Util.ObjectSet.EmptyEnumerator.New() end
---@return boolean
function System.Web.Util.ObjectSet.EmptyEnumerator:MoveNext() end
function System.Web.Util.ObjectSet.EmptyEnumerator:Reset() end

---@class System.Web.Util.StringSet : System.Web.Util.ObjectSet
System.Web.Util.StringSet = {}
---@alias CS.System.Web.Util.StringSet System.Web.Util.StringSet
CS.System.Web.Util.StringSet = System.Web.Util.StringSet


---@class System.Web.Util.CaseInsensitiveStringSet : System.Web.Util.StringSet
System.Web.Util.CaseInsensitiveStringSet = {}
---@alias CS.System.Web.Util.CaseInsensitiveStringSet System.Web.Util.CaseInsensitiveStringSet
CS.System.Web.Util.CaseInsensitiveStringSet = System.Web.Util.CaseInsensitiveStringSet

---@return System.Web.Util.CaseInsensitiveStringSet
function System.Web.Util.CaseInsensitiveStringSet.New() end

---@class System.Web.Util.VirtualPathSet : System.Web.Util.ObjectSet
System.Web.Util.VirtualPathSet = {}
---@alias CS.System.Web.Util.VirtualPathSet System.Web.Util.VirtualPathSet
CS.System.Web.Util.VirtualPathSet = System.Web.Util.VirtualPathSet


---@class System.Web.Util.AssemblySet : System.Web.Util.ObjectSet
System.Web.Util.AssemblySet = {}
---@alias CS.System.Web.Util.AssemblySet System.Web.Util.AssemblySet
CS.System.Web.Util.AssemblySet = System.Web.Util.AssemblySet


---@class System.Web.Util.BuildProviderSet : System.Web.Util.ObjectSet
System.Web.Util.BuildProviderSet = {}
---@alias CS.System.Web.Util.BuildProviderSet System.Web.Util.BuildProviderSet
CS.System.Web.Util.BuildProviderSet = System.Web.Util.BuildProviderSet


---@class System.Web.Util.ControlSet : System.Web.Util.ObjectSet
System.Web.Util.ControlSet = {}
---@alias CS.System.Web.Util.ControlSet System.Web.Util.ControlSet
CS.System.Web.Util.ControlSet = System.Web.Util.ControlSet


---@class System.Web.Util.OrderingMethodFinder : System.Linq.Expressions.ExpressionVisitor
System.Web.Util.OrderingMethodFinder = {}
---@alias CS.System.Web.Util.OrderingMethodFinder System.Web.Util.OrderingMethodFinder
CS.System.Web.Util.OrderingMethodFinder = System.Web.Util.OrderingMethodFinder

---@return System.Web.Util.OrderingMethodFinder
function System.Web.Util.OrderingMethodFinder.New() end

---@class System.Web.Util.HttpDate : System.Object
System.Web.Util.HttpDate = {}
---@alias CS.System.Web.Util.HttpDate System.Web.Util.HttpDate
CS.System.Web.Util.HttpDate = System.Web.Util.HttpDate


---@class System.Web.Util.PathUtil : System.Object
System.Web.Util.PathUtil = {}
---@alias CS.System.Web.Util.PathUtil System.Web.Util.PathUtil
CS.System.Web.Util.PathUtil = System.Web.Util.PathUtil


---@class System.Web.Util.QueryableUtility : System.Object
System.Web.Util.QueryableUtility = {}
---@alias CS.System.Web.Util.QueryableUtility System.Web.Util.QueryableUtility
CS.System.Web.Util.QueryableUtility = System.Web.Util.QueryableUtility

---@param expression System.Linq.Expressions.Expression
---@param method string
---@return boolean
function System.Web.Util.QueryableUtility.IsQueryableMethod(expression, method) end
---@param expression System.Linq.Expressions.Expression
---@return boolean
function System.Web.Util.QueryableUtility.IsOrderingMethod(expression) end

---@class System.Web.Util.RegexUtil : System.Object
System.Web.Util.RegexUtil = {}
---@alias CS.System.Web.Util.RegexUtil System.Web.Util.RegexUtil
CS.System.Web.Util.RegexUtil = System.Web.Util.RegexUtil

---@return System.Web.Util.RegexUtil
function System.Web.Util.RegexUtil.New() end
---@param stringToMatch string
---@param pattern string
---@param regOption System.Text.RegularExpressions.RegexOptions
---@param timeoutInMillsec System.Nullable
---@return boolean
function System.Web.Util.RegexUtil.IsMatch(stringToMatch, pattern, regOption, timeoutInMillsec) end
---@param stringToMatch string
---@param pattern string
---@param regOption System.Text.RegularExpressions.RegexOptions
---@param timeoutInMillsec System.Nullable
---@return System.Text.RegularExpressions.Match
function System.Web.Util.RegexUtil.Match(stringToMatch, pattern, regOption, timeoutInMillsec) end
---@param pattern string
---@param option System.Text.RegularExpressions.RegexOptions
---@param timeoutInMillsec System.Nullable
---@return System.Text.RegularExpressions.Regex
function System.Web.Util.RegexUtil.CreateRegex(pattern, option, timeoutInMillsec) end

---@class System.Web.Util.RequestValidationSource
---@field QueryString System.Web.Util.RequestValidationSource
---@field Form System.Web.Util.RequestValidationSource
---@field Cookies System.Web.Util.RequestValidationSource
---@field Files System.Web.Util.RequestValidationSource
---@field RawUrl System.Web.Util.RequestValidationSource
---@field Path System.Web.Util.RequestValidationSource
---@field PathInfo System.Web.Util.RequestValidationSource
---@field Headers System.Web.Util.RequestValidationSource
System.Web.Util.RequestValidationSource = {}
---@alias CS.System.Web.Util.RequestValidationSource System.Web.Util.RequestValidationSource
CS.System.Web.Util.RequestValidationSource = System.Web.Util.RequestValidationSource


---@class System.Web.Util.Sec : System.Object
System.Web.Util.Sec = {}
---@alias CS.System.Web.Util.Sec System.Web.Util.Sec
CS.System.Web.Util.Sec = System.Web.Util.Sec


---@class System.Web.Util.SimpleRecyclingCache : System.Object
System.Web.Util.SimpleRecyclingCache = {}
---@alias CS.System.Web.Util.SimpleRecyclingCache System.Web.Util.SimpleRecyclingCache
CS.System.Web.Util.SimpleRecyclingCache = System.Web.Util.SimpleRecyclingCache


---@class System.Web.Util.StringUtil : System.Object
System.Web.Util.StringUtil = {}
---@alias CS.System.Web.Util.StringUtil System.Web.Util.StringUtil
CS.System.Web.Util.StringUtil = System.Web.Util.StringUtil


---@class System.Web.Util.SymbolEqualComparer : System.Object
System.Web.Util.SymbolEqualComparer = {}
---@alias CS.System.Web.Util.SymbolEqualComparer System.Web.Util.SymbolEqualComparer
CS.System.Web.Util.SymbolEqualComparer = System.Web.Util.SymbolEqualComparer


---@class System.Web.Util.SynchronizationContextMode
---@field Normal System.Web.Util.SynchronizationContextMode
---@field Legacy System.Web.Util.SynchronizationContextMode
System.Web.Util.SynchronizationContextMode = {}
---@alias CS.System.Web.Util.SynchronizationContextMode System.Web.Util.SynchronizationContextMode
CS.System.Web.Util.SynchronizationContextMode = System.Web.Util.SynchronizationContextMode


---@class System.Web.Util.VersionUtil : System.Object
---@field Framework00 System.Version
---@field Framework20 System.Version
---@field Framework35 System.Version
---@field Framework40 System.Version
---@field Framework45 System.Version
---@field Framework451 System.Version
---@field Framework452 System.Version
---@field Framework46 System.Version
---@field Framework461 System.Version
---@field Framework463 System.Version
---@field FrameworkDefault System.Version
---@field FrameworkDefaultString string
System.Web.Util.VersionUtil = {}
---@alias CS.System.Web.Util.VersionUtil System.Web.Util.VersionUtil
CS.System.Web.Util.VersionUtil = System.Web.Util.VersionUtil


---@class System.Web.Util.HResults : System.Object
System.Web.Util.HResults = {}
---@alias CS.System.Web.Util.HResults System.Web.Util.HResults
CS.System.Web.Util.HResults = System.Web.Util.HResults


---@class System.Web.Util.AltSerialization : System.Object
System.Web.Util.AltSerialization = {}
---@alias CS.System.Web.Util.AltSerialization System.Web.Util.AltSerialization
CS.System.Web.Util.AltSerialization = System.Web.Util.AltSerialization


---@class System.Web.Util.DataSourceHelper : System.Object
System.Web.Util.DataSourceHelper = {}
---@alias CS.System.Web.Util.DataSourceHelper System.Web.Util.DataSourceHelper
CS.System.Web.Util.DataSourceHelper = System.Web.Util.DataSourceHelper


---@class System.Web.Util.DataSourceResolver : System.Object
System.Web.Util.DataSourceResolver = {}
---@alias CS.System.Web.Util.DataSourceResolver System.Web.Util.DataSourceResolver
CS.System.Web.Util.DataSourceResolver = System.Web.Util.DataSourceResolver

---@param o System.Object
---@param data_member string
---@return System.Collections.IEnumerable
function System.Web.Util.DataSourceResolver.ResolveDataSource(o, data_member) end

---@class System.Web.Util.FileUtils : System.Object
System.Web.Util.FileUtils = {}
---@alias CS.System.Web.Util.FileUtils System.Web.Util.FileUtils
CS.System.Web.Util.FileUtils = System.Web.Util.FileUtils

---@return System.Web.Util.FileUtils
function System.Web.Util.FileUtils.New() end
---@param logFilePath string
---@param format string
---@param parms System.Object[]
function System.Web.Util.FileUtils.WriteLineLog(logFilePath, format, parms) end
---@param logFilePath string
---@param format string
---@param parms System.Object[]
function System.Web.Util.FileUtils.WriteLog(logFilePath, format, parms) end

---@class System.Web.Util.FileUtils.CreateTempFile : System.MulticastDelegate
System.Web.Util.FileUtils.CreateTempFile = {}
---@alias CS.System.Web.Util.FileUtils.CreateTempFile System.Web.Util.FileUtils.CreateTempFile
CS.System.Web.Util.FileUtils.CreateTempFile = System.Web.Util.FileUtils.CreateTempFile

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.Util.FileUtils.CreateTempFile
function System.Web.Util.FileUtils.CreateTempFile.New(object, method) end
---@param path string
---@return System.Object
function System.Web.Util.FileUtils.CreateTempFile:Invoke(path) end
---@param path string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.Util.FileUtils.CreateTempFile:BeginInvoke(path, callback, object) end
---@param result System.IAsyncResult
---@return System.Object
function System.Web.Util.FileUtils.CreateTempFile:EndInvoke(result) end

---@class System.Web.Util.ICalls : System.Object
System.Web.Util.ICalls = {}
---@alias CS.System.Web.Util.ICalls System.Web.Util.ICalls
CS.System.Web.Util.ICalls = System.Web.Util.ICalls

---@return string
function System.Web.Util.ICalls.GetMachineConfigPath() end
---@return string
function System.Web.Util.ICalls.GetMachineInstallDirectory() end
---@param assembly System.Reflection.Assembly
---@param out_ptr System.IntPtr
---@param out_length number
---@return boolean,System.IntPtr,number
function System.Web.Util.ICalls.GetUnmanagedResourcesPtr(assembly, out_ptr, out_length) end

---@class System.Web.Util.IWebPropertyAccessor
System.Web.Util.IWebPropertyAccessor = {}
---@alias CS.System.Web.Util.IWebPropertyAccessor System.Web.Util.IWebPropertyAccessor
CS.System.Web.Util.IWebPropertyAccessor = System.Web.Util.IWebPropertyAccessor

---@param target System.Object
---@return System.Object
function System.Web.Util.IWebPropertyAccessor:GetProperty(target) end
---@param target System.Object
---@param value System.Object
function System.Web.Util.IWebPropertyAccessor:SetProperty(target, value) end

---@class System.Web.Util.MachineKeySectionUtils : System.Object
System.Web.Util.MachineKeySectionUtils = {}
---@alias CS.System.Web.Util.MachineKeySectionUtils System.Web.Util.MachineKeySectionUtils
CS.System.Web.Util.MachineKeySectionUtils = System.Web.Util.MachineKeySectionUtils

---@param bytes System.Byte[]
---@return string
function System.Web.Util.MachineKeySectionUtils.GetHexString(bytes) end
---@param name string
---@return System.Security.Cryptography.SymmetricAlgorithm
function System.Web.Util.MachineKeySectionUtils.GetDecryptionAlgorithm(name) end
---@param section System.Web.Configuration.MachineKeySection
---@return System.Security.Cryptography.KeyedHashAlgorithm
function System.Web.Util.MachineKeySectionUtils.GetValidationAlgorithm(section) end
---@param section System.Web.Configuration.MachineKeySection
---@return System.Byte[]
function System.Web.Util.MachineKeySectionUtils.GetValidationKey(section) end
---@overload fun(section: System.Web.Configuration.MachineKeySection, encodedData: System.Byte[]) : System.Byte[]
---@param alg System.Security.Cryptography.SymmetricAlgorithm
---@param encodedData System.Byte[]
---@param offset number
---@param length number
---@return System.Byte[]
function System.Web.Util.MachineKeySectionUtils.Decrypt(alg, encodedData, offset, length) end
---@overload fun(section: System.Web.Configuration.MachineKeySection, data: System.Byte[]) : System.Byte[]
---@param alg System.Security.Cryptography.SymmetricAlgorithm
---@param data System.Byte[]
---@return System.Byte[]
function System.Web.Util.MachineKeySectionUtils.Encrypt(alg, data) end
---@param section System.Web.Configuration.MachineKeySection
---@param data System.Byte[]
---@return System.Byte[]
function System.Web.Util.MachineKeySectionUtils.Sign(section, data) end
---@param section System.Web.Configuration.MachineKeySection
---@param data System.Byte[]
---@return System.Byte[]
function System.Web.Util.MachineKeySectionUtils.Verify(section, data) end
---@param section System.Web.Configuration.MachineKeySection
---@param data System.Byte[]
---@return System.Byte[]
function System.Web.Util.MachineKeySectionUtils.EncryptSign(section, data) end
---@param section System.Web.Configuration.MachineKeySection
---@param block System.Byte[]
---@return System.Byte[]
function System.Web.Util.MachineKeySectionUtils.VerifyDecrypt(section, block) end

---@class System.Web.Util.RequestValidator : System.Object
---@field Current System.Web.Util.RequestValidator
System.Web.Util.RequestValidator = {}
---@alias CS.System.Web.Util.RequestValidator System.Web.Util.RequestValidator
CS.System.Web.Util.RequestValidator = System.Web.Util.RequestValidator

---@return System.Web.Util.RequestValidator
function System.Web.Util.RequestValidator.New() end
---@param context System.Web.HttpContext
---@param value string
---@param requestValidationSource System.Web.Util.RequestValidationSource
---@param collectionKey string
---@param out_validationFailureIndex number
---@return boolean,number
function System.Web.Util.RequestValidator:InvokeIsValidRequestString(context, value, requestValidationSource, collectionKey, out_validationFailureIndex) end

---@class System.Web.Util.RuntimeHelpers : System.Object
---@field CaseInsensitive boolean
---@field DebuggingEnabled boolean
---@field StringEqualityComparer System.Collections.Generic.IEqualityComparer
---@field StringEqualityComparerCulture System.Collections.Generic.IEqualityComparer
---@field IsUncShare boolean
---@field MonoVersion string
---@field RunningOnWindows boolean
---@field StringComparison System.StringComparison
---@field StringComparisonCulture System.StringComparison
System.Web.Util.RuntimeHelpers = {}
---@alias CS.System.Web.Util.RuntimeHelpers System.Web.Util.RuntimeHelpers
CS.System.Web.Util.RuntimeHelpers = System.Web.Util.RuntimeHelpers


---@class System.Web.Util.SearchPattern : System.Object
System.Web.Util.SearchPattern = {}
---@alias CS.System.Web.Util.SearchPattern System.Web.Util.SearchPattern
CS.System.Web.Util.SearchPattern = System.Web.Util.SearchPattern

---@overload fun(pattern: string) : System.Web.Util.SearchPattern
---@param pattern string
---@param ignore boolean
---@return System.Web.Util.SearchPattern
function System.Web.Util.SearchPattern.New(pattern, ignore) end
---@param pattern string
---@param ignore boolean
function System.Web.Util.SearchPattern:SetPattern(pattern, ignore) end
---@param text string
---@return boolean
function System.Web.Util.SearchPattern:IsMatch(text) end

---@class System.Web.Util.SearchPattern.Op : System.Object
---@field Code System.Web.Util.SearchPattern.OpCode
---@field Argument string
---@field Next System.Web.Util.SearchPattern.Op
System.Web.Util.SearchPattern.Op = {}
---@alias CS.System.Web.Util.SearchPattern.Op System.Web.Util.SearchPattern.Op
CS.System.Web.Util.SearchPattern.Op = System.Web.Util.SearchPattern.Op

---@param code System.Web.Util.SearchPattern.OpCode
---@return System.Web.Util.SearchPattern.Op
function System.Web.Util.SearchPattern.Op.New(code) end

---@class System.Web.Util.SearchPattern.OpCode
---@field ExactString System.Web.Util.SearchPattern.OpCode
---@field AnyChar System.Web.Util.SearchPattern.OpCode
---@field AnyString System.Web.Util.SearchPattern.OpCode
---@field End System.Web.Util.SearchPattern.OpCode
---@field True System.Web.Util.SearchPattern.OpCode
System.Web.Util.SearchPattern.OpCode = {}
---@alias CS.System.Web.Util.SearchPattern.OpCode System.Web.Util.SearchPattern.OpCode
CS.System.Web.Util.SearchPattern.OpCode = System.Web.Util.SearchPattern.OpCode


---@class System.Web.Util.SecureHashCodeProvider : System.Object
---@field Default System.Web.Util.SecureHashCodeProvider
---@field DefaultInvariant System.Web.Util.SecureHashCodeProvider
System.Web.Util.SecureHashCodeProvider = {}
---@alias CS.System.Web.Util.SecureHashCodeProvider System.Web.Util.SecureHashCodeProvider
CS.System.Web.Util.SecureHashCodeProvider = System.Web.Util.SecureHashCodeProvider

---@overload fun() : System.Web.Util.SecureHashCodeProvider
---@param culture System.Globalization.CultureInfo
---@return System.Web.Util.SecureHashCodeProvider
function System.Web.Util.SecureHashCodeProvider.New(culture) end
---@param obj System.Object
---@return number
function System.Web.Util.SecureHashCodeProvider:GetHashCode(obj) end

---@class System.Web.Util.SerializationHelper : System.Object
System.Web.Util.SerializationHelper = {}
---@alias CS.System.Web.Util.SerializationHelper System.Web.Util.SerializationHelper
CS.System.Web.Util.SerializationHelper = System.Web.Util.SerializationHelper

---@return System.Web.Util.SerializationHelper
function System.Web.Util.SerializationHelper.New() end

---@class System.Web.Util.SimpleWebObjectFactory : System.Object
System.Web.Util.SimpleWebObjectFactory = {}
---@alias CS.System.Web.Util.SimpleWebObjectFactory System.Web.Util.SimpleWebObjectFactory
CS.System.Web.Util.SimpleWebObjectFactory = System.Web.Util.SimpleWebObjectFactory

---@param type System.Type
---@return System.Web.Util.SimpleWebObjectFactory
function System.Web.Util.SimpleWebObjectFactory.New(type) end
---@return System.Object
function System.Web.Util.SimpleWebObjectFactory:CreateInstance() end

---@class System.Web.Util.StrUtils : System.Object
System.Web.Util.StrUtils = {}
---@alias CS.System.Web.Util.StrUtils System.Web.Util.StrUtils
CS.System.Web.Util.StrUtils = System.Web.Util.StrUtils

---@overload fun(str1: string, str2: string) : boolean
---@param str1 string
---@param str2 string
---@param ignore_case boolean
---@return boolean
function System.Web.Util.StrUtils.StartsWith(str1, str2, ignore_case) end
---@overload fun(str1: string, str2: string) : boolean
---@param str1 string
---@param str2 string
---@param ignore_case boolean
---@return boolean
function System.Web.Util.StrUtils.EndsWith(str1, str2, ignore_case) end
---@param attributeValue string
---@return string
function System.Web.Util.StrUtils.EscapeQuotesAndBackslashes(attributeValue) end
---@param value string
---@return boolean
function System.Web.Util.StrUtils.IsNullOrEmpty(value) end
---@param value string
---@param separator System.Char[]
---@return System.String[]
function System.Web.Util.StrUtils.SplitRemoveEmptyEntries(value, separator) end

---@class System.Web.Util.TimeUtil : System.Object
System.Web.Util.TimeUtil = {}
---@alias CS.System.Web.Util.TimeUtil System.Web.Util.TimeUtil
CS.System.Web.Util.TimeUtil = System.Web.Util.TimeUtil


---@class System.Web.Util.TransactedCallback : System.MulticastDelegate
System.Web.Util.TransactedCallback = {}
---@alias CS.System.Web.Util.TransactedCallback System.Web.Util.TransactedCallback
CS.System.Web.Util.TransactedCallback = System.Web.Util.TransactedCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.Util.TransactedCallback
function System.Web.Util.TransactedCallback.New(object, method) end
function System.Web.Util.TransactedCallback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.Util.TransactedCallback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function System.Web.Util.TransactedCallback:EndInvoke(result) end

---@class System.Web.Util.Transactions : System.Object
System.Web.Util.Transactions = {}
---@alias CS.System.Web.Util.Transactions System.Web.Util.Transactions
CS.System.Web.Util.Transactions = System.Web.Util.Transactions

---@return System.Web.Util.Transactions
function System.Web.Util.Transactions.New() end
---@overload fun(callback: System.Web.Util.TransactedCallback, mode: System.EnterpriseServices.TransactionOption)
---@param callback System.Web.Util.TransactedCallback
---@param mode System.EnterpriseServices.TransactionOption
---@param ref_transactionAborted boolean
---@return ,boolean
function System.Web.Util.Transactions.InvokeTransacted(callback, mode, ref_transactionAborted) end

---@class System.Web.Util.UrlUtils : System.Object
System.Web.Util.UrlUtils = {}
---@alias CS.System.Web.Util.UrlUtils System.Web.Util.UrlUtils
CS.System.Web.Util.UrlUtils = System.Web.Util.UrlUtils

---@return System.Web.Util.UrlUtils
function System.Web.Util.UrlUtils.New() end
---@param id string
---@param path string
---@return string
function System.Web.Util.UrlUtils.InsertSessionId(id, path) end
---@param path string
---@return string
function System.Web.Util.UrlUtils.GetSessionId(path) end
---@param path string
---@return boolean
function System.Web.Util.UrlUtils.HasSessionId(path) end
---@param base_path string
---@param file_path string
---@return string
function System.Web.Util.UrlUtils.RemoveSessionId(base_path, file_path) end
---@param basePath string
---@param relPath string
---@return string
function System.Web.Util.UrlUtils.Combine(basePath, relPath) end
---@param path string
---@return string
function System.Web.Util.UrlUtils.Canonic(path) end
---@param url string
---@return string
function System.Web.Util.UrlUtils.GetDirectory(url) end
---@param input string
---@return string
function System.Web.Util.UrlUtils.RemoveDoubleSlashes(input) end
---@param url string
---@return string
function System.Web.Util.UrlUtils.GetFile(url) end
---@param path string
---@return boolean
function System.Web.Util.UrlUtils.IsRooted(path) end
---@param path string
---@return boolean
function System.Web.Util.UrlUtils.IsRelativeUrl(path) end
---@param path string
---@return string
function System.Web.Util.UrlUtils.ResolveVirtualPathFromAppAbsolute(path) end
---@param path string
---@return string
function System.Web.Util.UrlUtils.ResolvePhysicalPathFromAppAbsolute(path) end

---@class System.Web.Util.WebEncoding : System.Object
---@field FileEncoding System.Text.Encoding
---@field ResponseEncoding System.Text.Encoding
---@field RequestEncoding System.Text.Encoding
System.Web.Util.WebEncoding = {}
---@alias CS.System.Web.Util.WebEncoding System.Web.Util.WebEncoding
CS.System.Web.Util.WebEncoding = System.Web.Util.WebEncoding

---@return System.Web.Util.WebEncoding
function System.Web.Util.WebEncoding.New() end

---@class System.Web.Util.WebTrace : System.Object
---@field Context string
---@field StackTrace boolean
System.Web.Util.WebTrace = {}
---@alias CS.System.Web.Util.WebTrace System.Web.Util.WebTrace
CS.System.Web.Util.WebTrace = System.Web.Util.WebTrace

---@return System.Web.Util.WebTrace
function System.Web.Util.WebTrace.New() end
---@param context string
function System.Web.Util.WebTrace.PushContext(context) end
function System.Web.Util.WebTrace.PopContext() end
---@overload fun(msg: string)
---@overload fun(msg: string, arg: System.Object)
---@overload fun(msg: string, arg1: System.Object, arg2: System.Object)
---@overload fun(msg: string, arg1: System.Object, arg2: System.Object, arg3: System.Object)
---@param msg string
---@param args System.Object[]
function System.Web.Util.WebTrace.WriteLine(msg, args) end

---@class System.Web.Util.WorkItem : System.Object
System.Web.Util.WorkItem = {}
---@alias CS.System.Web.Util.WorkItem System.Web.Util.WorkItem
CS.System.Web.Util.WorkItem = System.Web.Util.WorkItem

---@return System.Web.Util.WorkItem
function System.Web.Util.WorkItem.New() end
---@param callback System.Web.Util.WorkItemCallback
function System.Web.Util.WorkItem.Post(callback) end

---@class System.Web.Util.WorkItemCallback : System.MulticastDelegate
System.Web.Util.WorkItemCallback = {}
---@alias CS.System.Web.Util.WorkItemCallback System.Web.Util.WorkItemCallback
CS.System.Web.Util.WorkItemCallback = System.Web.Util.WorkItemCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.Util.WorkItemCallback
function System.Web.Util.WorkItemCallback.New(object, method) end
function System.Web.Util.WorkItemCallback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.Util.WorkItemCallback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function System.Web.Util.WorkItemCallback:EndInvoke(result) end

---@class System.Web.UI.ClientIDMode
---@field Inherit System.Web.UI.ClientIDMode
---@field AutoID System.Web.UI.ClientIDMode
---@field Predictable System.Web.UI.ClientIDMode
---@field Static System.Web.UI.ClientIDMode
System.Web.UI.ClientIDMode = {}
---@alias CS.System.Web.UI.ClientIDMode System.Web.UI.ClientIDMode
CS.System.Web.UI.ClientIDMode = System.Web.UI.ClientIDMode


---@class System.Web.UI.ConflictOptions
---@field OverwriteChanges System.Web.UI.ConflictOptions
---@field CompareAllValues System.Web.UI.ConflictOptions
System.Web.UI.ConflictOptions = {}
---@alias CS.System.Web.UI.ConflictOptions System.Web.UI.ConflictOptions
CS.System.Web.UI.ConflictOptions = System.Web.UI.ConflictOptions


---@class System.Web.UI.ConstructorNeedsTagAttribute : System.Attribute
---@field NeedsTag boolean
System.Web.UI.ConstructorNeedsTagAttribute = {}
---@alias CS.System.Web.UI.ConstructorNeedsTagAttribute System.Web.UI.ConstructorNeedsTagAttribute
CS.System.Web.UI.ConstructorNeedsTagAttribute = System.Web.UI.ConstructorNeedsTagAttribute

---@overload fun() : System.Web.UI.ConstructorNeedsTagAttribute
---@param needsTag boolean
---@return System.Web.UI.ConstructorNeedsTagAttribute
function System.Web.UI.ConstructorNeedsTagAttribute.New(needsTag) end

---@class System.Web.UI.ControlBuilderAttribute : System.Attribute
---@field Default System.Web.UI.ControlBuilderAttribute
---@field BuilderType System.Type
System.Web.UI.ControlBuilderAttribute = {}
---@alias CS.System.Web.UI.ControlBuilderAttribute System.Web.UI.ControlBuilderAttribute
CS.System.Web.UI.ControlBuilderAttribute = System.Web.UI.ControlBuilderAttribute

---@param builderType System.Type
---@return System.Web.UI.ControlBuilderAttribute
function System.Web.UI.ControlBuilderAttribute.New(builderType) end
---@return number
function System.Web.UI.ControlBuilderAttribute:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.Web.UI.ControlBuilderAttribute:Equals(obj) end
---@return boolean
function System.Web.UI.ControlBuilderAttribute:IsDefaultAttribute() end

---@class System.Web.UI.CssClassPropertyAttribute : System.Attribute
System.Web.UI.CssClassPropertyAttribute = {}
---@alias CS.System.Web.UI.CssClassPropertyAttribute System.Web.UI.CssClassPropertyAttribute
CS.System.Web.UI.CssClassPropertyAttribute = System.Web.UI.CssClassPropertyAttribute

---@return System.Web.UI.CssClassPropertyAttribute
function System.Web.UI.CssClassPropertyAttribute.New() end

---@class System.Web.UI.DataBindingHandlerAttribute : System.Attribute
---@field Default System.Web.UI.DataBindingHandlerAttribute
---@field HandlerTypeName string
System.Web.UI.DataBindingHandlerAttribute = {}
---@alias CS.System.Web.UI.DataBindingHandlerAttribute System.Web.UI.DataBindingHandlerAttribute
CS.System.Web.UI.DataBindingHandlerAttribute = System.Web.UI.DataBindingHandlerAttribute

---@overload fun() : System.Web.UI.DataBindingHandlerAttribute
---@overload fun(type: System.Type) : System.Web.UI.DataBindingHandlerAttribute
---@param typeName string
---@return System.Web.UI.DataBindingHandlerAttribute
function System.Web.UI.DataBindingHandlerAttribute.New(typeName) end
---@param obj System.Object
---@return boolean
function System.Web.UI.DataBindingHandlerAttribute:Equals(obj) end
---@return number
function System.Web.UI.DataBindingHandlerAttribute:GetHashCode() end

---@class System.Web.UI.DataKeyPropertyAttribute : System.Attribute
---@field Name string
System.Web.UI.DataKeyPropertyAttribute = {}
---@alias CS.System.Web.UI.DataKeyPropertyAttribute System.Web.UI.DataKeyPropertyAttribute
CS.System.Web.UI.DataKeyPropertyAttribute = System.Web.UI.DataKeyPropertyAttribute

---@param name string
---@return System.Web.UI.DataKeyPropertyAttribute
function System.Web.UI.DataKeyPropertyAttribute.New(name) end
---@param obj System.Object
---@return boolean
function System.Web.UI.DataKeyPropertyAttribute:Equals(obj) end
---@return number
function System.Web.UI.DataKeyPropertyAttribute:GetHashCode() end

---@class System.Web.UI.DataSourceCacheExpiry
---@field Absolute System.Web.UI.DataSourceCacheExpiry
---@field Sliding System.Web.UI.DataSourceCacheExpiry
System.Web.UI.DataSourceCacheExpiry = {}
---@alias CS.System.Web.UI.DataSourceCacheExpiry System.Web.UI.DataSourceCacheExpiry
CS.System.Web.UI.DataSourceCacheExpiry = System.Web.UI.DataSourceCacheExpiry


---@class System.Web.UI.DataSourceCapabilities
---@field None System.Web.UI.DataSourceCapabilities
---@field Sort System.Web.UI.DataSourceCapabilities
---@field Page System.Web.UI.DataSourceCapabilities
---@field RetrieveTotalRowCount System.Web.UI.DataSourceCapabilities
System.Web.UI.DataSourceCapabilities = {}
---@alias CS.System.Web.UI.DataSourceCapabilities System.Web.UI.DataSourceCapabilities
CS.System.Web.UI.DataSourceCapabilities = System.Web.UI.DataSourceCapabilities


---@class System.Web.UI.DataSourceControlBuilder : System.Web.UI.ControlBuilder
System.Web.UI.DataSourceControlBuilder = {}
---@alias CS.System.Web.UI.DataSourceControlBuilder System.Web.UI.DataSourceControlBuilder
CS.System.Web.UI.DataSourceControlBuilder = System.Web.UI.DataSourceControlBuilder

---@return System.Web.UI.DataSourceControlBuilder
function System.Web.UI.DataSourceControlBuilder.New() end
---@return boolean
function System.Web.UI.DataSourceControlBuilder:AllowWhitespaceLiterals() end

---@class System.Web.UI.DataSourceOperation
---@field Delete System.Web.UI.DataSourceOperation
---@field Insert System.Web.UI.DataSourceOperation
---@field Select System.Web.UI.DataSourceOperation
---@field Update System.Web.UI.DataSourceOperation
---@field SelectCount System.Web.UI.DataSourceOperation
System.Web.UI.DataSourceOperation = {}
---@alias CS.System.Web.UI.DataSourceOperation System.Web.UI.DataSourceOperation
CS.System.Web.UI.DataSourceOperation = System.Web.UI.DataSourceOperation


---@class System.Web.UI.EmptyControlCollection : System.Web.UI.ControlCollection
System.Web.UI.EmptyControlCollection = {}
---@alias CS.System.Web.UI.EmptyControlCollection System.Web.UI.EmptyControlCollection
CS.System.Web.UI.EmptyControlCollection = System.Web.UI.EmptyControlCollection

---@param owner System.Web.UI.Control
---@return System.Web.UI.EmptyControlCollection
function System.Web.UI.EmptyControlCollection.New(owner) end
---@param child System.Web.UI.Control
function System.Web.UI.EmptyControlCollection:Add(child) end
---@param index number
---@param child System.Web.UI.Control
function System.Web.UI.EmptyControlCollection:AddAt(index, child) end

---@class System.Web.UI.EventEntry : System.Object
---@field HandlerMethodName string
---@field HandlerType System.Type
---@field Name string
System.Web.UI.EventEntry = {}
---@alias CS.System.Web.UI.EventEntry System.Web.UI.EventEntry
CS.System.Web.UI.EventEntry = System.Web.UI.EventEntry

---@return System.Web.UI.EventEntry
function System.Web.UI.EventEntry.New() end

---@class System.Web.UI.FileLevelControlBuilderAttribute : System.Attribute
---@field Default System.Web.UI.FileLevelControlBuilderAttribute
---@field BuilderType System.Type
System.Web.UI.FileLevelControlBuilderAttribute = {}
---@alias CS.System.Web.UI.FileLevelControlBuilderAttribute System.Web.UI.FileLevelControlBuilderAttribute
CS.System.Web.UI.FileLevelControlBuilderAttribute = System.Web.UI.FileLevelControlBuilderAttribute

---@param builderType System.Type
---@return System.Web.UI.FileLevelControlBuilderAttribute
function System.Web.UI.FileLevelControlBuilderAttribute.New(builderType) end
---@return number
function System.Web.UI.FileLevelControlBuilderAttribute:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.Web.UI.FileLevelControlBuilderAttribute:Equals(obj) end
---@return boolean
function System.Web.UI.FileLevelControlBuilderAttribute:IsDefaultAttribute() end

---@class System.Web.UI.FilterableAttribute : System.Attribute
---@field Yes System.Web.UI.FilterableAttribute
---@field No System.Web.UI.FilterableAttribute
---@field Default System.Web.UI.FilterableAttribute
---@field Filterable boolean
System.Web.UI.FilterableAttribute = {}
---@alias CS.System.Web.UI.FilterableAttribute System.Web.UI.FilterableAttribute
CS.System.Web.UI.FilterableAttribute = System.Web.UI.FilterableAttribute

---@param filterable boolean
---@return System.Web.UI.FilterableAttribute
function System.Web.UI.FilterableAttribute.New(filterable) end
---@param instance System.Object
---@return boolean
function System.Web.UI.FilterableAttribute.IsObjectFilterable(instance) end
---@param propertyDescriptor System.ComponentModel.PropertyDescriptor
---@return boolean
function System.Web.UI.FilterableAttribute.IsPropertyFilterable(propertyDescriptor) end
---@param type System.Type
---@return boolean
function System.Web.UI.FilterableAttribute.IsTypeFilterable(type) end
---@param obj System.Object
---@return boolean
function System.Web.UI.FilterableAttribute:Equals(obj) end
---@return number
function System.Web.UI.FilterableAttribute:GetHashCode() end
---@return boolean
function System.Web.UI.FilterableAttribute:IsDefaultAttribute() end

---@class System.Web.UI.HtmlTextWriterAttribute
---@field Accesskey System.Web.UI.HtmlTextWriterAttribute
---@field Align System.Web.UI.HtmlTextWriterAttribute
---@field Alt System.Web.UI.HtmlTextWriterAttribute
---@field Background System.Web.UI.HtmlTextWriterAttribute
---@field Bgcolor System.Web.UI.HtmlTextWriterAttribute
---@field Border System.Web.UI.HtmlTextWriterAttribute
---@field Bordercolor System.Web.UI.HtmlTextWriterAttribute
---@field Cellpadding System.Web.UI.HtmlTextWriterAttribute
---@field Cellspacing System.Web.UI.HtmlTextWriterAttribute
---@field Checked System.Web.UI.HtmlTextWriterAttribute
---@field Class System.Web.UI.HtmlTextWriterAttribute
---@field Cols System.Web.UI.HtmlTextWriterAttribute
---@field Colspan System.Web.UI.HtmlTextWriterAttribute
---@field Disabled System.Web.UI.HtmlTextWriterAttribute
---@field For System.Web.UI.HtmlTextWriterAttribute
---@field Height System.Web.UI.HtmlTextWriterAttribute
---@field Href System.Web.UI.HtmlTextWriterAttribute
---@field Id System.Web.UI.HtmlTextWriterAttribute
---@field Maxlength System.Web.UI.HtmlTextWriterAttribute
---@field Multiple System.Web.UI.HtmlTextWriterAttribute
---@field Name System.Web.UI.HtmlTextWriterAttribute
---@field Nowrap System.Web.UI.HtmlTextWriterAttribute
---@field Onchange System.Web.UI.HtmlTextWriterAttribute
---@field Onclick System.Web.UI.HtmlTextWriterAttribute
---@field ReadOnly System.Web.UI.HtmlTextWriterAttribute
---@field Rows System.Web.UI.HtmlTextWriterAttribute
---@field Rowspan System.Web.UI.HtmlTextWriterAttribute
---@field Rules System.Web.UI.HtmlTextWriterAttribute
---@field Selected System.Web.UI.HtmlTextWriterAttribute
---@field Size System.Web.UI.HtmlTextWriterAttribute
---@field Src System.Web.UI.HtmlTextWriterAttribute
---@field Style System.Web.UI.HtmlTextWriterAttribute
---@field Tabindex System.Web.UI.HtmlTextWriterAttribute
---@field Target System.Web.UI.HtmlTextWriterAttribute
---@field Title System.Web.UI.HtmlTextWriterAttribute
---@field Type System.Web.UI.HtmlTextWriterAttribute
---@field Valign System.Web.UI.HtmlTextWriterAttribute
---@field Value System.Web.UI.HtmlTextWriterAttribute
---@field Width System.Web.UI.HtmlTextWriterAttribute
---@field Wrap System.Web.UI.HtmlTextWriterAttribute
---@field Abbr System.Web.UI.HtmlTextWriterAttribute
---@field AutoComplete System.Web.UI.HtmlTextWriterAttribute
---@field Axis System.Web.UI.HtmlTextWriterAttribute
---@field Content System.Web.UI.HtmlTextWriterAttribute
---@field Coords System.Web.UI.HtmlTextWriterAttribute
---@field DesignerRegion System.Web.UI.HtmlTextWriterAttribute
---@field Dir System.Web.UI.HtmlTextWriterAttribute
---@field Headers System.Web.UI.HtmlTextWriterAttribute
---@field Longdesc System.Web.UI.HtmlTextWriterAttribute
---@field Rel System.Web.UI.HtmlTextWriterAttribute
---@field Scope System.Web.UI.HtmlTextWriterAttribute
---@field Shape System.Web.UI.HtmlTextWriterAttribute
---@field Usemap System.Web.UI.HtmlTextWriterAttribute
---@field VCardName System.Web.UI.HtmlTextWriterAttribute
System.Web.UI.HtmlTextWriterAttribute = {}
---@alias CS.System.Web.UI.HtmlTextWriterAttribute System.Web.UI.HtmlTextWriterAttribute
CS.System.Web.UI.HtmlTextWriterAttribute = System.Web.UI.HtmlTextWriterAttribute


---@class System.Web.UI.HtmlTextWriterStyle
---@field BackgroundColor System.Web.UI.HtmlTextWriterStyle
---@field BackgroundImage System.Web.UI.HtmlTextWriterStyle
---@field BorderCollapse System.Web.UI.HtmlTextWriterStyle
---@field BorderColor System.Web.UI.HtmlTextWriterStyle
---@field BorderStyle System.Web.UI.HtmlTextWriterStyle
---@field BorderWidth System.Web.UI.HtmlTextWriterStyle
---@field Color System.Web.UI.HtmlTextWriterStyle
---@field FontFamily System.Web.UI.HtmlTextWriterStyle
---@field FontSize System.Web.UI.HtmlTextWriterStyle
---@field FontStyle System.Web.UI.HtmlTextWriterStyle
---@field FontWeight System.Web.UI.HtmlTextWriterStyle
---@field Height System.Web.UI.HtmlTextWriterStyle
---@field TextDecoration System.Web.UI.HtmlTextWriterStyle
---@field Width System.Web.UI.HtmlTextWriterStyle
---@field ListStyleImage System.Web.UI.HtmlTextWriterStyle
---@field ListStyleType System.Web.UI.HtmlTextWriterStyle
---@field Cursor System.Web.UI.HtmlTextWriterStyle
---@field Direction System.Web.UI.HtmlTextWriterStyle
---@field Display System.Web.UI.HtmlTextWriterStyle
---@field Filter System.Web.UI.HtmlTextWriterStyle
---@field FontVariant System.Web.UI.HtmlTextWriterStyle
---@field Left System.Web.UI.HtmlTextWriterStyle
---@field Margin System.Web.UI.HtmlTextWriterStyle
---@field MarginBottom System.Web.UI.HtmlTextWriterStyle
---@field MarginLeft System.Web.UI.HtmlTextWriterStyle
---@field MarginRight System.Web.UI.HtmlTextWriterStyle
---@field MarginTop System.Web.UI.HtmlTextWriterStyle
---@field Overflow System.Web.UI.HtmlTextWriterStyle
---@field OverflowX System.Web.UI.HtmlTextWriterStyle
---@field OverflowY System.Web.UI.HtmlTextWriterStyle
---@field Padding System.Web.UI.HtmlTextWriterStyle
---@field PaddingBottom System.Web.UI.HtmlTextWriterStyle
---@field PaddingLeft System.Web.UI.HtmlTextWriterStyle
---@field PaddingRight System.Web.UI.HtmlTextWriterStyle
---@field PaddingTop System.Web.UI.HtmlTextWriterStyle
---@field Position System.Web.UI.HtmlTextWriterStyle
---@field TextAlign System.Web.UI.HtmlTextWriterStyle
---@field VerticalAlign System.Web.UI.HtmlTextWriterStyle
---@field TextOverflow System.Web.UI.HtmlTextWriterStyle
---@field Top System.Web.UI.HtmlTextWriterStyle
---@field Visibility System.Web.UI.HtmlTextWriterStyle
---@field WhiteSpace System.Web.UI.HtmlTextWriterStyle
---@field ZIndex System.Web.UI.HtmlTextWriterStyle
System.Web.UI.HtmlTextWriterStyle = {}
---@alias CS.System.Web.UI.HtmlTextWriterStyle System.Web.UI.HtmlTextWriterStyle
CS.System.Web.UI.HtmlTextWriterStyle = System.Web.UI.HtmlTextWriterStyle


---@class System.Web.UI.HtmlTextWriterTag
---@field Unknown System.Web.UI.HtmlTextWriterTag
---@field A System.Web.UI.HtmlTextWriterTag
---@field Acronym System.Web.UI.HtmlTextWriterTag
---@field Address System.Web.UI.HtmlTextWriterTag
---@field Area System.Web.UI.HtmlTextWriterTag
---@field B System.Web.UI.HtmlTextWriterTag
---@field Base System.Web.UI.HtmlTextWriterTag
---@field Basefont System.Web.UI.HtmlTextWriterTag
---@field Bdo System.Web.UI.HtmlTextWriterTag
---@field Bgsound System.Web.UI.HtmlTextWriterTag
---@field Big System.Web.UI.HtmlTextWriterTag
---@field Blockquote System.Web.UI.HtmlTextWriterTag
---@field Body System.Web.UI.HtmlTextWriterTag
---@field Br System.Web.UI.HtmlTextWriterTag
---@field Button System.Web.UI.HtmlTextWriterTag
---@field Caption System.Web.UI.HtmlTextWriterTag
---@field Center System.Web.UI.HtmlTextWriterTag
---@field Cite System.Web.UI.HtmlTextWriterTag
---@field Code System.Web.UI.HtmlTextWriterTag
---@field Col System.Web.UI.HtmlTextWriterTag
---@field Colgroup System.Web.UI.HtmlTextWriterTag
---@field Dd System.Web.UI.HtmlTextWriterTag
---@field Del System.Web.UI.HtmlTextWriterTag
---@field Dfn System.Web.UI.HtmlTextWriterTag
---@field Dir System.Web.UI.HtmlTextWriterTag
---@field Div System.Web.UI.HtmlTextWriterTag
---@field Dl System.Web.UI.HtmlTextWriterTag
---@field Dt System.Web.UI.HtmlTextWriterTag
---@field Em System.Web.UI.HtmlTextWriterTag
---@field Embed System.Web.UI.HtmlTextWriterTag
---@field Fieldset System.Web.UI.HtmlTextWriterTag
---@field Font System.Web.UI.HtmlTextWriterTag
---@field Form System.Web.UI.HtmlTextWriterTag
---@field Frame System.Web.UI.HtmlTextWriterTag
---@field Frameset System.Web.UI.HtmlTextWriterTag
---@field H1 System.Web.UI.HtmlTextWriterTag
---@field H2 System.Web.UI.HtmlTextWriterTag
---@field H3 System.Web.UI.HtmlTextWriterTag
---@field H4 System.Web.UI.HtmlTextWriterTag
---@field H5 System.Web.UI.HtmlTextWriterTag
---@field H6 System.Web.UI.HtmlTextWriterTag
---@field Head System.Web.UI.HtmlTextWriterTag
---@field Hr System.Web.UI.HtmlTextWriterTag
---@field Html System.Web.UI.HtmlTextWriterTag
---@field I System.Web.UI.HtmlTextWriterTag
---@field Iframe System.Web.UI.HtmlTextWriterTag
---@field Img System.Web.UI.HtmlTextWriterTag
---@field Input System.Web.UI.HtmlTextWriterTag
---@field Ins System.Web.UI.HtmlTextWriterTag
---@field Isindex System.Web.UI.HtmlTextWriterTag
---@field Kbd System.Web.UI.HtmlTextWriterTag
---@field Label System.Web.UI.HtmlTextWriterTag
---@field Legend System.Web.UI.HtmlTextWriterTag
---@field Li System.Web.UI.HtmlTextWriterTag
---@field Link System.Web.UI.HtmlTextWriterTag
---@field Map System.Web.UI.HtmlTextWriterTag
---@field Marquee System.Web.UI.HtmlTextWriterTag
---@field Menu System.Web.UI.HtmlTextWriterTag
---@field Meta System.Web.UI.HtmlTextWriterTag
---@field Nobr System.Web.UI.HtmlTextWriterTag
---@field Noframes System.Web.UI.HtmlTextWriterTag
---@field Noscript System.Web.UI.HtmlTextWriterTag
---@field Object System.Web.UI.HtmlTextWriterTag
---@field Ol System.Web.UI.HtmlTextWriterTag
---@field Option System.Web.UI.HtmlTextWriterTag
---@field P System.Web.UI.HtmlTextWriterTag
---@field Param System.Web.UI.HtmlTextWriterTag
---@field Pre System.Web.UI.HtmlTextWriterTag
---@field Q System.Web.UI.HtmlTextWriterTag
---@field Rt System.Web.UI.HtmlTextWriterTag
---@field Ruby System.Web.UI.HtmlTextWriterTag
---@field S System.Web.UI.HtmlTextWriterTag
---@field Samp System.Web.UI.HtmlTextWriterTag
---@field Script System.Web.UI.HtmlTextWriterTag
---@field Select System.Web.UI.HtmlTextWriterTag
---@field Small System.Web.UI.HtmlTextWriterTag
---@field Span System.Web.UI.HtmlTextWriterTag
---@field Strike System.Web.UI.HtmlTextWriterTag
---@field Strong System.Web.UI.HtmlTextWriterTag
---@field Style System.Web.UI.HtmlTextWriterTag
---@field Sub System.Web.UI.HtmlTextWriterTag
---@field Sup System.Web.UI.HtmlTextWriterTag
---@field Table System.Web.UI.HtmlTextWriterTag
---@field Tbody System.Web.UI.HtmlTextWriterTag
---@field Td System.Web.UI.HtmlTextWriterTag
---@field Textarea System.Web.UI.HtmlTextWriterTag
---@field Tfoot System.Web.UI.HtmlTextWriterTag
---@field Th System.Web.UI.HtmlTextWriterTag
---@field Thead System.Web.UI.HtmlTextWriterTag
---@field Title System.Web.UI.HtmlTextWriterTag
---@field Tr System.Web.UI.HtmlTextWriterTag
---@field Tt System.Web.UI.HtmlTextWriterTag
---@field U System.Web.UI.HtmlTextWriterTag
---@field Ul System.Web.UI.HtmlTextWriterTag
---@field Var System.Web.UI.HtmlTextWriterTag
---@field Wbr System.Web.UI.HtmlTextWriterTag
---@field Xml System.Web.UI.HtmlTextWriterTag
System.Web.UI.HtmlTextWriterTag = {}
---@alias CS.System.Web.UI.HtmlTextWriterTag System.Web.UI.HtmlTextWriterTag
CS.System.Web.UI.HtmlTextWriterTag = System.Web.UI.HtmlTextWriterTag


---@class System.Web.UI.IAttributeAccessor
System.Web.UI.IAttributeAccessor = {}
---@alias CS.System.Web.UI.IAttributeAccessor System.Web.UI.IAttributeAccessor
CS.System.Web.UI.IAttributeAccessor = System.Web.UI.IAttributeAccessor

---@param key string
---@return string
function System.Web.UI.IAttributeAccessor:GetAttribute(key) end
---@param key string
---@param value string
function System.Web.UI.IAttributeAccessor:SetAttribute(key, value) end

---@class System.Web.UI.IAutoFieldGenerator
System.Web.UI.IAutoFieldGenerator = {}
---@alias CS.System.Web.UI.IAutoFieldGenerator System.Web.UI.IAutoFieldGenerator
CS.System.Web.UI.IAutoFieldGenerator = System.Web.UI.IAutoFieldGenerator

---@param control System.Web.UI.Control
---@return System.Collections.ICollection
function System.Web.UI.IAutoFieldGenerator:GenerateFields(control) end

---@class System.Web.UI.IBindableControl
System.Web.UI.IBindableControl = {}
---@alias CS.System.Web.UI.IBindableControl System.Web.UI.IBindableControl
CS.System.Web.UI.IBindableControl = System.Web.UI.IBindableControl

---@param dictionary System.Collections.Specialized.IOrderedDictionary
function System.Web.UI.IBindableControl:ExtractValues(dictionary) end

---@class System.Web.UI.IBindableTemplate
System.Web.UI.IBindableTemplate = {}
---@alias CS.System.Web.UI.IBindableTemplate System.Web.UI.IBindableTemplate
CS.System.Web.UI.IBindableTemplate = System.Web.UI.IBindableTemplate

---@param container System.Web.UI.Control
---@return System.Collections.Specialized.IOrderedDictionary
function System.Web.UI.IBindableTemplate:ExtractValues(container) end

---@class System.Web.UI.ICallbackEventHandler
System.Web.UI.ICallbackEventHandler = {}
---@alias CS.System.Web.UI.ICallbackEventHandler System.Web.UI.ICallbackEventHandler
CS.System.Web.UI.ICallbackEventHandler = System.Web.UI.ICallbackEventHandler

---@param eventArgument string
function System.Web.UI.ICallbackEventHandler:RaiseCallbackEvent(eventArgument) end
---@return string
function System.Web.UI.ICallbackEventHandler:GetCallbackResult() end

---@class System.Web.UI.IControlBuilderAccessor
---@field ControlBuilder System.Web.UI.ControlBuilder
System.Web.UI.IControlBuilderAccessor = {}
---@alias CS.System.Web.UI.IControlBuilderAccessor System.Web.UI.IControlBuilderAccessor
CS.System.Web.UI.IControlBuilderAccessor = System.Web.UI.IControlBuilderAccessor


---@class System.Web.UI.IControlDesignerAccessor
---@field UserData System.Collections.IDictionary
System.Web.UI.IControlDesignerAccessor = {}
---@alias CS.System.Web.UI.IControlDesignerAccessor System.Web.UI.IControlDesignerAccessor
CS.System.Web.UI.IControlDesignerAccessor = System.Web.UI.IControlDesignerAccessor

---@return System.Collections.IDictionary
function System.Web.UI.IControlDesignerAccessor:GetDesignModeState() end
---@param data System.Collections.IDictionary
function System.Web.UI.IControlDesignerAccessor:SetDesignModeState(data) end
---@param owner System.Web.UI.Control
function System.Web.UI.IControlDesignerAccessor:SetOwnerControl(owner) end

---@class System.Web.UI.IDReferencePropertyAttribute : System.Attribute
---@field ReferencedControlType System.Type
System.Web.UI.IDReferencePropertyAttribute = {}
---@alias CS.System.Web.UI.IDReferencePropertyAttribute System.Web.UI.IDReferencePropertyAttribute
CS.System.Web.UI.IDReferencePropertyAttribute = System.Web.UI.IDReferencePropertyAttribute

---@overload fun() : System.Web.UI.IDReferencePropertyAttribute
---@param referencedControlType System.Type
---@return System.Web.UI.IDReferencePropertyAttribute
function System.Web.UI.IDReferencePropertyAttribute.New(referencedControlType) end
---@return number
function System.Web.UI.IDReferencePropertyAttribute:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.Web.UI.IDReferencePropertyAttribute:Equals(obj) end

---@class System.Web.UI.IDataBindingsAccessor
---@field DataBindings System.Web.UI.DataBindingCollection
---@field HasDataBindings boolean
System.Web.UI.IDataBindingsAccessor = {}
---@alias CS.System.Web.UI.IDataBindingsAccessor System.Web.UI.IDataBindingsAccessor
CS.System.Web.UI.IDataBindingsAccessor = System.Web.UI.IDataBindingsAccessor


---@class System.Web.UI.IDataItemContainer
---@field DataItem System.Object
---@field DataItemIndex number
---@field DisplayIndex number
System.Web.UI.IDataItemContainer = {}
---@alias CS.System.Web.UI.IDataItemContainer System.Web.UI.IDataItemContainer
CS.System.Web.UI.IDataItemContainer = System.Web.UI.IDataItemContainer


---@class System.Web.UI.IDataKeysControl
---@field ClientIDRowSuffix System.String[]
---@field ClientIDRowSuffixDataKeys System.Web.UI.WebControls.DataKeyArray
System.Web.UI.IDataKeysControl = {}
---@alias CS.System.Web.UI.IDataKeysControl System.Web.UI.IDataKeysControl
CS.System.Web.UI.IDataKeysControl = System.Web.UI.IDataKeysControl


---@class System.Web.UI.IDataSource
System.Web.UI.IDataSource = {}
---@alias CS.System.Web.UI.IDataSource System.Web.UI.IDataSource
CS.System.Web.UI.IDataSource = System.Web.UI.IDataSource

---@param viewName string
---@return System.Web.UI.DataSourceView
function System.Web.UI.IDataSource:GetView(viewName) end
---@return System.Collections.ICollection
function System.Web.UI.IDataSource:GetViewNames() end

---@class System.Web.UI.IDataSourceViewSchemaAccessor
---@field DataSourceViewSchema System.Object
System.Web.UI.IDataSourceViewSchemaAccessor = {}
---@alias CS.System.Web.UI.IDataSourceViewSchemaAccessor System.Web.UI.IDataSourceViewSchemaAccessor
CS.System.Web.UI.IDataSourceViewSchemaAccessor = System.Web.UI.IDataSourceViewSchemaAccessor


---@class System.Web.UI.IExpressionsAccessor
---@field HasExpressions boolean
---@field Expressions System.Web.UI.ExpressionBindingCollection
System.Web.UI.IExpressionsAccessor = {}
---@alias CS.System.Web.UI.IExpressionsAccessor System.Web.UI.IExpressionsAccessor
CS.System.Web.UI.IExpressionsAccessor = System.Web.UI.IExpressionsAccessor


---@class System.Web.UI.IFilterResolutionService
System.Web.UI.IFilterResolutionService = {}
---@alias CS.System.Web.UI.IFilterResolutionService System.Web.UI.IFilterResolutionService
CS.System.Web.UI.IFilterResolutionService = System.Web.UI.IFilterResolutionService

---@param filterName string
---@return boolean
function System.Web.UI.IFilterResolutionService:EvaluateFilter(filterName) end
---@param filter1 string
---@param filter2 string
---@return number
function System.Web.UI.IFilterResolutionService:CompareFilters(filter1, filter2) end

---@class System.Web.UI.IHierarchicalDataSource
System.Web.UI.IHierarchicalDataSource = {}
---@alias CS.System.Web.UI.IHierarchicalDataSource System.Web.UI.IHierarchicalDataSource
CS.System.Web.UI.IHierarchicalDataSource = System.Web.UI.IHierarchicalDataSource

---@param viewPath string
---@return System.Web.UI.HierarchicalDataSourceView
function System.Web.UI.IHierarchicalDataSource:GetHierarchicalView(viewPath) end

---@class System.Web.UI.IHierarchicalEnumerable
System.Web.UI.IHierarchicalEnumerable = {}
---@alias CS.System.Web.UI.IHierarchicalEnumerable System.Web.UI.IHierarchicalEnumerable
CS.System.Web.UI.IHierarchicalEnumerable = System.Web.UI.IHierarchicalEnumerable

---@param enumeratedItem System.Object
---@return System.Web.UI.IHierarchyData
function System.Web.UI.IHierarchicalEnumerable:GetHierarchyData(enumeratedItem) end

---@class System.Web.UI.IHierarchyData
---@field HasChildren boolean
---@field Path string
---@field Item System.Object
---@field Type string
System.Web.UI.IHierarchyData = {}
---@alias CS.System.Web.UI.IHierarchyData System.Web.UI.IHierarchyData
CS.System.Web.UI.IHierarchyData = System.Web.UI.IHierarchyData

---@return System.Web.UI.IHierarchicalEnumerable
function System.Web.UI.IHierarchyData:GetChildren() end
---@return System.Web.UI.IHierarchyData
function System.Web.UI.IHierarchyData:GetParent() end

---@class System.Web.UI.INamingContainer
System.Web.UI.INamingContainer = {}
---@alias CS.System.Web.UI.INamingContainer System.Web.UI.INamingContainer
CS.System.Web.UI.INamingContainer = System.Web.UI.INamingContainer


---@class System.Web.UI.INavigateUIData
---@field Description string
---@field Name string
---@field NavigateUrl string
---@field Value string
System.Web.UI.INavigateUIData = {}
---@alias CS.System.Web.UI.INavigateUIData System.Web.UI.INavigateUIData
CS.System.Web.UI.INavigateUIData = System.Web.UI.INavigateUIData


---@class System.Web.UI.INonBindingContainer
System.Web.UI.INonBindingContainer = {}
---@alias CS.System.Web.UI.INonBindingContainer System.Web.UI.INonBindingContainer
CS.System.Web.UI.INonBindingContainer = System.Web.UI.INonBindingContainer


---@class System.Web.UI.IParserAccessor
System.Web.UI.IParserAccessor = {}
---@alias CS.System.Web.UI.IParserAccessor System.Web.UI.IParserAccessor
CS.System.Web.UI.IParserAccessor = System.Web.UI.IParserAccessor

---@param obj System.Object
function System.Web.UI.IParserAccessor:AddParsedSubObject(obj) end

---@class System.Web.UI.IPostBackDataHandler
System.Web.UI.IPostBackDataHandler = {}
---@alias CS.System.Web.UI.IPostBackDataHandler System.Web.UI.IPostBackDataHandler
CS.System.Web.UI.IPostBackDataHandler = System.Web.UI.IPostBackDataHandler

---@param postDataKey string
---@param postCollection System.Collections.Specialized.NameValueCollection
---@return boolean
function System.Web.UI.IPostBackDataHandler:LoadPostData(postDataKey, postCollection) end
function System.Web.UI.IPostBackDataHandler:RaisePostDataChangedEvent() end

---@class System.Web.UI.IPostBackEventHandler
System.Web.UI.IPostBackEventHandler = {}
---@alias CS.System.Web.UI.IPostBackEventHandler System.Web.UI.IPostBackEventHandler
CS.System.Web.UI.IPostBackEventHandler = System.Web.UI.IPostBackEventHandler

---@param eventArgument string
function System.Web.UI.IPostBackEventHandler:RaisePostBackEvent(eventArgument) end

---@class System.Web.UI.IResourceUrlGenerator
System.Web.UI.IResourceUrlGenerator = {}
---@alias CS.System.Web.UI.IResourceUrlGenerator System.Web.UI.IResourceUrlGenerator
CS.System.Web.UI.IResourceUrlGenerator = System.Web.UI.IResourceUrlGenerator

---@param type System.Type
---@param resourceName string
---@return string
function System.Web.UI.IResourceUrlGenerator:GetResourceUrl(type, resourceName) end

---@class System.Web.UI.IScriptResourceDefinition
---@field Path string
---@field DebugPath string
---@field CdnPath string
---@field CdnDebugPath string
---@field CdnPathSecureConnection string
---@field CdnDebugPathSecureConnection string
---@field ResourceName string
---@field ResourceAssembly System.Reflection.Assembly
System.Web.UI.IScriptResourceDefinition = {}
---@alias CS.System.Web.UI.IScriptResourceDefinition System.Web.UI.IScriptResourceDefinition
CS.System.Web.UI.IScriptResourceDefinition = System.Web.UI.IScriptResourceDefinition


---@class System.Web.UI.IScriptResourceMapping
System.Web.UI.IScriptResourceMapping = {}
---@alias CS.System.Web.UI.IScriptResourceMapping System.Web.UI.IScriptResourceMapping
CS.System.Web.UI.IScriptResourceMapping = System.Web.UI.IScriptResourceMapping

---@overload fun(self: System.Web.UI.IScriptResourceMapping, resourceName: string) : System.Web.UI.IScriptResourceDefinition
---@param resourceName string
---@param resourceAssembly System.Reflection.Assembly
---@return System.Web.UI.IScriptResourceDefinition
function System.Web.UI.IScriptResourceMapping:GetDefinition(resourceName, resourceAssembly) end

---@class System.Web.UI.IStateFormatter
System.Web.UI.IStateFormatter = {}
---@alias CS.System.Web.UI.IStateFormatter System.Web.UI.IStateFormatter
CS.System.Web.UI.IStateFormatter = System.Web.UI.IStateFormatter

---@param serializedState string
---@return System.Object
function System.Web.UI.IStateFormatter:Deserialize(serializedState) end
---@param state System.Object
---@return string
function System.Web.UI.IStateFormatter:Serialize(state) end

---@class System.Web.UI.IStateManager
---@field IsTrackingViewState boolean
System.Web.UI.IStateManager = {}
---@alias CS.System.Web.UI.IStateManager System.Web.UI.IStateManager
CS.System.Web.UI.IStateManager = System.Web.UI.IStateManager

---@param state System.Object
function System.Web.UI.IStateManager:LoadViewState(state) end
---@return System.Object
function System.Web.UI.IStateManager:SaveViewState() end
function System.Web.UI.IStateManager:TrackViewState() end

---@class System.Web.UI.IStyleSheet
System.Web.UI.IStyleSheet = {}
---@alias CS.System.Web.UI.IStyleSheet System.Web.UI.IStyleSheet
CS.System.Web.UI.IStyleSheet = System.Web.UI.IStyleSheet

---@param style System.Web.UI.WebControls.Style
---@param urlResolver System.Web.UI.IUrlResolutionService
---@param selector string
function System.Web.UI.IStyleSheet:CreateStyleRule(style, urlResolver, selector) end
---@param style System.Web.UI.WebControls.Style
---@param urlResolver System.Web.UI.IUrlResolutionService
function System.Web.UI.IStyleSheet:RegisterStyle(style, urlResolver) end

---@class System.Web.UI.ITemplate
System.Web.UI.ITemplate = {}
---@alias CS.System.Web.UI.ITemplate System.Web.UI.ITemplate
CS.System.Web.UI.ITemplate = System.Web.UI.ITemplate

---@param container System.Web.UI.Control
function System.Web.UI.ITemplate:InstantiateIn(container) end

---@class System.Web.UI.IThemeResolutionService
System.Web.UI.IThemeResolutionService = {}
---@alias CS.System.Web.UI.IThemeResolutionService System.Web.UI.IThemeResolutionService
CS.System.Web.UI.IThemeResolutionService = System.Web.UI.IThemeResolutionService

---@return System.Web.UI.ThemeProvider[]
function System.Web.UI.IThemeResolutionService:GetAllThemeProviders() end
---@return System.Web.UI.ThemeProvider
function System.Web.UI.IThemeResolutionService:GetThemeProvider() end
---@return System.Web.UI.ThemeProvider
function System.Web.UI.IThemeResolutionService:GetStylesheetThemeProvider() end

---@class System.Web.UI.IUpdatePanel
System.Web.UI.IUpdatePanel = {}
---@alias CS.System.Web.UI.IUpdatePanel System.Web.UI.IUpdatePanel
CS.System.Web.UI.IUpdatePanel = System.Web.UI.IUpdatePanel


---@class System.Web.UI.IUrlResolutionService
System.Web.UI.IUrlResolutionService = {}
---@alias CS.System.Web.UI.IUrlResolutionService System.Web.UI.IUrlResolutionService
CS.System.Web.UI.IUrlResolutionService = System.Web.UI.IUrlResolutionService

---@param relativeUrl string
---@return string
function System.Web.UI.IUrlResolutionService:ResolveClientUrl(relativeUrl) end

---@class System.Web.UI.IUserControlDesignerAccessor
---@field InnerText string
---@field TagName string
System.Web.UI.IUserControlDesignerAccessor = {}
---@alias CS.System.Web.UI.IUserControlDesignerAccessor System.Web.UI.IUserControlDesignerAccessor
CS.System.Web.UI.IUserControlDesignerAccessor = System.Web.UI.IUserControlDesignerAccessor


---@class System.Web.UI.IUserControlTypeResolutionService
System.Web.UI.IUserControlTypeResolutionService = {}
---@alias CS.System.Web.UI.IUserControlTypeResolutionService System.Web.UI.IUserControlTypeResolutionService
CS.System.Web.UI.IUserControlTypeResolutionService = System.Web.UI.IUserControlTypeResolutionService

---@param tagPrefix string
---@param tagName string
---@return System.Type
function System.Web.UI.IUserControlTypeResolutionService:GetType(tagPrefix, tagName) end

---@class System.Web.UI.IValidator
---@field IsValid boolean
---@field ErrorMessage string
System.Web.UI.IValidator = {}
---@alias CS.System.Web.UI.IValidator System.Web.UI.IValidator
CS.System.Web.UI.IValidator = System.Web.UI.IValidator

function System.Web.UI.IValidator:Validate() end

---@class System.Web.UI.ImageClickEventArgs : System.EventArgs
---@field X number
---@field Y number
---@field XRaw number
---@field YRaw number
System.Web.UI.ImageClickEventArgs = {}
---@alias CS.System.Web.UI.ImageClickEventArgs System.Web.UI.ImageClickEventArgs
CS.System.Web.UI.ImageClickEventArgs = System.Web.UI.ImageClickEventArgs

---@overload fun(x: number, y: number) : System.Web.UI.ImageClickEventArgs
---@param x number
---@param y number
---@param xRaw number
---@param yRaw number
---@return System.Web.UI.ImageClickEventArgs
function System.Web.UI.ImageClickEventArgs.New(x, y, xRaw, yRaw) end

---@class System.Web.UI.ImageClickEventHandler : System.MulticastDelegate
System.Web.UI.ImageClickEventHandler = {}
---@alias CS.System.Web.UI.ImageClickEventHandler System.Web.UI.ImageClickEventHandler
CS.System.Web.UI.ImageClickEventHandler = System.Web.UI.ImageClickEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.ImageClickEventHandler
function System.Web.UI.ImageClickEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.ImageClickEventArgs
function System.Web.UI.ImageClickEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.ImageClickEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.ImageClickEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.ImageClickEventHandler:EndInvoke(result) end

---@class System.Web.UI.IndexedString : System.Object
---@field Value string
System.Web.UI.IndexedString = {}
---@alias CS.System.Web.UI.IndexedString System.Web.UI.IndexedString
CS.System.Web.UI.IndexedString = System.Web.UI.IndexedString

---@param s string
---@return System.Web.UI.IndexedString
function System.Web.UI.IndexedString.New(s) end

---@class System.Web.UI.NonVisualControlAttribute : System.Attribute
---@field NonVisual System.Web.UI.NonVisualControlAttribute
---@field Visual System.Web.UI.NonVisualControlAttribute
---@field Default System.Web.UI.NonVisualControlAttribute
---@field IsNonVisual boolean
System.Web.UI.NonVisualControlAttribute = {}
---@alias CS.System.Web.UI.NonVisualControlAttribute System.Web.UI.NonVisualControlAttribute
CS.System.Web.UI.NonVisualControlAttribute = System.Web.UI.NonVisualControlAttribute

---@overload fun() : System.Web.UI.NonVisualControlAttribute
---@param nonVisual boolean
---@return System.Web.UI.NonVisualControlAttribute
function System.Web.UI.NonVisualControlAttribute.New(nonVisual) end
---@param obj System.Object
---@return boolean
function System.Web.UI.NonVisualControlAttribute:Equals(obj) end
---@return number
function System.Web.UI.NonVisualControlAttribute:GetHashCode() end
---@return boolean
function System.Web.UI.NonVisualControlAttribute:IsDefaultAttribute() end

---@class System.Web.UI.CompilationMode
---@field Auto System.Web.UI.CompilationMode
---@field Never System.Web.UI.CompilationMode
---@field Always System.Web.UI.CompilationMode
System.Web.UI.CompilationMode = {}
---@alias CS.System.Web.UI.CompilationMode System.Web.UI.CompilationMode
CS.System.Web.UI.CompilationMode = System.Web.UI.CompilationMode


---@class System.Web.UI.Pair : System.Object
---@field First System.Object
---@field Second System.Object
System.Web.UI.Pair = {}
---@alias CS.System.Web.UI.Pair System.Web.UI.Pair
CS.System.Web.UI.Pair = System.Web.UI.Pair

---@overload fun() : System.Web.UI.Pair
---@param x System.Object
---@param y System.Object
---@return System.Web.UI.Pair
function System.Web.UI.Pair.New(x, y) end

---@class System.Web.UI.PersistChildrenAttribute : System.Attribute
---@field Yes System.Web.UI.PersistChildrenAttribute
---@field No System.Web.UI.PersistChildrenAttribute
---@field Default System.Web.UI.PersistChildrenAttribute
---@field Persist boolean
---@field UsesCustomPersistence boolean
System.Web.UI.PersistChildrenAttribute = {}
---@alias CS.System.Web.UI.PersistChildrenAttribute System.Web.UI.PersistChildrenAttribute
CS.System.Web.UI.PersistChildrenAttribute = System.Web.UI.PersistChildrenAttribute

---@overload fun(persist: boolean) : System.Web.UI.PersistChildrenAttribute
---@param persist boolean
---@param usesCustomPersistence boolean
---@return System.Web.UI.PersistChildrenAttribute
function System.Web.UI.PersistChildrenAttribute.New(persist, usesCustomPersistence) end
---@return number
function System.Web.UI.PersistChildrenAttribute:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.Web.UI.PersistChildrenAttribute:Equals(obj) end
---@return boolean
function System.Web.UI.PersistChildrenAttribute:IsDefaultAttribute() end

---@class System.Web.UI.PersistenceMode
---@field Attribute System.Web.UI.PersistenceMode
---@field InnerProperty System.Web.UI.PersistenceMode
---@field InnerDefaultProperty System.Web.UI.PersistenceMode
---@field EncodedInnerDefaultProperty System.Web.UI.PersistenceMode
System.Web.UI.PersistenceMode = {}
---@alias CS.System.Web.UI.PersistenceMode System.Web.UI.PersistenceMode
CS.System.Web.UI.PersistenceMode = System.Web.UI.PersistenceMode


---@class System.Web.UI.SupportsEventValidationAttribute : System.Attribute
System.Web.UI.SupportsEventValidationAttribute = {}
---@alias CS.System.Web.UI.SupportsEventValidationAttribute System.Web.UI.SupportsEventValidationAttribute
CS.System.Web.UI.SupportsEventValidationAttribute = System.Web.UI.SupportsEventValidationAttribute

---@return System.Web.UI.SupportsEventValidationAttribute
function System.Web.UI.SupportsEventValidationAttribute.New() end

---@class System.Web.UI.TemplateInstance
---@field Multiple System.Web.UI.TemplateInstance
---@field Single System.Web.UI.TemplateInstance
System.Web.UI.TemplateInstance = {}
---@alias CS.System.Web.UI.TemplateInstance System.Web.UI.TemplateInstance
CS.System.Web.UI.TemplateInstance = System.Web.UI.TemplateInstance


---@class System.Web.UI.TemplateInstanceAttribute : System.Attribute
---@field Multiple System.Web.UI.TemplateInstanceAttribute
---@field Single System.Web.UI.TemplateInstanceAttribute
---@field Default System.Web.UI.TemplateInstanceAttribute
---@field Instances System.Web.UI.TemplateInstance
System.Web.UI.TemplateInstanceAttribute = {}
---@alias CS.System.Web.UI.TemplateInstanceAttribute System.Web.UI.TemplateInstanceAttribute
CS.System.Web.UI.TemplateInstanceAttribute = System.Web.UI.TemplateInstanceAttribute

---@param instances System.Web.UI.TemplateInstance
---@return System.Web.UI.TemplateInstanceAttribute
function System.Web.UI.TemplateInstanceAttribute.New(instances) end
---@param obj System.Object
---@return boolean
function System.Web.UI.TemplateInstanceAttribute:Equals(obj) end
---@return number
function System.Web.UI.TemplateInstanceAttribute:GetHashCode() end
---@return boolean
function System.Web.UI.TemplateInstanceAttribute:IsDefaultAttribute() end

---@class System.Web.UI.ThemeableAttribute : System.Attribute
---@field Yes System.Web.UI.ThemeableAttribute
---@field No System.Web.UI.ThemeableAttribute
---@field Default System.Web.UI.ThemeableAttribute
---@field Themeable boolean
System.Web.UI.ThemeableAttribute = {}
---@alias CS.System.Web.UI.ThemeableAttribute System.Web.UI.ThemeableAttribute
CS.System.Web.UI.ThemeableAttribute = System.Web.UI.ThemeableAttribute

---@param themeable boolean
---@return System.Web.UI.ThemeableAttribute
function System.Web.UI.ThemeableAttribute.New(themeable) end
---@param instance System.Object
---@return boolean
function System.Web.UI.ThemeableAttribute.IsObjectThemeable(instance) end
---@param type System.Type
---@return boolean
function System.Web.UI.ThemeableAttribute.IsTypeThemeable(type) end
---@param obj System.Object
---@return boolean
function System.Web.UI.ThemeableAttribute:Equals(obj) end
---@return number
function System.Web.UI.ThemeableAttribute:GetHashCode() end
---@return boolean
function System.Web.UI.ThemeableAttribute:IsDefaultAttribute() end

---@class System.Web.UI.UnobtrusiveValidationMode
---@field None System.Web.UI.UnobtrusiveValidationMode
---@field WebForms System.Web.UI.UnobtrusiveValidationMode
System.Web.UI.UnobtrusiveValidationMode = {}
---@alias CS.System.Web.UI.UnobtrusiveValidationMode System.Web.UI.UnobtrusiveValidationMode
CS.System.Web.UI.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode


---@class System.Web.UI.ValidateRequestMode
---@field Inherit System.Web.UI.ValidateRequestMode
---@field Disabled System.Web.UI.ValidateRequestMode
---@field Enabled System.Web.UI.ValidateRequestMode
System.Web.UI.ValidateRequestMode = {}
---@alias CS.System.Web.UI.ValidateRequestMode System.Web.UI.ValidateRequestMode
CS.System.Web.UI.ValidateRequestMode = System.Web.UI.ValidateRequestMode


---@class System.Web.UI.ViewStateEncryptionMode
---@field Auto System.Web.UI.ViewStateEncryptionMode
---@field Always System.Web.UI.ViewStateEncryptionMode
---@field Never System.Web.UI.ViewStateEncryptionMode
System.Web.UI.ViewStateEncryptionMode = {}
---@alias CS.System.Web.UI.ViewStateEncryptionMode System.Web.UI.ViewStateEncryptionMode
CS.System.Web.UI.ViewStateEncryptionMode = System.Web.UI.ViewStateEncryptionMode


---@class System.Web.UI.ViewStateMode
---@field Inherit System.Web.UI.ViewStateMode
---@field Enabled System.Web.UI.ViewStateMode
---@field Disabled System.Web.UI.ViewStateMode
System.Web.UI.ViewStateMode = {}
---@alias CS.System.Web.UI.ViewStateMode System.Web.UI.ViewStateMode
CS.System.Web.UI.ViewStateMode = System.Web.UI.ViewStateMode


---@class System.Web.UI.IBorderPaddingControl
---@field BorderPadding number
System.Web.UI.IBorderPaddingControl = {}
---@alias CS.System.Web.UI.IBorderPaddingControl System.Web.UI.IBorderPaddingControl
CS.System.Web.UI.IBorderPaddingControl = System.Web.UI.IBorderPaddingControl


---@class System.Web.UI.ICheckBoxControl
---@field Checked boolean
System.Web.UI.ICheckBoxControl = {}
---@alias CS.System.Web.UI.ICheckBoxControl System.Web.UI.ICheckBoxControl
CS.System.Web.UI.ICheckBoxControl = System.Web.UI.ICheckBoxControl


---@class System.Web.UI.IEditableTextControl
System.Web.UI.IEditableTextControl = {}
---@alias CS.System.Web.UI.IEditableTextControl System.Web.UI.IEditableTextControl
CS.System.Web.UI.IEditableTextControl = System.Web.UI.IEditableTextControl


---@class System.Web.UI.IRenderOuterTableControl
---@field ID string
---@field RenderOuterTable boolean
System.Web.UI.IRenderOuterTableControl = {}
---@alias CS.System.Web.UI.IRenderOuterTableControl System.Web.UI.IRenderOuterTableControl
CS.System.Web.UI.IRenderOuterTableControl = System.Web.UI.IRenderOuterTableControl


---@class System.Web.UI.ITextControl
---@field Text string
System.Web.UI.ITextControl = {}
---@alias CS.System.Web.UI.ITextControl System.Web.UI.ITextControl
CS.System.Web.UI.ITextControl = System.Web.UI.ITextControl


---@class System.Web.UI.ThemeDirectoryCompiler : System.Object
System.Web.UI.ThemeDirectoryCompiler = {}
---@alias CS.System.Web.UI.ThemeDirectoryCompiler System.Web.UI.ThemeDirectoryCompiler
CS.System.Web.UI.ThemeDirectoryCompiler = System.Web.UI.ThemeDirectoryCompiler

---@return System.Web.UI.ThemeDirectoryCompiler
function System.Web.UI.ThemeDirectoryCompiler.New() end
---@param theme string
---@param context System.Web.HttpContext
---@return System.Type
function System.Web.UI.ThemeDirectoryCompiler.GetCompiledType(theme, context) end
---@param theme string
---@param context System.Web.HttpContext
---@return System.Web.UI.PageTheme
function System.Web.UI.ThemeDirectoryCompiler.GetCompiledInstance(theme, context) end

---@class System.Web.UI.ApplicationFileParser : System.Web.UI.TemplateParser
System.Web.UI.ApplicationFileParser = {}
---@alias CS.System.Web.UI.ApplicationFileParser System.Web.UI.ApplicationFileParser
CS.System.Web.UI.ApplicationFileParser = System.Web.UI.ApplicationFileParser

---@param fname string
---@param context System.Web.HttpContext
---@return System.Web.UI.ApplicationFileParser
function System.Web.UI.ApplicationFileParser.New(fname, context) end

---@class System.Web.UI.AttributeCollection : System.Object
---@field Count number
---@field CssStyle System.Web.UI.CssStyleCollection
---@field Item string
---@field Keys System.Collections.ICollection
System.Web.UI.AttributeCollection = {}
---@alias CS.System.Web.UI.AttributeCollection System.Web.UI.AttributeCollection
CS.System.Web.UI.AttributeCollection = System.Web.UI.AttributeCollection

---@param bag System.Web.UI.StateBag
---@return System.Web.UI.AttributeCollection
function System.Web.UI.AttributeCollection.New(bag) end
---@param o System.Object
---@return boolean
function System.Web.UI.AttributeCollection:Equals(o) end
---@return number
function System.Web.UI.AttributeCollection:GetHashCode() end
---@param key string
---@param value string
function System.Web.UI.AttributeCollection:Add(key, value) end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.AttributeCollection:AddAttributes(writer) end
function System.Web.UI.AttributeCollection:Clear() end
---@param key string
function System.Web.UI.AttributeCollection:Remove(key) end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.AttributeCollection:Render(writer) end

---@class System.Web.UI.BaseParser : System.Object
System.Web.UI.BaseParser = {}
---@alias CS.System.Web.UI.BaseParser System.Web.UI.BaseParser
CS.System.Web.UI.BaseParser = System.Web.UI.BaseParser

---@return System.Web.UI.BaseParser
function System.Web.UI.BaseParser.New() end

---@class System.Web.UI.BasePartialCachingControl : System.Web.UI.Control
---@field CachePolicy System.Web.UI.ControlCachePolicy
---@field Dependency System.Web.Caching.CacheDependency
System.Web.UI.BasePartialCachingControl = {}
---@alias CS.System.Web.UI.BasePartialCachingControl System.Web.UI.BasePartialCachingControl
CS.System.Web.UI.BasePartialCachingControl = System.Web.UI.BasePartialCachingControl

function System.Web.UI.BasePartialCachingControl:Dispose() end

---@class System.Web.UI.BaseTemplateParser : System.Web.UI.TemplateParser
System.Web.UI.BaseTemplateParser = {}
---@alias CS.System.Web.UI.BaseTemplateParser System.Web.UI.BaseTemplateParser
CS.System.Web.UI.BaseTemplateParser = System.Web.UI.BaseTemplateParser


---@class System.Web.UI.BoundPropertyEntry : System.Web.UI.PropertyEntry
---@field ControlID string
---@field ControlType System.Type
---@field Expression string
---@field ExpressionBuilder System.Web.Compilation.ExpressionBuilder
---@field ExpressionPrefix string
---@field FieldName string
---@field FormatString string
---@field Generated boolean
---@field ParsedExpressionData System.Object
---@field ReadOnlyProperty boolean
---@field TwoWayBound boolean
---@field UseSetAttribute boolean
---@field IsEncoded boolean
System.Web.UI.BoundPropertyEntry = {}
---@alias CS.System.Web.UI.BoundPropertyEntry System.Web.UI.BoundPropertyEntry
CS.System.Web.UI.BoundPropertyEntry = System.Web.UI.BoundPropertyEntry


---@class System.Web.UI.BuildMethod : System.MulticastDelegate
System.Web.UI.BuildMethod = {}
---@alias CS.System.Web.UI.BuildMethod System.Web.UI.BuildMethod
CS.System.Web.UI.BuildMethod = System.Web.UI.BuildMethod

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.BuildMethod
function System.Web.UI.BuildMethod.New(object, method) end
---@return System.Web.UI.Control
function System.Web.UI.BuildMethod:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.BuildMethod:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return System.Web.UI.Control
function System.Web.UI.BuildMethod:EndInvoke(result) end

---@class System.Web.UI.BuildTemplateMethod : System.MulticastDelegate
System.Web.UI.BuildTemplateMethod = {}
---@alias CS.System.Web.UI.BuildTemplateMethod System.Web.UI.BuildTemplateMethod
CS.System.Web.UI.BuildTemplateMethod = System.Web.UI.BuildTemplateMethod

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.BuildTemplateMethod
function System.Web.UI.BuildTemplateMethod.New(object, method) end
---@param control System.Web.UI.Control
function System.Web.UI.BuildTemplateMethod:Invoke(control) end
---@param control System.Web.UI.Control
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.BuildTemplateMethod:BeginInvoke(control, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.BuildTemplateMethod:EndInvoke(result) end

---@class System.Web.UI.BuilderPropertyEntry : System.Web.UI.PropertyEntry
---@field Builder System.Web.UI.ControlBuilder
System.Web.UI.BuilderPropertyEntry = {}
---@alias CS.System.Web.UI.BuilderPropertyEntry System.Web.UI.BuilderPropertyEntry
CS.System.Web.UI.BuilderPropertyEntry = System.Web.UI.BuilderPropertyEntry


---@class System.Web.UI.ChtmlTextWriter : System.Web.UI.Html32TextWriter
System.Web.UI.ChtmlTextWriter = {}
---@alias CS.System.Web.UI.ChtmlTextWriter System.Web.UI.ChtmlTextWriter
CS.System.Web.UI.ChtmlTextWriter = System.Web.UI.ChtmlTextWriter

---@overload fun(writer: System.IO.TextWriter) : System.Web.UI.ChtmlTextWriter
---@param writer System.IO.TextWriter
---@param tabString string
---@return System.Web.UI.ChtmlTextWriter
function System.Web.UI.ChtmlTextWriter.New(writer, tabString) end
---@param elementName string
---@param attributeName string
function System.Web.UI.ChtmlTextWriter:AddRecognizedAttribute(elementName, attributeName) end
---@param elementName string
---@param attributeName string
function System.Web.UI.ChtmlTextWriter:RemoveRecognizedAttribute(elementName, attributeName) end
function System.Web.UI.ChtmlTextWriter:WriteBreak() end
---@param text string
function System.Web.UI.ChtmlTextWriter:WriteEncodedText(text) end

---@class System.Web.UI.ClientScriptManager : System.Object
System.Web.UI.ClientScriptManager = {}
---@alias CS.System.Web.UI.ClientScriptManager System.Web.UI.ClientScriptManager
CS.System.Web.UI.ClientScriptManager = System.Web.UI.ClientScriptManager

---@overload fun(self: System.Web.UI.ClientScriptManager, control: System.Web.UI.Control, argument: string) : string
---@param control System.Web.UI.Control
---@param argument string
---@param registerForEventValidation boolean
---@return string
function System.Web.UI.ClientScriptManager:GetPostBackClientHyperlink(control, argument, registerForEventValidation) end
---@overload fun(self: System.Web.UI.ClientScriptManager, control: System.Web.UI.Control, argument: string) : string
---@overload fun(self: System.Web.UI.ClientScriptManager, control: System.Web.UI.Control, argument: string, registerForEventValidation: boolean) : string
---@overload fun(self: System.Web.UI.ClientScriptManager, options: System.Web.UI.PostBackOptions, registerForEventValidation: boolean) : string
---@param options System.Web.UI.PostBackOptions
---@return string
function System.Web.UI.ClientScriptManager:GetPostBackEventReference(options) end
---@overload fun(self: System.Web.UI.ClientScriptManager, control: System.Web.UI.Control, argument: string, clientCallback: string, context: string) : string
---@overload fun(self: System.Web.UI.ClientScriptManager, control: System.Web.UI.Control, argument: string, clientCallback: string, context: string, useAsync: boolean) : string
---@overload fun(self: System.Web.UI.ClientScriptManager, control: System.Web.UI.Control, argument: string, clientCallback: string, context: string, clientErrorCallback: string, useAsync: boolean) : string
---@param target string
---@param argument string
---@param clientCallback string
---@param context string
---@param clientErrorCallback string
---@param useAsync boolean
---@return string
function System.Web.UI.ClientScriptManager:GetCallbackEventReference(target, argument, clientCallback, context, clientErrorCallback, useAsync) end
---@param type System.Type
---@param resourceName string
---@return string
function System.Web.UI.ClientScriptManager:GetWebResourceUrl(type, resourceName) end
---@overload fun(self: System.Web.UI.ClientScriptManager, key: string) : boolean
---@param type System.Type
---@param key string
---@return boolean
function System.Web.UI.ClientScriptManager:IsClientScriptBlockRegistered(type, key) end
---@overload fun(self: System.Web.UI.ClientScriptManager, key: string) : boolean
---@param type System.Type
---@param key string
---@return boolean
function System.Web.UI.ClientScriptManager:IsStartupScriptRegistered(type, key) end
---@overload fun(self: System.Web.UI.ClientScriptManager, key: string) : boolean
---@param type System.Type
---@param key string
---@return boolean
function System.Web.UI.ClientScriptManager:IsOnSubmitStatementRegistered(type, key) end
---@overload fun(self: System.Web.UI.ClientScriptManager, key: string) : boolean
---@param type System.Type
---@param key string
---@return boolean
function System.Web.UI.ClientScriptManager:IsClientScriptIncludeRegistered(type, key) end
---@param arrayName string
---@param arrayValue string
function System.Web.UI.ClientScriptManager:RegisterArrayDeclaration(arrayName, arrayValue) end
---@overload fun(self: System.Web.UI.ClientScriptManager, type: System.Type, key: string, script: string)
---@param type System.Type
---@param key string
---@param script string
---@param addScriptTags boolean
function System.Web.UI.ClientScriptManager:RegisterClientScriptBlock(type, key, script, addScriptTags) end
---@param hiddenFieldName string
---@param hiddenFieldInitialValue string
function System.Web.UI.ClientScriptManager:RegisterHiddenField(hiddenFieldName, hiddenFieldInitialValue) end
---@param type System.Type
---@param key string
---@param script string
function System.Web.UI.ClientScriptManager:RegisterOnSubmitStatement(type, key, script) end
---@overload fun(self: System.Web.UI.ClientScriptManager, type: System.Type, key: string, script: string)
---@param type System.Type
---@param key string
---@param script string
---@param addScriptTags boolean
function System.Web.UI.ClientScriptManager:RegisterStartupScript(type, key, script, addScriptTags) end
---@overload fun(self: System.Web.UI.ClientScriptManager, key: string, url: string)
---@param type System.Type
---@param key string
---@param url string
function System.Web.UI.ClientScriptManager:RegisterClientScriptInclude(type, key, url) end
---@param type System.Type
---@param resourceName string
function System.Web.UI.ClientScriptManager:RegisterClientScriptResource(type, resourceName) end
---@overload fun(self: System.Web.UI.ClientScriptManager, controlId: string, attributeName: string, attributeValue: string)
---@param controlId string
---@param attributeName string
---@param attributeValue string
---@param encode boolean
function System.Web.UI.ClientScriptManager:RegisterExpandoAttribute(controlId, attributeName, attributeValue, encode) end
---@overload fun(self: System.Web.UI.ClientScriptManager, options: System.Web.UI.PostBackOptions)
---@overload fun(self: System.Web.UI.ClientScriptManager, uniqueId: string)
---@param uniqueId string
---@param argument string
function System.Web.UI.ClientScriptManager:RegisterForEventValidation(uniqueId, argument) end
---@overload fun(self: System.Web.UI.ClientScriptManager, uniqueId: string)
---@param uniqueId string
---@param argument string
function System.Web.UI.ClientScriptManager:ValidateEvent(uniqueId, argument) end

---@class System.Web.UI.ClientScriptManager.ScriptEntry : System.Object
---@field Type System.Type
---@field Key string
---@field Script string
---@field Format System.Web.UI.ClientScriptManager.ScriptEntryFormat
---@field Next System.Web.UI.ClientScriptManager.ScriptEntry
System.Web.UI.ClientScriptManager.ScriptEntry = {}
---@alias CS.System.Web.UI.ClientScriptManager.ScriptEntry System.Web.UI.ClientScriptManager.ScriptEntry
CS.System.Web.UI.ClientScriptManager.ScriptEntry = System.Web.UI.ClientScriptManager.ScriptEntry

---@param type System.Type
---@param key string
---@param script string
---@param format System.Web.UI.ClientScriptManager.ScriptEntryFormat
---@return System.Web.UI.ClientScriptManager.ScriptEntry
function System.Web.UI.ClientScriptManager.ScriptEntry.New(type, key, script, format) end

---@class System.Web.UI.ClientScriptManager.ScriptEntryFormat
---@field None System.Web.UI.ClientScriptManager.ScriptEntryFormat
---@field AddScriptTag System.Web.UI.ClientScriptManager.ScriptEntryFormat
---@field Include System.Web.UI.ClientScriptManager.ScriptEntryFormat
System.Web.UI.ClientScriptManager.ScriptEntryFormat = {}
---@alias CS.System.Web.UI.ClientScriptManager.ScriptEntryFormat System.Web.UI.ClientScriptManager.ScriptEntryFormat
CS.System.Web.UI.ClientScriptManager.ScriptEntryFormat = System.Web.UI.ClientScriptManager.ScriptEntryFormat


---@class System.Web.UI.CodeBuilder : System.Web.UI.ControlBuilder
System.Web.UI.CodeBuilder = {}
---@alias CS.System.Web.UI.CodeBuilder System.Web.UI.CodeBuilder
CS.System.Web.UI.CodeBuilder = System.Web.UI.CodeBuilder

---@param code string
---@param isAssign boolean
---@param location System.Web.Compilation.ILocation
---@return System.Web.UI.CodeBuilder
function System.Web.UI.CodeBuilder.New(code, isAssign, location) end

---@class System.Web.UI.CodeConstructType
---@field CodeSnippet System.Web.UI.CodeConstructType
---@field ExpressionSnippet System.Web.UI.CodeConstructType
---@field DataBindingSnippet System.Web.UI.CodeConstructType
---@field ScriptTag System.Web.UI.CodeConstructType
---@field EncodedExpressionSnippet System.Web.UI.CodeConstructType
System.Web.UI.CodeConstructType = {}
---@alias CS.System.Web.UI.CodeConstructType System.Web.UI.CodeConstructType
CS.System.Web.UI.CodeConstructType = System.Web.UI.CodeConstructType


---@class System.Web.UI.CodeRenderBuilder : System.Web.UI.CodeBuilder
---@field HtmlEncode boolean
System.Web.UI.CodeRenderBuilder = {}
---@alias CS.System.Web.UI.CodeRenderBuilder System.Web.UI.CodeRenderBuilder
CS.System.Web.UI.CodeRenderBuilder = System.Web.UI.CodeRenderBuilder

---@overload fun(code: string, isAssign: boolean, location: System.Web.Compilation.ILocation, doHtmlEncode: boolean) : System.Web.UI.CodeRenderBuilder
---@param code string
---@param isAssign boolean
---@param location System.Web.Compilation.ILocation
---@return System.Web.UI.CodeRenderBuilder
function System.Web.UI.CodeRenderBuilder.New(code, isAssign, location) end

---@class System.Web.UI.CollectionBuilder : System.Web.UI.ControlBuilder
System.Web.UI.CollectionBuilder = {}
---@alias CS.System.Web.UI.CollectionBuilder System.Web.UI.CollectionBuilder
CS.System.Web.UI.CollectionBuilder = System.Web.UI.CollectionBuilder

---@param s string
function System.Web.UI.CollectionBuilder:AppendLiteralString(s) end
---@param tagName string
---@param attribs System.Collections.IDictionary
---@return System.Type
function System.Web.UI.CollectionBuilder:GetChildControlType(tagName, attribs) end
---@param parser System.Web.UI.TemplateParser
---@param parentBuilder System.Web.UI.ControlBuilder
---@param type System.Type
---@param tagName string
---@param id string
---@param attribs System.Collections.IDictionary
function System.Web.UI.CollectionBuilder:Init(parser, parentBuilder, type, tagName, id, attribs) end

---@class System.Web.UI.CompiledBindableTemplateBuilder : System.Object
System.Web.UI.CompiledBindableTemplateBuilder = {}
---@alias CS.System.Web.UI.CompiledBindableTemplateBuilder System.Web.UI.CompiledBindableTemplateBuilder
CS.System.Web.UI.CompiledBindableTemplateBuilder = System.Web.UI.CompiledBindableTemplateBuilder

---@param buildTemplateMethod System.Web.UI.BuildTemplateMethod
---@param extractTemplateValuesMethod System.Web.UI.ExtractTemplateValuesMethod
---@return System.Web.UI.CompiledBindableTemplateBuilder
function System.Web.UI.CompiledBindableTemplateBuilder.New(buildTemplateMethod, extractTemplateValuesMethod) end
---@param container System.Web.UI.Control
function System.Web.UI.CompiledBindableTemplateBuilder:InstantiateIn(container) end
---@param container System.Web.UI.Control
---@return System.Collections.Specialized.IOrderedDictionary
function System.Web.UI.CompiledBindableTemplateBuilder:ExtractValues(container) end

---@class System.Web.UI.CompiledTemplateBuilder : System.Object
System.Web.UI.CompiledTemplateBuilder = {}
---@alias CS.System.Web.UI.CompiledTemplateBuilder System.Web.UI.CompiledTemplateBuilder
CS.System.Web.UI.CompiledTemplateBuilder = System.Web.UI.CompiledTemplateBuilder

---@param buildTemplateMethod System.Web.UI.BuildTemplateMethod
---@return System.Web.UI.CompiledTemplateBuilder
function System.Web.UI.CompiledTemplateBuilder.New(buildTemplateMethod) end
---@param container System.Web.UI.Control
function System.Web.UI.CompiledTemplateBuilder:InstantiateIn(container) end

---@class System.Web.UI.ComplexPropertyEntry : System.Web.UI.BuilderPropertyEntry
---@field IsCollectionItem boolean
---@field ReadOnly boolean
System.Web.UI.ComplexPropertyEntry = {}
---@alias CS.System.Web.UI.ComplexPropertyEntry System.Web.UI.ComplexPropertyEntry
CS.System.Web.UI.ComplexPropertyEntry = System.Web.UI.ComplexPropertyEntry


---@class System.Web.UI.Control : System.Object
---@field AppRelativeTemplateSourceDirectory string
---@field BindingContainer System.Web.UI.Control
---@field ClientID string
---@field RenderingCompatibility System.Version
---@field DataItemContainer System.Web.UI.Control
---@field DataKeysContainer System.Web.UI.Control
---@field ClientIDMode System.Web.UI.ClientIDMode
---@field Controls System.Web.UI.ControlCollection
---@field EnableViewState boolean
---@field ID string
---@field NamingContainer System.Web.UI.Control
---@field Page System.Web.UI.Page
---@field Parent System.Web.UI.Control
---@field Site System.ComponentModel.ISite
---@field TemplateControl System.Web.UI.TemplateControl
---@field TemplateSourceDirectory string
---@field UniqueID string
---@field Visible boolean
---@field EnableTheming boolean
---@field SkinID string
---@field ViewStateMode System.Web.UI.ViewStateMode
---@field ValidateRequestMode System.Web.UI.ValidateRequestMode
System.Web.UI.Control = {}
---@alias CS.System.Web.UI.Control System.Web.UI.Control
CS.System.Web.UI.Control = System.Web.UI.Control

---@return System.Web.UI.Control
function System.Web.UI.Control.New() end
---@param page System.Web.UI.Page
function System.Web.UI.Control:ApplyStyleSheetSkin(page) end
---@param id string
---@return System.Web.UI.Control
function System.Web.UI.Control:FindControl(id) end
function System.Web.UI.Control:Dispose() end
function System.Web.UI.Control:DataBind() end
---@return boolean
function System.Web.UI.Control:HasControls() end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.Control:RenderControl(writer) end
---@param relativeUrl string
---@return string
function System.Web.UI.Control:ResolveUrl(relativeUrl) end
---@param relativeUrl string
---@return string
function System.Web.UI.Control:ResolveClientUrl(relativeUrl) end
---@param renderMethod System.Web.UI.RenderMethod
function System.Web.UI.Control:SetRenderMethodDelegate(renderMethod) end
function System.Web.UI.Control:Focus() end
---@overload fun(self: System.Web.UI.Control, routeParameters: System.Object) : string
---@overload fun(self: System.Web.UI.Control, routeParameters: System.Web.Routing.RouteValueDictionary) : string
---@overload fun(self: System.Web.UI.Control, routeName: string, routeParameters: System.Object) : string
---@param routeName string
---@param routeParameters System.Web.Routing.RouteValueDictionary
---@return string
function System.Web.UI.Control:GetRouteUrl(routeName, routeParameters) end
---@param control System.Web.UI.Control
---@return string
function System.Web.UI.Control:GetUniqueIDRelativeTo(control) end
---@overload fun(self: System.Web.UI.Control, traceDataKey: System.Object, traceDataValue: System.Object)
---@param tracedObject System.Object
---@param traceDataKey System.Object
---@param traceDataValue System.Object
function System.Web.UI.Control:SetTraceData(tracedObject, traceDataKey, traceDataValue) end

---@class System.Web.UI.ControlBuilder : System.Object
---@field DesignerFilter string
---@field ControlType System.Type
---@field HasAspCode boolean
---@field ID string
---@field NamingContainerType System.Type
---@field BindingContainerType System.Type
---@field TagName string
---@field BindingContainerBuilder System.Web.UI.ControlBuilder
---@field ComplexPropertyEntries System.Collections.ICollection
---@field CurrentFilterResolutionService System.Web.UI.IFilterResolutionService
---@field DeclareType System.Type
---@field ItemType string
---@field Localize boolean
---@field PageVirtualPath string
---@field ServiceProvider System.IServiceProvider
---@field SubBuilders System.Collections.ArrayList
---@field TemplatePropertyEntries System.Collections.ICollection
---@field ThemeResolutionService System.Web.UI.IThemeResolutionService
System.Web.UI.ControlBuilder = {}
---@alias CS.System.Web.UI.ControlBuilder System.Web.UI.ControlBuilder
CS.System.Web.UI.ControlBuilder = System.Web.UI.ControlBuilder

---@return System.Web.UI.ControlBuilder
function System.Web.UI.ControlBuilder.New() end
---@param parser System.Web.UI.TemplateParser
---@param parentBuilder System.Web.UI.ControlBuilder
---@param type System.Type
---@param tagName string
---@param id string
---@param attribs System.Collections.IDictionary
---@param line number
---@param sourceFileName string
---@return System.Web.UI.ControlBuilder
function System.Web.UI.ControlBuilder.CreateBuilderFromType(parser, parentBuilder, type, tagName, id, attribs, line, sourceFileName) end
---@return boolean
function System.Web.UI.ControlBuilder:AllowWhitespaceLiterals() end
---@param s string
function System.Web.UI.ControlBuilder:AppendLiteralString(s) end
---@param subBuilder System.Web.UI.ControlBuilder
function System.Web.UI.ControlBuilder:AppendSubBuilder(subBuilder) end
function System.Web.UI.ControlBuilder:CloseControl() end
---@param tagName string
---@param attribs System.Collections.IDictionary
---@return System.Type
function System.Web.UI.ControlBuilder:GetChildControlType(tagName, attribs) end
---@return boolean
function System.Web.UI.ControlBuilder:HasBody() end
---@return boolean
function System.Web.UI.ControlBuilder:HtmlDecodeLiterals() end
---@param parser System.Web.UI.TemplateParser
---@param parentBuilder System.Web.UI.ControlBuilder
---@param type System.Type
---@param tagName string
---@param id string
---@param attribs System.Collections.IDictionary
function System.Web.UI.ControlBuilder:Init(parser, parentBuilder, type, tagName, id, attribs) end
---@return boolean
function System.Web.UI.ControlBuilder:NeedsTagInnerText() end
---@param parentBuilder System.Web.UI.ControlBuilder
function System.Web.UI.ControlBuilder:OnAppendToParentBuilder(parentBuilder) end
---@param text string
function System.Web.UI.ControlBuilder:SetTagInnerText(text) end
---@return System.Object
function System.Web.UI.ControlBuilder:BuildObject() end
---@param codeCompileUnit System.CodeDom.CodeCompileUnit
---@param baseType System.CodeDom.CodeTypeDeclaration
---@param derivedType System.CodeDom.CodeTypeDeclaration
---@param buildMethod System.CodeDom.CodeMemberMethod
---@param dataBindingMethod System.CodeDom.CodeMemberMethod
function System.Web.UI.ControlBuilder:ProcessGeneratedCode(codeCompileUnit, baseType, derivedType, buildMethod, dataBindingMethod) end
---@return System.Web.UI.ObjectPersistData
function System.Web.UI.ControlBuilder:GetObjectPersistData() end
---@return string
function System.Web.UI.ControlBuilder:GetResourceKey() end
---@param resourceKey string
function System.Web.UI.ControlBuilder:SetResourceKey(resourceKey) end
---@param serviceProvider System.IServiceProvider
function System.Web.UI.ControlBuilder:SetServiceProvider(serviceProvider) end

---@class System.Web.UI.ControlCachePolicy : System.Object
---@field Cached boolean
---@field Dependency System.Web.Caching.CacheDependency
---@field Duration System.TimeSpan
---@field ProviderName string
---@field SupportsCaching boolean
---@field VaryByControl string
---@field VaryByParams System.Web.HttpCacheVaryByParams
System.Web.UI.ControlCachePolicy = {}
---@alias CS.System.Web.UI.ControlCachePolicy System.Web.UI.ControlCachePolicy
CS.System.Web.UI.ControlCachePolicy = System.Web.UI.ControlCachePolicy

---@param expirationTime System.DateTime
function System.Web.UI.ControlCachePolicy:SetExpires(expirationTime) end
---@param useSlidingExpiration boolean
function System.Web.UI.ControlCachePolicy:SetSlidingExpiration(useSlidingExpiration) end
---@param varyByCustom string
function System.Web.UI.ControlCachePolicy:SetVaryByCustom(varyByCustom) end

---@class System.Web.UI.ControlCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Web.UI.Control
---@field SyncRoot System.Object
System.Web.UI.ControlCollection = {}
---@alias CS.System.Web.UI.ControlCollection System.Web.UI.ControlCollection
CS.System.Web.UI.ControlCollection = System.Web.UI.ControlCollection

---@param owner System.Web.UI.Control
---@return System.Web.UI.ControlCollection
function System.Web.UI.ControlCollection.New(owner) end
---@param child System.Web.UI.Control
function System.Web.UI.ControlCollection:Add(child) end
---@param index number
---@param child System.Web.UI.Control
function System.Web.UI.ControlCollection:AddAt(index, child) end
function System.Web.UI.ControlCollection:Clear() end
---@param c System.Web.UI.Control
---@return boolean
function System.Web.UI.ControlCollection:Contains(c) end
---@param array System.Array
---@param index number
function System.Web.UI.ControlCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.UI.ControlCollection:GetEnumerator() end
---@param value System.Web.UI.Control
---@return number
function System.Web.UI.ControlCollection:IndexOf(value) end
---@param value System.Web.UI.Control
function System.Web.UI.ControlCollection:Remove(value) end
---@param index number
function System.Web.UI.ControlCollection:RemoveAt(index) end

---@class System.Web.UI.ControlCollection.SimpleEnumerator : System.Object
---@field Current System.Object
System.Web.UI.ControlCollection.SimpleEnumerator = {}
---@alias CS.System.Web.UI.ControlCollection.SimpleEnumerator System.Web.UI.ControlCollection.SimpleEnumerator
CS.System.Web.UI.ControlCollection.SimpleEnumerator = System.Web.UI.ControlCollection.SimpleEnumerator

---@param coll System.Web.UI.ControlCollection
---@return System.Web.UI.ControlCollection.SimpleEnumerator
function System.Web.UI.ControlCollection.SimpleEnumerator.New(coll) end
---@return boolean
function System.Web.UI.ControlCollection.SimpleEnumerator:MoveNext() end
function System.Web.UI.ControlCollection.SimpleEnumerator:Reset() end

---@class System.Web.UI.ControlSkin : System.Object
---@field ControlType System.Type
System.Web.UI.ControlSkin = {}
---@alias CS.System.Web.UI.ControlSkin System.Web.UI.ControlSkin
CS.System.Web.UI.ControlSkin = System.Web.UI.ControlSkin

---@param controlType System.Type
---@param themeDelegate System.Web.UI.ControlSkinDelegate
---@return System.Web.UI.ControlSkin
function System.Web.UI.ControlSkin.New(controlType, themeDelegate) end
---@param control System.Web.UI.Control
function System.Web.UI.ControlSkin:ApplySkin(control) end

---@class System.Web.UI.ControlSkinDelegate : System.MulticastDelegate
System.Web.UI.ControlSkinDelegate = {}
---@alias CS.System.Web.UI.ControlSkinDelegate System.Web.UI.ControlSkinDelegate
CS.System.Web.UI.ControlSkinDelegate = System.Web.UI.ControlSkinDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.ControlSkinDelegate
function System.Web.UI.ControlSkinDelegate.New(object, method) end
---@param control System.Web.UI.Control
---@return System.Web.UI.Control
function System.Web.UI.ControlSkinDelegate:Invoke(control) end
---@param control System.Web.UI.Control
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.ControlSkinDelegate:BeginInvoke(control, callback, object) end
---@param result System.IAsyncResult
---@return System.Web.UI.Control
function System.Web.UI.ControlSkinDelegate:EndInvoke(result) end

---@class System.Web.UI.ControlValuePropertyAttribute : System.Attribute
---@field Name string
---@field DefaultValue System.Object
System.Web.UI.ControlValuePropertyAttribute = {}
---@alias CS.System.Web.UI.ControlValuePropertyAttribute System.Web.UI.ControlValuePropertyAttribute
CS.System.Web.UI.ControlValuePropertyAttribute = System.Web.UI.ControlValuePropertyAttribute

---@overload fun(name: string) : System.Web.UI.ControlValuePropertyAttribute
---@overload fun(name: string, defaultValue: System.Object) : System.Web.UI.ControlValuePropertyAttribute
---@param name string
---@param type System.Type
---@param defaultValue string
---@return System.Web.UI.ControlValuePropertyAttribute
function System.Web.UI.ControlValuePropertyAttribute.New(name, type, defaultValue) end
---@param obj System.Object
---@return boolean
function System.Web.UI.ControlValuePropertyAttribute:Equals(obj) end
---@return number
function System.Web.UI.ControlValuePropertyAttribute:GetHashCode() end

---@class System.Web.UI.CssStyleCollection : System.Object
---@field Count number
---@field Item string
---@field Keys System.Collections.ICollection
---@field Item string
---@field Value string
System.Web.UI.CssStyleCollection = {}
---@alias CS.System.Web.UI.CssStyleCollection System.Web.UI.CssStyleCollection
CS.System.Web.UI.CssStyleCollection = System.Web.UI.CssStyleCollection

---@overload fun(self: System.Web.UI.CssStyleCollection, key: string, value: string)
---@param key System.Web.UI.HtmlTextWriterStyle
---@param value string
function System.Web.UI.CssStyleCollection:Add(key, value) end
function System.Web.UI.CssStyleCollection:Clear() end
---@overload fun(self: System.Web.UI.CssStyleCollection, key: string)
---@param key System.Web.UI.HtmlTextWriterStyle
function System.Web.UI.CssStyleCollection:Remove(key) end

---@class System.Web.UI.DataBinder : System.Object
---@field EnableCaching boolean
System.Web.UI.DataBinder = {}
---@alias CS.System.Web.UI.DataBinder System.Web.UI.DataBinder
CS.System.Web.UI.DataBinder = System.Web.UI.DataBinder

---@return System.Web.UI.DataBinder
function System.Web.UI.DataBinder.New() end
---@overload fun(container: System.Object, expression: string) : System.Object
---@param container System.Object
---@param expression string
---@param format string
---@return string
function System.Web.UI.DataBinder.Eval(container, expression, format) end
---@overload fun(container: System.Object, expr: string) : System.Object
---@param container System.Object
---@param propName string
---@param format string
---@return string
function System.Web.UI.DataBinder.GetIndexedPropertyValue(container, propName, format) end
---@overload fun(container: System.Object, propName: string) : System.Object
---@param container System.Object
---@param propName string
---@param format string
---@return string
function System.Web.UI.DataBinder.GetPropertyValue(container, propName, format) end
---@overload fun(container: System.Object, out_foundDataItem: boolean) : System.Object, boolean
---@param container System.Object
---@return System.Object
function System.Web.UI.DataBinder.GetDataItem(container) end
---@param type System.Type
---@return boolean
function System.Web.UI.DataBinder.IsBindableType(type) end

---@class System.Web.UI.DataBinding : System.Object
---@field Expression string
---@field PropertyName string
---@field PropertyType System.Type
System.Web.UI.DataBinding = {}
---@alias CS.System.Web.UI.DataBinding System.Web.UI.DataBinding
CS.System.Web.UI.DataBinding = System.Web.UI.DataBinding

---@param propertyName string
---@param propertyType System.Type
---@param expression string
---@return System.Web.UI.DataBinding
function System.Web.UI.DataBinding.New(propertyName, propertyType, expression) end
---@param obj System.Object
---@return boolean
function System.Web.UI.DataBinding:Equals(obj) end
---@return number
function System.Web.UI.DataBinding:GetHashCode() end

---@class System.Web.UI.DataBindingBuilder : System.Web.UI.CodeBuilder
System.Web.UI.DataBindingBuilder = {}
---@alias CS.System.Web.UI.DataBindingBuilder System.Web.UI.DataBindingBuilder
CS.System.Web.UI.DataBindingBuilder = System.Web.UI.DataBindingBuilder

---@param code string
---@param location System.Web.Compilation.ILocation
---@return System.Web.UI.DataBindingBuilder
function System.Web.UI.DataBindingBuilder.New(code, location) end

---@class System.Web.UI.DataBindingCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Web.UI.DataBinding
---@field RemovedBindings System.String[]
---@field SyncRoot System.Object
System.Web.UI.DataBindingCollection = {}
---@alias CS.System.Web.UI.DataBindingCollection System.Web.UI.DataBindingCollection
CS.System.Web.UI.DataBindingCollection = System.Web.UI.DataBindingCollection

---@return System.Web.UI.DataBindingCollection
function System.Web.UI.DataBindingCollection.New() end
---@param binding System.Web.UI.DataBinding
function System.Web.UI.DataBindingCollection:Add(binding) end
function System.Web.UI.DataBindingCollection:Clear() end
---@param array System.Array
---@param index number
function System.Web.UI.DataBindingCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.UI.DataBindingCollection:GetEnumerator() end
---@overload fun(self: System.Web.UI.DataBindingCollection, binding: System.Web.UI.DataBinding)
---@overload fun(self: System.Web.UI.DataBindingCollection, propertyName: string)
---@param propertyName string
---@param addToRemovedList boolean
function System.Web.UI.DataBindingCollection:Remove(propertyName, addToRemovedList) end
---@param propertyName string
---@return boolean
function System.Web.UI.DataBindingCollection:Contains(propertyName) end

---@class System.Web.UI.DataBoundLiteralControl : System.Web.UI.Control
---@field Text string
System.Web.UI.DataBoundLiteralControl = {}
---@alias CS.System.Web.UI.DataBoundLiteralControl System.Web.UI.DataBoundLiteralControl
CS.System.Web.UI.DataBoundLiteralControl = System.Web.UI.DataBoundLiteralControl

---@param staticLiteralsCount number
---@param dataBoundLiteralCount number
---@return System.Web.UI.DataBoundLiteralControl
function System.Web.UI.DataBoundLiteralControl.New(staticLiteralsCount, dataBoundLiteralCount) end
---@param index number
---@param s string
function System.Web.UI.DataBoundLiteralControl:SetDataBoundString(index, s) end
---@param index number
---@param s string
function System.Web.UI.DataBoundLiteralControl:SetStaticString(index, s) end

---@class System.Web.UI.DataSourceCacheDurationConverter : System.ComponentModel.Int32Converter
System.Web.UI.DataSourceCacheDurationConverter = {}
---@alias CS.System.Web.UI.DataSourceCacheDurationConverter System.Web.UI.DataSourceCacheDurationConverter
CS.System.Web.UI.DataSourceCacheDurationConverter = System.Web.UI.DataSourceCacheDurationConverter

---@return System.Web.UI.DataSourceCacheDurationConverter
function System.Web.UI.DataSourceCacheDurationConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Web.UI.DataSourceCacheDurationConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Web.UI.DataSourceCacheDurationConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Web.UI.DataSourceCacheDurationConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Web.UI.DataSourceCacheDurationConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.Web.UI.DataSourceCacheDurationConverter:GetStandardValues(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Web.UI.DataSourceCacheDurationConverter:GetStandardValuesExclusive(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Web.UI.DataSourceCacheDurationConverter:GetStandardValuesSupported(context) end

---@class System.Web.UI.DataSourceControl : System.Web.UI.Control
---@field ClientID string
---@field Controls System.Web.UI.ControlCollection
---@field EnableTheming boolean
---@field SkinID string
---@field Visible boolean
System.Web.UI.DataSourceControl = {}
---@alias CS.System.Web.UI.DataSourceControl System.Web.UI.DataSourceControl
CS.System.Web.UI.DataSourceControl = System.Web.UI.DataSourceControl

---@param page System.Web.UI.Page
function System.Web.UI.DataSourceControl:ApplyStyleSheetSkin(page) end
---@param id string
---@return System.Web.UI.Control
function System.Web.UI.DataSourceControl:FindControl(id) end
function System.Web.UI.DataSourceControl:Focus() end
---@return boolean
function System.Web.UI.DataSourceControl:HasControls() end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.DataSourceControl:RenderControl(writer) end

---@class System.Web.UI.DataSourceSelectArguments : System.Object
---@field Empty System.Web.UI.DataSourceSelectArguments
---@field MaximumRows number
---@field RetrieveTotalRowCount boolean
---@field SortExpression string
---@field StartRowIndex number
---@field TotalRowCount number
System.Web.UI.DataSourceSelectArguments = {}
---@alias CS.System.Web.UI.DataSourceSelectArguments System.Web.UI.DataSourceSelectArguments
CS.System.Web.UI.DataSourceSelectArguments = System.Web.UI.DataSourceSelectArguments

---@overload fun() : System.Web.UI.DataSourceSelectArguments
---@overload fun(sortExpression: string) : System.Web.UI.DataSourceSelectArguments
---@overload fun(startRowIndex: number, maximumRows: number) : System.Web.UI.DataSourceSelectArguments
---@param sortExpression string
---@param startRowIndex number
---@param maximumRows number
---@return System.Web.UI.DataSourceSelectArguments
function System.Web.UI.DataSourceSelectArguments.New(sortExpression, startRowIndex, maximumRows) end
---@param capabilities System.Web.UI.DataSourceCapabilities
function System.Web.UI.DataSourceSelectArguments:AddSupportedCapabilities(capabilities) end
---@param obj System.Object
---@return boolean
function System.Web.UI.DataSourceSelectArguments:Equals(obj) end
---@return number
function System.Web.UI.DataSourceSelectArguments:GetHashCode() end
---@param view System.Web.UI.DataSourceView
function System.Web.UI.DataSourceSelectArguments:RaiseUnsupportedCapabilitiesError(view) end

---@class System.Web.UI.DataSourceView : System.Object
---@field CanDelete boolean
---@field CanInsert boolean
---@field CanPage boolean
---@field CanRetrieveTotalRowCount boolean
---@field CanSort boolean
---@field CanUpdate boolean
---@field Name string
System.Web.UI.DataSourceView = {}
---@alias CS.System.Web.UI.DataSourceView System.Web.UI.DataSourceView
CS.System.Web.UI.DataSourceView = System.Web.UI.DataSourceView

---@param keys System.Collections.IDictionary
---@param oldValues System.Collections.IDictionary
---@param callback System.Web.UI.DataSourceViewOperationCallback
function System.Web.UI.DataSourceView:Delete(keys, oldValues, callback) end
---@param values System.Collections.IDictionary
---@param callback System.Web.UI.DataSourceViewOperationCallback
function System.Web.UI.DataSourceView:Insert(values, callback) end
---@param arguments System.Web.UI.DataSourceSelectArguments
---@param callback System.Web.UI.DataSourceViewSelectCallback
function System.Web.UI.DataSourceView:Select(arguments, callback) end
---@param keys System.Collections.IDictionary
---@param values System.Collections.IDictionary
---@param oldValues System.Collections.IDictionary
---@param callback System.Web.UI.DataSourceViewOperationCallback
function System.Web.UI.DataSourceView:Update(keys, values, oldValues, callback) end
---@param commandName string
---@return boolean
function System.Web.UI.DataSourceView:CanExecute(commandName) end
---@param commandName string
---@param keys System.Collections.IDictionary
---@param values System.Collections.IDictionary
---@param callback System.Web.UI.DataSourceViewOperationCallback
function System.Web.UI.DataSourceView:ExecuteCommand(commandName, keys, values, callback) end

---@class System.Web.UI.DataSourceViewOperationCallback : System.MulticastDelegate
System.Web.UI.DataSourceViewOperationCallback = {}
---@alias CS.System.Web.UI.DataSourceViewOperationCallback System.Web.UI.DataSourceViewOperationCallback
CS.System.Web.UI.DataSourceViewOperationCallback = System.Web.UI.DataSourceViewOperationCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.DataSourceViewOperationCallback
function System.Web.UI.DataSourceViewOperationCallback.New(object, method) end
---@param affectedRecords number
---@param ex System.Exception
---@return boolean
function System.Web.UI.DataSourceViewOperationCallback:Invoke(affectedRecords, ex) end
---@param affectedRecords number
---@param ex System.Exception
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.DataSourceViewOperationCallback:BeginInvoke(affectedRecords, ex, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Web.UI.DataSourceViewOperationCallback:EndInvoke(result) end

---@class System.Web.UI.DataSourceViewSelectCallback : System.MulticastDelegate
System.Web.UI.DataSourceViewSelectCallback = {}
---@alias CS.System.Web.UI.DataSourceViewSelectCallback System.Web.UI.DataSourceViewSelectCallback
CS.System.Web.UI.DataSourceViewSelectCallback = System.Web.UI.DataSourceViewSelectCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.DataSourceViewSelectCallback
function System.Web.UI.DataSourceViewSelectCallback.New(object, method) end
---@param data System.Collections.IEnumerable
function System.Web.UI.DataSourceViewSelectCallback:Invoke(data) end
---@param data System.Collections.IEnumerable
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.DataSourceViewSelectCallback:BeginInvoke(data, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.DataSourceViewSelectCallback:EndInvoke(result) end

---@class System.Web.UI.DesignTimeParseData : System.Object
---@field DataBindingHandler System.EventHandler
---@field DesignerHost System.ComponentModel.Design.IDesignerHost
---@field DocumentUrl string
---@field ParseText string
---@field Filter string
---@field ShouldApplyTheme boolean
---@field UserControlRegisterEntries System.Collections.ICollection
System.Web.UI.DesignTimeParseData = {}
---@alias CS.System.Web.UI.DesignTimeParseData System.Web.UI.DesignTimeParseData
CS.System.Web.UI.DesignTimeParseData = System.Web.UI.DesignTimeParseData

---@overload fun(designerHost: System.ComponentModel.Design.IDesignerHost, parseText: string) : System.Web.UI.DesignTimeParseData
---@param designerHost System.ComponentModel.Design.IDesignerHost
---@param parseText string
---@param filter string
---@return System.Web.UI.DesignTimeParseData
function System.Web.UI.DesignTimeParseData.New(designerHost, parseText, filter) end

---@class System.Web.UI.DesignTimeTemplateParser : System.Object
System.Web.UI.DesignTimeTemplateParser = {}
---@alias CS.System.Web.UI.DesignTimeTemplateParser System.Web.UI.DesignTimeTemplateParser
CS.System.Web.UI.DesignTimeTemplateParser = System.Web.UI.DesignTimeTemplateParser

---@param data System.Web.UI.DesignTimeParseData
---@return System.Web.UI.Control
function System.Web.UI.DesignTimeTemplateParser.ParseControl(data) end
---@param data System.Web.UI.DesignTimeParseData
---@return System.Web.UI.ITemplate
function System.Web.UI.DesignTimeTemplateParser.ParseTemplate(data) end
---@param data System.Web.UI.DesignTimeParseData
---@return System.Web.UI.Control[]
function System.Web.UI.DesignTimeTemplateParser.ParseControls(data) end
---@param host System.ComponentModel.Design.IDesignerHost
---@param theme string
---@param themePath string
---@return System.Web.UI.ControlBuilder
function System.Web.UI.DesignTimeTemplateParser.ParseTheme(host, theme, themePath) end

---@class System.Web.UI.DesignerDataBoundLiteralControl : System.Web.UI.Control
---@field Text string
System.Web.UI.DesignerDataBoundLiteralControl = {}
---@alias CS.System.Web.UI.DesignerDataBoundLiteralControl System.Web.UI.DesignerDataBoundLiteralControl
CS.System.Web.UI.DesignerDataBoundLiteralControl = System.Web.UI.DesignerDataBoundLiteralControl

---@return System.Web.UI.DesignerDataBoundLiteralControl
function System.Web.UI.DesignerDataBoundLiteralControl.New() end

---@class System.Web.UI.ExpressionBinding : System.Object
---@field Expression string
---@field ExpressionPrefix string
---@field Generated boolean
---@field PropertyName string
---@field PropertyType System.Type
---@field ParsedExpressionData System.Object
System.Web.UI.ExpressionBinding = {}
---@alias CS.System.Web.UI.ExpressionBinding System.Web.UI.ExpressionBinding
CS.System.Web.UI.ExpressionBinding = System.Web.UI.ExpressionBinding

---@param propertyName string
---@param propertyType System.Type
---@param expressionPrefix string
---@param expression string
---@return System.Web.UI.ExpressionBinding
function System.Web.UI.ExpressionBinding.New(propertyName, propertyType, expressionPrefix, expression) end
---@param obj System.Object
---@return boolean
function System.Web.UI.ExpressionBinding:Equals(obj) end
---@return number
function System.Web.UI.ExpressionBinding:GetHashCode() end

---@class System.Web.UI.ExpressionBindingCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Web.UI.ExpressionBinding
---@field RemovedBindings System.Collections.ICollection
---@field SyncRoot System.Object
System.Web.UI.ExpressionBindingCollection = {}
---@alias CS.System.Web.UI.ExpressionBindingCollection System.Web.UI.ExpressionBindingCollection
CS.System.Web.UI.ExpressionBindingCollection = System.Web.UI.ExpressionBindingCollection

---@return System.Web.UI.ExpressionBindingCollection
function System.Web.UI.ExpressionBindingCollection.New() end
---@param binding System.Web.UI.ExpressionBinding
function System.Web.UI.ExpressionBindingCollection:Add(binding) end
function System.Web.UI.ExpressionBindingCollection:Clear() end
---@param propName string
---@return boolean
function System.Web.UI.ExpressionBindingCollection:Contains(propName) end
---@overload fun(self: System.Web.UI.ExpressionBindingCollection, array: System.Array, index: number)
---@param array System.Web.UI.ExpressionBinding[]
---@param index number
function System.Web.UI.ExpressionBindingCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.UI.ExpressionBindingCollection:GetEnumerator() end
---@overload fun(self: System.Web.UI.ExpressionBindingCollection, binding: System.Web.UI.ExpressionBinding)
---@overload fun(self: System.Web.UI.ExpressionBindingCollection, propertyName: string)
---@param propertyName string
---@param addToRemovedList boolean
function System.Web.UI.ExpressionBindingCollection:Remove(propertyName, addToRemovedList) end

---@class System.Web.UI.ExtractTemplateValuesMethod : System.MulticastDelegate
System.Web.UI.ExtractTemplateValuesMethod = {}
---@alias CS.System.Web.UI.ExtractTemplateValuesMethod System.Web.UI.ExtractTemplateValuesMethod
CS.System.Web.UI.ExtractTemplateValuesMethod = System.Web.UI.ExtractTemplateValuesMethod

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.ExtractTemplateValuesMethod
function System.Web.UI.ExtractTemplateValuesMethod.New(object, method) end
---@param control System.Web.UI.Control
---@return System.Collections.Specialized.IOrderedDictionary
function System.Web.UI.ExtractTemplateValuesMethod:Invoke(control) end
---@param control System.Web.UI.Control
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.ExtractTemplateValuesMethod:BeginInvoke(control, callback, object) end
---@param result System.IAsyncResult
---@return System.Collections.Specialized.IOrderedDictionary
function System.Web.UI.ExtractTemplateValuesMethod:EndInvoke(result) end

---@class System.Web.UI.FileLevelMasterPageControlBuilder : System.Web.UI.FileLevelPageControlBuilder
System.Web.UI.FileLevelMasterPageControlBuilder = {}
---@alias CS.System.Web.UI.FileLevelMasterPageControlBuilder System.Web.UI.FileLevelMasterPageControlBuilder
CS.System.Web.UI.FileLevelMasterPageControlBuilder = System.Web.UI.FileLevelMasterPageControlBuilder

---@return System.Web.UI.FileLevelMasterPageControlBuilder
function System.Web.UI.FileLevelMasterPageControlBuilder.New() end

---@class System.Web.UI.FileLevelPageControlBuilder : System.Web.UI.RootBuilder
System.Web.UI.FileLevelPageControlBuilder = {}
---@alias CS.System.Web.UI.FileLevelPageControlBuilder System.Web.UI.FileLevelPageControlBuilder
CS.System.Web.UI.FileLevelPageControlBuilder = System.Web.UI.FileLevelPageControlBuilder

---@return System.Web.UI.FileLevelPageControlBuilder
function System.Web.UI.FileLevelPageControlBuilder.New() end
---@param text string
function System.Web.UI.FileLevelPageControlBuilder:AppendLiteralString(text) end
---@param subBuilder System.Web.UI.ControlBuilder
function System.Web.UI.FileLevelPageControlBuilder:AppendSubBuilder(subBuilder) end

---@class System.Web.UI.FileLevelUserControlBuilder : System.Web.UI.RootBuilder
System.Web.UI.FileLevelUserControlBuilder = {}
---@alias CS.System.Web.UI.FileLevelUserControlBuilder System.Web.UI.FileLevelUserControlBuilder
CS.System.Web.UI.FileLevelUserControlBuilder = System.Web.UI.FileLevelUserControlBuilder

---@return System.Web.UI.FileLevelUserControlBuilder
function System.Web.UI.FileLevelUserControlBuilder.New() end

---@class System.Web.UI.HiddenFieldPageStatePersister : System.Web.UI.PageStatePersister
System.Web.UI.HiddenFieldPageStatePersister = {}
---@alias CS.System.Web.UI.HiddenFieldPageStatePersister System.Web.UI.HiddenFieldPageStatePersister
CS.System.Web.UI.HiddenFieldPageStatePersister = System.Web.UI.HiddenFieldPageStatePersister

---@param page System.Web.UI.Page
---@return System.Web.UI.HiddenFieldPageStatePersister
function System.Web.UI.HiddenFieldPageStatePersister.New(page) end
function System.Web.UI.HiddenFieldPageStatePersister:Load() end
function System.Web.UI.HiddenFieldPageStatePersister:Save() end

---@class System.Web.UI.HierarchicalDataSourceControl : System.Web.UI.Control
---@field EnableTheming boolean
---@field SkinID string
---@field Visible boolean
System.Web.UI.HierarchicalDataSourceControl = {}
---@alias CS.System.Web.UI.HierarchicalDataSourceControl System.Web.UI.HierarchicalDataSourceControl
CS.System.Web.UI.HierarchicalDataSourceControl = System.Web.UI.HierarchicalDataSourceControl

---@param id string
---@return System.Web.UI.Control
function System.Web.UI.HierarchicalDataSourceControl:FindControl(id) end
---@return boolean
function System.Web.UI.HierarchicalDataSourceControl:HasControls() end
function System.Web.UI.HierarchicalDataSourceControl:Focus() end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.HierarchicalDataSourceControl:RenderControl(writer) end

---@class System.Web.UI.HierarchicalDataSourceView : System.Object
System.Web.UI.HierarchicalDataSourceView = {}
---@alias CS.System.Web.UI.HierarchicalDataSourceView System.Web.UI.HierarchicalDataSourceView
CS.System.Web.UI.HierarchicalDataSourceView = System.Web.UI.HierarchicalDataSourceView

---@return System.Web.UI.IHierarchicalEnumerable
function System.Web.UI.HierarchicalDataSourceView:Select() end

---@class System.Web.UI.Html32TextWriter : System.Web.UI.HtmlTextWriter
---@field ShouldPerformDivTableSubstitution boolean
---@field SupportsBold boolean
---@field SupportsItalic boolean
System.Web.UI.Html32TextWriter = {}
---@alias CS.System.Web.UI.Html32TextWriter System.Web.UI.Html32TextWriter
CS.System.Web.UI.Html32TextWriter = System.Web.UI.Html32TextWriter

---@overload fun(writer: System.IO.TextWriter) : System.Web.UI.Html32TextWriter
---@param writer System.IO.TextWriter
---@param tabString string
---@return System.Web.UI.Html32TextWriter
function System.Web.UI.Html32TextWriter.New(writer, tabString) end
---@param tagKey System.Web.UI.HtmlTextWriterTag
function System.Web.UI.Html32TextWriter:RenderBeginTag(tagKey) end
function System.Web.UI.Html32TextWriter:RenderEndTag() end

---@class System.Web.UI.HtmlControlPersistableAttribute : System.Attribute
---@field Persist boolean
System.Web.UI.HtmlControlPersistableAttribute = {}
---@alias CS.System.Web.UI.HtmlControlPersistableAttribute System.Web.UI.HtmlControlPersistableAttribute
CS.System.Web.UI.HtmlControlPersistableAttribute = System.Web.UI.HtmlControlPersistableAttribute

---@param persist boolean
---@return System.Web.UI.HtmlControlPersistableAttribute
function System.Web.UI.HtmlControlPersistableAttribute.New(persist) end

---@class System.Web.UI.HtmlTextWriter : System.IO.TextWriter
---@field DefaultTabString string
---@field DoubleQuoteChar System.Char
---@field EndTagLeftChars string
---@field EqualsChar System.Char
---@field EqualsDoubleQuoteString string
---@field SelfClosingChars string
---@field SelfClosingTagEnd string
---@field SemicolonChar System.Char
---@field SingleQuoteChar System.Char
---@field SlashChar System.Char
---@field SpaceChar System.Char
---@field StyleEqualsChar System.Char
---@field TagLeftChar System.Char
---@field TagRightChar System.Char
---@field Encoding System.Text.Encoding
---@field Indent number
---@field InnerWriter System.IO.TextWriter
---@field NewLine string
System.Web.UI.HtmlTextWriter = {}
---@alias CS.System.Web.UI.HtmlTextWriter System.Web.UI.HtmlTextWriter
CS.System.Web.UI.HtmlTextWriter = System.Web.UI.HtmlTextWriter

---@overload fun(writer: System.IO.TextWriter) : System.Web.UI.HtmlTextWriter
---@param writer System.IO.TextWriter
---@param tabString string
---@return System.Web.UI.HtmlTextWriter
function System.Web.UI.HtmlTextWriter.New(writer, tabString) end
---@overload fun(self: System.Web.UI.HtmlTextWriter, key: System.Web.UI.HtmlTextWriterAttribute, value: string, fEncode: boolean)
---@overload fun(self: System.Web.UI.HtmlTextWriter, key: System.Web.UI.HtmlTextWriterAttribute, value: string)
---@overload fun(self: System.Web.UI.HtmlTextWriter, name: string, value: string, fEndode: boolean)
---@param name string
---@param value string
function System.Web.UI.HtmlTextWriter:AddAttribute(name, value) end
---@overload fun(self: System.Web.UI.HtmlTextWriter, name: string, value: string)
---@param key System.Web.UI.HtmlTextWriterStyle
---@param value string
function System.Web.UI.HtmlTextWriter:AddStyleAttribute(key, value) end
function System.Web.UI.HtmlTextWriter:Close() end
function System.Web.UI.HtmlTextWriter:Flush() end
---@overload fun(self: System.Web.UI.HtmlTextWriter, tagName: string)
---@param tagKey System.Web.UI.HtmlTextWriterTag
function System.Web.UI.HtmlTextWriter:RenderBeginTag(tagKey) end
function System.Web.UI.HtmlTextWriter:RenderEndTag() end
---@overload fun(self: System.Web.UI.HtmlTextWriter, name: string, value: string, fEncode: boolean)
---@param name string
---@param value string
function System.Web.UI.HtmlTextWriter:WriteAttribute(name, value) end
---@param tagName string
function System.Web.UI.HtmlTextWriter:WriteBeginTag(tagName) end
---@param tagName string
function System.Web.UI.HtmlTextWriter:WriteEndTag(tagName) end
---@param tagName string
function System.Web.UI.HtmlTextWriter:WriteFullBeginTag(tagName) end
---@overload fun(self: System.Web.UI.HtmlTextWriter, name: string, value: string)
---@param name string
---@param value string
---@param fEncode boolean
function System.Web.UI.HtmlTextWriter:WriteStyleAttribute(name, value, fEncode) end
---@overload fun(self: System.Web.UI.HtmlTextWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: System.Char)
---@overload fun(self: System.Web.UI.HtmlTextWriter, buffer: System.Char[])
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, format: string, arg0: System.Object)
---@overload fun(self: System.Web.UI.HtmlTextWriter, format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(self: System.Web.UI.HtmlTextWriter, format: string, arg: System.Object[])
---@overload fun(self: System.Web.UI.HtmlTextWriter, s: string)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: System.Object)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@param value boolean
function System.Web.UI.HtmlTextWriter:Write(value) end
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: System.Char)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: System.Object)
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, buffer: System.Char[])
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: boolean)
---@overload fun()
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(self: System.Web.UI.HtmlTextWriter, format: string, arg0: System.Object)
---@overload fun(self: System.Web.UI.HtmlTextWriter, format: string, arg: System.Object[])
---@overload fun(self: System.Web.UI.HtmlTextWriter, value: number)
---@overload fun(self: System.Web.UI.HtmlTextWriter, s: string)
---@param value number
function System.Web.UI.HtmlTextWriter:WriteLine(value) end
---@param s string
function System.Web.UI.HtmlTextWriter:WriteLineNoTabs(s) end
---@param attribute string
---@return boolean
function System.Web.UI.HtmlTextWriter:IsValidFormAttribute(attribute) end
function System.Web.UI.HtmlTextWriter:WriteBreak() end
---@param text string
function System.Web.UI.HtmlTextWriter:WriteEncodedText(text) end
---@param url string
function System.Web.UI.HtmlTextWriter:WriteEncodedUrl(url) end
---@param urlText string
function System.Web.UI.HtmlTextWriter:WriteEncodedUrlParameter(urlText) end
---@overload fun(self: System.Web.UI.HtmlTextWriter, style: System.Web.UI.WebControls.Style)
---@param style System.Web.UI.WebControls.Style
---@param tag System.Web.UI.HtmlTextWriterTag
function System.Web.UI.HtmlTextWriter:EnterStyle(style, tag) end
---@overload fun(self: System.Web.UI.HtmlTextWriter, style: System.Web.UI.WebControls.Style)
---@param style System.Web.UI.WebControls.Style
---@param tag System.Web.UI.HtmlTextWriterTag
function System.Web.UI.HtmlTextWriter:ExitStyle(style, tag) end
function System.Web.UI.HtmlTextWriter:BeginRender() end
function System.Web.UI.HtmlTextWriter:EndRender() end

---@class System.Web.UI.HtmlTextWriter.AddedTag : System.ValueType
---@field name string
---@field key System.Web.UI.HtmlTextWriterTag
---@field ignore boolean
System.Web.UI.HtmlTextWriter.AddedTag = {}
---@alias CS.System.Web.UI.HtmlTextWriter.AddedTag System.Web.UI.HtmlTextWriter.AddedTag
CS.System.Web.UI.HtmlTextWriter.AddedTag = System.Web.UI.HtmlTextWriter.AddedTag


---@class System.Web.UI.HtmlTextWriter.AddedStyle : System.ValueType
---@field name string
---@field key System.Web.UI.HtmlTextWriterStyle
---@field value string
System.Web.UI.HtmlTextWriter.AddedStyle = {}
---@alias CS.System.Web.UI.HtmlTextWriter.AddedStyle System.Web.UI.HtmlTextWriter.AddedStyle
CS.System.Web.UI.HtmlTextWriter.AddedStyle = System.Web.UI.HtmlTextWriter.AddedStyle


---@class System.Web.UI.HtmlTextWriter.AddedAttr : System.ValueType
---@field name string
---@field key System.Web.UI.HtmlTextWriterAttribute
---@field value string
System.Web.UI.HtmlTextWriter.AddedAttr = {}
---@alias CS.System.Web.UI.HtmlTextWriter.AddedAttr System.Web.UI.HtmlTextWriter.AddedAttr
CS.System.Web.UI.HtmlTextWriter.AddedAttr = System.Web.UI.HtmlTextWriter.AddedAttr


---@class System.Web.UI.HtmlTextWriter.TagType
---@field Block System.Web.UI.HtmlTextWriter.TagType
---@field Inline System.Web.UI.HtmlTextWriter.TagType
---@field SelfClosing System.Web.UI.HtmlTextWriter.TagType
System.Web.UI.HtmlTextWriter.TagType = {}
---@alias CS.System.Web.UI.HtmlTextWriter.TagType System.Web.UI.HtmlTextWriter.TagType
CS.System.Web.UI.HtmlTextWriter.TagType = System.Web.UI.HtmlTextWriter.TagType


---@class System.Web.UI.HtmlTextWriter.HtmlTag : System.Object
---@field key System.Web.UI.HtmlTextWriterTag
---@field name string
---@field tag_type System.Web.UI.HtmlTextWriter.TagType
System.Web.UI.HtmlTextWriter.HtmlTag = {}
---@alias CS.System.Web.UI.HtmlTextWriter.HtmlTag System.Web.UI.HtmlTextWriter.HtmlTag
CS.System.Web.UI.HtmlTextWriter.HtmlTag = System.Web.UI.HtmlTextWriter.HtmlTag

---@param k System.Web.UI.HtmlTextWriterTag
---@param n string
---@param tt System.Web.UI.HtmlTextWriter.TagType
---@return System.Web.UI.HtmlTextWriter.HtmlTag
function System.Web.UI.HtmlTextWriter.HtmlTag.New(k, n, tt) end

---@class System.Web.UI.HtmlTextWriter.HtmlStyle : System.Object
---@field key System.Web.UI.HtmlTextWriterStyle
---@field name string
System.Web.UI.HtmlTextWriter.HtmlStyle = {}
---@alias CS.System.Web.UI.HtmlTextWriter.HtmlStyle System.Web.UI.HtmlTextWriter.HtmlStyle
CS.System.Web.UI.HtmlTextWriter.HtmlStyle = System.Web.UI.HtmlTextWriter.HtmlStyle

---@param k System.Web.UI.HtmlTextWriterStyle
---@param n string
---@return System.Web.UI.HtmlTextWriter.HtmlStyle
function System.Web.UI.HtmlTextWriter.HtmlStyle.New(k, n) end

---@class System.Web.UI.HtmlTextWriter.HtmlAttribute : System.Object
---@field key System.Web.UI.HtmlTextWriterAttribute
---@field name string
System.Web.UI.HtmlTextWriter.HtmlAttribute = {}
---@alias CS.System.Web.UI.HtmlTextWriter.HtmlAttribute System.Web.UI.HtmlTextWriter.HtmlAttribute
CS.System.Web.UI.HtmlTextWriter.HtmlAttribute = System.Web.UI.HtmlTextWriter.HtmlAttribute

---@param k System.Web.UI.HtmlTextWriterAttribute
---@param n string
---@return System.Web.UI.HtmlTextWriter.HtmlAttribute
function System.Web.UI.HtmlTextWriter.HtmlAttribute.New(k, n) end

---@class System.Web.UI.IScriptManager
System.Web.UI.IScriptManager = {}
---@alias CS.System.Web.UI.IScriptManager System.Web.UI.IScriptManager
CS.System.Web.UI.IScriptManager = System.Web.UI.IScriptManager

---@param control System.Web.UI.Control
---@param type System.Type
---@param key string
---@param script string
function System.Web.UI.IScriptManager:RegisterOnSubmitStatementExternal(control, type, key, script) end
---@param control System.Web.UI.Control
---@param controlId string
---@param attributeName string
---@param attributeValue string
---@param encode boolean
function System.Web.UI.IScriptManager:RegisterExpandoAttributeExternal(control, controlId, attributeName, attributeValue, encode) end
---@param control System.Web.UI.Control
---@param hiddenFieldName string
---@param hiddenFieldInitialValue string
function System.Web.UI.IScriptManager:RegisterHiddenFieldExternal(control, hiddenFieldName, hiddenFieldInitialValue) end
---@param control System.Web.UI.Control
---@param type System.Type
---@param key string
---@param script string
---@param addScriptTags boolean
function System.Web.UI.IScriptManager:RegisterStartupScriptExternal(control, type, key, script, addScriptTags) end
---@param control System.Web.UI.Control
---@param arrayName string
---@param arrayValue string
function System.Web.UI.IScriptManager:RegisterArrayDeclarationExternal(control, arrayName, arrayValue) end
---@param control System.Web.UI.Control
---@param type System.Type
---@param key string
---@param script string
---@param addScriptTags boolean
function System.Web.UI.IScriptManager:RegisterClientScriptBlockExternal(control, type, key, script, addScriptTags) end
---@param control System.Web.UI.Control
---@param type System.Type
---@param key string
---@param url string
function System.Web.UI.IScriptManager:RegisterClientScriptIncludeExternal(control, type, key, url) end
---@param control System.Web.UI.Control
---@param type System.Type
---@param resourceName string
function System.Web.UI.IScriptManager:RegisterClientScriptResourceExternal(control, type, resourceName) end

---@class System.Web.UI.ITagNameToTypeMapper
System.Web.UI.ITagNameToTypeMapper = {}
---@alias CS.System.Web.UI.ITagNameToTypeMapper System.Web.UI.ITagNameToTypeMapper
CS.System.Web.UI.ITagNameToTypeMapper = System.Web.UI.ITagNameToTypeMapper

---@param tagName string
---@param attribs System.Collections.IDictionary
---@return System.Type
function System.Web.UI.ITagNameToTypeMapper:GetControlType(tagName, attribs) end

---@class System.Web.UI.IgnoreUnknownContentAttribute : System.Attribute
System.Web.UI.IgnoreUnknownContentAttribute = {}
---@alias CS.System.Web.UI.IgnoreUnknownContentAttribute System.Web.UI.IgnoreUnknownContentAttribute
CS.System.Web.UI.IgnoreUnknownContentAttribute = System.Web.UI.IgnoreUnknownContentAttribute

---@return System.Web.UI.IgnoreUnknownContentAttribute
function System.Web.UI.IgnoreUnknownContentAttribute.New() end

---@class System.Web.UI.ListSourceHelper : System.Object
System.Web.UI.ListSourceHelper = {}
---@alias CS.System.Web.UI.ListSourceHelper System.Web.UI.ListSourceHelper
CS.System.Web.UI.ListSourceHelper = System.Web.UI.ListSourceHelper

---@param dataSource System.Web.UI.IDataSource
---@return boolean
function System.Web.UI.ListSourceHelper.ContainsListCollection(dataSource) end
---@param dataSource System.Web.UI.IDataSource
---@return System.Collections.IList
function System.Web.UI.ListSourceHelper.GetList(dataSource) end

---@class System.Web.UI.ListSourceHelper.ListSourceList : System.Collections.Generic.List
---@field Item System.Web.UI.ListSourceHelper.ListSourceList -- infered from System.Collections.Generic.List`1[System.Web.UI.IDataSource]
System.Web.UI.ListSourceHelper.ListSourceList = {}
---@alias CS.System.Web.UI.ListSourceHelper.ListSourceList System.Web.UI.ListSourceHelper.ListSourceList
CS.System.Web.UI.ListSourceHelper.ListSourceList = System.Web.UI.ListSourceHelper.ListSourceList

---@return System.Web.UI.ListSourceHelper.ListSourceList
function System.Web.UI.ListSourceHelper.ListSourceList.New() end

---@class System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor : System.ComponentModel.PropertyDescriptor
---@field ComponentType System.Type
---@field IsReadOnly boolean
---@field PropertyType System.Type
System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor = {}
---@alias CS.System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor
CS.System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor = System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor

---@overload fun(descr: System.ComponentModel.MemberDescriptor) : System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor
---@overload fun(name: string, attrs: System.Attribute[]) : System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor
---@param descr System.ComponentModel.MemberDescriptor
---@param attrs System.Attribute[]
---@return System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor
function System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor.New(descr, attrs) end
---@param component System.Object
---@return boolean
function System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor:CanResetValue(component) end
---@param component System.Object
---@return System.Object
function System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor:GetValue(component) end
---@param component System.Object
function System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor:ResetValue(component) end
---@param component System.Object
---@param value System.Object
function System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor:SetValue(component, value) end
---@param component System.Object
---@return boolean
function System.Web.UI.ListSourceHelper.ListSourcePropertyDescriptor:ShouldSerializeValue(component) end

---@class System.Web.UI.LiteralControl : System.Web.UI.Control
---@field Text string
System.Web.UI.LiteralControl = {}
---@alias CS.System.Web.UI.LiteralControl System.Web.UI.LiteralControl
CS.System.Web.UI.LiteralControl = System.Web.UI.LiteralControl

---@overload fun() : System.Web.UI.LiteralControl
---@param text string
---@return System.Web.UI.LiteralControl
function System.Web.UI.LiteralControl.New(text) end

---@class System.Web.UI.LosFormatter : System.Object
System.Web.UI.LosFormatter = {}
---@alias CS.System.Web.UI.LosFormatter System.Web.UI.LosFormatter
CS.System.Web.UI.LosFormatter = System.Web.UI.LosFormatter

---@overload fun() : System.Web.UI.LosFormatter
---@overload fun(enableMac: boolean, macKeyModifier: string) : System.Web.UI.LosFormatter
---@param enableMac boolean
---@param macKeyModifier System.Byte[]
---@return System.Web.UI.LosFormatter
function System.Web.UI.LosFormatter.New(enableMac, macKeyModifier) end
---@overload fun(self: System.Web.UI.LosFormatter, stream: System.IO.Stream) : System.Object
---@overload fun(self: System.Web.UI.LosFormatter, input: System.IO.TextReader) : System.Object
---@param input string
---@return System.Object
function System.Web.UI.LosFormatter:Deserialize(input) end
---@overload fun(self: System.Web.UI.LosFormatter, stream: System.IO.Stream, value: System.Object)
---@param output System.IO.TextWriter
---@param value System.Object
function System.Web.UI.LosFormatter:Serialize(output, value) end

---@class System.Web.UI.MainDirectiveAttribute : System.Object
---@field UnparsedValue string
---@field IsExpression boolean
---@field Value T
System.Web.UI.MainDirectiveAttribute = {}
---@alias CS.System.Web.UI.MainDirectiveAttribute System.Web.UI.MainDirectiveAttribute
CS.System.Web.UI.MainDirectiveAttribute = System.Web.UI.MainDirectiveAttribute

---@overload fun(value: string) : System.Web.UI.MainDirectiveAttribute
---@param value T
---@param unused boolean
---@return System.Web.UI.MainDirectiveAttribute
function System.Web.UI.MainDirectiveAttribute.New(value, unused) end

---@class System.Web.UI.MasterPage : System.Web.UI.UserControl
---@field MasterPageFile string
---@field Master System.Web.UI.MasterPage
System.Web.UI.MasterPage = {}
---@alias CS.System.Web.UI.MasterPage System.Web.UI.MasterPage
CS.System.Web.UI.MasterPage = System.Web.UI.MasterPage

---@return System.Web.UI.MasterPage
function System.Web.UI.MasterPage.New() end
---@param contentPlaceHolder System.Web.UI.Control
---@param template System.Web.UI.ITemplate
function System.Web.UI.MasterPage:InstantiateInContentPlaceHolder(contentPlaceHolder, template) end

---@class System.Web.UI.MasterPageControlBuilder : System.Web.UI.UserControlControlBuilder
System.Web.UI.MasterPageControlBuilder = {}
---@alias CS.System.Web.UI.MasterPageControlBuilder System.Web.UI.MasterPageControlBuilder
CS.System.Web.UI.MasterPageControlBuilder = System.Web.UI.MasterPageControlBuilder

---@return System.Web.UI.MasterPageControlBuilder
function System.Web.UI.MasterPageControlBuilder.New() end

---@class System.Web.UI.MasterPageParser : System.Web.UI.UserControlParser
System.Web.UI.MasterPageParser = {}
---@alias CS.System.Web.UI.MasterPageParser System.Web.UI.MasterPageParser
CS.System.Web.UI.MasterPageParser = System.Web.UI.MasterPageParser

---@param virtualPath string
---@param inputFile string
---@param context System.Web.HttpContext
---@return System.Web.UI.MasterPage
function System.Web.UI.MasterPageParser.GetCompiledMasterInstance(virtualPath, inputFile, context) end
---@param virtualPath string
---@param inputFile string
---@param context System.Web.HttpContext
---@return System.Type
function System.Web.UI.MasterPageParser.GetCompiledMasterType(virtualPath, inputFile, context) end

---@class System.Web.UI.MinimizableAttributeTypeConverter : System.ComponentModel.TypeConverter
System.Web.UI.MinimizableAttributeTypeConverter = {}
---@alias CS.System.Web.UI.MinimizableAttributeTypeConverter System.Web.UI.MinimizableAttributeTypeConverter
CS.System.Web.UI.MinimizableAttributeTypeConverter = System.Web.UI.MinimizableAttributeTypeConverter

---@return System.Web.UI.MinimizableAttributeTypeConverter
function System.Web.UI.MinimizableAttributeTypeConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Web.UI.MinimizableAttributeTypeConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Web.UI.MinimizableAttributeTypeConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Web.UI.MinimizableAttributeTypeConverter:ConvertFrom(context, culture, value) end

---@class System.Web.UI.ObjectConverter : System.Object
System.Web.UI.ObjectConverter = {}
---@alias CS.System.Web.UI.ObjectConverter System.Web.UI.ObjectConverter
CS.System.Web.UI.ObjectConverter = System.Web.UI.ObjectConverter

---@return System.Web.UI.ObjectConverter
function System.Web.UI.ObjectConverter.New() end
---@param value System.Object
---@param toType System.Type
---@param formatString string
---@return System.Object
function System.Web.UI.ObjectConverter.ConvertValue(value, toType, formatString) end

---@class System.Web.UI.ObjectPersistData : System.Object
---@field AllPropertyEntries System.Collections.ICollection
---@field BuiltObjects System.Collections.IDictionary
---@field CollectionItems System.Collections.ICollection
---@field EventEntries System.Collections.ICollection
---@field IsCollection boolean
---@field Localize boolean
---@field ObjectType System.Type
---@field ResourceKey string
System.Web.UI.ObjectPersistData = {}
---@alias CS.System.Web.UI.ObjectPersistData System.Web.UI.ObjectPersistData
CS.System.Web.UI.ObjectPersistData = System.Web.UI.ObjectPersistData

---@param builder System.Web.UI.ControlBuilder
---@param builtObjects System.Collections.IDictionary
---@return System.Web.UI.ObjectPersistData
function System.Web.UI.ObjectPersistData.New(builder, builtObjects) end
---@param table System.Collections.IDictionary
function System.Web.UI.ObjectPersistData:AddToObjectControlBuilderTable(table) end
---@param filter string
---@return System.Collections.IDictionary
function System.Web.UI.ObjectPersistData:GetFilteredProperties(filter) end
---@param filter string
---@param name string
---@return System.Web.UI.PropertyEntry
function System.Web.UI.ObjectPersistData:GetFilteredProperty(filter, name) end
---@param name string
---@return System.Collections.ICollection
function System.Web.UI.ObjectPersistData:GetPropertyAllFilters(name) end

---@class System.Web.UI.ObjectStateFormatter : System.Object
System.Web.UI.ObjectStateFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter System.Web.UI.ObjectStateFormatter
CS.System.Web.UI.ObjectStateFormatter = System.Web.UI.ObjectStateFormatter

---@return System.Web.UI.ObjectStateFormatter
function System.Web.UI.ObjectStateFormatter.New() end
---@overload fun(self: System.Web.UI.ObjectStateFormatter, inputStream: System.IO.Stream) : System.Object
---@param inputString string
---@return System.Object
function System.Web.UI.ObjectStateFormatter:Deserialize(inputString) end
---@overload fun(self: System.Web.UI.ObjectStateFormatter, stateGraph: System.Object) : string
---@param outputStream System.IO.Stream
---@param stateGraph System.Object
function System.Web.UI.ObjectStateFormatter:Serialize(outputStream, stateGraph) end

---@class System.Web.UI.ObjectStateFormatter.WriterContext : System.Object
---@field Key number
System.Web.UI.ObjectStateFormatter.WriterContext = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.WriterContext System.Web.UI.ObjectStateFormatter.WriterContext
CS.System.Web.UI.ObjectStateFormatter.WriterContext = System.Web.UI.ObjectStateFormatter.WriterContext

---@return System.Web.UI.ObjectStateFormatter.WriterContext
function System.Web.UI.ObjectStateFormatter.WriterContext.New() end
---@param o System.Object
---@return boolean
function System.Web.UI.ObjectStateFormatter.WriterContext:RegisterCache(o) end

---@class System.Web.UI.ObjectStateFormatter.ReaderContext : System.Object
System.Web.UI.ObjectStateFormatter.ReaderContext = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.ReaderContext System.Web.UI.ObjectStateFormatter.ReaderContext
CS.System.Web.UI.ObjectStateFormatter.ReaderContext = System.Web.UI.ObjectStateFormatter.ReaderContext

---@return System.Web.UI.ObjectStateFormatter.ReaderContext
function System.Web.UI.ObjectStateFormatter.ReaderContext.New() end
---@param o System.Object
function System.Web.UI.ObjectStateFormatter.ReaderContext:CacheItem(o) end
---@param key number
---@return System.Object
function System.Web.UI.ObjectStateFormatter.ReaderContext:GetCache(key) end

---@class System.Web.UI.ObjectStateFormatter.ObjectFormatter : System.Object
System.Web.UI.ObjectStateFormatter.ObjectFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.ObjectFormatter System.Web.UI.ObjectStateFormatter.ObjectFormatter
CS.System.Web.UI.ObjectStateFormatter.ObjectFormatter = System.Web.UI.ObjectStateFormatter.ObjectFormatter

---@return System.Web.UI.ObjectStateFormatter.ObjectFormatter
function System.Web.UI.ObjectStateFormatter.ObjectFormatter.New() end
---@param w System.IO.BinaryWriter
---@param o System.Object
---@param ctx System.Web.UI.ObjectStateFormatter.WriterContext
function System.Web.UI.ObjectStateFormatter.ObjectFormatter.WriteObject(w, o, ctx) end
---@param r System.IO.BinaryReader
---@param ctx System.Web.UI.ObjectStateFormatter.ReaderContext
---@return System.Object
function System.Web.UI.ObjectStateFormatter.ObjectFormatter.ReadObject(r, ctx) end
function System.Web.UI.ObjectStateFormatter.ObjectFormatter:Register() end

---@class System.Web.UI.ObjectStateFormatter.StringFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.StringFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.StringFormatter System.Web.UI.ObjectStateFormatter.StringFormatter
CS.System.Web.UI.ObjectStateFormatter.StringFormatter = System.Web.UI.ObjectStateFormatter.StringFormatter

---@return System.Web.UI.ObjectStateFormatter.StringFormatter
function System.Web.UI.ObjectStateFormatter.StringFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.IndexedStringFormatter : System.Web.UI.ObjectStateFormatter.StringFormatter
System.Web.UI.ObjectStateFormatter.IndexedStringFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.IndexedStringFormatter System.Web.UI.ObjectStateFormatter.IndexedStringFormatter
CS.System.Web.UI.ObjectStateFormatter.IndexedStringFormatter = System.Web.UI.ObjectStateFormatter.IndexedStringFormatter

---@return System.Web.UI.ObjectStateFormatter.IndexedStringFormatter
function System.Web.UI.ObjectStateFormatter.IndexedStringFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.Int64Formatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.Int64Formatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.Int64Formatter System.Web.UI.ObjectStateFormatter.Int64Formatter
CS.System.Web.UI.ObjectStateFormatter.Int64Formatter = System.Web.UI.ObjectStateFormatter.Int64Formatter

---@return System.Web.UI.ObjectStateFormatter.Int64Formatter
function System.Web.UI.ObjectStateFormatter.Int64Formatter.New() end

---@class System.Web.UI.ObjectStateFormatter.Int32Formatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.Int32Formatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.Int32Formatter System.Web.UI.ObjectStateFormatter.Int32Formatter
CS.System.Web.UI.ObjectStateFormatter.Int32Formatter = System.Web.UI.ObjectStateFormatter.Int32Formatter

---@return System.Web.UI.ObjectStateFormatter.Int32Formatter
function System.Web.UI.ObjectStateFormatter.Int32Formatter.New() end

---@class System.Web.UI.ObjectStateFormatter.Int16Formatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.Int16Formatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.Int16Formatter System.Web.UI.ObjectStateFormatter.Int16Formatter
CS.System.Web.UI.ObjectStateFormatter.Int16Formatter = System.Web.UI.ObjectStateFormatter.Int16Formatter

---@return System.Web.UI.ObjectStateFormatter.Int16Formatter
function System.Web.UI.ObjectStateFormatter.Int16Formatter.New() end

---@class System.Web.UI.ObjectStateFormatter.ByteFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.ByteFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.ByteFormatter System.Web.UI.ObjectStateFormatter.ByteFormatter
CS.System.Web.UI.ObjectStateFormatter.ByteFormatter = System.Web.UI.ObjectStateFormatter.ByteFormatter

---@return System.Web.UI.ObjectStateFormatter.ByteFormatter
function System.Web.UI.ObjectStateFormatter.ByteFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.BooleanFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.BooleanFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.BooleanFormatter System.Web.UI.ObjectStateFormatter.BooleanFormatter
CS.System.Web.UI.ObjectStateFormatter.BooleanFormatter = System.Web.UI.ObjectStateFormatter.BooleanFormatter

---@return System.Web.UI.ObjectStateFormatter.BooleanFormatter
function System.Web.UI.ObjectStateFormatter.BooleanFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.CharFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.CharFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.CharFormatter System.Web.UI.ObjectStateFormatter.CharFormatter
CS.System.Web.UI.ObjectStateFormatter.CharFormatter = System.Web.UI.ObjectStateFormatter.CharFormatter

---@return System.Web.UI.ObjectStateFormatter.CharFormatter
function System.Web.UI.ObjectStateFormatter.CharFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.DateTimeFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.DateTimeFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.DateTimeFormatter System.Web.UI.ObjectStateFormatter.DateTimeFormatter
CS.System.Web.UI.ObjectStateFormatter.DateTimeFormatter = System.Web.UI.ObjectStateFormatter.DateTimeFormatter

---@return System.Web.UI.ObjectStateFormatter.DateTimeFormatter
function System.Web.UI.ObjectStateFormatter.DateTimeFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.PairFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.PairFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.PairFormatter System.Web.UI.ObjectStateFormatter.PairFormatter
CS.System.Web.UI.ObjectStateFormatter.PairFormatter = System.Web.UI.ObjectStateFormatter.PairFormatter

---@return System.Web.UI.ObjectStateFormatter.PairFormatter
function System.Web.UI.ObjectStateFormatter.PairFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.TripletFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.TripletFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.TripletFormatter System.Web.UI.ObjectStateFormatter.TripletFormatter
CS.System.Web.UI.ObjectStateFormatter.TripletFormatter = System.Web.UI.ObjectStateFormatter.TripletFormatter

---@return System.Web.UI.ObjectStateFormatter.TripletFormatter
function System.Web.UI.ObjectStateFormatter.TripletFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.ArrayListFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.ArrayListFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.ArrayListFormatter System.Web.UI.ObjectStateFormatter.ArrayListFormatter
CS.System.Web.UI.ObjectStateFormatter.ArrayListFormatter = System.Web.UI.ObjectStateFormatter.ArrayListFormatter

---@return System.Web.UI.ObjectStateFormatter.ArrayListFormatter
function System.Web.UI.ObjectStateFormatter.ArrayListFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.HashtableFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.HashtableFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.HashtableFormatter System.Web.UI.ObjectStateFormatter.HashtableFormatter
CS.System.Web.UI.ObjectStateFormatter.HashtableFormatter = System.Web.UI.ObjectStateFormatter.HashtableFormatter

---@return System.Web.UI.ObjectStateFormatter.HashtableFormatter
function System.Web.UI.ObjectStateFormatter.HashtableFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter
CS.System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter = System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter

---@return System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter
function System.Web.UI.ObjectStateFormatter.ObjectArrayFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.ColorFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.ColorFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.ColorFormatter System.Web.UI.ObjectStateFormatter.ColorFormatter
CS.System.Web.UI.ObjectStateFormatter.ColorFormatter = System.Web.UI.ObjectStateFormatter.ColorFormatter

---@return System.Web.UI.ObjectStateFormatter.ColorFormatter
function System.Web.UI.ObjectStateFormatter.ColorFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.EnumFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.EnumFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.EnumFormatter System.Web.UI.ObjectStateFormatter.EnumFormatter
CS.System.Web.UI.ObjectStateFormatter.EnumFormatter = System.Web.UI.ObjectStateFormatter.EnumFormatter

---@return System.Web.UI.ObjectStateFormatter.EnumFormatter
function System.Web.UI.ObjectStateFormatter.EnumFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.TypeFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.TypeFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.TypeFormatter System.Web.UI.ObjectStateFormatter.TypeFormatter
CS.System.Web.UI.ObjectStateFormatter.TypeFormatter = System.Web.UI.ObjectStateFormatter.TypeFormatter

---@return System.Web.UI.ObjectStateFormatter.TypeFormatter
function System.Web.UI.ObjectStateFormatter.TypeFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter
CS.System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter = System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter

---@return System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter
function System.Web.UI.ObjectStateFormatter.SingleRankArrayFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.FontUnitFormatter : System.Web.UI.ObjectStateFormatter.StringFormatter
System.Web.UI.ObjectStateFormatter.FontUnitFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.FontUnitFormatter System.Web.UI.ObjectStateFormatter.FontUnitFormatter
CS.System.Web.UI.ObjectStateFormatter.FontUnitFormatter = System.Web.UI.ObjectStateFormatter.FontUnitFormatter

---@return System.Web.UI.ObjectStateFormatter.FontUnitFormatter
function System.Web.UI.ObjectStateFormatter.FontUnitFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.UnitFormatter : System.Web.UI.ObjectStateFormatter.StringFormatter
System.Web.UI.ObjectStateFormatter.UnitFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.UnitFormatter System.Web.UI.ObjectStateFormatter.UnitFormatter
CS.System.Web.UI.ObjectStateFormatter.UnitFormatter = System.Web.UI.ObjectStateFormatter.UnitFormatter

---@return System.Web.UI.ObjectStateFormatter.UnitFormatter
function System.Web.UI.ObjectStateFormatter.UnitFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.TypeConverterFormatter : System.Web.UI.ObjectStateFormatter.StringFormatter
---@field Converter System.ComponentModel.TypeConverter
System.Web.UI.ObjectStateFormatter.TypeConverterFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.TypeConverterFormatter System.Web.UI.ObjectStateFormatter.TypeConverterFormatter
CS.System.Web.UI.ObjectStateFormatter.TypeConverterFormatter = System.Web.UI.ObjectStateFormatter.TypeConverterFormatter

---@return System.Web.UI.ObjectStateFormatter.TypeConverterFormatter
function System.Web.UI.ObjectStateFormatter.TypeConverterFormatter.New() end

---@class System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter : System.Web.UI.ObjectStateFormatter.ObjectFormatter
System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter = {}
---@alias CS.System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter
CS.System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter = System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter

---@return System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter
function System.Web.UI.ObjectStateFormatter.BinaryObjectFormatter.New() end

---@class System.Web.UI.ObjectTag : System.Object
System.Web.UI.ObjectTag = {}
---@alias CS.System.Web.UI.ObjectTag System.Web.UI.ObjectTag
CS.System.Web.UI.ObjectTag = System.Web.UI.ObjectTag


---@class System.Web.UI.ObjectTagBuilder : System.Web.UI.ControlBuilder
System.Web.UI.ObjectTagBuilder = {}
---@alias CS.System.Web.UI.ObjectTagBuilder System.Web.UI.ObjectTagBuilder
CS.System.Web.UI.ObjectTagBuilder = System.Web.UI.ObjectTagBuilder

---@return System.Web.UI.ObjectTagBuilder
function System.Web.UI.ObjectTagBuilder.New() end
---@param s string
function System.Web.UI.ObjectTagBuilder:AppendLiteralString(s) end
---@param subBuilder System.Web.UI.ControlBuilder
function System.Web.UI.ObjectTagBuilder:AppendSubBuilder(subBuilder) end
---@param parser System.Web.UI.TemplateParser
---@param parentBuilder System.Web.UI.ControlBuilder
---@param type System.Type
---@param tagName string
---@param id string
---@param attribs System.Collections.IDictionary
function System.Web.UI.ObjectTagBuilder:Init(parser, parentBuilder, type, tagName, id, attribs) end

---@class System.Web.UI.OutputCacheLocation
---@field Any System.Web.UI.OutputCacheLocation
---@field Client System.Web.UI.OutputCacheLocation
---@field Downstream System.Web.UI.OutputCacheLocation
---@field Server System.Web.UI.OutputCacheLocation
---@field None System.Web.UI.OutputCacheLocation
---@field ServerAndClient System.Web.UI.OutputCacheLocation
System.Web.UI.OutputCacheLocation = {}
---@alias CS.System.Web.UI.OutputCacheLocation System.Web.UI.OutputCacheLocation
CS.System.Web.UI.OutputCacheLocation = System.Web.UI.OutputCacheLocation


---@class System.Web.UI.OutputCacheParameters : System.Object
---@field CacheProfile string
---@field Duration number
---@field Enabled boolean
---@field Location System.Web.UI.OutputCacheLocation
---@field NoStore boolean
---@field SqlDependency string
---@field VaryByContentEncoding string
---@field VaryByControl string
---@field VaryByCustom string
---@field VaryByHeader string
---@field VaryByParam string
System.Web.UI.OutputCacheParameters = {}
---@alias CS.System.Web.UI.OutputCacheParameters System.Web.UI.OutputCacheParameters
CS.System.Web.UI.OutputCacheParameters = System.Web.UI.OutputCacheParameters

---@return System.Web.UI.OutputCacheParameters
function System.Web.UI.OutputCacheParameters.New() end

---@class System.Web.UI.Page : System.Web.UI.TemplateControl
---@field postEventArgumentID string
---@field postEventSourceID string
---@field Application System.Web.HttpApplicationState
---@field Buffer boolean
---@field Cache System.Web.Caching.Cache
---@field ClientTarget string
---@field CodePage number
---@field ContentType string
---@field Culture string
---@field EnableEventValidation boolean
---@field EnableViewState boolean
---@field EnableViewStateMac boolean
---@field ErrorPage string
---@field ID string
---@field IsPostBack boolean
---@field IsPostBackEventControlRegistered boolean
---@field IsReusable boolean
---@field IsValid boolean
---@field Items System.Collections.IDictionary
---@field LCID number
---@field MaintainScrollPositionOnPostBack boolean
---@field PageAdapter System.Web.UI.Adapters.PageAdapter
---@field Request System.Web.HttpRequest
---@field Response System.Web.HttpResponse
---@field ResponseEncoding string
---@field Server System.Web.HttpServerUtility
---@field Session System.Web.SessionState.HttpSessionState
---@field StyleSheetTheme string
---@field Theme string
---@field AutoPostBackControl System.Web.UI.Control
---@field RouteData System.Web.Routing.RouteData
---@field MetaDescription string
---@field MetaKeywords string
---@field Title string
---@field Trace System.Web.TraceContext
---@field TraceEnabled boolean
---@field TraceModeValue System.Web.TraceMode
---@field UICulture string
---@field User System.Security.Principal.IPrincipal
---@field Validators System.Web.UI.ValidatorCollection
---@field ViewStateUserKey string
---@field Visible boolean
---@field ClientScript System.Web.UI.ClientScriptManager
---@field Form System.Web.UI.HtmlControls.HtmlForm
---@field ClientQueryString string
---@field PreviousPage System.Web.UI.Page
---@field IsCallback boolean
---@field IsCrossPagePostBack boolean
---@field IdSeparator System.Char
---@field Header System.Web.UI.HtmlControls.HtmlHead
---@field AsyncTimeout System.TimeSpan
---@field IsAsync boolean
---@field MaxPageStateFieldLength number
---@field ViewStateEncryptionMode System.Web.UI.ViewStateEncryptionMode
---@field MasterPageFile string
---@field Master System.Web.UI.MasterPage
---@field ModelBindingExecutionContext System.Web.ModelBinding.ModelBindingExecutionContext
---@field ModelState System.Web.ModelBinding.ModelStateDictionary
---@field SkipFormActionValidation boolean
---@field UnobtrusiveValidationMode System.Web.UI.UnobtrusiveValidationMode
---@field ValidateRequestMode System.Web.UI.ValidateRequestMode
System.Web.UI.Page = {}
---@alias CS.System.Web.UI.Page System.Web.UI.Page
CS.System.Web.UI.Page = System.Web.UI.Page

---@return System.Web.UI.Page
function System.Web.UI.Page.New() end
---@param tw System.IO.TextWriter
---@param writerType System.Type
---@return System.Web.UI.HtmlTextWriter
function System.Web.UI.Page.CreateHtmlTextWriterFromType(tw, writerType) end
function System.Web.UI.Page:DesignerInitialize() end
---@param id string
---@return System.Web.UI.Control
function System.Web.UI.Page:FindControl(id) end
---@return number
function System.Web.UI.Page:GetTypeHashCode() end
---@param virtualPath string
---@return string
function System.Web.UI.Page:MapPath(virtualPath) end
---@param context System.Web.HttpContext
function System.Web.UI.Page:ProcessRequest(context) end
---@param control System.Web.UI.Control
function System.Web.UI.Page:RegisterRequiresPostBack(control) end
---@param control System.Web.UI.IPostBackEventHandler
function System.Web.UI.Page:RegisterRequiresRaiseEvent(control) end
function System.Web.UI.Page:RegisterViewStateHandler() end
---@overload fun()
---@param validationGroup string
function System.Web.UI.Page:Validate(validationGroup) end
---@param control System.Web.UI.Control
function System.Web.UI.Page:VerifyRenderingInServerForm(control) end
---@overload fun(self: System.Web.UI.Page, beginHandler: System.Web.BeginEventHandler, endHandler: System.Web.EndEventHandler)
---@param beginHandler System.Web.BeginEventHandler
---@param endHandler System.Web.EndEventHandler
---@param state System.Object
function System.Web.UI.Page:AddOnPreRenderCompleteAsync(beginHandler, endHandler, state) end
---@param task System.Web.UI.PageAsyncTask
function System.Web.UI.Page:RegisterAsyncTask(task) end
function System.Web.UI.Page:ExecuteRegisteredAsyncTasks() end
function System.Web.UI.Page:RegisterRequiresViewStateEncryption() end
---@overload fun(self: System.Web.UI.Page, clientID: string)
---@param control System.Web.UI.Control
function System.Web.UI.Page:SetFocus(control) end
---@param control System.Web.UI.Control
function System.Web.UI.Page:RegisterRequiresControlState(control) end
---@param control System.Web.UI.Control
---@return boolean
function System.Web.UI.Page:RequiresControlState(control) end
---@param control System.Web.UI.Control
function System.Web.UI.Page:UnregisterRequiresControlState(control) end
---@param validationGroup string
---@return System.Web.UI.ValidatorCollection
function System.Web.UI.Page:GetValidators(validationGroup) end
---@return System.Object
function System.Web.UI.Page:GetDataItem() end

---@class System.Web.UI.Page.ProcessRequestDelegate : System.MulticastDelegate
System.Web.UI.Page.ProcessRequestDelegate = {}
---@alias CS.System.Web.UI.Page.ProcessRequestDelegate System.Web.UI.Page.ProcessRequestDelegate
CS.System.Web.UI.Page.ProcessRequestDelegate = System.Web.UI.Page.ProcessRequestDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.Page.ProcessRequestDelegate
function System.Web.UI.Page.ProcessRequestDelegate.New(object, method) end
---@param context System.Web.HttpContext
function System.Web.UI.Page.ProcessRequestDelegate:Invoke(context) end
---@param context System.Web.HttpContext
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.Page.ProcessRequestDelegate:BeginInvoke(context, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.Page.ProcessRequestDelegate:EndInvoke(result) end

---@class System.Web.UI.Page.DummyAsyncResult : System.Object
---@field AsyncState System.Object
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field CompletedSynchronously boolean
---@field IsCompleted boolean
System.Web.UI.Page.DummyAsyncResult = {}
---@alias CS.System.Web.UI.Page.DummyAsyncResult System.Web.UI.Page.DummyAsyncResult
CS.System.Web.UI.Page.DummyAsyncResult = System.Web.UI.Page.DummyAsyncResult

---@param isCompleted boolean
---@param completedSynchronously boolean
---@param state System.Object
---@return System.Web.UI.Page.DummyAsyncResult
function System.Web.UI.Page.DummyAsyncResult.New(isCompleted, completedSynchronously, state) end

---@class System.Web.UI.PageAsyncTask : System.Object
---@field BeginHandler System.Web.BeginEventHandler
---@field EndHandler System.Web.EndEventHandler
---@field TimeoutHandler System.Web.EndEventHandler
---@field ExecuteInParallel boolean
---@field State System.Object
System.Web.UI.PageAsyncTask = {}
---@alias CS.System.Web.UI.PageAsyncTask System.Web.UI.PageAsyncTask
CS.System.Web.UI.PageAsyncTask = System.Web.UI.PageAsyncTask

---@overload fun(beginHandler: System.Web.BeginEventHandler, endHandler: System.Web.EndEventHandler, timeoutHandler: System.Web.EndEventHandler, state: System.Object) : System.Web.UI.PageAsyncTask
---@overload fun(beginHandler: System.Web.BeginEventHandler, endHandler: System.Web.EndEventHandler, timeoutHandler: System.Web.EndEventHandler, state: System.Object, executeInParallel: boolean) : System.Web.UI.PageAsyncTask
---@overload fun(handler: System.Func) : System.Web.UI.PageAsyncTask
---@param handler System.Func
---@return System.Web.UI.PageAsyncTask
function System.Web.UI.PageAsyncTask.New(handler) end

---@class System.Web.UI.PageHandlerFactory : System.Object
System.Web.UI.PageHandlerFactory = {}
---@alias CS.System.Web.UI.PageHandlerFactory System.Web.UI.PageHandlerFactory
CS.System.Web.UI.PageHandlerFactory = System.Web.UI.PageHandlerFactory

---@param context System.Web.HttpContext
---@param requestType string
---@param virtualPath string
---@param path string
---@return System.Web.IHttpHandler
function System.Web.UI.PageHandlerFactory:GetHandler(context, requestType, virtualPath, path) end
---@param handler System.Web.IHttpHandler
function System.Web.UI.PageHandlerFactory:ReleaseHandler(handler) end

---@class System.Web.UI.PageParser : System.Web.UI.TemplateControlParser
---@field EnableLongStringsAsResources boolean
---@field DefaultPageBaseType System.Type
---@field DefaultApplicationBaseType System.Type
---@field DefaultPageParserFilterType System.Type
---@field DefaultUserControlBaseType System.Type
System.Web.UI.PageParser = {}
---@alias CS.System.Web.UI.PageParser System.Web.UI.PageParser
CS.System.Web.UI.PageParser = System.Web.UI.PageParser

---@return System.Web.UI.PageParser
function System.Web.UI.PageParser.New() end
---@param virtualPath string
---@param inputFile string
---@param context System.Web.HttpContext
---@return System.Web.IHttpHandler
function System.Web.UI.PageParser.GetCompiledPageInstance(virtualPath, inputFile, context) end

---@class System.Web.UI.PageParserFilter : System.Object
---@field AllowCode boolean
---@field NumberOfControlsAllowed number
---@field NumberOfDirectDependenciesAllowed number
---@field TotalNumberOfDependenciesAllowed number
System.Web.UI.PageParserFilter = {}
---@alias CS.System.Web.UI.PageParserFilter System.Web.UI.PageParserFilter
CS.System.Web.UI.PageParserFilter = System.Web.UI.PageParserFilter

---@param baseType System.Type
---@return boolean
function System.Web.UI.PageParserFilter:AllowBaseType(baseType) end
---@param controlType System.Type
---@param builder System.Web.UI.ControlBuilder
---@return boolean
function System.Web.UI.PageParserFilter:AllowControl(controlType, builder) end
---@param includeVirtualPath string
---@return boolean
function System.Web.UI.PageParserFilter:AllowServerSideInclude(includeVirtualPath) end
---@param referenceVirtualPath string
---@param referenceType System.Web.UI.VirtualReferenceType
---@return boolean
function System.Web.UI.PageParserFilter:AllowVirtualReference(referenceVirtualPath, referenceType) end
---@param current System.Web.UI.CompilationMode
---@return System.Web.UI.CompilationMode
function System.Web.UI.PageParserFilter:GetCompilationMode(current) end
---@return System.Type
function System.Web.UI.PageParserFilter:GetNoCompileUserControlType() end
---@param rootBuilder System.Web.UI.ControlBuilder
function System.Web.UI.PageParserFilter:ParseComplete(rootBuilder) end
---@param directiveName string
---@param attributes System.Collections.IDictionary
function System.Web.UI.PageParserFilter:PreprocessDirective(directiveName, attributes) end
---@param codeType System.Web.UI.CodeConstructType
---@param code string
---@return boolean
function System.Web.UI.PageParserFilter:ProcessCodeConstruct(codeType, code) end
---@param controlId string
---@param name string
---@param value string
---@return boolean
function System.Web.UI.PageParserFilter:ProcessDataBindingAttribute(controlId, name, value) end
---@param controlId string
---@param eventName string
---@param handlerName string
---@return boolean
function System.Web.UI.PageParserFilter:ProcessEventHookup(controlId, eventName, handlerName) end

---@class System.Web.UI.PageStatePersister : System.Object
---@field ControlState System.Object
---@field ViewState System.Object
System.Web.UI.PageStatePersister = {}
---@alias CS.System.Web.UI.PageStatePersister System.Web.UI.PageStatePersister
CS.System.Web.UI.PageStatePersister = System.Web.UI.PageStatePersister

function System.Web.UI.PageStatePersister:Load() end
function System.Web.UI.PageStatePersister:Save() end

---@class System.Web.UI.PageTheme : System.Object
System.Web.UI.PageTheme = {}
---@alias CS.System.Web.UI.PageTheme System.Web.UI.PageTheme
CS.System.Web.UI.PageTheme = System.Web.UI.PageTheme

---@param controlType System.Type
---@param skinID string
---@return System.Object
function System.Web.UI.PageTheme.CreateSkinKey(controlType, skinID) end
---@param deviceFilterName string
---@return boolean
function System.Web.UI.PageTheme:TestDeviceFilter(deviceFilterName) end

---@class System.Web.UI.PageThemeBuilder : System.Web.UI.UserControlControlBuilder
System.Web.UI.PageThemeBuilder = {}
---@alias CS.System.Web.UI.PageThemeBuilder System.Web.UI.PageThemeBuilder
CS.System.Web.UI.PageThemeBuilder = System.Web.UI.PageThemeBuilder

---@return System.Web.UI.PageThemeBuilder
function System.Web.UI.PageThemeBuilder.New() end
---@param s string
function System.Web.UI.PageThemeBuilder:AppendLiteralString(s) end

---@class System.Web.UI.PageThemeFileParser : System.Web.UI.UserControlParser
System.Web.UI.PageThemeFileParser = {}
---@alias CS.System.Web.UI.PageThemeFileParser System.Web.UI.PageThemeFileParser
CS.System.Web.UI.PageThemeFileParser = System.Web.UI.PageThemeFileParser


---@class System.Web.UI.PageThemeParser : System.Web.UI.UserControlParser
---@field LinkedStyleSheets System.String[]
System.Web.UI.PageThemeParser = {}
---@alias CS.System.Web.UI.PageThemeParser System.Web.UI.PageThemeParser
CS.System.Web.UI.PageThemeParser = System.Web.UI.PageThemeParser


---@class System.Web.UI.ParseChildrenAttribute : System.Attribute
---@field Default System.Web.UI.ParseChildrenAttribute
---@field ParseAsChildren System.Web.UI.ParseChildrenAttribute
---@field ParseAsProperties System.Web.UI.ParseChildrenAttribute
---@field ChildrenAsProperties boolean
---@field DefaultProperty string
---@field ChildControlType System.Type
System.Web.UI.ParseChildrenAttribute = {}
---@alias CS.System.Web.UI.ParseChildrenAttribute System.Web.UI.ParseChildrenAttribute
CS.System.Web.UI.ParseChildrenAttribute = System.Web.UI.ParseChildrenAttribute

---@overload fun() : System.Web.UI.ParseChildrenAttribute
---@overload fun(childrenAsProperties: boolean) : System.Web.UI.ParseChildrenAttribute
---@overload fun(childrenAsProperties: boolean, defaultProperty: string) : System.Web.UI.ParseChildrenAttribute
---@param childControlType System.Type
---@return System.Web.UI.ParseChildrenAttribute
function System.Web.UI.ParseChildrenAttribute.New(childControlType) end
---@param obj System.Object
---@return boolean
function System.Web.UI.ParseChildrenAttribute:Equals(obj) end
---@return number
function System.Web.UI.ParseChildrenAttribute:GetHashCode() end
---@return boolean
function System.Web.UI.ParseChildrenAttribute:IsDefaultAttribute() end

---@class System.Web.UI.PartialCachingAttribute : System.Attribute
---@field Duration number
---@field ProviderName string
---@field VaryByParams string
---@field VaryByControls string
---@field VaryByCustom string
---@field Shared boolean
---@field SqlDependency string
System.Web.UI.PartialCachingAttribute = {}
---@alias CS.System.Web.UI.PartialCachingAttribute System.Web.UI.PartialCachingAttribute
CS.System.Web.UI.PartialCachingAttribute = System.Web.UI.PartialCachingAttribute

---@overload fun(duration: number) : System.Web.UI.PartialCachingAttribute
---@overload fun(duration: number, varyByParams: string, varyByControls: string, varyByCustom: string) : System.Web.UI.PartialCachingAttribute
---@overload fun(duration: number, varyByParams: string, varyByControls: string, varyByCustom: string, shared: boolean) : System.Web.UI.PartialCachingAttribute
---@param duration number
---@param varyByParams string
---@param varyByControls string
---@param varyByCustom string
---@param sqlDependency string
---@param shared boolean
---@return System.Web.UI.PartialCachingAttribute
function System.Web.UI.PartialCachingAttribute.New(duration, varyByParams, varyByControls, varyByCustom, sqlDependency, shared) end

---@class System.Web.UI.PartialCachingControl : System.Web.UI.BasePartialCachingControl
---@field CachedControl System.Web.UI.Control
System.Web.UI.PartialCachingControl = {}
---@alias CS.System.Web.UI.PartialCachingControl System.Web.UI.PartialCachingControl
CS.System.Web.UI.PartialCachingControl = System.Web.UI.PartialCachingControl


---@class System.Web.UI.PersistenceModeAttribute : System.Attribute
---@field Attribute System.Web.UI.PersistenceModeAttribute
---@field Default System.Web.UI.PersistenceModeAttribute
---@field EncodedInnerDefaultProperty System.Web.UI.PersistenceModeAttribute
---@field InnerDefaultProperty System.Web.UI.PersistenceModeAttribute
---@field InnerProperty System.Web.UI.PersistenceModeAttribute
---@field Mode System.Web.UI.PersistenceMode
System.Web.UI.PersistenceModeAttribute = {}
---@alias CS.System.Web.UI.PersistenceModeAttribute System.Web.UI.PersistenceModeAttribute
CS.System.Web.UI.PersistenceModeAttribute = System.Web.UI.PersistenceModeAttribute

---@param mode System.Web.UI.PersistenceMode
---@return System.Web.UI.PersistenceModeAttribute
function System.Web.UI.PersistenceModeAttribute.New(mode) end
---@param obj System.Object
---@return boolean
function System.Web.UI.PersistenceModeAttribute:Equals(obj) end
---@return number
function System.Web.UI.PersistenceModeAttribute:GetHashCode() end
---@return boolean
function System.Web.UI.PersistenceModeAttribute:IsDefaultAttribute() end

---@class System.Web.UI.PostBackOptions : System.Object
---@field ActionUrl string
---@field Argument string
---@field AutoPostBack boolean
---@field ClientSubmit boolean
---@field PerformValidation boolean
---@field RequiresJavaScriptProtocol boolean
---@field TargetControl System.Web.UI.Control
---@field TrackFocus boolean
---@field ValidationGroup string
System.Web.UI.PostBackOptions = {}
---@alias CS.System.Web.UI.PostBackOptions System.Web.UI.PostBackOptions
CS.System.Web.UI.PostBackOptions = System.Web.UI.PostBackOptions

---@overload fun(targetControl: System.Web.UI.Control) : System.Web.UI.PostBackOptions
---@overload fun(targetControl: System.Web.UI.Control, argument: string) : System.Web.UI.PostBackOptions
---@param targetControl System.Web.UI.Control
---@param argument string
---@param actionUrl string
---@param autoPostBack boolean
---@param requiresJavaScriptProtocol boolean
---@param trackFocus boolean
---@param clientSubmit boolean
---@param performValidation boolean
---@param validationGroup string
---@return System.Web.UI.PostBackOptions
function System.Web.UI.PostBackOptions.New(targetControl, argument, actionUrl, autoPostBack, requiresJavaScriptProtocol, trackFocus, clientSubmit, performValidation, validationGroup) end

---@class System.Web.UI.PropertyConverter : System.Object
System.Web.UI.PropertyConverter = {}
---@alias CS.System.Web.UI.PropertyConverter System.Web.UI.PropertyConverter
CS.System.Web.UI.PropertyConverter = System.Web.UI.PropertyConverter

---@param enumType System.Type
---@param value string
---@return System.Object
function System.Web.UI.PropertyConverter.EnumFromString(enumType, value) end
---@param enumType System.Type
---@param enumValue System.Object
---@return string
function System.Web.UI.PropertyConverter.EnumToString(enumType, enumValue) end
---@param objType System.Type
---@param propertyInfo System.Reflection.MemberInfo
---@param value string
---@return System.Object
function System.Web.UI.PropertyConverter.ObjectFromString(objType, propertyInfo, value) end

---@class System.Web.UI.PropertyEntry : System.Object
---@field DeclaringType System.Type
---@field Filter string
---@field Name string
---@field PropertyInfo System.Reflection.PropertyInfo
---@field Type System.Type
System.Web.UI.PropertyEntry = {}
---@alias CS.System.Web.UI.PropertyEntry System.Web.UI.PropertyEntry
CS.System.Web.UI.PropertyEntry = System.Web.UI.PropertyEntry


---@class System.Web.UI.ReadOnlyDataSourceView : System.Web.UI.HierarchicalDataSourceView
System.Web.UI.ReadOnlyDataSourceView = {}
---@alias CS.System.Web.UI.ReadOnlyDataSourceView System.Web.UI.ReadOnlyDataSourceView
CS.System.Web.UI.ReadOnlyDataSourceView = System.Web.UI.ReadOnlyDataSourceView

---@param datasource System.Web.UI.IHierarchicalEnumerable
---@return System.Web.UI.ReadOnlyDataSourceView
function System.Web.UI.ReadOnlyDataSourceView.New(datasource) end
---@return System.Web.UI.IHierarchicalEnumerable
function System.Web.UI.ReadOnlyDataSourceView:Select() end

---@class System.Web.UI.RenderMethod : System.MulticastDelegate
System.Web.UI.RenderMethod = {}
---@alias CS.System.Web.UI.RenderMethod System.Web.UI.RenderMethod
CS.System.Web.UI.RenderMethod = System.Web.UI.RenderMethod

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.RenderMethod
function System.Web.UI.RenderMethod.New(object, method) end
---@param output System.Web.UI.HtmlTextWriter
---@param container System.Web.UI.Control
function System.Web.UI.RenderMethod:Invoke(output, container) end
---@param output System.Web.UI.HtmlTextWriter
---@param container System.Web.UI.Control
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.RenderMethod:BeginInvoke(output, container, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.RenderMethod:EndInvoke(result) end

---@class System.Web.UI.ResourceBasedLiteralControl : System.Web.UI.LiteralControl
---@field Text string
System.Web.UI.ResourceBasedLiteralControl = {}
---@alias CS.System.Web.UI.ResourceBasedLiteralControl System.Web.UI.ResourceBasedLiteralControl
CS.System.Web.UI.ResourceBasedLiteralControl = System.Web.UI.ResourceBasedLiteralControl

---@param ptr System.IntPtr
---@param length number
---@return System.Web.UI.ResourceBasedLiteralControl
function System.Web.UI.ResourceBasedLiteralControl.New(ptr, length) end

---@class System.Web.UI.RootBuilder : System.Web.UI.TemplateBuilder
---@field BuiltObjects System.Collections.IDictionary
System.Web.UI.RootBuilder = {}
---@alias CS.System.Web.UI.RootBuilder System.Web.UI.RootBuilder
CS.System.Web.UI.RootBuilder = System.Web.UI.RootBuilder

---@overload fun() : System.Web.UI.RootBuilder
---@param parser System.Web.UI.TemplateParser
---@return System.Web.UI.RootBuilder
function System.Web.UI.RootBuilder.New(parser) end
---@param tagName string
---@param attribs System.Collections.IDictionary
---@return System.Type
function System.Web.UI.RootBuilder:GetChildControlType(tagName, attribs) end

---@class System.Web.UI.SessionPageStatePersister : System.Web.UI.PageStatePersister
System.Web.UI.SessionPageStatePersister = {}
---@alias CS.System.Web.UI.SessionPageStatePersister System.Web.UI.SessionPageStatePersister
CS.System.Web.UI.SessionPageStatePersister = System.Web.UI.SessionPageStatePersister

---@param page System.Web.UI.Page
---@return System.Web.UI.SessionPageStatePersister
function System.Web.UI.SessionPageStatePersister.New(page) end
function System.Web.UI.SessionPageStatePersister:Load() end
function System.Web.UI.SessionPageStatePersister:Save() end

---@class System.Web.UI.SimpleHandlerFactory : System.Object
System.Web.UI.SimpleHandlerFactory = {}
---@alias CS.System.Web.UI.SimpleHandlerFactory System.Web.UI.SimpleHandlerFactory
CS.System.Web.UI.SimpleHandlerFactory = System.Web.UI.SimpleHandlerFactory

---@return System.Web.UI.SimpleHandlerFactory
function System.Web.UI.SimpleHandlerFactory.New() end
---@param context System.Web.HttpContext
---@param requestType string
---@param virtualPath string
---@param path string
---@return System.Web.IHttpHandler
function System.Web.UI.SimpleHandlerFactory:GetHandler(context, requestType, virtualPath, path) end
---@param handler System.Web.IHttpHandler
function System.Web.UI.SimpleHandlerFactory:ReleaseHandler(handler) end

---@class System.Web.UI.SimplePropertyEntry : System.Web.UI.PropertyEntry
---@field UseSetAttribute boolean
---@field Value System.Object
---@field PersistedValue string
System.Web.UI.SimplePropertyEntry = {}
---@alias CS.System.Web.UI.SimplePropertyEntry System.Web.UI.SimplePropertyEntry
CS.System.Web.UI.SimplePropertyEntry = System.Web.UI.SimplePropertyEntry


---@class System.Web.UI.SimpleWebHandlerParser : System.Object
System.Web.UI.SimpleWebHandlerParser = {}
---@alias CS.System.Web.UI.SimpleWebHandlerParser System.Web.UI.SimpleWebHandlerParser
CS.System.Web.UI.SimpleWebHandlerParser = System.Web.UI.SimpleWebHandlerParser


---@class System.Web.UI.SkinBuilder : System.Web.UI.ControlBuilder
System.Web.UI.SkinBuilder = {}
---@alias CS.System.Web.UI.SkinBuilder System.Web.UI.SkinBuilder
CS.System.Web.UI.SkinBuilder = System.Web.UI.SkinBuilder

---@param provider System.Web.UI.ThemeProvider
---@param control System.Web.UI.Control
---@param skinBuilder System.Web.UI.ControlBuilder
---@param themePath string
---@return System.Web.UI.SkinBuilder
function System.Web.UI.SkinBuilder.New(provider, control, skinBuilder, themePath) end
---@return System.Web.UI.Control
function System.Web.UI.SkinBuilder:ApplyTheme() end

---@class System.Web.UI.StateBag : System.Object
---@field Count number
---@field Item System.Object
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
System.Web.UI.StateBag = {}
---@alias CS.System.Web.UI.StateBag System.Web.UI.StateBag
CS.System.Web.UI.StateBag = System.Web.UI.StateBag

---@overload fun(ignoreCase: boolean) : System.Web.UI.StateBag
---@return System.Web.UI.StateBag
function System.Web.UI.StateBag.New() end
---@param key string
---@param value System.Object
---@return System.Web.UI.StateItem
function System.Web.UI.StateBag:Add(key, value) end
function System.Web.UI.StateBag:Clear() end
---@return System.Collections.IDictionaryEnumerator
function System.Web.UI.StateBag:GetEnumerator() end
---@param key string
---@return boolean
function System.Web.UI.StateBag:IsItemDirty(key) end
---@param key string
function System.Web.UI.StateBag:Remove(key) end
---@param key string
---@param dirty boolean
function System.Web.UI.StateBag:SetItemDirty(key, dirty) end
---@param dirty boolean
function System.Web.UI.StateBag:SetDirty(dirty) end

---@class System.Web.UI.StateItem : System.Object
---@field IsDirty boolean
---@field Value System.Object
System.Web.UI.StateItem = {}
---@alias CS.System.Web.UI.StateItem System.Web.UI.StateItem
CS.System.Web.UI.StateItem = System.Web.UI.StateItem


---@class System.Web.UI.StateManagedCollection : System.Object
---@field Count number
System.Web.UI.StateManagedCollection = {}
---@alias CS.System.Web.UI.StateManagedCollection System.Web.UI.StateManagedCollection
CS.System.Web.UI.StateManagedCollection = System.Web.UI.StateManagedCollection

function System.Web.UI.StateManagedCollection:SetDirty() end
function System.Web.UI.StateManagedCollection:Clear() end
---@return System.Collections.IEnumerator
function System.Web.UI.StateManagedCollection:GetEnumerator() end
---@param array System.Array
---@param index number
function System.Web.UI.StateManagedCollection:CopyTo(array, index) end

---@class System.Web.UI.StaticPartialCachingControl : System.Web.UI.BasePartialCachingControl
System.Web.UI.StaticPartialCachingControl = {}
---@alias CS.System.Web.UI.StaticPartialCachingControl System.Web.UI.StaticPartialCachingControl
CS.System.Web.UI.StaticPartialCachingControl = System.Web.UI.StaticPartialCachingControl

---@overload fun(ctrlID: string, guid: string, duration: number, varyByParams: string, varyByControls: string, varyByCustom: string, buildMethod: System.Web.UI.BuildMethod) : System.Web.UI.StaticPartialCachingControl
---@overload fun(ctrlID: string, guid: string, duration: number, varyByParams: string, varyByControls: string, varyByCustom: string, sqlDependency: string, buildMethod: System.Web.UI.BuildMethod) : System.Web.UI.StaticPartialCachingControl
---@param ctrlID string
---@param guid string
---@param duration number
---@param varyByParams string
---@param varyByControls string
---@param varyByCustom string
---@param sqlDependency string
---@param buildMethod System.Web.UI.BuildMethod
---@param providerName string
---@return System.Web.UI.StaticPartialCachingControl
function System.Web.UI.StaticPartialCachingControl.New(ctrlID, guid, duration, varyByParams, varyByControls, varyByCustom, sqlDependency, buildMethod, providerName) end
---@overload fun(parent: System.Web.UI.Control, ctrlID: string, guid: string, duration: number, varyByParams: string, varyByControls: string, varyByCustom: string, sqlDependency: string, buildMethod: System.Web.UI.BuildMethod)
---@overload fun(parent: System.Web.UI.Control, ctrlID: string, guid: string, duration: number, varyByParams: string, varyByControls: string, varyByCustom: string, buildMethod: System.Web.UI.BuildMethod)
---@param parent System.Web.UI.Control
---@param ctrlID string
---@param guid string
---@param duration number
---@param varyByParams string
---@param varyByControls string
---@param varyByCustom string
---@param sqlDependency string
---@param buildMethod System.Web.UI.BuildMethod
---@param providerName string
function System.Web.UI.StaticPartialCachingControl.BuildCachedControl(parent, ctrlID, guid, duration, varyByParams, varyByControls, varyByCustom, sqlDependency, buildMethod, providerName) end

---@class System.Web.UI.StringPropertyBuilder : System.Web.UI.ControlBuilder
---@field PropertyName string
System.Web.UI.StringPropertyBuilder = {}
---@alias CS.System.Web.UI.StringPropertyBuilder System.Web.UI.StringPropertyBuilder
CS.System.Web.UI.StringPropertyBuilder = System.Web.UI.StringPropertyBuilder

---@param prop_name string
---@return System.Web.UI.StringPropertyBuilder
function System.Web.UI.StringPropertyBuilder.New(prop_name) end
---@return boolean
function System.Web.UI.StringPropertyBuilder:AllowWhitespaceLiterals() end
---@param subBuilder System.Web.UI.ControlBuilder
function System.Web.UI.StringPropertyBuilder:AppendSubBuilder(subBuilder) end

---@class System.Web.UI.TagPrefixAttribute : System.Attribute
---@field NamespaceName string
---@field TagPrefix string
System.Web.UI.TagPrefixAttribute = {}
---@alias CS.System.Web.UI.TagPrefixAttribute System.Web.UI.TagPrefixAttribute
CS.System.Web.UI.TagPrefixAttribute = System.Web.UI.TagPrefixAttribute

---@param namespaceName string
---@param tagPrefix string
---@return System.Web.UI.TagPrefixAttribute
function System.Web.UI.TagPrefixAttribute.New(namespaceName, tagPrefix) end

---@class System.Web.UI.TemplateBuilder : System.Web.UI.ControlBuilder
---@field Text string
System.Web.UI.TemplateBuilder = {}
---@alias CS.System.Web.UI.TemplateBuilder System.Web.UI.TemplateBuilder
CS.System.Web.UI.TemplateBuilder = System.Web.UI.TemplateBuilder

---@return System.Web.UI.TemplateBuilder
function System.Web.UI.TemplateBuilder.New() end
---@return System.Object
function System.Web.UI.TemplateBuilder:BuildObject() end
---@param parser System.Web.UI.TemplateParser
---@param parentBuilder System.Web.UI.ControlBuilder
---@param type System.Type
---@param tagName string
---@param ID string
---@param attribs System.Collections.IDictionary
function System.Web.UI.TemplateBuilder:Init(parser, parentBuilder, type, tagName, ID, attribs) end
---@param container System.Web.UI.Control
function System.Web.UI.TemplateBuilder:InstantiateIn(container) end
---@return boolean
function System.Web.UI.TemplateBuilder:NeedsTagInnerText() end
---@param text string
function System.Web.UI.TemplateBuilder:SetTagInnerText(text) end

---@class System.Web.UI.TemplateBinding : System.Object
---@field ControlType System.Type
---@field ControlProperty string
---@field ControlId string
---@field FieldName string
System.Web.UI.TemplateBinding = {}
---@alias CS.System.Web.UI.TemplateBinding System.Web.UI.TemplateBinding
CS.System.Web.UI.TemplateBinding = System.Web.UI.TemplateBinding

---@param controlType System.Type
---@param controlProperty string
---@param controlId string
---@param fieldName string
---@return System.Web.UI.TemplateBinding
function System.Web.UI.TemplateBinding.New(controlType, controlProperty, controlId, fieldName) end

---@class System.Web.UI.TemplateContainerAttribute : System.Attribute
---@field BindingDirection System.ComponentModel.BindingDirection
---@field ContainerType System.Type
System.Web.UI.TemplateContainerAttribute = {}
---@alias CS.System.Web.UI.TemplateContainerAttribute System.Web.UI.TemplateContainerAttribute
CS.System.Web.UI.TemplateContainerAttribute = System.Web.UI.TemplateContainerAttribute

---@overload fun(containerType: System.Type, bindingDirection: System.ComponentModel.BindingDirection) : System.Web.UI.TemplateContainerAttribute
---@param containerType System.Type
---@return System.Web.UI.TemplateContainerAttribute
function System.Web.UI.TemplateContainerAttribute.New(containerType) end

---@class System.Web.UI.TemplateContentType
---@field Complete System.Web.UI.TemplateContentType
---@field Fragment System.Web.UI.TemplateContentType
System.Web.UI.TemplateContentType = {}
---@alias CS.System.Web.UI.TemplateContentType System.Web.UI.TemplateContentType
CS.System.Web.UI.TemplateContentType = System.Web.UI.TemplateContentType


---@class System.Web.UI.TemplateControl : System.Web.UI.Control
---@field AppRelativeVirtualPath string
System.Web.UI.TemplateControl = {}
---@alias CS.System.Web.UI.TemplateControl System.Web.UI.TemplateControl
CS.System.Web.UI.TemplateControl = System.Web.UI.TemplateControl

---@overload fun(t: System.Type) : System.Object
---@return System.Object
function System.Web.UI.TemplateControl:ReadStringResource() end
---@overload fun(self: System.Web.UI.TemplateControl, virtualPath: string) : System.Web.UI.Control
---@param t System.Type
---@param parameters System.Object[]
---@return System.Web.UI.Control
function System.Web.UI.TemplateControl:LoadControl(t, parameters) end
---@param virtualPath string
---@return System.Web.UI.ITemplate
function System.Web.UI.TemplateControl:LoadTemplate(virtualPath) end
---@overload fun(self: System.Web.UI.TemplateControl, content: string) : System.Web.UI.Control
---@param content string
---@param ignoreParserFilter boolean
---@return System.Web.UI.Control
function System.Web.UI.TemplateControl:ParseControl(content, ignoreParserFilter) end
---@param filterName string
---@return boolean
function System.Web.UI.TemplateControl:TestDeviceFilter(filterName) end

---@class System.Web.UI.TemplateControl.EvtInfo : System.Object
---@field method System.Reflection.MethodInfo
---@field methodName string
---@field evt System.Reflection.EventInfo
---@field noParams boolean
System.Web.UI.TemplateControl.EvtInfo = {}
---@alias CS.System.Web.UI.TemplateControl.EvtInfo System.Web.UI.TemplateControl.EvtInfo
CS.System.Web.UI.TemplateControl.EvtInfo = System.Web.UI.TemplateControl.EvtInfo

---@return System.Web.UI.TemplateControl.EvtInfo
function System.Web.UI.TemplateControl.EvtInfo.New() end

---@class System.Web.UI.TemplateControl.StringResourceData : System.Object
---@field Ptr System.IntPtr
---@field Length number
---@field MaxOffset number
System.Web.UI.TemplateControl.StringResourceData = {}
---@alias CS.System.Web.UI.TemplateControl.StringResourceData System.Web.UI.TemplateControl.StringResourceData
CS.System.Web.UI.TemplateControl.StringResourceData = System.Web.UI.TemplateControl.StringResourceData

---@return System.Web.UI.TemplateControl.StringResourceData
function System.Web.UI.TemplateControl.StringResourceData.New() end

---@class System.Web.UI.TemplateControl.SimpleTemplate : System.Object
System.Web.UI.TemplateControl.SimpleTemplate = {}
---@alias CS.System.Web.UI.TemplateControl.SimpleTemplate System.Web.UI.TemplateControl.SimpleTemplate
CS.System.Web.UI.TemplateControl.SimpleTemplate = System.Web.UI.TemplateControl.SimpleTemplate

---@param type System.Type
---@return System.Web.UI.TemplateControl.SimpleTemplate
function System.Web.UI.TemplateControl.SimpleTemplate.New(type) end
---@param control System.Web.UI.Control
function System.Web.UI.TemplateControl.SimpleTemplate:InstantiateIn(control) end

---@class System.Web.UI.TemplateControlParser : System.Web.UI.BaseTemplateParser
System.Web.UI.TemplateControlParser = {}
---@alias CS.System.Web.UI.TemplateControlParser System.Web.UI.TemplateControlParser
CS.System.Web.UI.TemplateControlParser = System.Web.UI.TemplateControlParser


---@class System.Web.UI.ServerSideScript : System.Object
---@field Script string
---@field Location System.Web.Compilation.ILocation
System.Web.UI.ServerSideScript = {}
---@alias CS.System.Web.UI.ServerSideScript System.Web.UI.ServerSideScript
CS.System.Web.UI.ServerSideScript = System.Web.UI.ServerSideScript

---@param script string
---@param location System.Web.Compilation.ILocation
---@return System.Web.UI.ServerSideScript
function System.Web.UI.ServerSideScript.New(script, location) end

---@class System.Web.UI.TemplateParser : System.Web.UI.BaseParser
System.Web.UI.TemplateParser = {}
---@alias CS.System.Web.UI.TemplateParser System.Web.UI.TemplateParser
CS.System.Web.UI.TemplateParser = System.Web.UI.TemplateParser

---@param content string
---@param virtualPath string
---@param ignoreFilter boolean
---@return System.Web.UI.ITemplate
function System.Web.UI.TemplateParser.ParseTemplate(content, virtualPath, ignoreFilter) end

---@class System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field Location System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field CacheProfile System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field NoStore System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field SqlDependency System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field VaryByCustom System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field VaryByHeader System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field VaryByControl System.Web.UI.TemplateParser.OutputCacheParsedParams
---@field VaryByContentEncodings System.Web.UI.TemplateParser.OutputCacheParsedParams
System.Web.UI.TemplateParser.OutputCacheParsedParams = {}
---@alias CS.System.Web.UI.TemplateParser.OutputCacheParsedParams System.Web.UI.TemplateParser.OutputCacheParsedParams
CS.System.Web.UI.TemplateParser.OutputCacheParsedParams = System.Web.UI.TemplateParser.OutputCacheParsedParams


---@class System.Web.UI.TemplatePropertyEntry : System.Web.UI.BuilderPropertyEntry
---@field BindableTemplate boolean
System.Web.UI.TemplatePropertyEntry = {}
---@alias CS.System.Web.UI.TemplatePropertyEntry System.Web.UI.TemplatePropertyEntry
CS.System.Web.UI.TemplatePropertyEntry = System.Web.UI.TemplatePropertyEntry

---@return System.Web.UI.TemplatePropertyEntry
function System.Web.UI.TemplatePropertyEntry.New() end

---@class System.Web.UI.ThemeProvider : System.Object
---@field ContentHashCode number
---@field CssFiles System.Collections.ICollection
---@field DesignerHost System.ComponentModel.Design.IDesignerHost
---@field ThemeName string
System.Web.UI.ThemeProvider = {}
---@alias CS.System.Web.UI.ThemeProvider System.Web.UI.ThemeProvider
CS.System.Web.UI.ThemeProvider = System.Web.UI.ThemeProvider

---@param host System.ComponentModel.Design.IDesignerHost
---@param name string
---@param themeDefinition string
---@param cssFiles System.String[]
---@param themePath string
---@return System.Web.UI.ThemeProvider
function System.Web.UI.ThemeProvider.New(host, name, themeDefinition, cssFiles, themePath) end
---@param control System.Web.UI.Control
---@return System.Web.UI.SkinBuilder
function System.Web.UI.ThemeProvider:GetSkinBuilder(control) end
---@param type System.Type
---@return System.Collections.IDictionary
function System.Web.UI.ThemeProvider:GetSkinControlBuildersForControlType(type) end
---@param type System.Type
---@return System.Collections.ICollection
function System.Web.UI.ThemeProvider:GetSkinsForControl(type) end

---@class System.Web.UI.ToolboxDataAttribute : System.Attribute
---@field Default System.Web.UI.ToolboxDataAttribute
---@field Data string
System.Web.UI.ToolboxDataAttribute = {}
---@alias CS.System.Web.UI.ToolboxDataAttribute System.Web.UI.ToolboxDataAttribute
CS.System.Web.UI.ToolboxDataAttribute = System.Web.UI.ToolboxDataAttribute

---@param data string
---@return System.Web.UI.ToolboxDataAttribute
function System.Web.UI.ToolboxDataAttribute.New(data) end
---@param obj System.Object
---@return boolean
function System.Web.UI.ToolboxDataAttribute:Equals(obj) end
---@return number
function System.Web.UI.ToolboxDataAttribute:GetHashCode() end
---@return boolean
function System.Web.UI.ToolboxDataAttribute:IsDefaultAttribute() end

---@class System.Web.UI.Triplet : System.Object
---@field First System.Object
---@field Second System.Object
---@field Third System.Object
System.Web.UI.Triplet = {}
---@alias CS.System.Web.UI.Triplet System.Web.UI.Triplet
CS.System.Web.UI.Triplet = System.Web.UI.Triplet

---@overload fun() : System.Web.UI.Triplet
---@overload fun(x: System.Object, y: System.Object) : System.Web.UI.Triplet
---@param x System.Object
---@param y System.Object
---@param z System.Object
---@return System.Web.UI.Triplet
function System.Web.UI.Triplet.New(x, y, z) end

---@class System.Web.UI.UnknownAttributeDescriptor : System.Object
---@field Info System.Reflection.MemberInfo
---@field Value System.Object
System.Web.UI.UnknownAttributeDescriptor = {}
---@alias CS.System.Web.UI.UnknownAttributeDescriptor System.Web.UI.UnknownAttributeDescriptor
CS.System.Web.UI.UnknownAttributeDescriptor = System.Web.UI.UnknownAttributeDescriptor

---@param memberInfo System.Reflection.MemberInfo
---@param value System.Object
---@return System.Web.UI.UnknownAttributeDescriptor
function System.Web.UI.UnknownAttributeDescriptor.New(memberInfo, value) end

---@class System.Web.UI.UrlPropertyAttribute : System.Attribute
---@field Filter string
System.Web.UI.UrlPropertyAttribute = {}
---@alias CS.System.Web.UI.UrlPropertyAttribute System.Web.UI.UrlPropertyAttribute
CS.System.Web.UI.UrlPropertyAttribute = System.Web.UI.UrlPropertyAttribute

---@overload fun() : System.Web.UI.UrlPropertyAttribute
---@param filter string
---@return System.Web.UI.UrlPropertyAttribute
function System.Web.UI.UrlPropertyAttribute.New(filter) end
---@param obj System.Object
---@return boolean
function System.Web.UI.UrlPropertyAttribute:Equals(obj) end
---@return number
function System.Web.UI.UrlPropertyAttribute:GetHashCode() end

---@class System.Web.UI.UrlTypes
---@field Absolute System.Web.UI.UrlTypes
---@field AppRelative System.Web.UI.UrlTypes
---@field DocRelative System.Web.UI.UrlTypes
---@field RootRelative System.Web.UI.UrlTypes
System.Web.UI.UrlTypes = {}
---@alias CS.System.Web.UI.UrlTypes System.Web.UI.UrlTypes
CS.System.Web.UI.UrlTypes = System.Web.UI.UrlTypes


---@class System.Web.UI.UserControl : System.Web.UI.TemplateControl
---@field Application System.Web.HttpApplicationState
---@field Attributes System.Web.UI.AttributeCollection
---@field Cache System.Web.Caching.Cache
---@field CachePolicy System.Web.UI.ControlCachePolicy
---@field IsPostBack boolean
---@field Request System.Web.HttpRequest
---@field Response System.Web.HttpResponse
---@field Server System.Web.HttpServerUtility
---@field Session System.Web.SessionState.HttpSessionState
---@field Trace System.Web.TraceContext
System.Web.UI.UserControl = {}
---@alias CS.System.Web.UI.UserControl System.Web.UI.UserControl
CS.System.Web.UI.UserControl = System.Web.UI.UserControl

---@return System.Web.UI.UserControl
function System.Web.UI.UserControl.New() end
function System.Web.UI.UserControl:DesignerInitialize() end
---@param page System.Web.UI.Page
function System.Web.UI.UserControl:InitializeAsUserControl(page) end
---@param virtualPath string
---@return string
function System.Web.UI.UserControl:MapPath(virtualPath) end

---@class System.Web.UI.UserControlControlBuilder : System.Web.UI.ControlBuilder
System.Web.UI.UserControlControlBuilder = {}
---@alias CS.System.Web.UI.UserControlControlBuilder System.Web.UI.UserControlControlBuilder
CS.System.Web.UI.UserControlControlBuilder = System.Web.UI.UserControlControlBuilder

---@return System.Web.UI.UserControlControlBuilder
function System.Web.UI.UserControlControlBuilder.New() end
---@return boolean
function System.Web.UI.UserControlControlBuilder:NeedsTagInnerText() end
---@param text string
function System.Web.UI.UserControlControlBuilder:SetTagInnerText(text) end
---@return System.Object
function System.Web.UI.UserControlControlBuilder:BuildObject() end

---@class System.Web.UI.UserControlParser : System.Web.UI.TemplateControlParser
System.Web.UI.UserControlParser = {}
---@alias CS.System.Web.UI.UserControlParser System.Web.UI.UserControlParser
CS.System.Web.UI.UserControlParser = System.Web.UI.UserControlParser

---@param virtualPath string
---@param inputFile string
---@param context System.Web.HttpContext
---@return System.Type
function System.Web.UI.UserControlParser.GetCompiledType(virtualPath, inputFile, context) end

---@class System.Web.UI.Util : System.Object
System.Web.UI.Util = {}
---@alias CS.System.Web.UI.Util System.Web.UI.Util
CS.System.Web.UI.Util = System.Web.UI.Util


---@class System.Web.UI.ValidationPropertyAttribute : System.Attribute
---@field Name string
System.Web.UI.ValidationPropertyAttribute = {}
---@alias CS.System.Web.UI.ValidationPropertyAttribute System.Web.UI.ValidationPropertyAttribute
CS.System.Web.UI.ValidationPropertyAttribute = System.Web.UI.ValidationPropertyAttribute

---@param name string
---@return System.Web.UI.ValidationPropertyAttribute
function System.Web.UI.ValidationPropertyAttribute.New(name) end

---@class System.Web.UI.ValidatorCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Web.UI.IValidator
---@field SyncRoot System.Object
System.Web.UI.ValidatorCollection = {}
---@alias CS.System.Web.UI.ValidatorCollection System.Web.UI.ValidatorCollection
CS.System.Web.UI.ValidatorCollection = System.Web.UI.ValidatorCollection

---@return System.Web.UI.ValidatorCollection
function System.Web.UI.ValidatorCollection.New() end
---@param validator System.Web.UI.IValidator
function System.Web.UI.ValidatorCollection:Add(validator) end
---@param validator System.Web.UI.IValidator
---@return boolean
function System.Web.UI.ValidatorCollection:Contains(validator) end
---@param array System.Array
---@param index number
function System.Web.UI.ValidatorCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.UI.ValidatorCollection:GetEnumerator() end
---@param validator System.Web.UI.IValidator
function System.Web.UI.ValidatorCollection:Remove(validator) end

---@class System.Web.UI.VerificationAttribute : System.Attribute
---@field Checkpoint string
---@field ConditionalProperty string
---@field ConditionalValue string
---@field Guideline string
---@field GuidelineUrl string
---@field Message string
---@field Priority number
---@field VerificationConditionalOperator System.Web.UI.VerificationConditionalOperator
---@field VerificationReportLevel System.Web.UI.VerificationReportLevel
---@field VerificationRule System.Web.UI.VerificationRule
System.Web.UI.VerificationAttribute = {}
---@alias CS.System.Web.UI.VerificationAttribute System.Web.UI.VerificationAttribute
CS.System.Web.UI.VerificationAttribute = System.Web.UI.VerificationAttribute

---@overload fun(guideline: string, checkpoint: string, reportLevel: System.Web.UI.VerificationReportLevel, priority: number, message: string) : System.Web.UI.VerificationAttribute
---@overload fun(guideline: string, checkpoint: string, reportLevel: System.Web.UI.VerificationReportLevel, priority: number, message: string, rule: System.Web.UI.VerificationRule, conditionalProperty: string) : System.Web.UI.VerificationAttribute
---@param guideline string
---@param checkpoint string
---@param reportLevel System.Web.UI.VerificationReportLevel
---@param priority number
---@param message string
---@param rule System.Web.UI.VerificationRule
---@param conditionalProperty string
---@param conditionalOperator System.Web.UI.VerificationConditionalOperator
---@param conditionalValue string
---@param guidelineUrl string
---@return System.Web.UI.VerificationAttribute
function System.Web.UI.VerificationAttribute.New(guideline, checkpoint, reportLevel, priority, message, rule, conditionalProperty, conditionalOperator, conditionalValue, guidelineUrl) end

---@class System.Web.UI.VerificationConditionalOperator
---@field Equals System.Web.UI.VerificationConditionalOperator
---@field NotEquals System.Web.UI.VerificationConditionalOperator
System.Web.UI.VerificationConditionalOperator = {}
---@alias CS.System.Web.UI.VerificationConditionalOperator System.Web.UI.VerificationConditionalOperator
CS.System.Web.UI.VerificationConditionalOperator = System.Web.UI.VerificationConditionalOperator


---@class System.Web.UI.VerificationReportLevel
---@field Error System.Web.UI.VerificationReportLevel
---@field Warning System.Web.UI.VerificationReportLevel
---@field Guideline System.Web.UI.VerificationReportLevel
System.Web.UI.VerificationReportLevel = {}
---@alias CS.System.Web.UI.VerificationReportLevel System.Web.UI.VerificationReportLevel
CS.System.Web.UI.VerificationReportLevel = System.Web.UI.VerificationReportLevel


---@class System.Web.UI.VerificationRule
---@field Required System.Web.UI.VerificationRule
---@field Prohibited System.Web.UI.VerificationRule
---@field NotEmptyString System.Web.UI.VerificationRule
System.Web.UI.VerificationRule = {}
---@alias CS.System.Web.UI.VerificationRule System.Web.UI.VerificationRule
CS.System.Web.UI.VerificationRule = System.Web.UI.VerificationRule


---@class System.Web.UI.ViewStateException : System.Exception
---@field IsConnected boolean
---@field Message string
---@field Path string
---@field PersistedState string
---@field Referer string
---@field RemoteAddress string
---@field RemotePort string
---@field UserAgent string
System.Web.UI.ViewStateException = {}
---@alias CS.System.Web.UI.ViewStateException System.Web.UI.ViewStateException
CS.System.Web.UI.ViewStateException = System.Web.UI.ViewStateException

---@return System.Web.UI.ViewStateException
function System.Web.UI.ViewStateException.New() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.UI.ViewStateException:GetObjectData(info, context) end

---@class System.Web.UI.ViewStateModeByIdAttribute : System.Attribute
System.Web.UI.ViewStateModeByIdAttribute = {}
---@alias CS.System.Web.UI.ViewStateModeByIdAttribute System.Web.UI.ViewStateModeByIdAttribute
CS.System.Web.UI.ViewStateModeByIdAttribute = System.Web.UI.ViewStateModeByIdAttribute

---@return System.Web.UI.ViewStateModeByIdAttribute
function System.Web.UI.ViewStateModeByIdAttribute.New() end

---@class System.Web.UI.VirtualReferenceType
---@field Page System.Web.UI.VirtualReferenceType
---@field UserControl System.Web.UI.VirtualReferenceType
---@field Master System.Web.UI.VirtualReferenceType
---@field SourceFile System.Web.UI.VirtualReferenceType
---@field Other System.Web.UI.VirtualReferenceType
System.Web.UI.VirtualReferenceType = {}
---@alias CS.System.Web.UI.VirtualReferenceType System.Web.UI.VirtualReferenceType
CS.System.Web.UI.VirtualReferenceType = System.Web.UI.VirtualReferenceType


---@class System.Web.UI.WebHandlerParser : System.Web.UI.SimpleWebHandlerParser
System.Web.UI.WebHandlerParser = {}
---@alias CS.System.Web.UI.WebHandlerParser System.Web.UI.WebHandlerParser
CS.System.Web.UI.WebHandlerParser = System.Web.UI.WebHandlerParser

---@param context System.Web.HttpContext
---@param virtualPath string
---@param physicalPath string
---@return System.Type
function System.Web.UI.WebHandlerParser.GetCompiledType(context, virtualPath, physicalPath) end

---@class System.Web.UI.WebResourceAttribute : System.Attribute
---@field ContentType string
---@field PerformSubstitution boolean
---@field WebResource string
---@field CdnPath string
---@field CdnSupportsSecureConnection boolean
---@field LoadSuccessExpression string
System.Web.UI.WebResourceAttribute = {}
---@alias CS.System.Web.UI.WebResourceAttribute System.Web.UI.WebResourceAttribute
CS.System.Web.UI.WebResourceAttribute = System.Web.UI.WebResourceAttribute

---@param webResource string
---@param contentType string
---@return System.Web.UI.WebResourceAttribute
function System.Web.UI.WebResourceAttribute.New(webResource, contentType) end

---@class System.Web.UI.WebServiceParser : System.Web.UI.SimpleWebHandlerParser
System.Web.UI.WebServiceParser = {}
---@alias CS.System.Web.UI.WebServiceParser System.Web.UI.WebServiceParser
CS.System.Web.UI.WebServiceParser = System.Web.UI.WebServiceParser

---@param inputFile string
---@param context System.Web.HttpContext
---@return System.Type
function System.Web.UI.WebServiceParser.GetCompiledType(inputFile, context) end

---@class System.Web.UI.XPathBinder : System.Object
System.Web.UI.XPathBinder = {}
---@alias CS.System.Web.UI.XPathBinder System.Web.UI.XPathBinder
CS.System.Web.UI.XPathBinder = System.Web.UI.XPathBinder

---@overload fun(container: System.Object, xPath: string) : System.Object
---@overload fun(container: System.Object, xPath: string, resolver: System.Xml.IXmlNamespaceResolver) : System.Object
---@overload fun(container: System.Object, xPath: string, format: string) : string
---@param container System.Object
---@param xPath string
---@param format string
---@param resolver System.Xml.IXmlNamespaceResolver
---@return string
function System.Web.UI.XPathBinder.Eval(container, xPath, format, resolver) end
---@overload fun(container: System.Object, xPath: string) : System.Collections.IEnumerable
---@param container System.Object
---@param xPath string
---@param resolver System.Xml.IXmlNamespaceResolver
---@return System.Collections.IEnumerable
function System.Web.UI.XPathBinder.Select(container, xPath, resolver) end

---@class System.Web.UI.XhtmlMobileDocType
---@field XhtmlBasic System.Web.UI.XhtmlMobileDocType
---@field XhtmlMobileProfile System.Web.UI.XhtmlMobileDocType
---@field Wml20 System.Web.UI.XhtmlMobileDocType
System.Web.UI.XhtmlMobileDocType = {}
---@alias CS.System.Web.UI.XhtmlMobileDocType System.Web.UI.XhtmlMobileDocType
CS.System.Web.UI.XhtmlMobileDocType = System.Web.UI.XhtmlMobileDocType


---@class System.Web.UI.XhtmlTextWriter : System.Web.UI.HtmlTextWriter
System.Web.UI.XhtmlTextWriter = {}
---@alias CS.System.Web.UI.XhtmlTextWriter System.Web.UI.XhtmlTextWriter
CS.System.Web.UI.XhtmlTextWriter = System.Web.UI.XhtmlTextWriter

---@overload fun(writer: System.IO.TextWriter) : System.Web.UI.XhtmlTextWriter
---@param writer System.IO.TextWriter
---@param tabString string
---@return System.Web.UI.XhtmlTextWriter
function System.Web.UI.XhtmlTextWriter.New(writer, tabString) end
---@param elementName string
---@param attributeName string
function System.Web.UI.XhtmlTextWriter:AddRecognizedAttribute(elementName, attributeName) end
---@param attributeName string
---@return boolean
function System.Web.UI.XhtmlTextWriter:IsValidFormAttribute(attributeName) end
---@param elementName string
---@param attributeName string
function System.Web.UI.XhtmlTextWriter:RemoveRecognizedAttribute(elementName, attributeName) end
---@param docType System.Web.UI.XhtmlMobileDocType
function System.Web.UI.XhtmlTextWriter:SetDocType(docType) end
function System.Web.UI.XhtmlTextWriter:WriteBreak() end

---@class System.Web.UI.HtmlControls.HtmlAnchor : System.Web.UI.HtmlControls.HtmlContainerControl
---@field HRef string
---@field Name string
---@field Target string
---@field Title string
---@field CausesValidation boolean
---@field ValidationGroup string
System.Web.UI.HtmlControls.HtmlAnchor = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlAnchor System.Web.UI.HtmlControls.HtmlAnchor
CS.System.Web.UI.HtmlControls.HtmlAnchor = System.Web.UI.HtmlControls.HtmlAnchor

---@return System.Web.UI.HtmlControls.HtmlAnchor
function System.Web.UI.HtmlControls.HtmlAnchor.New() end

---@class System.Web.UI.HtmlControls.HtmlButton : System.Web.UI.HtmlControls.HtmlContainerControl
---@field CausesValidation boolean
---@field ValidationGroup string
System.Web.UI.HtmlControls.HtmlButton = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlButton System.Web.UI.HtmlControls.HtmlButton
CS.System.Web.UI.HtmlControls.HtmlButton = System.Web.UI.HtmlControls.HtmlButton

---@return System.Web.UI.HtmlControls.HtmlButton
function System.Web.UI.HtmlControls.HtmlButton.New() end

---@class System.Web.UI.HtmlControls.HtmlContainerControl : System.Web.UI.HtmlControls.HtmlControl
---@field InnerHtml string
---@field InnerText string
System.Web.UI.HtmlControls.HtmlContainerControl = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlContainerControl System.Web.UI.HtmlControls.HtmlContainerControl
CS.System.Web.UI.HtmlControls.HtmlContainerControl = System.Web.UI.HtmlControls.HtmlContainerControl

---@param tag string
---@return System.Web.UI.HtmlControls.HtmlContainerControl
function System.Web.UI.HtmlControls.HtmlContainerControl.New(tag) end

---@class System.Web.UI.HtmlControls.HtmlControl : System.Web.UI.Control
---@field Attributes System.Web.UI.AttributeCollection
---@field Disabled boolean
---@field Style System.Web.UI.CssStyleCollection
---@field TagName string
System.Web.UI.HtmlControls.HtmlControl = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlControl System.Web.UI.HtmlControls.HtmlControl
CS.System.Web.UI.HtmlControls.HtmlControl = System.Web.UI.HtmlControls.HtmlControl


---@class System.Web.UI.HtmlControls.HtmlControlBuilder : System.Web.UI.ControlBuilder
System.Web.UI.HtmlControls.HtmlControlBuilder = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlControlBuilder System.Web.UI.HtmlControls.HtmlControlBuilder
CS.System.Web.UI.HtmlControls.HtmlControlBuilder = System.Web.UI.HtmlControls.HtmlControlBuilder

---@return System.Web.UI.HtmlControls.HtmlControlBuilder
function System.Web.UI.HtmlControls.HtmlControlBuilder.New() end
---@return boolean
function System.Web.UI.HtmlControls.HtmlControlBuilder:HasBody() end

---@class System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder : System.Web.UI.ControlBuilder
System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder
CS.System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder = System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder

---@return System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder
function System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder.New() end
---@return boolean
function System.Web.UI.HtmlControls.HtmlEmptyTagControlBuilder:HasBody() end

---@class System.Web.UI.HtmlControls.HtmlForm : System.Web.UI.HtmlControls.HtmlContainerControl
---@field Action string
---@field DefaultButton string
---@field DefaultFocus string
---@field Enctype string
---@field Method string
---@field Name string
---@field SubmitDisabledControls boolean
---@field Target string
---@field UniqueID string
System.Web.UI.HtmlControls.HtmlForm = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlForm System.Web.UI.HtmlControls.HtmlForm
CS.System.Web.UI.HtmlControls.HtmlForm = System.Web.UI.HtmlControls.HtmlForm

---@return System.Web.UI.HtmlControls.HtmlForm
function System.Web.UI.HtmlControls.HtmlForm.New() end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.HtmlControls.HtmlForm:RenderControl(writer) end

---@class System.Web.UI.HtmlControls.HtmlGenericControl : System.Web.UI.HtmlControls.HtmlContainerControl
---@field TagName string
System.Web.UI.HtmlControls.HtmlGenericControl = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlGenericControl System.Web.UI.HtmlControls.HtmlGenericControl
CS.System.Web.UI.HtmlControls.HtmlGenericControl = System.Web.UI.HtmlControls.HtmlGenericControl

---@overload fun() : System.Web.UI.HtmlControls.HtmlGenericControl
---@param tag string
---@return System.Web.UI.HtmlControls.HtmlGenericControl
function System.Web.UI.HtmlControls.HtmlGenericControl.New(tag) end

---@class System.Web.UI.HtmlControls.HtmlHead : System.Web.UI.HtmlControls.HtmlGenericControl
---@field Description string
---@field Keywords string
---@field StyleSheet System.Web.UI.IStyleSheet
---@field Title string
System.Web.UI.HtmlControls.HtmlHead = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlHead System.Web.UI.HtmlControls.HtmlHead
CS.System.Web.UI.HtmlControls.HtmlHead = System.Web.UI.HtmlControls.HtmlHead

---@overload fun() : System.Web.UI.HtmlControls.HtmlHead
---@param tag string
---@return System.Web.UI.HtmlControls.HtmlHead
function System.Web.UI.HtmlControls.HtmlHead.New(tag) end

---@class System.Web.UI.HtmlControls.StyleSheetBag : System.Object
System.Web.UI.HtmlControls.StyleSheetBag = {}
---@alias CS.System.Web.UI.HtmlControls.StyleSheetBag System.Web.UI.HtmlControls.StyleSheetBag
CS.System.Web.UI.HtmlControls.StyleSheetBag = System.Web.UI.HtmlControls.StyleSheetBag

---@return System.Web.UI.HtmlControls.StyleSheetBag
function System.Web.UI.HtmlControls.StyleSheetBag.New() end
---@param style System.Web.UI.WebControls.Style
---@param urlResolver System.Web.UI.IUrlResolutionService
---@param selection string
function System.Web.UI.HtmlControls.StyleSheetBag:CreateStyleRule(style, urlResolver, selection) end
---@param style System.Web.UI.WebControls.Style
---@param urlResolver System.Web.UI.IUrlResolutionService
function System.Web.UI.HtmlControls.StyleSheetBag:RegisterStyle(style, urlResolver) end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.HtmlControls.StyleSheetBag:Render(writer) end

---@class System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry : System.Object
---@field Style System.Web.UI.WebControls.Style
---@field Selection string
---@field UrlResolver System.Web.UI.IUrlResolutionService
System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry = {}
---@alias CS.System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry
CS.System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry = System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry

---@return System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry
function System.Web.UI.HtmlControls.StyleSheetBag.StyleEntry.New() end

---@class System.Web.UI.HtmlControls.HtmlHeadBuilder : System.Web.UI.ControlBuilder
System.Web.UI.HtmlControls.HtmlHeadBuilder = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlHeadBuilder System.Web.UI.HtmlControls.HtmlHeadBuilder
CS.System.Web.UI.HtmlControls.HtmlHeadBuilder = System.Web.UI.HtmlControls.HtmlHeadBuilder

---@return System.Web.UI.HtmlControls.HtmlHeadBuilder
function System.Web.UI.HtmlControls.HtmlHeadBuilder.New() end
---@return boolean
function System.Web.UI.HtmlControls.HtmlHeadBuilder:AllowWhitespaceLiterals() end
---@param tagName string
---@param attribs System.Collections.IDictionary
---@return System.Type
function System.Web.UI.HtmlControls.HtmlHeadBuilder:GetChildControlType(tagName, attribs) end

---@class System.Web.UI.HtmlControls.HtmlImage : System.Web.UI.HtmlControls.HtmlControl
---@field Align string
---@field Alt string
---@field Border number
---@field Height number
---@field Src string
---@field Width number
System.Web.UI.HtmlControls.HtmlImage = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlImage System.Web.UI.HtmlControls.HtmlImage
CS.System.Web.UI.HtmlControls.HtmlImage = System.Web.UI.HtmlControls.HtmlImage

---@return System.Web.UI.HtmlControls.HtmlImage
function System.Web.UI.HtmlControls.HtmlImage.New() end

---@class System.Web.UI.HtmlControls.HtmlInputButton : System.Web.UI.HtmlControls.HtmlInputControl
---@field CausesValidation boolean
---@field ValidationGroup string
System.Web.UI.HtmlControls.HtmlInputButton = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputButton System.Web.UI.HtmlControls.HtmlInputButton
CS.System.Web.UI.HtmlControls.HtmlInputButton = System.Web.UI.HtmlControls.HtmlInputButton

---@overload fun() : System.Web.UI.HtmlControls.HtmlInputButton
---@param type string
---@return System.Web.UI.HtmlControls.HtmlInputButton
function System.Web.UI.HtmlControls.HtmlInputButton.New(type) end

---@class System.Web.UI.HtmlControls.HtmlInputCheckBox : System.Web.UI.HtmlControls.HtmlInputControl
---@field Checked boolean
System.Web.UI.HtmlControls.HtmlInputCheckBox = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputCheckBox System.Web.UI.HtmlControls.HtmlInputCheckBox
CS.System.Web.UI.HtmlControls.HtmlInputCheckBox = System.Web.UI.HtmlControls.HtmlInputCheckBox

---@return System.Web.UI.HtmlControls.HtmlInputCheckBox
function System.Web.UI.HtmlControls.HtmlInputCheckBox.New() end

---@class System.Web.UI.HtmlControls.HtmlInputControl : System.Web.UI.HtmlControls.HtmlControl
---@field Name string
---@field Type string
---@field Value string
System.Web.UI.HtmlControls.HtmlInputControl = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputControl System.Web.UI.HtmlControls.HtmlInputControl
CS.System.Web.UI.HtmlControls.HtmlInputControl = System.Web.UI.HtmlControls.HtmlInputControl


---@class System.Web.UI.HtmlControls.HtmlInputFile : System.Web.UI.HtmlControls.HtmlInputControl
---@field Accept string
---@field MaxLength number
---@field PostedFile System.Web.HttpPostedFile
---@field Size number
---@field Value string
System.Web.UI.HtmlControls.HtmlInputFile = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputFile System.Web.UI.HtmlControls.HtmlInputFile
CS.System.Web.UI.HtmlControls.HtmlInputFile = System.Web.UI.HtmlControls.HtmlInputFile

---@return System.Web.UI.HtmlControls.HtmlInputFile
function System.Web.UI.HtmlControls.HtmlInputFile.New() end

---@class System.Web.UI.HtmlControls.HtmlInputHidden : System.Web.UI.HtmlControls.HtmlInputControl
System.Web.UI.HtmlControls.HtmlInputHidden = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputHidden System.Web.UI.HtmlControls.HtmlInputHidden
CS.System.Web.UI.HtmlControls.HtmlInputHidden = System.Web.UI.HtmlControls.HtmlInputHidden

---@return System.Web.UI.HtmlControls.HtmlInputHidden
function System.Web.UI.HtmlControls.HtmlInputHidden.New() end

---@class System.Web.UI.HtmlControls.HtmlInputImage : System.Web.UI.HtmlControls.HtmlInputControl
---@field CausesValidation boolean
---@field Align string
---@field Alt string
---@field Src string
---@field Border number
---@field ValidationGroup string
System.Web.UI.HtmlControls.HtmlInputImage = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputImage System.Web.UI.HtmlControls.HtmlInputImage
CS.System.Web.UI.HtmlControls.HtmlInputImage = System.Web.UI.HtmlControls.HtmlInputImage

---@return System.Web.UI.HtmlControls.HtmlInputImage
function System.Web.UI.HtmlControls.HtmlInputImage.New() end

---@class System.Web.UI.HtmlControls.HtmlInputPassword : System.Web.UI.HtmlControls.HtmlInputText
System.Web.UI.HtmlControls.HtmlInputPassword = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputPassword System.Web.UI.HtmlControls.HtmlInputPassword
CS.System.Web.UI.HtmlControls.HtmlInputPassword = System.Web.UI.HtmlControls.HtmlInputPassword

---@return System.Web.UI.HtmlControls.HtmlInputPassword
function System.Web.UI.HtmlControls.HtmlInputPassword.New() end

---@class System.Web.UI.HtmlControls.HtmlInputRadioButton : System.Web.UI.HtmlControls.HtmlInputControl
---@field Checked boolean
---@field Name string
---@field Value string
System.Web.UI.HtmlControls.HtmlInputRadioButton = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputRadioButton System.Web.UI.HtmlControls.HtmlInputRadioButton
CS.System.Web.UI.HtmlControls.HtmlInputRadioButton = System.Web.UI.HtmlControls.HtmlInputRadioButton

---@return System.Web.UI.HtmlControls.HtmlInputRadioButton
function System.Web.UI.HtmlControls.HtmlInputRadioButton.New() end

---@class System.Web.UI.HtmlControls.HtmlInputReset : System.Web.UI.HtmlControls.HtmlInputButton
---@field CausesValidation boolean
---@field ValidationGroup string
System.Web.UI.HtmlControls.HtmlInputReset = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputReset System.Web.UI.HtmlControls.HtmlInputReset
CS.System.Web.UI.HtmlControls.HtmlInputReset = System.Web.UI.HtmlControls.HtmlInputReset

---@overload fun() : System.Web.UI.HtmlControls.HtmlInputReset
---@param type string
---@return System.Web.UI.HtmlControls.HtmlInputReset
function System.Web.UI.HtmlControls.HtmlInputReset.New(type) end

---@class System.Web.UI.HtmlControls.HtmlInputSubmit : System.Web.UI.HtmlControls.HtmlInputButton
System.Web.UI.HtmlControls.HtmlInputSubmit = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputSubmit System.Web.UI.HtmlControls.HtmlInputSubmit
CS.System.Web.UI.HtmlControls.HtmlInputSubmit = System.Web.UI.HtmlControls.HtmlInputSubmit

---@overload fun() : System.Web.UI.HtmlControls.HtmlInputSubmit
---@param type string
---@return System.Web.UI.HtmlControls.HtmlInputSubmit
function System.Web.UI.HtmlControls.HtmlInputSubmit.New(type) end

---@class System.Web.UI.HtmlControls.HtmlInputText : System.Web.UI.HtmlControls.HtmlInputControl
---@field MaxLength number
---@field Size number
---@field Value string
System.Web.UI.HtmlControls.HtmlInputText = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlInputText System.Web.UI.HtmlControls.HtmlInputText
CS.System.Web.UI.HtmlControls.HtmlInputText = System.Web.UI.HtmlControls.HtmlInputText

---@overload fun() : System.Web.UI.HtmlControls.HtmlInputText
---@param type string
---@return System.Web.UI.HtmlControls.HtmlInputText
function System.Web.UI.HtmlControls.HtmlInputText.New(type) end

---@class System.Web.UI.HtmlControls.HtmlLink : System.Web.UI.HtmlControls.HtmlControl
---@field Href string
System.Web.UI.HtmlControls.HtmlLink = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlLink System.Web.UI.HtmlControls.HtmlLink
CS.System.Web.UI.HtmlControls.HtmlLink = System.Web.UI.HtmlControls.HtmlLink

---@return System.Web.UI.HtmlControls.HtmlLink
function System.Web.UI.HtmlControls.HtmlLink.New() end

---@class System.Web.UI.HtmlControls.HtmlMeta : System.Web.UI.HtmlControls.HtmlControl
---@field Content string
---@field HttpEquiv string
---@field Name string
---@field Scheme string
System.Web.UI.HtmlControls.HtmlMeta = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlMeta System.Web.UI.HtmlControls.HtmlMeta
CS.System.Web.UI.HtmlControls.HtmlMeta = System.Web.UI.HtmlControls.HtmlMeta

---@return System.Web.UI.HtmlControls.HtmlMeta
function System.Web.UI.HtmlControls.HtmlMeta.New() end

---@class System.Web.UI.HtmlControls.HtmlSelect : System.Web.UI.HtmlControls.HtmlContainerControl
---@field DataMember string
---@field DataSource System.Object
---@field DataSourceID string
---@field DataTextField string
---@field DataValueField string
---@field InnerHtml string
---@field InnerText string
---@field Items System.Web.UI.WebControls.ListItemCollection
---@field Multiple boolean
---@field Name string
---@field SelectedIndex number
---@field Size number
---@field Value string
System.Web.UI.HtmlControls.HtmlSelect = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlSelect System.Web.UI.HtmlControls.HtmlSelect
CS.System.Web.UI.HtmlControls.HtmlSelect = System.Web.UI.HtmlControls.HtmlSelect

---@return System.Web.UI.HtmlControls.HtmlSelect
function System.Web.UI.HtmlControls.HtmlSelect.New() end

---@class System.Web.UI.HtmlControls.HtmlSelectBuilder : System.Web.UI.ControlBuilder
System.Web.UI.HtmlControls.HtmlSelectBuilder = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlSelectBuilder System.Web.UI.HtmlControls.HtmlSelectBuilder
CS.System.Web.UI.HtmlControls.HtmlSelectBuilder = System.Web.UI.HtmlControls.HtmlSelectBuilder

---@return System.Web.UI.HtmlControls.HtmlSelectBuilder
function System.Web.UI.HtmlControls.HtmlSelectBuilder.New() end
---@return boolean
function System.Web.UI.HtmlControls.HtmlSelectBuilder:AllowWhitespaceLiterals() end
---@param tagName string
---@param attribs System.Collections.IDictionary
---@return System.Type
function System.Web.UI.HtmlControls.HtmlSelectBuilder:GetChildControlType(tagName, attribs) end

---@class System.Web.UI.HtmlControls.HtmlTable : System.Web.UI.HtmlControls.HtmlContainerControl
---@field Align string
---@field BgColor string
---@field Border number
---@field BorderColor string
---@field CellPadding number
---@field CellSpacing number
---@field Height string
---@field InnerHtml string
---@field InnerText string
---@field Rows System.Web.UI.HtmlControls.HtmlTableRowCollection
---@field Width string
System.Web.UI.HtmlControls.HtmlTable = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTable System.Web.UI.HtmlControls.HtmlTable
CS.System.Web.UI.HtmlControls.HtmlTable = System.Web.UI.HtmlControls.HtmlTable

---@return System.Web.UI.HtmlControls.HtmlTable
function System.Web.UI.HtmlControls.HtmlTable.New() end

---@class System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection : System.Web.UI.ControlCollection
System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection
CS.System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection = System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection

---@param child System.Web.UI.Control
function System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection:Add(child) end
---@param index number
---@param child System.Web.UI.Control
function System.Web.UI.HtmlControls.HtmlTable.HtmlTableRowControlCollection:AddAt(index, child) end

---@class System.Web.UI.HtmlControls.HtmlTableCell : System.Web.UI.HtmlControls.HtmlContainerControl
---@field Align string
---@field BgColor string
---@field BorderColor string
---@field ColSpan number
---@field Height string
---@field NoWrap boolean
---@field RowSpan number
---@field VAlign string
---@field Width string
System.Web.UI.HtmlControls.HtmlTableCell = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTableCell System.Web.UI.HtmlControls.HtmlTableCell
CS.System.Web.UI.HtmlControls.HtmlTableCell = System.Web.UI.HtmlControls.HtmlTableCell

---@overload fun() : System.Web.UI.HtmlControls.HtmlTableCell
---@param tagName string
---@return System.Web.UI.HtmlControls.HtmlTableCell
function System.Web.UI.HtmlControls.HtmlTableCell.New(tagName) end

---@class System.Web.UI.HtmlControls.HtmlTableCellCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Web.UI.HtmlControls.HtmlTableCell
---@field SyncRoot System.Object
System.Web.UI.HtmlControls.HtmlTableCellCollection = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTableCellCollection System.Web.UI.HtmlControls.HtmlTableCellCollection
CS.System.Web.UI.HtmlControls.HtmlTableCellCollection = System.Web.UI.HtmlControls.HtmlTableCellCollection

---@param cell System.Web.UI.HtmlControls.HtmlTableCell
function System.Web.UI.HtmlControls.HtmlTableCellCollection:Add(cell) end
function System.Web.UI.HtmlControls.HtmlTableCellCollection:Clear() end
---@param array System.Array
---@param index number
function System.Web.UI.HtmlControls.HtmlTableCellCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.UI.HtmlControls.HtmlTableCellCollection:GetEnumerator() end
---@param index number
---@param cell System.Web.UI.HtmlControls.HtmlTableCell
function System.Web.UI.HtmlControls.HtmlTableCellCollection:Insert(index, cell) end
---@param cell System.Web.UI.HtmlControls.HtmlTableCell
function System.Web.UI.HtmlControls.HtmlTableCellCollection:Remove(cell) end
---@param index number
function System.Web.UI.HtmlControls.HtmlTableCellCollection:RemoveAt(index) end

---@class System.Web.UI.HtmlControls.HtmlTableRow : System.Web.UI.HtmlControls.HtmlContainerControl
---@field Align string
---@field BgColor string
---@field BorderColor string
---@field Cells System.Web.UI.HtmlControls.HtmlTableCellCollection
---@field Height string
---@field InnerHtml string
---@field InnerText string
---@field VAlign string
System.Web.UI.HtmlControls.HtmlTableRow = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTableRow System.Web.UI.HtmlControls.HtmlTableRow
CS.System.Web.UI.HtmlControls.HtmlTableRow = System.Web.UI.HtmlControls.HtmlTableRow

---@return System.Web.UI.HtmlControls.HtmlTableRow
function System.Web.UI.HtmlControls.HtmlTableRow.New() end

---@class System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection : System.Web.UI.ControlCollection
System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection
CS.System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection = System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection

---@param child System.Web.UI.Control
function System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection:Add(child) end
---@param index number
---@param child System.Web.UI.Control
function System.Web.UI.HtmlControls.HtmlTableRow.HtmlTableCellControlCollection:AddAt(index, child) end

---@class System.Web.UI.HtmlControls.HtmlTableRowCollection : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Web.UI.HtmlControls.HtmlTableRow
---@field SyncRoot System.Object
System.Web.UI.HtmlControls.HtmlTableRowCollection = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTableRowCollection System.Web.UI.HtmlControls.HtmlTableRowCollection
CS.System.Web.UI.HtmlControls.HtmlTableRowCollection = System.Web.UI.HtmlControls.HtmlTableRowCollection

---@param row System.Web.UI.HtmlControls.HtmlTableRow
function System.Web.UI.HtmlControls.HtmlTableRowCollection:Add(row) end
function System.Web.UI.HtmlControls.HtmlTableRowCollection:Clear() end
---@param array System.Array
---@param index number
function System.Web.UI.HtmlControls.HtmlTableRowCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Web.UI.HtmlControls.HtmlTableRowCollection:GetEnumerator() end
---@param index number
---@param row System.Web.UI.HtmlControls.HtmlTableRow
function System.Web.UI.HtmlControls.HtmlTableRowCollection:Insert(index, row) end
---@param row System.Web.UI.HtmlControls.HtmlTableRow
function System.Web.UI.HtmlControls.HtmlTableRowCollection:Remove(row) end
---@param index number
function System.Web.UI.HtmlControls.HtmlTableRowCollection:RemoveAt(index) end

---@class System.Web.UI.HtmlControls.HtmlTextArea : System.Web.UI.HtmlControls.HtmlContainerControl
---@field Cols number
---@field Name string
---@field Rows number
---@field Value string
System.Web.UI.HtmlControls.HtmlTextArea = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTextArea System.Web.UI.HtmlControls.HtmlTextArea
CS.System.Web.UI.HtmlControls.HtmlTextArea = System.Web.UI.HtmlControls.HtmlTextArea

---@return System.Web.UI.HtmlControls.HtmlTextArea
function System.Web.UI.HtmlControls.HtmlTextArea.New() end

---@class System.Web.UI.HtmlControls.HtmlTitle : System.Web.UI.HtmlControls.HtmlControl
---@field Text string
System.Web.UI.HtmlControls.HtmlTitle = {}
---@alias CS.System.Web.UI.HtmlControls.HtmlTitle System.Web.UI.HtmlControls.HtmlTitle
CS.System.Web.UI.HtmlControls.HtmlTitle = System.Web.UI.HtmlControls.HtmlTitle

---@return System.Web.UI.HtmlControls.HtmlTitle
function System.Web.UI.HtmlControls.HtmlTitle.New() end

---@class System.Web.UI.Adapters.ControlAdapter : System.Object
System.Web.UI.Adapters.ControlAdapter = {}
---@alias CS.System.Web.UI.Adapters.ControlAdapter System.Web.UI.Adapters.ControlAdapter
CS.System.Web.UI.Adapters.ControlAdapter = System.Web.UI.Adapters.ControlAdapter


---@class System.Web.UI.Adapters.PageAdapter : System.Web.UI.Adapters.ControlAdapter
---@field CacheVaryByHeaders System.Collections.Specialized.StringCollection
---@field CacheVaryByParams System.Collections.Specialized.StringCollection
System.Web.UI.Adapters.PageAdapter = {}
---@alias CS.System.Web.UI.Adapters.PageAdapter System.Web.UI.Adapters.PageAdapter
CS.System.Web.UI.Adapters.PageAdapter = System.Web.UI.Adapters.PageAdapter

---@return System.Collections.Specialized.NameValueCollection
function System.Web.UI.Adapters.PageAdapter:DeterminePostBackMode() end
---@param groupName string
---@return System.Collections.ICollection
function System.Web.UI.Adapters.PageAdapter:GetRadioButtonsByGroup(groupName) end
---@return System.Web.UI.PageStatePersister
function System.Web.UI.Adapters.PageAdapter:GetStatePersister() end
---@param radioButton System.Web.UI.WebControls.RadioButton
function System.Web.UI.Adapters.PageAdapter:RegisterRadioButton(radioButton) end
---@overload fun(self: System.Web.UI.Adapters.PageAdapter, writer: System.Web.UI.HtmlTextWriter, targetUrl: string, encodeUrl: boolean, softkeyLabel: string)
---@param writer System.Web.UI.HtmlTextWriter
---@param targetUrl string
---@param encodeUrl boolean
---@param softkeyLabel string
---@param accessKey string
function System.Web.UI.Adapters.PageAdapter:RenderBeginHyperlink(writer, targetUrl, encodeUrl, softkeyLabel, accessKey) end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.Adapters.PageAdapter:RenderEndHyperlink(writer) end
---@overload fun(self: System.Web.UI.Adapters.PageAdapter, writer: System.Web.UI.HtmlTextWriter, target: string, argument: string, softkeyLabel: string, text: string)
---@param writer System.Web.UI.HtmlTextWriter
---@param target string
---@param argument string
---@param softkeyLabel string
---@param text string
---@param postUrl string
---@param accessKey string
function System.Web.UI.Adapters.PageAdapter:RenderPostBackEvent(writer, target, argument, softkeyLabel, text, postUrl, accessKey) end
---@param text string
---@return string
function System.Web.UI.Adapters.PageAdapter:TransformText(text) end
---@return System.Collections.Specialized.NameValueCollection
function System.Web.UI.Adapters.PageAdapter:DeterminePostBackModeUnvalidated() end

---@class System.Web.UI.WebControls.AdCreatedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.AdCreatedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.AdCreatedEventHandler System.Web.UI.WebControls.AdCreatedEventHandler
CS.System.Web.UI.WebControls.AdCreatedEventHandler = System.Web.UI.WebControls.AdCreatedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.AdCreatedEventHandler
function System.Web.UI.WebControls.AdCreatedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.AdCreatedEventArgs
function System.Web.UI.WebControls.AdCreatedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.AdCreatedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.AdCreatedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.AdCreatedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.AuthenticateEventArgs : System.EventArgs
---@field Authenticated boolean
System.Web.UI.WebControls.AuthenticateEventArgs = {}
---@alias CS.System.Web.UI.WebControls.AuthenticateEventArgs System.Web.UI.WebControls.AuthenticateEventArgs
CS.System.Web.UI.WebControls.AuthenticateEventArgs = System.Web.UI.WebControls.AuthenticateEventArgs

---@overload fun() : System.Web.UI.WebControls.AuthenticateEventArgs
---@param authenticated boolean
---@return System.Web.UI.WebControls.AuthenticateEventArgs
function System.Web.UI.WebControls.AuthenticateEventArgs.New(authenticated) end

---@class System.Web.UI.WebControls.AuthenticateEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.AuthenticateEventHandler = {}
---@alias CS.System.Web.UI.WebControls.AuthenticateEventHandler System.Web.UI.WebControls.AuthenticateEventHandler
CS.System.Web.UI.WebControls.AuthenticateEventHandler = System.Web.UI.WebControls.AuthenticateEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.AuthenticateEventHandler
function System.Web.UI.WebControls.AuthenticateEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.AuthenticateEventArgs
function System.Web.UI.WebControls.AuthenticateEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.AuthenticateEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.AuthenticateEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.AuthenticateEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.AutoCompleteType
---@field None System.Web.UI.WebControls.AutoCompleteType
---@field Disabled System.Web.UI.WebControls.AutoCompleteType
---@field Cellular System.Web.UI.WebControls.AutoCompleteType
---@field Company System.Web.UI.WebControls.AutoCompleteType
---@field Department System.Web.UI.WebControls.AutoCompleteType
---@field DisplayName System.Web.UI.WebControls.AutoCompleteType
---@field Email System.Web.UI.WebControls.AutoCompleteType
---@field FirstName System.Web.UI.WebControls.AutoCompleteType
---@field Gender System.Web.UI.WebControls.AutoCompleteType
---@field HomeCity System.Web.UI.WebControls.AutoCompleteType
---@field HomeCountryRegion System.Web.UI.WebControls.AutoCompleteType
---@field HomeFax System.Web.UI.WebControls.AutoCompleteType
---@field HomePhone System.Web.UI.WebControls.AutoCompleteType
---@field HomeState System.Web.UI.WebControls.AutoCompleteType
---@field HomeStreetAddress System.Web.UI.WebControls.AutoCompleteType
---@field HomeZipCode System.Web.UI.WebControls.AutoCompleteType
---@field Homepage System.Web.UI.WebControls.AutoCompleteType
---@field JobTitle System.Web.UI.WebControls.AutoCompleteType
---@field LastName System.Web.UI.WebControls.AutoCompleteType
---@field MiddleName System.Web.UI.WebControls.AutoCompleteType
---@field Notes System.Web.UI.WebControls.AutoCompleteType
---@field Office System.Web.UI.WebControls.AutoCompleteType
---@field Pager System.Web.UI.WebControls.AutoCompleteType
---@field BusinessCity System.Web.UI.WebControls.AutoCompleteType
---@field BusinessCountryRegion System.Web.UI.WebControls.AutoCompleteType
---@field BusinessFax System.Web.UI.WebControls.AutoCompleteType
---@field BusinessPhone System.Web.UI.WebControls.AutoCompleteType
---@field BusinessState System.Web.UI.WebControls.AutoCompleteType
---@field BusinessStreetAddress System.Web.UI.WebControls.AutoCompleteType
---@field BusinessUrl System.Web.UI.WebControls.AutoCompleteType
---@field BusinessZipCode System.Web.UI.WebControls.AutoCompleteType
---@field Search System.Web.UI.WebControls.AutoCompleteType
---@field Enabled System.Web.UI.WebControls.AutoCompleteType
System.Web.UI.WebControls.AutoCompleteType = {}
---@alias CS.System.Web.UI.WebControls.AutoCompleteType System.Web.UI.WebControls.AutoCompleteType
CS.System.Web.UI.WebControls.AutoCompleteType = System.Web.UI.WebControls.AutoCompleteType


---@class System.Web.UI.WebControls.BorderStyle
---@field NotSet System.Web.UI.WebControls.BorderStyle
---@field None System.Web.UI.WebControls.BorderStyle
---@field Dotted System.Web.UI.WebControls.BorderStyle
---@field Dashed System.Web.UI.WebControls.BorderStyle
---@field Solid System.Web.UI.WebControls.BorderStyle
---@field Double System.Web.UI.WebControls.BorderStyle
---@field Groove System.Web.UI.WebControls.BorderStyle
---@field Ridge System.Web.UI.WebControls.BorderStyle
---@field Inset System.Web.UI.WebControls.BorderStyle
---@field Outset System.Web.UI.WebControls.BorderStyle
System.Web.UI.WebControls.BorderStyle = {}
---@alias CS.System.Web.UI.WebControls.BorderStyle System.Web.UI.WebControls.BorderStyle
CS.System.Web.UI.WebControls.BorderStyle = System.Web.UI.WebControls.BorderStyle


---@class System.Web.UI.WebControls.BulletedListEventArgs : System.EventArgs
---@field Index number
System.Web.UI.WebControls.BulletedListEventArgs = {}
---@alias CS.System.Web.UI.WebControls.BulletedListEventArgs System.Web.UI.WebControls.BulletedListEventArgs
CS.System.Web.UI.WebControls.BulletedListEventArgs = System.Web.UI.WebControls.BulletedListEventArgs

---@param index number
---@return System.Web.UI.WebControls.BulletedListEventArgs
function System.Web.UI.WebControls.BulletedListEventArgs.New(index) end

---@class System.Web.UI.WebControls.BulletedListEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.BulletedListEventHandler = {}
---@alias CS.System.Web.UI.WebControls.BulletedListEventHandler System.Web.UI.WebControls.BulletedListEventHandler
CS.System.Web.UI.WebControls.BulletedListEventHandler = System.Web.UI.WebControls.BulletedListEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.BulletedListEventHandler
function System.Web.UI.WebControls.BulletedListEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.BulletedListEventArgs
function System.Web.UI.WebControls.BulletedListEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.BulletedListEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.BulletedListEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.BulletedListEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ButtonColumnType
---@field LinkButton System.Web.UI.WebControls.ButtonColumnType
---@field PushButton System.Web.UI.WebControls.ButtonColumnType
System.Web.UI.WebControls.ButtonColumnType = {}
---@alias CS.System.Web.UI.WebControls.ButtonColumnType System.Web.UI.WebControls.ButtonColumnType
CS.System.Web.UI.WebControls.ButtonColumnType = System.Web.UI.WebControls.ButtonColumnType


---@class System.Web.UI.WebControls.ButtonType
---@field Button System.Web.UI.WebControls.ButtonType
---@field Image System.Web.UI.WebControls.ButtonType
---@field Link System.Web.UI.WebControls.ButtonType
System.Web.UI.WebControls.ButtonType = {}
---@alias CS.System.Web.UI.WebControls.ButtonType System.Web.UI.WebControls.ButtonType
CS.System.Web.UI.WebControls.ButtonType = System.Web.UI.WebControls.ButtonType


---@class System.Web.UI.WebControls.CalendarSelectionMode
---@field None System.Web.UI.WebControls.CalendarSelectionMode
---@field Day System.Web.UI.WebControls.CalendarSelectionMode
---@field DayWeek System.Web.UI.WebControls.CalendarSelectionMode
---@field DayWeekMonth System.Web.UI.WebControls.CalendarSelectionMode
System.Web.UI.WebControls.CalendarSelectionMode = {}
---@alias CS.System.Web.UI.WebControls.CalendarSelectionMode System.Web.UI.WebControls.CalendarSelectionMode
CS.System.Web.UI.WebControls.CalendarSelectionMode = System.Web.UI.WebControls.CalendarSelectionMode


---@class System.Web.UI.WebControls.CallingDataMethodsEventArgs : System.EventArgs
---@field DataMethodsType System.Type
---@field DataMethodsObject System.Object
System.Web.UI.WebControls.CallingDataMethodsEventArgs = {}
---@alias CS.System.Web.UI.WebControls.CallingDataMethodsEventArgs System.Web.UI.WebControls.CallingDataMethodsEventArgs
CS.System.Web.UI.WebControls.CallingDataMethodsEventArgs = System.Web.UI.WebControls.CallingDataMethodsEventArgs

---@return System.Web.UI.WebControls.CallingDataMethodsEventArgs
function System.Web.UI.WebControls.CallingDataMethodsEventArgs.New() end

---@class System.Web.UI.WebControls.CallingDataMethodsEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.CallingDataMethodsEventHandler = {}
---@alias CS.System.Web.UI.WebControls.CallingDataMethodsEventHandler System.Web.UI.WebControls.CallingDataMethodsEventHandler
CS.System.Web.UI.WebControls.CallingDataMethodsEventHandler = System.Web.UI.WebControls.CallingDataMethodsEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.CallingDataMethodsEventHandler
function System.Web.UI.WebControls.CallingDataMethodsEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.CallingDataMethodsEventArgs
function System.Web.UI.WebControls.CallingDataMethodsEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.CallingDataMethodsEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.CallingDataMethodsEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.CallingDataMethodsEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.CommandEventArgs : System.EventArgs
---@field CommandName string
---@field CommandArgument System.Object
System.Web.UI.WebControls.CommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.CommandEventArgs System.Web.UI.WebControls.CommandEventArgs
CS.System.Web.UI.WebControls.CommandEventArgs = System.Web.UI.WebControls.CommandEventArgs

---@overload fun(e: System.Web.UI.WebControls.CommandEventArgs) : System.Web.UI.WebControls.CommandEventArgs
---@param commandName string
---@param argument System.Object
---@return System.Web.UI.WebControls.CommandEventArgs
function System.Web.UI.WebControls.CommandEventArgs.New(commandName, argument) end

---@class System.Web.UI.WebControls.CommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.CommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.CommandEventHandler System.Web.UI.WebControls.CommandEventHandler
CS.System.Web.UI.WebControls.CommandEventHandler = System.Web.UI.WebControls.CommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.CommandEventHandler
function System.Web.UI.WebControls.CommandEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.CommandEventArgs
function System.Web.UI.WebControls.CommandEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.CommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.CommandEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.CommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ContentDirection
---@field NotSet System.Web.UI.WebControls.ContentDirection
---@field LeftToRight System.Web.UI.WebControls.ContentDirection
---@field RightToLeft System.Web.UI.WebControls.ContentDirection
System.Web.UI.WebControls.ContentDirection = {}
---@alias CS.System.Web.UI.WebControls.ContentDirection System.Web.UI.WebControls.ContentDirection
CS.System.Web.UI.WebControls.ContentDirection = System.Web.UI.WebControls.ContentDirection


---@class System.Web.UI.WebControls.CreateUserErrorEventArgs : System.EventArgs
---@field CreateUserError System.Web.Security.MembershipCreateStatus
System.Web.UI.WebControls.CreateUserErrorEventArgs = {}
---@alias CS.System.Web.UI.WebControls.CreateUserErrorEventArgs System.Web.UI.WebControls.CreateUserErrorEventArgs
CS.System.Web.UI.WebControls.CreateUserErrorEventArgs = System.Web.UI.WebControls.CreateUserErrorEventArgs

---@param s System.Web.Security.MembershipCreateStatus
---@return System.Web.UI.WebControls.CreateUserErrorEventArgs
function System.Web.UI.WebControls.CreateUserErrorEventArgs.New(s) end

---@class System.Web.UI.WebControls.CreateUserErrorEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.CreateUserErrorEventHandler = {}
---@alias CS.System.Web.UI.WebControls.CreateUserErrorEventHandler System.Web.UI.WebControls.CreateUserErrorEventHandler
CS.System.Web.UI.WebControls.CreateUserErrorEventHandler = System.Web.UI.WebControls.CreateUserErrorEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.CreateUserErrorEventHandler
function System.Web.UI.WebControls.CreateUserErrorEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.CreateUserErrorEventArgs
function System.Web.UI.WebControls.CreateUserErrorEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.CreateUserErrorEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.CreateUserErrorEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.CreateUserErrorEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DataBoundControlMode
---@field ReadOnly System.Web.UI.WebControls.DataBoundControlMode
---@field Edit System.Web.UI.WebControls.DataBoundControlMode
---@field Insert System.Web.UI.WebControls.DataBoundControlMode
System.Web.UI.WebControls.DataBoundControlMode = {}
---@alias CS.System.Web.UI.WebControls.DataBoundControlMode System.Web.UI.WebControls.DataBoundControlMode
CS.System.Web.UI.WebControls.DataBoundControlMode = System.Web.UI.WebControls.DataBoundControlMode


---@class System.Web.UI.WebControls.DataControlCellType
---@field Header System.Web.UI.WebControls.DataControlCellType
---@field Footer System.Web.UI.WebControls.DataControlCellType
---@field DataCell System.Web.UI.WebControls.DataControlCellType
System.Web.UI.WebControls.DataControlCellType = {}
---@alias CS.System.Web.UI.WebControls.DataControlCellType System.Web.UI.WebControls.DataControlCellType
CS.System.Web.UI.WebControls.DataControlCellType = System.Web.UI.WebControls.DataControlCellType


---@class System.Web.UI.WebControls.DataControlRowState
---@field Normal System.Web.UI.WebControls.DataControlRowState
---@field Alternate System.Web.UI.WebControls.DataControlRowState
---@field Selected System.Web.UI.WebControls.DataControlRowState
---@field Edit System.Web.UI.WebControls.DataControlRowState
---@field Insert System.Web.UI.WebControls.DataControlRowState
System.Web.UI.WebControls.DataControlRowState = {}
---@alias CS.System.Web.UI.WebControls.DataControlRowState System.Web.UI.WebControls.DataControlRowState
CS.System.Web.UI.WebControls.DataControlRowState = System.Web.UI.WebControls.DataControlRowState


---@class System.Web.UI.WebControls.DataControlRowType
---@field Header System.Web.UI.WebControls.DataControlRowType
---@field Footer System.Web.UI.WebControls.DataControlRowType
---@field DataRow System.Web.UI.WebControls.DataControlRowType
---@field Separator System.Web.UI.WebControls.DataControlRowType
---@field Pager System.Web.UI.WebControls.DataControlRowType
---@field EmptyDataRow System.Web.UI.WebControls.DataControlRowType
System.Web.UI.WebControls.DataControlRowType = {}
---@alias CS.System.Web.UI.WebControls.DataControlRowType System.Web.UI.WebControls.DataControlRowType
CS.System.Web.UI.WebControls.DataControlRowType = System.Web.UI.WebControls.DataControlRowType


---@class System.Web.UI.WebControls.DataGridCommandEventArgs : System.Web.UI.WebControls.CommandEventArgs
---@field CommandSource System.Object
---@field Item System.Web.UI.WebControls.DataGridItem
System.Web.UI.WebControls.DataGridCommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DataGridCommandEventArgs System.Web.UI.WebControls.DataGridCommandEventArgs
CS.System.Web.UI.WebControls.DataGridCommandEventArgs = System.Web.UI.WebControls.DataGridCommandEventArgs

---@param item System.Web.UI.WebControls.DataGridItem
---@param commandSource System.Object
---@param originalArgs System.Web.UI.WebControls.CommandEventArgs
---@return System.Web.UI.WebControls.DataGridCommandEventArgs
function System.Web.UI.WebControls.DataGridCommandEventArgs.New(item, commandSource, originalArgs) end

---@class System.Web.UI.WebControls.DataGridCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DataGridCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DataGridCommandEventHandler System.Web.UI.WebControls.DataGridCommandEventHandler
CS.System.Web.UI.WebControls.DataGridCommandEventHandler = System.Web.UI.WebControls.DataGridCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DataGridCommandEventHandler
function System.Web.UI.WebControls.DataGridCommandEventHandler.New(object, method) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataGridCommandEventArgs
function System.Web.UI.WebControls.DataGridCommandEventHandler:Invoke(source, e) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataGridCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DataGridCommandEventHandler:BeginInvoke(source, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DataGridCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DataGridItemEventArgs : System.EventArgs
---@field Item System.Web.UI.WebControls.DataGridItem
System.Web.UI.WebControls.DataGridItemEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DataGridItemEventArgs System.Web.UI.WebControls.DataGridItemEventArgs
CS.System.Web.UI.WebControls.DataGridItemEventArgs = System.Web.UI.WebControls.DataGridItemEventArgs

---@param item System.Web.UI.WebControls.DataGridItem
---@return System.Web.UI.WebControls.DataGridItemEventArgs
function System.Web.UI.WebControls.DataGridItemEventArgs.New(item) end

---@class System.Web.UI.WebControls.DataGridItemEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DataGridItemEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DataGridItemEventHandler System.Web.UI.WebControls.DataGridItemEventHandler
CS.System.Web.UI.WebControls.DataGridItemEventHandler = System.Web.UI.WebControls.DataGridItemEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DataGridItemEventHandler
function System.Web.UI.WebControls.DataGridItemEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DataGridItemEventArgs
function System.Web.UI.WebControls.DataGridItemEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DataGridItemEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DataGridItemEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DataGridItemEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DataGridPageChangedEventArgs : System.EventArgs
---@field CommandSource System.Object
---@field NewPageIndex number
System.Web.UI.WebControls.DataGridPageChangedEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DataGridPageChangedEventArgs System.Web.UI.WebControls.DataGridPageChangedEventArgs
CS.System.Web.UI.WebControls.DataGridPageChangedEventArgs = System.Web.UI.WebControls.DataGridPageChangedEventArgs

---@param commandSource System.Object
---@param newPageIndex number
---@return System.Web.UI.WebControls.DataGridPageChangedEventArgs
function System.Web.UI.WebControls.DataGridPageChangedEventArgs.New(commandSource, newPageIndex) end

---@class System.Web.UI.WebControls.DataGridPageChangedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DataGridPageChangedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DataGridPageChangedEventHandler System.Web.UI.WebControls.DataGridPageChangedEventHandler
CS.System.Web.UI.WebControls.DataGridPageChangedEventHandler = System.Web.UI.WebControls.DataGridPageChangedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DataGridPageChangedEventHandler
function System.Web.UI.WebControls.DataGridPageChangedEventHandler.New(object, method) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataGridPageChangedEventArgs
function System.Web.UI.WebControls.DataGridPageChangedEventHandler:Invoke(source, e) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataGridPageChangedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DataGridPageChangedEventHandler:BeginInvoke(source, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DataGridPageChangedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DataGridSortCommandEventArgs : System.EventArgs
---@field CommandSource System.Object
---@field SortExpression string
System.Web.UI.WebControls.DataGridSortCommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DataGridSortCommandEventArgs System.Web.UI.WebControls.DataGridSortCommandEventArgs
CS.System.Web.UI.WebControls.DataGridSortCommandEventArgs = System.Web.UI.WebControls.DataGridSortCommandEventArgs

---@param commandSource System.Object
---@param dce System.Web.UI.WebControls.DataGridCommandEventArgs
---@return System.Web.UI.WebControls.DataGridSortCommandEventArgs
function System.Web.UI.WebControls.DataGridSortCommandEventArgs.New(commandSource, dce) end

---@class System.Web.UI.WebControls.DataGridSortCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DataGridSortCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DataGridSortCommandEventHandler System.Web.UI.WebControls.DataGridSortCommandEventHandler
CS.System.Web.UI.WebControls.DataGridSortCommandEventHandler = System.Web.UI.WebControls.DataGridSortCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DataGridSortCommandEventHandler
function System.Web.UI.WebControls.DataGridSortCommandEventHandler.New(object, method) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataGridSortCommandEventArgs
function System.Web.UI.WebControls.DataGridSortCommandEventHandler:Invoke(source, e) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataGridSortCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DataGridSortCommandEventHandler:BeginInvoke(source, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DataGridSortCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DataListCommandEventArgs : System.Web.UI.WebControls.CommandEventArgs
---@field Item System.Web.UI.WebControls.DataListItem
---@field CommandSource System.Object
System.Web.UI.WebControls.DataListCommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DataListCommandEventArgs System.Web.UI.WebControls.DataListCommandEventArgs
CS.System.Web.UI.WebControls.DataListCommandEventArgs = System.Web.UI.WebControls.DataListCommandEventArgs

---@param item System.Web.UI.WebControls.DataListItem
---@param commandSource System.Object
---@param originalArgs System.Web.UI.WebControls.CommandEventArgs
---@return System.Web.UI.WebControls.DataListCommandEventArgs
function System.Web.UI.WebControls.DataListCommandEventArgs.New(item, commandSource, originalArgs) end

---@class System.Web.UI.WebControls.DataListCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DataListCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DataListCommandEventHandler System.Web.UI.WebControls.DataListCommandEventHandler
CS.System.Web.UI.WebControls.DataListCommandEventHandler = System.Web.UI.WebControls.DataListCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DataListCommandEventHandler
function System.Web.UI.WebControls.DataListCommandEventHandler.New(object, method) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataListCommandEventArgs
function System.Web.UI.WebControls.DataListCommandEventHandler:Invoke(source, e) end
---@param source System.Object
---@param e System.Web.UI.WebControls.DataListCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DataListCommandEventHandler:BeginInvoke(source, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DataListCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DataListItemEventArgs : System.EventArgs
---@field Item System.Web.UI.WebControls.DataListItem
System.Web.UI.WebControls.DataListItemEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DataListItemEventArgs System.Web.UI.WebControls.DataListItemEventArgs
CS.System.Web.UI.WebControls.DataListItemEventArgs = System.Web.UI.WebControls.DataListItemEventArgs

---@param item System.Web.UI.WebControls.DataListItem
---@return System.Web.UI.WebControls.DataListItemEventArgs
function System.Web.UI.WebControls.DataListItemEventArgs.New(item) end

---@class System.Web.UI.WebControls.DataListItemEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DataListItemEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DataListItemEventHandler System.Web.UI.WebControls.DataListItemEventHandler
CS.System.Web.UI.WebControls.DataListItemEventHandler = System.Web.UI.WebControls.DataListItemEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DataListItemEventHandler
function System.Web.UI.WebControls.DataListItemEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DataListItemEventArgs
function System.Web.UI.WebControls.DataListItemEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DataListItemEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DataListItemEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DataListItemEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DayNameFormat
---@field Full System.Web.UI.WebControls.DayNameFormat
---@field Short System.Web.UI.WebControls.DayNameFormat
---@field FirstLetter System.Web.UI.WebControls.DayNameFormat
---@field FirstTwoLetters System.Web.UI.WebControls.DayNameFormat
---@field Shortest System.Web.UI.WebControls.DayNameFormat
System.Web.UI.WebControls.DayNameFormat = {}
---@alias CS.System.Web.UI.WebControls.DayNameFormat System.Web.UI.WebControls.DayNameFormat
CS.System.Web.UI.WebControls.DayNameFormat = System.Web.UI.WebControls.DayNameFormat


---@class System.Web.UI.WebControls.DayRenderEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DayRenderEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DayRenderEventHandler System.Web.UI.WebControls.DayRenderEventHandler
CS.System.Web.UI.WebControls.DayRenderEventHandler = System.Web.UI.WebControls.DayRenderEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DayRenderEventHandler
function System.Web.UI.WebControls.DayRenderEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DayRenderEventArgs
function System.Web.UI.WebControls.DayRenderEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DayRenderEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DayRenderEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DayRenderEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewCommandEventArgs : System.Web.UI.WebControls.CommandEventArgs
---@field CommandSource System.Object
---@field Handled boolean
System.Web.UI.WebControls.DetailsViewCommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewCommandEventArgs System.Web.UI.WebControls.DetailsViewCommandEventArgs
CS.System.Web.UI.WebControls.DetailsViewCommandEventArgs = System.Web.UI.WebControls.DetailsViewCommandEventArgs

---@param commandSource System.Object
---@param originalArgs System.Web.UI.WebControls.CommandEventArgs
---@return System.Web.UI.WebControls.DetailsViewCommandEventArgs
function System.Web.UI.WebControls.DetailsViewCommandEventArgs.New(commandSource, originalArgs) end

---@class System.Web.UI.WebControls.DetailsViewCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewCommandEventHandler System.Web.UI.WebControls.DetailsViewCommandEventHandler
CS.System.Web.UI.WebControls.DetailsViewCommandEventHandler = System.Web.UI.WebControls.DetailsViewCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewCommandEventHandler
function System.Web.UI.WebControls.DetailsViewCommandEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewCommandEventArgs
function System.Web.UI.WebControls.DetailsViewCommandEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewCommandEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewDeleteEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewDeleteEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewDeleteEventHandler System.Web.UI.WebControls.DetailsViewDeleteEventHandler
CS.System.Web.UI.WebControls.DetailsViewDeleteEventHandler = System.Web.UI.WebControls.DetailsViewDeleteEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewDeleteEventHandler
function System.Web.UI.WebControls.DetailsViewDeleteEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewDeleteEventArgs
function System.Web.UI.WebControls.DetailsViewDeleteEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewDeleteEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewDeleteEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewDeleteEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewDeletedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewDeletedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewDeletedEventHandler System.Web.UI.WebControls.DetailsViewDeletedEventHandler
CS.System.Web.UI.WebControls.DetailsViewDeletedEventHandler = System.Web.UI.WebControls.DetailsViewDeletedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewDeletedEventHandler
function System.Web.UI.WebControls.DetailsViewDeletedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewDeletedEventArgs
function System.Web.UI.WebControls.DetailsViewDeletedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewDeletedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewDeletedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewDeletedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewInsertEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewInsertEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewInsertEventHandler System.Web.UI.WebControls.DetailsViewInsertEventHandler
CS.System.Web.UI.WebControls.DetailsViewInsertEventHandler = System.Web.UI.WebControls.DetailsViewInsertEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewInsertEventHandler
function System.Web.UI.WebControls.DetailsViewInsertEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewInsertEventArgs
function System.Web.UI.WebControls.DetailsViewInsertEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewInsertEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewInsertEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewInsertEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewInsertedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewInsertedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewInsertedEventHandler System.Web.UI.WebControls.DetailsViewInsertedEventHandler
CS.System.Web.UI.WebControls.DetailsViewInsertedEventHandler = System.Web.UI.WebControls.DetailsViewInsertedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewInsertedEventHandler
function System.Web.UI.WebControls.DetailsViewInsertedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewInsertedEventArgs
function System.Web.UI.WebControls.DetailsViewInsertedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewInsertedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewInsertedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewInsertedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewMode
---@field ReadOnly System.Web.UI.WebControls.DetailsViewMode
---@field Edit System.Web.UI.WebControls.DetailsViewMode
---@field Insert System.Web.UI.WebControls.DetailsViewMode
System.Web.UI.WebControls.DetailsViewMode = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewMode System.Web.UI.WebControls.DetailsViewMode
CS.System.Web.UI.WebControls.DetailsViewMode = System.Web.UI.WebControls.DetailsViewMode


---@class System.Web.UI.WebControls.DetailsViewModeEventArgs : System.ComponentModel.CancelEventArgs
---@field CancelingEdit boolean
---@field NewMode System.Web.UI.WebControls.DetailsViewMode
System.Web.UI.WebControls.DetailsViewModeEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewModeEventArgs System.Web.UI.WebControls.DetailsViewModeEventArgs
CS.System.Web.UI.WebControls.DetailsViewModeEventArgs = System.Web.UI.WebControls.DetailsViewModeEventArgs

---@param mode System.Web.UI.WebControls.DetailsViewMode
---@param cancelingEdit boolean
---@return System.Web.UI.WebControls.DetailsViewModeEventArgs
function System.Web.UI.WebControls.DetailsViewModeEventArgs.New(mode, cancelingEdit) end

---@class System.Web.UI.WebControls.DetailsViewModeEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewModeEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewModeEventHandler System.Web.UI.WebControls.DetailsViewModeEventHandler
CS.System.Web.UI.WebControls.DetailsViewModeEventHandler = System.Web.UI.WebControls.DetailsViewModeEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewModeEventHandler
function System.Web.UI.WebControls.DetailsViewModeEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewModeEventArgs
function System.Web.UI.WebControls.DetailsViewModeEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewModeEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewModeEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewModeEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewPageEventArgs : System.ComponentModel.CancelEventArgs
---@field NewPageIndex number
System.Web.UI.WebControls.DetailsViewPageEventArgs = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewPageEventArgs System.Web.UI.WebControls.DetailsViewPageEventArgs
CS.System.Web.UI.WebControls.DetailsViewPageEventArgs = System.Web.UI.WebControls.DetailsViewPageEventArgs

---@param newPageIndex number
---@return System.Web.UI.WebControls.DetailsViewPageEventArgs
function System.Web.UI.WebControls.DetailsViewPageEventArgs.New(newPageIndex) end

---@class System.Web.UI.WebControls.DetailsViewPageEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewPageEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewPageEventHandler System.Web.UI.WebControls.DetailsViewPageEventHandler
CS.System.Web.UI.WebControls.DetailsViewPageEventHandler = System.Web.UI.WebControls.DetailsViewPageEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewPageEventHandler
function System.Web.UI.WebControls.DetailsViewPageEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewPageEventArgs
function System.Web.UI.WebControls.DetailsViewPageEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewPageEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewPageEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewPageEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewUpdateEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewUpdateEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewUpdateEventHandler System.Web.UI.WebControls.DetailsViewUpdateEventHandler
CS.System.Web.UI.WebControls.DetailsViewUpdateEventHandler = System.Web.UI.WebControls.DetailsViewUpdateEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewUpdateEventHandler
function System.Web.UI.WebControls.DetailsViewUpdateEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewUpdateEventArgs
function System.Web.UI.WebControls.DetailsViewUpdateEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewUpdateEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewUpdateEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewUpdateEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.DetailsViewUpdatedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.DetailsViewUpdatedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.DetailsViewUpdatedEventHandler System.Web.UI.WebControls.DetailsViewUpdatedEventHandler
CS.System.Web.UI.WebControls.DetailsViewUpdatedEventHandler = System.Web.UI.WebControls.DetailsViewUpdatedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.DetailsViewUpdatedEventHandler
function System.Web.UI.WebControls.DetailsViewUpdatedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewUpdatedEventArgs
function System.Web.UI.WebControls.DetailsViewUpdatedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.DetailsViewUpdatedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewUpdatedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.DetailsViewUpdatedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FirstDayOfWeek
---@field Sunday System.Web.UI.WebControls.FirstDayOfWeek
---@field Monday System.Web.UI.WebControls.FirstDayOfWeek
---@field Tuesday System.Web.UI.WebControls.FirstDayOfWeek
---@field Wednesday System.Web.UI.WebControls.FirstDayOfWeek
---@field Thursday System.Web.UI.WebControls.FirstDayOfWeek
---@field Friday System.Web.UI.WebControls.FirstDayOfWeek
---@field Saturday System.Web.UI.WebControls.FirstDayOfWeek
---@field Default System.Web.UI.WebControls.FirstDayOfWeek
System.Web.UI.WebControls.FirstDayOfWeek = {}
---@alias CS.System.Web.UI.WebControls.FirstDayOfWeek System.Web.UI.WebControls.FirstDayOfWeek
CS.System.Web.UI.WebControls.FirstDayOfWeek = System.Web.UI.WebControls.FirstDayOfWeek


---@class System.Web.UI.WebControls.FontSize
---@field NotSet System.Web.UI.WebControls.FontSize
---@field AsUnit System.Web.UI.WebControls.FontSize
---@field Smaller System.Web.UI.WebControls.FontSize
---@field Larger System.Web.UI.WebControls.FontSize
---@field XXSmall System.Web.UI.WebControls.FontSize
---@field XSmall System.Web.UI.WebControls.FontSize
---@field Small System.Web.UI.WebControls.FontSize
---@field Medium System.Web.UI.WebControls.FontSize
---@field Large System.Web.UI.WebControls.FontSize
---@field XLarge System.Web.UI.WebControls.FontSize
---@field XXLarge System.Web.UI.WebControls.FontSize
System.Web.UI.WebControls.FontSize = {}
---@alias CS.System.Web.UI.WebControls.FontSize System.Web.UI.WebControls.FontSize
CS.System.Web.UI.WebControls.FontSize = System.Web.UI.WebControls.FontSize


---@class System.Web.UI.WebControls.FormViewCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewCommandEventHandler System.Web.UI.WebControls.FormViewCommandEventHandler
CS.System.Web.UI.WebControls.FormViewCommandEventHandler = System.Web.UI.WebControls.FormViewCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewCommandEventHandler
function System.Web.UI.WebControls.FormViewCommandEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewCommandEventArgs
function System.Web.UI.WebControls.FormViewCommandEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewCommandEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewDeleteEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewDeleteEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewDeleteEventHandler System.Web.UI.WebControls.FormViewDeleteEventHandler
CS.System.Web.UI.WebControls.FormViewDeleteEventHandler = System.Web.UI.WebControls.FormViewDeleteEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewDeleteEventHandler
function System.Web.UI.WebControls.FormViewDeleteEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewDeleteEventArgs
function System.Web.UI.WebControls.FormViewDeleteEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewDeleteEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewDeleteEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewDeleteEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewDeletedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewDeletedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewDeletedEventHandler System.Web.UI.WebControls.FormViewDeletedEventHandler
CS.System.Web.UI.WebControls.FormViewDeletedEventHandler = System.Web.UI.WebControls.FormViewDeletedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewDeletedEventHandler
function System.Web.UI.WebControls.FormViewDeletedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewDeletedEventArgs
function System.Web.UI.WebControls.FormViewDeletedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewDeletedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewDeletedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewDeletedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewInsertEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewInsertEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewInsertEventHandler System.Web.UI.WebControls.FormViewInsertEventHandler
CS.System.Web.UI.WebControls.FormViewInsertEventHandler = System.Web.UI.WebControls.FormViewInsertEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewInsertEventHandler
function System.Web.UI.WebControls.FormViewInsertEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewInsertEventArgs
function System.Web.UI.WebControls.FormViewInsertEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewInsertEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewInsertEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewInsertEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewInsertedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewInsertedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewInsertedEventHandler System.Web.UI.WebControls.FormViewInsertedEventHandler
CS.System.Web.UI.WebControls.FormViewInsertedEventHandler = System.Web.UI.WebControls.FormViewInsertedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewInsertedEventHandler
function System.Web.UI.WebControls.FormViewInsertedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewInsertedEventArgs
function System.Web.UI.WebControls.FormViewInsertedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewInsertedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewInsertedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewInsertedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewMode
---@field ReadOnly System.Web.UI.WebControls.FormViewMode
---@field Edit System.Web.UI.WebControls.FormViewMode
---@field Insert System.Web.UI.WebControls.FormViewMode
System.Web.UI.WebControls.FormViewMode = {}
---@alias CS.System.Web.UI.WebControls.FormViewMode System.Web.UI.WebControls.FormViewMode
CS.System.Web.UI.WebControls.FormViewMode = System.Web.UI.WebControls.FormViewMode


---@class System.Web.UI.WebControls.FormViewModeEventArgs : System.ComponentModel.CancelEventArgs
---@field CancelingEdit boolean
---@field NewMode System.Web.UI.WebControls.FormViewMode
System.Web.UI.WebControls.FormViewModeEventArgs = {}
---@alias CS.System.Web.UI.WebControls.FormViewModeEventArgs System.Web.UI.WebControls.FormViewModeEventArgs
CS.System.Web.UI.WebControls.FormViewModeEventArgs = System.Web.UI.WebControls.FormViewModeEventArgs

---@param mode System.Web.UI.WebControls.FormViewMode
---@param cancelingEdit boolean
---@return System.Web.UI.WebControls.FormViewModeEventArgs
function System.Web.UI.WebControls.FormViewModeEventArgs.New(mode, cancelingEdit) end

---@class System.Web.UI.WebControls.FormViewModeEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewModeEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewModeEventHandler System.Web.UI.WebControls.FormViewModeEventHandler
CS.System.Web.UI.WebControls.FormViewModeEventHandler = System.Web.UI.WebControls.FormViewModeEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewModeEventHandler
function System.Web.UI.WebControls.FormViewModeEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewModeEventArgs
function System.Web.UI.WebControls.FormViewModeEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewModeEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewModeEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewModeEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewPageEventArgs : System.ComponentModel.CancelEventArgs
---@field NewPageIndex number
System.Web.UI.WebControls.FormViewPageEventArgs = {}
---@alias CS.System.Web.UI.WebControls.FormViewPageEventArgs System.Web.UI.WebControls.FormViewPageEventArgs
CS.System.Web.UI.WebControls.FormViewPageEventArgs = System.Web.UI.WebControls.FormViewPageEventArgs

---@param newPageIndex number
---@return System.Web.UI.WebControls.FormViewPageEventArgs
function System.Web.UI.WebControls.FormViewPageEventArgs.New(newPageIndex) end

---@class System.Web.UI.WebControls.FormViewPageEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewPageEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewPageEventHandler System.Web.UI.WebControls.FormViewPageEventHandler
CS.System.Web.UI.WebControls.FormViewPageEventHandler = System.Web.UI.WebControls.FormViewPageEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewPageEventHandler
function System.Web.UI.WebControls.FormViewPageEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewPageEventArgs
function System.Web.UI.WebControls.FormViewPageEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewPageEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewPageEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewPageEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewUpdateEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewUpdateEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewUpdateEventHandler System.Web.UI.WebControls.FormViewUpdateEventHandler
CS.System.Web.UI.WebControls.FormViewUpdateEventHandler = System.Web.UI.WebControls.FormViewUpdateEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewUpdateEventHandler
function System.Web.UI.WebControls.FormViewUpdateEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewUpdateEventArgs
function System.Web.UI.WebControls.FormViewUpdateEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewUpdateEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewUpdateEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewUpdateEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.FormViewUpdatedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.FormViewUpdatedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.FormViewUpdatedEventHandler System.Web.UI.WebControls.FormViewUpdatedEventHandler
CS.System.Web.UI.WebControls.FormViewUpdatedEventHandler = System.Web.UI.WebControls.FormViewUpdatedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.FormViewUpdatedEventHandler
function System.Web.UI.WebControls.FormViewUpdatedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewUpdatedEventArgs
function System.Web.UI.WebControls.FormViewUpdatedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.FormViewUpdatedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.FormViewUpdatedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.FormViewUpdatedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridLines
---@field None System.Web.UI.WebControls.GridLines
---@field Horizontal System.Web.UI.WebControls.GridLines
---@field Vertical System.Web.UI.WebControls.GridLines
---@field Both System.Web.UI.WebControls.GridLines
System.Web.UI.WebControls.GridLines = {}
---@alias CS.System.Web.UI.WebControls.GridLines System.Web.UI.WebControls.GridLines
CS.System.Web.UI.WebControls.GridLines = System.Web.UI.WebControls.GridLines


---@class System.Web.UI.WebControls.GridViewCancelEditEventArgs : System.ComponentModel.CancelEventArgs
---@field RowIndex number
System.Web.UI.WebControls.GridViewCancelEditEventArgs = {}
---@alias CS.System.Web.UI.WebControls.GridViewCancelEditEventArgs System.Web.UI.WebControls.GridViewCancelEditEventArgs
CS.System.Web.UI.WebControls.GridViewCancelEditEventArgs = System.Web.UI.WebControls.GridViewCancelEditEventArgs

---@param rowIndex number
---@return System.Web.UI.WebControls.GridViewCancelEditEventArgs
function System.Web.UI.WebControls.GridViewCancelEditEventArgs.New(rowIndex) end

---@class System.Web.UI.WebControls.GridViewCancelEditEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewCancelEditEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewCancelEditEventHandler System.Web.UI.WebControls.GridViewCancelEditEventHandler
CS.System.Web.UI.WebControls.GridViewCancelEditEventHandler = System.Web.UI.WebControls.GridViewCancelEditEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewCancelEditEventHandler
function System.Web.UI.WebControls.GridViewCancelEditEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewCancelEditEventArgs
function System.Web.UI.WebControls.GridViewCancelEditEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewCancelEditEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewCancelEditEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewCancelEditEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewCommandEventArgs : System.Web.UI.WebControls.CommandEventArgs
---@field CommandSource System.Object
---@field Handled boolean
System.Web.UI.WebControls.GridViewCommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.GridViewCommandEventArgs System.Web.UI.WebControls.GridViewCommandEventArgs
CS.System.Web.UI.WebControls.GridViewCommandEventArgs = System.Web.UI.WebControls.GridViewCommandEventArgs

---@overload fun(row: System.Web.UI.WebControls.GridViewRow, commandSource: System.Object, originalArgs: System.Web.UI.WebControls.CommandEventArgs) : System.Web.UI.WebControls.GridViewCommandEventArgs
---@param commandSource System.Object
---@param originalArgs System.Web.UI.WebControls.CommandEventArgs
---@return System.Web.UI.WebControls.GridViewCommandEventArgs
function System.Web.UI.WebControls.GridViewCommandEventArgs.New(commandSource, originalArgs) end

---@class System.Web.UI.WebControls.GridViewCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewCommandEventHandler System.Web.UI.WebControls.GridViewCommandEventHandler
CS.System.Web.UI.WebControls.GridViewCommandEventHandler = System.Web.UI.WebControls.GridViewCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewCommandEventHandler
function System.Web.UI.WebControls.GridViewCommandEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewCommandEventArgs
function System.Web.UI.WebControls.GridViewCommandEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewCommandEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewDeleteEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewDeleteEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewDeleteEventHandler System.Web.UI.WebControls.GridViewDeleteEventHandler
CS.System.Web.UI.WebControls.GridViewDeleteEventHandler = System.Web.UI.WebControls.GridViewDeleteEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewDeleteEventHandler
function System.Web.UI.WebControls.GridViewDeleteEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewDeleteEventArgs
function System.Web.UI.WebControls.GridViewDeleteEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewDeleteEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewDeleteEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewDeleteEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewDeletedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewDeletedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewDeletedEventHandler System.Web.UI.WebControls.GridViewDeletedEventHandler
CS.System.Web.UI.WebControls.GridViewDeletedEventHandler = System.Web.UI.WebControls.GridViewDeletedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewDeletedEventHandler
function System.Web.UI.WebControls.GridViewDeletedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewDeletedEventArgs
function System.Web.UI.WebControls.GridViewDeletedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewDeletedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewDeletedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewDeletedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewEditEventArgs : System.ComponentModel.CancelEventArgs
---@field NewEditIndex number
System.Web.UI.WebControls.GridViewEditEventArgs = {}
---@alias CS.System.Web.UI.WebControls.GridViewEditEventArgs System.Web.UI.WebControls.GridViewEditEventArgs
CS.System.Web.UI.WebControls.GridViewEditEventArgs = System.Web.UI.WebControls.GridViewEditEventArgs

---@param newEditIndex number
---@return System.Web.UI.WebControls.GridViewEditEventArgs
function System.Web.UI.WebControls.GridViewEditEventArgs.New(newEditIndex) end

---@class System.Web.UI.WebControls.GridViewEditEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewEditEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewEditEventHandler System.Web.UI.WebControls.GridViewEditEventHandler
CS.System.Web.UI.WebControls.GridViewEditEventHandler = System.Web.UI.WebControls.GridViewEditEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewEditEventHandler
function System.Web.UI.WebControls.GridViewEditEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewEditEventArgs
function System.Web.UI.WebControls.GridViewEditEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewEditEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewEditEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewEditEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewPageEventArgs : System.ComponentModel.CancelEventArgs
---@field NewPageIndex number
System.Web.UI.WebControls.GridViewPageEventArgs = {}
---@alias CS.System.Web.UI.WebControls.GridViewPageEventArgs System.Web.UI.WebControls.GridViewPageEventArgs
CS.System.Web.UI.WebControls.GridViewPageEventArgs = System.Web.UI.WebControls.GridViewPageEventArgs

---@param newPageIndex number
---@return System.Web.UI.WebControls.GridViewPageEventArgs
function System.Web.UI.WebControls.GridViewPageEventArgs.New(newPageIndex) end

---@class System.Web.UI.WebControls.GridViewPageEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewPageEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewPageEventHandler System.Web.UI.WebControls.GridViewPageEventHandler
CS.System.Web.UI.WebControls.GridViewPageEventHandler = System.Web.UI.WebControls.GridViewPageEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewPageEventHandler
function System.Web.UI.WebControls.GridViewPageEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewPageEventArgs
function System.Web.UI.WebControls.GridViewPageEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewPageEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewPageEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewPageEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewRowEventArgs : System.EventArgs
---@field Row System.Web.UI.WebControls.GridViewRow
System.Web.UI.WebControls.GridViewRowEventArgs = {}
---@alias CS.System.Web.UI.WebControls.GridViewRowEventArgs System.Web.UI.WebControls.GridViewRowEventArgs
CS.System.Web.UI.WebControls.GridViewRowEventArgs = System.Web.UI.WebControls.GridViewRowEventArgs

---@param row System.Web.UI.WebControls.GridViewRow
---@return System.Web.UI.WebControls.GridViewRowEventArgs
function System.Web.UI.WebControls.GridViewRowEventArgs.New(row) end

---@class System.Web.UI.WebControls.GridViewRowEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewRowEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewRowEventHandler System.Web.UI.WebControls.GridViewRowEventHandler
CS.System.Web.UI.WebControls.GridViewRowEventHandler = System.Web.UI.WebControls.GridViewRowEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewRowEventHandler
function System.Web.UI.WebControls.GridViewRowEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewRowEventArgs
function System.Web.UI.WebControls.GridViewRowEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewRowEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewRowEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewRowEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewSelectEventArgs : System.ComponentModel.CancelEventArgs
---@field NewSelectedIndex number
System.Web.UI.WebControls.GridViewSelectEventArgs = {}
---@alias CS.System.Web.UI.WebControls.GridViewSelectEventArgs System.Web.UI.WebControls.GridViewSelectEventArgs
CS.System.Web.UI.WebControls.GridViewSelectEventArgs = System.Web.UI.WebControls.GridViewSelectEventArgs

---@param newSelectedIndex number
---@return System.Web.UI.WebControls.GridViewSelectEventArgs
function System.Web.UI.WebControls.GridViewSelectEventArgs.New(newSelectedIndex) end

---@class System.Web.UI.WebControls.GridViewSelectEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewSelectEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewSelectEventHandler System.Web.UI.WebControls.GridViewSelectEventHandler
CS.System.Web.UI.WebControls.GridViewSelectEventHandler = System.Web.UI.WebControls.GridViewSelectEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewSelectEventHandler
function System.Web.UI.WebControls.GridViewSelectEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewSelectEventArgs
function System.Web.UI.WebControls.GridViewSelectEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewSelectEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewSelectEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewSelectEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewSortEventArgs : System.ComponentModel.CancelEventArgs
---@field SortDirection System.Web.UI.WebControls.SortDirection
---@field SortExpression string
System.Web.UI.WebControls.GridViewSortEventArgs = {}
---@alias CS.System.Web.UI.WebControls.GridViewSortEventArgs System.Web.UI.WebControls.GridViewSortEventArgs
CS.System.Web.UI.WebControls.GridViewSortEventArgs = System.Web.UI.WebControls.GridViewSortEventArgs

---@param sortExpression string
---@param sortDirection System.Web.UI.WebControls.SortDirection
---@return System.Web.UI.WebControls.GridViewSortEventArgs
function System.Web.UI.WebControls.GridViewSortEventArgs.New(sortExpression, sortDirection) end

---@class System.Web.UI.WebControls.GridViewSortEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewSortEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewSortEventHandler System.Web.UI.WebControls.GridViewSortEventHandler
CS.System.Web.UI.WebControls.GridViewSortEventHandler = System.Web.UI.WebControls.GridViewSortEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewSortEventHandler
function System.Web.UI.WebControls.GridViewSortEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewSortEventArgs
function System.Web.UI.WebControls.GridViewSortEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewSortEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewSortEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewSortEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewUpdateEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewUpdateEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewUpdateEventHandler System.Web.UI.WebControls.GridViewUpdateEventHandler
CS.System.Web.UI.WebControls.GridViewUpdateEventHandler = System.Web.UI.WebControls.GridViewUpdateEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewUpdateEventHandler
function System.Web.UI.WebControls.GridViewUpdateEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewUpdateEventArgs
function System.Web.UI.WebControls.GridViewUpdateEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewUpdateEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewUpdateEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewUpdateEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.GridViewUpdatedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.GridViewUpdatedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.GridViewUpdatedEventHandler System.Web.UI.WebControls.GridViewUpdatedEventHandler
CS.System.Web.UI.WebControls.GridViewUpdatedEventHandler = System.Web.UI.WebControls.GridViewUpdatedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.GridViewUpdatedEventHandler
function System.Web.UI.WebControls.GridViewUpdatedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewUpdatedEventArgs
function System.Web.UI.WebControls.GridViewUpdatedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.GridViewUpdatedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.GridViewUpdatedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.GridViewUpdatedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.HorizontalAlign
---@field NotSet System.Web.UI.WebControls.HorizontalAlign
---@field Left System.Web.UI.WebControls.HorizontalAlign
---@field Center System.Web.UI.WebControls.HorizontalAlign
---@field Right System.Web.UI.WebControls.HorizontalAlign
---@field Justify System.Web.UI.WebControls.HorizontalAlign
System.Web.UI.WebControls.HorizontalAlign = {}
---@alias CS.System.Web.UI.WebControls.HorizontalAlign System.Web.UI.WebControls.HorizontalAlign
CS.System.Web.UI.WebControls.HorizontalAlign = System.Web.UI.WebControls.HorizontalAlign


---@class System.Web.UI.WebControls.HotSpotMode
---@field NotSet System.Web.UI.WebControls.HotSpotMode
---@field Navigate System.Web.UI.WebControls.HotSpotMode
---@field PostBack System.Web.UI.WebControls.HotSpotMode
---@field Inactive System.Web.UI.WebControls.HotSpotMode
System.Web.UI.WebControls.HotSpotMode = {}
---@alias CS.System.Web.UI.WebControls.HotSpotMode System.Web.UI.WebControls.HotSpotMode
CS.System.Web.UI.WebControls.HotSpotMode = System.Web.UI.WebControls.HotSpotMode


---@class System.Web.UI.WebControls.IButtonControl
---@field CausesValidation boolean
---@field CommandArgument string
---@field CommandName string
---@field PostBackUrl string
---@field Text string
---@field ValidationGroup string
System.Web.UI.WebControls.IButtonControl = {}
---@alias CS.System.Web.UI.WebControls.IButtonControl System.Web.UI.WebControls.IButtonControl
CS.System.Web.UI.WebControls.IButtonControl = System.Web.UI.WebControls.IButtonControl


---@class System.Web.UI.WebControls.ICallbackContainer
System.Web.UI.WebControls.ICallbackContainer = {}
---@alias CS.System.Web.UI.WebControls.ICallbackContainer System.Web.UI.WebControls.ICallbackContainer
CS.System.Web.UI.WebControls.ICallbackContainer = System.Web.UI.WebControls.ICallbackContainer

---@param buttonControl System.Web.UI.WebControls.IButtonControl
---@param argument string
---@return string
function System.Web.UI.WebControls.ICallbackContainer:GetCallbackScript(buttonControl, argument) end

---@class System.Web.UI.WebControls.ICompositeControlDesignerAccessor
System.Web.UI.WebControls.ICompositeControlDesignerAccessor = {}
---@alias CS.System.Web.UI.WebControls.ICompositeControlDesignerAccessor System.Web.UI.WebControls.ICompositeControlDesignerAccessor
CS.System.Web.UI.WebControls.ICompositeControlDesignerAccessor = System.Web.UI.WebControls.ICompositeControlDesignerAccessor

function System.Web.UI.WebControls.ICompositeControlDesignerAccessor:RecreateChildControls() end

---@class System.Web.UI.WebControls.IDataBoundControl
---@field DataSourceID string
---@field DataSourceObject System.Web.UI.IDataSource
---@field DataSource System.Object
---@field DataKeyNames System.String[]
---@field DataMember string
System.Web.UI.WebControls.IDataBoundControl = {}
---@alias CS.System.Web.UI.WebControls.IDataBoundControl System.Web.UI.WebControls.IDataBoundControl
CS.System.Web.UI.WebControls.IDataBoundControl = System.Web.UI.WebControls.IDataBoundControl


---@class System.Web.UI.WebControls.IDataBoundItemControl
---@field DataKey System.Web.UI.WebControls.DataKey
---@field Mode System.Web.UI.WebControls.DataBoundControlMode
System.Web.UI.WebControls.IDataBoundItemControl = {}
---@alias CS.System.Web.UI.WebControls.IDataBoundItemControl System.Web.UI.WebControls.IDataBoundItemControl
CS.System.Web.UI.WebControls.IDataBoundItemControl = System.Web.UI.WebControls.IDataBoundItemControl


---@class System.Web.UI.WebControls.IDataBoundListControl
---@field DataKeys System.Web.UI.WebControls.DataKeyArray
---@field SelectedDataKey System.Web.UI.WebControls.DataKey
---@field SelectedIndex number
---@field ClientIDRowSuffix System.String[]
---@field EnablePersistedSelection boolean
System.Web.UI.WebControls.IDataBoundListControl = {}
---@alias CS.System.Web.UI.WebControls.IDataBoundListControl System.Web.UI.WebControls.IDataBoundListControl
CS.System.Web.UI.WebControls.IDataBoundListControl = System.Web.UI.WebControls.IDataBoundListControl


---@class System.Web.UI.WebControls.IFieldControl
---@field FieldsGenerator System.Web.UI.IAutoFieldGenerator
System.Web.UI.WebControls.IFieldControl = {}
---@alias CS.System.Web.UI.WebControls.IFieldControl System.Web.UI.WebControls.IFieldControl
CS.System.Web.UI.WebControls.IFieldControl = System.Web.UI.WebControls.IFieldControl


---@class System.Web.UI.WebControls.IPersistedSelector
---@field DataKey System.Web.UI.WebControls.DataKey
System.Web.UI.WebControls.IPersistedSelector = {}
---@alias CS.System.Web.UI.WebControls.IPersistedSelector System.Web.UI.WebControls.IPersistedSelector
CS.System.Web.UI.WebControls.IPersistedSelector = System.Web.UI.WebControls.IPersistedSelector


---@class System.Web.UI.WebControls.IPostBackContainer
System.Web.UI.WebControls.IPostBackContainer = {}
---@alias CS.System.Web.UI.WebControls.IPostBackContainer System.Web.UI.WebControls.IPostBackContainer
CS.System.Web.UI.WebControls.IPostBackContainer = System.Web.UI.WebControls.IPostBackContainer

---@param buttonControl System.Web.UI.WebControls.IButtonControl
---@return System.Web.UI.PostBackOptions
function System.Web.UI.WebControls.IPostBackContainer:GetPostBackOptions(buttonControl) end

---@class System.Web.UI.WebControls.IRepeatInfoUser
---@field HasHeader boolean
---@field HasFooter boolean
---@field HasSeparators boolean
---@field RepeatedItemCount number
System.Web.UI.WebControls.IRepeatInfoUser = {}
---@alias CS.System.Web.UI.WebControls.IRepeatInfoUser System.Web.UI.WebControls.IRepeatInfoUser
CS.System.Web.UI.WebControls.IRepeatInfoUser = System.Web.UI.WebControls.IRepeatInfoUser

---@param itemType System.Web.UI.WebControls.ListItemType
---@param repeatIndex number
---@return System.Web.UI.WebControls.Style
function System.Web.UI.WebControls.IRepeatInfoUser:GetItemStyle(itemType, repeatIndex) end
---@param itemType System.Web.UI.WebControls.ListItemType
---@param repeatIndex number
---@param repeatInfo System.Web.UI.WebControls.RepeatInfo
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.WebControls.IRepeatInfoUser:RenderItem(itemType, repeatIndex, repeatInfo, writer) end

---@class System.Web.UI.WebControls.IWizardSideBarListControl
---@field DataSource System.Object
---@field Items System.Collections.IEnumerable
---@field ItemTemplate System.Web.UI.ITemplate
---@field SelectedIndex number
System.Web.UI.WebControls.IWizardSideBarListControl = {}
---@alias CS.System.Web.UI.WebControls.IWizardSideBarListControl System.Web.UI.WebControls.IWizardSideBarListControl
CS.System.Web.UI.WebControls.IWizardSideBarListControl = System.Web.UI.WebControls.IWizardSideBarListControl

function System.Web.UI.WebControls.IWizardSideBarListControl:DataBind() end

---@class System.Web.UI.WebControls.ImageAlign
---@field NotSet System.Web.UI.WebControls.ImageAlign
---@field Left System.Web.UI.WebControls.ImageAlign
---@field Right System.Web.UI.WebControls.ImageAlign
---@field Baseline System.Web.UI.WebControls.ImageAlign
---@field Top System.Web.UI.WebControls.ImageAlign
---@field Middle System.Web.UI.WebControls.ImageAlign
---@field Bottom System.Web.UI.WebControls.ImageAlign
---@field AbsBottom System.Web.UI.WebControls.ImageAlign
---@field AbsMiddle System.Web.UI.WebControls.ImageAlign
---@field TextTop System.Web.UI.WebControls.ImageAlign
System.Web.UI.WebControls.ImageAlign = {}
---@alias CS.System.Web.UI.WebControls.ImageAlign System.Web.UI.WebControls.ImageAlign
CS.System.Web.UI.WebControls.ImageAlign = System.Web.UI.WebControls.ImageAlign


---@class System.Web.UI.WebControls.ImageMapEventArgs : System.EventArgs
---@field PostBackValue string
System.Web.UI.WebControls.ImageMapEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ImageMapEventArgs System.Web.UI.WebControls.ImageMapEventArgs
CS.System.Web.UI.WebControls.ImageMapEventArgs = System.Web.UI.WebControls.ImageMapEventArgs

---@param value string
---@return System.Web.UI.WebControls.ImageMapEventArgs
function System.Web.UI.WebControls.ImageMapEventArgs.New(value) end

---@class System.Web.UI.WebControls.ImageMapEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ImageMapEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ImageMapEventHandler System.Web.UI.WebControls.ImageMapEventHandler
CS.System.Web.UI.WebControls.ImageMapEventHandler = System.Web.UI.WebControls.ImageMapEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ImageMapEventHandler
function System.Web.UI.WebControls.ImageMapEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ImageMapEventArgs
function System.Web.UI.WebControls.ImageMapEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ImageMapEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ImageMapEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ImageMapEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ListItemType
---@field Header System.Web.UI.WebControls.ListItemType
---@field Footer System.Web.UI.WebControls.ListItemType
---@field Item System.Web.UI.WebControls.ListItemType
---@field AlternatingItem System.Web.UI.WebControls.ListItemType
---@field SelectedItem System.Web.UI.WebControls.ListItemType
---@field EditItem System.Web.UI.WebControls.ListItemType
---@field Separator System.Web.UI.WebControls.ListItemType
---@field Pager System.Web.UI.WebControls.ListItemType
System.Web.UI.WebControls.ListItemType = {}
---@alias CS.System.Web.UI.WebControls.ListItemType System.Web.UI.WebControls.ListItemType
CS.System.Web.UI.WebControls.ListItemType = System.Web.UI.WebControls.ListItemType


---@class System.Web.UI.WebControls.ListSelectionMode
---@field Single System.Web.UI.WebControls.ListSelectionMode
---@field Multiple System.Web.UI.WebControls.ListSelectionMode
System.Web.UI.WebControls.ListSelectionMode = {}
---@alias CS.System.Web.UI.WebControls.ListSelectionMode System.Web.UI.WebControls.ListSelectionMode
CS.System.Web.UI.WebControls.ListSelectionMode = System.Web.UI.WebControls.ListSelectionMode


---@class System.Web.UI.WebControls.LiteralMode
---@field Transform System.Web.UI.WebControls.LiteralMode
---@field PassThrough System.Web.UI.WebControls.LiteralMode
---@field Encode System.Web.UI.WebControls.LiteralMode
System.Web.UI.WebControls.LiteralMode = {}
---@alias CS.System.Web.UI.WebControls.LiteralMode System.Web.UI.WebControls.LiteralMode
CS.System.Web.UI.WebControls.LiteralMode = System.Web.UI.WebControls.LiteralMode


---@class System.Web.UI.WebControls.LoginCancelEventArgs : System.EventArgs
---@field Cancel boolean
System.Web.UI.WebControls.LoginCancelEventArgs = {}
---@alias CS.System.Web.UI.WebControls.LoginCancelEventArgs System.Web.UI.WebControls.LoginCancelEventArgs
CS.System.Web.UI.WebControls.LoginCancelEventArgs = System.Web.UI.WebControls.LoginCancelEventArgs

---@overload fun() : System.Web.UI.WebControls.LoginCancelEventArgs
---@param cancel boolean
---@return System.Web.UI.WebControls.LoginCancelEventArgs
function System.Web.UI.WebControls.LoginCancelEventArgs.New(cancel) end

---@class System.Web.UI.WebControls.LoginCancelEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.LoginCancelEventHandler = {}
---@alias CS.System.Web.UI.WebControls.LoginCancelEventHandler System.Web.UI.WebControls.LoginCancelEventHandler
CS.System.Web.UI.WebControls.LoginCancelEventHandler = System.Web.UI.WebControls.LoginCancelEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.LoginCancelEventHandler
function System.Web.UI.WebControls.LoginCancelEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.LoginCancelEventArgs
function System.Web.UI.WebControls.LoginCancelEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.LoginCancelEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.LoginCancelEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.LoginCancelEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.LoginFailureAction
---@field Refresh System.Web.UI.WebControls.LoginFailureAction
---@field RedirectToLoginPage System.Web.UI.WebControls.LoginFailureAction
System.Web.UI.WebControls.LoginFailureAction = {}
---@alias CS.System.Web.UI.WebControls.LoginFailureAction System.Web.UI.WebControls.LoginFailureAction
CS.System.Web.UI.WebControls.LoginFailureAction = System.Web.UI.WebControls.LoginFailureAction


---@class System.Web.UI.WebControls.LoginTextLayout
---@field TextOnLeft System.Web.UI.WebControls.LoginTextLayout
---@field TextOnTop System.Web.UI.WebControls.LoginTextLayout
System.Web.UI.WebControls.LoginTextLayout = {}
---@alias CS.System.Web.UI.WebControls.LoginTextLayout System.Web.UI.WebControls.LoginTextLayout
CS.System.Web.UI.WebControls.LoginTextLayout = System.Web.UI.WebControls.LoginTextLayout


---@class System.Web.UI.WebControls.LogoutAction
---@field Refresh System.Web.UI.WebControls.LogoutAction
---@field Redirect System.Web.UI.WebControls.LogoutAction
---@field RedirectToLoginPage System.Web.UI.WebControls.LogoutAction
System.Web.UI.WebControls.LogoutAction = {}
---@alias CS.System.Web.UI.WebControls.LogoutAction System.Web.UI.WebControls.LogoutAction
CS.System.Web.UI.WebControls.LogoutAction = System.Web.UI.WebControls.LogoutAction


---@class System.Web.UI.WebControls.MailMessageEventArgs : System.Web.UI.WebControls.LoginCancelEventArgs
---@field Message System.Net.Mail.MailMessage
System.Web.UI.WebControls.MailMessageEventArgs = {}
---@alias CS.System.Web.UI.WebControls.MailMessageEventArgs System.Web.UI.WebControls.MailMessageEventArgs
CS.System.Web.UI.WebControls.MailMessageEventArgs = System.Web.UI.WebControls.MailMessageEventArgs

---@param message System.Net.Mail.MailMessage
---@return System.Web.UI.WebControls.MailMessageEventArgs
function System.Web.UI.WebControls.MailMessageEventArgs.New(message) end

---@class System.Web.UI.WebControls.MailMessageEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.MailMessageEventHandler = {}
---@alias CS.System.Web.UI.WebControls.MailMessageEventHandler System.Web.UI.WebControls.MailMessageEventHandler
CS.System.Web.UI.WebControls.MailMessageEventHandler = System.Web.UI.WebControls.MailMessageEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.MailMessageEventHandler
function System.Web.UI.WebControls.MailMessageEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.MailMessageEventArgs
function System.Web.UI.WebControls.MailMessageEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.MailMessageEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.MailMessageEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.MailMessageEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.MenuEventArgs : System.Web.UI.WebControls.CommandEventArgs
---@field CommandSource System.Object
---@field Item System.Web.UI.WebControls.MenuItem
System.Web.UI.WebControls.MenuEventArgs = {}
---@alias CS.System.Web.UI.WebControls.MenuEventArgs System.Web.UI.WebControls.MenuEventArgs
CS.System.Web.UI.WebControls.MenuEventArgs = System.Web.UI.WebControls.MenuEventArgs

---@overload fun(item: System.Web.UI.WebControls.MenuItem, commandSource: System.Object, originalArgs: System.Web.UI.WebControls.CommandEventArgs) : System.Web.UI.WebControls.MenuEventArgs
---@param item System.Web.UI.WebControls.MenuItem
---@return System.Web.UI.WebControls.MenuEventArgs
function System.Web.UI.WebControls.MenuEventArgs.New(item) end

---@class System.Web.UI.WebControls.MenuEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.MenuEventHandler = {}
---@alias CS.System.Web.UI.WebControls.MenuEventHandler System.Web.UI.WebControls.MenuEventHandler
CS.System.Web.UI.WebControls.MenuEventHandler = System.Web.UI.WebControls.MenuEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.MenuEventHandler
function System.Web.UI.WebControls.MenuEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.MenuEventArgs
function System.Web.UI.WebControls.MenuEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.MenuEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.MenuEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.MenuEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.MenuRenderingMode
---@field Default System.Web.UI.WebControls.MenuRenderingMode
---@field Table System.Web.UI.WebControls.MenuRenderingMode
---@field List System.Web.UI.WebControls.MenuRenderingMode
System.Web.UI.WebControls.MenuRenderingMode = {}
---@alias CS.System.Web.UI.WebControls.MenuRenderingMode System.Web.UI.WebControls.MenuRenderingMode
CS.System.Web.UI.WebControls.MenuRenderingMode = System.Web.UI.WebControls.MenuRenderingMode


---@class System.Web.UI.WebControls.MonthChangedEventArgs : System.Object
---@field NewDate System.DateTime
---@field PreviousDate System.DateTime
System.Web.UI.WebControls.MonthChangedEventArgs = {}
---@alias CS.System.Web.UI.WebControls.MonthChangedEventArgs System.Web.UI.WebControls.MonthChangedEventArgs
CS.System.Web.UI.WebControls.MonthChangedEventArgs = System.Web.UI.WebControls.MonthChangedEventArgs

---@param newDate System.DateTime
---@param previousDate System.DateTime
---@return System.Web.UI.WebControls.MonthChangedEventArgs
function System.Web.UI.WebControls.MonthChangedEventArgs.New(newDate, previousDate) end

---@class System.Web.UI.WebControls.MonthChangedEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.MonthChangedEventHandler = {}
---@alias CS.System.Web.UI.WebControls.MonthChangedEventHandler System.Web.UI.WebControls.MonthChangedEventHandler
CS.System.Web.UI.WebControls.MonthChangedEventHandler = System.Web.UI.WebControls.MonthChangedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.MonthChangedEventHandler
function System.Web.UI.WebControls.MonthChangedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.MonthChangedEventArgs
function System.Web.UI.WebControls.MonthChangedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.MonthChangedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.MonthChangedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.MonthChangedEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.NextPrevFormat
---@field CustomText System.Web.UI.WebControls.NextPrevFormat
---@field ShortMonth System.Web.UI.WebControls.NextPrevFormat
---@field FullMonth System.Web.UI.WebControls.NextPrevFormat
System.Web.UI.WebControls.NextPrevFormat = {}
---@alias CS.System.Web.UI.WebControls.NextPrevFormat System.Web.UI.WebControls.NextPrevFormat
CS.System.Web.UI.WebControls.NextPrevFormat = System.Web.UI.WebControls.NextPrevFormat


---@class System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs : System.ComponentModel.CancelEventArgs
---@field ObjectInstance System.Object
System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs
CS.System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs = System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs

---@param objectInstance System.Object
---@return System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs
function System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs.New(objectInstance) end

---@class System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler
CS.System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler = System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler
function System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs
function System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceDisposingEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceDisposingEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ObjectDataSourceEventArgs : System.EventArgs
---@field ObjectInstance System.Object
System.Web.UI.WebControls.ObjectDataSourceEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceEventArgs System.Web.UI.WebControls.ObjectDataSourceEventArgs
CS.System.Web.UI.WebControls.ObjectDataSourceEventArgs = System.Web.UI.WebControls.ObjectDataSourceEventArgs

---@param objectInstance System.Object
---@return System.Web.UI.WebControls.ObjectDataSourceEventArgs
function System.Web.UI.WebControls.ObjectDataSourceEventArgs.New(objectInstance) end

---@class System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs : System.ComponentModel.CancelEventArgs
---@field ParameterValues System.Collections.Specialized.IOrderedDictionary
System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs
CS.System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs = System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs

---@param parameterValues System.Collections.Specialized.IOrderedDictionary
---@return System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs
function System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs.New(parameterValues) end

---@class System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler
CS.System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler = System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler
function System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs
function System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceFilteringEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceFilteringEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs : System.ComponentModel.CancelEventArgs
---@field InputParameters System.Collections.Specialized.IOrderedDictionary
System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs
CS.System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs = System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs

---@param inputParameters System.Collections.Specialized.IOrderedDictionary
---@return System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs
function System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs.New(inputParameters) end

---@class System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler
CS.System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler = System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler
function System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs
function System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceMethodEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler
CS.System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler = System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler
function System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceEventArgs
function System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceObjectEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs : System.Web.UI.WebControls.ObjectDataSourceMethodEventArgs
---@field Arguments System.Web.UI.DataSourceSelectArguments
---@field ExecutingSelectCount boolean
System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs
CS.System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs = System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs

---@param inputParameters System.Collections.Specialized.IOrderedDictionary
---@param arguments System.Web.UI.DataSourceSelectArguments
---@param executingSelectCount boolean
---@return System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs
function System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs.New(inputParameters, arguments, executingSelectCount) end

---@class System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler
CS.System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler = System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler
function System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs
function System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceSelectingEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs : System.EventArgs
---@field OutputParameters System.Collections.IDictionary
---@field Exception System.Exception
---@field ExceptionHandled boolean
---@field ReturnValue System.Object
---@field AffectedRows number
System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs
CS.System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs = System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs

---@overload fun(returnValue: System.Object, outputParameters: System.Collections.IDictionary) : System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs
---@param returnValue System.Object
---@param outputParameters System.Collections.IDictionary
---@param exception System.Exception
---@return System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs
function System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs.New(returnValue, outputParameters, exception) end

---@class System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler
CS.System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler = System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler
function System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs
function System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.ObjectDataSourceStatusEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ObjectDataSourceStatusEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.Orientation
---@field Horizontal System.Web.UI.WebControls.Orientation
---@field Vertical System.Web.UI.WebControls.Orientation
System.Web.UI.WebControls.Orientation = {}
---@alias CS.System.Web.UI.WebControls.Orientation System.Web.UI.WebControls.Orientation
CS.System.Web.UI.WebControls.Orientation = System.Web.UI.WebControls.Orientation


---@class System.Web.UI.WebControls.PagerButtons
---@field NextPrevious System.Web.UI.WebControls.PagerButtons
---@field Numeric System.Web.UI.WebControls.PagerButtons
---@field NextPreviousFirstLast System.Web.UI.WebControls.PagerButtons
---@field NumericFirstLast System.Web.UI.WebControls.PagerButtons
System.Web.UI.WebControls.PagerButtons = {}
---@alias CS.System.Web.UI.WebControls.PagerButtons System.Web.UI.WebControls.PagerButtons
CS.System.Web.UI.WebControls.PagerButtons = System.Web.UI.WebControls.PagerButtons


---@class System.Web.UI.WebControls.PagerMode
---@field NextPrev System.Web.UI.WebControls.PagerMode
---@field NumericPages System.Web.UI.WebControls.PagerMode
System.Web.UI.WebControls.PagerMode = {}
---@alias CS.System.Web.UI.WebControls.PagerMode System.Web.UI.WebControls.PagerMode
CS.System.Web.UI.WebControls.PagerMode = System.Web.UI.WebControls.PagerMode


---@class System.Web.UI.WebControls.PagerPosition
---@field Bottom System.Web.UI.WebControls.PagerPosition
---@field Top System.Web.UI.WebControls.PagerPosition
---@field TopAndBottom System.Web.UI.WebControls.PagerPosition
System.Web.UI.WebControls.PagerPosition = {}
---@alias CS.System.Web.UI.WebControls.PagerPosition System.Web.UI.WebControls.PagerPosition
CS.System.Web.UI.WebControls.PagerPosition = System.Web.UI.WebControls.PagerPosition


---@class System.Web.UI.WebControls.PathDirection
---@field RootToCurrent System.Web.UI.WebControls.PathDirection
---@field CurrentToRoot System.Web.UI.WebControls.PathDirection
System.Web.UI.WebControls.PathDirection = {}
---@alias CS.System.Web.UI.WebControls.PathDirection System.Web.UI.WebControls.PathDirection
CS.System.Web.UI.WebControls.PathDirection = System.Web.UI.WebControls.PathDirection


---@class System.Web.UI.WebControls.RepeatDirection
---@field Horizontal System.Web.UI.WebControls.RepeatDirection
---@field Vertical System.Web.UI.WebControls.RepeatDirection
System.Web.UI.WebControls.RepeatDirection = {}
---@alias CS.System.Web.UI.WebControls.RepeatDirection System.Web.UI.WebControls.RepeatDirection
CS.System.Web.UI.WebControls.RepeatDirection = System.Web.UI.WebControls.RepeatDirection


---@class System.Web.UI.WebControls.RepeatLayout
---@field Table System.Web.UI.WebControls.RepeatLayout
---@field Flow System.Web.UI.WebControls.RepeatLayout
---@field UnorderedList System.Web.UI.WebControls.RepeatLayout
---@field OrderedList System.Web.UI.WebControls.RepeatLayout
System.Web.UI.WebControls.RepeatLayout = {}
---@alias CS.System.Web.UI.WebControls.RepeatLayout System.Web.UI.WebControls.RepeatLayout
CS.System.Web.UI.WebControls.RepeatLayout = System.Web.UI.WebControls.RepeatLayout


---@class System.Web.UI.WebControls.RepeaterCommandEventArgs : System.Web.UI.WebControls.CommandEventArgs
---@field Item System.Web.UI.WebControls.RepeaterItem
---@field CommandSource System.Object
System.Web.UI.WebControls.RepeaterCommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.RepeaterCommandEventArgs System.Web.UI.WebControls.RepeaterCommandEventArgs
CS.System.Web.UI.WebControls.RepeaterCommandEventArgs = System.Web.UI.WebControls.RepeaterCommandEventArgs

---@param item System.Web.UI.WebControls.RepeaterItem
---@param commandSource System.Object
---@param originalArgs System.Web.UI.WebControls.CommandEventArgs
---@return System.Web.UI.WebControls.RepeaterCommandEventArgs
function System.Web.UI.WebControls.RepeaterCommandEventArgs.New(item, commandSource, originalArgs) end

---@class System.Web.UI.WebControls.RepeaterCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.RepeaterCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.RepeaterCommandEventHandler System.Web.UI.WebControls.RepeaterCommandEventHandler
CS.System.Web.UI.WebControls.RepeaterCommandEventHandler = System.Web.UI.WebControls.RepeaterCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.RepeaterCommandEventHandler
function System.Web.UI.WebControls.RepeaterCommandEventHandler.New(object, method) end
---@param source System.Object
---@param e System.Web.UI.WebControls.RepeaterCommandEventArgs
function System.Web.UI.WebControls.RepeaterCommandEventHandler:Invoke(source, e) end
---@param source System.Object
---@param e System.Web.UI.WebControls.RepeaterCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.RepeaterCommandEventHandler:BeginInvoke(source, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.RepeaterCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.RepeaterItemEventArgs : System.EventArgs
---@field Item System.Web.UI.WebControls.RepeaterItem
System.Web.UI.WebControls.RepeaterItemEventArgs = {}
---@alias CS.System.Web.UI.WebControls.RepeaterItemEventArgs System.Web.UI.WebControls.RepeaterItemEventArgs
CS.System.Web.UI.WebControls.RepeaterItemEventArgs = System.Web.UI.WebControls.RepeaterItemEventArgs

---@param item System.Web.UI.WebControls.RepeaterItem
---@return System.Web.UI.WebControls.RepeaterItemEventArgs
function System.Web.UI.WebControls.RepeaterItemEventArgs.New(item) end

---@class System.Web.UI.WebControls.RepeaterItemEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.RepeaterItemEventHandler = {}
---@alias CS.System.Web.UI.WebControls.RepeaterItemEventHandler System.Web.UI.WebControls.RepeaterItemEventHandler
CS.System.Web.UI.WebControls.RepeaterItemEventHandler = System.Web.UI.WebControls.RepeaterItemEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.RepeaterItemEventHandler
function System.Web.UI.WebControls.RepeaterItemEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.RepeaterItemEventArgs
function System.Web.UI.WebControls.RepeaterItemEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.RepeaterItemEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.RepeaterItemEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.RepeaterItemEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ScrollBars
---@field None System.Web.UI.WebControls.ScrollBars
---@field Horizontal System.Web.UI.WebControls.ScrollBars
---@field Vertical System.Web.UI.WebControls.ScrollBars
---@field Both System.Web.UI.WebControls.ScrollBars
---@field Auto System.Web.UI.WebControls.ScrollBars
System.Web.UI.WebControls.ScrollBars = {}
---@alias CS.System.Web.UI.WebControls.ScrollBars System.Web.UI.WebControls.ScrollBars
CS.System.Web.UI.WebControls.ScrollBars = System.Web.UI.WebControls.ScrollBars


---@class System.Web.UI.WebControls.SendMailErrorEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.SendMailErrorEventHandler = {}
---@alias CS.System.Web.UI.WebControls.SendMailErrorEventHandler System.Web.UI.WebControls.SendMailErrorEventHandler
CS.System.Web.UI.WebControls.SendMailErrorEventHandler = System.Web.UI.WebControls.SendMailErrorEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.SendMailErrorEventHandler
function System.Web.UI.WebControls.SendMailErrorEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SendMailErrorEventArgs
function System.Web.UI.WebControls.SendMailErrorEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SendMailErrorEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.SendMailErrorEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.SendMailErrorEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.ServerValidateEventArgs : System.EventArgs
---@field Value string
---@field IsValid boolean
System.Web.UI.WebControls.ServerValidateEventArgs = {}
---@alias CS.System.Web.UI.WebControls.ServerValidateEventArgs System.Web.UI.WebControls.ServerValidateEventArgs
CS.System.Web.UI.WebControls.ServerValidateEventArgs = System.Web.UI.WebControls.ServerValidateEventArgs

---@param value string
---@param isValid boolean
---@return System.Web.UI.WebControls.ServerValidateEventArgs
function System.Web.UI.WebControls.ServerValidateEventArgs.New(value, isValid) end

---@class System.Web.UI.WebControls.ServerValidateEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.ServerValidateEventHandler = {}
---@alias CS.System.Web.UI.WebControls.ServerValidateEventHandler System.Web.UI.WebControls.ServerValidateEventHandler
CS.System.Web.UI.WebControls.ServerValidateEventHandler = System.Web.UI.WebControls.ServerValidateEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.ServerValidateEventHandler
function System.Web.UI.WebControls.ServerValidateEventHandler.New(object, method) end
---@param source System.Object
---@param args System.Web.UI.WebControls.ServerValidateEventArgs
function System.Web.UI.WebControls.ServerValidateEventHandler:Invoke(source, args) end
---@param source System.Object
---@param args System.Web.UI.WebControls.ServerValidateEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.ServerValidateEventHandler:BeginInvoke(source, args, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.ServerValidateEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.SiteMapNodeItemEventArgs : System.EventArgs
---@field Item System.Web.UI.WebControls.SiteMapNodeItem
System.Web.UI.WebControls.SiteMapNodeItemEventArgs = {}
---@alias CS.System.Web.UI.WebControls.SiteMapNodeItemEventArgs System.Web.UI.WebControls.SiteMapNodeItemEventArgs
CS.System.Web.UI.WebControls.SiteMapNodeItemEventArgs = System.Web.UI.WebControls.SiteMapNodeItemEventArgs

---@param item System.Web.UI.WebControls.SiteMapNodeItem
---@return System.Web.UI.WebControls.SiteMapNodeItemEventArgs
function System.Web.UI.WebControls.SiteMapNodeItemEventArgs.New(item) end

---@class System.Web.UI.WebControls.SiteMapNodeItemEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.SiteMapNodeItemEventHandler = {}
---@alias CS.System.Web.UI.WebControls.SiteMapNodeItemEventHandler System.Web.UI.WebControls.SiteMapNodeItemEventHandler
CS.System.Web.UI.WebControls.SiteMapNodeItemEventHandler = System.Web.UI.WebControls.SiteMapNodeItemEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.SiteMapNodeItemEventHandler
function System.Web.UI.WebControls.SiteMapNodeItemEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SiteMapNodeItemEventArgs
function System.Web.UI.WebControls.SiteMapNodeItemEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SiteMapNodeItemEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.SiteMapNodeItemEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.SiteMapNodeItemEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.SiteMapNodeItemType
---@field Root System.Web.UI.WebControls.SiteMapNodeItemType
---@field Parent System.Web.UI.WebControls.SiteMapNodeItemType
---@field Current System.Web.UI.WebControls.SiteMapNodeItemType
---@field PathSeparator System.Web.UI.WebControls.SiteMapNodeItemType
System.Web.UI.WebControls.SiteMapNodeItemType = {}
---@alias CS.System.Web.UI.WebControls.SiteMapNodeItemType System.Web.UI.WebControls.SiteMapNodeItemType
CS.System.Web.UI.WebControls.SiteMapNodeItemType = System.Web.UI.WebControls.SiteMapNodeItemType


---@class System.Web.UI.WebControls.SortDirection
---@field Ascending System.Web.UI.WebControls.SortDirection
---@field Descending System.Web.UI.WebControls.SortDirection
System.Web.UI.WebControls.SortDirection = {}
---@alias CS.System.Web.UI.WebControls.SortDirection System.Web.UI.WebControls.SortDirection
CS.System.Web.UI.WebControls.SortDirection = System.Web.UI.WebControls.SortDirection


---@class System.Web.UI.WebControls.SqlDataSourceCommandEventArgs : System.ComponentModel.CancelEventArgs
---@field Command System.Data.Common.DbCommand
System.Web.UI.WebControls.SqlDataSourceCommandEventArgs = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceCommandEventArgs System.Web.UI.WebControls.SqlDataSourceCommandEventArgs
CS.System.Web.UI.WebControls.SqlDataSourceCommandEventArgs = System.Web.UI.WebControls.SqlDataSourceCommandEventArgs

---@param command System.Data.Common.DbCommand
---@return System.Web.UI.WebControls.SqlDataSourceCommandEventArgs
function System.Web.UI.WebControls.SqlDataSourceCommandEventArgs.New(command) end

---@class System.Web.UI.WebControls.SqlDataSourceCommandEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.SqlDataSourceCommandEventHandler = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceCommandEventHandler System.Web.UI.WebControls.SqlDataSourceCommandEventHandler
CS.System.Web.UI.WebControls.SqlDataSourceCommandEventHandler = System.Web.UI.WebControls.SqlDataSourceCommandEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.SqlDataSourceCommandEventHandler
function System.Web.UI.WebControls.SqlDataSourceCommandEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceCommandEventArgs
function System.Web.UI.WebControls.SqlDataSourceCommandEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceCommandEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceCommandEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceCommandEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.SqlDataSourceCommandType
---@field Text System.Web.UI.WebControls.SqlDataSourceCommandType
---@field StoredProcedure System.Web.UI.WebControls.SqlDataSourceCommandType
System.Web.UI.WebControls.SqlDataSourceCommandType = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceCommandType System.Web.UI.WebControls.SqlDataSourceCommandType
CS.System.Web.UI.WebControls.SqlDataSourceCommandType = System.Web.UI.WebControls.SqlDataSourceCommandType


---@class System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs : System.ComponentModel.CancelEventArgs
---@field ParameterValues System.Collections.Specialized.IOrderedDictionary
System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs
CS.System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs = System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs

---@param parameterValues System.Collections.Specialized.IOrderedDictionary
---@return System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs
function System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs.New(parameterValues) end

---@class System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler
CS.System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler = System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler
function System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs
function System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceFilteringEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceFilteringEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.SqlDataSourceMode
---@field DataReader System.Web.UI.WebControls.SqlDataSourceMode
---@field DataSet System.Web.UI.WebControls.SqlDataSourceMode
System.Web.UI.WebControls.SqlDataSourceMode = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceMode System.Web.UI.WebControls.SqlDataSourceMode
CS.System.Web.UI.WebControls.SqlDataSourceMode = System.Web.UI.WebControls.SqlDataSourceMode


---@class System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs : System.Web.UI.WebControls.SqlDataSourceCommandEventArgs
---@field Arguments System.Web.UI.DataSourceSelectArguments
System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs
CS.System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs = System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs

---@param command System.Data.Common.DbCommand
---@param arguments System.Web.UI.DataSourceSelectArguments
---@return System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs
function System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs.New(command, arguments) end

---@class System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler
CS.System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler = System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler
function System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs
function System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceSelectingEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.SqlDataSourceStatusEventArgs : System.EventArgs
---@field AffectedRows number
---@field Command System.Data.Common.DbCommand
---@field Exception System.Exception
---@field ExceptionHandled boolean
System.Web.UI.WebControls.SqlDataSourceStatusEventArgs = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceStatusEventArgs System.Web.UI.WebControls.SqlDataSourceStatusEventArgs
CS.System.Web.UI.WebControls.SqlDataSourceStatusEventArgs = System.Web.UI.WebControls.SqlDataSourceStatusEventArgs

---@param command System.Data.Common.DbCommand
---@param affectedRows number
---@param exception System.Exception
---@return System.Web.UI.WebControls.SqlDataSourceStatusEventArgs
function System.Web.UI.WebControls.SqlDataSourceStatusEventArgs.New(command, affectedRows, exception) end

---@class System.Web.UI.WebControls.SqlDataSourceStatusEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.SqlDataSourceStatusEventHandler = {}
---@alias CS.System.Web.UI.WebControls.SqlDataSourceStatusEventHandler System.Web.UI.WebControls.SqlDataSourceStatusEventHandler
CS.System.Web.UI.WebControls.SqlDataSourceStatusEventHandler = System.Web.UI.WebControls.SqlDataSourceStatusEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.SqlDataSourceStatusEventHandler
function System.Web.UI.WebControls.SqlDataSourceStatusEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceStatusEventArgs
function System.Web.UI.WebControls.SqlDataSourceStatusEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.SqlDataSourceStatusEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceStatusEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.SqlDataSourceStatusEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.TableCaptionAlign
---@field NotSet System.Web.UI.WebControls.TableCaptionAlign
---@field Top System.Web.UI.WebControls.TableCaptionAlign
---@field Bottom System.Web.UI.WebControls.TableCaptionAlign
---@field Left System.Web.UI.WebControls.TableCaptionAlign
---@field Right System.Web.UI.WebControls.TableCaptionAlign
System.Web.UI.WebControls.TableCaptionAlign = {}
---@alias CS.System.Web.UI.WebControls.TableCaptionAlign System.Web.UI.WebControls.TableCaptionAlign
CS.System.Web.UI.WebControls.TableCaptionAlign = System.Web.UI.WebControls.TableCaptionAlign


---@class System.Web.UI.WebControls.TableFooterRow : System.Web.UI.WebControls.TableRow
System.Web.UI.WebControls.TableFooterRow = {}
---@alias CS.System.Web.UI.WebControls.TableFooterRow System.Web.UI.WebControls.TableFooterRow
CS.System.Web.UI.WebControls.TableFooterRow = System.Web.UI.WebControls.TableFooterRow

---@return System.Web.UI.WebControls.TableFooterRow
function System.Web.UI.WebControls.TableFooterRow.New() end

---@class System.Web.UI.WebControls.TableHeaderRow : System.Web.UI.WebControls.TableRow
System.Web.UI.WebControls.TableHeaderRow = {}
---@alias CS.System.Web.UI.WebControls.TableHeaderRow System.Web.UI.WebControls.TableHeaderRow
CS.System.Web.UI.WebControls.TableHeaderRow = System.Web.UI.WebControls.TableHeaderRow

---@return System.Web.UI.WebControls.TableHeaderRow
function System.Web.UI.WebControls.TableHeaderRow.New() end

---@class System.Web.UI.WebControls.TableHeaderScope
---@field NotSet System.Web.UI.WebControls.TableHeaderScope
---@field Row System.Web.UI.WebControls.TableHeaderScope
---@field Column System.Web.UI.WebControls.TableHeaderScope
System.Web.UI.WebControls.TableHeaderScope = {}
---@alias CS.System.Web.UI.WebControls.TableHeaderScope System.Web.UI.WebControls.TableHeaderScope
CS.System.Web.UI.WebControls.TableHeaderScope = System.Web.UI.WebControls.TableHeaderScope


---@class System.Web.UI.WebControls.TableRowSection
---@field TableHeader System.Web.UI.WebControls.TableRowSection
---@field TableBody System.Web.UI.WebControls.TableRowSection
---@field TableFooter System.Web.UI.WebControls.TableRowSection
System.Web.UI.WebControls.TableRowSection = {}
---@alias CS.System.Web.UI.WebControls.TableRowSection System.Web.UI.WebControls.TableRowSection
CS.System.Web.UI.WebControls.TableRowSection = System.Web.UI.WebControls.TableRowSection


---@class System.Web.UI.WebControls.TextAlign
---@field Left System.Web.UI.WebControls.TextAlign
---@field Right System.Web.UI.WebControls.TextAlign
System.Web.UI.WebControls.TextAlign = {}
---@alias CS.System.Web.UI.WebControls.TextAlign System.Web.UI.WebControls.TextAlign
CS.System.Web.UI.WebControls.TextAlign = System.Web.UI.WebControls.TextAlign


---@class System.Web.UI.WebControls.TextBoxMode
---@field SingleLine System.Web.UI.WebControls.TextBoxMode
---@field MultiLine System.Web.UI.WebControls.TextBoxMode
---@field Password System.Web.UI.WebControls.TextBoxMode
---@field Color System.Web.UI.WebControls.TextBoxMode
---@field Date System.Web.UI.WebControls.TextBoxMode
---@field DateTime System.Web.UI.WebControls.TextBoxMode
---@field DateTimeLocal System.Web.UI.WebControls.TextBoxMode
---@field Email System.Web.UI.WebControls.TextBoxMode
---@field Month System.Web.UI.WebControls.TextBoxMode
---@field Number System.Web.UI.WebControls.TextBoxMode
---@field Range System.Web.UI.WebControls.TextBoxMode
---@field Search System.Web.UI.WebControls.TextBoxMode
---@field Phone System.Web.UI.WebControls.TextBoxMode
---@field Time System.Web.UI.WebControls.TextBoxMode
---@field Url System.Web.UI.WebControls.TextBoxMode
---@field Week System.Web.UI.WebControls.TextBoxMode
System.Web.UI.WebControls.TextBoxMode = {}
---@alias CS.System.Web.UI.WebControls.TextBoxMode System.Web.UI.WebControls.TextBoxMode
CS.System.Web.UI.WebControls.TextBoxMode = System.Web.UI.WebControls.TextBoxMode


---@class System.Web.UI.WebControls.TitleFormat
---@field Month System.Web.UI.WebControls.TitleFormat
---@field MonthYear System.Web.UI.WebControls.TitleFormat
System.Web.UI.WebControls.TitleFormat = {}
---@alias CS.System.Web.UI.WebControls.TitleFormat System.Web.UI.WebControls.TitleFormat
CS.System.Web.UI.WebControls.TitleFormat = System.Web.UI.WebControls.TitleFormat


---@class System.Web.UI.WebControls.TreeNodeEventArgs : System.EventArgs
---@field Node System.Web.UI.WebControls.TreeNode
System.Web.UI.WebControls.TreeNodeEventArgs = {}
---@alias CS.System.Web.UI.WebControls.TreeNodeEventArgs System.Web.UI.WebControls.TreeNodeEventArgs
CS.System.Web.UI.WebControls.TreeNodeEventArgs = System.Web.UI.WebControls.TreeNodeEventArgs

---@param node System.Web.UI.WebControls.TreeNode
---@return System.Web.UI.WebControls.TreeNodeEventArgs
function System.Web.UI.WebControls.TreeNodeEventArgs.New(node) end

---@class System.Web.UI.WebControls.TreeNodeEventHandler : System.MulticastDelegate
System.Web.UI.WebControls.TreeNodeEventHandler = {}
---@alias CS.System.Web.UI.WebControls.TreeNodeEventHandler System.Web.UI.WebControls.TreeNodeEventHandler
CS.System.Web.UI.WebControls.TreeNodeEventHandler = System.Web.UI.WebControls.TreeNodeEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.UI.WebControls.TreeNodeEventHandler
function System.Web.UI.WebControls.TreeNodeEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.TreeNodeEventArgs
function System.Web.UI.WebControls.TreeNodeEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.UI.WebControls.TreeNodeEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.UI.WebControls.TreeNodeEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.UI.WebControls.TreeNodeEventHandler:EndInvoke(result) end

---@class System.Web.UI.WebControls.TreeNodeSelectAction
---@field Select System.Web.UI.WebControls.TreeNodeSelectAction
---@field Expand System.Web.UI.WebControls.TreeNodeSelectAction
---@field SelectExpand System.Web.UI.WebControls.TreeNodeSelectAction
---@field None System.Web.UI.WebControls.TreeNodeSelectAction
System.Web.UI.WebControls.TreeNodeSelectAction = {}
---@alias CS.System.Web.UI.WebControls.TreeNodeSelectAction System.Web.UI.WebControls.TreeNodeSelectAction
CS.System.Web.UI.WebControls.TreeNodeSelectAction = System.Web.UI.WebControls.TreeNodeSelectAction


---@class System.Web.UI.WebControls.TreeNodeTypes
---@field None System.Web.UI.WebControls.TreeNodeTypes
---@field Root System.Web.UI.WebControls.TreeNodeTypes
---@field Parent System.Web.UI.WebControls.TreeNodeTypes
---@field Leaf System.Web.UI.WebControls.TreeNodeTypes
---@field All System.Web.UI.WebControls.TreeNodeTypes
System.Web.UI.WebControls.TreeNodeTypes = {}
---@alias CS.System.Web.UI.WebControls.TreeNodeTypes System.Web.UI.WebControls.TreeNodeTypes
CS.System.Web.UI.WebControls.TreeNodeTypes = System.Web.UI.WebControls.TreeNodeTypes


---@class System.Web.UI.WebControls.TreeViewImageSet
---@field Custom System.Web.UI.WebControls.TreeViewImageSet
---@field XPFileExplorer System.Web.UI.WebControls.TreeViewImageSet
---@field Msdn System.Web.UI.WebControls.TreeViewImageSet
---@field WindowsHelp System.Web.UI.WebControls.TreeViewImageSet
---@field Simple System.Web.UI.WebControls.TreeViewImageSet
---@field Simple2 System.Web.UI.WebControls.TreeViewImageSet
---@field BulletedList System.Web.UI.WebControls.TreeViewImageSet
---@field BulletedList2 System.Web.UI.WebControls.TreeViewImageSet
---@field BulletedList3 System.Web.UI.WebControls.TreeViewImageSet
---@field BulletedList4 System.Web.UI.WebControls.TreeViewImageSet
---@field Arrows System.Web.UI.WebControls.TreeViewImageSet
---@field News System.Web.UI.WebControls.TreeViewImageSet
---@field Contacts System.Web.UI.WebControls.TreeViewImageSet
---@field Inbox System.Web.UI.WebControls.TreeViewImageSet
---@field Events System.Web.UI.WebControls.TreeViewImageSet
---@field Faq System.Web.UI.WebControls.TreeViewImageSet
System.Web.UI.WebControls.TreeViewImageSet = {}
---@alias CS.System.Web.UI.WebControls.TreeViewImageSet System.Web.UI.WebControls.TreeViewImageSet
CS.System.Web.UI.WebControls.TreeViewImageSet = System.Web.UI.WebControls.TreeViewImageSet


---@class System.Web.UI.WebControls.UnitType
---@field Pixel System.Web.UI.WebControls.UnitType
---@field Point System.Web.UI.WebControls.UnitType
---@field Pica System.Web.UI.WebControls.UnitType
---@field Inch System.Web.UI.WebControls.UnitType
---@field Mm System.Web.UI.WebControls.UnitType
---@field Cm System.Web.UI.WebControls.UnitType
---@field Percentage System.Web.UI.WebControls.UnitType
---@field Em System.Web.UI.WebControls.UnitType
---@field Ex System.Web.UI.WebControls.UnitType
System.Web.UI.WebControls.UnitType = {}
---@alias CS.System.Web.UI.WebControls.UnitType System.Web.UI.WebControls.UnitType
CS.System.Web.UI.WebControls.UnitType = System.Web.UI.WebControls.UnitType


---@class System.Web.UI.WebControls.ValidationCompareOperator
---@field Equal System.Web.UI.WebControls.ValidationCompareOperator
---@field NotEqual System.Web.UI.WebControls.ValidationCompareOperator
---@field GreaterThan System.Web.UI.WebControls.ValidationCompareOperator
---@field GreaterThanEqual System.Web.UI.WebControls.ValidationCompareOperator
---@field LessThan System.Web.UI.WebControls.ValidationCompareOperator
---@field LessThanEqual System.Web.UI.WebControls.ValidationCompareOperator
---@field DataTypeCheck System.Web.UI.WebControls.ValidationCompareOperator
System.Web.UI.WebControls.ValidationCompareOperator = {}
---@alias CS.System.Web.UI.WebControls.ValidationCompareOperator System.Web.UI.WebControls.ValidationCompareOperator
CS.System.Web.UI.WebControls.ValidationCompareOperator = System.Web.UI.WebControls.ValidationCompareOperator


---@class System.Web.UI.WebControls.ValidationDataType
---@field String System.Web.UI.WebControls.ValidationDataType
---@field Integer System.Web.UI.WebControls.ValidationDataType
---@field Double System.Web.UI.WebControls.ValidationDataType
---@field Date System.Web.UI.WebControls.ValidationDataType
---@field Currency System.Web.UI.WebControls.ValidationDataType
System.Web.UI.WebControls.ValidationDataType = {}
---@alias CS.System.Web.UI.WebControls.ValidationDataType System.Web.UI.WebControls.ValidationDataType
CS.System.Web.UI.WebControls.ValidationDataType = System.Web.UI.WebControls.ValidationDataType


---@class System.Web.UI.WebControls.ValidationSummaryDisplayMode
---@field List System.Web.UI.WebControls.ValidationSummaryDisplayMode
---@field BulletList System.Web.UI.WebControls.ValidationSummaryDisplayMode
---@field SingleParagraph System.Web.UI.WebControls.ValidationSummaryDisplayMode
System.Web.UI.WebControls.ValidationSummaryDisplayMode = {}
---@alias CS.System.Web.UI.WebControls.ValidationSummaryDisplayMode System.Web.UI.WebControls.ValidationSummaryDisplayMode
CS.System.Web.UI.WebControls.ValidationSummaryDisplayMode = System.Web.UI.WebControls.ValidationSummaryDisplayMode


---@class System.Web.UI.WebControls.ValidatorDisplay
---@field None System.Web.UI.WebControls.ValidatorDisplay
---@field Static System.Web.UI.WebControls.ValidatorDisplay
---@field Dynamic System.Web.UI.WebControls.ValidatorDisplay
System.Web.UI.WebControls.ValidatorDisplay = {}
---@alias CS.System.Web.UI.WebControls.ValidatorDisplay System.Web.UI.WebControls.ValidatorDisplay
CS.System.Web.UI.WebControls.ValidatorDisplay = System.Web.UI.WebControls.ValidatorDisplay


---@class System.Web.UI.WebControls.VerticalAlign
---@field NotSet System.Web.UI.WebControls.VerticalAlign
---@field Top System.Web.UI.WebControls.VerticalAlign
---@field Middle System.Web.UI.WebControls.VerticalAlign
---@field Bottom System.Web.UI.WebControls.VerticalAlign
System.Web.UI.WebControls.VerticalAlign = {}
---@alias CS.System.Web.UI.WebControls.VerticalAlign System.Web.UI.WebControls.VerticalAlign
CS.System.Web.UI.WebControls.VerticalAlign = System.Web.UI.WebControls.VerticalAlign


---@class System.Web.UI.WebControls.WebColorConverter : System.Drawing.ColorConverter
System.Web.UI.WebControls.WebColorConverter = {}
---@alias CS.System.Web.UI.WebControls.WebColorConverter System.Web.UI.WebControls.WebColorConverter
CS.System.Web.UI.WebControls.WebColorConverter = System.Web.UI.WebControls.WebColorConverter

---@return System.Web.UI.WebControls.WebColorConverter
function System.Web.UI.WebControls.WebColorConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Web.UI.WebControls.WebColorConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Web.UI.WebControls.WebColorConverter:ConvertTo(context, culture, value, destinationType) end

---@class System.Web.UI.WebControls.WizardSideBarListControlItem : System.Object
---@field DataItem System.Object
---@field ItemType System.Web.UI.WebControls.ListItemType
---@field ItemIndex number
System.Web.UI.WebControls.WizardSideBarListControlItem = {}
---@alias CS.System.Web.UI.WebControls.WizardSideBarListControlItem System.Web.UI.WebControls.WizardSideBarListControlItem
CS.System.Web.UI.WebControls.WizardSideBarListControlItem = System.Web.UI.WebControls.WizardSideBarListControlItem

---@param dataItem System.Object
---@param itemType System.Web.UI.WebControls.ListItemType
---@param itemIndex number
---@param container System.Web.UI.Control
---@return System.Web.UI.WebControls.WizardSideBarListControlItem
function System.Web.UI.WebControls.WizardSideBarListControlItem.New(dataItem, itemType, itemIndex, container) end

---@class System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs : System.EventArgs
---@field Item System.Web.UI.WebControls.WizardSideBarListControlItem
System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs = {}
---@alias CS.System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs
CS.System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs = System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs

---@param item System.Web.UI.WebControls.WizardSideBarListControlItem
---@return System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs
function System.Web.UI.WebControls.WizardSideBarListControlItemEventArgs.New(item) end

---@class System.Web.UI.WebControls.WizardStep : System.Web.UI.WebControls.WizardStepBase
System.Web.UI.WebControls.WizardStep = {}
---@alias CS.System.Web.UI.WebControls.WizardStep System.Web.UI.WebControls.WizardStep
CS.System.Web.UI.WebControls.WizardStep = System.Web.UI.WebControls.WizardStep

---@return System.Web.UI.WebControls.WizardStep
function System.Web.UI.WebControls.WizardStep.New() end

---@class System.Web.UI.WebControls.WizardStepType
---@field Auto System.Web.UI.WebControls.WizardStepType
---@field Complete System.Web.UI.WebControls.WizardStepType
---@field Finish System.Web.UI.WebControls.WizardStepType
---@field Start System.Web.UI.WebControls.WizardStepType
---@field Step System.Web.UI.WebControls.WizardStepType
System.Web.UI.WebControls.WizardStepType = {}
---@alias CS.System.Web.UI.WebControls.WizardStepType System.Web.UI.WebControls.WizardStepType
CS.System.Web.UI.WebControls.WizardStepType = System.Web.UI.WebControls.WizardStepType


---@class System.Web.UI.WebControls.AccessDataSource : System.Web.UI.WebControls.SqlDataSource
---@field SqlCacheDependency string
---@field ConnectionString string
---@field DataFile string
---@field ProviderName string
System.Web.UI.WebControls.AccessDataSource = {}
---@alias CS.System.Web.UI.WebControls.AccessDataSource System.Web.UI.WebControls.AccessDataSource
CS.System.Web.UI.WebControls.AccessDataSource = System.Web.UI.WebControls.AccessDataSource

---@overload fun() : System.Web.UI.WebControls.AccessDataSource
---@param dataFile string
---@param selectCommand string
---@return System.Web.UI.WebControls.AccessDataSource
function System.Web.UI.WebControls.AccessDataSource.New(dataFile, selectCommand) end

---@class System.Web.UI.WebControls.AccessDataSourceView : System.Web.UI.WebControls.SqlDataSourceView
System.Web.UI.WebControls.AccessDataSourceView = {}
---@alias CS.System.Web.UI.WebControls.AccessDataSourceView System.Web.UI.WebControls.AccessDataSourceView
CS.System.Web.UI.WebControls.AccessDataSourceView = System.Web.UI.WebControls.AccessDataSourceView

---@param owner System.Web.UI.WebControls.AccessDataSource
---@param name string
---@param context System.Web.HttpContext
---@return System.Web.UI.WebControls.AccessDataSourceView
function System.Web.UI.WebControls.AccessDataSourceView.New(owner, name, context) end

---@class System.Web.UI.WebControls.AdCreatedEventArgs : System.EventArgs
---@field AdProperties System.Collections.IDictionary
---@field AlternateText string
---@field ImageUrl string
---@field NavigateUrl string
System.Web.UI.WebControls.AdCreatedEventArgs = {}
---@alias CS.System.Web.UI.WebControls.AdCreatedEventArgs System.Web.UI.WebControls.AdCreatedEventArgs
CS.System.Web.UI.WebControls.AdCreatedEventArgs = System.Web.UI.WebControls.AdCreatedEventArgs

---@param adProperties System.Collections.IDictionary
---@return System.Web.UI.WebControls.AdCreatedEventArgs
function System.Web.UI.WebControls.AdCreatedEventArgs.New(adProperties) end

---@class System.Web.UI.WebControls.AdRotator : System.Web.UI.WebControls.DataBoundControl
---@field AdvertisementFile string
---@field AlternateTextField string
---@field Font System.Web.UI.WebControls.FontInfo
---@field ImageUrlField string
---@field KeywordFilter string
---@field NavigateUrlField string
---@field Target string
---@field UniqueID string
System.Web.UI.WebControls.AdRotator = {}
---@alias CS.System.Web.UI.WebControls.AdRotator System.Web.UI.WebControls.AdRotator
CS.System.Web.UI.WebControls.AdRotator = System.Web.UI.WebControls.AdRotator

---@return System.Web.UI.WebControls.AdRotator
function System.Web.UI.WebControls.AdRotator.New() end

---@class System.Web.UI.WebControls.AssociatedControlConverter : System.Web.UI.WebControls.ControlIDConverter
System.Web.UI.WebControls.AssociatedControlConverter = {}
---@alias CS.System.Web.UI.WebControls.AssociatedControlConverter System.Web.UI.WebControls.AssociatedControlConverter
CS.System.Web.UI.WebControls.AssociatedControlConverter = System.Web.UI.WebControls.AssociatedControlConverter

---@return System.Web.UI.WebControls.AssociatedControlConverter
function System.Web.UI.WebControls.AssociatedControlConverter.New() end

---@class System.Web.UI.WebControls.AutoGeneratedField : System.Web.UI.WebControls.BoundField
---@field DataType System.Type
---@field ConvertEmptyStringToNull boolean
---@field DataFormatString string
---@field InsertVisible boolean
System.Web.UI.WebControls.AutoGeneratedField = {}
---@alias CS.System.Web.UI.WebControls.AutoGeneratedField System.Web.UI.WebControls.AutoGeneratedField
CS.System.Web.UI.WebControls.AutoGeneratedField = System.Web.UI.WebControls.AutoGeneratedField

---@param dataField string
---@return System.Web.UI.WebControls.AutoGeneratedField
function System.Web.UI.WebControls.AutoGeneratedField.New(dataField) end
---@param dictionary System.Collections.Specialized.IOrderedDictionary
---@param cell System.Web.UI.WebControls.DataControlFieldCell
---@param rowState System.Web.UI.WebControls.DataControlRowState
---@param includeReadOnly boolean
function System.Web.UI.WebControls.AutoGeneratedField:ExtractValuesFromCell(dictionary, cell, rowState, includeReadOnly) end
function System.Web.UI.WebControls.AutoGeneratedField:ValidateSupportsCallback() end

---@class System.Web.UI.WebControls.AutoGeneratedFieldProperties : System.Object
---@field DataField string
---@field IsReadOnly boolean
---@field Name string
---@field Type System.Type
System.Web.UI.WebControls.AutoGeneratedFieldProperties = {}
---@alias CS.System.Web.UI.WebControls.AutoGeneratedFieldProperties System.Web.UI.WebControls.AutoGeneratedFieldProperties
CS.System.Web.UI.WebControls.AutoGeneratedFieldProperties = System.Web.UI.WebControls.AutoGeneratedFieldProperties

---@return System.Web.UI.WebControls.AutoGeneratedFieldProperties
function System.Web.UI.WebControls.AutoGeneratedFieldProperties.New() end

---@class System.Web.UI.WebControls.BaseCompareValidator : System.Web.UI.WebControls.BaseValidator
---@field CultureInvariantValues boolean
---@field Type System.Web.UI.WebControls.ValidationDataType
System.Web.UI.WebControls.BaseCompareValidator = {}
---@alias CS.System.Web.UI.WebControls.BaseCompareValidator System.Web.UI.WebControls.BaseCompareValidator
CS.System.Web.UI.WebControls.BaseCompareValidator = System.Web.UI.WebControls.BaseCompareValidator

---@overload fun(text: string, type: System.Web.UI.WebControls.ValidationDataType) : boolean
---@param text string
---@param type System.Web.UI.WebControls.ValidationDataType
---@param cultureInvariant boolean
---@return boolean
function System.Web.UI.WebControls.BaseCompareValidator.CanConvert(text, type, cultureInvariant) end

---@class System.Web.UI.WebControls.BaseDataBoundControl : System.Web.UI.WebControls.WebControl
---@field DataSource System.Object
---@field DataSourceID string
---@field SupportsDisabledAttribute boolean
System.Web.UI.WebControls.BaseDataBoundControl = {}
---@alias CS.System.Web.UI.WebControls.BaseDataBoundControl System.Web.UI.WebControls.BaseDataBoundControl
CS.System.Web.UI.WebControls.BaseDataBoundControl = System.Web.UI.WebControls.BaseDataBoundControl

function System.Web.UI.WebControls.BaseDataBoundControl:DataBind() end

---@class System.Web.UI.WebControls.BaseDataList : System.Web.UI.WebControls.WebControl
---@field Caption string
---@field CaptionAlign System.Web.UI.WebControls.TableCaptionAlign
---@field CellPadding number
---@field CellSpacing number
---@field Controls System.Web.UI.ControlCollection
---@field DataKeyField string
---@field DataKeys System.Web.UI.WebControls.DataKeyCollection
---@field DataMember string
---@field DataSource System.Object
---@field GridLines System.Web.UI.WebControls.GridLines
---@field HorizontalAlign System.Web.UI.WebControls.HorizontalAlign
---@field UseAccessibleHeader boolean
---@field DataSourceID string
---@field SupportsDisabledAttribute boolean
System.Web.UI.WebControls.BaseDataList = {}
---@alias CS.System.Web.UI.WebControls.BaseDataList System.Web.UI.WebControls.BaseDataList
CS.System.Web.UI.WebControls.BaseDataList = System.Web.UI.WebControls.BaseDataList

---@param type System.Type
---@return boolean
function System.Web.UI.WebControls.BaseDataList.IsBindableType(type) end
function System.Web.UI.WebControls.BaseDataList:DataBind() end

---@class System.Web.UI.WebControls.BaseMenuRenderer : System.Object
---@field Tag System.Web.UI.HtmlTextWriterTag
System.Web.UI.WebControls.BaseMenuRenderer = {}
---@alias CS.System.Web.UI.WebControls.BaseMenuRenderer System.Web.UI.WebControls.BaseMenuRenderer
CS.System.Web.UI.WebControls.BaseMenuRenderer = System.Web.UI.WebControls.BaseMenuRenderer

---@param owner System.Web.UI.WebControls.Menu
---@return System.Web.UI.WebControls.BaseMenuRenderer
function System.Web.UI.WebControls.BaseMenuRenderer.New(owner) end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.WebControls.BaseMenuRenderer:AddAttributesToRender(writer) end
---@param page System.Web.UI.Page
---@param head System.Web.UI.HtmlControls.HtmlHead
---@param csm System.Web.UI.ClientScriptManager
---@param cmenu string
---@param script System.Text.StringBuilder
function System.Web.UI.WebControls.BaseMenuRenderer:PreRender(page, head, csm, cmenu, script) end
---@param writer System.Web.UI.HtmlTextWriter
---@param dynamic boolean
---@param menuLevel number
function System.Web.UI.WebControls.BaseMenuRenderer:RenderMenuBeginTag(writer, dynamic, menuLevel) end
---@param writer System.Web.UI.HtmlTextWriter
---@param items System.Web.UI.WebControls.MenuItemCollection
---@param vertical boolean
---@param dynamic boolean
---@param notLast boolean
function System.Web.UI.WebControls.BaseMenuRenderer:RenderMenuBody(writer, items, vertical, dynamic, notLast) end
---@param writer System.Web.UI.HtmlTextWriter
---@param skipLinkText string
function System.Web.UI.WebControls.BaseMenuRenderer:RenderBeginTag(writer, skipLinkText) end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.WebControls.BaseMenuRenderer:RenderEndTag(writer) end
---@param writer System.Web.UI.HtmlTextWriter
function System.Web.UI.WebControls.BaseMenuRenderer:RenderContents(writer) end
---@overload fun(self: System.Web.UI.WebControls.BaseMenuRenderer, owner: System.Web.UI.WebControls.Menu, item: System.Web.UI.WebControls.MenuItem) : boolean
---@param item System.Web.UI.WebControls.MenuItem
---@return boolean
function System.Web.UI.WebControls.BaseMenuRenderer:IsDynamicItem(item) end
---@param writer System.Web.UI.HtmlTextWriter
---@param item System.Web.UI.WebControls.MenuItem
---@param notLast boolean
---@param isFirst boolean
function System.Web.UI.WebControls.BaseMenuRenderer:RenderMenuItem(writer, item, notLast, isFirst) end
---@param writer System.Web.UI.HtmlTextWriter
---@param dynamic boolean
---@param menuLevel number
function System.Web.UI.WebControls.BaseMenuRenderer:RenderMenuEndTag(writer, dynamic, menuLevel) end
---@param writer System.Web.UI.HtmlTextWriter
---@param item System.Web.UI.WebControls.MenuItem
---@param isDynamicItem boolean
function System.Web.UI.WebControls.BaseMenuRenderer:RenderItemContent(writer, item, isDynamicItem) end
---@param style System.Web.UI.WebControls.Style
---@param cssClass string
function System.Web.UI.WebControls.BaseMenuRenderer:AddCssClass(style, cssClass) end
---@param ownerClientID string
---@param item System.Web.UI.WebControls.MenuItem
---@param suffix string
---@return string
function System.Web.UI.WebControls.BaseMenuRenderer:GetItemClientId(ownerClientID, item, suffix) end
---@param owner System.Web.UI.WebControls.Menu
---@param writer System.Web.UI.HtmlTextWriter
---@param item System.Web.UI.WebControls.MenuItem
function System.Web.UI.WebControls.BaseMenuRenderer:RenderItemHref(owner, writer, item) end
---@param owner System.Web.UI.WebControls.Menu
---@param item System.Web.UI.WebControls.MenuItem
---@param isDynamicItem boolean
---@return string
function System.Web.UI.WebControls.BaseMenuRenderer:GetPopOutImage(owner, item, isDynamicItem) end
---@param owner System.Web.UI.WebControls.Menu
---@return string
function System.Web.UI.WebControls.BaseMenuRenderer:GetArrowResourceUrl(owner) end
---@param header System.Web.UI.HtmlControls.HtmlHead
---@param dynamic boolean
---@param menuLevel number
---@param style System.Web.UI.WebControls.SubMenuStyle
function System.Web.UI.WebControls.BaseMenuRenderer:FillMenuStyle(header, dynamic, menuLevel, style) end
---@overload fun(self: System.Web.UI.WebControls.BaseMenuRenderer, baseStyle: System.Web.UI.WebControls.Style, linkStyle: System.Web.UI.WebControls.Style, head: System.Web.UI.HtmlControls.HtmlHead)
---@overload fun(self: System.Web.UI.WebControls.BaseMenuRenderer, baseStyle: System.Web.UI.WebControls.Style, linkStyle: System.Web.UI.WebControls.Style, className: string, head: System.Web.UI.HtmlControls.HtmlHead)
---@overload fun(self: System.Web.UI.WebControls.BaseMenuRenderer, baseStyle: System.Web.UI.WebControls.Style, head: System.Web.UI.HtmlControls.HtmlHead)
---@param baseStyle System.Web.UI.WebControls.Style
---@param className string
---@param head System.Web.UI.HtmlControls.HtmlHead
function System.Web.UI.WebControls.BaseMenuRenderer:RegisterStyle(baseStyle, className, head) end
---@param owner System.Web.UI.WebControls.Menu
---@param writer System.Web.UI.HtmlTextWriter
---@param url string
---@param standardsCompliant boolean
function System.Web.UI.WebControls.BaseMenuRenderer:RenderSeparatorImage(owner, writer, url, standardsCompliant) end

---@class System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext : System.Object
---@field StaticMenuItemStyle System.Web.UI.WebControls.MenuItemStyle
---@field DynamicMenuItemStyle System.Web.UI.WebControls.MenuItemStyle
---@field LevelMenuItemStyles System.Web.UI.WebControls.MenuItemStyleCollection
---@field ControlLinkStyle System.Web.UI.WebControls.Style
---@field Header System.Web.UI.HtmlControls.HtmlHead
---@field ClientID string
---@field StaticDisplayLevels number
---@field IsVertical boolean
---@field SelectedItem System.Web.UI.WebControls.MenuItem
---@field StaticSubMenuIndent System.Web.UI.WebControls.Unit
---@field StaticPopOutImageTextFormatString string
---@field DynamicPopOutImageTextFormatString string
---@field DynamicTopSeparatorImageUrl string
---@field DynamicBottomSeparatorImageUrl string
---@field StaticTopSeparatorImageUrl string
---@field StaticBottomSeparatorImageUrl string
---@field LevelMenuItemLinkStyles System.Collections.Generic.List
---@field LevelSelectedLinkStyles System.Collections.Generic.List
---@field StaticMenuItemLinkStyle System.Web.UI.WebControls.Style
---@field DynamicMenuItemLinkStyle System.Web.UI.WebControls.Style
---@field StaticSelectedStyle System.Web.UI.WebControls.MenuItemStyle
---@field DynamicSelectedStyle System.Web.UI.WebControls.MenuItemStyle
---@field StaticSelectedLinkStyle System.Web.UI.WebControls.Style
---@field DynamicSelectedLinkStyle System.Web.UI.WebControls.Style
---@field LevelSelectedStyles System.Web.UI.WebControls.MenuItemStyleCollection
---@field DynamicItemTemplate System.Web.UI.ITemplate
System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext = {}
---@alias CS.System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext
CS.System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext = System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext

---@param container System.Web.UI.WebControls.BaseMenuRenderer
---@return System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext
function System.Web.UI.WebControls.BaseMenuRenderer.OwnerContext.New(container) end

---@class System.Web.UI.WebControls.BaseValidator : System.Web.UI.WebControls.Label
---@field AssociatedControlID string
---@field ValidationGroup string
---@field SetFocusOnError boolean
---@field Text string
---@field ControlToValidate string
---@field Display System.Web.UI.WebControls.ValidatorDisplay
---@field EnableClientScript boolean
---@field Enabled boolean
---@field ErrorMessage string
---@field ForeColor System.Drawing.Color
---@field IsValid boolean
System.Web.UI.WebControls.BaseValidator = {}
---@alias CS.System.Web.UI.WebControls.BaseValidator System.Web.UI.WebControls.BaseValidator
CS.System.Web.UI.WebControls.BaseValidator = System.Web.UI.WebControls.BaseValidator

---@param component System.Object
---@return System.ComponentModel.PropertyDescriptor
function System.Web.UI.WebControls.BaseValidator.GetValidationProperty(component) end
function System.Web.UI.WebControls.BaseValidator:Validate() end

---@class System.Web.UI.WebControls.BoundColumn : System.Web.UI.WebControls.DataGridColumn
---@field thisExpr string
---@field DataField string
---@field DataFormatString string
---@field ReadOnly boolean
System.Web.UI.WebControls.BoundColumn = {}
---@alias CS.System.Web.UI.WebControls.BoundColumn System.Web.UI.WebControls.BoundColumn
CS.System.Web.UI.WebControls.BoundColumn = System.Web.UI.WebControls.BoundColumn

---@return System.Web.UI.WebControls.BoundColumn
function System.Web.UI.WebControls.BoundColumn.New() end
function System.Web.UI.WebControls.BoundColumn:Initialize() end
---@param cell System.Web.UI.WebControls.TableCell
---@param columnIndex number
---@param itemType System.Web.UI.WebControls.ListItemType
function System.Web.UI.WebControls.BoundColumn:InitializeCell(cell, columnIndex, itemType) end

---@class System.Web.UI.WebControls.BoundField : System.Web.UI.WebControls.DataControlField
---@field ThisExpression string
---@field ApplyFormatInEditMode boolean
---@field ConvertEmptyStringToNull boolean
---@field DataField string
---@field DataFormatString string
---@field HeaderText string
---@field NullDisplayText string
---@field ReadOnly boolean
---@field HtmlEncode boolean
---@field HtmlEncodeFormatString boolean
---@field ValidateRequestMode System.Web.UI.ValidateRequestMode
System.Web.UI.WebControls.BoundField = {}
---@alias CS.System.Web.UI.WebControls.BoundField System.Web.UI.WebControls.BoundField
CS.System.Web.UI.WebControls.BoundField = System.Web.UI.WebControls.BoundField

---@return System.Web.UI.WebControls.BoundField
function System.Web.UI.WebControls.BoundField.New() end
---@param dictionary System.Collections.Specialized.IOrderedDictionary
---@param cell System.Web.UI.WebControls.DataControlFieldCell
---@param rowState System.Web.UI.WebControls.DataControlRowState
---@param includeReadOnly boolean
function System.Web.UI.WebControls.BoundField:ExtractValuesFromCell(dictionary, cell, rowState, includeReadOnly) end
---@param enableSorting boolean
---@param control System.Web.UI.Control
---@return boolean
function System.Web.UI.WebControls.BoundField:Initialize(enableSorting, control) end
---@param cell System.Web.UI.WebControls.DataControlFieldCell
---@param cellType System.Web.UI.WebControls.DataControlCellType
---@param rowState System.Web.UI.WebControls.DataControlRowState
---@param rowIndex number
function System.Web.UI.WebControls.BoundField:InitializeCell(cell, cellType, rowState, rowIndex) end
function System.Web.UI.WebControls.BoundField:ValidateSupportsCallback() end

---@class System.Web.UI.WebControls.BulletStyle
---@field NotSet System.Web.UI.WebControls.BulletStyle
---@field Numbered System.Web.UI.WebControls.BulletStyle
---@field LowerAlpha System.Web.UI.WebControls.BulletStyle
---@field UpperAlpha System.Web.UI.WebControls.BulletStyle
---@field LowerRoman System.Web.UI.WebControls.BulletStyle
---@field UpperRoman System.Web.UI.WebControls.BulletStyle
---@field Disc System.Web.UI.WebControls.BulletStyle
---@field Circle System.Web.UI.WebControls.BulletStyle
---@field Square System.Web.UI.WebControls.BulletStyle
---@field CustomImage System.Web.UI.WebControls.BulletStyle
System.Web.UI.WebControls.BulletStyle = {}
---@alias CS.System.Web.UI.WebControls.BulletStyle System.Web.UI.WebControls.BulletStyle
CS.System.Web.UI.WebControls.BulletStyle = System.Web.UI.WebControls.BulletStyle


---@class System.Web.UI.WebControls.BulletedList : System.Web.UI.WebControls.ListControl
---@field AutoPostBack boolean
---@field SelectedIndex number
---@field SelectedItem System.Web.UI.WebControls.ListItem
---@field SelectedValue string
---@field BulletImageUrl string
---@field BulletStyle System.Web.UI.WebControls.BulletStyle
---@field Controls System.Web.UI.ControlCollection
---@field DisplayMode System.Web.UI.WebControls.BulletedListDisplayMode
---@field FirstBulletNumber number
---@field Target string
---@field Text string
---@field RenderWhenDataEmpty boolean
System.Web.UI.WebControls.BulletedList = {}
---@alias CS.System.Web.UI.WebControls.BulletedList System.Web.UI.WebControls.BulletedList
CS.System.Web.UI.WebControls.BulletedList = System.Web.UI.WebControls.BulletedList

---@return System.Web.UI.WebControls.BulletedList
function System.Web.UI.WebControls.BulletedList.New() end

---@class System.Web.UI.WebControls.BulletedListDisplayMode
---@field Text System.Web.UI.WebControls.BulletedListDisplayMode
---@field HyperLink System.Web.UI.WebControls.BulletedListDisplayMode
---@field LinkButton System.Web.UI.WebControls.BulletedListDisplayMode
System.Web.UI.WebControls.BulletedListDisplayMode = {}
---@alias CS.System.Web.UI.WebControls.BulletedListDisplayMode System.Web.UI.WebControls.BulletedListDisplayMode
CS.System.Web.UI.WebControls.BulletedListDisplayMode = System.Web.UI.WebControls.BulletedListDisplayMode


---@class System.Web.UI.WebControls.Button : System.Web.UI.WebControls.WebControl
---@field CausesValidation boolean
---@field CommandArgument string
---@field CommandName string
---@field OnClientClick string
---@field Text string
---@field UseSubmitBehavior boolean
---@field PostBackUrl string
---@field ValidationGroup string
System.Web.UI.WebControls.Button = {}
---@alias CS.System.Web.UI.WebControls.Button System.Web.UI.WebControls.Button
CS.System.Web.UI.WebControls.Button = System.Web.UI.WebControls.Button

---@return System.Web.UI.WebControls.Button
function System.Web.UI.WebControls.Button.New() end

---@class System.Web.UI.WebControls.ButtonColumn : System.Web.UI.WebControls.DataGridColumn
---@field ButtonType System.Web.UI.WebControls.ButtonColumnType
---@field CommandName string
---@field CausesValidation boolean
---@field DataTextField string
---@field DataTextFormatString string
---@field Text string
---@field ValidationGroup string
System.Web.UI.WebControls.ButtonColumn = {}
---@alias CS.System.Web.UI.WebControls.ButtonColumn System.Web.UI.WebControls.ButtonColumn
CS.System.Web.UI.WebControls.ButtonColumn = System.Web.UI.WebControls.ButtonColumn

---@return System.Web.UI.WebControls.ButtonColumn
function System.Web.UI.WebControls.ButtonColumn.New() end
function System.Web.UI.WebControls.ButtonColumn:Initialize() end
---@param cell System.Web.UI.WebControls.TableCell
---@param columnIndex number
---@param itemType System.Web.UI.WebControls.ListItemType
function System.Web.UI.WebControls.ButtonColumn:InitializeCell(cell, columnIndex, itemType) end

---@class System.Web.UI.WebControls.ButtonField : System.Web.UI.WebControls.ButtonFieldBase
---@field CommandName string
---@field DataTextField string
---@field DataTextFormatString string
---@field ImageUrl string
---@field Text string
System.Web.UI.WebControls.ButtonField = {}
---@alias CS.System.Web.UI.WebControls.ButtonField System.Web.UI.WebControls.ButtonField
CS.System.Web.UI.WebControls.ButtonField = System.Web.UI.WebControls.ButtonField

---@return System.Web.UI.WebControls.ButtonField
function System.Web.UI.WebControls.ButtonField.New() end
---@param sortingEnabled boolean
---@param control System.Web.UI.Control
---@return boolean
function System.Web.UI.WebControls.ButtonField:Initialize(sortingEnabled, control) end
---@param cell System.Web.UI.WebControls.DataControlFieldCell
---@param cellType System.Web.UI.WebControls.DataControlCellType
---@param rowState System.Web.UI.WebControls.DataControlRowState
---@param rowIndex number
function System.Web.UI.WebControls.ButtonField:InitializeCell(cell, cellType, rowState, rowIndex) end
function System.Web.UI.WebControls.ButtonField:ValidateSupportsCallback() end

---@class System.Web.UI.WebControls.ButtonFieldBase : System.Web.UI.WebControls.DataControlField
---@field ButtonType System.Web.UI.WebControls.ButtonType
---@field CausesValidation boolean
---@field ShowHeader boolean
---@field ValidationGroup string
System.Web.UI.WebControls.ButtonFieldBase = {}
---@alias CS.System.Web.UI.WebControls.ButtonFieldBase System.Web.UI.WebControls.ButtonFieldBase
CS.System.Web.UI.WebControls.ButtonFieldBase = System.Web.UI.WebControls.ButtonFieldBase


---@class System.Web.UI.WebControls.Calendar : System.Web.UI.WebControls.WebControl
---@field Caption string
---@field CaptionAlign System.Web.UI.WebControls.TableCaptionAlign
---@field CellPadding number
---@field CellSpacing number
---@field DayHeaderStyle System.Web.UI.WebControls.TableItemStyle
---@field DayNameFormat System.Web.UI.WebControls.DayNameFormat
---@field DayStyle System.Web.UI.WebControls.TableItemStyle
---@field FirstDayOfWeek System.Web.UI.WebControls.FirstDayOfWeek
---@field NextMonthText string
---@field NextPrevFormat System.Web.UI.WebControls.NextPrevFormat
---@field NextPrevStyle System.Web.UI.WebControls.TableItemStyle
---@field OtherMonthDayStyle System.Web.UI.WebControls.TableItemStyle
---@field PrevMonthText string
---@field SelectedDate System.DateTime
---@field SelectedDates System.Web.UI.WebControls.SelectedDatesCollection
---@field SelectedDayStyle System.Web.UI.WebControls.TableItemStyle
---@field SelectionMode System.Web.UI.WebControls.CalendarSelectionMode
---@field SelectMonthText string
---@field SelectorStyle System.Web.UI.WebControls.TableItemStyle
---@field SelectWeekText string
---@field ShowDayHeader boolean
---@field ShowGridLines boolean
---@field ShowNextPrevMonth boolean
---@field ShowTitle boolean
---@field TitleFormat System.Web.UI.WebControls.TitleFormat
---@field TitleStyle System.Web.UI.WebControls.TableItemStyle
---@field TodayDayStyle System.Web.UI.WebControls.TableItemStyle
---@field TodaysDate System.DateTime
---@field UseAccessibleHeader boolean
---@field VisibleDate System.DateTime
---@field WeekendDayStyle System.Web.UI.WebControls.TableItemStyle
---@field SupportsDisabledAttribute boolean
System.Web.UI.WebControls.Calendar = {}
---@alias CS.System.Web.UI.WebControls.Calendar System.Web.UI.WebControls.Calendar
CS.System.Web.UI.WebControls.Calendar = System.Web.UI.WebControls.Calendar

---@return System.Web.UI.WebControls.Calendar
function System.Web.UI.WebControls.Calendar.New() end

---@class System.Web.UI.WebControls.CalendarDay : System.Object
---@field Date System.DateTime
---@field DayNumberText string
---@field IsOtherMonth boolean
---@field IsSelectable boolean
---@field IsSelected boolean
---@field IsToday boolean
---@field IsWeekend boolean
System.Web.UI.WebControls.CalendarDay = {}
---@alias CS.System.Web.UI.WebControls.CalendarDay System.Web.UI.WebControls.CalendarDay
CS.System.Web.UI.WebControls.CalendarDay = System.Web.UI.WebControls.CalendarDay

---@param date System.DateTime
---@param isWeekend boolean
---@param isToday boolean
---@param isSelected boolean
---@param isOtherMonth boolean
---@param dayNumberText string
---@return System.Web.UI.WebControls.CalendarDay
function System.Web.UI.WebControls.CalendarDay.New(date, isWeekend, isToday, isSelected, isOtherMonth, dayNumberText) end

---@class System.Web.UI.WebControls.ChangePassword : System.Web.UI.WebControls.CompositeControl
---@field CancelButtonCommandName string
---@field ChangePasswordButtonCommandName string
---@field ContinueButtonCommandName string
---@field BorderPadding number
---@field CancelButtonImageUrl string
---@field CancelButtonStyle System.Web.UI.WebControls.Style
---@field CancelButtonText string
---@field CancelButtonType System.Web.UI.WebControls.ButtonType
---@field CancelDestinationPageUrl string
---@field ChangePasswordButtonImageUrl string
---@field ChangePasswordButtonStyle System.Web.UI.WebControls.Style
---@field ChangePasswordButtonText string
---@field ChangePasswordButtonType System.Web.UI.WebControls.ButtonType
---@field ChangePasswordFailureText string
---@field ChangePasswordTemplate System.Web.UI.ITemplate
---@field ChangePasswordTemplateContainer System.Web.UI.Control
---@field ChangePasswordTitleText string
---@field ConfirmNewPassword string
---@field ConfirmNewPasswordLabelText string
---@field ConfirmPasswordCompareErrorMessage string
---@field ConfirmPasswordRequiredErrorMessage string
---@field ContinueButtonImageUrl string
---@field ContinueButtonStyle System.Web.UI.WebControls.Style
---@field ContinueButtonText string
---@field ContinueButtonType System.Web.UI.WebControls.ButtonType
---@field ContinueDestinationPageUrl string
---@field CreateUserIconUrl string
---@field CreateUserText string
---@field CreateUserUrl string
---@field CurrentPassword string
---@field DisplayUserName boolean
---@field EditProfileIconUrl string
---@field EditProfileText string
---@field EditProfileUrl string
---@field FailureTextStyle System.Web.UI.WebControls.TableItemStyle
---@field HelpPageIconUrl string
---@field HelpPageText string
---@field HelpPageUrl string
---@field HyperLinkStyle System.Web.UI.WebControls.TableItemStyle
---@field InstructionText string
---@field InstructionTextStyle System.Web.UI.WebControls.TableItemStyle
---@field LabelStyle System.Web.UI.WebControls.TableItemStyle
---@field MailDefinition System.Web.UI.WebControls.MailDefinition
---@field MembershipProvider string
---@field NewPassword string
---@field NewPasswordLabelText string
---@field NewPasswordRegularExpression string
---@field NewPasswordRegularExpressionErrorMessage string
---@field NewPasswordRequiredErrorMessage string
---@field PasswordHintStyle System.Web.UI.WebControls.TableItemStyle
---@field PasswordHintText string
---@field PasswordLabelText string
---@field PasswordRecoveryIconUrl string
---@field PasswordRecoveryText string
---@field PasswordRecoveryUrl string
---@field PasswordRequiredErrorMessage string
---@field RenderOuterTable boolean
---@field SuccessPageUrl string
---@field SuccessTemplate System.Web.UI.ITemplate
---@field SuccessTemplateContainer System.Web.UI.Control
---@field SuccessText string
---@field SuccessTextStyle System.Web.UI.WebControls.TableItemStyle
---@field SuccessTitleText string
---@field TextBoxStyle System.Web.UI.WebControls.Style
---@field TitleTextStyle System.Web.UI.WebControls.TableItemStyle
---@field UserName string
---@field UserNameLabelText string
---@field UserNameRequiredErrorMessage string
---@field ValidatorTextStyle System.Web.UI.WebControls.Style
System.Web.UI.WebControls.ChangePassword = {}
---@alias CS.System.Web.UI.WebControls.ChangePassword System.Web.UI.WebControls.ChangePassword
CS.System.Web.UI.WebControls.ChangePassword = System.Web.UI.WebControls.ChangePassword

---@return System.Web.UI.WebControls.ChangePassword
function System.Web.UI.WebControls.ChangePassword.New() end

---@class System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer : System.Web.UI.Control
System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer = {}
---@alias CS.System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer
CS.System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer = System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer

---@param owner System.Web.UI.WebControls.ChangePassword
---@return System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer
function System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer.New(owner) end
---@param template System.Web.UI.ITemplate
function System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer:InstantiateTemplate(template) end

---@class System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer : System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer
---@field UserNameTextBox System.Web.UI.IEditableTextControl
---@field CurrentPasswordTextBox System.Web.UI.IEditableTextControl
---@field NewPasswordTextBox System.Web.UI.IEditableTextControl
---@field ConfirmNewPasswordTextBox System.Web.UI.IEditableTextControl
---@field CancelButton System.Web.UI.Control
---@field ChangePasswordButton System.Web.UI.Control
---@field FailureTextLiteral System.Web.UI.ITextControl
System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer = {}
---@alias CS.System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer
CS.System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer = System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer

---@param owner System.Web.UI.WebControls.ChangePassword
---@return System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer
function System.Web.UI.WebControls.ChangePassword.ChangePasswordContainer.New(owner) end

---@class System.Web.UI.WebControls.ChangePassword.ChangePasswordDeafultTemplate : System.Object
System.Web.UI.WebControls.ChangePassword.ChangePasswordDeafultTemplate = {}
---@alias CS.System.Web.UI.WebControls.ChangePassword.ChangePasswordDeafultTemplate System.Web.UI.WebControls.ChangePassword.ChangePasswordDeafultTemplate
CS.System.Web.UI.WebControls.ChangePassword.ChangePasswordDeafultTemplate = System.Web.UI.WebControls.ChangePassword.ChangePasswordDeafultTemplate

---@param container System.Web.UI.Control
function System.Web.UI.WebControls.ChangePassword.ChangePasswordDeafultTemplate:InstantiateIn(container) end

---@class System.Web.UI.WebControls.ChangePassword.SuccessDefaultTemplate : System.Object
System.Web.UI.WebControls.ChangePassword.SuccessDefaultTemplate = {}
---@alias CS.System.Web.UI.WebControls.ChangePassword.SuccessDefaultTemplate System.Web.UI.WebControls.ChangePassword.SuccessDefaultTemplate
CS.System.Web.UI.WebControls.ChangePassword.SuccessDefaultTemplate = System.Web.UI.WebControls.ChangePassword.SuccessDefaultTemplate

---@param container System.Web.UI.Control
function System.Web.UI.WebControls.ChangePassword.SuccessDefaultTemplate:InstantiateIn(container) end

---@class System.Web.UI.WebControls.ChangePassword.SuccessContainer : System.Web.UI.WebControls.ChangePassword.BaseChangePasswordContainer
---@field ChangePasswordButton System.Web.UI.Control
System.Web.UI.WebControls.ChangePassword.SuccessContainer = {}
---@alias CS.System.Web.UI.WebControls.ChangePassword.SuccessContainer System.Web.UI.WebControls.ChangePassword.SuccessContainer
CS.System.Web.UI.WebControls.ChangePassword.SuccessContainer = System.Web.UI.WebControls.ChangePassword.SuccessContainer

---@param owner System.Web.UI.WebControls.ChangePassword
---@return System.Web.UI.WebControls.ChangePassword.SuccessContainer
function System.Web.UI.WebControls.ChangePassword.SuccessContainer.New(owner) end

---@class System.Web.UI.WebControls.CheckBox : System.Web.UI.WebControls.WebControl
---@field AutoPostBack boolean
---@field CausesValidation boolean
---@field Checked boolean
---@field InputAttributes System.Web.UI.AttributeCollection
---@field LabelAttributes System.Web.UI.AttributeCollection
---@field Text string
---@field TextAlign System.Web.UI.WebControls.TextAlign
---@field ValidationGroup string
System.Web.UI.WebControls.CheckBox = {}
---@alias CS.System.Web.UI.WebControls.CheckBox System.Web.UI.WebControls.CheckBox
CS.System.Web.UI.WebControls.CheckBox = System.Web.UI.WebControls.CheckBox

---@return System.Web.UI.WebControls.CheckBox
function System.Web.UI.WebControls.CheckBox.New() end

---@class System.Web.UI.WebControls.CheckBoxField : System.Web.UI.WebControls.BoundField
---@field ApplyFormatInEditMode boolean
---@field ConvertEmptyStringToNull boolean
---@field DataField string
---@field DataFormatString string
---@field HtmlEncode boolean
---@field HtmlEncodeFormatString boolean
---@field NullDisplayText string
---@field Text string
System.Web.UI.WebControls.CheckBoxField = {}
---@alias CS.System.Web.UI.WebControls.CheckBoxField System.Web.UI.WebControls.CheckBoxField
CS.System.Web.UI.WebControls.CheckBoxField = System.Web.UI.WebControls.CheckBoxField

---@return System.Web.UI.WebControls.CheckBoxField
function System.Web.UI.WebControls.CheckBoxField.New() end
---@param dictionary System.Collections.Specialized.IOrderedDictionary
---@param cell System.Web.UI.WebControls.DataControlFieldCell
---@param rowState System.Web.UI.WebControls.DataControlRowState
---@param includeReadOnly boolean
function System.Web.UI.WebControls.CheckBoxField:ExtractValuesFromCell(dictionary, cell, rowState, includeReadOnly) end
function System.Web.UI.WebControls.CheckBoxField:ValidateSupportsCallback() end

---@class System.Web.UI.WebControls.CheckBoxList : System.Web.UI.WebControls.ListControl
---@field CellPadding number
---@field CellSpacing number
---@field RepeatColumns number
---@field RepeatDirection System.Web.UI.WebControls.RepeatDirection
---@field RepeatLayout System.Web.UI.WebControls.RepeatLayout
---@field TextAlign System.Web.UI.WebControls.TextAlign
---@field RenderWhenDataEmpty boolean
System.Web.UI.WebControls.CheckBoxList = {}
---@alias CS.System.Web.UI.WebControls.CheckBoxList System.Web.UI.WebControls.CheckBoxList
CS.System.Web.UI.WebControls.CheckBoxList = System.Web.UI.WebControls.CheckBoxList

---@return System.Web.UI.WebControls.CheckBoxList
function System.Web.UI.WebControls.CheckBoxList.New() end

---@class System.Web.UI.WebControls.ChildTable : System.Web.UI.WebControls.Table
System.Web.UI.WebControls.ChildTable = {}
---@alias CS.System.Web.UI.WebControls.ChildTable System.Web.UI.WebControls.ChildTable
CS.System.Web.UI.WebControls.ChildTable = System.Web.UI.WebControls.ChildTable

---@param parent System.Web.UI.Control
---@return System.Web.UI.WebControls.ChildTable
function System.Web.UI.WebControls.ChildTable.New(parent) end

---@class System.Web.UI.WebControls.CircleHotSpot : System.Web.UI.WebControls.HotSpot
---@field Radius number
---@field X number
---@field Y number
System.Web.UI.WebControls.CircleHotSpot = {}
---@alias CS.System.Web.UI.WebControls.CircleHotSpot System.Web.UI.WebControls.CircleHotSpot
CS.System.Web.UI.WebControls.CircleHotSpot = System.Web.UI.WebControls.CircleHotSpot

---@return System.Web.UI.WebControls.CircleHotSpot
function System.Web.UI.WebControls.CircleHotSpot.New() end
---@return string
function System.Web.UI.WebControls.CircleHotSpot:GetCoordinates() end

---@class System.Web.UI.WebControls.CollectionDataSource : System.Object
System.Web.UI.WebControls.CollectionDataSource = {}
---@alias CS.System.Web.UI.WebControls.CollectionDataSource System.Web.UI.WebControls.CollectionDataSource
CS.System.Web.UI.WebControls.CollectionDataSource = System.Web.UI.WebControls.CollectionDataSource

---@param collection System.Collections.IEnumerable
---@return System.Web.UI.WebControls.CollectionDataSource
function System.Web.UI.WebControls.CollectionDataSource.New(collection) end
---@param viewName string
---@return System.Web.UI.DataSourceView
function System.Web.UI.WebControls.CollectionDataSource:GetView(viewName) end
---@return System.Collections.ICollection
function System.Web.UI.WebControls.CollectionDataSource:GetViewNames() end

---@class System.Web.UI.WebControls.CollectionDataSourceView : System.Web.UI.DataSourceView
System.Web.UI.WebControls.CollectionDataSourceView = {}
---@alias CS.System.Web.UI.WebControls.CollectionDataSourceView System.Web.UI.WebControls.CollectionDataSourceView
CS.System.Web.UI.WebControls.CollectionDataSourceView = System.Web.UI.WebControls.CollectionDataSourceView

---@param owner System.Web.UI.IDataSource
---@param viewName string
---@param collection System.Collections.IEnumerable
---@return System.Web.UI.WebControls.CollectionDataSourceView
function System.Web.UI.WebControls.CollectionDataSourceView.New(owner, viewName, collection) end
