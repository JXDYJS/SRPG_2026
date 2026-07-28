---@meta

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.InputSystem.Editor.InputActionImporter.AddObjectToAsset
function UnityEngine.InputSystem.Editor.InputActionImporter.AddObjectToAsset.New(object, method) end
---@param identifier string
---@param subAsset UnityEngine.Object
---@param icon UnityEngine.Texture2D
function UnityEngine.InputSystem.Editor.InputActionImporter.AddObjectToAsset:Invoke(identifier, subAsset, icon) end
---@param identifier string
---@param subAsset UnityEngine.Object
---@param icon UnityEngine.Texture2D
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.InputSystem.Editor.InputActionImporter.AddObjectToAsset:BeginInvoke(identifier, subAsset, icon, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.InputSystem.Editor.InputActionImporter.AddObjectToAsset:EndInvoke(result) end

---@class UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor : UnityEditor.AssetPostprocessor
UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor
CS.UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor = UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor

---@return UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor
function UnityEngine.InputSystem.Editor.InputActionImporter.InputActionJsonNameModifierAssetProcessor.New() end

---@class UnityEngine.InputSystem.Editor.InputControlPicker.Mode
---@field PickControl UnityEngine.InputSystem.Editor.InputControlPicker.Mode
---@field PickDevice UnityEngine.InputSystem.Editor.InputControlPicker.Mode
UnityEngine.InputSystem.Editor.InputControlPicker.Mode = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputControlPicker.Mode UnityEngine.InputSystem.Editor.InputControlPicker.Mode
CS.UnityEngine.InputSystem.Editor.InputControlPicker.Mode = UnityEngine.InputSystem.Editor.InputControlPicker.Mode


---@class UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI : UnityEngine.InputSystem.Editor.AdvancedDropdownGUI
UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI
CS.UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI = UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI

---@param owner UnityEngine.InputSystem.Editor.InputControlPickerDropdown
---@return UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI
function UnityEngine.InputSystem.Editor.InputControlPickerDropdown.InputControlPickerGUI.New(owner) end

---@class UnityEngine.InputSystem.Editor.InputControlPickerDropdown.Styles : System.Object
---@field waitingForInputLabel UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.InputControlPickerDropdown.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputControlPickerDropdown.Styles UnityEngine.InputSystem.Editor.InputControlPickerDropdown.Styles
CS.UnityEngine.InputSystem.Editor.InputControlPickerDropdown.Styles = UnityEngine.InputSystem.Editor.InputControlPickerDropdown.Styles


---@class UnityEngine.InputSystem.Editor.InputDebuggerWindow.Contents : System.Object
---@field optionsContent UnityEngine.GUIContent
---@field touchSimulationContent UnityEngine.GUIContent
---@field pasteDeviceDescriptionAsDevice UnityEngine.GUIContent
---@field addDevicesNotSupportedByProjectContent UnityEngine.GUIContent
---@field diagnosticsModeContent UnityEngine.GUIContent
---@field openDebugView UnityEngine.GUIContent
---@field copyDeviceDescription UnityEngine.GUIContent
---@field copyLayoutAsJSON UnityEngine.GUIContent
---@field createDeviceFromLayout UnityEngine.GUIContent
---@field generateCodeFromLayout UnityEngine.GUIContent
---@field removeDevice UnityEngine.GUIContent
---@field enableDevice UnityEngine.GUIContent
---@field disableDevice UnityEngine.GUIContent
---@field syncDevice UnityEngine.GUIContent
---@field softResetDevice UnityEngine.GUIContent
---@field hardResetDevice UnityEngine.GUIContent
UnityEngine.InputSystem.Editor.InputDebuggerWindow.Contents = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.Contents UnityEngine.InputSystem.Editor.InputDebuggerWindow.Contents
CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.Contents = UnityEngine.InputSystem.Editor.InputDebuggerWindow.Contents


---@class UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView : UnityEditor.IMGUI.Controls.TreeView
---@field actionsItem UnityEditor.IMGUI.Controls.TreeViewItem
---@field devicesItem UnityEditor.IMGUI.Controls.TreeViewItem
---@field layoutsItem UnityEditor.IMGUI.Controls.TreeViewItem
---@field settingsItem UnityEditor.IMGUI.Controls.TreeViewItem
---@field metricsItem UnityEditor.IMGUI.Controls.TreeViewItem
---@field usersItem UnityEditor.IMGUI.Controls.TreeViewItem
UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView
CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView = UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView

---@param state UnityEditor.IMGUI.Controls.TreeViewState
---@return UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView
function UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.New(state) end

---@class UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Styles : System.Object
---@field notFoundHelpText string
---@field toolbarTextField UnityEngine.GUIStyle
---@field toolbarButton UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Styles UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Styles
CS.UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Styles = UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Styles


---@class UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Contents : System.Object
---@field clearContent UnityEngine.GUIContent
---@field pauseContent UnityEngine.GUIContent
---@field saveContent UnityEngine.GUIContent
---@field loadContent UnityEngine.GUIContent
---@field recordFramesContent UnityEngine.GUIContent
---@field stateContent UnityEngine.GUIContent
---@field editorStateContent UnityEngine.GUIContent
---@field playerStateContent UnityEngine.GUIContent
UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Contents = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Contents UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Contents
CS.UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Contents = UnityEngine.InputSystem.Editor.InputDeviceDebuggerWindow.Contents


---@class UnityEngine.InputSystem.Editor.Dialog.Result
---@field Save UnityEngine.InputSystem.Editor.Dialog.Result
---@field Cancel UnityEngine.InputSystem.Editor.Dialog.Result
---@field Discard UnityEngine.InputSystem.Editor.Dialog.Result
---@field Delete UnityEngine.InputSystem.Editor.Dialog.Result
UnityEngine.InputSystem.Editor.Dialog.Result = {}
---@alias CS.UnityEngine.InputSystem.Editor.Dialog.Result UnityEngine.InputSystem.Editor.Dialog.Result
CS.UnityEngine.InputSystem.Editor.Dialog.Result = UnityEngine.InputSystem.Editor.Dialog.Result


---@class UnityEngine.InputSystem.Editor.Dialog.InputActionAsset : System.Object
UnityEngine.InputSystem.Editor.Dialog.InputActionAsset = {}
---@alias CS.UnityEngine.InputSystem.Editor.Dialog.InputActionAsset UnityEngine.InputSystem.Editor.Dialog.InputActionAsset
CS.UnityEngine.InputSystem.Editor.Dialog.InputActionAsset = UnityEngine.InputSystem.Editor.Dialog.InputActionAsset

---@param path string
---@return UnityEngine.InputSystem.Editor.Dialog.Result
function UnityEngine.InputSystem.Editor.Dialog.InputActionAsset.ShowSaveChanges(path) end
---@param path string
---@return UnityEngine.InputSystem.Editor.Dialog.Result
function UnityEngine.InputSystem.Editor.Dialog.InputActionAsset.ShowDiscardUnsavedChanges(path) end
---@param path string
---@return UnityEngine.InputSystem.Editor.Dialog.Result
function UnityEngine.InputSystem.Editor.Dialog.InputActionAsset.ShowCreateAndOverwriteExistingAsset(path) end

---@class UnityEngine.InputSystem.Editor.Dialog.ControlScheme : System.Object
UnityEngine.InputSystem.Editor.Dialog.ControlScheme = {}
---@alias CS.UnityEngine.InputSystem.Editor.Dialog.ControlScheme UnityEngine.InputSystem.Editor.Dialog.ControlScheme
CS.UnityEngine.InputSystem.Editor.Dialog.ControlScheme = UnityEngine.InputSystem.Editor.Dialog.ControlScheme

---@param controlSchemeName string
---@return UnityEngine.InputSystem.Editor.Dialog.Result
function UnityEngine.InputSystem.Editor.Dialog.ControlScheme.ShowDeleteControlScheme(controlSchemeName) end

---@class UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.ControlSearchResult : System.ValueType
---@field controlPath string
---@field layout UnityEngine.InputSystem.Layouts.InputControlLayout
---@field item UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem
UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.ControlSearchResult = {}
---@alias CS.UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.ControlSearchResult UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.ControlSearchResult
CS.UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.ControlSearchResult = UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.ControlSearchResult


---@class UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.OptionalControl : System.ValueType
---@field name UnityEngine.InputSystem.Utilities.InternedString
---@field layout UnityEngine.InputSystem.Utilities.InternedString
UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.OptionalControl = {}
---@alias CS.UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.OptionalControl UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.OptionalControl
CS.UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.OptionalControl = UnityEngine.InputSystem.Editor.EditorInputControlLayoutCache.OptionalControl


---@class UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult
---@field InvalidPath UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult
---@field Cancelled UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult
---@field Valid UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult
UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult
CS.UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult = UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult


---@class UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult : System.ValueType
---@field result UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult
---@field relativePath string
UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult
CS.UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult = UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult

---@param result UnityEngine.InputSystem.Editor.InputAssetEditorUtils.DialogResult
---@param path string
---@return UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult
function UnityEngine.InputSystem.Editor.InputAssetEditorUtils.PromptResult.New(result, path) end

---@class UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting : System.Object
UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting
CS.UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting = UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting

---@return UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting
function UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting.New() end
---@param label string
---@param tooltip string
---@param defaultName string
---@param getValue System.Func
---@param setValue System.Action
---@param getDefaultValue System.Func
---@param defaultComesFromInputSettings boolean
---@param defaultInitializedValue number
function UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting:Initialize(label, tooltip, defaultName, getValue, setValue, getDefaultValue, defaultComesFromInputSettings, defaultInitializedValue) end
---@param root UnityEngine.UIElements.VisualElement
---@param onChangedCallback System.Action
function UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting:OnDrawVisualElements(root, onChangedCallback) end
function UnityEngine.InputSystem.Editor.InputParameterEditor.CustomOrDefaultSetting:OnGUI() end

---@class UnityEngine.InputSystem.Editor.AdvancedDropdownGUI.Styles : System.Object
---@field toolbarSearchField UnityEngine.GUIStyle
---@field itemStyle UnityEngine.GUIStyle
---@field richTextItemStyle UnityEngine.GUIStyle
---@field header UnityEngine.GUIStyle
---@field headerArrow UnityEngine.GUIStyle
---@field checkMark UnityEngine.GUIStyle
---@field arrowRightContent UnityEngine.GUIContent
---@field arrowLeftContent UnityEngine.GUIContent
UnityEngine.InputSystem.Editor.AdvancedDropdownGUI.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.AdvancedDropdownGUI.Styles UnityEngine.InputSystem.Editor.AdvancedDropdownGUI.Styles
CS.UnityEngine.InputSystem.Editor.AdvancedDropdownGUI.Styles = UnityEngine.InputSystem.Editor.AdvancedDropdownGUI.Styles


---@class UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem : UnityEngine.InputSystem.Editor.AdvancedDropdownItem
UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem
CS.UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem = UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem

---@param label string
---@return UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem
function UnityEngine.InputSystem.Editor.AdvancedDropdownItem.SeparatorDropdownItem.New(label) end

---@class UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState : System.Object
---@field itemId number
---@field selectedIndex number
---@field scroll UnityEngine.Vector2
UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState = {}
---@alias CS.UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState
CS.UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState = UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState

---@param item UnityEngine.InputSystem.Editor.AdvancedDropdownItem
---@return UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState
function UnityEngine.InputSystem.Editor.AdvancedDropdownState.AdvancedDropdownItemState.New(item) end

---@class UnityEngine.InputSystem.Editor.AdvancedDropdownWindow.Styles : System.Object
---@field background UnityEngine.GUIStyle
---@field previewHeader UnityEngine.GUIStyle
---@field previewText UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.AdvancedDropdownWindow.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.AdvancedDropdownWindow.Styles UnityEngine.InputSystem.Editor.AdvancedDropdownWindow.Styles
CS.UnityEngine.InputSystem.Editor.AdvancedDropdownWindow.Styles = UnityEngine.InputSystem.Editor.AdvancedDropdownWindow.Styles


---@class UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem : UnityEngine.InputSystem.Editor.AdvancedDropdownItem
UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem
CS.UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem = UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem

---@param path string
---@param menuPath string
---@return UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem
function UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem.New(path, menuPath) end
---@return string
function UnityEngine.InputSystem.Editor.MultiLevelDataSource.MultiLevelItem:ToString() end

---@class UnityEngine.InputSystem.Editor.GUIHelpers.Styles : System.Object
---@field lineSeparator UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.GUIHelpers.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.GUIHelpers.Styles UnityEngine.InputSystem.Editor.GUIHelpers.Styles
CS.UnityEngine.InputSystem.Editor.GUIHelpers.Styles = UnityEngine.InputSystem.Editor.GUIHelpers.Styles


---@class UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Name UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field DisplayName UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Layout UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Type UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Format UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Offset UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Bit UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Size UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Optimized UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field Value UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
---@field COUNT UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId
CS.UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId = UnityEngine.InputSystem.Editor.InputControlTreeView.ColumnId


---@class UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field control UnityEngine.InputSystem.InputControl
---@field layout UnityEngine.GUIContent
---@field format UnityEngine.GUIContent
---@field offset UnityEngine.GUIContent
---@field bit UnityEngine.GUIContent
---@field sizeInBits UnityEngine.GUIContent
---@field type UnityEngine.GUIContent
---@field optimized UnityEngine.GUIContent
---@field value UnityEngine.GUIContent
---@field values UnityEngine.GUIContent[]
UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem
CS.UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem = UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem

---@return UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem
function UnityEngine.InputSystem.Editor.InputControlTreeView.ControlItem.New() end

---@class UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
---@field Id UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
---@field Type UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
---@field Device UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
---@field Size UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
---@field Time UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
---@field Details UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
---@field COUNT UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId
CS.UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId = UnityEngine.InputSystem.Editor.InputEventTreeView.ColumnId


---@class UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field eventPtr UnityEngine.InputSystem.LowLevel.InputEventPtr
UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem
CS.UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem = UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem

---@return UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem
function UnityEngine.InputSystem.Editor.InputEventTreeView.EventItem.New() end

---@class UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field PlayerUpdateFrontBuffer UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field PlayerUpdateBackBuffer UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field EditorUpdateFrontBuffer UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field EditorUpdateBackBuffer UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field NoiseMaskBuffer UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field ResetMaskBuffer UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field COUNT UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
---@field Default UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector
CS.UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector = UnityEngine.InputSystem.Editor.InputStateWindow.BufferSelector


---@class UnityEngine.InputSystem.Editor.InputStateWindow.Styles : System.Object
---@field offsetLabel UnityEngine.GUIStyle
---@field hexLabel UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.InputStateWindow.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputStateWindow.Styles UnityEngine.InputSystem.Editor.InputStateWindow.Styles
CS.UnityEngine.InputSystem.Editor.InputStateWindow.Styles = UnityEngine.InputSystem.Editor.InputStateWindow.Styles


---@class UnityEngine.InputSystem.Editor.InputStateWindow.Contents : System.Object
---@field live UnityEngine.GUIContent
---@field showRawMemory UnityEngine.GUIContent
---@field showBits UnityEngine.GUIContent
---@field showDifferentOnly UnityEngine.GUIContent
---@field bufferChoices UnityEngine.GUIContent[]
UnityEngine.InputSystem.Editor.InputStateWindow.Contents = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputStateWindow.Contents UnityEngine.InputSystem.Editor.InputStateWindow.Contents
CS.UnityEngine.InputSystem.Editor.InputStateWindow.Contents = UnityEngine.InputSystem.Editor.InputStateWindow.Contents


---@class UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter : System.Object
UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter = {}
---@alias CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter
CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter = UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter


---@class UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors
UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors = {}
---@alias CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors
CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors = UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors

---@param message string
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors:Report(message) end

---@class UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IInputActionAssetVerifier
UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IInputActionAssetVerifier = {}
---@alias CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IInputActionAssetVerifier UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IInputActionAssetVerifier
CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IInputActionAssetVerifier = UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IInputActionAssetVerifier

---@param asset UnityEngine.InputSystem.InputActionAsset
---@param reporter UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IInputActionAssetVerifier:Verify(asset, reporter) end

---@class UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier : System.Object
---@field errors number
---@field isValid boolean
UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier = {}
---@alias CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier
CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier = UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier

---@param reporter UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors
---@return UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.New(reporter) end
---@param factory System.Func
---@return boolean
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.RegisterFactory(factory) end
---@param factory System.Func
---@return boolean
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.UnregisterFactory(factory) end
---@param asset UnityEngine.InputSystem.InputActionAsset
---@param reporter UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.IReportInputActionAssetVerificationErrors
---@return boolean
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.Verify(asset, reporter) end
---@param message string
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier:Report(message) end

---@class UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup : UnityEditor.EditorWindow
UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup
CS.UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup = UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup

---@return UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup
function UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup.New() end
---@param btnRect UnityEngine.Rect
---@param view UnityEngine.InputSystem.Editor.PropertiesViewBase
function UnityEngine.InputSystem.Editor.InputActionDrawerBase.PropertiesViewPopup.Show(btnRect, view) end

---@class UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData : System.Object
---@field TreeView UnityEngine.InputSystem.Editor.InputActionTreeView
---@field ControlPickerState UnityEngine.InputSystem.Editor.InputControlPickerState
UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData
CS.UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData = UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData

---@return UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData
function UnityEngine.InputSystem.Editor.InputActionDrawerBase.InputActionDrawerViewData.New() end

---@class UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Contents : System.Object
---@field compactPopupOptions UnityEngine.GUIContent[]
UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Contents = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Contents UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Contents
CS.UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Contents = UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Contents


---@class UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Styles : System.Object
---@field popup UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Styles UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Styles
CS.UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Styles = UnityEngine.InputSystem.Editor.InputActionPropertyDrawer.Styles


---@class UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler
---@field OldInputManager UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler
---@field NewInputSystem UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler
---@field InputBoth UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler
UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler = {}
---@alias CS.UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler
CS.UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler = UnityEngine.InputSystem.Editor.EditorPlayerSettingHelpers.InputHandler


---@class UnityEngine.InputSystem.Editor.InputEditorUserSettings.SerializedState : System.ValueType
---@field addDevicesNotSupportedByProject boolean
---@field autoSaveInputActionAssets boolean
---@field simulateTouch boolean
UnityEngine.InputSystem.Editor.InputEditorUserSettings.SerializedState = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputEditorUserSettings.SerializedState UnityEngine.InputSystem.Editor.InputEditorUserSettings.SerializedState
CS.UnityEngine.InputSystem.Editor.InputEditorUserSettings.SerializedState = UnityEngine.InputSystem.Editor.InputEditorUserSettings.SerializedState


---@class UnityEngine.InputSystem.Editor.InputActionsEditorConstants.CommandEvents : System.ValueType
---@field Rename string
---@field Delete string
---@field SoftDelete string
---@field Duplicate string
---@field Copy string
---@field Cut string
---@field Paste string
UnityEngine.InputSystem.Editor.InputActionsEditorConstants.CommandEvents = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionsEditorConstants.CommandEvents UnityEngine.InputSystem.Editor.InputActionsEditorConstants.CommandEvents
CS.UnityEngine.InputSystem.Editor.InputActionsEditorConstants.CommandEvents = UnityEngine.InputSystem.Editor.InputActionsEditorConstants.CommandEvents


---@class UnityEngine.InputSystem.Editor.InputActionsEditorWindowUtils.WriteFileJsonNoName : System.ValueType
---@field maps UnityEngine.InputSystem.InputActionMap.WriteMapJson[]
---@field controlSchemes UnityEngine.InputSystem.InputControlScheme.SchemeJson[]
UnityEngine.InputSystem.Editor.InputActionsEditorWindowUtils.WriteFileJsonNoName = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionsEditorWindowUtils.WriteFileJsonNoName UnityEngine.InputSystem.Editor.InputActionsEditorWindowUtils.WriteFileJsonNoName
CS.UnityEngine.InputSystem.Editor.InputActionsEditorWindowUtils.WriteFileJsonNoName = UnityEngine.InputSystem.Editor.InputActionsEditorWindowUtils.WriteFileJsonNoName


---@class UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData : System.ValueType
UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData = {}
---@alias CS.UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData
CS.UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData = UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData

---@param mapName string
---@param isDisabled boolean
---@return UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData
function UnityEngine.InputSystem.Editor.ActionMapsView.ActionMapData.New(mapName, isDisabled) end

---@class UnityEngine.InputSystem.Editor.ActionMapsView.ViewState : System.Object
---@field selectedActionMap System.Nullable
---@field actionMapData System.Collections.Generic.List
UnityEngine.InputSystem.Editor.ActionMapsView.ViewState = {}
---@alias CS.UnityEngine.InputSystem.Editor.ActionMapsView.ViewState UnityEngine.InputSystem.Editor.ActionMapsView.ViewState
CS.UnityEngine.InputSystem.Editor.ActionMapsView.ViewState = UnityEngine.InputSystem.Editor.ActionMapsView.ViewState

---@param selectedActionMap System.Nullable
---@param actionMapNames System.Collections.Generic.IEnumerable
---@param disabledActionMapNames System.Collections.Generic.IEnumerable
---@return UnityEngine.InputSystem.Editor.ActionMapsView.ViewState
function UnityEngine.InputSystem.Editor.ActionMapsView.ViewState.New(selectedActionMap, actionMapNames, disabledActionMapNames) end

---@class UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState : System.Object
---@field treeViewData System.Collections.Generic.List
---@field actionMapCount number
---@field newElementID number
UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState = {}
---@alias CS.UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState
CS.UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState = UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState

---@return UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState
function UnityEngine.InputSystem.Editor.ActionsTreeView.ViewState.New() end

---@class UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState : System.Object
---@field selectedBindingIndex number
---@field selectedBinding System.Nullable
---@field controlSchemes UnityEngine.InputSystem.Editor.ViewStateCollection
---@field currentControlScheme UnityEngine.InputSystem.InputControlScheme
---@field selectedBindingPath UnityEditor.SerializedProperty
---@field selectedInputAction System.Nullable
UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState = {}
---@alias CS.UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState
CS.UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState = UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState

---@return UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState
function UnityEngine.InputSystem.Editor.BindingPropertiesView.ViewState.New() end

---@class UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState : System.Object
---@field selectedBinding UnityEngine.InputSystem.Editor.SerializedInputBinding
---@field compositeTypes System.Collections.Generic.IEnumerable
---@field selectedBindingPath UnityEditor.SerializedProperty
---@field parameterListView UnityEngine.InputSystem.Editor.Lists.ParameterListView
---@field selectedCompositeName string
---@field compositeNames System.Collections.Generic.IEnumerable
UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState = {}
---@alias CS.UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState
CS.UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState = UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState

---@return UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState
function UnityEngine.InputSystem.Editor.CompositeBindingPropertiesView.ViewState.New() end

---@class UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState : System.Object
---@field selectedBindingPath UnityEditor.SerializedProperty
---@field selectedBinding UnityEngine.InputSystem.Editor.SerializedInputBinding
---@field compositePartNames System.Collections.Generic.IEnumerable
---@field currentControlScheme UnityEngine.InputSystem.InputControlScheme
---@field expectedControlLayoutName string
---@field selectedCompositePartName string
UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState = {}
---@alias CS.UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState
CS.UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState = UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState

---@return UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState
function UnityEngine.InputSystem.Editor.CompositePartBindingPropertiesView.ViewState.New() end

---@class UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState : System.Object
---@field controlSchemes System.Collections.Generic.IEnumerable
---@field selectedControlSchemeIndex number
---@field selectedDeviceIndex number
UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState
CS.UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState = UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState

---@return UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState
function UnityEngine.InputSystem.Editor.InputActionsEditorView.ViewState.New() end

---@class UnityEngine.InputSystem.Editor.PropertiesView.ViewState : System.Object
---@field relatedInputAction System.Nullable
---@field inputBinding System.Nullable
---@field serializedInputAction System.Nullable
---@field selectionType UnityEngine.InputSystem.Editor.SelectionType
UnityEngine.InputSystem.Editor.PropertiesView.ViewState = {}
---@alias CS.UnityEngine.InputSystem.Editor.PropertiesView.ViewState UnityEngine.InputSystem.Editor.PropertiesView.ViewState
CS.UnityEngine.InputSystem.Editor.PropertiesView.ViewState = UnityEngine.InputSystem.Editor.PropertiesView.ViewState

---@return UnityEngine.InputSystem.Editor.PropertiesView.ViewState
function UnityEngine.InputSystem.Editor.PropertiesView.ViewState.New() end

---@class UnityEngine.InputSystem.Editor.Lists.NameAndParameterListView.Styles : System.Object
---@field s_FoldoutStyle UnityEngine.GUIStyle
---@field s_UpDownButtonStyle UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.Lists.NameAndParameterListView.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.Lists.NameAndParameterListView.Styles UnityEngine.InputSystem.Editor.Lists.NameAndParameterListView.Styles
CS.UnityEngine.InputSystem.Editor.Lists.NameAndParameterListView.Styles = UnityEngine.InputSystem.Editor.Lists.NameAndParameterListView.Styles


---@class UnityEngine.InputSystem.Editor.Lists.ParameterListView.EditableParameterValue : System.ValueType
---@field value UnityEngine.InputSystem.Utilities.NamedValue
---@field defaultValue System.Nullable
---@field enumValues System.Int32[]
---@field enumNames UnityEngine.GUIContent[]
---@field field System.Reflection.FieldInfo
---@field isEnum boolean
---@field isAtDefault boolean
UnityEngine.InputSystem.Editor.Lists.ParameterListView.EditableParameterValue = {}
---@alias CS.UnityEngine.InputSystem.Editor.Lists.ParameterListView.EditableParameterValue UnityEngine.InputSystem.Editor.Lists.ParameterListView.EditableParameterValue
CS.UnityEngine.InputSystem.Editor.Lists.ParameterListView.EditableParameterValue = UnityEngine.InputSystem.Editor.Lists.ParameterListView.EditableParameterValue


---@class UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result
---@field SuccessfullyInitiated UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result
---@field ErrorNotSupported UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result
---@field ErrorAlreadyInProgress UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result
UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result
CS.UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result = UnityEngine.InputSystem.LowLevel.InitiateUserAccountPairingCommand.Result


---@class UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result
---@field DevicePairedToUserAccount UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result
---@field UserAccountSelectionInProgress UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result
---@field UserAccountSelectionComplete UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result
---@field UserAccountSelectionCanceled UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result
UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result
CS.UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result = UnityEngine.InputSystem.LowLevel.QueryPairedUserAccountCommand.Result


---@class UnityEngine.InputSystem.LowLevel.JoystickState.Button
---@field HatSwitchUp UnityEngine.InputSystem.LowLevel.JoystickState.Button
---@field HatSwitchDown UnityEngine.InputSystem.LowLevel.JoystickState.Button
---@field HatSwitchLeft UnityEngine.InputSystem.LowLevel.JoystickState.Button
---@field HatSwitchRight UnityEngine.InputSystem.LowLevel.JoystickState.Button
---@field Trigger UnityEngine.InputSystem.LowLevel.JoystickState.Button
UnityEngine.InputSystem.LowLevel.JoystickState.Button = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.JoystickState.Button UnityEngine.InputSystem.LowLevel.JoystickState.Button
CS.UnityEngine.InputSystem.LowLevel.JoystickState.Button = UnityEngine.InputSystem.LowLevel.JoystickState.Button


---@class UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator : System.ValueType
---@field Current System.Char
UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator
CS.UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator = UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator

---@param compositionString UnityEngine.InputSystem.LowLevel.IMECompositionString
---@return UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator
function UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator.New(compositionString) end
---@return boolean
function UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator:MoveNext() end
function UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator:Reset() end
function UnityEngine.InputSystem.LowLevel.IMECompositionString.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator : System.ValueType
---@field Current UnityEngine.InputSystem.LowLevel.InputEventPtr
UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator
CS.UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator = UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator

---@param buffer UnityEngine.InputSystem.LowLevel.InputEventBuffer
---@return UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator
function UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator.New(buffer) end
---@return boolean
function UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator:MoveNext() end
function UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator:Reset() end
function UnityEngine.InputSystem.LowLevel.InputEventBuffer.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState : System.Object
---@field observers UnityEngine.InputSystem.Utilities.InlinedArray
---@field onEventDelegate System.Action
UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState
CS.UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState = UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState

---@return UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState
function UnityEngine.InputSystem.LowLevel.InputEventListener.ObserverState.New() end

---@class UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver : System.Object
---@field observer System.IObserver
UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver
CS.UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver = UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver

---@return UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver
function UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver.New() end
function UnityEngine.InputSystem.LowLevel.InputEventListener.DisposableObserver:Dispose() end

---@class UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator : System.Object
---@field Current UnityEngine.InputSystem.LowLevel.InputEventPtr
UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator
CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator = UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator

---@param trace UnityEngine.InputSystem.LowLevel.InputEventTrace
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator
function UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator.New(trace) end
function UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator:Dispose() end
---@return boolean
function UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator:MoveNext() end
function UnityEngine.InputSystem.LowLevel.InputEventTrace.Enumerator:Reset() end

---@class UnityEngine.InputSystem.LowLevel.InputEventTrace.FileFlags
---@field FixedUpdate UnityEngine.InputSystem.LowLevel.InputEventTrace.FileFlags
UnityEngine.InputSystem.LowLevel.InputEventTrace.FileFlags = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.FileFlags UnityEngine.InputSystem.LowLevel.InputEventTrace.FileFlags
CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.FileFlags = UnityEngine.InputSystem.LowLevel.InputEventTrace.FileFlags


---@class UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController : System.Object
---@field trace UnityEngine.InputSystem.LowLevel.InputEventTrace
---@field finished boolean
---@field paused boolean
---@field position number
---@field createdDevices System.Collections.Generic.IEnumerable
UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController = UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController

function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:Dispose() end
---@overload fun(self: UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController, recordedDevice: UnityEngine.InputSystem.InputDevice, playbackDevice: UnityEngine.InputSystem.InputDevice) : UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
---@param recordedDeviceId number
---@param playbackDeviceId number
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:WithDeviceMappedFromTo(recordedDeviceId, playbackDeviceId) end
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:WithAllDevicesMappedToNewInstances() end
---@param action System.Action
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:OnFinished(action) end
---@param action System.Action
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:OnEvent(action) end
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:PlayOneEvent() end
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:Rewind() end
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:PlayAllFramesOneByOne() end
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:PlayAllEvents() end
---@return UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController
function UnityEngine.InputSystem.LowLevel.InputEventTrace.ReplayController:PlayAllEventsAccordingToTimestamps() end

---@class UnityEngine.InputSystem.LowLevel.InputEventTrace.DeviceInfo : System.ValueType
---@field deviceId number
---@field layout string
---@field stateFormat UnityEngine.InputSystem.Utilities.FourCC
---@field stateSizeInBytes number
UnityEngine.InputSystem.LowLevel.InputEventTrace.DeviceInfo = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.DeviceInfo UnityEngine.InputSystem.LowLevel.InputEventTrace.DeviceInfo
CS.UnityEngine.InputSystem.LowLevel.InputEventTrace.DeviceInfo = UnityEngine.InputSystem.LowLevel.InputEventTrace.DeviceInfo


---@class UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount : System.ValueType
---@field value number
UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount
CS.UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount = UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount

function UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount:OnBeforeUpdate() end
function UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount:OnUpdate() end

---@class UnityEngine.InputSystem.LowLevel.InputUpdate.SerializedState : System.ValueType
---@field lastUpdateType UnityEngine.InputSystem.LowLevel.InputUpdateType
---@field playerUpdateStepCount UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount
---@field lastNonEditorUpdateType UnityEngine.InputSystem.LowLevel.InputUpdateType
---@field editorUpdateStepCount UnityEngine.InputSystem.LowLevel.InputUpdate.UpdateStepCount
UnityEngine.InputSystem.LowLevel.InputUpdate.SerializedState = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputUpdate.SerializedState UnityEngine.InputSystem.LowLevel.InputUpdate.SerializedState
CS.UnityEngine.InputSystem.LowLevel.InputUpdate.SerializedState = UnityEngine.InputSystem.LowLevel.InputUpdate.SerializedState


---@class UnityEngine.InputSystem.LowLevel.NativeInputRuntime.InputSystemPlayerLoopRunnerInitializationSystem : System.ValueType
UnityEngine.InputSystem.LowLevel.NativeInputRuntime.InputSystemPlayerLoopRunnerInitializationSystem = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.NativeInputRuntime.InputSystemPlayerLoopRunnerInitializationSystem UnityEngine.InputSystem.LowLevel.NativeInputRuntime.InputSystemPlayerLoopRunnerInitializationSystem
CS.UnityEngine.InputSystem.LowLevel.NativeInputRuntime.InputSystemPlayerLoopRunnerInitializationSystem = UnityEngine.InputSystem.LowLevel.NativeInputRuntime.InputSystemPlayerLoopRunnerInitializationSystem


---@class UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate : System.Object
---@field valueChangeCallback System.Action
---@field timerExpiredCallback System.Action
UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate
CS.UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate = UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate

---@return UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate
function UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate.New() end
---@param control UnityEngine.InputSystem.InputControl
---@param time number
---@param eventPtr UnityEngine.InputSystem.LowLevel.InputEventPtr
---@param monitorIndex number
function UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate:NotifyControlStateChanged(control, time, eventPtr, monitorIndex) end
---@param control UnityEngine.InputSystem.InputControl
---@param time number
---@param monitorIndex number
---@param timerIndex number
function UnityEngine.InputSystem.LowLevel.InputState.StateChangeMonitorDelegate:NotifyTimerExpired(control, time, monitorIndex, timerIndex) end

---@class UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers : System.ValueType
---@field deviceToBufferMapping System.Void**
---@field deviceCount number
---@field valid boolean
UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers
CS.UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers = UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers

---@param deviceIndex number
---@param ptr System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers:SetFrontBuffer(deviceIndex, ptr) end
---@param deviceIndex number
---@param ptr System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers:SetBackBuffer(deviceIndex, ptr) end
---@param deviceIndex number
---@return System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers:GetFrontBuffer(deviceIndex) end
---@param deviceIndex number
---@return System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers:GetBackBuffer(deviceIndex) end
---@param deviceIndex number
function UnityEngine.InputSystem.LowLevel.InputStateBuffers.DoubleBuffers:SwapBuffers(deviceIndex) end

---@class UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator : System.ValueType
---@field Current UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator
CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator = UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator

---@param history UnityEngine.InputSystem.LowLevel.InputStateHistory
---@return UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator.New(history) end
---@return boolean
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator:MoveNext() end
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator:Reset() end
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.LowLevel.InputStateHistory.RecordHeader : System.ValueType
---@field kSizeWithControlIndex number
---@field kSizeWithoutControlIndex number
---@field time number
---@field version number
---@field controlIndex number
---@field statePtrWithControlIndex System.Byte*
---@field statePtrWithoutControlIndex System.Byte*
UnityEngine.InputSystem.LowLevel.InputStateHistory.RecordHeader = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.RecordHeader UnityEngine.InputSystem.LowLevel.InputStateHistory.RecordHeader
CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.RecordHeader = UnityEngine.InputSystem.LowLevel.InputStateHistory.RecordHeader


---@class UnityEngine.InputSystem.LowLevel.InputStateHistory.Record : System.ValueType
---@field valid boolean
---@field owner UnityEngine.InputSystem.LowLevel.InputStateHistory
---@field index number
---@field time number
---@field control UnityEngine.InputSystem.InputControl
---@field next UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
---@field previous UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
UnityEngine.InputSystem.LowLevel.InputStateHistory.Record = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Record UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Record = UnityEngine.InputSystem.LowLevel.InputStateHistory.Record

---@return System.Object
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:ReadValueAsObject() end
---@return System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:GetUnsafeMemoryPtr() end
---@return System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:GetUnsafeExtraMemoryPtr() end
---@param record UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:CopyFrom(record) end
---@overload fun(self: UnityEngine.InputSystem.LowLevel.InputStateHistory.Record, other: UnityEngine.InputSystem.LowLevel.InputStateHistory.Record) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:Equals(obj) end
---@return number
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:GetHashCode() end
---@return string
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:ToString() end

---@class UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator : System.ValueType
---@field Current UnityEngine.InputSystem.LowLevel.InputStateHistory.Record[TValue]
UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator
CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator = UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator

---@param history UnityEngine.InputSystem.LowLevel.InputStateHistory[TValue]
---@return UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator.New(history) end
---@return boolean
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator:MoveNext() end
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator:Reset() end
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.LowLevel.InputStateHistory.Record : System.ValueType
---@field valid boolean
---@field owner UnityEngine.InputSystem.LowLevel.InputStateHistory[TValue]
---@field index number
---@field time number
---@field control UnityEngine.InputSystem.InputControl[TValue]
---@field next UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
---@field previous UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
UnityEngine.InputSystem.LowLevel.InputStateHistory.Record = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Record UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
CS.UnityEngine.InputSystem.LowLevel.InputStateHistory.Record = UnityEngine.InputSystem.LowLevel.InputStateHistory.Record

---@return TValue
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:ReadValue() end
---@return System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:GetUnsafeMemoryPtr() end
---@return System.Void*
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:GetUnsafeExtraMemoryPtr() end
---@param record UnityEngine.InputSystem.LowLevel.InputStateHistory.Record
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:CopyFrom(record) end
---@overload fun(self: UnityEngine.InputSystem.LowLevel.InputStateHistory.Record, other: UnityEngine.InputSystem.LowLevel.InputStateHistory.Record) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:Equals(obj) end
---@return number
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:GetHashCode() end
---@return string
function UnityEngine.InputSystem.LowLevel.InputStateHistory.Record:ToString() end

---@class UnityEngine.InputSystem.LowLevel.SelectObservable.Select : System.Object
UnityEngine.InputSystem.LowLevel.SelectObservable.Select = {}
---@alias CS.UnityEngine.InputSystem.LowLevel.SelectObservable.Select UnityEngine.InputSystem.LowLevel.SelectObservable.Select
CS.UnityEngine.InputSystem.LowLevel.SelectObservable.Select = UnityEngine.InputSystem.LowLevel.SelectObservable.Select

---@param observable UnityEngine.InputSystem.LowLevel.SelectObservable[TSource,TResult]
---@param observer System.IObserver[TResult]
---@return UnityEngine.InputSystem.LowLevel.SelectObservable.Select
function UnityEngine.InputSystem.LowLevel.SelectObservable.Select.New(observable, observer) end
function UnityEngine.InputSystem.LowLevel.SelectObservable.Select:OnCompleted() end
---@param error System.Exception
function UnityEngine.InputSystem.LowLevel.SelectObservable.Select:OnError(error) end
---@param evt TSource
function UnityEngine.InputSystem.LowLevel.SelectObservable.Select:OnNext(evt) end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem : System.ValueType
---@field name UnityEngine.InputSystem.Utilities.InternedString
---@field layout UnityEngine.InputSystem.Utilities.InternedString
---@field variants UnityEngine.InputSystem.Utilities.InternedString
---@field useStateFrom string
---@field displayName string
---@field shortDisplayName string
---@field usages UnityEngine.InputSystem.Utilities.ReadOnlyArray
---@field aliases UnityEngine.InputSystem.Utilities.ReadOnlyArray
---@field parameters UnityEngine.InputSystem.Utilities.ReadOnlyArray
---@field processors UnityEngine.InputSystem.Utilities.ReadOnlyArray
---@field offset number
---@field bit number
---@field sizeInBits number
---@field format UnityEngine.InputSystem.Utilities.FourCC
---@field arraySize number
---@field defaultState UnityEngine.InputSystem.Utilities.PrimitiveValue
---@field minValue UnityEngine.InputSystem.Utilities.PrimitiveValue
---@field maxValue UnityEngine.InputSystem.Utilities.PrimitiveValue
---@field isModifyingExistingControl boolean
---@field isNoisy boolean
---@field isSynthetic boolean
---@field dontReset boolean
---@field isFirstDefinedInThisLayout boolean
---@field isArray boolean
UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem = UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem

---@param other UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem
function UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem:Merge(other) end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.Builder : System.Object
---@field name string
---@field displayName string
---@field type System.Type
---@field stateFormat UnityEngine.InputSystem.Utilities.FourCC
---@field stateSizeInBytes number
---@field extendsLayout string
---@field updateBeforeRender System.Nullable
---@field controls UnityEngine.InputSystem.Utilities.ReadOnlyArray
UnityEngine.InputSystem.Layouts.InputControlLayout.Builder = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Builder UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Builder = UnityEngine.InputSystem.Layouts.InputControlLayout.Builder

---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.New() end
---@param name string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder:AddControl(name) end
---@param name string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder:WithName(name) end
---@param displayName string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder:WithDisplayName(displayName) end
---@overload fun(self: UnityEngine.InputSystem.Layouts.InputControlLayout.Builder, format: UnityEngine.InputSystem.Utilities.FourCC) : UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
---@param format string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder:WithFormat(format) end
---@param sizeInBytes number
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder:WithSizeInBytes(sizeInBytes) end
---@param baseLayoutName string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder:Extend(baseLayoutName) end
---@return UnityEngine.InputSystem.Layouts.InputControlLayout
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder:Build() end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
---@field IsGenericTypeOfDevice UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
---@field HideInUI UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
---@field IsOverride UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
---@field CanRunInBackground UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
---@field CanRunInBackgroundIsSet UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
---@field IsNoisy UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
UnityEngine.InputSystem.Layouts.InputControlLayout.Flags = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Flags UnityEngine.InputSystem.Layouts.InputControlLayout.Flags
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Flags = UnityEngine.InputSystem.Layouts.InputControlLayout.Flags


---@class UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJsonNameAndDescriptorOnly : System.ValueType
---@field name string
---@field extend string
---@field extendMultiple System.String[]
---@field device UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson
UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJsonNameAndDescriptorOnly = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJsonNameAndDescriptorOnly UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJsonNameAndDescriptorOnly
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJsonNameAndDescriptorOnly = UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJsonNameAndDescriptorOnly


---@class UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson : System.ValueType
---@field name string
---@field extend string
---@field extendMultiple System.String[]
---@field format string
---@field beforeRender string
---@field runInBackground string
---@field commonUsages System.String[]
---@field displayName string
---@field description string
---@field type string
---@field variant string
---@field isGenericTypeOfDevice boolean
---@field hideInUI boolean
---@field controls UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson[]
UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson = UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson

---@param layout UnityEngine.InputSystem.Layouts.InputControlLayout
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson
function UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson.FromLayout(layout) end
---@return UnityEngine.InputSystem.Layouts.InputControlLayout
function UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutJson:ToLayout() end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson : System.Object
---@field name string
---@field layout string
---@field variants string
---@field usage string
---@field alias string
---@field useStateFrom string
---@field offset number
---@field bit number
---@field sizeInBits number
---@field format string
---@field arraySize number
---@field usages System.String[]
---@field aliases System.String[]
---@field parameters string
---@field processors string
---@field displayName string
---@field shortDisplayName string
---@field noisy boolean
---@field dontReset boolean
---@field synthetic boolean
---@field defaultState string
---@field minValue string
---@field maxValue string
UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson = UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson

---@return UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson
function UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson.New() end
---@param items UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem[]
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson[]
function UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson.FromControlItems(items) end
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem
function UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItemJson:ToLayout() end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.Collection : System.ValueType
---@field kBaseScoreForNonGeneratedLayouts number
---@field layoutTypes System.Collections.Generic.Dictionary
---@field layoutStrings System.Collections.Generic.Dictionary
---@field layoutBuilders System.Collections.Generic.Dictionary
---@field baseLayoutTable System.Collections.Generic.Dictionary
---@field layoutOverrides System.Collections.Generic.Dictionary
---@field layoutOverrideNames System.Collections.Generic.HashSet
---@field precompiledLayouts System.Collections.Generic.Dictionary
---@field layoutMatchers System.Collections.Generic.List
UnityEngine.InputSystem.Layouts.InputControlLayout.Collection = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Collection UnityEngine.InputSystem.Layouts.InputControlLayout.Collection
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Collection = UnityEngine.InputSystem.Layouts.InputControlLayout.Collection

function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:Allocate() end
---@param layoutType System.Type
---@return UnityEngine.InputSystem.Utilities.InternedString
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:TryFindLayoutForType(layoutType) end
---@param deviceDescription UnityEngine.InputSystem.Layouts.InputDeviceDescription
---@return UnityEngine.InputSystem.Utilities.InternedString
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:TryFindMatchingLayout(deviceDescription) end
---@param name UnityEngine.InputSystem.Utilities.InternedString
---@return boolean
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:HasLayout(name) end
---@param name UnityEngine.InputSystem.Utilities.InternedString
---@param table System.Collections.Generic.Dictionary
---@return UnityEngine.InputSystem.Layouts.InputControlLayout
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:TryLoadLayout(name, table) end
---@param layoutName UnityEngine.InputSystem.Utilities.InternedString
---@return UnityEngine.InputSystem.Utilities.InternedString
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:GetBaseLayoutName(layoutName) end
---@param layoutName UnityEngine.InputSystem.Utilities.InternedString
---@return UnityEngine.InputSystem.Utilities.InternedString
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:GetRootLayoutName(layoutName) end
---@param firstLayout UnityEngine.InputSystem.Utilities.InternedString
---@param secondLayout UnityEngine.InputSystem.Utilities.InternedString
---@param out_distance number
---@return boolean,number
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:ComputeDistanceInInheritanceHierarchy(firstLayout, secondLayout, out_distance) end
---@param control UnityEngine.InputSystem.InputControl
---@param cache UnityEngine.InputSystem.Layouts.InputControlLayout.Cache
---@return UnityEngine.InputSystem.Utilities.InternedString
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:FindLayoutThatIntroducesControl(control, cache) end
---@param layoutName UnityEngine.InputSystem.Utilities.InternedString
---@return System.Type
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:GetControlTypeForLayout(layoutName) end
---@param layoutName UnityEngine.InputSystem.Utilities.InternedString
---@param valueType System.Type
---@return boolean
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:ValueTypeIsAssignableFrom(layoutName, valueType) end
---@param layout UnityEngine.InputSystem.Utilities.InternedString
---@return boolean
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:IsGeneratedLayout(layout) end
---@param layout UnityEngine.InputSystem.Utilities.InternedString
---@param includeSelf boolean
---@return System.Collections.Generic.IEnumerable
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:GetBaseLayouts(layout, includeSelf) end
---@param parentLayout UnityEngine.InputSystem.Utilities.InternedString
---@param childLayout UnityEngine.InputSystem.Utilities.InternedString
---@return boolean
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:IsBasedOn(parentLayout, childLayout) end
---@param layout UnityEngine.InputSystem.Utilities.InternedString
---@param matcher UnityEngine.InputSystem.Layouts.InputDeviceMatcher
function UnityEngine.InputSystem.Layouts.InputControlLayout.Collection:AddMatcher(layout, matcher) end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException : System.Exception
---@field layout string
UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException = UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException

---@overload fun() : UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException
---@overload fun(name: string, message: string) : UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException
---@overload fun(name: string) : UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException
function UnityEngine.InputSystem.Layouts.InputControlLayout.LayoutNotFoundException.New(message, innerException) end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.Cache : System.ValueType
---@field table System.Collections.Generic.Dictionary
UnityEngine.InputSystem.Layouts.InputControlLayout.Cache = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Cache UnityEngine.InputSystem.Layouts.InputControlLayout.Cache
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Cache = UnityEngine.InputSystem.Layouts.InputControlLayout.Cache

function UnityEngine.InputSystem.Layouts.InputControlLayout.Cache:Clear() end
---@param name string
---@param throwIfNotFound boolean
---@return UnityEngine.InputSystem.Layouts.InputControlLayout
function UnityEngine.InputSystem.Layouts.InputControlLayout.Cache:FindOrLoadLayout(name, throwIfNotFound) end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.CacheRefInstance : System.ValueType
---@field valid boolean
UnityEngine.InputSystem.Layouts.InputControlLayout.CacheRefInstance = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.CacheRefInstance UnityEngine.InputSystem.Layouts.InputControlLayout.CacheRefInstance
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.CacheRefInstance = UnityEngine.InputSystem.Layouts.InputControlLayout.CacheRefInstance

function UnityEngine.InputSystem.Layouts.InputControlLayout.CacheRefInstance:Dispose() end

---@class UnityEngine.InputSystem.Layouts.InputDeviceBuilder.RefInstance : System.ValueType
UnityEngine.InputSystem.Layouts.InputDeviceBuilder.RefInstance = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputDeviceBuilder.RefInstance UnityEngine.InputSystem.Layouts.InputDeviceBuilder.RefInstance
CS.UnityEngine.InputSystem.Layouts.InputDeviceBuilder.RefInstance = UnityEngine.InputSystem.Layouts.InputDeviceBuilder.RefInstance

function UnityEngine.InputSystem.Layouts.InputDeviceBuilder.RefInstance:Dispose() end

---@class UnityEngine.InputSystem.Layouts.InputDeviceDescription.DeviceDescriptionJson : System.ValueType
---@field interface string
---@field type string
---@field product string
---@field serial string
---@field version string
---@field manufacturer string
---@field capabilities string
UnityEngine.InputSystem.Layouts.InputDeviceDescription.DeviceDescriptionJson = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputDeviceDescription.DeviceDescriptionJson UnityEngine.InputSystem.Layouts.InputDeviceDescription.DeviceDescriptionJson
CS.UnityEngine.InputSystem.Layouts.InputDeviceDescription.DeviceDescriptionJson = UnityEngine.InputSystem.Layouts.InputDeviceDescription.DeviceDescriptionJson


---@class UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson : System.ValueType
---@field interface string
---@field interfaces System.String[]
---@field deviceClass string
---@field deviceClasses System.String[]
---@field manufacturer string
---@field manufacturerContains string
---@field manufacturers System.String[]
---@field product string
---@field products System.String[]
---@field version string
---@field versions System.String[]
---@field capabilities UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.Capability[]
UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson
CS.UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson = UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson

---@param matcher UnityEngine.InputSystem.Layouts.InputDeviceMatcher
---@return UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson
function UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.FromMatcher(matcher) end
---@return UnityEngine.InputSystem.Layouts.InputDeviceMatcher
function UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson:ToMatcher() end

---@class UnityEngine.InputSystem.Controls.AxisControl.Clamp
---@field None UnityEngine.InputSystem.Controls.AxisControl.Clamp
---@field BeforeNormalize UnityEngine.InputSystem.Controls.AxisControl.Clamp
---@field AfterNormalize UnityEngine.InputSystem.Controls.AxisControl.Clamp
---@field ToConstantBeforeNormalize UnityEngine.InputSystem.Controls.AxisControl.Clamp
UnityEngine.InputSystem.Controls.AxisControl.Clamp = {}
---@alias CS.UnityEngine.InputSystem.Controls.AxisControl.Clamp UnityEngine.InputSystem.Controls.AxisControl.Clamp
CS.UnityEngine.InputSystem.Controls.AxisControl.Clamp = UnityEngine.InputSystem.Controls.AxisControl.Clamp


---@class UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode
---@field WriteDisabled UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode
---@field WriteNullAndMaxValue UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode
UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode = {}
---@alias CS.UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode
CS.UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode = UnityEngine.InputSystem.Controls.DiscreteButtonControl.WriteMode


---@class UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl : UnityEngine.InputSystem.Controls.AxisControl
---@field component number
UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl = {}
---@alias CS.UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl
CS.UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl = UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl

---@return UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl
function UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl.New() end
---@param statePtr System.Void*
---@return number
function UnityEngine.InputSystem.Controls.DpadControl.DpadAxisControl:ReadUnprocessedValueFromState(statePtr) end

---@class UnityEngine.InputSystem.Controls.DpadControl.ButtonBits
---@field Up UnityEngine.InputSystem.Controls.DpadControl.ButtonBits
---@field Down UnityEngine.InputSystem.Controls.DpadControl.ButtonBits
---@field Left UnityEngine.InputSystem.Controls.DpadControl.ButtonBits
---@field Right UnityEngine.InputSystem.Controls.DpadControl.ButtonBits
UnityEngine.InputSystem.Controls.DpadControl.ButtonBits = {}
---@alias CS.UnityEngine.InputSystem.Controls.DpadControl.ButtonBits UnityEngine.InputSystem.Controls.DpadControl.ButtonBits
CS.UnityEngine.InputSystem.Controls.DpadControl.ButtonBits = UnityEngine.InputSystem.Controls.DpadControl.ButtonBits


---@class UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase
---@field None UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase
---@field WaitingForNextRelease UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase
---@field WaitingForNextPress UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase
UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase = {}
---@alias CS.UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase
CS.UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase = UnityEngine.InputSystem.Interactions.MultiTapInteraction.TapPhase


---@class UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr : System.ValueType
---@field action UnityEngine.InputSystem.InputAction
---@field phase UnityEngine.InputSystem.InputActionPhase
---@field control UnityEngine.InputSystem.InputControl
---@field interaction UnityEngine.InputSystem.IInputInteraction
---@field time number
---@field startTime number
---@field duration number
---@field valueSizeInBytes number
UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr = {}
---@alias CS.UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr
CS.UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr = UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr

---@return System.Object
function UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr:ReadValueAsObject() end
---@param buffer System.Void*
---@param bufferSize number
function UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr:ReadValue(buffer, bufferSize) end
---@return string
function UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr:ToString() end

---@class UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator : System.ValueType
---@field Current UnityEngine.InputSystem.Utilities.InputActionTrace.ActionEventPtr
UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator
CS.UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator = UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator

---@param trace UnityEngine.InputSystem.Utilities.InputActionTrace
---@return UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator
function UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator.New(trace) end
---@return boolean
function UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator:MoveNext() end
function UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator:Reset() end
function UnityEngine.InputSystem.Utilities.InputActionTrace.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator : System.ValueType
---@field array UnityEngine.InputSystem.Utilities.InlinedArray[TValue]
---@field index number
---@field Current TValue
UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator
CS.UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator = UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator

---@return boolean
function UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator:MoveNext() end
function UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator:Reset() end
function UnityEngine.InputSystem.Utilities.InlinedArray.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field None UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field Bool UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field Real UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field Integer UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field String UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field Array UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field Object UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field Any UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType = {}
---@alias CS.UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
CS.UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType = UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType


---@class UnityEngine.InputSystem.Utilities.JsonParser.JsonString : System.ValueType
---@field text UnityEngine.InputSystem.Utilities.Substring
---@field hasEscapes boolean
UnityEngine.InputSystem.Utilities.JsonParser.JsonString = {}
---@alias CS.UnityEngine.InputSystem.Utilities.JsonParser.JsonString UnityEngine.InputSystem.Utilities.JsonParser.JsonString
CS.UnityEngine.InputSystem.Utilities.JsonParser.JsonString = UnityEngine.InputSystem.Utilities.JsonParser.JsonString

---@return string
function UnityEngine.InputSystem.Utilities.JsonParser.JsonString:ToString() end
---@overload fun(self: UnityEngine.InputSystem.Utilities.JsonParser.JsonString, other: UnityEngine.InputSystem.Utilities.JsonParser.JsonString) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.InputSystem.Utilities.JsonParser.JsonString:Equals(obj) end
---@return number
function UnityEngine.InputSystem.Utilities.JsonParser.JsonString:GetHashCode() end

---@class UnityEngine.InputSystem.Utilities.JsonParser.JsonValue : System.ValueType
---@field type UnityEngine.InputSystem.Utilities.JsonParser.JsonValueType
---@field boolValue boolean
---@field realValue number
---@field integerValue number
---@field stringValue UnityEngine.InputSystem.Utilities.JsonParser.JsonString
---@field arrayValue System.Collections.Generic.List
---@field objectValue System.Collections.Generic.Dictionary
---@field anyValue System.Object
UnityEngine.InputSystem.Utilities.JsonParser.JsonValue = {}
---@alias CS.UnityEngine.InputSystem.Utilities.JsonParser.JsonValue UnityEngine.InputSystem.Utilities.JsonParser.JsonValue
CS.UnityEngine.InputSystem.Utilities.JsonParser.JsonValue = UnityEngine.InputSystem.Utilities.JsonParser.JsonValue

---@return boolean
function UnityEngine.InputSystem.Utilities.JsonParser.JsonValue:ToBoolean() end
---@return number
function UnityEngine.InputSystem.Utilities.JsonParser.JsonValue:ToInteger() end
---@return number
function UnityEngine.InputSystem.Utilities.JsonParser.JsonValue:ToDouble() end
---@return string
function UnityEngine.InputSystem.Utilities.JsonParser.JsonValue:ToString() end
---@overload fun(self: UnityEngine.InputSystem.Utilities.JsonParser.JsonValue, other: UnityEngine.InputSystem.Utilities.JsonParser.JsonValue) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.InputSystem.Utilities.JsonParser.JsonValue:Equals(obj) end
---@return number
function UnityEngine.InputSystem.Utilities.JsonParser.JsonValue:GetHashCode() end

---@class UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion : System.ValueType
---@field bitOffset number
---@field sizeInBits number
---@field isEmpty boolean
UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion = {}
---@alias CS.UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion
CS.UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion = UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion

---@overload fun(bitOffset: number, sizeInBits: number) : UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion
---@param byteOffset number
---@param bitOffset number
---@param sizeInBits number
---@return UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion
function UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion.New(byteOffset, bitOffset, sizeInBits) end
---@param other UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion
---@return UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion
function UnityEngine.InputSystem.Utilities.MemoryHelpers.BitRegion:Overlap(other) end

---@class UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice : System.Object
UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice = {}
---@alias CS.UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice
CS.UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice = UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice

---@param deviceType System.Type
---@param device UnityEngine.InputSystem.InputDevice
---@param observer System.IObserver
---@return UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice
function UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice.New(deviceType, device, observer) end
function UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice:OnCompleted() end
---@param error System.Exception
function UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice:OnError(error) end
---@param value UnityEngine.InputSystem.LowLevel.InputEventPtr
function UnityEngine.InputSystem.Utilities.ForDeviceEventObservable.ForDevice:OnNext(value) end

---@class UnityEngine.InputSystem.Utilities.SelectManyObservable.Select : System.Object
UnityEngine.InputSystem.Utilities.SelectManyObservable.Select = {}
---@alias CS.UnityEngine.InputSystem.Utilities.SelectManyObservable.Select UnityEngine.InputSystem.Utilities.SelectManyObservable.Select
CS.UnityEngine.InputSystem.Utilities.SelectManyObservable.Select = UnityEngine.InputSystem.Utilities.SelectManyObservable.Select

---@param observable UnityEngine.InputSystem.Utilities.SelectManyObservable[TSource,TResult]
---@param observer System.IObserver[TResult]
---@return UnityEngine.InputSystem.Utilities.SelectManyObservable.Select
function UnityEngine.InputSystem.Utilities.SelectManyObservable.Select.New(observable, observer) end
function UnityEngine.InputSystem.Utilities.SelectManyObservable.Select:OnCompleted() end
---@param error System.Exception
function UnityEngine.InputSystem.Utilities.SelectManyObservable.Select:OnError(error) end
---@param evt TSource
function UnityEngine.InputSystem.Utilities.SelectManyObservable.Select:OnNext(evt) end

---@class UnityEngine.InputSystem.Utilities.TakeNObservable.Take : System.Object
UnityEngine.InputSystem.Utilities.TakeNObservable.Take = {}
---@alias CS.UnityEngine.InputSystem.Utilities.TakeNObservable.Take UnityEngine.InputSystem.Utilities.TakeNObservable.Take
CS.UnityEngine.InputSystem.Utilities.TakeNObservable.Take = UnityEngine.InputSystem.Utilities.TakeNObservable.Take

---@param observable UnityEngine.InputSystem.Utilities.TakeNObservable[TValue]
---@param observer System.IObserver[TValue]
---@return UnityEngine.InputSystem.Utilities.TakeNObservable.Take
function UnityEngine.InputSystem.Utilities.TakeNObservable.Take.New(observable, observer) end
function UnityEngine.InputSystem.Utilities.TakeNObservable.Take:OnCompleted() end
---@param error System.Exception
function UnityEngine.InputSystem.Utilities.TakeNObservable.Take:OnError(error) end
---@param evt TValue
function UnityEngine.InputSystem.Utilities.TakeNObservable.Take:OnNext(evt) end

---@class UnityEngine.InputSystem.Utilities.WhereObservable.Where : System.Object
UnityEngine.InputSystem.Utilities.WhereObservable.Where = {}
---@alias CS.UnityEngine.InputSystem.Utilities.WhereObservable.Where UnityEngine.InputSystem.Utilities.WhereObservable.Where
CS.UnityEngine.InputSystem.Utilities.WhereObservable.Where = UnityEngine.InputSystem.Utilities.WhereObservable.Where

---@param observable UnityEngine.InputSystem.Utilities.WhereObservable[TValue]
---@param observer System.IObserver[TValue]
---@return UnityEngine.InputSystem.Utilities.WhereObservable.Where
function UnityEngine.InputSystem.Utilities.WhereObservable.Where.New(observable, observer) end
function UnityEngine.InputSystem.Utilities.WhereObservable.Where:OnCompleted() end
---@param error System.Exception
function UnityEngine.InputSystem.Utilities.WhereObservable.Where:OnError(error) end
---@param evt TValue
function UnityEngine.InputSystem.Utilities.WhereObservable.Where:OnNext(evt) end

---@class UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator : System.Object
---@field Current TValue
UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator
CS.UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator = UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator

---@return UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator
function UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator.New() end
---@return boolean
function UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator:MoveNext() end
function UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator:Reset() end
function UnityEngine.InputSystem.Utilities.OneOrMore.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator : System.ValueType
---@field Current TValue
UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator
CS.UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator = UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator

function UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator:Dispose() end
---@return boolean
function UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator:MoveNext() end
function UnityEngine.InputSystem.Utilities.ReadOnlyArray.Enumerator:Reset() end

---@class UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore : System.MulticastDelegate
UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore = {}
---@alias CS.UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore
CS.UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore = UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore
function UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore.New(object, method) end
---@param ref_state T
---@return ,T
function UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore:Invoke(ref_state) end
---@param ref_state T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,T
function UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore:BeginInvoke(ref_state, callback, object) end
---@param ref_state T
---@param result System.IAsyncResult
---@return ,T
function UnityEngine.InputSystem.Utilities.SavedStructState.TypedRestore:EndInvoke(ref_state, result) end

---@class UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins
---@field Neither UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins
---@field Positive UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins
---@field Negative UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins
UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins = {}
---@alias CS.UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins
CS.UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins = UnityEngine.InputSystem.Composites.AxisComposite.WhichSideWins


---@class UnityEngine.InputSystem.Composites.Vector2Composite.Mode
---@field Analog UnityEngine.InputSystem.Composites.Vector2Composite.Mode
---@field DigitalNormalized UnityEngine.InputSystem.Composites.Vector2Composite.Mode
---@field Digital UnityEngine.InputSystem.Composites.Vector2Composite.Mode
UnityEngine.InputSystem.Composites.Vector2Composite.Mode = {}
---@alias CS.UnityEngine.InputSystem.Composites.Vector2Composite.Mode UnityEngine.InputSystem.Composites.Vector2Composite.Mode
CS.UnityEngine.InputSystem.Composites.Vector2Composite.Mode = UnityEngine.InputSystem.Composites.Vector2Composite.Mode


---@class UnityEngine.InputSystem.Composites.Vector3Composite.Mode
---@field Analog UnityEngine.InputSystem.Composites.Vector3Composite.Mode
---@field DigitalNormalized UnityEngine.InputSystem.Composites.Vector3Composite.Mode
---@field Digital UnityEngine.InputSystem.Composites.Vector3Composite.Mode
UnityEngine.InputSystem.Composites.Vector3Composite.Mode = {}
---@alias CS.UnityEngine.InputSystem.Composites.Vector3Composite.Mode UnityEngine.InputSystem.Composites.Vector3Composite.Mode
CS.UnityEngine.InputSystem.Composites.Vector3Composite.Mode = UnityEngine.InputSystem.Composites.Vector3Composite.Mode


---@class UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field Started UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field Completed UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field Canceled UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field OnEventHooked UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field OnAfterUpdateHooked UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field DontIgnoreNoisyControls UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field DontGeneralizePathOfSelectedControl UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field AddNewBinding UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
---@field SuppressMatchingEvents UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags = {}
---@alias CS.UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags
CS.UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags = UnityEngine.InputSystem.InputActionRebindingExtensions.RebindingOperation.Flags


---@class UnityEngine.InputSystem.InputActionState.InteractionState.Flags
---@field TimerRunning UnityEngine.InputSystem.InputActionState.InteractionState.Flags
UnityEngine.InputSystem.InputActionState.InteractionState.Flags = {}
---@alias CS.UnityEngine.InputSystem.InputActionState.InteractionState.Flags UnityEngine.InputSystem.InputActionState.InteractionState.Flags
CS.UnityEngine.InputSystem.InputActionState.InteractionState.Flags = UnityEngine.InputSystem.InputActionState.InteractionState.Flags


---@class UnityEngine.InputSystem.InputActionState.BindingState.Flags
---@field ChainsWithNext UnityEngine.InputSystem.InputActionState.BindingState.Flags
---@field EndOfChain UnityEngine.InputSystem.InputActionState.BindingState.Flags
---@field Composite UnityEngine.InputSystem.InputActionState.BindingState.Flags
---@field PartOfComposite UnityEngine.InputSystem.InputActionState.BindingState.Flags
---@field InitialStateCheckPending UnityEngine.InputSystem.InputActionState.BindingState.Flags
---@field WantsInitialStateCheck UnityEngine.InputSystem.InputActionState.BindingState.Flags
UnityEngine.InputSystem.InputActionState.BindingState.Flags = {}
---@alias CS.UnityEngine.InputSystem.InputActionState.BindingState.Flags UnityEngine.InputSystem.InputActionState.BindingState.Flags
CS.UnityEngine.InputSystem.InputActionState.BindingState.Flags = UnityEngine.InputSystem.InputActionState.BindingState.Flags


---@class UnityEngine.InputSystem.InputActionState.TriggerState.Flags
---@field HaveMagnitude UnityEngine.InputSystem.InputActionState.TriggerState.Flags
---@field PassThrough UnityEngine.InputSystem.InputActionState.TriggerState.Flags
---@field MayNeedConflictResolution UnityEngine.InputSystem.InputActionState.TriggerState.Flags
---@field HasMultipleConcurrentActuations UnityEngine.InputSystem.InputActionState.TriggerState.Flags
---@field InProcessing UnityEngine.InputSystem.InputActionState.TriggerState.Flags
---@field Button UnityEngine.InputSystem.InputActionState.TriggerState.Flags
---@field Pressed UnityEngine.InputSystem.InputActionState.TriggerState.Flags
UnityEngine.InputSystem.InputActionState.TriggerState.Flags = {}
---@alias CS.UnityEngine.InputSystem.InputActionState.TriggerState.Flags UnityEngine.InputSystem.InputActionState.TriggerState.Flags
CS.UnityEngine.InputSystem.InputActionState.TriggerState.Flags = UnityEngine.InputSystem.InputActionState.TriggerState.Flags


---@class UnityEngine.InputSystem.InputControlScheme.MatchResult.Result
---@field AllSatisfied UnityEngine.InputSystem.InputControlScheme.MatchResult.Result
---@field MissingRequired UnityEngine.InputSystem.InputControlScheme.MatchResult.Result
---@field MissingOptional UnityEngine.InputSystem.InputControlScheme.MatchResult.Result
UnityEngine.InputSystem.InputControlScheme.MatchResult.Result = {}
---@alias CS.UnityEngine.InputSystem.InputControlScheme.MatchResult.Result UnityEngine.InputSystem.InputControlScheme.MatchResult.Result
CS.UnityEngine.InputSystem.InputControlScheme.MatchResult.Result = UnityEngine.InputSystem.InputControlScheme.MatchResult.Result


---@class UnityEngine.InputSystem.InputControlScheme.MatchResult.Match : System.ValueType
---@field control UnityEngine.InputSystem.InputControl
---@field device UnityEngine.InputSystem.InputDevice
---@field requirementIndex number
---@field requirement UnityEngine.InputSystem.InputControlScheme.DeviceRequirement
---@field isOptional boolean
UnityEngine.InputSystem.InputControlScheme.MatchResult.Match = {}
---@alias CS.UnityEngine.InputSystem.InputControlScheme.MatchResult.Match UnityEngine.InputSystem.InputControlScheme.MatchResult.Match
CS.UnityEngine.InputSystem.InputControlScheme.MatchResult.Match = UnityEngine.InputSystem.InputControlScheme.MatchResult.Match


---@class UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator : System.ValueType
---@field Current UnityEngine.InputSystem.InputControlScheme.MatchResult.Match
UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator = {}
---@alias CS.UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator
CS.UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator = UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator

---@return boolean
function UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator:MoveNext() end
function UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator:Reset() end
function UnityEngine.InputSystem.InputControlScheme.MatchResult.Enumerator:Dispose() end

---@class UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags
---@field None UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags
---@field Optional UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags
---@field Or UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags
UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags = {}
---@alias CS.UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags
CS.UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags = UnityEngine.InputSystem.InputControlScheme.DeviceRequirement.Flags


---@class UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson : System.ValueType
---@field devicePath string
---@field isOptional boolean
---@field isOR boolean
UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson = {}
---@alias CS.UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson
CS.UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson = UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson

---@param requirement UnityEngine.InputSystem.InputControlScheme.DeviceRequirement
---@return UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson
function UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson.From(requirement) end
---@return UnityEngine.InputSystem.InputControlScheme.DeviceRequirement
function UnityEngine.InputSystem.InputControlScheme.SchemeJson.DeviceJson:ToDeviceEntry() end

---@class UnityEngine.InputSystem.InputRemoting.NewLayoutMsg.Data : System.ValueType
---@field name string
---@field layoutJson string
---@field isOverride boolean
UnityEngine.InputSystem.InputRemoting.NewLayoutMsg.Data = {}
---@alias CS.UnityEngine.InputSystem.InputRemoting.NewLayoutMsg.Data UnityEngine.InputSystem.InputRemoting.NewLayoutMsg.Data
CS.UnityEngine.InputSystem.InputRemoting.NewLayoutMsg.Data = UnityEngine.InputSystem.InputRemoting.NewLayoutMsg.Data


---@class UnityEngine.InputSystem.InputRemoting.NewDeviceMsg.Data : System.ValueType
---@field name string
---@field layout string
---@field deviceId number
---@field usages System.String[]
---@field description UnityEngine.InputSystem.Layouts.InputDeviceDescription
UnityEngine.InputSystem.InputRemoting.NewDeviceMsg.Data = {}
---@alias CS.UnityEngine.InputSystem.InputRemoting.NewDeviceMsg.Data UnityEngine.InputSystem.InputRemoting.NewDeviceMsg.Data
CS.UnityEngine.InputSystem.InputRemoting.NewDeviceMsg.Data = UnityEngine.InputSystem.InputRemoting.NewDeviceMsg.Data


---@class UnityEngine.InputSystem.InputRemoting.ChangeUsageMsg.Data : System.ValueType
---@field deviceId number
---@field usages System.String[]
UnityEngine.InputSystem.InputRemoting.ChangeUsageMsg.Data = {}
---@alias CS.UnityEngine.InputSystem.InputRemoting.ChangeUsageMsg.Data UnityEngine.InputSystem.InputRemoting.ChangeUsageMsg.Data
CS.UnityEngine.InputSystem.InputRemoting.ChangeUsageMsg.Data = UnityEngine.InputSystem.InputRemoting.ChangeUsageMsg.Data


---@class UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo : System.ValueType
---@field layout string
---@field interface string
---@field product string
---@field native boolean
UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo = {}
---@alias CS.UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo
CS.UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo = UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo

---@param description UnityEngine.InputSystem.Layouts.InputDeviceDescription
---@param native boolean
---@param layout string
---@return UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo
function UnityEngine.InputSystem.InputAnalytics.StartupEventData.DeviceInfo.FromDescription(description, native, layout) end

---@class UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.ReportType
---@field Magic UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.ReportType
UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.ReportType = {}
---@alias CS.UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.ReportType UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.ReportType
CS.UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.ReportType = UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.ReportType


---@class UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType
---@field Status UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType
---@field Handshake UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType
---@field Highspeed UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType
---@field ForceUSB UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType
UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType = {}
---@alias CS.UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType
CS.UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType = UnityEngine.InputSystem.Switch.SwitchProControllerHID.SwitchMagicOutputReport.CommandIdType


---@class UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind
---@field Invalid UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind
---@field EditorWindow UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind
---@field EmbeddedInProjectSettings UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind
UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind
CS.UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind = UnityEngine.InputSystem.Editor.InputActionsEditorSessionAnalytic.Data.Kind


---@class UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode
---@field ProcessEventsInBothFixedAndDynamicUpdate UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode
---@field ProcessEventsInDynamicUpdate UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode
---@field ProcessEventsInFixedUpdate UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode
---@field ProcessEventsManually UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode
UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode
CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode = UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.UpdateMode


---@class UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior
---@field ResetAndDisableNonBackgroundDevices UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior
---@field ResetAndDisableAllDevices UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior
---@field IgnoreFocus UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior
UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior
CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior = UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.BackgroundBehavior


---@class UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode
---@field PointersAndKeyboardsRespectGameViewFocus UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode
---@field AllDevicesRespectGameViewFocus UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode
---@field AllDeviceInputAlwaysGoesToGameView UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode
UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode
CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode = UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.EditorInputBehaviorInPlayMode


---@class UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode
---@field Compact UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode
---@field MultilineEffective UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode
---@field MultilineBoth UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode
UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode
CS.UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode = UnityEngine.InputSystem.Editor.InputBuildAnalytic.InputBuildAnalyticData.InputActionPropertyDrawerMode


---@class UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour
---@field RelativePositionWithStaticOrigin UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour
---@field ExactPositionWithStaticOrigin UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour
---@field ExactPositionWithDynamicOrigin UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour
UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour = {}
---@alias CS.UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour
CS.UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour = UnityEngine.InputSystem.Editor.OnScreenStickEditorAnalytic.Data.OnScreenStickBehaviour


---@class UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior
---@field JoinPlayersWhenButtonIsPressed UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior
---@field JoinPlayersWhenJoinActionIsTriggered UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior
---@field JoinPlayersManually UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior
UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior = {}
---@alias CS.UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior
CS.UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior = UnityEngine.InputSystem.Editor.PlayerInputManagerEditorAnalytic.Data.PlayerJoinBehavior


---@class UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode
---@field SoftwareCursor UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode
---@field HardwareCursorIfAvailable UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode
UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode = {}
---@alias CS.UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode
CS.UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode = UnityEngine.InputSystem.Editor.VirtualMouseInputEditorAnalytic.Data.CursorMode


---@class UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.Styles : System.Object
---@field headerLabel UnityEngine.GUIStyle
UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.Styles = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.Styles UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.Styles
CS.UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.Styles = UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.Styles


---@class UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry : System.Object
---@field displayText string
---@field deviceRequirement UnityEngine.InputSystem.InputControlScheme.DeviceRequirement
UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry
CS.UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry = UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry

---@param requirement UnityEngine.InputSystem.InputControlScheme.DeviceRequirement
---@return UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry
function UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry.New(requirement) end
---@return string
function UnityEngine.InputSystem.Editor.InputActionEditorToolbar.ControlSchemePropertiesPopup.DeviceEntry:ToString() end

---@class UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type
---@field ByName UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type
---@field ByBindingGroup UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type
---@field ByDeviceLayout UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type
UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type
CS.UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type = UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Type


---@class UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match
---@field Success UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match
---@field Failure UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match
---@field None UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match
UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match
CS.UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match = UnityEngine.InputSystem.Editor.InputActionTreeView.FilterCriterion.Match


---@class UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field device UnityEngine.InputSystem.InputDevice
UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem
CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem = UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem

---@return UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem
function UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.DeviceItem.New() end

---@class UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field description UnityEngine.InputSystem.Layouts.InputDeviceDescription
UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem
CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem = UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem

---@return UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem
function UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.UnsupportedDeviceItem.New() end

---@class UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field name string
UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem
CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem = UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem

---@return UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem
function UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.ConfigurationItem.New() end

---@class UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field layoutName UnityEngine.InputSystem.Utilities.InternedString
UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem = {}
---@alias CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem
CS.UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem = UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem

---@return UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem
function UnityEngine.InputSystem.Editor.InputDebuggerWindow.InputSystemTreeView.LayoutItem.New() end

---@class UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor : UnityEditor.AssetPostprocessor
UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor = {}
---@alias CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor
CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor = UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor

---@return UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.ProjectSettingsProjectWideActionsAssetConverter.ProjectSettingsPostprocessor.New() end

---@class UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter : System.Object
UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter = {}
---@alias CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter
CS.UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter = UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter

---@return UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter.New() end
---@param message string
function UnityEngine.InputSystem.Editor.ProjectWideActionsAsset.Verifier.DefaultInputActionAssetVerificationReporter:Report(message) end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags
---@field isModifyingExistingControl UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags
---@field IsNoisy UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags
---@field IsSynthetic UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags
---@field IsFirstDefinedInThisLayout UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags
---@field DontReset UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags
UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags = UnityEngine.InputSystem.Layouts.InputControlLayout.ControlItem.Flags


---@class UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder : System.ValueType
UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder = UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder

---@param displayName string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithDisplayName(displayName) end
---@param layout string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithLayout(layout) end
---@overload fun(self: UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder, format: UnityEngine.InputSystem.Utilities.FourCC) : UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
---@param format string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithFormat(format) end
---@param offset number
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithByteOffset(offset) end
---@param bit number
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithBitOffset(bit) end
---@param value boolean
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:IsSynthetic(value) end
---@param value boolean
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:IsNoisy(value) end
---@param value boolean
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:DontReset(value) end
---@param sizeInBits number
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithSizeInBits(sizeInBits) end
---@param minValue number
---@param maxValue number
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithRange(minValue, maxValue) end
---@overload fun(self: UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder, usages: UnityEngine.InputSystem.Utilities.InternedString[]) : UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
---@overload fun(self: UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder, usages: System.Collections.Generic.IEnumerable) : UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
---@param usages System.String[]
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithUsages(usages) end
---@param parameters string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithParameters(parameters) end
---@param processors string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithProcessors(processors) end
---@param value UnityEngine.InputSystem.Utilities.PrimitiveValue
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:WithDefaultState(value) end
---@param path string
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:UsingStateFrom(path) end
---@param arraySize number
---@return UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder
function UnityEngine.InputSystem.Layouts.InputControlLayout.Builder.ControlBuilder:AsArrayOfControlsWithSize(arraySize) end

---@class UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.LayoutMatcher : System.ValueType
---@field layoutName UnityEngine.InputSystem.Utilities.InternedString
---@field deviceMatcher UnityEngine.InputSystem.Layouts.InputDeviceMatcher
UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.LayoutMatcher = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.LayoutMatcher UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.LayoutMatcher
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.LayoutMatcher = UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.LayoutMatcher


---@class UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.PrecompiledLayout : System.ValueType
---@field factoryMethod System.Func
---@field metadata string
UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.PrecompiledLayout = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.PrecompiledLayout UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.PrecompiledLayout
CS.UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.PrecompiledLayout = UnityEngine.InputSystem.Layouts.InputControlLayout.Collection.PrecompiledLayout


---@class UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.Capability : System.ValueType
---@field path string
---@field value string
UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.Capability = {}
---@alias CS.UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.Capability UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.Capability
CS.UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.Capability = UnityEngine.InputSystem.Layouts.InputDeviceMatcher.MatcherJson.Capability


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


---@class AddressablesPlayerBuildProcessor : UnityEditor.Build.BuildPlayerProcessor
---@field BuildAddressablesOverride System.Func
---@field callbackOrder number
AddressablesPlayerBuildProcessor = {}
---@alias CS.AddressablesPlayerBuildProcessor AddressablesPlayerBuildProcessor
CS.AddressablesPlayerBuildProcessor = AddressablesPlayerBuildProcessor

---@return AddressablesPlayerBuildProcessor
function AddressablesPlayerBuildProcessor.New() end
---@param buildPlayerContext UnityEditor.Build.BuildPlayerContext
function AddressablesPlayerBuildProcessor:PrepareForBuild(buildPlayerContext) end

---@class DirectoryUtility : System.Object
DirectoryUtility = {}
---@alias CS.DirectoryUtility DirectoryUtility
CS.DirectoryUtility = DirectoryUtility


---@class RevertUnchangedAssetsToPreviousAssetState : System.Object
RevertUnchangedAssetsToPreviousAssetState = {}
---@alias CS.RevertUnchangedAssetsToPreviousAssetState RevertUnchangedAssetsToPreviousAssetState
CS.RevertUnchangedAssetsToPreviousAssetState = RevertUnchangedAssetsToPreviousAssetState

---@return RevertUnchangedAssetsToPreviousAssetState
function RevertUnchangedAssetsToPreviousAssetState.New() end
---@param aaBuildContext UnityEditor.AddressableAssets.Build.DataBuilders.IAddressableAssetsBuildContext
---@param updateContext UnityEditor.AddressableAssets.Build.ContentUpdateScript.ContentUpdateContext
---@return UnityEditor.Build.Pipeline.ReturnCode
function RevertUnchangedAssetsToPreviousAssetState.Run(aaBuildContext, updateContext) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class RevertUnchangedAssetsToPreviousAssetState.AssetEntryRevertOperation : System.ValueType
---@field PreviousAssetState UnityEditor.AddressableAssets.Build.CachedAssetState
---@field AssetEntry UnityEditor.AddressableAssets.Settings.AddressableAssetEntry
---@field BundleCatalogEntry UnityEngine.AddressableAssets.ResourceLocators.ContentCatalogDataEntry
---@field CurrentBuildPath string
---@field PreviousBuildPath string
RevertUnchangedAssetsToPreviousAssetState.AssetEntryRevertOperation = {}
---@alias CS.RevertUnchangedAssetsToPreviousAssetState.AssetEntryRevertOperation RevertUnchangedAssetsToPreviousAssetState.AssetEntryRevertOperation
CS.RevertUnchangedAssetsToPreviousAssetState.AssetEntryRevertOperation = RevertUnchangedAssetsToPreviousAssetState.AssetEntryRevertOperation


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

---@class UnityEngine.TestRunner.ITestRunCallback
UnityEngine.TestRunner.ITestRunCallback = {}
---@alias CS.UnityEngine.TestRunner.ITestRunCallback UnityEngine.TestRunner.ITestRunCallback
CS.UnityEngine.TestRunner.ITestRunCallback = UnityEngine.TestRunner.ITestRunCallback

---@param testsToRun NUnit.Framework.Interfaces.ITest
function UnityEngine.TestRunner.ITestRunCallback:RunStarted(testsToRun) end
---@param testResults NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestRunner.ITestRunCallback:RunFinished(testResults) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestRunner.ITestRunCallback:TestStarted(test) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestRunner.ITestRunCallback:TestFinished(result) end

---@class UnityEngine.TestRunner.TestRunCallbackAttribute : System.Attribute
UnityEngine.TestRunner.TestRunCallbackAttribute = {}
---@alias CS.UnityEngine.TestRunner.TestRunCallbackAttribute UnityEngine.TestRunner.TestRunCallbackAttribute
CS.UnityEngine.TestRunner.TestRunCallbackAttribute = UnityEngine.TestRunner.TestRunCallbackAttribute

---@param type System.Type
---@return UnityEngine.TestRunner.TestRunCallbackAttribute
function UnityEngine.TestRunner.TestRunCallbackAttribute.New(type) end

---@class UnityEngine.TestRunner.Utils.TestRunCallbackListener : UnityEngine.ScriptableObject
UnityEngine.TestRunner.Utils.TestRunCallbackListener = {}
---@alias CS.UnityEngine.TestRunner.Utils.TestRunCallbackListener UnityEngine.TestRunner.Utils.TestRunCallbackListener
CS.UnityEngine.TestRunner.Utils.TestRunCallbackListener = UnityEngine.TestRunner.Utils.TestRunCallbackListener

---@return UnityEngine.TestRunner.Utils.TestRunCallbackListener
function UnityEngine.TestRunner.Utils.TestRunCallbackListener.New() end
---@param testsToRun NUnit.Framework.Interfaces.ITest
function UnityEngine.TestRunner.Utils.TestRunCallbackListener:RunStarted(testsToRun) end
---@param testResults NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestRunner.Utils.TestRunCallbackListener:RunFinished(testResults) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestRunner.Utils.TestRunCallbackListener:TestStarted(test) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestRunner.Utils.TestRunCallbackListener:TestFinished(result) end

---@class UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory
UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory = {}
---@alias CS.UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory
CS.UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory = UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory

---@param result NUnit.Framework.Interfaces.ITestResult
---@return UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData
function UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory:CreateFromTestResult(result) end
---@param test NUnit.Framework.Interfaces.ITest
---@return UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData
function UnityEngine.TestRunner.TestLaunchers.IRemoteTestResultDataFactory:CreateFromTest(test) end

---@class UnityEngine.TestRunner.TestLaunchers.PlayerConnectionMessageIds : System.Object
---@field runStartedMessageId System.Guid
---@field runFinishedMessageId System.Guid
---@field testStartedMessageId System.Guid
---@field testFinishedMessageId System.Guid
---@field quitPlayerMessageId System.Guid
---@field playerAliveHeartbeat System.Guid
UnityEngine.TestRunner.TestLaunchers.PlayerConnectionMessageIds = {}
---@alias CS.UnityEngine.TestRunner.TestLaunchers.PlayerConnectionMessageIds UnityEngine.TestRunner.TestLaunchers.PlayerConnectionMessageIds
CS.UnityEngine.TestRunner.TestLaunchers.PlayerConnectionMessageIds = UnityEngine.TestRunner.TestLaunchers.PlayerConnectionMessageIds


---@class UnityEngine.TestRunner.TestLaunchers.RemoteTestData : System.Object
---@field id string
---@field name string
---@field fullName string
---@field testCaseCount number
---@field ChildIndex number
---@field hasChildren boolean
---@field isSuite boolean
---@field childrenIds System.String[]
---@field testCaseTimeout number
---@field Categories System.String[]
---@field IsTestAssembly boolean
---@field RunState NUnit.Framework.Interfaces.RunState
---@field Description string
---@field SkipReason string
---@field ParentId string
---@field UniqueName string
---@field ParentUniqueName string
---@field ParentFullName string
UnityEngine.TestRunner.TestLaunchers.RemoteTestData = {}
---@alias CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestData UnityEngine.TestRunner.TestLaunchers.RemoteTestData
CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestData = UnityEngine.TestRunner.TestLaunchers.RemoteTestData


---@class UnityEngine.TestRunner.TestLaunchers.RemoteTestResultData : System.Object
---@field testId string
---@field name string
---@field fullName string
---@field resultState string
---@field testStatus NUnit.Framework.Interfaces.TestStatus
---@field duration number
---@field startTime System.DateTime
---@field endTime System.DateTime
---@field message string
---@field stackTrace string
---@field assertCount number
---@field failCount number
---@field passCount number
---@field skipCount number
---@field inconclusiveCount number
---@field hasChildren boolean
---@field output string
---@field xml string
---@field childrenIds System.String[]
UnityEngine.TestRunner.TestLaunchers.RemoteTestResultData = {}
---@alias CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestResultData UnityEngine.TestRunner.TestLaunchers.RemoteTestResultData
CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestResultData = UnityEngine.TestRunner.TestLaunchers.RemoteTestResultData


---@class UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory : System.Object
UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory = {}
---@alias CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory
CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory = UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory

---@return UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory
function UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory.New() end
---@param result NUnit.Framework.Interfaces.ITestResult
---@return UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData
function UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory:CreateFromTestResult(result) end
---@param test NUnit.Framework.Interfaces.ITest
---@return UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData
function UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataFactory:CreateFromTest(test) end

---@class UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData : System.Object
---@field results UnityEngine.TestRunner.TestLaunchers.RemoteTestResultData[]
---@field tests UnityEngine.TestRunner.TestLaunchers.RemoteTestData[]
UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData = {}
---@alias CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData
CS.UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData = UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData

---@return UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData
function UnityEngine.TestRunner.TestLaunchers.RemoteTestResultDataWithTestData.New() end

---@class UnityEngine.TestRunner.NUnitExtensions.ITestSuiteModifier
UnityEngine.TestRunner.NUnitExtensions.ITestSuiteModifier = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.ITestSuiteModifier UnityEngine.TestRunner.NUnitExtensions.ITestSuiteModifier
CS.UnityEngine.TestRunner.NUnitExtensions.ITestSuiteModifier = UnityEngine.TestRunner.NUnitExtensions.ITestSuiteModifier

---@param suite NUnit.Framework.Internal.TestSuite
---@return NUnit.Framework.Internal.TestSuite
function UnityEngine.TestRunner.NUnitExtensions.ITestSuiteModifier:ModifySuite(suite) end

---@class UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier : System.Object
UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier
CS.UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier = UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier

---@param orderedTestNames System.String[]
---@return UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier
function UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier.New(orderedTestNames) end
---@param root NUnit.Framework.Internal.TestSuite
---@return NUnit.Framework.Internal.TestSuite
function UnityEngine.TestRunner.NUnitExtensions.OrderedTestSuiteModifier:ModifySuite(root) end

---@class UnityEngine.TestRunner.NUnitExtensions.TestExtensions : System.Object
UnityEngine.TestRunner.NUnitExtensions.TestExtensions = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.TestExtensions UnityEngine.TestRunner.NUnitExtensions.TestExtensions
CS.UnityEngine.TestRunner.NUnitExtensions.TestExtensions = UnityEngine.TestRunner.NUnitExtensions.TestExtensions

---@param test NUnit.Framework.Interfaces.ITest
---@param categoryFilter System.String[]
---@return boolean
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.HasCategory(test, categoryFilter) end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Collections.Generic.List
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetAllCategoriesFromTest(test) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.ParseForNameDuplicates(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return number
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetChildIndex(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return boolean
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.HasChildIndex(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return string
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetUniqueName(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return string
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetFullName(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return string
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetFullNameWithoutDllPath(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return string
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetSkipReason(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return string
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetParentId(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return string
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetParentFullName(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return string
function UnityEngine.TestRunner.NUnitExtensions.TestExtensions.GetParentUniqueName(test) end

---@class UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions : System.Object
UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions
CS.UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions = UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions

---@param testResult NUnit.Framework.Internal.TestResult
---@param prefix string
---@param ex System.Exception
---@param resultState NUnit.Framework.Interfaces.ResultState
function UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions.RecordPrefixedException(testResult, prefix, ex, resultState) end
---@param testResult NUnit.Framework.Internal.TestResult
---@param prefix string
---@param error string
---@param resultState NUnit.Framework.Interfaces.ResultState
function UnityEngine.TestRunner.NUnitExtensions.TestResultExtensions.RecordPrefixedError(testResult, prefix, error, resultState) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem : UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
---@field Children System.Collections.Generic.List
UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem = UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem

---@param suite NUnit.Framework.Internal.TestSuite
---@param childFilter NUnit.Framework.Interfaces.ITestFilter
---@param factory UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem
function UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.New(suite, childFilter, factory) end
---@param force boolean
function UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem:Cancel(force) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem : UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
---@field monoBehaviourCoroutineRunner UnityEngine.MonoBehaviour
UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem = UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem

---@param test NUnit.Framework.Internal.TestMethod
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem
function UnityEngine.TestRunner.NUnitExtensions.Runner.CoroutineTestWorkItem.New(test, filter) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks : System.Object
---@field RestoringTestContext System.Action
UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks = UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks

---@return UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks
function UnityEngine.TestRunner.NUnitExtensions.Runner.EditModeTestCallbacks.New() end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem : UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem = UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem

---@param test NUnit.Framework.Internal.TestMethod
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem
function UnityEngine.TestRunner.NUnitExtensions.Runner.DefaultTestWorkItem.New(test, filter) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand : NUnit.Framework.Internal.Commands.TestCommand
UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand = UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand

---@param test NUnit.Framework.Internal.Test
---@param resultState NUnit.Framework.Interfaces.ResultState
---@param message string
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand
function UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand.New(test, resultState, message) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand:Execute(context) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestRunner.NUnitExtensions.Runner.FailCommand:ExecuteEnumerable(context) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.IEnumerableTestMethodCommand
UnityEngine.TestRunner.NUnitExtensions.Runner.IEnumerableTestMethodCommand = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.IEnumerableTestMethodCommand UnityEngine.TestRunner.NUnitExtensions.Runner.IEnumerableTestMethodCommand
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.IEnumerableTestMethodCommand = UnityEngine.TestRunner.NUnitExtensions.Runner.IEnumerableTestMethodCommand

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestRunner.NUnitExtensions.Runner.IEnumerableTestMethodCommand:ExecuteEnumerable(context) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory : UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory
UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory = UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory

---@return UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory
function UnityEngine.TestRunner.NUnitExtensions.Runner.PlaymodeWorkItemFactory.New() end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload : System.Object
UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload = UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload

---@return UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload
function UnityEngine.TestRunner.NUnitExtensions.Runner.RestoreTestContextAfterDomainReload.New() end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.TestCommandBuilder : System.Object
UnityEngine.TestRunner.NUnitExtensions.Runner.TestCommandBuilder = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.TestCommandBuilder UnityEngine.TestRunner.NUnitExtensions.Runner.TestCommandBuilder
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.TestCommandBuilder = UnityEngine.TestRunner.NUnitExtensions.Runner.TestCommandBuilder

---@param test NUnit.Framework.Internal.TestMethod
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return NUnit.Framework.Internal.Commands.TestCommand
function UnityEngine.TestRunner.NUnitExtensions.Runner.TestCommandBuilder.BuildTestCommand(test, filter) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand = UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand

---@param innerCommand NUnit.Framework.Internal.Commands.TestCommand
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand.New(innerCommand) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand:Execute(context) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityLogCheckDelegatingCommand:ExecuteEnumerable(context) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner
---@field LoadedTest NUnit.Framework.Interfaces.ITest
---@field Result NUnit.Framework.Interfaces.ITestResult
---@field IsTestLoaded boolean
---@field IsTestRunning boolean
---@field IsTestComplete boolean
---@field TopLevelWorkItem UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner = UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner

---@return UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
function UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner:GetCurrentContext() end
---@param assemblies System.Reflection.Assembly[]
---@param testPlatform UnityEngine.TestTools.TestPlatform
---@param settings System.Collections.Generic.IDictionary
---@return NUnit.Framework.Interfaces.ITest
function UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner:Load(assemblies, testPlatform, settings) end
---@param listener NUnit.Framework.Interfaces.ITestListener
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return System.Collections.IEnumerable
function UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner:Run(listener, filter) end
function UnityEngine.TestRunner.NUnitExtensions.Runner.IUnityTestAssemblyRunner:StopRun() end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner : System.Object
---@field LoadedTest NUnit.Framework.Interfaces.ITest
---@field Result NUnit.Framework.Interfaces.ITestResult
---@field IsTestLoaded boolean
---@field IsTestRunning boolean
---@field IsTestComplete boolean
---@field TopLevelWorkItem UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner = UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner

---@param builder UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder
---@param factory UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner.New(builder, factory) end
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner:GetCurrentContext() end
---@param assemblies System.Reflection.Assembly[]
---@param testPlatform UnityEngine.TestTools.TestPlatform
---@param settings System.Collections.Generic.IDictionary
---@return NUnit.Framework.Interfaces.ITest
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner:Load(assemblies, testPlatform, settings) end
---@param listener NUnit.Framework.Interfaces.ITestListener
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return System.Collections.IEnumerable
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner:Run(listener, filter) end
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestAssemblyRunner:StopRun() end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext : System.Object
---@field CurrentContext UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
---@field Context UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
---@field CurrentTest NUnit.Framework.Internal.Test
---@field StartTime System.DateTime
---@field StartTicks number
---@field CurrentResult NUnit.Framework.Internal.TestResult
---@field TestObject System.Object
---@field WorkDirectory string
---@field ExecutionStatus NUnit.Framework.Internal.TestExecutionStatus
---@field UpstreamActions System.Collections.Generic.List
---@field TestCaseTimeout number
---@field CurrentCulture System.Globalization.CultureInfo
---@field CurrentUICulture System.Globalization.CultureInfo
---@field Listener NUnit.Framework.Interfaces.ITestListener
---@field OutWriter System.IO.TextWriter
---@field StopOnError boolean
---@field Dispatcher NUnit.Framework.Internal.Execution.IWorkItemDispatcher
---@field ParallelScope NUnit.Framework.ParallelScope
---@field WorkerId string
---@field RandomGenerator NUnit.Framework.Internal.Randomizer
---@field CurrentValueFormatter NUnit.Framework.Constraints.ValueFormatter
---@field IsSingleThreaded boolean
---@field SetUpTearDownState UnityEngine.TestTools.BeforeAfterTestCommandState
---@field OuterUnityTestActionState UnityEngine.TestTools.BeforeAfterTestCommandState
---@field EnumerableTestState UnityEngine.TestTools.EnumerableTestState
UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext = UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext

---@overload fun() : UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
---@param other UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext.New(other) end
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext:IncrementAssertCount() end
---@param formatterFactory NUnit.Framework.Constraints.ValueFormatterFactory
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext:AddFormatter(formatterFactory) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem : System.Object
---@field ResultedInDomainReload boolean
---@field Context UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
---@field Test NUnit.Framework.Internal.Test
---@field Result NUnit.Framework.Internal.TestResult
---@field State NUnit.Framework.Internal.Execution.WorkItemState
---@field Actions System.Collections.Generic.List
UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem = UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem

---@param context UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem:InitializeContext(context) end
---@return System.Collections.IEnumerable
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem:Execute() end
---@param force boolean
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem:Cancel(force) end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder : System.Object
---@field alreadyStartedTests System.Collections.Generic.List
---@field alreadyExecutedTests System.Collections.Generic.List
UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder = UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder

---@return UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder
function UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItemDataHolder.New() end

---@class UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory : System.Object
UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory = UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory

---@param loadedTest NUnit.Framework.Interfaces.ITest
---@param filter NUnit.Framework.Interfaces.ITestFilter
---@return UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
function UnityEngine.TestRunner.NUnitExtensions.Runner.WorkItemFactory:Create(loadedTest, filter) end

---@class UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter : NUnit.Framework.Internal.Filters.ValueMatchFilter
UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter
CS.UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter = UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter

---@param assemblyName string
---@return UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter
function UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter.New(assemblyName) end
---@param test NUnit.Framework.Interfaces.ITest
---@return boolean
function UnityEngine.TestRunner.NUnitExtensions.Filters.AssemblyNameFilter:Match(test) end

---@class UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended : NUnit.Framework.Internal.Filters.CategoryFilter
---@field k_DefaultCategory string
UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended
CS.UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended = UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended

---@param name string
---@return UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended
function UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended.New(name) end
---@param test NUnit.Framework.Interfaces.ITest
---@return boolean
function UnityEngine.TestRunner.NUnitExtensions.Filters.CategoryFilterExtended:Match(test) end

---@class UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter : NUnit.Framework.Internal.Filters.FullNameFilter
UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter
CS.UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter = UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter

---@param expectedValue string
---@return UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter
function UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter.New(expectedValue) end
---@param test NUnit.Framework.Interfaces.ITest
---@return boolean
function UnityEngine.TestRunner.NUnitExtensions.Filters.FullNameFilter:Match(test) end

---@class UnityEngine.TestTools.LogAssert : System.Object
---@field ignoreFailingMessages boolean
UnityEngine.TestTools.LogAssert = {}
---@alias CS.UnityEngine.TestTools.LogAssert UnityEngine.TestTools.LogAssert
CS.UnityEngine.TestTools.LogAssert = UnityEngine.TestTools.LogAssert

---@overload fun(type: UnityEngine.LogType, message: string)
---@param type UnityEngine.LogType
---@param message System.Text.RegularExpressions.Regex
function UnityEngine.TestTools.LogAssert.Expect(type, message) end
function UnityEngine.TestTools.LogAssert.NoUnexpectedReceived() end

---@class UnityEngine.TestTools.ConditionalIgnoreAttribute : NUnit.Framework.NUnitAttribute
UnityEngine.TestTools.ConditionalIgnoreAttribute = {}
---@alias CS.UnityEngine.TestTools.ConditionalIgnoreAttribute UnityEngine.TestTools.ConditionalIgnoreAttribute
CS.UnityEngine.TestTools.ConditionalIgnoreAttribute = UnityEngine.TestTools.ConditionalIgnoreAttribute

---@param conditionKey string
---@param ignoreReason string
---@return UnityEngine.TestTools.ConditionalIgnoreAttribute
function UnityEngine.TestTools.ConditionalIgnoreAttribute.New(conditionKey, ignoreReason) end
---@param key string
---@param value boolean
function UnityEngine.TestTools.ConditionalIgnoreAttribute.AddConditionalIgnoreMapping(key, value) end
---@param test NUnit.Framework.Internal.Test
function UnityEngine.TestTools.ConditionalIgnoreAttribute:ApplyToTest(test) end

---@class UnityEngine.TestTools.TestEnumerator : System.Object
---@field Enumerator System.Collections.IEnumerator
UnityEngine.TestTools.TestEnumerator = {}
---@alias CS.UnityEngine.TestTools.TestEnumerator UnityEngine.TestTools.TestEnumerator
CS.UnityEngine.TestTools.TestEnumerator = UnityEngine.TestTools.TestEnumerator

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@param testEnumerator System.Collections.IEnumerator
---@return UnityEngine.TestTools.TestEnumerator
function UnityEngine.TestTools.TestEnumerator.New(context, testEnumerator) end
function UnityEngine.TestTools.TestEnumerator.Reset() end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.TestEnumerator:Execute() end

---@class UnityEngine.TestTools.TestMustExpectAllLogsAttribute : System.Attribute
---@field MustExpect boolean
UnityEngine.TestTools.TestMustExpectAllLogsAttribute = {}
---@alias CS.UnityEngine.TestTools.TestMustExpectAllLogsAttribute UnityEngine.TestTools.TestMustExpectAllLogsAttribute
CS.UnityEngine.TestTools.TestMustExpectAllLogsAttribute = UnityEngine.TestTools.TestMustExpectAllLogsAttribute

---@param mustExpect boolean
---@return UnityEngine.TestTools.TestMustExpectAllLogsAttribute
function UnityEngine.TestTools.TestMustExpectAllLogsAttribute.New(mustExpect) end

---@class UnityEngine.TestTools.UnityCombinatorialStrategy : NUnit.Framework.Internal.Builders.CombinatorialStrategy
UnityEngine.TestTools.UnityCombinatorialStrategy = {}
---@alias CS.UnityEngine.TestTools.UnityCombinatorialStrategy UnityEngine.TestTools.UnityCombinatorialStrategy
CS.UnityEngine.TestTools.UnityCombinatorialStrategy = UnityEngine.TestTools.UnityCombinatorialStrategy

---@return UnityEngine.TestTools.UnityCombinatorialStrategy
function UnityEngine.TestTools.UnityCombinatorialStrategy.New() end
---@param sources System.Collections.IEnumerable[]
---@return System.Collections.Generic.IEnumerable
function UnityEngine.TestTools.UnityCombinatorialStrategy:GetTestCases(sources) end

---@class UnityEngine.TestTools.UnityPlatformAttribute : NUnit.Framework.NUnitAttribute
---@field include UnityEngine.RuntimePlatform[]
---@field exclude UnityEngine.RuntimePlatform[]
UnityEngine.TestTools.UnityPlatformAttribute = {}
---@alias CS.UnityEngine.TestTools.UnityPlatformAttribute UnityEngine.TestTools.UnityPlatformAttribute
CS.UnityEngine.TestTools.UnityPlatformAttribute = UnityEngine.TestTools.UnityPlatformAttribute

---@overload fun() : UnityEngine.TestTools.UnityPlatformAttribute
---@param include UnityEngine.RuntimePlatform[]
---@return UnityEngine.TestTools.UnityPlatformAttribute
function UnityEngine.TestTools.UnityPlatformAttribute.New(include) end
---@param test NUnit.Framework.Internal.Test
function UnityEngine.TestTools.UnityPlatformAttribute:ApplyToTest(test) end

---@class UnityEngine.TestTools.UnitySetUpAttribute : NUnit.Framework.NUnitAttribute
UnityEngine.TestTools.UnitySetUpAttribute = {}
---@alias CS.UnityEngine.TestTools.UnitySetUpAttribute UnityEngine.TestTools.UnitySetUpAttribute
CS.UnityEngine.TestTools.UnitySetUpAttribute = UnityEngine.TestTools.UnitySetUpAttribute

---@return UnityEngine.TestTools.UnitySetUpAttribute
function UnityEngine.TestTools.UnitySetUpAttribute.New() end

---@class UnityEngine.TestTools.UnityTearDownAttribute : NUnit.Framework.NUnitAttribute
UnityEngine.TestTools.UnityTearDownAttribute = {}
---@alias CS.UnityEngine.TestTools.UnityTearDownAttribute UnityEngine.TestTools.UnityTearDownAttribute
CS.UnityEngine.TestTools.UnityTearDownAttribute = UnityEngine.TestTools.UnityTearDownAttribute

---@return UnityEngine.TestTools.UnityTearDownAttribute
function UnityEngine.TestTools.UnityTearDownAttribute.New() end

---@class UnityEngine.TestTools.UnityTestAttribute : NUnit.Framework.CombiningStrategyAttribute
UnityEngine.TestTools.UnityTestAttribute = {}
---@alias CS.UnityEngine.TestTools.UnityTestAttribute UnityEngine.TestTools.UnityTestAttribute
CS.UnityEngine.TestTools.UnityTestAttribute = UnityEngine.TestTools.UnityTestAttribute

---@return UnityEngine.TestTools.UnityTestAttribute
function UnityEngine.TestTools.UnityTestAttribute.New() end
---@param test NUnit.Framework.Internal.Test
function UnityEngine.TestTools.UnityTestAttribute:ApplyToTest(test) end

---@class UnityEngine.TestTools.BeforeAfterTestCommandBase : NUnit.Framework.Internal.Commands.DelegatingTestCommand
UnityEngine.TestTools.BeforeAfterTestCommandBase = {}
---@alias CS.UnityEngine.TestTools.BeforeAfterTestCommandBase UnityEngine.TestTools.BeforeAfterTestCommandBase
CS.UnityEngine.TestTools.BeforeAfterTestCommandBase = UnityEngine.TestTools.BeforeAfterTestCommandBase

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestTools.BeforeAfterTestCommandBase:ExecuteEnumerable(context) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.BeforeAfterTestCommandBase:Execute(context) end

---@class UnityEngine.TestTools.BeforeAfterTestCommandState : UnityEngine.ScriptableObject
---@field NextBeforeStepIndex number
---@field NextBeforeStepPc number
---@field NextAfterStepIndex number
---@field NextAfterStepPc number
---@field TestHasRun boolean
---@field CurrentTestResultStatus NUnit.Framework.Interfaces.TestStatus
---@field CurrentTestResultLabel string
---@field CurrentTestResultSite NUnit.Framework.Interfaces.FailureSite
---@field CurrentTestMessage string
---@field CurrentTestStrackTrace string
---@field TestAfterStarted boolean
---@field Timestamp number
UnityEngine.TestTools.BeforeAfterTestCommandState = {}
---@alias CS.UnityEngine.TestTools.BeforeAfterTestCommandState UnityEngine.TestTools.BeforeAfterTestCommandState
CS.UnityEngine.TestTools.BeforeAfterTestCommandState = UnityEngine.TestTools.BeforeAfterTestCommandState

---@return UnityEngine.TestTools.BeforeAfterTestCommandState
function UnityEngine.TestTools.BeforeAfterTestCommandState.New() end
function UnityEngine.TestTools.BeforeAfterTestCommandState:Reset() end
---@param result NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.BeforeAfterTestCommandState:StoreTestResult(result) end
---@param result NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.BeforeAfterTestCommandState:ApplyTestResult(result) end

---@class UnityEngine.TestTools.EnumerableApplyChangesToContextCommand : NUnit.Framework.Internal.Commands.ApplyChangesToContextCommand
UnityEngine.TestTools.EnumerableApplyChangesToContextCommand = {}
---@alias CS.UnityEngine.TestTools.EnumerableApplyChangesToContextCommand UnityEngine.TestTools.EnumerableApplyChangesToContextCommand
CS.UnityEngine.TestTools.EnumerableApplyChangesToContextCommand = UnityEngine.TestTools.EnumerableApplyChangesToContextCommand

---@param innerCommand NUnit.Framework.Internal.Commands.TestCommand
---@param changes System.Collections.Generic.IEnumerable
---@return UnityEngine.TestTools.EnumerableApplyChangesToContextCommand
function UnityEngine.TestTools.EnumerableApplyChangesToContextCommand.New(innerCommand, changes) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestTools.EnumerableApplyChangesToContextCommand:ExecuteEnumerable(context) end

---@class UnityEngine.TestTools.EnumerableRepeatedTestCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
UnityEngine.TestTools.EnumerableRepeatedTestCommand = {}
---@alias CS.UnityEngine.TestTools.EnumerableRepeatedTestCommand UnityEngine.TestTools.EnumerableRepeatedTestCommand
CS.UnityEngine.TestTools.EnumerableRepeatedTestCommand = UnityEngine.TestTools.EnumerableRepeatedTestCommand

---@param commandToReplace NUnit.Framework.RepeatAttribute.RepeatedTestCommand
---@return UnityEngine.TestTools.EnumerableRepeatedTestCommand
function UnityEngine.TestTools.EnumerableRepeatedTestCommand.New(commandToReplace) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.EnumerableRepeatedTestCommand:Execute(context) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestTools.EnumerableRepeatedTestCommand:ExecuteEnumerable(context) end

---@class UnityEngine.TestTools.EnumerableRetryTestCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
UnityEngine.TestTools.EnumerableRetryTestCommand = {}
---@alias CS.UnityEngine.TestTools.EnumerableRetryTestCommand UnityEngine.TestTools.EnumerableRetryTestCommand
CS.UnityEngine.TestTools.EnumerableRetryTestCommand = UnityEngine.TestTools.EnumerableRetryTestCommand

---@param commandToReplace NUnit.Framework.RetryAttribute.RetryCommand
---@return UnityEngine.TestTools.EnumerableRetryTestCommand
function UnityEngine.TestTools.EnumerableRetryTestCommand.New(commandToReplace) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.EnumerableRetryTestCommand:Execute(context) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestTools.EnumerableRetryTestCommand:ExecuteEnumerable(context) end

---@class UnityEngine.TestTools.EnumerableSetUpTearDownCommand : UnityEngine.TestTools.BeforeAfterTestCommandBase
UnityEngine.TestTools.EnumerableSetUpTearDownCommand = {}
---@alias CS.UnityEngine.TestTools.EnumerableSetUpTearDownCommand UnityEngine.TestTools.EnumerableSetUpTearDownCommand
CS.UnityEngine.TestTools.EnumerableSetUpTearDownCommand = UnityEngine.TestTools.EnumerableSetUpTearDownCommand

---@param innerCommand NUnit.Framework.Internal.Commands.TestCommand
---@return UnityEngine.TestTools.EnumerableSetUpTearDownCommand
function UnityEngine.TestTools.EnumerableSetUpTearDownCommand.New(innerCommand) end

---@class UnityEngine.TestTools.EnumerableTestMethodCommand : NUnit.Framework.Internal.Commands.TestCommand
UnityEngine.TestTools.EnumerableTestMethodCommand = {}
---@alias CS.UnityEngine.TestTools.EnumerableTestMethodCommand UnityEngine.TestTools.EnumerableTestMethodCommand
CS.UnityEngine.TestTools.EnumerableTestMethodCommand = UnityEngine.TestTools.EnumerableTestMethodCommand

---@param testMethod NUnit.Framework.Internal.TestMethod
---@return UnityEngine.TestTools.EnumerableTestMethodCommand
function UnityEngine.TestTools.EnumerableTestMethodCommand.New(testMethod) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerable
function UnityEngine.TestTools.EnumerableTestMethodCommand:ExecuteEnumerable(context) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.EnumerableTestMethodCommand:Execute(context) end

---@class UnityEngine.TestTools.EnumerableTestState : System.Object
---@field Repeat number
---@field Retry number
UnityEngine.TestTools.EnumerableTestState = {}
---@alias CS.UnityEngine.TestTools.EnumerableTestState UnityEngine.TestTools.EnumerableTestState
CS.UnityEngine.TestTools.EnumerableTestState = UnityEngine.TestTools.EnumerableTestState

---@return UnityEngine.TestTools.EnumerableTestState
function UnityEngine.TestTools.EnumerableTestState.New() end

---@class UnityEngine.TestTools.ImmediateEnumerableCommand : NUnit.Framework.Internal.Commands.DelegatingTestCommand
UnityEngine.TestTools.ImmediateEnumerableCommand = {}
---@alias CS.UnityEngine.TestTools.ImmediateEnumerableCommand UnityEngine.TestTools.ImmediateEnumerableCommand
CS.UnityEngine.TestTools.ImmediateEnumerableCommand = UnityEngine.TestTools.ImmediateEnumerableCommand

---@param innerCommand NUnit.Framework.Internal.Commands.TestCommand
---@return UnityEngine.TestTools.ImmediateEnumerableCommand
function UnityEngine.TestTools.ImmediateEnumerableCommand.New(innerCommand) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.ImmediateEnumerableCommand:Execute(context) end

---@class UnityEngine.TestTools.OuterUnityTestActionCommand : UnityEngine.TestTools.BeforeAfterTestCommandBase
UnityEngine.TestTools.OuterUnityTestActionCommand = {}
---@alias CS.UnityEngine.TestTools.OuterUnityTestActionCommand UnityEngine.TestTools.OuterUnityTestActionCommand
CS.UnityEngine.TestTools.OuterUnityTestActionCommand = UnityEngine.TestTools.OuterUnityTestActionCommand

---@param innerCommand NUnit.Framework.Internal.Commands.TestCommand
---@return UnityEngine.TestTools.OuterUnityTestActionCommand
function UnityEngine.TestTools.OuterUnityTestActionCommand.New(innerCommand) end

---@class UnityEngine.TestTools.SetUpTearDownCommand : UnityEngine.TestTools.BeforeAfterTestCommandBase
UnityEngine.TestTools.SetUpTearDownCommand = {}
---@alias CS.UnityEngine.TestTools.SetUpTearDownCommand UnityEngine.TestTools.SetUpTearDownCommand
CS.UnityEngine.TestTools.SetUpTearDownCommand = UnityEngine.TestTools.SetUpTearDownCommand

---@param innerCommand NUnit.Framework.Internal.Commands.TestCommand
---@return UnityEngine.TestTools.SetUpTearDownCommand
function UnityEngine.TestTools.SetUpTearDownCommand.New(innerCommand) end

---@class UnityEngine.TestTools.TestActionCommand : UnityEngine.TestTools.BeforeAfterTestCommandBase
UnityEngine.TestTools.TestActionCommand = {}
---@alias CS.UnityEngine.TestTools.TestActionCommand UnityEngine.TestTools.TestActionCommand
CS.UnityEngine.TestTools.TestActionCommand = UnityEngine.TestTools.TestActionCommand

---@param innerCommand NUnit.Framework.Internal.Commands.TestCommand
---@return UnityEngine.TestTools.TestActionCommand
function UnityEngine.TestTools.TestActionCommand.New(innerCommand) end

---@class UnityEngine.TestTools.TestCommandPcHelper : System.Object
UnityEngine.TestTools.TestCommandPcHelper = {}
---@alias CS.UnityEngine.TestTools.TestCommandPcHelper UnityEngine.TestTools.TestCommandPcHelper
CS.UnityEngine.TestTools.TestCommandPcHelper = UnityEngine.TestTools.TestCommandPcHelper

---@return UnityEngine.TestTools.TestCommandPcHelper
function UnityEngine.TestTools.TestCommandPcHelper.New() end
---@param enumerator System.Collections.IEnumerator
---@param pc number
function UnityEngine.TestTools.TestCommandPcHelper:SetEnumeratorPC(enumerator, pc) end
---@param enumerator System.Collections.IEnumerator
---@return number
function UnityEngine.TestTools.TestCommandPcHelper:GetEnumeratorPC(enumerator) end

---@class UnityEngine.TestTools.UnityTestMethodCommand : NUnit.Framework.Internal.Commands.TestMethodCommand
UnityEngine.TestTools.UnityTestMethodCommand = {}
---@alias CS.UnityEngine.TestTools.UnityTestMethodCommand UnityEngine.TestTools.UnityTestMethodCommand
CS.UnityEngine.TestTools.UnityTestMethodCommand = UnityEngine.TestTools.UnityTestMethodCommand

---@param testMethod NUnit.Framework.Internal.TestMethod
---@return UnityEngine.TestTools.UnityTestMethodCommand
function UnityEngine.TestTools.UnityTestMethodCommand.New(testMethod) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return NUnit.Framework.Internal.TestResult
function UnityEngine.TestTools.UnityTestMethodCommand:Execute(context) end

---@class UnityEngine.TestTools.IEditModeTestYieldInstruction
---@field ExpectDomainReload boolean
---@field ExpectedPlaymodeState boolean
UnityEngine.TestTools.IEditModeTestYieldInstruction = {}
---@alias CS.UnityEngine.TestTools.IEditModeTestYieldInstruction UnityEngine.TestTools.IEditModeTestYieldInstruction
CS.UnityEngine.TestTools.IEditModeTestYieldInstruction = UnityEngine.TestTools.IEditModeTestYieldInstruction

---@return System.Collections.IEnumerator
function UnityEngine.TestTools.IEditModeTestYieldInstruction:Perform() end

---@class UnityEngine.TestTools.TestPlatform
---@field All UnityEngine.TestTools.TestPlatform
---@field EditMode UnityEngine.TestTools.TestPlatform
---@field PlayMode UnityEngine.TestTools.TestPlatform
UnityEngine.TestTools.TestPlatform = {}
---@alias CS.UnityEngine.TestTools.TestPlatform UnityEngine.TestTools.TestPlatform
CS.UnityEngine.TestTools.TestPlatform = UnityEngine.TestTools.TestPlatform

---@param flag UnityEngine.TestTools.TestPlatform
---@return boolean
function UnityEngine.TestTools.TestPlatform:IsFlagIncluded(flag) end

---@class UnityEngine.TestTools.TestPlatformEnumExtensions : System.Object
UnityEngine.TestTools.TestPlatformEnumExtensions = {}
---@alias CS.UnityEngine.TestTools.TestPlatformEnumExtensions UnityEngine.TestTools.TestPlatformEnumExtensions
CS.UnityEngine.TestTools.TestPlatformEnumExtensions = UnityEngine.TestTools.TestPlatformEnumExtensions

---@param flags UnityEngine.TestTools.TestPlatform
---@param flag UnityEngine.TestTools.TestPlatform
---@return boolean
function UnityEngine.TestTools.TestPlatformEnumExtensions.IsFlagIncluded(flags, flag) end

---@class UnityEngine.TestTools.AttributeHelper : System.Object
UnityEngine.TestTools.AttributeHelper = {}
---@alias CS.UnityEngine.TestTools.AttributeHelper UnityEngine.TestTools.AttributeHelper
CS.UnityEngine.TestTools.AttributeHelper = UnityEngine.TestTools.AttributeHelper


---@class UnityEngine.TestTools.IOuterUnityTestAction
UnityEngine.TestTools.IOuterUnityTestAction = {}
---@alias CS.UnityEngine.TestTools.IOuterUnityTestAction UnityEngine.TestTools.IOuterUnityTestAction
CS.UnityEngine.TestTools.IOuterUnityTestAction = UnityEngine.TestTools.IOuterUnityTestAction

---@param test NUnit.Framework.Interfaces.ITest
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.IOuterUnityTestAction:BeforeTest(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.IOuterUnityTestAction:AfterTest(test) end

---@class UnityEngine.TestTools.IPostBuildCleanup
UnityEngine.TestTools.IPostBuildCleanup = {}
---@alias CS.UnityEngine.TestTools.IPostBuildCleanup UnityEngine.TestTools.IPostBuildCleanup
CS.UnityEngine.TestTools.IPostBuildCleanup = UnityEngine.TestTools.IPostBuildCleanup

function UnityEngine.TestTools.IPostBuildCleanup:Cleanup() end

---@class UnityEngine.TestTools.IPrebuildSetup
UnityEngine.TestTools.IPrebuildSetup = {}
---@alias CS.UnityEngine.TestTools.IPrebuildSetup UnityEngine.TestTools.IPrebuildSetup
CS.UnityEngine.TestTools.IPrebuildSetup = UnityEngine.TestTools.IPrebuildSetup

function UnityEngine.TestTools.IPrebuildSetup:Setup() end

---@class UnityEngine.TestTools.IMonoBehaviourTest
---@field IsTestFinished boolean
UnityEngine.TestTools.IMonoBehaviourTest = {}
---@alias CS.UnityEngine.TestTools.IMonoBehaviourTest UnityEngine.TestTools.IMonoBehaviourTest
CS.UnityEngine.TestTools.IMonoBehaviourTest = UnityEngine.TestTools.IMonoBehaviourTest


---@class UnityEngine.TestTools.MonoBehaviourTest : UnityEngine.CustomYieldInstruction
---@field component T
---@field gameObject UnityEngine.GameObject
---@field keepWaiting boolean
UnityEngine.TestTools.MonoBehaviourTest = {}
---@alias CS.UnityEngine.TestTools.MonoBehaviourTest UnityEngine.TestTools.MonoBehaviourTest
CS.UnityEngine.TestTools.MonoBehaviourTest = UnityEngine.TestTools.MonoBehaviourTest

---@param dontDestroyOnLoad boolean
---@return UnityEngine.TestTools.MonoBehaviourTest
function UnityEngine.TestTools.MonoBehaviourTest.New(dontDestroyOnLoad) end

---@class UnityEngine.TestTools.PostBuildCleanupAttribute : System.Attribute
UnityEngine.TestTools.PostBuildCleanupAttribute = {}
---@alias CS.UnityEngine.TestTools.PostBuildCleanupAttribute UnityEngine.TestTools.PostBuildCleanupAttribute
CS.UnityEngine.TestTools.PostBuildCleanupAttribute = UnityEngine.TestTools.PostBuildCleanupAttribute

---@overload fun(targetClass: System.Type) : UnityEngine.TestTools.PostBuildCleanupAttribute
---@param targetClassName string
---@return UnityEngine.TestTools.PostBuildCleanupAttribute
function UnityEngine.TestTools.PostBuildCleanupAttribute.New(targetClassName) end

---@class UnityEngine.TestTools.PrebuildSetupAttribute : System.Attribute
UnityEngine.TestTools.PrebuildSetupAttribute = {}
---@alias CS.UnityEngine.TestTools.PrebuildSetupAttribute UnityEngine.TestTools.PrebuildSetupAttribute
CS.UnityEngine.TestTools.PrebuildSetupAttribute = UnityEngine.TestTools.PrebuildSetupAttribute

---@overload fun(targetClass: System.Type) : UnityEngine.TestTools.PrebuildSetupAttribute
---@param targetClassName string
---@return UnityEngine.TestTools.PrebuildSetupAttribute
function UnityEngine.TestTools.PrebuildSetupAttribute.New(targetClassName) end

---@class UnityEngine.TestTools.Utils.AssemblyLoadProxy : System.Object
UnityEngine.TestTools.Utils.AssemblyLoadProxy = {}
---@alias CS.UnityEngine.TestTools.Utils.AssemblyLoadProxy UnityEngine.TestTools.Utils.AssemblyLoadProxy
CS.UnityEngine.TestTools.Utils.AssemblyLoadProxy = UnityEngine.TestTools.Utils.AssemblyLoadProxy

---@return UnityEngine.TestTools.Utils.AssemblyLoadProxy
function UnityEngine.TestTools.Utils.AssemblyLoadProxy.New() end
---@param assemblyString string
---@return UnityEngine.TestTools.Utils.IAssemblyWrapper
function UnityEngine.TestTools.Utils.AssemblyLoadProxy:Load(assemblyString) end

---@class UnityEngine.TestTools.Utils.AssemblyWrapper : System.Object
---@field Assembly System.Reflection.Assembly
---@field Name System.Reflection.AssemblyName
---@field Location string
UnityEngine.TestTools.Utils.AssemblyWrapper = {}
---@alias CS.UnityEngine.TestTools.Utils.AssemblyWrapper UnityEngine.TestTools.Utils.AssemblyWrapper
CS.UnityEngine.TestTools.Utils.AssemblyWrapper = UnityEngine.TestTools.Utils.AssemblyWrapper

---@param assembly System.Reflection.Assembly
---@return UnityEngine.TestTools.Utils.AssemblyWrapper
function UnityEngine.TestTools.Utils.AssemblyWrapper.New(assembly) end
---@return System.Reflection.AssemblyName[]
function UnityEngine.TestTools.Utils.AssemblyWrapper:GetReferencedAssemblies() end

---@class UnityEngine.TestTools.Utils.IAssemblyLoadProxy
UnityEngine.TestTools.Utils.IAssemblyLoadProxy = {}
---@alias CS.UnityEngine.TestTools.Utils.IAssemblyLoadProxy UnityEngine.TestTools.Utils.IAssemblyLoadProxy
CS.UnityEngine.TestTools.Utils.IAssemblyLoadProxy = UnityEngine.TestTools.Utils.IAssemblyLoadProxy

---@param assemblyString string
---@return UnityEngine.TestTools.Utils.IAssemblyWrapper
function UnityEngine.TestTools.Utils.IAssemblyLoadProxy:Load(assemblyString) end

---@class UnityEngine.TestTools.Utils.IAssemblyWrapper
---@field Assembly System.Reflection.Assembly
---@field Name System.Reflection.AssemblyName
---@field Location string
UnityEngine.TestTools.Utils.IAssemblyWrapper = {}
---@alias CS.UnityEngine.TestTools.Utils.IAssemblyWrapper UnityEngine.TestTools.Utils.IAssemblyWrapper
CS.UnityEngine.TestTools.Utils.IAssemblyWrapper = UnityEngine.TestTools.Utils.IAssemblyWrapper

---@return System.Reflection.AssemblyName[]
function UnityEngine.TestTools.Utils.IAssemblyWrapper:GetReferencedAssemblies() end

---@class UnityEngine.TestTools.Utils.IScriptingRuntimeProxy
UnityEngine.TestTools.Utils.IScriptingRuntimeProxy = {}
---@alias CS.UnityEngine.TestTools.Utils.IScriptingRuntimeProxy UnityEngine.TestTools.Utils.IScriptingRuntimeProxy
CS.UnityEngine.TestTools.Utils.IScriptingRuntimeProxy = UnityEngine.TestTools.Utils.IScriptingRuntimeProxy

---@return System.String[]
function UnityEngine.TestTools.Utils.IScriptingRuntimeProxy:GetAllUserAssemblies() end

---@class UnityEngine.TestTools.Utils.PlayerTestAssemblyProvider : System.Object
UnityEngine.TestTools.Utils.PlayerTestAssemblyProvider = {}
---@alias CS.UnityEngine.TestTools.Utils.PlayerTestAssemblyProvider UnityEngine.TestTools.Utils.PlayerTestAssemblyProvider
CS.UnityEngine.TestTools.Utils.PlayerTestAssemblyProvider = UnityEngine.TestTools.Utils.PlayerTestAssemblyProvider

---@return System.Collections.Generic.List
function UnityEngine.TestTools.Utils.PlayerTestAssemblyProvider:GetUserAssemblies() end

---@class UnityEngine.TestTools.Utils.ScriptingRuntimeProxy : System.Object
UnityEngine.TestTools.Utils.ScriptingRuntimeProxy = {}
---@alias CS.UnityEngine.TestTools.Utils.ScriptingRuntimeProxy UnityEngine.TestTools.Utils.ScriptingRuntimeProxy
CS.UnityEngine.TestTools.Utils.ScriptingRuntimeProxy = UnityEngine.TestTools.Utils.ScriptingRuntimeProxy

---@return UnityEngine.TestTools.Utils.ScriptingRuntimeProxy
function UnityEngine.TestTools.Utils.ScriptingRuntimeProxy.New() end
---@return System.String[]
function UnityEngine.TestTools.Utils.ScriptingRuntimeProxy:GetAllUserAssemblies() end

---@class UnityEngine.TestTools.Utils.ColorEqualityComparer : System.Object
---@field Instance UnityEngine.TestTools.Utils.ColorEqualityComparer
UnityEngine.TestTools.Utils.ColorEqualityComparer = {}
---@alias CS.UnityEngine.TestTools.Utils.ColorEqualityComparer UnityEngine.TestTools.Utils.ColorEqualityComparer
CS.UnityEngine.TestTools.Utils.ColorEqualityComparer = UnityEngine.TestTools.Utils.ColorEqualityComparer

---@param error number
---@return UnityEngine.TestTools.Utils.ColorEqualityComparer
function UnityEngine.TestTools.Utils.ColorEqualityComparer.New(error) end
---@param expected UnityEngine.Color
---@param actual UnityEngine.Color
---@return boolean
function UnityEngine.TestTools.Utils.ColorEqualityComparer:Equals(expected, actual) end
---@param color UnityEngine.Color
---@return number
function UnityEngine.TestTools.Utils.ColorEqualityComparer:GetHashCode(color) end

---@class UnityEngine.TestTools.Utils.CoroutineRunner : System.Object
UnityEngine.TestTools.Utils.CoroutineRunner = {}
---@alias CS.UnityEngine.TestTools.Utils.CoroutineRunner UnityEngine.TestTools.Utils.CoroutineRunner
CS.UnityEngine.TestTools.Utils.CoroutineRunner = UnityEngine.TestTools.Utils.CoroutineRunner

---@param playmodeTestsController UnityEngine.MonoBehaviour
---@param context UnityEngine.TestRunner.NUnitExtensions.Runner.UnityTestExecutionContext
---@return UnityEngine.TestTools.Utils.CoroutineRunner
function UnityEngine.TestTools.Utils.CoroutineRunner.New(playmodeTestsController, context) end
---@param testEnumerator System.Collections.IEnumerator
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.Utils.CoroutineRunner:HandleEnumerableTest(testEnumerator) end
---@return boolean
function UnityEngine.TestTools.Utils.CoroutineRunner:HasFailedWithTimeout() end
---@return number
function UnityEngine.TestTools.Utils.CoroutineRunner:GetDefaultTimeout() end

---@class UnityEngine.TestTools.Utils.FloatEqualityComparer : System.Object
---@field Instance UnityEngine.TestTools.Utils.FloatEqualityComparer
UnityEngine.TestTools.Utils.FloatEqualityComparer = {}
---@alias CS.UnityEngine.TestTools.Utils.FloatEqualityComparer UnityEngine.TestTools.Utils.FloatEqualityComparer
CS.UnityEngine.TestTools.Utils.FloatEqualityComparer = UnityEngine.TestTools.Utils.FloatEqualityComparer

---@param allowedError number
---@return UnityEngine.TestTools.Utils.FloatEqualityComparer
function UnityEngine.TestTools.Utils.FloatEqualityComparer.New(allowedError) end
---@param expected number
---@param actual number
---@return boolean
function UnityEngine.TestTools.Utils.FloatEqualityComparer:Equals(expected, actual) end
---@param value number
---@return number
function UnityEngine.TestTools.Utils.FloatEqualityComparer:GetHashCode(value) end

---@class UnityEngine.TestTools.Utils.QuaternionEqualityComparer : System.Object
---@field Instance UnityEngine.TestTools.Utils.QuaternionEqualityComparer
UnityEngine.TestTools.Utils.QuaternionEqualityComparer = {}
---@alias CS.UnityEngine.TestTools.Utils.QuaternionEqualityComparer UnityEngine.TestTools.Utils.QuaternionEqualityComparer
CS.UnityEngine.TestTools.Utils.QuaternionEqualityComparer = UnityEngine.TestTools.Utils.QuaternionEqualityComparer

---@param allowedError number
---@return UnityEngine.TestTools.Utils.QuaternionEqualityComparer
function UnityEngine.TestTools.Utils.QuaternionEqualityComparer.New(allowedError) end
---@param expected UnityEngine.Quaternion
---@param actual UnityEngine.Quaternion
---@return boolean
function UnityEngine.TestTools.Utils.QuaternionEqualityComparer:Equals(expected, actual) end
---@param quaternion UnityEngine.Quaternion
---@return number
function UnityEngine.TestTools.Utils.QuaternionEqualityComparer:GetHashCode(quaternion) end

---@class UnityEngine.TestTools.Utils.StackTraceFilter : System.Object
UnityEngine.TestTools.Utils.StackTraceFilter = {}
---@alias CS.UnityEngine.TestTools.Utils.StackTraceFilter UnityEngine.TestTools.Utils.StackTraceFilter
CS.UnityEngine.TestTools.Utils.StackTraceFilter = UnityEngine.TestTools.Utils.StackTraceFilter

---@param inputStackTrace string
---@return string
function UnityEngine.TestTools.Utils.StackTraceFilter.Filter(inputStackTrace) end

---@class UnityEngine.TestTools.Utils.Utils : System.Object
UnityEngine.TestTools.Utils.Utils = {}
---@alias CS.UnityEngine.TestTools.Utils.Utils UnityEngine.TestTools.Utils.Utils
CS.UnityEngine.TestTools.Utils.Utils = UnityEngine.TestTools.Utils.Utils

---@param expected number
---@param actual number
---@param epsilon number
---@return boolean
function UnityEngine.TestTools.Utils.Utils.AreFloatsEqual(expected, actual, epsilon) end
---@param expected number
---@param actual number
---@param allowedAbsoluteError number
---@return boolean
function UnityEngine.TestTools.Utils.Utils.AreFloatsEqualAbsoluteError(expected, actual, allowedAbsoluteError) end
---@param type UnityEngine.PrimitiveType
---@return UnityEngine.GameObject
function UnityEngine.TestTools.Utils.Utils.CreatePrimitive(type) end

---@class UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator : System.Object
---@field Instance UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator
UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator = {}
---@alias CS.UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator
CS.UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator = UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator

---@param expected UnityEngine.Vector2
---@param actual UnityEngine.Vector2
---@return boolean
function UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator:Equals(expected, actual) end
---@param vec2 UnityEngine.Vector2
---@return number
function UnityEngine.TestTools.Utils.Vector2ComparerWithEqualsOperator:GetHashCode(vec2) end

---@class UnityEngine.TestTools.Utils.Vector2EqualityComparer : System.Object
---@field Instance UnityEngine.TestTools.Utils.Vector2EqualityComparer
UnityEngine.TestTools.Utils.Vector2EqualityComparer = {}
---@alias CS.UnityEngine.TestTools.Utils.Vector2EqualityComparer UnityEngine.TestTools.Utils.Vector2EqualityComparer
CS.UnityEngine.TestTools.Utils.Vector2EqualityComparer = UnityEngine.TestTools.Utils.Vector2EqualityComparer

---@param error number
---@return UnityEngine.TestTools.Utils.Vector2EqualityComparer
function UnityEngine.TestTools.Utils.Vector2EqualityComparer.New(error) end
---@param expected UnityEngine.Vector2
---@param actual UnityEngine.Vector2
---@return boolean
function UnityEngine.TestTools.Utils.Vector2EqualityComparer:Equals(expected, actual) end
---@param vec2 UnityEngine.Vector2
---@return number
function UnityEngine.TestTools.Utils.Vector2EqualityComparer:GetHashCode(vec2) end

---@class UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator : System.Object
---@field Instance UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator
UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator = {}
---@alias CS.UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator
CS.UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator = UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator

---@param expected UnityEngine.Vector3
---@param actual UnityEngine.Vector3
---@return boolean
function UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator:Equals(expected, actual) end
---@param vec3 UnityEngine.Vector3
---@return number
function UnityEngine.TestTools.Utils.Vector3ComparerWithEqualsOperator:GetHashCode(vec3) end

---@class UnityEngine.TestTools.Utils.Vector3EqualityComparer : System.Object
---@field Instance UnityEngine.TestTools.Utils.Vector3EqualityComparer
UnityEngine.TestTools.Utils.Vector3EqualityComparer = {}
---@alias CS.UnityEngine.TestTools.Utils.Vector3EqualityComparer UnityEngine.TestTools.Utils.Vector3EqualityComparer
CS.UnityEngine.TestTools.Utils.Vector3EqualityComparer = UnityEngine.TestTools.Utils.Vector3EqualityComparer

---@param allowedError number
---@return UnityEngine.TestTools.Utils.Vector3EqualityComparer
function UnityEngine.TestTools.Utils.Vector3EqualityComparer.New(allowedError) end
---@param expected UnityEngine.Vector3
---@param actual UnityEngine.Vector3
---@return boolean
function UnityEngine.TestTools.Utils.Vector3EqualityComparer:Equals(expected, actual) end
---@param vec3 UnityEngine.Vector3
---@return number
function UnityEngine.TestTools.Utils.Vector3EqualityComparer:GetHashCode(vec3) end

---@class UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator : System.Object
---@field Instance UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator
UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator = {}
---@alias CS.UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator
CS.UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator = UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator

---@param expected UnityEngine.Vector4
---@param actual UnityEngine.Vector4
---@return boolean
function UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator:Equals(expected, actual) end
---@param vec4 UnityEngine.Vector4
---@return number
function UnityEngine.TestTools.Utils.Vector4ComparerWithEqualsOperator:GetHashCode(vec4) end

---@class UnityEngine.TestTools.Utils.Vector4EqualityComparer : System.Object
---@field Instance UnityEngine.TestTools.Utils.Vector4EqualityComparer
UnityEngine.TestTools.Utils.Vector4EqualityComparer = {}
---@alias CS.UnityEngine.TestTools.Utils.Vector4EqualityComparer UnityEngine.TestTools.Utils.Vector4EqualityComparer
CS.UnityEngine.TestTools.Utils.Vector4EqualityComparer = UnityEngine.TestTools.Utils.Vector4EqualityComparer

---@param allowedError number
---@return UnityEngine.TestTools.Utils.Vector4EqualityComparer
function UnityEngine.TestTools.Utils.Vector4EqualityComparer.New(allowedError) end
---@param expected UnityEngine.Vector4
---@param actual UnityEngine.Vector4
---@return boolean
function UnityEngine.TestTools.Utils.Vector4EqualityComparer:Equals(expected, actual) end
---@param vec4 UnityEngine.Vector4
---@return number
function UnityEngine.TestTools.Utils.Vector4EqualityComparer:GetHashCode(vec4) end

---@class UnityEngine.TestTools.NUnitExtensions.ActionDelegator : UnityEngine.TestTools.NUnitExtensions.BaseDelegator
UnityEngine.TestTools.NUnitExtensions.ActionDelegator = {}
---@alias CS.UnityEngine.TestTools.NUnitExtensions.ActionDelegator UnityEngine.TestTools.NUnitExtensions.ActionDelegator
CS.UnityEngine.TestTools.NUnitExtensions.ActionDelegator = UnityEngine.TestTools.NUnitExtensions.ActionDelegator

---@return UnityEngine.TestTools.NUnitExtensions.ActionDelegator
function UnityEngine.TestTools.NUnitExtensions.ActionDelegator.New() end
---@overload fun(self: UnityEngine.TestTools.NUnitExtensions.ActionDelegator, action: System.Action) : System.Object
---@param action System.Func
---@return System.Object
function UnityEngine.TestTools.NUnitExtensions.ActionDelegator:Delegate(action) end
---@return boolean
function UnityEngine.TestTools.NUnitExtensions.ActionDelegator:HasAction() end
---@param logScope UnityEngine.TestTools.Logging.LogScope
function UnityEngine.TestTools.NUnitExtensions.ActionDelegator:Execute(logScope) end

---@class UnityEngine.TestTools.NUnitExtensions.BaseDelegator : System.Object
UnityEngine.TestTools.NUnitExtensions.BaseDelegator = {}
---@alias CS.UnityEngine.TestTools.NUnitExtensions.BaseDelegator UnityEngine.TestTools.NUnitExtensions.BaseDelegator
CS.UnityEngine.TestTools.NUnitExtensions.BaseDelegator = UnityEngine.TestTools.NUnitExtensions.BaseDelegator

function UnityEngine.TestTools.NUnitExtensions.BaseDelegator:Abort() end

---@class UnityEngine.TestTools.NUnitExtensions.ConstructDelegator : System.Object
UnityEngine.TestTools.NUnitExtensions.ConstructDelegator = {}
---@alias CS.UnityEngine.TestTools.NUnitExtensions.ConstructDelegator UnityEngine.TestTools.NUnitExtensions.ConstructDelegator
CS.UnityEngine.TestTools.NUnitExtensions.ConstructDelegator = UnityEngine.TestTools.NUnitExtensions.ConstructDelegator

---@param stateSerializer UnityEngine.TestTools.NUnitExtensions.IStateSerializer
---@return UnityEngine.TestTools.NUnitExtensions.ConstructDelegator
function UnityEngine.TestTools.NUnitExtensions.ConstructDelegator.New(stateSerializer) end
---@param type System.Type
---@param arguments System.Object[]
---@return System.Object
function UnityEngine.TestTools.NUnitExtensions.ConstructDelegator:Delegate(type, arguments) end
---@return boolean
function UnityEngine.TestTools.NUnitExtensions.ConstructDelegator:HasAction() end
---@param logScope UnityEngine.TestTools.Logging.LogScope
function UnityEngine.TestTools.NUnitExtensions.ConstructDelegator:Execute(logScope) end
function UnityEngine.TestTools.NUnitExtensions.ConstructDelegator:DestroyCurrentTestObjectIfExists() end

---@class UnityEngine.TestTools.NUnitExtensions.IAsyncTestAssemblyBuilder
UnityEngine.TestTools.NUnitExtensions.IAsyncTestAssemblyBuilder = {}
---@alias CS.UnityEngine.TestTools.NUnitExtensions.IAsyncTestAssemblyBuilder UnityEngine.TestTools.NUnitExtensions.IAsyncTestAssemblyBuilder
CS.UnityEngine.TestTools.NUnitExtensions.IAsyncTestAssemblyBuilder = UnityEngine.TestTools.NUnitExtensions.IAsyncTestAssemblyBuilder

---@param assemblies System.Reflection.Assembly[]
---@param testPlatforms UnityEngine.TestTools.TestPlatform[]
---@param options System.Collections.Generic.IDictionary
---@return System.Collections.Generic.IEnumerator
function UnityEngine.TestTools.NUnitExtensions.IAsyncTestAssemblyBuilder:BuildAsync(assemblies, testPlatforms, options) end

---@class UnityEngine.TestTools.NUnitExtensions.IStateSerializer
UnityEngine.TestTools.NUnitExtensions.IStateSerializer = {}
---@alias CS.UnityEngine.TestTools.NUnitExtensions.IStateSerializer UnityEngine.TestTools.NUnitExtensions.IStateSerializer
CS.UnityEngine.TestTools.NUnitExtensions.IStateSerializer = UnityEngine.TestTools.NUnitExtensions.IStateSerializer

---@return UnityEngine.ScriptableObject
function UnityEngine.TestTools.NUnitExtensions.IStateSerializer:RestoreScriptableObjectInstance() end
---@param ref_instance System.Object
---@return ,System.Object
function UnityEngine.TestTools.NUnitExtensions.IStateSerializer:RestoreClassFromJson(ref_instance) end
---@param requestedType System.Type
---@return boolean
function UnityEngine.TestTools.NUnitExtensions.IStateSerializer:CanRestoreFromJson(requestedType) end
---@param requestedType System.Type
---@return boolean
function UnityEngine.TestTools.NUnitExtensions.IStateSerializer:CanRestoreFromScriptableObject(requestedType) end

---@class UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder : NUnit.Framework.Api.DefaultTestAssemblyBuilder
UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder = {}
---@alias CS.UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder
CS.UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder = UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder

---@param orderedTestNames System.String[]
---@return UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder
function UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder.New(orderedTestNames) end
---@param testPlatform UnityEngine.TestTools.TestPlatform
---@return System.Collections.Generic.Dictionary
function UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder.GetNUnitTestBuilderSettings(testPlatform) end
---@param assemblies System.Reflection.Assembly[]
---@param testPlatforms UnityEngine.TestTools.TestPlatform[]
---@param options System.Collections.Generic.IDictionary
---@return NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder:Build(assemblies, testPlatforms, options) end
---@param assemblies System.Reflection.Assembly[]
---@param testPlatforms UnityEngine.TestTools.TestPlatform[]
---@param options System.Collections.Generic.IDictionary
---@return System.Collections.Generic.IEnumerator
function UnityEngine.TestTools.NUnitExtensions.UnityTestAssemblyBuilder:BuildAsync(assemblies, testPlatforms, options) end

---@class UnityEngine.TestTools.Logging.ILogScope
---@field ExpectedLogs System.Collections.Generic.Queue
---@field AllLogs System.Collections.Generic.List
---@field FailingLogs System.Collections.Generic.List
---@field IgnoreFailingMessages boolean
---@field IsNUnitException boolean
---@field IsNUnitSuccessException boolean
---@field IsNUnitInconclusiveException boolean
---@field IsNUnitIgnoreException boolean
---@field NUnitExceptionMessage string
UnityEngine.TestTools.Logging.ILogScope = {}
---@alias CS.UnityEngine.TestTools.Logging.ILogScope UnityEngine.TestTools.Logging.ILogScope
CS.UnityEngine.TestTools.Logging.ILogScope = UnityEngine.TestTools.Logging.ILogScope

---@param endOfScopeCheck boolean
function UnityEngine.TestTools.Logging.ILogScope:EvaluateLogScope(endOfScopeCheck) end
---@param message string
---@param stacktrace string
---@param type UnityEngine.LogType
function UnityEngine.TestTools.Logging.ILogScope:AddLog(message, stacktrace, type) end
---@return boolean
function UnityEngine.TestTools.Logging.ILogScope:AnyFailingLogs() end
function UnityEngine.TestTools.Logging.ILogScope:ProcessExpectedLogs() end
function UnityEngine.TestTools.Logging.ILogScope:NoUnexpectedReceived() end

---@class UnityEngine.TestTools.Logging.LogEvent : System.Object
---@field Message string
---@field StackTrace string
---@field LogType UnityEngine.LogType
---@field IsHandled boolean
UnityEngine.TestTools.Logging.LogEvent = {}
---@alias CS.UnityEngine.TestTools.Logging.LogEvent UnityEngine.TestTools.Logging.LogEvent
CS.UnityEngine.TestTools.Logging.LogEvent = UnityEngine.TestTools.Logging.LogEvent

---@return UnityEngine.TestTools.Logging.LogEvent
function UnityEngine.TestTools.Logging.LogEvent.New() end
---@return string
function UnityEngine.TestTools.Logging.LogEvent:ToString() end

---@class UnityEngine.TestTools.Logging.LogMatch : System.Object
---@field Message string
---@field MessageRegex System.Text.RegularExpressions.Regex
---@field LogType System.Nullable
UnityEngine.TestTools.Logging.LogMatch = {}
---@alias CS.UnityEngine.TestTools.Logging.LogMatch UnityEngine.TestTools.Logging.LogMatch
CS.UnityEngine.TestTools.Logging.LogMatch = UnityEngine.TestTools.Logging.LogMatch

---@return UnityEngine.TestTools.Logging.LogMatch
function UnityEngine.TestTools.Logging.LogMatch.New() end
---@param log UnityEngine.TestTools.Logging.LogEvent
---@return boolean
function UnityEngine.TestTools.Logging.LogMatch:Matches(log) end
---@return string
function UnityEngine.TestTools.Logging.LogMatch:ToString() end

---@class UnityEngine.TestTools.Logging.LogScope : System.Object
---@field Current UnityEngine.TestTools.Logging.LogScope
---@field ExpectedLogs System.Collections.Generic.Queue
---@field AllLogs System.Collections.Generic.List
---@field FailingLogs System.Collections.Generic.List
---@field IgnoreFailingMessages boolean
---@field IsNUnitException boolean
---@field IsNUnitSuccessException boolean
---@field IsNUnitInconclusiveException boolean
---@field IsNUnitIgnoreException boolean
---@field NUnitExceptionMessage string
UnityEngine.TestTools.Logging.LogScope = {}
---@alias CS.UnityEngine.TestTools.Logging.LogScope UnityEngine.TestTools.Logging.LogScope
CS.UnityEngine.TestTools.Logging.LogScope = UnityEngine.TestTools.Logging.LogScope

---@return UnityEngine.TestTools.Logging.LogScope
function UnityEngine.TestTools.Logging.LogScope.New() end
---@return boolean
function UnityEngine.TestTools.Logging.LogScope.HasCurrentLogScope() end
---@param message string
---@param stacktrace string
---@param type UnityEngine.LogType
function UnityEngine.TestTools.Logging.LogScope:AddLog(message, stacktrace, type) end
function UnityEngine.TestTools.Logging.LogScope:Dispose() end
---@return boolean
function UnityEngine.TestTools.Logging.LogScope:AnyFailingLogs() end
---@param endOfScopeCheck boolean
function UnityEngine.TestTools.Logging.LogScope:EvaluateLogScope(endOfScopeCheck) end
function UnityEngine.TestTools.Logging.LogScope:ProcessExpectedLogs() end
function UnityEngine.TestTools.Logging.LogScope:NoUnexpectedReceived() end

---@class UnityEngine.TestTools.TestRunner.InvalidSignatureException : NUnit.Framework.ResultStateException
---@field ResultState NUnit.Framework.Interfaces.ResultState
UnityEngine.TestTools.TestRunner.InvalidSignatureException = {}
---@alias CS.UnityEngine.TestTools.TestRunner.InvalidSignatureException UnityEngine.TestTools.TestRunner.InvalidSignatureException
CS.UnityEngine.TestTools.TestRunner.InvalidSignatureException = UnityEngine.TestTools.TestRunner.InvalidSignatureException

---@param message string
---@return UnityEngine.TestTools.TestRunner.InvalidSignatureException
function UnityEngine.TestTools.TestRunner.InvalidSignatureException.New(message) end

---@class UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException : NUnit.Framework.ResultStateException
---@field ResultState NUnit.Framework.Interfaces.ResultState
---@field StackTrace string
UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException = {}
---@alias CS.UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException
CS.UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException = UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException

---@param log UnityEngine.TestTools.Logging.LogEvent
---@param nextExpected UnityEngine.TestTools.Logging.LogMatch
---@return UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException
function UnityEngine.TestTools.TestRunner.OutOfOrderExpectedLogMessageException.New(log, nextExpected) end

---@class UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException : NUnit.Framework.ResultStateException
---@field LogEvent UnityEngine.TestTools.Logging.LogMatch
---@field ResultState NUnit.Framework.Interfaces.ResultState
---@field StackTrace string
UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException = {}
---@alias CS.UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException
CS.UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException = UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException

---@param log UnityEngine.TestTools.Logging.LogMatch
---@return UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException
function UnityEngine.TestTools.TestRunner.UnexpectedLogMessageException.New(log) end

---@class UnityEngine.TestTools.TestRunner.UnhandledLogMessageException : NUnit.Framework.ResultStateException
---@field LogEvent UnityEngine.TestTools.Logging.LogEvent
---@field ResultState NUnit.Framework.Interfaces.ResultState
---@field StackTrace string
UnityEngine.TestTools.TestRunner.UnhandledLogMessageException = {}
---@alias CS.UnityEngine.TestTools.TestRunner.UnhandledLogMessageException UnityEngine.TestTools.TestRunner.UnhandledLogMessageException
CS.UnityEngine.TestTools.TestRunner.UnhandledLogMessageException = UnityEngine.TestTools.TestRunner.UnhandledLogMessageException

---@param log UnityEngine.TestTools.Logging.LogEvent
---@return UnityEngine.TestTools.TestRunner.UnhandledLogMessageException
function UnityEngine.TestTools.TestRunner.UnhandledLogMessageException.New(log) end

---@class UnityEngine.TestTools.TestRunner.UnityTestTimeoutException : NUnit.Framework.ResultStateException
---@field ResultState NUnit.Framework.Interfaces.ResultState
---@field StackTrace string
UnityEngine.TestTools.TestRunner.UnityTestTimeoutException = {}
---@alias CS.UnityEngine.TestTools.TestRunner.UnityTestTimeoutException UnityEngine.TestTools.TestRunner.UnityTestTimeoutException
CS.UnityEngine.TestTools.TestRunner.UnityTestTimeoutException = UnityEngine.TestTools.TestRunner.UnityTestTimeoutException

---@param timeout number
---@return UnityEngine.TestTools.TestRunner.UnityTestTimeoutException
function UnityEngine.TestTools.TestRunner.UnityTestTimeoutException.New(timeout) end

---@class UnityEngine.TestTools.TestRunner.ITestRunnerListener
UnityEngine.TestTools.TestRunner.ITestRunnerListener = {}
---@alias CS.UnityEngine.TestTools.TestRunner.ITestRunnerListener UnityEngine.TestTools.TestRunner.ITestRunnerListener
CS.UnityEngine.TestTools.TestRunner.ITestRunnerListener = UnityEngine.TestTools.TestRunner.ITestRunnerListener

---@param testsToRun NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.ITestRunnerListener:RunStarted(testsToRun) end
---@param testResults NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.ITestRunnerListener:RunFinished(testResults) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.ITestRunnerListener:TestStarted(test) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.ITestRunnerListener:TestFinished(result) end

---@class UnityEngine.TestTools.TestRunner.TestFinishedEvent : UnityEngine.Events.UnityEvent
UnityEngine.TestTools.TestRunner.TestFinishedEvent = {}
---@alias CS.UnityEngine.TestTools.TestRunner.TestFinishedEvent UnityEngine.TestTools.TestRunner.TestFinishedEvent
CS.UnityEngine.TestTools.TestRunner.TestFinishedEvent = UnityEngine.TestTools.TestRunner.TestFinishedEvent

---@return UnityEngine.TestTools.TestRunner.TestFinishedEvent
function UnityEngine.TestTools.TestRunner.TestFinishedEvent.New() end

---@class UnityEngine.TestTools.TestRunner.TestStartedEvent : UnityEngine.Events.UnityEvent
UnityEngine.TestTools.TestRunner.TestStartedEvent = {}
---@alias CS.UnityEngine.TestTools.TestRunner.TestStartedEvent UnityEngine.TestTools.TestRunner.TestStartedEvent
CS.UnityEngine.TestTools.TestRunner.TestStartedEvent = UnityEngine.TestTools.TestRunner.TestStartedEvent

---@return UnityEngine.TestTools.TestRunner.TestStartedEvent
function UnityEngine.TestTools.TestRunner.TestStartedEvent.New() end

---@class UnityEngine.TestTools.TestRunner.RunFinishedEvent : UnityEngine.Events.UnityEvent
UnityEngine.TestTools.TestRunner.RunFinishedEvent = {}
---@alias CS.UnityEngine.TestTools.TestRunner.RunFinishedEvent UnityEngine.TestTools.TestRunner.RunFinishedEvent
CS.UnityEngine.TestTools.TestRunner.RunFinishedEvent = UnityEngine.TestTools.TestRunner.RunFinishedEvent

---@return UnityEngine.TestTools.TestRunner.RunFinishedEvent
function UnityEngine.TestTools.TestRunner.RunFinishedEvent.New() end

---@class UnityEngine.TestTools.TestRunner.RunStartedEvent : UnityEngine.Events.UnityEvent
UnityEngine.TestTools.TestRunner.RunStartedEvent = {}
---@alias CS.UnityEngine.TestTools.TestRunner.RunStartedEvent UnityEngine.TestTools.TestRunner.RunStartedEvent
CS.UnityEngine.TestTools.TestRunner.RunStartedEvent = UnityEngine.TestTools.TestRunner.RunStartedEvent

---@return UnityEngine.TestTools.TestRunner.RunStartedEvent
function UnityEngine.TestTools.TestRunner.RunStartedEvent.New() end

---@class UnityEngine.TestTools.TestRunner.PlaymodeTestsController : UnityEngine.MonoBehaviour
---@field settings UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings
---@field AssembliesWithTests System.Collections.Generic.List
UnityEngine.TestTools.TestRunner.PlaymodeTestsController = {}
---@alias CS.UnityEngine.TestTools.TestRunner.PlaymodeTestsController UnityEngine.TestTools.TestRunner.PlaymodeTestsController
CS.UnityEngine.TestTools.TestRunner.PlaymodeTestsController = UnityEngine.TestTools.TestRunner.PlaymodeTestsController

function UnityEngine.TestTools.TestRunner.PlaymodeTestsController.TryCleanup() end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.TestRunner.PlaymodeTestsController:Start() end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.TestRunner.PlaymodeTestsController:TestRunnerCoroutine() end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.TestRunner.PlaymodeTestsController:Run() end
function UnityEngine.TestTools.TestRunner.PlaymodeTestsController:Cleanup() end

---@class UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings : System.Object
---@field filters UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter[]
---@field sceneBased boolean
---@field originalScene string
---@field bootstrapScene string
---@field runInBackgroundValue boolean
---@field consoleErrorPaused boolean
---@field orderedTestNames System.String[]
UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings = {}
---@alias CS.UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings
CS.UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings = UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings

---@return UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings
function UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings.New() end
---@param filters UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter[]
---@param orderedTestNames System.String[]
---@return UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings
function UnityEngine.TestTools.TestRunner.PlaymodeTestsControllerSettings.CreateRunnerSettings(filters, orderedTestNames) end

---@class UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper : System.Object
UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper = {}
---@alias CS.UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper
CS.UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper = UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper

---@param testMethod NUnit.Framework.Internal.TestMethod
---@return UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper
function UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper.New(testMethod) end
---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.TestRunner.TestEnumeratorWrapper:GetEnumerator(context) end

---@class UnityEngine.TestTools.TestRunner.TestListenerWrapper : System.Object
UnityEngine.TestTools.TestRunner.TestListenerWrapper = {}
---@alias CS.UnityEngine.TestTools.TestRunner.TestListenerWrapper UnityEngine.TestTools.TestRunner.TestListenerWrapper
CS.UnityEngine.TestTools.TestRunner.TestListenerWrapper = UnityEngine.TestTools.TestRunner.TestListenerWrapper

---@param testStartedEvent UnityEngine.TestTools.TestRunner.TestStartedEvent
---@param testFinishedEvent UnityEngine.TestTools.TestRunner.TestFinishedEvent
---@return UnityEngine.TestTools.TestRunner.TestListenerWrapper
function UnityEngine.TestTools.TestRunner.TestListenerWrapper.New(testStartedEvent, testFinishedEvent) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.TestListenerWrapper:TestStarted(test) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.TestListenerWrapper:TestFinished(result) end
---@param output NUnit.Framework.Interfaces.TestOutput
function UnityEngine.TestTools.TestRunner.TestListenerWrapper:TestOutput(output) end

---@class UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter : System.Object
---@field assemblyNames System.String[]
---@field groupNames System.String[]
---@field categoryNames System.String[]
---@field testNames System.String[]
---@field synchronousOnly boolean
UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter = {}
---@alias CS.UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter
CS.UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter = UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter

---@return UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter
function UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter.New() end
---@return NUnit.Framework.Interfaces.ITestFilter
function UnityEngine.TestTools.TestRunner.GUI.RuntimeTestRunnerFilter:BuildNUnitFilter() end

---@class UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter : System.Object
UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter = {}
---@alias CS.UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter
CS.UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter = UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter

---@return UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter
function UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter.New() end
---@param recursive boolean
---@return NUnit.Framework.Interfaces.TNode
function UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter:ToXml(recursive) end
---@param parentNode NUnit.Framework.Interfaces.TNode
---@param recursive boolean
---@return NUnit.Framework.Interfaces.TNode
function UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter:AddToXml(parentNode, recursive) end
---@param test NUnit.Framework.Interfaces.ITest
---@return boolean
function UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter:Pass(test) end
---@param test NUnit.Framework.Interfaces.ITest
---@return boolean
function UnityEngine.TestTools.TestRunner.GUI.SynchronousFilter:IsExplicitMatch(test) end

---@class UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler : UnityEngine.MonoBehaviour
UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler = {}
---@alias CS.UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler
CS.UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler = UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler

function UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler:Start() end
---@param testsToRun NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler:RunStarted(testsToRun) end
---@param testResults NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler:RunFinished(testResults) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler:TestStarted(test) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.PlayerQuitHandler:TestFinished(result) end

---@class UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback : UnityEngine.MonoBehaviour
UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback = {}
---@alias CS.UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback
CS.UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback = UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback

---@param testResults NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback:RunFinished(testResults) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback:TestFinished(result) end
function UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback:OnGUI() end
---@param testsToRun NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback:RunStarted(testsToRun) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.PlayModeRunnerCallback:TestStarted(test) end

---@class UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender : UnityEngine.MonoBehaviour
UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender = {}
---@alias CS.UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender
CS.UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender = UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender

function UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender:Start() end
---@param testsToRun NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender:RunStarted(testsToRun) end
---@param testResults NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender:RunFinished(testResults) end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender:TestStarted(test) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender:TestFinished(result) end
---@return System.Collections.IEnumerator
function UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender:SendDataRoutine() end

---@class UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer : System.Object
UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer = {}
---@alias CS.UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer
CS.UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer = UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer

---@param testResults NUnit.Framework.Interfaces.ITestResult
---@return UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer.New(testResults) end
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer:ShowResults() end
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer:Draw() end

---@class UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback : UnityEngine.MonoBehaviour
UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback = {}
---@alias CS.UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback
CS.UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback = UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback

---@param testsToRun NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback:RunStarted(testsToRun) end
---@param testResults NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback:RunFinished(testResults) end
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback:OnGUI() end
---@param test NUnit.Framework.Interfaces.ITest
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback:TestStarted(test) end
---@param result NUnit.Framework.Interfaces.ITestResult
function UnityEngine.TestTools.TestRunner.Callbacks.TestResultRendererCallback:TestFinished(result) end

---@class UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint : NUnit.Framework.Constraints.Constraint
---@field Description string
UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint = {}
---@alias CS.UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint
CS.UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint = UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint

---@return UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint
function UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.New() end
---@param obj System.Object
---@return NUnit.Framework.Constraints.ConstraintResult
function UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint:ApplyTo(obj) end

---@class UnityEngine.TestTools.Constraints.ConstraintExtensions : System.Object
UnityEngine.TestTools.Constraints.ConstraintExtensions = {}
---@alias CS.UnityEngine.TestTools.Constraints.ConstraintExtensions UnityEngine.TestTools.Constraints.ConstraintExtensions
CS.UnityEngine.TestTools.Constraints.ConstraintExtensions = UnityEngine.TestTools.Constraints.ConstraintExtensions

---@param chain NUnit.Framework.Constraints.ConstraintExpression
---@return UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint
function UnityEngine.TestTools.Constraints.ConstraintExtensions.AllocatingGCMemory(chain) end

---@class UnityEngine.TestTools.Constraints.Is : NUnit.Framework.Is
UnityEngine.TestTools.Constraints.Is = {}
---@alias CS.UnityEngine.TestTools.Constraints.Is UnityEngine.TestTools.Constraints.Is
CS.UnityEngine.TestTools.Constraints.Is = UnityEngine.TestTools.Constraints.Is

---@return UnityEngine.TestTools.Constraints.Is
function UnityEngine.TestTools.Constraints.Is.New() end
---@return UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint
function UnityEngine.TestTools.Constraints.Is.AllocatingGCMemory() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer : System.Object
UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer = {}
---@alias CS.UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer
CS.UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer = UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer

---@return UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer
function UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer.New() end
---@param x UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
---@param y UnityEngine.TestRunner.NUnitExtensions.Runner.UnityWorkItem
---@return number
function UnityEngine.TestRunner.NUnitExtensions.Runner.CompositeWorkItem.UnityWorkItemOrderComparer:Compare(x, y) end

---@class UnityEngine.TestTools.TestEnumerator.EnumeratorContext : System.Object
---@field ExceptionWasRecorded boolean
UnityEngine.TestTools.TestEnumerator.EnumeratorContext = {}
---@alias CS.UnityEngine.TestTools.TestEnumerator.EnumeratorContext UnityEngine.TestTools.TestEnumerator.EnumeratorContext
CS.UnityEngine.TestTools.TestEnumerator.EnumeratorContext = UnityEngine.TestTools.TestEnumerator.EnumeratorContext

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return UnityEngine.TestTools.TestEnumerator.EnumeratorContext
function UnityEngine.TestTools.TestEnumerator.EnumeratorContext.New(context) end
---@param ex System.Exception
function UnityEngine.TestTools.TestEnumerator.EnumeratorContext:RecordExceptionWithHint(ex) end

---@class UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext : System.Object
---@field ExceptionWasRecorded boolean
UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext = {}
---@alias CS.UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext
CS.UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext = UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext

---@param context NUnit.Framework.Internal.ITestExecutionContext
---@return UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext
function UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext.New(context) end
---@param ex System.Exception
function UnityEngine.TestTools.EnumerableTestMethodCommand.EnumeratorContext:RecordExceptionWithHint(ex) end

---@class UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData : System.Object
---@field id System.Guid
---@field data System.Byte[]
UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData = {}
---@alias CS.UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData
CS.UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData = UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData

---@return UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData
function UnityEngine.TestTools.TestRunner.Callbacks.RemoteTestResultSender.QueueData.New() end

---@class UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer.Styles : System.Object
---@field SucceedLabelStyle UnityEngine.GUIStyle
---@field FailedLabelStyle UnityEngine.GUIStyle
---@field FailedMessagesStyle UnityEngine.GUIStyle
UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer.Styles = {}
---@alias CS.UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer.Styles UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer.Styles
CS.UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer.Styles = UnityEngine.TestTools.TestRunner.Callbacks.TestResultRenderer.Styles


---@class UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult : NUnit.Framework.Constraints.ConstraintResult
UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult = {}
---@alias CS.UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult
CS.UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult = UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult

---@param constraint NUnit.Framework.Constraints.IConstraint
---@param actualValue System.Object
---@param diff number
---@return UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult
function UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult.New(constraint, actualValue, diff) end
---@param writer NUnit.Framework.Constraints.MessageWriter
function UnityEngine.TestTools.Constraints.AllocatingGCMemoryConstraint.AllocatingGCMemoryResult:WriteMessageTo(writer) end

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

---@class UnityEngine.ProBuilder.KdTree.HyperRect : System.ValueType
---@field MinPoint T[]
---@field MaxPoint T[]
UnityEngine.ProBuilder.KdTree.HyperRect = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.HyperRect UnityEngine.ProBuilder.KdTree.HyperRect
CS.UnityEngine.ProBuilder.KdTree.HyperRect = UnityEngine.ProBuilder.KdTree.HyperRect

---@param dimensions number
---@param math UnityEngine.ProBuilder.KdTree.ITypeMath[T]
---@return UnityEngine.ProBuilder.KdTree.HyperRect
function UnityEngine.ProBuilder.KdTree.HyperRect.Infinite(dimensions, math) end
---@param toPoint T[]
---@param math UnityEngine.ProBuilder.KdTree.ITypeMath[T]
---@return T[]
function UnityEngine.ProBuilder.KdTree.HyperRect:GetClosestPoint(toPoint, math) end
---@return UnityEngine.ProBuilder.KdTree.HyperRect
function UnityEngine.ProBuilder.KdTree.HyperRect:Clone() end

---@class UnityEngine.ProBuilder.KdTree.IKdTree
---@field Count number
UnityEngine.ProBuilder.KdTree.IKdTree = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.IKdTree UnityEngine.ProBuilder.KdTree.IKdTree
CS.UnityEngine.ProBuilder.KdTree.IKdTree = UnityEngine.ProBuilder.KdTree.IKdTree

---@param point TKey[]
---@param value TValue
---@return boolean
function UnityEngine.ProBuilder.KdTree.IKdTree:Add(point, value) end
---@param point TKey[]
---@param out_value TValue
---@return boolean,TValue
function UnityEngine.ProBuilder.KdTree.IKdTree:TryFindValueAt(point, out_value) end
---@param point TKey[]
---@return TValue
function UnityEngine.ProBuilder.KdTree.IKdTree:FindValueAt(point) end
---@param value TValue
---@param out_point TKey[]
---@return boolean,TKey[]
function UnityEngine.ProBuilder.KdTree.IKdTree:TryFindValue(value, out_point) end
---@param value TValue
---@return TKey[]
function UnityEngine.ProBuilder.KdTree.IKdTree:FindValue(value) end
---@param center TKey[]
---@param radius TKey
---@param count number
---@return UnityEngine.ProBuilder.KdTree.KdTreeNode[TKey,TValue][]
function UnityEngine.ProBuilder.KdTree.IKdTree:RadialSearch(center, radius, count) end
---@param point TKey[]
function UnityEngine.ProBuilder.KdTree.IKdTree:RemoveAt(point) end
function UnityEngine.ProBuilder.KdTree.IKdTree:Clear() end
---@param point TKey[]
---@param count number
---@return UnityEngine.ProBuilder.KdTree.KdTreeNode[TKey,TValue][]
function UnityEngine.ProBuilder.KdTree.IKdTree:GetNearestNeighbours(point, count) end

---@class UnityEngine.ProBuilder.KdTree.IPriorityQueue
---@field Count number
UnityEngine.ProBuilder.KdTree.IPriorityQueue = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.IPriorityQueue UnityEngine.ProBuilder.KdTree.IPriorityQueue
CS.UnityEngine.ProBuilder.KdTree.IPriorityQueue = UnityEngine.ProBuilder.KdTree.IPriorityQueue

---@param item TItem
---@param priority TPriority
function UnityEngine.ProBuilder.KdTree.IPriorityQueue:Enqueue(item, priority) end
---@return TItem
function UnityEngine.ProBuilder.KdTree.IPriorityQueue:Dequeue() end

---@class UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
---@field Skip UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
---@field Error UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
---@field Update UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
---@field Collect UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
CS.UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior = UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior


---@class UnityEngine.ProBuilder.KdTree.DuplicateNodeError : System.Exception
UnityEngine.ProBuilder.KdTree.DuplicateNodeError = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.DuplicateNodeError UnityEngine.ProBuilder.KdTree.DuplicateNodeError
CS.UnityEngine.ProBuilder.KdTree.DuplicateNodeError = UnityEngine.ProBuilder.KdTree.DuplicateNodeError

---@return UnityEngine.ProBuilder.KdTree.DuplicateNodeError
function UnityEngine.ProBuilder.KdTree.DuplicateNodeError.New() end

---@class UnityEngine.ProBuilder.KdTree.KdTree : System.Object
---@field AddDuplicateBehavior UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
---@field Count number
UnityEngine.ProBuilder.KdTree.KdTree = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.KdTree UnityEngine.ProBuilder.KdTree.KdTree
CS.UnityEngine.ProBuilder.KdTree.KdTree = UnityEngine.ProBuilder.KdTree.KdTree

---@overload fun(dimensions: number, typeMath: UnityEngine.ProBuilder.KdTree.ITypeMath[TKey]) : UnityEngine.ProBuilder.KdTree.KdTree
---@param dimensions number
---@param typeMath UnityEngine.ProBuilder.KdTree.ITypeMath[TKey]
---@param addDuplicateBehavior UnityEngine.ProBuilder.KdTree.AddDuplicateBehavior
---@return UnityEngine.ProBuilder.KdTree.KdTree
function UnityEngine.ProBuilder.KdTree.KdTree.New(dimensions, typeMath, addDuplicateBehavior) end
---@param filename string
---@return UnityEngine.ProBuilder.KdTree.KdTree
function UnityEngine.ProBuilder.KdTree.KdTree.LoadFromFile(filename) end
---@param point TKey[]
---@param value TValue
---@return boolean
function UnityEngine.ProBuilder.KdTree.KdTree:Add(point, value) end
---@param point TKey[]
function UnityEngine.ProBuilder.KdTree.KdTree:RemoveAt(point) end
---@param point TKey[]
---@param count number
---@return UnityEngine.ProBuilder.KdTree.KdTreeNode[TKey,TValue][]
function UnityEngine.ProBuilder.KdTree.KdTree:GetNearestNeighbours(point, count) end
---@param center TKey[]
---@param radius TKey
---@param count number
---@return UnityEngine.ProBuilder.KdTree.KdTreeNode[TKey,TValue][]
function UnityEngine.ProBuilder.KdTree.KdTree:RadialSearch(center, radius, count) end
---@param point TKey[]
---@param out_value TValue
---@return boolean,TValue
function UnityEngine.ProBuilder.KdTree.KdTree:TryFindValueAt(point, out_value) end
---@param point TKey[]
---@return TValue
function UnityEngine.ProBuilder.KdTree.KdTree:FindValueAt(point) end
---@param value TValue
---@param out_point TKey[]
---@return boolean,TKey[]
function UnityEngine.ProBuilder.KdTree.KdTree:TryFindValue(value, out_point) end
---@param value TValue
---@return TKey[]
function UnityEngine.ProBuilder.KdTree.KdTree:FindValue(value) end
---@return string
function UnityEngine.ProBuilder.KdTree.KdTree:ToString() end
function UnityEngine.ProBuilder.KdTree.KdTree:Balance() end
function UnityEngine.ProBuilder.KdTree.KdTree:Clear() end
---@param filename string
function UnityEngine.ProBuilder.KdTree.KdTree:SaveToFile(filename) end
---@return System.Collections.Generic.IEnumerator[UnityEngine.ProBuilder.KdTree.KdTreeNode[TKey,TValue]]
function UnityEngine.ProBuilder.KdTree.KdTree:GetEnumerator() end

---@class UnityEngine.ProBuilder.KdTree.KdTreeNode : System.Object
---@field Point TKey[]
---@field Value TValue
---@field Duplicates System.Collections.Generic.List[TValue]
---@field IsLeaf boolean
UnityEngine.ProBuilder.KdTree.KdTreeNode = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.KdTreeNode UnityEngine.ProBuilder.KdTree.KdTreeNode
CS.UnityEngine.ProBuilder.KdTree.KdTreeNode = UnityEngine.ProBuilder.KdTree.KdTreeNode

---@overload fun() : UnityEngine.ProBuilder.KdTree.KdTreeNode
---@param point TKey[]
---@param value TValue
---@return UnityEngine.ProBuilder.KdTree.KdTreeNode
function UnityEngine.ProBuilder.KdTree.KdTreeNode.New(point, value) end
---@param value TValue
function UnityEngine.ProBuilder.KdTree.KdTreeNode:AddDuplicate(value) end
---@return string
function UnityEngine.ProBuilder.KdTree.KdTreeNode:ToString() end

---@class UnityEngine.ProBuilder.KdTree.ITypeMath
---@field MinValue T
---@field MaxValue T
---@field Zero T
---@field NegativeInfinity T
---@field PositiveInfinity T
UnityEngine.ProBuilder.KdTree.ITypeMath = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.ITypeMath UnityEngine.ProBuilder.KdTree.ITypeMath
CS.UnityEngine.ProBuilder.KdTree.ITypeMath = UnityEngine.ProBuilder.KdTree.ITypeMath

---@param a T
---@param b T
---@return number
function UnityEngine.ProBuilder.KdTree.ITypeMath:Compare(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.ITypeMath:Min(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.ITypeMath:Max(a, b) end
---@overload fun(self: UnityEngine.ProBuilder.KdTree.ITypeMath, a: T, b: T) : boolean
---@param a T[]
---@param b T[]
---@return boolean
function UnityEngine.ProBuilder.KdTree.ITypeMath:AreEqual(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.ITypeMath:Add(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.ITypeMath:Subtract(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.ITypeMath:Multiply(a, b) end
---@param a T[]
---@param b T[]
---@return T
function UnityEngine.ProBuilder.KdTree.ITypeMath:DistanceSquaredBetweenPoints(a, b) end

---@class UnityEngine.ProBuilder.KdTree.INearestNeighbourList
---@field MaxCapacity number
---@field Count number
UnityEngine.ProBuilder.KdTree.INearestNeighbourList = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.INearestNeighbourList UnityEngine.ProBuilder.KdTree.INearestNeighbourList
CS.UnityEngine.ProBuilder.KdTree.INearestNeighbourList = UnityEngine.ProBuilder.KdTree.INearestNeighbourList

---@param item TItem
---@param distance TDistance
---@return boolean
function UnityEngine.ProBuilder.KdTree.INearestNeighbourList:Add(item, distance) end
---@return TItem
function UnityEngine.ProBuilder.KdTree.INearestNeighbourList:GetFurtherest() end
---@return TItem
function UnityEngine.ProBuilder.KdTree.INearestNeighbourList:RemoveFurtherest() end

---@class UnityEngine.ProBuilder.KdTree.NearestNeighbourList : System.Object
---@field MaxCapacity number
---@field Count number
---@field IsCapacityReached boolean
UnityEngine.ProBuilder.KdTree.NearestNeighbourList = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.NearestNeighbourList UnityEngine.ProBuilder.KdTree.NearestNeighbourList
CS.UnityEngine.ProBuilder.KdTree.NearestNeighbourList = UnityEngine.ProBuilder.KdTree.NearestNeighbourList

---@param maxCapacity number
---@param distanceMath UnityEngine.ProBuilder.KdTree.ITypeMath[TDistance]
---@return UnityEngine.ProBuilder.KdTree.NearestNeighbourList
function UnityEngine.ProBuilder.KdTree.NearestNeighbourList.New(maxCapacity, distanceMath) end
---@param item TItem
---@param distance TDistance
---@return boolean
function UnityEngine.ProBuilder.KdTree.NearestNeighbourList:Add(item, distance) end
---@return TItem
function UnityEngine.ProBuilder.KdTree.NearestNeighbourList:GetFurtherest() end
---@return TDistance
function UnityEngine.ProBuilder.KdTree.NearestNeighbourList:GetFurtherestDistance() end
---@return TItem
function UnityEngine.ProBuilder.KdTree.NearestNeighbourList:RemoveFurtherest() end

---@class UnityEngine.ProBuilder.KdTree.ItemPriority : System.ValueType
---@field Item TItem
---@field Priority TPriority
UnityEngine.ProBuilder.KdTree.ItemPriority = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.ItemPriority UnityEngine.ProBuilder.KdTree.ItemPriority
CS.UnityEngine.ProBuilder.KdTree.ItemPriority = UnityEngine.ProBuilder.KdTree.ItemPriority


---@class UnityEngine.ProBuilder.KdTree.PriorityQueue : System.Object
---@field Count number
UnityEngine.ProBuilder.KdTree.PriorityQueue = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.PriorityQueue UnityEngine.ProBuilder.KdTree.PriorityQueue
CS.UnityEngine.ProBuilder.KdTree.PriorityQueue = UnityEngine.ProBuilder.KdTree.PriorityQueue

---@param capacity number
---@param priorityMath UnityEngine.ProBuilder.KdTree.ITypeMath[TPriority]
---@return UnityEngine.ProBuilder.KdTree.PriorityQueue
function UnityEngine.ProBuilder.KdTree.PriorityQueue.New(capacity, priorityMath) end
---@param item TItem
---@param priority TPriority
function UnityEngine.ProBuilder.KdTree.PriorityQueue:Enqueue(item, priority) end
---@return TItem
function UnityEngine.ProBuilder.KdTree.PriorityQueue:Dequeue() end
---@return TItem
function UnityEngine.ProBuilder.KdTree.PriorityQueue:GetHighest() end
---@return TPriority
function UnityEngine.ProBuilder.KdTree.PriorityQueue:GetHighestPriority() end

---@class UnityEngine.ProBuilder.KdTree.Math.DoubleMath : UnityEngine.ProBuilder.KdTree.Math.TypeMath
---@field MinValue number
---@field MaxValue number
---@field Zero number
---@field NegativeInfinity number
---@field PositiveInfinity number
---@field MinValue UnityEngine.ProBuilder.KdTree.Math.DoubleMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Double]
---@field MaxValue UnityEngine.ProBuilder.KdTree.Math.DoubleMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Double]
---@field Zero UnityEngine.ProBuilder.KdTree.Math.DoubleMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Double]
---@field NegativeInfinity UnityEngine.ProBuilder.KdTree.Math.DoubleMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Double]
---@field PositiveInfinity UnityEngine.ProBuilder.KdTree.Math.DoubleMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Double]
UnityEngine.ProBuilder.KdTree.Math.DoubleMath = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.Math.DoubleMath UnityEngine.ProBuilder.KdTree.Math.DoubleMath
CS.UnityEngine.ProBuilder.KdTree.Math.DoubleMath = UnityEngine.ProBuilder.KdTree.Math.DoubleMath

---@return UnityEngine.ProBuilder.KdTree.Math.DoubleMath
function UnityEngine.ProBuilder.KdTree.Math.DoubleMath.New() end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.DoubleMath:Compare(a, b) end
---@param a number
---@param b number
---@return boolean
function UnityEngine.ProBuilder.KdTree.Math.DoubleMath:AreEqual(a, b) end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.DoubleMath:Add(a, b) end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.DoubleMath:Subtract(a, b) end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.DoubleMath:Multiply(a, b) end
---@param a System.Double[]
---@param b System.Double[]
---@return number
function UnityEngine.ProBuilder.KdTree.Math.DoubleMath:DistanceSquaredBetweenPoints(a, b) end

---@class UnityEngine.ProBuilder.KdTree.Math.FloatMath : UnityEngine.ProBuilder.KdTree.Math.TypeMath
---@field MinValue number
---@field MaxValue number
---@field Zero number
---@field NegativeInfinity number
---@field PositiveInfinity number
---@field MinValue UnityEngine.ProBuilder.KdTree.Math.FloatMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Single]
---@field MaxValue UnityEngine.ProBuilder.KdTree.Math.FloatMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Single]
---@field Zero UnityEngine.ProBuilder.KdTree.Math.FloatMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Single]
---@field NegativeInfinity UnityEngine.ProBuilder.KdTree.Math.FloatMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Single]
---@field PositiveInfinity UnityEngine.ProBuilder.KdTree.Math.FloatMath -- infered from UnityEngine.ProBuilder.KdTree.Math.TypeMath`1[System.Single]
UnityEngine.ProBuilder.KdTree.Math.FloatMath = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.Math.FloatMath UnityEngine.ProBuilder.KdTree.Math.FloatMath
CS.UnityEngine.ProBuilder.KdTree.Math.FloatMath = UnityEngine.ProBuilder.KdTree.Math.FloatMath

---@return UnityEngine.ProBuilder.KdTree.Math.FloatMath
function UnityEngine.ProBuilder.KdTree.Math.FloatMath.New() end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.FloatMath:Compare(a, b) end
---@param a number
---@param b number
---@return boolean
function UnityEngine.ProBuilder.KdTree.Math.FloatMath:AreEqual(a, b) end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.FloatMath:Add(a, b) end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.FloatMath:Subtract(a, b) end
---@param a number
---@param b number
---@return number
function UnityEngine.ProBuilder.KdTree.Math.FloatMath:Multiply(a, b) end
---@param a System.Single[]
---@param b System.Single[]
---@return number
function UnityEngine.ProBuilder.KdTree.Math.FloatMath:DistanceSquaredBetweenPoints(a, b) end

---@class UnityEngine.ProBuilder.KdTree.Math.TypeMath : System.Object
---@field MinValue T
---@field MaxValue T
---@field Zero T
---@field NegativeInfinity T
---@field PositiveInfinity T
UnityEngine.ProBuilder.KdTree.Math.TypeMath = {}
---@alias CS.UnityEngine.ProBuilder.KdTree.Math.TypeMath UnityEngine.ProBuilder.KdTree.Math.TypeMath
CS.UnityEngine.ProBuilder.KdTree.Math.TypeMath = UnityEngine.ProBuilder.KdTree.Math.TypeMath

---@param a T
---@param b T
---@return number
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:Compare(a, b) end
---@overload fun(self: UnityEngine.ProBuilder.KdTree.Math.TypeMath, a: T, b: T) : boolean
---@param a T[]
---@param b T[]
---@return boolean
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:AreEqual(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:Min(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:Max(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:Add(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:Subtract(a, b) end
---@param a T
---@param b T
---@return T
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:Multiply(a, b) end
---@param a T[]
---@param b T[]
---@return T
function UnityEngine.ProBuilder.KdTree.Math.TypeMath:DistanceSquaredBetweenPoints(a, b) end

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


---@class ShadersDummy : System.Object
ShadersDummy = {}
---@alias CS.ShadersDummy ShadersDummy
CS.ShadersDummy = ShadersDummy

---@return ShadersDummy
function ShadersDummy.New() end

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

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class CinemachineCameraOffset : Cinemachine.CinemachineExtension
---@field m_Offset UnityEngine.Vector3
---@field m_ApplyAfter Cinemachine.CinemachineCore.Stage
---@field m_PreserveComposition boolean
CinemachineCameraOffset = {}
---@alias CS.CinemachineCameraOffset CinemachineCameraOffset
CS.CinemachineCameraOffset = CinemachineCameraOffset


---@class CinemachineRecomposer : Cinemachine.CinemachineExtension
---@field m_ApplyAfter Cinemachine.CinemachineCore.Stage
---@field m_Tilt number
---@field m_Pan number
---@field m_Dutch number
---@field m_ZoomScale number
---@field m_FollowAttachment number
---@field m_LookAtAttachment number
CinemachineRecomposer = {}
---@alias CS.CinemachineRecomposer CinemachineRecomposer
CS.CinemachineRecomposer = CinemachineRecomposer

---@param vcam Cinemachine.CinemachineVirtualCameraBase
---@param ref_curState Cinemachine.CameraState
---@param deltaTime number
---@return ,Cinemachine.CameraState
function CinemachineRecomposer:PrePipelineMutateCameraStateCallback(vcam, ref_curState, deltaTime) end

---@class CinemachineTouchInputMapper : UnityEngine.MonoBehaviour
---@field TouchSensitivityX number
---@field TouchSensitivityY number
---@field TouchXInputMapTo string
---@field TouchYInputMapTo string
CinemachineTouchInputMapper = {}
---@alias CS.CinemachineTouchInputMapper CinemachineTouchInputMapper
CS.CinemachineTouchInputMapper = CinemachineTouchInputMapper


---@class CinemachineMixer : UnityEngine.Playables.PlayableBehaviour
---@field GetMasterPlayableDirector CinemachineMixer.MasterDirectorDelegate
CinemachineMixer = {}
---@alias CS.CinemachineMixer CinemachineMixer
CS.CinemachineMixer = CinemachineMixer

---@return CinemachineMixer
function CinemachineMixer.New() end
---@param playable UnityEngine.Playables.Playable
function CinemachineMixer:OnGraphStart(playable) end
---@param playable UnityEngine.Playables.Playable
function CinemachineMixer:OnPlayableDestroy(playable) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
function CinemachineMixer:PrepareFrame(playable, info) end
---@param playable UnityEngine.Playables.Playable
---@param info UnityEngine.Playables.FrameData
---@param playerData System.Object
function CinemachineMixer:ProcessFrame(playable, info, playerData) end

---@class CinemachineShot : UnityEngine.Playables.PlayableAsset
---@field DisplayName string
---@field VirtualCamera UnityEngine.ExposedReference
CinemachineShot = {}
---@alias CS.CinemachineShot CinemachineShot
CS.CinemachineShot = CinemachineShot

---@return CinemachineShot
function CinemachineShot.New() end
---@param graph UnityEngine.Playables.PlayableGraph
---@param owner UnityEngine.GameObject
---@return UnityEngine.Playables.Playable
function CinemachineShot:CreatePlayable(graph, owner) end
---@param director UnityEngine.Playables.PlayableDirector
---@param driver UnityEngine.Timeline.IPropertyCollector
function CinemachineShot:GatherProperties(director, driver) end

---@class CinemachineShotPlayable : UnityEngine.Playables.PlayableBehaviour
---@field VirtualCamera Cinemachine.CinemachineVirtualCameraBase
---@field IsValid boolean
CinemachineShotPlayable = {}
---@alias CS.CinemachineShotPlayable CinemachineShotPlayable
CS.CinemachineShotPlayable = CinemachineShotPlayable

---@return CinemachineShotPlayable
function CinemachineShotPlayable.New() end

---@class CinemachineTrack : UnityEngine.Timeline.TrackAsset
CinemachineTrack = {}
---@alias CS.CinemachineTrack CinemachineTrack
CS.CinemachineTrack = CinemachineTrack

---@return CinemachineTrack
function CinemachineTrack.New() end
---@param graph UnityEngine.Playables.PlayableGraph
---@param go UnityEngine.GameObject
---@param inputCount number
---@return UnityEngine.Playables.Playable
function CinemachineTrack:CreateTrackMixer(graph, go, inputCount) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class CinemachineMixer.MasterDirectorDelegate : System.MulticastDelegate
CinemachineMixer.MasterDirectorDelegate = {}
---@alias CS.CinemachineMixer.MasterDirectorDelegate CinemachineMixer.MasterDirectorDelegate
CS.CinemachineMixer.MasterDirectorDelegate = CinemachineMixer.MasterDirectorDelegate

---@param object System.Object
---@param method System.IntPtr
---@return CinemachineMixer.MasterDirectorDelegate
function CinemachineMixer.MasterDirectorDelegate.New(object, method) end
---@return UnityEngine.Playables.PlayableDirector
function CinemachineMixer.MasterDirectorDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function CinemachineMixer.MasterDirectorDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.Playables.PlayableDirector
function CinemachineMixer.MasterDirectorDelegate:EndInvoke(result) end

---@class CinemachineMixer.ScrubbingCacheHelper : System.Object
---@field ActivePlayableA number
---@field ActivePlayableB number
CinemachineMixer.ScrubbingCacheHelper = {}
---@alias CS.CinemachineMixer.ScrubbingCacheHelper CinemachineMixer.ScrubbingCacheHelper
CS.CinemachineMixer.ScrubbingCacheHelper = CinemachineMixer.ScrubbingCacheHelper

---@return CinemachineMixer.ScrubbingCacheHelper
function CinemachineMixer.ScrubbingCacheHelper.New() end
---@param playable UnityEngine.Playables.Playable
function CinemachineMixer.ScrubbingCacheHelper:Init(playable) end
---@param currentTime number
---@param playableIndex number
---@param isCut boolean
---@param timeInClip number
---@param up UnityEngine.Vector3
function CinemachineMixer.ScrubbingCacheHelper:ScrubToHere(currentTime, playableIndex, isCut, timeInClip, up) end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class CinemachineMixer.ScrubbingCacheHelper.ClipObjects : System.ValueType
---@field Cameras System.Collections.Generic.List
---@field MaxDampTime number
CinemachineMixer.ScrubbingCacheHelper.ClipObjects = {}
---@alias CS.CinemachineMixer.ScrubbingCacheHelper.ClipObjects CinemachineMixer.ScrubbingCacheHelper.ClipObjects
CS.CinemachineMixer.ScrubbingCacheHelper.ClipObjects = CinemachineMixer.ScrubbingCacheHelper.ClipObjects


---@class AutoBuildCacheUtility : System.Object
AutoBuildCacheUtility = {}
---@alias CS.AutoBuildCacheUtility AutoBuildCacheUtility
CS.AutoBuildCacheUtility = AutoBuildCacheUtility

---@return AutoBuildCacheUtility
function AutoBuildCacheUtility.New() end
function AutoBuildCacheUtility:Dispose() end

---@class BuildCacheUtility : System.Object
BuildCacheUtility = {}
---@alias CS.BuildCacheUtility BuildCacheUtility
CS.BuildCacheUtility = BuildCacheUtility

---@param content UnityEditor.Build.Pipeline.Interfaces.IBuildContent
function BuildCacheUtility.SetCurrentBuildContent(content) end
---@overload fun(asset: UnityEditor.GUID, version: number) : UnityEditor.Build.Pipeline.Utilities.CacheEntry
---@overload fun(path: string, version: number) : UnityEditor.Build.Pipeline.Utilities.CacheEntry
---@overload fun(type: System.Type, version: number) : UnityEditor.Build.Pipeline.Utilities.CacheEntry
---@param objectID UnityEditor.Build.Content.ObjectIdentifier
---@param version number
---@return UnityEditor.Build.Pipeline.Utilities.CacheEntry
function BuildCacheUtility.GetCacheEntry(objectID, version) end
---@param objectId UnityEditor.Build.Content.ObjectIdentifier
---@return System.Type
function BuildCacheUtility.GetMainTypeForObject(objectId) end
---@param objectIds System.Collections.Generic.IEnumerable
---@return System.Type[]
function BuildCacheUtility.GetMainTypeForObjects(objectIds) end
---@param objectId UnityEditor.Build.Content.ObjectIdentifier
---@return System.Type[]
function BuildCacheUtility.GetSortedUniqueTypesForObject(objectId) end
---@param objectIds System.Collections.Generic.IEnumerable
---@return System.Type[]
function BuildCacheUtility.GetSortedUniqueTypesForObjects(objectIds) end
---@param pairs System.Collections.Generic.IEnumerable
function BuildCacheUtility.SetTypeForObjects(pairs) end
---@param typeDB UnityEditor.Build.Player.TypeDB
function BuildCacheUtility.SetTypeDB(typeDB) end

---@class HashingHelpers : System.Object
HashingHelpers = {}
---@alias CS.HashingHelpers HashingHelpers
CS.HashingHelpers = HashingHelpers

---@overload fun(info: UnityEditor.Build.Content.SerializationInfo) : UnityEngine.Hash128
---@overload fun(info: UnityEditor.Build.Content.PreloadInfo) : UnityEngine.Hash128
---@overload fun(info: UnityEditor.Build.Content.AssetBundleInfo) : UnityEngine.Hash128
---@overload fun(info: UnityEditor.Build.Content.SceneBundleInfo) : UnityEngine.Hash128
---@overload fun(info: UnityEditor.Build.Content.AssetLoadInfo) : UnityEngine.Hash128
---@overload fun(cmd: UnityEditor.Build.Content.WriteCommand) : UnityEngine.Hash128
---@param settings UnityEditor.Build.Content.BuildSettings
---@return UnityEngine.Hash128
function HashingHelpers.GetHash128(settings) end

---@class StreamHasher : System.Object
---@field Writer System.IO.BinaryWriter
StreamHasher = {}
---@alias CS.StreamHasher StreamHasher
CS.StreamHasher = StreamHasher

---@return StreamHasher
function StreamHasher.New() end
---@return UnityEngine.Hash128
function StreamHasher:GetHash() end

---@class ThreadingManager : System.Object
ThreadingManager = {}
---@alias CS.ThreadingManager ThreadingManager
CS.ThreadingManager = ThreadingManager


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class ThreadingManager.ThreadQueues
---@field SaveQueue ThreadingManager.ThreadQueues
---@field UploadQueue ThreadingManager.ThreadQueues
---@field PruneQueue ThreadingManager.ThreadQueues
---@field TotalQueues ThreadingManager.ThreadQueues
ThreadingManager.ThreadQueues = {}
---@alias CS.ThreadingManager.ThreadQueues ThreadingManager.ThreadQueues
CS.ThreadingManager.ThreadQueues = ThreadingManager.ThreadQueues


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


---@class PackedPlayModeBuildLogs : System.Object
---@field RuntimeBuildLogs System.Collections.Generic.List
PackedPlayModeBuildLogs = {}
---@alias CS.PackedPlayModeBuildLogs PackedPlayModeBuildLogs
CS.PackedPlayModeBuildLogs = PackedPlayModeBuildLogs

---@return PackedPlayModeBuildLogs
function PackedPlayModeBuildLogs.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class UnityEngine.AssetReferenceUIRestriction : System.Attribute
UnityEngine.AssetReferenceUIRestriction = {}
---@alias CS.UnityEngine.AssetReferenceUIRestriction UnityEngine.AssetReferenceUIRestriction
CS.UnityEngine.AssetReferenceUIRestriction = UnityEngine.AssetReferenceUIRestriction

---@return UnityEngine.AssetReferenceUIRestriction
function UnityEngine.AssetReferenceUIRestriction.New() end
---@overload fun(self: UnityEngine.AssetReferenceUIRestriction, obj: UnityEngine.Object) : boolean
---@param path string
---@return boolean
function UnityEngine.AssetReferenceUIRestriction:ValidateAsset(path) end

---@class UnityEngine.AssetReferenceUILabelRestriction : UnityEngine.AssetReferenceUIRestriction
---@field m_AllowedLabels System.String[]
---@field m_CachedToString string
UnityEngine.AssetReferenceUILabelRestriction = {}
---@alias CS.UnityEngine.AssetReferenceUILabelRestriction UnityEngine.AssetReferenceUILabelRestriction
CS.UnityEngine.AssetReferenceUILabelRestriction = UnityEngine.AssetReferenceUILabelRestriction

---@param allowedLabels System.String[]
---@return UnityEngine.AssetReferenceUILabelRestriction
function UnityEngine.AssetReferenceUILabelRestriction.New(allowedLabels) end
---@overload fun(self: UnityEngine.AssetReferenceUILabelRestriction, obj: UnityEngine.Object) : boolean
---@param path string
---@return boolean
function UnityEngine.AssetReferenceUILabelRestriction:ValidateAsset(path) end
---@return string
function UnityEngine.AssetReferenceUILabelRestriction:ToString() end

---@class UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase
---@field Result UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation -- infered from UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationBase`1[System.Boolean]
UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation = {}
---@alias CS.UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation
CS.UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation = UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation

---@return UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation
function UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation.New() end
---@param rtdOp UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param addressables UnityEngine.AddressableAssets.AddressablesImpl
function UnityEngine.ResourceManagement.AsyncOperations.InitalizationObjectsOperation:Init(rtdOp, addressables) end

---@class UnityEngine.AddressableAssets.ResourceLocatorInfo : System.Object
---@field Locator UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
---@field LocalHash string
---@field CatalogLocation UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field HashLocation UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@field CanUpdateContent boolean
UnityEngine.AddressableAssets.ResourceLocatorInfo = {}
---@alias CS.UnityEngine.AddressableAssets.ResourceLocatorInfo UnityEngine.AddressableAssets.ResourceLocatorInfo
CS.UnityEngine.AddressableAssets.ResourceLocatorInfo = UnityEngine.AddressableAssets.ResourceLocatorInfo

---@param loc UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
---@param localHash string
---@param remoteCatalogLocation UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return UnityEngine.AddressableAssets.ResourceLocatorInfo
function UnityEngine.AddressableAssets.ResourceLocatorInfo.New(loc, localHash, remoteCatalogLocation) end

---@class UnityEngine.AddressableAssets.InvalidKeyException : System.Exception
---@field Key System.Object
---@field Type System.Type
---@field MergeMode System.Nullable
---@field Message string
UnityEngine.AddressableAssets.InvalidKeyException = {}
---@alias CS.UnityEngine.AddressableAssets.InvalidKeyException UnityEngine.AddressableAssets.InvalidKeyException
CS.UnityEngine.AddressableAssets.InvalidKeyException = UnityEngine.AddressableAssets.InvalidKeyException

---@overload fun(key: System.Object) : UnityEngine.AddressableAssets.InvalidKeyException
---@overload fun(key: System.Object, type: System.Type) : UnityEngine.AddressableAssets.InvalidKeyException
---@overload fun(key: System.Object, type: System.Type, mergeMode: UnityEngine.AddressableAssets.Addressables.MergeMode) : UnityEngine.AddressableAssets.InvalidKeyException
---@overload fun() : UnityEngine.AddressableAssets.InvalidKeyException
---@overload fun(message: string) : UnityEngine.AddressableAssets.InvalidKeyException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.AddressableAssets.InvalidKeyException
function UnityEngine.AddressableAssets.InvalidKeyException.New(message, innerException) end

---@class UnityEngine.AddressableAssets.Addressables : System.Object
---@field kAddressablesRuntimeDataPath string
---@field kAddressablesRuntimeBuildLogPath string
---@field LibraryPath string
---@field BuildReportPath string
---@field Version string
---@field ResourceManager UnityEngine.ResourceManagement.ResourceManager
---@field InstanceProvider UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider
---@field InternalIdTransformFunc System.Func
---@field WebRequestOverride System.Action
---@field StreamingAssetsSubFolder string
---@field BuildPath string
---@field PlayerBuildDataPath string
---@field RuntimePath string
---@field ResourceLocators System.Collections.Generic.IEnumerable
UnityEngine.AddressableAssets.Addressables = {}
---@alias CS.UnityEngine.AddressableAssets.Addressables UnityEngine.AddressableAssets.Addressables
CS.UnityEngine.AddressableAssets.Addressables = UnityEngine.AddressableAssets.Addressables

---@param id string
---@return string
function UnityEngine.AddressableAssets.Addressables.ResolveInternalId(id) end
---@param msg string
function UnityEngine.AddressableAssets.Addressables.Log(msg) end
---@param format string
---@param args System.Object[]
function UnityEngine.AddressableAssets.Addressables.LogFormat(format, args) end
---@param msg string
function UnityEngine.AddressableAssets.Addressables.LogWarning(msg) end
---@param format string
---@param args System.Object[]
function UnityEngine.AddressableAssets.Addressables.LogWarningFormat(format, args) end
---@param msg string
function UnityEngine.AddressableAssets.Addressables.LogError(msg) end
---@overload fun(op: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle, ex: System.Exception)
---@param ex System.Exception
function UnityEngine.AddressableAssets.Addressables.LogException(ex) end
---@param format string
---@param args System.Object[]
function UnityEngine.AddressableAssets.Addressables.LogErrorFormat(format, args) end
---@overload fun() : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.InitializeAsync(autoReleaseHandle) end
---@overload fun(catalogPath: string, providerSuffix: string) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param catalogPath string
---@param autoReleaseHandle boolean
---@param providerSuffix string
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.LoadContentCatalogAsync(catalogPath, autoReleaseHandle, providerSuffix) end
---@overload fun(keys: System.Collections.IEnumerable, mode: UnityEngine.AddressableAssets.Addressables.MergeMode, type: System.Type) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param key System.Object
---@param type System.Type
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.LoadResourceLocationsAsync(key, type) end
---@param handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.Release(handle) end
---@overload fun(instance: UnityEngine.GameObject) : boolean
---@overload fun(handle: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle) : boolean
---@param handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@return boolean
function UnityEngine.AddressableAssets.Addressables.ReleaseInstance(handle) end
---@overload fun(key: System.Object) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(key: string) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param keys System.Collections.IEnumerable
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.GetDownloadSizeAsync(keys) end
---@overload fun(key: System.Object, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(locations: System.Collections.Generic.IList, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param keys System.Collections.IEnumerable
---@param mode UnityEngine.AddressableAssets.Addressables.MergeMode
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.DownloadDependenciesAsync(keys, mode, autoReleaseHandle) end
---@overload fun(key: System.Object)
---@overload fun(locations: System.Collections.Generic.IList)
---@overload fun(keys: System.Collections.IEnumerable)
---@overload fun(key: string)
---@overload fun(key: System.Object, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(locations: System.Collections.Generic.IList, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(keys: System.Collections.IEnumerable, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param key string
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.ClearDependencyCacheAsync(key, autoReleaseHandle) end
---@overload fun(locatorId: string) : UnityEngine.AddressableAssets.ResourceLocatorInfo
---@param locator UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
---@return UnityEngine.AddressableAssets.ResourceLocatorInfo
function UnityEngine.AddressableAssets.Addressables.GetLocatorInfo(locator) end
---@overload fun(location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, parent: UnityEngine.Transform, instantiateInWorldSpace: boolean, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, parent: UnityEngine.Transform, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(key: System.Object, parent: UnityEngine.Transform, instantiateInWorldSpace: boolean, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(key: System.Object, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, parent: UnityEngine.Transform, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(key: System.Object, instantiateParameters: UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param instantiateParameters UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
---@param trackHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.InstantiateAsync(location, instantiateParameters, trackHandle) end
---@overload fun(key: System.Object, loadMode: UnityEngine.SceneManagement.LoadSceneMode, activateOnLoad: boolean, priority: number) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(key: System.Object, loadSceneParameters: UnityEngine.SceneManagement.LoadSceneParameters, activateOnLoad: boolean, priority: number) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, loadMode: UnityEngine.SceneManagement.LoadSceneMode, activateOnLoad: boolean, priority: number) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param loadSceneParameters UnityEngine.SceneManagement.LoadSceneParameters
---@param activateOnLoad boolean
---@param priority number
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.LoadSceneAsync(location, loadSceneParameters, activateOnLoad, priority) end
---@overload fun(scene: UnityEngine.ResourceManagement.ResourceProviders.SceneInstance, unloadOptions: UnityEngine.SceneManagement.UnloadSceneOptions, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(handle: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle, unloadOptions: UnityEngine.SceneManagement.UnloadSceneOptions, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(scene: UnityEngine.ResourceManagement.ResourceProviders.SceneInstance, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(handle: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.UnloadSceneAsync(handle, autoReleaseHandle) end
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.CheckForCatalogUpdates(autoReleaseHandle) end
---@overload fun(catalogs: System.Collections.Generic.IEnumerable, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param autoCleanBundleCache boolean
---@param catalogs System.Collections.Generic.IEnumerable
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.UpdateCatalogs(autoCleanBundleCache, catalogs, autoReleaseHandle) end
---@param locator UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
---@param localCatalogHash string
---@param remoteCatalogLocation UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
function UnityEngine.AddressableAssets.Addressables.AddResourceLocator(locator, localCatalogHash, remoteCatalogLocation) end
---@param locator UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
function UnityEngine.AddressableAssets.Addressables.RemoveResourceLocator(locator) end
function UnityEngine.AddressableAssets.Addressables.ClearResourceLocators() end
---@param catalogsIds System.Collections.Generic.IEnumerable
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.Addressables.CleanBundleCache(catalogsIds) end

---@class UnityEngine.AddressableAssets.AddressablesImpl : System.Object
---@field SceneProvider UnityEngine.ResourceManagement.ResourceProviders.ISceneProvider
---@field InstanceProvider UnityEngine.ResourceManagement.ResourceProviders.IInstanceProvider
---@field ResourceManager UnityEngine.ResourceManagement.ResourceManager
---@field CatalogRequestsTimeout number
---@field InternalIdTransformFunc System.Func
---@field WebRequestOverride System.Action
---@field ChainOperation UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@field StreamingAssetsSubFolder string
---@field BuildPath string
---@field PlayerBuildDataPath string
---@field RuntimePath string
---@field ResourceLocators System.Collections.Generic.IEnumerable
UnityEngine.AddressableAssets.AddressablesImpl = {}
---@alias CS.UnityEngine.AddressableAssets.AddressablesImpl UnityEngine.AddressableAssets.AddressablesImpl
CS.UnityEngine.AddressableAssets.AddressablesImpl = UnityEngine.AddressableAssets.AddressablesImpl

---@param alloc UnityEngine.ResourceManagement.Util.IAllocationStrategy
---@return UnityEngine.AddressableAssets.AddressablesImpl
function UnityEngine.AddressableAssets.AddressablesImpl.New(alloc) end
---@param msg string
function UnityEngine.AddressableAssets.AddressablesImpl:Log(msg) end
---@param format string
---@param args System.Object[]
function UnityEngine.AddressableAssets.AddressablesImpl:LogFormat(format, args) end
---@param msg string
function UnityEngine.AddressableAssets.AddressablesImpl:LogWarning(msg) end
---@param format string
---@param args System.Object[]
function UnityEngine.AddressableAssets.AddressablesImpl:LogWarningFormat(format, args) end
---@param msg string
function UnityEngine.AddressableAssets.AddressablesImpl:LogError(msg) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, op: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle, ex: System.Exception)
---@param ex System.Exception
function UnityEngine.AddressableAssets.AddressablesImpl:LogException(ex) end
---@param format string
---@param args System.Object[]
function UnityEngine.AddressableAssets.AddressablesImpl:LogErrorFormat(format, args) end
---@param id string
---@return string
function UnityEngine.AddressableAssets.AddressablesImpl:ResolveInternalId(id) end
---@param loc UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
---@param localCatalogHash string
---@param remoteCatalogLocation UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
function UnityEngine.AddressableAssets.AddressablesImpl:AddResourceLocator(loc, localCatalogHash, remoteCatalogLocation) end
---@param loc UnityEngine.AddressableAssets.ResourceLocators.IResourceLocator
function UnityEngine.AddressableAssets.AddressablesImpl:RemoveResourceLocator(loc) end
function UnityEngine.AddressableAssets.AddressablesImpl:ClearResourceLocators() end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, runtimeDataPath: string, providerSuffix: string, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun() : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:InitializeAsync(autoReleaseHandle) end
---@param catalogPath string
---@param autoReleaseHandle boolean
---@param providerSuffix string
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:LoadContentCatalogAsync(catalogPath, autoReleaseHandle, providerSuffix) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, dep: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle, keys: System.Collections.IEnumerable, mode: UnityEngine.AddressableAssets.Addressables.MergeMode, type: System.Type) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param dep UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param key System.Object
---@param type System.Type
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:LoadResourceLocationsWithChain(dep, key, type) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, keys: System.Collections.IEnumerable, mode: UnityEngine.AddressableAssets.Addressables.MergeMode, type: System.Type) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param key System.Object
---@param type System.Type
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:LoadResourceLocationsAsync(key, type) end
---@param handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:Release(handle) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param keys System.Collections.IEnumerable
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:GetDownloadSizeAsync(keys) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, locations: System.Collections.Generic.IList, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param keys System.Collections.IEnumerable
---@param mode UnityEngine.AddressableAssets.Addressables.MergeMode
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:DownloadDependenciesAsync(keys, mode, autoReleaseHandle) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, locations: System.Collections.Generic.IList, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param keys System.Collections.IEnumerable
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:ClearDependencyCacheAsync(keys, autoReleaseHandle) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, parent: UnityEngine.Transform, instantiateInWorldSpace: boolean, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, parent: UnityEngine.Transform, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object, parent: UnityEngine.Transform, instantiateInWorldSpace: boolean, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, parent: UnityEngine.Transform, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object, instantiateParameters: UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param instantiateParameters UnityEngine.ResourceManagement.ResourceProviders.InstantiationParameters
---@param trackHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:InstantiateAsync(location, instantiateParameters, trackHandle) end
---@param instance UnityEngine.GameObject
---@return boolean
function UnityEngine.AddressableAssets.AddressablesImpl:ReleaseInstance(instance) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, key: System.Object, loadSceneParameters: UnityEngine.SceneManagement.LoadSceneParameters, activateOnLoad: boolean, priority: number, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, location: UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation, loadMode: UnityEngine.SceneManagement.LoadSceneMode, activateOnLoad: boolean, priority: number, trackHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param location UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param loadSceneParameters UnityEngine.SceneManagement.LoadSceneParameters
---@param activateOnLoad boolean
---@param priority number
---@param trackHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:LoadSceneAsync(location, loadSceneParameters, activateOnLoad, priority, trackHandle) end
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, scene: UnityEngine.ResourceManagement.ResourceProviders.SceneInstance, unloadOptions: UnityEngine.SceneManagement.UnloadSceneOptions, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@overload fun(self: UnityEngine.AddressableAssets.AddressablesImpl, handle: UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle, unloadOptions: UnityEngine.SceneManagement.UnloadSceneOptions, autoReleaseHandle: boolean) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param handle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param unloadOptions UnityEngine.SceneManagement.UnloadSceneOptions
---@param autoReleaseHandle boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AddressablesImpl:UnloadSceneAsync(handle, unloadOptions, autoReleaseHandle) end
---@param c string
---@return UnityEngine.AddressableAssets.ResourceLocatorInfo
function UnityEngine.AddressableAssets.AddressablesImpl:GetLocatorInfo(c) end
---@param x UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@param y UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return boolean
function UnityEngine.AddressableAssets.AddressablesImpl:Equals(x, y) end
---@param loc UnityEngine.ResourceManagement.ResourceLocations.IResourceLocation
---@return number
function UnityEngine.AddressableAssets.AddressablesImpl:GetHashCode(loc) end

---@class UnityEngine.AddressableAssets.AssetLabelReference : System.Object
---@field labelString string
---@field RuntimeKey System.Object
UnityEngine.AddressableAssets.AssetLabelReference = {}
---@alias CS.UnityEngine.AddressableAssets.AssetLabelReference UnityEngine.AddressableAssets.AssetLabelReference
CS.UnityEngine.AddressableAssets.AssetLabelReference = UnityEngine.AddressableAssets.AssetLabelReference

---@return UnityEngine.AddressableAssets.AssetLabelReference
function UnityEngine.AddressableAssets.AssetLabelReference.New() end
---@return boolean
function UnityEngine.AddressableAssets.AssetLabelReference:RuntimeKeyIsValid() end
---@return number
function UnityEngine.AddressableAssets.AssetLabelReference:GetHashCode() end

---@class UnityEngine.AddressableAssets.AssetReferenceT : UnityEngine.AddressableAssets.AssetReference
---@field editorAsset TObject
UnityEngine.AddressableAssets.AssetReferenceT = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReferenceT UnityEngine.AddressableAssets.AssetReferenceT
CS.UnityEngine.AddressableAssets.AssetReferenceT = UnityEngine.AddressableAssets.AssetReferenceT

---@param guid string
---@return UnityEngine.AddressableAssets.AssetReferenceT
function UnityEngine.AddressableAssets.AssetReferenceT.New(guid) end
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle[TObject]
function UnityEngine.AddressableAssets.AssetReferenceT:LoadAssetAsync() end
---@overload fun(self: UnityEngine.AddressableAssets.AssetReferenceT, obj: UnityEngine.Object) : boolean
---@param mainAssetPath string
---@return boolean
function UnityEngine.AddressableAssets.AssetReferenceT:ValidateAsset(mainAssetPath) end

---@class UnityEngine.AddressableAssets.AssetReferenceGameObject : UnityEngine.AddressableAssets.AssetReferenceT
---@field editorAsset UnityEngine.AddressableAssets.AssetReferenceGameObject -- infered from UnityEngine.AddressableAssets.AssetReferenceT`1[UnityEngine.GameObject]
UnityEngine.AddressableAssets.AssetReferenceGameObject = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReferenceGameObject UnityEngine.AddressableAssets.AssetReferenceGameObject
CS.UnityEngine.AddressableAssets.AssetReferenceGameObject = UnityEngine.AddressableAssets.AssetReferenceGameObject

---@param guid string
---@return UnityEngine.AddressableAssets.AssetReferenceGameObject
function UnityEngine.AddressableAssets.AssetReferenceGameObject.New(guid) end

---@class UnityEngine.AddressableAssets.AssetReferenceTexture : UnityEngine.AddressableAssets.AssetReferenceT
---@field editorAsset UnityEngine.AddressableAssets.AssetReferenceTexture -- infered from UnityEngine.AddressableAssets.AssetReferenceT`1[UnityEngine.Texture]
UnityEngine.AddressableAssets.AssetReferenceTexture = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReferenceTexture UnityEngine.AddressableAssets.AssetReferenceTexture
CS.UnityEngine.AddressableAssets.AssetReferenceTexture = UnityEngine.AddressableAssets.AssetReferenceTexture

---@param guid string
---@return UnityEngine.AddressableAssets.AssetReferenceTexture
function UnityEngine.AddressableAssets.AssetReferenceTexture.New(guid) end

---@class UnityEngine.AddressableAssets.AssetReferenceTexture2D : UnityEngine.AddressableAssets.AssetReferenceT
---@field editorAsset UnityEngine.AddressableAssets.AssetReferenceTexture2D -- infered from UnityEngine.AddressableAssets.AssetReferenceT`1[UnityEngine.Texture2D]
UnityEngine.AddressableAssets.AssetReferenceTexture2D = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReferenceTexture2D UnityEngine.AddressableAssets.AssetReferenceTexture2D
CS.UnityEngine.AddressableAssets.AssetReferenceTexture2D = UnityEngine.AddressableAssets.AssetReferenceTexture2D

---@param guid string
---@return UnityEngine.AddressableAssets.AssetReferenceTexture2D
function UnityEngine.AddressableAssets.AssetReferenceTexture2D.New(guid) end

---@class UnityEngine.AddressableAssets.AssetReferenceTexture3D : UnityEngine.AddressableAssets.AssetReferenceT
---@field editorAsset UnityEngine.AddressableAssets.AssetReferenceTexture3D -- infered from UnityEngine.AddressableAssets.AssetReferenceT`1[UnityEngine.Texture3D]
UnityEngine.AddressableAssets.AssetReferenceTexture3D = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReferenceTexture3D UnityEngine.AddressableAssets.AssetReferenceTexture3D
CS.UnityEngine.AddressableAssets.AssetReferenceTexture3D = UnityEngine.AddressableAssets.AssetReferenceTexture3D

---@param guid string
---@return UnityEngine.AddressableAssets.AssetReferenceTexture3D
function UnityEngine.AddressableAssets.AssetReferenceTexture3D.New(guid) end

---@class UnityEngine.AddressableAssets.AssetReferenceSprite : UnityEngine.AddressableAssets.AssetReferenceT
---@field editorAsset UnityEngine.Object
---@field editorAsset UnityEngine.AddressableAssets.AssetReferenceSprite -- infered from UnityEngine.AddressableAssets.AssetReferenceT`1[UnityEngine.Sprite]
UnityEngine.AddressableAssets.AssetReferenceSprite = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReferenceSprite UnityEngine.AddressableAssets.AssetReferenceSprite
CS.UnityEngine.AddressableAssets.AssetReferenceSprite = UnityEngine.AddressableAssets.AssetReferenceSprite

---@param guid string
---@return UnityEngine.AddressableAssets.AssetReferenceSprite
function UnityEngine.AddressableAssets.AssetReferenceSprite.New(guid) end
---@param path string
---@return boolean
function UnityEngine.AddressableAssets.AssetReferenceSprite:ValidateAsset(path) end

---@class UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite : UnityEngine.AddressableAssets.AssetReferenceT
---@field editorAsset UnityEngine.U2D.SpriteAtlas
---@field editorAsset UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite -- infered from UnityEngine.AddressableAssets.AssetReferenceT`1[UnityEngine.Sprite]
UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite
CS.UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite = UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite

---@param guid string
---@return UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite
function UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite.New(guid) end
---@overload fun(self: UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite, obj: UnityEngine.Object) : boolean
---@param path string
---@return boolean
function UnityEngine.AddressableAssets.AssetReferenceAtlasedSprite:ValidateAsset(path) end

---@class UnityEngine.AddressableAssets.AssetReference : System.Object
---@field OperationHandle UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@field RuntimeKey System.Object
---@field AssetGUID string
---@field SubObjectName string
---@field IsDone boolean
---@field Asset UnityEngine.Object
---@field editorAsset UnityEngine.Object
UnityEngine.AddressableAssets.AssetReference = {}
---@alias CS.UnityEngine.AddressableAssets.AssetReference UnityEngine.AddressableAssets.AssetReference
CS.UnityEngine.AddressableAssets.AssetReference = UnityEngine.AddressableAssets.AssetReference

---@overload fun() : UnityEngine.AddressableAssets.AssetReference
---@param guid string
---@return UnityEngine.AddressableAssets.AssetReference
function UnityEngine.AddressableAssets.AssetReference.New(guid) end
---@return boolean
function UnityEngine.AddressableAssets.AssetReference:IsValid() end
---@return string
function UnityEngine.AddressableAssets.AssetReference:ToString() end
---@param loadMode UnityEngine.SceneManagement.LoadSceneMode
---@param activateOnLoad boolean
---@param priority number
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AssetReference:LoadSceneAsync(loadMode, activateOnLoad, priority) end
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AssetReference:UnLoadScene() end
---@overload fun(self: UnityEngine.AddressableAssets.AssetReference, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, parent: UnityEngine.Transform) : UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
---@param parent UnityEngine.Transform
---@param instantiateInWorldSpace boolean
---@return UnityEngine.ResourceManagement.AsyncOperations.AsyncOperationHandle
function UnityEngine.AddressableAssets.AssetReference:InstantiateAsync(parent, instantiateInWorldSpace) end
---@return boolean
function UnityEngine.AddressableAssets.AssetReference:RuntimeKeyIsValid() end
function UnityEngine.AddressableAssets.AssetReference:ReleaseAsset() end
---@param obj UnityEngine.GameObject
function UnityEngine.AddressableAssets.AssetReference:ReleaseInstance(obj) end
---@overload fun(self: UnityEngine.AddressableAssets.AssetReference, obj: UnityEngine.Object) : boolean
---@param path string
---@return boolean
function UnityEngine.AddressableAssets.AssetReference:ValidateAsset(path) end
---@param value UnityEngine.Object
---@return boolean
function UnityEngine.AddressableAssets.AssetReference:SetEditorAsset(value) end
---@param value UnityEngine.Object
---@return boolean
function UnityEngine.AddressableAssets.AssetReference:SetEditorSubObject(value) end

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

---@class TokenStreamWithHiddenTokens : System.Object
TokenStreamWithHiddenTokens = {}
---@alias CS.TokenStreamWithHiddenTokens TokenStreamWithHiddenTokens
CS.TokenStreamWithHiddenTokens = TokenStreamWithHiddenTokens


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


---@class Consts : System.Object
---@field AssemblyName string
---@field PublicKey string
Consts = {}
---@alias CS.Consts Consts
CS.Consts = Consts


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
