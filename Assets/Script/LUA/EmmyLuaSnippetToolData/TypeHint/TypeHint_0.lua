---@meta

---@meta CSharp

---@class NotExportType @表明该类型未导出

---@class NotExportEnum @表明该枚举未导出

---@class CS
CS = {}

---@param obj any
---@return System.Type
function typeof(obj) end

---@class UnityEngine
UnityEngine = {}
---@alias CS.UnityEngine UnityEngine
CS.UnityEngine = {}

---@class DG
DG = {}
---@alias CS.DG DG
CS.DG = {}

---@class AssemblyRef : System.Object
---@field EcmaPublicKey string
---@field FrameworkPublicKeyFull string
---@field FrameworkPublicKeyFull2 string
---@field MicrosoftPublicKey string
---@field MicrosoftJScript string
---@field MicrosoftVSDesigner string
---@field SystemData string
---@field SystemDesign string
---@field SystemDrawing string
---@field SystemWeb string
---@field SystemWebExtensions string
---@field SystemWindowsForms string
AssemblyRef = {}
---@alias CS.AssemblyRef AssemblyRef
CS.AssemblyRef = AssemblyRef


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

---@class UnityEngine.D3DHDRDisplayBitDepth
UnityEngine.D3DHDRDisplayBitDepth = {}
---@alias CS.UnityEngine.D3DHDRDisplayBitDepth UnityEngine.D3DHDRDisplayBitDepth
CS.UnityEngine.D3DHDRDisplayBitDepth = UnityEngine.D3DHDRDisplayBitDepth


---@class UnityEngine.BlendWeights
UnityEngine.BlendWeights = {}
---@alias CS.UnityEngine.BlendWeights UnityEngine.BlendWeights
CS.UnityEngine.BlendWeights = UnityEngine.BlendWeights


---@class UnityEngine.LightmappingMode
UnityEngine.LightmappingMode = {}
---@alias CS.UnityEngine.LightmappingMode UnityEngine.LightmappingMode
CS.UnityEngine.LightmappingMode = UnityEngine.LightmappingMode


---@class UnityEngine.iPhoneScreenOrientation
UnityEngine.iPhoneScreenOrientation = {}
---@alias CS.UnityEngine.iPhoneScreenOrientation UnityEngine.iPhoneScreenOrientation
CS.UnityEngine.iPhoneScreenOrientation = UnityEngine.iPhoneScreenOrientation


---@class UnityEngine.iPhoneNetworkReachability
UnityEngine.iPhoneNetworkReachability = {}
---@alias CS.UnityEngine.iPhoneNetworkReachability UnityEngine.iPhoneNetworkReachability
CS.UnityEngine.iPhoneNetworkReachability = UnityEngine.iPhoneNetworkReachability


---@class UnityEngine.iPhoneGeneration
UnityEngine.iPhoneGeneration = {}
---@alias CS.UnityEngine.iPhoneGeneration UnityEngine.iPhoneGeneration
CS.UnityEngine.iPhoneGeneration = UnityEngine.iPhoneGeneration


---@class UnityEngine.iPhoneTouchPhase
UnityEngine.iPhoneTouchPhase = {}
---@alias CS.UnityEngine.iPhoneTouchPhase UnityEngine.iPhoneTouchPhase
CS.UnityEngine.iPhoneTouchPhase = UnityEngine.iPhoneTouchPhase


---@class UnityEngine.iPhoneTouch : System.Object
UnityEngine.iPhoneTouch = {}
---@alias CS.UnityEngine.iPhoneTouch UnityEngine.iPhoneTouch
CS.UnityEngine.iPhoneTouch = UnityEngine.iPhoneTouch

---@return UnityEngine.iPhoneTouch
function UnityEngine.iPhoneTouch.New() end

---@class UnityEngine.iPhoneMovieControlMode
UnityEngine.iPhoneMovieControlMode = {}
---@alias CS.UnityEngine.iPhoneMovieControlMode UnityEngine.iPhoneMovieControlMode
CS.UnityEngine.iPhoneMovieControlMode = UnityEngine.iPhoneMovieControlMode


---@class UnityEngine.iPhoneMovieScalingMode
UnityEngine.iPhoneMovieScalingMode = {}
---@alias CS.UnityEngine.iPhoneMovieScalingMode UnityEngine.iPhoneMovieScalingMode
CS.UnityEngine.iPhoneMovieScalingMode = UnityEngine.iPhoneMovieScalingMode


---@class UnityEngine.iPhoneKeyboardType
UnityEngine.iPhoneKeyboardType = {}
---@alias CS.UnityEngine.iPhoneKeyboardType UnityEngine.iPhoneKeyboardType
CS.UnityEngine.iPhoneKeyboardType = UnityEngine.iPhoneKeyboardType


---@class UnityEngine.iPhoneKeyboard : System.Object
UnityEngine.iPhoneKeyboard = {}
---@alias CS.UnityEngine.iPhoneKeyboard UnityEngine.iPhoneKeyboard
CS.UnityEngine.iPhoneKeyboard = UnityEngine.iPhoneKeyboard

---@return UnityEngine.iPhoneKeyboard
function UnityEngine.iPhoneKeyboard.New() end

---@class UnityEngine.iPhoneAccelerationEvent : System.Object
UnityEngine.iPhoneAccelerationEvent = {}
---@alias CS.UnityEngine.iPhoneAccelerationEvent UnityEngine.iPhoneAccelerationEvent
CS.UnityEngine.iPhoneAccelerationEvent = UnityEngine.iPhoneAccelerationEvent

---@return UnityEngine.iPhoneAccelerationEvent
function UnityEngine.iPhoneAccelerationEvent.New() end

---@class UnityEngine.iPhoneOrientation
UnityEngine.iPhoneOrientation = {}
---@alias CS.UnityEngine.iPhoneOrientation UnityEngine.iPhoneOrientation
CS.UnityEngine.iPhoneOrientation = UnityEngine.iPhoneOrientation


---@class UnityEngine.iPhoneInput : System.Object
UnityEngine.iPhoneInput = {}
---@alias CS.UnityEngine.iPhoneInput UnityEngine.iPhoneInput
CS.UnityEngine.iPhoneInput = UnityEngine.iPhoneInput

---@return UnityEngine.iPhoneInput
function UnityEngine.iPhoneInput.New() end

---@class UnityEngine.iPhone : System.Object
UnityEngine.iPhone = {}
---@alias CS.UnityEngine.iPhone UnityEngine.iPhone
CS.UnityEngine.iPhone = UnityEngine.iPhone

---@return UnityEngine.iPhone
function UnityEngine.iPhone.New() end

---@class UnityEngine.iOSActivityIndicatorStyle
UnityEngine.iOSActivityIndicatorStyle = {}
---@alias CS.UnityEngine.iOSActivityIndicatorStyle UnityEngine.iOSActivityIndicatorStyle
CS.UnityEngine.iOSActivityIndicatorStyle = UnityEngine.iOSActivityIndicatorStyle


---@class UnityEngine.ADBannerView : System.Object
UnityEngine.ADBannerView = {}
---@alias CS.UnityEngine.ADBannerView UnityEngine.ADBannerView
CS.UnityEngine.ADBannerView = UnityEngine.ADBannerView

---@return UnityEngine.ADBannerView
function UnityEngine.ADBannerView.New() end

---@class UnityEngine.ADInterstitialAd : System.Object
UnityEngine.ADInterstitialAd = {}
---@alias CS.UnityEngine.ADInterstitialAd UnityEngine.ADInterstitialAd
CS.UnityEngine.ADInterstitialAd = UnityEngine.ADInterstitialAd

---@return UnityEngine.ADInterstitialAd
function UnityEngine.ADInterstitialAd.New() end

---@class UnityEngine.RPCMode
UnityEngine.RPCMode = {}
---@alias CS.UnityEngine.RPCMode UnityEngine.RPCMode
CS.UnityEngine.RPCMode = UnityEngine.RPCMode


---@class UnityEngine.ConnectionTesterStatus
UnityEngine.ConnectionTesterStatus = {}
---@alias CS.UnityEngine.ConnectionTesterStatus UnityEngine.ConnectionTesterStatus
CS.UnityEngine.ConnectionTesterStatus = UnityEngine.ConnectionTesterStatus


---@class UnityEngine.NetworkConnectionError
UnityEngine.NetworkConnectionError = {}
---@alias CS.UnityEngine.NetworkConnectionError UnityEngine.NetworkConnectionError
CS.UnityEngine.NetworkConnectionError = UnityEngine.NetworkConnectionError


---@class UnityEngine.NetworkDisconnection
UnityEngine.NetworkDisconnection = {}
---@alias CS.UnityEngine.NetworkDisconnection UnityEngine.NetworkDisconnection
CS.UnityEngine.NetworkDisconnection = UnityEngine.NetworkDisconnection


---@class UnityEngine.MasterServerEvent
UnityEngine.MasterServerEvent = {}
---@alias CS.UnityEngine.MasterServerEvent UnityEngine.MasterServerEvent
CS.UnityEngine.MasterServerEvent = UnityEngine.MasterServerEvent


---@class UnityEngine.NetworkStateSynchronization
UnityEngine.NetworkStateSynchronization = {}
---@alias CS.UnityEngine.NetworkStateSynchronization UnityEngine.NetworkStateSynchronization
CS.UnityEngine.NetworkStateSynchronization = UnityEngine.NetworkStateSynchronization


---@class UnityEngine.NetworkPeerType
UnityEngine.NetworkPeerType = {}
---@alias CS.UnityEngine.NetworkPeerType UnityEngine.NetworkPeerType
CS.UnityEngine.NetworkPeerType = UnityEngine.NetworkPeerType


---@class UnityEngine.NetworkLogLevel
UnityEngine.NetworkLogLevel = {}
---@alias CS.UnityEngine.NetworkLogLevel UnityEngine.NetworkLogLevel
CS.UnityEngine.NetworkLogLevel = UnityEngine.NetworkLogLevel


---@class UnityEngine.NetworkPlayer : System.Object
UnityEngine.NetworkPlayer = {}
---@alias CS.UnityEngine.NetworkPlayer UnityEngine.NetworkPlayer
CS.UnityEngine.NetworkPlayer = UnityEngine.NetworkPlayer

---@return UnityEngine.NetworkPlayer
function UnityEngine.NetworkPlayer.New() end

---@class UnityEngine.NetworkViewID : System.Object
UnityEngine.NetworkViewID = {}
---@alias CS.UnityEngine.NetworkViewID UnityEngine.NetworkViewID
CS.UnityEngine.NetworkViewID = UnityEngine.NetworkViewID

---@return UnityEngine.NetworkViewID
function UnityEngine.NetworkViewID.New() end

---@class UnityEngine.NetworkView : System.Object
UnityEngine.NetworkView = {}
---@alias CS.UnityEngine.NetworkView UnityEngine.NetworkView
CS.UnityEngine.NetworkView = UnityEngine.NetworkView

---@return UnityEngine.NetworkView
function UnityEngine.NetworkView.New() end

---@class UnityEngine.Network : System.Object
UnityEngine.Network = {}
---@alias CS.UnityEngine.Network UnityEngine.Network
CS.UnityEngine.Network = UnityEngine.Network

---@return UnityEngine.Network
function UnityEngine.Network.New() end

---@class UnityEngine.BitStream : System.Object
UnityEngine.BitStream = {}
---@alias CS.UnityEngine.BitStream UnityEngine.BitStream
CS.UnityEngine.BitStream = UnityEngine.BitStream

---@return UnityEngine.BitStream
function UnityEngine.BitStream.New() end

---@class UnityEngine.RPC : System.Object
UnityEngine.RPC = {}
---@alias CS.UnityEngine.RPC UnityEngine.RPC
CS.UnityEngine.RPC = UnityEngine.RPC

---@return UnityEngine.RPC
function UnityEngine.RPC.New() end

---@class UnityEngine.HostData : System.Object
UnityEngine.HostData = {}
---@alias CS.UnityEngine.HostData UnityEngine.HostData
CS.UnityEngine.HostData = UnityEngine.HostData

---@return UnityEngine.HostData
function UnityEngine.HostData.New() end

---@class UnityEngine.MasterServer : System.Object
UnityEngine.MasterServer = {}
---@alias CS.UnityEngine.MasterServer UnityEngine.MasterServer
CS.UnityEngine.MasterServer = UnityEngine.MasterServer

---@return UnityEngine.MasterServer
function UnityEngine.MasterServer.New() end

---@class UnityEngine.NetworkMessageInfo : System.Object
UnityEngine.NetworkMessageInfo = {}
---@alias CS.UnityEngine.NetworkMessageInfo UnityEngine.NetworkMessageInfo
CS.UnityEngine.NetworkMessageInfo = UnityEngine.NetworkMessageInfo

---@return UnityEngine.NetworkMessageInfo
function UnityEngine.NetworkMessageInfo.New() end

---@class UnityEngine.AnimationInfo : System.Object
UnityEngine.AnimationInfo = {}
---@alias CS.UnityEngine.AnimationInfo UnityEngine.AnimationInfo
CS.UnityEngine.AnimationInfo = UnityEngine.AnimationInfo

---@return UnityEngine.AnimationInfo
function UnityEngine.AnimationInfo.New() end

---@class UnityEngine.MovieTexture : System.Object
UnityEngine.MovieTexture = {}
---@alias CS.UnityEngine.MovieTexture UnityEngine.MovieTexture
CS.UnityEngine.MovieTexture = UnityEngine.MovieTexture

---@return UnityEngine.MovieTexture
function UnityEngine.MovieTexture.New() end

---@class UnityEngine.GUIText : System.Object
UnityEngine.GUIText = {}
---@alias CS.UnityEngine.GUIText UnityEngine.GUIText
CS.UnityEngine.GUIText = UnityEngine.GUIText

---@return UnityEngine.GUIText
function UnityEngine.GUIText.New() end

---@class UnityEngine.GUIElement : System.Object
UnityEngine.GUIElement = {}
---@alias CS.UnityEngine.GUIElement UnityEngine.GUIElement
CS.UnityEngine.GUIElement = UnityEngine.GUIElement

---@return UnityEngine.GUIElement
function UnityEngine.GUIElement.New() end

---@class UnityEngine.GUILayer : System.Object
UnityEngine.GUILayer = {}
---@alias CS.UnityEngine.GUILayer UnityEngine.GUILayer
CS.UnityEngine.GUILayer = UnityEngine.GUILayer

---@return UnityEngine.GUILayer
function UnityEngine.GUILayer.New() end

---@class UnityEngine.GUITexture : System.Object
UnityEngine.GUITexture = {}
---@alias CS.UnityEngine.GUITexture UnityEngine.GUITexture
CS.UnityEngine.GUITexture = UnityEngine.GUITexture

---@return UnityEngine.GUITexture
function UnityEngine.GUITexture.New() end

---@class UnityEngine.ProceduralMaterial : System.Object
UnityEngine.ProceduralMaterial = {}
---@alias CS.UnityEngine.ProceduralMaterial UnityEngine.ProceduralMaterial
CS.UnityEngine.ProceduralMaterial = UnityEngine.ProceduralMaterial

---@return UnityEngine.ProceduralMaterial
function UnityEngine.ProceduralMaterial.New() end

---@class UnityEngine.ProceduralProcessorUsage
UnityEngine.ProceduralProcessorUsage = {}
---@alias CS.UnityEngine.ProceduralProcessorUsage UnityEngine.ProceduralProcessorUsage
CS.UnityEngine.ProceduralProcessorUsage = UnityEngine.ProceduralProcessorUsage


---@class UnityEngine.ProceduralCacheSize
UnityEngine.ProceduralCacheSize = {}
---@alias CS.UnityEngine.ProceduralCacheSize UnityEngine.ProceduralCacheSize
CS.UnityEngine.ProceduralCacheSize = UnityEngine.ProceduralCacheSize


---@class UnityEngine.ProceduralLoadingBehavior
UnityEngine.ProceduralLoadingBehavior = {}
---@alias CS.UnityEngine.ProceduralLoadingBehavior UnityEngine.ProceduralLoadingBehavior
CS.UnityEngine.ProceduralLoadingBehavior = UnityEngine.ProceduralLoadingBehavior


---@class UnityEngine.ProceduralPropertyType
UnityEngine.ProceduralPropertyType = {}
---@alias CS.UnityEngine.ProceduralPropertyType UnityEngine.ProceduralPropertyType
CS.UnityEngine.ProceduralPropertyType = UnityEngine.ProceduralPropertyType


---@class UnityEngine.ProceduralOutputType
UnityEngine.ProceduralOutputType = {}
---@alias CS.UnityEngine.ProceduralOutputType UnityEngine.ProceduralOutputType
CS.UnityEngine.ProceduralOutputType = UnityEngine.ProceduralOutputType


---@class UnityEngine.ProceduralPropertyDescription : System.Object
UnityEngine.ProceduralPropertyDescription = {}
---@alias CS.UnityEngine.ProceduralPropertyDescription UnityEngine.ProceduralPropertyDescription
CS.UnityEngine.ProceduralPropertyDescription = UnityEngine.ProceduralPropertyDescription

---@return UnityEngine.ProceduralPropertyDescription
function UnityEngine.ProceduralPropertyDescription.New() end

---@class UnityEngine.ProceduralTexture : System.Object
UnityEngine.ProceduralTexture = {}
---@alias CS.UnityEngine.ProceduralTexture UnityEngine.ProceduralTexture
CS.UnityEngine.ProceduralTexture = UnityEngine.ProceduralTexture

---@return UnityEngine.ProceduralTexture
function UnityEngine.ProceduralTexture.New() end

---@class UnityEngine.Networking.DownloadHandlerMovieTexture : System.Object
UnityEngine.Networking.DownloadHandlerMovieTexture = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerMovieTexture UnityEngine.Networking.DownloadHandlerMovieTexture
CS.UnityEngine.Networking.DownloadHandlerMovieTexture = UnityEngine.Networking.DownloadHandlerMovieTexture

---@return UnityEngine.Networking.DownloadHandlerMovieTexture
function UnityEngine.Networking.DownloadHandlerMovieTexture.New() end

---@class UnityEngine.UIElements.IDataWatchHandle : System.ValueType
UnityEngine.UIElements.IDataWatchHandle = {}
---@alias CS.UnityEngine.UIElements.IDataWatchHandle UnityEngine.UIElements.IDataWatchHandle
CS.UnityEngine.UIElements.IDataWatchHandle = UnityEngine.UIElements.IDataWatchHandle


---@class UnityEngine.UIElements.IDataWatchService : System.ValueType
UnityEngine.UIElements.IDataWatchService = {}
---@alias CS.UnityEngine.UIElements.IDataWatchService UnityEngine.UIElements.IDataWatchService
CS.UnityEngine.UIElements.IDataWatchService = UnityEngine.UIElements.IDataWatchService


---@class UnityEngine.Apple.TV.Remote : System.Object
UnityEngine.Apple.TV.Remote = {}
---@alias CS.UnityEngine.Apple.TV.Remote UnityEngine.Apple.TV.Remote
CS.UnityEngine.Apple.TV.Remote = UnityEngine.Apple.TV.Remote

---@return UnityEngine.Apple.TV.Remote
function UnityEngine.Apple.TV.Remote.New() end

---@class UnityEngine.iOS.ADBannerView : System.Object
UnityEngine.iOS.ADBannerView = {}
---@alias CS.UnityEngine.iOS.ADBannerView UnityEngine.iOS.ADBannerView
CS.UnityEngine.iOS.ADBannerView = UnityEngine.iOS.ADBannerView

---@return UnityEngine.iOS.ADBannerView
function UnityEngine.iOS.ADBannerView.New() end

---@class UnityEngine.iOS.ADInterstitialAd : System.Object
UnityEngine.iOS.ADInterstitialAd = {}
---@alias CS.UnityEngine.iOS.ADInterstitialAd UnityEngine.iOS.ADInterstitialAd
CS.UnityEngine.iOS.ADInterstitialAd = UnityEngine.iOS.ADInterstitialAd

---@return UnityEngine.iOS.ADInterstitialAd
function UnityEngine.iOS.ADInterstitialAd.New() end

---@class UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute : System.Object
UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute = {}
---@alias CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute
CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute = UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute

---@return UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute
function UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute.New() end

---@class UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute : System.Object
UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute = {}
---@alias CS.UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute
CS.UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute = UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute

---@return UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute
function UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute.New() end

---@class UnityEngine.Profiling.Memory.Experimental.MetaData : System.Object
UnityEngine.Profiling.Memory.Experimental.MetaData = {}
---@alias CS.UnityEngine.Profiling.Memory.Experimental.MetaData UnityEngine.Profiling.Memory.Experimental.MetaData
CS.UnityEngine.Profiling.Memory.Experimental.MetaData = UnityEngine.Profiling.Memory.Experimental.MetaData

---@return UnityEngine.Profiling.Memory.Experimental.MetaData
function UnityEngine.Profiling.Memory.Experimental.MetaData.New() end

---@class UnityEngine.Profiling.Memory.Experimental.CaptureFlags
UnityEngine.Profiling.Memory.Experimental.CaptureFlags = {}
---@alias CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags UnityEngine.Profiling.Memory.Experimental.CaptureFlags
CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags = UnityEngine.Profiling.Memory.Experimental.CaptureFlags


---@class UnityEngine.Profiling.Memory.Experimental.MemoryProfiler : System.Object
UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = {}
---@alias CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler UnityEngine.Profiling.Memory.Experimental.MemoryProfiler
CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = UnityEngine.Profiling.Memory.Experimental.MemoryProfiler

---@return UnityEngine.Profiling.Memory.Experimental.MemoryProfiler
function UnityEngine.Profiling.Memory.Experimental.MemoryProfiler.New() end

---@class UnityEngine.Profiling.Experimental.DebugScreenCapture : System.Object
UnityEngine.Profiling.Experimental.DebugScreenCapture = {}
---@alias CS.UnityEngine.Profiling.Experimental.DebugScreenCapture UnityEngine.Profiling.Experimental.DebugScreenCapture
CS.UnityEngine.Profiling.Experimental.DebugScreenCapture = UnityEngine.Profiling.Experimental.DebugScreenCapture

---@return UnityEngine.Profiling.Experimental.DebugScreenCapture
function UnityEngine.Profiling.Experimental.DebugScreenCapture.New() end

---@class UnityEngine.Experimental.AI.PolygonId : System.ValueType
UnityEngine.Experimental.AI.PolygonId = {}
---@alias CS.UnityEngine.Experimental.AI.PolygonId UnityEngine.Experimental.AI.PolygonId
CS.UnityEngine.Experimental.AI.PolygonId = UnityEngine.Experimental.AI.PolygonId

---@return boolean
function UnityEngine.Experimental.AI.PolygonId:IsNull() end
---@return number
function UnityEngine.Experimental.AI.PolygonId:GetHashCode() end
---@overload fun(self: UnityEngine.Experimental.AI.PolygonId, rhs: UnityEngine.Experimental.AI.PolygonId) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Experimental.AI.PolygonId:Equals(obj) end

---@class UnityEngine.Experimental.AI.NavMeshLocation : System.ValueType
---@field polygon UnityEngine.Experimental.AI.PolygonId
---@field position UnityEngine.Vector3
UnityEngine.Experimental.AI.NavMeshLocation = {}
---@alias CS.UnityEngine.Experimental.AI.NavMeshLocation UnityEngine.Experimental.AI.NavMeshLocation
CS.UnityEngine.Experimental.AI.NavMeshLocation = UnityEngine.Experimental.AI.NavMeshLocation


---@class UnityEngine.Experimental.AI.PathQueryStatus
---@field Failure UnityEngine.Experimental.AI.PathQueryStatus
---@field Success UnityEngine.Experimental.AI.PathQueryStatus
---@field InProgress UnityEngine.Experimental.AI.PathQueryStatus
---@field StatusDetailMask UnityEngine.Experimental.AI.PathQueryStatus
---@field WrongMagic UnityEngine.Experimental.AI.PathQueryStatus
---@field WrongVersion UnityEngine.Experimental.AI.PathQueryStatus
---@field OutOfMemory UnityEngine.Experimental.AI.PathQueryStatus
---@field InvalidParam UnityEngine.Experimental.AI.PathQueryStatus
---@field BufferTooSmall UnityEngine.Experimental.AI.PathQueryStatus
---@field OutOfNodes UnityEngine.Experimental.AI.PathQueryStatus
---@field PartialResult UnityEngine.Experimental.AI.PathQueryStatus
UnityEngine.Experimental.AI.PathQueryStatus = {}
---@alias CS.UnityEngine.Experimental.AI.PathQueryStatus UnityEngine.Experimental.AI.PathQueryStatus
CS.UnityEngine.Experimental.AI.PathQueryStatus = UnityEngine.Experimental.AI.PathQueryStatus


---@class UnityEngine.Experimental.AI.NavMeshPolyTypes
---@field Ground UnityEngine.Experimental.AI.NavMeshPolyTypes
---@field OffMeshConnection UnityEngine.Experimental.AI.NavMeshPolyTypes
UnityEngine.Experimental.AI.NavMeshPolyTypes = {}
---@alias CS.UnityEngine.Experimental.AI.NavMeshPolyTypes UnityEngine.Experimental.AI.NavMeshPolyTypes
CS.UnityEngine.Experimental.AI.NavMeshPolyTypes = UnityEngine.Experimental.AI.NavMeshPolyTypes


---@class UnityEngine.Experimental.AI.NavMeshWorld : System.ValueType
UnityEngine.Experimental.AI.NavMeshWorld = {}
---@alias CS.UnityEngine.Experimental.AI.NavMeshWorld UnityEngine.Experimental.AI.NavMeshWorld
CS.UnityEngine.Experimental.AI.NavMeshWorld = UnityEngine.Experimental.AI.NavMeshWorld

---@return UnityEngine.Experimental.AI.NavMeshWorld
function UnityEngine.Experimental.AI.NavMeshWorld.GetDefaultWorld() end
---@return boolean
function UnityEngine.Experimental.AI.NavMeshWorld:IsValid() end
---@param job Unity.Jobs.JobHandle
function UnityEngine.Experimental.AI.NavMeshWorld:AddDependency(job) end

---@class UnityEngine.Experimental.AI.NavMeshQuery : System.ValueType
UnityEngine.Experimental.AI.NavMeshQuery = {}
---@alias CS.UnityEngine.Experimental.AI.NavMeshQuery UnityEngine.Experimental.AI.NavMeshQuery
CS.UnityEngine.Experimental.AI.NavMeshQuery = UnityEngine.Experimental.AI.NavMeshQuery

---@param world UnityEngine.Experimental.AI.NavMeshWorld
---@param allocator Unity.Collections.Allocator
---@param pathNodePoolSize number
---@return UnityEngine.Experimental.AI.NavMeshQuery
function UnityEngine.Experimental.AI.NavMeshQuery.New(world, allocator, pathNodePoolSize) end
function UnityEngine.Experimental.AI.NavMeshQuery:Dispose() end
---@param start UnityEngine.Experimental.AI.NavMeshLocation
---@param _end UnityEngine.Experimental.AI.NavMeshLocation
---@param areaMask number
---@param costs Unity.Collections.NativeArray
---@return UnityEngine.Experimental.AI.PathQueryStatus
function UnityEngine.Experimental.AI.NavMeshQuery:BeginFindPath(start, _end, areaMask, costs) end
---@param iterations number
---@param out_iterationsPerformed number
---@return UnityEngine.Experimental.AI.PathQueryStatus,number
function UnityEngine.Experimental.AI.NavMeshQuery:UpdateFindPath(iterations, out_iterationsPerformed) end
---@param out_pathSize number
---@return UnityEngine.Experimental.AI.PathQueryStatus,number
function UnityEngine.Experimental.AI.NavMeshQuery:EndFindPath(out_pathSize) end
---@param path Unity.Collections.NativeSlice
---@return number
function UnityEngine.Experimental.AI.NavMeshQuery:GetPathResult(path) end
---@overload fun(self: UnityEngine.Experimental.AI.NavMeshQuery, polygon: UnityEngine.Experimental.AI.PolygonId) : boolean
---@param location UnityEngine.Experimental.AI.NavMeshLocation
---@return boolean
function UnityEngine.Experimental.AI.NavMeshQuery:IsValid(location) end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return number
function UnityEngine.Experimental.AI.NavMeshQuery:GetAgentTypeIdForPolygon(polygon) end
---@param position UnityEngine.Vector3
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Experimental.AI.NavMeshLocation
function UnityEngine.Experimental.AI.NavMeshQuery:CreateLocation(position, polygon) end
---@param position UnityEngine.Vector3
---@param extents UnityEngine.Vector3
---@param agentTypeID number
---@param areaMask number
---@return UnityEngine.Experimental.AI.NavMeshLocation
function UnityEngine.Experimental.AI.NavMeshQuery:MapLocation(position, extents, agentTypeID, areaMask) end
---@param locations Unity.Collections.NativeSlice
---@param targets Unity.Collections.NativeSlice
---@param areaMasks Unity.Collections.NativeSlice
function UnityEngine.Experimental.AI.NavMeshQuery:MoveLocations(locations, targets, areaMasks) end
---@param locations Unity.Collections.NativeSlice
---@param targets Unity.Collections.NativeSlice
---@param areaMask number
function UnityEngine.Experimental.AI.NavMeshQuery:MoveLocationsInSameAreas(locations, targets, areaMask) end
---@param location UnityEngine.Experimental.AI.NavMeshLocation
---@param target UnityEngine.Vector3
---@param areaMask number
---@return UnityEngine.Experimental.AI.NavMeshLocation
function UnityEngine.Experimental.AI.NavMeshQuery:MoveLocation(location, target, areaMask) end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@param neighbourPolygon UnityEngine.Experimental.AI.PolygonId
---@param out_left UnityEngine.Vector3
---@param out_right UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3,UnityEngine.Vector3
function UnityEngine.Experimental.AI.NavMeshQuery:GetPortalPoints(polygon, neighbourPolygon, out_left, out_right) end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Matrix4x4
function UnityEngine.Experimental.AI.NavMeshQuery:PolygonLocalToWorldMatrix(polygon) end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Matrix4x4
function UnityEngine.Experimental.AI.NavMeshQuery:PolygonWorldToLocalMatrix(polygon) end
---@param polygon UnityEngine.Experimental.AI.PolygonId
---@return UnityEngine.Experimental.AI.NavMeshPolyTypes
function UnityEngine.Experimental.AI.NavMeshQuery:GetPolygonType(polygon) end
---@overload fun(self: UnityEngine.Experimental.AI.NavMeshQuery, out_hit: UnityEngine.AI.NavMeshHit, start: UnityEngine.Experimental.AI.NavMeshLocation, targetPosition: UnityEngine.Vector3, areaMask: number, costs: Unity.Collections.NativeArray) : UnityEngine.Experimental.AI.PathQueryStatus, UnityEngine.AI.NavMeshHit
---@param out_hit UnityEngine.AI.NavMeshHit
---@param path Unity.Collections.NativeSlice
---@param out_pathCount number
---@param start UnityEngine.Experimental.AI.NavMeshLocation
---@param targetPosition UnityEngine.Vector3
---@param areaMask number
---@param costs Unity.Collections.NativeArray
---@return UnityEngine.Experimental.AI.PathQueryStatus,UnityEngine.AI.NavMeshHit,number
function UnityEngine.Experimental.AI.NavMeshQuery:Raycast(out_hit, path, out_pathCount, start, targetPosition, areaMask, costs) end
---@param node UnityEngine.Experimental.AI.PolygonId
---@param edgeVertices Unity.Collections.NativeSlice
---@param neighbors Unity.Collections.NativeSlice
---@param edgeIndices Unity.Collections.NativeSlice
---@param out_verticesCount number
---@param out_neighborsCount number
---@return UnityEngine.Experimental.AI.PathQueryStatus,number,number
function UnityEngine.Experimental.AI.NavMeshQuery:GetEdgesAndNeighbors(node, edgeVertices, neighbors, edgeIndices, out_verticesCount, out_neighborsCount) end

---@class UnityEngine.AI.NavMeshBuilder : System.Object
UnityEngine.AI.NavMeshBuilder = {}
---@alias CS.UnityEngine.AI.NavMeshBuilder UnityEngine.AI.NavMeshBuilder
CS.UnityEngine.AI.NavMeshBuilder = UnityEngine.AI.NavMeshBuilder

---@overload fun(includedWorldBounds: UnityEngine.Bounds, includedLayerMask: number, geometry: UnityEngine.AI.NavMeshCollectGeometry, defaultArea: number, generateLinksByDefault: boolean, markups: System.Collections.Generic.List, includeOnlyMarkedObjects: boolean, results: System.Collections.Generic.List)
---@overload fun(includedWorldBounds: UnityEngine.Bounds, includedLayerMask: number, geometry: UnityEngine.AI.NavMeshCollectGeometry, defaultArea: number, markups: System.Collections.Generic.List, results: System.Collections.Generic.List)
---@overload fun(root: UnityEngine.Transform, includedLayerMask: number, geometry: UnityEngine.AI.NavMeshCollectGeometry, defaultArea: number, generateLinksByDefault: boolean, markups: System.Collections.Generic.List, includeOnlyMarkedObjects: boolean, results: System.Collections.Generic.List)
---@param root UnityEngine.Transform
---@param includedLayerMask number
---@param geometry UnityEngine.AI.NavMeshCollectGeometry
---@param defaultArea number
---@param markups System.Collections.Generic.List
---@param results System.Collections.Generic.List
function UnityEngine.AI.NavMeshBuilder.CollectSources(root, includedLayerMask, geometry, defaultArea, markups, results) end
---@param buildSettings UnityEngine.AI.NavMeshBuildSettings
---@param sources System.Collections.Generic.List
---@param localBounds UnityEngine.Bounds
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AI.NavMeshData
function UnityEngine.AI.NavMeshBuilder.BuildNavMeshData(buildSettings, sources, localBounds, position, rotation) end
---@param data UnityEngine.AI.NavMeshData
---@param buildSettings UnityEngine.AI.NavMeshBuildSettings
---@param sources System.Collections.Generic.List
---@param localBounds UnityEngine.Bounds
---@return boolean
function UnityEngine.AI.NavMeshBuilder.UpdateNavMeshData(data, buildSettings, sources, localBounds) end
---@param data UnityEngine.AI.NavMeshData
---@param buildSettings UnityEngine.AI.NavMeshBuildSettings
---@param sources System.Collections.Generic.List
---@param localBounds UnityEngine.Bounds
---@return UnityEngine.AsyncOperation
function UnityEngine.AI.NavMeshBuilder.UpdateNavMeshDataAsync(data, buildSettings, sources, localBounds) end
---@param data UnityEngine.AI.NavMeshData
function UnityEngine.AI.NavMeshBuilder.Cancel(data) end

---@class UnityEngine.AI.ObstacleAvoidanceType
---@field NoObstacleAvoidance UnityEngine.AI.ObstacleAvoidanceType
---@field LowQualityObstacleAvoidance UnityEngine.AI.ObstacleAvoidanceType
---@field MedQualityObstacleAvoidance UnityEngine.AI.ObstacleAvoidanceType
---@field GoodQualityObstacleAvoidance UnityEngine.AI.ObstacleAvoidanceType
---@field HighQualityObstacleAvoidance UnityEngine.AI.ObstacleAvoidanceType
UnityEngine.AI.ObstacleAvoidanceType = {}
---@alias CS.UnityEngine.AI.ObstacleAvoidanceType UnityEngine.AI.ObstacleAvoidanceType
CS.UnityEngine.AI.ObstacleAvoidanceType = UnityEngine.AI.ObstacleAvoidanceType


---@class UnityEngine.AI.NavMeshAgent : UnityEngine.Behaviour
---@field destination UnityEngine.Vector3
---@field stoppingDistance number
---@field velocity UnityEngine.Vector3
---@field nextPosition UnityEngine.Vector3
---@field steeringTarget UnityEngine.Vector3
---@field desiredVelocity UnityEngine.Vector3
---@field remainingDistance number
---@field baseOffset number
---@field isOnOffMeshLink boolean
---@field currentOffMeshLinkData UnityEngine.AI.OffMeshLinkData
---@field nextOffMeshLinkData UnityEngine.AI.OffMeshLinkData
---@field autoTraverseOffMeshLink boolean
---@field autoBraking boolean
---@field autoRepath boolean
---@field hasPath boolean
---@field pathPending boolean
---@field isPathStale boolean
---@field pathStatus UnityEngine.AI.NavMeshPathStatus
---@field pathEndPosition UnityEngine.Vector3
---@field isStopped boolean
---@field path UnityEngine.AI.NavMeshPath
---@field navMeshOwner UnityEngine.Object
---@field agentTypeID number
---@field areaMask number
---@field speed number
---@field angularSpeed number
---@field acceleration number
---@field updatePosition boolean
---@field updateRotation boolean
---@field updateUpAxis boolean
---@field radius number
---@field height number
---@field obstacleAvoidanceType UnityEngine.AI.ObstacleAvoidanceType
---@field avoidancePriority number
---@field isOnNavMesh boolean
UnityEngine.AI.NavMeshAgent = {}
---@alias CS.UnityEngine.AI.NavMeshAgent UnityEngine.AI.NavMeshAgent
CS.UnityEngine.AI.NavMeshAgent = UnityEngine.AI.NavMeshAgent

---@return UnityEngine.AI.NavMeshAgent
function UnityEngine.AI.NavMeshAgent.New() end
---@param target UnityEngine.Vector3
---@return boolean
function UnityEngine.AI.NavMeshAgent:SetDestination(target) end
---@param activated boolean
function UnityEngine.AI.NavMeshAgent:ActivateCurrentOffMeshLink(activated) end
function UnityEngine.AI.NavMeshAgent:CompleteOffMeshLink() end
---@param newPosition UnityEngine.Vector3
---@return boolean
function UnityEngine.AI.NavMeshAgent:Warp(newPosition) end
---@param offset UnityEngine.Vector3
function UnityEngine.AI.NavMeshAgent:Move(offset) end
function UnityEngine.AI.NavMeshAgent:ResetPath() end
---@param path UnityEngine.AI.NavMeshPath
---@return boolean
function UnityEngine.AI.NavMeshAgent:SetPath(path) end
---@param out_hit UnityEngine.AI.NavMeshHit
---@return boolean,UnityEngine.AI.NavMeshHit
function UnityEngine.AI.NavMeshAgent:FindClosestEdge(out_hit) end
---@param targetPosition UnityEngine.Vector3
---@param out_hit UnityEngine.AI.NavMeshHit
---@return boolean,UnityEngine.AI.NavMeshHit
function UnityEngine.AI.NavMeshAgent:Raycast(targetPosition, out_hit) end
---@param targetPosition UnityEngine.Vector3
---@param path UnityEngine.AI.NavMeshPath
---@return boolean
function UnityEngine.AI.NavMeshAgent:CalculatePath(targetPosition, path) end
---@param areaMask number
---@param maxDistance number
---@param out_hit UnityEngine.AI.NavMeshHit
---@return boolean,UnityEngine.AI.NavMeshHit
function UnityEngine.AI.NavMeshAgent:SamplePathPosition(areaMask, maxDistance, out_hit) end
---@param areaIndex number
---@param areaCost number
function UnityEngine.AI.NavMeshAgent:SetAreaCost(areaIndex, areaCost) end
---@param areaIndex number
---@return number
function UnityEngine.AI.NavMeshAgent:GetAreaCost(areaIndex) end

---@class UnityEngine.AI.NavMeshObstacleShape
---@field Capsule UnityEngine.AI.NavMeshObstacleShape
---@field Box UnityEngine.AI.NavMeshObstacleShape
UnityEngine.AI.NavMeshObstacleShape = {}
---@alias CS.UnityEngine.AI.NavMeshObstacleShape UnityEngine.AI.NavMeshObstacleShape
CS.UnityEngine.AI.NavMeshObstacleShape = UnityEngine.AI.NavMeshObstacleShape


---@class UnityEngine.AI.NavMeshObstacle : UnityEngine.Behaviour
---@field height number
---@field radius number
---@field velocity UnityEngine.Vector3
---@field carving boolean
---@field carveOnlyStationary boolean
---@field carvingMoveThreshold number
---@field carvingTimeToStationary number
---@field shape UnityEngine.AI.NavMeshObstacleShape
---@field center UnityEngine.Vector3
---@field size UnityEngine.Vector3
UnityEngine.AI.NavMeshObstacle = {}
---@alias CS.UnityEngine.AI.NavMeshObstacle UnityEngine.AI.NavMeshObstacle
CS.UnityEngine.AI.NavMeshObstacle = UnityEngine.AI.NavMeshObstacle

---@return UnityEngine.AI.NavMeshObstacle
function UnityEngine.AI.NavMeshObstacle.New() end

---@class UnityEngine.AI.OffMeshLinkType
---@field LinkTypeManual UnityEngine.AI.OffMeshLinkType
---@field LinkTypeDropDown UnityEngine.AI.OffMeshLinkType
---@field LinkTypeJumpAcross UnityEngine.AI.OffMeshLinkType
UnityEngine.AI.OffMeshLinkType = {}
---@alias CS.UnityEngine.AI.OffMeshLinkType UnityEngine.AI.OffMeshLinkType
CS.UnityEngine.AI.OffMeshLinkType = UnityEngine.AI.OffMeshLinkType


---@class UnityEngine.AI.OffMeshLinkData : System.ValueType
---@field valid boolean
---@field activated boolean
---@field linkType UnityEngine.AI.OffMeshLinkType
---@field startPos UnityEngine.Vector3
---@field endPos UnityEngine.Vector3
---@field offMeshLink UnityEngine.AI.OffMeshLink
UnityEngine.AI.OffMeshLinkData = {}
---@alias CS.UnityEngine.AI.OffMeshLinkData UnityEngine.AI.OffMeshLinkData
CS.UnityEngine.AI.OffMeshLinkData = UnityEngine.AI.OffMeshLinkData


---@class UnityEngine.AI.OffMeshLink : UnityEngine.Behaviour
---@field activated boolean
---@field occupied boolean
---@field costOverride number
---@field biDirectional boolean
---@field area number
---@field autoUpdatePositions boolean
---@field startTransform UnityEngine.Transform
---@field endTransform UnityEngine.Transform
UnityEngine.AI.OffMeshLink = {}
---@alias CS.UnityEngine.AI.OffMeshLink UnityEngine.AI.OffMeshLink
CS.UnityEngine.AI.OffMeshLink = UnityEngine.AI.OffMeshLink

---@return UnityEngine.AI.OffMeshLink
function UnityEngine.AI.OffMeshLink.New() end
function UnityEngine.AI.OffMeshLink:UpdatePositions() end

---@class UnityEngine.AI.NavMeshHit : System.ValueType
---@field position UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field distance number
---@field mask number
---@field hit boolean
UnityEngine.AI.NavMeshHit = {}
---@alias CS.UnityEngine.AI.NavMeshHit UnityEngine.AI.NavMeshHit
CS.UnityEngine.AI.NavMeshHit = UnityEngine.AI.NavMeshHit


---@class UnityEngine.AI.NavMeshTriangulation : System.ValueType
---@field vertices UnityEngine.Vector3[]
---@field indices System.Int32[]
---@field areas System.Int32[]
UnityEngine.AI.NavMeshTriangulation = {}
---@alias CS.UnityEngine.AI.NavMeshTriangulation UnityEngine.AI.NavMeshTriangulation
CS.UnityEngine.AI.NavMeshTriangulation = UnityEngine.AI.NavMeshTriangulation


---@class UnityEngine.AI.NavMeshData : UnityEngine.Object
---@field sourceBounds UnityEngine.Bounds
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
UnityEngine.AI.NavMeshData = {}
---@alias CS.UnityEngine.AI.NavMeshData UnityEngine.AI.NavMeshData
CS.UnityEngine.AI.NavMeshData = UnityEngine.AI.NavMeshData

---@overload fun() : UnityEngine.AI.NavMeshData
---@param agentTypeID number
---@return UnityEngine.AI.NavMeshData
function UnityEngine.AI.NavMeshData.New(agentTypeID) end

---@class UnityEngine.AI.NavMeshDataInstance : System.ValueType
---@field valid boolean
---@field owner UnityEngine.Object
UnityEngine.AI.NavMeshDataInstance = {}
---@alias CS.UnityEngine.AI.NavMeshDataInstance UnityEngine.AI.NavMeshDataInstance
CS.UnityEngine.AI.NavMeshDataInstance = UnityEngine.AI.NavMeshDataInstance

function UnityEngine.AI.NavMeshDataInstance:Remove() end

---@class UnityEngine.AI.NavMeshLinkData : System.ValueType
---@field startPosition UnityEngine.Vector3
---@field endPosition UnityEngine.Vector3
---@field costModifier number
---@field bidirectional boolean
---@field width number
---@field area number
---@field agentTypeID number
UnityEngine.AI.NavMeshLinkData = {}
---@alias CS.UnityEngine.AI.NavMeshLinkData UnityEngine.AI.NavMeshLinkData
CS.UnityEngine.AI.NavMeshLinkData = UnityEngine.AI.NavMeshLinkData


---@class UnityEngine.AI.NavMeshLinkInstance : System.ValueType
---@field valid boolean
---@field owner UnityEngine.Object
UnityEngine.AI.NavMeshLinkInstance = {}
---@alias CS.UnityEngine.AI.NavMeshLinkInstance UnityEngine.AI.NavMeshLinkInstance
CS.UnityEngine.AI.NavMeshLinkInstance = UnityEngine.AI.NavMeshLinkInstance

function UnityEngine.AI.NavMeshLinkInstance:Remove() end

---@class UnityEngine.AI.NavMeshQueryFilter : System.ValueType
---@field areaMask number
---@field agentTypeID number
UnityEngine.AI.NavMeshQueryFilter = {}
---@alias CS.UnityEngine.AI.NavMeshQueryFilter UnityEngine.AI.NavMeshQueryFilter
CS.UnityEngine.AI.NavMeshQueryFilter = UnityEngine.AI.NavMeshQueryFilter

---@param areaIndex number
---@return number
function UnityEngine.AI.NavMeshQueryFilter:GetAreaCost(areaIndex) end
---@param areaIndex number
---@param cost number
function UnityEngine.AI.NavMeshQueryFilter:SetAreaCost(areaIndex, cost) end

---@class UnityEngine.AI.NavMesh : System.Object
---@field AllAreas number
---@field onPreUpdate UnityEngine.AI.NavMesh.OnNavMeshPreUpdate
---@field avoidancePredictionTime number
---@field pathfindingIterationsPerFrame number
UnityEngine.AI.NavMesh = {}
---@alias CS.UnityEngine.AI.NavMesh UnityEngine.AI.NavMesh
CS.UnityEngine.AI.NavMesh = UnityEngine.AI.NavMesh

---@overload fun(sourcePosition: UnityEngine.Vector3, targetPosition: UnityEngine.Vector3, out_hit: UnityEngine.AI.NavMeshHit, areaMask: number) : boolean, UnityEngine.AI.NavMeshHit
---@param sourcePosition UnityEngine.Vector3
---@param targetPosition UnityEngine.Vector3
---@param out_hit UnityEngine.AI.NavMeshHit
---@param filter UnityEngine.AI.NavMeshQueryFilter
---@return boolean,UnityEngine.AI.NavMeshHit
function UnityEngine.AI.NavMesh.Raycast(sourcePosition, targetPosition, out_hit, filter) end
---@overload fun(sourcePosition: UnityEngine.Vector3, targetPosition: UnityEngine.Vector3, areaMask: number, path: UnityEngine.AI.NavMeshPath) : boolean
---@param sourcePosition UnityEngine.Vector3
---@param targetPosition UnityEngine.Vector3
---@param filter UnityEngine.AI.NavMeshQueryFilter
---@param path UnityEngine.AI.NavMeshPath
---@return boolean
function UnityEngine.AI.NavMesh.CalculatePath(sourcePosition, targetPosition, filter, path) end
---@overload fun(sourcePosition: UnityEngine.Vector3, out_hit: UnityEngine.AI.NavMeshHit, areaMask: number) : boolean, UnityEngine.AI.NavMeshHit
---@param sourcePosition UnityEngine.Vector3
---@param out_hit UnityEngine.AI.NavMeshHit
---@param filter UnityEngine.AI.NavMeshQueryFilter
---@return boolean,UnityEngine.AI.NavMeshHit
function UnityEngine.AI.NavMesh.FindClosestEdge(sourcePosition, out_hit, filter) end
---@overload fun(sourcePosition: UnityEngine.Vector3, out_hit: UnityEngine.AI.NavMeshHit, maxDistance: number, areaMask: number) : boolean, UnityEngine.AI.NavMeshHit
---@param sourcePosition UnityEngine.Vector3
---@param out_hit UnityEngine.AI.NavMeshHit
---@param maxDistance number
---@param filter UnityEngine.AI.NavMeshQueryFilter
---@return boolean,UnityEngine.AI.NavMeshHit
function UnityEngine.AI.NavMesh.SamplePosition(sourcePosition, out_hit, maxDistance, filter) end
---@param areaIndex number
---@param cost number
function UnityEngine.AI.NavMesh.SetAreaCost(areaIndex, cost) end
---@param areaIndex number
---@return number
function UnityEngine.AI.NavMesh.GetAreaCost(areaIndex) end
---@param areaName string
---@return number
function UnityEngine.AI.NavMesh.GetAreaFromName(areaName) end
---@return UnityEngine.AI.NavMeshTriangulation
function UnityEngine.AI.NavMesh.CalculateTriangulation() end
---@overload fun(navMeshData: UnityEngine.AI.NavMeshData) : UnityEngine.AI.NavMeshDataInstance
---@param navMeshData UnityEngine.AI.NavMeshData
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AI.NavMeshDataInstance
function UnityEngine.AI.NavMesh.AddNavMeshData(navMeshData, position, rotation) end
---@param handle UnityEngine.AI.NavMeshDataInstance
function UnityEngine.AI.NavMesh.RemoveNavMeshData(handle) end
---@overload fun(link: UnityEngine.AI.NavMeshLinkData) : UnityEngine.AI.NavMeshLinkInstance
---@param link UnityEngine.AI.NavMeshLinkData
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.AI.NavMeshLinkInstance
function UnityEngine.AI.NavMesh.AddLink(link, position, rotation) end
---@param handle UnityEngine.AI.NavMeshLinkInstance
function UnityEngine.AI.NavMesh.RemoveLink(handle) end
---@return UnityEngine.AI.NavMeshBuildSettings
function UnityEngine.AI.NavMesh.CreateSettings() end
---@param agentTypeID number
function UnityEngine.AI.NavMesh.RemoveSettings(agentTypeID) end
---@param agentTypeID number
---@return UnityEngine.AI.NavMeshBuildSettings
function UnityEngine.AI.NavMesh.GetSettingsByID(agentTypeID) end
---@return number
function UnityEngine.AI.NavMesh.GetSettingsCount() end
---@param index number
---@return UnityEngine.AI.NavMeshBuildSettings
function UnityEngine.AI.NavMesh.GetSettingsByIndex(index) end
---@param agentTypeID number
---@return string
function UnityEngine.AI.NavMesh.GetSettingsNameFromID(agentTypeID) end
function UnityEngine.AI.NavMesh.RemoveAllNavMeshData() end

---@class UnityEngine.AI.NavMesh.OnNavMeshPreUpdate : System.MulticastDelegate
UnityEngine.AI.NavMesh.OnNavMeshPreUpdate = {}
---@alias CS.UnityEngine.AI.NavMesh.OnNavMeshPreUpdate UnityEngine.AI.NavMesh.OnNavMeshPreUpdate
CS.UnityEngine.AI.NavMesh.OnNavMeshPreUpdate = UnityEngine.AI.NavMesh.OnNavMeshPreUpdate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.AI.NavMesh.OnNavMeshPreUpdate
function UnityEngine.AI.NavMesh.OnNavMeshPreUpdate.New(object, method) end
function UnityEngine.AI.NavMesh.OnNavMeshPreUpdate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.AI.NavMesh.OnNavMeshPreUpdate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.AI.NavMesh.OnNavMeshPreUpdate:EndInvoke(result) end

---@class UnityEngine.AI.NavMeshPathStatus
---@field PathComplete UnityEngine.AI.NavMeshPathStatus
---@field PathPartial UnityEngine.AI.NavMeshPathStatus
---@field PathInvalid UnityEngine.AI.NavMeshPathStatus
UnityEngine.AI.NavMeshPathStatus = {}
---@alias CS.UnityEngine.AI.NavMeshPathStatus UnityEngine.AI.NavMeshPathStatus
CS.UnityEngine.AI.NavMeshPathStatus = UnityEngine.AI.NavMeshPathStatus


---@class UnityEngine.AI.NavMeshPath : System.Object
---@field corners UnityEngine.Vector3[]
---@field status UnityEngine.AI.NavMeshPathStatus
UnityEngine.AI.NavMeshPath = {}
---@alias CS.UnityEngine.AI.NavMeshPath UnityEngine.AI.NavMeshPath
CS.UnityEngine.AI.NavMeshPath = UnityEngine.AI.NavMeshPath

---@return UnityEngine.AI.NavMeshPath
function UnityEngine.AI.NavMeshPath.New() end
---@param out_results UnityEngine.Vector3
---@return number,UnityEngine.Vector3
function UnityEngine.AI.NavMeshPath:GetCornersNonAlloc(out_results) end
function UnityEngine.AI.NavMeshPath:ClearCorners() end

---@class UnityEngine.AI.NavMeshBuildDebugFlags
---@field None UnityEngine.AI.NavMeshBuildDebugFlags
---@field InputGeometry UnityEngine.AI.NavMeshBuildDebugFlags
---@field Voxels UnityEngine.AI.NavMeshBuildDebugFlags
---@field Regions UnityEngine.AI.NavMeshBuildDebugFlags
---@field RawContours UnityEngine.AI.NavMeshBuildDebugFlags
---@field SimplifiedContours UnityEngine.AI.NavMeshBuildDebugFlags
---@field PolygonMeshes UnityEngine.AI.NavMeshBuildDebugFlags
---@field PolygonMeshesDetail UnityEngine.AI.NavMeshBuildDebugFlags
---@field All UnityEngine.AI.NavMeshBuildDebugFlags
UnityEngine.AI.NavMeshBuildDebugFlags = {}
---@alias CS.UnityEngine.AI.NavMeshBuildDebugFlags UnityEngine.AI.NavMeshBuildDebugFlags
CS.UnityEngine.AI.NavMeshBuildDebugFlags = UnityEngine.AI.NavMeshBuildDebugFlags


---@class UnityEngine.AI.NavMeshBuildSourceShape
---@field Mesh UnityEngine.AI.NavMeshBuildSourceShape
---@field Terrain UnityEngine.AI.NavMeshBuildSourceShape
---@field Box UnityEngine.AI.NavMeshBuildSourceShape
---@field Sphere UnityEngine.AI.NavMeshBuildSourceShape
---@field Capsule UnityEngine.AI.NavMeshBuildSourceShape
---@field ModifierBox UnityEngine.AI.NavMeshBuildSourceShape
UnityEngine.AI.NavMeshBuildSourceShape = {}
---@alias CS.UnityEngine.AI.NavMeshBuildSourceShape UnityEngine.AI.NavMeshBuildSourceShape
CS.UnityEngine.AI.NavMeshBuildSourceShape = UnityEngine.AI.NavMeshBuildSourceShape


---@class UnityEngine.AI.NavMeshCollectGeometry
---@field RenderMeshes UnityEngine.AI.NavMeshCollectGeometry
---@field PhysicsColliders UnityEngine.AI.NavMeshCollectGeometry
UnityEngine.AI.NavMeshCollectGeometry = {}
---@alias CS.UnityEngine.AI.NavMeshCollectGeometry UnityEngine.AI.NavMeshCollectGeometry
CS.UnityEngine.AI.NavMeshCollectGeometry = UnityEngine.AI.NavMeshCollectGeometry


---@class UnityEngine.AI.NavMeshBuildSource : System.ValueType
---@field transform UnityEngine.Matrix4x4
---@field size UnityEngine.Vector3
---@field shape UnityEngine.AI.NavMeshBuildSourceShape
---@field area number
---@field generateLinks boolean
---@field sourceObject UnityEngine.Object
---@field component UnityEngine.Component
UnityEngine.AI.NavMeshBuildSource = {}
---@alias CS.UnityEngine.AI.NavMeshBuildSource UnityEngine.AI.NavMeshBuildSource
CS.UnityEngine.AI.NavMeshBuildSource = UnityEngine.AI.NavMeshBuildSource


---@class UnityEngine.AI.NavMeshBuildMarkup : System.ValueType
---@field overrideArea boolean
---@field area number
---@field overrideIgnore boolean
---@field ignoreFromBuild boolean
---@field overrideGenerateLinks boolean
---@field generateLinks boolean
---@field applyToChildren boolean
---@field root UnityEngine.Transform
UnityEngine.AI.NavMeshBuildMarkup = {}
---@alias CS.UnityEngine.AI.NavMeshBuildMarkup UnityEngine.AI.NavMeshBuildMarkup
CS.UnityEngine.AI.NavMeshBuildMarkup = UnityEngine.AI.NavMeshBuildMarkup


---@class UnityEngine.AI.NavMeshBuildSettings : System.ValueType
---@field agentTypeID number
---@field agentRadius number
---@field agentHeight number
---@field agentSlope number
---@field agentClimb number
---@field ledgeDropHeight number
---@field maxJumpAcrossDistance number
---@field minRegionArea number
---@field overrideVoxelSize boolean
---@field voxelSize number
---@field overrideTileSize boolean
---@field tileSize number
---@field maxJobWorkers number
---@field preserveTilesOutsideBounds boolean
---@field buildHeightMesh boolean
---@field debug UnityEngine.AI.NavMeshBuildDebugSettings
UnityEngine.AI.NavMeshBuildSettings = {}
---@alias CS.UnityEngine.AI.NavMeshBuildSettings UnityEngine.AI.NavMeshBuildSettings
CS.UnityEngine.AI.NavMeshBuildSettings = UnityEngine.AI.NavMeshBuildSettings

---@param buildBounds UnityEngine.Bounds
---@return System.String[]
function UnityEngine.AI.NavMeshBuildSettings:ValidationReport(buildBounds) end

---@class UnityEngine.AI.NavMeshBuildDebugSettings : System.ValueType
---@field flags UnityEngine.AI.NavMeshBuildDebugFlags
UnityEngine.AI.NavMeshBuildDebugSettings = {}
---@alias CS.UnityEngine.AI.NavMeshBuildDebugSettings UnityEngine.AI.NavMeshBuildDebugSettings
CS.UnityEngine.AI.NavMeshBuildDebugSettings = UnityEngine.AI.NavMeshBuildDebugSettings


---@class UnityEngine.XR.Tango.PoseStatus
---@field Initializing UnityEngine.XR.Tango.PoseStatus
---@field Valid UnityEngine.XR.Tango.PoseStatus
---@field Invalid UnityEngine.XR.Tango.PoseStatus
---@field Unknown UnityEngine.XR.Tango.PoseStatus
UnityEngine.XR.Tango.PoseStatus = {}
---@alias CS.UnityEngine.XR.Tango.PoseStatus UnityEngine.XR.Tango.PoseStatus
CS.UnityEngine.XR.Tango.PoseStatus = UnityEngine.XR.Tango.PoseStatus


---@class UnityEngine.XR.Tango.PoseData : System.ValueType
---@field orientation_x number
---@field orientation_y number
---@field orientation_z number
---@field orientation_w number
---@field translation_x number
---@field translation_y number
---@field translation_z number
---@field statusCode UnityEngine.XR.Tango.PoseStatus
---@field rotation UnityEngine.Quaternion
---@field position UnityEngine.Vector3
UnityEngine.XR.Tango.PoseData = {}
---@alias CS.UnityEngine.XR.Tango.PoseData UnityEngine.XR.Tango.PoseData
CS.UnityEngine.XR.Tango.PoseData = UnityEngine.XR.Tango.PoseData


---@class UnityEngine.XR.Tango.TangoInputTracking : System.Object
UnityEngine.XR.Tango.TangoInputTracking = {}
---@alias CS.UnityEngine.XR.Tango.TangoInputTracking UnityEngine.XR.Tango.TangoInputTracking
CS.UnityEngine.XR.Tango.TangoInputTracking = UnityEngine.XR.Tango.TangoInputTracking


---@class UnityEngine.Accessibility.VisionUtility : System.Object
UnityEngine.Accessibility.VisionUtility = {}
---@alias CS.UnityEngine.Accessibility.VisionUtility UnityEngine.Accessibility.VisionUtility
CS.UnityEngine.Accessibility.VisionUtility = UnityEngine.Accessibility.VisionUtility

---@param palette UnityEngine.Color[]
---@param minimumLuminance number
---@param maximumLuminance number
---@return number
function UnityEngine.Accessibility.VisionUtility.GetColorBlindSafePalette(palette, minimumLuminance, maximumLuminance) end

---@class UnityEngine.AndroidJavaRunnable : System.MulticastDelegate
UnityEngine.AndroidJavaRunnable = {}
---@alias CS.UnityEngine.AndroidJavaRunnable UnityEngine.AndroidJavaRunnable
CS.UnityEngine.AndroidJavaRunnable = UnityEngine.AndroidJavaRunnable

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.AndroidJavaRunnable
function UnityEngine.AndroidJavaRunnable.New(object, method) end
function UnityEngine.AndroidJavaRunnable:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.AndroidJavaRunnable:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.AndroidJavaRunnable:EndInvoke(result) end

---@class UnityEngine.AndroidJavaException : System.Exception
---@field StackTrace string
UnityEngine.AndroidJavaException = {}
---@alias CS.UnityEngine.AndroidJavaException UnityEngine.AndroidJavaException
CS.UnityEngine.AndroidJavaException = UnityEngine.AndroidJavaException


---@class UnityEngine.GlobalJavaObjectRef : System.Object
UnityEngine.GlobalJavaObjectRef = {}
---@alias CS.UnityEngine.GlobalJavaObjectRef UnityEngine.GlobalJavaObjectRef
CS.UnityEngine.GlobalJavaObjectRef = UnityEngine.GlobalJavaObjectRef

---@param jobject System.IntPtr
---@return UnityEngine.GlobalJavaObjectRef
function UnityEngine.GlobalJavaObjectRef.New(jobject) end
function UnityEngine.GlobalJavaObjectRef:Dispose() end

---@class UnityEngine.AndroidJavaRunnableProxy : UnityEngine.AndroidJavaProxy
UnityEngine.AndroidJavaRunnableProxy = {}
---@alias CS.UnityEngine.AndroidJavaRunnableProxy UnityEngine.AndroidJavaRunnableProxy
CS.UnityEngine.AndroidJavaRunnableProxy = UnityEngine.AndroidJavaRunnableProxy

---@param runnable UnityEngine.AndroidJavaRunnable
---@return UnityEngine.AndroidJavaRunnableProxy
function UnityEngine.AndroidJavaRunnableProxy.New(runnable) end
function UnityEngine.AndroidJavaRunnableProxy:run() end
---@param methodName string
---@param javaArgs System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJavaRunnableProxy:Invoke(methodName, javaArgs) end

---@class UnityEngine.AndroidJavaProxy : System.Object
---@field javaInterface UnityEngine.AndroidJavaClass
UnityEngine.AndroidJavaProxy = {}
---@alias CS.UnityEngine.AndroidJavaProxy UnityEngine.AndroidJavaProxy
CS.UnityEngine.AndroidJavaProxy = UnityEngine.AndroidJavaProxy

---@overload fun(javaInterface: string) : UnityEngine.AndroidJavaProxy
---@param javaInterface UnityEngine.AndroidJavaClass
---@return UnityEngine.AndroidJavaProxy
function UnityEngine.AndroidJavaProxy.New(javaInterface) end
---@overload fun(self: UnityEngine.AndroidJavaProxy, methodName: string, args: System.Object[]) : UnityEngine.AndroidJavaObject
---@overload fun(self: UnityEngine.AndroidJavaProxy, methodName: string, javaArgs: UnityEngine.AndroidJavaObject[]) : UnityEngine.AndroidJavaObject
---@param methodName string
---@param javaArgs System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJavaProxy:Invoke(methodName, javaArgs) end
---@param obj UnityEngine.AndroidJavaObject
---@return boolean
function UnityEngine.AndroidJavaProxy:equals(obj) end
---@return number
function UnityEngine.AndroidJavaProxy:hashCode() end
---@return string
function UnityEngine.AndroidJavaProxy:toString() end

---@class UnityEngine.AndroidJavaObject : System.Object
UnityEngine.AndroidJavaObject = {}
---@alias CS.UnityEngine.AndroidJavaObject UnityEngine.AndroidJavaObject
CS.UnityEngine.AndroidJavaObject = UnityEngine.AndroidJavaObject

---@overload fun(className: string, args: System.String[]) : UnityEngine.AndroidJavaObject
---@overload fun(className: string, args: UnityEngine.AndroidJavaObject[]) : UnityEngine.AndroidJavaObject
---@overload fun(className: string, args: UnityEngine.AndroidJavaClass[]) : UnityEngine.AndroidJavaObject
---@overload fun(className: string, args: UnityEngine.AndroidJavaProxy[]) : UnityEngine.AndroidJavaObject
---@overload fun(className: string, args: UnityEngine.AndroidJavaRunnable[]) : UnityEngine.AndroidJavaObject
---@overload fun(className: string, args: System.Object[]) : UnityEngine.AndroidJavaObject
---@overload fun(jobject: System.IntPtr) : UnityEngine.AndroidJavaObject
---@param clazz System.IntPtr
---@param constructorID System.IntPtr
---@param args System.Object[]
---@return UnityEngine.AndroidJavaObject
function UnityEngine.AndroidJavaObject.New(clazz, constructorID, args) end
function UnityEngine.AndroidJavaObject:Dispose() end
---@overload fun(self: UnityEngine.AndroidJavaObject, methodName: string, args: System.Object[])
---@param methodID System.IntPtr
---@param args System.Object[]
function UnityEngine.AndroidJavaObject:Call(methodID, args) end
---@overload fun(self: UnityEngine.AndroidJavaObject, methodName: string, args: System.Object[])
---@param methodID System.IntPtr
---@param args System.Object[]
function UnityEngine.AndroidJavaObject:CallStatic(methodID, args) end
---@return System.IntPtr
function UnityEngine.AndroidJavaObject:GetRawObject() end
---@return System.IntPtr
function UnityEngine.AndroidJavaObject:GetRawClass() end
---@return UnityEngine.AndroidJavaObject
function UnityEngine.AndroidJavaObject:CloneReference() end

---@class UnityEngine.AndroidJavaClass : UnityEngine.AndroidJavaObject
UnityEngine.AndroidJavaClass = {}
---@alias CS.UnityEngine.AndroidJavaClass UnityEngine.AndroidJavaClass
CS.UnityEngine.AndroidJavaClass = UnityEngine.AndroidJavaClass

---@param className string
---@return UnityEngine.AndroidJavaClass
function UnityEngine.AndroidJavaClass.New(className) end

---@class UnityEngine.AndroidReflection : System.Object
UnityEngine.AndroidReflection = {}
---@alias CS.UnityEngine.AndroidReflection UnityEngine.AndroidReflection
CS.UnityEngine.AndroidReflection = UnityEngine.AndroidReflection

---@return UnityEngine.AndroidReflection
function UnityEngine.AndroidReflection.New() end
---@param t System.Type
---@return boolean
function UnityEngine.AndroidReflection.IsPrimitive(t) end
---@param t System.Type
---@param from System.Type
---@return boolean
function UnityEngine.AndroidReflection.IsAssignableFrom(t, from) end
---@param jclass System.IntPtr
---@param signature string
---@return System.IntPtr
function UnityEngine.AndroidReflection.GetConstructorMember(jclass, signature) end
---@param jclass System.IntPtr
---@param methodName string
---@param signature string
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine.AndroidReflection.GetMethodMember(jclass, methodName, signature, isStatic) end
---@param jclass System.IntPtr
---@param fieldName string
---@param signature string
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine.AndroidReflection.GetFieldMember(jclass, fieldName, signature, isStatic) end
---@param field System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidReflection.GetFieldClass(field) end
---@param field System.IntPtr
---@return string
function UnityEngine.AndroidReflection.GetFieldSignature(field) end
---@param player System.IntPtr
---@param delegateHandle System.IntPtr
---@param interfaze System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidReflection.NewProxyInstance(player, delegateHandle, interfaze) end

---@class UnityEngine._AndroidJNIHelper : System.Object
UnityEngine._AndroidJNIHelper = {}
---@alias CS.UnityEngine._AndroidJNIHelper UnityEngine._AndroidJNIHelper
CS.UnityEngine._AndroidJNIHelper = UnityEngine._AndroidJNIHelper

---@return UnityEngine._AndroidJNIHelper
function UnityEngine._AndroidJNIHelper.New() end
---@param player System.IntPtr
---@param delegateHandle System.IntPtr
---@param proxy UnityEngine.AndroidJavaProxy
---@return System.IntPtr
function UnityEngine._AndroidJNIHelper.CreateJavaProxy(player, delegateHandle, proxy) end
---@param jrunnable UnityEngine.AndroidJavaRunnable
---@return System.IntPtr
function UnityEngine._AndroidJNIHelper.CreateJavaRunnable(jrunnable) end
---@param proxy UnityEngine.AndroidJavaProxy
---@param jmethodName System.IntPtr
---@param jargs System.IntPtr
---@return System.IntPtr
function UnityEngine._AndroidJNIHelper.InvokeJavaProxyMethod(proxy, jmethodName, jargs) end
---@param args System.Object[]
---@param ret System.Span
function UnityEngine._AndroidJNIHelper.CreateJNIArgArray(args, ret) end
---@param obj UnityEngine.AndroidJavaObject
---@return System.Object
function UnityEngine._AndroidJNIHelper.UnboxArray(obj) end
---@param obj UnityEngine.AndroidJavaObject
---@return System.Object
function UnityEngine._AndroidJNIHelper.Unbox(obj) end
---@param obj System.Object
---@return UnityEngine.AndroidJavaObject
function UnityEngine._AndroidJNIHelper.Box(obj) end
---@param args System.Object[]
---@param jniArgs System.Span
function UnityEngine._AndroidJNIHelper.DeleteJNIArgArray(args, jniArgs) end
---@param array System.Array
---@return System.IntPtr
function UnityEngine._AndroidJNIHelper.ConvertToJNIArray(array) end
---@overload fun(jclass: System.IntPtr, args: System.Object[]) : System.IntPtr
---@param jclass System.IntPtr
---@param signature string
---@return System.IntPtr
function UnityEngine._AndroidJNIHelper.GetConstructorID(jclass, signature) end
---@overload fun(jclass: System.IntPtr, methodName: string, args: System.Object[], isStatic: boolean) : System.IntPtr
---@param jclass System.IntPtr
---@param methodName string
---@param signature string
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine._AndroidJNIHelper.GetMethodID(jclass, methodName, signature, isStatic) end
---@param jclass System.IntPtr
---@param fieldName string
---@param signature string
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine._AndroidJNIHelper.GetFieldID(jclass, fieldName, signature, isStatic) end
---@overload fun(obj: System.Object) : string
---@param args System.Object[]
---@return string
function UnityEngine._AndroidJNIHelper.GetSignature(args) end

---@class UnityEngine.jvalue : System.ValueType
---@field z boolean
---@field b number
---@field c System.Char
---@field s number
---@field i number
---@field j number
---@field f number
---@field d number
---@field l System.IntPtr
UnityEngine.jvalue = {}
---@alias CS.UnityEngine.jvalue UnityEngine.jvalue
CS.UnityEngine.jvalue = UnityEngine.jvalue


---@class UnityEngine.JNINativeMethod : System.ValueType
---@field name string
---@field signature string
---@field fnPtr System.IntPtr
UnityEngine.JNINativeMethod = {}
---@alias CS.UnityEngine.JNINativeMethod UnityEngine.JNINativeMethod
CS.UnityEngine.JNINativeMethod = UnityEngine.JNINativeMethod


---@class UnityEngine.AndroidJNIHelper : System.Object
---@field debug boolean
UnityEngine.AndroidJNIHelper = {}
---@alias CS.UnityEngine.AndroidJNIHelper UnityEngine.AndroidJNIHelper
CS.UnityEngine.AndroidJNIHelper = UnityEngine.AndroidJNIHelper

---@overload fun(javaClass: System.IntPtr) : System.IntPtr
---@overload fun(javaClass: System.IntPtr, signature: string) : System.IntPtr
---@param jclass System.IntPtr
---@param args System.Object[]
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.GetConstructorID(jclass, args) end
---@overload fun(javaClass: System.IntPtr, methodName: string) : System.IntPtr
---@overload fun(javaClass: System.IntPtr, methodName: string, signature: string) : System.IntPtr
---@overload fun(javaClass: System.IntPtr, methodName: string, signature: string, isStatic: boolean) : System.IntPtr
---@param jclass System.IntPtr
---@param methodName string
---@param args System.Object[]
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.GetMethodID(jclass, methodName, args, isStatic) end
---@overload fun(javaClass: System.IntPtr, fieldName: string) : System.IntPtr
---@overload fun(javaClass: System.IntPtr, fieldName: string, signature: string) : System.IntPtr
---@param javaClass System.IntPtr
---@param fieldName string
---@param signature string
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.GetFieldID(javaClass, fieldName, signature, isStatic) end
---@param jrunnable UnityEngine.AndroidJavaRunnable
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.CreateJavaRunnable(jrunnable) end
---@param proxy UnityEngine.AndroidJavaProxy
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.CreateJavaProxy(proxy) end
---@param array System.Array
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.ConvertToJNIArray(array) end
---@overload fun(args: System.Object[]) : UnityEngine.jvalue[]
---@param args System.Object[]
---@param jniArgs System.Span
function UnityEngine.AndroidJNIHelper.CreateJNIArgArray(args, jniArgs) end
---@overload fun(args: System.Object[], jniArgs: UnityEngine.jvalue[])
---@param args System.Object[]
---@param jniArgs System.Span
function UnityEngine.AndroidJNIHelper.DeleteJNIArgArray(args, jniArgs) end
---@overload fun(obj: System.Object) : string
---@param args System.Object[]
---@return string
function UnityEngine.AndroidJNIHelper.GetSignature(args) end
---@overload fun(value: number) : System.IntPtr
---@overload fun(value: number) : System.IntPtr
---@overload fun(value: number) : System.IntPtr
---@overload fun(value: number) : System.IntPtr
---@overload fun(value: number) : System.IntPtr
---@overload fun(value: number) : System.IntPtr
---@overload fun(value: System.Char) : System.IntPtr
---@param value boolean
---@return System.IntPtr
function UnityEngine.AndroidJNIHelper.Box(value) end
---@overload fun(obj: System.IntPtr, out_value: number) : number
---@overload fun(obj: System.IntPtr, out_value: number) : number
---@overload fun(obj: System.IntPtr, out_value: number) : number
---@overload fun(obj: System.IntPtr, out_value: number) : number
---@overload fun(obj: System.IntPtr, out_value: number) : number
---@overload fun(obj: System.IntPtr, out_value: number) : number
---@overload fun(obj: System.IntPtr, out_value: System.Char) : System.Char
---@param obj System.IntPtr
---@param out_value boolean
---@return ,boolean
function UnityEngine.AndroidJNIHelper.Unbox(obj, out_value) end

---@class UnityEngine.AndroidJNI : System.Object
UnityEngine.AndroidJNI = {}
---@alias CS.UnityEngine.AndroidJNI UnityEngine.AndroidJNI
CS.UnityEngine.AndroidJNI = UnityEngine.AndroidJNI

---@return System.IntPtr
function UnityEngine.AndroidJNI.GetJavaVM() end
---@return number
function UnityEngine.AndroidJNI.AttachCurrentThread() end
---@return number
function UnityEngine.AndroidJNI.DetachCurrentThread() end
---@return number
function UnityEngine.AndroidJNI.GetVersion() end
---@param name string
---@return System.IntPtr
function UnityEngine.AndroidJNI.FindClass(name) end
---@param refMethod System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.FromReflectedMethod(refMethod) end
---@param refField System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.FromReflectedField(refField) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToReflectedMethod(clazz, methodID, isStatic) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param isStatic boolean
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToReflectedField(clazz, fieldID, isStatic) end
---@param clazz System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetSuperclass(clazz) end
---@param clazz1 System.IntPtr
---@param clazz2 System.IntPtr
---@return boolean
function UnityEngine.AndroidJNI.IsAssignableFrom(clazz1, clazz2) end
---@param obj System.IntPtr
---@return number
function UnityEngine.AndroidJNI.Throw(obj) end
---@param clazz System.IntPtr
---@param message string
---@return number
function UnityEngine.AndroidJNI.ThrowNew(clazz, message) end
---@return System.IntPtr
function UnityEngine.AndroidJNI.ExceptionOccurred() end
function UnityEngine.AndroidJNI.ExceptionDescribe() end
function UnityEngine.AndroidJNI.ExceptionClear() end
---@param message string
function UnityEngine.AndroidJNI.FatalError(message) end
---@param capacity number
---@return number
function UnityEngine.AndroidJNI.PushLocalFrame(capacity) end
---@param ptr System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.PopLocalFrame(ptr) end
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewGlobalRef(obj) end
---@param obj System.IntPtr
function UnityEngine.AndroidJNI.DeleteGlobalRef(obj) end
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewWeakGlobalRef(obj) end
---@param obj System.IntPtr
function UnityEngine.AndroidJNI.DeleteWeakGlobalRef(obj) end
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewLocalRef(obj) end
---@param obj System.IntPtr
function UnityEngine.AndroidJNI.DeleteLocalRef(obj) end
---@param obj1 System.IntPtr
---@param obj2 System.IntPtr
---@return boolean
function UnityEngine.AndroidJNI.IsSameObject(obj1, obj2) end
---@param capacity number
---@return number
function UnityEngine.AndroidJNI.EnsureLocalCapacity(capacity) end
---@param clazz System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.AllocObject(clazz) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.IntPtr
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewObject(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewObjectA(clazz, methodID, args) end
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetObjectClass(obj) end
---@param obj System.IntPtr
---@param clazz System.IntPtr
---@return boolean
function UnityEngine.AndroidJNI.IsInstanceOf(obj, clazz) end
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetMethodID(clazz, name, sig) end
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetFieldID(clazz, name, sig) end
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetStaticMethodID(clazz, name, sig) end
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetStaticFieldID(clazz, name, sig) end
---@overload fun(chars: string) : System.IntPtr
---@param chars System.Char[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewString(chars) end
---@param bytes string
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewStringUTF(bytes) end
---@param str System.IntPtr
---@return string
function UnityEngine.AndroidJNI.GetStringChars(str) end
---@param str System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStringLength(str) end
---@param str System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStringUTFLength(str) end
---@param str System.IntPtr
---@return string
function UnityEngine.AndroidJNI.GetStringUTFChars(str) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : string
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return string
function UnityEngine.AndroidJNI.CallStringMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return string
function UnityEngine.AndroidJNI.CallStringMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.IntPtr
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.IntPtr
function UnityEngine.AndroidJNI.CallObjectMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return System.IntPtr
function UnityEngine.AndroidJNI.CallObjectMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallIntMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallIntMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : boolean
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return boolean
function UnityEngine.AndroidJNI.CallBooleanMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return boolean
function UnityEngine.AndroidJNI.CallBooleanMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallShortMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallShortMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallSByteMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallSByteMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.Char
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.Char
function UnityEngine.AndroidJNI.CallCharMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return System.Char
function UnityEngine.AndroidJNI.CallCharMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallFloatMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallFloatMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallDoubleMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallDoubleMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallLongMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallLongMethodUnsafe(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[])
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
function UnityEngine.AndroidJNI.CallVoidMethod(obj, methodID, args) end
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
function UnityEngine.AndroidJNI.CallVoidMethodUnsafe(obj, methodID, args) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return string
function UnityEngine.AndroidJNI.GetStringField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetObjectField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return boolean
function UnityEngine.AndroidJNI.GetBooleanField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetSByteField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Char
function UnityEngine.AndroidJNI.GetCharField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetShortField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetIntField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetLongField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetFloatField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetDoubleField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val string
function UnityEngine.AndroidJNI.SetStringField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
function UnityEngine.AndroidJNI.SetObjectField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val boolean
function UnityEngine.AndroidJNI.SetBooleanField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetSByteField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Char
function UnityEngine.AndroidJNI.SetCharField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetShortField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetIntField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetLongField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetFloatField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetDoubleField(obj, fieldID, val) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : string
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return string
function UnityEngine.AndroidJNI.CallStaticStringMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return string
function UnityEngine.AndroidJNI.CallStaticStringMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.IntPtr
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.IntPtr
function UnityEngine.AndroidJNI.CallStaticObjectMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return System.IntPtr
function UnityEngine.AndroidJNI.CallStaticObjectMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallStaticIntMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallStaticIntMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : boolean
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return boolean
function UnityEngine.AndroidJNI.CallStaticBooleanMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return boolean
function UnityEngine.AndroidJNI.CallStaticBooleanMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallStaticShortMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallStaticShortMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallStaticSByteMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallStaticSByteMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.Char
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.Char
function UnityEngine.AndroidJNI.CallStaticCharMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return System.Char
function UnityEngine.AndroidJNI.CallStaticCharMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallStaticFloatMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallStaticFloatMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallStaticDoubleMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallStaticDoubleMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNI.CallStaticLongMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
---@return number
function UnityEngine.AndroidJNI.CallStaticLongMethodUnsafe(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[])
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
function UnityEngine.AndroidJNI.CallStaticVoidMethod(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue*
function UnityEngine.AndroidJNI.CallStaticVoidMethodUnsafe(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return string
function UnityEngine.AndroidJNI.GetStaticStringField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetStaticObjectField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return boolean
function UnityEngine.AndroidJNI.GetStaticBooleanField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStaticSByteField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Char
function UnityEngine.AndroidJNI.GetStaticCharField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStaticShortField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStaticIntField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStaticLongField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStaticFloatField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetStaticDoubleField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val string
function UnityEngine.AndroidJNI.SetStaticStringField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
function UnityEngine.AndroidJNI.SetStaticObjectField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val boolean
function UnityEngine.AndroidJNI.SetStaticBooleanField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetStaticSByteField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Char
function UnityEngine.AndroidJNI.SetStaticCharField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetStaticShortField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetStaticIntField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetStaticLongField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetStaticFloatField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNI.SetStaticDoubleField(clazz, fieldID, val) end
---@param array System.Boolean[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToBooleanArray(array) end
---@overload fun(array: System.SByte[]) : System.IntPtr
---@param array System.SByte*
---@param length number
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToSByteArray(array, length) end
---@overload fun(array: System.Char[]) : System.IntPtr
---@param array System.Char*
---@param length number
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToCharArray(array, length) end
---@overload fun(array: System.Int16[]) : System.IntPtr
---@param array System.Int16*
---@param length number
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToShortArray(array, length) end
---@overload fun(array: System.Int32[]) : System.IntPtr
---@param array System.Int32*
---@param length number
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToIntArray(array, length) end
---@overload fun(array: System.Int64[]) : System.IntPtr
---@param array System.Int64*
---@param length number
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToLongArray(array, length) end
---@overload fun(array: System.Single[]) : System.IntPtr
---@param array System.Single*
---@param length number
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToFloatArray(array, length) end
---@overload fun(array: System.Double[]) : System.IntPtr
---@param array System.Double*
---@param length number
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToDoubleArray(array, length) end
---@overload fun(array: System.IntPtr*, length: number, arrayClass: System.IntPtr) : System.IntPtr
---@overload fun(array: System.IntPtr[], arrayClass: System.IntPtr) : System.IntPtr
---@param array System.IntPtr[]
---@return System.IntPtr
function UnityEngine.AndroidJNI.ToObjectArray(array) end
---@param array System.IntPtr
---@return System.Boolean[]
function UnityEngine.AndroidJNI.FromBooleanArray(array) end
---@param array System.IntPtr
---@return System.SByte[]
function UnityEngine.AndroidJNI.FromSByteArray(array) end
---@param array System.IntPtr
---@return System.Char[]
function UnityEngine.AndroidJNI.FromCharArray(array) end
---@param array System.IntPtr
---@return System.Int16[]
function UnityEngine.AndroidJNI.FromShortArray(array) end
---@param array System.IntPtr
---@return System.Int32[]
function UnityEngine.AndroidJNI.FromIntArray(array) end
---@param array System.IntPtr
---@return System.Int64[]
function UnityEngine.AndroidJNI.FromLongArray(array) end
---@param array System.IntPtr
---@return System.Single[]
function UnityEngine.AndroidJNI.FromFloatArray(array) end
---@param array System.IntPtr
---@return System.Double[]
function UnityEngine.AndroidJNI.FromDoubleArray(array) end
---@param array System.IntPtr
---@return System.IntPtr[]
function UnityEngine.AndroidJNI.FromObjectArray(array) end
---@param array System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetArrayLength(array) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewBooleanArray(size) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewSByteArray(size) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewCharArray(size) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewShortArray(size) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewIntArray(size) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewLongArray(size) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewFloatArray(size) end
---@param size number
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewDoubleArray(size) end
---@param size number
---@param clazz System.IntPtr
---@param obj System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewObjectArray(size, clazz, obj) end
---@param array System.IntPtr
---@param index number
---@return boolean
function UnityEngine.AndroidJNI.GetBooleanArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return number
function UnityEngine.AndroidJNI.GetSByteArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return System.Char
function UnityEngine.AndroidJNI.GetCharArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return number
function UnityEngine.AndroidJNI.GetShortArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return number
function UnityEngine.AndroidJNI.GetIntArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return number
function UnityEngine.AndroidJNI.GetLongArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return number
function UnityEngine.AndroidJNI.GetFloatArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return number
function UnityEngine.AndroidJNI.GetDoubleArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@return System.IntPtr
function UnityEngine.AndroidJNI.GetObjectArrayElement(array, index) end
---@param array System.IntPtr
---@param index number
---@param val boolean
function UnityEngine.AndroidJNI.SetBooleanArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param val number
function UnityEngine.AndroidJNI.SetSByteArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param val System.Char
function UnityEngine.AndroidJNI.SetCharArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param val number
function UnityEngine.AndroidJNI.SetShortArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param val number
function UnityEngine.AndroidJNI.SetIntArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param val number
function UnityEngine.AndroidJNI.SetLongArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param val number
function UnityEngine.AndroidJNI.SetFloatArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param val number
function UnityEngine.AndroidJNI.SetDoubleArrayElement(array, index, val) end
---@param array System.IntPtr
---@param index number
---@param obj System.IntPtr
function UnityEngine.AndroidJNI.SetObjectArrayElement(array, index, obj) end
---@overload fun(buffer: System.Byte*, capacity: number) : System.IntPtr
---@overload fun(buffer: Unity.Collections.NativeArray) : System.IntPtr
---@param buffer Unity.Collections.NativeArray
---@return System.IntPtr
function UnityEngine.AndroidJNI.NewDirectByteBuffer(buffer) end
---@param buffer System.IntPtr
---@return System.SByte*
function UnityEngine.AndroidJNI.GetDirectBufferAddress(buffer) end
---@param buffer System.IntPtr
---@return number
function UnityEngine.AndroidJNI.GetDirectBufferCapacity(buffer) end
---@param buffer System.IntPtr
---@return Unity.Collections.NativeArray
function UnityEngine.AndroidJNI.GetDirectByteBuffer(buffer) end
---@param buffer System.IntPtr
---@return Unity.Collections.NativeArray
function UnityEngine.AndroidJNI.GetDirectSByteBuffer(buffer) end
---@param clazz System.IntPtr
---@param methods UnityEngine.JNINativeMethod[]
---@return number
function UnityEngine.AndroidJNI.RegisterNatives(clazz, methods) end
---@param clazz System.IntPtr
---@return number
function UnityEngine.AndroidJNI.UnregisterNatives(clazz) end

---@class UnityEngine.AndroidJNISafe : System.Object
UnityEngine.AndroidJNISafe = {}
---@alias CS.UnityEngine.AndroidJNISafe UnityEngine.AndroidJNISafe
CS.UnityEngine.AndroidJNISafe = UnityEngine.AndroidJNISafe

---@return UnityEngine.AndroidJNISafe
function UnityEngine.AndroidJNISafe.New() end
function UnityEngine.AndroidJNISafe.CheckException() end
---@param globalref System.IntPtr
function UnityEngine.AndroidJNISafe.DeleteGlobalRef(globalref) end
---@param globalref System.IntPtr
function UnityEngine.AndroidJNISafe.QueueDeleteGlobalRef(globalref) end
---@param globalref System.IntPtr
function UnityEngine.AndroidJNISafe.DeleteWeakGlobalRef(globalref) end
---@param localref System.IntPtr
function UnityEngine.AndroidJNISafe.DeleteLocalRef(localref) end
---@param chars string
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.NewString(chars) end
---@param bytes string
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.NewStringUTF(bytes) end
---@param str System.IntPtr
---@return string
function UnityEngine.AndroidJNISafe.GetStringChars(str) end
---@param str System.IntPtr
---@return string
function UnityEngine.AndroidJNISafe.GetStringUTFChars(str) end
---@param ptr System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetObjectClass(ptr) end
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetStaticMethodID(clazz, name, sig) end
---@param obj System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetMethodID(obj, name, sig) end
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetFieldID(clazz, name, sig) end
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetStaticFieldID(clazz, name, sig) end
---@param refMethod System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.FromReflectedMethod(refMethod) end
---@param refField System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.FromReflectedField(refField) end
---@param name string
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.FindClass(name) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.IntPtr
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.NewObject(clazz, methodID, args) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
function UnityEngine.AndroidJNISafe.SetStaticObjectField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val string
function UnityEngine.AndroidJNISafe.SetStaticStringField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Char
function UnityEngine.AndroidJNISafe.SetStaticCharField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetStaticDoubleField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetStaticFloatField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetStaticLongField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetStaticShortField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetStaticSByteField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val boolean
function UnityEngine.AndroidJNISafe.SetStaticBooleanField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetStaticIntField(clazz, fieldID, val) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetStaticObjectField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return string
function UnityEngine.AndroidJNISafe.GetStaticStringField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.Char
function UnityEngine.AndroidJNISafe.GetStaticCharField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetStaticDoubleField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetStaticFloatField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetStaticLongField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetStaticShortField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetStaticSByteField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return boolean
function UnityEngine.AndroidJNISafe.GetStaticBooleanField(clazz, fieldID) end
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetStaticIntField(clazz, fieldID) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[])
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
function UnityEngine.AndroidJNISafe.CallStaticVoidMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.IntPtr
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.CallStaticObjectMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : string
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return string
function UnityEngine.AndroidJNISafe.CallStaticStringMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.Char
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.Char
function UnityEngine.AndroidJNISafe.CallStaticCharMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallStaticDoubleMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallStaticFloatMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallStaticLongMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallStaticShortMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallStaticSByteMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : boolean
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return boolean
function UnityEngine.AndroidJNISafe.CallStaticBooleanMethod(clazz, methodID, args) end
---@overload fun(clazz: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallStaticIntMethod(clazz, methodID, args) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
function UnityEngine.AndroidJNISafe.SetObjectField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val string
function UnityEngine.AndroidJNISafe.SetStringField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.Char
function UnityEngine.AndroidJNISafe.SetCharField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetDoubleField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetFloatField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetLongField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetShortField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetSByteField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val boolean
function UnityEngine.AndroidJNISafe.SetBooleanField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function UnityEngine.AndroidJNISafe.SetIntField(obj, fieldID, val) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetObjectField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return string
function UnityEngine.AndroidJNISafe.GetStringField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.Char
function UnityEngine.AndroidJNISafe.GetCharField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetDoubleField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetFloatField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetLongField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetShortField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetSByteField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return boolean
function UnityEngine.AndroidJNISafe.GetBooleanField(obj, fieldID) end
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetIntField(obj, fieldID) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[])
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
function UnityEngine.AndroidJNISafe.CallVoidMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.IntPtr
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.CallObjectMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : string
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return string
function UnityEngine.AndroidJNISafe.CallStringMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : System.Char
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return System.Char
function UnityEngine.AndroidJNISafe.CallCharMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallDoubleMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallFloatMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallLongMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallShortMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallSByteMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : boolean
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return boolean
function UnityEngine.AndroidJNISafe.CallBooleanMethod(obj, methodID, args) end
---@overload fun(obj: System.IntPtr, methodID: System.IntPtr, args: UnityEngine.jvalue[]) : number
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args System.Span
---@return number
function UnityEngine.AndroidJNISafe.CallIntMethod(obj, methodID, args) end
---@param array System.IntPtr
---@return System.IntPtr[]
function UnityEngine.AndroidJNISafe.FromObjectArray(array) end
---@param array System.IntPtr
---@return System.Char[]
function UnityEngine.AndroidJNISafe.FromCharArray(array) end
---@param array System.IntPtr
---@return System.Double[]
function UnityEngine.AndroidJNISafe.FromDoubleArray(array) end
---@param array System.IntPtr
---@return System.Single[]
function UnityEngine.AndroidJNISafe.FromFloatArray(array) end
---@param array System.IntPtr
---@return System.Int64[]
function UnityEngine.AndroidJNISafe.FromLongArray(array) end
---@param array System.IntPtr
---@return System.Int16[]
function UnityEngine.AndroidJNISafe.FromShortArray(array) end
---@param array System.IntPtr
---@return System.Byte[]
function UnityEngine.AndroidJNISafe.FromByteArray(array) end
---@param array System.IntPtr
---@return System.SByte[]
function UnityEngine.AndroidJNISafe.FromSByteArray(array) end
---@param array System.IntPtr
---@return System.Boolean[]
function UnityEngine.AndroidJNISafe.FromBooleanArray(array) end
---@param array System.IntPtr
---@return System.Int32[]
function UnityEngine.AndroidJNISafe.FromIntArray(array) end
---@overload fun(array: System.IntPtr[]) : System.IntPtr
---@param array System.IntPtr[]
---@param type System.IntPtr
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToObjectArray(array, type) end
---@param array System.Char[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToCharArray(array) end
---@param array System.Double[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToDoubleArray(array) end
---@param array System.Single[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToFloatArray(array) end
---@param array System.Int64[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToLongArray(array) end
---@param array System.Int16[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToShortArray(array) end
---@param array System.Byte[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToByteArray(array) end
---@param array System.SByte[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToSByteArray(array) end
---@param array System.Boolean[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToBooleanArray(array) end
---@param array System.Int32[]
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.ToIntArray(array) end
---@param array System.IntPtr
---@param index number
---@return System.IntPtr
function UnityEngine.AndroidJNISafe.GetObjectArrayElement(array, index) end
---@param array System.IntPtr
---@return number
function UnityEngine.AndroidJNISafe.GetArrayLength(array) end

---@class UnityEngine.Android.AndroidApp : System.Object
---@field Context UnityEngine.AndroidJavaObject
---@field Activity UnityEngine.AndroidJavaObject
---@field UnityPlayerRaw System.IntPtr
---@field UnityPlayer UnityEngine.AndroidJavaObject
UnityEngine.Android.AndroidApp = {}
---@alias CS.UnityEngine.Android.AndroidApp UnityEngine.Android.AndroidApp
CS.UnityEngine.Android.AndroidApp = UnityEngine.Android.AndroidApp


---@class UnityEngine.Android.AndroidAssetPackStatus
---@field Unknown UnityEngine.Android.AndroidAssetPackStatus
---@field Pending UnityEngine.Android.AndroidAssetPackStatus
---@field Downloading UnityEngine.Android.AndroidAssetPackStatus
---@field Transferring UnityEngine.Android.AndroidAssetPackStatus
---@field Completed UnityEngine.Android.AndroidAssetPackStatus
---@field Failed UnityEngine.Android.AndroidAssetPackStatus
---@field Canceled UnityEngine.Android.AndroidAssetPackStatus
---@field WaitingForWifi UnityEngine.Android.AndroidAssetPackStatus
---@field NotInstalled UnityEngine.Android.AndroidAssetPackStatus
UnityEngine.Android.AndroidAssetPackStatus = {}
---@alias CS.UnityEngine.Android.AndroidAssetPackStatus UnityEngine.Android.AndroidAssetPackStatus
CS.UnityEngine.Android.AndroidAssetPackStatus = UnityEngine.Android.AndroidAssetPackStatus


---@class UnityEngine.Android.AndroidAssetPackError
---@field NoError UnityEngine.Android.AndroidAssetPackError
---@field AppUnavailable UnityEngine.Android.AndroidAssetPackError
---@field PackUnavailable UnityEngine.Android.AndroidAssetPackError
---@field InvalidRequest UnityEngine.Android.AndroidAssetPackError
---@field DownloadNotFound UnityEngine.Android.AndroidAssetPackError
---@field ApiNotAvailable UnityEngine.Android.AndroidAssetPackError
---@field NetworkError UnityEngine.Android.AndroidAssetPackError
---@field AccessDenied UnityEngine.Android.AndroidAssetPackError
---@field InsufficientStorage UnityEngine.Android.AndroidAssetPackError
---@field PlayStoreNotFound UnityEngine.Android.AndroidAssetPackError
---@field NetworkUnrestricted UnityEngine.Android.AndroidAssetPackError
---@field AppNotOwned UnityEngine.Android.AndroidAssetPackError
---@field InternalError UnityEngine.Android.AndroidAssetPackError
UnityEngine.Android.AndroidAssetPackError = {}
---@alias CS.UnityEngine.Android.AndroidAssetPackError UnityEngine.Android.AndroidAssetPackError
CS.UnityEngine.Android.AndroidAssetPackError = UnityEngine.Android.AndroidAssetPackError


---@class UnityEngine.Android.AndroidAssetPackInfo : System.Object
---@field name string
---@field status UnityEngine.Android.AndroidAssetPackStatus
---@field size number
---@field bytesDownloaded number
---@field transferProgress number
---@field error UnityEngine.Android.AndroidAssetPackError
UnityEngine.Android.AndroidAssetPackInfo = {}
---@alias CS.UnityEngine.Android.AndroidAssetPackInfo UnityEngine.Android.AndroidAssetPackInfo
CS.UnityEngine.Android.AndroidAssetPackInfo = UnityEngine.Android.AndroidAssetPackInfo


---@class UnityEngine.Android.AndroidAssetPackState : System.Object
---@field name string
---@field status UnityEngine.Android.AndroidAssetPackStatus
---@field error UnityEngine.Android.AndroidAssetPackError
UnityEngine.Android.AndroidAssetPackState = {}
---@alias CS.UnityEngine.Android.AndroidAssetPackState UnityEngine.Android.AndroidAssetPackState
CS.UnityEngine.Android.AndroidAssetPackState = UnityEngine.Android.AndroidAssetPackState


---@class UnityEngine.Android.AndroidAssetPackUseMobileDataRequestResult : System.Object
---@field allowed boolean
UnityEngine.Android.AndroidAssetPackUseMobileDataRequestResult = {}
---@alias CS.UnityEngine.Android.AndroidAssetPackUseMobileDataRequestResult UnityEngine.Android.AndroidAssetPackUseMobileDataRequestResult
CS.UnityEngine.Android.AndroidAssetPackUseMobileDataRequestResult = UnityEngine.Android.AndroidAssetPackUseMobileDataRequestResult


---@class UnityEngine.Android.DownloadAssetPackAsyncOperation : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
---@field isDone boolean
---@field progress number
---@field downloadedAssetPacks System.String[]
---@field downloadFailedAssetPacks System.String[]
UnityEngine.Android.DownloadAssetPackAsyncOperation = {}
---@alias CS.UnityEngine.Android.DownloadAssetPackAsyncOperation UnityEngine.Android.DownloadAssetPackAsyncOperation
CS.UnityEngine.Android.DownloadAssetPackAsyncOperation = UnityEngine.Android.DownloadAssetPackAsyncOperation


---@class UnityEngine.Android.GetAssetPackStateAsyncOperation : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
---@field isDone boolean
---@field size number
---@field states UnityEngine.Android.AndroidAssetPackState[]
UnityEngine.Android.GetAssetPackStateAsyncOperation = {}
---@alias CS.UnityEngine.Android.GetAssetPackStateAsyncOperation UnityEngine.Android.GetAssetPackStateAsyncOperation
CS.UnityEngine.Android.GetAssetPackStateAsyncOperation = UnityEngine.Android.GetAssetPackStateAsyncOperation


---@class UnityEngine.Android.RequestToUseMobileDataAsyncOperation : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
---@field isDone boolean
---@field result UnityEngine.Android.AndroidAssetPackUseMobileDataRequestResult
UnityEngine.Android.RequestToUseMobileDataAsyncOperation = {}
---@alias CS.UnityEngine.Android.RequestToUseMobileDataAsyncOperation UnityEngine.Android.RequestToUseMobileDataAsyncOperation
CS.UnityEngine.Android.RequestToUseMobileDataAsyncOperation = UnityEngine.Android.RequestToUseMobileDataAsyncOperation


---@class UnityEngine.Android.AndroidAssetPacks : System.Object
---@field coreUnityAssetPacksDownloaded boolean
UnityEngine.Android.AndroidAssetPacks = {}
---@alias CS.UnityEngine.Android.AndroidAssetPacks UnityEngine.Android.AndroidAssetPacks
CS.UnityEngine.Android.AndroidAssetPacks = UnityEngine.Android.AndroidAssetPacks

---@return System.String[]
function UnityEngine.Android.AndroidAssetPacks.GetCoreUnityAssetPackNames() end
---@overload fun(assetPackNames: System.String[], callback: System.Action)
---@param assetPackNames System.String[]
---@return UnityEngine.Android.GetAssetPackStateAsyncOperation
function UnityEngine.Android.AndroidAssetPacks.GetAssetPackStateAsync(assetPackNames) end
---@overload fun(assetPackNames: System.String[], callback: System.Action)
---@param assetPackNames System.String[]
---@return UnityEngine.Android.DownloadAssetPackAsyncOperation
function UnityEngine.Android.AndroidAssetPacks.DownloadAssetPackAsync(assetPackNames) end
---@overload fun(callback: System.Action)
---@return UnityEngine.Android.RequestToUseMobileDataAsyncOperation
function UnityEngine.Android.AndroidAssetPacks.RequestToUseMobileDataAsync() end
---@param assetPackName string
---@return string
function UnityEngine.Android.AndroidAssetPacks.GetAssetPackPath(assetPackName) end
---@param assetPackNames System.String[]
function UnityEngine.Android.AndroidAssetPacks.CancelAssetPackDownload(assetPackNames) end
---@param assetPackName string
function UnityEngine.Android.AndroidAssetPacks.RemoveAssetPack(assetPackName) end

---@class UnityEngine.Android.AndroidHardwareType
---@field Generic UnityEngine.Android.AndroidHardwareType
---@field ChromeOS UnityEngine.Android.AndroidHardwareType
UnityEngine.Android.AndroidHardwareType = {}
---@alias CS.UnityEngine.Android.AndroidHardwareType UnityEngine.Android.AndroidHardwareType
CS.UnityEngine.Android.AndroidHardwareType = UnityEngine.Android.AndroidHardwareType


---@class UnityEngine.Android.AndroidDevice : System.Object
---@field hardwareType UnityEngine.Android.AndroidHardwareType
UnityEngine.Android.AndroidDevice = {}
---@alias CS.UnityEngine.Android.AndroidDevice UnityEngine.Android.AndroidDevice
CS.UnityEngine.Android.AndroidDevice = UnityEngine.Android.AndroidDevice

---@return UnityEngine.Android.AndroidDevice
function UnityEngine.Android.AndroidDevice.New() end
---@param enabled boolean
function UnityEngine.Android.AndroidDevice.SetSustainedPerformanceMode(enabled) end

---@class UnityEngine.Android.DiagnosticsReporting : System.Object
UnityEngine.Android.DiagnosticsReporting = {}
---@alias CS.UnityEngine.Android.DiagnosticsReporting UnityEngine.Android.DiagnosticsReporting
CS.UnityEngine.Android.DiagnosticsReporting = UnityEngine.Android.DiagnosticsReporting

function UnityEngine.Android.DiagnosticsReporting.CallReportFullyDrawn() end

---@class UnityEngine.Android.PermissionCallbacks : UnityEngine.AndroidJavaProxy
UnityEngine.Android.PermissionCallbacks = {}
---@alias CS.UnityEngine.Android.PermissionCallbacks UnityEngine.Android.PermissionCallbacks
CS.UnityEngine.Android.PermissionCallbacks = UnityEngine.Android.PermissionCallbacks

---@return UnityEngine.Android.PermissionCallbacks
function UnityEngine.Android.PermissionCallbacks.New() end

---@class UnityEngine.Android.Permission : System.ValueType
---@field Camera string
---@field Microphone string
---@field FineLocation string
---@field CoarseLocation string
---@field ExternalStorageRead string
---@field ExternalStorageWrite string
UnityEngine.Android.Permission = {}
---@alias CS.UnityEngine.Android.Permission UnityEngine.Android.Permission
CS.UnityEngine.Android.Permission = UnityEngine.Android.Permission

---@param permission string
---@return boolean
function UnityEngine.Android.Permission.HasUserAuthorizedPermission(permission) end
---@overload fun(permission: string)
---@param permission string
---@param callbacks UnityEngine.Android.PermissionCallbacks
function UnityEngine.Android.Permission.RequestUserPermission(permission, callbacks) end
---@overload fun(permissions: System.String[])
---@param permissions System.String[]
---@param callbacks UnityEngine.Android.PermissionCallbacks
function UnityEngine.Android.Permission.RequestUserPermissions(permissions, callbacks) end

---@class UnityEngine.AnimationInfo : System.ValueType
---@field clip UnityEngine.AnimationClip
---@field weight number
UnityEngine.AnimationInfo = {}
---@alias CS.UnityEngine.AnimationInfo UnityEngine.AnimationInfo
CS.UnityEngine.AnimationInfo = UnityEngine.AnimationInfo


---@class UnityEngine.Animator : UnityEngine.Behaviour
---@field isOptimizable boolean
---@field isHuman boolean
---@field hasRootMotion boolean
---@field humanScale number
---@field isInitialized boolean
---@field deltaPosition UnityEngine.Vector3
---@field deltaRotation UnityEngine.Quaternion
---@field velocity UnityEngine.Vector3
---@field angularVelocity UnityEngine.Vector3
---@field rootPosition UnityEngine.Vector3
---@field rootRotation UnityEngine.Quaternion
---@field applyRootMotion boolean
---@field updateMode UnityEngine.AnimatorUpdateMode
---@field hasTransformHierarchy boolean
---@field gravityWeight number
---@field bodyPosition UnityEngine.Vector3
---@field bodyRotation UnityEngine.Quaternion
---@field stabilizeFeet boolean
---@field layerCount number
---@field parameters UnityEngine.AnimatorControllerParameter[]
---@field parameterCount number
---@field feetPivotActive number
---@field pivotWeight number
---@field pivotPosition UnityEngine.Vector3
---@field isMatchingTarget boolean
---@field speed number
---@field targetPosition UnityEngine.Vector3
---@field targetRotation UnityEngine.Quaternion
---@field avatarRoot UnityEngine.Transform
---@field cullingMode UnityEngine.AnimatorCullingMode
---@field playbackTime number
---@field recorderStartTime number
---@field recorderStopTime number
---@field recorderMode UnityEngine.AnimatorRecorderMode
---@field runtimeAnimatorController UnityEngine.RuntimeAnimatorController
---@field hasBoundPlayables boolean
---@field avatar UnityEngine.Avatar
---@field playableGraph UnityEngine.Playables.PlayableGraph
---@field layersAffectMassCenter boolean
---@field leftFeetBottomHeight number
---@field rightFeetBottomHeight number
---@field logWarnings boolean
---@field fireEvents boolean
---@field keepAnimatorStateOnDisable boolean
---@field writeDefaultValuesOnDisable boolean
UnityEngine.Animator = {}
---@alias CS.UnityEngine.Animator UnityEngine.Animator
CS.UnityEngine.Animator = UnityEngine.Animator

---@return UnityEngine.Animator
function UnityEngine.Animator.New() end
---@param name string
---@return number
function UnityEngine.Animator.StringToHash(name) end
---@overload fun(self: UnityEngine.Animator, name: string) : number
---@param id number
---@return number
function UnityEngine.Animator:GetFloat(id) end
---@overload fun(self: UnityEngine.Animator, name: string, value: number)
---@overload fun(self: UnityEngine.Animator, name: string, value: number, dampTime: number, deltaTime: number)
---@overload fun(self: UnityEngine.Animator, id: number, value: number)
---@param id number
---@param value number
---@param dampTime number
---@param deltaTime number
function UnityEngine.Animator:SetFloat(id, value, dampTime, deltaTime) end
---@overload fun(self: UnityEngine.Animator, name: string) : boolean
---@param id number
---@return boolean
function UnityEngine.Animator:GetBool(id) end
---@overload fun(self: UnityEngine.Animator, name: string, value: boolean)
---@param id number
---@param value boolean
function UnityEngine.Animator:SetBool(id, value) end
---@overload fun(self: UnityEngine.Animator, name: string) : number
---@param id number
---@return number
function UnityEngine.Animator:GetInteger(id) end
---@overload fun(self: UnityEngine.Animator, name: string, value: number)
---@param id number
---@param value number
function UnityEngine.Animator:SetInteger(id, value) end
---@overload fun(self: UnityEngine.Animator, name: string)
---@param id number
function UnityEngine.Animator:SetTrigger(id) end
---@overload fun(self: UnityEngine.Animator, name: string)
---@param id number
function UnityEngine.Animator:ResetTrigger(id) end
---@overload fun(self: UnityEngine.Animator, name: string) : boolean
---@param id number
---@return boolean
function UnityEngine.Animator:IsParameterControlledByCurve(id) end
---@param goal UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Animator:GetIKPosition(goal) end
---@param goal UnityEngine.AvatarIKGoal
---@param goalPosition UnityEngine.Vector3
function UnityEngine.Animator:SetIKPosition(goal, goalPosition) end
---@param goal UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Animator:GetIKRotation(goal) end
---@param goal UnityEngine.AvatarIKGoal
---@param goalRotation UnityEngine.Quaternion
function UnityEngine.Animator:SetIKRotation(goal, goalRotation) end
---@param goal UnityEngine.AvatarIKGoal
---@return number
function UnityEngine.Animator:GetIKPositionWeight(goal) end
---@param goal UnityEngine.AvatarIKGoal
---@param value number
function UnityEngine.Animator:SetIKPositionWeight(goal, value) end
---@param goal UnityEngine.AvatarIKGoal
---@return number
function UnityEngine.Animator:GetIKRotationWeight(goal) end
---@param goal UnityEngine.AvatarIKGoal
---@param value number
function UnityEngine.Animator:SetIKRotationWeight(goal, value) end
---@param hint UnityEngine.AvatarIKHint
---@return UnityEngine.Vector3
function UnityEngine.Animator:GetIKHintPosition(hint) end
---@param hint UnityEngine.AvatarIKHint
---@param hintPosition UnityEngine.Vector3
function UnityEngine.Animator:SetIKHintPosition(hint, hintPosition) end
---@param hint UnityEngine.AvatarIKHint
---@return number
function UnityEngine.Animator:GetIKHintPositionWeight(hint) end
---@param hint UnityEngine.AvatarIKHint
---@param value number
function UnityEngine.Animator:SetIKHintPositionWeight(hint, value) end
---@param lookAtPosition UnityEngine.Vector3
function UnityEngine.Animator:SetLookAtPosition(lookAtPosition) end
---@overload fun(self: UnityEngine.Animator, weight: number)
---@overload fun(self: UnityEngine.Animator, weight: number, bodyWeight: number)
---@overload fun(self: UnityEngine.Animator, weight: number, bodyWeight: number, headWeight: number)
---@overload fun(self: UnityEngine.Animator, weight: number, bodyWeight: number, headWeight: number, eyesWeight: number)
---@param weight number
---@param bodyWeight number
---@param headWeight number
---@param eyesWeight number
---@param clampWeight number
function UnityEngine.Animator:SetLookAtWeight(weight, bodyWeight, headWeight, eyesWeight, clampWeight) end
---@param humanBoneId UnityEngine.HumanBodyBones
---@param rotation UnityEngine.Quaternion
function UnityEngine.Animator:SetBoneLocalRotation(humanBoneId, rotation) end
---@param fullPathHash number
---@param layerIndex number
---@return UnityEngine.StateMachineBehaviour[]
function UnityEngine.Animator:GetBehaviours(fullPathHash, layerIndex) end
---@param layerIndex number
---@return string
function UnityEngine.Animator:GetLayerName(layerIndex) end
---@param layerName string
---@return number
function UnityEngine.Animator:GetLayerIndex(layerName) end
---@param layerIndex number
---@return number
function UnityEngine.Animator:GetLayerWeight(layerIndex) end
---@param layerIndex number
---@param weight number
function UnityEngine.Animator:SetLayerWeight(layerIndex, weight) end
---@param layerIndex number
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animator:GetCurrentAnimatorStateInfo(layerIndex) end
---@param layerIndex number
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animator:GetNextAnimatorStateInfo(layerIndex) end
---@param layerIndex number
---@return UnityEngine.AnimatorTransitionInfo
function UnityEngine.Animator:GetAnimatorTransitionInfo(layerIndex) end
---@param layerIndex number
---@return number
function UnityEngine.Animator:GetCurrentAnimatorClipInfoCount(layerIndex) end
---@param layerIndex number
---@return number
function UnityEngine.Animator:GetNextAnimatorClipInfoCount(layerIndex) end
---@overload fun(self: UnityEngine.Animator, layerIndex: number) : UnityEngine.AnimatorClipInfo[]
---@param layerIndex number
---@param clips System.Collections.Generic.List
function UnityEngine.Animator:GetCurrentAnimatorClipInfo(layerIndex, clips) end
---@overload fun(self: UnityEngine.Animator, layerIndex: number) : UnityEngine.AnimatorClipInfo[]
---@param layerIndex number
---@param clips System.Collections.Generic.List
function UnityEngine.Animator:GetNextAnimatorClipInfo(layerIndex, clips) end
---@param layerIndex number
---@return boolean
function UnityEngine.Animator:IsInTransition(layerIndex) end
---@param index number
---@return UnityEngine.AnimatorControllerParameter
function UnityEngine.Animator:GetParameter(index) end
---@overload fun(self: UnityEngine.Animator, matchPosition: UnityEngine.Vector3, matchRotation: UnityEngine.Quaternion, targetBodyPart: UnityEngine.AvatarTarget, weightMask: UnityEngine.MatchTargetWeightMask, startNormalizedTime: number)
---@overload fun(self: UnityEngine.Animator, matchPosition: UnityEngine.Vector3, matchRotation: UnityEngine.Quaternion, targetBodyPart: UnityEngine.AvatarTarget, weightMask: UnityEngine.MatchTargetWeightMask, startNormalizedTime: number, targetNormalizedTime: number)
---@param matchPosition UnityEngine.Vector3
---@param matchRotation UnityEngine.Quaternion
---@param targetBodyPart UnityEngine.AvatarTarget
---@param weightMask UnityEngine.MatchTargetWeightMask
---@param startNormalizedTime number
---@param targetNormalizedTime number
---@param completeMatch boolean
function UnityEngine.Animator:MatchTarget(matchPosition, matchRotation, targetBodyPart, weightMask, startNormalizedTime, targetNormalizedTime, completeMatch) end
---@overload fun()
---@param completeMatch boolean
function UnityEngine.Animator:InterruptMatchTarget(completeMatch) end
---@overload fun(self: UnityEngine.Animator, stateName: string, fixedTransitionDuration: number)
---@overload fun(self: UnityEngine.Animator, stateName: string, fixedTransitionDuration: number, layer: number)
---@overload fun(self: UnityEngine.Animator, stateName: string, fixedTransitionDuration: number, layer: number, fixedTimeOffset: number)
---@overload fun(self: UnityEngine.Animator, stateName: string, fixedTransitionDuration: number, layer: number, fixedTimeOffset: number, normalizedTransitionTime: number)
---@overload fun(self: UnityEngine.Animator, stateHashName: number, fixedTransitionDuration: number, layer: number, fixedTimeOffset: number)
---@overload fun(self: UnityEngine.Animator, stateHashName: number, fixedTransitionDuration: number, layer: number)
---@overload fun(self: UnityEngine.Animator, stateHashName: number, fixedTransitionDuration: number)
---@param stateHashName number
---@param fixedTransitionDuration number
---@param layer number
---@param fixedTimeOffset number
---@param normalizedTransitionTime number
function UnityEngine.Animator:CrossFadeInFixedTime(stateHashName, fixedTransitionDuration, layer, fixedTimeOffset, normalizedTransitionTime) end
function UnityEngine.Animator:WriteDefaultValues() end
---@overload fun(self: UnityEngine.Animator, stateName: string, normalizedTransitionDuration: number, layer: number, normalizedTimeOffset: number)
---@overload fun(self: UnityEngine.Animator, stateName: string, normalizedTransitionDuration: number, layer: number)
---@overload fun(self: UnityEngine.Animator, stateName: string, normalizedTransitionDuration: number)
---@overload fun(self: UnityEngine.Animator, stateName: string, normalizedTransitionDuration: number, layer: number, normalizedTimeOffset: number, normalizedTransitionTime: number)
---@overload fun(self: UnityEngine.Animator, stateHashName: number, normalizedTransitionDuration: number, layer: number, normalizedTimeOffset: number, normalizedTransitionTime: number)
---@overload fun(self: UnityEngine.Animator, stateHashName: number, normalizedTransitionDuration: number, layer: number, normalizedTimeOffset: number)
---@overload fun(self: UnityEngine.Animator, stateHashName: number, normalizedTransitionDuration: number, layer: number)
---@param stateHashName number
---@param normalizedTransitionDuration number
function UnityEngine.Animator:CrossFade(stateHashName, normalizedTransitionDuration) end
---@overload fun(self: UnityEngine.Animator, stateName: string, layer: number)
---@overload fun(self: UnityEngine.Animator, stateName: string)
---@overload fun(self: UnityEngine.Animator, stateName: string, layer: number, fixedTime: number)
---@overload fun(self: UnityEngine.Animator, stateNameHash: number, layer: number, fixedTime: number)
---@overload fun(self: UnityEngine.Animator, stateNameHash: number, layer: number)
---@param stateNameHash number
function UnityEngine.Animator:PlayInFixedTime(stateNameHash) end
---@overload fun(self: UnityEngine.Animator, stateName: string, layer: number)
---@overload fun(self: UnityEngine.Animator, stateName: string)
---@overload fun(self: UnityEngine.Animator, stateName: string, layer: number, normalizedTime: number)
---@overload fun(self: UnityEngine.Animator, stateNameHash: number, layer: number, normalizedTime: number)
---@overload fun(self: UnityEngine.Animator, stateNameHash: number, layer: number)
---@param stateNameHash number
function UnityEngine.Animator:Play(stateNameHash) end
---@param targetIndex UnityEngine.AvatarTarget
---@param targetNormalizedTime number
function UnityEngine.Animator:SetTarget(targetIndex, targetNormalizedTime) end
---@param humanBoneId UnityEngine.HumanBodyBones
---@return UnityEngine.Transform
function UnityEngine.Animator:GetBoneTransform(humanBoneId) end
function UnityEngine.Animator:StartPlayback() end
function UnityEngine.Animator:StopPlayback() end
---@param frameCount number
function UnityEngine.Animator:StartRecording(frameCount) end
function UnityEngine.Animator:StopRecording() end
---@param layerIndex number
---@param stateID number
---@return boolean
function UnityEngine.Animator:HasState(layerIndex, stateID) end
---@param deltaTime number
function UnityEngine.Animator:Update(deltaTime) end
function UnityEngine.Animator:Rebind() end
function UnityEngine.Animator:ApplyBuiltinRootMotion() end
---@param jobHandle Unity.Jobs.JobHandle
function UnityEngine.Animator:AddJobDependency(jobHandle) end
---@param transform UnityEngine.Transform
---@return UnityEngine.Animations.TransformStreamHandle
function UnityEngine.Animator:BindStreamTransform(transform) end
---@param transform UnityEngine.Transform
---@param type System.Type
---@param property string
---@return UnityEngine.Animations.PropertyStreamHandle
function UnityEngine.Animator:BindStreamProperty(transform, type, property) end
---@param property string
---@param type UnityEngine.Animations.CustomStreamPropertyType
---@return UnityEngine.Animations.PropertyStreamHandle
function UnityEngine.Animator:BindCustomStreamProperty(property, type) end
---@param transform UnityEngine.Transform
---@param type System.Type
---@param property string
---@param isObjectReference boolean
---@return UnityEngine.Animations.PropertyStreamHandle
function UnityEngine.Animator:BindStreamProperty(transform, type, property, isObjectReference) end
---@param transform UnityEngine.Transform
---@return UnityEngine.Animations.TransformSceneHandle
function UnityEngine.Animator:BindSceneTransform(transform) end
---@param transform UnityEngine.Transform
---@param type System.Type
---@param property string
---@return UnityEngine.Animations.PropertySceneHandle
function UnityEngine.Animator:BindSceneProperty(transform, type, property) end
---@param transform UnityEngine.Transform
---@param type System.Type
---@param property string
---@param isObjectReference boolean
---@return UnityEngine.Animations.PropertySceneHandle
function UnityEngine.Animator:BindSceneProperty(transform, type, property, isObjectReference) end
---@param ref_stream UnityEngine.Animations.AnimationStream
---@return boolean,UnityEngine.Animations.AnimationStream
function UnityEngine.Animator:OpenAnimationStream(ref_stream) end
---@param ref_stream UnityEngine.Animations.AnimationStream
---@return ,UnityEngine.Animations.AnimationStream
function UnityEngine.Animator:CloseAnimationStream(ref_stream) end
function UnityEngine.Animator:ResolveAllStreamHandles() end
function UnityEngine.Animator:ResolveAllSceneHandles() end
function UnityEngine.Animator:UnbindAllStreamHandles() end
function UnityEngine.Animator:UnbindAllSceneHandles() end

---@class UnityEngine.IAnimationClipSource
UnityEngine.IAnimationClipSource = {}
---@alias CS.UnityEngine.IAnimationClipSource UnityEngine.IAnimationClipSource
CS.UnityEngine.IAnimationClipSource = UnityEngine.IAnimationClipSource

---@param results System.Collections.Generic.List
function UnityEngine.IAnimationClipSource:GetAnimationClips(results) end

---@class UnityEngine.SharedBetweenAnimatorsAttribute : System.Attribute
UnityEngine.SharedBetweenAnimatorsAttribute = {}
---@alias CS.UnityEngine.SharedBetweenAnimatorsAttribute UnityEngine.SharedBetweenAnimatorsAttribute
CS.UnityEngine.SharedBetweenAnimatorsAttribute = UnityEngine.SharedBetweenAnimatorsAttribute

---@return UnityEngine.SharedBetweenAnimatorsAttribute
function UnityEngine.SharedBetweenAnimatorsAttribute.New() end

---@class UnityEngine.StateMachineBehaviour : UnityEngine.ScriptableObject
UnityEngine.StateMachineBehaviour = {}
---@alias CS.UnityEngine.StateMachineBehaviour UnityEngine.StateMachineBehaviour
CS.UnityEngine.StateMachineBehaviour = UnityEngine.StateMachineBehaviour

---@overload fun(self: UnityEngine.StateMachineBehaviour, animator: UnityEngine.Animator, stateInfo: UnityEngine.AnimatorStateInfo, layerIndex: number)
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex number
---@param controller UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.StateMachineBehaviour:OnStateEnter(animator, stateInfo, layerIndex, controller) end
---@overload fun(self: UnityEngine.StateMachineBehaviour, animator: UnityEngine.Animator, stateInfo: UnityEngine.AnimatorStateInfo, layerIndex: number)
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex number
---@param controller UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.StateMachineBehaviour:OnStateUpdate(animator, stateInfo, layerIndex, controller) end
---@overload fun(self: UnityEngine.StateMachineBehaviour, animator: UnityEngine.Animator, stateInfo: UnityEngine.AnimatorStateInfo, layerIndex: number)
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex number
---@param controller UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.StateMachineBehaviour:OnStateExit(animator, stateInfo, layerIndex, controller) end
---@overload fun(self: UnityEngine.StateMachineBehaviour, animator: UnityEngine.Animator, stateInfo: UnityEngine.AnimatorStateInfo, layerIndex: number)
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex number
---@param controller UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.StateMachineBehaviour:OnStateMove(animator, stateInfo, layerIndex, controller) end
---@overload fun(self: UnityEngine.StateMachineBehaviour, animator: UnityEngine.Animator, stateInfo: UnityEngine.AnimatorStateInfo, layerIndex: number)
---@param animator UnityEngine.Animator
---@param stateInfo UnityEngine.AnimatorStateInfo
---@param layerIndex number
---@param controller UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.StateMachineBehaviour:OnStateIK(animator, stateInfo, layerIndex, controller) end
---@overload fun(self: UnityEngine.StateMachineBehaviour, animator: UnityEngine.Animator, stateMachinePathHash: number)
---@param animator UnityEngine.Animator
---@param stateMachinePathHash number
---@param controller UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.StateMachineBehaviour:OnStateMachineEnter(animator, stateMachinePathHash, controller) end
---@overload fun(self: UnityEngine.StateMachineBehaviour, animator: UnityEngine.Animator, stateMachinePathHash: number)
---@param animator UnityEngine.Animator
---@param stateMachinePathHash number
---@param controller UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.StateMachineBehaviour:OnStateMachineExit(animator, stateMachinePathHash, controller) end

---@class UnityEngine.PlayMode
---@field StopSameLayer UnityEngine.PlayMode
---@field StopAll UnityEngine.PlayMode
UnityEngine.PlayMode = {}
---@alias CS.UnityEngine.PlayMode UnityEngine.PlayMode
CS.UnityEngine.PlayMode = UnityEngine.PlayMode


---@class UnityEngine.QueueMode
---@field CompleteOthers UnityEngine.QueueMode
---@field PlayNow UnityEngine.QueueMode
UnityEngine.QueueMode = {}
---@alias CS.UnityEngine.QueueMode UnityEngine.QueueMode
CS.UnityEngine.QueueMode = UnityEngine.QueueMode


---@class UnityEngine.AnimationBlendMode
---@field Blend UnityEngine.AnimationBlendMode
---@field Additive UnityEngine.AnimationBlendMode
UnityEngine.AnimationBlendMode = {}
---@alias CS.UnityEngine.AnimationBlendMode UnityEngine.AnimationBlendMode
CS.UnityEngine.AnimationBlendMode = UnityEngine.AnimationBlendMode


---@class UnityEngine.AnimationPlayMode
---@field Stop UnityEngine.AnimationPlayMode
---@field Queue UnityEngine.AnimationPlayMode
---@field Mix UnityEngine.AnimationPlayMode
UnityEngine.AnimationPlayMode = {}
---@alias CS.UnityEngine.AnimationPlayMode UnityEngine.AnimationPlayMode
CS.UnityEngine.AnimationPlayMode = UnityEngine.AnimationPlayMode


---@class UnityEngine.AnimationCullingType
---@field AlwaysAnimate UnityEngine.AnimationCullingType
---@field BasedOnRenderers UnityEngine.AnimationCullingType
UnityEngine.AnimationCullingType = {}
---@alias CS.UnityEngine.AnimationCullingType UnityEngine.AnimationCullingType
CS.UnityEngine.AnimationCullingType = UnityEngine.AnimationCullingType


---@class UnityEngine.AnimationEventSource
---@field NoSource UnityEngine.AnimationEventSource
---@field Legacy UnityEngine.AnimationEventSource
---@field Animator UnityEngine.AnimationEventSource
UnityEngine.AnimationEventSource = {}
---@alias CS.UnityEngine.AnimationEventSource UnityEngine.AnimationEventSource
CS.UnityEngine.AnimationEventSource = UnityEngine.AnimationEventSource


---@class UnityEngine.Animation : UnityEngine.Behaviour
---@field clip UnityEngine.AnimationClip
---@field playAutomatically boolean
---@field wrapMode UnityEngine.WrapMode
---@field isPlaying boolean
---@field Item UnityEngine.AnimationState
---@field animatePhysics boolean
---@field cullingType UnityEngine.AnimationCullingType
---@field localBounds UnityEngine.Bounds
UnityEngine.Animation = {}
---@alias CS.UnityEngine.Animation UnityEngine.Animation
CS.UnityEngine.Animation = UnityEngine.Animation

---@return UnityEngine.Animation
function UnityEngine.Animation.New() end
---@overload fun()
---@param name string
function UnityEngine.Animation:Stop(name) end
---@overload fun()
---@param name string
function UnityEngine.Animation:Rewind(name) end
function UnityEngine.Animation:Sample() end
---@param name string
---@return boolean
function UnityEngine.Animation:IsPlaying(name) end
---@overload fun() : boolean
---@overload fun(self: UnityEngine.Animation, mode: UnityEngine.PlayMode) : boolean
---@overload fun(self: UnityEngine.Animation, animation: string) : boolean
---@param animation string
---@param mode UnityEngine.PlayMode
---@return boolean
function UnityEngine.Animation:Play(animation, mode) end
---@overload fun(self: UnityEngine.Animation, animation: string)
---@overload fun(self: UnityEngine.Animation, animation: string, fadeLength: number)
---@param animation string
---@param fadeLength number
---@param mode UnityEngine.PlayMode
function UnityEngine.Animation:CrossFade(animation, fadeLength, mode) end
---@overload fun(self: UnityEngine.Animation, animation: string)
---@overload fun(self: UnityEngine.Animation, animation: string, targetWeight: number)
---@param animation string
---@param targetWeight number
---@param fadeLength number
function UnityEngine.Animation:Blend(animation, targetWeight, fadeLength) end
---@overload fun(self: UnityEngine.Animation, animation: string) : UnityEngine.AnimationState
---@overload fun(self: UnityEngine.Animation, animation: string, fadeLength: number) : UnityEngine.AnimationState
---@overload fun(self: UnityEngine.Animation, animation: string, fadeLength: number, queue: UnityEngine.QueueMode) : UnityEngine.AnimationState
---@param animation string
---@param fadeLength number
---@param queue UnityEngine.QueueMode
---@param mode UnityEngine.PlayMode
---@return UnityEngine.AnimationState
function UnityEngine.Animation:CrossFadeQueued(animation, fadeLength, queue, mode) end
---@overload fun(self: UnityEngine.Animation, animation: string) : UnityEngine.AnimationState
---@overload fun(self: UnityEngine.Animation, animation: string, queue: UnityEngine.QueueMode) : UnityEngine.AnimationState
---@param animation string
---@param queue UnityEngine.QueueMode
---@param mode UnityEngine.PlayMode
---@return UnityEngine.AnimationState
function UnityEngine.Animation:PlayQueued(animation, queue, mode) end
---@overload fun(self: UnityEngine.Animation, clip: UnityEngine.AnimationClip, newName: string)
---@overload fun(self: UnityEngine.Animation, clip: UnityEngine.AnimationClip, newName: string, firstFrame: number, lastFrame: number)
---@param clip UnityEngine.AnimationClip
---@param newName string
---@param firstFrame number
---@param lastFrame number
---@param addLoopFrame boolean
function UnityEngine.Animation:AddClip(clip, newName, firstFrame, lastFrame, addLoopFrame) end
---@overload fun(self: UnityEngine.Animation, clip: UnityEngine.AnimationClip)
---@param clipName string
function UnityEngine.Animation:RemoveClip(clipName) end
---@return number
function UnityEngine.Animation:GetClipCount() end
---@param layer number
function UnityEngine.Animation:SyncLayer(layer) end
---@return System.Collections.IEnumerator
function UnityEngine.Animation:GetEnumerator() end
---@param name string
---@return UnityEngine.AnimationClip
function UnityEngine.Animation:GetClip(name) end

---@class UnityEngine.Animation.Enumerator : System.Object
---@field Current System.Object
UnityEngine.Animation.Enumerator = {}
---@alias CS.UnityEngine.Animation.Enumerator UnityEngine.Animation.Enumerator
CS.UnityEngine.Animation.Enumerator = UnityEngine.Animation.Enumerator

---@return boolean
function UnityEngine.Animation.Enumerator:MoveNext() end
function UnityEngine.Animation.Enumerator:Reset() end

---@class UnityEngine.AnimationState : UnityEngine.TrackedReference
---@field enabled boolean
---@field weight number
---@field wrapMode UnityEngine.WrapMode
---@field time number
---@field normalizedTime number
---@field speed number
---@field normalizedSpeed number
---@field length number
---@field layer number
---@field clip UnityEngine.AnimationClip
---@field name string
---@field blendMode UnityEngine.AnimationBlendMode
UnityEngine.AnimationState = {}
---@alias CS.UnityEngine.AnimationState UnityEngine.AnimationState
CS.UnityEngine.AnimationState = UnityEngine.AnimationState

---@return UnityEngine.AnimationState
function UnityEngine.AnimationState.New() end
---@overload fun(self: UnityEngine.AnimationState, mix: UnityEngine.Transform)
---@param mix UnityEngine.Transform
---@param recursive boolean
function UnityEngine.AnimationState:AddMixingTransform(mix, recursive) end
---@param mix UnityEngine.Transform
function UnityEngine.AnimationState:RemoveMixingTransform(mix) end

---@class UnityEngine.AnimationEvent : System.Object
---@field stringParameter string
---@field floatParameter number
---@field intParameter number
---@field objectReferenceParameter UnityEngine.Object
---@field functionName string
---@field time number
---@field messageOptions UnityEngine.SendMessageOptions
---@field isFiredByLegacy boolean
---@field isFiredByAnimator boolean
---@field animationState UnityEngine.AnimationState
---@field animatorStateInfo UnityEngine.AnimatorStateInfo
---@field animatorClipInfo UnityEngine.AnimatorClipInfo
UnityEngine.AnimationEvent = {}
---@alias CS.UnityEngine.AnimationEvent UnityEngine.AnimationEvent
CS.UnityEngine.AnimationEvent = UnityEngine.AnimationEvent

---@return UnityEngine.AnimationEvent
function UnityEngine.AnimationEvent.New() end

---@class UnityEngine.AnimationClip : UnityEngine.Motion
---@field length number
---@field frameRate number
---@field wrapMode UnityEngine.WrapMode
---@field localBounds UnityEngine.Bounds
---@field legacy boolean
---@field humanMotion boolean
---@field empty boolean
---@field hasGenericRootTransform boolean
---@field hasMotionFloatCurves boolean
---@field hasMotionCurves boolean
---@field hasRootCurves boolean
---@field events UnityEngine.AnimationEvent[]
UnityEngine.AnimationClip = {}
---@alias CS.UnityEngine.AnimationClip UnityEngine.AnimationClip
CS.UnityEngine.AnimationClip = UnityEngine.AnimationClip

---@return UnityEngine.AnimationClip
function UnityEngine.AnimationClip.New() end
---@param go UnityEngine.GameObject
---@param time number
function UnityEngine.AnimationClip:SampleAnimation(go, time) end
---@param relativePath string
---@param type System.Type
---@param propertyName string
---@param curve UnityEngine.AnimationCurve
function UnityEngine.AnimationClip:SetCurve(relativePath, type, propertyName, curve) end
function UnityEngine.AnimationClip:EnsureQuaternionContinuity() end
function UnityEngine.AnimationClip:ClearCurves() end
---@param evt UnityEngine.AnimationEvent
function UnityEngine.AnimationClip:AddEvent(evt) end

---@class UnityEngine.AvatarTarget
---@field Root UnityEngine.AvatarTarget
---@field Body UnityEngine.AvatarTarget
---@field LeftFoot UnityEngine.AvatarTarget
---@field RightFoot UnityEngine.AvatarTarget
---@field LeftHand UnityEngine.AvatarTarget
---@field RightHand UnityEngine.AvatarTarget
UnityEngine.AvatarTarget = {}
---@alias CS.UnityEngine.AvatarTarget UnityEngine.AvatarTarget
CS.UnityEngine.AvatarTarget = UnityEngine.AvatarTarget


---@class UnityEngine.AvatarIKGoal
---@field LeftFoot UnityEngine.AvatarIKGoal
---@field RightFoot UnityEngine.AvatarIKGoal
---@field LeftHand UnityEngine.AvatarIKGoal
---@field RightHand UnityEngine.AvatarIKGoal
UnityEngine.AvatarIKGoal = {}
---@alias CS.UnityEngine.AvatarIKGoal UnityEngine.AvatarIKGoal
CS.UnityEngine.AvatarIKGoal = UnityEngine.AvatarIKGoal


---@class UnityEngine.AvatarIKHint
---@field LeftKnee UnityEngine.AvatarIKHint
---@field RightKnee UnityEngine.AvatarIKHint
---@field LeftElbow UnityEngine.AvatarIKHint
---@field RightElbow UnityEngine.AvatarIKHint
UnityEngine.AvatarIKHint = {}
---@alias CS.UnityEngine.AvatarIKHint UnityEngine.AvatarIKHint
CS.UnityEngine.AvatarIKHint = UnityEngine.AvatarIKHint


---@class UnityEngine.AnimatorControllerParameterType
---@field Float UnityEngine.AnimatorControllerParameterType
---@field Int UnityEngine.AnimatorControllerParameterType
---@field Bool UnityEngine.AnimatorControllerParameterType
---@field Trigger UnityEngine.AnimatorControllerParameterType
UnityEngine.AnimatorControllerParameterType = {}
---@alias CS.UnityEngine.AnimatorControllerParameterType UnityEngine.AnimatorControllerParameterType
CS.UnityEngine.AnimatorControllerParameterType = UnityEngine.AnimatorControllerParameterType


---@class UnityEngine.AnimatorControllerParameterTypeConstants : System.Object
---@field InvalidType number
UnityEngine.AnimatorControllerParameterTypeConstants = {}
---@alias CS.UnityEngine.AnimatorControllerParameterTypeConstants UnityEngine.AnimatorControllerParameterTypeConstants
CS.UnityEngine.AnimatorControllerParameterTypeConstants = UnityEngine.AnimatorControllerParameterTypeConstants


---@class UnityEngine.TransitionType
---@field Normal UnityEngine.TransitionType
---@field Entry UnityEngine.TransitionType
---@field Exit UnityEngine.TransitionType
UnityEngine.TransitionType = {}
---@alias CS.UnityEngine.TransitionType UnityEngine.TransitionType
CS.UnityEngine.TransitionType = UnityEngine.TransitionType


---@class UnityEngine.StateInfoIndex
---@field CurrentState UnityEngine.StateInfoIndex
---@field NextState UnityEngine.StateInfoIndex
---@field ExitState UnityEngine.StateInfoIndex
---@field InterruptedState UnityEngine.StateInfoIndex
UnityEngine.StateInfoIndex = {}
---@alias CS.UnityEngine.StateInfoIndex UnityEngine.StateInfoIndex
CS.UnityEngine.StateInfoIndex = UnityEngine.StateInfoIndex


---@class UnityEngine.AnimatorRecorderMode
---@field Offline UnityEngine.AnimatorRecorderMode
---@field Playback UnityEngine.AnimatorRecorderMode
---@field Record UnityEngine.AnimatorRecorderMode
UnityEngine.AnimatorRecorderMode = {}
---@alias CS.UnityEngine.AnimatorRecorderMode UnityEngine.AnimatorRecorderMode
CS.UnityEngine.AnimatorRecorderMode = UnityEngine.AnimatorRecorderMode


---@class UnityEngine.DurationUnit
---@field Fixed UnityEngine.DurationUnit
---@field Normalized UnityEngine.DurationUnit
UnityEngine.DurationUnit = {}
---@alias CS.UnityEngine.DurationUnit UnityEngine.DurationUnit
CS.UnityEngine.DurationUnit = UnityEngine.DurationUnit


---@class UnityEngine.AnimatorCullingMode
---@field AlwaysAnimate UnityEngine.AnimatorCullingMode
---@field CullUpdateTransforms UnityEngine.AnimatorCullingMode
---@field CullCompletely UnityEngine.AnimatorCullingMode
UnityEngine.AnimatorCullingMode = {}
---@alias CS.UnityEngine.AnimatorCullingMode UnityEngine.AnimatorCullingMode
CS.UnityEngine.AnimatorCullingMode = UnityEngine.AnimatorCullingMode


---@class UnityEngine.AnimatorUpdateMode
---@field Normal UnityEngine.AnimatorUpdateMode
---@field AnimatePhysics UnityEngine.AnimatorUpdateMode
---@field UnscaledTime UnityEngine.AnimatorUpdateMode
UnityEngine.AnimatorUpdateMode = {}
---@alias CS.UnityEngine.AnimatorUpdateMode UnityEngine.AnimatorUpdateMode
CS.UnityEngine.AnimatorUpdateMode = UnityEngine.AnimatorUpdateMode


---@class UnityEngine.AnimatorClipInfo : System.ValueType
---@field clip UnityEngine.AnimationClip
---@field weight number
UnityEngine.AnimatorClipInfo = {}
---@alias CS.UnityEngine.AnimatorClipInfo UnityEngine.AnimatorClipInfo
CS.UnityEngine.AnimatorClipInfo = UnityEngine.AnimatorClipInfo


---@class UnityEngine.AnimatorStateInfo : System.ValueType
---@field fullPathHash number
---@field shortNameHash number
---@field normalizedTime number
---@field length number
---@field speed number
---@field speedMultiplier number
---@field tagHash number
---@field loop boolean
UnityEngine.AnimatorStateInfo = {}
---@alias CS.UnityEngine.AnimatorStateInfo UnityEngine.AnimatorStateInfo
CS.UnityEngine.AnimatorStateInfo = UnityEngine.AnimatorStateInfo

---@param name string
---@return boolean
function UnityEngine.AnimatorStateInfo:IsName(name) end
---@param tag string
---@return boolean
function UnityEngine.AnimatorStateInfo:IsTag(tag) end

---@class UnityEngine.AnimatorTransitionInfo : System.ValueType
---@field fullPathHash number
---@field nameHash number
---@field userNameHash number
---@field durationUnit UnityEngine.DurationUnit
---@field duration number
---@field normalizedTime number
---@field anyState boolean
UnityEngine.AnimatorTransitionInfo = {}
---@alias CS.UnityEngine.AnimatorTransitionInfo UnityEngine.AnimatorTransitionInfo
CS.UnityEngine.AnimatorTransitionInfo = UnityEngine.AnimatorTransitionInfo

---@param name string
---@return boolean
function UnityEngine.AnimatorTransitionInfo:IsName(name) end
---@param name string
---@return boolean
function UnityEngine.AnimatorTransitionInfo:IsUserName(name) end

---@class UnityEngine.MatchTargetWeightMask : System.ValueType
---@field positionXYZWeight UnityEngine.Vector3
---@field rotationWeight number
UnityEngine.MatchTargetWeightMask = {}
---@alias CS.UnityEngine.MatchTargetWeightMask UnityEngine.MatchTargetWeightMask
CS.UnityEngine.MatchTargetWeightMask = UnityEngine.MatchTargetWeightMask

---@param positionXYZWeight UnityEngine.Vector3
---@param rotationWeight number
---@return UnityEngine.MatchTargetWeightMask
function UnityEngine.MatchTargetWeightMask.New(positionXYZWeight, rotationWeight) end

---@class UnityEngine.AnimatorControllerParameter : System.Object
---@field name string
---@field nameHash number
---@field type UnityEngine.AnimatorControllerParameterType
---@field defaultFloat number
---@field defaultInt number
---@field defaultBool boolean
UnityEngine.AnimatorControllerParameter = {}
---@alias CS.UnityEngine.AnimatorControllerParameter UnityEngine.AnimatorControllerParameter
CS.UnityEngine.AnimatorControllerParameter = UnityEngine.AnimatorControllerParameter

---@return UnityEngine.AnimatorControllerParameter
function UnityEngine.AnimatorControllerParameter.New() end
---@param o System.Object
---@return boolean
function UnityEngine.AnimatorControllerParameter:Equals(o) end
---@return number
function UnityEngine.AnimatorControllerParameter:GetHashCode() end

---@class UnityEngine.AnimationClipPair : System.Object
---@field originalClip UnityEngine.AnimationClip
---@field overrideClip UnityEngine.AnimationClip
UnityEngine.AnimationClipPair = {}
---@alias CS.UnityEngine.AnimationClipPair UnityEngine.AnimationClipPair
CS.UnityEngine.AnimationClipPair = UnityEngine.AnimationClipPair

---@return UnityEngine.AnimationClipPair
function UnityEngine.AnimationClipPair.New() end

---@class UnityEngine.AnimatorOverrideController : UnityEngine.RuntimeAnimatorController
---@field runtimeAnimatorController UnityEngine.RuntimeAnimatorController
---@field Item UnityEngine.AnimationClip
---@field Item UnityEngine.AnimationClip
---@field overridesCount number
UnityEngine.AnimatorOverrideController = {}
---@alias CS.UnityEngine.AnimatorOverrideController UnityEngine.AnimatorOverrideController
CS.UnityEngine.AnimatorOverrideController = UnityEngine.AnimatorOverrideController

---@overload fun() : UnityEngine.AnimatorOverrideController
---@param controller UnityEngine.RuntimeAnimatorController
---@return UnityEngine.AnimatorOverrideController
function UnityEngine.AnimatorOverrideController.New(controller) end
---@param overrides System.Collections.Generic.List
function UnityEngine.AnimatorOverrideController:GetOverrides(overrides) end
---@param overrides System.Collections.Generic.IList
function UnityEngine.AnimatorOverrideController:ApplyOverrides(overrides) end

---@class UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback : System.MulticastDelegate
UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback = {}
---@alias CS.UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback
CS.UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback = UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback
function UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback.New(object, method) end
function UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.AnimatorOverrideController.OnOverrideControllerDirtyCallback:EndInvoke(result) end

---@class UnityEngine.AnimatorUtility : System.Object
UnityEngine.AnimatorUtility = {}
---@alias CS.UnityEngine.AnimatorUtility UnityEngine.AnimatorUtility
CS.UnityEngine.AnimatorUtility = UnityEngine.AnimatorUtility

---@return UnityEngine.AnimatorUtility
function UnityEngine.AnimatorUtility.New() end
---@param go UnityEngine.GameObject
---@param exposedTransforms System.String[]
function UnityEngine.AnimatorUtility.OptimizeTransformHierarchy(go, exposedTransforms) end
---@param go UnityEngine.GameObject
function UnityEngine.AnimatorUtility.DeoptimizeTransformHierarchy(go) end

---@class UnityEngine.BodyDof
---@field SpineFrontBack UnityEngine.BodyDof
---@field SpineLeftRight UnityEngine.BodyDof
---@field SpineRollLeftRight UnityEngine.BodyDof
---@field ChestFrontBack UnityEngine.BodyDof
---@field ChestLeftRight UnityEngine.BodyDof
---@field ChestRollLeftRight UnityEngine.BodyDof
---@field UpperChestFrontBack UnityEngine.BodyDof
---@field UpperChestLeftRight UnityEngine.BodyDof
---@field UpperChestRollLeftRight UnityEngine.BodyDof
---@field LastBodyDof UnityEngine.BodyDof
UnityEngine.BodyDof = {}
---@alias CS.UnityEngine.BodyDof UnityEngine.BodyDof
CS.UnityEngine.BodyDof = UnityEngine.BodyDof


---@class UnityEngine.HeadDof
---@field NeckFrontBack UnityEngine.HeadDof
---@field NeckLeftRight UnityEngine.HeadDof
---@field NeckRollLeftRight UnityEngine.HeadDof
---@field HeadFrontBack UnityEngine.HeadDof
---@field HeadLeftRight UnityEngine.HeadDof
---@field HeadRollLeftRight UnityEngine.HeadDof
---@field LeftEyeDownUp UnityEngine.HeadDof
---@field LeftEyeInOut UnityEngine.HeadDof
---@field RightEyeDownUp UnityEngine.HeadDof
---@field RightEyeInOut UnityEngine.HeadDof
---@field JawDownUp UnityEngine.HeadDof
---@field JawLeftRight UnityEngine.HeadDof
---@field LastHeadDof UnityEngine.HeadDof
UnityEngine.HeadDof = {}
---@alias CS.UnityEngine.HeadDof UnityEngine.HeadDof
CS.UnityEngine.HeadDof = UnityEngine.HeadDof


---@class UnityEngine.LegDof
---@field UpperLegFrontBack UnityEngine.LegDof
---@field UpperLegInOut UnityEngine.LegDof
---@field UpperLegRollInOut UnityEngine.LegDof
---@field LegCloseOpen UnityEngine.LegDof
---@field LegRollInOut UnityEngine.LegDof
---@field FootCloseOpen UnityEngine.LegDof
---@field FootInOut UnityEngine.LegDof
---@field ToesUpDown UnityEngine.LegDof
---@field LastLegDof UnityEngine.LegDof
UnityEngine.LegDof = {}
---@alias CS.UnityEngine.LegDof UnityEngine.LegDof
CS.UnityEngine.LegDof = UnityEngine.LegDof


---@class UnityEngine.ArmDof
---@field ShoulderDownUp UnityEngine.ArmDof
---@field ShoulderFrontBack UnityEngine.ArmDof
---@field ArmDownUp UnityEngine.ArmDof
---@field ArmFrontBack UnityEngine.ArmDof
---@field ArmRollInOut UnityEngine.ArmDof
---@field ForeArmCloseOpen UnityEngine.ArmDof
---@field ForeArmRollInOut UnityEngine.ArmDof
---@field HandDownUp UnityEngine.ArmDof
---@field HandInOut UnityEngine.ArmDof
---@field LastArmDof UnityEngine.ArmDof
UnityEngine.ArmDof = {}
---@alias CS.UnityEngine.ArmDof UnityEngine.ArmDof
CS.UnityEngine.ArmDof = UnityEngine.ArmDof


---@class UnityEngine.FingerDof
---@field ProximalDownUp UnityEngine.FingerDof
---@field ProximalInOut UnityEngine.FingerDof
---@field IntermediateCloseOpen UnityEngine.FingerDof
---@field DistalCloseOpen UnityEngine.FingerDof
---@field LastFingerDof UnityEngine.FingerDof
UnityEngine.FingerDof = {}
---@alias CS.UnityEngine.FingerDof UnityEngine.FingerDof
CS.UnityEngine.FingerDof = UnityEngine.FingerDof


---@class UnityEngine.HumanPartDof
---@field Body UnityEngine.HumanPartDof
---@field Head UnityEngine.HumanPartDof
---@field LeftLeg UnityEngine.HumanPartDof
---@field RightLeg UnityEngine.HumanPartDof
---@field LeftArm UnityEngine.HumanPartDof
---@field RightArm UnityEngine.HumanPartDof
---@field LeftThumb UnityEngine.HumanPartDof
---@field LeftIndex UnityEngine.HumanPartDof
---@field LeftMiddle UnityEngine.HumanPartDof
---@field LeftRing UnityEngine.HumanPartDof
---@field LeftLittle UnityEngine.HumanPartDof
---@field RightThumb UnityEngine.HumanPartDof
---@field RightIndex UnityEngine.HumanPartDof
---@field RightMiddle UnityEngine.HumanPartDof
---@field RightRing UnityEngine.HumanPartDof
---@field RightLittle UnityEngine.HumanPartDof
---@field LastHumanPartDof UnityEngine.HumanPartDof
UnityEngine.HumanPartDof = {}
---@alias CS.UnityEngine.HumanPartDof UnityEngine.HumanPartDof
CS.UnityEngine.HumanPartDof = UnityEngine.HumanPartDof


---@class UnityEngine.Dof
---@field BodyDofStart UnityEngine.Dof
---@field HeadDofStart UnityEngine.Dof
---@field LeftLegDofStart UnityEngine.Dof
---@field RightLegDofStart UnityEngine.Dof
---@field LeftArmDofStart UnityEngine.Dof
---@field RightArmDofStart UnityEngine.Dof
---@field LeftThumbDofStart UnityEngine.Dof
---@field LeftIndexDofStart UnityEngine.Dof
---@field LeftMiddleDofStart UnityEngine.Dof
---@field LeftRingDofStart UnityEngine.Dof
---@field LeftLittleDofStart UnityEngine.Dof
---@field RightThumbDofStart UnityEngine.Dof
---@field RightIndexDofStart UnityEngine.Dof
---@field RightMiddleDofStart UnityEngine.Dof
---@field RightRingDofStart UnityEngine.Dof
---@field RightLittleDofStart UnityEngine.Dof
---@field LastDof UnityEngine.Dof
UnityEngine.Dof = {}
---@alias CS.UnityEngine.Dof UnityEngine.Dof
CS.UnityEngine.Dof = UnityEngine.Dof


---@class UnityEngine.HumanBodyBones
---@field Hips UnityEngine.HumanBodyBones
---@field LeftUpperLeg UnityEngine.HumanBodyBones
---@field RightUpperLeg UnityEngine.HumanBodyBones
---@field LeftLowerLeg UnityEngine.HumanBodyBones
---@field RightLowerLeg UnityEngine.HumanBodyBones
---@field LeftFoot UnityEngine.HumanBodyBones
---@field RightFoot UnityEngine.HumanBodyBones
---@field Spine UnityEngine.HumanBodyBones
---@field Chest UnityEngine.HumanBodyBones
---@field UpperChest UnityEngine.HumanBodyBones
---@field Neck UnityEngine.HumanBodyBones
---@field Head UnityEngine.HumanBodyBones
---@field LeftShoulder UnityEngine.HumanBodyBones
---@field RightShoulder UnityEngine.HumanBodyBones
---@field LeftUpperArm UnityEngine.HumanBodyBones
---@field RightUpperArm UnityEngine.HumanBodyBones
---@field LeftLowerArm UnityEngine.HumanBodyBones
---@field RightLowerArm UnityEngine.HumanBodyBones
---@field LeftHand UnityEngine.HumanBodyBones
---@field RightHand UnityEngine.HumanBodyBones
---@field LeftToes UnityEngine.HumanBodyBones
---@field RightToes UnityEngine.HumanBodyBones
---@field LeftEye UnityEngine.HumanBodyBones
---@field RightEye UnityEngine.HumanBodyBones
---@field Jaw UnityEngine.HumanBodyBones
---@field LeftThumbProximal UnityEngine.HumanBodyBones
---@field LeftThumbIntermediate UnityEngine.HumanBodyBones
---@field LeftThumbDistal UnityEngine.HumanBodyBones
---@field LeftIndexProximal UnityEngine.HumanBodyBones
---@field LeftIndexIntermediate UnityEngine.HumanBodyBones
---@field LeftIndexDistal UnityEngine.HumanBodyBones
---@field LeftMiddleProximal UnityEngine.HumanBodyBones
---@field LeftMiddleIntermediate UnityEngine.HumanBodyBones
---@field LeftMiddleDistal UnityEngine.HumanBodyBones
---@field LeftRingProximal UnityEngine.HumanBodyBones
---@field LeftRingIntermediate UnityEngine.HumanBodyBones
---@field LeftRingDistal UnityEngine.HumanBodyBones
---@field LeftLittleProximal UnityEngine.HumanBodyBones
---@field LeftLittleIntermediate UnityEngine.HumanBodyBones
---@field LeftLittleDistal UnityEngine.HumanBodyBones
---@field RightThumbProximal UnityEngine.HumanBodyBones
---@field RightThumbIntermediate UnityEngine.HumanBodyBones
---@field RightThumbDistal UnityEngine.HumanBodyBones
---@field RightIndexProximal UnityEngine.HumanBodyBones
---@field RightIndexIntermediate UnityEngine.HumanBodyBones
---@field RightIndexDistal UnityEngine.HumanBodyBones
---@field RightMiddleProximal UnityEngine.HumanBodyBones
---@field RightMiddleIntermediate UnityEngine.HumanBodyBones
---@field RightMiddleDistal UnityEngine.HumanBodyBones
---@field RightRingProximal UnityEngine.HumanBodyBones
---@field RightRingIntermediate UnityEngine.HumanBodyBones
---@field RightRingDistal UnityEngine.HumanBodyBones
---@field RightLittleProximal UnityEngine.HumanBodyBones
---@field RightLittleIntermediate UnityEngine.HumanBodyBones
---@field RightLittleDistal UnityEngine.HumanBodyBones
---@field LastBone UnityEngine.HumanBodyBones
UnityEngine.HumanBodyBones = {}
---@alias CS.UnityEngine.HumanBodyBones UnityEngine.HumanBodyBones
CS.UnityEngine.HumanBodyBones = UnityEngine.HumanBodyBones


---@class UnityEngine.HumanParameter
---@field UpperArmTwist UnityEngine.HumanParameter
---@field LowerArmTwist UnityEngine.HumanParameter
---@field UpperLegTwist UnityEngine.HumanParameter
---@field LowerLegTwist UnityEngine.HumanParameter
---@field ArmStretch UnityEngine.HumanParameter
---@field LegStretch UnityEngine.HumanParameter
---@field FeetSpacing UnityEngine.HumanParameter
UnityEngine.HumanParameter = {}
---@alias CS.UnityEngine.HumanParameter UnityEngine.HumanParameter
CS.UnityEngine.HumanParameter = UnityEngine.HumanParameter


---@class UnityEngine.Avatar : UnityEngine.Object
---@field isValid boolean
---@field isHuman boolean
---@field humanDescription UnityEngine.HumanDescription
UnityEngine.Avatar = {}
---@alias CS.UnityEngine.Avatar UnityEngine.Avatar
CS.UnityEngine.Avatar = UnityEngine.Avatar


---@class UnityEngine.SkeletonBone : System.ValueType
---@field name string
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field scale UnityEngine.Vector3
UnityEngine.SkeletonBone = {}
---@alias CS.UnityEngine.SkeletonBone UnityEngine.SkeletonBone
CS.UnityEngine.SkeletonBone = UnityEngine.SkeletonBone


---@class UnityEngine.HumanLimit : System.ValueType
---@field useDefaultValues boolean
---@field min UnityEngine.Vector3
---@field max UnityEngine.Vector3
---@field center UnityEngine.Vector3
---@field axisLength number
UnityEngine.HumanLimit = {}
---@alias CS.UnityEngine.HumanLimit UnityEngine.HumanLimit
CS.UnityEngine.HumanLimit = UnityEngine.HumanLimit


---@class UnityEngine.HumanBone : System.ValueType
---@field limit UnityEngine.HumanLimit
---@field boneName string
---@field humanName string
UnityEngine.HumanBone = {}
---@alias CS.UnityEngine.HumanBone UnityEngine.HumanBone
CS.UnityEngine.HumanBone = UnityEngine.HumanBone


---@class UnityEngine.HumanDescription : System.ValueType
---@field human UnityEngine.HumanBone[]
---@field skeleton UnityEngine.SkeletonBone[]
---@field upperArmTwist number
---@field lowerArmTwist number
---@field upperLegTwist number
---@field lowerLegTwist number
---@field armStretch number
---@field legStretch number
---@field feetSpacing number
---@field hasTranslationDoF boolean
UnityEngine.HumanDescription = {}
---@alias CS.UnityEngine.HumanDescription UnityEngine.HumanDescription
CS.UnityEngine.HumanDescription = UnityEngine.HumanDescription


---@class UnityEngine.AvatarBuilder : System.Object
UnityEngine.AvatarBuilder = {}
---@alias CS.UnityEngine.AvatarBuilder UnityEngine.AvatarBuilder
CS.UnityEngine.AvatarBuilder = UnityEngine.AvatarBuilder

---@return UnityEngine.AvatarBuilder
function UnityEngine.AvatarBuilder.New() end
---@param go UnityEngine.GameObject
---@param humanDescription UnityEngine.HumanDescription
---@return UnityEngine.Avatar
function UnityEngine.AvatarBuilder.BuildHumanAvatar(go, humanDescription) end
---@param go UnityEngine.GameObject
---@param rootMotionTransformName string
---@return UnityEngine.Avatar
function UnityEngine.AvatarBuilder.BuildGenericAvatar(go, rootMotionTransformName) end

---@class UnityEngine.AvatarMaskBodyPart
---@field Root UnityEngine.AvatarMaskBodyPart
---@field Body UnityEngine.AvatarMaskBodyPart
---@field Head UnityEngine.AvatarMaskBodyPart
---@field LeftLeg UnityEngine.AvatarMaskBodyPart
---@field RightLeg UnityEngine.AvatarMaskBodyPart
---@field LeftArm UnityEngine.AvatarMaskBodyPart
---@field RightArm UnityEngine.AvatarMaskBodyPart
---@field LeftFingers UnityEngine.AvatarMaskBodyPart
---@field RightFingers UnityEngine.AvatarMaskBodyPart
---@field LeftFootIK UnityEngine.AvatarMaskBodyPart
---@field RightFootIK UnityEngine.AvatarMaskBodyPart
---@field LeftHandIK UnityEngine.AvatarMaskBodyPart
---@field RightHandIK UnityEngine.AvatarMaskBodyPart
---@field LastBodyPart UnityEngine.AvatarMaskBodyPart
UnityEngine.AvatarMaskBodyPart = {}
---@alias CS.UnityEngine.AvatarMaskBodyPart UnityEngine.AvatarMaskBodyPart
CS.UnityEngine.AvatarMaskBodyPart = UnityEngine.AvatarMaskBodyPart


---@class UnityEngine.AvatarMask : UnityEngine.Object
---@field transformCount number
UnityEngine.AvatarMask = {}
---@alias CS.UnityEngine.AvatarMask UnityEngine.AvatarMask
CS.UnityEngine.AvatarMask = UnityEngine.AvatarMask

---@return UnityEngine.AvatarMask
function UnityEngine.AvatarMask.New() end
---@param index UnityEngine.AvatarMaskBodyPart
---@return boolean
function UnityEngine.AvatarMask:GetHumanoidBodyPartActive(index) end
---@param index UnityEngine.AvatarMaskBodyPart
---@param value boolean
function UnityEngine.AvatarMask:SetHumanoidBodyPartActive(index, value) end
---@overload fun(self: UnityEngine.AvatarMask, transform: UnityEngine.Transform)
---@param transform UnityEngine.Transform
---@param recursive boolean
function UnityEngine.AvatarMask:AddTransformPath(transform, recursive) end
---@overload fun(self: UnityEngine.AvatarMask, transform: UnityEngine.Transform)
---@param transform UnityEngine.Transform
---@param recursive boolean
function UnityEngine.AvatarMask:RemoveTransformPath(transform, recursive) end
---@param index number
---@return string
function UnityEngine.AvatarMask:GetTransformPath(index) end
---@param index number
---@param path string
function UnityEngine.AvatarMask:SetTransformPath(index, path) end
---@param index number
---@return boolean
function UnityEngine.AvatarMask:GetTransformActive(index) end
---@param index number
---@param value boolean
function UnityEngine.AvatarMask:SetTransformActive(index, value) end

---@class UnityEngine.HumanPose : System.ValueType
---@field bodyPosition UnityEngine.Vector3
---@field bodyRotation UnityEngine.Quaternion
---@field muscles System.Single[]
UnityEngine.HumanPose = {}
---@alias CS.UnityEngine.HumanPose UnityEngine.HumanPose
CS.UnityEngine.HumanPose = UnityEngine.HumanPose


---@class UnityEngine.HumanPoseHandler : System.Object
UnityEngine.HumanPoseHandler = {}
---@alias CS.UnityEngine.HumanPoseHandler UnityEngine.HumanPoseHandler
CS.UnityEngine.HumanPoseHandler = UnityEngine.HumanPoseHandler

---@overload fun(avatar: UnityEngine.Avatar, root: UnityEngine.Transform) : UnityEngine.HumanPoseHandler
---@param avatar UnityEngine.Avatar
---@param jointPaths System.String[]
---@return UnityEngine.HumanPoseHandler
function UnityEngine.HumanPoseHandler.New(avatar, jointPaths) end
function UnityEngine.HumanPoseHandler:Dispose() end
---@param ref_humanPose UnityEngine.HumanPose
---@return ,UnityEngine.HumanPose
function UnityEngine.HumanPoseHandler:GetHumanPose(ref_humanPose) end
---@param ref_humanPose UnityEngine.HumanPose
---@return ,UnityEngine.HumanPose
function UnityEngine.HumanPoseHandler:SetHumanPose(ref_humanPose) end
---@param ref_humanPose UnityEngine.HumanPose
---@return ,UnityEngine.HumanPose
function UnityEngine.HumanPoseHandler:GetInternalHumanPose(ref_humanPose) end
---@param ref_humanPose UnityEngine.HumanPose
---@return ,UnityEngine.HumanPose
function UnityEngine.HumanPoseHandler:SetInternalHumanPose(ref_humanPose) end
---@param avatarPose Unity.Collections.NativeArray
function UnityEngine.HumanPoseHandler:GetInternalAvatarPose(avatarPose) end
---@param avatarPose Unity.Collections.NativeArray
function UnityEngine.HumanPoseHandler:SetInternalAvatarPose(avatarPose) end

---@class UnityEngine.HumanTrait : System.Object
---@field MuscleCount number
---@field MuscleName System.String[]
---@field BoneCount number
---@field BoneName System.String[]
---@field RequiredBoneCount number
UnityEngine.HumanTrait = {}
---@alias CS.UnityEngine.HumanTrait UnityEngine.HumanTrait
CS.UnityEngine.HumanTrait = UnityEngine.HumanTrait

---@return UnityEngine.HumanTrait
function UnityEngine.HumanTrait.New() end
---@param i number
---@param dofIndex number
---@return number
function UnityEngine.HumanTrait.MuscleFromBone(i, dofIndex) end
---@param i number
---@return number
function UnityEngine.HumanTrait.BoneFromMuscle(i) end
---@param i number
---@return boolean
function UnityEngine.HumanTrait.RequiredBone(i) end
---@param i number
---@return number
function UnityEngine.HumanTrait.GetMuscleDefaultMin(i) end
---@param i number
---@return number
function UnityEngine.HumanTrait.GetMuscleDefaultMax(i) end
---@param i number
---@return number
function UnityEngine.HumanTrait.GetBoneDefaultHierarchyMass(i) end
---@param i number
---@return number
function UnityEngine.HumanTrait.GetParentBone(i) end

---@class UnityEngine.Motion : UnityEngine.Object
---@field averageDuration number
---@field averageAngularSpeed number
---@field averageSpeed UnityEngine.Vector3
---@field apparentSpeed number
---@field isLooping boolean
---@field legacy boolean
---@field isHumanMotion boolean
UnityEngine.Motion = {}
---@alias CS.UnityEngine.Motion UnityEngine.Motion
CS.UnityEngine.Motion = UnityEngine.Motion


---@class UnityEngine.RuntimeAnimatorController : UnityEngine.Object
---@field animationClips UnityEngine.AnimationClip[]
UnityEngine.RuntimeAnimatorController = {}
---@alias CS.UnityEngine.RuntimeAnimatorController UnityEngine.RuntimeAnimatorController
CS.UnityEngine.RuntimeAnimatorController = UnityEngine.RuntimeAnimatorController


---@class UnityEngine.Experimental.Animations.AnimationStreamSource
---@field DefaultValues UnityEngine.Experimental.Animations.AnimationStreamSource
---@field PreviousInputs UnityEngine.Experimental.Animations.AnimationStreamSource
UnityEngine.Experimental.Animations.AnimationStreamSource = {}
---@alias CS.UnityEngine.Experimental.Animations.AnimationStreamSource UnityEngine.Experimental.Animations.AnimationStreamSource
CS.UnityEngine.Experimental.Animations.AnimationStreamSource = UnityEngine.Experimental.Animations.AnimationStreamSource


---@class UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions : System.Object
UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions = {}
---@alias CS.UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions
CS.UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions = UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions

---@param output UnityEngine.Animations.AnimationPlayableOutput
---@return UnityEngine.Experimental.Animations.AnimationStreamSource
function UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions.GetAnimationStreamSource(output) end
---@param output UnityEngine.Animations.AnimationPlayableOutput
---@param streamSource UnityEngine.Experimental.Animations.AnimationStreamSource
function UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions.SetAnimationStreamSource(output, streamSource) end
---@param output UnityEngine.Animations.AnimationPlayableOutput
---@return number
function UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions.GetSortingOrder(output) end
---@param output UnityEngine.Animations.AnimationPlayableOutput
---@param sortingOrder number
function UnityEngine.Experimental.Animations.AnimationPlayableOutputExtensions.SetSortingOrder(output, sortingOrder) end

---@class UnityEngine.Playables.AnimationPlayableUtilities : System.Object
UnityEngine.Playables.AnimationPlayableUtilities = {}
---@alias CS.UnityEngine.Playables.AnimationPlayableUtilities UnityEngine.Playables.AnimationPlayableUtilities
CS.UnityEngine.Playables.AnimationPlayableUtilities = UnityEngine.Playables.AnimationPlayableUtilities

---@param animator UnityEngine.Animator
---@param clip UnityEngine.AnimationClip
---@param out_graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationClipPlayable,UnityEngine.Playables.PlayableGraph
function UnityEngine.Playables.AnimationPlayableUtilities.PlayClip(animator, clip, out_graph) end
---@param animator UnityEngine.Animator
---@param inputCount number
---@param out_graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationMixerPlayable,UnityEngine.Playables.PlayableGraph
function UnityEngine.Playables.AnimationPlayableUtilities.PlayMixer(animator, inputCount, out_graph) end
---@param animator UnityEngine.Animator
---@param inputCount number
---@param out_graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationLayerMixerPlayable,UnityEngine.Playables.PlayableGraph
function UnityEngine.Playables.AnimationPlayableUtilities.PlayLayerMixer(animator, inputCount, out_graph) end
---@param animator UnityEngine.Animator
---@param controller UnityEngine.RuntimeAnimatorController
---@param out_graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimatorControllerPlayable,UnityEngine.Playables.PlayableGraph
function UnityEngine.Playables.AnimationPlayableUtilities.PlayAnimatorController(animator, controller, out_graph) end

---@class UnityEngine.Animations.AnimationPlayableBinding : System.Object
UnityEngine.Animations.AnimationPlayableBinding = {}
---@alias CS.UnityEngine.Animations.AnimationPlayableBinding UnityEngine.Animations.AnimationPlayableBinding
CS.UnityEngine.Animations.AnimationPlayableBinding = UnityEngine.Animations.AnimationPlayableBinding

---@param name string
---@param key UnityEngine.Object
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Animations.AnimationPlayableBinding.Create(name, key) end

---@class UnityEngine.Animations.DiscreteEvaluationAttribute : System.Attribute
UnityEngine.Animations.DiscreteEvaluationAttribute = {}
---@alias CS.UnityEngine.Animations.DiscreteEvaluationAttribute UnityEngine.Animations.DiscreteEvaluationAttribute
CS.UnityEngine.Animations.DiscreteEvaluationAttribute = UnityEngine.Animations.DiscreteEvaluationAttribute

---@return UnityEngine.Animations.DiscreteEvaluationAttribute
function UnityEngine.Animations.DiscreteEvaluationAttribute.New() end

---@class UnityEngine.Animations.DiscreteEvaluationAttributeUtilities : System.Object
UnityEngine.Animations.DiscreteEvaluationAttributeUtilities = {}
---@alias CS.UnityEngine.Animations.DiscreteEvaluationAttributeUtilities UnityEngine.Animations.DiscreteEvaluationAttributeUtilities
CS.UnityEngine.Animations.DiscreteEvaluationAttributeUtilities = UnityEngine.Animations.DiscreteEvaluationAttributeUtilities

---@param f number
---@return number
function UnityEngine.Animations.DiscreteEvaluationAttributeUtilities.ConvertFloatToDiscreteInt(f) end
---@param f number
---@return number
function UnityEngine.Animations.DiscreteEvaluationAttributeUtilities.ConvertDiscreteIntToFloat(f) end

---@class UnityEngine.Animations.IAnimationJob
UnityEngine.Animations.IAnimationJob = {}
---@alias CS.UnityEngine.Animations.IAnimationJob UnityEngine.Animations.IAnimationJob
CS.UnityEngine.Animations.IAnimationJob = UnityEngine.Animations.IAnimationJob

---@param stream UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.IAnimationJob:ProcessAnimation(stream) end
---@param stream UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.IAnimationJob:ProcessRootMotion(stream) end

---@class UnityEngine.Animations.IAnimationJobPlayable
UnityEngine.Animations.IAnimationJobPlayable = {}
---@alias CS.UnityEngine.Animations.IAnimationJobPlayable UnityEngine.Animations.IAnimationJobPlayable
CS.UnityEngine.Animations.IAnimationJobPlayable = UnityEngine.Animations.IAnimationJobPlayable


---@class UnityEngine.Animations.IAnimationPreviewable
UnityEngine.Animations.IAnimationPreviewable = {}
---@alias CS.UnityEngine.Animations.IAnimationPreviewable UnityEngine.Animations.IAnimationPreviewable
CS.UnityEngine.Animations.IAnimationPreviewable = UnityEngine.Animations.IAnimationPreviewable

function UnityEngine.Animations.IAnimationPreviewable:OnPreviewUpdate() end

---@class UnityEngine.Animations.IAnimationWindowPreview
UnityEngine.Animations.IAnimationWindowPreview = {}
---@alias CS.UnityEngine.Animations.IAnimationWindowPreview UnityEngine.Animations.IAnimationWindowPreview
CS.UnityEngine.Animations.IAnimationWindowPreview = UnityEngine.Animations.IAnimationWindowPreview

function UnityEngine.Animations.IAnimationWindowPreview:StartPreview() end
function UnityEngine.Animations.IAnimationWindowPreview:StopPreview() end
---@param graph UnityEngine.Playables.PlayableGraph
function UnityEngine.Animations.IAnimationWindowPreview:UpdatePreviewGraph(graph) end
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputPlayable UnityEngine.Playables.Playable
---@return UnityEngine.Playables.Playable
function UnityEngine.Animations.IAnimationWindowPreview:BuildPreviewGraph(graph, inputPlayable) end

---@class UnityEngine.Animations.NotKeyableAttribute : System.Attribute
UnityEngine.Animations.NotKeyableAttribute = {}
---@alias CS.UnityEngine.Animations.NotKeyableAttribute UnityEngine.Animations.NotKeyableAttribute
CS.UnityEngine.Animations.NotKeyableAttribute = UnityEngine.Animations.NotKeyableAttribute

---@return UnityEngine.Animations.NotKeyableAttribute
function UnityEngine.Animations.NotKeyableAttribute.New() end

---@class UnityEngine.Animations.JobMethodIndex
---@field ProcessRootMotionMethodIndex UnityEngine.Animations.JobMethodIndex
---@field ProcessAnimationMethodIndex UnityEngine.Animations.JobMethodIndex
---@field MethodIndexCount UnityEngine.Animations.JobMethodIndex
UnityEngine.Animations.JobMethodIndex = {}
---@alias CS.UnityEngine.Animations.JobMethodIndex UnityEngine.Animations.JobMethodIndex
CS.UnityEngine.Animations.JobMethodIndex = UnityEngine.Animations.JobMethodIndex


---@class UnityEngine.Animations.ProcessAnimationJobStruct : System.ValueType
UnityEngine.Animations.ProcessAnimationJobStruct = {}
---@alias CS.UnityEngine.Animations.ProcessAnimationJobStruct UnityEngine.Animations.ProcessAnimationJobStruct
CS.UnityEngine.Animations.ProcessAnimationJobStruct = UnityEngine.Animations.ProcessAnimationJobStruct

---@return System.IntPtr
function UnityEngine.Animations.ProcessAnimationJobStruct.GetJobReflectionData() end
---@param ref_data T
---@param animationStreamPtr System.IntPtr
---@param methodIndex System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Animations.ProcessAnimationJobStruct.Execute(ref_data, animationStreamPtr, methodIndex, ref_ranges, jobIndex) end

---@class UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction : System.MulticastDelegate
UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction = {}
---@alias CS.UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction
CS.UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction = UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction
function UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction.New(object, method) end
---@param ref_data T
---@param animationStreamPtr System.IntPtr
---@param unusedPtr System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction:Invoke(ref_data, animationStreamPtr, unusedPtr, ref_ranges, jobIndex) end
---@param ref_data T
---@param animationStreamPtr System.IntPtr
---@param unusedPtr System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction:BeginInvoke(ref_data, animationStreamPtr, unusedPtr, ref_ranges, jobIndex, callback, object) end
---@param ref_data T
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result System.IAsyncResult
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Animations.ProcessAnimationJobStruct.ExecuteJobFunction:EndInvoke(ref_data, ref_ranges, result) end

---@class UnityEngine.Animations.AimConstraint : UnityEngine.Behaviour
---@field weight number
---@field constraintActive boolean
---@field locked boolean
---@field rotationAtRest UnityEngine.Vector3
---@field rotationOffset UnityEngine.Vector3
---@field rotationAxis UnityEngine.Animations.Axis
---@field aimVector UnityEngine.Vector3
---@field upVector UnityEngine.Vector3
---@field worldUpVector UnityEngine.Vector3
---@field worldUpObject UnityEngine.Transform
---@field worldUpType UnityEngine.Animations.AimConstraint.WorldUpType
---@field sourceCount number
UnityEngine.Animations.AimConstraint = {}
---@alias CS.UnityEngine.Animations.AimConstraint UnityEngine.Animations.AimConstraint
CS.UnityEngine.Animations.AimConstraint = UnityEngine.Animations.AimConstraint

---@param sources System.Collections.Generic.List
function UnityEngine.Animations.AimConstraint:GetSources(sources) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.AimConstraint:SetSources(sources) end
---@param source UnityEngine.Animations.ConstraintSource
---@return number
function UnityEngine.Animations.AimConstraint:AddSource(source) end
---@param index number
function UnityEngine.Animations.AimConstraint:RemoveSource(index) end
---@param index number
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.AimConstraint:GetSource(index) end
---@param index number
---@param source UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.AimConstraint:SetSource(index, source) end

---@class UnityEngine.Animations.AimConstraint.WorldUpType
---@field SceneUp UnityEngine.Animations.AimConstraint.WorldUpType
---@field ObjectUp UnityEngine.Animations.AimConstraint.WorldUpType
---@field ObjectRotationUp UnityEngine.Animations.AimConstraint.WorldUpType
---@field Vector UnityEngine.Animations.AimConstraint.WorldUpType
---@field None UnityEngine.Animations.AimConstraint.WorldUpType
UnityEngine.Animations.AimConstraint.WorldUpType = {}
---@alias CS.UnityEngine.Animations.AimConstraint.WorldUpType UnityEngine.Animations.AimConstraint.WorldUpType
CS.UnityEngine.Animations.AimConstraint.WorldUpType = UnityEngine.Animations.AimConstraint.WorldUpType


---@class UnityEngine.Animations.AnimationClipPlayable : System.ValueType
UnityEngine.Animations.AnimationClipPlayable = {}
---@alias CS.UnityEngine.Animations.AnimationClipPlayable UnityEngine.Animations.AnimationClipPlayable
CS.UnityEngine.Animations.AnimationClipPlayable = UnityEngine.Animations.AnimationClipPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param clip UnityEngine.AnimationClip
---@return UnityEngine.Animations.AnimationClipPlayable
function UnityEngine.Animations.AnimationClipPlayable.Create(graph, clip) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationClipPlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationClipPlayable
---@return boolean
function UnityEngine.Animations.AnimationClipPlayable:Equals(other) end
---@return UnityEngine.AnimationClip
function UnityEngine.Animations.AnimationClipPlayable:GetAnimationClip() end
---@return boolean
function UnityEngine.Animations.AnimationClipPlayable:GetApplyFootIK() end
---@param value boolean
function UnityEngine.Animations.AnimationClipPlayable:SetApplyFootIK(value) end
---@return boolean
function UnityEngine.Animations.AnimationClipPlayable:GetApplyPlayableIK() end
---@param value boolean
function UnityEngine.Animations.AnimationClipPlayable:SetApplyPlayableIK(value) end

---@class UnityEngine.Animations.AnimationHumanStream : System.ValueType
---@field isValid boolean
---@field humanScale number
---@field leftFootHeight number
---@field rightFootHeight number
---@field bodyLocalPosition UnityEngine.Vector3
---@field bodyLocalRotation UnityEngine.Quaternion
---@field bodyPosition UnityEngine.Vector3
---@field bodyRotation UnityEngine.Quaternion
---@field leftFootVelocity UnityEngine.Vector3
---@field rightFootVelocity UnityEngine.Vector3
UnityEngine.Animations.AnimationHumanStream = {}
---@alias CS.UnityEngine.Animations.AnimationHumanStream UnityEngine.Animations.AnimationHumanStream
CS.UnityEngine.Animations.AnimationHumanStream = UnityEngine.Animations.AnimationHumanStream

---@param muscle UnityEngine.Animations.MuscleHandle
---@return number
function UnityEngine.Animations.AnimationHumanStream:GetMuscle(muscle) end
---@param muscle UnityEngine.Animations.MuscleHandle
---@param value number
function UnityEngine.Animations.AnimationHumanStream:SetMuscle(muscle, value) end
function UnityEngine.Animations.AnimationHumanStream:ResetToStancePose() end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:GetGoalPositionFromPose(index) end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Animations.AnimationHumanStream:GetGoalRotationFromPose(index) end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:GetGoalLocalPosition(index) end
---@param index UnityEngine.AvatarIKGoal
---@param pos UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:SetGoalLocalPosition(index, pos) end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Animations.AnimationHumanStream:GetGoalLocalRotation(index) end
---@param index UnityEngine.AvatarIKGoal
---@param rot UnityEngine.Quaternion
function UnityEngine.Animations.AnimationHumanStream:SetGoalLocalRotation(index, rot) end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:GetGoalPosition(index) end
---@param index UnityEngine.AvatarIKGoal
---@param pos UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:SetGoalPosition(index, pos) end
---@param index UnityEngine.AvatarIKGoal
---@return UnityEngine.Quaternion
function UnityEngine.Animations.AnimationHumanStream:GetGoalRotation(index) end
---@param index UnityEngine.AvatarIKGoal
---@param rot UnityEngine.Quaternion
function UnityEngine.Animations.AnimationHumanStream:SetGoalRotation(index, rot) end
---@param index UnityEngine.AvatarIKGoal
---@param value number
function UnityEngine.Animations.AnimationHumanStream:SetGoalWeightPosition(index, value) end
---@param index UnityEngine.AvatarIKGoal
---@param value number
function UnityEngine.Animations.AnimationHumanStream:SetGoalWeightRotation(index, value) end
---@param index UnityEngine.AvatarIKGoal
---@return number
function UnityEngine.Animations.AnimationHumanStream:GetGoalWeightPosition(index) end
---@param index UnityEngine.AvatarIKGoal
---@return number
function UnityEngine.Animations.AnimationHumanStream:GetGoalWeightRotation(index) end
---@param index UnityEngine.AvatarIKHint
---@return UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:GetHintPosition(index) end
---@param index UnityEngine.AvatarIKHint
---@param pos UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:SetHintPosition(index, pos) end
---@param index UnityEngine.AvatarIKHint
---@param value number
function UnityEngine.Animations.AnimationHumanStream:SetHintWeightPosition(index, value) end
---@param index UnityEngine.AvatarIKHint
---@return number
function UnityEngine.Animations.AnimationHumanStream:GetHintWeightPosition(index) end
---@param lookAtPosition UnityEngine.Vector3
function UnityEngine.Animations.AnimationHumanStream:SetLookAtPosition(lookAtPosition) end
---@param weight number
function UnityEngine.Animations.AnimationHumanStream:SetLookAtClampWeight(weight) end
---@param weight number
function UnityEngine.Animations.AnimationHumanStream:SetLookAtBodyWeight(weight) end
---@param weight number
function UnityEngine.Animations.AnimationHumanStream:SetLookAtHeadWeight(weight) end
---@param weight number
function UnityEngine.Animations.AnimationHumanStream:SetLookAtEyesWeight(weight) end
function UnityEngine.Animations.AnimationHumanStream:SolveIK() end

---@class UnityEngine.Animations.AnimationLayerMixerPlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimationLayerMixerPlayable
UnityEngine.Animations.AnimationLayerMixerPlayable = {}
---@alias CS.UnityEngine.Animations.AnimationLayerMixerPlayable UnityEngine.Animations.AnimationLayerMixerPlayable
CS.UnityEngine.Animations.AnimationLayerMixerPlayable = UnityEngine.Animations.AnimationLayerMixerPlayable

---@overload fun(graph: UnityEngine.Playables.PlayableGraph, inputCount: number) : UnityEngine.Animations.AnimationLayerMixerPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount number
---@param singleLayerOptimization boolean
---@return UnityEngine.Animations.AnimationLayerMixerPlayable
function UnityEngine.Animations.AnimationLayerMixerPlayable.Create(graph, inputCount, singleLayerOptimization) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationLayerMixerPlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationLayerMixerPlayable
---@return boolean
function UnityEngine.Animations.AnimationLayerMixerPlayable:Equals(other) end
---@param layerIndex number
---@return boolean
function UnityEngine.Animations.AnimationLayerMixerPlayable:IsLayerAdditive(layerIndex) end
---@param layerIndex number
---@param value boolean
function UnityEngine.Animations.AnimationLayerMixerPlayable:SetLayerAdditive(layerIndex, value) end
---@param layerIndex number
---@param mask UnityEngine.AvatarMask
function UnityEngine.Animations.AnimationLayerMixerPlayable:SetLayerMaskFromAvatarMask(layerIndex, mask) end

---@class UnityEngine.Animations.AnimationMixerPlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimationMixerPlayable
UnityEngine.Animations.AnimationMixerPlayable = {}
---@alias CS.UnityEngine.Animations.AnimationMixerPlayable UnityEngine.Animations.AnimationMixerPlayable
CS.UnityEngine.Animations.AnimationMixerPlayable = UnityEngine.Animations.AnimationMixerPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount number
---@return UnityEngine.Animations.AnimationMixerPlayable
function UnityEngine.Animations.AnimationMixerPlayable.Create(graph, inputCount) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationMixerPlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationMixerPlayable
---@return boolean
function UnityEngine.Animations.AnimationMixerPlayable:Equals(other) end

---@class UnityEngine.Animations.AnimationMotionXToDeltaPlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimationMotionXToDeltaPlayable
UnityEngine.Animations.AnimationMotionXToDeltaPlayable = {}
---@alias CS.UnityEngine.Animations.AnimationMotionXToDeltaPlayable UnityEngine.Animations.AnimationMotionXToDeltaPlayable
CS.UnityEngine.Animations.AnimationMotionXToDeltaPlayable = UnityEngine.Animations.AnimationMotionXToDeltaPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationMotionXToDeltaPlayable
function UnityEngine.Animations.AnimationMotionXToDeltaPlayable.Create(graph) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationMotionXToDeltaPlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationMotionXToDeltaPlayable
---@return boolean
function UnityEngine.Animations.AnimationMotionXToDeltaPlayable:Equals(other) end
---@return boolean
function UnityEngine.Animations.AnimationMotionXToDeltaPlayable:IsAbsoluteMotion() end
---@param value boolean
function UnityEngine.Animations.AnimationMotionXToDeltaPlayable:SetAbsoluteMotion(value) end

---@class UnityEngine.Animations.AnimationOffsetPlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimationOffsetPlayable
UnityEngine.Animations.AnimationOffsetPlayable = {}
---@alias CS.UnityEngine.Animations.AnimationOffsetPlayable UnityEngine.Animations.AnimationOffsetPlayable
CS.UnityEngine.Animations.AnimationOffsetPlayable = UnityEngine.Animations.AnimationOffsetPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param inputCount number
---@return UnityEngine.Animations.AnimationOffsetPlayable
function UnityEngine.Animations.AnimationOffsetPlayable.Create(graph, position, rotation, inputCount) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationOffsetPlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationOffsetPlayable
---@return boolean
function UnityEngine.Animations.AnimationOffsetPlayable:Equals(other) end
---@return UnityEngine.Vector3
function UnityEngine.Animations.AnimationOffsetPlayable:GetPosition() end
---@param value UnityEngine.Vector3
function UnityEngine.Animations.AnimationOffsetPlayable:SetPosition(value) end
---@return UnityEngine.Quaternion
function UnityEngine.Animations.AnimationOffsetPlayable:GetRotation() end
---@param value UnityEngine.Quaternion
function UnityEngine.Animations.AnimationOffsetPlayable:SetRotation(value) end

---@class UnityEngine.Animations.AnimationPlayableExtensions : System.Object
UnityEngine.Animations.AnimationPlayableExtensions = {}
---@alias CS.UnityEngine.Animations.AnimationPlayableExtensions UnityEngine.Animations.AnimationPlayableExtensions
CS.UnityEngine.Animations.AnimationPlayableExtensions = UnityEngine.Animations.AnimationPlayableExtensions


---@class UnityEngine.Animations.AnimationPlayableGraphExtensions : System.Object
UnityEngine.Animations.AnimationPlayableGraphExtensions = {}
---@alias CS.UnityEngine.Animations.AnimationPlayableGraphExtensions UnityEngine.Animations.AnimationPlayableGraphExtensions
CS.UnityEngine.Animations.AnimationPlayableGraphExtensions = UnityEngine.Animations.AnimationPlayableGraphExtensions


---@class UnityEngine.Animations.AnimationPlayableOutput : System.ValueType
---@field Null UnityEngine.Animations.AnimationPlayableOutput
UnityEngine.Animations.AnimationPlayableOutput = {}
---@alias CS.UnityEngine.Animations.AnimationPlayableOutput UnityEngine.Animations.AnimationPlayableOutput
CS.UnityEngine.Animations.AnimationPlayableOutput = UnityEngine.Animations.AnimationPlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@param target UnityEngine.Animator
---@return UnityEngine.Animations.AnimationPlayableOutput
function UnityEngine.Animations.AnimationPlayableOutput.Create(graph, name, target) end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Animations.AnimationPlayableOutput:GetHandle() end
---@return UnityEngine.Animator
function UnityEngine.Animations.AnimationPlayableOutput:GetTarget() end
---@param value UnityEngine.Animator
function UnityEngine.Animations.AnimationPlayableOutput:SetTarget(value) end
---@return UnityEngine.Experimental.Animations.AnimationStreamSource
function UnityEngine.Animations.AnimationPlayableOutput:GetAnimationStreamSource() end
---@param streamSource UnityEngine.Experimental.Animations.AnimationStreamSource
function UnityEngine.Animations.AnimationPlayableOutput:SetAnimationStreamSource(streamSource) end
---@return number
function UnityEngine.Animations.AnimationPlayableOutput:GetSortingOrder() end
---@param sortingOrder number
function UnityEngine.Animations.AnimationPlayableOutput:SetSortingOrder(sortingOrder) end

---@class UnityEngine.Animations.AnimationPosePlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimationPosePlayable
UnityEngine.Animations.AnimationPosePlayable = {}
---@alias CS.UnityEngine.Animations.AnimationPosePlayable UnityEngine.Animations.AnimationPosePlayable
CS.UnityEngine.Animations.AnimationPosePlayable = UnityEngine.Animations.AnimationPosePlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Animations.AnimationPosePlayable
function UnityEngine.Animations.AnimationPosePlayable.Create(graph) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationPosePlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationPosePlayable
---@return boolean
function UnityEngine.Animations.AnimationPosePlayable:Equals(other) end
---@return boolean
function UnityEngine.Animations.AnimationPosePlayable:GetMustReadPreviousPose() end
---@param value boolean
function UnityEngine.Animations.AnimationPosePlayable:SetMustReadPreviousPose(value) end
---@return boolean
function UnityEngine.Animations.AnimationPosePlayable:GetReadDefaultPose() end
---@param value boolean
function UnityEngine.Animations.AnimationPosePlayable:SetReadDefaultPose(value) end
---@return boolean
function UnityEngine.Animations.AnimationPosePlayable:GetApplyFootIK() end
---@param value boolean
function UnityEngine.Animations.AnimationPosePlayable:SetApplyFootIK(value) end

---@class UnityEngine.Animations.AnimationRemoveScalePlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimationRemoveScalePlayable
UnityEngine.Animations.AnimationRemoveScalePlayable = {}
---@alias CS.UnityEngine.Animations.AnimationRemoveScalePlayable UnityEngine.Animations.AnimationRemoveScalePlayable
CS.UnityEngine.Animations.AnimationRemoveScalePlayable = UnityEngine.Animations.AnimationRemoveScalePlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount number
---@return UnityEngine.Animations.AnimationRemoveScalePlayable
function UnityEngine.Animations.AnimationRemoveScalePlayable.Create(graph, inputCount) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationRemoveScalePlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationRemoveScalePlayable
---@return boolean
function UnityEngine.Animations.AnimationRemoveScalePlayable:Equals(other) end

---@class UnityEngine.Animations.AnimationScriptPlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimationScriptPlayable
UnityEngine.Animations.AnimationScriptPlayable = {}
---@alias CS.UnityEngine.Animations.AnimationScriptPlayable UnityEngine.Animations.AnimationScriptPlayable
CS.UnityEngine.Animations.AnimationScriptPlayable = UnityEngine.Animations.AnimationScriptPlayable

---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimationScriptPlayable:GetHandle() end
---@param other UnityEngine.Animations.AnimationScriptPlayable
---@return boolean
function UnityEngine.Animations.AnimationScriptPlayable:Equals(other) end
---@param value boolean
function UnityEngine.Animations.AnimationScriptPlayable:SetProcessInputs(value) end
---@return boolean
function UnityEngine.Animations.AnimationScriptPlayable:GetProcessInputs() end

---@class UnityEngine.Animations.AnimatorBindingsVersion
---@field kInvalidNotNative UnityEngine.Animations.AnimatorBindingsVersion
---@field kInvalidUnresolved UnityEngine.Animations.AnimatorBindingsVersion
---@field kValidMinVersion UnityEngine.Animations.AnimatorBindingsVersion
UnityEngine.Animations.AnimatorBindingsVersion = {}
---@alias CS.UnityEngine.Animations.AnimatorBindingsVersion UnityEngine.Animations.AnimatorBindingsVersion
CS.UnityEngine.Animations.AnimatorBindingsVersion = UnityEngine.Animations.AnimatorBindingsVersion


---@class UnityEngine.Animations.AnimationStream : System.ValueType
---@field isValid boolean
---@field deltaTime number
---@field velocity UnityEngine.Vector3
---@field angularVelocity UnityEngine.Vector3
---@field rootMotionPosition UnityEngine.Vector3
---@field rootMotionRotation UnityEngine.Quaternion
---@field isHumanStream boolean
---@field inputStreamCount number
UnityEngine.Animations.AnimationStream = {}
---@alias CS.UnityEngine.Animations.AnimationStream UnityEngine.Animations.AnimationStream
CS.UnityEngine.Animations.AnimationStream = UnityEngine.Animations.AnimationStream

---@return UnityEngine.Animations.AnimationHumanStream
function UnityEngine.Animations.AnimationStream:AsHuman() end
---@param index number
---@return UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.AnimationStream:GetInputStream(index) end
---@param index number
---@return number
function UnityEngine.Animations.AnimationStream:GetInputWeight(index) end
---@param animationStream UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.AnimationStream:CopyAnimationStreamMotion(animationStream) end

---@class UnityEngine.Animations.BindType
---@field Unbound UnityEngine.Animations.BindType
---@field Float UnityEngine.Animations.BindType
---@field Bool UnityEngine.Animations.BindType
---@field GameObjectActive UnityEngine.Animations.BindType
---@field ObjectReference UnityEngine.Animations.BindType
---@field Int UnityEngine.Animations.BindType
---@field DiscreetInt UnityEngine.Animations.BindType
UnityEngine.Animations.BindType = {}
---@alias CS.UnityEngine.Animations.BindType UnityEngine.Animations.BindType
CS.UnityEngine.Animations.BindType = UnityEngine.Animations.BindType


---@class UnityEngine.Animations.TransformStreamHandle : System.ValueType
UnityEngine.Animations.TransformStreamHandle = {}
---@alias CS.UnityEngine.Animations.TransformStreamHandle UnityEngine.Animations.TransformStreamHandle
CS.UnityEngine.Animations.TransformStreamHandle = UnityEngine.Animations.TransformStreamHandle

---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.TransformStreamHandle:IsValid(stream) end
---@param stream UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.TransformStreamHandle:Resolve(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.TransformStreamHandle:IsResolved(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Animations.TransformStreamHandle:GetPosition(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param position UnityEngine.Vector3
function UnityEngine.Animations.TransformStreamHandle:SetPosition(stream, position) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Animations.TransformStreamHandle:GetRotation(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param rotation UnityEngine.Quaternion
function UnityEngine.Animations.TransformStreamHandle:SetRotation(stream, rotation) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Animations.TransformStreamHandle:GetLocalPosition(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param position UnityEngine.Vector3
function UnityEngine.Animations.TransformStreamHandle:SetLocalPosition(stream, position) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Animations.TransformStreamHandle:GetLocalRotation(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param rotation UnityEngine.Quaternion
function UnityEngine.Animations.TransformStreamHandle:SetLocalRotation(stream, rotation) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Animations.TransformStreamHandle:GetLocalScale(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param scale UnityEngine.Vector3
function UnityEngine.Animations.TransformStreamHandle:SetLocalScale(stream, scale) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Matrix4x4
function UnityEngine.Animations.TransformStreamHandle:GetLocalToParentMatrix(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.TransformStreamHandle:GetPositionReadMask(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.TransformStreamHandle:GetRotationReadMask(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.TransformStreamHandle:GetScaleReadMask(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param out_position UnityEngine.Vector3
---@param out_rotation UnityEngine.Quaternion
---@param out_scale UnityEngine.Vector3
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3
function UnityEngine.Animations.TransformStreamHandle:GetLocalTRS(stream, out_position, out_rotation, out_scale) end
---@param stream UnityEngine.Animations.AnimationStream
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param scale UnityEngine.Vector3
---@param useMask boolean
function UnityEngine.Animations.TransformStreamHandle:SetLocalTRS(stream, position, rotation, scale, useMask) end
---@param stream UnityEngine.Animations.AnimationStream
---@param out_position UnityEngine.Vector3
---@param out_rotation UnityEngine.Quaternion
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion
function UnityEngine.Animations.TransformStreamHandle:GetGlobalTR(stream, out_position, out_rotation) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Matrix4x4
function UnityEngine.Animations.TransformStreamHandle:GetLocalToWorldMatrix(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param useMask boolean
function UnityEngine.Animations.TransformStreamHandle:SetGlobalTR(stream, position, rotation, useMask) end

---@class UnityEngine.Animations.PropertyStreamHandle : System.ValueType
UnityEngine.Animations.PropertyStreamHandle = {}
---@alias CS.UnityEngine.Animations.PropertyStreamHandle UnityEngine.Animations.PropertyStreamHandle
CS.UnityEngine.Animations.PropertyStreamHandle = UnityEngine.Animations.PropertyStreamHandle

---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.PropertyStreamHandle:IsValid(stream) end
---@param stream UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.PropertyStreamHandle:Resolve(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.PropertyStreamHandle:IsResolved(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return number
function UnityEngine.Animations.PropertyStreamHandle:GetFloat(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param value number
function UnityEngine.Animations.PropertyStreamHandle:SetFloat(stream, value) end
---@param stream UnityEngine.Animations.AnimationStream
---@return number
function UnityEngine.Animations.PropertyStreamHandle:GetInt(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param value number
function UnityEngine.Animations.PropertyStreamHandle:SetInt(stream, value) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.PropertyStreamHandle:GetBool(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param value boolean
function UnityEngine.Animations.PropertyStreamHandle:SetBool(stream, value) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.PropertyStreamHandle:GetReadMask(stream) end

---@class UnityEngine.Animations.TransformSceneHandle : System.ValueType
UnityEngine.Animations.TransformSceneHandle = {}
---@alias CS.UnityEngine.Animations.TransformSceneHandle UnityEngine.Animations.TransformSceneHandle
CS.UnityEngine.Animations.TransformSceneHandle = UnityEngine.Animations.TransformSceneHandle

---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.TransformSceneHandle:IsValid(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Animations.TransformSceneHandle:GetPosition(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Animations.TransformSceneHandle:GetLocalPosition(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Animations.TransformSceneHandle:GetRotation(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Quaternion
function UnityEngine.Animations.TransformSceneHandle:GetLocalRotation(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Vector3
function UnityEngine.Animations.TransformSceneHandle:GetLocalScale(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param out_position UnityEngine.Vector3
---@param out_rotation UnityEngine.Quaternion
---@param out_scale UnityEngine.Vector3
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3
function UnityEngine.Animations.TransformSceneHandle:GetLocalTRS(stream, out_position, out_rotation, out_scale) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Matrix4x4
function UnityEngine.Animations.TransformSceneHandle:GetLocalToParentMatrix(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@param out_position UnityEngine.Vector3
---@param out_rotation UnityEngine.Quaternion
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion
function UnityEngine.Animations.TransformSceneHandle:GetGlobalTR(stream, out_position, out_rotation) end
---@param stream UnityEngine.Animations.AnimationStream
---@return UnityEngine.Matrix4x4
function UnityEngine.Animations.TransformSceneHandle:GetLocalToWorldMatrix(stream) end

---@class UnityEngine.Animations.PropertySceneHandle : System.ValueType
UnityEngine.Animations.PropertySceneHandle = {}
---@alias CS.UnityEngine.Animations.PropertySceneHandle UnityEngine.Animations.PropertySceneHandle
CS.UnityEngine.Animations.PropertySceneHandle = UnityEngine.Animations.PropertySceneHandle

---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.PropertySceneHandle:IsValid(stream) end
---@param stream UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.PropertySceneHandle:Resolve(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.PropertySceneHandle:IsResolved(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return number
function UnityEngine.Animations.PropertySceneHandle:GetFloat(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return number
function UnityEngine.Animations.PropertySceneHandle:GetInt(stream) end
---@param stream UnityEngine.Animations.AnimationStream
---@return boolean
function UnityEngine.Animations.PropertySceneHandle:GetBool(stream) end

---@class UnityEngine.Animations.AnimationSceneHandleUtility : System.Object
UnityEngine.Animations.AnimationSceneHandleUtility = {}
---@alias CS.UnityEngine.Animations.AnimationSceneHandleUtility UnityEngine.Animations.AnimationSceneHandleUtility
CS.UnityEngine.Animations.AnimationSceneHandleUtility = UnityEngine.Animations.AnimationSceneHandleUtility

---@param stream UnityEngine.Animations.AnimationStream
---@param handles Unity.Collections.NativeArray
---@param buffer Unity.Collections.NativeArray
function UnityEngine.Animations.AnimationSceneHandleUtility.ReadInts(stream, handles, buffer) end
---@param stream UnityEngine.Animations.AnimationStream
---@param handles Unity.Collections.NativeArray
---@param buffer Unity.Collections.NativeArray
function UnityEngine.Animations.AnimationSceneHandleUtility.ReadFloats(stream, handles, buffer) end

---@class UnityEngine.Animations.AnimationStreamHandleUtility : System.Object
UnityEngine.Animations.AnimationStreamHandleUtility = {}
---@alias CS.UnityEngine.Animations.AnimationStreamHandleUtility UnityEngine.Animations.AnimationStreamHandleUtility
CS.UnityEngine.Animations.AnimationStreamHandleUtility = UnityEngine.Animations.AnimationStreamHandleUtility

---@param stream UnityEngine.Animations.AnimationStream
---@param handles Unity.Collections.NativeArray
---@param buffer Unity.Collections.NativeArray
---@param useMask boolean
function UnityEngine.Animations.AnimationStreamHandleUtility.WriteInts(stream, handles, buffer, useMask) end
---@param stream UnityEngine.Animations.AnimationStream
---@param handles Unity.Collections.NativeArray
---@param buffer Unity.Collections.NativeArray
---@param useMask boolean
function UnityEngine.Animations.AnimationStreamHandleUtility.WriteFloats(stream, handles, buffer, useMask) end
---@param stream UnityEngine.Animations.AnimationStream
---@param handles Unity.Collections.NativeArray
---@param buffer Unity.Collections.NativeArray
function UnityEngine.Animations.AnimationStreamHandleUtility.ReadInts(stream, handles, buffer) end
---@param stream UnityEngine.Animations.AnimationStream
---@param handles Unity.Collections.NativeArray
---@param buffer Unity.Collections.NativeArray
function UnityEngine.Animations.AnimationStreamHandleUtility.ReadFloats(stream, handles, buffer) end

---@class UnityEngine.Animations.AnimatorControllerPlayable : System.ValueType
---@field Null UnityEngine.Animations.AnimatorControllerPlayable
UnityEngine.Animations.AnimatorControllerPlayable = {}
---@alias CS.UnityEngine.Animations.AnimatorControllerPlayable UnityEngine.Animations.AnimatorControllerPlayable
CS.UnityEngine.Animations.AnimatorControllerPlayable = UnityEngine.Animations.AnimatorControllerPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param controller UnityEngine.RuntimeAnimatorController
---@return UnityEngine.Animations.AnimatorControllerPlayable
function UnityEngine.Animations.AnimatorControllerPlayable.Create(graph, controller) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimatorControllerPlayable:GetHandle() end
---@param handle UnityEngine.Playables.PlayableHandle
function UnityEngine.Animations.AnimatorControllerPlayable:SetHandle(handle) end
---@param other UnityEngine.Animations.AnimatorControllerPlayable
---@return boolean
function UnityEngine.Animations.AnimatorControllerPlayable:Equals(other) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string) : number
---@param id number
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetFloat(id) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string, value: number)
---@param id number
---@param value number
function UnityEngine.Animations.AnimatorControllerPlayable:SetFloat(id, value) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string) : boolean
---@param id number
---@return boolean
function UnityEngine.Animations.AnimatorControllerPlayable:GetBool(id) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string, value: boolean)
---@param id number
---@param value boolean
function UnityEngine.Animations.AnimatorControllerPlayable:SetBool(id, value) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string) : number
---@param id number
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetInteger(id) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string, value: number)
---@param id number
---@param value number
function UnityEngine.Animations.AnimatorControllerPlayable:SetInteger(id, value) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string)
---@param id number
function UnityEngine.Animations.AnimatorControllerPlayable:SetTrigger(id) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string)
---@param id number
function UnityEngine.Animations.AnimatorControllerPlayable:ResetTrigger(id) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, name: string) : boolean
---@param id number
---@return boolean
function UnityEngine.Animations.AnimatorControllerPlayable:IsParameterControlledByCurve(id) end
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerCount() end
---@param layerIndex number
---@return string
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerName(layerIndex) end
---@param layerName string
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerIndex(layerName) end
---@param layerIndex number
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetLayerWeight(layerIndex) end
---@param layerIndex number
---@param weight number
function UnityEngine.Animations.AnimatorControllerPlayable:SetLayerWeight(layerIndex, weight) end
---@param layerIndex number
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animations.AnimatorControllerPlayable:GetCurrentAnimatorStateInfo(layerIndex) end
---@param layerIndex number
---@return UnityEngine.AnimatorStateInfo
function UnityEngine.Animations.AnimatorControllerPlayable:GetNextAnimatorStateInfo(layerIndex) end
---@param layerIndex number
---@return UnityEngine.AnimatorTransitionInfo
function UnityEngine.Animations.AnimatorControllerPlayable:GetAnimatorTransitionInfo(layerIndex) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, layerIndex: number) : UnityEngine.AnimatorClipInfo[]
---@param layerIndex number
---@param clips System.Collections.Generic.List
function UnityEngine.Animations.AnimatorControllerPlayable:GetCurrentAnimatorClipInfo(layerIndex, clips) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, layerIndex: number, clips: System.Collections.Generic.List)
---@param layerIndex number
---@return UnityEngine.AnimatorClipInfo[]
function UnityEngine.Animations.AnimatorControllerPlayable:GetNextAnimatorClipInfo(layerIndex) end
---@param layerIndex number
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetCurrentAnimatorClipInfoCount(layerIndex) end
---@param layerIndex number
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetNextAnimatorClipInfoCount(layerIndex) end
---@param layerIndex number
---@return boolean
function UnityEngine.Animations.AnimatorControllerPlayable:IsInTransition(layerIndex) end
---@return number
function UnityEngine.Animations.AnimatorControllerPlayable:GetParameterCount() end
---@param index number
---@return UnityEngine.AnimatorControllerParameter
function UnityEngine.Animations.AnimatorControllerPlayable:GetParameter(index) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, transitionDuration: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, transitionDuration: number, layer: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, transitionDuration: number, layer: number, fixedTime: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number, transitionDuration: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number, transitionDuration: number, layer: number)
---@param stateNameHash number
---@param transitionDuration number
---@param layer number
---@param fixedTime number
function UnityEngine.Animations.AnimatorControllerPlayable:CrossFadeInFixedTime(stateNameHash, transitionDuration, layer, fixedTime) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, transitionDuration: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, transitionDuration: number, layer: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, transitionDuration: number, layer: number, normalizedTime: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number, transitionDuration: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number, transitionDuration: number, layer: number)
---@param stateNameHash number
---@param transitionDuration number
---@param layer number
---@param normalizedTime number
function UnityEngine.Animations.AnimatorControllerPlayable:CrossFade(stateNameHash, transitionDuration, layer, normalizedTime) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, layer: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, layer: number, fixedTime: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number, layer: number)
---@param stateNameHash number
---@param layer number
---@param fixedTime number
function UnityEngine.Animations.AnimatorControllerPlayable:PlayInFixedTime(stateNameHash, layer, fixedTime) end
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, layer: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateName: string, layer: number, normalizedTime: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number)
---@overload fun(self: UnityEngine.Animations.AnimatorControllerPlayable, stateNameHash: number, layer: number)
---@param stateNameHash number
---@param layer number
---@param normalizedTime number
function UnityEngine.Animations.AnimatorControllerPlayable:Play(stateNameHash, layer, normalizedTime) end
---@param layerIndex number
---@param stateID number
---@return boolean
function UnityEngine.Animations.AnimatorControllerPlayable:HasState(layerIndex, stateID) end

---@class UnityEngine.Animations.CustomStreamPropertyType
---@field Float UnityEngine.Animations.CustomStreamPropertyType
---@field Bool UnityEngine.Animations.CustomStreamPropertyType
---@field Int UnityEngine.Animations.CustomStreamPropertyType
UnityEngine.Animations.CustomStreamPropertyType = {}
---@alias CS.UnityEngine.Animations.CustomStreamPropertyType UnityEngine.Animations.CustomStreamPropertyType
CS.UnityEngine.Animations.CustomStreamPropertyType = UnityEngine.Animations.CustomStreamPropertyType


---@class UnityEngine.Animations.AnimatorJobExtensions : System.Object
UnityEngine.Animations.AnimatorJobExtensions = {}
---@alias CS.UnityEngine.Animations.AnimatorJobExtensions UnityEngine.Animations.AnimatorJobExtensions
CS.UnityEngine.Animations.AnimatorJobExtensions = UnityEngine.Animations.AnimatorJobExtensions

---@param animator UnityEngine.Animator
---@param jobHandle Unity.Jobs.JobHandle
function UnityEngine.Animations.AnimatorJobExtensions.AddJobDependency(animator, jobHandle) end
---@param animator UnityEngine.Animator
---@param transform UnityEngine.Transform
---@return UnityEngine.Animations.TransformStreamHandle
function UnityEngine.Animations.AnimatorJobExtensions.BindStreamTransform(animator, transform) end
---@overload fun(animator: UnityEngine.Animator, transform: UnityEngine.Transform, type: System.Type, property: string) : UnityEngine.Animations.PropertyStreamHandle
---@param animator UnityEngine.Animator
---@param transform UnityEngine.Transform
---@param type System.Type
---@param property string
---@param isObjectReference boolean
---@return UnityEngine.Animations.PropertyStreamHandle
function UnityEngine.Animations.AnimatorJobExtensions.BindStreamProperty(animator, transform, type, property, isObjectReference) end
---@param animator UnityEngine.Animator
---@param property string
---@param type UnityEngine.Animations.CustomStreamPropertyType
---@return UnityEngine.Animations.PropertyStreamHandle
function UnityEngine.Animations.AnimatorJobExtensions.BindCustomStreamProperty(animator, property, type) end
---@param animator UnityEngine.Animator
---@param transform UnityEngine.Transform
---@return UnityEngine.Animations.TransformSceneHandle
function UnityEngine.Animations.AnimatorJobExtensions.BindSceneTransform(animator, transform) end
---@overload fun(animator: UnityEngine.Animator, transform: UnityEngine.Transform, type: System.Type, property: string) : UnityEngine.Animations.PropertySceneHandle
---@param animator UnityEngine.Animator
---@param transform UnityEngine.Transform
---@param type System.Type
---@param property string
---@param isObjectReference boolean
---@return UnityEngine.Animations.PropertySceneHandle
function UnityEngine.Animations.AnimatorJobExtensions.BindSceneProperty(animator, transform, type, property, isObjectReference) end
---@param animator UnityEngine.Animator
---@param ref_stream UnityEngine.Animations.AnimationStream
---@return boolean,UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.AnimatorJobExtensions.OpenAnimationStream(animator, ref_stream) end
---@param animator UnityEngine.Animator
---@param ref_stream UnityEngine.Animations.AnimationStream
---@return ,UnityEngine.Animations.AnimationStream
function UnityEngine.Animations.AnimatorJobExtensions.CloseAnimationStream(animator, ref_stream) end
---@param animator UnityEngine.Animator
function UnityEngine.Animations.AnimatorJobExtensions.ResolveAllStreamHandles(animator) end
---@param animator UnityEngine.Animator
function UnityEngine.Animations.AnimatorJobExtensions.ResolveAllSceneHandles(animator) end
---@param animator UnityEngine.Animator
function UnityEngine.Animations.AnimatorJobExtensions.UnbindAllStreamHandles(animator) end
---@param animator UnityEngine.Animator
function UnityEngine.Animations.AnimatorJobExtensions.UnbindAllSceneHandles(animator) end

---@class UnityEngine.Animations.Axis
---@field None UnityEngine.Animations.Axis
---@field X UnityEngine.Animations.Axis
---@field Y UnityEngine.Animations.Axis
---@field Z UnityEngine.Animations.Axis
UnityEngine.Animations.Axis = {}
---@alias CS.UnityEngine.Animations.Axis UnityEngine.Animations.Axis
CS.UnityEngine.Animations.Axis = UnityEngine.Animations.Axis


---@class UnityEngine.Animations.ConstraintSource : System.ValueType
---@field sourceTransform UnityEngine.Transform
---@field weight number
UnityEngine.Animations.ConstraintSource = {}
---@alias CS.UnityEngine.Animations.ConstraintSource UnityEngine.Animations.ConstraintSource
CS.UnityEngine.Animations.ConstraintSource = UnityEngine.Animations.ConstraintSource


---@class UnityEngine.Animations.IConstraint
---@field weight number
---@field constraintActive boolean
---@field locked boolean
---@field sourceCount number
UnityEngine.Animations.IConstraint = {}
---@alias CS.UnityEngine.Animations.IConstraint UnityEngine.Animations.IConstraint
CS.UnityEngine.Animations.IConstraint = UnityEngine.Animations.IConstraint

---@param source UnityEngine.Animations.ConstraintSource
---@return number
function UnityEngine.Animations.IConstraint:AddSource(source) end
---@param index number
function UnityEngine.Animations.IConstraint:RemoveSource(index) end
---@param index number
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.IConstraint:GetSource(index) end
---@param index number
---@param source UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.IConstraint:SetSource(index, source) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.IConstraint:GetSources(sources) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.IConstraint:SetSources(sources) end

---@class UnityEngine.Animations.IConstraintInternal
---@field transform UnityEngine.Transform
UnityEngine.Animations.IConstraintInternal = {}
---@alias CS.UnityEngine.Animations.IConstraintInternal UnityEngine.Animations.IConstraintInternal
CS.UnityEngine.Animations.IConstraintInternal = UnityEngine.Animations.IConstraintInternal

function UnityEngine.Animations.IConstraintInternal:ActivateAndPreserveOffset() end
function UnityEngine.Animations.IConstraintInternal:ActivateWithZeroOffset() end
function UnityEngine.Animations.IConstraintInternal:UserUpdateOffset() end

---@class UnityEngine.Animations.PositionConstraint : UnityEngine.Behaviour
---@field weight number
---@field translationAtRest UnityEngine.Vector3
---@field translationOffset UnityEngine.Vector3
---@field translationAxis UnityEngine.Animations.Axis
---@field constraintActive boolean
---@field locked boolean
---@field sourceCount number
UnityEngine.Animations.PositionConstraint = {}
---@alias CS.UnityEngine.Animations.PositionConstraint UnityEngine.Animations.PositionConstraint
CS.UnityEngine.Animations.PositionConstraint = UnityEngine.Animations.PositionConstraint

---@param sources System.Collections.Generic.List
function UnityEngine.Animations.PositionConstraint:GetSources(sources) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.PositionConstraint:SetSources(sources) end
---@param source UnityEngine.Animations.ConstraintSource
---@return number
function UnityEngine.Animations.PositionConstraint:AddSource(source) end
---@param index number
function UnityEngine.Animations.PositionConstraint:RemoveSource(index) end
---@param index number
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.PositionConstraint:GetSource(index) end
---@param index number
---@param source UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.PositionConstraint:SetSource(index, source) end

---@class UnityEngine.Animations.RotationConstraint : UnityEngine.Behaviour
---@field weight number
---@field rotationAtRest UnityEngine.Vector3
---@field rotationOffset UnityEngine.Vector3
---@field rotationAxis UnityEngine.Animations.Axis
---@field constraintActive boolean
---@field locked boolean
---@field sourceCount number
UnityEngine.Animations.RotationConstraint = {}
---@alias CS.UnityEngine.Animations.RotationConstraint UnityEngine.Animations.RotationConstraint
CS.UnityEngine.Animations.RotationConstraint = UnityEngine.Animations.RotationConstraint

---@param sources System.Collections.Generic.List
function UnityEngine.Animations.RotationConstraint:GetSources(sources) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.RotationConstraint:SetSources(sources) end
---@param source UnityEngine.Animations.ConstraintSource
---@return number
function UnityEngine.Animations.RotationConstraint:AddSource(source) end
---@param index number
function UnityEngine.Animations.RotationConstraint:RemoveSource(index) end
---@param index number
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.RotationConstraint:GetSource(index) end
---@param index number
---@param source UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.RotationConstraint:SetSource(index, source) end

---@class UnityEngine.Animations.ScaleConstraint : UnityEngine.Behaviour
---@field weight number
---@field scaleAtRest UnityEngine.Vector3
---@field scaleOffset UnityEngine.Vector3
---@field scalingAxis UnityEngine.Animations.Axis
---@field constraintActive boolean
---@field locked boolean
---@field sourceCount number
UnityEngine.Animations.ScaleConstraint = {}
---@alias CS.UnityEngine.Animations.ScaleConstraint UnityEngine.Animations.ScaleConstraint
CS.UnityEngine.Animations.ScaleConstraint = UnityEngine.Animations.ScaleConstraint

---@param sources System.Collections.Generic.List
function UnityEngine.Animations.ScaleConstraint:GetSources(sources) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.ScaleConstraint:SetSources(sources) end
---@param source UnityEngine.Animations.ConstraintSource
---@return number
function UnityEngine.Animations.ScaleConstraint:AddSource(source) end
---@param index number
function UnityEngine.Animations.ScaleConstraint:RemoveSource(index) end
---@param index number
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.ScaleConstraint:GetSource(index) end
---@param index number
---@param source UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.ScaleConstraint:SetSource(index, source) end

---@class UnityEngine.Animations.LookAtConstraint : UnityEngine.Behaviour
---@field weight number
---@field roll number
---@field constraintActive boolean
---@field locked boolean
---@field rotationAtRest UnityEngine.Vector3
---@field rotationOffset UnityEngine.Vector3
---@field worldUpObject UnityEngine.Transform
---@field useUpObject boolean
---@field sourceCount number
UnityEngine.Animations.LookAtConstraint = {}
---@alias CS.UnityEngine.Animations.LookAtConstraint UnityEngine.Animations.LookAtConstraint
CS.UnityEngine.Animations.LookAtConstraint = UnityEngine.Animations.LookAtConstraint

---@param sources System.Collections.Generic.List
function UnityEngine.Animations.LookAtConstraint:GetSources(sources) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.LookAtConstraint:SetSources(sources) end
---@param source UnityEngine.Animations.ConstraintSource
---@return number
function UnityEngine.Animations.LookAtConstraint:AddSource(source) end
---@param index number
function UnityEngine.Animations.LookAtConstraint:RemoveSource(index) end
---@param index number
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.LookAtConstraint:GetSource(index) end
---@param index number
---@param source UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.LookAtConstraint:SetSource(index, source) end

---@class UnityEngine.Animations.MuscleHandle : System.ValueType
---@field muscleHandleCount number
---@field humanPartDof UnityEngine.HumanPartDof
---@field dof number
---@field name string
UnityEngine.Animations.MuscleHandle = {}
---@alias CS.UnityEngine.Animations.MuscleHandle UnityEngine.Animations.MuscleHandle
CS.UnityEngine.Animations.MuscleHandle = UnityEngine.Animations.MuscleHandle

---@overload fun(bodyDof: UnityEngine.BodyDof) : UnityEngine.Animations.MuscleHandle
---@overload fun(headDof: UnityEngine.HeadDof) : UnityEngine.Animations.MuscleHandle
---@overload fun(partDof: UnityEngine.HumanPartDof, legDof: UnityEngine.LegDof) : UnityEngine.Animations.MuscleHandle
---@overload fun(partDof: UnityEngine.HumanPartDof, armDof: UnityEngine.ArmDof) : UnityEngine.Animations.MuscleHandle
---@param partDof UnityEngine.HumanPartDof
---@param fingerDof UnityEngine.FingerDof
---@return UnityEngine.Animations.MuscleHandle
function UnityEngine.Animations.MuscleHandle.New(partDof, fingerDof) end
---@param out_muscleHandles UnityEngine.Animations.MuscleHandle
---@return ,UnityEngine.Animations.MuscleHandle
function UnityEngine.Animations.MuscleHandle.GetMuscleHandles(out_muscleHandles) end

---@class UnityEngine.Animations.ParentConstraint : UnityEngine.Behaviour
---@field weight number
---@field constraintActive boolean
---@field locked boolean
---@field sourceCount number
---@field translationAtRest UnityEngine.Vector3
---@field rotationAtRest UnityEngine.Vector3
---@field translationOffsets UnityEngine.Vector3[]
---@field rotationOffsets UnityEngine.Vector3[]
---@field translationAxis UnityEngine.Animations.Axis
---@field rotationAxis UnityEngine.Animations.Axis
UnityEngine.Animations.ParentConstraint = {}
---@alias CS.UnityEngine.Animations.ParentConstraint UnityEngine.Animations.ParentConstraint
CS.UnityEngine.Animations.ParentConstraint = UnityEngine.Animations.ParentConstraint

---@param index number
---@return UnityEngine.Vector3
function UnityEngine.Animations.ParentConstraint:GetTranslationOffset(index) end
---@param index number
---@param value UnityEngine.Vector3
function UnityEngine.Animations.ParentConstraint:SetTranslationOffset(index, value) end
---@param index number
---@return UnityEngine.Vector3
function UnityEngine.Animations.ParentConstraint:GetRotationOffset(index) end
---@param index number
---@param value UnityEngine.Vector3
function UnityEngine.Animations.ParentConstraint:SetRotationOffset(index, value) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.ParentConstraint:GetSources(sources) end
---@param sources System.Collections.Generic.List
function UnityEngine.Animations.ParentConstraint:SetSources(sources) end
---@param source UnityEngine.Animations.ConstraintSource
---@return number
function UnityEngine.Animations.ParentConstraint:AddSource(source) end
---@param index number
function UnityEngine.Animations.ParentConstraint:RemoveSource(index) end
---@param index number
---@return UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.ParentConstraint:GetSource(index) end
---@param index number
---@param source UnityEngine.Animations.ConstraintSource
function UnityEngine.Animations.ParentConstraint:SetSource(index, source) end

---@class UnityEngine.AssetBundleLoadResult
---@field Success UnityEngine.AssetBundleLoadResult
---@field Cancelled UnityEngine.AssetBundleLoadResult
---@field NotMatchingCrc UnityEngine.AssetBundleLoadResult
---@field FailedCache UnityEngine.AssetBundleLoadResult
---@field NotValidAssetBundle UnityEngine.AssetBundleLoadResult
---@field NoSerializedData UnityEngine.AssetBundleLoadResult
---@field NotCompatible UnityEngine.AssetBundleLoadResult
---@field AlreadyLoaded UnityEngine.AssetBundleLoadResult
---@field FailedRead UnityEngine.AssetBundleLoadResult
---@field FailedDecompression UnityEngine.AssetBundleLoadResult
---@field FailedWrite UnityEngine.AssetBundleLoadResult
---@field FailedDeleteRecompressionTarget UnityEngine.AssetBundleLoadResult
---@field RecompressionTargetIsLoaded UnityEngine.AssetBundleLoadResult
---@field RecompressionTargetExistsButNotArchive UnityEngine.AssetBundleLoadResult
UnityEngine.AssetBundleLoadResult = {}
---@alias CS.UnityEngine.AssetBundleLoadResult UnityEngine.AssetBundleLoadResult
CS.UnityEngine.AssetBundleLoadResult = UnityEngine.AssetBundleLoadResult


---@class UnityEngine.AssetBundle : UnityEngine.Object
---@field memoryBudgetKB number
---@field isStreamedSceneAssetBundle boolean
UnityEngine.AssetBundle = {}
---@alias CS.UnityEngine.AssetBundle UnityEngine.AssetBundle
CS.UnityEngine.AssetBundle = UnityEngine.AssetBundle

---@param unloadAllObjects boolean
function UnityEngine.AssetBundle.UnloadAllAssetBundles(unloadAllObjects) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.AssetBundle.GetAllLoadedAssetBundles() end
---@overload fun(path: string) : UnityEngine.AssetBundleCreateRequest
---@overload fun(path: string, crc: number) : UnityEngine.AssetBundleCreateRequest
---@param path string
---@param crc number
---@param offset number
---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundle.LoadFromFileAsync(path, crc, offset) end
---@overload fun(path: string) : UnityEngine.AssetBundle
---@overload fun(path: string, crc: number) : UnityEngine.AssetBundle
---@param path string
---@param crc number
---@param offset number
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.LoadFromFile(path, crc, offset) end
---@overload fun(binary: System.Byte[]) : UnityEngine.AssetBundleCreateRequest
---@param binary System.Byte[]
---@param crc number
---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundle.LoadFromMemoryAsync(binary, crc) end
---@overload fun(binary: System.Byte[]) : UnityEngine.AssetBundle
---@param binary System.Byte[]
---@param crc number
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.LoadFromMemory(binary, crc) end
---@overload fun(stream: System.IO.Stream, crc: number, managedReadBufferSize: number) : UnityEngine.AssetBundleCreateRequest
---@overload fun(stream: System.IO.Stream, crc: number) : UnityEngine.AssetBundleCreateRequest
---@param stream System.IO.Stream
---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundle.LoadFromStreamAsync(stream) end
---@overload fun(stream: System.IO.Stream, crc: number, managedReadBufferSize: number) : UnityEngine.AssetBundle
---@overload fun(stream: System.IO.Stream, crc: number) : UnityEngine.AssetBundle
---@param stream System.IO.Stream
---@return UnityEngine.AssetBundle
function UnityEngine.AssetBundle.LoadFromStream(stream) end
---@param inputPath string
---@param outputPath string
---@param method UnityEngine.BuildCompression
---@param expectedCRC number
---@param priority UnityEngine.ThreadPriority
---@return UnityEngine.AssetBundleRecompressOperation
function UnityEngine.AssetBundle.RecompressAssetBundleAsync(inputPath, outputPath, method, expectedCRC, priority) end
---@param name string
---@return boolean
function UnityEngine.AssetBundle:Contains(name) end
---@overload fun(self: UnityEngine.AssetBundle, name: string) : UnityEngine.Object
---@param name string
---@param type System.Type
---@return UnityEngine.Object
function UnityEngine.AssetBundle:LoadAsset(name, type) end
---@overload fun(self: UnityEngine.AssetBundle, name: string) : UnityEngine.AssetBundleRequest
---@param name string
---@param type System.Type
---@return UnityEngine.AssetBundleRequest
function UnityEngine.AssetBundle:LoadAssetAsync(name, type) end
---@overload fun(self: UnityEngine.AssetBundle, name: string) : UnityEngine.Object[]
---@param name string
---@param type System.Type
---@return UnityEngine.Object[]
function UnityEngine.AssetBundle:LoadAssetWithSubAssets(name, type) end
---@overload fun(self: UnityEngine.AssetBundle, name: string) : UnityEngine.AssetBundleRequest
---@param name string
---@param type System.Type
---@return UnityEngine.AssetBundleRequest
function UnityEngine.AssetBundle:LoadAssetWithSubAssetsAsync(name, type) end
---@overload fun() : UnityEngine.Object[]
---@param type System.Type
---@return UnityEngine.Object[]
function UnityEngine.AssetBundle:LoadAllAssets(type) end
---@overload fun() : UnityEngine.AssetBundleRequest
---@param type System.Type
---@return UnityEngine.AssetBundleRequest
function UnityEngine.AssetBundle:LoadAllAssetsAsync(type) end
---@param unloadAllLoadedObjects boolean
function UnityEngine.AssetBundle:Unload(unloadAllLoadedObjects) end
---@param unloadAllLoadedObjects boolean
---@return UnityEngine.AssetBundleUnloadOperation
function UnityEngine.AssetBundle:UnloadAsync(unloadAllLoadedObjects) end
---@return System.String[]
function UnityEngine.AssetBundle:GetAllAssetNames() end
---@return System.String[]
function UnityEngine.AssetBundle:GetAllScenePaths() end

---@class UnityEngine.AssetBundleCreateRequest : UnityEngine.AsyncOperation
---@field assetBundle UnityEngine.AssetBundle
UnityEngine.AssetBundleCreateRequest = {}
---@alias CS.UnityEngine.AssetBundleCreateRequest UnityEngine.AssetBundleCreateRequest
CS.UnityEngine.AssetBundleCreateRequest = UnityEngine.AssetBundleCreateRequest

---@return UnityEngine.AssetBundleCreateRequest
function UnityEngine.AssetBundleCreateRequest.New() end

---@class UnityEngine.AssetBundleLoadingCache : System.Object
UnityEngine.AssetBundleLoadingCache = {}
---@alias CS.UnityEngine.AssetBundleLoadingCache UnityEngine.AssetBundleLoadingCache
CS.UnityEngine.AssetBundleLoadingCache = UnityEngine.AssetBundleLoadingCache


---@class UnityEngine.AssetBundleManifest : UnityEngine.Object
UnityEngine.AssetBundleManifest = {}
---@alias CS.UnityEngine.AssetBundleManifest UnityEngine.AssetBundleManifest
CS.UnityEngine.AssetBundleManifest = UnityEngine.AssetBundleManifest

---@return System.String[]
function UnityEngine.AssetBundleManifest:GetAllAssetBundles() end
---@return System.String[]
function UnityEngine.AssetBundleManifest:GetAllAssetBundlesWithVariant() end
---@param assetBundleName string
---@return UnityEngine.Hash128
function UnityEngine.AssetBundleManifest:GetAssetBundleHash(assetBundleName) end
---@param assetBundleName string
---@return System.String[]
function UnityEngine.AssetBundleManifest:GetDirectDependencies(assetBundleName) end
---@param assetBundleName string
---@return System.String[]
function UnityEngine.AssetBundleManifest:GetAllDependencies(assetBundleName) end

---@class UnityEngine.AssetBundleRecompressOperation : UnityEngine.AsyncOperation
---@field humanReadableResult string
---@field inputPath string
---@field outputPath string
---@field result UnityEngine.AssetBundleLoadResult
---@field success boolean
UnityEngine.AssetBundleRecompressOperation = {}
---@alias CS.UnityEngine.AssetBundleRecompressOperation UnityEngine.AssetBundleRecompressOperation
CS.UnityEngine.AssetBundleRecompressOperation = UnityEngine.AssetBundleRecompressOperation

---@return UnityEngine.AssetBundleRecompressOperation
function UnityEngine.AssetBundleRecompressOperation.New() end

---@class UnityEngine.AssetBundleRequest : UnityEngine.ResourceRequest
---@field asset UnityEngine.Object
---@field allAssets UnityEngine.Object[]
UnityEngine.AssetBundleRequest = {}
---@alias CS.UnityEngine.AssetBundleRequest UnityEngine.AssetBundleRequest
CS.UnityEngine.AssetBundleRequest = UnityEngine.AssetBundleRequest

---@return UnityEngine.AssetBundleRequest
function UnityEngine.AssetBundleRequest.New() end

---@class UnityEngine.AssetBundleUnloadOperation : UnityEngine.AsyncOperation
UnityEngine.AssetBundleUnloadOperation = {}
---@alias CS.UnityEngine.AssetBundleUnloadOperation UnityEngine.AssetBundleUnloadOperation
CS.UnityEngine.AssetBundleUnloadOperation = UnityEngine.AssetBundleUnloadOperation

---@return UnityEngine.AssetBundleUnloadOperation
function UnityEngine.AssetBundleUnloadOperation.New() end
function UnityEngine.AssetBundleUnloadOperation:WaitForCompletion() end

---@class UnityEngine.Experimental.AssetBundlePatching.AssetBundleUtility : System.Object
UnityEngine.Experimental.AssetBundlePatching.AssetBundleUtility = {}
---@alias CS.UnityEngine.Experimental.AssetBundlePatching.AssetBundleUtility UnityEngine.Experimental.AssetBundlePatching.AssetBundleUtility
CS.UnityEngine.Experimental.AssetBundlePatching.AssetBundleUtility = UnityEngine.Experimental.AssetBundlePatching.AssetBundleUtility

---@param bundles UnityEngine.AssetBundle[]
---@param filenames System.String[]
function UnityEngine.Experimental.AssetBundlePatching.AssetBundleUtility.PatchAssetBundles(bundles, filenames) end

---@class UnityEngine.AudioSettings : System.Object
---@field driverCapabilities UnityEngine.AudioSpeakerMode
---@field speakerMode UnityEngine.AudioSpeakerMode
---@field dspTime number
---@field outputSampleRate number
---@field audioSpatialExperience UnityEngine.AudioSpatialExperience
UnityEngine.AudioSettings = {}
---@alias CS.UnityEngine.AudioSettings UnityEngine.AudioSettings
CS.UnityEngine.AudioSettings = UnityEngine.AudioSettings

---@return UnityEngine.AudioSettings
function UnityEngine.AudioSettings.New() end
---@param out_bufferLength number
---@param out_numBuffers number
---@return ,number,number
function UnityEngine.AudioSettings.GetDSPBufferSize(out_bufferLength, out_numBuffers) end
---@return System.String[]
function UnityEngine.AudioSettings.GetSpatializerPluginNames() end
---@return string
function UnityEngine.AudioSettings.GetSpatializerPluginName() end
---@param pluginName string
function UnityEngine.AudioSettings.SetSpatializerPluginName(pluginName) end
---@return UnityEngine.AudioConfiguration
function UnityEngine.AudioSettings.GetConfiguration() end
---@param config UnityEngine.AudioConfiguration
---@return boolean
function UnityEngine.AudioSettings.Reset(config) end

---@class UnityEngine.AudioSettings.AudioConfigurationChangeHandler : System.MulticastDelegate
UnityEngine.AudioSettings.AudioConfigurationChangeHandler = {}
---@alias CS.UnityEngine.AudioSettings.AudioConfigurationChangeHandler UnityEngine.AudioSettings.AudioConfigurationChangeHandler
CS.UnityEngine.AudioSettings.AudioConfigurationChangeHandler = UnityEngine.AudioSettings.AudioConfigurationChangeHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.AudioSettings.AudioConfigurationChangeHandler
function UnityEngine.AudioSettings.AudioConfigurationChangeHandler.New(object, method) end
---@param deviceWasChanged boolean
function UnityEngine.AudioSettings.AudioConfigurationChangeHandler:Invoke(deviceWasChanged) end
---@param deviceWasChanged boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.AudioSettings.AudioConfigurationChangeHandler:BeginInvoke(deviceWasChanged, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.AudioSettings.AudioConfigurationChangeHandler:EndInvoke(result) end

---@class UnityEngine.AudioSettings.Mobile : System.Object
---@field muteState boolean
---@field stopAudioOutputOnMute boolean
---@field audioOutputStarted boolean
UnityEngine.AudioSettings.Mobile = {}
---@alias CS.UnityEngine.AudioSettings.Mobile UnityEngine.AudioSettings.Mobile
CS.UnityEngine.AudioSettings.Mobile = UnityEngine.AudioSettings.Mobile

function UnityEngine.AudioSettings.Mobile.StartAudioOutput() end
function UnityEngine.AudioSettings.Mobile.StopAudioOutput() end

---@class UnityEngine.AudioSource : UnityEngine.AudioBehaviour
---@field volume number
---@field pitch number
---@field time number
---@field timeSamples number
---@field clip UnityEngine.AudioClip
---@field outputAudioMixerGroup UnityEngine.Audio.AudioMixerGroup
---@field gamepadSpeakerOutputType UnityEngine.GamepadSpeakerOutputType
---@field isPlaying boolean
---@field isVirtual boolean
---@field loop boolean
---@field ignoreListenerVolume boolean
---@field playOnAwake boolean
---@field ignoreListenerPause boolean
---@field velocityUpdateMode UnityEngine.AudioVelocityUpdateMode
---@field panStereo number
---@field spatialBlend number
---@field spatialize boolean
---@field spatializePostEffects boolean
---@field reverbZoneMix number
---@field bypassEffects boolean
---@field bypassListenerEffects boolean
---@field bypassReverbZones boolean
---@field dopplerLevel number
---@field spread number
---@field priority number
---@field mute boolean
---@field minDistance number
---@field maxDistance number
---@field rolloffMode UnityEngine.AudioRolloffMode
UnityEngine.AudioSource = {}
---@alias CS.UnityEngine.AudioSource UnityEngine.AudioSource
CS.UnityEngine.AudioSource = UnityEngine.AudioSource

---@return UnityEngine.AudioSource
function UnityEngine.AudioSource.New() end
---@param outputType UnityEngine.GamepadSpeakerOutputType
---@return boolean
function UnityEngine.AudioSource.GamepadSpeakerSupportsOutputType(outputType) end
---@overload fun(clip: UnityEngine.AudioClip, position: UnityEngine.Vector3)
---@param clip UnityEngine.AudioClip
---@param position UnityEngine.Vector3
---@param volume number
function UnityEngine.AudioSource.PlayClipAtPoint(clip, position, volume) end
---@param slot number
---@return boolean
function UnityEngine.AudioSource:PlayOnGamepad(slot) end
---@return boolean
function UnityEngine.AudioSource:DisableGamepadOutput() end
---@param slot number
---@param mixLevel number
---@return boolean
function UnityEngine.AudioSource:SetGamepadSpeakerMixLevel(slot, mixLevel) end
---@param slot number
---@return boolean
function UnityEngine.AudioSource:SetGamepadSpeakerMixLevelDefault(slot) end
---@param slot number
---@param restricted boolean
---@return boolean
function UnityEngine.AudioSource:SetGamepadSpeakerRestrictedAudio(slot, restricted) end
---@overload fun()
---@param delay number
function UnityEngine.AudioSource:Play(delay) end
---@param delay number
function UnityEngine.AudioSource:PlayDelayed(delay) end
---@param time number
function UnityEngine.AudioSource:PlayScheduled(time) end
---@overload fun(self: UnityEngine.AudioSource, clip: UnityEngine.AudioClip)
---@param clip UnityEngine.AudioClip
---@param volumeScale number
function UnityEngine.AudioSource:PlayOneShot(clip, volumeScale) end
---@param time number
function UnityEngine.AudioSource:SetScheduledStartTime(time) end
---@param time number
function UnityEngine.AudioSource:SetScheduledEndTime(time) end
function UnityEngine.AudioSource:Stop() end
function UnityEngine.AudioSource:Pause() end
function UnityEngine.AudioSource:UnPause() end
---@param type UnityEngine.AudioSourceCurveType
---@param curve UnityEngine.AnimationCurve
function UnityEngine.AudioSource:SetCustomCurve(type, curve) end
---@param type UnityEngine.AudioSourceCurveType
---@return UnityEngine.AnimationCurve
function UnityEngine.AudioSource:GetCustomCurve(type) end
---@param samples System.Single[]
---@param channel number
function UnityEngine.AudioSource:GetOutputData(samples, channel) end
---@param samples System.Single[]
---@param channel number
---@param window UnityEngine.FFTWindow
function UnityEngine.AudioSource:GetSpectrumData(samples, channel, window) end
---@param index number
---@param value number
---@return boolean
function UnityEngine.AudioSource:SetSpatializerFloat(index, value) end
---@param index number
---@param out_value number
---@return boolean,number
function UnityEngine.AudioSource:GetSpatializerFloat(index, out_value) end
---@param index number
---@param out_value number
---@return boolean,number
function UnityEngine.AudioSource:GetAmbisonicDecoderFloat(index, out_value) end
---@param index number
---@param value number
---@return boolean
function UnityEngine.AudioSource:SetAmbisonicDecoderFloat(index, value) end
---@param provider UnityEngine.Experimental.Audio.AudioSampleProvider
function UnityEngine.AudioSource:RegisterSampleProvider(provider) end
---@param provider UnityEngine.Experimental.Audio.AudioSampleProvider
function UnityEngine.AudioSource:UnregisterSampleProvider(provider) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.AudioSource:DOFade(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.AudioSource:DOPitch(endValue, duration) end

---@class UnityEngine.AudioLowPassFilter : UnityEngine.Behaviour
---@field customCutoffCurve UnityEngine.AnimationCurve
---@field cutoffFrequency number
---@field lowpassResonanceQ number
UnityEngine.AudioLowPassFilter = {}
---@alias CS.UnityEngine.AudioLowPassFilter UnityEngine.AudioLowPassFilter
CS.UnityEngine.AudioLowPassFilter = UnityEngine.AudioLowPassFilter

---@return UnityEngine.AudioLowPassFilter
function UnityEngine.AudioLowPassFilter.New() end

---@class UnityEngine.AudioHighPassFilter : UnityEngine.Behaviour
---@field cutoffFrequency number
---@field highpassResonanceQ number
UnityEngine.AudioHighPassFilter = {}
---@alias CS.UnityEngine.AudioHighPassFilter UnityEngine.AudioHighPassFilter
CS.UnityEngine.AudioHighPassFilter = UnityEngine.AudioHighPassFilter

---@return UnityEngine.AudioHighPassFilter
function UnityEngine.AudioHighPassFilter.New() end

---@class UnityEngine.AudioReverbFilter : UnityEngine.Behaviour
---@field reverbPreset UnityEngine.AudioReverbPreset
---@field dryLevel number
---@field room number
---@field roomHF number
---@field decayTime number
---@field decayHFRatio number
---@field reflectionsLevel number
---@field reflectionsDelay number
---@field reverbLevel number
---@field reverbDelay number
---@field diffusion number
---@field density number
---@field hfReference number
---@field roomLF number
---@field lfReference number
UnityEngine.AudioReverbFilter = {}
---@alias CS.UnityEngine.AudioReverbFilter UnityEngine.AudioReverbFilter
CS.UnityEngine.AudioReverbFilter = UnityEngine.AudioReverbFilter

---@return UnityEngine.AudioReverbFilter
function UnityEngine.AudioReverbFilter.New() end

---@class UnityEngine.AudioSpeakerMode
---@field Mono UnityEngine.AudioSpeakerMode
---@field Stereo UnityEngine.AudioSpeakerMode
---@field Quad UnityEngine.AudioSpeakerMode
---@field Surround UnityEngine.AudioSpeakerMode
---@field Mode5point1 UnityEngine.AudioSpeakerMode
---@field Mode7point1 UnityEngine.AudioSpeakerMode
---@field Prologic UnityEngine.AudioSpeakerMode
UnityEngine.AudioSpeakerMode = {}
---@alias CS.UnityEngine.AudioSpeakerMode UnityEngine.AudioSpeakerMode
CS.UnityEngine.AudioSpeakerMode = UnityEngine.AudioSpeakerMode


---@class UnityEngine.AudioDataLoadState
---@field Unloaded UnityEngine.AudioDataLoadState
---@field Loading UnityEngine.AudioDataLoadState
---@field Loaded UnityEngine.AudioDataLoadState
---@field Failed UnityEngine.AudioDataLoadState
UnityEngine.AudioDataLoadState = {}
---@alias CS.UnityEngine.AudioDataLoadState UnityEngine.AudioDataLoadState
CS.UnityEngine.AudioDataLoadState = UnityEngine.AudioDataLoadState


---@class UnityEngine.AudioConfiguration : System.ValueType
---@field speakerMode UnityEngine.AudioSpeakerMode
---@field dspBufferSize number
---@field sampleRate number
---@field numRealVoices number
---@field numVirtualVoices number
UnityEngine.AudioConfiguration = {}
---@alias CS.UnityEngine.AudioConfiguration UnityEngine.AudioConfiguration
CS.UnityEngine.AudioConfiguration = UnityEngine.AudioConfiguration


---@class UnityEngine.AudioCompressionFormat
---@field PCM UnityEngine.AudioCompressionFormat
---@field Vorbis UnityEngine.AudioCompressionFormat
---@field ADPCM UnityEngine.AudioCompressionFormat
---@field MP3 UnityEngine.AudioCompressionFormat
---@field VAG UnityEngine.AudioCompressionFormat
---@field HEVAG UnityEngine.AudioCompressionFormat
---@field XMA UnityEngine.AudioCompressionFormat
---@field AAC UnityEngine.AudioCompressionFormat
---@field GCADPCM UnityEngine.AudioCompressionFormat
---@field ATRAC9 UnityEngine.AudioCompressionFormat
UnityEngine.AudioCompressionFormat = {}
---@alias CS.UnityEngine.AudioCompressionFormat UnityEngine.AudioCompressionFormat
CS.UnityEngine.AudioCompressionFormat = UnityEngine.AudioCompressionFormat


---@class UnityEngine.AudioClipLoadType
---@field DecompressOnLoad UnityEngine.AudioClipLoadType
---@field CompressedInMemory UnityEngine.AudioClipLoadType
---@field Streaming UnityEngine.AudioClipLoadType
UnityEngine.AudioClipLoadType = {}
---@alias CS.UnityEngine.AudioClipLoadType UnityEngine.AudioClipLoadType
CS.UnityEngine.AudioClipLoadType = UnityEngine.AudioClipLoadType


---@class UnityEngine.AudioVelocityUpdateMode
---@field Auto UnityEngine.AudioVelocityUpdateMode
---@field Fixed UnityEngine.AudioVelocityUpdateMode
---@field Dynamic UnityEngine.AudioVelocityUpdateMode
UnityEngine.AudioVelocityUpdateMode = {}
---@alias CS.UnityEngine.AudioVelocityUpdateMode UnityEngine.AudioVelocityUpdateMode
CS.UnityEngine.AudioVelocityUpdateMode = UnityEngine.AudioVelocityUpdateMode


---@class UnityEngine.FFTWindow
---@field Rectangular UnityEngine.FFTWindow
---@field Triangle UnityEngine.FFTWindow
---@field Hamming UnityEngine.FFTWindow
---@field Hanning UnityEngine.FFTWindow
---@field Blackman UnityEngine.FFTWindow
---@field BlackmanHarris UnityEngine.FFTWindow
UnityEngine.FFTWindow = {}
---@alias CS.UnityEngine.FFTWindow UnityEngine.FFTWindow
CS.UnityEngine.FFTWindow = UnityEngine.FFTWindow


---@class UnityEngine.AudioRolloffMode
---@field Logarithmic UnityEngine.AudioRolloffMode
---@field Linear UnityEngine.AudioRolloffMode
---@field Custom UnityEngine.AudioRolloffMode
UnityEngine.AudioRolloffMode = {}
---@alias CS.UnityEngine.AudioRolloffMode UnityEngine.AudioRolloffMode
CS.UnityEngine.AudioRolloffMode = UnityEngine.AudioRolloffMode


---@class UnityEngine.AudioSourceCurveType
---@field CustomRolloff UnityEngine.AudioSourceCurveType
---@field SpatialBlend UnityEngine.AudioSourceCurveType
---@field ReverbZoneMix UnityEngine.AudioSourceCurveType
---@field Spread UnityEngine.AudioSourceCurveType
UnityEngine.AudioSourceCurveType = {}
---@alias CS.UnityEngine.AudioSourceCurveType UnityEngine.AudioSourceCurveType
CS.UnityEngine.AudioSourceCurveType = UnityEngine.AudioSourceCurveType


---@class UnityEngine.GamepadSpeakerOutputType
---@field Speaker UnityEngine.GamepadSpeakerOutputType
---@field Vibration UnityEngine.GamepadSpeakerOutputType
---@field SecondaryVibration UnityEngine.GamepadSpeakerOutputType
UnityEngine.GamepadSpeakerOutputType = {}
---@alias CS.UnityEngine.GamepadSpeakerOutputType UnityEngine.GamepadSpeakerOutputType
CS.UnityEngine.GamepadSpeakerOutputType = UnityEngine.GamepadSpeakerOutputType


---@class UnityEngine.AudioReverbPreset
---@field Off UnityEngine.AudioReverbPreset
---@field Generic UnityEngine.AudioReverbPreset
---@field PaddedCell UnityEngine.AudioReverbPreset
---@field Room UnityEngine.AudioReverbPreset
---@field Bathroom UnityEngine.AudioReverbPreset
---@field Livingroom UnityEngine.AudioReverbPreset
---@field Stoneroom UnityEngine.AudioReverbPreset
---@field Auditorium UnityEngine.AudioReverbPreset
---@field Concerthall UnityEngine.AudioReverbPreset
---@field Cave UnityEngine.AudioReverbPreset
---@field Arena UnityEngine.AudioReverbPreset
---@field Hangar UnityEngine.AudioReverbPreset
---@field CarpetedHallway UnityEngine.AudioReverbPreset
---@field Hallway UnityEngine.AudioReverbPreset
---@field StoneCorridor UnityEngine.AudioReverbPreset
---@field Alley UnityEngine.AudioReverbPreset
---@field Forest UnityEngine.AudioReverbPreset
---@field City UnityEngine.AudioReverbPreset
---@field Mountains UnityEngine.AudioReverbPreset
---@field Quarry UnityEngine.AudioReverbPreset
---@field Plain UnityEngine.AudioReverbPreset
---@field ParkingLot UnityEngine.AudioReverbPreset
---@field SewerPipe UnityEngine.AudioReverbPreset
---@field Underwater UnityEngine.AudioReverbPreset
---@field Drugged UnityEngine.AudioReverbPreset
---@field Dizzy UnityEngine.AudioReverbPreset
---@field Psychotic UnityEngine.AudioReverbPreset
---@field User UnityEngine.AudioReverbPreset
UnityEngine.AudioReverbPreset = {}
---@alias CS.UnityEngine.AudioReverbPreset UnityEngine.AudioReverbPreset
CS.UnityEngine.AudioReverbPreset = UnityEngine.AudioReverbPreset


---@class UnityEngine.AudioSpatialExperience
---@field Bypassed UnityEngine.AudioSpatialExperience
---@field HeadTracked UnityEngine.AudioSpatialExperience
---@field Fixed UnityEngine.AudioSpatialExperience
UnityEngine.AudioSpatialExperience = {}
---@alias CS.UnityEngine.AudioSpatialExperience UnityEngine.AudioSpatialExperience
CS.UnityEngine.AudioSpatialExperience = UnityEngine.AudioSpatialExperience


---@class UnityEngine.AudioClip : UnityEngine.Object
---@field length number
---@field samples number
---@field channels number
---@field frequency number
---@field loadType UnityEngine.AudioClipLoadType
---@field preloadAudioData boolean
---@field ambisonic boolean
---@field loadInBackground boolean
---@field loadState UnityEngine.AudioDataLoadState
UnityEngine.AudioClip = {}
---@alias CS.UnityEngine.AudioClip UnityEngine.AudioClip
CS.UnityEngine.AudioClip = UnityEngine.AudioClip

---@overload fun(name: string, lengthSamples: number, channels: number, frequency: number, stream: boolean) : UnityEngine.AudioClip
---@overload fun(name: string, lengthSamples: number, channels: number, frequency: number, stream: boolean, pcmreadercallback: UnityEngine.AudioClip.PCMReaderCallback) : UnityEngine.AudioClip
---@param name string
---@param lengthSamples number
---@param channels number
---@param frequency number
---@param stream boolean
---@param pcmreadercallback UnityEngine.AudioClip.PCMReaderCallback
---@param pcmsetpositioncallback UnityEngine.AudioClip.PCMSetPositionCallback
---@return UnityEngine.AudioClip
function UnityEngine.AudioClip.Create(name, lengthSamples, channels, frequency, stream, pcmreadercallback, pcmsetpositioncallback) end
---@return boolean
function UnityEngine.AudioClip:LoadAudioData() end
---@return boolean
function UnityEngine.AudioClip:UnloadAudioData() end
---@param data System.Single[]
---@param offsetSamples number
---@return boolean
function UnityEngine.AudioClip:GetData(data, offsetSamples) end
---@param data System.Single[]
---@param offsetSamples number
---@return boolean
function UnityEngine.AudioClip:SetData(data, offsetSamples) end
---@param start number
---@param _end number
---@param loop boolean
---@param allowDrop boolean
---@param loopPointIsStart boolean
---@return number
function UnityEngine.AudioClip:Internal_CreateAudioClipSampleProvider(start, _end, loop, allowDrop, loopPointIsStart) end

---@class UnityEngine.AudioClip.PCMReaderCallback : System.MulticastDelegate
UnityEngine.AudioClip.PCMReaderCallback = {}
---@alias CS.UnityEngine.AudioClip.PCMReaderCallback UnityEngine.AudioClip.PCMReaderCallback
CS.UnityEngine.AudioClip.PCMReaderCallback = UnityEngine.AudioClip.PCMReaderCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.AudioClip.PCMReaderCallback
function UnityEngine.AudioClip.PCMReaderCallback.New(object, method) end
---@param data System.Single[]
function UnityEngine.AudioClip.PCMReaderCallback:Invoke(data) end
---@param data System.Single[]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.AudioClip.PCMReaderCallback:BeginInvoke(data, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.AudioClip.PCMReaderCallback:EndInvoke(result) end

---@class UnityEngine.AudioClip.PCMSetPositionCallback : System.MulticastDelegate
UnityEngine.AudioClip.PCMSetPositionCallback = {}
---@alias CS.UnityEngine.AudioClip.PCMSetPositionCallback UnityEngine.AudioClip.PCMSetPositionCallback
CS.UnityEngine.AudioClip.PCMSetPositionCallback = UnityEngine.AudioClip.PCMSetPositionCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.AudioClip.PCMSetPositionCallback
function UnityEngine.AudioClip.PCMSetPositionCallback.New(object, method) end
---@param position number
function UnityEngine.AudioClip.PCMSetPositionCallback:Invoke(position) end
---@param position number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.AudioClip.PCMSetPositionCallback:BeginInvoke(position, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.AudioClip.PCMSetPositionCallback:EndInvoke(result) end

---@class UnityEngine.AudioBehaviour : UnityEngine.Behaviour
UnityEngine.AudioBehaviour = {}
---@alias CS.UnityEngine.AudioBehaviour UnityEngine.AudioBehaviour
CS.UnityEngine.AudioBehaviour = UnityEngine.AudioBehaviour

---@return UnityEngine.AudioBehaviour
function UnityEngine.AudioBehaviour.New() end

---@class UnityEngine.AudioListener : UnityEngine.AudioBehaviour
---@field volume number
---@field pause boolean
---@field velocityUpdateMode UnityEngine.AudioVelocityUpdateMode
UnityEngine.AudioListener = {}
---@alias CS.UnityEngine.AudioListener UnityEngine.AudioListener
CS.UnityEngine.AudioListener = UnityEngine.AudioListener

---@return UnityEngine.AudioListener
function UnityEngine.AudioListener.New() end
---@param samples System.Single[]
---@param channel number
function UnityEngine.AudioListener.GetOutputData(samples, channel) end
---@param samples System.Single[]
---@param channel number
---@param window UnityEngine.FFTWindow
function UnityEngine.AudioListener.GetSpectrumData(samples, channel, window) end

---@class UnityEngine.AudioReverbZone : UnityEngine.Behaviour
---@field minDistance number
---@field maxDistance number
---@field reverbPreset UnityEngine.AudioReverbPreset
---@field room number
---@field roomHF number
---@field roomLF number
---@field decayTime number
---@field decayHFRatio number
---@field reflections number
---@field reflectionsDelay number
---@field reverb number
---@field reverbDelay number
---@field HFReference number
---@field LFReference number
---@field diffusion number
---@field density number
UnityEngine.AudioReverbZone = {}
---@alias CS.UnityEngine.AudioReverbZone UnityEngine.AudioReverbZone
CS.UnityEngine.AudioReverbZone = UnityEngine.AudioReverbZone

---@return UnityEngine.AudioReverbZone
function UnityEngine.AudioReverbZone.New() end

---@class UnityEngine.AudioDistortionFilter : UnityEngine.Behaviour
---@field distortionLevel number
UnityEngine.AudioDistortionFilter = {}
---@alias CS.UnityEngine.AudioDistortionFilter UnityEngine.AudioDistortionFilter
CS.UnityEngine.AudioDistortionFilter = UnityEngine.AudioDistortionFilter

---@return UnityEngine.AudioDistortionFilter
function UnityEngine.AudioDistortionFilter.New() end

---@class UnityEngine.AudioEchoFilter : UnityEngine.Behaviour
---@field delay number
---@field decayRatio number
---@field dryMix number
---@field wetMix number
UnityEngine.AudioEchoFilter = {}
---@alias CS.UnityEngine.AudioEchoFilter UnityEngine.AudioEchoFilter
CS.UnityEngine.AudioEchoFilter = UnityEngine.AudioEchoFilter

---@return UnityEngine.AudioEchoFilter
function UnityEngine.AudioEchoFilter.New() end

---@class UnityEngine.AudioChorusFilter : UnityEngine.Behaviour
---@field dryMix number
---@field wetMix1 number
---@field wetMix2 number
---@field wetMix3 number
---@field delay number
---@field rate number
---@field depth number
UnityEngine.AudioChorusFilter = {}
---@alias CS.UnityEngine.AudioChorusFilter UnityEngine.AudioChorusFilter
CS.UnityEngine.AudioChorusFilter = UnityEngine.AudioChorusFilter

---@return UnityEngine.AudioChorusFilter
function UnityEngine.AudioChorusFilter.New() end

---@class UnityEngine.Microphone : System.Object
---@field devices System.String[]
UnityEngine.Microphone = {}
---@alias CS.UnityEngine.Microphone UnityEngine.Microphone
CS.UnityEngine.Microphone = UnityEngine.Microphone

---@return UnityEngine.Microphone
function UnityEngine.Microphone.New() end
---@param deviceName string
---@param loop boolean
---@param lengthSec number
---@param frequency number
---@return UnityEngine.AudioClip
function UnityEngine.Microphone.Start(deviceName, loop, lengthSec, frequency) end
---@param deviceName string
function UnityEngine.Microphone.End(deviceName) end
---@param deviceName string
---@return boolean
function UnityEngine.Microphone.IsRecording(deviceName) end
---@param deviceName string
---@return number
function UnityEngine.Microphone.GetPosition(deviceName) end
---@param deviceName string
---@param out_minFreq number
---@param out_maxFreq number
---@return ,number,number
function UnityEngine.Microphone.GetDeviceCaps(deviceName, out_minFreq, out_maxFreq) end

---@class UnityEngine.AudioRenderer : System.Object
UnityEngine.AudioRenderer = {}
---@alias CS.UnityEngine.AudioRenderer UnityEngine.AudioRenderer
CS.UnityEngine.AudioRenderer = UnityEngine.AudioRenderer

---@return UnityEngine.AudioRenderer
function UnityEngine.AudioRenderer.New() end
---@return boolean
function UnityEngine.AudioRenderer.Start() end
---@return boolean
function UnityEngine.AudioRenderer.Stop() end
---@return number
function UnityEngine.AudioRenderer.GetSampleCountForCaptureFrame() end
---@param buffer Unity.Collections.NativeArray
---@return boolean
function UnityEngine.AudioRenderer.Render(buffer) end

---@class UnityEngine.MovieTexture : UnityEngine.Texture
UnityEngine.MovieTexture = {}
---@alias CS.UnityEngine.MovieTexture UnityEngine.MovieTexture
CS.UnityEngine.MovieTexture = UnityEngine.MovieTexture


---@class UnityEngine.WebCamFlags
---@field FrontFacing UnityEngine.WebCamFlags
---@field AutoFocusPointSupported UnityEngine.WebCamFlags
UnityEngine.WebCamFlags = {}
---@alias CS.UnityEngine.WebCamFlags UnityEngine.WebCamFlags
CS.UnityEngine.WebCamFlags = UnityEngine.WebCamFlags


---@class UnityEngine.WebCamKind
---@field WideAngle UnityEngine.WebCamKind
---@field Telephoto UnityEngine.WebCamKind
---@field ColorAndDepth UnityEngine.WebCamKind
---@field UltraWideAngle UnityEngine.WebCamKind
UnityEngine.WebCamKind = {}
---@alias CS.UnityEngine.WebCamKind UnityEngine.WebCamKind
CS.UnityEngine.WebCamKind = UnityEngine.WebCamKind


---@class UnityEngine.WebCamDevice : System.ValueType
---@field name string
---@field isFrontFacing boolean
---@field kind UnityEngine.WebCamKind
---@field depthCameraName string
---@field isAutoFocusPointSupported boolean
---@field availableResolutions UnityEngine.Resolution[]
UnityEngine.WebCamDevice = {}
---@alias CS.UnityEngine.WebCamDevice UnityEngine.WebCamDevice
CS.UnityEngine.WebCamDevice = UnityEngine.WebCamDevice


---@class UnityEngine.WebCamTexture : UnityEngine.Texture
---@field devices UnityEngine.WebCamDevice[]
---@field isPlaying boolean
---@field deviceName string
---@field requestedFPS number
---@field requestedWidth number
---@field requestedHeight number
---@field videoRotationAngle number
---@field videoVerticallyMirrored boolean
---@field didUpdateThisFrame boolean
---@field autoFocusPoint System.Nullable
---@field isDepth boolean
UnityEngine.WebCamTexture = {}
---@alias CS.UnityEngine.WebCamTexture UnityEngine.WebCamTexture
CS.UnityEngine.WebCamTexture = UnityEngine.WebCamTexture

---@overload fun(deviceName: string, requestedWidth: number, requestedHeight: number, requestedFPS: number) : UnityEngine.WebCamTexture
---@overload fun(deviceName: string, requestedWidth: number, requestedHeight: number) : UnityEngine.WebCamTexture
---@overload fun(deviceName: string) : UnityEngine.WebCamTexture
---@overload fun(requestedWidth: number, requestedHeight: number, requestedFPS: number) : UnityEngine.WebCamTexture
---@overload fun(requestedWidth: number, requestedHeight: number) : UnityEngine.WebCamTexture
---@return UnityEngine.WebCamTexture
function UnityEngine.WebCamTexture.New() end
function UnityEngine.WebCamTexture:Play() end
function UnityEngine.WebCamTexture:Pause() end
function UnityEngine.WebCamTexture:Stop() end
---@param x number
---@param y number
---@return UnityEngine.Color
function UnityEngine.WebCamTexture:GetPixel(x, y) end
---@overload fun() : UnityEngine.Color[]
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@return UnityEngine.Color[]
function UnityEngine.WebCamTexture:GetPixels(x, y, blockWidth, blockHeight) end
---@overload fun() : UnityEngine.Color32[]
---@param colors UnityEngine.Color32[]
---@return UnityEngine.Color32[]
function UnityEngine.WebCamTexture:GetPixels32(colors) end

---@class UnityEngine.Experimental.Audio.AudioClipExtensionsInternal : System.Object
UnityEngine.Experimental.Audio.AudioClipExtensionsInternal = {}
---@alias CS.UnityEngine.Experimental.Audio.AudioClipExtensionsInternal UnityEngine.Experimental.Audio.AudioClipExtensionsInternal
CS.UnityEngine.Experimental.Audio.AudioClipExtensionsInternal = UnityEngine.Experimental.Audio.AudioClipExtensionsInternal

---@param audioClip UnityEngine.AudioClip
---@param start number
---@param _end number
---@param loop boolean
---@param allowDrop boolean
---@param loopPointIsStart boolean
---@return number
function UnityEngine.Experimental.Audio.AudioClipExtensionsInternal.Internal_CreateAudioClipSampleProvider(audioClip, start, _end, loop, allowDrop, loopPointIsStart) end

---@class UnityEngine.Experimental.Audio.AudioSampleProvider : System.Object
---@field consumeSampleFramesNativeFunction UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction
---@field id number
---@field trackIndex number
---@field owner UnityEngine.Object
---@field valid boolean
---@field channelCount number
---@field sampleRate number
---@field maxSampleFrameCount number
---@field availableSampleFrameCount number
---@field freeSampleFrameCount number
---@field freeSampleFrameCountLowThreshold number
---@field enableSampleFramesAvailableEvents boolean
---@field enableSilencePadding boolean
UnityEngine.Experimental.Audio.AudioSampleProvider = {}
---@alias CS.UnityEngine.Experimental.Audio.AudioSampleProvider UnityEngine.Experimental.Audio.AudioSampleProvider
CS.UnityEngine.Experimental.Audio.AudioSampleProvider = UnityEngine.Experimental.Audio.AudioSampleProvider

function UnityEngine.Experimental.Audio.AudioSampleProvider:Dispose() end
---@param sampleFrames Unity.Collections.NativeArray
---@return number
function UnityEngine.Experimental.Audio.AudioSampleProvider:ConsumeSampleFrames(sampleFrames) end
---@param handler UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction
---@param userData System.IntPtr
function UnityEngine.Experimental.Audio.AudioSampleProvider:SetSampleFramesAvailableNativeHandler(handler, userData) end
function UnityEngine.Experimental.Audio.AudioSampleProvider:ClearSampleFramesAvailableNativeHandler() end
---@param handler UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction
---@param userData System.IntPtr
function UnityEngine.Experimental.Audio.AudioSampleProvider:SetSampleFramesOverflowNativeHandler(handler, userData) end
function UnityEngine.Experimental.Audio.AudioSampleProvider:ClearSampleFramesOverflowNativeHandler() end
---@return number
function UnityEngine.Experimental.Audio.AudioSampleProvider:GetSpeed() end

---@class UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction : System.MulticastDelegate
UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction = {}
---@alias CS.UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction = UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction
function UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction.New(object, method) end
---@param providerId number
---@param interleavedSampleFrames System.IntPtr
---@param sampleFrameCount number
---@return number
function UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction:Invoke(providerId, interleavedSampleFrames, sampleFrameCount) end
---@param providerId number
---@param interleavedSampleFrames System.IntPtr
---@param sampleFrameCount number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction:BeginInvoke(providerId, interleavedSampleFrames, sampleFrameCount, callback, object) end
---@param result System.IAsyncResult
---@return number
function UnityEngine.Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction:EndInvoke(result) end

---@class UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler : System.MulticastDelegate
UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler = {}
---@alias CS.UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler = UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler.New(object, method) end
---@param provider UnityEngine.Experimental.Audio.AudioSampleProvider
---@param sampleFrameCount number
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler:Invoke(provider, sampleFrameCount) end
---@param provider UnityEngine.Experimental.Audio.AudioSampleProvider
---@param sampleFrameCount number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler:BeginInvoke(provider, sampleFrameCount, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesHandler:EndInvoke(result) end

---@class UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction : System.MulticastDelegate
UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction = {}
---@alias CS.UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction
CS.UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction = UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction.New(object, method) end
---@param userData System.IntPtr
---@param providerId number
---@param sampleFrameCount number
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction:Invoke(userData, providerId, sampleFrameCount) end
---@param userData System.IntPtr
---@param providerId number
---@param sampleFrameCount number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction:BeginInvoke(userData, providerId, sampleFrameCount, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction:EndInvoke(result) end

---@class UnityEngine.Experimental.Audio.AudioSampleProviderExtensionsInternal : System.Object
UnityEngine.Experimental.Audio.AudioSampleProviderExtensionsInternal = {}
---@alias CS.UnityEngine.Experimental.Audio.AudioSampleProviderExtensionsInternal UnityEngine.Experimental.Audio.AudioSampleProviderExtensionsInternal
CS.UnityEngine.Experimental.Audio.AudioSampleProviderExtensionsInternal = UnityEngine.Experimental.Audio.AudioSampleProviderExtensionsInternal

---@param provider UnityEngine.Experimental.Audio.AudioSampleProvider
---@return number
function UnityEngine.Experimental.Audio.AudioSampleProviderExtensionsInternal.GetSpeed(provider) end

---@class UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal : System.Object
UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal = {}
---@alias CS.UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal
CS.UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal = UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal

---@param source UnityEngine.AudioSource
---@param provider UnityEngine.Experimental.Audio.AudioSampleProvider
function UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal.RegisterSampleProvider(source, provider) end
---@param source UnityEngine.AudioSource
---@param provider UnityEngine.Experimental.Audio.AudioSampleProvider
function UnityEngine.Experimental.Audio.AudioSourceExtensionsInternal.UnregisterSampleProvider(source, provider) end

---@class UnityEngine.Audio.AudioManagerTestProxy : System.Object
UnityEngine.Audio.AudioManagerTestProxy = {}
---@alias CS.UnityEngine.Audio.AudioManagerTestProxy UnityEngine.Audio.AudioManagerTestProxy
CS.UnityEngine.Audio.AudioManagerTestProxy = UnityEngine.Audio.AudioManagerTestProxy

---@return UnityEngine.Audio.AudioManagerTestProxy
function UnityEngine.Audio.AudioManagerTestProxy.New() end

---@class UnityEngine.Audio.AudioClipPlayable : System.ValueType
UnityEngine.Audio.AudioClipPlayable = {}
---@alias CS.UnityEngine.Audio.AudioClipPlayable UnityEngine.Audio.AudioClipPlayable
CS.UnityEngine.Audio.AudioClipPlayable = UnityEngine.Audio.AudioClipPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param clip UnityEngine.AudioClip
---@param looping boolean
---@return UnityEngine.Audio.AudioClipPlayable
function UnityEngine.Audio.AudioClipPlayable.Create(graph, clip, looping) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Audio.AudioClipPlayable:GetHandle() end
---@param other UnityEngine.Audio.AudioClipPlayable
---@return boolean
function UnityEngine.Audio.AudioClipPlayable:Equals(other) end
---@return UnityEngine.AudioClip
function UnityEngine.Audio.AudioClipPlayable:GetClip() end
---@param value UnityEngine.AudioClip
function UnityEngine.Audio.AudioClipPlayable:SetClip(value) end
---@return boolean
function UnityEngine.Audio.AudioClipPlayable:GetLooped() end
---@param value boolean
function UnityEngine.Audio.AudioClipPlayable:SetLooped(value) end
---@return boolean
function UnityEngine.Audio.AudioClipPlayable:IsChannelPlaying() end
---@return number
function UnityEngine.Audio.AudioClipPlayable:GetStartDelay() end
---@return number
function UnityEngine.Audio.AudioClipPlayable:GetPauseDelay() end
---@overload fun(self: UnityEngine.Audio.AudioClipPlayable, startTime: number, startDelay: number)
---@param startTime number
---@param startDelay number
---@param duration number
function UnityEngine.Audio.AudioClipPlayable:Seek(startTime, startDelay, duration) end

---@class UnityEngine.Audio.AudioMixerUpdateMode
---@field Normal UnityEngine.Audio.AudioMixerUpdateMode
---@field UnscaledTime UnityEngine.Audio.AudioMixerUpdateMode
UnityEngine.Audio.AudioMixerUpdateMode = {}
---@alias CS.UnityEngine.Audio.AudioMixerUpdateMode UnityEngine.Audio.AudioMixerUpdateMode
CS.UnityEngine.Audio.AudioMixerUpdateMode = UnityEngine.Audio.AudioMixerUpdateMode


---@class UnityEngine.Audio.AudioMixer : UnityEngine.Object
---@field outputAudioMixerGroup UnityEngine.Audio.AudioMixerGroup
---@field updateMode UnityEngine.Audio.AudioMixerUpdateMode
UnityEngine.Audio.AudioMixer = {}
---@alias CS.UnityEngine.Audio.AudioMixer UnityEngine.Audio.AudioMixer
CS.UnityEngine.Audio.AudioMixer = UnityEngine.Audio.AudioMixer

---@param name string
---@return UnityEngine.Audio.AudioMixerSnapshot
function UnityEngine.Audio.AudioMixer:FindSnapshot(name) end
---@param subPath string
---@return UnityEngine.Audio.AudioMixerGroup[]
function UnityEngine.Audio.AudioMixer:FindMatchingGroups(subPath) end
---@param snapshots UnityEngine.Audio.AudioMixerSnapshot[]
---@param weights System.Single[]
---@param timeToReach number
function UnityEngine.Audio.AudioMixer:TransitionToSnapshots(snapshots, weights, timeToReach) end
---@param name string
---@param value number
---@return boolean
function UnityEngine.Audio.AudioMixer:SetFloat(name, value) end
---@param name string
---@return boolean
function UnityEngine.Audio.AudioMixer:ClearFloat(name) end
---@param name string
---@param out_value number
---@return boolean,number
function UnityEngine.Audio.AudioMixer:GetFloat(name, out_value) end
---@param floatName string
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Audio.AudioMixer:DOSetFloat(floatName, endValue, duration) end
---@param withCallbacks boolean
---@return number
function UnityEngine.Audio.AudioMixer:DOComplete(withCallbacks) end
---@param complete boolean
---@return number
function UnityEngine.Audio.AudioMixer:DOKill(complete) end
---@return number
function UnityEngine.Audio.AudioMixer:DOFlip() end
---@param to number
---@param andPlay boolean
---@return number
function UnityEngine.Audio.AudioMixer:DOGoto(to, andPlay) end
---@return number
function UnityEngine.Audio.AudioMixer:DOPause() end
---@return number
function UnityEngine.Audio.AudioMixer:DOPlay() end
---@return number
function UnityEngine.Audio.AudioMixer:DOPlayBackwards() end
---@return number
function UnityEngine.Audio.AudioMixer:DOPlayForward() end
---@return number
function UnityEngine.Audio.AudioMixer:DORestart() end
---@return number
function UnityEngine.Audio.AudioMixer:DORewind() end
---@return number
function UnityEngine.Audio.AudioMixer:DOSmoothRewind() end
---@return number
function UnityEngine.Audio.AudioMixer:DOTogglePause() end

---@class UnityEngine.Audio.AudioMixerGroup : UnityEngine.Object
---@field audioMixer UnityEngine.Audio.AudioMixer
UnityEngine.Audio.AudioMixerGroup = {}
---@alias CS.UnityEngine.Audio.AudioMixerGroup UnityEngine.Audio.AudioMixerGroup
CS.UnityEngine.Audio.AudioMixerGroup = UnityEngine.Audio.AudioMixerGroup


---@class UnityEngine.Audio.AudioMixerPlayable : System.ValueType
UnityEngine.Audio.AudioMixerPlayable = {}
---@alias CS.UnityEngine.Audio.AudioMixerPlayable UnityEngine.Audio.AudioMixerPlayable
CS.UnityEngine.Audio.AudioMixerPlayable = UnityEngine.Audio.AudioMixerPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount number
---@param normalizeInputVolumes boolean
---@return UnityEngine.Audio.AudioMixerPlayable
function UnityEngine.Audio.AudioMixerPlayable.Create(graph, inputCount, normalizeInputVolumes) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Audio.AudioMixerPlayable:GetHandle() end
---@param other UnityEngine.Audio.AudioMixerPlayable
---@return boolean
function UnityEngine.Audio.AudioMixerPlayable:Equals(other) end

---@class UnityEngine.Audio.AudioMixerSnapshot : UnityEngine.Object
---@field audioMixer UnityEngine.Audio.AudioMixer
UnityEngine.Audio.AudioMixerSnapshot = {}
---@alias CS.UnityEngine.Audio.AudioMixerSnapshot UnityEngine.Audio.AudioMixerSnapshot
CS.UnityEngine.Audio.AudioMixerSnapshot = UnityEngine.Audio.AudioMixerSnapshot

---@param timeToReach number
function UnityEngine.Audio.AudioMixerSnapshot:TransitionTo(timeToReach) end

---@class UnityEngine.Audio.AudioPlayableBinding : System.Object
UnityEngine.Audio.AudioPlayableBinding = {}
---@alias CS.UnityEngine.Audio.AudioPlayableBinding UnityEngine.Audio.AudioPlayableBinding
CS.UnityEngine.Audio.AudioPlayableBinding = UnityEngine.Audio.AudioPlayableBinding

---@param name string
---@param key UnityEngine.Object
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Audio.AudioPlayableBinding.Create(name, key) end

---@class UnityEngine.Audio.AudioPlayableGraphExtensions : System.Object
UnityEngine.Audio.AudioPlayableGraphExtensions = {}
---@alias CS.UnityEngine.Audio.AudioPlayableGraphExtensions UnityEngine.Audio.AudioPlayableGraphExtensions
CS.UnityEngine.Audio.AudioPlayableGraphExtensions = UnityEngine.Audio.AudioPlayableGraphExtensions


---@class UnityEngine.Audio.AudioPlayableOutput : System.ValueType
---@field Null UnityEngine.Audio.AudioPlayableOutput
UnityEngine.Audio.AudioPlayableOutput = {}
---@alias CS.UnityEngine.Audio.AudioPlayableOutput UnityEngine.Audio.AudioPlayableOutput
CS.UnityEngine.Audio.AudioPlayableOutput = UnityEngine.Audio.AudioPlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@param target UnityEngine.AudioSource
---@return UnityEngine.Audio.AudioPlayableOutput
function UnityEngine.Audio.AudioPlayableOutput.Create(graph, name, target) end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Audio.AudioPlayableOutput:GetHandle() end
---@return UnityEngine.AudioSource
function UnityEngine.Audio.AudioPlayableOutput:GetTarget() end
---@param value UnityEngine.AudioSource
function UnityEngine.Audio.AudioPlayableOutput:SetTarget(value) end
---@return boolean
function UnityEngine.Audio.AudioPlayableOutput:GetEvaluateOnSeek() end
---@param value boolean
function UnityEngine.Audio.AudioPlayableOutput:SetEvaluateOnSeek(value) end

---@class UnityEngine.ClothSphereColliderPair : System.ValueType
---@field first UnityEngine.SphereCollider
---@field second UnityEngine.SphereCollider
UnityEngine.ClothSphereColliderPair = {}
---@alias CS.UnityEngine.ClothSphereColliderPair UnityEngine.ClothSphereColliderPair
CS.UnityEngine.ClothSphereColliderPair = UnityEngine.ClothSphereColliderPair

---@overload fun(a: UnityEngine.SphereCollider) : UnityEngine.ClothSphereColliderPair
---@param a UnityEngine.SphereCollider
---@param b UnityEngine.SphereCollider
---@return UnityEngine.ClothSphereColliderPair
function UnityEngine.ClothSphereColliderPair.New(a, b) end

---@class UnityEngine.ClothSkinningCoefficient : System.ValueType
---@field maxDistance number
---@field collisionSphereDistance number
UnityEngine.ClothSkinningCoefficient = {}
---@alias CS.UnityEngine.ClothSkinningCoefficient UnityEngine.ClothSkinningCoefficient
CS.UnityEngine.ClothSkinningCoefficient = UnityEngine.ClothSkinningCoefficient


---@class UnityEngine.Cloth : UnityEngine.Component
---@field vertices UnityEngine.Vector3[]
---@field normals UnityEngine.Vector3[]
---@field coefficients UnityEngine.ClothSkinningCoefficient[]
---@field capsuleColliders UnityEngine.CapsuleCollider[]
---@field sphereColliders UnityEngine.ClothSphereColliderPair[]
---@field sleepThreshold number
---@field bendingStiffness number
---@field stretchingStiffness number
---@field damping number
---@field externalAcceleration UnityEngine.Vector3
---@field randomAcceleration UnityEngine.Vector3
---@field useGravity boolean
---@field enabled boolean
---@field friction number
---@field collisionMassScale number
---@field enableContinuousCollision boolean
---@field useVirtualParticles number
---@field worldVelocityScale number
---@field worldAccelerationScale number
---@field clothSolverFrequency number
---@field useTethers boolean
---@field stiffnessFrequency number
---@field selfCollisionDistance number
---@field selfCollisionStiffness number
UnityEngine.Cloth = {}
---@alias CS.UnityEngine.Cloth UnityEngine.Cloth
CS.UnityEngine.Cloth = UnityEngine.Cloth

---@return UnityEngine.Cloth
function UnityEngine.Cloth.New() end
function UnityEngine.Cloth:ClearTransformMotion() end
---@param indices System.Collections.Generic.List
function UnityEngine.Cloth:GetSelfAndInterCollisionIndices(indices) end
---@param indices System.Collections.Generic.List
function UnityEngine.Cloth:SetSelfAndInterCollisionIndices(indices) end
---@param indicesOutList System.Collections.Generic.List
function UnityEngine.Cloth:GetVirtualParticleIndices(indicesOutList) end
---@param indicesIn System.Collections.Generic.List
function UnityEngine.Cloth:SetVirtualParticleIndices(indicesIn) end
---@param weightsOutList System.Collections.Generic.List
function UnityEngine.Cloth:GetVirtualParticleWeights(weightsOutList) end
---@param weights System.Collections.Generic.List
function UnityEngine.Cloth:SetVirtualParticleWeights(weights) end
---@overload fun(self: UnityEngine.Cloth, enabled: boolean, interpolationTime: number)
---@param enabled boolean
function UnityEngine.Cloth:SetEnabledFading(enabled) end

---@class UnityEngine.ClusterInputType
---@field Button UnityEngine.ClusterInputType
---@field Axis UnityEngine.ClusterInputType
---@field Tracker UnityEngine.ClusterInputType
---@field CustomProvidedInput UnityEngine.ClusterInputType
UnityEngine.ClusterInputType = {}
---@alias CS.UnityEngine.ClusterInputType UnityEngine.ClusterInputType
CS.UnityEngine.ClusterInputType = UnityEngine.ClusterInputType


---@class UnityEngine.ClusterInput : System.Object
UnityEngine.ClusterInput = {}
---@alias CS.UnityEngine.ClusterInput UnityEngine.ClusterInput
CS.UnityEngine.ClusterInput = UnityEngine.ClusterInput

---@return UnityEngine.ClusterInput
function UnityEngine.ClusterInput.New() end
---@param name string
---@return number
function UnityEngine.ClusterInput.GetAxis(name) end
---@param name string
---@return boolean
function UnityEngine.ClusterInput.GetButton(name) end
---@param name string
---@return UnityEngine.Vector3
function UnityEngine.ClusterInput.GetTrackerPosition(name) end
---@param name string
---@return UnityEngine.Quaternion
function UnityEngine.ClusterInput.GetTrackerRotation(name) end
---@param name string
---@param value number
function UnityEngine.ClusterInput.SetAxis(name, value) end
---@param name string
---@param value boolean
function UnityEngine.ClusterInput.SetButton(name, value) end
---@param name string
---@param value UnityEngine.Vector3
function UnityEngine.ClusterInput.SetTrackerPosition(name, value) end
---@param name string
---@param value UnityEngine.Quaternion
function UnityEngine.ClusterInput.SetTrackerRotation(name, value) end
---@param name string
---@param deviceName string
---@param serverUrl string
---@param index number
---@param type UnityEngine.ClusterInputType
---@return boolean
function UnityEngine.ClusterInput.AddInput(name, deviceName, serverUrl, index, type) end
---@param name string
---@param deviceName string
---@param serverUrl string
---@param index number
---@param type UnityEngine.ClusterInputType
---@return boolean
function UnityEngine.ClusterInput.EditInput(name, deviceName, serverUrl, index, type) end
---@param name string
---@return boolean
function UnityEngine.ClusterInput.CheckConnectionToServer(name) end

---@class UnityEngine.ClusterNetwork : System.Object
---@field isMasterOfCluster boolean
---@field isDisconnected boolean
---@field nodeIndex number
UnityEngine.ClusterNetwork = {}
---@alias CS.UnityEngine.ClusterNetwork UnityEngine.ClusterNetwork
CS.UnityEngine.ClusterNetwork = UnityEngine.ClusterNetwork

---@return UnityEngine.ClusterNetwork
function UnityEngine.ClusterNetwork.New() end

---@class UnityEngine.ClusterSerialization : System.Object
UnityEngine.ClusterSerialization = {}
---@alias CS.UnityEngine.ClusterSerialization UnityEngine.ClusterSerialization
CS.UnityEngine.ClusterSerialization = UnityEngine.ClusterSerialization

---@param buffer Unity.Collections.NativeArray
---@return number
function UnityEngine.ClusterSerialization.SaveTimeManagerState(buffer) end
---@param buffer Unity.Collections.NativeArray
---@return boolean
function UnityEngine.ClusterSerialization.RestoreTimeManagerState(buffer) end
---@param buffer Unity.Collections.NativeArray
---@return number
function UnityEngine.ClusterSerialization.SaveInputManagerState(buffer) end
---@param buffer Unity.Collections.NativeArray
---@return boolean
function UnityEngine.ClusterSerialization.RestoreInputManagerState(buffer) end
---@param buffer Unity.Collections.NativeArray
---@return number
function UnityEngine.ClusterSerialization.SaveClusterInputState(buffer) end
---@param buffer Unity.Collections.NativeArray
---@return boolean
function UnityEngine.ClusterSerialization.RestoreClusterInputState(buffer) end

---@class UnityEngineInternal.GITextureType
---@field Charting UnityEngineInternal.GITextureType
---@field Albedo UnityEngineInternal.GITextureType
---@field Emissive UnityEngineInternal.GITextureType
---@field Irradiance UnityEngineInternal.GITextureType
---@field Directionality UnityEngineInternal.GITextureType
---@field Baked UnityEngineInternal.GITextureType
---@field BakedDirectional UnityEngineInternal.GITextureType
---@field InputWorkspace UnityEngineInternal.GITextureType
---@field BakedShadowMask UnityEngineInternal.GITextureType
---@field BakedAlbedo UnityEngineInternal.GITextureType
---@field BakedEmissive UnityEngineInternal.GITextureType
---@field BakedCharting UnityEngineInternal.GITextureType
---@field BakedTexelValidity UnityEngineInternal.GITextureType
---@field BakedUVOverlap UnityEngineInternal.GITextureType
---@field BakedLightmapCulling UnityEngineInternal.GITextureType
UnityEngineInternal.GITextureType = {}
---@alias CS.UnityEngineInternal.GITextureType UnityEngineInternal.GITextureType
CS.UnityEngineInternal.GITextureType = UnityEngineInternal.GITextureType


---@class UnityEngineInternal.GIDebugVisualisation : System.Object
---@field cycleMode boolean
---@field pauseCycleMode boolean
---@field texType UnityEngineInternal.GITextureType
UnityEngineInternal.GIDebugVisualisation = {}
---@alias CS.UnityEngineInternal.GIDebugVisualisation UnityEngineInternal.GIDebugVisualisation
CS.UnityEngineInternal.GIDebugVisualisation = UnityEngineInternal.GIDebugVisualisation

function UnityEngineInternal.GIDebugVisualisation.ResetRuntimeInputTextures() end
function UnityEngineInternal.GIDebugVisualisation.PlayCycleMode() end
function UnityEngineInternal.GIDebugVisualisation.PauseCycleMode() end
function UnityEngineInternal.GIDebugVisualisation.StopCycleMode() end
---@param skip number
function UnityEngineInternal.GIDebugVisualisation.CycleSkipSystems(skip) end
---@param skip number
function UnityEngineInternal.GIDebugVisualisation.CycleSkipInstances(skip) end

---@class UnityEngineInternal.MemorylessMode
---@field Unused UnityEngineInternal.MemorylessMode
---@field Forced UnityEngineInternal.MemorylessMode
---@field Automatic UnityEngineInternal.MemorylessMode
UnityEngineInternal.MemorylessMode = {}
---@alias CS.UnityEngineInternal.MemorylessMode UnityEngineInternal.MemorylessMode
CS.UnityEngineInternal.MemorylessMode = UnityEngineInternal.MemorylessMode


---@class UnityEngineInternal.MemorylessManager : System.Object
---@field depthMemorylessMode UnityEngineInternal.MemorylessMode
UnityEngineInternal.MemorylessManager = {}
---@alias CS.UnityEngineInternal.MemorylessManager UnityEngineInternal.MemorylessManager
CS.UnityEngineInternal.MemorylessManager = UnityEngineInternal.MemorylessManager

---@return UnityEngineInternal.MemorylessManager
function UnityEngineInternal.MemorylessManager.New() end

---@class UnityEngineInternal.GraphicsDeviceDebugSettings : System.ValueType
---@field sleepAtStartOfGraphicsJobs number
---@field sleepBeforeTextureUpload number
UnityEngineInternal.GraphicsDeviceDebugSettings = {}
---@alias CS.UnityEngineInternal.GraphicsDeviceDebugSettings UnityEngineInternal.GraphicsDeviceDebugSettings
CS.UnityEngineInternal.GraphicsDeviceDebugSettings = UnityEngineInternal.GraphicsDeviceDebugSettings


---@class UnityEngineInternal.GraphicsDeviceDebug : System.Object
UnityEngineInternal.GraphicsDeviceDebug = {}
---@alias CS.UnityEngineInternal.GraphicsDeviceDebug UnityEngineInternal.GraphicsDeviceDebug
CS.UnityEngineInternal.GraphicsDeviceDebug = UnityEngineInternal.GraphicsDeviceDebug


---@class UnityEngineInternal.LightmapType
---@field NoLightmap UnityEngineInternal.LightmapType
---@field StaticLightmap UnityEngineInternal.LightmapType
---@field DynamicLightmap UnityEngineInternal.LightmapType
UnityEngineInternal.LightmapType = {}
---@alias CS.UnityEngineInternal.LightmapType UnityEngineInternal.LightmapType
CS.UnityEngineInternal.LightmapType = UnityEngineInternal.LightmapType


---@class UnityEngineInternal.MathfInternal : System.ValueType
---@field FloatMinNormal number
---@field FloatMinDenormal number
---@field IsFlushToZeroEnabled boolean
UnityEngineInternal.MathfInternal = {}
---@alias CS.UnityEngineInternal.MathfInternal UnityEngineInternal.MathfInternal
CS.UnityEngineInternal.MathfInternal = UnityEngineInternal.MathfInternal


---@class UnityEngineInternal.APIUpdaterRuntimeServices : System.Object
UnityEngineInternal.APIUpdaterRuntimeServices = {}
---@alias CS.UnityEngineInternal.APIUpdaterRuntimeServices UnityEngineInternal.APIUpdaterRuntimeServices
CS.UnityEngineInternal.APIUpdaterRuntimeServices = UnityEngineInternal.APIUpdaterRuntimeServices

---@return UnityEngineInternal.APIUpdaterRuntimeServices
function UnityEngineInternal.APIUpdaterRuntimeServices.New() end

---@class UnityEngineInternal.TypeInferenceRules
---@field TypeReferencedByFirstArgument UnityEngineInternal.TypeInferenceRules
---@field TypeReferencedBySecondArgument UnityEngineInternal.TypeInferenceRules
---@field ArrayOfTypeReferencedByFirstArgument UnityEngineInternal.TypeInferenceRules
---@field TypeOfFirstArgument UnityEngineInternal.TypeInferenceRules
UnityEngineInternal.TypeInferenceRules = {}
---@alias CS.UnityEngineInternal.TypeInferenceRules UnityEngineInternal.TypeInferenceRules
CS.UnityEngineInternal.TypeInferenceRules = UnityEngineInternal.TypeInferenceRules


---@class UnityEngineInternal.TypeInferenceRuleAttribute : System.Attribute
UnityEngineInternal.TypeInferenceRuleAttribute = {}
---@alias CS.UnityEngineInternal.TypeInferenceRuleAttribute UnityEngineInternal.TypeInferenceRuleAttribute
CS.UnityEngineInternal.TypeInferenceRuleAttribute = UnityEngineInternal.TypeInferenceRuleAttribute

---@overload fun(rule: UnityEngineInternal.TypeInferenceRules) : UnityEngineInternal.TypeInferenceRuleAttribute
---@param rule string
---@return UnityEngineInternal.TypeInferenceRuleAttribute
function UnityEngineInternal.TypeInferenceRuleAttribute.New(rule) end
---@return string
function UnityEngineInternal.TypeInferenceRuleAttribute:ToString() end

---@class UnityEngineInternal.GenericStack : System.Collections.Stack
UnityEngineInternal.GenericStack = {}
---@alias CS.UnityEngineInternal.GenericStack UnityEngineInternal.GenericStack
CS.UnityEngineInternal.GenericStack = UnityEngineInternal.GenericStack

---@return UnityEngineInternal.GenericStack
function UnityEngineInternal.GenericStack.New() end

---@class UnityEngine.SortingLayer : System.ValueType
---@field onLayerAdded UnityEngine.SortingLayer.LayerCallback
---@field onLayerRemoved UnityEngine.SortingLayer.LayerCallback
---@field layers UnityEngine.SortingLayer[]
---@field id number
---@field name string
---@field value number
UnityEngine.SortingLayer = {}
---@alias CS.UnityEngine.SortingLayer UnityEngine.SortingLayer
CS.UnityEngine.SortingLayer = UnityEngine.SortingLayer

---@param id number
---@return number
function UnityEngine.SortingLayer.GetLayerValueFromID(id) end
---@param name string
---@return number
function UnityEngine.SortingLayer.GetLayerValueFromName(name) end
---@param name string
---@return number
function UnityEngine.SortingLayer.NameToID(name) end
---@param id number
---@return string
function UnityEngine.SortingLayer.IDToName(id) end
---@param id number
---@return boolean
function UnityEngine.SortingLayer.IsValid(id) end

---@class UnityEngine.SortingLayer.LayerCallback : System.MulticastDelegate
UnityEngine.SortingLayer.LayerCallback = {}
---@alias CS.UnityEngine.SortingLayer.LayerCallback UnityEngine.SortingLayer.LayerCallback
CS.UnityEngine.SortingLayer.LayerCallback = UnityEngine.SortingLayer.LayerCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.SortingLayer.LayerCallback
function UnityEngine.SortingLayer.LayerCallback.New(object, method) end
---@param layer UnityEngine.SortingLayer
function UnityEngine.SortingLayer.LayerCallback:Invoke(layer) end
---@param layer UnityEngine.SortingLayer
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.SortingLayer.LayerCallback:BeginInvoke(layer, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.SortingLayer.LayerCallback:EndInvoke(result) end

---@class UnityEngine.WeightedMode
---@field None UnityEngine.WeightedMode
---@field In UnityEngine.WeightedMode
---@field Out UnityEngine.WeightedMode
---@field Both UnityEngine.WeightedMode
UnityEngine.WeightedMode = {}
---@alias CS.UnityEngine.WeightedMode UnityEngine.WeightedMode
CS.UnityEngine.WeightedMode = UnityEngine.WeightedMode


---@class UnityEngine.Keyframe : System.ValueType
---@field time number
---@field value number
---@field inTangent number
---@field outTangent number
---@field inWeight number
---@field outWeight number
---@field weightedMode UnityEngine.WeightedMode
UnityEngine.Keyframe = {}
---@alias CS.UnityEngine.Keyframe UnityEngine.Keyframe
CS.UnityEngine.Keyframe = UnityEngine.Keyframe

---@overload fun(time: number, value: number) : UnityEngine.Keyframe
---@overload fun(time: number, value: number, inTangent: number, outTangent: number) : UnityEngine.Keyframe
---@param time number
---@param value number
---@param inTangent number
---@param outTangent number
---@param inWeight number
---@param outWeight number
---@return UnityEngine.Keyframe
function UnityEngine.Keyframe.New(time, value, inTangent, outTangent, inWeight, outWeight) end

---@class UnityEngine.WrapMode
---@field Once UnityEngine.WrapMode
---@field Loop UnityEngine.WrapMode
---@field PingPong UnityEngine.WrapMode
---@field Default UnityEngine.WrapMode
---@field ClampForever UnityEngine.WrapMode
---@field Clamp UnityEngine.WrapMode
UnityEngine.WrapMode = {}
---@alias CS.UnityEngine.WrapMode UnityEngine.WrapMode
CS.UnityEngine.WrapMode = UnityEngine.WrapMode


---@class UnityEngine.AnimationCurve : System.Object
---@field keys UnityEngine.Keyframe[]
---@field Item UnityEngine.Keyframe
---@field length number
---@field preWrapMode UnityEngine.WrapMode
---@field postWrapMode UnityEngine.WrapMode
UnityEngine.AnimationCurve = {}
---@alias CS.UnityEngine.AnimationCurve UnityEngine.AnimationCurve
CS.UnityEngine.AnimationCurve = UnityEngine.AnimationCurve

---@overload fun(keys: UnityEngine.Keyframe[]) : UnityEngine.AnimationCurve
---@return UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve.New() end
---@param timeStart number
---@param timeEnd number
---@param value number
---@return UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve.Constant(timeStart, timeEnd, value) end
---@param timeStart number
---@param valueStart number
---@param timeEnd number
---@param valueEnd number
---@return UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve.Linear(timeStart, valueStart, timeEnd, valueEnd) end
---@param timeStart number
---@param valueStart number
---@param timeEnd number
---@param valueEnd number
---@return UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve.EaseInOut(timeStart, valueStart, timeEnd, valueEnd) end
---@param time number
---@return number
function UnityEngine.AnimationCurve:Evaluate(time) end
---@overload fun(self: UnityEngine.AnimationCurve, time: number, value: number) : number
---@param key UnityEngine.Keyframe
---@return number
function UnityEngine.AnimationCurve:AddKey(key) end
---@param index number
---@param key UnityEngine.Keyframe
---@return number
function UnityEngine.AnimationCurve:MoveKey(index, key) end
function UnityEngine.AnimationCurve:ClearKeys() end
---@param index number
function UnityEngine.AnimationCurve:RemoveKey(index) end
---@return number
function UnityEngine.AnimationCurve:GetHashCode() end
---@param index number
---@param weight number
function UnityEngine.AnimationCurve:SmoothTangents(index, weight) end
---@overload fun(self: UnityEngine.AnimationCurve, o: System.Object) : boolean
---@param other UnityEngine.AnimationCurve
---@return boolean
function UnityEngine.AnimationCurve:Equals(other) end
---@param other UnityEngine.AnimationCurve
function UnityEngine.AnimationCurve:CopyFrom(other) end

---@class UnityEngine.Application : System.Object
---@field isPlaying boolean
---@field isFocused boolean
---@field buildGUID string
---@field runInBackground boolean
---@field isBatchMode boolean
---@field dataPath string
---@field streamingAssetsPath string
---@field persistentDataPath string
---@field temporaryCachePath string
---@field absoluteURL string
---@field unityVersion string
---@field version string
---@field installerName string
---@field identifier string
---@field installMode UnityEngine.ApplicationInstallMode
---@field sandboxType UnityEngine.ApplicationSandboxType
---@field productName string
---@field companyName string
---@field cloudProjectId string
---@field targetFrameRate number
---@field consoleLogPath string
---@field backgroundLoadingPriority UnityEngine.ThreadPriority
---@field genuine boolean
---@field genuineCheckAvailable boolean
---@field platform UnityEngine.RuntimePlatform
---@field isMobilePlatform boolean
---@field isConsolePlatform boolean
---@field systemLanguage UnityEngine.SystemLanguage
---@field internetReachability UnityEngine.NetworkReachability
---@field exitCancellationToken System.Threading.CancellationToken
---@field isEditor boolean
UnityEngine.Application = {}
---@alias CS.UnityEngine.Application UnityEngine.Application
CS.UnityEngine.Application = UnityEngine.Application

---@return UnityEngine.Application
function UnityEngine.Application.New() end
---@overload fun(exitCode: number)
function UnityEngine.Application.Quit() end
function UnityEngine.Application.Unload() end
---@overload fun(levelIndex: number) : boolean
---@param levelName string
---@return boolean
function UnityEngine.Application.CanStreamedLevelBeLoaded(levelName) end
---@param obj UnityEngine.Object
---@return boolean
function UnityEngine.Application.IsPlaying(obj) end
---@return boolean
function UnityEngine.Application.HasProLicense() end
---@param delegateMethod UnityEngine.Application.AdvertisingIdentifierCallback
---@return boolean
function UnityEngine.Application.RequestAdvertisingIdentifierAsync(delegateMethod) end
---@param url string
function UnityEngine.Application.OpenURL(url) end
---@param logType UnityEngine.LogType
---@return UnityEngine.StackTraceLogType
function UnityEngine.Application.GetStackTraceLogType(logType) end
---@param logType UnityEngine.LogType
---@param stackTraceType UnityEngine.StackTraceLogType
function UnityEngine.Application.SetStackTraceLogType(logType, stackTraceType) end
---@param mode UnityEngine.UserAuthorization
---@return UnityEngine.AsyncOperation
function UnityEngine.Application.RequestUserAuthorization(mode) end
---@param mode UnityEngine.UserAuthorization
---@return boolean
function UnityEngine.Application.HasUserAuthorization(mode) end

---@class UnityEngine.Application.AdvertisingIdentifierCallback : System.MulticastDelegate
UnityEngine.Application.AdvertisingIdentifierCallback = {}
---@alias CS.UnityEngine.Application.AdvertisingIdentifierCallback UnityEngine.Application.AdvertisingIdentifierCallback
CS.UnityEngine.Application.AdvertisingIdentifierCallback = UnityEngine.Application.AdvertisingIdentifierCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Application.AdvertisingIdentifierCallback
function UnityEngine.Application.AdvertisingIdentifierCallback.New(object, method) end
---@param advertisingId string
---@param trackingEnabled boolean
---@param errorMsg string
function UnityEngine.Application.AdvertisingIdentifierCallback:Invoke(advertisingId, trackingEnabled, errorMsg) end
---@param advertisingId string
---@param trackingEnabled boolean
---@param errorMsg string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Application.AdvertisingIdentifierCallback:BeginInvoke(advertisingId, trackingEnabled, errorMsg, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Application.AdvertisingIdentifierCallback:EndInvoke(result) end

---@class UnityEngine.Application.LowMemoryCallback : System.MulticastDelegate
UnityEngine.Application.LowMemoryCallback = {}
---@alias CS.UnityEngine.Application.LowMemoryCallback UnityEngine.Application.LowMemoryCallback
CS.UnityEngine.Application.LowMemoryCallback = UnityEngine.Application.LowMemoryCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Application.LowMemoryCallback
function UnityEngine.Application.LowMemoryCallback.New(object, method) end
function UnityEngine.Application.LowMemoryCallback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Application.LowMemoryCallback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Application.LowMemoryCallback:EndInvoke(result) end

---@class UnityEngine.Application.MemoryUsageChangedCallback : System.MulticastDelegate
UnityEngine.Application.MemoryUsageChangedCallback = {}
---@alias CS.UnityEngine.Application.MemoryUsageChangedCallback UnityEngine.Application.MemoryUsageChangedCallback
CS.UnityEngine.Application.MemoryUsageChangedCallback = UnityEngine.Application.MemoryUsageChangedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Application.MemoryUsageChangedCallback
function UnityEngine.Application.MemoryUsageChangedCallback.New(object, method) end
---@param ref_usage UnityEngine.ApplicationMemoryUsageChange
---@return ,UnityEngine.ApplicationMemoryUsageChange
function UnityEngine.Application.MemoryUsageChangedCallback:Invoke(ref_usage) end
---@param ref_usage UnityEngine.ApplicationMemoryUsageChange
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,UnityEngine.ApplicationMemoryUsageChange
function UnityEngine.Application.MemoryUsageChangedCallback:BeginInvoke(ref_usage, callback, object) end
---@param ref_usage UnityEngine.ApplicationMemoryUsageChange
---@param result System.IAsyncResult
---@return ,UnityEngine.ApplicationMemoryUsageChange
function UnityEngine.Application.MemoryUsageChangedCallback:EndInvoke(ref_usage, result) end

---@class UnityEngine.Application.LogCallback : System.MulticastDelegate
UnityEngine.Application.LogCallback = {}
---@alias CS.UnityEngine.Application.LogCallback UnityEngine.Application.LogCallback
CS.UnityEngine.Application.LogCallback = UnityEngine.Application.LogCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Application.LogCallback
function UnityEngine.Application.LogCallback.New(object, method) end
---@param condition string
---@param stackTrace string
---@param type UnityEngine.LogType
function UnityEngine.Application.LogCallback:Invoke(condition, stackTrace, type) end
---@param condition string
---@param stackTrace string
---@param type UnityEngine.LogType
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Application.LogCallback:BeginInvoke(condition, stackTrace, type, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Application.LogCallback:EndInvoke(result) end

---@class UnityEngine.ApplicationMemoryUsage
---@field Unknown UnityEngine.ApplicationMemoryUsage
---@field Low UnityEngine.ApplicationMemoryUsage
---@field Medium UnityEngine.ApplicationMemoryUsage
---@field High UnityEngine.ApplicationMemoryUsage
---@field Critical UnityEngine.ApplicationMemoryUsage
UnityEngine.ApplicationMemoryUsage = {}
---@alias CS.UnityEngine.ApplicationMemoryUsage UnityEngine.ApplicationMemoryUsage
CS.UnityEngine.ApplicationMemoryUsage = UnityEngine.ApplicationMemoryUsage


---@class UnityEngine.ApplicationMemoryUsageChange : System.ValueType
---@field memoryUsage UnityEngine.ApplicationMemoryUsage
UnityEngine.ApplicationMemoryUsageChange = {}
---@alias CS.UnityEngine.ApplicationMemoryUsageChange UnityEngine.ApplicationMemoryUsageChange
CS.UnityEngine.ApplicationMemoryUsageChange = UnityEngine.ApplicationMemoryUsageChange

---@param usage UnityEngine.ApplicationMemoryUsage
---@return UnityEngine.ApplicationMemoryUsageChange
function UnityEngine.ApplicationMemoryUsageChange.New(usage) end

---@class UnityEngine.StackTraceLogType
---@field None UnityEngine.StackTraceLogType
---@field ScriptOnly UnityEngine.StackTraceLogType
---@field Full UnityEngine.StackTraceLogType
UnityEngine.StackTraceLogType = {}
---@alias CS.UnityEngine.StackTraceLogType UnityEngine.StackTraceLogType
CS.UnityEngine.StackTraceLogType = UnityEngine.StackTraceLogType


---@class UnityEngine.NetworkReachability
---@field NotReachable UnityEngine.NetworkReachability
---@field ReachableViaCarrierDataNetwork UnityEngine.NetworkReachability
---@field ReachableViaLocalAreaNetwork UnityEngine.NetworkReachability
UnityEngine.NetworkReachability = {}
---@alias CS.UnityEngine.NetworkReachability UnityEngine.NetworkReachability
CS.UnityEngine.NetworkReachability = UnityEngine.NetworkReachability


---@class UnityEngine.UserAuthorization
---@field WebCam UnityEngine.UserAuthorization
---@field Microphone UnityEngine.UserAuthorization
UnityEngine.UserAuthorization = {}
---@alias CS.UnityEngine.UserAuthorization UnityEngine.UserAuthorization
CS.UnityEngine.UserAuthorization = UnityEngine.UserAuthorization


---@class UnityEngine.ApplicationInstallMode
---@field Unknown UnityEngine.ApplicationInstallMode
---@field Store UnityEngine.ApplicationInstallMode
---@field DeveloperBuild UnityEngine.ApplicationInstallMode
---@field Adhoc UnityEngine.ApplicationInstallMode
---@field Enterprise UnityEngine.ApplicationInstallMode
---@field Editor UnityEngine.ApplicationInstallMode
UnityEngine.ApplicationInstallMode = {}
---@alias CS.UnityEngine.ApplicationInstallMode UnityEngine.ApplicationInstallMode
CS.UnityEngine.ApplicationInstallMode = UnityEngine.ApplicationInstallMode


---@class UnityEngine.ApplicationSandboxType
---@field Unknown UnityEngine.ApplicationSandboxType
---@field NotSandboxed UnityEngine.ApplicationSandboxType
---@field Sandboxed UnityEngine.ApplicationSandboxType
---@field SandboxBroken UnityEngine.ApplicationSandboxType
UnityEngine.ApplicationSandboxType = {}
---@alias CS.UnityEngine.ApplicationSandboxType UnityEngine.ApplicationSandboxType
CS.UnityEngine.ApplicationSandboxType = UnityEngine.ApplicationSandboxType


---@class UnityEngine.AudioType
---@field UNKNOWN UnityEngine.AudioType
---@field ACC UnityEngine.AudioType
---@field AIFF UnityEngine.AudioType
---@field IT UnityEngine.AudioType
---@field MOD UnityEngine.AudioType
---@field MPEG UnityEngine.AudioType
---@field OGGVORBIS UnityEngine.AudioType
---@field S3M UnityEngine.AudioType
---@field WAV UnityEngine.AudioType
---@field XM UnityEngine.AudioType
---@field XMA UnityEngine.AudioType
---@field VAG UnityEngine.AudioType
---@field AUDIOQUEUE UnityEngine.AudioType
UnityEngine.AudioType = {}
---@alias CS.UnityEngine.AudioType UnityEngine.AudioType
CS.UnityEngine.AudioType = UnityEngine.AudioType


---@class UnityEngine.SendMessageOptions
---@field RequireReceiver UnityEngine.SendMessageOptions
---@field DontRequireReceiver UnityEngine.SendMessageOptions
UnityEngine.SendMessageOptions = {}
---@alias CS.UnityEngine.SendMessageOptions UnityEngine.SendMessageOptions
CS.UnityEngine.SendMessageOptions = UnityEngine.SendMessageOptions


---@class UnityEngine.PrimitiveType
---@field Sphere UnityEngine.PrimitiveType
---@field Capsule UnityEngine.PrimitiveType
---@field Cylinder UnityEngine.PrimitiveType
---@field Cube UnityEngine.PrimitiveType
---@field Plane UnityEngine.PrimitiveType
---@field Quad UnityEngine.PrimitiveType
UnityEngine.PrimitiveType = {}
---@alias CS.UnityEngine.PrimitiveType UnityEngine.PrimitiveType
CS.UnityEngine.PrimitiveType = UnityEngine.PrimitiveType


---@class UnityEngine.Space
---@field World UnityEngine.Space
---@field Self UnityEngine.Space
UnityEngine.Space = {}
---@alias CS.UnityEngine.Space UnityEngine.Space
CS.UnityEngine.Space = UnityEngine.Space


---@class UnityEngine.RuntimePlatform
---@field OSXEditor UnityEngine.RuntimePlatform
---@field OSXPlayer UnityEngine.RuntimePlatform
---@field WindowsPlayer UnityEngine.RuntimePlatform
---@field WindowsEditor UnityEngine.RuntimePlatform
---@field IPhonePlayer UnityEngine.RuntimePlatform
---@field Android UnityEngine.RuntimePlatform
---@field LinuxPlayer UnityEngine.RuntimePlatform
---@field LinuxEditor UnityEngine.RuntimePlatform
---@field WebGLPlayer UnityEngine.RuntimePlatform
---@field WSAPlayerX86 UnityEngine.RuntimePlatform
---@field WSAPlayerX64 UnityEngine.RuntimePlatform
---@field WSAPlayerARM UnityEngine.RuntimePlatform
---@field PS4 UnityEngine.RuntimePlatform
---@field XboxOne UnityEngine.RuntimePlatform
---@field tvOS UnityEngine.RuntimePlatform
---@field Switch UnityEngine.RuntimePlatform
---@field Stadia UnityEngine.RuntimePlatform
---@field GameCoreXboxSeries UnityEngine.RuntimePlatform
---@field GameCoreXboxOne UnityEngine.RuntimePlatform
---@field PS5 UnityEngine.RuntimePlatform
---@field EmbeddedLinuxArm64 UnityEngine.RuntimePlatform
---@field EmbeddedLinuxArm32 UnityEngine.RuntimePlatform
---@field EmbeddedLinuxX64 UnityEngine.RuntimePlatform
---@field EmbeddedLinuxX86 UnityEngine.RuntimePlatform
---@field LinuxServer UnityEngine.RuntimePlatform
---@field WindowsServer UnityEngine.RuntimePlatform
---@field OSXServer UnityEngine.RuntimePlatform
---@field QNXArm32 UnityEngine.RuntimePlatform
---@field QNXArm64 UnityEngine.RuntimePlatform
---@field QNXX64 UnityEngine.RuntimePlatform
---@field QNXX86 UnityEngine.RuntimePlatform
---@field VisionOS UnityEngine.RuntimePlatform
UnityEngine.RuntimePlatform = {}
---@alias CS.UnityEngine.RuntimePlatform UnityEngine.RuntimePlatform
CS.UnityEngine.RuntimePlatform = UnityEngine.RuntimePlatform


---@class UnityEngine.SystemLanguage
---@field Afrikaans UnityEngine.SystemLanguage
---@field Arabic UnityEngine.SystemLanguage
---@field Basque UnityEngine.SystemLanguage
---@field Belarusian UnityEngine.SystemLanguage
---@field Bulgarian UnityEngine.SystemLanguage
---@field Catalan UnityEngine.SystemLanguage
---@field Chinese UnityEngine.SystemLanguage
---@field Czech UnityEngine.SystemLanguage
---@field Danish UnityEngine.SystemLanguage
---@field Dutch UnityEngine.SystemLanguage
---@field English UnityEngine.SystemLanguage
---@field Estonian UnityEngine.SystemLanguage
---@field Faroese UnityEngine.SystemLanguage
---@field Finnish UnityEngine.SystemLanguage
---@field French UnityEngine.SystemLanguage
---@field German UnityEngine.SystemLanguage
---@field Greek UnityEngine.SystemLanguage
---@field Hebrew UnityEngine.SystemLanguage
---@field Icelandic UnityEngine.SystemLanguage
---@field Indonesian UnityEngine.SystemLanguage
---@field Italian UnityEngine.SystemLanguage
---@field Japanese UnityEngine.SystemLanguage
---@field Korean UnityEngine.SystemLanguage
---@field Latvian UnityEngine.SystemLanguage
---@field Lithuanian UnityEngine.SystemLanguage
---@field Norwegian UnityEngine.SystemLanguage
---@field Polish UnityEngine.SystemLanguage
---@field Portuguese UnityEngine.SystemLanguage
---@field Romanian UnityEngine.SystemLanguage
---@field Russian UnityEngine.SystemLanguage
---@field SerboCroatian UnityEngine.SystemLanguage
---@field Slovak UnityEngine.SystemLanguage
---@field Slovenian UnityEngine.SystemLanguage
---@field Spanish UnityEngine.SystemLanguage
---@field Swedish UnityEngine.SystemLanguage
---@field Thai UnityEngine.SystemLanguage
---@field Turkish UnityEngine.SystemLanguage
---@field Ukrainian UnityEngine.SystemLanguage
---@field Vietnamese UnityEngine.SystemLanguage
---@field ChineseSimplified UnityEngine.SystemLanguage
---@field ChineseTraditional UnityEngine.SystemLanguage
---@field Hindi UnityEngine.SystemLanguage
---@field Unknown UnityEngine.SystemLanguage
---@field Hungarian UnityEngine.SystemLanguage
UnityEngine.SystemLanguage = {}
---@alias CS.UnityEngine.SystemLanguage UnityEngine.SystemLanguage
CS.UnityEngine.SystemLanguage = UnityEngine.SystemLanguage


---@class UnityEngine.LogType
---@field Error UnityEngine.LogType
---@field Assert UnityEngine.LogType
---@field Warning UnityEngine.LogType
---@field Log UnityEngine.LogType
---@field Exception UnityEngine.LogType
UnityEngine.LogType = {}
---@alias CS.UnityEngine.LogType UnityEngine.LogType
CS.UnityEngine.LogType = UnityEngine.LogType


---@class UnityEngine.LogOption
---@field None UnityEngine.LogOption
---@field NoStacktrace UnityEngine.LogOption
UnityEngine.LogOption = {}
---@alias CS.UnityEngine.LogOption UnityEngine.LogOption
CS.UnityEngine.LogOption = UnityEngine.LogOption


---@class UnityEngine.ThreadPriority
---@field Low UnityEngine.ThreadPriority
---@field BelowNormal UnityEngine.ThreadPriority
---@field Normal UnityEngine.ThreadPriority
---@field High UnityEngine.ThreadPriority
UnityEngine.ThreadPriority = {}
---@alias CS.UnityEngine.ThreadPriority UnityEngine.ThreadPriority
CS.UnityEngine.ThreadPriority = UnityEngine.ThreadPriority


---@class UnityEngine.BootConfigData : System.Object
UnityEngine.BootConfigData = {}
---@alias CS.UnityEngine.BootConfigData UnityEngine.BootConfigData
CS.UnityEngine.BootConfigData = UnityEngine.BootConfigData

---@param key string
function UnityEngine.BootConfigData:AddKey(key) end
---@overload fun(self: UnityEngine.BootConfigData, key: string) : string
---@param key string
---@param index number
---@return string
function UnityEngine.BootConfigData:Get(key, index) end
---@param key string
---@param value string
function UnityEngine.BootConfigData:Append(key, value) end
---@param key string
---@param value string
function UnityEngine.BootConfigData:Set(key, value) end

---@class UnityEngine.CachedAssetBundle : System.ValueType
---@field name string
---@field hash UnityEngine.Hash128
UnityEngine.CachedAssetBundle = {}
---@alias CS.UnityEngine.CachedAssetBundle UnityEngine.CachedAssetBundle
CS.UnityEngine.CachedAssetBundle = UnityEngine.CachedAssetBundle

---@param name string
---@param hash UnityEngine.Hash128
---@return UnityEngine.CachedAssetBundle
function UnityEngine.CachedAssetBundle.New(name, hash) end

---@class UnityEngine.Cache : System.ValueType
---@field valid boolean
---@field ready boolean
---@field readOnly boolean
---@field path string
---@field index number
---@field spaceFree number
---@field maximumAvailableStorageSpace number
---@field spaceOccupied number
---@field expirationDelay number
UnityEngine.Cache = {}
---@alias CS.UnityEngine.Cache UnityEngine.Cache
CS.UnityEngine.Cache = UnityEngine.Cache

---@return number
function UnityEngine.Cache:GetHashCode() end
---@overload fun(self: UnityEngine.Cache, other: System.Object) : boolean
---@param other UnityEngine.Cache
---@return boolean
function UnityEngine.Cache:Equals(other) end
---@overload fun() : boolean
---@param expiration number
---@return boolean
function UnityEngine.Cache:ClearCache(expiration) end

---@class UnityEngine.CacheIndex : System.ValueType
---@field name string
---@field bytesUsed number
---@field expires number
UnityEngine.CacheIndex = {}
---@alias CS.UnityEngine.CacheIndex UnityEngine.CacheIndex
CS.UnityEngine.CacheIndex = UnityEngine.CacheIndex


---@class UnityEngine.Caching : System.Object
---@field compressionEnabled boolean
---@field ready boolean
---@field cacheCount number
---@field defaultCache UnityEngine.Cache
---@field currentCacheForWriting UnityEngine.Cache
UnityEngine.Caching = {}
---@alias CS.UnityEngine.Caching UnityEngine.Caching
CS.UnityEngine.Caching = UnityEngine.Caching

---@return UnityEngine.Caching
function UnityEngine.Caching.New() end
---@overload fun() : boolean
---@param expiration number
---@return boolean
function UnityEngine.Caching.ClearCache(expiration) end
---@param assetBundleName string
---@param hash UnityEngine.Hash128
---@return boolean
function UnityEngine.Caching.ClearCachedVersion(assetBundleName, hash) end
---@param assetBundleName string
---@param hash UnityEngine.Hash128
---@return boolean
function UnityEngine.Caching.ClearOtherCachedVersions(assetBundleName, hash) end
---@param assetBundleName string
---@return boolean
function UnityEngine.Caching.ClearAllCachedVersions(assetBundleName) end
---@param assetBundleName string
---@param outCachedVersions System.Collections.Generic.List
function UnityEngine.Caching.GetCachedVersions(assetBundleName, outCachedVersions) end
---@overload fun(url: string, hash: UnityEngine.Hash128) : boolean
---@param cachedBundle UnityEngine.CachedAssetBundle
---@return boolean
function UnityEngine.Caching.IsVersionCached(cachedBundle) end
---@overload fun(url: string, hash: UnityEngine.Hash128) : boolean
---@param cachedBundle UnityEngine.CachedAssetBundle
---@return boolean
function UnityEngine.Caching.MarkAsUsed(cachedBundle) end
---@overload fun(url: string, hash: UnityEngine.Hash128)
---@param cachedBundle UnityEngine.CachedAssetBundle
function UnityEngine.Caching.SetNoBackupFlag(cachedBundle) end
---@overload fun(url: string, hash: UnityEngine.Hash128)
---@param cachedBundle UnityEngine.CachedAssetBundle
function UnityEngine.Caching.ResetNoBackupFlag(cachedBundle) end
---@param cachePath string
---@return UnityEngine.Cache
function UnityEngine.Caching.AddCache(cachePath) end
---@param cacheIndex number
---@return UnityEngine.Cache
function UnityEngine.Caching.GetCacheAt(cacheIndex) end
---@param cachePath string
---@return UnityEngine.Cache
function UnityEngine.Caching.GetCacheByPath(cachePath) end
---@param cachePaths System.Collections.Generic.List
function UnityEngine.Caching.GetAllCachePaths(cachePaths) end
---@param cache UnityEngine.Cache
---@return boolean
function UnityEngine.Caching.RemoveCache(cache) end
---@param src UnityEngine.Cache
---@param dst UnityEngine.Cache
function UnityEngine.Caching.MoveCacheBefore(src, dst) end
---@param src UnityEngine.Cache
---@param dst UnityEngine.Cache
function UnityEngine.Caching.MoveCacheAfter(src, dst) end

---@class UnityEngine.Camera : UnityEngine.Behaviour
---@field kMinAperture number
---@field kMaxAperture number
---@field kMinBladeCount number
---@field kMaxBladeCount number
---@field onPreCull UnityEngine.Camera.CameraCallback
---@field onPreRender UnityEngine.Camera.CameraCallback
---@field onPostRender UnityEngine.Camera.CameraCallback
---@field main UnityEngine.Camera
---@field current UnityEngine.Camera
---@field allCamerasCount number
---@field allCameras UnityEngine.Camera[]
---@field nearClipPlane number
---@field farClipPlane number
---@field fieldOfView number
---@field renderingPath UnityEngine.RenderingPath
---@field actualRenderingPath UnityEngine.RenderingPath
---@field allowHDR boolean
---@field allowMSAA boolean
---@field allowDynamicResolution boolean
---@field forceIntoRenderTexture boolean
---@field orthographicSize number
---@field orthographic boolean
---@field opaqueSortMode UnityEngine.Rendering.OpaqueSortMode
---@field transparencySortMode UnityEngine.TransparencySortMode
---@field transparencySortAxis UnityEngine.Vector3
---@field depth number
---@field aspect number
---@field velocity UnityEngine.Vector3
---@field cullingMask number
---@field eventMask number
---@field layerCullSpherical boolean
---@field cameraType UnityEngine.CameraType
---@field overrideSceneCullingMask number
---@field layerCullDistances System.Single[]
---@field useOcclusionCulling boolean
---@field cullingMatrix UnityEngine.Matrix4x4
---@field backgroundColor UnityEngine.Color
---@field clearFlags UnityEngine.CameraClearFlags
---@field depthTextureMode UnityEngine.DepthTextureMode
---@field clearStencilAfterLightingPass boolean
---@field usePhysicalProperties boolean
---@field iso number
---@field shutterSpeed number
---@field aperture number
---@field focusDistance number
---@field focalLength number
---@field bladeCount number
---@field curvature UnityEngine.Vector2
---@field barrelClipping number
---@field anamorphism number
---@field sensorSize UnityEngine.Vector2
---@field lensShift UnityEngine.Vector2
---@field gateFit UnityEngine.Camera.GateFitMode
---@field rect UnityEngine.Rect
---@field pixelRect UnityEngine.Rect
---@field pixelWidth number
---@field pixelHeight number
---@field scaledPixelWidth number
---@field scaledPixelHeight number
---@field targetTexture UnityEngine.RenderTexture
---@field activeTexture UnityEngine.RenderTexture
---@field targetDisplay number
---@field cameraToWorldMatrix UnityEngine.Matrix4x4
---@field worldToCameraMatrix UnityEngine.Matrix4x4
---@field projectionMatrix UnityEngine.Matrix4x4
---@field nonJitteredProjectionMatrix UnityEngine.Matrix4x4
---@field useJitteredProjectionMatrixForTransparentRendering boolean
---@field previousViewProjectionMatrix UnityEngine.Matrix4x4
---@field scene UnityEngine.SceneManagement.Scene
---@field stereoEnabled boolean
---@field stereoSeparation number
---@field stereoConvergence number
---@field areVRStereoViewMatricesWithinSingleCullTolerance boolean
---@field stereoTargetEye UnityEngine.StereoTargetEyeMask
---@field stereoActiveEye UnityEngine.Camera.MonoOrStereoscopicEye
---@field sceneViewFilterMode UnityEngine.Camera.SceneViewFilterMode
---@field commandBufferCount number
UnityEngine.Camera = {}
---@alias CS.UnityEngine.Camera UnityEngine.Camera
CS.UnityEngine.Camera = UnityEngine.Camera

---@return UnityEngine.Camera
function UnityEngine.Camera.New() end
---@param out_output UnityEngine.Matrix4x4
---@param focalLength number
---@param sensorSize UnityEngine.Vector2
---@param lensShift UnityEngine.Vector2
---@param nearClip number
---@param farClip number
---@param gateFitParameters UnityEngine.Camera.GateFitParameters
---@return ,UnityEngine.Matrix4x4
function UnityEngine.Camera.CalculateProjectionMatrixFromPhysicalProperties(out_output, focalLength, sensorSize, lensShift, nearClip, farClip, gateFitParameters) end
---@param focalLength number
---@param sensorSize number
---@return number
function UnityEngine.Camera.FocalLengthToFieldOfView(focalLength, sensorSize) end
---@param fieldOfView number
---@param sensorSize number
---@return number
function UnityEngine.Camera.FieldOfViewToFocalLength(fieldOfView, sensorSize) end
---@param horizontalFieldOfView number
---@param aspectRatio number
---@return number
function UnityEngine.Camera.HorizontalToVerticalFieldOfView(horizontalFieldOfView, aspectRatio) end
---@param verticalFieldOfView number
---@param aspectRatio number
---@return number
function UnityEngine.Camera.VerticalToHorizontalFieldOfView(verticalFieldOfView, aspectRatio) end
---@param cameras UnityEngine.Camera[]
---@return number
function UnityEngine.Camera.GetAllCameras(cameras) end
---@param cur UnityEngine.Camera
function UnityEngine.Camera.SetupCurrent(cur) end
function UnityEngine.Camera:Reset() end
function UnityEngine.Camera:ResetTransparencySortSettings() end
function UnityEngine.Camera:ResetAspect() end
function UnityEngine.Camera:ResetCullingMatrix() end
---@param shader UnityEngine.Shader
---@param replacementTag string
function UnityEngine.Camera:SetReplacementShader(shader, replacementTag) end
function UnityEngine.Camera:ResetReplacementShader() end
---@return number
function UnityEngine.Camera:GetGateFittedFieldOfView() end
---@return UnityEngine.Vector2
function UnityEngine.Camera:GetGateFittedLensShift() end
---@overload fun(self: UnityEngine.Camera, colorBuffer: UnityEngine.RenderBuffer, depthBuffer: UnityEngine.RenderBuffer)
---@param colorBuffer UnityEngine.RenderBuffer[]
---@param depthBuffer UnityEngine.RenderBuffer
function UnityEngine.Camera:SetTargetBuffers(colorBuffer, depthBuffer) end
function UnityEngine.Camera:ResetWorldToCameraMatrix() end
function UnityEngine.Camera:ResetProjectionMatrix() end
---@param clipPlane UnityEngine.Vector4
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:CalculateObliqueMatrix(clipPlane) end
---@overload fun(self: UnityEngine.Camera, position: UnityEngine.Vector3, eye: UnityEngine.Camera.MonoOrStereoscopicEye) : UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:WorldToScreenPoint(position) end
---@overload fun(self: UnityEngine.Camera, position: UnityEngine.Vector3, eye: UnityEngine.Camera.MonoOrStereoscopicEye) : UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:WorldToViewportPoint(position) end
---@overload fun(self: UnityEngine.Camera, position: UnityEngine.Vector3, eye: UnityEngine.Camera.MonoOrStereoscopicEye) : UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ViewportToWorldPoint(position) end
---@overload fun(self: UnityEngine.Camera, position: UnityEngine.Vector3, eye: UnityEngine.Camera.MonoOrStereoscopicEye) : UnityEngine.Vector3
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ScreenToWorldPoint(position) end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ScreenToViewportPoint(position) end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Camera:ViewportToScreenPoint(position) end
---@overload fun(self: UnityEngine.Camera, pos: UnityEngine.Vector3, eye: UnityEngine.Camera.MonoOrStereoscopicEye) : UnityEngine.Ray
---@param pos UnityEngine.Vector3
---@return UnityEngine.Ray
function UnityEngine.Camera:ViewportPointToRay(pos) end
---@overload fun(self: UnityEngine.Camera, pos: UnityEngine.Vector3, eye: UnityEngine.Camera.MonoOrStereoscopicEye) : UnityEngine.Ray
---@param pos UnityEngine.Vector3
---@return UnityEngine.Ray
function UnityEngine.Camera:ScreenPointToRay(pos) end
---@param viewport UnityEngine.Rect
---@param z number
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@param outCorners UnityEngine.Vector3[]
function UnityEngine.Camera:CalculateFrustumCorners(viewport, z, eye, outCorners) end
---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:GetStereoNonJitteredProjectionMatrix(eye) end
---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:GetStereoViewMatrix(eye) end
---@param eye UnityEngine.Camera.StereoscopicEye
function UnityEngine.Camera:CopyStereoDeviceProjectionMatrixToNonJittered(eye) end
---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function UnityEngine.Camera:GetStereoProjectionMatrix(eye) end
---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
function UnityEngine.Camera:SetStereoProjectionMatrix(eye, matrix) end
function UnityEngine.Camera:ResetStereoProjectionMatrices() end
---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
function UnityEngine.Camera:SetStereoViewMatrix(eye, matrix) end
function UnityEngine.Camera:ResetStereoViewMatrices() end
---@overload fun(self: UnityEngine.Camera, cubemap: UnityEngine.Cubemap, faceMask: number) : boolean
---@overload fun(self: UnityEngine.Camera, cubemap: UnityEngine.Cubemap) : boolean
---@overload fun(self: UnityEngine.Camera, cubemap: UnityEngine.RenderTexture, faceMask: number) : boolean
---@overload fun(self: UnityEngine.Camera, cubemap: UnityEngine.RenderTexture) : boolean
---@param cubemap UnityEngine.RenderTexture
---@param faceMask number
---@param stereoEye UnityEngine.Camera.MonoOrStereoscopicEye
---@return boolean
function UnityEngine.Camera:RenderToCubemap(cubemap, faceMask, stereoEye) end
function UnityEngine.Camera:Render() end
---@param shader UnityEngine.Shader
---@param replacementTag string
function UnityEngine.Camera:RenderWithShader(shader, replacementTag) end
function UnityEngine.Camera:RenderDontRestore() end
---@param other UnityEngine.Camera
function UnityEngine.Camera:CopyFrom(other) end
---@param evt UnityEngine.Rendering.CameraEvent
function UnityEngine.Camera:RemoveCommandBuffers(evt) end
function UnityEngine.Camera:RemoveAllCommandBuffers() end
---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Camera:AddCommandBuffer(evt, buffer) end
---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function UnityEngine.Camera:AddCommandBufferAsync(evt, buffer, queueType) end
---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Camera:RemoveCommandBuffer(evt, buffer) end
---@param evt UnityEngine.Rendering.CameraEvent
---@return UnityEngine.Rendering.CommandBuffer[]
function UnityEngine.Camera:GetCommandBuffers(evt) end
---@overload fun(self: UnityEngine.Camera, out_cullingParameters: UnityEngine.Rendering.ScriptableCullingParameters) : boolean, UnityEngine.Rendering.ScriptableCullingParameters
---@param stereoAware boolean
---@param out_cullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@return boolean,UnityEngine.Rendering.ScriptableCullingParameters
function UnityEngine.Camera:TryGetCullingParameters(stereoAware, out_cullingParameters) end
---@return UnityEngine.Rendering.Universal.UniversalAdditionalCameraData
function UnityEngine.Camera:GetUniversalAdditionalCameraData() end
---@return UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
function UnityEngine.Camera:GetVolumeFrameworkUpdateMode() end
---@param mode UnityEngine.Rendering.Universal.VolumeFrameworkUpdateMode
function UnityEngine.Camera:SetVolumeFrameworkUpdateMode(mode) end
function UnityEngine.Camera:UpdateVolumeStack() end
---@param cameraData UnityEngine.Rendering.Universal.UniversalAdditionalCameraData
function UnityEngine.Camera:UpdateVolumeStack(cameraData) end
function UnityEngine.Camera:DestroyVolumeStack() end
---@param cameraData UnityEngine.Rendering.Universal.UniversalAdditionalCameraData
function UnityEngine.Camera:DestroyVolumeStack(cameraData) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DOAspect(endValue, duration) end
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DOColor(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DOFarClipPlane(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DOFieldOfView(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DONearClipPlane(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DOOrthoSize(endValue, duration) end
---@param endValue UnityEngine.Rect
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DOPixelRect(endValue, duration) end
---@param endValue UnityEngine.Rect
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Camera:DORect(endValue, duration) end
---@param duration number
---@param strength number
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Camera:DOShakePosition(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Camera:DOShakePosition(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param duration number
---@param strength number
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Camera:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Camera:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end

---@class UnityEngine.Camera.ProjectionMatrixMode
---@field Explicit UnityEngine.Camera.ProjectionMatrixMode
---@field Implicit UnityEngine.Camera.ProjectionMatrixMode
---@field PhysicalPropertiesBased UnityEngine.Camera.ProjectionMatrixMode
UnityEngine.Camera.ProjectionMatrixMode = {}
---@alias CS.UnityEngine.Camera.ProjectionMatrixMode UnityEngine.Camera.ProjectionMatrixMode
CS.UnityEngine.Camera.ProjectionMatrixMode = UnityEngine.Camera.ProjectionMatrixMode


---@class UnityEngine.Camera.GateFitMode
---@field Vertical UnityEngine.Camera.GateFitMode
---@field Horizontal UnityEngine.Camera.GateFitMode
---@field Fill UnityEngine.Camera.GateFitMode
---@field Overscan UnityEngine.Camera.GateFitMode
---@field None UnityEngine.Camera.GateFitMode
UnityEngine.Camera.GateFitMode = {}
---@alias CS.UnityEngine.Camera.GateFitMode UnityEngine.Camera.GateFitMode
CS.UnityEngine.Camera.GateFitMode = UnityEngine.Camera.GateFitMode


---@class UnityEngine.Camera.FieldOfViewAxis
---@field Vertical UnityEngine.Camera.FieldOfViewAxis
---@field Horizontal UnityEngine.Camera.FieldOfViewAxis
UnityEngine.Camera.FieldOfViewAxis = {}
---@alias CS.UnityEngine.Camera.FieldOfViewAxis UnityEngine.Camera.FieldOfViewAxis
CS.UnityEngine.Camera.FieldOfViewAxis = UnityEngine.Camera.FieldOfViewAxis


---@class UnityEngine.Camera.GateFitParameters : System.ValueType
---@field mode UnityEngine.Camera.GateFitMode
---@field aspect number
UnityEngine.Camera.GateFitParameters = {}
---@alias CS.UnityEngine.Camera.GateFitParameters UnityEngine.Camera.GateFitParameters
CS.UnityEngine.Camera.GateFitParameters = UnityEngine.Camera.GateFitParameters

---@param mode UnityEngine.Camera.GateFitMode
---@param aspect number
---@return UnityEngine.Camera.GateFitParameters
function UnityEngine.Camera.GateFitParameters.New(mode, aspect) end

---@class UnityEngine.Camera.StereoscopicEye
---@field Left UnityEngine.Camera.StereoscopicEye
---@field Right UnityEngine.Camera.StereoscopicEye
UnityEngine.Camera.StereoscopicEye = {}
---@alias CS.UnityEngine.Camera.StereoscopicEye UnityEngine.Camera.StereoscopicEye
CS.UnityEngine.Camera.StereoscopicEye = UnityEngine.Camera.StereoscopicEye


---@class UnityEngine.Camera.MonoOrStereoscopicEye
---@field Left UnityEngine.Camera.MonoOrStereoscopicEye
---@field Right UnityEngine.Camera.MonoOrStereoscopicEye
---@field Mono UnityEngine.Camera.MonoOrStereoscopicEye
UnityEngine.Camera.MonoOrStereoscopicEye = {}
---@alias CS.UnityEngine.Camera.MonoOrStereoscopicEye UnityEngine.Camera.MonoOrStereoscopicEye
CS.UnityEngine.Camera.MonoOrStereoscopicEye = UnityEngine.Camera.MonoOrStereoscopicEye


---@class UnityEngine.Camera.SceneViewFilterMode
---@field Off UnityEngine.Camera.SceneViewFilterMode
---@field ShowFiltered UnityEngine.Camera.SceneViewFilterMode
UnityEngine.Camera.SceneViewFilterMode = {}
---@alias CS.UnityEngine.Camera.SceneViewFilterMode UnityEngine.Camera.SceneViewFilterMode
CS.UnityEngine.Camera.SceneViewFilterMode = UnityEngine.Camera.SceneViewFilterMode


---@class UnityEngine.Camera.RenderRequestMode
---@field None UnityEngine.Camera.RenderRequestMode
---@field ObjectId UnityEngine.Camera.RenderRequestMode
---@field Depth UnityEngine.Camera.RenderRequestMode
---@field VertexNormal UnityEngine.Camera.RenderRequestMode
---@field WorldPosition UnityEngine.Camera.RenderRequestMode
---@field EntityId UnityEngine.Camera.RenderRequestMode
---@field BaseColor UnityEngine.Camera.RenderRequestMode
---@field SpecularColor UnityEngine.Camera.RenderRequestMode
---@field Metallic UnityEngine.Camera.RenderRequestMode
---@field Emission UnityEngine.Camera.RenderRequestMode
---@field Normal UnityEngine.Camera.RenderRequestMode
---@field Smoothness UnityEngine.Camera.RenderRequestMode
---@field Occlusion UnityEngine.Camera.RenderRequestMode
---@field DiffuseColor UnityEngine.Camera.RenderRequestMode
UnityEngine.Camera.RenderRequestMode = {}
---@alias CS.UnityEngine.Camera.RenderRequestMode UnityEngine.Camera.RenderRequestMode
CS.UnityEngine.Camera.RenderRequestMode = UnityEngine.Camera.RenderRequestMode


---@class UnityEngine.Camera.RenderRequestOutputSpace
---@field ScreenSpace UnityEngine.Camera.RenderRequestOutputSpace
---@field UV0 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV1 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV2 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV3 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV4 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV5 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV6 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV7 UnityEngine.Camera.RenderRequestOutputSpace
---@field UV8 UnityEngine.Camera.RenderRequestOutputSpace
UnityEngine.Camera.RenderRequestOutputSpace = {}
---@alias CS.UnityEngine.Camera.RenderRequestOutputSpace UnityEngine.Camera.RenderRequestOutputSpace
CS.UnityEngine.Camera.RenderRequestOutputSpace = UnityEngine.Camera.RenderRequestOutputSpace


---@class UnityEngine.Camera.RenderRequest : System.ValueType
---@field isValid boolean
---@field mode UnityEngine.Camera.RenderRequestMode
---@field result UnityEngine.RenderTexture
---@field outputSpace UnityEngine.Camera.RenderRequestOutputSpace
UnityEngine.Camera.RenderRequest = {}
---@alias CS.UnityEngine.Camera.RenderRequest UnityEngine.Camera.RenderRequest
CS.UnityEngine.Camera.RenderRequest = UnityEngine.Camera.RenderRequest

---@overload fun(mode: UnityEngine.Camera.RenderRequestMode, rt: UnityEngine.RenderTexture) : UnityEngine.Camera.RenderRequest
---@param mode UnityEngine.Camera.RenderRequestMode
---@param space UnityEngine.Camera.RenderRequestOutputSpace
---@param rt UnityEngine.RenderTexture
---@return UnityEngine.Camera.RenderRequest
function UnityEngine.Camera.RenderRequest.New(mode, space, rt) end

---@class UnityEngine.Camera.CameraCallback : System.MulticastDelegate
UnityEngine.Camera.CameraCallback = {}
---@alias CS.UnityEngine.Camera.CameraCallback UnityEngine.Camera.CameraCallback
CS.UnityEngine.Camera.CameraCallback = UnityEngine.Camera.CameraCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Camera.CameraCallback
function UnityEngine.Camera.CameraCallback.New(object, method) end
---@param cam UnityEngine.Camera
function UnityEngine.Camera.CameraCallback:Invoke(cam) end
---@param cam UnityEngine.Camera
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Camera.CameraCallback:BeginInvoke(cam, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Camera.CameraCallback:EndInvoke(result) end

---@class UnityEngine.BoundingSphere : System.ValueType
---@field position UnityEngine.Vector3
---@field radius number
UnityEngine.BoundingSphere = {}
---@alias CS.UnityEngine.BoundingSphere UnityEngine.BoundingSphere
CS.UnityEngine.BoundingSphere = UnityEngine.BoundingSphere

---@overload fun(pos: UnityEngine.Vector3, rad: number) : UnityEngine.BoundingSphere
---@param packedSphere UnityEngine.Vector4
---@return UnityEngine.BoundingSphere
function UnityEngine.BoundingSphere.New(packedSphere) end

---@class UnityEngine.CullingQueryOptions
---@field Normal UnityEngine.CullingQueryOptions
---@field IgnoreVisibility UnityEngine.CullingQueryOptions
---@field IgnoreDistance UnityEngine.CullingQueryOptions
UnityEngine.CullingQueryOptions = {}
---@alias CS.UnityEngine.CullingQueryOptions UnityEngine.CullingQueryOptions
CS.UnityEngine.CullingQueryOptions = UnityEngine.CullingQueryOptions


---@class UnityEngine.CullingGroupEvent : System.ValueType
---@field index number
---@field isVisible boolean
---@field wasVisible boolean
---@field hasBecomeVisible boolean
---@field hasBecomeInvisible boolean
---@field currentDistance number
---@field previousDistance number
UnityEngine.CullingGroupEvent = {}
---@alias CS.UnityEngine.CullingGroupEvent UnityEngine.CullingGroupEvent
CS.UnityEngine.CullingGroupEvent = UnityEngine.CullingGroupEvent


---@class UnityEngine.CullingGroup : System.Object
---@field onStateChanged UnityEngine.CullingGroup.StateChanged
---@field enabled boolean
---@field targetCamera UnityEngine.Camera
UnityEngine.CullingGroup = {}
---@alias CS.UnityEngine.CullingGroup UnityEngine.CullingGroup
CS.UnityEngine.CullingGroup = UnityEngine.CullingGroup

---@return UnityEngine.CullingGroup
function UnityEngine.CullingGroup.New() end
function UnityEngine.CullingGroup:Dispose() end
---@param array UnityEngine.BoundingSphere[]
function UnityEngine.CullingGroup:SetBoundingSpheres(array) end
---@param count number
function UnityEngine.CullingGroup:SetBoundingSphereCount(count) end
---@param index number
function UnityEngine.CullingGroup:EraseSwapBack(index) end
---@overload fun(self: UnityEngine.CullingGroup, visible: boolean, result: System.Int32[], firstIndex: number) : number
---@overload fun(self: UnityEngine.CullingGroup, distanceIndex: number, result: System.Int32[], firstIndex: number) : number
---@param visible boolean
---@param distanceIndex number
---@param result System.Int32[]
---@param firstIndex number
---@return number
function UnityEngine.CullingGroup:QueryIndices(visible, distanceIndex, result, firstIndex) end
---@param index number
---@return boolean
function UnityEngine.CullingGroup:IsVisible(index) end
---@param index number
---@return number
function UnityEngine.CullingGroup:GetDistance(index) end
---@param distances System.Single[]
function UnityEngine.CullingGroup:SetBoundingDistances(distances) end
---@overload fun(self: UnityEngine.CullingGroup, point: UnityEngine.Vector3)
---@param transform UnityEngine.Transform
function UnityEngine.CullingGroup:SetDistanceReferencePoint(transform) end

---@class UnityEngine.CullingGroup.StateChanged : System.MulticastDelegate
UnityEngine.CullingGroup.StateChanged = {}
---@alias CS.UnityEngine.CullingGroup.StateChanged UnityEngine.CullingGroup.StateChanged
CS.UnityEngine.CullingGroup.StateChanged = UnityEngine.CullingGroup.StateChanged

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.CullingGroup.StateChanged
function UnityEngine.CullingGroup.StateChanged.New(object, method) end
---@param sphere UnityEngine.CullingGroupEvent
function UnityEngine.CullingGroup.StateChanged:Invoke(sphere) end
---@param sphere UnityEngine.CullingGroupEvent
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.CullingGroup.StateChanged:BeginInvoke(sphere, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.CullingGroup.StateChanged:EndInvoke(result) end

---@class UnityEngine.FlareLayer : UnityEngine.Behaviour
UnityEngine.FlareLayer = {}
---@alias CS.UnityEngine.FlareLayer UnityEngine.FlareLayer
CS.UnityEngine.FlareLayer = UnityEngine.FlareLayer


---@class UnityEngine.ReflectionProbe : UnityEngine.Behaviour
---@field minBakedCubemapResolution number
---@field maxBakedCubemapResolution number
---@field defaultTextureHDRDecodeValues UnityEngine.Vector4
---@field defaultTexture UnityEngine.Texture
---@field size UnityEngine.Vector3
---@field center UnityEngine.Vector3
---@field nearClipPlane number
---@field farClipPlane number
---@field intensity number
---@field bounds UnityEngine.Bounds
---@field hdr boolean
---@field renderDynamicObjects boolean
---@field shadowDistance number
---@field resolution number
---@field cullingMask number
---@field clearFlags UnityEngine.Rendering.ReflectionProbeClearFlags
---@field backgroundColor UnityEngine.Color
---@field blendDistance number
---@field boxProjection boolean
---@field mode UnityEngine.Rendering.ReflectionProbeMode
---@field importance number
---@field refreshMode UnityEngine.Rendering.ReflectionProbeRefreshMode
---@field timeSlicingMode UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
---@field bakedTexture UnityEngine.Texture
---@field customBakedTexture UnityEngine.Texture
---@field realtimeTexture UnityEngine.RenderTexture
---@field texture UnityEngine.Texture
---@field textureHDRDecodeValues UnityEngine.Vector4
UnityEngine.ReflectionProbe = {}
---@alias CS.UnityEngine.ReflectionProbe UnityEngine.ReflectionProbe
CS.UnityEngine.ReflectionProbe = UnityEngine.ReflectionProbe

---@return UnityEngine.ReflectionProbe
function UnityEngine.ReflectionProbe.New() end
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
---@param blend number
---@param target UnityEngine.RenderTexture
---@return boolean
function UnityEngine.ReflectionProbe.BlendCubemap(src, dst, blend, target) end
function UnityEngine.ReflectionProbe.UpdateCachedState() end
function UnityEngine.ReflectionProbe:Reset() end
---@overload fun() : number
---@param targetTexture UnityEngine.RenderTexture
---@return number
function UnityEngine.ReflectionProbe:RenderProbe(targetTexture) end
---@param renderId number
---@return boolean
function UnityEngine.ReflectionProbe:IsFinishedRendering(renderId) end

---@class UnityEngine.ReflectionProbe.ReflectionProbeEvent
---@field ReflectionProbeAdded UnityEngine.ReflectionProbe.ReflectionProbeEvent
---@field ReflectionProbeRemoved UnityEngine.ReflectionProbe.ReflectionProbeEvent
UnityEngine.ReflectionProbe.ReflectionProbeEvent = {}
---@alias CS.UnityEngine.ReflectionProbe.ReflectionProbeEvent UnityEngine.ReflectionProbe.ReflectionProbeEvent
CS.UnityEngine.ReflectionProbe.ReflectionProbeEvent = UnityEngine.ReflectionProbe.ReflectionProbeEvent


---@class UnityEngine.CrashReport : System.Object
---@field time System.DateTime
---@field text string
---@field reports UnityEngine.CrashReport[]
---@field lastReport UnityEngine.CrashReport
UnityEngine.CrashReport = {}
---@alias CS.UnityEngine.CrashReport UnityEngine.CrashReport
CS.UnityEngine.CrashReport = UnityEngine.CrashReport

function UnityEngine.CrashReport.RemoveAll() end
function UnityEngine.CrashReport:Remove() end

---@class UnityEngine.DebugLogHandler : System.Object
UnityEngine.DebugLogHandler = {}
---@alias CS.UnityEngine.DebugLogHandler UnityEngine.DebugLogHandler
CS.UnityEngine.DebugLogHandler = UnityEngine.DebugLogHandler

---@return UnityEngine.DebugLogHandler
function UnityEngine.DebugLogHandler.New() end
---@overload fun(self: UnityEngine.DebugLogHandler, logType: UnityEngine.LogType, context: UnityEngine.Object, format: string, args: System.Object[])
---@param logType UnityEngine.LogType
---@param logOptions UnityEngine.LogOption
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.DebugLogHandler:LogFormat(logType, logOptions, context, format, args) end
---@param exception System.Exception
---@param context UnityEngine.Object
function UnityEngine.DebugLogHandler:LogException(exception, context) end

---@class UnityEngine.Debug : System.Object
---@field unityLogger UnityEngine.ILogger
---@field developerConsoleEnabled boolean
---@field developerConsoleVisible boolean
---@field isDebugBuild boolean
UnityEngine.Debug = {}
---@alias CS.UnityEngine.Debug UnityEngine.Debug
CS.UnityEngine.Debug = UnityEngine.Debug

---@return UnityEngine.Debug
function UnityEngine.Debug.New() end
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, color: UnityEngine.Color, duration: number)
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, color: UnityEngine.Color)
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3)
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@param color UnityEngine.Color
---@param duration number
---@param depthTest boolean
function UnityEngine.Debug.DrawLine(start, _end, color, duration, depthTest) end
---@overload fun(start: UnityEngine.Vector3, dir: UnityEngine.Vector3, color: UnityEngine.Color, duration: number)
---@overload fun(start: UnityEngine.Vector3, dir: UnityEngine.Vector3, color: UnityEngine.Color)
---@overload fun(start: UnityEngine.Vector3, dir: UnityEngine.Vector3)
---@param start UnityEngine.Vector3
---@param dir UnityEngine.Vector3
---@param color UnityEngine.Color
---@param duration number
---@param depthTest boolean
function UnityEngine.Debug.DrawRay(start, dir, color, duration, depthTest) end
function UnityEngine.Debug.Break() end
function UnityEngine.Debug.DebugBreak() end
---@param buffer System.Byte*
---@param bufferMax number
---@param projectFolder string
---@return number
function UnityEngine.Debug.ExtractStackTraceNoAlloc(buffer, bufferMax, projectFolder) end
---@overload fun(message: System.Object)
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.Debug.Log(message, context) end
---@overload fun(format: string, args: System.Object[])
---@overload fun(context: UnityEngine.Object, format: string, args: System.Object[])
---@param logType UnityEngine.LogType
---@param logOptions UnityEngine.LogOption
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.Debug.LogFormat(logType, logOptions, context, format, args) end
---@overload fun(message: System.Object)
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.Debug.LogError(message, context) end
---@overload fun(format: string, args: System.Object[])
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.Debug.LogErrorFormat(context, format, args) end
function UnityEngine.Debug.ClearDeveloperConsole() end
---@overload fun(exception: System.Exception)
---@param exception System.Exception
---@param context UnityEngine.Object
function UnityEngine.Debug.LogException(exception, context) end
---@overload fun(message: System.Object)
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.Debug.LogWarning(message, context) end
---@overload fun(format: string, args: System.Object[])
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.Debug.LogWarningFormat(context, format, args) end
---@overload fun(condition: boolean)
---@overload fun(condition: boolean, context: UnityEngine.Object)
---@overload fun(condition: boolean, message: System.Object)
---@overload fun(condition: boolean, message: string)
---@overload fun(condition: boolean, message: System.Object, context: UnityEngine.Object)
---@param condition boolean
---@param message string
---@param context UnityEngine.Object
function UnityEngine.Debug.Assert(condition, message, context) end
---@overload fun(condition: boolean, format: string, args: System.Object[])
---@param condition boolean
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.Debug.AssertFormat(condition, context, format, args) end
---@overload fun(message: System.Object)
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.Debug.LogAssertion(message, context) end
---@overload fun(format: string, args: System.Object[])
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.Debug.LogAssertionFormat(context, format, args) end

---@class UnityEngine.DiagnosticSwitch : System.Object
---@field name string
---@field description string
---@field owningModule string
---@field flags UnityEngine.DiagnosticSwitch.Flags
---@field value System.Object
---@field defaultValue System.Object
---@field minValue System.Object
---@field maxValue System.Object
---@field persistentValue System.Object
---@field enumInfo UnityEngine.EnumInfo
---@field isSetToDefault boolean
---@field needsRestart boolean
UnityEngine.DiagnosticSwitch = {}
---@alias CS.UnityEngine.DiagnosticSwitch UnityEngine.DiagnosticSwitch
CS.UnityEngine.DiagnosticSwitch = UnityEngine.DiagnosticSwitch


---@class UnityEngine.DiagnosticSwitch.Flags
---@field None UnityEngine.DiagnosticSwitch.Flags
---@field CanChangeAfterEngineStart UnityEngine.DiagnosticSwitch.Flags
---@field PropagateToAssetImportWorkerProcess UnityEngine.DiagnosticSwitch.Flags
UnityEngine.DiagnosticSwitch.Flags = {}
---@alias CS.UnityEngine.DiagnosticSwitch.Flags UnityEngine.DiagnosticSwitch.Flags
CS.UnityEngine.DiagnosticSwitch.Flags = UnityEngine.DiagnosticSwitch.Flags


---@class UnityEngine.ExposedPropertyResolver : System.ValueType
UnityEngine.ExposedPropertyResolver = {}
---@alias CS.UnityEngine.ExposedPropertyResolver UnityEngine.ExposedPropertyResolver
CS.UnityEngine.ExposedPropertyResolver = UnityEngine.ExposedPropertyResolver


---@class UnityEngine.ExposedReference : System.ValueType
---@field exposedName UnityEngine.PropertyName
---@field defaultValue UnityEngine.Object
UnityEngine.ExposedReference = {}
---@alias CS.UnityEngine.ExposedReference UnityEngine.ExposedReference
CS.UnityEngine.ExposedReference = UnityEngine.ExposedReference

---@param resolver UnityEngine.IExposedPropertyTable
---@return T
function UnityEngine.ExposedReference:Resolve(resolver) end

---@class UnityEngine.IExposedPropertyTable
UnityEngine.IExposedPropertyTable = {}
---@alias CS.UnityEngine.IExposedPropertyTable UnityEngine.IExposedPropertyTable
CS.UnityEngine.IExposedPropertyTable = UnityEngine.IExposedPropertyTable

---@param id UnityEngine.PropertyName
---@param value UnityEngine.Object
function UnityEngine.IExposedPropertyTable:SetReferenceValue(id, value) end
---@param id UnityEngine.PropertyName
---@param out_idValid boolean
---@return UnityEngine.Object,boolean
function UnityEngine.IExposedPropertyTable:GetReferenceValue(id, out_idValid) end
---@param id UnityEngine.PropertyName
function UnityEngine.IExposedPropertyTable:ClearReferenceValue(id) end

---@class UnityEngine.EventProvider : System.Object
UnityEngine.EventProvider = {}
---@alias CS.UnityEngine.EventProvider UnityEngine.EventProvider
CS.UnityEngine.EventProvider = UnityEngine.EventProvider

---@return UnityEngine.EventProvider
function UnityEngine.EventProvider.New() end
---@param value number
---@param text string
function UnityEngine.EventProvider.WriteCustomEvent(value, text) end

---@class UnityEngine.ExpressionEvaluator : System.Object
UnityEngine.ExpressionEvaluator = {}
---@alias CS.UnityEngine.ExpressionEvaluator UnityEngine.ExpressionEvaluator
CS.UnityEngine.ExpressionEvaluator = UnityEngine.ExpressionEvaluator

---@return UnityEngine.ExpressionEvaluator
function UnityEngine.ExpressionEvaluator.New() end

---@class UnityEngine.ExpressionEvaluator.Expression : System.Object
UnityEngine.ExpressionEvaluator.Expression = {}
---@alias CS.UnityEngine.ExpressionEvaluator.Expression UnityEngine.ExpressionEvaluator.Expression
CS.UnityEngine.ExpressionEvaluator.Expression = UnityEngine.ExpressionEvaluator.Expression


---@class UnityEngine.ExpressionEvaluator.PcgRandom : System.ValueType
UnityEngine.ExpressionEvaluator.PcgRandom = {}
---@alias CS.UnityEngine.ExpressionEvaluator.PcgRandom UnityEngine.ExpressionEvaluator.PcgRandom
CS.UnityEngine.ExpressionEvaluator.PcgRandom = UnityEngine.ExpressionEvaluator.PcgRandom

---@param state number
---@param sequence number
---@return UnityEngine.ExpressionEvaluator.PcgRandom
function UnityEngine.ExpressionEvaluator.PcgRandom.New(state, sequence) end
---@return number
function UnityEngine.ExpressionEvaluator.PcgRandom:GetUInt() end

---@class UnityEngine.ExpressionEvaluator.Op
---@field Add UnityEngine.ExpressionEvaluator.Op
---@field Sub UnityEngine.ExpressionEvaluator.Op
---@field Mul UnityEngine.ExpressionEvaluator.Op
---@field Div UnityEngine.ExpressionEvaluator.Op
---@field Mod UnityEngine.ExpressionEvaluator.Op
---@field Neg UnityEngine.ExpressionEvaluator.Op
---@field Pow UnityEngine.ExpressionEvaluator.Op
---@field Sqrt UnityEngine.ExpressionEvaluator.Op
---@field Sin UnityEngine.ExpressionEvaluator.Op
---@field Cos UnityEngine.ExpressionEvaluator.Op
---@field Tan UnityEngine.ExpressionEvaluator.Op
---@field Floor UnityEngine.ExpressionEvaluator.Op
---@field Ceil UnityEngine.ExpressionEvaluator.Op
---@field Round UnityEngine.ExpressionEvaluator.Op
---@field Rand UnityEngine.ExpressionEvaluator.Op
---@field Linear UnityEngine.ExpressionEvaluator.Op
UnityEngine.ExpressionEvaluator.Op = {}
---@alias CS.UnityEngine.ExpressionEvaluator.Op UnityEngine.ExpressionEvaluator.Op
CS.UnityEngine.ExpressionEvaluator.Op = UnityEngine.ExpressionEvaluator.Op


---@class UnityEngine.ExpressionEvaluator.Associativity
---@field Left UnityEngine.ExpressionEvaluator.Associativity
---@field Right UnityEngine.ExpressionEvaluator.Associativity
UnityEngine.ExpressionEvaluator.Associativity = {}
---@alias CS.UnityEngine.ExpressionEvaluator.Associativity UnityEngine.ExpressionEvaluator.Associativity
CS.UnityEngine.ExpressionEvaluator.Associativity = UnityEngine.ExpressionEvaluator.Associativity


---@class UnityEngine.ExpressionEvaluator.Operator : System.Object
---@field op UnityEngine.ExpressionEvaluator.Op
---@field precedence number
---@field associativity UnityEngine.ExpressionEvaluator.Associativity
---@field inputs number
UnityEngine.ExpressionEvaluator.Operator = {}
---@alias CS.UnityEngine.ExpressionEvaluator.Operator UnityEngine.ExpressionEvaluator.Operator
CS.UnityEngine.ExpressionEvaluator.Operator = UnityEngine.ExpressionEvaluator.Operator

---@param op UnityEngine.ExpressionEvaluator.Op
---@param precedence number
---@param inputs number
---@param associativity UnityEngine.ExpressionEvaluator.Associativity
---@return UnityEngine.ExpressionEvaluator.Operator
function UnityEngine.ExpressionEvaluator.Operator.New(op, precedence, inputs, associativity) end

---@class UnityEngine.CompressionType
---@field None UnityEngine.CompressionType
---@field Lzma UnityEngine.CompressionType
---@field Lz4 UnityEngine.CompressionType
---@field Lz4HC UnityEngine.CompressionType
UnityEngine.CompressionType = {}
---@alias CS.UnityEngine.CompressionType UnityEngine.CompressionType
CS.UnityEngine.CompressionType = UnityEngine.CompressionType


---@class UnityEngine.CompressionLevel
---@field None UnityEngine.CompressionLevel
---@field Fastest UnityEngine.CompressionLevel
---@field Fast UnityEngine.CompressionLevel
---@field Normal UnityEngine.CompressionLevel
---@field High UnityEngine.CompressionLevel
---@field Maximum UnityEngine.CompressionLevel
UnityEngine.CompressionLevel = {}
---@alias CS.UnityEngine.CompressionLevel UnityEngine.CompressionLevel
CS.UnityEngine.CompressionLevel = UnityEngine.CompressionLevel


---@class UnityEngine.BuildCompression : System.ValueType
---@field Uncompressed UnityEngine.BuildCompression
---@field LZ4 UnityEngine.BuildCompression
---@field LZMA UnityEngine.BuildCompression
---@field UncompressedRuntime UnityEngine.BuildCompression
---@field LZ4Runtime UnityEngine.BuildCompression
---@field compression UnityEngine.CompressionType
---@field level UnityEngine.CompressionLevel
---@field blockSize number
UnityEngine.BuildCompression = {}
---@alias CS.UnityEngine.BuildCompression UnityEngine.BuildCompression
CS.UnityEngine.BuildCompression = UnityEngine.BuildCompression


---@class UnityEngine.Bounds : System.ValueType
---@field center UnityEngine.Vector3
---@field size UnityEngine.Vector3
---@field extents UnityEngine.Vector3
---@field min UnityEngine.Vector3
---@field max UnityEngine.Vector3
UnityEngine.Bounds = {}
---@alias CS.UnityEngine.Bounds UnityEngine.Bounds
CS.UnityEngine.Bounds = UnityEngine.Bounds

---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
---@return UnityEngine.Bounds
function UnityEngine.Bounds.New(center, size) end
---@return number
function UnityEngine.Bounds:GetHashCode() end
---@overload fun(self: UnityEngine.Bounds, other: System.Object) : boolean
---@param other UnityEngine.Bounds
---@return boolean
function UnityEngine.Bounds:Equals(other) end
---@param min UnityEngine.Vector3
---@param max UnityEngine.Vector3
function UnityEngine.Bounds:SetMinMax(min, max) end
---@overload fun(self: UnityEngine.Bounds, point: UnityEngine.Vector3)
---@param bounds UnityEngine.Bounds
function UnityEngine.Bounds:Encapsulate(bounds) end
---@overload fun(self: UnityEngine.Bounds, amount: number)
---@param amount UnityEngine.Vector3
function UnityEngine.Bounds:Expand(amount) end
---@param bounds UnityEngine.Bounds
---@return boolean
function UnityEngine.Bounds:Intersects(bounds) end
---@overload fun(self: UnityEngine.Bounds, ray: UnityEngine.Ray) : boolean
---@param ray UnityEngine.Ray
---@param out_distance number
---@return boolean,number
function UnityEngine.Bounds:IntersectRay(ray, out_distance) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Bounds, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Bounds:ToString(format, formatProvider) end
---@param point UnityEngine.Vector3
---@return boolean
function UnityEngine.Bounds:Contains(point) end
---@param point UnityEngine.Vector3
---@return number
function UnityEngine.Bounds:SqrDistance(point) end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Bounds:ClosestPoint(point) end

---@class UnityEngine.BoundsInt : System.ValueType
---@field x number
---@field y number
---@field z number
---@field center UnityEngine.Vector3
---@field min UnityEngine.Vector3Int
---@field max UnityEngine.Vector3Int
---@field xMin number
---@field yMin number
---@field zMin number
---@field xMax number
---@field yMax number
---@field zMax number
---@field position UnityEngine.Vector3Int
---@field size UnityEngine.Vector3Int
---@field allPositionsWithin UnityEngine.BoundsInt.PositionEnumerator
UnityEngine.BoundsInt = {}
---@alias CS.UnityEngine.BoundsInt UnityEngine.BoundsInt
CS.UnityEngine.BoundsInt = UnityEngine.BoundsInt

---@overload fun(xMin: number, yMin: number, zMin: number, sizeX: number, sizeY: number, sizeZ: number) : UnityEngine.BoundsInt
---@param position UnityEngine.Vector3Int
---@param size UnityEngine.Vector3Int
---@return UnityEngine.BoundsInt
function UnityEngine.BoundsInt.New(position, size) end
---@param minPosition UnityEngine.Vector3Int
---@param maxPosition UnityEngine.Vector3Int
function UnityEngine.BoundsInt:SetMinMax(minPosition, maxPosition) end
---@param bounds UnityEngine.BoundsInt
function UnityEngine.BoundsInt:ClampToBounds(bounds) end
---@param position UnityEngine.Vector3Int
---@return boolean
function UnityEngine.BoundsInt:Contains(position) end
---@overload fun() : string
---@overload fun(self: UnityEngine.BoundsInt, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.BoundsInt:ToString(format, formatProvider) end
---@overload fun(self: UnityEngine.BoundsInt, other: System.Object) : boolean
---@param other UnityEngine.BoundsInt
---@return boolean
function UnityEngine.BoundsInt:Equals(other) end
---@return number
function UnityEngine.BoundsInt:GetHashCode() end

---@class UnityEngine.BoundsInt.PositionEnumerator : System.ValueType
---@field Current UnityEngine.Vector3Int
UnityEngine.BoundsInt.PositionEnumerator = {}
---@alias CS.UnityEngine.BoundsInt.PositionEnumerator UnityEngine.BoundsInt.PositionEnumerator
CS.UnityEngine.BoundsInt.PositionEnumerator = UnityEngine.BoundsInt.PositionEnumerator

---@param min UnityEngine.Vector3Int
---@param max UnityEngine.Vector3Int
---@return UnityEngine.BoundsInt.PositionEnumerator
function UnityEngine.BoundsInt.PositionEnumerator.New(min, max) end
---@return UnityEngine.BoundsInt.PositionEnumerator
function UnityEngine.BoundsInt.PositionEnumerator:GetEnumerator() end
---@return boolean
function UnityEngine.BoundsInt.PositionEnumerator:MoveNext() end
function UnityEngine.BoundsInt.PositionEnumerator:Reset() end

---@class UnityEngine.GeometryUtility : System.Object
UnityEngine.GeometryUtility = {}
---@alias CS.UnityEngine.GeometryUtility UnityEngine.GeometryUtility
CS.UnityEngine.GeometryUtility = UnityEngine.GeometryUtility

---@return UnityEngine.GeometryUtility
function UnityEngine.GeometryUtility.New() end
---@overload fun(camera: UnityEngine.Camera) : UnityEngine.Plane[]
---@overload fun(worldToProjectionMatrix: UnityEngine.Matrix4x4) : UnityEngine.Plane[]
---@overload fun(camera: UnityEngine.Camera, planes: UnityEngine.Plane[])
---@param worldToProjectionMatrix UnityEngine.Matrix4x4
---@param planes UnityEngine.Plane[]
function UnityEngine.GeometryUtility.CalculateFrustumPlanes(worldToProjectionMatrix, planes) end
---@param positions UnityEngine.Vector3[]
---@param transform UnityEngine.Matrix4x4
---@return UnityEngine.Bounds
function UnityEngine.GeometryUtility.CalculateBounds(positions, transform) end
---@param vertices UnityEngine.Vector3[]
---@param out_plane UnityEngine.Plane
---@return boolean,UnityEngine.Plane
function UnityEngine.GeometryUtility.TryCreatePlaneFromPolygon(vertices, out_plane) end
---@param planes UnityEngine.Plane[]
---@param bounds UnityEngine.Bounds
---@return boolean
function UnityEngine.GeometryUtility.TestPlanesAABB(planes, bounds) end

---@class UnityEngine.Plane : System.ValueType
---@field normal UnityEngine.Vector3
---@field distance number
---@field flipped UnityEngine.Plane
UnityEngine.Plane = {}
---@alias CS.UnityEngine.Plane UnityEngine.Plane
CS.UnityEngine.Plane = UnityEngine.Plane

---@overload fun(inNormal: UnityEngine.Vector3, inPoint: UnityEngine.Vector3) : UnityEngine.Plane
---@overload fun(inNormal: UnityEngine.Vector3, d: number) : UnityEngine.Plane
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param c UnityEngine.Vector3
---@return UnityEngine.Plane
function UnityEngine.Plane.New(a, b, c) end
---@overload fun(plane: UnityEngine.Plane, translation: UnityEngine.Vector3) : UnityEngine.Plane
---@param translation UnityEngine.Vector3
function UnityEngine.Plane:Translate(translation) end
---@param inNormal UnityEngine.Vector3
---@param inPoint UnityEngine.Vector3
function UnityEngine.Plane:SetNormalAndPosition(inNormal, inPoint) end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param c UnityEngine.Vector3
function UnityEngine.Plane:Set3Points(a, b, c) end
function UnityEngine.Plane:Flip() end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Plane:ClosestPointOnPlane(point) end
---@param point UnityEngine.Vector3
---@return number
function UnityEngine.Plane:GetDistanceToPoint(point) end
---@param point UnityEngine.Vector3
---@return boolean
function UnityEngine.Plane:GetSide(point) end
---@param inPt0 UnityEngine.Vector3
---@param inPt1 UnityEngine.Vector3
---@return boolean
function UnityEngine.Plane:SameSide(inPt0, inPt1) end
---@param ray UnityEngine.Ray
---@param out_enter number
---@return boolean,number
function UnityEngine.Plane:Raycast(ray, out_enter) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Plane, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Plane:ToString(format, formatProvider) end

---@class UnityEngine.Ray : System.ValueType
---@field origin UnityEngine.Vector3
---@field direction UnityEngine.Vector3
UnityEngine.Ray = {}
---@alias CS.UnityEngine.Ray UnityEngine.Ray
CS.UnityEngine.Ray = UnityEngine.Ray

---@param origin UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@return UnityEngine.Ray
function UnityEngine.Ray.New(origin, direction) end
---@param distance number
---@return UnityEngine.Vector3
function UnityEngine.Ray:GetPoint(distance) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Ray, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Ray:ToString(format, formatProvider) end

---@class UnityEngine.Ray2D : System.ValueType
---@field origin UnityEngine.Vector2
---@field direction UnityEngine.Vector2
UnityEngine.Ray2D = {}
---@alias CS.UnityEngine.Ray2D UnityEngine.Ray2D
CS.UnityEngine.Ray2D = UnityEngine.Ray2D

---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@return UnityEngine.Ray2D
function UnityEngine.Ray2D.New(origin, direction) end
---@param distance number
---@return UnityEngine.Vector2
function UnityEngine.Ray2D:GetPoint(distance) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Ray2D, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Ray2D:ToString(format, formatProvider) end

---@class UnityEngine.Rect : System.ValueType
---@field zero UnityEngine.Rect
---@field x number
---@field y number
---@field position UnityEngine.Vector2
---@field center UnityEngine.Vector2
---@field min UnityEngine.Vector2
---@field max UnityEngine.Vector2
---@field width number
---@field height number
---@field size UnityEngine.Vector2
---@field xMin number
---@field yMin number
---@field xMax number
---@field yMax number
UnityEngine.Rect = {}
---@alias CS.UnityEngine.Rect UnityEngine.Rect
CS.UnityEngine.Rect = UnityEngine.Rect

---@overload fun(x: number, y: number, width: number, height: number) : UnityEngine.Rect
---@overload fun(position: UnityEngine.Vector2, size: UnityEngine.Vector2) : UnityEngine.Rect
---@param source UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.Rect.New(source) end
---@param xmin number
---@param ymin number
---@param xmax number
---@param ymax number
---@return UnityEngine.Rect
function UnityEngine.Rect.MinMaxRect(xmin, ymin, xmax, ymax) end
---@param rectangle UnityEngine.Rect
---@param normalizedRectCoordinates UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rect.NormalizedToPoint(rectangle, normalizedRectCoordinates) end
---@param rectangle UnityEngine.Rect
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rect.PointToNormalized(rectangle, point) end
---@param x number
---@param y number
---@param width number
---@param height number
function UnityEngine.Rect:Set(x, y, width, height) end
---@overload fun(self: UnityEngine.Rect, point: UnityEngine.Vector2) : boolean
---@overload fun(self: UnityEngine.Rect, point: UnityEngine.Vector3) : boolean
---@param point UnityEngine.Vector3
---@param allowInverse boolean
---@return boolean
function UnityEngine.Rect:Contains(point, allowInverse) end
---@overload fun(self: UnityEngine.Rect, other: UnityEngine.Rect) : boolean
---@param other UnityEngine.Rect
---@param allowInverse boolean
---@return boolean
function UnityEngine.Rect:Overlaps(other, allowInverse) end
---@return number
function UnityEngine.Rect:GetHashCode() end
---@overload fun(self: UnityEngine.Rect, other: System.Object) : boolean
---@param other UnityEngine.Rect
---@return boolean
function UnityEngine.Rect:Equals(other) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Rect, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Rect:ToString(format, formatProvider) end

---@class UnityEngine.RectInt : System.ValueType
---@field x number
---@field y number
---@field center UnityEngine.Vector2
---@field min UnityEngine.Vector2Int
---@field max UnityEngine.Vector2Int
---@field width number
---@field height number
---@field xMin number
---@field yMin number
---@field xMax number
---@field yMax number
---@field position UnityEngine.Vector2Int
---@field size UnityEngine.Vector2Int
---@field allPositionsWithin UnityEngine.RectInt.PositionEnumerator
UnityEngine.RectInt = {}
---@alias CS.UnityEngine.RectInt UnityEngine.RectInt
CS.UnityEngine.RectInt = UnityEngine.RectInt

---@overload fun(xMin: number, yMin: number, width: number, height: number) : UnityEngine.RectInt
---@param position UnityEngine.Vector2Int
---@param size UnityEngine.Vector2Int
---@return UnityEngine.RectInt
function UnityEngine.RectInt.New(position, size) end
---@param minPosition UnityEngine.Vector2Int
---@param maxPosition UnityEngine.Vector2Int
function UnityEngine.RectInt:SetMinMax(minPosition, maxPosition) end
---@param bounds UnityEngine.RectInt
function UnityEngine.RectInt:ClampToBounds(bounds) end
---@param position UnityEngine.Vector2Int
---@return boolean
function UnityEngine.RectInt:Contains(position) end
---@param other UnityEngine.RectInt
---@return boolean
function UnityEngine.RectInt:Overlaps(other) end
---@overload fun() : string
---@overload fun(self: UnityEngine.RectInt, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.RectInt:ToString(format, formatProvider) end
---@param other UnityEngine.RectInt
---@return boolean
function UnityEngine.RectInt:Equals(other) end

---@class UnityEngine.RectInt.PositionEnumerator : System.ValueType
---@field Current UnityEngine.Vector2Int
UnityEngine.RectInt.PositionEnumerator = {}
---@alias CS.UnityEngine.RectInt.PositionEnumerator UnityEngine.RectInt.PositionEnumerator
CS.UnityEngine.RectInt.PositionEnumerator = UnityEngine.RectInt.PositionEnumerator

---@param min UnityEngine.Vector2Int
---@param max UnityEngine.Vector2Int
---@return UnityEngine.RectInt.PositionEnumerator
function UnityEngine.RectInt.PositionEnumerator.New(min, max) end
---@return UnityEngine.RectInt.PositionEnumerator
function UnityEngine.RectInt.PositionEnumerator:GetEnumerator() end
---@return boolean
function UnityEngine.RectInt.PositionEnumerator:MoveNext() end
function UnityEngine.RectInt.PositionEnumerator:Reset() end

---@class UnityEngine.RectOffset : System.Object
---@field left number
---@field right number
---@field top number
---@field bottom number
---@field horizontal number
---@field vertical number
UnityEngine.RectOffset = {}
---@alias CS.UnityEngine.RectOffset UnityEngine.RectOffset
CS.UnityEngine.RectOffset = UnityEngine.RectOffset

---@overload fun() : UnityEngine.RectOffset
---@param left number
---@param right number
---@param top number
---@param bottom number
---@return UnityEngine.RectOffset
function UnityEngine.RectOffset.New(left, right, top, bottom) end
---@overload fun() : string
---@overload fun(self: UnityEngine.RectOffset, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.RectOffset:ToString(format, formatProvider) end
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.RectOffset:Add(rect) end
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.RectOffset:Remove(rect) end

---@class UnityEngine.DynamicGI : System.Object
---@field indirectScale number
---@field updateThreshold number
---@field materialUpdateTimeSlice number
---@field synchronousMode boolean
---@field isConverged boolean
UnityEngine.DynamicGI = {}
---@alias CS.UnityEngine.DynamicGI UnityEngine.DynamicGI
CS.UnityEngine.DynamicGI = UnityEngine.DynamicGI

---@return UnityEngine.DynamicGI
function UnityEngine.DynamicGI.New() end
---@param renderer UnityEngine.Renderer
---@param color UnityEngine.Color
function UnityEngine.DynamicGI.SetEmissive(renderer, color) end
---@param input System.Single[]
function UnityEngine.DynamicGI.SetEnvironmentData(input) end
function UnityEngine.DynamicGI.UpdateEnvironment() end

---@class UnityEngine.LightingSettings : UnityEngine.Object
---@field bakedGI boolean
---@field realtimeGI boolean
---@field realtimeEnvironmentLighting boolean
---@field autoGenerate boolean
---@field mixedBakeMode UnityEngine.MixedLightingMode
---@field albedoBoost number
---@field indirectScale number
---@field lightmapper UnityEngine.LightingSettings.Lightmapper
---@field lightmapMaxSize number
---@field lightmapResolution number
---@field lightmapPadding number
---@field lightmapCompression UnityEngine.LightmapCompression
---@field ao boolean
---@field aoMaxDistance number
---@field aoExponentIndirect number
---@field aoExponentDirect number
---@field extractAO boolean
---@field directionalityMode UnityEngine.LightmapsMode
---@field exportTrainingData boolean
---@field trainingDataDestination string
---@field indirectResolution number
---@field sampling UnityEngine.LightingSettings.Sampling
---@field directSampleCount number
---@field indirectSampleCount number
---@field maxBounces number
---@field minBounces number
---@field prioritizeView boolean
---@field filteringMode UnityEngine.LightingSettings.FilterMode
---@field denoiserTypeDirect UnityEngine.LightingSettings.DenoiserType
---@field denoiserTypeIndirect UnityEngine.LightingSettings.DenoiserType
---@field denoiserTypeAO UnityEngine.LightingSettings.DenoiserType
---@field filterTypeDirect UnityEngine.LightingSettings.FilterType
---@field filterTypeIndirect UnityEngine.LightingSettings.FilterType
---@field filterTypeAO UnityEngine.LightingSettings.FilterType
---@field filteringGaussianRadiusDirect number
---@field filteringGaussianRadiusIndirect number
---@field filteringGaussianRadiusAO number
---@field filteringAtrousPositionSigmaDirect number
---@field filteringAtrousPositionSigmaIndirect number
---@field filteringAtrousPositionSigmaAO number
---@field environmentImportanceSampling boolean
---@field environmentSampleCount number
---@field lightProbeSampleCountMultiplier number
---@field respectSceneVisibilityWhenBakingGI boolean
UnityEngine.LightingSettings = {}
---@alias CS.UnityEngine.LightingSettings UnityEngine.LightingSettings
CS.UnityEngine.LightingSettings = UnityEngine.LightingSettings

---@return UnityEngine.LightingSettings
function UnityEngine.LightingSettings.New() end

---@class UnityEngine.LightingSettings.Lightmapper
---@field ProgressiveCPU UnityEngine.LightingSettings.Lightmapper
---@field ProgressiveGPU UnityEngine.LightingSettings.Lightmapper
UnityEngine.LightingSettings.Lightmapper = {}
---@alias CS.UnityEngine.LightingSettings.Lightmapper UnityEngine.LightingSettings.Lightmapper
CS.UnityEngine.LightingSettings.Lightmapper = UnityEngine.LightingSettings.Lightmapper


---@class UnityEngine.LightingSettings.Sampling
---@field Auto UnityEngine.LightingSettings.Sampling
---@field Fixed UnityEngine.LightingSettings.Sampling
UnityEngine.LightingSettings.Sampling = {}
---@alias CS.UnityEngine.LightingSettings.Sampling UnityEngine.LightingSettings.Sampling
CS.UnityEngine.LightingSettings.Sampling = UnityEngine.LightingSettings.Sampling


---@class UnityEngine.LightingSettings.FilterMode
---@field None UnityEngine.LightingSettings.FilterMode
---@field Auto UnityEngine.LightingSettings.FilterMode
---@field Advanced UnityEngine.LightingSettings.FilterMode
UnityEngine.LightingSettings.FilterMode = {}
---@alias CS.UnityEngine.LightingSettings.FilterMode UnityEngine.LightingSettings.FilterMode
CS.UnityEngine.LightingSettings.FilterMode = UnityEngine.LightingSettings.FilterMode


---@class UnityEngine.LightingSettings.DenoiserType
---@field None UnityEngine.LightingSettings.DenoiserType
---@field Optix UnityEngine.LightingSettings.DenoiserType
---@field OpenImage UnityEngine.LightingSettings.DenoiserType
---@field RadeonPro UnityEngine.LightingSettings.DenoiserType
UnityEngine.LightingSettings.DenoiserType = {}
---@alias CS.UnityEngine.LightingSettings.DenoiserType UnityEngine.LightingSettings.DenoiserType
CS.UnityEngine.LightingSettings.DenoiserType = UnityEngine.LightingSettings.DenoiserType


---@class UnityEngine.LightingSettings.FilterType
---@field Gaussian UnityEngine.LightingSettings.FilterType
---@field ATrous UnityEngine.LightingSettings.FilterType
---@field None UnityEngine.LightingSettings.FilterType
UnityEngine.LightingSettings.FilterType = {}
---@alias CS.UnityEngine.LightingSettings.FilterType UnityEngine.LightingSettings.FilterType
CS.UnityEngine.LightingSettings.FilterType = UnityEngine.LightingSettings.FilterType


---@class UnityEngine.LightingSettings.TiledBaking
---@field Disabled UnityEngine.LightingSettings.TiledBaking
---@field Auto UnityEngine.LightingSettings.TiledBaking
---@field Quarter UnityEngine.LightingSettings.TiledBaking
---@field Sixtenth UnityEngine.LightingSettings.TiledBaking
---@field SixtyFourth UnityEngine.LightingSettings.TiledBaking
---@field TwoHundredFiftySixth UnityEngine.LightingSettings.TiledBaking
UnityEngine.LightingSettings.TiledBaking = {}
---@alias CS.UnityEngine.LightingSettings.TiledBaking UnityEngine.LightingSettings.TiledBaking
CS.UnityEngine.LightingSettings.TiledBaking = UnityEngine.LightingSettings.TiledBaking


---@class UnityEngine.Gizmos : System.Object
---@field color UnityEngine.Color
---@field matrix UnityEngine.Matrix4x4
---@field exposure UnityEngine.Texture
---@field probeSize number
UnityEngine.Gizmos = {}
---@alias CS.UnityEngine.Gizmos UnityEngine.Gizmos
CS.UnityEngine.Gizmos = UnityEngine.Gizmos

---@return UnityEngine.Gizmos
function UnityEngine.Gizmos.New() end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
function UnityEngine.Gizmos.DrawLine(from, to) end
---@param points System.ReadOnlySpan
---@param looped boolean
function UnityEngine.Gizmos.DrawLineStrip(points, looped) end
---@param points System.ReadOnlySpan
function UnityEngine.Gizmos.DrawLineList(points) end
---@param center UnityEngine.Vector3
---@param radius number
function UnityEngine.Gizmos.DrawWireSphere(center, radius) end
---@param center UnityEngine.Vector3
---@param radius number
function UnityEngine.Gizmos.DrawSphere(center, radius) end
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
function UnityEngine.Gizmos.DrawWireCube(center, size) end
---@param center UnityEngine.Vector3
---@param size UnityEngine.Vector3
function UnityEngine.Gizmos.DrawCube(center, size) end
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, scale: UnityEngine.Vector3)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3)
---@overload fun(mesh: UnityEngine.Mesh)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, scale: UnityEngine.Vector3)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, position: UnityEngine.Vector3)
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
function UnityEngine.Gizmos.DrawMesh(mesh, submeshIndex) end
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, scale: UnityEngine.Vector3)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3)
---@overload fun(mesh: UnityEngine.Mesh)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, scale: UnityEngine.Vector3)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, position: UnityEngine.Vector3)
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
function UnityEngine.Gizmos.DrawWireMesh(mesh, submeshIndex) end
---@overload fun(center: UnityEngine.Vector3, name: string, allowScaling: boolean)
---@overload fun(center: UnityEngine.Vector3, name: string, allowScaling: boolean, tint: UnityEngine.Color)
---@param center UnityEngine.Vector3
---@param name string
function UnityEngine.Gizmos.DrawIcon(center, name) end
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, mat: UnityEngine.Material)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, mat: UnityEngine.Material)
---@param screenRect UnityEngine.Rect
---@param texture UnityEngine.Texture
---@param leftBorder number
---@param rightBorder number
---@param topBorder number
---@param bottomBorder number
function UnityEngine.Gizmos.DrawGUITexture(screenRect, texture, leftBorder, rightBorder, topBorder, bottomBorder) end
---@param center UnityEngine.Vector3
---@param fov number
---@param maxRange number
---@param minRange number
---@param aspect number
function UnityEngine.Gizmos.DrawFrustum(center, fov, maxRange, minRange, aspect) end
---@overload fun(r: UnityEngine.Ray)
---@param from UnityEngine.Vector3
---@param direction UnityEngine.Vector3
function UnityEngine.Gizmos.DrawRay(from, direction) end

---@class UnityEngine.BeforeRenderOrderAttribute : System.Attribute
---@field order number
UnityEngine.BeforeRenderOrderAttribute = {}
---@alias CS.UnityEngine.BeforeRenderOrderAttribute UnityEngine.BeforeRenderOrderAttribute
CS.UnityEngine.BeforeRenderOrderAttribute = UnityEngine.BeforeRenderOrderAttribute

---@param order number
---@return UnityEngine.BeforeRenderOrderAttribute
function UnityEngine.BeforeRenderOrderAttribute.New(order) end

---@class UnityEngine.BeforeRenderHelper : System.Object
UnityEngine.BeforeRenderHelper = {}
---@alias CS.UnityEngine.BeforeRenderHelper UnityEngine.BeforeRenderHelper
CS.UnityEngine.BeforeRenderHelper = UnityEngine.BeforeRenderHelper

---@param callback UnityEngine.Events.UnityAction
function UnityEngine.BeforeRenderHelper.RegisterCallback(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.BeforeRenderHelper.UnregisterCallback(callback) end
function UnityEngine.BeforeRenderHelper.Invoke() end

---@class UnityEngine.BeforeRenderHelper.OrderBlock : System.ValueType
UnityEngine.BeforeRenderHelper.OrderBlock = {}
---@alias CS.UnityEngine.BeforeRenderHelper.OrderBlock UnityEngine.BeforeRenderHelper.OrderBlock
CS.UnityEngine.BeforeRenderHelper.OrderBlock = UnityEngine.BeforeRenderHelper.OrderBlock


---@class UnityEngine.BillboardAsset : UnityEngine.Object
---@field width number
---@field height number
---@field bottom number
---@field imageCount number
---@field vertexCount number
---@field indexCount number
---@field material UnityEngine.Material
UnityEngine.BillboardAsset = {}
---@alias CS.UnityEngine.BillboardAsset UnityEngine.BillboardAsset
CS.UnityEngine.BillboardAsset = UnityEngine.BillboardAsset

---@return UnityEngine.BillboardAsset
function UnityEngine.BillboardAsset.New() end
---@overload fun(self: UnityEngine.BillboardAsset, imageTexCoords: System.Collections.Generic.List)
---@return UnityEngine.Vector4[]
function UnityEngine.BillboardAsset:GetImageTexCoords() end
---@overload fun(self: UnityEngine.BillboardAsset, imageTexCoords: System.Collections.Generic.List)
---@param imageTexCoords UnityEngine.Vector4[]
function UnityEngine.BillboardAsset:SetImageTexCoords(imageTexCoords) end
---@overload fun(self: UnityEngine.BillboardAsset, vertices: System.Collections.Generic.List)
---@return UnityEngine.Vector2[]
function UnityEngine.BillboardAsset:GetVertices() end
---@overload fun(self: UnityEngine.BillboardAsset, vertices: System.Collections.Generic.List)
---@param vertices UnityEngine.Vector2[]
function UnityEngine.BillboardAsset:SetVertices(vertices) end
---@overload fun(self: UnityEngine.BillboardAsset, indices: System.Collections.Generic.List)
---@return System.UInt16[]
function UnityEngine.BillboardAsset:GetIndices() end
---@overload fun(self: UnityEngine.BillboardAsset, indices: System.Collections.Generic.List)
---@param indices System.UInt16[]
function UnityEngine.BillboardAsset:SetIndices(indices) end

---@class UnityEngine.BillboardRenderer : UnityEngine.Renderer
---@field billboard UnityEngine.BillboardAsset
UnityEngine.BillboardRenderer = {}
---@alias CS.UnityEngine.BillboardRenderer UnityEngine.BillboardRenderer
CS.UnityEngine.BillboardRenderer = UnityEngine.BillboardRenderer

---@return UnityEngine.BillboardRenderer
function UnityEngine.BillboardRenderer.New() end

---@class UnityEngine.CustomRenderTextureManager : System.Object
UnityEngine.CustomRenderTextureManager = {}
---@alias CS.UnityEngine.CustomRenderTextureManager UnityEngine.CustomRenderTextureManager
CS.UnityEngine.CustomRenderTextureManager = UnityEngine.CustomRenderTextureManager

---@param currentCustomRenderTextures System.Collections.Generic.List
function UnityEngine.CustomRenderTextureManager.GetAllCustomRenderTextures(currentCustomRenderTextures) end

---@class UnityEngine.Display : System.Object
---@field displays UnityEngine.Display[]
---@field main UnityEngine.Display
---@field activeEditorGameViewTarget number
---@field renderingWidth number
---@field renderingHeight number
---@field systemWidth number
---@field systemHeight number
---@field colorBuffer UnityEngine.RenderBuffer
---@field depthBuffer UnityEngine.RenderBuffer
---@field active boolean
---@field requiresBlitToBackbuffer boolean
---@field requiresSrgbBlitToBackbuffer boolean
UnityEngine.Display = {}
---@alias CS.UnityEngine.Display UnityEngine.Display
CS.UnityEngine.Display = UnityEngine.Display

---@param inputMouseCoordinates UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Display.RelativeMouseAt(inputMouseCoordinates) end
---@overload fun()
---@param width number
---@param height number
---@param refreshRate UnityEngine.RefreshRate
function UnityEngine.Display:Activate(width, height, refreshRate) end
---@param width number
---@param height number
---@param x number
---@param y number
function UnityEngine.Display:SetParams(width, height, x, y) end
---@param w number
---@param h number
function UnityEngine.Display:SetRenderingResolution(w, h) end

---@class UnityEngine.Display.DisplaysUpdatedDelegate : System.MulticastDelegate
UnityEngine.Display.DisplaysUpdatedDelegate = {}
---@alias CS.UnityEngine.Display.DisplaysUpdatedDelegate UnityEngine.Display.DisplaysUpdatedDelegate
CS.UnityEngine.Display.DisplaysUpdatedDelegate = UnityEngine.Display.DisplaysUpdatedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Display.DisplaysUpdatedDelegate
function UnityEngine.Display.DisplaysUpdatedDelegate.New(object, method) end
function UnityEngine.Display.DisplaysUpdatedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Display.DisplaysUpdatedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Display.DisplaysUpdatedDelegate:EndInvoke(result) end

---@class UnityEngine.LightProbesQuery : System.ValueType
---@field IsCreated boolean
UnityEngine.LightProbesQuery = {}
---@alias CS.UnityEngine.LightProbesQuery UnityEngine.LightProbesQuery
CS.UnityEngine.LightProbesQuery = UnityEngine.LightProbesQuery

---@param allocator Unity.Collections.Allocator
---@return UnityEngine.LightProbesQuery
function UnityEngine.LightProbesQuery.New(allocator) end
---@overload fun()
---@param inputDeps Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.LightProbesQuery:Dispose(inputDeps) end
---@param position UnityEngine.Vector3
---@param ref_tetrahedronIndex number
---@param out_lightProbe UnityEngine.Rendering.SphericalHarmonicsL2
---@param out_occlusionProbe UnityEngine.Vector4
---@return ,number,UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Vector4
function UnityEngine.LightProbesQuery:CalculateInterpolatedLightAndOcclusionProbe(position, ref_tetrahedronIndex, out_lightProbe, out_occlusionProbe) end
---@param positions Unity.Collections.NativeArray
---@param tetrahedronIndices Unity.Collections.NativeArray
---@param lightProbes Unity.Collections.NativeArray
---@param occlusionProbes Unity.Collections.NativeArray
function UnityEngine.LightProbesQuery:CalculateInterpolatedLightAndOcclusionProbes(positions, tetrahedronIndices, lightProbes, occlusionProbes) end

---@class UnityEngine.LightProbesQuery.LightProbesQueryDispose : System.ValueType
UnityEngine.LightProbesQuery.LightProbesQueryDispose = {}
---@alias CS.UnityEngine.LightProbesQuery.LightProbesQueryDispose UnityEngine.LightProbesQuery.LightProbesQueryDispose
CS.UnityEngine.LightProbesQuery.LightProbesQueryDispose = UnityEngine.LightProbesQuery.LightProbesQueryDispose

function UnityEngine.LightProbesQuery.LightProbesQueryDispose:Dispose() end

---@class UnityEngine.LightProbesQuery.LightProbesQueryDisposeJob : System.ValueType
UnityEngine.LightProbesQuery.LightProbesQueryDisposeJob = {}
---@alias CS.UnityEngine.LightProbesQuery.LightProbesQueryDisposeJob UnityEngine.LightProbesQuery.LightProbesQueryDisposeJob
CS.UnityEngine.LightProbesQuery.LightProbesQueryDisposeJob = UnityEngine.LightProbesQuery.LightProbesQueryDisposeJob

function UnityEngine.LightProbesQuery.LightProbesQueryDisposeJob:Execute() end

---@class UnityEngine.EnabledOrientation
---@field kAutorotateToPortrait UnityEngine.EnabledOrientation
---@field kAutorotateToPortraitUpsideDown UnityEngine.EnabledOrientation
---@field kAutorotateToLandscapeLeft UnityEngine.EnabledOrientation
---@field kAutorotateToLandscapeRight UnityEngine.EnabledOrientation
UnityEngine.EnabledOrientation = {}
---@alias CS.UnityEngine.EnabledOrientation UnityEngine.EnabledOrientation
CS.UnityEngine.EnabledOrientation = UnityEngine.EnabledOrientation


---@class UnityEngine.FullScreenMode
---@field ExclusiveFullScreen UnityEngine.FullScreenMode
---@field FullScreenWindow UnityEngine.FullScreenMode
---@field MaximizedWindow UnityEngine.FullScreenMode
---@field Windowed UnityEngine.FullScreenMode
UnityEngine.FullScreenMode = {}
---@alias CS.UnityEngine.FullScreenMode UnityEngine.FullScreenMode
CS.UnityEngine.FullScreenMode = UnityEngine.FullScreenMode


---@class UnityEngine.RefreshRate : System.ValueType
---@field numerator number
---@field denominator number
---@field value number
UnityEngine.RefreshRate = {}
---@alias CS.UnityEngine.RefreshRate UnityEngine.RefreshRate
CS.UnityEngine.RefreshRate = UnityEngine.RefreshRate

---@param other UnityEngine.RefreshRate
---@return boolean
function UnityEngine.RefreshRate:Equals(other) end
---@param other UnityEngine.RefreshRate
---@return number
function UnityEngine.RefreshRate:CompareTo(other) end
---@return string
function UnityEngine.RefreshRate:ToString() end

---@class UnityEngine.DisplayInfo : System.ValueType
---@field width number
---@field height number
---@field refreshRate UnityEngine.RefreshRate
---@field workArea UnityEngine.RectInt
---@field name string
UnityEngine.DisplayInfo = {}
---@alias CS.UnityEngine.DisplayInfo UnityEngine.DisplayInfo
CS.UnityEngine.DisplayInfo = UnityEngine.DisplayInfo

---@param other UnityEngine.DisplayInfo
---@return boolean
function UnityEngine.DisplayInfo:Equals(other) end

---@class UnityEngine.SleepTimeout : System.Object
---@field NeverSleep number
---@field SystemSetting number
UnityEngine.SleepTimeout = {}
---@alias CS.UnityEngine.SleepTimeout UnityEngine.SleepTimeout
CS.UnityEngine.SleepTimeout = UnityEngine.SleepTimeout

---@return UnityEngine.SleepTimeout
function UnityEngine.SleepTimeout.New() end

---@class UnityEngine.EditorScreen : System.Object
---@field width number
---@field height number
---@field dpi number
---@field orientation UnityEngine.ScreenOrientation
---@field sleepTimeout number
---@field autorotateToPortrait boolean
---@field autorotateToPortraitUpsideDown boolean
---@field autorotateToLandscapeLeft boolean
---@field autorotateToLandscapeRight boolean
---@field currentResolution UnityEngine.Resolution
---@field fullScreen boolean
---@field fullScreenMode UnityEngine.FullScreenMode
---@field safeArea UnityEngine.Rect
---@field cutouts UnityEngine.Rect[]
---@field mainWindowPosition UnityEngine.Vector2Int
---@field mainWindowDisplayInfo UnityEngine.DisplayInfo
---@field resolutions UnityEngine.Resolution[]
---@field brightness number
UnityEngine.EditorScreen = {}
---@alias CS.UnityEngine.EditorScreen UnityEngine.EditorScreen
CS.UnityEngine.EditorScreen = UnityEngine.EditorScreen

---@return UnityEngine.EditorScreen
function UnityEngine.EditorScreen.New() end
---@overload fun(width: number, height: number, fullscreenMode: UnityEngine.FullScreenMode, preferredRefreshRate: UnityEngine.RefreshRate)
---@overload fun(width: number, height: number, fullscreenMode: UnityEngine.FullScreenMode)
---@param width number
---@param height number
---@param fullscreen boolean
function UnityEngine.EditorScreen.SetResolution(width, height, fullscreen) end
---@param displayLayout System.Collections.Generic.List
function UnityEngine.EditorScreen.GetDisplayLayout(displayLayout) end
---@param ref_display UnityEngine.DisplayInfo
---@param position UnityEngine.Vector2Int
---@return UnityEngine.AsyncOperation,UnityEngine.DisplayInfo
function UnityEngine.EditorScreen.MoveMainWindowTo(ref_display, position) end

---@class UnityEngine.Screen : System.Object
---@field width number
---@field height number
---@field dpi number
---@field currentResolution UnityEngine.Resolution
---@field resolutions UnityEngine.Resolution[]
---@field fullScreen boolean
---@field fullScreenMode UnityEngine.FullScreenMode
---@field safeArea UnityEngine.Rect
---@field cutouts UnityEngine.Rect[]
---@field autorotateToPortrait boolean
---@field autorotateToPortraitUpsideDown boolean
---@field autorotateToLandscapeLeft boolean
---@field autorotateToLandscapeRight boolean
---@field orientation UnityEngine.ScreenOrientation
---@field sleepTimeout number
---@field brightness number
---@field mainWindowPosition UnityEngine.Vector2Int
---@field mainWindowDisplayInfo UnityEngine.DisplayInfo
UnityEngine.Screen = {}
---@alias CS.UnityEngine.Screen UnityEngine.Screen
CS.UnityEngine.Screen = UnityEngine.Screen

---@return UnityEngine.Screen
function UnityEngine.Screen.New() end
---@overload fun(width: number, height: number, fullscreenMode: UnityEngine.FullScreenMode, preferredRefreshRate: UnityEngine.RefreshRate)
---@overload fun(width: number, height: number, fullscreenMode: UnityEngine.FullScreenMode)
---@param width number
---@param height number
---@param fullscreen boolean
function UnityEngine.Screen.SetResolution(width, height, fullscreen) end
---@param displayLayout System.Collections.Generic.List
function UnityEngine.Screen.GetDisplayLayout(displayLayout) end
---@param ref_display UnityEngine.DisplayInfo
---@param position UnityEngine.Vector2Int
---@return UnityEngine.AsyncOperation,UnityEngine.DisplayInfo
function UnityEngine.Screen.MoveMainWindowTo(ref_display, position) end

---@class UnityEngine.RenderBuffer : System.ValueType
UnityEngine.RenderBuffer = {}
---@alias CS.UnityEngine.RenderBuffer UnityEngine.RenderBuffer
CS.UnityEngine.RenderBuffer = UnityEngine.RenderBuffer

---@return System.IntPtr
function UnityEngine.RenderBuffer:GetNativeRenderBufferPtr() end

---@class UnityEngine.ComputeBufferMode
---@field Immutable UnityEngine.ComputeBufferMode
---@field Dynamic UnityEngine.ComputeBufferMode
---@field SubUpdates UnityEngine.ComputeBufferMode
UnityEngine.ComputeBufferMode = {}
---@alias CS.UnityEngine.ComputeBufferMode UnityEngine.ComputeBufferMode
CS.UnityEngine.ComputeBufferMode = UnityEngine.ComputeBufferMode


---@class UnityEngine.Graphics : System.Object
---@field activeColorGamut UnityEngine.ColorGamut
---@field activeTier UnityEngine.Rendering.GraphicsTier
---@field preserveFramebufferAlpha boolean
---@field minOpenGLESVersion UnityEngine.Rendering.OpenGLESVersion
---@field activeColorBuffer UnityEngine.RenderBuffer
---@field activeDepthBuffer UnityEngine.RenderBuffer
UnityEngine.Graphics = {}
---@alias CS.UnityEngine.Graphics UnityEngine.Graphics
CS.UnityEngine.Graphics = UnityEngine.Graphics

---@return UnityEngine.Graphics
function UnityEngine.Graphics.New() end
function UnityEngine.Graphics.ClearRandomWriteTargets() end
---@param buffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Graphics.ExecuteCommandBuffer(buffer) end
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function UnityEngine.Graphics.ExecuteCommandBufferAsync(buffer, queueType) end
---@overload fun(rt: UnityEngine.RenderTexture, mipLevel: number, face: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(colorBuffer: UnityEngine.RenderBuffer, depthBuffer: UnityEngine.RenderBuffer, mipLevel: number, face: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(colorBuffers: UnityEngine.RenderBuffer[], depthBuffer: UnityEngine.RenderBuffer)
---@overload fun(setup: UnityEngine.RenderTargetSetup)
---@overload fun(rt: UnityEngine.RenderTexture)
---@overload fun(rt: UnityEngine.RenderTexture, mipLevel: number)
---@overload fun(rt: UnityEngine.RenderTexture, mipLevel: number, face: UnityEngine.CubemapFace)
---@overload fun(colorBuffer: UnityEngine.RenderBuffer, depthBuffer: UnityEngine.RenderBuffer)
---@overload fun(colorBuffer: UnityEngine.RenderBuffer, depthBuffer: UnityEngine.RenderBuffer, mipLevel: number)
---@param colorBuffer UnityEngine.RenderBuffer
---@param depthBuffer UnityEngine.RenderBuffer
---@param mipLevel number
---@param face UnityEngine.CubemapFace
function UnityEngine.Graphics.SetRenderTarget(colorBuffer, depthBuffer, mipLevel, face) end
---@overload fun(index: number, uav: UnityEngine.RenderTexture)
---@overload fun(index: number, uav: UnityEngine.ComputeBuffer, preserveCounterValue: boolean)
---@overload fun(index: number, uav: UnityEngine.GraphicsBuffer, preserveCounterValue: boolean)
---@overload fun(index: number, uav: UnityEngine.ComputeBuffer)
---@param index number
---@param uav UnityEngine.GraphicsBuffer
function UnityEngine.Graphics.SetRandomWriteTarget(index, uav) end
---@overload fun(src: UnityEngine.Texture, dst: UnityEngine.Texture)
---@overload fun(src: UnityEngine.Texture, srcElement: number, dst: UnityEngine.Texture, dstElement: number)
---@overload fun(src: UnityEngine.Texture, srcElement: number, srcMip: number, dst: UnityEngine.Texture, dstElement: number, dstMip: number)
---@param src UnityEngine.Texture
---@param srcElement number
---@param srcMip number
---@param srcX number
---@param srcY number
---@param srcWidth number
---@param srcHeight number
---@param dst UnityEngine.Texture
---@param dstElement number
---@param dstMip number
---@param dstX number
---@param dstY number
function UnityEngine.Graphics.CopyTexture(src, srcElement, srcMip, srcX, srcY, srcWidth, srcHeight, dst, dstElement, dstMip, dstX, dstY) end
---@overload fun(src: UnityEngine.Texture, dst: UnityEngine.Texture) : boolean
---@param src UnityEngine.Texture
---@param srcElement number
---@param dst UnityEngine.Texture
---@param dstElement number
---@return boolean
function UnityEngine.Graphics.ConvertTexture(src, srcElement, dst, dstElement) end
---@overload fun(stage: UnityEngine.Rendering.SynchronisationStage) : UnityEngine.Rendering.GraphicsFence
---@return UnityEngine.Rendering.GraphicsFence
function UnityEngine.Graphics.CreateAsyncGraphicsFence() end
---@param fenceType UnityEngine.Rendering.GraphicsFenceType
---@param stage UnityEngine.Rendering.SynchronisationStageFlags
---@return UnityEngine.Rendering.GraphicsFence
function UnityEngine.Graphics.CreateGraphicsFence(fenceType, stage) end
---@overload fun(fence: UnityEngine.Rendering.GraphicsFence)
---@param fence UnityEngine.Rendering.GraphicsFence
---@param stage UnityEngine.Rendering.SynchronisationStage
function UnityEngine.Graphics.WaitOnAsyncGraphicsFence(fence, stage) end
---@param source UnityEngine.GraphicsBuffer
---@param dest UnityEngine.GraphicsBuffer
function UnityEngine.Graphics.CopyBuffer(source, dest) end
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, sourceRect: UnityEngine.Rect, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, color: UnityEngine.Color, mat: UnityEngine.Material, pass: number)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, sourceRect: UnityEngine.Rect, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, mat: UnityEngine.Material, pass: number)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, mat: UnityEngine.Material, pass: number)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, mat: UnityEngine.Material, pass: number)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, sourceRect: UnityEngine.Rect, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, color: UnityEngine.Color, mat: UnityEngine.Material)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, sourceRect: UnityEngine.Rect, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, color: UnityEngine.Color)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, sourceRect: UnityEngine.Rect, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, mat: UnityEngine.Material)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, sourceRect: UnityEngine.Rect, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number, mat: UnityEngine.Material)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, leftBorder: number, rightBorder: number, topBorder: number, bottomBorder: number)
---@overload fun(screenRect: UnityEngine.Rect, texture: UnityEngine.Texture, mat: UnityEngine.Material)
---@param screenRect UnityEngine.Rect
---@param texture UnityEngine.Texture
function UnityEngine.Graphics.DrawTexture(screenRect, texture) end
---@param ref_rparams UnityEngine.RenderParams
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param objectToWorld UnityEngine.Matrix4x4
---@param prevObjectToWorld System.Nullable
---@return ,UnityEngine.RenderParams
function UnityEngine.Graphics.RenderMesh(ref_rparams, mesh, submeshIndex, objectToWorld, prevObjectToWorld) end
---@param ref_rparams UnityEngine.RenderParams
---@param mesh UnityEngine.Mesh
---@param commandBuffer UnityEngine.GraphicsBuffer
---@param commandCount number
---@param startCommand number
---@return ,UnityEngine.RenderParams
function UnityEngine.Graphics.RenderMeshIndirect(ref_rparams, mesh, commandBuffer, commandCount, startCommand) end
---@param ref_rparams UnityEngine.RenderParams
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param instanceCount number
---@return ,UnityEngine.RenderParams
function UnityEngine.Graphics.RenderMeshPrimitives(ref_rparams, mesh, submeshIndex, instanceCount) end
---@param ref_rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param vertexCount number
---@param instanceCount number
---@return ,UnityEngine.RenderParams
function UnityEngine.Graphics.RenderPrimitives(ref_rparams, topology, vertexCount, instanceCount) end
---@param ref_rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param indexCount number
---@param startIndex number
---@param instanceCount number
---@return ,UnityEngine.RenderParams
function UnityEngine.Graphics.RenderPrimitivesIndexed(ref_rparams, topology, indexBuffer, indexCount, startIndex, instanceCount) end
---@param ref_rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param commandBuffer UnityEngine.GraphicsBuffer
---@param commandCount number
---@param startCommand number
---@return ,UnityEngine.RenderParams
function UnityEngine.Graphics.RenderPrimitivesIndirect(ref_rparams, topology, commandBuffer, commandCount, startCommand) end
---@param ref_rparams UnityEngine.RenderParams
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param commandBuffer UnityEngine.GraphicsBuffer
---@param commandCount number
---@param startCommand number
---@return ,UnityEngine.RenderParams
function UnityEngine.Graphics.RenderPrimitivesIndexedIndirect(ref_rparams, topology, indexBuffer, commandBuffer, commandCount, startCommand) end
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, materialIndex: number)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, materialIndex: number)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion)
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
function UnityEngine.Graphics.DrawMeshNow(mesh, matrix) end
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: boolean, receiveShadows: boolean, useLightProbes: boolean)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, probeAnchor: UnityEngine.Transform, useLightProbes: boolean)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: boolean, receiveShadows: boolean, useLightProbes: boolean)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, probeAnchor: UnityEngine.Transform, lightProbeUsage: UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume: UnityEngine.LightProbeProxyVolume)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: boolean, receiveShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, probeAnchor: UnityEngine.Transform)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: boolean, receiveShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, probeAnchor: UnityEngine.Transform)
---@overload fun(mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, layer: number, camera: UnityEngine.Camera, submeshIndex: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, probeAnchor: UnityEngine.Transform, useLightProbes: boolean)
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param layer number
---@param camera UnityEngine.Camera
---@param submeshIndex number
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param probeAnchor UnityEngine.Transform
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
function UnityEngine.Graphics.DrawMesh(mesh, matrix, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, probeAnchor, lightProbeUsage) end
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera, lightProbeUsage: UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume: UnityEngine.LightProbeProxyVolume)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: System.Collections.Generic.List, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera, lightProbeUsage: UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume: UnityEngine.LightProbeProxyVolume)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[])
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera, lightProbeUsage: UnityEngine.Rendering.LightProbeUsage)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: System.Collections.Generic.List)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: System.Collections.Generic.List, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: System.Collections.Generic.List, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: System.Collections.Generic.List, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: System.Collections.Generic.List, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, matrices: System.Collections.Generic.List, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera)
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param matrices System.Collections.Generic.List
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param layer number
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
function UnityEngine.Graphics.DrawMeshInstanced(mesh, submeshIndex, material, matrices, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage) end
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param count number
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param layer number
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume UnityEngine.LightProbeProxyVolume
function UnityEngine.Graphics.DrawMeshInstancedProcedural(mesh, submeshIndex, material, bounds, count, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume) end
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, bounds: UnityEngine.Bounds, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera, lightProbeUsage: UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume: UnityEngine.LightProbeProxyVolume)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, bounds: UnityEngine.Bounds, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera, lightProbeUsage: UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume: UnityEngine.LightProbeProxyVolume)
---@overload fun(mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, bounds: UnityEngine.Bounds, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number, camera: UnityEngine.Camera, lightProbeUsage: UnityEngine.Rendering.LightProbeUsage)
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param bufferWithArgs UnityEngine.GraphicsBuffer
---@param argsOffset number
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param layer number
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
function UnityEngine.Graphics.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs, argsOffset, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage) end
---@overload fun(topology: UnityEngine.MeshTopology, vertexCount: number, instanceCount: number)
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param indexCount number
---@param instanceCount number
function UnityEngine.Graphics.DrawProceduralNow(topology, indexBuffer, indexCount, instanceCount) end
---@overload fun(topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number)
---@overload fun(topology: UnityEngine.MeshTopology, indexBuffer: UnityEngine.GraphicsBuffer, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number)
---@overload fun(topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number)
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param bufferWithArgs UnityEngine.GraphicsBuffer
---@param argsOffset number
function UnityEngine.Graphics.DrawProceduralIndirectNow(topology, indexBuffer, bufferWithArgs, argsOffset) end
---@overload fun(material: UnityEngine.Material, bounds: UnityEngine.Bounds, topology: UnityEngine.MeshTopology, vertexCount: number, instanceCount: number, camera: UnityEngine.Camera, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number)
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param indexCount number
---@param instanceCount number
---@param camera UnityEngine.Camera
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param layer number
function UnityEngine.Graphics.DrawProcedural(material, bounds, topology, indexBuffer, indexCount, instanceCount, camera, properties, castShadows, receiveShadows, layer) end
---@overload fun(material: UnityEngine.Material, bounds: UnityEngine.Bounds, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number, camera: UnityEngine.Camera, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number)
---@overload fun(material: UnityEngine.Material, bounds: UnityEngine.Bounds, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number, camera: UnityEngine.Camera, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number)
---@overload fun(material: UnityEngine.Material, bounds: UnityEngine.Bounds, topology: UnityEngine.MeshTopology, indexBuffer: UnityEngine.GraphicsBuffer, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number, camera: UnityEngine.Camera, properties: UnityEngine.MaterialPropertyBlock, castShadows: UnityEngine.Rendering.ShadowCastingMode, receiveShadows: boolean, layer: number)
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param topology UnityEngine.MeshTopology
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param bufferWithArgs UnityEngine.GraphicsBuffer
---@param argsOffset number
---@param camera UnityEngine.Camera
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param layer number
function UnityEngine.Graphics.DrawProceduralIndirect(material, bounds, topology, indexBuffer, bufferWithArgs, argsOffset, camera, properties, castShadows, receiveShadows, layer) end
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture)
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture, sourceDepthSlice: number, destDepthSlice: number)
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture, scale: UnityEngine.Vector2, offset: UnityEngine.Vector2)
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture, scale: UnityEngine.Vector2, offset: UnityEngine.Vector2, sourceDepthSlice: number, destDepthSlice: number)
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture, mat: UnityEngine.Material, pass: number)
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture, mat: UnityEngine.Material, pass: number, destDepthSlice: number)
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture, mat: UnityEngine.Material)
---@overload fun(source: UnityEngine.Texture, mat: UnityEngine.Material, pass: number)
---@overload fun(source: UnityEngine.Texture, mat: UnityEngine.Material, pass: number, destDepthSlice: number)
---@param source UnityEngine.Texture
---@param mat UnityEngine.Material
function UnityEngine.Graphics.Blit(source, mat) end
---@overload fun(source: UnityEngine.Texture, dest: UnityEngine.RenderTexture, mat: UnityEngine.Material, offsets: UnityEngine.Vector2[])
---@param source UnityEngine.Texture
---@param dest UnityEngine.RenderTexture
---@param mat UnityEngine.Material
---@param destDepthSlice number
---@param offsets UnityEngine.Vector2[]
function UnityEngine.Graphics.BlitMultiTap(source, dest, mat, destDepthSlice, offsets) end

---@class UnityEngine.GL : System.Object
---@field TRIANGLES number
---@field TRIANGLE_STRIP number
---@field QUADS number
---@field LINES number
---@field LINE_STRIP number
---@field wireframe boolean
---@field sRGBWrite boolean
---@field invertCulling boolean
---@field modelview UnityEngine.Matrix4x4
UnityEngine.GL = {}
---@alias CS.UnityEngine.GL UnityEngine.GL
CS.UnityEngine.GL = UnityEngine.GL

---@return UnityEngine.GL
function UnityEngine.GL.New() end
---@param x number
---@param y number
---@param z number
function UnityEngine.GL.Vertex3(x, y, z) end
---@param v UnityEngine.Vector3
function UnityEngine.GL.Vertex(v) end
---@param x number
---@param y number
---@param z number
function UnityEngine.GL.TexCoord3(x, y, z) end
---@param v UnityEngine.Vector3
function UnityEngine.GL.TexCoord(v) end
---@param x number
---@param y number
function UnityEngine.GL.TexCoord2(x, y) end
---@param unit number
---@param x number
---@param y number
---@param z number
function UnityEngine.GL.MultiTexCoord3(unit, x, y, z) end
---@param unit number
---@param v UnityEngine.Vector3
function UnityEngine.GL.MultiTexCoord(unit, v) end
---@param unit number
---@param x number
---@param y number
function UnityEngine.GL.MultiTexCoord2(unit, x, y) end
---@param c UnityEngine.Color
function UnityEngine.GL.Color(c) end
function UnityEngine.GL.Flush() end
function UnityEngine.GL.RenderTargetBarrier() end
---@param m UnityEngine.Matrix4x4
function UnityEngine.GL.MultMatrix(m) end
function UnityEngine.GL.PushMatrix() end
function UnityEngine.GL.PopMatrix() end
function UnityEngine.GL.LoadIdentity() end
function UnityEngine.GL.LoadOrtho() end
---@overload fun()
---@param left number
---@param right number
---@param bottom number
---@param top number
function UnityEngine.GL.LoadPixelMatrix(left, right, bottom, top) end
---@param mat UnityEngine.Matrix4x4
function UnityEngine.GL.LoadProjectionMatrix(mat) end
function UnityEngine.GL.InvalidateState() end
---@param proj UnityEngine.Matrix4x4
---@param renderIntoTexture boolean
---@return UnityEngine.Matrix4x4
function UnityEngine.GL.GetGPUProjectionMatrix(proj, renderIntoTexture) end
---@param callback System.IntPtr
---@param eventID number
function UnityEngine.GL.IssuePluginEvent(callback, eventID) end
---@param mode number
function UnityEngine.GL.Begin(mode) end
function UnityEngine.GL.End() end
---@overload fun(clearDepth: boolean, clearColor: boolean, backgroundColor: UnityEngine.Color, depth: number)
---@param clearDepth boolean
---@param clearColor boolean
---@param backgroundColor UnityEngine.Color
function UnityEngine.GL.Clear(clearDepth, clearColor, backgroundColor) end
---@param pixelRect UnityEngine.Rect
function UnityEngine.GL.Viewport(pixelRect) end
---@param clearDepth boolean
---@param camera UnityEngine.Camera
function UnityEngine.GL.ClearWithSkybox(clearDepth, camera) end

---@class UnityEngine.ScalableBufferManager : System.Object
---@field widthScaleFactor number
---@field heightScaleFactor number
UnityEngine.ScalableBufferManager = {}
---@alias CS.UnityEngine.ScalableBufferManager UnityEngine.ScalableBufferManager
CS.UnityEngine.ScalableBufferManager = UnityEngine.ScalableBufferManager

---@param widthScale number
---@param heightScale number
function UnityEngine.ScalableBufferManager.ResizeBuffers(widthScale, heightScale) end

---@class UnityEngine.FrameTiming : System.ValueType
---@field cpuFrameTime number
---@field cpuMainThreadFrameTime number
---@field cpuMainThreadPresentWaitTime number
---@field cpuRenderThreadFrameTime number
---@field gpuFrameTime number
---@field frameStartTimestamp number
---@field firstSubmitTimestamp number
---@field cpuTimePresentCalled number
---@field cpuTimeFrameComplete number
---@field heightScale number
---@field widthScale number
---@field syncInterval number
UnityEngine.FrameTiming = {}
---@alias CS.UnityEngine.FrameTiming UnityEngine.FrameTiming
CS.UnityEngine.FrameTiming = UnityEngine.FrameTiming


---@class UnityEngine.FrameTimingManager : System.Object
UnityEngine.FrameTimingManager = {}
---@alias CS.UnityEngine.FrameTimingManager UnityEngine.FrameTimingManager
CS.UnityEngine.FrameTimingManager = UnityEngine.FrameTimingManager

---@return boolean
function UnityEngine.FrameTimingManager.IsFeatureEnabled() end
function UnityEngine.FrameTimingManager.CaptureFrameTimings() end
---@param numFrames number
---@param timings UnityEngine.FrameTiming[]
---@return number
function UnityEngine.FrameTimingManager.GetLatestTimings(numFrames, timings) end
---@return number
function UnityEngine.FrameTimingManager.GetVSyncsPerSecond() end
---@return number
function UnityEngine.FrameTimingManager.GetGpuTimerFrequency() end
---@return number
function UnityEngine.FrameTimingManager.GetCpuTimerFrequency() end

---@class UnityEngine.LightmapData : System.Object
---@field lightmapColor UnityEngine.Texture2D
---@field lightmapDir UnityEngine.Texture2D
---@field shadowMask UnityEngine.Texture2D
UnityEngine.LightmapData = {}
---@alias CS.UnityEngine.LightmapData UnityEngine.LightmapData
CS.UnityEngine.LightmapData = UnityEngine.LightmapData

---@return UnityEngine.LightmapData
function UnityEngine.LightmapData.New() end

---@class UnityEngine.LightmapSettings : UnityEngine.Object
---@field lightmaps UnityEngine.LightmapData[]
---@field lightmapsMode UnityEngine.LightmapsMode
---@field lightProbes UnityEngine.LightProbes
UnityEngine.LightmapSettings = {}
---@alias CS.UnityEngine.LightmapSettings UnityEngine.LightmapSettings
CS.UnityEngine.LightmapSettings = UnityEngine.LightmapSettings


---@class UnityEngine.LightProbes : UnityEngine.Object
---@field positions UnityEngine.Vector3[]
---@field bakedProbes UnityEngine.Rendering.SphericalHarmonicsL2[]
---@field count number
---@field cellCount number
UnityEngine.LightProbes = {}
---@alias CS.UnityEngine.LightProbes UnityEngine.LightProbes
CS.UnityEngine.LightProbes = UnityEngine.LightProbes

function UnityEngine.LightProbes.Tetrahedralize() end
function UnityEngine.LightProbes.TetrahedralizeAsync() end
---@param position UnityEngine.Vector3
---@param renderer UnityEngine.Renderer
---@param out_probe UnityEngine.Rendering.SphericalHarmonicsL2
---@return ,UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.LightProbes.GetInterpolatedProbe(position, renderer, out_probe) end
---@overload fun(positions: UnityEngine.Vector3[], lightProbes: UnityEngine.Rendering.SphericalHarmonicsL2[], occlusionProbes: UnityEngine.Vector4[])
---@param positions System.Collections.Generic.List
---@param lightProbes System.Collections.Generic.List
---@param occlusionProbes System.Collections.Generic.List
function UnityEngine.LightProbes.CalculateInterpolatedLightAndOcclusionProbes(positions, lightProbes, occlusionProbes) end

---@class UnityEngine.D3DHDRDisplayBitDepth
UnityEngine.D3DHDRDisplayBitDepth = {}
---@alias CS.UnityEngine.D3DHDRDisplayBitDepth UnityEngine.D3DHDRDisplayBitDepth
CS.UnityEngine.D3DHDRDisplayBitDepth = UnityEngine.D3DHDRDisplayBitDepth


---@class UnityEngine.HDROutputSettings : System.Object
---@field displays UnityEngine.HDROutputSettings[]
---@field main UnityEngine.HDROutputSettings
---@field active boolean
---@field available boolean
---@field automaticHDRTonemapping boolean
---@field displayColorGamut UnityEngine.ColorGamut
---@field format UnityEngine.RenderTextureFormat
---@field graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field paperWhiteNits number
---@field maxFullFrameToneMapLuminance number
---@field maxToneMapLuminance number
---@field minToneMapLuminance number
---@field HDRModeChangeRequested boolean
UnityEngine.HDROutputSettings = {}
---@alias CS.UnityEngine.HDROutputSettings UnityEngine.HDROutputSettings
CS.UnityEngine.HDROutputSettings = UnityEngine.HDROutputSettings

---@param enabled boolean
function UnityEngine.HDROutputSettings:RequestHDRModeChange(enabled) end

---@class UnityEngine.ColorGamutUtility : System.Object
UnityEngine.ColorGamutUtility = {}
---@alias CS.UnityEngine.ColorGamutUtility UnityEngine.ColorGamutUtility
CS.UnityEngine.ColorGamutUtility = UnityEngine.ColorGamutUtility

---@return UnityEngine.ColorGamutUtility
function UnityEngine.ColorGamutUtility.New() end
---@param gamut UnityEngine.ColorGamut
---@return UnityEngine.ColorPrimaries
function UnityEngine.ColorGamutUtility.GetColorPrimaries(gamut) end
---@param gamut UnityEngine.ColorGamut
---@return UnityEngine.WhitePoint
function UnityEngine.ColorGamutUtility.GetWhitePoint(gamut) end
---@param gamut UnityEngine.ColorGamut
---@return UnityEngine.TransferFunction
function UnityEngine.ColorGamutUtility.GetTransferFunction(gamut) end

---@class UnityEngine.Resolution : System.ValueType
---@field width number
---@field height number
---@field refreshRateRatio UnityEngine.RefreshRate
UnityEngine.Resolution = {}
---@alias CS.UnityEngine.Resolution UnityEngine.Resolution
CS.UnityEngine.Resolution = UnityEngine.Resolution

---@return string
function UnityEngine.Resolution:ToString() end

---@class UnityEngine.RenderTargetSetup : System.ValueType
---@field color UnityEngine.RenderBuffer[]
---@field depth UnityEngine.RenderBuffer
---@field mipLevel number
---@field cubemapFace UnityEngine.CubemapFace
---@field depthSlice number
---@field colorLoad UnityEngine.Rendering.RenderBufferLoadAction[]
---@field colorStore UnityEngine.Rendering.RenderBufferStoreAction[]
---@field depthLoad UnityEngine.Rendering.RenderBufferLoadAction
---@field depthStore UnityEngine.Rendering.RenderBufferStoreAction
UnityEngine.RenderTargetSetup = {}
---@alias CS.UnityEngine.RenderTargetSetup UnityEngine.RenderTargetSetup
CS.UnityEngine.RenderTargetSetup = UnityEngine.RenderTargetSetup

---@overload fun(color: UnityEngine.RenderBuffer[], depth: UnityEngine.RenderBuffer, mip: number, face: UnityEngine.CubemapFace, colorLoad: UnityEngine.Rendering.RenderBufferLoadAction[], colorStore: UnityEngine.Rendering.RenderBufferStoreAction[], depthLoad: UnityEngine.Rendering.RenderBufferLoadAction, depthStore: UnityEngine.Rendering.RenderBufferStoreAction) : UnityEngine.RenderTargetSetup
---@overload fun(color: UnityEngine.RenderBuffer, depth: UnityEngine.RenderBuffer) : UnityEngine.RenderTargetSetup
---@overload fun(color: UnityEngine.RenderBuffer, depth: UnityEngine.RenderBuffer, mipLevel: number) : UnityEngine.RenderTargetSetup
---@overload fun(color: UnityEngine.RenderBuffer, depth: UnityEngine.RenderBuffer, mipLevel: number, face: UnityEngine.CubemapFace) : UnityEngine.RenderTargetSetup
---@overload fun(color: UnityEngine.RenderBuffer, depth: UnityEngine.RenderBuffer, mipLevel: number, face: UnityEngine.CubemapFace, depthSlice: number) : UnityEngine.RenderTargetSetup
---@overload fun(color: UnityEngine.RenderBuffer[], depth: UnityEngine.RenderBuffer) : UnityEngine.RenderTargetSetup
---@overload fun(color: UnityEngine.RenderBuffer[], depth: UnityEngine.RenderBuffer, mipLevel: number) : UnityEngine.RenderTargetSetup
---@param color UnityEngine.RenderBuffer[]
---@param depth UnityEngine.RenderBuffer
---@param mip number
---@param face UnityEngine.CubemapFace
---@return UnityEngine.RenderTargetSetup
function UnityEngine.RenderTargetSetup.New(color, depth, mip, face) end

---@class UnityEngine.RenderParams : System.ValueType
---@field layer number
---@field renderingLayerMask number
---@field rendererPriority number
---@field worldBounds UnityEngine.Bounds
---@field camera UnityEngine.Camera
---@field motionVectorMode UnityEngine.MotionVectorGenerationMode
---@field reflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage
---@field material UnityEngine.Material
---@field matProps UnityEngine.MaterialPropertyBlock
---@field shadowCastingMode UnityEngine.Rendering.ShadowCastingMode
---@field receiveShadows boolean
---@field lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@field lightProbeProxyVolume UnityEngine.LightProbeProxyVolume
UnityEngine.RenderParams = {}
---@alias CS.UnityEngine.RenderParams UnityEngine.RenderParams
CS.UnityEngine.RenderParams = UnityEngine.RenderParams

---@param mat UnityEngine.Material
---@return UnityEngine.RenderParams
function UnityEngine.RenderParams.New(mat) end

---@class UnityEngine.RenderInstancedDataLayout : System.ValueType
---@field size number
---@field offsetObjectToWorld number
---@field offsetPrevObjectToWorld number
---@field offsetRenderingLayerMask number
UnityEngine.RenderInstancedDataLayout = {}
---@alias CS.UnityEngine.RenderInstancedDataLayout UnityEngine.RenderInstancedDataLayout
CS.UnityEngine.RenderInstancedDataLayout = UnityEngine.RenderInstancedDataLayout

---@param t System.Type
---@return UnityEngine.RenderInstancedDataLayout
function UnityEngine.RenderInstancedDataLayout.New(t) end

---@class UnityEngine.Internal_DrawTextureArguments : System.ValueType
---@field screenRect UnityEngine.Rect
---@field sourceRect UnityEngine.Rect
---@field leftBorder number
---@field rightBorder number
---@field topBorder number
---@field bottomBorder number
---@field leftBorderColor UnityEngine.Color
---@field rightBorderColor UnityEngine.Color
---@field topBorderColor UnityEngine.Color
---@field bottomBorderColor UnityEngine.Color
---@field color UnityEngine.Color
---@field borderWidths UnityEngine.Vector4
---@field cornerRadiuses UnityEngine.Vector4
---@field smoothCorners boolean
---@field pass number
---@field texture UnityEngine.Texture
---@field mat UnityEngine.Material
UnityEngine.Internal_DrawTextureArguments = {}
---@alias CS.UnityEngine.Internal_DrawTextureArguments UnityEngine.Internal_DrawTextureArguments
CS.UnityEngine.Internal_DrawTextureArguments = UnityEngine.Internal_DrawTextureArguments


---@class UnityEngine.QualitySettings : UnityEngine.Object
---@field pixelLightCount number
---@field shadows UnityEngine.ShadowQuality
---@field shadowProjection UnityEngine.ShadowProjection
---@field shadowCascades number
---@field shadowDistance number
---@field shadowResolution UnityEngine.ShadowResolution
---@field shadowmaskMode UnityEngine.ShadowmaskMode
---@field shadowNearPlaneOffset number
---@field shadowCascade2Split number
---@field shadowCascade4Split UnityEngine.Vector3
---@field lodBias number
---@field anisotropicFiltering UnityEngine.AnisotropicFiltering
---@field globalTextureMipmapLimit number
---@field maximumLODLevel number
---@field enableLODCrossFade boolean
---@field particleRaycastBudget number
---@field softParticles boolean
---@field softVegetation boolean
---@field vSyncCount number
---@field realtimeGICPUUsage number
---@field antiAliasing number
---@field asyncUploadTimeSlice number
---@field asyncUploadBufferSize number
---@field asyncUploadPersistentBuffer boolean
---@field realtimeReflectionProbes boolean
---@field billboardsFaceCameraPosition boolean
---@field useLegacyDetailDistribution boolean
---@field resolutionScalingFixedDPIFactor number
---@field terrainQualityOverrides UnityEngine.TerrainQualityOverrides
---@field terrainPixelError number
---@field terrainDetailDensityScale number
---@field terrainBasemapDistance number
---@field terrainDetailDistance number
---@field terrainTreeDistance number
---@field terrainBillboardStart number
---@field terrainFadeLength number
---@field terrainMaxTrees number
---@field renderPipeline UnityEngine.Rendering.RenderPipelineAsset
---@field skinWeights UnityEngine.SkinWeights
---@field count number
---@field streamingMipmapsActive boolean
---@field streamingMipmapsMemoryBudget number
---@field streamingMipmapsRenderersPerFrame number
---@field streamingMipmapsMaxLevelReduction number
---@field streamingMipmapsAddAllCameras boolean
---@field streamingMipmapsMaxFileIORequests number
---@field maxQueuedFrames number
---@field names System.String[]
---@field desiredColorSpace UnityEngine.ColorSpace
---@field activeColorSpace UnityEngine.ColorSpace
UnityEngine.QualitySettings = {}
---@alias CS.UnityEngine.QualitySettings UnityEngine.QualitySettings
CS.UnityEngine.QualitySettings = UnityEngine.QualitySettings

---@overload fun(applyExpensiveChanges: boolean)
function UnityEngine.QualitySettings.IncreaseLevel() end
---@overload fun(applyExpensiveChanges: boolean)
function UnityEngine.QualitySettings.DecreaseLevel() end
---@overload fun(index: number)
---@param index number
---@param applyExpensiveChanges boolean
function UnityEngine.QualitySettings.SetQualityLevel(index, applyExpensiveChanges) end
---@overload fun(callback: System.Action)
---@param callback System.Action
function UnityEngine.QualitySettings.ForEach(callback) end
---@param lodBias number
---@param maximumLODLevel number
---@param setDirty boolean
function UnityEngine.QualitySettings.SetLODSettings(lodBias, maximumLODLevel, setDirty) end
---@param groupName string
---@param textureMipmapLimitSettings UnityEngine.TextureMipmapLimitSettings
function UnityEngine.QualitySettings.SetTextureMipmapLimitSettings(groupName, textureMipmapLimitSettings) end
---@param groupName string
---@return UnityEngine.TextureMipmapLimitSettings
function UnityEngine.QualitySettings.GetTextureMipmapLimitSettings(groupName) end
---@param index number
---@return UnityEngine.Rendering.RenderPipelineAsset
function UnityEngine.QualitySettings.GetRenderPipelineAssetAt(index) end
---@return number
function UnityEngine.QualitySettings.GetQualityLevel() end
---@return UnityEngine.Object
function UnityEngine.QualitySettings.GetQualitySettings() end
---@param buildTargetGroupName string
---@param index number
---@return boolean
function UnityEngine.QualitySettings.IsPlatformIncluded(buildTargetGroupName, index) end
---@param buildTargetGroupName string
---@param index number
---@param out_error System.Exception
---@return boolean,System.Exception
function UnityEngine.QualitySettings.TryIncludePlatformAt(buildTargetGroupName, index, out_error) end
---@param buildTargetGroupName string
---@param index number
---@param out_error System.Exception
---@return boolean,System.Exception
function UnityEngine.QualitySettings.TryExcludePlatformAt(buildTargetGroupName, index, out_error) end
---@param buildTargetGroupName string
---@return System.Int32[]
function UnityEngine.QualitySettings.GetActiveQualityLevelsForPlatform(buildTargetGroupName) end
---@param buildTargetGroupName string
---@return number
function UnityEngine.QualitySettings.GetActiveQualityLevelsForPlatformCount(buildTargetGroupName) end
---@param buildTargetGroupName string
---@param ref_renderPipelineAssets System.Collections.Generic.List
---@return ,System.Collections.Generic.List
function UnityEngine.QualitySettings.GetAllRenderPipelineAssetsForPlatform(buildTargetGroupName, ref_renderPipelineAssets) end
