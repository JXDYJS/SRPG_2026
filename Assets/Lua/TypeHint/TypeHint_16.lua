---@meta

---@class System.Internal.HandleCollector : System.Object
System.Internal.HandleCollector = {}
---@alias CS.System.Internal.HandleCollector System.Internal.HandleCollector
CS.System.Internal.HandleCollector = System.Internal.HandleCollector

---@return System.Internal.HandleCollector
function System.Internal.HandleCollector.New() end

---@class System.Internal.HandleCollector.HandleType : System.Object
System.Internal.HandleCollector.HandleType = {}
---@alias CS.System.Internal.HandleCollector.HandleType System.Internal.HandleCollector.HandleType
CS.System.Internal.HandleCollector.HandleType = System.Internal.HandleCollector.HandleType


---@class System.Internal.HandleChangeEventHandler : System.MulticastDelegate
System.Internal.HandleChangeEventHandler = {}
---@alias CS.System.Internal.HandleChangeEventHandler System.Internal.HandleChangeEventHandler
CS.System.Internal.HandleChangeEventHandler = System.Internal.HandleChangeEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Internal.HandleChangeEventHandler
function System.Internal.HandleChangeEventHandler.New(object, method) end
---@param handleType string
---@param handleValue System.IntPtr
---@param currentHandleCount number
function System.Internal.HandleChangeEventHandler:Invoke(handleType, handleValue, currentHandleCount) end
---@param handleType string
---@param handleValue System.IntPtr
---@param currentHandleCount number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Internal.HandleChangeEventHandler:BeginInvoke(handleType, handleValue, currentHandleCount, callback, object) end
---@param result System.IAsyncResult
function System.Internal.HandleChangeEventHandler:EndInvoke(result) end

---@class System.Numerics.Hashing.HashHelpers : System.Object
---@field RandomSeed number
System.Numerics.Hashing.HashHelpers = {}
---@alias CS.System.Numerics.Hashing.HashHelpers System.Numerics.Hashing.HashHelpers
CS.System.Numerics.Hashing.HashHelpers = System.Numerics.Hashing.HashHelpers

---@param h1 number
---@param h2 number
---@return number
function System.Numerics.Hashing.HashHelpers.Combine(h1, h2) end

---@class System.Drawing.ColorTable : System.Object
System.Drawing.ColorTable = {}
---@alias CS.System.Drawing.ColorTable System.Drawing.ColorTable
CS.System.Drawing.ColorTable = System.Drawing.ColorTable


---@class System.Drawing.ColorUtil : System.Object
System.Drawing.ColorUtil = {}
---@alias CS.System.Drawing.ColorUtil System.Drawing.ColorUtil
CS.System.Drawing.ColorUtil = System.Drawing.ColorUtil

---@param color System.Drawing.KnownColor
---@return System.Drawing.Color
function System.Drawing.ColorUtil.FromKnownColor(color) end
---@param color System.Drawing.Color
---@return boolean
function System.Drawing.ColorUtil.IsSystemColor(color) end

---@class System.Drawing.KnownColor
---@field ActiveBorder System.Drawing.KnownColor
---@field ActiveCaption System.Drawing.KnownColor
---@field ActiveCaptionText System.Drawing.KnownColor
---@field AppWorkspace System.Drawing.KnownColor
---@field Control System.Drawing.KnownColor
---@field ControlDark System.Drawing.KnownColor
---@field ControlDarkDark System.Drawing.KnownColor
---@field ControlLight System.Drawing.KnownColor
---@field ControlLightLight System.Drawing.KnownColor
---@field ControlText System.Drawing.KnownColor
---@field Desktop System.Drawing.KnownColor
---@field GrayText System.Drawing.KnownColor
---@field Highlight System.Drawing.KnownColor
---@field HighlightText System.Drawing.KnownColor
---@field HotTrack System.Drawing.KnownColor
---@field InactiveBorder System.Drawing.KnownColor
---@field InactiveCaption System.Drawing.KnownColor
---@field InactiveCaptionText System.Drawing.KnownColor
---@field Info System.Drawing.KnownColor
---@field InfoText System.Drawing.KnownColor
---@field Menu System.Drawing.KnownColor
---@field MenuText System.Drawing.KnownColor
---@field ScrollBar System.Drawing.KnownColor
---@field Window System.Drawing.KnownColor
---@field WindowFrame System.Drawing.KnownColor
---@field WindowText System.Drawing.KnownColor
---@field Transparent System.Drawing.KnownColor
---@field AliceBlue System.Drawing.KnownColor
---@field AntiqueWhite System.Drawing.KnownColor
---@field Aqua System.Drawing.KnownColor
---@field Aquamarine System.Drawing.KnownColor
---@field Azure System.Drawing.KnownColor
---@field Beige System.Drawing.KnownColor
---@field Bisque System.Drawing.KnownColor
---@field Black System.Drawing.KnownColor
---@field BlanchedAlmond System.Drawing.KnownColor
---@field Blue System.Drawing.KnownColor
---@field BlueViolet System.Drawing.KnownColor
---@field Brown System.Drawing.KnownColor
---@field BurlyWood System.Drawing.KnownColor
---@field CadetBlue System.Drawing.KnownColor
---@field Chartreuse System.Drawing.KnownColor
---@field Chocolate System.Drawing.KnownColor
---@field Coral System.Drawing.KnownColor
---@field CornflowerBlue System.Drawing.KnownColor
---@field Cornsilk System.Drawing.KnownColor
---@field Crimson System.Drawing.KnownColor
---@field Cyan System.Drawing.KnownColor
---@field DarkBlue System.Drawing.KnownColor
---@field DarkCyan System.Drawing.KnownColor
---@field DarkGoldenrod System.Drawing.KnownColor
---@field DarkGray System.Drawing.KnownColor
---@field DarkGreen System.Drawing.KnownColor
---@field DarkKhaki System.Drawing.KnownColor
---@field DarkMagenta System.Drawing.KnownColor
---@field DarkOliveGreen System.Drawing.KnownColor
---@field DarkOrange System.Drawing.KnownColor
---@field DarkOrchid System.Drawing.KnownColor
---@field DarkRed System.Drawing.KnownColor
---@field DarkSalmon System.Drawing.KnownColor
---@field DarkSeaGreen System.Drawing.KnownColor
---@field DarkSlateBlue System.Drawing.KnownColor
---@field DarkSlateGray System.Drawing.KnownColor
---@field DarkTurquoise System.Drawing.KnownColor
---@field DarkViolet System.Drawing.KnownColor
---@field DeepPink System.Drawing.KnownColor
---@field DeepSkyBlue System.Drawing.KnownColor
---@field DimGray System.Drawing.KnownColor
---@field DodgerBlue System.Drawing.KnownColor
---@field Firebrick System.Drawing.KnownColor
---@field FloralWhite System.Drawing.KnownColor
---@field ForestGreen System.Drawing.KnownColor
---@field Fuchsia System.Drawing.KnownColor
---@field Gainsboro System.Drawing.KnownColor
---@field GhostWhite System.Drawing.KnownColor
---@field Gold System.Drawing.KnownColor
---@field Goldenrod System.Drawing.KnownColor
---@field Gray System.Drawing.KnownColor
---@field Green System.Drawing.KnownColor
---@field GreenYellow System.Drawing.KnownColor
---@field Honeydew System.Drawing.KnownColor
---@field HotPink System.Drawing.KnownColor
---@field IndianRed System.Drawing.KnownColor
---@field Indigo System.Drawing.KnownColor
---@field Ivory System.Drawing.KnownColor
---@field Khaki System.Drawing.KnownColor
---@field Lavender System.Drawing.KnownColor
---@field LavenderBlush System.Drawing.KnownColor
---@field LawnGreen System.Drawing.KnownColor
---@field LemonChiffon System.Drawing.KnownColor
---@field LightBlue System.Drawing.KnownColor
---@field LightCoral System.Drawing.KnownColor
---@field LightCyan System.Drawing.KnownColor
---@field LightGoldenrodYellow System.Drawing.KnownColor
---@field LightGray System.Drawing.KnownColor
---@field LightGreen System.Drawing.KnownColor
---@field LightPink System.Drawing.KnownColor
---@field LightSalmon System.Drawing.KnownColor
---@field LightSeaGreen System.Drawing.KnownColor
---@field LightSkyBlue System.Drawing.KnownColor
---@field LightSlateGray System.Drawing.KnownColor
---@field LightSteelBlue System.Drawing.KnownColor
---@field LightYellow System.Drawing.KnownColor
---@field Lime System.Drawing.KnownColor
---@field LimeGreen System.Drawing.KnownColor
---@field Linen System.Drawing.KnownColor
---@field Magenta System.Drawing.KnownColor
---@field Maroon System.Drawing.KnownColor
---@field MediumAquamarine System.Drawing.KnownColor
---@field MediumBlue System.Drawing.KnownColor
---@field MediumOrchid System.Drawing.KnownColor
---@field MediumPurple System.Drawing.KnownColor
---@field MediumSeaGreen System.Drawing.KnownColor
---@field MediumSlateBlue System.Drawing.KnownColor
---@field MediumSpringGreen System.Drawing.KnownColor
---@field MediumTurquoise System.Drawing.KnownColor
---@field MediumVioletRed System.Drawing.KnownColor
---@field MidnightBlue System.Drawing.KnownColor
---@field MintCream System.Drawing.KnownColor
---@field MistyRose System.Drawing.KnownColor
---@field Moccasin System.Drawing.KnownColor
---@field NavajoWhite System.Drawing.KnownColor
---@field Navy System.Drawing.KnownColor
---@field OldLace System.Drawing.KnownColor
---@field Olive System.Drawing.KnownColor
---@field OliveDrab System.Drawing.KnownColor
---@field Orange System.Drawing.KnownColor
---@field OrangeRed System.Drawing.KnownColor
---@field Orchid System.Drawing.KnownColor
---@field PaleGoldenrod System.Drawing.KnownColor
---@field PaleGreen System.Drawing.KnownColor
---@field PaleTurquoise System.Drawing.KnownColor
---@field PaleVioletRed System.Drawing.KnownColor
---@field PapayaWhip System.Drawing.KnownColor
---@field PeachPuff System.Drawing.KnownColor
---@field Peru System.Drawing.KnownColor
---@field Pink System.Drawing.KnownColor
---@field Plum System.Drawing.KnownColor
---@field PowderBlue System.Drawing.KnownColor
---@field Purple System.Drawing.KnownColor
---@field Red System.Drawing.KnownColor
---@field RosyBrown System.Drawing.KnownColor
---@field RoyalBlue System.Drawing.KnownColor
---@field SaddleBrown System.Drawing.KnownColor
---@field Salmon System.Drawing.KnownColor
---@field SandyBrown System.Drawing.KnownColor
---@field SeaGreen System.Drawing.KnownColor
---@field SeaShell System.Drawing.KnownColor
---@field Sienna System.Drawing.KnownColor
---@field Silver System.Drawing.KnownColor
---@field SkyBlue System.Drawing.KnownColor
---@field SlateBlue System.Drawing.KnownColor
---@field SlateGray System.Drawing.KnownColor
---@field Snow System.Drawing.KnownColor
---@field SpringGreen System.Drawing.KnownColor
---@field SteelBlue System.Drawing.KnownColor
---@field Tan System.Drawing.KnownColor
---@field Teal System.Drawing.KnownColor
---@field Thistle System.Drawing.KnownColor
---@field Tomato System.Drawing.KnownColor
---@field Turquoise System.Drawing.KnownColor
---@field Violet System.Drawing.KnownColor
---@field Wheat System.Drawing.KnownColor
---@field White System.Drawing.KnownColor
---@field WhiteSmoke System.Drawing.KnownColor
---@field Yellow System.Drawing.KnownColor
---@field YellowGreen System.Drawing.KnownColor
---@field ButtonFace System.Drawing.KnownColor
---@field ButtonHighlight System.Drawing.KnownColor
---@field ButtonShadow System.Drawing.KnownColor
---@field GradientActiveCaption System.Drawing.KnownColor
---@field GradientInactiveCaption System.Drawing.KnownColor
---@field MenuBar System.Drawing.KnownColor
---@field MenuHighlight System.Drawing.KnownColor
System.Drawing.KnownColor = {}
---@alias CS.System.Drawing.KnownColor System.Drawing.KnownColor
CS.System.Drawing.KnownColor = System.Drawing.KnownColor


---@class System.Drawing.KnownColorTable : System.Object
System.Drawing.KnownColorTable = {}
---@alias CS.System.Drawing.KnownColorTable System.Drawing.KnownColorTable
CS.System.Drawing.KnownColorTable = System.Drawing.KnownColorTable

---@param targetARGB number
---@return System.Drawing.Color
function System.Drawing.KnownColorTable.ArgbToKnownColor(targetARGB) end
---@param color System.Drawing.KnownColor
---@return number
function System.Drawing.KnownColorTable.KnownColorToArgb(color) end
---@param color System.Drawing.KnownColor
---@return string
function System.Drawing.KnownColorTable.KnownColorToName(color) end

---@class System.Drawing.SizeConverter : System.ComponentModel.TypeConverter
System.Drawing.SizeConverter = {}
---@alias CS.System.Drawing.SizeConverter System.Drawing.SizeConverter
CS.System.Drawing.SizeConverter = System.Drawing.SizeConverter

---@return System.Drawing.SizeConverter
function System.Drawing.SizeConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.SizeConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.SizeConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.SizeConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.SizeConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.Drawing.SizeConverter:CreateInstance(context, propertyValues) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.SizeConverter:GetCreateInstanceSupported(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Drawing.SizeConverter:GetProperties(context, value, attributes) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.SizeConverter:GetPropertiesSupported(context) end

---@class System.Drawing.SizeFConverter : System.ComponentModel.TypeConverter
System.Drawing.SizeFConverter = {}
---@alias CS.System.Drawing.SizeFConverter System.Drawing.SizeFConverter
CS.System.Drawing.SizeFConverter = System.Drawing.SizeFConverter

---@return System.Drawing.SizeFConverter
function System.Drawing.SizeFConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.SizeFConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.SizeFConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.SizeFConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.SizeFConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.Drawing.SizeFConverter:CreateInstance(context, propertyValues) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.SizeFConverter:GetCreateInstanceSupported(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Drawing.SizeFConverter:GetProperties(context, value, attributes) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.SizeFConverter:GetPropertiesSupported(context) end

---@class System.Drawing.AssemblyRef : System.Object
---@field SystemDrawingDesign string
---@field SystemDesign string
---@field SystemWindowsForms string
System.Drawing.AssemblyRef = {}
---@alias CS.System.Drawing.AssemblyRef System.Drawing.AssemblyRef
CS.System.Drawing.AssemblyRef = System.Drawing.AssemblyRef


---@class System.Drawing.BitmapSuffixInSameAssemblyAttribute : System.Attribute
System.Drawing.BitmapSuffixInSameAssemblyAttribute = {}
---@alias CS.System.Drawing.BitmapSuffixInSameAssemblyAttribute System.Drawing.BitmapSuffixInSameAssemblyAttribute
CS.System.Drawing.BitmapSuffixInSameAssemblyAttribute = System.Drawing.BitmapSuffixInSameAssemblyAttribute

---@return System.Drawing.BitmapSuffixInSameAssemblyAttribute
function System.Drawing.BitmapSuffixInSameAssemblyAttribute.New() end

---@class System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute : System.Attribute
System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute = {}
---@alias CS.System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute
CS.System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute = System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute

---@return System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute
function System.Drawing.BitmapSuffixInSatelliteAssemblyAttribute.New() end

---@class System.Drawing.Brush : System.MarshalByRefObject
System.Drawing.Brush = {}
---@alias CS.System.Drawing.Brush System.Drawing.Brush
CS.System.Drawing.Brush = System.Drawing.Brush

---@return System.Object
function System.Drawing.Brush:Clone() end
function System.Drawing.Brush:Dispose() end

---@class System.Drawing.ClientUtils : System.Object
System.Drawing.ClientUtils = {}
---@alias CS.System.Drawing.ClientUtils System.Drawing.ClientUtils
CS.System.Drawing.ClientUtils = System.Drawing.ClientUtils

---@param ex System.Exception
---@return boolean
function System.Drawing.ClientUtils.IsCriticalException(ex) end
---@param ex System.Exception
---@return boolean
function System.Drawing.ClientUtils.IsSecurityOrCriticalException(ex) end

---@class System.Drawing.ClientUtils.WeakRefCollection : System.Object
---@field RefCheckThreshold number
---@field Item System.Object
---@field IsFixedSize boolean
---@field Count number
---@field IsReadOnly boolean
System.Drawing.ClientUtils.WeakRefCollection = {}
---@alias CS.System.Drawing.ClientUtils.WeakRefCollection System.Drawing.ClientUtils.WeakRefCollection
CS.System.Drawing.ClientUtils.WeakRefCollection = System.Drawing.ClientUtils.WeakRefCollection

function System.Drawing.ClientUtils.WeakRefCollection:ScavengeReferences() end
---@param obj System.Object
---@return boolean
function System.Drawing.ClientUtils.WeakRefCollection:Equals(obj) end
---@return number
function System.Drawing.ClientUtils.WeakRefCollection:GetHashCode() end
---@param value System.Object
function System.Drawing.ClientUtils.WeakRefCollection:RemoveByHashCode(value) end
function System.Drawing.ClientUtils.WeakRefCollection:Clear() end
---@param value System.Object
---@return boolean
function System.Drawing.ClientUtils.WeakRefCollection:Contains(value) end
---@param index number
function System.Drawing.ClientUtils.WeakRefCollection:RemoveAt(index) end
---@param value System.Object
function System.Drawing.ClientUtils.WeakRefCollection:Remove(value) end
---@param value System.Object
---@return number
function System.Drawing.ClientUtils.WeakRefCollection:IndexOf(value) end
---@param index number
---@param value System.Object
function System.Drawing.ClientUtils.WeakRefCollection:Insert(index, value) end
---@param value System.Object
---@return number
function System.Drawing.ClientUtils.WeakRefCollection:Add(value) end
---@param array System.Array
---@param index number
function System.Drawing.ClientUtils.WeakRefCollection:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Drawing.ClientUtils.WeakRefCollection:GetEnumerator() end

---@class System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject : System.Object
System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject = {}
---@alias CS.System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject
CS.System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject = System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject

---@return number
function System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.Drawing.ClientUtils.WeakRefCollection.WeakRefObject:Equals(obj) end

---@class System.Drawing.ColorConverter : System.ComponentModel.TypeConverter
System.Drawing.ColorConverter = {}
---@alias CS.System.Drawing.ColorConverter System.Drawing.ColorConverter
CS.System.Drawing.ColorConverter = System.Drawing.ColorConverter

---@return System.Drawing.ColorConverter
function System.Drawing.ColorConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.ColorConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.ColorConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.ColorConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.ColorConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.Drawing.ColorConverter:GetStandardValues(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.ColorConverter:GetStandardValuesSupported(context) end

---@class System.Drawing.ColorConverter.ColorComparer : System.Object
System.Drawing.ColorConverter.ColorComparer = {}
---@alias CS.System.Drawing.ColorConverter.ColorComparer System.Drawing.ColorConverter.ColorComparer
CS.System.Drawing.ColorConverter.ColorComparer = System.Drawing.ColorConverter.ColorComparer

---@return System.Drawing.ColorConverter.ColorComparer
function System.Drawing.ColorConverter.ColorComparer.New() end
---@param left System.Object
---@param right System.Object
---@return number
function System.Drawing.ColorConverter.ColorComparer:Compare(left, right) end

---@class System.Drawing.FontStyle
---@field Regular System.Drawing.FontStyle
---@field Bold System.Drawing.FontStyle
---@field Italic System.Drawing.FontStyle
---@field Underline System.Drawing.FontStyle
---@field Strikeout System.Drawing.FontStyle
System.Drawing.FontStyle = {}
---@alias CS.System.Drawing.FontStyle System.Drawing.FontStyle
CS.System.Drawing.FontStyle = System.Drawing.FontStyle


---@class System.Drawing.SafeNativeMethods : System.Object
---@field ERROR_CANCELLED number
---@field E_UNEXPECTED number
---@field E_NOTIMPL number
---@field E_ABORT number
---@field E_FAIL number
---@field E_ACCESSDENIED number
---@field GMEM_MOVEABLE number
---@field GMEM_ZEROINIT number
---@field DM_IN_BUFFER number
---@field DM_OUT_BUFFER number
---@field DT_PLOTTER number
---@field DT_RASPRINTER number
---@field TECHNOLOGY number
---@field DC_PAPERS number
---@field DC_PAPERSIZE number
---@field DC_BINS number
---@field DC_DUPLEX number
---@field DC_BINNAMES number
---@field DC_ENUMRESOLUTIONS number
---@field DC_PAPERNAMES number
---@field DC_ORIENTATION number
---@field DC_COPIES number
---@field PD_ALLPAGES number
---@field PD_SELECTION number
---@field PD_PAGENUMS number
---@field PD_CURRENTPAGE number
---@field PD_RETURNDEFAULT number
---@field DI_NORMAL number
---@field IMAGE_ICON number
---@field IDI_APPLICATION number
---@field IDI_HAND number
---@field IDI_QUESTION number
---@field IDI_EXCLAMATION number
---@field IDI_ASTERISK number
---@field IDI_WINLOGO number
---@field IDI_WARNING number
---@field IDI_ERROR number
---@field IDI_INFORMATION number
---@field SRCCOPY number
---@field PLANES number
---@field BITSPIXEL number
---@field LOGPIXELSX number
---@field LOGPIXELSY number
---@field PHYSICALWIDTH number
---@field PHYSICALHEIGHT number
---@field PHYSICALOFFSETX number
---@field PHYSICALOFFSETY number
---@field VERTRES number
---@field HORZRES number
---@field DM_ORIENTATION number
---@field DM_PAPERSIZE number
---@field DM_PAPERLENGTH number
---@field DM_PAPERWIDTH number
---@field DM_COPIES number
---@field DM_DEFAULTSOURCE number
---@field DM_PRINTQUALITY number
---@field DM_COLOR number
---@field DM_DUPLEX number
---@field DM_YRESOLUTION number
---@field DM_COLLATE number
---@field DMORIENT_PORTRAIT number
---@field DMORIENT_LANDSCAPE number
---@field DMPAPER_LETTER number
---@field DMPAPER_LETTERSMALL number
---@field DMPAPER_TABLOID number
---@field DMPAPER_LEDGER number
---@field DMPAPER_LEGAL number
---@field DMPAPER_STATEMENT number
---@field DMPAPER_EXECUTIVE number
---@field DMPAPER_A3 number
---@field DMPAPER_A4 number
---@field DMPAPER_A4SMALL number
---@field DMPAPER_A5 number
---@field DMPAPER_B4 number
---@field DMPAPER_B5 number
---@field DMPAPER_FOLIO number
---@field DMPAPER_QUARTO number
---@field DMPAPER_10X14 number
---@field DMPAPER_11X17 number
---@field DMPAPER_NOTE number
---@field DMPAPER_ENV_9 number
---@field DMPAPER_ENV_10 number
---@field DMPAPER_ENV_11 number
---@field DMPAPER_ENV_12 number
---@field DMPAPER_ENV_14 number
---@field DMPAPER_CSHEET number
---@field DMPAPER_DSHEET number
---@field DMPAPER_ESHEET number
---@field DMPAPER_ENV_DL number
---@field DMPAPER_ENV_C5 number
---@field DMPAPER_ENV_C3 number
---@field DMPAPER_ENV_C4 number
---@field DMPAPER_ENV_C6 number
---@field DMPAPER_ENV_C65 number
---@field DMPAPER_ENV_B4 number
---@field DMPAPER_ENV_B5 number
---@field DMPAPER_ENV_B6 number
---@field DMPAPER_ENV_ITALY number
---@field DMPAPER_ENV_MONARCH number
---@field DMPAPER_ENV_PERSONAL number
---@field DMPAPER_FANFOLD_US number
---@field DMPAPER_FANFOLD_STD_GERMAN number
---@field DMPAPER_FANFOLD_LGL_GERMAN number
---@field DMPAPER_ISO_B4 number
---@field DMPAPER_JAPANESE_POSTCARD number
---@field DMPAPER_9X11 number
---@field DMPAPER_10X11 number
---@field DMPAPER_15X11 number
---@field DMPAPER_ENV_INVITE number
---@field DMPAPER_RESERVED_48 number
---@field DMPAPER_RESERVED_49 number
---@field DMPAPER_LETTER_EXTRA number
---@field DMPAPER_LEGAL_EXTRA number
---@field DMPAPER_TABLOID_EXTRA number
---@field DMPAPER_A4_EXTRA number
---@field DMPAPER_LETTER_TRANSVERSE number
---@field DMPAPER_A4_TRANSVERSE number
---@field DMPAPER_LETTER_EXTRA_TRANSVERSE number
---@field DMPAPER_A_PLUS number
---@field DMPAPER_B_PLUS number
---@field DMPAPER_LETTER_PLUS number
---@field DMPAPER_A4_PLUS number
---@field DMPAPER_A5_TRANSVERSE number
---@field DMPAPER_B5_TRANSVERSE number
---@field DMPAPER_A3_EXTRA number
---@field DMPAPER_A5_EXTRA number
---@field DMPAPER_B5_EXTRA number
---@field DMPAPER_A2 number
---@field DMPAPER_A3_TRANSVERSE number
---@field DMPAPER_A3_EXTRA_TRANSVERSE number
---@field DMPAPER_DBL_JAPANESE_POSTCARD number
---@field DMPAPER_A6 number
---@field DMPAPER_JENV_KAKU2 number
---@field DMPAPER_JENV_KAKU3 number
---@field DMPAPER_JENV_CHOU3 number
---@field DMPAPER_JENV_CHOU4 number
---@field DMPAPER_LETTER_ROTATED number
---@field DMPAPER_A3_ROTATED number
---@field DMPAPER_A4_ROTATED number
---@field DMPAPER_A5_ROTATED number
---@field DMPAPER_B4_JIS_ROTATED number
---@field DMPAPER_B5_JIS_ROTATED number
---@field DMPAPER_JAPANESE_POSTCARD_ROTATED number
---@field DMPAPER_DBL_JAPANESE_POSTCARD_ROTATED number
---@field DMPAPER_A6_ROTATED number
---@field DMPAPER_JENV_KAKU2_ROTATED number
---@field DMPAPER_JENV_KAKU3_ROTATED number
---@field DMPAPER_JENV_CHOU3_ROTATED number
---@field DMPAPER_JENV_CHOU4_ROTATED number
---@field DMPAPER_B6_JIS number
---@field DMPAPER_B6_JIS_ROTATED number
---@field DMPAPER_12X11 number
---@field DMPAPER_JENV_YOU4 number
---@field DMPAPER_JENV_YOU4_ROTATED number
---@field DMPAPER_P16K number
---@field DMPAPER_P32K number
---@field DMPAPER_P32KBIG number
---@field DMPAPER_PENV_1 number
---@field DMPAPER_PENV_2 number
---@field DMPAPER_PENV_3 number
---@field DMPAPER_PENV_4 number
---@field DMPAPER_PENV_5 number
---@field DMPAPER_PENV_6 number
---@field DMPAPER_PENV_7 number
---@field DMPAPER_PENV_8 number
---@field DMPAPER_PENV_9 number
---@field DMPAPER_PENV_10 number
---@field DMPAPER_P16K_ROTATED number
---@field DMPAPER_P32K_ROTATED number
---@field DMPAPER_P32KBIG_ROTATED number
---@field DMPAPER_PENV_1_ROTATED number
---@field DMPAPER_PENV_2_ROTATED number
---@field DMPAPER_PENV_3_ROTATED number
---@field DMPAPER_PENV_4_ROTATED number
---@field DMPAPER_PENV_5_ROTATED number
---@field DMPAPER_PENV_6_ROTATED number
---@field DMPAPER_PENV_7_ROTATED number
---@field DMPAPER_PENV_8_ROTATED number
---@field DMPAPER_PENV_9_ROTATED number
---@field DMPAPER_PENV_10_ROTATED number
---@field DMPAPER_LAST number
---@field DMBIN_UPPER number
---@field DMBIN_LOWER number
---@field DMBIN_MIDDLE number
---@field DMBIN_MANUAL number
---@field DMBIN_ENVELOPE number
---@field DMBIN_ENVMANUAL number
---@field DMBIN_AUTO number
---@field DMBIN_TRACTOR number
---@field DMBIN_SMALLFMT number
---@field DMBIN_LARGEFMT number
---@field DMBIN_LARGECAPACITY number
---@field DMBIN_CASSETTE number
---@field DMBIN_FORMSOURCE number
---@field DMBIN_LAST number
---@field DMBIN_USER number
---@field DMRES_DRAFT number
---@field DMRES_LOW number
---@field DMRES_MEDIUM number
---@field DMRES_HIGH number
---@field DMCOLOR_MONOCHROME number
---@field DMCOLOR_COLOR number
---@field DMDUP_SIMPLEX number
---@field DMDUP_VERTICAL number
---@field DMDUP_HORIZONTAL number
---@field DMCOLLATE_FALSE number
---@field DMCOLLATE_TRUE number
---@field PRINTER_ENUM_LOCAL number
---@field PRINTER_ENUM_CONNECTIONS number
---@field SRCPAINT number
---@field SRCAND number
---@field SRCINVERT number
---@field SRCERASE number
---@field NOTSRCCOPY number
---@field NOTSRCERASE number
---@field MERGECOPY number
---@field MERGEPAINT number
---@field PATCOPY number
---@field PATPAINT number
---@field PATINVERT number
---@field DSTINVERT number
---@field BLACKNESS number
---@field WHITENESS number
---@field CAPTUREBLT number
---@field SM_CXICON number
---@field SM_CYICON number
---@field DEFAULT_CHARSET number
---@field NOMIRRORBITMAP number
---@field QUERYESCSUPPORT number
---@field CHECKJPEGFORMAT number
---@field CHECKPNGFORMAT number
---@field ERROR_ACCESS_DENIED number
---@field ERROR_INVALID_PARAMETER number
---@field ERROR_PROC_NOT_FOUND number
System.Drawing.SafeNativeMethods = {}
---@alias CS.System.Drawing.SafeNativeMethods System.Drawing.SafeNativeMethods
CS.System.Drawing.SafeNativeMethods = System.Drawing.SafeNativeMethods

---@return System.Drawing.SafeNativeMethods
function System.Drawing.SafeNativeMethods.New() end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param width number
---@param height number
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.IntCreateCompatibleBitmap(hDC, width, height) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param width number
---@param height number
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.CreateCompatibleBitmap(hDC, width, height) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param x number
---@param y number
---@param nWidth number
---@param nHeight number
---@param hSrcDC System.Runtime.InteropServices.HandleRef
---@param xSrc number
---@param ySrc number
---@param dwRop number
---@return number
function System.Drawing.SafeNativeMethods.BitBlt(hDC, x, y, nWidth, nHeight, hSrcDC, xSrc, ySrc, dwRop) end
---@param hdc System.Runtime.InteropServices.HandleRef
---@param hbm System.Runtime.InteropServices.HandleRef
---@param arg1 number
---@param arg2 number
---@param arg3 System.IntPtr
---@param ref_bmi System.Drawing.NativeMethods.BITMAPINFO_FLAT
---@param arg5 number
---@return number,System.Drawing.NativeMethods.BITMAPINFO_FLAT
function System.Drawing.SafeNativeMethods.GetDIBits(hdc, hbm, arg1, arg2, arg3, ref_bmi, arg5) end
---@param hpal System.Runtime.InteropServices.HandleRef
---@param iStartIndex number
---@param nEntries number
---@param lppe System.Byte[]
---@return number
function System.Drawing.SafeNativeMethods.GetPaletteEntries(hpal, iStartIndex, nEntries, lppe) end
---@param hdc System.Runtime.InteropServices.HandleRef
---@param ref_bmi System.Drawing.NativeMethods.BITMAPINFO_FLAT
---@param iUsage number
---@param ref_ppvBits System.IntPtr
---@param hSection System.IntPtr
---@param dwOffset number
---@return System.IntPtr,System.Drawing.NativeMethods.BITMAPINFO_FLAT,System.IntPtr
function System.Drawing.SafeNativeMethods.IntCreateDIBSection(hdc, ref_bmi, iUsage, ref_ppvBits, hSection, dwOffset) end
---@param hdc System.Runtime.InteropServices.HandleRef
---@param ref_bmi System.Drawing.NativeMethods.BITMAPINFO_FLAT
---@param iUsage number
---@param ref_ppvBits System.IntPtr
---@param hSection System.IntPtr
---@param dwOffset number
---@return System.IntPtr,System.Drawing.NativeMethods.BITMAPINFO_FLAT,System.IntPtr
function System.Drawing.SafeNativeMethods.CreateDIBSection(hdc, ref_bmi, iUsage, ref_ppvBits, hSection, dwOffset) end
---@param handle System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.GlobalFree(handle) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param lpDocInfo System.Drawing.SafeNativeMethods.DOCINFO
---@return number
function System.Drawing.SafeNativeMethods.StartDoc(hDC, lpDocInfo) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.SafeNativeMethods.StartPage(hDC) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.SafeNativeMethods.EndPage(hDC) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.SafeNativeMethods.AbortDoc(hDC) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.SafeNativeMethods.EndDoc(hDC) end
---@overload fun(out_lppd: NullType) : boolean, NullType
---@param out_lppd NullType
---@return boolean,NullType
function System.Drawing.SafeNativeMethods.PrintDlg(out_lppd) end
---@param pDevice string
---@param pPort string
---@param fwCapabilities number
---@param pOutput System.IntPtr
---@param pDevMode System.IntPtr
---@return number
function System.Drawing.SafeNativeMethods.DeviceCapabilities(pDevice, pPort, fwCapabilities, pOutput, pDevMode) end
---@overload fun(hwnd: System.Runtime.InteropServices.HandleRef, hPrinter: System.Runtime.InteropServices.HandleRef, pDeviceName: string, pDevModeOutput: System.IntPtr, pDevModeInput: System.Runtime.InteropServices.HandleRef, fMode: number) : number
---@param hwnd System.Runtime.InteropServices.HandleRef
---@param hPrinter System.Runtime.InteropServices.HandleRef
---@param pDeviceName string
---@param pDevModeOutput System.IntPtr
---@param pDevModeInput System.IntPtr
---@param fMode number
---@return number
function System.Drawing.SafeNativeMethods.DocumentProperties(hwnd, hPrinter, pDeviceName, pDevModeOutput, pDevModeInput, fMode) end
---@param flags number
---@param name string
---@param level number
---@param pPrinterEnum System.IntPtr
---@param cbBuf number
---@param out_pcbNeeded number
---@param out_pcReturned number
---@return number,number,number
function System.Drawing.SafeNativeMethods.EnumPrinters(flags, name, level, pPrinterEnum, cbBuf, out_pcbNeeded, out_pcReturned) end
---@param handle System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.GlobalLock(handle) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param lpDevMode System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.ResetDC(hDC, lpDevMode) end
---@param handle System.Runtime.InteropServices.HandleRef
---@return boolean
function System.Drawing.SafeNativeMethods.GlobalUnlock(handle) end
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.CreateRectRgn(x1, y1, x2, y2) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param hRgn System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.SafeNativeMethods.GetClipRgn(hDC, hRgn) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param hRgn System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.SafeNativeMethods.SelectClipRgn(hDC, hRgn) end
---@param lpszFilename string
---@param fl number
---@param pdv System.IntPtr
---@return number
function System.Drawing.SafeNativeMethods.AddFontResourceEx(lpszFilename, fl, pdv) end
---@param fileName string
---@return number
function System.Drawing.SafeNativeMethods.AddFontFile(fileName) end
---@overload fun(hDC: System.Runtime.InteropServices.HandleRef, nEscape: number, cbInput: number, ref_inData: number, cbOutput: number, out_outData: number) : number, number, number
---@param hDC System.Runtime.InteropServices.HandleRef
---@param nEscape number
---@param cbInput number
---@param inData System.Byte[]
---@param cbOutput number
---@param out_outData number
---@return number,number
function System.Drawing.SafeNativeMethods.ExtEscape(hDC, nEscape, cbInput, inData, cbOutput, out_outData) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number
function System.Drawing.SafeNativeMethods.IntersectClipRect(hDC, x1, y1, x2, y2) end
---@param uFlags number
---@param dwBytes System.UIntPtr
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.IntGlobalAlloc(uFlags, dwBytes) end
---@param uFlags number
---@param dwBytes number
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.GlobalAlloc(uFlags, dwBytes) end
---@param hObject System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.SafeNativeMethods.DeleteObject(hObject) end
---@param hdc System.Runtime.InteropServices.HandleRef
---@param obj System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.SelectObject(hdc, obj) end
---@param pbIconBits System.Byte*
---@param cbIconBits number
---@param fIcon boolean
---@param dwVersion number
---@param csDesired number
---@param cyDesired number
---@param flags number
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.CreateIconFromResourceEx(pbIconBits, cbIconBits, fIcon, dwVersion, csDesired, cyDesired, flags) end
---@param hInst System.Runtime.InteropServices.HandleRef
---@param iconPath System.Text.StringBuilder
---@param ref_index number
---@return System.IntPtr,number
function System.Drawing.SafeNativeMethods.IntExtractAssociatedIcon(hInst, iconPath, ref_index) end
---@param hInst System.Runtime.InteropServices.HandleRef
---@param iconPath System.Text.StringBuilder
---@param ref_index number
---@return System.IntPtr,number
function System.Drawing.SafeNativeMethods.ExtractAssociatedIcon(hInst, iconPath, ref_index) end
---@param hInst System.Runtime.InteropServices.HandleRef
---@param iconId number
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.LoadIcon(hInst, iconId) end
---@param hIcon System.Runtime.InteropServices.HandleRef
---@return boolean
function System.Drawing.SafeNativeMethods.DestroyIcon(hIcon) end
---@param hImage System.Runtime.InteropServices.HandleRef
---@param uType number
---@param cxDesired number
---@param cyDesired number
---@param fuFlags number
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.CopyImage(hImage, uType, cxDesired, cyDesired, fuFlags) end
---@overload fun(hObject: System.Runtime.InteropServices.HandleRef, nSize: number, out_bm: NullType) : number, NullType
---@overload fun(hObject: System.Runtime.InteropServices.HandleRef, nSize: number, out_lf: NullType) : number, NullType
---@param hObject System.Runtime.InteropServices.HandleRef
---@param lp System.Drawing.SafeNativeMethods.LOGFONT
---@return number
function System.Drawing.SafeNativeMethods.GetObject(hObject, lp) end
---@param hIcon System.Runtime.InteropServices.HandleRef
---@param out_info NullType
---@return boolean,NullType
function System.Drawing.SafeNativeMethods.GetIconInfo(hIcon, out_info) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param x number
---@param y number
---@param hIcon System.Runtime.InteropServices.HandleRef
---@param width number
---@param height number
---@param iStepIfAniCursor number
---@param hBrushFlickerFree System.Runtime.InteropServices.HandleRef
---@param diFlags number
---@return boolean
function System.Drawing.SafeNativeMethods.DrawIconEx(hDC, x, y, hIcon, width, height, iStepIfAniCursor, hBrushFlickerFree, diFlags) end
---@param pictdesc System.Drawing.SafeNativeMethods.PICTDESC
---@param ref_refiid System.Guid
---@param fOwn boolean
---@return System.Drawing.SafeNativeMethods.IPicture,System.Guid
function System.Drawing.SafeNativeMethods.OleCreatePictureIndirect(pictdesc, ref_refiid, fOwn) end

---@class System.Drawing.SafeNativeMethods.Gdip : System.Drawing.GDIPlus
System.Drawing.SafeNativeMethods.Gdip = {}
---@alias CS.System.Drawing.SafeNativeMethods.Gdip System.Drawing.SafeNativeMethods.Gdip
CS.System.Drawing.SafeNativeMethods.Gdip = System.Drawing.SafeNativeMethods.Gdip

---@return System.Drawing.SafeNativeMethods.Gdip
function System.Drawing.SafeNativeMethods.Gdip.New() end

---@class System.Drawing.SafeNativeMethods.ENHMETAHEADER : System.Object
---@field iType number
---@field nSize number
---@field rclBounds_left number
---@field rclBounds_top number
---@field rclBounds_right number
---@field rclBounds_bottom number
---@field rclFrame_left number
---@field rclFrame_top number
---@field rclFrame_right number
---@field rclFrame_bottom number
---@field dSignature number
---@field nVersion number
---@field nBytes number
---@field nRecords number
---@field nHandles number
---@field sReserved number
---@field nDescription number
---@field offDescription number
---@field nPalEntries number
---@field szlDevice_cx number
---@field szlDevice_cy number
---@field szlMillimeters_cx number
---@field szlMillimeters_cy number
---@field cbPixelFormat number
---@field offPixelFormat number
---@field bOpenGL number
System.Drawing.SafeNativeMethods.ENHMETAHEADER = {}
---@alias CS.System.Drawing.SafeNativeMethods.ENHMETAHEADER System.Drawing.SafeNativeMethods.ENHMETAHEADER
CS.System.Drawing.SafeNativeMethods.ENHMETAHEADER = System.Drawing.SafeNativeMethods.ENHMETAHEADER

---@return System.Drawing.SafeNativeMethods.ENHMETAHEADER
function System.Drawing.SafeNativeMethods.ENHMETAHEADER.New() end

---@class System.Drawing.SafeNativeMethods.DOCINFO : System.Object
---@field cbSize number
---@field lpszDocName string
---@field lpszOutput string
---@field lpszDatatype string
---@field fwType number
System.Drawing.SafeNativeMethods.DOCINFO = {}
---@alias CS.System.Drawing.SafeNativeMethods.DOCINFO System.Drawing.SafeNativeMethods.DOCINFO
CS.System.Drawing.SafeNativeMethods.DOCINFO = System.Drawing.SafeNativeMethods.DOCINFO

---@return System.Drawing.SafeNativeMethods.DOCINFO
function System.Drawing.SafeNativeMethods.DOCINFO.New() end

---@class System.Drawing.SafeNativeMethods.PRINTDLG : System.Object
---@field lStructSize number
---@field hwndOwner System.IntPtr
---@field hDevMode System.IntPtr
---@field hDevNames System.IntPtr
---@field hDC System.IntPtr
---@field Flags number
---@field nFromPage number
---@field nToPage number
---@field nMinPage number
---@field nMaxPage number
---@field nCopies number
---@field hInstance System.IntPtr
---@field lCustData System.IntPtr
---@field lpfnPrintHook System.IntPtr
---@field lpfnSetupHook System.IntPtr
---@field lpPrintTemplateName string
---@field lpSetupTemplateName string
---@field hPrintTemplate System.IntPtr
---@field hSetupTemplate System.IntPtr
System.Drawing.SafeNativeMethods.PRINTDLG = {}
---@alias CS.System.Drawing.SafeNativeMethods.PRINTDLG System.Drawing.SafeNativeMethods.PRINTDLG
CS.System.Drawing.SafeNativeMethods.PRINTDLG = System.Drawing.SafeNativeMethods.PRINTDLG

---@return System.Drawing.SafeNativeMethods.PRINTDLG
function System.Drawing.SafeNativeMethods.PRINTDLG.New() end

---@class System.Drawing.SafeNativeMethods.PRINTDLGX86 : System.Object
---@field lStructSize number
---@field hwndOwner System.IntPtr
---@field hDevMode System.IntPtr
---@field hDevNames System.IntPtr
---@field hDC System.IntPtr
---@field Flags number
---@field nFromPage number
---@field nToPage number
---@field nMinPage number
---@field nMaxPage number
---@field nCopies number
---@field hInstance System.IntPtr
---@field lCustData System.IntPtr
---@field lpfnPrintHook System.IntPtr
---@field lpfnSetupHook System.IntPtr
---@field lpPrintTemplateName string
---@field lpSetupTemplateName string
---@field hPrintTemplate System.IntPtr
---@field hSetupTemplate System.IntPtr
System.Drawing.SafeNativeMethods.PRINTDLGX86 = {}
---@alias CS.System.Drawing.SafeNativeMethods.PRINTDLGX86 System.Drawing.SafeNativeMethods.PRINTDLGX86
CS.System.Drawing.SafeNativeMethods.PRINTDLGX86 = System.Drawing.SafeNativeMethods.PRINTDLGX86

---@return System.Drawing.SafeNativeMethods.PRINTDLGX86
function System.Drawing.SafeNativeMethods.PRINTDLGX86.New() end

---@class System.Drawing.SafeNativeMethods.ICONINFO : System.Object
---@field fIcon number
---@field xHotspot number
---@field yHotspot number
---@field hbmMask System.IntPtr
---@field hbmColor System.IntPtr
System.Drawing.SafeNativeMethods.ICONINFO = {}
---@alias CS.System.Drawing.SafeNativeMethods.ICONINFO System.Drawing.SafeNativeMethods.ICONINFO
CS.System.Drawing.SafeNativeMethods.ICONINFO = System.Drawing.SafeNativeMethods.ICONINFO

---@return System.Drawing.SafeNativeMethods.ICONINFO
function System.Drawing.SafeNativeMethods.ICONINFO.New() end

---@class System.Drawing.SafeNativeMethods.BITMAP : System.Object
---@field bmType number
---@field bmWidth number
---@field bmHeight number
---@field bmWidthBytes number
---@field bmPlanes number
---@field bmBitsPixel number
---@field bmBits System.IntPtr
System.Drawing.SafeNativeMethods.BITMAP = {}
---@alias CS.System.Drawing.SafeNativeMethods.BITMAP System.Drawing.SafeNativeMethods.BITMAP
CS.System.Drawing.SafeNativeMethods.BITMAP = System.Drawing.SafeNativeMethods.BITMAP

---@return System.Drawing.SafeNativeMethods.BITMAP
function System.Drawing.SafeNativeMethods.BITMAP.New() end

---@class System.Drawing.SafeNativeMethods.BITMAPINFOHEADER : System.Object
---@field biSize number
---@field biWidth number
---@field biHeight number
---@field biPlanes number
---@field biBitCount number
---@field biCompression number
---@field biSizeImage number
---@field biXPelsPerMeter number
---@field biYPelsPerMeter number
---@field biClrUsed number
---@field biClrImportant number
System.Drawing.SafeNativeMethods.BITMAPINFOHEADER = {}
---@alias CS.System.Drawing.SafeNativeMethods.BITMAPINFOHEADER System.Drawing.SafeNativeMethods.BITMAPINFOHEADER
CS.System.Drawing.SafeNativeMethods.BITMAPINFOHEADER = System.Drawing.SafeNativeMethods.BITMAPINFOHEADER

---@return System.Drawing.SafeNativeMethods.BITMAPINFOHEADER
function System.Drawing.SafeNativeMethods.BITMAPINFOHEADER.New() end

---@class System.Drawing.SafeNativeMethods.LOGFONT : System.Object
---@field lfHeight number
---@field lfWidth number
---@field lfEscapement number
---@field lfOrientation number
---@field lfWeight number
---@field lfItalic number
---@field lfUnderline number
---@field lfStrikeOut number
---@field lfCharSet number
---@field lfOutPrecision number
---@field lfClipPrecision number
---@field lfQuality number
---@field lfPitchAndFamily number
---@field lfFaceName string
System.Drawing.SafeNativeMethods.LOGFONT = {}
---@alias CS.System.Drawing.SafeNativeMethods.LOGFONT System.Drawing.SafeNativeMethods.LOGFONT
CS.System.Drawing.SafeNativeMethods.LOGFONT = System.Drawing.SafeNativeMethods.LOGFONT

---@return System.Drawing.SafeNativeMethods.LOGFONT
function System.Drawing.SafeNativeMethods.LOGFONT.New() end
---@return string
function System.Drawing.SafeNativeMethods.LOGFONT:ToString() end

---@class System.Drawing.SafeNativeMethods.ICONDIR : System.ValueType
---@field idReserved number
---@field idType number
---@field idCount number
---@field idEntries System.Drawing.SafeNativeMethods.ICONDIRENTRY
System.Drawing.SafeNativeMethods.ICONDIR = {}
---@alias CS.System.Drawing.SafeNativeMethods.ICONDIR System.Drawing.SafeNativeMethods.ICONDIR
CS.System.Drawing.SafeNativeMethods.ICONDIR = System.Drawing.SafeNativeMethods.ICONDIR


---@class System.Drawing.SafeNativeMethods.ICONDIRENTRY : System.ValueType
---@field bWidth number
---@field bHeight number
---@field bColorCount number
---@field bReserved number
---@field wPlanes number
---@field wBitCount number
---@field dwBytesInRes number
---@field dwImageOffset number
System.Drawing.SafeNativeMethods.ICONDIRENTRY = {}
---@alias CS.System.Drawing.SafeNativeMethods.ICONDIRENTRY System.Drawing.SafeNativeMethods.ICONDIRENTRY
CS.System.Drawing.SafeNativeMethods.ICONDIRENTRY = System.Drawing.SafeNativeMethods.ICONDIRENTRY


---@class System.Drawing.SafeNativeMethods.Ole : System.Object
---@field PICTYPE_ICON number
System.Drawing.SafeNativeMethods.Ole = {}
---@alias CS.System.Drawing.SafeNativeMethods.Ole System.Drawing.SafeNativeMethods.Ole
CS.System.Drawing.SafeNativeMethods.Ole = System.Drawing.SafeNativeMethods.Ole

---@return System.Drawing.SafeNativeMethods.Ole
function System.Drawing.SafeNativeMethods.Ole.New() end

---@class System.Drawing.SafeNativeMethods.PICTDESC : System.Object
---@field picType number
System.Drawing.SafeNativeMethods.PICTDESC = {}
---@alias CS.System.Drawing.SafeNativeMethods.PICTDESC System.Drawing.SafeNativeMethods.PICTDESC
CS.System.Drawing.SafeNativeMethods.PICTDESC = System.Drawing.SafeNativeMethods.PICTDESC

---@return System.Drawing.SafeNativeMethods.PICTDESC
function System.Drawing.SafeNativeMethods.PICTDESC.New() end
---@param hicon System.IntPtr
---@return System.Drawing.SafeNativeMethods.PICTDESC
function System.Drawing.SafeNativeMethods.PICTDESC.CreateIconPICTDESC(hicon) end

---@class System.Drawing.SafeNativeMethods.DEVMODE : System.Object
---@field dmDeviceName string
---@field dmSpecVersion number
---@field dmDriverVersion number
---@field dmSize number
---@field dmDriverExtra number
---@field dmFields number
---@field dmOrientation number
---@field dmPaperSize number
---@field dmPaperLength number
---@field dmPaperWidth number
---@field dmScale number
---@field dmCopies number
---@field dmDefaultSource number
---@field dmPrintQuality number
---@field dmColor number
---@field dmDuplex number
---@field dmYResolution number
---@field dmTTOption number
---@field dmCollate number
---@field dmFormName string
---@field dmLogPixels number
---@field dmBitsPerPel number
---@field dmPelsWidth number
---@field dmPelsHeight number
---@field dmDisplayFlags number
---@field dmDisplayFrequency number
---@field dmICMMethod number
---@field dmICMIntent number
---@field dmMediaType number
---@field dmDitherType number
---@field dmICCManufacturer number
---@field dmICCModel number
---@field dmPanningWidth number
---@field dmPanningHeight number
System.Drawing.SafeNativeMethods.DEVMODE = {}
---@alias CS.System.Drawing.SafeNativeMethods.DEVMODE System.Drawing.SafeNativeMethods.DEVMODE
CS.System.Drawing.SafeNativeMethods.DEVMODE = System.Drawing.SafeNativeMethods.DEVMODE

---@return System.Drawing.SafeNativeMethods.DEVMODE
function System.Drawing.SafeNativeMethods.DEVMODE.New() end
---@return string
function System.Drawing.SafeNativeMethods.DEVMODE:ToString() end

---@class System.Drawing.SafeNativeMethods.CommonHandles : System.Object
---@field GDI number
---@field HDC number
---@field Icon number
---@field Kernel number
System.Drawing.SafeNativeMethods.CommonHandles = {}
---@alias CS.System.Drawing.SafeNativeMethods.CommonHandles System.Drawing.SafeNativeMethods.CommonHandles
CS.System.Drawing.SafeNativeMethods.CommonHandles = System.Drawing.SafeNativeMethods.CommonHandles

---@return System.Drawing.SafeNativeMethods.CommonHandles
function System.Drawing.SafeNativeMethods.CommonHandles.New() end

---@class System.Drawing.SafeNativeMethods.StreamConsts : System.Object
---@field STREAM_SEEK_SET number
---@field STREAM_SEEK_CUR number
---@field STREAM_SEEK_END number
System.Drawing.SafeNativeMethods.StreamConsts = {}
---@alias CS.System.Drawing.SafeNativeMethods.StreamConsts System.Drawing.SafeNativeMethods.StreamConsts
CS.System.Drawing.SafeNativeMethods.StreamConsts = System.Drawing.SafeNativeMethods.StreamConsts

---@return System.Drawing.SafeNativeMethods.StreamConsts
function System.Drawing.SafeNativeMethods.StreamConsts.New() end

---@class System.Drawing.SafeNativeMethods.IPicture
System.Drawing.SafeNativeMethods.IPicture = {}
---@alias CS.System.Drawing.SafeNativeMethods.IPicture System.Drawing.SafeNativeMethods.IPicture
CS.System.Drawing.SafeNativeMethods.IPicture = System.Drawing.SafeNativeMethods.IPicture

---@return System.IntPtr
function System.Drawing.SafeNativeMethods.IPicture:GetHandle() end
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.IPicture:GetHPal() end
---@return number
function System.Drawing.SafeNativeMethods.IPicture:GetPictureType() end
---@return number
function System.Drawing.SafeNativeMethods.IPicture:GetWidth() end
---@return number
function System.Drawing.SafeNativeMethods.IPicture:GetHeight() end
function System.Drawing.SafeNativeMethods.IPicture:Render() end
---@param phpal System.IntPtr
function System.Drawing.SafeNativeMethods.IPicture:SetHPal(phpal) end
---@return System.IntPtr
function System.Drawing.SafeNativeMethods.IPicture:GetCurDC() end
---@param hdcIn System.IntPtr
---@param out_phdcOut number
---@param out_phbmpOut number
---@return ,number,number
function System.Drawing.SafeNativeMethods.IPicture:SelectPicture(hdcIn, out_phdcOut, out_phbmpOut) end
---@return boolean
function System.Drawing.SafeNativeMethods.IPicture:GetKeepOriginalFormat() end
---@param pfkeep boolean
function System.Drawing.SafeNativeMethods.IPicture:SetKeepOriginalFormat(pfkeep) end
function System.Drawing.SafeNativeMethods.IPicture:PictureChanged() end
---@param pstm System.Drawing.UnsafeNativeMethods.IStream
---@param fSaveMemCopy number
---@param out_pcbSize number
---@return number,number
function System.Drawing.SafeNativeMethods.IPicture:SaveAsFile(pstm, fSaveMemCopy, out_pcbSize) end
---@return number
function System.Drawing.SafeNativeMethods.IPicture:GetAttributes() end
---@param hdc System.IntPtr
function System.Drawing.SafeNativeMethods.IPicture:SetHdc(hdc) end

---@class System.Drawing.IDeviceContext
System.Drawing.IDeviceContext = {}
---@alias CS.System.Drawing.IDeviceContext System.Drawing.IDeviceContext
CS.System.Drawing.IDeviceContext = System.Drawing.IDeviceContext

---@return System.IntPtr
function System.Drawing.IDeviceContext:GetHdc() end
function System.Drawing.IDeviceContext:ReleaseHdc() end

---@class System.Drawing.NativeMethods : System.Object
---@field MAX_PATH number
System.Drawing.NativeMethods = {}
---@alias CS.System.Drawing.NativeMethods System.Drawing.NativeMethods
CS.System.Drawing.NativeMethods = System.Drawing.NativeMethods

---@return System.Drawing.NativeMethods
function System.Drawing.NativeMethods.New() end

---@class System.Drawing.NativeMethods.BITMAPINFO_FLAT : System.ValueType
---@field bmiHeader_biSize number
---@field bmiHeader_biWidth number
---@field bmiHeader_biHeight number
---@field bmiHeader_biPlanes number
---@field bmiHeader_biBitCount number
---@field bmiHeader_biCompression number
---@field bmiHeader_biSizeImage number
---@field bmiHeader_biXPelsPerMeter number
---@field bmiHeader_biYPelsPerMeter number
---@field bmiHeader_biClrUsed number
---@field bmiHeader_biClrImportant number
---@field bmiColors System.Byte[]
System.Drawing.NativeMethods.BITMAPINFO_FLAT = {}
---@alias CS.System.Drawing.NativeMethods.BITMAPINFO_FLAT System.Drawing.NativeMethods.BITMAPINFO_FLAT
CS.System.Drawing.NativeMethods.BITMAPINFO_FLAT = System.Drawing.NativeMethods.BITMAPINFO_FLAT


---@class System.Drawing.NativeMethods.BITMAPINFOHEADER : System.Object
---@field biSize number
---@field biWidth number
---@field biHeight number
---@field biPlanes number
---@field biBitCount number
---@field biCompression number
---@field biSizeImage number
---@field biXPelsPerMeter number
---@field biYPelsPerMeter number
---@field biClrUsed number
---@field biClrImportant number
System.Drawing.NativeMethods.BITMAPINFOHEADER = {}
---@alias CS.System.Drawing.NativeMethods.BITMAPINFOHEADER System.Drawing.NativeMethods.BITMAPINFOHEADER
CS.System.Drawing.NativeMethods.BITMAPINFOHEADER = System.Drawing.NativeMethods.BITMAPINFOHEADER

---@return System.Drawing.NativeMethods.BITMAPINFOHEADER
function System.Drawing.NativeMethods.BITMAPINFOHEADER.New() end

---@class System.Drawing.NativeMethods.PALETTEENTRY : System.ValueType
---@field peRed number
---@field peGreen number
---@field peBlue number
---@field peFlags number
System.Drawing.NativeMethods.PALETTEENTRY = {}
---@alias CS.System.Drawing.NativeMethods.PALETTEENTRY System.Drawing.NativeMethods.PALETTEENTRY
CS.System.Drawing.NativeMethods.PALETTEENTRY = System.Drawing.NativeMethods.PALETTEENTRY


---@class System.Drawing.NativeMethods.RGBQUAD : System.ValueType
---@field rgbBlue number
---@field rgbGreen number
---@field rgbRed number
---@field rgbReserved number
System.Drawing.NativeMethods.RGBQUAD = {}
---@alias CS.System.Drawing.NativeMethods.RGBQUAD System.Drawing.NativeMethods.RGBQUAD
CS.System.Drawing.NativeMethods.RGBQUAD = System.Drawing.NativeMethods.RGBQUAD


---@class System.Drawing.NativeMethods.NONCLIENTMETRICS : System.Object
---@field cbSize number
---@field iBorderWidth number
---@field iScrollWidth number
---@field iScrollHeight number
---@field iCaptionWidth number
---@field iCaptionHeight number
---@field lfCaptionFont System.Drawing.SafeNativeMethods.LOGFONT
---@field iSmCaptionWidth number
---@field iSmCaptionHeight number
---@field lfSmCaptionFont System.Drawing.SafeNativeMethods.LOGFONT
---@field iMenuWidth number
---@field iMenuHeight number
---@field lfMenuFont System.Drawing.SafeNativeMethods.LOGFONT
---@field lfStatusFont System.Drawing.SafeNativeMethods.LOGFONT
---@field lfMessageFont System.Drawing.SafeNativeMethods.LOGFONT
System.Drawing.NativeMethods.NONCLIENTMETRICS = {}
---@alias CS.System.Drawing.NativeMethods.NONCLIENTMETRICS System.Drawing.NativeMethods.NONCLIENTMETRICS
CS.System.Drawing.NativeMethods.NONCLIENTMETRICS = System.Drawing.NativeMethods.NONCLIENTMETRICS

---@return System.Drawing.NativeMethods.NONCLIENTMETRICS
function System.Drawing.NativeMethods.NONCLIENTMETRICS.New() end

---@class System.Drawing.PointConverter : System.ComponentModel.TypeConverter
System.Drawing.PointConverter = {}
---@alias CS.System.Drawing.PointConverter System.Drawing.PointConverter
CS.System.Drawing.PointConverter = System.Drawing.PointConverter

---@return System.Drawing.PointConverter
function System.Drawing.PointConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.PointConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.PointConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.PointConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.PointConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.Drawing.PointConverter:CreateInstance(context, propertyValues) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.PointConverter:GetCreateInstanceSupported(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Drawing.PointConverter:GetProperties(context, value, attributes) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.PointConverter:GetPropertiesSupported(context) end

---@class System.Drawing.RotateFlipType
---@field RotateNoneFlipNone System.Drawing.RotateFlipType
---@field Rotate90FlipNone System.Drawing.RotateFlipType
---@field Rotate180FlipNone System.Drawing.RotateFlipType
---@field Rotate270FlipNone System.Drawing.RotateFlipType
---@field RotateNoneFlipX System.Drawing.RotateFlipType
---@field Rotate90FlipX System.Drawing.RotateFlipType
---@field Rotate180FlipX System.Drawing.RotateFlipType
---@field Rotate270FlipX System.Drawing.RotateFlipType
---@field RotateNoneFlipY System.Drawing.RotateFlipType
---@field Rotate90FlipY System.Drawing.RotateFlipType
---@field Rotate180FlipY System.Drawing.RotateFlipType
---@field Rotate270FlipY System.Drawing.RotateFlipType
---@field RotateNoneFlipXY System.Drawing.RotateFlipType
---@field Rotate90FlipXY System.Drawing.RotateFlipType
---@field Rotate180FlipXY System.Drawing.RotateFlipType
---@field Rotate270FlipXY System.Drawing.RotateFlipType
System.Drawing.RotateFlipType = {}
---@alias CS.System.Drawing.RotateFlipType System.Drawing.RotateFlipType
CS.System.Drawing.RotateFlipType = System.Drawing.RotateFlipType


---@class System.Drawing.SolidBrush : System.Drawing.Brush
---@field Color System.Drawing.Color
System.Drawing.SolidBrush = {}
---@alias CS.System.Drawing.SolidBrush System.Drawing.SolidBrush
CS.System.Drawing.SolidBrush = System.Drawing.SolidBrush

---@param color System.Drawing.Color
---@return System.Drawing.SolidBrush
function System.Drawing.SolidBrush.New(color) end
---@return System.Object
function System.Drawing.SolidBrush:Clone() end

---@class System.Drawing.StringAlignment
---@field Near System.Drawing.StringAlignment
---@field Center System.Drawing.StringAlignment
---@field Far System.Drawing.StringAlignment
System.Drawing.StringAlignment = {}
---@alias CS.System.Drawing.StringAlignment System.Drawing.StringAlignment
CS.System.Drawing.StringAlignment = System.Drawing.StringAlignment


---@class System.Drawing.StringDigitSubstitute
---@field User System.Drawing.StringDigitSubstitute
---@field None System.Drawing.StringDigitSubstitute
---@field National System.Drawing.StringDigitSubstitute
---@field Traditional System.Drawing.StringDigitSubstitute
System.Drawing.StringDigitSubstitute = {}
---@alias CS.System.Drawing.StringDigitSubstitute System.Drawing.StringDigitSubstitute
CS.System.Drawing.StringDigitSubstitute = System.Drawing.StringDigitSubstitute


---@class System.Drawing.StringFormatFlags
---@field DirectionRightToLeft System.Drawing.StringFormatFlags
---@field DirectionVertical System.Drawing.StringFormatFlags
---@field FitBlackBox System.Drawing.StringFormatFlags
---@field DisplayFormatControl System.Drawing.StringFormatFlags
---@field NoFontFallback System.Drawing.StringFormatFlags
---@field MeasureTrailingSpaces System.Drawing.StringFormatFlags
---@field NoWrap System.Drawing.StringFormatFlags
---@field LineLimit System.Drawing.StringFormatFlags
---@field NoClip System.Drawing.StringFormatFlags
System.Drawing.StringFormatFlags = {}
---@alias CS.System.Drawing.StringFormatFlags System.Drawing.StringFormatFlags
CS.System.Drawing.StringFormatFlags = System.Drawing.StringFormatFlags


---@class System.Drawing.StringTrimming
---@field None System.Drawing.StringTrimming
---@field Character System.Drawing.StringTrimming
---@field Word System.Drawing.StringTrimming
---@field EllipsisCharacter System.Drawing.StringTrimming
---@field EllipsisWord System.Drawing.StringTrimming
---@field EllipsisPath System.Drawing.StringTrimming
System.Drawing.StringTrimming = {}
---@alias CS.System.Drawing.StringTrimming System.Drawing.StringTrimming
CS.System.Drawing.StringTrimming = System.Drawing.StringTrimming


---@class System.Drawing.StringUnit
---@field World System.Drawing.StringUnit
---@field Display System.Drawing.StringUnit
---@field Pixel System.Drawing.StringUnit
---@field Point System.Drawing.StringUnit
---@field Inch System.Drawing.StringUnit
---@field Document System.Drawing.StringUnit
---@field Millimeter System.Drawing.StringUnit
---@field Em System.Drawing.StringUnit
System.Drawing.StringUnit = {}
---@alias CS.System.Drawing.StringUnit System.Drawing.StringUnit
CS.System.Drawing.StringUnit = System.Drawing.StringUnit


---@class System.Drawing.SystemBrushes : System.Object
---@field ActiveBorder System.Drawing.Brush
---@field ActiveCaption System.Drawing.Brush
---@field ActiveCaptionText System.Drawing.Brush
---@field AppWorkspace System.Drawing.Brush
---@field ButtonFace System.Drawing.Brush
---@field ButtonHighlight System.Drawing.Brush
---@field ButtonShadow System.Drawing.Brush
---@field Control System.Drawing.Brush
---@field ControlLightLight System.Drawing.Brush
---@field ControlLight System.Drawing.Brush
---@field ControlDark System.Drawing.Brush
---@field ControlDarkDark System.Drawing.Brush
---@field ControlText System.Drawing.Brush
---@field Desktop System.Drawing.Brush
---@field GradientActiveCaption System.Drawing.Brush
---@field GradientInactiveCaption System.Drawing.Brush
---@field GrayText System.Drawing.Brush
---@field Highlight System.Drawing.Brush
---@field HighlightText System.Drawing.Brush
---@field HotTrack System.Drawing.Brush
---@field InactiveCaption System.Drawing.Brush
---@field InactiveBorder System.Drawing.Brush
---@field InactiveCaptionText System.Drawing.Brush
---@field Info System.Drawing.Brush
---@field InfoText System.Drawing.Brush
---@field Menu System.Drawing.Brush
---@field MenuBar System.Drawing.Brush
---@field MenuHighlight System.Drawing.Brush
---@field MenuText System.Drawing.Brush
---@field ScrollBar System.Drawing.Brush
---@field Window System.Drawing.Brush
---@field WindowFrame System.Drawing.Brush
---@field WindowText System.Drawing.Brush
System.Drawing.SystemBrushes = {}
---@alias CS.System.Drawing.SystemBrushes System.Drawing.SystemBrushes
CS.System.Drawing.SystemBrushes = System.Drawing.SystemBrushes

---@param c System.Drawing.Color
---@return System.Drawing.Brush
function System.Drawing.SystemBrushes.FromSystemColor(c) end

---@class System.Drawing.SystemColors : System.Object
---@field ActiveBorder System.Drawing.Color
---@field ActiveCaption System.Drawing.Color
---@field ActiveCaptionText System.Drawing.Color
---@field AppWorkspace System.Drawing.Color
---@field ButtonFace System.Drawing.Color
---@field ButtonHighlight System.Drawing.Color
---@field ButtonShadow System.Drawing.Color
---@field Control System.Drawing.Color
---@field ControlDark System.Drawing.Color
---@field ControlDarkDark System.Drawing.Color
---@field ControlLight System.Drawing.Color
---@field ControlLightLight System.Drawing.Color
---@field ControlText System.Drawing.Color
---@field Desktop System.Drawing.Color
---@field GradientActiveCaption System.Drawing.Color
---@field GradientInactiveCaption System.Drawing.Color
---@field GrayText System.Drawing.Color
---@field Highlight System.Drawing.Color
---@field HighlightText System.Drawing.Color
---@field HotTrack System.Drawing.Color
---@field InactiveBorder System.Drawing.Color
---@field InactiveCaption System.Drawing.Color
---@field InactiveCaptionText System.Drawing.Color
---@field Info System.Drawing.Color
---@field InfoText System.Drawing.Color
---@field Menu System.Drawing.Color
---@field MenuBar System.Drawing.Color
---@field MenuHighlight System.Drawing.Color
---@field MenuText System.Drawing.Color
---@field ScrollBar System.Drawing.Color
---@field Window System.Drawing.Color
---@field WindowFrame System.Drawing.Color
---@field WindowText System.Drawing.Color
System.Drawing.SystemColors = {}
---@alias CS.System.Drawing.SystemColors System.Drawing.SystemColors
CS.System.Drawing.SystemColors = System.Drawing.SystemColors


---@class System.Drawing.TextureBrush : System.Drawing.Brush
---@field Transform System.Drawing.Drawing2D.Matrix
---@field WrapMode System.Drawing.Drawing2D.WrapMode
---@field Image System.Drawing.Image
System.Drawing.TextureBrush = {}
---@alias CS.System.Drawing.TextureBrush System.Drawing.TextureBrush
CS.System.Drawing.TextureBrush = System.Drawing.TextureBrush

---@overload fun(bitmap: System.Drawing.Image) : System.Drawing.TextureBrush
---@overload fun(image: System.Drawing.Image, wrapMode: System.Drawing.Drawing2D.WrapMode) : System.Drawing.TextureBrush
---@overload fun(image: System.Drawing.Image, wrapMode: System.Drawing.Drawing2D.WrapMode, dstRect: System.Drawing.RectangleF) : System.Drawing.TextureBrush
---@overload fun(image: System.Drawing.Image, wrapMode: System.Drawing.Drawing2D.WrapMode, dstRect: System.Drawing.Rectangle) : System.Drawing.TextureBrush
---@overload fun(image: System.Drawing.Image, dstRect: System.Drawing.RectangleF) : System.Drawing.TextureBrush
---@overload fun(image: System.Drawing.Image, dstRect: System.Drawing.RectangleF, imageAttr: System.Drawing.Imaging.ImageAttributes) : System.Drawing.TextureBrush
---@overload fun(image: System.Drawing.Image, dstRect: System.Drawing.Rectangle) : System.Drawing.TextureBrush
---@param image System.Drawing.Image
---@param dstRect System.Drawing.Rectangle
---@param imageAttr System.Drawing.Imaging.ImageAttributes
---@return System.Drawing.TextureBrush
function System.Drawing.TextureBrush.New(image, dstRect, imageAttr) end
---@return System.Object
function System.Drawing.TextureBrush:Clone() end
function System.Drawing.TextureBrush:ResetTransform() end
---@overload fun(self: System.Drawing.TextureBrush, matrix: System.Drawing.Drawing2D.Matrix)
---@param matrix System.Drawing.Drawing2D.Matrix
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.TextureBrush:MultiplyTransform(matrix, order) end
---@overload fun(self: System.Drawing.TextureBrush, dx: number, dy: number)
---@param dx number
---@param dy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.TextureBrush:TranslateTransform(dx, dy, order) end
---@overload fun(self: System.Drawing.TextureBrush, sx: number, sy: number)
---@param sx number
---@param sy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.TextureBrush:ScaleTransform(sx, sy, order) end
---@overload fun(self: System.Drawing.TextureBrush, angle: number)
---@param angle number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.TextureBrush:RotateTransform(angle, order) end

---@class System.Drawing.UnsafeNativeMethods : System.Object
System.Drawing.UnsafeNativeMethods = {}
---@alias CS.System.Drawing.UnsafeNativeMethods System.Drawing.UnsafeNativeMethods
CS.System.Drawing.UnsafeNativeMethods = System.Drawing.UnsafeNativeMethods

---@return System.Drawing.UnsafeNativeMethods
function System.Drawing.UnsafeNativeMethods.New() end
---@param destData System.Runtime.InteropServices.HandleRef
---@param srcData System.Runtime.InteropServices.HandleRef
---@param size number
function System.Drawing.UnsafeNativeMethods.CopyMemory(destData, srcData, size) end
---@param hWnd System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Drawing.UnsafeNativeMethods.GetDC(hWnd) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@return boolean
function System.Drawing.UnsafeNativeMethods.DeleteDC(hDC) end
---@param hWnd System.Runtime.InteropServices.HandleRef
---@param hDC System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.UnsafeNativeMethods.ReleaseDC(hWnd, hDC) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@return System.IntPtr
function System.Drawing.UnsafeNativeMethods.CreateCompatibleDC(hDC) end
---@param nIndex number
---@return System.IntPtr
function System.Drawing.UnsafeNativeMethods.GetStockObject(nIndex) end
---@return number
function System.Drawing.UnsafeNativeMethods.GetSystemDefaultLCID() end
---@param nIndex number
---@return number
function System.Drawing.UnsafeNativeMethods.GetSystemMetrics(nIndex) end
---@overload fun(uiAction: number, uiParam: number, out_pvParam: NullType, fWinIni: number) : boolean, NullType
---@param uiAction number
---@param uiParam number
---@param out_pvParam NullType
---@param fWinIni number
---@return boolean,NullType
function System.Drawing.UnsafeNativeMethods.SystemParametersInfo(uiAction, uiParam, out_pvParam, fWinIni) end
---@param hDC System.Runtime.InteropServices.HandleRef
---@param nIndex number
---@return number
function System.Drawing.UnsafeNativeMethods.GetDeviceCaps(hDC, nIndex) end
---@param hObject System.Runtime.InteropServices.HandleRef
---@return number
function System.Drawing.UnsafeNativeMethods.GetObjectType(hObject) end

---@class System.Drawing.UnsafeNativeMethods.IStream
System.Drawing.UnsafeNativeMethods.IStream = {}
---@alias CS.System.Drawing.UnsafeNativeMethods.IStream System.Drawing.UnsafeNativeMethods.IStream
CS.System.Drawing.UnsafeNativeMethods.IStream = System.Drawing.UnsafeNativeMethods.IStream

---@param buf System.IntPtr
---@param len number
---@return number
function System.Drawing.UnsafeNativeMethods.IStream:Read(buf, len) end
---@param buf System.IntPtr
---@param len number
---@return number
function System.Drawing.UnsafeNativeMethods.IStream:Write(buf, len) end
---@param dlibMove number
---@param dwOrigin number
---@return number
function System.Drawing.UnsafeNativeMethods.IStream:Seek(dlibMove, dwOrigin) end
---@param libNewSize number
function System.Drawing.UnsafeNativeMethods.IStream:SetSize(libNewSize) end
---@param pstm System.Drawing.UnsafeNativeMethods.IStream
---@param cb number
---@param out_pcbRead number
---@return number,number
function System.Drawing.UnsafeNativeMethods.IStream:CopyTo(pstm, cb, out_pcbRead) end
---@param grfCommitFlags number
function System.Drawing.UnsafeNativeMethods.IStream:Commit(grfCommitFlags) end
function System.Drawing.UnsafeNativeMethods.IStream:Revert() end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.UnsafeNativeMethods.IStream:LockRegion(libOffset, cb, dwLockType) end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.UnsafeNativeMethods.IStream:UnlockRegion(libOffset, cb, dwLockType) end
---@param pStatstg System.IntPtr
---@param grfStatFlag number
function System.Drawing.UnsafeNativeMethods.IStream:Stat(pStatstg, grfStatFlag) end
---@return System.Drawing.UnsafeNativeMethods.IStream
function System.Drawing.UnsafeNativeMethods.IStream:Clone() end

---@class System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream : System.Object
System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream = {}
---@alias CS.System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream
CS.System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream = System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream

---@return System.Drawing.UnsafeNativeMethods.IStream
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:Clone() end
---@param grfCommitFlags number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:Commit(grfCommitFlags) end
---@param pstm System.Drawing.UnsafeNativeMethods.IStream
---@param cb number
---@param pcbRead System.Int64[]
---@return number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:CopyTo(pstm, cb, pcbRead) end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:LockRegion(libOffset, cb, dwLockType) end
---@overload fun(self: System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream, buf: System.IntPtr, length: number) : number
---@param buffer System.Byte[]
---@param length number
---@return number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:Read(buffer, length) end
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:Revert() end
---@param offset number
---@param origin number
---@return number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:Seek(offset, origin) end
---@param value number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:SetSize(value) end
---@param pstatstg System.IntPtr
---@param grfStatFlag number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:Stat(pstatstg, grfStatFlag) end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:UnlockRegion(libOffset, cb, dwLockType) end
---@overload fun(self: System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream, buf: System.IntPtr, length: number) : number
---@param buffer System.Byte[]
---@param length number
---@return number
function System.Drawing.UnsafeNativeMethods.ComStreamFromDataStream:Write(buffer, length) end

---@class System.Drawing.Color : System.ValueType
---@field Empty System.Drawing.Color
---@field Transparent System.Drawing.Color
---@field AliceBlue System.Drawing.Color
---@field AntiqueWhite System.Drawing.Color
---@field Aqua System.Drawing.Color
---@field Aquamarine System.Drawing.Color
---@field Azure System.Drawing.Color
---@field Beige System.Drawing.Color
---@field Bisque System.Drawing.Color
---@field Black System.Drawing.Color
---@field BlanchedAlmond System.Drawing.Color
---@field Blue System.Drawing.Color
---@field BlueViolet System.Drawing.Color
---@field Brown System.Drawing.Color
---@field BurlyWood System.Drawing.Color
---@field CadetBlue System.Drawing.Color
---@field Chartreuse System.Drawing.Color
---@field Chocolate System.Drawing.Color
---@field Coral System.Drawing.Color
---@field CornflowerBlue System.Drawing.Color
---@field Cornsilk System.Drawing.Color
---@field Crimson System.Drawing.Color
---@field Cyan System.Drawing.Color
---@field DarkBlue System.Drawing.Color
---@field DarkCyan System.Drawing.Color
---@field DarkGoldenrod System.Drawing.Color
---@field DarkGray System.Drawing.Color
---@field DarkGreen System.Drawing.Color
---@field DarkKhaki System.Drawing.Color
---@field DarkMagenta System.Drawing.Color
---@field DarkOliveGreen System.Drawing.Color
---@field DarkOrange System.Drawing.Color
---@field DarkOrchid System.Drawing.Color
---@field DarkRed System.Drawing.Color
---@field DarkSalmon System.Drawing.Color
---@field DarkSeaGreen System.Drawing.Color
---@field DarkSlateBlue System.Drawing.Color
---@field DarkSlateGray System.Drawing.Color
---@field DarkTurquoise System.Drawing.Color
---@field DarkViolet System.Drawing.Color
---@field DeepPink System.Drawing.Color
---@field DeepSkyBlue System.Drawing.Color
---@field DimGray System.Drawing.Color
---@field DodgerBlue System.Drawing.Color
---@field Firebrick System.Drawing.Color
---@field FloralWhite System.Drawing.Color
---@field ForestGreen System.Drawing.Color
---@field Fuchsia System.Drawing.Color
---@field Gainsboro System.Drawing.Color
---@field GhostWhite System.Drawing.Color
---@field Gold System.Drawing.Color
---@field Goldenrod System.Drawing.Color
---@field Gray System.Drawing.Color
---@field Green System.Drawing.Color
---@field GreenYellow System.Drawing.Color
---@field Honeydew System.Drawing.Color
---@field HotPink System.Drawing.Color
---@field IndianRed System.Drawing.Color
---@field Indigo System.Drawing.Color
---@field Ivory System.Drawing.Color
---@field Khaki System.Drawing.Color
---@field Lavender System.Drawing.Color
---@field LavenderBlush System.Drawing.Color
---@field LawnGreen System.Drawing.Color
---@field LemonChiffon System.Drawing.Color
---@field LightBlue System.Drawing.Color
---@field LightCoral System.Drawing.Color
---@field LightCyan System.Drawing.Color
---@field LightGoldenrodYellow System.Drawing.Color
---@field LightGreen System.Drawing.Color
---@field LightGray System.Drawing.Color
---@field LightPink System.Drawing.Color
---@field LightSalmon System.Drawing.Color
---@field LightSeaGreen System.Drawing.Color
---@field LightSkyBlue System.Drawing.Color
---@field LightSlateGray System.Drawing.Color
---@field LightSteelBlue System.Drawing.Color
---@field LightYellow System.Drawing.Color
---@field Lime System.Drawing.Color
---@field LimeGreen System.Drawing.Color
---@field Linen System.Drawing.Color
---@field Magenta System.Drawing.Color
---@field Maroon System.Drawing.Color
---@field MediumAquamarine System.Drawing.Color
---@field MediumBlue System.Drawing.Color
---@field MediumOrchid System.Drawing.Color
---@field MediumPurple System.Drawing.Color
---@field MediumSeaGreen System.Drawing.Color
---@field MediumSlateBlue System.Drawing.Color
---@field MediumSpringGreen System.Drawing.Color
---@field MediumTurquoise System.Drawing.Color
---@field MediumVioletRed System.Drawing.Color
---@field MidnightBlue System.Drawing.Color
---@field MintCream System.Drawing.Color
---@field MistyRose System.Drawing.Color
---@field Moccasin System.Drawing.Color
---@field NavajoWhite System.Drawing.Color
---@field Navy System.Drawing.Color
---@field OldLace System.Drawing.Color
---@field Olive System.Drawing.Color
---@field OliveDrab System.Drawing.Color
---@field Orange System.Drawing.Color
---@field OrangeRed System.Drawing.Color
---@field Orchid System.Drawing.Color
---@field PaleGoldenrod System.Drawing.Color
---@field PaleGreen System.Drawing.Color
---@field PaleTurquoise System.Drawing.Color
---@field PaleVioletRed System.Drawing.Color
---@field PapayaWhip System.Drawing.Color
---@field PeachPuff System.Drawing.Color
---@field Peru System.Drawing.Color
---@field Pink System.Drawing.Color
---@field Plum System.Drawing.Color
---@field PowderBlue System.Drawing.Color
---@field Purple System.Drawing.Color
---@field Red System.Drawing.Color
---@field RosyBrown System.Drawing.Color
---@field RoyalBlue System.Drawing.Color
---@field SaddleBrown System.Drawing.Color
---@field Salmon System.Drawing.Color
---@field SandyBrown System.Drawing.Color
---@field SeaGreen System.Drawing.Color
---@field SeaShell System.Drawing.Color
---@field Sienna System.Drawing.Color
---@field Silver System.Drawing.Color
---@field SkyBlue System.Drawing.Color
---@field SlateBlue System.Drawing.Color
---@field SlateGray System.Drawing.Color
---@field Snow System.Drawing.Color
---@field SpringGreen System.Drawing.Color
---@field SteelBlue System.Drawing.Color
---@field Tan System.Drawing.Color
---@field Teal System.Drawing.Color
---@field Thistle System.Drawing.Color
---@field Tomato System.Drawing.Color
---@field Turquoise System.Drawing.Color
---@field Violet System.Drawing.Color
---@field Wheat System.Drawing.Color
---@field White System.Drawing.Color
---@field WhiteSmoke System.Drawing.Color
---@field Yellow System.Drawing.Color
---@field YellowGreen System.Drawing.Color
---@field R number
---@field G number
---@field B number
---@field A number
---@field IsKnownColor boolean
---@field IsEmpty boolean
---@field IsNamedColor boolean
---@field IsSystemColor boolean
---@field Name string
System.Drawing.Color = {}
---@alias CS.System.Drawing.Color System.Drawing.Color
CS.System.Drawing.Color = System.Drawing.Color

---@overload fun(argb: number) : System.Drawing.Color
---@overload fun(alpha: number, red: number, green: number, blue: number) : System.Drawing.Color
---@overload fun(alpha: number, baseColor: System.Drawing.Color) : System.Drawing.Color
---@param red number
---@param green number
---@param blue number
---@return System.Drawing.Color
function System.Drawing.Color.FromArgb(red, green, blue) end
---@param color System.Drawing.KnownColor
---@return System.Drawing.Color
function System.Drawing.Color.FromKnownColor(color) end
---@param name string
---@return System.Drawing.Color
function System.Drawing.Color.FromName(name) end
---@return number
function System.Drawing.Color:GetBrightness() end
---@return number
function System.Drawing.Color:GetHue() end
---@return number
function System.Drawing.Color:GetSaturation() end
---@return number
function System.Drawing.Color:ToArgb() end
---@return System.Drawing.KnownColor
function System.Drawing.Color:ToKnownColor() end
---@return string
function System.Drawing.Color:ToString() end
---@overload fun(self: System.Drawing.Color, obj: System.Object) : boolean
---@param other System.Drawing.Color
---@return boolean
function System.Drawing.Color:Equals(other) end
---@return number
function System.Drawing.Color:GetHashCode() end
---@return boolean
function System.Drawing.Color:IsSystemColor() end

---@class System.Drawing.Point : System.ValueType
---@field Empty System.Drawing.Point
---@field IsEmpty boolean
---@field X number
---@field Y number
System.Drawing.Point = {}
---@alias CS.System.Drawing.Point System.Drawing.Point
CS.System.Drawing.Point = System.Drawing.Point

---@overload fun(x: number, y: number) : System.Drawing.Point
---@overload fun(sz: System.Drawing.Size) : System.Drawing.Point
---@param dw number
---@return System.Drawing.Point
function System.Drawing.Point.New(dw) end
---@param pt System.Drawing.Point
---@param sz System.Drawing.Size
---@return System.Drawing.Point
function System.Drawing.Point.Add(pt, sz) end
---@param pt System.Drawing.Point
---@param sz System.Drawing.Size
---@return System.Drawing.Point
function System.Drawing.Point.Subtract(pt, sz) end
---@param value System.Drawing.PointF
---@return System.Drawing.Point
function System.Drawing.Point.Ceiling(value) end
---@param value System.Drawing.PointF
---@return System.Drawing.Point
function System.Drawing.Point.Truncate(value) end
---@param value System.Drawing.PointF
---@return System.Drawing.Point
function System.Drawing.Point.Round(value) end
---@overload fun(self: System.Drawing.Point, obj: System.Object) : boolean
---@param other System.Drawing.Point
---@return boolean
function System.Drawing.Point:Equals(other) end
---@return number
function System.Drawing.Point:GetHashCode() end
---@overload fun(self: System.Drawing.Point, dx: number, dy: number)
---@param p System.Drawing.Point
function System.Drawing.Point:Offset(p) end
---@return string
function System.Drawing.Point:ToString() end

---@class System.Drawing.PointF : System.ValueType
---@field Empty System.Drawing.PointF
---@field IsEmpty boolean
---@field X number
---@field Y number
System.Drawing.PointF = {}
---@alias CS.System.Drawing.PointF System.Drawing.PointF
CS.System.Drawing.PointF = System.Drawing.PointF

---@param x number
---@param y number
---@return System.Drawing.PointF
function System.Drawing.PointF.New(x, y) end
---@overload fun(pt: System.Drawing.PointF, sz: System.Drawing.Size) : System.Drawing.PointF
---@param pt System.Drawing.PointF
---@param sz System.Drawing.SizeF
---@return System.Drawing.PointF
function System.Drawing.PointF.Add(pt, sz) end
---@overload fun(pt: System.Drawing.PointF, sz: System.Drawing.Size) : System.Drawing.PointF
---@param pt System.Drawing.PointF
---@param sz System.Drawing.SizeF
---@return System.Drawing.PointF
function System.Drawing.PointF.Subtract(pt, sz) end
---@overload fun(self: System.Drawing.PointF, obj: System.Object) : boolean
---@param other System.Drawing.PointF
---@return boolean
function System.Drawing.PointF:Equals(other) end
---@return number
function System.Drawing.PointF:GetHashCode() end
---@return string
function System.Drawing.PointF:ToString() end

---@class System.Drawing.Rectangle : System.ValueType
---@field Empty System.Drawing.Rectangle
---@field Location System.Drawing.Point
---@field Size System.Drawing.Size
---@field X number
---@field Y number
---@field Width number
---@field Height number
---@field Left number
---@field Top number
---@field Right number
---@field Bottom number
---@field IsEmpty boolean
System.Drawing.Rectangle = {}
---@alias CS.System.Drawing.Rectangle System.Drawing.Rectangle
CS.System.Drawing.Rectangle = System.Drawing.Rectangle

---@overload fun(x: number, y: number, width: number, height: number) : System.Drawing.Rectangle
---@param location System.Drawing.Point
---@param size System.Drawing.Size
---@return System.Drawing.Rectangle
function System.Drawing.Rectangle.New(location, size) end
---@param left number
---@param top number
---@param right number
---@param bottom number
---@return System.Drawing.Rectangle
function System.Drawing.Rectangle.FromLTRB(left, top, right, bottom) end
---@param value System.Drawing.RectangleF
---@return System.Drawing.Rectangle
function System.Drawing.Rectangle.Ceiling(value) end
---@param value System.Drawing.RectangleF
---@return System.Drawing.Rectangle
function System.Drawing.Rectangle.Truncate(value) end
---@param value System.Drawing.RectangleF
---@return System.Drawing.Rectangle
function System.Drawing.Rectangle.Round(value) end
---@overload fun(rect: System.Drawing.Rectangle, x: number, y: number) : System.Drawing.Rectangle
---@overload fun(self: System.Drawing.Rectangle, width: number, height: number)
---@param size System.Drawing.Size
function System.Drawing.Rectangle:Inflate(size) end
---@overload fun(a: System.Drawing.Rectangle, b: System.Drawing.Rectangle) : System.Drawing.Rectangle
---@param rect System.Drawing.Rectangle
function System.Drawing.Rectangle:Intersect(rect) end
---@param a System.Drawing.Rectangle
---@param b System.Drawing.Rectangle
---@return System.Drawing.Rectangle
function System.Drawing.Rectangle.Union(a, b) end
---@overload fun(self: System.Drawing.Rectangle, obj: System.Object) : boolean
---@param other System.Drawing.Rectangle
---@return boolean
function System.Drawing.Rectangle:Equals(other) end
---@overload fun(self: System.Drawing.Rectangle, x: number, y: number) : boolean
---@overload fun(self: System.Drawing.Rectangle, pt: System.Drawing.Point) : boolean
---@param rect System.Drawing.Rectangle
---@return boolean
function System.Drawing.Rectangle:Contains(rect) end
---@return number
function System.Drawing.Rectangle:GetHashCode() end
---@param rect System.Drawing.Rectangle
---@return boolean
function System.Drawing.Rectangle:IntersectsWith(rect) end
---@overload fun(self: System.Drawing.Rectangle, pos: System.Drawing.Point)
---@param x number
---@param y number
function System.Drawing.Rectangle:Offset(x, y) end
---@return string
function System.Drawing.Rectangle:ToString() end

---@class System.Drawing.RectangleF : System.ValueType
---@field Empty System.Drawing.RectangleF
---@field Location System.Drawing.PointF
---@field Size System.Drawing.SizeF
---@field X number
---@field Y number
---@field Width number
---@field Height number
---@field Left number
---@field Top number
---@field Right number
---@field Bottom number
---@field IsEmpty boolean
System.Drawing.RectangleF = {}
---@alias CS.System.Drawing.RectangleF System.Drawing.RectangleF
CS.System.Drawing.RectangleF = System.Drawing.RectangleF

---@overload fun(x: number, y: number, width: number, height: number) : System.Drawing.RectangleF
---@param location System.Drawing.PointF
---@param size System.Drawing.SizeF
---@return System.Drawing.RectangleF
function System.Drawing.RectangleF.New(location, size) end
---@param left number
---@param top number
---@param right number
---@param bottom number
---@return System.Drawing.RectangleF
function System.Drawing.RectangleF.FromLTRB(left, top, right, bottom) end
---@overload fun(rect: System.Drawing.RectangleF, x: number, y: number) : System.Drawing.RectangleF
---@overload fun(self: System.Drawing.RectangleF, x: number, y: number)
---@param size System.Drawing.SizeF
function System.Drawing.RectangleF:Inflate(size) end
---@overload fun(a: System.Drawing.RectangleF, b: System.Drawing.RectangleF) : System.Drawing.RectangleF
---@param rect System.Drawing.RectangleF
function System.Drawing.RectangleF:Intersect(rect) end
---@param a System.Drawing.RectangleF
---@param b System.Drawing.RectangleF
---@return System.Drawing.RectangleF
function System.Drawing.RectangleF.Union(a, b) end
---@overload fun(self: System.Drawing.RectangleF, obj: System.Object) : boolean
---@param other System.Drawing.RectangleF
---@return boolean
function System.Drawing.RectangleF:Equals(other) end
---@overload fun(self: System.Drawing.RectangleF, x: number, y: number) : boolean
---@overload fun(self: System.Drawing.RectangleF, pt: System.Drawing.PointF) : boolean
---@param rect System.Drawing.RectangleF
---@return boolean
function System.Drawing.RectangleF:Contains(rect) end
---@return number
function System.Drawing.RectangleF:GetHashCode() end
---@param rect System.Drawing.RectangleF
---@return boolean
function System.Drawing.RectangleF:IntersectsWith(rect) end
---@overload fun(self: System.Drawing.RectangleF, pos: System.Drawing.PointF)
---@param x number
---@param y number
function System.Drawing.RectangleF:Offset(x, y) end
---@return string
function System.Drawing.RectangleF:ToString() end

---@class System.Drawing.Size : System.ValueType
---@field Empty System.Drawing.Size
---@field IsEmpty boolean
---@field Width number
---@field Height number
System.Drawing.Size = {}
---@alias CS.System.Drawing.Size System.Drawing.Size
CS.System.Drawing.Size = System.Drawing.Size

---@overload fun(pt: System.Drawing.Point) : System.Drawing.Size
---@param width number
---@param height number
---@return System.Drawing.Size
function System.Drawing.Size.New(width, height) end
---@param sz1 System.Drawing.Size
---@param sz2 System.Drawing.Size
---@return System.Drawing.Size
function System.Drawing.Size.Add(sz1, sz2) end
---@param value System.Drawing.SizeF
---@return System.Drawing.Size
function System.Drawing.Size.Ceiling(value) end
---@param sz1 System.Drawing.Size
---@param sz2 System.Drawing.Size
---@return System.Drawing.Size
function System.Drawing.Size.Subtract(sz1, sz2) end
---@param value System.Drawing.SizeF
---@return System.Drawing.Size
function System.Drawing.Size.Truncate(value) end
---@param value System.Drawing.SizeF
---@return System.Drawing.Size
function System.Drawing.Size.Round(value) end
---@overload fun(self: System.Drawing.Size, obj: System.Object) : boolean
---@param other System.Drawing.Size
---@return boolean
function System.Drawing.Size:Equals(other) end
---@return number
function System.Drawing.Size:GetHashCode() end
---@return string
function System.Drawing.Size:ToString() end

---@class System.Drawing.SizeF : System.ValueType
---@field Empty System.Drawing.SizeF
---@field IsEmpty boolean
---@field Width number
---@field Height number
System.Drawing.SizeF = {}
---@alias CS.System.Drawing.SizeF System.Drawing.SizeF
CS.System.Drawing.SizeF = System.Drawing.SizeF

---@overload fun(size: System.Drawing.SizeF) : System.Drawing.SizeF
---@overload fun(pt: System.Drawing.PointF) : System.Drawing.SizeF
---@param width number
---@param height number
---@return System.Drawing.SizeF
function System.Drawing.SizeF.New(width, height) end
---@param sz1 System.Drawing.SizeF
---@param sz2 System.Drawing.SizeF
---@return System.Drawing.SizeF
function System.Drawing.SizeF.Add(sz1, sz2) end
---@param sz1 System.Drawing.SizeF
---@param sz2 System.Drawing.SizeF
---@return System.Drawing.SizeF
function System.Drawing.SizeF.Subtract(sz1, sz2) end
---@overload fun(self: System.Drawing.SizeF, obj: System.Object) : boolean
---@param other System.Drawing.SizeF
---@return boolean
function System.Drawing.SizeF:Equals(other) end
---@return number
function System.Drawing.SizeF:GetHashCode() end
---@return System.Drawing.PointF
function System.Drawing.SizeF:ToPointF() end
---@return System.Drawing.Size
function System.Drawing.SizeF:ToSize() end
---@return string
function System.Drawing.SizeF:ToString() end

---@class System.Drawing.Bitmap : System.Drawing.Image
System.Drawing.Bitmap = {}
---@alias CS.System.Drawing.Bitmap System.Drawing.Bitmap
CS.System.Drawing.Bitmap = System.Drawing.Bitmap

---@overload fun(width: number, height: number) : System.Drawing.Bitmap
---@overload fun(width: number, height: number, g: System.Drawing.Graphics) : System.Drawing.Bitmap
---@overload fun(width: number, height: number, format: System.Drawing.Imaging.PixelFormat) : System.Drawing.Bitmap
---@overload fun(original: System.Drawing.Image) : System.Drawing.Bitmap
---@overload fun(stream: System.IO.Stream) : System.Drawing.Bitmap
---@overload fun(filename: string) : System.Drawing.Bitmap
---@overload fun(original: System.Drawing.Image, newSize: System.Drawing.Size) : System.Drawing.Bitmap
---@overload fun(stream: System.IO.Stream, useIcm: boolean) : System.Drawing.Bitmap
---@overload fun(filename: string, useIcm: boolean) : System.Drawing.Bitmap
---@overload fun(type: System.Type, resource: string) : System.Drawing.Bitmap
---@overload fun(original: System.Drawing.Image, width: number, height: number) : System.Drawing.Bitmap
---@param width number
---@param height number
---@param stride number
---@param format System.Drawing.Imaging.PixelFormat
---@param scan0 System.IntPtr
---@return System.Drawing.Bitmap
function System.Drawing.Bitmap.New(width, height, stride, format, scan0) end
---@param hicon System.IntPtr
---@return System.Drawing.Bitmap
function System.Drawing.Bitmap.FromHicon(hicon) end
---@param hinstance System.IntPtr
---@param bitmapName string
---@return System.Drawing.Bitmap
function System.Drawing.Bitmap.FromResource(hinstance, bitmapName) end
---@param x number
---@param y number
---@return System.Drawing.Color
function System.Drawing.Bitmap:GetPixel(x, y) end
---@param x number
---@param y number
---@param color System.Drawing.Color
function System.Drawing.Bitmap:SetPixel(x, y, color) end
---@overload fun(self: System.Drawing.Bitmap, rect: System.Drawing.Rectangle, format: System.Drawing.Imaging.PixelFormat) : System.Drawing.Bitmap
---@param rect System.Drawing.RectangleF
---@param format System.Drawing.Imaging.PixelFormat
---@return System.Drawing.Bitmap
function System.Drawing.Bitmap:Clone(rect, format) end
---@overload fun() : System.IntPtr
---@param background System.Drawing.Color
---@return System.IntPtr
function System.Drawing.Bitmap:GetHbitmap(background) end
---@return System.IntPtr
function System.Drawing.Bitmap:GetHicon() end
---@overload fun(self: System.Drawing.Bitmap, rect: System.Drawing.Rectangle, flags: System.Drawing.Imaging.ImageLockMode, format: System.Drawing.Imaging.PixelFormat) : System.Drawing.Imaging.BitmapData
---@param rect System.Drawing.Rectangle
---@param flags System.Drawing.Imaging.ImageLockMode
---@param format System.Drawing.Imaging.PixelFormat
---@param bitmapData System.Drawing.Imaging.BitmapData
---@return System.Drawing.Imaging.BitmapData
function System.Drawing.Bitmap:LockBits(rect, flags, format, bitmapData) end
---@overload fun()
---@param transparentColor System.Drawing.Color
function System.Drawing.Bitmap:MakeTransparent(transparentColor) end
---@param xDpi number
---@param yDpi number
function System.Drawing.Bitmap:SetResolution(xDpi, yDpi) end
---@param bitmapdata System.Drawing.Imaging.BitmapData
function System.Drawing.Bitmap:UnlockBits(bitmapdata) end

---@class System.Drawing.Brushes : System.Object
---@field AliceBlue System.Drawing.Brush
---@field AntiqueWhite System.Drawing.Brush
---@field Aqua System.Drawing.Brush
---@field Aquamarine System.Drawing.Brush
---@field Azure System.Drawing.Brush
---@field Beige System.Drawing.Brush
---@field Bisque System.Drawing.Brush
---@field Black System.Drawing.Brush
---@field BlanchedAlmond System.Drawing.Brush
---@field Blue System.Drawing.Brush
---@field BlueViolet System.Drawing.Brush
---@field Brown System.Drawing.Brush
---@field BurlyWood System.Drawing.Brush
---@field CadetBlue System.Drawing.Brush
---@field Chartreuse System.Drawing.Brush
---@field Chocolate System.Drawing.Brush
---@field Coral System.Drawing.Brush
---@field CornflowerBlue System.Drawing.Brush
---@field Cornsilk System.Drawing.Brush
---@field Crimson System.Drawing.Brush
---@field Cyan System.Drawing.Brush
---@field DarkBlue System.Drawing.Brush
---@field DarkCyan System.Drawing.Brush
---@field DarkGoldenrod System.Drawing.Brush
---@field DarkGray System.Drawing.Brush
---@field DarkGreen System.Drawing.Brush
---@field DarkKhaki System.Drawing.Brush
---@field DarkMagenta System.Drawing.Brush
---@field DarkOliveGreen System.Drawing.Brush
---@field DarkOrange System.Drawing.Brush
---@field DarkOrchid System.Drawing.Brush
---@field DarkRed System.Drawing.Brush
---@field DarkSalmon System.Drawing.Brush
---@field DarkSeaGreen System.Drawing.Brush
---@field DarkSlateBlue System.Drawing.Brush
---@field DarkSlateGray System.Drawing.Brush
---@field DarkTurquoise System.Drawing.Brush
---@field DarkViolet System.Drawing.Brush
---@field DeepPink System.Drawing.Brush
---@field DeepSkyBlue System.Drawing.Brush
---@field DimGray System.Drawing.Brush
---@field DodgerBlue System.Drawing.Brush
---@field Firebrick System.Drawing.Brush
---@field FloralWhite System.Drawing.Brush
---@field ForestGreen System.Drawing.Brush
---@field Fuchsia System.Drawing.Brush
---@field Gainsboro System.Drawing.Brush
---@field GhostWhite System.Drawing.Brush
---@field Gold System.Drawing.Brush
---@field Goldenrod System.Drawing.Brush
---@field Gray System.Drawing.Brush
---@field Green System.Drawing.Brush
---@field GreenYellow System.Drawing.Brush
---@field Honeydew System.Drawing.Brush
---@field HotPink System.Drawing.Brush
---@field IndianRed System.Drawing.Brush
---@field Indigo System.Drawing.Brush
---@field Ivory System.Drawing.Brush
---@field Khaki System.Drawing.Brush
---@field Lavender System.Drawing.Brush
---@field LavenderBlush System.Drawing.Brush
---@field LawnGreen System.Drawing.Brush
---@field LemonChiffon System.Drawing.Brush
---@field LightBlue System.Drawing.Brush
---@field LightCoral System.Drawing.Brush
---@field LightCyan System.Drawing.Brush
---@field LightGoldenrodYellow System.Drawing.Brush
---@field LightGray System.Drawing.Brush
---@field LightGreen System.Drawing.Brush
---@field LightPink System.Drawing.Brush
---@field LightSalmon System.Drawing.Brush
---@field LightSeaGreen System.Drawing.Brush
---@field LightSkyBlue System.Drawing.Brush
---@field LightSlateGray System.Drawing.Brush
---@field LightSteelBlue System.Drawing.Brush
---@field LightYellow System.Drawing.Brush
---@field Lime System.Drawing.Brush
---@field LimeGreen System.Drawing.Brush
---@field Linen System.Drawing.Brush
---@field Magenta System.Drawing.Brush
---@field Maroon System.Drawing.Brush
---@field MediumAquamarine System.Drawing.Brush
---@field MediumBlue System.Drawing.Brush
---@field MediumOrchid System.Drawing.Brush
---@field MediumPurple System.Drawing.Brush
---@field MediumSeaGreen System.Drawing.Brush
---@field MediumSlateBlue System.Drawing.Brush
---@field MediumSpringGreen System.Drawing.Brush
---@field MediumTurquoise System.Drawing.Brush
---@field MediumVioletRed System.Drawing.Brush
---@field MidnightBlue System.Drawing.Brush
---@field MintCream System.Drawing.Brush
---@field MistyRose System.Drawing.Brush
---@field Moccasin System.Drawing.Brush
---@field NavajoWhite System.Drawing.Brush
---@field Navy System.Drawing.Brush
---@field OldLace System.Drawing.Brush
---@field Olive System.Drawing.Brush
---@field OliveDrab System.Drawing.Brush
---@field Orange System.Drawing.Brush
---@field OrangeRed System.Drawing.Brush
---@field Orchid System.Drawing.Brush
---@field PaleGoldenrod System.Drawing.Brush
---@field PaleGreen System.Drawing.Brush
---@field PaleTurquoise System.Drawing.Brush
---@field PaleVioletRed System.Drawing.Brush
---@field PapayaWhip System.Drawing.Brush
---@field PeachPuff System.Drawing.Brush
---@field Peru System.Drawing.Brush
---@field Pink System.Drawing.Brush
---@field Plum System.Drawing.Brush
---@field PowderBlue System.Drawing.Brush
---@field Purple System.Drawing.Brush
---@field Red System.Drawing.Brush
---@field RosyBrown System.Drawing.Brush
---@field RoyalBlue System.Drawing.Brush
---@field SaddleBrown System.Drawing.Brush
---@field Salmon System.Drawing.Brush
---@field SandyBrown System.Drawing.Brush
---@field SeaGreen System.Drawing.Brush
---@field SeaShell System.Drawing.Brush
---@field Sienna System.Drawing.Brush
---@field Silver System.Drawing.Brush
---@field SkyBlue System.Drawing.Brush
---@field SlateBlue System.Drawing.Brush
---@field SlateGray System.Drawing.Brush
---@field Snow System.Drawing.Brush
---@field SpringGreen System.Drawing.Brush
---@field SteelBlue System.Drawing.Brush
---@field Tan System.Drawing.Brush
---@field Teal System.Drawing.Brush
---@field Thistle System.Drawing.Brush
---@field Tomato System.Drawing.Brush
---@field Transparent System.Drawing.Brush
---@field Turquoise System.Drawing.Brush
---@field Violet System.Drawing.Brush
---@field Wheat System.Drawing.Brush
---@field White System.Drawing.Brush
---@field WhiteSmoke System.Drawing.Brush
---@field Yellow System.Drawing.Brush
---@field YellowGreen System.Drawing.Brush
System.Drawing.Brushes = {}
---@alias CS.System.Drawing.Brushes System.Drawing.Brushes
CS.System.Drawing.Brushes = System.Drawing.Brushes


---@class System.Drawing.BufferedGraphics : System.Object
---@field Graphics System.Drawing.Graphics
System.Drawing.BufferedGraphics = {}
---@alias CS.System.Drawing.BufferedGraphics System.Drawing.BufferedGraphics
CS.System.Drawing.BufferedGraphics = System.Drawing.BufferedGraphics

function System.Drawing.BufferedGraphics:Dispose() end
---@overload fun()
---@overload fun(self: System.Drawing.BufferedGraphics, target: System.Drawing.Graphics)
---@param targetDC System.IntPtr
function System.Drawing.BufferedGraphics:Render(targetDC) end

---@class System.Drawing.BufferedGraphicsContext : System.Object
---@field MaximumBuffer System.Drawing.Size
System.Drawing.BufferedGraphicsContext = {}
---@alias CS.System.Drawing.BufferedGraphicsContext System.Drawing.BufferedGraphicsContext
CS.System.Drawing.BufferedGraphicsContext = System.Drawing.BufferedGraphicsContext

---@return System.Drawing.BufferedGraphicsContext
function System.Drawing.BufferedGraphicsContext.New() end
---@overload fun(self: System.Drawing.BufferedGraphicsContext, targetGraphics: System.Drawing.Graphics, targetRectangle: System.Drawing.Rectangle) : System.Drawing.BufferedGraphics
---@param targetDC System.IntPtr
---@param targetRectangle System.Drawing.Rectangle
---@return System.Drawing.BufferedGraphics
function System.Drawing.BufferedGraphicsContext:Allocate(targetDC, targetRectangle) end
function System.Drawing.BufferedGraphicsContext:Dispose() end
function System.Drawing.BufferedGraphicsContext:Invalidate() end

---@class System.Drawing.BufferedGraphicsManager : System.Object
---@field Current System.Drawing.BufferedGraphicsContext
System.Drawing.BufferedGraphicsManager = {}
---@alias CS.System.Drawing.BufferedGraphicsManager System.Drawing.BufferedGraphicsManager
CS.System.Drawing.BufferedGraphicsManager = System.Drawing.BufferedGraphicsManager


---@class System.Drawing.CharacterRange : System.ValueType
---@field First number
---@field Length number
System.Drawing.CharacterRange = {}
---@alias CS.System.Drawing.CharacterRange System.Drawing.CharacterRange
CS.System.Drawing.CharacterRange = System.Drawing.CharacterRange

---@param First number
---@param Length number
---@return System.Drawing.CharacterRange
function System.Drawing.CharacterRange.New(First, Length) end
---@param obj System.Object
---@return boolean
function System.Drawing.CharacterRange:Equals(obj) end
---@return number
function System.Drawing.CharacterRange:GetHashCode() end

---@class System.Drawing.ColorTranslator : System.Object
System.Drawing.ColorTranslator = {}
---@alias CS.System.Drawing.ColorTranslator System.Drawing.ColorTranslator
CS.System.Drawing.ColorTranslator = System.Drawing.ColorTranslator

---@param htmlColor string
---@return System.Drawing.Color
function System.Drawing.ColorTranslator.FromHtml(htmlColor) end
---@param oleColor number
---@return System.Drawing.Color
function System.Drawing.ColorTranslator.FromOle(oleColor) end
---@param win32Color number
---@return System.Drawing.Color
function System.Drawing.ColorTranslator.FromWin32(win32Color) end
---@param c System.Drawing.Color
---@return string
function System.Drawing.ColorTranslator.ToHtml(c) end
---@param c System.Drawing.Color
---@return number
function System.Drawing.ColorTranslator.ToOle(c) end
---@param c System.Drawing.Color
---@return number
function System.Drawing.ColorTranslator.ToWin32(c) end

---@class System.Drawing.ComIStreamMarshaler : System.Object
System.Drawing.ComIStreamMarshaler = {}
---@alias CS.System.Drawing.ComIStreamMarshaler System.Drawing.ComIStreamMarshaler
CS.System.Drawing.ComIStreamMarshaler = System.Drawing.ComIStreamMarshaler

---@param managedObj System.Object
---@return System.IntPtr
function System.Drawing.ComIStreamMarshaler:MarshalManagedToNative(managedObj) end
---@param pNativeData System.IntPtr
function System.Drawing.ComIStreamMarshaler:CleanUpNativeData(pNativeData) end
---@param pNativeData System.IntPtr
---@return System.Object
function System.Drawing.ComIStreamMarshaler:MarshalNativeToManaged(pNativeData) end
---@param managedObj System.Object
function System.Drawing.ComIStreamMarshaler:CleanUpManagedData(managedObj) end
---@return number
function System.Drawing.ComIStreamMarshaler:GetNativeDataSize() end

---@class System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate
CS.System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate = System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate
function System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate.New(object, method) end
---@param this System.IntPtr
---@param ref_riid System.Guid
---@param ppvObject System.IntPtr
---@return number,System.Guid
function System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate:Invoke(this, ref_riid, ppvObject) end
---@param this System.IntPtr
---@param ref_riid System.Guid
---@param ppvObject System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Guid
function System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate:BeginInvoke(this, ref_riid, ppvObject, callback, object) end
---@param ref_riid System.Guid
---@param result System.IAsyncResult
---@return number,System.Guid
function System.Drawing.ComIStreamMarshaler.QueryInterfaceDelegate:EndInvoke(ref_riid, result) end

---@class System.Drawing.ComIStreamMarshaler.AddRefDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.AddRefDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.AddRefDelegate System.Drawing.ComIStreamMarshaler.AddRefDelegate
CS.System.Drawing.ComIStreamMarshaler.AddRefDelegate = System.Drawing.ComIStreamMarshaler.AddRefDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.AddRefDelegate
function System.Drawing.ComIStreamMarshaler.AddRefDelegate.New(object, method) end
---@param this System.IntPtr
---@return number
function System.Drawing.ComIStreamMarshaler.AddRefDelegate:Invoke(this) end
---@param this System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.AddRefDelegate:BeginInvoke(this, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.AddRefDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.ReleaseDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.ReleaseDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.ReleaseDelegate System.Drawing.ComIStreamMarshaler.ReleaseDelegate
CS.System.Drawing.ComIStreamMarshaler.ReleaseDelegate = System.Drawing.ComIStreamMarshaler.ReleaseDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.ReleaseDelegate
function System.Drawing.ComIStreamMarshaler.ReleaseDelegate.New(object, method) end
---@param this System.IntPtr
---@return number
function System.Drawing.ComIStreamMarshaler.ReleaseDelegate:Invoke(this) end
---@param this System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.ReleaseDelegate:BeginInvoke(this, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.ReleaseDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.ReadDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.ReadDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.ReadDelegate System.Drawing.ComIStreamMarshaler.ReadDelegate
CS.System.Drawing.ComIStreamMarshaler.ReadDelegate = System.Drawing.ComIStreamMarshaler.ReadDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.ReadDelegate
function System.Drawing.ComIStreamMarshaler.ReadDelegate.New(object, method) end
---@param this System.IntPtr
---@param out_pv number
---@param cb number
---@param pcbRead System.IntPtr
---@return number,number
function System.Drawing.ComIStreamMarshaler.ReadDelegate:Invoke(this, out_pv, cb, pcbRead) end
---@param this System.IntPtr
---@param out_pv number
---@param cb number
---@param pcbRead System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,number
function System.Drawing.ComIStreamMarshaler.ReadDelegate:BeginInvoke(this, out_pv, cb, pcbRead, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.ReadDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.WriteDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.WriteDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.WriteDelegate System.Drawing.ComIStreamMarshaler.WriteDelegate
CS.System.Drawing.ComIStreamMarshaler.WriteDelegate = System.Drawing.ComIStreamMarshaler.WriteDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.WriteDelegate
function System.Drawing.ComIStreamMarshaler.WriteDelegate.New(object, method) end
---@param this System.IntPtr
---@param pv System.Byte[]
---@param cb number
---@param pcbWritten System.IntPtr
---@return number
function System.Drawing.ComIStreamMarshaler.WriteDelegate:Invoke(this, pv, cb, pcbWritten) end
---@param this System.IntPtr
---@param pv System.Byte[]
---@param cb number
---@param pcbWritten System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.WriteDelegate:BeginInvoke(this, pv, cb, pcbWritten, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.WriteDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.SeekDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.SeekDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.SeekDelegate System.Drawing.ComIStreamMarshaler.SeekDelegate
CS.System.Drawing.ComIStreamMarshaler.SeekDelegate = System.Drawing.ComIStreamMarshaler.SeekDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.SeekDelegate
function System.Drawing.ComIStreamMarshaler.SeekDelegate.New(object, method) end
---@param this System.IntPtr
---@param dlibMove number
---@param dwOrigin number
---@param plibNewPosition System.IntPtr
---@return number
function System.Drawing.ComIStreamMarshaler.SeekDelegate:Invoke(this, dlibMove, dwOrigin, plibNewPosition) end
---@param this System.IntPtr
---@param dlibMove number
---@param dwOrigin number
---@param plibNewPosition System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.SeekDelegate:BeginInvoke(this, dlibMove, dwOrigin, plibNewPosition, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.SeekDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.SetSizeDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.SetSizeDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.SetSizeDelegate System.Drawing.ComIStreamMarshaler.SetSizeDelegate
CS.System.Drawing.ComIStreamMarshaler.SetSizeDelegate = System.Drawing.ComIStreamMarshaler.SetSizeDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.SetSizeDelegate
function System.Drawing.ComIStreamMarshaler.SetSizeDelegate.New(object, method) end
---@param this System.IntPtr
---@param libNewSize number
---@return number
function System.Drawing.ComIStreamMarshaler.SetSizeDelegate:Invoke(this, libNewSize) end
---@param this System.IntPtr
---@param libNewSize number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.SetSizeDelegate:BeginInvoke(this, libNewSize, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.SetSizeDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.CopyToDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.CopyToDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.CopyToDelegate System.Drawing.ComIStreamMarshaler.CopyToDelegate
CS.System.Drawing.ComIStreamMarshaler.CopyToDelegate = System.Drawing.ComIStreamMarshaler.CopyToDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.CopyToDelegate
function System.Drawing.ComIStreamMarshaler.CopyToDelegate.New(object, method) end
---@param this System.IntPtr
---@param pstm System.Runtime.InteropServices.ComTypes.IStream
---@param cb number
---@param pcbRead System.IntPtr
---@param pcbWritten System.IntPtr
---@return number
function System.Drawing.ComIStreamMarshaler.CopyToDelegate:Invoke(this, pstm, cb, pcbRead, pcbWritten) end
---@param this System.IntPtr
---@param pstm System.Runtime.InteropServices.ComTypes.IStream
---@param cb number
---@param pcbRead System.IntPtr
---@param pcbWritten System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.CopyToDelegate:BeginInvoke(this, pstm, cb, pcbRead, pcbWritten, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.CopyToDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.CommitDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.CommitDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.CommitDelegate System.Drawing.ComIStreamMarshaler.CommitDelegate
CS.System.Drawing.ComIStreamMarshaler.CommitDelegate = System.Drawing.ComIStreamMarshaler.CommitDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.CommitDelegate
function System.Drawing.ComIStreamMarshaler.CommitDelegate.New(object, method) end
---@param this System.IntPtr
---@param grfCommitFlags number
---@return number
function System.Drawing.ComIStreamMarshaler.CommitDelegate:Invoke(this, grfCommitFlags) end
---@param this System.IntPtr
---@param grfCommitFlags number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.CommitDelegate:BeginInvoke(this, grfCommitFlags, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.CommitDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.RevertDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.RevertDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.RevertDelegate System.Drawing.ComIStreamMarshaler.RevertDelegate
CS.System.Drawing.ComIStreamMarshaler.RevertDelegate = System.Drawing.ComIStreamMarshaler.RevertDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.RevertDelegate
function System.Drawing.ComIStreamMarshaler.RevertDelegate.New(object, method) end
---@param this System.IntPtr
---@return number
function System.Drawing.ComIStreamMarshaler.RevertDelegate:Invoke(this) end
---@param this System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.RevertDelegate:BeginInvoke(this, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.RevertDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.LockRegionDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.LockRegionDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.LockRegionDelegate System.Drawing.ComIStreamMarshaler.LockRegionDelegate
CS.System.Drawing.ComIStreamMarshaler.LockRegionDelegate = System.Drawing.ComIStreamMarshaler.LockRegionDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.LockRegionDelegate
function System.Drawing.ComIStreamMarshaler.LockRegionDelegate.New(object, method) end
---@param this System.IntPtr
---@param libOffset number
---@param cb number
---@param dwLockType number
---@return number
function System.Drawing.ComIStreamMarshaler.LockRegionDelegate:Invoke(this, libOffset, cb, dwLockType) end
---@param this System.IntPtr
---@param libOffset number
---@param cb number
---@param dwLockType number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.LockRegionDelegate:BeginInvoke(this, libOffset, cb, dwLockType, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.LockRegionDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate
CS.System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate = System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate
function System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate.New(object, method) end
---@param this System.IntPtr
---@param libOffset number
---@param cb number
---@param dwLockType number
---@return number
function System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate:Invoke(this, libOffset, cb, dwLockType) end
---@param this System.IntPtr
---@param libOffset number
---@param cb number
---@param dwLockType number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate:BeginInvoke(this, libOffset, cb, dwLockType, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.ComIStreamMarshaler.UnlockRegionDelegate:EndInvoke(result) end

---@class System.Drawing.ComIStreamMarshaler.StatDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.StatDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.StatDelegate System.Drawing.ComIStreamMarshaler.StatDelegate
CS.System.Drawing.ComIStreamMarshaler.StatDelegate = System.Drawing.ComIStreamMarshaler.StatDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.StatDelegate
function System.Drawing.ComIStreamMarshaler.StatDelegate.New(object, method) end
---@param this System.IntPtr
---@param out_pstatstg System.Runtime.InteropServices.ComTypes.STATSTG
---@param grfStatFlag number
---@return number,System.Runtime.InteropServices.ComTypes.STATSTG
function System.Drawing.ComIStreamMarshaler.StatDelegate:Invoke(this, out_pstatstg, grfStatFlag) end
---@param this System.IntPtr
---@param out_pstatstg System.Runtime.InteropServices.ComTypes.STATSTG
---@param grfStatFlag number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.Runtime.InteropServices.ComTypes.STATSTG
function System.Drawing.ComIStreamMarshaler.StatDelegate:BeginInvoke(this, out_pstatstg, grfStatFlag, callback, object) end
---@param out_pstatstg System.Runtime.InteropServices.ComTypes.STATSTG
---@param result System.IAsyncResult
---@return number,System.Runtime.InteropServices.ComTypes.STATSTG
function System.Drawing.ComIStreamMarshaler.StatDelegate:EndInvoke(out_pstatstg, result) end

---@class System.Drawing.ComIStreamMarshaler.CloneDelegate : System.MulticastDelegate
System.Drawing.ComIStreamMarshaler.CloneDelegate = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.CloneDelegate System.Drawing.ComIStreamMarshaler.CloneDelegate
CS.System.Drawing.ComIStreamMarshaler.CloneDelegate = System.Drawing.ComIStreamMarshaler.CloneDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.ComIStreamMarshaler.CloneDelegate
function System.Drawing.ComIStreamMarshaler.CloneDelegate.New(object, method) end
---@param this System.IntPtr
---@param out_ppstm System.IntPtr
---@return number,System.IntPtr
function System.Drawing.ComIStreamMarshaler.CloneDelegate:Invoke(this, out_ppstm) end
---@param this System.IntPtr
---@param out_ppstm System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.IntPtr
function System.Drawing.ComIStreamMarshaler.CloneDelegate:BeginInvoke(this, out_ppstm, callback, object) end
---@param out_ppstm System.IntPtr
---@param result System.IAsyncResult
---@return number,System.IntPtr
function System.Drawing.ComIStreamMarshaler.CloneDelegate:EndInvoke(out_ppstm, result) end

---@class System.Drawing.ComIStreamMarshaler.IStreamInterface : System.Object
System.Drawing.ComIStreamMarshaler.IStreamInterface = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.IStreamInterface System.Drawing.ComIStreamMarshaler.IStreamInterface
CS.System.Drawing.ComIStreamMarshaler.IStreamInterface = System.Drawing.ComIStreamMarshaler.IStreamInterface

---@return System.Drawing.ComIStreamMarshaler.IStreamInterface
function System.Drawing.ComIStreamMarshaler.IStreamInterface.New() end

---@class System.Drawing.ComIStreamMarshaler.IStreamVtbl : System.Object
System.Drawing.ComIStreamMarshaler.IStreamVtbl = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.IStreamVtbl System.Drawing.ComIStreamMarshaler.IStreamVtbl
CS.System.Drawing.ComIStreamMarshaler.IStreamVtbl = System.Drawing.ComIStreamMarshaler.IStreamVtbl

---@return System.Drawing.ComIStreamMarshaler.IStreamVtbl
function System.Drawing.ComIStreamMarshaler.IStreamVtbl.New() end

---@class System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper : System.Object
System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper
CS.System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper = System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper


---@class System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot : System.Object
System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot
CS.System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot = System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot

---@return System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot
function System.Drawing.ComIStreamMarshaler.ManagedToNativeWrapper.ReleaseSlot.New() end

---@class System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper : System.Object
System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper = {}
---@alias CS.System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper
CS.System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper = System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper

---@param pv System.Byte[]
---@param cb number
---@param pcbRead System.IntPtr
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:Read(pv, cb, pcbRead) end
---@param pv System.Byte[]
---@param cb number
---@param pcbWritten System.IntPtr
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:Write(pv, cb, pcbWritten) end
---@param dlibMove number
---@param dwOrigin number
---@param plibNewPosition System.IntPtr
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:Seek(dlibMove, dwOrigin, plibNewPosition) end
---@param libNewSize number
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:SetSize(libNewSize) end
---@param pstm System.Runtime.InteropServices.ComTypes.IStream
---@param cb number
---@param pcbRead System.IntPtr
---@param pcbWritten System.IntPtr
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:CopyTo(pstm, cb, pcbRead, pcbWritten) end
---@param grfCommitFlags number
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:Commit(grfCommitFlags) end
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:Revert() end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:LockRegion(libOffset, cb, dwLockType) end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:UnlockRegion(libOffset, cb, dwLockType) end
---@param out_pstatstg System.Runtime.InteropServices.ComTypes.STATSTG
---@param grfStatFlag number
---@return ,System.Runtime.InteropServices.ComTypes.STATSTG
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:Stat(out_pstatstg, grfStatFlag) end
---@param out_ppstm System.Runtime.InteropServices.ComTypes.IStream
---@return ,System.Runtime.InteropServices.ComTypes.IStream
function System.Drawing.ComIStreamMarshaler.NativeToManagedWrapper:Clone(out_ppstm) end

---@class System.Drawing.ComIStreamWrapper : System.Object
System.Drawing.ComIStreamWrapper = {}
---@alias CS.System.Drawing.ComIStreamWrapper System.Drawing.ComIStreamWrapper
CS.System.Drawing.ComIStreamWrapper = System.Drawing.ComIStreamWrapper

---@param pv System.Byte[]
---@param cb number
---@param pcbRead System.IntPtr
function System.Drawing.ComIStreamWrapper:Read(pv, cb, pcbRead) end
---@param pv System.Byte[]
---@param cb number
---@param pcbWritten System.IntPtr
function System.Drawing.ComIStreamWrapper:Write(pv, cb, pcbWritten) end
---@param dlibMove number
---@param dwOrigin number
---@param plibNewPosition System.IntPtr
function System.Drawing.ComIStreamWrapper:Seek(dlibMove, dwOrigin, plibNewPosition) end
---@param libNewSize number
function System.Drawing.ComIStreamWrapper:SetSize(libNewSize) end
---@param pstm System.Runtime.InteropServices.ComTypes.IStream
---@param cb number
---@param pcbRead System.IntPtr
---@param pcbWritten System.IntPtr
function System.Drawing.ComIStreamWrapper:CopyTo(pstm, cb, pcbRead, pcbWritten) end
---@param grfCommitFlags number
function System.Drawing.ComIStreamWrapper:Commit(grfCommitFlags) end
function System.Drawing.ComIStreamWrapper:Revert() end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.ComIStreamWrapper:LockRegion(libOffset, cb, dwLockType) end
---@param libOffset number
---@param cb number
---@param dwLockType number
function System.Drawing.ComIStreamWrapper:UnlockRegion(libOffset, cb, dwLockType) end
---@param out_pstatstg System.Runtime.InteropServices.ComTypes.STATSTG
---@param grfStatFlag number
---@return ,System.Runtime.InteropServices.ComTypes.STATSTG
function System.Drawing.ComIStreamWrapper:Stat(out_pstatstg, grfStatFlag) end
---@param out_ppstm System.Runtime.InteropServices.ComTypes.IStream
---@return ,System.Runtime.InteropServices.ComTypes.IStream
function System.Drawing.ComIStreamWrapper:Clone(out_ppstm) end

---@class System.Drawing.ContentAlignment
---@field TopLeft System.Drawing.ContentAlignment
---@field TopCenter System.Drawing.ContentAlignment
---@field TopRight System.Drawing.ContentAlignment
---@field MiddleLeft System.Drawing.ContentAlignment
---@field MiddleCenter System.Drawing.ContentAlignment
---@field MiddleRight System.Drawing.ContentAlignment
---@field BottomLeft System.Drawing.ContentAlignment
---@field BottomCenter System.Drawing.ContentAlignment
---@field BottomRight System.Drawing.ContentAlignment
System.Drawing.ContentAlignment = {}
---@alias CS.System.Drawing.ContentAlignment System.Drawing.ContentAlignment
CS.System.Drawing.ContentAlignment = System.Drawing.ContentAlignment


---@class System.Drawing.CopyPixelOperation
---@field Blackness System.Drawing.CopyPixelOperation
---@field CaptureBlt System.Drawing.CopyPixelOperation
---@field DestinationInvert System.Drawing.CopyPixelOperation
---@field MergeCopy System.Drawing.CopyPixelOperation
---@field MergePaint System.Drawing.CopyPixelOperation
---@field NoMirrorBitmap System.Drawing.CopyPixelOperation
---@field NotSourceCopy System.Drawing.CopyPixelOperation
---@field NotSourceErase System.Drawing.CopyPixelOperation
---@field PatCopy System.Drawing.CopyPixelOperation
---@field PatInvert System.Drawing.CopyPixelOperation
---@field PatPaint System.Drawing.CopyPixelOperation
---@field SourceAnd System.Drawing.CopyPixelOperation
---@field SourceCopy System.Drawing.CopyPixelOperation
---@field SourceErase System.Drawing.CopyPixelOperation
---@field SourceInvert System.Drawing.CopyPixelOperation
---@field SourcePaint System.Drawing.CopyPixelOperation
---@field Whiteness System.Drawing.CopyPixelOperation
System.Drawing.CopyPixelOperation = {}
---@alias CS.System.Drawing.CopyPixelOperation System.Drawing.CopyPixelOperation
CS.System.Drawing.CopyPixelOperation = System.Drawing.CopyPixelOperation


---@class System.Drawing.ExternDll : System.Object
---@field Gdiplus string
---@field User32 string
---@field Gdi32 string
---@field Kernel32 string
---@field Winspool string
---@field Comdlg32 string
---@field Comctl32 string
---@field Shell32 string
---@field Oleaut32 string
System.Drawing.ExternDll = {}
---@alias CS.System.Drawing.ExternDll System.Drawing.ExternDll
CS.System.Drawing.ExternDll = System.Drawing.ExternDll

---@return System.Drawing.ExternDll
function System.Drawing.ExternDll.New() end

---@class System.Drawing.Font : System.MarshalByRefObject
---@field Bold boolean
---@field FontFamily System.Drawing.FontFamily
---@field GdiCharSet number
---@field GdiVerticalFont boolean
---@field Height number
---@field IsSystemFont boolean
---@field Italic boolean
---@field Name string
---@field Size number
---@field SizeInPoints number
---@field Strikeout boolean
---@field Style System.Drawing.FontStyle
---@field SystemFontName string
---@field OriginalFontName string
---@field Underline boolean
---@field Unit System.Drawing.GraphicsUnit
System.Drawing.Font = {}
---@alias CS.System.Drawing.Font System.Drawing.Font
CS.System.Drawing.Font = System.Drawing.Font

---@overload fun(prototype: System.Drawing.Font, newStyle: System.Drawing.FontStyle) : System.Drawing.Font
---@overload fun(family: System.Drawing.FontFamily, emSize: number, unit: System.Drawing.GraphicsUnit) : System.Drawing.Font
---@overload fun(familyName: string, emSize: number, unit: System.Drawing.GraphicsUnit) : System.Drawing.Font
---@overload fun(family: System.Drawing.FontFamily, emSize: number) : System.Drawing.Font
---@overload fun(family: System.Drawing.FontFamily, emSize: number, style: System.Drawing.FontStyle) : System.Drawing.Font
---@overload fun(family: System.Drawing.FontFamily, emSize: number, style: System.Drawing.FontStyle, unit: System.Drawing.GraphicsUnit) : System.Drawing.Font
---@overload fun(family: System.Drawing.FontFamily, emSize: number, style: System.Drawing.FontStyle, unit: System.Drawing.GraphicsUnit, gdiCharSet: number) : System.Drawing.Font
---@overload fun(family: System.Drawing.FontFamily, emSize: number, style: System.Drawing.FontStyle, unit: System.Drawing.GraphicsUnit, gdiCharSet: number, gdiVerticalFont: boolean) : System.Drawing.Font
---@overload fun(familyName: string, emSize: number) : System.Drawing.Font
---@overload fun(familyName: string, emSize: number, style: System.Drawing.FontStyle) : System.Drawing.Font
---@overload fun(familyName: string, emSize: number, style: System.Drawing.FontStyle, unit: System.Drawing.GraphicsUnit) : System.Drawing.Font
---@overload fun(familyName: string, emSize: number, style: System.Drawing.FontStyle, unit: System.Drawing.GraphicsUnit, gdiCharSet: number) : System.Drawing.Font
---@param familyName string
---@param emSize number
---@param style System.Drawing.FontStyle
---@param unit System.Drawing.GraphicsUnit
---@param gdiCharSet number
---@param gdiVerticalFont boolean
---@return System.Drawing.Font
function System.Drawing.Font.New(familyName, emSize, style, unit, gdiCharSet, gdiVerticalFont) end
---@param hfont System.IntPtr
---@return System.Drawing.Font
function System.Drawing.Font.FromHfont(hfont) end
---@param hdc System.IntPtr
---@return System.Drawing.Font
function System.Drawing.Font.FromHdc(hdc) end
---@overload fun(lf: System.Object, hdc: System.IntPtr) : System.Drawing.Font
---@param lf System.Object
---@return System.Drawing.Font
function System.Drawing.Font.FromLogFont(lf) end
function System.Drawing.Font:Dispose() end
---@return System.IntPtr
function System.Drawing.Font:ToHfont() end
---@return System.Object
function System.Drawing.Font:Clone() end
---@param obj System.Object
---@return boolean
function System.Drawing.Font:Equals(obj) end
---@return number
function System.Drawing.Font:GetHashCode() end
---@overload fun() : number
---@overload fun(self: System.Drawing.Font, graphics: System.Drawing.Graphics) : number
---@param dpi number
---@return number
function System.Drawing.Font:GetHeight(dpi) end
---@overload fun(self: System.Drawing.Font, logFont: System.Object)
---@param logFont System.Object
---@param graphics System.Drawing.Graphics
function System.Drawing.Font:ToLogFont(logFont, graphics) end
---@return string
function System.Drawing.Font:ToString() end

---@class System.Drawing.FontConverter : System.ComponentModel.TypeConverter
System.Drawing.FontConverter = {}
---@alias CS.System.Drawing.FontConverter System.Drawing.FontConverter
CS.System.Drawing.FontConverter = System.Drawing.FontConverter

---@return System.Drawing.FontConverter
function System.Drawing.FontConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.FontConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.FontConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.FontConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.FontConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.Drawing.FontConverter:CreateInstance(context, propertyValues) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.FontConverter:GetCreateInstanceSupported(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Drawing.FontConverter:GetProperties(context, value, attributes) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.FontConverter:GetPropertiesSupported(context) end

---@class System.Drawing.FontConverter.FontNameConverter : System.ComponentModel.TypeConverter
System.Drawing.FontConverter.FontNameConverter = {}
---@alias CS.System.Drawing.FontConverter.FontNameConverter System.Drawing.FontConverter.FontNameConverter
CS.System.Drawing.FontConverter.FontNameConverter = System.Drawing.FontConverter.FontNameConverter

---@return System.Drawing.FontConverter.FontNameConverter
function System.Drawing.FontConverter.FontNameConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.FontConverter.FontNameConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.FontConverter.FontNameConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.Drawing.FontConverter.FontNameConverter:GetStandardValues(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.FontConverter.FontNameConverter:GetStandardValuesExclusive(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.FontConverter.FontNameConverter:GetStandardValuesSupported(context) end

---@class System.Drawing.FontConverter.FontUnitConverter : System.ComponentModel.EnumConverter
System.Drawing.FontConverter.FontUnitConverter = {}
---@alias CS.System.Drawing.FontConverter.FontUnitConverter System.Drawing.FontConverter.FontUnitConverter
CS.System.Drawing.FontConverter.FontUnitConverter = System.Drawing.FontConverter.FontUnitConverter

---@return System.Drawing.FontConverter.FontUnitConverter
function System.Drawing.FontConverter.FontUnitConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.Drawing.FontConverter.FontUnitConverter:GetStandardValues(context) end

---@class System.Drawing.FontFamily : System.MarshalByRefObject
---@field GenericMonospace System.Drawing.FontFamily
---@field GenericSansSerif System.Drawing.FontFamily
---@field GenericSerif System.Drawing.FontFamily
---@field Families System.Drawing.FontFamily[]
---@field Name string
System.Drawing.FontFamily = {}
---@alias CS.System.Drawing.FontFamily System.Drawing.FontFamily
CS.System.Drawing.FontFamily = System.Drawing.FontFamily

---@overload fun(genericFamily: System.Drawing.Text.GenericFontFamilies) : System.Drawing.FontFamily
---@overload fun(name: string) : System.Drawing.FontFamily
---@param name string
---@param fontCollection System.Drawing.Text.FontCollection
---@return System.Drawing.FontFamily
function System.Drawing.FontFamily.New(name, fontCollection) end
---@param graphics System.Drawing.Graphics
---@return System.Drawing.FontFamily[]
function System.Drawing.FontFamily.GetFamilies(graphics) end
---@param style System.Drawing.FontStyle
---@return number
function System.Drawing.FontFamily:GetCellAscent(style) end
---@param style System.Drawing.FontStyle
---@return number
function System.Drawing.FontFamily:GetCellDescent(style) end
---@param style System.Drawing.FontStyle
---@return number
function System.Drawing.FontFamily:GetEmHeight(style) end
---@param style System.Drawing.FontStyle
---@return number
function System.Drawing.FontFamily:GetLineSpacing(style) end
---@param style System.Drawing.FontStyle
---@return boolean
function System.Drawing.FontFamily:IsStyleAvailable(style) end
function System.Drawing.FontFamily:Dispose() end
---@param obj System.Object
---@return boolean
function System.Drawing.FontFamily:Equals(obj) end
---@return number
function System.Drawing.FontFamily:GetHashCode() end
---@param language number
---@return string
function System.Drawing.FontFamily:GetName(language) end
---@return string
function System.Drawing.FontFamily:ToString() end

---@class System.Drawing.Graphics : System.MarshalByRefObject
---@field Clip System.Drawing.Region
---@field ClipBounds System.Drawing.RectangleF
---@field CompositingMode System.Drawing.Drawing2D.CompositingMode
---@field CompositingQuality System.Drawing.Drawing2D.CompositingQuality
---@field DpiX number
---@field DpiY number
---@field InterpolationMode System.Drawing.Drawing2D.InterpolationMode
---@field IsClipEmpty boolean
---@field IsVisibleClipEmpty boolean
---@field PageScale number
---@field PageUnit System.Drawing.GraphicsUnit
---@field PixelOffsetMode System.Drawing.Drawing2D.PixelOffsetMode
---@field RenderingOrigin System.Drawing.Point
---@field SmoothingMode System.Drawing.Drawing2D.SmoothingMode
---@field TextContrast number
---@field TextRenderingHint System.Drawing.Text.TextRenderingHint
---@field Transform System.Drawing.Drawing2D.Matrix
---@field VisibleClipBounds System.Drawing.RectangleF
System.Drawing.Graphics = {}
---@alias CS.System.Drawing.Graphics System.Drawing.Graphics
CS.System.Drawing.Graphics = System.Drawing.Graphics

---@overload fun(hdc: System.IntPtr) : System.Drawing.Graphics
---@param hdc System.IntPtr
---@param hdevice System.IntPtr
---@return System.Drawing.Graphics
function System.Drawing.Graphics.FromHdc(hdc, hdevice) end
---@param hdc System.IntPtr
---@return System.Drawing.Graphics
function System.Drawing.Graphics.FromHdcInternal(hdc) end
---@param hwnd System.IntPtr
---@return System.Drawing.Graphics
function System.Drawing.Graphics.FromHwnd(hwnd) end
---@param hwnd System.IntPtr
---@return System.Drawing.Graphics
function System.Drawing.Graphics.FromHwndInternal(hwnd) end
---@param image System.Drawing.Image
---@return System.Drawing.Graphics
function System.Drawing.Graphics.FromImage(image) end
---@return System.IntPtr
function System.Drawing.Graphics.GetHalftonePalette() end
---@param data System.Byte[]
function System.Drawing.Graphics:AddMetafileComment(data) end
---@overload fun() : System.Drawing.Drawing2D.GraphicsContainer
---@overload fun(self: System.Drawing.Graphics, dstrect: System.Drawing.Rectangle, srcrect: System.Drawing.Rectangle, unit: System.Drawing.GraphicsUnit) : System.Drawing.Drawing2D.GraphicsContainer
---@param dstrect System.Drawing.RectangleF
---@param srcrect System.Drawing.RectangleF
---@param unit System.Drawing.GraphicsUnit
---@return System.Drawing.Drawing2D.GraphicsContainer
function System.Drawing.Graphics:BeginContainer(dstrect, srcrect, unit) end
---@param color System.Drawing.Color
function System.Drawing.Graphics:Clear(color) end
---@overload fun(self: System.Drawing.Graphics, upperLeftSource: System.Drawing.Point, upperLeftDestination: System.Drawing.Point, blockRegionSize: System.Drawing.Size)
---@overload fun(self: System.Drawing.Graphics, upperLeftSource: System.Drawing.Point, upperLeftDestination: System.Drawing.Point, blockRegionSize: System.Drawing.Size, copyPixelOperation: System.Drawing.CopyPixelOperation)
---@overload fun(self: System.Drawing.Graphics, sourceX: number, sourceY: number, destinationX: number, destinationY: number, blockRegionSize: System.Drawing.Size)
---@param sourceX number
---@param sourceY number
---@param destinationX number
---@param destinationY number
---@param blockRegionSize System.Drawing.Size
---@param copyPixelOperation System.Drawing.CopyPixelOperation
function System.Drawing.Graphics:CopyFromScreen(sourceX, sourceY, destinationX, destinationY, blockRegionSize, copyPixelOperation) end
function System.Drawing.Graphics:Dispose() end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rect: System.Drawing.Rectangle, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rect: System.Drawing.RectangleF, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, x: number, y: number, width: number, height: number, startAngle: number, sweepAngle: number)
---@param pen System.Drawing.Pen
---@param x number
---@param y number
---@param width number
---@param height number
---@param startAngle number
---@param sweepAngle number
function System.Drawing.Graphics:DrawArc(pen, x, y, width, height, startAngle, sweepAngle) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, pt1: System.Drawing.PointF, pt2: System.Drawing.PointF, pt3: System.Drawing.PointF, pt4: System.Drawing.PointF)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, pt1: System.Drawing.Point, pt2: System.Drawing.Point, pt3: System.Drawing.Point, pt4: System.Drawing.Point)
---@param pen System.Drawing.Pen
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
function System.Drawing.Graphics:DrawBezier(pen, x1, y1, x2, y2, x3, y3, x4, y4) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.Point[])
---@param pen System.Drawing.Pen
---@param points System.Drawing.PointF[]
function System.Drawing.Graphics:DrawBeziers(pen, points) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.PointF[])
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.Point[])
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.Point[], tension: number, fillmode: System.Drawing.Drawing2D.FillMode)
---@param pen System.Drawing.Pen
---@param points System.Drawing.PointF[]
---@param tension number
---@param fillmode System.Drawing.Drawing2D.FillMode
function System.Drawing.Graphics:DrawClosedCurve(pen, points, tension, fillmode) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.Point[])
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.PointF[])
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.PointF[], tension: number)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.Point[], tension: number)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.PointF[], offset: number, numberOfSegments: number)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.Point[], offset: number, numberOfSegments: number, tension: number)
---@param pen System.Drawing.Pen
---@param points System.Drawing.PointF[]
---@param offset number
---@param numberOfSegments number
---@param tension number
function System.Drawing.Graphics:DrawCurve(pen, points, offset, numberOfSegments, tension) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rect: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, x: number, y: number, width: number, height: number)
---@param pen System.Drawing.Pen
---@param x number
---@param y number
---@param width number
---@param height number
function System.Drawing.Graphics:DrawEllipse(pen, x, y, width, height) end
---@overload fun(self: System.Drawing.Graphics, icon: System.Drawing.Icon, targetRect: System.Drawing.Rectangle)
---@param icon System.Drawing.Icon
---@param x number
---@param y number
function System.Drawing.Graphics:DrawIcon(icon, x, y) end
---@param icon System.Drawing.Icon
---@param targetRect System.Drawing.Rectangle
function System.Drawing.Graphics:DrawIconUnstretched(icon, targetRect) end
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, rect: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, point: System.Drawing.PointF)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.Point[])
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, point: System.Drawing.Point)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.PointF[])
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, x: number, y: number)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, x: number, y: number)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.RectangleF, srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.Point[], srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.Point[], srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, x: number, y: number, width: number, height: number)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, x: number, y: number, srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, x: number, y: number, width: number, height: number)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, x: number, y: number, srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes, callback: System.Drawing.Graphics.DrawImageAbort)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.Point[], srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes, callback: System.Drawing.Graphics.DrawImageAbort)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.Point[], srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes, callback: System.Drawing.Graphics.DrawImageAbort, callbackData: number)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcX: number, srcY: number, srcWidth: number, srcHeight: number, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes, callback: System.Drawing.Graphics.DrawImageAbort, callbackData: number)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcX: number, srcY: number, srcWidth: number, srcHeight: number, srcUnit: System.Drawing.GraphicsUnit)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcX: number, srcY: number, srcWidth: number, srcHeight: number, srcUnit: System.Drawing.GraphicsUnit, imageAttrs: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcX: number, srcY: number, srcWidth: number, srcHeight: number, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcX: number, srcY: number, srcWidth: number, srcHeight: number, srcUnit: System.Drawing.GraphicsUnit, imageAttr: System.Drawing.Imaging.ImageAttributes, callback: System.Drawing.Graphics.DrawImageAbort)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcX: number, srcY: number, srcWidth: number, srcHeight: number, srcUnit: System.Drawing.GraphicsUnit, imageAttrs: System.Drawing.Imaging.ImageAttributes, callback: System.Drawing.Graphics.DrawImageAbort)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, destRect: System.Drawing.Rectangle, srcX: number, srcY: number, srcWidth: number, srcHeight: number, srcUnit: System.Drawing.GraphicsUnit, imageAttrs: System.Drawing.Imaging.ImageAttributes, callback: System.Drawing.Graphics.DrawImageAbort, callbackData: System.IntPtr)
---@param image System.Drawing.Image
---@param destRect System.Drawing.Rectangle
---@param srcX number
---@param srcY number
---@param srcWidth number
---@param srcHeight number
---@param srcUnit System.Drawing.GraphicsUnit
---@param imageAttrs System.Drawing.Imaging.ImageAttributes
---@param callback System.Drawing.Graphics.DrawImageAbort
---@param callbackData System.IntPtr
function System.Drawing.Graphics:DrawImage(image, destRect, srcX, srcY, srcWidth, srcHeight, srcUnit, imageAttrs, callback, callbackData) end
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, point: System.Drawing.Point)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Graphics, image: System.Drawing.Image, x: number, y: number)
---@param image System.Drawing.Image
---@param x number
---@param y number
---@param width number
---@param height number
function System.Drawing.Graphics:DrawImageUnscaled(image, x, y, width, height) end
---@param image System.Drawing.Image
---@param rect System.Drawing.Rectangle
function System.Drawing.Graphics:DrawImageUnscaledAndClipped(image, rect) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, pt1: System.Drawing.PointF, pt2: System.Drawing.PointF)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, pt1: System.Drawing.Point, pt2: System.Drawing.Point)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, x1: number, y1: number, x2: number, y2: number)
---@param pen System.Drawing.Pen
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function System.Drawing.Graphics:DrawLine(pen, x1, y1, x2, y2) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.PointF[])
---@param pen System.Drawing.Pen
---@param points System.Drawing.Point[]
function System.Drawing.Graphics:DrawLines(pen, points) end
---@param pen System.Drawing.Pen
---@param path System.Drawing.Drawing2D.GraphicsPath
function System.Drawing.Graphics:DrawPath(pen, path) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rect: System.Drawing.Rectangle, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rect: System.Drawing.RectangleF, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, x: number, y: number, width: number, height: number, startAngle: number, sweepAngle: number)
---@param pen System.Drawing.Pen
---@param x number
---@param y number
---@param width number
---@param height number
---@param startAngle number
---@param sweepAngle number
function System.Drawing.Graphics:DrawPie(pen, x, y, width, height, startAngle, sweepAngle) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, points: System.Drawing.Point[])
---@param pen System.Drawing.Pen
---@param points System.Drawing.PointF[]
function System.Drawing.Graphics:DrawPolygon(pen, points) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, x: number, y: number, width: number, height: number)
---@param pen System.Drawing.Pen
---@param x number
---@param y number
---@param width number
---@param height number
function System.Drawing.Graphics:DrawRectangle(pen, x, y, width, height) end
---@overload fun(self: System.Drawing.Graphics, pen: System.Drawing.Pen, rects: System.Drawing.RectangleF[])
---@param pen System.Drawing.Pen
---@param rects System.Drawing.Rectangle[]
function System.Drawing.Graphics:DrawRectangles(pen, rects) end
---@overload fun(self: System.Drawing.Graphics, s: string, font: System.Drawing.Font, brush: System.Drawing.Brush, layoutRectangle: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Graphics, s: string, font: System.Drawing.Font, brush: System.Drawing.Brush, point: System.Drawing.PointF)
---@overload fun(self: System.Drawing.Graphics, s: string, font: System.Drawing.Font, brush: System.Drawing.Brush, point: System.Drawing.PointF, format: System.Drawing.StringFormat)
---@overload fun(self: System.Drawing.Graphics, s: string, font: System.Drawing.Font, brush: System.Drawing.Brush, x: number, y: number)
---@overload fun(self: System.Drawing.Graphics, s: string, font: System.Drawing.Font, brush: System.Drawing.Brush, x: number, y: number, format: System.Drawing.StringFormat)
---@param s string
---@param font System.Drawing.Font
---@param brush System.Drawing.Brush
---@param layoutRectangle System.Drawing.RectangleF
---@param format System.Drawing.StringFormat
function System.Drawing.Graphics:DrawString(s, font, brush, layoutRectangle, format) end
---@param container System.Drawing.Drawing2D.GraphicsContainer
function System.Drawing.Graphics:EndContainer(container) end
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.Point[], callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.RectangleF, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.PointF[], callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.Rectangle, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.Point, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.PointF, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.PointF, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.Rectangle, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.PointF[], callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.Point, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.Point[], callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.RectangleF, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.PointF, srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.Point, srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.Point[], srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.RectangleF, srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.Rectangle, srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.RectangleF, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.Point, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.PointF, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.Point[], callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.PointF[], callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.Rectangle, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.Rectangle, srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.RectangleF, srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.PointF, srcRect: System.Drawing.RectangleF, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.Point, srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.Point[], srcRect: System.Drawing.Rectangle, srcUnit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.Point[], srcRect: System.Drawing.Rectangle, unit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.Rectangle, srcRect: System.Drawing.Rectangle, unit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoint: System.Drawing.Point, srcRect: System.Drawing.Rectangle, unit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destRect: System.Drawing.RectangleF, srcRect: System.Drawing.RectangleF, unit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@overload fun(self: System.Drawing.Graphics, metafile: System.Drawing.Imaging.Metafile, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, unit: System.Drawing.GraphicsUnit, callback: System.Drawing.Graphics.EnumerateMetafileProc, callbackData: System.IntPtr, imageAttr: System.Drawing.Imaging.ImageAttributes)
---@param metafile System.Drawing.Imaging.Metafile
---@param destPoint System.Drawing.PointF
---@param srcRect System.Drawing.RectangleF
---@param unit System.Drawing.GraphicsUnit
---@param callback System.Drawing.Graphics.EnumerateMetafileProc
---@param callbackData System.IntPtr
---@param imageAttr System.Drawing.Imaging.ImageAttributes
function System.Drawing.Graphics:EnumerateMetafile(metafile, destPoint, srcRect, unit, callback, callbackData, imageAttr) end
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.Rectangle)
---@param region System.Drawing.Region
function System.Drawing.Graphics:ExcludeClip(region) end
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.PointF[])
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.Point[])
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.PointF[], fillmode: System.Drawing.Drawing2D.FillMode)
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.Point[], fillmode: System.Drawing.Drawing2D.FillMode)
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.PointF[], fillmode: System.Drawing.Drawing2D.FillMode, tension: number)
---@param brush System.Drawing.Brush
---@param points System.Drawing.Point[]
---@param fillmode System.Drawing.Drawing2D.FillMode
---@param tension number
function System.Drawing.Graphics:FillClosedCurve(brush, points, fillmode, tension) end
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, rect: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, x: number, y: number, width: number, height: number)
---@param brush System.Drawing.Brush
---@param x number
---@param y number
---@param width number
---@param height number
function System.Drawing.Graphics:FillEllipse(brush, x, y, width, height) end
---@param brush System.Drawing.Brush
---@param path System.Drawing.Drawing2D.GraphicsPath
function System.Drawing.Graphics:FillPath(brush, path) end
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, rect: System.Drawing.Rectangle, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, x: number, y: number, width: number, height: number, startAngle: number, sweepAngle: number)
---@param brush System.Drawing.Brush
---@param x number
---@param y number
---@param width number
---@param height number
---@param startAngle number
---@param sweepAngle number
function System.Drawing.Graphics:FillPie(brush, x, y, width, height, startAngle, sweepAngle) end
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.PointF[])
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.Point[])
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, points: System.Drawing.Point[], fillMode: System.Drawing.Drawing2D.FillMode)
---@param brush System.Drawing.Brush
---@param points System.Drawing.PointF[]
---@param fillMode System.Drawing.Drawing2D.FillMode
function System.Drawing.Graphics:FillPolygon(brush, points, fillMode) end
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, rect: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, x: number, y: number, width: number, height: number)
---@param brush System.Drawing.Brush
---@param x number
---@param y number
---@param width number
---@param height number
function System.Drawing.Graphics:FillRectangle(brush, x, y, width, height) end
---@overload fun(self: System.Drawing.Graphics, brush: System.Drawing.Brush, rects: System.Drawing.Rectangle[])
---@param brush System.Drawing.Brush
---@param rects System.Drawing.RectangleF[]
function System.Drawing.Graphics:FillRectangles(brush, rects) end
---@param brush System.Drawing.Brush
---@param region System.Drawing.Region
function System.Drawing.Graphics:FillRegion(brush, region) end
---@overload fun()
---@param intention System.Drawing.Drawing2D.FlushIntention
function System.Drawing.Graphics:Flush(intention) end
---@return System.IntPtr
function System.Drawing.Graphics:GetHdc() end
---@param color System.Drawing.Color
---@return System.Drawing.Color
function System.Drawing.Graphics:GetNearestColor(color) end
---@overload fun(self: System.Drawing.Graphics, region: System.Drawing.Region)
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.RectangleF)
---@param rect System.Drawing.Rectangle
function System.Drawing.Graphics:IntersectClip(rect) end
---@overload fun(self: System.Drawing.Graphics, point: System.Drawing.Point) : boolean
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.RectangleF) : boolean
---@overload fun(self: System.Drawing.Graphics, point: System.Drawing.PointF) : boolean
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.Rectangle) : boolean
---@overload fun(self: System.Drawing.Graphics, x: number, y: number) : boolean
---@overload fun(self: System.Drawing.Graphics, x: number, y: number) : boolean
---@overload fun(self: System.Drawing.Graphics, x: number, y: number, width: number, height: number) : boolean
---@param x number
---@param y number
---@param width number
---@param height number
---@return boolean
function System.Drawing.Graphics:IsVisible(x, y, width, height) end
---@param text string
---@param font System.Drawing.Font
---@param layoutRect System.Drawing.RectangleF
---@param stringFormat System.Drawing.StringFormat
---@return System.Drawing.Region[]
function System.Drawing.Graphics:MeasureCharacterRanges(text, font, layoutRect, stringFormat) end
---@overload fun(self: System.Drawing.Graphics, text: string, font: System.Drawing.Font) : System.Drawing.SizeF
---@overload fun(self: System.Drawing.Graphics, text: string, font: System.Drawing.Font, layoutArea: System.Drawing.SizeF) : System.Drawing.SizeF
---@overload fun(self: System.Drawing.Graphics, text: string, font: System.Drawing.Font, width: number) : System.Drawing.SizeF
---@overload fun(self: System.Drawing.Graphics, text: string, font: System.Drawing.Font, layoutArea: System.Drawing.SizeF, stringFormat: System.Drawing.StringFormat) : System.Drawing.SizeF
---@overload fun(self: System.Drawing.Graphics, text: string, font: System.Drawing.Font, width: number, format: System.Drawing.StringFormat) : System.Drawing.SizeF
---@overload fun(self: System.Drawing.Graphics, text: string, font: System.Drawing.Font, origin: System.Drawing.PointF, stringFormat: System.Drawing.StringFormat) : System.Drawing.SizeF
---@param text string
---@param font System.Drawing.Font
---@param layoutArea System.Drawing.SizeF
---@param stringFormat System.Drawing.StringFormat
---@param out_charactersFitted number
---@param out_linesFilled number
---@return System.Drawing.SizeF,number,number
function System.Drawing.Graphics:MeasureString(text, font, layoutArea, stringFormat, out_charactersFitted, out_linesFilled) end
---@overload fun(self: System.Drawing.Graphics, matrix: System.Drawing.Drawing2D.Matrix)
---@param matrix System.Drawing.Drawing2D.Matrix
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Graphics:MultiplyTransform(matrix, order) end
---@overload fun(self: System.Drawing.Graphics, hdc: System.IntPtr)
function System.Drawing.Graphics:ReleaseHdc() end
---@param hdc System.IntPtr
function System.Drawing.Graphics:ReleaseHdcInternal(hdc) end
function System.Drawing.Graphics:ResetClip() end
function System.Drawing.Graphics:ResetTransform() end
---@param gstate System.Drawing.Drawing2D.GraphicsState
function System.Drawing.Graphics:Restore(gstate) end
---@overload fun(self: System.Drawing.Graphics, angle: number)
---@param angle number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Graphics:RotateTransform(angle, order) end
---@return System.Drawing.Drawing2D.GraphicsState
function System.Drawing.Graphics:Save() end
---@overload fun(self: System.Drawing.Graphics, sx: number, sy: number)
---@param sx number
---@param sy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Graphics:ScaleTransform(sx, sy, order) end
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Graphics, path: System.Drawing.Drawing2D.GraphicsPath)
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Graphics, g: System.Drawing.Graphics)
---@overload fun(self: System.Drawing.Graphics, g: System.Drawing.Graphics, combineMode: System.Drawing.Drawing2D.CombineMode)
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.Rectangle, combineMode: System.Drawing.Drawing2D.CombineMode)
---@overload fun(self: System.Drawing.Graphics, rect: System.Drawing.RectangleF, combineMode: System.Drawing.Drawing2D.CombineMode)
---@overload fun(self: System.Drawing.Graphics, region: System.Drawing.Region, combineMode: System.Drawing.Drawing2D.CombineMode)
---@param path System.Drawing.Drawing2D.GraphicsPath
---@param combineMode System.Drawing.Drawing2D.CombineMode
function System.Drawing.Graphics:SetClip(path, combineMode) end
---@overload fun(self: System.Drawing.Graphics, destSpace: System.Drawing.Drawing2D.CoordinateSpace, srcSpace: System.Drawing.Drawing2D.CoordinateSpace, pts: System.Drawing.PointF[])
---@param destSpace System.Drawing.Drawing2D.CoordinateSpace
---@param srcSpace System.Drawing.Drawing2D.CoordinateSpace
---@param pts System.Drawing.Point[]
function System.Drawing.Graphics:TransformPoints(destSpace, srcSpace, pts) end
---@overload fun(self: System.Drawing.Graphics, dx: number, dy: number)
---@param dx number
---@param dy number
function System.Drawing.Graphics:TranslateClip(dx, dy) end
---@overload fun(self: System.Drawing.Graphics, dx: number, dy: number)
---@param dx number
---@param dy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Graphics:TranslateTransform(dx, dy, order) end
---@return System.Object
function System.Drawing.Graphics:GetContextInfo() end

---@class System.Drawing.Graphics.EnumerateMetafileProc : System.MulticastDelegate
System.Drawing.Graphics.EnumerateMetafileProc = {}
---@alias CS.System.Drawing.Graphics.EnumerateMetafileProc System.Drawing.Graphics.EnumerateMetafileProc
CS.System.Drawing.Graphics.EnumerateMetafileProc = System.Drawing.Graphics.EnumerateMetafileProc

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Graphics.EnumerateMetafileProc
function System.Drawing.Graphics.EnumerateMetafileProc.New(object, method) end
---@param recordType System.Drawing.Imaging.EmfPlusRecordType
---@param flags number
---@param dataSize number
---@param data System.IntPtr
---@param callbackData System.Drawing.Imaging.PlayRecordCallback
---@return boolean
function System.Drawing.Graphics.EnumerateMetafileProc:Invoke(recordType, flags, dataSize, data, callbackData) end
---@param recordType System.Drawing.Imaging.EmfPlusRecordType
---@param flags number
---@param dataSize number
---@param data System.IntPtr
---@param callbackData System.Drawing.Imaging.PlayRecordCallback
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Graphics.EnumerateMetafileProc:BeginInvoke(recordType, flags, dataSize, data, callbackData, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Drawing.Graphics.EnumerateMetafileProc:EndInvoke(result) end

---@class System.Drawing.Graphics.DrawImageAbort : System.MulticastDelegate
System.Drawing.Graphics.DrawImageAbort = {}
---@alias CS.System.Drawing.Graphics.DrawImageAbort System.Drawing.Graphics.DrawImageAbort
CS.System.Drawing.Graphics.DrawImageAbort = System.Drawing.Graphics.DrawImageAbort

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Graphics.DrawImageAbort
function System.Drawing.Graphics.DrawImageAbort.New(object, method) end
---@param callbackdata System.IntPtr
---@return boolean
function System.Drawing.Graphics.DrawImageAbort:Invoke(callbackdata) end
---@param callbackdata System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Graphics.DrawImageAbort:BeginInvoke(callbackdata, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Drawing.Graphics.DrawImageAbort:EndInvoke(result) end

---@class System.Drawing.GraphicsUnit
---@field World System.Drawing.GraphicsUnit
---@field Display System.Drawing.GraphicsUnit
---@field Pixel System.Drawing.GraphicsUnit
---@field Point System.Drawing.GraphicsUnit
---@field Inch System.Drawing.GraphicsUnit
---@field Document System.Drawing.GraphicsUnit
---@field Millimeter System.Drawing.GraphicsUnit
System.Drawing.GraphicsUnit = {}
---@alias CS.System.Drawing.GraphicsUnit System.Drawing.GraphicsUnit
CS.System.Drawing.GraphicsUnit = System.Drawing.GraphicsUnit


---@class System.Drawing.Icon : System.MarshalByRefObject
---@field Handle System.IntPtr
---@field Height number
---@field Size System.Drawing.Size
---@field Width number
System.Drawing.Icon = {}
---@alias CS.System.Drawing.Icon System.Drawing.Icon
CS.System.Drawing.Icon = System.Drawing.Icon

---@overload fun(original: System.Drawing.Icon, width: number, height: number) : System.Drawing.Icon
---@overload fun(original: System.Drawing.Icon, size: System.Drawing.Size) : System.Drawing.Icon
---@overload fun(stream: System.IO.Stream) : System.Drawing.Icon
---@overload fun(stream: System.IO.Stream, width: number, height: number) : System.Drawing.Icon
---@overload fun(fileName: string) : System.Drawing.Icon
---@overload fun(type: System.Type, resource: string) : System.Drawing.Icon
---@overload fun(stream: System.IO.Stream, size: System.Drawing.Size) : System.Drawing.Icon
---@overload fun(fileName: string, width: number, height: number) : System.Drawing.Icon
---@param fileName string
---@param size System.Drawing.Size
---@return System.Drawing.Icon
function System.Drawing.Icon.New(fileName, size) end
---@param filePath string
---@return System.Drawing.Icon
function System.Drawing.Icon.ExtractAssociatedIcon(filePath) end
---@param handle System.IntPtr
---@return System.Drawing.Icon
function System.Drawing.Icon.FromHandle(handle) end
function System.Drawing.Icon:Dispose() end
---@return System.Object
function System.Drawing.Icon:Clone() end
---@param outputStream System.IO.Stream
function System.Drawing.Icon:Save(outputStream) end
---@return System.Drawing.Bitmap
function System.Drawing.Icon:ToBitmap() end
---@return string
function System.Drawing.Icon:ToString() end

---@class System.Drawing.Icon.IconDirEntry : System.ValueType
System.Drawing.Icon.IconDirEntry = {}
---@alias CS.System.Drawing.Icon.IconDirEntry System.Drawing.Icon.IconDirEntry
CS.System.Drawing.Icon.IconDirEntry = System.Drawing.Icon.IconDirEntry


---@class System.Drawing.Icon.IconDir : System.ValueType
System.Drawing.Icon.IconDir = {}
---@alias CS.System.Drawing.Icon.IconDir System.Drawing.Icon.IconDir
CS.System.Drawing.Icon.IconDir = System.Drawing.Icon.IconDir


---@class System.Drawing.Icon.BitmapInfoHeader : System.ValueType
System.Drawing.Icon.BitmapInfoHeader = {}
---@alias CS.System.Drawing.Icon.BitmapInfoHeader System.Drawing.Icon.BitmapInfoHeader
CS.System.Drawing.Icon.BitmapInfoHeader = System.Drawing.Icon.BitmapInfoHeader


---@class System.Drawing.Icon.ImageData : System.Object
System.Drawing.Icon.ImageData = {}
---@alias CS.System.Drawing.Icon.ImageData System.Drawing.Icon.ImageData
CS.System.Drawing.Icon.ImageData = System.Drawing.Icon.ImageData


---@class System.Drawing.Icon.IconImage : System.Drawing.Icon.ImageData
System.Drawing.Icon.IconImage = {}
---@alias CS.System.Drawing.Icon.IconImage System.Drawing.Icon.IconImage
CS.System.Drawing.Icon.IconImage = System.Drawing.Icon.IconImage

---@return System.Drawing.Icon.IconImage
function System.Drawing.Icon.IconImage.New() end

---@class System.Drawing.Icon.IconDump : System.Drawing.Icon.ImageData
System.Drawing.Icon.IconDump = {}
---@alias CS.System.Drawing.Icon.IconDump System.Drawing.Icon.IconDump
CS.System.Drawing.Icon.IconDump = System.Drawing.Icon.IconDump

---@return System.Drawing.Icon.IconDump
function System.Drawing.Icon.IconDump.New() end

---@class System.Drawing.IconConverter : System.ComponentModel.ExpandableObjectConverter
System.Drawing.IconConverter = {}
---@alias CS.System.Drawing.IconConverter System.Drawing.IconConverter
CS.System.Drawing.IconConverter = System.Drawing.IconConverter

---@return System.Drawing.IconConverter
function System.Drawing.IconConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.IconConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.IconConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.IconConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.IconConverter:ConvertTo(context, culture, value, destinationType) end

---@class System.Drawing.Image : System.MarshalByRefObject
---@field Flags number
---@field FrameDimensionsList System.Guid[]
---@field Height number
---@field HorizontalResolution number
---@field Palette System.Drawing.Imaging.ColorPalette
---@field PhysicalDimension System.Drawing.SizeF
---@field PixelFormat System.Drawing.Imaging.PixelFormat
---@field PropertyIdList System.Int32[]
---@field PropertyItems System.Drawing.Imaging.PropertyItem[]
---@field RawFormat System.Drawing.Imaging.ImageFormat
---@field Size System.Drawing.Size
---@field Tag System.Object
---@field VerticalResolution number
---@field Width number
System.Drawing.Image = {}
---@alias CS.System.Drawing.Image System.Drawing.Image
CS.System.Drawing.Image = System.Drawing.Image

---@overload fun(filename: string) : System.Drawing.Image
---@param filename string
---@param useEmbeddedColorManagement boolean
---@return System.Drawing.Image
function System.Drawing.Image.FromFile(filename, useEmbeddedColorManagement) end
---@overload fun(hbitmap: System.IntPtr) : System.Drawing.Bitmap
---@param hbitmap System.IntPtr
---@param hpalette System.IntPtr
---@return System.Drawing.Bitmap
function System.Drawing.Image.FromHbitmap(hbitmap, hpalette) end
---@overload fun(stream: System.IO.Stream) : System.Drawing.Image
---@overload fun(stream: System.IO.Stream, useEmbeddedColorManagement: boolean) : System.Drawing.Image
---@param stream System.IO.Stream
---@param useEmbeddedColorManagement boolean
---@param validateImageData boolean
---@return System.Drawing.Image
function System.Drawing.Image.FromStream(stream, useEmbeddedColorManagement, validateImageData) end
---@param pixfmt System.Drawing.Imaging.PixelFormat
---@return number
function System.Drawing.Image.GetPixelFormatSize(pixfmt) end
---@param pixfmt System.Drawing.Imaging.PixelFormat
---@return boolean
function System.Drawing.Image.IsAlphaPixelFormat(pixfmt) end
---@param pixfmt System.Drawing.Imaging.PixelFormat
---@return boolean
function System.Drawing.Image.IsCanonicalPixelFormat(pixfmt) end
---@param pixfmt System.Drawing.Imaging.PixelFormat
---@return boolean
function System.Drawing.Image.IsExtendedPixelFormat(pixfmt) end
---@param ref_pageUnit System.Drawing.GraphicsUnit
---@return System.Drawing.RectangleF,System.Drawing.GraphicsUnit
function System.Drawing.Image:GetBounds(ref_pageUnit) end
---@param encoder System.Guid
---@return System.Drawing.Imaging.EncoderParameters
function System.Drawing.Image:GetEncoderParameterList(encoder) end
---@param dimension System.Drawing.Imaging.FrameDimension
---@return number
function System.Drawing.Image:GetFrameCount(dimension) end
---@param propid number
---@return System.Drawing.Imaging.PropertyItem
function System.Drawing.Image:GetPropertyItem(propid) end
---@param thumbWidth number
---@param thumbHeight number
---@param callback System.Drawing.Image.GetThumbnailImageAbort
---@param callbackData System.IntPtr
---@return System.Drawing.Image
function System.Drawing.Image:GetThumbnailImage(thumbWidth, thumbHeight, callback, callbackData) end
---@param propid number
function System.Drawing.Image:RemovePropertyItem(propid) end
---@param rotateFlipType System.Drawing.RotateFlipType
function System.Drawing.Image:RotateFlip(rotateFlipType) end
---@overload fun(self: System.Drawing.Image, filename: string)
---@overload fun(self: System.Drawing.Image, filename: string, format: System.Drawing.Imaging.ImageFormat)
---@overload fun(self: System.Drawing.Image, filename: string, encoder: System.Drawing.Imaging.ImageCodecInfo, encoderParams: System.Drawing.Imaging.EncoderParameters)
---@overload fun(self: System.Drawing.Image, stream: System.IO.Stream, format: System.Drawing.Imaging.ImageFormat)
---@param stream System.IO.Stream
---@param encoder System.Drawing.Imaging.ImageCodecInfo
---@param encoderParams System.Drawing.Imaging.EncoderParameters
function System.Drawing.Image:Save(stream, encoder, encoderParams) end
---@overload fun(self: System.Drawing.Image, encoderParams: System.Drawing.Imaging.EncoderParameters)
---@param image System.Drawing.Image
---@param encoderParams System.Drawing.Imaging.EncoderParameters
function System.Drawing.Image:SaveAdd(image, encoderParams) end
---@param dimension System.Drawing.Imaging.FrameDimension
---@param frameIndex number
---@return number
function System.Drawing.Image:SelectActiveFrame(dimension, frameIndex) end
---@param propitem System.Drawing.Imaging.PropertyItem
function System.Drawing.Image:SetPropertyItem(propitem) end
function System.Drawing.Image:Dispose() end
---@return System.Object
function System.Drawing.Image:Clone() end

---@class System.Drawing.Image.GetThumbnailImageAbort : System.MulticastDelegate
System.Drawing.Image.GetThumbnailImageAbort = {}
---@alias CS.System.Drawing.Image.GetThumbnailImageAbort System.Drawing.Image.GetThumbnailImageAbort
CS.System.Drawing.Image.GetThumbnailImageAbort = System.Drawing.Image.GetThumbnailImageAbort

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Image.GetThumbnailImageAbort
function System.Drawing.Image.GetThumbnailImageAbort.New(object, method) end
---@return boolean
function System.Drawing.Image.GetThumbnailImageAbort:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Image.GetThumbnailImageAbort:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Drawing.Image.GetThumbnailImageAbort:EndInvoke(result) end

---@class System.Drawing.AnimateEventArgs : System.EventArgs
---@field RunThread System.Threading.Thread
System.Drawing.AnimateEventArgs = {}
---@alias CS.System.Drawing.AnimateEventArgs System.Drawing.AnimateEventArgs
CS.System.Drawing.AnimateEventArgs = System.Drawing.AnimateEventArgs

---@param image System.Drawing.Image
---@return System.Drawing.AnimateEventArgs
function System.Drawing.AnimateEventArgs.New(image) end
---@return number
function System.Drawing.AnimateEventArgs:GetNextFrame() end

---@class System.Drawing.ImageAnimator : System.Object
System.Drawing.ImageAnimator = {}
---@alias CS.System.Drawing.ImageAnimator System.Drawing.ImageAnimator
CS.System.Drawing.ImageAnimator = System.Drawing.ImageAnimator

---@param image System.Drawing.Image
---@param onFrameChangedHandler System.EventHandler
function System.Drawing.ImageAnimator.Animate(image, onFrameChangedHandler) end
---@param image System.Drawing.Image
---@return boolean
function System.Drawing.ImageAnimator.CanAnimate(image) end
---@param image System.Drawing.Image
---@param onFrameChangedHandler System.EventHandler
function System.Drawing.ImageAnimator.StopAnimate(image, onFrameChangedHandler) end
---@overload fun()
---@param image System.Drawing.Image
function System.Drawing.ImageAnimator.UpdateFrames(image) end

---@class System.Drawing.WorkerThread : System.Object
System.Drawing.WorkerThread = {}
---@alias CS.System.Drawing.WorkerThread System.Drawing.WorkerThread
CS.System.Drawing.WorkerThread = System.Drawing.WorkerThread

---@param frmChgHandler System.EventHandler
---@param aniEvtArgs System.Drawing.AnimateEventArgs
---@param delay System.Int32[]
---@return System.Drawing.WorkerThread
function System.Drawing.WorkerThread.New(frmChgHandler, aniEvtArgs, delay) end
function System.Drawing.WorkerThread:LoopHandler() end

---@class System.Drawing.ImageConverter : System.ComponentModel.TypeConverter
System.Drawing.ImageConverter = {}
---@alias CS.System.Drawing.ImageConverter System.Drawing.ImageConverter
CS.System.Drawing.ImageConverter = System.Drawing.ImageConverter

---@return System.Drawing.ImageConverter
function System.Drawing.ImageConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.ImageConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.ImageConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.ImageConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.ImageConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Drawing.ImageConverter:GetProperties(context, value, attributes) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.ImageConverter:GetPropertiesSupported(context) end

---@class System.Drawing.ImageFormatConverter : System.ComponentModel.TypeConverter
System.Drawing.ImageFormatConverter = {}
---@alias CS.System.Drawing.ImageFormatConverter System.Drawing.ImageFormatConverter
CS.System.Drawing.ImageFormatConverter = System.Drawing.ImageFormatConverter

---@return System.Drawing.ImageFormatConverter
function System.Drawing.ImageFormatConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.ImageFormatConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.ImageFormatConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.ImageFormatConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.ImageFormatConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.ComponentModel.TypeConverter.StandardValuesCollection
function System.Drawing.ImageFormatConverter:GetStandardValues(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.ImageFormatConverter:GetStandardValuesSupported(context) end

---@class System.Drawing.KnownColors : System.Object
System.Drawing.KnownColors = {}
---@alias CS.System.Drawing.KnownColors System.Drawing.KnownColors
CS.System.Drawing.KnownColors = System.Drawing.KnownColors

---@param kc System.Drawing.KnownColor
---@return System.Drawing.Color
function System.Drawing.KnownColors.FromKnownColor(kc) end
---@overload fun(kc: number) : string
---@param kc System.Drawing.KnownColor
---@return string
function System.Drawing.KnownColors.GetName(kc) end
---@param c System.Drawing.Color
---@return System.Drawing.Color
function System.Drawing.KnownColors.FindColorMatch(c) end
---@param knownColor number
---@param color number
function System.Drawing.KnownColors.Update(knownColor, color) end

---@class System.Drawing.Pen : System.MarshalByRefObject
---@field Alignment System.Drawing.Drawing2D.PenAlignment
---@field Brush System.Drawing.Brush
---@field Color System.Drawing.Color
---@field CompoundArray System.Single[]
---@field CustomEndCap System.Drawing.Drawing2D.CustomLineCap
---@field CustomStartCap System.Drawing.Drawing2D.CustomLineCap
---@field DashCap System.Drawing.Drawing2D.DashCap
---@field DashOffset number
---@field DashPattern System.Single[]
---@field DashStyle System.Drawing.Drawing2D.DashStyle
---@field StartCap System.Drawing.Drawing2D.LineCap
---@field EndCap System.Drawing.Drawing2D.LineCap
---@field LineJoin System.Drawing.Drawing2D.LineJoin
---@field MiterLimit number
---@field PenType System.Drawing.Drawing2D.PenType
---@field Transform System.Drawing.Drawing2D.Matrix
---@field Width number
System.Drawing.Pen = {}
---@alias CS.System.Drawing.Pen System.Drawing.Pen
CS.System.Drawing.Pen = System.Drawing.Pen

---@overload fun(brush: System.Drawing.Brush) : System.Drawing.Pen
---@overload fun(color: System.Drawing.Color) : System.Drawing.Pen
---@overload fun(brush: System.Drawing.Brush, width: number) : System.Drawing.Pen
---@param color System.Drawing.Color
---@param width number
---@return System.Drawing.Pen
function System.Drawing.Pen.New(color, width) end
---@return System.Object
function System.Drawing.Pen:Clone() end
function System.Drawing.Pen:Dispose() end
---@overload fun(self: System.Drawing.Pen, matrix: System.Drawing.Drawing2D.Matrix)
---@param matrix System.Drawing.Drawing2D.Matrix
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Pen:MultiplyTransform(matrix, order) end
function System.Drawing.Pen:ResetTransform() end
---@overload fun(self: System.Drawing.Pen, angle: number)
---@param angle number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Pen:RotateTransform(angle, order) end
---@overload fun(self: System.Drawing.Pen, sx: number, sy: number)
---@param sx number
---@param sy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Pen:ScaleTransform(sx, sy, order) end
---@param startCap System.Drawing.Drawing2D.LineCap
---@param endCap System.Drawing.Drawing2D.LineCap
---@param dashCap System.Drawing.Drawing2D.DashCap
function System.Drawing.Pen:SetLineCap(startCap, endCap, dashCap) end
---@overload fun(self: System.Drawing.Pen, dx: number, dy: number)
---@param dx number
---@param dy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Pen:TranslateTransform(dx, dy, order) end

---@class System.Drawing.Pens : System.Object
---@field AliceBlue System.Drawing.Pen
---@field AntiqueWhite System.Drawing.Pen
---@field Aqua System.Drawing.Pen
---@field Aquamarine System.Drawing.Pen
---@field Azure System.Drawing.Pen
---@field Beige System.Drawing.Pen
---@field Bisque System.Drawing.Pen
---@field Black System.Drawing.Pen
---@field BlanchedAlmond System.Drawing.Pen
---@field Blue System.Drawing.Pen
---@field BlueViolet System.Drawing.Pen
---@field Brown System.Drawing.Pen
---@field BurlyWood System.Drawing.Pen
---@field CadetBlue System.Drawing.Pen
---@field Chartreuse System.Drawing.Pen
---@field Chocolate System.Drawing.Pen
---@field Coral System.Drawing.Pen
---@field CornflowerBlue System.Drawing.Pen
---@field Cornsilk System.Drawing.Pen
---@field Crimson System.Drawing.Pen
---@field Cyan System.Drawing.Pen
---@field DarkBlue System.Drawing.Pen
---@field DarkCyan System.Drawing.Pen
---@field DarkGoldenrod System.Drawing.Pen
---@field DarkGray System.Drawing.Pen
---@field DarkGreen System.Drawing.Pen
---@field DarkKhaki System.Drawing.Pen
---@field DarkMagenta System.Drawing.Pen
---@field DarkOliveGreen System.Drawing.Pen
---@field DarkOrange System.Drawing.Pen
---@field DarkOrchid System.Drawing.Pen
---@field DarkRed System.Drawing.Pen
---@field DarkSalmon System.Drawing.Pen
---@field DarkSeaGreen System.Drawing.Pen
---@field DarkSlateBlue System.Drawing.Pen
---@field DarkSlateGray System.Drawing.Pen
---@field DarkTurquoise System.Drawing.Pen
---@field DarkViolet System.Drawing.Pen
---@field DeepPink System.Drawing.Pen
---@field DeepSkyBlue System.Drawing.Pen
---@field DimGray System.Drawing.Pen
---@field DodgerBlue System.Drawing.Pen
---@field Firebrick System.Drawing.Pen
---@field FloralWhite System.Drawing.Pen
---@field ForestGreen System.Drawing.Pen
---@field Fuchsia System.Drawing.Pen
---@field Gainsboro System.Drawing.Pen
---@field GhostWhite System.Drawing.Pen
---@field Gold System.Drawing.Pen
---@field Goldenrod System.Drawing.Pen
---@field Gray System.Drawing.Pen
---@field Green System.Drawing.Pen
---@field GreenYellow System.Drawing.Pen
---@field Honeydew System.Drawing.Pen
---@field HotPink System.Drawing.Pen
---@field IndianRed System.Drawing.Pen
---@field Indigo System.Drawing.Pen
---@field Ivory System.Drawing.Pen
---@field Khaki System.Drawing.Pen
---@field Lavender System.Drawing.Pen
---@field LavenderBlush System.Drawing.Pen
---@field LawnGreen System.Drawing.Pen
---@field LemonChiffon System.Drawing.Pen
---@field LightBlue System.Drawing.Pen
---@field LightCoral System.Drawing.Pen
---@field LightCyan System.Drawing.Pen
---@field LightGoldenrodYellow System.Drawing.Pen
---@field LightGray System.Drawing.Pen
---@field LightGreen System.Drawing.Pen
---@field LightPink System.Drawing.Pen
---@field LightSalmon System.Drawing.Pen
---@field LightSeaGreen System.Drawing.Pen
---@field LightSkyBlue System.Drawing.Pen
---@field LightSlateGray System.Drawing.Pen
---@field LightSteelBlue System.Drawing.Pen
---@field LightYellow System.Drawing.Pen
---@field Lime System.Drawing.Pen
---@field LimeGreen System.Drawing.Pen
---@field Linen System.Drawing.Pen
---@field Magenta System.Drawing.Pen
---@field Maroon System.Drawing.Pen
---@field MediumAquamarine System.Drawing.Pen
---@field MediumBlue System.Drawing.Pen
---@field MediumOrchid System.Drawing.Pen
---@field MediumPurple System.Drawing.Pen
---@field MediumSeaGreen System.Drawing.Pen
---@field MediumSlateBlue System.Drawing.Pen
---@field MediumSpringGreen System.Drawing.Pen
---@field MediumTurquoise System.Drawing.Pen
---@field MediumVioletRed System.Drawing.Pen
---@field MidnightBlue System.Drawing.Pen
---@field MintCream System.Drawing.Pen
---@field MistyRose System.Drawing.Pen
---@field Moccasin System.Drawing.Pen
---@field NavajoWhite System.Drawing.Pen
---@field Navy System.Drawing.Pen
---@field OldLace System.Drawing.Pen
---@field Olive System.Drawing.Pen
---@field OliveDrab System.Drawing.Pen
---@field Orange System.Drawing.Pen
---@field OrangeRed System.Drawing.Pen
---@field Orchid System.Drawing.Pen
---@field PaleGoldenrod System.Drawing.Pen
---@field PaleGreen System.Drawing.Pen
---@field PaleTurquoise System.Drawing.Pen
---@field PaleVioletRed System.Drawing.Pen
---@field PapayaWhip System.Drawing.Pen
---@field PeachPuff System.Drawing.Pen
---@field Peru System.Drawing.Pen
---@field Pink System.Drawing.Pen
---@field Plum System.Drawing.Pen
---@field PowderBlue System.Drawing.Pen
---@field Purple System.Drawing.Pen
---@field Red System.Drawing.Pen
---@field RosyBrown System.Drawing.Pen
---@field RoyalBlue System.Drawing.Pen
---@field SaddleBrown System.Drawing.Pen
---@field Salmon System.Drawing.Pen
---@field SandyBrown System.Drawing.Pen
---@field SeaGreen System.Drawing.Pen
---@field SeaShell System.Drawing.Pen
---@field Sienna System.Drawing.Pen
---@field Silver System.Drawing.Pen
---@field SkyBlue System.Drawing.Pen
---@field SlateBlue System.Drawing.Pen
---@field SlateGray System.Drawing.Pen
---@field Snow System.Drawing.Pen
---@field SpringGreen System.Drawing.Pen
---@field SteelBlue System.Drawing.Pen
---@field Tan System.Drawing.Pen
---@field Teal System.Drawing.Pen
---@field Thistle System.Drawing.Pen
---@field Tomato System.Drawing.Pen
---@field Transparent System.Drawing.Pen
---@field Turquoise System.Drawing.Pen
---@field Violet System.Drawing.Pen
---@field Wheat System.Drawing.Pen
---@field White System.Drawing.Pen
---@field WhiteSmoke System.Drawing.Pen
---@field Yellow System.Drawing.Pen
---@field YellowGreen System.Drawing.Pen
System.Drawing.Pens = {}
---@alias CS.System.Drawing.Pens System.Drawing.Pens
CS.System.Drawing.Pens = System.Drawing.Pens


---@class System.Drawing.RectangleConverter : System.ComponentModel.TypeConverter
System.Drawing.RectangleConverter = {}
---@alias CS.System.Drawing.RectangleConverter System.Drawing.RectangleConverter
CS.System.Drawing.RectangleConverter = System.Drawing.RectangleConverter

---@return System.Drawing.RectangleConverter
function System.Drawing.RectangleConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.RectangleConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.RectangleConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.RectangleConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.RectangleConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.Drawing.RectangleConverter:CreateInstance(context, propertyValues) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.RectangleConverter:GetCreateInstanceSupported(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param attributes System.Attribute[]
---@return System.ComponentModel.PropertyDescriptorCollection
function System.Drawing.RectangleConverter:GetProperties(context, value, attributes) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.RectangleConverter:GetPropertiesSupported(context) end

---@class System.Drawing.Region : System.MarshalByRefObject
System.Drawing.Region = {}
---@alias CS.System.Drawing.Region System.Drawing.Region
CS.System.Drawing.Region = System.Drawing.Region

---@overload fun() : System.Drawing.Region
---@overload fun(path: System.Drawing.Drawing2D.GraphicsPath) : System.Drawing.Region
---@overload fun(rect: System.Drawing.Rectangle) : System.Drawing.Region
---@overload fun(rect: System.Drawing.RectangleF) : System.Drawing.Region
---@param rgnData System.Drawing.Drawing2D.RegionData
---@return System.Drawing.Region
function System.Drawing.Region.New(rgnData) end
---@param hrgn System.IntPtr
---@return System.Drawing.Region
function System.Drawing.Region.FromHrgn(hrgn) end
---@overload fun(self: System.Drawing.Region, path: System.Drawing.Drawing2D.GraphicsPath)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.RectangleF)
---@param region System.Drawing.Region
function System.Drawing.Region:Union(region) end
---@overload fun(self: System.Drawing.Region, path: System.Drawing.Drawing2D.GraphicsPath)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.RectangleF)
---@param region System.Drawing.Region
function System.Drawing.Region:Intersect(region) end
---@overload fun(self: System.Drawing.Region, path: System.Drawing.Drawing2D.GraphicsPath)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.RectangleF)
---@param region System.Drawing.Region
function System.Drawing.Region:Complement(region) end
---@overload fun(self: System.Drawing.Region, path: System.Drawing.Drawing2D.GraphicsPath)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.RectangleF)
---@param region System.Drawing.Region
function System.Drawing.Region:Exclude(region) end
---@overload fun(self: System.Drawing.Region, path: System.Drawing.Drawing2D.GraphicsPath)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.Rectangle)
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.RectangleF)
---@param region System.Drawing.Region
function System.Drawing.Region:Xor(region) end
---@param g System.Drawing.Graphics
---@return System.Drawing.RectangleF
function System.Drawing.Region:GetBounds(g) end
---@overload fun(self: System.Drawing.Region, dx: number, dy: number)
---@param dx number
---@param dy number
function System.Drawing.Region:Translate(dx, dy) end
---@overload fun(self: System.Drawing.Region, x: number, y: number, g: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Region, x: number, y: number, width: number, height: number) : boolean
---@overload fun(self: System.Drawing.Region, x: number, y: number, width: number, height: number, g: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Region, point: System.Drawing.Point) : boolean
---@overload fun(self: System.Drawing.Region, point: System.Drawing.PointF) : boolean
---@overload fun(self: System.Drawing.Region, point: System.Drawing.Point, g: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Region, point: System.Drawing.PointF, g: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.Rectangle) : boolean
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.RectangleF) : boolean
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.Rectangle, g: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Region, rect: System.Drawing.RectangleF, g: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Region, x: number, y: number) : boolean
---@overload fun(self: System.Drawing.Region, x: number, y: number, g: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Region, x: number, y: number, width: number, height: number) : boolean
---@param x number
---@param y number
---@param width number
---@param height number
---@param g System.Drawing.Graphics
---@return boolean
function System.Drawing.Region:IsVisible(x, y, width, height, g) end
---@param g System.Drawing.Graphics
---@return boolean
function System.Drawing.Region:IsEmpty(g) end
---@param g System.Drawing.Graphics
---@return boolean
function System.Drawing.Region:IsInfinite(g) end
function System.Drawing.Region:MakeEmpty() end
function System.Drawing.Region:MakeInfinite() end
---@param region System.Drawing.Region
---@param g System.Drawing.Graphics
---@return boolean
function System.Drawing.Region:Equals(region, g) end
---@param g System.Drawing.Graphics
---@return System.IntPtr
function System.Drawing.Region:GetHrgn(g) end
---@return System.Drawing.Drawing2D.RegionData
function System.Drawing.Region:GetRegionData() end
---@param matrix System.Drawing.Drawing2D.Matrix
---@return System.Drawing.RectangleF[]
function System.Drawing.Region:GetRegionScans(matrix) end
---@param matrix System.Drawing.Drawing2D.Matrix
function System.Drawing.Region:Transform(matrix) end
---@return System.Drawing.Region
function System.Drawing.Region:Clone() end
function System.Drawing.Region:Dispose() end
---@param regionHandle System.IntPtr
function System.Drawing.Region:ReleaseHrgn(regionHandle) end

---@class System.Drawing.SRDescriptionAttribute : System.ComponentModel.DescriptionAttribute
---@field Description string
System.Drawing.SRDescriptionAttribute = {}
---@alias CS.System.Drawing.SRDescriptionAttribute System.Drawing.SRDescriptionAttribute
CS.System.Drawing.SRDescriptionAttribute = System.Drawing.SRDescriptionAttribute

---@param description string
---@return System.Drawing.SRDescriptionAttribute
function System.Drawing.SRDescriptionAttribute.New(description) end

---@class System.Drawing.StringFormat : System.MarshalByRefObject
---@field GenericDefault System.Drawing.StringFormat
---@field GenericTypographic System.Drawing.StringFormat
---@field Alignment System.Drawing.StringAlignment
---@field LineAlignment System.Drawing.StringAlignment
---@field FormatFlags System.Drawing.StringFormatFlags
---@field HotkeyPrefix System.Drawing.Text.HotkeyPrefix
---@field Trimming System.Drawing.StringTrimming
---@field DigitSubstitutionLanguage number
---@field DigitSubstitutionMethod System.Drawing.StringDigitSubstitute
System.Drawing.StringFormat = {}
---@alias CS.System.Drawing.StringFormat System.Drawing.StringFormat
CS.System.Drawing.StringFormat = System.Drawing.StringFormat

---@overload fun() : System.Drawing.StringFormat
---@overload fun(options: System.Drawing.StringFormatFlags, language: number) : System.Drawing.StringFormat
---@overload fun(format: System.Drawing.StringFormat) : System.Drawing.StringFormat
---@param options System.Drawing.StringFormatFlags
---@return System.Drawing.StringFormat
function System.Drawing.StringFormat.New(options) end
function System.Drawing.StringFormat:Dispose() end
---@param ranges System.Drawing.CharacterRange[]
function System.Drawing.StringFormat:SetMeasurableCharacterRanges(ranges) end
---@return System.Object
function System.Drawing.StringFormat:Clone() end
---@return string
function System.Drawing.StringFormat:ToString() end
---@param firstTabOffset number
---@param tabStops System.Single[]
function System.Drawing.StringFormat:SetTabStops(firstTabOffset, tabStops) end
---@param language number
---@param substitute System.Drawing.StringDigitSubstitute
function System.Drawing.StringFormat:SetDigitSubstitution(language, substitute) end
---@param out_firstTabOffset number
---@return System.Single[],number
function System.Drawing.StringFormat:GetTabStops(out_firstTabOffset) end

---@class System.Drawing.SystemFonts : System.Object
---@field CaptionFont System.Drawing.Font
---@field DefaultFont System.Drawing.Font
---@field DialogFont System.Drawing.Font
---@field IconTitleFont System.Drawing.Font
---@field MenuFont System.Drawing.Font
---@field MessageBoxFont System.Drawing.Font
---@field SmallCaptionFont System.Drawing.Font
---@field StatusFont System.Drawing.Font
System.Drawing.SystemFonts = {}
---@alias CS.System.Drawing.SystemFonts System.Drawing.SystemFonts
CS.System.Drawing.SystemFonts = System.Drawing.SystemFonts

---@param systemFontName string
---@return System.Drawing.Font
function System.Drawing.SystemFonts.GetFontByName(systemFontName) end

---@class System.Drawing.SystemIcons : System.Object
---@field Application System.Drawing.Icon
---@field Asterisk System.Drawing.Icon
---@field Error System.Drawing.Icon
---@field Exclamation System.Drawing.Icon
---@field Hand System.Drawing.Icon
---@field Information System.Drawing.Icon
---@field Question System.Drawing.Icon
---@field Warning System.Drawing.Icon
---@field WinLogo System.Drawing.Icon
---@field Shield System.Drawing.Icon
System.Drawing.SystemIcons = {}
---@alias CS.System.Drawing.SystemIcons System.Drawing.SystemIcons
CS.System.Drawing.SystemIcons = System.Drawing.SystemIcons


---@class System.Drawing.SystemPens : System.Object
---@field ActiveCaptionText System.Drawing.Pen
---@field Control System.Drawing.Pen
---@field ControlDark System.Drawing.Pen
---@field ControlDarkDark System.Drawing.Pen
---@field ControlLight System.Drawing.Pen
---@field ControlLightLight System.Drawing.Pen
---@field ControlText System.Drawing.Pen
---@field GrayText System.Drawing.Pen
---@field Highlight System.Drawing.Pen
---@field HighlightText System.Drawing.Pen
---@field InactiveCaptionText System.Drawing.Pen
---@field InfoText System.Drawing.Pen
---@field MenuText System.Drawing.Pen
---@field WindowFrame System.Drawing.Pen
---@field WindowText System.Drawing.Pen
---@field ActiveBorder System.Drawing.Pen
---@field ActiveCaption System.Drawing.Pen
---@field AppWorkspace System.Drawing.Pen
---@field ButtonFace System.Drawing.Pen
---@field ButtonHighlight System.Drawing.Pen
---@field ButtonShadow System.Drawing.Pen
---@field Desktop System.Drawing.Pen
---@field GradientActiveCaption System.Drawing.Pen
---@field GradientInactiveCaption System.Drawing.Pen
---@field HotTrack System.Drawing.Pen
---@field InactiveBorder System.Drawing.Pen
---@field InactiveCaption System.Drawing.Pen
---@field Info System.Drawing.Pen
---@field Menu System.Drawing.Pen
---@field MenuBar System.Drawing.Pen
---@field MenuHighlight System.Drawing.Pen
---@field ScrollBar System.Drawing.Pen
---@field Window System.Drawing.Pen
System.Drawing.SystemPens = {}
---@alias CS.System.Drawing.SystemPens System.Drawing.SystemPens
CS.System.Drawing.SystemPens = System.Drawing.SystemPens

---@param c System.Drawing.Color
---@return System.Drawing.Pen
function System.Drawing.SystemPens.FromSystemColor(c) end

---@class System.Drawing.ToolboxBitmapAttribute : System.Attribute
---@field Default System.Drawing.ToolboxBitmapAttribute
System.Drawing.ToolboxBitmapAttribute = {}
---@alias CS.System.Drawing.ToolboxBitmapAttribute System.Drawing.ToolboxBitmapAttribute
CS.System.Drawing.ToolboxBitmapAttribute = System.Drawing.ToolboxBitmapAttribute

---@overload fun(imageFile: string) : System.Drawing.ToolboxBitmapAttribute
---@overload fun(t: System.Type) : System.Drawing.ToolboxBitmapAttribute
---@param t System.Type
---@param name string
---@return System.Drawing.ToolboxBitmapAttribute
function System.Drawing.ToolboxBitmapAttribute.New(t, name) end
---@param t System.Type
---@param imageName string
---@param large boolean
---@return System.Drawing.Image
function System.Drawing.ToolboxBitmapAttribute.GetImageFromResource(t, imageName, large) end
---@param value System.Object
---@return boolean
function System.Drawing.ToolboxBitmapAttribute:Equals(value) end
---@return number
function System.Drawing.ToolboxBitmapAttribute:GetHashCode() end
---@overload fun(self: System.Drawing.ToolboxBitmapAttribute, component: System.Object) : System.Drawing.Image
---@overload fun(self: System.Drawing.ToolboxBitmapAttribute, component: System.Object, large: boolean) : System.Drawing.Image
---@overload fun(self: System.Drawing.ToolboxBitmapAttribute, type: System.Type) : System.Drawing.Image
---@overload fun(self: System.Drawing.ToolboxBitmapAttribute, type: System.Type, large: boolean) : System.Drawing.Image
---@param type System.Type
---@param imgName string
---@param large boolean
---@return System.Drawing.Image
function System.Drawing.ToolboxBitmapAttribute:GetImage(type, imgName, large) end

---@class System.Drawing.Status
---@field Ok System.Drawing.Status
---@field GenericError System.Drawing.Status
---@field InvalidParameter System.Drawing.Status
---@field OutOfMemory System.Drawing.Status
---@field ObjectBusy System.Drawing.Status
---@field InsufficientBuffer System.Drawing.Status
---@field NotImplemented System.Drawing.Status
---@field Win32Error System.Drawing.Status
---@field WrongState System.Drawing.Status
---@field Aborted System.Drawing.Status
---@field FileNotFound System.Drawing.Status
---@field ValueOverflow System.Drawing.Status
---@field AccessDenied System.Drawing.Status
---@field UnknownImageFormat System.Drawing.Status
---@field FontFamilyNotFound System.Drawing.Status
---@field FontStyleNotFound System.Drawing.Status
---@field NotTrueTypeFont System.Drawing.Status
---@field UnsupportedGdiplusVersion System.Drawing.Status
---@field GdiplusNotInitialized System.Drawing.Status
---@field PropertyNotFound System.Drawing.Status
---@field PropertyNotSupported System.Drawing.Status
---@field ProfileNotFound System.Drawing.Status
System.Drawing.Status = {}
---@alias CS.System.Drawing.Status System.Drawing.Status
CS.System.Drawing.Status = System.Drawing.Status


---@class System.Drawing.BrushType
---@field BrushTypeSolidColor System.Drawing.BrushType
---@field BrushTypeHatchFill System.Drawing.BrushType
---@field BrushTypeTextureFill System.Drawing.BrushType
---@field BrushTypePathGradient System.Drawing.BrushType
---@field BrushTypeLinearGradient System.Drawing.BrushType
System.Drawing.BrushType = {}
---@alias CS.System.Drawing.BrushType System.Drawing.BrushType
CS.System.Drawing.BrushType = System.Drawing.BrushType


---@class System.Drawing.ImageType
---@field Unknown System.Drawing.ImageType
---@field Bitmap System.Drawing.ImageType
---@field Metafile System.Drawing.ImageType
System.Drawing.ImageType = {}
---@alias CS.System.Drawing.ImageType System.Drawing.ImageType
CS.System.Drawing.ImageType = System.Drawing.ImageType


---@class System.Drawing.GetSysColorIndex
---@field COLOR_SCROLLBAR System.Drawing.GetSysColorIndex
---@field COLOR_BACKGROUND System.Drawing.GetSysColorIndex
---@field COLOR_ACTIVECAPTION System.Drawing.GetSysColorIndex
---@field COLOR_INACTIVECAPTION System.Drawing.GetSysColorIndex
---@field COLOR_MENU System.Drawing.GetSysColorIndex
---@field COLOR_WINDOW System.Drawing.GetSysColorIndex
---@field COLOR_WINDOWFRAME System.Drawing.GetSysColorIndex
---@field COLOR_MENUTEXT System.Drawing.GetSysColorIndex
---@field COLOR_WINDOWTEXT System.Drawing.GetSysColorIndex
---@field COLOR_CAPTIONTEXT System.Drawing.GetSysColorIndex
---@field COLOR_ACTIVEBORDER System.Drawing.GetSysColorIndex
---@field COLOR_INACTIVEBORDER System.Drawing.GetSysColorIndex
---@field COLOR_APPWORKSPACE System.Drawing.GetSysColorIndex
---@field COLOR_HIGHLIGHT System.Drawing.GetSysColorIndex
---@field COLOR_HIGHLIGHTTEXT System.Drawing.GetSysColorIndex
---@field COLOR_BTNFACE System.Drawing.GetSysColorIndex
---@field COLOR_BTNSHADOW System.Drawing.GetSysColorIndex
---@field COLOR_GRAYTEXT System.Drawing.GetSysColorIndex
---@field COLOR_BTNTEXT System.Drawing.GetSysColorIndex
---@field COLOR_INACTIVECAPTIONTEXT System.Drawing.GetSysColorIndex
---@field COLOR_BTNHIGHLIGHT System.Drawing.GetSysColorIndex
---@field COLOR_3DDKSHADOW System.Drawing.GetSysColorIndex
---@field COLOR_3DLIGHT System.Drawing.GetSysColorIndex
---@field COLOR_INFOTEXT System.Drawing.GetSysColorIndex
---@field COLOR_INFOBK System.Drawing.GetSysColorIndex
---@field COLOR_HOTLIGHT System.Drawing.GetSysColorIndex
---@field COLOR_GRADIENTACTIVECAPTION System.Drawing.GetSysColorIndex
---@field COLOR_GRADIENTINACTIVECAPTION System.Drawing.GetSysColorIndex
---@field COLOR_MENUHIGHLIGHT System.Drawing.GetSysColorIndex
---@field COLOR_MENUBAR System.Drawing.GetSysColorIndex
---@field COLOR_DESKTOP System.Drawing.GetSysColorIndex
---@field COLOR_3DFACE System.Drawing.GetSysColorIndex
---@field COLOR_3DSHADOW System.Drawing.GetSysColorIndex
---@field COLOR_3DHIGHLIGHT System.Drawing.GetSysColorIndex
---@field COLOR_3DHILIGHT System.Drawing.GetSysColorIndex
---@field COLOR_BTNHILIGHT System.Drawing.GetSysColorIndex
---@field COLOR_MAXVALUE System.Drawing.GetSysColorIndex
System.Drawing.GetSysColorIndex = {}
---@alias CS.System.Drawing.GetSysColorIndex System.Drawing.GetSysColorIndex
CS.System.Drawing.GetSysColorIndex = System.Drawing.GetSysColorIndex


---@class System.Drawing.GDIPlus : System.Object
---@field FACESIZE number
---@field LANG_NEUTRAL number
---@field Display System.IntPtr
---@field UseX11Drawable boolean
---@field UseCarbonDrawable boolean
---@field UseCocoaDrawable boolean
System.Drawing.GDIPlus = {}
---@alias CS.System.Drawing.GDIPlus System.Drawing.GDIPlus
CS.System.Drawing.GDIPlus = System.Drawing.GDIPlus

---@return System.Drawing.GDIPlus
function System.Drawing.GDIPlus.New() end
---@return boolean
function System.Drawing.GDIPlus.RunningOnWindows() end
---@return boolean
function System.Drawing.GDIPlus.RunningOnUnix() end
---@param prt System.IntPtr
---@param pts System.Drawing.Point[]
function System.Drawing.GDIPlus.FromUnManagedMemoryToPointI(prt, pts) end
---@param prt System.IntPtr
---@param pts System.Drawing.PointF[]
function System.Drawing.GDIPlus.FromUnManagedMemoryToPoint(prt, pts) end
---@param pts System.Drawing.Point[]
---@return System.IntPtr
function System.Drawing.GDIPlus.FromPointToUnManagedMemoryI(pts) end
---@param prt System.IntPtr
---@param pts System.Drawing.RectangleF[]
function System.Drawing.GDIPlus.FromUnManagedMemoryToRectangles(prt, pts) end
---@param pts System.Drawing.PointF[]
---@return System.IntPtr
function System.Drawing.GDIPlus.FromPointToUnManagedMemory(pts) end
---@param hdcDest System.IntPtr
---@param nXDest number
---@param nYDest number
---@param nWidth number
---@param nHeight number
---@param hdcSrc System.IntPtr
---@param nXSrc number
---@param nYSrc number
---@param dwRop number
---@return number
function System.Drawing.GDIPlus.BitBlt(hdcDest, nXDest, nYDest, nWidth, nHeight, hdcSrc, nXSrc, nYSrc, dwRop) end
---@param index System.Drawing.GetSysColorIndex
---@return number
function System.Drawing.GDIPlus.Win32GetSysColor(index) end

---@class System.Drawing.GDIPlus.StreamGetHeaderDelegate : System.MulticastDelegate
System.Drawing.GDIPlus.StreamGetHeaderDelegate = {}
---@alias CS.System.Drawing.GDIPlus.StreamGetHeaderDelegate System.Drawing.GDIPlus.StreamGetHeaderDelegate
CS.System.Drawing.GDIPlus.StreamGetHeaderDelegate = System.Drawing.GDIPlus.StreamGetHeaderDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.GDIPlus.StreamGetHeaderDelegate
function System.Drawing.GDIPlus.StreamGetHeaderDelegate.New(object, method) end
---@param buf System.IntPtr
---@param bufsz number
---@return number
function System.Drawing.GDIPlus.StreamGetHeaderDelegate:Invoke(buf, bufsz) end
---@param buf System.IntPtr
---@param bufsz number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.GDIPlus.StreamGetHeaderDelegate:BeginInvoke(buf, bufsz, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.GDIPlus.StreamGetHeaderDelegate:EndInvoke(result) end

---@class System.Drawing.GDIPlus.StreamGetBytesDelegate : System.MulticastDelegate
System.Drawing.GDIPlus.StreamGetBytesDelegate = {}
---@alias CS.System.Drawing.GDIPlus.StreamGetBytesDelegate System.Drawing.GDIPlus.StreamGetBytesDelegate
CS.System.Drawing.GDIPlus.StreamGetBytesDelegate = System.Drawing.GDIPlus.StreamGetBytesDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.GDIPlus.StreamGetBytesDelegate
function System.Drawing.GDIPlus.StreamGetBytesDelegate.New(object, method) end
---@param buf System.IntPtr
---@param bufsz number
---@param peek boolean
---@return number
function System.Drawing.GDIPlus.StreamGetBytesDelegate:Invoke(buf, bufsz, peek) end
---@param buf System.IntPtr
---@param bufsz number
---@param peek boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.GDIPlus.StreamGetBytesDelegate:BeginInvoke(buf, bufsz, peek, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.GDIPlus.StreamGetBytesDelegate:EndInvoke(result) end

---@class System.Drawing.GDIPlus.StreamSeekDelegate : System.MulticastDelegate
System.Drawing.GDIPlus.StreamSeekDelegate = {}
---@alias CS.System.Drawing.GDIPlus.StreamSeekDelegate System.Drawing.GDIPlus.StreamSeekDelegate
CS.System.Drawing.GDIPlus.StreamSeekDelegate = System.Drawing.GDIPlus.StreamSeekDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.GDIPlus.StreamSeekDelegate
function System.Drawing.GDIPlus.StreamSeekDelegate.New(object, method) end
---@param offset number
---@param whence number
---@return number
function System.Drawing.GDIPlus.StreamSeekDelegate:Invoke(offset, whence) end
---@param offset number
---@param whence number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.GDIPlus.StreamSeekDelegate:BeginInvoke(offset, whence, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.GDIPlus.StreamSeekDelegate:EndInvoke(result) end

---@class System.Drawing.GDIPlus.StreamPutBytesDelegate : System.MulticastDelegate
System.Drawing.GDIPlus.StreamPutBytesDelegate = {}
---@alias CS.System.Drawing.GDIPlus.StreamPutBytesDelegate System.Drawing.GDIPlus.StreamPutBytesDelegate
CS.System.Drawing.GDIPlus.StreamPutBytesDelegate = System.Drawing.GDIPlus.StreamPutBytesDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.GDIPlus.StreamPutBytesDelegate
function System.Drawing.GDIPlus.StreamPutBytesDelegate.New(object, method) end
---@param buf System.IntPtr
---@param bufsz number
---@return number
function System.Drawing.GDIPlus.StreamPutBytesDelegate:Invoke(buf, bufsz) end
---@param buf System.IntPtr
---@param bufsz number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.GDIPlus.StreamPutBytesDelegate:BeginInvoke(buf, bufsz, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.GDIPlus.StreamPutBytesDelegate:EndInvoke(result) end

---@class System.Drawing.GDIPlus.StreamCloseDelegate : System.MulticastDelegate
System.Drawing.GDIPlus.StreamCloseDelegate = {}
---@alias CS.System.Drawing.GDIPlus.StreamCloseDelegate System.Drawing.GDIPlus.StreamCloseDelegate
CS.System.Drawing.GDIPlus.StreamCloseDelegate = System.Drawing.GDIPlus.StreamCloseDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.GDIPlus.StreamCloseDelegate
function System.Drawing.GDIPlus.StreamCloseDelegate.New(object, method) end
function System.Drawing.GDIPlus.StreamCloseDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.GDIPlus.StreamCloseDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function System.Drawing.GDIPlus.StreamCloseDelegate:EndInvoke(result) end

---@class System.Drawing.GDIPlus.StreamSizeDelegate : System.MulticastDelegate
System.Drawing.GDIPlus.StreamSizeDelegate = {}
---@alias CS.System.Drawing.GDIPlus.StreamSizeDelegate System.Drawing.GDIPlus.StreamSizeDelegate
CS.System.Drawing.GDIPlus.StreamSizeDelegate = System.Drawing.GDIPlus.StreamSizeDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.GDIPlus.StreamSizeDelegate
function System.Drawing.GDIPlus.StreamSizeDelegate.New(object, method) end
---@return number
function System.Drawing.GDIPlus.StreamSizeDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.GDIPlus.StreamSizeDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Drawing.GDIPlus.StreamSizeDelegate:EndInvoke(result) end

---@class System.Drawing.GDIPlus.GdiPlusStreamHelper : System.Object
---@field stream System.IO.Stream
---@field GetHeaderDelegate System.Drawing.GDIPlus.StreamGetHeaderDelegate
---@field GetBytesDelegate System.Drawing.GDIPlus.StreamGetBytesDelegate
---@field SeekDelegate System.Drawing.GDIPlus.StreamSeekDelegate
---@field PutBytesDelegate System.Drawing.GDIPlus.StreamPutBytesDelegate
---@field CloseDelegate System.Drawing.GDIPlus.StreamCloseDelegate
---@field SizeDelegate System.Drawing.GDIPlus.StreamSizeDelegate
System.Drawing.GDIPlus.GdiPlusStreamHelper = {}
---@alias CS.System.Drawing.GDIPlus.GdiPlusStreamHelper System.Drawing.GDIPlus.GdiPlusStreamHelper
CS.System.Drawing.GDIPlus.GdiPlusStreamHelper = System.Drawing.GDIPlus.GdiPlusStreamHelper

---@param s System.IO.Stream
---@param seekToOrigin boolean
---@return System.Drawing.GDIPlus.GdiPlusStreamHelper
function System.Drawing.GDIPlus.GdiPlusStreamHelper.New(s, seekToOrigin) end
---@param buf System.IntPtr
---@param bufsz number
---@return number
function System.Drawing.GDIPlus.GdiPlusStreamHelper:StreamGetHeaderImpl(buf, bufsz) end
---@param buf System.IntPtr
---@param bufsz number
---@param peek boolean
---@return number
function System.Drawing.GDIPlus.GdiPlusStreamHelper:StreamGetBytesImpl(buf, bufsz, peek) end
---@param offset number
---@param whence number
---@return number
function System.Drawing.GDIPlus.GdiPlusStreamHelper:StreamSeekImpl(offset, whence) end
---@param buf System.IntPtr
---@param bufsz number
---@return number
function System.Drawing.GDIPlus.GdiPlusStreamHelper:StreamPutBytesImpl(buf, bufsz) end
function System.Drawing.GDIPlus.GdiPlusStreamHelper:StreamCloseImpl() end
---@return number
function System.Drawing.GDIPlus.GdiPlusStreamHelper:StreamSizeImpl() end

---@class System.Drawing.GdiplusStartupInput : System.ValueType
System.Drawing.GdiplusStartupInput = {}
---@alias CS.System.Drawing.GdiplusStartupInput System.Drawing.GdiplusStartupInput
CS.System.Drawing.GdiplusStartupInput = System.Drawing.GdiplusStartupInput


---@class System.Drawing.GdiplusStartupOutput : System.ValueType
System.Drawing.GdiplusStartupOutput = {}
---@alias CS.System.Drawing.GdiplusStartupOutput System.Drawing.GdiplusStartupOutput
CS.System.Drawing.GdiplusStartupOutput = System.Drawing.GdiplusStartupOutput


---@class System.Drawing.GdiColorPalette : System.ValueType
System.Drawing.GdiColorPalette = {}
---@alias CS.System.Drawing.GdiColorPalette System.Drawing.GdiColorPalette
CS.System.Drawing.GdiColorPalette = System.Drawing.GdiColorPalette


---@class System.Drawing.GdiColorMap : System.ValueType
System.Drawing.GdiColorMap = {}
---@alias CS.System.Drawing.GdiColorMap System.Drawing.GdiColorMap
CS.System.Drawing.GdiColorMap = System.Drawing.GdiColorMap


---@class System.Drawing.LOGFONT : System.ValueType
System.Drawing.LOGFONT = {}
---@alias CS.System.Drawing.LOGFONT System.Drawing.LOGFONT
CS.System.Drawing.LOGFONT = System.Drawing.LOGFONT


---@class System.Drawing.GdipImageCodecInfo : System.ValueType
System.Drawing.GdipImageCodecInfo = {}
---@alias CS.System.Drawing.GdipImageCodecInfo System.Drawing.GdipImageCodecInfo
CS.System.Drawing.GdipImageCodecInfo = System.Drawing.GdipImageCodecInfo


---@class System.Drawing.GdipEncoderParameter : System.ValueType
System.Drawing.GdipEncoderParameter = {}
---@alias CS.System.Drawing.GdipEncoderParameter System.Drawing.GdipEncoderParameter
CS.System.Drawing.GdipEncoderParameter = System.Drawing.GdipEncoderParameter


---@class System.Drawing.GdipPropertyItem : System.ValueType
System.Drawing.GdipPropertyItem = {}
---@alias CS.System.Drawing.GdipPropertyItem System.Drawing.GdipPropertyItem
CS.System.Drawing.GdipPropertyItem = System.Drawing.GdipPropertyItem


---@class System.Drawing.IconInfo : System.ValueType
---@field xHotspot number
---@field yHotspot number
---@field hbmMask System.IntPtr
---@field hbmColor System.IntPtr
---@field IsIcon boolean
System.Drawing.IconInfo = {}
---@alias CS.System.Drawing.IconInfo System.Drawing.IconInfo
CS.System.Drawing.IconInfo = System.Drawing.IconInfo


---@class System.Drawing.XColor : System.ValueType
---@field pixel number
---@field red number
---@field green number
---@field blue number
---@field flags number
---@field pad number
System.Drawing.XColor = {}
---@alias CS.System.Drawing.XColor System.Drawing.XColor
CS.System.Drawing.XColor = System.Drawing.XColor


---@class System.Drawing.XVisualInfo : System.ValueType
System.Drawing.XVisualInfo = {}
---@alias CS.System.Drawing.XVisualInfo System.Drawing.XVisualInfo
CS.System.Drawing.XVisualInfo = System.Drawing.XVisualInfo


---@class System.Drawing.MacSupport : System.Object
System.Drawing.MacSupport = {}
---@alias CS.System.Drawing.MacSupport System.Drawing.MacSupport
CS.System.Drawing.MacSupport = System.Drawing.MacSupport

---@param className string
---@return System.IntPtr
function System.Drawing.MacSupport.objc_getClass(className) end
---@overload fun(basePtr: System.IntPtr, selector: System.IntPtr, argument: string) : System.IntPtr
---@param basePtr System.IntPtr
---@param selector System.IntPtr
---@return System.IntPtr
function System.Drawing.MacSupport.objc_msgSend(basePtr, selector) end
---@overload fun(ref_arect: System.Drawing.CGRect32, basePtr: System.IntPtr, selector: System.IntPtr) : System.Drawing.CGRect32
---@param ref_arect System.Drawing.CGRect64
---@param basePtr System.IntPtr
---@param selector System.IntPtr
---@return ,System.Drawing.CGRect64
function System.Drawing.MacSupport.objc_msgSend_stret(ref_arect, basePtr, selector) end
---@param handle System.IntPtr
---@param selector System.IntPtr
---@return boolean
function System.Drawing.MacSupport.bool_objc_msgSend(handle, selector) end
---@param handle System.IntPtr
---@param selector System.IntPtr
---@param argument System.IntPtr
---@return boolean
function System.Drawing.MacSupport.bool_objc_msgSend_IntPtr(handle, selector, argument) end
---@param selectorName string
---@return System.IntPtr
function System.Drawing.MacSupport.sel_registerName(selectorName) end

---@class System.Drawing.CGSize32 : System.ValueType
---@field width number
---@field height number
System.Drawing.CGSize32 = {}
---@alias CS.System.Drawing.CGSize32 System.Drawing.CGSize32
CS.System.Drawing.CGSize32 = System.Drawing.CGSize32


---@class System.Drawing.CGPoint32 : System.ValueType
---@field x number
---@field y number
System.Drawing.CGPoint32 = {}
---@alias CS.System.Drawing.CGPoint32 System.Drawing.CGPoint32
CS.System.Drawing.CGPoint32 = System.Drawing.CGPoint32


---@class System.Drawing.CGRect32 : System.ValueType
---@field origin System.Drawing.CGPoint32
---@field size System.Drawing.CGSize32
System.Drawing.CGRect32 = {}
---@alias CS.System.Drawing.CGRect32 System.Drawing.CGRect32
CS.System.Drawing.CGRect32 = System.Drawing.CGRect32

---@param x number
---@param y number
---@param width number
---@param height number
---@return System.Drawing.CGRect32
function System.Drawing.CGRect32.New(x, y, width, height) end

---@class System.Drawing.CGSize64 : System.ValueType
---@field width number
---@field height number
System.Drawing.CGSize64 = {}
---@alias CS.System.Drawing.CGSize64 System.Drawing.CGSize64
CS.System.Drawing.CGSize64 = System.Drawing.CGSize64


---@class System.Drawing.CGPoint64 : System.ValueType
---@field x number
---@field y number
System.Drawing.CGPoint64 = {}
---@alias CS.System.Drawing.CGPoint64 System.Drawing.CGPoint64
CS.System.Drawing.CGPoint64 = System.Drawing.CGPoint64


---@class System.Drawing.CGRect64 : System.ValueType
---@field origin System.Drawing.CGPoint64
---@field size System.Drawing.CGSize64
System.Drawing.CGRect64 = {}
---@alias CS.System.Drawing.CGRect64 System.Drawing.CGRect64
CS.System.Drawing.CGRect64 = System.Drawing.CGRect64

---@param x number
---@param y number
---@param width number
---@param height number
---@return System.Drawing.CGRect64
function System.Drawing.CGRect64.New(x, y, width, height) end

---@class System.Drawing.QDRect : System.ValueType
---@field top number
---@field left number
---@field bottom number
---@field right number
System.Drawing.QDRect = {}
---@alias CS.System.Drawing.QDRect System.Drawing.QDRect
CS.System.Drawing.QDRect = System.Drawing.QDRect


---@class System.Drawing.CarbonContext : System.ValueType
---@field port System.IntPtr
---@field ctx System.IntPtr
---@field width number
---@field height number
System.Drawing.CarbonContext = {}
---@alias CS.System.Drawing.CarbonContext System.Drawing.CarbonContext
CS.System.Drawing.CarbonContext = System.Drawing.CarbonContext

---@param port System.IntPtr
---@param ctx System.IntPtr
---@param width number
---@param height number
---@return System.Drawing.CarbonContext
function System.Drawing.CarbonContext.New(port, ctx, width, height) end
function System.Drawing.CarbonContext:Synchronize() end
function System.Drawing.CarbonContext:Release() end

---@class System.Drawing.CocoaContext : System.Object
---@field focusHandle System.IntPtr
---@field ctx System.IntPtr
---@field width number
---@field height number
System.Drawing.CocoaContext = {}
---@alias CS.System.Drawing.CocoaContext System.Drawing.CocoaContext
CS.System.Drawing.CocoaContext = System.Drawing.CocoaContext

---@param focusHandle System.IntPtr
---@param ctx System.IntPtr
---@param width number
---@param height number
---@return System.Drawing.CocoaContext
function System.Drawing.CocoaContext.New(focusHandle, ctx, width, height) end
function System.Drawing.CocoaContext:Synchronize() end
function System.Drawing.CocoaContext:Release() end

---@class System.Drawing.IMacContext
System.Drawing.IMacContext = {}
---@alias CS.System.Drawing.IMacContext System.Drawing.IMacContext
CS.System.Drawing.IMacContext = System.Drawing.IMacContext

function System.Drawing.IMacContext:Synchronize() end
function System.Drawing.IMacContext:Release() end

---@class System.Drawing.Text.FontCollection : System.Object
---@field Families System.Drawing.FontFamily[]
System.Drawing.Text.FontCollection = {}
---@alias CS.System.Drawing.Text.FontCollection System.Drawing.Text.FontCollection
CS.System.Drawing.Text.FontCollection = System.Drawing.Text.FontCollection

function System.Drawing.Text.FontCollection:Dispose() end

---@class System.Drawing.Text.GenericFontFamilies
---@field Serif System.Drawing.Text.GenericFontFamilies
---@field SansSerif System.Drawing.Text.GenericFontFamilies
---@field Monospace System.Drawing.Text.GenericFontFamilies
System.Drawing.Text.GenericFontFamilies = {}
---@alias CS.System.Drawing.Text.GenericFontFamilies System.Drawing.Text.GenericFontFamilies
CS.System.Drawing.Text.GenericFontFamilies = System.Drawing.Text.GenericFontFamilies


---@class System.Drawing.Text.HotkeyPrefix
---@field None System.Drawing.Text.HotkeyPrefix
---@field Show System.Drawing.Text.HotkeyPrefix
---@field Hide System.Drawing.Text.HotkeyPrefix
System.Drawing.Text.HotkeyPrefix = {}
---@alias CS.System.Drawing.Text.HotkeyPrefix System.Drawing.Text.HotkeyPrefix
CS.System.Drawing.Text.HotkeyPrefix = System.Drawing.Text.HotkeyPrefix


---@class System.Drawing.Text.InstalledFontCollection : System.Drawing.Text.FontCollection
System.Drawing.Text.InstalledFontCollection = {}
---@alias CS.System.Drawing.Text.InstalledFontCollection System.Drawing.Text.InstalledFontCollection
CS.System.Drawing.Text.InstalledFontCollection = System.Drawing.Text.InstalledFontCollection

---@return System.Drawing.Text.InstalledFontCollection
function System.Drawing.Text.InstalledFontCollection.New() end

---@class System.Drawing.Text.TextRenderingHint
---@field SystemDefault System.Drawing.Text.TextRenderingHint
---@field SingleBitPerPixelGridFit System.Drawing.Text.TextRenderingHint
---@field SingleBitPerPixel System.Drawing.Text.TextRenderingHint
---@field AntiAliasGridFit System.Drawing.Text.TextRenderingHint
---@field AntiAlias System.Drawing.Text.TextRenderingHint
---@field ClearTypeGridFit System.Drawing.Text.TextRenderingHint
System.Drawing.Text.TextRenderingHint = {}
---@alias CS.System.Drawing.Text.TextRenderingHint System.Drawing.Text.TextRenderingHint
CS.System.Drawing.Text.TextRenderingHint = System.Drawing.Text.TextRenderingHint


---@class System.Drawing.Text.PrivateFontCollection : System.Drawing.Text.FontCollection
System.Drawing.Text.PrivateFontCollection = {}
---@alias CS.System.Drawing.Text.PrivateFontCollection System.Drawing.Text.PrivateFontCollection
CS.System.Drawing.Text.PrivateFontCollection = System.Drawing.Text.PrivateFontCollection

---@return System.Drawing.Text.PrivateFontCollection
function System.Drawing.Text.PrivateFontCollection.New() end
---@param filename string
function System.Drawing.Text.PrivateFontCollection:AddFontFile(filename) end
---@param memory System.IntPtr
---@param length number
function System.Drawing.Text.PrivateFontCollection:AddMemoryFont(memory, length) end

---@class System.Drawing.Printing.Duplex
---@field Default System.Drawing.Printing.Duplex
---@field Simplex System.Drawing.Printing.Duplex
---@field Horizontal System.Drawing.Printing.Duplex
---@field Vertical System.Drawing.Printing.Duplex
System.Drawing.Printing.Duplex = {}
---@alias CS.System.Drawing.Printing.Duplex System.Drawing.Printing.Duplex
CS.System.Drawing.Printing.Duplex = System.Drawing.Printing.Duplex


---@class System.Drawing.Printing.InvalidPrinterException : System.SystemException
System.Drawing.Printing.InvalidPrinterException = {}
---@alias CS.System.Drawing.Printing.InvalidPrinterException System.Drawing.Printing.InvalidPrinterException
CS.System.Drawing.Printing.InvalidPrinterException = System.Drawing.Printing.InvalidPrinterException

---@param settings System.Drawing.Printing.PrinterSettings
---@return System.Drawing.Printing.InvalidPrinterException
function System.Drawing.Printing.InvalidPrinterException.New(settings) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Drawing.Printing.InvalidPrinterException:GetObjectData(info, context) end

---@class System.Drawing.Printing.Margins : System.Object
---@field Left number
---@field Right number
---@field Top number
---@field Bottom number
System.Drawing.Printing.Margins = {}
---@alias CS.System.Drawing.Printing.Margins System.Drawing.Printing.Margins
CS.System.Drawing.Printing.Margins = System.Drawing.Printing.Margins

---@overload fun() : System.Drawing.Printing.Margins
---@param left number
---@param right number
---@param top number
---@param bottom number
---@return System.Drawing.Printing.Margins
function System.Drawing.Printing.Margins.New(left, right, top, bottom) end
---@return System.Object
function System.Drawing.Printing.Margins:Clone() end
---@param obj System.Object
---@return boolean
function System.Drawing.Printing.Margins:Equals(obj) end
---@return number
function System.Drawing.Printing.Margins:GetHashCode() end
---@return string
function System.Drawing.Printing.Margins:ToString() end

---@class System.Drawing.Printing.PaperKind
---@field Custom System.Drawing.Printing.PaperKind
---@field Letter System.Drawing.Printing.PaperKind
---@field Legal System.Drawing.Printing.PaperKind
---@field A4 System.Drawing.Printing.PaperKind
---@field CSheet System.Drawing.Printing.PaperKind
---@field DSheet System.Drawing.Printing.PaperKind
---@field ESheet System.Drawing.Printing.PaperKind
---@field LetterSmall System.Drawing.Printing.PaperKind
---@field Tabloid System.Drawing.Printing.PaperKind
---@field Ledger System.Drawing.Printing.PaperKind
---@field Statement System.Drawing.Printing.PaperKind
---@field Executive System.Drawing.Printing.PaperKind
---@field A3 System.Drawing.Printing.PaperKind
---@field A4Small System.Drawing.Printing.PaperKind
---@field A5 System.Drawing.Printing.PaperKind
---@field B4 System.Drawing.Printing.PaperKind
---@field B5 System.Drawing.Printing.PaperKind
---@field Folio System.Drawing.Printing.PaperKind
---@field Quarto System.Drawing.Printing.PaperKind
---@field Standard10x14 System.Drawing.Printing.PaperKind
---@field Standard11x17 System.Drawing.Printing.PaperKind
---@field Note System.Drawing.Printing.PaperKind
---@field Number9Envelope System.Drawing.Printing.PaperKind
---@field Number10Envelope System.Drawing.Printing.PaperKind
---@field Number11Envelope System.Drawing.Printing.PaperKind
---@field Number12Envelope System.Drawing.Printing.PaperKind
---@field Number14Envelope System.Drawing.Printing.PaperKind
---@field DLEnvelope System.Drawing.Printing.PaperKind
---@field C5Envelope System.Drawing.Printing.PaperKind
---@field C3Envelope System.Drawing.Printing.PaperKind
---@field C4Envelope System.Drawing.Printing.PaperKind
---@field C6Envelope System.Drawing.Printing.PaperKind
---@field C65Envelope System.Drawing.Printing.PaperKind
---@field B4Envelope System.Drawing.Printing.PaperKind
---@field B5Envelope System.Drawing.Printing.PaperKind
---@field B6Envelope System.Drawing.Printing.PaperKind
---@field ItalyEnvelope System.Drawing.Printing.PaperKind
---@field MonarchEnvelope System.Drawing.Printing.PaperKind
---@field PersonalEnvelope System.Drawing.Printing.PaperKind
---@field USStandardFanfold System.Drawing.Printing.PaperKind
---@field GermanStandardFanfold System.Drawing.Printing.PaperKind
---@field GermanLegalFanfold System.Drawing.Printing.PaperKind
---@field IsoB4 System.Drawing.Printing.PaperKind
---@field JapanesePostcard System.Drawing.Printing.PaperKind
---@field Standard9x11 System.Drawing.Printing.PaperKind
---@field Standard10x11 System.Drawing.Printing.PaperKind
---@field Standard15x11 System.Drawing.Printing.PaperKind
---@field InviteEnvelope System.Drawing.Printing.PaperKind
---@field LetterExtra System.Drawing.Printing.PaperKind
---@field LegalExtra System.Drawing.Printing.PaperKind
---@field TabloidExtra System.Drawing.Printing.PaperKind
---@field A4Extra System.Drawing.Printing.PaperKind
---@field LetterTransverse System.Drawing.Printing.PaperKind
---@field A4Transverse System.Drawing.Printing.PaperKind
---@field LetterExtraTransverse System.Drawing.Printing.PaperKind
---@field APlus System.Drawing.Printing.PaperKind
---@field BPlus System.Drawing.Printing.PaperKind
---@field LetterPlus System.Drawing.Printing.PaperKind
---@field A4Plus System.Drawing.Printing.PaperKind
---@field A5Transverse System.Drawing.Printing.PaperKind
---@field B5Transverse System.Drawing.Printing.PaperKind
---@field A3Extra System.Drawing.Printing.PaperKind
---@field A5Extra System.Drawing.Printing.PaperKind
---@field B5Extra System.Drawing.Printing.PaperKind
---@field A2 System.Drawing.Printing.PaperKind
---@field A3Transverse System.Drawing.Printing.PaperKind
---@field A3ExtraTransverse System.Drawing.Printing.PaperKind
---@field JapaneseDoublePostcard System.Drawing.Printing.PaperKind
---@field A6 System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeKakuNumber2 System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeKakuNumber3 System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeChouNumber3 System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeChouNumber4 System.Drawing.Printing.PaperKind
---@field LetterRotated System.Drawing.Printing.PaperKind
---@field A3Rotated System.Drawing.Printing.PaperKind
---@field A4Rotated System.Drawing.Printing.PaperKind
---@field A5Rotated System.Drawing.Printing.PaperKind
---@field B4JisRotated System.Drawing.Printing.PaperKind
---@field B5JisRotated System.Drawing.Printing.PaperKind
---@field JapanesePostcardRotated System.Drawing.Printing.PaperKind
---@field JapaneseDoublePostcardRotated System.Drawing.Printing.PaperKind
---@field A6Rotated System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeKakuNumber2Rotated System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeKakuNumber3Rotated System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeChouNumber3Rotated System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeChouNumber4Rotated System.Drawing.Printing.PaperKind
---@field B6Jis System.Drawing.Printing.PaperKind
---@field B6JisRotated System.Drawing.Printing.PaperKind
---@field Standard12x11 System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeYouNumber4 System.Drawing.Printing.PaperKind
---@field JapaneseEnvelopeYouNumber4Rotated System.Drawing.Printing.PaperKind
---@field Prc16K System.Drawing.Printing.PaperKind
---@field Prc32K System.Drawing.Printing.PaperKind
---@field Prc32KBig System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber1 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber2 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber3 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber4 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber5 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber6 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber7 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber8 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber9 System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber10 System.Drawing.Printing.PaperKind
---@field Prc16KRotated System.Drawing.Printing.PaperKind
---@field Prc32KRotated System.Drawing.Printing.PaperKind
---@field Prc32KBigRotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber1Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber2Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber3Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber4Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber5Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber6Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber7Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber8Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber9Rotated System.Drawing.Printing.PaperKind
---@field PrcEnvelopeNumber10Rotated System.Drawing.Printing.PaperKind
System.Drawing.Printing.PaperKind = {}
---@alias CS.System.Drawing.Printing.PaperKind System.Drawing.Printing.PaperKind
CS.System.Drawing.Printing.PaperKind = System.Drawing.Printing.PaperKind


---@class System.Drawing.Printing.PaperSize : System.Object
---@field Height number
---@field Kind System.Drawing.Printing.PaperKind
---@field PaperName string
---@field RawKind number
---@field Width number
System.Drawing.Printing.PaperSize = {}
---@alias CS.System.Drawing.Printing.PaperSize System.Drawing.Printing.PaperSize
CS.System.Drawing.Printing.PaperSize = System.Drawing.Printing.PaperSize

---@overload fun() : System.Drawing.Printing.PaperSize
---@param name string
---@param width number
---@param height number
---@return System.Drawing.Printing.PaperSize
function System.Drawing.Printing.PaperSize.New(name, width, height) end
---@return string
function System.Drawing.Printing.PaperSize:ToString() end

---@class System.Drawing.Printing.PaperSource : System.Object
---@field Kind System.Drawing.Printing.PaperSourceKind
---@field RawKind number
---@field SourceName string
System.Drawing.Printing.PaperSource = {}
---@alias CS.System.Drawing.Printing.PaperSource System.Drawing.Printing.PaperSource
CS.System.Drawing.Printing.PaperSource = System.Drawing.Printing.PaperSource

---@return System.Drawing.Printing.PaperSource
function System.Drawing.Printing.PaperSource.New() end
---@return string
function System.Drawing.Printing.PaperSource:ToString() end

---@class System.Drawing.Printing.PaperSourceKind
---@field Upper System.Drawing.Printing.PaperSourceKind
---@field Lower System.Drawing.Printing.PaperSourceKind
---@field Middle System.Drawing.Printing.PaperSourceKind
---@field Manual System.Drawing.Printing.PaperSourceKind
---@field Envelope System.Drawing.Printing.PaperSourceKind
---@field ManualFeed System.Drawing.Printing.PaperSourceKind
---@field AutomaticFeed System.Drawing.Printing.PaperSourceKind
---@field TractorFeed System.Drawing.Printing.PaperSourceKind
---@field SmallFormat System.Drawing.Printing.PaperSourceKind
---@field LargeFormat System.Drawing.Printing.PaperSourceKind
---@field LargeCapacity System.Drawing.Printing.PaperSourceKind
---@field Cassette System.Drawing.Printing.PaperSourceKind
---@field FormSource System.Drawing.Printing.PaperSourceKind
---@field Custom System.Drawing.Printing.PaperSourceKind
System.Drawing.Printing.PaperSourceKind = {}
---@alias CS.System.Drawing.Printing.PaperSourceKind System.Drawing.Printing.PaperSourceKind
CS.System.Drawing.Printing.PaperSourceKind = System.Drawing.Printing.PaperSourceKind


---@class System.Drawing.Printing.PreviewPageInfo : System.Object
---@field Image System.Drawing.Image
---@field PhysicalSize System.Drawing.Size
System.Drawing.Printing.PreviewPageInfo = {}
---@alias CS.System.Drawing.Printing.PreviewPageInfo System.Drawing.Printing.PreviewPageInfo
CS.System.Drawing.Printing.PreviewPageInfo = System.Drawing.Printing.PreviewPageInfo

---@param image System.Drawing.Image
---@param physicalSize System.Drawing.Size
---@return System.Drawing.Printing.PreviewPageInfo
function System.Drawing.Printing.PreviewPageInfo.New(image, physicalSize) end

---@class System.Drawing.Printing.PrintAction
---@field PrintToFile System.Drawing.Printing.PrintAction
---@field PrintToPreview System.Drawing.Printing.PrintAction
---@field PrintToPrinter System.Drawing.Printing.PrintAction
System.Drawing.Printing.PrintAction = {}
---@alias CS.System.Drawing.Printing.PrintAction System.Drawing.Printing.PrintAction
CS.System.Drawing.Printing.PrintAction = System.Drawing.Printing.PrintAction


---@class System.Drawing.Printing.PrintEventHandler : System.MulticastDelegate
System.Drawing.Printing.PrintEventHandler = {}
---@alias CS.System.Drawing.Printing.PrintEventHandler System.Drawing.Printing.PrintEventHandler
CS.System.Drawing.Printing.PrintEventHandler = System.Drawing.Printing.PrintEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Printing.PrintEventHandler
function System.Drawing.Printing.PrintEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.PrintEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Drawing.Printing.PrintEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Printing.PrintEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Printing.PrintEventHandler:EndInvoke(result) end

---@class System.Drawing.Printing.PrintPageEventHandler : System.MulticastDelegate
System.Drawing.Printing.PrintPageEventHandler = {}
---@alias CS.System.Drawing.Printing.PrintPageEventHandler System.Drawing.Printing.PrintPageEventHandler
CS.System.Drawing.Printing.PrintPageEventHandler = System.Drawing.Printing.PrintPageEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Printing.PrintPageEventHandler
function System.Drawing.Printing.PrintPageEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Drawing.Printing.PrintPageEventArgs
function System.Drawing.Printing.PrintPageEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Drawing.Printing.PrintPageEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Printing.PrintPageEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Printing.PrintPageEventHandler:EndInvoke(result) end

---@class System.Drawing.Printing.PrintRange
---@field AllPages System.Drawing.Printing.PrintRange
---@field SomePages System.Drawing.Printing.PrintRange
---@field Selection System.Drawing.Printing.PrintRange
---@field CurrentPage System.Drawing.Printing.PrintRange
System.Drawing.Printing.PrintRange = {}
---@alias CS.System.Drawing.Printing.PrintRange System.Drawing.Printing.PrintRange
CS.System.Drawing.Printing.PrintRange = System.Drawing.Printing.PrintRange


---@class System.Drawing.Printing.PrinterResolution : System.Object
---@field Kind System.Drawing.Printing.PrinterResolutionKind
---@field X number
---@field Y number
System.Drawing.Printing.PrinterResolution = {}
---@alias CS.System.Drawing.Printing.PrinterResolution System.Drawing.Printing.PrinterResolution
CS.System.Drawing.Printing.PrinterResolution = System.Drawing.Printing.PrinterResolution

---@return System.Drawing.Printing.PrinterResolution
function System.Drawing.Printing.PrinterResolution.New() end
---@return string
function System.Drawing.Printing.PrinterResolution:ToString() end

---@class System.Drawing.Printing.PrinterResolutionKind
---@field High System.Drawing.Printing.PrinterResolutionKind
---@field Medium System.Drawing.Printing.PrinterResolutionKind
---@field Low System.Drawing.Printing.PrinterResolutionKind
---@field Draft System.Drawing.Printing.PrinterResolutionKind
---@field Custom System.Drawing.Printing.PrinterResolutionKind
System.Drawing.Printing.PrinterResolutionKind = {}
---@alias CS.System.Drawing.Printing.PrinterResolutionKind System.Drawing.Printing.PrinterResolutionKind
CS.System.Drawing.Printing.PrinterResolutionKind = System.Drawing.Printing.PrinterResolutionKind


---@class System.Drawing.Printing.PrinterUnit
---@field Display System.Drawing.Printing.PrinterUnit
---@field ThousandthsOfAnInch System.Drawing.Printing.PrinterUnit
---@field HundredthsOfAMillimeter System.Drawing.Printing.PrinterUnit
---@field TenthsOfAMillimeter System.Drawing.Printing.PrinterUnit
System.Drawing.Printing.PrinterUnit = {}
---@alias CS.System.Drawing.Printing.PrinterUnit System.Drawing.Printing.PrinterUnit
CS.System.Drawing.Printing.PrinterUnit = System.Drawing.Printing.PrinterUnit


---@class System.Drawing.Printing.PrinterUnitConvert : System.Object
System.Drawing.Printing.PrinterUnitConvert = {}
---@alias CS.System.Drawing.Printing.PrinterUnitConvert System.Drawing.Printing.PrinterUnitConvert
CS.System.Drawing.Printing.PrinterUnitConvert = System.Drawing.Printing.PrinterUnitConvert

---@overload fun(value: number, fromUnit: System.Drawing.Printing.PrinterUnit, toUnit: System.Drawing.Printing.PrinterUnit) : number
---@overload fun(value: number, fromUnit: System.Drawing.Printing.PrinterUnit, toUnit: System.Drawing.Printing.PrinterUnit) : number
---@overload fun(value: System.Drawing.Point, fromUnit: System.Drawing.Printing.PrinterUnit, toUnit: System.Drawing.Printing.PrinterUnit) : System.Drawing.Point
---@overload fun(value: System.Drawing.Size, fromUnit: System.Drawing.Printing.PrinterUnit, toUnit: System.Drawing.Printing.PrinterUnit) : System.Drawing.Size
---@overload fun(value: System.Drawing.Rectangle, fromUnit: System.Drawing.Printing.PrinterUnit, toUnit: System.Drawing.Printing.PrinterUnit) : System.Drawing.Rectangle
---@param value System.Drawing.Printing.Margins
---@param fromUnit System.Drawing.Printing.PrinterUnit
---@param toUnit System.Drawing.Printing.PrinterUnit
---@return System.Drawing.Printing.Margins
function System.Drawing.Printing.PrinterUnitConvert.Convert(value, fromUnit, toUnit) end

---@class System.Drawing.Printing.QueryPageSettingsEventArgs : System.Drawing.Printing.PrintEventArgs
---@field PageSettings System.Drawing.Printing.PageSettings
System.Drawing.Printing.QueryPageSettingsEventArgs = {}
---@alias CS.System.Drawing.Printing.QueryPageSettingsEventArgs System.Drawing.Printing.QueryPageSettingsEventArgs
CS.System.Drawing.Printing.QueryPageSettingsEventArgs = System.Drawing.Printing.QueryPageSettingsEventArgs

---@param pageSettings System.Drawing.Printing.PageSettings
---@return System.Drawing.Printing.QueryPageSettingsEventArgs
function System.Drawing.Printing.QueryPageSettingsEventArgs.New(pageSettings) end

---@class System.Drawing.Printing.QueryPageSettingsEventHandler : System.MulticastDelegate
System.Drawing.Printing.QueryPageSettingsEventHandler = {}
---@alias CS.System.Drawing.Printing.QueryPageSettingsEventHandler System.Drawing.Printing.QueryPageSettingsEventHandler
CS.System.Drawing.Printing.QueryPageSettingsEventHandler = System.Drawing.Printing.QueryPageSettingsEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Printing.QueryPageSettingsEventHandler
function System.Drawing.Printing.QueryPageSettingsEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Drawing.Printing.QueryPageSettingsEventArgs
function System.Drawing.Printing.QueryPageSettingsEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Drawing.Printing.QueryPageSettingsEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Printing.QueryPageSettingsEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Printing.QueryPageSettingsEventHandler:EndInvoke(result) end

---@class System.Drawing.Printing.PrintingPermission : System.Security.CodeAccessPermission
---@field Level System.Drawing.Printing.PrintingPermissionLevel
System.Drawing.Printing.PrintingPermission = {}
---@alias CS.System.Drawing.Printing.PrintingPermission System.Drawing.Printing.PrintingPermission
CS.System.Drawing.Printing.PrintingPermission = System.Drawing.Printing.PrintingPermission

---@overload fun(printingLevel: System.Drawing.Printing.PrintingPermissionLevel) : System.Drawing.Printing.PrintingPermission
---@param state System.Security.Permissions.PermissionState
---@return System.Drawing.Printing.PrintingPermission
function System.Drawing.Printing.PrintingPermission.New(state) end
---@return System.Security.IPermission
function System.Drawing.Printing.PrintingPermission:Copy() end
---@param element System.Security.SecurityElement
function System.Drawing.Printing.PrintingPermission:FromXml(element) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Drawing.Printing.PrintingPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Drawing.Printing.PrintingPermission:IsSubsetOf(target) end
---@return boolean
function System.Drawing.Printing.PrintingPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Drawing.Printing.PrintingPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Drawing.Printing.PrintingPermission:Union(target) end

---@class System.Drawing.Printing.PrintingPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Level System.Drawing.Printing.PrintingPermissionLevel
System.Drawing.Printing.PrintingPermissionAttribute = {}
---@alias CS.System.Drawing.Printing.PrintingPermissionAttribute System.Drawing.Printing.PrintingPermissionAttribute
CS.System.Drawing.Printing.PrintingPermissionAttribute = System.Drawing.Printing.PrintingPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Drawing.Printing.PrintingPermissionAttribute
function System.Drawing.Printing.PrintingPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Drawing.Printing.PrintingPermissionAttribute:CreatePermission() end

---@class System.Drawing.Printing.PrintingPermissionLevel
---@field AllPrinting System.Drawing.Printing.PrintingPermissionLevel
---@field DefaultPrinting System.Drawing.Printing.PrintingPermissionLevel
---@field NoPrinting System.Drawing.Printing.PrintingPermissionLevel
---@field SafePrinting System.Drawing.Printing.PrintingPermissionLevel
System.Drawing.Printing.PrintingPermissionLevel = {}
---@alias CS.System.Drawing.Printing.PrintingPermissionLevel System.Drawing.Printing.PrintingPermissionLevel
CS.System.Drawing.Printing.PrintingPermissionLevel = System.Drawing.Printing.PrintingPermissionLevel


---@class System.Drawing.Printing.MarginsConverter : System.ComponentModel.ExpandableObjectConverter
System.Drawing.Printing.MarginsConverter = {}
---@alias CS.System.Drawing.Printing.MarginsConverter System.Drawing.Printing.MarginsConverter
CS.System.Drawing.Printing.MarginsConverter = System.Drawing.Printing.MarginsConverter

---@return System.Drawing.Printing.MarginsConverter
function System.Drawing.Printing.MarginsConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Drawing.Printing.MarginsConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param destinationType System.Type
---@return boolean
function System.Drawing.Printing.MarginsConverter:CanConvertTo(context, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Drawing.Printing.MarginsConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Drawing.Printing.MarginsConverter:ConvertTo(context, culture, value, destinationType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.Printing.MarginsConverter:GetCreateInstanceSupported(context) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propertyValues System.Collections.IDictionary
---@return System.Object
function System.Drawing.Printing.MarginsConverter:CreateInstance(context, propertyValues) end

---@class System.Drawing.Printing.PageSettings : System.Object
---@field Bounds System.Drawing.Rectangle
---@field Color boolean
---@field Landscape boolean
---@field Margins System.Drawing.Printing.Margins
---@field PaperSize System.Drawing.Printing.PaperSize
---@field PaperSource System.Drawing.Printing.PaperSource
---@field PrinterResolution System.Drawing.Printing.PrinterResolution
---@field PrinterSettings System.Drawing.Printing.PrinterSettings
---@field HardMarginX number
---@field HardMarginY number
---@field PrintableArea System.Drawing.RectangleF
System.Drawing.Printing.PageSettings = {}
---@alias CS.System.Drawing.Printing.PageSettings System.Drawing.Printing.PageSettings
CS.System.Drawing.Printing.PageSettings = System.Drawing.Printing.PageSettings

---@overload fun() : System.Drawing.Printing.PageSettings
---@param printerSettings System.Drawing.Printing.PrinterSettings
---@return System.Drawing.Printing.PageSettings
function System.Drawing.Printing.PageSettings.New(printerSettings) end
---@return System.Object
function System.Drawing.Printing.PageSettings:Clone() end
---@param hdevmode System.IntPtr
function System.Drawing.Printing.PageSettings:CopyToHdevmode(hdevmode) end
---@param hdevmode System.IntPtr
function System.Drawing.Printing.PageSettings:SetHdevmode(hdevmode) end
---@return string
function System.Drawing.Printing.PageSettings:ToString() end

---@class System.Drawing.Printing.PreviewPrintController : System.Drawing.Printing.PrintController
---@field IsPreview boolean
---@field UseAntiAlias boolean
System.Drawing.Printing.PreviewPrintController = {}
---@alias CS.System.Drawing.Printing.PreviewPrintController System.Drawing.Printing.PreviewPrintController
CS.System.Drawing.Printing.PreviewPrintController = System.Drawing.Printing.PreviewPrintController

---@return System.Drawing.Printing.PreviewPrintController
function System.Drawing.Printing.PreviewPrintController.New() end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintPageEventArgs
function System.Drawing.Printing.PreviewPrintController:OnEndPage(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.PreviewPrintController:OnStartPrint(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.PreviewPrintController:OnEndPrint(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintPageEventArgs
---@return System.Drawing.Graphics
function System.Drawing.Printing.PreviewPrintController:OnStartPage(document, e) end
---@return System.Drawing.Printing.PreviewPageInfo[]
function System.Drawing.Printing.PreviewPrintController:GetPreviewPageInfo() end

---@class System.Drawing.Printing.PrintController : System.Object
---@field IsPreview boolean
System.Drawing.Printing.PrintController = {}
---@alias CS.System.Drawing.Printing.PrintController System.Drawing.Printing.PrintController
CS.System.Drawing.Printing.PrintController = System.Drawing.Printing.PrintController

---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintPageEventArgs
function System.Drawing.Printing.PrintController:OnEndPage(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.PrintController:OnStartPrint(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.PrintController:OnEndPrint(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintPageEventArgs
---@return System.Drawing.Graphics
function System.Drawing.Printing.PrintController:OnStartPage(document, e) end

---@class System.Drawing.Printing.PrintDocument : System.ComponentModel.Component
---@field DefaultPageSettings System.Drawing.Printing.PageSettings
---@field DocumentName string
---@field PrintController System.Drawing.Printing.PrintController
---@field PrinterSettings System.Drawing.Printing.PrinterSettings
---@field OriginAtMargins boolean
System.Drawing.Printing.PrintDocument = {}
---@alias CS.System.Drawing.Printing.PrintDocument System.Drawing.Printing.PrintDocument
CS.System.Drawing.Printing.PrintDocument = System.Drawing.Printing.PrintDocument

---@return System.Drawing.Printing.PrintDocument
function System.Drawing.Printing.PrintDocument.New() end
function System.Drawing.Printing.PrintDocument:Print() end
---@return string
function System.Drawing.Printing.PrintDocument:ToString() end

---@class System.Drawing.Printing.PrintEventArgs : System.ComponentModel.CancelEventArgs
---@field PrintAction System.Drawing.Printing.PrintAction
System.Drawing.Printing.PrintEventArgs = {}
---@alias CS.System.Drawing.Printing.PrintEventArgs System.Drawing.Printing.PrintEventArgs
CS.System.Drawing.Printing.PrintEventArgs = System.Drawing.Printing.PrintEventArgs

---@return System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.PrintEventArgs.New() end

---@class System.Drawing.Printing.PrintPageEventArgs : System.EventArgs
---@field Cancel boolean
---@field Graphics System.Drawing.Graphics
---@field HasMorePages boolean
---@field MarginBounds System.Drawing.Rectangle
---@field PageBounds System.Drawing.Rectangle
---@field PageSettings System.Drawing.Printing.PageSettings
System.Drawing.Printing.PrintPageEventArgs = {}
---@alias CS.System.Drawing.Printing.PrintPageEventArgs System.Drawing.Printing.PrintPageEventArgs
CS.System.Drawing.Printing.PrintPageEventArgs = System.Drawing.Printing.PrintPageEventArgs

---@param graphics System.Drawing.Graphics
---@param marginBounds System.Drawing.Rectangle
---@param pageBounds System.Drawing.Rectangle
---@param pageSettings System.Drawing.Printing.PageSettings
---@return System.Drawing.Printing.PrintPageEventArgs
function System.Drawing.Printing.PrintPageEventArgs.New(graphics, marginBounds, pageBounds, pageSettings) end

---@class System.Drawing.Printing.PrinterSettings : System.Object
---@field InstalledPrinters System.Drawing.Printing.PrinterSettings.StringCollection
---@field CanDuplex boolean
---@field Collate boolean
---@field Copies number
---@field DefaultPageSettings System.Drawing.Printing.PageSettings
---@field Duplex System.Drawing.Printing.Duplex
---@field FromPage number
---@field IsDefaultPrinter boolean
---@field IsPlotter boolean
---@field IsValid boolean
---@field LandscapeAngle number
---@field MaximumCopies number
---@field MaximumPage number
---@field MinimumPage number
---@field PaperSizes System.Drawing.Printing.PrinterSettings.PaperSizeCollection
---@field PaperSources System.Drawing.Printing.PrinterSettings.PaperSourceCollection
---@field PrintFileName string
---@field PrinterName string
---@field PrinterResolutions System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection
---@field PrintRange System.Drawing.Printing.PrintRange
---@field PrintToFile boolean
---@field SupportsColor boolean
---@field ToPage number
System.Drawing.Printing.PrinterSettings = {}
---@alias CS.System.Drawing.Printing.PrinterSettings System.Drawing.Printing.PrinterSettings
CS.System.Drawing.Printing.PrinterSettings = System.Drawing.Printing.PrinterSettings

---@return System.Drawing.Printing.PrinterSettings
function System.Drawing.Printing.PrinterSettings.New() end
---@return System.Object
function System.Drawing.Printing.PrinterSettings:Clone() end
---@overload fun() : System.Drawing.Graphics
---@overload fun(self: System.Drawing.Printing.PrinterSettings, honorOriginAtMargins: boolean) : System.Drawing.Graphics
---@overload fun(self: System.Drawing.Printing.PrinterSettings, pageSettings: System.Drawing.Printing.PageSettings) : System.Drawing.Graphics
---@param pageSettings System.Drawing.Printing.PageSettings
---@param honorOriginAtMargins boolean
---@return System.Drawing.Graphics
function System.Drawing.Printing.PrinterSettings:CreateMeasurementGraphics(pageSettings, honorOriginAtMargins) end
---@overload fun() : System.IntPtr
---@param pageSettings System.Drawing.Printing.PageSettings
---@return System.IntPtr
function System.Drawing.Printing.PrinterSettings:GetHdevmode(pageSettings) end
---@return System.IntPtr
function System.Drawing.Printing.PrinterSettings:GetHdevnames() end
---@overload fun(self: System.Drawing.Printing.PrinterSettings, image: System.Drawing.Image) : boolean
---@param imageFormat System.Drawing.Imaging.ImageFormat
---@return boolean
function System.Drawing.Printing.PrinterSettings:IsDirectPrintingSupported(imageFormat) end
---@param hdevmode System.IntPtr
function System.Drawing.Printing.PrinterSettings:SetHdevmode(hdevmode) end
---@param hdevnames System.IntPtr
function System.Drawing.Printing.PrinterSettings:SetHdevnames(hdevnames) end
---@return string
function System.Drawing.Printing.PrinterSettings:ToString() end

---@class System.Drawing.Printing.PrinterSettings.PaperSourceCollection : System.Object
---@field Count number
---@field Item System.Drawing.Printing.PaperSource
System.Drawing.Printing.PrinterSettings.PaperSourceCollection = {}
---@alias CS.System.Drawing.Printing.PrinterSettings.PaperSourceCollection System.Drawing.Printing.PrinterSettings.PaperSourceCollection
CS.System.Drawing.Printing.PrinterSettings.PaperSourceCollection = System.Drawing.Printing.PrinterSettings.PaperSourceCollection

---@param array System.Drawing.Printing.PaperSource[]
---@return System.Drawing.Printing.PrinterSettings.PaperSourceCollection
function System.Drawing.Printing.PrinterSettings.PaperSourceCollection.New(array) end
---@param paperSource System.Drawing.Printing.PaperSource
---@return number
function System.Drawing.Printing.PrinterSettings.PaperSourceCollection:Add(paperSource) end
---@param paperSources System.Drawing.Printing.PaperSource[]
---@param index number
function System.Drawing.Printing.PrinterSettings.PaperSourceCollection:CopyTo(paperSources, index) end
---@return System.Collections.IEnumerator
function System.Drawing.Printing.PrinterSettings.PaperSourceCollection:GetEnumerator() end

---@class System.Drawing.Printing.PrinterSettings.PaperSizeCollection : System.Object
---@field Count number
---@field Item System.Drawing.Printing.PaperSize
System.Drawing.Printing.PrinterSettings.PaperSizeCollection = {}
---@alias CS.System.Drawing.Printing.PrinterSettings.PaperSizeCollection System.Drawing.Printing.PrinterSettings.PaperSizeCollection
CS.System.Drawing.Printing.PrinterSettings.PaperSizeCollection = System.Drawing.Printing.PrinterSettings.PaperSizeCollection

---@param array System.Drawing.Printing.PaperSize[]
---@return System.Drawing.Printing.PrinterSettings.PaperSizeCollection
function System.Drawing.Printing.PrinterSettings.PaperSizeCollection.New(array) end
---@param paperSize System.Drawing.Printing.PaperSize
---@return number
function System.Drawing.Printing.PrinterSettings.PaperSizeCollection:Add(paperSize) end
---@param paperSizes System.Drawing.Printing.PaperSize[]
---@param index number
function System.Drawing.Printing.PrinterSettings.PaperSizeCollection:CopyTo(paperSizes, index) end
---@return System.Collections.IEnumerator
function System.Drawing.Printing.PrinterSettings.PaperSizeCollection:GetEnumerator() end

---@class System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection : System.Object
---@field Count number
---@field Item System.Drawing.Printing.PrinterResolution
System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection = {}
---@alias CS.System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection
CS.System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection = System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection

---@param array System.Drawing.Printing.PrinterResolution[]
---@return System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection
function System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection.New(array) end
---@param printerResolution System.Drawing.Printing.PrinterResolution
---@return number
function System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection:Add(printerResolution) end
---@param printerResolutions System.Drawing.Printing.PrinterResolution[]
---@param index number
function System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection:CopyTo(printerResolutions, index) end
---@return System.Collections.IEnumerator
function System.Drawing.Printing.PrinterSettings.PrinterResolutionCollection:GetEnumerator() end

---@class System.Drawing.Printing.PrinterSettings.StringCollection : System.Object
---@field Count number
---@field Item string
System.Drawing.Printing.PrinterSettings.StringCollection = {}
---@alias CS.System.Drawing.Printing.PrinterSettings.StringCollection System.Drawing.Printing.PrinterSettings.StringCollection
CS.System.Drawing.Printing.PrinterSettings.StringCollection = System.Drawing.Printing.PrinterSettings.StringCollection

---@param array System.String[]
---@return System.Drawing.Printing.PrinterSettings.StringCollection
function System.Drawing.Printing.PrinterSettings.StringCollection.New(array) end
---@param value string
---@return number
function System.Drawing.Printing.PrinterSettings.StringCollection:Add(value) end
---@param strings System.String[]
---@param index number
function System.Drawing.Printing.PrinterSettings.StringCollection:CopyTo(strings, index) end
---@return System.Collections.IEnumerator
function System.Drawing.Printing.PrinterSettings.StringCollection:GetEnumerator() end

---@class System.Drawing.Printing.PrintingServices : System.Object
System.Drawing.Printing.PrintingServices = {}
---@alias CS.System.Drawing.Printing.PrintingServices System.Drawing.Printing.PrintingServices
CS.System.Drawing.Printing.PrintingServices = System.Drawing.Printing.PrintingServices


---@class System.Drawing.Printing.GlobalPrintingServices : System.Object
System.Drawing.Printing.GlobalPrintingServices = {}
---@alias CS.System.Drawing.Printing.GlobalPrintingServices System.Drawing.Printing.GlobalPrintingServices
CS.System.Drawing.Printing.GlobalPrintingServices = System.Drawing.Printing.GlobalPrintingServices


---@class System.Drawing.Printing.SysPrn : System.Object
System.Drawing.Printing.SysPrn = {}
---@alias CS.System.Drawing.Printing.SysPrn System.Drawing.Printing.SysPrn
CS.System.Drawing.Printing.SysPrn = System.Drawing.Printing.SysPrn

---@return System.Drawing.Printing.SysPrn
function System.Drawing.Printing.SysPrn.New() end

---@class System.Drawing.Printing.SysPrn.Printer : System.Object
---@field Comment string
---@field Port string
---@field Type string
---@field Status string
---@field Settings System.Drawing.Printing.PrinterSettings
System.Drawing.Printing.SysPrn.Printer = {}
---@alias CS.System.Drawing.Printing.SysPrn.Printer System.Drawing.Printing.SysPrn.Printer
CS.System.Drawing.Printing.SysPrn.Printer = System.Drawing.Printing.SysPrn.Printer

---@param port string
---@param type string
---@param status string
---@param comment string
---@return System.Drawing.Printing.SysPrn.Printer
function System.Drawing.Printing.SysPrn.Printer.New(port, type, status, comment) end

---@class System.Drawing.Printing.GraphicsPrinter : System.Object
System.Drawing.Printing.GraphicsPrinter = {}
---@alias CS.System.Drawing.Printing.GraphicsPrinter System.Drawing.Printing.GraphicsPrinter
CS.System.Drawing.Printing.GraphicsPrinter = System.Drawing.Printing.GraphicsPrinter


---@class System.Drawing.Printing.PrintingServicesUnix : System.Drawing.Printing.PrintingServices
System.Drawing.Printing.PrintingServicesUnix = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix System.Drawing.Printing.PrintingServicesUnix
CS.System.Drawing.Printing.PrintingServicesUnix = System.Drawing.Printing.PrintingServicesUnix


---@class System.Drawing.Printing.PrintingServicesUnix.DOCINFO : System.ValueType
---@field settings System.Drawing.Printing.PrinterSettings
---@field default_page_settings System.Drawing.Printing.PageSettings
---@field title string
---@field filename string
System.Drawing.Printing.PrintingServicesUnix.DOCINFO = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.DOCINFO System.Drawing.Printing.PrintingServicesUnix.DOCINFO
CS.System.Drawing.Printing.PrintingServicesUnix.DOCINFO = System.Drawing.Printing.PrintingServicesUnix.DOCINFO


---@class System.Drawing.Printing.PrintingServicesUnix.PPD_SIZE : System.ValueType
---@field marked number
---@field name string
---@field width number
---@field length number
---@field left number
---@field bottom number
---@field right number
---@field top number
System.Drawing.Printing.PrintingServicesUnix.PPD_SIZE = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.PPD_SIZE System.Drawing.Printing.PrintingServicesUnix.PPD_SIZE
CS.System.Drawing.Printing.PrintingServicesUnix.PPD_SIZE = System.Drawing.Printing.PrintingServicesUnix.PPD_SIZE


---@class System.Drawing.Printing.PrintingServicesUnix.PPD_GROUP : System.ValueType
---@field text string
---@field name string
---@field num_options number
---@field options System.IntPtr
---@field num_subgroups number
---@field subgrups System.IntPtr
System.Drawing.Printing.PrintingServicesUnix.PPD_GROUP = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.PPD_GROUP System.Drawing.Printing.PrintingServicesUnix.PPD_GROUP
CS.System.Drawing.Printing.PrintingServicesUnix.PPD_GROUP = System.Drawing.Printing.PrintingServicesUnix.PPD_GROUP


---@class System.Drawing.Printing.PrintingServicesUnix.PPD_OPTION : System.ValueType
---@field conflicted number
---@field keyword string
---@field defchoice string
---@field text string
---@field ui number
---@field section number
---@field order number
---@field num_choices number
---@field choices System.IntPtr
System.Drawing.Printing.PrintingServicesUnix.PPD_OPTION = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.PPD_OPTION System.Drawing.Printing.PrintingServicesUnix.PPD_OPTION
CS.System.Drawing.Printing.PrintingServicesUnix.PPD_OPTION = System.Drawing.Printing.PrintingServicesUnix.PPD_OPTION


---@class System.Drawing.Printing.PrintingServicesUnix.PPD_CHOICE : System.ValueType
---@field marked number
---@field choice string
---@field text string
---@field code System.IntPtr
---@field option System.IntPtr
System.Drawing.Printing.PrintingServicesUnix.PPD_CHOICE = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.PPD_CHOICE System.Drawing.Printing.PrintingServicesUnix.PPD_CHOICE
CS.System.Drawing.Printing.PrintingServicesUnix.PPD_CHOICE = System.Drawing.Printing.PrintingServicesUnix.PPD_CHOICE


---@class System.Drawing.Printing.PrintingServicesUnix.PPD_FILE : System.ValueType
---@field language_level number
---@field color_device number
---@field variable_sizes number
---@field accurate_screens number
---@field contone_only number
---@field landscape number
---@field model_number number
---@field manual_copies number
---@field throughput number
---@field colorspace number
---@field patches System.IntPtr
---@field num_emulations number
---@field emulations System.IntPtr
---@field jcl_begin System.IntPtr
---@field jcl_ps System.IntPtr
---@field jcl_end System.IntPtr
---@field lang_encoding System.IntPtr
---@field lang_version System.IntPtr
---@field modelname System.IntPtr
---@field ttrasterizer System.IntPtr
---@field manufacturer System.IntPtr
---@field product System.IntPtr
---@field nickname System.IntPtr
---@field shortnickname System.IntPtr
---@field num_groups number
---@field groups System.IntPtr
---@field num_sizes number
---@field sizes System.IntPtr
System.Drawing.Printing.PrintingServicesUnix.PPD_FILE = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.PPD_FILE System.Drawing.Printing.PrintingServicesUnix.PPD_FILE
CS.System.Drawing.Printing.PrintingServicesUnix.PPD_FILE = System.Drawing.Printing.PrintingServicesUnix.PPD_FILE


---@class System.Drawing.Printing.PrintingServicesUnix.CUPS_OPTIONS : System.ValueType
---@field name System.IntPtr
---@field val System.IntPtr
System.Drawing.Printing.PrintingServicesUnix.CUPS_OPTIONS = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.CUPS_OPTIONS System.Drawing.Printing.PrintingServicesUnix.CUPS_OPTIONS
CS.System.Drawing.Printing.PrintingServicesUnix.CUPS_OPTIONS = System.Drawing.Printing.PrintingServicesUnix.CUPS_OPTIONS


---@class System.Drawing.Printing.PrintingServicesUnix.CUPS_DESTS : System.ValueType
---@field name System.IntPtr
---@field instance System.IntPtr
---@field is_default number
---@field num_options number
---@field options System.IntPtr
System.Drawing.Printing.PrintingServicesUnix.CUPS_DESTS = {}
---@alias CS.System.Drawing.Printing.PrintingServicesUnix.CUPS_DESTS System.Drawing.Printing.PrintingServicesUnix.CUPS_DESTS
CS.System.Drawing.Printing.PrintingServicesUnix.CUPS_DESTS = System.Drawing.Printing.PrintingServicesUnix.CUPS_DESTS


---@class System.Drawing.Printing.GlobalPrintingServicesUnix : System.Drawing.Printing.GlobalPrintingServices
System.Drawing.Printing.GlobalPrintingServicesUnix = {}
---@alias CS.System.Drawing.Printing.GlobalPrintingServicesUnix System.Drawing.Printing.GlobalPrintingServicesUnix
CS.System.Drawing.Printing.GlobalPrintingServicesUnix = System.Drawing.Printing.GlobalPrintingServicesUnix

---@return System.Drawing.Printing.GlobalPrintingServicesUnix
function System.Drawing.Printing.GlobalPrintingServicesUnix.New() end

---@class System.Drawing.Printing.PrintingServicesWin32 : System.Drawing.Printing.PrintingServices
System.Drawing.Printing.PrintingServicesWin32 = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32 System.Drawing.Printing.PrintingServicesWin32
CS.System.Drawing.Printing.PrintingServicesWin32 = System.Drawing.Printing.PrintingServicesWin32

---@param hDc System.IntPtr
---@return System.IntPtr
function System.Drawing.Printing.PrintingServicesWin32.Win32DeleteDC(hDc) end
---@param hDc System.IntPtr
---@param index number
---@return number
function System.Drawing.Printing.PrintingServicesWin32.Win32GetDeviceCaps(hDc, index) end

---@class System.Drawing.Printing.PrintingServicesWin32.PRINTER_INFO : System.ValueType
---@field pServerName System.IntPtr
---@field pPrinterName System.IntPtr
---@field pShareName System.IntPtr
---@field pPortName System.IntPtr
---@field pDriverName System.IntPtr
---@field pComment System.IntPtr
---@field pLocation System.IntPtr
---@field pDevMode System.IntPtr
---@field pSepFile System.IntPtr
---@field pPrintProcessor System.IntPtr
---@field pDatatype System.IntPtr
---@field pParameters System.IntPtr
---@field pSecurityDescriptor System.IntPtr
---@field Attributes number
---@field Priority number
---@field DefaultPriority number
---@field StartTime number
---@field UntilTime number
---@field Status number
---@field cJobs number
---@field AveragePPM number
System.Drawing.Printing.PrintingServicesWin32.PRINTER_INFO = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.PRINTER_INFO System.Drawing.Printing.PrintingServicesWin32.PRINTER_INFO
CS.System.Drawing.Printing.PrintingServicesWin32.PRINTER_INFO = System.Drawing.Printing.PrintingServicesWin32.PRINTER_INFO


---@class System.Drawing.Printing.PrintingServicesWin32.DOCINFO : System.ValueType
---@field cbSize number
---@field lpszDocName System.IntPtr
---@field lpszOutput System.IntPtr
---@field lpszDatatype System.IntPtr
---@field fwType number
System.Drawing.Printing.PrintingServicesWin32.DOCINFO = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.DOCINFO System.Drawing.Printing.PrintingServicesWin32.DOCINFO
CS.System.Drawing.Printing.PrintingServicesWin32.DOCINFO = System.Drawing.Printing.PrintingServicesWin32.DOCINFO


---@class System.Drawing.Printing.PrintingServicesWin32.DEVMODE : System.ValueType
---@field dmDeviceName string
---@field dmSpecVersion number
---@field dmDriverVersion number
---@field dmSize number
---@field dmDriverExtra number
---@field dmFields number
---@field dmOrientation number
---@field dmPaperSize number
---@field dmPaperLength number
---@field dmPaperWidth number
---@field dmScale number
---@field dmCopies number
---@field dmDefaultSource number
---@field dmPrintQuality number
---@field dmColor number
---@field dmDuplex number
---@field dmYResolution number
---@field dmTTOption number
---@field dmCollate number
---@field dmFormName string
---@field dmLogPixels number
---@field dmBitsPerPel number
---@field dmPelsWidth number
---@field dmPelsHeight number
---@field dmDisplayFlags number
---@field dmDisplayFrequency number
---@field dmICMMethod number
---@field dmICMIntent number
---@field dmMediaType number
---@field dmDitherType number
---@field dmReserved1 number
---@field dmReserved2 number
---@field dmPanningWidth number
---@field dmPanningHeight number
System.Drawing.Printing.PrintingServicesWin32.DEVMODE = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.DEVMODE System.Drawing.Printing.PrintingServicesWin32.DEVMODE
CS.System.Drawing.Printing.PrintingServicesWin32.DEVMODE = System.Drawing.Printing.PrintingServicesWin32.DEVMODE


---@class System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_FIELDS System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PAPERS System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PAPERSIZE System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_MINEXTENT System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_MAXEXTENT System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_BINS System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_DUPLEX System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_SIZE System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_EXTRA System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_VERSION System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_DRIVER System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_BINNAMES System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_ENUMRESOLUTIONS System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_FILEDEPENDENCIES System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_TRUETYPE System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PAPERNAMES System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_ORIENTATION System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_COPIES System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_BINADJUST System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_EMF_COMPLIANT System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_DATATYPE_PRODUCED System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_COLLATE System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_MANUFACTURER System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_MODEL System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PERSONALITY System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PRINTRATE System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PRINTRATEUNIT System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PRINTERMEM System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_MEDIAREADY System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_STAPLE System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_PRINTRATEPPM System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_COLORDEVICE System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
---@field DC_NUP System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
System.Drawing.Printing.PrintingServicesWin32.DCCapabilities = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.DCCapabilities System.Drawing.Printing.PrintingServicesWin32.DCCapabilities
CS.System.Drawing.Printing.PrintingServicesWin32.DCCapabilities = System.Drawing.Printing.PrintingServicesWin32.DCCapabilities


---@class System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PAUSED System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_ERROR System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PENDING_DELETION System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PAPER_JAM System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PAPER_OUT System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_MANUAL_FEED System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PAPER_PROBLEM System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_OFFLINE System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_IO_ACTIVE System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_BUSY System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PRINTING System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_OUTPUT_BIN_FULL System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_NOT_AVAILABLE System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_WAITING System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PROCESSING System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_INITIALIZING System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_WARMING_UP System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_TONER_LOW System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_NO_TONER System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_PAGE_PUNT System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_USER_INTERVENTION System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_OUT_OF_MEMORY System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_DOOR_OPEN System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_SERVER_UNKNOWN System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
---@field PS_POWER_SAVE System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
System.Drawing.Printing.PrintingServicesWin32.PrinterStatus = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.PrinterStatus System.Drawing.Printing.PrintingServicesWin32.PrinterStatus
CS.System.Drawing.Printing.PrintingServicesWin32.PrinterStatus = System.Drawing.Printing.PrintingServicesWin32.PrinterStatus


---@class System.Drawing.Printing.PrintingServicesWin32.DevCapabilities
---@field TECHNOLOGY System.Drawing.Printing.PrintingServicesWin32.DevCapabilities
System.Drawing.Printing.PrintingServicesWin32.DevCapabilities = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.DevCapabilities System.Drawing.Printing.PrintingServicesWin32.DevCapabilities
CS.System.Drawing.Printing.PrintingServicesWin32.DevCapabilities = System.Drawing.Printing.PrintingServicesWin32.DevCapabilities


---@class System.Drawing.Printing.PrintingServicesWin32.PrinterType
---@field DT_PLOTTER System.Drawing.Printing.PrintingServicesWin32.PrinterType
---@field DT_RASDIPLAY System.Drawing.Printing.PrintingServicesWin32.PrinterType
---@field DT_RASPRINTER System.Drawing.Printing.PrintingServicesWin32.PrinterType
---@field DT_RASCAMERA System.Drawing.Printing.PrintingServicesWin32.PrinterType
---@field DT_CHARSTREAM System.Drawing.Printing.PrintingServicesWin32.PrinterType
---@field DT_METAFILE System.Drawing.Printing.PrintingServicesWin32.PrinterType
---@field DT_DISPFILE System.Drawing.Printing.PrintingServicesWin32.PrinterType
System.Drawing.Printing.PrintingServicesWin32.PrinterType = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.PrinterType System.Drawing.Printing.PrintingServicesWin32.PrinterType
CS.System.Drawing.Printing.PrintingServicesWin32.PrinterType = System.Drawing.Printing.PrintingServicesWin32.PrinterType


---@class System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_DEFAULT System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_LOCAL System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_CONNECTIONS System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_FAVORITE System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_NAME System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_REMOTE System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_SHARED System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
---@field PRINTER_ENUM_NETWORK System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
System.Drawing.Printing.PrintingServicesWin32.EnumPrinters = {}
---@alias CS.System.Drawing.Printing.PrintingServicesWin32.EnumPrinters System.Drawing.Printing.PrintingServicesWin32.EnumPrinters
CS.System.Drawing.Printing.PrintingServicesWin32.EnumPrinters = System.Drawing.Printing.PrintingServicesWin32.EnumPrinters


---@class System.Drawing.Printing.GlobalPrintingServicesWin32 : System.Drawing.Printing.GlobalPrintingServices
System.Drawing.Printing.GlobalPrintingServicesWin32 = {}
---@alias CS.System.Drawing.Printing.GlobalPrintingServicesWin32 System.Drawing.Printing.GlobalPrintingServicesWin32
CS.System.Drawing.Printing.GlobalPrintingServicesWin32 = System.Drawing.Printing.GlobalPrintingServicesWin32

---@return System.Drawing.Printing.GlobalPrintingServicesWin32
function System.Drawing.Printing.GlobalPrintingServicesWin32.New() end

---@class System.Drawing.Printing.StandardPrintController : System.Drawing.Printing.PrintController
System.Drawing.Printing.StandardPrintController = {}
---@alias CS.System.Drawing.Printing.StandardPrintController System.Drawing.Printing.StandardPrintController
CS.System.Drawing.Printing.StandardPrintController = System.Drawing.Printing.StandardPrintController

---@return System.Drawing.Printing.StandardPrintController
function System.Drawing.Printing.StandardPrintController.New() end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintPageEventArgs
function System.Drawing.Printing.StandardPrintController:OnEndPage(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.StandardPrintController:OnStartPrint(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintEventArgs
function System.Drawing.Printing.StandardPrintController:OnEndPrint(document, e) end
---@param document System.Drawing.Printing.PrintDocument
---@param e System.Drawing.Printing.PrintPageEventArgs
---@return System.Drawing.Graphics
function System.Drawing.Printing.StandardPrintController:OnStartPage(document, e) end

---@class System.Drawing.Internal.GPPOINT : System.Object
System.Drawing.Internal.GPPOINT = {}
---@alias CS.System.Drawing.Internal.GPPOINT System.Drawing.Internal.GPPOINT
CS.System.Drawing.Internal.GPPOINT = System.Drawing.Internal.GPPOINT


---@class System.Drawing.Internal.GPPOINTF : System.Object
System.Drawing.Internal.GPPOINTF = {}
---@alias CS.System.Drawing.Internal.GPPOINTF System.Drawing.Internal.GPPOINTF
CS.System.Drawing.Internal.GPPOINTF = System.Drawing.Internal.GPPOINTF


---@class System.Drawing.Internal.GPRECT : System.ValueType
System.Drawing.Internal.GPRECT = {}
---@alias CS.System.Drawing.Internal.GPRECT System.Drawing.Internal.GPRECT
CS.System.Drawing.Internal.GPRECT = System.Drawing.Internal.GPRECT


---@class System.Drawing.Internal.GPRECTF : System.ValueType
System.Drawing.Internal.GPRECTF = {}
---@alias CS.System.Drawing.Internal.GPRECTF System.Drawing.Internal.GPRECTF
CS.System.Drawing.Internal.GPRECTF = System.Drawing.Internal.GPRECTF


---@class System.Drawing.Imaging.ColorAdjustType
---@field Default System.Drawing.Imaging.ColorAdjustType
---@field Bitmap System.Drawing.Imaging.ColorAdjustType
---@field Brush System.Drawing.Imaging.ColorAdjustType
---@field Pen System.Drawing.Imaging.ColorAdjustType
---@field Text System.Drawing.Imaging.ColorAdjustType
---@field Count System.Drawing.Imaging.ColorAdjustType
---@field Any System.Drawing.Imaging.ColorAdjustType
System.Drawing.Imaging.ColorAdjustType = {}
---@alias CS.System.Drawing.Imaging.ColorAdjustType System.Drawing.Imaging.ColorAdjustType
CS.System.Drawing.Imaging.ColorAdjustType = System.Drawing.Imaging.ColorAdjustType


---@class System.Drawing.Imaging.ColorChannelFlag
---@field ColorChannelC System.Drawing.Imaging.ColorChannelFlag
---@field ColorChannelM System.Drawing.Imaging.ColorChannelFlag
---@field ColorChannelY System.Drawing.Imaging.ColorChannelFlag
---@field ColorChannelK System.Drawing.Imaging.ColorChannelFlag
---@field ColorChannelLast System.Drawing.Imaging.ColorChannelFlag
System.Drawing.Imaging.ColorChannelFlag = {}
---@alias CS.System.Drawing.Imaging.ColorChannelFlag System.Drawing.Imaging.ColorChannelFlag
CS.System.Drawing.Imaging.ColorChannelFlag = System.Drawing.Imaging.ColorChannelFlag


---@class System.Drawing.Imaging.ColorMap : System.Object
---@field OldColor System.Drawing.Color
---@field NewColor System.Drawing.Color
System.Drawing.Imaging.ColorMap = {}
---@alias CS.System.Drawing.Imaging.ColorMap System.Drawing.Imaging.ColorMap
CS.System.Drawing.Imaging.ColorMap = System.Drawing.Imaging.ColorMap

---@return System.Drawing.Imaging.ColorMap
function System.Drawing.Imaging.ColorMap.New() end

---@class System.Drawing.Imaging.ColorMapType
---@field Default System.Drawing.Imaging.ColorMapType
---@field Brush System.Drawing.Imaging.ColorMapType
System.Drawing.Imaging.ColorMapType = {}
---@alias CS.System.Drawing.Imaging.ColorMapType System.Drawing.Imaging.ColorMapType
CS.System.Drawing.Imaging.ColorMapType = System.Drawing.Imaging.ColorMapType


---@class System.Drawing.Imaging.ColorMatrix : System.Object
---@field Matrix00 number
---@field Matrix01 number
---@field Matrix02 number
---@field Matrix03 number
---@field Matrix04 number
---@field Matrix10 number
---@field Matrix11 number
---@field Matrix12 number
---@field Matrix13 number
---@field Matrix14 number
---@field Matrix20 number
---@field Matrix21 number
---@field Matrix22 number
---@field Matrix23 number
---@field Matrix24 number
---@field Matrix30 number
---@field Matrix31 number
---@field Matrix32 number
---@field Matrix33 number
---@field Matrix34 number
---@field Matrix40 number
---@field Matrix41 number
---@field Matrix42 number
---@field Matrix43 number
---@field Matrix44 number
---@field Item number
System.Drawing.Imaging.ColorMatrix = {}
---@alias CS.System.Drawing.Imaging.ColorMatrix System.Drawing.Imaging.ColorMatrix
CS.System.Drawing.Imaging.ColorMatrix = System.Drawing.Imaging.ColorMatrix

---@overload fun() : System.Drawing.Imaging.ColorMatrix
---@param newColorMatrix System.Single[][]
---@return System.Drawing.Imaging.ColorMatrix
function System.Drawing.Imaging.ColorMatrix.New(newColorMatrix) end

---@class System.Drawing.Imaging.ColorMatrixFlag
---@field Default System.Drawing.Imaging.ColorMatrixFlag
---@field SkipGrays System.Drawing.Imaging.ColorMatrixFlag
---@field AltGrays System.Drawing.Imaging.ColorMatrixFlag
System.Drawing.Imaging.ColorMatrixFlag = {}
---@alias CS.System.Drawing.Imaging.ColorMatrixFlag System.Drawing.Imaging.ColorMatrixFlag
CS.System.Drawing.Imaging.ColorMatrixFlag = System.Drawing.Imaging.ColorMatrixFlag


---@class System.Drawing.Imaging.ColorMode
---@field Argb32Mode System.Drawing.Imaging.ColorMode
---@field Argb64Mode System.Drawing.Imaging.ColorMode
System.Drawing.Imaging.ColorMode = {}
---@alias CS.System.Drawing.Imaging.ColorMode System.Drawing.Imaging.ColorMode
CS.System.Drawing.Imaging.ColorMode = System.Drawing.Imaging.ColorMode


---@class System.Drawing.Imaging.ColorPalette : System.Object
---@field Flags number
---@field Entries System.Drawing.Color[]
System.Drawing.Imaging.ColorPalette = {}
---@alias CS.System.Drawing.Imaging.ColorPalette System.Drawing.Imaging.ColorPalette
CS.System.Drawing.Imaging.ColorPalette = System.Drawing.Imaging.ColorPalette


---@class System.Drawing.Imaging.EmfPlusFlags
---@field Display System.Drawing.Imaging.EmfPlusFlags
---@field NonDualGdi System.Drawing.Imaging.EmfPlusFlags
System.Drawing.Imaging.EmfPlusFlags = {}
---@alias CS.System.Drawing.Imaging.EmfPlusFlags System.Drawing.Imaging.EmfPlusFlags
CS.System.Drawing.Imaging.EmfPlusFlags = System.Drawing.Imaging.EmfPlusFlags


---@class System.Drawing.Imaging.EmfPlusRecordType
---@field WmfRecordBase System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetBkColor System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetBkMode System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetMapMode System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetROP2 System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetRelAbs System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetPolyFillMode System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetStretchBltMode System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetTextCharExtra System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetTextColor System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetTextJustification System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetWindowOrg System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetWindowExt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetViewportOrg System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetViewportExt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfOffsetWindowOrg System.Drawing.Imaging.EmfPlusRecordType
---@field WmfScaleWindowExt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfOffsetViewportOrg System.Drawing.Imaging.EmfPlusRecordType
---@field WmfScaleViewportExt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfLineTo System.Drawing.Imaging.EmfPlusRecordType
---@field WmfMoveTo System.Drawing.Imaging.EmfPlusRecordType
---@field WmfExcludeClipRect System.Drawing.Imaging.EmfPlusRecordType
---@field WmfIntersectClipRect System.Drawing.Imaging.EmfPlusRecordType
---@field WmfArc System.Drawing.Imaging.EmfPlusRecordType
---@field WmfEllipse System.Drawing.Imaging.EmfPlusRecordType
---@field WmfFloodFill System.Drawing.Imaging.EmfPlusRecordType
---@field WmfPie System.Drawing.Imaging.EmfPlusRecordType
---@field WmfRectangle System.Drawing.Imaging.EmfPlusRecordType
---@field WmfRoundRect System.Drawing.Imaging.EmfPlusRecordType
---@field WmfPatBlt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSaveDC System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetPixel System.Drawing.Imaging.EmfPlusRecordType
---@field WmfOffsetCilpRgn System.Drawing.Imaging.EmfPlusRecordType
---@field WmfTextOut System.Drawing.Imaging.EmfPlusRecordType
---@field WmfBitBlt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfStretchBlt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfPolygon System.Drawing.Imaging.EmfPlusRecordType
---@field WmfPolyline System.Drawing.Imaging.EmfPlusRecordType
---@field WmfEscape System.Drawing.Imaging.EmfPlusRecordType
---@field WmfRestoreDC System.Drawing.Imaging.EmfPlusRecordType
---@field WmfFillRegion System.Drawing.Imaging.EmfPlusRecordType
---@field WmfFrameRegion System.Drawing.Imaging.EmfPlusRecordType
---@field WmfInvertRegion System.Drawing.Imaging.EmfPlusRecordType
---@field WmfPaintRegion System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSelectClipRegion System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSelectObject System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetTextAlign System.Drawing.Imaging.EmfPlusRecordType
---@field WmfChord System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetMapperFlags System.Drawing.Imaging.EmfPlusRecordType
---@field WmfExtTextOut System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetDibToDev System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSelectPalette System.Drawing.Imaging.EmfPlusRecordType
---@field WmfRealizePalette System.Drawing.Imaging.EmfPlusRecordType
---@field WmfAnimatePalette System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetPalEntries System.Drawing.Imaging.EmfPlusRecordType
---@field WmfPolyPolygon System.Drawing.Imaging.EmfPlusRecordType
---@field WmfResizePalette System.Drawing.Imaging.EmfPlusRecordType
---@field WmfDibBitBlt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfDibStretchBlt System.Drawing.Imaging.EmfPlusRecordType
---@field WmfDibCreatePatternBrush System.Drawing.Imaging.EmfPlusRecordType
---@field WmfStretchDib System.Drawing.Imaging.EmfPlusRecordType
---@field WmfExtFloodFill System.Drawing.Imaging.EmfPlusRecordType
---@field WmfSetLayout System.Drawing.Imaging.EmfPlusRecordType
---@field WmfDeleteObject System.Drawing.Imaging.EmfPlusRecordType
---@field WmfCreatePalette System.Drawing.Imaging.EmfPlusRecordType
---@field WmfCreatePatternBrush System.Drawing.Imaging.EmfPlusRecordType
---@field WmfCreatePenIndirect System.Drawing.Imaging.EmfPlusRecordType
---@field WmfCreateFontIndirect System.Drawing.Imaging.EmfPlusRecordType
---@field WmfCreateBrushIndirect System.Drawing.Imaging.EmfPlusRecordType
---@field WmfCreateRegion System.Drawing.Imaging.EmfPlusRecordType
---@field EmfHeader System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyBezier System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolygon System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyline System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyBezierTo System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyLineTo System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyPolyline System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyPolygon System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetWindowExtEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetWindowOrgEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetViewportExtEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetViewportOrgEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetBrushOrgEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfEof System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetPixelV System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetMapperFlags System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetMapMode System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetBkMode System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetPolyFillMode System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetROP2 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetStretchBltMode System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetTextAlign System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetColorAdjustment System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetTextColor System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetBkColor System.Drawing.Imaging.EmfPlusRecordType
---@field EmfOffsetClipRgn System.Drawing.Imaging.EmfPlusRecordType
---@field EmfMoveToEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetMetaRgn System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExcludeClipRect System.Drawing.Imaging.EmfPlusRecordType
---@field EmfIntersectClipRect System.Drawing.Imaging.EmfPlusRecordType
---@field EmfScaleViewportExtEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfScaleWindowExtEx System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSaveDC System.Drawing.Imaging.EmfPlusRecordType
---@field EmfRestoreDC System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field EmfModifyWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSelectObject System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCreatePen System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCreateBrushIndirect System.Drawing.Imaging.EmfPlusRecordType
---@field EmfDeleteObject System.Drawing.Imaging.EmfPlusRecordType
---@field EmfAngleArc System.Drawing.Imaging.EmfPlusRecordType
---@field EmfEllipse System.Drawing.Imaging.EmfPlusRecordType
---@field EmfRectangle System.Drawing.Imaging.EmfPlusRecordType
---@field EmfRoundRect System.Drawing.Imaging.EmfPlusRecordType
---@field EmfRoundArc System.Drawing.Imaging.EmfPlusRecordType
---@field EmfChord System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPie System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSelectPalette System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCreatePalette System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetPaletteEntries System.Drawing.Imaging.EmfPlusRecordType
---@field EmfResizePalette System.Drawing.Imaging.EmfPlusRecordType
---@field EmfRealizePalette System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExtFloodFill System.Drawing.Imaging.EmfPlusRecordType
---@field EmfLineTo System.Drawing.Imaging.EmfPlusRecordType
---@field EmfArcTo System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyDraw System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetArcDirection System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetMiterLimit System.Drawing.Imaging.EmfPlusRecordType
---@field EmfBeginPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfEndPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCloseFigure System.Drawing.Imaging.EmfPlusRecordType
---@field EmfFillPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfStrokeAndFillPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfStrokePath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfFlattenPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfWidenPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSelectClipPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfAbortPath System.Drawing.Imaging.EmfPlusRecordType
---@field EmfReserved069 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfGdiComment System.Drawing.Imaging.EmfPlusRecordType
---@field EmfFillRgn System.Drawing.Imaging.EmfPlusRecordType
---@field EmfFrameRgn System.Drawing.Imaging.EmfPlusRecordType
---@field EmfInvertRgn System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPaintRgn System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExtSelectClipRgn System.Drawing.Imaging.EmfPlusRecordType
---@field EmfBitBlt System.Drawing.Imaging.EmfPlusRecordType
---@field EmfStretchBlt System.Drawing.Imaging.EmfPlusRecordType
---@field EmfMaskBlt System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPlgBlt System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetDIBitsToDevice System.Drawing.Imaging.EmfPlusRecordType
---@field EmfStretchDIBits System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExtCreateFontIndirect System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExtTextOutA System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExtTextOutW System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyBezier16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolygon16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyline16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyBezierTo16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolylineTo16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyPolyline16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyPolygon16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyDraw16 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCreateMonoBrush System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCreateDibPatternBrushPt System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExtCreatePen System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyTextOutA System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPolyTextOutW System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetIcmMode System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCreateColorSpace System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetColorSpace System.Drawing.Imaging.EmfPlusRecordType
---@field EmfDeleteColorSpace System.Drawing.Imaging.EmfPlusRecordType
---@field EmfGlsRecord System.Drawing.Imaging.EmfPlusRecordType
---@field EmfGlsBoundedRecord System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPixelFormat System.Drawing.Imaging.EmfPlusRecordType
---@field EmfDrawEscape System.Drawing.Imaging.EmfPlusRecordType
---@field EmfExtEscape System.Drawing.Imaging.EmfPlusRecordType
---@field EmfStartDoc System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSmallTextOut System.Drawing.Imaging.EmfPlusRecordType
---@field EmfForceUfiMapping System.Drawing.Imaging.EmfPlusRecordType
---@field EmfNamedEscpae System.Drawing.Imaging.EmfPlusRecordType
---@field EmfColorCorrectPalette System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetIcmProfileA System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetIcmProfileW System.Drawing.Imaging.EmfPlusRecordType
---@field EmfAlphaBlend System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetLayout System.Drawing.Imaging.EmfPlusRecordType
---@field EmfTransparentBlt System.Drawing.Imaging.EmfPlusRecordType
---@field EmfReserved117 System.Drawing.Imaging.EmfPlusRecordType
---@field EmfGradientFill System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetLinkedUfis System.Drawing.Imaging.EmfPlusRecordType
---@field EmfSetTextJustification System.Drawing.Imaging.EmfPlusRecordType
---@field EmfColorMatchToTargetW System.Drawing.Imaging.EmfPlusRecordType
---@field EmfCreateColorSpaceW System.Drawing.Imaging.EmfPlusRecordType
---@field EmfMax System.Drawing.Imaging.EmfPlusRecordType
---@field EmfMin System.Drawing.Imaging.EmfPlusRecordType
---@field EmfPlusRecordBase System.Drawing.Imaging.EmfPlusRecordType
---@field Invalid System.Drawing.Imaging.EmfPlusRecordType
---@field Header System.Drawing.Imaging.EmfPlusRecordType
---@field EndOfFile System.Drawing.Imaging.EmfPlusRecordType
---@field Comment System.Drawing.Imaging.EmfPlusRecordType
---@field GetDC System.Drawing.Imaging.EmfPlusRecordType
---@field MultiFormatStart System.Drawing.Imaging.EmfPlusRecordType
---@field MultiFormatSection System.Drawing.Imaging.EmfPlusRecordType
---@field MultiFormatEnd System.Drawing.Imaging.EmfPlusRecordType
---@field Object System.Drawing.Imaging.EmfPlusRecordType
---@field Clear System.Drawing.Imaging.EmfPlusRecordType
---@field FillRects System.Drawing.Imaging.EmfPlusRecordType
---@field DrawRects System.Drawing.Imaging.EmfPlusRecordType
---@field FillPolygon System.Drawing.Imaging.EmfPlusRecordType
---@field DrawLines System.Drawing.Imaging.EmfPlusRecordType
---@field FillEllipse System.Drawing.Imaging.EmfPlusRecordType
---@field DrawEllipse System.Drawing.Imaging.EmfPlusRecordType
---@field FillPie System.Drawing.Imaging.EmfPlusRecordType
---@field DrawPie System.Drawing.Imaging.EmfPlusRecordType
---@field DrawArc System.Drawing.Imaging.EmfPlusRecordType
---@field FillRegion System.Drawing.Imaging.EmfPlusRecordType
---@field FillPath System.Drawing.Imaging.EmfPlusRecordType
---@field DrawPath System.Drawing.Imaging.EmfPlusRecordType
---@field FillClosedCurve System.Drawing.Imaging.EmfPlusRecordType
---@field DrawClosedCurve System.Drawing.Imaging.EmfPlusRecordType
---@field DrawCurve System.Drawing.Imaging.EmfPlusRecordType
---@field DrawBeziers System.Drawing.Imaging.EmfPlusRecordType
---@field DrawImage System.Drawing.Imaging.EmfPlusRecordType
---@field DrawImagePoints System.Drawing.Imaging.EmfPlusRecordType
---@field DrawString System.Drawing.Imaging.EmfPlusRecordType
---@field SetRenderingOrigin System.Drawing.Imaging.EmfPlusRecordType
---@field SetAntiAliasMode System.Drawing.Imaging.EmfPlusRecordType
---@field SetTextRenderingHint System.Drawing.Imaging.EmfPlusRecordType
---@field SetTextContrast System.Drawing.Imaging.EmfPlusRecordType
---@field SetInterpolationMode System.Drawing.Imaging.EmfPlusRecordType
---@field SetPixelOffsetMode System.Drawing.Imaging.EmfPlusRecordType
---@field SetCompositingMode System.Drawing.Imaging.EmfPlusRecordType
---@field SetCompositingQuality System.Drawing.Imaging.EmfPlusRecordType
---@field Save System.Drawing.Imaging.EmfPlusRecordType
---@field Restore System.Drawing.Imaging.EmfPlusRecordType
---@field BeginContainer System.Drawing.Imaging.EmfPlusRecordType
---@field BeginContainerNoParams System.Drawing.Imaging.EmfPlusRecordType
---@field EndContainer System.Drawing.Imaging.EmfPlusRecordType
---@field SetWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field ResetWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field MultiplyWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field TranslateWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field ScaleWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field RotateWorldTransform System.Drawing.Imaging.EmfPlusRecordType
---@field SetPageTransform System.Drawing.Imaging.EmfPlusRecordType
---@field ResetClip System.Drawing.Imaging.EmfPlusRecordType
---@field SetClipRect System.Drawing.Imaging.EmfPlusRecordType
---@field SetClipPath System.Drawing.Imaging.EmfPlusRecordType
---@field SetClipRegion System.Drawing.Imaging.EmfPlusRecordType
---@field OffsetClip System.Drawing.Imaging.EmfPlusRecordType
---@field DrawDriverString System.Drawing.Imaging.EmfPlusRecordType
---@field Total System.Drawing.Imaging.EmfPlusRecordType
---@field Max System.Drawing.Imaging.EmfPlusRecordType
---@field Min System.Drawing.Imaging.EmfPlusRecordType
System.Drawing.Imaging.EmfPlusRecordType = {}
---@alias CS.System.Drawing.Imaging.EmfPlusRecordType System.Drawing.Imaging.EmfPlusRecordType
CS.System.Drawing.Imaging.EmfPlusRecordType = System.Drawing.Imaging.EmfPlusRecordType


---@class System.Drawing.Imaging.EmfType
---@field EmfOnly System.Drawing.Imaging.EmfType
---@field EmfPlusOnly System.Drawing.Imaging.EmfType
---@field EmfPlusDual System.Drawing.Imaging.EmfType
System.Drawing.Imaging.EmfType = {}
---@alias CS.System.Drawing.Imaging.EmfType System.Drawing.Imaging.EmfType
CS.System.Drawing.Imaging.EmfType = System.Drawing.Imaging.EmfType


---@class System.Drawing.Imaging.Encoder : System.Object
---@field Compression System.Drawing.Imaging.Encoder
---@field ColorDepth System.Drawing.Imaging.Encoder
---@field ScanMethod System.Drawing.Imaging.Encoder
---@field Version System.Drawing.Imaging.Encoder
---@field RenderMethod System.Drawing.Imaging.Encoder
---@field Quality System.Drawing.Imaging.Encoder
---@field Transformation System.Drawing.Imaging.Encoder
---@field LuminanceTable System.Drawing.Imaging.Encoder
---@field ChrominanceTable System.Drawing.Imaging.Encoder
---@field SaveFlag System.Drawing.Imaging.Encoder
---@field Guid System.Guid
System.Drawing.Imaging.Encoder = {}
---@alias CS.System.Drawing.Imaging.Encoder System.Drawing.Imaging.Encoder
CS.System.Drawing.Imaging.Encoder = System.Drawing.Imaging.Encoder

---@param guid System.Guid
---@return System.Drawing.Imaging.Encoder
function System.Drawing.Imaging.Encoder.New(guid) end

---@class System.Drawing.Imaging.EncoderParameter : System.Object
---@field Encoder System.Drawing.Imaging.Encoder
---@field Type System.Drawing.Imaging.EncoderParameterValueType
---@field ValueType System.Drawing.Imaging.EncoderParameterValueType
---@field NumberOfValues number
System.Drawing.Imaging.EncoderParameter = {}
---@alias CS.System.Drawing.Imaging.EncoderParameter System.Drawing.Imaging.EncoderParameter
CS.System.Drawing.Imaging.EncoderParameter = System.Drawing.Imaging.EncoderParameter

---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: number) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: number, undefined: boolean) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: number) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: number) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, numerator: number, denominator: number) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, rangebegin: number, rangeend: number) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, numerator1: number, demoninator1: number, numerator2: number, demoninator2: number) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: string) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: System.Byte[]) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: System.Byte[], undefined: boolean) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: System.Int16[]) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, value: System.Int64[]) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, numerator: System.Int32[], denominator: System.Int32[]) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, rangebegin: System.Int64[], rangeend: System.Int64[]) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, numerator1: System.Int32[], denominator1: System.Int32[], numerator2: System.Int32[], denominator2: System.Int32[]) : System.Drawing.Imaging.EncoderParameter
---@overload fun(encoder: System.Drawing.Imaging.Encoder, NumberOfValues: number, Type: number, Value: number) : System.Drawing.Imaging.EncoderParameter
---@param encoder System.Drawing.Imaging.Encoder
---@param numberValues number
---@param type System.Drawing.Imaging.EncoderParameterValueType
---@param value System.IntPtr
---@return System.Drawing.Imaging.EncoderParameter
function System.Drawing.Imaging.EncoderParameter.New(encoder, numberValues, type, value) end
function System.Drawing.Imaging.EncoderParameter:Dispose() end

---@class System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeByte System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeAscii System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeShort System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeLong System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeRational System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeLongRange System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeUndefined System.Drawing.Imaging.EncoderParameterValueType
---@field ValueTypeRationalRange System.Drawing.Imaging.EncoderParameterValueType
System.Drawing.Imaging.EncoderParameterValueType = {}
---@alias CS.System.Drawing.Imaging.EncoderParameterValueType System.Drawing.Imaging.EncoderParameterValueType
CS.System.Drawing.Imaging.EncoderParameterValueType = System.Drawing.Imaging.EncoderParameterValueType


---@class System.Drawing.Imaging.EncoderParameters : System.Object
---@field Param System.Drawing.Imaging.EncoderParameter[]
System.Drawing.Imaging.EncoderParameters = {}
---@alias CS.System.Drawing.Imaging.EncoderParameters System.Drawing.Imaging.EncoderParameters
CS.System.Drawing.Imaging.EncoderParameters = System.Drawing.Imaging.EncoderParameters

---@overload fun(count: number) : System.Drawing.Imaging.EncoderParameters
---@return System.Drawing.Imaging.EncoderParameters
function System.Drawing.Imaging.EncoderParameters.New() end
function System.Drawing.Imaging.EncoderParameters:Dispose() end

---@class System.Drawing.Imaging.EncoderValue
---@field ColorTypeCMYK System.Drawing.Imaging.EncoderValue
---@field ColorTypeYCCK System.Drawing.Imaging.EncoderValue
---@field CompressionLZW System.Drawing.Imaging.EncoderValue
---@field CompressionCCITT3 System.Drawing.Imaging.EncoderValue
---@field CompressionCCITT4 System.Drawing.Imaging.EncoderValue
---@field CompressionRle System.Drawing.Imaging.EncoderValue
---@field CompressionNone System.Drawing.Imaging.EncoderValue
---@field ScanMethodInterlaced System.Drawing.Imaging.EncoderValue
---@field ScanMethodNonInterlaced System.Drawing.Imaging.EncoderValue
---@field VersionGif87 System.Drawing.Imaging.EncoderValue
---@field VersionGif89 System.Drawing.Imaging.EncoderValue
---@field RenderProgressive System.Drawing.Imaging.EncoderValue
---@field RenderNonProgressive System.Drawing.Imaging.EncoderValue
---@field TransformRotate90 System.Drawing.Imaging.EncoderValue
---@field TransformRotate180 System.Drawing.Imaging.EncoderValue
---@field TransformRotate270 System.Drawing.Imaging.EncoderValue
---@field TransformFlipHorizontal System.Drawing.Imaging.EncoderValue
---@field TransformFlipVertical System.Drawing.Imaging.EncoderValue
---@field MultiFrame System.Drawing.Imaging.EncoderValue
---@field LastFrame System.Drawing.Imaging.EncoderValue
---@field Flush System.Drawing.Imaging.EncoderValue
---@field FrameDimensionTime System.Drawing.Imaging.EncoderValue
---@field FrameDimensionResolution System.Drawing.Imaging.EncoderValue
---@field FrameDimensionPage System.Drawing.Imaging.EncoderValue
System.Drawing.Imaging.EncoderValue = {}
---@alias CS.System.Drawing.Imaging.EncoderValue System.Drawing.Imaging.EncoderValue
CS.System.Drawing.Imaging.EncoderValue = System.Drawing.Imaging.EncoderValue


---@class System.Drawing.Imaging.FrameDimension : System.Object
---@field Time System.Drawing.Imaging.FrameDimension
---@field Resolution System.Drawing.Imaging.FrameDimension
---@field Page System.Drawing.Imaging.FrameDimension
---@field Guid System.Guid
System.Drawing.Imaging.FrameDimension = {}
---@alias CS.System.Drawing.Imaging.FrameDimension System.Drawing.Imaging.FrameDimension
CS.System.Drawing.Imaging.FrameDimension = System.Drawing.Imaging.FrameDimension

---@param guid System.Guid
---@return System.Drawing.Imaging.FrameDimension
function System.Drawing.Imaging.FrameDimension.New(guid) end
---@param o System.Object
---@return boolean
function System.Drawing.Imaging.FrameDimension:Equals(o) end
---@return number
function System.Drawing.Imaging.FrameDimension:GetHashCode() end
---@return string
function System.Drawing.Imaging.FrameDimension:ToString() end

---@class System.Drawing.Imaging.ImageAttributes : System.Object
System.Drawing.Imaging.ImageAttributes = {}
---@alias CS.System.Drawing.Imaging.ImageAttributes System.Drawing.Imaging.ImageAttributes
CS.System.Drawing.Imaging.ImageAttributes = System.Drawing.Imaging.ImageAttributes

---@return System.Drawing.Imaging.ImageAttributes
function System.Drawing.Imaging.ImageAttributes.New() end
function System.Drawing.Imaging.ImageAttributes:Dispose() end
---@return System.Object
function System.Drawing.Imaging.ImageAttributes:Clone() end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, newColorMatrix: System.Drawing.Imaging.ColorMatrix)
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, newColorMatrix: System.Drawing.Imaging.ColorMatrix, flags: System.Drawing.Imaging.ColorMatrixFlag)
---@param newColorMatrix System.Drawing.Imaging.ColorMatrix
---@param mode System.Drawing.Imaging.ColorMatrixFlag
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetColorMatrix(newColorMatrix, mode, type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearColorMatrix(type) end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, newColorMatrix: System.Drawing.Imaging.ColorMatrix, grayMatrix: System.Drawing.Imaging.ColorMatrix)
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, newColorMatrix: System.Drawing.Imaging.ColorMatrix, grayMatrix: System.Drawing.Imaging.ColorMatrix, flags: System.Drawing.Imaging.ColorMatrixFlag)
---@param newColorMatrix System.Drawing.Imaging.ColorMatrix
---@param grayMatrix System.Drawing.Imaging.ColorMatrix
---@param mode System.Drawing.Imaging.ColorMatrixFlag
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetColorMatrices(newColorMatrix, grayMatrix, mode, type) end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, threshold: number)
---@param threshold number
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetThreshold(threshold, type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearThreshold(type) end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, gamma: number)
---@param gamma number
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetGamma(gamma, type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearGamma(type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetNoOp(type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearNoOp(type) end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, colorLow: System.Drawing.Color, colorHigh: System.Drawing.Color)
---@param colorLow System.Drawing.Color
---@param colorHigh System.Drawing.Color
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetColorKey(colorLow, colorHigh, type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearColorKey(type) end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, flags: System.Drawing.Imaging.ColorChannelFlag)
---@param flags System.Drawing.Imaging.ColorChannelFlag
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetOutputChannel(flags, type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearOutputChannel(type) end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, colorProfileFilename: string)
---@param colorProfileFilename string
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetOutputChannelColorProfile(colorProfileFilename, type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearOutputChannelColorProfile(type) end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, map: System.Drawing.Imaging.ColorMap[])
---@param map System.Drawing.Imaging.ColorMap[]
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:SetRemapTable(map, type) end
---@overload fun()
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:ClearRemapTable(type) end
---@param map System.Drawing.Imaging.ColorMap[]
function System.Drawing.Imaging.ImageAttributes:SetBrushRemapTable(map) end
function System.Drawing.Imaging.ImageAttributes:ClearBrushRemapTable() end
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, mode: System.Drawing.Drawing2D.WrapMode)
---@overload fun(self: System.Drawing.Imaging.ImageAttributes, mode: System.Drawing.Drawing2D.WrapMode, color: System.Drawing.Color)
---@param mode System.Drawing.Drawing2D.WrapMode
---@param color System.Drawing.Color
---@param clamp boolean
function System.Drawing.Imaging.ImageAttributes:SetWrapMode(mode, color, clamp) end
---@param palette System.Drawing.Imaging.ColorPalette
---@param type System.Drawing.Imaging.ColorAdjustType
function System.Drawing.Imaging.ImageAttributes:GetAdjustedPalette(palette, type) end

---@class System.Drawing.Imaging.ImageCodecFlags
---@field Encoder System.Drawing.Imaging.ImageCodecFlags
---@field Decoder System.Drawing.Imaging.ImageCodecFlags
---@field SupportBitmap System.Drawing.Imaging.ImageCodecFlags
---@field SupportVector System.Drawing.Imaging.ImageCodecFlags
---@field SeekableEncode System.Drawing.Imaging.ImageCodecFlags
---@field BlockingDecode System.Drawing.Imaging.ImageCodecFlags
---@field Builtin System.Drawing.Imaging.ImageCodecFlags
---@field System System.Drawing.Imaging.ImageCodecFlags
---@field User System.Drawing.Imaging.ImageCodecFlags
System.Drawing.Imaging.ImageCodecFlags = {}
---@alias CS.System.Drawing.Imaging.ImageCodecFlags System.Drawing.Imaging.ImageCodecFlags
CS.System.Drawing.Imaging.ImageCodecFlags = System.Drawing.Imaging.ImageCodecFlags


---@class System.Drawing.Imaging.ImageCodecInfo : System.Object
---@field Clsid System.Guid
---@field FormatID System.Guid
---@field CodecName string
---@field DllName string
---@field FormatDescription string
---@field FilenameExtension string
---@field MimeType string
---@field Flags System.Drawing.Imaging.ImageCodecFlags
---@field Version number
---@field SignaturePatterns System.Byte[][]
---@field SignatureMasks System.Byte[][]
System.Drawing.Imaging.ImageCodecInfo = {}
---@alias CS.System.Drawing.Imaging.ImageCodecInfo System.Drawing.Imaging.ImageCodecInfo
CS.System.Drawing.Imaging.ImageCodecInfo = System.Drawing.Imaging.ImageCodecInfo

---@return System.Drawing.Imaging.ImageCodecInfo[]
function System.Drawing.Imaging.ImageCodecInfo.GetImageDecoders() end
---@return System.Drawing.Imaging.ImageCodecInfo[]
function System.Drawing.Imaging.ImageCodecInfo.GetImageEncoders() end

---@class System.Drawing.Imaging.ImageCodecInfoPrivate : System.Object
---@field Clsid System.Guid
---@field FormatID System.Guid
---@field CodecName System.IntPtr
---@field DllName System.IntPtr
---@field FormatDescription System.IntPtr
---@field FilenameExtension System.IntPtr
---@field MimeType System.IntPtr
---@field Flags number
---@field Version number
---@field SigCount number
---@field SigSize number
---@field SigPattern System.IntPtr
---@field SigMask System.IntPtr
System.Drawing.Imaging.ImageCodecInfoPrivate = {}
---@alias CS.System.Drawing.Imaging.ImageCodecInfoPrivate System.Drawing.Imaging.ImageCodecInfoPrivate
CS.System.Drawing.Imaging.ImageCodecInfoPrivate = System.Drawing.Imaging.ImageCodecInfoPrivate

---@return System.Drawing.Imaging.ImageCodecInfoPrivate
function System.Drawing.Imaging.ImageCodecInfoPrivate.New() end

---@class System.Drawing.Imaging.ImageFlags
---@field None System.Drawing.Imaging.ImageFlags
---@field Scalable System.Drawing.Imaging.ImageFlags
---@field HasAlpha System.Drawing.Imaging.ImageFlags
---@field HasTranslucent System.Drawing.Imaging.ImageFlags
---@field PartiallyScalable System.Drawing.Imaging.ImageFlags
---@field ColorSpaceRgb System.Drawing.Imaging.ImageFlags
---@field ColorSpaceCmyk System.Drawing.Imaging.ImageFlags
---@field ColorSpaceGray System.Drawing.Imaging.ImageFlags
---@field ColorSpaceYcbcr System.Drawing.Imaging.ImageFlags
---@field ColorSpaceYcck System.Drawing.Imaging.ImageFlags
---@field HasRealDpi System.Drawing.Imaging.ImageFlags
---@field HasRealPixelSize System.Drawing.Imaging.ImageFlags
---@field ReadOnly System.Drawing.Imaging.ImageFlags
---@field Caching System.Drawing.Imaging.ImageFlags
System.Drawing.Imaging.ImageFlags = {}
---@alias CS.System.Drawing.Imaging.ImageFlags System.Drawing.Imaging.ImageFlags
CS.System.Drawing.Imaging.ImageFlags = System.Drawing.Imaging.ImageFlags


---@class System.Drawing.Imaging.ImageLockMode
---@field ReadOnly System.Drawing.Imaging.ImageLockMode
---@field WriteOnly System.Drawing.Imaging.ImageLockMode
---@field ReadWrite System.Drawing.Imaging.ImageLockMode
---@field UserInputBuffer System.Drawing.Imaging.ImageLockMode
System.Drawing.Imaging.ImageLockMode = {}
---@alias CS.System.Drawing.Imaging.ImageLockMode System.Drawing.Imaging.ImageLockMode
CS.System.Drawing.Imaging.ImageLockMode = System.Drawing.Imaging.ImageLockMode


---@class System.Drawing.Imaging.MetafileFrameUnit
---@field Pixel System.Drawing.Imaging.MetafileFrameUnit
---@field Point System.Drawing.Imaging.MetafileFrameUnit
---@field Inch System.Drawing.Imaging.MetafileFrameUnit
---@field Document System.Drawing.Imaging.MetafileFrameUnit
---@field Millimeter System.Drawing.Imaging.MetafileFrameUnit
---@field GdiCompatible System.Drawing.Imaging.MetafileFrameUnit
System.Drawing.Imaging.MetafileFrameUnit = {}
---@alias CS.System.Drawing.Imaging.MetafileFrameUnit System.Drawing.Imaging.MetafileFrameUnit
CS.System.Drawing.Imaging.MetafileFrameUnit = System.Drawing.Imaging.MetafileFrameUnit


---@class System.Drawing.Imaging.MetafileHeaderEmf : System.Object
---@field type System.Drawing.Imaging.MetafileType
---@field size number
---@field version number
---@field emfPlusFlags System.Drawing.Imaging.EmfPlusFlags
---@field dpiX number
---@field dpiY number
---@field X number
---@field Y number
---@field Width number
---@field Height number
---@field EmfHeader System.Drawing.SafeNativeMethods.ENHMETAHEADER
---@field EmfPlusHeaderSize number
---@field LogicalDpiX number
---@field LogicalDpiY number
System.Drawing.Imaging.MetafileHeaderEmf = {}
---@alias CS.System.Drawing.Imaging.MetafileHeaderEmf System.Drawing.Imaging.MetafileHeaderEmf
CS.System.Drawing.Imaging.MetafileHeaderEmf = System.Drawing.Imaging.MetafileHeaderEmf

---@return System.Drawing.Imaging.MetafileHeaderEmf
function System.Drawing.Imaging.MetafileHeaderEmf.New() end

---@class System.Drawing.Imaging.MetafileHeaderWmf : System.Object
---@field type System.Drawing.Imaging.MetafileType
---@field size number
---@field version number
---@field emfPlusFlags System.Drawing.Imaging.EmfPlusFlags
---@field dpiX number
---@field dpiY number
---@field X number
---@field Y number
---@field Width number
---@field Height number
---@field WmfHeader System.Drawing.Imaging.MetaHeader
---@field dummy1 number
---@field dummy2 number
---@field dummy3 number
---@field dummy4 number
---@field dummy5 number
---@field dummy6 number
---@field dummy7 number
---@field dummy8 number
---@field dummy9 number
---@field dummy10 number
---@field dummy11 number
---@field dummy12 number
---@field dummy13 number
---@field dummy14 number
---@field dummy15 number
---@field dummy16 number
---@field EmfPlusHeaderSize number
---@field LogicalDpiX number
---@field LogicalDpiY number
System.Drawing.Imaging.MetafileHeaderWmf = {}
---@alias CS.System.Drawing.Imaging.MetafileHeaderWmf System.Drawing.Imaging.MetafileHeaderWmf
CS.System.Drawing.Imaging.MetafileHeaderWmf = System.Drawing.Imaging.MetafileHeaderWmf

---@return System.Drawing.Imaging.MetafileHeaderWmf
function System.Drawing.Imaging.MetafileHeaderWmf.New() end

---@class System.Drawing.Imaging.MetafileType
---@field Invalid System.Drawing.Imaging.MetafileType
---@field Wmf System.Drawing.Imaging.MetafileType
---@field WmfPlaceable System.Drawing.Imaging.MetafileType
---@field Emf System.Drawing.Imaging.MetafileType
---@field EmfPlusOnly System.Drawing.Imaging.MetafileType
---@field EmfPlusDual System.Drawing.Imaging.MetafileType
System.Drawing.Imaging.MetafileType = {}
---@alias CS.System.Drawing.Imaging.MetafileType System.Drawing.Imaging.MetafileType
CS.System.Drawing.Imaging.MetafileType = System.Drawing.Imaging.MetafileType


---@class System.Drawing.Imaging.PaletteFlags
---@field HasAlpha System.Drawing.Imaging.PaletteFlags
---@field GrayScale System.Drawing.Imaging.PaletteFlags
---@field Halftone System.Drawing.Imaging.PaletteFlags
System.Drawing.Imaging.PaletteFlags = {}
---@alias CS.System.Drawing.Imaging.PaletteFlags System.Drawing.Imaging.PaletteFlags
CS.System.Drawing.Imaging.PaletteFlags = System.Drawing.Imaging.PaletteFlags


---@class System.Drawing.Imaging.PixelFormat
---@field Indexed System.Drawing.Imaging.PixelFormat
---@field Gdi System.Drawing.Imaging.PixelFormat
---@field Alpha System.Drawing.Imaging.PixelFormat
---@field PAlpha System.Drawing.Imaging.PixelFormat
---@field Extended System.Drawing.Imaging.PixelFormat
---@field Canonical System.Drawing.Imaging.PixelFormat
---@field Undefined System.Drawing.Imaging.PixelFormat
---@field DontCare System.Drawing.Imaging.PixelFormat
---@field Format1bppIndexed System.Drawing.Imaging.PixelFormat
---@field Format4bppIndexed System.Drawing.Imaging.PixelFormat
---@field Format8bppIndexed System.Drawing.Imaging.PixelFormat
---@field Format16bppGrayScale System.Drawing.Imaging.PixelFormat
---@field Format16bppRgb555 System.Drawing.Imaging.PixelFormat
---@field Format16bppRgb565 System.Drawing.Imaging.PixelFormat
---@field Format16bppArgb1555 System.Drawing.Imaging.PixelFormat
---@field Format24bppRgb System.Drawing.Imaging.PixelFormat
---@field Format32bppRgb System.Drawing.Imaging.PixelFormat
---@field Format32bppArgb System.Drawing.Imaging.PixelFormat
---@field Format32bppPArgb System.Drawing.Imaging.PixelFormat
---@field Format48bppRgb System.Drawing.Imaging.PixelFormat
---@field Format64bppArgb System.Drawing.Imaging.PixelFormat
---@field Format64bppPArgb System.Drawing.Imaging.PixelFormat
---@field Max System.Drawing.Imaging.PixelFormat
System.Drawing.Imaging.PixelFormat = {}
---@alias CS.System.Drawing.Imaging.PixelFormat System.Drawing.Imaging.PixelFormat
CS.System.Drawing.Imaging.PixelFormat = System.Drawing.Imaging.PixelFormat


---@class System.Drawing.Imaging.PlayRecordCallback : System.MulticastDelegate
System.Drawing.Imaging.PlayRecordCallback = {}
---@alias CS.System.Drawing.Imaging.PlayRecordCallback System.Drawing.Imaging.PlayRecordCallback
CS.System.Drawing.Imaging.PlayRecordCallback = System.Drawing.Imaging.PlayRecordCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Imaging.PlayRecordCallback
function System.Drawing.Imaging.PlayRecordCallback.New(object, method) end
---@param recordType System.Drawing.Imaging.EmfPlusRecordType
---@param flags number
---@param dataSize number
---@param recordData System.IntPtr
function System.Drawing.Imaging.PlayRecordCallback:Invoke(recordType, flags, dataSize, recordData) end
---@param recordType System.Drawing.Imaging.EmfPlusRecordType
---@param flags number
---@param dataSize number
---@param recordData System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Imaging.PlayRecordCallback:BeginInvoke(recordType, flags, dataSize, recordData, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Imaging.PlayRecordCallback:EndInvoke(result) end

---@class System.Drawing.Imaging.PropertyItem : System.Object
---@field Id number
---@field Len number
---@field Type number
---@field Value System.Byte[]
System.Drawing.Imaging.PropertyItem = {}
---@alias CS.System.Drawing.Imaging.PropertyItem System.Drawing.Imaging.PropertyItem
CS.System.Drawing.Imaging.PropertyItem = System.Drawing.Imaging.PropertyItem


---@class System.Drawing.Imaging.WmfPlaceableFileHeader : System.Object
---@field Key number
---@field Hmf number
---@field BboxLeft number
---@field BboxTop number
---@field BboxRight number
---@field BboxBottom number
---@field Inch number
---@field Reserved number
---@field Checksum number
System.Drawing.Imaging.WmfPlaceableFileHeader = {}
---@alias CS.System.Drawing.Imaging.WmfPlaceableFileHeader System.Drawing.Imaging.WmfPlaceableFileHeader
CS.System.Drawing.Imaging.WmfPlaceableFileHeader = System.Drawing.Imaging.WmfPlaceableFileHeader

---@return System.Drawing.Imaging.WmfPlaceableFileHeader
function System.Drawing.Imaging.WmfPlaceableFileHeader.New() end

---@class System.Drawing.Imaging.PropertyItemInternal : System.Object
---@field id number
---@field len number
---@field type number
---@field value System.IntPtr
---@field Value System.Byte[]
System.Drawing.Imaging.PropertyItemInternal = {}
---@alias CS.System.Drawing.Imaging.PropertyItemInternal System.Drawing.Imaging.PropertyItemInternal
CS.System.Drawing.Imaging.PropertyItemInternal = System.Drawing.Imaging.PropertyItemInternal

function System.Drawing.Imaging.PropertyItemInternal:Dispose() end

---@class System.Drawing.Imaging.BitmapData : System.Object
---@field Height number
---@field Width number
---@field PixelFormat System.Drawing.Imaging.PixelFormat
---@field Reserved number
---@field Scan0 System.IntPtr
---@field Stride number
System.Drawing.Imaging.BitmapData = {}
---@alias CS.System.Drawing.Imaging.BitmapData System.Drawing.Imaging.BitmapData
CS.System.Drawing.Imaging.BitmapData = System.Drawing.Imaging.BitmapData

---@return System.Drawing.Imaging.BitmapData
function System.Drawing.Imaging.BitmapData.New() end

---@class System.Drawing.Imaging.ImageFormat : System.Object
---@field Bmp System.Drawing.Imaging.ImageFormat
---@field Emf System.Drawing.Imaging.ImageFormat
---@field Exif System.Drawing.Imaging.ImageFormat
---@field Gif System.Drawing.Imaging.ImageFormat
---@field Icon System.Drawing.Imaging.ImageFormat
---@field Jpeg System.Drawing.Imaging.ImageFormat
---@field MemoryBmp System.Drawing.Imaging.ImageFormat
---@field Png System.Drawing.Imaging.ImageFormat
---@field Tiff System.Drawing.Imaging.ImageFormat
---@field Wmf System.Drawing.Imaging.ImageFormat
---@field Guid System.Guid
System.Drawing.Imaging.ImageFormat = {}
---@alias CS.System.Drawing.Imaging.ImageFormat System.Drawing.Imaging.ImageFormat
CS.System.Drawing.Imaging.ImageFormat = System.Drawing.Imaging.ImageFormat

---@param guid System.Guid
---@return System.Drawing.Imaging.ImageFormat
function System.Drawing.Imaging.ImageFormat.New(guid) end
---@param o System.Object
---@return boolean
function System.Drawing.Imaging.ImageFormat:Equals(o) end
---@return number
function System.Drawing.Imaging.ImageFormat:GetHashCode() end
---@return string
function System.Drawing.Imaging.ImageFormat:ToString() end

---@class System.Drawing.Imaging.WmfMetaHeader : System.ValueType
---@field file_type number
---@field header_size number
---@field version number
---@field file_size_low number
---@field file_size_high number
---@field num_of_objects number
---@field max_record_size number
---@field num_of_params number
System.Drawing.Imaging.WmfMetaHeader = {}
---@alias CS.System.Drawing.Imaging.WmfMetaHeader System.Drawing.Imaging.WmfMetaHeader
CS.System.Drawing.Imaging.WmfMetaHeader = System.Drawing.Imaging.WmfMetaHeader


---@class System.Drawing.Imaging.MetaHeader : System.Object
---@field HeaderSize number
---@field MaxRecord number
---@field NoObjects number
---@field NoParameters number
---@field Size number
---@field Type number
---@field Version number
System.Drawing.Imaging.MetaHeader = {}
---@alias CS.System.Drawing.Imaging.MetaHeader System.Drawing.Imaging.MetaHeader
CS.System.Drawing.Imaging.MetaHeader = System.Drawing.Imaging.MetaHeader

---@return System.Drawing.Imaging.MetaHeader
function System.Drawing.Imaging.MetaHeader.New() end

---@class System.Drawing.Imaging.Metafile : System.Drawing.Image
System.Drawing.Imaging.Metafile = {}
---@alias CS.System.Drawing.Imaging.Metafile System.Drawing.Imaging.Metafile
CS.System.Drawing.Imaging.Metafile = System.Drawing.Imaging.Metafile

---@overload fun(stream: System.IO.Stream) : System.Drawing.Imaging.Metafile
---@overload fun(filename: string) : System.Drawing.Imaging.Metafile
---@overload fun(henhmetafile: System.IntPtr, deleteEmf: boolean) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, emfType: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF) : System.Drawing.Imaging.Metafile
---@overload fun(hmetafile: System.IntPtr, wmfHeader: System.Drawing.Imaging.WmfPlaceableFileHeader) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, emfType: System.Drawing.Imaging.EmfType, description: string) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit) : System.Drawing.Imaging.Metafile
---@overload fun(hmetafile: System.IntPtr, wmfHeader: System.Drawing.Imaging.WmfPlaceableFileHeader, deleteWmf: boolean) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, type: System.Drawing.Imaging.EmfType, description: string) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, type: System.Drawing.Imaging.EmfType, description: string) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType, desc: string) : System.Drawing.Imaging.Metafile
---@overload fun(referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType, description: string) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, description: string) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, desc: string) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType, description: string) : System.Drawing.Imaging.Metafile
---@overload fun(stream: System.IO.Stream, referenceHdc: System.IntPtr, frameRect: System.Drawing.RectangleF, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType, description: string) : System.Drawing.Imaging.Metafile
---@overload fun(fileName: string, referenceHdc: System.IntPtr, frameRect: System.Drawing.Rectangle, frameUnit: System.Drawing.Imaging.MetafileFrameUnit, type: System.Drawing.Imaging.EmfType, description: string) : System.Drawing.Imaging.Metafile
---@param fileName string
---@param referenceHdc System.IntPtr
---@param frameRect System.Drawing.RectangleF
---@param frameUnit System.Drawing.Imaging.MetafileFrameUnit
---@param type System.Drawing.Imaging.EmfType
---@param description string
---@return System.Drawing.Imaging.Metafile
function System.Drawing.Imaging.Metafile.New(fileName, referenceHdc, frameRect, frameUnit, type, description) end
---@overload fun(henhmetafile: System.IntPtr) : System.Drawing.Imaging.MetafileHeader
---@overload fun(stream: System.IO.Stream) : System.Drawing.Imaging.MetafileHeader
---@overload fun(fileName: string) : System.Drawing.Imaging.MetafileHeader
---@overload fun(hmetafile: System.IntPtr, wmfHeader: System.Drawing.Imaging.WmfPlaceableFileHeader) : System.Drawing.Imaging.MetafileHeader
---@return System.Drawing.Imaging.MetafileHeader
function System.Drawing.Imaging.Metafile:GetMetafileHeader() end
---@return System.IntPtr
function System.Drawing.Imaging.Metafile:GetHenhmetafile() end
---@param recordType System.Drawing.Imaging.EmfPlusRecordType
---@param flags number
---@param dataSize number
---@param data System.Byte[]
function System.Drawing.Imaging.Metafile:PlayRecord(recordType, flags, dataSize, data) end

---@class System.Drawing.Imaging.Metafile.MetafileHolder : System.Object
System.Drawing.Imaging.Metafile.MetafileHolder = {}
---@alias CS.System.Drawing.Imaging.Metafile.MetafileHolder System.Drawing.Imaging.Metafile.MetafileHolder
CS.System.Drawing.Imaging.Metafile.MetafileHolder = System.Drawing.Imaging.Metafile.MetafileHolder

function System.Drawing.Imaging.Metafile.MetafileHolder:Dispose() end

---@class System.Drawing.Imaging.EnhMetafileHeader : System.ValueType
---@field type number
---@field size number
---@field bounds System.Drawing.Rectangle
---@field frame System.Drawing.Rectangle
---@field signature number
---@field version number
---@field bytes number
---@field records number
---@field handles number
---@field reserved number
---@field description number
---@field off_description number
---@field palette_entires number
---@field device System.Drawing.Size
---@field millimeters System.Drawing.Size
System.Drawing.Imaging.EnhMetafileHeader = {}
---@alias CS.System.Drawing.Imaging.EnhMetafileHeader System.Drawing.Imaging.EnhMetafileHeader
CS.System.Drawing.Imaging.EnhMetafileHeader = System.Drawing.Imaging.EnhMetafileHeader


---@class System.Drawing.Imaging.MonoMetafileHeader : System.ValueType
---@field type System.Drawing.Imaging.MetafileType
---@field size number
---@field version number
---@field emf_plus_flags number
---@field dpi_x number
---@field dpi_y number
---@field x number
---@field y number
---@field width number
---@field height number
---@field wmf_header System.Drawing.Imaging.WmfMetaHeader
---@field emf_header System.Drawing.Imaging.EnhMetafileHeader
---@field emfplus_header_size number
---@field logical_dpi_x number
---@field logical_dpi_y number
System.Drawing.Imaging.MonoMetafileHeader = {}
---@alias CS.System.Drawing.Imaging.MonoMetafileHeader System.Drawing.Imaging.MonoMetafileHeader
CS.System.Drawing.Imaging.MonoMetafileHeader = System.Drawing.Imaging.MonoMetafileHeader


---@class System.Drawing.Imaging.MetafileHeader : System.Object
---@field Bounds System.Drawing.Rectangle
---@field DpiX number
---@field DpiY number
---@field EmfPlusHeaderSize number
---@field LogicalDpiX number
---@field LogicalDpiY number
---@field MetafileSize number
---@field Type System.Drawing.Imaging.MetafileType
---@field Version number
---@field WmfHeader System.Drawing.Imaging.MetaHeader
System.Drawing.Imaging.MetafileHeader = {}
---@alias CS.System.Drawing.Imaging.MetafileHeader System.Drawing.Imaging.MetafileHeader
CS.System.Drawing.Imaging.MetafileHeader = System.Drawing.Imaging.MetafileHeader

---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsDisplay() end
---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsEmf() end
---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsEmfOrEmfPlus() end
---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsEmfPlus() end
---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsEmfPlusDual() end
---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsEmfPlusOnly() end
---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsWmf() end
---@return boolean
function System.Drawing.Imaging.MetafileHeader:IsWmfPlaceable() end

---@class System.Drawing.Design.CategoryNameCollection : System.Collections.ReadOnlyCollectionBase
---@field Item string
System.Drawing.Design.CategoryNameCollection = {}
---@alias CS.System.Drawing.Design.CategoryNameCollection System.Drawing.Design.CategoryNameCollection
CS.System.Drawing.Design.CategoryNameCollection = System.Drawing.Design.CategoryNameCollection

---@overload fun(value: System.Drawing.Design.CategoryNameCollection) : System.Drawing.Design.CategoryNameCollection
---@param value System.String[]
---@return System.Drawing.Design.CategoryNameCollection
function System.Drawing.Design.CategoryNameCollection.New(value) end
---@param value string
---@return boolean
function System.Drawing.Design.CategoryNameCollection:Contains(value) end
---@param array System.String[]
---@param index number
function System.Drawing.Design.CategoryNameCollection:CopyTo(array, index) end
---@param value string
---@return number
function System.Drawing.Design.CategoryNameCollection:IndexOf(value) end

---@class System.Drawing.Design.IPropertyValueUIService
System.Drawing.Design.IPropertyValueUIService = {}
---@alias CS.System.Drawing.Design.IPropertyValueUIService System.Drawing.Design.IPropertyValueUIService
CS.System.Drawing.Design.IPropertyValueUIService = System.Drawing.Design.IPropertyValueUIService

---@param newHandler System.Drawing.Design.PropertyValueUIHandler
function System.Drawing.Design.IPropertyValueUIService:AddPropertyValueUIHandler(newHandler) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propDesc System.ComponentModel.PropertyDescriptor
---@return System.Drawing.Design.PropertyValueUIItem[]
function System.Drawing.Design.IPropertyValueUIService:GetPropertyUIValueItems(context, propDesc) end
function System.Drawing.Design.IPropertyValueUIService:NotifyPropertyValueUIItemsChanged() end
---@param newHandler System.Drawing.Design.PropertyValueUIHandler
function System.Drawing.Design.IPropertyValueUIService:RemovePropertyValueUIHandler(newHandler) end

---@class System.Drawing.Design.IToolboxItemProvider
---@field Items System.Drawing.Design.ToolboxItemCollection
System.Drawing.Design.IToolboxItemProvider = {}
---@alias CS.System.Drawing.Design.IToolboxItemProvider System.Drawing.Design.IToolboxItemProvider
CS.System.Drawing.Design.IToolboxItemProvider = System.Drawing.Design.IToolboxItemProvider


---@class System.Drawing.Design.IToolboxService
---@field CategoryNames System.Drawing.Design.CategoryNameCollection
---@field SelectedCategory string
System.Drawing.Design.IToolboxService = {}
---@alias CS.System.Drawing.Design.IToolboxService System.Drawing.Design.IToolboxService
CS.System.Drawing.Design.IToolboxService = System.Drawing.Design.IToolboxService

---@overload fun(self: System.Drawing.Design.IToolboxService, creator: System.Drawing.Design.ToolboxItemCreatorCallback, format: string)
---@param creator System.Drawing.Design.ToolboxItemCreatorCallback
---@param format string
---@param host System.ComponentModel.Design.IDesignerHost
function System.Drawing.Design.IToolboxService:AddCreator(creator, format, host) end
---@overload fun(self: System.Drawing.Design.IToolboxService, toolboxItem: System.Drawing.Design.ToolboxItem, host: System.ComponentModel.Design.IDesignerHost)
---@param toolboxItem System.Drawing.Design.ToolboxItem
---@param category string
---@param host System.ComponentModel.Design.IDesignerHost
function System.Drawing.Design.IToolboxService:AddLinkedToolboxItem(toolboxItem, category, host) end
---@overload fun(self: System.Drawing.Design.IToolboxService, toolboxItem: System.Drawing.Design.ToolboxItem)
---@param toolboxItem System.Drawing.Design.ToolboxItem
---@param category string
function System.Drawing.Design.IToolboxService:AddToolboxItem(toolboxItem, category) end
---@overload fun(self: System.Drawing.Design.IToolboxService, serializedObject: System.Object) : System.Drawing.Design.ToolboxItem
---@param serializedObject System.Object
---@param host System.ComponentModel.Design.IDesignerHost
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.IToolboxService:DeserializeToolboxItem(serializedObject, host) end
---@overload fun() : System.Drawing.Design.ToolboxItem
---@param host System.ComponentModel.Design.IDesignerHost
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.IToolboxService:GetSelectedToolboxItem(host) end
---@overload fun() : System.Drawing.Design.ToolboxItemCollection
---@overload fun(self: System.Drawing.Design.IToolboxService, host: System.ComponentModel.Design.IDesignerHost) : System.Drawing.Design.ToolboxItemCollection
---@overload fun(self: System.Drawing.Design.IToolboxService, category: string) : System.Drawing.Design.ToolboxItemCollection
---@param category string
---@param host System.ComponentModel.Design.IDesignerHost
---@return System.Drawing.Design.ToolboxItemCollection
function System.Drawing.Design.IToolboxService:GetToolboxItems(category, host) end
---@overload fun(self: System.Drawing.Design.IToolboxService, serializedObject: System.Object, host: System.ComponentModel.Design.IDesignerHost) : boolean
---@param serializedObject System.Object
---@param filterAttributes System.Collections.ICollection
---@return boolean
function System.Drawing.Design.IToolboxService:IsSupported(serializedObject, filterAttributes) end
---@overload fun(self: System.Drawing.Design.IToolboxService, serializedObject: System.Object) : boolean
---@param serializedObject System.Object
---@param host System.ComponentModel.Design.IDesignerHost
---@return boolean
function System.Drawing.Design.IToolboxService:IsToolboxItem(serializedObject, host) end
function System.Drawing.Design.IToolboxService:Refresh() end
---@overload fun(self: System.Drawing.Design.IToolboxService, format: string)
---@param format string
---@param host System.ComponentModel.Design.IDesignerHost
function System.Drawing.Design.IToolboxService:RemoveCreator(format, host) end
---@overload fun(self: System.Drawing.Design.IToolboxService, toolboxItem: System.Drawing.Design.ToolboxItem)
---@param toolboxItem System.Drawing.Design.ToolboxItem
---@param category string
function System.Drawing.Design.IToolboxService:RemoveToolboxItem(toolboxItem, category) end
function System.Drawing.Design.IToolboxService:SelectedToolboxItemUsed() end
---@param toolboxItem System.Drawing.Design.ToolboxItem
---@return System.Object
function System.Drawing.Design.IToolboxService:SerializeToolboxItem(toolboxItem) end
---@return boolean
function System.Drawing.Design.IToolboxService:SetCursor() end
---@param toolboxItem System.Drawing.Design.ToolboxItem
function System.Drawing.Design.IToolboxService:SetSelectedToolboxItem(toolboxItem) end

---@class System.Drawing.Design.IToolboxUser
System.Drawing.Design.IToolboxUser = {}
---@alias CS.System.Drawing.Design.IToolboxUser System.Drawing.Design.IToolboxUser
CS.System.Drawing.Design.IToolboxUser = System.Drawing.Design.IToolboxUser

---@param tool System.Drawing.Design.ToolboxItem
---@return boolean
function System.Drawing.Design.IToolboxUser:GetToolSupported(tool) end
---@param tool System.Drawing.Design.ToolboxItem
function System.Drawing.Design.IToolboxUser:ToolPicked(tool) end

---@class System.Drawing.Design.PaintValueEventArgs : System.EventArgs
---@field Bounds System.Drawing.Rectangle
---@field Context System.ComponentModel.ITypeDescriptorContext
---@field Graphics System.Drawing.Graphics
---@field Value System.Object
System.Drawing.Design.PaintValueEventArgs = {}
---@alias CS.System.Drawing.Design.PaintValueEventArgs System.Drawing.Design.PaintValueEventArgs
CS.System.Drawing.Design.PaintValueEventArgs = System.Drawing.Design.PaintValueEventArgs

---@param context System.ComponentModel.ITypeDescriptorContext
---@param value System.Object
---@param graphics System.Drawing.Graphics
---@param bounds System.Drawing.Rectangle
---@return System.Drawing.Design.PaintValueEventArgs
function System.Drawing.Design.PaintValueEventArgs.New(context, value, graphics, bounds) end

---@class System.Drawing.Design.PropertyValueUIHandler : System.MulticastDelegate
System.Drawing.Design.PropertyValueUIHandler = {}
---@alias CS.System.Drawing.Design.PropertyValueUIHandler System.Drawing.Design.PropertyValueUIHandler
CS.System.Drawing.Design.PropertyValueUIHandler = System.Drawing.Design.PropertyValueUIHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Design.PropertyValueUIHandler
function System.Drawing.Design.PropertyValueUIHandler.New(object, method) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propDesc System.ComponentModel.PropertyDescriptor
---@param valueUIItemList System.Collections.ArrayList
function System.Drawing.Design.PropertyValueUIHandler:Invoke(context, propDesc, valueUIItemList) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param propDesc System.ComponentModel.PropertyDescriptor
---@param valueUIItemList System.Collections.ArrayList
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Design.PropertyValueUIHandler:BeginInvoke(context, propDesc, valueUIItemList, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Design.PropertyValueUIHandler:EndInvoke(result) end

---@class System.Drawing.Design.PropertyValueUIItem : System.Object
---@field Image System.Drawing.Image
---@field InvokeHandler System.Drawing.Design.PropertyValueUIItemInvokeHandler
---@field ToolTip string
System.Drawing.Design.PropertyValueUIItem = {}
---@alias CS.System.Drawing.Design.PropertyValueUIItem System.Drawing.Design.PropertyValueUIItem
CS.System.Drawing.Design.PropertyValueUIItem = System.Drawing.Design.PropertyValueUIItem

---@param uiItemImage System.Drawing.Image
---@param handler System.Drawing.Design.PropertyValueUIItemInvokeHandler
---@param tooltip string
---@return System.Drawing.Design.PropertyValueUIItem
function System.Drawing.Design.PropertyValueUIItem.New(uiItemImage, handler, tooltip) end
function System.Drawing.Design.PropertyValueUIItem:Reset() end

---@class System.Drawing.Design.PropertyValueUIItemInvokeHandler : System.MulticastDelegate
System.Drawing.Design.PropertyValueUIItemInvokeHandler = {}
---@alias CS.System.Drawing.Design.PropertyValueUIItemInvokeHandler System.Drawing.Design.PropertyValueUIItemInvokeHandler
CS.System.Drawing.Design.PropertyValueUIItemInvokeHandler = System.Drawing.Design.PropertyValueUIItemInvokeHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Design.PropertyValueUIItemInvokeHandler
function System.Drawing.Design.PropertyValueUIItemInvokeHandler.New(object, method) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param descriptor System.ComponentModel.PropertyDescriptor
---@param invokedItem System.Drawing.Design.PropertyValueUIItem
function System.Drawing.Design.PropertyValueUIItemInvokeHandler:Invoke(context, descriptor, invokedItem) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param descriptor System.ComponentModel.PropertyDescriptor
---@param invokedItem System.Drawing.Design.PropertyValueUIItem
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Design.PropertyValueUIItemInvokeHandler:BeginInvoke(context, descriptor, invokedItem, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Design.PropertyValueUIItemInvokeHandler:EndInvoke(result) end

---@class System.Drawing.Design.ToolboxComponentsCreatedEventArgs : System.EventArgs
---@field Components System.ComponentModel.IComponent[]
System.Drawing.Design.ToolboxComponentsCreatedEventArgs = {}
---@alias CS.System.Drawing.Design.ToolboxComponentsCreatedEventArgs System.Drawing.Design.ToolboxComponentsCreatedEventArgs
CS.System.Drawing.Design.ToolboxComponentsCreatedEventArgs = System.Drawing.Design.ToolboxComponentsCreatedEventArgs

---@param components System.ComponentModel.IComponent[]
---@return System.Drawing.Design.ToolboxComponentsCreatedEventArgs
function System.Drawing.Design.ToolboxComponentsCreatedEventArgs.New(components) end

---@class System.Drawing.Design.ToolboxComponentsCreatedEventHandler : System.MulticastDelegate
System.Drawing.Design.ToolboxComponentsCreatedEventHandler = {}
---@alias CS.System.Drawing.Design.ToolboxComponentsCreatedEventHandler System.Drawing.Design.ToolboxComponentsCreatedEventHandler
CS.System.Drawing.Design.ToolboxComponentsCreatedEventHandler = System.Drawing.Design.ToolboxComponentsCreatedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Design.ToolboxComponentsCreatedEventHandler
function System.Drawing.Design.ToolboxComponentsCreatedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Drawing.Design.ToolboxComponentsCreatedEventArgs
function System.Drawing.Design.ToolboxComponentsCreatedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Drawing.Design.ToolboxComponentsCreatedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Design.ToolboxComponentsCreatedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Design.ToolboxComponentsCreatedEventHandler:EndInvoke(result) end

---@class System.Drawing.Design.ToolboxComponentsCreatingEventArgs : System.EventArgs
---@field DesignerHost System.ComponentModel.Design.IDesignerHost
System.Drawing.Design.ToolboxComponentsCreatingEventArgs = {}
---@alias CS.System.Drawing.Design.ToolboxComponentsCreatingEventArgs System.Drawing.Design.ToolboxComponentsCreatingEventArgs
CS.System.Drawing.Design.ToolboxComponentsCreatingEventArgs = System.Drawing.Design.ToolboxComponentsCreatingEventArgs

---@param host System.ComponentModel.Design.IDesignerHost
---@return System.Drawing.Design.ToolboxComponentsCreatingEventArgs
function System.Drawing.Design.ToolboxComponentsCreatingEventArgs.New(host) end

---@class System.Drawing.Design.ToolboxComponentsCreatingEventHandler : System.MulticastDelegate
System.Drawing.Design.ToolboxComponentsCreatingEventHandler = {}
---@alias CS.System.Drawing.Design.ToolboxComponentsCreatingEventHandler System.Drawing.Design.ToolboxComponentsCreatingEventHandler
CS.System.Drawing.Design.ToolboxComponentsCreatingEventHandler = System.Drawing.Design.ToolboxComponentsCreatingEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Design.ToolboxComponentsCreatingEventHandler
function System.Drawing.Design.ToolboxComponentsCreatingEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Drawing.Design.ToolboxComponentsCreatingEventArgs
function System.Drawing.Design.ToolboxComponentsCreatingEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Drawing.Design.ToolboxComponentsCreatingEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Design.ToolboxComponentsCreatingEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Drawing.Design.ToolboxComponentsCreatingEventHandler:EndInvoke(result) end

---@class System.Drawing.Design.ToolboxItemCollection : System.Collections.ReadOnlyCollectionBase
---@field Item System.Drawing.Design.ToolboxItem
System.Drawing.Design.ToolboxItemCollection = {}
---@alias CS.System.Drawing.Design.ToolboxItemCollection System.Drawing.Design.ToolboxItemCollection
CS.System.Drawing.Design.ToolboxItemCollection = System.Drawing.Design.ToolboxItemCollection

---@overload fun(value: System.Drawing.Design.ToolboxItemCollection) : System.Drawing.Design.ToolboxItemCollection
---@param value System.Drawing.Design.ToolboxItem[]
---@return System.Drawing.Design.ToolboxItemCollection
function System.Drawing.Design.ToolboxItemCollection.New(value) end
---@param value System.Drawing.Design.ToolboxItem
---@return boolean
function System.Drawing.Design.ToolboxItemCollection:Contains(value) end
---@param array System.Drawing.Design.ToolboxItem[]
---@param index number
function System.Drawing.Design.ToolboxItemCollection:CopyTo(array, index) end
---@param value System.Drawing.Design.ToolboxItem
---@return number
function System.Drawing.Design.ToolboxItemCollection:IndexOf(value) end

---@class System.Drawing.Design.ToolboxItemCreatorCallback : System.MulticastDelegate
System.Drawing.Design.ToolboxItemCreatorCallback = {}
---@alias CS.System.Drawing.Design.ToolboxItemCreatorCallback System.Drawing.Design.ToolboxItemCreatorCallback
CS.System.Drawing.Design.ToolboxItemCreatorCallback = System.Drawing.Design.ToolboxItemCreatorCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Drawing.Design.ToolboxItemCreatorCallback
function System.Drawing.Design.ToolboxItemCreatorCallback.New(object, method) end
---@param serializedObject System.Object
---@param format string
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.ToolboxItemCreatorCallback:Invoke(serializedObject, format) end
---@param serializedObject System.Object
---@param format string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Drawing.Design.ToolboxItemCreatorCallback:BeginInvoke(serializedObject, format, callback, object) end
---@param result System.IAsyncResult
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.ToolboxItemCreatorCallback:EndInvoke(result) end

---@class System.Drawing.Design.UITypeEditor : System.Object
---@field IsDropDownResizable boolean
System.Drawing.Design.UITypeEditor = {}
---@alias CS.System.Drawing.Design.UITypeEditor System.Drawing.Design.UITypeEditor
CS.System.Drawing.Design.UITypeEditor = System.Drawing.Design.UITypeEditor

---@return System.Drawing.Design.UITypeEditor
function System.Drawing.Design.UITypeEditor.New() end
---@overload fun(self: System.Drawing.Design.UITypeEditor, provider: System.IServiceProvider, value: System.Object) : System.Object
---@param context System.ComponentModel.ITypeDescriptorContext
---@param provider System.IServiceProvider
---@param value System.Object
---@return System.Object
function System.Drawing.Design.UITypeEditor:EditValue(context, provider, value) end
---@overload fun() : System.Drawing.Design.UITypeEditorEditStyle
---@param context System.ComponentModel.ITypeDescriptorContext
---@return System.Drawing.Design.UITypeEditorEditStyle
function System.Drawing.Design.UITypeEditor:GetEditStyle(context) end
---@overload fun() : boolean
---@param context System.ComponentModel.ITypeDescriptorContext
---@return boolean
function System.Drawing.Design.UITypeEditor:GetPaintValueSupported(context) end
---@overload fun(self: System.Drawing.Design.UITypeEditor, value: System.Object, canvas: System.Drawing.Graphics, rectangle: System.Drawing.Rectangle)
---@param e System.Drawing.Design.PaintValueEventArgs
function System.Drawing.Design.UITypeEditor:PaintValue(e) end

---@class System.Drawing.Design.UITypeEditorEditStyle
---@field None System.Drawing.Design.UITypeEditorEditStyle
---@field Modal System.Drawing.Design.UITypeEditorEditStyle
---@field DropDown System.Drawing.Design.UITypeEditorEditStyle
System.Drawing.Design.UITypeEditorEditStyle = {}
---@alias CS.System.Drawing.Design.UITypeEditorEditStyle System.Drawing.Design.UITypeEditorEditStyle
CS.System.Drawing.Design.UITypeEditorEditStyle = System.Drawing.Design.UITypeEditorEditStyle


---@class System.Drawing.Design.ToolboxItem : System.Object
---@field AssemblyName System.Reflection.AssemblyName
---@field Bitmap System.Drawing.Bitmap
---@field DisplayName string
---@field Filter System.Collections.ICollection
---@field Locked boolean
---@field TypeName string
---@field Company string
---@field ComponentType string
---@field DependentAssemblies System.Reflection.AssemblyName[]
---@field Description string
---@field IsTransient boolean
---@field Properties System.Collections.IDictionary
---@field Version string
---@field OriginalBitmap System.Drawing.Bitmap
System.Drawing.Design.ToolboxItem = {}
---@alias CS.System.Drawing.Design.ToolboxItem System.Drawing.Design.ToolboxItem
CS.System.Drawing.Design.ToolboxItem = System.Drawing.Design.ToolboxItem

---@overload fun() : System.Drawing.Design.ToolboxItem
---@param toolType System.Type
---@return System.Drawing.Design.ToolboxItem
function System.Drawing.Design.ToolboxItem.New(toolType) end
---@overload fun() : System.ComponentModel.IComponent[]
---@overload fun(self: System.Drawing.Design.ToolboxItem, host: System.ComponentModel.Design.IDesignerHost) : System.ComponentModel.IComponent[]
---@param host System.ComponentModel.Design.IDesignerHost
---@param defaultValues System.Collections.IDictionary
---@return System.ComponentModel.IComponent[]
function System.Drawing.Design.ToolboxItem:CreateComponents(host, defaultValues) end
---@param obj System.Object
---@return boolean
function System.Drawing.Design.ToolboxItem:Equals(obj) end
---@return number
function System.Drawing.Design.ToolboxItem:GetHashCode() end
---@param host System.ComponentModel.Design.IDesignerHost
---@return System.Type
function System.Drawing.Design.ToolboxItem:GetType(host) end
---@param type System.Type
function System.Drawing.Design.ToolboxItem:Initialize(type) end
function System.Drawing.Design.ToolboxItem:Lock() end
---@return string
function System.Drawing.Design.ToolboxItem:ToString() end

---@class System.Drawing.Drawing2D.DashCap
---@field Flat System.Drawing.Drawing2D.DashCap
---@field Round System.Drawing.Drawing2D.DashCap
---@field Triangle System.Drawing.Drawing2D.DashCap
System.Drawing.Drawing2D.DashCap = {}
---@alias CS.System.Drawing.Drawing2D.DashCap System.Drawing.Drawing2D.DashCap
CS.System.Drawing.Drawing2D.DashCap = System.Drawing.Drawing2D.DashCap


---@class System.Drawing.Drawing2D.AdjustableArrowCap : System.Drawing.Drawing2D.CustomLineCap
---@field Height number
---@field Width number
---@field MiddleInset number
---@field Filled boolean
System.Drawing.Drawing2D.AdjustableArrowCap = {}
---@alias CS.System.Drawing.Drawing2D.AdjustableArrowCap System.Drawing.Drawing2D.AdjustableArrowCap
CS.System.Drawing.Drawing2D.AdjustableArrowCap = System.Drawing.Drawing2D.AdjustableArrowCap

---@overload fun(width: number, height: number) : System.Drawing.Drawing2D.AdjustableArrowCap
---@param width number
---@param height number
---@param isFilled boolean
---@return System.Drawing.Drawing2D.AdjustableArrowCap
function System.Drawing.Drawing2D.AdjustableArrowCap.New(width, height, isFilled) end

---@class System.Drawing.Drawing2D.Blend : System.Object
---@field Factors System.Single[]
---@field Positions System.Single[]
System.Drawing.Drawing2D.Blend = {}
---@alias CS.System.Drawing.Drawing2D.Blend System.Drawing.Drawing2D.Blend
CS.System.Drawing.Drawing2D.Blend = System.Drawing.Drawing2D.Blend

---@overload fun() : System.Drawing.Drawing2D.Blend
---@param count number
---@return System.Drawing.Drawing2D.Blend
function System.Drawing.Drawing2D.Blend.New(count) end

---@class System.Drawing.Drawing2D.BrushType
---@field SolidColor System.Drawing.Drawing2D.BrushType
---@field HatchFill System.Drawing.Drawing2D.BrushType
---@field TextureFill System.Drawing.Drawing2D.BrushType
---@field PathGradient System.Drawing.Drawing2D.BrushType
---@field LinearGradient System.Drawing.Drawing2D.BrushType
System.Drawing.Drawing2D.BrushType = {}
---@alias CS.System.Drawing.Drawing2D.BrushType System.Drawing.Drawing2D.BrushType
CS.System.Drawing.Drawing2D.BrushType = System.Drawing.Drawing2D.BrushType


---@class System.Drawing.Drawing2D.ColorBlend : System.Object
---@field Colors System.Drawing.Color[]
---@field Positions System.Single[]
System.Drawing.Drawing2D.ColorBlend = {}
---@alias CS.System.Drawing.Drawing2D.ColorBlend System.Drawing.Drawing2D.ColorBlend
CS.System.Drawing.Drawing2D.ColorBlend = System.Drawing.Drawing2D.ColorBlend

---@overload fun() : System.Drawing.Drawing2D.ColorBlend
---@param count number
---@return System.Drawing.Drawing2D.ColorBlend
function System.Drawing.Drawing2D.ColorBlend.New(count) end

---@class System.Drawing.Drawing2D.CombineMode
---@field Replace System.Drawing.Drawing2D.CombineMode
---@field Intersect System.Drawing.Drawing2D.CombineMode
---@field Union System.Drawing.Drawing2D.CombineMode
---@field Xor System.Drawing.Drawing2D.CombineMode
---@field Exclude System.Drawing.Drawing2D.CombineMode
---@field Complement System.Drawing.Drawing2D.CombineMode
System.Drawing.Drawing2D.CombineMode = {}
---@alias CS.System.Drawing.Drawing2D.CombineMode System.Drawing.Drawing2D.CombineMode
CS.System.Drawing.Drawing2D.CombineMode = System.Drawing.Drawing2D.CombineMode


---@class System.Drawing.Drawing2D.CompositingMode
---@field SourceOver System.Drawing.Drawing2D.CompositingMode
---@field SourceCopy System.Drawing.Drawing2D.CompositingMode
System.Drawing.Drawing2D.CompositingMode = {}
---@alias CS.System.Drawing.Drawing2D.CompositingMode System.Drawing.Drawing2D.CompositingMode
CS.System.Drawing.Drawing2D.CompositingMode = System.Drawing.Drawing2D.CompositingMode


---@class System.Drawing.Drawing2D.CompositingQuality
---@field Invalid System.Drawing.Drawing2D.CompositingQuality
---@field Default System.Drawing.Drawing2D.CompositingQuality
---@field HighSpeed System.Drawing.Drawing2D.CompositingQuality
---@field HighQuality System.Drawing.Drawing2D.CompositingQuality
---@field GammaCorrected System.Drawing.Drawing2D.CompositingQuality
---@field AssumeLinear System.Drawing.Drawing2D.CompositingQuality
System.Drawing.Drawing2D.CompositingQuality = {}
---@alias CS.System.Drawing.Drawing2D.CompositingQuality System.Drawing.Drawing2D.CompositingQuality
CS.System.Drawing.Drawing2D.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality


---@class System.Drawing.Drawing2D.CoordinateSpace
---@field World System.Drawing.Drawing2D.CoordinateSpace
---@field Page System.Drawing.Drawing2D.CoordinateSpace
---@field Device System.Drawing.Drawing2D.CoordinateSpace
System.Drawing.Drawing2D.CoordinateSpace = {}
---@alias CS.System.Drawing.Drawing2D.CoordinateSpace System.Drawing.Drawing2D.CoordinateSpace
CS.System.Drawing.Drawing2D.CoordinateSpace = System.Drawing.Drawing2D.CoordinateSpace


---@class System.Drawing.Drawing2D.CustomLineCap : System.MarshalByRefObject
---@field StrokeJoin System.Drawing.Drawing2D.LineJoin
---@field BaseCap System.Drawing.Drawing2D.LineCap
---@field BaseInset number
---@field WidthScale number
System.Drawing.Drawing2D.CustomLineCap = {}
---@alias CS.System.Drawing.Drawing2D.CustomLineCap System.Drawing.Drawing2D.CustomLineCap
CS.System.Drawing.Drawing2D.CustomLineCap = System.Drawing.Drawing2D.CustomLineCap

---@overload fun(fillPath: System.Drawing.Drawing2D.GraphicsPath, strokePath: System.Drawing.Drawing2D.GraphicsPath) : System.Drawing.Drawing2D.CustomLineCap
---@overload fun(fillPath: System.Drawing.Drawing2D.GraphicsPath, strokePath: System.Drawing.Drawing2D.GraphicsPath, baseCap: System.Drawing.Drawing2D.LineCap) : System.Drawing.Drawing2D.CustomLineCap
---@param fillPath System.Drawing.Drawing2D.GraphicsPath
---@param strokePath System.Drawing.Drawing2D.GraphicsPath
---@param baseCap System.Drawing.Drawing2D.LineCap
---@param baseInset number
---@return System.Drawing.Drawing2D.CustomLineCap
function System.Drawing.Drawing2D.CustomLineCap.New(fillPath, strokePath, baseCap, baseInset) end
function System.Drawing.Drawing2D.CustomLineCap:Dispose() end
---@return System.Object
function System.Drawing.Drawing2D.CustomLineCap:Clone() end
---@param startCap System.Drawing.Drawing2D.LineCap
---@param endCap System.Drawing.Drawing2D.LineCap
function System.Drawing.Drawing2D.CustomLineCap:SetStrokeCaps(startCap, endCap) end
---@param out_startCap System.Drawing.Drawing2D.LineCap
---@param out_endCap System.Drawing.Drawing2D.LineCap
---@return ,System.Drawing.Drawing2D.LineCap,System.Drawing.Drawing2D.LineCap
function System.Drawing.Drawing2D.CustomLineCap:GetStrokeCaps(out_startCap, out_endCap) end

---@class System.Drawing.Drawing2D.CustomLineCapType
---@field Default System.Drawing.Drawing2D.CustomLineCapType
---@field AdjustableArrowCap System.Drawing.Drawing2D.CustomLineCapType
System.Drawing.Drawing2D.CustomLineCapType = {}
---@alias CS.System.Drawing.Drawing2D.CustomLineCapType System.Drawing.Drawing2D.CustomLineCapType
CS.System.Drawing.Drawing2D.CustomLineCapType = System.Drawing.Drawing2D.CustomLineCapType


---@class System.Drawing.Drawing2D.DashStyle
---@field Solid System.Drawing.Drawing2D.DashStyle
---@field Dash System.Drawing.Drawing2D.DashStyle
---@field Dot System.Drawing.Drawing2D.DashStyle
---@field DashDot System.Drawing.Drawing2D.DashStyle
---@field DashDotDot System.Drawing.Drawing2D.DashStyle
---@field Custom System.Drawing.Drawing2D.DashStyle
System.Drawing.Drawing2D.DashStyle = {}
---@alias CS.System.Drawing.Drawing2D.DashStyle System.Drawing.Drawing2D.DashStyle
CS.System.Drawing.Drawing2D.DashStyle = System.Drawing.Drawing2D.DashStyle


---@class System.Drawing.Drawing2D.FillMode
---@field Alternate System.Drawing.Drawing2D.FillMode
---@field Winding System.Drawing.Drawing2D.FillMode
System.Drawing.Drawing2D.FillMode = {}
---@alias CS.System.Drawing.Drawing2D.FillMode System.Drawing.Drawing2D.FillMode
CS.System.Drawing.Drawing2D.FillMode = System.Drawing.Drawing2D.FillMode


---@class System.Drawing.Drawing2D.FlushIntention
---@field Flush System.Drawing.Drawing2D.FlushIntention
---@field Sync System.Drawing.Drawing2D.FlushIntention
System.Drawing.Drawing2D.FlushIntention = {}
---@alias CS.System.Drawing.Drawing2D.FlushIntention System.Drawing.Drawing2D.FlushIntention
CS.System.Drawing.Drawing2D.FlushIntention = System.Drawing.Drawing2D.FlushIntention


---@class System.Drawing.Drawing2D.GraphicsPathIterator : System.MarshalByRefObject
---@field Count number
---@field SubpathCount number
System.Drawing.Drawing2D.GraphicsPathIterator = {}
---@alias CS.System.Drawing.Drawing2D.GraphicsPathIterator System.Drawing.Drawing2D.GraphicsPathIterator
CS.System.Drawing.Drawing2D.GraphicsPathIterator = System.Drawing.Drawing2D.GraphicsPathIterator

---@param path System.Drawing.Drawing2D.GraphicsPath
---@return System.Drawing.Drawing2D.GraphicsPathIterator
function System.Drawing.Drawing2D.GraphicsPathIterator.New(path) end
function System.Drawing.Drawing2D.GraphicsPathIterator:Dispose() end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPathIterator, out_startIndex: number, out_endIndex: number, out_isClosed: boolean) : number, number, number, boolean
---@param path System.Drawing.Drawing2D.GraphicsPath
---@param out_isClosed boolean
---@return number,boolean
function System.Drawing.Drawing2D.GraphicsPathIterator:NextSubpath(path, out_isClosed) end
---@param out_pathType number
---@param out_startIndex number
---@param out_endIndex number
---@return number,number,number,number
function System.Drawing.Drawing2D.GraphicsPathIterator:NextPathType(out_pathType, out_startIndex, out_endIndex) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPathIterator, out_startIndex: number, out_endIndex: number) : number, number, number
---@param path System.Drawing.Drawing2D.GraphicsPath
---@return number
function System.Drawing.Drawing2D.GraphicsPathIterator:NextMarker(path) end
---@return boolean
function System.Drawing.Drawing2D.GraphicsPathIterator:HasCurve() end
function System.Drawing.Drawing2D.GraphicsPathIterator:Rewind() end
---@param ref_points System.Drawing.PointF[]
---@param ref_types System.Byte[]
---@return number,System.Drawing.PointF[],System.Byte[]
function System.Drawing.Drawing2D.GraphicsPathIterator:Enumerate(ref_points, ref_types) end
---@param ref_points System.Drawing.PointF[]
---@param ref_types System.Byte[]
---@param startIndex number
---@param endIndex number
---@return number,System.Drawing.PointF[],System.Byte[]
function System.Drawing.Drawing2D.GraphicsPathIterator:CopyData(ref_points, ref_types, startIndex, endIndex) end

---@class System.Drawing.Drawing2D.GraphicsState : System.MarshalByRefObject
System.Drawing.Drawing2D.GraphicsState = {}
---@alias CS.System.Drawing.Drawing2D.GraphicsState System.Drawing.Drawing2D.GraphicsState
CS.System.Drawing.Drawing2D.GraphicsState = System.Drawing.Drawing2D.GraphicsState


---@class System.Drawing.Drawing2D.HatchBrush : System.Drawing.Brush
---@field HatchStyle System.Drawing.Drawing2D.HatchStyle
---@field ForegroundColor System.Drawing.Color
---@field BackgroundColor System.Drawing.Color
System.Drawing.Drawing2D.HatchBrush = {}
---@alias CS.System.Drawing.Drawing2D.HatchBrush System.Drawing.Drawing2D.HatchBrush
CS.System.Drawing.Drawing2D.HatchBrush = System.Drawing.Drawing2D.HatchBrush

---@overload fun(hatchstyle: System.Drawing.Drawing2D.HatchStyle, foreColor: System.Drawing.Color) : System.Drawing.Drawing2D.HatchBrush
---@param hatchstyle System.Drawing.Drawing2D.HatchStyle
---@param foreColor System.Drawing.Color
---@param backColor System.Drawing.Color
---@return System.Drawing.Drawing2D.HatchBrush
function System.Drawing.Drawing2D.HatchBrush.New(hatchstyle, foreColor, backColor) end
---@return System.Object
function System.Drawing.Drawing2D.HatchBrush:Clone() end

---@class System.Drawing.Drawing2D.HatchStyle
---@field Horizontal System.Drawing.Drawing2D.HatchStyle
---@field Vertical System.Drawing.Drawing2D.HatchStyle
---@field ForwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field BackwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field Cross System.Drawing.Drawing2D.HatchStyle
---@field DiagonalCross System.Drawing.Drawing2D.HatchStyle
---@field Percent05 System.Drawing.Drawing2D.HatchStyle
---@field Percent10 System.Drawing.Drawing2D.HatchStyle
---@field Percent20 System.Drawing.Drawing2D.HatchStyle
---@field Percent25 System.Drawing.Drawing2D.HatchStyle
---@field Percent30 System.Drawing.Drawing2D.HatchStyle
---@field Percent40 System.Drawing.Drawing2D.HatchStyle
---@field Percent50 System.Drawing.Drawing2D.HatchStyle
---@field Percent60 System.Drawing.Drawing2D.HatchStyle
---@field Percent70 System.Drawing.Drawing2D.HatchStyle
---@field Percent75 System.Drawing.Drawing2D.HatchStyle
---@field Percent80 System.Drawing.Drawing2D.HatchStyle
---@field Percent90 System.Drawing.Drawing2D.HatchStyle
---@field LightDownwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field LightUpwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field DarkDownwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field DarkUpwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field WideDownwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field WideUpwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field LightVertical System.Drawing.Drawing2D.HatchStyle
---@field LightHorizontal System.Drawing.Drawing2D.HatchStyle
---@field NarrowVertical System.Drawing.Drawing2D.HatchStyle
---@field NarrowHorizontal System.Drawing.Drawing2D.HatchStyle
---@field DarkVertical System.Drawing.Drawing2D.HatchStyle
---@field DarkHorizontal System.Drawing.Drawing2D.HatchStyle
---@field DashedDownwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field DashedUpwardDiagonal System.Drawing.Drawing2D.HatchStyle
---@field DashedHorizontal System.Drawing.Drawing2D.HatchStyle
---@field DashedVertical System.Drawing.Drawing2D.HatchStyle
---@field SmallConfetti System.Drawing.Drawing2D.HatchStyle
---@field LargeConfetti System.Drawing.Drawing2D.HatchStyle
---@field ZigZag System.Drawing.Drawing2D.HatchStyle
---@field Wave System.Drawing.Drawing2D.HatchStyle
---@field DiagonalBrick System.Drawing.Drawing2D.HatchStyle
---@field HorizontalBrick System.Drawing.Drawing2D.HatchStyle
---@field Weave System.Drawing.Drawing2D.HatchStyle
---@field Plaid System.Drawing.Drawing2D.HatchStyle
---@field Divot System.Drawing.Drawing2D.HatchStyle
---@field DottedGrid System.Drawing.Drawing2D.HatchStyle
---@field DottedDiamond System.Drawing.Drawing2D.HatchStyle
---@field Shingle System.Drawing.Drawing2D.HatchStyle
---@field Trellis System.Drawing.Drawing2D.HatchStyle
---@field Sphere System.Drawing.Drawing2D.HatchStyle
---@field SmallGrid System.Drawing.Drawing2D.HatchStyle
---@field SmallCheckerBoard System.Drawing.Drawing2D.HatchStyle
---@field LargeCheckerBoard System.Drawing.Drawing2D.HatchStyle
---@field OutlinedDiamond System.Drawing.Drawing2D.HatchStyle
---@field SolidDiamond System.Drawing.Drawing2D.HatchStyle
---@field LargeGrid System.Drawing.Drawing2D.HatchStyle
---@field Min System.Drawing.Drawing2D.HatchStyle
---@field Max System.Drawing.Drawing2D.HatchStyle
System.Drawing.Drawing2D.HatchStyle = {}
---@alias CS.System.Drawing.Drawing2D.HatchStyle System.Drawing.Drawing2D.HatchStyle
CS.System.Drawing.Drawing2D.HatchStyle = System.Drawing.Drawing2D.HatchStyle


---@class System.Drawing.Drawing2D.InterpolationMode
---@field Invalid System.Drawing.Drawing2D.InterpolationMode
---@field Default System.Drawing.Drawing2D.InterpolationMode
---@field Low System.Drawing.Drawing2D.InterpolationMode
---@field High System.Drawing.Drawing2D.InterpolationMode
---@field Bilinear System.Drawing.Drawing2D.InterpolationMode
---@field Bicubic System.Drawing.Drawing2D.InterpolationMode
---@field NearestNeighbor System.Drawing.Drawing2D.InterpolationMode
---@field HighQualityBilinear System.Drawing.Drawing2D.InterpolationMode
---@field HighQualityBicubic System.Drawing.Drawing2D.InterpolationMode
System.Drawing.Drawing2D.InterpolationMode = {}
---@alias CS.System.Drawing.Drawing2D.InterpolationMode System.Drawing.Drawing2D.InterpolationMode
CS.System.Drawing.Drawing2D.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode


---@class System.Drawing.Drawing2D.LineCap
---@field Flat System.Drawing.Drawing2D.LineCap
---@field Square System.Drawing.Drawing2D.LineCap
---@field Round System.Drawing.Drawing2D.LineCap
---@field Triangle System.Drawing.Drawing2D.LineCap
---@field NoAnchor System.Drawing.Drawing2D.LineCap
---@field SquareAnchor System.Drawing.Drawing2D.LineCap
---@field RoundAnchor System.Drawing.Drawing2D.LineCap
---@field DiamondAnchor System.Drawing.Drawing2D.LineCap
---@field ArrowAnchor System.Drawing.Drawing2D.LineCap
---@field Custom System.Drawing.Drawing2D.LineCap
---@field AnchorMask System.Drawing.Drawing2D.LineCap
System.Drawing.Drawing2D.LineCap = {}
---@alias CS.System.Drawing.Drawing2D.LineCap System.Drawing.Drawing2D.LineCap
CS.System.Drawing.Drawing2D.LineCap = System.Drawing.Drawing2D.LineCap


---@class System.Drawing.Drawing2D.LineJoin
---@field Miter System.Drawing.Drawing2D.LineJoin
---@field Bevel System.Drawing.Drawing2D.LineJoin
---@field Round System.Drawing.Drawing2D.LineJoin
---@field MiterClipped System.Drawing.Drawing2D.LineJoin
System.Drawing.Drawing2D.LineJoin = {}
---@alias CS.System.Drawing.Drawing2D.LineJoin System.Drawing.Drawing2D.LineJoin
CS.System.Drawing.Drawing2D.LineJoin = System.Drawing.Drawing2D.LineJoin


---@class System.Drawing.Drawing2D.LinearGradientMode
---@field Horizontal System.Drawing.Drawing2D.LinearGradientMode
---@field Vertical System.Drawing.Drawing2D.LinearGradientMode
---@field ForwardDiagonal System.Drawing.Drawing2D.LinearGradientMode
---@field BackwardDiagonal System.Drawing.Drawing2D.LinearGradientMode
System.Drawing.Drawing2D.LinearGradientMode = {}
---@alias CS.System.Drawing.Drawing2D.LinearGradientMode System.Drawing.Drawing2D.LinearGradientMode
CS.System.Drawing.Drawing2D.LinearGradientMode = System.Drawing.Drawing2D.LinearGradientMode


---@class System.Drawing.Drawing2D.MatrixOrder
---@field Prepend System.Drawing.Drawing2D.MatrixOrder
---@field Append System.Drawing.Drawing2D.MatrixOrder
System.Drawing.Drawing2D.MatrixOrder = {}
---@alias CS.System.Drawing.Drawing2D.MatrixOrder System.Drawing.Drawing2D.MatrixOrder
CS.System.Drawing.Drawing2D.MatrixOrder = System.Drawing.Drawing2D.MatrixOrder


---@class System.Drawing.Drawing2D.PathData : System.Object
---@field Points System.Drawing.PointF[]
---@field Types System.Byte[]
System.Drawing.Drawing2D.PathData = {}
---@alias CS.System.Drawing.Drawing2D.PathData System.Drawing.Drawing2D.PathData
CS.System.Drawing.Drawing2D.PathData = System.Drawing.Drawing2D.PathData

---@return System.Drawing.Drawing2D.PathData
function System.Drawing.Drawing2D.PathData.New() end

---@class System.Drawing.Drawing2D.PathPointType
---@field Start System.Drawing.Drawing2D.PathPointType
---@field Line System.Drawing.Drawing2D.PathPointType
---@field Bezier System.Drawing.Drawing2D.PathPointType
---@field PathTypeMask System.Drawing.Drawing2D.PathPointType
---@field DashMode System.Drawing.Drawing2D.PathPointType
---@field PathMarker System.Drawing.Drawing2D.PathPointType
---@field CloseSubpath System.Drawing.Drawing2D.PathPointType
---@field Bezier3 System.Drawing.Drawing2D.PathPointType
System.Drawing.Drawing2D.PathPointType = {}
---@alias CS.System.Drawing.Drawing2D.PathPointType System.Drawing.Drawing2D.PathPointType
CS.System.Drawing.Drawing2D.PathPointType = System.Drawing.Drawing2D.PathPointType


---@class System.Drawing.Drawing2D.PenAlignment
---@field Center System.Drawing.Drawing2D.PenAlignment
---@field Inset System.Drawing.Drawing2D.PenAlignment
---@field Outset System.Drawing.Drawing2D.PenAlignment
---@field Left System.Drawing.Drawing2D.PenAlignment
---@field Right System.Drawing.Drawing2D.PenAlignment
System.Drawing.Drawing2D.PenAlignment = {}
---@alias CS.System.Drawing.Drawing2D.PenAlignment System.Drawing.Drawing2D.PenAlignment
CS.System.Drawing.Drawing2D.PenAlignment = System.Drawing.Drawing2D.PenAlignment


---@class System.Drawing.Drawing2D.PenType
---@field SolidColor System.Drawing.Drawing2D.PenType
---@field HatchFill System.Drawing.Drawing2D.PenType
---@field TextureFill System.Drawing.Drawing2D.PenType
---@field PathGradient System.Drawing.Drawing2D.PenType
---@field LinearGradient System.Drawing.Drawing2D.PenType
System.Drawing.Drawing2D.PenType = {}
---@alias CS.System.Drawing.Drawing2D.PenType System.Drawing.Drawing2D.PenType
CS.System.Drawing.Drawing2D.PenType = System.Drawing.Drawing2D.PenType


---@class System.Drawing.Drawing2D.PixelOffsetMode
---@field Invalid System.Drawing.Drawing2D.PixelOffsetMode
---@field Default System.Drawing.Drawing2D.PixelOffsetMode
---@field HighSpeed System.Drawing.Drawing2D.PixelOffsetMode
---@field HighQuality System.Drawing.Drawing2D.PixelOffsetMode
---@field None System.Drawing.Drawing2D.PixelOffsetMode
---@field Half System.Drawing.Drawing2D.PixelOffsetMode
System.Drawing.Drawing2D.PixelOffsetMode = {}
---@alias CS.System.Drawing.Drawing2D.PixelOffsetMode System.Drawing.Drawing2D.PixelOffsetMode
CS.System.Drawing.Drawing2D.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode


---@class System.Drawing.Drawing2D.QualityMode
---@field Invalid System.Drawing.Drawing2D.QualityMode
---@field Default System.Drawing.Drawing2D.QualityMode
---@field Low System.Drawing.Drawing2D.QualityMode
---@field High System.Drawing.Drawing2D.QualityMode
System.Drawing.Drawing2D.QualityMode = {}
---@alias CS.System.Drawing.Drawing2D.QualityMode System.Drawing.Drawing2D.QualityMode
CS.System.Drawing.Drawing2D.QualityMode = System.Drawing.Drawing2D.QualityMode


---@class System.Drawing.Drawing2D.RegionData : System.Object
---@field Data System.Byte[]
System.Drawing.Drawing2D.RegionData = {}
---@alias CS.System.Drawing.Drawing2D.RegionData System.Drawing.Drawing2D.RegionData
CS.System.Drawing.Drawing2D.RegionData = System.Drawing.Drawing2D.RegionData


---@class System.Drawing.Drawing2D.SafeCustomLineCapHandle : System.Runtime.InteropServices.SafeHandle
---@field IsInvalid boolean
System.Drawing.Drawing2D.SafeCustomLineCapHandle = {}
---@alias CS.System.Drawing.Drawing2D.SafeCustomLineCapHandle System.Drawing.Drawing2D.SafeCustomLineCapHandle
CS.System.Drawing.Drawing2D.SafeCustomLineCapHandle = System.Drawing.Drawing2D.SafeCustomLineCapHandle


---@class System.Drawing.Drawing2D.SmoothingMode
---@field Invalid System.Drawing.Drawing2D.SmoothingMode
---@field Default System.Drawing.Drawing2D.SmoothingMode
---@field HighSpeed System.Drawing.Drawing2D.SmoothingMode
---@field HighQuality System.Drawing.Drawing2D.SmoothingMode
---@field None System.Drawing.Drawing2D.SmoothingMode
---@field AntiAlias System.Drawing.Drawing2D.SmoothingMode
System.Drawing.Drawing2D.SmoothingMode = {}
---@alias CS.System.Drawing.Drawing2D.SmoothingMode System.Drawing.Drawing2D.SmoothingMode
CS.System.Drawing.Drawing2D.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode


---@class System.Drawing.Drawing2D.WarpMode
---@field Perspective System.Drawing.Drawing2D.WarpMode
---@field Bilinear System.Drawing.Drawing2D.WarpMode
System.Drawing.Drawing2D.WarpMode = {}
---@alias CS.System.Drawing.Drawing2D.WarpMode System.Drawing.Drawing2D.WarpMode
CS.System.Drawing.Drawing2D.WarpMode = System.Drawing.Drawing2D.WarpMode


---@class System.Drawing.Drawing2D.WrapMode
---@field Tile System.Drawing.Drawing2D.WrapMode
---@field TileFlipX System.Drawing.Drawing2D.WrapMode
---@field TileFlipY System.Drawing.Drawing2D.WrapMode
---@field TileFlipXY System.Drawing.Drawing2D.WrapMode
---@field Clamp System.Drawing.Drawing2D.WrapMode
System.Drawing.Drawing2D.WrapMode = {}
---@alias CS.System.Drawing.Drawing2D.WrapMode System.Drawing.Drawing2D.WrapMode
CS.System.Drawing.Drawing2D.WrapMode = System.Drawing.Drawing2D.WrapMode


---@class System.Drawing.Drawing2D.GraphicsContainer : System.MarshalByRefObject
System.Drawing.Drawing2D.GraphicsContainer = {}
---@alias CS.System.Drawing.Drawing2D.GraphicsContainer System.Drawing.Drawing2D.GraphicsContainer
CS.System.Drawing.Drawing2D.GraphicsContainer = System.Drawing.Drawing2D.GraphicsContainer


---@class System.Drawing.Drawing2D.GraphicsPath : System.MarshalByRefObject
---@field FillMode System.Drawing.Drawing2D.FillMode
---@field PathData System.Drawing.Drawing2D.PathData
---@field PathPoints System.Drawing.PointF[]
---@field PathTypes System.Byte[]
---@field PointCount number
System.Drawing.Drawing2D.GraphicsPath = {}
---@alias CS.System.Drawing.Drawing2D.GraphicsPath System.Drawing.Drawing2D.GraphicsPath
CS.System.Drawing.Drawing2D.GraphicsPath = System.Drawing.Drawing2D.GraphicsPath

---@overload fun() : System.Drawing.Drawing2D.GraphicsPath
---@overload fun(fillMode: System.Drawing.Drawing2D.FillMode) : System.Drawing.Drawing2D.GraphicsPath
---@overload fun(pts: System.Drawing.Point[], types: System.Byte[]) : System.Drawing.Drawing2D.GraphicsPath
---@overload fun(pts: System.Drawing.PointF[], types: System.Byte[]) : System.Drawing.Drawing2D.GraphicsPath
---@overload fun(pts: System.Drawing.Point[], types: System.Byte[], fillMode: System.Drawing.Drawing2D.FillMode) : System.Drawing.Drawing2D.GraphicsPath
---@param pts System.Drawing.PointF[]
---@param types System.Byte[]
---@param fillMode System.Drawing.Drawing2D.FillMode
---@return System.Drawing.Drawing2D.GraphicsPath
function System.Drawing.Drawing2D.GraphicsPath.New(pts, types, fillMode) end
---@return System.Object
function System.Drawing.Drawing2D.GraphicsPath:Clone() end
function System.Drawing.Drawing2D.GraphicsPath:Dispose() end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, rect: System.Drawing.Rectangle, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, rect: System.Drawing.RectangleF, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number, width: number, height: number, startAngle: number, sweepAngle: number)
---@param x number
---@param y number
---@param width number
---@param height number
---@param startAngle number
---@param sweepAngle number
function System.Drawing.Drawing2D.GraphicsPath:AddArc(x, y, width, height, startAngle, sweepAngle) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt1: System.Drawing.Point, pt2: System.Drawing.Point, pt3: System.Drawing.Point, pt4: System.Drawing.Point)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt1: System.Drawing.PointF, pt2: System.Drawing.PointF, pt3: System.Drawing.PointF, pt4: System.Drawing.PointF)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x1: number, y1: number, x2: number, y2: number, x3: number, y3: number, x4: number, y4: number)
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@param x3 number
---@param y3 number
---@param x4 number
---@param y4 number
function System.Drawing.Drawing2D.GraphicsPath:AddBezier(x1, y1, x2, y2, x3, y3, x4, y4) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[])
---@param points System.Drawing.PointF[]
function System.Drawing.Drawing2D.GraphicsPath:AddBeziers(points) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, rect: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number, width: number, height: number)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, rect: System.Drawing.Rectangle)
---@param x number
---@param y number
---@param width number
---@param height number
function System.Drawing.Drawing2D.GraphicsPath:AddEllipse(x, y, width, height) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt1: System.Drawing.Point, pt2: System.Drawing.Point)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt1: System.Drawing.PointF, pt2: System.Drawing.PointF)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x1: number, y1: number, x2: number, y2: number)
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
function System.Drawing.Drawing2D.GraphicsPath:AddLine(x1, y1, x2, y2) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[])
---@param points System.Drawing.PointF[]
function System.Drawing.Drawing2D.GraphicsPath:AddLines(points) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, rect: System.Drawing.Rectangle, startAngle: number, sweepAngle: number)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number, width: number, height: number, startAngle: number, sweepAngle: number)
---@param x number
---@param y number
---@param width number
---@param height number
---@param startAngle number
---@param sweepAngle number
function System.Drawing.Drawing2D.GraphicsPath:AddPie(x, y, width, height, startAngle, sweepAngle) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[])
---@param points System.Drawing.PointF[]
function System.Drawing.Drawing2D.GraphicsPath:AddPolygon(points) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, rect: System.Drawing.Rectangle)
---@param rect System.Drawing.RectangleF
function System.Drawing.Drawing2D.GraphicsPath:AddRectangle(rect) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, rects: System.Drawing.Rectangle[])
---@param rects System.Drawing.RectangleF[]
function System.Drawing.Drawing2D.GraphicsPath:AddRectangles(rects) end
---@param addingPath System.Drawing.Drawing2D.GraphicsPath
---@param connect boolean
function System.Drawing.Drawing2D.GraphicsPath:AddPath(addingPath, connect) end
---@return System.Drawing.PointF
function System.Drawing.Drawing2D.GraphicsPath:GetLastPoint() end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[])
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.PointF[])
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[], tension: number)
---@param points System.Drawing.PointF[]
---@param tension number
function System.Drawing.Drawing2D.GraphicsPath:AddClosedCurve(points, tension) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[])
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.PointF[])
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[], tension: number)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.PointF[], tension: number)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, points: System.Drawing.Point[], offset: number, numberOfSegments: number, tension: number)
---@param points System.Drawing.PointF[]
---@param offset number
---@param numberOfSegments number
---@param tension number
function System.Drawing.Drawing2D.GraphicsPath:AddCurve(points, offset, numberOfSegments, tension) end
function System.Drawing.Drawing2D.GraphicsPath:Reset() end
function System.Drawing.Drawing2D.GraphicsPath:Reverse() end
---@param matrix System.Drawing.Drawing2D.Matrix
function System.Drawing.Drawing2D.GraphicsPath:Transform(matrix) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, s: string, family: System.Drawing.FontFamily, style: number, emSize: number, origin: System.Drawing.Point, format: System.Drawing.StringFormat)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, s: string, family: System.Drawing.FontFamily, style: number, emSize: number, origin: System.Drawing.PointF, format: System.Drawing.StringFormat)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, s: string, family: System.Drawing.FontFamily, style: number, emSize: number, layoutRect: System.Drawing.Rectangle, format: System.Drawing.StringFormat)
---@param s string
---@param family System.Drawing.FontFamily
---@param style number
---@param emSize number
---@param layoutRect System.Drawing.RectangleF
---@param format System.Drawing.StringFormat
function System.Drawing.Drawing2D.GraphicsPath:AddString(s, family, style, emSize, layoutRect, format) end
function System.Drawing.Drawing2D.GraphicsPath:ClearMarkers() end
function System.Drawing.Drawing2D.GraphicsPath:CloseAllFigures() end
function System.Drawing.Drawing2D.GraphicsPath:CloseFigure() end
---@overload fun()
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, matrix: System.Drawing.Drawing2D.Matrix)
---@param matrix System.Drawing.Drawing2D.Matrix
---@param flatness number
function System.Drawing.Drawing2D.GraphicsPath:Flatten(matrix, flatness) end
---@overload fun() : System.Drawing.RectangleF
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, matrix: System.Drawing.Drawing2D.Matrix) : System.Drawing.RectangleF
---@param matrix System.Drawing.Drawing2D.Matrix
---@param pen System.Drawing.Pen
---@return System.Drawing.RectangleF
function System.Drawing.Drawing2D.GraphicsPath:GetBounds(matrix, pen) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, point: System.Drawing.Point, pen: System.Drawing.Pen) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, point: System.Drawing.PointF, pen: System.Drawing.Pen) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number, pen: System.Drawing.Pen) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number, pen: System.Drawing.Pen) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt: System.Drawing.Point, pen: System.Drawing.Pen, graphics: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt: System.Drawing.PointF, pen: System.Drawing.Pen, graphics: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number, pen: System.Drawing.Pen, graphics: System.Drawing.Graphics) : boolean
---@param x number
---@param y number
---@param pen System.Drawing.Pen
---@param graphics System.Drawing.Graphics
---@return boolean
function System.Drawing.Drawing2D.GraphicsPath:IsOutlineVisible(x, y, pen, graphics) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, point: System.Drawing.Point) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, point: System.Drawing.PointF) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt: System.Drawing.Point, graphics: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pt: System.Drawing.PointF, graphics: System.Drawing.Graphics) : boolean
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, x: number, y: number, graphics: System.Drawing.Graphics) : boolean
---@param x number
---@param y number
---@param graphics System.Drawing.Graphics
---@return boolean
function System.Drawing.Drawing2D.GraphicsPath:IsVisible(x, y, graphics) end
function System.Drawing.Drawing2D.GraphicsPath:SetMarkers() end
function System.Drawing.Drawing2D.GraphicsPath:StartFigure() end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, matrix: System.Drawing.Drawing2D.Matrix)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, destPoints: System.Drawing.PointF[], srcRect: System.Drawing.RectangleF, matrix: System.Drawing.Drawing2D.Matrix, warpMode: System.Drawing.Drawing2D.WarpMode)
---@param destPoints System.Drawing.PointF[]
---@param srcRect System.Drawing.RectangleF
---@param matrix System.Drawing.Drawing2D.Matrix
---@param warpMode System.Drawing.Drawing2D.WarpMode
---@param flatness number
function System.Drawing.Drawing2D.GraphicsPath:Warp(destPoints, srcRect, matrix, warpMode, flatness) end
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pen: System.Drawing.Pen)
---@overload fun(self: System.Drawing.Drawing2D.GraphicsPath, pen: System.Drawing.Pen, matrix: System.Drawing.Drawing2D.Matrix)
---@param pen System.Drawing.Pen
---@param matrix System.Drawing.Drawing2D.Matrix
---@param flatness number
function System.Drawing.Drawing2D.GraphicsPath:Widen(pen, matrix, flatness) end

---@class System.Drawing.Drawing2D.LinearGradientBrush : System.Drawing.Brush
---@field Blend System.Drawing.Drawing2D.Blend
---@field GammaCorrection boolean
---@field InterpolationColors System.Drawing.Drawing2D.ColorBlend
---@field LinearColors System.Drawing.Color[]
---@field Rectangle System.Drawing.RectangleF
---@field Transform System.Drawing.Drawing2D.Matrix
---@field WrapMode System.Drawing.Drawing2D.WrapMode
System.Drawing.Drawing2D.LinearGradientBrush = {}
---@alias CS.System.Drawing.Drawing2D.LinearGradientBrush System.Drawing.Drawing2D.LinearGradientBrush
CS.System.Drawing.Drawing2D.LinearGradientBrush = System.Drawing.Drawing2D.LinearGradientBrush

---@overload fun(point1: System.Drawing.Point, point2: System.Drawing.Point, color1: System.Drawing.Color, color2: System.Drawing.Color) : System.Drawing.Drawing2D.LinearGradientBrush
---@overload fun(point1: System.Drawing.PointF, point2: System.Drawing.PointF, color1: System.Drawing.Color, color2: System.Drawing.Color) : System.Drawing.Drawing2D.LinearGradientBrush
---@overload fun(rect: System.Drawing.Rectangle, color1: System.Drawing.Color, color2: System.Drawing.Color, linearGradientMode: System.Drawing.Drawing2D.LinearGradientMode) : System.Drawing.Drawing2D.LinearGradientBrush
---@overload fun(rect: System.Drawing.Rectangle, color1: System.Drawing.Color, color2: System.Drawing.Color, angle: number) : System.Drawing.Drawing2D.LinearGradientBrush
---@overload fun(rect: System.Drawing.RectangleF, color1: System.Drawing.Color, color2: System.Drawing.Color, linearGradientMode: System.Drawing.Drawing2D.LinearGradientMode) : System.Drawing.Drawing2D.LinearGradientBrush
---@overload fun(rect: System.Drawing.RectangleF, color1: System.Drawing.Color, color2: System.Drawing.Color, angle: number) : System.Drawing.Drawing2D.LinearGradientBrush
---@overload fun(rect: System.Drawing.Rectangle, color1: System.Drawing.Color, color2: System.Drawing.Color, angle: number, isAngleScaleable: boolean) : System.Drawing.Drawing2D.LinearGradientBrush
---@param rect System.Drawing.RectangleF
---@param color1 System.Drawing.Color
---@param color2 System.Drawing.Color
---@param angle number
---@param isAngleScaleable boolean
---@return System.Drawing.Drawing2D.LinearGradientBrush
function System.Drawing.Drawing2D.LinearGradientBrush.New(rect, color1, color2, angle, isAngleScaleable) end
---@overload fun(self: System.Drawing.Drawing2D.LinearGradientBrush, matrix: System.Drawing.Drawing2D.Matrix)
---@param matrix System.Drawing.Drawing2D.Matrix
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.LinearGradientBrush:MultiplyTransform(matrix, order) end
function System.Drawing.Drawing2D.LinearGradientBrush:ResetTransform() end
---@overload fun(self: System.Drawing.Drawing2D.LinearGradientBrush, angle: number)
---@param angle number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.LinearGradientBrush:RotateTransform(angle, order) end
---@overload fun(self: System.Drawing.Drawing2D.LinearGradientBrush, sx: number, sy: number)
---@param sx number
---@param sy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.LinearGradientBrush:ScaleTransform(sx, sy, order) end
---@overload fun(self: System.Drawing.Drawing2D.LinearGradientBrush, focus: number)
---@param focus number
---@param scale number
function System.Drawing.Drawing2D.LinearGradientBrush:SetBlendTriangularShape(focus, scale) end
---@overload fun(self: System.Drawing.Drawing2D.LinearGradientBrush, focus: number)
---@param focus number
---@param scale number
function System.Drawing.Drawing2D.LinearGradientBrush:SetSigmaBellShape(focus, scale) end
---@overload fun(self: System.Drawing.Drawing2D.LinearGradientBrush, dx: number, dy: number)
---@param dx number
---@param dy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.LinearGradientBrush:TranslateTransform(dx, dy, order) end
---@return System.Object
function System.Drawing.Drawing2D.LinearGradientBrush:Clone() end

---@class System.Drawing.Drawing2D.Matrix : System.MarshalByRefObject
---@field Elements System.Single[]
---@field IsIdentity boolean
---@field IsInvertible boolean
---@field OffsetX number
---@field OffsetY number
System.Drawing.Drawing2D.Matrix = {}
---@alias CS.System.Drawing.Drawing2D.Matrix System.Drawing.Drawing2D.Matrix
CS.System.Drawing.Drawing2D.Matrix = System.Drawing.Drawing2D.Matrix

---@overload fun() : System.Drawing.Drawing2D.Matrix
---@overload fun(rect: System.Drawing.Rectangle, plgpts: System.Drawing.Point[]) : System.Drawing.Drawing2D.Matrix
---@overload fun(rect: System.Drawing.RectangleF, plgpts: System.Drawing.PointF[]) : System.Drawing.Drawing2D.Matrix
---@param m11 number
---@param m12 number
---@param m21 number
---@param m22 number
---@param dx number
---@param dy number
---@return System.Drawing.Drawing2D.Matrix
function System.Drawing.Drawing2D.Matrix.New(m11, m12, m21, m22, dx, dy) end
---@return System.Drawing.Drawing2D.Matrix
function System.Drawing.Drawing2D.Matrix:Clone() end
function System.Drawing.Drawing2D.Matrix:Dispose() end
---@param obj System.Object
---@return boolean
function System.Drawing.Drawing2D.Matrix:Equals(obj) end
---@return number
function System.Drawing.Drawing2D.Matrix:GetHashCode() end
function System.Drawing.Drawing2D.Matrix:Invert() end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, matrix: System.Drawing.Drawing2D.Matrix)
---@param matrix System.Drawing.Drawing2D.Matrix
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.Matrix:Multiply(matrix, order) end
function System.Drawing.Drawing2D.Matrix:Reset() end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, angle: number)
---@param angle number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.Matrix:Rotate(angle, order) end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, angle: number, point: System.Drawing.PointF)
---@param angle number
---@param point System.Drawing.PointF
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.Matrix:RotateAt(angle, point, order) end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, scaleX: number, scaleY: number)
---@param scaleX number
---@param scaleY number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.Matrix:Scale(scaleX, scaleY, order) end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, shearX: number, shearY: number)
---@param shearX number
---@param shearY number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.Matrix:Shear(shearX, shearY, order) end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, pts: System.Drawing.Point[])
---@param pts System.Drawing.PointF[]
function System.Drawing.Drawing2D.Matrix:TransformPoints(pts) end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, pts: System.Drawing.Point[])
---@param pts System.Drawing.PointF[]
function System.Drawing.Drawing2D.Matrix:TransformVectors(pts) end
---@overload fun(self: System.Drawing.Drawing2D.Matrix, offsetX: number, offsetY: number)
---@param offsetX number
---@param offsetY number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.Matrix:Translate(offsetX, offsetY, order) end
---@param pts System.Drawing.Point[]
function System.Drawing.Drawing2D.Matrix:VectorTransformPoints(pts) end

---@class System.Drawing.Drawing2D.PathGradientBrush : System.Drawing.Brush
---@field Blend System.Drawing.Drawing2D.Blend
---@field CenterColor System.Drawing.Color
---@field CenterPoint System.Drawing.PointF
---@field FocusScales System.Drawing.PointF
---@field InterpolationColors System.Drawing.Drawing2D.ColorBlend
---@field Rectangle System.Drawing.RectangleF
---@field SurroundColors System.Drawing.Color[]
---@field Transform System.Drawing.Drawing2D.Matrix
---@field WrapMode System.Drawing.Drawing2D.WrapMode
System.Drawing.Drawing2D.PathGradientBrush = {}
---@alias CS.System.Drawing.Drawing2D.PathGradientBrush System.Drawing.Drawing2D.PathGradientBrush
CS.System.Drawing.Drawing2D.PathGradientBrush = System.Drawing.Drawing2D.PathGradientBrush

---@overload fun(path: System.Drawing.Drawing2D.GraphicsPath) : System.Drawing.Drawing2D.PathGradientBrush
---@overload fun(points: System.Drawing.Point[]) : System.Drawing.Drawing2D.PathGradientBrush
---@overload fun(points: System.Drawing.PointF[]) : System.Drawing.Drawing2D.PathGradientBrush
---@overload fun(points: System.Drawing.Point[], wrapMode: System.Drawing.Drawing2D.WrapMode) : System.Drawing.Drawing2D.PathGradientBrush
---@param points System.Drawing.PointF[]
---@param wrapMode System.Drawing.Drawing2D.WrapMode
---@return System.Drawing.Drawing2D.PathGradientBrush
function System.Drawing.Drawing2D.PathGradientBrush.New(points, wrapMode) end
---@overload fun(self: System.Drawing.Drawing2D.PathGradientBrush, matrix: System.Drawing.Drawing2D.Matrix)
---@param matrix System.Drawing.Drawing2D.Matrix
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.PathGradientBrush:MultiplyTransform(matrix, order) end
function System.Drawing.Drawing2D.PathGradientBrush:ResetTransform() end
---@overload fun(self: System.Drawing.Drawing2D.PathGradientBrush, angle: number)
---@param angle number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.PathGradientBrush:RotateTransform(angle, order) end
---@overload fun(self: System.Drawing.Drawing2D.PathGradientBrush, sx: number, sy: number)
---@param sx number
---@param sy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.PathGradientBrush:ScaleTransform(sx, sy, order) end
---@overload fun(self: System.Drawing.Drawing2D.PathGradientBrush, focus: number)
---@param focus number
---@param scale number
function System.Drawing.Drawing2D.PathGradientBrush:SetBlendTriangularShape(focus, scale) end
---@overload fun(self: System.Drawing.Drawing2D.PathGradientBrush, focus: number)
---@param focus number
---@param scale number
function System.Drawing.Drawing2D.PathGradientBrush:SetSigmaBellShape(focus, scale) end
---@overload fun(self: System.Drawing.Drawing2D.PathGradientBrush, dx: number, dy: number)
---@param dx number
---@param dy number
---@param order System.Drawing.Drawing2D.MatrixOrder
function System.Drawing.Drawing2D.PathGradientBrush:TranslateTransform(dx, dy, order) end
---@return System.Object
function System.Drawing.Drawing2D.PathGradientBrush:Clone() end

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


---@class ApplicationServicesStrings : System.Object
ApplicationServicesStrings = {}
---@alias CS.ApplicationServicesStrings ApplicationServicesStrings
CS.ApplicationServicesStrings = ApplicationServicesStrings


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

---@class System.Web.UI.KeyedList : System.Object
---@field Count number
---@field IsFixedSize boolean
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field Item System.Object
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
---@field SyncRoot System.Object
System.Web.UI.KeyedList = {}
---@alias CS.System.Web.UI.KeyedList System.Web.UI.KeyedList
CS.System.Web.UI.KeyedList = System.Web.UI.KeyedList

---@return System.Web.UI.KeyedList
function System.Web.UI.KeyedList.New() end
---@param key System.Object
---@param value System.Object
function System.Web.UI.KeyedList:Add(key, value) end
function System.Web.UI.KeyedList:Clear() end
---@param key System.Object
---@return boolean
function System.Web.UI.KeyedList:Contains(key) end
---@param array System.Array
---@param idx number
function System.Web.UI.KeyedList:CopyTo(array, idx) end
---@param idx number
---@param key System.Object
---@param value System.Object
function System.Web.UI.KeyedList:Insert(idx, key, value) end
---@param key System.Object
function System.Web.UI.KeyedList:Remove(key) end
---@param idx number
function System.Web.UI.KeyedList:RemoveAt(idx) end

---@class System.Web.UI.KeyedListEnumerator : System.Object
---@field Current System.Object
---@field Entry System.Collections.DictionaryEntry
---@field Key System.Object
---@field Value System.Object
System.Web.UI.KeyedListEnumerator = {}
---@alias CS.System.Web.UI.KeyedListEnumerator System.Web.UI.KeyedListEnumerator
CS.System.Web.UI.KeyedListEnumerator = System.Web.UI.KeyedListEnumerator

---@return boolean
function System.Web.UI.KeyedListEnumerator:MoveNext() end
function System.Web.UI.KeyedListEnumerator:Reset() end

---@class System.Web.Security.IMembershipAdapter
---@field Providers System.Web.Security.MembershipProviderCollection
---@field UserIsOnlineTimeWindow number
---@field IsDecryptionKeyAutogenerated boolean
---@field UsingCustomEncryption boolean
System.Web.Security.IMembershipAdapter = {}
---@alias CS.System.Web.Security.IMembershipAdapter System.Web.Security.IMembershipAdapter
CS.System.Web.Security.IMembershipAdapter = System.Web.Security.IMembershipAdapter

---@param encrypt boolean
---@param buffer System.Byte[]
---@param useLegacyMode boolean
---@return System.Byte[]
function System.Web.Security.IMembershipAdapter:EncryptOrDecryptData(encrypt, buffer, useLegacyMode) end

---@class System.Web.Security.MembershipCreateStatus
---@field Success System.Web.Security.MembershipCreateStatus
---@field InvalidUserName System.Web.Security.MembershipCreateStatus
---@field InvalidPassword System.Web.Security.MembershipCreateStatus
---@field InvalidQuestion System.Web.Security.MembershipCreateStatus
---@field InvalidAnswer System.Web.Security.MembershipCreateStatus
---@field InvalidEmail System.Web.Security.MembershipCreateStatus
---@field DuplicateUserName System.Web.Security.MembershipCreateStatus
---@field DuplicateEmail System.Web.Security.MembershipCreateStatus
---@field UserRejected System.Web.Security.MembershipCreateStatus
---@field InvalidProviderUserKey System.Web.Security.MembershipCreateStatus
---@field DuplicateProviderUserKey System.Web.Security.MembershipCreateStatus
---@field ProviderError System.Web.Security.MembershipCreateStatus
System.Web.Security.MembershipCreateStatus = {}
---@alias CS.System.Web.Security.MembershipCreateStatus System.Web.Security.MembershipCreateStatus
CS.System.Web.Security.MembershipCreateStatus = System.Web.Security.MembershipCreateStatus


---@class System.Web.Security.MembershipCreateUserException : System.Exception
---@field StatusCode System.Web.Security.MembershipCreateStatus
System.Web.Security.MembershipCreateUserException = {}
---@alias CS.System.Web.Security.MembershipCreateUserException System.Web.Security.MembershipCreateUserException
CS.System.Web.Security.MembershipCreateUserException = System.Web.Security.MembershipCreateUserException

---@overload fun(statusCode: System.Web.Security.MembershipCreateStatus) : System.Web.Security.MembershipCreateUserException
---@overload fun(message: string) : System.Web.Security.MembershipCreateUserException
---@overload fun() : System.Web.Security.MembershipCreateUserException
---@param message string
---@param innerException System.Exception
---@return System.Web.Security.MembershipCreateUserException
function System.Web.Security.MembershipCreateUserException.New(message, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.Security.MembershipCreateUserException:GetObjectData(info, context) end

---@class System.Web.Security.MembershipPasswordException : System.Exception
System.Web.Security.MembershipPasswordException = {}
---@alias CS.System.Web.Security.MembershipPasswordException System.Web.Security.MembershipPasswordException
CS.System.Web.Security.MembershipPasswordException = System.Web.Security.MembershipPasswordException

---@overload fun(message: string) : System.Web.Security.MembershipPasswordException
---@overload fun() : System.Web.Security.MembershipPasswordException
---@param message string
---@param innerException System.Exception
---@return System.Web.Security.MembershipPasswordException
function System.Web.Security.MembershipPasswordException.New(message, innerException) end

---@class System.Web.Security.MembershipPasswordFormat
---@field Clear System.Web.Security.MembershipPasswordFormat
---@field Hashed System.Web.Security.MembershipPasswordFormat
---@field Encrypted System.Web.Security.MembershipPasswordFormat
System.Web.Security.MembershipPasswordFormat = {}
---@alias CS.System.Web.Security.MembershipPasswordFormat System.Web.Security.MembershipPasswordFormat
CS.System.Web.Security.MembershipPasswordFormat = System.Web.Security.MembershipPasswordFormat


---@class System.Web.Security.MembershipProviderCollection : System.Configuration.Provider.ProviderCollection
---@field Item System.Web.Security.MembershipProvider
System.Web.Security.MembershipProviderCollection = {}
---@alias CS.System.Web.Security.MembershipProviderCollection System.Web.Security.MembershipProviderCollection
CS.System.Web.Security.MembershipProviderCollection = System.Web.Security.MembershipProviderCollection

---@return System.Web.Security.MembershipProviderCollection
function System.Web.Security.MembershipProviderCollection.New() end
---@param provider System.Configuration.Provider.ProviderBase
function System.Web.Security.MembershipProviderCollection:Add(provider) end
---@param array System.Web.Security.MembershipProvider[]
---@param index number
function System.Web.Security.MembershipProviderCollection:CopyTo(array, index) end

---@class System.Web.Security.MembershipUserCollection : System.Object
---@field Item System.Web.Security.MembershipUser
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Web.Security.MembershipUserCollection = {}
---@alias CS.System.Web.Security.MembershipUserCollection System.Web.Security.MembershipUserCollection
CS.System.Web.Security.MembershipUserCollection = System.Web.Security.MembershipUserCollection

---@return System.Web.Security.MembershipUserCollection
function System.Web.Security.MembershipUserCollection.New() end
---@param user System.Web.Security.MembershipUser
function System.Web.Security.MembershipUserCollection:Add(user) end
---@param name string
function System.Web.Security.MembershipUserCollection:Remove(name) end
---@return System.Collections.IEnumerator
function System.Web.Security.MembershipUserCollection:GetEnumerator() end
function System.Web.Security.MembershipUserCollection:SetReadOnly() end
function System.Web.Security.MembershipUserCollection:Clear() end
---@param array System.Web.Security.MembershipUser[]
---@param index number
function System.Web.Security.MembershipUserCollection:CopyTo(array, index) end

---@class System.Web.Security.MembershipValidatePasswordEventHandler : System.MulticastDelegate
System.Web.Security.MembershipValidatePasswordEventHandler = {}
---@alias CS.System.Web.Security.MembershipValidatePasswordEventHandler System.Web.Security.MembershipValidatePasswordEventHandler
CS.System.Web.Security.MembershipValidatePasswordEventHandler = System.Web.Security.MembershipValidatePasswordEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.Security.MembershipValidatePasswordEventHandler
function System.Web.Security.MembershipValidatePasswordEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.Security.ValidatePasswordEventArgs
function System.Web.Security.MembershipValidatePasswordEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.Security.ValidatePasswordEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.Security.MembershipValidatePasswordEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.Security.MembershipValidatePasswordEventHandler:EndInvoke(result) end

---@class System.Web.Security.ValidatePasswordEventArgs : System.EventArgs
---@field UserName string
---@field Password string
---@field IsNewUser boolean
---@field Cancel boolean
---@field FailureInformation System.Exception
System.Web.Security.ValidatePasswordEventArgs = {}
---@alias CS.System.Web.Security.ValidatePasswordEventArgs System.Web.Security.ValidatePasswordEventArgs
CS.System.Web.Security.ValidatePasswordEventArgs = System.Web.Security.ValidatePasswordEventArgs

---@param userName string
---@param password string
---@param isNewUser boolean
---@return System.Web.Security.ValidatePasswordEventArgs
function System.Web.Security.ValidatePasswordEventArgs.New(userName, password, isNewUser) end

---@class System.Web.Security.IMembershipHelper
---@field UserIsOnlineTimeWindow number
---@field Providers System.Web.Security.MembershipProviderCollection
System.Web.Security.IMembershipHelper = {}
---@alias CS.System.Web.Security.IMembershipHelper System.Web.Security.IMembershipHelper
CS.System.Web.Security.IMembershipHelper = System.Web.Security.IMembershipHelper

---@param encodedPassword System.Byte[]
---@return System.Byte[]
function System.Web.Security.IMembershipHelper:DecryptPassword(encodedPassword) end
---@param password System.Byte[]
---@return System.Byte[]
function System.Web.Security.IMembershipHelper:EncryptPassword(password) end

---@class System.Web.Security.MembershipProvider : System.Configuration.Provider.ProviderBase
---@field ApplicationName string
---@field EnablePasswordReset boolean
---@field EnablePasswordRetrieval boolean
---@field RequiresQuestionAndAnswer boolean
---@field MaxInvalidPasswordAttempts number
---@field MinRequiredNonAlphanumericCharacters number
---@field MinRequiredPasswordLength number
---@field PasswordAttemptWindow number
---@field PasswordFormat System.Web.Security.MembershipPasswordFormat
---@field PasswordStrengthRegularExpression string
---@field RequiresUniqueEmail boolean
System.Web.Security.MembershipProvider = {}
---@alias CS.System.Web.Security.MembershipProvider System.Web.Security.MembershipProvider
CS.System.Web.Security.MembershipProvider = System.Web.Security.MembershipProvider

---@param username string
---@param oldPassword string
---@param newPassword string
---@return boolean
function System.Web.Security.MembershipProvider:ChangePassword(username, oldPassword, newPassword) end
---@param username string
---@param password string
---@param newPasswordQuestion string
---@param newPasswordAnswer string
---@return boolean
function System.Web.Security.MembershipProvider:ChangePasswordQuestionAndAnswer(username, password, newPasswordQuestion, newPasswordAnswer) end
---@param username string
---@param password string
---@param email string
---@param passwordQuestion string
---@param passwordAnswer string
---@param isApproved boolean
---@param providerUserKey System.Object
---@param out_status System.Web.Security.MembershipCreateStatus
---@return System.Web.Security.MembershipUser,System.Web.Security.MembershipCreateStatus
function System.Web.Security.MembershipProvider:CreateUser(username, password, email, passwordQuestion, passwordAnswer, isApproved, providerUserKey, out_status) end
---@param username string
---@param deleteAllRelatedData boolean
---@return boolean
function System.Web.Security.MembershipProvider:DeleteUser(username, deleteAllRelatedData) end
---@param emailToMatch string
---@param pageIndex number
---@param pageSize number
---@param out_totalRecords number
---@return System.Web.Security.MembershipUserCollection,number
function System.Web.Security.MembershipProvider:FindUsersByEmail(emailToMatch, pageIndex, pageSize, out_totalRecords) end
---@param usernameToMatch string
---@param pageIndex number
---@param pageSize number
---@param out_totalRecords number
---@return System.Web.Security.MembershipUserCollection,number
function System.Web.Security.MembershipProvider:FindUsersByName(usernameToMatch, pageIndex, pageSize, out_totalRecords) end
---@param pageIndex number
---@param pageSize number
---@param out_totalRecords number
---@return System.Web.Security.MembershipUserCollection,number
function System.Web.Security.MembershipProvider:GetAllUsers(pageIndex, pageSize, out_totalRecords) end
---@return number
function System.Web.Security.MembershipProvider:GetNumberOfUsersOnline() end
---@param username string
---@param answer string
---@return string
function System.Web.Security.MembershipProvider:GetPassword(username, answer) end
---@overload fun(self: System.Web.Security.MembershipProvider, username: string, userIsOnline: boolean) : System.Web.Security.MembershipUser
---@param providerUserKey System.Object
---@param userIsOnline boolean
---@return System.Web.Security.MembershipUser
function System.Web.Security.MembershipProvider:GetUser(providerUserKey, userIsOnline) end
---@param email string
---@return string
function System.Web.Security.MembershipProvider:GetUserNameByEmail(email) end
---@param username string
---@param answer string
---@return string
function System.Web.Security.MembershipProvider:ResetPassword(username, answer) end
---@param user System.Web.Security.MembershipUser
function System.Web.Security.MembershipProvider:UpdateUser(user) end
---@param username string
---@param password string
---@return boolean
function System.Web.Security.MembershipProvider:ValidateUser(username, password) end
---@param userName string
---@return boolean
function System.Web.Security.MembershipProvider:UnlockUser(userName) end

---@class System.Web.Security.MembershipUser : System.Object
---@field Comment string
---@field CreationDate System.DateTime
---@field Email string
---@field IsApproved boolean
---@field IsLockedOut boolean
---@field IsOnline boolean
---@field LastActivityDate System.DateTime
---@field LastLoginDate System.DateTime
---@field LastPasswordChangedDate System.DateTime
---@field LastLockoutDate System.DateTime
---@field PasswordQuestion string
---@field ProviderName string
---@field UserName string
---@field ProviderUserKey System.Object
System.Web.Security.MembershipUser = {}
---@alias CS.System.Web.Security.MembershipUser System.Web.Security.MembershipUser
CS.System.Web.Security.MembershipUser = System.Web.Security.MembershipUser

---@param providerName string
---@param name string
---@param providerUserKey System.Object
---@param email string
---@param passwordQuestion string
---@param comment string
---@param isApproved boolean
---@param isLockedOut boolean
---@param creationDate System.DateTime
---@param lastLoginDate System.DateTime
---@param lastActivityDate System.DateTime
---@param lastPasswordChangedDate System.DateTime
---@param lastLockoutDate System.DateTime
---@return System.Web.Security.MembershipUser
function System.Web.Security.MembershipUser.New(providerName, name, providerUserKey, email, passwordQuestion, comment, isApproved, isLockedOut, creationDate, lastLoginDate, lastActivityDate, lastPasswordChangedDate, lastLockoutDate) end
---@param oldPassword string
---@param newPassword string
---@return boolean
function System.Web.Security.MembershipUser:ChangePassword(oldPassword, newPassword) end
---@param password string
---@param newPasswordQuestion string
---@param newPasswordAnswer string
---@return boolean
function System.Web.Security.MembershipUser:ChangePasswordQuestionAndAnswer(password, newPasswordQuestion, newPasswordAnswer) end
---@overload fun() : string
---@param passwordAnswer string
---@return string
function System.Web.Security.MembershipUser:GetPassword(passwordAnswer) end
---@overload fun() : string
---@param passwordAnswer string
---@return string
function System.Web.Security.MembershipUser:ResetPassword(passwordAnswer) end
---@return string
function System.Web.Security.MembershipUser:ToString() end
---@return boolean
function System.Web.Security.MembershipUser:UnlockUser() end

---@class System.Web.Security.RoleProvider : System.Configuration.Provider.ProviderBase
---@field ApplicationName string
System.Web.Security.RoleProvider = {}
---@alias CS.System.Web.Security.RoleProvider System.Web.Security.RoleProvider
CS.System.Web.Security.RoleProvider = System.Web.Security.RoleProvider

---@param usernames System.String[]
---@param roleNames System.String[]
function System.Web.Security.RoleProvider:AddUsersToRoles(usernames, roleNames) end
---@param roleName string
function System.Web.Security.RoleProvider:CreateRole(roleName) end
---@param roleName string
---@param throwOnPopulatedRole boolean
---@return boolean
function System.Web.Security.RoleProvider:DeleteRole(roleName, throwOnPopulatedRole) end
---@param roleName string
---@param usernameToMatch string
---@return System.String[]
function System.Web.Security.RoleProvider:FindUsersInRole(roleName, usernameToMatch) end
---@return System.String[]
function System.Web.Security.RoleProvider:GetAllRoles() end
---@param username string
---@return System.String[]
function System.Web.Security.RoleProvider:GetRolesForUser(username) end
---@param roleName string
---@return System.String[]
function System.Web.Security.RoleProvider:GetUsersInRole(roleName) end
---@param username string
---@param roleName string
---@return boolean
function System.Web.Security.RoleProvider:IsUserInRole(username, roleName) end
---@param usernames System.String[]
---@param roleNames System.String[]
function System.Web.Security.RoleProvider:RemoveUsersFromRoles(usernames, roleNames) end
---@param roleName string
---@return boolean
function System.Web.Security.RoleProvider:RoleExists(roleName) end

---@class System.Web.Configuration.MembershipPasswordCompatibilityMode
---@field Framework20 System.Web.Configuration.MembershipPasswordCompatibilityMode
---@field Framework40 System.Web.Configuration.MembershipPasswordCompatibilityMode
System.Web.Configuration.MembershipPasswordCompatibilityMode = {}
---@alias CS.System.Web.Configuration.MembershipPasswordCompatibilityMode System.Web.Configuration.MembershipPasswordCompatibilityMode
CS.System.Web.Configuration.MembershipPasswordCompatibilityMode = System.Web.Configuration.MembershipPasswordCompatibilityMode


---@class System.Web.Hosting.CustomLoaderAttribute : System.Attribute
---@field CustomLoaderType System.Type
System.Web.Hosting.CustomLoaderAttribute = {}
---@alias CS.System.Web.Hosting.CustomLoaderAttribute System.Web.Hosting.CustomLoaderAttribute
CS.System.Web.Hosting.CustomLoaderAttribute = System.Web.Hosting.CustomLoaderAttribute

---@param customLoaderType System.Type
---@return System.Web.Hosting.CustomLoaderAttribute
function System.Web.Hosting.CustomLoaderAttribute.New(customLoaderType) end

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


---@class CountPropertyHelper : System.Object
CountPropertyHelper = {}
---@alias CS.CountPropertyHelper CountPropertyHelper
CS.CountPropertyHelper = CountPropertyHelper

---@param value System.Object
---@param out_count number
---@return boolean,number
function CountPropertyHelper.TryGetCount(value, out_count) end

---@class System.ComponentModel.DataAnnotations.AppSettings : System.Object
System.ComponentModel.DataAnnotations.AppSettings = {}
---@alias CS.System.ComponentModel.DataAnnotations.AppSettings System.ComponentModel.DataAnnotations.AppSettings
CS.System.ComponentModel.DataAnnotations.AppSettings = System.ComponentModel.DataAnnotations.AppSettings


---@class System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider : System.ComponentModel.TypeDescriptionProvider
System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider = {}
---@alias CS.System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider
CS.System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider = System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider

---@overload fun(type: System.Type) : System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider
---@param type System.Type
---@param associatedMetadataType System.Type
---@return System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider.New(type, associatedMetadataType) end
---@param objectType System.Type
---@param instance System.Object
---@return System.ComponentModel.ICustomTypeDescriptor
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider:GetTypeDescriptor(objectType, instance) end

---@class System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor : System.ComponentModel.CustomTypeDescriptor
System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor = {}
---@alias CS.System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor
CS.System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor = System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor

---@param parent System.ComponentModel.ICustomTypeDescriptor
---@param type System.Type
---@param associatedMetadataType System.Type
---@return System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.New(parent, type, associatedMetadataType) end
---@overload fun(self: System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor, attributes: System.Attribute[]) : System.ComponentModel.PropertyDescriptorCollection
---@return System.ComponentModel.PropertyDescriptorCollection
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor:GetProperties() end
---@return System.ComponentModel.AttributeCollection
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor:GetAttributes() end

---@class System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache : System.Object
System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache = {}
---@alias CS.System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache
CS.System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache = System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache

---@param type System.Type
---@param associatedType System.Type
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.ValidateMetadataType(type, associatedType) end
---@param type System.Type
---@return System.Type
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.GetAssociatedMetadataType(type) end
---@param type System.Type
---@param memberName string
---@return System.Attribute[]
function System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.GetAssociatedMetadata(type, memberName) end

---@class System.ComponentModel.DataAnnotations.AssociationAttribute : System.Attribute
---@field Name string
---@field ThisKey string
---@field OtherKey string
---@field IsForeignKey boolean
---@field ThisKeyMembers System.Collections.Generic.IEnumerable
---@field OtherKeyMembers System.Collections.Generic.IEnumerable
System.ComponentModel.DataAnnotations.AssociationAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.AssociationAttribute System.ComponentModel.DataAnnotations.AssociationAttribute
CS.System.ComponentModel.DataAnnotations.AssociationAttribute = System.ComponentModel.DataAnnotations.AssociationAttribute

---@param name string
---@param thisKey string
---@param otherKey string
---@return System.ComponentModel.DataAnnotations.AssociationAttribute
function System.ComponentModel.DataAnnotations.AssociationAttribute.New(name, thisKey, otherKey) end

---@class System.ComponentModel.DataAnnotations.BindableTypeAttribute : System.Attribute
---@field IsBindable boolean
System.ComponentModel.DataAnnotations.BindableTypeAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.BindableTypeAttribute System.ComponentModel.DataAnnotations.BindableTypeAttribute
CS.System.ComponentModel.DataAnnotations.BindableTypeAttribute = System.ComponentModel.DataAnnotations.BindableTypeAttribute

---@return System.ComponentModel.DataAnnotations.BindableTypeAttribute
function System.ComponentModel.DataAnnotations.BindableTypeAttribute.New() end

---@class System.ComponentModel.DataAnnotations.CompareAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field OtherProperty string
---@field OtherPropertyDisplayName string
---@field RequiresValidationContext boolean
System.ComponentModel.DataAnnotations.CompareAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.CompareAttribute System.ComponentModel.DataAnnotations.CompareAttribute
CS.System.ComponentModel.DataAnnotations.CompareAttribute = System.ComponentModel.DataAnnotations.CompareAttribute

---@param otherProperty string
---@return System.ComponentModel.DataAnnotations.CompareAttribute
function System.ComponentModel.DataAnnotations.CompareAttribute.New(otherProperty) end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.CompareAttribute:FormatErrorMessage(name) end

---@class System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute : System.Attribute
System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute
CS.System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute = System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute

---@return System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute
function System.ComponentModel.DataAnnotations.ConcurrencyCheckAttribute.New() end

---@class System.ComponentModel.DataAnnotations.CreditCardAttribute : System.ComponentModel.DataAnnotations.DataTypeAttribute
System.ComponentModel.DataAnnotations.CreditCardAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.CreditCardAttribute System.ComponentModel.DataAnnotations.CreditCardAttribute
CS.System.ComponentModel.DataAnnotations.CreditCardAttribute = System.ComponentModel.DataAnnotations.CreditCardAttribute

---@return System.ComponentModel.DataAnnotations.CreditCardAttribute
function System.ComponentModel.DataAnnotations.CreditCardAttribute.New() end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.CreditCardAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.CustomValidationAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field ValidatorType System.Type
---@field Method string
---@field TypeId System.Object
System.ComponentModel.DataAnnotations.CustomValidationAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.CustomValidationAttribute System.ComponentModel.DataAnnotations.CustomValidationAttribute
CS.System.ComponentModel.DataAnnotations.CustomValidationAttribute = System.ComponentModel.DataAnnotations.CustomValidationAttribute

---@param validatorType System.Type
---@param method string
---@return System.ComponentModel.DataAnnotations.CustomValidationAttribute
function System.ComponentModel.DataAnnotations.CustomValidationAttribute.New(validatorType, method) end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.CustomValidationAttribute:FormatErrorMessage(name) end

---@class System.ComponentModel.DataAnnotations.DataType
---@field Custom System.ComponentModel.DataAnnotations.DataType
---@field DateTime System.ComponentModel.DataAnnotations.DataType
---@field Date System.ComponentModel.DataAnnotations.DataType
---@field Time System.ComponentModel.DataAnnotations.DataType
---@field Duration System.ComponentModel.DataAnnotations.DataType
---@field PhoneNumber System.ComponentModel.DataAnnotations.DataType
---@field Currency System.ComponentModel.DataAnnotations.DataType
---@field Text System.ComponentModel.DataAnnotations.DataType
---@field Html System.ComponentModel.DataAnnotations.DataType
---@field MultilineText System.ComponentModel.DataAnnotations.DataType
---@field EmailAddress System.ComponentModel.DataAnnotations.DataType
---@field Password System.ComponentModel.DataAnnotations.DataType
---@field Url System.ComponentModel.DataAnnotations.DataType
---@field ImageUrl System.ComponentModel.DataAnnotations.DataType
---@field CreditCard System.ComponentModel.DataAnnotations.DataType
---@field PostalCode System.ComponentModel.DataAnnotations.DataType
---@field Upload System.ComponentModel.DataAnnotations.DataType
System.ComponentModel.DataAnnotations.DataType = {}
---@alias CS.System.ComponentModel.DataAnnotations.DataType System.ComponentModel.DataAnnotations.DataType
CS.System.ComponentModel.DataAnnotations.DataType = System.ComponentModel.DataAnnotations.DataType


---@class System.ComponentModel.DataAnnotations.DataTypeAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field DataType System.ComponentModel.DataAnnotations.DataType
---@field CustomDataType string
---@field DisplayFormat System.ComponentModel.DataAnnotations.DisplayFormatAttribute
System.ComponentModel.DataAnnotations.DataTypeAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.DataTypeAttribute System.ComponentModel.DataAnnotations.DataTypeAttribute
CS.System.ComponentModel.DataAnnotations.DataTypeAttribute = System.ComponentModel.DataAnnotations.DataTypeAttribute

---@overload fun(dataType: System.ComponentModel.DataAnnotations.DataType) : System.ComponentModel.DataAnnotations.DataTypeAttribute
---@param customDataType string
---@return System.ComponentModel.DataAnnotations.DataTypeAttribute
function System.ComponentModel.DataAnnotations.DataTypeAttribute.New(customDataType) end
---@return string
function System.ComponentModel.DataAnnotations.DataTypeAttribute:GetDataTypeName() end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.DataTypeAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.DisplayAttribute : System.Attribute
---@field ShortName string
---@field Name string
---@field Description string
---@field Prompt string
---@field GroupName string
---@field ResourceType System.Type
---@field AutoGenerateField boolean
---@field AutoGenerateFilter boolean
---@field Order number
System.ComponentModel.DataAnnotations.DisplayAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.DisplayAttribute System.ComponentModel.DataAnnotations.DisplayAttribute
CS.System.ComponentModel.DataAnnotations.DisplayAttribute = System.ComponentModel.DataAnnotations.DisplayAttribute

---@return System.ComponentModel.DataAnnotations.DisplayAttribute
function System.ComponentModel.DataAnnotations.DisplayAttribute.New() end
---@return string
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetShortName() end
---@return string
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetName() end
---@return string
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetDescription() end
---@return string
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetPrompt() end
---@return string
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetGroupName() end
---@return System.Nullable
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetAutoGenerateField() end
---@return System.Nullable
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetAutoGenerateFilter() end
---@return System.Nullable
function System.ComponentModel.DataAnnotations.DisplayAttribute:GetOrder() end

---@class System.ComponentModel.DataAnnotations.DisplayColumnAttribute : System.Attribute
---@field DisplayColumn string
---@field SortColumn string
---@field SortDescending boolean
System.ComponentModel.DataAnnotations.DisplayColumnAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.DisplayColumnAttribute System.ComponentModel.DataAnnotations.DisplayColumnAttribute
CS.System.ComponentModel.DataAnnotations.DisplayColumnAttribute = System.ComponentModel.DataAnnotations.DisplayColumnAttribute

---@overload fun(displayColumn: string) : System.ComponentModel.DataAnnotations.DisplayColumnAttribute
---@overload fun(displayColumn: string, sortColumn: string) : System.ComponentModel.DataAnnotations.DisplayColumnAttribute
---@param displayColumn string
---@param sortColumn string
---@param sortDescending boolean
---@return System.ComponentModel.DataAnnotations.DisplayColumnAttribute
function System.ComponentModel.DataAnnotations.DisplayColumnAttribute.New(displayColumn, sortColumn, sortDescending) end

---@class System.ComponentModel.DataAnnotations.DisplayFormatAttribute : System.Attribute
---@field DataFormatString string
---@field NullDisplayText string
---@field ConvertEmptyStringToNull boolean
---@field ApplyFormatInEditMode boolean
---@field HtmlEncode boolean
System.ComponentModel.DataAnnotations.DisplayFormatAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.DisplayFormatAttribute System.ComponentModel.DataAnnotations.DisplayFormatAttribute
CS.System.ComponentModel.DataAnnotations.DisplayFormatAttribute = System.ComponentModel.DataAnnotations.DisplayFormatAttribute

---@return System.ComponentModel.DataAnnotations.DisplayFormatAttribute
function System.ComponentModel.DataAnnotations.DisplayFormatAttribute.New() end

---@class System.ComponentModel.DataAnnotations.EditableAttribute : System.Attribute
---@field AllowEdit boolean
---@field AllowInitialValue boolean
System.ComponentModel.DataAnnotations.EditableAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.EditableAttribute System.ComponentModel.DataAnnotations.EditableAttribute
CS.System.ComponentModel.DataAnnotations.EditableAttribute = System.ComponentModel.DataAnnotations.EditableAttribute

---@param allowEdit boolean
---@return System.ComponentModel.DataAnnotations.EditableAttribute
function System.ComponentModel.DataAnnotations.EditableAttribute.New(allowEdit) end

---@class System.ComponentModel.DataAnnotations.EmailAddressAttribute : System.ComponentModel.DataAnnotations.DataTypeAttribute
System.ComponentModel.DataAnnotations.EmailAddressAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.EmailAddressAttribute System.ComponentModel.DataAnnotations.EmailAddressAttribute
CS.System.ComponentModel.DataAnnotations.EmailAddressAttribute = System.ComponentModel.DataAnnotations.EmailAddressAttribute

---@return System.ComponentModel.DataAnnotations.EmailAddressAttribute
function System.ComponentModel.DataAnnotations.EmailAddressAttribute.New() end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.EmailAddressAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.EnumDataTypeAttribute : System.ComponentModel.DataAnnotations.DataTypeAttribute
---@field EnumType System.Type
System.ComponentModel.DataAnnotations.EnumDataTypeAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.EnumDataTypeAttribute System.ComponentModel.DataAnnotations.EnumDataTypeAttribute
CS.System.ComponentModel.DataAnnotations.EnumDataTypeAttribute = System.ComponentModel.DataAnnotations.EnumDataTypeAttribute

---@param enumType System.Type
---@return System.ComponentModel.DataAnnotations.EnumDataTypeAttribute
function System.ComponentModel.DataAnnotations.EnumDataTypeAttribute.New(enumType) end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.EnumDataTypeAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.FileExtensionsAttribute : System.ComponentModel.DataAnnotations.DataTypeAttribute
---@field Extensions string
System.ComponentModel.DataAnnotations.FileExtensionsAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.FileExtensionsAttribute System.ComponentModel.DataAnnotations.FileExtensionsAttribute
CS.System.ComponentModel.DataAnnotations.FileExtensionsAttribute = System.ComponentModel.DataAnnotations.FileExtensionsAttribute

---@return System.ComponentModel.DataAnnotations.FileExtensionsAttribute
function System.ComponentModel.DataAnnotations.FileExtensionsAttribute.New() end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.FileExtensionsAttribute:FormatErrorMessage(name) end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.FileExtensionsAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.FilterUIHintAttribute : System.Attribute
---@field FilterUIHint string
---@field PresentationLayer string
---@field ControlParameters System.Collections.Generic.IDictionary
---@field TypeId System.Object
System.ComponentModel.DataAnnotations.FilterUIHintAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.FilterUIHintAttribute System.ComponentModel.DataAnnotations.FilterUIHintAttribute
CS.System.ComponentModel.DataAnnotations.FilterUIHintAttribute = System.ComponentModel.DataAnnotations.FilterUIHintAttribute

---@overload fun(filterUIHint: string) : System.ComponentModel.DataAnnotations.FilterUIHintAttribute
---@overload fun(filterUIHint: string, presentationLayer: string) : System.ComponentModel.DataAnnotations.FilterUIHintAttribute
---@param filterUIHint string
---@param presentationLayer string
---@param controlParameters System.Object[]
---@return System.ComponentModel.DataAnnotations.FilterUIHintAttribute
function System.ComponentModel.DataAnnotations.FilterUIHintAttribute.New(filterUIHint, presentationLayer, controlParameters) end
---@return number
function System.ComponentModel.DataAnnotations.FilterUIHintAttribute:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.FilterUIHintAttribute:Equals(obj) end

---@class System.ComponentModel.DataAnnotations.IValidatableObject
System.ComponentModel.DataAnnotations.IValidatableObject = {}
---@alias CS.System.ComponentModel.DataAnnotations.IValidatableObject System.ComponentModel.DataAnnotations.IValidatableObject
CS.System.ComponentModel.DataAnnotations.IValidatableObject = System.ComponentModel.DataAnnotations.IValidatableObject

---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
---@return System.Collections.Generic.IEnumerable
function System.ComponentModel.DataAnnotations.IValidatableObject:Validate(validationContext) end

---@class System.ComponentModel.DataAnnotations.KeyAttribute : System.Attribute
System.ComponentModel.DataAnnotations.KeyAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.KeyAttribute System.ComponentModel.DataAnnotations.KeyAttribute
CS.System.ComponentModel.DataAnnotations.KeyAttribute = System.ComponentModel.DataAnnotations.KeyAttribute

---@return System.ComponentModel.DataAnnotations.KeyAttribute
function System.ComponentModel.DataAnnotations.KeyAttribute.New() end

---@class System.ComponentModel.DataAnnotations.LocalizableString : System.Object
---@field Value string
---@field ResourceType System.Type
System.ComponentModel.DataAnnotations.LocalizableString = {}
---@alias CS.System.ComponentModel.DataAnnotations.LocalizableString System.ComponentModel.DataAnnotations.LocalizableString
CS.System.ComponentModel.DataAnnotations.LocalizableString = System.ComponentModel.DataAnnotations.LocalizableString

---@param propertyName string
---@return System.ComponentModel.DataAnnotations.LocalizableString
function System.ComponentModel.DataAnnotations.LocalizableString.New(propertyName) end
---@return string
function System.ComponentModel.DataAnnotations.LocalizableString:GetLocalizableValue() end

---@class System.ComponentModel.DataAnnotations.MaxLengthAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field Length number
System.ComponentModel.DataAnnotations.MaxLengthAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.MaxLengthAttribute System.ComponentModel.DataAnnotations.MaxLengthAttribute
CS.System.ComponentModel.DataAnnotations.MaxLengthAttribute = System.ComponentModel.DataAnnotations.MaxLengthAttribute

---@overload fun(length: number) : System.ComponentModel.DataAnnotations.MaxLengthAttribute
---@return System.ComponentModel.DataAnnotations.MaxLengthAttribute
function System.ComponentModel.DataAnnotations.MaxLengthAttribute.New() end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.MaxLengthAttribute:IsValid(value) end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.MaxLengthAttribute:FormatErrorMessage(name) end

---@class System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper : System.ComponentModel.PropertyDescriptor
---@field ComponentType System.Type
---@field IsReadOnly boolean
---@field PropertyType System.Type
---@field SupportsChangeEvents boolean
System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper = {}
---@alias CS.System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper
CS.System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper = System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper

---@param descriptor System.ComponentModel.PropertyDescriptor
---@param newAttributes System.Attribute[]
---@return System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper.New(descriptor, newAttributes) end
---@param component System.Object
---@param handler System.EventHandler
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper:AddValueChanged(component, handler) end
---@param component System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper:CanResetValue(component) end
---@param component System.Object
---@return System.Object
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper:GetValue(component) end
---@param component System.Object
---@param handler System.EventHandler
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper:RemoveValueChanged(component, handler) end
---@param component System.Object
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper:ResetValue(component) end
---@param component System.Object
---@param value System.Object
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper:SetValue(component, value) end
---@param component System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.MetadataPropertyDescriptorWrapper:ShouldSerializeValue(component) end

---@class System.ComponentModel.DataAnnotations.MetadataTypeAttribute : System.Attribute
---@field MetadataClassType System.Type
System.ComponentModel.DataAnnotations.MetadataTypeAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.MetadataTypeAttribute System.ComponentModel.DataAnnotations.MetadataTypeAttribute
CS.System.ComponentModel.DataAnnotations.MetadataTypeAttribute = System.ComponentModel.DataAnnotations.MetadataTypeAttribute

---@param metadataClassType System.Type
---@return System.ComponentModel.DataAnnotations.MetadataTypeAttribute
function System.ComponentModel.DataAnnotations.MetadataTypeAttribute.New(metadataClassType) end

---@class System.ComponentModel.DataAnnotations.MinLengthAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field Length number
System.ComponentModel.DataAnnotations.MinLengthAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.MinLengthAttribute System.ComponentModel.DataAnnotations.MinLengthAttribute
CS.System.ComponentModel.DataAnnotations.MinLengthAttribute = System.ComponentModel.DataAnnotations.MinLengthAttribute

---@param length number
---@return System.ComponentModel.DataAnnotations.MinLengthAttribute
function System.ComponentModel.DataAnnotations.MinLengthAttribute.New(length) end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.MinLengthAttribute:IsValid(value) end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.MinLengthAttribute:FormatErrorMessage(name) end

---@class System.ComponentModel.DataAnnotations.PhoneAttribute : System.ComponentModel.DataAnnotations.DataTypeAttribute
System.ComponentModel.DataAnnotations.PhoneAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.PhoneAttribute System.ComponentModel.DataAnnotations.PhoneAttribute
CS.System.ComponentModel.DataAnnotations.PhoneAttribute = System.ComponentModel.DataAnnotations.PhoneAttribute

---@return System.ComponentModel.DataAnnotations.PhoneAttribute
function System.ComponentModel.DataAnnotations.PhoneAttribute.New() end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.PhoneAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.RangeAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field Minimum System.Object
---@field Maximum System.Object
---@field OperandType System.Type
System.ComponentModel.DataAnnotations.RangeAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.RangeAttribute System.ComponentModel.DataAnnotations.RangeAttribute
CS.System.ComponentModel.DataAnnotations.RangeAttribute = System.ComponentModel.DataAnnotations.RangeAttribute

---@overload fun(minimum: number, maximum: number) : System.ComponentModel.DataAnnotations.RangeAttribute
---@overload fun(minimum: number, maximum: number) : System.ComponentModel.DataAnnotations.RangeAttribute
---@param type System.Type
---@param minimum string
---@param maximum string
---@return System.ComponentModel.DataAnnotations.RangeAttribute
function System.ComponentModel.DataAnnotations.RangeAttribute.New(type, minimum, maximum) end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.RangeAttribute:IsValid(value) end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.RangeAttribute:FormatErrorMessage(name) end

---@class System.ComponentModel.DataAnnotations.RegularExpressionAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field Pattern string
---@field MatchTimeoutInMilliseconds number
System.ComponentModel.DataAnnotations.RegularExpressionAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.RegularExpressionAttribute System.ComponentModel.DataAnnotations.RegularExpressionAttribute
CS.System.ComponentModel.DataAnnotations.RegularExpressionAttribute = System.ComponentModel.DataAnnotations.RegularExpressionAttribute

---@param pattern string
---@return System.ComponentModel.DataAnnotations.RegularExpressionAttribute
function System.ComponentModel.DataAnnotations.RegularExpressionAttribute.New(pattern) end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.RegularExpressionAttribute:IsValid(value) end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.RegularExpressionAttribute:FormatErrorMessage(name) end

---@class System.ComponentModel.DataAnnotations.RequiredAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field AllowEmptyStrings boolean
System.ComponentModel.DataAnnotations.RequiredAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.RequiredAttribute System.ComponentModel.DataAnnotations.RequiredAttribute
CS.System.ComponentModel.DataAnnotations.RequiredAttribute = System.ComponentModel.DataAnnotations.RequiredAttribute

---@return System.ComponentModel.DataAnnotations.RequiredAttribute
function System.ComponentModel.DataAnnotations.RequiredAttribute.New() end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.RequiredAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute : System.Attribute
---@field Scaffold boolean
System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute
CS.System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute = System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute

---@param scaffold boolean
---@return System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute
function System.ComponentModel.DataAnnotations.ScaffoldColumnAttribute.New(scaffold) end

---@class System.ComponentModel.DataAnnotations.ScaffoldTableAttribute : System.Attribute
---@field Scaffold boolean
System.ComponentModel.DataAnnotations.ScaffoldTableAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.ScaffoldTableAttribute System.ComponentModel.DataAnnotations.ScaffoldTableAttribute
CS.System.ComponentModel.DataAnnotations.ScaffoldTableAttribute = System.ComponentModel.DataAnnotations.ScaffoldTableAttribute

---@param scaffold boolean
---@return System.ComponentModel.DataAnnotations.ScaffoldTableAttribute
function System.ComponentModel.DataAnnotations.ScaffoldTableAttribute.New(scaffold) end

---@class System.ComponentModel.DataAnnotations.StringLengthAttribute : System.ComponentModel.DataAnnotations.ValidationAttribute
---@field MaximumLength number
---@field MinimumLength number
System.ComponentModel.DataAnnotations.StringLengthAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.StringLengthAttribute System.ComponentModel.DataAnnotations.StringLengthAttribute
CS.System.ComponentModel.DataAnnotations.StringLengthAttribute = System.ComponentModel.DataAnnotations.StringLengthAttribute

---@param maximumLength number
---@return System.ComponentModel.DataAnnotations.StringLengthAttribute
function System.ComponentModel.DataAnnotations.StringLengthAttribute.New(maximumLength) end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.StringLengthAttribute:IsValid(value) end
---@param name string
---@return string
function System.ComponentModel.DataAnnotations.StringLengthAttribute:FormatErrorMessage(name) end

---@class System.ComponentModel.DataAnnotations.TimestampAttribute : System.Attribute
System.ComponentModel.DataAnnotations.TimestampAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.TimestampAttribute System.ComponentModel.DataAnnotations.TimestampAttribute
CS.System.ComponentModel.DataAnnotations.TimestampAttribute = System.ComponentModel.DataAnnotations.TimestampAttribute

---@return System.ComponentModel.DataAnnotations.TimestampAttribute
function System.ComponentModel.DataAnnotations.TimestampAttribute.New() end

---@class System.ComponentModel.DataAnnotations.UIHintAttribute : System.Attribute
---@field UIHint string
---@field PresentationLayer string
---@field ControlParameters System.Collections.Generic.IDictionary
---@field TypeId System.Object
System.ComponentModel.DataAnnotations.UIHintAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.UIHintAttribute System.ComponentModel.DataAnnotations.UIHintAttribute
CS.System.ComponentModel.DataAnnotations.UIHintAttribute = System.ComponentModel.DataAnnotations.UIHintAttribute

---@overload fun(uiHint: string) : System.ComponentModel.DataAnnotations.UIHintAttribute
---@overload fun(uiHint: string, presentationLayer: string) : System.ComponentModel.DataAnnotations.UIHintAttribute
---@param uiHint string
---@param presentationLayer string
---@param controlParameters System.Object[]
---@return System.ComponentModel.DataAnnotations.UIHintAttribute
function System.ComponentModel.DataAnnotations.UIHintAttribute.New(uiHint, presentationLayer, controlParameters) end
---@return number
function System.ComponentModel.DataAnnotations.UIHintAttribute:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.UIHintAttribute:Equals(obj) end

---@class System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation : System.Object
---@field UIHint string
---@field PresentationLayer string
---@field ControlParameters System.Collections.Generic.IDictionary
System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation = {}
---@alias CS.System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation
CS.System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation = System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation

---@param uiHint string
---@param presentationLayer string
---@param controlParameters System.Object[]
---@return System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation
function System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation.New(uiHint, presentationLayer, controlParameters) end
---@return number
function System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.UIHintAttribute.UIHintImplementation:Equals(obj) end

---@class System.ComponentModel.DataAnnotations.UrlAttribute : System.ComponentModel.DataAnnotations.DataTypeAttribute
System.ComponentModel.DataAnnotations.UrlAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.UrlAttribute System.ComponentModel.DataAnnotations.UrlAttribute
CS.System.ComponentModel.DataAnnotations.UrlAttribute = System.ComponentModel.DataAnnotations.UrlAttribute

---@return System.ComponentModel.DataAnnotations.UrlAttribute
function System.ComponentModel.DataAnnotations.UrlAttribute.New() end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.UrlAttribute:IsValid(value) end

---@class System.ComponentModel.DataAnnotations.ValidationAttribute : System.Attribute
---@field RequiresValidationContext boolean
---@field ErrorMessage string
---@field ErrorMessageResourceName string
---@field ErrorMessageResourceType System.Type
System.ComponentModel.DataAnnotations.ValidationAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationAttribute System.ComponentModel.DataAnnotations.ValidationAttribute
CS.System.ComponentModel.DataAnnotations.ValidationAttribute = System.ComponentModel.DataAnnotations.ValidationAttribute

---@param name string
---@return string
function System.ComponentModel.DataAnnotations.ValidationAttribute:FormatErrorMessage(name) end
---@param value System.Object
---@return boolean
function System.ComponentModel.DataAnnotations.ValidationAttribute:IsValid(value) end
---@param value System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
---@return System.ComponentModel.DataAnnotations.ValidationResult
function System.ComponentModel.DataAnnotations.ValidationAttribute:GetValidationResult(value, validationContext) end
---@overload fun(self: System.ComponentModel.DataAnnotations.ValidationAttribute, value: System.Object, name: string)
---@param value System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
function System.ComponentModel.DataAnnotations.ValidationAttribute:Validate(value, validationContext) end

---@class System.ComponentModel.DataAnnotations.ValidationAttributeStore : System.Object
System.ComponentModel.DataAnnotations.ValidationAttributeStore = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore System.ComponentModel.DataAnnotations.ValidationAttributeStore
CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore = System.ComponentModel.DataAnnotations.ValidationAttributeStore

---@return System.ComponentModel.DataAnnotations.ValidationAttributeStore
function System.ComponentModel.DataAnnotations.ValidationAttributeStore.New() end

---@class System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem : System.Object
System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem
CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem = System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem


---@class System.ComponentModel.DataAnnotations.ValidationAttributeStore.TypeStoreItem : System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem
System.ComponentModel.DataAnnotations.ValidationAttributeStore.TypeStoreItem = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore.TypeStoreItem System.ComponentModel.DataAnnotations.ValidationAttributeStore.TypeStoreItem
CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore.TypeStoreItem = System.ComponentModel.DataAnnotations.ValidationAttributeStore.TypeStoreItem

---@param propertyDescriptor System.ComponentModel.PropertyDescriptor
---@return System.ComponentModel.AttributeCollection
function System.ComponentModel.DataAnnotations.ValidationAttributeStore.TypeStoreItem.GetExplicitAttributes(propertyDescriptor) end

---@class System.ComponentModel.DataAnnotations.ValidationAttributeStore.PropertyStoreItem : System.ComponentModel.DataAnnotations.ValidationAttributeStore.StoreItem
System.ComponentModel.DataAnnotations.ValidationAttributeStore.PropertyStoreItem = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore.PropertyStoreItem System.ComponentModel.DataAnnotations.ValidationAttributeStore.PropertyStoreItem
CS.System.ComponentModel.DataAnnotations.ValidationAttributeStore.PropertyStoreItem = System.ComponentModel.DataAnnotations.ValidationAttributeStore.PropertyStoreItem


---@class System.ComponentModel.DataAnnotations.ValidationContext : System.Object
---@field ObjectInstance System.Object
---@field ObjectType System.Type
---@field DisplayName string
---@field MemberName string
---@field Items System.Collections.Generic.IDictionary
---@field ServiceContainer System.ComponentModel.Design.IServiceContainer
System.ComponentModel.DataAnnotations.ValidationContext = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationContext System.ComponentModel.DataAnnotations.ValidationContext
CS.System.ComponentModel.DataAnnotations.ValidationContext = System.ComponentModel.DataAnnotations.ValidationContext

---@overload fun(instance: System.Object) : System.ComponentModel.DataAnnotations.ValidationContext
---@overload fun(instance: System.Object, items: System.Collections.Generic.IDictionary) : System.ComponentModel.DataAnnotations.ValidationContext
---@param instance System.Object
---@param serviceProvider System.IServiceProvider
---@param items System.Collections.Generic.IDictionary
---@return System.ComponentModel.DataAnnotations.ValidationContext
function System.ComponentModel.DataAnnotations.ValidationContext.New(instance, serviceProvider, items) end
---@param serviceProvider System.Func
function System.ComponentModel.DataAnnotations.ValidationContext:InitializeServiceProvider(serviceProvider) end
---@param serviceType System.Type
---@return System.Object
function System.ComponentModel.DataAnnotations.ValidationContext:GetService(serviceType) end

---@class System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer : System.Object
System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer
CS.System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer = System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer

---@overload fun(self: System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer, serviceType: System.Type, callback: System.ComponentModel.Design.ServiceCreatorCallback, promote: boolean)
---@overload fun(self: System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer, serviceType: System.Type, callback: System.ComponentModel.Design.ServiceCreatorCallback)
---@overload fun(self: System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer, serviceType: System.Type, serviceInstance: System.Object, promote: boolean)
---@param serviceType System.Type
---@param serviceInstance System.Object
function System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer:AddService(serviceType, serviceInstance) end
---@overload fun(self: System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer, serviceType: System.Type, promote: boolean)
---@param serviceType System.Type
function System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer:RemoveService(serviceType) end
---@param serviceType System.Type
---@return System.Object
function System.ComponentModel.DataAnnotations.ValidationContext.ValidationContextServiceContainer:GetService(serviceType) end

---@class System.ComponentModel.DataAnnotations.ValidationException : System.Exception
---@field ValidationAttribute System.ComponentModel.DataAnnotations.ValidationAttribute
---@field ValidationResult System.ComponentModel.DataAnnotations.ValidationResult
---@field Value System.Object
System.ComponentModel.DataAnnotations.ValidationException = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationException System.ComponentModel.DataAnnotations.ValidationException
CS.System.ComponentModel.DataAnnotations.ValidationException = System.ComponentModel.DataAnnotations.ValidationException

---@overload fun(validationResult: System.ComponentModel.DataAnnotations.ValidationResult, validatingAttribute: System.ComponentModel.DataAnnotations.ValidationAttribute, value: System.Object) : System.ComponentModel.DataAnnotations.ValidationException
---@overload fun(errorMessage: string, validatingAttribute: System.ComponentModel.DataAnnotations.ValidationAttribute, value: System.Object) : System.ComponentModel.DataAnnotations.ValidationException
---@overload fun() : System.ComponentModel.DataAnnotations.ValidationException
---@overload fun(message: string) : System.ComponentModel.DataAnnotations.ValidationException
---@param message string
---@param innerException System.Exception
---@return System.ComponentModel.DataAnnotations.ValidationException
function System.ComponentModel.DataAnnotations.ValidationException.New(message, innerException) end

---@class System.ComponentModel.DataAnnotations.ValidationResult : System.Object
---@field Success System.ComponentModel.DataAnnotations.ValidationResult
---@field MemberNames System.Collections.Generic.IEnumerable
---@field ErrorMessage string
System.ComponentModel.DataAnnotations.ValidationResult = {}
---@alias CS.System.ComponentModel.DataAnnotations.ValidationResult System.ComponentModel.DataAnnotations.ValidationResult
CS.System.ComponentModel.DataAnnotations.ValidationResult = System.ComponentModel.DataAnnotations.ValidationResult

---@overload fun(errorMessage: string) : System.ComponentModel.DataAnnotations.ValidationResult
---@param errorMessage string
---@param memberNames System.Collections.Generic.IEnumerable
---@return System.ComponentModel.DataAnnotations.ValidationResult
function System.ComponentModel.DataAnnotations.ValidationResult.New(errorMessage, memberNames) end
---@return string
function System.ComponentModel.DataAnnotations.ValidationResult:ToString() end

---@class System.ComponentModel.DataAnnotations.Validator : System.Object
System.ComponentModel.DataAnnotations.Validator = {}
---@alias CS.System.ComponentModel.DataAnnotations.Validator System.ComponentModel.DataAnnotations.Validator
CS.System.ComponentModel.DataAnnotations.Validator = System.ComponentModel.DataAnnotations.Validator

---@param value System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
---@param validationResults System.Collections.Generic.ICollection
---@return boolean
function System.ComponentModel.DataAnnotations.Validator.TryValidateProperty(value, validationContext, validationResults) end
---@overload fun(instance: System.Object, validationContext: System.ComponentModel.DataAnnotations.ValidationContext, validationResults: System.Collections.Generic.ICollection) : boolean
---@param instance System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
---@param validationResults System.Collections.Generic.ICollection
---@param validateAllProperties boolean
---@return boolean
function System.ComponentModel.DataAnnotations.Validator.TryValidateObject(instance, validationContext, validationResults, validateAllProperties) end
---@param value System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
---@param validationResults System.Collections.Generic.ICollection
---@param validationAttributes System.Collections.Generic.IEnumerable
---@return boolean
function System.ComponentModel.DataAnnotations.Validator.TryValidateValue(value, validationContext, validationResults, validationAttributes) end
---@param value System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
function System.ComponentModel.DataAnnotations.Validator.ValidateProperty(value, validationContext) end
---@overload fun(instance: System.Object, validationContext: System.ComponentModel.DataAnnotations.ValidationContext)
---@param instance System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
---@param validateAllProperties boolean
function System.ComponentModel.DataAnnotations.Validator.ValidateObject(instance, validationContext, validateAllProperties) end
---@param value System.Object
---@param validationContext System.ComponentModel.DataAnnotations.ValidationContext
---@param validationAttributes System.Collections.Generic.IEnumerable
function System.ComponentModel.DataAnnotations.Validator.ValidateValue(value, validationContext, validationAttributes) end

---@class System.ComponentModel.DataAnnotations.Validator.ValidationError : System.Object
System.ComponentModel.DataAnnotations.Validator.ValidationError = {}
---@alias CS.System.ComponentModel.DataAnnotations.Validator.ValidationError System.ComponentModel.DataAnnotations.Validator.ValidationError
CS.System.ComponentModel.DataAnnotations.Validator.ValidationError = System.ComponentModel.DataAnnotations.Validator.ValidationError


---@class System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources : System.Object
---@field AssociatedMetadataTypeTypeDescriptor_MetadataTypeContainsUnknownProperties string
---@field AttributeStore_Type_Must_Be_Public string
---@field AttributeStore_Unknown_Method string
---@field AttributeStore_Unknown_Property string
---@field CustomValidationAttribute_Method_Must_Return_ValidationResult string
---@field CustomValidationAttribute_Method_Not_Found string
---@field CustomValidationAttribute_Method_Required string
---@field CustomValidationAttribute_Method_Signature string
---@field CustomValidationAttribute_Type_Must_Be_Public string
---@field CustomValidationAttribute_ValidationError string
---@field CustomValidationAttribute_ValidatorType_Required string
---@field DataTypeAttribute_EmptyDataTypeString string
---@field LocalizableString_LocalizationFailed string
---@field Validator_Property_Value_Wrong_Type string
---@field RangeAttribute_ArbitraryTypeNotIComparable string
---@field RangeAttribute_MinGreaterThanMax string
---@field RangeAttribute_Must_Set_Min_And_Max string
---@field RangeAttribute_Must_Set_Operand_Type string
---@field RangeAttribute_ValidationError string
---@field RegexAttribute_ValidationError string
---@field RegularExpressionAttribute_Empty_Pattern string
---@field RequiredAttribute_ValidationError string
---@field StringLengthAttribute_InvalidMaxLength string
---@field StringLengthAttribute_ValidationError string
---@field UIHintImplementation_ControlParameterKeyIsNotAString string
---@field UIHintImplementation_ControlParameterKeyIsNull string
---@field UIHintImplementation_NeedEvenNumberOfControlParameters string
---@field UIHintImplementation_ControlParameterKeyOccursMoreThanOnce string
---@field ValidationAttribute_Cannot_Set_ErrorMessage_And_Resource string
---@field ValidationAttribute_NeedBothResourceTypeAndResourceName string
---@field ValidationAttribute_ResourcePropertyNotStringType string
---@field ValidationAttribute_ResourceTypeDoesNotHaveProperty string
---@field ValidationAttribute_ValidationError string
---@field ValidationContext_Must_Be_Method string
---@field EnumDataTypeAttribute_TypeNeedsToBeAnEnum string
---@field EnumDataTypeAttribute_TypeCannotBeNull string
---@field MetadataTypeAttribute_TypeCannotBeNull string
---@field DisplayAttribute_PropertyNotSet string
---@field ValidationContextServiceContainer_ItemAlreadyExists string
---@field Validator_InstanceMustMatchValidationContextInstance string
---@field ValidationAttribute_IsValid_NotImplemented string
---@field CustomValidationAttribute_Type_Conversion_Failed string
---@field StringLengthAttribute_ValidationErrorIncludingMinimum string
---@field CreditCardAttribute_Invalid string
---@field EmailAddressAttribute_Invalid string
---@field FileExtensionsAttribute_Invalid string
---@field UrlAttribute_Invalid string
---@field CompareAttribute_MustMatch string
---@field Common_NullOrEmpty string
---@field CompareAttribute_UnknownProperty string
---@field Common_PropertyNotFound string
---@field PhoneAttribute_Invalid string
---@field MaxLengthAttribute_InvalidMaxLength string
---@field MaxLengthAttribute_ValidationError string
---@field MinLengthAttribute_InvalidMinLength string
---@field MinLengthAttribute_ValidationError string
---@field ArgumentIsNullOrWhitespace string
---@field LengthAttribute_InvalidValueType string
System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources = {}
---@alias CS.System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources
CS.System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources = System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources

---@return System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources
function System.ComponentModel.DataAnnotations.Resources.DataAnnotationsResources.New() end

---@class System.ComponentModel.DataAnnotations.Schema.ColumnAttribute : System.Attribute
---@field Name string
---@field Order number
---@field TypeName string
System.ComponentModel.DataAnnotations.Schema.ColumnAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.ColumnAttribute System.ComponentModel.DataAnnotations.Schema.ColumnAttribute
CS.System.ComponentModel.DataAnnotations.Schema.ColumnAttribute = System.ComponentModel.DataAnnotations.Schema.ColumnAttribute

---@overload fun() : System.ComponentModel.DataAnnotations.Schema.ColumnAttribute
---@param name string
---@return System.ComponentModel.DataAnnotations.Schema.ColumnAttribute
function System.ComponentModel.DataAnnotations.Schema.ColumnAttribute.New(name) end

---@class System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute : System.Attribute
System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute
CS.System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute = System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute

---@return System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute
function System.ComponentModel.DataAnnotations.Schema.ComplexTypeAttribute.New() end

---@class System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute : System.Attribute
---@field DatabaseGeneratedOption System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption
System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute
CS.System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute = System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute

---@param databaseGeneratedOption System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption
---@return System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute
function System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedAttribute.New(databaseGeneratedOption) end

---@class System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption
---@field None System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption
---@field Identity System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption
---@field Computed System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption
System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption
CS.System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption = System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption


---@class System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute : System.Attribute
---@field Name string
System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute
CS.System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute = System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute

---@param name string
---@return System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute
function System.ComponentModel.DataAnnotations.Schema.ForeignKeyAttribute.New(name) end

---@class System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute : System.Attribute
---@field Property string
System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute
CS.System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute = System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute

---@param property string
---@return System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute
function System.ComponentModel.DataAnnotations.Schema.InversePropertyAttribute.New(property) end

---@class System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute : System.Attribute
System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute
CS.System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute = System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute

---@return System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute
function System.ComponentModel.DataAnnotations.Schema.NotMappedAttribute.New() end

---@class System.ComponentModel.DataAnnotations.Schema.TableAttribute : System.Attribute
---@field Name string
---@field Schema string
System.ComponentModel.DataAnnotations.Schema.TableAttribute = {}
---@alias CS.System.ComponentModel.DataAnnotations.Schema.TableAttribute System.ComponentModel.DataAnnotations.Schema.TableAttribute
CS.System.ComponentModel.DataAnnotations.Schema.TableAttribute = System.ComponentModel.DataAnnotations.Schema.TableAttribute

---@param name string
---@return System.ComponentModel.DataAnnotations.Schema.TableAttribute
function System.ComponentModel.DataAnnotations.Schema.TableAttribute.New(name) end

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


---@class System.InvariantComparer : System.Object
System.InvariantComparer = {}
---@alias CS.System.InvariantComparer System.InvariantComparer
CS.System.InvariantComparer = System.InvariantComparer

---@param a System.Object
---@param b System.Object
---@return number
function System.InvariantComparer:Compare(a, b) end

---@class System.Configuration.PrivilegedConfigurationManager : System.Object
System.Configuration.PrivilegedConfigurationManager = {}
---@alias CS.System.Configuration.PrivilegedConfigurationManager System.Configuration.PrivilegedConfigurationManager
CS.System.Configuration.PrivilegedConfigurationManager = System.Configuration.PrivilegedConfigurationManager


---@class System.Web.Services.PartialTrustHelpers : System.Object
System.Web.Services.PartialTrustHelpers = {}
---@alias CS.System.Web.Services.PartialTrustHelpers System.Web.Services.PartialTrustHelpers
CS.System.Web.Services.PartialTrustHelpers = System.Web.Services.PartialTrustHelpers


---@class System.Web.Services.Soap : System.Object
System.Web.Services.Soap = {}
---@alias CS.System.Web.Services.Soap System.Web.Services.Soap
CS.System.Web.Services.Soap = System.Web.Services.Soap


---@class System.Web.Services.Soap.Attribute : System.Object
System.Web.Services.Soap.Attribute = {}
---@alias CS.System.Web.Services.Soap.Attribute System.Web.Services.Soap.Attribute
CS.System.Web.Services.Soap.Attribute = System.Web.Services.Soap.Attribute


---@class System.Web.Services.Soap.Element : System.Object
System.Web.Services.Soap.Element = {}
---@alias CS.System.Web.Services.Soap.Element System.Web.Services.Soap.Element
CS.System.Web.Services.Soap.Element = System.Web.Services.Soap.Element


---@class System.Web.Services.Soap.Code : System.Object
System.Web.Services.Soap.Code = {}
---@alias CS.System.Web.Services.Soap.Code System.Web.Services.Soap.Code
CS.System.Web.Services.Soap.Code = System.Web.Services.Soap.Code


---@class System.Web.Services.Soap12 : System.Object
System.Web.Services.Soap12 = {}
---@alias CS.System.Web.Services.Soap12 System.Web.Services.Soap12
CS.System.Web.Services.Soap12 = System.Web.Services.Soap12


---@class System.Web.Services.Soap12.Attribute : System.Object
System.Web.Services.Soap12.Attribute = {}
---@alias CS.System.Web.Services.Soap12.Attribute System.Web.Services.Soap12.Attribute
CS.System.Web.Services.Soap12.Attribute = System.Web.Services.Soap12.Attribute


---@class System.Web.Services.Soap12.Element : System.Object
System.Web.Services.Soap12.Element = {}
---@alias CS.System.Web.Services.Soap12.Element System.Web.Services.Soap12.Element
CS.System.Web.Services.Soap12.Element = System.Web.Services.Soap12.Element


---@class System.Web.Services.Soap12.Code : System.Object
System.Web.Services.Soap12.Code = {}
---@alias CS.System.Web.Services.Soap12.Code System.Web.Services.Soap12.Code
CS.System.Web.Services.Soap12.Code = System.Web.Services.Soap12.Code


---@class System.Web.Services.WebMethodAttribute : System.Attribute
---@field Description string
---@field EnableSession boolean
---@field CacheDuration number
---@field BufferResponse boolean
---@field TransactionOption System.EnterpriseServices.TransactionOption
---@field MessageName string
System.Web.Services.WebMethodAttribute = {}
---@alias CS.System.Web.Services.WebMethodAttribute System.Web.Services.WebMethodAttribute
CS.System.Web.Services.WebMethodAttribute = System.Web.Services.WebMethodAttribute

---@overload fun() : System.Web.Services.WebMethodAttribute
---@overload fun(enableSession: boolean) : System.Web.Services.WebMethodAttribute
---@overload fun(enableSession: boolean, transactionOption: System.EnterpriseServices.TransactionOption) : System.Web.Services.WebMethodAttribute
---@overload fun(enableSession: boolean, transactionOption: System.EnterpriseServices.TransactionOption, cacheDuration: number) : System.Web.Services.WebMethodAttribute
---@param enableSession boolean
---@param transactionOption System.EnterpriseServices.TransactionOption
---@param cacheDuration number
---@param bufferResponse boolean
---@return System.Web.Services.WebMethodAttribute
function System.Web.Services.WebMethodAttribute.New(enableSession, transactionOption, cacheDuration, bufferResponse) end

---@class System.Web.Services.WebMethodReflector : System.Object
System.Web.Services.WebMethodReflector = {}
---@alias CS.System.Web.Services.WebMethodReflector System.Web.Services.WebMethodReflector
CS.System.Web.Services.WebMethodReflector = System.Web.Services.WebMethodReflector


---@class System.Web.Services.WebMethod : System.Object
System.Web.Services.WebMethod = {}
---@alias CS.System.Web.Services.WebMethod System.Web.Services.WebMethod
CS.System.Web.Services.WebMethod = System.Web.Services.WebMethod


---@class System.Web.Services.WebService : System.ComponentModel.MarshalByValueComponent
---@field Application System.Web.HttpApplicationState
---@field Context System.Web.HttpContext
---@field Session System.Web.SessionState.HttpSessionState
---@field Server System.Web.HttpServerUtility
---@field User System.Security.Principal.IPrincipal
---@field SoapVersion System.Web.Services.Protocols.SoapProtocolVersion
System.Web.Services.WebService = {}
---@alias CS.System.Web.Services.WebService System.Web.Services.WebService
CS.System.Web.Services.WebService = System.Web.Services.WebService

---@return System.Web.Services.WebService
function System.Web.Services.WebService.New() end

---@class System.Web.Services.WebServiceAttribute : System.Attribute
---@field DefaultNamespace string
---@field Description string
---@field Namespace string
---@field Name string
System.Web.Services.WebServiceAttribute = {}
---@alias CS.System.Web.Services.WebServiceAttribute System.Web.Services.WebServiceAttribute
CS.System.Web.Services.WebServiceAttribute = System.Web.Services.WebServiceAttribute

---@return System.Web.Services.WebServiceAttribute
function System.Web.Services.WebServiceAttribute.New() end

---@class System.Web.Services.WebServiceReflector : System.Object
System.Web.Services.WebServiceReflector = {}
---@alias CS.System.Web.Services.WebServiceReflector System.Web.Services.WebServiceReflector
CS.System.Web.Services.WebServiceReflector = System.Web.Services.WebServiceReflector


---@class System.Web.Services.WebServiceBindingAttribute : System.Attribute
---@field ConformsTo System.Web.Services.WsiProfiles
---@field EmitConformanceClaims boolean
---@field Location string
---@field Name string
---@field Namespace string
System.Web.Services.WebServiceBindingAttribute = {}
---@alias CS.System.Web.Services.WebServiceBindingAttribute System.Web.Services.WebServiceBindingAttribute
CS.System.Web.Services.WebServiceBindingAttribute = System.Web.Services.WebServiceBindingAttribute

---@overload fun() : System.Web.Services.WebServiceBindingAttribute
---@overload fun(name: string) : System.Web.Services.WebServiceBindingAttribute
---@overload fun(name: string, ns: string) : System.Web.Services.WebServiceBindingAttribute
---@param name string
---@param ns string
---@param location string
---@return System.Web.Services.WebServiceBindingAttribute
function System.Web.Services.WebServiceBindingAttribute.New(name, ns, location) end

---@class System.Web.Services.WebServiceBindingReflector : System.Object
System.Web.Services.WebServiceBindingReflector = {}
---@alias CS.System.Web.Services.WebServiceBindingReflector System.Web.Services.WebServiceBindingReflector
CS.System.Web.Services.WebServiceBindingReflector = System.Web.Services.WebServiceBindingReflector


---@class System.Web.Services.WebServicesDescriptionAttribute : System.ComponentModel.DescriptionAttribute
---@field Description string
System.Web.Services.WebServicesDescriptionAttribute = {}
---@alias CS.System.Web.Services.WebServicesDescriptionAttribute System.Web.Services.WebServicesDescriptionAttribute
CS.System.Web.Services.WebServicesDescriptionAttribute = System.Web.Services.WebServicesDescriptionAttribute


---@class System.Web.Services.WsiProfiles
---@field None System.Web.Services.WsiProfiles
---@field BasicProfile1_1 System.Web.Services.WsiProfiles
System.Web.Services.WsiProfiles = {}
---@alias CS.System.Web.Services.WsiProfiles System.Web.Services.WsiProfiles
CS.System.Web.Services.WsiProfiles = System.Web.Services.WsiProfiles


---@class System.Web.Services.Res : System.Object
---@field WebConfigInvalidExtensionPriority string
---@field ConfigKeyNotFoundInElementCollection string
---@field ConfigKeysDoNotMatch string
---@field Invalid_priority_group_value string
---@field WebSchemaNotFound string
---@field WebReflectionError string
---@field WebInvalidMethodName string
---@field WebInvalidMethodNameCase string
---@field WebInvalidRequestFormat string
---@field WebInvalidRequestFormatDetails string
---@field WebMethodStatic string
---@field WebMethodMissingParams string
---@field WebBadOutParameter string
---@field WebInOutParameter string
---@field WebAsyncMissingEnd string
---@field WebMissingPath string
---@field WebResponseKnownError string
---@field WebResponseUnknownError string
---@field WebResponseUnknownErrorEmptyBody string
---@field WebResponseContent string
---@field WebBadStreamState string
---@field WebResponseBadXml string
---@field WebCannotUnderstandHeader string
---@field WebMissingHeader string
---@field WebNoReturnValue string
---@field WebCannotAccessValue string
---@field WebCannotAccessValueStage string
---@field WebInvalidBindingPlacement string
---@field WebInvalidBindingName string
---@field WebBothMethodAttrs string
---@field WebBothServiceAttrs string
---@field WebOneWayOutParameters string
---@field WebOneWayReturnValue string
---@field WebReflectionErrorMethod string
---@field WebMultiDimArray string
---@field WebHeaderMissing string
---@field WebHeaderStatic string
---@field WebHeaderRead string
---@field WebHeaderWrite string
---@field WebHeaderType string
---@field WebHeaderOneWayOut string
---@field WebHeaderInvalidMustUnderstand string
---@field WebMultiplyDeclaredHeaderTypes string
---@field WebHttpHeader string
---@field WebRequestContent string
---@field WebRequestUnableToRead string
---@field WebRequestUnableToProcess string
---@field WebMissingParameter string
---@field WebUnrecognizedRequestFormat string
---@field WebUnrecognizedRequestFormatUrl string
---@field WebTimeout string
---@field WebMissingHelpContext string
---@field WebMissingCustomAttribute string
---@field WebMissingClientProtocol string
---@field WebResolveMissingClientProtocol string
---@field WebPathNotFound string
---@field WebMissingResource string
---@field WebContractReferenceName string
---@field WebShemaReferenceName string
---@field WebDiscoveryDocumentReferenceName string
---@field WebMissingDocument string
---@field WebInvalidContentType string
---@field WebInvalidFormat string
---@field WebInvalidEnvelopeNamespace string
---@field WebResultNotXml string
---@field WebDescriptionMissingItem string
---@field WebDescriptionMissing string
---@field WebDescriptionPartElementRequired string
---@field WebDescriptionPartTypeRequired string
---@field WebDescriptionPartElementWarning string
---@field WebDescriptionPartTypeWarning string
---@field WebDescriptionTooManyMessages string
---@field WebDescriptionHeaderAndBodyUseMismatch string
---@field WebQNamePrefixUndefined string
---@field WebNegativeValue string
---@field WebEmptyRef string
---@field WebNullRef string
---@field WebRefInvalidAttribute string
---@field WebRefInvalidAttribute2 string
---@field WebInvalidDocType string
---@field WebDiscoRefReport string
---@field WebTextMatchMissingPattern string
---@field WebTextMatchIgnoredTypeWarning string
---@field WebTextMatchBadCaptureIndex string
---@field WebTextMatchBadGroupIndex string
---@field WebServiceDescriptionIgnoredOptional string
---@field WebServiceDescriptionIgnoredRequired string
---@field WebDuplicateFormatExtension string
---@field WebDuplicateOperationMessage string
---@field WebDuplicateImport string
---@field WebDuplicateMessage string
---@field WebDuplicatePort string
---@field WebDuplicatePortType string
---@field WebDuplicateBinding string
---@field WebDuplicateService string
---@field WebDuplicateMessagePart string
---@field WebDuplicateOperationBinding string
---@field WebDuplicateFaultBinding string
---@field WebDuplicateOperation string
---@field WebDuplicateOperationFault string
---@field WebDuplicateUnknownElement string
---@field WebUnknownEncodingStyle string
---@field WebSoap11EncodingStyleNotSupported1 string
---@field WebNullAsyncResultInBegin string
---@field WebNullAsyncResultInEnd string
---@field WebAsyncTransaction string
---@field WebConfigExtensionError string
---@field WebExtensionError string
---@field WebChangeTypeFailed string
---@field WebClientBindingAttributeRequired string
---@field WebHeaderInvalidRelay string
---@field WebVirtualDisoRoot string
---@field WebWsiContentTypeEncoding string
---@field WebWsiViolation string
---@field WebNullReaderForMessage string
---@field WebNullWriterForMessage string
---@field NeedConcreteType string
---@field WebUnknownElement string
---@field WebUnknownElement1 string
---@field WebUnknownElement2 string
---@field WebUnknownAttribute string
---@field WebUnknownAttribute2 string
---@field WebUnknownAttribute3 string
---@field WebSuppressedExceptionMessage string
---@field CannotRunInPartialTrustOutsideAspNet string
---@field WebServiceContext string
---@field WebServiceSession string
---@field WebServiceServer string
---@field WebServiceUser string
---@field WebServiceSoapVersion string
---@field ClientProtocolAllowAutoRedirect string
---@field ClientProtocolCookieContainer string
---@field ClientProtocolPreAuthenticate string
---@field ClientProtocolClientCertificates string
---@field ClientProtocolUrl string
---@field ClientProtocolEncoding string
---@field ClientProtocolTimeout string
---@field ClientProtocolUserAgent string
---@field ClientProtocolSoapVersion string
---@field ClientProtocolEnableDecompression string
---@field XmlLang string
---@field Rxxxx string
---@field BindingMissingAttribute string
---@field BindingInvalidAttribute string
---@field OperationFlowNotification string
---@field OperationFlowSolicitResponse string
---@field PortTypeOperationMissing string
---@field BindingMultipleParts string
---@field InputElement string
---@field OutputElement string
---@field Fault string
---@field HeaderFault string
---@field Binding string
---@field Operation string
---@field OperationBinding string
---@field FaultBinding string
---@field Description string
---@field Element string
---@field Port string
---@field Part string
---@field OperationMissingBinding string
---@field UriValueRelative string
---@field HelpGeneratorInternalError string
---@field OperationOverload string
---@field WireSignature string
---@field WireSignatureEmpty string
---@field WsdlInstanceValidationDetails string
---@field WhenUsingAMessageStyleOfParametersAsDocument0 string
---@field TheMethodsAndUseTheSameSoapActionWhenTheService3 string
---@field TheMethodDoesNotHaveARequestElementEither1 string
---@field TheMethodsAndUseTheSameRequestElementXmlns4 string
---@field TheMethodsAndUseTheSameRequestElementAndSoapActionXmlns6 string
---@field TheRootElementForTheRequestCouldNotBeDetermined0 string
---@field TheRequestElementXmlnsWasNotRecognized2 string
---@field ServiceDescriptionWasNotFound0 string
---@field internalError0 string
---@field DiscoveryIsNotPossibleBecauseTypeIsMissing1 string
---@field TheBindingNamedFromNamespaceWasNotFoundIn3 string
---@field Missing2 string
---@field MissingHttpOperationElement0 string
---@field MessageHasNoParts1 string
---@field DuplicateInputOutputNames0 string
---@field MissingBinding0 string
---@field MissingInputBinding0 string
---@field MissingOutputBinding0 string
---@field UnableToImportOperation1 string
---@field UnableToImportBindingFromNamespace2 string
---@field TheOperationFromNamespaceHadInvalidSyntax3 string
---@field TheOperationBindingFromNamespaceHadInvalid3 string
---@field IfAppSettingBaseUrlArgumentIsSpecifiedThen0 string
---@field MissingMessagePartForMessageFromNamespace3 string
---@field MissingMessage2 string
---@field OnlyXmlElementsOrTypesDerivingFromServiceDescriptionFormatExtension0 string
---@field OnlyOperationInputOrOperationOutputTypes string
---@field ProtocolWithNameIsNotRecognized1 string
---@field BothAndUseTheMessageNameUseTheMessageName3 string
---@field MissingSoapOperationBinding0 string
---@field OnlyOneWebServiceBindingAttributeMayBeSpecified1 string
---@field ContractOverride string
---@field TypeIsMissingWebServiceBindingAttributeThat2 string
---@field MultipleBindingsWithSameName2 string
---@field RequiredXmlFormatExtensionAttributeIsMissing1 string
---@field TheSyntaxOfTypeMayNotBeExtended1 string
---@field ThereIsNoSoapTransportImporterThatUnderstands1 string
---@field MissingSoapBodyInputBinding0 string
---@field MissingSoapBodyOutputBinding0 string
---@field TheEncodingIsNotSupported1 string
---@field SpecifyingAnElementForUseEncodedMessageParts0 string
---@field EachMessagePartInAnUseEncodedMessageMustSpecify0 string
---@field SpecifyingATypeForUseLiteralMessagesIs0 string
---@field SpecifyingATypeForUseLiteralMessagesIsAny string
---@field EachMessagePartInAUseLiteralMessageMustSpecify0 string
---@field EachMessagePartInRpcUseLiteralMessageMustSpecify0 string
---@field NoInputMIMEFormatsWereRecognized0 string
---@field NoInputHTTPFormatsWereRecognized0 string
---@field NoOutputMIMEFormatsWereRecognized0 string
---@field MissingMatchElement0 string
---@field SolicitResponseIsNotSupported0 string
---@field RequestResponseIsNotSupported0 string
---@field OneWayIsNotSupported0 string
---@field NotificationIsNotSupported0 string
---@field WebMissingBodyElement string
---@field WebMissingEnvelopeElement string
---@field UnableToHandleRequestActionNotRecognized1 string
---@field UnableToHandleRequestActionRequired0 string
---@field UnableToHandleRequest0 string
---@field FailedToHandleRequest0 string
---@field CodeGenSupportReferenceParameters string
---@field CodeGenSupportParameterAttributes string
---@field CodeGenSupportReturnTypeAttributes string
---@field TheBinding0FromNamespace1WasIgnored2 string
---@field TheOperation0FromNamespace1WasIgnored2 string
---@field TheOperationBinding0FromNamespace1WasIgnored string
---@field NoMethodsWereFoundInTheWSDLForThisProtocol string
---@field ThereWasAnErrorDuringAsyncProcessing string
---@field CanTCallTheEndMethodOfAnAsyncCallMoreThan string
---@field AsyncDuplicateUserState string
---@field StreamDoesNotSeek string
---@field StreamDoesNotRead string
---@field ElementTypeMustBeObjectOrSoapReflectedException string
---@field ElementTypeMustBeObjectOrSoapExtensionOrSoapReflectedException string
---@field ProtocolDoesNotAsyncSerialize string
---@field ThereWasAnErrorDownloading0 string
---@field TheHTMLDocumentDoesNotContainDiscoveryInformation string
---@field TheDocumentWasNotRecognizedAsAKnownDocumentType string
---@field TheDocumentWasUnderstoodButContainsErrors string
---@field TheWSDLDocumentContainsLinksThatCouldNotBeResolved string
---@field TheSchemaDocumentContainsLinksThatCouldNotBeResolved string
---@field CanTSpecifyElementOnEncodedMessagePartsPart string
---@field indexMustBeBetweenAnd0Inclusive string
---@field BPConformanceHeaderFault string
---@field WsdlGenRpcLitAnonimousType string
---@field StackTraceEnd string
---@field CodeRemarks string
---@field CodegenWarningDetails string
---@field SchemaValidationError string
---@field SchemaValidationWarning string
---@field SchemaSyntaxErrorDetails string
---@field InitFailed string
---@field XmlSchemaElementReference string
---@field XmlSchemaAttributeReference string
---@field XmlSchemaItem string
---@field XmlSchemaNamedItem string
---@field XmlSchemaContentDef string
---@field XmlSchema string
---@field TraceCallEnter string
---@field TraceCallEnterDetails string
---@field TraceCallExit string
---@field TraceExceptionThrown string
---@field TraceExceptionCought string
---@field TraceExceptionIgnored string
---@field TraceExceptionDetails string
---@field TracePostWorkItemIn string
---@field TracePostWorkItemOut string
---@field TraceUserHostName string
---@field TraceUserHostAddress string
---@field TraceUrl string
---@field TraceUrlReferrer string
---@field TraceCreateSerializer string
---@field TraceWriteRequest string
---@field TraceWriteResponse string
---@field TraceWriteHeaders string
---@field TraceReadRequest string
---@field TraceReadResponse string
---@field TraceReadHeaders string
System.Web.Services.Res = {}
---@alias CS.System.Web.Services.Res System.Web.Services.Res
CS.System.Web.Services.Res = System.Web.Services.Res

---@overload fun(name: string) : string
---@param name string
---@param args System.Object[]
---@return string
function System.Web.Services.Res.GetString(name, args) end

---@class System.Web.Services.Protocols.AnyReturnReader : System.Web.Services.Protocols.MimeReturnReader
System.Web.Services.Protocols.AnyReturnReader = {}
---@alias CS.System.Web.Services.Protocols.AnyReturnReader System.Web.Services.Protocols.AnyReturnReader
CS.System.Web.Services.Protocols.AnyReturnReader = System.Web.Services.Protocols.AnyReturnReader

---@return System.Web.Services.Protocols.AnyReturnReader
function System.Web.Services.Protocols.AnyReturnReader.New() end
---@param o System.Object
function System.Web.Services.Protocols.AnyReturnReader:Initialize(o) end
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.AnyReturnReader:GetInitializer(methodInfo) end
---@param response System.Net.WebResponse
---@param responseStream System.IO.Stream
---@return System.Object
function System.Web.Services.Protocols.AnyReturnReader:Read(response, responseStream) end

---@class System.Web.Services.Protocols.BufferedResponseStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
System.Web.Services.Protocols.BufferedResponseStream = {}
---@alias CS.System.Web.Services.Protocols.BufferedResponseStream System.Web.Services.Protocols.BufferedResponseStream
CS.System.Web.Services.Protocols.BufferedResponseStream = System.Web.Services.Protocols.BufferedResponseStream

function System.Web.Services.Protocols.BufferedResponseStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.Services.Protocols.BufferedResponseStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Web.Services.Protocols.BufferedResponseStream:EndRead(asyncResult) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Web.Services.Protocols.BufferedResponseStream:Seek(offset, origin) end
---@param value number
function System.Web.Services.Protocols.BufferedResponseStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Web.Services.Protocols.BufferedResponseStream:Read(buffer, offset, count) end
---@return number
function System.Web.Services.Protocols.BufferedResponseStream:ReadByte() end
---@param array System.Byte[]
---@param offset number
---@param count number
function System.Web.Services.Protocols.BufferedResponseStream:Write(array, offset, count) end
---@param value number
function System.Web.Services.Protocols.BufferedResponseStream:WriteByte(value) end

---@class System.Web.Services.Protocols.ClientTypeCache : System.Object
System.Web.Services.Protocols.ClientTypeCache = {}
---@alias CS.System.Web.Services.Protocols.ClientTypeCache System.Web.Services.Protocols.ClientTypeCache
CS.System.Web.Services.Protocols.ClientTypeCache = System.Web.Services.Protocols.ClientTypeCache

---@return System.Web.Services.Protocols.ClientTypeCache
function System.Web.Services.Protocols.ClientTypeCache.New() end

---@class System.Web.Services.Protocols.WebClientProtocol : System.ComponentModel.Component
---@field Credentials System.Net.ICredentials
---@field UseDefaultCredentials boolean
---@field ConnectionGroupName string
---@field PreAuthenticate boolean
---@field Url string
---@field RequestEncoding System.Text.Encoding
---@field Timeout number
System.Web.Services.Protocols.WebClientProtocol = {}
---@alias CS.System.Web.Services.Protocols.WebClientProtocol System.Web.Services.Protocols.WebClientProtocol
CS.System.Web.Services.Protocols.WebClientProtocol = System.Web.Services.Protocols.WebClientProtocol

function System.Web.Services.Protocols.WebClientProtocol:Abort() end

---@class System.Web.Services.Protocols.WebClientAsyncResult : System.Object
---@field AsyncState System.Object
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field CompletedSynchronously boolean
---@field IsCompleted boolean
System.Web.Services.Protocols.WebClientAsyncResult = {}
---@alias CS.System.Web.Services.Protocols.WebClientAsyncResult System.Web.Services.Protocols.WebClientAsyncResult
CS.System.Web.Services.Protocols.WebClientAsyncResult = System.Web.Services.Protocols.WebClientAsyncResult

function System.Web.Services.Protocols.WebClientAsyncResult:Abort() end

---@class System.Web.Services.Protocols.InvokeCompletedEventHandler : System.MulticastDelegate
System.Web.Services.Protocols.InvokeCompletedEventHandler = {}
---@alias CS.System.Web.Services.Protocols.InvokeCompletedEventHandler System.Web.Services.Protocols.InvokeCompletedEventHandler
CS.System.Web.Services.Protocols.InvokeCompletedEventHandler = System.Web.Services.Protocols.InvokeCompletedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.Services.Protocols.InvokeCompletedEventHandler
function System.Web.Services.Protocols.InvokeCompletedEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.Web.Services.Protocols.InvokeCompletedEventArgs
function System.Web.Services.Protocols.InvokeCompletedEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.Web.Services.Protocols.InvokeCompletedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.Services.Protocols.InvokeCompletedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.Web.Services.Protocols.InvokeCompletedEventHandler:EndInvoke(result) end

---@class System.Web.Services.Protocols.InvokeCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs
---@field Results System.Object[]
System.Web.Services.Protocols.InvokeCompletedEventArgs = {}
---@alias CS.System.Web.Services.Protocols.InvokeCompletedEventArgs System.Web.Services.Protocols.InvokeCompletedEventArgs
CS.System.Web.Services.Protocols.InvokeCompletedEventArgs = System.Web.Services.Protocols.InvokeCompletedEventArgs


---@class System.Web.Services.Protocols.UserToken : System.Object
System.Web.Services.Protocols.UserToken = {}
---@alias CS.System.Web.Services.Protocols.UserToken System.Web.Services.Protocols.UserToken
CS.System.Web.Services.Protocols.UserToken = System.Web.Services.Protocols.UserToken


---@class System.Web.Services.Protocols.HttpWebClientProtocol : System.Web.Services.Protocols.WebClientProtocol
---@field AllowAutoRedirect boolean
---@field CookieContainer System.Net.CookieContainer
---@field ClientCertificates System.Security.Cryptography.X509Certificates.X509CertificateCollection
---@field EnableDecompression boolean
---@field UserAgent string
---@field Proxy System.Net.IWebProxy
---@field UnsafeAuthenticatedConnectionSharing boolean
System.Web.Services.Protocols.HttpWebClientProtocol = {}
---@alias CS.System.Web.Services.Protocols.HttpWebClientProtocol System.Web.Services.Protocols.HttpWebClientProtocol
CS.System.Web.Services.Protocols.HttpWebClientProtocol = System.Web.Services.Protocols.HttpWebClientProtocol

---@overload fun(type: System.Type, mappings: System.Collections.ArrayList) : boolean
---@param types System.Type[]
---@param mappings System.Collections.ArrayList
---@return System.Collections.Hashtable
function System.Web.Services.Protocols.HttpWebClientProtocol.GenerateXmlMappings(types, mappings) end

---@class System.Web.Services.Protocols.DiscoveryServerType : System.Web.Services.Protocols.ServerType
---@field UriFixups System.Collections.Generic.List
System.Web.Services.Protocols.DiscoveryServerType = {}
---@alias CS.System.Web.Services.Protocols.DiscoveryServerType System.Web.Services.Protocols.DiscoveryServerType
CS.System.Web.Services.Protocols.DiscoveryServerType = System.Web.Services.Protocols.DiscoveryServerType


---@class System.Web.Services.Protocols.DiscoveryServerProtocolFactory : System.Web.Services.Protocols.ServerProtocolFactory
System.Web.Services.Protocols.DiscoveryServerProtocolFactory = {}
---@alias CS.System.Web.Services.Protocols.DiscoveryServerProtocolFactory System.Web.Services.Protocols.DiscoveryServerProtocolFactory
CS.System.Web.Services.Protocols.DiscoveryServerProtocolFactory = System.Web.Services.Protocols.DiscoveryServerProtocolFactory

---@return System.Web.Services.Protocols.DiscoveryServerProtocolFactory
function System.Web.Services.Protocols.DiscoveryServerProtocolFactory.New() end

---@class System.Web.Services.Protocols.DiscoveryServerProtocol : System.Web.Services.Protocols.ServerProtocol
System.Web.Services.Protocols.DiscoveryServerProtocol = {}
---@alias CS.System.Web.Services.Protocols.DiscoveryServerProtocol System.Web.Services.Protocols.DiscoveryServerProtocol
CS.System.Web.Services.Protocols.DiscoveryServerProtocol = System.Web.Services.Protocols.DiscoveryServerProtocol

---@return System.Web.Services.Protocols.DiscoveryServerProtocol
function System.Web.Services.Protocols.DiscoveryServerProtocol.New() end

---@class System.Web.Services.Protocols.DocumentationServerType : System.Web.Services.Protocols.ServerType
---@field UriFixups System.Collections.Generic.List
System.Web.Services.Protocols.DocumentationServerType = {}
---@alias CS.System.Web.Services.Protocols.DocumentationServerType System.Web.Services.Protocols.DocumentationServerType
CS.System.Web.Services.Protocols.DocumentationServerType = System.Web.Services.Protocols.DocumentationServerType


---@class System.Web.Services.Protocols.DocumentationServerProtocolFactory : System.Web.Services.Protocols.ServerProtocolFactory
System.Web.Services.Protocols.DocumentationServerProtocolFactory = {}
---@alias CS.System.Web.Services.Protocols.DocumentationServerProtocolFactory System.Web.Services.Protocols.DocumentationServerProtocolFactory
CS.System.Web.Services.Protocols.DocumentationServerProtocolFactory = System.Web.Services.Protocols.DocumentationServerProtocolFactory

---@return System.Web.Services.Protocols.DocumentationServerProtocolFactory
function System.Web.Services.Protocols.DocumentationServerProtocolFactory.New() end

---@class System.Web.Services.Protocols.DocumentationServerProtocol : System.Web.Services.Protocols.ServerProtocol
System.Web.Services.Protocols.DocumentationServerProtocol = {}
---@alias CS.System.Web.Services.Protocols.DocumentationServerProtocol System.Web.Services.Protocols.DocumentationServerProtocol
CS.System.Web.Services.Protocols.DocumentationServerProtocol = System.Web.Services.Protocols.DocumentationServerProtocol

---@return System.Web.Services.Protocols.DocumentationServerProtocol
function System.Web.Services.Protocols.DocumentationServerProtocol.New() end

---@class System.Web.Services.Protocols.HtmlFormParameterReader : System.Web.Services.Protocols.ValueCollectionParameterReader
System.Web.Services.Protocols.HtmlFormParameterReader = {}
---@alias CS.System.Web.Services.Protocols.HtmlFormParameterReader System.Web.Services.Protocols.HtmlFormParameterReader
CS.System.Web.Services.Protocols.HtmlFormParameterReader = System.Web.Services.Protocols.HtmlFormParameterReader

---@return System.Web.Services.Protocols.HtmlFormParameterReader
function System.Web.Services.Protocols.HtmlFormParameterReader.New() end
---@param request System.Web.HttpRequest
---@return System.Object[]
function System.Web.Services.Protocols.HtmlFormParameterReader:Read(request) end

---@class System.Web.Services.Protocols.HtmlFormParameterWriter : System.Web.Services.Protocols.UrlEncodedParameterWriter
---@field UsesWriteRequest boolean
System.Web.Services.Protocols.HtmlFormParameterWriter = {}
---@alias CS.System.Web.Services.Protocols.HtmlFormParameterWriter System.Web.Services.Protocols.HtmlFormParameterWriter
CS.System.Web.Services.Protocols.HtmlFormParameterWriter = System.Web.Services.Protocols.HtmlFormParameterWriter

---@return System.Web.Services.Protocols.HtmlFormParameterWriter
function System.Web.Services.Protocols.HtmlFormParameterWriter.New() end
---@param request System.Net.WebRequest
---@param values System.Object[]
function System.Web.Services.Protocols.HtmlFormParameterWriter:InitializeRequest(request, values) end
---@param requestStream System.IO.Stream
---@param values System.Object[]
function System.Web.Services.Protocols.HtmlFormParameterWriter:WriteRequest(requestStream, values) end

---@class System.Web.Services.Protocols.HttpClientMethod : System.Object
System.Web.Services.Protocols.HttpClientMethod = {}
---@alias CS.System.Web.Services.Protocols.HttpClientMethod System.Web.Services.Protocols.HttpClientMethod
CS.System.Web.Services.Protocols.HttpClientMethod = System.Web.Services.Protocols.HttpClientMethod

---@return System.Web.Services.Protocols.HttpClientMethod
function System.Web.Services.Protocols.HttpClientMethod.New() end

---@class System.Web.Services.Protocols.HttpClientType : System.Object
System.Web.Services.Protocols.HttpClientType = {}
---@alias CS.System.Web.Services.Protocols.HttpClientType System.Web.Services.Protocols.HttpClientType
CS.System.Web.Services.Protocols.HttpClientType = System.Web.Services.Protocols.HttpClientType


---@class System.Web.Services.Protocols.HttpSimpleClientProtocol : System.Web.Services.Protocols.HttpWebClientProtocol
System.Web.Services.Protocols.HttpSimpleClientProtocol = {}
---@alias CS.System.Web.Services.Protocols.HttpSimpleClientProtocol System.Web.Services.Protocols.HttpSimpleClientProtocol
CS.System.Web.Services.Protocols.HttpSimpleClientProtocol = System.Web.Services.Protocols.HttpSimpleClientProtocol


---@class System.Web.Services.Protocols.HttpSimpleClientProtocol.InvokeAsyncState : System.Object
System.Web.Services.Protocols.HttpSimpleClientProtocol.InvokeAsyncState = {}
---@alias CS.System.Web.Services.Protocols.HttpSimpleClientProtocol.InvokeAsyncState System.Web.Services.Protocols.HttpSimpleClientProtocol.InvokeAsyncState
CS.System.Web.Services.Protocols.HttpSimpleClientProtocol.InvokeAsyncState = System.Web.Services.Protocols.HttpSimpleClientProtocol.InvokeAsyncState


---@class System.Web.Services.Protocols.HttpGetClientProtocol : System.Web.Services.Protocols.HttpSimpleClientProtocol
System.Web.Services.Protocols.HttpGetClientProtocol = {}
---@alias CS.System.Web.Services.Protocols.HttpGetClientProtocol System.Web.Services.Protocols.HttpGetClientProtocol
CS.System.Web.Services.Protocols.HttpGetClientProtocol = System.Web.Services.Protocols.HttpGetClientProtocol

---@return System.Web.Services.Protocols.HttpGetClientProtocol
function System.Web.Services.Protocols.HttpGetClientProtocol.New() end

---@class System.Web.Services.Protocols.HttpGetServerProtocolFactory : System.Web.Services.Protocols.ServerProtocolFactory
System.Web.Services.Protocols.HttpGetServerProtocolFactory = {}
---@alias CS.System.Web.Services.Protocols.HttpGetServerProtocolFactory System.Web.Services.Protocols.HttpGetServerProtocolFactory
CS.System.Web.Services.Protocols.HttpGetServerProtocolFactory = System.Web.Services.Protocols.HttpGetServerProtocolFactory

---@return System.Web.Services.Protocols.HttpGetServerProtocolFactory
function System.Web.Services.Protocols.HttpGetServerProtocolFactory.New() end

---@class System.Web.Services.Protocols.HttpGetServerProtocol : System.Web.Services.Protocols.HttpServerProtocol
System.Web.Services.Protocols.HttpGetServerProtocol = {}
---@alias CS.System.Web.Services.Protocols.HttpGetServerProtocol System.Web.Services.Protocols.HttpGetServerProtocol
CS.System.Web.Services.Protocols.HttpGetServerProtocol = System.Web.Services.Protocols.HttpGetServerProtocol


---@class System.Web.Services.Protocols.HttpMethodAttribute : System.Attribute
---@field ReturnFormatter System.Type
---@field ParameterFormatter System.Type
System.Web.Services.Protocols.HttpMethodAttribute = {}
---@alias CS.System.Web.Services.Protocols.HttpMethodAttribute System.Web.Services.Protocols.HttpMethodAttribute
CS.System.Web.Services.Protocols.HttpMethodAttribute = System.Web.Services.Protocols.HttpMethodAttribute

---@overload fun() : System.Web.Services.Protocols.HttpMethodAttribute
---@param returnFormatter System.Type
---@param parameterFormatter System.Type
---@return System.Web.Services.Protocols.HttpMethodAttribute
function System.Web.Services.Protocols.HttpMethodAttribute.New(returnFormatter, parameterFormatter) end

---@class System.Web.Services.Protocols.HttpPostClientProtocol : System.Web.Services.Protocols.HttpSimpleClientProtocol
System.Web.Services.Protocols.HttpPostClientProtocol = {}
---@alias CS.System.Web.Services.Protocols.HttpPostClientProtocol System.Web.Services.Protocols.HttpPostClientProtocol
CS.System.Web.Services.Protocols.HttpPostClientProtocol = System.Web.Services.Protocols.HttpPostClientProtocol

---@return System.Web.Services.Protocols.HttpPostClientProtocol
function System.Web.Services.Protocols.HttpPostClientProtocol.New() end

---@class System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory : System.Web.Services.Protocols.ServerProtocolFactory
System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory = {}
---@alias CS.System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory
CS.System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory = System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory

---@return System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory
function System.Web.Services.Protocols.HttpPostLocalhostServerProtocolFactory.New() end

---@class System.Web.Services.Protocols.HttpPostServerProtocolFactory : System.Web.Services.Protocols.ServerProtocolFactory
System.Web.Services.Protocols.HttpPostServerProtocolFactory = {}
---@alias CS.System.Web.Services.Protocols.HttpPostServerProtocolFactory System.Web.Services.Protocols.HttpPostServerProtocolFactory
CS.System.Web.Services.Protocols.HttpPostServerProtocolFactory = System.Web.Services.Protocols.HttpPostServerProtocolFactory

---@return System.Web.Services.Protocols.HttpPostServerProtocolFactory
function System.Web.Services.Protocols.HttpPostServerProtocolFactory.New() end

---@class System.Web.Services.Protocols.HttpPostServerProtocol : System.Web.Services.Protocols.HttpServerProtocol
System.Web.Services.Protocols.HttpPostServerProtocol = {}
---@alias CS.System.Web.Services.Protocols.HttpPostServerProtocol System.Web.Services.Protocols.HttpPostServerProtocol
CS.System.Web.Services.Protocols.HttpPostServerProtocol = System.Web.Services.Protocols.HttpPostServerProtocol


---@class System.Web.Services.Protocols.HttpServerType : System.Web.Services.Protocols.ServerType
System.Web.Services.Protocols.HttpServerType = {}
---@alias CS.System.Web.Services.Protocols.HttpServerType System.Web.Services.Protocols.HttpServerType
CS.System.Web.Services.Protocols.HttpServerType = System.Web.Services.Protocols.HttpServerType


---@class System.Web.Services.Protocols.HttpServerMethod : System.Object
System.Web.Services.Protocols.HttpServerMethod = {}
---@alias CS.System.Web.Services.Protocols.HttpServerMethod System.Web.Services.Protocols.HttpServerMethod
CS.System.Web.Services.Protocols.HttpServerMethod = System.Web.Services.Protocols.HttpServerMethod

---@return System.Web.Services.Protocols.HttpServerMethod
function System.Web.Services.Protocols.HttpServerMethod.New() end

---@class System.Web.Services.Protocols.HttpServerProtocol : System.Web.Services.Protocols.ServerProtocol
System.Web.Services.Protocols.HttpServerProtocol = {}
---@alias CS.System.Web.Services.Protocols.HttpServerProtocol System.Web.Services.Protocols.HttpServerProtocol
CS.System.Web.Services.Protocols.HttpServerProtocol = System.Web.Services.Protocols.HttpServerProtocol


---@class System.Web.Services.Protocols.LogicalMethodTypes
---@field Sync System.Web.Services.Protocols.LogicalMethodTypes
---@field Async System.Web.Services.Protocols.LogicalMethodTypes
System.Web.Services.Protocols.LogicalMethodTypes = {}
---@alias CS.System.Web.Services.Protocols.LogicalMethodTypes System.Web.Services.Protocols.LogicalMethodTypes
CS.System.Web.Services.Protocols.LogicalMethodTypes = System.Web.Services.Protocols.LogicalMethodTypes


---@class System.Web.Services.Protocols.LogicalMethodInfo : System.Object
---@field DeclaringType System.Type
---@field Name string
---@field AsyncResultParameter System.Reflection.ParameterInfo
---@field AsyncCallbackParameter System.Reflection.ParameterInfo
---@field AsyncStateParameter System.Reflection.ParameterInfo
---@field ReturnType System.Type
---@field IsVoid boolean
---@field IsAsync boolean
---@field InParameters System.Reflection.ParameterInfo[]
---@field OutParameters System.Reflection.ParameterInfo[]
---@field Parameters System.Reflection.ParameterInfo[]
---@field CustomAttributeProvider System.Reflection.ICustomAttributeProvider
---@field ReturnTypeCustomAttributeProvider System.Reflection.ICustomAttributeProvider
---@field MethodInfo System.Reflection.MethodInfo
---@field BeginMethodInfo System.Reflection.MethodInfo
---@field EndMethodInfo System.Reflection.MethodInfo
System.Web.Services.Protocols.LogicalMethodInfo = {}
---@alias CS.System.Web.Services.Protocols.LogicalMethodInfo System.Web.Services.Protocols.LogicalMethodInfo
CS.System.Web.Services.Protocols.LogicalMethodInfo = System.Web.Services.Protocols.LogicalMethodInfo

---@param methodInfo System.Reflection.MethodInfo
---@return System.Web.Services.Protocols.LogicalMethodInfo
function System.Web.Services.Protocols.LogicalMethodInfo.New(methodInfo) end
---@param methodInfo System.Reflection.MethodInfo
---@return boolean
function System.Web.Services.Protocols.LogicalMethodInfo.IsBeginMethod(methodInfo) end
---@param methodInfo System.Reflection.MethodInfo
---@return boolean
function System.Web.Services.Protocols.LogicalMethodInfo.IsEndMethod(methodInfo) end
---@overload fun(methodInfos: System.Reflection.MethodInfo[]) : System.Web.Services.Protocols.LogicalMethodInfo[]
---@param methodInfos System.Reflection.MethodInfo[]
---@param types System.Web.Services.Protocols.LogicalMethodTypes
---@return System.Web.Services.Protocols.LogicalMethodInfo[]
function System.Web.Services.Protocols.LogicalMethodInfo.Create(methodInfos, types) end
---@return string
function System.Web.Services.Protocols.LogicalMethodInfo:ToString() end
---@param target System.Object
---@param values System.Object[]
---@return System.Object[]
function System.Web.Services.Protocols.LogicalMethodInfo:Invoke(target, values) end
---@param target System.Object
---@param values System.Object[]
---@param callback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Web.Services.Protocols.LogicalMethodInfo:BeginInvoke(target, values, callback, asyncState) end
---@param target System.Object
---@param asyncResult System.IAsyncResult
---@return System.Object[]
function System.Web.Services.Protocols.LogicalMethodInfo:EndInvoke(target, asyncResult) end
---@param type System.Type
---@return System.Object[]
function System.Web.Services.Protocols.LogicalMethodInfo:GetCustomAttributes(type) end
---@param type System.Type
---@return System.Object
function System.Web.Services.Protocols.LogicalMethodInfo:GetCustomAttribute(type) end

---@class System.Web.Services.Protocols.MatchAttribute : System.Attribute
---@field Pattern string
---@field Group number
---@field Capture number
---@field IgnoreCase boolean
---@field MaxRepeats number
System.Web.Services.Protocols.MatchAttribute = {}
---@alias CS.System.Web.Services.Protocols.MatchAttribute System.Web.Services.Protocols.MatchAttribute
CS.System.Web.Services.Protocols.MatchAttribute = System.Web.Services.Protocols.MatchAttribute

---@param pattern string
---@return System.Web.Services.Protocols.MatchAttribute
function System.Web.Services.Protocols.MatchAttribute.New(pattern) end

---@class System.Web.Services.Protocols.MimeFormatter : System.Object
System.Web.Services.Protocols.MimeFormatter = {}
---@alias CS.System.Web.Services.Protocols.MimeFormatter System.Web.Services.Protocols.MimeFormatter
CS.System.Web.Services.Protocols.MimeFormatter = System.Web.Services.Protocols.MimeFormatter

---@overload fun(type: System.Type, methodInfo: System.Web.Services.Protocols.LogicalMethodInfo) : System.Object
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.MimeFormatter:GetInitializer(methodInfo) end
---@overload fun(type: System.Type, methodInfos: System.Web.Services.Protocols.LogicalMethodInfo[]) : System.Object[]
---@param methodInfos System.Web.Services.Protocols.LogicalMethodInfo[]
---@return System.Object[]
function System.Web.Services.Protocols.MimeFormatter:GetInitializers(methodInfos) end
---@param type System.Type
---@param initializer System.Object
---@return System.Web.Services.Protocols.MimeFormatter
function System.Web.Services.Protocols.MimeFormatter.CreateInstance(type, initializer) end
---@param initializer System.Object
function System.Web.Services.Protocols.MimeFormatter:Initialize(initializer) end

---@class System.Web.Services.Protocols.MimeParameterReader : System.Web.Services.Protocols.MimeFormatter
System.Web.Services.Protocols.MimeParameterReader = {}
---@alias CS.System.Web.Services.Protocols.MimeParameterReader System.Web.Services.Protocols.MimeParameterReader
CS.System.Web.Services.Protocols.MimeParameterReader = System.Web.Services.Protocols.MimeParameterReader

---@param request System.Web.HttpRequest
---@return System.Object[]
function System.Web.Services.Protocols.MimeParameterReader:Read(request) end

---@class System.Web.Services.Protocols.MimeParameterWriter : System.Web.Services.Protocols.MimeFormatter
---@field UsesWriteRequest boolean
---@field RequestEncoding System.Text.Encoding
System.Web.Services.Protocols.MimeParameterWriter = {}
---@alias CS.System.Web.Services.Protocols.MimeParameterWriter System.Web.Services.Protocols.MimeParameterWriter
CS.System.Web.Services.Protocols.MimeParameterWriter = System.Web.Services.Protocols.MimeParameterWriter

---@param url string
---@param parameters System.Object[]
---@return string
function System.Web.Services.Protocols.MimeParameterWriter:GetRequestUrl(url, parameters) end
---@param request System.Net.WebRequest
---@param values System.Object[]
function System.Web.Services.Protocols.MimeParameterWriter:InitializeRequest(request, values) end
---@param requestStream System.IO.Stream
---@param values System.Object[]
function System.Web.Services.Protocols.MimeParameterWriter:WriteRequest(requestStream, values) end

---@class System.Web.Services.Protocols.MimeReturnReader : System.Web.Services.Protocols.MimeFormatter
System.Web.Services.Protocols.MimeReturnReader = {}
---@alias CS.System.Web.Services.Protocols.MimeReturnReader System.Web.Services.Protocols.MimeReturnReader
CS.System.Web.Services.Protocols.MimeReturnReader = System.Web.Services.Protocols.MimeReturnReader

---@param response System.Net.WebResponse
---@param responseStream System.IO.Stream
---@return System.Object
function System.Web.Services.Protocols.MimeReturnReader:Read(response, responseStream) end

---@class System.Web.Services.Protocols.MimeReturnWriter : System.Web.Services.Protocols.MimeFormatter
System.Web.Services.Protocols.MimeReturnWriter = {}
---@alias CS.System.Web.Services.Protocols.MimeReturnWriter System.Web.Services.Protocols.MimeReturnWriter
CS.System.Web.Services.Protocols.MimeReturnWriter = System.Web.Services.Protocols.MimeReturnWriter


---@class System.Web.Services.Protocols.NopReturnReader : System.Web.Services.Protocols.MimeReturnReader
System.Web.Services.Protocols.NopReturnReader = {}
---@alias CS.System.Web.Services.Protocols.NopReturnReader System.Web.Services.Protocols.NopReturnReader
CS.System.Web.Services.Protocols.NopReturnReader = System.Web.Services.Protocols.NopReturnReader

---@return System.Web.Services.Protocols.NopReturnReader
function System.Web.Services.Protocols.NopReturnReader.New() end
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.NopReturnReader:GetInitializer(methodInfo) end
---@param initializer System.Object
function System.Web.Services.Protocols.NopReturnReader:Initialize(initializer) end
---@param response System.Net.WebResponse
---@param responseStream System.IO.Stream
---@return System.Object
function System.Web.Services.Protocols.NopReturnReader:Read(response, responseStream) end

---@class System.Web.Services.Protocols.PatternMatcher : System.Object
System.Web.Services.Protocols.PatternMatcher = {}
---@alias CS.System.Web.Services.Protocols.PatternMatcher System.Web.Services.Protocols.PatternMatcher
CS.System.Web.Services.Protocols.PatternMatcher = System.Web.Services.Protocols.PatternMatcher

---@param type System.Type
---@return System.Web.Services.Protocols.PatternMatcher
function System.Web.Services.Protocols.PatternMatcher.New(type) end
---@param text string
---@return System.Object
function System.Web.Services.Protocols.PatternMatcher:Match(text) end

---@class System.Web.Services.Protocols.MatchType : System.Object
System.Web.Services.Protocols.MatchType = {}
---@alias CS.System.Web.Services.Protocols.MatchType System.Web.Services.Protocols.MatchType
CS.System.Web.Services.Protocols.MatchType = System.Web.Services.Protocols.MatchType

---@return System.Web.Services.Protocols.MatchType
function System.Web.Services.Protocols.MatchType.New() end

---@class System.Web.Services.Protocols.MatchMember : System.Object
System.Web.Services.Protocols.MatchMember = {}
---@alias CS.System.Web.Services.Protocols.MatchMember System.Web.Services.Protocols.MatchMember
CS.System.Web.Services.Protocols.MatchMember = System.Web.Services.Protocols.MatchMember

---@return System.Web.Services.Protocols.MatchMember
function System.Web.Services.Protocols.MatchMember.New() end

---@class System.Web.Services.Protocols.RequestResponseUtils : System.Object
System.Web.Services.Protocols.RequestResponseUtils = {}
---@alias CS.System.Web.Services.Protocols.RequestResponseUtils System.Web.Services.Protocols.RequestResponseUtils
CS.System.Web.Services.Protocols.RequestResponseUtils = System.Web.Services.Protocols.RequestResponseUtils


---@class System.Web.Services.Protocols.RequestResponseUtils.HttpUtility : System.Object
System.Web.Services.Protocols.RequestResponseUtils.HttpUtility = {}
---@alias CS.System.Web.Services.Protocols.RequestResponseUtils.HttpUtility System.Web.Services.Protocols.RequestResponseUtils.HttpUtility
CS.System.Web.Services.Protocols.RequestResponseUtils.HttpUtility = System.Web.Services.Protocols.RequestResponseUtils.HttpUtility

---@param s string
---@param output System.IO.TextWriter
function System.Web.Services.Protocols.RequestResponseUtils.HttpUtility.HtmlDecode(s, output) end

---@class System.Web.Services.Protocols.RequestResponseUtils.HttpUtility.HtmlEntities : System.Object
System.Web.Services.Protocols.RequestResponseUtils.HttpUtility.HtmlEntities = {}
---@alias CS.System.Web.Services.Protocols.RequestResponseUtils.HttpUtility.HtmlEntities System.Web.Services.Protocols.RequestResponseUtils.HttpUtility.HtmlEntities
CS.System.Web.Services.Protocols.RequestResponseUtils.HttpUtility.HtmlEntities = System.Web.Services.Protocols.RequestResponseUtils.HttpUtility.HtmlEntities


---@class System.Web.Services.Protocols.RuntimeUtils : System.Object
System.Web.Services.Protocols.RuntimeUtils = {}
---@alias CS.System.Web.Services.Protocols.RuntimeUtils System.Web.Services.Protocols.RuntimeUtils
CS.System.Web.Services.Protocols.RuntimeUtils = System.Web.Services.Protocols.RuntimeUtils


---@class System.Web.Services.Protocols.ScalarFormatter : System.Object
System.Web.Services.Protocols.ScalarFormatter = {}
---@alias CS.System.Web.Services.Protocols.ScalarFormatter System.Web.Services.Protocols.ScalarFormatter
CS.System.Web.Services.Protocols.ScalarFormatter = System.Web.Services.Protocols.ScalarFormatter


---@class System.Web.Services.Protocols.UrlEncoder : System.Object
System.Web.Services.Protocols.UrlEncoder = {}
---@alias CS.System.Web.Services.Protocols.UrlEncoder System.Web.Services.Protocols.UrlEncoder
CS.System.Web.Services.Protocols.UrlEncoder = System.Web.Services.Protocols.UrlEncoder


---@class System.Web.Services.Protocols.ContentType : System.Object
System.Web.Services.Protocols.ContentType = {}
---@alias CS.System.Web.Services.Protocols.ContentType System.Web.Services.Protocols.ContentType
CS.System.Web.Services.Protocols.ContentType = System.Web.Services.Protocols.ContentType


---@class System.Web.Services.Protocols.MemberHelper : System.Object
System.Web.Services.Protocols.MemberHelper = {}
---@alias CS.System.Web.Services.Protocols.MemberHelper System.Web.Services.Protocols.MemberHelper
CS.System.Web.Services.Protocols.MemberHelper = System.Web.Services.Protocols.MemberHelper


---@class System.Web.Services.Protocols.ServerProtocol : System.Object
System.Web.Services.Protocols.ServerProtocol = {}
---@alias CS.System.Web.Services.Protocols.ServerProtocol System.Web.Services.Protocols.ServerProtocol
CS.System.Web.Services.Protocols.ServerProtocol = System.Web.Services.Protocols.ServerProtocol


---@class System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache : System.MulticastDelegate
System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache = {}
---@alias CS.System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache
CS.System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache = System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache

---@param object System.Object
---@param method System.IntPtr
---@return System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache
function System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache.New(object, method) end
---@param protocolType System.Type
---@param serverType System.Type
---@param originalKey string
---@return string
function System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache:Invoke(protocolType, serverType, originalKey) end
---@param protocolType System.Type
---@param serverType System.Type
---@param originalKey string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache:BeginInvoke(protocolType, serverType, originalKey, callback, object) end
---@param result System.IAsyncResult
---@return string
function System.Web.Services.Protocols.ServerProtocol.CreateCustomKeyForAspNetWebServiceMetadataCache:EndInvoke(result) end

---@class System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure : System.Object
---@field Pressure number
System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure = {}
---@alias CS.System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure
CS.System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure = System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure

---@return System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure
function System.Web.Services.Protocols.ServerProtocol.ServerProtocolCachePressure.New() end

---@class System.Web.Services.Protocols.ServerProtocolFactory : System.Object
System.Web.Services.Protocols.ServerProtocolFactory = {}
---@alias CS.System.Web.Services.Protocols.ServerProtocolFactory System.Web.Services.Protocols.ServerProtocolFactory
CS.System.Web.Services.Protocols.ServerProtocolFactory = System.Web.Services.Protocols.ServerProtocolFactory


---@class System.Web.Services.Protocols.ServerType : System.Object
System.Web.Services.Protocols.ServerType = {}
---@alias CS.System.Web.Services.Protocols.ServerType System.Web.Services.Protocols.ServerType
CS.System.Web.Services.Protocols.ServerType = System.Web.Services.Protocols.ServerType

---@param type System.Type
---@return System.Web.Services.Protocols.ServerType
function System.Web.Services.Protocols.ServerType.New(type) end

---@class System.Web.Services.Protocols.Soap11ServerProtocolHelper : System.Web.Services.Protocols.SoapServerProtocolHelper
System.Web.Services.Protocols.Soap11ServerProtocolHelper = {}
---@alias CS.System.Web.Services.Protocols.Soap11ServerProtocolHelper System.Web.Services.Protocols.Soap11ServerProtocolHelper
CS.System.Web.Services.Protocols.Soap11ServerProtocolHelper = System.Web.Services.Protocols.Soap11ServerProtocolHelper


---@class System.Web.Services.Protocols.Soap12ServerProtocolHelper : System.Web.Services.Protocols.SoapServerProtocolHelper
System.Web.Services.Protocols.Soap12ServerProtocolHelper = {}
---@alias CS.System.Web.Services.Protocols.Soap12ServerProtocolHelper System.Web.Services.Protocols.Soap12ServerProtocolHelper
CS.System.Web.Services.Protocols.Soap12ServerProtocolHelper = System.Web.Services.Protocols.Soap12ServerProtocolHelper


---@class System.Web.Services.Protocols.SoapClientMessage : System.Web.Services.Protocols.SoapMessage
---@field OneWay boolean
---@field Client System.Web.Services.Protocols.SoapHttpClientProtocol
---@field MethodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@field Url string
---@field Action string
---@field SoapVersion System.Web.Services.Protocols.SoapProtocolVersion
System.Web.Services.Protocols.SoapClientMessage = {}
---@alias CS.System.Web.Services.Protocols.SoapClientMessage System.Web.Services.Protocols.SoapClientMessage
CS.System.Web.Services.Protocols.SoapClientMessage = System.Web.Services.Protocols.SoapClientMessage


---@class System.Web.Services.Protocols.SoapClientType : System.Object
System.Web.Services.Protocols.SoapClientType = {}
---@alias CS.System.Web.Services.Protocols.SoapClientType System.Web.Services.Protocols.SoapClientType
CS.System.Web.Services.Protocols.SoapClientType = System.Web.Services.Protocols.SoapClientType


---@class System.Web.Services.Protocols.SoapClientMethod : System.Object
System.Web.Services.Protocols.SoapClientMethod = {}
---@alias CS.System.Web.Services.Protocols.SoapClientMethod System.Web.Services.Protocols.SoapClientMethod
CS.System.Web.Services.Protocols.SoapClientMethod = System.Web.Services.Protocols.SoapClientMethod

---@return System.Web.Services.Protocols.SoapClientMethod
function System.Web.Services.Protocols.SoapClientMethod.New() end

---@class System.Web.Services.Protocols.SoapHttpClientProtocol : System.Web.Services.Protocols.HttpWebClientProtocol
---@field SoapVersion System.Web.Services.Protocols.SoapProtocolVersion
System.Web.Services.Protocols.SoapHttpClientProtocol = {}
---@alias CS.System.Web.Services.Protocols.SoapHttpClientProtocol System.Web.Services.Protocols.SoapHttpClientProtocol
CS.System.Web.Services.Protocols.SoapHttpClientProtocol = System.Web.Services.Protocols.SoapHttpClientProtocol

---@return System.Web.Services.Protocols.SoapHttpClientProtocol
function System.Web.Services.Protocols.SoapHttpClientProtocol.New() end
function System.Web.Services.Protocols.SoapHttpClientProtocol:Discover() end

---@class System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState : System.Object
---@field MethodName string
---@field Parameters System.Object[]
---@field Message System.Web.Services.Protocols.SoapClientMessage
System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState = {}
---@alias CS.System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState
CS.System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState = System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState

---@param methodName string
---@param parameters System.Object[]
---@return System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState
function System.Web.Services.Protocols.SoapHttpClientProtocol.InvokeAsyncState.New(methodName, parameters) end

---@class System.Web.Services.Protocols.SoapDocumentMethodAttribute : System.Attribute
---@field Action string
---@field OneWay boolean
---@field RequestNamespace string
---@field ResponseNamespace string
---@field RequestElementName string
---@field ResponseElementName string
---@field Use System.Web.Services.Description.SoapBindingUse
---@field ParameterStyle System.Web.Services.Protocols.SoapParameterStyle
---@field Binding string
System.Web.Services.Protocols.SoapDocumentMethodAttribute = {}
---@alias CS.System.Web.Services.Protocols.SoapDocumentMethodAttribute System.Web.Services.Protocols.SoapDocumentMethodAttribute
CS.System.Web.Services.Protocols.SoapDocumentMethodAttribute = System.Web.Services.Protocols.SoapDocumentMethodAttribute

---@overload fun() : System.Web.Services.Protocols.SoapDocumentMethodAttribute
---@param action string
---@return System.Web.Services.Protocols.SoapDocumentMethodAttribute
function System.Web.Services.Protocols.SoapDocumentMethodAttribute.New(action) end

---@class System.Web.Services.Protocols.SoapDocumentServiceAttribute : System.Attribute
---@field Use System.Web.Services.Description.SoapBindingUse
---@field ParameterStyle System.Web.Services.Protocols.SoapParameterStyle
---@field RoutingStyle System.Web.Services.Protocols.SoapServiceRoutingStyle
System.Web.Services.Protocols.SoapDocumentServiceAttribute = {}
---@alias CS.System.Web.Services.Protocols.SoapDocumentServiceAttribute System.Web.Services.Protocols.SoapDocumentServiceAttribute
CS.System.Web.Services.Protocols.SoapDocumentServiceAttribute = System.Web.Services.Protocols.SoapDocumentServiceAttribute

---@overload fun() : System.Web.Services.Protocols.SoapDocumentServiceAttribute
---@overload fun(use: System.Web.Services.Description.SoapBindingUse) : System.Web.Services.Protocols.SoapDocumentServiceAttribute
---@param use System.Web.Services.Description.SoapBindingUse
---@param paramStyle System.Web.Services.Protocols.SoapParameterStyle
---@return System.Web.Services.Protocols.SoapDocumentServiceAttribute
function System.Web.Services.Protocols.SoapDocumentServiceAttribute.New(use, paramStyle) end

---@class System.Web.Services.Protocols.SoapException : System.SystemException
---@field ServerFaultCode System.Xml.XmlQualifiedName
---@field ClientFaultCode System.Xml.XmlQualifiedName
---@field VersionMismatchFaultCode System.Xml.XmlQualifiedName
---@field MustUnderstandFaultCode System.Xml.XmlQualifiedName
---@field DetailElementName System.Xml.XmlQualifiedName
---@field Actor string
---@field Code System.Xml.XmlQualifiedName
---@field Detail System.Xml.XmlNode
---@field Lang string
---@field Node string
---@field Role string
---@field SubCode System.Web.Services.Protocols.SoapFaultSubCode
System.Web.Services.Protocols.SoapException = {}
---@alias CS.System.Web.Services.Protocols.SoapException System.Web.Services.Protocols.SoapException
CS.System.Web.Services.Protocols.SoapException = System.Web.Services.Protocols.SoapException

---@overload fun() : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string) : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string, innerException: System.Exception) : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName) : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, innerException: System.Exception) : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string, detail: System.Xml.XmlNode) : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string, detail: System.Xml.XmlNode, innerException: System.Exception) : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, subCode: System.Web.Services.Protocols.SoapFaultSubCode) : System.Web.Services.Protocols.SoapException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string, role: string, detail: System.Xml.XmlNode, subCode: System.Web.Services.Protocols.SoapFaultSubCode, innerException: System.Exception) : System.Web.Services.Protocols.SoapException
---@param message string
---@param code System.Xml.XmlQualifiedName
---@param actor string
---@param role string
---@param lang string
---@param detail System.Xml.XmlNode
---@param subCode System.Web.Services.Protocols.SoapFaultSubCode
---@param innerException System.Exception
---@return System.Web.Services.Protocols.SoapException
function System.Web.Services.Protocols.SoapException.New(message, code, actor, role, lang, detail, subCode, innerException) end
---@param code System.Xml.XmlQualifiedName
---@return boolean
function System.Web.Services.Protocols.SoapException.IsServerFaultCode(code) end
---@param code System.Xml.XmlQualifiedName
---@return boolean
function System.Web.Services.Protocols.SoapException.IsClientFaultCode(code) end
---@param code System.Xml.XmlQualifiedName
---@return boolean
function System.Web.Services.Protocols.SoapException.IsVersionMismatchFaultCode(code) end
---@param code System.Xml.XmlQualifiedName
---@return boolean
function System.Web.Services.Protocols.SoapException.IsMustUnderstandFaultCode(code) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Web.Services.Protocols.SoapException:GetObjectData(info, context) end

---@class System.Web.Services.Protocols.SoapExtension : System.Object
System.Web.Services.Protocols.SoapExtension = {}
---@alias CS.System.Web.Services.Protocols.SoapExtension System.Web.Services.Protocols.SoapExtension
CS.System.Web.Services.Protocols.SoapExtension = System.Web.Services.Protocols.SoapExtension

---@overload fun(self: System.Web.Services.Protocols.SoapExtension, methodInfo: System.Web.Services.Protocols.LogicalMethodInfo, attribute: System.Web.Services.Protocols.SoapExtensionAttribute) : System.Object
---@param serviceType System.Type
---@return System.Object
function System.Web.Services.Protocols.SoapExtension:GetInitializer(serviceType) end
---@param initializer System.Object
function System.Web.Services.Protocols.SoapExtension:Initialize(initializer) end
---@param message System.Web.Services.Protocols.SoapMessage
function System.Web.Services.Protocols.SoapExtension:ProcessMessage(message) end
---@param stream System.IO.Stream
---@return System.IO.Stream
function System.Web.Services.Protocols.SoapExtension:ChainStream(stream) end

---@class System.Web.Services.Protocols.SoapExtensionAttribute : System.Attribute
---@field ExtensionType System.Type
---@field Priority number
System.Web.Services.Protocols.SoapExtensionAttribute = {}
---@alias CS.System.Web.Services.Protocols.SoapExtensionAttribute System.Web.Services.Protocols.SoapExtensionAttribute
CS.System.Web.Services.Protocols.SoapExtensionAttribute = System.Web.Services.Protocols.SoapExtensionAttribute


---@class System.Web.Services.Protocols.SoapExtensionStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
System.Web.Services.Protocols.SoapExtensionStream = {}
---@alias CS.System.Web.Services.Protocols.SoapExtensionStream System.Web.Services.Protocols.SoapExtensionStream
CS.System.Web.Services.Protocols.SoapExtensionStream = System.Web.Services.Protocols.SoapExtensionStream

function System.Web.Services.Protocols.SoapExtensionStream:Flush() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.Services.Protocols.SoapExtensionStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Web.Services.Protocols.SoapExtensionStream:EndRead(asyncResult) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Web.Services.Protocols.SoapExtensionStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.Web.Services.Protocols.SoapExtensionStream:EndWrite(asyncResult) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Web.Services.Protocols.SoapExtensionStream:Seek(offset, origin) end
---@param value number
function System.Web.Services.Protocols.SoapExtensionStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Web.Services.Protocols.SoapExtensionStream:Read(buffer, offset, count) end
---@return number
function System.Web.Services.Protocols.SoapExtensionStream:ReadByte() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Web.Services.Protocols.SoapExtensionStream:Write(buffer, offset, count) end
---@param value number
function System.Web.Services.Protocols.SoapExtensionStream:WriteByte(value) end

---@class System.Web.Services.Protocols.Soap12FaultCodes : System.Object
---@field ReceiverFaultCode System.Xml.XmlQualifiedName
---@field SenderFaultCode System.Xml.XmlQualifiedName
---@field VersionMismatchFaultCode System.Xml.XmlQualifiedName
---@field MustUnderstandFaultCode System.Xml.XmlQualifiedName
---@field DataEncodingUnknownFaultCode System.Xml.XmlQualifiedName
---@field RpcProcedureNotPresentFaultCode System.Xml.XmlQualifiedName
---@field RpcBadArgumentsFaultCode System.Xml.XmlQualifiedName
---@field EncodingMissingIdFaultCode System.Xml.XmlQualifiedName
---@field EncodingUntypedValueFaultCode System.Xml.XmlQualifiedName
System.Web.Services.Protocols.Soap12FaultCodes = {}
---@alias CS.System.Web.Services.Protocols.Soap12FaultCodes System.Web.Services.Protocols.Soap12FaultCodes
CS.System.Web.Services.Protocols.Soap12FaultCodes = System.Web.Services.Protocols.Soap12FaultCodes


---@class System.Web.Services.Protocols.SoapFaultSubCode : System.Object
---@field Code System.Xml.XmlQualifiedName
---@field SubCode System.Web.Services.Protocols.SoapFaultSubCode
System.Web.Services.Protocols.SoapFaultSubCode = {}
---@alias CS.System.Web.Services.Protocols.SoapFaultSubCode System.Web.Services.Protocols.SoapFaultSubCode
CS.System.Web.Services.Protocols.SoapFaultSubCode = System.Web.Services.Protocols.SoapFaultSubCode

---@overload fun(code: System.Xml.XmlQualifiedName) : System.Web.Services.Protocols.SoapFaultSubCode
---@param code System.Xml.XmlQualifiedName
---@param subCode System.Web.Services.Protocols.SoapFaultSubCode
---@return System.Web.Services.Protocols.SoapFaultSubCode
function System.Web.Services.Protocols.SoapFaultSubCode.New(code, subCode) end

---@class System.Web.Services.Protocols.SoapHeader : System.Object
---@field EncodedMustUnderstand string
---@field EncodedMustUnderstand12 string
---@field MustUnderstand boolean
---@field Actor string
---@field Role string
---@field DidUnderstand boolean
---@field EncodedRelay string
---@field Relay boolean
System.Web.Services.Protocols.SoapHeader = {}
---@alias CS.System.Web.Services.Protocols.SoapHeader System.Web.Services.Protocols.SoapHeader
CS.System.Web.Services.Protocols.SoapHeader = System.Web.Services.Protocols.SoapHeader


---@class System.Web.Services.Protocols.SoapHeaderMapping : System.Object
---@field HeaderType System.Type
---@field Repeats boolean
---@field Custom boolean
---@field Direction System.Web.Services.Protocols.SoapHeaderDirection
---@field MemberInfo System.Reflection.MemberInfo
System.Web.Services.Protocols.SoapHeaderMapping = {}
---@alias CS.System.Web.Services.Protocols.SoapHeaderMapping System.Web.Services.Protocols.SoapHeaderMapping
CS.System.Web.Services.Protocols.SoapHeaderMapping = System.Web.Services.Protocols.SoapHeaderMapping


---@class System.Web.Services.Protocols.SoapHeaderHandling : System.Object
System.Web.Services.Protocols.SoapHeaderHandling = {}
---@alias CS.System.Web.Services.Protocols.SoapHeaderHandling System.Web.Services.Protocols.SoapHeaderHandling
CS.System.Web.Services.Protocols.SoapHeaderHandling = System.Web.Services.Protocols.SoapHeaderHandling

---@return System.Web.Services.Protocols.SoapHeaderHandling
function System.Web.Services.Protocols.SoapHeaderHandling.New() end
---@param writer System.Xml.XmlWriter
---@param serializer System.Xml.Serialization.XmlSerializer
---@param headers System.Web.Services.Protocols.SoapHeaderCollection
---@param mappings System.Web.Services.Protocols.SoapHeaderMapping[]
---@param direction System.Web.Services.Protocols.SoapHeaderDirection
---@param isEncoded boolean
---@param defaultNS string
---@param serviceDefaultIsEncoded boolean
---@param envelopeNS string
function System.Web.Services.Protocols.SoapHeaderHandling.WriteHeaders(writer, serializer, headers, mappings, direction, isEncoded, defaultNS, serviceDefaultIsEncoded, envelopeNS) end
---@param writer System.Xml.XmlWriter
---@param headers System.Web.Services.Protocols.SoapHeaderCollection
---@param envelopeNS string
function System.Web.Services.Protocols.SoapHeaderHandling.WriteUnknownHeaders(writer, headers, envelopeNS) end
---@param headers System.Web.Services.Protocols.SoapHeaderCollection
---@param target System.Object
---@param mappings System.Web.Services.Protocols.SoapHeaderMapping[]
---@param direction System.Web.Services.Protocols.SoapHeaderDirection
---@param client boolean
function System.Web.Services.Protocols.SoapHeaderHandling.SetHeaderMembers(headers, target, mappings, direction, client) end
---@param headers System.Web.Services.Protocols.SoapHeaderCollection
---@param target System.Object
---@param mappings System.Web.Services.Protocols.SoapHeaderMapping[]
---@param direction System.Web.Services.Protocols.SoapHeaderDirection
---@param client boolean
function System.Web.Services.Protocols.SoapHeaderHandling.GetHeaderMembers(headers, target, mappings, direction, client) end
---@param headers System.Web.Services.Protocols.SoapHeaderCollection
function System.Web.Services.Protocols.SoapHeaderHandling.EnsureHeadersUnderstood(headers) end
---@param reader System.Xml.XmlReader
---@param serializer System.Xml.Serialization.XmlSerializer
---@param headers System.Web.Services.Protocols.SoapHeaderCollection
---@param mappings System.Web.Services.Protocols.SoapHeaderMapping[]
---@param direction System.Web.Services.Protocols.SoapHeaderDirection
---@param envelopeNS string
---@param encodingStyle string
---@param checkRequiredHeaders boolean
---@return string
function System.Web.Services.Protocols.SoapHeaderHandling:ReadHeaders(reader, serializer, headers, mappings, direction, envelopeNS, encodingStyle, checkRequiredHeaders) end

---@class System.Web.Services.Protocols.SoapHeaderAttribute : System.Attribute
---@field MemberName string
---@field Direction System.Web.Services.Protocols.SoapHeaderDirection
System.Web.Services.Protocols.SoapHeaderAttribute = {}
---@alias CS.System.Web.Services.Protocols.SoapHeaderAttribute System.Web.Services.Protocols.SoapHeaderAttribute
CS.System.Web.Services.Protocols.SoapHeaderAttribute = System.Web.Services.Protocols.SoapHeaderAttribute

---@param memberName string
---@return System.Web.Services.Protocols.SoapHeaderAttribute
function System.Web.Services.Protocols.SoapHeaderAttribute.New(memberName) end

---@class System.Web.Services.Protocols.SoapHeaderDirection
---@field In System.Web.Services.Protocols.SoapHeaderDirection
---@field Out System.Web.Services.Protocols.SoapHeaderDirection
---@field InOut System.Web.Services.Protocols.SoapHeaderDirection
---@field Fault System.Web.Services.Protocols.SoapHeaderDirection
System.Web.Services.Protocols.SoapHeaderDirection = {}
---@alias CS.System.Web.Services.Protocols.SoapHeaderDirection System.Web.Services.Protocols.SoapHeaderDirection
CS.System.Web.Services.Protocols.SoapHeaderDirection = System.Web.Services.Protocols.SoapHeaderDirection


---@class System.Web.Services.Protocols.SoapHeaderException : System.Web.Services.Protocols.SoapException
System.Web.Services.Protocols.SoapHeaderException = {}
---@alias CS.System.Web.Services.Protocols.SoapHeaderException System.Web.Services.Protocols.SoapHeaderException
CS.System.Web.Services.Protocols.SoapHeaderException = System.Web.Services.Protocols.SoapHeaderException

---@overload fun() : System.Web.Services.Protocols.SoapHeaderException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string) : System.Web.Services.Protocols.SoapHeaderException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string, innerException: System.Exception) : System.Web.Services.Protocols.SoapHeaderException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName) : System.Web.Services.Protocols.SoapHeaderException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, innerException: System.Exception) : System.Web.Services.Protocols.SoapHeaderException
---@overload fun(message: string, code: System.Xml.XmlQualifiedName, actor: string, role: string, subCode: System.Web.Services.Protocols.SoapFaultSubCode, innerException: System.Exception) : System.Web.Services.Protocols.SoapHeaderException
---@param message string
---@param code System.Xml.XmlQualifiedName
---@param actor string
---@param role string
---@param lang string
---@param subCode System.Web.Services.Protocols.SoapFaultSubCode
---@param innerException System.Exception
---@return System.Web.Services.Protocols.SoapHeaderException
function System.Web.Services.Protocols.SoapHeaderException.New(message, code, actor, role, lang, subCode, innerException) end

---@class System.Web.Services.Protocols.SoapHeaderCollection : System.Collections.CollectionBase
---@field Item System.Web.Services.Protocols.SoapHeader
System.Web.Services.Protocols.SoapHeaderCollection = {}
---@alias CS.System.Web.Services.Protocols.SoapHeaderCollection System.Web.Services.Protocols.SoapHeaderCollection
CS.System.Web.Services.Protocols.SoapHeaderCollection = System.Web.Services.Protocols.SoapHeaderCollection

---@return System.Web.Services.Protocols.SoapHeaderCollection
function System.Web.Services.Protocols.SoapHeaderCollection.New() end
---@param header System.Web.Services.Protocols.SoapHeader
---@return number
function System.Web.Services.Protocols.SoapHeaderCollection:Add(header) end
---@param index number
---@param header System.Web.Services.Protocols.SoapHeader
function System.Web.Services.Protocols.SoapHeaderCollection:Insert(index, header) end
---@param header System.Web.Services.Protocols.SoapHeader
---@return number
function System.Web.Services.Protocols.SoapHeaderCollection:IndexOf(header) end
---@param header System.Web.Services.Protocols.SoapHeader
---@return boolean
function System.Web.Services.Protocols.SoapHeaderCollection:Contains(header) end
---@param header System.Web.Services.Protocols.SoapHeader
function System.Web.Services.Protocols.SoapHeaderCollection:Remove(header) end
---@param array System.Web.Services.Protocols.SoapHeader[]
---@param index number
function System.Web.Services.Protocols.SoapHeaderCollection:CopyTo(array, index) end

---@class System.Web.Services.Protocols.SoapMessage : System.Object
---@field OneWay boolean
---@field Exception System.Web.Services.Protocols.SoapException
---@field MethodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@field Headers System.Web.Services.Protocols.SoapHeaderCollection
---@field Stream System.IO.Stream
---@field ContentType string
---@field ContentEncoding string
---@field Stage System.Web.Services.Protocols.SoapMessageStage
---@field Url string
---@field Action string
---@field SoapVersion System.Web.Services.Protocols.SoapProtocolVersion
System.Web.Services.Protocols.SoapMessage = {}
---@alias CS.System.Web.Services.Protocols.SoapMessage System.Web.Services.Protocols.SoapMessage
CS.System.Web.Services.Protocols.SoapMessage = System.Web.Services.Protocols.SoapMessage

---@param index number
---@return System.Object
function System.Web.Services.Protocols.SoapMessage:GetInParameterValue(index) end
---@param index number
---@return System.Object
function System.Web.Services.Protocols.SoapMessage:GetOutParameterValue(index) end
---@return System.Object
function System.Web.Services.Protocols.SoapMessage:GetReturnValue() end

---@class System.Web.Services.Protocols.SoapMessageStage
---@field BeforeSerialize System.Web.Services.Protocols.SoapMessageStage
---@field AfterSerialize System.Web.Services.Protocols.SoapMessageStage
---@field BeforeDeserialize System.Web.Services.Protocols.SoapMessageStage
---@field AfterDeserialize System.Web.Services.Protocols.SoapMessageStage
System.Web.Services.Protocols.SoapMessageStage = {}
---@alias CS.System.Web.Services.Protocols.SoapMessageStage System.Web.Services.Protocols.SoapMessageStage
CS.System.Web.Services.Protocols.SoapMessageStage = System.Web.Services.Protocols.SoapMessageStage


---@class System.Web.Services.Protocols.SoapParameterStyle
---@field Default System.Web.Services.Protocols.SoapParameterStyle
---@field Bare System.Web.Services.Protocols.SoapParameterStyle
---@field Wrapped System.Web.Services.Protocols.SoapParameterStyle
System.Web.Services.Protocols.SoapParameterStyle = {}
---@alias CS.System.Web.Services.Protocols.SoapParameterStyle System.Web.Services.Protocols.SoapParameterStyle
CS.System.Web.Services.Protocols.SoapParameterStyle = System.Web.Services.Protocols.SoapParameterStyle


---@class System.Web.Services.Protocols.SoapProtocolVersion
---@field Default System.Web.Services.Protocols.SoapProtocolVersion
---@field Soap11 System.Web.Services.Protocols.SoapProtocolVersion
---@field Soap12 System.Web.Services.Protocols.SoapProtocolVersion
System.Web.Services.Protocols.SoapProtocolVersion = {}
---@alias CS.System.Web.Services.Protocols.SoapProtocolVersion System.Web.Services.Protocols.SoapProtocolVersion
CS.System.Web.Services.Protocols.SoapProtocolVersion = System.Web.Services.Protocols.SoapProtocolVersion


---@class System.Web.Services.Protocols.SoapReflectedHeader : System.Object
System.Web.Services.Protocols.SoapReflectedHeader = {}
---@alias CS.System.Web.Services.Protocols.SoapReflectedHeader System.Web.Services.Protocols.SoapReflectedHeader
CS.System.Web.Services.Protocols.SoapReflectedHeader = System.Web.Services.Protocols.SoapReflectedHeader

---@return System.Web.Services.Protocols.SoapReflectedHeader
function System.Web.Services.Protocols.SoapReflectedHeader.New() end

---@class System.Web.Services.Protocols.SoapReflectedExtension : System.Object
System.Web.Services.Protocols.SoapReflectedExtension = {}
---@alias CS.System.Web.Services.Protocols.SoapReflectedExtension System.Web.Services.Protocols.SoapReflectedExtension
CS.System.Web.Services.Protocols.SoapReflectedExtension = System.Web.Services.Protocols.SoapReflectedExtension

---@param o System.Object
---@return number
function System.Web.Services.Protocols.SoapReflectedExtension:CompareTo(o) end

---@class System.Web.Services.Protocols.SoapReflectedMethod : System.Object
System.Web.Services.Protocols.SoapReflectedMethod = {}
---@alias CS.System.Web.Services.Protocols.SoapReflectedMethod System.Web.Services.Protocols.SoapReflectedMethod
CS.System.Web.Services.Protocols.SoapReflectedMethod = System.Web.Services.Protocols.SoapReflectedMethod

---@return System.Web.Services.Protocols.SoapReflectedMethod
function System.Web.Services.Protocols.SoapReflectedMethod.New() end

---@class System.Web.Services.Protocols.SoapHeaderAttributeComparer : System.Object
System.Web.Services.Protocols.SoapHeaderAttributeComparer = {}
---@alias CS.System.Web.Services.Protocols.SoapHeaderAttributeComparer System.Web.Services.Protocols.SoapHeaderAttributeComparer
CS.System.Web.Services.Protocols.SoapHeaderAttributeComparer = System.Web.Services.Protocols.SoapHeaderAttributeComparer

---@return System.Web.Services.Protocols.SoapHeaderAttributeComparer
function System.Web.Services.Protocols.SoapHeaderAttributeComparer.New() end
---@param x System.Object
---@param y System.Object
---@return number
function System.Web.Services.Protocols.SoapHeaderAttributeComparer:Compare(x, y) end

---@class System.Web.Services.Protocols.SoapReflector : System.Object
System.Web.Services.Protocols.SoapReflector = {}
---@alias CS.System.Web.Services.Protocols.SoapReflector System.Web.Services.Protocols.SoapReflector
CS.System.Web.Services.Protocols.SoapReflector = System.Web.Services.Protocols.SoapReflector


---@class System.Web.Services.Protocols.SoapReflector.SoapParameterInfo : System.Object
System.Web.Services.Protocols.SoapReflector.SoapParameterInfo = {}
---@alias CS.System.Web.Services.Protocols.SoapReflector.SoapParameterInfo System.Web.Services.Protocols.SoapReflector.SoapParameterInfo
CS.System.Web.Services.Protocols.SoapReflector.SoapParameterInfo = System.Web.Services.Protocols.SoapReflector.SoapParameterInfo

---@return System.Web.Services.Protocols.SoapReflector.SoapParameterInfo
function System.Web.Services.Protocols.SoapReflector.SoapParameterInfo.New() end

---@class System.Web.Services.Protocols.SoapReflector.MethodAttribute : System.Object
System.Web.Services.Protocols.SoapReflector.MethodAttribute = {}
---@alias CS.System.Web.Services.Protocols.SoapReflector.MethodAttribute System.Web.Services.Protocols.SoapReflector.MethodAttribute
CS.System.Web.Services.Protocols.SoapReflector.MethodAttribute = System.Web.Services.Protocols.SoapReflector.MethodAttribute

---@return System.Web.Services.Protocols.SoapReflector.MethodAttribute
function System.Web.Services.Protocols.SoapReflector.MethodAttribute.New() end

---@class System.Web.Services.Protocols.SoapRpcMethodAttribute : System.Attribute
---@field Action string
---@field Binding string
---@field OneWay boolean
---@field RequestNamespace string
---@field ResponseNamespace string
---@field RequestElementName string
---@field ResponseElementName string
---@field Use System.Web.Services.Description.SoapBindingUse
System.Web.Services.Protocols.SoapRpcMethodAttribute = {}
---@alias CS.System.Web.Services.Protocols.SoapRpcMethodAttribute System.Web.Services.Protocols.SoapRpcMethodAttribute
CS.System.Web.Services.Protocols.SoapRpcMethodAttribute = System.Web.Services.Protocols.SoapRpcMethodAttribute

---@overload fun() : System.Web.Services.Protocols.SoapRpcMethodAttribute
---@param action string
---@return System.Web.Services.Protocols.SoapRpcMethodAttribute
function System.Web.Services.Protocols.SoapRpcMethodAttribute.New(action) end

---@class System.Web.Services.Protocols.SoapRpcServiceAttribute : System.Attribute
---@field RoutingStyle System.Web.Services.Protocols.SoapServiceRoutingStyle
---@field Use System.Web.Services.Description.SoapBindingUse
System.Web.Services.Protocols.SoapRpcServiceAttribute = {}
---@alias CS.System.Web.Services.Protocols.SoapRpcServiceAttribute System.Web.Services.Protocols.SoapRpcServiceAttribute
CS.System.Web.Services.Protocols.SoapRpcServiceAttribute = System.Web.Services.Protocols.SoapRpcServiceAttribute

---@return System.Web.Services.Protocols.SoapRpcServiceAttribute
function System.Web.Services.Protocols.SoapRpcServiceAttribute.New() end

---@class System.Web.Services.Protocols.SoapServerMessage : System.Web.Services.Protocols.SoapMessage
---@field OneWay boolean
---@field Url string
---@field Action string
---@field SoapVersion System.Web.Services.Protocols.SoapProtocolVersion
---@field Server System.Object
---@field MethodInfo System.Web.Services.Protocols.LogicalMethodInfo
System.Web.Services.Protocols.SoapServerMessage = {}
---@alias CS.System.Web.Services.Protocols.SoapServerMessage System.Web.Services.Protocols.SoapServerMessage
CS.System.Web.Services.Protocols.SoapServerMessage = System.Web.Services.Protocols.SoapServerMessage


---@class System.Web.Services.Protocols.SoapServerMethod : System.Object
---@field MethodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@field ReturnSerializer System.Xml.Serialization.XmlSerializer
---@field ParameterSerializer System.Xml.Serialization.XmlSerializer
---@field InHeaderSerializer System.Xml.Serialization.XmlSerializer
---@field OutHeaderSerializer System.Xml.Serialization.XmlSerializer
---@field InHeaderMappings System.Web.Services.Protocols.SoapHeaderMapping[]
---@field OutHeaderMappings System.Web.Services.Protocols.SoapHeaderMapping[]
---@field Action string
---@field OneWay boolean
---@field Rpc boolean
---@field BindingUse System.Web.Services.Description.SoapBindingUse
---@field ParameterStyle System.Web.Services.Protocols.SoapParameterStyle
---@field WsiClaims System.Web.Services.WsiProfiles
System.Web.Services.Protocols.SoapServerMethod = {}
---@alias CS.System.Web.Services.Protocols.SoapServerMethod System.Web.Services.Protocols.SoapServerMethod
CS.System.Web.Services.Protocols.SoapServerMethod = System.Web.Services.Protocols.SoapServerMethod

---@overload fun() : System.Web.Services.Protocols.SoapServerMethod
---@param serverType System.Type
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Web.Services.Protocols.SoapServerMethod
function System.Web.Services.Protocols.SoapServerMethod.New(serverType, methodInfo) end

---@class System.Web.Services.Protocols.SoapServerType : System.Web.Services.Protocols.ServerType
---@field ServiceNamespace string
---@field ServiceDefaultIsEncoded boolean
---@field ServiceRoutingOnSoapAction boolean
System.Web.Services.Protocols.SoapServerType = {}
---@alias CS.System.Web.Services.Protocols.SoapServerType System.Web.Services.Protocols.SoapServerType
CS.System.Web.Services.Protocols.SoapServerType = System.Web.Services.Protocols.SoapServerType

---@param type System.Type
---@param protocolsSupported System.Web.Services.Configuration.WebServiceProtocols
---@return System.Web.Services.Protocols.SoapServerType
function System.Web.Services.Protocols.SoapServerType.New(type, protocolsSupported) end
---@param key System.Object
---@return System.Web.Services.Protocols.SoapServerMethod
function System.Web.Services.Protocols.SoapServerType:GetMethod(key) end
---@param key System.Object
---@return System.Web.Services.Protocols.SoapServerMethod
function System.Web.Services.Protocols.SoapServerType:GetDuplicateMethod(key) end

---@class System.Web.Services.Protocols.SoapServerProtocolFactory : System.Web.Services.Protocols.ServerProtocolFactory
System.Web.Services.Protocols.SoapServerProtocolFactory = {}
---@alias CS.System.Web.Services.Protocols.SoapServerProtocolFactory System.Web.Services.Protocols.SoapServerProtocolFactory
CS.System.Web.Services.Protocols.SoapServerProtocolFactory = System.Web.Services.Protocols.SoapServerProtocolFactory

---@return System.Web.Services.Protocols.SoapServerProtocolFactory
function System.Web.Services.Protocols.SoapServerProtocolFactory.New() end

---@class System.Web.Services.Protocols.SoapServerProtocol : System.Web.Services.Protocols.ServerProtocol
System.Web.Services.Protocols.SoapServerProtocol = {}
---@alias CS.System.Web.Services.Protocols.SoapServerProtocol System.Web.Services.Protocols.SoapServerProtocol
CS.System.Web.Services.Protocols.SoapServerProtocol = System.Web.Services.Protocols.SoapServerProtocol


---@class System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader : System.Xml.XmlTextReader
System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader = {}
---@alias CS.System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader
CS.System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader = System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader

---@return boolean
function System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader:Read() end
---@return boolean
function System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader:MoveToNextAttribute() end
---@return System.Xml.XmlNodeType
function System.Web.Services.Protocols.SoapServerProtocol.SoapEnvelopeReader:MoveToContent() end

---@class System.Web.Services.Protocols.SoapServerProtocolHelper : System.Object
System.Web.Services.Protocols.SoapServerProtocolHelper = {}
---@alias CS.System.Web.Services.Protocols.SoapServerProtocolHelper System.Web.Services.Protocols.SoapServerProtocolHelper
CS.System.Web.Services.Protocols.SoapServerProtocolHelper = System.Web.Services.Protocols.SoapServerProtocolHelper


---@class System.Web.Services.Protocols.SoapServiceRoutingStyle
---@field SoapAction System.Web.Services.Protocols.SoapServiceRoutingStyle
---@field RequestElement System.Web.Services.Protocols.SoapServiceRoutingStyle
System.Web.Services.Protocols.SoapServiceRoutingStyle = {}
---@alias CS.System.Web.Services.Protocols.SoapServiceRoutingStyle System.Web.Services.Protocols.SoapServiceRoutingStyle
CS.System.Web.Services.Protocols.SoapServiceRoutingStyle = System.Web.Services.Protocols.SoapServiceRoutingStyle


---@class System.Web.Services.Protocols.SoapUnknownHeader : System.Web.Services.Protocols.SoapHeader
---@field Element System.Xml.XmlElement
System.Web.Services.Protocols.SoapUnknownHeader = {}
---@alias CS.System.Web.Services.Protocols.SoapUnknownHeader System.Web.Services.Protocols.SoapUnknownHeader
CS.System.Web.Services.Protocols.SoapUnknownHeader = System.Web.Services.Protocols.SoapUnknownHeader

---@return System.Web.Services.Protocols.SoapUnknownHeader
function System.Web.Services.Protocols.SoapUnknownHeader.New() end

---@class System.Web.Services.Protocols.TextReturnReader : System.Web.Services.Protocols.MimeReturnReader
System.Web.Services.Protocols.TextReturnReader = {}
---@alias CS.System.Web.Services.Protocols.TextReturnReader System.Web.Services.Protocols.TextReturnReader
CS.System.Web.Services.Protocols.TextReturnReader = System.Web.Services.Protocols.TextReturnReader

---@return System.Web.Services.Protocols.TextReturnReader
function System.Web.Services.Protocols.TextReturnReader.New() end
---@param o System.Object
function System.Web.Services.Protocols.TextReturnReader:Initialize(o) end
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.TextReturnReader:GetInitializer(methodInfo) end
---@param response System.Net.WebResponse
---@param responseStream System.IO.Stream
---@return System.Object
function System.Web.Services.Protocols.TextReturnReader:Read(response, responseStream) end

---@class System.Web.Services.Protocols.UrlEncodedParameterWriter : System.Web.Services.Protocols.MimeParameterWriter
---@field RequestEncoding System.Text.Encoding
System.Web.Services.Protocols.UrlEncodedParameterWriter = {}
---@alias CS.System.Web.Services.Protocols.UrlEncodedParameterWriter System.Web.Services.Protocols.UrlEncodedParameterWriter
CS.System.Web.Services.Protocols.UrlEncodedParameterWriter = System.Web.Services.Protocols.UrlEncodedParameterWriter

---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.UrlEncodedParameterWriter:GetInitializer(methodInfo) end
---@param initializer System.Object
function System.Web.Services.Protocols.UrlEncodedParameterWriter:Initialize(initializer) end

---@class System.Web.Services.Protocols.UrlParameterReader : System.Web.Services.Protocols.ValueCollectionParameterReader
System.Web.Services.Protocols.UrlParameterReader = {}
---@alias CS.System.Web.Services.Protocols.UrlParameterReader System.Web.Services.Protocols.UrlParameterReader
CS.System.Web.Services.Protocols.UrlParameterReader = System.Web.Services.Protocols.UrlParameterReader

---@return System.Web.Services.Protocols.UrlParameterReader
function System.Web.Services.Protocols.UrlParameterReader.New() end
---@param request System.Web.HttpRequest
---@return System.Object[]
function System.Web.Services.Protocols.UrlParameterReader:Read(request) end

---@class System.Web.Services.Protocols.UrlParameterWriter : System.Web.Services.Protocols.UrlEncodedParameterWriter
System.Web.Services.Protocols.UrlParameterWriter = {}
---@alias CS.System.Web.Services.Protocols.UrlParameterWriter System.Web.Services.Protocols.UrlParameterWriter
CS.System.Web.Services.Protocols.UrlParameterWriter = System.Web.Services.Protocols.UrlParameterWriter

---@return System.Web.Services.Protocols.UrlParameterWriter
function System.Web.Services.Protocols.UrlParameterWriter.New() end
---@param url string
---@param parameters System.Object[]
---@return string
function System.Web.Services.Protocols.UrlParameterWriter:GetRequestUrl(url, parameters) end

---@class System.Web.Services.Protocols.ValueCollectionParameterReader : System.Web.Services.Protocols.MimeParameterReader
System.Web.Services.Protocols.ValueCollectionParameterReader = {}
---@alias CS.System.Web.Services.Protocols.ValueCollectionParameterReader System.Web.Services.Protocols.ValueCollectionParameterReader
CS.System.Web.Services.Protocols.ValueCollectionParameterReader = System.Web.Services.Protocols.ValueCollectionParameterReader

---@overload fun(methodInfo: System.Web.Services.Protocols.LogicalMethodInfo) : boolean
---@param paramInfo System.Reflection.ParameterInfo
---@return boolean
function System.Web.Services.Protocols.ValueCollectionParameterReader.IsSupported(paramInfo) end
---@param o System.Object
function System.Web.Services.Protocols.ValueCollectionParameterReader:Initialize(o) end
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.ValueCollectionParameterReader:GetInitializer(methodInfo) end

---@class System.Web.Services.Protocols.WebServiceHandler : System.Object
System.Web.Services.Protocols.WebServiceHandler = {}
---@alias CS.System.Web.Services.Protocols.WebServiceHandler System.Web.Services.Protocols.WebServiceHandler
CS.System.Web.Services.Protocols.WebServiceHandler = System.Web.Services.Protocols.WebServiceHandler


---@class System.Web.Services.Protocols.SyncSessionlessHandler : System.Web.Services.Protocols.WebServiceHandler
---@field IsReusable boolean
System.Web.Services.Protocols.SyncSessionlessHandler = {}
---@alias CS.System.Web.Services.Protocols.SyncSessionlessHandler System.Web.Services.Protocols.SyncSessionlessHandler
CS.System.Web.Services.Protocols.SyncSessionlessHandler = System.Web.Services.Protocols.SyncSessionlessHandler

---@param context System.Web.HttpContext
function System.Web.Services.Protocols.SyncSessionlessHandler:ProcessRequest(context) end

---@class System.Web.Services.Protocols.SyncSessionHandler : System.Web.Services.Protocols.SyncSessionlessHandler
System.Web.Services.Protocols.SyncSessionHandler = {}
---@alias CS.System.Web.Services.Protocols.SyncSessionHandler System.Web.Services.Protocols.SyncSessionHandler
CS.System.Web.Services.Protocols.SyncSessionHandler = System.Web.Services.Protocols.SyncSessionHandler


---@class System.Web.Services.Protocols.AsyncSessionlessHandler : System.Web.Services.Protocols.SyncSessionlessHandler
System.Web.Services.Protocols.AsyncSessionlessHandler = {}
---@alias CS.System.Web.Services.Protocols.AsyncSessionlessHandler System.Web.Services.Protocols.AsyncSessionlessHandler
CS.System.Web.Services.Protocols.AsyncSessionlessHandler = System.Web.Services.Protocols.AsyncSessionlessHandler

---@param context System.Web.HttpContext
---@param callback System.AsyncCallback
---@param asyncState System.Object
---@return System.IAsyncResult
function System.Web.Services.Protocols.AsyncSessionlessHandler:BeginProcessRequest(context, callback, asyncState) end
---@param asyncResult System.IAsyncResult
function System.Web.Services.Protocols.AsyncSessionlessHandler:EndProcessRequest(asyncResult) end

---@class System.Web.Services.Protocols.AsyncSessionHandler : System.Web.Services.Protocols.AsyncSessionlessHandler
System.Web.Services.Protocols.AsyncSessionHandler = {}
---@alias CS.System.Web.Services.Protocols.AsyncSessionHandler System.Web.Services.Protocols.AsyncSessionHandler
CS.System.Web.Services.Protocols.AsyncSessionHandler = System.Web.Services.Protocols.AsyncSessionHandler


---@class System.Web.Services.Protocols.CompletedAsyncResult : System.Object
---@field AsyncState System.Object
---@field CompletedSynchronously boolean
---@field IsCompleted boolean
---@field AsyncWaitHandle System.Threading.WaitHandle
System.Web.Services.Protocols.CompletedAsyncResult = {}
---@alias CS.System.Web.Services.Protocols.CompletedAsyncResult System.Web.Services.Protocols.CompletedAsyncResult
CS.System.Web.Services.Protocols.CompletedAsyncResult = System.Web.Services.Protocols.CompletedAsyncResult


---@class System.Web.Services.Protocols.WebServiceHandlerFactory : System.Object
System.Web.Services.Protocols.WebServiceHandlerFactory = {}
---@alias CS.System.Web.Services.Protocols.WebServiceHandlerFactory System.Web.Services.Protocols.WebServiceHandlerFactory
CS.System.Web.Services.Protocols.WebServiceHandlerFactory = System.Web.Services.Protocols.WebServiceHandlerFactory

---@return System.Web.Services.Protocols.WebServiceHandlerFactory
function System.Web.Services.Protocols.WebServiceHandlerFactory.New() end
---@param context System.Web.HttpContext
---@param verb string
---@param url string
---@param filePath string
---@return System.Web.IHttpHandler
function System.Web.Services.Protocols.WebServiceHandlerFactory:GetHandler(context, verb, url, filePath) end
---@param handler System.Web.IHttpHandler
function System.Web.Services.Protocols.WebServiceHandlerFactory:ReleaseHandler(handler) end

---@class System.Web.Services.Protocols.UnsupportedRequestProtocol : System.Web.Services.Protocols.ServerProtocol
System.Web.Services.Protocols.UnsupportedRequestProtocol = {}
---@alias CS.System.Web.Services.Protocols.UnsupportedRequestProtocol System.Web.Services.Protocols.UnsupportedRequestProtocol
CS.System.Web.Services.Protocols.UnsupportedRequestProtocol = System.Web.Services.Protocols.UnsupportedRequestProtocol


---@class System.Web.Services.Protocols.NopHandler : System.Object
---@field IsReusable boolean
System.Web.Services.Protocols.NopHandler = {}
---@alias CS.System.Web.Services.Protocols.NopHandler System.Web.Services.Protocols.NopHandler
CS.System.Web.Services.Protocols.NopHandler = System.Web.Services.Protocols.NopHandler

---@return System.Web.Services.Protocols.NopHandler
function System.Web.Services.Protocols.NopHandler.New() end
---@param context System.Web.HttpContext
function System.Web.Services.Protocols.NopHandler:ProcessRequest(context) end

---@class System.Web.Services.Protocols.XmlReturn : System.Object
System.Web.Services.Protocols.XmlReturn = {}
---@alias CS.System.Web.Services.Protocols.XmlReturn System.Web.Services.Protocols.XmlReturn
CS.System.Web.Services.Protocols.XmlReturn = System.Web.Services.Protocols.XmlReturn


---@class System.Web.Services.Protocols.XmlReturnReader : System.Web.Services.Protocols.MimeReturnReader
System.Web.Services.Protocols.XmlReturnReader = {}
---@alias CS.System.Web.Services.Protocols.XmlReturnReader System.Web.Services.Protocols.XmlReturnReader
CS.System.Web.Services.Protocols.XmlReturnReader = System.Web.Services.Protocols.XmlReturnReader

---@return System.Web.Services.Protocols.XmlReturnReader
function System.Web.Services.Protocols.XmlReturnReader.New() end
---@param o System.Object
function System.Web.Services.Protocols.XmlReturnReader:Initialize(o) end
---@param methodInfos System.Web.Services.Protocols.LogicalMethodInfo[]
---@return System.Object[]
function System.Web.Services.Protocols.XmlReturnReader:GetInitializers(methodInfos) end
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.XmlReturnReader:GetInitializer(methodInfo) end
---@param response System.Net.WebResponse
---@param responseStream System.IO.Stream
---@return System.Object
function System.Web.Services.Protocols.XmlReturnReader:Read(response, responseStream) end

---@class System.Web.Services.Protocols.XmlReturnWriter : System.Web.Services.Protocols.MimeReturnWriter
System.Web.Services.Protocols.XmlReturnWriter = {}
---@alias CS.System.Web.Services.Protocols.XmlReturnWriter System.Web.Services.Protocols.XmlReturnWriter
CS.System.Web.Services.Protocols.XmlReturnWriter = System.Web.Services.Protocols.XmlReturnWriter

---@return System.Web.Services.Protocols.XmlReturnWriter
function System.Web.Services.Protocols.XmlReturnWriter.New() end
---@param o System.Object
function System.Web.Services.Protocols.XmlReturnWriter:Initialize(o) end
---@param methodInfos System.Web.Services.Protocols.LogicalMethodInfo[]
---@return System.Object[]
function System.Web.Services.Protocols.XmlReturnWriter:GetInitializers(methodInfos) end
---@param methodInfo System.Web.Services.Protocols.LogicalMethodInfo
---@return System.Object
function System.Web.Services.Protocols.XmlReturnWriter:GetInitializer(methodInfo) end

---@class System.Web.Services.Interop.CallId : System.ValueType
---@field szMachine string
---@field dwPid number
---@field userThread System.IntPtr
---@field addStackPointer number
---@field szEntryPoint string
---@field szDestinationMachine string
System.Web.Services.Interop.CallId = {}
---@alias CS.System.Web.Services.Interop.CallId System.Web.Services.Interop.CallId
CS.System.Web.Services.Interop.CallId = System.Web.Services.Interop.CallId

---@param machine string
---@param pid number
---@param userThread System.IntPtr
---@param stackPtr number
---@param entryPoint string
---@param destMachine string
---@return System.Web.Services.Interop.CallId
function System.Web.Services.Interop.CallId.New(machine, pid, userThread, stackPtr, entryPoint, destMachine) end

---@class System.Web.Services.Interop.INotifyConnection2
System.Web.Services.Interop.INotifyConnection2 = {}
---@alias CS.System.Web.Services.Interop.INotifyConnection2 System.Web.Services.Interop.INotifyConnection2
CS.System.Web.Services.Interop.INotifyConnection2 = System.Web.Services.Interop.INotifyConnection2

---@param in_pNotifySource System.Web.Services.Interop.INotifySource2
---@return System.Web.Services.Interop.INotifySink2
function System.Web.Services.Interop.INotifyConnection2:RegisterNotifySource(in_pNotifySource) end
---@param in_pNotifySource System.Web.Services.Interop.INotifySource2
function System.Web.Services.Interop.INotifyConnection2:UnregisterNotifySource(in_pNotifySource) end

---@class System.Web.Services.Interop.INotifySink2
System.Web.Services.Interop.INotifySink2 = {}
---@alias CS.System.Web.Services.Interop.INotifySink2 System.Web.Services.Interop.INotifySink2
CS.System.Web.Services.Interop.INotifySink2 = System.Web.Services.Interop.INotifySink2

---@param callId System.Web.Services.Interop.CallId
---@param out_out_ppBuffer System.IntPtr
---@param out_inout_pBufferSize number
---@return ,System.IntPtr,number
function System.Web.Services.Interop.INotifySink2:OnSyncCallOut(callId, out_out_ppBuffer, out_inout_pBufferSize) end
---@param callId System.Web.Services.Interop.CallId
---@param in_pBuffer System.Byte[]
---@param in_BufferSize number
function System.Web.Services.Interop.INotifySink2:OnSyncCallEnter(callId, in_pBuffer, in_BufferSize) end
---@param callId System.Web.Services.Interop.CallId
---@param in_pBuffer System.Byte[]
---@param in_BufferSize number
function System.Web.Services.Interop.INotifySink2:OnSyncCallReturn(callId, in_pBuffer, in_BufferSize) end
---@param callId System.Web.Services.Interop.CallId
---@param out_out_ppBuffer System.IntPtr
---@param out_inout_pBufferSize number
---@return ,System.IntPtr,number
function System.Web.Services.Interop.INotifySink2:OnSyncCallExit(callId, out_out_ppBuffer, out_inout_pBufferSize) end

---@class System.Web.Services.Interop.INotifySource2
System.Web.Services.Interop.INotifySource2 = {}
---@alias CS.System.Web.Services.Interop.INotifySource2 System.Web.Services.Interop.INotifySource2
CS.System.Web.Services.Interop.INotifySource2 = System.Web.Services.Interop.INotifySource2

---@param in_NotifyFilter System.Web.Services.Interop.NotifyFilter
---@param in_pUserThreadFilter System.Web.Services.Interop.UserThread
function System.Web.Services.Interop.INotifySource2:SetNotifyFilter(in_NotifyFilter, in_pUserThreadFilter) end

---@class System.Web.Services.Interop.NotifyFilter
---@field OnSyncCallOut System.Web.Services.Interop.NotifyFilter
---@field OnSyncCallEnter System.Web.Services.Interop.NotifyFilter
---@field OnSyncCallExit System.Web.Services.Interop.NotifyFilter
---@field OnSyncCallReturn System.Web.Services.Interop.NotifyFilter
---@field AllSync System.Web.Services.Interop.NotifyFilter
---@field All System.Web.Services.Interop.NotifyFilter
---@field None System.Web.Services.Interop.NotifyFilter
System.Web.Services.Interop.NotifyFilter = {}
---@alias CS.System.Web.Services.Interop.NotifyFilter System.Web.Services.Interop.NotifyFilter
CS.System.Web.Services.Interop.NotifyFilter = System.Web.Services.Interop.NotifyFilter


---@class System.Web.Services.Interop.UserThread : System.Object
System.Web.Services.Interop.UserThread = {}
---@alias CS.System.Web.Services.Interop.UserThread System.Web.Services.Interop.UserThread
CS.System.Web.Services.Interop.UserThread = System.Web.Services.Interop.UserThread

---@param obj System.Object
---@return boolean
function System.Web.Services.Interop.UserThread:Equals(obj) end
---@return number
function System.Web.Services.Interop.UserThread:GetHashCode() end

---@class System.Web.Services.Discovery.ContractReference : System.Web.Services.Discovery.DiscoveryReference
---@field Namespace string
---@field Ref string
---@field DocRef string
---@field Url string
---@field Contract System.Web.Services.Description.ServiceDescription
---@field DefaultFilename string
System.Web.Services.Discovery.ContractReference = {}
---@alias CS.System.Web.Services.Discovery.ContractReference System.Web.Services.Discovery.ContractReference
CS.System.Web.Services.Discovery.ContractReference = System.Web.Services.Discovery.ContractReference

---@overload fun() : System.Web.Services.Discovery.ContractReference
---@overload fun(href: string) : System.Web.Services.Discovery.ContractReference
---@param href string
---@param docRef string
---@return System.Web.Services.Discovery.ContractReference
function System.Web.Services.Discovery.ContractReference.New(href, docRef) end
---@param document System.Object
---@param stream System.IO.Stream
function System.Web.Services.Discovery.ContractReference:WriteDocument(document, stream) end
---@param stream System.IO.Stream
---@return System.Object
function System.Web.Services.Discovery.ContractReference:ReadDocument(stream) end

---@class System.Web.Services.Discovery.ContractSearchPattern : System.Web.Services.Discovery.DiscoverySearchPattern
---@field Pattern string
System.Web.Services.Discovery.ContractSearchPattern = {}
---@alias CS.System.Web.Services.Discovery.ContractSearchPattern System.Web.Services.Discovery.ContractSearchPattern
CS.System.Web.Services.Discovery.ContractSearchPattern = System.Web.Services.Discovery.ContractSearchPattern

---@return System.Web.Services.Discovery.ContractSearchPattern
function System.Web.Services.Discovery.ContractSearchPattern.New() end
---@param filename string
---@return System.Web.Services.Discovery.DiscoveryReference
function System.Web.Services.Discovery.ContractSearchPattern:GetDiscoveryReference(filename) end

---@class System.Web.Services.Discovery.DiscoveryClientDocumentCollection : System.Collections.DictionaryBase
---@field Item System.Object
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
System.Web.Services.Discovery.DiscoveryClientDocumentCollection = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryClientDocumentCollection System.Web.Services.Discovery.DiscoveryClientDocumentCollection
CS.System.Web.Services.Discovery.DiscoveryClientDocumentCollection = System.Web.Services.Discovery.DiscoveryClientDocumentCollection

---@return System.Web.Services.Discovery.DiscoveryClientDocumentCollection
function System.Web.Services.Discovery.DiscoveryClientDocumentCollection.New() end
---@param url string
---@param value System.Object
function System.Web.Services.Discovery.DiscoveryClientDocumentCollection:Add(url, value) end
---@param url string
---@return boolean
function System.Web.Services.Discovery.DiscoveryClientDocumentCollection:Contains(url) end
---@param url string
function System.Web.Services.Discovery.DiscoveryClientDocumentCollection:Remove(url) end

---@class System.Web.Services.Discovery.DiscoveryClientProtocol : System.Web.Services.Protocols.HttpWebClientProtocol
---@field AdditionalInformation System.Collections.IList
---@field Documents System.Web.Services.Discovery.DiscoveryClientDocumentCollection
---@field Errors System.Web.Services.Discovery.DiscoveryExceptionDictionary
---@field References System.Web.Services.Discovery.DiscoveryClientReferenceCollection
System.Web.Services.Discovery.DiscoveryClientProtocol = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryClientProtocol System.Web.Services.Discovery.DiscoveryClientProtocol
CS.System.Web.Services.Discovery.DiscoveryClientProtocol = System.Web.Services.Discovery.DiscoveryClientProtocol

---@return System.Web.Services.Discovery.DiscoveryClientProtocol
function System.Web.Services.Discovery.DiscoveryClientProtocol.New() end
---@param url string
---@return System.Web.Services.Discovery.DiscoveryDocument
function System.Web.Services.Discovery.DiscoveryClientProtocol:Discover(url) end
---@param url string
---@return System.Web.Services.Discovery.DiscoveryDocument
function System.Web.Services.Discovery.DiscoveryClientProtocol:DiscoverAny(url) end
---@overload fun(self: System.Web.Services.Discovery.DiscoveryClientProtocol, ref_url: string) : System.IO.Stream, string
---@param ref_url string
---@param ref_contentType string
---@return System.IO.Stream,string,string
function System.Web.Services.Discovery.DiscoveryClientProtocol:Download(ref_url, ref_contentType) end
---@param topLevelFilename string
---@return System.Web.Services.Discovery.DiscoveryClientResultCollection
function System.Web.Services.Discovery.DiscoveryClientProtocol:ReadAll(topLevelFilename) end
function System.Web.Services.Discovery.DiscoveryClientProtocol:ResolveAll() end
function System.Web.Services.Discovery.DiscoveryClientProtocol:ResolveOneLevel() end
---@param directory string
---@param topLevelFilename string
---@return System.Web.Services.Discovery.DiscoveryClientResultCollection
function System.Web.Services.Discovery.DiscoveryClientProtocol:WriteAll(directory, topLevelFilename) end

---@class System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile : System.Object
---@field Results System.Web.Services.Discovery.DiscoveryClientResultCollection
System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile
CS.System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile = System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile

---@return System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile
function System.Web.Services.Discovery.DiscoveryClientProtocol.DiscoveryClientResultsFile.New() end

---@class System.Web.Services.Discovery.DiscoveryClientResultCollection : System.Collections.CollectionBase
---@field Item System.Web.Services.Discovery.DiscoveryClientResult
System.Web.Services.Discovery.DiscoveryClientResultCollection = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryClientResultCollection System.Web.Services.Discovery.DiscoveryClientResultCollection
CS.System.Web.Services.Discovery.DiscoveryClientResultCollection = System.Web.Services.Discovery.DiscoveryClientResultCollection

---@return System.Web.Services.Discovery.DiscoveryClientResultCollection
function System.Web.Services.Discovery.DiscoveryClientResultCollection.New() end
---@param value System.Web.Services.Discovery.DiscoveryClientResult
---@return number
function System.Web.Services.Discovery.DiscoveryClientResultCollection:Add(value) end
---@param value System.Web.Services.Discovery.DiscoveryClientResult
---@return boolean
function System.Web.Services.Discovery.DiscoveryClientResultCollection:Contains(value) end
---@param value System.Web.Services.Discovery.DiscoveryClientResult
function System.Web.Services.Discovery.DiscoveryClientResultCollection:Remove(value) end

---@class System.Web.Services.Discovery.DiscoveryClientResult : System.Object
---@field ReferenceTypeName string
---@field Url string
---@field Filename string
System.Web.Services.Discovery.DiscoveryClientResult = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryClientResult System.Web.Services.Discovery.DiscoveryClientResult
CS.System.Web.Services.Discovery.DiscoveryClientResult = System.Web.Services.Discovery.DiscoveryClientResult

---@overload fun() : System.Web.Services.Discovery.DiscoveryClientResult
---@param referenceType System.Type
---@param url string
---@param filename string
---@return System.Web.Services.Discovery.DiscoveryClientResult
function System.Web.Services.Discovery.DiscoveryClientResult.New(referenceType, url, filename) end

---@class System.Web.Services.Discovery.DiscoveryClientReferenceCollection : System.Collections.DictionaryBase
---@field Item System.Web.Services.Discovery.DiscoveryReference
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
System.Web.Services.Discovery.DiscoveryClientReferenceCollection = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryClientReferenceCollection System.Web.Services.Discovery.DiscoveryClientReferenceCollection
CS.System.Web.Services.Discovery.DiscoveryClientReferenceCollection = System.Web.Services.Discovery.DiscoveryClientReferenceCollection

---@return System.Web.Services.Discovery.DiscoveryClientReferenceCollection
function System.Web.Services.Discovery.DiscoveryClientReferenceCollection.New() end
---@overload fun(self: System.Web.Services.Discovery.DiscoveryClientReferenceCollection, value: System.Web.Services.Discovery.DiscoveryReference)
---@param url string
---@param value System.Web.Services.Discovery.DiscoveryReference
function System.Web.Services.Discovery.DiscoveryClientReferenceCollection:Add(url, value) end
---@param url string
---@return boolean
function System.Web.Services.Discovery.DiscoveryClientReferenceCollection:Contains(url) end
---@param url string
function System.Web.Services.Discovery.DiscoveryClientReferenceCollection:Remove(url) end

---@class System.Web.Services.Discovery.DiscoveryDocument : System.Object
---@field Namespace string
---@field References System.Collections.IList
System.Web.Services.Discovery.DiscoveryDocument = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryDocument System.Web.Services.Discovery.DiscoveryDocument
CS.System.Web.Services.Discovery.DiscoveryDocument = System.Web.Services.Discovery.DiscoveryDocument

---@return System.Web.Services.Discovery.DiscoveryDocument
function System.Web.Services.Discovery.DiscoveryDocument.New() end
---@overload fun(stream: System.IO.Stream) : System.Web.Services.Discovery.DiscoveryDocument
---@overload fun(reader: System.IO.TextReader) : System.Web.Services.Discovery.DiscoveryDocument
---@param xmlReader System.Xml.XmlReader
---@return System.Web.Services.Discovery.DiscoveryDocument
function System.Web.Services.Discovery.DiscoveryDocument.Read(xmlReader) end
---@param xmlReader System.Xml.XmlReader
---@return boolean
function System.Web.Services.Discovery.DiscoveryDocument.CanRead(xmlReader) end
---@overload fun(self: System.Web.Services.Discovery.DiscoveryDocument, writer: System.IO.TextWriter)
---@overload fun(self: System.Web.Services.Discovery.DiscoveryDocument, stream: System.IO.Stream)
---@param writer System.Xml.XmlWriter
function System.Web.Services.Discovery.DiscoveryDocument:Write(writer) end

---@class System.Web.Services.Discovery.DiscoveryDocumentSerializer : System.Xml.Serialization.XmlSerializer
System.Web.Services.Discovery.DiscoveryDocumentSerializer = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryDocumentSerializer System.Web.Services.Discovery.DiscoveryDocumentSerializer
CS.System.Web.Services.Discovery.DiscoveryDocumentSerializer = System.Web.Services.Discovery.DiscoveryDocumentSerializer

---@return System.Web.Services.Discovery.DiscoveryDocumentSerializer
function System.Web.Services.Discovery.DiscoveryDocumentSerializer.New() end
---@param xmlReader System.Xml.XmlReader
---@return boolean
function System.Web.Services.Discovery.DiscoveryDocumentSerializer:CanDeserialize(xmlReader) end

---@class System.Web.Services.Discovery.DiscoveryDocumentLinksPattern : System.Web.Services.Discovery.DiscoverySearchPattern
---@field Pattern string
System.Web.Services.Discovery.DiscoveryDocumentLinksPattern = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryDocumentLinksPattern System.Web.Services.Discovery.DiscoveryDocumentLinksPattern
CS.System.Web.Services.Discovery.DiscoveryDocumentLinksPattern = System.Web.Services.Discovery.DiscoveryDocumentLinksPattern

---@return System.Web.Services.Discovery.DiscoveryDocumentLinksPattern
function System.Web.Services.Discovery.DiscoveryDocumentLinksPattern.New() end
---@param filename string
---@return System.Web.Services.Discovery.DiscoveryReference
function System.Web.Services.Discovery.DiscoveryDocumentLinksPattern:GetDiscoveryReference(filename) end

---@class System.Web.Services.Discovery.DiscoveryDocumentReference : System.Web.Services.Discovery.DiscoveryReference
---@field Ref string
---@field DefaultFilename string
---@field Document System.Web.Services.Discovery.DiscoveryDocument
---@field Url string
System.Web.Services.Discovery.DiscoveryDocumentReference = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryDocumentReference System.Web.Services.Discovery.DiscoveryDocumentReference
CS.System.Web.Services.Discovery.DiscoveryDocumentReference = System.Web.Services.Discovery.DiscoveryDocumentReference

---@overload fun() : System.Web.Services.Discovery.DiscoveryDocumentReference
---@param href string
---@return System.Web.Services.Discovery.DiscoveryDocumentReference
function System.Web.Services.Discovery.DiscoveryDocumentReference.New(href) end
---@param document System.Object
---@param stream System.IO.Stream
function System.Web.Services.Discovery.DiscoveryDocumentReference:WriteDocument(document, stream) end
---@param stream System.IO.Stream
---@return System.Object
function System.Web.Services.Discovery.DiscoveryDocumentReference:ReadDocument(stream) end
function System.Web.Services.Discovery.DiscoveryDocumentReference:ResolveAll() end

---@class System.Web.Services.Discovery.DiscoveryDocumentSearchPattern : System.Web.Services.Discovery.DiscoverySearchPattern
---@field Pattern string
System.Web.Services.Discovery.DiscoveryDocumentSearchPattern = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryDocumentSearchPattern System.Web.Services.Discovery.DiscoveryDocumentSearchPattern
CS.System.Web.Services.Discovery.DiscoveryDocumentSearchPattern = System.Web.Services.Discovery.DiscoveryDocumentSearchPattern

---@return System.Web.Services.Discovery.DiscoveryDocumentSearchPattern
function System.Web.Services.Discovery.DiscoveryDocumentSearchPattern.New() end
---@param filename string
---@return System.Web.Services.Discovery.DiscoveryReference
function System.Web.Services.Discovery.DiscoveryDocumentSearchPattern:GetDiscoveryReference(filename) end

---@class System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter : System.Xml.Serialization.XmlSerializationWriter
System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter
CS.System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter = System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter

---@return System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter
function System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter.New() end
---@param o System.Object
function System.Web.Services.Discovery.DiscoveryDocumentSerializationWriter:Write10_discovery(o) end

---@class System.Web.Services.Discovery.DiscoveryDocumentSerializationReader : System.Xml.Serialization.XmlSerializationReader
System.Web.Services.Discovery.DiscoveryDocumentSerializationReader = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryDocumentSerializationReader System.Web.Services.Discovery.DiscoveryDocumentSerializationReader
CS.System.Web.Services.Discovery.DiscoveryDocumentSerializationReader = System.Web.Services.Discovery.DiscoveryDocumentSerializationReader

---@return System.Web.Services.Discovery.DiscoveryDocumentSerializationReader
function System.Web.Services.Discovery.DiscoveryDocumentSerializationReader.New() end
---@return System.Object
function System.Web.Services.Discovery.DiscoveryDocumentSerializationReader:Read10_discovery() end

---@class System.Web.Services.Discovery.DiscoveryExceptionDictionary : System.Collections.DictionaryBase
---@field Item System.Exception
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
System.Web.Services.Discovery.DiscoveryExceptionDictionary = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryExceptionDictionary System.Web.Services.Discovery.DiscoveryExceptionDictionary
CS.System.Web.Services.Discovery.DiscoveryExceptionDictionary = System.Web.Services.Discovery.DiscoveryExceptionDictionary

---@return System.Web.Services.Discovery.DiscoveryExceptionDictionary
function System.Web.Services.Discovery.DiscoveryExceptionDictionary.New() end
---@param url string
---@param value System.Exception
function System.Web.Services.Discovery.DiscoveryExceptionDictionary:Add(url, value) end
---@param url string
---@return boolean
function System.Web.Services.Discovery.DiscoveryExceptionDictionary:Contains(url) end
---@param url string
function System.Web.Services.Discovery.DiscoveryExceptionDictionary:Remove(url) end

---@class System.Web.Services.Discovery.DiscoveryReference : System.Object
---@field ClientProtocol System.Web.Services.Discovery.DiscoveryClientProtocol
---@field DefaultFilename string
---@field Url string
System.Web.Services.Discovery.DiscoveryReference = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryReference System.Web.Services.Discovery.DiscoveryReference
CS.System.Web.Services.Discovery.DiscoveryReference = System.Web.Services.Discovery.DiscoveryReference

---@param url string
---@return string
function System.Web.Services.Discovery.DiscoveryReference.FilenameFromUrl(url) end
---@param document System.Object
---@param stream System.IO.Stream
function System.Web.Services.Discovery.DiscoveryReference:WriteDocument(document, stream) end
---@param stream System.IO.Stream
---@return System.Object
function System.Web.Services.Discovery.DiscoveryReference:ReadDocument(stream) end
function System.Web.Services.Discovery.DiscoveryReference:Resolve() end

---@class System.Web.Services.Discovery.DiscoveryReferenceCollection : System.Collections.CollectionBase
---@field Item System.Web.Services.Discovery.DiscoveryReference
System.Web.Services.Discovery.DiscoveryReferenceCollection = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryReferenceCollection System.Web.Services.Discovery.DiscoveryReferenceCollection
CS.System.Web.Services.Discovery.DiscoveryReferenceCollection = System.Web.Services.Discovery.DiscoveryReferenceCollection

---@return System.Web.Services.Discovery.DiscoveryReferenceCollection
function System.Web.Services.Discovery.DiscoveryReferenceCollection.New() end
---@param value System.Web.Services.Discovery.DiscoveryReference
---@return number
function System.Web.Services.Discovery.DiscoveryReferenceCollection:Add(value) end
---@param value System.Web.Services.Discovery.DiscoveryReference
---@return boolean
function System.Web.Services.Discovery.DiscoveryReferenceCollection:Contains(value) end
---@param value System.Web.Services.Discovery.DiscoveryReference
function System.Web.Services.Discovery.DiscoveryReferenceCollection:Remove(value) end

---@class System.Web.Services.Discovery.DiscoveryRequestHandler : System.Object
---@field IsReusable boolean
System.Web.Services.Discovery.DiscoveryRequestHandler = {}
---@alias CS.System.Web.Services.Discovery.DiscoveryRequestHandler System.Web.Services.Discovery.DiscoveryRequestHandler
CS.System.Web.Services.Discovery.DiscoveryRequestHandler = System.Web.Services.Discovery.DiscoveryRequestHandler

---@return System.Web.Services.Discovery.DiscoveryRequestHandler
function System.Web.Services.Discovery.DiscoveryRequestHandler.New() end
---@param context System.Web.HttpContext
function System.Web.Services.Discovery.DiscoveryRequestHandler:ProcessRequest(context) end

---@class System.Web.Services.Discovery.DiscoverySearchPattern : System.Object
---@field Pattern string
System.Web.Services.Discovery.DiscoverySearchPattern = {}
---@alias CS.System.Web.Services.Discovery.DiscoverySearchPattern System.Web.Services.Discovery.DiscoverySearchPattern
CS.System.Web.Services.Discovery.DiscoverySearchPattern = System.Web.Services.Discovery.DiscoverySearchPattern

---@param filename string
---@return System.Web.Services.Discovery.DiscoveryReference
function System.Web.Services.Discovery.DiscoverySearchPattern:GetDiscoveryReference(filename) end

---@class System.Web.Services.Discovery.DynamicDiscoSearcher : System.Object
System.Web.Services.Discovery.DynamicDiscoSearcher = {}
---@alias CS.System.Web.Services.Discovery.DynamicDiscoSearcher System.Web.Services.Discovery.DynamicDiscoSearcher
CS.System.Web.Services.Discovery.DynamicDiscoSearcher = System.Web.Services.Discovery.DynamicDiscoSearcher


---@class System.Web.Services.Discovery.DynamicDiscoveryDocument : System.Object
---@field Namespace string
---@field ExcludePaths System.Web.Services.Discovery.ExcludePathInfo[]
System.Web.Services.Discovery.DynamicDiscoveryDocument = {}
---@alias CS.System.Web.Services.Discovery.DynamicDiscoveryDocument System.Web.Services.Discovery.DynamicDiscoveryDocument
CS.System.Web.Services.Discovery.DynamicDiscoveryDocument = System.Web.Services.Discovery.DynamicDiscoveryDocument

---@return System.Web.Services.Discovery.DynamicDiscoveryDocument
function System.Web.Services.Discovery.DynamicDiscoveryDocument.New() end
---@param stream System.IO.Stream
---@return System.Web.Services.Discovery.DynamicDiscoveryDocument
function System.Web.Services.Discovery.DynamicDiscoveryDocument.Load(stream) end
---@param stream System.IO.Stream
function System.Web.Services.Discovery.DynamicDiscoveryDocument:Write(stream) end

---@class System.Web.Services.Discovery.DynamicPhysicalDiscoSearcher : System.Web.Services.Discovery.DynamicDiscoSearcher
System.Web.Services.Discovery.DynamicPhysicalDiscoSearcher = {}
---@alias CS.System.Web.Services.Discovery.DynamicPhysicalDiscoSearcher System.Web.Services.Discovery.DynamicPhysicalDiscoSearcher
CS.System.Web.Services.Discovery.DynamicPhysicalDiscoSearcher = System.Web.Services.Discovery.DynamicPhysicalDiscoSearcher


---@class System.Web.Services.Discovery.DynamicVirtualDiscoSearcher : System.Web.Services.Discovery.DynamicDiscoSearcher
System.Web.Services.Discovery.DynamicVirtualDiscoSearcher = {}
---@alias CS.System.Web.Services.Discovery.DynamicVirtualDiscoSearcher System.Web.Services.Discovery.DynamicVirtualDiscoSearcher
CS.System.Web.Services.Discovery.DynamicVirtualDiscoSearcher = System.Web.Services.Discovery.DynamicVirtualDiscoSearcher


---@class System.Web.Services.Discovery.DynamicVirtualDiscoSearcher.AppSettings : System.Object
System.Web.Services.Discovery.DynamicVirtualDiscoSearcher.AppSettings = {}
---@alias CS.System.Web.Services.Discovery.DynamicVirtualDiscoSearcher.AppSettings System.Web.Services.Discovery.DynamicVirtualDiscoSearcher.AppSettings
CS.System.Web.Services.Discovery.DynamicVirtualDiscoSearcher.AppSettings = System.Web.Services.Discovery.DynamicVirtualDiscoSearcher.AppSettings


---@class System.Web.Services.Discovery.ExcludePathInfo : System.Object
---@field Path string
System.Web.Services.Discovery.ExcludePathInfo = {}
---@alias CS.System.Web.Services.Discovery.ExcludePathInfo System.Web.Services.Discovery.ExcludePathInfo
CS.System.Web.Services.Discovery.ExcludePathInfo = System.Web.Services.Discovery.ExcludePathInfo

---@overload fun() : System.Web.Services.Discovery.ExcludePathInfo
---@param path string
---@return System.Web.Services.Discovery.ExcludePathInfo
function System.Web.Services.Discovery.ExcludePathInfo.New(path) end

---@class System.Web.Services.Discovery.InvalidContentTypeException : System.Exception
System.Web.Services.Discovery.InvalidContentTypeException = {}
---@alias CS.System.Web.Services.Discovery.InvalidContentTypeException System.Web.Services.Discovery.InvalidContentTypeException
CS.System.Web.Services.Discovery.InvalidContentTypeException = System.Web.Services.Discovery.InvalidContentTypeException


---@class System.Web.Services.Discovery.InvalidDocumentContentsException : System.Exception
System.Web.Services.Discovery.InvalidDocumentContentsException = {}
---@alias CS.System.Web.Services.Discovery.InvalidDocumentContentsException System.Web.Services.Discovery.InvalidDocumentContentsException
CS.System.Web.Services.Discovery.InvalidDocumentContentsException = System.Web.Services.Discovery.InvalidDocumentContentsException


---@class System.Web.Services.Discovery.LinkGrep : System.Object
System.Web.Services.Discovery.LinkGrep = {}
---@alias CS.System.Web.Services.Discovery.LinkGrep System.Web.Services.Discovery.LinkGrep
CS.System.Web.Services.Discovery.LinkGrep = System.Web.Services.Discovery.LinkGrep


---@class System.Web.Services.Discovery.SchemaReference : System.Web.Services.Discovery.DiscoveryReference
---@field Namespace string
---@field Ref string
---@field TargetNamespace string
---@field Url string
---@field DefaultFilename string
---@field Schema System.Xml.Schema.XmlSchema
System.Web.Services.Discovery.SchemaReference = {}
---@alias CS.System.Web.Services.Discovery.SchemaReference System.Web.Services.Discovery.SchemaReference
CS.System.Web.Services.Discovery.SchemaReference = System.Web.Services.Discovery.SchemaReference

---@overload fun() : System.Web.Services.Discovery.SchemaReference
---@param url string
---@return System.Web.Services.Discovery.SchemaReference
function System.Web.Services.Discovery.SchemaReference.New(url) end
---@param document System.Object
---@param stream System.IO.Stream
function System.Web.Services.Discovery.SchemaReference:WriteDocument(document, stream) end
---@param stream System.IO.Stream
---@return System.Object
function System.Web.Services.Discovery.SchemaReference:ReadDocument(stream) end

---@class System.Web.Services.Discovery.SoapBinding : System.Object
---@field Namespace string
---@field Address string
---@field Binding System.Xml.XmlQualifiedName
System.Web.Services.Discovery.SoapBinding = {}
---@alias CS.System.Web.Services.Discovery.SoapBinding System.Web.Services.Discovery.SoapBinding
CS.System.Web.Services.Discovery.SoapBinding = System.Web.Services.Discovery.SoapBinding

---@return System.Web.Services.Discovery.SoapBinding
function System.Web.Services.Discovery.SoapBinding.New() end

---@class System.Web.Services.Discovery.XmlSchemaSearchPattern : System.Web.Services.Discovery.DiscoverySearchPattern
---@field Pattern string
System.Web.Services.Discovery.XmlSchemaSearchPattern = {}
---@alias CS.System.Web.Services.Discovery.XmlSchemaSearchPattern System.Web.Services.Discovery.XmlSchemaSearchPattern
CS.System.Web.Services.Discovery.XmlSchemaSearchPattern = System.Web.Services.Discovery.XmlSchemaSearchPattern

---@return System.Web.Services.Discovery.XmlSchemaSearchPattern
function System.Web.Services.Discovery.XmlSchemaSearchPattern.New() end
---@param filename string
---@return System.Web.Services.Discovery.DiscoveryReference
function System.Web.Services.Discovery.XmlSchemaSearchPattern:GetDiscoveryReference(filename) end

---@class System.Web.Services.Diagnostics.Tracing : System.Object
System.Web.Services.Diagnostics.Tracing = {}
---@alias CS.System.Web.Services.Diagnostics.Tracing System.Web.Services.Diagnostics.Tracing
CS.System.Web.Services.Diagnostics.Tracing = System.Web.Services.Diagnostics.Tracing


---@class System.Web.Services.Diagnostics.TraceMethod : System.Object
System.Web.Services.Diagnostics.TraceMethod = {}
---@alias CS.System.Web.Services.Diagnostics.TraceMethod System.Web.Services.Diagnostics.TraceMethod
CS.System.Web.Services.Diagnostics.TraceMethod = System.Web.Services.Diagnostics.TraceMethod

---@return string
function System.Web.Services.Diagnostics.TraceMethod:ToString() end

---@class System.Web.Services.Description.HttpAddressBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Location string
System.Web.Services.Description.HttpAddressBinding = {}
---@alias CS.System.Web.Services.Description.HttpAddressBinding System.Web.Services.Description.HttpAddressBinding
CS.System.Web.Services.Description.HttpAddressBinding = System.Web.Services.Description.HttpAddressBinding

---@return System.Web.Services.Description.HttpAddressBinding
function System.Web.Services.Description.HttpAddressBinding.New() end

---@class System.Web.Services.Description.HttpBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Namespace string
---@field Verb string
System.Web.Services.Description.HttpBinding = {}
---@alias CS.System.Web.Services.Description.HttpBinding System.Web.Services.Description.HttpBinding
CS.System.Web.Services.Description.HttpBinding = System.Web.Services.Description.HttpBinding

---@return System.Web.Services.Description.HttpBinding
function System.Web.Services.Description.HttpBinding.New() end

---@class System.Web.Services.Description.HttpOperationBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Location string
System.Web.Services.Description.HttpOperationBinding = {}
---@alias CS.System.Web.Services.Description.HttpOperationBinding System.Web.Services.Description.HttpOperationBinding
CS.System.Web.Services.Description.HttpOperationBinding = System.Web.Services.Description.HttpOperationBinding

---@return System.Web.Services.Description.HttpOperationBinding
function System.Web.Services.Description.HttpOperationBinding.New() end

---@class System.Web.Services.Description.HttpUrlEncodedBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
System.Web.Services.Description.HttpUrlEncodedBinding = {}
---@alias CS.System.Web.Services.Description.HttpUrlEncodedBinding System.Web.Services.Description.HttpUrlEncodedBinding
CS.System.Web.Services.Description.HttpUrlEncodedBinding = System.Web.Services.Description.HttpUrlEncodedBinding

---@return System.Web.Services.Description.HttpUrlEncodedBinding
function System.Web.Services.Description.HttpUrlEncodedBinding.New() end

---@class System.Web.Services.Description.HttpUrlReplacementBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
System.Web.Services.Description.HttpUrlReplacementBinding = {}
---@alias CS.System.Web.Services.Description.HttpUrlReplacementBinding System.Web.Services.Description.HttpUrlReplacementBinding
CS.System.Web.Services.Description.HttpUrlReplacementBinding = System.Web.Services.Description.HttpUrlReplacementBinding

---@return System.Web.Services.Description.HttpUrlReplacementBinding
function System.Web.Services.Description.HttpUrlReplacementBinding.New() end

---@class System.Web.Services.Description.HttpGetProtocolImporter : System.Web.Services.Description.HttpProtocolImporter
---@field ProtocolName string
System.Web.Services.Description.HttpGetProtocolImporter = {}
---@alias CS.System.Web.Services.Description.HttpGetProtocolImporter System.Web.Services.Description.HttpGetProtocolImporter
CS.System.Web.Services.Description.HttpGetProtocolImporter = System.Web.Services.Description.HttpGetProtocolImporter

---@return System.Web.Services.Description.HttpGetProtocolImporter
function System.Web.Services.Description.HttpGetProtocolImporter.New() end

---@class System.Web.Services.Description.HttpGetProtocolReflector : System.Web.Services.Description.HttpProtocolReflector
---@field ProtocolName string
System.Web.Services.Description.HttpGetProtocolReflector = {}
---@alias CS.System.Web.Services.Description.HttpGetProtocolReflector System.Web.Services.Description.HttpGetProtocolReflector
CS.System.Web.Services.Description.HttpGetProtocolReflector = System.Web.Services.Description.HttpGetProtocolReflector

---@return System.Web.Services.Description.HttpGetProtocolReflector
function System.Web.Services.Description.HttpGetProtocolReflector.New() end

---@class System.Web.Services.Description.HttpPostProtocolImporter : System.Web.Services.Description.HttpProtocolImporter
---@field ProtocolName string
System.Web.Services.Description.HttpPostProtocolImporter = {}
---@alias CS.System.Web.Services.Description.HttpPostProtocolImporter System.Web.Services.Description.HttpPostProtocolImporter
CS.System.Web.Services.Description.HttpPostProtocolImporter = System.Web.Services.Description.HttpPostProtocolImporter

---@return System.Web.Services.Description.HttpPostProtocolImporter
function System.Web.Services.Description.HttpPostProtocolImporter.New() end

---@class System.Web.Services.Description.HttpPostProtocolReflector : System.Web.Services.Description.HttpProtocolReflector
---@field ProtocolName string
System.Web.Services.Description.HttpPostProtocolReflector = {}
---@alias CS.System.Web.Services.Description.HttpPostProtocolReflector System.Web.Services.Description.HttpPostProtocolReflector
CS.System.Web.Services.Description.HttpPostProtocolReflector = System.Web.Services.Description.HttpPostProtocolReflector

---@return System.Web.Services.Description.HttpPostProtocolReflector
function System.Web.Services.Description.HttpPostProtocolReflector.New() end

---@class System.Web.Services.Description.HttpMethodInfo : System.Object
System.Web.Services.Description.HttpMethodInfo = {}
---@alias CS.System.Web.Services.Description.HttpMethodInfo System.Web.Services.Description.HttpMethodInfo
CS.System.Web.Services.Description.HttpMethodInfo = System.Web.Services.Description.HttpMethodInfo

---@return System.Web.Services.Description.HttpMethodInfo
function System.Web.Services.Description.HttpMethodInfo.New() end

---@class System.Web.Services.Description.HttpProtocolImporter : System.Web.Services.Description.ProtocolImporter
System.Web.Services.Description.HttpProtocolImporter = {}
---@alias CS.System.Web.Services.Description.HttpProtocolImporter System.Web.Services.Description.HttpProtocolImporter
CS.System.Web.Services.Description.HttpProtocolImporter = System.Web.Services.Description.HttpProtocolImporter


---@class System.Web.Services.Description.HttpProtocolReflector : System.Web.Services.Description.ProtocolReflector
System.Web.Services.Description.HttpProtocolReflector = {}
---@alias CS.System.Web.Services.Description.HttpProtocolReflector System.Web.Services.Description.HttpProtocolReflector
CS.System.Web.Services.Description.HttpProtocolReflector = System.Web.Services.Description.HttpProtocolReflector


---@class System.Web.Services.Description.MimeAnyImporter : System.Web.Services.Description.MimeImporter
System.Web.Services.Description.MimeAnyImporter = {}
---@alias CS.System.Web.Services.Description.MimeAnyImporter System.Web.Services.Description.MimeAnyImporter
CS.System.Web.Services.Description.MimeAnyImporter = System.Web.Services.Description.MimeAnyImporter

---@return System.Web.Services.Description.MimeAnyImporter
function System.Web.Services.Description.MimeAnyImporter.New() end

---@class System.Web.Services.Description.MimeFormImporter : System.Web.Services.Description.MimeImporter
System.Web.Services.Description.MimeFormImporter = {}
---@alias CS.System.Web.Services.Description.MimeFormImporter System.Web.Services.Description.MimeFormImporter
CS.System.Web.Services.Description.MimeFormImporter = System.Web.Services.Description.MimeFormImporter

---@return System.Web.Services.Description.MimeFormImporter
function System.Web.Services.Description.MimeFormImporter.New() end

---@class System.Web.Services.Description.MimeFormReflector : System.Web.Services.Description.MimeReflector
System.Web.Services.Description.MimeFormReflector = {}
---@alias CS.System.Web.Services.Description.MimeFormReflector System.Web.Services.Description.MimeFormReflector
CS.System.Web.Services.Description.MimeFormReflector = System.Web.Services.Description.MimeFormReflector

---@return System.Web.Services.Description.MimeFormReflector
function System.Web.Services.Description.MimeFormReflector.New() end

---@class System.Web.Services.Description.MimeContentBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Namespace string
---@field Part string
---@field Type string
System.Web.Services.Description.MimeContentBinding = {}
---@alias CS.System.Web.Services.Description.MimeContentBinding System.Web.Services.Description.MimeContentBinding
CS.System.Web.Services.Description.MimeContentBinding = System.Web.Services.Description.MimeContentBinding

---@return System.Web.Services.Description.MimeContentBinding
function System.Web.Services.Description.MimeContentBinding.New() end

---@class System.Web.Services.Description.MimePart : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.MimePart = {}
---@alias CS.System.Web.Services.Description.MimePart System.Web.Services.Description.MimePart
CS.System.Web.Services.Description.MimePart = System.Web.Services.Description.MimePart

---@return System.Web.Services.Description.MimePart
function System.Web.Services.Description.MimePart.New() end

---@class System.Web.Services.Description.MimeMultipartRelatedBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Parts System.Web.Services.Description.MimePartCollection
System.Web.Services.Description.MimeMultipartRelatedBinding = {}
---@alias CS.System.Web.Services.Description.MimeMultipartRelatedBinding System.Web.Services.Description.MimeMultipartRelatedBinding
CS.System.Web.Services.Description.MimeMultipartRelatedBinding = System.Web.Services.Description.MimeMultipartRelatedBinding

---@return System.Web.Services.Description.MimeMultipartRelatedBinding
function System.Web.Services.Description.MimeMultipartRelatedBinding.New() end

---@class System.Web.Services.Description.MimeXmlBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Part string
System.Web.Services.Description.MimeXmlBinding = {}
---@alias CS.System.Web.Services.Description.MimeXmlBinding System.Web.Services.Description.MimeXmlBinding
CS.System.Web.Services.Description.MimeXmlBinding = System.Web.Services.Description.MimeXmlBinding

---@return System.Web.Services.Description.MimeXmlBinding
function System.Web.Services.Description.MimeXmlBinding.New() end

---@class System.Web.Services.Description.MimePartCollection : System.Collections.CollectionBase
---@field Item System.Web.Services.Description.MimePart
System.Web.Services.Description.MimePartCollection = {}
---@alias CS.System.Web.Services.Description.MimePartCollection System.Web.Services.Description.MimePartCollection
CS.System.Web.Services.Description.MimePartCollection = System.Web.Services.Description.MimePartCollection

---@return System.Web.Services.Description.MimePartCollection
function System.Web.Services.Description.MimePartCollection.New() end
---@param mimePart System.Web.Services.Description.MimePart
---@return number
function System.Web.Services.Description.MimePartCollection:Add(mimePart) end
---@param index number
---@param mimePart System.Web.Services.Description.MimePart
function System.Web.Services.Description.MimePartCollection:Insert(index, mimePart) end
---@param mimePart System.Web.Services.Description.MimePart
---@return number
function System.Web.Services.Description.MimePartCollection:IndexOf(mimePart) end
---@param mimePart System.Web.Services.Description.MimePart
---@return boolean
function System.Web.Services.Description.MimePartCollection:Contains(mimePart) end
---@param mimePart System.Web.Services.Description.MimePart
function System.Web.Services.Description.MimePartCollection:Remove(mimePart) end
---@param array System.Web.Services.Description.MimePart[]
---@param index number
function System.Web.Services.Description.MimePartCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.MimeTextBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Namespace string
---@field Matches System.Web.Services.Description.MimeTextMatchCollection
System.Web.Services.Description.MimeTextBinding = {}
---@alias CS.System.Web.Services.Description.MimeTextBinding System.Web.Services.Description.MimeTextBinding
CS.System.Web.Services.Description.MimeTextBinding = System.Web.Services.Description.MimeTextBinding

---@return System.Web.Services.Description.MimeTextBinding
function System.Web.Services.Description.MimeTextBinding.New() end

---@class System.Web.Services.Description.MimeTextMatch : System.Object
---@field Name string
---@field Type string
---@field Group number
---@field Capture number
---@field Repeats number
---@field RepeatsString string
---@field Pattern string
---@field IgnoreCase boolean
---@field Matches System.Web.Services.Description.MimeTextMatchCollection
System.Web.Services.Description.MimeTextMatch = {}
---@alias CS.System.Web.Services.Description.MimeTextMatch System.Web.Services.Description.MimeTextMatch
CS.System.Web.Services.Description.MimeTextMatch = System.Web.Services.Description.MimeTextMatch

---@return System.Web.Services.Description.MimeTextMatch
function System.Web.Services.Description.MimeTextMatch.New() end

---@class System.Web.Services.Description.MimeTextMatchCollection : System.Collections.CollectionBase
---@field Item System.Web.Services.Description.MimeTextMatch
System.Web.Services.Description.MimeTextMatchCollection = {}
---@alias CS.System.Web.Services.Description.MimeTextMatchCollection System.Web.Services.Description.MimeTextMatchCollection
CS.System.Web.Services.Description.MimeTextMatchCollection = System.Web.Services.Description.MimeTextMatchCollection

---@return System.Web.Services.Description.MimeTextMatchCollection
function System.Web.Services.Description.MimeTextMatchCollection.New() end
---@param match System.Web.Services.Description.MimeTextMatch
---@return number
function System.Web.Services.Description.MimeTextMatchCollection:Add(match) end
---@param index number
---@param match System.Web.Services.Description.MimeTextMatch
function System.Web.Services.Description.MimeTextMatchCollection:Insert(index, match) end
---@param match System.Web.Services.Description.MimeTextMatch
---@return number
function System.Web.Services.Description.MimeTextMatchCollection:IndexOf(match) end
---@param match System.Web.Services.Description.MimeTextMatch
---@return boolean
function System.Web.Services.Description.MimeTextMatchCollection:Contains(match) end
---@param match System.Web.Services.Description.MimeTextMatch
function System.Web.Services.Description.MimeTextMatchCollection:Remove(match) end
---@param array System.Web.Services.Description.MimeTextMatch[]
---@param index number
function System.Web.Services.Description.MimeTextMatchCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.MimeImporter : System.Object
System.Web.Services.Description.MimeImporter = {}
---@alias CS.System.Web.Services.Description.MimeImporter System.Web.Services.Description.MimeImporter
CS.System.Web.Services.Description.MimeImporter = System.Web.Services.Description.MimeImporter


---@class System.Web.Services.Description.MimeParameter : System.Object
System.Web.Services.Description.MimeParameter = {}
---@alias CS.System.Web.Services.Description.MimeParameter System.Web.Services.Description.MimeParameter
CS.System.Web.Services.Description.MimeParameter = System.Web.Services.Description.MimeParameter

---@return System.Web.Services.Description.MimeParameter
function System.Web.Services.Description.MimeParameter.New() end

---@class System.Web.Services.Description.MimeParameterCollection : System.Collections.CollectionBase
System.Web.Services.Description.MimeParameterCollection = {}
---@alias CS.System.Web.Services.Description.MimeParameterCollection System.Web.Services.Description.MimeParameterCollection
CS.System.Web.Services.Description.MimeParameterCollection = System.Web.Services.Description.MimeParameterCollection

---@return System.Web.Services.Description.MimeParameterCollection
function System.Web.Services.Description.MimeParameterCollection.New() end

---@class System.Web.Services.Description.MimeReflector : System.Object
System.Web.Services.Description.MimeReflector = {}
---@alias CS.System.Web.Services.Description.MimeReflector System.Web.Services.Description.MimeReflector
CS.System.Web.Services.Description.MimeReflector = System.Web.Services.Description.MimeReflector


---@class System.Web.Services.Description.MimeReturn : System.Object
System.Web.Services.Description.MimeReturn = {}
---@alias CS.System.Web.Services.Description.MimeReturn System.Web.Services.Description.MimeReturn
CS.System.Web.Services.Description.MimeReturn = System.Web.Services.Description.MimeReturn

---@return System.Web.Services.Description.MimeReturn
function System.Web.Services.Description.MimeReturn.New() end

---@class System.Web.Services.Description.MimeTextReturn : System.Web.Services.Description.MimeReturn
System.Web.Services.Description.MimeTextReturn = {}
---@alias CS.System.Web.Services.Description.MimeTextReturn System.Web.Services.Description.MimeTextReturn
CS.System.Web.Services.Description.MimeTextReturn = System.Web.Services.Description.MimeTextReturn

---@return System.Web.Services.Description.MimeTextReturn
function System.Web.Services.Description.MimeTextReturn.New() end

---@class System.Web.Services.Description.MimeTextImporter : System.Web.Services.Description.MimeImporter
System.Web.Services.Description.MimeTextImporter = {}
---@alias CS.System.Web.Services.Description.MimeTextImporter System.Web.Services.Description.MimeTextImporter
CS.System.Web.Services.Description.MimeTextImporter = System.Web.Services.Description.MimeTextImporter

---@return System.Web.Services.Description.MimeTextImporter
function System.Web.Services.Description.MimeTextImporter.New() end

---@class System.Web.Services.Description.MimeXmlReturn : System.Web.Services.Description.MimeReturn
System.Web.Services.Description.MimeXmlReturn = {}
---@alias CS.System.Web.Services.Description.MimeXmlReturn System.Web.Services.Description.MimeXmlReturn
CS.System.Web.Services.Description.MimeXmlReturn = System.Web.Services.Description.MimeXmlReturn

---@return System.Web.Services.Description.MimeXmlReturn
function System.Web.Services.Description.MimeXmlReturn.New() end

---@class System.Web.Services.Description.MimeXmlImporter : System.Web.Services.Description.MimeImporter
System.Web.Services.Description.MimeXmlImporter = {}
---@alias CS.System.Web.Services.Description.MimeXmlImporter System.Web.Services.Description.MimeXmlImporter
CS.System.Web.Services.Description.MimeXmlImporter = System.Web.Services.Description.MimeXmlImporter

---@return System.Web.Services.Description.MimeXmlImporter
function System.Web.Services.Description.MimeXmlImporter.New() end

---@class System.Web.Services.Description.MimeXmlReflector : System.Web.Services.Description.MimeReflector
System.Web.Services.Description.MimeXmlReflector = {}
---@alias CS.System.Web.Services.Description.MimeXmlReflector System.Web.Services.Description.MimeXmlReflector
CS.System.Web.Services.Description.MimeXmlReflector = System.Web.Services.Description.MimeXmlReflector

---@return System.Web.Services.Description.MimeXmlReflector
function System.Web.Services.Description.MimeXmlReflector.New() end

---@class System.Web.Services.Description.ProtocolImporter : System.Object
---@field ServiceDescriptions System.Web.Services.Description.ServiceDescriptionCollection
---@field Schemas System.Xml.Serialization.XmlSchemas
---@field AbstractSchemas System.Xml.Serialization.XmlSchemas
---@field ConcreteSchemas System.Xml.Serialization.XmlSchemas
---@field CodeNamespace System.CodeDom.CodeNamespace
---@field CodeTypeDeclaration System.CodeDom.CodeTypeDeclaration
---@field Style System.Web.Services.Description.ServiceDescriptionImportStyle
---@field Warnings System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field ClassNames System.Xml.Serialization.CodeIdentifiers
---@field MethodName string
---@field ClassName string
---@field Port System.Web.Services.Description.Port
---@field PortType System.Web.Services.Description.PortType
---@field Binding System.Web.Services.Description.Binding
---@field Service System.Web.Services.Description.Service
---@field Operation System.Web.Services.Description.Operation
---@field OperationBinding System.Web.Services.Description.OperationBinding
---@field InputMessage System.Web.Services.Description.Message
---@field OutputMessage System.Web.Services.Description.Message
---@field ProtocolName string
System.Web.Services.Description.ProtocolImporter = {}
---@alias CS.System.Web.Services.Description.ProtocolImporter System.Web.Services.Description.ProtocolImporter
CS.System.Web.Services.Description.ProtocolImporter = System.Web.Services.Description.ProtocolImporter

---@param comments System.CodeDom.CodeCommentStatementCollection
---@param extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
function System.Web.Services.Description.ProtocolImporter:AddExtensionWarningComments(comments, extensions) end
---@param text string
function System.Web.Services.Description.ProtocolImporter:UnsupportedBindingWarning(text) end
---@param text string
function System.Web.Services.Description.ProtocolImporter:UnsupportedOperationWarning(text) end
---@param text string
function System.Web.Services.Description.ProtocolImporter:UnsupportedOperationBindingWarning(text) end
---@param text string
---@return System.Exception
function System.Web.Services.Description.ProtocolImporter:OperationSyntaxException(text) end
---@param text string
---@return System.Exception
function System.Web.Services.Description.ProtocolImporter:OperationBindingSyntaxException(text) end

---@class System.Web.Services.Description.ProtocolImporterUtil : System.Object
System.Web.Services.Description.ProtocolImporterUtil = {}
---@alias CS.System.Web.Services.Description.ProtocolImporterUtil System.Web.Services.Description.ProtocolImporterUtil
CS.System.Web.Services.Description.ProtocolImporterUtil = System.Web.Services.Description.ProtocolImporterUtil


---@class System.Web.Services.Description.DelegateInfo : System.Object
System.Web.Services.Description.DelegateInfo = {}
---@alias CS.System.Web.Services.Description.DelegateInfo System.Web.Services.Description.DelegateInfo
CS.System.Web.Services.Description.DelegateInfo = System.Web.Services.Description.DelegateInfo


---@class System.Web.Services.Description.ProtocolReflector : System.Object
---@field Service System.Web.Services.Description.Service
---@field ServiceDescription System.Web.Services.Description.ServiceDescription
---@field ServiceDescriptions System.Web.Services.Description.ServiceDescriptionCollection
---@field Schemas System.Xml.Serialization.XmlSchemas
---@field SchemaExporter System.Xml.Serialization.XmlSchemaExporter
---@field ReflectionImporter System.Xml.Serialization.XmlReflectionImporter
---@field DefaultNamespace string
---@field ServiceUrl string
---@field ServiceType System.Type
---@field Method System.Web.Services.Protocols.LogicalMethodInfo
---@field Binding System.Web.Services.Description.Binding
---@field PortType System.Web.Services.Description.PortType
---@field Port System.Web.Services.Description.Port
---@field Operation System.Web.Services.Description.Operation
---@field OperationBinding System.Web.Services.Description.OperationBinding
---@field MethodAttribute System.Web.Services.WebMethodAttribute
---@field Methods System.Web.Services.Protocols.LogicalMethodInfo[]
---@field InputMessage System.Web.Services.Description.Message
---@field OutputMessage System.Web.Services.Description.Message
---@field HeaderMessages System.Web.Services.Description.MessageCollection
---@field ProtocolName string
System.Web.Services.Description.ProtocolReflector = {}
---@alias CS.System.Web.Services.Description.ProtocolReflector System.Web.Services.Description.ProtocolReflector
CS.System.Web.Services.Description.ProtocolReflector = System.Web.Services.Description.ProtocolReflector

---@param ns string
---@return System.Web.Services.Description.ServiceDescription
function System.Web.Services.Description.ProtocolReflector:GetServiceDescription(ns) end

---@class System.Web.Services.Description.ProtocolReflector.ReflectedBinding : System.Object
---@field bindingAttr System.Web.Services.WebServiceBindingAttribute
---@field methodList System.Collections.ArrayList
System.Web.Services.Description.ProtocolReflector.ReflectedBinding = {}
---@alias CS.System.Web.Services.Description.ProtocolReflector.ReflectedBinding System.Web.Services.Description.ProtocolReflector.ReflectedBinding
CS.System.Web.Services.Description.ProtocolReflector.ReflectedBinding = System.Web.Services.Description.ProtocolReflector.ReflectedBinding


---@class System.Web.Services.Description.SchemaCompiler : System.Object
System.Web.Services.Description.SchemaCompiler = {}
---@alias CS.System.Web.Services.Description.SchemaCompiler System.Web.Services.Description.SchemaCompiler
CS.System.Web.Services.Description.SchemaCompiler = System.Web.Services.Description.SchemaCompiler

---@return System.Web.Services.Description.SchemaCompiler
function System.Web.Services.Description.SchemaCompiler.New() end

---@class System.Web.Services.Description.ServiceDescription : System.Web.Services.Description.NamedItem
---@field Namespace string
---@field Schema System.Xml.Schema.XmlSchema
---@field Serializer System.Xml.Serialization.XmlSerializer
---@field RetrievalUrl string
---@field ServiceDescriptions System.Web.Services.Description.ServiceDescriptionCollection
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field Imports System.Web.Services.Description.ImportCollection
---@field Types System.Web.Services.Description.Types
---@field Messages System.Web.Services.Description.MessageCollection
---@field PortTypes System.Web.Services.Description.PortTypeCollection
---@field Bindings System.Web.Services.Description.BindingCollection
---@field Services System.Web.Services.Description.ServiceCollection
---@field TargetNamespace string
---@field ValidationWarnings System.Collections.Specialized.StringCollection
System.Web.Services.Description.ServiceDescription = {}
---@alias CS.System.Web.Services.Description.ServiceDescription System.Web.Services.Description.ServiceDescription
CS.System.Web.Services.Description.ServiceDescription = System.Web.Services.Description.ServiceDescription

---@return System.Web.Services.Description.ServiceDescription
function System.Web.Services.Description.ServiceDescription.New() end
---@overload fun(textReader: System.IO.TextReader) : System.Web.Services.Description.ServiceDescription
---@overload fun(stream: System.IO.Stream) : System.Web.Services.Description.ServiceDescription
---@overload fun(reader: System.Xml.XmlReader) : System.Web.Services.Description.ServiceDescription
---@overload fun(fileName: string) : System.Web.Services.Description.ServiceDescription
---@overload fun(textReader: System.IO.TextReader, validate: boolean) : System.Web.Services.Description.ServiceDescription
---@overload fun(stream: System.IO.Stream, validate: boolean) : System.Web.Services.Description.ServiceDescription
---@overload fun(fileName: string, validate: boolean) : System.Web.Services.Description.ServiceDescription
---@param reader System.Xml.XmlReader
---@param validate boolean
---@return System.Web.Services.Description.ServiceDescription
function System.Web.Services.Description.ServiceDescription.Read(reader, validate) end
---@param reader System.Xml.XmlReader
---@return boolean
function System.Web.Services.Description.ServiceDescription.CanRead(reader) end
---@overload fun(self: System.Web.Services.Description.ServiceDescription, fileName: string)
---@overload fun(self: System.Web.Services.Description.ServiceDescription, writer: System.IO.TextWriter)
---@overload fun(self: System.Web.Services.Description.ServiceDescription, stream: System.IO.Stream)
---@param writer System.Xml.XmlWriter
function System.Web.Services.Description.ServiceDescription:Write(writer) end

---@class System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer : System.Xml.Serialization.XmlSerializer
System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer = {}
---@alias CS.System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer
CS.System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer = System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer

---@return System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer
function System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer.New() end
---@param xmlReader System.Xml.XmlReader
---@return boolean
function System.Web.Services.Description.ServiceDescription.ServiceDescriptionSerializer:CanDeserialize(xmlReader) end

---@class System.Web.Services.Description.Import : System.Web.Services.Description.DocumentableItem
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field ServiceDescription System.Web.Services.Description.ServiceDescription
---@field Namespace string
---@field Location string
System.Web.Services.Description.Import = {}
---@alias CS.System.Web.Services.Description.Import System.Web.Services.Description.Import
CS.System.Web.Services.Description.Import = System.Web.Services.Description.Import

---@return System.Web.Services.Description.Import
function System.Web.Services.Description.Import.New() end

---@class System.Web.Services.Description.DocumentableItem : System.Object
---@field Documentation string
---@field DocumentationElement System.Xml.XmlElement
---@field ExtensibleAttributes System.Xml.XmlAttribute[]
---@field Namespaces System.Xml.Serialization.XmlSerializerNamespaces
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.DocumentableItem = {}
---@alias CS.System.Web.Services.Description.DocumentableItem System.Web.Services.Description.DocumentableItem
CS.System.Web.Services.Description.DocumentableItem = System.Web.Services.Description.DocumentableItem


---@class System.Web.Services.Description.NamedItem : System.Web.Services.Description.DocumentableItem
---@field Name string
System.Web.Services.Description.NamedItem = {}
---@alias CS.System.Web.Services.Description.NamedItem System.Web.Services.Description.NamedItem
CS.System.Web.Services.Description.NamedItem = System.Web.Services.Description.NamedItem


---@class System.Web.Services.Description.Port : System.Web.Services.Description.NamedItem
---@field Service System.Web.Services.Description.Service
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field Binding System.Xml.XmlQualifiedName
System.Web.Services.Description.Port = {}
---@alias CS.System.Web.Services.Description.Port System.Web.Services.Description.Port
CS.System.Web.Services.Description.Port = System.Web.Services.Description.Port

---@return System.Web.Services.Description.Port
function System.Web.Services.Description.Port.New() end

---@class System.Web.Services.Description.Service : System.Web.Services.Description.NamedItem
---@field ServiceDescription System.Web.Services.Description.ServiceDescription
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field Ports System.Web.Services.Description.PortCollection
System.Web.Services.Description.Service = {}
---@alias CS.System.Web.Services.Description.Service System.Web.Services.Description.Service
CS.System.Web.Services.Description.Service = System.Web.Services.Description.Service

---@return System.Web.Services.Description.Service
function System.Web.Services.Description.Service.New() end

---@class System.Web.Services.Description.FaultBinding : System.Web.Services.Description.MessageBinding
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.FaultBinding = {}
---@alias CS.System.Web.Services.Description.FaultBinding System.Web.Services.Description.FaultBinding
CS.System.Web.Services.Description.FaultBinding = System.Web.Services.Description.FaultBinding

---@return System.Web.Services.Description.FaultBinding
function System.Web.Services.Description.FaultBinding.New() end

---@class System.Web.Services.Description.MessageBinding : System.Web.Services.Description.NamedItem
---@field OperationBinding System.Web.Services.Description.OperationBinding
System.Web.Services.Description.MessageBinding = {}
---@alias CS.System.Web.Services.Description.MessageBinding System.Web.Services.Description.MessageBinding
CS.System.Web.Services.Description.MessageBinding = System.Web.Services.Description.MessageBinding


---@class System.Web.Services.Description.InputBinding : System.Web.Services.Description.MessageBinding
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.InputBinding = {}
---@alias CS.System.Web.Services.Description.InputBinding System.Web.Services.Description.InputBinding
CS.System.Web.Services.Description.InputBinding = System.Web.Services.Description.InputBinding

---@return System.Web.Services.Description.InputBinding
function System.Web.Services.Description.InputBinding.New() end

---@class System.Web.Services.Description.OutputBinding : System.Web.Services.Description.MessageBinding
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.OutputBinding = {}
---@alias CS.System.Web.Services.Description.OutputBinding System.Web.Services.Description.OutputBinding
CS.System.Web.Services.Description.OutputBinding = System.Web.Services.Description.OutputBinding

---@return System.Web.Services.Description.OutputBinding
function System.Web.Services.Description.OutputBinding.New() end

---@class System.Web.Services.Description.OperationBinding : System.Web.Services.Description.NamedItem
---@field Binding System.Web.Services.Description.Binding
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field Input System.Web.Services.Description.InputBinding
---@field Output System.Web.Services.Description.OutputBinding
---@field Faults System.Web.Services.Description.FaultBindingCollection
System.Web.Services.Description.OperationBinding = {}
---@alias CS.System.Web.Services.Description.OperationBinding System.Web.Services.Description.OperationBinding
CS.System.Web.Services.Description.OperationBinding = System.Web.Services.Description.OperationBinding

---@return System.Web.Services.Description.OperationBinding
function System.Web.Services.Description.OperationBinding.New() end

---@class System.Web.Services.Description.Binding : System.Web.Services.Description.NamedItem
---@field ServiceDescription System.Web.Services.Description.ServiceDescription
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field Operations System.Web.Services.Description.OperationBindingCollection
---@field Type System.Xml.XmlQualifiedName
System.Web.Services.Description.Binding = {}
---@alias CS.System.Web.Services.Description.Binding System.Web.Services.Description.Binding
CS.System.Web.Services.Description.Binding = System.Web.Services.Description.Binding

---@return System.Web.Services.Description.Binding
function System.Web.Services.Description.Binding.New() end

---@class System.Web.Services.Description.OperationMessage : System.Web.Services.Description.NamedItem
---@field Operation System.Web.Services.Description.Operation
---@field Message System.Xml.XmlQualifiedName
System.Web.Services.Description.OperationMessage = {}
---@alias CS.System.Web.Services.Description.OperationMessage System.Web.Services.Description.OperationMessage
CS.System.Web.Services.Description.OperationMessage = System.Web.Services.Description.OperationMessage


---@class System.Web.Services.Description.OperationFault : System.Web.Services.Description.OperationMessage
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.OperationFault = {}
---@alias CS.System.Web.Services.Description.OperationFault System.Web.Services.Description.OperationFault
CS.System.Web.Services.Description.OperationFault = System.Web.Services.Description.OperationFault

---@return System.Web.Services.Description.OperationFault
function System.Web.Services.Description.OperationFault.New() end

---@class System.Web.Services.Description.OperationInput : System.Web.Services.Description.OperationMessage
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.OperationInput = {}
---@alias CS.System.Web.Services.Description.OperationInput System.Web.Services.Description.OperationInput
CS.System.Web.Services.Description.OperationInput = System.Web.Services.Description.OperationInput

---@return System.Web.Services.Description.OperationInput
function System.Web.Services.Description.OperationInput.New() end

---@class System.Web.Services.Description.OperationOutput : System.Web.Services.Description.OperationMessage
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
System.Web.Services.Description.OperationOutput = {}
---@alias CS.System.Web.Services.Description.OperationOutput System.Web.Services.Description.OperationOutput
CS.System.Web.Services.Description.OperationOutput = System.Web.Services.Description.OperationOutput

---@return System.Web.Services.Description.OperationOutput
function System.Web.Services.Description.OperationOutput.New() end

---@class System.Web.Services.Description.Operation : System.Web.Services.Description.NamedItem
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field PortType System.Web.Services.Description.PortType
---@field ParameterOrderString string
---@field ParameterOrder System.String[]
---@field Messages System.Web.Services.Description.OperationMessageCollection
---@field Faults System.Web.Services.Description.OperationFaultCollection
System.Web.Services.Description.Operation = {}
---@alias CS.System.Web.Services.Description.Operation System.Web.Services.Description.Operation
CS.System.Web.Services.Description.Operation = System.Web.Services.Description.Operation

---@return System.Web.Services.Description.Operation
function System.Web.Services.Description.Operation.New() end
---@param operationBinding System.Web.Services.Description.OperationBinding
---@return boolean
function System.Web.Services.Description.Operation:IsBoundBy(operationBinding) end

---@class System.Web.Services.Description.PortType : System.Web.Services.Description.NamedItem
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field ServiceDescription System.Web.Services.Description.ServiceDescription
---@field Operations System.Web.Services.Description.OperationCollection
System.Web.Services.Description.PortType = {}
---@alias CS.System.Web.Services.Description.PortType System.Web.Services.Description.PortType
CS.System.Web.Services.Description.PortType = System.Web.Services.Description.PortType

---@return System.Web.Services.Description.PortType
function System.Web.Services.Description.PortType.New() end

---@class System.Web.Services.Description.Message : System.Web.Services.Description.NamedItem
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field ServiceDescription System.Web.Services.Description.ServiceDescription
---@field Parts System.Web.Services.Description.MessagePartCollection
System.Web.Services.Description.Message = {}
---@alias CS.System.Web.Services.Description.Message System.Web.Services.Description.Message
CS.System.Web.Services.Description.Message = System.Web.Services.Description.Message

---@return System.Web.Services.Description.Message
function System.Web.Services.Description.Message.New() end
---@param partNames System.String[]
---@return System.Web.Services.Description.MessagePart[]
function System.Web.Services.Description.Message:FindPartsByName(partNames) end
---@param partName string
---@return System.Web.Services.Description.MessagePart
function System.Web.Services.Description.Message:FindPartByName(partName) end

---@class System.Web.Services.Description.MessagePart : System.Web.Services.Description.NamedItem
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field Message System.Web.Services.Description.Message
---@field Element System.Xml.XmlQualifiedName
---@field Type System.Xml.XmlQualifiedName
System.Web.Services.Description.MessagePart = {}
---@alias CS.System.Web.Services.Description.MessagePart System.Web.Services.Description.MessagePart
CS.System.Web.Services.Description.MessagePart = System.Web.Services.Description.MessagePart

---@return System.Web.Services.Description.MessagePart
function System.Web.Services.Description.MessagePart.New() end

---@class System.Web.Services.Description.Types : System.Web.Services.Description.DocumentableItem
---@field Extensions System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
---@field Schemas System.Xml.Serialization.XmlSchemas
System.Web.Services.Description.Types = {}
---@alias CS.System.Web.Services.Description.Types System.Web.Services.Description.Types
CS.System.Web.Services.Description.Types = System.Web.Services.Description.Types

---@return System.Web.Services.Description.Types
function System.Web.Services.Description.Types.New() end

---@class System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Object
System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
CS.System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection = System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection

---@param parent System.Object
---@return System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection.New(parent) end
---@param extension System.Object
---@return number
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:Add(extension) end
---@param index number
---@param extension System.Object
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:Insert(index, extension) end
---@param extension System.Object
---@return number
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:IndexOf(extension) end
---@param extension System.Object
---@return boolean
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:Contains(extension) end
---@param extension System.Object
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:Remove(extension) end
---@param array System.Object[]
---@param index number
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:CopyTo(array, index) end
---@overload fun(self: System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection, type: System.Type) : System.Object
---@param name string
---@param ns string
---@return System.Xml.XmlElement
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:Find(name, ns) end
---@overload fun(self: System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection, type: System.Type) : System.Object[]
---@param name string
---@param ns string
---@return System.Xml.XmlElement[]
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:FindAll(name, ns) end
---@param item System.Object
---@return boolean
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:IsHandled(item) end
---@param item System.Object
---@return boolean
function System.Web.Services.Description.ServiceDescriptionFormatExtensionCollection:IsRequired(item) end

---@class System.Web.Services.Description.ServiceDescriptionFormatExtension : System.Object
---@field Parent System.Object
---@field Required boolean
---@field Handled boolean
System.Web.Services.Description.ServiceDescriptionFormatExtension = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionFormatExtension System.Web.Services.Description.ServiceDescriptionFormatExtension
CS.System.Web.Services.Description.ServiceDescriptionFormatExtension = System.Web.Services.Description.ServiceDescriptionFormatExtension


---@class System.Web.Services.Description.OperationFlow
---@field None System.Web.Services.Description.OperationFlow
---@field OneWay System.Web.Services.Description.OperationFlow
---@field Notification System.Web.Services.Description.OperationFlow
---@field RequestResponse System.Web.Services.Description.OperationFlow
---@field SolicitResponse System.Web.Services.Description.OperationFlow
System.Web.Services.Description.OperationFlow = {}
---@alias CS.System.Web.Services.Description.OperationFlow System.Web.Services.Description.OperationFlow
CS.System.Web.Services.Description.OperationFlow = System.Web.Services.Description.OperationFlow


---@class System.Web.Services.Description.OperationMessageCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.OperationMessage
---@field Input System.Web.Services.Description.OperationInput
---@field Output System.Web.Services.Description.OperationOutput
---@field Flow System.Web.Services.Description.OperationFlow
System.Web.Services.Description.OperationMessageCollection = {}
---@alias CS.System.Web.Services.Description.OperationMessageCollection System.Web.Services.Description.OperationMessageCollection
CS.System.Web.Services.Description.OperationMessageCollection = System.Web.Services.Description.OperationMessageCollection

---@param operationMessage System.Web.Services.Description.OperationMessage
---@return number
function System.Web.Services.Description.OperationMessageCollection:Add(operationMessage) end
---@param index number
---@param operationMessage System.Web.Services.Description.OperationMessage
function System.Web.Services.Description.OperationMessageCollection:Insert(index, operationMessage) end
---@param operationMessage System.Web.Services.Description.OperationMessage
---@return number
function System.Web.Services.Description.OperationMessageCollection:IndexOf(operationMessage) end
---@param operationMessage System.Web.Services.Description.OperationMessage
---@return boolean
function System.Web.Services.Description.OperationMessageCollection:Contains(operationMessage) end
---@param operationMessage System.Web.Services.Description.OperationMessage
function System.Web.Services.Description.OperationMessageCollection:Remove(operationMessage) end
---@param array System.Web.Services.Description.OperationMessage[]
---@param index number
function System.Web.Services.Description.OperationMessageCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.ImportCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.Import
System.Web.Services.Description.ImportCollection = {}
---@alias CS.System.Web.Services.Description.ImportCollection System.Web.Services.Description.ImportCollection
CS.System.Web.Services.Description.ImportCollection = System.Web.Services.Description.ImportCollection

---@param import System.Web.Services.Description.Import
---@return number
function System.Web.Services.Description.ImportCollection:Add(import) end
---@param index number
---@param import System.Web.Services.Description.Import
function System.Web.Services.Description.ImportCollection:Insert(index, import) end
---@param import System.Web.Services.Description.Import
---@return number
function System.Web.Services.Description.ImportCollection:IndexOf(import) end
---@param import System.Web.Services.Description.Import
---@return boolean
function System.Web.Services.Description.ImportCollection:Contains(import) end
---@param import System.Web.Services.Description.Import
function System.Web.Services.Description.ImportCollection:Remove(import) end
---@param array System.Web.Services.Description.Import[]
---@param index number
function System.Web.Services.Description.ImportCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.MessageCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.Message
---@field Item System.Web.Services.Description.Message
System.Web.Services.Description.MessageCollection = {}
---@alias CS.System.Web.Services.Description.MessageCollection System.Web.Services.Description.MessageCollection
CS.System.Web.Services.Description.MessageCollection = System.Web.Services.Description.MessageCollection

---@param message System.Web.Services.Description.Message
---@return number
function System.Web.Services.Description.MessageCollection:Add(message) end
---@param index number
---@param message System.Web.Services.Description.Message
function System.Web.Services.Description.MessageCollection:Insert(index, message) end
---@param message System.Web.Services.Description.Message
---@return number
function System.Web.Services.Description.MessageCollection:IndexOf(message) end
---@param message System.Web.Services.Description.Message
---@return boolean
function System.Web.Services.Description.MessageCollection:Contains(message) end
---@param message System.Web.Services.Description.Message
function System.Web.Services.Description.MessageCollection:Remove(message) end
---@param array System.Web.Services.Description.Message[]
---@param index number
function System.Web.Services.Description.MessageCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.PortCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.Port
---@field Item System.Web.Services.Description.Port
System.Web.Services.Description.PortCollection = {}
---@alias CS.System.Web.Services.Description.PortCollection System.Web.Services.Description.PortCollection
CS.System.Web.Services.Description.PortCollection = System.Web.Services.Description.PortCollection

---@param port System.Web.Services.Description.Port
---@return number
function System.Web.Services.Description.PortCollection:Add(port) end
---@param index number
---@param port System.Web.Services.Description.Port
function System.Web.Services.Description.PortCollection:Insert(index, port) end
---@param port System.Web.Services.Description.Port
---@return number
function System.Web.Services.Description.PortCollection:IndexOf(port) end
---@param port System.Web.Services.Description.Port
---@return boolean
function System.Web.Services.Description.PortCollection:Contains(port) end
---@param port System.Web.Services.Description.Port
function System.Web.Services.Description.PortCollection:Remove(port) end
---@param array System.Web.Services.Description.Port[]
---@param index number
function System.Web.Services.Description.PortCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.PortTypeCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.PortType
---@field Item System.Web.Services.Description.PortType
System.Web.Services.Description.PortTypeCollection = {}
---@alias CS.System.Web.Services.Description.PortTypeCollection System.Web.Services.Description.PortTypeCollection
CS.System.Web.Services.Description.PortTypeCollection = System.Web.Services.Description.PortTypeCollection

---@param portType System.Web.Services.Description.PortType
---@return number
function System.Web.Services.Description.PortTypeCollection:Add(portType) end
---@param index number
---@param portType System.Web.Services.Description.PortType
function System.Web.Services.Description.PortTypeCollection:Insert(index, portType) end
---@param portType System.Web.Services.Description.PortType
---@return number
function System.Web.Services.Description.PortTypeCollection:IndexOf(portType) end
---@param portType System.Web.Services.Description.PortType
---@return boolean
function System.Web.Services.Description.PortTypeCollection:Contains(portType) end
---@param portType System.Web.Services.Description.PortType
function System.Web.Services.Description.PortTypeCollection:Remove(portType) end
---@param array System.Web.Services.Description.PortType[]
---@param index number
function System.Web.Services.Description.PortTypeCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.BindingCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.Binding
---@field Item System.Web.Services.Description.Binding
System.Web.Services.Description.BindingCollection = {}
---@alias CS.System.Web.Services.Description.BindingCollection System.Web.Services.Description.BindingCollection
CS.System.Web.Services.Description.BindingCollection = System.Web.Services.Description.BindingCollection

---@param binding System.Web.Services.Description.Binding
---@return number
function System.Web.Services.Description.BindingCollection:Add(binding) end
---@param index number
---@param binding System.Web.Services.Description.Binding
function System.Web.Services.Description.BindingCollection:Insert(index, binding) end
---@param binding System.Web.Services.Description.Binding
---@return number
function System.Web.Services.Description.BindingCollection:IndexOf(binding) end
---@param binding System.Web.Services.Description.Binding
---@return boolean
function System.Web.Services.Description.BindingCollection:Contains(binding) end
---@param binding System.Web.Services.Description.Binding
function System.Web.Services.Description.BindingCollection:Remove(binding) end
---@param array System.Web.Services.Description.Binding[]
---@param index number
function System.Web.Services.Description.BindingCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.ServiceCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.Service
---@field Item System.Web.Services.Description.Service
System.Web.Services.Description.ServiceCollection = {}
---@alias CS.System.Web.Services.Description.ServiceCollection System.Web.Services.Description.ServiceCollection
CS.System.Web.Services.Description.ServiceCollection = System.Web.Services.Description.ServiceCollection

---@param service System.Web.Services.Description.Service
---@return number
function System.Web.Services.Description.ServiceCollection:Add(service) end
---@param index number
---@param service System.Web.Services.Description.Service
function System.Web.Services.Description.ServiceCollection:Insert(index, service) end
---@param service System.Web.Services.Description.Service
---@return number
function System.Web.Services.Description.ServiceCollection:IndexOf(service) end
---@param service System.Web.Services.Description.Service
---@return boolean
function System.Web.Services.Description.ServiceCollection:Contains(service) end
---@param service System.Web.Services.Description.Service
function System.Web.Services.Description.ServiceCollection:Remove(service) end
---@param array System.Web.Services.Description.Service[]
---@param index number
function System.Web.Services.Description.ServiceCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.MessagePartCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.MessagePart
---@field Item System.Web.Services.Description.MessagePart
System.Web.Services.Description.MessagePartCollection = {}
---@alias CS.System.Web.Services.Description.MessagePartCollection System.Web.Services.Description.MessagePartCollection
CS.System.Web.Services.Description.MessagePartCollection = System.Web.Services.Description.MessagePartCollection

---@param messagePart System.Web.Services.Description.MessagePart
---@return number
function System.Web.Services.Description.MessagePartCollection:Add(messagePart) end
---@param index number
---@param messagePart System.Web.Services.Description.MessagePart
function System.Web.Services.Description.MessagePartCollection:Insert(index, messagePart) end
---@param messagePart System.Web.Services.Description.MessagePart
---@return number
function System.Web.Services.Description.MessagePartCollection:IndexOf(messagePart) end
---@param messagePart System.Web.Services.Description.MessagePart
---@return boolean
function System.Web.Services.Description.MessagePartCollection:Contains(messagePart) end
---@param messagePart System.Web.Services.Description.MessagePart
function System.Web.Services.Description.MessagePartCollection:Remove(messagePart) end
---@param array System.Web.Services.Description.MessagePart[]
---@param index number
function System.Web.Services.Description.MessagePartCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.OperationBindingCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.OperationBinding
System.Web.Services.Description.OperationBindingCollection = {}
---@alias CS.System.Web.Services.Description.OperationBindingCollection System.Web.Services.Description.OperationBindingCollection
CS.System.Web.Services.Description.OperationBindingCollection = System.Web.Services.Description.OperationBindingCollection

---@param bindingOperation System.Web.Services.Description.OperationBinding
---@return number
function System.Web.Services.Description.OperationBindingCollection:Add(bindingOperation) end
---@param index number
---@param bindingOperation System.Web.Services.Description.OperationBinding
function System.Web.Services.Description.OperationBindingCollection:Insert(index, bindingOperation) end
---@param bindingOperation System.Web.Services.Description.OperationBinding
---@return number
function System.Web.Services.Description.OperationBindingCollection:IndexOf(bindingOperation) end
---@param bindingOperation System.Web.Services.Description.OperationBinding
---@return boolean
function System.Web.Services.Description.OperationBindingCollection:Contains(bindingOperation) end
---@param bindingOperation System.Web.Services.Description.OperationBinding
function System.Web.Services.Description.OperationBindingCollection:Remove(bindingOperation) end
---@param array System.Web.Services.Description.OperationBinding[]
---@param index number
function System.Web.Services.Description.OperationBindingCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.FaultBindingCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.FaultBinding
---@field Item System.Web.Services.Description.FaultBinding
System.Web.Services.Description.FaultBindingCollection = {}
---@alias CS.System.Web.Services.Description.FaultBindingCollection System.Web.Services.Description.FaultBindingCollection
CS.System.Web.Services.Description.FaultBindingCollection = System.Web.Services.Description.FaultBindingCollection

---@param bindingOperationFault System.Web.Services.Description.FaultBinding
---@return number
function System.Web.Services.Description.FaultBindingCollection:Add(bindingOperationFault) end
---@param index number
---@param bindingOperationFault System.Web.Services.Description.FaultBinding
function System.Web.Services.Description.FaultBindingCollection:Insert(index, bindingOperationFault) end
---@param bindingOperationFault System.Web.Services.Description.FaultBinding
---@return number
function System.Web.Services.Description.FaultBindingCollection:IndexOf(bindingOperationFault) end
---@param bindingOperationFault System.Web.Services.Description.FaultBinding
---@return boolean
function System.Web.Services.Description.FaultBindingCollection:Contains(bindingOperationFault) end
---@param bindingOperationFault System.Web.Services.Description.FaultBinding
function System.Web.Services.Description.FaultBindingCollection:Remove(bindingOperationFault) end
---@param array System.Web.Services.Description.FaultBinding[]
---@param index number
function System.Web.Services.Description.FaultBindingCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.OperationCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.Operation
System.Web.Services.Description.OperationCollection = {}
---@alias CS.System.Web.Services.Description.OperationCollection System.Web.Services.Description.OperationCollection
CS.System.Web.Services.Description.OperationCollection = System.Web.Services.Description.OperationCollection

---@param operation System.Web.Services.Description.Operation
---@return number
function System.Web.Services.Description.OperationCollection:Add(operation) end
---@param index number
---@param operation System.Web.Services.Description.Operation
function System.Web.Services.Description.OperationCollection:Insert(index, operation) end
---@param operation System.Web.Services.Description.Operation
---@return number
function System.Web.Services.Description.OperationCollection:IndexOf(operation) end
---@param operation System.Web.Services.Description.Operation
---@return boolean
function System.Web.Services.Description.OperationCollection:Contains(operation) end
---@param operation System.Web.Services.Description.Operation
function System.Web.Services.Description.OperationCollection:Remove(operation) end
---@param array System.Web.Services.Description.Operation[]
---@param index number
function System.Web.Services.Description.OperationCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.OperationFaultCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.OperationFault
---@field Item System.Web.Services.Description.OperationFault
System.Web.Services.Description.OperationFaultCollection = {}
---@alias CS.System.Web.Services.Description.OperationFaultCollection System.Web.Services.Description.OperationFaultCollection
CS.System.Web.Services.Description.OperationFaultCollection = System.Web.Services.Description.OperationFaultCollection

---@param operationFaultMessage System.Web.Services.Description.OperationFault
---@return number
function System.Web.Services.Description.OperationFaultCollection:Add(operationFaultMessage) end
---@param index number
---@param operationFaultMessage System.Web.Services.Description.OperationFault
function System.Web.Services.Description.OperationFaultCollection:Insert(index, operationFaultMessage) end
---@param operationFaultMessage System.Web.Services.Description.OperationFault
---@return number
function System.Web.Services.Description.OperationFaultCollection:IndexOf(operationFaultMessage) end
---@param operationFaultMessage System.Web.Services.Description.OperationFault
---@return boolean
function System.Web.Services.Description.OperationFaultCollection:Contains(operationFaultMessage) end
---@param operationFaultMessage System.Web.Services.Description.OperationFault
function System.Web.Services.Description.OperationFaultCollection:Remove(operationFaultMessage) end
---@param array System.Web.Services.Description.OperationFault[]
---@param index number
function System.Web.Services.Description.OperationFaultCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.ServiceDescriptionBaseCollection : System.Collections.CollectionBase
System.Web.Services.Description.ServiceDescriptionBaseCollection = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionBaseCollection System.Web.Services.Description.ServiceDescriptionBaseCollection
CS.System.Web.Services.Description.ServiceDescriptionBaseCollection = System.Web.Services.Description.ServiceDescriptionBaseCollection


---@class System.Web.Services.Description.Schemas : System.Object
System.Web.Services.Description.Schemas = {}
---@alias CS.System.Web.Services.Description.Schemas System.Web.Services.Description.Schemas
CS.System.Web.Services.Description.Schemas = System.Web.Services.Description.Schemas


---@class System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field NoCodeGenerated System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field OptionalExtensionsIgnored System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field RequiredExtensionsIgnored System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field UnsupportedOperationsIgnored System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field UnsupportedBindingsIgnored System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field NoMethodsGenerated System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field SchemaValidation System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field WsiConformance System.Web.Services.Description.ServiceDescriptionImportWarnings
System.Web.Services.Description.ServiceDescriptionImportWarnings = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionImportWarnings System.Web.Services.Description.ServiceDescriptionImportWarnings
CS.System.Web.Services.Description.ServiceDescriptionImportWarnings = System.Web.Services.Description.ServiceDescriptionImportWarnings


---@class System.Web.Services.Description.ServiceDescriptionImportStyle
---@field Client System.Web.Services.Description.ServiceDescriptionImportStyle
---@field Server System.Web.Services.Description.ServiceDescriptionImportStyle
---@field ServerInterface System.Web.Services.Description.ServiceDescriptionImportStyle
System.Web.Services.Description.ServiceDescriptionImportStyle = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionImportStyle System.Web.Services.Description.ServiceDescriptionImportStyle
CS.System.Web.Services.Description.ServiceDescriptionImportStyle = System.Web.Services.Description.ServiceDescriptionImportStyle


---@class System.Web.Services.Description.ServiceDescriptionImporter : System.Object
---@field ServiceDescriptions System.Web.Services.Description.ServiceDescriptionCollection
---@field Schemas System.Xml.Serialization.XmlSchemas
---@field Style System.Web.Services.Description.ServiceDescriptionImportStyle
---@field CodeGenerationOptions System.Xml.Serialization.CodeGenerationOptions
---@field CodeGenerator System.CodeDom.Compiler.CodeDomProvider
---@field ProtocolName string
System.Web.Services.Description.ServiceDescriptionImporter = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionImporter System.Web.Services.Description.ServiceDescriptionImporter
CS.System.Web.Services.Description.ServiceDescriptionImporter = System.Web.Services.Description.ServiceDescriptionImporter

---@return System.Web.Services.Description.ServiceDescriptionImporter
function System.Web.Services.Description.ServiceDescriptionImporter.New() end
---@param webReferences System.Web.Services.Description.WebReferenceCollection
---@param codeProvider System.CodeDom.Compiler.CodeDomProvider
---@param codeCompileUnit System.CodeDom.CodeCompileUnit
---@param options System.Web.Services.Description.WebReferenceOptions
---@return System.Collections.Specialized.StringCollection
function System.Web.Services.Description.ServiceDescriptionImporter.GenerateWebReferences(webReferences, codeProvider, codeCompileUnit, options) end
---@param serviceDescription System.Web.Services.Description.ServiceDescription
---@param appSettingUrlKey string
---@param appSettingBaseUrl string
function System.Web.Services.Description.ServiceDescriptionImporter:AddServiceDescription(serviceDescription, appSettingUrlKey, appSettingBaseUrl) end
---@param codeNamespace System.CodeDom.CodeNamespace
---@param codeCompileUnit System.CodeDom.CodeCompileUnit
---@return System.Web.Services.Description.ServiceDescriptionImportWarnings
function System.Web.Services.Description.ServiceDescriptionImporter:Import(codeNamespace, codeCompileUnit) end

---@class System.Web.Services.Description.ServiceDescriptionReflector : System.Object
---@field ServiceDescriptions System.Web.Services.Description.ServiceDescriptionCollection
---@field Schemas System.Xml.Serialization.XmlSchemas
System.Web.Services.Description.ServiceDescriptionReflector = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionReflector System.Web.Services.Description.ServiceDescriptionReflector
CS.System.Web.Services.Description.ServiceDescriptionReflector = System.Web.Services.Description.ServiceDescriptionReflector

---@return System.Web.Services.Description.ServiceDescriptionReflector
function System.Web.Services.Description.ServiceDescriptionReflector.New() end
---@param type System.Type
---@param url string
function System.Web.Services.Description.ServiceDescriptionReflector:Reflect(type, url) end

---@class System.Web.Services.Description.ServiceDescriptionSerializationWriter : System.Xml.Serialization.XmlSerializationWriter
System.Web.Services.Description.ServiceDescriptionSerializationWriter = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionSerializationWriter System.Web.Services.Description.ServiceDescriptionSerializationWriter
CS.System.Web.Services.Description.ServiceDescriptionSerializationWriter = System.Web.Services.Description.ServiceDescriptionSerializationWriter

---@return System.Web.Services.Description.ServiceDescriptionSerializationWriter
function System.Web.Services.Description.ServiceDescriptionSerializationWriter.New() end
---@param o System.Object
function System.Web.Services.Description.ServiceDescriptionSerializationWriter:Write125_definitions(o) end

---@class System.Web.Services.Description.ServiceDescriptionSerializationReader : System.Xml.Serialization.XmlSerializationReader
System.Web.Services.Description.ServiceDescriptionSerializationReader = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionSerializationReader System.Web.Services.Description.ServiceDescriptionSerializationReader
CS.System.Web.Services.Description.ServiceDescriptionSerializationReader = System.Web.Services.Description.ServiceDescriptionSerializationReader

---@return System.Web.Services.Description.ServiceDescriptionSerializationReader
function System.Web.Services.Description.ServiceDescriptionSerializationReader.New() end
---@return System.Object
function System.Web.Services.Description.ServiceDescriptionSerializationReader:Read125_definitions() end

---@class System.Web.Services.Description.ServiceDescriptionCollection : System.Web.Services.Description.ServiceDescriptionBaseCollection
---@field Item System.Web.Services.Description.ServiceDescription
---@field Item System.Web.Services.Description.ServiceDescription
System.Web.Services.Description.ServiceDescriptionCollection = {}
---@alias CS.System.Web.Services.Description.ServiceDescriptionCollection System.Web.Services.Description.ServiceDescriptionCollection
CS.System.Web.Services.Description.ServiceDescriptionCollection = System.Web.Services.Description.ServiceDescriptionCollection

---@return System.Web.Services.Description.ServiceDescriptionCollection
function System.Web.Services.Description.ServiceDescriptionCollection.New() end
---@param serviceDescription System.Web.Services.Description.ServiceDescription
---@return number
function System.Web.Services.Description.ServiceDescriptionCollection:Add(serviceDescription) end
---@param index number
---@param serviceDescription System.Web.Services.Description.ServiceDescription
function System.Web.Services.Description.ServiceDescriptionCollection:Insert(index, serviceDescription) end
---@param serviceDescription System.Web.Services.Description.ServiceDescription
---@return number
function System.Web.Services.Description.ServiceDescriptionCollection:IndexOf(serviceDescription) end
---@param serviceDescription System.Web.Services.Description.ServiceDescription
---@return boolean
function System.Web.Services.Description.ServiceDescriptionCollection:Contains(serviceDescription) end
---@param serviceDescription System.Web.Services.Description.ServiceDescription
function System.Web.Services.Description.ServiceDescriptionCollection:Remove(serviceDescription) end
---@param array System.Web.Services.Description.ServiceDescription[]
---@param index number
function System.Web.Services.Description.ServiceDescriptionCollection:CopyTo(array, index) end
---@param name System.Xml.XmlQualifiedName
---@return System.Web.Services.Description.Message
function System.Web.Services.Description.ServiceDescriptionCollection:GetMessage(name) end
---@param name System.Xml.XmlQualifiedName
---@return System.Web.Services.Description.PortType
function System.Web.Services.Description.ServiceDescriptionCollection:GetPortType(name) end
---@param name System.Xml.XmlQualifiedName
---@return System.Web.Services.Description.Service
function System.Web.Services.Description.ServiceDescriptionCollection:GetService(name) end
---@param name System.Xml.XmlQualifiedName
---@return System.Web.Services.Description.Binding
function System.Web.Services.Description.ServiceDescriptionCollection:GetBinding(name) end

---@class System.Web.Services.Description.Soap12Binding : System.Web.Services.Description.SoapBinding
---@field Namespace string
---@field HttpTransport string
System.Web.Services.Description.Soap12Binding = {}
---@alias CS.System.Web.Services.Description.Soap12Binding System.Web.Services.Description.Soap12Binding
CS.System.Web.Services.Description.Soap12Binding = System.Web.Services.Description.Soap12Binding

---@return System.Web.Services.Description.Soap12Binding
function System.Web.Services.Description.Soap12Binding.New() end

---@class System.Web.Services.Description.Soap12OperationBinding : System.Web.Services.Description.SoapOperationBinding
---@field SoapActionRequired boolean
System.Web.Services.Description.Soap12OperationBinding = {}
---@alias CS.System.Web.Services.Description.Soap12OperationBinding System.Web.Services.Description.Soap12OperationBinding
CS.System.Web.Services.Description.Soap12OperationBinding = System.Web.Services.Description.Soap12OperationBinding

---@return System.Web.Services.Description.Soap12OperationBinding
function System.Web.Services.Description.Soap12OperationBinding.New() end

---@class System.Web.Services.Description.Soap12BodyBinding : System.Web.Services.Description.SoapBodyBinding
System.Web.Services.Description.Soap12BodyBinding = {}
---@alias CS.System.Web.Services.Description.Soap12BodyBinding System.Web.Services.Description.Soap12BodyBinding
CS.System.Web.Services.Description.Soap12BodyBinding = System.Web.Services.Description.Soap12BodyBinding

---@return System.Web.Services.Description.Soap12BodyBinding
function System.Web.Services.Description.Soap12BodyBinding.New() end

---@class System.Web.Services.Description.Soap12FaultBinding : System.Web.Services.Description.SoapFaultBinding
System.Web.Services.Description.Soap12FaultBinding = {}
---@alias CS.System.Web.Services.Description.Soap12FaultBinding System.Web.Services.Description.Soap12FaultBinding
CS.System.Web.Services.Description.Soap12FaultBinding = System.Web.Services.Description.Soap12FaultBinding

---@return System.Web.Services.Description.Soap12FaultBinding
function System.Web.Services.Description.Soap12FaultBinding.New() end

---@class System.Web.Services.Description.Soap12HeaderBinding : System.Web.Services.Description.SoapHeaderBinding
System.Web.Services.Description.Soap12HeaderBinding = {}
---@alias CS.System.Web.Services.Description.Soap12HeaderBinding System.Web.Services.Description.Soap12HeaderBinding
CS.System.Web.Services.Description.Soap12HeaderBinding = System.Web.Services.Description.Soap12HeaderBinding

---@return System.Web.Services.Description.Soap12HeaderBinding
function System.Web.Services.Description.Soap12HeaderBinding.New() end

---@class System.Web.Services.Description.Soap12AddressBinding : System.Web.Services.Description.SoapAddressBinding
System.Web.Services.Description.Soap12AddressBinding = {}
---@alias CS.System.Web.Services.Description.Soap12AddressBinding System.Web.Services.Description.Soap12AddressBinding
CS.System.Web.Services.Description.Soap12AddressBinding = System.Web.Services.Description.Soap12AddressBinding

---@return System.Web.Services.Description.Soap12AddressBinding
function System.Web.Services.Description.Soap12AddressBinding.New() end

---@class System.Web.Services.Description.Soap12ProtocolImporter : System.Web.Services.Description.SoapProtocolImporter
---@field ProtocolName string
System.Web.Services.Description.Soap12ProtocolImporter = {}
---@alias CS.System.Web.Services.Description.Soap12ProtocolImporter System.Web.Services.Description.Soap12ProtocolImporter
CS.System.Web.Services.Description.Soap12ProtocolImporter = System.Web.Services.Description.Soap12ProtocolImporter

---@return System.Web.Services.Description.Soap12ProtocolImporter
function System.Web.Services.Description.Soap12ProtocolImporter.New() end

---@class System.Web.Services.Description.Soap12ProtocolReflector : System.Web.Services.Description.SoapProtocolReflector
---@field ProtocolName string
System.Web.Services.Description.Soap12ProtocolReflector = {}
---@alias CS.System.Web.Services.Description.Soap12ProtocolReflector System.Web.Services.Description.Soap12ProtocolReflector
CS.System.Web.Services.Description.Soap12ProtocolReflector = System.Web.Services.Description.Soap12ProtocolReflector

---@return System.Web.Services.Description.Soap12ProtocolReflector
function System.Web.Services.Description.Soap12ProtocolReflector.New() end

---@class System.Web.Services.Description.SoapExtensionImporter : System.Object
---@field ImportContext System.Web.Services.Description.SoapProtocolImporter
System.Web.Services.Description.SoapExtensionImporter = {}
---@alias CS.System.Web.Services.Description.SoapExtensionImporter System.Web.Services.Description.SoapExtensionImporter
CS.System.Web.Services.Description.SoapExtensionImporter = System.Web.Services.Description.SoapExtensionImporter

---@param metadata System.CodeDom.CodeAttributeDeclarationCollection
function System.Web.Services.Description.SoapExtensionImporter:ImportMethod(metadata) end

---@class System.Web.Services.Description.SoapExtensionReflector : System.Object
---@field ReflectionContext System.Web.Services.Description.ProtocolReflector
System.Web.Services.Description.SoapExtensionReflector = {}
---@alias CS.System.Web.Services.Description.SoapExtensionReflector System.Web.Services.Description.SoapExtensionReflector
CS.System.Web.Services.Description.SoapExtensionReflector = System.Web.Services.Description.SoapExtensionReflector

function System.Web.Services.Description.SoapExtensionReflector:ReflectMethod() end
function System.Web.Services.Description.SoapExtensionReflector:ReflectDescription() end

---@class System.Web.Services.Description.SoapBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Namespace string
---@field HttpTransport string
---@field Schema System.Xml.Schema.XmlSchema
---@field Transport string
---@field Style System.Web.Services.Description.SoapBindingStyle
System.Web.Services.Description.SoapBinding = {}
---@alias CS.System.Web.Services.Description.SoapBinding System.Web.Services.Description.SoapBinding
CS.System.Web.Services.Description.SoapBinding = System.Web.Services.Description.SoapBinding

---@return System.Web.Services.Description.SoapBinding
function System.Web.Services.Description.SoapBinding.New() end

---@class System.Web.Services.Description.SoapBindingStyle
---@field Default System.Web.Services.Description.SoapBindingStyle
---@field Document System.Web.Services.Description.SoapBindingStyle
---@field Rpc System.Web.Services.Description.SoapBindingStyle
System.Web.Services.Description.SoapBindingStyle = {}
---@alias CS.System.Web.Services.Description.SoapBindingStyle System.Web.Services.Description.SoapBindingStyle
CS.System.Web.Services.Description.SoapBindingStyle = System.Web.Services.Description.SoapBindingStyle


---@class System.Web.Services.Description.SoapOperationBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field SoapAction string
---@field Style System.Web.Services.Description.SoapBindingStyle
System.Web.Services.Description.SoapOperationBinding = {}
---@alias CS.System.Web.Services.Description.SoapOperationBinding System.Web.Services.Description.SoapOperationBinding
CS.System.Web.Services.Description.SoapOperationBinding = System.Web.Services.Description.SoapOperationBinding

---@return System.Web.Services.Description.SoapOperationBinding
function System.Web.Services.Description.SoapOperationBinding.New() end

---@class System.Web.Services.Description.SoapBodyBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Use System.Web.Services.Description.SoapBindingUse
---@field Namespace string
---@field Encoding string
---@field PartsString string
---@field Parts System.String[]
System.Web.Services.Description.SoapBodyBinding = {}
---@alias CS.System.Web.Services.Description.SoapBodyBinding System.Web.Services.Description.SoapBodyBinding
CS.System.Web.Services.Description.SoapBodyBinding = System.Web.Services.Description.SoapBodyBinding

---@return System.Web.Services.Description.SoapBodyBinding
function System.Web.Services.Description.SoapBodyBinding.New() end

---@class System.Web.Services.Description.SoapBindingUse
---@field Default System.Web.Services.Description.SoapBindingUse
---@field Encoded System.Web.Services.Description.SoapBindingUse
---@field Literal System.Web.Services.Description.SoapBindingUse
System.Web.Services.Description.SoapBindingUse = {}
---@alias CS.System.Web.Services.Description.SoapBindingUse System.Web.Services.Description.SoapBindingUse
CS.System.Web.Services.Description.SoapBindingUse = System.Web.Services.Description.SoapBindingUse


---@class System.Web.Services.Description.SoapFaultBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Use System.Web.Services.Description.SoapBindingUse
---@field Name string
---@field Namespace string
---@field Encoding string
System.Web.Services.Description.SoapFaultBinding = {}
---@alias CS.System.Web.Services.Description.SoapFaultBinding System.Web.Services.Description.SoapFaultBinding
CS.System.Web.Services.Description.SoapFaultBinding = System.Web.Services.Description.SoapFaultBinding

---@return System.Web.Services.Description.SoapFaultBinding
function System.Web.Services.Description.SoapFaultBinding.New() end

---@class System.Web.Services.Description.SoapHeaderBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field MapToProperty boolean
---@field Message System.Xml.XmlQualifiedName
---@field Part string
---@field Use System.Web.Services.Description.SoapBindingUse
---@field Encoding string
---@field Namespace string
---@field Fault System.Web.Services.Description.SoapHeaderFaultBinding
System.Web.Services.Description.SoapHeaderBinding = {}
---@alias CS.System.Web.Services.Description.SoapHeaderBinding System.Web.Services.Description.SoapHeaderBinding
CS.System.Web.Services.Description.SoapHeaderBinding = System.Web.Services.Description.SoapHeaderBinding

---@return System.Web.Services.Description.SoapHeaderBinding
function System.Web.Services.Description.SoapHeaderBinding.New() end

---@class System.Web.Services.Description.SoapHeaderFaultBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Message System.Xml.XmlQualifiedName
---@field Part string
---@field Use System.Web.Services.Description.SoapBindingUse
---@field Encoding string
---@field Namespace string
System.Web.Services.Description.SoapHeaderFaultBinding = {}
---@alias CS.System.Web.Services.Description.SoapHeaderFaultBinding System.Web.Services.Description.SoapHeaderFaultBinding
CS.System.Web.Services.Description.SoapHeaderFaultBinding = System.Web.Services.Description.SoapHeaderFaultBinding

---@return System.Web.Services.Description.SoapHeaderFaultBinding
function System.Web.Services.Description.SoapHeaderFaultBinding.New() end

---@class System.Web.Services.Description.SoapAddressBinding : System.Web.Services.Description.ServiceDescriptionFormatExtension
---@field Location string
System.Web.Services.Description.SoapAddressBinding = {}
---@alias CS.System.Web.Services.Description.SoapAddressBinding System.Web.Services.Description.SoapAddressBinding
CS.System.Web.Services.Description.SoapAddressBinding = System.Web.Services.Description.SoapAddressBinding

---@return System.Web.Services.Description.SoapAddressBinding
function System.Web.Services.Description.SoapAddressBinding.New() end

---@class System.Web.Services.Description.SoapHttpTransportImporter : System.Web.Services.Description.SoapTransportImporter
System.Web.Services.Description.SoapHttpTransportImporter = {}
---@alias CS.System.Web.Services.Description.SoapHttpTransportImporter System.Web.Services.Description.SoapHttpTransportImporter
CS.System.Web.Services.Description.SoapHttpTransportImporter = System.Web.Services.Description.SoapHttpTransportImporter

---@return System.Web.Services.Description.SoapHttpTransportImporter
function System.Web.Services.Description.SoapHttpTransportImporter.New() end
---@param transport string
---@return boolean
function System.Web.Services.Description.SoapHttpTransportImporter:IsSupportedTransport(transport) end
function System.Web.Services.Description.SoapHttpTransportImporter:ImportClass() end

---@class System.Web.Services.Description.SoapParameters : System.Object
System.Web.Services.Description.SoapParameters = {}
---@alias CS.System.Web.Services.Description.SoapParameters System.Web.Services.Description.SoapParameters
CS.System.Web.Services.Description.SoapParameters = System.Web.Services.Description.SoapParameters


---@class System.Web.Services.Description.SoapParameter : System.Object
System.Web.Services.Description.SoapParameter = {}
---@alias CS.System.Web.Services.Description.SoapParameter System.Web.Services.Description.SoapParameter
CS.System.Web.Services.Description.SoapParameter = System.Web.Services.Description.SoapParameter

---@return System.Web.Services.Description.SoapParameter
function System.Web.Services.Description.SoapParameter.New() end

---@class System.Web.Services.Description.GlobalSoapHeader : System.Object
System.Web.Services.Description.GlobalSoapHeader = {}
---@alias CS.System.Web.Services.Description.GlobalSoapHeader System.Web.Services.Description.GlobalSoapHeader
CS.System.Web.Services.Description.GlobalSoapHeader = System.Web.Services.Description.GlobalSoapHeader

---@return System.Web.Services.Description.GlobalSoapHeader
function System.Web.Services.Description.GlobalSoapHeader.New() end

---@class System.Web.Services.Description.LocalSoapHeader : System.Object
System.Web.Services.Description.LocalSoapHeader = {}
---@alias CS.System.Web.Services.Description.LocalSoapHeader System.Web.Services.Description.LocalSoapHeader
CS.System.Web.Services.Description.LocalSoapHeader = System.Web.Services.Description.LocalSoapHeader

---@return System.Web.Services.Description.LocalSoapHeader
function System.Web.Services.Description.LocalSoapHeader.New() end

---@class System.Web.Services.Description.SoapProtocolImporter : System.Web.Services.Description.ProtocolImporter
---@field ProtocolName string
---@field SoapBinding System.Web.Services.Description.SoapBinding
---@field SoapImporter System.Xml.Serialization.SoapSchemaImporter
---@field XmlImporter System.Xml.Serialization.XmlSchemaImporter
---@field XmlExporter System.Xml.Serialization.XmlCodeExporter
---@field SoapExporter System.Xml.Serialization.SoapCodeExporter
System.Web.Services.Description.SoapProtocolImporter = {}
---@alias CS.System.Web.Services.Description.SoapProtocolImporter System.Web.Services.Description.SoapProtocolImporter
CS.System.Web.Services.Description.SoapProtocolImporter = System.Web.Services.Description.SoapProtocolImporter

---@return System.Web.Services.Description.SoapProtocolImporter
function System.Web.Services.Description.SoapProtocolImporter.New() end

---@class System.Web.Services.Description.SoapProtocolReflector : System.Web.Services.Description.ProtocolReflector
---@field ProtocolName string
System.Web.Services.Description.SoapProtocolReflector = {}
---@alias CS.System.Web.Services.Description.SoapProtocolReflector System.Web.Services.Description.SoapProtocolReflector
CS.System.Web.Services.Description.SoapProtocolReflector = System.Web.Services.Description.SoapProtocolReflector

---@return System.Web.Services.Description.SoapProtocolReflector
function System.Web.Services.Description.SoapProtocolReflector.New() end

---@class System.Web.Services.Description.SoapTransportImporter : System.Object
---@field ImportContext System.Web.Services.Description.SoapProtocolImporter
System.Web.Services.Description.SoapTransportImporter = {}
---@alias CS.System.Web.Services.Description.SoapTransportImporter System.Web.Services.Description.SoapTransportImporter
CS.System.Web.Services.Description.SoapTransportImporter = System.Web.Services.Description.SoapTransportImporter

---@param transport string
---@return boolean
function System.Web.Services.Description.SoapTransportImporter:IsSupportedTransport(transport) end
function System.Web.Services.Description.SoapTransportImporter:ImportClass() end

---@class System.Web.Services.Description.CodeFlags
---@field IsPublic System.Web.Services.Description.CodeFlags
---@field IsAbstract System.Web.Services.Description.CodeFlags
---@field IsStruct System.Web.Services.Description.CodeFlags
---@field IsNew System.Web.Services.Description.CodeFlags
---@field IsByRef System.Web.Services.Description.CodeFlags
---@field IsOut System.Web.Services.Description.CodeFlags
---@field IsInterface System.Web.Services.Description.CodeFlags
System.Web.Services.Description.CodeFlags = {}
---@alias CS.System.Web.Services.Description.CodeFlags System.Web.Services.Description.CodeFlags
CS.System.Web.Services.Description.CodeFlags = System.Web.Services.Description.CodeFlags


---@class System.Web.Services.Description.WebCodeGenerator : System.Object
System.Web.Services.Description.WebCodeGenerator = {}
---@alias CS.System.Web.Services.Description.WebCodeGenerator System.Web.Services.Description.WebCodeGenerator
CS.System.Web.Services.Description.WebCodeGenerator = System.Web.Services.Description.WebCodeGenerator


---@class System.Web.Services.Description.WebReference : System.Object
---@field AppSettingBaseUrl string
---@field AppSettingUrlKey string
---@field Documents System.Web.Services.Discovery.DiscoveryClientDocumentCollection
---@field ProxyCode System.CodeDom.CodeNamespace
---@field ValidationWarnings System.Collections.Specialized.StringCollection
---@field Warnings System.Web.Services.Description.ServiceDescriptionImportWarnings
---@field ProtocolName string
System.Web.Services.Description.WebReference = {}
---@alias CS.System.Web.Services.Description.WebReference System.Web.Services.Description.WebReference
CS.System.Web.Services.Description.WebReference = System.Web.Services.Description.WebReference

---@overload fun(documents: System.Web.Services.Discovery.DiscoveryClientDocumentCollection, proxyCode: System.CodeDom.CodeNamespace, protocolName: string, appSettingUrlKey: string, appSettingBaseUrl: string) : System.Web.Services.Description.WebReference
---@overload fun(documents: System.Web.Services.Discovery.DiscoveryClientDocumentCollection, proxyCode: System.CodeDom.CodeNamespace) : System.Web.Services.Description.WebReference
---@param documents System.Web.Services.Discovery.DiscoveryClientDocumentCollection
---@param proxyCode System.CodeDom.CodeNamespace
---@param appSettingUrlKey string
---@param appSettingBaseUrl string
---@return System.Web.Services.Description.WebReference
function System.Web.Services.Description.WebReference.New(documents, proxyCode, appSettingUrlKey, appSettingBaseUrl) end

---@class System.Web.Services.Description.WebReferenceCollection : System.Collections.CollectionBase
---@field Item System.Web.Services.Description.WebReference
System.Web.Services.Description.WebReferenceCollection = {}
---@alias CS.System.Web.Services.Description.WebReferenceCollection System.Web.Services.Description.WebReferenceCollection
CS.System.Web.Services.Description.WebReferenceCollection = System.Web.Services.Description.WebReferenceCollection

---@return System.Web.Services.Description.WebReferenceCollection
function System.Web.Services.Description.WebReferenceCollection.New() end
---@param webReference System.Web.Services.Description.WebReference
---@return number
function System.Web.Services.Description.WebReferenceCollection:Add(webReference) end
---@param index number
---@param webReference System.Web.Services.Description.WebReference
function System.Web.Services.Description.WebReferenceCollection:Insert(index, webReference) end
---@param webReference System.Web.Services.Description.WebReference
---@return number
function System.Web.Services.Description.WebReferenceCollection:IndexOf(webReference) end
---@param webReference System.Web.Services.Description.WebReference
---@return boolean
function System.Web.Services.Description.WebReferenceCollection:Contains(webReference) end
---@param webReference System.Web.Services.Description.WebReference
function System.Web.Services.Description.WebReferenceCollection:Remove(webReference) end
---@param array System.Web.Services.Description.WebReference[]
---@param index number
function System.Web.Services.Description.WebReferenceCollection:CopyTo(array, index) end

---@class System.Web.Services.Description.WebReferenceOptions : System.Object
---@field TargetNamespace string
---@field Schema System.Xml.Schema.XmlSchema
---@field CodeGenerationOptions System.Xml.Serialization.CodeGenerationOptions
---@field SchemaImporterExtensions System.Collections.Specialized.StringCollection
---@field Style System.Web.Services.Description.ServiceDescriptionImportStyle
---@field Verbose boolean
System.Web.Services.Description.WebReferenceOptions = {}
---@alias CS.System.Web.Services.Description.WebReferenceOptions System.Web.Services.Description.WebReferenceOptions
CS.System.Web.Services.Description.WebReferenceOptions = System.Web.Services.Description.WebReferenceOptions

---@return System.Web.Services.Description.WebReferenceOptions
function System.Web.Services.Description.WebReferenceOptions.New() end
---@overload fun(reader: System.IO.TextReader, validationEventHandler: System.Xml.Schema.ValidationEventHandler) : System.Web.Services.Description.WebReferenceOptions
---@overload fun(stream: System.IO.Stream, validationEventHandler: System.Xml.Schema.ValidationEventHandler) : System.Web.Services.Description.WebReferenceOptions
---@param xmlReader System.Xml.XmlReader
---@param validationEventHandler System.Xml.Schema.ValidationEventHandler
---@return System.Web.Services.Description.WebReferenceOptions
function System.Web.Services.Description.WebReferenceOptions.Read(xmlReader, validationEventHandler) end

---@class System.Web.Services.Description.WebReferenceOptionsSerializationWriter : System.Xml.Serialization.XmlSerializationWriter
System.Web.Services.Description.WebReferenceOptionsSerializationWriter = {}
---@alias CS.System.Web.Services.Description.WebReferenceOptionsSerializationWriter System.Web.Services.Description.WebReferenceOptionsSerializationWriter
CS.System.Web.Services.Description.WebReferenceOptionsSerializationWriter = System.Web.Services.Description.WebReferenceOptionsSerializationWriter

---@return System.Web.Services.Description.WebReferenceOptionsSerializationWriter
function System.Web.Services.Description.WebReferenceOptionsSerializationWriter.New() end

---@class System.Web.Services.Description.WebReferenceOptionsSerializationReader : System.Xml.Serialization.XmlSerializationReader
System.Web.Services.Description.WebReferenceOptionsSerializationReader = {}
---@alias CS.System.Web.Services.Description.WebReferenceOptionsSerializationReader System.Web.Services.Description.WebReferenceOptionsSerializationReader
CS.System.Web.Services.Description.WebReferenceOptionsSerializationReader = System.Web.Services.Description.WebReferenceOptionsSerializationReader

---@return System.Web.Services.Description.WebReferenceOptionsSerializationReader
function System.Web.Services.Description.WebReferenceOptionsSerializationReader.New() end

---@class System.Web.Services.Description.webReferenceOptionsSerializer : System.Xml.Serialization.XmlSerializer
System.Web.Services.Description.webReferenceOptionsSerializer = {}
---@alias CS.System.Web.Services.Description.webReferenceOptionsSerializer System.Web.Services.Description.webReferenceOptionsSerializer
CS.System.Web.Services.Description.webReferenceOptionsSerializer = System.Web.Services.Description.webReferenceOptionsSerializer

---@return System.Web.Services.Description.webReferenceOptionsSerializer
function System.Web.Services.Description.webReferenceOptionsSerializer.New() end
---@param xmlReader System.Xml.XmlReader
---@return boolean
function System.Web.Services.Description.webReferenceOptionsSerializer:CanDeserialize(xmlReader) end

---@class System.Web.Services.Description.WebServicesInteroperability : System.Object
System.Web.Services.Description.WebServicesInteroperability = {}
---@alias CS.System.Web.Services.Description.WebServicesInteroperability System.Web.Services.Description.WebServicesInteroperability
CS.System.Web.Services.Description.WebServicesInteroperability = System.Web.Services.Description.WebServicesInteroperability

---@overload fun(claims: System.Web.Services.WsiProfiles, description: System.Web.Services.Description.ServiceDescription, violations: System.Web.Services.Description.BasicProfileViolationCollection) : boolean
---@overload fun(claims: System.Web.Services.WsiProfiles, descriptions: System.Web.Services.Description.ServiceDescriptionCollection, violations: System.Web.Services.Description.BasicProfileViolationCollection) : boolean
---@param claims System.Web.Services.WsiProfiles
---@param webReference System.Web.Services.Description.WebReference
---@param violations System.Web.Services.Description.BasicProfileViolationCollection
---@return boolean
function System.Web.Services.Description.WebServicesInteroperability.CheckConformance(claims, webReference, violations) end

---@class System.Web.Services.Description.BasicProfileViolation : System.Object
---@field Claims System.Web.Services.WsiProfiles
---@field Details string
---@field Elements System.Collections.Specialized.StringCollection
---@field NormativeStatement string
---@field Recommendation string
System.Web.Services.Description.BasicProfileViolation = {}
---@alias CS.System.Web.Services.Description.BasicProfileViolation System.Web.Services.Description.BasicProfileViolation
CS.System.Web.Services.Description.BasicProfileViolation = System.Web.Services.Description.BasicProfileViolation

---@return string
function System.Web.Services.Description.BasicProfileViolation:ToString() end

---@class System.Web.Services.Description.BasicProfileViolationCollection : System.Collections.CollectionBase
---@field Item System.Web.Services.Description.BasicProfileViolation
System.Web.Services.Description.BasicProfileViolationCollection = {}
---@alias CS.System.Web.Services.Description.BasicProfileViolationCollection System.Web.Services.Description.BasicProfileViolationCollection
CS.System.Web.Services.Description.BasicProfileViolationCollection = System.Web.Services.Description.BasicProfileViolationCollection

---@return System.Web.Services.Description.BasicProfileViolationCollection
function System.Web.Services.Description.BasicProfileViolationCollection.New() end
---@param index number
---@param violation System.Web.Services.Description.BasicProfileViolation
function System.Web.Services.Description.BasicProfileViolationCollection:Insert(index, violation) end
---@param violation System.Web.Services.Description.BasicProfileViolation
---@return number
function System.Web.Services.Description.BasicProfileViolationCollection:IndexOf(violation) end
---@param violation System.Web.Services.Description.BasicProfileViolation
---@return boolean
function System.Web.Services.Description.BasicProfileViolationCollection:Contains(violation) end
---@param violation System.Web.Services.Description.BasicProfileViolation
function System.Web.Services.Description.BasicProfileViolationCollection:Remove(violation) end
---@param array System.Web.Services.Description.BasicProfileViolation[]
---@param index number
function System.Web.Services.Description.BasicProfileViolationCollection:CopyTo(array, index) end
---@return string
function System.Web.Services.Description.BasicProfileViolationCollection:ToString() end

---@class System.Web.Services.Description.BasicProfileViolationEnumerator : System.Object
---@field Current System.Web.Services.Description.BasicProfileViolation
System.Web.Services.Description.BasicProfileViolationEnumerator = {}
---@alias CS.System.Web.Services.Description.BasicProfileViolationEnumerator System.Web.Services.Description.BasicProfileViolationEnumerator
CS.System.Web.Services.Description.BasicProfileViolationEnumerator = System.Web.Services.Description.BasicProfileViolationEnumerator

---@param list System.Web.Services.Description.BasicProfileViolationCollection
---@return System.Web.Services.Description.BasicProfileViolationEnumerator
function System.Web.Services.Description.BasicProfileViolationEnumerator.New(list) end
function System.Web.Services.Description.BasicProfileViolationEnumerator:Dispose() end
---@return boolean
function System.Web.Services.Description.BasicProfileViolationEnumerator:MoveNext() end

---@class System.Web.Services.Configuration.DiagnosticsElement : System.Configuration.ConfigurationElement
---@field SuppressReturningExceptions boolean
System.Web.Services.Configuration.DiagnosticsElement = {}
---@alias CS.System.Web.Services.Configuration.DiagnosticsElement System.Web.Services.Configuration.DiagnosticsElement
CS.System.Web.Services.Configuration.DiagnosticsElement = System.Web.Services.Configuration.DiagnosticsElement

---@return System.Web.Services.Configuration.DiagnosticsElement
function System.Web.Services.Configuration.DiagnosticsElement.New() end

---@class System.Web.Services.Configuration.PriorityGroup
---@field High System.Web.Services.Configuration.PriorityGroup
---@field Low System.Web.Services.Configuration.PriorityGroup
System.Web.Services.Configuration.PriorityGroup = {}
---@alias CS.System.Web.Services.Configuration.PriorityGroup System.Web.Services.Configuration.PriorityGroup
CS.System.Web.Services.Configuration.PriorityGroup = System.Web.Services.Configuration.PriorityGroup


---@class System.Web.Services.Configuration.ProtocolElement : System.Configuration.ConfigurationElement
---@field Name System.Web.Services.Configuration.WebServiceProtocols
System.Web.Services.Configuration.ProtocolElement = {}
---@alias CS.System.Web.Services.Configuration.ProtocolElement System.Web.Services.Configuration.ProtocolElement
CS.System.Web.Services.Configuration.ProtocolElement = System.Web.Services.Configuration.ProtocolElement

---@overload fun() : System.Web.Services.Configuration.ProtocolElement
---@param protocol System.Web.Services.Configuration.WebServiceProtocols
---@return System.Web.Services.Configuration.ProtocolElement
function System.Web.Services.Configuration.ProtocolElement.New(protocol) end

---@class System.Web.Services.Configuration.ProtocolElementCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Web.Services.Configuration.ProtocolElement
---@field Item System.Web.Services.Configuration.ProtocolElement
System.Web.Services.Configuration.ProtocolElementCollection = {}
---@alias CS.System.Web.Services.Configuration.ProtocolElementCollection System.Web.Services.Configuration.ProtocolElementCollection
CS.System.Web.Services.Configuration.ProtocolElementCollection = System.Web.Services.Configuration.ProtocolElementCollection

---@return System.Web.Services.Configuration.ProtocolElementCollection
function System.Web.Services.Configuration.ProtocolElementCollection.New() end
---@param element System.Web.Services.Configuration.ProtocolElement
function System.Web.Services.Configuration.ProtocolElementCollection:Add(element) end
function System.Web.Services.Configuration.ProtocolElementCollection:Clear() end
---@param key System.Object
---@return boolean
function System.Web.Services.Configuration.ProtocolElementCollection:ContainsKey(key) end
---@param array System.Web.Services.Configuration.ProtocolElement[]
---@param index number
function System.Web.Services.Configuration.ProtocolElementCollection:CopyTo(array, index) end
---@param element System.Web.Services.Configuration.ProtocolElement
---@return number
function System.Web.Services.Configuration.ProtocolElementCollection:IndexOf(element) end
---@param element System.Web.Services.Configuration.ProtocolElement
function System.Web.Services.Configuration.ProtocolElementCollection:Remove(element) end
---@overload fun(self: System.Web.Services.Configuration.ProtocolElementCollection, key: System.Object)
---@param index number
function System.Web.Services.Configuration.ProtocolElementCollection:RemoveAt(index) end

---@class System.Web.Services.Configuration.WebServiceProtocols
---@field Unknown System.Web.Services.Configuration.WebServiceProtocols
---@field HttpSoap System.Web.Services.Configuration.WebServiceProtocols
---@field HttpGet System.Web.Services.Configuration.WebServiceProtocols
---@field HttpPost System.Web.Services.Configuration.WebServiceProtocols
---@field Documentation System.Web.Services.Configuration.WebServiceProtocols
---@field HttpPostLocalhost System.Web.Services.Configuration.WebServiceProtocols
---@field HttpSoap12 System.Web.Services.Configuration.WebServiceProtocols
---@field AnyHttpSoap System.Web.Services.Configuration.WebServiceProtocols
System.Web.Services.Configuration.WebServiceProtocols = {}
---@alias CS.System.Web.Services.Configuration.WebServiceProtocols System.Web.Services.Configuration.WebServiceProtocols
CS.System.Web.Services.Configuration.WebServiceProtocols = System.Web.Services.Configuration.WebServiceProtocols


---@class System.Web.Services.Configuration.SoapEnvelopeProcessingElement : System.Configuration.ConfigurationElement
---@field ReadTimeout number
---@field IsStrict boolean
System.Web.Services.Configuration.SoapEnvelopeProcessingElement = {}
---@alias CS.System.Web.Services.Configuration.SoapEnvelopeProcessingElement System.Web.Services.Configuration.SoapEnvelopeProcessingElement
CS.System.Web.Services.Configuration.SoapEnvelopeProcessingElement = System.Web.Services.Configuration.SoapEnvelopeProcessingElement

---@overload fun() : System.Web.Services.Configuration.SoapEnvelopeProcessingElement
---@overload fun(readTimeout: number) : System.Web.Services.Configuration.SoapEnvelopeProcessingElement
---@param readTimeout number
---@param strict boolean
---@return System.Web.Services.Configuration.SoapEnvelopeProcessingElement
function System.Web.Services.Configuration.SoapEnvelopeProcessingElement.New(readTimeout, strict) end

---@class System.Web.Services.Configuration.SoapExtensionTypeElement : System.Configuration.ConfigurationElement
---@field Group System.Web.Services.Configuration.PriorityGroup
---@field Priority number
---@field Type System.Type
System.Web.Services.Configuration.SoapExtensionTypeElement = {}
---@alias CS.System.Web.Services.Configuration.SoapExtensionTypeElement System.Web.Services.Configuration.SoapExtensionTypeElement
CS.System.Web.Services.Configuration.SoapExtensionTypeElement = System.Web.Services.Configuration.SoapExtensionTypeElement

---@overload fun() : System.Web.Services.Configuration.SoapExtensionTypeElement
---@overload fun(type: string, priority: number, group: System.Web.Services.Configuration.PriorityGroup) : System.Web.Services.Configuration.SoapExtensionTypeElement
---@param type System.Type
---@param priority number
---@param group System.Web.Services.Configuration.PriorityGroup
---@return System.Web.Services.Configuration.SoapExtensionTypeElement
function System.Web.Services.Configuration.SoapExtensionTypeElement.New(type, priority, group) end

---@class System.Web.Services.Configuration.TypeTypeConverter : System.Web.Services.Configuration.TypeAndNameConverter
System.Web.Services.Configuration.TypeTypeConverter = {}
---@alias CS.System.Web.Services.Configuration.TypeTypeConverter System.Web.Services.Configuration.TypeTypeConverter
CS.System.Web.Services.Configuration.TypeTypeConverter = System.Web.Services.Configuration.TypeTypeConverter

---@return System.Web.Services.Configuration.TypeTypeConverter
function System.Web.Services.Configuration.TypeTypeConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Web.Services.Configuration.TypeTypeConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Web.Services.Configuration.TypeTypeConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Web.Services.Configuration.TypeTypeConverter:ConvertTo(context, culture, value, destinationType) end

---@class System.Web.Services.Configuration.SoapExtensionTypeElementCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Web.Services.Configuration.SoapExtensionTypeElement
---@field Item System.Web.Services.Configuration.SoapExtensionTypeElement
System.Web.Services.Configuration.SoapExtensionTypeElementCollection = {}
---@alias CS.System.Web.Services.Configuration.SoapExtensionTypeElementCollection System.Web.Services.Configuration.SoapExtensionTypeElementCollection
CS.System.Web.Services.Configuration.SoapExtensionTypeElementCollection = System.Web.Services.Configuration.SoapExtensionTypeElementCollection

---@return System.Web.Services.Configuration.SoapExtensionTypeElementCollection
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection.New() end
---@param element System.Web.Services.Configuration.SoapExtensionTypeElement
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection:Add(element) end
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection:Clear() end
---@param key System.Object
---@return boolean
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection:ContainsKey(key) end
---@param array System.Web.Services.Configuration.SoapExtensionTypeElement[]
---@param index number
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection:CopyTo(array, index) end
---@param element System.Web.Services.Configuration.SoapExtensionTypeElement
---@return number
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection:IndexOf(element) end
---@param element System.Web.Services.Configuration.SoapExtensionTypeElement
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection:Remove(element) end
---@overload fun(self: System.Web.Services.Configuration.SoapExtensionTypeElementCollection, key: System.Object)
---@param index number
function System.Web.Services.Configuration.SoapExtensionTypeElementCollection:RemoveAt(index) end

---@class System.Web.Services.Configuration.TypeElement : System.Configuration.ConfigurationElement
---@field Type System.Type
System.Web.Services.Configuration.TypeElement = {}
---@alias CS.System.Web.Services.Configuration.TypeElement System.Web.Services.Configuration.TypeElement
CS.System.Web.Services.Configuration.TypeElement = System.Web.Services.Configuration.TypeElement

---@overload fun() : System.Web.Services.Configuration.TypeElement
---@overload fun(type: string) : System.Web.Services.Configuration.TypeElement
---@param type System.Type
---@return System.Web.Services.Configuration.TypeElement
function System.Web.Services.Configuration.TypeElement.New(type) end

---@class System.Web.Services.Configuration.TypeAndName : System.Object
---@field type System.Type
---@field name string
System.Web.Services.Configuration.TypeAndName = {}
---@alias CS.System.Web.Services.Configuration.TypeAndName System.Web.Services.Configuration.TypeAndName
CS.System.Web.Services.Configuration.TypeAndName = System.Web.Services.Configuration.TypeAndName

---@overload fun(name: string) : System.Web.Services.Configuration.TypeAndName
---@param type System.Type
---@return System.Web.Services.Configuration.TypeAndName
function System.Web.Services.Configuration.TypeAndName.New(type) end
---@return number
function System.Web.Services.Configuration.TypeAndName:GetHashCode() end
---@param comparand System.Object
---@return boolean
function System.Web.Services.Configuration.TypeAndName:Equals(comparand) end

---@class System.Web.Services.Configuration.TypeAndNameConverter : System.ComponentModel.TypeConverter
System.Web.Services.Configuration.TypeAndNameConverter = {}
---@alias CS.System.Web.Services.Configuration.TypeAndNameConverter System.Web.Services.Configuration.TypeAndNameConverter
CS.System.Web.Services.Configuration.TypeAndNameConverter = System.Web.Services.Configuration.TypeAndNameConverter

---@return System.Web.Services.Configuration.TypeAndNameConverter
function System.Web.Services.Configuration.TypeAndNameConverter.New() end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param sourceType System.Type
---@return boolean
function System.Web.Services.Configuration.TypeAndNameConverter:CanConvertFrom(context, sourceType) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@return System.Object
function System.Web.Services.Configuration.TypeAndNameConverter:ConvertFrom(context, culture, value) end
---@param context System.ComponentModel.ITypeDescriptorContext
---@param culture System.Globalization.CultureInfo
---@param value System.Object
---@param destinationType System.Type
---@return System.Object
function System.Web.Services.Configuration.TypeAndNameConverter:ConvertTo(context, culture, value, destinationType) end

---@class System.Web.Services.Configuration.TypeElementCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Web.Services.Configuration.TypeElement
---@field Item System.Web.Services.Configuration.TypeElement
System.Web.Services.Configuration.TypeElementCollection = {}
---@alias CS.System.Web.Services.Configuration.TypeElementCollection System.Web.Services.Configuration.TypeElementCollection
CS.System.Web.Services.Configuration.TypeElementCollection = System.Web.Services.Configuration.TypeElementCollection

---@return System.Web.Services.Configuration.TypeElementCollection
function System.Web.Services.Configuration.TypeElementCollection.New() end
---@param element System.Web.Services.Configuration.TypeElement
function System.Web.Services.Configuration.TypeElementCollection:Add(element) end
function System.Web.Services.Configuration.TypeElementCollection:Clear() end
---@param key System.Object
---@return boolean
function System.Web.Services.Configuration.TypeElementCollection:ContainsKey(key) end
---@param array System.Web.Services.Configuration.TypeElement[]
---@param index number
function System.Web.Services.Configuration.TypeElementCollection:CopyTo(array, index) end
---@param element System.Web.Services.Configuration.TypeElement
---@return number
function System.Web.Services.Configuration.TypeElementCollection:IndexOf(element) end
---@param element System.Web.Services.Configuration.TypeElement
function System.Web.Services.Configuration.TypeElementCollection:Remove(element) end
---@overload fun(self: System.Web.Services.Configuration.TypeElementCollection, key: System.Object)
---@param index number
function System.Web.Services.Configuration.TypeElementCollection:RemoveAt(index) end

---@class System.Web.Services.Configuration.WebServicesSection : System.Configuration.ConfigurationSection
---@field Current System.Web.Services.Configuration.WebServicesSection
---@field ConformanceWarnings System.Web.Services.Configuration.WsiProfilesElementCollection
---@field EnabledProtocols System.Web.Services.Configuration.WebServiceProtocols
---@field Protocols System.Web.Services.Configuration.ProtocolElementCollection
---@field SoapEnvelopeProcessing System.Web.Services.Configuration.SoapEnvelopeProcessingElement
---@field Diagnostics System.Web.Services.Configuration.DiagnosticsElement
---@field ServiceDescriptionFormatExtensionTypes System.Web.Services.Configuration.TypeElementCollection
---@field SoapExtensionImporterTypes System.Web.Services.Configuration.TypeElementCollection
---@field SoapExtensionReflectorTypes System.Web.Services.Configuration.TypeElementCollection
---@field SoapExtensionTypes System.Web.Services.Configuration.SoapExtensionTypeElementCollection
---@field SoapServerProtocolFactoryType System.Web.Services.Configuration.TypeElement
---@field SoapTransportImporterTypes System.Web.Services.Configuration.TypeElementCollection
---@field WsdlHelpGenerator System.Web.Services.Configuration.WsdlHelpGeneratorElement
System.Web.Services.Configuration.WebServicesSection = {}
---@alias CS.System.Web.Services.Configuration.WebServicesSection System.Web.Services.Configuration.WebServicesSection
CS.System.Web.Services.Configuration.WebServicesSection = System.Web.Services.Configuration.WebServicesSection

---@return System.Web.Services.Configuration.WebServicesSection
function System.Web.Services.Configuration.WebServicesSection.New() end
---@param config System.Configuration.Configuration
---@return System.Web.Services.Configuration.WebServicesSection
function System.Web.Services.Configuration.WebServicesSection.GetSection(config) end

---@class System.Web.Services.Configuration.WsdlHelpGeneratorElement : System.Configuration.ConfigurationElement
---@field Href string
System.Web.Services.Configuration.WsdlHelpGeneratorElement = {}
---@alias CS.System.Web.Services.Configuration.WsdlHelpGeneratorElement System.Web.Services.Configuration.WsdlHelpGeneratorElement
CS.System.Web.Services.Configuration.WsdlHelpGeneratorElement = System.Web.Services.Configuration.WsdlHelpGeneratorElement

---@return System.Web.Services.Configuration.WsdlHelpGeneratorElement
function System.Web.Services.Configuration.WsdlHelpGeneratorElement.New() end

---@class System.Web.Services.Configuration.WsiProfilesElement : System.Configuration.ConfigurationElement
---@field Name System.Web.Services.WsiProfiles
System.Web.Services.Configuration.WsiProfilesElement = {}
---@alias CS.System.Web.Services.Configuration.WsiProfilesElement System.Web.Services.Configuration.WsiProfilesElement
CS.System.Web.Services.Configuration.WsiProfilesElement = System.Web.Services.Configuration.WsiProfilesElement

---@overload fun() : System.Web.Services.Configuration.WsiProfilesElement
---@param name System.Web.Services.WsiProfiles
---@return System.Web.Services.Configuration.WsiProfilesElement
function System.Web.Services.Configuration.WsiProfilesElement.New(name) end

---@class System.Web.Services.Configuration.WsiProfilesElementCollection : System.Configuration.ConfigurationElementCollection
---@field Item System.Web.Services.Configuration.WsiProfilesElement
---@field Item System.Web.Services.Configuration.WsiProfilesElement
System.Web.Services.Configuration.WsiProfilesElementCollection = {}
---@alias CS.System.Web.Services.Configuration.WsiProfilesElementCollection System.Web.Services.Configuration.WsiProfilesElementCollection
CS.System.Web.Services.Configuration.WsiProfilesElementCollection = System.Web.Services.Configuration.WsiProfilesElementCollection

---@return System.Web.Services.Configuration.WsiProfilesElementCollection
function System.Web.Services.Configuration.WsiProfilesElementCollection.New() end
---@param element System.Web.Services.Configuration.WsiProfilesElement
function System.Web.Services.Configuration.WsiProfilesElementCollection:Add(element) end
function System.Web.Services.Configuration.WsiProfilesElementCollection:Clear() end
---@param key System.Object
---@return boolean
function System.Web.Services.Configuration.WsiProfilesElementCollection:ContainsKey(key) end
---@param array System.Web.Services.Configuration.WsiProfilesElement[]
---@param index number
function System.Web.Services.Configuration.WsiProfilesElementCollection:CopyTo(array, index) end
---@param element System.Web.Services.Configuration.WsiProfilesElement
---@return number
function System.Web.Services.Configuration.WsiProfilesElementCollection:IndexOf(element) end
---@param element System.Web.Services.Configuration.WsiProfilesElement
function System.Web.Services.Configuration.WsiProfilesElementCollection:Remove(element) end
---@overload fun(self: System.Web.Services.Configuration.WsiProfilesElementCollection, key: System.Object)
---@param index number
function System.Web.Services.Configuration.WsiProfilesElementCollection:RemoveAt(index) end

---@class System.Web.Services.Configuration.XmlFormatExtensionAttribute : System.Attribute
---@field ExtensionPoints System.Type[]
---@field Namespace string
---@field ElementName string
System.Web.Services.Configuration.XmlFormatExtensionAttribute = {}
---@alias CS.System.Web.Services.Configuration.XmlFormatExtensionAttribute System.Web.Services.Configuration.XmlFormatExtensionAttribute
CS.System.Web.Services.Configuration.XmlFormatExtensionAttribute = System.Web.Services.Configuration.XmlFormatExtensionAttribute

---@overload fun() : System.Web.Services.Configuration.XmlFormatExtensionAttribute
---@overload fun(elementName: string, ns: string, extensionPoint1: System.Type) : System.Web.Services.Configuration.XmlFormatExtensionAttribute
---@overload fun(elementName: string, ns: string, extensionPoint1: System.Type, extensionPoint2: System.Type) : System.Web.Services.Configuration.XmlFormatExtensionAttribute
---@overload fun(elementName: string, ns: string, extensionPoint1: System.Type, extensionPoint2: System.Type, extensionPoint3: System.Type) : System.Web.Services.Configuration.XmlFormatExtensionAttribute
---@overload fun(elementName: string, ns: string, extensionPoint1: System.Type, extensionPoint2: System.Type, extensionPoint3: System.Type, extensionPoint4: System.Type) : System.Web.Services.Configuration.XmlFormatExtensionAttribute
---@param elementName string
---@param ns string
---@param extensionPoints System.Type[]
---@return System.Web.Services.Configuration.XmlFormatExtensionAttribute
function System.Web.Services.Configuration.XmlFormatExtensionAttribute.New(elementName, ns, extensionPoints) end

---@class System.Web.Services.Configuration.XmlFormatExtensionPointAttribute : System.Attribute
---@field MemberName string
---@field AllowElements boolean
System.Web.Services.Configuration.XmlFormatExtensionPointAttribute = {}
---@alias CS.System.Web.Services.Configuration.XmlFormatExtensionPointAttribute System.Web.Services.Configuration.XmlFormatExtensionPointAttribute
CS.System.Web.Services.Configuration.XmlFormatExtensionPointAttribute = System.Web.Services.Configuration.XmlFormatExtensionPointAttribute

---@param memberName string
---@return System.Web.Services.Configuration.XmlFormatExtensionPointAttribute
function System.Web.Services.Configuration.XmlFormatExtensionPointAttribute.New(memberName) end

---@class System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute : System.Attribute
---@field Prefix string
---@field Namespace string
System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute = {}
---@alias CS.System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute
CS.System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute = System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute

---@overload fun() : System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute
---@param prefix string
---@param ns string
---@return System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute
function System.Web.Services.Configuration.XmlFormatExtensionPrefixAttribute.New(prefix, ns) end

---@class System.ComponentModel.CompModSwitches : System.Object
---@field DisableRemoteDebugging System.Diagnostics.BooleanSwitch
---@field DynamicDiscoverySearcher System.Diagnostics.TraceSwitch
---@field DynamicDiscoveryVirtualSearch System.Diagnostics.BooleanSwitch
---@field Remote System.Diagnostics.TraceSwitch
System.ComponentModel.CompModSwitches = {}
---@alias CS.System.ComponentModel.CompModSwitches System.ComponentModel.CompModSwitches
CS.System.ComponentModel.CompModSwitches = System.ComponentModel.CompModSwitches

---@return System.ComponentModel.CompModSwitches
function System.ComponentModel.CompModSwitches.New() end


