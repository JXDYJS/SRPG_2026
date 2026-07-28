---@meta

---@class UnityEngine.Windows.Speech.DictationRecognizer : System.Object
---@field Status UnityEngine.Windows.Speech.SpeechSystemStatus
---@field AutoSilenceTimeoutSeconds number
---@field InitialSilenceTimeoutSeconds number
UnityEngine.Windows.Speech.DictationRecognizer = {}
---@alias CS.UnityEngine.Windows.Speech.DictationRecognizer UnityEngine.Windows.Speech.DictationRecognizer
CS.UnityEngine.Windows.Speech.DictationRecognizer = UnityEngine.Windows.Speech.DictationRecognizer

---@overload fun() : UnityEngine.Windows.Speech.DictationRecognizer
---@overload fun(confidenceLevel: UnityEngine.Windows.Speech.ConfidenceLevel) : UnityEngine.Windows.Speech.DictationRecognizer
---@overload fun(topic: UnityEngine.Windows.Speech.DictationTopicConstraint) : UnityEngine.Windows.Speech.DictationRecognizer
---@param minimumConfidence UnityEngine.Windows.Speech.ConfidenceLevel
---@param topic UnityEngine.Windows.Speech.DictationTopicConstraint
---@return UnityEngine.Windows.Speech.DictationRecognizer
function UnityEngine.Windows.Speech.DictationRecognizer.New(minimumConfidence, topic) end
function UnityEngine.Windows.Speech.DictationRecognizer:Start() end
function UnityEngine.Windows.Speech.DictationRecognizer:Stop() end
function UnityEngine.Windows.Speech.DictationRecognizer:Dispose() end

---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate : System.MulticastDelegate
UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate = {}
---@alias CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate
CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate = UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate
function UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate.New(object, method) end
---@param text string
function UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate:Invoke(text) end
---@param text string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate:BeginInvoke(text, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationHypothesisDelegate:EndInvoke(result) end

---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate : System.MulticastDelegate
UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate = {}
---@alias CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate
CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate = UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate
function UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate.New(object, method) end
---@param text string
---@param confidence UnityEngine.Windows.Speech.ConfidenceLevel
function UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate:Invoke(text, confidence) end
---@param text string
---@param confidence UnityEngine.Windows.Speech.ConfidenceLevel
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate:BeginInvoke(text, confidence, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationResultDelegate:EndInvoke(result) end

---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate : System.MulticastDelegate
UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate = {}
---@alias CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate
CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate = UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate
function UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate.New(object, method) end
---@param cause UnityEngine.Windows.Speech.DictationCompletionCause
function UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate:Invoke(cause) end
---@param cause UnityEngine.Windows.Speech.DictationCompletionCause
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate:BeginInvoke(cause, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationCompletedDelegate:EndInvoke(result) end

---@class UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler : System.MulticastDelegate
UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler = {}
---@alias CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler
CS.UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler = UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler
function UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler.New(object, method) end
---@param error string
---@param hresult number
function UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler:Invoke(error, hresult) end
---@param error string
---@param hresult number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler:BeginInvoke(error, hresult, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.Speech.DictationRecognizer.DictationErrorHandler:EndInvoke(result) end

---@class UnityEngine.Windows.Speech.ConfidenceLevel
---@field High UnityEngine.Windows.Speech.ConfidenceLevel
---@field Medium UnityEngine.Windows.Speech.ConfidenceLevel
---@field Low UnityEngine.Windows.Speech.ConfidenceLevel
---@field Rejected UnityEngine.Windows.Speech.ConfidenceLevel
UnityEngine.Windows.Speech.ConfidenceLevel = {}
---@alias CS.UnityEngine.Windows.Speech.ConfidenceLevel UnityEngine.Windows.Speech.ConfidenceLevel
CS.UnityEngine.Windows.Speech.ConfidenceLevel = UnityEngine.Windows.Speech.ConfidenceLevel


---@class UnityEngine.Windows.Speech.SpeechSystemStatus
---@field Stopped UnityEngine.Windows.Speech.SpeechSystemStatus
---@field Running UnityEngine.Windows.Speech.SpeechSystemStatus
---@field Failed UnityEngine.Windows.Speech.SpeechSystemStatus
UnityEngine.Windows.Speech.SpeechSystemStatus = {}
---@alias CS.UnityEngine.Windows.Speech.SpeechSystemStatus UnityEngine.Windows.Speech.SpeechSystemStatus
CS.UnityEngine.Windows.Speech.SpeechSystemStatus = UnityEngine.Windows.Speech.SpeechSystemStatus


---@class UnityEngine.Windows.Speech.SpeechError
---@field NoError UnityEngine.Windows.Speech.SpeechError
---@field TopicLanguageNotSupported UnityEngine.Windows.Speech.SpeechError
---@field GrammarLanguageMismatch UnityEngine.Windows.Speech.SpeechError
---@field GrammarCompilationFailure UnityEngine.Windows.Speech.SpeechError
---@field AudioQualityFailure UnityEngine.Windows.Speech.SpeechError
---@field PauseLimitExceeded UnityEngine.Windows.Speech.SpeechError
---@field TimeoutExceeded UnityEngine.Windows.Speech.SpeechError
---@field NetworkFailure UnityEngine.Windows.Speech.SpeechError
---@field MicrophoneUnavailable UnityEngine.Windows.Speech.SpeechError
---@field UnknownError UnityEngine.Windows.Speech.SpeechError
UnityEngine.Windows.Speech.SpeechError = {}
---@alias CS.UnityEngine.Windows.Speech.SpeechError UnityEngine.Windows.Speech.SpeechError
CS.UnityEngine.Windows.Speech.SpeechError = UnityEngine.Windows.Speech.SpeechError


---@class UnityEngine.Windows.Speech.DictationTopicConstraint
---@field WebSearch UnityEngine.Windows.Speech.DictationTopicConstraint
---@field Form UnityEngine.Windows.Speech.DictationTopicConstraint
---@field Dictation UnityEngine.Windows.Speech.DictationTopicConstraint
UnityEngine.Windows.Speech.DictationTopicConstraint = {}
---@alias CS.UnityEngine.Windows.Speech.DictationTopicConstraint UnityEngine.Windows.Speech.DictationTopicConstraint
CS.UnityEngine.Windows.Speech.DictationTopicConstraint = UnityEngine.Windows.Speech.DictationTopicConstraint


---@class UnityEngine.Windows.Speech.DictationCompletionCause
---@field Complete UnityEngine.Windows.Speech.DictationCompletionCause
---@field AudioQualityFailure UnityEngine.Windows.Speech.DictationCompletionCause
---@field Canceled UnityEngine.Windows.Speech.DictationCompletionCause
---@field TimeoutExceeded UnityEngine.Windows.Speech.DictationCompletionCause
---@field PauseLimitExceeded UnityEngine.Windows.Speech.DictationCompletionCause
---@field NetworkFailure UnityEngine.Windows.Speech.DictationCompletionCause
---@field MicrophoneUnavailable UnityEngine.Windows.Speech.DictationCompletionCause
---@field UnknownError UnityEngine.Windows.Speech.DictationCompletionCause
UnityEngine.Windows.Speech.DictationCompletionCause = {}
---@alias CS.UnityEngine.Windows.Speech.DictationCompletionCause UnityEngine.Windows.Speech.DictationCompletionCause
CS.UnityEngine.Windows.Speech.DictationCompletionCause = UnityEngine.Windows.Speech.DictationCompletionCause


---@class UnityEngine.Windows.Speech.SemanticMeaning : System.ValueType
---@field key string
---@field values System.String[]
UnityEngine.Windows.Speech.SemanticMeaning = {}
---@alias CS.UnityEngine.Windows.Speech.SemanticMeaning UnityEngine.Windows.Speech.SemanticMeaning
CS.UnityEngine.Windows.Speech.SemanticMeaning = UnityEngine.Windows.Speech.SemanticMeaning


---@class UnityEngine.Windows.Speech.PhraseRecognizedEventArgs : System.ValueType
---@field confidence UnityEngine.Windows.Speech.ConfidenceLevel
---@field semanticMeanings UnityEngine.Windows.Speech.SemanticMeaning[]
---@field text string
---@field phraseStartTime System.DateTime
---@field phraseDuration System.TimeSpan
UnityEngine.Windows.Speech.PhraseRecognizedEventArgs = {}
---@alias CS.UnityEngine.Windows.Speech.PhraseRecognizedEventArgs UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
CS.UnityEngine.Windows.Speech.PhraseRecognizedEventArgs = UnityEngine.Windows.Speech.PhraseRecognizedEventArgs


---@class UnityEngine.Windows.Speech.KeywordRecognizer : UnityEngine.Windows.Speech.PhraseRecognizer
---@field Keywords System.Collections.Generic.IEnumerable
UnityEngine.Windows.Speech.KeywordRecognizer = {}
---@alias CS.UnityEngine.Windows.Speech.KeywordRecognizer UnityEngine.Windows.Speech.KeywordRecognizer
CS.UnityEngine.Windows.Speech.KeywordRecognizer = UnityEngine.Windows.Speech.KeywordRecognizer

---@overload fun(keywords: System.String[]) : UnityEngine.Windows.Speech.KeywordRecognizer
---@param keywords System.String[]
---@param minimumConfidence UnityEngine.Windows.Speech.ConfidenceLevel
---@return UnityEngine.Windows.Speech.KeywordRecognizer
function UnityEngine.Windows.Speech.KeywordRecognizer.New(keywords, minimumConfidence) end

---@class UnityEngine.Windows.Speech.GrammarRecognizer : UnityEngine.Windows.Speech.PhraseRecognizer
---@field GrammarFilePath string
UnityEngine.Windows.Speech.GrammarRecognizer = {}
---@alias CS.UnityEngine.Windows.Speech.GrammarRecognizer UnityEngine.Windows.Speech.GrammarRecognizer
CS.UnityEngine.Windows.Speech.GrammarRecognizer = UnityEngine.Windows.Speech.GrammarRecognizer

---@overload fun(grammarFilePath: string) : UnityEngine.Windows.Speech.GrammarRecognizer
---@param grammarFilePath string
---@param minimumConfidence UnityEngine.Windows.Speech.ConfidenceLevel
---@return UnityEngine.Windows.Speech.GrammarRecognizer
function UnityEngine.Windows.Speech.GrammarRecognizer.New(grammarFilePath, minimumConfidence) end

---@class UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat
---@field PNG UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat
---@field JPG UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat
UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat
CS.UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat = UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat


---@class UnityEngine.Windows.WebCam.PhotoCapture : System.Object
---@field SupportedResolutions System.Collections.Generic.IEnumerable
UnityEngine.Windows.WebCam.PhotoCapture = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture UnityEngine.Windows.WebCam.PhotoCapture
CS.UnityEngine.Windows.WebCam.PhotoCapture = UnityEngine.Windows.WebCam.PhotoCapture

---@overload fun(showHolograms: boolean, onCreatedCallback: UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback)
---@param onCreatedCallback UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback
function UnityEngine.Windows.WebCam.PhotoCapture.CreateAsync(onCreatedCallback) end
---@param setupParams UnityEngine.Windows.WebCam.CameraParameters
---@param onPhotoModeStartedCallback UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback
function UnityEngine.Windows.WebCam.PhotoCapture:StartPhotoModeAsync(setupParams, onPhotoModeStartedCallback) end
---@param onPhotoModeStoppedCallback UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback
function UnityEngine.Windows.WebCam.PhotoCapture:StopPhotoModeAsync(onPhotoModeStoppedCallback) end
---@overload fun(self: UnityEngine.Windows.WebCam.PhotoCapture, filename: string, fileOutputFormat: UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat, onCapturedPhotoToDiskCallback: UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback)
---@param onCapturedPhotoToMemoryCallback UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback
function UnityEngine.Windows.WebCam.PhotoCapture:TakePhotoAsync(onCapturedPhotoToMemoryCallback) end
---@return System.IntPtr
function UnityEngine.Windows.WebCam.PhotoCapture:GetUnsafePointerToVideoDeviceController() end
function UnityEngine.Windows.WebCam.PhotoCapture:Dispose() end

---@class UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType
---@field Success UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType
---@field UnknownError UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType
UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType
CS.UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType = UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType


---@class UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult : System.ValueType
---@field resultType UnityEngine.Windows.WebCam.PhotoCapture.CaptureResultType
---@field hResult number
---@field success boolean
UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
CS.UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult = UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult


---@class UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback
CS.UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback = UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback
function UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback.New(object, method) end
---@param captureObject UnityEngine.Windows.WebCam.PhotoCapture
function UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback:Invoke(captureObject) end
---@param captureObject UnityEngine.Windows.WebCam.PhotoCapture
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback:BeginInvoke(captureObject, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback
CS.UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback = UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback:Invoke(result) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback:BeginInvoke(result, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStartedCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback
CS.UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback = UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback:Invoke(result) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback:BeginInvoke(result, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback
CS.UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback = UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback:Invoke(result) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback:BeginInvoke(result, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToDiskCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback
CS.UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback = UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param photoCaptureFrame UnityEngine.Windows.WebCam.PhotoCaptureFrame
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback:Invoke(result, photoCaptureFrame) end
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param photoCaptureFrame UnityEngine.Windows.WebCam.PhotoCaptureFrame
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback:BeginInvoke(result, photoCaptureFrame, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.PhotoCaptureFrame : System.Object
---@field dataLength number
---@field hasLocationData boolean
---@field pixelFormat UnityEngine.Windows.WebCam.CapturePixelFormat
UnityEngine.Windows.WebCam.PhotoCaptureFrame = {}
---@alias CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame UnityEngine.Windows.WebCam.PhotoCaptureFrame
CS.UnityEngine.Windows.WebCam.PhotoCaptureFrame = UnityEngine.Windows.WebCam.PhotoCaptureFrame

---@param out_cameraToWorldMatrix UnityEngine.Matrix4x4
---@return boolean,UnityEngine.Matrix4x4
function UnityEngine.Windows.WebCam.PhotoCaptureFrame:TryGetCameraToWorldMatrix(out_cameraToWorldMatrix) end
---@overload fun(self: UnityEngine.Windows.WebCam.PhotoCaptureFrame, out_projectionMatrix: UnityEngine.Matrix4x4) : boolean, UnityEngine.Matrix4x4
---@param nearClipPlane number
---@param farClipPlane number
---@param out_projectionMatrix UnityEngine.Matrix4x4
---@return boolean,UnityEngine.Matrix4x4
function UnityEngine.Windows.WebCam.PhotoCaptureFrame:TryGetProjectionMatrix(nearClipPlane, farClipPlane, out_projectionMatrix) end
---@param targetTexture UnityEngine.Texture2D
function UnityEngine.Windows.WebCam.PhotoCaptureFrame:UploadImageDataToTexture(targetTexture) end
---@return System.IntPtr
function UnityEngine.Windows.WebCam.PhotoCaptureFrame:GetUnsafePointerToBuffer() end
---@param byteBuffer System.Collections.Generic.List
function UnityEngine.Windows.WebCam.PhotoCaptureFrame:CopyRawImageDataIntoBuffer(byteBuffer) end
function UnityEngine.Windows.WebCam.PhotoCaptureFrame:Dispose() end

---@class UnityEngine.Windows.WebCam.VideoCapture : System.Object
---@field SupportedResolutions System.Collections.Generic.IEnumerable
---@field IsRecording boolean
UnityEngine.Windows.WebCam.VideoCapture = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture UnityEngine.Windows.WebCam.VideoCapture
CS.UnityEngine.Windows.WebCam.VideoCapture = UnityEngine.Windows.WebCam.VideoCapture

---@param resolution UnityEngine.Resolution
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Windows.WebCam.VideoCapture.GetSupportedFrameRatesForResolution(resolution) end
---@overload fun(showHolograms: boolean, onCreatedCallback: UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback)
---@param onCreatedCallback UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback
function UnityEngine.Windows.WebCam.VideoCapture.CreateAsync(onCreatedCallback) end
---@param setupParams UnityEngine.Windows.WebCam.CameraParameters
---@param audioState UnityEngine.Windows.WebCam.VideoCapture.AudioState
---@param onVideoModeStartedCallback UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback
function UnityEngine.Windows.WebCam.VideoCapture:StartVideoModeAsync(setupParams, audioState, onVideoModeStartedCallback) end
---@param onVideoModeStoppedCallback UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback
function UnityEngine.Windows.WebCam.VideoCapture:StopVideoModeAsync(onVideoModeStoppedCallback) end
---@param filename string
---@param onStartedRecordingVideoCallback UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback
function UnityEngine.Windows.WebCam.VideoCapture:StartRecordingAsync(filename, onStartedRecordingVideoCallback) end
---@param onStoppedRecordingVideoCallback UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback
function UnityEngine.Windows.WebCam.VideoCapture:StopRecordingAsync(onStoppedRecordingVideoCallback) end
---@return System.IntPtr
function UnityEngine.Windows.WebCam.VideoCapture:GetUnsafePointerToVideoDeviceController() end
function UnityEngine.Windows.WebCam.VideoCapture:Dispose() end

---@class UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType
---@field Success UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType
---@field UnknownError UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType
UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType
CS.UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType = UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType


---@class UnityEngine.Windows.WebCam.VideoCapture.AudioState
---@field MicAudio UnityEngine.Windows.WebCam.VideoCapture.AudioState
---@field ApplicationAudio UnityEngine.Windows.WebCam.VideoCapture.AudioState
---@field ApplicationAndMicAudio UnityEngine.Windows.WebCam.VideoCapture.AudioState
---@field None UnityEngine.Windows.WebCam.VideoCapture.AudioState
UnityEngine.Windows.WebCam.VideoCapture.AudioState = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.AudioState UnityEngine.Windows.WebCam.VideoCapture.AudioState
CS.UnityEngine.Windows.WebCam.VideoCapture.AudioState = UnityEngine.Windows.WebCam.VideoCapture.AudioState


---@class UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult : System.ValueType
---@field resultType UnityEngine.Windows.WebCam.VideoCapture.CaptureResultType
---@field hResult number
---@field success boolean
UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
CS.UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult = UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult


---@class UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback
CS.UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback = UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback.New(object, method) end
---@param captureObject UnityEngine.Windows.WebCam.VideoCapture
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback:Invoke(captureObject) end
---@param captureObject UnityEngine.Windows.WebCam.VideoCapture
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback:BeginInvoke(captureObject, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback
CS.UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback = UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback:Invoke(result) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback:BeginInvoke(result, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStartedCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback
CS.UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback = UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback:Invoke(result) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback:BeginInvoke(result, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnVideoModeStoppedCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback
CS.UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback = UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback
function UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
function UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback:Invoke(result) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback:BeginInvoke(result, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnStartedRecordingVideoCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback : System.MulticastDelegate
UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback = {}
---@alias CS.UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback
CS.UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback = UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback
function UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback.New(object, method) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
function UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback:Invoke(result) end
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback:BeginInvoke(result, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback:EndInvoke(result) end

---@class UnityEngine.Windows.WebCam.CapturePixelFormat
---@field BGRA32 UnityEngine.Windows.WebCam.CapturePixelFormat
---@field NV12 UnityEngine.Windows.WebCam.CapturePixelFormat
---@field JPEG UnityEngine.Windows.WebCam.CapturePixelFormat
---@field PNG UnityEngine.Windows.WebCam.CapturePixelFormat
UnityEngine.Windows.WebCam.CapturePixelFormat = {}
---@alias CS.UnityEngine.Windows.WebCam.CapturePixelFormat UnityEngine.Windows.WebCam.CapturePixelFormat
CS.UnityEngine.Windows.WebCam.CapturePixelFormat = UnityEngine.Windows.WebCam.CapturePixelFormat


---@class UnityEngine.Windows.WebCam.WebCamMode
---@field None UnityEngine.Windows.WebCam.WebCamMode
---@field PhotoMode UnityEngine.Windows.WebCam.WebCamMode
---@field VideoMode UnityEngine.Windows.WebCam.WebCamMode
UnityEngine.Windows.WebCam.WebCamMode = {}
---@alias CS.UnityEngine.Windows.WebCam.WebCamMode UnityEngine.Windows.WebCam.WebCamMode
CS.UnityEngine.Windows.WebCam.WebCamMode = UnityEngine.Windows.WebCam.WebCamMode


---@class UnityEngine.Windows.WebCam.WebCam : System.Object
---@field Mode UnityEngine.Windows.WebCam.WebCamMode
UnityEngine.Windows.WebCam.WebCam = {}
---@alias CS.UnityEngine.Windows.WebCam.WebCam UnityEngine.Windows.WebCam.WebCam
CS.UnityEngine.Windows.WebCam.WebCam = UnityEngine.Windows.WebCam.WebCam

---@return UnityEngine.Windows.WebCam.WebCam
function UnityEngine.Windows.WebCam.WebCam.New() end

---@class UnityEngine.Windows.WebCam.CameraParameters : System.ValueType
---@field hologramOpacity number
---@field frameRate number
---@field cameraResolutionWidth number
---@field cameraResolutionHeight number
---@field pixelFormat UnityEngine.Windows.WebCam.CapturePixelFormat
UnityEngine.Windows.WebCam.CameraParameters = {}
---@alias CS.UnityEngine.Windows.WebCam.CameraParameters UnityEngine.Windows.WebCam.CameraParameters
CS.UnityEngine.Windows.WebCam.CameraParameters = UnityEngine.Windows.WebCam.CameraParameters

---@param webCamMode UnityEngine.Windows.WebCam.WebCamMode
---@return UnityEngine.Windows.WebCam.CameraParameters
function UnityEngine.Windows.WebCam.CameraParameters.New(webCamMode) end

---@class UnityEngine.Events.PersistentListenerMode
---@field EventDefined UnityEngine.Events.PersistentListenerMode
---@field Void UnityEngine.Events.PersistentListenerMode
---@field Object UnityEngine.Events.PersistentListenerMode
---@field Int UnityEngine.Events.PersistentListenerMode
---@field Float UnityEngine.Events.PersistentListenerMode
---@field String UnityEngine.Events.PersistentListenerMode
---@field Bool UnityEngine.Events.PersistentListenerMode
UnityEngine.Events.PersistentListenerMode = {}
---@alias CS.UnityEngine.Events.PersistentListenerMode UnityEngine.Events.PersistentListenerMode
CS.UnityEngine.Events.PersistentListenerMode = UnityEngine.Events.PersistentListenerMode


---@class UnityEngine.Events.UnityEventTools : System.Object
UnityEngine.Events.UnityEventTools = {}
---@alias CS.UnityEngine.Events.UnityEventTools UnityEngine.Events.UnityEventTools
CS.UnityEngine.Events.UnityEventTools = UnityEngine.Events.UnityEventTools

---@return UnityEngine.Events.UnityEventTools
function UnityEngine.Events.UnityEventTools.New() end

---@class UnityEngine.Events.ArgumentCache : System.Object
---@field unityObjectArgument UnityEngine.Object
---@field unityObjectArgumentAssemblyTypeName string
---@field intArgument number
---@field floatArgument number
---@field stringArgument string
---@field boolArgument boolean
UnityEngine.Events.ArgumentCache = {}
---@alias CS.UnityEngine.Events.ArgumentCache UnityEngine.Events.ArgumentCache
CS.UnityEngine.Events.ArgumentCache = UnityEngine.Events.ArgumentCache

---@return UnityEngine.Events.ArgumentCache
function UnityEngine.Events.ArgumentCache.New() end
function UnityEngine.Events.ArgumentCache:OnBeforeSerialize() end
function UnityEngine.Events.ArgumentCache:OnAfterDeserialize() end

---@class UnityEngine.Events.BaseInvokableCall : System.Object
UnityEngine.Events.BaseInvokableCall = {}
---@alias CS.UnityEngine.Events.BaseInvokableCall UnityEngine.Events.BaseInvokableCall
CS.UnityEngine.Events.BaseInvokableCall = UnityEngine.Events.BaseInvokableCall

---@param args System.Object[]
function UnityEngine.Events.BaseInvokableCall:Invoke(args) end
---@param targetObj System.Object
---@param method System.Reflection.MethodInfo
---@return boolean
function UnityEngine.Events.BaseInvokableCall:Find(targetObj, method) end

---@class UnityEngine.Events.InvokableCall : UnityEngine.Events.BaseInvokableCall
UnityEngine.Events.InvokableCall = {}
---@alias CS.UnityEngine.Events.InvokableCall UnityEngine.Events.InvokableCall
CS.UnityEngine.Events.InvokableCall = UnityEngine.Events.InvokableCall

---@overload fun(target: System.Object, theFunction: System.Reflection.MethodInfo) : UnityEngine.Events.InvokableCall
---@param action UnityEngine.Events.UnityAction
---@return UnityEngine.Events.InvokableCall
function UnityEngine.Events.InvokableCall.New(action) end
---@overload fun(self: UnityEngine.Events.InvokableCall, args: System.Object[])
function UnityEngine.Events.InvokableCall:Invoke() end
---@param targetObj System.Object
---@param method System.Reflection.MethodInfo
---@return boolean
function UnityEngine.Events.InvokableCall:Find(targetObj, method) end

---@class UnityEngine.Events.InvokableCall : UnityEngine.Events.BaseInvokableCall
UnityEngine.Events.InvokableCall = {}
---@alias CS.UnityEngine.Events.InvokableCall UnityEngine.Events.InvokableCall
CS.UnityEngine.Events.InvokableCall = UnityEngine.Events.InvokableCall

---@overload fun(target: System.Object, theFunction: System.Reflection.MethodInfo) : UnityEngine.Events.InvokableCall
---@param action UnityEngine.Events.UnityAction[T1]
---@return UnityEngine.Events.InvokableCall
function UnityEngine.Events.InvokableCall.New(action) end
---@overload fun(self: UnityEngine.Events.InvokableCall, args: System.Object[])
---@param args0 T1
function UnityEngine.Events.InvokableCall:Invoke(args0) end
---@param targetObj System.Object
---@param method System.Reflection.MethodInfo
---@return boolean
function UnityEngine.Events.InvokableCall:Find(targetObj, method) end

---@class UnityEngine.Events.InvokableCall : UnityEngine.Events.BaseInvokableCall
UnityEngine.Events.InvokableCall = {}
---@alias CS.UnityEngine.Events.InvokableCall UnityEngine.Events.InvokableCall
CS.UnityEngine.Events.InvokableCall = UnityEngine.Events.InvokableCall

---@overload fun(target: System.Object, theFunction: System.Reflection.MethodInfo) : UnityEngine.Events.InvokableCall
---@param action UnityEngine.Events.UnityAction[T1,T2]
---@return UnityEngine.Events.InvokableCall
function UnityEngine.Events.InvokableCall.New(action) end
---@overload fun(self: UnityEngine.Events.InvokableCall, args: System.Object[])
---@param args0 T1
---@param args1 T2
function UnityEngine.Events.InvokableCall:Invoke(args0, args1) end
---@param targetObj System.Object
---@param method System.Reflection.MethodInfo
---@return boolean
function UnityEngine.Events.InvokableCall:Find(targetObj, method) end

---@class UnityEngine.Events.InvokableCall : UnityEngine.Events.BaseInvokableCall
UnityEngine.Events.InvokableCall = {}
---@alias CS.UnityEngine.Events.InvokableCall UnityEngine.Events.InvokableCall
CS.UnityEngine.Events.InvokableCall = UnityEngine.Events.InvokableCall

---@overload fun(target: System.Object, theFunction: System.Reflection.MethodInfo) : UnityEngine.Events.InvokableCall
---@param action UnityEngine.Events.UnityAction[T1,T2,T3]
---@return UnityEngine.Events.InvokableCall
function UnityEngine.Events.InvokableCall.New(action) end
---@overload fun(self: UnityEngine.Events.InvokableCall, args: System.Object[])
---@param args0 T1
---@param args1 T2
---@param args2 T3
function UnityEngine.Events.InvokableCall:Invoke(args0, args1, args2) end
---@param targetObj System.Object
---@param method System.Reflection.MethodInfo
---@return boolean
function UnityEngine.Events.InvokableCall:Find(targetObj, method) end

---@class UnityEngine.Events.InvokableCall : UnityEngine.Events.BaseInvokableCall
UnityEngine.Events.InvokableCall = {}
---@alias CS.UnityEngine.Events.InvokableCall UnityEngine.Events.InvokableCall
CS.UnityEngine.Events.InvokableCall = UnityEngine.Events.InvokableCall

---@overload fun(target: System.Object, theFunction: System.Reflection.MethodInfo) : UnityEngine.Events.InvokableCall
---@param action UnityEngine.Events.UnityAction[T1,T2,T3,T4]
---@return UnityEngine.Events.InvokableCall
function UnityEngine.Events.InvokableCall.New(action) end
---@overload fun(self: UnityEngine.Events.InvokableCall, args: System.Object[])
---@param args0 T1
---@param args1 T2
---@param args2 T3
---@param args3 T4
function UnityEngine.Events.InvokableCall:Invoke(args0, args1, args2, args3) end
---@param targetObj System.Object
---@param method System.Reflection.MethodInfo
---@return boolean
function UnityEngine.Events.InvokableCall:Find(targetObj, method) end

---@class UnityEngine.Events.CachedInvokableCall : UnityEngine.Events.InvokableCall[T]
UnityEngine.Events.CachedInvokableCall = {}
---@alias CS.UnityEngine.Events.CachedInvokableCall UnityEngine.Events.CachedInvokableCall
CS.UnityEngine.Events.CachedInvokableCall = UnityEngine.Events.CachedInvokableCall

---@param target UnityEngine.Object
---@param theFunction System.Reflection.MethodInfo
---@param argument T
---@return UnityEngine.Events.CachedInvokableCall
function UnityEngine.Events.CachedInvokableCall.New(target, theFunction, argument) end
---@overload fun(self: UnityEngine.Events.CachedInvokableCall, args: System.Object[])
---@param arg0 T
function UnityEngine.Events.CachedInvokableCall:Invoke(arg0) end

---@class UnityEngine.Events.UnityEventCallState
---@field Off UnityEngine.Events.UnityEventCallState
---@field EditorAndRuntime UnityEngine.Events.UnityEventCallState
---@field RuntimeOnly UnityEngine.Events.UnityEventCallState
UnityEngine.Events.UnityEventCallState = {}
---@alias CS.UnityEngine.Events.UnityEventCallState UnityEngine.Events.UnityEventCallState
CS.UnityEngine.Events.UnityEventCallState = UnityEngine.Events.UnityEventCallState


---@class UnityEngine.Events.PersistentCall : System.Object
---@field target UnityEngine.Object
---@field targetAssemblyTypeName string
---@field methodName string
---@field mode UnityEngine.Events.PersistentListenerMode
---@field arguments UnityEngine.Events.ArgumentCache
---@field callState UnityEngine.Events.UnityEventCallState
UnityEngine.Events.PersistentCall = {}
---@alias CS.UnityEngine.Events.PersistentCall UnityEngine.Events.PersistentCall
CS.UnityEngine.Events.PersistentCall = UnityEngine.Events.PersistentCall

---@return UnityEngine.Events.PersistentCall
function UnityEngine.Events.PersistentCall.New() end
---@return boolean
function UnityEngine.Events.PersistentCall:IsValid() end
---@param theEvent UnityEngine.Events.UnityEventBase
---@return UnityEngine.Events.BaseInvokableCall
function UnityEngine.Events.PersistentCall:GetRuntimeCall(theEvent) end
---@param ttarget UnityEngine.Object
---@param targetType System.Type
---@param mmethodName string
function UnityEngine.Events.PersistentCall:RegisterPersistentListener(ttarget, targetType, mmethodName) end
function UnityEngine.Events.PersistentCall:UnregisterPersistentListener() end
function UnityEngine.Events.PersistentCall:OnBeforeSerialize() end
function UnityEngine.Events.PersistentCall:OnAfterDeserialize() end

---@class UnityEngine.Events.PersistentCallGroup : System.Object
---@field Count number
UnityEngine.Events.PersistentCallGroup = {}
---@alias CS.UnityEngine.Events.PersistentCallGroup UnityEngine.Events.PersistentCallGroup
CS.UnityEngine.Events.PersistentCallGroup = UnityEngine.Events.PersistentCallGroup

---@return UnityEngine.Events.PersistentCallGroup
function UnityEngine.Events.PersistentCallGroup.New() end
---@param index number
---@return UnityEngine.Events.PersistentCall
function UnityEngine.Events.PersistentCallGroup:GetListener(index) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.Events.PersistentCallGroup:GetListeners() end
---@overload fun()
---@param call UnityEngine.Events.PersistentCall
function UnityEngine.Events.PersistentCallGroup:AddListener(call) end
---@param index number
function UnityEngine.Events.PersistentCallGroup:RemoveListener(index) end
function UnityEngine.Events.PersistentCallGroup:Clear() end
---@param index number
---@param targetObj UnityEngine.Object
---@param targetObjType System.Type
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RegisterEventPersistentListener(index, targetObj, targetObjType, methodName) end
---@param index number
---@param targetObj UnityEngine.Object
---@param targetObjType System.Type
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RegisterVoidPersistentListener(index, targetObj, targetObjType, methodName) end
---@param index number
---@param targetObj UnityEngine.Object
---@param targetObjType System.Type
---@param argument UnityEngine.Object
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RegisterObjectPersistentListener(index, targetObj, targetObjType, argument, methodName) end
---@param index number
---@param targetObj UnityEngine.Object
---@param targetObjType System.Type
---@param argument number
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RegisterIntPersistentListener(index, targetObj, targetObjType, argument, methodName) end
---@param index number
---@param targetObj UnityEngine.Object
---@param targetObjType System.Type
---@param argument number
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RegisterFloatPersistentListener(index, targetObj, targetObjType, argument, methodName) end
---@param index number
---@param targetObj UnityEngine.Object
---@param targetObjType System.Type
---@param argument string
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RegisterStringPersistentListener(index, targetObj, targetObjType, argument, methodName) end
---@param index number
---@param targetObj UnityEngine.Object
---@param targetObjType System.Type
---@param argument boolean
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RegisterBoolPersistentListener(index, targetObj, targetObjType, argument, methodName) end
---@param index number
function UnityEngine.Events.PersistentCallGroup:UnregisterPersistentListener(index) end
---@param target UnityEngine.Object
---@param methodName string
function UnityEngine.Events.PersistentCallGroup:RemoveListeners(target, methodName) end
---@param invokableList UnityEngine.Events.InvokableCallList
---@param unityEventBase UnityEngine.Events.UnityEventBase
function UnityEngine.Events.PersistentCallGroup:Initialize(invokableList, unityEventBase) end

---@class UnityEngine.Events.InvokableCallList : System.Object
---@field Count number
UnityEngine.Events.InvokableCallList = {}
---@alias CS.UnityEngine.Events.InvokableCallList UnityEngine.Events.InvokableCallList
CS.UnityEngine.Events.InvokableCallList = UnityEngine.Events.InvokableCallList

---@return UnityEngine.Events.InvokableCallList
function UnityEngine.Events.InvokableCallList.New() end
---@param call UnityEngine.Events.BaseInvokableCall
function UnityEngine.Events.InvokableCallList:AddPersistentInvokableCall(call) end
---@param call UnityEngine.Events.BaseInvokableCall
function UnityEngine.Events.InvokableCallList:AddListener(call) end
---@param targetObj System.Object
---@param method System.Reflection.MethodInfo
function UnityEngine.Events.InvokableCallList:RemoveListener(targetObj, method) end
function UnityEngine.Events.InvokableCallList:Clear() end
function UnityEngine.Events.InvokableCallList:ClearPersistent() end
---@return System.Collections.Generic.List
function UnityEngine.Events.InvokableCallList:PrepareInvoke() end

---@class UnityEngine.Events.UnityEventBase : System.Object
UnityEngine.Events.UnityEventBase = {}
---@alias CS.UnityEngine.Events.UnityEventBase UnityEngine.Events.UnityEventBase
CS.UnityEngine.Events.UnityEventBase = UnityEngine.Events.UnityEventBase

---@overload fun(obj: System.Object, functionName: string, argumentTypes: System.Type[]) : System.Reflection.MethodInfo
---@param objectType System.Type
---@param functionName string
---@param argumentTypes System.Type[]
---@return System.Reflection.MethodInfo
function UnityEngine.Events.UnityEventBase.GetValidMethodInfo(objectType, functionName, argumentTypes) end
---@return number
function UnityEngine.Events.UnityEventBase:GetPersistentEventCount() end
---@param index number
---@return UnityEngine.Object
function UnityEngine.Events.UnityEventBase:GetPersistentTarget(index) end
---@param index number
---@return string
function UnityEngine.Events.UnityEventBase:GetPersistentMethodName(index) end
---@param index number
---@param state UnityEngine.Events.UnityEventCallState
function UnityEngine.Events.UnityEventBase:SetPersistentListenerState(index, state) end
---@param index number
---@return UnityEngine.Events.UnityEventCallState
function UnityEngine.Events.UnityEventBase:GetPersistentListenerState(index) end
function UnityEngine.Events.UnityEventBase:RemoveAllListeners() end
---@return string
function UnityEngine.Events.UnityEventBase:ToString() end

---@class UnityEngine.Events.UnityAction : System.MulticastDelegate
UnityEngine.Events.UnityAction = {}
---@alias CS.UnityEngine.Events.UnityAction UnityEngine.Events.UnityAction
CS.UnityEngine.Events.UnityAction = UnityEngine.Events.UnityAction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Events.UnityAction
function UnityEngine.Events.UnityAction.New(object, method) end
function UnityEngine.Events.UnityAction:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Events.UnityAction:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Events.UnityAction:EndInvoke(result) end

---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@alias CS.UnityEngine.Events.UnityEvent UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@return UnityEngine.Events.UnityEvent
function UnityEngine.Events.UnityEvent.New() end
---@param call UnityEngine.Events.UnityAction
function UnityEngine.Events.UnityEvent:AddListener(call) end
---@param call UnityEngine.Events.UnityAction
function UnityEngine.Events.UnityEvent:RemoveListener(call) end
function UnityEngine.Events.UnityEvent:Invoke() end

---@class UnityEngine.Events.UnityAction : System.MulticastDelegate
UnityEngine.Events.UnityAction = {}
---@alias CS.UnityEngine.Events.UnityAction UnityEngine.Events.UnityAction
CS.UnityEngine.Events.UnityAction = UnityEngine.Events.UnityAction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Events.UnityAction
function UnityEngine.Events.UnityAction.New(object, method) end
---@param arg0 T0
function UnityEngine.Events.UnityAction:Invoke(arg0) end
---@param arg0 T0
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Events.UnityAction:BeginInvoke(arg0, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Events.UnityAction:EndInvoke(result) end

---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@alias CS.UnityEngine.Events.UnityEvent UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@return UnityEngine.Events.UnityEvent
function UnityEngine.Events.UnityEvent.New() end
---@param call UnityEngine.Events.UnityAction[T0]
function UnityEngine.Events.UnityEvent:AddListener(call) end
---@param call UnityEngine.Events.UnityAction[T0]
function UnityEngine.Events.UnityEvent:RemoveListener(call) end
---@param arg0 T0
function UnityEngine.Events.UnityEvent:Invoke(arg0) end

---@class UnityEngine.Events.UnityAction : System.MulticastDelegate
UnityEngine.Events.UnityAction = {}
---@alias CS.UnityEngine.Events.UnityAction UnityEngine.Events.UnityAction
CS.UnityEngine.Events.UnityAction = UnityEngine.Events.UnityAction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Events.UnityAction
function UnityEngine.Events.UnityAction.New(object, method) end
---@param arg0 T0
---@param arg1 T1
function UnityEngine.Events.UnityAction:Invoke(arg0, arg1) end
---@param arg0 T0
---@param arg1 T1
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Events.UnityAction:BeginInvoke(arg0, arg1, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Events.UnityAction:EndInvoke(result) end

---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@alias CS.UnityEngine.Events.UnityEvent UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@return UnityEngine.Events.UnityEvent
function UnityEngine.Events.UnityEvent.New() end
---@param call UnityEngine.Events.UnityAction[T0,T1]
function UnityEngine.Events.UnityEvent:AddListener(call) end
---@param call UnityEngine.Events.UnityAction[T0,T1]
function UnityEngine.Events.UnityEvent:RemoveListener(call) end
---@param arg0 T0
---@param arg1 T1
function UnityEngine.Events.UnityEvent:Invoke(arg0, arg1) end

---@class UnityEngine.Events.UnityAction : System.MulticastDelegate
UnityEngine.Events.UnityAction = {}
---@alias CS.UnityEngine.Events.UnityAction UnityEngine.Events.UnityAction
CS.UnityEngine.Events.UnityAction = UnityEngine.Events.UnityAction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Events.UnityAction
function UnityEngine.Events.UnityAction.New(object, method) end
---@param arg0 T0
---@param arg1 T1
---@param arg2 T2
function UnityEngine.Events.UnityAction:Invoke(arg0, arg1, arg2) end
---@param arg0 T0
---@param arg1 T1
---@param arg2 T2
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Events.UnityAction:BeginInvoke(arg0, arg1, arg2, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Events.UnityAction:EndInvoke(result) end

---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@alias CS.UnityEngine.Events.UnityEvent UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@return UnityEngine.Events.UnityEvent
function UnityEngine.Events.UnityEvent.New() end
---@param call UnityEngine.Events.UnityAction[T0,T1,T2]
function UnityEngine.Events.UnityEvent:AddListener(call) end
---@param call UnityEngine.Events.UnityAction[T0,T1,T2]
function UnityEngine.Events.UnityEvent:RemoveListener(call) end
---@param arg0 T0
---@param arg1 T1
---@param arg2 T2
function UnityEngine.Events.UnityEvent:Invoke(arg0, arg1, arg2) end

---@class UnityEngine.Events.UnityAction : System.MulticastDelegate
UnityEngine.Events.UnityAction = {}
---@alias CS.UnityEngine.Events.UnityAction UnityEngine.Events.UnityAction
CS.UnityEngine.Events.UnityAction = UnityEngine.Events.UnityAction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Events.UnityAction
function UnityEngine.Events.UnityAction.New(object, method) end
---@param arg0 T0
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
function UnityEngine.Events.UnityAction:Invoke(arg0, arg1, arg2, arg3) end
---@param arg0 T0
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Events.UnityAction:BeginInvoke(arg0, arg1, arg2, arg3, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Events.UnityAction:EndInvoke(result) end

---@class UnityEngine.Events.UnityEvent : UnityEngine.Events.UnityEventBase
UnityEngine.Events.UnityEvent = {}
---@alias CS.UnityEngine.Events.UnityEvent UnityEngine.Events.UnityEvent
CS.UnityEngine.Events.UnityEvent = UnityEngine.Events.UnityEvent

---@return UnityEngine.Events.UnityEvent
function UnityEngine.Events.UnityEvent.New() end
---@param call UnityEngine.Events.UnityAction[T0,T1,T2,T3]
function UnityEngine.Events.UnityEvent:AddListener(call) end
---@param call UnityEngine.Events.UnityAction[T0,T1,T2,T3]
function UnityEngine.Events.UnityEvent:RemoveListener(call) end
---@param arg0 T0
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
function UnityEngine.Events.UnityEvent:Invoke(arg0, arg1, arg2, arg3) end

---@class UnityEngine.Serialization.FormerlySerializedAsAttribute : System.Attribute
---@field oldName string
UnityEngine.Serialization.FormerlySerializedAsAttribute = {}
---@alias CS.UnityEngine.Serialization.FormerlySerializedAsAttribute UnityEngine.Serialization.FormerlySerializedAsAttribute
CS.UnityEngine.Serialization.FormerlySerializedAsAttribute = UnityEngine.Serialization.FormerlySerializedAsAttribute

---@param oldName string
---@return UnityEngine.Serialization.FormerlySerializedAsAttribute
function UnityEngine.Serialization.FormerlySerializedAsAttribute.New(oldName) end

---@class UnityEngine.Serialization.ManagedReferenceUtility : System.Object
---@field RefIdUnknown number
---@field RefIdNull number
UnityEngine.Serialization.ManagedReferenceUtility = {}
---@alias CS.UnityEngine.Serialization.ManagedReferenceUtility UnityEngine.Serialization.ManagedReferenceUtility
CS.UnityEngine.Serialization.ManagedReferenceUtility = UnityEngine.Serialization.ManagedReferenceUtility

---@return UnityEngine.Serialization.ManagedReferenceUtility
function UnityEngine.Serialization.ManagedReferenceUtility.New() end
---@param obj UnityEngine.Object
---@param scriptObj System.Object
---@param refId number
---@return boolean
function UnityEngine.Serialization.ManagedReferenceUtility.SetManagedReferenceIdForObject(obj, scriptObj, refId) end
---@param obj UnityEngine.Object
---@param scriptObj System.Object
---@return number
function UnityEngine.Serialization.ManagedReferenceUtility.GetManagedReferenceIdForObject(obj, scriptObj) end
---@param obj UnityEngine.Object
---@param id number
---@return System.Object
function UnityEngine.Serialization.ManagedReferenceUtility.GetManagedReference(obj, id) end
---@param obj UnityEngine.Object
---@return System.Int64[]
function UnityEngine.Serialization.ManagedReferenceUtility.GetManagedReferenceIds(obj) end

---@class UnityEngine.Serialization.UnitySurrogateSelector : System.Object
UnityEngine.Serialization.UnitySurrogateSelector = {}
---@alias CS.UnityEngine.Serialization.UnitySurrogateSelector UnityEngine.Serialization.UnitySurrogateSelector
CS.UnityEngine.Serialization.UnitySurrogateSelector = UnityEngine.Serialization.UnitySurrogateSelector

---@return UnityEngine.Serialization.UnitySurrogateSelector
function UnityEngine.Serialization.UnitySurrogateSelector.New() end
---@param type System.Type
---@param context System.Runtime.Serialization.StreamingContext
---@param out_selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Runtime.Serialization.ISerializationSurrogate,System.Runtime.Serialization.ISurrogateSelector
function UnityEngine.Serialization.UnitySurrogateSelector:GetSurrogate(type, context, out_selector) end
---@param selector System.Runtime.Serialization.ISurrogateSelector
function UnityEngine.Serialization.UnitySurrogateSelector:ChainSelector(selector) end
---@return System.Runtime.Serialization.ISurrogateSelector
function UnityEngine.Serialization.UnitySurrogateSelector:GetNextSelector() end

---@class UnityEngine.Serialization.ListSerializationSurrogate : System.Object
---@field Default System.Runtime.Serialization.ISerializationSurrogate
UnityEngine.Serialization.ListSerializationSurrogate = {}
---@alias CS.UnityEngine.Serialization.ListSerializationSurrogate UnityEngine.Serialization.ListSerializationSurrogate
CS.UnityEngine.Serialization.ListSerializationSurrogate = UnityEngine.Serialization.ListSerializationSurrogate

---@return UnityEngine.Serialization.ListSerializationSurrogate
function UnityEngine.Serialization.ListSerializationSurrogate.New() end
---@param obj System.Object
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function UnityEngine.Serialization.ListSerializationSurrogate:GetObjectData(obj, info, context) end
---@param obj System.Object
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Object
function UnityEngine.Serialization.ListSerializationSurrogate:SetObjectData(obj, info, context, selector) end

---@class UnityEngine.Serialization.DictionarySerializationSurrogate : System.Object
UnityEngine.Serialization.DictionarySerializationSurrogate = {}
---@alias CS.UnityEngine.Serialization.DictionarySerializationSurrogate UnityEngine.Serialization.DictionarySerializationSurrogate
CS.UnityEngine.Serialization.DictionarySerializationSurrogate = UnityEngine.Serialization.DictionarySerializationSurrogate

---@return UnityEngine.Serialization.DictionarySerializationSurrogate
function UnityEngine.Serialization.DictionarySerializationSurrogate.New() end
---@param obj System.Object
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function UnityEngine.Serialization.DictionarySerializationSurrogate:GetObjectData(obj, info, context) end
---@param obj System.Object
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@param selector System.Runtime.Serialization.ISurrogateSelector
---@return System.Object
function UnityEngine.Serialization.DictionarySerializationSurrogate:SetObjectData(obj, info, context, selector) end

---@class UnityEngine.Search.SearchViewFlags
---@field None UnityEngine.Search.SearchViewFlags
---@field Debug UnityEngine.Search.SearchViewFlags
---@field NoIndexing UnityEngine.Search.SearchViewFlags
---@field Packages UnityEngine.Search.SearchViewFlags
---@field OpenLeftSidePanel UnityEngine.Search.SearchViewFlags
---@field OpenInspectorPreview UnityEngine.Search.SearchViewFlags
---@field Centered UnityEngine.Search.SearchViewFlags
---@field HideSearchBar UnityEngine.Search.SearchViewFlags
---@field CompactView UnityEngine.Search.SearchViewFlags
---@field ListView UnityEngine.Search.SearchViewFlags
---@field GridView UnityEngine.Search.SearchViewFlags
---@field TableView UnityEngine.Search.SearchViewFlags
---@field EnableSearchQuery UnityEngine.Search.SearchViewFlags
---@field DisableInspectorPreview UnityEngine.Search.SearchViewFlags
---@field DisableSavedSearchQuery UnityEngine.Search.SearchViewFlags
---@field OpenInBuilderMode UnityEngine.Search.SearchViewFlags
---@field OpenInTextMode UnityEngine.Search.SearchViewFlags
---@field DisableBuilderModeToggle UnityEngine.Search.SearchViewFlags
---@field Borderless UnityEngine.Search.SearchViewFlags
---@field DisableQueryHelpers UnityEngine.Search.SearchViewFlags
---@field DisableNoResultTips UnityEngine.Search.SearchViewFlags
---@field IgnoreSavedSearches UnityEngine.Search.SearchViewFlags
---@field ObjectPicker UnityEngine.Search.SearchViewFlags
---@field ObjectPickerAdvancedUI UnityEngine.Search.SearchViewFlags
---@field ContextSwitchPreservedMask UnityEngine.Search.SearchViewFlags
UnityEngine.Search.SearchViewFlags = {}
---@alias CS.UnityEngine.Search.SearchViewFlags UnityEngine.Search.SearchViewFlags
CS.UnityEngine.Search.SearchViewFlags = UnityEngine.Search.SearchViewFlags


---@class UnityEngine.Search.SearchContextAttribute : UnityEngine.PropertyAttribute
---@field query string
---@field providerIds System.String[]
---@field instantiableProviders System.Type[]
---@field flags UnityEngine.Search.SearchViewFlags
UnityEngine.Search.SearchContextAttribute = {}
---@alias CS.UnityEngine.Search.SearchContextAttribute UnityEngine.Search.SearchContextAttribute
CS.UnityEngine.Search.SearchContextAttribute = UnityEngine.Search.SearchContextAttribute

---@overload fun(query: string) : UnityEngine.Search.SearchContextAttribute
---@overload fun(query: string, flags: UnityEngine.Search.SearchViewFlags) : UnityEngine.Search.SearchContextAttribute
---@overload fun(query: string, providerIdsCommaSeparated: string) : UnityEngine.Search.SearchContextAttribute
---@overload fun(query: string, providerIdsCommaSeparated: string, flags: UnityEngine.Search.SearchViewFlags) : UnityEngine.Search.SearchContextAttribute
---@overload fun(query: string, instantiableProviders: System.Type[]) : UnityEngine.Search.SearchContextAttribute
---@overload fun(query: string, flags: UnityEngine.Search.SearchViewFlags, instantiableProviders: System.Type[]) : UnityEngine.Search.SearchContextAttribute
---@param query string
---@param flags UnityEngine.Search.SearchViewFlags
---@param providerIdsCommaSeparated string
---@param instantiableProviders System.Type[]
---@return UnityEngine.Search.SearchContextAttribute
function UnityEngine.Search.SearchContextAttribute.New(query, flags, providerIdsCommaSeparated, instantiableProviders) end

---@class UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute : System.Attribute
---@field labels System.String[]
---@field matchAll boolean
UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute = {}
---@alias CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute
CS.UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute = UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute

---@overload fun(labels: System.String[]) : UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute
---@param matchAll boolean
---@param labels System.String[]
---@return UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute
function UnityEngine.SearchService.ObjectSelectorHandlerWithLabelsAttribute.New(matchAll, labels) end

---@class UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute : System.Attribute
---@field tags System.String[]
UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute = {}
---@alias CS.UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute
CS.UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute = UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute

---@param tags System.String[]
---@return UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute
function UnityEngine.SearchService.ObjectSelectorHandlerWithTagsAttribute.New(tags) end

---@class UnityEngine.Scripting.AlwaysLinkAssemblyAttribute : System.Attribute
UnityEngine.Scripting.AlwaysLinkAssemblyAttribute = {}
---@alias CS.UnityEngine.Scripting.AlwaysLinkAssemblyAttribute UnityEngine.Scripting.AlwaysLinkAssemblyAttribute
CS.UnityEngine.Scripting.AlwaysLinkAssemblyAttribute = UnityEngine.Scripting.AlwaysLinkAssemblyAttribute

---@return UnityEngine.Scripting.AlwaysLinkAssemblyAttribute
function UnityEngine.Scripting.AlwaysLinkAssemblyAttribute.New() end

---@class UnityEngine.Scripting.GarbageCollector : System.Object
---@field GCMode UnityEngine.Scripting.GarbageCollector.Mode
---@field isIncremental boolean
---@field incrementalTimeSliceNanoseconds number
UnityEngine.Scripting.GarbageCollector = {}
---@alias CS.UnityEngine.Scripting.GarbageCollector UnityEngine.Scripting.GarbageCollector
CS.UnityEngine.Scripting.GarbageCollector = UnityEngine.Scripting.GarbageCollector

---@param nanoseconds number
---@return boolean
function UnityEngine.Scripting.GarbageCollector.CollectIncremental(nanoseconds) end

---@class UnityEngine.Scripting.GarbageCollector.Mode
---@field Disabled UnityEngine.Scripting.GarbageCollector.Mode
---@field Enabled UnityEngine.Scripting.GarbageCollector.Mode
---@field Manual UnityEngine.Scripting.GarbageCollector.Mode
UnityEngine.Scripting.GarbageCollector.Mode = {}
---@alias CS.UnityEngine.Scripting.GarbageCollector.Mode UnityEngine.Scripting.GarbageCollector.Mode
CS.UnityEngine.Scripting.GarbageCollector.Mode = UnityEngine.Scripting.GarbageCollector.Mode


---@class UnityEngine.Scripting.PreserveAttribute : System.Attribute
UnityEngine.Scripting.PreserveAttribute = {}
---@alias CS.UnityEngine.Scripting.PreserveAttribute UnityEngine.Scripting.PreserveAttribute
CS.UnityEngine.Scripting.PreserveAttribute = UnityEngine.Scripting.PreserveAttribute

---@return UnityEngine.Scripting.PreserveAttribute
function UnityEngine.Scripting.PreserveAttribute.New() end

---@class UnityEngine.Scripting.RequireAttributeUsagesAttribute : System.Attribute
UnityEngine.Scripting.RequireAttributeUsagesAttribute = {}
---@alias CS.UnityEngine.Scripting.RequireAttributeUsagesAttribute UnityEngine.Scripting.RequireAttributeUsagesAttribute
CS.UnityEngine.Scripting.RequireAttributeUsagesAttribute = UnityEngine.Scripting.RequireAttributeUsagesAttribute

---@return UnityEngine.Scripting.RequireAttributeUsagesAttribute
function UnityEngine.Scripting.RequireAttributeUsagesAttribute.New() end

---@class UnityEngine.Scripting.RequireDerivedAttribute : System.Attribute
UnityEngine.Scripting.RequireDerivedAttribute = {}
---@alias CS.UnityEngine.Scripting.RequireDerivedAttribute UnityEngine.Scripting.RequireDerivedAttribute
CS.UnityEngine.Scripting.RequireDerivedAttribute = UnityEngine.Scripting.RequireDerivedAttribute

---@return UnityEngine.Scripting.RequireDerivedAttribute
function UnityEngine.Scripting.RequireDerivedAttribute.New() end

---@class UnityEngine.Scripting.RequiredInterfaceAttribute : System.Attribute
UnityEngine.Scripting.RequiredInterfaceAttribute = {}
---@alias CS.UnityEngine.Scripting.RequiredInterfaceAttribute UnityEngine.Scripting.RequiredInterfaceAttribute
CS.UnityEngine.Scripting.RequiredInterfaceAttribute = UnityEngine.Scripting.RequiredInterfaceAttribute

---@param interfaceType System.Type
---@return UnityEngine.Scripting.RequiredInterfaceAttribute
function UnityEngine.Scripting.RequiredInterfaceAttribute.New(interfaceType) end

---@class UnityEngine.Scripting.RequiredMemberAttribute : System.Attribute
UnityEngine.Scripting.RequiredMemberAttribute = {}
---@alias CS.UnityEngine.Scripting.RequiredMemberAttribute UnityEngine.Scripting.RequiredMemberAttribute
CS.UnityEngine.Scripting.RequiredMemberAttribute = UnityEngine.Scripting.RequiredMemberAttribute

---@return UnityEngine.Scripting.RequiredMemberAttribute
function UnityEngine.Scripting.RequiredMemberAttribute.New() end

---@class UnityEngine.Scripting.RequireImplementorsAttribute : System.Attribute
UnityEngine.Scripting.RequireImplementorsAttribute = {}
---@alias CS.UnityEngine.Scripting.RequireImplementorsAttribute UnityEngine.Scripting.RequireImplementorsAttribute
CS.UnityEngine.Scripting.RequireImplementorsAttribute = UnityEngine.Scripting.RequireImplementorsAttribute

---@return UnityEngine.Scripting.RequireImplementorsAttribute
function UnityEngine.Scripting.RequireImplementorsAttribute.New() end

---@class UnityEngine.Scripting.APIUpdating.MovedFromAttributeData : System.ValueType
---@field className string
---@field nameSpace string
---@field assembly string
---@field classHasChanged boolean
---@field nameSpaceHasChanged boolean
---@field assemblyHasChanged boolean
---@field autoUdpateAPI boolean
UnityEngine.Scripting.APIUpdating.MovedFromAttributeData = {}
---@alias CS.UnityEngine.Scripting.APIUpdating.MovedFromAttributeData UnityEngine.Scripting.APIUpdating.MovedFromAttributeData
CS.UnityEngine.Scripting.APIUpdating.MovedFromAttributeData = UnityEngine.Scripting.APIUpdating.MovedFromAttributeData

---@param autoUpdateAPI boolean
---@param sourceNamespace string
---@param sourceAssembly string
---@param sourceClassName string
function UnityEngine.Scripting.APIUpdating.MovedFromAttributeData:Set(autoUpdateAPI, sourceNamespace, sourceAssembly, sourceClassName) end

---@class UnityEngine.Scripting.APIUpdating.MovedFromAttribute : System.Attribute
---@field IsInDifferentAssembly boolean
UnityEngine.Scripting.APIUpdating.MovedFromAttribute = {}
---@alias CS.UnityEngine.Scripting.APIUpdating.MovedFromAttribute UnityEngine.Scripting.APIUpdating.MovedFromAttribute
CS.UnityEngine.Scripting.APIUpdating.MovedFromAttribute = UnityEngine.Scripting.APIUpdating.MovedFromAttribute

---@overload fun(autoUpdateAPI: boolean, sourceNamespace: string, sourceAssembly: string, sourceClassName: string) : UnityEngine.Scripting.APIUpdating.MovedFromAttribute
---@param sourceNamespace string
---@return UnityEngine.Scripting.APIUpdating.MovedFromAttribute
function UnityEngine.Scripting.APIUpdating.MovedFromAttribute.New(sourceNamespace) end

---@class UnityEngine.SceneManagement.Scene : System.ValueType
---@field handle number
---@field path string
---@field name string
---@field isLoaded boolean
---@field buildIndex number
---@field isDirty boolean
---@field rootCount number
---@field isSubScene boolean
UnityEngine.SceneManagement.Scene = {}
---@alias CS.UnityEngine.SceneManagement.Scene UnityEngine.SceneManagement.Scene
CS.UnityEngine.SceneManagement.Scene = UnityEngine.SceneManagement.Scene

---@return boolean
function UnityEngine.SceneManagement.Scene:IsValid() end
---@overload fun() : UnityEngine.GameObject[]
---@param rootGameObjects System.Collections.Generic.List
function UnityEngine.SceneManagement.Scene:GetRootGameObjects(rootGameObjects) end
---@return number
function UnityEngine.SceneManagement.Scene:GetHashCode() end
---@param other System.Object
---@return boolean
function UnityEngine.SceneManagement.Scene:Equals(other) end
---@return UnityEngine.PhysicsScene
function UnityEngine.SceneManagement.Scene:GetPhysicsScene() end
---@return UnityEngine.PhysicsScene2D
function UnityEngine.SceneManagement.Scene:GetPhysicsScene2D() end

---@class UnityEngine.SceneManagement.Scene.LoadingState
---@field NotLoaded UnityEngine.SceneManagement.Scene.LoadingState
---@field Loading UnityEngine.SceneManagement.Scene.LoadingState
---@field Loaded UnityEngine.SceneManagement.Scene.LoadingState
---@field Unloading UnityEngine.SceneManagement.Scene.LoadingState
UnityEngine.SceneManagement.Scene.LoadingState = {}
---@alias CS.UnityEngine.SceneManagement.Scene.LoadingState UnityEngine.SceneManagement.Scene.LoadingState
CS.UnityEngine.SceneManagement.Scene.LoadingState = UnityEngine.SceneManagement.Scene.LoadingState


---@class UnityEngine.SceneManagement.SceneManagerAPIInternal : System.Object
UnityEngine.SceneManagement.SceneManagerAPIInternal = {}
---@alias CS.UnityEngine.SceneManagement.SceneManagerAPIInternal UnityEngine.SceneManagement.SceneManagerAPIInternal
CS.UnityEngine.SceneManagement.SceneManagerAPIInternal = UnityEngine.SceneManagement.SceneManagerAPIInternal

---@return number
function UnityEngine.SceneManagement.SceneManagerAPIInternal.GetNumScenesInBuildSettings() end
---@param buildIndex number
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManagerAPIInternal.GetSceneByBuildIndex(buildIndex) end
---@param sceneName string
---@param sceneBuildIndex number
---@param parameters UnityEngine.SceneManagement.LoadSceneParameters
---@param mustCompleteNextFrame boolean
---@return UnityEngine.AsyncOperation
function UnityEngine.SceneManagement.SceneManagerAPIInternal.LoadSceneAsyncNameIndexInternal(sceneName, sceneBuildIndex, parameters, mustCompleteNextFrame) end
---@param sceneName string
---@param sceneBuildIndex number
---@param immediately boolean
---@param options UnityEngine.SceneManagement.UnloadSceneOptions
---@param out_outSuccess boolean
---@return UnityEngine.AsyncOperation,boolean
function UnityEngine.SceneManagement.SceneManagerAPIInternal.UnloadSceneNameIndexInternal(sceneName, sceneBuildIndex, immediately, options, out_outSuccess) end

---@class UnityEngine.SceneManagement.SceneManagerAPI : System.Object
---@field overrideAPI UnityEngine.SceneManagement.SceneManagerAPI
UnityEngine.SceneManagement.SceneManagerAPI = {}
---@alias CS.UnityEngine.SceneManagement.SceneManagerAPI UnityEngine.SceneManagement.SceneManagerAPI
CS.UnityEngine.SceneManagement.SceneManagerAPI = UnityEngine.SceneManagement.SceneManagerAPI


---@class UnityEngine.SceneManagement.SceneManager : System.Object
---@field sceneCount number
---@field loadedSceneCount number
---@field sceneCountInBuildSettings number
UnityEngine.SceneManagement.SceneManager = {}
---@alias CS.UnityEngine.SceneManagement.SceneManager UnityEngine.SceneManagement.SceneManager
CS.UnityEngine.SceneManagement.SceneManager = UnityEngine.SceneManagement.SceneManager

---@return UnityEngine.SceneManagement.SceneManager
function UnityEngine.SceneManagement.SceneManager.New() end
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetActiveScene() end
---@param scene UnityEngine.SceneManagement.Scene
---@return boolean
function UnityEngine.SceneManagement.SceneManager.SetActiveScene(scene) end
---@param scenePath string
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneByPath(scenePath) end
---@param name string
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneByName(name) end
---@param buildIndex number
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneByBuildIndex(buildIndex) end
---@param index number
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.GetSceneAt(index) end
---@overload fun(sceneName: string, parameters: UnityEngine.SceneManagement.CreateSceneParameters) : UnityEngine.SceneManagement.Scene
---@param sceneName string
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.CreateScene(sceneName) end
---@param sourceScene UnityEngine.SceneManagement.Scene
---@param destinationScene UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.MergeScenes(sourceScene, destinationScene) end
---@param go UnityEngine.GameObject
---@param scene UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.MoveGameObjectToScene(go, scene) end
---@param instanceIDs Unity.Collections.NativeArray
---@param scene UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.MoveGameObjectsToScene(instanceIDs, scene) end
---@overload fun(sceneName: string, mode: UnityEngine.SceneManagement.LoadSceneMode)
---@overload fun(sceneName: string)
---@overload fun(sceneName: string, parameters: UnityEngine.SceneManagement.LoadSceneParameters) : UnityEngine.SceneManagement.Scene
---@overload fun(sceneBuildIndex: number, mode: UnityEngine.SceneManagement.LoadSceneMode)
---@overload fun(sceneBuildIndex: number)
---@param sceneBuildIndex number
---@param parameters UnityEngine.SceneManagement.LoadSceneParameters
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.SceneManagement.SceneManager.LoadScene(sceneBuildIndex, parameters) end
---@overload fun(sceneBuildIndex: number, mode: UnityEngine.SceneManagement.LoadSceneMode) : UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex: number) : UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex: number, parameters: UnityEngine.SceneManagement.LoadSceneParameters) : UnityEngine.AsyncOperation
---@overload fun(sceneName: string, mode: UnityEngine.SceneManagement.LoadSceneMode) : UnityEngine.AsyncOperation
---@overload fun(sceneName: string) : UnityEngine.AsyncOperation
---@param sceneName string
---@param parameters UnityEngine.SceneManagement.LoadSceneParameters
---@return UnityEngine.AsyncOperation
function UnityEngine.SceneManagement.SceneManager.LoadSceneAsync(sceneName, parameters) end
---@overload fun(sceneBuildIndex: number) : UnityEngine.AsyncOperation
---@overload fun(sceneName: string) : UnityEngine.AsyncOperation
---@overload fun(scene: UnityEngine.SceneManagement.Scene) : UnityEngine.AsyncOperation
---@overload fun(sceneBuildIndex: number, options: UnityEngine.SceneManagement.UnloadSceneOptions) : UnityEngine.AsyncOperation
---@overload fun(sceneName: string, options: UnityEngine.SceneManagement.UnloadSceneOptions) : UnityEngine.AsyncOperation
---@param scene UnityEngine.SceneManagement.Scene
---@param options UnityEngine.SceneManagement.UnloadSceneOptions
---@return UnityEngine.AsyncOperation
function UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync(scene, options) end

---@class UnityEngine.SceneManagement.LoadSceneMode
---@field Single UnityEngine.SceneManagement.LoadSceneMode
---@field Additive UnityEngine.SceneManagement.LoadSceneMode
UnityEngine.SceneManagement.LoadSceneMode = {}
---@alias CS.UnityEngine.SceneManagement.LoadSceneMode UnityEngine.SceneManagement.LoadSceneMode
CS.UnityEngine.SceneManagement.LoadSceneMode = UnityEngine.SceneManagement.LoadSceneMode


---@class UnityEngine.SceneManagement.LocalPhysicsMode
---@field None UnityEngine.SceneManagement.LocalPhysicsMode
---@field Physics2D UnityEngine.SceneManagement.LocalPhysicsMode
---@field Physics3D UnityEngine.SceneManagement.LocalPhysicsMode
UnityEngine.SceneManagement.LocalPhysicsMode = {}
---@alias CS.UnityEngine.SceneManagement.LocalPhysicsMode UnityEngine.SceneManagement.LocalPhysicsMode
CS.UnityEngine.SceneManagement.LocalPhysicsMode = UnityEngine.SceneManagement.LocalPhysicsMode


---@class UnityEngine.SceneManagement.LoadSceneParameters : System.ValueType
---@field loadSceneMode UnityEngine.SceneManagement.LoadSceneMode
---@field localPhysicsMode UnityEngine.SceneManagement.LocalPhysicsMode
UnityEngine.SceneManagement.LoadSceneParameters = {}
---@alias CS.UnityEngine.SceneManagement.LoadSceneParameters UnityEngine.SceneManagement.LoadSceneParameters
CS.UnityEngine.SceneManagement.LoadSceneParameters = UnityEngine.SceneManagement.LoadSceneParameters

---@overload fun(mode: UnityEngine.SceneManagement.LoadSceneMode) : UnityEngine.SceneManagement.LoadSceneParameters
---@param mode UnityEngine.SceneManagement.LoadSceneMode
---@param physicsMode UnityEngine.SceneManagement.LocalPhysicsMode
---@return UnityEngine.SceneManagement.LoadSceneParameters
function UnityEngine.SceneManagement.LoadSceneParameters.New(mode, physicsMode) end

---@class UnityEngine.SceneManagement.CreateSceneParameters : System.ValueType
---@field localPhysicsMode UnityEngine.SceneManagement.LocalPhysicsMode
UnityEngine.SceneManagement.CreateSceneParameters = {}
---@alias CS.UnityEngine.SceneManagement.CreateSceneParameters UnityEngine.SceneManagement.CreateSceneParameters
CS.UnityEngine.SceneManagement.CreateSceneParameters = UnityEngine.SceneManagement.CreateSceneParameters

---@param physicsMode UnityEngine.SceneManagement.LocalPhysicsMode
---@return UnityEngine.SceneManagement.CreateSceneParameters
function UnityEngine.SceneManagement.CreateSceneParameters.New(physicsMode) end

---@class UnityEngine.SceneManagement.UnloadSceneOptions
---@field None UnityEngine.SceneManagement.UnloadSceneOptions
---@field UnloadAllEmbeddedSceneObjects UnityEngine.SceneManagement.UnloadSceneOptions
UnityEngine.SceneManagement.UnloadSceneOptions = {}
---@alias CS.UnityEngine.SceneManagement.UnloadSceneOptions UnityEngine.SceneManagement.UnloadSceneOptions
CS.UnityEngine.SceneManagement.UnloadSceneOptions = UnityEngine.SceneManagement.UnloadSceneOptions


---@class UnityEngine.SceneManagement.SceneUtility : System.Object
UnityEngine.SceneManagement.SceneUtility = {}
---@alias CS.UnityEngine.SceneManagement.SceneUtility UnityEngine.SceneManagement.SceneUtility
CS.UnityEngine.SceneManagement.SceneUtility = UnityEngine.SceneManagement.SceneUtility

---@param buildIndex number
---@return string
function UnityEngine.SceneManagement.SceneUtility.GetScenePathByBuildIndex(buildIndex) end
---@param scenePath string
---@return number
function UnityEngine.SceneManagement.SceneUtility.GetBuildIndexByScenePath(scenePath) end

---@class UnityEngine.LowLevel.PlayerLoopSystemInternal : System.ValueType
---@field type System.Type
---@field updateDelegate UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction
---@field updateFunction System.IntPtr
---@field loopConditionFunction System.IntPtr
---@field numSubSystems number
UnityEngine.LowLevel.PlayerLoopSystemInternal = {}
---@alias CS.UnityEngine.LowLevel.PlayerLoopSystemInternal UnityEngine.LowLevel.PlayerLoopSystemInternal
CS.UnityEngine.LowLevel.PlayerLoopSystemInternal = UnityEngine.LowLevel.PlayerLoopSystemInternal


---@class UnityEngine.LowLevel.PlayerLoopSystem : System.ValueType
---@field type System.Type
---@field subSystemList UnityEngine.LowLevel.PlayerLoopSystem[]
---@field updateDelegate UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction
---@field updateFunction System.IntPtr
---@field loopConditionFunction System.IntPtr
UnityEngine.LowLevel.PlayerLoopSystem = {}
---@alias CS.UnityEngine.LowLevel.PlayerLoopSystem UnityEngine.LowLevel.PlayerLoopSystem
CS.UnityEngine.LowLevel.PlayerLoopSystem = UnityEngine.LowLevel.PlayerLoopSystem

---@return string
function UnityEngine.LowLevel.PlayerLoopSystem:ToString() end

---@class UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction : System.MulticastDelegate
UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction = {}
---@alias CS.UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction
CS.UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction = UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction
function UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction.New(object, method) end
function UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.LowLevel.PlayerLoopSystem.UpdateFunction:EndInvoke(result) end

---@class UnityEngine.LowLevel.PlayerLoop : System.Object
UnityEngine.LowLevel.PlayerLoop = {}
---@alias CS.UnityEngine.LowLevel.PlayerLoop UnityEngine.LowLevel.PlayerLoop
CS.UnityEngine.LowLevel.PlayerLoop = UnityEngine.LowLevel.PlayerLoop

---@return UnityEngine.LowLevel.PlayerLoop
function UnityEngine.LowLevel.PlayerLoop.New() end
---@return UnityEngine.LowLevel.PlayerLoopSystem
function UnityEngine.LowLevel.PlayerLoop.GetDefaultPlayerLoop() end
---@return UnityEngine.LowLevel.PlayerLoopSystem
function UnityEngine.LowLevel.PlayerLoop.GetCurrentPlayerLoop() end
---@param loop UnityEngine.LowLevel.PlayerLoopSystem
function UnityEngine.LowLevel.PlayerLoop.SetPlayerLoop(loop) end

---@class UnityEngine.PlayerLoop.TimeUpdate : System.ValueType
UnityEngine.PlayerLoop.TimeUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.TimeUpdate UnityEngine.PlayerLoop.TimeUpdate
CS.UnityEngine.PlayerLoop.TimeUpdate = UnityEngine.PlayerLoop.TimeUpdate


---@class UnityEngine.PlayerLoop.TimeUpdate.WaitForLastPresentationAndUpdateTime : System.ValueType
UnityEngine.PlayerLoop.TimeUpdate.WaitForLastPresentationAndUpdateTime = {}
---@alias CS.UnityEngine.PlayerLoop.TimeUpdate.WaitForLastPresentationAndUpdateTime UnityEngine.PlayerLoop.TimeUpdate.WaitForLastPresentationAndUpdateTime
CS.UnityEngine.PlayerLoop.TimeUpdate.WaitForLastPresentationAndUpdateTime = UnityEngine.PlayerLoop.TimeUpdate.WaitForLastPresentationAndUpdateTime


---@class UnityEngine.PlayerLoop.TimeUpdate.ProfilerStartFrame : System.ValueType
UnityEngine.PlayerLoop.TimeUpdate.ProfilerStartFrame = {}
---@alias CS.UnityEngine.PlayerLoop.TimeUpdate.ProfilerStartFrame UnityEngine.PlayerLoop.TimeUpdate.ProfilerStartFrame
CS.UnityEngine.PlayerLoop.TimeUpdate.ProfilerStartFrame = UnityEngine.PlayerLoop.TimeUpdate.ProfilerStartFrame


---@class UnityEngine.PlayerLoop.Initialization : System.ValueType
UnityEngine.PlayerLoop.Initialization = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization UnityEngine.PlayerLoop.Initialization
CS.UnityEngine.PlayerLoop.Initialization = UnityEngine.PlayerLoop.Initialization


---@class UnityEngine.PlayerLoop.Initialization.ProfilerStartFrame : System.ValueType
UnityEngine.PlayerLoop.Initialization.ProfilerStartFrame = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.ProfilerStartFrame UnityEngine.PlayerLoop.Initialization.ProfilerStartFrame
CS.UnityEngine.PlayerLoop.Initialization.ProfilerStartFrame = UnityEngine.PlayerLoop.Initialization.ProfilerStartFrame


---@class UnityEngine.PlayerLoop.Initialization.PlayerUpdateTime : System.ValueType
UnityEngine.PlayerLoop.Initialization.PlayerUpdateTime = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.PlayerUpdateTime UnityEngine.PlayerLoop.Initialization.PlayerUpdateTime
CS.UnityEngine.PlayerLoop.Initialization.PlayerUpdateTime = UnityEngine.PlayerLoop.Initialization.PlayerUpdateTime


---@class UnityEngine.PlayerLoop.Initialization.UpdateCameraMotionVectors : System.ValueType
UnityEngine.PlayerLoop.Initialization.UpdateCameraMotionVectors = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.UpdateCameraMotionVectors UnityEngine.PlayerLoop.Initialization.UpdateCameraMotionVectors
CS.UnityEngine.PlayerLoop.Initialization.UpdateCameraMotionVectors = UnityEngine.PlayerLoop.Initialization.UpdateCameraMotionVectors


---@class UnityEngine.PlayerLoop.Initialization.DirectorSampleTime : System.ValueType
UnityEngine.PlayerLoop.Initialization.DirectorSampleTime = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.DirectorSampleTime UnityEngine.PlayerLoop.Initialization.DirectorSampleTime
CS.UnityEngine.PlayerLoop.Initialization.DirectorSampleTime = UnityEngine.PlayerLoop.Initialization.DirectorSampleTime


---@class UnityEngine.PlayerLoop.Initialization.AsyncUploadTimeSlicedUpdate : System.ValueType
UnityEngine.PlayerLoop.Initialization.AsyncUploadTimeSlicedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.AsyncUploadTimeSlicedUpdate UnityEngine.PlayerLoop.Initialization.AsyncUploadTimeSlicedUpdate
CS.UnityEngine.PlayerLoop.Initialization.AsyncUploadTimeSlicedUpdate = UnityEngine.PlayerLoop.Initialization.AsyncUploadTimeSlicedUpdate


---@class UnityEngine.PlayerLoop.Initialization.SynchronizeState : System.ValueType
UnityEngine.PlayerLoop.Initialization.SynchronizeState = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.SynchronizeState UnityEngine.PlayerLoop.Initialization.SynchronizeState
CS.UnityEngine.PlayerLoop.Initialization.SynchronizeState = UnityEngine.PlayerLoop.Initialization.SynchronizeState


---@class UnityEngine.PlayerLoop.Initialization.SynchronizeInputs : System.ValueType
UnityEngine.PlayerLoop.Initialization.SynchronizeInputs = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.SynchronizeInputs UnityEngine.PlayerLoop.Initialization.SynchronizeInputs
CS.UnityEngine.PlayerLoop.Initialization.SynchronizeInputs = UnityEngine.PlayerLoop.Initialization.SynchronizeInputs


---@class UnityEngine.PlayerLoop.Initialization.XREarlyUpdate : System.ValueType
UnityEngine.PlayerLoop.Initialization.XREarlyUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.Initialization.XREarlyUpdate UnityEngine.PlayerLoop.Initialization.XREarlyUpdate
CS.UnityEngine.PlayerLoop.Initialization.XREarlyUpdate = UnityEngine.PlayerLoop.Initialization.XREarlyUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate UnityEngine.PlayerLoop.EarlyUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate = UnityEngine.PlayerLoop.EarlyUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.PollPlayerConnection : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.PollPlayerConnection = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.PollPlayerConnection UnityEngine.PlayerLoop.EarlyUpdate.PollPlayerConnection
CS.UnityEngine.PlayerLoop.EarlyUpdate.PollPlayerConnection = UnityEngine.PlayerLoop.EarlyUpdate.PollPlayerConnection


---@class UnityEngine.PlayerLoop.EarlyUpdate.ProfilerStartFrame : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ProfilerStartFrame = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ProfilerStartFrame UnityEngine.PlayerLoop.EarlyUpdate.ProfilerStartFrame
CS.UnityEngine.PlayerLoop.EarlyUpdate.ProfilerStartFrame = UnityEngine.PlayerLoop.EarlyUpdate.ProfilerStartFrame


---@class UnityEngine.PlayerLoop.EarlyUpdate.PollHtcsPlayerConnection : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.PollHtcsPlayerConnection = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.PollHtcsPlayerConnection UnityEngine.PlayerLoop.EarlyUpdate.PollHtcsPlayerConnection
CS.UnityEngine.PlayerLoop.EarlyUpdate.PollHtcsPlayerConnection = UnityEngine.PlayerLoop.EarlyUpdate.PollHtcsPlayerConnection


---@class UnityEngine.PlayerLoop.EarlyUpdate.GpuTimestamp : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.GpuTimestamp = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.GpuTimestamp UnityEngine.PlayerLoop.EarlyUpdate.GpuTimestamp
CS.UnityEngine.PlayerLoop.EarlyUpdate.GpuTimestamp = UnityEngine.PlayerLoop.EarlyUpdate.GpuTimestamp


---@class UnityEngine.PlayerLoop.EarlyUpdate.AnalyticsCoreStatsUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.AnalyticsCoreStatsUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.AnalyticsCoreStatsUpdate UnityEngine.PlayerLoop.EarlyUpdate.AnalyticsCoreStatsUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.AnalyticsCoreStatsUpdate = UnityEngine.PlayerLoop.EarlyUpdate.AnalyticsCoreStatsUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.UnityWebRequestUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UnityWebRequestUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UnityWebRequestUpdate UnityEngine.PlayerLoop.EarlyUpdate.UnityWebRequestUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.UnityWebRequestUpdate = UnityEngine.PlayerLoop.EarlyUpdate.UnityWebRequestUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateStreamingManager : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateStreamingManager = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateStreamingManager UnityEngine.PlayerLoop.EarlyUpdate.UpdateStreamingManager
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateStreamingManager = UnityEngine.PlayerLoop.EarlyUpdate.UpdateStreamingManager


---@class UnityEngine.PlayerLoop.EarlyUpdate.ExecuteMainThreadJobs : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ExecuteMainThreadJobs = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ExecuteMainThreadJobs UnityEngine.PlayerLoop.EarlyUpdate.ExecuteMainThreadJobs
CS.UnityEngine.PlayerLoop.EarlyUpdate.ExecuteMainThreadJobs = UnityEngine.PlayerLoop.EarlyUpdate.ExecuteMainThreadJobs


---@class UnityEngine.PlayerLoop.EarlyUpdate.ProcessMouseInWindow : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ProcessMouseInWindow = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ProcessMouseInWindow UnityEngine.PlayerLoop.EarlyUpdate.ProcessMouseInWindow
CS.UnityEngine.PlayerLoop.EarlyUpdate.ProcessMouseInWindow = UnityEngine.PlayerLoop.EarlyUpdate.ProcessMouseInWindow


---@class UnityEngine.PlayerLoop.EarlyUpdate.ClearIntermediateRenderers : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ClearIntermediateRenderers = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ClearIntermediateRenderers UnityEngine.PlayerLoop.EarlyUpdate.ClearIntermediateRenderers
CS.UnityEngine.PlayerLoop.EarlyUpdate.ClearIntermediateRenderers = UnityEngine.PlayerLoop.EarlyUpdate.ClearIntermediateRenderers


---@class UnityEngine.PlayerLoop.EarlyUpdate.ClearLines : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ClearLines = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ClearLines UnityEngine.PlayerLoop.EarlyUpdate.ClearLines
CS.UnityEngine.PlayerLoop.EarlyUpdate.ClearLines = UnityEngine.PlayerLoop.EarlyUpdate.ClearLines


---@class UnityEngine.PlayerLoop.EarlyUpdate.PresentBeforeUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.PresentBeforeUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.PresentBeforeUpdate UnityEngine.PlayerLoop.EarlyUpdate.PresentBeforeUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.PresentBeforeUpdate = UnityEngine.PlayerLoop.EarlyUpdate.PresentBeforeUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.ResetFrameStatsAfterPresent : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ResetFrameStatsAfterPresent = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ResetFrameStatsAfterPresent UnityEngine.PlayerLoop.EarlyUpdate.ResetFrameStatsAfterPresent
CS.UnityEngine.PlayerLoop.EarlyUpdate.ResetFrameStatsAfterPresent = UnityEngine.PlayerLoop.EarlyUpdate.ResetFrameStatsAfterPresent


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncReadbackManager : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncReadbackManager = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncReadbackManager UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncReadbackManager
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncReadbackManager = UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncReadbackManager


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateTextureStreamingManager : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateTextureStreamingManager = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateTextureStreamingManager UnityEngine.PlayerLoop.EarlyUpdate.UpdateTextureStreamingManager
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateTextureStreamingManager = UnityEngine.PlayerLoop.EarlyUpdate.UpdateTextureStreamingManager


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdatePreloading : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdatePreloading = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdatePreloading UnityEngine.PlayerLoop.EarlyUpdate.UpdatePreloading
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdatePreloading = UnityEngine.PlayerLoop.EarlyUpdate.UpdatePreloading


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateContentLoading : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateContentLoading = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateContentLoading UnityEngine.PlayerLoop.EarlyUpdate.UpdateContentLoading
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateContentLoading = UnityEngine.PlayerLoop.EarlyUpdate.UpdateContentLoading


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncInstantiate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncInstantiate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncInstantiate UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncInstantiate
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncInstantiate = UnityEngine.PlayerLoop.EarlyUpdate.UpdateAsyncInstantiate


---@class UnityEngine.PlayerLoop.EarlyUpdate.RendererNotifyInvisible : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.RendererNotifyInvisible = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.RendererNotifyInvisible UnityEngine.PlayerLoop.EarlyUpdate.RendererNotifyInvisible
CS.UnityEngine.PlayerLoop.EarlyUpdate.RendererNotifyInvisible = UnityEngine.PlayerLoop.EarlyUpdate.RendererNotifyInvisible


---@class UnityEngine.PlayerLoop.EarlyUpdate.PlayerCleanupCachedData : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.PlayerCleanupCachedData = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.PlayerCleanupCachedData UnityEngine.PlayerLoop.EarlyUpdate.PlayerCleanupCachedData
CS.UnityEngine.PlayerLoop.EarlyUpdate.PlayerCleanupCachedData = UnityEngine.PlayerLoop.EarlyUpdate.PlayerCleanupCachedData


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateMainGameViewRect : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateMainGameViewRect = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateMainGameViewRect UnityEngine.PlayerLoop.EarlyUpdate.UpdateMainGameViewRect
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateMainGameViewRect = UnityEngine.PlayerLoop.EarlyUpdate.UpdateMainGameViewRect


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateCanvasRectTransform : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateCanvasRectTransform = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateCanvasRectTransform UnityEngine.PlayerLoop.EarlyUpdate.UpdateCanvasRectTransform
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateCanvasRectTransform = UnityEngine.PlayerLoop.EarlyUpdate.UpdateCanvasRectTransform


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateInputManager : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateInputManager = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateInputManager UnityEngine.PlayerLoop.EarlyUpdate.UpdateInputManager
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateInputManager = UnityEngine.PlayerLoop.EarlyUpdate.UpdateInputManager


---@class UnityEngine.PlayerLoop.EarlyUpdate.ProcessRemoteInput : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ProcessRemoteInput = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ProcessRemoteInput UnityEngine.PlayerLoop.EarlyUpdate.ProcessRemoteInput
CS.UnityEngine.PlayerLoop.EarlyUpdate.ProcessRemoteInput = UnityEngine.PlayerLoop.EarlyUpdate.ProcessRemoteInput


---@class UnityEngine.PlayerLoop.EarlyUpdate.XRUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.XRUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.XRUpdate UnityEngine.PlayerLoop.EarlyUpdate.XRUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.XRUpdate = UnityEngine.PlayerLoop.EarlyUpdate.XRUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.ScriptRunDelayedStartupFrame : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ScriptRunDelayedStartupFrame = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ScriptRunDelayedStartupFrame UnityEngine.PlayerLoop.EarlyUpdate.ScriptRunDelayedStartupFrame
CS.UnityEngine.PlayerLoop.EarlyUpdate.ScriptRunDelayedStartupFrame = UnityEngine.PlayerLoop.EarlyUpdate.ScriptRunDelayedStartupFrame


---@class UnityEngine.PlayerLoop.EarlyUpdate.UpdateKinect : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.UpdateKinect = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateKinect UnityEngine.PlayerLoop.EarlyUpdate.UpdateKinect
CS.UnityEngine.PlayerLoop.EarlyUpdate.UpdateKinect = UnityEngine.PlayerLoop.EarlyUpdate.UpdateKinect


---@class UnityEngine.PlayerLoop.EarlyUpdate.DeliverIosPlatformEvents : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.DeliverIosPlatformEvents = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.DeliverIosPlatformEvents UnityEngine.PlayerLoop.EarlyUpdate.DeliverIosPlatformEvents
CS.UnityEngine.PlayerLoop.EarlyUpdate.DeliverIosPlatformEvents = UnityEngine.PlayerLoop.EarlyUpdate.DeliverIosPlatformEvents


---@class UnityEngine.PlayerLoop.EarlyUpdate.DispatchEventQueueEvents : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.DispatchEventQueueEvents = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.DispatchEventQueueEvents UnityEngine.PlayerLoop.EarlyUpdate.DispatchEventQueueEvents
CS.UnityEngine.PlayerLoop.EarlyUpdate.DispatchEventQueueEvents = UnityEngine.PlayerLoop.EarlyUpdate.DispatchEventQueueEvents


---@class UnityEngine.PlayerLoop.EarlyUpdate.Physics2DEarlyUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.Physics2DEarlyUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.Physics2DEarlyUpdate UnityEngine.PlayerLoop.EarlyUpdate.Physics2DEarlyUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.Physics2DEarlyUpdate = UnityEngine.PlayerLoop.EarlyUpdate.Physics2DEarlyUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.PhysicsResetInterpolatedTransformPosition : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.PhysicsResetInterpolatedTransformPosition = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.PhysicsResetInterpolatedTransformPosition UnityEngine.PlayerLoop.EarlyUpdate.PhysicsResetInterpolatedTransformPosition
CS.UnityEngine.PlayerLoop.EarlyUpdate.PhysicsResetInterpolatedTransformPosition = UnityEngine.PlayerLoop.EarlyUpdate.PhysicsResetInterpolatedTransformPosition


---@class UnityEngine.PlayerLoop.EarlyUpdate.SpriteAtlasManagerUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.SpriteAtlasManagerUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.SpriteAtlasManagerUpdate UnityEngine.PlayerLoop.EarlyUpdate.SpriteAtlasManagerUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.SpriteAtlasManagerUpdate = UnityEngine.PlayerLoop.EarlyUpdate.SpriteAtlasManagerUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.TangoUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.TangoUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.TangoUpdate UnityEngine.PlayerLoop.EarlyUpdate.TangoUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.TangoUpdate = UnityEngine.PlayerLoop.EarlyUpdate.TangoUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.ARCoreUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.ARCoreUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.ARCoreUpdate UnityEngine.PlayerLoop.EarlyUpdate.ARCoreUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.ARCoreUpdate = UnityEngine.PlayerLoop.EarlyUpdate.ARCoreUpdate


---@class UnityEngine.PlayerLoop.EarlyUpdate.PerformanceAnalyticsUpdate : System.ValueType
UnityEngine.PlayerLoop.EarlyUpdate.PerformanceAnalyticsUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.EarlyUpdate.PerformanceAnalyticsUpdate UnityEngine.PlayerLoop.EarlyUpdate.PerformanceAnalyticsUpdate
CS.UnityEngine.PlayerLoop.EarlyUpdate.PerformanceAnalyticsUpdate = UnityEngine.PlayerLoop.EarlyUpdate.PerformanceAnalyticsUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate UnityEngine.PlayerLoop.FixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate = UnityEngine.PlayerLoop.FixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.ClearLines : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.ClearLines = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.ClearLines UnityEngine.PlayerLoop.FixedUpdate.ClearLines
CS.UnityEngine.PlayerLoop.FixedUpdate.ClearLines = UnityEngine.PlayerLoop.FixedUpdate.ClearLines


---@class UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedSampleTime : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedSampleTime = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedSampleTime UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedSampleTime
CS.UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedSampleTime = UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedSampleTime


---@class UnityEngine.PlayerLoop.FixedUpdate.AudioFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.AudioFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.AudioFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.AudioFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.AudioFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.AudioFixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.ScriptRunBehaviourFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.ScriptRunBehaviourFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.ScriptRunBehaviourFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.ScriptRunBehaviourFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.ScriptRunBehaviourFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.ScriptRunBehaviourFixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.LegacyFixedAnimationUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.LegacyFixedAnimationUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.LegacyFixedAnimationUpdate UnityEngine.PlayerLoop.FixedUpdate.LegacyFixedAnimationUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.LegacyFixedAnimationUpdate = UnityEngine.PlayerLoop.FixedUpdate.LegacyFixedAnimationUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.XRFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.XRFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.XRFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.XRFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.XRFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.XRFixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.PhysicsFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.PhysicsFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.PhysicsFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.PhysicsFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.PhysicsFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.PhysicsFixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.Physics2DFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.Physics2DFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.Physics2DFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.Physics2DFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.Physics2DFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.Physics2DFixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.PhysicsClothFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.PhysicsClothFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.PhysicsClothFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.PhysicsClothFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.PhysicsClothFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.PhysicsClothFixedUpdate


---@class UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdatePostPhysics : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdatePostPhysics = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdatePostPhysics UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdatePostPhysics
CS.UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdatePostPhysics = UnityEngine.PlayerLoop.FixedUpdate.DirectorFixedUpdatePostPhysics


---@class UnityEngine.PlayerLoop.FixedUpdate.ScriptRunDelayedFixedFrameRate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.ScriptRunDelayedFixedFrameRate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.ScriptRunDelayedFixedFrameRate UnityEngine.PlayerLoop.FixedUpdate.ScriptRunDelayedFixedFrameRate
CS.UnityEngine.PlayerLoop.FixedUpdate.ScriptRunDelayedFixedFrameRate = UnityEngine.PlayerLoop.FixedUpdate.ScriptRunDelayedFixedFrameRate


---@class UnityEngine.PlayerLoop.FixedUpdate.NewInputFixedUpdate : System.ValueType
UnityEngine.PlayerLoop.FixedUpdate.NewInputFixedUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.FixedUpdate.NewInputFixedUpdate UnityEngine.PlayerLoop.FixedUpdate.NewInputFixedUpdate
CS.UnityEngine.PlayerLoop.FixedUpdate.NewInputFixedUpdate = UnityEngine.PlayerLoop.FixedUpdate.NewInputFixedUpdate


---@class UnityEngine.PlayerLoop.PreUpdate : System.ValueType
UnityEngine.PlayerLoop.PreUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate UnityEngine.PlayerLoop.PreUpdate
CS.UnityEngine.PlayerLoop.PreUpdate = UnityEngine.PlayerLoop.PreUpdate


---@class UnityEngine.PlayerLoop.PreUpdate.PhysicsUpdate : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.PhysicsUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.PhysicsUpdate UnityEngine.PlayerLoop.PreUpdate.PhysicsUpdate
CS.UnityEngine.PlayerLoop.PreUpdate.PhysicsUpdate = UnityEngine.PlayerLoop.PreUpdate.PhysicsUpdate


---@class UnityEngine.PlayerLoop.PreUpdate.Physics2DUpdate : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.Physics2DUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.Physics2DUpdate UnityEngine.PlayerLoop.PreUpdate.Physics2DUpdate
CS.UnityEngine.PlayerLoop.PreUpdate.Physics2DUpdate = UnityEngine.PlayerLoop.PreUpdate.Physics2DUpdate


---@class UnityEngine.PlayerLoop.PreUpdate.PhysicsClothUpdate : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.PhysicsClothUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.PhysicsClothUpdate UnityEngine.PlayerLoop.PreUpdate.PhysicsClothUpdate
CS.UnityEngine.PlayerLoop.PreUpdate.PhysicsClothUpdate = UnityEngine.PlayerLoop.PreUpdate.PhysicsClothUpdate


---@class UnityEngine.PlayerLoop.PreUpdate.CheckTexFieldInput : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.CheckTexFieldInput = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.CheckTexFieldInput UnityEngine.PlayerLoop.PreUpdate.CheckTexFieldInput
CS.UnityEngine.PlayerLoop.PreUpdate.CheckTexFieldInput = UnityEngine.PlayerLoop.PreUpdate.CheckTexFieldInput


---@class UnityEngine.PlayerLoop.PreUpdate.IMGUISendQueuedEvents : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.IMGUISendQueuedEvents = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.IMGUISendQueuedEvents UnityEngine.PlayerLoop.PreUpdate.IMGUISendQueuedEvents
CS.UnityEngine.PlayerLoop.PreUpdate.IMGUISendQueuedEvents = UnityEngine.PlayerLoop.PreUpdate.IMGUISendQueuedEvents


---@class UnityEngine.PlayerLoop.PreUpdate.SendMouseEvents : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.SendMouseEvents = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.SendMouseEvents UnityEngine.PlayerLoop.PreUpdate.SendMouseEvents
CS.UnityEngine.PlayerLoop.PreUpdate.SendMouseEvents = UnityEngine.PlayerLoop.PreUpdate.SendMouseEvents


---@class UnityEngine.PlayerLoop.PreUpdate.AIUpdate : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.AIUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.AIUpdate UnityEngine.PlayerLoop.PreUpdate.AIUpdate
CS.UnityEngine.PlayerLoop.PreUpdate.AIUpdate = UnityEngine.PlayerLoop.PreUpdate.AIUpdate


---@class UnityEngine.PlayerLoop.PreUpdate.WindUpdate : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.WindUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.WindUpdate UnityEngine.PlayerLoop.PreUpdate.WindUpdate
CS.UnityEngine.PlayerLoop.PreUpdate.WindUpdate = UnityEngine.PlayerLoop.PreUpdate.WindUpdate


---@class UnityEngine.PlayerLoop.PreUpdate.UpdateVideo : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.UpdateVideo = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.UpdateVideo UnityEngine.PlayerLoop.PreUpdate.UpdateVideo
CS.UnityEngine.PlayerLoop.PreUpdate.UpdateVideo = UnityEngine.PlayerLoop.PreUpdate.UpdateVideo


---@class UnityEngine.PlayerLoop.PreUpdate.NewInputUpdate : System.ValueType
UnityEngine.PlayerLoop.PreUpdate.NewInputUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreUpdate.NewInputUpdate UnityEngine.PlayerLoop.PreUpdate.NewInputUpdate
CS.UnityEngine.PlayerLoop.PreUpdate.NewInputUpdate = UnityEngine.PlayerLoop.PreUpdate.NewInputUpdate


---@class UnityEngine.PlayerLoop.Update : System.ValueType
UnityEngine.PlayerLoop.Update = {}
---@alias CS.UnityEngine.PlayerLoop.Update UnityEngine.PlayerLoop.Update
CS.UnityEngine.PlayerLoop.Update = UnityEngine.PlayerLoop.Update


---@class UnityEngine.PlayerLoop.Update.ScriptRunBehaviourUpdate : System.ValueType
UnityEngine.PlayerLoop.Update.ScriptRunBehaviourUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.Update.ScriptRunBehaviourUpdate UnityEngine.PlayerLoop.Update.ScriptRunBehaviourUpdate
CS.UnityEngine.PlayerLoop.Update.ScriptRunBehaviourUpdate = UnityEngine.PlayerLoop.Update.ScriptRunBehaviourUpdate


---@class UnityEngine.PlayerLoop.Update.DirectorUpdate : System.ValueType
UnityEngine.PlayerLoop.Update.DirectorUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.Update.DirectorUpdate UnityEngine.PlayerLoop.Update.DirectorUpdate
CS.UnityEngine.PlayerLoop.Update.DirectorUpdate = UnityEngine.PlayerLoop.Update.DirectorUpdate


---@class UnityEngine.PlayerLoop.Update.ScriptRunDelayedDynamicFrameRate : System.ValueType
UnityEngine.PlayerLoop.Update.ScriptRunDelayedDynamicFrameRate = {}
---@alias CS.UnityEngine.PlayerLoop.Update.ScriptRunDelayedDynamicFrameRate UnityEngine.PlayerLoop.Update.ScriptRunDelayedDynamicFrameRate
CS.UnityEngine.PlayerLoop.Update.ScriptRunDelayedDynamicFrameRate = UnityEngine.PlayerLoop.Update.ScriptRunDelayedDynamicFrameRate


---@class UnityEngine.PlayerLoop.Update.ScriptRunDelayedTasks : System.ValueType
UnityEngine.PlayerLoop.Update.ScriptRunDelayedTasks = {}
---@alias CS.UnityEngine.PlayerLoop.Update.ScriptRunDelayedTasks UnityEngine.PlayerLoop.Update.ScriptRunDelayedTasks
CS.UnityEngine.PlayerLoop.Update.ScriptRunDelayedTasks = UnityEngine.PlayerLoop.Update.ScriptRunDelayedTasks


---@class UnityEngine.PlayerLoop.PreLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate UnityEngine.PlayerLoop.PreLateUpdate
CS.UnityEngine.PlayerLoop.PreLateUpdate = UnityEngine.PlayerLoop.PreLateUpdate


---@class UnityEngine.PlayerLoop.PreLateUpdate.Physics2DLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.Physics2DLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.Physics2DLateUpdate UnityEngine.PlayerLoop.PreLateUpdate.Physics2DLateUpdate
CS.UnityEngine.PlayerLoop.PreLateUpdate.Physics2DLateUpdate = UnityEngine.PlayerLoop.PreLateUpdate.Physics2DLateUpdate


---@class UnityEngine.PlayerLoop.PreLateUpdate.PhysicsLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.PhysicsLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.PhysicsLateUpdate UnityEngine.PlayerLoop.PreLateUpdate.PhysicsLateUpdate
CS.UnityEngine.PlayerLoop.PreLateUpdate.PhysicsLateUpdate = UnityEngine.PlayerLoop.PreLateUpdate.PhysicsLateUpdate


---@class UnityEngine.PlayerLoop.PreLateUpdate.AIUpdatePostScript : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.AIUpdatePostScript = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.AIUpdatePostScript UnityEngine.PlayerLoop.PreLateUpdate.AIUpdatePostScript
CS.UnityEngine.PlayerLoop.PreLateUpdate.AIUpdatePostScript = UnityEngine.PlayerLoop.PreLateUpdate.AIUpdatePostScript


---@class UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationBegin : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationBegin = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationBegin UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationBegin
CS.UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationBegin = UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationBegin


---@class UnityEngine.PlayerLoop.PreLateUpdate.LegacyAnimationUpdate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.LegacyAnimationUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.LegacyAnimationUpdate UnityEngine.PlayerLoop.PreLateUpdate.LegacyAnimationUpdate
CS.UnityEngine.PlayerLoop.PreLateUpdate.LegacyAnimationUpdate = UnityEngine.PlayerLoop.PreLateUpdate.LegacyAnimationUpdate


---@class UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationEnd : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationEnd = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationEnd UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationEnd
CS.UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationEnd = UnityEngine.PlayerLoop.PreLateUpdate.DirectorUpdateAnimationEnd


---@class UnityEngine.PlayerLoop.PreLateUpdate.DirectorDeferredEvaluate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.DirectorDeferredEvaluate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.DirectorDeferredEvaluate UnityEngine.PlayerLoop.PreLateUpdate.DirectorDeferredEvaluate
CS.UnityEngine.PlayerLoop.PreLateUpdate.DirectorDeferredEvaluate = UnityEngine.PlayerLoop.PreLateUpdate.DirectorDeferredEvaluate


---@class UnityEngine.PlayerLoop.PreLateUpdate.UIElementsUpdatePanels : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.UIElementsUpdatePanels = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.UIElementsUpdatePanels UnityEngine.PlayerLoop.PreLateUpdate.UIElementsUpdatePanels
CS.UnityEngine.PlayerLoop.PreLateUpdate.UIElementsUpdatePanels = UnityEngine.PlayerLoop.PreLateUpdate.UIElementsUpdatePanels


---@class UnityEngine.PlayerLoop.PreLateUpdate.UpdateNetworkManager : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.UpdateNetworkManager = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.UpdateNetworkManager UnityEngine.PlayerLoop.PreLateUpdate.UpdateNetworkManager
CS.UnityEngine.PlayerLoop.PreLateUpdate.UpdateNetworkManager = UnityEngine.PlayerLoop.PreLateUpdate.UpdateNetworkManager


---@class UnityEngine.PlayerLoop.PreLateUpdate.UpdateMasterServerInterface : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.UpdateMasterServerInterface = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.UpdateMasterServerInterface UnityEngine.PlayerLoop.PreLateUpdate.UpdateMasterServerInterface
CS.UnityEngine.PlayerLoop.PreLateUpdate.UpdateMasterServerInterface = UnityEngine.PlayerLoop.PreLateUpdate.UpdateMasterServerInterface


---@class UnityEngine.PlayerLoop.PreLateUpdate.EndGraphicsJobsAfterScriptUpdate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.EndGraphicsJobsAfterScriptUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.EndGraphicsJobsAfterScriptUpdate UnityEngine.PlayerLoop.PreLateUpdate.EndGraphicsJobsAfterScriptUpdate
CS.UnityEngine.PlayerLoop.PreLateUpdate.EndGraphicsJobsAfterScriptUpdate = UnityEngine.PlayerLoop.PreLateUpdate.EndGraphicsJobsAfterScriptUpdate


---@class UnityEngine.PlayerLoop.PreLateUpdate.ParticleSystemBeginUpdateAll : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.ParticleSystemBeginUpdateAll = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.ParticleSystemBeginUpdateAll UnityEngine.PlayerLoop.PreLateUpdate.ParticleSystemBeginUpdateAll
CS.UnityEngine.PlayerLoop.PreLateUpdate.ParticleSystemBeginUpdateAll = UnityEngine.PlayerLoop.PreLateUpdate.ParticleSystemBeginUpdateAll


---@class UnityEngine.PlayerLoop.PreLateUpdate.ScriptRunBehaviourLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.ScriptRunBehaviourLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.ScriptRunBehaviourLateUpdate UnityEngine.PlayerLoop.PreLateUpdate.ScriptRunBehaviourLateUpdate
CS.UnityEngine.PlayerLoop.PreLateUpdate.ScriptRunBehaviourLateUpdate = UnityEngine.PlayerLoop.PreLateUpdate.ScriptRunBehaviourLateUpdate


---@class UnityEngine.PlayerLoop.PreLateUpdate.ConstraintManagerUpdate : System.ValueType
UnityEngine.PlayerLoop.PreLateUpdate.ConstraintManagerUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PreLateUpdate.ConstraintManagerUpdate UnityEngine.PlayerLoop.PreLateUpdate.ConstraintManagerUpdate
CS.UnityEngine.PlayerLoop.PreLateUpdate.ConstraintManagerUpdate = UnityEngine.PlayerLoop.PreLateUpdate.ConstraintManagerUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate UnityEngine.PlayerLoop.PostLateUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate = UnityEngine.PlayerLoop.PostLateUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameStarted : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameStarted = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameStarted UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameStarted
CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameStarted = UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameStarted


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateRectTransform : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateRectTransform = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateRectTransform UnityEngine.PlayerLoop.PostLateUpdate.UpdateRectTransform
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateRectTransform = UnityEngine.PlayerLoop.PostLateUpdate.UpdateRectTransform


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateCanvasRectTransform : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateCanvasRectTransform = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateCanvasRectTransform UnityEngine.PlayerLoop.PostLateUpdate.UpdateCanvasRectTransform
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateCanvasRectTransform = UnityEngine.PlayerLoop.PostLateUpdate.UpdateCanvasRectTransform


---@class UnityEngine.PlayerLoop.PostLateUpdate.PlayerUpdateCanvases : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PlayerUpdateCanvases = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerUpdateCanvases UnityEngine.PlayerLoop.PostLateUpdate.PlayerUpdateCanvases
CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerUpdateCanvases = UnityEngine.PlayerLoop.PostLateUpdate.PlayerUpdateCanvases


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateAudio : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateAudio = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateAudio UnityEngine.PlayerLoop.PostLateUpdate.UpdateAudio
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateAudio = UnityEngine.PlayerLoop.PostLateUpdate.UpdateAudio


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideo : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideo = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideo UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideo
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideo = UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideo


---@class UnityEngine.PlayerLoop.PostLateUpdate.DirectorLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.DirectorLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.DirectorLateUpdate UnityEngine.PlayerLoop.PostLateUpdate.DirectorLateUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.DirectorLateUpdate = UnityEngine.PlayerLoop.PostLateUpdate.DirectorLateUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.ScriptRunDelayedDynamicFrameRate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ScriptRunDelayedDynamicFrameRate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ScriptRunDelayedDynamicFrameRate UnityEngine.PlayerLoop.PostLateUpdate.ScriptRunDelayedDynamicFrameRate
CS.UnityEngine.PlayerLoop.PostLateUpdate.ScriptRunDelayedDynamicFrameRate = UnityEngine.PlayerLoop.PostLateUpdate.ScriptRunDelayedDynamicFrameRate


---@class UnityEngine.PlayerLoop.PostLateUpdate.VFXUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.VFXUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.VFXUpdate UnityEngine.PlayerLoop.PostLateUpdate.VFXUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.VFXUpdate = UnityEngine.PlayerLoop.PostLateUpdate.VFXUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.ParticleSystemEndUpdateAll : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ParticleSystemEndUpdateAll = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ParticleSystemEndUpdateAll UnityEngine.PlayerLoop.PostLateUpdate.ParticleSystemEndUpdateAll
CS.UnityEngine.PlayerLoop.PostLateUpdate.ParticleSystemEndUpdateAll = UnityEngine.PlayerLoop.PostLateUpdate.ParticleSystemEndUpdateAll


---@class UnityEngine.PlayerLoop.PostLateUpdate.EndGraphicsJobsAfterScriptLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.EndGraphicsJobsAfterScriptLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.EndGraphicsJobsAfterScriptLateUpdate UnityEngine.PlayerLoop.PostLateUpdate.EndGraphicsJobsAfterScriptLateUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.EndGraphicsJobsAfterScriptLateUpdate = UnityEngine.PlayerLoop.PostLateUpdate.EndGraphicsJobsAfterScriptLateUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateSubstance : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateSubstance = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateSubstance UnityEngine.PlayerLoop.PostLateUpdate.UpdateSubstance
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateSubstance = UnityEngine.PlayerLoop.PostLateUpdate.UpdateSubstance


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateCustomRenderTextures : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateCustomRenderTextures = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateCustomRenderTextures UnityEngine.PlayerLoop.PostLateUpdate.UpdateCustomRenderTextures
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateCustomRenderTextures = UnityEngine.PlayerLoop.PostLateUpdate.UpdateCustomRenderTextures


---@class UnityEngine.PlayerLoop.PostLateUpdate.XRPostLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.XRPostLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.XRPostLateUpdate UnityEngine.PlayerLoop.PostLateUpdate.XRPostLateUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.XRPostLateUpdate = UnityEngine.PlayerLoop.PostLateUpdate.XRPostLateUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllRenderers : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllRenderers = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllRenderers UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllRenderers
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllRenderers = UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllRenderers


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateLightProbeProxyVolumes : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateLightProbeProxyVolumes = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateLightProbeProxyVolumes UnityEngine.PlayerLoop.PostLateUpdate.UpdateLightProbeProxyVolumes
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateLightProbeProxyVolumes = UnityEngine.PlayerLoop.PostLateUpdate.UpdateLightProbeProxyVolumes


---@class UnityEngine.PlayerLoop.PostLateUpdate.EnlightenRuntimeUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.EnlightenRuntimeUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.EnlightenRuntimeUpdate UnityEngine.PlayerLoop.PostLateUpdate.EnlightenRuntimeUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.EnlightenRuntimeUpdate = UnityEngine.PlayerLoop.PostLateUpdate.EnlightenRuntimeUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllSkinnedMeshes : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllSkinnedMeshes = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllSkinnedMeshes UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllSkinnedMeshes
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllSkinnedMeshes = UnityEngine.PlayerLoop.PostLateUpdate.UpdateAllSkinnedMeshes


---@class UnityEngine.PlayerLoop.PostLateUpdate.ProcessWebSendMessages : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ProcessWebSendMessages = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ProcessWebSendMessages UnityEngine.PlayerLoop.PostLateUpdate.ProcessWebSendMessages
CS.UnityEngine.PlayerLoop.PostLateUpdate.ProcessWebSendMessages = UnityEngine.PlayerLoop.PostLateUpdate.ProcessWebSendMessages


---@class UnityEngine.PlayerLoop.PostLateUpdate.SortingGroupsUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.SortingGroupsUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.SortingGroupsUpdate UnityEngine.PlayerLoop.PostLateUpdate.SortingGroupsUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.SortingGroupsUpdate = UnityEngine.PlayerLoop.PostLateUpdate.SortingGroupsUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideoTextures : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideoTextures = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideoTextures UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideoTextures
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideoTextures = UnityEngine.PlayerLoop.PostLateUpdate.UpdateVideoTextures


---@class UnityEngine.PlayerLoop.PostLateUpdate.DirectorRenderImage : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.DirectorRenderImage = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.DirectorRenderImage UnityEngine.PlayerLoop.PostLateUpdate.DirectorRenderImage
CS.UnityEngine.PlayerLoop.PostLateUpdate.DirectorRenderImage = UnityEngine.PlayerLoop.PostLateUpdate.DirectorRenderImage


---@class UnityEngine.PlayerLoop.PostLateUpdate.PlayerEmitCanvasGeometry : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PlayerEmitCanvasGeometry = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerEmitCanvasGeometry UnityEngine.PlayerLoop.PostLateUpdate.PlayerEmitCanvasGeometry
CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerEmitCanvasGeometry = UnityEngine.PlayerLoop.PostLateUpdate.PlayerEmitCanvasGeometry


---@class UnityEngine.PlayerLoop.PostLateUpdate.PlayerRenderUIEBatchModeOffscreen : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PlayerRenderUIEBatchModeOffscreen = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerRenderUIEBatchModeOffscreen UnityEngine.PlayerLoop.PostLateUpdate.PlayerRenderUIEBatchModeOffscreen
CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerRenderUIEBatchModeOffscreen = UnityEngine.PlayerLoop.PostLateUpdate.PlayerRenderUIEBatchModeOffscreen


---@class UnityEngine.PlayerLoop.PostLateUpdate.FinishFrameRendering : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.FinishFrameRendering = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.FinishFrameRendering UnityEngine.PlayerLoop.PostLateUpdate.FinishFrameRendering
CS.UnityEngine.PlayerLoop.PostLateUpdate.FinishFrameRendering = UnityEngine.PlayerLoop.PostLateUpdate.FinishFrameRendering


---@class UnityEngine.PlayerLoop.PostLateUpdate.BatchModeUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.BatchModeUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.BatchModeUpdate UnityEngine.PlayerLoop.PostLateUpdate.BatchModeUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.BatchModeUpdate = UnityEngine.PlayerLoop.PostLateUpdate.BatchModeUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameComplete : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameComplete = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameComplete UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameComplete
CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameComplete = UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFrameComplete


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateCaptureScreenshot : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateCaptureScreenshot = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateCaptureScreenshot UnityEngine.PlayerLoop.PostLateUpdate.UpdateCaptureScreenshot
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateCaptureScreenshot = UnityEngine.PlayerLoop.PostLateUpdate.UpdateCaptureScreenshot


---@class UnityEngine.PlayerLoop.PostLateUpdate.PresentAfterDraw : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PresentAfterDraw = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PresentAfterDraw UnityEngine.PlayerLoop.PostLateUpdate.PresentAfterDraw
CS.UnityEngine.PlayerLoop.PostLateUpdate.PresentAfterDraw = UnityEngine.PlayerLoop.PostLateUpdate.PresentAfterDraw


---@class UnityEngine.PlayerLoop.PostLateUpdate.ClearImmediateRenderers : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ClearImmediateRenderers = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ClearImmediateRenderers UnityEngine.PlayerLoop.PostLateUpdate.ClearImmediateRenderers
CS.UnityEngine.PlayerLoop.PostLateUpdate.ClearImmediateRenderers = UnityEngine.PlayerLoop.PostLateUpdate.ClearImmediateRenderers


---@class UnityEngine.PlayerLoop.PostLateUpdate.XRPostPresent : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.XRPostPresent = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.XRPostPresent UnityEngine.PlayerLoop.PostLateUpdate.XRPostPresent
CS.UnityEngine.PlayerLoop.PostLateUpdate.XRPostPresent = UnityEngine.PlayerLoop.PostLateUpdate.XRPostPresent


---@class UnityEngine.PlayerLoop.PostLateUpdate.UpdateResolution : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.UpdateResolution = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateResolution UnityEngine.PlayerLoop.PostLateUpdate.UpdateResolution
CS.UnityEngine.PlayerLoop.PostLateUpdate.UpdateResolution = UnityEngine.PlayerLoop.PostLateUpdate.UpdateResolution


---@class UnityEngine.PlayerLoop.PostLateUpdate.InputEndFrame : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.InputEndFrame = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.InputEndFrame UnityEngine.PlayerLoop.PostLateUpdate.InputEndFrame
CS.UnityEngine.PlayerLoop.PostLateUpdate.InputEndFrame = UnityEngine.PlayerLoop.PostLateUpdate.InputEndFrame


---@class UnityEngine.PlayerLoop.PostLateUpdate.GUIClearEvents : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.GUIClearEvents = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.GUIClearEvents UnityEngine.PlayerLoop.PostLateUpdate.GUIClearEvents
CS.UnityEngine.PlayerLoop.PostLateUpdate.GUIClearEvents = UnityEngine.PlayerLoop.PostLateUpdate.GUIClearEvents


---@class UnityEngine.PlayerLoop.PostLateUpdate.ShaderHandleErrors : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ShaderHandleErrors = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ShaderHandleErrors UnityEngine.PlayerLoop.PostLateUpdate.ShaderHandleErrors
CS.UnityEngine.PlayerLoop.PostLateUpdate.ShaderHandleErrors = UnityEngine.PlayerLoop.PostLateUpdate.ShaderHandleErrors


---@class UnityEngine.PlayerLoop.PostLateUpdate.ResetInputAxis : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ResetInputAxis = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ResetInputAxis UnityEngine.PlayerLoop.PostLateUpdate.ResetInputAxis
CS.UnityEngine.PlayerLoop.PostLateUpdate.ResetInputAxis = UnityEngine.PlayerLoop.PostLateUpdate.ResetInputAxis


---@class UnityEngine.PlayerLoop.PostLateUpdate.ThreadedLoadingDebug : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ThreadedLoadingDebug = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ThreadedLoadingDebug UnityEngine.PlayerLoop.PostLateUpdate.ThreadedLoadingDebug
CS.UnityEngine.PlayerLoop.PostLateUpdate.ThreadedLoadingDebug = UnityEngine.PlayerLoop.PostLateUpdate.ThreadedLoadingDebug


---@class UnityEngine.PlayerLoop.PostLateUpdate.ProfilerSynchronizeStats : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ProfilerSynchronizeStats = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ProfilerSynchronizeStats UnityEngine.PlayerLoop.PostLateUpdate.ProfilerSynchronizeStats
CS.UnityEngine.PlayerLoop.PostLateUpdate.ProfilerSynchronizeStats = UnityEngine.PlayerLoop.PostLateUpdate.ProfilerSynchronizeStats


---@class UnityEngine.PlayerLoop.PostLateUpdate.MemoryFrameMaintenance : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.MemoryFrameMaintenance = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.MemoryFrameMaintenance UnityEngine.PlayerLoop.PostLateUpdate.MemoryFrameMaintenance
CS.UnityEngine.PlayerLoop.PostLateUpdate.MemoryFrameMaintenance = UnityEngine.PlayerLoop.PostLateUpdate.MemoryFrameMaintenance


---@class UnityEngine.PlayerLoop.PostLateUpdate.ExecuteGameCenterCallbacks : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ExecuteGameCenterCallbacks = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ExecuteGameCenterCallbacks UnityEngine.PlayerLoop.PostLateUpdate.ExecuteGameCenterCallbacks
CS.UnityEngine.PlayerLoop.PostLateUpdate.ExecuteGameCenterCallbacks = UnityEngine.PlayerLoop.PostLateUpdate.ExecuteGameCenterCallbacks


---@class UnityEngine.PlayerLoop.PostLateUpdate.XRPreEndFrame : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.XRPreEndFrame = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.XRPreEndFrame UnityEngine.PlayerLoop.PostLateUpdate.XRPreEndFrame
CS.UnityEngine.PlayerLoop.PostLateUpdate.XRPreEndFrame = UnityEngine.PlayerLoop.PostLateUpdate.XRPreEndFrame


---@class UnityEngine.PlayerLoop.PostLateUpdate.ProfilerEndFrame : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ProfilerEndFrame = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ProfilerEndFrame UnityEngine.PlayerLoop.PostLateUpdate.ProfilerEndFrame
CS.UnityEngine.PlayerLoop.PostLateUpdate.ProfilerEndFrame = UnityEngine.PlayerLoop.PostLateUpdate.ProfilerEndFrame


---@class UnityEngine.PlayerLoop.PostLateUpdate.GraphicsWarmupPreloadedShaders : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.GraphicsWarmupPreloadedShaders = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.GraphicsWarmupPreloadedShaders UnityEngine.PlayerLoop.PostLateUpdate.GraphicsWarmupPreloadedShaders
CS.UnityEngine.PlayerLoop.PostLateUpdate.GraphicsWarmupPreloadedShaders = UnityEngine.PlayerLoop.PostLateUpdate.GraphicsWarmupPreloadedShaders


---@class UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFramePostPresent : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFramePostPresent = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFramePostPresent UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFramePostPresent
CS.UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFramePostPresent = UnityEngine.PlayerLoop.PostLateUpdate.PlayerSendFramePostPresent


---@class UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothBeginUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothBeginUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothBeginUpdate UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothBeginUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothBeginUpdate = UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothBeginUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothFinishUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothFinishUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothFinishUpdate UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothFinishUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothFinishUpdate = UnityEngine.PlayerLoop.PostLateUpdate.PhysicsSkinnedClothFinishUpdate


---@class UnityEngine.PlayerLoop.PostLateUpdate.TriggerEndOfFrameCallbacks : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.TriggerEndOfFrameCallbacks = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.TriggerEndOfFrameCallbacks UnityEngine.PlayerLoop.PostLateUpdate.TriggerEndOfFrameCallbacks
CS.UnityEngine.PlayerLoop.PostLateUpdate.TriggerEndOfFrameCallbacks = UnityEngine.PlayerLoop.PostLateUpdate.TriggerEndOfFrameCallbacks


---@class UnityEngine.PlayerLoop.PostLateUpdate.ObjectDispatcherPostLateUpdate : System.ValueType
UnityEngine.PlayerLoop.PostLateUpdate.ObjectDispatcherPostLateUpdate = {}
---@alias CS.UnityEngine.PlayerLoop.PostLateUpdate.ObjectDispatcherPostLateUpdate UnityEngine.PlayerLoop.PostLateUpdate.ObjectDispatcherPostLateUpdate
CS.UnityEngine.PlayerLoop.PostLateUpdate.ObjectDispatcherPostLateUpdate = UnityEngine.PlayerLoop.PostLateUpdate.ObjectDispatcherPostLateUpdate


---@class UnityEngine.Pool.CollectionPool : System.Object
UnityEngine.Pool.CollectionPool = {}
---@alias CS.UnityEngine.Pool.CollectionPool UnityEngine.Pool.CollectionPool
CS.UnityEngine.Pool.CollectionPool = UnityEngine.Pool.CollectionPool

---@return UnityEngine.Pool.CollectionPool
function UnityEngine.Pool.CollectionPool.New() end
---@overload fun() : TCollection
---@param out_value TCollection
---@return UnityEngine.Pool.PooledObject[TCollection],TCollection
function UnityEngine.Pool.CollectionPool.Get(out_value) end
---@param toRelease TCollection
function UnityEngine.Pool.CollectionPool.Release(toRelease) end

---@class UnityEngine.Pool.ListPool : UnityEngine.Pool.CollectionPool[System.Collections.Generic.List[T],T]
UnityEngine.Pool.ListPool = {}
---@alias CS.UnityEngine.Pool.ListPool UnityEngine.Pool.ListPool
CS.UnityEngine.Pool.ListPool = UnityEngine.Pool.ListPool

---@return UnityEngine.Pool.ListPool
function UnityEngine.Pool.ListPool.New() end

---@class UnityEngine.Pool.HashSetPool : UnityEngine.Pool.CollectionPool[System.Collections.Generic.HashSet[T],T]
UnityEngine.Pool.HashSetPool = {}
---@alias CS.UnityEngine.Pool.HashSetPool UnityEngine.Pool.HashSetPool
CS.UnityEngine.Pool.HashSetPool = UnityEngine.Pool.HashSetPool

---@return UnityEngine.Pool.HashSetPool
function UnityEngine.Pool.HashSetPool.New() end

---@class UnityEngine.Pool.DictionaryPool : UnityEngine.Pool.CollectionPool[System.Collections.Generic.Dictionary[TKey,TValue],System.Collections.Generic.KeyValuePair[TKey,TValue]]
UnityEngine.Pool.DictionaryPool = {}
---@alias CS.UnityEngine.Pool.DictionaryPool UnityEngine.Pool.DictionaryPool
CS.UnityEngine.Pool.DictionaryPool = UnityEngine.Pool.DictionaryPool

---@return UnityEngine.Pool.DictionaryPool
function UnityEngine.Pool.DictionaryPool.New() end

---@class UnityEngine.Pool.GenericPool : System.Object
UnityEngine.Pool.GenericPool = {}
---@alias CS.UnityEngine.Pool.GenericPool UnityEngine.Pool.GenericPool
CS.UnityEngine.Pool.GenericPool = UnityEngine.Pool.GenericPool

---@return UnityEngine.Pool.GenericPool
function UnityEngine.Pool.GenericPool.New() end
---@overload fun() : T
---@param out_value T
---@return UnityEngine.Pool.PooledObject[T],T
function UnityEngine.Pool.GenericPool.Get(out_value) end
---@param toRelease T
function UnityEngine.Pool.GenericPool.Release(toRelease) end

---@class UnityEngine.Pool.IObjectPool
---@field CountInactive number
UnityEngine.Pool.IObjectPool = {}
---@alias CS.UnityEngine.Pool.IObjectPool UnityEngine.Pool.IObjectPool
CS.UnityEngine.Pool.IObjectPool = UnityEngine.Pool.IObjectPool

---@overload fun() : T
---@param out_v T
---@return UnityEngine.Pool.PooledObject[T],T
function UnityEngine.Pool.IObjectPool:Get(out_v) end
---@param element T
function UnityEngine.Pool.IObjectPool:Release(element) end
function UnityEngine.Pool.IObjectPool:Clear() end

---@class UnityEngine.Pool.LinkedPool : System.Object
---@field CountInactive number
UnityEngine.Pool.LinkedPool = {}
---@alias CS.UnityEngine.Pool.LinkedPool UnityEngine.Pool.LinkedPool
CS.UnityEngine.Pool.LinkedPool = UnityEngine.Pool.LinkedPool

---@param createFunc System.Func[T]
---@param actionOnGet System.Action[T]
---@param actionOnRelease System.Action[T]
---@param actionOnDestroy System.Action[T]
---@param collectionCheck boolean
---@param maxSize number
---@return UnityEngine.Pool.LinkedPool
function UnityEngine.Pool.LinkedPool.New(createFunc, actionOnGet, actionOnRelease, actionOnDestroy, collectionCheck, maxSize) end
---@overload fun() : T
---@param out_v T
---@return UnityEngine.Pool.PooledObject[T],T
function UnityEngine.Pool.LinkedPool:Get(out_v) end
---@param item T
function UnityEngine.Pool.LinkedPool:Release(item) end
function UnityEngine.Pool.LinkedPool:Clear() end
function UnityEngine.Pool.LinkedPool:Dispose() end

---@class UnityEngine.Pool.LinkedPool.LinkedPoolItem : System.Object
UnityEngine.Pool.LinkedPool.LinkedPoolItem = {}
---@alias CS.UnityEngine.Pool.LinkedPool.LinkedPoolItem UnityEngine.Pool.LinkedPool.LinkedPoolItem
CS.UnityEngine.Pool.LinkedPool.LinkedPoolItem = UnityEngine.Pool.LinkedPool.LinkedPoolItem

---@return UnityEngine.Pool.LinkedPool.LinkedPoolItem
function UnityEngine.Pool.LinkedPool.LinkedPoolItem.New() end

---@class UnityEngine.Pool.ObjectPool : System.Object
---@field CountAll number
---@field CountActive number
---@field CountInactive number
UnityEngine.Pool.ObjectPool = {}
---@alias CS.UnityEngine.Pool.ObjectPool UnityEngine.Pool.ObjectPool
CS.UnityEngine.Pool.ObjectPool = UnityEngine.Pool.ObjectPool

---@param createFunc System.Func[T]
---@param actionOnGet System.Action[T]
---@param actionOnRelease System.Action[T]
---@param actionOnDestroy System.Action[T]
---@param collectionCheck boolean
---@param defaultCapacity number
---@param maxSize number
---@return UnityEngine.Pool.ObjectPool
function UnityEngine.Pool.ObjectPool.New(createFunc, actionOnGet, actionOnRelease, actionOnDestroy, collectionCheck, defaultCapacity, maxSize) end
---@overload fun() : T
---@param out_v T
---@return UnityEngine.Pool.PooledObject[T],T
function UnityEngine.Pool.ObjectPool:Get(out_v) end
---@param element T
function UnityEngine.Pool.ObjectPool:Release(element) end
function UnityEngine.Pool.ObjectPool:Clear() end
function UnityEngine.Pool.ObjectPool:Dispose() end

---@class UnityEngine.Pool.PooledObject : System.ValueType
UnityEngine.Pool.PooledObject = {}
---@alias CS.UnityEngine.Pool.PooledObject UnityEngine.Pool.PooledObject
CS.UnityEngine.Pool.PooledObject = UnityEngine.Pool.PooledObject

---@param value T
---@param pool UnityEngine.Pool.IObjectPool[T]
---@return UnityEngine.Pool.PooledObject
function UnityEngine.Pool.PooledObject.New(value, pool) end

---@class UnityEngine.Pool.UnsafeGenericPool : System.Object
UnityEngine.Pool.UnsafeGenericPool = {}
---@alias CS.UnityEngine.Pool.UnsafeGenericPool UnityEngine.Pool.UnsafeGenericPool
CS.UnityEngine.Pool.UnsafeGenericPool = UnityEngine.Pool.UnsafeGenericPool

---@overload fun() : T
---@param out_value T
---@return UnityEngine.Pool.PooledObject[T],T
function UnityEngine.Pool.UnsafeGenericPool.Get(out_value) end
---@param toRelease T
function UnityEngine.Pool.UnsafeGenericPool.Release(toRelease) end

---@class UnityEngine.Networking.PlayerConnection.ConnectionTarget
---@field None UnityEngine.Networking.PlayerConnection.ConnectionTarget
---@field Player UnityEngine.Networking.PlayerConnection.ConnectionTarget
---@field Editor UnityEngine.Networking.PlayerConnection.ConnectionTarget
UnityEngine.Networking.PlayerConnection.ConnectionTarget = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.ConnectionTarget UnityEngine.Networking.PlayerConnection.ConnectionTarget
CS.UnityEngine.Networking.PlayerConnection.ConnectionTarget = UnityEngine.Networking.PlayerConnection.ConnectionTarget


---@class UnityEngine.Networking.PlayerConnection.IConnectionState
---@field connectedToTarget UnityEngine.Networking.PlayerConnection.ConnectionTarget
---@field connectionName string
UnityEngine.Networking.PlayerConnection.IConnectionState = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.IConnectionState UnityEngine.Networking.PlayerConnection.IConnectionState
CS.UnityEngine.Networking.PlayerConnection.IConnectionState = UnityEngine.Networking.PlayerConnection.IConnectionState


---@class UnityEngine.Networking.PlayerConnection.MessageEventArgs : System.Object
---@field playerId number
---@field data System.Byte[]
UnityEngine.Networking.PlayerConnection.MessageEventArgs = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.MessageEventArgs UnityEngine.Networking.PlayerConnection.MessageEventArgs
CS.UnityEngine.Networking.PlayerConnection.MessageEventArgs = UnityEngine.Networking.PlayerConnection.MessageEventArgs

---@return UnityEngine.Networking.PlayerConnection.MessageEventArgs
function UnityEngine.Networking.PlayerConnection.MessageEventArgs.New() end

---@class UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection
UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection
CS.UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection = UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection

---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:Register(messageId, callback) end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:Unregister(messageId, callback) end
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:DisconnectAll() end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:RegisterConnection(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:RegisterDisconnection(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:UnregisterConnection(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:UnregisterDisconnection(callback) end
---@param messageId System.Guid
---@param data System.Byte[]
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:Send(messageId, data) end
---@param messageId System.Guid
---@param data System.Byte[]
---@return boolean
function UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection:TrySend(messageId, data) end

---@class UnityEngine.Networking.PlayerConnection.PlayerConnection : UnityEngine.ScriptableObject
---@field instance UnityEngine.Networking.PlayerConnection.PlayerConnection
---@field isConnected boolean
UnityEngine.Networking.PlayerConnection.PlayerConnection = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.PlayerConnection UnityEngine.Networking.PlayerConnection.PlayerConnection
CS.UnityEngine.Networking.PlayerConnection.PlayerConnection = UnityEngine.Networking.PlayerConnection.PlayerConnection

---@return UnityEngine.Networking.PlayerConnection.PlayerConnection
function UnityEngine.Networking.PlayerConnection.PlayerConnection.New() end
function UnityEngine.Networking.PlayerConnection.PlayerConnection:OnEnable() end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.PlayerConnection:Register(messageId, callback) end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.PlayerConnection:Unregister(messageId, callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.PlayerConnection:RegisterConnection(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.PlayerConnection:RegisterDisconnection(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.PlayerConnection:UnregisterConnection(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.PlayerConnection:UnregisterDisconnection(callback) end
---@param messageId System.Guid
---@param data System.Byte[]
function UnityEngine.Networking.PlayerConnection.PlayerConnection:Send(messageId, data) end
---@param messageId System.Guid
---@param data System.Byte[]
---@return boolean
function UnityEngine.Networking.PlayerConnection.PlayerConnection:TrySend(messageId, data) end
---@param messageId System.Guid
---@param timeout number
---@return boolean
function UnityEngine.Networking.PlayerConnection.PlayerConnection:BlockUntilRecvMsg(messageId, timeout) end
function UnityEngine.Networking.PlayerConnection.PlayerConnection:DisconnectAll() end

---@class UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents : System.Object
---@field messageTypeSubscribers System.Collections.Generic.List
---@field connectionEvent UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent
---@field disconnectionEvent UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent
UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents = UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents

---@return UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents
function UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.New() end
---@param messageId System.Guid
---@param data System.Byte[]
---@param playerId number
function UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents:InvokeMessageIdSubscribers(messageId, data, playerId) end
---@param messageId System.Guid
---@return UnityEngine.Events.UnityEvent
function UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents:AddAndCreate(messageId) end
---@param messageId System.Guid
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents:UnregisterManagedCallback(messageId, callback) end

---@class UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent : UnityEngine.Events.UnityEvent
UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent = UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent

---@return UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent
function UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent.New() end

---@class UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent : UnityEngine.Events.UnityEvent
UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent = UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent

---@return UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent
function UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent.New() end

---@class UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers : System.Object
---@field subscriberCount number
---@field messageCallback UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageEvent
---@field MessageTypeId System.Guid
UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers = {}
---@alias CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers
CS.UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers = UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers

---@return UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers
function UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers.New() end

---@class UnityEngine.Lumin.UsesLuminPlatformLevelAttribute : System.Attribute
---@field platformLevel number
UnityEngine.Lumin.UsesLuminPlatformLevelAttribute = {}
---@alias CS.UnityEngine.Lumin.UsesLuminPlatformLevelAttribute UnityEngine.Lumin.UsesLuminPlatformLevelAttribute
CS.UnityEngine.Lumin.UsesLuminPlatformLevelAttribute = UnityEngine.Lumin.UsesLuminPlatformLevelAttribute

---@param platformLevel number
---@return UnityEngine.Lumin.UsesLuminPlatformLevelAttribute
function UnityEngine.Lumin.UsesLuminPlatformLevelAttribute.New(platformLevel) end

---@class UnityEngine.Lumin.UsesLuminPrivilegeAttribute : System.Attribute
---@field privilege string
UnityEngine.Lumin.UsesLuminPrivilegeAttribute = {}
---@alias CS.UnityEngine.Lumin.UsesLuminPrivilegeAttribute UnityEngine.Lumin.UsesLuminPrivilegeAttribute
CS.UnityEngine.Lumin.UsesLuminPrivilegeAttribute = UnityEngine.Lumin.UsesLuminPrivilegeAttribute

---@param privilege string
---@return UnityEngine.Lumin.UsesLuminPrivilegeAttribute
function UnityEngine.Lumin.UsesLuminPrivilegeAttribute.New(privilege) end

---@class UnityEngine.tvOS.Remote : System.Object
---@field allowExitToHome boolean
---@field allowRemoteRotation boolean
---@field reportAbsoluteDpadValues boolean
---@field touchesEnabled boolean
UnityEngine.tvOS.Remote = {}
---@alias CS.UnityEngine.tvOS.Remote UnityEngine.tvOS.Remote
CS.UnityEngine.tvOS.Remote = UnityEngine.tvOS.Remote

---@return UnityEngine.tvOS.Remote
function UnityEngine.tvOS.Remote.New() end

---@class UnityEngine.tvOS.DeviceGeneration
---@field Unknown UnityEngine.tvOS.DeviceGeneration
---@field AppleTVHD UnityEngine.tvOS.DeviceGeneration
---@field AppleTV4K UnityEngine.tvOS.DeviceGeneration
---@field AppleTV4K2Gen UnityEngine.tvOS.DeviceGeneration
---@field AppleTV4K3Gen UnityEngine.tvOS.DeviceGeneration
UnityEngine.tvOS.DeviceGeneration = {}
---@alias CS.UnityEngine.tvOS.DeviceGeneration UnityEngine.tvOS.DeviceGeneration
CS.UnityEngine.tvOS.DeviceGeneration = UnityEngine.tvOS.DeviceGeneration


---@class UnityEngine.tvOS.Device : System.Object
---@field systemVersion string
---@field generation UnityEngine.tvOS.DeviceGeneration
---@field vendorIdentifier string
---@field advertisingIdentifier string
---@field advertisingTrackingEnabled boolean
UnityEngine.tvOS.Device = {}
---@alias CS.UnityEngine.tvOS.Device UnityEngine.tvOS.Device
CS.UnityEngine.tvOS.Device = UnityEngine.tvOS.Device

---@return UnityEngine.tvOS.Device
function UnityEngine.tvOS.Device.New() end
---@param path string
function UnityEngine.tvOS.Device.SetNoBackupFlag(path) end
---@param path string
function UnityEngine.tvOS.Device.ResetNoBackupFlag(path) end

---@class UnityEngine.iOS.ADBannerView : System.Object
---@field loaded boolean
---@field visible boolean
---@field layout UnityEngine.iOS.ADBannerView.Layout
---@field position UnityEngine.Vector2
---@field size UnityEngine.Vector2
UnityEngine.iOS.ADBannerView = {}
---@alias CS.UnityEngine.iOS.ADBannerView UnityEngine.iOS.ADBannerView
CS.UnityEngine.iOS.ADBannerView = UnityEngine.iOS.ADBannerView

---@param type UnityEngine.iOS.ADBannerView.Type
---@param layout UnityEngine.iOS.ADBannerView.Layout
---@return UnityEngine.iOS.ADBannerView
function UnityEngine.iOS.ADBannerView.New(type, layout) end
---@param type UnityEngine.iOS.ADBannerView.Type
---@return boolean
function UnityEngine.iOS.ADBannerView.IsAvailable(type) end

---@class UnityEngine.iOS.ADBannerView.Layout
---@field Top UnityEngine.iOS.ADBannerView.Layout
---@field Bottom UnityEngine.iOS.ADBannerView.Layout
---@field TopLeft UnityEngine.iOS.ADBannerView.Layout
---@field TopRight UnityEngine.iOS.ADBannerView.Layout
---@field TopCenter UnityEngine.iOS.ADBannerView.Layout
---@field BottomLeft UnityEngine.iOS.ADBannerView.Layout
---@field BottomRight UnityEngine.iOS.ADBannerView.Layout
---@field BottomCenter UnityEngine.iOS.ADBannerView.Layout
---@field CenterLeft UnityEngine.iOS.ADBannerView.Layout
---@field CenterRight UnityEngine.iOS.ADBannerView.Layout
---@field Center UnityEngine.iOS.ADBannerView.Layout
---@field Manual UnityEngine.iOS.ADBannerView.Layout
UnityEngine.iOS.ADBannerView.Layout = {}
---@alias CS.UnityEngine.iOS.ADBannerView.Layout UnityEngine.iOS.ADBannerView.Layout
CS.UnityEngine.iOS.ADBannerView.Layout = UnityEngine.iOS.ADBannerView.Layout


---@class UnityEngine.iOS.ADBannerView.Type
---@field Banner UnityEngine.iOS.ADBannerView.Type
---@field MediumRect UnityEngine.iOS.ADBannerView.Type
UnityEngine.iOS.ADBannerView.Type = {}
---@alias CS.UnityEngine.iOS.ADBannerView.Type UnityEngine.iOS.ADBannerView.Type
CS.UnityEngine.iOS.ADBannerView.Type = UnityEngine.iOS.ADBannerView.Type


---@class UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate : System.MulticastDelegate
UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate = {}
---@alias CS.UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate
CS.UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate = UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate
function UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate.New(object, method) end
function UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.iOS.ADBannerView.BannerWasClickedDelegate:EndInvoke(result) end

---@class UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate : System.MulticastDelegate
UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate = {}
---@alias CS.UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate
CS.UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate = UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate
function UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate.New(object, method) end
function UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.iOS.ADBannerView.BannerWasLoadedDelegate:EndInvoke(result) end

---@class UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate : System.MulticastDelegate
UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate = {}
---@alias CS.UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate
CS.UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate = UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate
function UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate.New(object, method) end
function UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.iOS.ADBannerView.BannerFailedToLoadDelegate:EndInvoke(result) end

---@class UnityEngine.iOS.ADInterstitialAd : System.Object
---@field isAvailable boolean
---@field loaded boolean
UnityEngine.iOS.ADInterstitialAd = {}
---@alias CS.UnityEngine.iOS.ADInterstitialAd UnityEngine.iOS.ADInterstitialAd
CS.UnityEngine.iOS.ADInterstitialAd = UnityEngine.iOS.ADInterstitialAd

---@overload fun(autoReload: boolean) : UnityEngine.iOS.ADInterstitialAd
---@return UnityEngine.iOS.ADInterstitialAd
function UnityEngine.iOS.ADInterstitialAd.New() end
function UnityEngine.iOS.ADInterstitialAd:Show() end
function UnityEngine.iOS.ADInterstitialAd:ReloadAd() end

---@class UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate : System.MulticastDelegate
UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate = {}
---@alias CS.UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate
CS.UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate = UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate.New(object, method) end
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasLoadedDelegate:EndInvoke(result) end

---@class UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate : System.MulticastDelegate
UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate = {}
---@alias CS.UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate
CS.UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate = UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate.New(object, method) end
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.iOS.ADInterstitialAd.InterstitialWasViewedDelegate:EndInvoke(result) end

---@class UnityEngine.iOS.DeviceGeneration
---@field Unknown UnityEngine.iOS.DeviceGeneration
---@field iPhone UnityEngine.iOS.DeviceGeneration
---@field iPhone3G UnityEngine.iOS.DeviceGeneration
---@field iPhone3GS UnityEngine.iOS.DeviceGeneration
---@field iPodTouch1Gen UnityEngine.iOS.DeviceGeneration
---@field iPodTouch2Gen UnityEngine.iOS.DeviceGeneration
---@field iPodTouch3Gen UnityEngine.iOS.DeviceGeneration
---@field iPad1Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone4 UnityEngine.iOS.DeviceGeneration
---@field iPodTouch4Gen UnityEngine.iOS.DeviceGeneration
---@field iPad2Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone4S UnityEngine.iOS.DeviceGeneration
---@field iPad3Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone5 UnityEngine.iOS.DeviceGeneration
---@field iPodTouch5Gen UnityEngine.iOS.DeviceGeneration
---@field iPadMini1Gen UnityEngine.iOS.DeviceGeneration
---@field iPad4Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone5C UnityEngine.iOS.DeviceGeneration
---@field iPhone5S UnityEngine.iOS.DeviceGeneration
---@field iPadAir1 UnityEngine.iOS.DeviceGeneration
---@field iPadMini2Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone6 UnityEngine.iOS.DeviceGeneration
---@field iPhone6Plus UnityEngine.iOS.DeviceGeneration
---@field iPadMini3Gen UnityEngine.iOS.DeviceGeneration
---@field iPadAir2 UnityEngine.iOS.DeviceGeneration
---@field iPhone6S UnityEngine.iOS.DeviceGeneration
---@field iPhone6SPlus UnityEngine.iOS.DeviceGeneration
---@field iPadPro1Gen UnityEngine.iOS.DeviceGeneration
---@field iPadMini4Gen UnityEngine.iOS.DeviceGeneration
---@field iPhoneSE1Gen UnityEngine.iOS.DeviceGeneration
---@field iPadPro10Inch1Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone7 UnityEngine.iOS.DeviceGeneration
---@field iPhone7Plus UnityEngine.iOS.DeviceGeneration
---@field iPodTouch6Gen UnityEngine.iOS.DeviceGeneration
---@field iPad5Gen UnityEngine.iOS.DeviceGeneration
---@field iPadPro2Gen UnityEngine.iOS.DeviceGeneration
---@field iPadPro10Inch2Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone8 UnityEngine.iOS.DeviceGeneration
---@field iPhone8Plus UnityEngine.iOS.DeviceGeneration
---@field iPhoneX UnityEngine.iOS.DeviceGeneration
---@field iPhoneXS UnityEngine.iOS.DeviceGeneration
---@field iPhoneXSMax UnityEngine.iOS.DeviceGeneration
---@field iPhoneXR UnityEngine.iOS.DeviceGeneration
---@field iPadPro11Inch UnityEngine.iOS.DeviceGeneration
---@field iPadPro3Gen UnityEngine.iOS.DeviceGeneration
---@field iPad6Gen UnityEngine.iOS.DeviceGeneration
---@field iPadAir3Gen UnityEngine.iOS.DeviceGeneration
---@field iPadMini5Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone11 UnityEngine.iOS.DeviceGeneration
---@field iPhone11Pro UnityEngine.iOS.DeviceGeneration
---@field iPhone11ProMax UnityEngine.iOS.DeviceGeneration
---@field iPodTouch7Gen UnityEngine.iOS.DeviceGeneration
---@field iPad7Gen UnityEngine.iOS.DeviceGeneration
---@field iPhoneSE2Gen UnityEngine.iOS.DeviceGeneration
---@field iPadPro11Inch2Gen UnityEngine.iOS.DeviceGeneration
---@field iPadPro4Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone12Mini UnityEngine.iOS.DeviceGeneration
---@field iPhone12 UnityEngine.iOS.DeviceGeneration
---@field iPhone12Pro UnityEngine.iOS.DeviceGeneration
---@field iPhone12ProMax UnityEngine.iOS.DeviceGeneration
---@field iPad8Gen UnityEngine.iOS.DeviceGeneration
---@field iPadAir4Gen UnityEngine.iOS.DeviceGeneration
---@field iPad9Gen UnityEngine.iOS.DeviceGeneration
---@field iPadMini6Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone13 UnityEngine.iOS.DeviceGeneration
---@field iPhone13Mini UnityEngine.iOS.DeviceGeneration
---@field iPhone13Pro UnityEngine.iOS.DeviceGeneration
---@field iPhone13ProMax UnityEngine.iOS.DeviceGeneration
---@field iPadPro5Gen UnityEngine.iOS.DeviceGeneration
---@field iPadPro11Inch3Gen UnityEngine.iOS.DeviceGeneration
---@field iPhoneSE3Gen UnityEngine.iOS.DeviceGeneration
---@field iPadAir5Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone14 UnityEngine.iOS.DeviceGeneration
---@field iPhone14Plus UnityEngine.iOS.DeviceGeneration
---@field iPhone14Pro UnityEngine.iOS.DeviceGeneration
---@field iPhone14ProMax UnityEngine.iOS.DeviceGeneration
---@field iPadPro6Gen UnityEngine.iOS.DeviceGeneration
---@field iPadPro11Inch4Gen UnityEngine.iOS.DeviceGeneration
---@field iPad10Gen UnityEngine.iOS.DeviceGeneration
---@field iPhone15 UnityEngine.iOS.DeviceGeneration
---@field iPhone15Plus UnityEngine.iOS.DeviceGeneration
---@field iPhone15Pro UnityEngine.iOS.DeviceGeneration
---@field iPhone15ProMax UnityEngine.iOS.DeviceGeneration
---@field iPhone16 UnityEngine.iOS.DeviceGeneration
---@field iPhone16Plus UnityEngine.iOS.DeviceGeneration
---@field iPhone16Pro UnityEngine.iOS.DeviceGeneration
---@field iPhone16ProMax UnityEngine.iOS.DeviceGeneration
---@field iPhoneUnknown UnityEngine.iOS.DeviceGeneration
---@field iPadUnknown UnityEngine.iOS.DeviceGeneration
---@field iPodTouchUnknown UnityEngine.iOS.DeviceGeneration
UnityEngine.iOS.DeviceGeneration = {}
---@alias CS.UnityEngine.iOS.DeviceGeneration UnityEngine.iOS.DeviceGeneration
CS.UnityEngine.iOS.DeviceGeneration = UnityEngine.iOS.DeviceGeneration


---@class UnityEngine.iOS.ActivityIndicatorStyle
---@field DontShow UnityEngine.iOS.ActivityIndicatorStyle
---@field WhiteLarge UnityEngine.iOS.ActivityIndicatorStyle
---@field White UnityEngine.iOS.ActivityIndicatorStyle
---@field Gray UnityEngine.iOS.ActivityIndicatorStyle
UnityEngine.iOS.ActivityIndicatorStyle = {}
---@alias CS.UnityEngine.iOS.ActivityIndicatorStyle UnityEngine.iOS.ActivityIndicatorStyle
CS.UnityEngine.iOS.ActivityIndicatorStyle = UnityEngine.iOS.ActivityIndicatorStyle


---@class UnityEngine.iOS.Device : System.Object
---@field systemVersion string
---@field generation UnityEngine.iOS.DeviceGeneration
---@field vendorIdentifier string
---@field advertisingIdentifier string
---@field advertisingTrackingEnabled boolean
---@field hideHomeButton boolean
---@field lowPowerModeEnabled boolean
---@field wantsSoftwareDimming boolean
---@field iosAppOnMac boolean
---@field deferSystemGesturesMode UnityEngine.iOS.SystemGestureDeferMode
UnityEngine.iOS.Device = {}
---@alias CS.UnityEngine.iOS.Device UnityEngine.iOS.Device
CS.UnityEngine.iOS.Device = UnityEngine.iOS.Device

---@return UnityEngine.iOS.Device
function UnityEngine.iOS.Device.New() end
---@param path string
function UnityEngine.iOS.Device.SetNoBackupFlag(path) end
---@param path string
function UnityEngine.iOS.Device.ResetNoBackupFlag(path) end
---@return boolean
function UnityEngine.iOS.Device.RequestStoreReview() end

---@class UnityEngine.iOS.SystemGestureDeferMode
---@field None UnityEngine.iOS.SystemGestureDeferMode
---@field TopEdge UnityEngine.iOS.SystemGestureDeferMode
---@field LeftEdge UnityEngine.iOS.SystemGestureDeferMode
---@field BottomEdge UnityEngine.iOS.SystemGestureDeferMode
---@field RightEdge UnityEngine.iOS.SystemGestureDeferMode
---@field All UnityEngine.iOS.SystemGestureDeferMode
UnityEngine.iOS.SystemGestureDeferMode = {}
---@alias CS.UnityEngine.iOS.SystemGestureDeferMode UnityEngine.iOS.SystemGestureDeferMode
CS.UnityEngine.iOS.SystemGestureDeferMode = UnityEngine.iOS.SystemGestureDeferMode


---@class UnityEngine.iOS.OnDemandResourcesRequest : UnityEngine.AsyncOperation
---@field error string
---@field loadingPriority number
UnityEngine.iOS.OnDemandResourcesRequest = {}
---@alias CS.UnityEngine.iOS.OnDemandResourcesRequest UnityEngine.iOS.OnDemandResourcesRequest
CS.UnityEngine.iOS.OnDemandResourcesRequest = UnityEngine.iOS.OnDemandResourcesRequest

---@param resourceName string
---@return string
function UnityEngine.iOS.OnDemandResourcesRequest:GetResourcePath(resourceName) end
function UnityEngine.iOS.OnDemandResourcesRequest:Dispose() end

---@class UnityEngine.iOS.OnDemandResources : System.Object
---@field enabled boolean
UnityEngine.iOS.OnDemandResources = {}
---@alias CS.UnityEngine.iOS.OnDemandResources UnityEngine.iOS.OnDemandResources
CS.UnityEngine.iOS.OnDemandResources = UnityEngine.iOS.OnDemandResources

---@param tags System.String[]
---@return UnityEngine.iOS.OnDemandResourcesRequest
function UnityEngine.iOS.OnDemandResources.PreloadAsync(tags) end

---@class UnityEngine.Internal.InternalHDROutputFaking : System.Object
UnityEngine.Internal.InternalHDROutputFaking = {}
---@alias CS.UnityEngine.Internal.InternalHDROutputFaking UnityEngine.Internal.InternalHDROutputFaking
CS.UnityEngine.Internal.InternalHDROutputFaking = UnityEngine.Internal.InternalHDROutputFaking


---@class UnityEngine.Internal.DefaultValueAttribute : System.Attribute
---@field Value System.Object
UnityEngine.Internal.DefaultValueAttribute = {}
---@alias CS.UnityEngine.Internal.DefaultValueAttribute UnityEngine.Internal.DefaultValueAttribute
CS.UnityEngine.Internal.DefaultValueAttribute = UnityEngine.Internal.DefaultValueAttribute

---@param value string
---@return UnityEngine.Internal.DefaultValueAttribute
function UnityEngine.Internal.DefaultValueAttribute.New(value) end
---@param obj System.Object
---@return boolean
function UnityEngine.Internal.DefaultValueAttribute:Equals(obj) end
---@return number
function UnityEngine.Internal.DefaultValueAttribute:GetHashCode() end

---@class UnityEngine.Internal.ExcludeFromDocsAttribute : System.Attribute
UnityEngine.Internal.ExcludeFromDocsAttribute = {}
---@alias CS.UnityEngine.Internal.ExcludeFromDocsAttribute UnityEngine.Internal.ExcludeFromDocsAttribute
CS.UnityEngine.Internal.ExcludeFromDocsAttribute = UnityEngine.Internal.ExcludeFromDocsAttribute

---@return UnityEngine.Internal.ExcludeFromDocsAttribute
function UnityEngine.Internal.ExcludeFromDocsAttribute.New() end

---@class UnityEngine.Internal.ISubAssetNotDuplicatable
UnityEngine.Internal.ISubAssetNotDuplicatable = {}
---@alias CS.UnityEngine.Internal.ISubAssetNotDuplicatable UnityEngine.Internal.ISubAssetNotDuplicatable
CS.UnityEngine.Internal.ISubAssetNotDuplicatable = UnityEngine.Internal.ISubAssetNotDuplicatable


---@class UnityEngine.Rendering.AsyncGPUReadbackRequest : System.ValueType
---@field done boolean
---@field hasError boolean
---@field layerCount number
---@field layerDataSize number
---@field width number
---@field height number
---@field depth number
---@field forcePlayerLoopUpdate boolean
UnityEngine.Rendering.AsyncGPUReadbackRequest = {}
---@alias CS.UnityEngine.Rendering.AsyncGPUReadbackRequest UnityEngine.Rendering.AsyncGPUReadbackRequest
CS.UnityEngine.Rendering.AsyncGPUReadbackRequest = UnityEngine.Rendering.AsyncGPUReadbackRequest

function UnityEngine.Rendering.AsyncGPUReadbackRequest:Update() end
function UnityEngine.Rendering.AsyncGPUReadbackRequest:WaitForCompletion() end

---@class UnityEngine.Rendering.AsyncRequestNativeArrayData : System.ValueType
---@field nativeArrayBuffer System.Void*
---@field lengthInBytes number
---@field safetyHandle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
UnityEngine.Rendering.AsyncRequestNativeArrayData = {}
---@alias CS.UnityEngine.Rendering.AsyncRequestNativeArrayData UnityEngine.Rendering.AsyncRequestNativeArrayData
CS.UnityEngine.Rendering.AsyncRequestNativeArrayData = UnityEngine.Rendering.AsyncRequestNativeArrayData


---@class UnityEngine.Rendering.AsyncGPUReadback : System.Object
UnityEngine.Rendering.AsyncGPUReadback = {}
---@alias CS.UnityEngine.Rendering.AsyncGPUReadback UnityEngine.Rendering.AsyncGPUReadback
CS.UnityEngine.Rendering.AsyncGPUReadback = UnityEngine.Rendering.AsyncGPUReadback

function UnityEngine.Rendering.AsyncGPUReadback.WaitAllRequests() end
---@overload fun(src: UnityEngine.ComputeBuffer, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.ComputeBuffer, size: number, offset: number, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.GraphicsBuffer, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.GraphicsBuffer, size: number, offset: number, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.Texture, mipIndex: number, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.Texture, mipIndex: number, dstFormat: UnityEngine.TextureFormat, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.Texture, mipIndex: number, dstFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.Texture, mipIndex: number, x: number, width: number, y: number, height: number, z: number, depth: number, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@overload fun(src: UnityEngine.Texture, mipIndex: number, x: number, width: number, y: number, height: number, z: number, depth: number, dstFormat: UnityEngine.TextureFormat, callback: System.Action) : UnityEngine.Rendering.AsyncGPUReadbackRequest
---@param src UnityEngine.Texture
---@param mipIndex number
---@param x number
---@param width number
---@param y number
---@param height number
---@param z number
---@param depth number
---@param dstFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@param callback System.Action
---@return UnityEngine.Rendering.AsyncGPUReadbackRequest
function UnityEngine.Rendering.AsyncGPUReadback.Request(src, mipIndex, x, width, y, height, z, depth, dstFormat, callback) end

---@class UnityEngine.Rendering.SynchronisationStage
---@field VertexProcessing UnityEngine.Rendering.SynchronisationStage
---@field PixelProcessing UnityEngine.Rendering.SynchronisationStage
UnityEngine.Rendering.SynchronisationStage = {}
---@alias CS.UnityEngine.Rendering.SynchronisationStage UnityEngine.Rendering.SynchronisationStage
CS.UnityEngine.Rendering.SynchronisationStage = UnityEngine.Rendering.SynchronisationStage


---@class UnityEngine.Rendering.GPUFence : System.ValueType
---@field passed boolean
UnityEngine.Rendering.GPUFence = {}
---@alias CS.UnityEngine.Rendering.GPUFence UnityEngine.Rendering.GPUFence
CS.UnityEngine.Rendering.GPUFence = UnityEngine.Rendering.GPUFence


---@class UnityEngine.Rendering.PIX : System.Object
UnityEngine.Rendering.PIX = {}
---@alias CS.UnityEngine.Rendering.PIX UnityEngine.Rendering.PIX
CS.UnityEngine.Rendering.PIX = UnityEngine.Rendering.PIX

---@return UnityEngine.Rendering.PIX
function UnityEngine.Rendering.PIX.New() end
function UnityEngine.Rendering.PIX.BeginGPUCapture() end
function UnityEngine.Rendering.PIX.EndGPUCapture() end
---@return boolean
function UnityEngine.Rendering.PIX.IsAttached() end

---@class UnityEngine.Rendering.LoadStoreActionDebugModeSettings : System.Object
---@field LoadStoreDebugModeEnabled boolean
UnityEngine.Rendering.LoadStoreActionDebugModeSettings = {}
---@alias CS.UnityEngine.Rendering.LoadStoreActionDebugModeSettings UnityEngine.Rendering.LoadStoreActionDebugModeSettings
CS.UnityEngine.Rendering.LoadStoreActionDebugModeSettings = UnityEngine.Rendering.LoadStoreActionDebugModeSettings


---@class UnityEngine.Rendering.ShaderHardwareTier
---@field Tier1 UnityEngine.Rendering.ShaderHardwareTier
---@field Tier2 UnityEngine.Rendering.ShaderHardwareTier
---@field Tier3 UnityEngine.Rendering.ShaderHardwareTier
UnityEngine.Rendering.ShaderHardwareTier = {}
---@alias CS.UnityEngine.Rendering.ShaderHardwareTier UnityEngine.Rendering.ShaderHardwareTier
CS.UnityEngine.Rendering.ShaderHardwareTier = UnityEngine.Rendering.ShaderHardwareTier


---@class UnityEngine.Rendering.BlendShapeBufferLayout
---@field PerShape UnityEngine.Rendering.BlendShapeBufferLayout
---@field PerVertex UnityEngine.Rendering.BlendShapeBufferLayout
UnityEngine.Rendering.BlendShapeBufferLayout = {}
---@alias CS.UnityEngine.Rendering.BlendShapeBufferLayout UnityEngine.Rendering.BlendShapeBufferLayout
CS.UnityEngine.Rendering.BlendShapeBufferLayout = UnityEngine.Rendering.BlendShapeBufferLayout


---@class UnityEngine.Rendering.IndexFormat
---@field UInt16 UnityEngine.Rendering.IndexFormat
---@field UInt32 UnityEngine.Rendering.IndexFormat
UnityEngine.Rendering.IndexFormat = {}
---@alias CS.UnityEngine.Rendering.IndexFormat UnityEngine.Rendering.IndexFormat
CS.UnityEngine.Rendering.IndexFormat = UnityEngine.Rendering.IndexFormat


---@class UnityEngine.Rendering.MeshUpdateFlags
---@field Default UnityEngine.Rendering.MeshUpdateFlags
---@field DontValidateIndices UnityEngine.Rendering.MeshUpdateFlags
---@field DontResetBoneBounds UnityEngine.Rendering.MeshUpdateFlags
---@field DontNotifyMeshUsers UnityEngine.Rendering.MeshUpdateFlags
---@field DontRecalculateBounds UnityEngine.Rendering.MeshUpdateFlags
UnityEngine.Rendering.MeshUpdateFlags = {}
---@alias CS.UnityEngine.Rendering.MeshUpdateFlags UnityEngine.Rendering.MeshUpdateFlags
CS.UnityEngine.Rendering.MeshUpdateFlags = UnityEngine.Rendering.MeshUpdateFlags


---@class UnityEngine.Rendering.VertexAttributeFormat
---@field Float32 UnityEngine.Rendering.VertexAttributeFormat
---@field Float16 UnityEngine.Rendering.VertexAttributeFormat
---@field UNorm8 UnityEngine.Rendering.VertexAttributeFormat
---@field SNorm8 UnityEngine.Rendering.VertexAttributeFormat
---@field UNorm16 UnityEngine.Rendering.VertexAttributeFormat
---@field SNorm16 UnityEngine.Rendering.VertexAttributeFormat
---@field UInt8 UnityEngine.Rendering.VertexAttributeFormat
---@field SInt8 UnityEngine.Rendering.VertexAttributeFormat
---@field UInt16 UnityEngine.Rendering.VertexAttributeFormat
---@field SInt16 UnityEngine.Rendering.VertexAttributeFormat
---@field UInt32 UnityEngine.Rendering.VertexAttributeFormat
---@field SInt32 UnityEngine.Rendering.VertexAttributeFormat
UnityEngine.Rendering.VertexAttributeFormat = {}
---@alias CS.UnityEngine.Rendering.VertexAttributeFormat UnityEngine.Rendering.VertexAttributeFormat
CS.UnityEngine.Rendering.VertexAttributeFormat = UnityEngine.Rendering.VertexAttributeFormat


---@class UnityEngine.Rendering.VertexAttribute
---@field Position UnityEngine.Rendering.VertexAttribute
---@field Normal UnityEngine.Rendering.VertexAttribute
---@field Tangent UnityEngine.Rendering.VertexAttribute
---@field Color UnityEngine.Rendering.VertexAttribute
---@field TexCoord0 UnityEngine.Rendering.VertexAttribute
---@field TexCoord1 UnityEngine.Rendering.VertexAttribute
---@field TexCoord2 UnityEngine.Rendering.VertexAttribute
---@field TexCoord3 UnityEngine.Rendering.VertexAttribute
---@field TexCoord4 UnityEngine.Rendering.VertexAttribute
---@field TexCoord5 UnityEngine.Rendering.VertexAttribute
---@field TexCoord6 UnityEngine.Rendering.VertexAttribute
---@field TexCoord7 UnityEngine.Rendering.VertexAttribute
---@field BlendWeight UnityEngine.Rendering.VertexAttribute
---@field BlendIndices UnityEngine.Rendering.VertexAttribute
UnityEngine.Rendering.VertexAttribute = {}
---@alias CS.UnityEngine.Rendering.VertexAttribute UnityEngine.Rendering.VertexAttribute
CS.UnityEngine.Rendering.VertexAttribute = UnityEngine.Rendering.VertexAttribute


---@class UnityEngine.Rendering.ShaderParamType
---@field Float UnityEngine.Rendering.ShaderParamType
---@field Int UnityEngine.Rendering.ShaderParamType
---@field Bool UnityEngine.Rendering.ShaderParamType
---@field Half UnityEngine.Rendering.ShaderParamType
---@field Short UnityEngine.Rendering.ShaderParamType
---@field UInt UnityEngine.Rendering.ShaderParamType
UnityEngine.Rendering.ShaderParamType = {}
---@alias CS.UnityEngine.Rendering.ShaderParamType UnityEngine.Rendering.ShaderParamType
CS.UnityEngine.Rendering.ShaderParamType = UnityEngine.Rendering.ShaderParamType


---@class UnityEngine.Rendering.ShaderConstantType
---@field Vector UnityEngine.Rendering.ShaderConstantType
---@field Matrix UnityEngine.Rendering.ShaderConstantType
---@field Struct UnityEngine.Rendering.ShaderConstantType
UnityEngine.Rendering.ShaderConstantType = {}
---@alias CS.UnityEngine.Rendering.ShaderConstantType UnityEngine.Rendering.ShaderConstantType
CS.UnityEngine.Rendering.ShaderConstantType = UnityEngine.Rendering.ShaderConstantType


---@class UnityEngine.Rendering.OpaqueSortMode
---@field Default UnityEngine.Rendering.OpaqueSortMode
---@field FrontToBack UnityEngine.Rendering.OpaqueSortMode
---@field NoDistanceSort UnityEngine.Rendering.OpaqueSortMode
UnityEngine.Rendering.OpaqueSortMode = {}
---@alias CS.UnityEngine.Rendering.OpaqueSortMode UnityEngine.Rendering.OpaqueSortMode
CS.UnityEngine.Rendering.OpaqueSortMode = UnityEngine.Rendering.OpaqueSortMode


---@class UnityEngine.Rendering.RenderQueue
---@field Background UnityEngine.Rendering.RenderQueue
---@field Geometry UnityEngine.Rendering.RenderQueue
---@field AlphaTest UnityEngine.Rendering.RenderQueue
---@field GeometryLast UnityEngine.Rendering.RenderQueue
---@field Transparent UnityEngine.Rendering.RenderQueue
---@field Overlay UnityEngine.Rendering.RenderQueue
UnityEngine.Rendering.RenderQueue = {}
---@alias CS.UnityEngine.Rendering.RenderQueue UnityEngine.Rendering.RenderQueue
CS.UnityEngine.Rendering.RenderQueue = UnityEngine.Rendering.RenderQueue


---@class UnityEngine.Rendering.RenderBufferLoadAction
---@field Load UnityEngine.Rendering.RenderBufferLoadAction
---@field Clear UnityEngine.Rendering.RenderBufferLoadAction
---@field DontCare UnityEngine.Rendering.RenderBufferLoadAction
UnityEngine.Rendering.RenderBufferLoadAction = {}
---@alias CS.UnityEngine.Rendering.RenderBufferLoadAction UnityEngine.Rendering.RenderBufferLoadAction
CS.UnityEngine.Rendering.RenderBufferLoadAction = UnityEngine.Rendering.RenderBufferLoadAction


---@class UnityEngine.Rendering.RenderBufferStoreAction
---@field Store UnityEngine.Rendering.RenderBufferStoreAction
---@field Resolve UnityEngine.Rendering.RenderBufferStoreAction
---@field StoreAndResolve UnityEngine.Rendering.RenderBufferStoreAction
---@field DontCare UnityEngine.Rendering.RenderBufferStoreAction
UnityEngine.Rendering.RenderBufferStoreAction = {}
---@alias CS.UnityEngine.Rendering.RenderBufferStoreAction UnityEngine.Rendering.RenderBufferStoreAction
CS.UnityEngine.Rendering.RenderBufferStoreAction = UnityEngine.Rendering.RenderBufferStoreAction


---@class UnityEngine.Rendering.FastMemoryFlags
---@field None UnityEngine.Rendering.FastMemoryFlags
---@field SpillTop UnityEngine.Rendering.FastMemoryFlags
---@field SpillBottom UnityEngine.Rendering.FastMemoryFlags
UnityEngine.Rendering.FastMemoryFlags = {}
---@alias CS.UnityEngine.Rendering.FastMemoryFlags UnityEngine.Rendering.FastMemoryFlags
CS.UnityEngine.Rendering.FastMemoryFlags = UnityEngine.Rendering.FastMemoryFlags


---@class UnityEngine.Rendering.BlendMode
---@field Zero UnityEngine.Rendering.BlendMode
---@field One UnityEngine.Rendering.BlendMode
---@field DstColor UnityEngine.Rendering.BlendMode
---@field SrcColor UnityEngine.Rendering.BlendMode
---@field OneMinusDstColor UnityEngine.Rendering.BlendMode
---@field SrcAlpha UnityEngine.Rendering.BlendMode
---@field OneMinusSrcColor UnityEngine.Rendering.BlendMode
---@field DstAlpha UnityEngine.Rendering.BlendMode
---@field OneMinusDstAlpha UnityEngine.Rendering.BlendMode
---@field SrcAlphaSaturate UnityEngine.Rendering.BlendMode
---@field OneMinusSrcAlpha UnityEngine.Rendering.BlendMode
UnityEngine.Rendering.BlendMode = {}
---@alias CS.UnityEngine.Rendering.BlendMode UnityEngine.Rendering.BlendMode
CS.UnityEngine.Rendering.BlendMode = UnityEngine.Rendering.BlendMode


---@class UnityEngine.Rendering.BlendOp
---@field Add UnityEngine.Rendering.BlendOp
---@field Subtract UnityEngine.Rendering.BlendOp
---@field ReverseSubtract UnityEngine.Rendering.BlendOp
---@field Min UnityEngine.Rendering.BlendOp
---@field Max UnityEngine.Rendering.BlendOp
---@field LogicalClear UnityEngine.Rendering.BlendOp
---@field LogicalSet UnityEngine.Rendering.BlendOp
---@field LogicalCopy UnityEngine.Rendering.BlendOp
---@field LogicalCopyInverted UnityEngine.Rendering.BlendOp
---@field LogicalNoop UnityEngine.Rendering.BlendOp
---@field LogicalInvert UnityEngine.Rendering.BlendOp
---@field LogicalAnd UnityEngine.Rendering.BlendOp
---@field LogicalNand UnityEngine.Rendering.BlendOp
---@field LogicalOr UnityEngine.Rendering.BlendOp
---@field LogicalNor UnityEngine.Rendering.BlendOp
---@field LogicalXor UnityEngine.Rendering.BlendOp
---@field LogicalEquivalence UnityEngine.Rendering.BlendOp
---@field LogicalAndReverse UnityEngine.Rendering.BlendOp
---@field LogicalAndInverted UnityEngine.Rendering.BlendOp
---@field LogicalOrReverse UnityEngine.Rendering.BlendOp
---@field LogicalOrInverted UnityEngine.Rendering.BlendOp
---@field Multiply UnityEngine.Rendering.BlendOp
---@field Screen UnityEngine.Rendering.BlendOp
---@field Overlay UnityEngine.Rendering.BlendOp
---@field Darken UnityEngine.Rendering.BlendOp
---@field Lighten UnityEngine.Rendering.BlendOp
---@field ColorDodge UnityEngine.Rendering.BlendOp
---@field ColorBurn UnityEngine.Rendering.BlendOp
---@field HardLight UnityEngine.Rendering.BlendOp
---@field SoftLight UnityEngine.Rendering.BlendOp
---@field Difference UnityEngine.Rendering.BlendOp
---@field Exclusion UnityEngine.Rendering.BlendOp
---@field HSLHue UnityEngine.Rendering.BlendOp
---@field HSLSaturation UnityEngine.Rendering.BlendOp
---@field HSLColor UnityEngine.Rendering.BlendOp
---@field HSLLuminosity UnityEngine.Rendering.BlendOp
UnityEngine.Rendering.BlendOp = {}
---@alias CS.UnityEngine.Rendering.BlendOp UnityEngine.Rendering.BlendOp
CS.UnityEngine.Rendering.BlendOp = UnityEngine.Rendering.BlendOp


---@class UnityEngine.Rendering.CompareFunction
---@field Disabled UnityEngine.Rendering.CompareFunction
---@field Never UnityEngine.Rendering.CompareFunction
---@field Less UnityEngine.Rendering.CompareFunction
---@field Equal UnityEngine.Rendering.CompareFunction
---@field LessEqual UnityEngine.Rendering.CompareFunction
---@field Greater UnityEngine.Rendering.CompareFunction
---@field NotEqual UnityEngine.Rendering.CompareFunction
---@field GreaterEqual UnityEngine.Rendering.CompareFunction
---@field Always UnityEngine.Rendering.CompareFunction
UnityEngine.Rendering.CompareFunction = {}
---@alias CS.UnityEngine.Rendering.CompareFunction UnityEngine.Rendering.CompareFunction
CS.UnityEngine.Rendering.CompareFunction = UnityEngine.Rendering.CompareFunction


---@class UnityEngine.Rendering.CullMode
---@field Off UnityEngine.Rendering.CullMode
---@field Front UnityEngine.Rendering.CullMode
---@field Back UnityEngine.Rendering.CullMode
UnityEngine.Rendering.CullMode = {}
---@alias CS.UnityEngine.Rendering.CullMode UnityEngine.Rendering.CullMode
CS.UnityEngine.Rendering.CullMode = UnityEngine.Rendering.CullMode


---@class UnityEngine.Rendering.ColorWriteMask
---@field Alpha UnityEngine.Rendering.ColorWriteMask
---@field Blue UnityEngine.Rendering.ColorWriteMask
---@field Green UnityEngine.Rendering.ColorWriteMask
---@field Red UnityEngine.Rendering.ColorWriteMask
---@field All UnityEngine.Rendering.ColorWriteMask
UnityEngine.Rendering.ColorWriteMask = {}
---@alias CS.UnityEngine.Rendering.ColorWriteMask UnityEngine.Rendering.ColorWriteMask
CS.UnityEngine.Rendering.ColorWriteMask = UnityEngine.Rendering.ColorWriteMask


---@class UnityEngine.Rendering.StencilOp
---@field Keep UnityEngine.Rendering.StencilOp
---@field Zero UnityEngine.Rendering.StencilOp
---@field Replace UnityEngine.Rendering.StencilOp
---@field IncrementSaturate UnityEngine.Rendering.StencilOp
---@field DecrementSaturate UnityEngine.Rendering.StencilOp
---@field Invert UnityEngine.Rendering.StencilOp
---@field IncrementWrap UnityEngine.Rendering.StencilOp
---@field DecrementWrap UnityEngine.Rendering.StencilOp
UnityEngine.Rendering.StencilOp = {}
---@alias CS.UnityEngine.Rendering.StencilOp UnityEngine.Rendering.StencilOp
CS.UnityEngine.Rendering.StencilOp = UnityEngine.Rendering.StencilOp


---@class UnityEngine.Rendering.AmbientMode
---@field Skybox UnityEngine.Rendering.AmbientMode
---@field Trilight UnityEngine.Rendering.AmbientMode
---@field Flat UnityEngine.Rendering.AmbientMode
---@field Custom UnityEngine.Rendering.AmbientMode
UnityEngine.Rendering.AmbientMode = {}
---@alias CS.UnityEngine.Rendering.AmbientMode UnityEngine.Rendering.AmbientMode
CS.UnityEngine.Rendering.AmbientMode = UnityEngine.Rendering.AmbientMode


---@class UnityEngine.Rendering.DefaultReflectionMode
---@field Skybox UnityEngine.Rendering.DefaultReflectionMode
---@field Custom UnityEngine.Rendering.DefaultReflectionMode
UnityEngine.Rendering.DefaultReflectionMode = {}
---@alias CS.UnityEngine.Rendering.DefaultReflectionMode UnityEngine.Rendering.DefaultReflectionMode
CS.UnityEngine.Rendering.DefaultReflectionMode = UnityEngine.Rendering.DefaultReflectionMode


---@class UnityEngine.Rendering.ReflectionCubemapCompression
---@field Uncompressed UnityEngine.Rendering.ReflectionCubemapCompression
---@field Compressed UnityEngine.Rendering.ReflectionCubemapCompression
---@field Auto UnityEngine.Rendering.ReflectionCubemapCompression
UnityEngine.Rendering.ReflectionCubemapCompression = {}
---@alias CS.UnityEngine.Rendering.ReflectionCubemapCompression UnityEngine.Rendering.ReflectionCubemapCompression
CS.UnityEngine.Rendering.ReflectionCubemapCompression = UnityEngine.Rendering.ReflectionCubemapCompression


---@class UnityEngine.Rendering.CameraEvent
---@field BeforeDepthTexture UnityEngine.Rendering.CameraEvent
---@field AfterDepthTexture UnityEngine.Rendering.CameraEvent
---@field BeforeDepthNormalsTexture UnityEngine.Rendering.CameraEvent
---@field AfterDepthNormalsTexture UnityEngine.Rendering.CameraEvent
---@field BeforeGBuffer UnityEngine.Rendering.CameraEvent
---@field AfterGBuffer UnityEngine.Rendering.CameraEvent
---@field BeforeLighting UnityEngine.Rendering.CameraEvent
---@field AfterLighting UnityEngine.Rendering.CameraEvent
---@field BeforeFinalPass UnityEngine.Rendering.CameraEvent
---@field AfterFinalPass UnityEngine.Rendering.CameraEvent
---@field BeforeForwardOpaque UnityEngine.Rendering.CameraEvent
---@field AfterForwardOpaque UnityEngine.Rendering.CameraEvent
---@field BeforeImageEffectsOpaque UnityEngine.Rendering.CameraEvent
---@field AfterImageEffectsOpaque UnityEngine.Rendering.CameraEvent
---@field BeforeSkybox UnityEngine.Rendering.CameraEvent
---@field AfterSkybox UnityEngine.Rendering.CameraEvent
---@field BeforeForwardAlpha UnityEngine.Rendering.CameraEvent
---@field AfterForwardAlpha UnityEngine.Rendering.CameraEvent
---@field BeforeImageEffects UnityEngine.Rendering.CameraEvent
---@field AfterImageEffects UnityEngine.Rendering.CameraEvent
---@field AfterEverything UnityEngine.Rendering.CameraEvent
---@field BeforeReflections UnityEngine.Rendering.CameraEvent
---@field AfterReflections UnityEngine.Rendering.CameraEvent
---@field BeforeHaloAndLensFlares UnityEngine.Rendering.CameraEvent
---@field AfterHaloAndLensFlares UnityEngine.Rendering.CameraEvent
UnityEngine.Rendering.CameraEvent = {}
---@alias CS.UnityEngine.Rendering.CameraEvent UnityEngine.Rendering.CameraEvent
CS.UnityEngine.Rendering.CameraEvent = UnityEngine.Rendering.CameraEvent


---@class UnityEngine.Rendering.CameraEventUtils : System.Object
UnityEngine.Rendering.CameraEventUtils = {}
---@alias CS.UnityEngine.Rendering.CameraEventUtils UnityEngine.Rendering.CameraEventUtils
CS.UnityEngine.Rendering.CameraEventUtils = UnityEngine.Rendering.CameraEventUtils

---@param value UnityEngine.Rendering.CameraEvent
---@return boolean
function UnityEngine.Rendering.CameraEventUtils.IsValid(value) end

---@class UnityEngine.Rendering.LightEvent
---@field BeforeShadowMap UnityEngine.Rendering.LightEvent
---@field AfterShadowMap UnityEngine.Rendering.LightEvent
---@field BeforeScreenspaceMask UnityEngine.Rendering.LightEvent
---@field AfterScreenspaceMask UnityEngine.Rendering.LightEvent
---@field BeforeShadowMapPass UnityEngine.Rendering.LightEvent
---@field AfterShadowMapPass UnityEngine.Rendering.LightEvent
UnityEngine.Rendering.LightEvent = {}
---@alias CS.UnityEngine.Rendering.LightEvent UnityEngine.Rendering.LightEvent
CS.UnityEngine.Rendering.LightEvent = UnityEngine.Rendering.LightEvent


---@class UnityEngine.Rendering.ShadowMapPass
---@field PointlightPositiveX UnityEngine.Rendering.ShadowMapPass
---@field PointlightNegativeX UnityEngine.Rendering.ShadowMapPass
---@field PointlightPositiveY UnityEngine.Rendering.ShadowMapPass
---@field PointlightNegativeY UnityEngine.Rendering.ShadowMapPass
---@field PointlightPositiveZ UnityEngine.Rendering.ShadowMapPass
---@field PointlightNegativeZ UnityEngine.Rendering.ShadowMapPass
---@field DirectionalCascade0 UnityEngine.Rendering.ShadowMapPass
---@field DirectionalCascade1 UnityEngine.Rendering.ShadowMapPass
---@field DirectionalCascade2 UnityEngine.Rendering.ShadowMapPass
---@field DirectionalCascade3 UnityEngine.Rendering.ShadowMapPass
---@field Spotlight UnityEngine.Rendering.ShadowMapPass
---@field Pointlight UnityEngine.Rendering.ShadowMapPass
---@field Directional UnityEngine.Rendering.ShadowMapPass
---@field All UnityEngine.Rendering.ShadowMapPass
UnityEngine.Rendering.ShadowMapPass = {}
---@alias CS.UnityEngine.Rendering.ShadowMapPass UnityEngine.Rendering.ShadowMapPass
CS.UnityEngine.Rendering.ShadowMapPass = UnityEngine.Rendering.ShadowMapPass


---@class UnityEngine.Rendering.BuiltinRenderTextureType
---@field PropertyName UnityEngine.Rendering.BuiltinRenderTextureType
---@field BufferPtr UnityEngine.Rendering.BuiltinRenderTextureType
---@field RenderTexture UnityEngine.Rendering.BuiltinRenderTextureType
---@field BindableTexture UnityEngine.Rendering.BuiltinRenderTextureType
---@field None UnityEngine.Rendering.BuiltinRenderTextureType
---@field CurrentActive UnityEngine.Rendering.BuiltinRenderTextureType
---@field CameraTarget UnityEngine.Rendering.BuiltinRenderTextureType
---@field Depth UnityEngine.Rendering.BuiltinRenderTextureType
---@field DepthNormals UnityEngine.Rendering.BuiltinRenderTextureType
---@field ResolvedDepth UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer0 UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer1 UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer2 UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer3 UnityEngine.Rendering.BuiltinRenderTextureType
---@field Reflections UnityEngine.Rendering.BuiltinRenderTextureType
---@field MotionVectors UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer4 UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer5 UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer6 UnityEngine.Rendering.BuiltinRenderTextureType
---@field GBuffer7 UnityEngine.Rendering.BuiltinRenderTextureType
UnityEngine.Rendering.BuiltinRenderTextureType = {}
---@alias CS.UnityEngine.Rendering.BuiltinRenderTextureType UnityEngine.Rendering.BuiltinRenderTextureType
CS.UnityEngine.Rendering.BuiltinRenderTextureType = UnityEngine.Rendering.BuiltinRenderTextureType


---@class UnityEngine.Rendering.PassType
---@field Normal UnityEngine.Rendering.PassType
---@field Vertex UnityEngine.Rendering.PassType
---@field VertexLM UnityEngine.Rendering.PassType
---@field ForwardBase UnityEngine.Rendering.PassType
---@field ForwardAdd UnityEngine.Rendering.PassType
---@field ShadowCaster UnityEngine.Rendering.PassType
---@field Deferred UnityEngine.Rendering.PassType
---@field Meta UnityEngine.Rendering.PassType
---@field MotionVectors UnityEngine.Rendering.PassType
---@field ScriptableRenderPipeline UnityEngine.Rendering.PassType
---@field ScriptableRenderPipelineDefaultUnlit UnityEngine.Rendering.PassType
---@field GrabPass UnityEngine.Rendering.PassType
UnityEngine.Rendering.PassType = {}
---@alias CS.UnityEngine.Rendering.PassType UnityEngine.Rendering.PassType
CS.UnityEngine.Rendering.PassType = UnityEngine.Rendering.PassType


---@class UnityEngine.Rendering.ShadowCastingMode
---@field Off UnityEngine.Rendering.ShadowCastingMode
---@field On UnityEngine.Rendering.ShadowCastingMode
---@field TwoSided UnityEngine.Rendering.ShadowCastingMode
---@field ShadowsOnly UnityEngine.Rendering.ShadowCastingMode
UnityEngine.Rendering.ShadowCastingMode = {}
---@alias CS.UnityEngine.Rendering.ShadowCastingMode UnityEngine.Rendering.ShadowCastingMode
CS.UnityEngine.Rendering.ShadowCastingMode = UnityEngine.Rendering.ShadowCastingMode


---@class UnityEngine.Rendering.LightShadowResolution
---@field FromQualitySettings UnityEngine.Rendering.LightShadowResolution
---@field Low UnityEngine.Rendering.LightShadowResolution
---@field Medium UnityEngine.Rendering.LightShadowResolution
---@field High UnityEngine.Rendering.LightShadowResolution
---@field VeryHigh UnityEngine.Rendering.LightShadowResolution
UnityEngine.Rendering.LightShadowResolution = {}
---@alias CS.UnityEngine.Rendering.LightShadowResolution UnityEngine.Rendering.LightShadowResolution
CS.UnityEngine.Rendering.LightShadowResolution = UnityEngine.Rendering.LightShadowResolution


---@class UnityEngine.Rendering.GraphicsDeviceType
---@field Direct3D11 UnityEngine.Rendering.GraphicsDeviceType
---@field Null UnityEngine.Rendering.GraphicsDeviceType
---@field OpenGLES2 UnityEngine.Rendering.GraphicsDeviceType
---@field OpenGLES3 UnityEngine.Rendering.GraphicsDeviceType
---@field PlayStation4 UnityEngine.Rendering.GraphicsDeviceType
---@field XboxOne UnityEngine.Rendering.GraphicsDeviceType
---@field Metal UnityEngine.Rendering.GraphicsDeviceType
---@field OpenGLCore UnityEngine.Rendering.GraphicsDeviceType
---@field Direct3D12 UnityEngine.Rendering.GraphicsDeviceType
---@field Vulkan UnityEngine.Rendering.GraphicsDeviceType
---@field Switch UnityEngine.Rendering.GraphicsDeviceType
---@field XboxOneD3D12 UnityEngine.Rendering.GraphicsDeviceType
---@field GameCoreXboxOne UnityEngine.Rendering.GraphicsDeviceType
---@field GameCoreXboxSeries UnityEngine.Rendering.GraphicsDeviceType
---@field PlayStation5 UnityEngine.Rendering.GraphicsDeviceType
---@field PlayStation5NGGC UnityEngine.Rendering.GraphicsDeviceType
UnityEngine.Rendering.GraphicsDeviceType = {}
---@alias CS.UnityEngine.Rendering.GraphicsDeviceType UnityEngine.Rendering.GraphicsDeviceType
CS.UnityEngine.Rendering.GraphicsDeviceType = UnityEngine.Rendering.GraphicsDeviceType


---@class UnityEngine.Rendering.GraphicsTier
---@field Tier1 UnityEngine.Rendering.GraphicsTier
---@field Tier2 UnityEngine.Rendering.GraphicsTier
---@field Tier3 UnityEngine.Rendering.GraphicsTier
UnityEngine.Rendering.GraphicsTier = {}
---@alias CS.UnityEngine.Rendering.GraphicsTier UnityEngine.Rendering.GraphicsTier
CS.UnityEngine.Rendering.GraphicsTier = UnityEngine.Rendering.GraphicsTier


---@class UnityEngine.Rendering.SubMeshDescriptor : System.ValueType
---@field bounds UnityEngine.Bounds
---@field topology UnityEngine.MeshTopology
---@field indexStart number
---@field indexCount number
---@field baseVertex number
---@field firstVertex number
---@field vertexCount number
UnityEngine.Rendering.SubMeshDescriptor = {}
---@alias CS.UnityEngine.Rendering.SubMeshDescriptor UnityEngine.Rendering.SubMeshDescriptor
CS.UnityEngine.Rendering.SubMeshDescriptor = UnityEngine.Rendering.SubMeshDescriptor

---@param indexStart number
---@param indexCount number
---@param topology UnityEngine.MeshTopology
---@return UnityEngine.Rendering.SubMeshDescriptor
function UnityEngine.Rendering.SubMeshDescriptor.New(indexStart, indexCount, topology) end
---@return string
function UnityEngine.Rendering.SubMeshDescriptor:ToString() end

---@class UnityEngine.Rendering.VertexAttributeDescriptor : System.ValueType
---@field attribute UnityEngine.Rendering.VertexAttribute
---@field format UnityEngine.Rendering.VertexAttributeFormat
---@field dimension number
---@field stream number
UnityEngine.Rendering.VertexAttributeDescriptor = {}
---@alias CS.UnityEngine.Rendering.VertexAttributeDescriptor UnityEngine.Rendering.VertexAttributeDescriptor
CS.UnityEngine.Rendering.VertexAttributeDescriptor = UnityEngine.Rendering.VertexAttributeDescriptor

---@param attribute UnityEngine.Rendering.VertexAttribute
---@param format UnityEngine.Rendering.VertexAttributeFormat
---@param dimension number
---@param stream number
---@return UnityEngine.Rendering.VertexAttributeDescriptor
function UnityEngine.Rendering.VertexAttributeDescriptor.New(attribute, format, dimension, stream) end
---@return string
function UnityEngine.Rendering.VertexAttributeDescriptor:ToString() end
---@return number
function UnityEngine.Rendering.VertexAttributeDescriptor:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.VertexAttributeDescriptor, other: System.Object) : boolean
---@param other UnityEngine.Rendering.VertexAttributeDescriptor
---@return boolean
function UnityEngine.Rendering.VertexAttributeDescriptor:Equals(other) end

---@class UnityEngine.Rendering.FormatSwizzle
---@field FormatSwizzleR UnityEngine.Rendering.FormatSwizzle
---@field FormatSwizzleG UnityEngine.Rendering.FormatSwizzle
---@field FormatSwizzleB UnityEngine.Rendering.FormatSwizzle
---@field FormatSwizzleA UnityEngine.Rendering.FormatSwizzle
---@field FormatSwizzle0 UnityEngine.Rendering.FormatSwizzle
---@field FormatSwizzle1 UnityEngine.Rendering.FormatSwizzle
UnityEngine.Rendering.FormatSwizzle = {}
---@alias CS.UnityEngine.Rendering.FormatSwizzle UnityEngine.Rendering.FormatSwizzle
CS.UnityEngine.Rendering.FormatSwizzle = UnityEngine.Rendering.FormatSwizzle


---@class UnityEngine.Rendering.RenderTargetIdentifier : System.ValueType
---@field AllDepthSlices number
UnityEngine.Rendering.RenderTargetIdentifier = {}
---@alias CS.UnityEngine.Rendering.RenderTargetIdentifier UnityEngine.Rendering.RenderTargetIdentifier
CS.UnityEngine.Rendering.RenderTargetIdentifier = UnityEngine.Rendering.RenderTargetIdentifier

---@overload fun(type: UnityEngine.Rendering.BuiltinRenderTextureType) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(type: UnityEngine.Rendering.BuiltinRenderTextureType, mipLevel: number, cubeFace: UnityEngine.CubemapFace, depthSlice: number) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(name: string) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(name: string, mipLevel: number, cubeFace: UnityEngine.CubemapFace, depthSlice: number) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(nameID: number) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(nameID: number, mipLevel: number, cubeFace: UnityEngine.CubemapFace, depthSlice: number) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(renderTargetIdentifier: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number, cubeFace: UnityEngine.CubemapFace, depthSlice: number) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(tex: UnityEngine.Texture) : UnityEngine.Rendering.RenderTargetIdentifier
---@overload fun(tex: UnityEngine.Texture, mipLevel: number, cubeFace: UnityEngine.CubemapFace, depthSlice: number) : UnityEngine.Rendering.RenderTargetIdentifier
---@param buf UnityEngine.RenderBuffer
---@param mipLevel number
---@param cubeFace UnityEngine.CubemapFace
---@param depthSlice number
---@return UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.RenderTargetIdentifier.New(buf, mipLevel, cubeFace, depthSlice) end
---@return string
function UnityEngine.Rendering.RenderTargetIdentifier:ToString() end
---@return number
function UnityEngine.Rendering.RenderTargetIdentifier:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.RenderTargetIdentifier, rhs: UnityEngine.Rendering.RenderTargetIdentifier) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.RenderTargetIdentifier:Equals(obj) end

---@class UnityEngine.Rendering.RenderTargetFlags
---@field None UnityEngine.Rendering.RenderTargetFlags
---@field ReadOnlyDepth UnityEngine.Rendering.RenderTargetFlags
---@field ReadOnlyStencil UnityEngine.Rendering.RenderTargetFlags
---@field ReadOnlyDepthStencil UnityEngine.Rendering.RenderTargetFlags
UnityEngine.Rendering.RenderTargetFlags = {}
---@alias CS.UnityEngine.Rendering.RenderTargetFlags UnityEngine.Rendering.RenderTargetFlags
CS.UnityEngine.Rendering.RenderTargetFlags = UnityEngine.Rendering.RenderTargetFlags


---@class UnityEngine.Rendering.RenderTargetBinding : System.ValueType
---@field colorRenderTargets UnityEngine.Rendering.RenderTargetIdentifier[]
---@field depthRenderTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field colorLoadActions UnityEngine.Rendering.RenderBufferLoadAction[]
---@field colorStoreActions UnityEngine.Rendering.RenderBufferStoreAction[]
---@field depthLoadAction UnityEngine.Rendering.RenderBufferLoadAction
---@field depthStoreAction UnityEngine.Rendering.RenderBufferStoreAction
---@field flags UnityEngine.Rendering.RenderTargetFlags
UnityEngine.Rendering.RenderTargetBinding = {}
---@alias CS.UnityEngine.Rendering.RenderTargetBinding UnityEngine.Rendering.RenderTargetBinding
CS.UnityEngine.Rendering.RenderTargetBinding = UnityEngine.Rendering.RenderTargetBinding

---@overload fun(colorRenderTargets: UnityEngine.Rendering.RenderTargetIdentifier[], colorLoadActions: UnityEngine.Rendering.RenderBufferLoadAction[], colorStoreActions: UnityEngine.Rendering.RenderBufferStoreAction[], depthRenderTarget: UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction) : UnityEngine.Rendering.RenderTargetBinding
---@overload fun(colorRenderTarget: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthRenderTarget: UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction) : UnityEngine.Rendering.RenderTargetBinding
---@param setup UnityEngine.RenderTargetSetup
---@return UnityEngine.Rendering.RenderTargetBinding
function UnityEngine.Rendering.RenderTargetBinding.New(setup) end

---@class UnityEngine.Rendering.ReflectionProbeUsage
---@field Off UnityEngine.Rendering.ReflectionProbeUsage
---@field BlendProbes UnityEngine.Rendering.ReflectionProbeUsage
---@field BlendProbesAndSkybox UnityEngine.Rendering.ReflectionProbeUsage
---@field Simple UnityEngine.Rendering.ReflectionProbeUsage
UnityEngine.Rendering.ReflectionProbeUsage = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage
CS.UnityEngine.Rendering.ReflectionProbeUsage = UnityEngine.Rendering.ReflectionProbeUsage


---@class UnityEngine.Rendering.ReflectionProbeType
---@field Cube UnityEngine.Rendering.ReflectionProbeType
---@field Card UnityEngine.Rendering.ReflectionProbeType
UnityEngine.Rendering.ReflectionProbeType = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeType UnityEngine.Rendering.ReflectionProbeType
CS.UnityEngine.Rendering.ReflectionProbeType = UnityEngine.Rendering.ReflectionProbeType


---@class UnityEngine.Rendering.ReflectionProbeClearFlags
---@field Skybox UnityEngine.Rendering.ReflectionProbeClearFlags
---@field SolidColor UnityEngine.Rendering.ReflectionProbeClearFlags
UnityEngine.Rendering.ReflectionProbeClearFlags = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeClearFlags UnityEngine.Rendering.ReflectionProbeClearFlags
CS.UnityEngine.Rendering.ReflectionProbeClearFlags = UnityEngine.Rendering.ReflectionProbeClearFlags


---@class UnityEngine.Rendering.ReflectionProbeMode
---@field Baked UnityEngine.Rendering.ReflectionProbeMode
---@field Realtime UnityEngine.Rendering.ReflectionProbeMode
---@field Custom UnityEngine.Rendering.ReflectionProbeMode
UnityEngine.Rendering.ReflectionProbeMode = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeMode UnityEngine.Rendering.ReflectionProbeMode
CS.UnityEngine.Rendering.ReflectionProbeMode = UnityEngine.Rendering.ReflectionProbeMode


---@class UnityEngine.Rendering.ReflectionProbeBlendInfo : System.ValueType
---@field probe UnityEngine.ReflectionProbe
---@field weight number
UnityEngine.Rendering.ReflectionProbeBlendInfo = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeBlendInfo UnityEngine.Rendering.ReflectionProbeBlendInfo
CS.UnityEngine.Rendering.ReflectionProbeBlendInfo = UnityEngine.Rendering.ReflectionProbeBlendInfo


---@class UnityEngine.Rendering.ReflectionProbeRefreshMode
---@field OnAwake UnityEngine.Rendering.ReflectionProbeRefreshMode
---@field EveryFrame UnityEngine.Rendering.ReflectionProbeRefreshMode
---@field ViaScripting UnityEngine.Rendering.ReflectionProbeRefreshMode
UnityEngine.Rendering.ReflectionProbeRefreshMode = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeRefreshMode UnityEngine.Rendering.ReflectionProbeRefreshMode
CS.UnityEngine.Rendering.ReflectionProbeRefreshMode = UnityEngine.Rendering.ReflectionProbeRefreshMode


---@class UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
---@field AllFacesAtOnce UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
---@field IndividualFaces UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
---@field NoTimeSlicing UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
UnityEngine.Rendering.ReflectionProbeTimeSlicingMode = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeTimeSlicingMode UnityEngine.Rendering.ReflectionProbeTimeSlicingMode
CS.UnityEngine.Rendering.ReflectionProbeTimeSlicingMode = UnityEngine.Rendering.ReflectionProbeTimeSlicingMode


---@class UnityEngine.Rendering.ShadowSamplingMode
---@field CompareDepths UnityEngine.Rendering.ShadowSamplingMode
---@field RawDepth UnityEngine.Rendering.ShadowSamplingMode
---@field None UnityEngine.Rendering.ShadowSamplingMode
UnityEngine.Rendering.ShadowSamplingMode = {}
---@alias CS.UnityEngine.Rendering.ShadowSamplingMode UnityEngine.Rendering.ShadowSamplingMode
CS.UnityEngine.Rendering.ShadowSamplingMode = UnityEngine.Rendering.ShadowSamplingMode


---@class UnityEngine.Rendering.LightProbeUsage
---@field Off UnityEngine.Rendering.LightProbeUsage
---@field BlendProbes UnityEngine.Rendering.LightProbeUsage
---@field UseProxyVolume UnityEngine.Rendering.LightProbeUsage
---@field CustomProvided UnityEngine.Rendering.LightProbeUsage
UnityEngine.Rendering.LightProbeUsage = {}
---@alias CS.UnityEngine.Rendering.LightProbeUsage UnityEngine.Rendering.LightProbeUsage
CS.UnityEngine.Rendering.LightProbeUsage = UnityEngine.Rendering.LightProbeUsage


---@class UnityEngine.Rendering.BuiltinShaderType
---@field DeferredShading UnityEngine.Rendering.BuiltinShaderType
---@field DeferredReflections UnityEngine.Rendering.BuiltinShaderType
---@field ScreenSpaceShadows UnityEngine.Rendering.BuiltinShaderType
---@field DepthNormals UnityEngine.Rendering.BuiltinShaderType
---@field MotionVectors UnityEngine.Rendering.BuiltinShaderType
---@field LightHalo UnityEngine.Rendering.BuiltinShaderType
---@field LensFlare UnityEngine.Rendering.BuiltinShaderType
UnityEngine.Rendering.BuiltinShaderType = {}
---@alias CS.UnityEngine.Rendering.BuiltinShaderType UnityEngine.Rendering.BuiltinShaderType
CS.UnityEngine.Rendering.BuiltinShaderType = UnityEngine.Rendering.BuiltinShaderType


---@class UnityEngine.Rendering.BuiltinShaderMode
---@field Disabled UnityEngine.Rendering.BuiltinShaderMode
---@field UseBuiltin UnityEngine.Rendering.BuiltinShaderMode
---@field UseCustom UnityEngine.Rendering.BuiltinShaderMode
UnityEngine.Rendering.BuiltinShaderMode = {}
---@alias CS.UnityEngine.Rendering.BuiltinShaderMode UnityEngine.Rendering.BuiltinShaderMode
CS.UnityEngine.Rendering.BuiltinShaderMode = UnityEngine.Rendering.BuiltinShaderMode


---@class UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_NO_DXT5nm UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_NO_RGBM UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_ENABLE_REFLECTION_BUFFERS UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_FRAMEBUFFER_FETCH_AVAILABLE UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_ENABLE_NATIVE_SHADOW_LOOKUPS UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_METAL_SHADOWS_USE_POINT_FILTERING UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_NO_CUBEMAP_ARRAY UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_NO_SCREENSPACE_SHADOWS UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_USE_DITHER_MASK_FOR_ALPHABLENDED_SHADOWS UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_PBS_USE_BRDF1 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_PBS_USE_BRDF2 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_PBS_USE_BRDF3 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_NO_FULL_STANDARD_SHADER UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_SPECCUBE_BOX_PROJECTION UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_SPECCUBE_BLENDING UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_ENABLE_DETAIL_NORMALMAP UnityEngine.Rendering.BuiltinShaderDefine
---@field SHADER_API_MOBILE UnityEngine.Rendering.BuiltinShaderDefine
---@field SHADER_API_DESKTOP UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_HARDWARE_TIER1 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_HARDWARE_TIER2 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_HARDWARE_TIER3 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_COLORSPACE_GAMMA UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_LIGHT_PROBE_PROXY_VOLUME UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_LIGHTMAP_DLDR_ENCODING UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_LIGHTMAP_RGBM_ENCODING UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_LIGHTMAP_FULL_HDR UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_VIRTUAL_TEXTURING UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_PRETRANSFORM_TO_DISPLAY_ORIENTATION UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_ASTC_NORMALMAP_ENCODING UnityEngine.Rendering.BuiltinShaderDefine
---@field SHADER_API_GLES30 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_UNIFIED_SHADER_PRECISION_MODEL UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_PLATFORM_SUPPORTS_WAVE_32 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_PLATFORM_SUPPORTS_WAVE_64 UnityEngine.Rendering.BuiltinShaderDefine
---@field UNITY_NEEDS_RENDERPASS_FBFETCH_FALLBACK UnityEngine.Rendering.BuiltinShaderDefine
UnityEngine.Rendering.BuiltinShaderDefine = {}
---@alias CS.UnityEngine.Rendering.BuiltinShaderDefine UnityEngine.Rendering.BuiltinShaderDefine
CS.UnityEngine.Rendering.BuiltinShaderDefine = UnityEngine.Rendering.BuiltinShaderDefine


---@class UnityEngine.Rendering.VideoShadersIncludeMode
---@field Never UnityEngine.Rendering.VideoShadersIncludeMode
---@field Referenced UnityEngine.Rendering.VideoShadersIncludeMode
---@field Always UnityEngine.Rendering.VideoShadersIncludeMode
UnityEngine.Rendering.VideoShadersIncludeMode = {}
---@alias CS.UnityEngine.Rendering.VideoShadersIncludeMode UnityEngine.Rendering.VideoShadersIncludeMode
CS.UnityEngine.Rendering.VideoShadersIncludeMode = UnityEngine.Rendering.VideoShadersIncludeMode


---@class UnityEngine.Rendering.TextureDimension
---@field Unknown UnityEngine.Rendering.TextureDimension
---@field None UnityEngine.Rendering.TextureDimension
---@field Any UnityEngine.Rendering.TextureDimension
---@field Tex2D UnityEngine.Rendering.TextureDimension
---@field Tex3D UnityEngine.Rendering.TextureDimension
---@field Cube UnityEngine.Rendering.TextureDimension
---@field Tex2DArray UnityEngine.Rendering.TextureDimension
---@field CubeArray UnityEngine.Rendering.TextureDimension
UnityEngine.Rendering.TextureDimension = {}
---@alias CS.UnityEngine.Rendering.TextureDimension UnityEngine.Rendering.TextureDimension
CS.UnityEngine.Rendering.TextureDimension = UnityEngine.Rendering.TextureDimension


---@class UnityEngine.Rendering.CopyTextureSupport
---@field None UnityEngine.Rendering.CopyTextureSupport
---@field Basic UnityEngine.Rendering.CopyTextureSupport
---@field Copy3D UnityEngine.Rendering.CopyTextureSupport
---@field DifferentTypes UnityEngine.Rendering.CopyTextureSupport
---@field TextureToRT UnityEngine.Rendering.CopyTextureSupport
---@field RTToTexture UnityEngine.Rendering.CopyTextureSupport
UnityEngine.Rendering.CopyTextureSupport = {}
---@alias CS.UnityEngine.Rendering.CopyTextureSupport UnityEngine.Rendering.CopyTextureSupport
CS.UnityEngine.Rendering.CopyTextureSupport = UnityEngine.Rendering.CopyTextureSupport


---@class UnityEngine.Rendering.CameraHDRMode
---@field FP16 UnityEngine.Rendering.CameraHDRMode
---@field R11G11B10 UnityEngine.Rendering.CameraHDRMode
UnityEngine.Rendering.CameraHDRMode = {}
---@alias CS.UnityEngine.Rendering.CameraHDRMode UnityEngine.Rendering.CameraHDRMode
CS.UnityEngine.Rendering.CameraHDRMode = UnityEngine.Rendering.CameraHDRMode


---@class UnityEngine.Rendering.RealtimeGICPUUsage
---@field Low UnityEngine.Rendering.RealtimeGICPUUsage
---@field Medium UnityEngine.Rendering.RealtimeGICPUUsage
---@field High UnityEngine.Rendering.RealtimeGICPUUsage
---@field Unlimited UnityEngine.Rendering.RealtimeGICPUUsage
UnityEngine.Rendering.RealtimeGICPUUsage = {}
---@alias CS.UnityEngine.Rendering.RealtimeGICPUUsage UnityEngine.Rendering.RealtimeGICPUUsage
CS.UnityEngine.Rendering.RealtimeGICPUUsage = UnityEngine.Rendering.RealtimeGICPUUsage


---@class UnityEngine.Rendering.LightProbeOutsideHullStrategy
---@field kLightProbeSearchTetrahedralHull UnityEngine.Rendering.LightProbeOutsideHullStrategy
---@field kLightProbeUseAmbientProbe UnityEngine.Rendering.LightProbeOutsideHullStrategy
UnityEngine.Rendering.LightProbeOutsideHullStrategy = {}
---@alias CS.UnityEngine.Rendering.LightProbeOutsideHullStrategy UnityEngine.Rendering.LightProbeOutsideHullStrategy
CS.UnityEngine.Rendering.LightProbeOutsideHullStrategy = UnityEngine.Rendering.LightProbeOutsideHullStrategy


---@class UnityEngine.Rendering.ComputeQueueType
---@field Default UnityEngine.Rendering.ComputeQueueType
---@field Background UnityEngine.Rendering.ComputeQueueType
---@field Urgent UnityEngine.Rendering.ComputeQueueType
UnityEngine.Rendering.ComputeQueueType = {}
---@alias CS.UnityEngine.Rendering.ComputeQueueType UnityEngine.Rendering.ComputeQueueType
CS.UnityEngine.Rendering.ComputeQueueType = UnityEngine.Rendering.ComputeQueueType


---@class UnityEngine.Rendering.SinglePassStereoMode
---@field None UnityEngine.Rendering.SinglePassStereoMode
---@field SideBySide UnityEngine.Rendering.SinglePassStereoMode
---@field Instancing UnityEngine.Rendering.SinglePassStereoMode
---@field Multiview UnityEngine.Rendering.SinglePassStereoMode
UnityEngine.Rendering.SinglePassStereoMode = {}
---@alias CS.UnityEngine.Rendering.SinglePassStereoMode UnityEngine.Rendering.SinglePassStereoMode
CS.UnityEngine.Rendering.SinglePassStereoMode = UnityEngine.Rendering.SinglePassStereoMode


---@class UnityEngine.Rendering.FoveatedRenderingCaps
---@field None UnityEngine.Rendering.FoveatedRenderingCaps
---@field FoveationImage UnityEngine.Rendering.FoveatedRenderingCaps
---@field NonUniformRaster UnityEngine.Rendering.FoveatedRenderingCaps
UnityEngine.Rendering.FoveatedRenderingCaps = {}
---@alias CS.UnityEngine.Rendering.FoveatedRenderingCaps UnityEngine.Rendering.FoveatedRenderingCaps
CS.UnityEngine.Rendering.FoveatedRenderingCaps = UnityEngine.Rendering.FoveatedRenderingCaps


---@class UnityEngine.Rendering.FoveatedRenderingMode
---@field Disabled UnityEngine.Rendering.FoveatedRenderingMode
---@field Enabled UnityEngine.Rendering.FoveatedRenderingMode
UnityEngine.Rendering.FoveatedRenderingMode = {}
---@alias CS.UnityEngine.Rendering.FoveatedRenderingMode UnityEngine.Rendering.FoveatedRenderingMode
CS.UnityEngine.Rendering.FoveatedRenderingMode = UnityEngine.Rendering.FoveatedRenderingMode


---@class UnityEngine.Rendering.CommandBufferExecutionFlags
---@field None UnityEngine.Rendering.CommandBufferExecutionFlags
---@field AsyncCompute UnityEngine.Rendering.CommandBufferExecutionFlags
UnityEngine.Rendering.CommandBufferExecutionFlags = {}
---@alias CS.UnityEngine.Rendering.CommandBufferExecutionFlags UnityEngine.Rendering.CommandBufferExecutionFlags
CS.UnityEngine.Rendering.CommandBufferExecutionFlags = UnityEngine.Rendering.CommandBufferExecutionFlags


---@class UnityEngine.Rendering.RTClearFlags
---@field None UnityEngine.Rendering.RTClearFlags
---@field Color UnityEngine.Rendering.RTClearFlags
---@field Depth UnityEngine.Rendering.RTClearFlags
---@field Stencil UnityEngine.Rendering.RTClearFlags
---@field All UnityEngine.Rendering.RTClearFlags
---@field DepthStencil UnityEngine.Rendering.RTClearFlags
---@field ColorDepth UnityEngine.Rendering.RTClearFlags
---@field ColorStencil UnityEngine.Rendering.RTClearFlags
UnityEngine.Rendering.RTClearFlags = {}
---@alias CS.UnityEngine.Rendering.RTClearFlags UnityEngine.Rendering.RTClearFlags
CS.UnityEngine.Rendering.RTClearFlags = UnityEngine.Rendering.RTClearFlags


---@class UnityEngine.Rendering.RenderTextureSubElement
---@field Color UnityEngine.Rendering.RenderTextureSubElement
---@field Depth UnityEngine.Rendering.RenderTextureSubElement
---@field Stencil UnityEngine.Rendering.RenderTextureSubElement
---@field Default UnityEngine.Rendering.RenderTextureSubElement
UnityEngine.Rendering.RenderTextureSubElement = {}
---@alias CS.UnityEngine.Rendering.RenderTextureSubElement UnityEngine.Rendering.RenderTextureSubElement
CS.UnityEngine.Rendering.RenderTextureSubElement = UnityEngine.Rendering.RenderTextureSubElement


---@class UnityEngine.Rendering.RenderingThreadingMode
---@field Direct UnityEngine.Rendering.RenderingThreadingMode
---@field SingleThreaded UnityEngine.Rendering.RenderingThreadingMode
---@field MultiThreaded UnityEngine.Rendering.RenderingThreadingMode
---@field LegacyJobified UnityEngine.Rendering.RenderingThreadingMode
---@field NativeGraphicsJobs UnityEngine.Rendering.RenderingThreadingMode
---@field NativeGraphicsJobsWithoutRenderThread UnityEngine.Rendering.RenderingThreadingMode
UnityEngine.Rendering.RenderingThreadingMode = {}
---@alias CS.UnityEngine.Rendering.RenderingThreadingMode UnityEngine.Rendering.RenderingThreadingMode
CS.UnityEngine.Rendering.RenderingThreadingMode = UnityEngine.Rendering.RenderingThreadingMode


---@class UnityEngine.Rendering.CameraLateLatchMatrixType
---@field View UnityEngine.Rendering.CameraLateLatchMatrixType
---@field InverseView UnityEngine.Rendering.CameraLateLatchMatrixType
---@field ViewProjection UnityEngine.Rendering.CameraLateLatchMatrixType
---@field InverseViewProjection UnityEngine.Rendering.CameraLateLatchMatrixType
UnityEngine.Rendering.CameraLateLatchMatrixType = {}
---@alias CS.UnityEngine.Rendering.CameraLateLatchMatrixType UnityEngine.Rendering.CameraLateLatchMatrixType
CS.UnityEngine.Rendering.CameraLateLatchMatrixType = UnityEngine.Rendering.CameraLateLatchMatrixType


---@class UnityEngine.Rendering.OpenGLESVersion
---@field None UnityEngine.Rendering.OpenGLESVersion
---@field OpenGLES20 UnityEngine.Rendering.OpenGLESVersion
---@field OpenGLES30 UnityEngine.Rendering.OpenGLESVersion
---@field OpenGLES31 UnityEngine.Rendering.OpenGLESVersion
---@field OpenGLES31AEP UnityEngine.Rendering.OpenGLESVersion
---@field OpenGLES32 UnityEngine.Rendering.OpenGLESVersion
UnityEngine.Rendering.OpenGLESVersion = {}
---@alias CS.UnityEngine.Rendering.OpenGLESVersion UnityEngine.Rendering.OpenGLESVersion
CS.UnityEngine.Rendering.OpenGLESVersion = UnityEngine.Rendering.OpenGLESVersion


---@class UnityEngine.Rendering.CustomMarkerCallbackFlags
---@field CustomMarkerCallbackDefault UnityEngine.Rendering.CustomMarkerCallbackFlags
---@field CustomMarkerCallbackForceInvalidateStateTracking UnityEngine.Rendering.CustomMarkerCallbackFlags
UnityEngine.Rendering.CustomMarkerCallbackFlags = {}
---@alias CS.UnityEngine.Rendering.CustomMarkerCallbackFlags UnityEngine.Rendering.CustomMarkerCallbackFlags
CS.UnityEngine.Rendering.CustomMarkerCallbackFlags = UnityEngine.Rendering.CustomMarkerCallbackFlags


---@class UnityEngine.Rendering.SynchronisationStageFlags
---@field VertexProcessing UnityEngine.Rendering.SynchronisationStageFlags
---@field PixelProcessing UnityEngine.Rendering.SynchronisationStageFlags
---@field ComputeProcessing UnityEngine.Rendering.SynchronisationStageFlags
---@field AllGPUOperations UnityEngine.Rendering.SynchronisationStageFlags
UnityEngine.Rendering.SynchronisationStageFlags = {}
---@alias CS.UnityEngine.Rendering.SynchronisationStageFlags UnityEngine.Rendering.SynchronisationStageFlags
CS.UnityEngine.Rendering.SynchronisationStageFlags = UnityEngine.Rendering.SynchronisationStageFlags


---@class UnityEngine.Rendering.GraphicsFenceType
---@field AsyncQueueSynchronisation UnityEngine.Rendering.GraphicsFenceType
---@field CPUSynchronisation UnityEngine.Rendering.GraphicsFenceType
UnityEngine.Rendering.GraphicsFenceType = {}
---@alias CS.UnityEngine.Rendering.GraphicsFenceType UnityEngine.Rendering.GraphicsFenceType
CS.UnityEngine.Rendering.GraphicsFenceType = UnityEngine.Rendering.GraphicsFenceType


---@class UnityEngine.Rendering.GraphicsFence : System.ValueType
---@field passed boolean
UnityEngine.Rendering.GraphicsFence = {}
---@alias CS.UnityEngine.Rendering.GraphicsFence UnityEngine.Rendering.GraphicsFence
CS.UnityEngine.Rendering.GraphicsFence = UnityEngine.Rendering.GraphicsFence


---@class UnityEngine.Rendering.GraphicsSettings : UnityEngine.Object
---@field transparencySortMode UnityEngine.TransparencySortMode
---@field transparencySortAxis UnityEngine.Vector3
---@field realtimeDirectRectangularAreaLights boolean
---@field lightsUseLinearIntensity boolean
---@field lightsUseColorTemperature boolean
---@field defaultRenderingLayerMask number
---@field useScriptableRenderPipelineBatching boolean
---@field logWhenShaderIsCompiled boolean
---@field disableBuiltinCustomRenderTextureUpdate boolean
---@field videoShadersIncludeMode UnityEngine.Rendering.VideoShadersIncludeMode
---@field lightProbeOutsideHullStrategy UnityEngine.Rendering.LightProbeOutsideHullStrategy
---@field currentRenderPipeline UnityEngine.Rendering.RenderPipelineAsset
---@field renderPipelineAsset UnityEngine.Rendering.RenderPipelineAsset
---@field defaultRenderPipeline UnityEngine.Rendering.RenderPipelineAsset
---@field allConfiguredRenderPipelines UnityEngine.Rendering.RenderPipelineAsset[]
---@field cameraRelativeLightCulling boolean
---@field cameraRelativeShadowCulling boolean
UnityEngine.Rendering.GraphicsSettings = {}
---@alias CS.UnityEngine.Rendering.GraphicsSettings UnityEngine.Rendering.GraphicsSettings
CS.UnityEngine.Rendering.GraphicsSettings = UnityEngine.Rendering.GraphicsSettings

---@overload fun(tier: UnityEngine.Rendering.GraphicsTier, defineHash: UnityEngine.Rendering.BuiltinShaderDefine) : boolean
---@param defineHash UnityEngine.Rendering.BuiltinShaderDefine
---@return boolean
function UnityEngine.Rendering.GraphicsSettings.HasShaderDefine(defineHash) end
---@return UnityEngine.Object
function UnityEngine.Rendering.GraphicsSettings.GetGraphicsSettings() end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@param mode UnityEngine.Rendering.BuiltinShaderMode
function UnityEngine.Rendering.GraphicsSettings.SetShaderMode(type, mode) end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@return UnityEngine.Rendering.BuiltinShaderMode
function UnityEngine.Rendering.GraphicsSettings.GetShaderMode(type) end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@param shader UnityEngine.Shader
function UnityEngine.Rendering.GraphicsSettings.SetCustomShader(type, shader) end
---@param type UnityEngine.Rendering.BuiltinShaderType
---@return UnityEngine.Shader
function UnityEngine.Rendering.GraphicsSettings.GetCustomShader(type) end

---@class UnityEngine.Rendering.OnDemandRendering : System.Object
---@field willCurrentFrameRender boolean
---@field renderFrameInterval number
---@field effectiveRenderFrameRate number
UnityEngine.Rendering.OnDemandRendering = {}
---@alias CS.UnityEngine.Rendering.OnDemandRendering UnityEngine.Rendering.OnDemandRendering
CS.UnityEngine.Rendering.OnDemandRendering = UnityEngine.Rendering.OnDemandRendering

---@return UnityEngine.Rendering.OnDemandRendering
function UnityEngine.Rendering.OnDemandRendering.New() end

---@class UnityEngine.Rendering.CommandBuffer : System.Object
---@field name string
---@field sizeInBytes number
UnityEngine.Rendering.CommandBuffer = {}
---@alias CS.UnityEngine.Rendering.CommandBuffer UnityEngine.Rendering.CommandBuffer
CS.UnityEngine.Rendering.CommandBuffer = UnityEngine.Rendering.CommandBuffer

---@return UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.CommandBuffer.New() end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Rendering.RenderTargetIdentifier, dst: UnityEngine.Rendering.RenderTargetIdentifier)
---@param src UnityEngine.Rendering.RenderTargetIdentifier
---@param srcElement number
---@param dst UnityEngine.Rendering.RenderTargetIdentifier
---@param dstElement number
function UnityEngine.Rendering.CommandBuffer:ConvertTexture(src, srcElement, dst, dstElement) end
function UnityEngine.Rendering.CommandBuffer:WaitAllAsyncReadbackRequests() end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.ComputeBuffer, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.GraphicsBuffer, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.ComputeBuffer, size: number, offset: number, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.GraphicsBuffer, size: number, offset: number, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Texture, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Texture, mipIndex: number, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Texture, mipIndex: number, dstFormat: UnityEngine.TextureFormat, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Texture, mipIndex: number, dstFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Texture, mipIndex: number, x: number, width: number, y: number, height: number, z: number, depth: number, callback: System.Action)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Texture, mipIndex: number, x: number, width: number, y: number, height: number, z: number, depth: number, dstFormat: UnityEngine.TextureFormat, callback: System.Action)
---@param src UnityEngine.Texture
---@param mipIndex number
---@param x number
---@param width number
---@param y number
---@param height number
---@param z number
---@param depth number
---@param dstFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@param callback System.Action
function UnityEngine.Rendering.CommandBuffer:RequestAsyncReadback(src, mipIndex, x, width, y, height, z, depth, dstFormat, callback) end
---@param invertCulling boolean
function UnityEngine.Rendering.CommandBuffer:SetInvertCulling(invertCulling) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, val: number)
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param val number
function UnityEngine.Rendering.CommandBuffer:SetComputeFloatParam(computeShader, name, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, val: number)
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param val number
function UnityEngine.Rendering.CommandBuffer:SetComputeIntParam(computeShader, name, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, val: UnityEngine.Vector4)
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param val UnityEngine.Vector4
function UnityEngine.Rendering.CommandBuffer:SetComputeVectorParam(computeShader, name, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, values: UnityEngine.Vector4[])
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param values UnityEngine.Vector4[]
function UnityEngine.Rendering.CommandBuffer:SetComputeVectorArrayParam(computeShader, name, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, val: UnityEngine.Matrix4x4)
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param val UnityEngine.Matrix4x4
function UnityEngine.Rendering.CommandBuffer:SetComputeMatrixParam(computeShader, name, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, values: UnityEngine.Matrix4x4[])
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.Rendering.CommandBuffer:SetComputeMatrixArrayParam(computeShader, name, values) end
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param passName string
function UnityEngine.Rendering.CommandBuffer:SetRayTracingShaderPass(rayTracingShader, passName) end
function UnityEngine.Rendering.CommandBuffer:Clear() end
function UnityEngine.Rendering.CommandBuffer:ClearRandomWriteTargets() end
---@param pixelRect UnityEngine.Rect
function UnityEngine.Rendering.CommandBuffer:SetViewport(pixelRect) end
---@param scissor UnityEngine.Rect
function UnityEngine.Rendering.CommandBuffer:EnableScissorRect(scissor) end
function UnityEngine.Rendering.CommandBuffer:DisableScissorRect() end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, enableRandomWrite: boolean, memorylessMode: UnityEngine.RenderTextureMemoryless, useDynamicScale: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, enableRandomWrite: boolean, memorylessMode: UnityEngine.RenderTextureMemoryless)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, enableRandomWrite: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number, enableRandomWrite: boolean, memorylessMode: UnityEngine.RenderTextureMemoryless, useDynamicScale: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number, enableRandomWrite: boolean, memorylessMode: UnityEngine.RenderTextureMemoryless)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number, enableRandomWrite: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number, filter: UnityEngine.FilterMode)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, depthBuffer: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, desc: UnityEngine.RenderTextureDescriptor, filter: UnityEngine.FilterMode)
---@param nameID number
---@param desc UnityEngine.RenderTextureDescriptor
function UnityEngine.Rendering.CommandBuffer:GetTemporaryRT(nameID, desc) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, enableRandomWrite: boolean, useDynamicScale: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, enableRandomWrite: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.Experimental.Rendering.GraphicsFormat)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number, enableRandomWrite: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode, format: UnityEngine.RenderTextureFormat)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number, filter: UnityEngine.FilterMode)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, width: number, height: number, slices: number, depthBuffer: number)
---@param nameID number
---@param width number
---@param height number
---@param slices number
function UnityEngine.Rendering.CommandBuffer:GetTemporaryRTArray(nameID, width, height, slices) end
---@param nameID number
function UnityEngine.Rendering.CommandBuffer:ReleaseTemporaryRT(nameID) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, clearFlags: UnityEngine.Rendering.RTClearFlags, backgroundColor: UnityEngine.Color, depth: number, stencil: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, clearDepth: boolean, clearColor: boolean, backgroundColor: UnityEngine.Color)
---@param clearDepth boolean
---@param clearColor boolean
---@param backgroundColor UnityEngine.Color
---@param depth number
function UnityEngine.Rendering.CommandBuffer:ClearRenderTarget(clearDepth, clearColor, backgroundColor, depth) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: number)
---@param name string
---@param value number
function UnityEngine.Rendering.CommandBuffer:SetGlobalFloat(name, value) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: number)
---@param name string
---@param value number
function UnityEngine.Rendering.CommandBuffer:SetGlobalInt(name, value) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: number)
---@param name string
---@param value number
function UnityEngine.Rendering.CommandBuffer:SetGlobalInteger(name, value) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: UnityEngine.Vector4)
---@param name string
---@param value UnityEngine.Vector4
function UnityEngine.Rendering.CommandBuffer:SetGlobalVector(name, value) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: UnityEngine.Color)
---@param name string
---@param value UnityEngine.Color
function UnityEngine.Rendering.CommandBuffer:SetGlobalColor(name, value) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: UnityEngine.Matrix4x4)
---@param name string
---@param value UnityEngine.Matrix4x4
function UnityEngine.Rendering.CommandBuffer:SetGlobalMatrix(name, value) end
---@param keyword string
function UnityEngine.Rendering.CommandBuffer:EnableShaderKeyword(keyword) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, ref_keyword: UnityEngine.Rendering.GlobalKeyword) : UnityEngine.Rendering.GlobalKeyword
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, material: UnityEngine.Material, ref_keyword: UnityEngine.Rendering.LocalKeyword) : UnityEngine.Rendering.LocalKeyword
---@param computeShader UnityEngine.ComputeShader
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.Rendering.CommandBuffer:EnableKeyword(computeShader, ref_keyword) end
---@param keyword string
function UnityEngine.Rendering.CommandBuffer:DisableShaderKeyword(keyword) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, ref_keyword: UnityEngine.Rendering.GlobalKeyword) : UnityEngine.Rendering.GlobalKeyword
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, material: UnityEngine.Material, ref_keyword: UnityEngine.Rendering.LocalKeyword) : UnityEngine.Rendering.LocalKeyword
---@param computeShader UnityEngine.ComputeShader
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.Rendering.CommandBuffer:DisableKeyword(computeShader, ref_keyword) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, ref_keyword: UnityEngine.Rendering.GlobalKeyword, value: boolean) : UnityEngine.Rendering.GlobalKeyword
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, material: UnityEngine.Material, ref_keyword: UnityEngine.Rendering.LocalKeyword, value: boolean) : UnityEngine.Rendering.LocalKeyword
---@param computeShader UnityEngine.ComputeShader
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@param value boolean
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.Rendering.CommandBuffer:SetKeyword(computeShader, ref_keyword, value) end
---@param view UnityEngine.Matrix4x4
function UnityEngine.Rendering.CommandBuffer:SetViewMatrix(view) end
---@param proj UnityEngine.Matrix4x4
function UnityEngine.Rendering.CommandBuffer:SetProjectionMatrix(proj) end
---@param view UnityEngine.Matrix4x4
---@param proj UnityEngine.Matrix4x4
function UnityEngine.Rendering.CommandBuffer:SetViewProjectionMatrices(view, proj) end
---@param bias number
---@param slopeBias number
function UnityEngine.Rendering.CommandBuffer:SetGlobalDepthBias(bias, slopeBias) end
---@param flags UnityEngine.Rendering.CommandBufferExecutionFlags
function UnityEngine.Rendering.CommandBuffer:SetExecutionFlags(flags) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, values: System.Single[])
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, propertyName: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, values: System.Collections.Generic.List)
---@param propertyName string
---@param values System.Single[]
function UnityEngine.Rendering.CommandBuffer:SetGlobalFloatArray(propertyName, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, values: UnityEngine.Vector4[])
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, propertyName: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, values: System.Collections.Generic.List)
---@param propertyName string
---@param values UnityEngine.Vector4[]
function UnityEngine.Rendering.CommandBuffer:SetGlobalVectorArray(propertyName, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, values: UnityEngine.Matrix4x4[])
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, propertyName: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, values: System.Collections.Generic.List)
---@param propertyName string
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.Rendering.CommandBuffer:SetGlobalMatrixArray(propertyName, values) end
---@param projectionMat UnityEngine.Matrix4x4[]
function UnityEngine.Rendering.CommandBuffer:SetLateLatchProjectionMatrices(projectionMat) end
---@param matrixPropertyType UnityEngine.Rendering.CameraLateLatchMatrixType
---@param shaderPropertyID number
function UnityEngine.Rendering.CommandBuffer:MarkLateLatchMatrixShaderPropertyID(matrixPropertyType, shaderPropertyID) end
---@param matrixPropertyType UnityEngine.Rendering.CameraLateLatchMatrixType
function UnityEngine.Rendering.CommandBuffer:UnmarkLateLatchMatrix(matrixPropertyType) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, name: string)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, sampler: UnityEngine.Profiling.CustomSampler)
---@param marker Unity.Profiling.ProfilerMarker
function UnityEngine.Rendering.CommandBuffer:BeginSample(marker) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, name: string)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, sampler: UnityEngine.Profiling.CustomSampler)
---@param marker Unity.Profiling.ProfilerMarker
function UnityEngine.Rendering.CommandBuffer:EndSample(marker) end
---@param dest UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.CommandBuffer:IncrementUpdateCount(dest) end
---@param multiplier number
function UnityEngine.Rendering.CommandBuffer:SetInstanceMultiplier(multiplier) end
---@param foveatedRenderingMode UnityEngine.Rendering.FoveatedRenderingMode
function UnityEngine.Rendering.CommandBuffer:SetFoveatedRenderingMode(foveatedRenderingMode) end
---@param enable boolean
function UnityEngine.Rendering.CommandBuffer:SetWireframe(enable) end
---@param platformData System.IntPtr
function UnityEngine.Rendering.CommandBuffer:ConfigureFoveatedRendering(platformData) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier, loadAction: UnityEngine.Rendering.RenderBufferLoadAction, storeAction: UnityEngine.Rendering.RenderBufferStoreAction)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number, cubemapFace: UnityEngine.CubemapFace)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, color: UnityEngine.Rendering.RenderTargetIdentifier, depth: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, color: UnityEngine.Rendering.RenderTargetIdentifier, depth: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, color: UnityEngine.Rendering.RenderTargetIdentifier, depth: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number, cubemapFace: UnityEngine.CubemapFace)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, color: UnityEngine.Rendering.RenderTargetIdentifier, depth: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, color: UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction: UnityEngine.Rendering.RenderBufferStoreAction, depth: UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction: UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction: UnityEngine.Rendering.RenderBufferStoreAction)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, colors: UnityEngine.Rendering.RenderTargetIdentifier[], depth: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, colors: UnityEngine.Rendering.RenderTargetIdentifier[], depth: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, binding: UnityEngine.Rendering.RenderTargetBinding, mipLevel: number, cubemapFace: UnityEngine.CubemapFace, depthSlice: number)
---@param binding UnityEngine.Rendering.RenderTargetBinding
function UnityEngine.Rendering.CommandBuffer:SetRenderTarget(binding) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.ComputeBuffer, data: System.Array)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.ComputeBuffer, data: System.Array, managedBufferStartIndex: number, graphicsBufferStartIndex: number, count: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.GraphicsBuffer, data: System.Array)
---@param buffer UnityEngine.GraphicsBuffer
---@param data System.Array
---@param managedBufferStartIndex number
---@param graphicsBufferStartIndex number
---@param count number
function UnityEngine.Rendering.CommandBuffer:SetBufferData(buffer, data, managedBufferStartIndex, graphicsBufferStartIndex, count) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.ComputeBuffer, counterValue: number)
---@param buffer UnityEngine.GraphicsBuffer
---@param counterValue number
function UnityEngine.Rendering.CommandBuffer:SetBufferCounterValue(buffer, counterValue) end
function UnityEngine.Rendering.CommandBuffer:Dispose() end
function UnityEngine.Rendering.CommandBuffer:Release() end
---@overload fun() : UnityEngine.Rendering.GraphicsFence
---@param stage UnityEngine.Rendering.SynchronisationStage
---@return UnityEngine.Rendering.GraphicsFence
function UnityEngine.Rendering.CommandBuffer:CreateAsyncGraphicsFence(stage) end
---@param fenceType UnityEngine.Rendering.GraphicsFenceType
---@param stage UnityEngine.Rendering.SynchronisationStageFlags
---@return UnityEngine.Rendering.GraphicsFence
function UnityEngine.Rendering.CommandBuffer:CreateGraphicsFence(fenceType, stage) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, fence: UnityEngine.Rendering.GraphicsFence)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, fence: UnityEngine.Rendering.GraphicsFence, stage: UnityEngine.Rendering.SynchronisationStage)
---@param fence UnityEngine.Rendering.GraphicsFence
---@param stage UnityEngine.Rendering.SynchronisationStageFlags
function UnityEngine.Rendering.CommandBuffer:WaitOnAsyncGraphicsFence(fence, stage) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, name: string, values: System.Single[])
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param values System.Single[]
function UnityEngine.Rendering.CommandBuffer:SetComputeFloatParams(computeShader, nameID, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, name: string, values: System.Int32[])
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param values System.Int32[]
function UnityEngine.Rendering.CommandBuffer:SetComputeIntParams(computeShader, nameID, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, name: string, rt: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, rt: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, name: string, rt: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, rt: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, name: string, rt: UnityEngine.Rendering.RenderTargetIdentifier, mipLevel: number, element: UnityEngine.Rendering.RenderTextureSubElement)
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex number
---@param nameID number
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
---@param mipLevel number
---@param element UnityEngine.Rendering.RenderTextureSubElement
function UnityEngine.Rendering.CommandBuffer:SetComputeTextureParam(computeShader, kernelIndex, nameID, rt, mipLevel, element) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, buffer: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, name: string, buffer: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, bufferHandle: UnityEngine.GraphicsBufferHandle)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, name: string, bufferHandle: UnityEngine.GraphicsBufferHandle)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, buffer: UnityEngine.GraphicsBuffer)
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex number
---@param name string
---@param buffer UnityEngine.GraphicsBuffer
function UnityEngine.Rendering.CommandBuffer:SetComputeBufferParam(computeShader, kernelIndex, name, buffer) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, name: string, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, nameID: number, buffer: UnityEngine.GraphicsBuffer, offset: number, size: number)
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param buffer UnityEngine.GraphicsBuffer
---@param offset number
---@param size number
function UnityEngine.Rendering.CommandBuffer:SetComputeConstantBufferParam(computeShader, name, buffer, offset, size) end
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex number
---@param material UnityEngine.Material
function UnityEngine.Rendering.CommandBuffer:SetComputeParamsFromMaterial(computeShader, kernelIndex, material) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, threadGroupsX: number, threadGroupsY: number, threadGroupsZ: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, computeShader: UnityEngine.ComputeShader, kernelIndex: number, indirectBuffer: UnityEngine.ComputeBuffer, argsOffset: number)
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex number
---@param indirectBuffer UnityEngine.GraphicsBuffer
---@param argsOffset number
function UnityEngine.Rendering.CommandBuffer:DispatchCompute(computeShader, kernelIndex, indirectBuffer, argsOffset) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, accelerationStructure: UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure)
---@param accelerationStructure UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
---@param relativeOrigin UnityEngine.Vector3
function UnityEngine.Rendering.CommandBuffer:BuildRayTracingAccelerationStructure(accelerationStructure, relativeOrigin) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, rayTracingAccelerationStructure: UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param rayTracingAccelerationStructure UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function UnityEngine.Rendering.CommandBuffer:SetRayTracingAccelerationStructure(rayTracingShader, nameID, rayTracingAccelerationStructure) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, buffer: UnityEngine.ComputeBuffer)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param buffer UnityEngine.ComputeBuffer
function UnityEngine.Rendering.CommandBuffer:SetRayTracingBufferParam(rayTracingShader, nameID, buffer) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, buffer: UnityEngine.GraphicsBuffer, offset: number, size: number)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param name string
---@param buffer UnityEngine.GraphicsBuffer
---@param offset number
---@param size number
function UnityEngine.Rendering.CommandBuffer:SetRayTracingConstantBufferParam(rayTracingShader, name, buffer, offset, size) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, rt: UnityEngine.Rendering.RenderTargetIdentifier)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.CommandBuffer:SetRayTracingTextureParam(rayTracingShader, nameID, rt) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, val: number)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param val number
function UnityEngine.Rendering.CommandBuffer:SetRayTracingFloatParam(rayTracingShader, nameID, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, values: System.Single[])
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param values System.Single[]
function UnityEngine.Rendering.CommandBuffer:SetRayTracingFloatParams(rayTracingShader, nameID, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, val: number)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param val number
function UnityEngine.Rendering.CommandBuffer:SetRayTracingIntParam(rayTracingShader, nameID, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, values: System.Int32[])
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param values System.Int32[]
function UnityEngine.Rendering.CommandBuffer:SetRayTracingIntParams(rayTracingShader, nameID, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, val: UnityEngine.Vector4)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param val UnityEngine.Vector4
function UnityEngine.Rendering.CommandBuffer:SetRayTracingVectorParam(rayTracingShader, nameID, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, values: UnityEngine.Vector4[])
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param values UnityEngine.Vector4[]
function UnityEngine.Rendering.CommandBuffer:SetRayTracingVectorArrayParam(rayTracingShader, nameID, values) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, val: UnityEngine.Matrix4x4)
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param val UnityEngine.Matrix4x4
function UnityEngine.Rendering.CommandBuffer:SetRayTracingMatrixParam(rayTracingShader, nameID, val) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rayTracingShader: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, values: UnityEngine.Matrix4x4[])
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.Rendering.CommandBuffer:SetRayTracingMatrixArrayParam(rayTracingShader, nameID, values) end
---@param rayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
---@param rayGenName string
---@param width number
---@param height number
---@param depth number
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.CommandBuffer:DispatchRays(rayTracingShader, rayGenName, width, height, depth, camera) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier)
---@param rt UnityEngine.RenderTexture
function UnityEngine.Rendering.CommandBuffer:GenerateMips(rt) end
---@param rt UnityEngine.RenderTexture
---@param target UnityEngine.RenderTexture
function UnityEngine.Rendering.CommandBuffer:ResolveAntiAliasedSurface(rt, target) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, submeshIndex: number, shaderPass: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, submeshIndex: number, shaderPass: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, submeshIndex: number)
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
function UnityEngine.Rendering.CommandBuffer:DrawMesh(mesh, matrix, material) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, renderer: UnityEngine.Renderer, material: UnityEngine.Material, submeshIndex: number, shaderPass: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, renderer: UnityEngine.Renderer, material: UnityEngine.Material, submeshIndex: number)
---@param renderer UnityEngine.Renderer
---@param material UnityEngine.Material
function UnityEngine.Rendering.CommandBuffer:DrawRenderer(renderer, material) end
---@param rendererList UnityEngine.Rendering.RendererList
function UnityEngine.Rendering.CommandBuffer:DrawRendererList(rendererList) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, vertexCount: number, instanceCount: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, vertexCount: number, instanceCount: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, vertexCount: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, indexBuffer: UnityEngine.GraphicsBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, indexCount: number, instanceCount: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, indexBuffer: UnityEngine.GraphicsBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, indexCount: number, instanceCount: number)
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param shaderPass number
---@param topology UnityEngine.MeshTopology
---@param indexCount number
function UnityEngine.Rendering.CommandBuffer:DrawProcedural(indexBuffer, matrix, material, shaderPass, topology, indexCount) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, indexBuffer: UnityEngine.GraphicsBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, indexBuffer: UnityEngine.GraphicsBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, indexBuffer: UnityEngine.GraphicsBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.GraphicsBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, indexBuffer: UnityEngine.GraphicsBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, indexBuffer: UnityEngine.GraphicsBuffer, matrix: UnityEngine.Matrix4x4, material: UnityEngine.Material, shaderPass: number, topology: UnityEngine.MeshTopology, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number)
---@param indexBuffer UnityEngine.GraphicsBuffer
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param shaderPass number
---@param topology UnityEngine.MeshTopology
---@param bufferWithArgs UnityEngine.GraphicsBuffer
function UnityEngine.Rendering.CommandBuffer:DrawProceduralIndirect(indexBuffer, matrix, material, shaderPass, topology, bufferWithArgs) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, shaderPass: number, matrices: UnityEngine.Matrix4x4[], count: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, shaderPass: number, matrices: UnityEngine.Matrix4x4[], count: number)
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param shaderPass number
---@param matrices UnityEngine.Matrix4x4[]
function UnityEngine.Rendering.CommandBuffer:DrawMeshInstanced(mesh, submeshIndex, material, shaderPass, matrices) end
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param shaderPass number
---@param count number
---@param properties UnityEngine.MaterialPropertyBlock
function UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedProcedural(mesh, submeshIndex, material, shaderPass, count, properties) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, shaderPass: number, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, shaderPass: number, bufferWithArgs: UnityEngine.ComputeBuffer, argsOffset: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, shaderPass: number, bufferWithArgs: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, shaderPass: number, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number, properties: UnityEngine.MaterialPropertyBlock)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, mesh: UnityEngine.Mesh, submeshIndex: number, material: UnityEngine.Material, shaderPass: number, bufferWithArgs: UnityEngine.GraphicsBuffer, argsOffset: number)
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param shaderPass number
---@param bufferWithArgs UnityEngine.GraphicsBuffer
function UnityEngine.Rendering.CommandBuffer:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs) end
---@param normalizedCamViewport UnityEngine.RectInt
function UnityEngine.Rendering.CommandBuffer:DrawOcclusionMesh(normalizedCamViewport) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, index: number, rt: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, index: number, buffer: UnityEngine.ComputeBuffer, preserveCounterValue: boolean)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, index: number, buffer: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, index: number, buffer: UnityEngine.GraphicsBuffer, preserveCounterValue: boolean)
---@param index number
---@param buffer UnityEngine.GraphicsBuffer
function UnityEngine.Rendering.CommandBuffer:SetRandomWriteTarget(index, buffer) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.ComputeBuffer, dst: UnityEngine.ComputeBuffer, dstOffsetBytes: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.GraphicsBuffer, dst: UnityEngine.ComputeBuffer, dstOffsetBytes: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.ComputeBuffer, dst: UnityEngine.GraphicsBuffer, dstOffsetBytes: number)
---@param src UnityEngine.GraphicsBuffer
---@param dst UnityEngine.GraphicsBuffer
---@param dstOffsetBytes number
function UnityEngine.Rendering.CommandBuffer:CopyCounterValue(src, dst, dstOffsetBytes) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Rendering.RenderTargetIdentifier, dst: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Rendering.RenderTargetIdentifier, srcElement: number, dst: UnityEngine.Rendering.RenderTargetIdentifier, dstElement: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, src: UnityEngine.Rendering.RenderTargetIdentifier, srcElement: number, srcMip: number, dst: UnityEngine.Rendering.RenderTargetIdentifier, dstElement: number, dstMip: number)
---@param src UnityEngine.Rendering.RenderTargetIdentifier
---@param srcElement number
---@param srcMip number
---@param srcX number
---@param srcY number
---@param srcWidth number
---@param srcHeight number
---@param dst UnityEngine.Rendering.RenderTargetIdentifier
---@param dstElement number
---@param dstMip number
---@param dstX number
---@param dstY number
function UnityEngine.Rendering.CommandBuffer:CopyTexture(src, srcElement, srcMip, srcX, srcY, srcWidth, srcHeight, dst, dstElement, dstMip, dstX, dstY) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Texture, dest: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Texture, dest: UnityEngine.Rendering.RenderTargetIdentifier, scale: UnityEngine.Vector2, offset: UnityEngine.Vector2)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Texture, dest: UnityEngine.Rendering.RenderTargetIdentifier, mat: UnityEngine.Material)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Texture, dest: UnityEngine.Rendering.RenderTargetIdentifier, mat: UnityEngine.Material, pass: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, dest: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, dest: UnityEngine.Rendering.RenderTargetIdentifier, scale: UnityEngine.Vector2, offset: UnityEngine.Vector2)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, dest: UnityEngine.Rendering.RenderTargetIdentifier, mat: UnityEngine.Material)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, dest: UnityEngine.Rendering.RenderTargetIdentifier, mat: UnityEngine.Material, pass: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, dest: UnityEngine.Rendering.RenderTargetIdentifier, sourceDepthSlice: number, destDepthSlice: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, source: UnityEngine.Rendering.RenderTargetIdentifier, dest: UnityEngine.Rendering.RenderTargetIdentifier, scale: UnityEngine.Vector2, offset: UnityEngine.Vector2, sourceDepthSlice: number, destDepthSlice: number)
---@param source UnityEngine.Rendering.RenderTargetIdentifier
---@param dest UnityEngine.Rendering.RenderTargetIdentifier
---@param mat UnityEngine.Material
---@param pass number
---@param destDepthSlice number
function UnityEngine.Rendering.CommandBuffer:Blit(source, dest, mat, pass, destDepthSlice) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, name: string, value: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, name: string, value: UnityEngine.Rendering.RenderTargetIdentifier, element: UnityEngine.Rendering.RenderTextureSubElement)
---@param nameID number
---@param value UnityEngine.Rendering.RenderTargetIdentifier
---@param element UnityEngine.Rendering.RenderTextureSubElement
function UnityEngine.Rendering.CommandBuffer:SetGlobalTexture(nameID, value, element) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, name: string, value: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, nameID: number, value: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, name: string, value: UnityEngine.GraphicsBuffer)
---@param nameID number
---@param value UnityEngine.GraphicsBuffer
function UnityEngine.Rendering.CommandBuffer:SetGlobalBuffer(nameID, value) end
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.ComputeBuffer, nameID: number, offset: number, size: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.ComputeBuffer, name: string, offset: number, size: number)
---@overload fun(self: UnityEngine.Rendering.CommandBuffer, buffer: UnityEngine.GraphicsBuffer, nameID: number, offset: number, size: number)
---@param buffer UnityEngine.GraphicsBuffer
---@param name string
---@param offset number
---@param size number
function UnityEngine.Rendering.CommandBuffer:SetGlobalConstantBuffer(buffer, name, offset, size) end
---@param shadowmap UnityEngine.Rendering.RenderTargetIdentifier
---@param mode UnityEngine.Rendering.ShadowSamplingMode
function UnityEngine.Rendering.CommandBuffer:SetShadowSamplingMode(shadowmap, mode) end
---@param mode UnityEngine.Rendering.SinglePassStereoMode
function UnityEngine.Rendering.CommandBuffer:SetSinglePassStereo(mode) end
---@param callback System.IntPtr
---@param eventID number
function UnityEngine.Rendering.CommandBuffer:IssuePluginEvent(callback, eventID) end
---@param callback System.IntPtr
---@param eventID number
---@param data System.IntPtr
function UnityEngine.Rendering.CommandBuffer:IssuePluginEventAndData(callback, eventID, data) end
---@param callback System.IntPtr
---@param eventID number
---@param flags UnityEngine.Rendering.CustomMarkerCallbackFlags
---@param data System.IntPtr
function UnityEngine.Rendering.CommandBuffer:IssuePluginEventAndDataWithFlags(callback, eventID, flags, data) end
---@param callback System.IntPtr
---@param command number
---@param source UnityEngine.Rendering.RenderTargetIdentifier
---@param dest UnityEngine.Rendering.RenderTargetIdentifier
---@param commandParam number
---@param commandFlags number
function UnityEngine.Rendering.CommandBuffer:IssuePluginCustomBlit(callback, command, source, dest, commandParam, commandFlags) end
---@param callback System.IntPtr
---@param targetTexture UnityEngine.Texture
---@param userData number
function UnityEngine.Rendering.CommandBuffer:IssuePluginCustomTextureUpdateV2(callback, targetTexture, userData) end
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
---@param resolver System.IntPtr
---@param slice number
---@param x number
---@param width number
---@param y number
---@param height number
---@param mip number
function UnityEngine.Rendering.CommandBuffer:ProcessVTFeedback(rt, resolver, slice, x, width, y, height, mip) end
---@param source UnityEngine.GraphicsBuffer
---@param dest UnityEngine.GraphicsBuffer
function UnityEngine.Rendering.CommandBuffer:CopyBuffer(source, dest) end
---@param rid UnityEngine.Rendering.RenderTargetIdentifier
---@param fastMemoryFlags UnityEngine.Rendering.FastMemoryFlags
---@param residency number
---@param copyContents boolean
function UnityEngine.Rendering.CommandBuffer:SwitchIntoFastMemory(rid, fastMemoryFlags, residency, copyContents) end
---@param rid UnityEngine.Rendering.RenderTargetIdentifier
---@param copyContents boolean
function UnityEngine.Rendering.CommandBuffer:SwitchOutOfFastMemory(rid, copyContents) end

---@class UnityEngine.Rendering.CommandBufferExtensions : System.Object
UnityEngine.Rendering.CommandBufferExtensions = {}
---@alias CS.UnityEngine.Rendering.CommandBufferExtensions UnityEngine.Rendering.CommandBufferExtensions
CS.UnityEngine.Rendering.CommandBufferExtensions = UnityEngine.Rendering.CommandBufferExtensions

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param rid UnityEngine.Rendering.RenderTargetIdentifier
---@param fastMemoryFlags UnityEngine.Rendering.FastMemoryFlags
---@param residency number
---@param copyContents boolean
function UnityEngine.Rendering.CommandBufferExtensions.SwitchIntoFastMemory(cmd, rid, fastMemoryFlags, residency, copyContents) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param rid UnityEngine.Rendering.RenderTargetIdentifier
---@param copyContents boolean
function UnityEngine.Rendering.CommandBufferExtensions.SwitchOutOfFastMemory(cmd, rid, copyContents) end

---@class UnityEngine.Rendering.SplashScreen : System.Object
---@field isFinished boolean
UnityEngine.Rendering.SplashScreen = {}
---@alias CS.UnityEngine.Rendering.SplashScreen UnityEngine.Rendering.SplashScreen
CS.UnityEngine.Rendering.SplashScreen = UnityEngine.Rendering.SplashScreen

---@return UnityEngine.Rendering.SplashScreen
function UnityEngine.Rendering.SplashScreen.New() end
function UnityEngine.Rendering.SplashScreen.Begin() end
---@param stopBehavior UnityEngine.Rendering.SplashScreen.StopBehavior
function UnityEngine.Rendering.SplashScreen.Stop(stopBehavior) end
function UnityEngine.Rendering.SplashScreen.Draw() end

---@class UnityEngine.Rendering.SplashScreen.StopBehavior
---@field StopImmediate UnityEngine.Rendering.SplashScreen.StopBehavior
---@field FadeOut UnityEngine.Rendering.SplashScreen.StopBehavior
UnityEngine.Rendering.SplashScreen.StopBehavior = {}
---@alias CS.UnityEngine.Rendering.SplashScreen.StopBehavior UnityEngine.Rendering.SplashScreen.StopBehavior
CS.UnityEngine.Rendering.SplashScreen.StopBehavior = UnityEngine.Rendering.SplashScreen.StopBehavior


---@class UnityEngine.Rendering.SphericalHarmonicsL2 : System.ValueType
---@field Item number
UnityEngine.Rendering.SphericalHarmonicsL2 = {}
---@alias CS.UnityEngine.Rendering.SphericalHarmonicsL2 UnityEngine.Rendering.SphericalHarmonicsL2
CS.UnityEngine.Rendering.SphericalHarmonicsL2 = UnityEngine.Rendering.SphericalHarmonicsL2

function UnityEngine.Rendering.SphericalHarmonicsL2:Clear() end
---@param color UnityEngine.Color
function UnityEngine.Rendering.SphericalHarmonicsL2:AddAmbientLight(color) end
---@param direction UnityEngine.Vector3
---@param color UnityEngine.Color
---@param intensity number
function UnityEngine.Rendering.SphericalHarmonicsL2:AddDirectionalLight(direction, color, intensity) end
---@param directions UnityEngine.Vector3[]
---@param results UnityEngine.Color[]
function UnityEngine.Rendering.SphericalHarmonicsL2:Evaluate(directions, results) end
---@return number
function UnityEngine.Rendering.SphericalHarmonicsL2:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.SphericalHarmonicsL2, other: System.Object) : boolean
---@param other UnityEngine.Rendering.SphericalHarmonicsL2
---@return boolean
function UnityEngine.Rendering.SphericalHarmonicsL2:Equals(other) end

---@class UnityEngine.Rendering.BatchID : System.ValueType
---@field Null UnityEngine.Rendering.BatchID
---@field value number
UnityEngine.Rendering.BatchID = {}
---@alias CS.UnityEngine.Rendering.BatchID UnityEngine.Rendering.BatchID
CS.UnityEngine.Rendering.BatchID = UnityEngine.Rendering.BatchID

---@return number
function UnityEngine.Rendering.BatchID:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.BatchID, obj: System.Object) : boolean
---@param other UnityEngine.Rendering.BatchID
---@return boolean
function UnityEngine.Rendering.BatchID:Equals(other) end
---@param other UnityEngine.Rendering.BatchID
---@return number
function UnityEngine.Rendering.BatchID:CompareTo(other) end

---@class UnityEngine.Rendering.BatchMaterialID : System.ValueType
---@field Null UnityEngine.Rendering.BatchMaterialID
---@field value number
UnityEngine.Rendering.BatchMaterialID = {}
---@alias CS.UnityEngine.Rendering.BatchMaterialID UnityEngine.Rendering.BatchMaterialID
CS.UnityEngine.Rendering.BatchMaterialID = UnityEngine.Rendering.BatchMaterialID

---@return number
function UnityEngine.Rendering.BatchMaterialID:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.BatchMaterialID, obj: System.Object) : boolean
---@param other UnityEngine.Rendering.BatchMaterialID
---@return boolean
function UnityEngine.Rendering.BatchMaterialID:Equals(other) end
---@param other UnityEngine.Rendering.BatchMaterialID
---@return number
function UnityEngine.Rendering.BatchMaterialID:CompareTo(other) end

---@class UnityEngine.Rendering.BatchMeshID : System.ValueType
---@field Null UnityEngine.Rendering.BatchMeshID
---@field value number
UnityEngine.Rendering.BatchMeshID = {}
---@alias CS.UnityEngine.Rendering.BatchMeshID UnityEngine.Rendering.BatchMeshID
CS.UnityEngine.Rendering.BatchMeshID = UnityEngine.Rendering.BatchMeshID

---@return number
function UnityEngine.Rendering.BatchMeshID:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.BatchMeshID, obj: System.Object) : boolean
---@param other UnityEngine.Rendering.BatchMeshID
---@return boolean
function UnityEngine.Rendering.BatchMeshID:Equals(other) end
---@param other UnityEngine.Rendering.BatchMeshID
---@return number
function UnityEngine.Rendering.BatchMeshID:CompareTo(other) end

---@class UnityEngine.Rendering.BatchDrawCommandFlags
---@field None UnityEngine.Rendering.BatchDrawCommandFlags
---@field FlipWinding UnityEngine.Rendering.BatchDrawCommandFlags
---@field HasMotion UnityEngine.Rendering.BatchDrawCommandFlags
---@field IsLightMapped UnityEngine.Rendering.BatchDrawCommandFlags
---@field HasSortingPosition UnityEngine.Rendering.BatchDrawCommandFlags
---@field LODCrossFade UnityEngine.Rendering.BatchDrawCommandFlags
UnityEngine.Rendering.BatchDrawCommandFlags = {}
---@alias CS.UnityEngine.Rendering.BatchDrawCommandFlags UnityEngine.Rendering.BatchDrawCommandFlags
CS.UnityEngine.Rendering.BatchDrawCommandFlags = UnityEngine.Rendering.BatchDrawCommandFlags


---@class UnityEngine.Rendering.BatchCullingFlags
---@field None UnityEngine.Rendering.BatchCullingFlags
---@field CullLightmappedShadowCasters UnityEngine.Rendering.BatchCullingFlags
UnityEngine.Rendering.BatchCullingFlags = {}
---@alias CS.UnityEngine.Rendering.BatchCullingFlags UnityEngine.Rendering.BatchCullingFlags
CS.UnityEngine.Rendering.BatchCullingFlags = UnityEngine.Rendering.BatchCullingFlags


---@class UnityEngine.Rendering.BatchCullingViewType
---@field Unknown UnityEngine.Rendering.BatchCullingViewType
---@field Camera UnityEngine.Rendering.BatchCullingViewType
---@field Light UnityEngine.Rendering.BatchCullingViewType
---@field Picking UnityEngine.Rendering.BatchCullingViewType
---@field SelectionOutline UnityEngine.Rendering.BatchCullingViewType
UnityEngine.Rendering.BatchCullingViewType = {}
---@alias CS.UnityEngine.Rendering.BatchCullingViewType UnityEngine.Rendering.BatchCullingViewType
CS.UnityEngine.Rendering.BatchCullingViewType = UnityEngine.Rendering.BatchCullingViewType


---@class UnityEngine.Rendering.BatchCullingProjectionType
---@field Unknown UnityEngine.Rendering.BatchCullingProjectionType
---@field Perspective UnityEngine.Rendering.BatchCullingProjectionType
---@field Orthographic UnityEngine.Rendering.BatchCullingProjectionType
UnityEngine.Rendering.BatchCullingProjectionType = {}
---@alias CS.UnityEngine.Rendering.BatchCullingProjectionType UnityEngine.Rendering.BatchCullingProjectionType
CS.UnityEngine.Rendering.BatchCullingProjectionType = UnityEngine.Rendering.BatchCullingProjectionType


---@class UnityEngine.Rendering.BatchBufferTarget
---@field Unknown UnityEngine.Rendering.BatchBufferTarget
---@field UnsupportedByUnderlyingGraphicsApi UnityEngine.Rendering.BatchBufferTarget
---@field RawBuffer UnityEngine.Rendering.BatchBufferTarget
---@field ConstantBuffer UnityEngine.Rendering.BatchBufferTarget
UnityEngine.Rendering.BatchBufferTarget = {}
---@alias CS.UnityEngine.Rendering.BatchBufferTarget UnityEngine.Rendering.BatchBufferTarget
CS.UnityEngine.Rendering.BatchBufferTarget = UnityEngine.Rendering.BatchBufferTarget


---@class UnityEngine.Rendering.BatchPackedCullingViewID : System.ValueType
UnityEngine.Rendering.BatchPackedCullingViewID = {}
---@alias CS.UnityEngine.Rendering.BatchPackedCullingViewID UnityEngine.Rendering.BatchPackedCullingViewID
CS.UnityEngine.Rendering.BatchPackedCullingViewID = UnityEngine.Rendering.BatchPackedCullingViewID

---@param instanceID number
---@param sliceIndex number
---@return UnityEngine.Rendering.BatchPackedCullingViewID
function UnityEngine.Rendering.BatchPackedCullingViewID.New(instanceID, sliceIndex) end
---@return number
function UnityEngine.Rendering.BatchPackedCullingViewID:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.BatchPackedCullingViewID, other: UnityEngine.Rendering.BatchPackedCullingViewID) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BatchPackedCullingViewID:Equals(obj) end
---@return number
function UnityEngine.Rendering.BatchPackedCullingViewID:GetInstanceID() end
---@return number
function UnityEngine.Rendering.BatchPackedCullingViewID:GetSliceIndex() end

---@class UnityEngine.Rendering.BatchDrawCommand : System.ValueType
---@field visibleOffset number
---@field visibleCount number
---@field batchID UnityEngine.Rendering.BatchID
---@field materialID UnityEngine.Rendering.BatchMaterialID
---@field meshID UnityEngine.Rendering.BatchMeshID
---@field submeshIndex number
---@field splitVisibilityMask number
---@field flags UnityEngine.Rendering.BatchDrawCommandFlags
---@field sortingPosition number
UnityEngine.Rendering.BatchDrawCommand = {}
---@alias CS.UnityEngine.Rendering.BatchDrawCommand UnityEngine.Rendering.BatchDrawCommand
CS.UnityEngine.Rendering.BatchDrawCommand = UnityEngine.Rendering.BatchDrawCommand


---@class UnityEngine.Rendering.BatchFilterSettings : System.ValueType
---@field renderingLayerMask number
---@field layer number
---@field motionMode UnityEngine.MotionVectorGenerationMode
---@field shadowCastingMode UnityEngine.Rendering.ShadowCastingMode
---@field receiveShadows boolean
---@field staticShadowCaster boolean
---@field allDepthSorted boolean
UnityEngine.Rendering.BatchFilterSettings = {}
---@alias CS.UnityEngine.Rendering.BatchFilterSettings UnityEngine.Rendering.BatchFilterSettings
CS.UnityEngine.Rendering.BatchFilterSettings = UnityEngine.Rendering.BatchFilterSettings


---@class UnityEngine.Rendering.BatchDrawRange : System.ValueType
---@field drawCommandsBegin number
---@field drawCommandsCount number
---@field filterSettings UnityEngine.Rendering.BatchFilterSettings
UnityEngine.Rendering.BatchDrawRange = {}
---@alias CS.UnityEngine.Rendering.BatchDrawRange UnityEngine.Rendering.BatchDrawRange
CS.UnityEngine.Rendering.BatchDrawRange = UnityEngine.Rendering.BatchDrawRange


---@class UnityEngine.Rendering.BatchCullingOutputDrawCommands : System.ValueType
---@field drawCommands UnityEngine.Rendering.BatchDrawCommand*
---@field visibleInstances System.Int32*
---@field drawRanges UnityEngine.Rendering.BatchDrawRange*
---@field instanceSortingPositions System.Single*
---@field drawCommandPickingInstanceIDs System.Int32*
---@field drawCommandCount number
---@field visibleInstanceCount number
---@field drawRangeCount number
---@field instanceSortingPositionFloatCount number
UnityEngine.Rendering.BatchCullingOutputDrawCommands = {}
---@alias CS.UnityEngine.Rendering.BatchCullingOutputDrawCommands UnityEngine.Rendering.BatchCullingOutputDrawCommands
CS.UnityEngine.Rendering.BatchCullingOutputDrawCommands = UnityEngine.Rendering.BatchCullingOutputDrawCommands


---@class UnityEngine.Rendering.MetadataValue : System.ValueType
---@field NameID number
---@field Value number
UnityEngine.Rendering.MetadataValue = {}
---@alias CS.UnityEngine.Rendering.MetadataValue UnityEngine.Rendering.MetadataValue
CS.UnityEngine.Rendering.MetadataValue = UnityEngine.Rendering.MetadataValue


---@class UnityEngine.Rendering.CullingSplit : System.ValueType
---@field sphereCenter UnityEngine.Vector3
---@field sphereRadius number
---@field cullingPlaneOffset number
---@field cullingPlaneCount number
---@field cascadeBlendCullingFactor number
---@field nearPlane number
---@field cullingMatrix UnityEngine.Matrix4x4
UnityEngine.Rendering.CullingSplit = {}
---@alias CS.UnityEngine.Rendering.CullingSplit UnityEngine.Rendering.CullingSplit
CS.UnityEngine.Rendering.CullingSplit = UnityEngine.Rendering.CullingSplit


---@class UnityEngine.Rendering.BatchCullingContext : System.ValueType
---@field cullingPlanes Unity.Collections.NativeArray
---@field cullingSplits Unity.Collections.NativeArray
---@field lodParameters UnityEngine.Rendering.LODParameters
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field viewType UnityEngine.Rendering.BatchCullingViewType
---@field projectionType UnityEngine.Rendering.BatchCullingProjectionType
---@field cullingFlags UnityEngine.Rendering.BatchCullingFlags
---@field viewID UnityEngine.Rendering.BatchPackedCullingViewID
---@field cullingLayerMask number
---@field sceneCullingMask number
---@field receiverPlaneOffset number
---@field receiverPlaneCount number
UnityEngine.Rendering.BatchCullingContext = {}
---@alias CS.UnityEngine.Rendering.BatchCullingContext UnityEngine.Rendering.BatchCullingContext
CS.UnityEngine.Rendering.BatchCullingContext = UnityEngine.Rendering.BatchCullingContext


---@class UnityEngine.Rendering.BatchCullingOutput : System.ValueType
---@field drawCommands Unity.Collections.NativeArray
UnityEngine.Rendering.BatchCullingOutput = {}
---@alias CS.UnityEngine.Rendering.BatchCullingOutput UnityEngine.Rendering.BatchCullingOutput
CS.UnityEngine.Rendering.BatchCullingOutput = UnityEngine.Rendering.BatchCullingOutput


---@class UnityEngine.Rendering.BatchRendererCullingOutput : System.ValueType
---@field cullingJobsFence Unity.Jobs.JobHandle
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field cullingPlanes UnityEngine.Plane*
---@field cullingPlaneCount number
---@field receiverPlaneOffset number
---@field receiverPlaneCount number
---@field cullingSplits UnityEngine.Rendering.CullingSplit*
---@field cullingSplitCount number
---@field viewType UnityEngine.Rendering.BatchCullingViewType
---@field projectionType UnityEngine.Rendering.BatchCullingProjectionType
---@field cullingFlags UnityEngine.Rendering.BatchCullingFlags
---@field viewID number
---@field cullingLayerMask number
---@field sceneCullingMask number
---@field drawCommands UnityEngine.Rendering.BatchCullingOutputDrawCommands*
UnityEngine.Rendering.BatchRendererCullingOutput = {}
---@alias CS.UnityEngine.Rendering.BatchRendererCullingOutput UnityEngine.Rendering.BatchRendererCullingOutput
CS.UnityEngine.Rendering.BatchRendererCullingOutput = UnityEngine.Rendering.BatchRendererCullingOutput


---@class UnityEngine.Rendering.ThreadedBatchContext : System.ValueType
---@field batchRendererGroup System.IntPtr
UnityEngine.Rendering.ThreadedBatchContext = {}
---@alias CS.UnityEngine.Rendering.ThreadedBatchContext UnityEngine.Rendering.ThreadedBatchContext
CS.UnityEngine.Rendering.ThreadedBatchContext = UnityEngine.Rendering.ThreadedBatchContext

---@overload fun(self: UnityEngine.Rendering.ThreadedBatchContext, batchMetadata: Unity.Collections.NativeArray, buffer: UnityEngine.GraphicsBufferHandle) : UnityEngine.Rendering.BatchID
---@param batchMetadata Unity.Collections.NativeArray
---@param buffer UnityEngine.GraphicsBufferHandle
---@param bufferOffset number
---@param windowSize number
---@return UnityEngine.Rendering.BatchID
function UnityEngine.Rendering.ThreadedBatchContext:AddBatch(batchMetadata, buffer, bufferOffset, windowSize) end
---@param batchID UnityEngine.Rendering.BatchID
---@param buffer UnityEngine.GraphicsBufferHandle
function UnityEngine.Rendering.ThreadedBatchContext:SetBatchBuffer(batchID, buffer) end
---@param batchID UnityEngine.Rendering.BatchID
function UnityEngine.Rendering.ThreadedBatchContext:RemoveBatch(batchID) end

---@class UnityEngine.Rendering.BatchRendererGroup : System.Object
---@field BufferTarget UnityEngine.Rendering.BatchBufferTarget
UnityEngine.Rendering.BatchRendererGroup = {}
---@alias CS.UnityEngine.Rendering.BatchRendererGroup UnityEngine.Rendering.BatchRendererGroup
CS.UnityEngine.Rendering.BatchRendererGroup = UnityEngine.Rendering.BatchRendererGroup

---@param cullingCallback UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling
---@param userContext System.IntPtr
---@return UnityEngine.Rendering.BatchRendererGroup
function UnityEngine.Rendering.BatchRendererGroup.New(cullingCallback, userContext) end
---@return number
function UnityEngine.Rendering.BatchRendererGroup.GetConstantBufferMaxWindowSize() end
---@return number
function UnityEngine.Rendering.BatchRendererGroup.GetConstantBufferOffsetAlignment() end
function UnityEngine.Rendering.BatchRendererGroup:Dispose() end
---@return UnityEngine.Rendering.ThreadedBatchContext
function UnityEngine.Rendering.BatchRendererGroup:GetThreadedBatchContext() end
---@overload fun(self: UnityEngine.Rendering.BatchRendererGroup, batchMetadata: Unity.Collections.NativeArray, buffer: UnityEngine.GraphicsBufferHandle) : UnityEngine.Rendering.BatchID
---@param batchMetadata Unity.Collections.NativeArray
---@param buffer UnityEngine.GraphicsBufferHandle
---@param bufferOffset number
---@param windowSize number
---@return UnityEngine.Rendering.BatchID
function UnityEngine.Rendering.BatchRendererGroup:AddBatch(batchMetadata, buffer, bufferOffset, windowSize) end
---@param batchID UnityEngine.Rendering.BatchID
function UnityEngine.Rendering.BatchRendererGroup:RemoveBatch(batchID) end
---@param batchID UnityEngine.Rendering.BatchID
---@param buffer UnityEngine.GraphicsBufferHandle
function UnityEngine.Rendering.BatchRendererGroup:SetBatchBuffer(batchID, buffer) end
---@overload fun(self: UnityEngine.Rendering.BatchRendererGroup, material: UnityEngine.Material) : UnityEngine.Rendering.BatchMaterialID
---@param materialInstanceID number
---@return UnityEngine.Rendering.BatchMaterialID
function UnityEngine.Rendering.BatchRendererGroup:RegisterMaterial(materialInstanceID) end
---@param material UnityEngine.Rendering.BatchMaterialID
function UnityEngine.Rendering.BatchRendererGroup:UnregisterMaterial(material) end
---@param material UnityEngine.Rendering.BatchMaterialID
---@return UnityEngine.Material
function UnityEngine.Rendering.BatchRendererGroup:GetRegisteredMaterial(material) end
---@overload fun(self: UnityEngine.Rendering.BatchRendererGroup, mesh: UnityEngine.Mesh) : UnityEngine.Rendering.BatchMeshID
---@param meshInstanceID number
---@return UnityEngine.Rendering.BatchMeshID
function UnityEngine.Rendering.BatchRendererGroup:RegisterMesh(meshInstanceID) end
---@param mesh UnityEngine.Rendering.BatchMeshID
function UnityEngine.Rendering.BatchRendererGroup:UnregisterMesh(mesh) end
---@param mesh UnityEngine.Rendering.BatchMeshID
---@return UnityEngine.Mesh
function UnityEngine.Rendering.BatchRendererGroup:GetRegisteredMesh(mesh) end
---@param bounds UnityEngine.Bounds
function UnityEngine.Rendering.BatchRendererGroup:SetGlobalBounds(bounds) end
---@param material UnityEngine.Material
function UnityEngine.Rendering.BatchRendererGroup:SetPickingMaterial(material) end
---@param material UnityEngine.Material
function UnityEngine.Rendering.BatchRendererGroup:SetErrorMaterial(material) end
---@param material UnityEngine.Material
function UnityEngine.Rendering.BatchRendererGroup:SetLoadingMaterial(material) end
---@param viewTypes UnityEngine.Rendering.BatchCullingViewType[]
function UnityEngine.Rendering.BatchRendererGroup:SetEnabledViewTypes(viewTypes) end

---@class UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling : System.MulticastDelegate
UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling = {}
---@alias CS.UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling
CS.UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling = UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling
function UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling.New(object, method) end
---@param rendererGroup UnityEngine.Rendering.BatchRendererGroup
---@param cullingContext UnityEngine.Rendering.BatchCullingContext
---@param cullingOutput UnityEngine.Rendering.BatchCullingOutput
---@param userContext System.IntPtr
---@return Unity.Jobs.JobHandle
function UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling:Invoke(rendererGroup, cullingContext, cullingOutput, userContext) end
---@param rendererGroup UnityEngine.Rendering.BatchRendererGroup
---@param cullingContext UnityEngine.Rendering.BatchCullingContext
---@param cullingOutput UnityEngine.Rendering.BatchCullingOutput
---@param userContext System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling:BeginInvoke(rendererGroup, cullingContext, cullingOutput, userContext, callback, object) end
---@param result System.IAsyncResult
---@return Unity.Jobs.JobHandle
function UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling:EndInvoke(result) end

---@class UnityEngine.Rendering.AttachmentDescriptor : System.ValueType
---@field loadAction UnityEngine.Rendering.RenderBufferLoadAction
---@field storeAction UnityEngine.Rendering.RenderBufferStoreAction
---@field graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field format UnityEngine.RenderTextureFormat
---@field loadStoreTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field resolveTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field clearColor UnityEngine.Color
---@field clearDepth number
---@field clearStencil number
UnityEngine.Rendering.AttachmentDescriptor = {}
---@alias CS.UnityEngine.Rendering.AttachmentDescriptor UnityEngine.Rendering.AttachmentDescriptor
CS.UnityEngine.Rendering.AttachmentDescriptor = UnityEngine.Rendering.AttachmentDescriptor

---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.Rendering.AttachmentDescriptor
---@overload fun(format: UnityEngine.RenderTextureFormat) : UnityEngine.Rendering.AttachmentDescriptor
---@param format UnityEngine.RenderTextureFormat
---@param target UnityEngine.Rendering.RenderTargetIdentifier
---@param loadExistingContents boolean
---@param storeResults boolean
---@param resolve boolean
---@return UnityEngine.Rendering.AttachmentDescriptor
function UnityEngine.Rendering.AttachmentDescriptor.New(format, target, loadExistingContents, storeResults, resolve) end
---@param target UnityEngine.Rendering.RenderTargetIdentifier
---@param loadExistingContents boolean
---@param storeResults boolean
function UnityEngine.Rendering.AttachmentDescriptor:ConfigureTarget(target, loadExistingContents, storeResults) end
---@param target UnityEngine.Rendering.RenderTargetIdentifier
function UnityEngine.Rendering.AttachmentDescriptor:ConfigureResolveTarget(target) end
---@param clearColor UnityEngine.Color
---@param clearDepth number
---@param clearStencil number
function UnityEngine.Rendering.AttachmentDescriptor:ConfigureClear(clearColor, clearDepth, clearStencil) end
---@overload fun(self: UnityEngine.Rendering.AttachmentDescriptor, other: UnityEngine.Rendering.AttachmentDescriptor) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.AttachmentDescriptor:Equals(obj) end
---@return number
function UnityEngine.Rendering.AttachmentDescriptor:GetHashCode() end

---@class UnityEngine.Rendering.BlendState : System.ValueType
---@field defaultValue UnityEngine.Rendering.BlendState
---@field separateMRTBlendStates boolean
---@field alphaToMask boolean
---@field blendState0 UnityEngine.Rendering.RenderTargetBlendState
---@field blendState1 UnityEngine.Rendering.RenderTargetBlendState
---@field blendState2 UnityEngine.Rendering.RenderTargetBlendState
---@field blendState3 UnityEngine.Rendering.RenderTargetBlendState
---@field blendState4 UnityEngine.Rendering.RenderTargetBlendState
---@field blendState5 UnityEngine.Rendering.RenderTargetBlendState
---@field blendState6 UnityEngine.Rendering.RenderTargetBlendState
---@field blendState7 UnityEngine.Rendering.RenderTargetBlendState
UnityEngine.Rendering.BlendState = {}
---@alias CS.UnityEngine.Rendering.BlendState UnityEngine.Rendering.BlendState
CS.UnityEngine.Rendering.BlendState = UnityEngine.Rendering.BlendState

---@param separateMRTBlend boolean
---@param alphaToMask boolean
---@return UnityEngine.Rendering.BlendState
function UnityEngine.Rendering.BlendState.New(separateMRTBlend, alphaToMask) end
---@overload fun(self: UnityEngine.Rendering.BlendState, other: UnityEngine.Rendering.BlendState) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.BlendState:Equals(obj) end
---@return number
function UnityEngine.Rendering.BlendState:GetHashCode() end

---@class UnityEngine.Rendering.CoreCameraValues : System.ValueType
UnityEngine.Rendering.CoreCameraValues = {}
---@alias CS.UnityEngine.Rendering.CoreCameraValues UnityEngine.Rendering.CoreCameraValues
CS.UnityEngine.Rendering.CoreCameraValues = UnityEngine.Rendering.CoreCameraValues

---@overload fun(self: UnityEngine.Rendering.CoreCameraValues, other: UnityEngine.Rendering.CoreCameraValues) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.CoreCameraValues:Equals(obj) end
---@return number
function UnityEngine.Rendering.CoreCameraValues:GetHashCode() end

---@class UnityEngine.Rendering.CameraProperties : System.ValueType
UnityEngine.Rendering.CameraProperties = {}
---@alias CS.UnityEngine.Rendering.CameraProperties UnityEngine.Rendering.CameraProperties
CS.UnityEngine.Rendering.CameraProperties = UnityEngine.Rendering.CameraProperties

---@param index number
---@return UnityEngine.Plane
function UnityEngine.Rendering.CameraProperties:GetShadowCullingPlane(index) end
---@param index number
---@param plane UnityEngine.Plane
function UnityEngine.Rendering.CameraProperties:SetShadowCullingPlane(index, plane) end
---@param index number
---@return UnityEngine.Plane
function UnityEngine.Rendering.CameraProperties:GetCameraCullingPlane(index) end
---@param index number
---@param plane UnityEngine.Plane
function UnityEngine.Rendering.CameraProperties:SetCameraCullingPlane(index, plane) end
---@overload fun(self: UnityEngine.Rendering.CameraProperties, other: UnityEngine.Rendering.CameraProperties) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.CameraProperties:Equals(obj) end
---@return number
function UnityEngine.Rendering.CameraProperties:GetHashCode() end

---@class UnityEngine.Rendering.CullingOptions
---@field None UnityEngine.Rendering.CullingOptions
---@field ForceEvenIfCameraIsNotActive UnityEngine.Rendering.CullingOptions
---@field OcclusionCull UnityEngine.Rendering.CullingOptions
---@field NeedsLighting UnityEngine.Rendering.CullingOptions
---@field NeedsReflectionProbes UnityEngine.Rendering.CullingOptions
---@field Stereo UnityEngine.Rendering.CullingOptions
---@field DisablePerObjectCulling UnityEngine.Rendering.CullingOptions
---@field ShadowCasters UnityEngine.Rendering.CullingOptions
UnityEngine.Rendering.CullingOptions = {}
---@alias CS.UnityEngine.Rendering.CullingOptions UnityEngine.Rendering.CullingOptions
CS.UnityEngine.Rendering.CullingOptions = UnityEngine.Rendering.CullingOptions


---@class UnityEngine.Rendering.ScriptableCullingParameters : System.ValueType
---@field maximumCullingPlaneCount number
---@field layerCount number
---@field cullingJobsLowerLimit number
---@field cullingJobsUpperLimit number
---@field maximumVisibleLights number
---@field conservativeEnclosingSphere boolean
---@field numIterationsEnclosingSphere number
---@field cullingPlaneCount number
---@field isOrthographic boolean
---@field lodParameters UnityEngine.Rendering.LODParameters
---@field cullingMask number
---@field cullingMatrix UnityEngine.Matrix4x4
---@field origin UnityEngine.Vector3
---@field shadowDistance number
---@field shadowNearPlaneOffset number
---@field cullingOptions UnityEngine.Rendering.CullingOptions
---@field reflectionProbeSortingCriteria UnityEngine.Rendering.ReflectionProbeSortingCriteria
---@field cameraProperties UnityEngine.Rendering.CameraProperties
---@field stereoViewMatrix UnityEngine.Matrix4x4
---@field stereoProjectionMatrix UnityEngine.Matrix4x4
---@field stereoSeparationDistance number
---@field accurateOcclusionThreshold number
---@field maximumPortalCullingJobs number
UnityEngine.Rendering.ScriptableCullingParameters = {}
---@alias CS.UnityEngine.Rendering.ScriptableCullingParameters UnityEngine.Rendering.ScriptableCullingParameters
CS.UnityEngine.Rendering.ScriptableCullingParameters = UnityEngine.Rendering.ScriptableCullingParameters

---@param layerIndex number
---@return number
function UnityEngine.Rendering.ScriptableCullingParameters:GetLayerCullingDistance(layerIndex) end
---@param layerIndex number
---@param distance number
function UnityEngine.Rendering.ScriptableCullingParameters:SetLayerCullingDistance(layerIndex, distance) end
---@param index number
---@return UnityEngine.Plane
function UnityEngine.Rendering.ScriptableCullingParameters:GetCullingPlane(index) end
---@param index number
---@param plane UnityEngine.Plane
function UnityEngine.Rendering.ScriptableCullingParameters:SetCullingPlane(index, plane) end
---@overload fun(self: UnityEngine.Rendering.ScriptableCullingParameters, other: UnityEngine.Rendering.ScriptableCullingParameters) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.ScriptableCullingParameters:Equals(obj) end
---@return number
function UnityEngine.Rendering.ScriptableCullingParameters:GetHashCode() end

---@class UnityEngine.Rendering.CullingResults : System.ValueType
---@field visibleLights Unity.Collections.NativeArray
---@field visibleOffscreenVertexLights Unity.Collections.NativeArray
---@field visibleReflectionProbes Unity.Collections.NativeArray
---@field lightIndexCount number
---@field reflectionProbeIndexCount number
---@field lightAndReflectionProbeIndexCount number
UnityEngine.Rendering.CullingResults = {}
---@alias CS.UnityEngine.Rendering.CullingResults UnityEngine.Rendering.CullingResults
CS.UnityEngine.Rendering.CullingResults = UnityEngine.Rendering.CullingResults

---@overload fun(self: UnityEngine.Rendering.CullingResults, computeBuffer: UnityEngine.ComputeBuffer)
---@param buffer UnityEngine.GraphicsBuffer
function UnityEngine.Rendering.CullingResults:FillLightAndReflectionProbeIndices(buffer) end
---@param allocator Unity.Collections.Allocator
---@return Unity.Collections.NativeArray
function UnityEngine.Rendering.CullingResults:GetLightIndexMap(allocator) end
---@param lightIndexMap Unity.Collections.NativeArray
function UnityEngine.Rendering.CullingResults:SetLightIndexMap(lightIndexMap) end
---@param allocator Unity.Collections.Allocator
---@return Unity.Collections.NativeArray
function UnityEngine.Rendering.CullingResults:GetReflectionProbeIndexMap(allocator) end
---@param lightIndexMap Unity.Collections.NativeArray
function UnityEngine.Rendering.CullingResults:SetReflectionProbeIndexMap(lightIndexMap) end
---@param lightIndex number
---@param out_outBounds UnityEngine.Bounds
---@return boolean,UnityEngine.Bounds
function UnityEngine.Rendering.CullingResults:GetShadowCasterBounds(lightIndex, out_outBounds) end
---@param activeLightIndex number
---@param out_viewMatrix UnityEngine.Matrix4x4
---@param out_projMatrix UnityEngine.Matrix4x4
---@param out_shadowSplitData UnityEngine.Rendering.ShadowSplitData
---@return boolean,UnityEngine.Matrix4x4,UnityEngine.Matrix4x4,UnityEngine.Rendering.ShadowSplitData
function UnityEngine.Rendering.CullingResults:ComputeSpotShadowMatricesAndCullingPrimitives(activeLightIndex, out_viewMatrix, out_projMatrix, out_shadowSplitData) end
---@param activeLightIndex number
---@param cubemapFace UnityEngine.CubemapFace
---@param fovBias number
---@param out_viewMatrix UnityEngine.Matrix4x4
---@param out_projMatrix UnityEngine.Matrix4x4
---@param out_shadowSplitData UnityEngine.Rendering.ShadowSplitData
---@return boolean,UnityEngine.Matrix4x4,UnityEngine.Matrix4x4,UnityEngine.Rendering.ShadowSplitData
function UnityEngine.Rendering.CullingResults:ComputePointShadowMatricesAndCullingPrimitives(activeLightIndex, cubemapFace, fovBias, out_viewMatrix, out_projMatrix, out_shadowSplitData) end
---@param activeLightIndex number
---@param splitIndex number
---@param splitCount number
---@param splitRatio UnityEngine.Vector3
---@param shadowResolution number
---@param shadowNearPlaneOffset number
---@param out_viewMatrix UnityEngine.Matrix4x4
---@param out_projMatrix UnityEngine.Matrix4x4
---@param out_shadowSplitData UnityEngine.Rendering.ShadowSplitData
---@return boolean,UnityEngine.Matrix4x4,UnityEngine.Matrix4x4,UnityEngine.Rendering.ShadowSplitData
function UnityEngine.Rendering.CullingResults:ComputeDirectionalShadowMatricesAndCullingPrimitives(activeLightIndex, splitIndex, splitCount, splitRatio, shadowResolution, shadowNearPlaneOffset, out_viewMatrix, out_projMatrix, out_shadowSplitData) end
---@overload fun(self: UnityEngine.Rendering.CullingResults, other: UnityEngine.Rendering.CullingResults) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.CullingResults:Equals(obj) end
---@return number
function UnityEngine.Rendering.CullingResults:GetHashCode() end

---@class UnityEngine.Rendering.CullingAllocationInfo : System.ValueType
---@field visibleLightsPtr UnityEngine.Rendering.VisibleLight*
---@field visibleOffscreenVertexLightsPtr UnityEngine.Rendering.VisibleLight*
---@field visibleReflectionProbesPtr UnityEngine.Rendering.VisibleReflectionProbe*
---@field visibleLightCount number
---@field visibleOffscreenVertexLightCount number
---@field visibleReflectionProbeCount number
UnityEngine.Rendering.CullingAllocationInfo = {}
---@alias CS.UnityEngine.Rendering.CullingAllocationInfo UnityEngine.Rendering.CullingAllocationInfo
CS.UnityEngine.Rendering.CullingAllocationInfo = UnityEngine.Rendering.CullingAllocationInfo


---@class UnityEngine.Rendering.DepthState : System.ValueType
---@field defaultValue UnityEngine.Rendering.DepthState
---@field writeEnabled boolean
---@field compareFunction UnityEngine.Rendering.CompareFunction
UnityEngine.Rendering.DepthState = {}
---@alias CS.UnityEngine.Rendering.DepthState UnityEngine.Rendering.DepthState
CS.UnityEngine.Rendering.DepthState = UnityEngine.Rendering.DepthState

---@param writeEnabled boolean
---@param compareFunction UnityEngine.Rendering.CompareFunction
---@return UnityEngine.Rendering.DepthState
function UnityEngine.Rendering.DepthState.New(writeEnabled, compareFunction) end
---@overload fun(self: UnityEngine.Rendering.DepthState, other: UnityEngine.Rendering.DepthState) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.DepthState:Equals(obj) end
---@return number
function UnityEngine.Rendering.DepthState:GetHashCode() end

---@class UnityEngine.Rendering.DrawingSettings : System.ValueType
---@field maxShaderPasses number
---@field sortingSettings UnityEngine.Rendering.SortingSettings
---@field perObjectData UnityEngine.Rendering.PerObjectData
---@field enableDynamicBatching boolean
---@field enableInstancing boolean
---@field overrideMaterial UnityEngine.Material
---@field overrideShader UnityEngine.Shader
---@field overrideMaterialPassIndex number
---@field overrideShaderPassIndex number
---@field fallbackMaterial UnityEngine.Material
---@field mainLightIndex number
UnityEngine.Rendering.DrawingSettings = {}
---@alias CS.UnityEngine.Rendering.DrawingSettings UnityEngine.Rendering.DrawingSettings
CS.UnityEngine.Rendering.DrawingSettings = UnityEngine.Rendering.DrawingSettings

---@param shaderPassName UnityEngine.Rendering.ShaderTagId
---@param sortingSettings UnityEngine.Rendering.SortingSettings
---@return UnityEngine.Rendering.DrawingSettings
function UnityEngine.Rendering.DrawingSettings.New(shaderPassName, sortingSettings) end
---@param index number
---@return UnityEngine.Rendering.ShaderTagId
function UnityEngine.Rendering.DrawingSettings:GetShaderPassName(index) end
---@param index number
---@param shaderPassName UnityEngine.Rendering.ShaderTagId
function UnityEngine.Rendering.DrawingSettings:SetShaderPassName(index, shaderPassName) end
---@overload fun(self: UnityEngine.Rendering.DrawingSettings, other: UnityEngine.Rendering.DrawingSettings) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.DrawingSettings:Equals(obj) end
---@return number
function UnityEngine.Rendering.DrawingSettings:GetHashCode() end

---@class UnityEngine.Rendering.DrawRendererFlags
---@field None UnityEngine.Rendering.DrawRendererFlags
---@field EnableDynamicBatching UnityEngine.Rendering.DrawRendererFlags
---@field EnableInstancing UnityEngine.Rendering.DrawRendererFlags
UnityEngine.Rendering.DrawRendererFlags = {}
---@alias CS.UnityEngine.Rendering.DrawRendererFlags UnityEngine.Rendering.DrawRendererFlags
CS.UnityEngine.Rendering.DrawRendererFlags = UnityEngine.Rendering.DrawRendererFlags


---@class UnityEngine.Rendering.FilteringSettings : System.ValueType
---@field defaultValue UnityEngine.Rendering.FilteringSettings
---@field renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@field layerMask number
---@field renderingLayerMask number
---@field excludeMotionVectorObjects boolean
---@field sortingLayerRange UnityEngine.Rendering.SortingLayerRange
UnityEngine.Rendering.FilteringSettings = {}
---@alias CS.UnityEngine.Rendering.FilteringSettings UnityEngine.Rendering.FilteringSettings
CS.UnityEngine.Rendering.FilteringSettings = UnityEngine.Rendering.FilteringSettings

---@param renderQueueRange System.Nullable
---@param layerMask number
---@param renderingLayerMask number
---@param excludeMotionVectorObjects number
---@return UnityEngine.Rendering.FilteringSettings
function UnityEngine.Rendering.FilteringSettings.New(renderQueueRange, layerMask, renderingLayerMask, excludeMotionVectorObjects) end
---@overload fun(self: UnityEngine.Rendering.FilteringSettings, other: UnityEngine.Rendering.FilteringSettings) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.FilteringSettings:Equals(obj) end
---@return number
function UnityEngine.Rendering.FilteringSettings:GetHashCode() end

---@class UnityEngine.Rendering.GizmoSubset
---@field PreImageEffects UnityEngine.Rendering.GizmoSubset
---@field PostImageEffects UnityEngine.Rendering.GizmoSubset
UnityEngine.Rendering.GizmoSubset = {}
---@alias CS.UnityEngine.Rendering.GizmoSubset UnityEngine.Rendering.GizmoSubset
CS.UnityEngine.Rendering.GizmoSubset = UnityEngine.Rendering.GizmoSubset


---@class UnityEngine.Rendering.LODParameters : System.ValueType
---@field isOrthographic boolean
---@field cameraPosition UnityEngine.Vector3
---@field fieldOfView number
---@field orthoSize number
---@field cameraPixelHeight number
UnityEngine.Rendering.LODParameters = {}
---@alias CS.UnityEngine.Rendering.LODParameters UnityEngine.Rendering.LODParameters
CS.UnityEngine.Rendering.LODParameters = UnityEngine.Rendering.LODParameters

---@overload fun(self: UnityEngine.Rendering.LODParameters, other: UnityEngine.Rendering.LODParameters) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.LODParameters:Equals(obj) end
---@return number
function UnityEngine.Rendering.LODParameters:GetHashCode() end

---@class UnityEngine.Rendering.ObjectIdRequest : System.Object
---@field destination UnityEngine.RenderTexture
---@field mipLevel number
---@field face UnityEngine.CubemapFace
---@field slice number
---@field result UnityEngine.Rendering.ObjectIdResult
UnityEngine.Rendering.ObjectIdRequest = {}
---@alias CS.UnityEngine.Rendering.ObjectIdRequest UnityEngine.Rendering.ObjectIdRequest
CS.UnityEngine.Rendering.ObjectIdRequest = UnityEngine.Rendering.ObjectIdRequest

---@param destination UnityEngine.RenderTexture
---@param mipLevel number
---@param face UnityEngine.CubemapFace
---@param slice number
---@return UnityEngine.Rendering.ObjectIdRequest
function UnityEngine.Rendering.ObjectIdRequest.New(destination, mipLevel, face, slice) end

---@class UnityEngine.Rendering.ObjectIdResult : System.Object
---@field idToObjectMapping UnityEngine.Object[]
UnityEngine.Rendering.ObjectIdResult = {}
---@alias CS.UnityEngine.Rendering.ObjectIdResult UnityEngine.Rendering.ObjectIdResult
CS.UnityEngine.Rendering.ObjectIdResult = UnityEngine.Rendering.ObjectIdResult

---@param color UnityEngine.Color
---@return number
function UnityEngine.Rendering.ObjectIdResult.DecodeIdFromColor(color) end

---@class UnityEngine.Rendering.PerObjectData
---@field None UnityEngine.Rendering.PerObjectData
---@field LightProbe UnityEngine.Rendering.PerObjectData
---@field ReflectionProbes UnityEngine.Rendering.PerObjectData
---@field LightProbeProxyVolume UnityEngine.Rendering.PerObjectData
---@field Lightmaps UnityEngine.Rendering.PerObjectData
---@field LightData UnityEngine.Rendering.PerObjectData
---@field MotionVectors UnityEngine.Rendering.PerObjectData
---@field LightIndices UnityEngine.Rendering.PerObjectData
---@field ReflectionProbeData UnityEngine.Rendering.PerObjectData
---@field OcclusionProbe UnityEngine.Rendering.PerObjectData
---@field OcclusionProbeProxyVolume UnityEngine.Rendering.PerObjectData
---@field ShadowMask UnityEngine.Rendering.PerObjectData
UnityEngine.Rendering.PerObjectData = {}
---@alias CS.UnityEngine.Rendering.PerObjectData UnityEngine.Rendering.PerObjectData
CS.UnityEngine.Rendering.PerObjectData = UnityEngine.Rendering.PerObjectData


---@class UnityEngine.Rendering.RasterState : System.ValueType
---@field defaultValue UnityEngine.Rendering.RasterState
---@field cullingMode UnityEngine.Rendering.CullMode
---@field depthClip boolean
---@field conservative boolean
---@field offsetUnits number
---@field offsetFactor number
UnityEngine.Rendering.RasterState = {}
---@alias CS.UnityEngine.Rendering.RasterState UnityEngine.Rendering.RasterState
CS.UnityEngine.Rendering.RasterState = UnityEngine.Rendering.RasterState

---@param cullingMode UnityEngine.Rendering.CullMode
---@param offsetUnits number
---@param offsetFactor number
---@param depthClip boolean
---@return UnityEngine.Rendering.RasterState
function UnityEngine.Rendering.RasterState.New(cullingMode, offsetUnits, offsetFactor, depthClip) end
---@overload fun(self: UnityEngine.Rendering.RasterState, other: UnityEngine.Rendering.RasterState) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.RasterState:Equals(obj) end
---@return number
function UnityEngine.Rendering.RasterState:GetHashCode() end

---@class UnityEngine.Rendering.ReflectionProbeSortingCriteria
---@field None UnityEngine.Rendering.ReflectionProbeSortingCriteria
---@field Importance UnityEngine.Rendering.ReflectionProbeSortingCriteria
---@field Size UnityEngine.Rendering.ReflectionProbeSortingCriteria
---@field ImportanceThenSize UnityEngine.Rendering.ReflectionProbeSortingCriteria
UnityEngine.Rendering.ReflectionProbeSortingCriteria = {}
---@alias CS.UnityEngine.Rendering.ReflectionProbeSortingCriteria UnityEngine.Rendering.ReflectionProbeSortingCriteria
CS.UnityEngine.Rendering.ReflectionProbeSortingCriteria = UnityEngine.Rendering.ReflectionProbeSortingCriteria


---@class UnityEngine.Rendering.RendererList : System.ValueType
---@field nullRendererList UnityEngine.Rendering.RendererList
---@field isValid boolean
UnityEngine.Rendering.RendererList = {}
---@alias CS.UnityEngine.Rendering.RendererList UnityEngine.Rendering.RendererList
CS.UnityEngine.Rendering.RendererList = UnityEngine.Rendering.RendererList


---@class UnityEngine.Rendering.RendererListStatus
---@field kRendererListInvalid UnityEngine.Rendering.RendererListStatus
---@field kRendererListProcessing UnityEngine.Rendering.RendererListStatus
---@field kRendererListEmpty UnityEngine.Rendering.RendererListStatus
---@field kRendererListPopulated UnityEngine.Rendering.RendererListStatus
UnityEngine.Rendering.RendererListStatus = {}
---@alias CS.UnityEngine.Rendering.RendererListStatus UnityEngine.Rendering.RendererListStatus
CS.UnityEngine.Rendering.RendererListStatus = UnityEngine.Rendering.RendererListStatus


---@class UnityEngine.Rendering.RendererListParams : System.ValueType
---@field Invalid UnityEngine.Rendering.RendererListParams
---@field cullingResults UnityEngine.Rendering.CullingResults
---@field drawSettings UnityEngine.Rendering.DrawingSettings
---@field filteringSettings UnityEngine.Rendering.FilteringSettings
---@field tagName UnityEngine.Rendering.ShaderTagId
---@field isPassTagName boolean
---@field tagValues System.Nullable
---@field stateBlocks System.Nullable
UnityEngine.Rendering.RendererListParams = {}
---@alias CS.UnityEngine.Rendering.RendererListParams UnityEngine.Rendering.RendererListParams
CS.UnityEngine.Rendering.RendererListParams = UnityEngine.Rendering.RendererListParams

---@param cullingResults UnityEngine.Rendering.CullingResults
---@param drawSettings UnityEngine.Rendering.DrawingSettings
---@param filteringSettings UnityEngine.Rendering.FilteringSettings
---@return UnityEngine.Rendering.RendererListParams
function UnityEngine.Rendering.RendererListParams.New(cullingResults, drawSettings, filteringSettings) end
---@overload fun(self: UnityEngine.Rendering.RendererListParams, other: UnityEngine.Rendering.RendererListParams) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.RendererListParams:Equals(obj) end
---@return number
function UnityEngine.Rendering.RendererListParams:GetHashCode() end

---@class UnityEngine.Rendering.RenderPipeline : System.Object
---@field disposed boolean
---@field defaultSettings UnityEngine.Rendering.RenderPipelineGlobalSettings
UnityEngine.Rendering.RenderPipeline = {}
---@alias CS.UnityEngine.Rendering.RenderPipeline UnityEngine.Rendering.RenderPipeline
CS.UnityEngine.Rendering.RenderPipeline = UnityEngine.Rendering.RenderPipeline


---@class UnityEngine.Rendering.RenderPipeline.StandardRequest : System.Object
---@field destination UnityEngine.RenderTexture
---@field mipLevel number
---@field face UnityEngine.CubemapFace
---@field slice number
UnityEngine.Rendering.RenderPipeline.StandardRequest = {}
---@alias CS.UnityEngine.Rendering.RenderPipeline.StandardRequest UnityEngine.Rendering.RenderPipeline.StandardRequest
CS.UnityEngine.Rendering.RenderPipeline.StandardRequest = UnityEngine.Rendering.RenderPipeline.StandardRequest

---@return UnityEngine.Rendering.RenderPipeline.StandardRequest
function UnityEngine.Rendering.RenderPipeline.StandardRequest.New() end

---@class UnityEngine.Rendering.RenderPipelineAsset : UnityEngine.ScriptableObject
---@field terrainBrushPassIndex number
---@field renderingLayerMaskNames System.String[]
---@field prefixedRenderingLayerMaskNames System.String[]
---@field defaultMaterial UnityEngine.Material
---@field autodeskInteractiveShader UnityEngine.Shader
---@field autodeskInteractiveTransparentShader UnityEngine.Shader
---@field autodeskInteractiveMaskedShader UnityEngine.Shader
---@field terrainDetailLitShader UnityEngine.Shader
---@field terrainDetailGrassShader UnityEngine.Shader
---@field terrainDetailGrassBillboardShader UnityEngine.Shader
---@field defaultParticleMaterial UnityEngine.Material
---@field defaultLineMaterial UnityEngine.Material
---@field defaultTerrainMaterial UnityEngine.Material
---@field defaultUIMaterial UnityEngine.Material
---@field defaultUIOverdrawMaterial UnityEngine.Material
---@field defaultUIETC1SupportedMaterial UnityEngine.Material
---@field default2DMaterial UnityEngine.Material
---@field default2DMaskMaterial UnityEngine.Material
---@field defaultShader UnityEngine.Shader
---@field defaultSpeedTree7Shader UnityEngine.Shader
---@field defaultSpeedTree8Shader UnityEngine.Shader
---@field renderPipelineShaderTag string
UnityEngine.Rendering.RenderPipelineAsset = {}
---@alias CS.UnityEngine.Rendering.RenderPipelineAsset UnityEngine.Rendering.RenderPipelineAsset
CS.UnityEngine.Rendering.RenderPipelineAsset = UnityEngine.Rendering.RenderPipelineAsset


---@class UnityEngine.Rendering.RenderPipelineGlobalSettings : UnityEngine.ScriptableObject
UnityEngine.Rendering.RenderPipelineGlobalSettings = {}
---@alias CS.UnityEngine.Rendering.RenderPipelineGlobalSettings UnityEngine.Rendering.RenderPipelineGlobalSettings
CS.UnityEngine.Rendering.RenderPipelineGlobalSettings = UnityEngine.Rendering.RenderPipelineGlobalSettings


---@class UnityEngine.Rendering.RenderPipelineManager : System.Object
---@field currentPipeline UnityEngine.Rendering.RenderPipeline
---@field pipelineSwitchCompleted boolean
UnityEngine.Rendering.RenderPipelineManager = {}
---@alias CS.UnityEngine.Rendering.RenderPipelineManager UnityEngine.Rendering.RenderPipelineManager
CS.UnityEngine.Rendering.RenderPipelineManager = UnityEngine.Rendering.RenderPipelineManager


---@class UnityEngine.Rendering.RenderQueueRange : System.ValueType
---@field minimumBound number
---@field maximumBound number
---@field all UnityEngine.Rendering.RenderQueueRange
---@field opaque UnityEngine.Rendering.RenderQueueRange
---@field transparent UnityEngine.Rendering.RenderQueueRange
---@field lowerBound number
---@field upperBound number
UnityEngine.Rendering.RenderQueueRange = {}
---@alias CS.UnityEngine.Rendering.RenderQueueRange UnityEngine.Rendering.RenderQueueRange
CS.UnityEngine.Rendering.RenderQueueRange = UnityEngine.Rendering.RenderQueueRange

---@param lowerBound number
---@param upperBound number
---@return UnityEngine.Rendering.RenderQueueRange
function UnityEngine.Rendering.RenderQueueRange.New(lowerBound, upperBound) end
---@overload fun(self: UnityEngine.Rendering.RenderQueueRange, other: UnityEngine.Rendering.RenderQueueRange) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.RenderQueueRange:Equals(obj) end
---@return number
function UnityEngine.Rendering.RenderQueueRange:GetHashCode() end

---@class UnityEngine.Rendering.RenderStateBlock : System.ValueType
---@field blendState UnityEngine.Rendering.BlendState
---@field rasterState UnityEngine.Rendering.RasterState
---@field depthState UnityEngine.Rendering.DepthState
---@field stencilState UnityEngine.Rendering.StencilState
---@field stencilReference number
---@field mask UnityEngine.Rendering.RenderStateMask
UnityEngine.Rendering.RenderStateBlock = {}
---@alias CS.UnityEngine.Rendering.RenderStateBlock UnityEngine.Rendering.RenderStateBlock
CS.UnityEngine.Rendering.RenderStateBlock = UnityEngine.Rendering.RenderStateBlock

---@param mask UnityEngine.Rendering.RenderStateMask
---@return UnityEngine.Rendering.RenderStateBlock
function UnityEngine.Rendering.RenderStateBlock.New(mask) end
---@overload fun(self: UnityEngine.Rendering.RenderStateBlock, other: UnityEngine.Rendering.RenderStateBlock) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.RenderStateBlock:Equals(obj) end
---@return number
function UnityEngine.Rendering.RenderStateBlock:GetHashCode() end

---@class UnityEngine.Rendering.RenderStateMask
---@field Nothing UnityEngine.Rendering.RenderStateMask
---@field Blend UnityEngine.Rendering.RenderStateMask
---@field Raster UnityEngine.Rendering.RenderStateMask
---@field Depth UnityEngine.Rendering.RenderStateMask
---@field Stencil UnityEngine.Rendering.RenderStateMask
---@field Everything UnityEngine.Rendering.RenderStateMask
UnityEngine.Rendering.RenderStateMask = {}
---@alias CS.UnityEngine.Rendering.RenderStateMask UnityEngine.Rendering.RenderStateMask
CS.UnityEngine.Rendering.RenderStateMask = UnityEngine.Rendering.RenderStateMask


---@class UnityEngine.Rendering.RenderTargetBlendState : System.ValueType
---@field defaultValue UnityEngine.Rendering.RenderTargetBlendState
---@field writeMask UnityEngine.Rendering.ColorWriteMask
---@field sourceColorBlendMode UnityEngine.Rendering.BlendMode
---@field destinationColorBlendMode UnityEngine.Rendering.BlendMode
---@field sourceAlphaBlendMode UnityEngine.Rendering.BlendMode
---@field destinationAlphaBlendMode UnityEngine.Rendering.BlendMode
---@field colorBlendOperation UnityEngine.Rendering.BlendOp
---@field alphaBlendOperation UnityEngine.Rendering.BlendOp
UnityEngine.Rendering.RenderTargetBlendState = {}
---@alias CS.UnityEngine.Rendering.RenderTargetBlendState UnityEngine.Rendering.RenderTargetBlendState
CS.UnityEngine.Rendering.RenderTargetBlendState = UnityEngine.Rendering.RenderTargetBlendState

---@param writeMask UnityEngine.Rendering.ColorWriteMask
---@param sourceColorBlendMode UnityEngine.Rendering.BlendMode
---@param destinationColorBlendMode UnityEngine.Rendering.BlendMode
---@param sourceAlphaBlendMode UnityEngine.Rendering.BlendMode
---@param destinationAlphaBlendMode UnityEngine.Rendering.BlendMode
---@param colorBlendOperation UnityEngine.Rendering.BlendOp
---@param alphaBlendOperation UnityEngine.Rendering.BlendOp
---@return UnityEngine.Rendering.RenderTargetBlendState
function UnityEngine.Rendering.RenderTargetBlendState.New(writeMask, sourceColorBlendMode, destinationColorBlendMode, sourceAlphaBlendMode, destinationAlphaBlendMode, colorBlendOperation, alphaBlendOperation) end
---@overload fun(self: UnityEngine.Rendering.RenderTargetBlendState, other: UnityEngine.Rendering.RenderTargetBlendState) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.RenderTargetBlendState:Equals(obj) end
---@return number
function UnityEngine.Rendering.RenderTargetBlendState:GetHashCode() end

---@class UnityEngine.Rendering.ScopedRenderPass : System.ValueType
UnityEngine.Rendering.ScopedRenderPass = {}
---@alias CS.UnityEngine.Rendering.ScopedRenderPass UnityEngine.Rendering.ScopedRenderPass
CS.UnityEngine.Rendering.ScopedRenderPass = UnityEngine.Rendering.ScopedRenderPass

function UnityEngine.Rendering.ScopedRenderPass:Dispose() end

---@class UnityEngine.Rendering.ScopedSubPass : System.ValueType
UnityEngine.Rendering.ScopedSubPass = {}
---@alias CS.UnityEngine.Rendering.ScopedSubPass UnityEngine.Rendering.ScopedSubPass
CS.UnityEngine.Rendering.ScopedSubPass = UnityEngine.Rendering.ScopedSubPass

function UnityEngine.Rendering.ScopedSubPass:Dispose() end

---@class UnityEngine.Rendering.ScriptableRenderContext : System.ValueType
UnityEngine.Rendering.ScriptableRenderContext = {}
---@alias CS.UnityEngine.Rendering.ScriptableRenderContext UnityEngine.Rendering.ScriptableRenderContext
CS.UnityEngine.Rendering.ScriptableRenderContext = UnityEngine.Rendering.ScriptableRenderContext

---@param cullingCamera UnityEngine.Camera
function UnityEngine.Rendering.ScriptableRenderContext.EmitWorldGeometryForSceneView(cullingCamera) end
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.ScriptableRenderContext.EmitGeometryForCamera(camera) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, width: number, height: number, volumeDepth: number, samples: number, attachments: Unity.Collections.NativeArray, depthAttachmentIndex: number)
---@param width number
---@param height number
---@param samples number
---@param attachments Unity.Collections.NativeArray
---@param depthAttachmentIndex number
function UnityEngine.Rendering.ScriptableRenderContext:BeginRenderPass(width, height, samples, attachments, depthAttachmentIndex) end
---@param width number
---@param height number
---@param samples number
---@param attachments Unity.Collections.NativeArray
---@param depthAttachmentIndex number
---@return UnityEngine.Rendering.ScopedRenderPass
function UnityEngine.Rendering.ScriptableRenderContext:BeginScopedRenderPass(width, height, samples, attachments, depthAttachmentIndex) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, colors: Unity.Collections.NativeArray, inputs: Unity.Collections.NativeArray, isDepthReadOnly: boolean, isStencilReadOnly: boolean)
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, colors: Unity.Collections.NativeArray, inputs: Unity.Collections.NativeArray, isDepthStencilReadOnly: boolean)
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, colors: Unity.Collections.NativeArray, isDepthReadOnly: boolean, isStencilReadOnly: boolean)
---@param colors Unity.Collections.NativeArray
---@param isDepthStencilReadOnly boolean
function UnityEngine.Rendering.ScriptableRenderContext:BeginSubPass(colors, isDepthStencilReadOnly) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, colors: Unity.Collections.NativeArray, inputs: Unity.Collections.NativeArray, isDepthReadOnly: boolean, isStencilReadOnly: boolean) : UnityEngine.Rendering.ScopedSubPass
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, colors: Unity.Collections.NativeArray, inputs: Unity.Collections.NativeArray, isDepthStencilReadOnly: boolean) : UnityEngine.Rendering.ScopedSubPass
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, colors: Unity.Collections.NativeArray, isDepthReadOnly: boolean, isStencilReadOnly: boolean) : UnityEngine.Rendering.ScopedSubPass
---@param colors Unity.Collections.NativeArray
---@param isDepthStencilReadOnly boolean
---@return UnityEngine.Rendering.ScopedSubPass
function UnityEngine.Rendering.ScriptableRenderContext:BeginScopedSubPass(colors, isDepthStencilReadOnly) end
function UnityEngine.Rendering.ScriptableRenderContext:EndSubPass() end
function UnityEngine.Rendering.ScriptableRenderContext:EndRenderPass() end
function UnityEngine.Rendering.ScriptableRenderContext:Submit() end
---@return boolean
function UnityEngine.Rendering.ScriptableRenderContext:SubmitForRenderPassValidation() end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, cullingResults: UnityEngine.Rendering.CullingResults, ref_drawingSettings: UnityEngine.Rendering.DrawingSettings, ref_filteringSettings: UnityEngine.Rendering.FilteringSettings) : UnityEngine.Rendering.DrawingSettings, UnityEngine.Rendering.FilteringSettings
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, cullingResults: UnityEngine.Rendering.CullingResults, ref_drawingSettings: UnityEngine.Rendering.DrawingSettings, ref_filteringSettings: UnityEngine.Rendering.FilteringSettings, ref_stateBlock: UnityEngine.Rendering.RenderStateBlock) : UnityEngine.Rendering.DrawingSettings, UnityEngine.Rendering.FilteringSettings, UnityEngine.Rendering.RenderStateBlock
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, cullingResults: UnityEngine.Rendering.CullingResults, ref_drawingSettings: UnityEngine.Rendering.DrawingSettings, ref_filteringSettings: UnityEngine.Rendering.FilteringSettings, renderTypes: Unity.Collections.NativeArray, stateBlocks: Unity.Collections.NativeArray) : UnityEngine.Rendering.DrawingSettings, UnityEngine.Rendering.FilteringSettings
---@param cullingResults UnityEngine.Rendering.CullingResults
---@param ref_drawingSettings UnityEngine.Rendering.DrawingSettings
---@param ref_filteringSettings UnityEngine.Rendering.FilteringSettings
---@param tagName UnityEngine.Rendering.ShaderTagId
---@param isPassTagName boolean
---@param tagValues Unity.Collections.NativeArray
---@param stateBlocks Unity.Collections.NativeArray
---@return ,UnityEngine.Rendering.DrawingSettings,UnityEngine.Rendering.FilteringSettings
function UnityEngine.Rendering.ScriptableRenderContext:DrawRenderers(cullingResults, ref_drawingSettings, ref_filteringSettings, tagName, isPassTagName, tagValues, stateBlocks) end
---@param ref_settings UnityEngine.Rendering.ShadowDrawingSettings
---@return ,UnityEngine.Rendering.ShadowDrawingSettings
function UnityEngine.Rendering.ScriptableRenderContext:DrawShadows(ref_settings) end
---@param commandBuffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.ScriptableRenderContext:ExecuteCommandBuffer(commandBuffer) end
---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function UnityEngine.Rendering.ScriptableRenderContext:ExecuteCommandBufferAsync(commandBuffer, queueType) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, camera: UnityEngine.Camera, stereoSetup: boolean)
---@param camera UnityEngine.Camera
---@param stereoSetup boolean
---@param eye number
function UnityEngine.Rendering.ScriptableRenderContext:SetupCameraProperties(camera, stereoSetup, eye) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, camera: UnityEngine.Camera)
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, camera: UnityEngine.Camera, eye: number)
---@param camera UnityEngine.Camera
---@param eye number
---@param isFinalPass boolean
function UnityEngine.Rendering.ScriptableRenderContext:StereoEndRender(camera, eye, isFinalPass) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, camera: UnityEngine.Camera)
---@param camera UnityEngine.Camera
---@param eye number
function UnityEngine.Rendering.ScriptableRenderContext:StartMultiEye(camera, eye) end
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.ScriptableRenderContext:StopMultiEye(camera) end
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.ScriptableRenderContext:DrawSkybox(camera) end
function UnityEngine.Rendering.ScriptableRenderContext:InvokeOnRenderObjectCallback() end
---@param camera UnityEngine.Camera
---@param gizmoSubset UnityEngine.Rendering.GizmoSubset
function UnityEngine.Rendering.ScriptableRenderContext:DrawGizmos(camera, gizmoSubset) end
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.ScriptableRenderContext:DrawWireOverlay(camera) end
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.ScriptableRenderContext:DrawUIOverlay(camera) end
---@param ref_parameters UnityEngine.Rendering.ScriptableCullingParameters
---@return UnityEngine.Rendering.CullingResults,UnityEngine.Rendering.ScriptableCullingParameters
function UnityEngine.Rendering.ScriptableRenderContext:Cull(ref_parameters) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, other: UnityEngine.Rendering.ScriptableRenderContext) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.ScriptableRenderContext:Equals(obj) end
---@return number
function UnityEngine.Rendering.ScriptableRenderContext:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, desc: UnityEngine.Rendering.RendererUtils.RendererListDesc) : UnityEngine.Rendering.RendererList
---@param ref_param UnityEngine.Rendering.RendererListParams
---@return UnityEngine.Rendering.RendererList,UnityEngine.Rendering.RendererListParams
function UnityEngine.Rendering.ScriptableRenderContext:CreateRendererList(ref_param) end
---@param ref_settings UnityEngine.Rendering.ShadowDrawingSettings
---@return UnityEngine.Rendering.RendererList,UnityEngine.Rendering.ShadowDrawingSettings
function UnityEngine.Rendering.ScriptableRenderContext:CreateShadowRendererList(ref_settings) end
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, camera: UnityEngine.Camera, projectionMatrixL: UnityEngine.Matrix4x4, viewMatrixL: UnityEngine.Matrix4x4, projectionMatrixR: UnityEngine.Matrix4x4, viewMatrixR: UnityEngine.Matrix4x4) : UnityEngine.Rendering.RendererList
---@overload fun(self: UnityEngine.Rendering.ScriptableRenderContext, camera: UnityEngine.Camera, projectionMatrix: UnityEngine.Matrix4x4, viewMatrix: UnityEngine.Matrix4x4) : UnityEngine.Rendering.RendererList
---@param camera UnityEngine.Camera
---@return UnityEngine.Rendering.RendererList
function UnityEngine.Rendering.ScriptableRenderContext:CreateSkyboxRendererList(camera) end
---@param rendererLists System.Collections.Generic.List
function UnityEngine.Rendering.ScriptableRenderContext:PrepareRendererListsAsync(rendererLists) end
---@param rendererList UnityEngine.Rendering.RendererList
---@return UnityEngine.Rendering.RendererListStatus
function UnityEngine.Rendering.ScriptableRenderContext:QueryRendererListStatus(rendererList) end

---@class UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode
---@field Off UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode
---@field Enabled UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode
---@field LegacySinglePass UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode
UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode = {}
---@alias CS.UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode
CS.UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode = UnityEngine.Rendering.ScriptableRenderContext.SkyboxXRMode


---@class UnityEngine.Rendering.ShaderTagId : System.ValueType
---@field none UnityEngine.Rendering.ShaderTagId
---@field name string
UnityEngine.Rendering.ShaderTagId = {}
---@alias CS.UnityEngine.Rendering.ShaderTagId UnityEngine.Rendering.ShaderTagId
CS.UnityEngine.Rendering.ShaderTagId = UnityEngine.Rendering.ShaderTagId

---@param name string
---@return UnityEngine.Rendering.ShaderTagId
function UnityEngine.Rendering.ShaderTagId.New(name) end
---@overload fun(self: UnityEngine.Rendering.ShaderTagId, obj: System.Object) : boolean
---@param other UnityEngine.Rendering.ShaderTagId
---@return boolean
function UnityEngine.Rendering.ShaderTagId:Equals(other) end
---@return number
function UnityEngine.Rendering.ShaderTagId:GetHashCode() end

---@class UnityEngine.Rendering.ShadowDrawingSettings : System.ValueType
---@field cullingResults UnityEngine.Rendering.CullingResults
---@field lightIndex number
---@field useRenderingLayerMaskTest boolean
---@field splitData UnityEngine.Rendering.ShadowSplitData
---@field objectsFilter UnityEngine.ShadowObjectsFilter
---@field projectionType UnityEngine.Rendering.BatchCullingProjectionType
UnityEngine.Rendering.ShadowDrawingSettings = {}
---@alias CS.UnityEngine.Rendering.ShadowDrawingSettings UnityEngine.Rendering.ShadowDrawingSettings
CS.UnityEngine.Rendering.ShadowDrawingSettings = UnityEngine.Rendering.ShadowDrawingSettings

---@overload fun(cullingResults: UnityEngine.Rendering.CullingResults, lightIndex: number) : UnityEngine.Rendering.ShadowDrawingSettings
---@param cullingResults UnityEngine.Rendering.CullingResults
---@param lightIndex number
---@param projectionType UnityEngine.Rendering.BatchCullingProjectionType
---@return UnityEngine.Rendering.ShadowDrawingSettings
function UnityEngine.Rendering.ShadowDrawingSettings.New(cullingResults, lightIndex, projectionType) end
---@overload fun(self: UnityEngine.Rendering.ShadowDrawingSettings, other: UnityEngine.Rendering.ShadowDrawingSettings) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.ShadowDrawingSettings:Equals(obj) end
---@return number
function UnityEngine.Rendering.ShadowDrawingSettings:GetHashCode() end

---@class UnityEngine.Rendering.ShadowSplitData : System.ValueType
---@field maximumCullingPlaneCount number
---@field cullingPlaneCount number
---@field cullingSphere UnityEngine.Vector4
---@field cullingMatrix UnityEngine.Matrix4x4
---@field cullingNearPlane number
---@field shadowCascadeBlendCullingFactor number
UnityEngine.Rendering.ShadowSplitData = {}
---@alias CS.UnityEngine.Rendering.ShadowSplitData UnityEngine.Rendering.ShadowSplitData
CS.UnityEngine.Rendering.ShadowSplitData = UnityEngine.Rendering.ShadowSplitData

---@param index number
---@return UnityEngine.Plane
function UnityEngine.Rendering.ShadowSplitData:GetCullingPlane(index) end
---@param index number
---@param plane UnityEngine.Plane
function UnityEngine.Rendering.ShadowSplitData:SetCullingPlane(index, plane) end
---@overload fun(self: UnityEngine.Rendering.ShadowSplitData, other: UnityEngine.Rendering.ShadowSplitData) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.ShadowSplitData:Equals(obj) end
---@return number
function UnityEngine.Rendering.ShadowSplitData:GetHashCode() end

---@class UnityEngine.Rendering.SortingCriteria
---@field None UnityEngine.Rendering.SortingCriteria
---@field SortingLayer UnityEngine.Rendering.SortingCriteria
---@field RenderQueue UnityEngine.Rendering.SortingCriteria
---@field BackToFront UnityEngine.Rendering.SortingCriteria
---@field QuantizedFrontToBack UnityEngine.Rendering.SortingCriteria
---@field OptimizeStateChanges UnityEngine.Rendering.SortingCriteria
---@field CanvasOrder UnityEngine.Rendering.SortingCriteria
---@field RendererPriority UnityEngine.Rendering.SortingCriteria
---@field CommonOpaque UnityEngine.Rendering.SortingCriteria
---@field CommonTransparent UnityEngine.Rendering.SortingCriteria
UnityEngine.Rendering.SortingCriteria = {}
---@alias CS.UnityEngine.Rendering.SortingCriteria UnityEngine.Rendering.SortingCriteria
CS.UnityEngine.Rendering.SortingCriteria = UnityEngine.Rendering.SortingCriteria


---@class UnityEngine.Rendering.SortingLayerRange : System.ValueType
---@field all UnityEngine.Rendering.SortingLayerRange
---@field lowerBound number
---@field upperBound number
UnityEngine.Rendering.SortingLayerRange = {}
---@alias CS.UnityEngine.Rendering.SortingLayerRange UnityEngine.Rendering.SortingLayerRange
CS.UnityEngine.Rendering.SortingLayerRange = UnityEngine.Rendering.SortingLayerRange

---@param lowerBound number
---@param upperBound number
---@return UnityEngine.Rendering.SortingLayerRange
function UnityEngine.Rendering.SortingLayerRange.New(lowerBound, upperBound) end
---@overload fun(self: UnityEngine.Rendering.SortingLayerRange, other: UnityEngine.Rendering.SortingLayerRange) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.SortingLayerRange:Equals(obj) end
---@return number
function UnityEngine.Rendering.SortingLayerRange:GetHashCode() end

---@class UnityEngine.Rendering.DistanceMetric
---@field Perspective UnityEngine.Rendering.DistanceMetric
---@field Orthographic UnityEngine.Rendering.DistanceMetric
---@field CustomAxis UnityEngine.Rendering.DistanceMetric
UnityEngine.Rendering.DistanceMetric = {}
---@alias CS.UnityEngine.Rendering.DistanceMetric UnityEngine.Rendering.DistanceMetric
CS.UnityEngine.Rendering.DistanceMetric = UnityEngine.Rendering.DistanceMetric


---@class UnityEngine.Rendering.SortingSettings : System.ValueType
---@field worldToCameraMatrix UnityEngine.Matrix4x4
---@field cameraPosition UnityEngine.Vector3
---@field customAxis UnityEngine.Vector3
---@field criteria UnityEngine.Rendering.SortingCriteria
---@field distanceMetric UnityEngine.Rendering.DistanceMetric
UnityEngine.Rendering.SortingSettings = {}
---@alias CS.UnityEngine.Rendering.SortingSettings UnityEngine.Rendering.SortingSettings
CS.UnityEngine.Rendering.SortingSettings = UnityEngine.Rendering.SortingSettings

---@param camera UnityEngine.Camera
---@return UnityEngine.Rendering.SortingSettings
function UnityEngine.Rendering.SortingSettings.New(camera) end
---@overload fun(self: UnityEngine.Rendering.SortingSettings, other: UnityEngine.Rendering.SortingSettings) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.SortingSettings:Equals(obj) end
---@return number
function UnityEngine.Rendering.SortingSettings:GetHashCode() end

---@class UnityEngine.Rendering.StencilState : System.ValueType
---@field defaultValue UnityEngine.Rendering.StencilState
---@field enabled boolean
---@field readMask number
---@field writeMask number
---@field compareFunctionFront UnityEngine.Rendering.CompareFunction
---@field passOperationFront UnityEngine.Rendering.StencilOp
---@field failOperationFront UnityEngine.Rendering.StencilOp
---@field zFailOperationFront UnityEngine.Rendering.StencilOp
---@field compareFunctionBack UnityEngine.Rendering.CompareFunction
---@field passOperationBack UnityEngine.Rendering.StencilOp
---@field failOperationBack UnityEngine.Rendering.StencilOp
---@field zFailOperationBack UnityEngine.Rendering.StencilOp
UnityEngine.Rendering.StencilState = {}
---@alias CS.UnityEngine.Rendering.StencilState UnityEngine.Rendering.StencilState
CS.UnityEngine.Rendering.StencilState = UnityEngine.Rendering.StencilState

---@overload fun(enabled: boolean, readMask: number, writeMask: number, compareFunction: UnityEngine.Rendering.CompareFunction, passOperation: UnityEngine.Rendering.StencilOp, failOperation: UnityEngine.Rendering.StencilOp, zFailOperation: UnityEngine.Rendering.StencilOp) : UnityEngine.Rendering.StencilState
---@param enabled boolean
---@param readMask number
---@param writeMask number
---@param compareFunctionFront UnityEngine.Rendering.CompareFunction
---@param passOperationFront UnityEngine.Rendering.StencilOp
---@param failOperationFront UnityEngine.Rendering.StencilOp
---@param zFailOperationFront UnityEngine.Rendering.StencilOp
---@param compareFunctionBack UnityEngine.Rendering.CompareFunction
---@param passOperationBack UnityEngine.Rendering.StencilOp
---@param failOperationBack UnityEngine.Rendering.StencilOp
---@param zFailOperationBack UnityEngine.Rendering.StencilOp
---@return UnityEngine.Rendering.StencilState
function UnityEngine.Rendering.StencilState.New(enabled, readMask, writeMask, compareFunctionFront, passOperationFront, failOperationFront, zFailOperationFront, compareFunctionBack, passOperationBack, failOperationBack, zFailOperationBack) end
---@param value UnityEngine.Rendering.CompareFunction
function UnityEngine.Rendering.StencilState:SetCompareFunction(value) end
---@param value UnityEngine.Rendering.StencilOp
function UnityEngine.Rendering.StencilState:SetPassOperation(value) end
---@param value UnityEngine.Rendering.StencilOp
function UnityEngine.Rendering.StencilState:SetFailOperation(value) end
---@param value UnityEngine.Rendering.StencilOp
function UnityEngine.Rendering.StencilState:SetZFailOperation(value) end
---@overload fun(self: UnityEngine.Rendering.StencilState, other: UnityEngine.Rendering.StencilState) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.StencilState:Equals(obj) end
---@return number
function UnityEngine.Rendering.StencilState:GetHashCode() end

---@class UnityEngine.Rendering.SupportedRenderingFeatures : System.Object
---@field active UnityEngine.Rendering.SupportedRenderingFeatures
---@field reflectionProbeModes UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes
---@field defaultMixedLightingModes UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
---@field mixedLightingModes UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
---@field lightmapBakeTypes UnityEngine.LightmapBakeType
---@field lightmapsModes UnityEngine.LightmapsMode
---@field enlighten boolean
---@field lightProbeProxyVolumes boolean
---@field motionVectors boolean
---@field receiveShadows boolean
---@field reflectionProbes boolean
---@field reflectionProbesBlendDistance boolean
---@field rendererPriority boolean
---@field rendersUIOverlay boolean
---@field overridesEnvironmentLighting boolean
---@field overridesFog boolean
---@field overridesRealtimeReflectionProbes boolean
---@field overridesOtherLightingSettings boolean
---@field editableMaterialRenderQueue boolean
---@field overridesLODBias boolean
---@field overridesMaximumLODLevel boolean
---@field overridesEnableLODCrossFade boolean
---@field rendererProbes boolean
---@field particleSystemInstancing boolean
---@field autoAmbientProbeBaking boolean
---@field autoDefaultReflectionProbeBaking boolean
---@field overridesShadowmask boolean
---@field overridesLightProbeSystem boolean
---@field supportsHDR boolean
---@field overridesLightProbeSystemWarningMessage string
UnityEngine.Rendering.SupportedRenderingFeatures = {}
---@alias CS.UnityEngine.Rendering.SupportedRenderingFeatures UnityEngine.Rendering.SupportedRenderingFeatures
CS.UnityEngine.Rendering.SupportedRenderingFeatures = UnityEngine.Rendering.SupportedRenderingFeatures

---@return UnityEngine.Rendering.SupportedRenderingFeatures
function UnityEngine.Rendering.SupportedRenderingFeatures.New() end

---@class UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes
---@field None UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes
---@field Rotation UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes
UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes = {}
---@alias CS.UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes
CS.UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes = UnityEngine.Rendering.SupportedRenderingFeatures.ReflectionProbeModes


---@class UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
---@field None UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
---@field IndirectOnly UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
---@field Subtractive UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
---@field Shadowmask UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes = {}
---@alias CS.UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes
CS.UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes = UnityEngine.Rendering.SupportedRenderingFeatures.LightmapMixedBakeModes


---@class UnityEngine.Rendering.VisibleLight : System.ValueType
---@field light UnityEngine.Light
---@field lightType UnityEngine.LightType
---@field finalColor UnityEngine.Color
---@field screenRect UnityEngine.Rect
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field range number
---@field spotAngle number
---@field intersectsNearPlane boolean
---@field intersectsFarPlane boolean
UnityEngine.Rendering.VisibleLight = {}
---@alias CS.UnityEngine.Rendering.VisibleLight UnityEngine.Rendering.VisibleLight
CS.UnityEngine.Rendering.VisibleLight = UnityEngine.Rendering.VisibleLight

---@overload fun(self: UnityEngine.Rendering.VisibleLight, other: UnityEngine.Rendering.VisibleLight) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.VisibleLight:Equals(obj) end
---@return number
function UnityEngine.Rendering.VisibleLight:GetHashCode() end

---@class UnityEngine.Rendering.VisibleLightFlags
---@field IntersectsNearPlane UnityEngine.Rendering.VisibleLightFlags
---@field IntersectsFarPlane UnityEngine.Rendering.VisibleLightFlags
UnityEngine.Rendering.VisibleLightFlags = {}
---@alias CS.UnityEngine.Rendering.VisibleLightFlags UnityEngine.Rendering.VisibleLightFlags
CS.UnityEngine.Rendering.VisibleLightFlags = UnityEngine.Rendering.VisibleLightFlags


---@class UnityEngine.Rendering.VisibleReflectionProbe : System.ValueType
---@field texture UnityEngine.Texture
---@field reflectionProbe UnityEngine.ReflectionProbe
---@field bounds UnityEngine.Bounds
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field hdrData UnityEngine.Vector4
---@field center UnityEngine.Vector3
---@field blendDistance number
---@field importance number
---@field isBoxProjection boolean
UnityEngine.Rendering.VisibleReflectionProbe = {}
---@alias CS.UnityEngine.Rendering.VisibleReflectionProbe UnityEngine.Rendering.VisibleReflectionProbe
CS.UnityEngine.Rendering.VisibleReflectionProbe = UnityEngine.Rendering.VisibleReflectionProbe

---@overload fun(self: UnityEngine.Rendering.VisibleReflectionProbe, other: UnityEngine.Rendering.VisibleReflectionProbe) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Rendering.VisibleReflectionProbe:Equals(obj) end
---@return number
function UnityEngine.Rendering.VisibleReflectionProbe:GetHashCode() end

---@class UnityEngine.Rendering.GlobalKeyword : System.ValueType
---@field name string
UnityEngine.Rendering.GlobalKeyword = {}
---@alias CS.UnityEngine.Rendering.GlobalKeyword UnityEngine.Rendering.GlobalKeyword
CS.UnityEngine.Rendering.GlobalKeyword = UnityEngine.Rendering.GlobalKeyword

---@param name string
---@return UnityEngine.Rendering.GlobalKeyword
function UnityEngine.Rendering.GlobalKeyword.New(name) end
---@param name string
---@return UnityEngine.Rendering.GlobalKeyword
function UnityEngine.Rendering.GlobalKeyword.Create(name) end
---@return string
function UnityEngine.Rendering.GlobalKeyword:ToString() end

---@class UnityEngine.Rendering.LocalKeyword : System.ValueType
---@field name string
---@field isDynamic boolean
---@field isOverridable boolean
---@field isValid boolean
---@field type UnityEngine.Rendering.ShaderKeywordType
UnityEngine.Rendering.LocalKeyword = {}
---@alias CS.UnityEngine.Rendering.LocalKeyword UnityEngine.Rendering.LocalKeyword
CS.UnityEngine.Rendering.LocalKeyword = UnityEngine.Rendering.LocalKeyword

---@overload fun(shader: UnityEngine.Shader, name: string) : UnityEngine.Rendering.LocalKeyword
---@param shader UnityEngine.ComputeShader
---@param name string
---@return UnityEngine.Rendering.LocalKeyword
function UnityEngine.Rendering.LocalKeyword.New(shader, name) end
---@return string
function UnityEngine.Rendering.LocalKeyword:ToString() end
---@overload fun(self: UnityEngine.Rendering.LocalKeyword, o: System.Object) : boolean
---@param rhs UnityEngine.Rendering.LocalKeyword
---@return boolean
function UnityEngine.Rendering.LocalKeyword:Equals(rhs) end
---@return number
function UnityEngine.Rendering.LocalKeyword:GetHashCode() end

---@class UnityEngine.Rendering.LocalKeywordSpace : System.ValueType
---@field keywords UnityEngine.Rendering.LocalKeyword[]
---@field keywordNames System.String[]
---@field keywordCount number
UnityEngine.Rendering.LocalKeywordSpace = {}
---@alias CS.UnityEngine.Rendering.LocalKeywordSpace UnityEngine.Rendering.LocalKeywordSpace
CS.UnityEngine.Rendering.LocalKeywordSpace = UnityEngine.Rendering.LocalKeywordSpace

---@param name string
---@return UnityEngine.Rendering.LocalKeyword
function UnityEngine.Rendering.LocalKeywordSpace:FindKeyword(name) end
---@overload fun(self: UnityEngine.Rendering.LocalKeywordSpace, o: System.Object) : boolean
---@param rhs UnityEngine.Rendering.LocalKeywordSpace
---@return boolean
function UnityEngine.Rendering.LocalKeywordSpace:Equals(rhs) end
---@return number
function UnityEngine.Rendering.LocalKeywordSpace:GetHashCode() end

---@class UnityEngine.Rendering.PassIdentifier : System.ValueType
---@field SubshaderIndex number
---@field PassIndex number
UnityEngine.Rendering.PassIdentifier = {}
---@alias CS.UnityEngine.Rendering.PassIdentifier UnityEngine.Rendering.PassIdentifier
CS.UnityEngine.Rendering.PassIdentifier = UnityEngine.Rendering.PassIdentifier

---@param subshaderIndex number
---@param passIndex number
---@return UnityEngine.Rendering.PassIdentifier
function UnityEngine.Rendering.PassIdentifier.New(subshaderIndex, passIndex) end
---@overload fun(self: UnityEngine.Rendering.PassIdentifier, o: System.Object) : boolean
---@param rhs UnityEngine.Rendering.PassIdentifier
---@return boolean
function UnityEngine.Rendering.PassIdentifier:Equals(rhs) end
---@return number
function UnityEngine.Rendering.PassIdentifier:GetHashCode() end

---@class UnityEngine.Rendering.PlatformKeywordSet : System.ValueType
UnityEngine.Rendering.PlatformKeywordSet = {}
---@alias CS.UnityEngine.Rendering.PlatformKeywordSet UnityEngine.Rendering.PlatformKeywordSet
CS.UnityEngine.Rendering.PlatformKeywordSet = UnityEngine.Rendering.PlatformKeywordSet

---@param define UnityEngine.Rendering.BuiltinShaderDefine
---@return boolean
function UnityEngine.Rendering.PlatformKeywordSet:IsEnabled(define) end
---@param define UnityEngine.Rendering.BuiltinShaderDefine
function UnityEngine.Rendering.PlatformKeywordSet:Enable(define) end
---@param define UnityEngine.Rendering.BuiltinShaderDefine
function UnityEngine.Rendering.PlatformKeywordSet:Disable(define) end

---@class UnityEngine.Rendering.ShaderKeywordType
---@field None UnityEngine.Rendering.ShaderKeywordType
---@field BuiltinDefault UnityEngine.Rendering.ShaderKeywordType
---@field UserDefined UnityEngine.Rendering.ShaderKeywordType
---@field Plugin UnityEngine.Rendering.ShaderKeywordType
UnityEngine.Rendering.ShaderKeywordType = {}
---@alias CS.UnityEngine.Rendering.ShaderKeywordType UnityEngine.Rendering.ShaderKeywordType
CS.UnityEngine.Rendering.ShaderKeywordType = UnityEngine.Rendering.ShaderKeywordType


---@class UnityEngine.Rendering.ShaderKeyword : System.ValueType
---@field name string
---@field index number
UnityEngine.Rendering.ShaderKeyword = {}
---@alias CS.UnityEngine.Rendering.ShaderKeyword UnityEngine.Rendering.ShaderKeyword
CS.UnityEngine.Rendering.ShaderKeyword = UnityEngine.Rendering.ShaderKeyword

---@overload fun(keywordName: string) : UnityEngine.Rendering.ShaderKeyword
---@overload fun(shader: UnityEngine.Shader, keywordName: string) : UnityEngine.Rendering.ShaderKeyword
---@param shader UnityEngine.ComputeShader
---@param keywordName string
---@return UnityEngine.Rendering.ShaderKeyword
function UnityEngine.Rendering.ShaderKeyword.New(shader, keywordName) end
---@param index UnityEngine.Rendering.ShaderKeyword
---@return UnityEngine.Rendering.ShaderKeywordType
function UnityEngine.Rendering.ShaderKeyword.GetGlobalKeywordType(index) end
---@param keyword UnityEngine.Rendering.ShaderKeyword
---@return boolean
function UnityEngine.Rendering.ShaderKeyword.IsKeywordLocal(keyword) end
---@overload fun() : boolean
---@overload fun(self: UnityEngine.Rendering.ShaderKeyword, shader: UnityEngine.ComputeShader) : boolean
---@param shader UnityEngine.Shader
---@return boolean
function UnityEngine.Rendering.ShaderKeyword:IsValid(shader) end
---@return string
function UnityEngine.Rendering.ShaderKeyword:ToString() end

---@class UnityEngine.Rendering.ShaderKeywordSet : System.ValueType
UnityEngine.Rendering.ShaderKeywordSet = {}
---@alias CS.UnityEngine.Rendering.ShaderKeywordSet UnityEngine.Rendering.ShaderKeywordSet
CS.UnityEngine.Rendering.ShaderKeywordSet = UnityEngine.Rendering.ShaderKeywordSet

---@overload fun(self: UnityEngine.Rendering.ShaderKeywordSet, keyword: UnityEngine.Rendering.ShaderKeyword) : boolean
---@overload fun(self: UnityEngine.Rendering.ShaderKeywordSet, keyword: UnityEngine.Rendering.GlobalKeyword) : boolean
---@param keyword UnityEngine.Rendering.LocalKeyword
---@return boolean
function UnityEngine.Rendering.ShaderKeywordSet:IsEnabled(keyword) end
---@param keyword UnityEngine.Rendering.ShaderKeyword
function UnityEngine.Rendering.ShaderKeywordSet:Enable(keyword) end
---@param keyword UnityEngine.Rendering.ShaderKeyword
function UnityEngine.Rendering.ShaderKeywordSet:Disable(keyword) end
---@return UnityEngine.Rendering.ShaderKeyword[]
function UnityEngine.Rendering.ShaderKeywordSet:GetShaderKeywords() end

---@class UnityEngine.Rendering.ShaderPropertyType
---@field Color UnityEngine.Rendering.ShaderPropertyType
---@field Vector UnityEngine.Rendering.ShaderPropertyType
---@field Float UnityEngine.Rendering.ShaderPropertyType
---@field Range UnityEngine.Rendering.ShaderPropertyType
---@field Texture UnityEngine.Rendering.ShaderPropertyType
---@field Int UnityEngine.Rendering.ShaderPropertyType
UnityEngine.Rendering.ShaderPropertyType = {}
---@alias CS.UnityEngine.Rendering.ShaderPropertyType UnityEngine.Rendering.ShaderPropertyType
CS.UnityEngine.Rendering.ShaderPropertyType = UnityEngine.Rendering.ShaderPropertyType


---@class UnityEngine.Rendering.ShaderPropertyFlags
---@field None UnityEngine.Rendering.ShaderPropertyFlags
---@field HideInInspector UnityEngine.Rendering.ShaderPropertyFlags
---@field PerRendererData UnityEngine.Rendering.ShaderPropertyFlags
---@field NoScaleOffset UnityEngine.Rendering.ShaderPropertyFlags
---@field Normal UnityEngine.Rendering.ShaderPropertyFlags
---@field HDR UnityEngine.Rendering.ShaderPropertyFlags
---@field Gamma UnityEngine.Rendering.ShaderPropertyFlags
---@field NonModifiableTextureData UnityEngine.Rendering.ShaderPropertyFlags
---@field MainTexture UnityEngine.Rendering.ShaderPropertyFlags
---@field MainColor UnityEngine.Rendering.ShaderPropertyFlags
UnityEngine.Rendering.ShaderPropertyFlags = {}
---@alias CS.UnityEngine.Rendering.ShaderPropertyFlags UnityEngine.Rendering.ShaderPropertyFlags
CS.UnityEngine.Rendering.ShaderPropertyFlags = UnityEngine.Rendering.ShaderPropertyFlags


---@class UnityEngine.Rendering.SortingGroup : UnityEngine.Behaviour
---@field sortingLayerName string
---@field sortingLayerID number
---@field sortingOrder number
---@field sortAtRoot boolean
UnityEngine.Rendering.SortingGroup = {}
---@alias CS.UnityEngine.Rendering.SortingGroup UnityEngine.Rendering.SortingGroup
CS.UnityEngine.Rendering.SortingGroup = UnityEngine.Rendering.SortingGroup

---@return UnityEngine.Rendering.SortingGroup
function UnityEngine.Rendering.SortingGroup.New() end
function UnityEngine.Rendering.SortingGroup.UpdateAllSortingGroups() end

---@class UnityEngine.Rendering.RendererUtils.RendererListDesc : System.ValueType
---@field sortingCriteria UnityEngine.Rendering.SortingCriteria
---@field rendererConfiguration UnityEngine.Rendering.PerObjectData
---@field renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@field stateBlock System.Nullable
---@field overrideShader UnityEngine.Shader
---@field overrideMaterial UnityEngine.Material
---@field excludeObjectMotionVectors boolean
---@field layerMask number
---@field renderingLayerMask number
---@field overrideMaterialPassIndex number
---@field overrideShaderPassIndex number
UnityEngine.Rendering.RendererUtils.RendererListDesc = {}
---@alias CS.UnityEngine.Rendering.RendererUtils.RendererListDesc UnityEngine.Rendering.RendererUtils.RendererListDesc
CS.UnityEngine.Rendering.RendererUtils.RendererListDesc = UnityEngine.Rendering.RendererUtils.RendererListDesc

---@overload fun(passName: UnityEngine.Rendering.ShaderTagId, cullingResult: UnityEngine.Rendering.CullingResults, camera: UnityEngine.Camera) : UnityEngine.Rendering.RendererUtils.RendererListDesc
---@param passNames UnityEngine.Rendering.ShaderTagId[]
---@param cullingResult UnityEngine.Rendering.CullingResults
---@param camera UnityEngine.Camera
---@return UnityEngine.Rendering.RendererUtils.RendererListDesc
function UnityEngine.Rendering.RendererUtils.RendererListDesc.New(passNames, cullingResult, camera) end
---@param ref_desc UnityEngine.Rendering.RendererUtils.RendererListDesc
---@return UnityEngine.Rendering.RendererListParams,UnityEngine.Rendering.RendererUtils.RendererListDesc
function UnityEngine.Rendering.RendererUtils.RendererListDesc.ConvertToParameters(ref_desc) end
---@return boolean
function UnityEngine.Rendering.RendererUtils.RendererListDesc:IsValid() end

---@class UnityEngine.IO.ThreadIORestrictionMode
---@field Allowed UnityEngine.IO.ThreadIORestrictionMode
---@field TreatAsError UnityEngine.IO.ThreadIORestrictionMode
UnityEngine.IO.ThreadIORestrictionMode = {}
---@alias CS.UnityEngine.IO.ThreadIORestrictionMode UnityEngine.IO.ThreadIORestrictionMode
CS.UnityEngine.IO.ThreadIORestrictionMode = UnityEngine.IO.ThreadIORestrictionMode


---@class UnityEngine.IO.File : System.Object
UnityEngine.IO.File = {}
---@alias CS.UnityEngine.IO.File UnityEngine.IO.File
CS.UnityEngine.IO.File = UnityEngine.IO.File


---@class UnityEngine.Playables.FrameData : System.ValueType
---@field frameId number
---@field deltaTime number
---@field weight number
---@field effectiveWeight number
---@field effectiveParentSpeed number
---@field effectiveSpeed number
---@field evaluationType UnityEngine.Playables.FrameData.EvaluationType
---@field seekOccurred boolean
---@field timeLooped boolean
---@field timeHeld boolean
---@field output UnityEngine.Playables.PlayableOutput
---@field effectivePlayState UnityEngine.Playables.PlayState
UnityEngine.Playables.FrameData = {}
---@alias CS.UnityEngine.Playables.FrameData UnityEngine.Playables.FrameData
CS.UnityEngine.Playables.FrameData = UnityEngine.Playables.FrameData


---@class UnityEngine.Playables.FrameData.Flags
---@field Evaluate UnityEngine.Playables.FrameData.Flags
---@field SeekOccured UnityEngine.Playables.FrameData.Flags
---@field Loop UnityEngine.Playables.FrameData.Flags
---@field Hold UnityEngine.Playables.FrameData.Flags
---@field EffectivePlayStateDelayed UnityEngine.Playables.FrameData.Flags
---@field EffectivePlayStatePlaying UnityEngine.Playables.FrameData.Flags
UnityEngine.Playables.FrameData.Flags = {}
---@alias CS.UnityEngine.Playables.FrameData.Flags UnityEngine.Playables.FrameData.Flags
CS.UnityEngine.Playables.FrameData.Flags = UnityEngine.Playables.FrameData.Flags


---@class UnityEngine.Playables.FrameData.EvaluationType
---@field Evaluate UnityEngine.Playables.FrameData.EvaluationType
---@field Playback UnityEngine.Playables.FrameData.EvaluationType
UnityEngine.Playables.FrameData.EvaluationType = {}
---@alias CS.UnityEngine.Playables.FrameData.EvaluationType UnityEngine.Playables.FrameData.EvaluationType
CS.UnityEngine.Playables.FrameData.EvaluationType = UnityEngine.Playables.FrameData.EvaluationType


---@class UnityEngine.Playables.FrameRate : System.ValueType
---@field k_24Fps UnityEngine.Playables.FrameRate
---@field k_23_976Fps UnityEngine.Playables.FrameRate
---@field k_25Fps UnityEngine.Playables.FrameRate
---@field k_30Fps UnityEngine.Playables.FrameRate
---@field k_29_97Fps UnityEngine.Playables.FrameRate
---@field k_50Fps UnityEngine.Playables.FrameRate
---@field k_60Fps UnityEngine.Playables.FrameRate
---@field k_59_94Fps UnityEngine.Playables.FrameRate
---@field dropFrame boolean
---@field rate number
UnityEngine.Playables.FrameRate = {}
---@alias CS.UnityEngine.Playables.FrameRate UnityEngine.Playables.FrameRate
CS.UnityEngine.Playables.FrameRate = UnityEngine.Playables.FrameRate

---@param frameRate number
---@param drop boolean
---@return UnityEngine.Playables.FrameRate
function UnityEngine.Playables.FrameRate.New(frameRate, drop) end
---@return boolean
function UnityEngine.Playables.FrameRate:IsValid() end
---@overload fun(self: UnityEngine.Playables.FrameRate, other: UnityEngine.Playables.FrameRate) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.Playables.FrameRate:Equals(obj) end
---@return number
function UnityEngine.Playables.FrameRate:GetHashCode() end
---@overload fun() : string
---@overload fun(self: UnityEngine.Playables.FrameRate, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Playables.FrameRate:ToString(format, formatProvider) end

---@class UnityEngine.Playables.INotification
---@field id UnityEngine.PropertyName
UnityEngine.Playables.INotification = {}
---@alias CS.UnityEngine.Playables.INotification UnityEngine.Playables.INotification
CS.UnityEngine.Playables.INotification = UnityEngine.Playables.INotification


---@class UnityEngine.Playables.INotificationReceiver
UnityEngine.Playables.INotificationReceiver = {}
---@alias CS.UnityEngine.Playables.INotificationReceiver UnityEngine.Playables.INotificationReceiver
CS.UnityEngine.Playables.INotificationReceiver = UnityEngine.Playables.INotificationReceiver

---@param origin UnityEngine.Playables.Playable
---@param notification UnityEngine.Playables.INotification
---@param context System.Object
function UnityEngine.Playables.INotificationReceiver:OnNotify(origin, notification, context) end

---@class UnityEngine.Playables.IPlayable
UnityEngine.Playables.IPlayable = {}
---@alias CS.UnityEngine.Playables.IPlayable UnityEngine.Playables.IPlayable
CS.UnityEngine.Playables.IPlayable = UnityEngine.Playables.IPlayable

---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Playables.IPlayable:GetHandle() end

---@class UnityEngine.Playables.IPlayableBehaviour
UnityEngine.Playables.IPlayableBehaviour = {}
---@alias CS.UnityEngine.Playables.IPlayableBehaviour UnityEngine.Playables.IPlayableBehaviour
CS.UnityEngine.Playables.IPlayableBehaviour = UnityEngine.Playables.IPlayableBehaviour

---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.IPlayableBehaviour:OnGraphStart(playable) end
---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.IPlayableBehaviour:OnGraphStop(playable) end
---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.IPlayableBehaviour:OnPlayableCreate(playable) end
---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.IPlayableBehaviour:OnPlayableDestroy(playable) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function UnityEngine.Playables.IPlayableBehaviour:OnBehaviourPlay(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function UnityEngine.Playables.IPlayableBehaviour:OnBehaviourPause(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function UnityEngine.Playables.IPlayableBehaviour:PrepareFrame(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData System.Object
function UnityEngine.Playables.IPlayableBehaviour:ProcessFrame(playable, info, playerData) end

---@class UnityEngine.Playables.IPlayableOutput
UnityEngine.Playables.IPlayableOutput = {}
---@alias CS.UnityEngine.Playables.IPlayableOutput UnityEngine.Playables.IPlayableOutput
CS.UnityEngine.Playables.IPlayableOutput = UnityEngine.Playables.IPlayableOutput

---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Playables.IPlayableOutput:GetHandle() end

---@class UnityEngine.Playables.Notification : System.Object
---@field id UnityEngine.PropertyName
UnityEngine.Playables.Notification = {}
---@alias CS.UnityEngine.Playables.Notification UnityEngine.Playables.Notification
CS.UnityEngine.Playables.Notification = UnityEngine.Playables.Notification

---@param name string
---@return UnityEngine.Playables.Notification
function UnityEngine.Playables.Notification.New(name) end

---@class UnityEngine.Playables.DirectorWrapMode
---@field Hold UnityEngine.Playables.DirectorWrapMode
---@field Loop UnityEngine.Playables.DirectorWrapMode
---@field None UnityEngine.Playables.DirectorWrapMode
UnityEngine.Playables.DirectorWrapMode = {}
---@alias CS.UnityEngine.Playables.DirectorWrapMode UnityEngine.Playables.DirectorWrapMode
CS.UnityEngine.Playables.DirectorWrapMode = UnityEngine.Playables.DirectorWrapMode


---@class UnityEngine.Playables.Playable : System.ValueType
---@field Null UnityEngine.Playables.Playable
UnityEngine.Playables.Playable = {}
---@alias CS.UnityEngine.Playables.Playable UnityEngine.Playables.Playable
CS.UnityEngine.Playables.Playable = UnityEngine.Playables.Playable

---@param graph UnityEngine.Playables.PlayableGraph
---@param inputCount number
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.Playable.Create(graph, inputCount) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Playables.Playable:GetHandle() end
---@return System.Type
function UnityEngine.Playables.Playable:GetPlayableType() end
---@param other UnityEngine.Playables.Playable
---@return boolean
function UnityEngine.Playables.Playable:Equals(other) end

---@class UnityEngine.Playables.IPlayableAsset
---@field duration number
---@field outputs System.Collections.Generic.IEnumerable
UnityEngine.Playables.IPlayableAsset = {}
---@alias CS.UnityEngine.Playables.IPlayableAsset UnityEngine.Playables.IPlayableAsset
CS.UnityEngine.Playables.IPlayableAsset = UnityEngine.Playables.IPlayableAsset

---@param graph UnityEngine.Playables.PlayableGraph
---@param owner UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.IPlayableAsset:CreatePlayable(graph, owner) end

---@class UnityEngine.Playables.PlayableAsset : UnityEngine.ScriptableObject
---@field duration number
---@field outputs System.Collections.Generic.IEnumerable
UnityEngine.Playables.PlayableAsset = {}
---@alias CS.UnityEngine.Playables.PlayableAsset UnityEngine.Playables.PlayableAsset
CS.UnityEngine.Playables.PlayableAsset = UnityEngine.Playables.PlayableAsset

---@param graph UnityEngine.Playables.PlayableGraph
---@param owner UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableAsset:CreatePlayable(graph, owner) end

---@class UnityEngine.Playables.PlayableBehaviour : System.Object
UnityEngine.Playables.PlayableBehaviour = {}
---@alias CS.UnityEngine.Playables.PlayableBehaviour UnityEngine.Playables.PlayableBehaviour
CS.UnityEngine.Playables.PlayableBehaviour = UnityEngine.Playables.PlayableBehaviour

---@return UnityEngine.Playables.PlayableBehaviour
function UnityEngine.Playables.PlayableBehaviour.New() end
---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableBehaviour:OnGraphStart(playable) end
---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableBehaviour:OnGraphStop(playable) end
---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableBehaviour:OnPlayableCreate(playable) end
---@param playable UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableBehaviour:OnPlayableDestroy(playable) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function UnityEngine.Playables.PlayableBehaviour:OnBehaviourPlay(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function UnityEngine.Playables.PlayableBehaviour:OnBehaviourPause(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function UnityEngine.Playables.PlayableBehaviour:PrepareData(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function UnityEngine.Playables.PlayableBehaviour:PrepareFrame(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData System.Object
function UnityEngine.Playables.PlayableBehaviour:ProcessFrame(playable, info, playerData) end
---@return System.Object
function UnityEngine.Playables.PlayableBehaviour:Clone() end

---@class UnityEngine.Playables.DataStreamType
---@field Animation UnityEngine.Playables.DataStreamType
---@field Audio UnityEngine.Playables.DataStreamType
---@field Texture UnityEngine.Playables.DataStreamType
---@field None UnityEngine.Playables.DataStreamType
UnityEngine.Playables.DataStreamType = {}
---@alias CS.UnityEngine.Playables.DataStreamType UnityEngine.Playables.DataStreamType
CS.UnityEngine.Playables.DataStreamType = UnityEngine.Playables.DataStreamType


---@class UnityEngine.Playables.PlayableBinding : System.ValueType
---@field None UnityEngine.Playables.PlayableBinding[]
---@field DefaultDuration number
---@field streamName string
---@field sourceObject UnityEngine.Object
---@field outputTargetType System.Type
UnityEngine.Playables.PlayableBinding = {}
---@alias CS.UnityEngine.Playables.PlayableBinding UnityEngine.Playables.PlayableBinding
CS.UnityEngine.Playables.PlayableBinding = UnityEngine.Playables.PlayableBinding


---@class UnityEngine.Playables.PlayableBinding.CreateOutputMethod : System.MulticastDelegate
UnityEngine.Playables.PlayableBinding.CreateOutputMethod = {}
---@alias CS.UnityEngine.Playables.PlayableBinding.CreateOutputMethod UnityEngine.Playables.PlayableBinding.CreateOutputMethod
CS.UnityEngine.Playables.PlayableBinding.CreateOutputMethod = UnityEngine.Playables.PlayableBinding.CreateOutputMethod

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Playables.PlayableBinding.CreateOutputMethod
function UnityEngine.Playables.PlayableBinding.CreateOutputMethod.New(object, method) end
---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Playables.PlayableBinding.CreateOutputMethod:Invoke(graph, name) end
---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Playables.PlayableBinding.CreateOutputMethod:BeginInvoke(graph, name, callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Playables.PlayableBinding.CreateOutputMethod:EndInvoke(result) end

---@class UnityEngine.Playables.PlayableTraversalMode
---@field Mix UnityEngine.Playables.PlayableTraversalMode
---@field Passthrough UnityEngine.Playables.PlayableTraversalMode
UnityEngine.Playables.PlayableTraversalMode = {}
---@alias CS.UnityEngine.Playables.PlayableTraversalMode UnityEngine.Playables.PlayableTraversalMode
CS.UnityEngine.Playables.PlayableTraversalMode = UnityEngine.Playables.PlayableTraversalMode


---@class UnityEngine.Playables.PlayableExtensions : System.Object
UnityEngine.Playables.PlayableExtensions = {}
---@alias CS.UnityEngine.Playables.PlayableExtensions UnityEngine.Playables.PlayableExtensions
CS.UnityEngine.Playables.PlayableExtensions = UnityEngine.Playables.PlayableExtensions


---@class UnityEngine.Playables.DirectorUpdateMode
---@field DSPClock UnityEngine.Playables.DirectorUpdateMode
---@field GameTime UnityEngine.Playables.DirectorUpdateMode
---@field UnscaledGameTime UnityEngine.Playables.DirectorUpdateMode
---@field Manual UnityEngine.Playables.DirectorUpdateMode
UnityEngine.Playables.DirectorUpdateMode = {}
---@alias CS.UnityEngine.Playables.DirectorUpdateMode UnityEngine.Playables.DirectorUpdateMode
CS.UnityEngine.Playables.DirectorUpdateMode = UnityEngine.Playables.DirectorUpdateMode


---@class UnityEngine.Playables.PlayableGraph : System.ValueType
UnityEngine.Playables.PlayableGraph = {}
---@alias CS.UnityEngine.Playables.PlayableGraph UnityEngine.Playables.PlayableGraph
CS.UnityEngine.Playables.PlayableGraph = UnityEngine.Playables.PlayableGraph

---@overload fun() : UnityEngine.Playables.PlayableGraph
---@param name string
---@return UnityEngine.Playables.PlayableGraph
function UnityEngine.Playables.PlayableGraph.Create(name) end
---@param index number
---@return UnityEngine.Playables.Playable
function UnityEngine.Playables.PlayableGraph:GetRootPlayable(index) end
---@param index number
---@return UnityEngine.Playables.PlayableOutput
function UnityEngine.Playables.PlayableGraph:GetOutput(index) end
---@overload fun()
---@param deltaTime number
function UnityEngine.Playables.PlayableGraph:Evaluate(deltaTime) end
function UnityEngine.Playables.PlayableGraph:Destroy() end
---@return boolean
function UnityEngine.Playables.PlayableGraph:IsValid() end
---@return boolean
function UnityEngine.Playables.PlayableGraph:IsPlaying() end
---@return boolean
function UnityEngine.Playables.PlayableGraph:IsDone() end
function UnityEngine.Playables.PlayableGraph:Play() end
function UnityEngine.Playables.PlayableGraph:Stop() end
---@return UnityEngine.Playables.DirectorUpdateMode
function UnityEngine.Playables.PlayableGraph:GetTimeUpdateMode() end
---@param value UnityEngine.Playables.DirectorUpdateMode
function UnityEngine.Playables.PlayableGraph:SetTimeUpdateMode(value) end
---@return UnityEngine.IExposedPropertyTable
function UnityEngine.Playables.PlayableGraph:GetResolver() end
---@param value UnityEngine.IExposedPropertyTable
function UnityEngine.Playables.PlayableGraph:SetResolver(value) end
---@return number
function UnityEngine.Playables.PlayableGraph:GetPlayableCount() end
---@return number
function UnityEngine.Playables.PlayableGraph:GetRootPlayableCount() end
---@return number
function UnityEngine.Playables.PlayableGraph:GetOutputCount() end
---@return string
function UnityEngine.Playables.PlayableGraph:GetEditorName() end

---@class UnityEngine.Playables.PlayState
---@field Paused UnityEngine.Playables.PlayState
---@field Playing UnityEngine.Playables.PlayState
UnityEngine.Playables.PlayState = {}
---@alias CS.UnityEngine.Playables.PlayState UnityEngine.Playables.PlayState
CS.UnityEngine.Playables.PlayState = UnityEngine.Playables.PlayState


---@class UnityEngine.Playables.PlayableHandle : System.ValueType
---@field Null UnityEngine.Playables.PlayableHandle
UnityEngine.Playables.PlayableHandle = {}
---@alias CS.UnityEngine.Playables.PlayableHandle UnityEngine.Playables.PlayableHandle
CS.UnityEngine.Playables.PlayableHandle = UnityEngine.Playables.PlayableHandle

---@overload fun(self: UnityEngine.Playables.PlayableHandle, p: System.Object) : boolean
---@param other UnityEngine.Playables.PlayableHandle
---@return boolean
function UnityEngine.Playables.PlayableHandle:Equals(other) end
---@return number
function UnityEngine.Playables.PlayableHandle:GetHashCode() end

---@class UnityEngine.Playables.PlayableOutput : System.ValueType
---@field Null UnityEngine.Playables.PlayableOutput
UnityEngine.Playables.PlayableOutput = {}
---@alias CS.UnityEngine.Playables.PlayableOutput UnityEngine.Playables.PlayableOutput
CS.UnityEngine.Playables.PlayableOutput = UnityEngine.Playables.PlayableOutput

---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Playables.PlayableOutput:GetHandle() end
---@return System.Type
function UnityEngine.Playables.PlayableOutput:GetPlayableOutputType() end
---@param other UnityEngine.Playables.PlayableOutput
---@return boolean
function UnityEngine.Playables.PlayableOutput:Equals(other) end

---@class UnityEngine.Playables.PlayableOutputExtensions : System.Object
UnityEngine.Playables.PlayableOutputExtensions = {}
---@alias CS.UnityEngine.Playables.PlayableOutputExtensions UnityEngine.Playables.PlayableOutputExtensions
CS.UnityEngine.Playables.PlayableOutputExtensions = UnityEngine.Playables.PlayableOutputExtensions


---@class UnityEngine.Playables.PlayableOutputHandle : System.ValueType
---@field Null UnityEngine.Playables.PlayableOutputHandle
UnityEngine.Playables.PlayableOutputHandle = {}
---@alias CS.UnityEngine.Playables.PlayableOutputHandle UnityEngine.Playables.PlayableOutputHandle
CS.UnityEngine.Playables.PlayableOutputHandle = UnityEngine.Playables.PlayableOutputHandle

---@return number
function UnityEngine.Playables.PlayableOutputHandle:GetHashCode() end
---@overload fun(self: UnityEngine.Playables.PlayableOutputHandle, p: System.Object) : boolean
---@param other UnityEngine.Playables.PlayableOutputHandle
---@return boolean
function UnityEngine.Playables.PlayableOutputHandle:Equals(other) end

---@class UnityEngine.Playables.ScriptPlayable : System.ValueType
---@field Null UnityEngine.Playables.ScriptPlayable
UnityEngine.Playables.ScriptPlayable = {}
---@alias CS.UnityEngine.Playables.ScriptPlayable UnityEngine.Playables.ScriptPlayable
CS.UnityEngine.Playables.ScriptPlayable = UnityEngine.Playables.ScriptPlayable

---@overload fun(graph: UnityEngine.Playables.PlayableGraph, inputCount: number) : UnityEngine.Playables.ScriptPlayable
---@param graph UnityEngine.Playables.PlayableGraph
---@param template T
---@param inputCount number
---@return UnityEngine.Playables.ScriptPlayable
function UnityEngine.Playables.ScriptPlayable.Create(graph, template, inputCount) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Playables.ScriptPlayable:GetHandle() end
---@return T
function UnityEngine.Playables.ScriptPlayable:GetBehaviour() end
---@param other UnityEngine.Playables.ScriptPlayable
---@return boolean
function UnityEngine.Playables.ScriptPlayable:Equals(other) end

---@class UnityEngine.Playables.ScriptPlayableBinding : System.Object
UnityEngine.Playables.ScriptPlayableBinding = {}
---@alias CS.UnityEngine.Playables.ScriptPlayableBinding UnityEngine.Playables.ScriptPlayableBinding
CS.UnityEngine.Playables.ScriptPlayableBinding = UnityEngine.Playables.ScriptPlayableBinding

---@param name string
---@param key UnityEngine.Object
---@param type System.Type
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Playables.ScriptPlayableBinding.Create(name, key, type) end

---@class UnityEngine.Playables.ScriptPlayableOutput : System.ValueType
---@field Null UnityEngine.Playables.ScriptPlayableOutput
UnityEngine.Playables.ScriptPlayableOutput = {}
---@alias CS.UnityEngine.Playables.ScriptPlayableOutput UnityEngine.Playables.ScriptPlayableOutput
CS.UnityEngine.Playables.ScriptPlayableOutput = UnityEngine.Playables.ScriptPlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@return UnityEngine.Playables.ScriptPlayableOutput
function UnityEngine.Playables.ScriptPlayableOutput.Create(graph, name) end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Playables.ScriptPlayableOutput:GetHandle() end

---@class UnityEngine.Diagnostics.ForcedCrashCategory
---@field AccessViolation UnityEngine.Diagnostics.ForcedCrashCategory
---@field FatalError UnityEngine.Diagnostics.ForcedCrashCategory
---@field Abort UnityEngine.Diagnostics.ForcedCrashCategory
---@field PureVirtualFunction UnityEngine.Diagnostics.ForcedCrashCategory
---@field MonoAbort UnityEngine.Diagnostics.ForcedCrashCategory
UnityEngine.Diagnostics.ForcedCrashCategory = {}
---@alias CS.UnityEngine.Diagnostics.ForcedCrashCategory UnityEngine.Diagnostics.ForcedCrashCategory
CS.UnityEngine.Diagnostics.ForcedCrashCategory = UnityEngine.Diagnostics.ForcedCrashCategory


---@class UnityEngine.Diagnostics.Utils : System.Object
UnityEngine.Diagnostics.Utils = {}
---@alias CS.UnityEngine.Diagnostics.Utils UnityEngine.Diagnostics.Utils
CS.UnityEngine.Diagnostics.Utils = UnityEngine.Diagnostics.Utils

---@param crashCategory UnityEngine.Diagnostics.ForcedCrashCategory
function UnityEngine.Diagnostics.Utils.ForceCrash(crashCategory) end
---@param message string
function UnityEngine.Diagnostics.Utils.NativeAssert(message) end
---@param message string
function UnityEngine.Diagnostics.Utils.NativeError(message) end
---@param message string
function UnityEngine.Diagnostics.Utils.NativeWarning(message) end
function UnityEngine.Diagnostics.Utils.ValidateHeap() end

---@class UnityEngine.Diagnostics.PlayerConnection : System.Object
UnityEngine.Diagnostics.PlayerConnection = {}
---@alias CS.UnityEngine.Diagnostics.PlayerConnection UnityEngine.Diagnostics.PlayerConnection
CS.UnityEngine.Diagnostics.PlayerConnection = UnityEngine.Diagnostics.PlayerConnection


---@class UnityEngine.Device.Application : System.Object
---@field absoluteURL string
---@field backgroundLoadingPriority UnityEngine.ThreadPriority
---@field buildGUID string
---@field cloudProjectId string
---@field companyName string
---@field consoleLogPath string
---@field dataPath string
---@field genuine boolean
---@field genuineCheckAvailable boolean
---@field identifier string
---@field installerName string
---@field installMode UnityEngine.ApplicationInstallMode
---@field internetReachability UnityEngine.NetworkReachability
---@field isBatchMode boolean
---@field isConsolePlatform boolean
---@field isEditor boolean
---@field isFocused boolean
---@field isMobilePlatform boolean
---@field isPlaying boolean
---@field persistentDataPath string
---@field platform UnityEngine.RuntimePlatform
---@field productName string
---@field runInBackground boolean
---@field sandboxType UnityEngine.ApplicationSandboxType
---@field streamingAssetsPath string
---@field systemLanguage UnityEngine.SystemLanguage
---@field targetFrameRate number
---@field temporaryCachePath string
---@field unityVersion string
---@field version string
---@field exitCancellationToken System.Threading.CancellationToken
UnityEngine.Device.Application = {}
---@alias CS.UnityEngine.Device.Application UnityEngine.Device.Application
CS.UnityEngine.Device.Application = UnityEngine.Device.Application

---@overload fun(levelIndex: number) : boolean
---@param levelName string
---@return boolean
function UnityEngine.Device.Application.CanStreamedLevelBeLoaded(levelName) end
---@param logType UnityEngine.LogType
---@return UnityEngine.StackTraceLogType
function UnityEngine.Device.Application.GetStackTraceLogType(logType) end
---@return boolean
function UnityEngine.Device.Application.HasProLicense() end
---@param mode UnityEngine.UserAuthorization
---@return boolean
function UnityEngine.Device.Application.HasUserAuthorization(mode) end
---@param obj UnityEngine.Object
---@return boolean
function UnityEngine.Device.Application.IsPlaying(obj) end
---@param url string
function UnityEngine.Device.Application.OpenURL(url) end
---@overload fun()
---@param exitCode number
function UnityEngine.Device.Application.Quit(exitCode) end
---@param delegateMethod UnityEngine.Application.AdvertisingIdentifierCallback
---@return boolean
function UnityEngine.Device.Application.RequestAdvertisingIdentifierAsync(delegateMethod) end
---@param mode UnityEngine.UserAuthorization
---@return UnityEngine.AsyncOperation
function UnityEngine.Device.Application.RequestUserAuthorization(mode) end
---@param logType UnityEngine.LogType
---@param stackTraceType UnityEngine.StackTraceLogType
function UnityEngine.Device.Application.SetStackTraceLogType(logType, stackTraceType) end
function UnityEngine.Device.Application.Unload() end

---@class UnityEngine.Device.Screen : System.Object
---@field autorotateToLandscapeLeft boolean
---@field autorotateToLandscapeRight boolean
---@field autorotateToPortrait boolean
---@field autorotateToPortraitUpsideDown boolean
---@field currentResolution UnityEngine.Resolution
---@field cutouts UnityEngine.Rect[]
---@field dpi number
---@field fullScreen boolean
---@field fullScreenMode UnityEngine.FullScreenMode
---@field height number
---@field width number
---@field orientation UnityEngine.ScreenOrientation
---@field resolutions UnityEngine.Resolution[]
---@field safeArea UnityEngine.Rect
---@field sleepTimeout number
---@field brightness number
---@field mainWindowPosition UnityEngine.Vector2Int
---@field mainWindowDisplayInfo UnityEngine.DisplayInfo
UnityEngine.Device.Screen = {}
---@alias CS.UnityEngine.Device.Screen UnityEngine.Device.Screen
CS.UnityEngine.Device.Screen = UnityEngine.Device.Screen

---@overload fun(width: number, height: number, fullscreenMode: UnityEngine.FullScreenMode, preferredRefreshRate: UnityEngine.RefreshRate)
---@overload fun(width: number, height: number, fullscreenMode: UnityEngine.FullScreenMode)
---@param width number
---@param height number
---@param fullscreen boolean
function UnityEngine.Device.Screen.SetResolution(width, height, fullscreen) end
---@param displayLayout System.Collections.Generic.List
function UnityEngine.Device.Screen.GetDisplayLayout(displayLayout) end
---@param ref_display UnityEngine.DisplayInfo
---@param position UnityEngine.Vector2Int
---@return UnityEngine.AsyncOperation,UnityEngine.DisplayInfo
function UnityEngine.Device.Screen.MoveMainWindowTo(ref_display, position) end

---@class UnityEngine.Device.SystemInfo : System.Object
---@field unsupportedIdentifier string
---@field batteryLevel number
---@field batteryStatus UnityEngine.BatteryStatus
---@field operatingSystem string
---@field operatingSystemFamily UnityEngine.OperatingSystemFamily
---@field processorType string
---@field processorFrequency number
---@field processorCount number
---@field systemMemorySize number
---@field deviceUniqueIdentifier string
---@field deviceName string
---@field deviceModel string
---@field supportsAccelerometer boolean
---@field supportsGyroscope boolean
---@field supportsLocationService boolean
---@field supportsVibration boolean
---@field supportsAudio boolean
---@field deviceType UnityEngine.DeviceType
---@field graphicsMemorySize number
---@field graphicsDeviceName string
---@field graphicsDeviceVendor string
---@field graphicsDeviceID number
---@field graphicsDeviceVendorID number
---@field graphicsDeviceType UnityEngine.Rendering.GraphicsDeviceType
---@field graphicsUVStartsAtTop boolean
---@field graphicsDeviceVersion string
---@field graphicsShaderLevel number
---@field graphicsMultiThreaded boolean
---@field renderingThreadingMode UnityEngine.Rendering.RenderingThreadingMode
---@field foveatedRenderingCaps UnityEngine.Rendering.FoveatedRenderingCaps
---@field hasHiddenSurfaceRemovalOnGPU boolean
---@field hasDynamicUniformArrayIndexingInFragmentShaders boolean
---@field supportsShadows boolean
---@field supportsRawShadowDepthSampling boolean
---@field supportsMotionVectors boolean
---@field supports3DTextures boolean
---@field supportsCompressed3DTextures boolean
---@field supports2DArrayTextures boolean
---@field supports3DRenderTextures boolean
---@field supportsCubemapArrayTextures boolean
---@field supportsAnisotropicFilter boolean
---@field copyTextureSupport UnityEngine.Rendering.CopyTextureSupport
---@field supportsComputeShaders boolean
---@field supportsGeometryShaders boolean
---@field supportsTessellationShaders boolean
---@field supportsRenderTargetArrayIndexFromVertexShader boolean
---@field supportsInstancing boolean
---@field supportsHardwareQuadTopology boolean
---@field supports32bitsIndexBuffer boolean
---@field supportsSparseTextures boolean
---@field supportedRenderTargetCount number
---@field supportsSeparatedRenderTargetsBlend boolean
---@field supportedRandomWriteTargetCount number
---@field supportsMultisampledTextures number
---@field supportsMultisampled2DArrayTextures boolean
---@field supportsMultisampleAutoResolve boolean
---@field supportsTextureWrapMirrorOnce number
---@field usesReversedZBuffer boolean
---@field npotSupport UnityEngine.NPOTSupport
---@field maxTextureSize number
---@field maxTexture3DSize number
---@field maxTextureArraySlices number
---@field maxCubemapSize number
---@field maxAnisotropyLevel number
---@field maxComputeBufferInputsVertex number
---@field maxComputeBufferInputsFragment number
---@field maxComputeBufferInputsGeometry number
---@field maxComputeBufferInputsDomain number
---@field maxComputeBufferInputsHull number
---@field maxComputeBufferInputsCompute number
---@field maxComputeWorkGroupSize number
---@field maxComputeWorkGroupSizeX number
---@field maxComputeWorkGroupSizeY number
---@field maxComputeWorkGroupSizeZ number
---@field computeSubGroupSize number
---@field supportsAsyncCompute boolean
---@field supportsGpuRecorder boolean
---@field supportsGraphicsFence boolean
---@field supportsAsyncGPUReadback boolean
---@field supportsRayTracing boolean
---@field supportsSetConstantBuffer boolean
---@field constantBufferOffsetAlignment number
---@field maxConstantBufferSize number
---@field maxGraphicsBufferSize number
---@field hasMipMaxLevel boolean
---@field supportsMipStreaming boolean
---@field usesLoadStoreActions boolean
---@field hdrDisplaySupportFlags UnityEngine.HDRDisplaySupportFlags
---@field supportsConservativeRaster boolean
---@field supportsMultiview boolean
---@field supportsStoreAndResolveAction boolean
---@field supportsMultisampleResolveDepth boolean
---@field supportsMultisampleResolveStencil boolean
---@field supportsIndirectArgumentsBuffer boolean
UnityEngine.Device.SystemInfo = {}
---@alias CS.UnityEngine.Device.SystemInfo UnityEngine.Device.SystemInfo
CS.UnityEngine.Device.SystemInfo = UnityEngine.Device.SystemInfo

---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.Device.SystemInfo.SupportsRenderTextureFormat(format) end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.Device.SystemInfo.SupportsBlendingOnRenderTextureFormat(format) end
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Device.SystemInfo.SupportsTextureFormat(format) end
---@param format UnityEngine.Rendering.VertexAttributeFormat
---@param dimension number
---@return boolean
function UnityEngine.Device.SystemInfo.SupportsVertexAttributeFormat(format, dimension) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return boolean
function UnityEngine.Device.SystemInfo.IsFormatSupported(format, usage) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Device.SystemInfo.GetCompatibleFormat(format, usage) end
---@param format UnityEngine.Experimental.Rendering.DefaultFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Device.SystemInfo.GetGraphicsFormat(format) end
---@param desc UnityEngine.RenderTextureDescriptor
---@return number
function UnityEngine.Device.SystemInfo.GetRenderTextureSupportedMSAASampleCount(desc) end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.Device.SystemInfo.SupportsRandomWriteOnRenderTextureFormat(format) end

---@class UnityEngine.TestTools.ExcludeFromCoverageAttribute : System.Attribute
UnityEngine.TestTools.ExcludeFromCoverageAttribute = {}
---@alias CS.UnityEngine.TestTools.ExcludeFromCoverageAttribute UnityEngine.TestTools.ExcludeFromCoverageAttribute
CS.UnityEngine.TestTools.ExcludeFromCoverageAttribute = UnityEngine.TestTools.ExcludeFromCoverageAttribute

---@return UnityEngine.TestTools.ExcludeFromCoverageAttribute
function UnityEngine.TestTools.ExcludeFromCoverageAttribute.New() end

---@class UnityEngine.TestTools.CoveredSequencePoint : System.ValueType
---@field method System.Reflection.MethodBase
---@field ilOffset number
---@field hitCount number
---@field filename string
---@field line number
---@field column number
UnityEngine.TestTools.CoveredSequencePoint = {}
---@alias CS.UnityEngine.TestTools.CoveredSequencePoint UnityEngine.TestTools.CoveredSequencePoint
CS.UnityEngine.TestTools.CoveredSequencePoint = UnityEngine.TestTools.CoveredSequencePoint


---@class UnityEngine.TestTools.CoveredMethodStats : System.ValueType
---@field method System.Reflection.MethodBase
---@field totalSequencePoints number
---@field uncoveredSequencePoints number
UnityEngine.TestTools.CoveredMethodStats = {}
---@alias CS.UnityEngine.TestTools.CoveredMethodStats UnityEngine.TestTools.CoveredMethodStats
CS.UnityEngine.TestTools.CoveredMethodStats = UnityEngine.TestTools.CoveredMethodStats

---@return string
function UnityEngine.TestTools.CoveredMethodStats:ToString() end

---@class UnityEngine.TestTools.Coverage : System.Object
---@field enabled boolean
UnityEngine.TestTools.Coverage = {}
---@alias CS.UnityEngine.TestTools.Coverage UnityEngine.TestTools.Coverage
CS.UnityEngine.TestTools.Coverage = UnityEngine.TestTools.Coverage

---@param method System.Reflection.MethodBase
---@return UnityEngine.TestTools.CoveredSequencePoint[]
function UnityEngine.TestTools.Coverage.GetSequencePointsFor(method) end
---@overload fun(method: System.Reflection.MethodBase) : UnityEngine.TestTools.CoveredMethodStats
---@overload fun(methods: System.Reflection.MethodBase[]) : UnityEngine.TestTools.CoveredMethodStats[]
---@param type System.Type
---@return UnityEngine.TestTools.CoveredMethodStats[]
function UnityEngine.TestTools.Coverage.GetStatsFor(type) end
---@return UnityEngine.TestTools.CoveredMethodStats[]
function UnityEngine.TestTools.Coverage.GetStatsForAllCoveredMethods() end
---@param method System.Reflection.MethodBase
function UnityEngine.TestTools.Coverage.ResetFor(method) end
function UnityEngine.TestTools.Coverage.ResetAll() end

---@class UnityEngine.Experimental.U2D.SpriteIntermediateRendererInfo : System.ValueType
---@field SpriteID number
---@field TextureID number
---@field MaterialID number
---@field Color UnityEngine.Color
---@field Transform UnityEngine.Matrix4x4
---@field Bounds UnityEngine.Bounds
---@field Layer number
---@field SortingLayer number
---@field SortingOrder number
---@field SceneCullingMask number
---@field IndexData System.IntPtr
---@field VertexData System.IntPtr
---@field IndexCount number
---@field VertexCount number
---@field ShaderChannelMask number
UnityEngine.Experimental.U2D.SpriteIntermediateRendererInfo = {}
---@alias CS.UnityEngine.Experimental.U2D.SpriteIntermediateRendererInfo UnityEngine.Experimental.U2D.SpriteIntermediateRendererInfo
CS.UnityEngine.Experimental.U2D.SpriteIntermediateRendererInfo = UnityEngine.Experimental.U2D.SpriteIntermediateRendererInfo


---@class UnityEngine.Experimental.U2D.SpriteRendererGroup : System.Object
UnityEngine.Experimental.U2D.SpriteRendererGroup = {}
---@alias CS.UnityEngine.Experimental.U2D.SpriteRendererGroup UnityEngine.Experimental.U2D.SpriteRendererGroup
CS.UnityEngine.Experimental.U2D.SpriteRendererGroup = UnityEngine.Experimental.U2D.SpriteRendererGroup

---@return UnityEngine.Experimental.U2D.SpriteRendererGroup
function UnityEngine.Experimental.U2D.SpriteRendererGroup.New() end
---@param renderers Unity.Collections.NativeArray
function UnityEngine.Experimental.U2D.SpriteRendererGroup.AddRenderers(renderers) end
function UnityEngine.Experimental.U2D.SpriteRendererGroup.Clear() end

---@class UnityEngine.Experimental.GlobalIllumination.LightType
---@field Directional UnityEngine.Experimental.GlobalIllumination.LightType
---@field Point UnityEngine.Experimental.GlobalIllumination.LightType
---@field Spot UnityEngine.Experimental.GlobalIllumination.LightType
---@field Rectangle UnityEngine.Experimental.GlobalIllumination.LightType
---@field Disc UnityEngine.Experimental.GlobalIllumination.LightType
---@field SpotPyramidShape UnityEngine.Experimental.GlobalIllumination.LightType
---@field SpotBoxShape UnityEngine.Experimental.GlobalIllumination.LightType
UnityEngine.Experimental.GlobalIllumination.LightType = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.LightType UnityEngine.Experimental.GlobalIllumination.LightType
CS.UnityEngine.Experimental.GlobalIllumination.LightType = UnityEngine.Experimental.GlobalIllumination.LightType


---@class UnityEngine.Experimental.GlobalIllumination.LightMode
---@field Realtime UnityEngine.Experimental.GlobalIllumination.LightMode
---@field Mixed UnityEngine.Experimental.GlobalIllumination.LightMode
---@field Baked UnityEngine.Experimental.GlobalIllumination.LightMode
---@field Unknown UnityEngine.Experimental.GlobalIllumination.LightMode
UnityEngine.Experimental.GlobalIllumination.LightMode = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.LightMode UnityEngine.Experimental.GlobalIllumination.LightMode
CS.UnityEngine.Experimental.GlobalIllumination.LightMode = UnityEngine.Experimental.GlobalIllumination.LightMode


---@class UnityEngine.Experimental.GlobalIllumination.FalloffType
---@field InverseSquared UnityEngine.Experimental.GlobalIllumination.FalloffType
---@field InverseSquaredNoRangeAttenuation UnityEngine.Experimental.GlobalIllumination.FalloffType
---@field Linear UnityEngine.Experimental.GlobalIllumination.FalloffType
---@field Legacy UnityEngine.Experimental.GlobalIllumination.FalloffType
---@field Undefined UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.FalloffType = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.FalloffType UnityEngine.Experimental.GlobalIllumination.FalloffType
CS.UnityEngine.Experimental.GlobalIllumination.FalloffType = UnityEngine.Experimental.GlobalIllumination.FalloffType


---@class UnityEngine.Experimental.GlobalIllumination.AngularFalloffType
---@field LUT UnityEngine.Experimental.GlobalIllumination.AngularFalloffType
---@field AnalyticAndInnerAngle UnityEngine.Experimental.GlobalIllumination.AngularFalloffType
UnityEngine.Experimental.GlobalIllumination.AngularFalloffType = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.AngularFalloffType UnityEngine.Experimental.GlobalIllumination.AngularFalloffType
CS.UnityEngine.Experimental.GlobalIllumination.AngularFalloffType = UnityEngine.Experimental.GlobalIllumination.AngularFalloffType


---@class UnityEngine.Experimental.GlobalIllumination.LinearColor : System.ValueType
---@field red number
---@field green number
---@field blue number
---@field intensity number
UnityEngine.Experimental.GlobalIllumination.LinearColor = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.LinearColor UnityEngine.Experimental.GlobalIllumination.LinearColor
CS.UnityEngine.Experimental.GlobalIllumination.LinearColor = UnityEngine.Experimental.GlobalIllumination.LinearColor

---@param color UnityEngine.Color
---@param intensity number
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function UnityEngine.Experimental.GlobalIllumination.LinearColor.Convert(color, intensity) end
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function UnityEngine.Experimental.GlobalIllumination.LinearColor.Black() end

---@class UnityEngine.Experimental.GlobalIllumination.DirectionalLight : System.ValueType
---@field instanceID number
---@field shadow boolean
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field position UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field penumbraWidthRadian number
UnityEngine.Experimental.GlobalIllumination.DirectionalLight = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.DirectionalLight UnityEngine.Experimental.GlobalIllumination.DirectionalLight
CS.UnityEngine.Experimental.GlobalIllumination.DirectionalLight = UnityEngine.Experimental.GlobalIllumination.DirectionalLight


---@class UnityEngine.Experimental.GlobalIllumination.PointLight : System.ValueType
---@field instanceID number
---@field shadow boolean
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field position UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field range number
---@field sphereRadius number
---@field falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.PointLight = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.PointLight UnityEngine.Experimental.GlobalIllumination.PointLight
CS.UnityEngine.Experimental.GlobalIllumination.PointLight = UnityEngine.Experimental.GlobalIllumination.PointLight


---@class UnityEngine.Experimental.GlobalIllumination.SpotLight : System.ValueType
---@field instanceID number
---@field shadow boolean
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field position UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field range number
---@field sphereRadius number
---@field coneAngle number
---@field innerConeAngle number
---@field falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
---@field angularFalloff UnityEngine.Experimental.GlobalIllumination.AngularFalloffType
UnityEngine.Experimental.GlobalIllumination.SpotLight = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.SpotLight UnityEngine.Experimental.GlobalIllumination.SpotLight
CS.UnityEngine.Experimental.GlobalIllumination.SpotLight = UnityEngine.Experimental.GlobalIllumination.SpotLight


---@class UnityEngine.Experimental.GlobalIllumination.RectangleLight : System.ValueType
---@field instanceID number
---@field shadow boolean
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field position UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field range number
---@field width number
---@field height number
---@field falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.RectangleLight = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.RectangleLight UnityEngine.Experimental.GlobalIllumination.RectangleLight
CS.UnityEngine.Experimental.GlobalIllumination.RectangleLight = UnityEngine.Experimental.GlobalIllumination.RectangleLight


---@class UnityEngine.Experimental.GlobalIllumination.DiscLight : System.ValueType
---@field instanceID number
---@field shadow boolean
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field position UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field range number
---@field radius number
---@field falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.DiscLight = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.DiscLight UnityEngine.Experimental.GlobalIllumination.DiscLight
CS.UnityEngine.Experimental.GlobalIllumination.DiscLight = UnityEngine.Experimental.GlobalIllumination.DiscLight


---@class UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape : System.ValueType
---@field instanceID number
---@field shadow boolean
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field position UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field range number
---@field width number
---@field height number
UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape
CS.UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape = UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape


---@class UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape : System.ValueType
---@field instanceID number
---@field shadow boolean
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field position UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field range number
---@field angle number
---@field aspectRatio number
---@field falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape
CS.UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape = UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape


---@class UnityEngine.Experimental.GlobalIllumination.Cookie : System.ValueType
---@field instanceID number
---@field scale number
---@field sizes UnityEngine.Vector2
UnityEngine.Experimental.GlobalIllumination.Cookie = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.Cookie UnityEngine.Experimental.GlobalIllumination.Cookie
CS.UnityEngine.Experimental.GlobalIllumination.Cookie = UnityEngine.Experimental.GlobalIllumination.Cookie

---@return UnityEngine.Experimental.GlobalIllumination.Cookie
function UnityEngine.Experimental.GlobalIllumination.Cookie.Defaults() end

---@class UnityEngine.Experimental.GlobalIllumination.LightDataGI : System.ValueType
---@field instanceID number
---@field cookieID number
---@field cookieScale number
---@field color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field orientation UnityEngine.Quaternion
---@field position UnityEngine.Vector3
---@field range number
---@field coneAngle number
---@field innerConeAngle number
---@field shape0 number
---@field shape1 number
---@field type UnityEngine.Experimental.GlobalIllumination.LightType
---@field mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field shadow number
---@field falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
UnityEngine.Experimental.GlobalIllumination.LightDataGI = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI UnityEngine.Experimental.GlobalIllumination.LightDataGI
CS.UnityEngine.Experimental.GlobalIllumination.LightDataGI = UnityEngine.Experimental.GlobalIllumination.LightDataGI

---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.DirectionalLight, ref_cookie: UnityEngine.Experimental.GlobalIllumination.Cookie) : UnityEngine.Experimental.GlobalIllumination.DirectionalLight, UnityEngine.Experimental.GlobalIllumination.Cookie
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.PointLight, ref_cookie: UnityEngine.Experimental.GlobalIllumination.Cookie) : UnityEngine.Experimental.GlobalIllumination.PointLight, UnityEngine.Experimental.GlobalIllumination.Cookie
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.SpotLight, ref_cookie: UnityEngine.Experimental.GlobalIllumination.Cookie) : UnityEngine.Experimental.GlobalIllumination.SpotLight, UnityEngine.Experimental.GlobalIllumination.Cookie
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.RectangleLight, ref_cookie: UnityEngine.Experimental.GlobalIllumination.Cookie) : UnityEngine.Experimental.GlobalIllumination.RectangleLight, UnityEngine.Experimental.GlobalIllumination.Cookie
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.DiscLight, ref_cookie: UnityEngine.Experimental.GlobalIllumination.Cookie) : UnityEngine.Experimental.GlobalIllumination.DiscLight, UnityEngine.Experimental.GlobalIllumination.Cookie
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape, ref_cookie: UnityEngine.Experimental.GlobalIllumination.Cookie) : UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape, UnityEngine.Experimental.GlobalIllumination.Cookie
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape, ref_cookie: UnityEngine.Experimental.GlobalIllumination.Cookie) : UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape, UnityEngine.Experimental.GlobalIllumination.Cookie
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.DirectionalLight) : UnityEngine.Experimental.GlobalIllumination.DirectionalLight
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.PointLight) : UnityEngine.Experimental.GlobalIllumination.PointLight
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.SpotLight) : UnityEngine.Experimental.GlobalIllumination.SpotLight
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.RectangleLight) : UnityEngine.Experimental.GlobalIllumination.RectangleLight
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.DiscLight) : UnityEngine.Experimental.GlobalIllumination.DiscLight
---@overload fun(self: UnityEngine.Experimental.GlobalIllumination.LightDataGI, ref_light: UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape) : UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape
---@param ref_light UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape
---@return ,UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape
function UnityEngine.Experimental.GlobalIllumination.LightDataGI:Init(ref_light) end
---@param lightInstanceID number
function UnityEngine.Experimental.GlobalIllumination.LightDataGI:InitNoBake(lightInstanceID) end

---@class UnityEngine.Experimental.GlobalIllumination.LightmapperUtils : System.Object
UnityEngine.Experimental.GlobalIllumination.LightmapperUtils = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils UnityEngine.Experimental.GlobalIllumination.LightmapperUtils
CS.UnityEngine.Experimental.GlobalIllumination.LightmapperUtils = UnityEngine.Experimental.GlobalIllumination.LightmapperUtils

---@overload fun(baketype: UnityEngine.LightmapBakeType) : UnityEngine.Experimental.GlobalIllumination.LightMode
---@overload fun(l: UnityEngine.Light, ref_dir: UnityEngine.Experimental.GlobalIllumination.DirectionalLight) : UnityEngine.Experimental.GlobalIllumination.DirectionalLight
---@overload fun(l: UnityEngine.Light, ref_point: UnityEngine.Experimental.GlobalIllumination.PointLight) : UnityEngine.Experimental.GlobalIllumination.PointLight
---@overload fun(l: UnityEngine.Light, ref_spot: UnityEngine.Experimental.GlobalIllumination.SpotLight) : UnityEngine.Experimental.GlobalIllumination.SpotLight
---@overload fun(l: UnityEngine.Light, ref_rect: UnityEngine.Experimental.GlobalIllumination.RectangleLight) : UnityEngine.Experimental.GlobalIllumination.RectangleLight
---@overload fun(l: UnityEngine.Light, ref_disc: UnityEngine.Experimental.GlobalIllumination.DiscLight) : UnityEngine.Experimental.GlobalIllumination.DiscLight
---@param l UnityEngine.Light
---@param out_cookie UnityEngine.Experimental.GlobalIllumination.Cookie
---@return ,UnityEngine.Experimental.GlobalIllumination.Cookie
function UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.Extract(l, out_cookie) end
---@param l UnityEngine.Light
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.ExtractIndirect(l) end
---@param l UnityEngine.Light
---@return number
function UnityEngine.Experimental.GlobalIllumination.LightmapperUtils.ExtractInnerCone(l) end

---@class UnityEngine.Experimental.GlobalIllumination.Lightmapping : System.Object
UnityEngine.Experimental.GlobalIllumination.Lightmapping = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.Lightmapping UnityEngine.Experimental.GlobalIllumination.Lightmapping
CS.UnityEngine.Experimental.GlobalIllumination.Lightmapping = UnityEngine.Experimental.GlobalIllumination.Lightmapping

---@param del UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.SetDelegate(del) end
---@return UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.GetDelegate() end
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.ResetDelegate() end

---@class UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate : System.MulticastDelegate
UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate
CS.UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate = UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate.New(object, method) end
---@param requests UnityEngine.Light[]
---@param lightsOutput Unity.Collections.NativeArray
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate:Invoke(requests, lightsOutput) end
---@param requests UnityEngine.Light[]
---@param lightsOutput Unity.Collections.NativeArray
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate:BeginInvoke(requests, lightsOutput, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate:EndInvoke(result) end

---@class UnityEngine.Experimental.GlobalIllumination.RenderSettings : System.Object
---@field useRadianceAmbientProbe boolean
UnityEngine.Experimental.GlobalIllumination.RenderSettings = {}
---@alias CS.UnityEngine.Experimental.GlobalIllumination.RenderSettings UnityEngine.Experimental.GlobalIllumination.RenderSettings
CS.UnityEngine.Experimental.GlobalIllumination.RenderSettings = UnityEngine.Experimental.GlobalIllumination.RenderSettings

---@return UnityEngine.Experimental.GlobalIllumination.RenderSettings
function UnityEngine.Experimental.GlobalIllumination.RenderSettings.New() end

---@class UnityEngine.Experimental.Playables.CameraPlayable : System.ValueType
UnityEngine.Experimental.Playables.CameraPlayable = {}
---@alias CS.UnityEngine.Experimental.Playables.CameraPlayable UnityEngine.Experimental.Playables.CameraPlayable
CS.UnityEngine.Experimental.Playables.CameraPlayable = UnityEngine.Experimental.Playables.CameraPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param camera UnityEngine.Camera
---@return UnityEngine.Experimental.Playables.CameraPlayable
function UnityEngine.Experimental.Playables.CameraPlayable.Create(graph, camera) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Playables.CameraPlayable:GetHandle() end
---@param other UnityEngine.Experimental.Playables.CameraPlayable
---@return boolean
function UnityEngine.Experimental.Playables.CameraPlayable:Equals(other) end
---@return UnityEngine.Camera
function UnityEngine.Experimental.Playables.CameraPlayable:GetCamera() end
---@param value UnityEngine.Camera
function UnityEngine.Experimental.Playables.CameraPlayable:SetCamera(value) end

---@class UnityEngine.Experimental.Playables.MaterialEffectPlayable : System.ValueType
UnityEngine.Experimental.Playables.MaterialEffectPlayable = {}
---@alias CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable UnityEngine.Experimental.Playables.MaterialEffectPlayable
CS.UnityEngine.Experimental.Playables.MaterialEffectPlayable = UnityEngine.Experimental.Playables.MaterialEffectPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param material UnityEngine.Material
---@param pass number
---@return UnityEngine.Experimental.Playables.MaterialEffectPlayable
function UnityEngine.Experimental.Playables.MaterialEffectPlayable.Create(graph, material, pass) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetHandle() end
---@param other UnityEngine.Experimental.Playables.MaterialEffectPlayable
---@return boolean
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:Equals(other) end
---@return UnityEngine.Material
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetMaterial() end
---@param value UnityEngine.Material
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:SetMaterial(value) end
---@return number
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:GetPass() end
---@param value number
function UnityEngine.Experimental.Playables.MaterialEffectPlayable:SetPass(value) end

---@class UnityEngine.Experimental.Playables.TextureMixerPlayable : System.ValueType
UnityEngine.Experimental.Playables.TextureMixerPlayable = {}
---@alias CS.UnityEngine.Experimental.Playables.TextureMixerPlayable UnityEngine.Experimental.Playables.TextureMixerPlayable
CS.UnityEngine.Experimental.Playables.TextureMixerPlayable = UnityEngine.Experimental.Playables.TextureMixerPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@return UnityEngine.Experimental.Playables.TextureMixerPlayable
function UnityEngine.Experimental.Playables.TextureMixerPlayable.Create(graph) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Playables.TextureMixerPlayable:GetHandle() end
---@param other UnityEngine.Experimental.Playables.TextureMixerPlayable
---@return boolean
function UnityEngine.Experimental.Playables.TextureMixerPlayable:Equals(other) end

---@class UnityEngine.Experimental.Playables.TexturePlayableBinding : System.Object
UnityEngine.Experimental.Playables.TexturePlayableBinding = {}
---@alias CS.UnityEngine.Experimental.Playables.TexturePlayableBinding UnityEngine.Experimental.Playables.TexturePlayableBinding
CS.UnityEngine.Experimental.Playables.TexturePlayableBinding = UnityEngine.Experimental.Playables.TexturePlayableBinding

---@param name string
---@param key UnityEngine.Object
---@return UnityEngine.Playables.PlayableBinding
function UnityEngine.Experimental.Playables.TexturePlayableBinding.Create(name, key) end

---@class UnityEngine.Experimental.Playables.TexturePlayableGraphExtensions : System.Object
UnityEngine.Experimental.Playables.TexturePlayableGraphExtensions = {}
---@alias CS.UnityEngine.Experimental.Playables.TexturePlayableGraphExtensions UnityEngine.Experimental.Playables.TexturePlayableGraphExtensions
CS.UnityEngine.Experimental.Playables.TexturePlayableGraphExtensions = UnityEngine.Experimental.Playables.TexturePlayableGraphExtensions


---@class UnityEngine.Experimental.Playables.TexturePlayableOutput : System.ValueType
---@field Null UnityEngine.Experimental.Playables.TexturePlayableOutput
UnityEngine.Experimental.Playables.TexturePlayableOutput = {}
---@alias CS.UnityEngine.Experimental.Playables.TexturePlayableOutput UnityEngine.Experimental.Playables.TexturePlayableOutput
CS.UnityEngine.Experimental.Playables.TexturePlayableOutput = UnityEngine.Experimental.Playables.TexturePlayableOutput

---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@param target UnityEngine.RenderTexture
---@return UnityEngine.Experimental.Playables.TexturePlayableOutput
function UnityEngine.Experimental.Playables.TexturePlayableOutput.Create(graph, name, target) end
---@return UnityEngine.Playables.PlayableOutputHandle
function UnityEngine.Experimental.Playables.TexturePlayableOutput:GetHandle() end
---@return UnityEngine.RenderTexture
function UnityEngine.Experimental.Playables.TexturePlayableOutput:GetTarget() end
---@param value UnityEngine.RenderTexture
function UnityEngine.Experimental.Playables.TexturePlayableOutput:SetTarget(value) end

---@class UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem : System.Object
UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem = {}
---@alias CS.UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem
CS.UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem = UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem

---@return UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem
function UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem.New() end
---@return boolean
function UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem:TickRealtimeProbes() end
function UnityEngine.Experimental.Rendering.BuiltinRuntimeReflectionSystem:Dispose() end

---@class UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem
UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem = {}
---@alias CS.UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem
CS.UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem = UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem

---@return boolean
function UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem:TickRealtimeProbes() end

---@class UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem : System.Object
UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem = {}
---@alias CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem
CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem = UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem

---@return boolean
function UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystem:TickRealtimeProbes() end

---@class UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings : System.Object
---@field system UnityEngine.Experimental.Rendering.IScriptableRuntimeReflectionSystem
UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings = {}
---@alias CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings
CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings = UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemSettings


---@class UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper : System.Object
UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper = {}
---@alias CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper
CS.UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper = UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper

---@return UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper
function UnityEngine.Experimental.Rendering.ScriptableRuntimeReflectionSystemWrapper.New() end

---@class UnityEngine.Experimental.Rendering.ExternalGPUProfiler : System.Object
UnityEngine.Experimental.Rendering.ExternalGPUProfiler = {}
---@alias CS.UnityEngine.Experimental.Rendering.ExternalGPUProfiler UnityEngine.Experimental.Rendering.ExternalGPUProfiler
CS.UnityEngine.Experimental.Rendering.ExternalGPUProfiler = UnityEngine.Experimental.Rendering.ExternalGPUProfiler

function UnityEngine.Experimental.Rendering.ExternalGPUProfiler.BeginGPUCapture() end
function UnityEngine.Experimental.Rendering.ExternalGPUProfiler.EndGPUCapture() end
---@return boolean
function UnityEngine.Experimental.Rendering.ExternalGPUProfiler.IsAttached() end

---@class UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint
---@field BeginFrame UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint
---@field EndFrame UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint
UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint = {}
---@alias CS.UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint
CS.UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint = UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint


---@class UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
---@field EndOfFrame UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
---@field AfterScriptUpdate UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
---@field AfterScriptLateUpdate UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
---@field WaitForPresent UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint = {}
---@alias CS.UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
CS.UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint = UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint


---@class UnityEngine.Experimental.Rendering.GraphicsDeviceSettings : System.Object
---@field waitForPresentSyncPoint UnityEngine.Experimental.Rendering.WaitForPresentSyncPoint
---@field graphicsJobsSyncPoint UnityEngine.Experimental.Rendering.GraphicsJobsSyncPoint
UnityEngine.Experimental.Rendering.GraphicsDeviceSettings = {}
---@alias CS.UnityEngine.Experimental.Rendering.GraphicsDeviceSettings UnityEngine.Experimental.Rendering.GraphicsDeviceSettings
CS.UnityEngine.Experimental.Rendering.GraphicsDeviceSettings = UnityEngine.Experimental.Rendering.GraphicsDeviceSettings


---@class UnityEngine.Experimental.Rendering.TextureCreationFlags
---@field None UnityEngine.Experimental.Rendering.TextureCreationFlags
---@field MipChain UnityEngine.Experimental.Rendering.TextureCreationFlags
---@field DontInitializePixels UnityEngine.Experimental.Rendering.TextureCreationFlags
---@field Crunch UnityEngine.Experimental.Rendering.TextureCreationFlags
---@field DontUploadUponCreate UnityEngine.Experimental.Rendering.TextureCreationFlags
---@field IgnoreMipmapLimit UnityEngine.Experimental.Rendering.TextureCreationFlags
UnityEngine.Experimental.Rendering.TextureCreationFlags = {}
---@alias CS.UnityEngine.Experimental.Rendering.TextureCreationFlags UnityEngine.Experimental.Rendering.TextureCreationFlags
CS.UnityEngine.Experimental.Rendering.TextureCreationFlags = UnityEngine.Experimental.Rendering.TextureCreationFlags


---@class UnityEngine.Experimental.Rendering.FormatUsage
---@field Sample UnityEngine.Experimental.Rendering.FormatUsage
---@field Linear UnityEngine.Experimental.Rendering.FormatUsage
---@field Sparse UnityEngine.Experimental.Rendering.FormatUsage
---@field Render UnityEngine.Experimental.Rendering.FormatUsage
---@field Blend UnityEngine.Experimental.Rendering.FormatUsage
---@field GetPixels UnityEngine.Experimental.Rendering.FormatUsage
---@field SetPixels UnityEngine.Experimental.Rendering.FormatUsage
---@field SetPixels32 UnityEngine.Experimental.Rendering.FormatUsage
---@field ReadPixels UnityEngine.Experimental.Rendering.FormatUsage
---@field LoadStore UnityEngine.Experimental.Rendering.FormatUsage
---@field MSAA2x UnityEngine.Experimental.Rendering.FormatUsage
---@field MSAA4x UnityEngine.Experimental.Rendering.FormatUsage
---@field MSAA8x UnityEngine.Experimental.Rendering.FormatUsage
---@field StencilSampling UnityEngine.Experimental.Rendering.FormatUsage
UnityEngine.Experimental.Rendering.FormatUsage = {}
---@alias CS.UnityEngine.Experimental.Rendering.FormatUsage UnityEngine.Experimental.Rendering.FormatUsage
CS.UnityEngine.Experimental.Rendering.FormatUsage = UnityEngine.Experimental.Rendering.FormatUsage


---@class UnityEngine.Experimental.Rendering.DefaultFormat
---@field LDR UnityEngine.Experimental.Rendering.DefaultFormat
---@field HDR UnityEngine.Experimental.Rendering.DefaultFormat
---@field DepthStencil UnityEngine.Experimental.Rendering.DefaultFormat
---@field Shadow UnityEngine.Experimental.Rendering.DefaultFormat
---@field Video UnityEngine.Experimental.Rendering.DefaultFormat
UnityEngine.Experimental.Rendering.DefaultFormat = {}
---@alias CS.UnityEngine.Experimental.Rendering.DefaultFormat UnityEngine.Experimental.Rendering.DefaultFormat
CS.UnityEngine.Experimental.Rendering.DefaultFormat = UnityEngine.Experimental.Rendering.DefaultFormat


---@class UnityEngine.Experimental.Rendering.GraphicsFormat
---@field None UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8A8_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8A8_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8A8_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8A8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R8G8B8A8_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16A16_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16A16_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16A16_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16A16_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32B32_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32B32A32_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32B32_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32B32A32_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R16G16B16A16_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32B32_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R32G32B32A32_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8A8_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8A8_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8A8_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8A8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B8G8R8A8_SInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R4G4B4A4_UNormPack16 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B4G4R4A4_UNormPack16 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R5G6B5_UNormPack16 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B5G6R5_UNormPack16 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R5G5B5A1_UNormPack16 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B5G5R5A1_UNormPack16 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A1R5G5B5_UNormPack16 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field E5B9G9R9_UFloatPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field B10G11R11_UFloatPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2B10G10R10_UNormPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2B10G10R10_UIntPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2B10G10R10_SIntPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2R10G10B10_UNormPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2R10G10B10_UIntPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2R10G10B10_SIntPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2R10G10B10_XRSRGBPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A2R10G10B10_XRUNormPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R10G10B10_XRSRGBPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R10G10B10_XRUNormPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A10R10G10B10_XRSRGBPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field A10R10G10B10_XRUNormPack32 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field D16_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field D24_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field D24_UNorm_S8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field D32_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field D32_SFloat_S8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field S8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_DXT1_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_DXT1_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_DXT3_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_DXT3_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_DXT5_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_DXT5_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R_BC4_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R_BC4_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RG_BC5_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RG_BC5_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_BC6H_UFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_BC6H_SFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_BC7_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_BC7_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_PVRTC_2Bpp_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_PVRTC_2Bpp_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_PVRTC_4Bpp_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_PVRTC_4Bpp_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_PVRTC_2Bpp_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_PVRTC_2Bpp_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_PVRTC_4Bpp_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_PVRTC_4Bpp_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_ETC_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_ETC2_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_ETC2_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_A1_ETC2_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGB_A1_ETC2_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ETC2_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ETC2_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R_EAC_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field R_EAC_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RG_EAC_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RG_EAC_SNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC4X4_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC4X4_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC5X5_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC5X5_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC6X6_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC6X6_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC8X8_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC8X8_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC10X10_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC10X10_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC12X12_SRGB UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC12X12_UNorm UnityEngine.Experimental.Rendering.GraphicsFormat
---@field YUV2 UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC4X4_UFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC5X5_UFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC6X6_UFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC8X8_UFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC10X10_UFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field RGBA_ASTC12X12_UFloat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field D16_UNorm_S8_UInt UnityEngine.Experimental.Rendering.GraphicsFormat
UnityEngine.Experimental.Rendering.GraphicsFormat = {}
---@alias CS.UnityEngine.Experimental.Rendering.GraphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
CS.UnityEngine.Experimental.Rendering.GraphicsFormat = UnityEngine.Experimental.Rendering.GraphicsFormat


---@class UnityEngine.Experimental.Rendering.RayTracingMode
---@field Off UnityEngine.Experimental.Rendering.RayTracingMode
---@field Static UnityEngine.Experimental.Rendering.RayTracingMode
---@field DynamicTransform UnityEngine.Experimental.Rendering.RayTracingMode
---@field DynamicGeometry UnityEngine.Experimental.Rendering.RayTracingMode
UnityEngine.Experimental.Rendering.RayTracingMode = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingMode UnityEngine.Experimental.Rendering.RayTracingMode
CS.UnityEngine.Experimental.Rendering.RayTracingMode = UnityEngine.Experimental.Rendering.RayTracingMode


---@class UnityEngine.Experimental.Rendering.GraphicsFormatUtility : System.Object
UnityEngine.Experimental.Rendering.GraphicsFormatUtility = {}
---@alias CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility UnityEngine.Experimental.Rendering.GraphicsFormatUtility
CS.UnityEngine.Experimental.Rendering.GraphicsFormatUtility = UnityEngine.Experimental.Rendering.GraphicsFormatUtility

---@return UnityEngine.Experimental.Rendering.GraphicsFormatUtility
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.New() end
---@overload fun(format: UnityEngine.TextureFormat, isSRGB: boolean) : UnityEngine.Experimental.Rendering.GraphicsFormat
---@overload fun(format: UnityEngine.RenderTextureFormat, isSRGB: boolean) : UnityEngine.Experimental.Rendering.GraphicsFormat
---@param format UnityEngine.RenderTextureFormat
---@param readWrite UnityEngine.RenderTextureReadWrite
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetGraphicsFormat(format, readWrite) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.TextureFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetTextureFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetDepthBits(format) end
---@param minimumDepthBits number
---@param minimumStencilBits number
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetDepthStencilFormat(minimumDepthBits, minimumStencilBits) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSRGBFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSwizzleFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSRGBFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetLinearFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.RenderTextureFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetRenderTextureFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@param format UnityEngine.TextureFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetColorComponentCount(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@param format UnityEngine.TextureFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetAlphaComponentCount(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@param format UnityEngine.TextureFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetComponentCount(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : string
---@param format UnityEngine.TextureFormat
---@return string
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetFormatString(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsCompressedFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsPackedFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.Is16BitPackedFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.Experimental.Rendering.GraphicsFormat
---@param format UnityEngine.TextureFormat
---@return UnityEngine.TextureFormat
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ConvertToAlphaFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsAlphaOnlyFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsAlphaTestFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.HasAlphaChannel(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsDepthFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsStencilFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsDepthStencilFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsIEEE754Format(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsFloatFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsHalfFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUnsignedFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSignedFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsNormFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUNormFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSNormFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsIntegerFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsUIntFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsSIntFormat(format) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsXRFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsDXTCFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsRGTCFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsBPTCFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsBCFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsPVRTCFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsETCFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsEACFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsASTCFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : boolean
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsHDRFormat(format) end
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.IsCrunchFormat(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.Rendering.FormatSwizzle
---@param format UnityEngine.TextureFormat
---@return UnityEngine.Rendering.FormatSwizzle
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleR(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.Rendering.FormatSwizzle
---@param format UnityEngine.TextureFormat
---@return UnityEngine.Rendering.FormatSwizzle
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleG(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.Rendering.FormatSwizzle
---@param format UnityEngine.TextureFormat
---@return UnityEngine.Rendering.FormatSwizzle
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleB(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.Rendering.FormatSwizzle
---@param format UnityEngine.TextureFormat
---@return UnityEngine.Rendering.FormatSwizzle
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetSwizzleA(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@param format UnityEngine.TextureFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockSize(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@param format UnityEngine.TextureFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockWidth(format) end
---@overload fun(format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@param format UnityEngine.TextureFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.GetBlockHeight(format) end
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@overload fun(width: number, height: number, format: UnityEngine.TextureFormat) : number
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat) : number
---@param width number
---@param height number
---@param depth number
---@param format UnityEngine.TextureFormat
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ComputeMipmapSize(width, height, depth, format) end
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, mipCount: number) : number
---@overload fun(width: number, height: number, format: UnityEngine.TextureFormat, mipCount: number) : number
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, mipCount: number) : number
---@param width number
---@param height number
---@param depth number
---@param format UnityEngine.TextureFormat
---@param mipCount number
---@return number
function UnityEngine.Experimental.Rendering.GraphicsFormatUtility.ComputeMipChainSize(width, height, depth, format, mipCount) end

---@class UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
---@field Disabled UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
---@field Enabled UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
---@field ClosestHitOnly UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
---@field UniqueAnyHitCalls UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
CS.UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags = UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
---@field None UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
---@field EnableSphereCulling UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
---@field EnablePlaneCulling UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
---@field EnableLODCulling UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
---@field ComputeMaterialsCRC UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
---@field IgnoreReflectionProbes UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags = UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceCullingTest : System.ValueType
---@field instanceMask number
---@field layerMask number
---@field shadowCastingModeMask number
---@field allowOpaqueMaterials boolean
---@field allowTransparentMaterials boolean
---@field allowAlphaTestedMaterials boolean
UnityEngine.Experimental.Rendering.RayTracingInstanceCullingTest = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingTest UnityEngine.Experimental.Rendering.RayTracingInstanceCullingTest
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingTest = UnityEngine.Experimental.Rendering.RayTracingInstanceCullingTest


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig : System.ValueType
---@field tagId UnityEngine.Rendering.ShaderTagId
---@field tagValueId UnityEngine.Rendering.ShaderTagId
UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig = UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig : System.ValueType
---@field renderQueueLowerBound number
---@field renderQueueUpperBound number
---@field optionalShaderTags UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig[]
---@field optionalShaderKeywords System.String[]
UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig = UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceCullingMaterialTest : System.ValueType
---@field deniedShaderPasses System.String[]
---@field requiredShaderTags UnityEngine.Experimental.Rendering.RayTracingInstanceCullingShaderTagConfig[]
UnityEngine.Experimental.Rendering.RayTracingInstanceCullingMaterialTest = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingMaterialTest UnityEngine.Experimental.Rendering.RayTracingInstanceCullingMaterialTest
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingMaterialTest = UnityEngine.Experimental.Rendering.RayTracingInstanceCullingMaterialTest


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceTriangleCullingConfig : System.ValueType
---@field optionalDoubleSidedShaderKeywords System.String[]
---@field frontTriangleCounterClockwise boolean
---@field checkDoubleSidedGIMaterial boolean
---@field forceDoubleSided boolean
UnityEngine.Experimental.Rendering.RayTracingInstanceTriangleCullingConfig = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceTriangleCullingConfig UnityEngine.Experimental.Rendering.RayTracingInstanceTriangleCullingConfig
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceTriangleCullingConfig = UnityEngine.Experimental.Rendering.RayTracingInstanceTriangleCullingConfig


---@class UnityEngine.Experimental.Rendering.RayTracingSubMeshFlagsConfig : System.ValueType
---@field opaqueMaterials UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
---@field transparentMaterials UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
---@field alphaTestedMaterials UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags
UnityEngine.Experimental.Rendering.RayTracingSubMeshFlagsConfig = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingSubMeshFlagsConfig UnityEngine.Experimental.Rendering.RayTracingSubMeshFlagsConfig
CS.UnityEngine.Experimental.Rendering.RayTracingSubMeshFlagsConfig = UnityEngine.Experimental.Rendering.RayTracingSubMeshFlagsConfig


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig : System.ValueType
---@field flags UnityEngine.Experimental.Rendering.RayTracingInstanceCullingFlags
---@field sphereCenter UnityEngine.Vector3
---@field sphereRadius number
---@field planes UnityEngine.Plane[]
---@field instanceTests UnityEngine.Experimental.Rendering.RayTracingInstanceCullingTest[]
---@field materialTest UnityEngine.Experimental.Rendering.RayTracingInstanceCullingMaterialTest
---@field transparentMaterialConfig UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig
---@field alphaTestedMaterialConfig UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialConfig
---@field subMeshFlagsConfig UnityEngine.Experimental.Rendering.RayTracingSubMeshFlagsConfig
---@field triangleCullingConfig UnityEngine.Experimental.Rendering.RayTracingInstanceTriangleCullingConfig
---@field lodParameters UnityEngine.Rendering.LODParameters
UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig = UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialCRC : System.ValueType
---@field instanceID number
---@field crc number
UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialCRC = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialCRC UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialCRC
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialCRC = UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialCRC


---@class UnityEngine.Experimental.Rendering.RayTracingInstanceCullingResults : System.ValueType
---@field materialsCRC UnityEngine.Experimental.Rendering.RayTracingInstanceMaterialCRC[]
---@field transformsChanged boolean
UnityEngine.Experimental.Rendering.RayTracingInstanceCullingResults = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingResults UnityEngine.Experimental.Rendering.RayTracingInstanceCullingResults
CS.UnityEngine.Experimental.Rendering.RayTracingInstanceCullingResults = UnityEngine.Experimental.Rendering.RayTracingInstanceCullingResults


---@class UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure : System.Object
UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure = UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure

---@overload fun(settings: UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings) : UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
---@return UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.New() end
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Dispose() end
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Release() end
---@overload fun()
---@param relativeOrigin UnityEngine.Vector3
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:Build(relativeOrigin) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure, targetRenderer: UnityEngine.Renderer, subMeshFlags: UnityEngine.Experimental.Rendering.RayTracingSubMeshFlags[], enableTriangleCulling: boolean, frontTriangleCounterClockwise: boolean, mask: number, id: number)
---@param aabbBuffer UnityEngine.GraphicsBuffer
---@param aabbCount number
---@param dynamicData boolean
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param opaqueMaterial boolean
---@param properties UnityEngine.MaterialPropertyBlock
---@param mask number
---@param id number
---@return number
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:AddInstance(aabbBuffer, aabbCount, dynamicData, matrix, material, opaqueMaterial, properties, mask, id) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure, targetRenderer: UnityEngine.Renderer)
---@param handle number
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:RemoveInstance(handle) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure, renderer: UnityEngine.Renderer)
---@param handle number
---@param matrix UnityEngine.Matrix4x4
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:UpdateInstanceTransform(handle, matrix) end
---@param renderer UnityEngine.Renderer
---@param mask number
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:UpdateInstanceMask(renderer, mask) end
---@param renderer UnityEngine.Renderer
---@param instanceID number
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:UpdateInstanceID(renderer, instanceID) end
---@param handle number
---@param properties UnityEngine.MaterialPropertyBlock
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:UpdateInstancePropertyBlock(handle, properties) end
---@return number
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:GetSize() end
---@return number
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:GetInstanceCount() end
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:ClearInstances() end
---@param ref_cullingConfig UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig
---@return UnityEngine.Experimental.Rendering.RayTracingInstanceCullingResults,UnityEngine.Experimental.Rendering.RayTracingInstanceCullingConfig
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure:CullInstances(ref_cullingConfig) end

---@class UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
---@field Nothing UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
---@field Static UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
---@field DynamicTransform UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
---@field DynamicGeometry UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
---@field Everything UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask = UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask


---@class UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode
---@field Manual UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode
---@field Automatic UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode
UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode
CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode = UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode


---@class UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings : System.ValueType
---@field managementMode UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode
---@field rayTracingModeMask UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
---@field layerMask number
UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings
CS.UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings = UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings

---@param sceneManagementMode UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.ManagementMode
---@param rayTracingModeMask UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RayTracingModeMask
---@param layerMask number
---@return UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings
function UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure.RASSettings.New(sceneManagementMode, rayTracingModeMask, layerMask) end

---@class UnityEngine.Experimental.Rendering.ShaderWarmupSetup : System.ValueType
---@field vdecl UnityEngine.Rendering.VertexAttributeDescriptor[]
UnityEngine.Experimental.Rendering.ShaderWarmupSetup = {}
---@alias CS.UnityEngine.Experimental.Rendering.ShaderWarmupSetup UnityEngine.Experimental.Rendering.ShaderWarmupSetup
CS.UnityEngine.Experimental.Rendering.ShaderWarmupSetup = UnityEngine.Experimental.Rendering.ShaderWarmupSetup


---@class UnityEngine.Experimental.Rendering.ShaderWarmup : System.Object
UnityEngine.Experimental.Rendering.ShaderWarmup = {}
---@alias CS.UnityEngine.Experimental.Rendering.ShaderWarmup UnityEngine.Experimental.Rendering.ShaderWarmup
CS.UnityEngine.Experimental.Rendering.ShaderWarmup = UnityEngine.Experimental.Rendering.ShaderWarmup

---@param shader UnityEngine.Shader
---@param setup UnityEngine.Experimental.Rendering.ShaderWarmupSetup
function UnityEngine.Experimental.Rendering.ShaderWarmup.WarmupShader(shader, setup) end
---@param collection UnityEngine.ShaderVariantCollection
---@param shader UnityEngine.Shader
---@param setup UnityEngine.Experimental.Rendering.ShaderWarmupSetup
function UnityEngine.Experimental.Rendering.ShaderWarmup.WarmupShaderFromCollection(collection, shader, setup) end

---@class UnityEngine.Experimental.Rendering.RayTracingShader : UnityEngine.Object
---@field maxRecursionDepth number
UnityEngine.Experimental.Rendering.RayTracingShader = {}
---@alias CS.UnityEngine.Experimental.Rendering.RayTracingShader UnityEngine.Experimental.Rendering.RayTracingShader
CS.UnityEngine.Experimental.Rendering.RayTracingShader = UnityEngine.Experimental.Rendering.RayTracingShader

---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, val: number)
---@param name string
---@param val number
function UnityEngine.Experimental.Rendering.RayTracingShader:SetFloat(name, val) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, val: number)
---@param name string
---@param val number
function UnityEngine.Experimental.Rendering.RayTracingShader:SetInt(name, val) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, val: UnityEngine.Vector4)
---@param name string
---@param val UnityEngine.Vector4
function UnityEngine.Experimental.Rendering.RayTracingShader:SetVector(name, val) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, val: UnityEngine.Matrix4x4)
---@param name string
---@param val UnityEngine.Matrix4x4
function UnityEngine.Experimental.Rendering.RayTracingShader:SetMatrix(name, val) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, values: UnityEngine.Vector4[])
---@param name string
---@param values UnityEngine.Vector4[]
function UnityEngine.Experimental.Rendering.RayTracingShader:SetVectorArray(name, values) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, values: UnityEngine.Matrix4x4[])
---@param name string
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.Experimental.Rendering.RayTracingShader:SetMatrixArray(name, values) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, texture: UnityEngine.Texture)
---@param name string
---@param texture UnityEngine.Texture
function UnityEngine.Experimental.Rendering.RayTracingShader:SetTexture(name, texture) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, buffer: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, buffer: UnityEngine.GraphicsBuffer)
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, buffer: UnityEngine.ComputeBuffer)
---@param name string
---@param buffer UnityEngine.GraphicsBuffer
function UnityEngine.Experimental.Rendering.RayTracingShader:SetBuffer(name, buffer) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, accelerationStructure: UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure)
---@param name string
---@param accelerationStructure UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function UnityEngine.Experimental.Rendering.RayTracingShader:SetAccelerationStructure(name, accelerationStructure) end
---@param passName string
function UnityEngine.Experimental.Rendering.RayTracingShader:SetShaderPass(passName) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, globalTextureNameID: number)
---@param name string
---@param globalTextureName string
function UnityEngine.Experimental.Rendering.RayTracingShader:SetTextureFromGlobal(name, globalTextureName) end
---@param rayGenFunctionName string
---@param width number
---@param height number
---@param depth number
---@param camera UnityEngine.Camera
function UnityEngine.Experimental.Rendering.RayTracingShader:Dispatch(rayGenFunctionName, width, height, depth, camera) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, values: System.Single[])
---@param nameID number
---@param values System.Single[]
function UnityEngine.Experimental.Rendering.RayTracingShader:SetFloats(nameID, values) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, values: System.Int32[])
---@param nameID number
---@param values System.Int32[]
function UnityEngine.Experimental.Rendering.RayTracingShader:SetInts(nameID, values) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, val: boolean)
---@param nameID number
---@param val boolean
function UnityEngine.Experimental.Rendering.RayTracingShader:SetBool(nameID, val) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, name: string, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Experimental.Rendering.RayTracingShader, nameID: number, buffer: UnityEngine.GraphicsBuffer, offset: number, size: number)
---@param name string
---@param buffer UnityEngine.GraphicsBuffer
---@param offset number
---@param size number
function UnityEngine.Experimental.Rendering.RayTracingShader:SetConstantBuffer(name, buffer, offset, size) end

---@class UnityEngine.Assertions.Assert : System.Object
UnityEngine.Assertions.Assert = {}
---@alias CS.UnityEngine.Assertions.Assert UnityEngine.Assertions.Assert
CS.UnityEngine.Assertions.Assert = UnityEngine.Assertions.Assert

---@overload fun(condition: boolean)
---@param condition boolean
---@param message string
function UnityEngine.Assertions.Assert.IsTrue(condition, message) end
---@overload fun(condition: boolean)
---@param condition boolean
---@param message string
function UnityEngine.Assertions.Assert.IsFalse(condition, message) end
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number, tolerance: number)
---@param expected number
---@param actual number
---@param tolerance number
---@param message string
function UnityEngine.Assertions.Assert.AreApproximatelyEqual(expected, actual, tolerance, message) end
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number, tolerance: number)
---@param expected number
---@param actual number
---@param tolerance number
---@param message string
function UnityEngine.Assertions.Assert.AreNotApproximatelyEqual(expected, actual, tolerance, message) end
---@overload fun(expected: UnityEngine.Object, actual: UnityEngine.Object, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: System.Char, actual: System.Char)
---@overload fun(expected: System.Char, actual: System.Char, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@param expected number
---@param actual number
---@param message string
function UnityEngine.Assertions.Assert.AreEqual(expected, actual, message) end
---@overload fun(expected: UnityEngine.Object, actual: UnityEngine.Object, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: System.Char, actual: System.Char)
---@overload fun(expected: System.Char, actual: System.Char, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@overload fun(expected: number, actual: number, message: string)
---@overload fun(expected: number, actual: number)
---@param expected number
---@param actual number
---@param message string
function UnityEngine.Assertions.Assert.AreNotEqual(expected, actual, message) end
---@param value UnityEngine.Object
---@param message string
function UnityEngine.Assertions.Assert.IsNull(value, message) end
---@param value UnityEngine.Object
---@param message string
function UnityEngine.Assertions.Assert.IsNotNull(value, message) end

---@class UnityEngine.Assertions.AssertionException : System.Exception
---@field Message string
UnityEngine.Assertions.AssertionException = {}
---@alias CS.UnityEngine.Assertions.AssertionException UnityEngine.Assertions.AssertionException
CS.UnityEngine.Assertions.AssertionException = UnityEngine.Assertions.AssertionException

---@param message string
---@param userMessage string
---@return UnityEngine.Assertions.AssertionException
function UnityEngine.Assertions.AssertionException.New(message, userMessage) end

---@class UnityEngine.Assertions.AssertionMessageUtil : System.Object
UnityEngine.Assertions.AssertionMessageUtil = {}
---@alias CS.UnityEngine.Assertions.AssertionMessageUtil UnityEngine.Assertions.AssertionMessageUtil
CS.UnityEngine.Assertions.AssertionMessageUtil = UnityEngine.Assertions.AssertionMessageUtil

---@return UnityEngine.Assertions.AssertionMessageUtil
function UnityEngine.Assertions.AssertionMessageUtil.New() end
---@overload fun(failureMessage: string) : string
---@param failureMessage string
---@param expected string
---@return string
function UnityEngine.Assertions.AssertionMessageUtil.GetMessage(failureMessage, expected) end
---@param actual System.Object
---@param expected System.Object
---@param expectEqual boolean
---@return string
function UnityEngine.Assertions.AssertionMessageUtil.GetEqualityMessage(actual, expected, expectEqual) end
---@param value System.Object
---@param expectNull boolean
---@return string
function UnityEngine.Assertions.AssertionMessageUtil.NullFailureMessage(value, expectNull) end
---@param expected boolean
---@return string
function UnityEngine.Assertions.AssertionMessageUtil.BooleanFailureMessage(expected) end

---@class UnityEngine.Assertions.Must.MustExtensions : System.Object
UnityEngine.Assertions.Must.MustExtensions = {}
---@alias CS.UnityEngine.Assertions.Must.MustExtensions UnityEngine.Assertions.Must.MustExtensions
CS.UnityEngine.Assertions.Must.MustExtensions = UnityEngine.Assertions.Must.MustExtensions


---@class UnityEngine.Assertions.Comparers.FloatComparer : System.Object
---@field s_ComparerWithDefaultTolerance UnityEngine.Assertions.Comparers.FloatComparer
---@field kEpsilon number
UnityEngine.Assertions.Comparers.FloatComparer = {}
---@alias CS.UnityEngine.Assertions.Comparers.FloatComparer UnityEngine.Assertions.Comparers.FloatComparer
CS.UnityEngine.Assertions.Comparers.FloatComparer = UnityEngine.Assertions.Comparers.FloatComparer

---@overload fun() : UnityEngine.Assertions.Comparers.FloatComparer
---@overload fun(relative: boolean) : UnityEngine.Assertions.Comparers.FloatComparer
---@overload fun(error: number) : UnityEngine.Assertions.Comparers.FloatComparer
---@param error number
---@param relative boolean
---@return UnityEngine.Assertions.Comparers.FloatComparer
function UnityEngine.Assertions.Comparers.FloatComparer.New(error, relative) end
---@param expected number
---@param actual number
---@param error number
---@return boolean
function UnityEngine.Assertions.Comparers.FloatComparer.AreEqual(expected, actual, error) end
---@param expected number
---@param actual number
---@param error number
---@return boolean
function UnityEngine.Assertions.Comparers.FloatComparer.AreEqualRelative(expected, actual, error) end
---@param a number
---@param b number
---@return boolean
function UnityEngine.Assertions.Comparers.FloatComparer:Equals(a, b) end
---@param obj number
---@return number
function UnityEngine.Assertions.Comparers.FloatComparer:GetHashCode(obj) end

---@class UnityEngine.Apple.FrameCaptureDestination
---@field DevTools UnityEngine.Apple.FrameCaptureDestination
---@field GPUTraceDocument UnityEngine.Apple.FrameCaptureDestination
UnityEngine.Apple.FrameCaptureDestination = {}
---@alias CS.UnityEngine.Apple.FrameCaptureDestination UnityEngine.Apple.FrameCaptureDestination
CS.UnityEngine.Apple.FrameCaptureDestination = UnityEngine.Apple.FrameCaptureDestination


---@class UnityEngine.Apple.FrameCapture : System.Object
UnityEngine.Apple.FrameCapture = {}
---@alias CS.UnityEngine.Apple.FrameCapture UnityEngine.Apple.FrameCapture
CS.UnityEngine.Apple.FrameCapture = UnityEngine.Apple.FrameCapture

---@param dest UnityEngine.Apple.FrameCaptureDestination
---@return boolean
function UnityEngine.Apple.FrameCapture.IsDestinationSupported(dest) end
function UnityEngine.Apple.FrameCapture.BeginCaptureToXcode() end
---@param path string
function UnityEngine.Apple.FrameCapture.BeginCaptureToFile(path) end
function UnityEngine.Apple.FrameCapture.EndCapture() end
function UnityEngine.Apple.FrameCapture.CaptureNextFrameToXcode() end
---@param path string
function UnityEngine.Apple.FrameCapture.CaptureNextFrameToFile(path) end

---@class UnityEngine.Apple.TV.Remote : System.Object
---@field allowExitToHome boolean
---@field allowRemoteRotation boolean
---@field reportAbsoluteDpadValues boolean
---@field touchesEnabled boolean
UnityEngine.Apple.TV.Remote = {}
---@alias CS.UnityEngine.Apple.TV.Remote UnityEngine.Apple.TV.Remote
CS.UnityEngine.Apple.TV.Remote = UnityEngine.Apple.TV.Remote

---@return UnityEngine.Apple.TV.Remote
function UnityEngine.Apple.TV.Remote.New() end

---@class UnityEngine.Apple.ReplayKit.ReplayKit : System.Object
---@field APIAvailable boolean
---@field broadcastingAPIAvailable boolean
---@field recordingAvailable boolean
---@field isRecording boolean
---@field isBroadcasting boolean
---@field isBroadcastingPaused boolean
---@field isPreviewControllerActive boolean
---@field cameraEnabled boolean
---@field microphoneEnabled boolean
---@field broadcastURL string
---@field lastError string
UnityEngine.Apple.ReplayKit.ReplayKit = {}
---@alias CS.UnityEngine.Apple.ReplayKit.ReplayKit UnityEngine.Apple.ReplayKit.ReplayKit
CS.UnityEngine.Apple.ReplayKit.ReplayKit = UnityEngine.Apple.ReplayKit.ReplayKit

---@overload fun(enableMicrophone: boolean, enableCamera: boolean) : boolean
---@overload fun(enableMicrophone: boolean) : boolean
---@return boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.StartRecording() end
---@overload fun(callback: UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback, enableMicrophone: boolean, enableCamera: boolean)
---@overload fun(callback: UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback, enableMicrophone: boolean)
---@param callback UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback
function UnityEngine.Apple.ReplayKit.ReplayKit.StartBroadcasting(callback) end
---@return boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.StopRecording() end
function UnityEngine.Apple.ReplayKit.ReplayKit.StopBroadcasting() end
function UnityEngine.Apple.ReplayKit.ReplayKit.PauseBroadcasting() end
function UnityEngine.Apple.ReplayKit.ReplayKit.ResumeBroadcasting() end
---@return boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.Preview() end
---@return boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.Discard() end
---@overload fun(posX: number, posY: number) : boolean
---@param posX number
---@param posY number
---@param width number
---@param height number
---@return boolean
function UnityEngine.Apple.ReplayKit.ReplayKit.ShowCameraPreviewAt(posX, posY, width, height) end
function UnityEngine.Apple.ReplayKit.ReplayKit.HideCameraPreview() end

---@class UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback : System.MulticastDelegate
UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback = {}
---@alias CS.UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback
CS.UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback = UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback
function UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback.New(object, method) end
---@param hasStarted boolean
---@param errorMessage string
function UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback:Invoke(hasStarted, errorMessage) end
---@param hasStarted boolean
---@param errorMessage string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback:BeginInvoke(hasStarted, errorMessage, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Apple.ReplayKit.ReplayKit.BroadcastStatusCallback:EndInvoke(result) end

---@class UnityEngine.CrashReportHandler.CrashReportHandler : System.Object
---@field enableCaptureExceptions boolean
---@field logBufferSize number
UnityEngine.CrashReportHandler.CrashReportHandler = {}
---@alias CS.UnityEngine.CrashReportHandler.CrashReportHandler UnityEngine.CrashReportHandler.CrashReportHandler
CS.UnityEngine.CrashReportHandler.CrashReportHandler = UnityEngine.CrashReportHandler.CrashReportHandler

---@param key string
---@return string
function UnityEngine.CrashReportHandler.CrashReportHandler.GetUserMetadata(key) end
---@param key string
---@param value string
function UnityEngine.CrashReportHandler.CrashReportHandler.SetUserMetadata(key, value) end

---@class UnityEngine.Playables.PlayableDirector : UnityEngine.Behaviour
---@field state UnityEngine.Playables.PlayState
---@field extrapolationMode UnityEngine.Playables.DirectorWrapMode
---@field playableAsset UnityEngine.Playables.PlayableAsset
---@field playableGraph UnityEngine.Playables.PlayableGraph
---@field playOnAwake boolean
---@field timeUpdateMode UnityEngine.Playables.DirectorUpdateMode
---@field time number
---@field initialTime number
---@field duration number
UnityEngine.Playables.PlayableDirector = {}
---@alias CS.UnityEngine.Playables.PlayableDirector UnityEngine.Playables.PlayableDirector
CS.UnityEngine.Playables.PlayableDirector = UnityEngine.Playables.PlayableDirector

---@return UnityEngine.Playables.PlayableDirector
function UnityEngine.Playables.PlayableDirector.New() end
function UnityEngine.Playables.PlayableDirector:DeferredEvaluate() end
---@overload fun(self: UnityEngine.Playables.PlayableDirector, asset: UnityEngine.Playables.PlayableAsset)
---@overload fun(self: UnityEngine.Playables.PlayableDirector, asset: UnityEngine.Playables.PlayableAsset, mode: UnityEngine.Playables.DirectorWrapMode)
function UnityEngine.Playables.PlayableDirector:Play() end
---@param key UnityEngine.Object
---@param value UnityEngine.Object
function UnityEngine.Playables.PlayableDirector:SetGenericBinding(key, value) end
function UnityEngine.Playables.PlayableDirector:Evaluate() end
function UnityEngine.Playables.PlayableDirector:Stop() end
function UnityEngine.Playables.PlayableDirector:Pause() end
function UnityEngine.Playables.PlayableDirector:Resume() end
function UnityEngine.Playables.PlayableDirector:RebuildGraph() end
---@param id UnityEngine.PropertyName
function UnityEngine.Playables.PlayableDirector:ClearReferenceValue(id) end
---@param id UnityEngine.PropertyName
---@param value UnityEngine.Object
function UnityEngine.Playables.PlayableDirector:SetReferenceValue(id, value) end
---@param id UnityEngine.PropertyName
---@param out_idValid boolean
---@return UnityEngine.Object,boolean
function UnityEngine.Playables.PlayableDirector:GetReferenceValue(id, out_idValid) end
---@param key UnityEngine.Object
---@return UnityEngine.Object
function UnityEngine.Playables.PlayableDirector:GetGenericBinding(key) end
---@param key UnityEngine.Object
function UnityEngine.Playables.PlayableDirector:ClearGenericBinding(key) end
function UnityEngine.Playables.PlayableDirector:RebindPlayableGraphOutputs() end

---@class UnityEngine.Social : System.Object
---@field Active UnityEngine.SocialPlatforms.ISocialPlatform
---@field localUser UnityEngine.SocialPlatforms.ILocalUser
UnityEngine.Social = {}
---@alias CS.UnityEngine.Social UnityEngine.Social
CS.UnityEngine.Social = UnityEngine.Social

---@param userIDs System.String[]
---@param callback System.Action
function UnityEngine.Social.LoadUsers(userIDs, callback) end
---@param achievementID string
---@param progress number
---@param callback System.Action
function UnityEngine.Social.ReportProgress(achievementID, progress, callback) end
---@param callback System.Action
function UnityEngine.Social.LoadAchievementDescriptions(callback) end
---@param callback System.Action
function UnityEngine.Social.LoadAchievements(callback) end
---@param score number
---@param board string
---@param callback System.Action
function UnityEngine.Social.ReportScore(score, board, callback) end
---@param leaderboardID string
---@param callback System.Action
function UnityEngine.Social.LoadScores(leaderboardID, callback) end
---@return UnityEngine.SocialPlatforms.ILeaderboard
function UnityEngine.Social.CreateLeaderboard() end
---@return UnityEngine.SocialPlatforms.IAchievement
function UnityEngine.Social.CreateAchievement() end
function UnityEngine.Social.ShowAchievementsUI() end
function UnityEngine.Social.ShowLeaderboardUI() end

---@class UnityEngine.SocialPlatforms.Local : System.Object
---@field localUser UnityEngine.SocialPlatforms.ILocalUser
UnityEngine.SocialPlatforms.Local = {}
---@alias CS.UnityEngine.SocialPlatforms.Local UnityEngine.SocialPlatforms.Local
CS.UnityEngine.SocialPlatforms.Local = UnityEngine.SocialPlatforms.Local

---@return UnityEngine.SocialPlatforms.Local
function UnityEngine.SocialPlatforms.Local.New() end
---@param userIDs System.String[]
---@param callback System.Action
function UnityEngine.SocialPlatforms.Local:LoadUsers(userIDs, callback) end
---@param id string
---@param progress number
---@param callback System.Action
function UnityEngine.SocialPlatforms.Local:ReportProgress(id, progress, callback) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.Local:LoadAchievementDescriptions(callback) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.Local:LoadAchievements(callback) end
---@param score number
---@param board string
---@param callback System.Action
function UnityEngine.SocialPlatforms.Local:ReportScore(score, board, callback) end
---@param leaderboardID string
---@param callback System.Action
function UnityEngine.SocialPlatforms.Local:LoadScores(leaderboardID, callback) end
function UnityEngine.SocialPlatforms.Local:ShowAchievementsUI() end
function UnityEngine.SocialPlatforms.Local:ShowLeaderboardUI() end
---@return UnityEngine.SocialPlatforms.ILeaderboard
function UnityEngine.SocialPlatforms.Local:CreateLeaderboard() end
---@return UnityEngine.SocialPlatforms.IAchievement
function UnityEngine.SocialPlatforms.Local:CreateAchievement() end

---@class UnityEngine.SocialPlatforms.ActivePlatform : System.Object
UnityEngine.SocialPlatforms.ActivePlatform = {}
---@alias CS.UnityEngine.SocialPlatforms.ActivePlatform UnityEngine.SocialPlatforms.ActivePlatform
CS.UnityEngine.SocialPlatforms.ActivePlatform = UnityEngine.SocialPlatforms.ActivePlatform


---@class UnityEngine.SocialPlatforms.ISocialPlatform
---@field localUser UnityEngine.SocialPlatforms.ILocalUser
UnityEngine.SocialPlatforms.ISocialPlatform = {}
---@alias CS.UnityEngine.SocialPlatforms.ISocialPlatform UnityEngine.SocialPlatforms.ISocialPlatform
CS.UnityEngine.SocialPlatforms.ISocialPlatform = UnityEngine.SocialPlatforms.ISocialPlatform

---@param userIDs System.String[]
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:LoadUsers(userIDs, callback) end
---@param achievementID string
---@param progress number
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:ReportProgress(achievementID, progress, callback) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:LoadAchievementDescriptions(callback) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:LoadAchievements(callback) end
---@return UnityEngine.SocialPlatforms.IAchievement
function UnityEngine.SocialPlatforms.ISocialPlatform:CreateAchievement() end
---@param score number
---@param board string
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:ReportScore(score, board, callback) end
---@overload fun(self: UnityEngine.SocialPlatforms.ISocialPlatform, leaderboardID: string, callback: System.Action)
---@param board UnityEngine.SocialPlatforms.ILeaderboard
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:LoadScores(board, callback) end
---@return UnityEngine.SocialPlatforms.ILeaderboard
function UnityEngine.SocialPlatforms.ISocialPlatform:CreateLeaderboard() end
function UnityEngine.SocialPlatforms.ISocialPlatform:ShowAchievementsUI() end
function UnityEngine.SocialPlatforms.ISocialPlatform:ShowLeaderboardUI() end
---@overload fun(self: UnityEngine.SocialPlatforms.ISocialPlatform, user: UnityEngine.SocialPlatforms.ILocalUser, callback: System.Action)
---@param user UnityEngine.SocialPlatforms.ILocalUser
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:Authenticate(user, callback) end
---@param user UnityEngine.SocialPlatforms.ILocalUser
---@param callback System.Action
function UnityEngine.SocialPlatforms.ISocialPlatform:LoadFriends(user, callback) end
---@param board UnityEngine.SocialPlatforms.ILeaderboard
---@return boolean
function UnityEngine.SocialPlatforms.ISocialPlatform:GetLoading(board) end

---@class UnityEngine.SocialPlatforms.ILocalUser
---@field friends UnityEngine.SocialPlatforms.IUserProfile[]
---@field authenticated boolean
---@field underage boolean
UnityEngine.SocialPlatforms.ILocalUser = {}
---@alias CS.UnityEngine.SocialPlatforms.ILocalUser UnityEngine.SocialPlatforms.ILocalUser
CS.UnityEngine.SocialPlatforms.ILocalUser = UnityEngine.SocialPlatforms.ILocalUser

---@overload fun(self: UnityEngine.SocialPlatforms.ILocalUser, callback: System.Action)
---@param callback System.Action
function UnityEngine.SocialPlatforms.ILocalUser:Authenticate(callback) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.ILocalUser:LoadFriends(callback) end

---@class UnityEngine.SocialPlatforms.UserState
---@field Online UnityEngine.SocialPlatforms.UserState
---@field OnlineAndAway UnityEngine.SocialPlatforms.UserState
---@field OnlineAndBusy UnityEngine.SocialPlatforms.UserState
---@field Offline UnityEngine.SocialPlatforms.UserState
---@field Playing UnityEngine.SocialPlatforms.UserState
UnityEngine.SocialPlatforms.UserState = {}
---@alias CS.UnityEngine.SocialPlatforms.UserState UnityEngine.SocialPlatforms.UserState
CS.UnityEngine.SocialPlatforms.UserState = UnityEngine.SocialPlatforms.UserState


---@class UnityEngine.SocialPlatforms.IUserProfile
---@field userName string
---@field id string
---@field isFriend boolean
---@field state UnityEngine.SocialPlatforms.UserState
---@field image UnityEngine.Texture2D
UnityEngine.SocialPlatforms.IUserProfile = {}
---@alias CS.UnityEngine.SocialPlatforms.IUserProfile UnityEngine.SocialPlatforms.IUserProfile
CS.UnityEngine.SocialPlatforms.IUserProfile = UnityEngine.SocialPlatforms.IUserProfile


---@class UnityEngine.SocialPlatforms.IAchievement
---@field id string
---@field percentCompleted number
---@field completed boolean
---@field hidden boolean
---@field lastReportedDate System.DateTime
UnityEngine.SocialPlatforms.IAchievement = {}
---@alias CS.UnityEngine.SocialPlatforms.IAchievement UnityEngine.SocialPlatforms.IAchievement
CS.UnityEngine.SocialPlatforms.IAchievement = UnityEngine.SocialPlatforms.IAchievement

---@param callback System.Action
function UnityEngine.SocialPlatforms.IAchievement:ReportProgress(callback) end

---@class UnityEngine.SocialPlatforms.IAchievementDescription
---@field id string
---@field title string
---@field image UnityEngine.Texture2D
---@field achievedDescription string
---@field unachievedDescription string
---@field hidden boolean
---@field points number
UnityEngine.SocialPlatforms.IAchievementDescription = {}
---@alias CS.UnityEngine.SocialPlatforms.IAchievementDescription UnityEngine.SocialPlatforms.IAchievementDescription
CS.UnityEngine.SocialPlatforms.IAchievementDescription = UnityEngine.SocialPlatforms.IAchievementDescription


---@class UnityEngine.SocialPlatforms.IScore
---@field leaderboardID string
---@field value number
---@field date System.DateTime
---@field formattedValue string
---@field userID string
---@field rank number
UnityEngine.SocialPlatforms.IScore = {}
---@alias CS.UnityEngine.SocialPlatforms.IScore UnityEngine.SocialPlatforms.IScore
CS.UnityEngine.SocialPlatforms.IScore = UnityEngine.SocialPlatforms.IScore

---@param callback System.Action
function UnityEngine.SocialPlatforms.IScore:ReportScore(callback) end

---@class UnityEngine.SocialPlatforms.UserScope
---@field Global UnityEngine.SocialPlatforms.UserScope
---@field FriendsOnly UnityEngine.SocialPlatforms.UserScope
UnityEngine.SocialPlatforms.UserScope = {}
---@alias CS.UnityEngine.SocialPlatforms.UserScope UnityEngine.SocialPlatforms.UserScope
CS.UnityEngine.SocialPlatforms.UserScope = UnityEngine.SocialPlatforms.UserScope


---@class UnityEngine.SocialPlatforms.TimeScope
---@field Today UnityEngine.SocialPlatforms.TimeScope
---@field Week UnityEngine.SocialPlatforms.TimeScope
---@field AllTime UnityEngine.SocialPlatforms.TimeScope
UnityEngine.SocialPlatforms.TimeScope = {}
---@alias CS.UnityEngine.SocialPlatforms.TimeScope UnityEngine.SocialPlatforms.TimeScope
CS.UnityEngine.SocialPlatforms.TimeScope = UnityEngine.SocialPlatforms.TimeScope


---@class UnityEngine.SocialPlatforms.Range : System.ValueType
---@field from number
---@field count number
UnityEngine.SocialPlatforms.Range = {}
---@alias CS.UnityEngine.SocialPlatforms.Range UnityEngine.SocialPlatforms.Range
CS.UnityEngine.SocialPlatforms.Range = UnityEngine.SocialPlatforms.Range

---@param fromValue number
---@param valueCount number
---@return UnityEngine.SocialPlatforms.Range
function UnityEngine.SocialPlatforms.Range.New(fromValue, valueCount) end

---@class UnityEngine.SocialPlatforms.ILeaderboard
---@field loading boolean
---@field id string
---@field userScope UnityEngine.SocialPlatforms.UserScope
---@field range UnityEngine.SocialPlatforms.Range
---@field timeScope UnityEngine.SocialPlatforms.TimeScope
---@field localUserScore UnityEngine.SocialPlatforms.IScore
---@field maxRange number
---@field scores UnityEngine.SocialPlatforms.IScore[]
---@field title string
UnityEngine.SocialPlatforms.ILeaderboard = {}
---@alias CS.UnityEngine.SocialPlatforms.ILeaderboard UnityEngine.SocialPlatforms.ILeaderboard
CS.UnityEngine.SocialPlatforms.ILeaderboard = UnityEngine.SocialPlatforms.ILeaderboard

---@param userIDs System.String[]
function UnityEngine.SocialPlatforms.ILeaderboard:SetUserFilter(userIDs) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.ILeaderboard:LoadScores(callback) end

---@class UnityEngine.SocialPlatforms.Impl.LocalUser : UnityEngine.SocialPlatforms.Impl.UserProfile
---@field friends UnityEngine.SocialPlatforms.IUserProfile[]
---@field authenticated boolean
---@field underage boolean
UnityEngine.SocialPlatforms.Impl.LocalUser = {}
---@alias CS.UnityEngine.SocialPlatforms.Impl.LocalUser UnityEngine.SocialPlatforms.Impl.LocalUser
CS.UnityEngine.SocialPlatforms.Impl.LocalUser = UnityEngine.SocialPlatforms.Impl.LocalUser

---@return UnityEngine.SocialPlatforms.Impl.LocalUser
function UnityEngine.SocialPlatforms.Impl.LocalUser.New() end
---@overload fun(self: UnityEngine.SocialPlatforms.Impl.LocalUser, callback: System.Action)
---@param callback System.Action
function UnityEngine.SocialPlatforms.Impl.LocalUser:Authenticate(callback) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.Impl.LocalUser:LoadFriends(callback) end
---@param friends UnityEngine.SocialPlatforms.IUserProfile[]
function UnityEngine.SocialPlatforms.Impl.LocalUser:SetFriends(friends) end
---@param value boolean
function UnityEngine.SocialPlatforms.Impl.LocalUser:SetAuthenticated(value) end
---@param value boolean
function UnityEngine.SocialPlatforms.Impl.LocalUser:SetUnderage(value) end

---@class UnityEngine.SocialPlatforms.Impl.UserProfile : System.Object
---@field userName string
---@field id string
---@field gameId string
---@field isFriend boolean
---@field state UnityEngine.SocialPlatforms.UserState
---@field image UnityEngine.Texture2D
UnityEngine.SocialPlatforms.Impl.UserProfile = {}
---@alias CS.UnityEngine.SocialPlatforms.Impl.UserProfile UnityEngine.SocialPlatforms.Impl.UserProfile
CS.UnityEngine.SocialPlatforms.Impl.UserProfile = UnityEngine.SocialPlatforms.Impl.UserProfile

---@overload fun() : UnityEngine.SocialPlatforms.Impl.UserProfile
---@overload fun(name: string, id: string, friend: boolean) : UnityEngine.SocialPlatforms.Impl.UserProfile
---@overload fun(name: string, id: string, friend: boolean, state: UnityEngine.SocialPlatforms.UserState, image: UnityEngine.Texture2D) : UnityEngine.SocialPlatforms.Impl.UserProfile
---@param name string
---@param teamId string
---@param gameId string
---@param friend boolean
---@param state UnityEngine.SocialPlatforms.UserState
---@param image UnityEngine.Texture2D
---@return UnityEngine.SocialPlatforms.Impl.UserProfile
function UnityEngine.SocialPlatforms.Impl.UserProfile.New(name, teamId, gameId, friend, state, image) end
---@return string
function UnityEngine.SocialPlatforms.Impl.UserProfile:ToString() end
---@param name string
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetUserName(name) end
---@param id string
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetUserID(id) end
---@param id string
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetLegacyUserID(id) end
---@param id string
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetUserGameID(id) end
---@param image UnityEngine.Texture2D
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetImage(image) end
---@param value boolean
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetIsFriend(value) end
---@param state UnityEngine.SocialPlatforms.UserState
function UnityEngine.SocialPlatforms.Impl.UserProfile:SetState(state) end

---@class UnityEngine.SocialPlatforms.Impl.Achievement : System.Object
---@field id string
---@field percentCompleted number
---@field completed boolean
---@field hidden boolean
---@field lastReportedDate System.DateTime
UnityEngine.SocialPlatforms.Impl.Achievement = {}
---@alias CS.UnityEngine.SocialPlatforms.Impl.Achievement UnityEngine.SocialPlatforms.Impl.Achievement
CS.UnityEngine.SocialPlatforms.Impl.Achievement = UnityEngine.SocialPlatforms.Impl.Achievement

---@overload fun(id: string, percentCompleted: number, completed: boolean, hidden: boolean, lastReportedDate: System.DateTime) : UnityEngine.SocialPlatforms.Impl.Achievement
---@overload fun(id: string, percent: number) : UnityEngine.SocialPlatforms.Impl.Achievement
---@return UnityEngine.SocialPlatforms.Impl.Achievement
function UnityEngine.SocialPlatforms.Impl.Achievement.New() end
---@return string
function UnityEngine.SocialPlatforms.Impl.Achievement:ToString() end
---@param callback System.Action
function UnityEngine.SocialPlatforms.Impl.Achievement:ReportProgress(callback) end
---@param value boolean
function UnityEngine.SocialPlatforms.Impl.Achievement:SetCompleted(value) end
---@param value boolean
function UnityEngine.SocialPlatforms.Impl.Achievement:SetHidden(value) end
---@param date System.DateTime
function UnityEngine.SocialPlatforms.Impl.Achievement:SetLastReportedDate(date) end

---@class UnityEngine.SocialPlatforms.Impl.AchievementDescription : System.Object
---@field id string
---@field title string
---@field image UnityEngine.Texture2D
---@field achievedDescription string
---@field unachievedDescription string
---@field hidden boolean
---@field points number
UnityEngine.SocialPlatforms.Impl.AchievementDescription = {}
---@alias CS.UnityEngine.SocialPlatforms.Impl.AchievementDescription UnityEngine.SocialPlatforms.Impl.AchievementDescription
CS.UnityEngine.SocialPlatforms.Impl.AchievementDescription = UnityEngine.SocialPlatforms.Impl.AchievementDescription

---@param id string
---@param title string
---@param image UnityEngine.Texture2D
---@param achievedDescription string
---@param unachievedDescription string
---@param hidden boolean
---@param points number
---@return UnityEngine.SocialPlatforms.Impl.AchievementDescription
function UnityEngine.SocialPlatforms.Impl.AchievementDescription.New(id, title, image, achievedDescription, unachievedDescription, hidden, points) end
---@return string
function UnityEngine.SocialPlatforms.Impl.AchievementDescription:ToString() end
---@param image UnityEngine.Texture2D
function UnityEngine.SocialPlatforms.Impl.AchievementDescription:SetImage(image) end

---@class UnityEngine.SocialPlatforms.Impl.Score : System.Object
---@field leaderboardID string
---@field value number
---@field date System.DateTime
---@field formattedValue string
---@field userID string
---@field rank number
UnityEngine.SocialPlatforms.Impl.Score = {}
---@alias CS.UnityEngine.SocialPlatforms.Impl.Score UnityEngine.SocialPlatforms.Impl.Score
CS.UnityEngine.SocialPlatforms.Impl.Score = UnityEngine.SocialPlatforms.Impl.Score

---@overload fun() : UnityEngine.SocialPlatforms.Impl.Score
---@overload fun(leaderboardID: string, value: number) : UnityEngine.SocialPlatforms.Impl.Score
---@param leaderboardID string
---@param value number
---@param userID string
---@param date System.DateTime
---@param formattedValue string
---@param rank number
---@return UnityEngine.SocialPlatforms.Impl.Score
function UnityEngine.SocialPlatforms.Impl.Score.New(leaderboardID, value, userID, date, formattedValue, rank) end
---@return string
function UnityEngine.SocialPlatforms.Impl.Score:ToString() end
---@param callback System.Action
function UnityEngine.SocialPlatforms.Impl.Score:ReportScore(callback) end
---@param date System.DateTime
function UnityEngine.SocialPlatforms.Impl.Score:SetDate(date) end
---@param value string
function UnityEngine.SocialPlatforms.Impl.Score:SetFormattedValue(value) end
---@param userID string
function UnityEngine.SocialPlatforms.Impl.Score:SetUserID(userID) end
---@param rank number
function UnityEngine.SocialPlatforms.Impl.Score:SetRank(rank) end

---@class UnityEngine.SocialPlatforms.Impl.Leaderboard : System.Object
---@field loading boolean
---@field id string
---@field userScope UnityEngine.SocialPlatforms.UserScope
---@field range UnityEngine.SocialPlatforms.Range
---@field timeScope UnityEngine.SocialPlatforms.TimeScope
---@field localUserScore UnityEngine.SocialPlatforms.IScore
---@field maxRange number
---@field scores UnityEngine.SocialPlatforms.IScore[]
---@field title string
UnityEngine.SocialPlatforms.Impl.Leaderboard = {}
---@alias CS.UnityEngine.SocialPlatforms.Impl.Leaderboard UnityEngine.SocialPlatforms.Impl.Leaderboard
CS.UnityEngine.SocialPlatforms.Impl.Leaderboard = UnityEngine.SocialPlatforms.Impl.Leaderboard

---@return UnityEngine.SocialPlatforms.Impl.Leaderboard
function UnityEngine.SocialPlatforms.Impl.Leaderboard.New() end
---@param userIDs System.String[]
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetUserFilter(userIDs) end
---@return string
function UnityEngine.SocialPlatforms.Impl.Leaderboard:ToString() end
---@param callback System.Action
function UnityEngine.SocialPlatforms.Impl.Leaderboard:LoadScores(callback) end
---@param score UnityEngine.SocialPlatforms.IScore
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetLocalUserScore(score) end
---@param maxRange number
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetMaxRange(maxRange) end
---@param scores UnityEngine.SocialPlatforms.IScore[]
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetScores(scores) end
---@param title string
function UnityEngine.SocialPlatforms.Impl.Leaderboard:SetTitle(title) end
---@return System.String[]
function UnityEngine.SocialPlatforms.Impl.Leaderboard:GetUserFilter() end

---@class UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData : System.ValueType
---@field userName string
---@field teamID string
---@field gameID string
---@field isFriend number
---@field image UnityEngine.Texture2D
UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData = {}
---@alias CS.UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData
CS.UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData = UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData

---@return UnityEngine.SocialPlatforms.Impl.UserProfile
function UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData:ToUserProfile() end
---@param ref_array UnityEngine.SocialPlatforms.Impl.UserProfile[]
---@param number number
---@return ,UnityEngine.SocialPlatforms.Impl.UserProfile[]
function UnityEngine.SocialPlatforms.GameCenter.GcUserProfileData:AddToArray(ref_array, number) end

---@class UnityEngine.SocialPlatforms.GameCenter.GcAchievementDescriptionData : System.ValueType
---@field m_Identifier string
---@field m_Title string
---@field m_Image UnityEngine.Texture2D
---@field m_AchievedDescription string
---@field m_UnachievedDescription string
---@field m_Hidden number
---@field m_Points number
UnityEngine.SocialPlatforms.GameCenter.GcAchievementDescriptionData = {}
---@alias CS.UnityEngine.SocialPlatforms.GameCenter.GcAchievementDescriptionData UnityEngine.SocialPlatforms.GameCenter.GcAchievementDescriptionData
CS.UnityEngine.SocialPlatforms.GameCenter.GcAchievementDescriptionData = UnityEngine.SocialPlatforms.GameCenter.GcAchievementDescriptionData

---@return UnityEngine.SocialPlatforms.Impl.AchievementDescription
function UnityEngine.SocialPlatforms.GameCenter.GcAchievementDescriptionData:ToAchievementDescription() end

---@class UnityEngine.SocialPlatforms.GameCenter.GcAchievementData : System.ValueType
---@field m_Identifier string
---@field m_PercentCompleted number
---@field m_Completed number
---@field m_Hidden number
---@field m_LastReportedDate number
UnityEngine.SocialPlatforms.GameCenter.GcAchievementData = {}
---@alias CS.UnityEngine.SocialPlatforms.GameCenter.GcAchievementData UnityEngine.SocialPlatforms.GameCenter.GcAchievementData
CS.UnityEngine.SocialPlatforms.GameCenter.GcAchievementData = UnityEngine.SocialPlatforms.GameCenter.GcAchievementData

---@return UnityEngine.SocialPlatforms.Impl.Achievement
function UnityEngine.SocialPlatforms.GameCenter.GcAchievementData:ToAchievement() end

---@class UnityEngine.SocialPlatforms.GameCenter.GcScoreData : System.ValueType
---@field m_Category string
---@field m_ValueLow number
---@field m_ValueHigh number
---@field m_Date number
---@field m_FormattedValue string
---@field m_PlayerID string
---@field m_Rank number
UnityEngine.SocialPlatforms.GameCenter.GcScoreData = {}
---@alias CS.UnityEngine.SocialPlatforms.GameCenter.GcScoreData UnityEngine.SocialPlatforms.GameCenter.GcScoreData
CS.UnityEngine.SocialPlatforms.GameCenter.GcScoreData = UnityEngine.SocialPlatforms.GameCenter.GcScoreData

---@return UnityEngine.SocialPlatforms.Impl.Score
function UnityEngine.SocialPlatforms.GameCenter.GcScoreData:ToScore() end

---@class UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform : System.Object
---@field localUser UnityEngine.SocialPlatforms.ILocalUser
UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform = {}
---@alias CS.UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
CS.UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform = UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform

---@return UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform.New() end
---@param callback System.Action
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform.ResetAllAchievements(callback) end
---@param value boolean
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform.ShowDefaultAchievementCompletionBanner(value) end
---@overload fun(leaderboardID: string, timeScope: UnityEngine.SocialPlatforms.TimeScope)
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ShowLeaderboardUI() end
---@param callback System.Action
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadAchievementDescriptions(callback) end
---@param id string
---@param progress number
---@param callback System.Action
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ReportProgress(id, progress, callback) end
---@param callback System.Action
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadAchievements(callback) end
---@param score number
---@param board string
---@param callback System.Action
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ReportScore(score, board, callback) end
---@overload fun(self: UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform, category: string, callback: System.Action)
---@param board UnityEngine.SocialPlatforms.ILeaderboard
---@param callback System.Action
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadScores(board, callback) end
---@param board UnityEngine.SocialPlatforms.ILeaderboard
---@return boolean
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:GetLoading(board) end
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:ShowAchievementsUI() end
---@param userIds System.String[]
---@param callback System.Action
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:LoadUsers(userIds, callback) end
---@return UnityEngine.SocialPlatforms.ILeaderboard
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:CreateLeaderboard() end
---@return UnityEngine.SocialPlatforms.IAchievement
function UnityEngine.SocialPlatforms.GameCenter.GameCenterPlatform:CreateAchievement() end

---@class UnityEngine.SocialPlatforms.GameCenter.GcLeaderboard : System.Object
UnityEngine.SocialPlatforms.GameCenter.GcLeaderboard = {}
---@alias CS.UnityEngine.SocialPlatforms.GameCenter.GcLeaderboard UnityEngine.SocialPlatforms.GameCenter.GcLeaderboard
CS.UnityEngine.SocialPlatforms.GameCenter.GcLeaderboard = UnityEngine.SocialPlatforms.GameCenter.GcLeaderboard


---@class UnityEngine.Grid : UnityEngine.GridLayout
---@field cellSize UnityEngine.Vector3
---@field cellGap UnityEngine.Vector3
---@field cellLayout UnityEngine.GridLayout.CellLayout
---@field cellSwizzle UnityEngine.GridLayout.CellSwizzle
UnityEngine.Grid = {}
---@alias CS.UnityEngine.Grid UnityEngine.Grid
CS.UnityEngine.Grid = UnityEngine.Grid

---@return UnityEngine.Grid
function UnityEngine.Grid.New() end
---@param swizzle UnityEngine.GridLayout.CellSwizzle
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Grid.Swizzle(swizzle, position) end
---@param swizzle UnityEngine.GridLayout.CellSwizzle
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Grid.InverseSwizzle(swizzle, position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Grid:GetCellCenterLocal(position) end
---@param position UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.Grid:GetCellCenterWorld(position) end

---@class UnityEngine.GridLayout : UnityEngine.Behaviour
---@field cellSize UnityEngine.Vector3
---@field cellGap UnityEngine.Vector3
---@field cellLayout UnityEngine.GridLayout.CellLayout
---@field cellSwizzle UnityEngine.GridLayout.CellSwizzle
UnityEngine.GridLayout = {}
---@alias CS.UnityEngine.GridLayout UnityEngine.GridLayout
CS.UnityEngine.GridLayout = UnityEngine.GridLayout

---@return UnityEngine.GridLayout
function UnityEngine.GridLayout.New() end
---@overload fun(self: UnityEngine.GridLayout, cellPosition: UnityEngine.Vector3Int) : UnityEngine.Bounds
---@param origin UnityEngine.Vector3
---@param size UnityEngine.Vector3
---@return UnityEngine.Bounds
function UnityEngine.GridLayout:GetBoundsLocal(origin, size) end
---@param cellPosition UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:CellToLocal(cellPosition) end
---@param localPosition UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.GridLayout:LocalToCell(localPosition) end
---@param cellPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:CellToLocalInterpolated(cellPosition) end
---@param localPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:LocalToCellInterpolated(localPosition) end
---@param cellPosition UnityEngine.Vector3Int
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:CellToWorld(cellPosition) end
---@param worldPosition UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.GridLayout:WorldToCell(worldPosition) end
---@param localPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:LocalToWorld(localPosition) end
---@param worldPosition UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:WorldToLocal(worldPosition) end
---@return UnityEngine.Vector3
function UnityEngine.GridLayout:GetLayoutCellCenter() end

---@class UnityEngine.GridLayout.CellLayout
---@field Rectangle UnityEngine.GridLayout.CellLayout
---@field Hexagon UnityEngine.GridLayout.CellLayout
---@field Isometric UnityEngine.GridLayout.CellLayout
---@field IsometricZAsY UnityEngine.GridLayout.CellLayout
UnityEngine.GridLayout.CellLayout = {}
---@alias CS.UnityEngine.GridLayout.CellLayout UnityEngine.GridLayout.CellLayout
CS.UnityEngine.GridLayout.CellLayout = UnityEngine.GridLayout.CellLayout


---@class UnityEngine.GridLayout.CellSwizzle
---@field XYZ UnityEngine.GridLayout.CellSwizzle
---@field XZY UnityEngine.GridLayout.CellSwizzle
---@field YXZ UnityEngine.GridLayout.CellSwizzle
---@field YZX UnityEngine.GridLayout.CellSwizzle
---@field ZXY UnityEngine.GridLayout.CellSwizzle
---@field ZYX UnityEngine.GridLayout.CellSwizzle
UnityEngine.GridLayout.CellSwizzle = {}
---@alias CS.UnityEngine.GridLayout.CellSwizzle UnityEngine.GridLayout.CellSwizzle
CS.UnityEngine.GridLayout.CellSwizzle = UnityEngine.GridLayout.CellSwizzle


---@class UnityEngine.DrawHandler : System.MulticastDelegate
UnityEngine.DrawHandler = {}
---@alias CS.UnityEngine.DrawHandler UnityEngine.DrawHandler
CS.UnityEngine.DrawHandler = UnityEngine.DrawHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.DrawHandler
function UnityEngine.DrawHandler.New(object, method) end
---@param style UnityEngine.GUIStyle
---@param rect UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param states UnityEngine.DrawStates
---@return boolean
function UnityEngine.DrawHandler:Invoke(style, rect, content, states) end
---@param style UnityEngine.GUIStyle
---@param rect UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param states UnityEngine.DrawStates
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.DrawHandler:BeginInvoke(style, rect, content, states, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function UnityEngine.DrawHandler:EndInvoke(result) end

---@class UnityEngine.DrawStates : System.ValueType
---@field controlId number
---@field isHover boolean
---@field isActive boolean
---@field on boolean
---@field hasKeyboardFocus boolean
---@field hasTextInput boolean
---@field drawSelectionAsComposition boolean
---@field cursorFirst number
---@field cursorLast number
---@field cursorColor UnityEngine.Color
---@field selectionColor UnityEngine.Color
UnityEngine.DrawStates = {}
---@alias CS.UnityEngine.DrawStates UnityEngine.DrawStates
CS.UnityEngine.DrawStates = UnityEngine.DrawStates

---@overload fun(isHover: boolean, isActive: boolean, on: boolean, hasKeyboardFocus: boolean) : UnityEngine.DrawStates
---@overload fun(controlId: number, isHover: boolean, isActive: boolean, on: boolean, hasKeyboardFocus: boolean) : UnityEngine.DrawStates
---@param controlId number
---@param isHover boolean
---@param isActive boolean
---@param on boolean
---@param hasKeyboardFocus boolean
---@param drawSelectionAsComposition boolean
---@param cursorFirst number
---@param cursorLast number
---@param cursorColor UnityEngine.Color
---@param selectionColor UnityEngine.Color
---@return UnityEngine.DrawStates
function UnityEngine.DrawStates.New(controlId, isHover, isActive, on, hasKeyboardFocus, drawSelectionAsComposition, cursorFirst, cursorLast, cursorColor, selectionColor) end

---@class UnityEngine.Event : System.Object
---@field current UnityEngine.Event
---@field rawType UnityEngine.EventType
---@field mousePosition UnityEngine.Vector2
---@field delta UnityEngine.Vector2
---@field pointerType UnityEngine.PointerType
---@field button number
---@field modifiers UnityEngine.EventModifiers
---@field pressure number
---@field twist number
---@field tilt UnityEngine.Vector2
---@field penStatus UnityEngine.PenStatus
---@field clickCount number
---@field character System.Char
---@field keyCode UnityEngine.KeyCode
---@field displayIndex number
---@field type UnityEngine.EventType
---@field commandName string
---@field shift boolean
---@field control boolean
---@field alt boolean
---@field command boolean
---@field capsLock boolean
---@field numeric boolean
---@field functionKey boolean
---@field isKey boolean
---@field isMouse boolean
---@field isScrollWheel boolean
UnityEngine.Event = {}
---@alias CS.UnityEngine.Event UnityEngine.Event
CS.UnityEngine.Event = UnityEngine.Event

---@overload fun() : UnityEngine.Event
---@overload fun(displayIndex: number) : UnityEngine.Event
---@param other UnityEngine.Event
---@return UnityEngine.Event
function UnityEngine.Event.New(other) end
---@param outEvent UnityEngine.Event
---@return boolean
function UnityEngine.Event.PopEvent(outEvent) end
---@return number
function UnityEngine.Event.GetEventCount() end
---@param key string
---@return UnityEngine.Event
function UnityEngine.Event.KeyboardEvent(key) end
---@param controlID number
---@return UnityEngine.EventType
function UnityEngine.Event:GetTypeForControl(controlID) end
---@return number
function UnityEngine.Event:GetHashCode() end
---@param obj System.Object
---@return boolean
function UnityEngine.Event:Equals(obj) end
---@return string
function UnityEngine.Event:ToString() end
function UnityEngine.Event:Use() end

---@class UnityEngine.EventCommandNames : System.Object
---@field Cut string
---@field Copy string
---@field Paste string
---@field SelectAll string
---@field DeselectAll string
---@field InvertSelection string
---@field Duplicate string
---@field Rename string
---@field Delete string
---@field SoftDelete string
---@field Find string
---@field SelectChildren string
---@field SelectPrefabRoot string
---@field UndoRedoPerformed string
---@field OnLostFocus string
---@field NewKeyboardFocus string
---@field ModifierKeysChanged string
---@field EyeDropperUpdate string
---@field EyeDropperClicked string
---@field EyeDropperCancelled string
---@field ColorPickerChanged string
---@field FrameSelected string
---@field FrameSelectedWithLock string
UnityEngine.EventCommandNames = {}
---@alias CS.UnityEngine.EventCommandNames UnityEngine.EventCommandNames
CS.UnityEngine.EventCommandNames = UnityEngine.EventCommandNames


---@class UnityEngine.EventType
---@field MouseDown UnityEngine.EventType
---@field MouseUp UnityEngine.EventType
---@field MouseMove UnityEngine.EventType
---@field MouseDrag UnityEngine.EventType
---@field KeyDown UnityEngine.EventType
---@field KeyUp UnityEngine.EventType
---@field ScrollWheel UnityEngine.EventType
---@field Repaint UnityEngine.EventType
---@field Layout UnityEngine.EventType
---@field DragUpdated UnityEngine.EventType
---@field DragPerform UnityEngine.EventType
---@field DragExited UnityEngine.EventType
---@field Ignore UnityEngine.EventType
---@field Used UnityEngine.EventType
---@field ValidateCommand UnityEngine.EventType
---@field ExecuteCommand UnityEngine.EventType
---@field ContextClick UnityEngine.EventType
---@field MouseEnterWindow UnityEngine.EventType
---@field MouseLeaveWindow UnityEngine.EventType
---@field TouchDown UnityEngine.EventType
---@field TouchUp UnityEngine.EventType
---@field TouchMove UnityEngine.EventType
---@field TouchEnter UnityEngine.EventType
---@field TouchLeave UnityEngine.EventType
---@field TouchStationary UnityEngine.EventType
UnityEngine.EventType = {}
---@alias CS.UnityEngine.EventType UnityEngine.EventType
CS.UnityEngine.EventType = UnityEngine.EventType


---@class UnityEngine.EventModifiers
---@field None UnityEngine.EventModifiers
---@field Shift UnityEngine.EventModifiers
---@field Control UnityEngine.EventModifiers
---@field Alt UnityEngine.EventModifiers
---@field Command UnityEngine.EventModifiers
---@field Numeric UnityEngine.EventModifiers
---@field CapsLock UnityEngine.EventModifiers
---@field FunctionKey UnityEngine.EventModifiers
UnityEngine.EventModifiers = {}
---@alias CS.UnityEngine.EventModifiers UnityEngine.EventModifiers
CS.UnityEngine.EventModifiers = UnityEngine.EventModifiers


---@class UnityEngine.PointerType
---@field Mouse UnityEngine.PointerType
---@field Touch UnityEngine.PointerType
---@field Pen UnityEngine.PointerType
UnityEngine.PointerType = {}
---@alias CS.UnityEngine.PointerType UnityEngine.PointerType
CS.UnityEngine.PointerType = UnityEngine.PointerType


---@class UnityEngine.EventInterests : System.ValueType
---@field wantsMouseMove boolean
---@field wantsMouseEnterLeaveWindow boolean
---@field wantsLessLayoutEvents boolean
UnityEngine.EventInterests = {}
---@alias CS.UnityEngine.EventInterests UnityEngine.EventInterests
CS.UnityEngine.EventInterests = UnityEngine.EventInterests

---@param type UnityEngine.EventType
---@return boolean
function UnityEngine.EventInterests:WantsEvent(type) end
---@param type UnityEngine.EventType
---@return boolean
function UnityEngine.EventInterests:WantsLayoutPass(type) end

---@class UnityEngine.GUI : System.Object
---@field color UnityEngine.Color
---@field backgroundColor UnityEngine.Color
---@field contentColor UnityEngine.Color
---@field changed boolean
---@field enabled boolean
---@field depth number
---@field skin UnityEngine.GUISkin
---@field matrix UnityEngine.Matrix4x4
---@field tooltip string
UnityEngine.GUI = {}
---@alias CS.UnityEngine.GUI UnityEngine.GUI
CS.UnityEngine.GUI = UnityEngine.GUI

---@return UnityEngine.GUI
function UnityEngine.GUI.New() end
---@param name string
function UnityEngine.GUI.SetNextControlName(name) end
---@return string
function UnityEngine.GUI.GetNameOfFocusedControl() end
---@param name string
function UnityEngine.GUI.FocusControl(name) end
---@overload fun(position: UnityEngine.Rect)
function UnityEngine.GUI.DragWindow() end
---@param windowID number
function UnityEngine.GUI.BringWindowToFront(windowID) end
---@param windowID number
function UnityEngine.GUI.BringWindowToBack(windowID) end
---@param windowID number
function UnityEngine.GUI.FocusWindow(windowID) end
function UnityEngine.GUI.UnfocusWindow() end
---@overload fun(position: UnityEngine.Rect, text: string)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture)
---@overload fun(position: UnityEngine.Rect, content: UnityEngine.GUIContent)
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, style: UnityEngine.GUIStyle)
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
function UnityEngine.GUI.Label(position, content, style) end
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, scaleMode: UnityEngine.ScaleMode)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, scaleMode: UnityEngine.ScaleMode, alphaBlend: boolean)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, scaleMode: UnityEngine.ScaleMode, alphaBlend: boolean, imageAspect: number)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, scaleMode: UnityEngine.ScaleMode, alphaBlend: boolean, imageAspect: number, color: UnityEngine.Color, borderWidth: number, borderRadius: number)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, scaleMode: UnityEngine.ScaleMode, alphaBlend: boolean, imageAspect: number, color: UnityEngine.Color, borderWidths: UnityEngine.Vector4, borderRadius: number)
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@param scaleMode UnityEngine.ScaleMode
---@param alphaBlend boolean
---@param imageAspect number
---@param color UnityEngine.Color
---@param borderWidths UnityEngine.Vector4
---@param borderRadiuses UnityEngine.Vector4
function UnityEngine.GUI.DrawTexture(position, image, scaleMode, alphaBlend, imageAspect, color, borderWidths, borderRadiuses) end
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, texCoords: UnityEngine.Rect)
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@param texCoords UnityEngine.Rect
---@param alphaBlend boolean
function UnityEngine.GUI.DrawTextureWithTexCoords(position, image, texCoords, alphaBlend) end
---@overload fun(position: UnityEngine.Rect, text: string)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture)
---@overload fun(position: UnityEngine.Rect, content: UnityEngine.GUIContent)
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, style: UnityEngine.GUIStyle)
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
function UnityEngine.GUI.Box(position, content, style) end
---@overload fun(position: UnityEngine.Rect, text: string) : boolean
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture) : boolean
---@overload fun(position: UnityEngine.Rect, content: UnityEngine.GUIContent) : boolean
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle) : boolean
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, style: UnityEngine.GUIStyle) : boolean
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return boolean
function UnityEngine.GUI.Button(position, content, style) end
---@overload fun(position: UnityEngine.Rect, text: string) : boolean
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture) : boolean
---@overload fun(position: UnityEngine.Rect, content: UnityEngine.GUIContent) : boolean
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle) : boolean
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, style: UnityEngine.GUIStyle) : boolean
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return boolean
function UnityEngine.GUI.RepeatButton(position, content, style) end
---@overload fun(position: UnityEngine.Rect, text: string) : string
---@overload fun(position: UnityEngine.Rect, text: string, maxLength: number) : string
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle) : string
---@param position UnityEngine.Rect
---@param text string
---@param maxLength number
---@param style UnityEngine.GUIStyle
---@return string
function UnityEngine.GUI.TextField(position, text, maxLength, style) end
---@overload fun(position: UnityEngine.Rect, password: string, maskChar: System.Char) : string
---@overload fun(position: UnityEngine.Rect, password: string, maskChar: System.Char, maxLength: number) : string
---@overload fun(position: UnityEngine.Rect, password: string, maskChar: System.Char, style: UnityEngine.GUIStyle) : string
---@param position UnityEngine.Rect
---@param password string
---@param maskChar System.Char
---@param maxLength number
---@param style UnityEngine.GUIStyle
---@return string
function UnityEngine.GUI.PasswordField(position, password, maskChar, maxLength, style) end
---@overload fun(position: UnityEngine.Rect, text: string) : string
---@overload fun(position: UnityEngine.Rect, text: string, maxLength: number) : string
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle) : string
---@param position UnityEngine.Rect
---@param text string
---@param maxLength number
---@param style UnityEngine.GUIStyle
---@return string
function UnityEngine.GUI.TextArea(position, text, maxLength, style) end
---@overload fun(position: UnityEngine.Rect, value: boolean, text: string) : boolean
---@overload fun(position: UnityEngine.Rect, value: boolean, image: UnityEngine.Texture) : boolean
---@overload fun(position: UnityEngine.Rect, value: boolean, content: UnityEngine.GUIContent) : boolean
---@overload fun(position: UnityEngine.Rect, value: boolean, text: string, style: UnityEngine.GUIStyle) : boolean
---@overload fun(position: UnityEngine.Rect, value: boolean, image: UnityEngine.Texture, style: UnityEngine.GUIStyle) : boolean
---@overload fun(position: UnityEngine.Rect, value: boolean, content: UnityEngine.GUIContent, style: UnityEngine.GUIStyle) : boolean
---@param position UnityEngine.Rect
---@param id number
---@param value boolean
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return boolean
function UnityEngine.GUI.Toggle(position, id, value, content, style) end
---@overload fun(position: UnityEngine.Rect, selected: number, texts: System.String[]) : number
---@overload fun(position: UnityEngine.Rect, selected: number, images: UnityEngine.Texture[]) : number
---@overload fun(position: UnityEngine.Rect, selected: number, contents: UnityEngine.GUIContent[]) : number
---@overload fun(position: UnityEngine.Rect, selected: number, texts: System.String[], style: UnityEngine.GUIStyle) : number
---@overload fun(position: UnityEngine.Rect, selected: number, images: UnityEngine.Texture[], style: UnityEngine.GUIStyle) : number
---@overload fun(position: UnityEngine.Rect, selected: number, contents: UnityEngine.GUIContent[], style: UnityEngine.GUIStyle) : number
---@param position UnityEngine.Rect
---@param selected number
---@param contents UnityEngine.GUIContent[]
---@param style UnityEngine.GUIStyle
---@param buttonSize UnityEngine.GUI.ToolbarButtonSize
---@return number
function UnityEngine.GUI.Toolbar(position, selected, contents, style, buttonSize) end
---@overload fun(position: UnityEngine.Rect, selected: number, texts: System.String[], xCount: number) : number
---@overload fun(position: UnityEngine.Rect, selected: number, images: UnityEngine.Texture[], xCount: number) : number
---@overload fun(position: UnityEngine.Rect, selected: number, content: UnityEngine.GUIContent[], xCount: number) : number
---@overload fun(position: UnityEngine.Rect, selected: number, texts: System.String[], xCount: number, style: UnityEngine.GUIStyle) : number
---@overload fun(position: UnityEngine.Rect, selected: number, images: UnityEngine.Texture[], xCount: number, style: UnityEngine.GUIStyle) : number
---@param position UnityEngine.Rect
---@param selected number
---@param contents UnityEngine.GUIContent[]
---@param xCount number
---@param style UnityEngine.GUIStyle
---@return number
function UnityEngine.GUI.SelectionGrid(position, selected, contents, xCount, style) end
---@overload fun(position: UnityEngine.Rect, value: number, leftValue: number, rightValue: number) : number
---@overload fun(position: UnityEngine.Rect, value: number, leftValue: number, rightValue: number, slider: UnityEngine.GUIStyle, thumb: UnityEngine.GUIStyle) : number
---@param position UnityEngine.Rect
---@param value number
---@param leftValue number
---@param rightValue number
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param thumbExtent UnityEngine.GUIStyle
---@return number
function UnityEngine.GUI.HorizontalSlider(position, value, leftValue, rightValue, slider, thumb, thumbExtent) end
---@overload fun(position: UnityEngine.Rect, value: number, topValue: number, bottomValue: number) : number
---@overload fun(position: UnityEngine.Rect, value: number, topValue: number, bottomValue: number, slider: UnityEngine.GUIStyle, thumb: UnityEngine.GUIStyle) : number
---@param position UnityEngine.Rect
---@param value number
---@param topValue number
---@param bottomValue number
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param thumbExtent UnityEngine.GUIStyle
---@return number
function UnityEngine.GUI.VerticalSlider(position, value, topValue, bottomValue, slider, thumb, thumbExtent) end
---@param position UnityEngine.Rect
---@param value number
---@param size number
---@param start number
---@param _end number
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param horiz boolean
---@param id number
---@param thumbExtent UnityEngine.GUIStyle
---@return number
function UnityEngine.GUI.Slider(position, value, size, start, _end, slider, thumb, horiz, id, thumbExtent) end
---@overload fun(position: UnityEngine.Rect, value: number, size: number, leftValue: number, rightValue: number) : number
---@param position UnityEngine.Rect
---@param value number
---@param size number
---@param leftValue number
---@param rightValue number
---@param style UnityEngine.GUIStyle
---@return number
function UnityEngine.GUI.HorizontalScrollbar(position, value, size, leftValue, rightValue, style) end
---@overload fun(position: UnityEngine.Rect, value: number, size: number, topValue: number, bottomValue: number) : number
---@param position UnityEngine.Rect
---@param value number
---@param size number
---@param topValue number
---@param bottomValue number
---@param style UnityEngine.GUIStyle
---@return number
function UnityEngine.GUI.VerticalScrollbar(position, value, size, topValue, bottomValue, style) end
---@overload fun(position: UnityEngine.Rect, scrollOffset: UnityEngine.Vector2, renderOffset: UnityEngine.Vector2, resetOffset: boolean)
---@param position UnityEngine.Rect
function UnityEngine.GUI.BeginClip(position) end
---@overload fun(position: UnityEngine.Rect)
---@overload fun(position: UnityEngine.Rect, text: string)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture)
---@overload fun(position: UnityEngine.Rect, content: UnityEngine.GUIContent)
---@overload fun(position: UnityEngine.Rect, style: UnityEngine.GUIStyle)
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle)
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture, style: UnityEngine.GUIStyle)
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
function UnityEngine.GUI.BeginGroup(position, content, style) end
function UnityEngine.GUI.EndGroup() end
function UnityEngine.GUI.EndClip() end
---@overload fun(position: UnityEngine.Rect, scrollPosition: UnityEngine.Vector2, viewRect: UnityEngine.Rect) : UnityEngine.Vector2
---@overload fun(position: UnityEngine.Rect, scrollPosition: UnityEngine.Vector2, viewRect: UnityEngine.Rect, alwaysShowHorizontal: boolean, alwaysShowVertical: boolean) : UnityEngine.Vector2
---@overload fun(position: UnityEngine.Rect, scrollPosition: UnityEngine.Vector2, viewRect: UnityEngine.Rect, horizontalScrollbar: UnityEngine.GUIStyle, verticalScrollbar: UnityEngine.GUIStyle) : UnityEngine.Vector2
---@param position UnityEngine.Rect
---@param scrollPosition UnityEngine.Vector2
---@param viewRect UnityEngine.Rect
---@param alwaysShowHorizontal boolean
---@param alwaysShowVertical boolean
---@param horizontalScrollbar UnityEngine.GUIStyle
---@param verticalScrollbar UnityEngine.GUIStyle
---@return UnityEngine.Vector2
function UnityEngine.GUI.BeginScrollView(position, scrollPosition, viewRect, alwaysShowHorizontal, alwaysShowVertical, horizontalScrollbar, verticalScrollbar) end
---@overload fun()
---@param handleScrollWheel boolean
function UnityEngine.GUI.EndScrollView(handleScrollWheel) end
---@param position UnityEngine.Rect
function UnityEngine.GUI.ScrollTo(position) end
---@param position UnityEngine.Rect
---@param maxDelta number
---@return boolean
function UnityEngine.GUI.ScrollTowards(position, maxDelta) end
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, text: string) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, image: UnityEngine.Texture) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, content: UnityEngine.GUIContent) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, text: string, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, image: UnityEngine.Texture, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@param id number
---@param clientRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param title UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return UnityEngine.Rect
function UnityEngine.GUI.Window(id, clientRect, func, title, style) end
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, text: string) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, image: UnityEngine.Texture) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, content: UnityEngine.GUIContent) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, text: string, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@overload fun(id: number, clientRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, image: UnityEngine.Texture, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@param id number
---@param clientRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return UnityEngine.Rect
function UnityEngine.GUI.ModalWindow(id, clientRect, func, content, style) end

---@class UnityEngine.GUI.ToolbarButtonSize
---@field Fixed UnityEngine.GUI.ToolbarButtonSize
---@field FitToContents UnityEngine.GUI.ToolbarButtonSize
UnityEngine.GUI.ToolbarButtonSize = {}
---@alias CS.UnityEngine.GUI.ToolbarButtonSize UnityEngine.GUI.ToolbarButtonSize
CS.UnityEngine.GUI.ToolbarButtonSize = UnityEngine.GUI.ToolbarButtonSize


---@class UnityEngine.GUI.CustomSelectionGridItemGUI : System.MulticastDelegate
UnityEngine.GUI.CustomSelectionGridItemGUI = {}
---@alias CS.UnityEngine.GUI.CustomSelectionGridItemGUI UnityEngine.GUI.CustomSelectionGridItemGUI
CS.UnityEngine.GUI.CustomSelectionGridItemGUI = UnityEngine.GUI.CustomSelectionGridItemGUI

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.GUI.CustomSelectionGridItemGUI
function UnityEngine.GUI.CustomSelectionGridItemGUI.New(object, method) end
---@param item number
---@param rect UnityEngine.Rect
---@param style UnityEngine.GUIStyle
---@param controlID number
function UnityEngine.GUI.CustomSelectionGridItemGUI:Invoke(item, rect, style, controlID) end
---@param item number
---@param rect UnityEngine.Rect
---@param style UnityEngine.GUIStyle
---@param controlID number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.GUI.CustomSelectionGridItemGUI:BeginInvoke(item, rect, style, controlID, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.GUI.CustomSelectionGridItemGUI:EndInvoke(result) end

---@class UnityEngine.GUI.WindowFunction : System.MulticastDelegate
UnityEngine.GUI.WindowFunction = {}
---@alias CS.UnityEngine.GUI.WindowFunction UnityEngine.GUI.WindowFunction
CS.UnityEngine.GUI.WindowFunction = UnityEngine.GUI.WindowFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.GUI.WindowFunction
function UnityEngine.GUI.WindowFunction.New(object, method) end
---@param id number
function UnityEngine.GUI.WindowFunction:Invoke(id) end
---@param id number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.GUI.WindowFunction:BeginInvoke(id, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.GUI.WindowFunction:EndInvoke(result) end

---@class UnityEngine.GUI.Scope : System.Object
UnityEngine.GUI.Scope = {}
---@alias CS.UnityEngine.GUI.Scope UnityEngine.GUI.Scope
CS.UnityEngine.GUI.Scope = UnityEngine.GUI.Scope

function UnityEngine.GUI.Scope:Dispose() end

---@class UnityEngine.GUI.GroupScope : UnityEngine.GUI.Scope
UnityEngine.GUI.GroupScope = {}
---@alias CS.UnityEngine.GUI.GroupScope UnityEngine.GUI.GroupScope
CS.UnityEngine.GUI.GroupScope = UnityEngine.GUI.GroupScope

---@overload fun(position: UnityEngine.Rect) : UnityEngine.GUI.GroupScope
---@overload fun(position: UnityEngine.Rect, text: string) : UnityEngine.GUI.GroupScope
---@overload fun(position: UnityEngine.Rect, image: UnityEngine.Texture) : UnityEngine.GUI.GroupScope
---@overload fun(position: UnityEngine.Rect, content: UnityEngine.GUIContent) : UnityEngine.GUI.GroupScope
---@overload fun(position: UnityEngine.Rect, style: UnityEngine.GUIStyle) : UnityEngine.GUI.GroupScope
---@overload fun(position: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle) : UnityEngine.GUI.GroupScope
---@param position UnityEngine.Rect
---@param image UnityEngine.Texture
---@param style UnityEngine.GUIStyle
---@return UnityEngine.GUI.GroupScope
function UnityEngine.GUI.GroupScope.New(position, image, style) end

---@class UnityEngine.GUI.ScrollViewScope : UnityEngine.GUI.Scope
---@field scrollPosition UnityEngine.Vector2
---@field handleScrollWheel boolean
UnityEngine.GUI.ScrollViewScope = {}
---@alias CS.UnityEngine.GUI.ScrollViewScope UnityEngine.GUI.ScrollViewScope
CS.UnityEngine.GUI.ScrollViewScope = UnityEngine.GUI.ScrollViewScope

---@overload fun(position: UnityEngine.Rect, scrollPosition: UnityEngine.Vector2, viewRect: UnityEngine.Rect) : UnityEngine.GUI.ScrollViewScope
---@overload fun(position: UnityEngine.Rect, scrollPosition: UnityEngine.Vector2, viewRect: UnityEngine.Rect, alwaysShowHorizontal: boolean, alwaysShowVertical: boolean) : UnityEngine.GUI.ScrollViewScope
---@overload fun(position: UnityEngine.Rect, scrollPosition: UnityEngine.Vector2, viewRect: UnityEngine.Rect, horizontalScrollbar: UnityEngine.GUIStyle, verticalScrollbar: UnityEngine.GUIStyle) : UnityEngine.GUI.ScrollViewScope
---@param position UnityEngine.Rect
---@param scrollPosition UnityEngine.Vector2
---@param viewRect UnityEngine.Rect
---@param alwaysShowHorizontal boolean
---@param alwaysShowVertical boolean
---@param horizontalScrollbar UnityEngine.GUIStyle
---@param verticalScrollbar UnityEngine.GUIStyle
---@return UnityEngine.GUI.ScrollViewScope
function UnityEngine.GUI.ScrollViewScope.New(position, scrollPosition, viewRect, alwaysShowHorizontal, alwaysShowVertical, horizontalScrollbar, verticalScrollbar) end

---@class UnityEngine.GUI.ClipScope : UnityEngine.GUI.Scope
UnityEngine.GUI.ClipScope = {}
---@alias CS.UnityEngine.GUI.ClipScope UnityEngine.GUI.ClipScope
CS.UnityEngine.GUI.ClipScope = UnityEngine.GUI.ClipScope

---@param position UnityEngine.Rect
---@return UnityEngine.GUI.ClipScope
function UnityEngine.GUI.ClipScope.New(position) end

---@class UnityEngine.GUI.ColorScope : System.ValueType
UnityEngine.GUI.ColorScope = {}
---@alias CS.UnityEngine.GUI.ColorScope UnityEngine.GUI.ColorScope
CS.UnityEngine.GUI.ColorScope = UnityEngine.GUI.ColorScope

---@overload fun(newColor: UnityEngine.Color) : UnityEngine.GUI.ColorScope
---@param r number
---@param g number
---@param b number
---@param a number
---@return UnityEngine.GUI.ColorScope
function UnityEngine.GUI.ColorScope.New(r, g, b, a) end
function UnityEngine.GUI.ColorScope:Dispose() end

---@class UnityEngine.GUI.BackgroundColorScope : System.ValueType
UnityEngine.GUI.BackgroundColorScope = {}
---@alias CS.UnityEngine.GUI.BackgroundColorScope UnityEngine.GUI.BackgroundColorScope
CS.UnityEngine.GUI.BackgroundColorScope = UnityEngine.GUI.BackgroundColorScope

---@overload fun(newColor: UnityEngine.Color) : UnityEngine.GUI.BackgroundColorScope
---@param r number
---@param g number
---@param b number
---@param a number
---@return UnityEngine.GUI.BackgroundColorScope
function UnityEngine.GUI.BackgroundColorScope.New(r, g, b, a) end
function UnityEngine.GUI.BackgroundColorScope:Dispose() end

---@class UnityEngine.GUIClip : System.Object
UnityEngine.GUIClip = {}
---@alias CS.UnityEngine.GUIClip UnityEngine.GUIClip
CS.UnityEngine.GUIClip = UnityEngine.GUIClip

---@return UnityEngine.GUIClip
function UnityEngine.GUIClip.New() end
---@overload fun(pos: UnityEngine.Vector2) : UnityEngine.Vector2
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIClip.Unclip(rect) end
---@overload fun(absolutePos: UnityEngine.Vector2) : UnityEngine.Vector2
---@param absoluteRect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIClip.Clip(absoluteRect) end
---@overload fun(pos: UnityEngine.Vector2) : UnityEngine.Vector2
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIClip.UnclipToWindow(rect) end
---@overload fun(absolutePos: UnityEngine.Vector2) : UnityEngine.Vector2
---@param absoluteRect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIClip.ClipToWindow(absoluteRect) end
---@return UnityEngine.Vector2
function UnityEngine.GUIClip.GetAbsoluteMousePosition() end

---@class UnityEngine.GUIClip.ParentClipScope : System.ValueType
UnityEngine.GUIClip.ParentClipScope = {}
---@alias CS.UnityEngine.GUIClip.ParentClipScope UnityEngine.GUIClip.ParentClipScope
CS.UnityEngine.GUIClip.ParentClipScope = UnityEngine.GUIClip.ParentClipScope

---@param objectTransform UnityEngine.Matrix4x4
---@param clipRect UnityEngine.Rect
---@return UnityEngine.GUIClip.ParentClipScope
function UnityEngine.GUIClip.ParentClipScope.New(objectTransform, clipRect) end
function UnityEngine.GUIClip.ParentClipScope:Dispose() end

---@class UnityEngine.GUIContent : System.Object
---@field none UnityEngine.GUIContent
---@field text string
---@field image UnityEngine.Texture
---@field tooltip string
UnityEngine.GUIContent = {}
---@alias CS.UnityEngine.GUIContent UnityEngine.GUIContent
CS.UnityEngine.GUIContent = UnityEngine.GUIContent

---@overload fun() : UnityEngine.GUIContent
---@overload fun(text: string) : UnityEngine.GUIContent
---@overload fun(image: UnityEngine.Texture) : UnityEngine.GUIContent
---@overload fun(text: string, image: UnityEngine.Texture) : UnityEngine.GUIContent
---@overload fun(text: string, tooltip: string) : UnityEngine.GUIContent
---@overload fun(image: UnityEngine.Texture, tooltip: string) : UnityEngine.GUIContent
---@overload fun(text: string, image: UnityEngine.Texture, tooltip: string) : UnityEngine.GUIContent
---@param src UnityEngine.GUIContent
---@return UnityEngine.GUIContent
function UnityEngine.GUIContent.New(src) end
---@return string
function UnityEngine.GUIContent:ToString() end

---@class UnityEngine.GUIDebugger : System.Object
---@field active boolean
UnityEngine.GUIDebugger = {}
---@alias CS.UnityEngine.GUIDebugger UnityEngine.GUIDebugger
CS.UnityEngine.GUIDebugger = UnityEngine.GUIDebugger

---@return UnityEngine.GUIDebugger
function UnityEngine.GUIDebugger.New() end
---@param rect UnityEngine.Rect
---@param left number
---@param right number
---@param top number
---@param bottom number
---@param style UnityEngine.GUIStyle
function UnityEngine.GUIDebugger.LogLayoutEntry(rect, left, right, top, bottom, style) end
---@param rect UnityEngine.Rect
---@param left number
---@param right number
---@param top number
---@param bottom number
---@param style UnityEngine.GUIStyle
---@param isVertical boolean
function UnityEngine.GUIDebugger.LogLayoutGroupEntry(rect, left, right, top, bottom, style, isVertical) end
function UnityEngine.GUIDebugger.LogLayoutEndGroup() end
---@param targetTypeAssemblyQualifiedName string
---@param path string
---@param position UnityEngine.Rect
function UnityEngine.GUIDebugger.LogBeginProperty(targetTypeAssemblyQualifiedName, path, position) end
function UnityEngine.GUIDebugger.LogEndProperty() end

---@class UnityEngine.GUIElement : System.Object
UnityEngine.GUIElement = {}
---@alias CS.UnityEngine.GUIElement UnityEngine.GUIElement
CS.UnityEngine.GUIElement = UnityEngine.GUIElement

---@return UnityEngine.GUIElement
function UnityEngine.GUIElement.New() end

---@class UnityEngine.ScaleMode
---@field StretchToFill UnityEngine.ScaleMode
---@field ScaleAndCrop UnityEngine.ScaleMode
---@field ScaleToFit UnityEngine.ScaleMode
UnityEngine.ScaleMode = {}
---@alias CS.UnityEngine.ScaleMode UnityEngine.ScaleMode
CS.UnityEngine.ScaleMode = UnityEngine.ScaleMode


---@class UnityEngine.FocusType
---@field Keyboard UnityEngine.FocusType
---@field Passive UnityEngine.FocusType
UnityEngine.FocusType = {}
---@alias CS.UnityEngine.FocusType UnityEngine.FocusType
CS.UnityEngine.FocusType = UnityEngine.FocusType
