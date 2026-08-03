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

---@class GamePlay
GamePlay = {}
---@alias CS.GamePlay GamePlay
CS.GamePlay = {}

---@class Lua
Lua = {}
---@alias CS.Lua Lua
CS.Lua = {}

---@class Character
Character = {}
---@alias CS.Character Character
CS.Character = {}

---@class Status
Status = {}
---@alias CS.Status Status
CS.Status = {}

---@class System
System = {}
---@alias CS.System System
CS.System = {}

---@class Core
Core = {}
---@alias CS.Core Core
CS.Core = {}

---@class Global
Global = {}
---@alias CS.Global Global
CS.Global = {}

---@class Managers
Managers = {}
---@alias CS.Managers Managers
CS.Managers = {}

---@class Command
Command = {}
---@alias CS.Command Command
CS.Command = {}

---@class System.Runtime.CompilerServices.IsUnmanagedAttribute : System.Attribute
System.Runtime.CompilerServices.IsUnmanagedAttribute = {}
---@alias CS.System.Runtime.CompilerServices.IsUnmanagedAttribute System.Runtime.CompilerServices.IsUnmanagedAttribute
CS.System.Runtime.CompilerServices.IsUnmanagedAttribute = System.Runtime.CompilerServices.IsUnmanagedAttribute

---@return System.Runtime.CompilerServices.IsUnmanagedAttribute
function System.Runtime.CompilerServices.IsUnmanagedAttribute.New() end

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

---@class System.String : System.Object
---@field Empty System.String
---@field Length number
---@field Chars System.Char
System.String = {}
---@alias System.String System.String
System.String = System.String

---@overload fun(value: System.Char[]) : System.String
---@overload fun(value: System.Char[], startIndex: number, length: number) : System.String
---@overload fun(value: System.Char*) : System.String
---@overload fun(value: System.Char*, startIndex: number, length: number) : System.String
---@overload fun(value: System.SByte*) : System.String
---@overload fun(value: System.SByte*, startIndex: number, length: number) : System.String
---@overload fun(value: System.SByte*, startIndex: number, length: number, enc: System.Text.Encoding) : System.String
---@overload fun(c: System.Char, count: number) : System.String
---@param value System.ReadOnlySpan
---@return System.String
function System.String.New(value) end
---@overload fun(strA: System.String, strB: System.String) : number
---@overload fun(strA: System.String, strB: System.String, ignoreCase: boolean) : number
---@overload fun(strA: System.String, strB: System.String, comparisonType: System.StringComparison) : number
---@overload fun(strA: System.String, strB: System.String, culture: System.Globalization.CultureInfo, options: System.Globalization.CompareOptions) : number
---@overload fun(strA: System.String, strB: System.String, ignoreCase: boolean, culture: System.Globalization.CultureInfo) : number
---@overload fun(strA: System.String, indexA: number, strB: System.String, indexB: number, length: number) : number
---@overload fun(strA: System.String, indexA: number, strB: System.String, indexB: number, length: number, ignoreCase: boolean) : number
---@overload fun(strA: System.String, indexA: number, strB: System.String, indexB: number, length: number, ignoreCase: boolean, culture: System.Globalization.CultureInfo) : number
---@overload fun(strA: System.String, indexA: number, strB: System.String, indexB: number, length: number, culture: System.Globalization.CultureInfo, options: System.Globalization.CompareOptions) : number
---@param strA System.String
---@param indexA number
---@param strB System.String
---@param indexB number
---@param length number
---@param comparisonType System.StringComparison
---@return number
function System.String.Compare(strA, indexA, strB, indexB, length, comparisonType) end
---@overload fun(strA: System.String, strB: System.String) : number
---@param strA System.String
---@param indexA number
---@param strB System.String
---@param indexB number
---@param length number
---@return number
function System.String.CompareOrdinal(strA, indexA, strB, indexB, length) end
---@overload fun(a: System.String, b: System.String) : boolean
---@overload fun(a: System.String, b: System.String, comparisonType: System.StringComparison) : boolean
---@overload fun(self: System.String, obj: System.Object) : boolean
---@overload fun(self: System.String, value: System.String) : boolean
---@param value System.String
---@param comparisonType System.StringComparison
---@return boolean
function System.String:Equals(value, comparisonType) end
---@overload fun(arg0: System.Object) : System.String
---@overload fun(arg0: System.Object, arg1: System.Object) : System.String
---@overload fun(arg0: System.Object, arg1: System.Object, arg2: System.Object) : System.String
---@overload fun(args: System.Object[]) : System.String
---@overload fun(values: System.Collections.Generic.IEnumerable) : System.String
---@overload fun(str0: System.String, str1: System.String) : System.String
---@overload fun(str0: System.String, str1: System.String, str2: System.String) : System.String
---@overload fun(str0: System.String, str1: System.String, str2: System.String, str3: System.String) : System.String
---@overload fun(values: System.String[]) : System.String
---@param arg0 System.Object
---@param arg1 System.Object
---@param arg2 System.Object
---@param arg3 System.Object
---@return System.String
function System.String.Concat(arg0, arg1, arg2, arg3) end
---@overload fun(format: System.String, arg0: System.Object) : System.String
---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object) : System.String
---@overload fun(format: System.String, arg0: System.Object, arg1: System.Object, arg2: System.Object) : System.String
---@overload fun(format: System.String, args: System.Object[]) : System.String
---@overload fun(provider: System.IFormatProvider, format: System.String, arg0: System.Object) : System.String
---@overload fun(provider: System.IFormatProvider, format: System.String, arg0: System.Object, arg1: System.Object) : System.String
---@overload fun(provider: System.IFormatProvider, format: System.String, arg0: System.Object, arg1: System.Object, arg2: System.Object) : System.String
---@param provider System.IFormatProvider
---@param format System.String
---@param args System.Object[]
---@return System.String
function System.String.Format(provider, format, args) end
---@overload fun(separator: System.Char, value: System.String[]) : System.String
---@overload fun(separator: System.Char, values: System.Object[]) : System.String
---@overload fun(separator: System.Char, value: System.String[], startIndex: number, count: number) : System.String
---@overload fun(separator: System.String, value: System.String[]) : System.String
---@overload fun(separator: System.String, values: System.Object[]) : System.String
---@overload fun(separator: System.String, values: System.Collections.Generic.IEnumerable) : System.String
---@param separator System.String
---@param value System.String[]
---@param startIndex number
---@param count number
---@return System.String
function System.String.Join(separator, value, startIndex, count) end
---@param str System.String
---@return System.String
function System.String.Copy(str) end
---@param value System.String
---@return boolean
function System.String.IsNullOrEmpty(value) end
---@param value System.String
---@return boolean
function System.String.IsNullOrWhiteSpace(value) end
---@param str System.String
---@return System.String
function System.String.Intern(str) end
---@param str System.String
---@return System.String
function System.String.IsInterned(str) end
---@overload fun(self: System.String, value: System.Object) : number
---@param strB System.String
---@return number
function System.String:CompareTo(strB) end
---@overload fun(self: System.String, value: System.String) : boolean
---@overload fun(self: System.String, value: System.String, comparisonType: System.StringComparison) : boolean
---@overload fun(self: System.String, value: System.String, ignoreCase: boolean, culture: System.Globalization.CultureInfo) : boolean
---@param value System.Char
---@return boolean
function System.String:EndsWith(value) end
---@overload fun() : number
---@param comparisonType System.StringComparison
---@return number
function System.String:GetHashCode(comparisonType) end
---@overload fun(self: System.String, value: System.String) : boolean
---@overload fun(self: System.String, value: System.String, comparisonType: System.StringComparison) : boolean
---@overload fun(self: System.String, value: System.String, ignoreCase: boolean, culture: System.Globalization.CultureInfo) : boolean
---@param value System.Char
---@return boolean
function System.String:StartsWith(value) end
---@param startIndex number
---@param value System.String
---@return System.String
function System.String:Insert(startIndex, value) end
---@overload fun(self: System.String, totalWidth: number) : System.String
---@param totalWidth number
---@param paddingChar System.Char
---@return System.String
function System.String:PadLeft(totalWidth, paddingChar) end
---@overload fun(self: System.String, totalWidth: number) : System.String
---@param totalWidth number
---@param paddingChar System.Char
---@return System.String
function System.String:PadRight(totalWidth, paddingChar) end
---@overload fun(self: System.String, startIndex: number, count: number) : System.String
---@param startIndex number
---@return System.String
function System.String:Remove(startIndex) end
---@overload fun(self: System.String, oldValue: System.String, newValue: System.String, ignoreCase: boolean, culture: System.Globalization.CultureInfo) : System.String
---@overload fun(self: System.String, oldValue: System.String, newValue: System.String, comparisonType: System.StringComparison) : System.String
---@overload fun(self: System.String, oldChar: System.Char, newChar: System.Char) : System.String
---@param oldValue System.String
---@param newValue System.String
---@return System.String
function System.String:Replace(oldValue, newValue) end
---@overload fun(self: System.String, separator: System.Char, options: System.StringSplitOptions) : System.String[]
---@overload fun(self: System.String, separator: System.Char, count: number, options: System.StringSplitOptions) : System.String[]
---@overload fun(self: System.String, separator: System.Char[]) : System.String[]
---@overload fun(self: System.String, separator: System.Char[], count: number) : System.String[]
---@overload fun(self: System.String, separator: System.Char[], options: System.StringSplitOptions) : System.String[]
---@overload fun(self: System.String, separator: System.Char[], count: number, options: System.StringSplitOptions) : System.String[]
---@overload fun(self: System.String, separator: System.String, options: System.StringSplitOptions) : System.String[]
---@overload fun(self: System.String, separator: System.String, count: number, options: System.StringSplitOptions) : System.String[]
---@overload fun(self: System.String, separator: System.String[], options: System.StringSplitOptions) : System.String[]
---@param separator System.String[]
---@param count number
---@param options System.StringSplitOptions
---@return System.String[]
function System.String:Split(separator, count, options) end
---@overload fun(self: System.String, startIndex: number) : System.String
---@param startIndex number
---@param length number
---@return System.String
function System.String:Substring(startIndex, length) end
---@overload fun() : System.String
---@param culture System.Globalization.CultureInfo
---@return System.String
function System.String:ToLower(culture) end
---@return System.String
function System.String:ToLowerInvariant() end
---@overload fun() : System.String
---@param culture System.Globalization.CultureInfo
---@return System.String
function System.String:ToUpper(culture) end
---@return System.String
function System.String:ToUpperInvariant() end
---@overload fun() : System.String
---@overload fun(self: System.String, trimChar: System.Char) : System.String
---@param trimChars System.Char[]
---@return System.String
function System.String:Trim(trimChars) end
---@overload fun() : System.String
---@overload fun(self: System.String, trimChar: System.Char) : System.String
---@param trimChars System.Char[]
---@return System.String
function System.String:TrimStart(trimChars) end
---@overload fun() : System.String
---@overload fun(self: System.String, trimChar: System.Char) : System.String
---@param trimChars System.Char[]
---@return System.String
function System.String:TrimEnd(trimChars) end
---@overload fun(self: System.String, value: System.String) : boolean
---@overload fun(self: System.String, value: System.String, comparisonType: System.StringComparison) : boolean
---@overload fun(self: System.String, value: System.Char) : boolean
---@param value System.Char
---@param comparisonType System.StringComparison
---@return boolean
function System.String:Contains(value, comparisonType) end
---@overload fun(self: System.String, value: System.Char) : number
---@overload fun(self: System.String, value: System.Char, startIndex: number) : number
---@overload fun(self: System.String, value: System.Char, comparisonType: System.StringComparison) : number
---@overload fun(self: System.String, value: System.Char, startIndex: number, count: number) : number
---@overload fun(self: System.String, value: System.String) : number
---@overload fun(self: System.String, value: System.String, startIndex: number) : number
---@overload fun(self: System.String, value: System.String, startIndex: number, count: number) : number
---@overload fun(self: System.String, value: System.String, comparisonType: System.StringComparison) : number
---@overload fun(self: System.String, value: System.String, startIndex: number, comparisonType: System.StringComparison) : number
---@param value System.String
---@param startIndex number
---@param count number
---@param comparisonType System.StringComparison
---@return number
function System.String:IndexOf(value, startIndex, count, comparisonType) end
---@overload fun(self: System.String, anyOf: System.Char[]) : number
---@overload fun(self: System.String, anyOf: System.Char[], startIndex: number) : number
---@param anyOf System.Char[]
---@param startIndex number
---@param count number
---@return number
function System.String:IndexOfAny(anyOf, startIndex, count) end
---@overload fun(self: System.String, value: System.Char) : number
---@overload fun(self: System.String, value: System.Char, startIndex: number) : number
---@overload fun(self: System.String, value: System.Char, startIndex: number, count: number) : number
---@overload fun(self: System.String, value: System.String) : number
---@overload fun(self: System.String, value: System.String, startIndex: number) : number
---@overload fun(self: System.String, value: System.String, startIndex: number, count: number) : number
---@overload fun(self: System.String, value: System.String, comparisonType: System.StringComparison) : number
---@overload fun(self: System.String, value: System.String, startIndex: number, comparisonType: System.StringComparison) : number
---@param value System.String
---@param startIndex number
---@param count number
---@param comparisonType System.StringComparison
---@return number
function System.String:LastIndexOf(value, startIndex, count, comparisonType) end
---@overload fun(self: System.String, anyOf: System.Char[]) : number
---@overload fun(self: System.String, anyOf: System.Char[], startIndex: number) : number
---@param anyOf System.Char[]
---@param startIndex number
---@param count number
---@return number
function System.String:LastIndexOfAny(anyOf, startIndex, count) end
---@return System.Object
function System.String:Clone() end
---@param sourceIndex number
---@param destination System.Char[]
---@param destinationIndex number
---@param count number
function System.String:CopyTo(sourceIndex, destination, destinationIndex, count) end
---@overload fun() : System.Char[]
---@param startIndex number
---@param length number
---@return System.Char[]
function System.String:ToCharArray(startIndex, length) end
---@overload fun() : System.String
---@param provider System.IFormatProvider
---@return System.String
function System.String:ToString(provider) end
---@return System.CharEnumerator
function System.String:GetEnumerator() end
---@return System.TypeCode
function System.String:GetTypeCode() end
---@overload fun() : boolean
---@param normalizationForm System.Text.NormalizationForm
---@return boolean
function System.String:IsNormalized(normalizationForm) end
---@overload fun() : System.String
---@param normalizationForm System.Text.NormalizationForm
---@return System.String
function System.String:Normalize(normalizationForm) end
---@return System.ReadOnlySpan
function System.String:AsSpan() end
---@param start number
---@return System.ReadOnlySpan
function System.String:AsSpan(start) end
---@param start number
---@param length number
---@return System.ReadOnlySpan
function System.String:AsSpan(start, length) end
---@return System.ReadOnlyMemory
function System.String:AsMemory() end
---@param start number
---@return System.ReadOnlyMemory
function System.String:AsMemory(start) end
---@param startIndex System.Index
---@return System.ReadOnlyMemory
function System.String:AsMemory(startIndex) end
---@param start number
---@param length number
---@return System.ReadOnlyMemory
function System.String:AsMemory(start, length) end
---@param range System.Range
---@return System.ReadOnlyMemory
function System.String:AsMemory(range) end
---@return System.String
function System.String:ToPascalCase() end
---@return System.String
function System.String:ToCamelCase() end
---@return System.String
function System.String:ToKebabCase() end
---@return System.String
function System.String:ToTrainCase() end
---@return System.String
function System.String:ToSnakeCase() end
---@param b System.String
---@return boolean
function System.String:EndsWithIgnoreCaseFast(b) end
---@param b System.String
---@return boolean
function System.String:StartsWithIgnoreCaseFast(b) end
---@return boolean
function System.String:IsNormalized() end
---@param normalizationForm System.Text.NormalizationForm
---@return boolean
function System.String:IsNormalized(normalizationForm) end
---@return System.String
function System.String:Normalize() end
---@param normalizationForm System.Text.NormalizationForm
---@return System.String
function System.String:Normalize(normalizationForm) end
---@param chars System.String
---@param replacements System.String
---@return System.String
function System.String:Escape(chars, replacements) end
---@param chars System.String
---@param replacements System.String
---@return System.String
function System.String:Unescape(chars, replacements) end
---@param ch System.Char
---@return boolean
function System.String:Contains(ch) end
---@param text System.String
---@param comparison System.StringComparison
---@return boolean
function System.String:Contains(text, comparison) end
---@return System.String
function System.String:GetPlural() end
---@param ch System.Char
---@return number
function System.String:CountOccurrences(ch) end
---@return System.Collections.Generic.IEnumerable
function System.String:Tokenize() end
---@param predicate System.Func
---@return System.Collections.Generic.IEnumerable
function System.String:Split(predicate) end
---@return System.String
function System.String:WithAllWhitespaceStripped() end
---@param right System.String
---@return boolean
function System.String:InvariantEqualsIgnoreCase(right) end
---@param toCheck System.String
---@return boolean
function System.String:ContainsInvariantCultureIgnoreCase(toCheck) end
---@return System.String
function System.String:PrependWhitespace() end
---@return System.String
function System.String:AppendWhitespace() end
---@param separator System.Char
---@return System.String
function System.String:GetLastPartFromSeparator(separator) end

---@class System.String.TrimType
---@field Head System.String.TrimType
---@field Tail System.String.TrimType
---@field Both System.String.TrimType
System.String.TrimType = {}
---@alias CS.System.String.TrimType System.String.TrimType
CS.System.String.TrimType = System.String.TrimType


---@class System.String.ProbabilisticMap : System.ValueType
System.String.ProbabilisticMap = {}
---@alias CS.System.String.ProbabilisticMap System.String.ProbabilisticMap
CS.System.String.ProbabilisticMap = System.String.ProbabilisticMap


---@class System.TimeZoneInfo : System.Object
---@field Local System.TimeZoneInfo
---@field Utc System.TimeZoneInfo
---@field Id string
---@field DisplayName string
---@field StandardName string
---@field DaylightName string
---@field BaseUtcOffset System.TimeSpan
---@field SupportsDaylightSavingTime boolean
System.TimeZoneInfo = {}
---@alias CS.System.TimeZoneInfo System.TimeZoneInfo
CS.System.TimeZoneInfo = System.TimeZoneInfo

---@param id string
---@return System.TimeZoneInfo
function System.TimeZoneInfo.FindSystemTimeZoneById(id) end
function System.TimeZoneInfo.ClearCachedData() end
---@overload fun(dateTimeOffset: System.DateTimeOffset, destinationTimeZoneId: string) : System.DateTimeOffset
---@overload fun(dateTime: System.DateTime, destinationTimeZoneId: string) : System.DateTime
---@param dateTime System.DateTime
---@param sourceTimeZoneId string
---@param destinationTimeZoneId string
---@return System.DateTime
function System.TimeZoneInfo.ConvertTimeBySystemTimeZoneId(dateTime, sourceTimeZoneId, destinationTimeZoneId) end
---@overload fun(dateTimeOffset: System.DateTimeOffset, destinationTimeZone: System.TimeZoneInfo) : System.DateTimeOffset
---@overload fun(dateTime: System.DateTime, destinationTimeZone: System.TimeZoneInfo) : System.DateTime
---@param dateTime System.DateTime
---@param sourceTimeZone System.TimeZoneInfo
---@param destinationTimeZone System.TimeZoneInfo
---@return System.DateTime
function System.TimeZoneInfo.ConvertTime(dateTime, sourceTimeZone, destinationTimeZone) end
---@param dateTime System.DateTime
---@param destinationTimeZone System.TimeZoneInfo
---@return System.DateTime
function System.TimeZoneInfo.ConvertTimeFromUtc(dateTime, destinationTimeZone) end
---@overload fun(dateTime: System.DateTime) : System.DateTime
---@param dateTime System.DateTime
---@param sourceTimeZone System.TimeZoneInfo
---@return System.DateTime
function System.TimeZoneInfo.ConvertTimeToUtc(dateTime, sourceTimeZone) end
---@param source string
---@return System.TimeZoneInfo
function System.TimeZoneInfo.FromSerializedString(source) end
---@return System.Collections.ObjectModel.ReadOnlyCollection
function System.TimeZoneInfo.GetSystemTimeZones() end
---@overload fun(id: string, baseUtcOffset: System.TimeSpan, displayName: string, standardDisplayName: string) : System.TimeZoneInfo
---@overload fun(id: string, baseUtcOffset: System.TimeSpan, displayName: string, standardDisplayName: string, daylightDisplayName: string, adjustmentRules: System.TimeZoneInfo.AdjustmentRule[]) : System.TimeZoneInfo
---@param id string
---@param baseUtcOffset System.TimeSpan
---@param displayName string
---@param standardDisplayName string
---@param daylightDisplayName string
---@param adjustmentRules System.TimeZoneInfo.AdjustmentRule[]
---@param disableDaylightSavingTime boolean
---@return System.TimeZoneInfo
function System.TimeZoneInfo.CreateCustomTimeZone(id, baseUtcOffset, displayName, standardDisplayName, daylightDisplayName, adjustmentRules, disableDaylightSavingTime) end
---@return System.TimeZoneInfo.AdjustmentRule[]
function System.TimeZoneInfo:GetAdjustmentRules() end
---@overload fun(self: System.TimeZoneInfo, dateTimeOffset: System.DateTimeOffset) : System.TimeSpan[]
---@param dateTime System.DateTime
---@return System.TimeSpan[]
function System.TimeZoneInfo:GetAmbiguousTimeOffsets(dateTime) end
---@overload fun(self: System.TimeZoneInfo, dateTimeOffset: System.DateTimeOffset) : System.TimeSpan
---@param dateTime System.DateTime
---@return System.TimeSpan
function System.TimeZoneInfo:GetUtcOffset(dateTime) end
---@overload fun(self: System.TimeZoneInfo, dateTimeOffset: System.DateTimeOffset) : boolean
---@param dateTime System.DateTime
---@return boolean
function System.TimeZoneInfo:IsAmbiguousTime(dateTime) end
---@overload fun(self: System.TimeZoneInfo, dateTimeOffset: System.DateTimeOffset) : boolean
---@param dateTime System.DateTime
---@return boolean
function System.TimeZoneInfo:IsDaylightSavingTime(dateTime) end
---@param dateTime System.DateTime
---@return boolean
function System.TimeZoneInfo:IsInvalidTime(dateTime) end
---@overload fun(self: System.TimeZoneInfo, other: System.TimeZoneInfo) : boolean
---@param obj System.Object
---@return boolean
function System.TimeZoneInfo:Equals(obj) end
---@return number
function System.TimeZoneInfo:GetHashCode() end
---@param other System.TimeZoneInfo
---@return boolean
function System.TimeZoneInfo:HasSameRules(other) end
---@return string
function System.TimeZoneInfo:ToSerializedString() end
---@return string
function System.TimeZoneInfo:ToString() end

---@class System.TimeZoneInfo.CachedData : System.Object
---@field _systemTimeZones System.Collections.Generic.Dictionary
---@field _readOnlySystemTimeZones System.Collections.ObjectModel.ReadOnlyCollection
---@field _allSystemTimeZonesRead boolean
---@field Local System.TimeZoneInfo
System.TimeZoneInfo.CachedData = {}
---@alias CS.System.TimeZoneInfo.CachedData System.TimeZoneInfo.CachedData
CS.System.TimeZoneInfo.CachedData = System.TimeZoneInfo.CachedData

---@return System.TimeZoneInfo.CachedData
function System.TimeZoneInfo.CachedData.New() end
---@param year number
---@return System.TimeZoneInfo.OffsetAndRule
function System.TimeZoneInfo.CachedData:GetOneYearLocalFromUtc(year) end
---@param timeZone System.TimeZoneInfo
---@return System.DateTimeKind
function System.TimeZoneInfo.CachedData:GetCorrespondingKind(timeZone) end

---@class System.TimeZoneInfo.OffsetAndRule : System.Object
---@field Year number
---@field Offset System.TimeSpan
---@field Rule System.TimeZoneInfo.AdjustmentRule
System.TimeZoneInfo.OffsetAndRule = {}
---@alias CS.System.TimeZoneInfo.OffsetAndRule System.TimeZoneInfo.OffsetAndRule
CS.System.TimeZoneInfo.OffsetAndRule = System.TimeZoneInfo.OffsetAndRule

---@param year number
---@param offset System.TimeSpan
---@param rule System.TimeZoneInfo.AdjustmentRule
---@return System.TimeZoneInfo.OffsetAndRule
function System.TimeZoneInfo.OffsetAndRule.New(year, offset, rule) end

---@class System.TimeZoneInfo.DYNAMIC_TIME_ZONE_INFORMATION : System.ValueType
System.TimeZoneInfo.DYNAMIC_TIME_ZONE_INFORMATION = {}
---@alias CS.System.TimeZoneInfo.DYNAMIC_TIME_ZONE_INFORMATION System.TimeZoneInfo.DYNAMIC_TIME_ZONE_INFORMATION
CS.System.TimeZoneInfo.DYNAMIC_TIME_ZONE_INFORMATION = System.TimeZoneInfo.DYNAMIC_TIME_ZONE_INFORMATION


---@class System.TimeZoneInfo.TimeZoneInfoResult
---@field Success System.TimeZoneInfo.TimeZoneInfoResult
---@field TimeZoneNotFoundException System.TimeZoneInfo.TimeZoneInfoResult
---@field InvalidTimeZoneException System.TimeZoneInfo.TimeZoneInfoResult
---@field SecurityException System.TimeZoneInfo.TimeZoneInfoResult
System.TimeZoneInfo.TimeZoneInfoResult = {}
---@alias CS.System.TimeZoneInfo.TimeZoneInfoResult System.TimeZoneInfo.TimeZoneInfoResult
CS.System.TimeZoneInfo.TimeZoneInfoResult = System.TimeZoneInfo.TimeZoneInfoResult


---@class System.TimeZoneInfo.AdjustmentRule : System.Object
---@field DateStart System.DateTime
---@field DateEnd System.DateTime
---@field DaylightDelta System.TimeSpan
---@field DaylightTransitionStart System.TimeZoneInfo.TransitionTime
---@field DaylightTransitionEnd System.TimeZoneInfo.TransitionTime
System.TimeZoneInfo.AdjustmentRule = {}
---@alias CS.System.TimeZoneInfo.AdjustmentRule System.TimeZoneInfo.AdjustmentRule
CS.System.TimeZoneInfo.AdjustmentRule = System.TimeZoneInfo.AdjustmentRule

---@param dateStart System.DateTime
---@param dateEnd System.DateTime
---@param daylightDelta System.TimeSpan
---@param daylightTransitionStart System.TimeZoneInfo.TransitionTime
---@param daylightTransitionEnd System.TimeZoneInfo.TransitionTime
---@return System.TimeZoneInfo.AdjustmentRule
function System.TimeZoneInfo.AdjustmentRule.CreateAdjustmentRule(dateStart, dateEnd, daylightDelta, daylightTransitionStart, daylightTransitionEnd) end
---@param other System.TimeZoneInfo.AdjustmentRule
---@return boolean
function System.TimeZoneInfo.AdjustmentRule:Equals(other) end
---@return number
function System.TimeZoneInfo.AdjustmentRule:GetHashCode() end

---@class System.TimeZoneInfo.StringSerializer : System.ValueType
System.TimeZoneInfo.StringSerializer = {}
---@alias CS.System.TimeZoneInfo.StringSerializer System.TimeZoneInfo.StringSerializer
CS.System.TimeZoneInfo.StringSerializer = System.TimeZoneInfo.StringSerializer

---@param zone System.TimeZoneInfo
---@return string
function System.TimeZoneInfo.StringSerializer.GetSerializedString(zone) end
---@param source string
---@return System.TimeZoneInfo
function System.TimeZoneInfo.StringSerializer.GetDeserializedTimeZoneInfo(source) end

---@class System.TimeZoneInfo.StringSerializer.State
---@field Escaped System.TimeZoneInfo.StringSerializer.State
---@field NotEscaped System.TimeZoneInfo.StringSerializer.State
---@field StartOfToken System.TimeZoneInfo.StringSerializer.State
---@field EndOfLine System.TimeZoneInfo.StringSerializer.State
System.TimeZoneInfo.StringSerializer.State = {}
---@alias CS.System.TimeZoneInfo.StringSerializer.State System.TimeZoneInfo.StringSerializer.State
CS.System.TimeZoneInfo.StringSerializer.State = System.TimeZoneInfo.StringSerializer.State


---@class System.TimeZoneInfo.TransitionTime : System.ValueType
---@field TimeOfDay System.DateTime
---@field Month number
---@field Week number
---@field Day number
---@field DayOfWeek System.DayOfWeek
---@field IsFixedDateRule boolean
System.TimeZoneInfo.TransitionTime = {}
---@alias CS.System.TimeZoneInfo.TransitionTime System.TimeZoneInfo.TransitionTime
CS.System.TimeZoneInfo.TransitionTime = System.TimeZoneInfo.TransitionTime

---@param timeOfDay System.DateTime
---@param month number
---@param day number
---@return System.TimeZoneInfo.TransitionTime
function System.TimeZoneInfo.TransitionTime.CreateFixedDateRule(timeOfDay, month, day) end
---@param timeOfDay System.DateTime
---@param month number
---@param week number
---@param dayOfWeek System.DayOfWeek
---@return System.TimeZoneInfo.TransitionTime
function System.TimeZoneInfo.TransitionTime.CreateFloatingDateRule(timeOfDay, month, week, dayOfWeek) end
---@overload fun(self: System.TimeZoneInfo.TransitionTime, obj: System.Object) : boolean
---@param other System.TimeZoneInfo.TransitionTime
---@return boolean
function System.TimeZoneInfo.TransitionTime:Equals(other) end
---@return number
function System.TimeZoneInfo.TransitionTime:GetHashCode() end

---@class System.TimeZoneInfoOptions
---@field None System.TimeZoneInfoOptions
---@field NoThrowOnInvalidTime System.TimeZoneInfoOptions
System.TimeZoneInfoOptions = {}
---@alias CS.System.TimeZoneInfoOptions System.TimeZoneInfoOptions
CS.System.TimeZoneInfoOptions = System.TimeZoneInfoOptions


---@class System.AccessViolationException : System.SystemException
System.AccessViolationException = {}
---@alias CS.System.AccessViolationException System.AccessViolationException
CS.System.AccessViolationException = System.AccessViolationException

---@overload fun() : System.AccessViolationException
---@overload fun(message: string) : System.AccessViolationException
---@param message string
---@param innerException System.Exception
---@return System.AccessViolationException
function System.AccessViolationException.New(message, innerException) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
function System.Action:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param obj T
function System.Action:Invoke(obj) end
---@param obj T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(obj, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param arg1 T1
---@param arg2 T2
function System.Action:Invoke(arg1, arg2) end
---@param arg1 T1
---@param arg2 T2
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(arg1, arg2, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
function System.Action:Invoke(arg1, arg2, arg3) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(arg1, arg2, arg3, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
function System.Action:Invoke(arg1, arg2, arg3, arg4) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(arg1, arg2, arg3, arg4, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
function System.Action:Invoke(arg1, arg2, arg3, arg4, arg5) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(arg1, arg2, arg3, arg4, arg5, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
function System.Action:Invoke(arg1, arg2, arg3, arg4, arg5, arg6) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(arg1, arg2, arg3, arg4, arg5, arg6, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
function System.Action:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Action : System.MulticastDelegate
System.Action = {}
---@alias CS.System.Action System.Action
CS.System.Action = System.Action

---@param object System.Object
---@param method System.IntPtr
---@return System.Action
function System.Action.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
function System.Action:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Action:BeginInvoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, callback, object) end
---@param result System.IAsyncResult
function System.Action:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@return TResult
function System.Func:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg T
---@return TResult
function System.Func:Invoke(arg) end
---@param arg T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@return TResult
function System.Func:Invoke(arg1, arg2) end
---@param arg1 T1
---@param arg2 T2
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg1, arg2, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@return TResult
function System.Func:Invoke(arg1, arg2, arg3) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg1, arg2, arg3, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@return TResult
function System.Func:Invoke(arg1, arg2, arg3, arg4) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg1, arg2, arg3, arg4, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@return TResult
function System.Func:Invoke(arg1, arg2, arg3, arg4, arg5) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg1, arg2, arg3, arg4, arg5, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@return TResult
function System.Func:Invoke(arg1, arg2, arg3, arg4, arg5, arg6) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg1, arg2, arg3, arg4, arg5, arg6, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@return TResult
function System.Func:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Func : System.MulticastDelegate
System.Func = {}
---@alias CS.System.Func System.Func
CS.System.Func = System.Func

---@param object System.Object
---@param method System.IntPtr
---@return System.Func
function System.Func.New(object, method) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
---@return TResult
function System.Func:Invoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) end
---@param arg1 T1
---@param arg2 T2
---@param arg3 T3
---@param arg4 T4
---@param arg5 T5
---@param arg6 T6
---@param arg7 T7
---@param arg8 T8
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Func:BeginInvoke(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, callback, object) end
---@param result System.IAsyncResult
---@return TResult
function System.Func:EndInvoke(result) end

---@class System.Comparison : System.MulticastDelegate
System.Comparison = {}
---@alias CS.System.Comparison System.Comparison
CS.System.Comparison = System.Comparison

---@param object System.Object
---@param method System.IntPtr
---@return System.Comparison
function System.Comparison.New(object, method) end
---@param x T
---@param y T
---@return number
function System.Comparison:Invoke(x, y) end
---@param x T
---@param y T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Comparison:BeginInvoke(x, y, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Comparison:EndInvoke(result) end

---@class System.Converter : System.MulticastDelegate
System.Converter = {}
---@alias CS.System.Converter System.Converter
CS.System.Converter = System.Converter

---@param object System.Object
---@param method System.IntPtr
---@return System.Converter
function System.Converter.New(object, method) end
---@param input TInput
---@return TOutput
function System.Converter:Invoke(input) end
---@param input TInput
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Converter:BeginInvoke(input, callback, object) end
---@param result System.IAsyncResult
---@return TOutput
function System.Converter:EndInvoke(result) end

---@class System.Predicate : System.MulticastDelegate
System.Predicate = {}
---@alias CS.System.Predicate System.Predicate
CS.System.Predicate = System.Predicate

---@param object System.Object
---@param method System.IntPtr
---@return System.Predicate
function System.Predicate.New(object, method) end
---@param obj T
---@return boolean
function System.Predicate:Invoke(obj) end
---@param obj T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Predicate:BeginInvoke(obj, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Predicate:EndInvoke(result) end

---@class System.AggregateException : System.Exception
---@field InnerExceptions System.Collections.ObjectModel.ReadOnlyCollection
---@field Message string
System.AggregateException = {}
---@alias CS.System.AggregateException System.AggregateException
CS.System.AggregateException = System.AggregateException

---@overload fun() : System.AggregateException
---@overload fun(message: string) : System.AggregateException
---@overload fun(message: string, innerException: System.Exception) : System.AggregateException
---@overload fun(innerExceptions: System.Collections.Generic.IEnumerable) : System.AggregateException
---@overload fun(innerExceptions: System.Exception[]) : System.AggregateException
---@overload fun(message: string, innerExceptions: System.Collections.Generic.IEnumerable) : System.AggregateException
---@param message string
---@param innerExceptions System.Exception[]
---@return System.AggregateException
function System.AggregateException.New(message, innerExceptions) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.AggregateException:GetObjectData(info, context) end
---@return System.Exception
function System.AggregateException:GetBaseException() end
---@param predicate System.Func
function System.AggregateException:Handle(predicate) end
---@return System.AggregateException
function System.AggregateException:Flatten() end
---@return string
function System.AggregateException:ToString() end

---@class System.ApplicationException : System.Exception
System.ApplicationException = {}
---@alias CS.System.ApplicationException System.ApplicationException
CS.System.ApplicationException = System.ApplicationException

---@overload fun() : System.ApplicationException
---@overload fun(message: string) : System.ApplicationException
---@param message string
---@param innerException System.Exception
---@return System.ApplicationException
function System.ApplicationException.New(message, innerException) end

---@class System.ArgumentException : System.SystemException
---@field Message string
---@field ParamName string
System.ArgumentException = {}
---@alias CS.System.ArgumentException System.ArgumentException
CS.System.ArgumentException = System.ArgumentException

---@overload fun() : System.ArgumentException
---@overload fun(message: string) : System.ArgumentException
---@overload fun(message: string, innerException: System.Exception) : System.ArgumentException
---@overload fun(message: string, paramName: string, innerException: System.Exception) : System.ArgumentException
---@param message string
---@param paramName string
---@return System.ArgumentException
function System.ArgumentException.New(message, paramName) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.ArgumentException:GetObjectData(info, context) end

---@class System.ArgumentNullException : System.ArgumentException
System.ArgumentNullException = {}
---@alias CS.System.ArgumentNullException System.ArgumentNullException
CS.System.ArgumentNullException = System.ArgumentNullException

---@overload fun() : System.ArgumentNullException
---@overload fun(paramName: string) : System.ArgumentNullException
---@overload fun(message: string, innerException: System.Exception) : System.ArgumentNullException
---@param paramName string
---@param message string
---@return System.ArgumentNullException
function System.ArgumentNullException.New(paramName, message) end

---@class System.ArgumentOutOfRangeException : System.ArgumentException
---@field Message string
---@field ActualValue System.Object
System.ArgumentOutOfRangeException = {}
---@alias CS.System.ArgumentOutOfRangeException System.ArgumentOutOfRangeException
CS.System.ArgumentOutOfRangeException = System.ArgumentOutOfRangeException

---@overload fun() : System.ArgumentOutOfRangeException
---@overload fun(paramName: string) : System.ArgumentOutOfRangeException
---@overload fun(paramName: string, message: string) : System.ArgumentOutOfRangeException
---@overload fun(message: string, innerException: System.Exception) : System.ArgumentOutOfRangeException
---@param paramName string
---@param actualValue System.Object
---@param message string
---@return System.ArgumentOutOfRangeException
function System.ArgumentOutOfRangeException.New(paramName, actualValue, message) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.ArgumentOutOfRangeException:GetObjectData(info, context) end

---@class System.ArithmeticException : System.SystemException
System.ArithmeticException = {}
---@alias CS.System.ArithmeticException System.ArithmeticException
CS.System.ArithmeticException = System.ArithmeticException

---@overload fun() : System.ArithmeticException
---@overload fun(message: string) : System.ArithmeticException
---@param message string
---@param innerException System.Exception
---@return System.ArithmeticException
function System.ArithmeticException.New(message, innerException) end

---@class System.ArraySegment : System.ValueType
---@field Empty System.ArraySegment
---@field Array T[]
---@field Offset number
---@field Count number
---@field Item T
System.ArraySegment = {}
---@alias CS.System.ArraySegment System.ArraySegment
CS.System.ArraySegment = System.ArraySegment

---@overload fun(array: T[]) : System.ArraySegment
---@param array T[]
---@param offset number
---@param count number
---@return System.ArraySegment
function System.ArraySegment.New(array, offset, count) end
---@return System.ArraySegment.Enumerator[T]
function System.ArraySegment:GetEnumerator() end
---@return number
function System.ArraySegment:GetHashCode() end
---@overload fun(self: System.ArraySegment, destination: T[])
---@overload fun(self: System.ArraySegment, destination: T[], destinationIndex: number)
---@param destination System.ArraySegment
function System.ArraySegment:CopyTo(destination) end
---@overload fun(self: System.ArraySegment, obj: System.Object) : boolean
---@param obj System.ArraySegment
---@return boolean
function System.ArraySegment:Equals(obj) end
---@overload fun(self: System.ArraySegment, index: number) : System.ArraySegment
---@param index number
---@param count number
---@return System.ArraySegment
function System.ArraySegment:Slice(index, count) end
---@return T[]
function System.ArraySegment:ToArray() end

---@class System.ArraySegment.Enumerator : System.ValueType
---@field Current T
System.ArraySegment.Enumerator = {}
---@alias CS.System.ArraySegment.Enumerator System.ArraySegment.Enumerator
CS.System.ArraySegment.Enumerator = System.ArraySegment.Enumerator

---@return boolean
function System.ArraySegment.Enumerator:MoveNext() end
function System.ArraySegment.Enumerator:Dispose() end

---@class System.ArrayTypeMismatchException : System.SystemException
System.ArrayTypeMismatchException = {}
---@alias CS.System.ArrayTypeMismatchException System.ArrayTypeMismatchException
CS.System.ArrayTypeMismatchException = System.ArrayTypeMismatchException

---@overload fun() : System.ArrayTypeMismatchException
---@overload fun(message: string) : System.ArrayTypeMismatchException
---@param message string
---@param innerException System.Exception
---@return System.ArrayTypeMismatchException
function System.ArrayTypeMismatchException.New(message, innerException) end

---@class System.AssemblyLoadEventArgs : System.EventArgs
---@field LoadedAssembly System.Reflection.Assembly
System.AssemblyLoadEventArgs = {}
---@alias CS.System.AssemblyLoadEventArgs System.AssemblyLoadEventArgs
CS.System.AssemblyLoadEventArgs = System.AssemblyLoadEventArgs

---@param loadedAssembly System.Reflection.Assembly
---@return System.AssemblyLoadEventArgs
function System.AssemblyLoadEventArgs.New(loadedAssembly) end

---@class System.AssemblyLoadEventHandler : System.MulticastDelegate
System.AssemblyLoadEventHandler = {}
---@alias CS.System.AssemblyLoadEventHandler System.AssemblyLoadEventHandler
CS.System.AssemblyLoadEventHandler = System.AssemblyLoadEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.AssemblyLoadEventHandler
function System.AssemblyLoadEventHandler.New(object, method) end
---@param sender System.Object
---@param args System.AssemblyLoadEventArgs
function System.AssemblyLoadEventHandler:Invoke(sender, args) end
---@param sender System.Object
---@param args System.AssemblyLoadEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.AssemblyLoadEventHandler:BeginInvoke(sender, args, callback, object) end
---@param result System.IAsyncResult
function System.AssemblyLoadEventHandler:EndInvoke(result) end

---@class System.AsyncCallback : System.MulticastDelegate
System.AsyncCallback = {}
---@alias CS.System.AsyncCallback System.AsyncCallback
CS.System.AsyncCallback = System.AsyncCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.AsyncCallback
function System.AsyncCallback.New(object, method) end
---@param ar System.IAsyncResult
function System.AsyncCallback:Invoke(ar) end
---@param ar System.IAsyncResult
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.AsyncCallback:BeginInvoke(ar, callback, object) end
---@param result System.IAsyncResult
function System.AsyncCallback:EndInvoke(result) end

---@class System.AttributeTargets
---@field Assembly System.AttributeTargets
---@field Module System.AttributeTargets
---@field Class System.AttributeTargets
---@field Struct System.AttributeTargets
---@field Enum System.AttributeTargets
---@field Constructor System.AttributeTargets
---@field Method System.AttributeTargets
---@field Property System.AttributeTargets
---@field Field System.AttributeTargets
---@field Event System.AttributeTargets
---@field Interface System.AttributeTargets
---@field Parameter System.AttributeTargets
---@field Delegate System.AttributeTargets
---@field ReturnValue System.AttributeTargets
---@field GenericParameter System.AttributeTargets
---@field All System.AttributeTargets
System.AttributeTargets = {}
---@alias CS.System.AttributeTargets System.AttributeTargets
CS.System.AttributeTargets = System.AttributeTargets


---@class System.AttributeUsageAttribute : System.Attribute
---@field ValidOn System.AttributeTargets
---@field AllowMultiple boolean
---@field Inherited boolean
System.AttributeUsageAttribute = {}
---@alias CS.System.AttributeUsageAttribute System.AttributeUsageAttribute
CS.System.AttributeUsageAttribute = System.AttributeUsageAttribute

---@param validOn System.AttributeTargets
---@return System.AttributeUsageAttribute
function System.AttributeUsageAttribute.New(validOn) end

---@class System.BadImageFormatException : System.SystemException
---@field Message string
---@field FileName string
---@field FusionLog string
System.BadImageFormatException = {}
---@alias CS.System.BadImageFormatException System.BadImageFormatException
CS.System.BadImageFormatException = System.BadImageFormatException

---@overload fun() : System.BadImageFormatException
---@overload fun(message: string) : System.BadImageFormatException
---@overload fun(message: string, inner: System.Exception) : System.BadImageFormatException
---@overload fun(message: string, fileName: string) : System.BadImageFormatException
---@param message string
---@param fileName string
---@param inner System.Exception
---@return System.BadImageFormatException
function System.BadImageFormatException.New(message, fileName, inner) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.BadImageFormatException:GetObjectData(info, context) end
---@return string
function System.BadImageFormatException:ToString() end

---@class System.BitConverter : System.Object
---@field IsLittleEndian boolean
System.BitConverter = {}
---@alias CS.System.BitConverter System.BitConverter
CS.System.BitConverter = System.BitConverter

---@overload fun(value: boolean) : System.Byte[]
---@overload fun(value: System.Char) : System.Byte[]
---@overload fun(value: number) : System.Byte[]
---@overload fun(value: number) : System.Byte[]
---@overload fun(value: number) : System.Byte[]
---@overload fun(value: number) : System.Byte[]
---@overload fun(value: number) : System.Byte[]
---@overload fun(value: number) : System.Byte[]
---@overload fun(value: number) : System.Byte[]
---@param value number
---@return System.Byte[]
function System.BitConverter.GetBytes(value) end
---@overload fun(destination: System.Span, value: boolean) : boolean
---@overload fun(destination: System.Span, value: System.Char) : boolean
---@overload fun(destination: System.Span, value: number) : boolean
---@overload fun(destination: System.Span, value: number) : boolean
---@overload fun(destination: System.Span, value: number) : boolean
---@overload fun(destination: System.Span, value: number) : boolean
---@overload fun(destination: System.Span, value: number) : boolean
---@overload fun(destination: System.Span, value: number) : boolean
---@overload fun(destination: System.Span, value: number) : boolean
---@param destination System.Span
---@param value number
---@return boolean
function System.BitConverter.TryWriteBytes(destination, value) end
---@overload fun(value: System.Byte[], startIndex: number) : System.Char
---@param value System.ReadOnlySpan
---@return System.Char
function System.BitConverter.ToChar(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToInt16(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToInt32(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToInt64(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToUInt16(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToUInt32(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToUInt64(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToSingle(value) end
---@overload fun(value: System.Byte[], startIndex: number) : number
---@param value System.ReadOnlySpan
---@return number
function System.BitConverter.ToDouble(value) end
---@overload fun(value: System.Byte[], startIndex: number, length: number) : string
---@overload fun(value: System.Byte[]) : string
---@param value System.Byte[]
---@param startIndex number
---@return string
function System.BitConverter.ToString(value, startIndex) end
---@overload fun(value: System.Byte[], startIndex: number) : boolean
---@param value System.ReadOnlySpan
---@return boolean
function System.BitConverter.ToBoolean(value) end
---@param value number
---@return number
function System.BitConverter.DoubleToInt64Bits(value) end
---@param value number
---@return number
function System.BitConverter.Int64BitsToDouble(value) end
---@param value number
---@return number
function System.BitConverter.SingleToInt32Bits(value) end
---@param value number
---@return number
function System.BitConverter.Int32BitsToSingle(value) end

---@class boolean : System.ValueType
---@field TrueString string
---@field FalseString string
boolean = {}
---@alias boolean boolean
boolean = boolean

---@overload fun(value: string) : boolean
---@param value System.ReadOnlySpan
---@return boolean
function boolean.Parse(value) end
---@overload fun(value: string, out_result: boolean) : boolean, boolean
---@param value System.ReadOnlySpan
---@param out_result boolean
---@return boolean,boolean
function boolean.TryParse(value, out_result) end
---@return number
function boolean:GetHashCode() end
---@overload fun() : string
---@param provider System.IFormatProvider
---@return string
function boolean:ToString(provider) end
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function boolean:TryFormat(destination, out_charsWritten) end
---@overload fun(self: boolean, obj: System.Object) : boolean
---@param obj boolean
---@return boolean
function boolean:Equals(obj) end
---@overload fun(self: boolean, obj: System.Object) : number
---@param value boolean
---@return number
function boolean:CompareTo(value) end
---@return System.TypeCode
function boolean:GetTypeCode() end
function boolean:MustBeTrue() end
---@param message string
function boolean:MustBeTrue(message) end
function boolean:MustBeFalse() end
---@param message string
function boolean:MustBeFalse(message) end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, format: string) : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end

---@class System.CLSCompliantAttribute : System.Attribute
---@field IsCompliant boolean
System.CLSCompliantAttribute = {}
---@alias CS.System.CLSCompliantAttribute System.CLSCompliantAttribute
CS.System.CLSCompliantAttribute = System.CLSCompliantAttribute

---@param isCompliant boolean
---@return System.CLSCompliantAttribute
function System.CLSCompliantAttribute.New(isCompliant) end

---@class System.Char : System.ValueType
---@field MaxValue System.Char
---@field MinValue System.Char
System.Char = {}
---@alias CS.System.Char System.Char
CS.System.Char = System.Char

---@overload fun(c: System.Char) : string
---@overload fun() : string
---@param provider System.IFormatProvider
---@return string
function System.Char:ToString(provider) end
---@param s string
---@return System.Char
function System.Char.Parse(s) end
---@param s string
---@param out_result System.Char
---@return boolean,System.Char
function System.Char.TryParse(s, out_result) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsDigit(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsLetter(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsWhiteSpace(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsUpper(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsLower(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsPunctuation(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsLetterOrDigit(s, index) end
---@overload fun(c: System.Char, culture: System.Globalization.CultureInfo) : System.Char
---@param c System.Char
---@return System.Char
function System.Char.ToUpper(c) end
---@param c System.Char
---@return System.Char
function System.Char.ToUpperInvariant(c) end
---@overload fun(c: System.Char, culture: System.Globalization.CultureInfo) : System.Char
---@param c System.Char
---@return System.Char
function System.Char.ToLower(c) end
---@param c System.Char
---@return System.Char
function System.Char.ToLowerInvariant(c) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsControl(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsNumber(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsSeparator(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsSurrogate(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsSymbol(s, index) end
---@overload fun(c: System.Char) : System.Globalization.UnicodeCategory
---@param s string
---@param index number
---@return System.Globalization.UnicodeCategory
function System.Char.GetUnicodeCategory(s, index) end
---@overload fun(c: System.Char) : number
---@param s string
---@param index number
---@return number
function System.Char.GetNumericValue(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsHighSurrogate(s, index) end
---@overload fun(c: System.Char) : boolean
---@param s string
---@param index number
---@return boolean
function System.Char.IsLowSurrogate(s, index) end
---@overload fun(s: string, index: number) : boolean
---@param highSurrogate System.Char
---@param lowSurrogate System.Char
---@return boolean
function System.Char.IsSurrogatePair(highSurrogate, lowSurrogate) end
---@param utf32 number
---@return string
function System.Char.ConvertFromUtf32(utf32) end
---@overload fun(highSurrogate: System.Char, lowSurrogate: System.Char) : number
---@param s string
---@param index number
---@return number
function System.Char.ConvertToUtf32(s, index) end
---@return number
function System.Char:GetHashCode() end
---@overload fun(self: System.Char, obj: System.Object) : boolean
---@param obj System.Char
---@return boolean
function System.Char:Equals(obj) end
---@overload fun(self: System.Char, value: System.Object) : number
---@param value System.Char
---@return number
function System.Char:CompareTo(value) end
---@return System.TypeCode
function System.Char:GetTypeCode() end
---@return boolean
function System.Char:IsPrintable() end

---@class System.CharEnumerator : System.Object
---@field Current System.Char
System.CharEnumerator = {}
---@alias CS.System.CharEnumerator System.CharEnumerator
CS.System.CharEnumerator = System.CharEnumerator

---@return System.Object
function System.CharEnumerator:Clone() end
---@return boolean
function System.CharEnumerator:MoveNext() end
function System.CharEnumerator:Dispose() end
function System.CharEnumerator:Reset() end

---@class System.Convert : System.Object
---@field DBNull System.Object
System.Convert = {}
---@alias CS.System.Convert System.Convert
CS.System.Convert = System.Convert

---@param value System.Object
---@return System.TypeCode
function System.Convert.GetTypeCode(value) end
---@param value System.Object
---@return boolean
function System.Convert.IsDBNull(value) end
---@overload fun(value: System.Object, typeCode: System.TypeCode) : System.Object
---@overload fun(value: System.Object, typeCode: System.TypeCode, provider: System.IFormatProvider) : System.Object
---@overload fun(value: System.Object, conversionType: System.Type) : System.Object
---@param value System.Object
---@param conversionType System.Type
---@param provider System.IFormatProvider
---@return System.Object
function System.Convert.ChangeType(value, conversionType, provider) end
---@overload fun(value: System.Object) : boolean
---@overload fun(value: System.Object, provider: System.IFormatProvider) : boolean
---@overload fun(value: boolean) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: System.Char) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: string) : boolean
---@overload fun(value: string, provider: System.IFormatProvider) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: number) : boolean
---@overload fun(value: System.Decimal) : boolean
---@param value System.DateTime
---@return boolean
function System.Convert.ToBoolean(value) end
---@overload fun(value: System.Object) : System.Char
---@overload fun(value: System.Object, provider: System.IFormatProvider) : System.Char
---@overload fun(value: boolean) : System.Char
---@overload fun(value: System.Char) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: string) : System.Char
---@overload fun(value: string, provider: System.IFormatProvider) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: number) : System.Char
---@overload fun(value: System.Decimal) : System.Char
---@param value System.DateTime
---@return System.Char
function System.Convert.ToChar(value) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToSByte(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToByte(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToInt16(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToUInt16(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToInt32(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToUInt32(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToInt64(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: System.DateTime) : number
---@param value string
---@param fromBase number
---@return number
function System.Convert.ToUInt64(value, fromBase) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@param value System.DateTime
---@return number
function System.Convert.ToSingle(value) end
---@overload fun(value: System.Object) : number
---@overload fun(value: System.Object, provider: System.IFormatProvider) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Char) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : number
---@overload fun(value: string) : number
---@overload fun(value: string, provider: System.IFormatProvider) : number
---@overload fun(value: boolean) : number
---@param value System.DateTime
---@return number
function System.Convert.ToDouble(value) end
---@overload fun(value: System.Object) : System.Decimal
---@overload fun(value: System.Object, provider: System.IFormatProvider) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: System.Char) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: string) : System.Decimal
---@overload fun(value: string, provider: System.IFormatProvider) : System.Decimal
---@overload fun(value: System.Decimal) : System.Decimal
---@overload fun(value: boolean) : System.Decimal
---@param value System.DateTime
---@return System.Decimal
function System.Convert.ToDecimal(value) end
---@overload fun(value: System.DateTime) : System.DateTime
---@overload fun(value: System.Object) : System.DateTime
---@overload fun(value: System.Object, provider: System.IFormatProvider) : System.DateTime
---@overload fun(value: string) : System.DateTime
---@overload fun(value: string, provider: System.IFormatProvider) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: boolean) : System.DateTime
---@overload fun(value: System.Char) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@overload fun(value: number) : System.DateTime
---@param value System.Decimal
---@return System.DateTime
function System.Convert.ToDateTime(value) end
---@overload fun(value: System.Object) : string
---@overload fun(value: System.Object, provider: System.IFormatProvider) : string
---@overload fun(value: boolean) : string
---@overload fun(value: boolean, provider: System.IFormatProvider) : string
---@overload fun(value: System.Char) : string
---@overload fun(value: System.Char, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: number) : string
---@overload fun(value: number, provider: System.IFormatProvider) : string
---@overload fun(value: System.Decimal) : string
---@overload fun(value: System.Decimal, provider: System.IFormatProvider) : string
---@overload fun(value: System.DateTime) : string
---@overload fun(value: System.DateTime, provider: System.IFormatProvider) : string
---@overload fun(value: string) : string
---@overload fun(value: string, provider: System.IFormatProvider) : string
---@overload fun(value: number, toBase: number) : string
---@overload fun(value: number, toBase: number) : string
---@overload fun(value: number, toBase: number) : string
---@param value number
---@param toBase number
---@return string
function System.Convert.ToString(value, toBase) end
---@overload fun(inArray: System.Byte[]) : string
---@overload fun(inArray: System.Byte[], options: System.Base64FormattingOptions) : string
---@overload fun(inArray: System.Byte[], offset: number, length: number) : string
---@overload fun(inArray: System.Byte[], offset: number, length: number, options: System.Base64FormattingOptions) : string
---@param bytes System.ReadOnlySpan
---@param options System.Base64FormattingOptions
---@return string
function System.Convert.ToBase64String(bytes, options) end
---@overload fun(inArray: System.Byte[], offsetIn: number, length: number, outArray: System.Char[], offsetOut: number) : number
---@param inArray System.Byte[]
---@param offsetIn number
---@param length number
---@param outArray System.Char[]
---@param offsetOut number
---@param options System.Base64FormattingOptions
---@return number
function System.Convert.ToBase64CharArray(inArray, offsetIn, length, outArray, offsetOut, options) end
---@param bytes System.ReadOnlySpan
---@param chars System.Span
---@param out_charsWritten number
---@param options System.Base64FormattingOptions
---@return boolean,number
function System.Convert.TryToBase64Chars(bytes, chars, out_charsWritten, options) end
---@param s string
---@return System.Byte[]
function System.Convert.FromBase64String(s) end
---@param s string
---@param bytes System.Span
---@param out_bytesWritten number
---@return boolean,number
function System.Convert.TryFromBase64String(s, bytes, out_bytesWritten) end
---@param chars System.ReadOnlySpan
---@param bytes System.Span
---@param out_bytesWritten number
---@return boolean,number
function System.Convert.TryFromBase64Chars(chars, bytes, out_bytesWritten) end
---@param inArray System.Char[]
---@param offset number
---@param length number
---@return System.Byte[]
function System.Convert.FromBase64CharArray(inArray, offset, length) end

---@class System.Base64FormattingOptions
---@field None System.Base64FormattingOptions
---@field InsertLineBreaks System.Base64FormattingOptions
System.Base64FormattingOptions = {}
---@alias CS.System.Base64FormattingOptions System.Base64FormattingOptions
CS.System.Base64FormattingOptions = System.Base64FormattingOptions


---@class System.CurrentSystemTimeZone : System.TimeZone
---@field StandardName string
---@field DaylightName string
System.CurrentSystemTimeZone = {}
---@alias CS.System.CurrentSystemTimeZone System.CurrentSystemTimeZone
CS.System.CurrentSystemTimeZone = System.CurrentSystemTimeZone

---@param time System.DateTime
---@return System.DateTime
function System.CurrentSystemTimeZone:ToLocalTime(time) end
---@param year number
---@return System.Globalization.DaylightTime
function System.CurrentSystemTimeZone:GetDaylightChanges(year) end
---@param time System.DateTime
---@return System.TimeSpan
function System.CurrentSystemTimeZone:GetUtcOffset(time) end

---@class System.DBNull : System.Object
---@field Value System.DBNull
System.DBNull = {}
---@alias CS.System.DBNull System.DBNull
CS.System.DBNull = System.DBNull

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.DBNull:GetObjectData(info, context) end
---@overload fun() : string
---@param provider System.IFormatProvider
---@return string
function System.DBNull:ToString(provider) end
---@return System.TypeCode
function System.DBNull:GetTypeCode() end

---@class System.DataMisalignedException : System.SystemException
System.DataMisalignedException = {}
---@alias CS.System.DataMisalignedException System.DataMisalignedException
CS.System.DataMisalignedException = System.DataMisalignedException

---@overload fun() : System.DataMisalignedException
---@overload fun(message: string) : System.DataMisalignedException
---@param message string
---@param innerException System.Exception
---@return System.DataMisalignedException
function System.DataMisalignedException.New(message, innerException) end

---@class System.DateTime : System.ValueType
---@field MinValue System.DateTime
---@field MaxValue System.DateTime
---@field UnixEpoch System.DateTime
---@field Now System.DateTime
---@field Today System.DateTime
---@field UtcNow System.DateTime
---@field Date System.DateTime
---@field Day number
---@field DayOfWeek System.DayOfWeek
---@field DayOfYear number
---@field Hour number
---@field Kind System.DateTimeKind
---@field Millisecond number
---@field Minute number
---@field Month number
---@field Second number
---@field Ticks number
---@field TimeOfDay System.TimeSpan
---@field Year number
System.DateTime = {}
---@alias CS.System.DateTime System.DateTime
CS.System.DateTime = System.DateTime

---@overload fun(ticks: number) : System.DateTime
---@overload fun(ticks: number, kind: System.DateTimeKind) : System.DateTime
---@overload fun(year: number, month: number, day: number) : System.DateTime
---@overload fun(year: number, month: number, day: number, calendar: System.Globalization.Calendar) : System.DateTime
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number) : System.DateTime
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number, kind: System.DateTimeKind) : System.DateTime
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number, calendar: System.Globalization.Calendar) : System.DateTime
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number, millisecond: number) : System.DateTime
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number, millisecond: number, kind: System.DateTimeKind) : System.DateTime
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number, millisecond: number, calendar: System.Globalization.Calendar) : System.DateTime
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param calendar System.Globalization.Calendar
---@param kind System.DateTimeKind
---@return System.DateTime
function System.DateTime.New(year, month, day, hour, minute, second, millisecond, calendar, kind) end
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return number
function System.DateTime.Compare(t1, t2) end
---@param year number
---@param month number
---@return number
function System.DateTime.DaysInMonth(year, month) end
---@overload fun(t1: System.DateTime, t2: System.DateTime) : boolean
---@overload fun(self: System.DateTime, value: System.Object) : boolean
---@param value System.DateTime
---@return boolean
function System.DateTime:Equals(value) end
---@param dateData number
---@return System.DateTime
function System.DateTime.FromBinary(dateData) end
---@param fileTime number
---@return System.DateTime
function System.DateTime.FromFileTime(fileTime) end
---@param fileTime number
---@return System.DateTime
function System.DateTime.FromFileTimeUtc(fileTime) end
---@param d number
---@return System.DateTime
function System.DateTime.FromOADate(d) end
---@param value System.DateTime
---@param kind System.DateTimeKind
---@return System.DateTime
function System.DateTime.SpecifyKind(value, kind) end
---@param year number
---@return boolean
function System.DateTime.IsLeapYear(year) end
---@overload fun(s: string) : System.DateTime
---@overload fun(s: string, provider: System.IFormatProvider) : System.DateTime
---@overload fun(s: string, provider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles) : System.DateTime
---@param s System.ReadOnlySpan
---@param provider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@return System.DateTime
function System.DateTime.Parse(s, provider, styles) end
---@overload fun(s: string, format: string, provider: System.IFormatProvider) : System.DateTime
---@overload fun(s: string, format: string, provider: System.IFormatProvider, style: System.Globalization.DateTimeStyles) : System.DateTime
---@overload fun(s: System.ReadOnlySpan, format: System.ReadOnlySpan, provider: System.IFormatProvider, style: System.Globalization.DateTimeStyles) : System.DateTime
---@overload fun(s: string, formats: System.String[], provider: System.IFormatProvider, style: System.Globalization.DateTimeStyles) : System.DateTime
---@param s System.ReadOnlySpan
---@param formats System.String[]
---@param provider System.IFormatProvider
---@param style System.Globalization.DateTimeStyles
---@return System.DateTime
function System.DateTime.ParseExact(s, formats, provider, style) end
---@overload fun(s: string, out_result: System.DateTime) : boolean, System.DateTime
---@overload fun(s: System.ReadOnlySpan, out_result: System.DateTime) : boolean, System.DateTime
---@overload fun(s: string, provider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles, out_result: System.DateTime) : boolean, System.DateTime
---@param s System.ReadOnlySpan
---@param provider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@param out_result System.DateTime
---@return boolean,System.DateTime
function System.DateTime.TryParse(s, provider, styles, out_result) end
---@overload fun(s: string, format: string, provider: System.IFormatProvider, style: System.Globalization.DateTimeStyles, out_result: System.DateTime) : boolean, System.DateTime
---@overload fun(s: System.ReadOnlySpan, format: System.ReadOnlySpan, provider: System.IFormatProvider, style: System.Globalization.DateTimeStyles, out_result: System.DateTime) : boolean, System.DateTime
---@overload fun(s: string, formats: System.String[], provider: System.IFormatProvider, style: System.Globalization.DateTimeStyles, out_result: System.DateTime) : boolean, System.DateTime
---@param s System.ReadOnlySpan
---@param formats System.String[]
---@param provider System.IFormatProvider
---@param style System.Globalization.DateTimeStyles
---@param out_result System.DateTime
---@return boolean,System.DateTime
function System.DateTime.TryParseExact(s, formats, provider, style, out_result) end
---@param value System.TimeSpan
---@return System.DateTime
function System.DateTime:Add(value) end
---@param value number
---@return System.DateTime
function System.DateTime:AddDays(value) end
---@param value number
---@return System.DateTime
function System.DateTime:AddHours(value) end
---@param value number
---@return System.DateTime
function System.DateTime:AddMilliseconds(value) end
---@param value number
---@return System.DateTime
function System.DateTime:AddMinutes(value) end
---@param months number
---@return System.DateTime
function System.DateTime:AddMonths(months) end
---@param value number
---@return System.DateTime
function System.DateTime:AddSeconds(value) end
---@param value number
---@return System.DateTime
function System.DateTime:AddTicks(value) end
---@param value number
---@return System.DateTime
function System.DateTime:AddYears(value) end
---@overload fun(self: System.DateTime, value: System.Object) : number
---@param value System.DateTime
---@return number
function System.DateTime:CompareTo(value) end
---@return boolean
function System.DateTime:IsDaylightSavingTime() end
---@return number
function System.DateTime:ToBinary() end
---@return number
function System.DateTime:GetHashCode() end
---@overload fun(self: System.DateTime, value: System.DateTime) : System.TimeSpan
---@param value System.TimeSpan
---@return System.DateTime
function System.DateTime:Subtract(value) end
---@return number
function System.DateTime:ToOADate() end
---@return number
function System.DateTime:ToFileTime() end
---@return number
function System.DateTime:ToFileTimeUtc() end
---@return System.DateTime
function System.DateTime:ToLocalTime() end
---@return string
function System.DateTime:ToLongDateString() end
---@return string
function System.DateTime:ToLongTimeString() end
---@return string
function System.DateTime:ToShortDateString() end
---@return string
function System.DateTime:ToShortTimeString() end
---@overload fun() : string
---@overload fun(self: System.DateTime, format: string) : string
---@overload fun(self: System.DateTime, provider: System.IFormatProvider) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function System.DateTime:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function System.DateTime:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.DateTime
function System.DateTime:ToUniversalTime() end
---@overload fun() : System.String[]
---@overload fun(self: System.DateTime, provider: System.IFormatProvider) : System.String[]
---@overload fun(self: System.DateTime, format: System.Char) : System.String[]
---@param format System.Char
---@param provider System.IFormatProvider
---@return System.String[]
function System.DateTime:GetDateTimeFormats(format, provider) end
---@return System.TypeCode
function System.DateTime:GetTypeCode() end

---@class System.DateTimeKind
---@field Unspecified System.DateTimeKind
---@field Utc System.DateTimeKind
---@field Local System.DateTimeKind
System.DateTimeKind = {}
---@alias CS.System.DateTimeKind System.DateTimeKind
CS.System.DateTimeKind = System.DateTimeKind


---@class System.DateTimeOffset : System.ValueType
---@field MinValue System.DateTimeOffset
---@field MaxValue System.DateTimeOffset
---@field UnixEpoch System.DateTimeOffset
---@field Now System.DateTimeOffset
---@field UtcNow System.DateTimeOffset
---@field DateTime System.DateTime
---@field UtcDateTime System.DateTime
---@field LocalDateTime System.DateTime
---@field Date System.DateTime
---@field Day number
---@field DayOfWeek System.DayOfWeek
---@field DayOfYear number
---@field Hour number
---@field Millisecond number
---@field Minute number
---@field Month number
---@field Offset System.TimeSpan
---@field Second number
---@field Ticks number
---@field UtcTicks number
---@field TimeOfDay System.TimeSpan
---@field Year number
System.DateTimeOffset = {}
---@alias CS.System.DateTimeOffset System.DateTimeOffset
CS.System.DateTimeOffset = System.DateTimeOffset

---@overload fun(ticks: number, offset: System.TimeSpan) : System.DateTimeOffset
---@overload fun(dateTime: System.DateTime) : System.DateTimeOffset
---@overload fun(dateTime: System.DateTime, offset: System.TimeSpan) : System.DateTimeOffset
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number, offset: System.TimeSpan) : System.DateTimeOffset
---@overload fun(year: number, month: number, day: number, hour: number, minute: number, second: number, millisecond: number, offset: System.TimeSpan) : System.DateTimeOffset
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param calendar System.Globalization.Calendar
---@param offset System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset.New(year, month, day, hour, minute, second, millisecond, calendar, offset) end
---@param first System.DateTimeOffset
---@param second System.DateTimeOffset
---@return number
function System.DateTimeOffset.Compare(first, second) end
---@overload fun(first: System.DateTimeOffset, second: System.DateTimeOffset) : boolean
---@overload fun(self: System.DateTimeOffset, obj: System.Object) : boolean
---@param other System.DateTimeOffset
---@return boolean
function System.DateTimeOffset:Equals(other) end
---@param fileTime number
---@return System.DateTimeOffset
function System.DateTimeOffset.FromFileTime(fileTime) end
---@param seconds number
---@return System.DateTimeOffset
function System.DateTimeOffset.FromUnixTimeSeconds(seconds) end
---@param milliseconds number
---@return System.DateTimeOffset
function System.DateTimeOffset.FromUnixTimeMilliseconds(milliseconds) end
---@overload fun(input: string) : System.DateTimeOffset
---@overload fun(input: string, formatProvider: System.IFormatProvider) : System.DateTimeOffset
---@overload fun(input: string, formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles) : System.DateTimeOffset
---@param input System.ReadOnlySpan
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@return System.DateTimeOffset
function System.DateTimeOffset.Parse(input, formatProvider, styles) end
---@overload fun(input: string, format: string, formatProvider: System.IFormatProvider) : System.DateTimeOffset
---@overload fun(input: string, format: string, formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles) : System.DateTimeOffset
---@overload fun(input: System.ReadOnlySpan, format: System.ReadOnlySpan, formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles) : System.DateTimeOffset
---@overload fun(input: string, formats: System.String[], formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles) : System.DateTimeOffset
---@param input System.ReadOnlySpan
---@param formats System.String[]
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@return System.DateTimeOffset
function System.DateTimeOffset.ParseExact(input, formats, formatProvider, styles) end
---@overload fun(input: string, out_result: System.DateTimeOffset) : boolean, System.DateTimeOffset
---@overload fun(input: System.ReadOnlySpan, out_result: System.DateTimeOffset) : boolean, System.DateTimeOffset
---@overload fun(input: string, formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles, out_result: System.DateTimeOffset) : boolean, System.DateTimeOffset
---@param input System.ReadOnlySpan
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@param out_result System.DateTimeOffset
---@return boolean,System.DateTimeOffset
function System.DateTimeOffset.TryParse(input, formatProvider, styles, out_result) end
---@overload fun(input: string, format: string, formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles, out_result: System.DateTimeOffset) : boolean, System.DateTimeOffset
---@overload fun(input: System.ReadOnlySpan, format: System.ReadOnlySpan, formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles, out_result: System.DateTimeOffset) : boolean, System.DateTimeOffset
---@overload fun(input: string, formats: System.String[], formatProvider: System.IFormatProvider, styles: System.Globalization.DateTimeStyles, out_result: System.DateTimeOffset) : boolean, System.DateTimeOffset
---@param input System.ReadOnlySpan
---@param formats System.String[]
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@param out_result System.DateTimeOffset
---@return boolean,System.DateTimeOffset
function System.DateTimeOffset.TryParseExact(input, formats, formatProvider, styles, out_result) end
---@param offset System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset:ToOffset(offset) end
---@param timeSpan System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset:Add(timeSpan) end
---@param days number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddDays(days) end
---@param hours number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddHours(hours) end
---@param milliseconds number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddMilliseconds(milliseconds) end
---@param minutes number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddMinutes(minutes) end
---@param months number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddMonths(months) end
---@param seconds number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddSeconds(seconds) end
---@param ticks number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddTicks(ticks) end
---@param years number
---@return System.DateTimeOffset
function System.DateTimeOffset:AddYears(years) end
---@param other System.DateTimeOffset
---@return number
function System.DateTimeOffset:CompareTo(other) end
---@param other System.DateTimeOffset
---@return boolean
function System.DateTimeOffset:EqualsExact(other) end
---@return number
function System.DateTimeOffset:GetHashCode() end
---@overload fun(self: System.DateTimeOffset, value: System.DateTimeOffset) : System.TimeSpan
---@param value System.TimeSpan
---@return System.DateTimeOffset
function System.DateTimeOffset:Subtract(value) end
---@return number
function System.DateTimeOffset:ToFileTime() end
---@return number
function System.DateTimeOffset:ToUnixTimeSeconds() end
---@return number
function System.DateTimeOffset:ToUnixTimeMilliseconds() end
---@return System.DateTimeOffset
function System.DateTimeOffset:ToLocalTime() end
---@overload fun() : string
---@overload fun(self: System.DateTimeOffset, format: string) : string
---@overload fun(self: System.DateTimeOffset, formatProvider: System.IFormatProvider) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function System.DateTimeOffset:ToString(format, formatProvider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param formatProvider System.IFormatProvider
---@return boolean,number
function System.DateTimeOffset:TryFormat(destination, out_charsWritten, format, formatProvider) end
---@return System.DateTimeOffset
function System.DateTimeOffset:ToUniversalTime() end

---@class System.DayOfWeek
---@field Sunday System.DayOfWeek
---@field Monday System.DayOfWeek
---@field Tuesday System.DayOfWeek
---@field Wednesday System.DayOfWeek
---@field Thursday System.DayOfWeek
---@field Friday System.DayOfWeek
---@field Saturday System.DayOfWeek
System.DayOfWeek = {}
---@alias CS.System.DayOfWeek System.DayOfWeek
CS.System.DayOfWeek = System.DayOfWeek


---@class System.DivideByZeroException : System.ArithmeticException
System.DivideByZeroException = {}
---@alias CS.System.DivideByZeroException System.DivideByZeroException
CS.System.DivideByZeroException = System.DivideByZeroException

---@overload fun() : System.DivideByZeroException
---@overload fun(message: string) : System.DivideByZeroException
---@param message string
---@param innerException System.Exception
---@return System.DivideByZeroException
function System.DivideByZeroException.New(message, innerException) end

---@class System.DllNotFoundException : System.TypeLoadException
System.DllNotFoundException = {}
---@alias CS.System.DllNotFoundException System.DllNotFoundException
CS.System.DllNotFoundException = System.DllNotFoundException

---@overload fun() : System.DllNotFoundException
---@overload fun(message: string) : System.DllNotFoundException
---@param message string
---@param inner System.Exception
---@return System.DllNotFoundException
function System.DllNotFoundException.New(message, inner) end

---@class number : System.ValueType
---@field MinValue number
---@field MaxValue number
---@field Epsilon number
---@field NegativeInfinity number
---@field PositiveInfinity number
---@field NaN number
number = {}
---@alias number number
number = number

---@param d number
---@return boolean
function number.IsFinite(d) end
---@param d number
---@return boolean
function number.IsInfinity(d) end
---@param d number
---@return boolean
function number.IsNaN(d) end
---@param d number
---@return boolean
function number.IsNegative(d) end
---@param d number
---@return boolean
function number.IsNegativeInfinity(d) end
---@param d number
---@return boolean
function number.IsNormal(d) end
---@param d number
---@return boolean
function number.IsPositiveInfinity(d) end
---@param d number
---@return boolean
function number.IsSubnormal(d) end
---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, format: string) : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end

---@class System.DuplicateWaitObjectException : System.ArgumentException
System.DuplicateWaitObjectException = {}
---@alias CS.System.DuplicateWaitObjectException System.DuplicateWaitObjectException
CS.System.DuplicateWaitObjectException = System.DuplicateWaitObjectException

---@overload fun() : System.DuplicateWaitObjectException
---@overload fun(parameterName: string) : System.DuplicateWaitObjectException
---@overload fun(parameterName: string, message: string) : System.DuplicateWaitObjectException
---@param message string
---@param innerException System.Exception
---@return System.DuplicateWaitObjectException
function System.DuplicateWaitObjectException.New(message, innerException) end

---@class System.EntryPointNotFoundException : System.TypeLoadException
System.EntryPointNotFoundException = {}
---@alias CS.System.EntryPointNotFoundException System.EntryPointNotFoundException
CS.System.EntryPointNotFoundException = System.EntryPointNotFoundException

---@overload fun() : System.EntryPointNotFoundException
---@overload fun(message: string) : System.EntryPointNotFoundException
---@param message string
---@param inner System.Exception
---@return System.EntryPointNotFoundException
function System.EntryPointNotFoundException.New(message, inner) end

---@class System.EventArgs : System.Object
---@field Empty System.EventArgs
System.EventArgs = {}
---@alias CS.System.EventArgs System.EventArgs
CS.System.EventArgs = System.EventArgs

---@return System.EventArgs
function System.EventArgs.New() end

---@class System.EventHandler : System.MulticastDelegate
System.EventHandler = {}
---@alias CS.System.EventHandler System.EventHandler
CS.System.EventHandler = System.EventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.EventHandler
function System.EventHandler.New(object, method) end
---@param sender System.Object
---@param e System.EventArgs
function System.EventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.EventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.EventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.EventHandler:EndInvoke(result) end

---@class System.EventHandler : System.MulticastDelegate
System.EventHandler = {}
---@alias CS.System.EventHandler System.EventHandler
CS.System.EventHandler = System.EventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.EventHandler
function System.EventHandler.New(object, method) end
---@param sender System.Object
---@param e TEventArgs
function System.EventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e TEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.EventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.EventHandler:EndInvoke(result) end

---@class System.ExecutionEngineException : System.SystemException
System.ExecutionEngineException = {}
---@alias CS.System.ExecutionEngineException System.ExecutionEngineException
CS.System.ExecutionEngineException = System.ExecutionEngineException

---@overload fun() : System.ExecutionEngineException
---@overload fun(message: string) : System.ExecutionEngineException
---@param message string
---@param innerException System.Exception
---@return System.ExecutionEngineException
function System.ExecutionEngineException.New(message, innerException) end

---@class System.FieldAccessException : System.MemberAccessException
System.FieldAccessException = {}
---@alias CS.System.FieldAccessException System.FieldAccessException
CS.System.FieldAccessException = System.FieldAccessException

---@overload fun() : System.FieldAccessException
---@overload fun(message: string) : System.FieldAccessException
---@param message string
---@param inner System.Exception
---@return System.FieldAccessException
function System.FieldAccessException.New(message, inner) end

---@class System.FlagsAttribute : System.Attribute
System.FlagsAttribute = {}
---@alias CS.System.FlagsAttribute System.FlagsAttribute
CS.System.FlagsAttribute = System.FlagsAttribute

---@return System.FlagsAttribute
function System.FlagsAttribute.New() end

---@class System.FormatException : System.SystemException
System.FormatException = {}
---@alias CS.System.FormatException System.FormatException
CS.System.FormatException = System.FormatException

---@overload fun() : System.FormatException
---@overload fun(message: string) : System.FormatException
---@param message string
---@param innerException System.Exception
---@return System.FormatException
function System.FormatException.New(message, innerException) end

---@class System.FormattableString : System.Object
---@field Format string
---@field ArgumentCount number
System.FormattableString = {}
---@alias CS.System.FormattableString System.FormattableString
CS.System.FormattableString = System.FormattableString

---@param formattable System.FormattableString
---@return string
function System.FormattableString.Invariant(formattable) end
---@return System.Object[]
function System.FormattableString:GetArguments() end
---@param index number
---@return System.Object
function System.FormattableString:GetArgument(index) end
---@overload fun(self: System.FormattableString, formatProvider: System.IFormatProvider) : string
---@return string
function System.FormattableString:ToString() end

---@class System.Gen2GcCallback : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
System.Gen2GcCallback = {}
---@alias CS.System.Gen2GcCallback System.Gen2GcCallback
CS.System.Gen2GcCallback = System.Gen2GcCallback

---@param callback System.Func
---@param targetObj System.Object
function System.Gen2GcCallback.Register(callback, targetObj) end

---@class System.DateTimeFormat : System.Object
System.DateTimeFormat = {}
---@alias CS.System.DateTimeFormat System.DateTimeFormat
CS.System.DateTimeFormat = System.DateTimeFormat


---@class System.DateTimeParse : System.Object
System.DateTimeParse = {}
---@alias CS.System.DateTimeParse System.DateTimeParse
CS.System.DateTimeParse = System.DateTimeParse


---@class System.DateTimeParse.MatchNumberDelegate : System.MulticastDelegate
System.DateTimeParse.MatchNumberDelegate = {}
---@alias CS.System.DateTimeParse.MatchNumberDelegate System.DateTimeParse.MatchNumberDelegate
CS.System.DateTimeParse.MatchNumberDelegate = System.DateTimeParse.MatchNumberDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.DateTimeParse.MatchNumberDelegate
function System.DateTimeParse.MatchNumberDelegate.New(object, method) end
---@param ref_str System.__DTString
---@param digitLen number
---@param out_result number
---@return boolean,System.__DTString,number
function System.DateTimeParse.MatchNumberDelegate:Invoke(ref_str, digitLen, out_result) end
---@param ref_str System.__DTString
---@param digitLen number
---@param out_result number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.__DTString,number
function System.DateTimeParse.MatchNumberDelegate:BeginInvoke(ref_str, digitLen, out_result, callback, object) end
---@param ref_str System.__DTString
---@param out_result number
---@param __result System.IAsyncResult
---@return boolean,System.__DTString,number
function System.DateTimeParse.MatchNumberDelegate:EndInvoke(ref_str, out_result, __result) end

---@class System.DateTimeParse.DTT
---@field End System.DateTimeParse.DTT
---@field NumEnd System.DateTimeParse.DTT
---@field NumAmpm System.DateTimeParse.DTT
---@field NumSpace System.DateTimeParse.DTT
---@field NumDatesep System.DateTimeParse.DTT
---@field NumTimesep System.DateTimeParse.DTT
---@field MonthEnd System.DateTimeParse.DTT
---@field MonthSpace System.DateTimeParse.DTT
---@field MonthDatesep System.DateTimeParse.DTT
---@field NumDatesuff System.DateTimeParse.DTT
---@field NumTimesuff System.DateTimeParse.DTT
---@field DayOfWeek System.DateTimeParse.DTT
---@field YearSpace System.DateTimeParse.DTT
---@field YearDateSep System.DateTimeParse.DTT
---@field YearEnd System.DateTimeParse.DTT
---@field TimeZone System.DateTimeParse.DTT
---@field Era System.DateTimeParse.DTT
---@field NumUTCTimeMark System.DateTimeParse.DTT
---@field Unk System.DateTimeParse.DTT
---@field NumLocalTimeMark System.DateTimeParse.DTT
---@field Max System.DateTimeParse.DTT
System.DateTimeParse.DTT = {}
---@alias CS.System.DateTimeParse.DTT System.DateTimeParse.DTT
CS.System.DateTimeParse.DTT = System.DateTimeParse.DTT


---@class System.DateTimeParse.TM
---@field NotSet System.DateTimeParse.TM
---@field AM System.DateTimeParse.TM
---@field PM System.DateTimeParse.TM
System.DateTimeParse.TM = {}
---@alias CS.System.DateTimeParse.TM System.DateTimeParse.TM
CS.System.DateTimeParse.TM = System.DateTimeParse.TM


---@class System.DateTimeParse.DS
---@field BEGIN System.DateTimeParse.DS
---@field N System.DateTimeParse.DS
---@field NN System.DateTimeParse.DS
---@field D_Nd System.DateTimeParse.DS
---@field D_NN System.DateTimeParse.DS
---@field D_NNd System.DateTimeParse.DS
---@field D_M System.DateTimeParse.DS
---@field D_MN System.DateTimeParse.DS
---@field D_NM System.DateTimeParse.DS
---@field D_MNd System.DateTimeParse.DS
---@field D_NDS System.DateTimeParse.DS
---@field D_Y System.DateTimeParse.DS
---@field D_YN System.DateTimeParse.DS
---@field D_YNd System.DateTimeParse.DS
---@field D_YM System.DateTimeParse.DS
---@field D_YMd System.DateTimeParse.DS
---@field D_S System.DateTimeParse.DS
---@field T_S System.DateTimeParse.DS
---@field T_Nt System.DateTimeParse.DS
---@field T_NNt System.DateTimeParse.DS
---@field ERROR System.DateTimeParse.DS
---@field DX_NN System.DateTimeParse.DS
---@field DX_NNN System.DateTimeParse.DS
---@field DX_MN System.DateTimeParse.DS
---@field DX_NM System.DateTimeParse.DS
---@field DX_MNN System.DateTimeParse.DS
---@field DX_DS System.DateTimeParse.DS
---@field DX_DSN System.DateTimeParse.DS
---@field DX_NDS System.DateTimeParse.DS
---@field DX_NNDS System.DateTimeParse.DS
---@field DX_YNN System.DateTimeParse.DS
---@field DX_YMN System.DateTimeParse.DS
---@field DX_YN System.DateTimeParse.DS
---@field DX_YM System.DateTimeParse.DS
---@field TX_N System.DateTimeParse.DS
---@field TX_NN System.DateTimeParse.DS
---@field TX_NNN System.DateTimeParse.DS
---@field TX_TS System.DateTimeParse.DS
---@field DX_NNY System.DateTimeParse.DS
System.DateTimeParse.DS = {}
---@alias CS.System.DateTimeParse.DS System.DateTimeParse.DS
CS.System.DateTimeParse.DS = System.DateTimeParse.DS


---@class System.__DTString : System.ValueType
System.__DTString = {}
---@alias CS.System.__DTString System.__DTString
CS.System.__DTString = System.__DTString


---@class System.DTSubStringType
---@field Unknown System.DTSubStringType
---@field Invalid System.DTSubStringType
---@field Number System.DTSubStringType
---@field End System.DTSubStringType
---@field Other System.DTSubStringType
System.DTSubStringType = {}
---@alias CS.System.DTSubStringType System.DTSubStringType
CS.System.DTSubStringType = System.DTSubStringType


---@class System.DTSubString : System.ValueType
System.DTSubString = {}
---@alias CS.System.DTSubString System.DTSubString
CS.System.DTSubString = System.DTSubString


---@class System.DateTimeToken : System.ValueType
System.DateTimeToken = {}
---@alias CS.System.DateTimeToken System.DateTimeToken
CS.System.DateTimeToken = System.DateTimeToken


---@class System.DateTimeRawInfo : System.ValueType
System.DateTimeRawInfo = {}
---@alias CS.System.DateTimeRawInfo System.DateTimeRawInfo
CS.System.DateTimeRawInfo = System.DateTimeRawInfo


---@class System.ParseFailureKind
---@field None System.ParseFailureKind
---@field ArgumentNull System.ParseFailureKind
---@field Format System.ParseFailureKind
---@field FormatWithParameter System.ParseFailureKind
---@field FormatWithOriginalDateTime System.ParseFailureKind
---@field FormatWithFormatSpecifier System.ParseFailureKind
---@field FormatWithOriginalDateTimeAndParameter System.ParseFailureKind
---@field FormatBadDateTimeCalendar System.ParseFailureKind
System.ParseFailureKind = {}
---@alias CS.System.ParseFailureKind System.ParseFailureKind
CS.System.ParseFailureKind = System.ParseFailureKind


---@class System.ParseFlags
---@field HaveYear System.ParseFlags
---@field HaveMonth System.ParseFlags
---@field HaveDay System.ParseFlags
---@field HaveHour System.ParseFlags
---@field HaveMinute System.ParseFlags
---@field HaveSecond System.ParseFlags
---@field HaveTime System.ParseFlags
---@field HaveDate System.ParseFlags
---@field TimeZoneUsed System.ParseFlags
---@field TimeZoneUtc System.ParseFlags
---@field ParsedMonthName System.ParseFlags
---@field CaptureOffset System.ParseFlags
---@field YearDefault System.ParseFlags
---@field Rfc1123Pattern System.ParseFlags
---@field UtcSortPattern System.ParseFlags
System.ParseFlags = {}
---@alias CS.System.ParseFlags System.ParseFlags
CS.System.ParseFlags = System.ParseFlags


---@class System.DateTimeResult : System.ValueType
System.DateTimeResult = {}
---@alias CS.System.DateTimeResult System.DateTimeResult
CS.System.DateTimeResult = System.DateTimeResult


---@class System.ParsingInfo : System.ValueType
System.ParsingInfo = {}
---@alias CS.System.ParsingInfo System.ParsingInfo
CS.System.ParsingInfo = System.ParsingInfo


---@class System.TokenType
---@field NumberToken System.TokenType
---@field YearNumberToken System.TokenType
---@field Am System.TokenType
---@field Pm System.TokenType
---@field MonthToken System.TokenType
---@field EndOfString System.TokenType
---@field DayOfWeekToken System.TokenType
---@field TimeZoneToken System.TokenType
---@field EraToken System.TokenType
---@field DateWordToken System.TokenType
---@field UnknownToken System.TokenType
---@field HebrewNumber System.TokenType
---@field JapaneseEraToken System.TokenType
---@field TEraToken System.TokenType
---@field IgnorableSymbol System.TokenType
---@field SEP_Unk System.TokenType
---@field SEP_End System.TokenType
---@field SEP_Space System.TokenType
---@field SEP_Am System.TokenType
---@field SEP_Pm System.TokenType
---@field SEP_Date System.TokenType
---@field SEP_Time System.TokenType
---@field SEP_YearSuff System.TokenType
---@field SEP_MonthSuff System.TokenType
---@field SEP_DaySuff System.TokenType
---@field SEP_HourSuff System.TokenType
---@field SEP_MinuteSuff System.TokenType
---@field SEP_SecondSuff System.TokenType
---@field SEP_LocalTimeMark System.TokenType
---@field SEP_DateOrOffset System.TokenType
---@field RegularTokenMask System.TokenType
---@field SeparatorTokenMask System.TokenType
System.TokenType = {}
---@alias CS.System.TokenType System.TokenType
CS.System.TokenType = System.TokenType


---@class System.Guid : System.ValueType
---@field Empty System.Guid
System.Guid = {}
---@alias CS.System.Guid System.Guid
CS.System.Guid = System.Guid

---@overload fun(b: System.Byte[]) : System.Guid
---@overload fun(b: System.ReadOnlySpan) : System.Guid
---@overload fun(a: number, b: number, c: number, d: number, e: number, f: number, g: number, h: number, i: number, j: number, k: number) : System.Guid
---@overload fun(a: number, b: number, c: number, d: System.Byte[]) : System.Guid
---@overload fun(a: number, b: number, c: number, d: number, e: number, f: number, g: number, h: number, i: number, j: number, k: number) : System.Guid
---@param g string
---@return System.Guid
function System.Guid.New(g) end
---@return System.Guid
function System.Guid.NewGuid() end
---@overload fun(input: string) : System.Guid
---@param input System.ReadOnlySpan
---@return System.Guid
function System.Guid.Parse(input) end
---@overload fun(input: string, out_result: System.Guid) : boolean, System.Guid
---@param input System.ReadOnlySpan
---@param out_result System.Guid
---@return boolean,System.Guid
function System.Guid.TryParse(input, out_result) end
---@overload fun(input: string, format: string) : System.Guid
---@param input System.ReadOnlySpan
---@param format System.ReadOnlySpan
---@return System.Guid
function System.Guid.ParseExact(input, format) end
---@overload fun(input: string, format: string, out_result: System.Guid) : boolean, System.Guid
---@param input System.ReadOnlySpan
---@param format System.ReadOnlySpan
---@param out_result System.Guid
---@return boolean,System.Guid
function System.Guid.TryParseExact(input, format, out_result) end
---@return System.Byte[]
function System.Guid:ToByteArray() end
---@param destination System.Span
---@return boolean
function System.Guid:TryWriteBytes(destination) end
---@overload fun() : string
---@overload fun(self: System.Guid, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function System.Guid:ToString(format, provider) end
---@return number
function System.Guid:GetHashCode() end
---@overload fun(self: System.Guid, o: System.Object) : boolean
---@param g System.Guid
---@return boolean
function System.Guid:Equals(g) end
---@overload fun(self: System.Guid, value: System.Object) : number
---@param value System.Guid
---@return number
function System.Guid:CompareTo(value) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@return boolean,number
function System.Guid:TryFormat(destination, out_charsWritten, format) end

---@class System.Guid.GuidStyles
---@field None System.Guid.GuidStyles
---@field AllowParenthesis System.Guid.GuidStyles
---@field AllowBraces System.Guid.GuidStyles
---@field AllowDashes System.Guid.GuidStyles
---@field AllowHexPrefix System.Guid.GuidStyles
---@field RequireParenthesis System.Guid.GuidStyles
---@field RequireBraces System.Guid.GuidStyles
---@field RequireDashes System.Guid.GuidStyles
---@field RequireHexPrefix System.Guid.GuidStyles
---@field HexFormat System.Guid.GuidStyles
---@field NumberFormat System.Guid.GuidStyles
---@field DigitFormat System.Guid.GuidStyles
---@field BraceFormat System.Guid.GuidStyles
---@field ParenthesisFormat System.Guid.GuidStyles
---@field Any System.Guid.GuidStyles
System.Guid.GuidStyles = {}
---@alias CS.System.Guid.GuidStyles System.Guid.GuidStyles
CS.System.Guid.GuidStyles = System.Guid.GuidStyles


---@class System.Guid.GuidParseThrowStyle
---@field None System.Guid.GuidParseThrowStyle
---@field All System.Guid.GuidParseThrowStyle
---@field AllButOverflow System.Guid.GuidParseThrowStyle
System.Guid.GuidParseThrowStyle = {}
---@alias CS.System.Guid.GuidParseThrowStyle System.Guid.GuidParseThrowStyle
CS.System.Guid.GuidParseThrowStyle = System.Guid.GuidParseThrowStyle


---@class System.Guid.ParseFailureKind
---@field None System.Guid.ParseFailureKind
---@field ArgumentNull System.Guid.ParseFailureKind
---@field Format System.Guid.ParseFailureKind
---@field FormatWithParameter System.Guid.ParseFailureKind
---@field NativeException System.Guid.ParseFailureKind
---@field FormatWithInnerException System.Guid.ParseFailureKind
System.Guid.ParseFailureKind = {}
---@alias CS.System.Guid.ParseFailureKind System.Guid.ParseFailureKind
CS.System.Guid.ParseFailureKind = System.Guid.ParseFailureKind


---@class System.Guid.GuidResult : System.ValueType
System.Guid.GuidResult = {}
---@alias CS.System.Guid.GuidResult System.Guid.GuidResult
CS.System.Guid.GuidResult = System.Guid.GuidResult


---@class System.HResults : System.Object
System.HResults = {}
---@alias CS.System.HResults System.HResults
CS.System.HResults = System.HResults


---@class System.HashCode : System.ValueType
System.HashCode = {}
---@alias CS.System.HashCode System.HashCode
CS.System.HashCode = System.HashCode

---@return number
function System.HashCode:ToHashCode() end

---@class System.IAsyncDisposable
System.IAsyncDisposable = {}
---@alias CS.System.IAsyncDisposable System.IAsyncDisposable
CS.System.IAsyncDisposable = System.IAsyncDisposable

---@return System.Threading.Tasks.ValueTask
function System.IAsyncDisposable:DisposeAsync() end
---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredAsyncDisposable
function System.IAsyncDisposable:ConfigureAwait(continueOnCapturedContext) end

---@class System.IAsyncResult
---@field IsCompleted boolean
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field AsyncState System.Object
---@field CompletedSynchronously boolean
System.IAsyncResult = {}
---@alias CS.System.IAsyncResult System.IAsyncResult
CS.System.IAsyncResult = System.IAsyncResult


---@class System.ICloneable
System.ICloneable = {}
---@alias CS.System.ICloneable System.ICloneable
CS.System.ICloneable = System.ICloneable

---@return System.Object
function System.ICloneable:Clone() end

---@class System.IComparable
System.IComparable = {}
---@alias CS.System.IComparable System.IComparable
CS.System.IComparable = System.IComparable

---@param obj System.Object
---@return number
function System.IComparable:CompareTo(obj) end

---@class System.IComparable
System.IComparable = {}
---@alias CS.System.IComparable System.IComparable
CS.System.IComparable = System.IComparable

---@param other T
---@return number
function System.IComparable:CompareTo(other) end

---@class System.IConvertible
System.IConvertible = {}
---@alias CS.System.IConvertible System.IConvertible
CS.System.IConvertible = System.IConvertible

---@return System.TypeCode
function System.IConvertible:GetTypeCode() end
---@param provider System.IFormatProvider
---@return boolean
function System.IConvertible:ToBoolean(provider) end
---@param provider System.IFormatProvider
---@return System.Char
function System.IConvertible:ToChar(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToSByte(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToByte(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToInt16(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToUInt16(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToInt32(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToUInt32(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToInt64(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToUInt64(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToSingle(provider) end
---@param provider System.IFormatProvider
---@return number
function System.IConvertible:ToDouble(provider) end
---@param provider System.IFormatProvider
---@return System.Decimal
function System.IConvertible:ToDecimal(provider) end
---@param provider System.IFormatProvider
---@return System.DateTime
function System.IConvertible:ToDateTime(provider) end
---@param provider System.IFormatProvider
---@return string
function System.IConvertible:ToString(provider) end
---@param conversionType System.Type
---@param provider System.IFormatProvider
---@return System.Object
function System.IConvertible:ToType(conversionType, provider) end

---@class System.ICustomFormatter
System.ICustomFormatter = {}
---@alias CS.System.ICustomFormatter System.ICustomFormatter
CS.System.ICustomFormatter = System.ICustomFormatter

---@param format string
---@param arg System.Object
---@param formatProvider System.IFormatProvider
---@return string
function System.ICustomFormatter:Format(format, arg, formatProvider) end

---@class System.IDisposable
System.IDisposable = {}
---@alias CS.System.IDisposable System.IDisposable
CS.System.IDisposable = System.IDisposable

function System.IDisposable:Dispose() end

---@class System.IEquatable
System.IEquatable = {}
---@alias CS.System.IEquatable System.IEquatable
CS.System.IEquatable = System.IEquatable

---@param other T
---@return boolean
function System.IEquatable:Equals(other) end

---@class System.IFormatProvider
System.IFormatProvider = {}
---@alias CS.System.IFormatProvider System.IFormatProvider
CS.System.IFormatProvider = System.IFormatProvider

---@param formatType System.Type
---@return System.Object
function System.IFormatProvider:GetFormat(formatType) end

---@class System.IFormattable
System.IFormattable = {}
---@alias CS.System.IFormattable System.IFormattable
CS.System.IFormattable = System.IFormattable

---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function System.IFormattable:ToString(format, formatProvider) end

---@class System.IObservable
System.IObservable = {}
---@alias CS.System.IObservable System.IObservable
CS.System.IObservable = System.IObservable

---@param observer System.IObserver[T]
---@return System.IDisposable
function System.IObservable:Subscribe(observer) end

---@class System.IObserver
System.IObserver = {}
---@alias CS.System.IObserver System.IObserver
CS.System.IObserver = System.IObserver

---@param value T
function System.IObserver:OnNext(value) end
---@param error System.Exception
function System.IObserver:OnError(error) end
function System.IObserver:OnCompleted() end

---@class System.IProgress
System.IProgress = {}
---@alias CS.System.IProgress System.IProgress
CS.System.IProgress = System.IProgress

---@param value T
function System.IProgress:Report(value) end

---@class System.ISpanFormattable
System.ISpanFormattable = {}
---@alias CS.System.ISpanFormattable System.ISpanFormattable
CS.System.ISpanFormattable = System.ISpanFormattable

---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function System.ISpanFormattable:TryFormat(destination, out_charsWritten, format, provider) end

---@class System.Index : System.ValueType
---@field Start System.Index
---@field End System.Index
---@field Value number
---@field IsFromEnd boolean
System.Index = {}
---@alias CS.System.Index System.Index
CS.System.Index = System.Index

---@param value number
---@param fromEnd boolean
---@return System.Index
function System.Index.New(value, fromEnd) end
---@param value number
---@return System.Index
function System.Index.FromStart(value) end
---@param value number
---@return System.Index
function System.Index.FromEnd(value) end
---@param length number
---@return number
function System.Index:GetOffset(length) end
---@overload fun(self: System.Index, value: System.Object) : boolean
---@param other System.Index
---@return boolean
function System.Index:Equals(other) end
---@return number
function System.Index:GetHashCode() end
---@return string
function System.Index:ToString() end

---@class System.IndexOutOfRangeException : System.SystemException
System.IndexOutOfRangeException = {}
---@alias CS.System.IndexOutOfRangeException System.IndexOutOfRangeException
CS.System.IndexOutOfRangeException = System.IndexOutOfRangeException

---@overload fun() : System.IndexOutOfRangeException
---@overload fun(message: string) : System.IndexOutOfRangeException
---@param message string
---@param innerException System.Exception
---@return System.IndexOutOfRangeException
function System.IndexOutOfRangeException.New(message, innerException) end

---@class System.InsufficientExecutionStackException : System.SystemException
System.InsufficientExecutionStackException = {}
---@alias CS.System.InsufficientExecutionStackException System.InsufficientExecutionStackException
CS.System.InsufficientExecutionStackException = System.InsufficientExecutionStackException

---@overload fun() : System.InsufficientExecutionStackException
---@overload fun(message: string) : System.InsufficientExecutionStackException
---@param message string
---@param innerException System.Exception
---@return System.InsufficientExecutionStackException
function System.InsufficientExecutionStackException.New(message, innerException) end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@overload fun(self: number, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, format: string) : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end
---@return UnityEngine.Yoga.YogaValue
function number:Percent() end
---@return UnityEngine.Yoga.YogaValue
function number:Pt() end
---@param h2 number
---@return number
function number:CombineHash(h2) end
---@param alignment number
---@return number
function number:AlignToMultipleOf(alignment) end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@overload fun(self: number, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end
---@param alignment number
---@return number
function number:AlignToMultipleOf(alignment) end

---@class System.InvalidCastException : System.SystemException
System.InvalidCastException = {}
---@alias CS.System.InvalidCastException System.InvalidCastException
CS.System.InvalidCastException = System.InvalidCastException

---@overload fun() : System.InvalidCastException
---@overload fun(message: string) : System.InvalidCastException
---@overload fun(message: string, innerException: System.Exception) : System.InvalidCastException
---@param message string
---@param errorCode number
---@return System.InvalidCastException
function System.InvalidCastException.New(message, errorCode) end

---@class System.InvalidOperationException : System.SystemException
System.InvalidOperationException = {}
---@alias CS.System.InvalidOperationException System.InvalidOperationException
CS.System.InvalidOperationException = System.InvalidOperationException

---@overload fun() : System.InvalidOperationException
---@overload fun(message: string) : System.InvalidOperationException
---@param message string
---@param innerException System.Exception
---@return System.InvalidOperationException
function System.InvalidOperationException.New(message, innerException) end

---@class System.InvalidProgramException : System.SystemException
System.InvalidProgramException = {}
---@alias CS.System.InvalidProgramException System.InvalidProgramException
CS.System.InvalidProgramException = System.InvalidProgramException

---@overload fun() : System.InvalidProgramException
---@overload fun(message: string) : System.InvalidProgramException
---@param message string
---@param inner System.Exception
---@return System.InvalidProgramException
function System.InvalidProgramException.New(message, inner) end

---@class System.InvalidTimeZoneException : System.Exception
System.InvalidTimeZoneException = {}
---@alias CS.System.InvalidTimeZoneException System.InvalidTimeZoneException
CS.System.InvalidTimeZoneException = System.InvalidTimeZoneException

---@overload fun() : System.InvalidTimeZoneException
---@overload fun(message: string) : System.InvalidTimeZoneException
---@param message string
---@param innerException System.Exception
---@return System.InvalidTimeZoneException
function System.InvalidTimeZoneException.New(message, innerException) end

---@class System.LazyState
---@field NoneViaConstructor System.LazyState
---@field NoneViaFactory System.LazyState
---@field NoneException System.LazyState
---@field PublicationOnlyViaConstructor System.LazyState
---@field PublicationOnlyViaFactory System.LazyState
---@field PublicationOnlyWait System.LazyState
---@field PublicationOnlyException System.LazyState
---@field ExecutionAndPublicationViaConstructor System.LazyState
---@field ExecutionAndPublicationViaFactory System.LazyState
---@field ExecutionAndPublicationException System.LazyState
System.LazyState = {}
---@alias CS.System.LazyState System.LazyState
CS.System.LazyState = System.LazyState


---@class System.LazyHelper : System.Object
System.LazyHelper = {}
---@alias CS.System.LazyHelper System.LazyHelper
CS.System.LazyHelper = System.LazyHelper


---@class System.Lazy : System.Object
---@field IsValueCreated boolean
---@field Value T
System.Lazy = {}
---@alias CS.System.Lazy System.Lazy
CS.System.Lazy = System.Lazy

---@overload fun() : System.Lazy
---@overload fun(value: T) : System.Lazy
---@overload fun(valueFactory: System.Func[T]) : System.Lazy
---@overload fun(isThreadSafe: boolean) : System.Lazy
---@overload fun(mode: System.Threading.LazyThreadSafetyMode) : System.Lazy
---@overload fun(valueFactory: System.Func[T], isThreadSafe: boolean) : System.Lazy
---@param valueFactory System.Func[T]
---@param mode System.Threading.LazyThreadSafetyMode
---@return System.Lazy
function System.Lazy.New(valueFactory, mode) end
---@return string
function System.Lazy:ToString() end

---@class System.LazyDebugView : System.Object
---@field IsValueCreated boolean
---@field Value T
---@field Mode System.Nullable
---@field IsValueFaulted boolean
System.LazyDebugView = {}
---@alias CS.System.LazyDebugView System.LazyDebugView
CS.System.LazyDebugView = System.LazyDebugView

---@param lazy System.Lazy[T]
---@return System.LazyDebugView
function System.LazyDebugView.New(lazy) end

---@class System.Marvin : System.Object
---@field DefaultSeed number
System.Marvin = {}
---@alias CS.System.Marvin System.Marvin
CS.System.Marvin = System.Marvin

---@overload fun(data: System.ReadOnlySpan, seed: number) : number
---@param ref_data number
---@param count number
---@param seed number
---@return number,number
function System.Marvin.ComputeHash32(ref_data, count, seed) end

---@class System.Math : System.Object
---@field E number
---@field PI number
System.Math = {}
---@alias CS.System.Math System.Math
CS.System.Math = System.Math

---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: System.Decimal) : System.Decimal
---@overload fun(value: number) : number
---@param value number
---@return number
function System.Math.Abs(value) end
---@param a number
---@param b number
---@return number
function System.Math.BigMul(a, b) end
---@overload fun(a: number, b: number, out_result: number) : number, number
---@param a number
---@param b number
---@param out_result number
---@return number,number
function System.Math.DivRem(a, b, out_result) end
---@overload fun(d: System.Decimal) : System.Decimal
---@param a number
---@return number
function System.Math.Ceiling(a) end
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: System.Decimal, min: System.Decimal, max: System.Decimal) : System.Decimal
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: number, min: number, max: number) : number
---@overload fun(value: number, min: number, max: number) : number
---@param value number
---@param min number
---@param max number
---@return number
function System.Math.Clamp(value, min, max) end
---@overload fun(d: System.Decimal) : System.Decimal
---@param d number
---@return number
function System.Math.Floor(d) end
---@param x number
---@param y number
---@return number
function System.Math.IEEERemainder(x, y) end
---@overload fun(a: number, newBase: number) : number
---@param d number
---@return number
function System.Math.Log(d) end
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: System.Decimal, val2: System.Decimal) : System.Decimal
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@param val1 number
---@param val2 number
---@return number
function System.Math.Max(val1, val2) end
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: System.Decimal, val2: System.Decimal) : System.Decimal
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@overload fun(val1: number, val2: number) : number
---@param val1 number
---@param val2 number
---@return number
function System.Math.Min(val1, val2) end
---@overload fun(d: System.Decimal) : System.Decimal
---@overload fun(d: System.Decimal, decimals: number) : System.Decimal
---@overload fun(d: System.Decimal, mode: System.MidpointRounding) : System.Decimal
---@overload fun(d: System.Decimal, decimals: number, mode: System.MidpointRounding) : System.Decimal
---@overload fun(a: number) : number
---@overload fun(value: number, digits: number) : number
---@overload fun(value: number, mode: System.MidpointRounding) : number
---@param value number
---@param digits number
---@param mode System.MidpointRounding
---@return number
function System.Math.Round(value, digits, mode) end
---@overload fun(value: System.Decimal) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@param value number
---@return number
function System.Math.Sign(value) end
---@overload fun(d: System.Decimal) : System.Decimal
---@param d number
---@return number
function System.Math.Truncate(d) end
---@param d number
---@return number
function System.Math.Acos(d) end
---@param d number
---@return number
function System.Math.Acosh(d) end
---@param d number
---@return number
function System.Math.Asin(d) end
---@param d number
---@return number
function System.Math.Asinh(d) end
---@param d number
---@return number
function System.Math.Atan(d) end
---@param y number
---@param x number
---@return number
function System.Math.Atan2(y, x) end
---@param d number
---@return number
function System.Math.Atanh(d) end
---@param d number
---@return number
function System.Math.Cbrt(d) end
---@param d number
---@return number
function System.Math.Cos(d) end
---@param value number
---@return number
function System.Math.Cosh(value) end
---@param d number
---@return number
function System.Math.Exp(d) end
---@param d number
---@return number
function System.Math.Log10(d) end
---@param x number
---@param y number
---@return number
function System.Math.Pow(x, y) end
---@param a number
---@return number
function System.Math.Sin(a) end
---@param value number
---@return number
function System.Math.Sinh(value) end
---@param d number
---@return number
function System.Math.Sqrt(d) end
---@param a number
---@return number
function System.Math.Tan(a) end
---@param value number
---@return number
function System.Math.Tanh(value) end

---@class System.MathF : System.Object
---@field E number
---@field PI number
System.MathF = {}
---@alias CS.System.MathF System.MathF
CS.System.MathF = System.MathF

---@param x number
---@return number
function System.MathF.Abs(x) end
---@param x number
---@param y number
---@return number
function System.MathF.IEEERemainder(x, y) end
---@overload fun(x: number, y: number) : number
---@param x number
---@return number
function System.MathF.Log(x) end
---@param x number
---@param y number
---@return number
function System.MathF.Max(x, y) end
---@param x number
---@param y number
---@return number
function System.MathF.Min(x, y) end
---@overload fun(x: number) : number
---@overload fun(x: number, digits: number) : number
---@overload fun(x: number, mode: System.MidpointRounding) : number
---@param x number
---@param digits number
---@param mode System.MidpointRounding
---@return number
function System.MathF.Round(x, digits, mode) end
---@param x number
---@return number
function System.MathF.Sign(x) end
---@param x number
---@return number
function System.MathF.Truncate(x) end
---@param x number
---@return number
function System.MathF.Acos(x) end
---@param x number
---@return number
function System.MathF.Acosh(x) end
---@param x number
---@return number
function System.MathF.Asin(x) end
---@param x number
---@return number
function System.MathF.Asinh(x) end
---@param x number
---@return number
function System.MathF.Atan(x) end
---@param y number
---@param x number
---@return number
function System.MathF.Atan2(y, x) end
---@param x number
---@return number
function System.MathF.Atanh(x) end
---@param x number
---@return number
function System.MathF.Cbrt(x) end
---@param x number
---@return number
function System.MathF.Ceiling(x) end
---@param x number
---@return number
function System.MathF.Cos(x) end
---@param x number
---@return number
function System.MathF.Cosh(x) end
---@param x number
---@return number
function System.MathF.Exp(x) end
---@param x number
---@return number
function System.MathF.Floor(x) end
---@param x number
---@return number
function System.MathF.Log10(x) end
---@param x number
---@param y number
---@return number
function System.MathF.Pow(x, y) end
---@param x number
---@return number
function System.MathF.Sin(x) end
---@param x number
---@return number
function System.MathF.Sinh(x) end
---@param x number
---@return number
function System.MathF.Sqrt(x) end
---@param x number
---@return number
function System.MathF.Tan(x) end
---@param x number
---@return number
function System.MathF.Tanh(x) end

---@class System.MemberAccessException : System.SystemException
System.MemberAccessException = {}
---@alias CS.System.MemberAccessException System.MemberAccessException
CS.System.MemberAccessException = System.MemberAccessException

---@overload fun() : System.MemberAccessException
---@overload fun(message: string) : System.MemberAccessException
---@param message string
---@param inner System.Exception
---@return System.MemberAccessException
function System.MemberAccessException.New(message, inner) end

---@class System.Memory : System.ValueType
---@field Empty System.Memory
---@field Length number
---@field IsEmpty boolean
---@field Span System.Span[T]
System.Memory = {}
---@alias CS.System.Memory System.Memory
CS.System.Memory = System.Memory

---@overload fun(array: T[]) : System.Memory
---@param array T[]
---@param start number
---@param length number
---@return System.Memory
function System.Memory.New(array, start, length) end
---@return string
function System.Memory:ToString() end
---@overload fun(self: System.Memory, start: number) : System.Memory
---@param start number
---@param length number
---@return System.Memory
function System.Memory:Slice(start, length) end
---@param destination System.Memory
function System.Memory:CopyTo(destination) end
---@param destination System.Memory
---@return boolean
function System.Memory:TryCopyTo(destination) end
---@return System.Buffers.MemoryHandle
function System.Memory:Pin() end
---@return T[]
function System.Memory:ToArray() end
---@overload fun(self: System.Memory, obj: System.Object) : boolean
---@param other System.Memory
---@return boolean
function System.Memory:Equals(other) end
---@return number
function System.Memory:GetHashCode() end

---@class System.MemoryDebugView : System.Object
---@field Items T[]
System.MemoryDebugView = {}
---@alias CS.System.MemoryDebugView System.MemoryDebugView
CS.System.MemoryDebugView = System.MemoryDebugView

---@overload fun(memory: System.Memory[T]) : System.MemoryDebugView
---@param memory System.ReadOnlyMemory[T]
---@return System.MemoryDebugView
function System.MemoryDebugView.New(memory) end

---@class System.MemoryExtensions : System.Object
System.MemoryExtensions = {}
---@alias CS.System.MemoryExtensions System.MemoryExtensions
CS.System.MemoryExtensions = System.MemoryExtensions

---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param comparisonType System.StringComparison
---@return boolean
function System.MemoryExtensions.Contains(span, value, comparisonType) end
---@param span System.ReadOnlySpan
---@param other System.ReadOnlySpan
---@param comparisonType System.StringComparison
---@return boolean
function System.MemoryExtensions.Equals(span, other, comparisonType) end
---@param span System.ReadOnlySpan
---@param other System.ReadOnlySpan
---@param comparisonType System.StringComparison
---@return number
function System.MemoryExtensions.CompareTo(span, other, comparisonType) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param comparisonType System.StringComparison
---@return number
function System.MemoryExtensions.IndexOf(span, value, comparisonType) end
---@param source System.ReadOnlySpan
---@param destination System.Span
---@param culture System.Globalization.CultureInfo
---@return number
function System.MemoryExtensions.ToLower(source, destination, culture) end
---@param source System.ReadOnlySpan
---@param destination System.Span
---@return number
function System.MemoryExtensions.ToLowerInvariant(source, destination) end
---@param source System.ReadOnlySpan
---@param destination System.Span
---@param culture System.Globalization.CultureInfo
---@return number
function System.MemoryExtensions.ToUpper(source, destination, culture) end
---@param source System.ReadOnlySpan
---@param destination System.Span
---@return number
function System.MemoryExtensions.ToUpperInvariant(source, destination) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param comparisonType System.StringComparison
---@return boolean
function System.MemoryExtensions.EndsWith(span, value, comparisonType) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param comparisonType System.StringComparison
---@return boolean
function System.MemoryExtensions.StartsWith(span, value, comparisonType) end
---@overload fun(text: string) : System.ReadOnlySpan
---@overload fun(text: string, start: number) : System.ReadOnlySpan
---@param text string
---@param start number
---@param length number
---@return System.ReadOnlySpan
function System.MemoryExtensions.AsSpan(text, start, length) end
---@overload fun(text: string) : System.ReadOnlyMemory
---@overload fun(text: string, start: number) : System.ReadOnlyMemory
---@overload fun(text: string, startIndex: System.Index) : System.ReadOnlyMemory
---@overload fun(text: string, start: number, length: number) : System.ReadOnlyMemory
---@param text string
---@param range System.Range
---@return System.ReadOnlyMemory
function System.MemoryExtensions.AsMemory(text, range) end
---@overload fun(span: System.ReadOnlySpan) : System.ReadOnlySpan
---@overload fun(span: System.ReadOnlySpan, trimChar: System.Char) : System.ReadOnlySpan
---@param span System.ReadOnlySpan
---@param trimChars System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.MemoryExtensions.Trim(span, trimChars) end
---@overload fun(span: System.ReadOnlySpan) : System.ReadOnlySpan
---@overload fun(span: System.ReadOnlySpan, trimChar: System.Char) : System.ReadOnlySpan
---@param span System.ReadOnlySpan
---@param trimChars System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.MemoryExtensions.TrimStart(span, trimChars) end
---@overload fun(span: System.ReadOnlySpan) : System.ReadOnlySpan
---@overload fun(span: System.ReadOnlySpan, trimChar: System.Char) : System.ReadOnlySpan
---@param span System.ReadOnlySpan
---@param trimChars System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.MemoryExtensions.TrimEnd(span, trimChars) end
---@param span System.ReadOnlySpan
---@return boolean
function System.MemoryExtensions.IsWhiteSpace(span) end

---@class System.MethodAccessException : System.MemberAccessException
System.MethodAccessException = {}
---@alias CS.System.MethodAccessException System.MethodAccessException
CS.System.MethodAccessException = System.MethodAccessException

---@overload fun() : System.MethodAccessException
---@overload fun(message: string) : System.MethodAccessException
---@param message string
---@param inner System.Exception
---@return System.MethodAccessException
function System.MethodAccessException.New(message, inner) end

---@class System.MidpointRounding
---@field ToEven System.MidpointRounding
---@field AwayFromZero System.MidpointRounding
System.MidpointRounding = {}
---@alias CS.System.MidpointRounding System.MidpointRounding
CS.System.MidpointRounding = System.MidpointRounding


---@class System.MissingMethodException : System.MissingMemberException
---@field Message string
System.MissingMethodException = {}
---@alias CS.System.MissingMethodException System.MissingMethodException
CS.System.MissingMethodException = System.MissingMethodException

---@overload fun() : System.MissingMethodException
---@overload fun(message: string) : System.MissingMethodException
---@overload fun(message: string, inner: System.Exception) : System.MissingMethodException
---@param className string
---@param methodName string
---@return System.MissingMethodException
function System.MissingMethodException.New(className, methodName) end

---@class System.MulticastNotSupportedException : System.SystemException
System.MulticastNotSupportedException = {}
---@alias CS.System.MulticastNotSupportedException System.MulticastNotSupportedException
CS.System.MulticastNotSupportedException = System.MulticastNotSupportedException

---@overload fun() : System.MulticastNotSupportedException
---@overload fun(message: string) : System.MulticastNotSupportedException
---@param message string
---@param inner System.Exception
---@return System.MulticastNotSupportedException
function System.MulticastNotSupportedException.New(message, inner) end

---@class System.NonSerializedAttribute : System.Attribute
System.NonSerializedAttribute = {}
---@alias CS.System.NonSerializedAttribute System.NonSerializedAttribute
CS.System.NonSerializedAttribute = System.NonSerializedAttribute

---@return System.NonSerializedAttribute
function System.NonSerializedAttribute.New() end

---@class System.NotFiniteNumberException : System.ArithmeticException
---@field OffendingNumber number
System.NotFiniteNumberException = {}
---@alias CS.System.NotFiniteNumberException System.NotFiniteNumberException
CS.System.NotFiniteNumberException = System.NotFiniteNumberException

---@overload fun() : System.NotFiniteNumberException
---@overload fun(offendingNumber: number) : System.NotFiniteNumberException
---@overload fun(message: string) : System.NotFiniteNumberException
---@overload fun(message: string, offendingNumber: number) : System.NotFiniteNumberException
---@overload fun(message: string, innerException: System.Exception) : System.NotFiniteNumberException
---@param message string
---@param offendingNumber number
---@param innerException System.Exception
---@return System.NotFiniteNumberException
function System.NotFiniteNumberException.New(message, offendingNumber, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.NotFiniteNumberException:GetObjectData(info, context) end

---@class System.NotImplementedException : System.SystemException
System.NotImplementedException = {}
---@alias CS.System.NotImplementedException System.NotImplementedException
CS.System.NotImplementedException = System.NotImplementedException

---@overload fun() : System.NotImplementedException
---@overload fun(message: string) : System.NotImplementedException
---@param message string
---@param inner System.Exception
---@return System.NotImplementedException
function System.NotImplementedException.New(message, inner) end

---@class System.NotSupportedException : System.SystemException
System.NotSupportedException = {}
---@alias CS.System.NotSupportedException System.NotSupportedException
CS.System.NotSupportedException = System.NotSupportedException

---@overload fun() : System.NotSupportedException
---@overload fun(message: string) : System.NotSupportedException
---@param message string
---@param innerException System.Exception
---@return System.NotSupportedException
function System.NotSupportedException.New(message, innerException) end

---@class System.NullReferenceException : System.SystemException
System.NullReferenceException = {}
---@alias CS.System.NullReferenceException System.NullReferenceException
CS.System.NullReferenceException = System.NullReferenceException

---@overload fun() : System.NullReferenceException
---@overload fun(message: string) : System.NullReferenceException
---@param message string
---@param innerException System.Exception
---@return System.NullReferenceException
function System.NullReferenceException.New(message, innerException) end

---@class System.Nullable : System.ValueType
---@field HasValue boolean
---@field Value T
System.Nullable = {}
---@alias CS.System.Nullable System.Nullable
CS.System.Nullable = System.Nullable

---@param value T
---@return System.Nullable
function System.Nullable.New(value) end
---@overload fun() : T
---@param defaultValue T
---@return T
function System.Nullable:GetValueOrDefault(defaultValue) end
---@param other System.Object
---@return boolean
function System.Nullable:Equals(other) end
---@return number
function System.Nullable:GetHashCode() end
---@return string
function System.Nullable:ToString() end

---@class System.Nullable : System.Object
System.Nullable = {}
---@alias CS.System.Nullable System.Nullable
CS.System.Nullable = System.Nullable

---@param nullableType System.Type
---@return System.Type
function System.Nullable.GetUnderlyingType(nullableType) end

---@class System.Number : System.Object
System.Number = {}
---@alias CS.System.Number System.Number
CS.System.Number = System.Number

---@param value System.Decimal
---@param format System.ReadOnlySpan
---@param info System.Globalization.NumberFormatInfo
---@return string
function System.Number.FormatDecimal(value, format, info) end
---@param value System.Decimal
---@param format System.ReadOnlySpan
---@param info System.Globalization.NumberFormatInfo
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Number.TryFormatDecimal(value, format, info, destination, out_charsWritten) end
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function System.Number.FormatDouble(value, format, info) end
---@param value number
---@param format System.ReadOnlySpan
---@param info System.Globalization.NumberFormatInfo
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Number.TryFormatDouble(value, format, info, destination, out_charsWritten) end
---@param value number
---@param format string
---@param info System.Globalization.NumberFormatInfo
---@return string
function System.Number.FormatSingle(value, format, info) end
---@param value number
---@param format System.ReadOnlySpan
---@param info System.Globalization.NumberFormatInfo
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Number.TryFormatSingle(value, format, info, destination, out_charsWritten) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return string
function System.Number.FormatInt32(value, format, provider) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Number.TryFormatInt32(value, format, provider, destination, out_charsWritten) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return string
function System.Number.FormatUInt32(value, format, provider) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Number.TryFormatUInt32(value, format, provider, destination, out_charsWritten) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return string
function System.Number.FormatInt64(value, format, provider) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Number.TryFormatInt64(value, format, provider, destination, out_charsWritten) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return string
function System.Number.FormatUInt64(value, format, provider) end
---@param value number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Number.TryFormatUInt64(value, format, provider, destination, out_charsWritten) end

---@class System.Number.NumberBuffer : System.ValueType
---@field precision number
---@field scale number
---@field sign boolean
---@field digits System.Char*
System.Number.NumberBuffer = {}
---@alias CS.System.Number.NumberBuffer System.Number.NumberBuffer
CS.System.Number.NumberBuffer = System.Number.NumberBuffer


---@class System.Number.NumberBuffer.DigitsAndNullTerminator : System.ValueType
System.Number.NumberBuffer.DigitsAndNullTerminator = {}
---@alias CS.System.Number.NumberBuffer.DigitsAndNullTerminator System.Number.NumberBuffer.DigitsAndNullTerminator
CS.System.Number.NumberBuffer.DigitsAndNullTerminator = System.Number.NumberBuffer.DigitsAndNullTerminator


---@class System.ObjectDisposedException : System.InvalidOperationException
---@field Message string
---@field ObjectName string
System.ObjectDisposedException = {}
---@alias CS.System.ObjectDisposedException System.ObjectDisposedException
CS.System.ObjectDisposedException = System.ObjectDisposedException

---@overload fun(objectName: string) : System.ObjectDisposedException
---@overload fun(objectName: string, message: string) : System.ObjectDisposedException
---@param message string
---@param innerException System.Exception
---@return System.ObjectDisposedException
function System.ObjectDisposedException.New(message, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.ObjectDisposedException:GetObjectData(info, context) end

---@class System.ObsoleteAttribute : System.Attribute
---@field Message string
---@field IsError boolean
System.ObsoleteAttribute = {}
---@alias CS.System.ObsoleteAttribute System.ObsoleteAttribute
CS.System.ObsoleteAttribute = System.ObsoleteAttribute

---@overload fun() : System.ObsoleteAttribute
---@overload fun(message: string) : System.ObsoleteAttribute
---@param message string
---@param error boolean
---@return System.ObsoleteAttribute
function System.ObsoleteAttribute.New(message, error) end

---@class System.OperationCanceledException : System.SystemException
---@field CancellationToken System.Threading.CancellationToken
System.OperationCanceledException = {}
---@alias CS.System.OperationCanceledException System.OperationCanceledException
CS.System.OperationCanceledException = System.OperationCanceledException

---@overload fun() : System.OperationCanceledException
---@overload fun(message: string) : System.OperationCanceledException
---@overload fun(message: string, innerException: System.Exception) : System.OperationCanceledException
---@overload fun(token: System.Threading.CancellationToken) : System.OperationCanceledException
---@overload fun(message: string, token: System.Threading.CancellationToken) : System.OperationCanceledException
---@param message string
---@param innerException System.Exception
---@param token System.Threading.CancellationToken
---@return System.OperationCanceledException
function System.OperationCanceledException.New(message, innerException, token) end

---@class System.OverflowException : System.ArithmeticException
System.OverflowException = {}
---@alias CS.System.OverflowException System.OverflowException
CS.System.OverflowException = System.OverflowException

---@overload fun() : System.OverflowException
---@overload fun(message: string) : System.OverflowException
---@param message string
---@param innerException System.Exception
---@return System.OverflowException
function System.OverflowException.New(message, innerException) end

---@class System.ParamArrayAttribute : System.Attribute
System.ParamArrayAttribute = {}
---@alias CS.System.ParamArrayAttribute System.ParamArrayAttribute
CS.System.ParamArrayAttribute = System.ParamArrayAttribute

---@return System.ParamArrayAttribute
function System.ParamArrayAttribute.New() end

---@class System.ParamsArray : System.ValueType
---@field Length number
---@field Item System.Object
System.ParamsArray = {}
---@alias CS.System.ParamsArray System.ParamsArray
CS.System.ParamsArray = System.ParamsArray

---@overload fun(arg0: System.Object) : System.ParamsArray
---@overload fun(arg0: System.Object, arg1: System.Object) : System.ParamsArray
---@overload fun(arg0: System.Object, arg1: System.Object, arg2: System.Object) : System.ParamsArray
---@param args System.Object[]
---@return System.ParamsArray
function System.ParamsArray.New(args) end

---@class System.ParseNumbers : System.Object
System.ParseNumbers = {}
---@alias CS.System.ParseNumbers System.ParseNumbers
CS.System.ParseNumbers = System.ParseNumbers

---@overload fun(s: System.ReadOnlySpan, radix: number, flags: number) : number
---@param s System.ReadOnlySpan
---@param radix number
---@param flags number
---@param ref_currPos number
---@return number,number
function System.ParseNumbers.StringToLong(s, radix, flags, ref_currPos) end
---@overload fun(s: System.ReadOnlySpan, radix: number, flags: number) : number
---@param s System.ReadOnlySpan
---@param radix number
---@param flags number
---@param ref_currPos number
---@return number,number
function System.ParseNumbers.StringToInt(s, radix, flags, ref_currPos) end
---@param n number
---@param radix number
---@param width number
---@param paddingChar System.Char
---@param flags number
---@return string
function System.ParseNumbers.IntToString(n, radix, width, paddingChar, flags) end
---@param n number
---@param radix number
---@param width number
---@param paddingChar System.Char
---@param flags number
---@return string
function System.ParseNumbers.LongToString(n, radix, width, paddingChar, flags) end

---@class System.PlatformNotSupportedException : System.NotSupportedException
System.PlatformNotSupportedException = {}
---@alias CS.System.PlatformNotSupportedException System.PlatformNotSupportedException
CS.System.PlatformNotSupportedException = System.PlatformNotSupportedException

---@overload fun() : System.PlatformNotSupportedException
---@overload fun(message: string) : System.PlatformNotSupportedException
---@param message string
---@param inner System.Exception
---@return System.PlatformNotSupportedException
function System.PlatformNotSupportedException.New(message, inner) end

---@class System.Progress : System.Object
System.Progress = {}
---@alias CS.System.Progress System.Progress
CS.System.Progress = System.Progress

---@overload fun() : System.Progress
---@param handler System.Action[T]
---@return System.Progress
function System.Progress.New(handler) end

---@class System.ProgressStatics : System.Object
System.ProgressStatics = {}
---@alias CS.System.ProgressStatics System.ProgressStatics
CS.System.ProgressStatics = System.ProgressStatics


---@class System.Random : System.Object
System.Random = {}
---@alias CS.System.Random System.Random
CS.System.Random = System.Random

---@overload fun() : System.Random
---@param Seed number
---@return System.Random
function System.Random.New(Seed) end
---@overload fun() : number
---@overload fun(self: System.Random, minValue: number, maxValue: number) : number
---@param maxValue number
---@return number
function System.Random:Next(maxValue) end
---@return number
function System.Random:NextDouble() end
---@overload fun(self: System.Random, buffer: System.Byte[])
---@param buffer System.Span
function System.Random:NextBytes(buffer) end

---@class System.Range : System.ValueType
---@field All System.Range
---@field Start System.Index
---@field End System.Index
System.Range = {}
---@alias CS.System.Range System.Range
CS.System.Range = System.Range

---@param start System.Index
---@param _end System.Index
---@return System.Range
function System.Range.New(start, _end) end
---@param start System.Index
---@return System.Range
function System.Range.StartAt(start) end
---@param _end System.Index
---@return System.Range
function System.Range.EndAt(_end) end
---@overload fun(self: System.Range, value: System.Object) : boolean
---@param other System.Range
---@return boolean
function System.Range:Equals(other) end
---@return number
function System.Range:GetHashCode() end
---@return string
function System.Range:ToString() end
---@param length number
---@return System.ValueTuple
function System.Range:GetOffsetAndLength(length) end

---@class System.RankException : System.SystemException
System.RankException = {}
---@alias CS.System.RankException System.RankException
CS.System.RankException = System.RankException

---@overload fun() : System.RankException
---@overload fun(message: string) : System.RankException
---@param message string
---@param innerException System.Exception
---@return System.RankException
function System.RankException.New(message, innerException) end

---@class System.ReadOnlyMemory : System.ValueType
---@field Empty System.ReadOnlyMemory
---@field Length number
---@field IsEmpty boolean
---@field Span System.ReadOnlySpan[T]
System.ReadOnlyMemory = {}
---@alias CS.System.ReadOnlyMemory System.ReadOnlyMemory
CS.System.ReadOnlyMemory = System.ReadOnlyMemory

---@overload fun(array: T[]) : System.ReadOnlyMemory
---@param array T[]
---@param start number
---@param length number
---@return System.ReadOnlyMemory
function System.ReadOnlyMemory.New(array, start, length) end
---@return string
function System.ReadOnlyMemory:ToString() end
---@overload fun(self: System.ReadOnlyMemory, start: number) : System.ReadOnlyMemory
---@param start number
---@param length number
---@return System.ReadOnlyMemory
function System.ReadOnlyMemory:Slice(start, length) end
---@param destination System.Memory[T]
function System.ReadOnlyMemory:CopyTo(destination) end
---@param destination System.Memory[T]
---@return boolean
function System.ReadOnlyMemory:TryCopyTo(destination) end
---@return System.Buffers.MemoryHandle
function System.ReadOnlyMemory:Pin() end
---@return T[]
function System.ReadOnlyMemory:ToArray() end
---@overload fun(self: System.ReadOnlyMemory, obj: System.Object) : boolean
---@param other System.ReadOnlyMemory
---@return boolean
function System.ReadOnlyMemory:Equals(other) end
---@return number
function System.ReadOnlyMemory:GetHashCode() end

---@class System.ReadOnlySpan : System.ValueType
---@field Empty System.ReadOnlySpan
---@field Item T&
---@field Length number
---@field IsEmpty boolean
System.ReadOnlySpan = {}
---@alias CS.System.ReadOnlySpan System.ReadOnlySpan
CS.System.ReadOnlySpan = System.ReadOnlySpan

---@overload fun(array: T[]) : System.ReadOnlySpan
---@overload fun(array: T[], start: number, length: number) : System.ReadOnlySpan
---@param pointer System.Void*
---@param length number
---@return System.ReadOnlySpan
function System.ReadOnlySpan.New(pointer, length) end
---@return T&
function System.ReadOnlySpan:GetPinnableReference() end
---@param destination System.Span[T]
function System.ReadOnlySpan:CopyTo(destination) end
---@param destination System.Span[T]
---@return boolean
function System.ReadOnlySpan:TryCopyTo(destination) end
---@return string
function System.ReadOnlySpan:ToString() end
---@overload fun(self: System.ReadOnlySpan, start: number) : System.ReadOnlySpan
---@param start number
---@param length number
---@return System.ReadOnlySpan
function System.ReadOnlySpan:Slice(start, length) end
---@return T[]
function System.ReadOnlySpan:ToArray() end
---@return System.ReadOnlySpan.Enumerator[T]
function System.ReadOnlySpan:GetEnumerator() end

---@class System.ReadOnlySpan.Enumerator : System.ValueType
---@field Current T&
System.ReadOnlySpan.Enumerator = {}
---@alias CS.System.ReadOnlySpan.Enumerator System.ReadOnlySpan.Enumerator
CS.System.ReadOnlySpan.Enumerator = System.ReadOnlySpan.Enumerator

---@return boolean
function System.ReadOnlySpan.Enumerator:MoveNext() end

---@class System.ResolveEventArgs : System.EventArgs
---@field Name string
---@field RequestingAssembly System.Reflection.Assembly
System.ResolveEventArgs = {}
---@alias CS.System.ResolveEventArgs System.ResolveEventArgs
CS.System.ResolveEventArgs = System.ResolveEventArgs

---@overload fun(name: string) : System.ResolveEventArgs
---@param name string
---@param requestingAssembly System.Reflection.Assembly
---@return System.ResolveEventArgs
function System.ResolveEventArgs.New(name, requestingAssembly) end

---@class System.ResolveEventHandler : System.MulticastDelegate
System.ResolveEventHandler = {}
---@alias CS.System.ResolveEventHandler System.ResolveEventHandler
CS.System.ResolveEventHandler = System.ResolveEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.ResolveEventHandler
function System.ResolveEventHandler.New(object, method) end
---@param sender System.Object
---@param args System.ResolveEventArgs
---@return System.Reflection.Assembly
function System.ResolveEventHandler:Invoke(sender, args) end
---@param sender System.Object
---@param args System.ResolveEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.ResolveEventHandler:BeginInvoke(sender, args, callback, object) end
---@param result System.IAsyncResult
---@return System.Reflection.Assembly
function System.ResolveEventHandler:EndInvoke(result) end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, obj: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@overload fun(self: number, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end

---@class System.SerializableAttribute : System.Attribute
System.SerializableAttribute = {}
---@alias CS.System.SerializableAttribute System.SerializableAttribute
CS.System.SerializableAttribute = System.SerializableAttribute

---@return System.SerializableAttribute
function System.SerializableAttribute.New() end

---@class number : System.ValueType
---@field MinValue number
---@field Epsilon number
---@field MaxValue number
---@field PositiveInfinity number
---@field NegativeInfinity number
---@field NaN number
number = {}
---@alias number number
number = number

---@param f number
---@return boolean
function number.IsFinite(f) end
---@param f number
---@return boolean
function number.IsInfinity(f) end
---@param f number
---@return boolean
function number.IsNaN(f) end
---@param f number
---@return boolean
function number.IsNegative(f) end
---@param f number
---@return boolean
function number.IsNegativeInfinity(f) end
---@param f number
---@return boolean
function number.IsNormal(f) end
---@param f number
---@return boolean
function number.IsPositiveInfinity(f) end
---@param f number
---@return boolean
function number.IsSubnormal(f) end
---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@overload fun(self: number, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end
---@param expected number
function number:MustBeApproximatelyEqual(expected) end
---@param expected number
---@param message string
function number:MustBeApproximatelyEqual(expected, message) end
---@param expected number
---@param tolerance number
function number:MustBeApproximatelyEqual(expected, tolerance) end
---@param expected number
---@param tolerance number
---@param message string
function number:MustBeApproximatelyEqual(expected, tolerance, message) end
---@param expected number
function number:MustNotBeApproximatelyEqual(expected) end
---@param expected number
---@param message string
function number:MustNotBeApproximatelyEqual(expected, message) end
---@param expected number
---@param tolerance number
function number:MustNotBeApproximatelyEqual(expected, tolerance) end
---@param expected number
---@param tolerance number
---@param message string
function number:MustNotBeApproximatelyEqual(expected, tolerance, message) end
---@return UnityEngine.Yoga.YogaValue
function number:Percent() end
---@return UnityEngine.Yoga.YogaValue
function number:Pt() end

---@class System.Span : System.ValueType
---@field Empty System.Span
---@field Item T&
---@field Length number
---@field IsEmpty boolean
System.Span = {}
---@alias CS.System.Span System.Span
CS.System.Span = System.Span

---@overload fun(array: T[]) : System.Span
---@overload fun(array: T[], start: number, length: number) : System.Span
---@param pointer System.Void*
---@param length number
---@return System.Span
function System.Span.New(pointer, length) end
---@return T&
function System.Span:GetPinnableReference() end
function System.Span:Clear() end
---@param value T
function System.Span:Fill(value) end
---@param destination System.Span
function System.Span:CopyTo(destination) end
---@param destination System.Span
---@return boolean
function System.Span:TryCopyTo(destination) end
---@return string
function System.Span:ToString() end
---@overload fun(self: System.Span, start: number) : System.Span
---@param start number
---@param length number
---@return System.Span
function System.Span:Slice(start, length) end
---@return T[]
function System.Span:ToArray() end
---@return System.Span.Enumerator[T]
function System.Span:GetEnumerator() end

---@class System.Span.Enumerator : System.ValueType
---@field Current T&
System.Span.Enumerator = {}
---@alias CS.System.Span.Enumerator System.Span.Enumerator
CS.System.Span.Enumerator = System.Span.Enumerator

---@return boolean
function System.Span.Enumerator:MoveNext() end

---@class System.SpanDebugView : System.Object
---@field Items T[]
System.SpanDebugView = {}
---@alias CS.System.SpanDebugView System.SpanDebugView
CS.System.SpanDebugView = System.SpanDebugView

---@overload fun(span: System.Span[T]) : System.SpanDebugView
---@param span System.ReadOnlySpan[T]
---@return System.SpanDebugView
function System.SpanDebugView.New(span) end

---@class System.SpanHelpers : System.Object
System.SpanHelpers = {}
---@alias CS.System.SpanHelpers System.SpanHelpers
CS.System.SpanHelpers = System.SpanHelpers

---@overload fun(ref_searchSpace: number, searchSpaceLength: number, ref_value: number, valueLength: number) : number, number, number
---@overload fun(ref_searchSpace: number, value: number, length: number) : number, number
---@param ref_searchSpace System.Char
---@param value System.Char
---@param length number
---@return number,System.Char
function System.SpanHelpers.IndexOf(ref_searchSpace, value, length) end
---@overload fun(ref_searchSpace: number, searchSpaceLength: number, ref_value: number, valueLength: number) : number, number, number
---@overload fun(ref_searchSpace: number, value0: number, value1: number, length: number) : number, number
---@param ref_searchSpace number
---@param value0 number
---@param value1 number
---@param value2 number
---@param length number
---@return number,number
function System.SpanHelpers.IndexOfAny(ref_searchSpace, value0, value1, value2, length) end
---@overload fun(ref_searchSpace: number, searchSpaceLength: number, ref_value: number, valueLength: number) : number, number, number
---@overload fun(ref_searchSpace: number, value0: number, value1: number, length: number) : number, number
---@param ref_searchSpace number
---@param value0 number
---@param value1 number
---@param value2 number
---@param length number
---@return number,number
function System.SpanHelpers.LastIndexOfAny(ref_searchSpace, value0, value1, value2, length) end
---@overload fun(ref_searchSpace: number, searchSpaceLength: number, ref_value: number, valueLength: number) : number, number, number
---@overload fun(ref_searchSpace: number, value: number, length: number) : number, number
---@param ref_searchSpace System.Char
---@param value System.Char
---@param length number
---@return number,System.Char
function System.SpanHelpers.LastIndexOf(ref_searchSpace, value, length) end
---@param ref_first number
---@param ref_second number
---@param length number
---@return boolean,number,number
function System.SpanHelpers.SequenceEqual(ref_first, ref_second, length) end
---@overload fun(ref_first: number, firstLength: number, ref_second: number, secondLength: number) : number, number, number
---@param ref_first System.Char
---@param firstLength number
---@param ref_second System.Char
---@param secondLength number
---@return number,System.Char,System.Char
function System.SpanHelpers.SequenceCompareTo(ref_first, firstLength, ref_second, secondLength) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param compareInfo System.Globalization.CompareInfo
---@return number
function System.SpanHelpers.IndexOfCultureHelper(span, value, compareInfo) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param compareInfo System.Globalization.CompareInfo
---@return number
function System.SpanHelpers.IndexOfCultureIgnoreCaseHelper(span, value, compareInfo) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param ignoreCase boolean
---@return number
function System.SpanHelpers.IndexOfOrdinalHelper(span, value, ignoreCase) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param compareInfo System.Globalization.CompareInfo
---@return boolean
function System.SpanHelpers.StartsWithCultureHelper(span, value, compareInfo) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param compareInfo System.Globalization.CompareInfo
---@return boolean
function System.SpanHelpers.StartsWithCultureIgnoreCaseHelper(span, value, compareInfo) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@return boolean
function System.SpanHelpers.StartsWithOrdinalIgnoreCaseHelper(span, value) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param compareInfo System.Globalization.CompareInfo
---@return boolean
function System.SpanHelpers.EndsWithCultureHelper(span, value, compareInfo) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@param compareInfo System.Globalization.CompareInfo
---@return boolean
function System.SpanHelpers.EndsWithCultureIgnoreCaseHelper(span, value, compareInfo) end
---@param span System.ReadOnlySpan
---@param value System.ReadOnlySpan
---@return boolean
function System.SpanHelpers.EndsWithOrdinalIgnoreCaseHelper(span, value) end
---@param ref_b number
---@param byteLength number
---@return ,number
function System.SpanHelpers.ClearWithoutReferences(ref_b, byteLength) end
---@param ref_ip System.IntPtr
---@param pointerSizeLength number
---@return ,System.IntPtr
function System.SpanHelpers.ClearWithReferences(ref_ip, pointerSizeLength) end
---@overload fun(ptr: System.Byte*, byteLength: System.UIntPtr)
---@param ref_b number
---@param byteLength System.UIntPtr
---@return ,number
function System.SpanHelpers.ClearLessThanPointerSized(ref_b, byteLength) end
---@param ref_b number
---@param byteLength System.UIntPtr
---@return ,number
function System.SpanHelpers.ClearPointerSizedWithoutReferences(ref_b, byteLength) end
---@param ref_ip System.IntPtr
---@param pointerSizeLength System.UIntPtr
---@return ,System.IntPtr
function System.SpanHelpers.ClearPointerSizedWithReferences(ref_ip, pointerSizeLength) end

---@class System.SpanHelpers.ComparerComparable : System.ValueType
System.SpanHelpers.ComparerComparable = {}
---@alias CS.System.SpanHelpers.ComparerComparable System.SpanHelpers.ComparerComparable
CS.System.SpanHelpers.ComparerComparable = System.SpanHelpers.ComparerComparable

---@param value T
---@param comparer TComparer
---@return System.SpanHelpers.ComparerComparable
function System.SpanHelpers.ComparerComparable.New(value, comparer) end
---@param other T
---@return number
function System.SpanHelpers.ComparerComparable:CompareTo(other) end

---@class System.SpanHelpers.Reg64 : System.ValueType
System.SpanHelpers.Reg64 = {}
---@alias CS.System.SpanHelpers.Reg64 System.SpanHelpers.Reg64
CS.System.SpanHelpers.Reg64 = System.SpanHelpers.Reg64


---@class System.SpanHelpers.Reg32 : System.ValueType
System.SpanHelpers.Reg32 = {}
---@alias CS.System.SpanHelpers.Reg32 System.SpanHelpers.Reg32
CS.System.SpanHelpers.Reg32 = System.SpanHelpers.Reg32


---@class System.SpanHelpers.Reg16 : System.ValueType
System.SpanHelpers.Reg16 = {}
---@alias CS.System.SpanHelpers.Reg16 System.SpanHelpers.Reg16
CS.System.SpanHelpers.Reg16 = System.SpanHelpers.Reg16


---@class System.SpanHelpers.PerTypeValues : System.Object
---@field IsReferenceOrContainsReferences boolean
---@field EmptyArray T[]
---@field ArrayAdjustment System.IntPtr
System.SpanHelpers.PerTypeValues = {}
---@alias CS.System.SpanHelpers.PerTypeValues System.SpanHelpers.PerTypeValues
CS.System.SpanHelpers.PerTypeValues = System.SpanHelpers.PerTypeValues


---@class System.StackOverflowException : System.SystemException
System.StackOverflowException = {}
---@alias CS.System.StackOverflowException System.StackOverflowException
CS.System.StackOverflowException = System.StackOverflowException

---@overload fun() : System.StackOverflowException
---@overload fun(message: string) : System.StackOverflowException
---@param message string
---@param innerException System.Exception
---@return System.StackOverflowException
function System.StackOverflowException.New(message, innerException) end

---@class System.StringComparer : System.Object
---@field InvariantCulture System.StringComparer
---@field InvariantCultureIgnoreCase System.StringComparer
---@field CurrentCulture System.StringComparer
---@field CurrentCultureIgnoreCase System.StringComparer
---@field Ordinal System.StringComparer
---@field OrdinalIgnoreCase System.StringComparer
System.StringComparer = {}
---@alias CS.System.StringComparer System.StringComparer
CS.System.StringComparer = System.StringComparer

---@param comparisonType System.StringComparison
---@return System.StringComparer
function System.StringComparer.FromComparison(comparisonType) end
---@overload fun(culture: System.Globalization.CultureInfo, ignoreCase: boolean) : System.StringComparer
---@param culture System.Globalization.CultureInfo
---@param options System.Globalization.CompareOptions
---@return System.StringComparer
function System.StringComparer.Create(culture, options) end
---@overload fun(self: System.StringComparer, x: System.Object, y: System.Object) : number
---@param x string
---@param y string
---@return number
function System.StringComparer:Compare(x, y) end
---@overload fun(self: System.StringComparer, x: System.Object, y: System.Object) : boolean
---@param x string
---@param y string
---@return boolean
function System.StringComparer:Equals(x, y) end
---@overload fun(self: System.StringComparer, obj: System.Object) : number
---@param obj string
---@return number
function System.StringComparer:GetHashCode(obj) end

---@class System.CultureAwareComparer : System.StringComparer
System.CultureAwareComparer = {}
---@alias CS.System.CultureAwareComparer System.CultureAwareComparer
CS.System.CultureAwareComparer = System.CultureAwareComparer

---@param x string
---@param y string
---@return number
function System.CultureAwareComparer:Compare(x, y) end
---@overload fun(self: System.CultureAwareComparer, x: string, y: string) : boolean
---@param obj System.Object
---@return boolean
function System.CultureAwareComparer:Equals(obj) end
---@overload fun(self: System.CultureAwareComparer, obj: string) : number
---@return number
function System.CultureAwareComparer:GetHashCode() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.CultureAwareComparer:GetObjectData(info, context) end

---@class System.OrdinalComparer : System.StringComparer
System.OrdinalComparer = {}
---@alias CS.System.OrdinalComparer System.OrdinalComparer
CS.System.OrdinalComparer = System.OrdinalComparer

---@param x string
---@param y string
---@return number
function System.OrdinalComparer:Compare(x, y) end
---@overload fun(self: System.OrdinalComparer, x: string, y: string) : boolean
---@param obj System.Object
---@return boolean
function System.OrdinalComparer:Equals(obj) end
---@overload fun(self: System.OrdinalComparer, obj: string) : number
---@return number
function System.OrdinalComparer:GetHashCode() end

---@class System.OrdinalCaseSensitiveComparer : System.OrdinalComparer
System.OrdinalCaseSensitiveComparer = {}
---@alias CS.System.OrdinalCaseSensitiveComparer System.OrdinalCaseSensitiveComparer
CS.System.OrdinalCaseSensitiveComparer = System.OrdinalCaseSensitiveComparer

---@return System.OrdinalCaseSensitiveComparer
function System.OrdinalCaseSensitiveComparer.New() end
---@param x string
---@param y string
---@return number
function System.OrdinalCaseSensitiveComparer:Compare(x, y) end
---@param x string
---@param y string
---@return boolean
function System.OrdinalCaseSensitiveComparer:Equals(x, y) end
---@param obj string
---@return number
function System.OrdinalCaseSensitiveComparer:GetHashCode(obj) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.OrdinalCaseSensitiveComparer:GetObjectData(info, context) end

---@class System.OrdinalIgnoreCaseComparer : System.OrdinalComparer
System.OrdinalIgnoreCaseComparer = {}
---@alias CS.System.OrdinalIgnoreCaseComparer System.OrdinalIgnoreCaseComparer
CS.System.OrdinalIgnoreCaseComparer = System.OrdinalIgnoreCaseComparer

---@return System.OrdinalIgnoreCaseComparer
function System.OrdinalIgnoreCaseComparer.New() end
---@param x string
---@param y string
---@return number
function System.OrdinalIgnoreCaseComparer:Compare(x, y) end
---@param x string
---@param y string
---@return boolean
function System.OrdinalIgnoreCaseComparer:Equals(x, y) end
---@param obj string
---@return number
function System.OrdinalIgnoreCaseComparer:GetHashCode(obj) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.OrdinalIgnoreCaseComparer:GetObjectData(info, context) end

---@class System.StringComparison
---@field CurrentCulture System.StringComparison
---@field CurrentCultureIgnoreCase System.StringComparison
---@field InvariantCulture System.StringComparison
---@field InvariantCultureIgnoreCase System.StringComparison
---@field Ordinal System.StringComparison
---@field OrdinalIgnoreCase System.StringComparison
System.StringComparison = {}
---@alias CS.System.StringComparison System.StringComparison
CS.System.StringComparison = System.StringComparison


---@class System.StringSplitOptions
---@field None System.StringSplitOptions
---@field RemoveEmptyEntries System.StringSplitOptions
System.StringSplitOptions = {}
---@alias CS.System.StringSplitOptions System.StringSplitOptions
CS.System.StringSplitOptions = System.StringSplitOptions


---@class System.SystemException : System.Exception
System.SystemException = {}
---@alias CS.System.SystemException System.SystemException
CS.System.SystemException = System.SystemException

---@overload fun() : System.SystemException
---@overload fun(message: string) : System.SystemException
---@param message string
---@param innerException System.Exception
---@return System.SystemException
function System.SystemException.New(message, innerException) end

---@class System.STAThreadAttribute : System.Attribute
System.STAThreadAttribute = {}
---@alias CS.System.STAThreadAttribute System.STAThreadAttribute
CS.System.STAThreadAttribute = System.STAThreadAttribute

---@return System.STAThreadAttribute
function System.STAThreadAttribute.New() end

---@class System.MTAThreadAttribute : System.Attribute
System.MTAThreadAttribute = {}
---@alias CS.System.MTAThreadAttribute System.MTAThreadAttribute
CS.System.MTAThreadAttribute = System.MTAThreadAttribute

---@return System.MTAThreadAttribute
function System.MTAThreadAttribute.New() end

---@class System.ThreadStaticAttribute : System.Attribute
System.ThreadStaticAttribute = {}
---@alias CS.System.ThreadStaticAttribute System.ThreadStaticAttribute
CS.System.ThreadStaticAttribute = System.ThreadStaticAttribute

---@return System.ThreadStaticAttribute
function System.ThreadStaticAttribute.New() end

---@class System.TimeSpan : System.ValueType
---@field TicksPerMillisecond number
---@field TicksPerSecond number
---@field TicksPerMinute number
---@field TicksPerHour number
---@field TicksPerDay number
---@field Zero System.TimeSpan
---@field MaxValue System.TimeSpan
---@field MinValue System.TimeSpan
---@field Ticks number
---@field Days number
---@field Hours number
---@field Milliseconds number
---@field Minutes number
---@field Seconds number
---@field TotalDays number
---@field TotalHours number
---@field TotalMilliseconds number
---@field TotalMinutes number
---@field TotalSeconds number
System.TimeSpan = {}
---@alias CS.System.TimeSpan System.TimeSpan
CS.System.TimeSpan = System.TimeSpan

---@overload fun(ticks: number) : System.TimeSpan
---@overload fun(hours: number, minutes: number, seconds: number) : System.TimeSpan
---@overload fun(days: number, hours: number, minutes: number, seconds: number) : System.TimeSpan
---@param days number
---@param hours number
---@param minutes number
---@param seconds number
---@param milliseconds number
---@return System.TimeSpan
function System.TimeSpan.New(days, hours, minutes, seconds, milliseconds) end
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return number
function System.TimeSpan.Compare(t1, t2) end
---@param value number
---@return System.TimeSpan
function System.TimeSpan.FromDays(value) end
---@overload fun(t1: System.TimeSpan, t2: System.TimeSpan) : boolean
---@overload fun(self: System.TimeSpan, value: System.Object) : boolean
---@param obj System.TimeSpan
---@return boolean
function System.TimeSpan:Equals(obj) end
---@param value number
---@return System.TimeSpan
function System.TimeSpan.FromHours(value) end
---@param value number
---@return System.TimeSpan
function System.TimeSpan.FromMilliseconds(value) end
---@param value number
---@return System.TimeSpan
function System.TimeSpan.FromMinutes(value) end
---@param value number
---@return System.TimeSpan
function System.TimeSpan.FromSeconds(value) end
---@param value number
---@return System.TimeSpan
function System.TimeSpan.FromTicks(value) end
---@overload fun(s: string) : System.TimeSpan
---@overload fun(input: string, formatProvider: System.IFormatProvider) : System.TimeSpan
---@param input System.ReadOnlySpan
---@param formatProvider System.IFormatProvider
---@return System.TimeSpan
function System.TimeSpan.Parse(input, formatProvider) end
---@overload fun(input: string, format: string, formatProvider: System.IFormatProvider) : System.TimeSpan
---@overload fun(input: string, formats: System.String[], formatProvider: System.IFormatProvider) : System.TimeSpan
---@overload fun(input: string, format: string, formatProvider: System.IFormatProvider, styles: System.Globalization.TimeSpanStyles) : System.TimeSpan
---@overload fun(input: System.ReadOnlySpan, format: System.ReadOnlySpan, formatProvider: System.IFormatProvider, styles: System.Globalization.TimeSpanStyles) : System.TimeSpan
---@overload fun(input: string, formats: System.String[], formatProvider: System.IFormatProvider, styles: System.Globalization.TimeSpanStyles) : System.TimeSpan
---@param input System.ReadOnlySpan
---@param formats System.String[]
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.TimeSpanStyles
---@return System.TimeSpan
function System.TimeSpan.ParseExact(input, formats, formatProvider, styles) end
---@overload fun(s: string, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(s: System.ReadOnlySpan, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(input: string, formatProvider: System.IFormatProvider, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@param input System.ReadOnlySpan
---@param formatProvider System.IFormatProvider
---@param out_result System.TimeSpan
---@return boolean,System.TimeSpan
function System.TimeSpan.TryParse(input, formatProvider, out_result) end
---@overload fun(input: string, format: string, formatProvider: System.IFormatProvider, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(input: System.ReadOnlySpan, format: System.ReadOnlySpan, formatProvider: System.IFormatProvider, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(input: string, formats: System.String[], formatProvider: System.IFormatProvider, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(input: System.ReadOnlySpan, formats: System.String[], formatProvider: System.IFormatProvider, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(input: string, format: string, formatProvider: System.IFormatProvider, styles: System.Globalization.TimeSpanStyles, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(input: System.ReadOnlySpan, format: System.ReadOnlySpan, formatProvider: System.IFormatProvider, styles: System.Globalization.TimeSpanStyles, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@overload fun(input: string, formats: System.String[], formatProvider: System.IFormatProvider, styles: System.Globalization.TimeSpanStyles, out_result: System.TimeSpan) : boolean, System.TimeSpan
---@param input System.ReadOnlySpan
---@param formats System.String[]
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.TimeSpanStyles
---@param out_result System.TimeSpan
---@return boolean,System.TimeSpan
function System.TimeSpan.TryParseExact(input, formats, formatProvider, styles, out_result) end
---@param ts System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan:Add(ts) end
---@overload fun(self: System.TimeSpan, value: System.Object) : number
---@param value System.TimeSpan
---@return number
function System.TimeSpan:CompareTo(value) end
---@return System.TimeSpan
function System.TimeSpan:Duration() end
---@return number
function System.TimeSpan:GetHashCode() end
---@return System.TimeSpan
function System.TimeSpan:Negate() end
---@param ts System.TimeSpan
---@return System.TimeSpan
function System.TimeSpan:Subtract(ts) end
---@param factor number
---@return System.TimeSpan
function System.TimeSpan:Multiply(factor) end
---@overload fun(self: System.TimeSpan, divisor: number) : System.TimeSpan
---@param ts System.TimeSpan
---@return number
function System.TimeSpan:Divide(ts) end
---@overload fun() : string
---@overload fun(self: System.TimeSpan, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function System.TimeSpan:ToString(format, formatProvider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param formatProvider System.IFormatProvider
---@return boolean,number
function System.TimeSpan:TryFormat(destination, out_charsWritten, format, formatProvider) end

---@class System.TimeZone : System.Object
---@field CurrentTimeZone System.TimeZone
---@field StandardName string
---@field DaylightName string
System.TimeZone = {}
---@alias CS.System.TimeZone System.TimeZone
CS.System.TimeZone = System.TimeZone

---@overload fun(time: System.DateTime, daylightTimes: System.Globalization.DaylightTime) : boolean
---@param time System.DateTime
---@return boolean
function System.TimeZone:IsDaylightSavingTime(time) end
---@param time System.DateTime
---@return System.TimeSpan
function System.TimeZone:GetUtcOffset(time) end
---@param time System.DateTime
---@return System.DateTime
function System.TimeZone:ToUniversalTime(time) end
---@param time System.DateTime
---@return System.DateTime
function System.TimeZone:ToLocalTime(time) end
---@param year number
---@return System.Globalization.DaylightTime
function System.TimeZone:GetDaylightChanges(year) end

---@class System.TimeZoneNotFoundException : System.Exception
System.TimeZoneNotFoundException = {}
---@alias CS.System.TimeZoneNotFoundException System.TimeZoneNotFoundException
CS.System.TimeZoneNotFoundException = System.TimeZoneNotFoundException

---@overload fun() : System.TimeZoneNotFoundException
---@overload fun(message: string) : System.TimeZoneNotFoundException
---@param message string
---@param innerException System.Exception
---@return System.TimeZoneNotFoundException
function System.TimeZoneNotFoundException.New(message, innerException) end

---@class System.TimeoutException : System.SystemException
System.TimeoutException = {}
---@alias CS.System.TimeoutException System.TimeoutException
CS.System.TimeoutException = System.TimeoutException

---@overload fun() : System.TimeoutException
---@overload fun(message: string) : System.TimeoutException
---@param message string
---@param innerException System.Exception
---@return System.TimeoutException
function System.TimeoutException.New(message, innerException) end

---@class System.ITupleInternal
System.ITupleInternal = {}
---@alias CS.System.ITupleInternal System.ITupleInternal
CS.System.ITupleInternal = System.ITupleInternal

---@param sb System.Text.StringBuilder
---@return string
function System.ITupleInternal:ToString(sb) end
---@param comparer System.Collections.IEqualityComparer
---@return number
function System.ITupleInternal:GetHashCode(comparer) end

---@class System.Tuple : System.Object
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple


---@class System.Tuple : System.Object
---@field Item1 T1
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@return System.Tuple
function System.Tuple.New(item1) end
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

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
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

---@class System.Tuple : System.Object
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@return System.Tuple
function System.Tuple.New(item1, item2, item3) end
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

---@class System.Tuple : System.Object
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@return System.Tuple
function System.Tuple.New(item1, item2, item3, item4) end
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

---@class System.Tuple : System.Object
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@return System.Tuple
function System.Tuple.New(item1, item2, item3, item4, item5) end
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

---@class System.Tuple : System.Object
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
---@field Item6 T6
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@param item6 T6
---@return System.Tuple
function System.Tuple.New(item1, item2, item3, item4, item5, item6) end
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

---@class System.Tuple : System.Object
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
---@field Item6 T6
---@field Item7 T7
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@param item6 T6
---@param item7 T7
---@return System.Tuple
function System.Tuple.New(item1, item2, item3, item4, item5, item6, item7) end
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

---@class System.Tuple : System.Object
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
---@field Item6 T6
---@field Item7 T7
---@field Rest TRest
System.Tuple = {}
---@alias CS.System.Tuple System.Tuple
CS.System.Tuple = System.Tuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@param item6 T6
---@param item7 T7
---@param rest TRest
---@return System.Tuple
function System.Tuple.New(item1, item2, item3, item4, item5, item6, item7, rest) end
---@param obj System.Object
---@return boolean
function System.Tuple:Equals(obj) end
---@return number
function System.Tuple:GetHashCode() end
---@return string
function System.Tuple:ToString() end

---@class System.TupleExtensions : System.Object
System.TupleExtensions = {}
---@alias CS.System.TupleExtensions System.TupleExtensions
CS.System.TupleExtensions = System.TupleExtensions


---@class System.Type : System.Reflection.MemberInfo
---@field Delimiter System.Char
---@field EmptyTypes System.Type[]
---@field Missing System.Object
---@field FilterAttribute System.Reflection.MemberFilter
---@field FilterName System.Reflection.MemberFilter
---@field FilterNameIgnoreCase System.Reflection.MemberFilter
---@field DefaultBinder System.Reflection.Binder
---@field IsSerializable boolean
---@field ContainsGenericParameters boolean
---@field IsVisible boolean
---@field MemberType System.Reflection.MemberTypes
---@field Namespace string
---@field AssemblyQualifiedName string
---@field FullName string
---@field Assembly System.Reflection.Assembly
---@field Module System.Reflection.Module
---@field IsNested boolean
---@field DeclaringType System.Type
---@field DeclaringMethod System.Reflection.MethodBase
---@field ReflectedType System.Type
---@field UnderlyingSystemType System.Type
---@field IsTypeDefinition boolean
---@field IsArray boolean
---@field IsByRef boolean
---@field IsPointer boolean
---@field IsConstructedGenericType boolean
---@field IsGenericParameter boolean
---@field IsGenericTypeParameter boolean
---@field IsGenericMethodParameter boolean
---@field IsGenericType boolean
---@field IsGenericTypeDefinition boolean
---@field IsSZArray boolean
---@field IsVariableBoundArray boolean
---@field IsByRefLike boolean
---@field HasElementType boolean
---@field GenericTypeArguments System.Type[]
---@field GenericParameterPosition number
---@field GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field Attributes System.Reflection.TypeAttributes
---@field IsAbstract boolean
---@field IsImport boolean
---@field IsSealed boolean
---@field IsSpecialName boolean
---@field IsClass boolean
---@field IsNestedAssembly boolean
---@field IsNestedFamANDAssem boolean
---@field IsNestedFamily boolean
---@field IsNestedFamORAssem boolean
---@field IsNestedPrivate boolean
---@field IsNestedPublic boolean
---@field IsNotPublic boolean
---@field IsPublic boolean
---@field IsAutoLayout boolean
---@field IsExplicitLayout boolean
---@field IsLayoutSequential boolean
---@field IsAnsiClass boolean
---@field IsAutoClass boolean
---@field IsUnicodeClass boolean
---@field IsCOMObject boolean
---@field IsContextful boolean
---@field IsCollectible boolean
---@field IsEnum boolean
---@field IsMarshalByRef boolean
---@field IsPrimitive boolean
---@field IsValueType boolean
---@field IsSignatureType boolean
---@field IsSecurityCritical boolean
---@field IsSecuritySafeCritical boolean
---@field IsSecurityTransparent boolean
---@field StructLayoutAttribute System.Runtime.InteropServices.StructLayoutAttribute
---@field TypeInitializer System.Reflection.ConstructorInfo
---@field TypeHandle System.RuntimeTypeHandle
---@field GUID System.Guid
---@field BaseType System.Type
---@field IsInterface boolean
System.Type = {}
---@alias CS.System.Type System.Type
CS.System.Type = System.Type

---@param o System.Object
---@return System.RuntimeTypeHandle
function System.Type.GetTypeHandle(o) end
---@param args System.Object[]
---@return System.Type[]
function System.Type.GetTypeArray(args) end
---@param type System.Type
---@return System.TypeCode
function System.Type.GetTypeCode(type) end
---@overload fun(clsid: System.Guid) : System.Type
---@overload fun(clsid: System.Guid, throwOnError: boolean) : System.Type
---@overload fun(clsid: System.Guid, server: string) : System.Type
---@param clsid System.Guid
---@param server string
---@param throwOnError boolean
---@return System.Type
function System.Type.GetTypeFromCLSID(clsid, server, throwOnError) end
---@overload fun(progID: string) : System.Type
---@overload fun(progID: string, throwOnError: boolean) : System.Type
---@overload fun(progID: string, server: string) : System.Type
---@param progID string
---@param server string
---@param throwOnError boolean
---@return System.Type
function System.Type.GetTypeFromProgID(progID, server, throwOnError) end
---@param genericTypeDefinition System.Type
---@param typeArguments System.Type[]
---@return System.Type
function System.Type.MakeGenericSignatureType(genericTypeDefinition, typeArguments) end
---@param position number
---@return System.Type
function System.Type.MakeGenericMethodParameter(position) end
---@param handle System.RuntimeTypeHandle
---@return System.Type
function System.Type.GetTypeFromHandle(handle) end
---@overload fun(typeName: string, throwOnError: boolean, ignoreCase: boolean) : System.Type
---@overload fun(typeName: string, throwOnError: boolean) : System.Type
---@overload fun(typeName: string) : System.Type
---@overload fun(typeName: string, assemblyResolver: System.Func, typeResolver: System.Func) : System.Type
---@overload fun(typeName: string, assemblyResolver: System.Func, typeResolver: System.Func, throwOnError: boolean) : System.Type
---@overload fun(typeName: string, assemblyResolver: System.Func, typeResolver: System.Func, throwOnError: boolean, ignoreCase: boolean) : System.Type
---@return System.Type
function System.Type:GetType() end
---@param typeName string
---@param throwIfNotFound boolean
---@param ignoreCase boolean
---@return System.Type
function System.Type.ReflectionOnlyGetType(typeName, throwIfNotFound, ignoreCase) end
---@param value System.Object
---@return boolean
function System.Type:IsEnumDefined(value) end
---@param value System.Object
---@return string
function System.Type:GetEnumName(value) end
---@return System.String[]
function System.Type:GetEnumNames() end
---@param filter System.Reflection.TypeFilter
---@param filterCriteria System.Object
---@return System.Type[]
function System.Type:FindInterfaces(filter, filterCriteria) end
---@param memberType System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@param filter System.Reflection.MemberFilter
---@param filterCriteria System.Object
---@return System.Reflection.MemberInfo[]
function System.Type:FindMembers(memberType, bindingAttr, filter, filterCriteria) end
---@param c System.Type
---@return boolean
function System.Type:IsSubclassOf(c) end
---@param c System.Type
---@return boolean
function System.Type:IsAssignableFrom(c) end
---@return System.Type
function System.Type:GetElementType() end
---@return number
function System.Type:GetArrayRank() end
---@return System.Type
function System.Type:GetGenericTypeDefinition() end
---@return System.Type[]
function System.Type:GetGenericArguments() end
---@return System.Type[]
function System.Type:GetGenericParameterConstraints() end
---@overload fun(self: System.Type, types: System.Type[]) : System.Reflection.ConstructorInfo
---@overload fun(self: System.Type, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, types: System.Type[], modifiers: System.Reflection.ParameterModifier[]) : System.Reflection.ConstructorInfo
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param callConvention System.Reflection.CallingConventions
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.ConstructorInfo
function System.Type:GetConstructor(bindingAttr, binder, callConvention, types, modifiers) end
---@overload fun() : System.Reflection.ConstructorInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Type:GetConstructors(bindingAttr) end
---@overload fun(self: System.Type, name: string) : System.Reflection.EventInfo
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Type:GetEvent(name, bindingAttr) end
---@overload fun() : System.Reflection.EventInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function System.Type:GetEvents(bindingAttr) end
---@overload fun(self: System.Type, name: string) : System.Reflection.FieldInfo
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Type:GetField(name, bindingAttr) end
---@overload fun() : System.Reflection.FieldInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Type:GetFields(bindingAttr) end
---@overload fun(self: System.Type, name: string) : System.Reflection.MemberInfo[]
---@overload fun(self: System.Type, name: string, bindingAttr: System.Reflection.BindingFlags) : System.Reflection.MemberInfo[]
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Type:GetMember(name, type, bindingAttr) end
---@overload fun() : System.Reflection.MemberInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Type:GetMembers(bindingAttr) end
---@overload fun(self: System.Type, name: string) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, bindingAttr: System.Reflection.BindingFlags) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, types: System.Type[]) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, types: System.Type[], modifiers: System.Reflection.ParameterModifier[]) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, types: System.Type[], modifiers: System.Reflection.ParameterModifier[]) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, callConvention: System.Reflection.CallingConventions, types: System.Type[], modifiers: System.Reflection.ParameterModifier[]) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, genericParameterCount: number, types: System.Type[]) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, genericParameterCount: number, types: System.Type[], modifiers: System.Reflection.ParameterModifier[]) : System.Reflection.MethodInfo
---@overload fun(self: System.Type, name: string, genericParameterCount: number, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, types: System.Type[], modifiers: System.Reflection.ParameterModifier[]) : System.Reflection.MethodInfo
---@param name string
---@param genericParameterCount number
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param callConvention System.Reflection.CallingConventions
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodInfo
function System.Type:GetMethod(name, genericParameterCount, bindingAttr, binder, callConvention, types, modifiers) end
---@overload fun() : System.Reflection.MethodInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Type:GetMethods(bindingAttr) end
---@overload fun(self: System.Type, name: string) : System.Type
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Type:GetNestedType(name, bindingAttr) end
---@overload fun() : System.Type[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Type:GetNestedTypes(bindingAttr) end
---@overload fun(self: System.Type, name: string) : System.Reflection.PropertyInfo
---@overload fun(self: System.Type, name: string, bindingAttr: System.Reflection.BindingFlags) : System.Reflection.PropertyInfo
---@overload fun(self: System.Type, name: string, returnType: System.Type) : System.Reflection.PropertyInfo
---@overload fun(self: System.Type, name: string, types: System.Type[]) : System.Reflection.PropertyInfo
---@overload fun(self: System.Type, name: string, returnType: System.Type, types: System.Type[]) : System.Reflection.PropertyInfo
---@overload fun(self: System.Type, name: string, returnType: System.Type, types: System.Type[], modifiers: System.Reflection.ParameterModifier[]) : System.Reflection.PropertyInfo
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param returnType System.Type
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.PropertyInfo
function System.Type:GetProperty(name, bindingAttr, binder, returnType, types, modifiers) end
---@overload fun() : System.Reflection.PropertyInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Type:GetProperties(bindingAttr) end
---@return System.Reflection.MemberInfo[]
function System.Type:GetDefaultMembers() end
---@overload fun(self: System.Type, name: string, invokeAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, target: System.Object, args: System.Object[]) : System.Object
---@overload fun(self: System.Type, name: string, invokeAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, target: System.Object, args: System.Object[], culture: System.Globalization.CultureInfo) : System.Object
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Type:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters) end
---@overload fun(self: System.Type, name: string) : System.Type
---@param name string
---@param ignoreCase boolean
---@return System.Type
function System.Type:GetInterface(name, ignoreCase) end
---@return System.Type[]
function System.Type:GetInterfaces() end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Type:GetInterfaceMap(interfaceType) end
---@param o System.Object
---@return boolean
function System.Type:IsInstanceOfType(o) end
---@param other System.Type
---@return boolean
function System.Type:IsEquivalentTo(other) end
---@return System.Type
function System.Type:GetEnumUnderlyingType() end
---@return System.Array
function System.Type:GetEnumValues() end
---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.Type:MakeArrayType(rank) end
---@return System.Type
function System.Type:MakeByRefType() end
---@param typeArguments System.Type[]
---@return System.Type
function System.Type:MakeGenericType(typeArguments) end
---@return System.Type
function System.Type:MakePointerType() end
---@return string
function System.Type:ToString() end
---@overload fun(self: System.Type, o: System.Object) : boolean
---@param o System.Type
---@return boolean
function System.Type:Equals(o) end
---@return number
function System.Type:GetHashCode() end
---@return System.Reflection.TypeInfo
function System.Type:GetTypeInfo() end
---@param parameter System.Reflection.ParameterInfo
---@return boolean
function System.Type:MatchesParameterTypeExactly(parameter) end
---@return System.Collections.Generic.IEnumerable
function System.Type:GetRuntimeFields() end
---@return System.Collections.Generic.IEnumerable
function System.Type:GetRuntimeMethods() end
---@return System.Collections.Generic.IEnumerable
function System.Type:GetRuntimeProperties() end
---@return System.Collections.Generic.IEnumerable
function System.Type:GetRuntimeEvents() end
---@param name string
---@return System.Reflection.FieldInfo
function System.Type:GetRuntimeField(name) end
---@param name string
---@param parameters System.Type[]
---@return System.Reflection.MethodInfo
function System.Type:GetRuntimeMethod(name, parameters) end
---@param name string
---@return System.Reflection.PropertyInfo
function System.Type:GetRuntimeProperty(name) end
---@param name string
---@return System.Reflection.EventInfo
function System.Type:GetRuntimeEvent(name) end
---@param name string
---@param types System.Type[]
---@return System.Reflection.MethodInfo
function System.Type:GetAnyStaticMethodValidated(name, types) end
---@return System.TypeCode
function System.Type:GetTypeCode() end
---@return System.Type
function System.Type:GetNonNullableType() end
---@return System.Type
function System.Type:GetNullableType() end
---@return boolean
function System.Type:IsNullableType() end
---@return boolean
function System.Type:IsNullableOrReferenceType() end
---@return boolean
function System.Type:IsBool() end
---@return boolean
function System.Type:IsNumeric() end
---@return boolean
function System.Type:IsInteger() end
---@return boolean
function System.Type:IsInteger64() end
---@return boolean
function System.Type:IsArithmetic() end
---@return boolean
function System.Type:IsUnsignedInt() end
---@return boolean
function System.Type:IsIntegerOrBool() end
---@return boolean
function System.Type:IsNumericOrBool() end
---@param dest System.Type
---@return boolean
function System.Type:HasIdentityPrimitiveOrNullableConversionTo(dest) end
---@param dest System.Type
---@return boolean
function System.Type:HasReferenceConversionTo(dest) end
---@return boolean
function System.Type:IsConvertible() end
---@param destination System.Type
---@return boolean
function System.Type:IsImplicitlyConvertibleTo(destination) end
---@return System.Type
function System.Type:GetNonRefType() end
---@return System.Reflection.MethodInfo
function System.Type:GetInvokeMethod() end
---@param data System.Object
---@param out_returnValue System.Object
---@return boolean,System.Object
function System.Type:TryConvertTo(data, out_returnValue) end
---@return string
function System.Type:GetNiceTypeName() end

---@class System.TypeAccessException : System.TypeLoadException
System.TypeAccessException = {}
---@alias CS.System.TypeAccessException System.TypeAccessException
CS.System.TypeAccessException = System.TypeAccessException

---@overload fun() : System.TypeAccessException
---@overload fun(message: string) : System.TypeAccessException
---@param message string
---@param inner System.Exception
---@return System.TypeAccessException
function System.TypeAccessException.New(message, inner) end

---@class System.TypeCode
---@field Empty System.TypeCode
---@field Object System.TypeCode
---@field DBNull System.TypeCode
---@field Boolean System.TypeCode
---@field Char System.TypeCode
---@field SByte System.TypeCode
---@field Byte System.TypeCode
---@field Int16 System.TypeCode
---@field UInt16 System.TypeCode
---@field Int32 System.TypeCode
---@field UInt32 System.TypeCode
---@field Int64 System.TypeCode
---@field UInt64 System.TypeCode
---@field Single System.TypeCode
---@field Double System.TypeCode
---@field Decimal System.TypeCode
---@field DateTime System.TypeCode
---@field String System.TypeCode
System.TypeCode = {}
---@alias CS.System.TypeCode System.TypeCode
CS.System.TypeCode = System.TypeCode

---@return boolean
function System.TypeCode:IsInt() end

---@class System.TypeInitializationException : System.SystemException
---@field TypeName string
System.TypeInitializationException = {}
---@alias CS.System.TypeInitializationException System.TypeInitializationException
CS.System.TypeInitializationException = System.TypeInitializationException

---@param fullTypeName string
---@param innerException System.Exception
---@return System.TypeInitializationException
function System.TypeInitializationException.New(fullTypeName, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.TypeInitializationException:GetObjectData(info, context) end

---@class System.TypeUnloadedException : System.SystemException
System.TypeUnloadedException = {}
---@alias CS.System.TypeUnloadedException System.TypeUnloadedException
CS.System.TypeUnloadedException = System.TypeUnloadedException

---@overload fun() : System.TypeUnloadedException
---@overload fun(message: string) : System.TypeUnloadedException
---@param message string
---@param innerException System.Exception
---@return System.TypeUnloadedException
function System.TypeUnloadedException.New(message, innerException) end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@overload fun(self: number, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@overload fun(self: number, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end
---@param alignment number
---@return number
function number:AlignToMultipleOf(alignment) end

---@class number : System.ValueType
---@field MaxValue number
---@field MinValue number
number = {}
---@alias number number
number = number

---@overload fun(s: string) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles) : number
---@overload fun(s: string, provider: System.IFormatProvider) : number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return number
function number.Parse(s, style, provider) end
---@overload fun(s: string, out_result: number) : boolean, number
---@overload fun(s: System.ReadOnlySpan, out_result: number) : boolean, number
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: number) : boolean, number
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result number
---@return boolean,number
function number.TryParse(s, style, provider, out_result) end
---@overload fun(self: number, value: System.Object) : number
---@param value number
---@return number
function number:CompareTo(value) end
---@overload fun(self: number, obj: System.Object) : boolean
---@param obj number
---@return boolean
function number:Equals(obj) end
---@return number
function number:GetHashCode() end
---@overload fun() : string
---@overload fun(self: number, provider: System.IFormatProvider) : string
---@overload fun(self: number, format: string) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function number:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function number:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function number:GetTypeCode() end

---@class System.UnauthorizedAccessException : System.SystemException
System.UnauthorizedAccessException = {}
---@alias CS.System.UnauthorizedAccessException System.UnauthorizedAccessException
CS.System.UnauthorizedAccessException = System.UnauthorizedAccessException

---@overload fun() : System.UnauthorizedAccessException
---@overload fun(message: string) : System.UnauthorizedAccessException
---@param message string
---@param inner System.Exception
---@return System.UnauthorizedAccessException
function System.UnauthorizedAccessException.New(message, inner) end

---@class System.UnhandledExceptionEventArgs : System.EventArgs
---@field ExceptionObject System.Object
---@field IsTerminating boolean
System.UnhandledExceptionEventArgs = {}
---@alias CS.System.UnhandledExceptionEventArgs System.UnhandledExceptionEventArgs
CS.System.UnhandledExceptionEventArgs = System.UnhandledExceptionEventArgs

---@param exception System.Object
---@param isTerminating boolean
---@return System.UnhandledExceptionEventArgs
function System.UnhandledExceptionEventArgs.New(exception, isTerminating) end

---@class System.UnhandledExceptionEventHandler : System.MulticastDelegate
System.UnhandledExceptionEventHandler = {}
---@alias CS.System.UnhandledExceptionEventHandler System.UnhandledExceptionEventHandler
CS.System.UnhandledExceptionEventHandler = System.UnhandledExceptionEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.UnhandledExceptionEventHandler
function System.UnhandledExceptionEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.UnhandledExceptionEventArgs
function System.UnhandledExceptionEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.UnhandledExceptionEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.UnhandledExceptionEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.UnhandledExceptionEventHandler:EndInvoke(result) end

---@class System.IValueTupleInternal
System.IValueTupleInternal = {}
---@alias CS.System.IValueTupleInternal System.IValueTupleInternal
CS.System.IValueTupleInternal = System.IValueTupleInternal

---@param comparer System.Collections.IEqualityComparer
---@return number
function System.IValueTupleInternal:GetHashCode(comparer) end
---@return string
function System.IValueTupleInternal:ToStringEnd() end

---@class System.ValueTuple : System.ValueType
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@return System.ValueTuple
function System.ValueTuple.Create() end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@return System.ValueTuple
function System.ValueTuple.New(item1) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
---@field Item2 T2
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@param item2 T2
---@return System.ValueTuple
function System.ValueTuple.New(item1, item2) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@return System.ValueTuple
function System.ValueTuple.New(item1, item2, item3) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@return System.ValueTuple
function System.ValueTuple.New(item1, item2, item3, item4) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@return System.ValueTuple
function System.ValueTuple.New(item1, item2, item3, item4, item5) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
---@field Item6 T6
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@param item6 T6
---@return System.ValueTuple
function System.ValueTuple.New(item1, item2, item3, item4, item5, item6) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
---@field Item6 T6
---@field Item7 T7
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@param item6 T6
---@param item7 T7
---@return System.ValueTuple
function System.ValueTuple.New(item1, item2, item3, item4, item5, item6, item7) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.ValueTuple : System.ValueType
---@field Item1 T1
---@field Item2 T2
---@field Item3 T3
---@field Item4 T4
---@field Item5 T5
---@field Item6 T6
---@field Item7 T7
---@field Rest TRest
System.ValueTuple = {}
---@alias CS.System.ValueTuple System.ValueTuple
CS.System.ValueTuple = System.ValueTuple

---@param item1 T1
---@param item2 T2
---@param item3 T3
---@param item4 T4
---@param item5 T5
---@param item6 T6
---@param item7 T7
---@param rest TRest
---@return System.ValueTuple
function System.ValueTuple.New(item1, item2, item3, item4, item5, item6, item7, rest) end
---@overload fun(self: System.ValueTuple, obj: System.Object) : boolean
---@param other System.ValueTuple
---@return boolean
function System.ValueTuple:Equals(other) end
---@param other System.ValueTuple
---@return number
function System.ValueTuple:CompareTo(other) end
---@return number
function System.ValueTuple:GetHashCode() end
---@return string
function System.ValueTuple:ToString() end

---@class System.Version : System.Object
---@field Major number
---@field Minor number
---@field Build number
---@field Revision number
---@field MajorRevision number
---@field MinorRevision number
System.Version = {}
---@alias CS.System.Version System.Version
CS.System.Version = System.Version

---@overload fun(major: number, minor: number, build: number, revision: number) : System.Version
---@overload fun(major: number, minor: number, build: number) : System.Version
---@overload fun(major: number, minor: number) : System.Version
---@overload fun(version: string) : System.Version
---@return System.Version
function System.Version.New() end
---@overload fun(input: string) : System.Version
---@param input System.ReadOnlySpan
---@return System.Version
function System.Version.Parse(input) end
---@overload fun(input: string, out_result: System.Version) : boolean, System.Version
---@param input System.ReadOnlySpan
---@param out_result System.Version
---@return boolean,System.Version
function System.Version.TryParse(input, out_result) end
---@return System.Object
function System.Version:Clone() end
---@overload fun(self: System.Version, version: System.Object) : number
---@param value System.Version
---@return number
function System.Version:CompareTo(value) end
---@overload fun(self: System.Version, obj: System.Object) : boolean
---@param obj System.Version
---@return boolean
function System.Version:Equals(obj) end
---@return number
function System.Version:GetHashCode() end
---@overload fun() : string
---@param fieldCount number
---@return string
function System.Version:ToString(fieldCount) end
---@overload fun(self: System.Version, destination: System.Span, out_charsWritten: number) : boolean, number
---@param destination System.Span
---@param fieldCount number
---@param out_charsWritten number
---@return boolean,number
function System.Version:TryFormat(destination, fieldCount, out_charsWritten) end

---@class System.Void : System.ValueType
System.Void = {}
---@alias CS.System.Void System.Void
CS.System.Void = System.Void


---@class System.FixedBufferExtensions : System.Object
System.FixedBufferExtensions = {}
---@alias CS.System.FixedBufferExtensions System.FixedBufferExtensions
CS.System.FixedBufferExtensions = System.FixedBufferExtensions


---@class System.MutableDecimal : System.ValueType
---@field Flags number
---@field High number
---@field Low number
---@field Mid number
---@field IsNegative boolean
---@field Scale number
System.MutableDecimal = {}
---@alias CS.System.MutableDecimal System.MutableDecimal
CS.System.MutableDecimal = System.MutableDecimal


---@class System.NotImplemented : System.Object
System.NotImplemented = {}
---@alias CS.System.NotImplemented System.NotImplemented
CS.System.NotImplemented = System.NotImplemented


---@class System.IServiceProvider
System.IServiceProvider = {}
---@alias CS.System.IServiceProvider System.IServiceProvider
CS.System.IServiceProvider = System.IServiceProvider

---@param serviceType System.Type
---@return System.Object
function System.IServiceProvider:GetService(serviceType) end

---@class System.ConsoleCancelEventHandler : System.MulticastDelegate
System.ConsoleCancelEventHandler = {}
---@alias CS.System.ConsoleCancelEventHandler System.ConsoleCancelEventHandler
CS.System.ConsoleCancelEventHandler = System.ConsoleCancelEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.ConsoleCancelEventHandler
function System.ConsoleCancelEventHandler.New(object, method) end
---@param sender System.Object
---@param e System.ConsoleCancelEventArgs
function System.ConsoleCancelEventHandler:Invoke(sender, e) end
---@param sender System.Object
---@param e System.ConsoleCancelEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.ConsoleCancelEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function System.ConsoleCancelEventHandler:EndInvoke(result) end

---@class System.ConsoleCancelEventArgs : System.EventArgs
---@field Cancel boolean
---@field SpecialKey System.ConsoleSpecialKey
System.ConsoleCancelEventArgs = {}
---@alias CS.System.ConsoleCancelEventArgs System.ConsoleCancelEventArgs
CS.System.ConsoleCancelEventArgs = System.ConsoleCancelEventArgs


---@class System.ConsoleColor
---@field Black System.ConsoleColor
---@field DarkBlue System.ConsoleColor
---@field DarkGreen System.ConsoleColor
---@field DarkCyan System.ConsoleColor
---@field DarkRed System.ConsoleColor
---@field DarkMagenta System.ConsoleColor
---@field DarkYellow System.ConsoleColor
---@field Gray System.ConsoleColor
---@field DarkGray System.ConsoleColor
---@field Blue System.ConsoleColor
---@field Green System.ConsoleColor
---@field Cyan System.ConsoleColor
---@field Red System.ConsoleColor
---@field Magenta System.ConsoleColor
---@field Yellow System.ConsoleColor
---@field White System.ConsoleColor
System.ConsoleColor = {}
---@alias CS.System.ConsoleColor System.ConsoleColor
CS.System.ConsoleColor = System.ConsoleColor


---@class System.ConsoleKey
---@field Backspace System.ConsoleKey
---@field Tab System.ConsoleKey
---@field Clear System.ConsoleKey
---@field Enter System.ConsoleKey
---@field Pause System.ConsoleKey
---@field Escape System.ConsoleKey
---@field Spacebar System.ConsoleKey
---@field PageUp System.ConsoleKey
---@field PageDown System.ConsoleKey
---@field End System.ConsoleKey
---@field Home System.ConsoleKey
---@field LeftArrow System.ConsoleKey
---@field UpArrow System.ConsoleKey
---@field RightArrow System.ConsoleKey
---@field DownArrow System.ConsoleKey
---@field Select System.ConsoleKey
---@field Print System.ConsoleKey
---@field Execute System.ConsoleKey
---@field PrintScreen System.ConsoleKey
---@field Insert System.ConsoleKey
---@field Delete System.ConsoleKey
---@field Help System.ConsoleKey
---@field D0 System.ConsoleKey
---@field D1 System.ConsoleKey
---@field D2 System.ConsoleKey
---@field D3 System.ConsoleKey
---@field D4 System.ConsoleKey
---@field D5 System.ConsoleKey
---@field D6 System.ConsoleKey
---@field D7 System.ConsoleKey
---@field D8 System.ConsoleKey
---@field D9 System.ConsoleKey
---@field A System.ConsoleKey
---@field B System.ConsoleKey
---@field C System.ConsoleKey
---@field D System.ConsoleKey
---@field E System.ConsoleKey
---@field F System.ConsoleKey
---@field G System.ConsoleKey
---@field H System.ConsoleKey
---@field I System.ConsoleKey
---@field J System.ConsoleKey
---@field K System.ConsoleKey
---@field L System.ConsoleKey
---@field M System.ConsoleKey
---@field N System.ConsoleKey
---@field O System.ConsoleKey
---@field P System.ConsoleKey
---@field Q System.ConsoleKey
---@field R System.ConsoleKey
---@field S System.ConsoleKey
---@field T System.ConsoleKey
---@field U System.ConsoleKey
---@field V System.ConsoleKey
---@field W System.ConsoleKey
---@field X System.ConsoleKey
---@field Y System.ConsoleKey
---@field Z System.ConsoleKey
---@field LeftWindows System.ConsoleKey
---@field RightWindows System.ConsoleKey
---@field Applications System.ConsoleKey
---@field Sleep System.ConsoleKey
---@field NumPad0 System.ConsoleKey
---@field NumPad1 System.ConsoleKey
---@field NumPad2 System.ConsoleKey
---@field NumPad3 System.ConsoleKey
---@field NumPad4 System.ConsoleKey
---@field NumPad5 System.ConsoleKey
---@field NumPad6 System.ConsoleKey
---@field NumPad7 System.ConsoleKey
---@field NumPad8 System.ConsoleKey
---@field NumPad9 System.ConsoleKey
---@field Multiply System.ConsoleKey
---@field Add System.ConsoleKey
---@field Separator System.ConsoleKey
---@field Subtract System.ConsoleKey
---@field Decimal System.ConsoleKey
---@field Divide System.ConsoleKey
---@field F1 System.ConsoleKey
---@field F2 System.ConsoleKey
---@field F3 System.ConsoleKey
---@field F4 System.ConsoleKey
---@field F5 System.ConsoleKey
---@field F6 System.ConsoleKey
---@field F7 System.ConsoleKey
---@field F8 System.ConsoleKey
---@field F9 System.ConsoleKey
---@field F10 System.ConsoleKey
---@field F11 System.ConsoleKey
---@field F12 System.ConsoleKey
---@field F13 System.ConsoleKey
---@field F14 System.ConsoleKey
---@field F15 System.ConsoleKey
---@field F16 System.ConsoleKey
---@field F17 System.ConsoleKey
---@field F18 System.ConsoleKey
---@field F19 System.ConsoleKey
---@field F20 System.ConsoleKey
---@field F21 System.ConsoleKey
---@field F22 System.ConsoleKey
---@field F23 System.ConsoleKey
---@field F24 System.ConsoleKey
---@field BrowserBack System.ConsoleKey
---@field BrowserForward System.ConsoleKey
---@field BrowserRefresh System.ConsoleKey
---@field BrowserStop System.ConsoleKey
---@field BrowserSearch System.ConsoleKey
---@field BrowserFavorites System.ConsoleKey
---@field BrowserHome System.ConsoleKey
---@field VolumeMute System.ConsoleKey
---@field VolumeDown System.ConsoleKey
---@field VolumeUp System.ConsoleKey
---@field MediaNext System.ConsoleKey
---@field MediaPrevious System.ConsoleKey
---@field MediaStop System.ConsoleKey
---@field MediaPlay System.ConsoleKey
---@field LaunchMail System.ConsoleKey
---@field LaunchMediaSelect System.ConsoleKey
---@field LaunchApp1 System.ConsoleKey
---@field LaunchApp2 System.ConsoleKey
---@field Oem1 System.ConsoleKey
---@field OemPlus System.ConsoleKey
---@field OemComma System.ConsoleKey
---@field OemMinus System.ConsoleKey
---@field OemPeriod System.ConsoleKey
---@field Oem2 System.ConsoleKey
---@field Oem3 System.ConsoleKey
---@field Oem4 System.ConsoleKey
---@field Oem5 System.ConsoleKey
---@field Oem6 System.ConsoleKey
---@field Oem7 System.ConsoleKey
---@field Oem8 System.ConsoleKey
---@field Oem102 System.ConsoleKey
---@field Process System.ConsoleKey
---@field Packet System.ConsoleKey
---@field Attention System.ConsoleKey
---@field CrSel System.ConsoleKey
---@field ExSel System.ConsoleKey
---@field EraseEndOfFile System.ConsoleKey
---@field Play System.ConsoleKey
---@field Zoom System.ConsoleKey
---@field NoName System.ConsoleKey
---@field Pa1 System.ConsoleKey
---@field OemClear System.ConsoleKey
System.ConsoleKey = {}
---@alias CS.System.ConsoleKey System.ConsoleKey
CS.System.ConsoleKey = System.ConsoleKey


---@class System.ConsoleKeyInfo : System.ValueType
---@field KeyChar System.Char
---@field Key System.ConsoleKey
---@field Modifiers System.ConsoleModifiers
System.ConsoleKeyInfo = {}
---@alias CS.System.ConsoleKeyInfo System.ConsoleKeyInfo
CS.System.ConsoleKeyInfo = System.ConsoleKeyInfo

---@param keyChar System.Char
---@param key System.ConsoleKey
---@param shift boolean
---@param alt boolean
---@param control boolean
---@return System.ConsoleKeyInfo
function System.ConsoleKeyInfo.New(keyChar, key, shift, alt, control) end
---@overload fun(self: System.ConsoleKeyInfo, value: System.Object) : boolean
---@param obj System.ConsoleKeyInfo
---@return boolean
function System.ConsoleKeyInfo:Equals(obj) end
---@return number
function System.ConsoleKeyInfo:GetHashCode() end

---@class System.ConsoleModifiers
---@field Alt System.ConsoleModifiers
---@field Shift System.ConsoleModifiers
---@field Control System.ConsoleModifiers
System.ConsoleModifiers = {}
---@alias CS.System.ConsoleModifiers System.ConsoleModifiers
CS.System.ConsoleModifiers = System.ConsoleModifiers


---@class System.ConsoleSpecialKey
---@field ControlC System.ConsoleSpecialKey
---@field ControlBreak System.ConsoleSpecialKey
System.ConsoleSpecialKey = {}
---@alias CS.System.ConsoleSpecialKey System.ConsoleSpecialKey
CS.System.ConsoleSpecialKey = System.ConsoleSpecialKey


---@class System.DecimalDecCalc : System.Object
System.DecimalDecCalc = {}
---@alias CS.System.DecimalDecCalc System.DecimalDecCalc
CS.System.DecimalDecCalc = System.DecimalDecCalc


---@class System.Pinnable : System.Object
---@field Data T
System.Pinnable = {}
---@alias CS.System.Pinnable System.Pinnable
CS.System.Pinnable = System.Pinnable

---@return System.Pinnable
function System.Pinnable.New() end

---@class System.SequencePosition : System.ValueType
System.SequencePosition = {}
---@alias CS.System.SequencePosition System.SequencePosition
CS.System.SequencePosition = System.SequencePosition

---@param object System.Object
---@param integer number
---@return System.SequencePosition
function System.SequencePosition.New(object, integer) end
---@return System.Object
function System.SequencePosition:GetObject() end
---@return number
function System.SequencePosition:GetInteger() end
---@overload fun(self: System.SequencePosition, other: System.SequencePosition) : boolean
---@param obj System.Object
---@return boolean
function System.SequencePosition:Equals(obj) end
---@return number
function System.SequencePosition:GetHashCode() end

---@class System.ThrowHelper : System.Object
System.ThrowHelper = {}
---@alias CS.System.ThrowHelper System.ThrowHelper
CS.System.ThrowHelper = System.ThrowHelper

---@param out_bytesWritten number
---@return boolean,number
function System.ThrowHelper.TryFormatThrowFormatException(out_bytesWritten) end
---@param array System.Array
---@param start number
function System.ThrowHelper.ThrowArgumentValidationException(array, start) end
---@param start number
function System.ThrowHelper.ThrowStartOrEndArgumentValidationException(start) end

---@class System.AppDomainUnloadedException : System.SystemException
System.AppDomainUnloadedException = {}
---@alias CS.System.AppDomainUnloadedException System.AppDomainUnloadedException
CS.System.AppDomainUnloadedException = System.AppDomainUnloadedException

---@overload fun() : System.AppDomainUnloadedException
---@overload fun(message: string) : System.AppDomainUnloadedException
---@param message string
---@param innerException System.Exception
---@return System.AppDomainUnloadedException
function System.AppDomainUnloadedException.New(message, innerException) end

---@class System.ApplicationId : System.Object
---@field Culture string
---@field Name string
---@field ProcessorArchitecture string
---@field Version System.Version
---@field PublicKeyToken System.Byte[]
System.ApplicationId = {}
---@alias CS.System.ApplicationId System.ApplicationId
CS.System.ApplicationId = System.ApplicationId

---@param publicKeyToken System.Byte[]
---@param name string
---@param version System.Version
---@param processorArchitecture string
---@param culture string
---@return System.ApplicationId
function System.ApplicationId.New(publicKeyToken, name, version, processorArchitecture, culture) end
---@return System.ApplicationId
function System.ApplicationId:Copy() end
---@return string
function System.ApplicationId:ToString() end
---@param o System.Object
---@return boolean
function System.ApplicationId:Equals(o) end
---@return number
function System.ApplicationId:GetHashCode() end

---@class System.CannotUnloadAppDomainException : System.SystemException
System.CannotUnloadAppDomainException = {}
---@alias CS.System.CannotUnloadAppDomainException System.CannotUnloadAppDomainException
CS.System.CannotUnloadAppDomainException = System.CannotUnloadAppDomainException

---@overload fun() : System.CannotUnloadAppDomainException
---@overload fun(message: string) : System.CannotUnloadAppDomainException
---@param message string
---@param innerException System.Exception
---@return System.CannotUnloadAppDomainException
function System.CannotUnloadAppDomainException.New(message, innerException) end

---@class System.LoaderOptimization
---@field MultiDomain System.LoaderOptimization
---@field MultiDomainHost System.LoaderOptimization
---@field NotSpecified System.LoaderOptimization
---@field SingleDomain System.LoaderOptimization
System.LoaderOptimization = {}
---@alias CS.System.LoaderOptimization System.LoaderOptimization
CS.System.LoaderOptimization = System.LoaderOptimization


---@class System.LoaderOptimizationAttribute : System.Attribute
---@field Value System.LoaderOptimization
System.LoaderOptimizationAttribute = {}
---@alias CS.System.LoaderOptimizationAttribute System.LoaderOptimizationAttribute
CS.System.LoaderOptimizationAttribute = System.LoaderOptimizationAttribute

---@overload fun(value: number) : System.LoaderOptimizationAttribute
---@param value System.LoaderOptimization
---@return System.LoaderOptimizationAttribute
function System.LoaderOptimizationAttribute.New(value) end

---@class System.OperatingSystem : System.Object
---@field Platform System.PlatformID
---@field ServicePack string
---@field Version System.Version
---@field VersionString string
System.OperatingSystem = {}
---@alias CS.System.OperatingSystem System.OperatingSystem
CS.System.OperatingSystem = System.OperatingSystem

---@param platform System.PlatformID
---@param version System.Version
---@return System.OperatingSystem
function System.OperatingSystem.New(platform, version) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.OperatingSystem:GetObjectData(info, context) end
---@return System.Object
function System.OperatingSystem:Clone() end
---@return string
function System.OperatingSystem:ToString() end

---@class System.InsufficientMemoryException : System.OutOfMemoryException
System.InsufficientMemoryException = {}
---@alias CS.System.InsufficientMemoryException System.InsufficientMemoryException
CS.System.InsufficientMemoryException = System.InsufficientMemoryException

---@overload fun() : System.InsufficientMemoryException
---@overload fun(message: string) : System.InsufficientMemoryException
---@param message string
---@param innerException System.Exception
---@return System.InsufficientMemoryException
function System.InsufficientMemoryException.New(message, innerException) end

---@class System.MissingFieldException : System.MissingMemberException
---@field Message string
System.MissingFieldException = {}
---@alias CS.System.MissingFieldException System.MissingFieldException
CS.System.MissingFieldException = System.MissingFieldException

---@overload fun() : System.MissingFieldException
---@overload fun(message: string) : System.MissingFieldException
---@overload fun(message: string, inner: System.Exception) : System.MissingFieldException
---@param className string
---@param fieldName string
---@return System.MissingFieldException
function System.MissingFieldException.New(className, fieldName) end

---@class System.MissingMemberException : System.MemberAccessException
---@field Message string
System.MissingMemberException = {}
---@alias CS.System.MissingMemberException System.MissingMemberException
CS.System.MissingMemberException = System.MissingMemberException

---@overload fun() : System.MissingMemberException
---@overload fun(message: string) : System.MissingMemberException
---@overload fun(message: string, inner: System.Exception) : System.MissingMemberException
---@param className string
---@param memberName string
---@return System.MissingMemberException
function System.MissingMemberException.New(className, memberName) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.MissingMemberException:GetObjectData(info, context) end

---@class System.OutOfMemoryException : System.SystemException
System.OutOfMemoryException = {}
---@alias CS.System.OutOfMemoryException System.OutOfMemoryException
CS.System.OutOfMemoryException = System.OutOfMemoryException

---@overload fun() : System.OutOfMemoryException
---@overload fun(message: string) : System.OutOfMemoryException
---@param message string
---@param innerException System.Exception
---@return System.OutOfMemoryException
function System.OutOfMemoryException.New(message, innerException) end

---@class System.Array : System.Object
---@field LongLength number
---@field IsFixedSize boolean
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Length number
---@field Rank number
System.Array = {}
---@alias CS.System.Array System.Array
CS.System.Array = System.Array

---@overload fun(elementType: System.Type, lengths: System.Int64[]) : System.Array
---@overload fun(elementType: System.Type, length: number) : System.Array
---@overload fun(elementType: System.Type, length1: number, length2: number) : System.Array
---@overload fun(elementType: System.Type, length1: number, length2: number, length3: number) : System.Array
---@overload fun(elementType: System.Type, lengths: System.Int32[]) : System.Array
---@param elementType System.Type
---@param lengths System.Int32[]
---@param lowerBounds System.Int32[]
---@return System.Array
function System.Array.CreateInstance(elementType, lengths, lowerBounds) end
---@overload fun(array: System.Array, value: System.Object) : number
---@overload fun(array: System.Array, index: number, length: number, value: System.Object) : number
---@overload fun(array: System.Array, value: System.Object, comparer: System.Collections.IComparer) : number
---@param array System.Array
---@param index number
---@param length number
---@param value System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Array.BinarySearch(array, index, length, value, comparer) end
---@overload fun(sourceArray: System.Array, destinationArray: System.Array, length: number)
---@overload fun(sourceArray: System.Array, sourceIndex: number, destinationArray: System.Array, destinationIndex: number, length: number)
---@overload fun(sourceArray: System.Array, destinationArray: System.Array, length: number)
---@param sourceArray System.Array
---@param sourceIndex number
---@param destinationArray System.Array
---@param destinationIndex number
---@param length number
function System.Array.Copy(sourceArray, sourceIndex, destinationArray, destinationIndex, length) end
---@overload fun(array: System.Array, value: System.Object) : number
---@overload fun(array: System.Array, value: System.Object, startIndex: number) : number
---@param array System.Array
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Array.IndexOf(array, value, startIndex, count) end
---@overload fun(array: System.Array, value: System.Object) : number
---@overload fun(array: System.Array, value: System.Object, startIndex: number) : number
---@param array System.Array
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Array.LastIndexOf(array, value, startIndex, count) end
---@overload fun(array: System.Array)
---@param array System.Array
---@param index number
---@param length number
function System.Array.Reverse(array, index, length) end
---@overload fun(array: System.Array)
---@overload fun(array: System.Array, index: number, length: number)
---@overload fun(array: System.Array, comparer: System.Collections.IComparer)
---@overload fun(array: System.Array, index: number, length: number, comparer: System.Collections.IComparer)
---@overload fun(keys: System.Array, items: System.Array)
---@overload fun(keys: System.Array, items: System.Array, comparer: System.Collections.IComparer)
---@overload fun(keys: System.Array, items: System.Array, index: number, length: number)
---@param keys System.Array
---@param items System.Array
---@param index number
---@param length number
---@param comparer System.Collections.IComparer
function System.Array.Sort(keys, items, index, length, comparer) end
---@param array System.Array
---@param index number
---@param length number
function System.Array.Clear(array, index, length) end
---@param sourceArray System.Array
---@param sourceIndex number
---@param destinationArray System.Array
---@param destinationIndex number
---@param length number
function System.Array.ConstrainedCopy(sourceArray, sourceIndex, destinationArray, destinationIndex, length) end
---@overload fun(self: System.Array, array: System.Array, index: number)
---@param array System.Array
---@param index number
function System.Array:CopyTo(array, index) end
---@return System.Object
function System.Array:Clone() end
---@param dimension number
---@return number
function System.Array:GetLongLength(dimension) end
---@overload fun(self: System.Array, index: number) : System.Object
---@overload fun(self: System.Array, index1: number, index2: number) : System.Object
---@overload fun(self: System.Array, index1: number, index2: number, index3: number) : System.Object
---@overload fun(self: System.Array, indices: System.Int64[]) : System.Object
---@overload fun(self: System.Array, indices: System.Int32[]) : System.Object
---@overload fun(self: System.Array, index: number) : System.Object
---@overload fun(self: System.Array, index1: number, index2: number) : System.Object
---@param index1 number
---@param index2 number
---@param index3 number
---@return System.Object
function System.Array:GetValue(index1, index2, index3) end
---@overload fun(self: System.Array, value: System.Object, index: number)
---@overload fun(self: System.Array, value: System.Object, index1: number, index2: number)
---@overload fun(self: System.Array, value: System.Object, index1: number, index2: number, index3: number)
---@overload fun(self: System.Array, value: System.Object, indices: System.Int64[])
---@overload fun(self: System.Array, value: System.Object, indices: System.Int32[])
---@overload fun(self: System.Array, value: System.Object, index: number)
---@overload fun(self: System.Array, value: System.Object, index1: number, index2: number)
---@param value System.Object
---@param index1 number
---@param index2 number
---@param index3 number
function System.Array:SetValue(value, index1, index2, index3) end
---@return System.Collections.IEnumerator
function System.Array:GetEnumerator() end
---@param dimension number
---@return number
function System.Array:GetLength(dimension) end
---@param dimension number
---@return number
function System.Array:GetLowerBound(dimension) end
---@param dimension number
---@return number
function System.Array:GetUpperBound(dimension) end
function System.Array:Initialize() end

---@class System.Array.ArrayEnumerator : System.Object
---@field Current System.Object
System.Array.ArrayEnumerator = {}
---@alias CS.System.Array.ArrayEnumerator System.Array.ArrayEnumerator
CS.System.Array.ArrayEnumerator = System.Array.ArrayEnumerator

---@return boolean
function System.Array.ArrayEnumerator:MoveNext() end
function System.Array.ArrayEnumerator:Reset() end
---@return System.Object
function System.Array.ArrayEnumerator:Clone() end

---@class System.Array.RawData : System.Object
---@field Bounds System.IntPtr
---@field Count System.IntPtr
---@field Data number
System.Array.RawData = {}
---@alias CS.System.Array.RawData System.Array.RawData
CS.System.Array.RawData = System.Array.RawData

---@return System.Array.RawData
function System.Array.RawData.New() end

---@class System.Array.InternalEnumerator : System.ValueType
---@field Current T
System.Array.InternalEnumerator = {}
---@alias CS.System.Array.InternalEnumerator System.Array.InternalEnumerator
CS.System.Array.InternalEnumerator = System.Array.InternalEnumerator

function System.Array.InternalEnumerator:Dispose() end
---@return boolean
function System.Array.InternalEnumerator:MoveNext() end

---@class System.Array.EmptyInternalEnumerator : System.Object
---@field Value System.Array.EmptyInternalEnumerator
---@field Current T
System.Array.EmptyInternalEnumerator = {}
---@alias CS.System.Array.EmptyInternalEnumerator System.Array.EmptyInternalEnumerator
CS.System.Array.EmptyInternalEnumerator = System.Array.EmptyInternalEnumerator

---@return System.Array.EmptyInternalEnumerator
function System.Array.EmptyInternalEnumerator.New() end
function System.Array.EmptyInternalEnumerator:Dispose() end
---@return boolean
function System.Array.EmptyInternalEnumerator:MoveNext() end

---@class System.Array.FunctorComparer : System.Object
System.Array.FunctorComparer = {}
---@alias CS.System.Array.FunctorComparer System.Array.FunctorComparer
CS.System.Array.FunctorComparer = System.Array.FunctorComparer

---@param comparison System.Comparison[T]
---@return System.Array.FunctorComparer
function System.Array.FunctorComparer.New(comparison) end
---@param x T
---@param y T
---@return number
function System.Array.FunctorComparer:Compare(x, y) end

---@class System.Array.SorterObjectArray : System.ValueType
System.Array.SorterObjectArray = {}
---@alias CS.System.Array.SorterObjectArray System.Array.SorterObjectArray
CS.System.Array.SorterObjectArray = System.Array.SorterObjectArray


---@class System.Array.SorterGenericArray : System.ValueType
System.Array.SorterGenericArray = {}
---@alias CS.System.Array.SorterGenericArray System.Array.SorterGenericArray
CS.System.Array.SorterGenericArray = System.Array.SorterGenericArray


---@class System.ByReference : System.ValueType
---@field Value T&
System.ByReference = {}
---@alias CS.System.ByReference System.ByReference
CS.System.ByReference = System.ByReference

---@param ref_value T
---@return System.ByReference,T
function System.ByReference.New(ref_value) end

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

---@class System.AppContext : System.Object
---@field BaseDirectory string
---@field TargetFrameworkName string
System.AppContext = {}
---@alias CS.System.AppContext System.AppContext
CS.System.AppContext = System.AppContext

---@param name string
---@return System.Object
function System.AppContext.GetData(name) end
---@param switchName string
---@param out_isEnabled boolean
---@return boolean,boolean
function System.AppContext.TryGetSwitch(switchName, out_isEnabled) end
---@param switchName string
---@param isEnabled boolean
function System.AppContext.SetSwitch(switchName, isEnabled) end

---@class System.AppContext.SwitchValueState
---@field HasFalseValue System.AppContext.SwitchValueState
---@field HasTrueValue System.AppContext.SwitchValueState
---@field HasLookedForOverride System.AppContext.SwitchValueState
---@field UnknownValue System.AppContext.SwitchValueState
System.AppContext.SwitchValueState = {}
---@alias CS.System.AppContext.SwitchValueState System.AppContext.SwitchValueState
CS.System.AppContext.SwitchValueState = System.AppContext.SwitchValueState


---@class System.AppContextSwitches : System.Object
---@field NoAsyncCurrentCulture boolean
---@field EnforceJapaneseEraYearRanges boolean
---@field FormatJapaneseFirstYearAsANumber boolean
---@field EnforceLegacyJapaneseDateParsing boolean
---@field ThrowExceptionIfDisposedCancellationTokenSource boolean
---@field PreserveEventListnerObjectIdentity boolean
---@field UseLegacyPathHandling boolean
---@field BlockLongPaths boolean
---@field SetActorAsReferenceWhenCopyingClaimsIdentity boolean
---@field DoNotAddrOfCspParentWindowHandle boolean
System.AppContextSwitches = {}
---@alias CS.System.AppContextSwitches System.AppContextSwitches
CS.System.AppContextSwitches = System.AppContextSwitches


---@class System.__Filters : System.Object
System.__Filters = {}
---@alias CS.System.__Filters System.__Filters
CS.System.__Filters = System.__Filters

---@return System.__Filters
function System.__Filters.New() end

---@class System.__HResults : System.Object
System.__HResults = {}
---@alias CS.System.__HResults System.__HResults
CS.System.__HResults = System.__HResults


---@class System.LocalDataStoreHolder : System.Object
---@field Store System.LocalDataStore
System.LocalDataStoreHolder = {}
---@alias CS.System.LocalDataStoreHolder System.LocalDataStoreHolder
CS.System.LocalDataStoreHolder = System.LocalDataStoreHolder

---@param store System.LocalDataStore
---@return System.LocalDataStoreHolder
function System.LocalDataStoreHolder.New(store) end

---@class System.LocalDataStoreElement : System.Object
---@field Value System.Object
---@field Cookie number
System.LocalDataStoreElement = {}
---@alias CS.System.LocalDataStoreElement System.LocalDataStoreElement
CS.System.LocalDataStoreElement = System.LocalDataStoreElement

---@param cookie number
---@return System.LocalDataStoreElement
function System.LocalDataStoreElement.New(cookie) end

---@class System.LocalDataStore : System.Object
System.LocalDataStore = {}
---@alias CS.System.LocalDataStore System.LocalDataStore
CS.System.LocalDataStore = System.LocalDataStore

---@param mgr System.LocalDataStoreMgr
---@param InitialCapacity number
---@return System.LocalDataStore
function System.LocalDataStore.New(mgr, InitialCapacity) end
---@param slot System.LocalDataStoreSlot
---@return System.Object
function System.LocalDataStore:GetData(slot) end
---@param slot System.LocalDataStoreSlot
---@param data System.Object
function System.LocalDataStore:SetData(slot, data) end

---@class System.LocalDataStoreSlot : System.Object
System.LocalDataStoreSlot = {}
---@alias CS.System.LocalDataStoreSlot System.LocalDataStoreSlot
CS.System.LocalDataStoreSlot = System.LocalDataStoreSlot


---@class System.LocalDataStoreMgr : System.Object
System.LocalDataStoreMgr = {}
---@alias CS.System.LocalDataStoreMgr System.LocalDataStoreMgr
CS.System.LocalDataStoreMgr = System.LocalDataStoreMgr

---@return System.LocalDataStoreMgr
function System.LocalDataStoreMgr.New() end
---@return System.LocalDataStoreHolder
function System.LocalDataStoreMgr:CreateLocalDataStore() end
---@param store System.LocalDataStore
function System.LocalDataStoreMgr:DeleteLocalDataStore(store) end
---@return System.LocalDataStoreSlot
function System.LocalDataStoreMgr:AllocateDataSlot() end
---@param name string
---@return System.LocalDataStoreSlot
function System.LocalDataStoreMgr:AllocateNamedDataSlot(name) end
---@param name string
---@return System.LocalDataStoreSlot
function System.LocalDataStoreMgr:GetNamedDataSlot(name) end
---@param name string
function System.LocalDataStoreMgr:FreeNamedDataSlot(name) end
---@param slot System.LocalDataStoreSlot
function System.LocalDataStoreMgr:ValidateSlot(slot) end

---@class System.Activator : System.Object
System.Activator = {}
---@alias CS.System.Activator System.Activator
CS.System.Activator = System.Activator

---@overload fun(type: System.Type, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, args: System.Object[], culture: System.Globalization.CultureInfo) : System.Object
---@overload fun(type: System.Type, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, args: System.Object[], culture: System.Globalization.CultureInfo, activationAttributes: System.Object[]) : System.Object
---@overload fun(type: System.Type, args: System.Object[]) : System.Object
---@overload fun(type: System.Type, args: System.Object[], activationAttributes: System.Object[]) : System.Object
---@overload fun(type: System.Type) : System.Object
---@overload fun(assemblyName: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyName: string, typeName: string, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@overload fun(type: System.Type, nonPublic: boolean) : System.Object
---@overload fun(assemblyName: string, typeName: string, ignoreCase: boolean, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, args: System.Object[], culture: System.Globalization.CultureInfo, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@overload fun(domain: System.AppDomain, assemblyName: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@overload fun(domain: System.AppDomain, assemblyName: string, typeName: string, ignoreCase: boolean, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, args: System.Object[], culture: System.Globalization.CultureInfo, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@overload fun(activationContext: System.ActivationContext) : System.Runtime.Remoting.ObjectHandle
---@param activationContext System.ActivationContext
---@param activationCustomData System.String[]
---@return System.Runtime.Remoting.ObjectHandle
function System.Activator.CreateInstance(activationContext, activationCustomData) end
---@overload fun(assemblyFile: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyFile: string, typeName: string, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@overload fun(assemblyFile: string, typeName: string, ignoreCase: boolean, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, args: System.Object[], culture: System.Globalization.CultureInfo, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@overload fun(domain: System.AppDomain, assemblyFile: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@param domain System.AppDomain
---@param assemblyFile string
---@param typeName string
---@param ignoreCase boolean
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args System.Object[]
---@param culture System.Globalization.CultureInfo
---@param activationAttributes System.Object[]
---@return System.Runtime.Remoting.ObjectHandle
function System.Activator.CreateInstanceFrom(domain, assemblyFile, typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes) end
---@overload fun(assemblyName: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@param assemblyName string
---@param typeName string
---@param hashValue System.Byte[]
---@param hashAlgorithm System.Configuration.Assemblies.AssemblyHashAlgorithm
---@return System.Runtime.Remoting.ObjectHandle
function System.Activator.CreateComInstanceFrom(assemblyName, typeName, hashValue, hashAlgorithm) end
---@overload fun(type: System.Type, url: string) : System.Object
---@param type System.Type
---@param url string
---@param state System.Object
---@return System.Object
function System.Activator.GetObject(type, url, state) end

---@class System.Attribute : System.Object
---@field TypeId System.Object
System.Attribute = {}
---@alias CS.System.Attribute System.Attribute
CS.System.Attribute = System.Attribute

---@overload fun(element: System.Reflection.MemberInfo, type: System.Type) : System.Attribute[]
---@overload fun(element: System.Reflection.MemberInfo, type: System.Type, inherit: boolean) : System.Attribute[]
---@overload fun(element: System.Reflection.MemberInfo) : System.Attribute[]
---@overload fun(element: System.Reflection.MemberInfo, inherit: boolean) : System.Attribute[]
---@overload fun(element: System.Reflection.ParameterInfo) : System.Attribute[]
---@overload fun(element: System.Reflection.ParameterInfo, attributeType: System.Type) : System.Attribute[]
---@overload fun(element: System.Reflection.ParameterInfo, attributeType: System.Type, inherit: boolean) : System.Attribute[]
---@overload fun(element: System.Reflection.ParameterInfo, inherit: boolean) : System.Attribute[]
---@overload fun(element: System.Reflection.Module, attributeType: System.Type) : System.Attribute[]
---@overload fun(element: System.Reflection.Module) : System.Attribute[]
---@overload fun(element: System.Reflection.Module, inherit: boolean) : System.Attribute[]
---@overload fun(element: System.Reflection.Module, attributeType: System.Type, inherit: boolean) : System.Attribute[]
---@overload fun(element: System.Reflection.Assembly, attributeType: System.Type) : System.Attribute[]
---@overload fun(element: System.Reflection.Assembly, attributeType: System.Type, inherit: boolean) : System.Attribute[]
---@overload fun(element: System.Reflection.Assembly) : System.Attribute[]
---@param element System.Reflection.Assembly
---@param inherit boolean
---@return System.Attribute[]
function System.Attribute.GetCustomAttributes(element, inherit) end
---@overload fun(element: System.Reflection.MemberInfo, attributeType: System.Type) : boolean
---@overload fun(element: System.Reflection.MemberInfo, attributeType: System.Type, inherit: boolean) : boolean
---@overload fun(element: System.Reflection.ParameterInfo, attributeType: System.Type) : boolean
---@overload fun(element: System.Reflection.ParameterInfo, attributeType: System.Type, inherit: boolean) : boolean
---@overload fun(element: System.Reflection.Module, attributeType: System.Type) : boolean
---@overload fun(element: System.Reflection.Module, attributeType: System.Type, inherit: boolean) : boolean
---@overload fun(element: System.Reflection.Assembly, attributeType: System.Type) : boolean
---@param element System.Reflection.Assembly
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Attribute.IsDefined(element, attributeType, inherit) end
---@overload fun(element: System.Reflection.MemberInfo, attributeType: System.Type) : System.Attribute
---@overload fun(element: System.Reflection.MemberInfo, attributeType: System.Type, inherit: boolean) : System.Attribute
---@overload fun(element: System.Reflection.ParameterInfo, attributeType: System.Type) : System.Attribute
---@overload fun(element: System.Reflection.ParameterInfo, attributeType: System.Type, inherit: boolean) : System.Attribute
---@overload fun(element: System.Reflection.Module, attributeType: System.Type) : System.Attribute
---@overload fun(element: System.Reflection.Module, attributeType: System.Type, inherit: boolean) : System.Attribute
---@overload fun(element: System.Reflection.Assembly, attributeType: System.Type) : System.Attribute
---@param element System.Reflection.Assembly
---@param attributeType System.Type
---@param inherit boolean
---@return System.Attribute
function System.Attribute.GetCustomAttribute(element, attributeType, inherit) end
---@param obj System.Object
---@return boolean
function System.Attribute:Equals(obj) end
---@return number
function System.Attribute:GetHashCode() end
---@param obj System.Object
---@return boolean
function System.Attribute:Match(obj) end
---@return boolean
function System.Attribute:IsDefaultAttribute() end

---@class System.Buffer : System.Object
System.Buffer = {}
---@alias CS.System.Buffer System.Buffer
CS.System.Buffer = System.Buffer

---@param array System.Array
---@return number
function System.Buffer.ByteLength(array) end
---@param array System.Array
---@param index number
---@return number
function System.Buffer.GetByte(array, index) end
---@param array System.Array
---@param index number
---@param value number
function System.Buffer.SetByte(array, index, value) end
---@param src System.Array
---@param srcOffset number
---@param dst System.Array
---@param dstOffset number
---@param count number
function System.Buffer.BlockCopy(src, srcOffset, dst, dstOffset, count) end
---@overload fun(source: System.Void*, destination: System.Void*, destinationSizeInBytes: number, sourceBytesToCopy: number)
---@param source System.Void*
---@param destination System.Void*
---@param destinationSizeInBytes number
---@param sourceBytesToCopy number
function System.Buffer.MemoryCopy(source, destination, destinationSizeInBytes, sourceBytesToCopy) end

---@class System.ContextBoundObject : System.MarshalByRefObject
System.ContextBoundObject = {}
---@alias CS.System.ContextBoundObject System.ContextBoundObject
CS.System.ContextBoundObject = System.ContextBoundObject


---@class System.ContextMarshalException : System.SystemException
System.ContextMarshalException = {}
---@alias CS.System.ContextMarshalException System.ContextMarshalException
CS.System.ContextMarshalException = System.ContextMarshalException

---@overload fun() : System.ContextMarshalException
---@overload fun(message: string) : System.ContextMarshalException
---@param message string
---@param inner System.Exception
---@return System.ContextMarshalException
function System.ContextMarshalException.New(message, inner) end

---@class System.ContextStaticAttribute : System.Attribute
System.ContextStaticAttribute = {}
---@alias CS.System.ContextStaticAttribute System.ContextStaticAttribute
CS.System.ContextStaticAttribute = System.ContextStaticAttribute

---@return System.ContextStaticAttribute
function System.ContextStaticAttribute.New() end

---@class System.DefaultBinder : System.Reflection.Binder
System.DefaultBinder = {}
---@alias CS.System.DefaultBinder System.DefaultBinder
CS.System.DefaultBinder = System.DefaultBinder

---@return System.DefaultBinder
function System.DefaultBinder.New() end
---@param match System.Reflection.MethodBase[]
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodBase
function System.DefaultBinder.ExactBinding(match, types, modifiers) end
---@param match System.Reflection.PropertyInfo[]
---@param returnType System.Type
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.PropertyInfo
function System.DefaultBinder.ExactPropertyBinding(match, returnType, types, modifiers) end
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.MethodBase[]
---@param ref_args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param cultureInfo System.Globalization.CultureInfo
---@param names System.String[]
---@param out_state System.Object
---@return System.Reflection.MethodBase,System.Object[],System.Object
function System.DefaultBinder:BindToMethod(bindingAttr, match, ref_args, modifiers, cultureInfo, names, out_state) end
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.FieldInfo[]
---@param value System.Object
---@param cultureInfo System.Globalization.CultureInfo
---@return System.Reflection.FieldInfo
function System.DefaultBinder:BindToField(bindingAttr, match, value, cultureInfo) end
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.PropertyInfo[]
---@param returnType System.Type
---@param indexes System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.PropertyInfo
function System.DefaultBinder:SelectProperty(bindingAttr, match, returnType, indexes, modifiers) end
---@param value System.Object
---@param type System.Type
---@param cultureInfo System.Globalization.CultureInfo
---@return System.Object
function System.DefaultBinder:ChangeType(value, type, cultureInfo) end
---@param ref_args System.Object[]
---@param state System.Object
---@return ,System.Object[]
function System.DefaultBinder:ReorderArgumentArray(ref_args, state) end
---@param bindingAttr System.Reflection.BindingFlags
---@param match System.Reflection.MethodBase[]
---@param types System.Type[]
---@param modifiers System.Reflection.ParameterModifier[]
---@return System.Reflection.MethodBase
function System.DefaultBinder:SelectMethod(bindingAttr, match, types, modifiers) end

---@class System.DefaultBinder.BinderState : System.Object
System.DefaultBinder.BinderState = {}
---@alias CS.System.DefaultBinder.BinderState System.DefaultBinder.BinderState
CS.System.DefaultBinder.BinderState = System.DefaultBinder.BinderState


---@class System.DefaultBinder.Primitives
---@field Boolean System.DefaultBinder.Primitives
---@field Char System.DefaultBinder.Primitives
---@field SByte System.DefaultBinder.Primitives
---@field Byte System.DefaultBinder.Primitives
---@field Int16 System.DefaultBinder.Primitives
---@field UInt16 System.DefaultBinder.Primitives
---@field Int32 System.DefaultBinder.Primitives
---@field UInt32 System.DefaultBinder.Primitives
---@field Int64 System.DefaultBinder.Primitives
---@field UInt64 System.DefaultBinder.Primitives
---@field Single System.DefaultBinder.Primitives
---@field Double System.DefaultBinder.Primitives
---@field Decimal System.DefaultBinder.Primitives
---@field DateTime System.DefaultBinder.Primitives
---@field String System.DefaultBinder.Primitives
System.DefaultBinder.Primitives = {}
---@alias CS.System.DefaultBinder.Primitives System.DefaultBinder.Primitives
CS.System.DefaultBinder.Primitives = System.DefaultBinder.Primitives


---@class System.Empty : System.Object
---@field Value System.Empty
System.Empty = {}
---@alias CS.System.Empty System.Empty
CS.System.Empty = System.Empty

---@return string
function System.Empty:ToString() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Empty:GetObjectData(info, context) end

---@class System.Enum : System.ValueType
System.Enum = {}
---@alias CS.System.Enum System.Enum
CS.System.Enum = System.Enum

---@overload fun(enumType: System.Type, value: string) : System.Object
---@param enumType System.Type
---@param value string
---@param ignoreCase boolean
---@return System.Object
function System.Enum.Parse(enumType, value, ignoreCase) end
---@param enumType System.Type
---@return System.Type
function System.Enum.GetUnderlyingType(enumType) end
---@param enumType System.Type
---@return System.Array
function System.Enum.GetValues(enumType) end
---@param enumType System.Type
---@param value System.Object
---@return string
function System.Enum.GetName(enumType, value) end
---@param enumType System.Type
---@return System.String[]
function System.Enum.GetNames(enumType) end
---@overload fun(enumType: System.Type, value: System.Object) : System.Object
---@overload fun(enumType: System.Type, value: number) : System.Object
---@overload fun(enumType: System.Type, value: number) : System.Object
---@overload fun(enumType: System.Type, value: number) : System.Object
---@overload fun(enumType: System.Type, value: number) : System.Object
---@overload fun(enumType: System.Type, value: number) : System.Object
---@overload fun(enumType: System.Type, value: number) : System.Object
---@overload fun(enumType: System.Type, value: number) : System.Object
---@param enumType System.Type
---@param value number
---@return System.Object
function System.Enum.ToObject(enumType, value) end
---@param enumType System.Type
---@param value System.Object
---@return boolean
function System.Enum.IsDefined(enumType, value) end
---@param enumType System.Type
---@param value System.Object
---@param format string
---@return string
function System.Enum.Format(enumType, value, format) end
---@overload fun(enumType: System.Type, value: string, ignoreCase: boolean, out_result: System.Object) : boolean, System.Object
---@param enumType System.Type
---@param value string
---@param out_result System.Object
---@return boolean,System.Object
function System.Enum.TryParse(enumType, value, out_result) end
---@param obj System.Object
---@return boolean
function System.Enum:Equals(obj) end
---@return number
function System.Enum:GetHashCode() end
---@overload fun() : string
---@param format string
---@return string
function System.Enum:ToString(format) end
---@param target System.Object
---@return number
function System.Enum:CompareTo(target) end
---@param flag System.Enum
---@return boolean
function System.Enum:HasFlag(flag) end
---@return System.TypeCode
function System.Enum:GetTypeCode() end

---@class System.Enum.ParseFailureKind
---@field None System.Enum.ParseFailureKind
---@field Argument System.Enum.ParseFailureKind
---@field ArgumentNull System.Enum.ParseFailureKind
---@field ArgumentWithParameter System.Enum.ParseFailureKind
---@field UnhandledException System.Enum.ParseFailureKind
System.Enum.ParseFailureKind = {}
---@alias CS.System.Enum.ParseFailureKind System.Enum.ParseFailureKind
CS.System.Enum.ParseFailureKind = System.Enum.ParseFailureKind


---@class System.Enum.EnumResult : System.ValueType
System.Enum.EnumResult = {}
---@alias CS.System.Enum.EnumResult System.Enum.EnumResult
CS.System.Enum.EnumResult = System.Enum.EnumResult


---@class System.Enum.ValuesAndNames : System.Object
---@field Values System.UInt64[]
---@field Names System.String[]
System.Enum.ValuesAndNames = {}
---@alias CS.System.Enum.ValuesAndNames System.Enum.ValuesAndNames
CS.System.Enum.ValuesAndNames = System.Enum.ValuesAndNames

---@param values System.UInt64[]
---@param names System.String[]
---@return System.Enum.ValuesAndNames
function System.Enum.ValuesAndNames.New(values, names) end

---@class System.Exception : System.Object
---@field Message string
---@field Data System.Collections.IDictionary
---@field InnerException System.Exception
---@field TargetSite System.Reflection.MethodBase
---@field StackTrace string
---@field HelpLink string
---@field Source string
---@field HResult number
System.Exception = {}
---@alias CS.System.Exception System.Exception
CS.System.Exception = System.Exception

---@overload fun() : System.Exception
---@overload fun(message: string) : System.Exception
---@param message string
---@param innerException System.Exception
---@return System.Exception
function System.Exception.New(message, innerException) end
---@return System.Exception
function System.Exception:GetBaseException() end
---@return string
function System.Exception:ToString() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Exception:GetObjectData(info, context) end
---@return System.Type
function System.Exception:GetType() end
---@return boolean
function System.Exception:IsExceptionIndicatingBugInCode() end

---@class System.Exception.__RestrictedErrorObject : System.Object
---@field RealErrorObject System.Object
System.Exception.__RestrictedErrorObject = {}
---@alias CS.System.Exception.__RestrictedErrorObject System.Exception.__RestrictedErrorObject
CS.System.Exception.__RestrictedErrorObject = System.Exception.__RestrictedErrorObject


---@class System.Exception.ExceptionMessageKind
---@field ThreadAbort System.Exception.ExceptionMessageKind
---@field ThreadInterrupted System.Exception.ExceptionMessageKind
---@field OutOfMemory System.Exception.ExceptionMessageKind
System.Exception.ExceptionMessageKind = {}
---@alias CS.System.Exception.ExceptionMessageKind System.Exception.ExceptionMessageKind
CS.System.Exception.ExceptionMessageKind = System.Exception.ExceptionMessageKind


---@class System.GCCollectionMode
---@field Default System.GCCollectionMode
---@field Forced System.GCCollectionMode
---@field Optimized System.GCCollectionMode
System.GCCollectionMode = {}
---@alias CS.System.GCCollectionMode System.GCCollectionMode
CS.System.GCCollectionMode = System.GCCollectionMode


---@class System.InternalGCCollectionMode
---@field NonBlocking System.InternalGCCollectionMode
---@field Blocking System.InternalGCCollectionMode
---@field Optimized System.InternalGCCollectionMode
---@field Compacting System.InternalGCCollectionMode
System.InternalGCCollectionMode = {}
---@alias CS.System.InternalGCCollectionMode System.InternalGCCollectionMode
CS.System.InternalGCCollectionMode = System.InternalGCCollectionMode


---@class System.GCNotificationStatus
---@field Succeeded System.GCNotificationStatus
---@field Failed System.GCNotificationStatus
---@field Canceled System.GCNotificationStatus
---@field Timeout System.GCNotificationStatus
---@field NotApplicable System.GCNotificationStatus
System.GCNotificationStatus = {}
---@alias CS.System.GCNotificationStatus System.GCNotificationStatus
CS.System.GCNotificationStatus = System.GCNotificationStatus


---@class System.GC : System.Object
---@field MaxGeneration number
System.GC = {}
---@alias CS.System.GC System.GC
CS.System.GC = System.GC

---@return number
function System.GC.GetAllocatedBytesForCurrentThread() end
---@param bytesAllocated number
function System.GC.AddMemoryPressure(bytesAllocated) end
---@param bytesAllocated number
function System.GC.RemoveMemoryPressure(bytesAllocated) end
---@overload fun(obj: System.Object) : number
---@param wo System.WeakReference
---@return number
function System.GC.GetGeneration(wo) end
---@overload fun(generation: number)
---@overload fun()
---@overload fun(generation: number, mode: System.GCCollectionMode)
---@overload fun(generation: number, mode: System.GCCollectionMode, blocking: boolean)
---@param generation number
---@param mode System.GCCollectionMode
---@param blocking boolean
---@param compacting boolean
function System.GC.Collect(generation, mode, blocking, compacting) end
---@param generation number
---@return number
function System.GC.CollectionCount(generation) end
---@param obj System.Object
function System.GC.KeepAlive(obj) end
function System.GC.WaitForPendingFinalizers() end
---@param obj System.Object
function System.GC.SuppressFinalize(obj) end
---@param obj System.Object
function System.GC.ReRegisterForFinalize(obj) end
---@param forceFullCollection boolean
---@return number
function System.GC.GetTotalMemory(forceFullCollection) end
---@param maxGenerationThreshold number
---@param largeObjectHeapThreshold number
function System.GC.RegisterForFullGCNotification(maxGenerationThreshold, largeObjectHeapThreshold) end
function System.GC.CancelFullGCNotification() end
---@overload fun() : System.GCNotificationStatus
---@param millisecondsTimeout number
---@return System.GCNotificationStatus
function System.GC.WaitForFullGCApproach(millisecondsTimeout) end
---@overload fun() : System.GCNotificationStatus
---@param millisecondsTimeout number
---@return System.GCNotificationStatus
function System.GC.WaitForFullGCComplete(millisecondsTimeout) end
---@overload fun(totalSize: number) : boolean
---@overload fun(totalSize: number, lohSize: number) : boolean
---@overload fun(totalSize: number, disallowFullBlockingGC: boolean) : boolean
---@param totalSize number
---@param lohSize number
---@param disallowFullBlockingGC boolean
---@return boolean
function System.GC.TryStartNoGCRegion(totalSize, lohSize, disallowFullBlockingGC) end
function System.GC.EndNoGCRegion() end

---@class System.GC.StartNoGCRegionStatus
---@field Succeeded System.GC.StartNoGCRegionStatus
---@field NotEnoughMemory System.GC.StartNoGCRegionStatus
---@field AmountTooLarge System.GC.StartNoGCRegionStatus
---@field AlreadyInProgress System.GC.StartNoGCRegionStatus
System.GC.StartNoGCRegionStatus = {}
---@alias CS.System.GC.StartNoGCRegionStatus System.GC.StartNoGCRegionStatus
CS.System.GC.StartNoGCRegionStatus = System.GC.StartNoGCRegionStatus


---@class System.GC.EndNoGCRegionStatus
---@field Succeeded System.GC.EndNoGCRegionStatus
---@field NotInProgress System.GC.EndNoGCRegionStatus
---@field GCInduced System.GC.EndNoGCRegionStatus
---@field AllocationExceeded System.GC.EndNoGCRegionStatus
System.GC.EndNoGCRegionStatus = {}
---@alias CS.System.GC.EndNoGCRegionStatus System.GC.EndNoGCRegionStatus
CS.System.GC.EndNoGCRegionStatus = System.GC.EndNoGCRegionStatus


---@class System._AppDomain
---@field FriendlyName string
---@field BaseDirectory string
---@field RelativeSearchPath string
---@field ShadowCopyFiles boolean
---@field DynamicDirectory string
---@field Evidence System.Security.Policy.Evidence
System._AppDomain = {}
---@alias CS.System._AppDomain System._AppDomain
CS.System._AppDomain = System._AppDomain

---@param out_pcTInfo number
---@return ,number
function System._AppDomain:GetTypeInfoCount(out_pcTInfo) end
---@param iTInfo number
---@param lcid number
---@param ppTInfo System.IntPtr
function System._AppDomain:GetTypeInfo(iTInfo, lcid, ppTInfo) end
---@param ref_riid System.Guid
---@param rgszNames System.IntPtr
---@param cNames number
---@param lcid number
---@param rgDispId System.IntPtr
---@return ,System.Guid
function System._AppDomain:GetIDsOfNames(ref_riid, rgszNames, cNames, lcid, rgDispId) end
---@param dispIdMember number
---@param ref_riid System.Guid
---@param lcid number
---@param wFlags number
---@param pDispParams System.IntPtr
---@param pVarResult System.IntPtr
---@param pExcepInfo System.IntPtr
---@param puArgErr System.IntPtr
---@return ,System.Guid
function System._AppDomain:Invoke(dispIdMember, ref_riid, lcid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr) end
---@return string
function System._AppDomain:ToString() end
---@param other System.Object
---@return boolean
function System._AppDomain:Equals(other) end
---@return number
function System._AppDomain:GetHashCode() end
---@return System.Type
function System._AppDomain:GetType() end
---@return System.Object
function System._AppDomain:InitializeLifetimeService() end
---@return System.Object
function System._AppDomain:GetLifetimeService() end
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, dir: string) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, evidence: System.Security.Policy.Evidence) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, requiredPermissions: System.Security.PermissionSet, optionalPermissions: System.Security.PermissionSet, refusedPermissions: System.Security.PermissionSet) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, dir: string, evidence: System.Security.Policy.Evidence) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, dir: string, requiredPermissions: System.Security.PermissionSet, optionalPermissions: System.Security.PermissionSet, refusedPermissions: System.Security.PermissionSet) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, evidence: System.Security.Policy.Evidence, requiredPermissions: System.Security.PermissionSet, optionalPermissions: System.Security.PermissionSet, refusedPermissions: System.Security.PermissionSet) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System._AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, dir: string, evidence: System.Security.Policy.Evidence, requiredPermissions: System.Security.PermissionSet, optionalPermissions: System.Security.PermissionSet, refusedPermissions: System.Security.PermissionSet) : System.Reflection.Emit.AssemblyBuilder
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@param dir string
---@param evidence System.Security.Policy.Evidence
---@param requiredPermissions System.Security.PermissionSet
---@param optionalPermissions System.Security.PermissionSet
---@param refusedPermissions System.Security.PermissionSet
---@param isSynchronized boolean
---@return System.Reflection.Emit.AssemblyBuilder
function System._AppDomain:DefineDynamicAssembly(name, access, dir, evidence, requiredPermissions, optionalPermissions, refusedPermissions, isSynchronized) end
---@overload fun(self: System._AppDomain, assemblyName: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@overload fun(self: System._AppDomain, assemblyName: string, typeName: string, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@param assemblyName string
---@param typeName string
---@param ignoreCase boolean
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args System.Object[]
---@param culture System.Globalization.CultureInfo
---@param activationAttributes System.Object[]
---@param securityAttributes System.Security.Policy.Evidence
---@return System.Runtime.Remoting.ObjectHandle
function System._AppDomain:CreateInstance(assemblyName, typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes, securityAttributes) end
---@overload fun(self: System._AppDomain, assemblyFile: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@overload fun(self: System._AppDomain, assemblyFile: string, typeName: string, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@param assemblyFile string
---@param typeName string
---@param ignoreCase boolean
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args System.Object[]
---@param culture System.Globalization.CultureInfo
---@param activationAttributes System.Object[]
---@param securityAttributes System.Security.Policy.Evidence
---@return System.Runtime.Remoting.ObjectHandle
function System._AppDomain:CreateInstanceFrom(assemblyFile, typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes, securityAttributes) end
---@overload fun(self: System._AppDomain, assemblyRef: System.Reflection.AssemblyName) : System.Reflection.Assembly
---@overload fun(self: System._AppDomain, assemblyString: string) : System.Reflection.Assembly
---@overload fun(self: System._AppDomain, rawAssembly: System.Byte[]) : System.Reflection.Assembly
---@overload fun(self: System._AppDomain, rawAssembly: System.Byte[], rawSymbolStore: System.Byte[]) : System.Reflection.Assembly
---@overload fun(self: System._AppDomain, rawAssembly: System.Byte[], rawSymbolStore: System.Byte[], securityEvidence: System.Security.Policy.Evidence) : System.Reflection.Assembly
---@overload fun(self: System._AppDomain, assemblyRef: System.Reflection.AssemblyName, assemblySecurity: System.Security.Policy.Evidence) : System.Reflection.Assembly
---@param assemblyString string
---@param assemblySecurity System.Security.Policy.Evidence
---@return System.Reflection.Assembly
function System._AppDomain:Load(assemblyString, assemblySecurity) end
---@overload fun(self: System._AppDomain, assemblyFile: string, assemblySecurity: System.Security.Policy.Evidence) : number
---@overload fun(self: System._AppDomain, assemblyFile: string) : number
---@param assemblyFile string
---@param assemblySecurity System.Security.Policy.Evidence
---@param args System.String[]
---@return number
function System._AppDomain:ExecuteAssembly(assemblyFile, assemblySecurity, args) end
---@return System.Reflection.Assembly[]
function System._AppDomain:GetAssemblies() end
---@param path string
function System._AppDomain:AppendPrivatePath(path) end
function System._AppDomain:ClearPrivatePath() end
---@param s string
function System._AppDomain:SetShadowCopyPath(s) end
function System._AppDomain:ClearShadowCopyPath() end
---@param s string
function System._AppDomain:SetCachePath(s) end
---@param name string
---@param data System.Object
function System._AppDomain:SetData(name, data) end
---@param name string
---@return System.Object
function System._AppDomain:GetData(name) end
---@param theDelegate System.CrossAppDomainDelegate
function System._AppDomain:DoCallBack(theDelegate) end
---@param domainPolicy System.Security.Policy.PolicyLevel
function System._AppDomain:SetAppDomainPolicy(domainPolicy) end
---@param policy System.Security.Principal.PrincipalPolicy
function System._AppDomain:SetPrincipalPolicy(policy) end
---@param principal System.Security.Principal.IPrincipal
function System._AppDomain:SetThreadPrincipal(principal) end

---@class System.IAppDomainSetup
---@field ApplicationBase string
---@field ApplicationName string
---@field CachePath string
---@field ConfigurationFile string
---@field DynamicBase string
---@field LicenseFile string
---@field PrivateBinPath string
---@field PrivateBinPathProbe string
---@field ShadowCopyDirectories string
---@field ShadowCopyFiles string
System.IAppDomainSetup = {}
---@alias CS.System.IAppDomainSetup System.IAppDomainSetup
CS.System.IAppDomainSetup = System.IAppDomainSetup


---@class System.ResId : System.Object
System.ResId = {}
---@alias CS.System.ResId System.ResId
CS.System.ResId = System.ResId


---@class System.CtorDelegate : System.MulticastDelegate
System.CtorDelegate = {}
---@alias CS.System.CtorDelegate System.CtorDelegate
CS.System.CtorDelegate = System.CtorDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.CtorDelegate
function System.CtorDelegate.New(object, method) end
---@param instance System.Object
function System.CtorDelegate:Invoke(instance) end
---@param instance System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.CtorDelegate:BeginInvoke(instance, callback, object) end
---@param result System.IAsyncResult
function System.CtorDelegate:EndInvoke(result) end

---@class System.TypeNameFormatFlags
---@field FormatBasic System.TypeNameFormatFlags
---@field FormatNamespace System.TypeNameFormatFlags
---@field FormatFullInst System.TypeNameFormatFlags
---@field FormatAssembly System.TypeNameFormatFlags
---@field FormatSignature System.TypeNameFormatFlags
---@field FormatNoVersion System.TypeNameFormatFlags
---@field FormatAngleBrackets System.TypeNameFormatFlags
---@field FormatStubInfo System.TypeNameFormatFlags
---@field FormatGenericParam System.TypeNameFormatFlags
---@field FormatSerialization System.TypeNameFormatFlags
System.TypeNameFormatFlags = {}
---@alias CS.System.TypeNameFormatFlags System.TypeNameFormatFlags
CS.System.TypeNameFormatFlags = System.TypeNameFormatFlags


---@class System.TypeNameKind
---@field Name System.TypeNameKind
---@field ToString System.TypeNameKind
---@field SerializationName System.TypeNameKind
---@field FullName System.TypeNameKind
System.TypeNameKind = {}
---@alias CS.System.TypeNameKind System.TypeNameKind
CS.System.TypeNameKind = System.TypeNameKind


---@class System.RuntimeType : System.Reflection.TypeInfo
---@field Module System.Reflection.Module
---@field Assembly System.Reflection.Assembly
---@field TypeHandle System.RuntimeTypeHandle
---@field BaseType System.Type
---@field UnderlyingSystemType System.Type
---@field IsEnum boolean
---@field GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field IsGenericTypeDefinition boolean
---@field IsGenericParameter boolean
---@field GenericParameterPosition number
---@field IsGenericType boolean
---@field IsConstructedGenericType boolean
---@field MemberType System.Reflection.MemberTypes
---@field ReflectedType System.Type
---@field MetadataToken number
---@field StructLayoutAttribute System.Runtime.InteropServices.StructLayoutAttribute
---@field ContainsGenericParameters boolean
---@field GUID System.Guid
---@field DeclaringMethod System.Reflection.MethodBase
---@field AssemblyQualifiedName string
---@field DeclaringType System.Type
---@field Name string
---@field Namespace string
---@field IsSecurityTransparent boolean
---@field IsSecurityCritical boolean
---@field IsSecuritySafeCritical boolean
---@field FullName string
---@field IsSZArray boolean
---@field IsByRefLike boolean
---@field IsTypeDefinition boolean
System.RuntimeType = {}
---@alias CS.System.RuntimeType System.RuntimeType
CS.System.RuntimeType = System.RuntimeType

---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.RuntimeType:GetMethods(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.RuntimeType:GetConstructors(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.RuntimeType:GetProperties(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function System.RuntimeType:GetEvents(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.RuntimeType:GetFields(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.RuntimeType:GetNestedTypes(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.RuntimeType:GetMembers(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.RuntimeType:GetEvent(name, bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.RuntimeType:GetField(name, bindingAttr) end
---@param fullname string
---@param ignoreCase boolean
---@return System.Type
function System.RuntimeType:GetInterface(fullname, ignoreCase) end
---@param fullname string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.RuntimeType:GetNestedType(fullname, bindingAttr) end
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.RuntimeType:GetMember(name, type, bindingAttr) end
---@param o System.Object
---@return boolean
function System.RuntimeType:IsInstanceOfType(o) end
---@overload fun(self: System.RuntimeType, typeInfo: System.Reflection.TypeInfo) : boolean
---@param c System.Type
---@return boolean
function System.RuntimeType:IsAssignableFrom(c) end
---@param other System.Type
---@return boolean
function System.RuntimeType:IsEquivalentTo(other) end
---@return number
function System.RuntimeType:GetArrayRank() end
---@return System.Type
function System.RuntimeType:GetElementType() end
---@return System.String[]
function System.RuntimeType:GetEnumNames() end
---@return System.Array
function System.RuntimeType:GetEnumValues() end
---@return System.Type
function System.RuntimeType:GetEnumUnderlyingType() end
---@param value System.Object
---@return boolean
function System.RuntimeType:IsEnumDefined(value) end
---@param value System.Object
---@return string
function System.RuntimeType:GetEnumName(value) end
---@return System.Type[]
function System.RuntimeType:GetGenericArguments() end
---@param instantiation System.Type[]
---@return System.Type
function System.RuntimeType:MakeGenericType(instantiation) end
---@return System.Type
function System.RuntimeType:GetGenericTypeDefinition() end
---@return System.Reflection.MemberInfo[]
function System.RuntimeType:GetDefaultMembers() end
---@param name string
---@param bindingFlags System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param providedArgs System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParams System.String[]
---@return System.Object
function System.RuntimeType:InvokeMember(name, bindingFlags, binder, target, providedArgs, modifiers, culture, namedParams) end
---@param obj System.Object
---@return boolean
function System.RuntimeType:Equals(obj) end
---@return System.Object
function System.RuntimeType:Clone() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.RuntimeType:GetObjectData(info, context) end
---@overload fun(self: System.RuntimeType, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.RuntimeType:GetCustomAttributes(attributeType, inherit) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.RuntimeType:IsDefined(attributeType, inherit) end
---@return System.Collections.Generic.IList
function System.RuntimeType:GetCustomAttributesData() end
---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.RuntimeType:MakeArrayType(rank) end
---@return System.Type
function System.RuntimeType:MakeByRefType() end
---@return System.Type
function System.RuntimeType:MakePointerType() end
---@return System.Type[]
function System.RuntimeType:GetGenericParameterConstraints() end
---@param ifaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.RuntimeType:GetInterfaceMap(ifaceType) end
---@return string
function System.RuntimeType:ToString() end
---@return System.Type[]
function System.RuntimeType:GetInterfaces() end
---@return number
function System.RuntimeType:GetHashCode() end
---@param other System.Reflection.MemberInfo
---@return boolean
function System.RuntimeType:HasSameMetadataDefinitionAs(other) end
---@param type System.Type
---@return boolean
function System.RuntimeType:IsSubclassOf(type) end

---@class System.RuntimeType.MemberListType
---@field All System.RuntimeType.MemberListType
---@field CaseSensitive System.RuntimeType.MemberListType
---@field CaseInsensitive System.RuntimeType.MemberListType
---@field HandleToInfo System.RuntimeType.MemberListType
System.RuntimeType.MemberListType = {}
---@alias CS.System.RuntimeType.MemberListType System.RuntimeType.MemberListType
CS.System.RuntimeType.MemberListType = System.RuntimeType.MemberListType


---@class System.RuntimeType.ListBuilder : System.ValueType
---@field Item T
---@field Count number
System.RuntimeType.ListBuilder = {}
---@alias CS.System.RuntimeType.ListBuilder System.RuntimeType.ListBuilder
CS.System.RuntimeType.ListBuilder = System.RuntimeType.ListBuilder

---@param capacity number
---@return System.RuntimeType.ListBuilder
function System.RuntimeType.ListBuilder.New(capacity) end
---@return T[]
function System.RuntimeType.ListBuilder:ToArray() end
---@param array System.Object[]
---@param index number
function System.RuntimeType.ListBuilder:CopyTo(array, index) end
---@param item T
function System.RuntimeType.ListBuilder:Add(item) end

---@class System.ReflectionOnlyType : System.RuntimeType
---@field TypeHandle System.RuntimeTypeHandle
System.ReflectionOnlyType = {}
---@alias CS.System.ReflectionOnlyType System.ReflectionOnlyType
CS.System.ReflectionOnlyType = System.ReflectionOnlyType


---@class System.SharedStatics : System.Object
---@field Remoting_Identity_IDGuid string
System.SharedStatics = {}
---@alias CS.System.SharedStatics System.SharedStatics
CS.System.SharedStatics = System.SharedStatics

---@return System.Security.Util.Tokenizer.StringMaker
function System.SharedStatics.GetSharedStringMaker() end
---@param ref_maker System.Security.Util.Tokenizer.StringMaker
---@return ,System.Security.Util.Tokenizer.StringMaker
function System.SharedStatics.ReleaseSharedStringMaker(ref_maker) end

---@class System.ExceptionArgument
---@field obj System.ExceptionArgument
---@field dictionary System.ExceptionArgument
---@field dictionaryCreationThreshold System.ExceptionArgument
---@field array System.ExceptionArgument
---@field info System.ExceptionArgument
---@field key System.ExceptionArgument
---@field collection System.ExceptionArgument
---@field list System.ExceptionArgument
---@field match System.ExceptionArgument
---@field converter System.ExceptionArgument
---@field queue System.ExceptionArgument
---@field stack System.ExceptionArgument
---@field capacity System.ExceptionArgument
---@field index System.ExceptionArgument
---@field startIndex System.ExceptionArgument
---@field value System.ExceptionArgument
---@field count System.ExceptionArgument
---@field arrayIndex System.ExceptionArgument
---@field name System.ExceptionArgument
---@field mode System.ExceptionArgument
---@field item System.ExceptionArgument
---@field options System.ExceptionArgument
---@field view System.ExceptionArgument
---@field sourceBytesToCopy System.ExceptionArgument
---@field start System.ExceptionArgument
---@field pointer System.ExceptionArgument
---@field ownedMemory System.ExceptionArgument
---@field text System.ExceptionArgument
---@field length System.ExceptionArgument
---@field comparer System.ExceptionArgument
---@field comparable System.ExceptionArgument
---@field exceptions System.ExceptionArgument
---@field exception System.ExceptionArgument
---@field action System.ExceptionArgument
---@field comparison System.ExceptionArgument
---@field startSegment System.ExceptionArgument
---@field endSegment System.ExceptionArgument
---@field endIndex System.ExceptionArgument
---@field task System.ExceptionArgument
---@field source System.ExceptionArgument
---@field state System.ExceptionArgument
---@field culture System.ExceptionArgument
---@field destination System.ExceptionArgument
---@field byteOffset System.ExceptionArgument
---@field minimumBufferSize System.ExceptionArgument
---@field offset System.ExceptionArgument
---@field values System.ExceptionArgument
---@field comparisonType System.ExceptionArgument
---@field s System.ExceptionArgument
---@field input System.ExceptionArgument
---@field format System.ExceptionArgument
System.ExceptionArgument = {}
---@alias CS.System.ExceptionArgument System.ExceptionArgument
CS.System.ExceptionArgument = System.ExceptionArgument


---@class System.ExceptionResource
---@field Argument_ImplementIComparable System.ExceptionResource
---@field Argument_InvalidType System.ExceptionResource
---@field Argument_InvalidArgumentForComparison System.ExceptionResource
---@field Argument_InvalidRegistryKeyPermissionCheck System.ExceptionResource
---@field ArgumentOutOfRange_NeedNonNegNum System.ExceptionResource
---@field Arg_ArrayPlusOffTooSmall System.ExceptionResource
---@field Arg_NonZeroLowerBound System.ExceptionResource
---@field Arg_RankMultiDimNotSupported System.ExceptionResource
---@field Arg_RegKeyDelHive System.ExceptionResource
---@field Arg_RegKeyStrLenBug System.ExceptionResource
---@field Arg_RegSetStrArrNull System.ExceptionResource
---@field Arg_RegSetMismatchedKind System.ExceptionResource
---@field Arg_RegSubKeyAbsent System.ExceptionResource
---@field Arg_RegSubKeyValueAbsent System.ExceptionResource
---@field Argument_AddingDuplicate System.ExceptionResource
---@field Serialization_InvalidOnDeser System.ExceptionResource
---@field Serialization_MissingKeys System.ExceptionResource
---@field Serialization_NullKey System.ExceptionResource
---@field Argument_InvalidArrayType System.ExceptionResource
---@field NotSupported_KeyCollectionSet System.ExceptionResource
---@field NotSupported_ValueCollectionSet System.ExceptionResource
---@field ArgumentOutOfRange_SmallCapacity System.ExceptionResource
---@field ArgumentOutOfRange_Index System.ExceptionResource
---@field Argument_InvalidOffLen System.ExceptionResource
---@field Argument_ItemNotExist System.ExceptionResource
---@field ArgumentOutOfRange_Count System.ExceptionResource
---@field ArgumentOutOfRange_InvalidThreshold System.ExceptionResource
---@field ArgumentOutOfRange_ListInsert System.ExceptionResource
---@field NotSupported_ReadOnlyCollection System.ExceptionResource
---@field InvalidOperation_CannotRemoveFromStackOrQueue System.ExceptionResource
---@field InvalidOperation_EmptyQueue System.ExceptionResource
---@field InvalidOperation_EnumOpCantHappen System.ExceptionResource
---@field InvalidOperation_EnumFailedVersion System.ExceptionResource
---@field InvalidOperation_EmptyStack System.ExceptionResource
---@field ArgumentOutOfRange_BiggerThanCollection System.ExceptionResource
---@field InvalidOperation_EnumNotStarted System.ExceptionResource
---@field InvalidOperation_EnumEnded System.ExceptionResource
---@field NotSupported_SortedListNestedWrite System.ExceptionResource
---@field InvalidOperation_NoValue System.ExceptionResource
---@field InvalidOperation_RegRemoveSubKey System.ExceptionResource
---@field Security_RegistryPermission System.ExceptionResource
---@field UnauthorizedAccess_RegistryNoWrite System.ExceptionResource
---@field ObjectDisposed_RegKeyClosed System.ExceptionResource
---@field NotSupported_InComparableType System.ExceptionResource
---@field Argument_InvalidRegistryOptionsCheck System.ExceptionResource
---@field Argument_InvalidRegistryViewCheck System.ExceptionResource
---@field TaskT_TransitionToFinal_AlreadyCompleted System.ExceptionResource
---@field TaskCompletionSourceT_TrySetException_NullException System.ExceptionResource
---@field TaskCompletionSourceT_TrySetException_NoExceptions System.ExceptionResource
---@field NotSupported_StringComparison System.ExceptionResource
---@field InvalidOperation_NullArray System.ExceptionResource
System.ExceptionResource = {}
---@alias CS.System.ExceptionResource System.ExceptionResource
CS.System.ExceptionResource = System.ExceptionResource


---@class System.TypedReference : System.ValueType
System.TypedReference = {}
---@alias CS.System.TypedReference System.TypedReference
CS.System.TypedReference = System.TypedReference

---@param target System.Object
---@param flds System.Reflection.FieldInfo[]
---@return System.TypedReference
function System.TypedReference.MakeTypedReference(target, flds) end
---@param value System.TypedReference
---@return System.Object
function System.TypedReference.ToObject(value) end
---@param value System.TypedReference
---@return System.Type
function System.TypedReference.GetTargetType(value) end
---@param value System.TypedReference
---@return System.RuntimeTypeHandle
function System.TypedReference.TargetTypeToken(value) end
---@param target System.TypedReference
---@param value System.Object
function System.TypedReference.SetTypedReference(target, value) end
---@return number
function System.TypedReference:GetHashCode() end
---@param o System.Object
---@return boolean
function System.TypedReference:Equals(o) end

---@class System.TypeLoadException : System.SystemException
---@field Message string
---@field TypeName string
System.TypeLoadException = {}
---@alias CS.System.TypeLoadException System.TypeLoadException
CS.System.TypeLoadException = System.TypeLoadException

---@overload fun() : System.TypeLoadException
---@overload fun(message: string) : System.TypeLoadException
---@param message string
---@param inner System.Exception
---@return System.TypeLoadException
function System.TypeLoadException.New(message, inner) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.TypeLoadException:GetObjectData(info, context) end

---@class System.UnitySerializationHolder : System.Object
System.UnitySerializationHolder = {}
---@alias CS.System.UnitySerializationHolder System.UnitySerializationHolder
CS.System.UnitySerializationHolder = System.UnitySerializationHolder

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.UnitySerializationHolder:GetObjectData(info, context) end
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Object
function System.UnitySerializationHolder:GetRealObject(context) end

---@class System.UnSafeCharBuffer : System.ValueType
---@field Length number
System.UnSafeCharBuffer = {}
---@alias CS.System.UnSafeCharBuffer System.UnSafeCharBuffer
CS.System.UnSafeCharBuffer = System.UnSafeCharBuffer

---@param buffer System.Char*
---@param bufferSize number
---@return System.UnSafeCharBuffer
function System.UnSafeCharBuffer.New(buffer, bufferSize) end
---@param stringToAppend string
function System.UnSafeCharBuffer:AppendString(stringToAppend) end

---@class System.AppContextDefaultValues : System.Object
System.AppContextDefaultValues = {}
---@alias CS.System.AppContextDefaultValues System.AppContextDefaultValues
CS.System.AppContextDefaultValues = System.AppContextDefaultValues

function System.AppContextDefaultValues.PopulateDefaultValues() end
---@param switchName string
---@param out_overrideValue boolean
---@return boolean,boolean
function System.AppContextDefaultValues.TryGetSwitchOverride(switchName, out_overrideValue) end

---@class System.AppDomain : System.MarshalByRefObject
---@field CurrentDomain System.AppDomain
---@field MonitoringIsEnabled boolean
---@field MonitoringSurvivedProcessMemorySize number
---@field SetupInformation System.AppDomainSetup
---@field ApplicationTrust System.Security.Policy.ApplicationTrust
---@field BaseDirectory string
---@field RelativeSearchPath string
---@field DynamicDirectory string
---@field ShadowCopyFiles boolean
---@field FriendlyName string
---@field Evidence System.Security.Policy.Evidence
---@field PermissionSet System.Security.PermissionSet
---@field IsHomogenous boolean
---@field IsFullyTrusted boolean
---@field DomainManager System.AppDomainManager
---@field ActivationContext System.ActivationContext
---@field ApplicationIdentity System.ApplicationIdentity
---@field Id number
---@field MonitoringSurvivedMemorySize number
---@field MonitoringTotalAllocatedMemorySize number
---@field MonitoringTotalProcessorTime System.TimeSpan
System.AppDomain = {}
---@alias CS.System.AppDomain System.AppDomain
CS.System.AppDomain = System.AppDomain

---@overload fun(friendlyName: string) : System.AppDomain
---@overload fun(friendlyName: string, securityInfo: System.Security.Policy.Evidence) : System.AppDomain
---@overload fun(friendlyName: string, securityInfo: System.Security.Policy.Evidence, info: System.AppDomainSetup) : System.AppDomain
---@overload fun(friendlyName: string, securityInfo: System.Security.Policy.Evidence, appBasePath: string, appRelativeSearchPath: string, shadowCopyFiles: boolean) : System.AppDomain
---@overload fun(friendlyName: string, securityInfo: System.Security.Policy.Evidence, info: System.AppDomainSetup, grantSet: System.Security.PermissionSet, fullTrustAssemblies: System.Security.Policy.StrongName[]) : System.AppDomain
---@param friendlyName string
---@param securityInfo System.Security.Policy.Evidence
---@param appBasePath string
---@param appRelativeSearchPath string
---@param shadowCopyFiles boolean
---@param adInit System.AppDomainInitializer
---@param adInitArgs System.String[]
---@return System.AppDomain
function System.AppDomain.CreateDomain(friendlyName, securityInfo, appBasePath, appRelativeSearchPath, shadowCopyFiles, adInit, adInitArgs) end
---@param domain System.AppDomain
function System.AppDomain.Unload(domain) end
---@overload fun(self: System.AppDomain, assemblyName: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@param assemblyFile string
---@param typeName string
---@param hashValue System.Byte[]
---@param hashAlgorithm System.Configuration.Assemblies.AssemblyHashAlgorithm
---@return System.Runtime.Remoting.ObjectHandle
function System.AppDomain:CreateComInstanceFrom(assemblyFile, typeName, hashValue, hashAlgorithm) end
---@overload fun(self: System.AppDomain, assemblyName: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@overload fun(self: System.AppDomain, assemblyName: string, typeName: string, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@param assemblyName string
---@param typeName string
---@param ignoreCase boolean
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args System.Object[]
---@param culture System.Globalization.CultureInfo
---@param activationAttributes System.Object[]
---@return System.Runtime.Remoting.ObjectHandle
function System.AppDomain:CreateInstance(assemblyName, typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes) end
---@overload fun(self: System.AppDomain, assemblyName: string, typeName: string) : System.Object
---@overload fun(self: System.AppDomain, assemblyName: string, typeName: string, activationAttributes: System.Object[]) : System.Object
---@param assemblyName string
---@param typeName string
---@param ignoreCase boolean
---@param bindingAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param args System.Object[]
---@param culture System.Globalization.CultureInfo
---@param activationAttributes System.Object[]
---@return System.Object
function System.AppDomain:CreateInstanceAndUnwrap(assemblyName, typeName, ignoreCase, bindingAttr, binder, args, culture, activationAttributes) end
---@overload fun(self: System.AppDomain, assemblyFile: string, typeName: string, ignoreCase: boolean, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, args: System.Object[], culture: System.Globalization.CultureInfo, activationAttributes: System.Object[]) : System.Runtime.Remoting.ObjectHandle
---@overload fun(self: System.AppDomain, assemblyFile: string, typeName: string) : System.Runtime.Remoting.ObjectHandle
---@param assemblyFile string
---@param typeName string
---@param activationAttributes System.Object[]
---@return System.Runtime.Remoting.ObjectHandle
function System.AppDomain:CreateInstanceFrom(assemblyFile, typeName, activationAttributes) end
---@overload fun(self: System.AppDomain, assemblyFile: string, typeName: string, ignoreCase: boolean, bindingAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, args: System.Object[], culture: System.Globalization.CultureInfo, activationAttributes: System.Object[]) : System.Object
---@overload fun(self: System.AppDomain, assemblyName: string, typeName: string) : System.Object
---@param assemblyName string
---@param typeName string
---@param activationAttributes System.Object[]
---@return System.Object
function System.AppDomain:CreateInstanceFromAndUnwrap(assemblyName, typeName, activationAttributes) end
---@overload fun(self: System.AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System.AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, dir: string) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System.AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, assemblyAttributes: System.Collections.Generic.IEnumerable) : System.Reflection.Emit.AssemblyBuilder
---@overload fun(self: System.AppDomain, name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess, dir: string, isSynchronized: boolean, assemblyAttributes: System.Collections.Generic.IEnumerable) : System.Reflection.Emit.AssemblyBuilder
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@param assemblyAttributes System.Collections.Generic.IEnumerable
---@param securityContextSource System.Security.SecurityContextSource
---@return System.Reflection.Emit.AssemblyBuilder
function System.AppDomain:DefineDynamicAssembly(name, access, assemblyAttributes, securityContextSource) end
---@param callBackDelegate System.CrossAppDomainDelegate
function System.AppDomain:DoCallBack(callBackDelegate) end
---@overload fun(self: System.AppDomain, assemblyFile: string) : number
---@overload fun(self: System.AppDomain, assemblyFile: string, args: System.String[]) : number
---@param assemblyFile string
---@param args System.String[]
---@param hashValue System.Byte[]
---@param hashAlgorithm System.Configuration.Assemblies.AssemblyHashAlgorithm
---@return number
function System.AppDomain:ExecuteAssembly(assemblyFile, args, hashValue, hashAlgorithm) end
---@return System.Reflection.Assembly[]
function System.AppDomain:GetAssemblies() end
---@param name string
---@return System.Object
function System.AppDomain:GetData(name) end
---@return System.Type
function System.AppDomain:GetType() end
---@return System.Object
function System.AppDomain:InitializeLifetimeService() end
---@overload fun(self: System.AppDomain, assemblyRef: System.Reflection.AssemblyName) : System.Reflection.Assembly
---@overload fun(self: System.AppDomain, assemblyString: string) : System.Reflection.Assembly
---@overload fun(self: System.AppDomain, rawAssembly: System.Byte[]) : System.Reflection.Assembly
---@param rawAssembly System.Byte[]
---@param rawSymbolStore System.Byte[]
---@return System.Reflection.Assembly
function System.AppDomain:Load(rawAssembly, rawSymbolStore) end
---@param policy System.Security.Principal.PrincipalPolicy
function System.AppDomain:SetPrincipalPolicy(policy) end
---@param principal System.Security.Principal.IPrincipal
function System.AppDomain:SetThreadPrincipal(principal) end
---@return boolean
function System.AppDomain:IsFinalizingForUnload() end
---@overload fun(self: System.AppDomain, name: string, data: System.Object)
---@param name string
---@param data System.Object
---@param permission System.Security.IPermission
function System.AppDomain:SetData(name, data, permission) end
---@return string
function System.AppDomain:ToString() end
---@param assemblyName string
---@return string
function System.AppDomain:ApplyPolicy(assemblyName) end
---@overload fun(self: System.AppDomain, assemblyName: string) : number
---@overload fun(self: System.AppDomain, assemblyName: string, args: System.String[]) : number
---@param assemblyName System.Reflection.AssemblyName
---@param args System.String[]
---@return number
function System.AppDomain:ExecuteAssemblyByName(assemblyName, args) end
---@return boolean
function System.AppDomain:IsDefaultAppDomain() end
---@return System.Reflection.Assembly[]
function System.AppDomain:ReflectionOnlyGetAssemblies() end
---@param value string
---@return System.Nullable
function System.AppDomain:IsCompatibilitySwitchSet(value) end

---@class System.AppDomain.Loader : System.Object
System.AppDomain.Loader = {}
---@alias CS.System.AppDomain.Loader System.AppDomain.Loader
CS.System.AppDomain.Loader = System.AppDomain.Loader

---@param assembly string
---@return System.AppDomain.Loader
function System.AppDomain.Loader.New(assembly) end
function System.AppDomain.Loader:Load() end

---@class System.AppDomain.Initializer : System.Object
System.AppDomain.Initializer = {}
---@alias CS.System.AppDomain.Initializer System.AppDomain.Initializer
CS.System.AppDomain.Initializer = System.AppDomain.Initializer

---@param initializer System.AppDomainInitializer
---@param arguments System.String[]
---@return System.AppDomain.Initializer
function System.AppDomain.Initializer.New(initializer, arguments) end
function System.AppDomain.Initializer:Initialize() end

---@class System.Array_ReferenceSources : System.Object
System.Array_ReferenceSources = {}
---@alias CS.System.Array_ReferenceSources System.Array_ReferenceSources
CS.System.Array_ReferenceSources = System.Array_ReferenceSources


---@class System.BCLDebugLogLevel
---@field Trace System.BCLDebugLogLevel
---@field Status System.BCLDebugLogLevel
---@field Warning System.BCLDebugLogLevel
---@field Error System.BCLDebugLogLevel
---@field Panic System.BCLDebugLogLevel
System.BCLDebugLogLevel = {}
---@alias CS.System.BCLDebugLogLevel System.BCLDebugLogLevel
CS.System.BCLDebugLogLevel = System.BCLDebugLogLevel


---@class System.BCLDebug : System.Object
System.BCLDebug = {}
---@alias CS.System.BCLDebug System.BCLDebug
CS.System.BCLDebug = System.BCLDebug

---@param condition boolean
---@param message string
function System.BCLDebug.Assert(condition, message) end
---@overload fun(message: string)
---@overload fun(switchName: string, message: string)
---@param switchName string
---@param level System.BCLDebugLogLevel
---@param messages System.Object[]
function System.BCLDebug.Log(switchName, level, messages) end
---@param switchName string
---@param messages System.Object[]
function System.BCLDebug.Trace(switchName, messages) end

---@class System.CLRConfig : System.Object
System.CLRConfig = {}
---@alias CS.System.CLRConfig System.CLRConfig
CS.System.CLRConfig = System.CLRConfig

---@return System.CLRConfig
function System.CLRConfig.New() end

---@class System.CompatibilitySwitches : System.Object
---@field IsAppEarlierThanSilverlight4 boolean
---@field IsAppEarlierThanWindowsPhone8 boolean
System.CompatibilitySwitches = {}
---@alias CS.System.CompatibilitySwitches System.CompatibilitySwitches
CS.System.CompatibilitySwitches = System.CompatibilitySwitches


---@class System.Environment : System.Object
---@field CommandLine string
---@field CurrentDirectory string
---@field CurrentManagedThreadId number
---@field ExitCode number
---@field HasShutdownStarted boolean
---@field MachineName string
---@field NewLine string
---@field OSVersion System.OperatingSystem
---@field StackTrace string
---@field SystemDirectory string
---@field TickCount number
---@field UserDomainName string
---@field UserInteractive boolean
---@field UserName string
---@field Version System.Version
---@field WorkingSet number
---@field Is64BitOperatingSystem boolean
---@field SystemPageSize number
---@field Is64BitProcess boolean
---@field ProcessorCount number
System.Environment = {}
---@alias CS.System.Environment System.Environment
CS.System.Environment = System.Environment

---@param exitCode number
function System.Environment.Exit(exitCode) end
---@param name string
---@return string
function System.Environment.ExpandEnvironmentVariables(name) end
---@return System.String[]
function System.Environment.GetCommandLineArgs() end
---@overload fun(variable: string) : string
---@param variable string
---@param target System.EnvironmentVariableTarget
---@return string
function System.Environment.GetEnvironmentVariable(variable, target) end
---@overload fun() : System.Collections.IDictionary
---@param target System.EnvironmentVariableTarget
---@return System.Collections.IDictionary
function System.Environment.GetEnvironmentVariables(target) end
---@overload fun(folder: System.Environment.SpecialFolder) : string
---@param folder System.Environment.SpecialFolder
---@param option System.Environment.SpecialFolderOption
---@return string
function System.Environment.GetFolderPath(folder, option) end
---@return System.String[]
function System.Environment.GetLogicalDrives() end
---@overload fun(variable: string, value: string)
---@param variable string
---@param value string
---@param target System.EnvironmentVariableTarget
function System.Environment.SetEnvironmentVariable(variable, value, target) end
---@overload fun(message: string)
---@param message string
---@param exception System.Exception
function System.Environment.FailFast(message, exception) end

---@class System.Environment.SpecialFolder
---@field MyDocuments System.Environment.SpecialFolder
---@field Desktop System.Environment.SpecialFolder
---@field MyComputer System.Environment.SpecialFolder
---@field Programs System.Environment.SpecialFolder
---@field Personal System.Environment.SpecialFolder
---@field Favorites System.Environment.SpecialFolder
---@field Startup System.Environment.SpecialFolder
---@field Recent System.Environment.SpecialFolder
---@field SendTo System.Environment.SpecialFolder
---@field StartMenu System.Environment.SpecialFolder
---@field MyMusic System.Environment.SpecialFolder
---@field DesktopDirectory System.Environment.SpecialFolder
---@field Templates System.Environment.SpecialFolder
---@field ApplicationData System.Environment.SpecialFolder
---@field LocalApplicationData System.Environment.SpecialFolder
---@field InternetCache System.Environment.SpecialFolder
---@field Cookies System.Environment.SpecialFolder
---@field History System.Environment.SpecialFolder
---@field CommonApplicationData System.Environment.SpecialFolder
---@field System System.Environment.SpecialFolder
---@field ProgramFiles System.Environment.SpecialFolder
---@field MyPictures System.Environment.SpecialFolder
---@field CommonProgramFiles System.Environment.SpecialFolder
---@field MyVideos System.Environment.SpecialFolder
---@field NetworkShortcuts System.Environment.SpecialFolder
---@field Fonts System.Environment.SpecialFolder
---@field CommonStartMenu System.Environment.SpecialFolder
---@field CommonPrograms System.Environment.SpecialFolder
---@field CommonStartup System.Environment.SpecialFolder
---@field CommonDesktopDirectory System.Environment.SpecialFolder
---@field PrinterShortcuts System.Environment.SpecialFolder
---@field Windows System.Environment.SpecialFolder
---@field UserProfile System.Environment.SpecialFolder
---@field SystemX86 System.Environment.SpecialFolder
---@field ProgramFilesX86 System.Environment.SpecialFolder
---@field CommonProgramFilesX86 System.Environment.SpecialFolder
---@field CommonTemplates System.Environment.SpecialFolder
---@field CommonDocuments System.Environment.SpecialFolder
---@field CommonAdminTools System.Environment.SpecialFolder
---@field AdminTools System.Environment.SpecialFolder
---@field CommonMusic System.Environment.SpecialFolder
---@field CommonPictures System.Environment.SpecialFolder
---@field CommonVideos System.Environment.SpecialFolder
---@field Resources System.Environment.SpecialFolder
---@field LocalizedResources System.Environment.SpecialFolder
---@field CommonOemLinks System.Environment.SpecialFolder
---@field CDBurning System.Environment.SpecialFolder
System.Environment.SpecialFolder = {}
---@alias CS.System.Environment.SpecialFolder System.Environment.SpecialFolder
CS.System.Environment.SpecialFolder = System.Environment.SpecialFolder


---@class System.Environment.SpecialFolderOption
---@field None System.Environment.SpecialFolderOption
---@field DoNotVerify System.Environment.SpecialFolderOption
---@field Create System.Environment.SpecialFolderOption
System.Environment.SpecialFolderOption = {}
---@alias CS.System.Environment.SpecialFolderOption System.Environment.SpecialFolderOption
CS.System.Environment.SpecialFolderOption = System.Environment.SpecialFolderOption


---@class System.IRuntimeMethodInfo
---@field Value System.RuntimeMethodHandleInternal
System.IRuntimeMethodInfo = {}
---@alias CS.System.IRuntimeMethodInfo System.IRuntimeMethodInfo
CS.System.IRuntimeMethodInfo = System.IRuntimeMethodInfo


---@class System.RuntimeMethodHandleInternal : System.ValueType
System.RuntimeMethodHandleInternal = {}
---@alias CS.System.RuntimeMethodHandleInternal System.RuntimeMethodHandleInternal
CS.System.RuntimeMethodHandleInternal = System.RuntimeMethodHandleInternal


---@class System.MonoTypeInfo : System.Object
---@field full_name string
---@field default_ctor System.Reflection.RuntimeConstructorInfo
System.MonoTypeInfo = {}
---@alias CS.System.MonoTypeInfo System.MonoTypeInfo
CS.System.MonoTypeInfo = System.MonoTypeInfo

---@return System.MonoTypeInfo
function System.MonoTypeInfo.New() end

---@class System.TypeNameParser : System.Object
System.TypeNameParser = {}
---@alias CS.System.TypeNameParser System.TypeNameParser
CS.System.TypeNameParser = System.TypeNameParser

---@return System.TypeNameParser
function System.TypeNameParser.New() end

---@class System.ActivationContext : System.Object
---@field Form System.ActivationContext.ContextForm
---@field Identity System.ApplicationIdentity
---@field ApplicationManifestBytes System.Byte[]
---@field DeploymentManifestBytes System.Byte[]
System.ActivationContext = {}
---@alias CS.System.ActivationContext System.ActivationContext
CS.System.ActivationContext = System.ActivationContext

---@overload fun(identity: System.ApplicationIdentity) : System.ActivationContext
---@param identity System.ApplicationIdentity
---@param manifestPaths System.String[]
---@return System.ActivationContext
function System.ActivationContext.CreatePartialActivationContext(identity, manifestPaths) end
function System.ActivationContext:Dispose() end

---@class System.ActivationContext.ContextForm
---@field Loose System.ActivationContext.ContextForm
---@field StoreBounded System.ActivationContext.ContextForm
System.ActivationContext.ContextForm = {}
---@alias CS.System.ActivationContext.ContextForm System.ActivationContext.ContextForm
CS.System.ActivationContext.ContextForm = System.ActivationContext.ContextForm


---@class System.AppDomainInitializer : System.MulticastDelegate
System.AppDomainInitializer = {}
---@alias CS.System.AppDomainInitializer System.AppDomainInitializer
CS.System.AppDomainInitializer = System.AppDomainInitializer

---@param object System.Object
---@param method System.IntPtr
---@return System.AppDomainInitializer
function System.AppDomainInitializer.New(object, method) end
---@param args System.String[]
function System.AppDomainInitializer:Invoke(args) end
---@param args System.String[]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.AppDomainInitializer:BeginInvoke(args, callback, object) end
---@param result System.IAsyncResult
function System.AppDomainInitializer:EndInvoke(result) end

---@class System.AppDomainManager : System.MarshalByRefObject
---@field ApplicationActivator System.Runtime.Hosting.ApplicationActivator
---@field EntryAssembly System.Reflection.Assembly
---@field HostExecutionContextManager System.Threading.HostExecutionContextManager
---@field HostSecurityManager System.Security.HostSecurityManager
---@field InitializationFlags System.AppDomainManagerInitializationOptions
System.AppDomainManager = {}
---@alias CS.System.AppDomainManager System.AppDomainManager
CS.System.AppDomainManager = System.AppDomainManager

---@return System.AppDomainManager
function System.AppDomainManager.New() end
---@param friendlyName string
---@param securityInfo System.Security.Policy.Evidence
---@param appDomainInfo System.AppDomainSetup
---@return System.AppDomain
function System.AppDomainManager:CreateDomain(friendlyName, securityInfo, appDomainInfo) end
---@param appDomainInfo System.AppDomainSetup
function System.AppDomainManager:InitializeNewDomain(appDomainInfo) end
---@param state System.Security.SecurityState
---@return boolean
function System.AppDomainManager:CheckSecuritySettings(state) end

---@class System.AppDomainSetup : System.Object
---@field ApplicationBase string
---@field ApplicationName string
---@field CachePath string
---@field ConfigurationFile string
---@field DisallowPublisherPolicy boolean
---@field DynamicBase string
---@field LicenseFile string
---@field LoaderOptimization System.LoaderOptimization
---@field AppDomainManagerAssembly string
---@field AppDomainManagerType string
---@field PartialTrustVisibleAssemblies System.String[]
---@field PrivateBinPath string
---@field PrivateBinPathProbe string
---@field ShadowCopyDirectories string
---@field ShadowCopyFiles string
---@field DisallowBindingRedirects boolean
---@field DisallowCodeDownload boolean
---@field TargetFrameworkName string
---@field ActivationArguments System.Runtime.Hosting.ActivationArguments
---@field AppDomainInitializer System.AppDomainInitializer
---@field AppDomainInitializerArguments System.String[]
---@field ApplicationTrust System.Security.Policy.ApplicationTrust
---@field DisallowApplicationBaseProbing boolean
---@field SandboxInterop boolean
System.AppDomainSetup = {}
---@alias CS.System.AppDomainSetup System.AppDomainSetup
CS.System.AppDomainSetup = System.AppDomainSetup

---@overload fun() : System.AppDomainSetup
---@overload fun(activationArguments: System.Runtime.Hosting.ActivationArguments) : System.AppDomainSetup
---@param activationContext System.ActivationContext
---@return System.AppDomainSetup
function System.AppDomainSetup.New(activationContext) end
---@return System.Byte[]
function System.AppDomainSetup:GetConfigurationBytes() end
---@param value System.Byte[]
function System.AppDomainSetup:SetConfigurationBytes(value) end
---@param switches System.Collections.Generic.IEnumerable
function System.AppDomainSetup:SetCompatibilitySwitches(switches) end
---@param functionName string
---@param functionVersion number
---@param functionPointer System.IntPtr
function System.AppDomainSetup:SetNativeFunction(functionName, functionVersion, functionPointer) end

---@class System.ApplicationIdentity : System.Object
---@field CodeBase string
---@field FullName string
System.ApplicationIdentity = {}
---@alias CS.System.ApplicationIdentity System.ApplicationIdentity
CS.System.ApplicationIdentity = System.ApplicationIdentity

---@param applicationIdentityFullName string
---@return System.ApplicationIdentity
function System.ApplicationIdentity.New(applicationIdentityFullName) end
---@return string
function System.ApplicationIdentity:ToString() end

---@class System.ArgIterator : System.ValueType
System.ArgIterator = {}
---@alias CS.System.ArgIterator System.ArgIterator
CS.System.ArgIterator = System.ArgIterator

---@overload fun(arglist: System.RuntimeArgumentHandle) : System.ArgIterator
---@param arglist System.RuntimeArgumentHandle
---@param ptr System.Void*
---@return System.ArgIterator
function System.ArgIterator.New(arglist, ptr) end
function System.ArgIterator:End() end
---@param o System.Object
---@return boolean
function System.ArgIterator:Equals(o) end
---@return number
function System.ArgIterator:GetHashCode() end
---@overload fun() : System.TypedReference
---@param rth System.RuntimeTypeHandle
---@return System.TypedReference
function System.ArgIterator:GetNextArg(rth) end
---@return System.RuntimeTypeHandle
function System.ArgIterator:GetNextArgType() end
---@return number
function System.ArgIterator:GetRemainingCount() end

---@class System.Console : System.Object
---@field Error System.IO.TextWriter
---@field Out System.IO.TextWriter
---@field In System.IO.TextReader
---@field InputEncoding System.Text.Encoding
---@field OutputEncoding System.Text.Encoding
---@field BackgroundColor System.ConsoleColor
---@field BufferHeight number
---@field BufferWidth number
---@field CapsLock boolean
---@field CursorLeft number
---@field CursorTop number
---@field CursorSize number
---@field CursorVisible boolean
---@field ForegroundColor System.ConsoleColor
---@field KeyAvailable boolean
---@field LargestWindowHeight number
---@field LargestWindowWidth number
---@field NumberLock boolean
---@field Title string
---@field TreatControlCAsInput boolean
---@field WindowHeight number
---@field WindowLeft number
---@field WindowTop number
---@field WindowWidth number
---@field IsErrorRedirected boolean
---@field IsOutputRedirected boolean
---@field IsInputRedirected boolean
System.Console = {}
---@alias CS.System.Console System.Console
CS.System.Console = System.Console

---@overload fun() : System.IO.Stream
---@param bufferSize number
---@return System.IO.Stream
function System.Console.OpenStandardError(bufferSize) end
---@overload fun() : System.IO.Stream
---@param bufferSize number
---@return System.IO.Stream
function System.Console.OpenStandardInput(bufferSize) end
---@overload fun() : System.IO.Stream
---@param bufferSize number
---@return System.IO.Stream
function System.Console.OpenStandardOutput(bufferSize) end
---@param newError System.IO.TextWriter
function System.Console.SetError(newError) end
---@param newIn System.IO.TextReader
function System.Console.SetIn(newIn) end
---@param newOut System.IO.TextWriter
function System.Console.SetOut(newOut) end
---@overload fun(value: boolean)
---@overload fun(value: System.Char)
---@overload fun(buffer: System.Char[])
---@overload fun(value: System.Decimal)
---@overload fun(value: number)
---@overload fun(value: number)
---@overload fun(value: number)
---@overload fun(value: System.Object)
---@overload fun(value: number)
---@overload fun(value: string)
---@overload fun(value: number)
---@overload fun(value: number)
---@overload fun(format: string, arg0: System.Object)
---@overload fun(format: string, arg: System.Object[])
---@overload fun(buffer: System.Char[], index: number, count: number)
---@overload fun(format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@param format string
---@param arg0 System.Object
---@param arg1 System.Object
---@param arg2 System.Object
---@param arg3 System.Object
function System.Console.Write(format, arg0, arg1, arg2, arg3) end
---@overload fun()
---@overload fun(value: boolean)
---@overload fun(value: System.Char)
---@overload fun(buffer: System.Char[])
---@overload fun(value: System.Decimal)
---@overload fun(value: number)
---@overload fun(value: number)
---@overload fun(value: number)
---@overload fun(value: System.Object)
---@overload fun(value: number)
---@overload fun(value: string)
---@overload fun(value: number)
---@overload fun(value: number)
---@overload fun(format: string, arg0: System.Object)
---@overload fun(format: string, arg: System.Object[])
---@overload fun(buffer: System.Char[], index: number, count: number)
---@overload fun(format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@param format string
---@param arg0 System.Object
---@param arg1 System.Object
---@param arg2 System.Object
---@param arg3 System.Object
function System.Console.WriteLine(format, arg0, arg1, arg2, arg3) end
---@return number
function System.Console.Read() end
---@return string
function System.Console.ReadLine() end
---@overload fun()
---@param frequency number
---@param duration number
function System.Console.Beep(frequency, duration) end
function System.Console.Clear() end
---@overload fun(sourceLeft: number, sourceTop: number, sourceWidth: number, sourceHeight: number, targetLeft: number, targetTop: number)
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
---@param sourceChar System.Char
---@param sourceForeColor System.ConsoleColor
---@param sourceBackColor System.ConsoleColor
function System.Console.MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop, sourceChar, sourceForeColor, sourceBackColor) end
---@overload fun() : System.ConsoleKeyInfo
---@param intercept boolean
---@return System.ConsoleKeyInfo
function System.Console.ReadKey(intercept) end
function System.Console.ResetColor() end
---@param width number
---@param height number
function System.Console.SetBufferSize(width, height) end
---@param left number
---@param top number
function System.Console.SetCursorPosition(left, top) end
---@param left number
---@param top number
function System.Console.SetWindowPosition(left, top) end
---@param width number
---@param height number
function System.Console.SetWindowSize(width, height) end

---@class System.Console.WindowsConsole : System.Object
---@field ctrlHandlerAdded boolean
System.Console.WindowsConsole = {}
---@alias CS.System.Console.WindowsConsole System.Console.WindowsConsole
CS.System.Console.WindowsConsole = System.Console.WindowsConsole

---@return System.Console.WindowsConsole
function System.Console.WindowsConsole.New() end
---@return number
function System.Console.WindowsConsole.GetInputCodePage() end
---@return number
function System.Console.WindowsConsole.GetOutputCodePage() end
function System.Console.WindowsConsole.AddCtrlHandler() end
function System.Console.WindowsConsole.RemoveCtrlHandler() end

---@class System.Console.WindowsConsole.WindowsCancelHandler : System.MulticastDelegate
System.Console.WindowsConsole.WindowsCancelHandler = {}
---@alias CS.System.Console.WindowsConsole.WindowsCancelHandler System.Console.WindowsConsole.WindowsCancelHandler
CS.System.Console.WindowsConsole.WindowsCancelHandler = System.Console.WindowsConsole.WindowsCancelHandler

---@param object System.Object
---@param method System.IntPtr
---@return System.Console.WindowsConsole.WindowsCancelHandler
function System.Console.WindowsConsole.WindowsCancelHandler.New(object, method) end
---@param keyCode number
---@return boolean
function System.Console.WindowsConsole.WindowsCancelHandler:Invoke(keyCode) end
---@param keyCode number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Console.WindowsConsole.WindowsCancelHandler:BeginInvoke(keyCode, callback, object) end
---@param result System.IAsyncResult
---@return boolean
function System.Console.WindowsConsole.WindowsCancelHandler:EndInvoke(result) end

---@class System.ConsoleDriver : System.Object
---@field Initialized boolean
---@field BackgroundColor System.ConsoleColor
---@field BufferHeight number
---@field BufferWidth number
---@field CapsLock boolean
---@field CursorLeft number
---@field CursorSize number
---@field CursorTop number
---@field CursorVisible boolean
---@field KeyAvailable boolean
---@field ForegroundColor System.ConsoleColor
---@field LargestWindowHeight number
---@field LargestWindowWidth number
---@field NumberLock boolean
---@field Title string
---@field TreatControlCAsInput boolean
---@field WindowHeight number
---@field WindowLeft number
---@field WindowTop number
---@field WindowWidth number
---@field IsErrorRedirected boolean
---@field IsOutputRedirected boolean
---@field IsInputRedirected boolean
---@field IsConsole boolean
System.ConsoleDriver = {}
---@alias CS.System.ConsoleDriver System.ConsoleDriver
CS.System.ConsoleDriver = System.ConsoleDriver

---@param frequency number
---@param duration number
function System.ConsoleDriver.Beep(frequency, duration) end
function System.ConsoleDriver.Clear() end
---@overload fun(sourceLeft: number, sourceTop: number, sourceWidth: number, sourceHeight: number, targetLeft: number, targetTop: number)
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
---@param sourceChar System.Char
---@param sourceForeColor System.ConsoleColor
---@param sourceBackColor System.ConsoleColor
function System.ConsoleDriver.MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop, sourceChar, sourceForeColor, sourceBackColor) end
function System.ConsoleDriver.Init() end
---@return number
function System.ConsoleDriver.Read() end
---@return string
function System.ConsoleDriver.ReadLine() end
---@param intercept boolean
---@return System.ConsoleKeyInfo
function System.ConsoleDriver.ReadKey(intercept) end
function System.ConsoleDriver.ResetColor() end
---@param width number
---@param height number
function System.ConsoleDriver.SetBufferSize(width, height) end
---@param left number
---@param top number
function System.ConsoleDriver.SetCursorPosition(left, top) end
---@param left number
---@param top number
function System.ConsoleDriver.SetWindowPosition(left, top) end
---@param width number
---@param height number
function System.ConsoleDriver.SetWindowSize(width, height) end

---@class System.ControlCharacters : System.Object
---@field Intr number
---@field Quit number
---@field Erase number
---@field Kill number
---@field EOF number
---@field Time number
---@field Min number
---@field SWTC number
---@field Start number
---@field Stop number
---@field Susp number
---@field EOL number
---@field Reprint number
---@field Discard number
---@field WErase number
---@field LNext number
---@field EOL2 number
System.ControlCharacters = {}
---@alias CS.System.ControlCharacters System.ControlCharacters
CS.System.ControlCharacters = System.ControlCharacters

---@return System.ControlCharacters
function System.ControlCharacters.New() end

---@class System.CrossAppDomainDelegate : System.MulticastDelegate
System.CrossAppDomainDelegate = {}
---@alias CS.System.CrossAppDomainDelegate System.CrossAppDomainDelegate
CS.System.CrossAppDomainDelegate = System.CrossAppDomainDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.CrossAppDomainDelegate
function System.CrossAppDomainDelegate.New(object, method) end
function System.CrossAppDomainDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.CrossAppDomainDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function System.CrossAppDomainDelegate:EndInvoke(result) end

---@class System.DelegateData : System.Object
---@field target_type System.Type
---@field method_name string
---@field curried_first_arg boolean
System.DelegateData = {}
---@alias CS.System.DelegateData System.DelegateData
CS.System.DelegateData = System.DelegateData

---@return System.DelegateData
function System.DelegateData.New() end

---@class System.Delegate : System.Object
---@field Method System.Reflection.MethodInfo
---@field Target System.Object
System.Delegate = {}
---@alias CS.System.Delegate System.Delegate
CS.System.Delegate = System.Delegate

---@overload fun(type: System.Type, firstArgument: System.Object, method: System.Reflection.MethodInfo, throwOnBindFailure: boolean) : System.Delegate
---@overload fun(type: System.Type, firstArgument: System.Object, method: System.Reflection.MethodInfo) : System.Delegate
---@overload fun(type: System.Type, method: System.Reflection.MethodInfo, throwOnBindFailure: boolean) : System.Delegate
---@overload fun(type: System.Type, method: System.Reflection.MethodInfo) : System.Delegate
---@overload fun(type: System.Type, target: System.Object, method: string) : System.Delegate
---@overload fun(type: System.Type, target: System.Type, method: string, ignoreCase: boolean, throwOnBindFailure: boolean) : System.Delegate
---@overload fun(type: System.Type, target: System.Type, method: string) : System.Delegate
---@overload fun(type: System.Type, target: System.Type, method: string, ignoreCase: boolean) : System.Delegate
---@overload fun(type: System.Type, target: System.Object, method: string, ignoreCase: boolean, throwOnBindFailure: boolean) : System.Delegate
---@param type System.Type
---@param target System.Object
---@param method string
---@param ignoreCase boolean
---@return System.Delegate
function System.Delegate.CreateDelegate(type, target, method, ignoreCase) end
---@overload fun(a: System.Delegate, b: System.Delegate) : System.Delegate
---@param delegates System.Delegate[]
---@return System.Delegate
function System.Delegate.Combine(delegates) end
---@param source System.Delegate
---@param value System.Delegate
---@return System.Delegate
function System.Delegate.Remove(source, value) end
---@param source System.Delegate
---@param value System.Delegate
---@return System.Delegate
function System.Delegate.RemoveAll(source, value) end
---@param args System.Object[]
---@return System.Object
function System.Delegate:DynamicInvoke(args) end
---@return System.Object
function System.Delegate:Clone() end
---@param obj System.Object
---@return boolean
function System.Delegate:Equals(obj) end
---@return number
function System.Delegate:GetHashCode() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Delegate:GetObjectData(info, context) end
---@return System.Delegate[]
function System.Delegate:GetInvocationList() end
---@return System.Reflection.MethodInfo
function System.Delegate:GetMethodInfo() end

---@class System.DelegateSerializationHolder : System.Object
System.DelegateSerializationHolder = {}
---@alias CS.System.DelegateSerializationHolder System.DelegateSerializationHolder
CS.System.DelegateSerializationHolder = System.DelegateSerializationHolder

---@param instance System.Delegate
---@param info System.Runtime.Serialization.SerializationInfo
---@param ctx System.Runtime.Serialization.StreamingContext
function System.DelegateSerializationHolder.GetDelegateData(instance, info, ctx) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.DelegateSerializationHolder:GetObjectData(info, context) end
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Object
function System.DelegateSerializationHolder:GetRealObject(context) end

---@class System.DelegateSerializationHolder.DelegateEntry : System.Object
---@field delegateEntry System.DelegateSerializationHolder.DelegateEntry
System.DelegateSerializationHolder.DelegateEntry = {}
---@alias CS.System.DelegateSerializationHolder.DelegateEntry System.DelegateSerializationHolder.DelegateEntry
CS.System.DelegateSerializationHolder.DelegateEntry = System.DelegateSerializationHolder.DelegateEntry

---@param del System.Delegate
---@param targetLabel string
---@return System.DelegateSerializationHolder.DelegateEntry
function System.DelegateSerializationHolder.DelegateEntry.New(del, targetLabel) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param index number
---@return System.Delegate
function System.DelegateSerializationHolder.DelegateEntry:DeserializeDelegate(info, index) end

---@class System.AppDomainManagerInitializationOptions
---@field None System.AppDomainManagerInitializationOptions
---@field RegisterWithHost System.AppDomainManagerInitializationOptions
System.AppDomainManagerInitializationOptions = {}
---@alias CS.System.AppDomainManagerInitializationOptions System.AppDomainManagerInitializationOptions
CS.System.AppDomainManagerInitializationOptions = System.AppDomainManagerInitializationOptions


---@class System.EmptyArray : System.Object
---@field Value T[]
System.EmptyArray = {}
---@alias CS.System.EmptyArray System.EmptyArray
CS.System.EmptyArray = System.EmptyArray


---@class System.EnvironmentVariableTarget
---@field Process System.EnvironmentVariableTarget
---@field User System.EnvironmentVariableTarget
---@field Machine System.EnvironmentVariableTarget
System.EnvironmentVariableTarget = {}
---@alias CS.System.EnvironmentVariableTarget System.EnvironmentVariableTarget
CS.System.EnvironmentVariableTarget = System.EnvironmentVariableTarget


---@class System.IConsoleDriver
---@field BackgroundColor System.ConsoleColor
---@field BufferHeight number
---@field BufferWidth number
---@field CapsLock boolean
---@field CursorLeft number
---@field CursorSize number
---@field CursorTop number
---@field CursorVisible boolean
---@field ForegroundColor System.ConsoleColor
---@field KeyAvailable boolean
---@field Initialized boolean
---@field LargestWindowHeight number
---@field LargestWindowWidth number
---@field NumberLock boolean
---@field Title string
---@field TreatControlCAsInput boolean
---@field WindowHeight number
---@field WindowLeft number
---@field WindowTop number
---@field WindowWidth number
System.IConsoleDriver = {}
---@alias CS.System.IConsoleDriver System.IConsoleDriver
CS.System.IConsoleDriver = System.IConsoleDriver

function System.IConsoleDriver:Init() end
---@param frequency number
---@param duration number
function System.IConsoleDriver:Beep(frequency, duration) end
function System.IConsoleDriver:Clear() end
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
---@param sourceChar System.Char
---@param sourceForeColor System.ConsoleColor
---@param sourceBackColor System.ConsoleColor
function System.IConsoleDriver:MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop, sourceChar, sourceForeColor, sourceBackColor) end
---@param intercept boolean
---@return System.ConsoleKeyInfo
function System.IConsoleDriver:ReadKey(intercept) end
function System.IConsoleDriver:ResetColor() end
---@param width number
---@param height number
function System.IConsoleDriver:SetBufferSize(width, height) end
---@param left number
---@param top number
function System.IConsoleDriver:SetCursorPosition(left, top) end
---@param left number
---@param top number
function System.IConsoleDriver:SetWindowPosition(left, top) end
---@param width number
---@param height number
function System.IConsoleDriver:SetWindowSize(width, height) end
---@return string
function System.IConsoleDriver:ReadLine() end

---@class System.IntPtr : System.ValueType
---@field Zero System.IntPtr
---@field Size number
System.IntPtr = {}
---@alias CS.System.IntPtr System.IntPtr
CS.System.IntPtr = System.IntPtr

---@overload fun(value: number) : System.IntPtr
---@overload fun(value: number) : System.IntPtr
---@param value System.Void*
---@return System.IntPtr
function System.IntPtr.New(value) end
---@param pointer System.IntPtr
---@param offset number
---@return System.IntPtr
function System.IntPtr.Add(pointer, offset) end
---@param pointer System.IntPtr
---@param offset number
---@return System.IntPtr
function System.IntPtr.Subtract(pointer, offset) end
---@param obj System.Object
---@return boolean
function System.IntPtr:Equals(obj) end
---@return number
function System.IntPtr:GetHashCode() end
---@return number
function System.IntPtr:ToInt32() end
---@return number
function System.IntPtr:ToInt64() end
---@return System.Void*
function System.IntPtr:ToPointer() end
---@overload fun() : string
---@param format string
---@return string
function System.IntPtr:ToString(format) end
---@param index number
---@return System.IntPtr
function System.IntPtr:Add(index) end

---@class System.KnownTerminals : System.Object
---@field linux System.Byte[]
---@field xterm System.Byte[]
---@field ansi System.Byte[]
System.KnownTerminals = {}
---@alias CS.System.KnownTerminals System.KnownTerminals
CS.System.KnownTerminals = System.KnownTerminals


---@class System.MarshalByRefObject : System.Object
System.MarshalByRefObject = {}
---@alias CS.System.MarshalByRefObject System.MarshalByRefObject
CS.System.MarshalByRefObject = System.MarshalByRefObject

---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function System.MarshalByRefObject:CreateObjRef(requestedType) end
---@return System.Object
function System.MarshalByRefObject:GetLifetimeService() end
---@return System.Object
function System.MarshalByRefObject:InitializeLifetimeService() end

---@class System.ModuleHandle : System.ValueType
---@field EmptyHandle System.ModuleHandle
---@field MDStreamVersion number
System.ModuleHandle = {}
---@alias CS.System.ModuleHandle System.ModuleHandle
CS.System.ModuleHandle = System.ModuleHandle

---@overload fun(self: System.ModuleHandle, fieldToken: number) : System.RuntimeFieldHandle
---@param fieldToken number
---@param typeInstantiationContext System.RuntimeTypeHandle[]
---@param methodInstantiationContext System.RuntimeTypeHandle[]
---@return System.RuntimeFieldHandle
function System.ModuleHandle:ResolveFieldHandle(fieldToken, typeInstantiationContext, methodInstantiationContext) end
---@overload fun(self: System.ModuleHandle, methodToken: number) : System.RuntimeMethodHandle
---@param methodToken number
---@param typeInstantiationContext System.RuntimeTypeHandle[]
---@param methodInstantiationContext System.RuntimeTypeHandle[]
---@return System.RuntimeMethodHandle
function System.ModuleHandle:ResolveMethodHandle(methodToken, typeInstantiationContext, methodInstantiationContext) end
---@overload fun(self: System.ModuleHandle, typeToken: number) : System.RuntimeTypeHandle
---@param typeToken number
---@param typeInstantiationContext System.RuntimeTypeHandle[]
---@param methodInstantiationContext System.RuntimeTypeHandle[]
---@return System.RuntimeTypeHandle
function System.ModuleHandle:ResolveTypeHandle(typeToken, typeInstantiationContext, methodInstantiationContext) end
---@param fieldToken number
---@return System.RuntimeFieldHandle
function System.ModuleHandle:GetRuntimeFieldHandleFromMetadataToken(fieldToken) end
---@param methodToken number
---@return System.RuntimeMethodHandle
function System.ModuleHandle:GetRuntimeMethodHandleFromMetadataToken(methodToken) end
---@param typeToken number
---@return System.RuntimeTypeHandle
function System.ModuleHandle:GetRuntimeTypeHandleFromMetadataToken(typeToken) end
---@overload fun(self: System.ModuleHandle, obj: System.Object) : boolean
---@param handle System.ModuleHandle
---@return boolean
function System.ModuleHandle:Equals(handle) end
---@return number
function System.ModuleHandle:GetHashCode() end

---@class System.MonoAsyncCall : System.Object
System.MonoAsyncCall = {}
---@alias CS.System.MonoAsyncCall System.MonoAsyncCall
CS.System.MonoAsyncCall = System.MonoAsyncCall

---@return System.MonoAsyncCall
function System.MonoAsyncCall.New() end

---@class System.MonoCQItem : System.Object
System.MonoCQItem = {}
---@alias CS.System.MonoCQItem System.MonoCQItem
CS.System.MonoCQItem = System.MonoCQItem

---@return System.MonoCQItem
function System.MonoCQItem.New() end

---@class System.MonoCustomAttrs : System.Object
System.MonoCustomAttrs = {}
---@alias CS.System.MonoCustomAttrs System.MonoCustomAttrs
CS.System.MonoCustomAttrs = System.MonoCustomAttrs


---@class System.MonoCustomAttrs.AttributeInfo : System.Object
---@field Usage System.AttributeUsageAttribute
---@field InheritanceLevel number
System.MonoCustomAttrs.AttributeInfo = {}
---@alias CS.System.MonoCustomAttrs.AttributeInfo System.MonoCustomAttrs.AttributeInfo
CS.System.MonoCustomAttrs.AttributeInfo = System.MonoCustomAttrs.AttributeInfo

---@param usage System.AttributeUsageAttribute
---@param inheritanceLevel number
---@return System.MonoCustomAttrs.AttributeInfo
function System.MonoCustomAttrs.AttributeInfo.New(usage, inheritanceLevel) end

---@class System.MonoListItem : System.Object
System.MonoListItem = {}
---@alias CS.System.MonoListItem System.MonoListItem
CS.System.MonoListItem = System.MonoListItem

---@return System.MonoListItem
function System.MonoListItem.New() end

---@class System.MonoType : System.RuntimeType
System.MonoType = {}
---@alias CS.System.MonoType System.MonoType
CS.System.MonoType = System.MonoType


---@class System.MulticastDelegate : System.Delegate
System.MulticastDelegate = {}
---@alias CS.System.MulticastDelegate System.MulticastDelegate
CS.System.MulticastDelegate = System.MulticastDelegate

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.MulticastDelegate:GetObjectData(info, context) end
---@param obj System.Object
---@return boolean
function System.MulticastDelegate:Equals(obj) end
---@return number
function System.MulticastDelegate:GetHashCode() end
---@return System.Delegate[]
function System.MulticastDelegate:GetInvocationList() end

---@class System.NullConsoleDriver : System.Object
---@field BackgroundColor System.ConsoleColor
---@field BufferHeight number
---@field BufferWidth number
---@field CapsLock boolean
---@field CursorLeft number
---@field CursorSize number
---@field CursorTop number
---@field CursorVisible boolean
---@field ForegroundColor System.ConsoleColor
---@field KeyAvailable boolean
---@field Initialized boolean
---@field LargestWindowHeight number
---@field LargestWindowWidth number
---@field NumberLock boolean
---@field Title string
---@field TreatControlCAsInput boolean
---@field WindowHeight number
---@field WindowLeft number
---@field WindowTop number
---@field WindowWidth number
System.NullConsoleDriver = {}
---@alias CS.System.NullConsoleDriver System.NullConsoleDriver
CS.System.NullConsoleDriver = System.NullConsoleDriver

---@return System.NullConsoleDriver
function System.NullConsoleDriver.New() end
---@param frequency number
---@param duration number
function System.NullConsoleDriver:Beep(frequency, duration) end
function System.NullConsoleDriver:Clear() end
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
---@param sourceChar System.Char
---@param sourceForeColor System.ConsoleColor
---@param sourceBackColor System.ConsoleColor
function System.NullConsoleDriver:MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop, sourceChar, sourceForeColor, sourceBackColor) end
function System.NullConsoleDriver:Init() end
---@return string
function System.NullConsoleDriver:ReadLine() end
---@param intercept boolean
---@return System.ConsoleKeyInfo
function System.NullConsoleDriver:ReadKey(intercept) end
function System.NullConsoleDriver:ResetColor() end
---@param width number
---@param height number
function System.NullConsoleDriver:SetBufferSize(width, height) end
---@param left number
---@param top number
function System.NullConsoleDriver:SetCursorPosition(left, top) end
---@param left number
---@param top number
function System.NullConsoleDriver:SetWindowPosition(left, top) end
---@param width number
---@param height number
function System.NullConsoleDriver:SetWindowSize(width, height) end

---@class System.NumberFormatter : System.Object
System.NumberFormatter = {}
---@alias CS.System.NumberFormatter System.NumberFormatter
CS.System.NumberFormatter = System.NumberFormatter

---@overload fun(format: string, value: number, fp: System.IFormatProvider) : string
---@overload fun(format: string, value: number, fp: System.IFormatProvider) : string
---@overload fun(format: string, value: number, fp: System.IFormatProvider) : string
---@overload fun(format: string, value: number, fp: System.IFormatProvider) : string
---@overload fun(format: string, value: number, fp: System.IFormatProvider) : string
---@overload fun(format: string, value: number, fp: System.IFormatProvider) : string
---@param format string
---@param value System.Decimal
---@param fp System.IFormatProvider
---@return string
function System.NumberFormatter.NumberToString(format, value, fp) end

---@class System.NumberFormatter.CustomInfo : System.Object
---@field UseGroup boolean
---@field DecimalDigits number
---@field DecimalPointPos number
---@field DecimalTailSharpDigits number
---@field IntegerDigits number
---@field IntegerHeadSharpDigits number
---@field IntegerHeadPos number
---@field UseExponent boolean
---@field ExponentDigits number
---@field ExponentTailSharpDigits number
---@field ExponentNegativeSignOnly boolean
---@field DividePlaces number
---@field Percents number
---@field Permilles number
System.NumberFormatter.CustomInfo = {}
---@alias CS.System.NumberFormatter.CustomInfo System.NumberFormatter.CustomInfo
CS.System.NumberFormatter.CustomInfo = System.NumberFormatter.CustomInfo

---@return System.NumberFormatter.CustomInfo
function System.NumberFormatter.CustomInfo.New() end
---@param format string
---@param ref_positive boolean
---@param zero boolean
---@param ref_offset number
---@param ref_length number
---@return ,boolean,number,number
function System.NumberFormatter.CustomInfo.GetActiveSection(format, ref_positive, zero, ref_offset, ref_length) end
---@param format string
---@param offset number
---@param length number
---@param nfi System.Globalization.NumberFormatInfo
---@return System.NumberFormatter.CustomInfo
function System.NumberFormatter.CustomInfo.Parse(format, offset, length, nfi) end
---@param format string
---@param offset number
---@param length number
---@param nfi System.Globalization.NumberFormatInfo
---@param positive boolean
---@param sb_int System.Text.StringBuilder
---@param sb_dec System.Text.StringBuilder
---@param sb_exp System.Text.StringBuilder
---@return string
function System.NumberFormatter.CustomInfo:Format(format, offset, length, nfi, positive, sb_int, sb_dec, sb_exp) end

---@class System.Object
System.Object = {}
---@alias CS.System.Object System.Object
CS.System.Object = System.Object

---@return System.Object
function System.Object.New() end
---@overload fun(objA: System.Object, objB: System.Object) : boolean
---@param obj System.Object
---@return boolean
function System.Object:Equals(obj) end
---@param objA System.Object
---@param objB System.Object
---@return boolean
function System.Object.ReferenceEquals(objA, objB) end
---@return number
function System.Object:GetHashCode() end
---@return System.Type
function System.Object:GetType() end
---@return string
function System.Object:ToString() end
---@return string
function System.Object:ToLiteral() end
---@return string
function System.Object:GetInitializersForPublicPrimitiveTypeFields() end
---@return TObject
function System.Object:As() end

---@class System.PlatformID
---@field Win32S System.PlatformID
---@field Win32Windows System.PlatformID
---@field Win32NT System.PlatformID
---@field WinCE System.PlatformID
---@field Unix System.PlatformID
---@field Xbox System.PlatformID
---@field MacOSX System.PlatformID
System.PlatformID = {}
---@alias CS.System.PlatformID System.PlatformID
CS.System.PlatformID = System.PlatformID


---@class System.RuntimeArgumentHandle : System.ValueType
System.RuntimeArgumentHandle = {}
---@alias CS.System.RuntimeArgumentHandle System.RuntimeArgumentHandle
CS.System.RuntimeArgumentHandle = System.RuntimeArgumentHandle


---@class System.RuntimeFieldHandle : System.ValueType
---@field Value System.IntPtr
System.RuntimeFieldHandle = {}
---@alias CS.System.RuntimeFieldHandle System.RuntimeFieldHandle
CS.System.RuntimeFieldHandle = System.RuntimeFieldHandle

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.RuntimeFieldHandle:GetObjectData(info, context) end
---@overload fun(self: System.RuntimeFieldHandle, obj: System.Object) : boolean
---@param handle System.RuntimeFieldHandle
---@return boolean
function System.RuntimeFieldHandle:Equals(handle) end
---@return number
function System.RuntimeFieldHandle:GetHashCode() end

---@class System.RuntimeMethodHandle : System.ValueType
---@field Value System.IntPtr
System.RuntimeMethodHandle = {}
---@alias CS.System.RuntimeMethodHandle System.RuntimeMethodHandle
CS.System.RuntimeMethodHandle = System.RuntimeMethodHandle

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.RuntimeMethodHandle:GetObjectData(info, context) end
---@return System.IntPtr
function System.RuntimeMethodHandle:GetFunctionPointer() end
---@overload fun(self: System.RuntimeMethodHandle, obj: System.Object) : boolean
---@param handle System.RuntimeMethodHandle
---@return boolean
function System.RuntimeMethodHandle:Equals(handle) end
---@return number
function System.RuntimeMethodHandle:GetHashCode() end

---@class System.RuntimeTypeHandle : System.ValueType
---@field Value System.IntPtr
System.RuntimeTypeHandle = {}
---@alias CS.System.RuntimeTypeHandle System.RuntimeTypeHandle
CS.System.RuntimeTypeHandle = System.RuntimeTypeHandle

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.RuntimeTypeHandle:GetObjectData(info, context) end
---@overload fun(self: System.RuntimeTypeHandle, obj: System.Object) : boolean
---@param handle System.RuntimeTypeHandle
---@return boolean
function System.RuntimeTypeHandle:Equals(handle) end
---@return number
function System.RuntimeTypeHandle:GetHashCode() end
---@return System.ModuleHandle
function System.RuntimeTypeHandle:GetModuleHandle() end

---@class System.TermInfoBooleans
---@field AutoLeftMargin System.TermInfoBooleans
---@field AutoRightMargin System.TermInfoBooleans
---@field NoEscCtlc System.TermInfoBooleans
---@field CeolStandoutGlitch System.TermInfoBooleans
---@field EatNewlineGlitch System.TermInfoBooleans
---@field EraseOverstrike System.TermInfoBooleans
---@field GenericType System.TermInfoBooleans
---@field HardCopy System.TermInfoBooleans
---@field HasMetaKey System.TermInfoBooleans
---@field HasStatusLine System.TermInfoBooleans
---@field InsertNullGlitch System.TermInfoBooleans
---@field MemoryAbove System.TermInfoBooleans
---@field MemoryBelow System.TermInfoBooleans
---@field MoveInsertMode System.TermInfoBooleans
---@field MoveStandoutMode System.TermInfoBooleans
---@field OverStrike System.TermInfoBooleans
---@field StatusLineEscOk System.TermInfoBooleans
---@field DestTabsMagicSmso System.TermInfoBooleans
---@field TildeGlitch System.TermInfoBooleans
---@field TransparentUnderline System.TermInfoBooleans
---@field XonXoff System.TermInfoBooleans
---@field NeedsXonXoff System.TermInfoBooleans
---@field PrtrSilent System.TermInfoBooleans
---@field HardCursor System.TermInfoBooleans
---@field NonRevRmcup System.TermInfoBooleans
---@field NoPadChar System.TermInfoBooleans
---@field NonDestScrollRegion System.TermInfoBooleans
---@field CanChange System.TermInfoBooleans
---@field BackColorErase System.TermInfoBooleans
---@field HueLightnessSaturation System.TermInfoBooleans
---@field ColAddrGlitch System.TermInfoBooleans
---@field CrCancelsMicroMode System.TermInfoBooleans
---@field HasPrintWheel System.TermInfoBooleans
---@field RowAddrGlitch System.TermInfoBooleans
---@field SemiAutoRightMargin System.TermInfoBooleans
---@field CpiChangesRes System.TermInfoBooleans
---@field LpiChangesRes System.TermInfoBooleans
---@field Last System.TermInfoBooleans
System.TermInfoBooleans = {}
---@alias CS.System.TermInfoBooleans System.TermInfoBooleans
CS.System.TermInfoBooleans = System.TermInfoBooleans


---@class System.TermInfoDriver : System.Object
---@field Initialized boolean
---@field BackgroundColor System.ConsoleColor
---@field ForegroundColor System.ConsoleColor
---@field BufferHeight number
---@field BufferWidth number
---@field CapsLock boolean
---@field CursorLeft number
---@field CursorTop number
---@field CursorVisible boolean
---@field CursorSize number
---@field KeyAvailable boolean
---@field LargestWindowHeight number
---@field LargestWindowWidth number
---@field NumberLock boolean
---@field Title string
---@field TreatControlCAsInput boolean
---@field WindowHeight number
---@field WindowLeft number
---@field WindowTop number
---@field WindowWidth number
System.TermInfoDriver = {}
---@alias CS.System.TermInfoDriver System.TermInfoDriver
CS.System.TermInfoDriver = System.TermInfoDriver

---@overload fun() : System.TermInfoDriver
---@param term string
---@return System.TermInfoDriver
function System.TermInfoDriver.New(term) end
function System.TermInfoDriver:Init() end
---@overload fun(self: System.TermInfoDriver, key: System.ConsoleKeyInfo)
---@param c System.Char
function System.TermInfoDriver:WriteSpecialKey(c) end
---@overload fun(self: System.TermInfoDriver, key: System.ConsoleKeyInfo) : boolean
---@param c System.Char
---@return boolean
function System.TermInfoDriver:IsSpecialKey(c) end
function System.TermInfoDriver:Clear() end
---@param frequency number
---@param duration number
function System.TermInfoDriver:Beep(frequency, duration) end
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
---@param sourceChar System.Char
---@param sourceForeColor System.ConsoleColor
---@param sourceBackColor System.ConsoleColor
function System.TermInfoDriver:MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop, sourceChar, sourceForeColor, sourceBackColor) end
---@param out_dest System.Char
---@param index number
---@param count number
---@return number,System.Char
function System.TermInfoDriver:Read(out_dest, index, count) end
---@param intercept boolean
---@return System.ConsoleKeyInfo
function System.TermInfoDriver:ReadKey(intercept) end
---@return string
function System.TermInfoDriver:ReadLine() end
---@return string
function System.TermInfoDriver:ReadToEnd() end
function System.TermInfoDriver:ResetColor() end
---@param width number
---@param height number
function System.TermInfoDriver:SetBufferSize(width, height) end
---@param left number
---@param top number
function System.TermInfoDriver:SetCursorPosition(left, top) end
---@param left number
---@param top number
function System.TermInfoDriver:SetWindowPosition(left, top) end
---@param width number
---@param height number
function System.TermInfoDriver:SetWindowSize(width, height) end

---@class System.ParameterizedStrings : System.Object
System.ParameterizedStrings = {}
---@alias CS.System.ParameterizedStrings System.ParameterizedStrings
CS.System.ParameterizedStrings = System.ParameterizedStrings

---@param format string
---@param args System.ParameterizedStrings.FormatParam[]
---@return string
function System.ParameterizedStrings.Evaluate(format, args) end

---@class System.ParameterizedStrings.FormatParam : System.ValueType
---@field Int32 number
---@field String string
---@field Object System.Object
System.ParameterizedStrings.FormatParam = {}
---@alias CS.System.ParameterizedStrings.FormatParam System.ParameterizedStrings.FormatParam
CS.System.ParameterizedStrings.FormatParam = System.ParameterizedStrings.FormatParam

---@overload fun(value: number) : System.ParameterizedStrings.FormatParam
---@param value string
---@return System.ParameterizedStrings.FormatParam
function System.ParameterizedStrings.FormatParam.New(value) end

---@class System.ParameterizedStrings.LowLevelStack : System.Object
System.ParameterizedStrings.LowLevelStack = {}
---@alias CS.System.ParameterizedStrings.LowLevelStack System.ParameterizedStrings.LowLevelStack
CS.System.ParameterizedStrings.LowLevelStack = System.ParameterizedStrings.LowLevelStack

---@return System.ParameterizedStrings.LowLevelStack
function System.ParameterizedStrings.LowLevelStack.New() end
---@return System.ParameterizedStrings.FormatParam
function System.ParameterizedStrings.LowLevelStack:Pop() end
---@param item System.ParameterizedStrings.FormatParam
function System.ParameterizedStrings.LowLevelStack:Push(item) end
function System.ParameterizedStrings.LowLevelStack:Clear() end

---@class System.ByteMatcher : System.Object
System.ByteMatcher = {}
---@alias CS.System.ByteMatcher System.ByteMatcher
CS.System.ByteMatcher = System.ByteMatcher

---@return System.ByteMatcher
function System.ByteMatcher.New() end
---@param key System.TermInfoStrings
---@param val System.Byte[]
function System.ByteMatcher:AddMapping(key, val) end
function System.ByteMatcher:Sort() end
---@param c number
---@return boolean
function System.ByteMatcher:StartsWith(c) end
---@param buffer System.Char[]
---@param offset number
---@param length number
---@param out_used number
---@return System.TermInfoStrings,number
function System.ByteMatcher:Match(buffer, offset, length, out_used) end

---@class System.TermInfoNumbers
---@field Columns System.TermInfoNumbers
---@field InitTabs System.TermInfoNumbers
---@field Lines System.TermInfoNumbers
---@field LinesOfMemory System.TermInfoNumbers
---@field MagicCookieGlitch System.TermInfoNumbers
---@field PaddingBaudRate System.TermInfoNumbers
---@field VirtualTerminal System.TermInfoNumbers
---@field WidthStatusLine System.TermInfoNumbers
---@field NumLabels System.TermInfoNumbers
---@field LabelHeight System.TermInfoNumbers
---@field LabelWidth System.TermInfoNumbers
---@field MaxAttributes System.TermInfoNumbers
---@field MaximumWindows System.TermInfoNumbers
---@field MaxColors System.TermInfoNumbers
---@field MaxPairs System.TermInfoNumbers
---@field NoColorVideo System.TermInfoNumbers
---@field BufferCapacity System.TermInfoNumbers
---@field DotVertSpacing System.TermInfoNumbers
---@field DotHorzSpacing System.TermInfoNumbers
---@field MaxMicroAddress System.TermInfoNumbers
---@field MaxMicroJump System.TermInfoNumbers
---@field MicroColSize System.TermInfoNumbers
---@field MicroLineSize System.TermInfoNumbers
---@field NumberOfPins System.TermInfoNumbers
---@field OutputResChar System.TermInfoNumbers
---@field OutputResLine System.TermInfoNumbers
---@field OutputResHorzInch System.TermInfoNumbers
---@field OutputResVertInch System.TermInfoNumbers
---@field PrintRate System.TermInfoNumbers
---@field WideCharSize System.TermInfoNumbers
---@field Buttons System.TermInfoNumbers
---@field BitImageEntwining System.TermInfoNumbers
---@field BitImageType System.TermInfoNumbers
---@field Last System.TermInfoNumbers
System.TermInfoNumbers = {}
---@alias CS.System.TermInfoNumbers System.TermInfoNumbers
CS.System.TermInfoNumbers = System.TermInfoNumbers


---@class System.TermInfoReader : System.Object
System.TermInfoReader = {}
---@alias CS.System.TermInfoReader System.TermInfoReader
CS.System.TermInfoReader = System.TermInfoReader

---@overload fun(term: string, filename: string) : System.TermInfoReader
---@param term string
---@param buffer System.Byte[]
---@return System.TermInfoReader
function System.TermInfoReader.New(term, buffer) end
---@overload fun(self: System.TermInfoReader, boolean: System.TermInfoBooleans) : boolean
---@overload fun(self: System.TermInfoReader, number: System.TermInfoNumbers) : number
---@param tstr System.TermInfoStrings
---@return string
function System.TermInfoReader:Get(tstr) end
---@param tstr System.TermInfoStrings
---@return System.Byte[]
function System.TermInfoReader:GetStringBytes(tstr) end

---@class System.TermInfoStrings
---@field BackTab System.TermInfoStrings
---@field Bell System.TermInfoStrings
---@field CarriageReturn System.TermInfoStrings
---@field ChangeScrollRegion System.TermInfoStrings
---@field ClearAllTabs System.TermInfoStrings
---@field ClearScreen System.TermInfoStrings
---@field ClrEol System.TermInfoStrings
---@field ClrEos System.TermInfoStrings
---@field ColumnAddress System.TermInfoStrings
---@field CommandCharacter System.TermInfoStrings
---@field CursorAddress System.TermInfoStrings
---@field CursorDown System.TermInfoStrings
---@field CursorHome System.TermInfoStrings
---@field CursorInvisible System.TermInfoStrings
---@field CursorLeft System.TermInfoStrings
---@field CursorMemAddress System.TermInfoStrings
---@field CursorNormal System.TermInfoStrings
---@field CursorRight System.TermInfoStrings
---@field CursorToLl System.TermInfoStrings
---@field CursorUp System.TermInfoStrings
---@field CursorVisible System.TermInfoStrings
---@field DeleteCharacter System.TermInfoStrings
---@field DeleteLine System.TermInfoStrings
---@field DisStatusLine System.TermInfoStrings
---@field DownHalfLine System.TermInfoStrings
---@field EnterAltCharsetMode System.TermInfoStrings
---@field EnterBlinkMode System.TermInfoStrings
---@field EnterBoldMode System.TermInfoStrings
---@field EnterCaMode System.TermInfoStrings
---@field EnterDeleteMode System.TermInfoStrings
---@field EnterDimMode System.TermInfoStrings
---@field EnterInsertMode System.TermInfoStrings
---@field EnterSecureMode System.TermInfoStrings
---@field EnterProtectedMode System.TermInfoStrings
---@field EnterReverseMode System.TermInfoStrings
---@field EnterStandoutMode System.TermInfoStrings
---@field EnterUnderlineMode System.TermInfoStrings
---@field EraseChars System.TermInfoStrings
---@field ExitAltCharsetMode System.TermInfoStrings
---@field ExitAttributeMode System.TermInfoStrings
---@field ExitCaMode System.TermInfoStrings
---@field ExitDeleteMode System.TermInfoStrings
---@field ExitInsertMode System.TermInfoStrings
---@field ExitStandoutMode System.TermInfoStrings
---@field ExitUnderlineMode System.TermInfoStrings
---@field FlashScreen System.TermInfoStrings
---@field FormFeed System.TermInfoStrings
---@field FromStatusLine System.TermInfoStrings
---@field Init1string System.TermInfoStrings
---@field Init2string System.TermInfoStrings
---@field Init3string System.TermInfoStrings
---@field InitFile System.TermInfoStrings
---@field InsertCharacter System.TermInfoStrings
---@field InsertLine System.TermInfoStrings
---@field InsertPadding System.TermInfoStrings
---@field KeyBackspace System.TermInfoStrings
---@field KeyCatab System.TermInfoStrings
---@field KeyClear System.TermInfoStrings
---@field KeyCtab System.TermInfoStrings
---@field KeyDc System.TermInfoStrings
---@field KeyDl System.TermInfoStrings
---@field KeyDown System.TermInfoStrings
---@field KeyEic System.TermInfoStrings
---@field KeyEol System.TermInfoStrings
---@field KeyEos System.TermInfoStrings
---@field KeyF0 System.TermInfoStrings
---@field KeyF1 System.TermInfoStrings
---@field KeyF10 System.TermInfoStrings
---@field KeyF2 System.TermInfoStrings
---@field KeyF3 System.TermInfoStrings
---@field KeyF4 System.TermInfoStrings
---@field KeyF5 System.TermInfoStrings
---@field KeyF6 System.TermInfoStrings
---@field KeyF7 System.TermInfoStrings
---@field KeyF8 System.TermInfoStrings
---@field KeyF9 System.TermInfoStrings
---@field KeyHome System.TermInfoStrings
---@field KeyIc System.TermInfoStrings
---@field KeyIl System.TermInfoStrings
---@field KeyLeft System.TermInfoStrings
---@field KeyLl System.TermInfoStrings
---@field KeyNpage System.TermInfoStrings
---@field KeyPpage System.TermInfoStrings
---@field KeyRight System.TermInfoStrings
---@field KeySf System.TermInfoStrings
---@field KeySr System.TermInfoStrings
---@field KeyStab System.TermInfoStrings
---@field KeyUp System.TermInfoStrings
---@field KeypadLocal System.TermInfoStrings
---@field KeypadXmit System.TermInfoStrings
---@field LabF0 System.TermInfoStrings
---@field LabF1 System.TermInfoStrings
---@field LabF10 System.TermInfoStrings
---@field LabF2 System.TermInfoStrings
---@field LabF3 System.TermInfoStrings
---@field LabF4 System.TermInfoStrings
---@field LabF5 System.TermInfoStrings
---@field LabF6 System.TermInfoStrings
---@field LabF7 System.TermInfoStrings
---@field LabF8 System.TermInfoStrings
---@field LabF9 System.TermInfoStrings
---@field MetaOff System.TermInfoStrings
---@field MetaOn System.TermInfoStrings
---@field Newline System.TermInfoStrings
---@field PadChar System.TermInfoStrings
---@field ParmDch System.TermInfoStrings
---@field ParmDeleteLine System.TermInfoStrings
---@field ParmDownCursor System.TermInfoStrings
---@field ParmIch System.TermInfoStrings
---@field ParmIndex System.TermInfoStrings
---@field ParmInsertLine System.TermInfoStrings
---@field ParmLeftCursor System.TermInfoStrings
---@field ParmRightCursor System.TermInfoStrings
---@field ParmRindex System.TermInfoStrings
---@field ParmUpCursor System.TermInfoStrings
---@field PkeyKey System.TermInfoStrings
---@field PkeyLocal System.TermInfoStrings
---@field PkeyXmit System.TermInfoStrings
---@field PrintScreen System.TermInfoStrings
---@field PrtrOff System.TermInfoStrings
---@field PrtrOn System.TermInfoStrings
---@field RepeatChar System.TermInfoStrings
---@field Reset1string System.TermInfoStrings
---@field Reset2string System.TermInfoStrings
---@field Reset3string System.TermInfoStrings
---@field ResetFile System.TermInfoStrings
---@field RestoreCursor System.TermInfoStrings
---@field RowAddress System.TermInfoStrings
---@field SaveCursor System.TermInfoStrings
---@field ScrollForward System.TermInfoStrings
---@field ScrollReverse System.TermInfoStrings
---@field SetAttributes System.TermInfoStrings
---@field SetTab System.TermInfoStrings
---@field SetWindow System.TermInfoStrings
---@field Tab System.TermInfoStrings
---@field ToStatusLine System.TermInfoStrings
---@field UnderlineChar System.TermInfoStrings
---@field UpHalfLine System.TermInfoStrings
---@field InitProg System.TermInfoStrings
---@field KeyA1 System.TermInfoStrings
---@field KeyA3 System.TermInfoStrings
---@field KeyB2 System.TermInfoStrings
---@field KeyC1 System.TermInfoStrings
---@field KeyC3 System.TermInfoStrings
---@field PrtrNon System.TermInfoStrings
---@field CharPadding System.TermInfoStrings
---@field AcsChars System.TermInfoStrings
---@field PlabNorm System.TermInfoStrings
---@field KeyBtab System.TermInfoStrings
---@field EnterXonMode System.TermInfoStrings
---@field ExitXonMode System.TermInfoStrings
---@field EnterAmMode System.TermInfoStrings
---@field ExitAmMode System.TermInfoStrings
---@field XonCharacter System.TermInfoStrings
---@field XoffCharacter System.TermInfoStrings
---@field EnaAcs System.TermInfoStrings
---@field LabelOn System.TermInfoStrings
---@field LabelOff System.TermInfoStrings
---@field KeyBeg System.TermInfoStrings
---@field KeyCancel System.TermInfoStrings
---@field KeyClose System.TermInfoStrings
---@field KeyCommand System.TermInfoStrings
---@field KeyCopy System.TermInfoStrings
---@field KeyCreate System.TermInfoStrings
---@field KeyEnd System.TermInfoStrings
---@field KeyEnter System.TermInfoStrings
---@field KeyExit System.TermInfoStrings
---@field KeyFind System.TermInfoStrings
---@field KeyHelp System.TermInfoStrings
---@field KeyMark System.TermInfoStrings
---@field KeyMessage System.TermInfoStrings
---@field KeyMove System.TermInfoStrings
---@field KeyNext System.TermInfoStrings
---@field KeyOpen System.TermInfoStrings
---@field KeyOptions System.TermInfoStrings
---@field KeyPrevious System.TermInfoStrings
---@field KeyPrint System.TermInfoStrings
---@field KeyRedo System.TermInfoStrings
---@field KeyReference System.TermInfoStrings
---@field KeyRefresh System.TermInfoStrings
---@field KeyReplace System.TermInfoStrings
---@field KeyRestart System.TermInfoStrings
---@field KeyResume System.TermInfoStrings
---@field KeySave System.TermInfoStrings
---@field KeySuspend System.TermInfoStrings
---@field KeyUndo System.TermInfoStrings
---@field KeySbeg System.TermInfoStrings
---@field KeyScancel System.TermInfoStrings
---@field KeyScommand System.TermInfoStrings
---@field KeyScopy System.TermInfoStrings
---@field KeyScreate System.TermInfoStrings
---@field KeySdc System.TermInfoStrings
---@field KeySdl System.TermInfoStrings
---@field KeySelect System.TermInfoStrings
---@field KeySend System.TermInfoStrings
---@field KeySeol System.TermInfoStrings
---@field KeySexit System.TermInfoStrings
---@field KeySfind System.TermInfoStrings
---@field KeyShelp System.TermInfoStrings
---@field KeyShome System.TermInfoStrings
---@field KeySic System.TermInfoStrings
---@field KeySleft System.TermInfoStrings
---@field KeySmessage System.TermInfoStrings
---@field KeySmove System.TermInfoStrings
---@field KeySnext System.TermInfoStrings
---@field KeySoptions System.TermInfoStrings
---@field KeySprevious System.TermInfoStrings
---@field KeySprint System.TermInfoStrings
---@field KeySredo System.TermInfoStrings
---@field KeySreplace System.TermInfoStrings
---@field KeySright System.TermInfoStrings
---@field KeySrsume System.TermInfoStrings
---@field KeySsave System.TermInfoStrings
---@field KeySsuspend System.TermInfoStrings
---@field KeySundo System.TermInfoStrings
---@field ReqForInput System.TermInfoStrings
---@field KeyF11 System.TermInfoStrings
---@field KeyF12 System.TermInfoStrings
---@field KeyF13 System.TermInfoStrings
---@field KeyF14 System.TermInfoStrings
---@field KeyF15 System.TermInfoStrings
---@field KeyF16 System.TermInfoStrings
---@field KeyF17 System.TermInfoStrings
---@field KeyF18 System.TermInfoStrings
---@field KeyF19 System.TermInfoStrings
---@field KeyF20 System.TermInfoStrings
---@field KeyF21 System.TermInfoStrings
---@field KeyF22 System.TermInfoStrings
---@field KeyF23 System.TermInfoStrings
---@field KeyF24 System.TermInfoStrings
---@field KeyF25 System.TermInfoStrings
---@field KeyF26 System.TermInfoStrings
---@field KeyF27 System.TermInfoStrings
---@field KeyF28 System.TermInfoStrings
---@field KeyF29 System.TermInfoStrings
---@field KeyF30 System.TermInfoStrings
---@field KeyF31 System.TermInfoStrings
---@field KeyF32 System.TermInfoStrings
---@field KeyF33 System.TermInfoStrings
---@field KeyF34 System.TermInfoStrings
---@field KeyF35 System.TermInfoStrings
---@field KeyF36 System.TermInfoStrings
---@field KeyF37 System.TermInfoStrings
---@field KeyF38 System.TermInfoStrings
---@field KeyF39 System.TermInfoStrings
---@field KeyF40 System.TermInfoStrings
---@field KeyF41 System.TermInfoStrings
---@field KeyF42 System.TermInfoStrings
---@field KeyF43 System.TermInfoStrings
---@field KeyF44 System.TermInfoStrings
---@field KeyF45 System.TermInfoStrings
---@field KeyF46 System.TermInfoStrings
---@field KeyF47 System.TermInfoStrings
---@field KeyF48 System.TermInfoStrings
---@field KeyF49 System.TermInfoStrings
---@field KeyF50 System.TermInfoStrings
---@field KeyF51 System.TermInfoStrings
---@field KeyF52 System.TermInfoStrings
---@field KeyF53 System.TermInfoStrings
---@field KeyF54 System.TermInfoStrings
---@field KeyF55 System.TermInfoStrings
---@field KeyF56 System.TermInfoStrings
---@field KeyF57 System.TermInfoStrings
---@field KeyF58 System.TermInfoStrings
---@field KeyF59 System.TermInfoStrings
---@field KeyF60 System.TermInfoStrings
---@field KeyF61 System.TermInfoStrings
---@field KeyF62 System.TermInfoStrings
---@field KeyF63 System.TermInfoStrings
---@field ClrBol System.TermInfoStrings
---@field ClearMargins System.TermInfoStrings
---@field SetLeftMargin System.TermInfoStrings
---@field SetRightMargin System.TermInfoStrings
---@field LabelFormat System.TermInfoStrings
---@field SetClock System.TermInfoStrings
---@field DisplayClock System.TermInfoStrings
---@field RemoveClock System.TermInfoStrings
---@field CreateWindow System.TermInfoStrings
---@field GotoWindow System.TermInfoStrings
---@field Hangup System.TermInfoStrings
---@field DialPhone System.TermInfoStrings
---@field QuickDial System.TermInfoStrings
---@field Tone System.TermInfoStrings
---@field Pulse System.TermInfoStrings
---@field FlashHook System.TermInfoStrings
---@field FixedPause System.TermInfoStrings
---@field WaitTone System.TermInfoStrings
---@field User0 System.TermInfoStrings
---@field User1 System.TermInfoStrings
---@field User2 System.TermInfoStrings
---@field User3 System.TermInfoStrings
---@field User4 System.TermInfoStrings
---@field User5 System.TermInfoStrings
---@field User6 System.TermInfoStrings
---@field User7 System.TermInfoStrings
---@field User8 System.TermInfoStrings
---@field User9 System.TermInfoStrings
---@field OrigPair System.TermInfoStrings
---@field OrigColors System.TermInfoStrings
---@field InitializeColor System.TermInfoStrings
---@field InitializePair System.TermInfoStrings
---@field SetColorPair System.TermInfoStrings
---@field SetForeground System.TermInfoStrings
---@field SetBackground System.TermInfoStrings
---@field ChangeCharPitch System.TermInfoStrings
---@field ChangeLinePitch System.TermInfoStrings
---@field ChangeResHorz System.TermInfoStrings
---@field ChangeResVert System.TermInfoStrings
---@field DefineChar System.TermInfoStrings
---@field EnterDoublewideMode System.TermInfoStrings
---@field EnterDraftQuality System.TermInfoStrings
---@field EnterItalicsMode System.TermInfoStrings
---@field EnterLeftwardMode System.TermInfoStrings
---@field EnterMicroMode System.TermInfoStrings
---@field EnterNearLetterQuality System.TermInfoStrings
---@field EnterNormalQuality System.TermInfoStrings
---@field EnterShadowMode System.TermInfoStrings
---@field EnterSubscriptMode System.TermInfoStrings
---@field EnterSuperscriptMode System.TermInfoStrings
---@field EnterUpwardMode System.TermInfoStrings
---@field ExitDoublewideMode System.TermInfoStrings
---@field ExitItalicsMode System.TermInfoStrings
---@field ExitLeftwardMode System.TermInfoStrings
---@field ExitMicroMode System.TermInfoStrings
---@field ExitShadowMode System.TermInfoStrings
---@field ExitSubscriptMode System.TermInfoStrings
---@field ExitSuperscriptMode System.TermInfoStrings
---@field ExitUpwardMode System.TermInfoStrings
---@field MicroColumnAddress System.TermInfoStrings
---@field MicroDown System.TermInfoStrings
---@field MicroLeft System.TermInfoStrings
---@field MicroRight System.TermInfoStrings
---@field MicroRowAddress System.TermInfoStrings
---@field MicroUp System.TermInfoStrings
---@field OrderOfPins System.TermInfoStrings
---@field ParmDownMicro System.TermInfoStrings
---@field ParmLeftMicro System.TermInfoStrings
---@field ParmRightMicro System.TermInfoStrings
---@field ParmUpMicro System.TermInfoStrings
---@field SelectCharSet System.TermInfoStrings
---@field SetBottomMargin System.TermInfoStrings
---@field SetBottomMarginParm System.TermInfoStrings
---@field SetLeftMarginParm System.TermInfoStrings
---@field SetRightMarginParm System.TermInfoStrings
---@field SetTopMargin System.TermInfoStrings
---@field SetTopMarginParm System.TermInfoStrings
---@field StartBitImage System.TermInfoStrings
---@field StartCharSetDef System.TermInfoStrings
---@field StopBitImage System.TermInfoStrings
---@field StopCharSetDef System.TermInfoStrings
---@field SubscriptCharacters System.TermInfoStrings
---@field SuperscriptCharacters System.TermInfoStrings
---@field TheseCauseCr System.TermInfoStrings
---@field ZeroMotion System.TermInfoStrings
---@field CharSetNames System.TermInfoStrings
---@field KeyMouse System.TermInfoStrings
---@field MouseInfo System.TermInfoStrings
---@field ReqMousePos System.TermInfoStrings
---@field GetMouse System.TermInfoStrings
---@field SetAForeground System.TermInfoStrings
---@field SetABackground System.TermInfoStrings
---@field PkeyPlab System.TermInfoStrings
---@field DeviceType System.TermInfoStrings
---@field CodeSetInit System.TermInfoStrings
---@field Set0DesSeq System.TermInfoStrings
---@field Set1DesSeq System.TermInfoStrings
---@field Set2DesSeq System.TermInfoStrings
---@field Set3DesSeq System.TermInfoStrings
---@field SetLrMargin System.TermInfoStrings
---@field SetTbMargin System.TermInfoStrings
---@field BitImageRepeat System.TermInfoStrings
---@field BitImageNewline System.TermInfoStrings
---@field BitImageCarriageReturn System.TermInfoStrings
---@field ColorNames System.TermInfoStrings
---@field DefineBitImageRegion System.TermInfoStrings
---@field EndBitImageRegion System.TermInfoStrings
---@field SetColorBand System.TermInfoStrings
---@field SetPageLength System.TermInfoStrings
---@field DisplayPcChar System.TermInfoStrings
---@field EnterPcCharsetMode System.TermInfoStrings
---@field ExitPcCharsetMode System.TermInfoStrings
---@field EnterScancodeMode System.TermInfoStrings
---@field ExitScancodeMode System.TermInfoStrings
---@field PcTermOptions System.TermInfoStrings
---@field ScancodeEscape System.TermInfoStrings
---@field AltScancodeEsc System.TermInfoStrings
---@field EnterHorizontalHlMode System.TermInfoStrings
---@field EnterLeftHlMode System.TermInfoStrings
---@field EnterLowHlMode System.TermInfoStrings
---@field EnterRightHlMode System.TermInfoStrings
---@field EnterTopHlMode System.TermInfoStrings
---@field EnterVerticalHlMode System.TermInfoStrings
---@field SetAAttributes System.TermInfoStrings
---@field SetPglenInch System.TermInfoStrings
---@field Last System.TermInfoStrings
System.TermInfoStrings = {}
---@alias CS.System.TermInfoStrings System.TermInfoStrings
CS.System.TermInfoStrings = System.TermInfoStrings


---@class System.TypeName
---@field DisplayName string
System.TypeName = {}
---@alias CS.System.TypeName System.TypeName
CS.System.TypeName = System.TypeName

---@param innerName System.TypeIdentifier
---@return System.TypeName
function System.TypeName:NestedName(innerName) end

---@class System.TypeIdentifier
---@field InternalName string
System.TypeIdentifier = {}
---@alias CS.System.TypeIdentifier System.TypeIdentifier
CS.System.TypeIdentifier = System.TypeIdentifier


---@class System.TypeNames : System.Object
System.TypeNames = {}
---@alias CS.System.TypeNames System.TypeNames
CS.System.TypeNames = System.TypeNames

---@return System.TypeNames
function System.TypeNames.New() end

---@class System.TypeNames.ATypeName : System.Object
---@field DisplayName string
System.TypeNames.ATypeName = {}
---@alias CS.System.TypeNames.ATypeName System.TypeNames.ATypeName
CS.System.TypeNames.ATypeName = System.TypeNames.ATypeName

---@param innerName System.TypeIdentifier
---@return System.TypeName
function System.TypeNames.ATypeName:NestedName(innerName) end
---@overload fun(self: System.TypeNames.ATypeName, other: System.TypeName) : boolean
---@param other System.Object
---@return boolean
function System.TypeNames.ATypeName:Equals(other) end
---@return number
function System.TypeNames.ATypeName:GetHashCode() end

---@class System.TypeNames.Display : System.TypeNames.ATypeName
---@field DisplayName string
System.TypeNames.Display = {}
---@alias CS.System.TypeNames.Display System.TypeNames.Display
CS.System.TypeNames.Display = System.TypeNames.Display

---@param innerName System.TypeIdentifier
---@return System.TypeName
function System.TypeNames.Display:NestedName(innerName) end

---@class System.TypeIdentifiers : System.Object
System.TypeIdentifiers = {}
---@alias CS.System.TypeIdentifiers System.TypeIdentifiers
CS.System.TypeIdentifiers = System.TypeIdentifiers

---@return System.TypeIdentifiers
function System.TypeIdentifiers.New() end

---@class System.TypeIdentifiers.Display : System.TypeNames.ATypeName
---@field DisplayName string
---@field InternalName string
System.TypeIdentifiers.Display = {}
---@alias CS.System.TypeIdentifiers.Display System.TypeIdentifiers.Display
CS.System.TypeIdentifiers.Display = System.TypeIdentifiers.Display

---@param innerName System.TypeIdentifier
---@return System.TypeName
function System.TypeIdentifiers.Display:NestedName(innerName) end

---@class System.TypeIdentifiers.Internal : System.TypeNames.ATypeName
---@field DisplayName string
---@field InternalName string
System.TypeIdentifiers.Internal = {}
---@alias CS.System.TypeIdentifiers.Internal System.TypeIdentifiers.Internal
CS.System.TypeIdentifiers.Internal = System.TypeIdentifiers.Internal

---@param innerName System.TypeIdentifier
---@return System.TypeName
function System.TypeIdentifiers.Internal:NestedName(innerName) end

---@class System.TypeIdentifiers.NoEscape : System.TypeNames.ATypeName
---@field DisplayName string
---@field InternalName string
System.TypeIdentifiers.NoEscape = {}
---@alias CS.System.TypeIdentifiers.NoEscape System.TypeIdentifiers.NoEscape
CS.System.TypeIdentifiers.NoEscape = System.TypeIdentifiers.NoEscape

---@param innerName System.TypeIdentifier
---@return System.TypeName
function System.TypeIdentifiers.NoEscape:NestedName(innerName) end

---@class System.ModifierSpec
System.ModifierSpec = {}
---@alias CS.System.ModifierSpec System.ModifierSpec
CS.System.ModifierSpec = System.ModifierSpec

---@param type System.Type
---@return System.Type
function System.ModifierSpec:Resolve(type) end
---@param sb System.Text.StringBuilder
---@return System.Text.StringBuilder
function System.ModifierSpec:Append(sb) end

---@class System.ArraySpec : System.Object
---@field Rank number
---@field IsBound boolean
System.ArraySpec = {}
---@alias CS.System.ArraySpec System.ArraySpec
CS.System.ArraySpec = System.ArraySpec

---@param type System.Type
---@return System.Type
function System.ArraySpec:Resolve(type) end
---@param sb System.Text.StringBuilder
---@return System.Text.StringBuilder
function System.ArraySpec:Append(sb) end
---@return string
function System.ArraySpec:ToString() end

---@class System.PointerSpec : System.Object
System.PointerSpec = {}
---@alias CS.System.PointerSpec System.PointerSpec
CS.System.PointerSpec = System.PointerSpec

---@param type System.Type
---@return System.Type
function System.PointerSpec:Resolve(type) end
---@param sb System.Text.StringBuilder
---@return System.Text.StringBuilder
function System.PointerSpec:Append(sb) end
---@return string
function System.PointerSpec:ToString() end

---@class System.TypeSpec : System.Object
System.TypeSpec = {}
---@alias CS.System.TypeSpec System.TypeSpec
CS.System.TypeSpec = System.TypeSpec

---@return System.TypeSpec
function System.TypeSpec.New() end

---@class System.TypeSpec.DisplayNameFormat
---@field Default System.TypeSpec.DisplayNameFormat
---@field WANT_ASSEMBLY System.TypeSpec.DisplayNameFormat
---@field NO_MODIFIERS System.TypeSpec.DisplayNameFormat
System.TypeSpec.DisplayNameFormat = {}
---@alias CS.System.TypeSpec.DisplayNameFormat System.TypeSpec.DisplayNameFormat
CS.System.TypeSpec.DisplayNameFormat = System.TypeSpec.DisplayNameFormat


---@class System.TypeSpec.TypeSpecTypeName : System.TypeNames.ATypeName
---@field DisplayName string
System.TypeSpec.TypeSpecTypeName = {}
---@alias CS.System.TypeSpec.TypeSpecTypeName System.TypeSpec.TypeSpecTypeName
CS.System.TypeSpec.TypeSpecTypeName = System.TypeSpec.TypeSpecTypeName

---@param innerName System.TypeIdentifier
---@return System.TypeName
function System.TypeSpec.TypeSpecTypeName:NestedName(innerName) end

---@class System.UIntPtr : System.ValueType
---@field Zero System.UIntPtr
---@field Size number
System.UIntPtr = {}
---@alias CS.System.UIntPtr System.UIntPtr
CS.System.UIntPtr = System.UIntPtr

---@overload fun(value: number) : System.UIntPtr
---@overload fun(value: number) : System.UIntPtr
---@param value System.Void*
---@return System.UIntPtr
function System.UIntPtr.New(value) end
---@param pointer System.UIntPtr
---@param offset number
---@return System.UIntPtr
function System.UIntPtr.Add(pointer, offset) end
---@param pointer System.UIntPtr
---@param offset number
---@return System.UIntPtr
function System.UIntPtr.Subtract(pointer, offset) end
---@param obj System.Object
---@return boolean
function System.UIntPtr:Equals(obj) end
---@return number
function System.UIntPtr:GetHashCode() end
---@return number
function System.UIntPtr:ToUInt32() end
---@return number
function System.UIntPtr:ToUInt64() end
---@return System.Void*
function System.UIntPtr:ToPointer() end
---@return string
function System.UIntPtr:ToString() end

---@class System.ValueType : System.Object
System.ValueType = {}
---@alias CS.System.ValueType System.ValueType
CS.System.ValueType = System.ValueType

---@param obj System.Object
---@return boolean
function System.ValueType:Equals(obj) end
---@return number
function System.ValueType:GetHashCode() end
---@return string
function System.ValueType:ToString() end

---@class System.ValueType.Internal : System.Object
---@field hash_code_of_ptr_seed number
System.ValueType.Internal = {}
---@alias CS.System.ValueType.Internal System.ValueType.Internal
CS.System.ValueType.Internal = System.ValueType.Internal


---@class System.Variant : System.ValueType
---@field vt number
---@field wReserved1 number
---@field wReserved2 number
---@field wReserved3 number
---@field llVal number
---@field lVal number
---@field bVal number
---@field iVal number
---@field fltVal number
---@field dblVal number
---@field boolVal number
---@field bstrVal System.IntPtr
---@field cVal number
---@field uiVal number
---@field ulVal number
---@field ullVal number
---@field intVal number
---@field uintVal number
---@field pdispVal System.IntPtr
---@field bRecord System.BRECORD
System.Variant = {}
---@alias CS.System.Variant System.Variant
CS.System.Variant = System.Variant

---@param vt number
---@param addr System.IntPtr
---@return System.Object
function System.Variant.GetValueAt(vt, addr) end
---@param obj System.Object
function System.Variant:SetValue(obj) end
---@return System.Object
function System.Variant:GetValue() end
function System.Variant:Clear() end

---@class System.BRECORD : System.ValueType
System.BRECORD = {}
---@alias CS.System.BRECORD System.BRECORD
CS.System.BRECORD = System.BRECORD


---@class System.WeakReference : System.Object
---@field IsAlive boolean
---@field Target System.Object
---@field TrackResurrection boolean
System.WeakReference = {}
---@alias CS.System.WeakReference System.WeakReference
CS.System.WeakReference = System.WeakReference

---@overload fun(target: System.Object) : System.WeakReference
---@param target System.Object
---@param trackResurrection boolean
---@return System.WeakReference
function System.WeakReference.New(target, trackResurrection) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.WeakReference:GetObjectData(info, context) end

---@class System.WeakReference : System.Object
System.WeakReference = {}
---@alias CS.System.WeakReference System.WeakReference
CS.System.WeakReference = System.WeakReference

---@overload fun(target: T) : System.WeakReference
---@param target T
---@param trackResurrection boolean
---@return System.WeakReference
function System.WeakReference.New(target, trackResurrection) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.WeakReference:GetObjectData(info, context) end
---@param target T
function System.WeakReference:SetTarget(target) end
---@param out_target T
---@return boolean,T
function System.WeakReference:TryGetTarget(out_target) end

---@class System.ConsoleCursorInfo : System.ValueType
---@field Size number
---@field Visible boolean
System.ConsoleCursorInfo = {}
---@alias CS.System.ConsoleCursorInfo System.ConsoleCursorInfo
CS.System.ConsoleCursorInfo = System.ConsoleCursorInfo


---@class System.InputRecord : System.ValueType
---@field EventType number
---@field KeyDown boolean
---@field RepeatCount number
---@field VirtualKeyCode number
---@field VirtualScanCode number
---@field Character System.Char
---@field ControlKeyState number
System.InputRecord = {}
---@alias CS.System.InputRecord System.InputRecord
CS.System.InputRecord = System.InputRecord


---@class System.CharInfo : System.ValueType
---@field Character System.Char
---@field Attributes number
System.CharInfo = {}
---@alias CS.System.CharInfo System.CharInfo
CS.System.CharInfo = System.CharInfo


---@class System.Coord : System.ValueType
---@field X number
---@field Y number
System.Coord = {}
---@alias CS.System.Coord System.Coord
CS.System.Coord = System.Coord

---@param x number
---@param y number
---@return System.Coord
function System.Coord.New(x, y) end

---@class System.SmallRect : System.ValueType
---@field Left number
---@field Top number
---@field Right number
---@field Bottom number
System.SmallRect = {}
---@alias CS.System.SmallRect System.SmallRect
CS.System.SmallRect = System.SmallRect

---@param left number
---@param top number
---@param right number
---@param bottom number
---@return System.SmallRect
function System.SmallRect.New(left, top, right, bottom) end

---@class System.ConsoleScreenBufferInfo : System.ValueType
---@field Size System.Coord
---@field CursorPosition System.Coord
---@field Attribute number
---@field Window System.SmallRect
---@field MaxWindowSize System.Coord
System.ConsoleScreenBufferInfo = {}
---@alias CS.System.ConsoleScreenBufferInfo System.ConsoleScreenBufferInfo
CS.System.ConsoleScreenBufferInfo = System.ConsoleScreenBufferInfo


---@class System.Handles
---@field STD_INPUT System.Handles
---@field STD_OUTPUT System.Handles
---@field STD_ERROR System.Handles
System.Handles = {}
---@alias CS.System.Handles System.Handles
CS.System.Handles = System.Handles


---@class System.WindowsConsoleDriver : System.Object
---@field BackgroundColor System.ConsoleColor
---@field BufferHeight number
---@field BufferWidth number
---@field CapsLock boolean
---@field CursorLeft number
---@field CursorSize number
---@field CursorTop number
---@field CursorVisible boolean
---@field ForegroundColor System.ConsoleColor
---@field KeyAvailable boolean
---@field Initialized boolean
---@field LargestWindowHeight number
---@field LargestWindowWidth number
---@field NumberLock boolean
---@field Title string
---@field TreatControlCAsInput boolean
---@field WindowHeight number
---@field WindowLeft number
---@field WindowTop number
---@field WindowWidth number
System.WindowsConsoleDriver = {}
---@alias CS.System.WindowsConsoleDriver System.WindowsConsoleDriver
CS.System.WindowsConsoleDriver = System.WindowsConsoleDriver

---@return System.WindowsConsoleDriver
function System.WindowsConsoleDriver.New() end
---@param frequency number
---@param duration number
function System.WindowsConsoleDriver:Beep(frequency, duration) end
function System.WindowsConsoleDriver:Clear() end
---@param sourceLeft number
---@param sourceTop number
---@param sourceWidth number
---@param sourceHeight number
---@param targetLeft number
---@param targetTop number
---@param sourceChar System.Char
---@param sourceForeColor System.ConsoleColor
---@param sourceBackColor System.ConsoleColor
function System.WindowsConsoleDriver:MoveBufferArea(sourceLeft, sourceTop, sourceWidth, sourceHeight, targetLeft, targetTop, sourceChar, sourceForeColor, sourceBackColor) end
function System.WindowsConsoleDriver:Init() end
---@return string
function System.WindowsConsoleDriver:ReadLine() end
---@param intercept boolean
---@return System.ConsoleKeyInfo
function System.WindowsConsoleDriver:ReadKey(intercept) end
function System.WindowsConsoleDriver:ResetColor() end
---@param width number
---@param height number
function System.WindowsConsoleDriver:SetBufferSize(width, height) end
---@param left number
---@param top number
function System.WindowsConsoleDriver:SetCursorPosition(left, top) end
---@param left number
---@param top number
function System.WindowsConsoleDriver:SetWindowPosition(left, top) end
---@param width number
---@param height number
function System.WindowsConsoleDriver:SetWindowSize(width, height) end

---@class System.__ComObject : System.MarshalByRefObject
System.__ComObject = {}
---@alias CS.System.__ComObject System.__ComObject
CS.System.__ComObject = System.__ComObject

---@return System.__ComObject
function System.__ComObject.New() end
---@param obj System.Object
---@return boolean
function System.__ComObject:Equals(obj) end
---@return number
function System.__ComObject:GetHashCode() end

---@class System.Decimal : System.ValueType
---@field Zero System.Decimal
---@field One System.Decimal
---@field MinusOne System.Decimal
---@field MaxValue System.Decimal
---@field MinValue System.Decimal
System.Decimal = {}
---@alias CS.System.Decimal System.Decimal
CS.System.Decimal = System.Decimal

---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(value: number) : System.Decimal
---@overload fun(bits: System.Int32[]) : System.Decimal
---@param lo number
---@param mid number
---@param hi number
---@param isNegative boolean
---@param scale number
---@return System.Decimal
function System.Decimal.New(lo, mid, hi, isNegative, scale) end
---@param cy number
---@return System.Decimal
function System.Decimal.FromOACurrency(cy) end
---@param value System.Decimal
---@return number
function System.Decimal.ToOACurrency(value) end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Add(d1, d2) end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Ceiling(d) end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return number
function System.Decimal.Compare(d1, d2) end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Divide(d1, d2) end
---@overload fun(d1: System.Decimal, d2: System.Decimal) : boolean
---@overload fun(self: System.Decimal, value: System.Object) : boolean
---@param value System.Decimal
---@return boolean
function System.Decimal:Equals(value) end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Floor(d) end
---@overload fun(s: string) : System.Decimal
---@overload fun(s: string, style: System.Globalization.NumberStyles) : System.Decimal
---@overload fun(s: string, provider: System.IFormatProvider) : System.Decimal
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider) : System.Decimal
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@return System.Decimal
function System.Decimal.Parse(s, style, provider) end
---@overload fun(s: string, out_result: System.Decimal) : boolean, System.Decimal
---@overload fun(s: System.ReadOnlySpan, out_result: System.Decimal) : boolean, System.Decimal
---@overload fun(s: string, style: System.Globalization.NumberStyles, provider: System.IFormatProvider, out_result: System.Decimal) : boolean, System.Decimal
---@param s System.ReadOnlySpan
---@param style System.Globalization.NumberStyles
---@param provider System.IFormatProvider
---@param out_result System.Decimal
---@return boolean,System.Decimal
function System.Decimal.TryParse(s, style, provider, out_result) end
---@param d System.Decimal
---@return System.Int32[]
function System.Decimal.GetBits(d) end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Remainder(d1, d2) end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Multiply(d1, d2) end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Negate(d) end
---@overload fun(d: System.Decimal) : System.Decimal
---@overload fun(d: System.Decimal, decimals: number) : System.Decimal
---@overload fun(d: System.Decimal, mode: System.MidpointRounding) : System.Decimal
---@param d System.Decimal
---@param decimals number
---@param mode System.MidpointRounding
---@return System.Decimal
function System.Decimal.Round(d, decimals, mode) end
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function System.Decimal.Subtract(d1, d2) end
---@param value System.Decimal
---@return number
function System.Decimal.ToByte(value) end
---@param value System.Decimal
---@return number
function System.Decimal.ToSByte(value) end
---@param value System.Decimal
---@return number
function System.Decimal.ToInt16(value) end
---@param d System.Decimal
---@return number
function System.Decimal.ToDouble(d) end
---@param d System.Decimal
---@return number
function System.Decimal.ToInt32(d) end
---@param d System.Decimal
---@return number
function System.Decimal.ToInt64(d) end
---@param value System.Decimal
---@return number
function System.Decimal.ToUInt16(value) end
---@param d System.Decimal
---@return number
function System.Decimal.ToUInt32(d) end
---@param d System.Decimal
---@return number
function System.Decimal.ToUInt64(d) end
---@param d System.Decimal
---@return number
function System.Decimal.ToSingle(d) end
---@param d System.Decimal
---@return System.Decimal
function System.Decimal.Truncate(d) end
---@overload fun(self: System.Decimal, value: System.Object) : number
---@param value System.Decimal
---@return number
function System.Decimal:CompareTo(value) end
---@return number
function System.Decimal:GetHashCode() end
---@overload fun() : string
---@overload fun(self: System.Decimal, format: string) : string
---@overload fun(self: System.Decimal, provider: System.IFormatProvider) : string
---@param format string
---@param provider System.IFormatProvider
---@return string
function System.Decimal:ToString(format, provider) end
---@param destination System.Span
---@param out_charsWritten number
---@param format System.ReadOnlySpan
---@param provider System.IFormatProvider
---@return boolean,number
function System.Decimal:TryFormat(destination, out_charsWritten, format, provider) end
---@return System.TypeCode
function System.Decimal:GetTypeCode() end

---@class System.Decimal.DecCalc : System.ValueType
System.Decimal.DecCalc = {}
---@alias CS.System.Decimal.DecCalc System.Decimal.DecCalc
CS.System.Decimal.DecCalc = System.Decimal.DecCalc


---@class System.Decimal.DecCalc.RoundingMode
---@field ToEven System.Decimal.DecCalc.RoundingMode
---@field AwayFromZero System.Decimal.DecCalc.RoundingMode
---@field Truncate System.Decimal.DecCalc.RoundingMode
---@field Floor System.Decimal.DecCalc.RoundingMode
---@field Ceiling System.Decimal.DecCalc.RoundingMode
System.Decimal.DecCalc.RoundingMode = {}
---@alias CS.System.Decimal.DecCalc.RoundingMode System.Decimal.DecCalc.RoundingMode
CS.System.Decimal.DecCalc.RoundingMode = System.Decimal.DecCalc.RoundingMode


---@class System.Decimal.DecCalc.PowerOvfl : System.ValueType
---@field Hi number
---@field MidLo number
System.Decimal.DecCalc.PowerOvfl = {}
---@alias CS.System.Decimal.DecCalc.PowerOvfl System.Decimal.DecCalc.PowerOvfl
CS.System.Decimal.DecCalc.PowerOvfl = System.Decimal.DecCalc.PowerOvfl

---@param hi number
---@param mid number
---@param lo number
---@return System.Decimal.DecCalc.PowerOvfl
function System.Decimal.DecCalc.PowerOvfl.New(hi, mid, lo) end

---@class System.Decimal.DecCalc.Buf12 : System.ValueType
---@field U0 number
---@field U1 number
---@field U2 number
---@field Low64 number
---@field High64 number
System.Decimal.DecCalc.Buf12 = {}
---@alias CS.System.Decimal.DecCalc.Buf12 System.Decimal.DecCalc.Buf12
CS.System.Decimal.DecCalc.Buf12 = System.Decimal.DecCalc.Buf12


---@class System.Decimal.DecCalc.Buf16 : System.ValueType
---@field U0 number
---@field U1 number
---@field U2 number
---@field U3 number
---@field Low64 number
---@field High64 number
System.Decimal.DecCalc.Buf16 = {}
---@alias CS.System.Decimal.DecCalc.Buf16 System.Decimal.DecCalc.Buf16
CS.System.Decimal.DecCalc.Buf16 = System.Decimal.DecCalc.Buf16


---@class System.Decimal.DecCalc.Buf24 : System.ValueType
---@field U0 number
---@field U1 number
---@field U2 number
---@field U3 number
---@field U4 number
---@field U5 number
---@field Low64 number
---@field Mid64 number
---@field High64 number
---@field Length number
System.Decimal.DecCalc.Buf24 = {}
---@alias CS.System.Decimal.DecCalc.Buf24 System.Decimal.DecCalc.Buf24
CS.System.Decimal.DecCalc.Buf24 = System.Decimal.DecCalc.Buf24


---@class System.Decimal.DecCalc.Buf28 : System.ValueType
---@field Buf24 System.Decimal.DecCalc.Buf24
---@field U6 number
---@field Length number
System.Decimal.DecCalc.Buf28 = {}
---@alias CS.System.Decimal.DecCalc.Buf28 System.Decimal.DecCalc.Buf28
CS.System.Decimal.DecCalc.Buf28 = System.Decimal.DecCalc.Buf28


---@class System.Deployment.Internal.InternalActivationContextHelper : System.Object
System.Deployment.Internal.InternalActivationContextHelper = {}
---@alias CS.System.Deployment.Internal.InternalActivationContextHelper System.Deployment.Internal.InternalActivationContextHelper
CS.System.Deployment.Internal.InternalActivationContextHelper = System.Deployment.Internal.InternalActivationContextHelper

---@param appInfo System.ActivationContext
---@return System.Object
function System.Deployment.Internal.InternalActivationContextHelper.GetActivationContextData(appInfo) end
---@param appInfo System.ActivationContext
---@return System.Object
function System.Deployment.Internal.InternalActivationContextHelper.GetApplicationComponentManifest(appInfo) end
---@param appInfo System.ActivationContext
---@return System.Byte[]
function System.Deployment.Internal.InternalActivationContextHelper.GetApplicationManifestBytes(appInfo) end
---@param appInfo System.ActivationContext
---@return System.Object
function System.Deployment.Internal.InternalActivationContextHelper.GetDeploymentComponentManifest(appInfo) end
---@param appInfo System.ActivationContext
---@return System.Byte[]
function System.Deployment.Internal.InternalActivationContextHelper.GetDeploymentManifestBytes(appInfo) end
---@param appInfo System.ActivationContext
---@return boolean
function System.Deployment.Internal.InternalActivationContextHelper.IsFirstRun(appInfo) end
---@param appInfo System.ActivationContext
function System.Deployment.Internal.InternalActivationContextHelper.PrepareForExecution(appInfo) end

---@class System.Deployment.Internal.InternalApplicationIdentityHelper : System.Object
System.Deployment.Internal.InternalApplicationIdentityHelper = {}
---@alias CS.System.Deployment.Internal.InternalApplicationIdentityHelper System.Deployment.Internal.InternalApplicationIdentityHelper
CS.System.Deployment.Internal.InternalApplicationIdentityHelper = System.Deployment.Internal.InternalApplicationIdentityHelper

---@param id System.ApplicationIdentity
---@return System.Object
function System.Deployment.Internal.InternalApplicationIdentityHelper.GetInternalAppId(id) end

---@class System.Threading.AbandonedMutexException : System.SystemException
---@field Mutex System.Threading.Mutex
---@field MutexIndex number
System.Threading.AbandonedMutexException = {}
---@alias CS.System.Threading.AbandonedMutexException System.Threading.AbandonedMutexException
CS.System.Threading.AbandonedMutexException = System.Threading.AbandonedMutexException

---@overload fun() : System.Threading.AbandonedMutexException
---@overload fun(message: string) : System.Threading.AbandonedMutexException
---@overload fun(message: string, inner: System.Exception) : System.Threading.AbandonedMutexException
---@overload fun(location: number, handle: System.Threading.WaitHandle) : System.Threading.AbandonedMutexException
---@overload fun(message: string, location: number, handle: System.Threading.WaitHandle) : System.Threading.AbandonedMutexException
---@param message string
---@param inner System.Exception
---@param location number
---@param handle System.Threading.WaitHandle
---@return System.Threading.AbandonedMutexException
function System.Threading.AbandonedMutexException.New(message, inner, location, handle) end

---@class System.Threading.ApartmentState
---@field STA System.Threading.ApartmentState
---@field MTA System.Threading.ApartmentState
---@field Unknown System.Threading.ApartmentState
System.Threading.ApartmentState = {}
---@alias CS.System.Threading.ApartmentState System.Threading.ApartmentState
CS.System.Threading.ApartmentState = System.Threading.ApartmentState


---@class System.Threading.AsyncLocal : System.Object
---@field Value T
System.Threading.AsyncLocal = {}
---@alias CS.System.Threading.AsyncLocal System.Threading.AsyncLocal
CS.System.Threading.AsyncLocal = System.Threading.AsyncLocal

---@overload fun() : System.Threading.AsyncLocal
---@param valueChangedHandler System.Action[System.Threading.AsyncLocalValueChangedArgs[T]]
---@return System.Threading.AsyncLocal
function System.Threading.AsyncLocal.New(valueChangedHandler) end

---@class System.Threading.IAsyncLocal
System.Threading.IAsyncLocal = {}
---@alias CS.System.Threading.IAsyncLocal System.Threading.IAsyncLocal
CS.System.Threading.IAsyncLocal = System.Threading.IAsyncLocal

---@param previousValue System.Object
---@param currentValue System.Object
---@param contextChanged boolean
function System.Threading.IAsyncLocal:OnValueChanged(previousValue, currentValue, contextChanged) end

---@class System.Threading.AsyncLocalValueChangedArgs : System.ValueType
---@field PreviousValue T
---@field CurrentValue T
---@field ThreadContextChanged boolean
System.Threading.AsyncLocalValueChangedArgs = {}
---@alias CS.System.Threading.AsyncLocalValueChangedArgs System.Threading.AsyncLocalValueChangedArgs
CS.System.Threading.AsyncLocalValueChangedArgs = System.Threading.AsyncLocalValueChangedArgs


---@class System.Threading.IAsyncLocalValueMap
System.Threading.IAsyncLocalValueMap = {}
---@alias CS.System.Threading.IAsyncLocalValueMap System.Threading.IAsyncLocalValueMap
CS.System.Threading.IAsyncLocalValueMap = System.Threading.IAsyncLocalValueMap

---@param key System.Threading.IAsyncLocal
---@param out_value System.Object
---@return boolean,System.Object
function System.Threading.IAsyncLocalValueMap:TryGetValue(key, out_value) end
---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.IAsyncLocalValueMap
function System.Threading.IAsyncLocalValueMap:Set(key, value) end

---@class System.Threading.AsyncLocalValueMap : System.Object
---@field Empty System.Threading.IAsyncLocalValueMap
System.Threading.AsyncLocalValueMap = {}
---@alias CS.System.Threading.AsyncLocalValueMap System.Threading.AsyncLocalValueMap
CS.System.Threading.AsyncLocalValueMap = System.Threading.AsyncLocalValueMap


---@class System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap : System.Object
System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap = {}
---@alias CS.System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap
CS.System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap = System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap

---@return System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap.New() end
---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.IAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap:Set(key, value) end
---@param key System.Threading.IAsyncLocal
---@param out_value System.Object
---@return boolean,System.Object
function System.Threading.AsyncLocalValueMap.EmptyAsyncLocalValueMap:TryGetValue(key, out_value) end

---@class System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap : System.Object
System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap = {}
---@alias CS.System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap
CS.System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap = System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap

---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap.New(key, value) end
---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.IAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap:Set(key, value) end
---@param key System.Threading.IAsyncLocal
---@param out_value System.Object
---@return boolean,System.Object
function System.Threading.AsyncLocalValueMap.OneElementAsyncLocalValueMap:TryGetValue(key, out_value) end

---@class System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap : System.Object
System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap = {}
---@alias CS.System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap
CS.System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap = System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap

---@param key1 System.Threading.IAsyncLocal
---@param value1 System.Object
---@param key2 System.Threading.IAsyncLocal
---@param value2 System.Object
---@return System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap.New(key1, value1, key2, value2) end
---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.IAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap:Set(key, value) end
---@param key System.Threading.IAsyncLocal
---@param out_value System.Object
---@return boolean,System.Object
function System.Threading.AsyncLocalValueMap.TwoElementAsyncLocalValueMap:TryGetValue(key, out_value) end

---@class System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap : System.Object
System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap = {}
---@alias CS.System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap
CS.System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap = System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap

---@param key1 System.Threading.IAsyncLocal
---@param value1 System.Object
---@param key2 System.Threading.IAsyncLocal
---@param value2 System.Object
---@param key3 System.Threading.IAsyncLocal
---@param value3 System.Object
---@return System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap.New(key1, value1, key2, value2, key3, value3) end
---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.IAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap:Set(key, value) end
---@param key System.Threading.IAsyncLocal
---@param out_value System.Object
---@return boolean,System.Object
function System.Threading.AsyncLocalValueMap.ThreeElementAsyncLocalValueMap:TryGetValue(key, out_value) end

---@class System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap : System.Object
System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap = {}
---@alias CS.System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap
CS.System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap = System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap

---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.IAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap:Set(key, value) end
---@param key System.Threading.IAsyncLocal
---@param out_value System.Object
---@return boolean,System.Object
function System.Threading.AsyncLocalValueMap.MultiElementAsyncLocalValueMap:TryGetValue(key, out_value) end

---@class System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap : System.Collections.Generic.Dictionary
System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap = {}
---@alias CS.System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap
CS.System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap = System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap

---@param capacity number
---@return System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap.New(capacity) end
---@param key System.Threading.IAsyncLocal
---@param value System.Object
---@return System.Threading.IAsyncLocalValueMap
function System.Threading.AsyncLocalValueMap.ManyElementAsyncLocalValueMap:Set(key, value) end

---@class System.Threading.AutoResetEvent : System.Threading.EventWaitHandle
System.Threading.AutoResetEvent = {}
---@alias CS.System.Threading.AutoResetEvent System.Threading.AutoResetEvent
CS.System.Threading.AutoResetEvent = System.Threading.AutoResetEvent

---@param initialState boolean
---@return System.Threading.AutoResetEvent
function System.Threading.AutoResetEvent.New(initialState) end

---@class System.Threading.EventResetMode
---@field AutoReset System.Threading.EventResetMode
---@field ManualReset System.Threading.EventResetMode
System.Threading.EventResetMode = {}
---@alias CS.System.Threading.EventResetMode System.Threading.EventResetMode
CS.System.Threading.EventResetMode = System.Threading.EventResetMode


---@class System.Threading.LazyInitializer : System.Object
System.Threading.LazyInitializer = {}
---@alias CS.System.Threading.LazyInitializer System.Threading.LazyInitializer
CS.System.Threading.LazyInitializer = System.Threading.LazyInitializer


---@class System.Threading.LazyThreadSafetyMode
---@field None System.Threading.LazyThreadSafetyMode
---@field PublicationOnly System.Threading.LazyThreadSafetyMode
---@field ExecutionAndPublication System.Threading.LazyThreadSafetyMode
System.Threading.LazyThreadSafetyMode = {}
---@alias CS.System.Threading.LazyThreadSafetyMode System.Threading.LazyThreadSafetyMode
CS.System.Threading.LazyThreadSafetyMode = System.Threading.LazyThreadSafetyMode


---@class System.Threading.LockRecursionException : System.Exception
System.Threading.LockRecursionException = {}
---@alias CS.System.Threading.LockRecursionException System.Threading.LockRecursionException
CS.System.Threading.LockRecursionException = System.Threading.LockRecursionException

---@overload fun() : System.Threading.LockRecursionException
---@overload fun(message: string) : System.Threading.LockRecursionException
---@param message string
---@param innerException System.Exception
---@return System.Threading.LockRecursionException
function System.Threading.LockRecursionException.New(message, innerException) end

---@class System.Threading.ManualResetEvent : System.Threading.EventWaitHandle
System.Threading.ManualResetEvent = {}
---@alias CS.System.Threading.ManualResetEvent System.Threading.ManualResetEvent
CS.System.Threading.ManualResetEvent = System.Threading.ManualResetEvent

---@param initialState boolean
---@return System.Threading.ManualResetEvent
function System.Threading.ManualResetEvent.New(initialState) end

---@class System.Threading.ParameterizedThreadStart : System.MulticastDelegate
System.Threading.ParameterizedThreadStart = {}
---@alias CS.System.Threading.ParameterizedThreadStart System.Threading.ParameterizedThreadStart
CS.System.Threading.ParameterizedThreadStart = System.Threading.ParameterizedThreadStart

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.ParameterizedThreadStart
function System.Threading.ParameterizedThreadStart.New(object, method) end
---@param obj System.Object
function System.Threading.ParameterizedThreadStart:Invoke(obj) end
---@param obj System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.ParameterizedThreadStart:BeginInvoke(obj, callback, object) end
---@param result System.IAsyncResult
function System.Threading.ParameterizedThreadStart:EndInvoke(result) end

---@class System.Threading.SemaphoreFullException : System.SystemException
System.Threading.SemaphoreFullException = {}
---@alias CS.System.Threading.SemaphoreFullException System.Threading.SemaphoreFullException
CS.System.Threading.SemaphoreFullException = System.Threading.SemaphoreFullException

---@overload fun() : System.Threading.SemaphoreFullException
---@overload fun(message: string) : System.Threading.SemaphoreFullException
---@param message string
---@param innerException System.Exception
---@return System.Threading.SemaphoreFullException
function System.Threading.SemaphoreFullException.New(message, innerException) end

---@class System.Threading.SendOrPostCallback : System.MulticastDelegate
System.Threading.SendOrPostCallback = {}
---@alias CS.System.Threading.SendOrPostCallback System.Threading.SendOrPostCallback
CS.System.Threading.SendOrPostCallback = System.Threading.SendOrPostCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.SendOrPostCallback
function System.Threading.SendOrPostCallback.New(object, method) end
---@param state System.Object
function System.Threading.SendOrPostCallback:Invoke(state) end
---@param state System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.SendOrPostCallback:BeginInvoke(state, callback, object) end
---@param result System.IAsyncResult
function System.Threading.SendOrPostCallback:EndInvoke(result) end

---@class System.Threading.SynchronizationLockException : System.SystemException
System.Threading.SynchronizationLockException = {}
---@alias CS.System.Threading.SynchronizationLockException System.Threading.SynchronizationLockException
CS.System.Threading.SynchronizationLockException = System.Threading.SynchronizationLockException

---@overload fun() : System.Threading.SynchronizationLockException
---@overload fun(message: string) : System.Threading.SynchronizationLockException
---@param message string
---@param innerException System.Exception
---@return System.Threading.SynchronizationLockException
function System.Threading.SynchronizationLockException.New(message, innerException) end

---@class System.Threading.ThreadPriority
---@field Lowest System.Threading.ThreadPriority
---@field BelowNormal System.Threading.ThreadPriority
---@field Normal System.Threading.ThreadPriority
---@field AboveNormal System.Threading.ThreadPriority
---@field Highest System.Threading.ThreadPriority
System.Threading.ThreadPriority = {}
---@alias CS.System.Threading.ThreadPriority System.Threading.ThreadPriority
CS.System.Threading.ThreadPriority = System.Threading.ThreadPriority


---@class System.Threading.ThreadStart : System.MulticastDelegate
System.Threading.ThreadStart = {}
---@alias CS.System.Threading.ThreadStart System.Threading.ThreadStart
CS.System.Threading.ThreadStart = System.Threading.ThreadStart

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.ThreadStart
function System.Threading.ThreadStart.New(object, method) end
function System.Threading.ThreadStart:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.ThreadStart:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function System.Threading.ThreadStart:EndInvoke(result) end

---@class System.Threading.ThreadStartException : System.SystemException
System.Threading.ThreadStartException = {}
---@alias CS.System.Threading.ThreadStartException System.Threading.ThreadStartException
CS.System.Threading.ThreadStartException = System.Threading.ThreadStartException


---@class System.Threading.ThreadState
---@field Running System.Threading.ThreadState
---@field StopRequested System.Threading.ThreadState
---@field SuspendRequested System.Threading.ThreadState
---@field Background System.Threading.ThreadState
---@field Unstarted System.Threading.ThreadState
---@field Stopped System.Threading.ThreadState
---@field WaitSleepJoin System.Threading.ThreadState
---@field Suspended System.Threading.ThreadState
---@field AbortRequested System.Threading.ThreadState
---@field Aborted System.Threading.ThreadState
System.Threading.ThreadState = {}
---@alias CS.System.Threading.ThreadState System.Threading.ThreadState
CS.System.Threading.ThreadState = System.Threading.ThreadState


---@class System.Threading.ThreadStateException : System.SystemException
System.Threading.ThreadStateException = {}
---@alias CS.System.Threading.ThreadStateException System.Threading.ThreadStateException
CS.System.Threading.ThreadStateException = System.Threading.ThreadStateException

---@overload fun() : System.Threading.ThreadStateException
---@overload fun(message: string) : System.Threading.ThreadStateException
---@param message string
---@param innerException System.Exception
---@return System.Threading.ThreadStateException
function System.Threading.ThreadStateException.New(message, innerException) end

---@class System.Threading.Timeout : System.Object
---@field InfiniteTimeSpan System.TimeSpan
---@field Infinite number
System.Threading.Timeout = {}
---@alias CS.System.Threading.Timeout System.Threading.Timeout
CS.System.Threading.Timeout = System.Threading.Timeout


---@class System.Threading.WaitHandleCannotBeOpenedException : System.ApplicationException
System.Threading.WaitHandleCannotBeOpenedException = {}
---@alias CS.System.Threading.WaitHandleCannotBeOpenedException System.Threading.WaitHandleCannotBeOpenedException
CS.System.Threading.WaitHandleCannotBeOpenedException = System.Threading.WaitHandleCannotBeOpenedException

---@overload fun() : System.Threading.WaitHandleCannotBeOpenedException
---@overload fun(message: string) : System.Threading.WaitHandleCannotBeOpenedException
---@param message string
---@param innerException System.Exception
---@return System.Threading.WaitHandleCannotBeOpenedException
function System.Threading.WaitHandleCannotBeOpenedException.New(message, innerException) end

---@class System.Threading.CountdownEvent : System.Object
---@field CurrentCount number
---@field InitialCount number
---@field IsSet boolean
---@field WaitHandle System.Threading.WaitHandle
System.Threading.CountdownEvent = {}
---@alias CS.System.Threading.CountdownEvent System.Threading.CountdownEvent
CS.System.Threading.CountdownEvent = System.Threading.CountdownEvent

---@param initialCount number
---@return System.Threading.CountdownEvent
function System.Threading.CountdownEvent.New(initialCount) end
function System.Threading.CountdownEvent:Dispose() end
---@overload fun() : boolean
---@param signalCount number
---@return boolean
function System.Threading.CountdownEvent:Signal(signalCount) end
---@overload fun()
---@param signalCount number
function System.Threading.CountdownEvent:AddCount(signalCount) end
---@overload fun() : boolean
---@param signalCount number
---@return boolean
function System.Threading.CountdownEvent:TryAddCount(signalCount) end
---@overload fun()
---@param count number
function System.Threading.CountdownEvent:Reset(count) end
---@overload fun()
---@overload fun(self: System.Threading.CountdownEvent, cancellationToken: System.Threading.CancellationToken)
---@overload fun(self: System.Threading.CountdownEvent, timeout: System.TimeSpan) : boolean
---@overload fun(self: System.Threading.CountdownEvent, timeout: System.TimeSpan, cancellationToken: System.Threading.CancellationToken) : boolean
---@overload fun(self: System.Threading.CountdownEvent, millisecondsTimeout: number) : boolean
---@param millisecondsTimeout number
---@param cancellationToken System.Threading.CancellationToken
---@return boolean
function System.Threading.CountdownEvent:Wait(millisecondsTimeout, cancellationToken) end

---@class System.Threading.CancellationToken : System.ValueType
---@field None System.Threading.CancellationToken
---@field IsCancellationRequested boolean
---@field CanBeCanceled boolean
---@field WaitHandle System.Threading.WaitHandle
System.Threading.CancellationToken = {}
---@alias CS.System.Threading.CancellationToken System.Threading.CancellationToken
CS.System.Threading.CancellationToken = System.Threading.CancellationToken

---@param canceled boolean
---@return System.Threading.CancellationToken
function System.Threading.CancellationToken.New(canceled) end
---@overload fun(self: System.Threading.CancellationToken, callback: System.Action) : System.Threading.CancellationTokenRegistration
---@overload fun(self: System.Threading.CancellationToken, callback: System.Action, useSynchronizationContext: boolean) : System.Threading.CancellationTokenRegistration
---@overload fun(self: System.Threading.CancellationToken, callback: System.Action, state: System.Object) : System.Threading.CancellationTokenRegistration
---@overload fun(self: System.Threading.CancellationToken, callback: System.Action, state: System.Object, useSynchronizationContext: boolean) : System.Threading.CancellationTokenRegistration
---@param callback System.Action
---@param state System.Object
---@param useSynchronizationContext boolean
---@param useExecutionContext boolean
---@return System.Threading.CancellationTokenRegistration
function System.Threading.CancellationToken:Register(callback, state, useSynchronizationContext, useExecutionContext) end
---@overload fun(self: System.Threading.CancellationToken, other: System.Threading.CancellationToken) : boolean
---@param other System.Object
---@return boolean
function System.Threading.CancellationToken:Equals(other) end
---@return number
function System.Threading.CancellationToken:GetHashCode() end
function System.Threading.CancellationToken:ThrowIfCancellationRequested() end

---@class System.Threading.IDeferredDisposable
System.Threading.IDeferredDisposable = {}
---@alias CS.System.Threading.IDeferredDisposable System.Threading.IDeferredDisposable
CS.System.Threading.IDeferredDisposable = System.Threading.IDeferredDisposable

---@param disposed boolean
function System.Threading.IDeferredDisposable:OnFinalRelease(disposed) end

---@class System.Threading.DeferredDisposableLifetime : System.ValueType
System.Threading.DeferredDisposableLifetime = {}
---@alias CS.System.Threading.DeferredDisposableLifetime System.Threading.DeferredDisposableLifetime
CS.System.Threading.DeferredDisposableLifetime = System.Threading.DeferredDisposableLifetime

---@param obj T
---@return boolean
function System.Threading.DeferredDisposableLifetime:AddRef(obj) end
---@param obj T
function System.Threading.DeferredDisposableLifetime:Release(obj) end
---@param obj T
function System.Threading.DeferredDisposableLifetime:Dispose(obj) end

---@class System.Threading.ManualResetEventSlim : System.Object
---@field WaitHandle System.Threading.WaitHandle
---@field IsSet boolean
---@field SpinCount number
System.Threading.ManualResetEventSlim = {}
---@alias CS.System.Threading.ManualResetEventSlim System.Threading.ManualResetEventSlim
CS.System.Threading.ManualResetEventSlim = System.Threading.ManualResetEventSlim

---@overload fun() : System.Threading.ManualResetEventSlim
---@overload fun(initialState: boolean) : System.Threading.ManualResetEventSlim
---@param initialState boolean
---@param spinCount number
---@return System.Threading.ManualResetEventSlim
function System.Threading.ManualResetEventSlim.New(initialState, spinCount) end
function System.Threading.ManualResetEventSlim:Set() end
function System.Threading.ManualResetEventSlim:Reset() end
---@overload fun()
---@overload fun(self: System.Threading.ManualResetEventSlim, cancellationToken: System.Threading.CancellationToken)
---@overload fun(self: System.Threading.ManualResetEventSlim, timeout: System.TimeSpan) : boolean
---@overload fun(self: System.Threading.ManualResetEventSlim, timeout: System.TimeSpan, cancellationToken: System.Threading.CancellationToken) : boolean
---@overload fun(self: System.Threading.ManualResetEventSlim, millisecondsTimeout: number) : boolean
---@param millisecondsTimeout number
---@param cancellationToken System.Threading.CancellationToken
---@return boolean
function System.Threading.ManualResetEventSlim:Wait(millisecondsTimeout, cancellationToken) end
function System.Threading.ManualResetEventSlim:Dispose() end

---@class System.Threading.NativeOverlapped : System.ValueType
---@field InternalLow System.IntPtr
---@field InternalHigh System.IntPtr
---@field OffsetLow number
---@field OffsetHigh number
---@field EventHandle System.IntPtr
System.Threading.NativeOverlapped = {}
---@alias CS.System.Threading.NativeOverlapped System.Threading.NativeOverlapped
CS.System.Threading.NativeOverlapped = System.Threading.NativeOverlapped


---@class System.Threading.SpinWait : System.ValueType
---@field Count number
---@field NextSpinWillYield boolean
System.Threading.SpinWait = {}
---@alias CS.System.Threading.SpinWait System.Threading.SpinWait
CS.System.Threading.SpinWait = System.Threading.SpinWait

---@overload fun(condition: System.Func)
---@overload fun(condition: System.Func, timeout: System.TimeSpan) : boolean
---@param condition System.Func
---@param millisecondsTimeout number
---@return boolean
function System.Threading.SpinWait.SpinUntil(condition, millisecondsTimeout) end
---@overload fun()
---@param sleep1Threshold number
function System.Threading.SpinWait:SpinOnce(sleep1Threshold) end
function System.Threading.SpinWait:Reset() end

---@class System.Threading.PlatformHelper : System.Object
System.Threading.PlatformHelper = {}
---@alias CS.System.Threading.PlatformHelper System.Threading.PlatformHelper
CS.System.Threading.PlatformHelper = System.Threading.PlatformHelper


---@class System.Threading.TimeoutHelper : System.Object
System.Threading.TimeoutHelper = {}
---@alias CS.System.Threading.TimeoutHelper System.Threading.TimeoutHelper
CS.System.Threading.TimeoutHelper = System.Threading.TimeoutHelper

---@return number
function System.Threading.TimeoutHelper.GetTime() end
---@param startTime number
---@param originalWaitMillisecondsTimeout number
---@return number
function System.Threading.TimeoutHelper.UpdateTimeOut(startTime, originalWaitMillisecondsTimeout) end

---@class System.Threading.CancellationTokenRegistration : System.ValueType
---@field Token System.Threading.CancellationToken
System.Threading.CancellationTokenRegistration = {}
---@alias CS.System.Threading.CancellationTokenRegistration System.Threading.CancellationTokenRegistration
CS.System.Threading.CancellationTokenRegistration = System.Threading.CancellationTokenRegistration

---@return boolean
function System.Threading.CancellationTokenRegistration:Unregister() end
function System.Threading.CancellationTokenRegistration:Dispose() end
---@overload fun(self: System.Threading.CancellationTokenRegistration, obj: System.Object) : boolean
---@param other System.Threading.CancellationTokenRegistration
---@return boolean
function System.Threading.CancellationTokenRegistration:Equals(other) end
---@return number
function System.Threading.CancellationTokenRegistration:GetHashCode() end
---@return System.Threading.Tasks.ValueTask
function System.Threading.CancellationTokenRegistration:DisposeAsync() end

---@class System.Threading.CancellationTokenSource : System.Object
---@field IsCancellationRequested boolean
---@field Token System.Threading.CancellationToken
System.Threading.CancellationTokenSource = {}
---@alias CS.System.Threading.CancellationTokenSource System.Threading.CancellationTokenSource
CS.System.Threading.CancellationTokenSource = System.Threading.CancellationTokenSource

---@overload fun() : System.Threading.CancellationTokenSource
---@overload fun(delay: System.TimeSpan) : System.Threading.CancellationTokenSource
---@param millisecondsDelay number
---@return System.Threading.CancellationTokenSource
function System.Threading.CancellationTokenSource.New(millisecondsDelay) end
---@overload fun(token1: System.Threading.CancellationToken, token2: System.Threading.CancellationToken) : System.Threading.CancellationTokenSource
---@param tokens System.Threading.CancellationToken[]
---@return System.Threading.CancellationTokenSource
function System.Threading.CancellationTokenSource.CreateLinkedTokenSource(tokens) end
---@overload fun()
---@param throwOnFirstException boolean
function System.Threading.CancellationTokenSource:Cancel(throwOnFirstException) end
---@overload fun(self: System.Threading.CancellationTokenSource, delay: System.TimeSpan)
---@param millisecondsDelay number
function System.Threading.CancellationTokenSource:CancelAfter(millisecondsDelay) end
function System.Threading.CancellationTokenSource:Dispose() end

---@class System.Threading.CancellationTokenSource.Linked1CancellationTokenSource : System.Threading.CancellationTokenSource
System.Threading.CancellationTokenSource.Linked1CancellationTokenSource = {}
---@alias CS.System.Threading.CancellationTokenSource.Linked1CancellationTokenSource System.Threading.CancellationTokenSource.Linked1CancellationTokenSource
CS.System.Threading.CancellationTokenSource.Linked1CancellationTokenSource = System.Threading.CancellationTokenSource.Linked1CancellationTokenSource


---@class System.Threading.CancellationTokenSource.Linked2CancellationTokenSource : System.Threading.CancellationTokenSource
System.Threading.CancellationTokenSource.Linked2CancellationTokenSource = {}
---@alias CS.System.Threading.CancellationTokenSource.Linked2CancellationTokenSource System.Threading.CancellationTokenSource.Linked2CancellationTokenSource
CS.System.Threading.CancellationTokenSource.Linked2CancellationTokenSource = System.Threading.CancellationTokenSource.Linked2CancellationTokenSource


---@class System.Threading.CancellationTokenSource.LinkedNCancellationTokenSource : System.Threading.CancellationTokenSource
System.Threading.CancellationTokenSource.LinkedNCancellationTokenSource = {}
---@alias CS.System.Threading.CancellationTokenSource.LinkedNCancellationTokenSource System.Threading.CancellationTokenSource.LinkedNCancellationTokenSource
CS.System.Threading.CancellationTokenSource.LinkedNCancellationTokenSource = System.Threading.CancellationTokenSource.LinkedNCancellationTokenSource


---@class System.Threading.CancellationCallbackCoreWorkArguments : System.ValueType
System.Threading.CancellationCallbackCoreWorkArguments = {}
---@alias CS.System.Threading.CancellationCallbackCoreWorkArguments System.Threading.CancellationCallbackCoreWorkArguments
CS.System.Threading.CancellationCallbackCoreWorkArguments = System.Threading.CancellationCallbackCoreWorkArguments

---@param currArrayFragment System.Threading.SparselyPopulatedArrayFragment
---@param currArrayIndex number
---@return System.Threading.CancellationCallbackCoreWorkArguments
function System.Threading.CancellationCallbackCoreWorkArguments.New(currArrayFragment, currArrayIndex) end

---@class System.Threading.CancellationCallbackInfo : System.Object
System.Threading.CancellationCallbackInfo = {}
---@alias CS.System.Threading.CancellationCallbackInfo System.Threading.CancellationCallbackInfo
CS.System.Threading.CancellationCallbackInfo = System.Threading.CancellationCallbackInfo


---@class System.Threading.CancellationCallbackInfo.WithSyncContext : System.Threading.CancellationCallbackInfo
System.Threading.CancellationCallbackInfo.WithSyncContext = {}
---@alias CS.System.Threading.CancellationCallbackInfo.WithSyncContext System.Threading.CancellationCallbackInfo.WithSyncContext
CS.System.Threading.CancellationCallbackInfo.WithSyncContext = System.Threading.CancellationCallbackInfo.WithSyncContext


---@class System.Threading.SparselyPopulatedArray : System.Object
System.Threading.SparselyPopulatedArray = {}
---@alias CS.System.Threading.SparselyPopulatedArray System.Threading.SparselyPopulatedArray
CS.System.Threading.SparselyPopulatedArray = System.Threading.SparselyPopulatedArray


---@class System.Threading.SparselyPopulatedArrayAddInfo : System.ValueType
System.Threading.SparselyPopulatedArrayAddInfo = {}
---@alias CS.System.Threading.SparselyPopulatedArrayAddInfo System.Threading.SparselyPopulatedArrayAddInfo
CS.System.Threading.SparselyPopulatedArrayAddInfo = System.Threading.SparselyPopulatedArrayAddInfo


---@class System.Threading.SparselyPopulatedArrayFragment : System.Object
System.Threading.SparselyPopulatedArrayFragment = {}
---@alias CS.System.Threading.SparselyPopulatedArrayFragment System.Threading.SparselyPopulatedArrayFragment
CS.System.Threading.SparselyPopulatedArrayFragment = System.Threading.SparselyPopulatedArrayFragment


---@class System.Threading.LockHolder : System.ValueType
System.Threading.LockHolder = {}
---@alias CS.System.Threading.LockHolder System.Threading.LockHolder
CS.System.Threading.LockHolder = System.Threading.LockHolder

---@param l System.Threading.Lock
---@return System.Threading.LockHolder
function System.Threading.LockHolder.Hold(l) end
function System.Threading.LockHolder:Dispose() end

---@class System.Threading.ThreadPoolCallbackWrapper : System.ValueType
System.Threading.ThreadPoolCallbackWrapper = {}
---@alias CS.System.Threading.ThreadPoolCallbackWrapper System.Threading.ThreadPoolCallbackWrapper
CS.System.Threading.ThreadPoolCallbackWrapper = System.Threading.ThreadPoolCallbackWrapper

---@return System.Threading.ThreadPoolCallbackWrapper
function System.Threading.ThreadPoolCallbackWrapper.Enter() end
---@param resetThread boolean
function System.Threading.ThreadPoolCallbackWrapper:Exit(resetThread) end

---@class System.Threading.ThreadPoolBoundHandle : System.Object
---@field Handle System.Runtime.InteropServices.SafeHandle
System.Threading.ThreadPoolBoundHandle = {}
---@alias CS.System.Threading.ThreadPoolBoundHandle System.Threading.ThreadPoolBoundHandle
CS.System.Threading.ThreadPoolBoundHandle = System.Threading.ThreadPoolBoundHandle

---@param handle System.Runtime.InteropServices.SafeHandle
---@return System.Threading.ThreadPoolBoundHandle
function System.Threading.ThreadPoolBoundHandle.BindHandle(handle) end
---@param overlapped System.Threading.NativeOverlapped*
---@return System.Object
function System.Threading.ThreadPoolBoundHandle.GetNativeOverlappedState(overlapped) end
---@overload fun(self: System.Threading.ThreadPoolBoundHandle, callback: System.Threading.IOCompletionCallback, state: System.Object, pinData: System.Object) : System.Threading.NativeOverlapped*
---@param preAllocated System.Threading.PreAllocatedOverlapped
---@return System.Threading.NativeOverlapped*
function System.Threading.ThreadPoolBoundHandle:AllocateNativeOverlapped(preAllocated) end
---@param overlapped System.Threading.NativeOverlapped*
function System.Threading.ThreadPoolBoundHandle:FreeNativeOverlapped(overlapped) end
function System.Threading.ThreadPoolBoundHandle:Dispose() end

---@class System.Threading.Win32ThreadPoolNativeOverlapped : System.ValueType
System.Threading.Win32ThreadPoolNativeOverlapped = {}
---@alias CS.System.Threading.Win32ThreadPoolNativeOverlapped System.Threading.Win32ThreadPoolNativeOverlapped
CS.System.Threading.Win32ThreadPoolNativeOverlapped = System.Threading.Win32ThreadPoolNativeOverlapped


---@class System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs : System.Object
System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs = {}
---@alias CS.System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs
CS.System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs = System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs

---@return System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs
function System.Threading.Win32ThreadPoolNativeOverlapped.ExecutionContextCallbackArgs.New() end

---@class System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData : System.Object
System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData = {}
---@alias CS.System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData
CS.System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData = System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData

---@return System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData
function System.Threading.Win32ThreadPoolNativeOverlapped.OverlappedData.New() end

---@class System.Threading.PreAllocatedOverlapped : System.Object
System.Threading.PreAllocatedOverlapped = {}
---@alias CS.System.Threading.PreAllocatedOverlapped System.Threading.PreAllocatedOverlapped
CS.System.Threading.PreAllocatedOverlapped = System.Threading.PreAllocatedOverlapped

---@param callback System.Threading.IOCompletionCallback
---@param state System.Object
---@param pinData System.Object
---@return System.Threading.PreAllocatedOverlapped
function System.Threading.PreAllocatedOverlapped.New(callback, state, pinData) end
function System.Threading.PreAllocatedOverlapped:Dispose() end

---@class System.Threading.Lock : System.Object
System.Threading.Lock = {}
---@alias CS.System.Threading.Lock System.Threading.Lock
CS.System.Threading.Lock = System.Threading.Lock

---@return System.Threading.Lock
function System.Threading.Lock.New() end
function System.Threading.Lock:Acquire() end
function System.Threading.Lock:Release() end

---@class System.Threading.SemaphoreSlim : System.Object
---@field CurrentCount number
---@field AvailableWaitHandle System.Threading.WaitHandle
System.Threading.SemaphoreSlim = {}
---@alias CS.System.Threading.SemaphoreSlim System.Threading.SemaphoreSlim
CS.System.Threading.SemaphoreSlim = System.Threading.SemaphoreSlim

---@overload fun(initialCount: number) : System.Threading.SemaphoreSlim
---@param initialCount number
---@param maxCount number
---@return System.Threading.SemaphoreSlim
function System.Threading.SemaphoreSlim.New(initialCount, maxCount) end
---@overload fun()
---@overload fun(self: System.Threading.SemaphoreSlim, cancellationToken: System.Threading.CancellationToken)
---@overload fun(self: System.Threading.SemaphoreSlim, timeout: System.TimeSpan) : boolean
---@overload fun(self: System.Threading.SemaphoreSlim, timeout: System.TimeSpan, cancellationToken: System.Threading.CancellationToken) : boolean
---@overload fun(self: System.Threading.SemaphoreSlim, millisecondsTimeout: number) : boolean
---@param millisecondsTimeout number
---@param cancellationToken System.Threading.CancellationToken
---@return boolean
function System.Threading.SemaphoreSlim:Wait(millisecondsTimeout, cancellationToken) end
---@overload fun() : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.SemaphoreSlim, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.SemaphoreSlim, millisecondsTimeout: number) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.SemaphoreSlim, timeout: System.TimeSpan) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.SemaphoreSlim, timeout: System.TimeSpan, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param millisecondsTimeout number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Threading.SemaphoreSlim:WaitAsync(millisecondsTimeout, cancellationToken) end
---@overload fun() : number
---@param releaseCount number
---@return number
function System.Threading.SemaphoreSlim:Release(releaseCount) end
function System.Threading.SemaphoreSlim:Dispose() end

---@class System.Threading.SemaphoreSlim.TaskNode : System.Threading.Tasks.Task
---@field Result System.Threading.SemaphoreSlim.TaskNode -- infered from System.Threading.Tasks.Task`1[System.Boolean]
System.Threading.SemaphoreSlim.TaskNode = {}
---@alias CS.System.Threading.SemaphoreSlim.TaskNode System.Threading.SemaphoreSlim.TaskNode
CS.System.Threading.SemaphoreSlim.TaskNode = System.Threading.SemaphoreSlim.TaskNode


---@class System.Threading.SpinLock : System.ValueType
---@field IsHeld boolean
---@field IsHeldByCurrentThread boolean
---@field IsThreadOwnerTrackingEnabled boolean
System.Threading.SpinLock = {}
---@alias CS.System.Threading.SpinLock System.Threading.SpinLock
CS.System.Threading.SpinLock = System.Threading.SpinLock

---@param enableThreadOwnerTracking boolean
---@return System.Threading.SpinLock
function System.Threading.SpinLock.New(enableThreadOwnerTracking) end
---@param ref_lockTaken boolean
---@return ,boolean
function System.Threading.SpinLock:Enter(ref_lockTaken) end
---@overload fun(self: System.Threading.SpinLock, ref_lockTaken: boolean) : boolean
---@overload fun(self: System.Threading.SpinLock, timeout: System.TimeSpan, ref_lockTaken: boolean) : boolean
---@param millisecondsTimeout number
---@param ref_lockTaken boolean
---@return ,boolean
function System.Threading.SpinLock:TryEnter(millisecondsTimeout, ref_lockTaken) end
---@overload fun()
---@param useMemoryBarrier boolean
function System.Threading.SpinLock:Exit(useMemoryBarrier) end

---@class System.Threading.SpinLock.SystemThreading_SpinLockDebugView : System.Object
---@field IsHeldByCurrentThread System.Nullable
---@field OwnerThreadID System.Nullable
---@field IsHeld boolean
System.Threading.SpinLock.SystemThreading_SpinLockDebugView = {}
---@alias CS.System.Threading.SpinLock.SystemThreading_SpinLockDebugView System.Threading.SpinLock.SystemThreading_SpinLockDebugView
CS.System.Threading.SpinLock.SystemThreading_SpinLockDebugView = System.Threading.SpinLock.SystemThreading_SpinLockDebugView

---@param spinLock System.Threading.SpinLock
---@return System.Threading.SpinLock.SystemThreading_SpinLockDebugView
function System.Threading.SpinLock.SystemThreading_SpinLockDebugView.New(spinLock) end

---@class System.Threading.ThreadLocal : System.Object
---@field Value T
---@field Values System.Collections.Generic.IList[T]
---@field IsValueCreated boolean
System.Threading.ThreadLocal = {}
---@alias CS.System.Threading.ThreadLocal System.Threading.ThreadLocal
CS.System.Threading.ThreadLocal = System.Threading.ThreadLocal

---@overload fun() : System.Threading.ThreadLocal
---@overload fun(trackAllValues: boolean) : System.Threading.ThreadLocal
---@overload fun(valueFactory: System.Func[T]) : System.Threading.ThreadLocal
---@param valueFactory System.Func[T]
---@param trackAllValues boolean
---@return System.Threading.ThreadLocal
function System.Threading.ThreadLocal.New(valueFactory, trackAllValues) end
function System.Threading.ThreadLocal:Dispose() end
---@return string
function System.Threading.ThreadLocal:ToString() end

---@class System.Threading.ThreadLocal.LinkedSlotVolatile : System.ValueType
System.Threading.ThreadLocal.LinkedSlotVolatile = {}
---@alias CS.System.Threading.ThreadLocal.LinkedSlotVolatile System.Threading.ThreadLocal.LinkedSlotVolatile
CS.System.Threading.ThreadLocal.LinkedSlotVolatile = System.Threading.ThreadLocal.LinkedSlotVolatile


---@class System.Threading.ThreadLocal.LinkedSlot : System.Object
System.Threading.ThreadLocal.LinkedSlot = {}
---@alias CS.System.Threading.ThreadLocal.LinkedSlot System.Threading.ThreadLocal.LinkedSlot
CS.System.Threading.ThreadLocal.LinkedSlot = System.Threading.ThreadLocal.LinkedSlot


---@class System.Threading.ThreadLocal.IdManager : System.Object
System.Threading.ThreadLocal.IdManager = {}
---@alias CS.System.Threading.ThreadLocal.IdManager System.Threading.ThreadLocal.IdManager
CS.System.Threading.ThreadLocal.IdManager = System.Threading.ThreadLocal.IdManager

---@return System.Threading.ThreadLocal.IdManager
function System.Threading.ThreadLocal.IdManager.New() end

---@class System.Threading.ThreadLocal.FinalizationHelper : System.Object
System.Threading.ThreadLocal.FinalizationHelper = {}
---@alias CS.System.Threading.ThreadLocal.FinalizationHelper System.Threading.ThreadLocal.FinalizationHelper
CS.System.Threading.ThreadLocal.FinalizationHelper = System.Threading.ThreadLocal.FinalizationHelper


---@class System.Threading.SystemThreading_ThreadLocalDebugView : System.Object
---@field IsValueCreated boolean
---@field Value T
---@field Values System.Collections.Generic.List[T]
System.Threading.SystemThreading_ThreadLocalDebugView = {}
---@alias CS.System.Threading.SystemThreading_ThreadLocalDebugView System.Threading.SystemThreading_ThreadLocalDebugView
CS.System.Threading.SystemThreading_ThreadLocalDebugView = System.Threading.SystemThreading_ThreadLocalDebugView

---@param tlocal System.Threading.ThreadLocal[T]
---@return System.Threading.SystemThreading_ThreadLocalDebugView
function System.Threading.SystemThreading_ThreadLocalDebugView.New(tlocal) end

---@class System.Threading.EventWaitHandle : System.Threading.WaitHandle
System.Threading.EventWaitHandle = {}
---@alias CS.System.Threading.EventWaitHandle System.Threading.EventWaitHandle
CS.System.Threading.EventWaitHandle = System.Threading.EventWaitHandle

---@overload fun(initialState: boolean, mode: System.Threading.EventResetMode) : System.Threading.EventWaitHandle
---@overload fun(initialState: boolean, mode: System.Threading.EventResetMode, name: string) : System.Threading.EventWaitHandle
---@overload fun(initialState: boolean, mode: System.Threading.EventResetMode, name: string, out_createdNew: boolean) : System.Threading.EventWaitHandle, boolean
---@param initialState boolean
---@param mode System.Threading.EventResetMode
---@param name string
---@param out_createdNew boolean
---@param eventSecurity System.Security.AccessControl.EventWaitHandleSecurity
---@return System.Threading.EventWaitHandle,boolean
function System.Threading.EventWaitHandle.New(initialState, mode, name, out_createdNew, eventSecurity) end
---@overload fun(name: string) : System.Threading.EventWaitHandle
---@param name string
---@param rights System.Security.AccessControl.EventWaitHandleRights
---@return System.Threading.EventWaitHandle
function System.Threading.EventWaitHandle.OpenExisting(name, rights) end
---@overload fun(name: string, out_result: System.Threading.EventWaitHandle) : boolean, System.Threading.EventWaitHandle
---@param name string
---@param rights System.Security.AccessControl.EventWaitHandleRights
---@param out_result System.Threading.EventWaitHandle
---@return boolean,System.Threading.EventWaitHandle
function System.Threading.EventWaitHandle.TryOpenExisting(name, rights, out_result) end
---@return boolean
function System.Threading.EventWaitHandle:Reset() end
---@return boolean
function System.Threading.EventWaitHandle:Set() end
---@return System.Security.AccessControl.EventWaitHandleSecurity
function System.Threading.EventWaitHandle:GetAccessControl() end
---@param eventSecurity System.Security.AccessControl.EventWaitHandleSecurity
function System.Threading.EventWaitHandle:SetAccessControl(eventSecurity) end

---@class System.Threading.ContextCallback : System.MulticastDelegate
System.Threading.ContextCallback = {}
---@alias CS.System.Threading.ContextCallback System.Threading.ContextCallback
CS.System.Threading.ContextCallback = System.Threading.ContextCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.ContextCallback
function System.Threading.ContextCallback.New(object, method) end
---@param state System.Object
function System.Threading.ContextCallback:Invoke(state) end
---@param state System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.ContextCallback:BeginInvoke(state, callback, object) end
---@param result System.IAsyncResult
function System.Threading.ContextCallback:EndInvoke(result) end

---@class System.Threading.ContextCallback : System.MulticastDelegate
System.Threading.ContextCallback = {}
---@alias CS.System.Threading.ContextCallback System.Threading.ContextCallback
CS.System.Threading.ContextCallback = System.Threading.ContextCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.ContextCallback
function System.Threading.ContextCallback.New(object, method) end
---@param ref_state TState
---@return ,TState
function System.Threading.ContextCallback:Invoke(ref_state) end
---@param ref_state TState
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,TState
function System.Threading.ContextCallback:BeginInvoke(ref_state, callback, object) end
---@param ref_state TState
---@param result System.IAsyncResult
---@return ,TState
function System.Threading.ContextCallback:EndInvoke(ref_state, result) end

---@class System.Threading.ExecutionContextSwitcher : System.ValueType
System.Threading.ExecutionContextSwitcher = {}
---@alias CS.System.Threading.ExecutionContextSwitcher System.Threading.ExecutionContextSwitcher
CS.System.Threading.ExecutionContextSwitcher = System.Threading.ExecutionContextSwitcher


---@class System.Threading.AsyncFlowControl : System.ValueType
System.Threading.AsyncFlowControl = {}
---@alias CS.System.Threading.AsyncFlowControl System.Threading.AsyncFlowControl
CS.System.Threading.AsyncFlowControl = System.Threading.AsyncFlowControl

function System.Threading.AsyncFlowControl:Dispose() end
function System.Threading.AsyncFlowControl:Undo() end
---@return number
function System.Threading.AsyncFlowControl:GetHashCode() end
---@overload fun(self: System.Threading.AsyncFlowControl, obj: System.Object) : boolean
---@param obj System.Threading.AsyncFlowControl
---@return boolean
function System.Threading.AsyncFlowControl:Equals(obj) end

---@class System.Threading.ExecutionContext : System.Object
System.Threading.ExecutionContext = {}
---@alias CS.System.Threading.ExecutionContext System.Threading.ExecutionContext
CS.System.Threading.ExecutionContext = System.Threading.ExecutionContext

---@param executionContext System.Threading.ExecutionContext
---@param callback System.Threading.ContextCallback
---@param state System.Object
function System.Threading.ExecutionContext.Run(executionContext, callback, state) end
---@return System.Threading.AsyncFlowControl
function System.Threading.ExecutionContext.SuppressFlow() end
function System.Threading.ExecutionContext.RestoreFlow() end
---@return boolean
function System.Threading.ExecutionContext.IsFlowSuppressed() end
---@return System.Threading.ExecutionContext
function System.Threading.ExecutionContext.Capture() end
function System.Threading.ExecutionContext:Dispose() end
---@return System.Threading.ExecutionContext
function System.Threading.ExecutionContext:CreateCopy() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Threading.ExecutionContext:GetObjectData(info, context) end

---@class System.Threading.ExecutionContext.Flags
---@field None System.Threading.ExecutionContext.Flags
---@field IsNewCapture System.Threading.ExecutionContext.Flags
---@field IsFlowSuppressed System.Threading.ExecutionContext.Flags
---@field IsPreAllocatedDefault System.Threading.ExecutionContext.Flags
System.Threading.ExecutionContext.Flags = {}
---@alias CS.System.Threading.ExecutionContext.Flags System.Threading.ExecutionContext.Flags
CS.System.Threading.ExecutionContext.Flags = System.Threading.ExecutionContext.Flags


---@class System.Threading.ExecutionContext.Reader : System.ValueType
---@field IsNull boolean
---@field IsFlowSuppressed boolean
---@field SynchronizationContext System.Threading.SynchronizationContext
---@field SynchronizationContextNoFlow System.Threading.SynchronizationContext
---@field LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext.Reader
---@field IllogicalCallContext System.Runtime.Remoting.Messaging.IllogicalCallContext.Reader
System.Threading.ExecutionContext.Reader = {}
---@alias CS.System.Threading.ExecutionContext.Reader System.Threading.ExecutionContext.Reader
CS.System.Threading.ExecutionContext.Reader = System.Threading.ExecutionContext.Reader

---@param ec System.Threading.ExecutionContext
---@return System.Threading.ExecutionContext.Reader
function System.Threading.ExecutionContext.Reader.New(ec) end
---@return System.Threading.ExecutionContext
function System.Threading.ExecutionContext.Reader:DangerousGetRawExecutionContext() end
---@param ignoreSyncCtx boolean
---@return boolean
function System.Threading.ExecutionContext.Reader:IsDefaultFTContext(ignoreSyncCtx) end
---@param other System.Threading.ExecutionContext.Reader
---@return boolean
function System.Threading.ExecutionContext.Reader:IsSame(other) end
---@param _local System.Threading.IAsyncLocal
---@return System.Object
function System.Threading.ExecutionContext.Reader:GetLocalValue(_local) end
---@param other System.Threading.ExecutionContext
---@return boolean
function System.Threading.ExecutionContext.Reader:HasSameLocalValues(other) end
---@return boolean
function System.Threading.ExecutionContext.Reader:HasLocalValues() end

---@class System.Threading.ExecutionContext.CaptureOptions
---@field None System.Threading.ExecutionContext.CaptureOptions
---@field IgnoreSyncCtx System.Threading.ExecutionContext.CaptureOptions
---@field OptimizeDefaultCase System.Threading.ExecutionContext.CaptureOptions
System.Threading.ExecutionContext.CaptureOptions = {}
---@alias CS.System.Threading.ExecutionContext.CaptureOptions System.Threading.ExecutionContext.CaptureOptions
CS.System.Threading.ExecutionContext.CaptureOptions = System.Threading.ExecutionContext.CaptureOptions


---@class System.Threading.Monitor : System.Object
System.Threading.Monitor = {}
---@alias CS.System.Threading.Monitor System.Threading.Monitor
CS.System.Threading.Monitor = System.Threading.Monitor

---@overload fun(obj: System.Object)
---@param obj System.Object
---@param ref_lockTaken boolean
---@return ,boolean
function System.Threading.Monitor.Enter(obj, ref_lockTaken) end
---@param obj System.Object
function System.Threading.Monitor.Exit(obj) end
---@overload fun(obj: System.Object) : boolean
---@overload fun(obj: System.Object, ref_lockTaken: boolean) : boolean
---@overload fun(obj: System.Object, millisecondsTimeout: number) : boolean
---@overload fun(obj: System.Object, timeout: System.TimeSpan) : boolean
---@overload fun(obj: System.Object, millisecondsTimeout: number, ref_lockTaken: boolean) : boolean
---@param obj System.Object
---@param timeout System.TimeSpan
---@param ref_lockTaken boolean
---@return ,boolean
function System.Threading.Monitor.TryEnter(obj, timeout, ref_lockTaken) end
---@param obj System.Object
---@return boolean
function System.Threading.Monitor.IsEntered(obj) end
---@overload fun(obj: System.Object, millisecondsTimeout: number, exitContext: boolean) : boolean
---@overload fun(obj: System.Object, timeout: System.TimeSpan, exitContext: boolean) : boolean
---@overload fun(obj: System.Object, millisecondsTimeout: number) : boolean
---@overload fun(obj: System.Object, timeout: System.TimeSpan) : boolean
---@param obj System.Object
---@return boolean
function System.Threading.Monitor.Wait(obj) end
---@param obj System.Object
function System.Threading.Monitor.Pulse(obj) end
---@param obj System.Object
function System.Threading.Monitor.PulseAll(obj) end

---@class System.Threading.SynchronizationContextProperties
---@field None System.Threading.SynchronizationContextProperties
---@field RequireWaitNotification System.Threading.SynchronizationContextProperties
System.Threading.SynchronizationContextProperties = {}
---@alias CS.System.Threading.SynchronizationContextProperties System.Threading.SynchronizationContextProperties
CS.System.Threading.SynchronizationContextProperties = System.Threading.SynchronizationContextProperties


---@class System.Threading.SynchronizationContext : System.Object
---@field Current System.Threading.SynchronizationContext
System.Threading.SynchronizationContext = {}
---@alias CS.System.Threading.SynchronizationContext System.Threading.SynchronizationContext
CS.System.Threading.SynchronizationContext = System.Threading.SynchronizationContext

---@return System.Threading.SynchronizationContext
function System.Threading.SynchronizationContext.New() end
---@param syncContext System.Threading.SynchronizationContext
function System.Threading.SynchronizationContext.SetSynchronizationContext(syncContext) end
---@return boolean
function System.Threading.SynchronizationContext:IsWaitNotificationRequired() end
---@param d System.Threading.SendOrPostCallback
---@param state System.Object
function System.Threading.SynchronizationContext:Send(d, state) end
---@param d System.Threading.SendOrPostCallback
---@param state System.Object
function System.Threading.SynchronizationContext:Post(d, state) end
function System.Threading.SynchronizationContext:OperationStarted() end
function System.Threading.SynchronizationContext:OperationCompleted() end
---@param waitHandles System.IntPtr[]
---@param waitAll boolean
---@param millisecondsTimeout number
---@return number
function System.Threading.SynchronizationContext:Wait(waitHandles, waitAll, millisecondsTimeout) end
---@return System.Threading.SynchronizationContext
function System.Threading.SynchronizationContext:CreateCopy() end

---@class System.Threading.SynchronizationContext.WaitDelegate : System.MulticastDelegate
System.Threading.SynchronizationContext.WaitDelegate = {}
---@alias CS.System.Threading.SynchronizationContext.WaitDelegate System.Threading.SynchronizationContext.WaitDelegate
CS.System.Threading.SynchronizationContext.WaitDelegate = System.Threading.SynchronizationContext.WaitDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.SynchronizationContext.WaitDelegate
function System.Threading.SynchronizationContext.WaitDelegate.New(object, method) end
---@param waitHandles System.IntPtr[]
---@param waitAll boolean
---@param millisecondsTimeout number
---@return number
function System.Threading.SynchronizationContext.WaitDelegate:Invoke(waitHandles, waitAll, millisecondsTimeout) end
---@param waitHandles System.IntPtr[]
---@param waitAll boolean
---@param millisecondsTimeout number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.SynchronizationContext.WaitDelegate:BeginInvoke(waitHandles, waitAll, millisecondsTimeout, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.Threading.SynchronizationContext.WaitDelegate:EndInvoke(result) end

---@class System.Threading.InternalCrossContextDelegate : System.MulticastDelegate
System.Threading.InternalCrossContextDelegate = {}
---@alias CS.System.Threading.InternalCrossContextDelegate System.Threading.InternalCrossContextDelegate
CS.System.Threading.InternalCrossContextDelegate = System.Threading.InternalCrossContextDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.InternalCrossContextDelegate
function System.Threading.InternalCrossContextDelegate.New(object, method) end
---@param args System.Object[]
---@return System.Object
function System.Threading.InternalCrossContextDelegate:Invoke(args) end
---@param args System.Object[]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.InternalCrossContextDelegate:BeginInvoke(args, callback, object) end
---@param result System.IAsyncResult
---@return System.Object
function System.Threading.InternalCrossContextDelegate:EndInvoke(result) end

---@class System.Threading.ThreadHelper : System.Object
System.Threading.ThreadHelper = {}
---@alias CS.System.Threading.ThreadHelper System.Threading.ThreadHelper
CS.System.Threading.ThreadHelper = System.Threading.ThreadHelper


---@class System.Threading.Thread : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field CurrentContext System.Runtime.Remoting.Contexts.Context
---@field CurrentPrincipal System.Security.Principal.IPrincipal
---@field CurrentThread System.Threading.Thread
---@field ExecutionContext System.Threading.ExecutionContext
---@field Priority System.Threading.ThreadPriority
---@field CurrentUICulture System.Globalization.CultureInfo
---@field CurrentCulture System.Globalization.CultureInfo
---@field IsThreadPoolThread boolean
---@field IsAlive boolean
---@field IsBackground boolean
---@field Name string
---@field ThreadState System.Threading.ThreadState
---@field ManagedThreadId number
System.Threading.Thread = {}
---@alias CS.System.Threading.Thread System.Threading.Thread
CS.System.Threading.Thread = System.Threading.Thread

---@overload fun(start: System.Threading.ThreadStart) : System.Threading.Thread
---@overload fun(start: System.Threading.ThreadStart, maxStackSize: number) : System.Threading.Thread
---@overload fun(start: System.Threading.ParameterizedThreadStart) : System.Threading.Thread
---@param start System.Threading.ParameterizedThreadStart
---@param maxStackSize number
---@return System.Threading.Thread
function System.Threading.Thread.New(start, maxStackSize) end
function System.Threading.Thread.ResetAbort() end
---@overload fun(millisecondsTimeout: number)
---@param timeout System.TimeSpan
function System.Threading.Thread.Sleep(timeout) end
---@return boolean
function System.Threading.Thread.Yield() end
---@return System.LocalDataStoreSlot
function System.Threading.Thread.AllocateDataSlot() end
---@param name string
---@return System.LocalDataStoreSlot
function System.Threading.Thread.AllocateNamedDataSlot(name) end
---@param name string
---@return System.LocalDataStoreSlot
function System.Threading.Thread.GetNamedDataSlot(name) end
---@param name string
function System.Threading.Thread.FreeNamedDataSlot(name) end
---@param slot System.LocalDataStoreSlot
---@return System.Object
function System.Threading.Thread.GetData(slot) end
---@param slot System.LocalDataStoreSlot
---@param data System.Object
function System.Threading.Thread.SetData(slot, data) end
function System.Threading.Thread.MemoryBarrier() end
---@return System.AppDomain
function System.Threading.Thread.GetDomain() end
---@return number
function System.Threading.Thread.GetDomainID() end
---@param iterations number
function System.Threading.Thread.SpinWait(iterations) end
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: System.IntPtr) : System.IntPtr, System.IntPtr
---@overload fun(ref_address: System.Object) : System.Object, System.Object
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@overload fun(ref_address: number) : number, number
---@param ref_address System.UIntPtr
---@return System.UIntPtr,System.UIntPtr
function System.Threading.Thread.VolatileRead(ref_address) end
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: System.IntPtr, value: System.IntPtr) : System.IntPtr
---@overload fun(ref_address: System.Object, value: System.Object) : System.Object
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@overload fun(ref_address: number, value: number) : number
---@param ref_address System.UIntPtr
---@param value System.UIntPtr
---@return ,System.UIntPtr
function System.Threading.Thread.VolatileWrite(ref_address, value) end
function System.Threading.Thread.BeginCriticalRegion() end
function System.Threading.Thread.EndCriticalRegion() end
function System.Threading.Thread.BeginThreadAffinity() end
function System.Threading.Thread.EndThreadAffinity() end
---@return number
function System.Threading.Thread.GetCurrentProcessorId() end
---@overload fun()
---@param parameter System.Object
function System.Threading.Thread:Start(parameter) end
function System.Threading.Thread:Interrupt() end
---@overload fun()
---@overload fun(self: System.Threading.Thread, millisecondsTimeout: number) : boolean
---@param timeout System.TimeSpan
---@return boolean
function System.Threading.Thread:Join(timeout) end
---@overload fun()
---@param stateInfo System.Object
function System.Threading.Thread:Abort(stateInfo) end
---@return System.Threading.ApartmentState
function System.Threading.Thread:GetApartmentState() end
---@param state System.Threading.ApartmentState
function System.Threading.Thread:SetApartmentState(state) end
---@param state System.Threading.ApartmentState
---@return boolean
function System.Threading.Thread:TrySetApartmentState(state) end
---@return number
function System.Threading.Thread:GetHashCode() end
function System.Threading.Thread:DisableComObjectEagerCleanup() end

---@class System.Threading.StackCrawlMark
---@field LookForMe System.Threading.StackCrawlMark
---@field LookForMyCaller System.Threading.StackCrawlMark
---@field LookForMyCallersCaller System.Threading.StackCrawlMark
---@field LookForThread System.Threading.StackCrawlMark
System.Threading.StackCrawlMark = {}
---@alias CS.System.Threading.StackCrawlMark System.Threading.StackCrawlMark
CS.System.Threading.StackCrawlMark = System.Threading.StackCrawlMark


---@class System.Threading.ThreadAbortException : System.SystemException
---@field ExceptionState System.Object
System.Threading.ThreadAbortException = {}
---@alias CS.System.Threading.ThreadAbortException System.Threading.ThreadAbortException
CS.System.Threading.ThreadAbortException = System.Threading.ThreadAbortException


---@class System.Threading.ThreadInterruptedException : System.SystemException
System.Threading.ThreadInterruptedException = {}
---@alias CS.System.Threading.ThreadInterruptedException System.Threading.ThreadInterruptedException
CS.System.Threading.ThreadInterruptedException = System.Threading.ThreadInterruptedException

---@overload fun() : System.Threading.ThreadInterruptedException
---@overload fun(message: string) : System.Threading.ThreadInterruptedException
---@param message string
---@param innerException System.Exception
---@return System.Threading.ThreadInterruptedException
function System.Threading.ThreadInterruptedException.New(message, innerException) end

---@class System.Threading.IThreadPoolWorkItem
System.Threading.IThreadPoolWorkItem = {}
---@alias CS.System.Threading.IThreadPoolWorkItem System.Threading.IThreadPoolWorkItem
CS.System.Threading.IThreadPoolWorkItem = System.Threading.IThreadPoolWorkItem

function System.Threading.IThreadPoolWorkItem:ExecuteWorkItem() end
---@param tae System.Threading.ThreadAbortException
function System.Threading.IThreadPoolWorkItem:MarkAborted(tae) end

---@class System.Threading.WaitCallback : System.MulticastDelegate
System.Threading.WaitCallback = {}
---@alias CS.System.Threading.WaitCallback System.Threading.WaitCallback
CS.System.Threading.WaitCallback = System.Threading.WaitCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.WaitCallback
function System.Threading.WaitCallback.New(object, method) end
---@param state System.Object
function System.Threading.WaitCallback:Invoke(state) end
---@param state System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.WaitCallback:BeginInvoke(state, callback, object) end
---@param result System.IAsyncResult
function System.Threading.WaitCallback:EndInvoke(result) end

---@class System.Threading.WaitOrTimerCallback : System.MulticastDelegate
System.Threading.WaitOrTimerCallback = {}
---@alias CS.System.Threading.WaitOrTimerCallback System.Threading.WaitOrTimerCallback
CS.System.Threading.WaitOrTimerCallback = System.Threading.WaitOrTimerCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.WaitOrTimerCallback
function System.Threading.WaitOrTimerCallback.New(object, method) end
---@param state System.Object
---@param timedOut boolean
function System.Threading.WaitOrTimerCallback:Invoke(state, timedOut) end
---@param state System.Object
---@param timedOut boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.WaitOrTimerCallback:BeginInvoke(state, timedOut, callback, object) end
---@param result System.IAsyncResult
function System.Threading.WaitOrTimerCallback:EndInvoke(result) end

---@class System.Threading.IOCompletionCallback : System.MulticastDelegate
System.Threading.IOCompletionCallback = {}
---@alias CS.System.Threading.IOCompletionCallback System.Threading.IOCompletionCallback
CS.System.Threading.IOCompletionCallback = System.Threading.IOCompletionCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.IOCompletionCallback
function System.Threading.IOCompletionCallback.New(object, method) end
---@param errorCode number
---@param numBytes number
---@param pOVERLAP System.Threading.NativeOverlapped*
function System.Threading.IOCompletionCallback:Invoke(errorCode, numBytes, pOVERLAP) end
---@param errorCode number
---@param numBytes number
---@param pOVERLAP System.Threading.NativeOverlapped*
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.IOCompletionCallback:BeginInvoke(errorCode, numBytes, pOVERLAP, callback, object) end
---@param result System.IAsyncResult
function System.Threading.IOCompletionCallback:EndInvoke(result) end

---@class System.Threading.ThreadPoolGlobals : System.Object
---@field tpQuantum number
---@field processorCount number
---@field vmTpInitialized boolean
---@field enableWorkerTracking boolean
---@field workQueue System.Threading.ThreadPoolWorkQueue
---@field tpHosted boolean
System.Threading.ThreadPoolGlobals = {}
---@alias CS.System.Threading.ThreadPoolGlobals System.Threading.ThreadPoolGlobals
CS.System.Threading.ThreadPoolGlobals = System.Threading.ThreadPoolGlobals


---@class System.Threading.ThreadPoolWorkQueue : System.Object
System.Threading.ThreadPoolWorkQueue = {}
---@alias CS.System.Threading.ThreadPoolWorkQueue System.Threading.ThreadPoolWorkQueue
CS.System.Threading.ThreadPoolWorkQueue = System.Threading.ThreadPoolWorkQueue

---@return System.Threading.ThreadPoolWorkQueue
function System.Threading.ThreadPoolWorkQueue.New() end
---@return System.Threading.ThreadPoolWorkQueueThreadLocals
function System.Threading.ThreadPoolWorkQueue:EnsureCurrentThreadHasQueue() end
---@param callback System.Threading.IThreadPoolWorkItem
---@param forceGlobal boolean
function System.Threading.ThreadPoolWorkQueue:Enqueue(callback, forceGlobal) end
---@param tl System.Threading.ThreadPoolWorkQueueThreadLocals
---@param out_callback System.Threading.IThreadPoolWorkItem
---@param out_missedSteal boolean
---@return ,System.Threading.IThreadPoolWorkItem,boolean
function System.Threading.ThreadPoolWorkQueue:Dequeue(tl, out_callback, out_missedSteal) end

---@class System.Threading.ThreadPoolWorkQueue.SparseArray : System.Object
System.Threading.ThreadPoolWorkQueue.SparseArray = {}
---@alias CS.System.Threading.ThreadPoolWorkQueue.SparseArray System.Threading.ThreadPoolWorkQueue.SparseArray
CS.System.Threading.ThreadPoolWorkQueue.SparseArray = System.Threading.ThreadPoolWorkQueue.SparseArray


---@class System.Threading.ThreadPoolWorkQueue.WorkStealingQueue : System.Object
System.Threading.ThreadPoolWorkQueue.WorkStealingQueue = {}
---@alias CS.System.Threading.ThreadPoolWorkQueue.WorkStealingQueue System.Threading.ThreadPoolWorkQueue.WorkStealingQueue
CS.System.Threading.ThreadPoolWorkQueue.WorkStealingQueue = System.Threading.ThreadPoolWorkQueue.WorkStealingQueue

---@return System.Threading.ThreadPoolWorkQueue.WorkStealingQueue
function System.Threading.ThreadPoolWorkQueue.WorkStealingQueue.New() end
---@param obj System.Threading.IThreadPoolWorkItem
function System.Threading.ThreadPoolWorkQueue.WorkStealingQueue:LocalPush(obj) end
---@param obj System.Threading.IThreadPoolWorkItem
---@return boolean
function System.Threading.ThreadPoolWorkQueue.WorkStealingQueue:LocalFindAndPop(obj) end
---@param out_obj System.Threading.IThreadPoolWorkItem
---@return boolean,System.Threading.IThreadPoolWorkItem
function System.Threading.ThreadPoolWorkQueue.WorkStealingQueue:LocalPop(out_obj) end
---@param out_obj System.Threading.IThreadPoolWorkItem
---@param ref_missedSteal boolean
---@return boolean,System.Threading.IThreadPoolWorkItem,boolean
function System.Threading.ThreadPoolWorkQueue.WorkStealingQueue:TrySteal(out_obj, ref_missedSteal) end

---@class System.Threading.ThreadPoolWorkQueue.QueueSegment : System.Object
---@field Next System.Threading.ThreadPoolWorkQueue.QueueSegment
System.Threading.ThreadPoolWorkQueue.QueueSegment = {}
---@alias CS.System.Threading.ThreadPoolWorkQueue.QueueSegment System.Threading.ThreadPoolWorkQueue.QueueSegment
CS.System.Threading.ThreadPoolWorkQueue.QueueSegment = System.Threading.ThreadPoolWorkQueue.QueueSegment

---@return System.Threading.ThreadPoolWorkQueue.QueueSegment
function System.Threading.ThreadPoolWorkQueue.QueueSegment.New() end
---@return boolean
function System.Threading.ThreadPoolWorkQueue.QueueSegment:IsUsedUp() end
---@param node System.Threading.IThreadPoolWorkItem
---@return boolean
function System.Threading.ThreadPoolWorkQueue.QueueSegment:TryEnqueue(node) end
---@param out_node System.Threading.IThreadPoolWorkItem
---@return boolean,System.Threading.IThreadPoolWorkItem
function System.Threading.ThreadPoolWorkQueue.QueueSegment:TryDequeue(out_node) end

---@class System.Threading.ThreadPoolWorkQueueThreadLocals : System.Object
---@field threadLocals System.Threading.ThreadPoolWorkQueueThreadLocals
---@field workQueue System.Threading.ThreadPoolWorkQueue
---@field workStealingQueue System.Threading.ThreadPoolWorkQueue.WorkStealingQueue
---@field random System.Random
System.Threading.ThreadPoolWorkQueueThreadLocals = {}
---@alias CS.System.Threading.ThreadPoolWorkQueueThreadLocals System.Threading.ThreadPoolWorkQueueThreadLocals
CS.System.Threading.ThreadPoolWorkQueueThreadLocals = System.Threading.ThreadPoolWorkQueueThreadLocals

---@param tpq System.Threading.ThreadPoolWorkQueue
---@return System.Threading.ThreadPoolWorkQueueThreadLocals
function System.Threading.ThreadPoolWorkQueueThreadLocals.New(tpq) end

---@class System.Threading._ThreadPoolWaitCallback : System.Object
System.Threading._ThreadPoolWaitCallback = {}
---@alias CS.System.Threading._ThreadPoolWaitCallback System.Threading._ThreadPoolWaitCallback
CS.System.Threading._ThreadPoolWaitCallback = System.Threading._ThreadPoolWaitCallback


---@class System.Threading.QueueUserWorkItemCallback : System.Object
System.Threading.QueueUserWorkItemCallback = {}
---@alias CS.System.Threading.QueueUserWorkItemCallback System.Threading.QueueUserWorkItemCallback
CS.System.Threading.QueueUserWorkItemCallback = System.Threading.QueueUserWorkItemCallback


---@class System.Threading._ThreadPoolWaitOrTimerCallback : System.Object
System.Threading._ThreadPoolWaitOrTimerCallback = {}
---@alias CS.System.Threading._ThreadPoolWaitOrTimerCallback System.Threading._ThreadPoolWaitOrTimerCallback
CS.System.Threading._ThreadPoolWaitOrTimerCallback = System.Threading._ThreadPoolWaitOrTimerCallback


---@class System.Threading.ThreadPool : System.Object
System.Threading.ThreadPool = {}
---@alias CS.System.Threading.ThreadPool System.Threading.ThreadPool
CS.System.Threading.ThreadPool = System.Threading.ThreadPool

---@param workerThreads number
---@param completionPortThreads number
---@return boolean
function System.Threading.ThreadPool.SetMaxThreads(workerThreads, completionPortThreads) end
---@param out_workerThreads number
---@param out_completionPortThreads number
---@return ,number,number
function System.Threading.ThreadPool.GetMaxThreads(out_workerThreads, out_completionPortThreads) end
---@param workerThreads number
---@param completionPortThreads number
---@return boolean
function System.Threading.ThreadPool.SetMinThreads(workerThreads, completionPortThreads) end
---@param out_workerThreads number
---@param out_completionPortThreads number
---@return ,number,number
function System.Threading.ThreadPool.GetMinThreads(out_workerThreads, out_completionPortThreads) end
---@param out_workerThreads number
---@param out_completionPortThreads number
---@return ,number,number
function System.Threading.ThreadPool.GetAvailableThreads(out_workerThreads, out_completionPortThreads) end
---@overload fun(waitObject: System.Threading.WaitHandle, callBack: System.Threading.WaitOrTimerCallback, state: System.Object, millisecondsTimeOutInterval: number, executeOnlyOnce: boolean) : System.Threading.RegisteredWaitHandle
---@overload fun(waitObject: System.Threading.WaitHandle, callBack: System.Threading.WaitOrTimerCallback, state: System.Object, millisecondsTimeOutInterval: number, executeOnlyOnce: boolean) : System.Threading.RegisteredWaitHandle
---@overload fun(waitObject: System.Threading.WaitHandle, callBack: System.Threading.WaitOrTimerCallback, state: System.Object, millisecondsTimeOutInterval: number, executeOnlyOnce: boolean) : System.Threading.RegisteredWaitHandle
---@param waitObject System.Threading.WaitHandle
---@param callBack System.Threading.WaitOrTimerCallback
---@param state System.Object
---@param timeout System.TimeSpan
---@param executeOnlyOnce boolean
---@return System.Threading.RegisteredWaitHandle
function System.Threading.ThreadPool.RegisterWaitForSingleObject(waitObject, callBack, state, timeout, executeOnlyOnce) end
---@overload fun(waitObject: System.Threading.WaitHandle, callBack: System.Threading.WaitOrTimerCallback, state: System.Object, millisecondsTimeOutInterval: number, executeOnlyOnce: boolean) : System.Threading.RegisteredWaitHandle
---@overload fun(waitObject: System.Threading.WaitHandle, callBack: System.Threading.WaitOrTimerCallback, state: System.Object, millisecondsTimeOutInterval: number, executeOnlyOnce: boolean) : System.Threading.RegisteredWaitHandle
---@overload fun(waitObject: System.Threading.WaitHandle, callBack: System.Threading.WaitOrTimerCallback, state: System.Object, millisecondsTimeOutInterval: number, executeOnlyOnce: boolean) : System.Threading.RegisteredWaitHandle
---@param waitObject System.Threading.WaitHandle
---@param callBack System.Threading.WaitOrTimerCallback
---@param state System.Object
---@param timeout System.TimeSpan
---@param executeOnlyOnce boolean
---@return System.Threading.RegisteredWaitHandle
function System.Threading.ThreadPool.UnsafeRegisterWaitForSingleObject(waitObject, callBack, state, timeout, executeOnlyOnce) end
---@overload fun(callBack: System.Threading.WaitCallback, state: System.Object) : boolean
---@param callBack System.Threading.WaitCallback
---@return boolean
function System.Threading.ThreadPool.QueueUserWorkItem(callBack) end
---@param callBack System.Threading.WaitCallback
---@param state System.Object
---@return boolean
function System.Threading.ThreadPool.UnsafeQueueUserWorkItem(callBack, state) end
---@param overlapped System.Threading.NativeOverlapped*
---@return boolean
function System.Threading.ThreadPool.UnsafeQueueNativeOverlapped(overlapped) end
---@param osHandle System.Runtime.InteropServices.SafeHandle
---@return boolean
function System.Threading.ThreadPool.BindHandle(osHandle) end

---@class System.Threading.WaitHandle : System.MarshalByRefObject
---@field WaitTimeout number
---@field SafeWaitHandle Microsoft.Win32.SafeHandles.SafeWaitHandle
System.Threading.WaitHandle = {}
---@alias CS.System.Threading.WaitHandle System.Threading.WaitHandle
CS.System.Threading.WaitHandle = System.Threading.WaitHandle

---@overload fun(waitHandles: System.Threading.WaitHandle[], millisecondsTimeout: number, exitContext: boolean) : boolean
---@overload fun(waitHandles: System.Threading.WaitHandle[], timeout: System.TimeSpan, exitContext: boolean) : boolean
---@overload fun(waitHandles: System.Threading.WaitHandle[]) : boolean
---@overload fun(waitHandles: System.Threading.WaitHandle[], millisecondsTimeout: number) : boolean
---@param waitHandles System.Threading.WaitHandle[]
---@param timeout System.TimeSpan
---@return boolean
function System.Threading.WaitHandle.WaitAll(waitHandles, timeout) end
---@overload fun(waitHandles: System.Threading.WaitHandle[], millisecondsTimeout: number, exitContext: boolean) : number
---@overload fun(waitHandles: System.Threading.WaitHandle[], timeout: System.TimeSpan, exitContext: boolean) : number
---@overload fun(waitHandles: System.Threading.WaitHandle[], timeout: System.TimeSpan) : number
---@overload fun(waitHandles: System.Threading.WaitHandle[]) : number
---@param waitHandles System.Threading.WaitHandle[]
---@param millisecondsTimeout number
---@return number
function System.Threading.WaitHandle.WaitAny(waitHandles, millisecondsTimeout) end
---@overload fun(toSignal: System.Threading.WaitHandle, toWaitOn: System.Threading.WaitHandle) : boolean
---@overload fun(toSignal: System.Threading.WaitHandle, toWaitOn: System.Threading.WaitHandle, timeout: System.TimeSpan, exitContext: boolean) : boolean
---@param toSignal System.Threading.WaitHandle
---@param toWaitOn System.Threading.WaitHandle
---@param millisecondsTimeout number
---@param exitContext boolean
---@return boolean
function System.Threading.WaitHandle.SignalAndWait(toSignal, toWaitOn, millisecondsTimeout, exitContext) end
---@overload fun(self: System.Threading.WaitHandle, millisecondsTimeout: number, exitContext: boolean) : boolean
---@overload fun(self: System.Threading.WaitHandle, timeout: System.TimeSpan, exitContext: boolean) : boolean
---@overload fun() : boolean
---@overload fun(self: System.Threading.WaitHandle, millisecondsTimeout: number) : boolean
---@param timeout System.TimeSpan
---@return boolean
function System.Threading.WaitHandle:WaitOne(timeout) end
function System.Threading.WaitHandle:Close() end
function System.Threading.WaitHandle:Dispose() end
---@return Microsoft.Win32.SafeHandles.SafeWaitHandle
function System.Threading.WaitHandle:GetSafeWaitHandle() end
---@param value Microsoft.Win32.SafeHandles.SafeWaitHandle
function System.Threading.WaitHandle:SetSafeWaitHandle(value) end

---@class System.Threading.WaitHandle.OpenExistingResult
---@field Success System.Threading.WaitHandle.OpenExistingResult
---@field NameNotFound System.Threading.WaitHandle.OpenExistingResult
---@field PathNotFound System.Threading.WaitHandle.OpenExistingResult
---@field NameInvalid System.Threading.WaitHandle.OpenExistingResult
System.Threading.WaitHandle.OpenExistingResult = {}
---@alias CS.System.Threading.WaitHandle.OpenExistingResult System.Threading.WaitHandle.OpenExistingResult
CS.System.Threading.WaitHandle.OpenExistingResult = System.Threading.WaitHandle.OpenExistingResult


---@class System.Threading.WaitHandleExtensions : System.Object
System.Threading.WaitHandleExtensions = {}
---@alias CS.System.Threading.WaitHandleExtensions System.Threading.WaitHandleExtensions
CS.System.Threading.WaitHandleExtensions = System.Threading.WaitHandleExtensions

---@param waitHandle System.Threading.WaitHandle
---@return Microsoft.Win32.SafeHandles.SafeWaitHandle
function System.Threading.WaitHandleExtensions.GetSafeWaitHandle(waitHandle) end
---@param waitHandle System.Threading.WaitHandle
---@param value Microsoft.Win32.SafeHandles.SafeWaitHandle
function System.Threading.WaitHandleExtensions.SetSafeWaitHandle(waitHandle, value) end

---@class System.Threading.CompressedStack : System.Object
System.Threading.CompressedStack = {}
---@alias CS.System.Threading.CompressedStack System.Threading.CompressedStack
CS.System.Threading.CompressedStack = System.Threading.CompressedStack

---@return System.Threading.CompressedStack
function System.Threading.CompressedStack.Capture() end
---@return System.Threading.CompressedStack
function System.Threading.CompressedStack.GetCompressedStack() end
---@param compressedStack System.Threading.CompressedStack
---@param callback System.Threading.ContextCallback
---@param state System.Object
function System.Threading.CompressedStack.Run(compressedStack, callback, state) end
---@return System.Threading.CompressedStack
function System.Threading.CompressedStack:CreateCopy() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Threading.CompressedStack:GetObjectData(info, context) end

---@class System.Threading.HostExecutionContext : System.Object
System.Threading.HostExecutionContext = {}
---@alias CS.System.Threading.HostExecutionContext System.Threading.HostExecutionContext
CS.System.Threading.HostExecutionContext = System.Threading.HostExecutionContext

---@overload fun() : System.Threading.HostExecutionContext
---@param state System.Object
---@return System.Threading.HostExecutionContext
function System.Threading.HostExecutionContext.New(state) end
---@return System.Threading.HostExecutionContext
function System.Threading.HostExecutionContext:CreateCopy() end
---@overload fun()
---@param disposing boolean
function System.Threading.HostExecutionContext:Dispose(disposing) end

---@class System.Threading.HostExecutionContextManager : System.Object
System.Threading.HostExecutionContextManager = {}
---@alias CS.System.Threading.HostExecutionContextManager System.Threading.HostExecutionContextManager
CS.System.Threading.HostExecutionContextManager = System.Threading.HostExecutionContextManager

---@return System.Threading.HostExecutionContextManager
function System.Threading.HostExecutionContextManager.New() end
---@return System.Threading.HostExecutionContext
function System.Threading.HostExecutionContextManager:Capture() end
---@param previousState System.Object
function System.Threading.HostExecutionContextManager:Revert(previousState) end
---@param hostExecutionContext System.Threading.HostExecutionContext
---@return System.Object
function System.Threading.HostExecutionContextManager:SetHostExecutionContext(hostExecutionContext) end

---@class System.Threading.Interlocked : System.Object
System.Threading.Interlocked = {}
---@alias CS.System.Threading.Interlocked System.Threading.Interlocked
CS.System.Threading.Interlocked = System.Threading.Interlocked

---@overload fun(ref_location1: number, value: number, comparand: number) : number, number
---@overload fun(ref_location1: System.Object, value: System.Object, comparand: System.Object) : System.Object, System.Object
---@overload fun(ref_location1: number, value: number, comparand: number) : number, number
---@overload fun(ref_location1: number, value: number, comparand: number) : number, number
---@overload fun(ref_location1: System.IntPtr, value: System.IntPtr, comparand: System.IntPtr) : System.IntPtr, System.IntPtr
---@param ref_location1 number
---@param value number
---@param comparand number
---@return number,number
function System.Threading.Interlocked.CompareExchange(ref_location1, value, comparand) end
---@overload fun(ref_location: number) : number, number
---@param ref_location number
---@return number,number
function System.Threading.Interlocked.Decrement(ref_location) end
---@overload fun(ref_location: number) : number, number
---@param ref_location number
---@return number,number
function System.Threading.Interlocked.Increment(ref_location) end
---@overload fun(ref_location1: number, value: number) : number, number
---@overload fun(ref_location1: System.Object, value: System.Object) : System.Object, System.Object
---@overload fun(ref_location1: number, value: number) : number, number
---@overload fun(ref_location1: number, value: number) : number, number
---@overload fun(ref_location1: System.IntPtr, value: System.IntPtr) : System.IntPtr, System.IntPtr
---@param ref_location1 number
---@param value number
---@return number,number
function System.Threading.Interlocked.Exchange(ref_location1, value) end
---@param ref_location number
---@return number,number
function System.Threading.Interlocked.Read(ref_location) end
---@overload fun(ref_location1: number, value: number) : number, number
---@param ref_location1 number
---@param value number
---@return number,number
function System.Threading.Interlocked.Add(ref_location1, value) end
function System.Threading.Interlocked.MemoryBarrier() end
function System.Threading.Interlocked.MemoryBarrierProcessWide() end
function System.Threading.Interlocked.SpeculationBarrier() end

---@class System.Threading.LockCookie : System.ValueType
System.Threading.LockCookie = {}
---@alias CS.System.Threading.LockCookie System.Threading.LockCookie
CS.System.Threading.LockCookie = System.Threading.LockCookie

---@return number
function System.Threading.LockCookie:GetHashCode() end
---@overload fun(self: System.Threading.LockCookie, obj: System.Threading.LockCookie) : boolean
---@param obj System.Object
---@return boolean
function System.Threading.LockCookie:Equals(obj) end

---@class System.Threading.LockQueue : System.Object
---@field IsEmpty boolean
System.Threading.LockQueue = {}
---@alias CS.System.Threading.LockQueue System.Threading.LockQueue
CS.System.Threading.LockQueue = System.Threading.LockQueue

---@param rwlock System.Threading.ReaderWriterLock
---@return System.Threading.LockQueue
function System.Threading.LockQueue.New(rwlock) end
---@param timeout number
---@return boolean
function System.Threading.LockQueue:Wait(timeout) end
function System.Threading.LockQueue:Pulse() end

---@class System.Threading.Mutex : System.Threading.WaitHandle
System.Threading.Mutex = {}
---@alias CS.System.Threading.Mutex System.Threading.Mutex
CS.System.Threading.Mutex = System.Threading.Mutex

---@overload fun() : System.Threading.Mutex
---@overload fun(initiallyOwned: boolean) : System.Threading.Mutex
---@overload fun(initiallyOwned: boolean, name: string) : System.Threading.Mutex
---@overload fun(initiallyOwned: boolean, name: string, out_createdNew: boolean) : System.Threading.Mutex, boolean
---@param initiallyOwned boolean
---@param name string
---@param out_createdNew boolean
---@param mutexSecurity System.Security.AccessControl.MutexSecurity
---@return System.Threading.Mutex,boolean
function System.Threading.Mutex.New(initiallyOwned, name, out_createdNew, mutexSecurity) end
---@overload fun(name: string) : System.Threading.Mutex
---@param name string
---@param rights System.Security.AccessControl.MutexRights
---@return System.Threading.Mutex
function System.Threading.Mutex.OpenExisting(name, rights) end
---@overload fun(name: string, out_result: System.Threading.Mutex) : boolean, System.Threading.Mutex
---@param name string
---@param rights System.Security.AccessControl.MutexRights
---@param out_result System.Threading.Mutex
---@return boolean,System.Threading.Mutex
function System.Threading.Mutex.TryOpenExisting(name, rights, out_result) end
---@return System.Security.AccessControl.MutexSecurity
function System.Threading.Mutex:GetAccessControl() end
function System.Threading.Mutex:ReleaseMutex() end
---@param mutexSecurity System.Security.AccessControl.MutexSecurity
function System.Threading.Mutex:SetAccessControl(mutexSecurity) end

---@class System.Threading.NativeEventCalls : System.Object
System.Threading.NativeEventCalls = {}
---@alias CS.System.Threading.NativeEventCalls System.Threading.NativeEventCalls
CS.System.Threading.NativeEventCalls = System.Threading.NativeEventCalls

---@param manual boolean
---@param initial boolean
---@param name string
---@param out_errorCode number
---@return System.IntPtr,number
function System.Threading.NativeEventCalls.CreateEvent_internal(manual, initial, name, out_errorCode) end
---@param handle Microsoft.Win32.SafeHandles.SafeWaitHandle
---@return boolean
function System.Threading.NativeEventCalls.SetEvent(handle) end
---@param handle Microsoft.Win32.SafeHandles.SafeWaitHandle
---@return boolean
function System.Threading.NativeEventCalls.ResetEvent(handle) end
---@param handle System.IntPtr
function System.Threading.NativeEventCalls.CloseEvent_internal(handle) end
---@param name string
---@param rights System.Security.AccessControl.EventWaitHandleRights
---@param out_errorCode number
---@return System.IntPtr,number
function System.Threading.NativeEventCalls.OpenEvent_internal(name, rights, out_errorCode) end

---@class System.Threading.Overlapped : System.Object
---@field AsyncResult System.IAsyncResult
---@field EventHandleIntPtr System.IntPtr
---@field OffsetHigh number
---@field OffsetLow number
System.Threading.Overlapped = {}
---@alias CS.System.Threading.Overlapped System.Threading.Overlapped
CS.System.Threading.Overlapped = System.Threading.Overlapped

---@overload fun() : System.Threading.Overlapped
---@overload fun(offsetLo: number, offsetHi: number, hEvent: number, ar: System.IAsyncResult) : System.Threading.Overlapped
---@param offsetLo number
---@param offsetHi number
---@param hEvent System.IntPtr
---@param ar System.IAsyncResult
---@return System.Threading.Overlapped
function System.Threading.Overlapped.New(offsetLo, offsetHi, hEvent, ar) end
---@param nativeOverlappedPtr System.Threading.NativeOverlapped*
function System.Threading.Overlapped.Free(nativeOverlappedPtr) end
---@param nativeOverlappedPtr System.Threading.NativeOverlapped*
---@return System.Threading.Overlapped
function System.Threading.Overlapped.Unpack(nativeOverlappedPtr) end
---@param iocb System.Threading.IOCompletionCallback
---@param userData System.Object
---@return System.Threading.NativeOverlapped*
function System.Threading.Overlapped:Pack(iocb, userData) end
---@param iocb System.Threading.IOCompletionCallback
---@param userData System.Object
---@return System.Threading.NativeOverlapped*
function System.Threading.Overlapped:UnsafePack(iocb, userData) end

---@class System.Threading.ReaderWriterLock : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field IsReaderLockHeld boolean
---@field IsWriterLockHeld boolean
---@field WriterSeqNum number
System.Threading.ReaderWriterLock = {}
---@alias CS.System.Threading.ReaderWriterLock System.Threading.ReaderWriterLock
CS.System.Threading.ReaderWriterLock = System.Threading.ReaderWriterLock

---@return System.Threading.ReaderWriterLock
function System.Threading.ReaderWriterLock.New() end
---@overload fun(self: System.Threading.ReaderWriterLock, millisecondsTimeout: number)
---@param timeout System.TimeSpan
function System.Threading.ReaderWriterLock:AcquireReaderLock(timeout) end
---@overload fun(self: System.Threading.ReaderWriterLock, millisecondsTimeout: number)
---@param timeout System.TimeSpan
function System.Threading.ReaderWriterLock:AcquireWriterLock(timeout) end
---@param seqNum number
---@return boolean
function System.Threading.ReaderWriterLock:AnyWritersSince(seqNum) end
---@param ref_lockCookie System.Threading.LockCookie
---@return ,System.Threading.LockCookie
function System.Threading.ReaderWriterLock:DowngradeFromWriterLock(ref_lockCookie) end
---@return System.Threading.LockCookie
function System.Threading.ReaderWriterLock:ReleaseLock() end
function System.Threading.ReaderWriterLock:ReleaseReaderLock() end
function System.Threading.ReaderWriterLock:ReleaseWriterLock() end
---@param ref_lockCookie System.Threading.LockCookie
---@return ,System.Threading.LockCookie
function System.Threading.ReaderWriterLock:RestoreLock(ref_lockCookie) end
---@overload fun(self: System.Threading.ReaderWriterLock, millisecondsTimeout: number) : System.Threading.LockCookie
---@param timeout System.TimeSpan
---@return System.Threading.LockCookie
function System.Threading.ReaderWriterLock:UpgradeToWriterLock(timeout) end

---@class System.Threading.RegisteredWaitHandle : System.MarshalByRefObject
System.Threading.RegisteredWaitHandle = {}
---@alias CS.System.Threading.RegisteredWaitHandle System.Threading.RegisteredWaitHandle
CS.System.Threading.RegisteredWaitHandle = System.Threading.RegisteredWaitHandle

---@param waitObject System.Threading.WaitHandle
---@return boolean
function System.Threading.RegisteredWaitHandle:Unregister(waitObject) end

---@class System.Threading.InternalThread : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
System.Threading.InternalThread = {}
---@alias CS.System.Threading.InternalThread System.Threading.InternalThread
CS.System.Threading.InternalThread = System.Threading.InternalThread

---@return System.Threading.InternalThread
function System.Threading.InternalThread.New() end

---@class System.Threading.Timer : System.MarshalByRefObject
System.Threading.Timer = {}
---@alias CS.System.Threading.Timer System.Threading.Timer
CS.System.Threading.Timer = System.Threading.Timer

---@overload fun(callback: System.Threading.TimerCallback, state: System.Object, dueTime: number, period: number) : System.Threading.Timer
---@overload fun(callback: System.Threading.TimerCallback, state: System.Object, dueTime: number, period: number) : System.Threading.Timer
---@overload fun(callback: System.Threading.TimerCallback, state: System.Object, dueTime: System.TimeSpan, period: System.TimeSpan) : System.Threading.Timer
---@overload fun(callback: System.Threading.TimerCallback, state: System.Object, dueTime: number, period: number) : System.Threading.Timer
---@param callback System.Threading.TimerCallback
---@return System.Threading.Timer
function System.Threading.Timer.New(callback) end
---@overload fun(self: System.Threading.Timer, dueTime: number, period: number) : boolean
---@overload fun(self: System.Threading.Timer, dueTime: System.TimeSpan, period: System.TimeSpan) : boolean
---@overload fun(self: System.Threading.Timer, dueTime: number, period: number) : boolean
---@param dueTime number
---@param period number
---@return boolean
function System.Threading.Timer:Change(dueTime, period) end
---@overload fun()
---@param notifyObject System.Threading.WaitHandle
---@return boolean
function System.Threading.Timer:Dispose(notifyObject) end
---@return System.Threading.Tasks.ValueTask
function System.Threading.Timer:DisposeAsync() end

---@class System.Threading.Timer.TimerComparer : System.ValueType
System.Threading.Timer.TimerComparer = {}
---@alias CS.System.Threading.Timer.TimerComparer System.Threading.Timer.TimerComparer
CS.System.Threading.Timer.TimerComparer = System.Threading.Timer.TimerComparer

---@param tx System.Threading.Timer
---@param ty System.Threading.Timer
---@return number
function System.Threading.Timer.TimerComparer:Compare(tx, ty) end

---@class System.Threading.Timer.Scheduler : System.Object
---@field Instance System.Threading.Timer.Scheduler
System.Threading.Timer.Scheduler = {}
---@alias CS.System.Threading.Timer.Scheduler System.Threading.Timer.Scheduler
CS.System.Threading.Timer.Scheduler = System.Threading.Timer.Scheduler

---@param timer System.Threading.Timer
function System.Threading.Timer.Scheduler:Remove(timer) end
---@param timer System.Threading.Timer
---@param new_next_run number
function System.Threading.Timer.Scheduler:Change(timer, new_next_run) end

---@class System.Threading.TimerCallback : System.MulticastDelegate
System.Threading.TimerCallback = {}
---@alias CS.System.Threading.TimerCallback System.Threading.TimerCallback
CS.System.Threading.TimerCallback = System.Threading.TimerCallback

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.TimerCallback
function System.Threading.TimerCallback.New(object, method) end
---@param state System.Object
function System.Threading.TimerCallback:Invoke(state) end
---@param state System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Threading.TimerCallback:BeginInvoke(state, callback, object) end
---@param result System.IAsyncResult
function System.Threading.TimerCallback:EndInvoke(result) end

---@class System.Threading.Volatile : System.Object
System.Threading.Volatile = {}
---@alias CS.System.Threading.Volatile System.Threading.Volatile
CS.System.Threading.Volatile = System.Threading.Volatile

---@overload fun(ref_location: boolean) : boolean, boolean
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: System.IntPtr) : System.IntPtr, System.IntPtr
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: System.UIntPtr) : System.UIntPtr, System.UIntPtr
---@overload fun(ref_location: number) : number, number
---@overload fun(ref_location: number) : number, number
---@param ref_location number
---@return number,number
function System.Threading.Volatile.Read(ref_location) end
---@overload fun(ref_location: boolean, value: boolean) : boolean
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: System.IntPtr, value: System.IntPtr) : System.IntPtr
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: System.UIntPtr, value: System.UIntPtr) : System.UIntPtr
---@overload fun(ref_location: number, value: number) : number
---@overload fun(ref_location: number, value: number) : number
---@param ref_location number
---@param value number
---@return ,number
function System.Threading.Volatile.Write(ref_location, value) end

---@class System.Threading.Volatile.VolatileBoolean : System.ValueType
---@field Value boolean
System.Threading.Volatile.VolatileBoolean = {}
---@alias CS.System.Threading.Volatile.VolatileBoolean System.Threading.Volatile.VolatileBoolean
CS.System.Threading.Volatile.VolatileBoolean = System.Threading.Volatile.VolatileBoolean


---@class System.Threading.Volatile.VolatileByte : System.ValueType
---@field Value number
System.Threading.Volatile.VolatileByte = {}
---@alias CS.System.Threading.Volatile.VolatileByte System.Threading.Volatile.VolatileByte
CS.System.Threading.Volatile.VolatileByte = System.Threading.Volatile.VolatileByte


---@class System.Threading.Volatile.VolatileInt16 : System.ValueType
---@field Value number
System.Threading.Volatile.VolatileInt16 = {}
---@alias CS.System.Threading.Volatile.VolatileInt16 System.Threading.Volatile.VolatileInt16
CS.System.Threading.Volatile.VolatileInt16 = System.Threading.Volatile.VolatileInt16


---@class System.Threading.Volatile.VolatileInt32 : System.ValueType
---@field Value number
System.Threading.Volatile.VolatileInt32 = {}
---@alias CS.System.Threading.Volatile.VolatileInt32 System.Threading.Volatile.VolatileInt32
CS.System.Threading.Volatile.VolatileInt32 = System.Threading.Volatile.VolatileInt32


---@class System.Threading.Volatile.VolatileIntPtr : System.ValueType
---@field Value System.IntPtr
System.Threading.Volatile.VolatileIntPtr = {}
---@alias CS.System.Threading.Volatile.VolatileIntPtr System.Threading.Volatile.VolatileIntPtr
CS.System.Threading.Volatile.VolatileIntPtr = System.Threading.Volatile.VolatileIntPtr


---@class System.Threading.Volatile.VolatileSByte : System.ValueType
---@field Value number
System.Threading.Volatile.VolatileSByte = {}
---@alias CS.System.Threading.Volatile.VolatileSByte System.Threading.Volatile.VolatileSByte
CS.System.Threading.Volatile.VolatileSByte = System.Threading.Volatile.VolatileSByte


---@class System.Threading.Volatile.VolatileSingle : System.ValueType
---@field Value number
System.Threading.Volatile.VolatileSingle = {}
---@alias CS.System.Threading.Volatile.VolatileSingle System.Threading.Volatile.VolatileSingle
CS.System.Threading.Volatile.VolatileSingle = System.Threading.Volatile.VolatileSingle


---@class System.Threading.Volatile.VolatileUInt16 : System.ValueType
---@field Value number
System.Threading.Volatile.VolatileUInt16 = {}
---@alias CS.System.Threading.Volatile.VolatileUInt16 System.Threading.Volatile.VolatileUInt16
CS.System.Threading.Volatile.VolatileUInt16 = System.Threading.Volatile.VolatileUInt16


---@class System.Threading.Volatile.VolatileUInt32 : System.ValueType
---@field Value number
System.Threading.Volatile.VolatileUInt32 = {}
---@alias CS.System.Threading.Volatile.VolatileUInt32 System.Threading.Volatile.VolatileUInt32
CS.System.Threading.Volatile.VolatileUInt32 = System.Threading.Volatile.VolatileUInt32


---@class System.Threading.Volatile.VolatileUIntPtr : System.ValueType
---@field Value System.UIntPtr
System.Threading.Volatile.VolatileUIntPtr = {}
---@alias CS.System.Threading.Volatile.VolatileUIntPtr System.Threading.Volatile.VolatileUIntPtr
CS.System.Threading.Volatile.VolatileUIntPtr = System.Threading.Volatile.VolatileUIntPtr


---@class System.Threading.Volatile.VolatileObject : System.ValueType
---@field Value System.Object
System.Threading.Volatile.VolatileObject = {}
---@alias CS.System.Threading.Volatile.VolatileObject System.Threading.Volatile.VolatileObject
CS.System.Threading.Volatile.VolatileObject = System.Threading.Volatile.VolatileObject


---@class System.Threading.Tasks.TaskCanceledException : System.OperationCanceledException
---@field Task System.Threading.Tasks.Task
System.Threading.Tasks.TaskCanceledException = {}
---@alias CS.System.Threading.Tasks.TaskCanceledException System.Threading.Tasks.TaskCanceledException
CS.System.Threading.Tasks.TaskCanceledException = System.Threading.Tasks.TaskCanceledException

---@overload fun() : System.Threading.Tasks.TaskCanceledException
---@overload fun(message: string) : System.Threading.Tasks.TaskCanceledException
---@overload fun(message: string, innerException: System.Exception) : System.Threading.Tasks.TaskCanceledException
---@overload fun(message: string, innerException: System.Exception, token: System.Threading.CancellationToken) : System.Threading.Tasks.TaskCanceledException
---@param task System.Threading.Tasks.Task
---@return System.Threading.Tasks.TaskCanceledException
function System.Threading.Tasks.TaskCanceledException.New(task) end

---@class System.Threading.Tasks.TaskCompletionSource : System.Object
---@field Task System.Threading.Tasks.Task[TResult]
System.Threading.Tasks.TaskCompletionSource = {}
---@alias CS.System.Threading.Tasks.TaskCompletionSource System.Threading.Tasks.TaskCompletionSource
CS.System.Threading.Tasks.TaskCompletionSource = System.Threading.Tasks.TaskCompletionSource

---@overload fun() : System.Threading.Tasks.TaskCompletionSource
---@overload fun(creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.TaskCompletionSource
---@overload fun(state: System.Object) : System.Threading.Tasks.TaskCompletionSource
---@param state System.Object
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@return System.Threading.Tasks.TaskCompletionSource
function System.Threading.Tasks.TaskCompletionSource.New(state, creationOptions) end
---@overload fun(self: System.Threading.Tasks.TaskCompletionSource, exception: System.Exception) : boolean
---@param exceptions System.Collections.Generic.IEnumerable
---@return boolean
function System.Threading.Tasks.TaskCompletionSource:TrySetException(exceptions) end
---@overload fun(self: System.Threading.Tasks.TaskCompletionSource, exception: System.Exception)
---@param exceptions System.Collections.Generic.IEnumerable
function System.Threading.Tasks.TaskCompletionSource:SetException(exceptions) end
---@param result TResult
---@return boolean
function System.Threading.Tasks.TaskCompletionSource:TrySetResult(result) end
---@param result TResult
function System.Threading.Tasks.TaskCompletionSource:SetResult(result) end
---@overload fun() : boolean
---@param cancellationToken System.Threading.CancellationToken
---@return boolean
function System.Threading.Tasks.TaskCompletionSource:TrySetCanceled(cancellationToken) end
function System.Threading.Tasks.TaskCompletionSource:SetCanceled() end

---@class System.Threading.Tasks.TaskSchedulerException : System.Exception
System.Threading.Tasks.TaskSchedulerException = {}
---@alias CS.System.Threading.Tasks.TaskSchedulerException System.Threading.Tasks.TaskSchedulerException
CS.System.Threading.Tasks.TaskSchedulerException = System.Threading.Tasks.TaskSchedulerException

---@overload fun() : System.Threading.Tasks.TaskSchedulerException
---@overload fun(message: string) : System.Threading.Tasks.TaskSchedulerException
---@overload fun(innerException: System.Exception) : System.Threading.Tasks.TaskSchedulerException
---@param message string
---@param innerException System.Exception
---@return System.Threading.Tasks.TaskSchedulerException
function System.Threading.Tasks.TaskSchedulerException.New(message, innerException) end

---@class System.Threading.Tasks.TaskToApm : System.Object
System.Threading.Tasks.TaskToApm = {}
---@alias CS.System.Threading.Tasks.TaskToApm System.Threading.Tasks.TaskToApm
CS.System.Threading.Tasks.TaskToApm = System.Threading.Tasks.TaskToApm

---@param task System.Threading.Tasks.Task
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Threading.Tasks.TaskToApm.Begin(task, callback, state) end
---@param asyncResult System.IAsyncResult
function System.Threading.Tasks.TaskToApm.End(asyncResult) end

---@class System.Threading.Tasks.TaskToApm.TaskWrapperAsyncResult : System.Object
System.Threading.Tasks.TaskToApm.TaskWrapperAsyncResult = {}
---@alias CS.System.Threading.Tasks.TaskToApm.TaskWrapperAsyncResult System.Threading.Tasks.TaskToApm.TaskWrapperAsyncResult
CS.System.Threading.Tasks.TaskToApm.TaskWrapperAsyncResult = System.Threading.Tasks.TaskToApm.TaskWrapperAsyncResult


---@class System.Threading.Tasks.ValueTask : System.ValueType
---@field IsCompleted boolean
---@field IsCompletedSuccessfully boolean
---@field IsFaulted boolean
---@field IsCanceled boolean
System.Threading.Tasks.ValueTask = {}
---@alias CS.System.Threading.Tasks.ValueTask System.Threading.Tasks.ValueTask
CS.System.Threading.Tasks.ValueTask = System.Threading.Tasks.ValueTask

---@overload fun(task: System.Threading.Tasks.Task) : System.Threading.Tasks.ValueTask
---@param source System.Threading.Tasks.Sources.IValueTaskSource
---@param token number
---@return System.Threading.Tasks.ValueTask
function System.Threading.Tasks.ValueTask.New(source, token) end
---@return number
function System.Threading.Tasks.ValueTask:GetHashCode() end
---@overload fun(self: System.Threading.Tasks.ValueTask, obj: System.Object) : boolean
---@param other System.Threading.Tasks.ValueTask
---@return boolean
function System.Threading.Tasks.ValueTask:Equals(other) end
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.ValueTask:AsTask() end
---@return System.Threading.Tasks.ValueTask
function System.Threading.Tasks.ValueTask:Preserve() end
---@return System.Runtime.CompilerServices.ValueTaskAwaiter
function System.Threading.Tasks.ValueTask:GetAwaiter() end
---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable
function System.Threading.Tasks.ValueTask:ConfigureAwait(continueOnCapturedContext) end

---@class System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask : System.Threading.Tasks.Task
---@field Result System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask -- infered from System.Threading.Tasks.Task`1[System.Threading.Tasks.VoidTaskResult]
System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask = {}
---@alias CS.System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask
CS.System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask = System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask

---@param source System.Threading.Tasks.Sources.IValueTaskSource
---@param token number
---@return System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask
function System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask.New(source, token) end

---@class System.Threading.Tasks.ValueTask : System.ValueType
---@field IsCompleted boolean
---@field IsCompletedSuccessfully boolean
---@field IsFaulted boolean
---@field IsCanceled boolean
---@field Result TResult
System.Threading.Tasks.ValueTask = {}
---@alias CS.System.Threading.Tasks.ValueTask System.Threading.Tasks.ValueTask
CS.System.Threading.Tasks.ValueTask = System.Threading.Tasks.ValueTask

---@overload fun(result: TResult) : System.Threading.Tasks.ValueTask
---@overload fun(task: System.Threading.Tasks.Task[TResult]) : System.Threading.Tasks.ValueTask
---@param source System.Threading.Tasks.Sources.IValueTaskSource[TResult]
---@param token number
---@return System.Threading.Tasks.ValueTask
function System.Threading.Tasks.ValueTask.New(source, token) end
---@return number
function System.Threading.Tasks.ValueTask:GetHashCode() end
---@overload fun(self: System.Threading.Tasks.ValueTask, obj: System.Object) : boolean
---@param other System.Threading.Tasks.ValueTask
---@return boolean
function System.Threading.Tasks.ValueTask:Equals(other) end
---@return System.Threading.Tasks.Task[TResult]
function System.Threading.Tasks.ValueTask:AsTask() end
---@return System.Threading.Tasks.ValueTask
function System.Threading.Tasks.ValueTask:Preserve() end
---@return System.Runtime.CompilerServices.ValueTaskAwaiter[TResult]
function System.Threading.Tasks.ValueTask:GetAwaiter() end
---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredValueTaskAwaitable[TResult]
function System.Threading.Tasks.ValueTask:ConfigureAwait(continueOnCapturedContext) end
---@return string
function System.Threading.Tasks.ValueTask:ToString() end

---@class System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask : System.Threading.Tasks.Task[TResult]
System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask = {}
---@alias CS.System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask
CS.System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask = System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask

---@param source System.Threading.Tasks.Sources.IValueTaskSource[TResult]
---@param token number
---@return System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask
function System.Threading.Tasks.ValueTask.ValueTaskSourceAsTask.New(source, token) end

---@class System.Threading.Tasks.BeginEndAwaitableAdapter : System.Threading.Tasks.RendezvousAwaitable
---@field Callback System.AsyncCallback
System.Threading.Tasks.BeginEndAwaitableAdapter = {}
---@alias CS.System.Threading.Tasks.BeginEndAwaitableAdapter System.Threading.Tasks.BeginEndAwaitableAdapter
CS.System.Threading.Tasks.BeginEndAwaitableAdapter = System.Threading.Tasks.BeginEndAwaitableAdapter

---@return System.Threading.Tasks.BeginEndAwaitableAdapter
function System.Threading.Tasks.BeginEndAwaitableAdapter.New() end

---@class System.Threading.Tasks.TaskAwaiters : System.Object
System.Threading.Tasks.TaskAwaiters = {}
---@alias CS.System.Threading.Tasks.TaskAwaiters System.Threading.Tasks.TaskAwaiters
CS.System.Threading.Tasks.TaskAwaiters = System.Threading.Tasks.TaskAwaiters

---@param task System.Threading.Tasks.Task
---@return System.Threading.Tasks.ForceAsyncAwaiter
function System.Threading.Tasks.TaskAwaiters.ForceAsync(task) end

---@class System.Threading.Tasks.ForceAsyncAwaiter : System.ValueType
---@field IsCompleted boolean
System.Threading.Tasks.ForceAsyncAwaiter = {}
---@alias CS.System.Threading.Tasks.ForceAsyncAwaiter System.Threading.Tasks.ForceAsyncAwaiter
CS.System.Threading.Tasks.ForceAsyncAwaiter = System.Threading.Tasks.ForceAsyncAwaiter

---@return System.Threading.Tasks.ForceAsyncAwaiter
function System.Threading.Tasks.ForceAsyncAwaiter:GetAwaiter() end
function System.Threading.Tasks.ForceAsyncAwaiter:GetResult() end
---@param action System.Action
function System.Threading.Tasks.ForceAsyncAwaiter:OnCompleted(action) end
---@param action System.Action
function System.Threading.Tasks.ForceAsyncAwaiter:UnsafeOnCompleted(action) end

---@class System.Threading.Tasks.RendezvousAwaitable : System.Object
---@field RunContinuationsAsynchronously boolean
---@field IsCompleted boolean
System.Threading.Tasks.RendezvousAwaitable = {}
---@alias CS.System.Threading.Tasks.RendezvousAwaitable System.Threading.Tasks.RendezvousAwaitable
CS.System.Threading.Tasks.RendezvousAwaitable = System.Threading.Tasks.RendezvousAwaitable

---@return System.Threading.Tasks.RendezvousAwaitable
function System.Threading.Tasks.RendezvousAwaitable.New() end
---@return System.Threading.Tasks.RendezvousAwaitable
function System.Threading.Tasks.RendezvousAwaitable:GetAwaiter() end
---@return TResult
function System.Threading.Tasks.RendezvousAwaitable:GetResult() end
---@param result TResult
function System.Threading.Tasks.RendezvousAwaitable:SetResult(result) end
---@param token System.Threading.CancellationToken
function System.Threading.Tasks.RendezvousAwaitable:SetCanceled(token) end
---@param exception System.Exception
function System.Threading.Tasks.RendezvousAwaitable:SetException(exception) end
---@param continuation System.Action
function System.Threading.Tasks.RendezvousAwaitable:OnCompleted(continuation) end
---@param continuation System.Action
function System.Threading.Tasks.RendezvousAwaitable:UnsafeOnCompleted(continuation) end

---@class System.Threading.Tasks.Box : System.Object
System.Threading.Tasks.Box = {}
---@alias CS.System.Threading.Tasks.Box System.Threading.Tasks.Box
CS.System.Threading.Tasks.Box = System.Threading.Tasks.Box


---@class System.Threading.Tasks.ParallelOptions : System.Object
---@field TaskScheduler System.Threading.Tasks.TaskScheduler
---@field MaxDegreeOfParallelism number
---@field CancellationToken System.Threading.CancellationToken
System.Threading.Tasks.ParallelOptions = {}
---@alias CS.System.Threading.Tasks.ParallelOptions System.Threading.Tasks.ParallelOptions
CS.System.Threading.Tasks.ParallelOptions = System.Threading.Tasks.ParallelOptions

---@return System.Threading.Tasks.ParallelOptions
function System.Threading.Tasks.ParallelOptions.New() end

---@class System.Threading.Tasks.Parallel : System.Object
System.Threading.Tasks.Parallel = {}
---@alias CS.System.Threading.Tasks.Parallel System.Threading.Tasks.Parallel
CS.System.Threading.Tasks.Parallel = System.Threading.Tasks.Parallel

---@overload fun(actions: System.Action[])
---@param parallelOptions System.Threading.Tasks.ParallelOptions
---@param actions System.Action[]
function System.Threading.Tasks.Parallel.Invoke(parallelOptions, actions) end
---@overload fun(fromInclusive: number, toExclusive: number, body: System.Action) : System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive: number, toExclusive: number, body: System.Action) : System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive: number, toExclusive: number, parallelOptions: System.Threading.Tasks.ParallelOptions, body: System.Action) : System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive: number, toExclusive: number, parallelOptions: System.Threading.Tasks.ParallelOptions, body: System.Action) : System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive: number, toExclusive: number, body: System.Action) : System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive: number, toExclusive: number, body: System.Action) : System.Threading.Tasks.ParallelLoopResult
---@overload fun(fromInclusive: number, toExclusive: number, parallelOptions: System.Threading.Tasks.ParallelOptions, body: System.Action) : System.Threading.Tasks.ParallelLoopResult
---@param fromInclusive number
---@param toExclusive number
---@param parallelOptions System.Threading.Tasks.ParallelOptions
---@param body System.Action
---@return System.Threading.Tasks.ParallelLoopResult
function System.Threading.Tasks.Parallel.For(fromInclusive, toExclusive, parallelOptions, body) end

---@class System.Threading.Tasks.ParallelEtwProvider : System.Diagnostics.Tracing.EventSource
---@field Log System.Threading.Tasks.ParallelEtwProvider
System.Threading.Tasks.ParallelEtwProvider = {}
---@alias CS.System.Threading.Tasks.ParallelEtwProvider System.Threading.Tasks.ParallelEtwProvider
CS.System.Threading.Tasks.ParallelEtwProvider = System.Threading.Tasks.ParallelEtwProvider

---@param OriginatingTaskSchedulerID number
---@param OriginatingTaskID number
---@param ForkJoinContextID number
---@param OperationType System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType
---@param InclusiveFrom number
---@param ExclusiveTo number
function System.Threading.Tasks.ParallelEtwProvider:ParallelLoopBegin(OriginatingTaskSchedulerID, OriginatingTaskID, ForkJoinContextID, OperationType, InclusiveFrom, ExclusiveTo) end
---@param OriginatingTaskSchedulerID number
---@param OriginatingTaskID number
---@param ForkJoinContextID number
---@param TotalIterations number
function System.Threading.Tasks.ParallelEtwProvider:ParallelLoopEnd(OriginatingTaskSchedulerID, OriginatingTaskID, ForkJoinContextID, TotalIterations) end
---@param OriginatingTaskSchedulerID number
---@param OriginatingTaskID number
---@param ForkJoinContextID number
---@param OperationType System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType
---@param ActionCount number
function System.Threading.Tasks.ParallelEtwProvider:ParallelInvokeBegin(OriginatingTaskSchedulerID, OriginatingTaskID, ForkJoinContextID, OperationType, ActionCount) end
---@param OriginatingTaskSchedulerID number
---@param OriginatingTaskID number
---@param ForkJoinContextID number
function System.Threading.Tasks.ParallelEtwProvider:ParallelInvokeEnd(OriginatingTaskSchedulerID, OriginatingTaskID, ForkJoinContextID) end
---@param OriginatingTaskSchedulerID number
---@param OriginatingTaskID number
---@param ForkJoinContextID number
function System.Threading.Tasks.ParallelEtwProvider:ParallelFork(OriginatingTaskSchedulerID, OriginatingTaskID, ForkJoinContextID) end
---@param OriginatingTaskSchedulerID number
---@param OriginatingTaskID number
---@param ForkJoinContextID number
function System.Threading.Tasks.ParallelEtwProvider:ParallelJoin(OriginatingTaskSchedulerID, OriginatingTaskID, ForkJoinContextID) end

---@class System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType
---@field ParallelInvoke System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType
---@field ParallelFor System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType
---@field ParallelForEach System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType
System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType = {}
---@alias CS.System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType
CS.System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType = System.Threading.Tasks.ParallelEtwProvider.ForkJoinOperationType


---@class System.Threading.Tasks.ParallelEtwProvider.Tasks : System.Object
---@field Loop System.Diagnostics.Tracing.EventTask
---@field Invoke System.Diagnostics.Tracing.EventTask
---@field ForkJoin System.Diagnostics.Tracing.EventTask
System.Threading.Tasks.ParallelEtwProvider.Tasks = {}
---@alias CS.System.Threading.Tasks.ParallelEtwProvider.Tasks System.Threading.Tasks.ParallelEtwProvider.Tasks
CS.System.Threading.Tasks.ParallelEtwProvider.Tasks = System.Threading.Tasks.ParallelEtwProvider.Tasks

---@return System.Threading.Tasks.ParallelEtwProvider.Tasks
function System.Threading.Tasks.ParallelEtwProvider.Tasks.New() end

---@class System.Threading.Tasks.ParallelLoopState : System.Object
---@field ShouldExitCurrentIteration boolean
---@field IsStopped boolean
---@field IsExceptional boolean
---@field LowestBreakIteration System.Nullable
System.Threading.Tasks.ParallelLoopState = {}
---@alias CS.System.Threading.Tasks.ParallelLoopState System.Threading.Tasks.ParallelLoopState
CS.System.Threading.Tasks.ParallelLoopState = System.Threading.Tasks.ParallelLoopState

function System.Threading.Tasks.ParallelLoopState:Stop() end
function System.Threading.Tasks.ParallelLoopState:Break() end

---@class System.Threading.Tasks.ParallelLoopState32 : System.Threading.Tasks.ParallelLoopState
System.Threading.Tasks.ParallelLoopState32 = {}
---@alias CS.System.Threading.Tasks.ParallelLoopState32 System.Threading.Tasks.ParallelLoopState32
CS.System.Threading.Tasks.ParallelLoopState32 = System.Threading.Tasks.ParallelLoopState32


---@class System.Threading.Tasks.ParallelLoopState64 : System.Threading.Tasks.ParallelLoopState
System.Threading.Tasks.ParallelLoopState64 = {}
---@alias CS.System.Threading.Tasks.ParallelLoopState64 System.Threading.Tasks.ParallelLoopState64
CS.System.Threading.Tasks.ParallelLoopState64 = System.Threading.Tasks.ParallelLoopState64


---@class System.Threading.Tasks.ParallelLoopStateFlags : System.Object
System.Threading.Tasks.ParallelLoopStateFlags = {}
---@alias CS.System.Threading.Tasks.ParallelLoopStateFlags System.Threading.Tasks.ParallelLoopStateFlags
CS.System.Threading.Tasks.ParallelLoopStateFlags = System.Threading.Tasks.ParallelLoopStateFlags

---@return System.Threading.Tasks.ParallelLoopStateFlags
function System.Threading.Tasks.ParallelLoopStateFlags.New() end

---@class System.Threading.Tasks.ParallelLoopStateFlags32 : System.Threading.Tasks.ParallelLoopStateFlags
System.Threading.Tasks.ParallelLoopStateFlags32 = {}
---@alias CS.System.Threading.Tasks.ParallelLoopStateFlags32 System.Threading.Tasks.ParallelLoopStateFlags32
CS.System.Threading.Tasks.ParallelLoopStateFlags32 = System.Threading.Tasks.ParallelLoopStateFlags32

---@return System.Threading.Tasks.ParallelLoopStateFlags32
function System.Threading.Tasks.ParallelLoopStateFlags32.New() end

---@class System.Threading.Tasks.ParallelLoopStateFlags64 : System.Threading.Tasks.ParallelLoopStateFlags
System.Threading.Tasks.ParallelLoopStateFlags64 = {}
---@alias CS.System.Threading.Tasks.ParallelLoopStateFlags64 System.Threading.Tasks.ParallelLoopStateFlags64
CS.System.Threading.Tasks.ParallelLoopStateFlags64 = System.Threading.Tasks.ParallelLoopStateFlags64

---@return System.Threading.Tasks.ParallelLoopStateFlags64
function System.Threading.Tasks.ParallelLoopStateFlags64.New() end

---@class System.Threading.Tasks.ParallelLoopResult : System.ValueType
---@field IsCompleted boolean
---@field LowestBreakIteration System.Nullable
System.Threading.Tasks.ParallelLoopResult = {}
---@alias CS.System.Threading.Tasks.ParallelLoopResult System.Threading.Tasks.ParallelLoopResult
CS.System.Threading.Tasks.ParallelLoopResult = System.Threading.Tasks.ParallelLoopResult


---@class System.Threading.Tasks.IndexRange : System.ValueType
System.Threading.Tasks.IndexRange = {}
---@alias CS.System.Threading.Tasks.IndexRange System.Threading.Tasks.IndexRange
CS.System.Threading.Tasks.IndexRange = System.Threading.Tasks.IndexRange


---@class System.Threading.Tasks.RangeWorker : System.ValueType
System.Threading.Tasks.RangeWorker = {}
---@alias CS.System.Threading.Tasks.RangeWorker System.Threading.Tasks.RangeWorker
CS.System.Threading.Tasks.RangeWorker = System.Threading.Tasks.RangeWorker


---@class System.Threading.Tasks.RangeManager : System.Object
System.Threading.Tasks.RangeManager = {}
---@alias CS.System.Threading.Tasks.RangeManager System.Threading.Tasks.RangeManager
CS.System.Threading.Tasks.RangeManager = System.Threading.Tasks.RangeManager


---@class System.Threading.Tasks.TaskReplicator : System.Object
System.Threading.Tasks.TaskReplicator = {}
---@alias CS.System.Threading.Tasks.TaskReplicator System.Threading.Tasks.TaskReplicator
CS.System.Threading.Tasks.TaskReplicator = System.Threading.Tasks.TaskReplicator


---@class System.Threading.Tasks.TaskReplicator.ReplicatableUserAction : System.MulticastDelegate
System.Threading.Tasks.TaskReplicator.ReplicatableUserAction = {}
---@alias CS.System.Threading.Tasks.TaskReplicator.ReplicatableUserAction System.Threading.Tasks.TaskReplicator.ReplicatableUserAction
CS.System.Threading.Tasks.TaskReplicator.ReplicatableUserAction = System.Threading.Tasks.TaskReplicator.ReplicatableUserAction

---@param object System.Object
---@param method System.IntPtr
---@return System.Threading.Tasks.TaskReplicator.ReplicatableUserAction
function System.Threading.Tasks.TaskReplicator.ReplicatableUserAction.New(object, method) end
---@param ref_replicaState TState
---@param timeout number
---@param out_yieldedBeforeCompletion boolean
---@return ,TState,boolean
function System.Threading.Tasks.TaskReplicator.ReplicatableUserAction:Invoke(ref_replicaState, timeout, out_yieldedBeforeCompletion) end
---@param ref_replicaState TState
---@param timeout number
---@param out_yieldedBeforeCompletion boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,TState,boolean
function System.Threading.Tasks.TaskReplicator.ReplicatableUserAction:BeginInvoke(ref_replicaState, timeout, out_yieldedBeforeCompletion, callback, object) end
---@param ref_replicaState TState
---@param out_yieldedBeforeCompletion boolean
---@param result System.IAsyncResult
---@return ,TState,boolean
function System.Threading.Tasks.TaskReplicator.ReplicatableUserAction:EndInvoke(ref_replicaState, out_yieldedBeforeCompletion, result) end

---@class System.Threading.Tasks.TaskReplicator.Replica : System.Object
System.Threading.Tasks.TaskReplicator.Replica = {}
---@alias CS.System.Threading.Tasks.TaskReplicator.Replica System.Threading.Tasks.TaskReplicator.Replica
CS.System.Threading.Tasks.TaskReplicator.Replica = System.Threading.Tasks.TaskReplicator.Replica

function System.Threading.Tasks.TaskReplicator.Replica:Start() end
function System.Threading.Tasks.TaskReplicator.Replica:Wait() end
function System.Threading.Tasks.TaskReplicator.Replica:Execute() end

---@class System.Threading.Tasks.TaskReplicator.Replica : System.Threading.Tasks.TaskReplicator.Replica
System.Threading.Tasks.TaskReplicator.Replica = {}
---@alias CS.System.Threading.Tasks.TaskReplicator.Replica System.Threading.Tasks.TaskReplicator.Replica
CS.System.Threading.Tasks.TaskReplicator.Replica = System.Threading.Tasks.TaskReplicator.Replica

---@param replicator System.Threading.Tasks.TaskReplicator
---@param maxConcurrency number
---@param timeout number
---@param action System.Threading.Tasks.TaskReplicator.ReplicatableUserAction[TState]
---@return System.Threading.Tasks.TaskReplicator.Replica
function System.Threading.Tasks.TaskReplicator.Replica.New(replicator, maxConcurrency, timeout, action) end

---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair : System.Object
---@field Completion System.Threading.Tasks.Task
---@field ConcurrentScheduler System.Threading.Tasks.TaskScheduler
---@field ExclusiveScheduler System.Threading.Tasks.TaskScheduler
System.Threading.Tasks.ConcurrentExclusiveSchedulerPair = {}
---@alias CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair = System.Threading.Tasks.ConcurrentExclusiveSchedulerPair

---@overload fun() : System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
---@overload fun(taskScheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
---@overload fun(taskScheduler: System.Threading.Tasks.TaskScheduler, maxConcurrencyLevel: number) : System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
---@param taskScheduler System.Threading.Tasks.TaskScheduler
---@param maxConcurrencyLevel number
---@param maxItemsPerTask number
---@return System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
function System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.New(taskScheduler, maxConcurrencyLevel, maxItemsPerTask) end
function System.Threading.Tasks.ConcurrentExclusiveSchedulerPair:Complete() end

---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState : System.Threading.Tasks.TaskCompletionSource
System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState = {}
---@alias CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState
CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState = System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState

---@return System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState
function System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.CompletionState.New() end

---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler : System.Threading.Tasks.TaskScheduler
---@field MaximumConcurrencyLevel number
System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler = {}
---@alias CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler
CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler = System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler


---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView : System.Object
---@field MaximumConcurrencyLevel number
---@field ScheduledTasks System.Collections.Generic.IEnumerable
---@field SchedulerPair System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView = {}
---@alias CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView
CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView = System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView

---@param scheduler System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler
---@return System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView
function System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ConcurrentExclusiveTaskScheduler.DebugView.New(scheduler) end

---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView : System.Object
---@field Mode System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
---@field ScheduledExclusive System.Collections.Generic.IEnumerable
---@field ScheduledConcurrent System.Collections.Generic.IEnumerable
---@field CurrentlyExecutingTaskCount number
---@field TargetScheduler System.Threading.Tasks.TaskScheduler
System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView = {}
---@alias CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView
CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView = System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView

---@param pair System.Threading.Tasks.ConcurrentExclusiveSchedulerPair
---@return System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView
function System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.DebugView.New(pair) end

---@class System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
---@field NotCurrentlyProcessing System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
---@field ProcessingExclusiveTask System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
---@field ProcessingConcurrentTasks System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
---@field Completing System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
---@field Completed System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode = {}
---@alias CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode
CS.System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode = System.Threading.Tasks.ConcurrentExclusiveSchedulerPair.ProcessingMode


---@class System.Threading.Tasks.DebuggerSupport : System.Object
---@field LoggingOn boolean
System.Threading.Tasks.DebuggerSupport = {}
---@alias CS.System.Threading.Tasks.DebuggerSupport System.Threading.Tasks.DebuggerSupport
CS.System.Threading.Tasks.DebuggerSupport = System.Threading.Tasks.DebuggerSupport

---@param traceLevel System.Threading.Tasks.CausalityTraceLevel
---@param task System.Threading.Tasks.Task
---@param operationName string
---@param relatedContext number
function System.Threading.Tasks.DebuggerSupport.TraceOperationCreation(traceLevel, task, operationName, relatedContext) end
---@param traceLevel System.Threading.Tasks.CausalityTraceLevel
---@param task System.Threading.Tasks.Task
---@param status Internal.Runtime.Augments.AsyncStatus
function System.Threading.Tasks.DebuggerSupport.TraceOperationCompletion(traceLevel, task, status) end
---@param traceLevel System.Threading.Tasks.CausalityTraceLevel
---@param task System.Threading.Tasks.Task
---@param relation System.Threading.Tasks.CausalityRelation
function System.Threading.Tasks.DebuggerSupport.TraceOperationRelation(traceLevel, task, relation) end
---@param traceLevel System.Threading.Tasks.CausalityTraceLevel
---@param task System.Threading.Tasks.Task
---@param work System.Threading.Tasks.CausalitySynchronousWork
function System.Threading.Tasks.DebuggerSupport.TraceSynchronousWorkStart(traceLevel, task, work) end
---@param traceLevel System.Threading.Tasks.CausalityTraceLevel
---@param work System.Threading.Tasks.CausalitySynchronousWork
function System.Threading.Tasks.DebuggerSupport.TraceSynchronousWorkCompletion(traceLevel, work) end
---@param task System.Threading.Tasks.Task
function System.Threading.Tasks.DebuggerSupport.AddToActiveTasks(task) end
---@param task System.Threading.Tasks.Task
function System.Threading.Tasks.DebuggerSupport.RemoveFromActiveTasks(task) end
---@param taskId number
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.DebuggerSupport.GetActiveTaskFromId(taskId) end
---@overload fun(builder: System.Runtime.CompilerServices.AsyncVoidMethodBuilder) : System.Threading.Tasks.Task
---@param builder System.Runtime.CompilerServices.AsyncTaskMethodBuilder
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.DebuggerSupport.GetTaskIfDebuggingEnabled(builder) end

---@class System.Threading.Tasks.Task : System.Threading.Tasks.Task
---@field Factory System.Threading.Tasks.TaskFactory[TResult]
---@field Result TResult
System.Threading.Tasks.Task = {}
---@alias CS.System.Threading.Tasks.Task System.Threading.Tasks.Task
CS.System.Threading.Tasks.Task = System.Threading.Tasks.Task

---@overload fun(_function: System.Func[TResult]) : System.Threading.Tasks.Task
---@overload fun(_function: System.Func[TResult], cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(_function: System.Func[TResult], creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@overload fun(_function: System.Func[TResult], cancellationToken: System.Threading.CancellationToken, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@overload fun(_function: System.Func[System.Object,TResult], state: System.Object) : System.Threading.Tasks.Task
---@overload fun(_function: System.Func[System.Object,TResult], state: System.Object, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(_function: System.Func[System.Object,TResult], state: System.Object, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@param _function System.Func[System.Object,TResult]
---@param state System.Object
---@param cancellationToken System.Threading.CancellationToken
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.New(_function, state, cancellationToken, creationOptions) end
---@return System.Runtime.CompilerServices.TaskAwaiter[TResult]
function System.Threading.Tasks.Task:GetAwaiter() end
---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable[TResult]
function System.Threading.Tasks.Task:ConfigureAwait(continueOnCapturedContext) end
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult]]) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult]], cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult]], scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult]], continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult]], cancellationToken: System.Threading.CancellationToken, continuationOptions: System.Threading.Tasks.TaskContinuationOptions, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult],System.Object], state: System.Object) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult],System.Object], state: System.Object, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult],System.Object], state: System.Object, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action[System.Threading.Tasks.Task[TResult],System.Object], state: System.Object, continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task
---@param continuationAction System.Action[System.Threading.Tasks.Task[TResult],System.Object]
---@param state System.Object
---@param cancellationToken System.Threading.CancellationToken
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:ContinueWith(continuationAction, state, cancellationToken, continuationOptions, scheduler) end

---@class System.Threading.Tasks.Task.TaskWhenAnyCast : System.Object
System.Threading.Tasks.Task.TaskWhenAnyCast = {}
---@alias CS.System.Threading.Tasks.Task.TaskWhenAnyCast System.Threading.Tasks.Task.TaskWhenAnyCast
CS.System.Threading.Tasks.Task.TaskWhenAnyCast = System.Threading.Tasks.Task.TaskWhenAnyCast


---@class System.Threading.Tasks.SystemThreadingTasks_FutureDebugView : System.Object
---@field Result TResult
---@field AsyncState System.Object
---@field CreationOptions System.Threading.Tasks.TaskCreationOptions
---@field Exception System.Exception
---@field Id number
---@field CancellationPending boolean
---@field Status System.Threading.Tasks.TaskStatus
System.Threading.Tasks.SystemThreadingTasks_FutureDebugView = {}
---@alias CS.System.Threading.Tasks.SystemThreadingTasks_FutureDebugView System.Threading.Tasks.SystemThreadingTasks_FutureDebugView
CS.System.Threading.Tasks.SystemThreadingTasks_FutureDebugView = System.Threading.Tasks.SystemThreadingTasks_FutureDebugView

---@param task System.Threading.Tasks.Task[TResult]
---@return System.Threading.Tasks.SystemThreadingTasks_FutureDebugView
function System.Threading.Tasks.SystemThreadingTasks_FutureDebugView.New(task) end

---@class System.Threading.Tasks.TaskFactory : System.Object
---@field CancellationToken System.Threading.CancellationToken
---@field Scheduler System.Threading.Tasks.TaskScheduler
---@field CreationOptions System.Threading.Tasks.TaskCreationOptions
---@field ContinuationOptions System.Threading.Tasks.TaskContinuationOptions
System.Threading.Tasks.TaskFactory = {}
---@alias CS.System.Threading.Tasks.TaskFactory System.Threading.Tasks.TaskFactory
CS.System.Threading.Tasks.TaskFactory = System.Threading.Tasks.TaskFactory

---@overload fun() : System.Threading.Tasks.TaskFactory
---@overload fun(cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.TaskFactory
---@overload fun(scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.TaskFactory
---@overload fun(creationOptions: System.Threading.Tasks.TaskCreationOptions, continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.TaskFactory
---@param cancellationToken System.Threading.CancellationToken
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.TaskFactory
function System.Threading.Tasks.TaskFactory.New(cancellationToken, creationOptions, continuationOptions, scheduler) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, _function: System.Func[TResult]) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, _function: System.Func[TResult], cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, _function: System.Func[TResult], creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, _function: System.Func[TResult], cancellationToken: System.Threading.CancellationToken, creationOptions: System.Threading.Tasks.TaskCreationOptions, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, _function: System.Func[System.Object,TResult], state: System.Object) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, _function: System.Func[System.Object,TResult], state: System.Object, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, _function: System.Func[System.Object,TResult], state: System.Object, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task[TResult]
---@param _function System.Func[System.Object,TResult]
---@param state System.Object
---@param cancellationToken System.Threading.CancellationToken
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task[TResult]
function System.Threading.Tasks.TaskFactory:StartNew(_function, state, cancellationToken, creationOptions, scheduler) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, asyncResult: System.IAsyncResult, endMethod: System.Func[System.IAsyncResult,TResult]) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, asyncResult: System.IAsyncResult, endMethod: System.Func[System.IAsyncResult,TResult], creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, asyncResult: System.IAsyncResult, endMethod: System.Func[System.IAsyncResult,TResult], creationOptions: System.Threading.Tasks.TaskCreationOptions, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, beginMethod: System.Func, endMethod: System.Func[System.IAsyncResult,TResult], state: System.Object) : System.Threading.Tasks.Task[TResult]
---@param beginMethod System.Func
---@param endMethod System.Func[System.IAsyncResult,TResult]
---@param state System.Object
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@return System.Threading.Tasks.Task[TResult]
function System.Threading.Tasks.TaskFactory:FromAsync(beginMethod, endMethod, state, creationOptions) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationFunction: System.Func[System.Threading.Tasks.Task[],TResult]) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationFunction: System.Func[System.Threading.Tasks.Task[],TResult], cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationFunction: System.Func[System.Threading.Tasks.Task[],TResult], continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task[TResult]
---@param tasks System.Threading.Tasks.Task[]
---@param continuationFunction System.Func[System.Threading.Tasks.Task[],TResult]
---@param cancellationToken System.Threading.CancellationToken
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task[TResult]
function System.Threading.Tasks.TaskFactory:ContinueWhenAll(tasks, continuationFunction, cancellationToken, continuationOptions, scheduler) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationFunction: System.Func[System.Threading.Tasks.Task,TResult]) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationFunction: System.Func[System.Threading.Tasks.Task,TResult], cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task[TResult]
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationFunction: System.Func[System.Threading.Tasks.Task,TResult], continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task[TResult]
---@param tasks System.Threading.Tasks.Task[]
---@param continuationFunction System.Func[System.Threading.Tasks.Task,TResult]
---@param cancellationToken System.Threading.CancellationToken
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task[TResult]
function System.Threading.Tasks.TaskFactory:ContinueWhenAny(tasks, continuationFunction, cancellationToken, continuationOptions, scheduler) end

---@class System.Threading.Tasks.TaskFactory.FromAsyncTrimPromise : System.Threading.Tasks.Task[TResult]
System.Threading.Tasks.TaskFactory.FromAsyncTrimPromise = {}
---@alias CS.System.Threading.Tasks.TaskFactory.FromAsyncTrimPromise System.Threading.Tasks.TaskFactory.FromAsyncTrimPromise
CS.System.Threading.Tasks.TaskFactory.FromAsyncTrimPromise = System.Threading.Tasks.TaskFactory.FromAsyncTrimPromise


---@class System.Threading.Tasks.GenericDelegateCache : System.Object
System.Threading.Tasks.GenericDelegateCache = {}
---@alias CS.System.Threading.Tasks.GenericDelegateCache System.Threading.Tasks.GenericDelegateCache
CS.System.Threading.Tasks.GenericDelegateCache = System.Threading.Tasks.GenericDelegateCache


---@class System.Threading.Tasks.IProducerConsumerQueue
---@field IsEmpty boolean
---@field Count number
System.Threading.Tasks.IProducerConsumerQueue = {}
---@alias CS.System.Threading.Tasks.IProducerConsumerQueue System.Threading.Tasks.IProducerConsumerQueue
CS.System.Threading.Tasks.IProducerConsumerQueue = System.Threading.Tasks.IProducerConsumerQueue

---@param item T
function System.Threading.Tasks.IProducerConsumerQueue:Enqueue(item) end
---@param out_result T
---@return boolean,T
function System.Threading.Tasks.IProducerConsumerQueue:TryDequeue(out_result) end
---@param syncObj System.Object
---@return number
function System.Threading.Tasks.IProducerConsumerQueue:GetCountSafe(syncObj) end

---@class System.Threading.Tasks.MultiProducerMultiConsumerQueue : System.Collections.Concurrent.ConcurrentQueue[T]
System.Threading.Tasks.MultiProducerMultiConsumerQueue = {}
---@alias CS.System.Threading.Tasks.MultiProducerMultiConsumerQueue System.Threading.Tasks.MultiProducerMultiConsumerQueue
CS.System.Threading.Tasks.MultiProducerMultiConsumerQueue = System.Threading.Tasks.MultiProducerMultiConsumerQueue

---@return System.Threading.Tasks.MultiProducerMultiConsumerQueue
function System.Threading.Tasks.MultiProducerMultiConsumerQueue.New() end

---@class System.Threading.Tasks.SingleProducerSingleConsumerQueue : System.Object
---@field IsEmpty boolean
---@field Count number
System.Threading.Tasks.SingleProducerSingleConsumerQueue = {}
---@alias CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue System.Threading.Tasks.SingleProducerSingleConsumerQueue
CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue = System.Threading.Tasks.SingleProducerSingleConsumerQueue

---@param item T
function System.Threading.Tasks.SingleProducerSingleConsumerQueue:Enqueue(item) end
---@param out_result T
---@return boolean,T
function System.Threading.Tasks.SingleProducerSingleConsumerQueue:TryDequeue(out_result) end
---@param out_result T
---@return boolean,T
function System.Threading.Tasks.SingleProducerSingleConsumerQueue:TryPeek(out_result) end
---@param predicate System.Predicate[T]
---@param out_result T
---@return boolean,T
function System.Threading.Tasks.SingleProducerSingleConsumerQueue:TryDequeueIf(predicate, out_result) end
function System.Threading.Tasks.SingleProducerSingleConsumerQueue:Clear() end
---@return System.Collections.Generic.IEnumerator[T]
function System.Threading.Tasks.SingleProducerSingleConsumerQueue:GetEnumerator() end

---@class System.Threading.Tasks.SingleProducerSingleConsumerQueue.Segment : System.Object
System.Threading.Tasks.SingleProducerSingleConsumerQueue.Segment = {}
---@alias CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue.Segment System.Threading.Tasks.SingleProducerSingleConsumerQueue.Segment
CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue.Segment = System.Threading.Tasks.SingleProducerSingleConsumerQueue.Segment


---@class System.Threading.Tasks.SingleProducerSingleConsumerQueue.SegmentState : System.ValueType
System.Threading.Tasks.SingleProducerSingleConsumerQueue.SegmentState = {}
---@alias CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue.SegmentState System.Threading.Tasks.SingleProducerSingleConsumerQueue.SegmentState
CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue.SegmentState = System.Threading.Tasks.SingleProducerSingleConsumerQueue.SegmentState


---@class System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView : System.Object
---@field Items T[]
System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView = {}
---@alias CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView
CS.System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView = System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView

---@param queue System.Threading.Tasks.SingleProducerSingleConsumerQueue[T]
---@return System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView
function System.Threading.Tasks.SingleProducerSingleConsumerQueue.SingleProducerSingleConsumerQueue_DebugView.New(queue) end

---@class System.Threading.Tasks.PaddingHelpers : System.Object
System.Threading.Tasks.PaddingHelpers = {}
---@alias CS.System.Threading.Tasks.PaddingHelpers System.Threading.Tasks.PaddingHelpers
CS.System.Threading.Tasks.PaddingHelpers = System.Threading.Tasks.PaddingHelpers


---@class System.Threading.Tasks.PaddingFor32 : System.ValueType
System.Threading.Tasks.PaddingFor32 = {}
---@alias CS.System.Threading.Tasks.PaddingFor32 System.Threading.Tasks.PaddingFor32
CS.System.Threading.Tasks.PaddingFor32 = System.Threading.Tasks.PaddingFor32


---@class System.Threading.Tasks.TaskStatus
---@field Created System.Threading.Tasks.TaskStatus
---@field WaitingForActivation System.Threading.Tasks.TaskStatus
---@field WaitingToRun System.Threading.Tasks.TaskStatus
---@field Running System.Threading.Tasks.TaskStatus
---@field WaitingForChildrenToComplete System.Threading.Tasks.TaskStatus
---@field RanToCompletion System.Threading.Tasks.TaskStatus
---@field Canceled System.Threading.Tasks.TaskStatus
---@field Faulted System.Threading.Tasks.TaskStatus
System.Threading.Tasks.TaskStatus = {}
---@alias CS.System.Threading.Tasks.TaskStatus System.Threading.Tasks.TaskStatus
CS.System.Threading.Tasks.TaskStatus = System.Threading.Tasks.TaskStatus


---@class System.Threading.Tasks.Task : System.Object
---@field CurrentId System.Nullable
---@field Factory System.Threading.Tasks.TaskFactory
---@field CompletedTask System.Threading.Tasks.Task
---@field Id number
---@field Exception System.AggregateException
---@field Status System.Threading.Tasks.TaskStatus
---@field IsCanceled boolean
---@field IsCompleted boolean
---@field IsCompletedSuccessfully boolean
---@field CreationOptions System.Threading.Tasks.TaskCreationOptions
---@field AsyncState System.Object
---@field IsFaulted boolean
System.Threading.Tasks.Task = {}
---@alias CS.System.Threading.Tasks.Task System.Threading.Tasks.Task
CS.System.Threading.Tasks.Task = System.Threading.Tasks.Task

---@overload fun(action: System.Action) : System.Threading.Tasks.Task
---@overload fun(action: System.Action, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(action: System.Action, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@overload fun(action: System.Action, cancellationToken: System.Threading.CancellationToken, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@overload fun(action: System.Action, state: System.Object) : System.Threading.Tasks.Task
---@overload fun(action: System.Action, state: System.Object, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(action: System.Action, state: System.Object, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@param action System.Action
---@param state System.Object
---@param cancellationToken System.Threading.CancellationToken
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.New(action, state, cancellationToken, creationOptions) end
---@return System.Runtime.CompilerServices.YieldAwaitable
function System.Threading.Tasks.Task.Yield() end
---@overload fun(tasks: System.Threading.Tasks.Task[])
---@overload fun(tasks: System.Threading.Tasks.Task[], timeout: System.TimeSpan) : boolean
---@overload fun(tasks: System.Threading.Tasks.Task[], millisecondsTimeout: number) : boolean
---@overload fun(tasks: System.Threading.Tasks.Task[], cancellationToken: System.Threading.CancellationToken)
---@param tasks System.Threading.Tasks.Task[]
---@param millisecondsTimeout number
---@param cancellationToken System.Threading.CancellationToken
---@return boolean
function System.Threading.Tasks.Task.WaitAll(tasks, millisecondsTimeout, cancellationToken) end
---@overload fun(tasks: System.Threading.Tasks.Task[]) : number
---@overload fun(tasks: System.Threading.Tasks.Task[], timeout: System.TimeSpan) : number
---@overload fun(tasks: System.Threading.Tasks.Task[], cancellationToken: System.Threading.CancellationToken) : number
---@overload fun(tasks: System.Threading.Tasks.Task[], millisecondsTimeout: number) : number
---@param tasks System.Threading.Tasks.Task[]
---@param millisecondsTimeout number
---@param cancellationToken System.Threading.CancellationToken
---@return number
function System.Threading.Tasks.Task.WaitAny(tasks, millisecondsTimeout, cancellationToken) end
---@param exception System.Exception
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.FromException(exception) end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.FromCanceled(cancellationToken) end
---@overload fun(action: System.Action) : System.Threading.Tasks.Task
---@overload fun(action: System.Action, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(_function: System.Func) : System.Threading.Tasks.Task
---@param _function System.Func
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.Run(_function, cancellationToken) end
---@overload fun(delay: System.TimeSpan) : System.Threading.Tasks.Task
---@overload fun(delay: System.TimeSpan, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(millisecondsDelay: number) : System.Threading.Tasks.Task
---@param millisecondsDelay number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.Delay(millisecondsDelay, cancellationToken) end
---@overload fun(tasks: System.Collections.Generic.IEnumerable) : System.Threading.Tasks.Task
---@param tasks System.Threading.Tasks.Task[]
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.WhenAll(tasks) end
---@overload fun(tasks: System.Threading.Tasks.Task[]) : System.Threading.Tasks.Task
---@param tasks System.Collections.Generic.IEnumerable
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task.WhenAny(tasks) end
---@overload fun()
---@param scheduler System.Threading.Tasks.TaskScheduler
function System.Threading.Tasks.Task:Start(scheduler) end
---@overload fun()
---@param scheduler System.Threading.Tasks.TaskScheduler
function System.Threading.Tasks.Task:RunSynchronously(scheduler) end
function System.Threading.Tasks.Task:Dispose() end
---@return System.Runtime.CompilerServices.TaskAwaiter
function System.Threading.Tasks.Task:GetAwaiter() end
---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable
function System.Threading.Tasks.Task:ConfigureAwait(continueOnCapturedContext) end
---@overload fun()
---@overload fun(self: System.Threading.Tasks.Task, timeout: System.TimeSpan) : boolean
---@overload fun(self: System.Threading.Tasks.Task, cancellationToken: System.Threading.CancellationToken)
---@overload fun(self: System.Threading.Tasks.Task, millisecondsTimeout: number) : boolean
---@param millisecondsTimeout number
---@param cancellationToken System.Threading.CancellationToken
---@return boolean
function System.Threading.Tasks.Task:Wait(millisecondsTimeout, cancellationToken) end
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, cancellationToken: System.Threading.CancellationToken, continuationOptions: System.Threading.Tasks.TaskContinuationOptions, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, state: System.Object) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, state: System.Object, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, state: System.Object, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.Task, continuationAction: System.Action, state: System.Object, continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task
---@param continuationAction System.Action
---@param state System.Object
---@param cancellationToken System.Threading.CancellationToken
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:ContinueWith(continuationAction, state, cancellationToken, continuationOptions, scheduler) end
---@param e System.Threading.ThreadAbortException
function System.Threading.Tasks.Task:MarkAborted(e) end
---@return System.Threading.Tasks.ForceAsyncAwaiter
function System.Threading.Tasks.Task:ForceAsync() end
---@return boolean
function System.Threading.Tasks.Task:IsSuccess() end
---@param func System.Action
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:CallVoidFuncWhenFinish(func) end
---@param ret boolean
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:ReturnTaskBoolWhenFinish(ret) end
---@param ret boolean
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:_ReturnTaskBoolWhenFinish(ret) end
---@param func System.Func
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:CallTaskFuncWhenFinish(func) end
---@param func System.Func
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.Task:CallBoolTaskFuncWhenFinish(func) end
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Threading.Tasks.Task:AsAsyncResult(callback, state) end
---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable
function System.Threading.Tasks.Task:SuppressContextFlow() end
---@return System.Runtime.CompilerServices.ConfiguredTaskAwaitable
function System.Threading.Tasks.Task:ContinueOnCapturedContextFlow() end
function System.Threading.Tasks.Task:Wait() end
---@param millisecondsTimeout number
---@return boolean
function System.Threading.Tasks.Task:Wait(millisecondsTimeout) end
---@param timeout System.TimeSpan
---@return boolean
function System.Threading.Tasks.Task:Wait(timeout) end
---@param timeout System.TimeSpan
---@param exceptionConverter System.Action
---@param operationType string
function System.Threading.Tasks.Task:Wait(timeout, exceptionConverter, operationType) end

---@class System.Threading.Tasks.Task.ContingentProperties : System.Object
System.Threading.Tasks.Task.ContingentProperties = {}
---@alias CS.System.Threading.Tasks.Task.ContingentProperties System.Threading.Tasks.Task.ContingentProperties
CS.System.Threading.Tasks.Task.ContingentProperties = System.Threading.Tasks.Task.ContingentProperties

---@return System.Threading.Tasks.Task.ContingentProperties
function System.Threading.Tasks.Task.ContingentProperties.New() end

---@class System.Threading.Tasks.Task.SetOnInvokeMres : System.Threading.ManualResetEventSlim
---@field InvokeMayRunArbitraryCode boolean
System.Threading.Tasks.Task.SetOnInvokeMres = {}
---@alias CS.System.Threading.Tasks.Task.SetOnInvokeMres System.Threading.Tasks.Task.SetOnInvokeMres
CS.System.Threading.Tasks.Task.SetOnInvokeMres = System.Threading.Tasks.Task.SetOnInvokeMres

---@param completingTask System.Threading.Tasks.Task
function System.Threading.Tasks.Task.SetOnInvokeMres:Invoke(completingTask) end

---@class System.Threading.Tasks.Task.SetOnCountdownMres : System.Threading.ManualResetEventSlim
---@field InvokeMayRunArbitraryCode boolean
System.Threading.Tasks.Task.SetOnCountdownMres = {}
---@alias CS.System.Threading.Tasks.Task.SetOnCountdownMres System.Threading.Tasks.Task.SetOnCountdownMres
CS.System.Threading.Tasks.Task.SetOnCountdownMres = System.Threading.Tasks.Task.SetOnCountdownMres

---@param completingTask System.Threading.Tasks.Task
function System.Threading.Tasks.Task.SetOnCountdownMres:Invoke(completingTask) end

---@class System.Threading.Tasks.Task.DelayPromise : System.Threading.Tasks.Task
---@field Result System.Threading.Tasks.Task.DelayPromise -- infered from System.Threading.Tasks.Task`1[System.Threading.Tasks.VoidTaskResult]
System.Threading.Tasks.Task.DelayPromise = {}
---@alias CS.System.Threading.Tasks.Task.DelayPromise System.Threading.Tasks.Task.DelayPromise
CS.System.Threading.Tasks.Task.DelayPromise = System.Threading.Tasks.Task.DelayPromise


---@class System.Threading.Tasks.Task.WhenAllPromise : System.Threading.Tasks.Task
---@field InvokeMayRunArbitraryCode boolean
---@field Result System.Threading.Tasks.Task.WhenAllPromise -- infered from System.Threading.Tasks.Task`1[System.Threading.Tasks.VoidTaskResult]
System.Threading.Tasks.Task.WhenAllPromise = {}
---@alias CS.System.Threading.Tasks.Task.WhenAllPromise System.Threading.Tasks.Task.WhenAllPromise
CS.System.Threading.Tasks.Task.WhenAllPromise = System.Threading.Tasks.Task.WhenAllPromise

---@param ignored System.Threading.Tasks.Task
function System.Threading.Tasks.Task.WhenAllPromise:Invoke(ignored) end

---@class System.Threading.Tasks.Task.WhenAllPromise : System.Threading.Tasks.Task[T[]]
---@field InvokeMayRunArbitraryCode boolean
System.Threading.Tasks.Task.WhenAllPromise = {}
---@alias CS.System.Threading.Tasks.Task.WhenAllPromise System.Threading.Tasks.Task.WhenAllPromise
CS.System.Threading.Tasks.Task.WhenAllPromise = System.Threading.Tasks.Task.WhenAllPromise

---@param ignored System.Threading.Tasks.Task
function System.Threading.Tasks.Task.WhenAllPromise:Invoke(ignored) end

---@class System.Threading.Tasks.CompletionActionInvoker : System.Object
System.Threading.Tasks.CompletionActionInvoker = {}
---@alias CS.System.Threading.Tasks.CompletionActionInvoker System.Threading.Tasks.CompletionActionInvoker
CS.System.Threading.Tasks.CompletionActionInvoker = System.Threading.Tasks.CompletionActionInvoker

---@param e System.Threading.ThreadAbortException
function System.Threading.Tasks.CompletionActionInvoker:MarkAborted(e) end

---@class System.Threading.Tasks.SystemThreadingTasks_TaskDebugView : System.Object
---@field AsyncState System.Object
---@field CreationOptions System.Threading.Tasks.TaskCreationOptions
---@field Exception System.Exception
---@field Id number
---@field CancellationPending boolean
---@field Status System.Threading.Tasks.TaskStatus
System.Threading.Tasks.SystemThreadingTasks_TaskDebugView = {}
---@alias CS.System.Threading.Tasks.SystemThreadingTasks_TaskDebugView System.Threading.Tasks.SystemThreadingTasks_TaskDebugView
CS.System.Threading.Tasks.SystemThreadingTasks_TaskDebugView = System.Threading.Tasks.SystemThreadingTasks_TaskDebugView

---@param task System.Threading.Tasks.Task
---@return System.Threading.Tasks.SystemThreadingTasks_TaskDebugView
function System.Threading.Tasks.SystemThreadingTasks_TaskDebugView.New(task) end

---@class System.Threading.Tasks.TaskCreationOptions
---@field None System.Threading.Tasks.TaskCreationOptions
---@field PreferFairness System.Threading.Tasks.TaskCreationOptions
---@field LongRunning System.Threading.Tasks.TaskCreationOptions
---@field AttachedToParent System.Threading.Tasks.TaskCreationOptions
---@field DenyChildAttach System.Threading.Tasks.TaskCreationOptions
---@field HideScheduler System.Threading.Tasks.TaskCreationOptions
---@field RunContinuationsAsynchronously System.Threading.Tasks.TaskCreationOptions
System.Threading.Tasks.TaskCreationOptions = {}
---@alias CS.System.Threading.Tasks.TaskCreationOptions System.Threading.Tasks.TaskCreationOptions
CS.System.Threading.Tasks.TaskCreationOptions = System.Threading.Tasks.TaskCreationOptions


---@class System.Threading.Tasks.InternalTaskOptions
---@field None System.Threading.Tasks.InternalTaskOptions
---@field InternalOptionsMask System.Threading.Tasks.InternalTaskOptions
---@field ContinuationTask System.Threading.Tasks.InternalTaskOptions
---@field PromiseTask System.Threading.Tasks.InternalTaskOptions
---@field LazyCancellation System.Threading.Tasks.InternalTaskOptions
---@field QueuedByRuntime System.Threading.Tasks.InternalTaskOptions
---@field DoNotDispose System.Threading.Tasks.InternalTaskOptions
System.Threading.Tasks.InternalTaskOptions = {}
---@alias CS.System.Threading.Tasks.InternalTaskOptions System.Threading.Tasks.InternalTaskOptions
CS.System.Threading.Tasks.InternalTaskOptions = System.Threading.Tasks.InternalTaskOptions


---@class System.Threading.Tasks.TaskContinuationOptions
---@field None System.Threading.Tasks.TaskContinuationOptions
---@field PreferFairness System.Threading.Tasks.TaskContinuationOptions
---@field LongRunning System.Threading.Tasks.TaskContinuationOptions
---@field AttachedToParent System.Threading.Tasks.TaskContinuationOptions
---@field DenyChildAttach System.Threading.Tasks.TaskContinuationOptions
---@field HideScheduler System.Threading.Tasks.TaskContinuationOptions
---@field LazyCancellation System.Threading.Tasks.TaskContinuationOptions
---@field RunContinuationsAsynchronously System.Threading.Tasks.TaskContinuationOptions
---@field NotOnRanToCompletion System.Threading.Tasks.TaskContinuationOptions
---@field NotOnFaulted System.Threading.Tasks.TaskContinuationOptions
---@field NotOnCanceled System.Threading.Tasks.TaskContinuationOptions
---@field OnlyOnRanToCompletion System.Threading.Tasks.TaskContinuationOptions
---@field OnlyOnFaulted System.Threading.Tasks.TaskContinuationOptions
---@field OnlyOnCanceled System.Threading.Tasks.TaskContinuationOptions
---@field ExecuteSynchronously System.Threading.Tasks.TaskContinuationOptions
System.Threading.Tasks.TaskContinuationOptions = {}
---@alias CS.System.Threading.Tasks.TaskContinuationOptions System.Threading.Tasks.TaskContinuationOptions
CS.System.Threading.Tasks.TaskContinuationOptions = System.Threading.Tasks.TaskContinuationOptions


---@class System.Threading.Tasks.StackGuard : System.Object
System.Threading.Tasks.StackGuard = {}
---@alias CS.System.Threading.Tasks.StackGuard System.Threading.Tasks.StackGuard
CS.System.Threading.Tasks.StackGuard = System.Threading.Tasks.StackGuard

---@return System.Threading.Tasks.StackGuard
function System.Threading.Tasks.StackGuard.New() end

---@class System.Threading.Tasks.VoidTaskResult : System.ValueType
System.Threading.Tasks.VoidTaskResult = {}
---@alias CS.System.Threading.Tasks.VoidTaskResult System.Threading.Tasks.VoidTaskResult
CS.System.Threading.Tasks.VoidTaskResult = System.Threading.Tasks.VoidTaskResult


---@class System.Threading.Tasks.ITaskCompletionAction
---@field InvokeMayRunArbitraryCode boolean
System.Threading.Tasks.ITaskCompletionAction = {}
---@alias CS.System.Threading.Tasks.ITaskCompletionAction System.Threading.Tasks.ITaskCompletionAction
CS.System.Threading.Tasks.ITaskCompletionAction = System.Threading.Tasks.ITaskCompletionAction

---@param completingTask System.Threading.Tasks.Task
function System.Threading.Tasks.ITaskCompletionAction:Invoke(completingTask) end

---@class System.Threading.Tasks.UnwrapPromise : System.Threading.Tasks.Task[TResult]
---@field InvokeMayRunArbitraryCode boolean
System.Threading.Tasks.UnwrapPromise = {}
---@alias CS.System.Threading.Tasks.UnwrapPromise System.Threading.Tasks.UnwrapPromise
CS.System.Threading.Tasks.UnwrapPromise = System.Threading.Tasks.UnwrapPromise

---@param outerTask System.Threading.Tasks.Task
---@param lookForOce boolean
---@return System.Threading.Tasks.UnwrapPromise
function System.Threading.Tasks.UnwrapPromise.New(outerTask, lookForOce) end
---@param completingTask System.Threading.Tasks.Task
function System.Threading.Tasks.UnwrapPromise:Invoke(completingTask) end

---@class System.Threading.Tasks.ContinuationTaskFromTask : System.Threading.Tasks.Task
System.Threading.Tasks.ContinuationTaskFromTask = {}
---@alias CS.System.Threading.Tasks.ContinuationTaskFromTask System.Threading.Tasks.ContinuationTaskFromTask
CS.System.Threading.Tasks.ContinuationTaskFromTask = System.Threading.Tasks.ContinuationTaskFromTask

---@param antecedent System.Threading.Tasks.Task
---@param action System.Delegate
---@param state System.Object
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param internalOptions System.Threading.Tasks.InternalTaskOptions
---@return System.Threading.Tasks.ContinuationTaskFromTask
function System.Threading.Tasks.ContinuationTaskFromTask.New(antecedent, action, state, creationOptions, internalOptions) end

---@class System.Threading.Tasks.ContinuationResultTaskFromTask : System.Threading.Tasks.Task[TResult]
System.Threading.Tasks.ContinuationResultTaskFromTask = {}
---@alias CS.System.Threading.Tasks.ContinuationResultTaskFromTask System.Threading.Tasks.ContinuationResultTaskFromTask
CS.System.Threading.Tasks.ContinuationResultTaskFromTask = System.Threading.Tasks.ContinuationResultTaskFromTask

---@param antecedent System.Threading.Tasks.Task
---@param _function System.Delegate
---@param state System.Object
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param internalOptions System.Threading.Tasks.InternalTaskOptions
---@return System.Threading.Tasks.ContinuationResultTaskFromTask
function System.Threading.Tasks.ContinuationResultTaskFromTask.New(antecedent, _function, state, creationOptions, internalOptions) end

---@class System.Threading.Tasks.ContinuationTaskFromResultTask : System.Threading.Tasks.Task
System.Threading.Tasks.ContinuationTaskFromResultTask = {}
---@alias CS.System.Threading.Tasks.ContinuationTaskFromResultTask System.Threading.Tasks.ContinuationTaskFromResultTask
CS.System.Threading.Tasks.ContinuationTaskFromResultTask = System.Threading.Tasks.ContinuationTaskFromResultTask

---@param antecedent System.Threading.Tasks.Task[TAntecedentResult]
---@param action System.Delegate
---@param state System.Object
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param internalOptions System.Threading.Tasks.InternalTaskOptions
---@return System.Threading.Tasks.ContinuationTaskFromResultTask
function System.Threading.Tasks.ContinuationTaskFromResultTask.New(antecedent, action, state, creationOptions, internalOptions) end

---@class System.Threading.Tasks.ContinuationResultTaskFromResultTask : System.Threading.Tasks.Task[TResult]
System.Threading.Tasks.ContinuationResultTaskFromResultTask = {}
---@alias CS.System.Threading.Tasks.ContinuationResultTaskFromResultTask System.Threading.Tasks.ContinuationResultTaskFromResultTask
CS.System.Threading.Tasks.ContinuationResultTaskFromResultTask = System.Threading.Tasks.ContinuationResultTaskFromResultTask

---@param antecedent System.Threading.Tasks.Task[TAntecedentResult]
---@param _function System.Delegate
---@param state System.Object
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param internalOptions System.Threading.Tasks.InternalTaskOptions
---@return System.Threading.Tasks.ContinuationResultTaskFromResultTask
function System.Threading.Tasks.ContinuationResultTaskFromResultTask.New(antecedent, _function, state, creationOptions, internalOptions) end

---@class System.Threading.Tasks.TaskContinuation : System.Object
System.Threading.Tasks.TaskContinuation = {}
---@alias CS.System.Threading.Tasks.TaskContinuation System.Threading.Tasks.TaskContinuation
CS.System.Threading.Tasks.TaskContinuation = System.Threading.Tasks.TaskContinuation


---@class System.Threading.Tasks.StandardTaskContinuation : System.Threading.Tasks.TaskContinuation
System.Threading.Tasks.StandardTaskContinuation = {}
---@alias CS.System.Threading.Tasks.StandardTaskContinuation System.Threading.Tasks.StandardTaskContinuation
CS.System.Threading.Tasks.StandardTaskContinuation = System.Threading.Tasks.StandardTaskContinuation


---@class System.Threading.Tasks.SynchronizationContextAwaitTaskContinuation : System.Threading.Tasks.AwaitTaskContinuation
System.Threading.Tasks.SynchronizationContextAwaitTaskContinuation = {}
---@alias CS.System.Threading.Tasks.SynchronizationContextAwaitTaskContinuation System.Threading.Tasks.SynchronizationContextAwaitTaskContinuation
CS.System.Threading.Tasks.SynchronizationContextAwaitTaskContinuation = System.Threading.Tasks.SynchronizationContextAwaitTaskContinuation


---@class System.Threading.Tasks.TaskSchedulerAwaitTaskContinuation : System.Threading.Tasks.AwaitTaskContinuation
System.Threading.Tasks.TaskSchedulerAwaitTaskContinuation = {}
---@alias CS.System.Threading.Tasks.TaskSchedulerAwaitTaskContinuation System.Threading.Tasks.TaskSchedulerAwaitTaskContinuation
CS.System.Threading.Tasks.TaskSchedulerAwaitTaskContinuation = System.Threading.Tasks.TaskSchedulerAwaitTaskContinuation


---@class System.Threading.Tasks.AwaitTaskContinuation : System.Threading.Tasks.TaskContinuation
System.Threading.Tasks.AwaitTaskContinuation = {}
---@alias CS.System.Threading.Tasks.AwaitTaskContinuation System.Threading.Tasks.AwaitTaskContinuation
CS.System.Threading.Tasks.AwaitTaskContinuation = System.Threading.Tasks.AwaitTaskContinuation

---@param e System.Threading.ThreadAbortException
function System.Threading.Tasks.AwaitTaskContinuation:MarkAborted(e) end

---@class System.Threading.Tasks.TaskExceptionHolder : System.Object
System.Threading.Tasks.TaskExceptionHolder = {}
---@alias CS.System.Threading.Tasks.TaskExceptionHolder System.Threading.Tasks.TaskExceptionHolder
CS.System.Threading.Tasks.TaskExceptionHolder = System.Threading.Tasks.TaskExceptionHolder


---@class System.Threading.Tasks.TaskFactory : System.Object
---@field CancellationToken System.Threading.CancellationToken
---@field Scheduler System.Threading.Tasks.TaskScheduler
---@field CreationOptions System.Threading.Tasks.TaskCreationOptions
---@field ContinuationOptions System.Threading.Tasks.TaskContinuationOptions
System.Threading.Tasks.TaskFactory = {}
---@alias CS.System.Threading.Tasks.TaskFactory System.Threading.Tasks.TaskFactory
CS.System.Threading.Tasks.TaskFactory = System.Threading.Tasks.TaskFactory

---@overload fun() : System.Threading.Tasks.TaskFactory
---@overload fun(cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.TaskFactory
---@overload fun(scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.TaskFactory
---@overload fun(creationOptions: System.Threading.Tasks.TaskCreationOptions, continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.TaskFactory
---@param cancellationToken System.Threading.CancellationToken
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.TaskFactory
function System.Threading.Tasks.TaskFactory.New(cancellationToken, creationOptions, continuationOptions, scheduler) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, action: System.Action) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, action: System.Action, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, action: System.Action, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, action: System.Action, cancellationToken: System.Threading.CancellationToken, creationOptions: System.Threading.Tasks.TaskCreationOptions, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, action: System.Action, state: System.Object) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, action: System.Action, state: System.Object, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, action: System.Action, state: System.Object, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@param action System.Action
---@param state System.Object
---@param cancellationToken System.Threading.CancellationToken
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:StartNew(action, state, cancellationToken, creationOptions, scheduler) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, asyncResult: System.IAsyncResult, endMethod: System.Action) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, asyncResult: System.IAsyncResult, endMethod: System.Action, creationOptions: System.Threading.Tasks.TaskCreationOptions) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, asyncResult: System.IAsyncResult, endMethod: System.Action, creationOptions: System.Threading.Tasks.TaskCreationOptions, scheduler: System.Threading.Tasks.TaskScheduler) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, beginMethod: System.Func, endMethod: System.Action, state: System.Object) : System.Threading.Tasks.Task
---@param beginMethod System.Func
---@param endMethod System.Action
---@param state System.Object
---@param creationOptions System.Threading.Tasks.TaskCreationOptions
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:FromAsync(beginMethod, endMethod, state, creationOptions) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationAction: System.Action) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationAction: System.Action, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationAction: System.Action, continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task
---@param tasks System.Threading.Tasks.Task[]
---@param continuationAction System.Action
---@param cancellationToken System.Threading.CancellationToken
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:ContinueWhenAll(tasks, continuationAction, cancellationToken, continuationOptions, scheduler) end
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationAction: System.Action) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationAction: System.Action, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@overload fun(self: System.Threading.Tasks.TaskFactory, tasks: System.Threading.Tasks.Task[], continuationAction: System.Action, continuationOptions: System.Threading.Tasks.TaskContinuationOptions) : System.Threading.Tasks.Task
---@param tasks System.Threading.Tasks.Task[]
---@param continuationAction System.Action
---@param cancellationToken System.Threading.CancellationToken
---@param continuationOptions System.Threading.Tasks.TaskContinuationOptions
---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory:ContinueWhenAny(tasks, continuationAction, cancellationToken, continuationOptions, scheduler) end

---@class System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise : System.Threading.Tasks.Task
---@field InvokeMayRunArbitraryCode boolean
---@field Result System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise -- infered from System.Threading.Tasks.Task`1[System.Threading.Tasks.Task[]]
System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise = {}
---@alias CS.System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise
CS.System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise = System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise

---@param completingTask System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise:Invoke(completingTask) end

---@class System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise : System.Threading.Tasks.Task[System.Threading.Tasks.Task[T][]]
---@field InvokeMayRunArbitraryCode boolean
System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise = {}
---@alias CS.System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise
CS.System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise = System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise

---@param completingTask System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory.CompleteOnCountdownPromise:Invoke(completingTask) end

---@class System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise : System.Threading.Tasks.Task
---@field InvokeMayRunArbitraryCode boolean
---@field Result System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise -- infered from System.Threading.Tasks.Task`1[System.Threading.Tasks.Task]
System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise = {}
---@alias CS.System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise
CS.System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise = System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise

---@param tasks System.Collections.Generic.IList
---@return System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise
function System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise.New(tasks) end
---@param completingTask System.Threading.Tasks.Task
function System.Threading.Tasks.TaskFactory.CompleteOnInvokePromise:Invoke(completingTask) end

---@class System.Threading.Tasks.TaskScheduler : System.Object
---@field Default System.Threading.Tasks.TaskScheduler
---@field Current System.Threading.Tasks.TaskScheduler
---@field MaximumConcurrencyLevel number
---@field Id number
System.Threading.Tasks.TaskScheduler = {}
---@alias CS.System.Threading.Tasks.TaskScheduler System.Threading.Tasks.TaskScheduler
CS.System.Threading.Tasks.TaskScheduler = System.Threading.Tasks.TaskScheduler

---@return System.Threading.Tasks.TaskScheduler
function System.Threading.Tasks.TaskScheduler.FromCurrentSynchronizationContext() end
---@param func System.Func[TResult]
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task[TResult]
function System.Threading.Tasks.TaskScheduler:Post(func, cancellationToken) end

---@class System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView : System.Object
---@field Id number
---@field ScheduledTasks System.Collections.Generic.IEnumerable
System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView = {}
---@alias CS.System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView
CS.System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView = System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView

---@param scheduler System.Threading.Tasks.TaskScheduler
---@return System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView
function System.Threading.Tasks.TaskScheduler.SystemThreadingTasks_TaskSchedulerDebugView.New(scheduler) end

---@class System.Threading.Tasks.SynchronizationContextTaskScheduler : System.Threading.Tasks.TaskScheduler
---@field MaximumConcurrencyLevel number
System.Threading.Tasks.SynchronizationContextTaskScheduler = {}
---@alias CS.System.Threading.Tasks.SynchronizationContextTaskScheduler System.Threading.Tasks.SynchronizationContextTaskScheduler
CS.System.Threading.Tasks.SynchronizationContextTaskScheduler = System.Threading.Tasks.SynchronizationContextTaskScheduler


---@class System.Threading.Tasks.UnobservedTaskExceptionEventArgs : System.EventArgs
---@field Observed boolean
---@field Exception System.AggregateException
System.Threading.Tasks.UnobservedTaskExceptionEventArgs = {}
---@alias CS.System.Threading.Tasks.UnobservedTaskExceptionEventArgs System.Threading.Tasks.UnobservedTaskExceptionEventArgs
CS.System.Threading.Tasks.UnobservedTaskExceptionEventArgs = System.Threading.Tasks.UnobservedTaskExceptionEventArgs

---@param exception System.AggregateException
---@return System.Threading.Tasks.UnobservedTaskExceptionEventArgs
function System.Threading.Tasks.UnobservedTaskExceptionEventArgs.New(exception) end
function System.Threading.Tasks.UnobservedTaskExceptionEventArgs:SetObserved() end

---@class System.Threading.Tasks.ThreadPoolTaskScheduler : System.Threading.Tasks.TaskScheduler
System.Threading.Tasks.ThreadPoolTaskScheduler = {}
---@alias CS.System.Threading.Tasks.ThreadPoolTaskScheduler System.Threading.Tasks.ThreadPoolTaskScheduler
CS.System.Threading.Tasks.ThreadPoolTaskScheduler = System.Threading.Tasks.ThreadPoolTaskScheduler


---@class System.Threading.Tasks.CausalityTraceLevel
---@field Required System.Threading.Tasks.CausalityTraceLevel
---@field Important System.Threading.Tasks.CausalityTraceLevel
---@field Verbose System.Threading.Tasks.CausalityTraceLevel
System.Threading.Tasks.CausalityTraceLevel = {}
---@alias CS.System.Threading.Tasks.CausalityTraceLevel System.Threading.Tasks.CausalityTraceLevel
CS.System.Threading.Tasks.CausalityTraceLevel = System.Threading.Tasks.CausalityTraceLevel


---@class System.Threading.Tasks.AsyncCausalityStatus
---@field Started System.Threading.Tasks.AsyncCausalityStatus
---@field Completed System.Threading.Tasks.AsyncCausalityStatus
---@field Canceled System.Threading.Tasks.AsyncCausalityStatus
---@field Error System.Threading.Tasks.AsyncCausalityStatus
System.Threading.Tasks.AsyncCausalityStatus = {}
---@alias CS.System.Threading.Tasks.AsyncCausalityStatus System.Threading.Tasks.AsyncCausalityStatus
CS.System.Threading.Tasks.AsyncCausalityStatus = System.Threading.Tasks.AsyncCausalityStatus


---@class System.Threading.Tasks.CausalityRelation
---@field AssignDelegate System.Threading.Tasks.CausalityRelation
---@field Join System.Threading.Tasks.CausalityRelation
---@field Choice System.Threading.Tasks.CausalityRelation
---@field Cancel System.Threading.Tasks.CausalityRelation
---@field Error System.Threading.Tasks.CausalityRelation
System.Threading.Tasks.CausalityRelation = {}
---@alias CS.System.Threading.Tasks.CausalityRelation System.Threading.Tasks.CausalityRelation
CS.System.Threading.Tasks.CausalityRelation = System.Threading.Tasks.CausalityRelation


---@class System.Threading.Tasks.CausalitySynchronousWork
---@field CompletionNotification System.Threading.Tasks.CausalitySynchronousWork
---@field ProgressNotification System.Threading.Tasks.CausalitySynchronousWork
---@field Execution System.Threading.Tasks.CausalitySynchronousWork
System.Threading.Tasks.CausalitySynchronousWork = {}
---@alias CS.System.Threading.Tasks.CausalitySynchronousWork System.Threading.Tasks.CausalitySynchronousWork
CS.System.Threading.Tasks.CausalitySynchronousWork = System.Threading.Tasks.CausalitySynchronousWork


---@class System.Threading.Tasks.AsyncCausalityTracer : System.Object
System.Threading.Tasks.AsyncCausalityTracer = {}
---@alias CS.System.Threading.Tasks.AsyncCausalityTracer System.Threading.Tasks.AsyncCausalityTracer
CS.System.Threading.Tasks.AsyncCausalityTracer = System.Threading.Tasks.AsyncCausalityTracer


---@class System.Threading.Tasks.TaskAsyncEnumerableExtensions : System.Object
System.Threading.Tasks.TaskAsyncEnumerableExtensions = {}
---@alias CS.System.Threading.Tasks.TaskAsyncEnumerableExtensions System.Threading.Tasks.TaskAsyncEnumerableExtensions
CS.System.Threading.Tasks.TaskAsyncEnumerableExtensions = System.Threading.Tasks.TaskAsyncEnumerableExtensions

---@param source System.IAsyncDisposable
---@param continueOnCapturedContext boolean
---@return System.Runtime.CompilerServices.ConfiguredAsyncDisposable
function System.Threading.Tasks.TaskAsyncEnumerableExtensions.ConfigureAwait(source, continueOnCapturedContext) end

---@class System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
---@field None System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
---@field UseSchedulingContext System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
---@field FlowExecutionContext System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags = {}
---@alias CS.System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
CS.System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags = System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags


---@class System.Threading.Tasks.Sources.ValueTaskSourceStatus
---@field Pending System.Threading.Tasks.Sources.ValueTaskSourceStatus
---@field Succeeded System.Threading.Tasks.Sources.ValueTaskSourceStatus
---@field Faulted System.Threading.Tasks.Sources.ValueTaskSourceStatus
---@field Canceled System.Threading.Tasks.Sources.ValueTaskSourceStatus
System.Threading.Tasks.Sources.ValueTaskSourceStatus = {}
---@alias CS.System.Threading.Tasks.Sources.ValueTaskSourceStatus System.Threading.Tasks.Sources.ValueTaskSourceStatus
CS.System.Threading.Tasks.Sources.ValueTaskSourceStatus = System.Threading.Tasks.Sources.ValueTaskSourceStatus


---@class System.Threading.Tasks.Sources.IValueTaskSource
System.Threading.Tasks.Sources.IValueTaskSource = {}
---@alias CS.System.Threading.Tasks.Sources.IValueTaskSource System.Threading.Tasks.Sources.IValueTaskSource
CS.System.Threading.Tasks.Sources.IValueTaskSource = System.Threading.Tasks.Sources.IValueTaskSource

---@param token number
---@return System.Threading.Tasks.Sources.ValueTaskSourceStatus
function System.Threading.Tasks.Sources.IValueTaskSource:GetStatus(token) end
---@param continuation System.Action
---@param state System.Object
---@param token number
---@param flags System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
function System.Threading.Tasks.Sources.IValueTaskSource:OnCompleted(continuation, state, token, flags) end
---@param token number
function System.Threading.Tasks.Sources.IValueTaskSource:GetResult(token) end

---@class System.Threading.Tasks.Sources.IValueTaskSource
System.Threading.Tasks.Sources.IValueTaskSource = {}
---@alias CS.System.Threading.Tasks.Sources.IValueTaskSource System.Threading.Tasks.Sources.IValueTaskSource
CS.System.Threading.Tasks.Sources.IValueTaskSource = System.Threading.Tasks.Sources.IValueTaskSource

---@param token number
---@return System.Threading.Tasks.Sources.ValueTaskSourceStatus
function System.Threading.Tasks.Sources.IValueTaskSource:GetStatus(token) end
---@param continuation System.Action
---@param state System.Object
---@param token number
---@param flags System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
function System.Threading.Tasks.Sources.IValueTaskSource:OnCompleted(continuation, state, token, flags) end
---@param token number
---@return TResult
function System.Threading.Tasks.Sources.IValueTaskSource:GetResult(token) end

---@class System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore : System.ValueType
---@field RunContinuationsAsynchronously boolean
---@field Version number
System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore = {}
---@alias CS.System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore
CS.System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore = System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore

function System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore:Reset() end
---@param result TResult
function System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore:SetResult(result) end
---@param error System.Exception
function System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore:SetException(error) end
---@param token number
---@return System.Threading.Tasks.Sources.ValueTaskSourceStatus
function System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore:GetStatus(token) end
---@param token number
---@return TResult
function System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore:GetResult(token) end
---@param continuation System.Action
---@param state System.Object
---@param token number
---@param flags System.Threading.Tasks.Sources.ValueTaskSourceOnCompletedFlags
function System.Threading.Tasks.Sources.ManualResetValueTaskSourceCore:OnCompleted(continuation, state, token, flags) end

---@class System.Threading.Tasks.Sources.ManualResetValueTaskSourceCoreShared : System.Object
System.Threading.Tasks.Sources.ManualResetValueTaskSourceCoreShared = {}
---@alias CS.System.Threading.Tasks.Sources.ManualResetValueTaskSourceCoreShared System.Threading.Tasks.Sources.ManualResetValueTaskSourceCoreShared
CS.System.Threading.Tasks.Sources.ManualResetValueTaskSourceCoreShared = System.Threading.Tasks.Sources.ManualResetValueTaskSourceCoreShared


---@class System.Text.ASCIIEncoding : System.Text.Encoding
---@field IsSingleByte boolean
System.Text.ASCIIEncoding = {}
---@alias CS.System.Text.ASCIIEncoding System.Text.ASCIIEncoding
CS.System.Text.ASCIIEncoding = System.Text.ASCIIEncoding

---@return System.Text.ASCIIEncoding
function System.Text.ASCIIEncoding.New() end
---@overload fun(self: System.Text.ASCIIEncoding, chars: System.Char[], index: number, count: number) : number
---@overload fun(self: System.Text.ASCIIEncoding, chars: string) : number
---@param chars System.Char*
---@param count number
---@return number
function System.Text.ASCIIEncoding:GetByteCount(chars, count) end
---@overload fun(self: System.Text.ASCIIEncoding, chars: string, charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.ASCIIEncoding, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@return number
function System.Text.ASCIIEncoding:GetBytes(chars, charCount, bytes, byteCount) end
---@overload fun(self: System.Text.ASCIIEncoding, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte*
---@param count number
---@return number
function System.Text.ASCIIEncoding:GetCharCount(bytes, count) end
---@overload fun(self: System.Text.ASCIIEncoding, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@return number
function System.Text.ASCIIEncoding:GetChars(bytes, byteCount, chars, charCount) end
---@param bytes System.Byte[]
---@param byteIndex number
---@param byteCount number
---@return string
function System.Text.ASCIIEncoding:GetString(bytes, byteIndex, byteCount) end
---@param charCount number
---@return number
function System.Text.ASCIIEncoding:GetMaxByteCount(charCount) end
---@param byteCount number
---@return number
function System.Text.ASCIIEncoding:GetMaxCharCount(byteCount) end
---@return System.Text.Decoder
function System.Text.ASCIIEncoding:GetDecoder() end
---@return System.Text.Encoder
function System.Text.ASCIIEncoding:GetEncoder() end

---@class System.Text.ASCIIEncoding.ASCIIEncodingSealed : System.Text.ASCIIEncoding
System.Text.ASCIIEncoding.ASCIIEncodingSealed = {}
---@alias CS.System.Text.ASCIIEncoding.ASCIIEncodingSealed System.Text.ASCIIEncoding.ASCIIEncodingSealed
CS.System.Text.ASCIIEncoding.ASCIIEncodingSealed = System.Text.ASCIIEncoding.ASCIIEncodingSealed

---@return System.Text.ASCIIEncoding.ASCIIEncodingSealed
function System.Text.ASCIIEncoding.ASCIIEncodingSealed.New() end

---@class System.Text.Decoder : System.Object
---@field Fallback System.Text.DecoderFallback
---@field FallbackBuffer System.Text.DecoderFallbackBuffer
System.Text.Decoder = {}
---@alias CS.System.Text.Decoder System.Text.Decoder
CS.System.Text.Decoder = System.Text.Decoder

function System.Text.Decoder:Reset() end
---@overload fun(self: System.Text.Decoder, bytes: System.Byte[], index: number, count: number) : number
---@overload fun(self: System.Text.Decoder, bytes: System.Byte[], index: number, count: number, flush: boolean) : number
---@overload fun(self: System.Text.Decoder, bytes: System.Byte*, count: number, flush: boolean) : number
---@param bytes System.ReadOnlySpan
---@param flush boolean
---@return number
function System.Text.Decoder:GetCharCount(bytes, flush) end
---@overload fun(self: System.Text.Decoder, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@overload fun(self: System.Text.Decoder, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number, flush: boolean) : number
---@overload fun(self: System.Text.Decoder, bytes: System.Byte*, byteCount: number, chars: System.Char*, charCount: number, flush: boolean) : number
---@param bytes System.ReadOnlySpan
---@param chars System.Span
---@param flush boolean
---@return number
function System.Text.Decoder:GetChars(bytes, chars, flush) end
---@overload fun(self: System.Text.Decoder, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number, charCount: number, flush: boolean, out_bytesUsed: number, out_charsUsed: number, out_completed: boolean) : number, number, boolean
---@overload fun(self: System.Text.Decoder, bytes: System.Byte*, byteCount: number, chars: System.Char*, charCount: number, flush: boolean, out_bytesUsed: number, out_charsUsed: number, out_completed: boolean) : number, number, boolean
---@param bytes System.ReadOnlySpan
---@param chars System.Span
---@param flush boolean
---@param out_bytesUsed number
---@param out_charsUsed number
---@param out_completed boolean
---@return ,number,number,boolean
function System.Text.Decoder:Convert(bytes, chars, flush, out_bytesUsed, out_charsUsed, out_completed) end

---@class System.Text.InternalDecoderBestFitFallback : System.Text.DecoderFallback
---@field MaxCharCount number
System.Text.InternalDecoderBestFitFallback = {}
---@alias CS.System.Text.InternalDecoderBestFitFallback System.Text.InternalDecoderBestFitFallback
CS.System.Text.InternalDecoderBestFitFallback = System.Text.InternalDecoderBestFitFallback

---@return System.Text.DecoderFallbackBuffer
function System.Text.InternalDecoderBestFitFallback:CreateFallbackBuffer() end
---@param value System.Object
---@return boolean
function System.Text.InternalDecoderBestFitFallback:Equals(value) end
---@return number
function System.Text.InternalDecoderBestFitFallback:GetHashCode() end

---@class System.Text.InternalDecoderBestFitFallbackBuffer : System.Text.DecoderFallbackBuffer
---@field Remaining number
System.Text.InternalDecoderBestFitFallbackBuffer = {}
---@alias CS.System.Text.InternalDecoderBestFitFallbackBuffer System.Text.InternalDecoderBestFitFallbackBuffer
CS.System.Text.InternalDecoderBestFitFallbackBuffer = System.Text.InternalDecoderBestFitFallbackBuffer

---@param fallback System.Text.InternalDecoderBestFitFallback
---@return System.Text.InternalDecoderBestFitFallbackBuffer
function System.Text.InternalDecoderBestFitFallbackBuffer.New(fallback) end
---@param bytesUnknown System.Byte[]
---@param index number
---@return boolean
function System.Text.InternalDecoderBestFitFallbackBuffer:Fallback(bytesUnknown, index) end
---@return System.Char
function System.Text.InternalDecoderBestFitFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.InternalDecoderBestFitFallbackBuffer:MovePrevious() end
function System.Text.InternalDecoderBestFitFallbackBuffer:Reset() end

---@class System.Text.DecoderExceptionFallback : System.Text.DecoderFallback
---@field MaxCharCount number
System.Text.DecoderExceptionFallback = {}
---@alias CS.System.Text.DecoderExceptionFallback System.Text.DecoderExceptionFallback
CS.System.Text.DecoderExceptionFallback = System.Text.DecoderExceptionFallback

---@return System.Text.DecoderExceptionFallback
function System.Text.DecoderExceptionFallback.New() end
---@return System.Text.DecoderFallbackBuffer
function System.Text.DecoderExceptionFallback:CreateFallbackBuffer() end
---@param value System.Object
---@return boolean
function System.Text.DecoderExceptionFallback:Equals(value) end
---@return number
function System.Text.DecoderExceptionFallback:GetHashCode() end

---@class System.Text.DecoderExceptionFallbackBuffer : System.Text.DecoderFallbackBuffer
---@field Remaining number
System.Text.DecoderExceptionFallbackBuffer = {}
---@alias CS.System.Text.DecoderExceptionFallbackBuffer System.Text.DecoderExceptionFallbackBuffer
CS.System.Text.DecoderExceptionFallbackBuffer = System.Text.DecoderExceptionFallbackBuffer

---@return System.Text.DecoderExceptionFallbackBuffer
function System.Text.DecoderExceptionFallbackBuffer.New() end
---@param bytesUnknown System.Byte[]
---@param index number
---@return boolean
function System.Text.DecoderExceptionFallbackBuffer:Fallback(bytesUnknown, index) end
---@return System.Char
function System.Text.DecoderExceptionFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.DecoderExceptionFallbackBuffer:MovePrevious() end

---@class System.Text.DecoderFallbackException : System.ArgumentException
---@field BytesUnknown System.Byte[]
---@field Index number
System.Text.DecoderFallbackException = {}
---@alias CS.System.Text.DecoderFallbackException System.Text.DecoderFallbackException
CS.System.Text.DecoderFallbackException = System.Text.DecoderFallbackException

---@overload fun() : System.Text.DecoderFallbackException
---@overload fun(message: string) : System.Text.DecoderFallbackException
---@overload fun(message: string, innerException: System.Exception) : System.Text.DecoderFallbackException
---@param message string
---@param bytesUnknown System.Byte[]
---@param index number
---@return System.Text.DecoderFallbackException
function System.Text.DecoderFallbackException.New(message, bytesUnknown, index) end

---@class System.Text.DecoderFallback : System.Object
---@field ReplacementFallback System.Text.DecoderFallback
---@field ExceptionFallback System.Text.DecoderFallback
---@field MaxCharCount number
System.Text.DecoderFallback = {}
---@alias CS.System.Text.DecoderFallback System.Text.DecoderFallback
CS.System.Text.DecoderFallback = System.Text.DecoderFallback

---@return System.Text.DecoderFallbackBuffer
function System.Text.DecoderFallback:CreateFallbackBuffer() end

---@class System.Text.DecoderFallbackBuffer : System.Object
---@field Remaining number
System.Text.DecoderFallbackBuffer = {}
---@alias CS.System.Text.DecoderFallbackBuffer System.Text.DecoderFallbackBuffer
CS.System.Text.DecoderFallbackBuffer = System.Text.DecoderFallbackBuffer

---@param bytesUnknown System.Byte[]
---@param index number
---@return boolean
function System.Text.DecoderFallbackBuffer:Fallback(bytesUnknown, index) end
---@return System.Char
function System.Text.DecoderFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.DecoderFallbackBuffer:MovePrevious() end
function System.Text.DecoderFallbackBuffer:Reset() end

---@class System.Text.DecoderNLS : System.Text.Decoder
---@field MustFlush boolean
System.Text.DecoderNLS = {}
---@alias CS.System.Text.DecoderNLS System.Text.DecoderNLS
CS.System.Text.DecoderNLS = System.Text.DecoderNLS

function System.Text.DecoderNLS:Reset() end
---@overload fun(self: System.Text.DecoderNLS, bytes: System.Byte[], index: number, count: number) : number
---@overload fun(self: System.Text.DecoderNLS, bytes: System.Byte[], index: number, count: number, flush: boolean) : number
---@param bytes System.Byte*
---@param count number
---@param flush boolean
---@return number
function System.Text.DecoderNLS:GetCharCount(bytes, count, flush) end
---@overload fun(self: System.Text.DecoderNLS, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@overload fun(self: System.Text.DecoderNLS, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number, flush: boolean) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@param flush boolean
---@return number
function System.Text.DecoderNLS:GetChars(bytes, byteCount, chars, charCount, flush) end
---@overload fun(self: System.Text.DecoderNLS, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number, charCount: number, flush: boolean, out_bytesUsed: number, out_charsUsed: number, out_completed: boolean) : number, number, boolean
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@param flush boolean
---@param out_bytesUsed number
---@param out_charsUsed number
---@param out_completed boolean
---@return ,number,number,boolean
function System.Text.DecoderNLS:Convert(bytes, byteCount, chars, charCount, flush, out_bytesUsed, out_charsUsed, out_completed) end

---@class System.Text.DecoderReplacementFallback : System.Text.DecoderFallback
---@field DefaultString string
---@field MaxCharCount number
System.Text.DecoderReplacementFallback = {}
---@alias CS.System.Text.DecoderReplacementFallback System.Text.DecoderReplacementFallback
CS.System.Text.DecoderReplacementFallback = System.Text.DecoderReplacementFallback

---@overload fun() : System.Text.DecoderReplacementFallback
---@param replacement string
---@return System.Text.DecoderReplacementFallback
function System.Text.DecoderReplacementFallback.New(replacement) end
---@return System.Text.DecoderFallbackBuffer
function System.Text.DecoderReplacementFallback:CreateFallbackBuffer() end
---@param value System.Object
---@return boolean
function System.Text.DecoderReplacementFallback:Equals(value) end
---@return number
function System.Text.DecoderReplacementFallback:GetHashCode() end

---@class System.Text.DecoderReplacementFallbackBuffer : System.Text.DecoderFallbackBuffer
---@field Remaining number
System.Text.DecoderReplacementFallbackBuffer = {}
---@alias CS.System.Text.DecoderReplacementFallbackBuffer System.Text.DecoderReplacementFallbackBuffer
CS.System.Text.DecoderReplacementFallbackBuffer = System.Text.DecoderReplacementFallbackBuffer

---@param fallback System.Text.DecoderReplacementFallback
---@return System.Text.DecoderReplacementFallbackBuffer
function System.Text.DecoderReplacementFallbackBuffer.New(fallback) end
---@param bytesUnknown System.Byte[]
---@param index number
---@return boolean
function System.Text.DecoderReplacementFallbackBuffer:Fallback(bytesUnknown, index) end
---@return System.Char
function System.Text.DecoderReplacementFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.DecoderReplacementFallbackBuffer:MovePrevious() end
function System.Text.DecoderReplacementFallbackBuffer:Reset() end

---@class System.Text.Encoder : System.Object
---@field Fallback System.Text.EncoderFallback
---@field FallbackBuffer System.Text.EncoderFallbackBuffer
System.Text.Encoder = {}
---@alias CS.System.Text.Encoder System.Text.Encoder
CS.System.Text.Encoder = System.Text.Encoder

function System.Text.Encoder:Reset() end
---@overload fun(self: System.Text.Encoder, chars: System.Char[], index: number, count: number, flush: boolean) : number
---@overload fun(self: System.Text.Encoder, chars: System.Char*, count: number, flush: boolean) : number
---@param chars System.ReadOnlySpan
---@param flush boolean
---@return number
function System.Text.Encoder:GetByteCount(chars, flush) end
---@overload fun(self: System.Text.Encoder, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number, flush: boolean) : number
---@overload fun(self: System.Text.Encoder, chars: System.Char*, charCount: number, bytes: System.Byte*, byteCount: number, flush: boolean) : number
---@param chars System.ReadOnlySpan
---@param bytes System.Span
---@param flush boolean
---@return number
function System.Text.Encoder:GetBytes(chars, bytes, flush) end
---@overload fun(self: System.Text.Encoder, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number, byteCount: number, flush: boolean, out_charsUsed: number, out_bytesUsed: number, out_completed: boolean) : number, number, boolean
---@overload fun(self: System.Text.Encoder, chars: System.Char*, charCount: number, bytes: System.Byte*, byteCount: number, flush: boolean, out_charsUsed: number, out_bytesUsed: number, out_completed: boolean) : number, number, boolean
---@param chars System.ReadOnlySpan
---@param bytes System.Span
---@param flush boolean
---@param out_charsUsed number
---@param out_bytesUsed number
---@param out_completed boolean
---@return ,number,number,boolean
function System.Text.Encoder:Convert(chars, bytes, flush, out_charsUsed, out_bytesUsed, out_completed) end

---@class System.Text.InternalEncoderBestFitFallback : System.Text.EncoderFallback
---@field MaxCharCount number
System.Text.InternalEncoderBestFitFallback = {}
---@alias CS.System.Text.InternalEncoderBestFitFallback System.Text.InternalEncoderBestFitFallback
CS.System.Text.InternalEncoderBestFitFallback = System.Text.InternalEncoderBestFitFallback

---@return System.Text.EncoderFallbackBuffer
function System.Text.InternalEncoderBestFitFallback:CreateFallbackBuffer() end
---@param value System.Object
---@return boolean
function System.Text.InternalEncoderBestFitFallback:Equals(value) end
---@return number
function System.Text.InternalEncoderBestFitFallback:GetHashCode() end

---@class System.Text.InternalEncoderBestFitFallbackBuffer : System.Text.EncoderFallbackBuffer
---@field Remaining number
System.Text.InternalEncoderBestFitFallbackBuffer = {}
---@alias CS.System.Text.InternalEncoderBestFitFallbackBuffer System.Text.InternalEncoderBestFitFallbackBuffer
CS.System.Text.InternalEncoderBestFitFallbackBuffer = System.Text.InternalEncoderBestFitFallbackBuffer

---@param fallback System.Text.InternalEncoderBestFitFallback
---@return System.Text.InternalEncoderBestFitFallbackBuffer
function System.Text.InternalEncoderBestFitFallbackBuffer.New(fallback) end
---@overload fun(self: System.Text.InternalEncoderBestFitFallbackBuffer, charUnknown: System.Char, index: number) : boolean
---@param charUnknownHigh System.Char
---@param charUnknownLow System.Char
---@param index number
---@return boolean
function System.Text.InternalEncoderBestFitFallbackBuffer:Fallback(charUnknownHigh, charUnknownLow, index) end
---@return System.Char
function System.Text.InternalEncoderBestFitFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.InternalEncoderBestFitFallbackBuffer:MovePrevious() end
function System.Text.InternalEncoderBestFitFallbackBuffer:Reset() end

---@class System.Text.EncoderExceptionFallback : System.Text.EncoderFallback
---@field MaxCharCount number
System.Text.EncoderExceptionFallback = {}
---@alias CS.System.Text.EncoderExceptionFallback System.Text.EncoderExceptionFallback
CS.System.Text.EncoderExceptionFallback = System.Text.EncoderExceptionFallback

---@return System.Text.EncoderExceptionFallback
function System.Text.EncoderExceptionFallback.New() end
---@return System.Text.EncoderFallbackBuffer
function System.Text.EncoderExceptionFallback:CreateFallbackBuffer() end
---@param value System.Object
---@return boolean
function System.Text.EncoderExceptionFallback:Equals(value) end
---@return number
function System.Text.EncoderExceptionFallback:GetHashCode() end

---@class System.Text.EncoderExceptionFallbackBuffer : System.Text.EncoderFallbackBuffer
---@field Remaining number
System.Text.EncoderExceptionFallbackBuffer = {}
---@alias CS.System.Text.EncoderExceptionFallbackBuffer System.Text.EncoderExceptionFallbackBuffer
CS.System.Text.EncoderExceptionFallbackBuffer = System.Text.EncoderExceptionFallbackBuffer

---@return System.Text.EncoderExceptionFallbackBuffer
function System.Text.EncoderExceptionFallbackBuffer.New() end
---@overload fun(self: System.Text.EncoderExceptionFallbackBuffer, charUnknown: System.Char, index: number) : boolean
---@param charUnknownHigh System.Char
---@param charUnknownLow System.Char
---@param index number
---@return boolean
function System.Text.EncoderExceptionFallbackBuffer:Fallback(charUnknownHigh, charUnknownLow, index) end
---@return System.Char
function System.Text.EncoderExceptionFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.EncoderExceptionFallbackBuffer:MovePrevious() end

---@class System.Text.EncoderFallbackException : System.ArgumentException
---@field CharUnknown System.Char
---@field CharUnknownHigh System.Char
---@field CharUnknownLow System.Char
---@field Index number
System.Text.EncoderFallbackException = {}
---@alias CS.System.Text.EncoderFallbackException System.Text.EncoderFallbackException
CS.System.Text.EncoderFallbackException = System.Text.EncoderFallbackException

---@overload fun() : System.Text.EncoderFallbackException
---@overload fun(message: string) : System.Text.EncoderFallbackException
---@param message string
---@param innerException System.Exception
---@return System.Text.EncoderFallbackException
function System.Text.EncoderFallbackException.New(message, innerException) end
---@return boolean
function System.Text.EncoderFallbackException:IsUnknownSurrogate() end

---@class System.Text.EncoderFallback : System.Object
---@field ReplacementFallback System.Text.EncoderFallback
---@field ExceptionFallback System.Text.EncoderFallback
---@field MaxCharCount number
System.Text.EncoderFallback = {}
---@alias CS.System.Text.EncoderFallback System.Text.EncoderFallback
CS.System.Text.EncoderFallback = System.Text.EncoderFallback

---@return System.Text.EncoderFallbackBuffer
function System.Text.EncoderFallback:CreateFallbackBuffer() end

---@class System.Text.EncoderFallbackBuffer : System.Object
---@field Remaining number
System.Text.EncoderFallbackBuffer = {}
---@alias CS.System.Text.EncoderFallbackBuffer System.Text.EncoderFallbackBuffer
CS.System.Text.EncoderFallbackBuffer = System.Text.EncoderFallbackBuffer

---@overload fun(self: System.Text.EncoderFallbackBuffer, charUnknown: System.Char, index: number) : boolean
---@param charUnknownHigh System.Char
---@param charUnknownLow System.Char
---@param index number
---@return boolean
function System.Text.EncoderFallbackBuffer:Fallback(charUnknownHigh, charUnknownLow, index) end
---@return System.Char
function System.Text.EncoderFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.EncoderFallbackBuffer:MovePrevious() end
function System.Text.EncoderFallbackBuffer:Reset() end

---@class System.Text.EncoderNLS : System.Text.Encoder
---@field Encoding System.Text.Encoding
---@field MustFlush boolean
System.Text.EncoderNLS = {}
---@alias CS.System.Text.EncoderNLS System.Text.EncoderNLS
CS.System.Text.EncoderNLS = System.Text.EncoderNLS

function System.Text.EncoderNLS:Reset() end
---@overload fun(self: System.Text.EncoderNLS, chars: System.Char[], index: number, count: number, flush: boolean) : number
---@param chars System.Char*
---@param count number
---@param flush boolean
---@return number
function System.Text.EncoderNLS:GetByteCount(chars, count, flush) end
---@overload fun(self: System.Text.EncoderNLS, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number, flush: boolean) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@param flush boolean
---@return number
function System.Text.EncoderNLS:GetBytes(chars, charCount, bytes, byteCount, flush) end
---@overload fun(self: System.Text.EncoderNLS, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number, byteCount: number, flush: boolean, out_charsUsed: number, out_bytesUsed: number, out_completed: boolean) : number, number, boolean
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@param flush boolean
---@param out_charsUsed number
---@param out_bytesUsed number
---@param out_completed boolean
---@return ,number,number,boolean
function System.Text.EncoderNLS:Convert(chars, charCount, bytes, byteCount, flush, out_charsUsed, out_bytesUsed, out_completed) end

---@class System.Text.EncoderReplacementFallback : System.Text.EncoderFallback
---@field DefaultString string
---@field MaxCharCount number
System.Text.EncoderReplacementFallback = {}
---@alias CS.System.Text.EncoderReplacementFallback System.Text.EncoderReplacementFallback
CS.System.Text.EncoderReplacementFallback = System.Text.EncoderReplacementFallback

---@overload fun() : System.Text.EncoderReplacementFallback
---@param replacement string
---@return System.Text.EncoderReplacementFallback
function System.Text.EncoderReplacementFallback.New(replacement) end
---@return System.Text.EncoderFallbackBuffer
function System.Text.EncoderReplacementFallback:CreateFallbackBuffer() end
---@param value System.Object
---@return boolean
function System.Text.EncoderReplacementFallback:Equals(value) end
---@return number
function System.Text.EncoderReplacementFallback:GetHashCode() end

---@class System.Text.EncoderReplacementFallbackBuffer : System.Text.EncoderFallbackBuffer
---@field Remaining number
System.Text.EncoderReplacementFallbackBuffer = {}
---@alias CS.System.Text.EncoderReplacementFallbackBuffer System.Text.EncoderReplacementFallbackBuffer
CS.System.Text.EncoderReplacementFallbackBuffer = System.Text.EncoderReplacementFallbackBuffer

---@param fallback System.Text.EncoderReplacementFallback
---@return System.Text.EncoderReplacementFallbackBuffer
function System.Text.EncoderReplacementFallbackBuffer.New(fallback) end
---@overload fun(self: System.Text.EncoderReplacementFallbackBuffer, charUnknown: System.Char, index: number) : boolean
---@param charUnknownHigh System.Char
---@param charUnknownLow System.Char
---@param index number
---@return boolean
function System.Text.EncoderReplacementFallbackBuffer:Fallback(charUnknownHigh, charUnknownLow, index) end
---@return System.Char
function System.Text.EncoderReplacementFallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.EncoderReplacementFallbackBuffer:MovePrevious() end
function System.Text.EncoderReplacementFallbackBuffer:Reset() end

---@class System.Text.EncodingInfo : System.Object
---@field CodePage number
---@field Name string
---@field DisplayName string
System.Text.EncodingInfo = {}
---@alias CS.System.Text.EncodingInfo System.Text.EncodingInfo
CS.System.Text.EncodingInfo = System.Text.EncodingInfo

---@return System.Text.Encoding
function System.Text.EncodingInfo:GetEncoding() end
---@param value System.Object
---@return boolean
function System.Text.EncodingInfo:Equals(value) end
---@return number
function System.Text.EncodingInfo:GetHashCode() end

---@class System.Text.EncodingNLS : System.Text.Encoding
System.Text.EncodingNLS = {}
---@alias CS.System.Text.EncodingNLS System.Text.EncodingNLS
CS.System.Text.EncodingNLS = System.Text.EncodingNLS

---@overload fun(self: System.Text.EncodingNLS, chars: System.Char[], index: number, count: number) : number
---@overload fun(self: System.Text.EncodingNLS, s: string) : number
---@param chars System.Char*
---@param count number
---@return number
function System.Text.EncodingNLS:GetByteCount(chars, count) end
---@overload fun(self: System.Text.EncodingNLS, s: string, charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.EncodingNLS, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@return number
function System.Text.EncodingNLS:GetBytes(chars, charCount, bytes, byteCount) end
---@overload fun(self: System.Text.EncodingNLS, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte*
---@param count number
---@return number
function System.Text.EncodingNLS:GetCharCount(bytes, count) end
---@overload fun(self: System.Text.EncodingNLS, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@return number
function System.Text.EncodingNLS:GetChars(bytes, byteCount, chars, charCount) end
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return string
function System.Text.EncodingNLS:GetString(bytes, index, count) end
---@return System.Text.Decoder
function System.Text.EncodingNLS:GetDecoder() end
---@return System.Text.Encoder
function System.Text.EncodingNLS:GetEncoder() end

---@class System.Text.EncodingProvider : System.Object
System.Text.EncodingProvider = {}
---@alias CS.System.Text.EncodingProvider System.Text.EncodingProvider
CS.System.Text.EncodingProvider = System.Text.EncodingProvider

---@return System.Text.EncodingProvider
function System.Text.EncodingProvider.New() end
---@overload fun(self: System.Text.EncodingProvider, name: string) : System.Text.Encoding
---@overload fun(self: System.Text.EncodingProvider, codepage: number) : System.Text.Encoding
---@overload fun(self: System.Text.EncodingProvider, name: string, encoderFallback: System.Text.EncoderFallback, decoderFallback: System.Text.DecoderFallback) : System.Text.Encoding
---@param codepage number
---@param encoderFallback System.Text.EncoderFallback
---@param decoderFallback System.Text.DecoderFallback
---@return System.Text.Encoding
function System.Text.EncodingProvider:GetEncoding(codepage, encoderFallback, decoderFallback) end

---@class System.Text.Latin1Encoding : System.Text.EncodingNLS
---@field IsSingleByte boolean
System.Text.Latin1Encoding = {}
---@alias CS.System.Text.Latin1Encoding System.Text.Latin1Encoding
CS.System.Text.Latin1Encoding = System.Text.Latin1Encoding

---@return System.Text.Latin1Encoding
function System.Text.Latin1Encoding.New() end
---@param charCount number
---@return number
function System.Text.Latin1Encoding:GetMaxByteCount(charCount) end
---@param byteCount number
---@return number
function System.Text.Latin1Encoding:GetMaxCharCount(byteCount) end
---@param form System.Text.NormalizationForm
---@return boolean
function System.Text.Latin1Encoding:IsAlwaysNormalized(form) end

---@class System.Text.NormalizationForm
---@field FormC System.Text.NormalizationForm
---@field FormD System.Text.NormalizationForm
---@field FormKC System.Text.NormalizationForm
---@field FormKD System.Text.NormalizationForm
System.Text.NormalizationForm = {}
---@alias CS.System.Text.NormalizationForm System.Text.NormalizationForm
CS.System.Text.NormalizationForm = System.Text.NormalizationForm


---@class System.Text.StringBuilder : System.Object
---@field Capacity number
---@field MaxCapacity number
---@field Length number
---@field Chars System.Char
System.Text.StringBuilder = {}
---@alias CS.System.Text.StringBuilder System.Text.StringBuilder
CS.System.Text.StringBuilder = System.Text.StringBuilder

---@overload fun() : System.Text.StringBuilder
---@overload fun(capacity: number) : System.Text.StringBuilder
---@overload fun(value: string) : System.Text.StringBuilder
---@overload fun(value: string, capacity: number) : System.Text.StringBuilder
---@overload fun(value: string, startIndex: number, length: number, capacity: number) : System.Text.StringBuilder
---@param capacity number
---@param maxCapacity number
---@return System.Text.StringBuilder
function System.Text.StringBuilder.New(capacity, maxCapacity) end
---@param capacity number
---@return number
function System.Text.StringBuilder:EnsureCapacity(capacity) end
---@overload fun() : string
---@param startIndex number
---@param length number
---@return string
function System.Text.StringBuilder:ToString(startIndex, length) end
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Clear() end
---@overload fun(self: System.Text.StringBuilder, value: System.Char, repeatCount: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.Char[], startIndex: number, charCount: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: string) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: string, startIndex: number, count: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.Text.StringBuilder) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.Text.StringBuilder, startIndex: number, count: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: boolean) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.Char) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.Decimal) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.Object) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.Char[]) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, value: System.ReadOnlySpan) : System.Text.StringBuilder
---@param value System.Char*
---@param valueCount number
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Append(value, valueCount) end
---@overload fun() : System.Text.StringBuilder
---@param value string
---@return System.Text.StringBuilder
function System.Text.StringBuilder:AppendLine(value) end
---@overload fun(self: System.Text.StringBuilder, sourceIndex: number, destination: System.Char[], destinationIndex: number, count: number)
---@param sourceIndex number
---@param destination System.Span
---@param count number
function System.Text.StringBuilder:CopyTo(sourceIndex, destination, count) end
---@overload fun(self: System.Text.StringBuilder, index: number, value: string, count: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: string) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: boolean) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: System.Char) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: System.Char[]) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: System.Char[], startIndex: number, charCount: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: System.Decimal) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, index: number, value: System.Object) : System.Text.StringBuilder
---@param index number
---@param value System.ReadOnlySpan
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Insert(index, value) end
---@param startIndex number
---@param length number
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Remove(startIndex, length) end
---@overload fun(self: System.Text.StringBuilder, separator: string, values: System.Object[]) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, separator: string, values: System.String[]) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, separator: System.Char, values: System.Object[]) : System.Text.StringBuilder
---@param separator System.Char
---@param values System.String[]
---@return System.Text.StringBuilder
function System.Text.StringBuilder:AppendJoin(separator, values) end
---@overload fun(self: System.Text.StringBuilder, format: string, arg0: System.Object) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, format: string, arg0: System.Object, arg1: System.Object) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, format: string, args: System.Object[]) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, provider: System.IFormatProvider, format: string, arg0: System.Object) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, provider: System.IFormatProvider, format: string, arg0: System.Object, arg1: System.Object) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, provider: System.IFormatProvider, format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object) : System.Text.StringBuilder
---@param provider System.IFormatProvider
---@param format string
---@param args System.Object[]
---@return System.Text.StringBuilder
function System.Text.StringBuilder:AppendFormat(provider, format, args) end
---@overload fun(self: System.Text.StringBuilder, oldValue: string, newValue: string) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, oldValue: string, newValue: string, startIndex: number, count: number) : System.Text.StringBuilder
---@overload fun(self: System.Text.StringBuilder, oldChar: System.Char, newChar: System.Char) : System.Text.StringBuilder
---@param oldChar System.Char
---@param newChar System.Char
---@param startIndex number
---@param count number
---@return System.Text.StringBuilder
function System.Text.StringBuilder:Replace(oldChar, newChar, startIndex, count) end
---@overload fun(self: System.Text.StringBuilder, sb: System.Text.StringBuilder) : boolean
---@param span System.ReadOnlySpan
---@return boolean
function System.Text.StringBuilder:Equals(span) end
function System.Text.StringBuilder:Clear() end

---@class System.Text.StringBuilderCache : System.Object
System.Text.StringBuilderCache = {}
---@alias CS.System.Text.StringBuilderCache System.Text.StringBuilderCache
CS.System.Text.StringBuilderCache = System.Text.StringBuilderCache

---@param capacity number
---@return System.Text.StringBuilder
function System.Text.StringBuilderCache.Acquire(capacity) end
---@param sb System.Text.StringBuilder
function System.Text.StringBuilderCache.Release(sb) end
---@param sb System.Text.StringBuilder
---@return string
function System.Text.StringBuilderCache.GetStringAndRelease(sb) end

---@class System.Text.UTF32Encoding : System.Text.Encoding
---@field Preamble System.ReadOnlySpan
System.Text.UTF32Encoding = {}
---@alias CS.System.Text.UTF32Encoding System.Text.UTF32Encoding
CS.System.Text.UTF32Encoding = System.Text.UTF32Encoding

---@overload fun() : System.Text.UTF32Encoding
---@overload fun(bigEndian: boolean, byteOrderMark: boolean) : System.Text.UTF32Encoding
---@param bigEndian boolean
---@param byteOrderMark boolean
---@param throwOnInvalidCharacters boolean
---@return System.Text.UTF32Encoding
function System.Text.UTF32Encoding.New(bigEndian, byteOrderMark, throwOnInvalidCharacters) end
---@overload fun(self: System.Text.UTF32Encoding, chars: System.Char[], index: number, count: number) : number
---@overload fun(self: System.Text.UTF32Encoding, s: string) : number
---@param chars System.Char*
---@param count number
---@return number
function System.Text.UTF32Encoding:GetByteCount(chars, count) end
---@overload fun(self: System.Text.UTF32Encoding, s: string, charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.UTF32Encoding, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@return number
function System.Text.UTF32Encoding:GetBytes(chars, charCount, bytes, byteCount) end
---@overload fun(self: System.Text.UTF32Encoding, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte*
---@param count number
---@return number
function System.Text.UTF32Encoding:GetCharCount(bytes, count) end
---@overload fun(self: System.Text.UTF32Encoding, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@return number
function System.Text.UTF32Encoding:GetChars(bytes, byteCount, chars, charCount) end
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return string
function System.Text.UTF32Encoding:GetString(bytes, index, count) end
---@return System.Text.Decoder
function System.Text.UTF32Encoding:GetDecoder() end
---@return System.Text.Encoder
function System.Text.UTF32Encoding:GetEncoder() end
---@param charCount number
---@return number
function System.Text.UTF32Encoding:GetMaxByteCount(charCount) end
---@param byteCount number
---@return number
function System.Text.UTF32Encoding:GetMaxCharCount(byteCount) end
---@return System.Byte[]
function System.Text.UTF32Encoding:GetPreamble() end
---@param value System.Object
---@return boolean
function System.Text.UTF32Encoding:Equals(value) end
---@return number
function System.Text.UTF32Encoding:GetHashCode() end

---@class System.Text.UTF32Encoding.UTF32Decoder : System.Text.DecoderNLS
System.Text.UTF32Encoding.UTF32Decoder = {}
---@alias CS.System.Text.UTF32Encoding.UTF32Decoder System.Text.UTF32Encoding.UTF32Decoder
CS.System.Text.UTF32Encoding.UTF32Decoder = System.Text.UTF32Encoding.UTF32Decoder

---@param encoding System.Text.UTF32Encoding
---@return System.Text.UTF32Encoding.UTF32Decoder
function System.Text.UTF32Encoding.UTF32Decoder.New(encoding) end
function System.Text.UTF32Encoding.UTF32Decoder:Reset() end

---@class System.Text.UTF7Encoding : System.Text.Encoding
System.Text.UTF7Encoding = {}
---@alias CS.System.Text.UTF7Encoding System.Text.UTF7Encoding
CS.System.Text.UTF7Encoding = System.Text.UTF7Encoding

---@overload fun() : System.Text.UTF7Encoding
---@param allowOptionals boolean
---@return System.Text.UTF7Encoding
function System.Text.UTF7Encoding.New(allowOptionals) end
---@param value System.Object
---@return boolean
function System.Text.UTF7Encoding:Equals(value) end
---@return number
function System.Text.UTF7Encoding:GetHashCode() end
---@overload fun(self: System.Text.UTF7Encoding, chars: System.Char[], index: number, count: number) : number
---@overload fun(self: System.Text.UTF7Encoding, s: string) : number
---@param chars System.Char*
---@param count number
---@return number
function System.Text.UTF7Encoding:GetByteCount(chars, count) end
---@overload fun(self: System.Text.UTF7Encoding, s: string, charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.UTF7Encoding, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@return number
function System.Text.UTF7Encoding:GetBytes(chars, charCount, bytes, byteCount) end
---@overload fun(self: System.Text.UTF7Encoding, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte*
---@param count number
---@return number
function System.Text.UTF7Encoding:GetCharCount(bytes, count) end
---@overload fun(self: System.Text.UTF7Encoding, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@return number
function System.Text.UTF7Encoding:GetChars(bytes, byteCount, chars, charCount) end
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return string
function System.Text.UTF7Encoding:GetString(bytes, index, count) end
---@return System.Text.Decoder
function System.Text.UTF7Encoding:GetDecoder() end
---@return System.Text.Encoder
function System.Text.UTF7Encoding:GetEncoder() end
---@param charCount number
---@return number
function System.Text.UTF7Encoding:GetMaxByteCount(charCount) end
---@param byteCount number
---@return number
function System.Text.UTF7Encoding:GetMaxCharCount(byteCount) end

---@class System.Text.UTF7Encoding.Decoder : System.Text.DecoderNLS
System.Text.UTF7Encoding.Decoder = {}
---@alias CS.System.Text.UTF7Encoding.Decoder System.Text.UTF7Encoding.Decoder
CS.System.Text.UTF7Encoding.Decoder = System.Text.UTF7Encoding.Decoder

---@param encoding System.Text.UTF7Encoding
---@return System.Text.UTF7Encoding.Decoder
function System.Text.UTF7Encoding.Decoder.New(encoding) end
function System.Text.UTF7Encoding.Decoder:Reset() end

---@class System.Text.UTF7Encoding.Encoder : System.Text.EncoderNLS
System.Text.UTF7Encoding.Encoder = {}
---@alias CS.System.Text.UTF7Encoding.Encoder System.Text.UTF7Encoding.Encoder
CS.System.Text.UTF7Encoding.Encoder = System.Text.UTF7Encoding.Encoder

---@param encoding System.Text.UTF7Encoding
---@return System.Text.UTF7Encoding.Encoder
function System.Text.UTF7Encoding.Encoder.New(encoding) end
function System.Text.UTF7Encoding.Encoder:Reset() end

---@class System.Text.UTF7Encoding.DecoderUTF7Fallback : System.Text.DecoderFallback
---@field MaxCharCount number
System.Text.UTF7Encoding.DecoderUTF7Fallback = {}
---@alias CS.System.Text.UTF7Encoding.DecoderUTF7Fallback System.Text.UTF7Encoding.DecoderUTF7Fallback
CS.System.Text.UTF7Encoding.DecoderUTF7Fallback = System.Text.UTF7Encoding.DecoderUTF7Fallback

---@return System.Text.UTF7Encoding.DecoderUTF7Fallback
function System.Text.UTF7Encoding.DecoderUTF7Fallback.New() end
---@return System.Text.DecoderFallbackBuffer
function System.Text.UTF7Encoding.DecoderUTF7Fallback:CreateFallbackBuffer() end
---@param value System.Object
---@return boolean
function System.Text.UTF7Encoding.DecoderUTF7Fallback:Equals(value) end
---@return number
function System.Text.UTF7Encoding.DecoderUTF7Fallback:GetHashCode() end

---@class System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer : System.Text.DecoderFallbackBuffer
---@field Remaining number
System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer = {}
---@alias CS.System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer
CS.System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer = System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer

---@param fallback System.Text.UTF7Encoding.DecoderUTF7Fallback
---@return System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer
function System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer.New(fallback) end
---@param bytesUnknown System.Byte[]
---@param index number
---@return boolean
function System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer:Fallback(bytesUnknown, index) end
---@return System.Char
function System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer:GetNextChar() end
---@return boolean
function System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer:MovePrevious() end
function System.Text.UTF7Encoding.DecoderUTF7FallbackBuffer:Reset() end

---@class System.Text.UTF8Encoding : System.Text.Encoding
---@field Preamble System.ReadOnlySpan
System.Text.UTF8Encoding = {}
---@alias CS.System.Text.UTF8Encoding System.Text.UTF8Encoding
CS.System.Text.UTF8Encoding = System.Text.UTF8Encoding

---@overload fun() : System.Text.UTF8Encoding
---@overload fun(encoderShouldEmitUTF8Identifier: boolean) : System.Text.UTF8Encoding
---@param encoderShouldEmitUTF8Identifier boolean
---@param throwOnInvalidBytes boolean
---@return System.Text.UTF8Encoding
function System.Text.UTF8Encoding.New(encoderShouldEmitUTF8Identifier, throwOnInvalidBytes) end
---@overload fun(self: System.Text.UTF8Encoding, chars: System.Char[], index: number, count: number) : number
---@overload fun(self: System.Text.UTF8Encoding, chars: string) : number
---@param chars System.Char*
---@param count number
---@return number
function System.Text.UTF8Encoding:GetByteCount(chars, count) end
---@overload fun(self: System.Text.UTF8Encoding, s: string, charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.UTF8Encoding, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@return number
function System.Text.UTF8Encoding:GetBytes(chars, charCount, bytes, byteCount) end
---@overload fun(self: System.Text.UTF8Encoding, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte*
---@param count number
---@return number
function System.Text.UTF8Encoding:GetCharCount(bytes, count) end
---@overload fun(self: System.Text.UTF8Encoding, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@return number
function System.Text.UTF8Encoding:GetChars(bytes, byteCount, chars, charCount) end
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return string
function System.Text.UTF8Encoding:GetString(bytes, index, count) end
---@return System.Text.Decoder
function System.Text.UTF8Encoding:GetDecoder() end
---@return System.Text.Encoder
function System.Text.UTF8Encoding:GetEncoder() end
---@param charCount number
---@return number
function System.Text.UTF8Encoding:GetMaxByteCount(charCount) end
---@param byteCount number
---@return number
function System.Text.UTF8Encoding:GetMaxCharCount(byteCount) end
---@return System.Byte[]
function System.Text.UTF8Encoding:GetPreamble() end
---@param value System.Object
---@return boolean
function System.Text.UTF8Encoding:Equals(value) end
---@return number
function System.Text.UTF8Encoding:GetHashCode() end

---@class System.Text.UTF8Encoding.UTF8EncodingSealed : System.Text.UTF8Encoding
---@field Preamble System.ReadOnlySpan
System.Text.UTF8Encoding.UTF8EncodingSealed = {}
---@alias CS.System.Text.UTF8Encoding.UTF8EncodingSealed System.Text.UTF8Encoding.UTF8EncodingSealed
CS.System.Text.UTF8Encoding.UTF8EncodingSealed = System.Text.UTF8Encoding.UTF8EncodingSealed

---@param encoderShouldEmitUTF8Identifier boolean
---@return System.Text.UTF8Encoding.UTF8EncodingSealed
function System.Text.UTF8Encoding.UTF8EncodingSealed.New(encoderShouldEmitUTF8Identifier) end

---@class System.Text.UTF8Encoding.UTF8Encoder : System.Text.EncoderNLS
System.Text.UTF8Encoding.UTF8Encoder = {}
---@alias CS.System.Text.UTF8Encoding.UTF8Encoder System.Text.UTF8Encoding.UTF8Encoder
CS.System.Text.UTF8Encoding.UTF8Encoder = System.Text.UTF8Encoding.UTF8Encoder

---@param encoding System.Text.UTF8Encoding
---@return System.Text.UTF8Encoding.UTF8Encoder
function System.Text.UTF8Encoding.UTF8Encoder.New(encoding) end
function System.Text.UTF8Encoding.UTF8Encoder:Reset() end

---@class System.Text.UTF8Encoding.UTF8Decoder : System.Text.DecoderNLS
System.Text.UTF8Encoding.UTF8Decoder = {}
---@alias CS.System.Text.UTF8Encoding.UTF8Decoder System.Text.UTF8Encoding.UTF8Decoder
CS.System.Text.UTF8Encoding.UTF8Decoder = System.Text.UTF8Encoding.UTF8Decoder

---@param encoding System.Text.UTF8Encoding
---@return System.Text.UTF8Encoding.UTF8Decoder
function System.Text.UTF8Encoding.UTF8Decoder.New(encoding) end
function System.Text.UTF8Encoding.UTF8Decoder:Reset() end

---@class System.Text.UnicodeEncoding : System.Text.Encoding
---@field CharSize number
---@field Preamble System.ReadOnlySpan
System.Text.UnicodeEncoding = {}
---@alias CS.System.Text.UnicodeEncoding System.Text.UnicodeEncoding
CS.System.Text.UnicodeEncoding = System.Text.UnicodeEncoding

---@overload fun() : System.Text.UnicodeEncoding
---@overload fun(bigEndian: boolean, byteOrderMark: boolean) : System.Text.UnicodeEncoding
---@param bigEndian boolean
---@param byteOrderMark boolean
---@param throwOnInvalidBytes boolean
---@return System.Text.UnicodeEncoding
function System.Text.UnicodeEncoding.New(bigEndian, byteOrderMark, throwOnInvalidBytes) end
---@overload fun(self: System.Text.UnicodeEncoding, chars: System.Char[], index: number, count: number) : number
---@overload fun(self: System.Text.UnicodeEncoding, s: string) : number
---@param chars System.Char*
---@param count number
---@return number
function System.Text.UnicodeEncoding:GetByteCount(chars, count) end
---@overload fun(self: System.Text.UnicodeEncoding, s: string, charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.UnicodeEncoding, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@return number
function System.Text.UnicodeEncoding:GetBytes(chars, charCount, bytes, byteCount) end
---@overload fun(self: System.Text.UnicodeEncoding, bytes: System.Byte[], index: number, count: number) : number
---@param bytes System.Byte*
---@param count number
---@return number
function System.Text.UnicodeEncoding:GetCharCount(bytes, count) end
---@overload fun(self: System.Text.UnicodeEncoding, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@return number
function System.Text.UnicodeEncoding:GetChars(bytes, byteCount, chars, charCount) end
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return string
function System.Text.UnicodeEncoding:GetString(bytes, index, count) end
---@return System.Text.Encoder
function System.Text.UnicodeEncoding:GetEncoder() end
---@return System.Text.Decoder
function System.Text.UnicodeEncoding:GetDecoder() end
---@return System.Byte[]
function System.Text.UnicodeEncoding:GetPreamble() end
---@param charCount number
---@return number
function System.Text.UnicodeEncoding:GetMaxByteCount(charCount) end
---@param byteCount number
---@return number
function System.Text.UnicodeEncoding:GetMaxCharCount(byteCount) end
---@param value System.Object
---@return boolean
function System.Text.UnicodeEncoding:Equals(value) end
---@return number
function System.Text.UnicodeEncoding:GetHashCode() end

---@class System.Text.UnicodeEncoding.Decoder : System.Text.DecoderNLS
System.Text.UnicodeEncoding.Decoder = {}
---@alias CS.System.Text.UnicodeEncoding.Decoder System.Text.UnicodeEncoding.Decoder
CS.System.Text.UnicodeEncoding.Decoder = System.Text.UnicodeEncoding.Decoder

---@param encoding System.Text.UnicodeEncoding
---@return System.Text.UnicodeEncoding.Decoder
function System.Text.UnicodeEncoding.Decoder.New(encoding) end
function System.Text.UnicodeEncoding.Decoder:Reset() end

---@class System.Text.ValueStringBuilder : System.ValueType
---@field Length number
---@field Capacity number
---@field Item System.Char&
---@field RawChars System.Span
System.Text.ValueStringBuilder = {}
---@alias CS.System.Text.ValueStringBuilder System.Text.ValueStringBuilder
CS.System.Text.ValueStringBuilder = System.Text.ValueStringBuilder

---@param initialBuffer System.Span
---@return System.Text.ValueStringBuilder
function System.Text.ValueStringBuilder.New(initialBuffer) end
---@param capacity number
function System.Text.ValueStringBuilder:EnsureCapacity(capacity) end
---@param terminate boolean
---@return System.Char&
function System.Text.ValueStringBuilder:GetPinnableReference(terminate) end
---@return string
function System.Text.ValueStringBuilder:ToString() end
---@overload fun(self: System.Text.ValueStringBuilder, terminate: boolean) : System.ReadOnlySpan
---@overload fun() : System.ReadOnlySpan
---@overload fun(self: System.Text.ValueStringBuilder, start: number) : System.ReadOnlySpan
---@param start number
---@param length number
---@return System.ReadOnlySpan
function System.Text.ValueStringBuilder:AsSpan(start, length) end
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.Text.ValueStringBuilder:TryCopyTo(destination, out_charsWritten) end
---@param index number
---@param value System.Char
---@param count number
function System.Text.ValueStringBuilder:Insert(index, value, count) end
---@overload fun(self: System.Text.ValueStringBuilder, c: System.Char)
---@overload fun(self: System.Text.ValueStringBuilder, s: string)
---@overload fun(self: System.Text.ValueStringBuilder, c: System.Char, count: number)
---@overload fun(self: System.Text.ValueStringBuilder, value: System.Char*, length: number)
---@param value System.ReadOnlySpan
function System.Text.ValueStringBuilder:Append(value) end
---@param length number
---@return System.Span
function System.Text.ValueStringBuilder:AppendSpan(length) end
function System.Text.ValueStringBuilder:Dispose() end

---@class System.Text.ValueUtf8Converter : System.ValueType
System.Text.ValueUtf8Converter = {}
---@alias CS.System.Text.ValueUtf8Converter System.Text.ValueUtf8Converter
CS.System.Text.ValueUtf8Converter = System.Text.ValueUtf8Converter

---@param initialBuffer System.Span
---@return System.Text.ValueUtf8Converter
function System.Text.ValueUtf8Converter.New(initialBuffer) end
---@param value System.ReadOnlySpan
---@return System.Span
function System.Text.ValueUtf8Converter:ConvertAndTerminateString(value) end
function System.Text.ValueUtf8Converter:Dispose() end

---@class System.Text.Encoding : System.Object
---@field ASCII System.Text.Encoding
---@field Default System.Text.Encoding
---@field Unicode System.Text.Encoding
---@field BigEndianUnicode System.Text.Encoding
---@field UTF7 System.Text.Encoding
---@field UTF8 System.Text.Encoding
---@field UTF32 System.Text.Encoding
---@field Preamble System.ReadOnlySpan
---@field BodyName string
---@field EncodingName string
---@field HeaderName string
---@field WebName string
---@field WindowsCodePage number
---@field IsBrowserDisplay boolean
---@field IsBrowserSave boolean
---@field IsMailNewsDisplay boolean
---@field IsMailNewsSave boolean
---@field IsSingleByte boolean
---@field EncoderFallback System.Text.EncoderFallback
---@field DecoderFallback System.Text.DecoderFallback
---@field IsReadOnly boolean
---@field CodePage number
System.Text.Encoding = {}
---@alias CS.System.Text.Encoding System.Text.Encoding
CS.System.Text.Encoding = System.Text.Encoding

---@overload fun(srcEncoding: System.Text.Encoding, dstEncoding: System.Text.Encoding, bytes: System.Byte[]) : System.Byte[]
---@param srcEncoding System.Text.Encoding
---@param dstEncoding System.Text.Encoding
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return System.Byte[]
function System.Text.Encoding.Convert(srcEncoding, dstEncoding, bytes, index, count) end
---@param provider System.Text.EncodingProvider
function System.Text.Encoding.RegisterProvider(provider) end
---@overload fun(codepage: number) : System.Text.Encoding
---@overload fun(codepage: number, encoderFallback: System.Text.EncoderFallback, decoderFallback: System.Text.DecoderFallback) : System.Text.Encoding
---@overload fun(name: string) : System.Text.Encoding
---@param name string
---@param encoderFallback System.Text.EncoderFallback
---@param decoderFallback System.Text.DecoderFallback
---@return System.Text.Encoding
function System.Text.Encoding.GetEncoding(name, encoderFallback, decoderFallback) end
---@return System.Text.EncodingInfo[]
function System.Text.Encoding.GetEncodings() end
---@return System.Byte[]
function System.Text.Encoding:GetPreamble() end
---@return System.Object
function System.Text.Encoding:Clone() end
---@overload fun(self: System.Text.Encoding, chars: System.Char[]) : number
---@overload fun(self: System.Text.Encoding, s: string) : number
---@overload fun(self: System.Text.Encoding, chars: System.Char[], index: number, count: number) : number
---@overload fun(self: System.Text.Encoding, str: string, index: number, count: number) : number
---@overload fun(self: System.Text.Encoding, chars: System.Char*, count: number) : number
---@param chars System.ReadOnlySpan
---@return number
function System.Text.Encoding:GetByteCount(chars) end
---@overload fun(self: System.Text.Encoding, chars: System.Char[]) : System.Byte[]
---@overload fun(self: System.Text.Encoding, chars: System.Char[], index: number, count: number) : System.Byte[]
---@overload fun(self: System.Text.Encoding, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.Encoding, s: string) : System.Byte[]
---@overload fun(self: System.Text.Encoding, s: string, charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number) : number
---@overload fun(self: System.Text.Encoding, chars: System.Char*, charCount: number, bytes: System.Byte*, byteCount: number) : number
---@overload fun(self: System.Text.Encoding, chars: System.ReadOnlySpan, bytes: System.Span) : number
---@param s string
---@param index number
---@param count number
---@return System.Byte[]
function System.Text.Encoding:GetBytes(s, index, count) end
---@overload fun(self: System.Text.Encoding, bytes: System.Byte[]) : number
---@overload fun(self: System.Text.Encoding, bytes: System.Byte[], index: number, count: number) : number
---@overload fun(self: System.Text.Encoding, bytes: System.Byte*, count: number) : number
---@param bytes System.ReadOnlySpan
---@return number
function System.Text.Encoding:GetCharCount(bytes) end
---@overload fun(self: System.Text.Encoding, bytes: System.Byte[]) : System.Char[]
---@overload fun(self: System.Text.Encoding, bytes: System.Byte[], index: number, count: number) : System.Char[]
---@overload fun(self: System.Text.Encoding, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@overload fun(self: System.Text.Encoding, bytes: System.Byte*, byteCount: number, chars: System.Char*, charCount: number) : number
---@param bytes System.ReadOnlySpan
---@param chars System.Span
---@return number
function System.Text.Encoding:GetChars(bytes, chars) end
---@overload fun(self: System.Text.Encoding, bytes: System.Byte*, byteCount: number) : string
---@overload fun(self: System.Text.Encoding, bytes: System.ReadOnlySpan) : string
---@overload fun(self: System.Text.Encoding, bytes: System.Byte[]) : string
---@param bytes System.Byte[]
---@param index number
---@param count number
---@return string
function System.Text.Encoding:GetString(bytes, index, count) end
---@overload fun() : boolean
---@param form System.Text.NormalizationForm
---@return boolean
function System.Text.Encoding:IsAlwaysNormalized(form) end
---@return System.Text.Decoder
function System.Text.Encoding:GetDecoder() end
---@return System.Text.Encoder
function System.Text.Encoding:GetEncoder() end
---@param charCount number
---@return number
function System.Text.Encoding:GetMaxByteCount(charCount) end
---@param byteCount number
---@return number
function System.Text.Encoding:GetMaxCharCount(byteCount) end
---@param value System.Object
---@return boolean
function System.Text.Encoding:Equals(value) end
---@return number
function System.Text.Encoding:GetHashCode() end

---@class System.Text.Encoding.DefaultEncoder : System.Text.Encoder
System.Text.Encoding.DefaultEncoder = {}
---@alias CS.System.Text.Encoding.DefaultEncoder System.Text.Encoding.DefaultEncoder
CS.System.Text.Encoding.DefaultEncoder = System.Text.Encoding.DefaultEncoder

---@param encoding System.Text.Encoding
---@return System.Text.Encoding.DefaultEncoder
function System.Text.Encoding.DefaultEncoder.New(encoding) end
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Object
function System.Text.Encoding.DefaultEncoder:GetRealObject(context) end
---@overload fun(self: System.Text.Encoding.DefaultEncoder, chars: System.Char[], index: number, count: number, flush: boolean) : number
---@param chars System.Char*
---@param count number
---@param flush boolean
---@return number
function System.Text.Encoding.DefaultEncoder:GetByteCount(chars, count, flush) end
---@overload fun(self: System.Text.Encoding.DefaultEncoder, chars: System.Char[], charIndex: number, charCount: number, bytes: System.Byte[], byteIndex: number, flush: boolean) : number
---@param chars System.Char*
---@param charCount number
---@param bytes System.Byte*
---@param byteCount number
---@param flush boolean
---@return number
function System.Text.Encoding.DefaultEncoder:GetBytes(chars, charCount, bytes, byteCount, flush) end

---@class System.Text.Encoding.DefaultDecoder : System.Text.Decoder
System.Text.Encoding.DefaultDecoder = {}
---@alias CS.System.Text.Encoding.DefaultDecoder System.Text.Encoding.DefaultDecoder
CS.System.Text.Encoding.DefaultDecoder = System.Text.Encoding.DefaultDecoder

---@param encoding System.Text.Encoding
---@return System.Text.Encoding.DefaultDecoder
function System.Text.Encoding.DefaultDecoder.New(encoding) end
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Object
function System.Text.Encoding.DefaultDecoder:GetRealObject(context) end
---@overload fun(self: System.Text.Encoding.DefaultDecoder, bytes: System.Byte[], index: number, count: number) : number
---@overload fun(self: System.Text.Encoding.DefaultDecoder, bytes: System.Byte[], index: number, count: number, flush: boolean) : number
---@param bytes System.Byte*
---@param count number
---@param flush boolean
---@return number
function System.Text.Encoding.DefaultDecoder:GetCharCount(bytes, count, flush) end
---@overload fun(self: System.Text.Encoding.DefaultDecoder, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number) : number
---@overload fun(self: System.Text.Encoding.DefaultDecoder, bytes: System.Byte[], byteIndex: number, byteCount: number, chars: System.Char[], charIndex: number, flush: boolean) : number
---@param bytes System.Byte*
---@param byteCount number
---@param chars System.Char*
---@param charCount number
---@param flush boolean
---@return number
function System.Text.Encoding.DefaultDecoder:GetChars(bytes, byteCount, chars, charCount, flush) end

---@class System.Text.Encoding.EncodingCharBuffer : System.Object
System.Text.Encoding.EncodingCharBuffer = {}
---@alias CS.System.Text.Encoding.EncodingCharBuffer System.Text.Encoding.EncodingCharBuffer
CS.System.Text.Encoding.EncodingCharBuffer = System.Text.Encoding.EncodingCharBuffer


---@class System.Text.Encoding.EncodingByteBuffer : System.Object
System.Text.Encoding.EncodingByteBuffer = {}
---@alias CS.System.Text.Encoding.EncodingByteBuffer System.Text.Encoding.EncodingByteBuffer
CS.System.Text.Encoding.EncodingByteBuffer = System.Text.Encoding.EncodingByteBuffer


---@class System.Text.NormalizationCheck
---@field Yes System.Text.NormalizationCheck
---@field No System.Text.NormalizationCheck
---@field Maybe System.Text.NormalizationCheck
System.Text.NormalizationCheck = {}
---@alias CS.System.Text.NormalizationCheck System.Text.NormalizationCheck
CS.System.Text.NormalizationCheck = System.Text.NormalizationCheck


---@class System.Text.Normalization : System.Object
---@field NoNfd number
---@field NoNfkd number
---@field NoNfc number
---@field MaybeNfc number
---@field NoNfkc number
---@field MaybeNfkc number
---@field FullCompositionExclusion number
---@field IsUnsafe number
---@field isReady boolean
---@field IsReady boolean
System.Text.Normalization = {}
---@alias CS.System.Text.Normalization System.Text.Normalization
CS.System.Text.Normalization = System.Text.Normalization

---@return System.Text.Normalization
function System.Text.Normalization.New() end
---@param c System.Char
---@param type number
---@return System.Text.NormalizationCheck
function System.Text.Normalization.QuickCheck(c, type) end
---@overload fun(source: string, normalizationForm: System.Text.NormalizationForm) : boolean
---@param source string
---@param type number
---@return boolean
function System.Text.Normalization.IsNormalized(source, type) end
---@overload fun(source: string, normalizationForm: System.Text.NormalizationForm) : string
---@param source string
---@param type number
---@return string
function System.Text.Normalization.Normalize(source, type) end

---@class System.Text.EncodingHelper : System.Object
System.Text.EncodingHelper = {}
---@alias CS.System.Text.EncodingHelper System.Text.EncodingHelper
CS.System.Text.EncodingHelper = System.Text.EncodingHelper


---@class System.Security.VerificationException : System.SystemException
System.Security.VerificationException = {}
---@alias CS.System.Security.VerificationException System.Security.VerificationException
CS.System.Security.VerificationException = System.Security.VerificationException

---@overload fun() : System.Security.VerificationException
---@overload fun(message: string) : System.Security.VerificationException
---@param message string
---@param innerException System.Exception
---@return System.Security.VerificationException
function System.Security.VerificationException.New(message, innerException) end

---@class System.Security.IPermission
System.Security.IPermission = {}
---@alias CS.System.Security.IPermission System.Security.IPermission
CS.System.Security.IPermission = System.Security.IPermission

---@return System.Security.IPermission
function System.Security.IPermission:Copy() end
function System.Security.IPermission:Demand() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.IPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.IPermission:IsSubsetOf(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.IPermission:Union(target) end

---@class System.Security.ISecurityEncodable
System.Security.ISecurityEncodable = {}
---@alias CS.System.Security.ISecurityEncodable System.Security.ISecurityEncodable
CS.System.Security.ISecurityEncodable = System.Security.ISecurityEncodable

---@param e System.Security.SecurityElement
function System.Security.ISecurityEncodable:FromXml(e) end
---@return System.Security.SecurityElement
function System.Security.ISecurityEncodable:ToXml() end

---@class System.Security.IEvidenceFactory
---@field Evidence System.Security.Policy.Evidence
System.Security.IEvidenceFactory = {}
---@alias CS.System.Security.IEvidenceFactory System.Security.IEvidenceFactory
CS.System.Security.IEvidenceFactory = System.Security.IEvidenceFactory


---@class System.Security.ISecurityPolicyEncodable
System.Security.ISecurityPolicyEncodable = {}
---@alias CS.System.Security.ISecurityPolicyEncodable System.Security.ISecurityPolicyEncodable
CS.System.Security.ISecurityPolicyEncodable = System.Security.ISecurityPolicyEncodable

---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.ISecurityPolicyEncodable:FromXml(e, level) end
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.ISecurityPolicyEncodable:ToXml(level) end

---@class System.Security.IStackWalk
System.Security.IStackWalk = {}
---@alias CS.System.Security.IStackWalk System.Security.IStackWalk
CS.System.Security.IStackWalk = System.Security.IStackWalk

function System.Security.IStackWalk:Assert() end
function System.Security.IStackWalk:Demand() end
function System.Security.IStackWalk:Deny() end
function System.Security.IStackWalk:PermitOnly() end

---@class System.Security.PolicyLevelType
---@field AppDomain System.Security.PolicyLevelType
---@field Enterprise System.Security.PolicyLevelType
---@field Machine System.Security.PolicyLevelType
---@field User System.Security.PolicyLevelType
System.Security.PolicyLevelType = {}
---@alias CS.System.Security.PolicyLevelType System.Security.PolicyLevelType
CS.System.Security.PolicyLevelType = System.Security.PolicyLevelType


---@class System.Security.SecurityZone
---@field Internet System.Security.SecurityZone
---@field Intranet System.Security.SecurityZone
---@field MyComputer System.Security.SecurityZone
---@field NoZone System.Security.SecurityZone
---@field Trusted System.Security.SecurityZone
---@field Untrusted System.Security.SecurityZone
System.Security.SecurityZone = {}
---@alias CS.System.Security.SecurityZone System.Security.SecurityZone
CS.System.Security.SecurityZone = System.Security.SecurityZone


---@class System.Security.XmlSyntaxException : System.SystemException
System.Security.XmlSyntaxException = {}
---@alias CS.System.Security.XmlSyntaxException System.Security.XmlSyntaxException
CS.System.Security.XmlSyntaxException = System.Security.XmlSyntaxException

---@overload fun() : System.Security.XmlSyntaxException
---@overload fun(lineNumber: number) : System.Security.XmlSyntaxException
---@overload fun(lineNumber: number, message: string) : System.Security.XmlSyntaxException
---@overload fun(message: string) : System.Security.XmlSyntaxException
---@param message string
---@param inner System.Exception
---@return System.Security.XmlSyntaxException
function System.Security.XmlSyntaxException.New(message, inner) end

---@class System.Security.DynamicSecurityMethodAttribute : System.Attribute
System.Security.DynamicSecurityMethodAttribute = {}
---@alias CS.System.Security.DynamicSecurityMethodAttribute System.Security.DynamicSecurityMethodAttribute
CS.System.Security.DynamicSecurityMethodAttribute = System.Security.DynamicSecurityMethodAttribute

---@return System.Security.DynamicSecurityMethodAttribute
function System.Security.DynamicSecurityMethodAttribute.New() end

---@class System.Security.SuppressUnmanagedCodeSecurityAttribute : System.Attribute
System.Security.SuppressUnmanagedCodeSecurityAttribute = {}
---@alias CS.System.Security.SuppressUnmanagedCodeSecurityAttribute System.Security.SuppressUnmanagedCodeSecurityAttribute
CS.System.Security.SuppressUnmanagedCodeSecurityAttribute = System.Security.SuppressUnmanagedCodeSecurityAttribute

---@return System.Security.SuppressUnmanagedCodeSecurityAttribute
function System.Security.SuppressUnmanagedCodeSecurityAttribute.New() end

---@class System.Security.UnverifiableCodeAttribute : System.Attribute
System.Security.UnverifiableCodeAttribute = {}
---@alias CS.System.Security.UnverifiableCodeAttribute System.Security.UnverifiableCodeAttribute
CS.System.Security.UnverifiableCodeAttribute = System.Security.UnverifiableCodeAttribute

---@return System.Security.UnverifiableCodeAttribute
function System.Security.UnverifiableCodeAttribute.New() end

---@class System.Security.AllowPartiallyTrustedCallersAttribute : System.Attribute
---@field PartialTrustVisibilityLevel System.Security.PartialTrustVisibilityLevel
System.Security.AllowPartiallyTrustedCallersAttribute = {}
---@alias CS.System.Security.AllowPartiallyTrustedCallersAttribute System.Security.AllowPartiallyTrustedCallersAttribute
CS.System.Security.AllowPartiallyTrustedCallersAttribute = System.Security.AllowPartiallyTrustedCallersAttribute

---@return System.Security.AllowPartiallyTrustedCallersAttribute
function System.Security.AllowPartiallyTrustedCallersAttribute.New() end

---@class System.Security.PartialTrustVisibilityLevel
---@field VisibleToAllHosts System.Security.PartialTrustVisibilityLevel
---@field NotVisibleByDefault System.Security.PartialTrustVisibilityLevel
System.Security.PartialTrustVisibilityLevel = {}
---@alias CS.System.Security.PartialTrustVisibilityLevel System.Security.PartialTrustVisibilityLevel
CS.System.Security.PartialTrustVisibilityLevel = System.Security.PartialTrustVisibilityLevel


---@class System.Security.SecurityCriticalScope
---@field Explicit System.Security.SecurityCriticalScope
---@field Everything System.Security.SecurityCriticalScope
System.Security.SecurityCriticalScope = {}
---@alias CS.System.Security.SecurityCriticalScope System.Security.SecurityCriticalScope
CS.System.Security.SecurityCriticalScope = System.Security.SecurityCriticalScope


---@class System.Security.SecurityCriticalAttribute : System.Attribute
System.Security.SecurityCriticalAttribute = {}
---@alias CS.System.Security.SecurityCriticalAttribute System.Security.SecurityCriticalAttribute
CS.System.Security.SecurityCriticalAttribute = System.Security.SecurityCriticalAttribute

---@overload fun() : System.Security.SecurityCriticalAttribute
---@param scope System.Security.SecurityCriticalScope
---@return System.Security.SecurityCriticalAttribute
function System.Security.SecurityCriticalAttribute.New(scope) end

---@class System.Security.SecurityTreatAsSafeAttribute : System.Attribute
System.Security.SecurityTreatAsSafeAttribute = {}
---@alias CS.System.Security.SecurityTreatAsSafeAttribute System.Security.SecurityTreatAsSafeAttribute
CS.System.Security.SecurityTreatAsSafeAttribute = System.Security.SecurityTreatAsSafeAttribute

---@return System.Security.SecurityTreatAsSafeAttribute
function System.Security.SecurityTreatAsSafeAttribute.New() end

---@class System.Security.SecuritySafeCriticalAttribute : System.Attribute
System.Security.SecuritySafeCriticalAttribute = {}
---@alias CS.System.Security.SecuritySafeCriticalAttribute System.Security.SecuritySafeCriticalAttribute
CS.System.Security.SecuritySafeCriticalAttribute = System.Security.SecuritySafeCriticalAttribute

---@return System.Security.SecuritySafeCriticalAttribute
function System.Security.SecuritySafeCriticalAttribute.New() end

---@class System.Security.SecurityTransparentAttribute : System.Attribute
System.Security.SecurityTransparentAttribute = {}
---@alias CS.System.Security.SecurityTransparentAttribute System.Security.SecurityTransparentAttribute
CS.System.Security.SecurityTransparentAttribute = System.Security.SecurityTransparentAttribute

---@return System.Security.SecurityTransparentAttribute
function System.Security.SecurityTransparentAttribute.New() end

---@class System.Security.SecurityRuleSet
---@field None System.Security.SecurityRuleSet
---@field Level1 System.Security.SecurityRuleSet
---@field Level2 System.Security.SecurityRuleSet
System.Security.SecurityRuleSet = {}
---@alias CS.System.Security.SecurityRuleSet System.Security.SecurityRuleSet
CS.System.Security.SecurityRuleSet = System.Security.SecurityRuleSet


---@class System.Security.SecurityRulesAttribute : System.Attribute
---@field SkipVerificationInFullTrust boolean
---@field RuleSet System.Security.SecurityRuleSet
System.Security.SecurityRulesAttribute = {}
---@alias CS.System.Security.SecurityRulesAttribute System.Security.SecurityRulesAttribute
CS.System.Security.SecurityRulesAttribute = System.Security.SecurityRulesAttribute

---@param ruleSet System.Security.SecurityRuleSet
---@return System.Security.SecurityRulesAttribute
function System.Security.SecurityRulesAttribute.New(ruleSet) end

---@class System.Security.SecurityContextSource
---@field CurrentAppDomain System.Security.SecurityContextSource
---@field CurrentAssembly System.Security.SecurityContextSource
System.Security.SecurityContextSource = {}
---@alias CS.System.Security.SecurityContextSource System.Security.SecurityContextSource
CS.System.Security.SecurityContextSource = System.Security.SecurityContextSource


---@class System.Security.SecurityContextDisableFlow
---@field Nothing System.Security.SecurityContextDisableFlow
---@field WI System.Security.SecurityContextDisableFlow
---@field All System.Security.SecurityContextDisableFlow
System.Security.SecurityContextDisableFlow = {}
---@alias CS.System.Security.SecurityContextDisableFlow System.Security.SecurityContextDisableFlow
CS.System.Security.SecurityContextDisableFlow = System.Security.SecurityContextDisableFlow


---@class System.Security.SecurityDocument : System.Object
System.Security.SecurityDocument = {}
---@alias CS.System.Security.SecurityDocument System.Security.SecurityDocument
CS.System.Security.SecurityDocument = System.Security.SecurityDocument

---@overload fun(numData: number) : System.Security.SecurityDocument
---@overload fun(data: System.Byte[]) : System.Security.SecurityDocument
---@param elRoot System.Security.SecurityElement
---@return System.Security.SecurityDocument
function System.Security.SecurityDocument.New(elRoot) end
---@param str string
---@return number
function System.Security.SecurityDocument.EncodedStringSize(str) end
---@param size number
function System.Security.SecurityDocument:GuaranteeSize(size) end
---@param str string
---@param ref_position number
---@return ,number
function System.Security.SecurityDocument:AddString(str, ref_position) end
---@param str string
---@param ref_position number
---@return ,number
function System.Security.SecurityDocument:AppendString(str, ref_position) end
---@overload fun(self: System.Security.SecurityDocument, ref_position: number) : string, number
---@param ref_position number
---@param bCreate boolean
---@return string,number
function System.Security.SecurityDocument:GetString(ref_position, bCreate) end
---@param b number
---@param ref_position number
---@return ,number
function System.Security.SecurityDocument:AddToken(b, ref_position) end
---@param elCurrent System.Security.SecurityElement
---@param ref_position number
---@return ,number
function System.Security.SecurityDocument:ConvertElement(elCurrent, ref_position) end
---@return System.Security.SecurityElement
function System.Security.SecurityDocument:GetRootElement() end
---@param position number
---@param bCreate boolean
---@return System.Security.SecurityElement
function System.Security.SecurityDocument:GetElement(position, bCreate) end
---@param position number
---@return string
function System.Security.SecurityDocument:GetTagForElement(position) end
---@param position number
---@return System.Collections.ArrayList
function System.Security.SecurityDocument:GetChildrenPositionForElement(position) end
---@param position number
---@param attributeName string
---@return string
function System.Security.SecurityDocument:GetAttributeForElement(position, attributeName) end

---@class System.Security.SecurityContext : System.Object
System.Security.SecurityContext = {}
---@alias CS.System.Security.SecurityContext System.Security.SecurityContext
CS.System.Security.SecurityContext = System.Security.SecurityContext

---@return System.Security.SecurityContext
function System.Security.SecurityContext.Capture() end
---@return boolean
function System.Security.SecurityContext.IsFlowSuppressed() end
---@return boolean
function System.Security.SecurityContext.IsWindowsIdentityFlowSuppressed() end
function System.Security.SecurityContext.RestoreFlow() end
---@param securityContext System.Security.SecurityContext
---@param callback System.Threading.ContextCallback
---@param state System.Object
function System.Security.SecurityContext.Run(securityContext, callback, state) end
---@return System.Threading.AsyncFlowControl
function System.Security.SecurityContext.SuppressFlow() end
---@return System.Threading.AsyncFlowControl
function System.Security.SecurityContext.SuppressFlowWindowsIdentity() end
---@return System.Security.SecurityContext
function System.Security.SecurityContext:CreateCopy() end
function System.Security.SecurityContext:Dispose() end

---@class System.Security.CodeAccessPermission : System.Object
System.Security.CodeAccessPermission = {}
---@alias CS.System.Security.CodeAccessPermission System.Security.CodeAccessPermission
CS.System.Security.CodeAccessPermission = System.Security.CodeAccessPermission

function System.Security.CodeAccessPermission.RevertAll() end
function System.Security.CodeAccessPermission.RevertAssert() end
function System.Security.CodeAccessPermission.RevertDeny() end
function System.Security.CodeAccessPermission.RevertPermitOnly() end
function System.Security.CodeAccessPermission:Assert() end
---@return System.Security.IPermission
function System.Security.CodeAccessPermission:Copy() end
function System.Security.CodeAccessPermission:Demand() end
---@param obj System.Object
---@return boolean
function System.Security.CodeAccessPermission:Equals(obj) end
---@param elem System.Security.SecurityElement
function System.Security.CodeAccessPermission:FromXml(elem) end
---@return number
function System.Security.CodeAccessPermission:GetHashCode() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.CodeAccessPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.CodeAccessPermission:IsSubsetOf(target) end
---@return string
function System.Security.CodeAccessPermission:ToString() end
---@return System.Security.SecurityElement
function System.Security.CodeAccessPermission:ToXml() end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.CodeAccessPermission:Union(other) end
function System.Security.CodeAccessPermission:PermitOnly() end

---@class System.Security.HostProtectionException : System.SystemException
---@field DemandedResources System.Security.Permissions.HostProtectionResource
---@field ProtectedResources System.Security.Permissions.HostProtectionResource
System.Security.HostProtectionException = {}
---@alias CS.System.Security.HostProtectionException System.Security.HostProtectionException
CS.System.Security.HostProtectionException = System.Security.HostProtectionException

---@overload fun() : System.Security.HostProtectionException
---@overload fun(message: string) : System.Security.HostProtectionException
---@overload fun(message: string, e: System.Exception) : System.Security.HostProtectionException
---@param message string
---@param protectedResources System.Security.Permissions.HostProtectionResource
---@param demandedResources System.Security.Permissions.HostProtectionResource
---@return System.Security.HostProtectionException
function System.Security.HostProtectionException.New(message, protectedResources, demandedResources) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Security.HostProtectionException:GetObjectData(info, context) end
---@return string
function System.Security.HostProtectionException:ToString() end

---@class System.Security.HostSecurityManager : System.Object
---@field DomainPolicy System.Security.Policy.PolicyLevel
---@field Flags System.Security.HostSecurityManagerOptions
System.Security.HostSecurityManager = {}
---@alias CS.System.Security.HostSecurityManager System.Security.HostSecurityManager
CS.System.Security.HostSecurityManager = System.Security.HostSecurityManager

---@return System.Security.HostSecurityManager
function System.Security.HostSecurityManager.New() end
---@param applicationEvidence System.Security.Policy.Evidence
---@param activatorEvidence System.Security.Policy.Evidence
---@param context System.Security.Policy.TrustManagerContext
---@return System.Security.Policy.ApplicationTrust
function System.Security.HostSecurityManager:DetermineApplicationTrust(applicationEvidence, activatorEvidence, context) end
---@param inputEvidence System.Security.Policy.Evidence
---@return System.Security.Policy.Evidence
function System.Security.HostSecurityManager:ProvideAppDomainEvidence(inputEvidence) end
---@param loadedAssembly System.Reflection.Assembly
---@param inputEvidence System.Security.Policy.Evidence
---@return System.Security.Policy.Evidence
function System.Security.HostSecurityManager:ProvideAssemblyEvidence(loadedAssembly, inputEvidence) end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function System.Security.HostSecurityManager:ResolvePolicy(evidence) end
---@param evidenceType System.Type
---@return System.Security.Policy.EvidenceBase
function System.Security.HostSecurityManager:GenerateAppDomainEvidence(evidenceType) end
---@param evidenceType System.Type
---@param assembly System.Reflection.Assembly
---@return System.Security.Policy.EvidenceBase
function System.Security.HostSecurityManager:GenerateAssemblyEvidence(evidenceType, assembly) end
---@return System.Type[]
function System.Security.HostSecurityManager:GetHostSuppliedAppDomainEvidenceTypes() end
---@param assembly System.Reflection.Assembly
---@return System.Type[]
function System.Security.HostSecurityManager:GetHostSuppliedAssemblyEvidenceTypes(assembly) end

---@class System.Security.HostSecurityManagerOptions
---@field None System.Security.HostSecurityManagerOptions
---@field HostAppDomainEvidence System.Security.HostSecurityManagerOptions
---@field HostPolicyLevel System.Security.HostSecurityManagerOptions
---@field HostAssemblyEvidence System.Security.HostSecurityManagerOptions
---@field HostDetermineApplicationTrust System.Security.HostSecurityManagerOptions
---@field HostResolvePolicy System.Security.HostSecurityManagerOptions
---@field AllFlags System.Security.HostSecurityManagerOptions
System.Security.HostSecurityManagerOptions = {}
---@alias CS.System.Security.HostSecurityManagerOptions System.Security.HostSecurityManagerOptions
CS.System.Security.HostSecurityManagerOptions = System.Security.HostSecurityManagerOptions


---@class System.Security.NamedPermissionSet : System.Security.PermissionSet
---@field Description string
---@field Name string
System.Security.NamedPermissionSet = {}
---@alias CS.System.Security.NamedPermissionSet System.Security.NamedPermissionSet
CS.System.Security.NamedPermissionSet = System.Security.NamedPermissionSet

---@overload fun(name: string, permSet: System.Security.PermissionSet) : System.Security.NamedPermissionSet
---@overload fun(name: string, state: System.Security.Permissions.PermissionState) : System.Security.NamedPermissionSet
---@overload fun(permSet: System.Security.NamedPermissionSet) : System.Security.NamedPermissionSet
---@param name string
---@return System.Security.NamedPermissionSet
function System.Security.NamedPermissionSet.New(name) end
---@overload fun() : System.Security.PermissionSet
---@param name string
---@return System.Security.NamedPermissionSet
function System.Security.NamedPermissionSet:Copy(name) end
---@param et System.Security.SecurityElement
function System.Security.NamedPermissionSet:FromXml(et) end
---@return System.Security.SecurityElement
function System.Security.NamedPermissionSet:ToXml() end
---@param obj System.Object
---@return boolean
function System.Security.NamedPermissionSet:Equals(obj) end
---@return number
function System.Security.NamedPermissionSet:GetHashCode() end

---@class System.Security.PermissionBuilder : System.Object
System.Security.PermissionBuilder = {}
---@alias CS.System.Security.PermissionBuilder System.Security.PermissionBuilder
CS.System.Security.PermissionBuilder = System.Security.PermissionBuilder

---@overload fun(fullname: string, state: System.Security.Permissions.PermissionState) : System.Security.IPermission
---@overload fun(se: System.Security.SecurityElement) : System.Security.IPermission
---@overload fun(fullname: string, se: System.Security.SecurityElement) : System.Security.IPermission
---@param type System.Type
---@return System.Security.IPermission
function System.Security.PermissionBuilder.Create(type) end

---@class System.Security.PermissionSet : System.Object
---@field Count number
---@field IsSynchronized boolean
---@field IsReadOnly boolean
---@field SyncRoot System.Object
System.Security.PermissionSet = {}
---@alias CS.System.Security.PermissionSet System.Security.PermissionSet
CS.System.Security.PermissionSet = System.Security.PermissionSet

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.PermissionSet
---@param permSet System.Security.PermissionSet
---@return System.Security.PermissionSet
function System.Security.PermissionSet.New(permSet) end
---@param inFormat string
---@param inData System.Byte[]
---@param outFormat string
---@return System.Byte[]
function System.Security.PermissionSet.ConvertPermissionSet(inFormat, inData, outFormat) end
function System.Security.PermissionSet.RevertAssert() end
---@param perm System.Security.IPermission
---@return System.Security.IPermission
function System.Security.PermissionSet:AddPermission(perm) end
function System.Security.PermissionSet:Assert() end
---@return System.Security.PermissionSet
function System.Security.PermissionSet:Copy() end
---@param array System.Array
---@param index number
function System.Security.PermissionSet:CopyTo(array, index) end
function System.Security.PermissionSet:Demand() end
---@param et System.Security.SecurityElement
function System.Security.PermissionSet:FromXml(et) end
---@return System.Collections.IEnumerator
function System.Security.PermissionSet:GetEnumerator() end
---@param target System.Security.PermissionSet
---@return boolean
function System.Security.PermissionSet:IsSubsetOf(target) end
function System.Security.PermissionSet:PermitOnly() end
---@return boolean
function System.Security.PermissionSet:ContainsNonCodeAccessPermissions() end
---@param permClass System.Type
---@return System.Security.IPermission
function System.Security.PermissionSet:GetPermission(permClass) end
---@param other System.Security.PermissionSet
---@return System.Security.PermissionSet
function System.Security.PermissionSet:Intersect(other) end
---@return boolean
function System.Security.PermissionSet:IsEmpty() end
---@return boolean
function System.Security.PermissionSet:IsUnrestricted() end
---@param permClass System.Type
---@return System.Security.IPermission
function System.Security.PermissionSet:RemovePermission(permClass) end
---@param perm System.Security.IPermission
---@return System.Security.IPermission
function System.Security.PermissionSet:SetPermission(perm) end
---@return string
function System.Security.PermissionSet:ToString() end
---@return System.Security.SecurityElement
function System.Security.PermissionSet:ToXml() end
---@param other System.Security.PermissionSet
---@return System.Security.PermissionSet
function System.Security.PermissionSet:Union(other) end
---@param obj System.Object
---@return boolean
function System.Security.PermissionSet:Equals(obj) end
---@return number
function System.Security.PermissionSet:GetHashCode() end

---@class System.Security.SecureString : System.Object
---@field Length number
System.Security.SecureString = {}
---@alias CS.System.Security.SecureString System.Security.SecureString
CS.System.Security.SecureString = System.Security.SecureString

---@overload fun() : System.Security.SecureString
---@param value System.Char*
---@param length number
---@return System.Security.SecureString
function System.Security.SecureString.New(value, length) end
---@param c System.Char
function System.Security.SecureString:AppendChar(c) end
function System.Security.SecureString:Clear() end
---@return System.Security.SecureString
function System.Security.SecureString:Copy() end
function System.Security.SecureString:Dispose() end
---@param index number
---@param c System.Char
function System.Security.SecureString:InsertAt(index, c) end
---@return boolean
function System.Security.SecureString:IsReadOnly() end
function System.Security.SecureString:MakeReadOnly() end
---@param index number
function System.Security.SecureString:RemoveAt(index) end
---@param index number
---@param c System.Char
function System.Security.SecureString:SetAt(index, c) end

---@class System.Security.SecurityElementType
---@field Regular System.Security.SecurityElementType
---@field Format System.Security.SecurityElementType
---@field Comment System.Security.SecurityElementType
System.Security.SecurityElementType = {}
---@alias CS.System.Security.SecurityElementType System.Security.SecurityElementType
CS.System.Security.SecurityElementType = System.Security.SecurityElementType


---@class System.Security.SecurityElement : System.Object
---@field Attributes System.Collections.Hashtable
---@field Children System.Collections.ArrayList
---@field Tag string
---@field Text string
System.Security.SecurityElement = {}
---@alias CS.System.Security.SecurityElement System.Security.SecurityElement
CS.System.Security.SecurityElement = System.Security.SecurityElement

---@overload fun(tag: string) : System.Security.SecurityElement
---@param tag string
---@param text string
---@return System.Security.SecurityElement
function System.Security.SecurityElement.New(tag, text) end
---@param str string
---@return string
function System.Security.SecurityElement.Escape(str) end
---@param xml string
---@return System.Security.SecurityElement
function System.Security.SecurityElement.FromString(xml) end
---@param name string
---@return boolean
function System.Security.SecurityElement.IsValidAttributeName(name) end
---@param value string
---@return boolean
function System.Security.SecurityElement.IsValidAttributeValue(value) end
---@param tag string
---@return boolean
function System.Security.SecurityElement.IsValidTag(tag) end
---@param text string
---@return boolean
function System.Security.SecurityElement.IsValidText(text) end
---@param name string
---@param value string
function System.Security.SecurityElement:AddAttribute(name, value) end
---@param child System.Security.SecurityElement
function System.Security.SecurityElement:AddChild(child) end
---@param name string
---@return string
function System.Security.SecurityElement:Attribute(name) end
---@return System.Security.SecurityElement
function System.Security.SecurityElement:Copy() end
---@param other System.Security.SecurityElement
---@return boolean
function System.Security.SecurityElement:Equal(other) end
---@param tag string
---@return System.Security.SecurityElement
function System.Security.SecurityElement:SearchForChildByTag(tag) end
---@param tag string
---@return string
function System.Security.SecurityElement:SearchForTextOfTag(tag) end
---@return string
function System.Security.SecurityElement:ToString() end

---@class System.Security.SecurityElement.SecurityAttribute : System.Object
---@field Name string
---@field Value string
System.Security.SecurityElement.SecurityAttribute = {}
---@alias CS.System.Security.SecurityElement.SecurityAttribute System.Security.SecurityElement.SecurityAttribute
CS.System.Security.SecurityElement.SecurityAttribute = System.Security.SecurityElement.SecurityAttribute

---@param name string
---@param value string
---@return System.Security.SecurityElement.SecurityAttribute
function System.Security.SecurityElement.SecurityAttribute.New(name, value) end

---@class System.Security.SecurityException : System.SystemException
---@field Action System.Security.Permissions.SecurityAction
---@field DenySetInstance System.Object
---@field FailedAssemblyInfo System.Reflection.AssemblyName
---@field Method System.Reflection.MethodInfo
---@field PermitOnlySetInstance System.Object
---@field Url string
---@field Zone System.Security.SecurityZone
---@field Demanded System.Object
---@field FirstPermissionThatFailed System.Security.IPermission
---@field PermissionState string
---@field PermissionType System.Type
---@field GrantedSet string
---@field RefusedSet string
System.Security.SecurityException = {}
---@alias CS.System.Security.SecurityException System.Security.SecurityException
CS.System.Security.SecurityException = System.Security.SecurityException

---@overload fun() : System.Security.SecurityException
---@overload fun(message: string) : System.Security.SecurityException
---@overload fun(message: string, inner: System.Exception) : System.Security.SecurityException
---@overload fun(message: string, type: System.Type) : System.Security.SecurityException
---@overload fun(message: string, type: System.Type, state: string) : System.Security.SecurityException
---@overload fun(message: string, deny: System.Object, permitOnly: System.Object, method: System.Reflection.MethodInfo, demanded: System.Object, permThatFailed: System.Security.IPermission) : System.Security.SecurityException
---@param message string
---@param assemblyName System.Reflection.AssemblyName
---@param grant System.Security.PermissionSet
---@param refused System.Security.PermissionSet
---@param method System.Reflection.MethodInfo
---@param action System.Security.Permissions.SecurityAction
---@param demanded System.Object
---@param permThatFailed System.Security.IPermission
---@param evidence System.Security.Policy.Evidence
---@return System.Security.SecurityException
function System.Security.SecurityException.New(message, assemblyName, grant, refused, method, action, demanded, permThatFailed, evidence) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Security.SecurityException:GetObjectData(info, context) end
---@return string
function System.Security.SecurityException:ToString() end

---@class System.Security.RuntimeDeclSecurityEntry : System.ValueType
---@field blob System.IntPtr
---@field size number
---@field index number
System.Security.RuntimeDeclSecurityEntry = {}
---@alias CS.System.Security.RuntimeDeclSecurityEntry System.Security.RuntimeDeclSecurityEntry
CS.System.Security.RuntimeDeclSecurityEntry = System.Security.RuntimeDeclSecurityEntry


---@class System.Security.RuntimeDeclSecurityActions : System.ValueType
---@field cas System.Security.RuntimeDeclSecurityEntry
---@field noncas System.Security.RuntimeDeclSecurityEntry
---@field choice System.Security.RuntimeDeclSecurityEntry
System.Security.RuntimeDeclSecurityActions = {}
---@alias CS.System.Security.RuntimeDeclSecurityActions System.Security.RuntimeDeclSecurityActions
CS.System.Security.RuntimeDeclSecurityActions = System.Security.RuntimeDeclSecurityActions


---@class System.Security.SecurityManager : System.Object
System.Security.SecurityManager = {}
---@alias CS.System.Security.SecurityManager System.Security.SecurityManager
CS.System.Security.SecurityManager = System.Security.SecurityManager

---@param out_zone System.Collections.ArrayList
---@param out_origin System.Collections.ArrayList
---@return ,System.Collections.ArrayList,System.Collections.ArrayList
function System.Security.SecurityManager.GetZoneAndOrigin(out_zone, out_origin) end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.PermissionSet
function System.Security.SecurityManager.GetStandardSandbox(evidence) end
---@return boolean
function System.Security.SecurityManager.CurrentThreadRequiresSecurityContextCapture() end

---@class System.Security.SecurityState : System.Object
System.Security.SecurityState = {}
---@alias CS.System.Security.SecurityState System.Security.SecurityState
CS.System.Security.SecurityState = System.Security.SecurityState

function System.Security.SecurityState:EnsureState() end
---@return boolean
function System.Security.SecurityState:IsStateAvailable() end

---@class System.Security.Util.Hex : System.Object
System.Security.Util.Hex = {}
---@alias CS.System.Security.Util.Hex System.Security.Util.Hex
CS.System.Security.Util.Hex = System.Security.Util.Hex

---@param sArray System.Byte[]
---@return string
function System.Security.Util.Hex.EncodeHexString(sArray) end
---@param val System.Char
---@return number
function System.Security.Util.Hex.ConvertHexDigit(val) end
---@param hexString string
---@return System.Byte[]
function System.Security.Util.Hex.DecodeHexString(hexString) end

---@class System.Security.Util.Parser : System.Object
System.Security.Util.Parser = {}
---@alias CS.System.Security.Util.Parser System.Security.Util.Parser
CS.System.Security.Util.Parser = System.Security.Util.Parser


---@class System.Security.Util.Tokenizer : System.Object
---@field LineNo number
System.Security.Util.Tokenizer = {}
---@alias CS.System.Security.Util.Tokenizer System.Security.Util.Tokenizer
CS.System.Security.Util.Tokenizer = System.Security.Util.Tokenizer

function System.Security.Util.Tokenizer:Recycle() end

---@class System.Security.Util.Tokenizer.TokenSource
---@field UnicodeByteArray System.Security.Util.Tokenizer.TokenSource
---@field UTF8ByteArray System.Security.Util.Tokenizer.TokenSource
---@field ASCIIByteArray System.Security.Util.Tokenizer.TokenSource
---@field CharArray System.Security.Util.Tokenizer.TokenSource
---@field String System.Security.Util.Tokenizer.TokenSource
---@field NestedStrings System.Security.Util.Tokenizer.TokenSource
---@field Other System.Security.Util.Tokenizer.TokenSource
System.Security.Util.Tokenizer.TokenSource = {}
---@alias CS.System.Security.Util.Tokenizer.TokenSource System.Security.Util.Tokenizer.TokenSource
CS.System.Security.Util.Tokenizer.TokenSource = System.Security.Util.Tokenizer.TokenSource


---@class System.Security.Util.Tokenizer.ByteTokenEncoding
---@field UnicodeTokens System.Security.Util.Tokenizer.ByteTokenEncoding
---@field UTF8Tokens System.Security.Util.Tokenizer.ByteTokenEncoding
---@field ByteTokens System.Security.Util.Tokenizer.ByteTokenEncoding
System.Security.Util.Tokenizer.ByteTokenEncoding = {}
---@alias CS.System.Security.Util.Tokenizer.ByteTokenEncoding System.Security.Util.Tokenizer.ByteTokenEncoding
CS.System.Security.Util.Tokenizer.ByteTokenEncoding = System.Security.Util.Tokenizer.ByteTokenEncoding


---@class System.Security.Util.Tokenizer.StringMaker : System.Object
---@field outMaxSize number
---@field _outStringBuilder System.Text.StringBuilder
---@field _outChars System.Char[]
---@field _outIndex number
System.Security.Util.Tokenizer.StringMaker = {}
---@alias CS.System.Security.Util.Tokenizer.StringMaker System.Security.Util.Tokenizer.StringMaker
CS.System.Security.Util.Tokenizer.StringMaker = System.Security.Util.Tokenizer.StringMaker

---@return System.Security.Util.Tokenizer.StringMaker
function System.Security.Util.Tokenizer.StringMaker.New() end
---@return string
function System.Security.Util.Tokenizer.StringMaker:MakeString() end

---@class System.Security.Util.Tokenizer.ITokenReader
System.Security.Util.Tokenizer.ITokenReader = {}
---@alias CS.System.Security.Util.Tokenizer.ITokenReader System.Security.Util.Tokenizer.ITokenReader
CS.System.Security.Util.Tokenizer.ITokenReader = System.Security.Util.Tokenizer.ITokenReader

---@return number
function System.Security.Util.Tokenizer.ITokenReader:Read() end

---@class System.Security.Util.Tokenizer.StreamTokenReader : System.Object
System.Security.Util.Tokenizer.StreamTokenReader = {}
---@alias CS.System.Security.Util.Tokenizer.StreamTokenReader System.Security.Util.Tokenizer.StreamTokenReader
CS.System.Security.Util.Tokenizer.StreamTokenReader = System.Security.Util.Tokenizer.StreamTokenReader

---@return number
function System.Security.Util.Tokenizer.StreamTokenReader:Read() end

---@class System.Security.Util.TokenizerShortBlock : System.Object
System.Security.Util.TokenizerShortBlock = {}
---@alias CS.System.Security.Util.TokenizerShortBlock System.Security.Util.TokenizerShortBlock
CS.System.Security.Util.TokenizerShortBlock = System.Security.Util.TokenizerShortBlock

---@return System.Security.Util.TokenizerShortBlock
function System.Security.Util.TokenizerShortBlock.New() end

---@class System.Security.Util.TokenizerStringBlock : System.Object
System.Security.Util.TokenizerStringBlock = {}
---@alias CS.System.Security.Util.TokenizerStringBlock System.Security.Util.TokenizerStringBlock
CS.System.Security.Util.TokenizerStringBlock = System.Security.Util.TokenizerStringBlock

---@return System.Security.Util.TokenizerStringBlock
function System.Security.Util.TokenizerStringBlock.New() end

---@class System.Security.Util.TokenizerStream : System.Object
System.Security.Util.TokenizerStream = {}
---@alias CS.System.Security.Util.TokenizerStream System.Security.Util.TokenizerStream
CS.System.Security.Util.TokenizerStream = System.Security.Util.TokenizerStream


---@class System.Security.Policy.ApplicationVersionMatch
---@field MatchAllVersions System.Security.Policy.ApplicationVersionMatch
---@field MatchExactVersion System.Security.Policy.ApplicationVersionMatch
System.Security.Policy.ApplicationVersionMatch = {}
---@alias CS.System.Security.Policy.ApplicationVersionMatch System.Security.Policy.ApplicationVersionMatch
CS.System.Security.Policy.ApplicationVersionMatch = System.Security.Policy.ApplicationVersionMatch


---@class System.Security.Policy.IIdentityPermissionFactory
System.Security.Policy.IIdentityPermissionFactory = {}
---@alias CS.System.Security.Policy.IIdentityPermissionFactory System.Security.Policy.IIdentityPermissionFactory
CS.System.Security.Policy.IIdentityPermissionFactory = System.Security.Policy.IIdentityPermissionFactory

---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.IIdentityPermissionFactory:CreateIdentityPermission(evidence) end

---@class System.Security.Policy.IMembershipCondition
System.Security.Policy.IMembershipCondition = {}
---@alias CS.System.Security.Policy.IMembershipCondition System.Security.Policy.IMembershipCondition
CS.System.Security.Policy.IMembershipCondition = System.Security.Policy.IMembershipCondition

---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.IMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.IMembershipCondition:Copy() end
---@param obj System.Object
---@return boolean
function System.Security.Policy.IMembershipCondition:Equals(obj) end
---@return string
function System.Security.Policy.IMembershipCondition:ToString() end

---@class System.Security.Policy.PolicyStatementAttribute
---@field All System.Security.Policy.PolicyStatementAttribute
---@field Exclusive System.Security.Policy.PolicyStatementAttribute
---@field LevelFinal System.Security.Policy.PolicyStatementAttribute
---@field Nothing System.Security.Policy.PolicyStatementAttribute
System.Security.Policy.PolicyStatementAttribute = {}
---@alias CS.System.Security.Policy.PolicyStatementAttribute System.Security.Policy.PolicyStatementAttribute
CS.System.Security.Policy.PolicyStatementAttribute = System.Security.Policy.PolicyStatementAttribute


---@class System.Security.Policy.Publisher : System.Security.Policy.EvidenceBase
---@field Certificate System.Security.Cryptography.X509Certificates.X509Certificate
System.Security.Policy.Publisher = {}
---@alias CS.System.Security.Policy.Publisher System.Security.Policy.Publisher
CS.System.Security.Policy.Publisher = System.Security.Policy.Publisher

---@param cert System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Security.Policy.Publisher
function System.Security.Policy.Publisher.New(cert) end
---@return System.Object
function System.Security.Policy.Publisher:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Publisher:CreateIdentityPermission(evidence) end
---@param o System.Object
---@return boolean
function System.Security.Policy.Publisher:Equals(o) end
---@return number
function System.Security.Policy.Publisher:GetHashCode() end
---@return string
function System.Security.Policy.Publisher:ToString() end

---@class System.Security.Policy.PublisherMembershipCondition : System.Object
---@field Certificate System.Security.Cryptography.X509Certificates.X509Certificate
System.Security.Policy.PublisherMembershipCondition = {}
---@alias CS.System.Security.Policy.PublisherMembershipCondition System.Security.Policy.PublisherMembershipCondition
CS.System.Security.Policy.PublisherMembershipCondition = System.Security.Policy.PublisherMembershipCondition

---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Security.Policy.PublisherMembershipCondition
function System.Security.Policy.PublisherMembershipCondition.New(certificate) end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.PublisherMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.PublisherMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.PublisherMembershipCondition:Equals(o) end
---@overload fun(self: System.Security.Policy.PublisherMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.PublisherMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.PublisherMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.PublisherMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.PublisherMembershipCondition:ToXml(level) end

---@class System.Security.Policy.AllMembershipCondition : System.Object
System.Security.Policy.AllMembershipCondition = {}
---@alias CS.System.Security.Policy.AllMembershipCondition System.Security.Policy.AllMembershipCondition
CS.System.Security.Policy.AllMembershipCondition = System.Security.Policy.AllMembershipCondition

---@return System.Security.Policy.AllMembershipCondition
function System.Security.Policy.AllMembershipCondition.New() end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.AllMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.AllMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.AllMembershipCondition:Equals(o) end
---@overload fun(self: System.Security.Policy.AllMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.AllMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.AllMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.AllMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.AllMembershipCondition:ToXml(level) end

---@class System.Security.Policy.ApplicationDirectory : System.Security.Policy.EvidenceBase
---@field Directory string
System.Security.Policy.ApplicationDirectory = {}
---@alias CS.System.Security.Policy.ApplicationDirectory System.Security.Policy.ApplicationDirectory
CS.System.Security.Policy.ApplicationDirectory = System.Security.Policy.ApplicationDirectory

---@param name string
---@return System.Security.Policy.ApplicationDirectory
function System.Security.Policy.ApplicationDirectory.New(name) end
---@return System.Object
function System.Security.Policy.ApplicationDirectory:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.ApplicationDirectory:Equals(o) end
---@return number
function System.Security.Policy.ApplicationDirectory:GetHashCode() end
---@return string
function System.Security.Policy.ApplicationDirectory:ToString() end

---@class System.Security.Policy.ApplicationDirectoryMembershipCondition : System.Object
System.Security.Policy.ApplicationDirectoryMembershipCondition = {}
---@alias CS.System.Security.Policy.ApplicationDirectoryMembershipCondition System.Security.Policy.ApplicationDirectoryMembershipCondition
CS.System.Security.Policy.ApplicationDirectoryMembershipCondition = System.Security.Policy.ApplicationDirectoryMembershipCondition

---@return System.Security.Policy.ApplicationDirectoryMembershipCondition
function System.Security.Policy.ApplicationDirectoryMembershipCondition.New() end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.ApplicationDirectoryMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.ApplicationDirectoryMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.ApplicationDirectoryMembershipCondition:Equals(o) end
---@overload fun(self: System.Security.Policy.ApplicationDirectoryMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.ApplicationDirectoryMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.ApplicationDirectoryMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.ApplicationDirectoryMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.ApplicationDirectoryMembershipCondition:ToXml(level) end

---@class System.Security.Policy.ApplicationSecurityInfo : System.Object
---@field ApplicationEvidence System.Security.Policy.Evidence
---@field ApplicationId System.ApplicationId
---@field DefaultRequestSet System.Security.PermissionSet
---@field DeploymentId System.ApplicationId
System.Security.Policy.ApplicationSecurityInfo = {}
---@alias CS.System.Security.Policy.ApplicationSecurityInfo System.Security.Policy.ApplicationSecurityInfo
CS.System.Security.Policy.ApplicationSecurityInfo = System.Security.Policy.ApplicationSecurityInfo

---@param activationContext System.ActivationContext
---@return System.Security.Policy.ApplicationSecurityInfo
function System.Security.Policy.ApplicationSecurityInfo.New(activationContext) end

---@class System.Security.Policy.ApplicationSecurityManager : System.Object
---@field ApplicationTrustManager System.Security.Policy.IApplicationTrustManager
---@field UserApplicationTrusts System.Security.Policy.ApplicationTrustCollection
System.Security.Policy.ApplicationSecurityManager = {}
---@alias CS.System.Security.Policy.ApplicationSecurityManager System.Security.Policy.ApplicationSecurityManager
CS.System.Security.Policy.ApplicationSecurityManager = System.Security.Policy.ApplicationSecurityManager

---@param activationContext System.ActivationContext
---@param context System.Security.Policy.TrustManagerContext
---@return boolean
function System.Security.Policy.ApplicationSecurityManager.DetermineApplicationTrust(activationContext, context) end

---@class System.Security.Policy.ApplicationTrust : System.Security.Policy.EvidenceBase
---@field ApplicationIdentity System.ApplicationIdentity
---@field DefaultGrantSet System.Security.Policy.PolicyStatement
---@field ExtraInfo System.Object
---@field IsApplicationTrustedToRun boolean
---@field Persist boolean
---@field FullTrustAssemblies System.Collections.Generic.IList
System.Security.Policy.ApplicationTrust = {}
---@alias CS.System.Security.Policy.ApplicationTrust System.Security.Policy.ApplicationTrust
CS.System.Security.Policy.ApplicationTrust = System.Security.Policy.ApplicationTrust

---@overload fun() : System.Security.Policy.ApplicationTrust
---@overload fun(applicationIdentity: System.ApplicationIdentity) : System.Security.Policy.ApplicationTrust
---@param defaultGrantSet System.Security.PermissionSet
---@param fullTrustAssemblies System.Collections.Generic.IEnumerable
---@return System.Security.Policy.ApplicationTrust
function System.Security.Policy.ApplicationTrust.New(defaultGrantSet, fullTrustAssemblies) end
---@param element System.Security.SecurityElement
function System.Security.Policy.ApplicationTrust:FromXml(element) end
---@return System.Security.SecurityElement
function System.Security.Policy.ApplicationTrust:ToXml() end

---@class System.Security.Policy.ApplicationTrustCollection : System.Object
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Security.Policy.ApplicationTrust
---@field Item System.Security.Policy.ApplicationTrust
System.Security.Policy.ApplicationTrustCollection = {}
---@alias CS.System.Security.Policy.ApplicationTrustCollection System.Security.Policy.ApplicationTrustCollection
CS.System.Security.Policy.ApplicationTrustCollection = System.Security.Policy.ApplicationTrustCollection

---@param trust System.Security.Policy.ApplicationTrust
---@return number
function System.Security.Policy.ApplicationTrustCollection:Add(trust) end
---@overload fun(self: System.Security.Policy.ApplicationTrustCollection, trusts: System.Security.Policy.ApplicationTrust[])
---@param trusts System.Security.Policy.ApplicationTrustCollection
function System.Security.Policy.ApplicationTrustCollection:AddRange(trusts) end
function System.Security.Policy.ApplicationTrustCollection:Clear() end
---@param array System.Security.Policy.ApplicationTrust[]
---@param index number
function System.Security.Policy.ApplicationTrustCollection:CopyTo(array, index) end
---@param applicationIdentity System.ApplicationIdentity
---@param versionMatch System.Security.Policy.ApplicationVersionMatch
---@return System.Security.Policy.ApplicationTrustCollection
function System.Security.Policy.ApplicationTrustCollection:Find(applicationIdentity, versionMatch) end
---@return System.Security.Policy.ApplicationTrustEnumerator
function System.Security.Policy.ApplicationTrustCollection:GetEnumerator() end
---@overload fun(self: System.Security.Policy.ApplicationTrustCollection, trust: System.Security.Policy.ApplicationTrust)
---@param applicationIdentity System.ApplicationIdentity
---@param versionMatch System.Security.Policy.ApplicationVersionMatch
function System.Security.Policy.ApplicationTrustCollection:Remove(applicationIdentity, versionMatch) end
---@overload fun(self: System.Security.Policy.ApplicationTrustCollection, trusts: System.Security.Policy.ApplicationTrust[])
---@param trusts System.Security.Policy.ApplicationTrustCollection
function System.Security.Policy.ApplicationTrustCollection:RemoveRange(trusts) end

---@class System.Security.Policy.ApplicationTrustEnumerator : System.Object
---@field Current System.Security.Policy.ApplicationTrust
System.Security.Policy.ApplicationTrustEnumerator = {}
---@alias CS.System.Security.Policy.ApplicationTrustEnumerator System.Security.Policy.ApplicationTrustEnumerator
CS.System.Security.Policy.ApplicationTrustEnumerator = System.Security.Policy.ApplicationTrustEnumerator

function System.Security.Policy.ApplicationTrustEnumerator:Reset() end
---@return boolean
function System.Security.Policy.ApplicationTrustEnumerator:MoveNext() end

---@class System.Security.Policy.CodeConnectAccess : System.Object
---@field AnyScheme string
---@field DefaultPort number
---@field OriginPort number
---@field OriginScheme string
---@field Port number
---@field Scheme string
System.Security.Policy.CodeConnectAccess = {}
---@alias CS.System.Security.Policy.CodeConnectAccess System.Security.Policy.CodeConnectAccess
CS.System.Security.Policy.CodeConnectAccess = System.Security.Policy.CodeConnectAccess

---@param allowScheme string
---@param allowPort number
---@return System.Security.Policy.CodeConnectAccess
function System.Security.Policy.CodeConnectAccess.New(allowScheme, allowPort) end
---@param allowPort number
---@return System.Security.Policy.CodeConnectAccess
function System.Security.Policy.CodeConnectAccess.CreateAnySchemeAccess(allowPort) end
---@param allowPort number
---@return System.Security.Policy.CodeConnectAccess
function System.Security.Policy.CodeConnectAccess.CreateOriginSchemeAccess(allowPort) end
---@param o System.Object
---@return boolean
function System.Security.Policy.CodeConnectAccess:Equals(o) end
---@return number
function System.Security.Policy.CodeConnectAccess:GetHashCode() end

---@class System.Security.Policy.CodeGroup : System.Object
---@field MergeLogic string
---@field PolicyStatement System.Security.Policy.PolicyStatement
---@field Description string
---@field MembershipCondition System.Security.Policy.IMembershipCondition
---@field Name string
---@field Children System.Collections.IList
---@field AttributeString string
---@field PermissionSetName string
System.Security.Policy.CodeGroup = {}
---@alias CS.System.Security.Policy.CodeGroup System.Security.Policy.CodeGroup
CS.System.Security.Policy.CodeGroup = System.Security.Policy.CodeGroup

---@return System.Security.Policy.CodeGroup
function System.Security.Policy.CodeGroup:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.CodeGroup:Resolve(evidence) end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.CodeGroup:ResolveMatchingCodeGroups(evidence) end
---@param group System.Security.Policy.CodeGroup
function System.Security.Policy.CodeGroup:AddChild(group) end
---@overload fun(self: System.Security.Policy.CodeGroup, o: System.Object) : boolean
---@param cg System.Security.Policy.CodeGroup
---@param compareChildren boolean
---@return boolean
function System.Security.Policy.CodeGroup:Equals(cg, compareChildren) end
---@param group System.Security.Policy.CodeGroup
function System.Security.Policy.CodeGroup:RemoveChild(group) end
---@return number
function System.Security.Policy.CodeGroup:GetHashCode() end
---@overload fun(self: System.Security.Policy.CodeGroup, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.CodeGroup:FromXml(e, level) end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.CodeGroup:ToXml(level) end

---@class System.Security.Policy.DefaultPolicies : System.Object
---@field FullTrust System.Security.PermissionSet
---@field LocalIntranet System.Security.PermissionSet
---@field Internet System.Security.PermissionSet
---@field SkipVerification System.Security.PermissionSet
---@field Execution System.Security.PermissionSet
---@field Nothing System.Security.PermissionSet
---@field Everything System.Security.PermissionSet
System.Security.Policy.DefaultPolicies = {}
---@alias CS.System.Security.Policy.DefaultPolicies System.Security.Policy.DefaultPolicies
CS.System.Security.Policy.DefaultPolicies = System.Security.Policy.DefaultPolicies

---@param name string
---@return System.Security.PermissionSet
function System.Security.Policy.DefaultPolicies.GetSpecialPermissionSet(name) end
---@param name string
---@param key System.Security.Policy.DefaultPolicies.Key
---@return System.Security.Policy.StrongNameMembershipCondition
function System.Security.Policy.DefaultPolicies.FullTrustMembership(name, key) end

---@class System.Security.Policy.DefaultPolicies.ReservedNames : System.Object
---@field FullTrust string
---@field LocalIntranet string
---@field Internet string
---@field SkipVerification string
---@field Execution string
---@field Nothing string
---@field Everything string
System.Security.Policy.DefaultPolicies.ReservedNames = {}
---@alias CS.System.Security.Policy.DefaultPolicies.ReservedNames System.Security.Policy.DefaultPolicies.ReservedNames
CS.System.Security.Policy.DefaultPolicies.ReservedNames = System.Security.Policy.DefaultPolicies.ReservedNames

---@param name string
---@return boolean
function System.Security.Policy.DefaultPolicies.ReservedNames.IsReserved(name) end

---@class System.Security.Policy.DefaultPolicies.Key
---@field Ecma System.Security.Policy.DefaultPolicies.Key
---@field MsFinal System.Security.Policy.DefaultPolicies.Key
System.Security.Policy.DefaultPolicies.Key = {}
---@alias CS.System.Security.Policy.DefaultPolicies.Key System.Security.Policy.DefaultPolicies.Key
CS.System.Security.Policy.DefaultPolicies.Key = System.Security.Policy.DefaultPolicies.Key


---@class System.Security.Policy.Evidence : System.Object
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field Locked boolean
---@field SyncRoot System.Object
System.Security.Policy.Evidence = {}
---@alias CS.System.Security.Policy.Evidence System.Security.Policy.Evidence
CS.System.Security.Policy.Evidence = System.Security.Policy.Evidence

---@overload fun() : System.Security.Policy.Evidence
---@overload fun(evidence: System.Security.Policy.Evidence) : System.Security.Policy.Evidence
---@overload fun(hostEvidence: System.Security.Policy.EvidenceBase[], assemblyEvidence: System.Security.Policy.EvidenceBase[]) : System.Security.Policy.Evidence
---@param hostEvidence System.Object[]
---@param assemblyEvidence System.Object[]
---@return System.Security.Policy.Evidence
function System.Security.Policy.Evidence.New(hostEvidence, assemblyEvidence) end
function System.Security.Policy.Evidence:Clear() end
---@return System.Security.Policy.Evidence
function System.Security.Policy.Evidence:Clone() end
---@return System.Collections.IEnumerator
function System.Security.Policy.Evidence:GetAssemblyEnumerator() end
---@return System.Collections.IEnumerator
function System.Security.Policy.Evidence:GetHostEnumerator() end
---@param evidence System.Security.Policy.Evidence
function System.Security.Policy.Evidence:Merge(evidence) end
---@param t System.Type
function System.Security.Policy.Evidence:RemoveType(t) end

---@class System.Security.Policy.Evidence.EvidenceEnumerator : System.Object
---@field Current System.Object
System.Security.Policy.Evidence.EvidenceEnumerator = {}
---@alias CS.System.Security.Policy.Evidence.EvidenceEnumerator System.Security.Policy.Evidence.EvidenceEnumerator
CS.System.Security.Policy.Evidence.EvidenceEnumerator = System.Security.Policy.Evidence.EvidenceEnumerator

---@param hostenum System.Collections.IEnumerator
---@param assemblyenum System.Collections.IEnumerator
---@return System.Security.Policy.Evidence.EvidenceEnumerator
function System.Security.Policy.Evidence.EvidenceEnumerator.New(hostenum, assemblyenum) end
---@return boolean
function System.Security.Policy.Evidence.EvidenceEnumerator:MoveNext() end
function System.Security.Policy.Evidence.EvidenceEnumerator:Reset() end

---@class System.Security.Policy.EvidenceBase : System.Object
System.Security.Policy.EvidenceBase = {}
---@alias CS.System.Security.Policy.EvidenceBase System.Security.Policy.EvidenceBase
CS.System.Security.Policy.EvidenceBase = System.Security.Policy.EvidenceBase

---@return System.Security.Policy.EvidenceBase
function System.Security.Policy.EvidenceBase:Clone() end

---@class System.Security.Policy.FileCodeGroup : System.Security.Policy.CodeGroup
---@field MergeLogic string
---@field AttributeString string
---@field PermissionSetName string
System.Security.Policy.FileCodeGroup = {}
---@alias CS.System.Security.Policy.FileCodeGroup System.Security.Policy.FileCodeGroup
CS.System.Security.Policy.FileCodeGroup = System.Security.Policy.FileCodeGroup

---@param membershipCondition System.Security.Policy.IMembershipCondition
---@param access System.Security.Permissions.FileIOPermissionAccess
---@return System.Security.Policy.FileCodeGroup
function System.Security.Policy.FileCodeGroup.New(membershipCondition, access) end
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FileCodeGroup:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.FileCodeGroup:Resolve(evidence) end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FileCodeGroup:ResolveMatchingCodeGroups(evidence) end
---@param o System.Object
---@return boolean
function System.Security.Policy.FileCodeGroup:Equals(o) end
---@return number
function System.Security.Policy.FileCodeGroup:GetHashCode() end

---@class System.Security.Policy.FirstMatchCodeGroup : System.Security.Policy.CodeGroup
---@field MergeLogic string
System.Security.Policy.FirstMatchCodeGroup = {}
---@alias CS.System.Security.Policy.FirstMatchCodeGroup System.Security.Policy.FirstMatchCodeGroup
CS.System.Security.Policy.FirstMatchCodeGroup = System.Security.Policy.FirstMatchCodeGroup

---@param membershipCondition System.Security.Policy.IMembershipCondition
---@param policy System.Security.Policy.PolicyStatement
---@return System.Security.Policy.FirstMatchCodeGroup
function System.Security.Policy.FirstMatchCodeGroup.New(membershipCondition, policy) end
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FirstMatchCodeGroup:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.FirstMatchCodeGroup:Resolve(evidence) end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.FirstMatchCodeGroup:ResolveMatchingCodeGroups(evidence) end

---@class System.Security.Policy.GacInstalled : System.Security.Policy.EvidenceBase
System.Security.Policy.GacInstalled = {}
---@alias CS.System.Security.Policy.GacInstalled System.Security.Policy.GacInstalled
CS.System.Security.Policy.GacInstalled = System.Security.Policy.GacInstalled

---@return System.Security.Policy.GacInstalled
function System.Security.Policy.GacInstalled.New() end
---@return System.Object
function System.Security.Policy.GacInstalled:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.GacInstalled:CreateIdentityPermission(evidence) end
---@param o System.Object
---@return boolean
function System.Security.Policy.GacInstalled:Equals(o) end
---@return number
function System.Security.Policy.GacInstalled:GetHashCode() end
---@return string
function System.Security.Policy.GacInstalled:ToString() end

---@class System.Security.Policy.GacMembershipCondition : System.Object
System.Security.Policy.GacMembershipCondition = {}
---@alias CS.System.Security.Policy.GacMembershipCondition System.Security.Policy.GacMembershipCondition
CS.System.Security.Policy.GacMembershipCondition = System.Security.Policy.GacMembershipCondition

---@return System.Security.Policy.GacMembershipCondition
function System.Security.Policy.GacMembershipCondition.New() end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.GacMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.GacMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.GacMembershipCondition:Equals(o) end
---@overload fun(self: System.Security.Policy.GacMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.GacMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.GacMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.GacMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.GacMembershipCondition:ToXml(level) end

---@class System.Security.Policy.Hash : System.Security.Policy.EvidenceBase
---@field MD5 System.Byte[]
---@field SHA1 System.Byte[]
---@field SHA256 System.Byte[]
System.Security.Policy.Hash = {}
---@alias CS.System.Security.Policy.Hash System.Security.Policy.Hash
CS.System.Security.Policy.Hash = System.Security.Policy.Hash

---@param assembly System.Reflection.Assembly
---@return System.Security.Policy.Hash
function System.Security.Policy.Hash.New(assembly) end
---@param md5 System.Byte[]
---@return System.Security.Policy.Hash
function System.Security.Policy.Hash.CreateMD5(md5) end
---@param sha1 System.Byte[]
---@return System.Security.Policy.Hash
function System.Security.Policy.Hash.CreateSHA1(sha1) end
---@param sha256 System.Byte[]
---@return System.Security.Policy.Hash
function System.Security.Policy.Hash.CreateSHA256(sha256) end
---@param hashAlg System.Security.Cryptography.HashAlgorithm
---@return System.Byte[]
function System.Security.Policy.Hash:GenerateHash(hashAlg) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Security.Policy.Hash:GetObjectData(info, context) end
---@return string
function System.Security.Policy.Hash:ToString() end

---@class System.Security.Policy.HashMembershipCondition : System.Object
---@field HashAlgorithm System.Security.Cryptography.HashAlgorithm
---@field HashValue System.Byte[]
System.Security.Policy.HashMembershipCondition = {}
---@alias CS.System.Security.Policy.HashMembershipCondition System.Security.Policy.HashMembershipCondition
CS.System.Security.Policy.HashMembershipCondition = System.Security.Policy.HashMembershipCondition

---@param hashAlg System.Security.Cryptography.HashAlgorithm
---@param value System.Byte[]
---@return System.Security.Policy.HashMembershipCondition
function System.Security.Policy.HashMembershipCondition.New(hashAlg, value) end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.HashMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.HashMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.HashMembershipCondition:Equals(o) end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.HashMembershipCondition:ToXml(level) end
---@overload fun(self: System.Security.Policy.HashMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.HashMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.HashMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.HashMembershipCondition:ToString() end

---@class System.Security.Policy.IApplicationTrustManager
System.Security.Policy.IApplicationTrustManager = {}
---@alias CS.System.Security.Policy.IApplicationTrustManager System.Security.Policy.IApplicationTrustManager
CS.System.Security.Policy.IApplicationTrustManager = System.Security.Policy.IApplicationTrustManager

---@param activationContext System.ActivationContext
---@param context System.Security.Policy.TrustManagerContext
---@return System.Security.Policy.ApplicationTrust
function System.Security.Policy.IApplicationTrustManager:DetermineApplicationTrust(activationContext, context) end

---@class System.Security.Policy.IBuiltInEvidence
System.Security.Policy.IBuiltInEvidence = {}
---@alias CS.System.Security.Policy.IBuiltInEvidence System.Security.Policy.IBuiltInEvidence
CS.System.Security.Policy.IBuiltInEvidence = System.Security.Policy.IBuiltInEvidence

---@param verbose boolean
---@return number
function System.Security.Policy.IBuiltInEvidence:GetRequiredSize(verbose) end
---@param buffer System.Char[]
---@param position number
---@return number
function System.Security.Policy.IBuiltInEvidence:InitFromBuffer(buffer, position) end
---@param buffer System.Char[]
---@param position number
---@param verbose boolean
---@return number
function System.Security.Policy.IBuiltInEvidence:OutputToBuffer(buffer, position, verbose) end

---@class System.Security.Policy.IConstantMembershipCondition
System.Security.Policy.IConstantMembershipCondition = {}
---@alias CS.System.Security.Policy.IConstantMembershipCondition System.Security.Policy.IConstantMembershipCondition
CS.System.Security.Policy.IConstantMembershipCondition = System.Security.Policy.IConstantMembershipCondition


---@class System.Security.Policy.MembershipConditionHelper : System.Object
System.Security.Policy.MembershipConditionHelper = {}
---@alias CS.System.Security.Policy.MembershipConditionHelper System.Security.Policy.MembershipConditionHelper
CS.System.Security.Policy.MembershipConditionHelper = System.Security.Policy.MembershipConditionHelper

---@return System.Security.Policy.MembershipConditionHelper
function System.Security.Policy.MembershipConditionHelper.New() end

---@class System.Security.Policy.MonoTrustManager : System.Object
System.Security.Policy.MonoTrustManager = {}
---@alias CS.System.Security.Policy.MonoTrustManager System.Security.Policy.MonoTrustManager
CS.System.Security.Policy.MonoTrustManager = System.Security.Policy.MonoTrustManager

---@return System.Security.Policy.MonoTrustManager
function System.Security.Policy.MonoTrustManager.New() end
---@param activationContext System.ActivationContext
---@param context System.Security.Policy.TrustManagerContext
---@return System.Security.Policy.ApplicationTrust
function System.Security.Policy.MonoTrustManager:DetermineApplicationTrust(activationContext, context) end
---@param e System.Security.SecurityElement
function System.Security.Policy.MonoTrustManager:FromXml(e) end
---@return System.Security.SecurityElement
function System.Security.Policy.MonoTrustManager:ToXml() end

---@class System.Security.Policy.NetCodeGroup : System.Security.Policy.CodeGroup
---@field AbsentOriginScheme string
---@field AnyOtherOriginScheme string
---@field AttributeString string
---@field MergeLogic string
---@field PermissionSetName string
System.Security.Policy.NetCodeGroup = {}
---@alias CS.System.Security.Policy.NetCodeGroup System.Security.Policy.NetCodeGroup
CS.System.Security.Policy.NetCodeGroup = System.Security.Policy.NetCodeGroup

---@param membershipCondition System.Security.Policy.IMembershipCondition
---@return System.Security.Policy.NetCodeGroup
function System.Security.Policy.NetCodeGroup.New(membershipCondition) end
---@param originScheme string
---@param connectAccess System.Security.Policy.CodeConnectAccess
function System.Security.Policy.NetCodeGroup:AddConnectAccess(originScheme, connectAccess) end
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.NetCodeGroup:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.NetCodeGroup:Equals(o) end
---@return System.Collections.DictionaryEntry[]
function System.Security.Policy.NetCodeGroup:GetConnectAccessRules() end
---@return number
function System.Security.Policy.NetCodeGroup:GetHashCode() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.NetCodeGroup:Resolve(evidence) end
function System.Security.Policy.NetCodeGroup:ResetConnectAccess() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.NetCodeGroup:ResolveMatchingCodeGroups(evidence) end

---@class System.Security.Policy.PermissionRequestEvidence : System.Security.Policy.EvidenceBase
---@field DeniedPermissions System.Security.PermissionSet
---@field OptionalPermissions System.Security.PermissionSet
---@field RequestedPermissions System.Security.PermissionSet
System.Security.Policy.PermissionRequestEvidence = {}
---@alias CS.System.Security.Policy.PermissionRequestEvidence System.Security.Policy.PermissionRequestEvidence
CS.System.Security.Policy.PermissionRequestEvidence = System.Security.Policy.PermissionRequestEvidence

---@param request System.Security.PermissionSet
---@param optional System.Security.PermissionSet
---@param denied System.Security.PermissionSet
---@return System.Security.Policy.PermissionRequestEvidence
function System.Security.Policy.PermissionRequestEvidence.New(request, optional, denied) end
---@return System.Security.Policy.PermissionRequestEvidence
function System.Security.Policy.PermissionRequestEvidence:Copy() end
---@return string
function System.Security.Policy.PermissionRequestEvidence:ToString() end

---@class System.Security.Policy.PolicyException : System.SystemException
System.Security.Policy.PolicyException = {}
---@alias CS.System.Security.Policy.PolicyException System.Security.Policy.PolicyException
CS.System.Security.Policy.PolicyException = System.Security.Policy.PolicyException

---@overload fun() : System.Security.Policy.PolicyException
---@overload fun(message: string) : System.Security.Policy.PolicyException
---@param message string
---@param exception System.Exception
---@return System.Security.Policy.PolicyException
function System.Security.Policy.PolicyException.New(message, exception) end

---@class System.Security.Policy.PolicyLevel : System.Object
---@field Label string
---@field NamedPermissionSets System.Collections.IList
---@field RootCodeGroup System.Security.Policy.CodeGroup
---@field StoreLocation string
---@field Type System.Security.PolicyLevelType
System.Security.Policy.PolicyLevel = {}
---@alias CS.System.Security.Policy.PolicyLevel System.Security.Policy.PolicyLevel
CS.System.Security.Policy.PolicyLevel = System.Security.Policy.PolicyLevel

---@return System.Security.Policy.PolicyLevel
function System.Security.Policy.PolicyLevel.CreateAppDomainLevel() end
---@param permSet System.Security.NamedPermissionSet
function System.Security.Policy.PolicyLevel:AddNamedPermissionSet(permSet) end
---@param name string
---@param pSet System.Security.PermissionSet
---@return System.Security.NamedPermissionSet
function System.Security.Policy.PolicyLevel:ChangeNamedPermissionSet(name, pSet) end
---@param e System.Security.SecurityElement
function System.Security.Policy.PolicyLevel:FromXml(e) end
---@param name string
---@return System.Security.NamedPermissionSet
function System.Security.Policy.PolicyLevel:GetNamedPermissionSet(name) end
function System.Security.Policy.PolicyLevel:Recover() end
---@overload fun(self: System.Security.Policy.PolicyLevel, permSet: System.Security.NamedPermissionSet) : System.Security.NamedPermissionSet
---@param name string
---@return System.Security.NamedPermissionSet
function System.Security.Policy.PolicyLevel:RemoveNamedPermissionSet(name) end
function System.Security.Policy.PolicyLevel:Reset() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.PolicyLevel:Resolve(evidence) end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.PolicyLevel:ResolveMatchingCodeGroups(evidence) end
---@return System.Security.SecurityElement
function System.Security.Policy.PolicyLevel:ToXml() end

---@class System.Security.Policy.PolicyStatement : System.Object
---@field PermissionSet System.Security.PermissionSet
---@field Attributes System.Security.Policy.PolicyStatementAttribute
---@field AttributeString string
System.Security.Policy.PolicyStatement = {}
---@alias CS.System.Security.Policy.PolicyStatement System.Security.Policy.PolicyStatement
CS.System.Security.Policy.PolicyStatement = System.Security.Policy.PolicyStatement

---@overload fun(permSet: System.Security.PermissionSet) : System.Security.Policy.PolicyStatement
---@param permSet System.Security.PermissionSet
---@param attributes System.Security.Policy.PolicyStatementAttribute
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.PolicyStatement.New(permSet, attributes) end
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.PolicyStatement:Copy() end
---@overload fun(self: System.Security.Policy.PolicyStatement, et: System.Security.SecurityElement)
---@param et System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.PolicyStatement:FromXml(et, level) end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.PolicyStatement:ToXml(level) end
---@param obj System.Object
---@return boolean
function System.Security.Policy.PolicyStatement:Equals(obj) end
---@return number
function System.Security.Policy.PolicyStatement:GetHashCode() end

---@class System.Security.Policy.Site : System.Security.Policy.EvidenceBase
---@field Name string
System.Security.Policy.Site = {}
---@alias CS.System.Security.Policy.Site System.Security.Policy.Site
CS.System.Security.Policy.Site = System.Security.Policy.Site

---@param name string
---@return System.Security.Policy.Site
function System.Security.Policy.Site.New(name) end
---@param url string
---@return System.Security.Policy.Site
function System.Security.Policy.Site.CreateFromUrl(url) end
---@return System.Object
function System.Security.Policy.Site:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Site:CreateIdentityPermission(evidence) end
---@param o System.Object
---@return boolean
function System.Security.Policy.Site:Equals(o) end
---@return number
function System.Security.Policy.Site:GetHashCode() end
---@return string
function System.Security.Policy.Site:ToString() end

---@class System.Security.Policy.SiteMembershipCondition : System.Object
---@field Site string
System.Security.Policy.SiteMembershipCondition = {}
---@alias CS.System.Security.Policy.SiteMembershipCondition System.Security.Policy.SiteMembershipCondition
CS.System.Security.Policy.SiteMembershipCondition = System.Security.Policy.SiteMembershipCondition

---@param site string
---@return System.Security.Policy.SiteMembershipCondition
function System.Security.Policy.SiteMembershipCondition.New(site) end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.SiteMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.SiteMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.SiteMembershipCondition:Equals(o) end
---@overload fun(self: System.Security.Policy.SiteMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.SiteMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.SiteMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.SiteMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.SiteMembershipCondition:ToXml(level) end

---@class System.Security.Policy.StrongName : System.Security.Policy.EvidenceBase
---@field Name string
---@field PublicKey System.Security.Permissions.StrongNamePublicKeyBlob
---@field Version System.Version
System.Security.Policy.StrongName = {}
---@alias CS.System.Security.Policy.StrongName System.Security.Policy.StrongName
CS.System.Security.Policy.StrongName = System.Security.Policy.StrongName

---@param blob System.Security.Permissions.StrongNamePublicKeyBlob
---@param name string
---@param version System.Version
---@return System.Security.Policy.StrongName
function System.Security.Policy.StrongName.New(blob, name, version) end
---@return System.Object
function System.Security.Policy.StrongName:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.StrongName:CreateIdentityPermission(evidence) end
---@param o System.Object
---@return boolean
function System.Security.Policy.StrongName:Equals(o) end
---@return number
function System.Security.Policy.StrongName:GetHashCode() end
---@return string
function System.Security.Policy.StrongName:ToString() end

---@class System.Security.Policy.StrongNameMembershipCondition : System.Object
---@field Name string
---@field Version System.Version
---@field PublicKey System.Security.Permissions.StrongNamePublicKeyBlob
System.Security.Policy.StrongNameMembershipCondition = {}
---@alias CS.System.Security.Policy.StrongNameMembershipCondition System.Security.Policy.StrongNameMembershipCondition
CS.System.Security.Policy.StrongNameMembershipCondition = System.Security.Policy.StrongNameMembershipCondition

---@param blob System.Security.Permissions.StrongNamePublicKeyBlob
---@param name string
---@param version System.Version
---@return System.Security.Policy.StrongNameMembershipCondition
function System.Security.Policy.StrongNameMembershipCondition.New(blob, name, version) end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.StrongNameMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.StrongNameMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.StrongNameMembershipCondition:Equals(o) end
---@return number
function System.Security.Policy.StrongNameMembershipCondition:GetHashCode() end
---@overload fun(self: System.Security.Policy.StrongNameMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.StrongNameMembershipCondition:FromXml(e, level) end
---@return string
function System.Security.Policy.StrongNameMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.StrongNameMembershipCondition:ToXml(level) end

---@class System.Security.Policy.TrustManagerContext : System.Object
---@field IgnorePersistedDecision boolean
---@field KeepAlive boolean
---@field NoPrompt boolean
---@field Persist boolean
---@field PreviousApplicationIdentity System.ApplicationIdentity
---@field UIContext System.Security.Policy.TrustManagerUIContext
System.Security.Policy.TrustManagerContext = {}
---@alias CS.System.Security.Policy.TrustManagerContext System.Security.Policy.TrustManagerContext
CS.System.Security.Policy.TrustManagerContext = System.Security.Policy.TrustManagerContext

---@overload fun() : System.Security.Policy.TrustManagerContext
---@param uiContext System.Security.Policy.TrustManagerUIContext
---@return System.Security.Policy.TrustManagerContext
function System.Security.Policy.TrustManagerContext.New(uiContext) end

---@class System.Security.Policy.TrustManagerUIContext
---@field Install System.Security.Policy.TrustManagerUIContext
---@field Upgrade System.Security.Policy.TrustManagerUIContext
---@field Run System.Security.Policy.TrustManagerUIContext
System.Security.Policy.TrustManagerUIContext = {}
---@alias CS.System.Security.Policy.TrustManagerUIContext System.Security.Policy.TrustManagerUIContext
CS.System.Security.Policy.TrustManagerUIContext = System.Security.Policy.TrustManagerUIContext


---@class System.Security.Policy.UnionCodeGroup : System.Security.Policy.CodeGroup
---@field MergeLogic string
System.Security.Policy.UnionCodeGroup = {}
---@alias CS.System.Security.Policy.UnionCodeGroup System.Security.Policy.UnionCodeGroup
CS.System.Security.Policy.UnionCodeGroup = System.Security.Policy.UnionCodeGroup

---@param membershipCondition System.Security.Policy.IMembershipCondition
---@param policy System.Security.Policy.PolicyStatement
---@return System.Security.Policy.UnionCodeGroup
function System.Security.Policy.UnionCodeGroup.New(membershipCondition, policy) end
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.UnionCodeGroup:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.PolicyStatement
function System.Security.Policy.UnionCodeGroup:Resolve(evidence) end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.Policy.CodeGroup
function System.Security.Policy.UnionCodeGroup:ResolveMatchingCodeGroups(evidence) end

---@class System.Security.Policy.Url : System.Security.Policy.EvidenceBase
---@field Value string
System.Security.Policy.Url = {}
---@alias CS.System.Security.Policy.Url System.Security.Policy.Url
CS.System.Security.Policy.Url = System.Security.Policy.Url

---@param name string
---@return System.Security.Policy.Url
function System.Security.Policy.Url.New(name) end
---@return System.Object
function System.Security.Policy.Url:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Url:CreateIdentityPermission(evidence) end
---@param o System.Object
---@return boolean
function System.Security.Policy.Url:Equals(o) end
---@return number
function System.Security.Policy.Url:GetHashCode() end
---@return string
function System.Security.Policy.Url:ToString() end

---@class System.Security.Policy.UrlMembershipCondition : System.Object
---@field Url string
System.Security.Policy.UrlMembershipCondition = {}
---@alias CS.System.Security.Policy.UrlMembershipCondition System.Security.Policy.UrlMembershipCondition
CS.System.Security.Policy.UrlMembershipCondition = System.Security.Policy.UrlMembershipCondition

---@param url string
---@return System.Security.Policy.UrlMembershipCondition
function System.Security.Policy.UrlMembershipCondition.New(url) end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.UrlMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.UrlMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.UrlMembershipCondition:Equals(o) end
---@overload fun(self: System.Security.Policy.UrlMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.UrlMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.UrlMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.UrlMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.UrlMembershipCondition:ToXml(level) end

---@class System.Security.Policy.Zone : System.Security.Policy.EvidenceBase
---@field SecurityZone System.Security.SecurityZone
System.Security.Policy.Zone = {}
---@alias CS.System.Security.Policy.Zone System.Security.Policy.Zone
CS.System.Security.Policy.Zone = System.Security.Policy.Zone

---@param zone System.Security.SecurityZone
---@return System.Security.Policy.Zone
function System.Security.Policy.Zone.New(zone) end
---@param url string
---@return System.Security.Policy.Zone
function System.Security.Policy.Zone.CreateFromUrl(url) end
---@return System.Object
function System.Security.Policy.Zone:Copy() end
---@param evidence System.Security.Policy.Evidence
---@return System.Security.IPermission
function System.Security.Policy.Zone:CreateIdentityPermission(evidence) end
---@param o System.Object
---@return boolean
function System.Security.Policy.Zone:Equals(o) end
---@return number
function System.Security.Policy.Zone:GetHashCode() end
---@return string
function System.Security.Policy.Zone:ToString() end

---@class System.Security.Policy.ZoneMembershipCondition : System.Object
---@field SecurityZone System.Security.SecurityZone
System.Security.Policy.ZoneMembershipCondition = {}
---@alias CS.System.Security.Policy.ZoneMembershipCondition System.Security.Policy.ZoneMembershipCondition
CS.System.Security.Policy.ZoneMembershipCondition = System.Security.Policy.ZoneMembershipCondition

---@param zone System.Security.SecurityZone
---@return System.Security.Policy.ZoneMembershipCondition
function System.Security.Policy.ZoneMembershipCondition.New(zone) end
---@param evidence System.Security.Policy.Evidence
---@return boolean
function System.Security.Policy.ZoneMembershipCondition:Check(evidence) end
---@return System.Security.Policy.IMembershipCondition
function System.Security.Policy.ZoneMembershipCondition:Copy() end
---@param o System.Object
---@return boolean
function System.Security.Policy.ZoneMembershipCondition:Equals(o) end
---@overload fun(self: System.Security.Policy.ZoneMembershipCondition, e: System.Security.SecurityElement)
---@param e System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
function System.Security.Policy.ZoneMembershipCondition:FromXml(e, level) end
---@return number
function System.Security.Policy.ZoneMembershipCondition:GetHashCode() end
---@return string
function System.Security.Policy.ZoneMembershipCondition:ToString() end
---@overload fun() : System.Security.SecurityElement
---@param level System.Security.Policy.PolicyLevel
---@return System.Security.SecurityElement
function System.Security.Policy.ZoneMembershipCondition:ToXml(level) end

---@class System.Security.Permissions.FileDialogPermissionAccess
---@field None System.Security.Permissions.FileDialogPermissionAccess
---@field Open System.Security.Permissions.FileDialogPermissionAccess
---@field OpenSave System.Security.Permissions.FileDialogPermissionAccess
---@field Save System.Security.Permissions.FileDialogPermissionAccess
System.Security.Permissions.FileDialogPermissionAccess = {}
---@alias CS.System.Security.Permissions.FileDialogPermissionAccess System.Security.Permissions.FileDialogPermissionAccess
CS.System.Security.Permissions.FileDialogPermissionAccess = System.Security.Permissions.FileDialogPermissionAccess


---@class System.Security.Permissions.HostProtectionResource
---@field All System.Security.Permissions.HostProtectionResource
---@field ExternalProcessMgmt System.Security.Permissions.HostProtectionResource
---@field ExternalThreading System.Security.Permissions.HostProtectionResource
---@field MayLeakOnAbort System.Security.Permissions.HostProtectionResource
---@field None System.Security.Permissions.HostProtectionResource
---@field SecurityInfrastructure System.Security.Permissions.HostProtectionResource
---@field SelfAffectingProcessMgmt System.Security.Permissions.HostProtectionResource
---@field SelfAffectingThreading System.Security.Permissions.HostProtectionResource
---@field SharedState System.Security.Permissions.HostProtectionResource
---@field Synchronization System.Security.Permissions.HostProtectionResource
---@field UI System.Security.Permissions.HostProtectionResource
System.Security.Permissions.HostProtectionResource = {}
---@alias CS.System.Security.Permissions.HostProtectionResource System.Security.Permissions.HostProtectionResource
CS.System.Security.Permissions.HostProtectionResource = System.Security.Permissions.HostProtectionResource


---@class System.Security.Permissions.IUnrestrictedPermission
System.Security.Permissions.IUnrestrictedPermission = {}
---@alias CS.System.Security.Permissions.IUnrestrictedPermission System.Security.Permissions.IUnrestrictedPermission
CS.System.Security.Permissions.IUnrestrictedPermission = System.Security.Permissions.IUnrestrictedPermission

---@return boolean
function System.Security.Permissions.IUnrestrictedPermission:IsUnrestricted() end

---@class System.Security.Permissions.IsolatedStorageContainment
---@field None System.Security.Permissions.IsolatedStorageContainment
---@field DomainIsolationByUser System.Security.Permissions.IsolatedStorageContainment
---@field ApplicationIsolationByUser System.Security.Permissions.IsolatedStorageContainment
---@field AssemblyIsolationByUser System.Security.Permissions.IsolatedStorageContainment
---@field DomainIsolationByMachine System.Security.Permissions.IsolatedStorageContainment
---@field AssemblyIsolationByMachine System.Security.Permissions.IsolatedStorageContainment
---@field ApplicationIsolationByMachine System.Security.Permissions.IsolatedStorageContainment
---@field DomainIsolationByRoamingUser System.Security.Permissions.IsolatedStorageContainment
---@field AssemblyIsolationByRoamingUser System.Security.Permissions.IsolatedStorageContainment
---@field ApplicationIsolationByRoamingUser System.Security.Permissions.IsolatedStorageContainment
---@field AdministerIsolatedStorageByUser System.Security.Permissions.IsolatedStorageContainment
---@field UnrestrictedIsolatedStorage System.Security.Permissions.IsolatedStorageContainment
System.Security.Permissions.IsolatedStorageContainment = {}
---@alias CS.System.Security.Permissions.IsolatedStorageContainment System.Security.Permissions.IsolatedStorageContainment
CS.System.Security.Permissions.IsolatedStorageContainment = System.Security.Permissions.IsolatedStorageContainment


---@class System.Security.Permissions.PermissionState
---@field None System.Security.Permissions.PermissionState
---@field Unrestricted System.Security.Permissions.PermissionState
System.Security.Permissions.PermissionState = {}
---@alias CS.System.Security.Permissions.PermissionState System.Security.Permissions.PermissionState
CS.System.Security.Permissions.PermissionState = System.Security.Permissions.PermissionState


---@class System.Security.Permissions.ReflectionPermissionFlag
---@field MemberAccess System.Security.Permissions.ReflectionPermissionFlag
---@field NoFlags System.Security.Permissions.ReflectionPermissionFlag
---@field RestrictedMemberAccess System.Security.Permissions.ReflectionPermissionFlag
System.Security.Permissions.ReflectionPermissionFlag = {}
---@alias CS.System.Security.Permissions.ReflectionPermissionFlag System.Security.Permissions.ReflectionPermissionFlag
CS.System.Security.Permissions.ReflectionPermissionFlag = System.Security.Permissions.ReflectionPermissionFlag


---@class System.Security.Permissions.RegistryPermissionAccess
---@field AllAccess System.Security.Permissions.RegistryPermissionAccess
---@field Create System.Security.Permissions.RegistryPermissionAccess
---@field NoAccess System.Security.Permissions.RegistryPermissionAccess
---@field Read System.Security.Permissions.RegistryPermissionAccess
---@field Write System.Security.Permissions.RegistryPermissionAccess
System.Security.Permissions.RegistryPermissionAccess = {}
---@alias CS.System.Security.Permissions.RegistryPermissionAccess System.Security.Permissions.RegistryPermissionAccess
CS.System.Security.Permissions.RegistryPermissionAccess = System.Security.Permissions.RegistryPermissionAccess


---@class System.Security.Permissions.UIPermissionClipboard
---@field AllClipboard System.Security.Permissions.UIPermissionClipboard
---@field NoClipboard System.Security.Permissions.UIPermissionClipboard
---@field OwnClipboard System.Security.Permissions.UIPermissionClipboard
System.Security.Permissions.UIPermissionClipboard = {}
---@alias CS.System.Security.Permissions.UIPermissionClipboard System.Security.Permissions.UIPermissionClipboard
CS.System.Security.Permissions.UIPermissionClipboard = System.Security.Permissions.UIPermissionClipboard


---@class System.Security.Permissions.UIPermissionWindow
---@field AllWindows System.Security.Permissions.UIPermissionWindow
---@field NoWindows System.Security.Permissions.UIPermissionWindow
---@field SafeSubWindows System.Security.Permissions.UIPermissionWindow
---@field SafeTopLevelWindows System.Security.Permissions.UIPermissionWindow
System.Security.Permissions.UIPermissionWindow = {}
---@alias CS.System.Security.Permissions.UIPermissionWindow System.Security.Permissions.UIPermissionWindow
CS.System.Security.Permissions.UIPermissionWindow = System.Security.Permissions.UIPermissionWindow


---@class System.Security.Permissions.CodeAccessSecurityAttribute : System.Security.Permissions.SecurityAttribute
System.Security.Permissions.CodeAccessSecurityAttribute = {}
---@alias CS.System.Security.Permissions.CodeAccessSecurityAttribute System.Security.Permissions.CodeAccessSecurityAttribute
CS.System.Security.Permissions.CodeAccessSecurityAttribute = System.Security.Permissions.CodeAccessSecurityAttribute


---@class System.Security.Permissions.EnvironmentPermission : System.Security.CodeAccessPermission
System.Security.Permissions.EnvironmentPermission = {}
---@alias CS.System.Security.Permissions.EnvironmentPermission System.Security.Permissions.EnvironmentPermission
CS.System.Security.Permissions.EnvironmentPermission = System.Security.Permissions.EnvironmentPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.EnvironmentPermission
---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@param pathList string
---@return System.Security.Permissions.EnvironmentPermission
function System.Security.Permissions.EnvironmentPermission.New(flag, pathList) end
---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@param pathList string
function System.Security.Permissions.EnvironmentPermission:AddPathList(flag, pathList) end
---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.EnvironmentPermission:FromXml(esd) end
---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@return string
function System.Security.Permissions.EnvironmentPermission:GetPathList(flag) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.EnvironmentPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.EnvironmentPermission:IsUnrestricted() end
---@param flag System.Security.Permissions.EnvironmentPermissionAccess
---@param pathList string
function System.Security.Permissions.EnvironmentPermission:SetPathList(flag, pathList) end
---@return System.Security.SecurityElement
function System.Security.Permissions.EnvironmentPermission:ToXml() end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermission:Union(other) end

---@class System.Security.Permissions.EnvironmentPermissionAccess
---@field NoAccess System.Security.Permissions.EnvironmentPermissionAccess
---@field Read System.Security.Permissions.EnvironmentPermissionAccess
---@field Write System.Security.Permissions.EnvironmentPermissionAccess
---@field AllAccess System.Security.Permissions.EnvironmentPermissionAccess
System.Security.Permissions.EnvironmentPermissionAccess = {}
---@alias CS.System.Security.Permissions.EnvironmentPermissionAccess System.Security.Permissions.EnvironmentPermissionAccess
CS.System.Security.Permissions.EnvironmentPermissionAccess = System.Security.Permissions.EnvironmentPermissionAccess


---@class System.Security.Permissions.EnvironmentPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field All string
---@field Read string
---@field Write string
System.Security.Permissions.EnvironmentPermissionAttribute = {}
---@alias CS.System.Security.Permissions.EnvironmentPermissionAttribute System.Security.Permissions.EnvironmentPermissionAttribute
CS.System.Security.Permissions.EnvironmentPermissionAttribute = System.Security.Permissions.EnvironmentPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.EnvironmentPermissionAttribute
function System.Security.Permissions.EnvironmentPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.EnvironmentPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.FileDialogPermission : System.Security.CodeAccessPermission
---@field Access System.Security.Permissions.FileDialogPermissionAccess
System.Security.Permissions.FileDialogPermission = {}
---@alias CS.System.Security.Permissions.FileDialogPermission System.Security.Permissions.FileDialogPermission
CS.System.Security.Permissions.FileDialogPermission = System.Security.Permissions.FileDialogPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.FileDialogPermission
---@param access System.Security.Permissions.FileDialogPermissionAccess
---@return System.Security.Permissions.FileDialogPermission
function System.Security.Permissions.FileDialogPermission.New(access) end
---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.FileDialogPermission:FromXml(esd) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.FileDialogPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.FileDialogPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Security.Permissions.FileDialogPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermission:Union(target) end

---@class System.Security.Permissions.FileDialogPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Open boolean
---@field Save boolean
System.Security.Permissions.FileDialogPermissionAttribute = {}
---@alias CS.System.Security.Permissions.FileDialogPermissionAttribute System.Security.Permissions.FileDialogPermissionAttribute
CS.System.Security.Permissions.FileDialogPermissionAttribute = System.Security.Permissions.FileDialogPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.FileDialogPermissionAttribute
function System.Security.Permissions.FileDialogPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.FileDialogPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.FileIOPermission : System.Security.CodeAccessPermission
---@field AllFiles System.Security.Permissions.FileIOPermissionAccess
---@field AllLocalFiles System.Security.Permissions.FileIOPermissionAccess
System.Security.Permissions.FileIOPermission = {}
---@alias CS.System.Security.Permissions.FileIOPermission System.Security.Permissions.FileIOPermission
CS.System.Security.Permissions.FileIOPermission = System.Security.Permissions.FileIOPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.FileIOPermission
---@overload fun(access: System.Security.Permissions.FileIOPermissionAccess, path: string) : System.Security.Permissions.FileIOPermission
---@overload fun(access: System.Security.Permissions.FileIOPermissionAccess, pathList: System.String[]) : System.Security.Permissions.FileIOPermission
---@overload fun(access: System.Security.Permissions.FileIOPermissionAccess, control: System.Security.AccessControl.AccessControlActions, path: string) : System.Security.Permissions.FileIOPermission
---@param access System.Security.Permissions.FileIOPermissionAccess
---@param control System.Security.AccessControl.AccessControlActions
---@param pathList System.String[]
---@return System.Security.Permissions.FileIOPermission
function System.Security.Permissions.FileIOPermission.New(access, control, pathList) end
---@overload fun(self: System.Security.Permissions.FileIOPermission, access: System.Security.Permissions.FileIOPermissionAccess, path: string)
---@param access System.Security.Permissions.FileIOPermissionAccess
---@param pathList System.String[]
function System.Security.Permissions.FileIOPermission:AddPathList(access, pathList) end
---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.FileIOPermission:FromXml(esd) end
---@param access System.Security.Permissions.FileIOPermissionAccess
---@return System.String[]
function System.Security.Permissions.FileIOPermission:GetPathList(access) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.FileIOPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.FileIOPermission:IsUnrestricted() end
---@overload fun(self: System.Security.Permissions.FileIOPermission, access: System.Security.Permissions.FileIOPermissionAccess, path: string)
---@param access System.Security.Permissions.FileIOPermissionAccess
---@param pathList System.String[]
function System.Security.Permissions.FileIOPermission:SetPathList(access, pathList) end
---@return System.Security.SecurityElement
function System.Security.Permissions.FileIOPermission:ToXml() end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermission:Union(other) end
---@param obj System.Object
---@return boolean
function System.Security.Permissions.FileIOPermission:Equals(obj) end
---@return number
function System.Security.Permissions.FileIOPermission:GetHashCode() end

---@class System.Security.Permissions.FileIOPermissionAccess
---@field NoAccess System.Security.Permissions.FileIOPermissionAccess
---@field Read System.Security.Permissions.FileIOPermissionAccess
---@field Write System.Security.Permissions.FileIOPermissionAccess
---@field Append System.Security.Permissions.FileIOPermissionAccess
---@field PathDiscovery System.Security.Permissions.FileIOPermissionAccess
---@field AllAccess System.Security.Permissions.FileIOPermissionAccess
System.Security.Permissions.FileIOPermissionAccess = {}
---@alias CS.System.Security.Permissions.FileIOPermissionAccess System.Security.Permissions.FileIOPermissionAccess
CS.System.Security.Permissions.FileIOPermissionAccess = System.Security.Permissions.FileIOPermissionAccess


---@class System.Security.Permissions.FileIOPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Append string
---@field PathDiscovery string
---@field Read string
---@field Write string
---@field AllFiles System.Security.Permissions.FileIOPermissionAccess
---@field AllLocalFiles System.Security.Permissions.FileIOPermissionAccess
---@field ChangeAccessControl string
---@field ViewAccessControl string
---@field ViewAndModify string
System.Security.Permissions.FileIOPermissionAttribute = {}
---@alias CS.System.Security.Permissions.FileIOPermissionAttribute System.Security.Permissions.FileIOPermissionAttribute
CS.System.Security.Permissions.FileIOPermissionAttribute = System.Security.Permissions.FileIOPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.FileIOPermissionAttribute
function System.Security.Permissions.FileIOPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.FileIOPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.GacIdentityPermission : System.Security.CodeAccessPermission
System.Security.Permissions.GacIdentityPermission = {}
---@alias CS.System.Security.Permissions.GacIdentityPermission System.Security.Permissions.GacIdentityPermission
CS.System.Security.Permissions.GacIdentityPermission = System.Security.Permissions.GacIdentityPermission

---@overload fun() : System.Security.Permissions.GacIdentityPermission
---@param state System.Security.Permissions.PermissionState
---@return System.Security.Permissions.GacIdentityPermission
function System.Security.Permissions.GacIdentityPermission.New(state) end
---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermission:Copy() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.GacIdentityPermission:IsSubsetOf(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermission:Union(target) end
---@param securityElement System.Security.SecurityElement
function System.Security.Permissions.GacIdentityPermission:FromXml(securityElement) end
---@return System.Security.SecurityElement
function System.Security.Permissions.GacIdentityPermission:ToXml() end

---@class System.Security.Permissions.GacIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
System.Security.Permissions.GacIdentityPermissionAttribute = {}
---@alias CS.System.Security.Permissions.GacIdentityPermissionAttribute System.Security.Permissions.GacIdentityPermissionAttribute
CS.System.Security.Permissions.GacIdentityPermissionAttribute = System.Security.Permissions.GacIdentityPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.GacIdentityPermissionAttribute
function System.Security.Permissions.GacIdentityPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.GacIdentityPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.HostProtectionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field ExternalProcessMgmt boolean
---@field ExternalThreading boolean
---@field MayLeakOnAbort boolean
---@field SecurityInfrastructure boolean
---@field SelfAffectingProcessMgmt boolean
---@field SelfAffectingThreading boolean
---@field SharedState boolean
---@field Synchronization boolean
---@field UI boolean
---@field Resources System.Security.Permissions.HostProtectionResource
System.Security.Permissions.HostProtectionAttribute = {}
---@alias CS.System.Security.Permissions.HostProtectionAttribute System.Security.Permissions.HostProtectionAttribute
CS.System.Security.Permissions.HostProtectionAttribute = System.Security.Permissions.HostProtectionAttribute

---@overload fun() : System.Security.Permissions.HostProtectionAttribute
---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.HostProtectionAttribute
function System.Security.Permissions.HostProtectionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.HostProtectionAttribute:CreatePermission() end

---@class System.Security.Permissions.HostProtectionPermission : System.Security.CodeAccessPermission
---@field Resources System.Security.Permissions.HostProtectionResource
System.Security.Permissions.HostProtectionPermission = {}
---@alias CS.System.Security.Permissions.HostProtectionPermission System.Security.Permissions.HostProtectionPermission
CS.System.Security.Permissions.HostProtectionPermission = System.Security.Permissions.HostProtectionPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.HostProtectionPermission
---@param resources System.Security.Permissions.HostProtectionResource
---@return System.Security.Permissions.HostProtectionPermission
function System.Security.Permissions.HostProtectionPermission.New(resources) end
---@return System.Security.IPermission
function System.Security.Permissions.HostProtectionPermission:Copy() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.HostProtectionPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.HostProtectionPermission:Union(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.HostProtectionPermission:IsSubsetOf(target) end
---@param e System.Security.SecurityElement
function System.Security.Permissions.HostProtectionPermission:FromXml(e) end
---@return System.Security.SecurityElement
function System.Security.Permissions.HostProtectionPermission:ToXml() end
---@return boolean
function System.Security.Permissions.HostProtectionPermission:IsUnrestricted() end

---@class System.Security.Permissions.IBuiltInPermission
System.Security.Permissions.IBuiltInPermission = {}
---@alias CS.System.Security.Permissions.IBuiltInPermission System.Security.Permissions.IBuiltInPermission
CS.System.Security.Permissions.IBuiltInPermission = System.Security.Permissions.IBuiltInPermission

---@return number
function System.Security.Permissions.IBuiltInPermission:GetTokenIndex() end

---@class System.Security.Permissions.BuiltInToken
---@field Environment System.Security.Permissions.BuiltInToken
---@field FileDialog System.Security.Permissions.BuiltInToken
---@field FileIO System.Security.Permissions.BuiltInToken
---@field IsolatedStorageFile System.Security.Permissions.BuiltInToken
---@field Reflection System.Security.Permissions.BuiltInToken
---@field Registry System.Security.Permissions.BuiltInToken
---@field Security System.Security.Permissions.BuiltInToken
---@field UI System.Security.Permissions.BuiltInToken
---@field Principal System.Security.Permissions.BuiltInToken
---@field HostProtection System.Security.Permissions.BuiltInToken
---@field PublisherIdentity System.Security.Permissions.BuiltInToken
---@field SiteIdentity System.Security.Permissions.BuiltInToken
---@field StrongNameIdentity System.Security.Permissions.BuiltInToken
---@field UrlIdentity System.Security.Permissions.BuiltInToken
---@field ZoneIdentity System.Security.Permissions.BuiltInToken
---@field GacIdentity System.Security.Permissions.BuiltInToken
---@field KeyContainer System.Security.Permissions.BuiltInToken
System.Security.Permissions.BuiltInToken = {}
---@alias CS.System.Security.Permissions.BuiltInToken System.Security.Permissions.BuiltInToken
CS.System.Security.Permissions.BuiltInToken = System.Security.Permissions.BuiltInToken


---@class System.Security.Permissions.IsolatedStorageFilePermission : System.Security.Permissions.IsolatedStoragePermission
System.Security.Permissions.IsolatedStorageFilePermission = {}
---@alias CS.System.Security.Permissions.IsolatedStorageFilePermission System.Security.Permissions.IsolatedStorageFilePermission
CS.System.Security.Permissions.IsolatedStorageFilePermission = System.Security.Permissions.IsolatedStorageFilePermission

---@param state System.Security.Permissions.PermissionState
---@return System.Security.Permissions.IsolatedStorageFilePermission
function System.Security.Permissions.IsolatedStorageFilePermission.New(state) end
---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermission:Copy() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.IsolatedStorageFilePermission:IsSubsetOf(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermission:Union(target) end
---@return System.Security.SecurityElement
function System.Security.Permissions.IsolatedStorageFilePermission:ToXml() end

---@class System.Security.Permissions.IsolatedStorageFilePermissionAttribute : System.Security.Permissions.IsolatedStoragePermissionAttribute
System.Security.Permissions.IsolatedStorageFilePermissionAttribute = {}
---@alias CS.System.Security.Permissions.IsolatedStorageFilePermissionAttribute System.Security.Permissions.IsolatedStorageFilePermissionAttribute
CS.System.Security.Permissions.IsolatedStorageFilePermissionAttribute = System.Security.Permissions.IsolatedStorageFilePermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.IsolatedStorageFilePermissionAttribute
function System.Security.Permissions.IsolatedStorageFilePermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.IsolatedStorageFilePermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.IsolatedStoragePermission : System.Security.CodeAccessPermission
---@field UserQuota number
---@field UsageAllowed System.Security.Permissions.IsolatedStorageContainment
System.Security.Permissions.IsolatedStoragePermission = {}
---@alias CS.System.Security.Permissions.IsolatedStoragePermission System.Security.Permissions.IsolatedStoragePermission
CS.System.Security.Permissions.IsolatedStoragePermission = System.Security.Permissions.IsolatedStoragePermission

---@return boolean
function System.Security.Permissions.IsolatedStoragePermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Security.Permissions.IsolatedStoragePermission:ToXml() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.IsolatedStoragePermission:FromXml(esd) end

---@class System.Security.Permissions.IsolatedStoragePermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field UsageAllowed System.Security.Permissions.IsolatedStorageContainment
---@field UserQuota number
System.Security.Permissions.IsolatedStoragePermissionAttribute = {}
---@alias CS.System.Security.Permissions.IsolatedStoragePermissionAttribute System.Security.Permissions.IsolatedStoragePermissionAttribute
CS.System.Security.Permissions.IsolatedStoragePermissionAttribute = System.Security.Permissions.IsolatedStoragePermissionAttribute


---@class System.Security.Permissions.KeyContainerPermission : System.Security.CodeAccessPermission
---@field AccessEntries System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
---@field Flags System.Security.Permissions.KeyContainerPermissionFlags
System.Security.Permissions.KeyContainerPermission = {}
---@alias CS.System.Security.Permissions.KeyContainerPermission System.Security.Permissions.KeyContainerPermission
CS.System.Security.Permissions.KeyContainerPermission = System.Security.Permissions.KeyContainerPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.KeyContainerPermission
---@overload fun(flags: System.Security.Permissions.KeyContainerPermissionFlags) : System.Security.Permissions.KeyContainerPermission
---@param flags System.Security.Permissions.KeyContainerPermissionFlags
---@param accessList System.Security.Permissions.KeyContainerPermissionAccessEntry[]
---@return System.Security.Permissions.KeyContainerPermission
function System.Security.Permissions.KeyContainerPermission.New(flags, accessList) end
---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermission:Copy() end
---@param securityElement System.Security.SecurityElement
function System.Security.Permissions.KeyContainerPermission:FromXml(securityElement) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.KeyContainerPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.KeyContainerPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Security.Permissions.KeyContainerPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermission:Union(target) end

---@class System.Security.Permissions.KeyContainerPermissionAccessEntry : System.Object
---@field Flags System.Security.Permissions.KeyContainerPermissionFlags
---@field KeyContainerName string
---@field KeySpec number
---@field KeyStore string
---@field ProviderName string
---@field ProviderType number
System.Security.Permissions.KeyContainerPermissionAccessEntry = {}
---@alias CS.System.Security.Permissions.KeyContainerPermissionAccessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
CS.System.Security.Permissions.KeyContainerPermissionAccessEntry = System.Security.Permissions.KeyContainerPermissionAccessEntry

---@overload fun(parameters: System.Security.Cryptography.CspParameters, flags: System.Security.Permissions.KeyContainerPermissionFlags) : System.Security.Permissions.KeyContainerPermissionAccessEntry
---@overload fun(keyContainerName: string, flags: System.Security.Permissions.KeyContainerPermissionFlags) : System.Security.Permissions.KeyContainerPermissionAccessEntry
---@param keyStore string
---@param providerName string
---@param providerType number
---@param keyContainerName string
---@param keySpec number
---@param flags System.Security.Permissions.KeyContainerPermissionFlags
---@return System.Security.Permissions.KeyContainerPermissionAccessEntry
function System.Security.Permissions.KeyContainerPermissionAccessEntry.New(keyStore, providerName, providerType, keyContainerName, keySpec, flags) end
---@param o System.Object
---@return boolean
function System.Security.Permissions.KeyContainerPermissionAccessEntry:Equals(o) end
---@return number
function System.Security.Permissions.KeyContainerPermissionAccessEntry:GetHashCode() end

---@class System.Security.Permissions.KeyContainerPermissionAccessEntryCollection : System.Object
---@field Count number
---@field IsSynchronized boolean
---@field Item System.Security.Permissions.KeyContainerPermissionAccessEntry
---@field SyncRoot System.Object
System.Security.Permissions.KeyContainerPermissionAccessEntryCollection = {}
---@alias CS.System.Security.Permissions.KeyContainerPermissionAccessEntryCollection System.Security.Permissions.KeyContainerPermissionAccessEntryCollection
CS.System.Security.Permissions.KeyContainerPermissionAccessEntryCollection = System.Security.Permissions.KeyContainerPermissionAccessEntryCollection

---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
---@return number
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:Add(accessEntry) end
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:Clear() end
---@param array System.Security.Permissions.KeyContainerPermissionAccessEntry[]
---@param index number
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:CopyTo(array, index) end
---@return System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:GetEnumerator() end
---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
---@return number
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:IndexOf(accessEntry) end
---@param accessEntry System.Security.Permissions.KeyContainerPermissionAccessEntry
function System.Security.Permissions.KeyContainerPermissionAccessEntryCollection:Remove(accessEntry) end

---@class System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator : System.Object
---@field Current System.Security.Permissions.KeyContainerPermissionAccessEntry
System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator = {}
---@alias CS.System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator
CS.System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator = System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator

---@return boolean
function System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator:MoveNext() end
function System.Security.Permissions.KeyContainerPermissionAccessEntryEnumerator:Reset() end

---@class System.Security.Permissions.KeyContainerPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Flags System.Security.Permissions.KeyContainerPermissionFlags
---@field KeyContainerName string
---@field KeySpec number
---@field KeyStore string
---@field ProviderName string
---@field ProviderType number
System.Security.Permissions.KeyContainerPermissionAttribute = {}
---@alias CS.System.Security.Permissions.KeyContainerPermissionAttribute System.Security.Permissions.KeyContainerPermissionAttribute
CS.System.Security.Permissions.KeyContainerPermissionAttribute = System.Security.Permissions.KeyContainerPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.KeyContainerPermissionAttribute
function System.Security.Permissions.KeyContainerPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.KeyContainerPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.KeyContainerPermissionFlags
---@field NoFlags System.Security.Permissions.KeyContainerPermissionFlags
---@field Create System.Security.Permissions.KeyContainerPermissionFlags
---@field Open System.Security.Permissions.KeyContainerPermissionFlags
---@field Delete System.Security.Permissions.KeyContainerPermissionFlags
---@field Import System.Security.Permissions.KeyContainerPermissionFlags
---@field Export System.Security.Permissions.KeyContainerPermissionFlags
---@field Sign System.Security.Permissions.KeyContainerPermissionFlags
---@field Decrypt System.Security.Permissions.KeyContainerPermissionFlags
---@field ViewAcl System.Security.Permissions.KeyContainerPermissionFlags
---@field ChangeAcl System.Security.Permissions.KeyContainerPermissionFlags
---@field AllFlags System.Security.Permissions.KeyContainerPermissionFlags
System.Security.Permissions.KeyContainerPermissionFlags = {}
---@alias CS.System.Security.Permissions.KeyContainerPermissionFlags System.Security.Permissions.KeyContainerPermissionFlags
CS.System.Security.Permissions.KeyContainerPermissionFlags = System.Security.Permissions.KeyContainerPermissionFlags


---@class System.Security.Permissions.PermissionSetAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field File string
---@field Hex string
---@field Name string
---@field UnicodeEncoded boolean
---@field XML string
System.Security.Permissions.PermissionSetAttribute = {}
---@alias CS.System.Security.Permissions.PermissionSetAttribute System.Security.Permissions.PermissionSetAttribute
CS.System.Security.Permissions.PermissionSetAttribute = System.Security.Permissions.PermissionSetAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.PermissionSetAttribute
function System.Security.Permissions.PermissionSetAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.PermissionSetAttribute:CreatePermission() end
---@return System.Security.PermissionSet
function System.Security.Permissions.PermissionSetAttribute:CreatePermissionSet() end

---@class System.Security.Permissions.PrincipalPermission : System.Object
System.Security.Permissions.PrincipalPermission = {}
---@alias CS.System.Security.Permissions.PrincipalPermission System.Security.Permissions.PrincipalPermission
CS.System.Security.Permissions.PrincipalPermission = System.Security.Permissions.PrincipalPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.PrincipalPermission
---@overload fun(name: string, role: string) : System.Security.Permissions.PrincipalPermission
---@param name string
---@param role string
---@param isAuthenticated boolean
---@return System.Security.Permissions.PrincipalPermission
function System.Security.Permissions.PrincipalPermission.New(name, role, isAuthenticated) end
---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermission:Copy() end
function System.Security.Permissions.PrincipalPermission:Demand() end
---@param elem System.Security.SecurityElement
function System.Security.Permissions.PrincipalPermission:FromXml(elem) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.PrincipalPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.PrincipalPermission:IsUnrestricted() end
---@return string
function System.Security.Permissions.PrincipalPermission:ToString() end
---@return System.Security.SecurityElement
function System.Security.Permissions.PrincipalPermission:ToXml() end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermission:Union(other) end
---@param obj System.Object
---@return boolean
function System.Security.Permissions.PrincipalPermission:Equals(obj) end
---@return number
function System.Security.Permissions.PrincipalPermission:GetHashCode() end

---@class System.Security.Permissions.PrincipalPermission.PrincipalInfo : System.Object
---@field Name string
---@field Role string
---@field IsAuthenticated boolean
System.Security.Permissions.PrincipalPermission.PrincipalInfo = {}
---@alias CS.System.Security.Permissions.PrincipalPermission.PrincipalInfo System.Security.Permissions.PrincipalPermission.PrincipalInfo
CS.System.Security.Permissions.PrincipalPermission.PrincipalInfo = System.Security.Permissions.PrincipalPermission.PrincipalInfo

---@param name string
---@param role string
---@param isAuthenticated boolean
---@return System.Security.Permissions.PrincipalPermission.PrincipalInfo
function System.Security.Permissions.PrincipalPermission.PrincipalInfo.New(name, role, isAuthenticated) end

---@class System.Security.Permissions.PrincipalPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Authenticated boolean
---@field Name string
---@field Role string
System.Security.Permissions.PrincipalPermissionAttribute = {}
---@alias CS.System.Security.Permissions.PrincipalPermissionAttribute System.Security.Permissions.PrincipalPermissionAttribute
CS.System.Security.Permissions.PrincipalPermissionAttribute = System.Security.Permissions.PrincipalPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.PrincipalPermissionAttribute
function System.Security.Permissions.PrincipalPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.PrincipalPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.PublisherIdentityPermission : System.Security.CodeAccessPermission
---@field Certificate System.Security.Cryptography.X509Certificates.X509Certificate
System.Security.Permissions.PublisherIdentityPermission = {}
---@alias CS.System.Security.Permissions.PublisherIdentityPermission System.Security.Permissions.PublisherIdentityPermission
CS.System.Security.Permissions.PublisherIdentityPermission = System.Security.Permissions.PublisherIdentityPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.PublisherIdentityPermission
---@param certificate System.Security.Cryptography.X509Certificates.X509Certificate
---@return System.Security.Permissions.PublisherIdentityPermission
function System.Security.Permissions.PublisherIdentityPermission.New(certificate) end
---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.PublisherIdentityPermission:FromXml(esd) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.PublisherIdentityPermission:IsSubsetOf(target) end
---@return System.Security.SecurityElement
function System.Security.Permissions.PublisherIdentityPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermission:Union(target) end

---@class System.Security.Permissions.PublisherIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field CertFile string
---@field SignedFile string
---@field X509Certificate string
System.Security.Permissions.PublisherIdentityPermissionAttribute = {}
---@alias CS.System.Security.Permissions.PublisherIdentityPermissionAttribute System.Security.Permissions.PublisherIdentityPermissionAttribute
CS.System.Security.Permissions.PublisherIdentityPermissionAttribute = System.Security.Permissions.PublisherIdentityPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.PublisherIdentityPermissionAttribute
function System.Security.Permissions.PublisherIdentityPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.PublisherIdentityPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.ReflectionPermission : System.Security.CodeAccessPermission
---@field Flags System.Security.Permissions.ReflectionPermissionFlag
System.Security.Permissions.ReflectionPermission = {}
---@alias CS.System.Security.Permissions.ReflectionPermission System.Security.Permissions.ReflectionPermission
CS.System.Security.Permissions.ReflectionPermission = System.Security.Permissions.ReflectionPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.ReflectionPermission
---@param flag System.Security.Permissions.ReflectionPermissionFlag
---@return System.Security.Permissions.ReflectionPermission
function System.Security.Permissions.ReflectionPermission.New(flag) end
---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.ReflectionPermission:FromXml(esd) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.ReflectionPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.ReflectionPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Security.Permissions.ReflectionPermission:ToXml() end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermission:Union(other) end

---@class System.Security.Permissions.ReflectionPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Flags System.Security.Permissions.ReflectionPermissionFlag
---@field MemberAccess boolean
---@field RestrictedMemberAccess boolean
System.Security.Permissions.ReflectionPermissionAttribute = {}
---@alias CS.System.Security.Permissions.ReflectionPermissionAttribute System.Security.Permissions.ReflectionPermissionAttribute
CS.System.Security.Permissions.ReflectionPermissionAttribute = System.Security.Permissions.ReflectionPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.ReflectionPermissionAttribute
function System.Security.Permissions.ReflectionPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.ReflectionPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.RegistryPermission : System.Security.CodeAccessPermission
System.Security.Permissions.RegistryPermission = {}
---@alias CS.System.Security.Permissions.RegistryPermission System.Security.Permissions.RegistryPermission
CS.System.Security.Permissions.RegistryPermission = System.Security.Permissions.RegistryPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.RegistryPermission
---@overload fun(access: System.Security.Permissions.RegistryPermissionAccess, pathList: string) : System.Security.Permissions.RegistryPermission
---@param access System.Security.Permissions.RegistryPermissionAccess
---@param control System.Security.AccessControl.AccessControlActions
---@param pathList string
---@return System.Security.Permissions.RegistryPermission
function System.Security.Permissions.RegistryPermission.New(access, control, pathList) end
---@overload fun(self: System.Security.Permissions.RegistryPermission, access: System.Security.Permissions.RegistryPermissionAccess, pathList: string)
---@param access System.Security.Permissions.RegistryPermissionAccess
---@param control System.Security.AccessControl.AccessControlActions
---@param pathList string
function System.Security.Permissions.RegistryPermission:AddPathList(access, control, pathList) end
---@param access System.Security.Permissions.RegistryPermissionAccess
---@return string
function System.Security.Permissions.RegistryPermission:GetPathList(access) end
---@param access System.Security.Permissions.RegistryPermissionAccess
---@param pathList string
function System.Security.Permissions.RegistryPermission:SetPathList(access, pathList) end
---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.RegistryPermission:FromXml(esd) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.RegistryPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.RegistryPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Security.Permissions.RegistryPermission:ToXml() end
---@param other System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermission:Union(other) end

---@class System.Security.Permissions.RegistryPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Create string
---@field Read string
---@field Write string
---@field ChangeAccessControl string
---@field ViewAccessControl string
---@field ViewAndModify string
System.Security.Permissions.RegistryPermissionAttribute = {}
---@alias CS.System.Security.Permissions.RegistryPermissionAttribute System.Security.Permissions.RegistryPermissionAttribute
CS.System.Security.Permissions.RegistryPermissionAttribute = System.Security.Permissions.RegistryPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.RegistryPermissionAttribute
function System.Security.Permissions.RegistryPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.RegistryPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.SecurityAction
---@field Demand System.Security.Permissions.SecurityAction
---@field Assert System.Security.Permissions.SecurityAction
---@field PermitOnly System.Security.Permissions.SecurityAction
---@field LinkDemand System.Security.Permissions.SecurityAction
---@field InheritanceDemand System.Security.Permissions.SecurityAction
System.Security.Permissions.SecurityAction = {}
---@alias CS.System.Security.Permissions.SecurityAction System.Security.Permissions.SecurityAction
CS.System.Security.Permissions.SecurityAction = System.Security.Permissions.SecurityAction


---@class System.Security.Permissions.SecurityAttribute : System.Attribute
---@field Unrestricted boolean
---@field Action System.Security.Permissions.SecurityAction
System.Security.Permissions.SecurityAttribute = {}
---@alias CS.System.Security.Permissions.SecurityAttribute System.Security.Permissions.SecurityAttribute
CS.System.Security.Permissions.SecurityAttribute = System.Security.Permissions.SecurityAttribute

---@return System.Security.IPermission
function System.Security.Permissions.SecurityAttribute:CreatePermission() end

---@class System.Security.Permissions.SecurityPermission : System.Security.CodeAccessPermission
---@field Flags System.Security.Permissions.SecurityPermissionFlag
System.Security.Permissions.SecurityPermission = {}
---@alias CS.System.Security.Permissions.SecurityPermission System.Security.Permissions.SecurityPermission
CS.System.Security.Permissions.SecurityPermission = System.Security.Permissions.SecurityPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.SecurityPermission
---@param flag System.Security.Permissions.SecurityPermissionFlag
---@return System.Security.Permissions.SecurityPermission
function System.Security.Permissions.SecurityPermission.New(flag) end
---@return boolean
function System.Security.Permissions.SecurityPermission:IsUnrestricted() end
---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermission:Copy() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermission:Union(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.SecurityPermission:IsSubsetOf(target) end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.SecurityPermission:FromXml(esd) end
---@return System.Security.SecurityElement
function System.Security.Permissions.SecurityPermission:ToXml() end

---@class System.Security.Permissions.SecurityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Assertion boolean
---@field BindingRedirects boolean
---@field ControlAppDomain boolean
---@field ControlDomainPolicy boolean
---@field ControlEvidence boolean
---@field ControlPolicy boolean
---@field ControlPrincipal boolean
---@field ControlThread boolean
---@field Execution boolean
---@field Infrastructure boolean
---@field RemotingConfiguration boolean
---@field SerializationFormatter boolean
---@field SkipVerification boolean
---@field UnmanagedCode boolean
---@field Flags System.Security.Permissions.SecurityPermissionFlag
System.Security.Permissions.SecurityPermissionAttribute = {}
---@alias CS.System.Security.Permissions.SecurityPermissionAttribute System.Security.Permissions.SecurityPermissionAttribute
CS.System.Security.Permissions.SecurityPermissionAttribute = System.Security.Permissions.SecurityPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.SecurityPermissionAttribute
function System.Security.Permissions.SecurityPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.SecurityPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.SecurityPermissionFlag
---@field NoFlags System.Security.Permissions.SecurityPermissionFlag
---@field Assertion System.Security.Permissions.SecurityPermissionFlag
---@field UnmanagedCode System.Security.Permissions.SecurityPermissionFlag
---@field SkipVerification System.Security.Permissions.SecurityPermissionFlag
---@field Execution System.Security.Permissions.SecurityPermissionFlag
---@field ControlThread System.Security.Permissions.SecurityPermissionFlag
---@field ControlEvidence System.Security.Permissions.SecurityPermissionFlag
---@field ControlPolicy System.Security.Permissions.SecurityPermissionFlag
---@field SerializationFormatter System.Security.Permissions.SecurityPermissionFlag
---@field ControlDomainPolicy System.Security.Permissions.SecurityPermissionFlag
---@field ControlPrincipal System.Security.Permissions.SecurityPermissionFlag
---@field ControlAppDomain System.Security.Permissions.SecurityPermissionFlag
---@field RemotingConfiguration System.Security.Permissions.SecurityPermissionFlag
---@field Infrastructure System.Security.Permissions.SecurityPermissionFlag
---@field BindingRedirects System.Security.Permissions.SecurityPermissionFlag
---@field AllFlags System.Security.Permissions.SecurityPermissionFlag
System.Security.Permissions.SecurityPermissionFlag = {}
---@alias CS.System.Security.Permissions.SecurityPermissionFlag System.Security.Permissions.SecurityPermissionFlag
CS.System.Security.Permissions.SecurityPermissionFlag = System.Security.Permissions.SecurityPermissionFlag


---@class System.Security.Permissions.SiteIdentityPermission : System.Security.CodeAccessPermission
---@field Site string
System.Security.Permissions.SiteIdentityPermission = {}
---@alias CS.System.Security.Permissions.SiteIdentityPermission System.Security.Permissions.SiteIdentityPermission
CS.System.Security.Permissions.SiteIdentityPermission = System.Security.Permissions.SiteIdentityPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.SiteIdentityPermission
---@param site string
---@return System.Security.Permissions.SiteIdentityPermission
function System.Security.Permissions.SiteIdentityPermission.New(site) end
---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.SiteIdentityPermission:FromXml(esd) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.SiteIdentityPermission:IsSubsetOf(target) end
---@return System.Security.SecurityElement
function System.Security.Permissions.SiteIdentityPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermission:Union(target) end

---@class System.Security.Permissions.SiteIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Site string
System.Security.Permissions.SiteIdentityPermissionAttribute = {}
---@alias CS.System.Security.Permissions.SiteIdentityPermissionAttribute System.Security.Permissions.SiteIdentityPermissionAttribute
CS.System.Security.Permissions.SiteIdentityPermissionAttribute = System.Security.Permissions.SiteIdentityPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.SiteIdentityPermissionAttribute
function System.Security.Permissions.SiteIdentityPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.SiteIdentityPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.StrongNameIdentityPermission : System.Security.CodeAccessPermission
---@field Name string
---@field PublicKey System.Security.Permissions.StrongNamePublicKeyBlob
---@field Version System.Version
System.Security.Permissions.StrongNameIdentityPermission = {}
---@alias CS.System.Security.Permissions.StrongNameIdentityPermission System.Security.Permissions.StrongNameIdentityPermission
CS.System.Security.Permissions.StrongNameIdentityPermission = System.Security.Permissions.StrongNameIdentityPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.StrongNameIdentityPermission
---@param blob System.Security.Permissions.StrongNamePublicKeyBlob
---@param name string
---@param version System.Version
---@return System.Security.Permissions.StrongNameIdentityPermission
function System.Security.Permissions.StrongNameIdentityPermission.New(blob, name, version) end
---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermission:Copy() end
---@param e System.Security.SecurityElement
function System.Security.Permissions.StrongNameIdentityPermission:FromXml(e) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.StrongNameIdentityPermission:IsSubsetOf(target) end
---@return System.Security.SecurityElement
function System.Security.Permissions.StrongNameIdentityPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermission:Union(target) end

---@class System.Security.Permissions.StrongNameIdentityPermission.SNIP : System.ValueType
---@field PublicKey System.Security.Permissions.StrongNamePublicKeyBlob
---@field Name string
---@field AssemblyVersion System.Version
System.Security.Permissions.StrongNameIdentityPermission.SNIP = {}
---@alias CS.System.Security.Permissions.StrongNameIdentityPermission.SNIP System.Security.Permissions.StrongNameIdentityPermission.SNIP
CS.System.Security.Permissions.StrongNameIdentityPermission.SNIP = System.Security.Permissions.StrongNameIdentityPermission.SNIP


---@class System.Security.Permissions.StrongNameIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Name string
---@field PublicKey string
---@field Version string
System.Security.Permissions.StrongNameIdentityPermissionAttribute = {}
---@alias CS.System.Security.Permissions.StrongNameIdentityPermissionAttribute System.Security.Permissions.StrongNameIdentityPermissionAttribute
CS.System.Security.Permissions.StrongNameIdentityPermissionAttribute = System.Security.Permissions.StrongNameIdentityPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.StrongNameIdentityPermissionAttribute
function System.Security.Permissions.StrongNameIdentityPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.StrongNameIdentityPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.StrongNamePublicKeyBlob : System.Object
System.Security.Permissions.StrongNamePublicKeyBlob = {}
---@alias CS.System.Security.Permissions.StrongNamePublicKeyBlob System.Security.Permissions.StrongNamePublicKeyBlob
CS.System.Security.Permissions.StrongNamePublicKeyBlob = System.Security.Permissions.StrongNamePublicKeyBlob

---@param publicKey System.Byte[]
---@return System.Security.Permissions.StrongNamePublicKeyBlob
function System.Security.Permissions.StrongNamePublicKeyBlob.New(publicKey) end
---@param obj System.Object
---@return boolean
function System.Security.Permissions.StrongNamePublicKeyBlob:Equals(obj) end
---@return number
function System.Security.Permissions.StrongNamePublicKeyBlob:GetHashCode() end
---@return string
function System.Security.Permissions.StrongNamePublicKeyBlob:ToString() end

---@class System.Security.Permissions.UIPermission : System.Security.CodeAccessPermission
---@field Clipboard System.Security.Permissions.UIPermissionClipboard
---@field Window System.Security.Permissions.UIPermissionWindow
System.Security.Permissions.UIPermission = {}
---@alias CS.System.Security.Permissions.UIPermission System.Security.Permissions.UIPermission
CS.System.Security.Permissions.UIPermission = System.Security.Permissions.UIPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.UIPermission
---@overload fun(clipboardFlag: System.Security.Permissions.UIPermissionClipboard) : System.Security.Permissions.UIPermission
---@overload fun(windowFlag: System.Security.Permissions.UIPermissionWindow) : System.Security.Permissions.UIPermission
---@param windowFlag System.Security.Permissions.UIPermissionWindow
---@param clipboardFlag System.Security.Permissions.UIPermissionClipboard
---@return System.Security.Permissions.UIPermission
function System.Security.Permissions.UIPermission.New(windowFlag, clipboardFlag) end
---@return System.Security.IPermission
function System.Security.Permissions.UIPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.UIPermission:FromXml(esd) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UIPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.UIPermission:IsSubsetOf(target) end
---@return boolean
function System.Security.Permissions.UIPermission:IsUnrestricted() end
---@return System.Security.SecurityElement
function System.Security.Permissions.UIPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UIPermission:Union(target) end

---@class System.Security.Permissions.UIPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Clipboard System.Security.Permissions.UIPermissionClipboard
---@field Window System.Security.Permissions.UIPermissionWindow
System.Security.Permissions.UIPermissionAttribute = {}
---@alias CS.System.Security.Permissions.UIPermissionAttribute System.Security.Permissions.UIPermissionAttribute
CS.System.Security.Permissions.UIPermissionAttribute = System.Security.Permissions.UIPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.UIPermissionAttribute
function System.Security.Permissions.UIPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.UIPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.UrlIdentityPermission : System.Security.CodeAccessPermission
---@field Url string
System.Security.Permissions.UrlIdentityPermission = {}
---@alias CS.System.Security.Permissions.UrlIdentityPermission System.Security.Permissions.UrlIdentityPermission
CS.System.Security.Permissions.UrlIdentityPermission = System.Security.Permissions.UrlIdentityPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.UrlIdentityPermission
---@param site string
---@return System.Security.Permissions.UrlIdentityPermission
function System.Security.Permissions.UrlIdentityPermission.New(site) end
---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermission:Copy() end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.UrlIdentityPermission:FromXml(esd) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermission:Intersect(target) end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.UrlIdentityPermission:IsSubsetOf(target) end
---@return System.Security.SecurityElement
function System.Security.Permissions.UrlIdentityPermission:ToXml() end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermission:Union(target) end

---@class System.Security.Permissions.UrlIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Url string
System.Security.Permissions.UrlIdentityPermissionAttribute = {}
---@alias CS.System.Security.Permissions.UrlIdentityPermissionAttribute System.Security.Permissions.UrlIdentityPermissionAttribute
CS.System.Security.Permissions.UrlIdentityPermissionAttribute = System.Security.Permissions.UrlIdentityPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.UrlIdentityPermissionAttribute
function System.Security.Permissions.UrlIdentityPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.UrlIdentityPermissionAttribute:CreatePermission() end

---@class System.Security.Permissions.ZoneIdentityPermission : System.Security.CodeAccessPermission
---@field SecurityZone System.Security.SecurityZone
System.Security.Permissions.ZoneIdentityPermission = {}
---@alias CS.System.Security.Permissions.ZoneIdentityPermission System.Security.Permissions.ZoneIdentityPermission
CS.System.Security.Permissions.ZoneIdentityPermission = System.Security.Permissions.ZoneIdentityPermission

---@overload fun(state: System.Security.Permissions.PermissionState) : System.Security.Permissions.ZoneIdentityPermission
---@param zone System.Security.SecurityZone
---@return System.Security.Permissions.ZoneIdentityPermission
function System.Security.Permissions.ZoneIdentityPermission.New(zone) end
---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermission:Copy() end
---@param target System.Security.IPermission
---@return boolean
function System.Security.Permissions.ZoneIdentityPermission:IsSubsetOf(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermission:Union(target) end
---@param target System.Security.IPermission
---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermission:Intersect(target) end
---@param esd System.Security.SecurityElement
function System.Security.Permissions.ZoneIdentityPermission:FromXml(esd) end
---@return System.Security.SecurityElement
function System.Security.Permissions.ZoneIdentityPermission:ToXml() end

---@class System.Security.Permissions.ZoneIdentityPermissionAttribute : System.Security.Permissions.CodeAccessSecurityAttribute
---@field Zone System.Security.SecurityZone
System.Security.Permissions.ZoneIdentityPermissionAttribute = {}
---@alias CS.System.Security.Permissions.ZoneIdentityPermissionAttribute System.Security.Permissions.ZoneIdentityPermissionAttribute
CS.System.Security.Permissions.ZoneIdentityPermissionAttribute = System.Security.Permissions.ZoneIdentityPermissionAttribute

---@param action System.Security.Permissions.SecurityAction
---@return System.Security.Permissions.ZoneIdentityPermissionAttribute
function System.Security.Permissions.ZoneIdentityPermissionAttribute.New(action) end
---@return System.Security.IPermission
function System.Security.Permissions.ZoneIdentityPermissionAttribute:CreatePermission() end

---@class System.Security.Cryptography.Rfc2898DeriveBytes : System.Security.Cryptography.DeriveBytes
---@field HashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@field IterationCount number
---@field Salt System.Byte[]
System.Security.Cryptography.Rfc2898DeriveBytes = {}
---@alias CS.System.Security.Cryptography.Rfc2898DeriveBytes System.Security.Cryptography.Rfc2898DeriveBytes
CS.System.Security.Cryptography.Rfc2898DeriveBytes = System.Security.Cryptography.Rfc2898DeriveBytes

---@overload fun(password: System.Byte[], salt: System.Byte[], iterations: number) : System.Security.Cryptography.Rfc2898DeriveBytes
---@overload fun(password: System.Byte[], salt: System.Byte[], iterations: number, hashAlgorithm: System.Security.Cryptography.HashAlgorithmName) : System.Security.Cryptography.Rfc2898DeriveBytes
---@overload fun(password: string, salt: System.Byte[]) : System.Security.Cryptography.Rfc2898DeriveBytes
---@overload fun(password: string, salt: System.Byte[], iterations: number) : System.Security.Cryptography.Rfc2898DeriveBytes
---@overload fun(password: string, salt: System.Byte[], iterations: number, hashAlgorithm: System.Security.Cryptography.HashAlgorithmName) : System.Security.Cryptography.Rfc2898DeriveBytes
---@overload fun(password: string, saltSize: number) : System.Security.Cryptography.Rfc2898DeriveBytes
---@overload fun(password: string, saltSize: number, iterations: number) : System.Security.Cryptography.Rfc2898DeriveBytes
---@param password string
---@param saltSize number
---@param iterations number
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Security.Cryptography.Rfc2898DeriveBytes
function System.Security.Cryptography.Rfc2898DeriveBytes.New(password, saltSize, iterations, hashAlgorithm) end
---@param cb number
---@return System.Byte[]
function System.Security.Cryptography.Rfc2898DeriveBytes:GetBytes(cb) end
---@param algname string
---@param alghashname string
---@param keySize number
---@param rgbIV System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.Rfc2898DeriveBytes:CryptDeriveKey(algname, alghashname, keySize, rgbIV) end
function System.Security.Cryptography.Rfc2898DeriveBytes:Reset() end

---@class System.Security.Cryptography.ICspAsymmetricAlgorithm
---@field CspKeyContainerInfo System.Security.Cryptography.CspKeyContainerInfo
System.Security.Cryptography.ICspAsymmetricAlgorithm = {}
---@alias CS.System.Security.Cryptography.ICspAsymmetricAlgorithm System.Security.Cryptography.ICspAsymmetricAlgorithm
CS.System.Security.Cryptography.ICspAsymmetricAlgorithm = System.Security.Cryptography.ICspAsymmetricAlgorithm

---@param includePrivateParameters boolean
---@return System.Byte[]
function System.Security.Cryptography.ICspAsymmetricAlgorithm:ExportCspBlob(includePrivateParameters) end
---@param rawData System.Byte[]
function System.Security.Cryptography.ICspAsymmetricAlgorithm:ImportCspBlob(rawData) end

---@class System.Security.Cryptography.KeyNumber
---@field Exchange System.Security.Cryptography.KeyNumber
---@field Signature System.Security.Cryptography.KeyNumber
System.Security.Cryptography.KeyNumber = {}
---@alias CS.System.Security.Cryptography.KeyNumber System.Security.Cryptography.KeyNumber
CS.System.Security.Cryptography.KeyNumber = System.Security.Cryptography.KeyNumber


---@class System.Security.Cryptography.CryptoStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
---@field HasFlushedFinalBlock boolean
System.Security.Cryptography.CryptoStream = {}
---@alias CS.System.Security.Cryptography.CryptoStream System.Security.Cryptography.CryptoStream
CS.System.Security.Cryptography.CryptoStream = System.Security.Cryptography.CryptoStream

---@overload fun(stream: System.IO.Stream, transform: System.Security.Cryptography.ICryptoTransform, mode: System.Security.Cryptography.CryptoStreamMode) : System.Security.Cryptography.CryptoStream
---@param stream System.IO.Stream
---@param transform System.Security.Cryptography.ICryptoTransform
---@param mode System.Security.Cryptography.CryptoStreamMode
---@param leaveOpen boolean
---@return System.Security.Cryptography.CryptoStream
function System.Security.Cryptography.CryptoStream.New(stream, transform, mode, leaveOpen) end
function System.Security.Cryptography.CryptoStream:FlushFinalBlock() end
function System.Security.Cryptography.CryptoStream:Flush() end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Security.Cryptography.CryptoStream:FlushAsync(cancellationToken) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.Security.Cryptography.CryptoStream:Seek(offset, origin) end
---@param value number
function System.Security.Cryptography.CryptoStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Security.Cryptography.CryptoStream:ReadAsync(buffer, offset, count, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Security.Cryptography.CryptoStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.Security.Cryptography.CryptoStream:EndRead(asyncResult) end
---@return number
function System.Security.Cryptography.CryptoStream:ReadByte() end
---@param value number
function System.Security.Cryptography.CryptoStream:WriteByte(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.Security.Cryptography.CryptoStream:Read(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.Security.Cryptography.CryptoStream:WriteAsync(buffer, offset, count, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.Security.Cryptography.CryptoStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.Security.Cryptography.CryptoStream:EndWrite(asyncResult) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.Security.Cryptography.CryptoStream:Write(buffer, offset, count) end
function System.Security.Cryptography.CryptoStream:Clear() end

---@class System.Security.Cryptography.CryptoStreamMode
---@field Read System.Security.Cryptography.CryptoStreamMode
---@field Write System.Security.Cryptography.CryptoStreamMode
System.Security.Cryptography.CryptoStreamMode = {}
---@alias CS.System.Security.Cryptography.CryptoStreamMode System.Security.Cryptography.CryptoStreamMode
CS.System.Security.Cryptography.CryptoStreamMode = System.Security.Cryptography.CryptoStreamMode


---@class System.Security.Cryptography.CryptographicOperations : System.Object
System.Security.Cryptography.CryptographicOperations = {}
---@alias CS.System.Security.Cryptography.CryptographicOperations System.Security.Cryptography.CryptographicOperations
CS.System.Security.Cryptography.CryptographicOperations = System.Security.Cryptography.CryptographicOperations

---@param left System.ReadOnlySpan
---@param right System.ReadOnlySpan
---@return boolean
function System.Security.Cryptography.CryptographicOperations.FixedTimeEquals(left, right) end
---@param buffer System.Span
function System.Security.Cryptography.CryptographicOperations.ZeroMemory(buffer) end

---@class System.Security.Cryptography.HashAlgorithm : System.Object
---@field HashSize number
---@field Hash System.Byte[]
---@field InputBlockSize number
---@field OutputBlockSize number
---@field CanTransformMultipleBlocks boolean
---@field CanReuseTransform boolean
System.Security.Cryptography.HashAlgorithm = {}
---@alias CS.System.Security.Cryptography.HashAlgorithm System.Security.Cryptography.HashAlgorithm
CS.System.Security.Cryptography.HashAlgorithm = System.Security.Cryptography.HashAlgorithm

---@overload fun() : System.Security.Cryptography.HashAlgorithm
---@param hashName string
---@return System.Security.Cryptography.HashAlgorithm
function System.Security.Cryptography.HashAlgorithm.Create(hashName) end
---@overload fun(self: System.Security.Cryptography.HashAlgorithm, buffer: System.Byte[]) : System.Byte[]
---@overload fun(self: System.Security.Cryptography.HashAlgorithm, buffer: System.Byte[], offset: number, count: number) : System.Byte[]
---@param inputStream System.IO.Stream
---@return System.Byte[]
function System.Security.Cryptography.HashAlgorithm:ComputeHash(inputStream) end
---@param source System.ReadOnlySpan
---@param destination System.Span
---@param out_bytesWritten number
---@return boolean,number
function System.Security.Cryptography.HashAlgorithm:TryComputeHash(source, destination, out_bytesWritten) end
function System.Security.Cryptography.HashAlgorithm:Dispose() end
function System.Security.Cryptography.HashAlgorithm:Clear() end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@param outputBuffer System.Byte[]
---@param outputOffset number
---@return number
function System.Security.Cryptography.HashAlgorithm:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset) end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@return System.Byte[]
function System.Security.Cryptography.HashAlgorithm:TransformFinalBlock(inputBuffer, inputOffset, inputCount) end
function System.Security.Cryptography.HashAlgorithm:Initialize() end

---@class System.Security.Cryptography.HashAlgorithmName : System.ValueType
---@field MD5 System.Security.Cryptography.HashAlgorithmName
---@field SHA1 System.Security.Cryptography.HashAlgorithmName
---@field SHA256 System.Security.Cryptography.HashAlgorithmName
---@field SHA384 System.Security.Cryptography.HashAlgorithmName
---@field SHA512 System.Security.Cryptography.HashAlgorithmName
---@field Name string
System.Security.Cryptography.HashAlgorithmName = {}
---@alias CS.System.Security.Cryptography.HashAlgorithmName System.Security.Cryptography.HashAlgorithmName
CS.System.Security.Cryptography.HashAlgorithmName = System.Security.Cryptography.HashAlgorithmName

---@param name string
---@return System.Security.Cryptography.HashAlgorithmName
function System.Security.Cryptography.HashAlgorithmName.New(name) end
---@return string
function System.Security.Cryptography.HashAlgorithmName:ToString() end
---@overload fun(self: System.Security.Cryptography.HashAlgorithmName, obj: System.Object) : boolean
---@param other System.Security.Cryptography.HashAlgorithmName
---@return boolean
function System.Security.Cryptography.HashAlgorithmName:Equals(other) end
---@return number
function System.Security.Cryptography.HashAlgorithmName:GetHashCode() end

---@class System.Security.Cryptography.RSAEncryptionPadding : System.Object
---@field Pkcs1 System.Security.Cryptography.RSAEncryptionPadding
---@field OaepSHA1 System.Security.Cryptography.RSAEncryptionPadding
---@field OaepSHA256 System.Security.Cryptography.RSAEncryptionPadding
---@field OaepSHA384 System.Security.Cryptography.RSAEncryptionPadding
---@field OaepSHA512 System.Security.Cryptography.RSAEncryptionPadding
---@field Mode System.Security.Cryptography.RSAEncryptionPaddingMode
---@field OaepHashAlgorithm System.Security.Cryptography.HashAlgorithmName
System.Security.Cryptography.RSAEncryptionPadding = {}
---@alias CS.System.Security.Cryptography.RSAEncryptionPadding System.Security.Cryptography.RSAEncryptionPadding
CS.System.Security.Cryptography.RSAEncryptionPadding = System.Security.Cryptography.RSAEncryptionPadding

---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Security.Cryptography.RSAEncryptionPadding
function System.Security.Cryptography.RSAEncryptionPadding.CreateOaep(hashAlgorithm) end
---@return number
function System.Security.Cryptography.RSAEncryptionPadding:GetHashCode() end
---@overload fun(self: System.Security.Cryptography.RSAEncryptionPadding, obj: System.Object) : boolean
---@param other System.Security.Cryptography.RSAEncryptionPadding
---@return boolean
function System.Security.Cryptography.RSAEncryptionPadding:Equals(other) end
---@return string
function System.Security.Cryptography.RSAEncryptionPadding:ToString() end

---@class System.Security.Cryptography.RSAEncryptionPaddingMode
---@field Pkcs1 System.Security.Cryptography.RSAEncryptionPaddingMode
---@field Oaep System.Security.Cryptography.RSAEncryptionPaddingMode
System.Security.Cryptography.RSAEncryptionPaddingMode = {}
---@alias CS.System.Security.Cryptography.RSAEncryptionPaddingMode System.Security.Cryptography.RSAEncryptionPaddingMode
CS.System.Security.Cryptography.RSAEncryptionPaddingMode = System.Security.Cryptography.RSAEncryptionPaddingMode


---@class System.Security.Cryptography.RSASignaturePadding : System.Object
---@field Pkcs1 System.Security.Cryptography.RSASignaturePadding
---@field Pss System.Security.Cryptography.RSASignaturePadding
---@field Mode System.Security.Cryptography.RSASignaturePaddingMode
System.Security.Cryptography.RSASignaturePadding = {}
---@alias CS.System.Security.Cryptography.RSASignaturePadding System.Security.Cryptography.RSASignaturePadding
CS.System.Security.Cryptography.RSASignaturePadding = System.Security.Cryptography.RSASignaturePadding

---@return number
function System.Security.Cryptography.RSASignaturePadding:GetHashCode() end
---@overload fun(self: System.Security.Cryptography.RSASignaturePadding, obj: System.Object) : boolean
---@param other System.Security.Cryptography.RSASignaturePadding
---@return boolean
function System.Security.Cryptography.RSASignaturePadding:Equals(other) end
---@return string
function System.Security.Cryptography.RSASignaturePadding:ToString() end

---@class System.Security.Cryptography.RSASignaturePaddingMode
---@field Pkcs1 System.Security.Cryptography.RSASignaturePaddingMode
---@field Pss System.Security.Cryptography.RSASignaturePaddingMode
System.Security.Cryptography.RSASignaturePaddingMode = {}
---@alias CS.System.Security.Cryptography.RSASignaturePaddingMode System.Security.Cryptography.RSASignaturePaddingMode
CS.System.Security.Cryptography.RSASignaturePaddingMode = System.Security.Cryptography.RSASignaturePaddingMode


---@class System.Security.Cryptography.Aes : System.Security.Cryptography.SymmetricAlgorithm
System.Security.Cryptography.Aes = {}
---@alias CS.System.Security.Cryptography.Aes System.Security.Cryptography.Aes
CS.System.Security.Cryptography.Aes = System.Security.Cryptography.Aes

---@overload fun() : System.Security.Cryptography.Aes
---@param algorithmName string
---@return System.Security.Cryptography.Aes
function System.Security.Cryptography.Aes.Create(algorithmName) end

---@class System.Security.Cryptography.AsymmetricAlgorithm : System.Object
---@field KeySize number
---@field LegalKeySizes System.Security.Cryptography.KeySizes[]
---@field SignatureAlgorithm string
---@field KeyExchangeAlgorithm string
System.Security.Cryptography.AsymmetricAlgorithm = {}
---@alias CS.System.Security.Cryptography.AsymmetricAlgorithm System.Security.Cryptography.AsymmetricAlgorithm
CS.System.Security.Cryptography.AsymmetricAlgorithm = System.Security.Cryptography.AsymmetricAlgorithm

---@overload fun() : System.Security.Cryptography.AsymmetricAlgorithm
---@param algName string
---@return System.Security.Cryptography.AsymmetricAlgorithm
function System.Security.Cryptography.AsymmetricAlgorithm.Create(algName) end
function System.Security.Cryptography.AsymmetricAlgorithm:Dispose() end
function System.Security.Cryptography.AsymmetricAlgorithm:Clear() end
---@param xmlString string
function System.Security.Cryptography.AsymmetricAlgorithm:FromXmlString(xmlString) end
---@param includePrivateParameters boolean
---@return string
function System.Security.Cryptography.AsymmetricAlgorithm:ToXmlString(includePrivateParameters) end
---@overload fun(self: System.Security.Cryptography.AsymmetricAlgorithm, passwordBytes: System.ReadOnlySpan, pbeParameters: System.Security.Cryptography.PbeParameters) : System.Byte[]
---@param password System.ReadOnlySpan
---@param pbeParameters System.Security.Cryptography.PbeParameters
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricAlgorithm:ExportEncryptedPkcs8PrivateKey(password, pbeParameters) end
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricAlgorithm:ExportPkcs8PrivateKey() end
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricAlgorithm:ExportSubjectPublicKeyInfo() end
---@overload fun(self: System.Security.Cryptography.AsymmetricAlgorithm, passwordBytes: System.ReadOnlySpan, source: System.ReadOnlySpan, out_bytesRead: number) : number
---@param password System.ReadOnlySpan
---@param source System.ReadOnlySpan
---@param out_bytesRead number
---@return ,number
function System.Security.Cryptography.AsymmetricAlgorithm:ImportEncryptedPkcs8PrivateKey(password, source, out_bytesRead) end
---@param source System.ReadOnlySpan
---@param out_bytesRead number
---@return ,number
function System.Security.Cryptography.AsymmetricAlgorithm:ImportPkcs8PrivateKey(source, out_bytesRead) end
---@param source System.ReadOnlySpan
---@param out_bytesRead number
---@return ,number
function System.Security.Cryptography.AsymmetricAlgorithm:ImportSubjectPublicKeyInfo(source, out_bytesRead) end
---@overload fun(self: System.Security.Cryptography.AsymmetricAlgorithm, passwordBytes: System.ReadOnlySpan, pbeParameters: System.Security.Cryptography.PbeParameters, destination: System.Span, out_bytesWritten: number) : boolean, number
---@param password System.ReadOnlySpan
---@param pbeParameters System.Security.Cryptography.PbeParameters
---@param destination System.Span
---@param out_bytesWritten number
---@return boolean,number
function System.Security.Cryptography.AsymmetricAlgorithm:TryExportEncryptedPkcs8PrivateKey(password, pbeParameters, destination, out_bytesWritten) end
---@param destination System.Span
---@param out_bytesWritten number
---@return boolean,number
function System.Security.Cryptography.AsymmetricAlgorithm:TryExportPkcs8PrivateKey(destination, out_bytesWritten) end
---@param destination System.Span
---@param out_bytesWritten number
---@return boolean,number
function System.Security.Cryptography.AsymmetricAlgorithm:TryExportSubjectPublicKeyInfo(destination, out_bytesWritten) end

---@class System.Security.Cryptography.AsymmetricKeyExchangeDeformatter : System.Object
---@field Parameters string
System.Security.Cryptography.AsymmetricKeyExchangeDeformatter = {}
---@alias CS.System.Security.Cryptography.AsymmetricKeyExchangeDeformatter System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
CS.System.Security.Cryptography.AsymmetricKeyExchangeDeformatter = System.Security.Cryptography.AsymmetricKeyExchangeDeformatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
function System.Security.Cryptography.AsymmetricKeyExchangeDeformatter:SetKey(key) end
---@param rgb System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricKeyExchangeDeformatter:DecryptKeyExchange(rgb) end

---@class System.Security.Cryptography.AsymmetricKeyExchangeFormatter : System.Object
---@field Parameters string
System.Security.Cryptography.AsymmetricKeyExchangeFormatter = {}
---@alias CS.System.Security.Cryptography.AsymmetricKeyExchangeFormatter System.Security.Cryptography.AsymmetricKeyExchangeFormatter
CS.System.Security.Cryptography.AsymmetricKeyExchangeFormatter = System.Security.Cryptography.AsymmetricKeyExchangeFormatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
function System.Security.Cryptography.AsymmetricKeyExchangeFormatter:SetKey(key) end
---@overload fun(self: System.Security.Cryptography.AsymmetricKeyExchangeFormatter, data: System.Byte[]) : System.Byte[]
---@param data System.Byte[]
---@param symAlgType System.Type
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricKeyExchangeFormatter:CreateKeyExchange(data, symAlgType) end

---@class System.Security.Cryptography.AsymmetricSignatureDeformatter : System.Object
System.Security.Cryptography.AsymmetricSignatureDeformatter = {}
---@alias CS.System.Security.Cryptography.AsymmetricSignatureDeformatter System.Security.Cryptography.AsymmetricSignatureDeformatter
CS.System.Security.Cryptography.AsymmetricSignatureDeformatter = System.Security.Cryptography.AsymmetricSignatureDeformatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
function System.Security.Cryptography.AsymmetricSignatureDeformatter:SetKey(key) end
---@param strName string
function System.Security.Cryptography.AsymmetricSignatureDeformatter:SetHashAlgorithm(strName) end
---@overload fun(self: System.Security.Cryptography.AsymmetricSignatureDeformatter, hash: System.Security.Cryptography.HashAlgorithm, rgbSignature: System.Byte[]) : boolean
---@param rgbHash System.Byte[]
---@param rgbSignature System.Byte[]
---@return boolean
function System.Security.Cryptography.AsymmetricSignatureDeformatter:VerifySignature(rgbHash, rgbSignature) end

---@class System.Security.Cryptography.AsymmetricSignatureFormatter : System.Object
System.Security.Cryptography.AsymmetricSignatureFormatter = {}
---@alias CS.System.Security.Cryptography.AsymmetricSignatureFormatter System.Security.Cryptography.AsymmetricSignatureFormatter
CS.System.Security.Cryptography.AsymmetricSignatureFormatter = System.Security.Cryptography.AsymmetricSignatureFormatter

---@param key System.Security.Cryptography.AsymmetricAlgorithm
function System.Security.Cryptography.AsymmetricSignatureFormatter:SetKey(key) end
---@param strName string
function System.Security.Cryptography.AsymmetricSignatureFormatter:SetHashAlgorithm(strName) end
---@overload fun(self: System.Security.Cryptography.AsymmetricSignatureFormatter, hash: System.Security.Cryptography.HashAlgorithm) : System.Byte[]
---@param rgbHash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.AsymmetricSignatureFormatter:CreateSignature(rgbHash) end

---@class System.Security.Cryptography.FromBase64TransformMode
---@field IgnoreWhiteSpaces System.Security.Cryptography.FromBase64TransformMode
---@field DoNotIgnoreWhiteSpaces System.Security.Cryptography.FromBase64TransformMode
System.Security.Cryptography.FromBase64TransformMode = {}
---@alias CS.System.Security.Cryptography.FromBase64TransformMode System.Security.Cryptography.FromBase64TransformMode
CS.System.Security.Cryptography.FromBase64TransformMode = System.Security.Cryptography.FromBase64TransformMode


---@class System.Security.Cryptography.ToBase64Transform : System.Object
---@field InputBlockSize number
---@field OutputBlockSize number
---@field CanTransformMultipleBlocks boolean
---@field CanReuseTransform boolean
System.Security.Cryptography.ToBase64Transform = {}
---@alias CS.System.Security.Cryptography.ToBase64Transform System.Security.Cryptography.ToBase64Transform
CS.System.Security.Cryptography.ToBase64Transform = System.Security.Cryptography.ToBase64Transform

---@return System.Security.Cryptography.ToBase64Transform
function System.Security.Cryptography.ToBase64Transform.New() end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@param outputBuffer System.Byte[]
---@param outputOffset number
---@return number
function System.Security.Cryptography.ToBase64Transform:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset) end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@return System.Byte[]
function System.Security.Cryptography.ToBase64Transform:TransformFinalBlock(inputBuffer, inputOffset, inputCount) end
function System.Security.Cryptography.ToBase64Transform:Dispose() end
function System.Security.Cryptography.ToBase64Transform:Clear() end

---@class System.Security.Cryptography.FromBase64Transform : System.Object
---@field InputBlockSize number
---@field OutputBlockSize number
---@field CanTransformMultipleBlocks boolean
---@field CanReuseTransform boolean
System.Security.Cryptography.FromBase64Transform = {}
---@alias CS.System.Security.Cryptography.FromBase64Transform System.Security.Cryptography.FromBase64Transform
CS.System.Security.Cryptography.FromBase64Transform = System.Security.Cryptography.FromBase64Transform

---@overload fun() : System.Security.Cryptography.FromBase64Transform
---@param whitespaces System.Security.Cryptography.FromBase64TransformMode
---@return System.Security.Cryptography.FromBase64Transform
function System.Security.Cryptography.FromBase64Transform.New(whitespaces) end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@param outputBuffer System.Byte[]
---@param outputOffset number
---@return number
function System.Security.Cryptography.FromBase64Transform:TransformBlock(inputBuffer, inputOffset, inputCount, outputBuffer, outputOffset) end
---@param inputBuffer System.Byte[]
---@param inputOffset number
---@param inputCount number
---@return System.Byte[]
function System.Security.Cryptography.FromBase64Transform:TransformFinalBlock(inputBuffer, inputOffset, inputCount) end
function System.Security.Cryptography.FromBase64Transform:Dispose() end
function System.Security.Cryptography.FromBase64Transform:Clear() end

---@class System.Security.Cryptography.CipherMode
---@field CBC System.Security.Cryptography.CipherMode
---@field ECB System.Security.Cryptography.CipherMode
---@field OFB System.Security.Cryptography.CipherMode
---@field CFB System.Security.Cryptography.CipherMode
---@field CTS System.Security.Cryptography.CipherMode
System.Security.Cryptography.CipherMode = {}
---@alias CS.System.Security.Cryptography.CipherMode System.Security.Cryptography.CipherMode
CS.System.Security.Cryptography.CipherMode = System.Security.Cryptography.CipherMode


---@class System.Security.Cryptography.PaddingMode
---@field None System.Security.Cryptography.PaddingMode
---@field PKCS7 System.Security.Cryptography.PaddingMode
---@field Zeros System.Security.Cryptography.PaddingMode
---@field ANSIX923 System.Security.Cryptography.PaddingMode
---@field ISO10126 System.Security.Cryptography.PaddingMode
System.Security.Cryptography.PaddingMode = {}
---@alias CS.System.Security.Cryptography.PaddingMode System.Security.Cryptography.PaddingMode
CS.System.Security.Cryptography.PaddingMode = System.Security.Cryptography.PaddingMode


---@class System.Security.Cryptography.KeySizes : System.Object
---@field MinSize number
---@field MaxSize number
---@field SkipSize number
System.Security.Cryptography.KeySizes = {}
---@alias CS.System.Security.Cryptography.KeySizes System.Security.Cryptography.KeySizes
CS.System.Security.Cryptography.KeySizes = System.Security.Cryptography.KeySizes

---@param minSize number
---@param maxSize number
---@param skipSize number
---@return System.Security.Cryptography.KeySizes
function System.Security.Cryptography.KeySizes.New(minSize, maxSize, skipSize) end

---@class System.Security.Cryptography.CryptographicException : System.SystemException
System.Security.Cryptography.CryptographicException = {}
---@alias CS.System.Security.Cryptography.CryptographicException System.Security.Cryptography.CryptographicException
CS.System.Security.Cryptography.CryptographicException = System.Security.Cryptography.CryptographicException

---@overload fun() : System.Security.Cryptography.CryptographicException
---@overload fun(message: string) : System.Security.Cryptography.CryptographicException
---@overload fun(format: string, insert: string) : System.Security.Cryptography.CryptographicException
---@overload fun(message: string, inner: System.Exception) : System.Security.Cryptography.CryptographicException
---@param hr number
---@return System.Security.Cryptography.CryptographicException
function System.Security.Cryptography.CryptographicException.New(hr) end

---@class System.Security.Cryptography.CryptographicUnexpectedOperationException : System.Security.Cryptography.CryptographicException
System.Security.Cryptography.CryptographicUnexpectedOperationException = {}
---@alias CS.System.Security.Cryptography.CryptographicUnexpectedOperationException System.Security.Cryptography.CryptographicUnexpectedOperationException
CS.System.Security.Cryptography.CryptographicUnexpectedOperationException = System.Security.Cryptography.CryptographicUnexpectedOperationException

---@overload fun() : System.Security.Cryptography.CryptographicUnexpectedOperationException
---@overload fun(message: string) : System.Security.Cryptography.CryptographicUnexpectedOperationException
---@overload fun(format: string, insert: string) : System.Security.Cryptography.CryptographicUnexpectedOperationException
---@param message string
---@param inner System.Exception
---@return System.Security.Cryptography.CryptographicUnexpectedOperationException
function System.Security.Cryptography.CryptographicUnexpectedOperationException.New(message, inner) end

---@class System.Security.Cryptography.CspProviderFlags
---@field NoFlags System.Security.Cryptography.CspProviderFlags
---@field UseMachineKeyStore System.Security.Cryptography.CspProviderFlags
---@field UseDefaultKeyContainer System.Security.Cryptography.CspProviderFlags
---@field UseNonExportableKey System.Security.Cryptography.CspProviderFlags
---@field UseExistingKey System.Security.Cryptography.CspProviderFlags
---@field UseArchivableKey System.Security.Cryptography.CspProviderFlags
---@field UseUserProtectedKey System.Security.Cryptography.CspProviderFlags
---@field NoPrompt System.Security.Cryptography.CspProviderFlags
---@field CreateEphemeralKey System.Security.Cryptography.CspProviderFlags
System.Security.Cryptography.CspProviderFlags = {}
---@alias CS.System.Security.Cryptography.CspProviderFlags System.Security.Cryptography.CspProviderFlags
CS.System.Security.Cryptography.CspProviderFlags = System.Security.Cryptography.CspProviderFlags


---@class System.Security.Cryptography.CspParameters : System.Object
---@field ProviderType number
---@field ProviderName string
---@field KeyContainerName string
---@field KeyNumber number
---@field Flags System.Security.Cryptography.CspProviderFlags
---@field CryptoKeySecurity System.Security.AccessControl.CryptoKeySecurity
---@field KeyPassword System.Security.SecureString
---@field ParentWindowHandle System.IntPtr
System.Security.Cryptography.CspParameters = {}
---@alias CS.System.Security.Cryptography.CspParameters System.Security.Cryptography.CspParameters
CS.System.Security.Cryptography.CspParameters = System.Security.Cryptography.CspParameters

---@overload fun() : System.Security.Cryptography.CspParameters
---@overload fun(dwTypeIn: number) : System.Security.Cryptography.CspParameters
---@overload fun(dwTypeIn: number, strProviderNameIn: string) : System.Security.Cryptography.CspParameters
---@overload fun(dwTypeIn: number, strProviderNameIn: string, strContainerNameIn: string) : System.Security.Cryptography.CspParameters
---@overload fun(providerType: number, providerName: string, keyContainerName: string, cryptoKeySecurity: System.Security.AccessControl.CryptoKeySecurity, keyPassword: System.Security.SecureString) : System.Security.Cryptography.CspParameters
---@param providerType number
---@param providerName string
---@param keyContainerName string
---@param cryptoKeySecurity System.Security.AccessControl.CryptoKeySecurity
---@param parentWindowHandle System.IntPtr
---@return System.Security.Cryptography.CspParameters
function System.Security.Cryptography.CspParameters.New(providerType, providerName, keyContainerName, cryptoKeySecurity, parentWindowHandle) end

---@class System.Security.Cryptography.DeriveBytes : System.Object
System.Security.Cryptography.DeriveBytes = {}
---@alias CS.System.Security.Cryptography.DeriveBytes System.Security.Cryptography.DeriveBytes
CS.System.Security.Cryptography.DeriveBytes = System.Security.Cryptography.DeriveBytes

---@param cb number
---@return System.Byte[]
function System.Security.Cryptography.DeriveBytes:GetBytes(cb) end
function System.Security.Cryptography.DeriveBytes:Reset() end
function System.Security.Cryptography.DeriveBytes:Dispose() end

---@class System.Security.Cryptography.DES : System.Security.Cryptography.SymmetricAlgorithm
---@field Key System.Byte[]
System.Security.Cryptography.DES = {}
---@alias CS.System.Security.Cryptography.DES System.Security.Cryptography.DES
CS.System.Security.Cryptography.DES = System.Security.Cryptography.DES

---@overload fun() : System.Security.Cryptography.DES
---@param algName string
---@return System.Security.Cryptography.DES
function System.Security.Cryptography.DES.Create(algName) end
---@param rgbKey System.Byte[]
---@return boolean
function System.Security.Cryptography.DES.IsWeakKey(rgbKey) end
---@param rgbKey System.Byte[]
---@return boolean
function System.Security.Cryptography.DES.IsSemiWeakKey(rgbKey) end

---@class System.Security.Cryptography.DESCryptoServiceProvider : System.Security.Cryptography.DES
System.Security.Cryptography.DESCryptoServiceProvider = {}
---@alias CS.System.Security.Cryptography.DESCryptoServiceProvider System.Security.Cryptography.DESCryptoServiceProvider
CS.System.Security.Cryptography.DESCryptoServiceProvider = System.Security.Cryptography.DESCryptoServiceProvider

---@return System.Security.Cryptography.DESCryptoServiceProvider
function System.Security.Cryptography.DESCryptoServiceProvider.New() end
---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.DESCryptoServiceProvider:CreateEncryptor(rgbKey, rgbIV) end
---@param rgbKey System.Byte[]
---@param rgbIV System.Byte[]
---@return System.Security.Cryptography.ICryptoTransform
function System.Security.Cryptography.DESCryptoServiceProvider:CreateDecryptor(rgbKey, rgbIV) end
function System.Security.Cryptography.DESCryptoServiceProvider:GenerateKey() end
function System.Security.Cryptography.DESCryptoServiceProvider:GenerateIV() end

---@class System.Security.Cryptography.DSAParameters : System.ValueType
---@field P System.Byte[]
---@field Q System.Byte[]
---@field G System.Byte[]
---@field Y System.Byte[]
---@field J System.Byte[]
---@field X System.Byte[]
---@field Seed System.Byte[]
---@field Counter number
System.Security.Cryptography.DSAParameters = {}
---@alias CS.System.Security.Cryptography.DSAParameters System.Security.Cryptography.DSAParameters
CS.System.Security.Cryptography.DSAParameters = System.Security.Cryptography.DSAParameters


---@class System.Security.Cryptography.DSA : System.Security.Cryptography.AsymmetricAlgorithm
System.Security.Cryptography.DSA = {}
---@alias CS.System.Security.Cryptography.DSA System.Security.Cryptography.DSA
CS.System.Security.Cryptography.DSA = System.Security.Cryptography.DSA

---@overload fun() : System.Security.Cryptography.DSA
---@overload fun(algName: string) : System.Security.Cryptography.DSA
---@overload fun(keySizeInBits: number) : System.Security.Cryptography.DSA
---@param parameters System.Security.Cryptography.DSAParameters
---@return System.Security.Cryptography.DSA
function System.Security.Cryptography.DSA.Create(parameters) end
---@param rgbHash System.Byte[]
---@return System.Byte[]
function System.Security.Cryptography.DSA:CreateSignature(rgbHash) end
---@overload fun(self: System.Security.Cryptography.DSA, rgbHash: System.Byte[], rgbSignature: System.Byte[]) : boolean
---@param hash System.ReadOnlySpan
---@param signature System.ReadOnlySpan
---@return boolean
function System.Security.Cryptography.DSA:VerifySignature(hash, signature) end
---@overload fun(self: System.Security.Cryptography.DSA, data: System.Byte[], hashAlgorithm: System.Security.Cryptography.HashAlgorithmName) : System.Byte[]
---@overload fun(self: System.Security.Cryptography.DSA, data: System.Byte[], offset: number, count: number, hashAlgorithm: System.Security.Cryptography.HashAlgorithmName) : System.Byte[]
---@param data System.IO.Stream
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return System.Byte[]
function System.Security.Cryptography.DSA:SignData(data, hashAlgorithm) end
---@overload fun(self: System.Security.Cryptography.DSA, data: System.Byte[], signature: System.Byte[], hashAlgorithm: System.Security.Cryptography.HashAlgorithmName) : boolean
---@overload fun(self: System.Security.Cryptography.DSA, data: System.Byte[], offset: number, count: number, signature: System.Byte[], hashAlgorithm: System.Security.Cryptography.HashAlgorithmName) : boolean
---@overload fun(self: System.Security.Cryptography.DSA, data: System.IO.Stream, signature: System.Byte[], hashAlgorithm: System.Security.Cryptography.HashAlgorithmName) : boolean
---@param data System.ReadOnlySpan
---@param signature System.ReadOnlySpan
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@return boolean
function System.Security.Cryptography.DSA:VerifyData(data, signature, hashAlgorithm) end
---@param xmlString string
function System.Security.Cryptography.DSA:FromXmlString(xmlString) end
---@param includePrivateParameters boolean
---@return string
function System.Security.Cryptography.DSA:ToXmlString(includePrivateParameters) end
---@param includePrivateParameters boolean
---@return System.Security.Cryptography.DSAParameters
function System.Security.Cryptography.DSA:ExportParameters(includePrivateParameters) end
---@param parameters System.Security.Cryptography.DSAParameters
function System.Security.Cryptography.DSA:ImportParameters(parameters) end
---@param hash System.ReadOnlySpan
---@param destination System.Span
---@param out_bytesWritten number
---@return boolean,number
function System.Security.Cryptography.DSA:TryCreateSignature(hash, destination, out_bytesWritten) end
---@param data System.ReadOnlySpan
---@param destination System.Span
---@param hashAlgorithm System.Security.Cryptography.HashAlgorithmName
---@param out_bytesWritten number
---@return boolean,number
function System.Security.Cryptography.DSA:TrySignData(data, destination, hashAlgorithm, out_bytesWritten) end
