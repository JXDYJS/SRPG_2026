---@meta

---@overload fun(self: System.Reflection.RuntimeMethodInfo, delegateType: System.Type) : System.Delegate
---@param delegateType System.Type
---@param target System.Object
---@return System.Delegate
function System.Reflection.RuntimeMethodInfo:CreateDelegate(delegateType, target) end
---@return string
function System.Reflection.RuntimeMethodInfo:ToString() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Reflection.RuntimeMethodInfo:GetObjectData(info, context) end
---@return System.Reflection.MethodInfo
function System.Reflection.RuntimeMethodInfo:GetBaseDefinition() end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.RuntimeMethodInfo:GetMethodImplementationFlags() end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.RuntimeMethodInfo:GetParameters() end
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.RuntimeMethodInfo:Invoke(obj, invokeAttr, binder, parameters, culture) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.RuntimeMethodInfo:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.RuntimeMethodInfo, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.RuntimeMethodInfo:GetCustomAttributes(attributeType, inherit) end
---@param methodInstantiation System.Type[]
---@return System.Reflection.MethodInfo
function System.Reflection.RuntimeMethodInfo:MakeGenericMethod(methodInstantiation) end
---@return System.Type[]
function System.Reflection.RuntimeMethodInfo:GetGenericArguments() end
---@return System.Reflection.MethodInfo
function System.Reflection.RuntimeMethodInfo:GetGenericMethodDefinition() end
---@return System.Reflection.MethodBody
function System.Reflection.RuntimeMethodInfo:GetMethodBody() end
---@return System.Collections.Generic.IList
function System.Reflection.RuntimeMethodInfo:GetCustomAttributesData() end
---@param other System.Reflection.MemberInfo
---@return boolean
function System.Reflection.RuntimeMethodInfo:HasSameMetadataDefinitionAs(other) end

---@class System.Reflection.RuntimeConstructorInfo : System.Reflection.ConstructorInfo
---@field Module System.Reflection.Module
---@field MethodHandle System.RuntimeMethodHandle
---@field Attributes System.Reflection.MethodAttributes
---@field CallingConvention System.Reflection.CallingConventions
---@field ContainsGenericParameters boolean
---@field ReflectedType System.Type
---@field DeclaringType System.Type
---@field Name string
---@field IsSecurityTransparent boolean
---@field IsSecurityCritical boolean
---@field IsSecuritySafeCritical boolean
---@field MetadataToken number
System.Reflection.RuntimeConstructorInfo = {}
---@alias CS.System.Reflection.RuntimeConstructorInfo System.Reflection.RuntimeConstructorInfo
CS.System.Reflection.RuntimeConstructorInfo = System.Reflection.RuntimeConstructorInfo

---@return System.Reflection.RuntimeConstructorInfo
function System.Reflection.RuntimeConstructorInfo.New() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Reflection.RuntimeConstructorInfo:GetObjectData(info, context) end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.RuntimeConstructorInfo:GetMethodImplementationFlags() end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.RuntimeConstructorInfo:GetParameters() end
---@overload fun(self: System.Reflection.RuntimeConstructorInfo, obj: System.Object, invokeAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, parameters: System.Object[], culture: System.Globalization.CultureInfo) : System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.RuntimeConstructorInfo:Invoke(invokeAttr, binder, parameters, culture) end
---@param obj System.Object
---@param parameters System.Object[]
---@param wrapExceptions boolean
---@return System.Object
function System.Reflection.RuntimeConstructorInfo:InternalInvoke(obj, parameters, wrapExceptions) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.RuntimeConstructorInfo:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.RuntimeConstructorInfo, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.RuntimeConstructorInfo:GetCustomAttributes(attributeType, inherit) end
---@return System.Reflection.MethodBody
function System.Reflection.RuntimeConstructorInfo:GetMethodBody() end
---@return string
function System.Reflection.RuntimeConstructorInfo:ToString() end
---@return System.Collections.Generic.IList
function System.Reflection.RuntimeConstructorInfo:GetCustomAttributesData() end
---@param other System.Reflection.MemberInfo
---@return boolean
function System.Reflection.RuntimeConstructorInfo:HasSameMetadataDefinitionAs(other) end

---@class System.Reflection.RuntimeModule : System.Reflection.Module
---@field Assembly System.Reflection.Assembly
---@field Name string
---@field ScopeName string
---@field MDStreamVersion number
---@field ModuleVersionId System.Guid
---@field FullyQualifiedName string
---@field MetadataToken number
System.Reflection.RuntimeModule = {}
---@alias CS.System.Reflection.RuntimeModule System.Reflection.RuntimeModule
CS.System.Reflection.RuntimeModule = System.Reflection.RuntimeModule

---@return System.Reflection.RuntimeModule
function System.Reflection.RuntimeModule.New() end
---@return boolean
function System.Reflection.RuntimeModule:IsResource() end
---@param filter System.Reflection.TypeFilter
---@param filterCriteria System.Object
---@return System.Type[]
function System.Reflection.RuntimeModule:FindTypes(filter, filterCriteria) end
---@overload fun(self: System.Reflection.RuntimeModule, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.RuntimeModule:GetCustomAttributes(attributeType, inherit) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.RuntimeModule:GetField(name, bindingAttr) end
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.RuntimeModule:GetFields(bindingFlags) end
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.RuntimeModule:GetMethods(bindingFlags) end
---@param out_peKind System.Reflection.PortableExecutableKinds
---@param out_machine System.Reflection.ImageFileMachine
---@return ,System.Reflection.PortableExecutableKinds,System.Reflection.ImageFileMachine
function System.Reflection.RuntimeModule:GetPEKind(out_peKind, out_machine) end
---@param className string
---@param throwOnError boolean
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.RuntimeModule:GetType(className, throwOnError, ignoreCase) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.RuntimeModule:IsDefined(attributeType, inherit) end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.FieldInfo
function System.Reflection.RuntimeModule:ResolveField(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MemberInfo
function System.Reflection.RuntimeModule:ResolveMember(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MethodBase
function System.Reflection.RuntimeModule:ResolveMethod(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param metadataToken number
---@return string
function System.Reflection.RuntimeModule:ResolveString(metadataToken) end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Type
function System.Reflection.RuntimeModule:ResolveType(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param metadataToken number
---@return System.Byte[]
function System.Reflection.RuntimeModule:ResolveSignature(metadataToken) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Reflection.RuntimeModule:GetObjectData(info, context) end
---@return System.Security.Cryptography.X509Certificates.X509Certificate
function System.Reflection.RuntimeModule:GetSignerCertificate() end
---@return System.Type[]
function System.Reflection.RuntimeModule:GetTypes() end
---@return System.Collections.Generic.IList
function System.Reflection.RuntimeModule:GetCustomAttributesData() end

---@class System.Reflection.ResolveTokenError
---@field OutOfRange System.Reflection.ResolveTokenError
---@field BadTable System.Reflection.ResolveTokenError
---@field Other System.Reflection.ResolveTokenError
System.Reflection.ResolveTokenError = {}
---@alias CS.System.Reflection.ResolveTokenError System.Reflection.ResolveTokenError
CS.System.Reflection.ResolveTokenError = System.Reflection.ResolveTokenError


---@class System.Reflection.RuntimeParameterInfo : System.Reflection.ParameterInfo
---@field DefaultValue System.Object
---@field RawDefaultValue System.Object
---@field MetadataToken number
---@field HasDefaultValue boolean
System.Reflection.RuntimeParameterInfo = {}
---@alias CS.System.Reflection.RuntimeParameterInfo System.Reflection.RuntimeParameterInfo
CS.System.Reflection.RuntimeParameterInfo = System.Reflection.RuntimeParameterInfo

---@overload fun(self: System.Reflection.RuntimeParameterInfo, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.RuntimeParameterInfo:GetCustomAttributes(attributeType, inherit) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.RuntimeParameterInfo:IsDefined(attributeType, inherit) end
---@return System.Collections.Generic.IList
function System.Reflection.RuntimeParameterInfo:GetCustomAttributesData() end
---@return System.Type[]
function System.Reflection.RuntimeParameterInfo:GetOptionalCustomModifiers() end
---@return System.Type[]
function System.Reflection.RuntimeParameterInfo:GetRequiredCustomModifiers() end

---@class System.Reflection.MonoPropertyInfo : System.ValueType
---@field parent System.Type
---@field declaring_type System.Type
---@field name string
---@field get_method System.Reflection.MethodInfo
---@field set_method System.Reflection.MethodInfo
---@field attrs System.Reflection.PropertyAttributes
System.Reflection.MonoPropertyInfo = {}
---@alias CS.System.Reflection.MonoPropertyInfo System.Reflection.MonoPropertyInfo
CS.System.Reflection.MonoPropertyInfo = System.Reflection.MonoPropertyInfo


---@class System.Reflection.PInfo
---@field Attributes System.Reflection.PInfo
---@field GetMethod System.Reflection.PInfo
---@field SetMethod System.Reflection.PInfo
---@field ReflectedType System.Reflection.PInfo
---@field DeclaringType System.Reflection.PInfo
---@field Name System.Reflection.PInfo
System.Reflection.PInfo = {}
---@alias CS.System.Reflection.PInfo System.Reflection.PInfo
CS.System.Reflection.PInfo = System.Reflection.PInfo


---@class System.Reflection.GetterAdapter : System.MulticastDelegate
System.Reflection.GetterAdapter = {}
---@alias CS.System.Reflection.GetterAdapter System.Reflection.GetterAdapter
CS.System.Reflection.GetterAdapter = System.Reflection.GetterAdapter

---@param object System.Object
---@param method System.IntPtr
---@return System.Reflection.GetterAdapter
function System.Reflection.GetterAdapter.New(object, method) end
---@param _this System.Object
---@return System.Object
function System.Reflection.GetterAdapter:Invoke(_this) end
---@param _this System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Reflection.GetterAdapter:BeginInvoke(_this, callback, object) end
---@param result System.IAsyncResult
---@return System.Object
function System.Reflection.GetterAdapter:EndInvoke(result) end

---@class System.Reflection.Getter : System.MulticastDelegate
System.Reflection.Getter = {}
---@alias CS.System.Reflection.Getter System.Reflection.Getter
CS.System.Reflection.Getter = System.Reflection.Getter

---@param object System.Object
---@param method System.IntPtr
---@return System.Reflection.Getter
function System.Reflection.Getter.New(object, method) end
---@param _this T
---@return R
function System.Reflection.Getter:Invoke(_this) end
---@param _this T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Reflection.Getter:BeginInvoke(_this, callback, object) end
---@param result System.IAsyncResult
---@return R
function System.Reflection.Getter:EndInvoke(result) end

---@class System.Reflection.RuntimePropertyInfo : System.Reflection.PropertyInfo
---@field Module System.Reflection.Module
---@field Attributes System.Reflection.PropertyAttributes
---@field CanRead boolean
---@field CanWrite boolean
---@field PropertyType System.Type
---@field ReflectedType System.Type
---@field DeclaringType System.Type
---@field Name string
---@field MetadataToken number
System.Reflection.RuntimePropertyInfo = {}
---@alias CS.System.Reflection.RuntimePropertyInfo System.Reflection.RuntimePropertyInfo
CS.System.Reflection.RuntimePropertyInfo = System.Reflection.RuntimePropertyInfo

---@return System.Reflection.RuntimePropertyInfo
function System.Reflection.RuntimePropertyInfo.New() end
---@return string
function System.Reflection.RuntimePropertyInfo:ToString() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Reflection.RuntimePropertyInfo:GetObjectData(info, context) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function System.Reflection.RuntimePropertyInfo:GetAccessors(nonPublic) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.RuntimePropertyInfo:GetGetMethod(nonPublic) end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.RuntimePropertyInfo:GetIndexParameters() end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.RuntimePropertyInfo:GetSetMethod(nonPublic) end
---@return System.Object
function System.Reflection.RuntimePropertyInfo:GetConstantValue() end
---@return System.Object
function System.Reflection.RuntimePropertyInfo:GetRawConstantValue() end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.RuntimePropertyInfo:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.RuntimePropertyInfo, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.RuntimePropertyInfo:GetCustomAttributes(attributeType, inherit) end
---@overload fun(self: System.Reflection.RuntimePropertyInfo, obj: System.Object, index: System.Object[]) : System.Object
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.RuntimePropertyInfo:GetValue(obj, invokeAttr, binder, index, culture) end
---@param obj System.Object
---@param value System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index System.Object[]
---@param culture System.Globalization.CultureInfo
function System.Reflection.RuntimePropertyInfo:SetValue(obj, value, invokeAttr, binder, index, culture) end
---@return System.Type[]
function System.Reflection.RuntimePropertyInfo:GetOptionalCustomModifiers() end
---@return System.Type[]
function System.Reflection.RuntimePropertyInfo:GetRequiredCustomModifiers() end
---@return System.Collections.Generic.IList
function System.Reflection.RuntimePropertyInfo:GetCustomAttributesData() end
---@param other System.Reflection.MemberInfo
---@return boolean
function System.Reflection.RuntimePropertyInfo:HasSameMetadataDefinitionAs(other) end

---@class System.Reflection.RuntimePropertyInfo.GetterAdapter : System.MulticastDelegate
System.Reflection.RuntimePropertyInfo.GetterAdapter = {}
---@alias CS.System.Reflection.RuntimePropertyInfo.GetterAdapter System.Reflection.RuntimePropertyInfo.GetterAdapter
CS.System.Reflection.RuntimePropertyInfo.GetterAdapter = System.Reflection.RuntimePropertyInfo.GetterAdapter

---@param object System.Object
---@param method System.IntPtr
---@return System.Reflection.RuntimePropertyInfo.GetterAdapter
function System.Reflection.RuntimePropertyInfo.GetterAdapter.New(object, method) end
---@param _this System.Object
---@return System.Object
function System.Reflection.RuntimePropertyInfo.GetterAdapter:Invoke(_this) end
---@param _this System.Object
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Reflection.RuntimePropertyInfo.GetterAdapter:BeginInvoke(_this, callback, object) end
---@param result System.IAsyncResult
---@return System.Object
function System.Reflection.RuntimePropertyInfo.GetterAdapter:EndInvoke(result) end

---@class System.Reflection.RuntimePropertyInfo.Getter : System.MulticastDelegate
System.Reflection.RuntimePropertyInfo.Getter = {}
---@alias CS.System.Reflection.RuntimePropertyInfo.Getter System.Reflection.RuntimePropertyInfo.Getter
CS.System.Reflection.RuntimePropertyInfo.Getter = System.Reflection.RuntimePropertyInfo.Getter

---@param object System.Object
---@param method System.IntPtr
---@return System.Reflection.RuntimePropertyInfo.Getter
function System.Reflection.RuntimePropertyInfo.Getter.New(object, method) end
---@param _this T
---@return R
function System.Reflection.RuntimePropertyInfo.Getter:Invoke(_this) end
---@param _this T
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Reflection.RuntimePropertyInfo.Getter:BeginInvoke(_this, callback, object) end
---@param result System.IAsyncResult
---@return R
function System.Reflection.RuntimePropertyInfo.Getter:EndInvoke(result) end

---@class System.Reflection.RuntimePropertyInfo.StaticGetter : System.MulticastDelegate
System.Reflection.RuntimePropertyInfo.StaticGetter = {}
---@alias CS.System.Reflection.RuntimePropertyInfo.StaticGetter System.Reflection.RuntimePropertyInfo.StaticGetter
CS.System.Reflection.RuntimePropertyInfo.StaticGetter = System.Reflection.RuntimePropertyInfo.StaticGetter

---@param object System.Object
---@param method System.IntPtr
---@return System.Reflection.RuntimePropertyInfo.StaticGetter
function System.Reflection.RuntimePropertyInfo.StaticGetter.New(object, method) end
---@return R
function System.Reflection.RuntimePropertyInfo.StaticGetter:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Reflection.RuntimePropertyInfo.StaticGetter:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return R
function System.Reflection.RuntimePropertyInfo.StaticGetter:EndInvoke(result) end

---@class System.Reflection.StrongNameKeyPair : System.Object
---@field PublicKey System.Byte[]
System.Reflection.StrongNameKeyPair = {}
---@alias CS.System.Reflection.StrongNameKeyPair System.Reflection.StrongNameKeyPair
CS.System.Reflection.StrongNameKeyPair = System.Reflection.StrongNameKeyPair

---@overload fun(keyPairArray: System.Byte[]) : System.Reflection.StrongNameKeyPair
---@overload fun(keyPairFile: System.IO.FileStream) : System.Reflection.StrongNameKeyPair
---@param keyPairContainer string
---@return System.Reflection.StrongNameKeyPair
function System.Reflection.StrongNameKeyPair.New(keyPairContainer) end

---@class System.Reflection.Metadata.AssemblyExtensions : System.Object
System.Reflection.Metadata.AssemblyExtensions = {}
---@alias CS.System.Reflection.Metadata.AssemblyExtensions System.Reflection.Metadata.AssemblyExtensions
CS.System.Reflection.Metadata.AssemblyExtensions = System.Reflection.Metadata.AssemblyExtensions

---@param assembly System.Reflection.Assembly
---@param out_blob System.Byte*
---@param out_length number
---@return boolean,System.Byte*,number
function System.Reflection.Metadata.AssemblyExtensions.TryGetRawMetadata(assembly, out_blob, out_length) end

---@class System.Reflection.Emit.OpCodeType
---@field Macro System.Reflection.Emit.OpCodeType
---@field Nternal System.Reflection.Emit.OpCodeType
---@field Objmodel System.Reflection.Emit.OpCodeType
---@field Prefix System.Reflection.Emit.OpCodeType
---@field Primitive System.Reflection.Emit.OpCodeType
System.Reflection.Emit.OpCodeType = {}
---@alias CS.System.Reflection.Emit.OpCodeType System.Reflection.Emit.OpCodeType
CS.System.Reflection.Emit.OpCodeType = System.Reflection.Emit.OpCodeType


---@class System.Reflection.Emit.OperandType
---@field InlineBrTarget System.Reflection.Emit.OperandType
---@field InlineField System.Reflection.Emit.OperandType
---@field InlineI System.Reflection.Emit.OperandType
---@field InlineI8 System.Reflection.Emit.OperandType
---@field InlineMethod System.Reflection.Emit.OperandType
---@field InlineNone System.Reflection.Emit.OperandType
---@field InlineR System.Reflection.Emit.OperandType
---@field InlineSig System.Reflection.Emit.OperandType
---@field InlineString System.Reflection.Emit.OperandType
---@field InlineSwitch System.Reflection.Emit.OperandType
---@field InlineTok System.Reflection.Emit.OperandType
---@field InlineType System.Reflection.Emit.OperandType
---@field InlineVar System.Reflection.Emit.OperandType
---@field ShortInlineBrTarget System.Reflection.Emit.OperandType
---@field ShortInlineI System.Reflection.Emit.OperandType
---@field ShortInlineR System.Reflection.Emit.OperandType
---@field ShortInlineVar System.Reflection.Emit.OperandType
System.Reflection.Emit.OperandType = {}
---@alias CS.System.Reflection.Emit.OperandType System.Reflection.Emit.OperandType
CS.System.Reflection.Emit.OperandType = System.Reflection.Emit.OperandType


---@class System.Reflection.Emit.PackingSize
---@field Unspecified System.Reflection.Emit.PackingSize
---@field Size1 System.Reflection.Emit.PackingSize
---@field Size2 System.Reflection.Emit.PackingSize
---@field Size4 System.Reflection.Emit.PackingSize
---@field Size8 System.Reflection.Emit.PackingSize
---@field Size16 System.Reflection.Emit.PackingSize
---@field Size32 System.Reflection.Emit.PackingSize
---@field Size64 System.Reflection.Emit.PackingSize
---@field Size128 System.Reflection.Emit.PackingSize
System.Reflection.Emit.PackingSize = {}
---@alias CS.System.Reflection.Emit.PackingSize System.Reflection.Emit.PackingSize
CS.System.Reflection.Emit.PackingSize = System.Reflection.Emit.PackingSize


---@class System.Reflection.Emit.StackBehaviour
---@field Pop0 System.Reflection.Emit.StackBehaviour
---@field Pop1 System.Reflection.Emit.StackBehaviour
---@field Pop1_pop1 System.Reflection.Emit.StackBehaviour
---@field Popi System.Reflection.Emit.StackBehaviour
---@field Popi_pop1 System.Reflection.Emit.StackBehaviour
---@field Popi_popi System.Reflection.Emit.StackBehaviour
---@field Popi_popi8 System.Reflection.Emit.StackBehaviour
---@field Popi_popi_popi System.Reflection.Emit.StackBehaviour
---@field Popi_popr4 System.Reflection.Emit.StackBehaviour
---@field Popi_popr8 System.Reflection.Emit.StackBehaviour
---@field Popref System.Reflection.Emit.StackBehaviour
---@field Popref_pop1 System.Reflection.Emit.StackBehaviour
---@field Popref_popi System.Reflection.Emit.StackBehaviour
---@field Popref_popi_popi System.Reflection.Emit.StackBehaviour
---@field Popref_popi_popi8 System.Reflection.Emit.StackBehaviour
---@field Popref_popi_popr4 System.Reflection.Emit.StackBehaviour
---@field Popref_popi_popr8 System.Reflection.Emit.StackBehaviour
---@field Popref_popi_popref System.Reflection.Emit.StackBehaviour
---@field Push0 System.Reflection.Emit.StackBehaviour
---@field Push1 System.Reflection.Emit.StackBehaviour
---@field Push1_push1 System.Reflection.Emit.StackBehaviour
---@field Pushi System.Reflection.Emit.StackBehaviour
---@field Pushi8 System.Reflection.Emit.StackBehaviour
---@field Pushr4 System.Reflection.Emit.StackBehaviour
---@field Pushr8 System.Reflection.Emit.StackBehaviour
---@field Pushref System.Reflection.Emit.StackBehaviour
---@field Varpop System.Reflection.Emit.StackBehaviour
---@field Varpush System.Reflection.Emit.StackBehaviour
---@field Popref_popi_pop1 System.Reflection.Emit.StackBehaviour
System.Reflection.Emit.StackBehaviour = {}
---@alias CS.System.Reflection.Emit.StackBehaviour System.Reflection.Emit.StackBehaviour
CS.System.Reflection.Emit.StackBehaviour = System.Reflection.Emit.StackBehaviour


---@class System.Reflection.Emit.ExceptionHandler : System.ValueType
---@field ExceptionTypeToken number
---@field TryOffset number
---@field TryLength number
---@field FilterOffset number
---@field HandlerOffset number
---@field HandlerLength number
---@field Kind System.Reflection.ExceptionHandlingClauseOptions
System.Reflection.Emit.ExceptionHandler = {}
---@alias CS.System.Reflection.Emit.ExceptionHandler System.Reflection.Emit.ExceptionHandler
CS.System.Reflection.Emit.ExceptionHandler = System.Reflection.Emit.ExceptionHandler

---@param tryOffset number
---@param tryLength number
---@param filterOffset number
---@param handlerOffset number
---@param handlerLength number
---@param kind System.Reflection.ExceptionHandlingClauseOptions
---@param exceptionTypeToken number
---@return System.Reflection.Emit.ExceptionHandler
function System.Reflection.Emit.ExceptionHandler.New(tryOffset, tryLength, filterOffset, handlerOffset, handlerLength, kind, exceptionTypeToken) end
---@return number
function System.Reflection.Emit.ExceptionHandler:GetHashCode() end
---@overload fun(self: System.Reflection.Emit.ExceptionHandler, obj: System.Object) : boolean
---@param other System.Reflection.Emit.ExceptionHandler
---@return boolean
function System.Reflection.Emit.ExceptionHandler:Equals(other) end

---@class System.Reflection.Emit.TypeKind
---@field IsArray System.Reflection.Emit.TypeKind
---@field IsPointer System.Reflection.Emit.TypeKind
---@field IsByRef System.Reflection.Emit.TypeKind
System.Reflection.Emit.TypeKind = {}
---@alias CS.System.Reflection.Emit.TypeKind System.Reflection.Emit.TypeKind
CS.System.Reflection.Emit.TypeKind = System.Reflection.Emit.TypeKind


---@class System.Reflection.Emit.SymbolType : System.Reflection.TypeInfo
---@field GUID System.Guid
---@field Module System.Reflection.Module
---@field Assembly System.Reflection.Assembly
---@field TypeHandle System.RuntimeTypeHandle
---@field Namespace string
---@field BaseType System.Type
---@field IsConstructedGenericType boolean
---@field AssemblyQualifiedName string
---@field FullName string
---@field Name string
---@field UnderlyingSystemType System.Type
System.Reflection.Emit.SymbolType = {}
---@alias CS.System.Reflection.Emit.SymbolType System.Reflection.Emit.SymbolType
CS.System.Reflection.Emit.SymbolType = System.Reflection.Emit.SymbolType

---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function System.Reflection.Emit.SymbolType:IsAssignableFrom(typeInfo) end
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.SymbolType:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.SymbolType:GetConstructors(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.SymbolType:GetMethods(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.SymbolType:GetField(name, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.SymbolType:GetFields(bindingAttr) end
---@param name string
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.Emit.SymbolType:GetInterface(name, ignoreCase) end
---@return System.Type[]
function System.Reflection.Emit.SymbolType:GetInterfaces() end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.SymbolType:GetEvent(name, bindingAttr) end
---@overload fun() : System.Reflection.EventInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.SymbolType:GetEvents(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.SymbolType:GetProperties(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.SymbolType:GetNestedTypes(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.SymbolType:GetNestedType(name, bindingAttr) end
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.SymbolType:GetMember(name, type, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.SymbolType:GetMembers(bindingAttr) end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Reflection.Emit.SymbolType:GetInterfaceMap(interfaceType) end
---@return System.Type
function System.Reflection.Emit.SymbolType:GetElementType() end
---@overload fun(self: System.Reflection.Emit.SymbolType, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.SymbolType:GetCustomAttributes(attributeType, inherit) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.SymbolType:IsDefined(attributeType, inherit) end
---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.Reflection.Emit.SymbolType:MakeArrayType(rank) end
---@return System.Type
function System.Reflection.Emit.SymbolType:MakeByRefType() end
---@return System.Type
function System.Reflection.Emit.SymbolType:MakePointerType() end
---@return string
function System.Reflection.Emit.SymbolType:ToString() end

---@class System.Reflection.Emit.NativeResourceType
---@field None System.Reflection.Emit.NativeResourceType
---@field Unmanaged System.Reflection.Emit.NativeResourceType
---@field Assembly System.Reflection.Emit.NativeResourceType
---@field Explicit System.Reflection.Emit.NativeResourceType
System.Reflection.Emit.NativeResourceType = {}
---@alias CS.System.Reflection.Emit.NativeResourceType System.Reflection.Emit.NativeResourceType
CS.System.Reflection.Emit.NativeResourceType = System.Reflection.Emit.NativeResourceType


---@class System.Reflection.Emit.RefEmitPermissionSet : System.ValueType
---@field action System.Security.Permissions.SecurityAction
---@field pset string
System.Reflection.Emit.RefEmitPermissionSet = {}
---@alias CS.System.Reflection.Emit.RefEmitPermissionSet System.Reflection.Emit.RefEmitPermissionSet
CS.System.Reflection.Emit.RefEmitPermissionSet = System.Reflection.Emit.RefEmitPermissionSet

---@param action System.Security.Permissions.SecurityAction
---@param pset string
---@return System.Reflection.Emit.RefEmitPermissionSet
function System.Reflection.Emit.RefEmitPermissionSet.New(action, pset) end

---@class System.Reflection.Emit.MonoResource : System.ValueType
---@field data System.Byte[]
---@field name string
---@field filename string
---@field attrs System.Reflection.ResourceAttributes
---@field offset number
---@field stream System.IO.Stream
System.Reflection.Emit.MonoResource = {}
---@alias CS.System.Reflection.Emit.MonoResource System.Reflection.Emit.MonoResource
CS.System.Reflection.Emit.MonoResource = System.Reflection.Emit.MonoResource


---@class System.Reflection.Emit.MonoWin32Resource : System.ValueType
---@field res_type number
---@field res_id number
---@field lang_id number
---@field data System.Byte[]
System.Reflection.Emit.MonoWin32Resource = {}
---@alias CS.System.Reflection.Emit.MonoWin32Resource System.Reflection.Emit.MonoWin32Resource
CS.System.Reflection.Emit.MonoWin32Resource = System.Reflection.Emit.MonoWin32Resource

---@param res_type number
---@param res_id number
---@param lang_id number
---@param data System.Byte[]
---@return System.Reflection.Emit.MonoWin32Resource
function System.Reflection.Emit.MonoWin32Resource.New(res_type, res_id, lang_id, data) end

---@class System.Reflection.Emit.GenericInstanceKey : System.Object
System.Reflection.Emit.GenericInstanceKey = {}
---@alias CS.System.Reflection.Emit.GenericInstanceKey System.Reflection.Emit.GenericInstanceKey
CS.System.Reflection.Emit.GenericInstanceKey = System.Reflection.Emit.GenericInstanceKey

---@param obj System.Object
---@return boolean
function System.Reflection.Emit.GenericInstanceKey:Equals(obj) end
---@return number
function System.Reflection.Emit.GenericInstanceKey:GetHashCode() end

---@class System.Reflection.Emit.AssemblyBuilder : System.Reflection.Assembly
---@field CodeBase string
---@field EscapedCodeBase string
---@field EntryPoint System.Reflection.MethodInfo
---@field Location string
---@field ImageRuntimeVersion string
---@field ReflectionOnly boolean
---@field ManifestModule System.Reflection.Module
---@field GlobalAssemblyCache boolean
---@field IsDynamic boolean
---@field FullName string
---@field Evidence System.Security.Policy.Evidence
System.Reflection.Emit.AssemblyBuilder = {}
---@alias CS.System.Reflection.Emit.AssemblyBuilder System.Reflection.Emit.AssemblyBuilder
CS.System.Reflection.Emit.AssemblyBuilder = System.Reflection.Emit.AssemblyBuilder

---@overload fun(name: System.Reflection.AssemblyName, access: System.Reflection.Emit.AssemblyBuilderAccess) : System.Reflection.Emit.AssemblyBuilder
---@param name System.Reflection.AssemblyName
---@param access System.Reflection.Emit.AssemblyBuilderAccess
---@param assemblyAttributes System.Collections.Generic.IEnumerable
---@return System.Reflection.Emit.AssemblyBuilder
function System.Reflection.Emit.AssemblyBuilder.DefineDynamicAssembly(name, access, assemblyAttributes) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, name: string, fileName: string)
---@param name string
---@param fileName string
---@param attribute System.Reflection.ResourceAttributes
function System.Reflection.Emit.AssemblyBuilder:AddResourceFile(name, fileName, attribute) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, name: string) : System.Reflection.Emit.ModuleBuilder
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, name: string, emitSymbolInfo: boolean) : System.Reflection.Emit.ModuleBuilder
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, name: string, fileName: string) : System.Reflection.Emit.ModuleBuilder
---@param name string
---@param fileName string
---@param emitSymbolInfo boolean
---@return System.Reflection.Emit.ModuleBuilder
function System.Reflection.Emit.AssemblyBuilder:DefineDynamicModule(name, fileName, emitSymbolInfo) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, name: string, description: string, fileName: string) : System.Resources.IResourceWriter
---@param name string
---@param description string
---@param fileName string
---@param attribute System.Reflection.ResourceAttributes
---@return System.Resources.IResourceWriter
function System.Reflection.Emit.AssemblyBuilder:DefineResource(name, description, fileName, attribute) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, resource: System.Byte[])
---@param resourceFileName string
function System.Reflection.Emit.AssemblyBuilder:DefineUnmanagedResource(resourceFileName) end
---@overload fun()
---@param product string
---@param productVersion string
---@param company string
---@param copyright string
---@param trademark string
function System.Reflection.Emit.AssemblyBuilder:DefineVersionInfoResource(product, productVersion, company, copyright, trademark) end
---@param name string
---@return System.Reflection.Emit.ModuleBuilder
function System.Reflection.Emit.AssemblyBuilder:GetDynamicModule(name) end
---@return System.Type[]
function System.Reflection.Emit.AssemblyBuilder:GetExportedTypes() end
---@param name string
---@return System.IO.FileStream
function System.Reflection.Emit.AssemblyBuilder:GetFile(name) end
---@param getResourceModules boolean
---@return System.IO.FileStream[]
function System.Reflection.Emit.AssemblyBuilder:GetFiles(getResourceModules) end
---@param resourceName string
---@return System.Reflection.ManifestResourceInfo
function System.Reflection.Emit.AssemblyBuilder:GetManifestResourceInfo(resourceName) end
---@return System.String[]
function System.Reflection.Emit.AssemblyBuilder:GetManifestResourceNames() end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, name: string) : System.IO.Stream
---@param type System.Type
---@param name string
---@return System.IO.Stream
function System.Reflection.Emit.AssemblyBuilder:GetManifestResourceStream(type, name) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, assemblyFileName: string, portableExecutableKind: System.Reflection.PortableExecutableKinds, imageFileMachine: System.Reflection.ImageFileMachine)
---@param assemblyFileName string
function System.Reflection.Emit.AssemblyBuilder:Save(assemblyFileName) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, entryMethod: System.Reflection.MethodInfo)
---@param entryMethod System.Reflection.MethodInfo
---@param fileKind System.Reflection.Emit.PEFileKinds
function System.Reflection.Emit.AssemblyBuilder:SetEntryPoint(entryMethod, fileKind) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.AssemblyBuilder:SetCustomAttribute(con, binaryAttribute) end
---@param name string
---@param throwOnError boolean
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.Emit.AssemblyBuilder:GetType(name, throwOnError, ignoreCase) end
---@param name string
---@return System.Reflection.Module
function System.Reflection.Emit.AssemblyBuilder:GetModule(name) end
---@param getResourceModules boolean
---@return System.Reflection.Module[]
function System.Reflection.Emit.AssemblyBuilder:GetModules(getResourceModules) end
---@param copiedName boolean
---@return System.Reflection.AssemblyName
function System.Reflection.Emit.AssemblyBuilder:GetName(copiedName) end
---@return System.Reflection.AssemblyName[]
function System.Reflection.Emit.AssemblyBuilder:GetReferencedAssemblies() end
---@param getResourceModules boolean
---@return System.Reflection.Module[]
function System.Reflection.Emit.AssemblyBuilder:GetLoadedModules(getResourceModules) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, culture: System.Globalization.CultureInfo) : System.Reflection.Assembly
---@param culture System.Globalization.CultureInfo
---@param version System.Version
---@return System.Reflection.Assembly
function System.Reflection.Emit.AssemblyBuilder:GetSatelliteAssembly(culture, version) end
---@param obj System.Object
---@return boolean
function System.Reflection.Emit.AssemblyBuilder:Equals(obj) end
---@return number
function System.Reflection.Emit.AssemblyBuilder:GetHashCode() end
---@return string
function System.Reflection.Emit.AssemblyBuilder:ToString() end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.AssemblyBuilder:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.AssemblyBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.AssemblyBuilder:GetCustomAttributes(attributeType, inherit) end

---@class System.Reflection.Emit.AssemblyBuilderAccess
---@field Run System.Reflection.Emit.AssemblyBuilderAccess
---@field Save System.Reflection.Emit.AssemblyBuilderAccess
---@field RunAndSave System.Reflection.Emit.AssemblyBuilderAccess
---@field ReflectionOnly System.Reflection.Emit.AssemblyBuilderAccess
---@field RunAndCollect System.Reflection.Emit.AssemblyBuilderAccess
System.Reflection.Emit.AssemblyBuilderAccess = {}
---@alias CS.System.Reflection.Emit.AssemblyBuilderAccess System.Reflection.Emit.AssemblyBuilderAccess
CS.System.Reflection.Emit.AssemblyBuilderAccess = System.Reflection.Emit.AssemblyBuilderAccess


---@class System.Reflection.Emit.ConstructorBuilder : System.Reflection.ConstructorInfo
---@field CallingConvention System.Reflection.CallingConventions
---@field InitLocals boolean
---@field MethodHandle System.RuntimeMethodHandle
---@field Attributes System.Reflection.MethodAttributes
---@field ReflectedType System.Type
---@field DeclaringType System.Type
---@field Name string
---@field Signature string
---@field Module System.Reflection.Module
System.Reflection.Emit.ConstructorBuilder = {}
---@alias CS.System.Reflection.Emit.ConstructorBuilder System.Reflection.Emit.ConstructorBuilder
CS.System.Reflection.Emit.ConstructorBuilder = System.Reflection.Emit.ConstructorBuilder

---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.ConstructorBuilder:GetMethodImplementationFlags() end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.ConstructorBuilder:GetParameters() end
---@overload fun(self: System.Reflection.Emit.ConstructorBuilder, obj: System.Object, invokeAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, parameters: System.Object[], culture: System.Globalization.CultureInfo) : System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.ConstructorBuilder:Invoke(invokeAttr, binder, parameters, culture) end
---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
function System.Reflection.Emit.ConstructorBuilder:AddDeclarativeSecurity(action, pset) end
---@param iSequence number
---@param attributes System.Reflection.ParameterAttributes
---@param strParamName string
---@return System.Reflection.Emit.ParameterBuilder
function System.Reflection.Emit.ConstructorBuilder:DefineParameter(iSequence, attributes, strParamName) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.ConstructorBuilder:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.ConstructorBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.ConstructorBuilder:GetCustomAttributes(attributeType, inherit) end
---@overload fun() : System.Reflection.Emit.ILGenerator
---@param streamSize number
---@return System.Reflection.Emit.ILGenerator
function System.Reflection.Emit.ConstructorBuilder:GetILGenerator(streamSize) end
---@param il System.Byte[]
---@param maxStack number
---@param localSignature System.Byte[]
---@param exceptionHandlers System.Collections.Generic.IEnumerable
---@param tokenFixups System.Collections.Generic.IEnumerable
function System.Reflection.Emit.ConstructorBuilder:SetMethodBody(il, maxStack, localSignature, exceptionHandlers, tokenFixups) end
---@overload fun(self: System.Reflection.Emit.ConstructorBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.ConstructorBuilder:SetCustomAttribute(con, binaryAttribute) end
---@param attributes System.Reflection.MethodImplAttributes
function System.Reflection.Emit.ConstructorBuilder:SetImplementationFlags(attributes) end
---@return System.Reflection.Module
function System.Reflection.Emit.ConstructorBuilder:GetModule() end
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ConstructorBuilder:GetToken() end
---@param name string
---@param data System.Byte[]
function System.Reflection.Emit.ConstructorBuilder:SetSymCustomAttribute(name, data) end
---@return string
function System.Reflection.Emit.ConstructorBuilder:ToString() end

---@class System.Reflection.Emit.ConstructorOnTypeBuilderInst : System.Reflection.ConstructorInfo
---@field DeclaringType System.Type
---@field Name string
---@field ReflectedType System.Type
---@field Module System.Reflection.Module
---@field MetadataToken number
---@field MethodHandle System.RuntimeMethodHandle
---@field Attributes System.Reflection.MethodAttributes
---@field CallingConvention System.Reflection.CallingConventions
---@field ContainsGenericParameters boolean
---@field IsGenericMethodDefinition boolean
---@field IsGenericMethod boolean
System.Reflection.Emit.ConstructorOnTypeBuilderInst = {}
---@alias CS.System.Reflection.Emit.ConstructorOnTypeBuilderInst System.Reflection.Emit.ConstructorOnTypeBuilderInst
CS.System.Reflection.Emit.ConstructorOnTypeBuilderInst = System.Reflection.Emit.ConstructorOnTypeBuilderInst

---@param instantiation System.Reflection.Emit.TypeBuilderInstantiation
---@param cb System.Reflection.ConstructorInfo
---@return System.Reflection.Emit.ConstructorOnTypeBuilderInst
function System.Reflection.Emit.ConstructorOnTypeBuilderInst.New(instantiation, cb) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.ConstructorOnTypeBuilderInst:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.ConstructorOnTypeBuilderInst, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.ConstructorOnTypeBuilderInst:GetCustomAttributes(attributeType, inherit) end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.ConstructorOnTypeBuilderInst:GetMethodImplementationFlags() end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.ConstructorOnTypeBuilderInst:GetParameters() end
---@overload fun(self: System.Reflection.Emit.ConstructorOnTypeBuilderInst, obj: System.Object, invokeAttr: System.Reflection.BindingFlags, binder: System.Reflection.Binder, parameters: System.Object[], culture: System.Globalization.CultureInfo) : System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.ConstructorOnTypeBuilderInst:Invoke(invokeAttr, binder, parameters, culture) end
---@return System.Type[]
function System.Reflection.Emit.ConstructorOnTypeBuilderInst:GetGenericArguments() end

---@class System.Reflection.Emit.CustomAttributeBuilder : System.Object
System.Reflection.Emit.CustomAttributeBuilder = {}
---@alias CS.System.Reflection.Emit.CustomAttributeBuilder System.Reflection.Emit.CustomAttributeBuilder
CS.System.Reflection.Emit.CustomAttributeBuilder = System.Reflection.Emit.CustomAttributeBuilder

---@overload fun(con: System.Reflection.ConstructorInfo, constructorArgs: System.Object[]) : System.Reflection.Emit.CustomAttributeBuilder
---@overload fun(con: System.Reflection.ConstructorInfo, constructorArgs: System.Object[], namedFields: System.Reflection.FieldInfo[], fieldValues: System.Object[]) : System.Reflection.Emit.CustomAttributeBuilder
---@overload fun(con: System.Reflection.ConstructorInfo, constructorArgs: System.Object[], namedProperties: System.Reflection.PropertyInfo[], propertyValues: System.Object[]) : System.Reflection.Emit.CustomAttributeBuilder
---@param con System.Reflection.ConstructorInfo
---@param constructorArgs System.Object[]
---@param namedProperties System.Reflection.PropertyInfo[]
---@param propertyValues System.Object[]
---@param namedFields System.Reflection.FieldInfo[]
---@param fieldValues System.Object[]
---@return System.Reflection.Emit.CustomAttributeBuilder
function System.Reflection.Emit.CustomAttributeBuilder.New(con, constructorArgs, namedProperties, propertyValues, namedFields, fieldValues) end

---@class System.Reflection.Emit.CustomAttributeBuilder.CustomAttributeInfo : System.ValueType
---@field ctor System.Reflection.ConstructorInfo
---@field ctorArgs System.Object[]
---@field namedParamNames System.String[]
---@field namedParamValues System.Object[]
System.Reflection.Emit.CustomAttributeBuilder.CustomAttributeInfo = {}
---@alias CS.System.Reflection.Emit.CustomAttributeBuilder.CustomAttributeInfo System.Reflection.Emit.CustomAttributeBuilder.CustomAttributeInfo
CS.System.Reflection.Emit.CustomAttributeBuilder.CustomAttributeInfo = System.Reflection.Emit.CustomAttributeBuilder.CustomAttributeInfo


---@class System.Reflection.Emit.ArrayType : System.Reflection.Emit.SymbolType
System.Reflection.Emit.ArrayType = {}
---@alias CS.System.Reflection.Emit.ArrayType System.Reflection.Emit.ArrayType
CS.System.Reflection.Emit.ArrayType = System.Reflection.Emit.ArrayType

---@return number
function System.Reflection.Emit.ArrayType:GetArrayRank() end

---@class System.Reflection.Emit.ByRefType : System.Reflection.Emit.SymbolType
System.Reflection.Emit.ByRefType = {}
---@alias CS.System.Reflection.Emit.ByRefType System.Reflection.Emit.ByRefType
CS.System.Reflection.Emit.ByRefType = System.Reflection.Emit.ByRefType

---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.Reflection.Emit.ByRefType:MakeArrayType(rank) end
---@return System.Type
function System.Reflection.Emit.ByRefType:MakeByRefType() end
---@return System.Type
function System.Reflection.Emit.ByRefType:MakePointerType() end

---@class System.Reflection.Emit.PointerType : System.Reflection.Emit.SymbolType
System.Reflection.Emit.PointerType = {}
---@alias CS.System.Reflection.Emit.PointerType System.Reflection.Emit.PointerType
CS.System.Reflection.Emit.PointerType = System.Reflection.Emit.PointerType


---@class System.Reflection.Emit.DynamicILInfo : System.Object
---@field DynamicMethod System.Reflection.Emit.DynamicMethod
System.Reflection.Emit.DynamicILInfo = {}
---@alias CS.System.Reflection.Emit.DynamicILInfo System.Reflection.Emit.DynamicILInfo
CS.System.Reflection.Emit.DynamicILInfo = System.Reflection.Emit.DynamicILInfo

---@overload fun(self: System.Reflection.Emit.DynamicILInfo, signature: System.Byte[]) : number
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, method: System.Reflection.Emit.DynamicMethod) : number
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, field: System.RuntimeFieldHandle) : number
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, method: System.RuntimeMethodHandle) : number
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, type: System.RuntimeTypeHandle) : number
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, literal: string) : number
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, method: System.RuntimeMethodHandle, contextType: System.RuntimeTypeHandle) : number
---@param field System.RuntimeFieldHandle
---@param contextType System.RuntimeTypeHandle
---@return number
function System.Reflection.Emit.DynamicILInfo:GetTokenFor(field, contextType) end
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, code: System.Byte[], maxStackSize: number)
---@param code System.Byte*
---@param codeSize number
---@param maxStackSize number
function System.Reflection.Emit.DynamicILInfo:SetCode(code, codeSize, maxStackSize) end
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, exceptions: System.Byte[])
---@param exceptions System.Byte*
---@param exceptionsSize number
function System.Reflection.Emit.DynamicILInfo:SetExceptions(exceptions, exceptionsSize) end
---@overload fun(self: System.Reflection.Emit.DynamicILInfo, localSignature: System.Byte[])
---@param localSignature System.Byte*
---@param signatureSize number
function System.Reflection.Emit.DynamicILInfo:SetLocalSignature(localSignature, signatureSize) end

---@class System.Reflection.Emit.DynamicMethod : System.Reflection.MethodInfo
---@field Attributes System.Reflection.MethodAttributes
---@field CallingConvention System.Reflection.CallingConventions
---@field DeclaringType System.Type
---@field InitLocals boolean
---@field MethodHandle System.RuntimeMethodHandle
---@field Module System.Reflection.Module
---@field Name string
---@field ReflectedType System.Type
---@field ReturnParameter System.Reflection.ParameterInfo
---@field ReturnType System.Type
---@field ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
System.Reflection.Emit.DynamicMethod = {}
---@alias CS.System.Reflection.Emit.DynamicMethod System.Reflection.Emit.DynamicMethod
CS.System.Reflection.Emit.DynamicMethod = System.Reflection.Emit.DynamicMethod

---@overload fun(name: string, returnType: System.Type, parameterTypes: System.Type[], m: System.Reflection.Module) : System.Reflection.Emit.DynamicMethod
---@overload fun(name: string, returnType: System.Type, parameterTypes: System.Type[], owner: System.Type) : System.Reflection.Emit.DynamicMethod
---@overload fun(name: string, returnType: System.Type, parameterTypes: System.Type[], m: System.Reflection.Module, skipVisibility: boolean) : System.Reflection.Emit.DynamicMethod
---@overload fun(name: string, returnType: System.Type, parameterTypes: System.Type[], owner: System.Type, skipVisibility: boolean) : System.Reflection.Emit.DynamicMethod
---@overload fun(name: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, parameterTypes: System.Type[], owner: System.Type, skipVisibility: boolean) : System.Reflection.Emit.DynamicMethod
---@overload fun(name: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, parameterTypes: System.Type[], m: System.Reflection.Module, skipVisibility: boolean) : System.Reflection.Emit.DynamicMethod
---@overload fun(name: string, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.DynamicMethod
---@param name string
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param restrictedSkipVisibility boolean
---@return System.Reflection.Emit.DynamicMethod
function System.Reflection.Emit.DynamicMethod.New(name, returnType, parameterTypes, restrictedSkipVisibility) end
---@overload fun(self: System.Reflection.Emit.DynamicMethod, delegateType: System.Type) : System.Delegate
---@param delegateType System.Type
---@param target System.Object
---@return System.Delegate
function System.Reflection.Emit.DynamicMethod:CreateDelegate(delegateType, target) end
---@param position number
---@param attributes System.Reflection.ParameterAttributes
---@param parameterName string
---@return System.Reflection.Emit.ParameterBuilder
function System.Reflection.Emit.DynamicMethod:DefineParameter(position, attributes, parameterName) end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.DynamicMethod:GetBaseDefinition() end
---@overload fun(self: System.Reflection.Emit.DynamicMethod, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.DynamicMethod:GetCustomAttributes(attributeType, inherit) end
---@return System.Reflection.Emit.DynamicILInfo
function System.Reflection.Emit.DynamicMethod:GetDynamicILInfo() end
---@overload fun() : System.Reflection.Emit.ILGenerator
---@param streamSize number
---@return System.Reflection.Emit.ILGenerator
function System.Reflection.Emit.DynamicMethod:GetILGenerator(streamSize) end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.DynamicMethod:GetMethodImplementationFlags() end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.DynamicMethod:GetParameters() end
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.DynamicMethod:Invoke(obj, invokeAttr, binder, parameters, culture) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.DynamicMethod:IsDefined(attributeType, inherit) end
---@return string
function System.Reflection.Emit.DynamicMethod:ToString() end

---@class System.Reflection.Emit.DynamicMethod.AnonHostModuleHolder : System.Object
---@field anon_host_module System.Reflection.Module
---@field AnonHostModule System.Reflection.Module
System.Reflection.Emit.DynamicMethod.AnonHostModuleHolder = {}
---@alias CS.System.Reflection.Emit.DynamicMethod.AnonHostModuleHolder System.Reflection.Emit.DynamicMethod.AnonHostModuleHolder
CS.System.Reflection.Emit.DynamicMethod.AnonHostModuleHolder = System.Reflection.Emit.DynamicMethod.AnonHostModuleHolder


---@class System.Reflection.Emit.DynamicMethodTokenGenerator : System.Object
System.Reflection.Emit.DynamicMethodTokenGenerator = {}
---@alias CS.System.Reflection.Emit.DynamicMethodTokenGenerator System.Reflection.Emit.DynamicMethodTokenGenerator
CS.System.Reflection.Emit.DynamicMethodTokenGenerator = System.Reflection.Emit.DynamicMethodTokenGenerator

---@param m System.Reflection.Emit.DynamicMethod
---@return System.Reflection.Emit.DynamicMethodTokenGenerator
function System.Reflection.Emit.DynamicMethodTokenGenerator.New(m) end
---@overload fun(self: System.Reflection.Emit.DynamicMethodTokenGenerator, str: string) : number
---@overload fun(self: System.Reflection.Emit.DynamicMethodTokenGenerator, method: System.Reflection.MethodBase, opt_param_types: System.Type[]) : number
---@overload fun(self: System.Reflection.Emit.DynamicMethodTokenGenerator, member: System.Reflection.MemberInfo, create_open_instance: boolean) : number
---@param helper System.Reflection.Emit.SignatureHelper
---@return number
function System.Reflection.Emit.DynamicMethodTokenGenerator:GetToken(helper) end

---@class System.Reflection.Emit.EnumBuilder : System.Reflection.TypeInfo
---@field Assembly System.Reflection.Assembly
---@field AssemblyQualifiedName string
---@field BaseType System.Type
---@field DeclaringType System.Type
---@field FullName string
---@field GUID System.Guid
---@field Module System.Reflection.Module
---@field Name string
---@field Namespace string
---@field ReflectedType System.Type
---@field TypeHandle System.RuntimeTypeHandle
---@field TypeToken System.Reflection.Emit.TypeToken
---@field UnderlyingField System.Reflection.Emit.FieldBuilder
---@field UnderlyingSystemType System.Type
---@field IsConstructedGenericType boolean
---@field IsTypeDefinition boolean
System.Reflection.Emit.EnumBuilder = {}
---@alias CS.System.Reflection.Emit.EnumBuilder System.Reflection.Emit.EnumBuilder
CS.System.Reflection.Emit.EnumBuilder = System.Reflection.Emit.EnumBuilder

---@return System.Type
function System.Reflection.Emit.EnumBuilder:CreateType() end
---@return System.Reflection.TypeInfo
function System.Reflection.Emit.EnumBuilder:CreateTypeInfo() end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetEnumUnderlyingType() end
---@param literalName string
---@param literalValue System.Object
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.EnumBuilder:DefineLiteral(literalName, literalValue) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.EnumBuilder:GetConstructors(bindingAttr) end
---@overload fun(self: System.Reflection.Emit.EnumBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.EnumBuilder:GetCustomAttributes(attributeType, inherit) end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetElementType() end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.EnumBuilder:GetEvent(name, bindingAttr) end
---@overload fun() : System.Reflection.EventInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.EnumBuilder:GetEvents(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.EnumBuilder:GetField(name, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.EnumBuilder:GetFields(bindingAttr) end
---@param name string
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetInterface(name, ignoreCase) end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Reflection.Emit.EnumBuilder:GetInterfaceMap(interfaceType) end
---@return System.Type[]
function System.Reflection.Emit.EnumBuilder:GetInterfaces() end
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.EnumBuilder:GetMember(name, type, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.EnumBuilder:GetMembers(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.EnumBuilder:GetMethods(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.EnumBuilder:GetNestedType(name, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.EnumBuilder:GetNestedTypes(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.EnumBuilder:GetProperties(bindingAttr) end
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.EnumBuilder:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.EnumBuilder:IsDefined(attributeType, inherit) end
---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.Reflection.Emit.EnumBuilder:MakeArrayType(rank) end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:MakeByRefType() end
---@return System.Type
function System.Reflection.Emit.EnumBuilder:MakePointerType() end
---@overload fun(self: System.Reflection.Emit.EnumBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.EnumBuilder:SetCustomAttribute(con, binaryAttribute) end
---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function System.Reflection.Emit.EnumBuilder:IsAssignableFrom(typeInfo) end

---@class System.Reflection.Emit.EventBuilder : System.Object
System.Reflection.Emit.EventBuilder = {}
---@alias CS.System.Reflection.Emit.EventBuilder System.Reflection.Emit.EventBuilder
CS.System.Reflection.Emit.EventBuilder = System.Reflection.Emit.EventBuilder

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.EventBuilder:AddOtherMethod(mdBuilder) end
---@return System.Reflection.Emit.EventToken
function System.Reflection.Emit.EventBuilder:GetEventToken() end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.EventBuilder:SetAddOnMethod(mdBuilder) end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.EventBuilder:SetRaiseMethod(mdBuilder) end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.EventBuilder:SetRemoveOnMethod(mdBuilder) end
---@overload fun(self: System.Reflection.Emit.EventBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.EventBuilder:SetCustomAttribute(con, binaryAttribute) end

---@class System.Reflection.Emit.EventOnTypeBuilderInst : System.Reflection.EventInfo
---@field Attributes System.Reflection.EventAttributes
---@field DeclaringType System.Type
---@field Name string
---@field ReflectedType System.Type
System.Reflection.Emit.EventOnTypeBuilderInst = {}
---@alias CS.System.Reflection.Emit.EventOnTypeBuilderInst System.Reflection.Emit.EventOnTypeBuilderInst
CS.System.Reflection.Emit.EventOnTypeBuilderInst = System.Reflection.Emit.EventOnTypeBuilderInst

---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.EventOnTypeBuilderInst:GetAddMethod(nonPublic) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.EventOnTypeBuilderInst:GetRaiseMethod(nonPublic) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.EventOnTypeBuilderInst:GetRemoveMethod(nonPublic) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.EventOnTypeBuilderInst:GetOtherMethods(nonPublic) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.EventOnTypeBuilderInst:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.EventOnTypeBuilderInst, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.EventOnTypeBuilderInst:GetCustomAttributes(attributeType, inherit) end

---@class System.Reflection.Emit.EventToken : System.ValueType
---@field Empty System.Reflection.Emit.EventToken
---@field Token number
System.Reflection.Emit.EventToken = {}
---@alias CS.System.Reflection.Emit.EventToken System.Reflection.Emit.EventToken
CS.System.Reflection.Emit.EventToken = System.Reflection.Emit.EventToken

---@overload fun(self: System.Reflection.Emit.EventToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.EventToken
---@return boolean
function System.Reflection.Emit.EventToken:Equals(obj) end
---@return number
function System.Reflection.Emit.EventToken:GetHashCode() end

---@class System.Reflection.Emit.FieldBuilder : System.Reflection.FieldInfo
---@field Attributes System.Reflection.FieldAttributes
---@field DeclaringType System.Type
---@field FieldHandle System.RuntimeFieldHandle
---@field FieldType System.Type
---@field Name string
---@field ReflectedType System.Type
---@field MetadataToken number
---@field Module System.Reflection.Module
System.Reflection.Emit.FieldBuilder = {}
---@alias CS.System.Reflection.Emit.FieldBuilder System.Reflection.Emit.FieldBuilder
CS.System.Reflection.Emit.FieldBuilder = System.Reflection.Emit.FieldBuilder

---@overload fun(self: System.Reflection.Emit.FieldBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.FieldBuilder:GetCustomAttributes(attributeType, inherit) end
---@return System.Reflection.Emit.FieldToken
function System.Reflection.Emit.FieldBuilder:GetToken() end
---@param obj System.Object
---@return System.Object
function System.Reflection.Emit.FieldBuilder:GetValue(obj) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.FieldBuilder:IsDefined(attributeType, inherit) end
---@param defaultValue System.Object
function System.Reflection.Emit.FieldBuilder:SetConstant(defaultValue) end
---@overload fun(self: System.Reflection.Emit.FieldBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.FieldBuilder:SetCustomAttribute(con, binaryAttribute) end
---@param iOffset number
function System.Reflection.Emit.FieldBuilder:SetOffset(iOffset) end
---@param obj System.Object
---@param val System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param culture System.Globalization.CultureInfo
function System.Reflection.Emit.FieldBuilder:SetValue(obj, val, invokeAttr, binder, culture) end

---@class System.Reflection.Emit.FieldOnTypeBuilderInst : System.Reflection.FieldInfo
---@field DeclaringType System.Type
---@field Name string
---@field ReflectedType System.Type
---@field Attributes System.Reflection.FieldAttributes
---@field FieldHandle System.RuntimeFieldHandle
---@field MetadataToken number
---@field FieldType System.Type
System.Reflection.Emit.FieldOnTypeBuilderInst = {}
---@alias CS.System.Reflection.Emit.FieldOnTypeBuilderInst System.Reflection.Emit.FieldOnTypeBuilderInst
CS.System.Reflection.Emit.FieldOnTypeBuilderInst = System.Reflection.Emit.FieldOnTypeBuilderInst

---@param instantiation System.Reflection.Emit.TypeBuilderInstantiation
---@param fb System.Reflection.FieldInfo
---@return System.Reflection.Emit.FieldOnTypeBuilderInst
function System.Reflection.Emit.FieldOnTypeBuilderInst.New(instantiation, fb) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.FieldOnTypeBuilderInst:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.FieldOnTypeBuilderInst, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.FieldOnTypeBuilderInst:GetCustomAttributes(attributeType, inherit) end
---@return string
function System.Reflection.Emit.FieldOnTypeBuilderInst:ToString() end
---@param obj System.Object
---@return System.Object
function System.Reflection.Emit.FieldOnTypeBuilderInst:GetValue(obj) end
---@param obj System.Object
---@param value System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param culture System.Globalization.CultureInfo
function System.Reflection.Emit.FieldOnTypeBuilderInst:SetValue(obj, value, invokeAttr, binder, culture) end

---@class System.Reflection.Emit.FieldToken : System.ValueType
---@field Empty System.Reflection.Emit.FieldToken
---@field Token number
System.Reflection.Emit.FieldToken = {}
---@alias CS.System.Reflection.Emit.FieldToken System.Reflection.Emit.FieldToken
CS.System.Reflection.Emit.FieldToken = System.Reflection.Emit.FieldToken

---@overload fun(self: System.Reflection.Emit.FieldToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.FieldToken
---@return boolean
function System.Reflection.Emit.FieldToken:Equals(obj) end
---@return number
function System.Reflection.Emit.FieldToken:GetHashCode() end

---@class System.Reflection.Emit.FlowControl
---@field Branch System.Reflection.Emit.FlowControl
---@field Break System.Reflection.Emit.FlowControl
---@field Call System.Reflection.Emit.FlowControl
---@field Cond_Branch System.Reflection.Emit.FlowControl
---@field Meta System.Reflection.Emit.FlowControl
---@field Next System.Reflection.Emit.FlowControl
---@field Return System.Reflection.Emit.FlowControl
---@field Throw System.Reflection.Emit.FlowControl
System.Reflection.Emit.FlowControl = {}
---@alias CS.System.Reflection.Emit.FlowControl System.Reflection.Emit.FlowControl
CS.System.Reflection.Emit.FlowControl = System.Reflection.Emit.FlowControl


---@class System.Reflection.Emit.GenericTypeParameterBuilder : System.Reflection.TypeInfo
---@field UnderlyingSystemType System.Type
---@field Assembly System.Reflection.Assembly
---@field AssemblyQualifiedName string
---@field BaseType System.Type
---@field FullName string
---@field GUID System.Guid
---@field Name string
---@field Namespace string
---@field Module System.Reflection.Module
---@field DeclaringType System.Type
---@field ReflectedType System.Type
---@field TypeHandle System.RuntimeTypeHandle
---@field ContainsGenericParameters boolean
---@field IsGenericParameter boolean
---@field IsGenericType boolean
---@field IsGenericTypeDefinition boolean
---@field GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field GenericParameterPosition number
---@field DeclaringMethod System.Reflection.MethodBase
System.Reflection.Emit.GenericTypeParameterBuilder = {}
---@alias CS.System.Reflection.Emit.GenericTypeParameterBuilder System.Reflection.Emit.GenericTypeParameterBuilder
CS.System.Reflection.Emit.GenericTypeParameterBuilder = System.Reflection.Emit.GenericTypeParameterBuilder

---@param baseTypeConstraint System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:SetBaseTypeConstraint(baseTypeConstraint) end
---@param interfaceConstraints System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:SetInterfaceConstraints(interfaceConstraints) end
---@param genericParameterAttributes System.Reflection.GenericParameterAttributes
function System.Reflection.Emit.GenericTypeParameterBuilder:SetGenericParameterAttributes(genericParameterAttributes) end
---@param c System.Type
---@return boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsSubclassOf(c) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetConstructors(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.GenericTypeParameterBuilder:GetEvent(name, bindingAttr) end
---@overload fun() : System.Reflection.EventInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetEvents(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.GenericTypeParameterBuilder:GetField(name, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetFields(bindingAttr) end
---@param name string
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetInterface(name, ignoreCase) end
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetInterfaces() end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetMembers(bindingAttr) end
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetMember(name, type, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetMethods(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetNestedType(name, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetNestedTypes(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetProperties(bindingAttr) end
---@overload fun(self: System.Reflection.Emit.GenericTypeParameterBuilder, c: System.Type) : boolean
---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsAssignableFrom(typeInfo) end
---@param o System.Object
---@return boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsInstanceOfType(o) end
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.GenericTypeParameterBuilder:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters) end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetElementType() end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.GenericTypeParameterBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetCustomAttributes(attributeType, inherit) end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Reflection.Emit.GenericTypeParameterBuilder:GetInterfaceMap(interfaceType) end
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetGenericArguments() end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:GetGenericTypeDefinition() end
---@return System.Type[]
function System.Reflection.Emit.GenericTypeParameterBuilder:GetGenericParameterConstraints() end
---@overload fun(self: System.Reflection.Emit.GenericTypeParameterBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.GenericTypeParameterBuilder:SetCustomAttribute(con, binaryAttribute) end
---@return string
function System.Reflection.Emit.GenericTypeParameterBuilder:ToString() end
---@param o System.Object
---@return boolean
function System.Reflection.Emit.GenericTypeParameterBuilder:Equals(o) end
---@return number
function System.Reflection.Emit.GenericTypeParameterBuilder:GetHashCode() end
---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakeArrayType(rank) end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakeByRefType() end
---@param typeArguments System.Type[]
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakeGenericType(typeArguments) end
---@return System.Type
function System.Reflection.Emit.GenericTypeParameterBuilder:MakePointerType() end

---@class System.Reflection.Emit.ILExceptionBlock : System.ValueType
---@field CATCH number
---@field FILTER number
---@field FINALLY number
---@field FAULT number
---@field FILTER_START number
System.Reflection.Emit.ILExceptionBlock = {}
---@alias CS.System.Reflection.Emit.ILExceptionBlock System.Reflection.Emit.ILExceptionBlock
CS.System.Reflection.Emit.ILExceptionBlock = System.Reflection.Emit.ILExceptionBlock


---@class System.Reflection.Emit.ILExceptionInfo : System.ValueType
System.Reflection.Emit.ILExceptionInfo = {}
---@alias CS.System.Reflection.Emit.ILExceptionInfo System.Reflection.Emit.ILExceptionInfo
CS.System.Reflection.Emit.ILExceptionInfo = System.Reflection.Emit.ILExceptionInfo


---@class System.Reflection.Emit.ILTokenInfo : System.ValueType
---@field member System.Reflection.MemberInfo
---@field code_pos number
System.Reflection.Emit.ILTokenInfo = {}
---@alias CS.System.Reflection.Emit.ILTokenInfo System.Reflection.Emit.ILTokenInfo
CS.System.Reflection.Emit.ILTokenInfo = System.Reflection.Emit.ILTokenInfo


---@class System.Reflection.Emit.TokenGenerator
System.Reflection.Emit.TokenGenerator = {}
---@alias CS.System.Reflection.Emit.TokenGenerator System.Reflection.Emit.TokenGenerator
CS.System.Reflection.Emit.TokenGenerator = System.Reflection.Emit.TokenGenerator

---@overload fun(self: System.Reflection.Emit.TokenGenerator, str: string) : number
---@overload fun(self: System.Reflection.Emit.TokenGenerator, member: System.Reflection.MemberInfo, create_open_instance: boolean) : number
---@overload fun(self: System.Reflection.Emit.TokenGenerator, method: System.Reflection.MethodBase, opt_param_types: System.Type[]) : number
---@param helper System.Reflection.Emit.SignatureHelper
---@return number
function System.Reflection.Emit.TokenGenerator:GetToken(helper) end

---@class System.Reflection.Emit.ILGenerator : System.Object
---@field ILOffset number
System.Reflection.Emit.ILGenerator = {}
---@alias CS.System.Reflection.Emit.ILGenerator System.Reflection.Emit.ILGenerator
CS.System.Reflection.Emit.ILGenerator = System.Reflection.Emit.ILGenerator

---@param exceptionType System.Type
function System.Reflection.Emit.ILGenerator:BeginCatchBlock(exceptionType) end
function System.Reflection.Emit.ILGenerator:BeginExceptFilterBlock() end
---@return System.Reflection.Emit.Label
function System.Reflection.Emit.ILGenerator:BeginExceptionBlock() end
function System.Reflection.Emit.ILGenerator:BeginFaultBlock() end
function System.Reflection.Emit.ILGenerator:BeginFinallyBlock() end
function System.Reflection.Emit.ILGenerator:BeginScope() end
---@overload fun(self: System.Reflection.Emit.ILGenerator, localType: System.Type) : System.Reflection.Emit.LocalBuilder
---@param localType System.Type
---@param pinned boolean
---@return System.Reflection.Emit.LocalBuilder
function System.Reflection.Emit.ILGenerator:DeclareLocal(localType, pinned) end
---@return System.Reflection.Emit.Label
function System.Reflection.Emit.ILGenerator:DefineLabel() end
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, arg: number)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, con: System.Reflection.ConstructorInfo)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, arg: number)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, field: System.Reflection.FieldInfo)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, arg: number)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, arg: number)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, arg: number)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, label: System.Reflection.Emit.Label)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, labels: System.Reflection.Emit.Label[])
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, _local: System.Reflection.Emit.LocalBuilder)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, meth: System.Reflection.MethodInfo)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, arg: number)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, signature: System.Reflection.Emit.SignatureHelper)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, arg: number)
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, str: string)
---@param opcode System.Reflection.Emit.OpCode
---@param cls System.Type
function System.Reflection.Emit.ILGenerator:Emit(opcode, cls) end
---@param opcode System.Reflection.Emit.OpCode
---@param methodInfo System.Reflection.MethodInfo
---@param optionalParameterTypes System.Type[]
function System.Reflection.Emit.ILGenerator:EmitCall(opcode, methodInfo, optionalParameterTypes) end
---@overload fun(self: System.Reflection.Emit.ILGenerator, opcode: System.Reflection.Emit.OpCode, unmanagedCallConv: System.Runtime.InteropServices.CallingConvention, returnType: System.Type, parameterTypes: System.Type[])
---@param opcode System.Reflection.Emit.OpCode
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param optionalParameterTypes System.Type[]
function System.Reflection.Emit.ILGenerator:EmitCalli(opcode, callingConvention, returnType, parameterTypes, optionalParameterTypes) end
---@overload fun(self: System.Reflection.Emit.ILGenerator, fld: System.Reflection.FieldInfo)
---@overload fun(self: System.Reflection.Emit.ILGenerator, localBuilder: System.Reflection.Emit.LocalBuilder)
---@param value string
function System.Reflection.Emit.ILGenerator:EmitWriteLine(value) end
function System.Reflection.Emit.ILGenerator:EndExceptionBlock() end
function System.Reflection.Emit.ILGenerator:EndScope() end
---@param loc System.Reflection.Emit.Label
function System.Reflection.Emit.ILGenerator:MarkLabel(loc) end
---@param document System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param startLine number
---@param startColumn number
---@param endLine number
---@param endColumn number
function System.Reflection.Emit.ILGenerator:MarkSequencePoint(document, startLine, startColumn, endLine, endColumn) end
---@param excType System.Type
function System.Reflection.Emit.ILGenerator:ThrowException(excType) end
---@param usingNamespace string
function System.Reflection.Emit.ILGenerator:UsingNamespace(usingNamespace) end

---@class System.Reflection.Emit.ILGenerator.LabelFixup : System.ValueType
---@field offset number
---@field pos number
---@field label_idx number
System.Reflection.Emit.ILGenerator.LabelFixup = {}
---@alias CS.System.Reflection.Emit.ILGenerator.LabelFixup System.Reflection.Emit.ILGenerator.LabelFixup
CS.System.Reflection.Emit.ILGenerator.LabelFixup = System.Reflection.Emit.ILGenerator.LabelFixup


---@class System.Reflection.Emit.ILGenerator.LabelData : System.ValueType
---@field addr number
---@field maxStack number
System.Reflection.Emit.ILGenerator.LabelData = {}
---@alias CS.System.Reflection.Emit.ILGenerator.LabelData System.Reflection.Emit.ILGenerator.LabelData
CS.System.Reflection.Emit.ILGenerator.LabelData = System.Reflection.Emit.ILGenerator.LabelData

---@param addr number
---@param maxStack number
---@return System.Reflection.Emit.ILGenerator.LabelData
function System.Reflection.Emit.ILGenerator.LabelData.New(addr, maxStack) end

---@class System.Reflection.Emit.SequencePointList : System.Object
---@field Document System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@field StartLine number
---@field EndLine number
---@field StartColumn number
---@field EndColumn number
System.Reflection.Emit.SequencePointList = {}
---@alias CS.System.Reflection.Emit.SequencePointList System.Reflection.Emit.SequencePointList
CS.System.Reflection.Emit.SequencePointList = System.Reflection.Emit.SequencePointList

---@param doc System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@return System.Reflection.Emit.SequencePointList
function System.Reflection.Emit.SequencePointList.New(doc) end
---@return System.Int32[]
function System.Reflection.Emit.SequencePointList:GetOffsets() end
---@return System.Int32[]
function System.Reflection.Emit.SequencePointList:GetLines() end
---@return System.Int32[]
function System.Reflection.Emit.SequencePointList:GetColumns() end
---@return System.Int32[]
function System.Reflection.Emit.SequencePointList:GetEndLines() end
---@return System.Int32[]
function System.Reflection.Emit.SequencePointList:GetEndColumns() end
---@param offset number
---@param line number
---@param col number
---@param endLine number
---@param endCol number
function System.Reflection.Emit.SequencePointList:AddSequencePoint(offset, line, col, endLine, endCol) end

---@class System.Reflection.Emit.SequencePoint : System.ValueType
---@field Offset number
---@field Line number
---@field Col number
---@field EndLine number
---@field EndCol number
System.Reflection.Emit.SequencePoint = {}
---@alias CS.System.Reflection.Emit.SequencePoint System.Reflection.Emit.SequencePoint
CS.System.Reflection.Emit.SequencePoint = System.Reflection.Emit.SequencePoint


---@class System.Reflection.Emit.Label : System.ValueType
System.Reflection.Emit.Label = {}
---@alias CS.System.Reflection.Emit.Label System.Reflection.Emit.Label
CS.System.Reflection.Emit.Label = System.Reflection.Emit.Label

---@overload fun(self: System.Reflection.Emit.Label, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.Label
---@return boolean
function System.Reflection.Emit.Label:Equals(obj) end
---@return number
function System.Reflection.Emit.Label:GetHashCode() end

---@class System.Reflection.Emit.LocalBuilder : System.Reflection.LocalVariableInfo
---@field LocalType System.Type
---@field IsPinned boolean
---@field LocalIndex number
System.Reflection.Emit.LocalBuilder = {}
---@alias CS.System.Reflection.Emit.LocalBuilder System.Reflection.Emit.LocalBuilder
CS.System.Reflection.Emit.LocalBuilder = System.Reflection.Emit.LocalBuilder

---@overload fun(self: System.Reflection.Emit.LocalBuilder, name: string, startOffset: number, endOffset: number)
---@param name string
function System.Reflection.Emit.LocalBuilder:SetLocalSymInfo(name) end

---@class System.Reflection.Emit.MethodBuilder : System.Reflection.MethodInfo
---@field ContainsGenericParameters boolean
---@field InitLocals boolean
---@field MethodHandle System.RuntimeMethodHandle
---@field ReturnType System.Type
---@field ReflectedType System.Type
---@field DeclaringType System.Type
---@field Name string
---@field Attributes System.Reflection.MethodAttributes
---@field ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
---@field CallingConvention System.Reflection.CallingConventions
---@field Signature string
---@field IsGenericMethodDefinition boolean
---@field IsGenericMethod boolean
---@field Module System.Reflection.Module
---@field ReturnParameter System.Reflection.ParameterInfo
System.Reflection.Emit.MethodBuilder = {}
---@alias CS.System.Reflection.Emit.MethodBuilder System.Reflection.Emit.MethodBuilder
CS.System.Reflection.Emit.MethodBuilder = System.Reflection.Emit.MethodBuilder

---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.MethodBuilder:GetToken() end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodBuilder:GetBaseDefinition() end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.MethodBuilder:GetMethodImplementationFlags() end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.MethodBuilder:GetParameters() end
---@return System.Reflection.Module
function System.Reflection.Emit.MethodBuilder:GetModule() end
---@param il System.Byte[]
---@param count number
function System.Reflection.Emit.MethodBuilder:CreateMethodBody(il, count) end
---@param il System.Byte[]
---@param maxStack number
---@param localSignature System.Byte[]
---@param exceptionHandlers System.Collections.Generic.IEnumerable
---@param tokenFixups System.Collections.Generic.IEnumerable
function System.Reflection.Emit.MethodBuilder:SetMethodBody(il, maxStack, localSignature, exceptionHandlers, tokenFixups) end
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.MethodBuilder:Invoke(obj, invokeAttr, binder, parameters, culture) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.MethodBuilder:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.MethodBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.MethodBuilder:GetCustomAttributes(attributeType, inherit) end
---@overload fun() : System.Reflection.Emit.ILGenerator
---@param size number
---@return System.Reflection.Emit.ILGenerator
function System.Reflection.Emit.MethodBuilder:GetILGenerator(size) end
---@param position number
---@param attributes System.Reflection.ParameterAttributes
---@param strParamName string
---@return System.Reflection.Emit.ParameterBuilder
function System.Reflection.Emit.MethodBuilder:DefineParameter(position, attributes, strParamName) end
---@overload fun(self: System.Reflection.Emit.MethodBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.MethodBuilder:SetCustomAttribute(con, binaryAttribute) end
---@param attributes System.Reflection.MethodImplAttributes
function System.Reflection.Emit.MethodBuilder:SetImplementationFlags(attributes) end
---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
function System.Reflection.Emit.MethodBuilder:AddDeclarativeSecurity(action, pset) end
---@param name string
---@param data System.Byte[]
function System.Reflection.Emit.MethodBuilder:SetSymCustomAttribute(name, data) end
---@return string
function System.Reflection.Emit.MethodBuilder:ToString() end
---@param obj System.Object
---@return boolean
function System.Reflection.Emit.MethodBuilder:Equals(obj) end
---@return number
function System.Reflection.Emit.MethodBuilder:GetHashCode() end
---@param typeArguments System.Type[]
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodBuilder:MakeGenericMethod(typeArguments) end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodBuilder:GetGenericMethodDefinition() end
---@return System.Type[]
function System.Reflection.Emit.MethodBuilder:GetGenericArguments() end
---@param names System.String[]
---@return System.Reflection.Emit.GenericTypeParameterBuilder[]
function System.Reflection.Emit.MethodBuilder:DefineGenericParameters(names) end
---@param returnType System.Type
function System.Reflection.Emit.MethodBuilder:SetReturnType(returnType) end
---@param parameterTypes System.Type[]
function System.Reflection.Emit.MethodBuilder:SetParameters(parameterTypes) end
---@param returnType System.Type
---@param returnTypeRequiredCustomModifiers System.Type[]
---@param returnTypeOptionalCustomModifiers System.Type[]
---@param parameterTypes System.Type[]
---@param parameterTypeRequiredCustomModifiers System.Type[][]
---@param parameterTypeOptionalCustomModifiers System.Type[][]
function System.Reflection.Emit.MethodBuilder:SetSignature(returnType, returnTypeRequiredCustomModifiers, returnTypeOptionalCustomModifiers, parameterTypes, parameterTypeRequiredCustomModifiers, parameterTypeOptionalCustomModifiers) end

---@class System.Reflection.Emit.MethodOnTypeBuilderInst : System.Reflection.MethodInfo
---@field DeclaringType System.Type
---@field Name string
---@field ReflectedType System.Type
---@field ReturnType System.Type
---@field Module System.Reflection.Module
---@field MetadataToken number
---@field MethodHandle System.RuntimeMethodHandle
---@field Attributes System.Reflection.MethodAttributes
---@field CallingConvention System.Reflection.CallingConventions
---@field ContainsGenericParameters boolean
---@field IsGenericMethodDefinition boolean
---@field IsGenericMethod boolean
---@field ReturnParameter System.Reflection.ParameterInfo
---@field ReturnTypeCustomAttributes System.Reflection.ICustomAttributeProvider
System.Reflection.Emit.MethodOnTypeBuilderInst = {}
---@alias CS.System.Reflection.Emit.MethodOnTypeBuilderInst System.Reflection.Emit.MethodOnTypeBuilderInst
CS.System.Reflection.Emit.MethodOnTypeBuilderInst = System.Reflection.Emit.MethodOnTypeBuilderInst

---@param instantiation System.Reflection.Emit.TypeBuilderInstantiation
---@param base_method System.Reflection.MethodInfo
---@return System.Reflection.Emit.MethodOnTypeBuilderInst
function System.Reflection.Emit.MethodOnTypeBuilderInst.New(instantiation, base_method) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.MethodOnTypeBuilderInst:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.MethodOnTypeBuilderInst, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.MethodOnTypeBuilderInst:GetCustomAttributes(attributeType, inherit) end
---@return string
function System.Reflection.Emit.MethodOnTypeBuilderInst:ToString() end
---@return System.Reflection.MethodImplAttributes
function System.Reflection.Emit.MethodOnTypeBuilderInst:GetMethodImplementationFlags() end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.MethodOnTypeBuilderInst:GetParameters() end
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param parameters System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.MethodOnTypeBuilderInst:Invoke(obj, invokeAttr, binder, parameters, culture) end
---@param methodInstantiation System.Type[]
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodOnTypeBuilderInst:MakeGenericMethod(methodInstantiation) end
---@return System.Type[]
function System.Reflection.Emit.MethodOnTypeBuilderInst:GetGenericArguments() end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodOnTypeBuilderInst:GetGenericMethodDefinition() end
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.MethodOnTypeBuilderInst:GetBaseDefinition() end

---@class System.Reflection.Emit.MethodRental : System.Object
---@field JitImmediate number
---@field JitOnDemand number
System.Reflection.Emit.MethodRental = {}
---@alias CS.System.Reflection.Emit.MethodRental System.Reflection.Emit.MethodRental
CS.System.Reflection.Emit.MethodRental = System.Reflection.Emit.MethodRental

---@param cls System.Type
---@param methodtoken number
---@param rgIL System.IntPtr
---@param methodSize number
---@param flags number
function System.Reflection.Emit.MethodRental.SwapMethodBody(cls, methodtoken, rgIL, methodSize, flags) end

---@class System.Reflection.Emit.MethodToken : System.ValueType
---@field Empty System.Reflection.Emit.MethodToken
---@field Token number
System.Reflection.Emit.MethodToken = {}
---@alias CS.System.Reflection.Emit.MethodToken System.Reflection.Emit.MethodToken
CS.System.Reflection.Emit.MethodToken = System.Reflection.Emit.MethodToken

---@overload fun(self: System.Reflection.Emit.MethodToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.MethodToken
---@return boolean
function System.Reflection.Emit.MethodToken:Equals(obj) end
---@return number
function System.Reflection.Emit.MethodToken:GetHashCode() end

---@class System.Reflection.Emit.ModuleBuilder : System.Reflection.Module
---@field FullyQualifiedName string
---@field Assembly System.Reflection.Assembly
---@field Name string
---@field ScopeName string
---@field ModuleVersionId System.Guid
---@field MetadataToken number
System.Reflection.Emit.ModuleBuilder = {}
---@alias CS.System.Reflection.Emit.ModuleBuilder System.Reflection.Emit.ModuleBuilder
CS.System.Reflection.Emit.ModuleBuilder = System.Reflection.Emit.ModuleBuilder

---@return boolean
function System.Reflection.Emit.ModuleBuilder:IsTransient() end
function System.Reflection.Emit.ModuleBuilder:CreateGlobalFunctions() end
---@param name string
---@param data System.Byte[]
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.ModuleBuilder:DefineInitializedData(name, data, attributes) end
---@param name string
---@param size number
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.ModuleBuilder:DefineUninitializedData(name, size, attributes) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, attributes: System.Reflection.MethodAttributes, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.MethodBuilder
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.MethodBuilder
---@param name string
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param requiredReturnTypeCustomModifiers System.Type[]
---@param optionalReturnTypeCustomModifiers System.Type[]
---@param parameterTypes System.Type[]
---@param requiredParameterTypeCustomModifiers System.Type[][]
---@param optionalParameterTypeCustomModifiers System.Type[][]
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.ModuleBuilder:DefineGlobalMethod(name, attributes, callingConvention, returnType, requiredReturnTypeCustomModifiers, optionalReturnTypeCustomModifiers, parameterTypes, requiredParameterTypeCustomModifiers, optionalParameterTypeCustomModifiers) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, dllName: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, parameterTypes: System.Type[], nativeCallConv: System.Runtime.InteropServices.CallingConvention, nativeCharSet: System.Runtime.InteropServices.CharSet) : System.Reflection.Emit.MethodBuilder
---@param name string
---@param dllName string
---@param entryName string
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param nativeCallConv System.Runtime.InteropServices.CallingConvention
---@param nativeCharSet System.Runtime.InteropServices.CharSet
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.ModuleBuilder:DefinePInvokeMethod(name, dllName, entryName, attributes, callingConvention, returnType, parameterTypes, nativeCallConv, nativeCharSet) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, attr: System.Reflection.TypeAttributes) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type, interfaces: System.Type[]) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type, typesize: number) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type, packsize: System.Reflection.Emit.PackingSize) : System.Reflection.Emit.TypeBuilder
---@param name string
---@param attr System.Reflection.TypeAttributes
---@param parent System.Type
---@param packingSize System.Reflection.Emit.PackingSize
---@param typesize number
---@return System.Reflection.Emit.TypeBuilder
function System.Reflection.Emit.ModuleBuilder:DefineType(name, attr, parent, packingSize, typesize) end
---@param arrayClass System.Type
---@param methodName string
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.ModuleBuilder:GetArrayMethod(arrayClass, methodName, callingConvention, returnType, parameterTypes) end
---@param name string
---@param visibility System.Reflection.TypeAttributes
---@param underlyingType System.Type
---@return System.Reflection.Emit.EnumBuilder
function System.Reflection.Emit.ModuleBuilder:DefineEnum(name, visibility, underlyingType) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, className: string) : System.Type
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, className: string, ignoreCase: boolean) : System.Type
---@param className string
---@param throwOnError boolean
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.Emit.ModuleBuilder:GetType(className, throwOnError, ignoreCase) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.ModuleBuilder:SetCustomAttribute(con, binaryAttribute) end
---@return System.Diagnostics.SymbolStore.ISymbolWriter
function System.Reflection.Emit.ModuleBuilder:GetSymWriter() end
---@param url string
---@param language System.Guid
---@param languageVendor System.Guid
---@param documentType System.Guid
---@return System.Diagnostics.SymbolStore.ISymbolDocumentWriter
function System.Reflection.Emit.ModuleBuilder:DefineDocument(url, language, languageVendor, documentType) end
---@return System.Type[]
function System.Reflection.Emit.ModuleBuilder:GetTypes() end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, name: string, description: string, attribute: System.Reflection.ResourceAttributes) : System.Resources.IResourceWriter
---@param name string
---@param description string
---@return System.Resources.IResourceWriter
function System.Reflection.Emit.ModuleBuilder:DefineResource(name, description) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, resource: System.Byte[])
---@param resourceFileName string
function System.Reflection.Emit.ModuleBuilder:DefineUnmanagedResource(resourceFileName) end
---@param name string
---@param stream System.IO.Stream
---@param attribute System.Reflection.ResourceAttributes
function System.Reflection.Emit.ModuleBuilder:DefineManifestResource(name, stream, attribute) end
---@param name string
---@param data System.Byte[]
function System.Reflection.Emit.ModuleBuilder:SetSymCustomAttribute(name, data) end
---@param entryPoint System.Reflection.MethodInfo
function System.Reflection.Emit.ModuleBuilder:SetUserEntryPoint(entryPoint) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, method: System.Reflection.MethodInfo) : System.Reflection.Emit.MethodToken
---@param method System.Reflection.MethodInfo
---@param optionalParameterTypes System.Collections.Generic.IEnumerable
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ModuleBuilder:GetMethodToken(method, optionalParameterTypes) end
---@param arrayClass System.Type
---@param methodName string
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ModuleBuilder:GetArrayMethodToken(arrayClass, methodName, callingConvention, returnType, parameterTypes) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, con: System.Reflection.ConstructorInfo) : System.Reflection.Emit.MethodToken
---@param constructor System.Reflection.ConstructorInfo
---@param optionalParameterTypes System.Collections.Generic.IEnumerable
---@return System.Reflection.Emit.MethodToken
function System.Reflection.Emit.ModuleBuilder:GetConstructorToken(constructor, optionalParameterTypes) end
---@param field System.Reflection.FieldInfo
---@return System.Reflection.Emit.FieldToken
function System.Reflection.Emit.ModuleBuilder:GetFieldToken(field) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, sigBytes: System.Byte[], sigLength: number) : System.Reflection.Emit.SignatureToken
---@param sigHelper System.Reflection.Emit.SignatureHelper
---@return System.Reflection.Emit.SignatureToken
function System.Reflection.Emit.ModuleBuilder:GetSignatureToken(sigHelper) end
---@param str string
---@return System.Reflection.Emit.StringToken
function System.Reflection.Emit.ModuleBuilder:GetStringConstant(str) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, type: System.Type) : System.Reflection.Emit.TypeToken
---@param name string
---@return System.Reflection.Emit.TypeToken
function System.Reflection.Emit.ModuleBuilder:GetTypeToken(name) end
---@return boolean
function System.Reflection.Emit.ModuleBuilder:IsResource() end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.ModuleBuilder:ResolveField(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MemberInfo
function System.Reflection.Emit.ModuleBuilder:ResolveMember(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Reflection.MethodBase
function System.Reflection.Emit.ModuleBuilder:ResolveMethod(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param metadataToken number
---@return string
function System.Reflection.Emit.ModuleBuilder:ResolveString(metadataToken) end
---@param metadataToken number
---@return System.Byte[]
function System.Reflection.Emit.ModuleBuilder:ResolveSignature(metadataToken) end
---@param metadataToken number
---@param genericTypeArguments System.Type[]
---@param genericMethodArguments System.Type[]
---@return System.Type
function System.Reflection.Emit.ModuleBuilder:ResolveType(metadataToken, genericTypeArguments, genericMethodArguments) end
---@param obj System.Object
---@return boolean
function System.Reflection.Emit.ModuleBuilder:Equals(obj) end
---@return number
function System.Reflection.Emit.ModuleBuilder:GetHashCode() end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.ModuleBuilder:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.ModuleBuilder:GetCustomAttributes(attributeType, inherit) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.ModuleBuilder:GetField(name, bindingAttr) end
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.ModuleBuilder:GetFields(bindingFlags) end
---@param bindingFlags System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.ModuleBuilder:GetMethods(bindingFlags) end

---@class System.Reflection.Emit.ModuleBuilderTokenGenerator : System.Object
System.Reflection.Emit.ModuleBuilderTokenGenerator = {}
---@alias CS.System.Reflection.Emit.ModuleBuilderTokenGenerator System.Reflection.Emit.ModuleBuilderTokenGenerator
CS.System.Reflection.Emit.ModuleBuilderTokenGenerator = System.Reflection.Emit.ModuleBuilderTokenGenerator

---@param mb System.Reflection.Emit.ModuleBuilder
---@return System.Reflection.Emit.ModuleBuilderTokenGenerator
function System.Reflection.Emit.ModuleBuilderTokenGenerator.New(mb) end
---@overload fun(self: System.Reflection.Emit.ModuleBuilderTokenGenerator, str: string) : number
---@overload fun(self: System.Reflection.Emit.ModuleBuilderTokenGenerator, member: System.Reflection.MemberInfo, create_open_instance: boolean) : number
---@overload fun(self: System.Reflection.Emit.ModuleBuilderTokenGenerator, method: System.Reflection.MethodBase, opt_param_types: System.Type[]) : number
---@param helper System.Reflection.Emit.SignatureHelper
---@return number
function System.Reflection.Emit.ModuleBuilderTokenGenerator:GetToken(helper) end

---@class System.Reflection.Emit.OpCode : System.ValueType
---@field Name string
---@field Size number
---@field OpCodeType System.Reflection.Emit.OpCodeType
---@field OperandType System.Reflection.Emit.OperandType
---@field FlowControl System.Reflection.Emit.FlowControl
---@field StackBehaviourPop System.Reflection.Emit.StackBehaviour
---@field StackBehaviourPush System.Reflection.Emit.StackBehaviour
---@field Value number
System.Reflection.Emit.OpCode = {}
---@alias CS.System.Reflection.Emit.OpCode System.Reflection.Emit.OpCode
CS.System.Reflection.Emit.OpCode = System.Reflection.Emit.OpCode

---@return number
function System.Reflection.Emit.OpCode:GetHashCode() end
---@overload fun(self: System.Reflection.Emit.OpCode, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.OpCode
---@return boolean
function System.Reflection.Emit.OpCode:Equals(obj) end
---@return string
function System.Reflection.Emit.OpCode:ToString() end

---@class System.Reflection.Emit.OpCodeNames : System.Object
System.Reflection.Emit.OpCodeNames = {}
---@alias CS.System.Reflection.Emit.OpCodeNames System.Reflection.Emit.OpCodeNames
CS.System.Reflection.Emit.OpCodeNames = System.Reflection.Emit.OpCodeNames


---@class System.Reflection.Emit.OpCodes : System.Object
---@field Nop System.Reflection.Emit.OpCode
---@field Break System.Reflection.Emit.OpCode
---@field Ldarg_0 System.Reflection.Emit.OpCode
---@field Ldarg_1 System.Reflection.Emit.OpCode
---@field Ldarg_2 System.Reflection.Emit.OpCode
---@field Ldarg_3 System.Reflection.Emit.OpCode
---@field Ldloc_0 System.Reflection.Emit.OpCode
---@field Ldloc_1 System.Reflection.Emit.OpCode
---@field Ldloc_2 System.Reflection.Emit.OpCode
---@field Ldloc_3 System.Reflection.Emit.OpCode
---@field Stloc_0 System.Reflection.Emit.OpCode
---@field Stloc_1 System.Reflection.Emit.OpCode
---@field Stloc_2 System.Reflection.Emit.OpCode
---@field Stloc_3 System.Reflection.Emit.OpCode
---@field Ldarg_S System.Reflection.Emit.OpCode
---@field Ldarga_S System.Reflection.Emit.OpCode
---@field Starg_S System.Reflection.Emit.OpCode
---@field Ldloc_S System.Reflection.Emit.OpCode
---@field Ldloca_S System.Reflection.Emit.OpCode
---@field Stloc_S System.Reflection.Emit.OpCode
---@field Ldnull System.Reflection.Emit.OpCode
---@field Ldc_I4_M1 System.Reflection.Emit.OpCode
---@field Ldc_I4_0 System.Reflection.Emit.OpCode
---@field Ldc_I4_1 System.Reflection.Emit.OpCode
---@field Ldc_I4_2 System.Reflection.Emit.OpCode
---@field Ldc_I4_3 System.Reflection.Emit.OpCode
---@field Ldc_I4_4 System.Reflection.Emit.OpCode
---@field Ldc_I4_5 System.Reflection.Emit.OpCode
---@field Ldc_I4_6 System.Reflection.Emit.OpCode
---@field Ldc_I4_7 System.Reflection.Emit.OpCode
---@field Ldc_I4_8 System.Reflection.Emit.OpCode
---@field Ldc_I4_S System.Reflection.Emit.OpCode
---@field Ldc_I4 System.Reflection.Emit.OpCode
---@field Ldc_I8 System.Reflection.Emit.OpCode
---@field Ldc_R4 System.Reflection.Emit.OpCode
---@field Ldc_R8 System.Reflection.Emit.OpCode
---@field Dup System.Reflection.Emit.OpCode
---@field Pop System.Reflection.Emit.OpCode
---@field Jmp System.Reflection.Emit.OpCode
---@field Call System.Reflection.Emit.OpCode
---@field Calli System.Reflection.Emit.OpCode
---@field Ret System.Reflection.Emit.OpCode
---@field Br_S System.Reflection.Emit.OpCode
---@field Brfalse_S System.Reflection.Emit.OpCode
---@field Brtrue_S System.Reflection.Emit.OpCode
---@field Beq_S System.Reflection.Emit.OpCode
---@field Bge_S System.Reflection.Emit.OpCode
---@field Bgt_S System.Reflection.Emit.OpCode
---@field Ble_S System.Reflection.Emit.OpCode
---@field Blt_S System.Reflection.Emit.OpCode
---@field Bne_Un_S System.Reflection.Emit.OpCode
---@field Bge_Un_S System.Reflection.Emit.OpCode
---@field Bgt_Un_S System.Reflection.Emit.OpCode
---@field Ble_Un_S System.Reflection.Emit.OpCode
---@field Blt_Un_S System.Reflection.Emit.OpCode
---@field Br System.Reflection.Emit.OpCode
---@field Brfalse System.Reflection.Emit.OpCode
---@field Brtrue System.Reflection.Emit.OpCode
---@field Beq System.Reflection.Emit.OpCode
---@field Bge System.Reflection.Emit.OpCode
---@field Bgt System.Reflection.Emit.OpCode
---@field Ble System.Reflection.Emit.OpCode
---@field Blt System.Reflection.Emit.OpCode
---@field Bne_Un System.Reflection.Emit.OpCode
---@field Bge_Un System.Reflection.Emit.OpCode
---@field Bgt_Un System.Reflection.Emit.OpCode
---@field Ble_Un System.Reflection.Emit.OpCode
---@field Blt_Un System.Reflection.Emit.OpCode
---@field Switch System.Reflection.Emit.OpCode
---@field Ldind_I1 System.Reflection.Emit.OpCode
---@field Ldind_U1 System.Reflection.Emit.OpCode
---@field Ldind_I2 System.Reflection.Emit.OpCode
---@field Ldind_U2 System.Reflection.Emit.OpCode
---@field Ldind_I4 System.Reflection.Emit.OpCode
---@field Ldind_U4 System.Reflection.Emit.OpCode
---@field Ldind_I8 System.Reflection.Emit.OpCode
---@field Ldind_I System.Reflection.Emit.OpCode
---@field Ldind_R4 System.Reflection.Emit.OpCode
---@field Ldind_R8 System.Reflection.Emit.OpCode
---@field Ldind_Ref System.Reflection.Emit.OpCode
---@field Stind_Ref System.Reflection.Emit.OpCode
---@field Stind_I1 System.Reflection.Emit.OpCode
---@field Stind_I2 System.Reflection.Emit.OpCode
---@field Stind_I4 System.Reflection.Emit.OpCode
---@field Stind_I8 System.Reflection.Emit.OpCode
---@field Stind_R4 System.Reflection.Emit.OpCode
---@field Stind_R8 System.Reflection.Emit.OpCode
---@field Add System.Reflection.Emit.OpCode
---@field Sub System.Reflection.Emit.OpCode
---@field Mul System.Reflection.Emit.OpCode
---@field Div System.Reflection.Emit.OpCode
---@field Div_Un System.Reflection.Emit.OpCode
---@field Rem System.Reflection.Emit.OpCode
---@field Rem_Un System.Reflection.Emit.OpCode
---@field And System.Reflection.Emit.OpCode
---@field Or System.Reflection.Emit.OpCode
---@field Xor System.Reflection.Emit.OpCode
---@field Shl System.Reflection.Emit.OpCode
---@field Shr System.Reflection.Emit.OpCode
---@field Shr_Un System.Reflection.Emit.OpCode
---@field Neg System.Reflection.Emit.OpCode
---@field Not System.Reflection.Emit.OpCode
---@field Conv_I1 System.Reflection.Emit.OpCode
---@field Conv_I2 System.Reflection.Emit.OpCode
---@field Conv_I4 System.Reflection.Emit.OpCode
---@field Conv_I8 System.Reflection.Emit.OpCode
---@field Conv_R4 System.Reflection.Emit.OpCode
---@field Conv_R8 System.Reflection.Emit.OpCode
---@field Conv_U4 System.Reflection.Emit.OpCode
---@field Conv_U8 System.Reflection.Emit.OpCode
---@field Callvirt System.Reflection.Emit.OpCode
---@field Cpobj System.Reflection.Emit.OpCode
---@field Ldobj System.Reflection.Emit.OpCode
---@field Ldstr System.Reflection.Emit.OpCode
---@field Newobj System.Reflection.Emit.OpCode
---@field Castclass System.Reflection.Emit.OpCode
---@field Isinst System.Reflection.Emit.OpCode
---@field Conv_R_Un System.Reflection.Emit.OpCode
---@field Unbox System.Reflection.Emit.OpCode
---@field Throw System.Reflection.Emit.OpCode
---@field Ldfld System.Reflection.Emit.OpCode
---@field Ldflda System.Reflection.Emit.OpCode
---@field Stfld System.Reflection.Emit.OpCode
---@field Ldsfld System.Reflection.Emit.OpCode
---@field Ldsflda System.Reflection.Emit.OpCode
---@field Stsfld System.Reflection.Emit.OpCode
---@field Stobj System.Reflection.Emit.OpCode
---@field Conv_Ovf_I1_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_I2_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_I4_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_I8_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_U1_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_U2_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_U4_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_U8_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_I_Un System.Reflection.Emit.OpCode
---@field Conv_Ovf_U_Un System.Reflection.Emit.OpCode
---@field Box System.Reflection.Emit.OpCode
---@field Newarr System.Reflection.Emit.OpCode
---@field Ldlen System.Reflection.Emit.OpCode
---@field Ldelema System.Reflection.Emit.OpCode
---@field Ldelem_I1 System.Reflection.Emit.OpCode
---@field Ldelem_U1 System.Reflection.Emit.OpCode
---@field Ldelem_I2 System.Reflection.Emit.OpCode
---@field Ldelem_U2 System.Reflection.Emit.OpCode
---@field Ldelem_I4 System.Reflection.Emit.OpCode
---@field Ldelem_U4 System.Reflection.Emit.OpCode
---@field Ldelem_I8 System.Reflection.Emit.OpCode
---@field Ldelem_I System.Reflection.Emit.OpCode
---@field Ldelem_R4 System.Reflection.Emit.OpCode
---@field Ldelem_R8 System.Reflection.Emit.OpCode
---@field Ldelem_Ref System.Reflection.Emit.OpCode
---@field Stelem_I System.Reflection.Emit.OpCode
---@field Stelem_I1 System.Reflection.Emit.OpCode
---@field Stelem_I2 System.Reflection.Emit.OpCode
---@field Stelem_I4 System.Reflection.Emit.OpCode
---@field Stelem_I8 System.Reflection.Emit.OpCode
---@field Stelem_R4 System.Reflection.Emit.OpCode
---@field Stelem_R8 System.Reflection.Emit.OpCode
---@field Stelem_Ref System.Reflection.Emit.OpCode
---@field Ldelem System.Reflection.Emit.OpCode
---@field Stelem System.Reflection.Emit.OpCode
---@field Unbox_Any System.Reflection.Emit.OpCode
---@field Conv_Ovf_I1 System.Reflection.Emit.OpCode
---@field Conv_Ovf_U1 System.Reflection.Emit.OpCode
---@field Conv_Ovf_I2 System.Reflection.Emit.OpCode
---@field Conv_Ovf_U2 System.Reflection.Emit.OpCode
---@field Conv_Ovf_I4 System.Reflection.Emit.OpCode
---@field Conv_Ovf_U4 System.Reflection.Emit.OpCode
---@field Conv_Ovf_I8 System.Reflection.Emit.OpCode
---@field Conv_Ovf_U8 System.Reflection.Emit.OpCode
---@field Refanyval System.Reflection.Emit.OpCode
---@field Ckfinite System.Reflection.Emit.OpCode
---@field Mkrefany System.Reflection.Emit.OpCode
---@field Ldtoken System.Reflection.Emit.OpCode
---@field Conv_U2 System.Reflection.Emit.OpCode
---@field Conv_U1 System.Reflection.Emit.OpCode
---@field Conv_I System.Reflection.Emit.OpCode
---@field Conv_Ovf_I System.Reflection.Emit.OpCode
---@field Conv_Ovf_U System.Reflection.Emit.OpCode
---@field Add_Ovf System.Reflection.Emit.OpCode
---@field Add_Ovf_Un System.Reflection.Emit.OpCode
---@field Mul_Ovf System.Reflection.Emit.OpCode
---@field Mul_Ovf_Un System.Reflection.Emit.OpCode
---@field Sub_Ovf System.Reflection.Emit.OpCode
---@field Sub_Ovf_Un System.Reflection.Emit.OpCode
---@field Endfinally System.Reflection.Emit.OpCode
---@field Leave System.Reflection.Emit.OpCode
---@field Leave_S System.Reflection.Emit.OpCode
---@field Stind_I System.Reflection.Emit.OpCode
---@field Conv_U System.Reflection.Emit.OpCode
---@field Prefix7 System.Reflection.Emit.OpCode
---@field Prefix6 System.Reflection.Emit.OpCode
---@field Prefix5 System.Reflection.Emit.OpCode
---@field Prefix4 System.Reflection.Emit.OpCode
---@field Prefix3 System.Reflection.Emit.OpCode
---@field Prefix2 System.Reflection.Emit.OpCode
---@field Prefix1 System.Reflection.Emit.OpCode
---@field Prefixref System.Reflection.Emit.OpCode
---@field Arglist System.Reflection.Emit.OpCode
---@field Ceq System.Reflection.Emit.OpCode
---@field Cgt System.Reflection.Emit.OpCode
---@field Cgt_Un System.Reflection.Emit.OpCode
---@field Clt System.Reflection.Emit.OpCode
---@field Clt_Un System.Reflection.Emit.OpCode
---@field Ldftn System.Reflection.Emit.OpCode
---@field Ldvirtftn System.Reflection.Emit.OpCode
---@field Ldarg System.Reflection.Emit.OpCode
---@field Ldarga System.Reflection.Emit.OpCode
---@field Starg System.Reflection.Emit.OpCode
---@field Ldloc System.Reflection.Emit.OpCode
---@field Ldloca System.Reflection.Emit.OpCode
---@field Stloc System.Reflection.Emit.OpCode
---@field Localloc System.Reflection.Emit.OpCode
---@field Endfilter System.Reflection.Emit.OpCode
---@field Unaligned System.Reflection.Emit.OpCode
---@field Volatile System.Reflection.Emit.OpCode
---@field Tailcall System.Reflection.Emit.OpCode
---@field Initobj System.Reflection.Emit.OpCode
---@field Constrained System.Reflection.Emit.OpCode
---@field Cpblk System.Reflection.Emit.OpCode
---@field Initblk System.Reflection.Emit.OpCode
---@field Rethrow System.Reflection.Emit.OpCode
---@field Sizeof System.Reflection.Emit.OpCode
---@field Refanytype System.Reflection.Emit.OpCode
---@field Readonly System.Reflection.Emit.OpCode
System.Reflection.Emit.OpCodes = {}
---@alias CS.System.Reflection.Emit.OpCodes System.Reflection.Emit.OpCodes
CS.System.Reflection.Emit.OpCodes = System.Reflection.Emit.OpCodes

---@param inst System.Reflection.Emit.OpCode
---@return boolean
function System.Reflection.Emit.OpCodes.TakesSingleByteArgument(inst) end

---@class System.Reflection.Emit.PEFileKinds
---@field Dll System.Reflection.Emit.PEFileKinds
---@field ConsoleApplication System.Reflection.Emit.PEFileKinds
---@field WindowApplication System.Reflection.Emit.PEFileKinds
System.Reflection.Emit.PEFileKinds = {}
---@alias CS.System.Reflection.Emit.PEFileKinds System.Reflection.Emit.PEFileKinds
CS.System.Reflection.Emit.PEFileKinds = System.Reflection.Emit.PEFileKinds


---@class System.Reflection.Emit.ParameterBuilder : System.Object
---@field Attributes number
---@field IsIn boolean
---@field IsOut boolean
---@field IsOptional boolean
---@field Name string
---@field Position number
System.Reflection.Emit.ParameterBuilder = {}
---@alias CS.System.Reflection.Emit.ParameterBuilder System.Reflection.Emit.ParameterBuilder
CS.System.Reflection.Emit.ParameterBuilder = System.Reflection.Emit.ParameterBuilder

---@return System.Reflection.Emit.ParameterToken
function System.Reflection.Emit.ParameterBuilder:GetToken() end
---@param defaultValue System.Object
function System.Reflection.Emit.ParameterBuilder:SetConstant(defaultValue) end
---@overload fun(self: System.Reflection.Emit.ParameterBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.ParameterBuilder:SetCustomAttribute(con, binaryAttribute) end

---@class System.Reflection.Emit.ParameterToken : System.ValueType
---@field Empty System.Reflection.Emit.ParameterToken
---@field Token number
System.Reflection.Emit.ParameterToken = {}
---@alias CS.System.Reflection.Emit.ParameterToken System.Reflection.Emit.ParameterToken
CS.System.Reflection.Emit.ParameterToken = System.Reflection.Emit.ParameterToken

---@overload fun(self: System.Reflection.Emit.ParameterToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.ParameterToken
---@return boolean
function System.Reflection.Emit.ParameterToken:Equals(obj) end
---@return number
function System.Reflection.Emit.ParameterToken:GetHashCode() end

---@class System.Reflection.Emit.PropertyBuilder : System.Reflection.PropertyInfo
---@field Attributes System.Reflection.PropertyAttributes
---@field CanRead boolean
---@field CanWrite boolean
---@field DeclaringType System.Type
---@field Name string
---@field PropertyToken System.Reflection.Emit.PropertyToken
---@field PropertyType System.Type
---@field ReflectedType System.Type
---@field Module System.Reflection.Module
System.Reflection.Emit.PropertyBuilder = {}
---@alias CS.System.Reflection.Emit.PropertyBuilder System.Reflection.Emit.PropertyBuilder
CS.System.Reflection.Emit.PropertyBuilder = System.Reflection.Emit.PropertyBuilder

---@param mdBuilder System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.PropertyBuilder:AddOtherMethod(mdBuilder) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.PropertyBuilder:GetAccessors(nonPublic) end
---@overload fun(self: System.Reflection.Emit.PropertyBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.PropertyBuilder:GetCustomAttributes(attributeType, inherit) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.PropertyBuilder:GetGetMethod(nonPublic) end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.PropertyBuilder:GetIndexParameters() end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.PropertyBuilder:GetSetMethod(nonPublic) end
---@overload fun(self: System.Reflection.Emit.PropertyBuilder, obj: System.Object, index: System.Object[]) : System.Object
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.PropertyBuilder:GetValue(obj, invokeAttr, binder, index, culture) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.PropertyBuilder:IsDefined(attributeType, inherit) end
---@param defaultValue System.Object
function System.Reflection.Emit.PropertyBuilder:SetConstant(defaultValue) end
---@overload fun(self: System.Reflection.Emit.PropertyBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.PropertyBuilder:SetCustomAttribute(con, binaryAttribute) end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.PropertyBuilder:SetGetMethod(mdBuilder) end
---@param mdBuilder System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.PropertyBuilder:SetSetMethod(mdBuilder) end
---@overload fun(self: System.Reflection.Emit.PropertyBuilder, obj: System.Object, value: System.Object, index: System.Object[])
---@param obj System.Object
---@param value System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index System.Object[]
---@param culture System.Globalization.CultureInfo
function System.Reflection.Emit.PropertyBuilder:SetValue(obj, value, invokeAttr, binder, index, culture) end

---@class System.Reflection.Emit.PropertyOnTypeBuilderInst : System.Reflection.PropertyInfo
---@field Attributes System.Reflection.PropertyAttributes
---@field CanRead boolean
---@field CanWrite boolean
---@field PropertyType System.Type
---@field DeclaringType System.Type
---@field ReflectedType System.Type
---@field Name string
System.Reflection.Emit.PropertyOnTypeBuilderInst = {}
---@alias CS.System.Reflection.Emit.PropertyOnTypeBuilderInst System.Reflection.Emit.PropertyOnTypeBuilderInst
CS.System.Reflection.Emit.PropertyOnTypeBuilderInst = System.Reflection.Emit.PropertyOnTypeBuilderInst

---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.PropertyOnTypeBuilderInst:GetAccessors(nonPublic) end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.PropertyOnTypeBuilderInst:GetGetMethod(nonPublic) end
---@return System.Reflection.ParameterInfo[]
function System.Reflection.Emit.PropertyOnTypeBuilderInst:GetIndexParameters() end
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.PropertyOnTypeBuilderInst:GetSetMethod(nonPublic) end
---@return string
function System.Reflection.Emit.PropertyOnTypeBuilderInst:ToString() end
---@param obj System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index System.Object[]
---@param culture System.Globalization.CultureInfo
---@return System.Object
function System.Reflection.Emit.PropertyOnTypeBuilderInst:GetValue(obj, invokeAttr, binder, index, culture) end
---@param obj System.Object
---@param value System.Object
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param index System.Object[]
---@param culture System.Globalization.CultureInfo
function System.Reflection.Emit.PropertyOnTypeBuilderInst:SetValue(obj, value, invokeAttr, binder, index, culture) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.PropertyOnTypeBuilderInst:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.PropertyOnTypeBuilderInst, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.PropertyOnTypeBuilderInst:GetCustomAttributes(attributeType, inherit) end

---@class System.Reflection.Emit.PropertyToken : System.ValueType
---@field Empty System.Reflection.Emit.PropertyToken
---@field Token number
System.Reflection.Emit.PropertyToken = {}
---@alias CS.System.Reflection.Emit.PropertyToken System.Reflection.Emit.PropertyToken
CS.System.Reflection.Emit.PropertyToken = System.Reflection.Emit.PropertyToken

---@overload fun(self: System.Reflection.Emit.PropertyToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.PropertyToken
---@return boolean
function System.Reflection.Emit.PropertyToken:Equals(obj) end
---@return number
function System.Reflection.Emit.PropertyToken:GetHashCode() end

---@class System.Reflection.Emit.SignatureHelper : System.Object
System.Reflection.Emit.SignatureHelper = {}
---@alias CS.System.Reflection.Emit.SignatureHelper System.Reflection.Emit.SignatureHelper
CS.System.Reflection.Emit.SignatureHelper = System.Reflection.Emit.SignatureHelper

---@param mod System.Reflection.Module
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetFieldSigHelper(mod) end
---@overload fun(mod: System.Reflection.Module) : System.Reflection.Emit.SignatureHelper
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetLocalVarSigHelper() end
---@overload fun(callingConvention: System.Reflection.CallingConventions, returnType: System.Type) : System.Reflection.Emit.SignatureHelper
---@overload fun(unmanagedCallingConvention: System.Runtime.InteropServices.CallingConvention, returnType: System.Type) : System.Reflection.Emit.SignatureHelper
---@overload fun(mod: System.Reflection.Module, callingConvention: System.Reflection.CallingConventions, returnType: System.Type) : System.Reflection.Emit.SignatureHelper
---@overload fun(mod: System.Reflection.Module, unmanagedCallConv: System.Runtime.InteropServices.CallingConvention, returnType: System.Type) : System.Reflection.Emit.SignatureHelper
---@param mod System.Reflection.Module
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetMethodSigHelper(mod, returnType, parameterTypes) end
---@overload fun(mod: System.Reflection.Module, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.SignatureHelper
---@overload fun(mod: System.Reflection.Module, returnType: System.Type, requiredReturnTypeCustomModifiers: System.Type[], optionalReturnTypeCustomModifiers: System.Type[], parameterTypes: System.Type[], requiredParameterTypeCustomModifiers: System.Type[][], optionalParameterTypeCustomModifiers: System.Type[][]) : System.Reflection.Emit.SignatureHelper
---@param mod System.Reflection.Module
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param requiredReturnTypeCustomModifiers System.Type[]
---@param optionalReturnTypeCustomModifiers System.Type[]
---@param parameterTypes System.Type[]
---@param requiredParameterTypeCustomModifiers System.Type[][]
---@param optionalParameterTypeCustomModifiers System.Type[][]
---@return System.Reflection.Emit.SignatureHelper
function System.Reflection.Emit.SignatureHelper.GetPropertySigHelper(mod, callingConvention, returnType, requiredReturnTypeCustomModifiers, optionalReturnTypeCustomModifiers, parameterTypes, requiredParameterTypeCustomModifiers, optionalParameterTypeCustomModifiers) end
---@param arguments System.Type[]
---@param requiredCustomModifiers System.Type[][]
---@param optionalCustomModifiers System.Type[][]
function System.Reflection.Emit.SignatureHelper:AddArguments(arguments, requiredCustomModifiers, optionalCustomModifiers) end
---@overload fun(self: System.Reflection.Emit.SignatureHelper, argument: System.Type, pinned: boolean)
---@overload fun(self: System.Reflection.Emit.SignatureHelper, argument: System.Type, requiredCustomModifiers: System.Type[], optionalCustomModifiers: System.Type[])
---@param clsArgument System.Type
function System.Reflection.Emit.SignatureHelper:AddArgument(clsArgument) end
function System.Reflection.Emit.SignatureHelper:AddSentinel() end
---@param obj System.Object
---@return boolean
function System.Reflection.Emit.SignatureHelper:Equals(obj) end
---@return number
function System.Reflection.Emit.SignatureHelper:GetHashCode() end
---@return System.Byte[]
function System.Reflection.Emit.SignatureHelper:GetSignature() end
---@return string
function System.Reflection.Emit.SignatureHelper:ToString() end

---@class System.Reflection.Emit.SignatureHelper.SignatureHelperType
---@field HELPER_FIELD System.Reflection.Emit.SignatureHelper.SignatureHelperType
---@field HELPER_LOCAL System.Reflection.Emit.SignatureHelper.SignatureHelperType
---@field HELPER_METHOD System.Reflection.Emit.SignatureHelper.SignatureHelperType
---@field HELPER_PROPERTY System.Reflection.Emit.SignatureHelper.SignatureHelperType
System.Reflection.Emit.SignatureHelper.SignatureHelperType = {}
---@alias CS.System.Reflection.Emit.SignatureHelper.SignatureHelperType System.Reflection.Emit.SignatureHelper.SignatureHelperType
CS.System.Reflection.Emit.SignatureHelper.SignatureHelperType = System.Reflection.Emit.SignatureHelper.SignatureHelperType


---@class System.Reflection.Emit.SignatureToken : System.ValueType
---@field Empty System.Reflection.Emit.SignatureToken
---@field Token number
System.Reflection.Emit.SignatureToken = {}
---@alias CS.System.Reflection.Emit.SignatureToken System.Reflection.Emit.SignatureToken
CS.System.Reflection.Emit.SignatureToken = System.Reflection.Emit.SignatureToken

---@overload fun(self: System.Reflection.Emit.SignatureToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.SignatureToken
---@return boolean
function System.Reflection.Emit.SignatureToken:Equals(obj) end
---@return number
function System.Reflection.Emit.SignatureToken:GetHashCode() end

---@class System.Reflection.Emit.StringToken : System.ValueType
---@field Token number
System.Reflection.Emit.StringToken = {}
---@alias CS.System.Reflection.Emit.StringToken System.Reflection.Emit.StringToken
CS.System.Reflection.Emit.StringToken = System.Reflection.Emit.StringToken

---@overload fun(self: System.Reflection.Emit.StringToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.StringToken
---@return boolean
function System.Reflection.Emit.StringToken:Equals(obj) end
---@return number
function System.Reflection.Emit.StringToken:GetHashCode() end

---@class System.Reflection.Emit.TypeBuilder : System.Reflection.TypeInfo
---@field UnspecifiedTypeSize number
---@field Assembly System.Reflection.Assembly
---@field AssemblyQualifiedName string
---@field BaseType System.Type
---@field DeclaringType System.Type
---@field UnderlyingSystemType System.Type
---@field FullName string
---@field GUID System.Guid
---@field Module System.Reflection.Module
---@field Name string
---@field Namespace string
---@field PackingSize System.Reflection.Emit.PackingSize
---@field Size number
---@field ReflectedType System.Type
---@field TypeHandle System.RuntimeTypeHandle
---@field TypeToken System.Reflection.Emit.TypeToken
---@field ContainsGenericParameters boolean
---@field IsGenericParameter boolean
---@field GenericParameterAttributes System.Reflection.GenericParameterAttributes
---@field IsGenericTypeDefinition boolean
---@field IsGenericType boolean
---@field GenericParameterPosition number
---@field DeclaringMethod System.Reflection.MethodBase
---@field IsConstructedGenericType boolean
---@field IsTypeDefinition boolean
System.Reflection.Emit.TypeBuilder = {}
---@alias CS.System.Reflection.Emit.TypeBuilder System.Reflection.Emit.TypeBuilder
CS.System.Reflection.Emit.TypeBuilder = System.Reflection.Emit.TypeBuilder

---@param type System.Type
---@param constructor System.Reflection.ConstructorInfo
---@return System.Reflection.ConstructorInfo
function System.Reflection.Emit.TypeBuilder.GetConstructor(type, constructor) end
---@param type System.Type
---@param method System.Reflection.MethodInfo
---@return System.Reflection.MethodInfo
function System.Reflection.Emit.TypeBuilder.GetMethod(type, method) end
---@overload fun(type: System.Type, field: System.Reflection.FieldInfo) : System.Reflection.FieldInfo
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.TypeBuilder:GetField(name, bindingAttr) end
---@param c System.Type
---@return boolean
function System.Reflection.Emit.TypeBuilder:IsSubclassOf(c) end
---@param action System.Security.Permissions.SecurityAction
---@param pset System.Security.PermissionSet
function System.Reflection.Emit.TypeBuilder:AddDeclarativeSecurity(action, pset) end
---@param interfaceType System.Type
function System.Reflection.Emit.TypeBuilder:AddInterfaceImplementation(interfaceType) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.TypeBuilder:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.TypeBuilder:GetCustomAttributes(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attr: System.Reflection.TypeAttributes) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type, interfaces: System.Type[]) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type, typeSize: number) : System.Reflection.Emit.TypeBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attr: System.Reflection.TypeAttributes, parent: System.Type, packSize: System.Reflection.Emit.PackingSize) : System.Reflection.Emit.TypeBuilder
---@param name string
---@param attr System.Reflection.TypeAttributes
---@param parent System.Type
---@param packSize System.Reflection.Emit.PackingSize
---@param typeSize number
---@return System.Reflection.Emit.TypeBuilder
function System.Reflection.Emit.TypeBuilder:DefineNestedType(name, attr, parent, packSize, typeSize) end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, parameterTypes: System.Type[]) : System.Reflection.Emit.ConstructorBuilder
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param parameterTypes System.Type[]
---@param requiredCustomModifiers System.Type[][]
---@param optionalCustomModifiers System.Type[][]
---@return System.Reflection.Emit.ConstructorBuilder
function System.Reflection.Emit.TypeBuilder:DefineConstructor(attributes, callingConvention, parameterTypes, requiredCustomModifiers, optionalCustomModifiers) end
---@param attributes System.Reflection.MethodAttributes
---@return System.Reflection.Emit.ConstructorBuilder
function System.Reflection.Emit.TypeBuilder:DefineDefaultConstructor(attributes) end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attributes: System.Reflection.MethodAttributes, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.MethodBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.MethodBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, returnTypeRequiredCustomModifiers: System.Type[], returnTypeOptionalCustomModifiers: System.Type[], parameterTypes: System.Type[], parameterTypeRequiredCustomModifiers: System.Type[][], parameterTypeOptionalCustomModifiers: System.Type[][]) : System.Reflection.Emit.MethodBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attributes: System.Reflection.MethodAttributes) : System.Reflection.Emit.MethodBuilder
---@param name string
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.TypeBuilder:DefineMethod(name, attributes, callingConvention) end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, dllName: string, entryName: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, parameterTypes: System.Type[], nativeCallConv: System.Runtime.InteropServices.CallingConvention, nativeCharSet: System.Runtime.InteropServices.CharSet) : System.Reflection.Emit.MethodBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, dllName: string, entryName: string, attributes: System.Reflection.MethodAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, returnTypeRequiredCustomModifiers: System.Type[], returnTypeOptionalCustomModifiers: System.Type[], parameterTypes: System.Type[], parameterTypeRequiredCustomModifiers: System.Type[][], parameterTypeOptionalCustomModifiers: System.Type[][], nativeCallConv: System.Runtime.InteropServices.CallingConvention, nativeCharSet: System.Runtime.InteropServices.CharSet) : System.Reflection.Emit.MethodBuilder
---@param name string
---@param dllName string
---@param attributes System.Reflection.MethodAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param parameterTypes System.Type[]
---@param nativeCallConv System.Runtime.InteropServices.CallingConvention
---@param nativeCharSet System.Runtime.InteropServices.CharSet
---@return System.Reflection.Emit.MethodBuilder
function System.Reflection.Emit.TypeBuilder:DefinePInvokeMethod(name, dllName, attributes, callingConvention, returnType, parameterTypes, nativeCallConv, nativeCharSet) end
---@param methodInfoBody System.Reflection.MethodInfo
---@param methodInfoDeclaration System.Reflection.MethodInfo
function System.Reflection.Emit.TypeBuilder:DefineMethodOverride(methodInfoBody, methodInfoDeclaration) end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, fieldName: string, type: System.Type, attributes: System.Reflection.FieldAttributes) : System.Reflection.Emit.FieldBuilder
---@param fieldName string
---@param type System.Type
---@param requiredCustomModifiers System.Type[]
---@param optionalCustomModifiers System.Type[]
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.TypeBuilder:DefineField(fieldName, type, requiredCustomModifiers, optionalCustomModifiers, attributes) end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attributes: System.Reflection.PropertyAttributes, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.PropertyBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attributes: System.Reflection.PropertyAttributes, callingConvention: System.Reflection.CallingConventions, returnType: System.Type, parameterTypes: System.Type[]) : System.Reflection.Emit.PropertyBuilder
---@overload fun(self: System.Reflection.Emit.TypeBuilder, name: string, attributes: System.Reflection.PropertyAttributes, returnType: System.Type, returnTypeRequiredCustomModifiers: System.Type[], returnTypeOptionalCustomModifiers: System.Type[], parameterTypes: System.Type[], parameterTypeRequiredCustomModifiers: System.Type[][], parameterTypeOptionalCustomModifiers: System.Type[][]) : System.Reflection.Emit.PropertyBuilder
---@param name string
---@param attributes System.Reflection.PropertyAttributes
---@param callingConvention System.Reflection.CallingConventions
---@param returnType System.Type
---@param returnTypeRequiredCustomModifiers System.Type[]
---@param returnTypeOptionalCustomModifiers System.Type[]
---@param parameterTypes System.Type[]
---@param parameterTypeRequiredCustomModifiers System.Type[][]
---@param parameterTypeOptionalCustomModifiers System.Type[][]
---@return System.Reflection.Emit.PropertyBuilder
function System.Reflection.Emit.TypeBuilder:DefineProperty(name, attributes, callingConvention, returnType, returnTypeRequiredCustomModifiers, returnTypeOptionalCustomModifiers, parameterTypes, parameterTypeRequiredCustomModifiers, parameterTypeOptionalCustomModifiers) end
---@return System.Reflection.Emit.ConstructorBuilder
function System.Reflection.Emit.TypeBuilder:DefineTypeInitializer() end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:CreateType() end
---@return System.Reflection.TypeInfo
function System.Reflection.Emit.TypeBuilder:CreateTypeInfo() end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.TypeBuilder:GetConstructors(bindingAttr) end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetElementType() end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.TypeBuilder:GetEvent(name, bindingAttr) end
---@overload fun() : System.Reflection.EventInfo[]
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.TypeBuilder:GetEvents(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.TypeBuilder:GetFields(bindingAttr) end
---@param name string
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetInterface(name, ignoreCase) end
---@return System.Type[]
function System.Reflection.Emit.TypeBuilder:GetInterfaces() end
---@param name string
---@param type System.Reflection.MemberTypes
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.TypeBuilder:GetMember(name, type, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.TypeBuilder:GetMembers(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.TypeBuilder:GetMethods(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetNestedType(name, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.TypeBuilder:GetNestedTypes(bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.TypeBuilder:GetProperties(bindingAttr) end
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.TypeBuilder:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters) end
---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakeArrayType(rank) end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakeByRefType() end
---@param typeArguments System.Type[]
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakeGenericType(typeArguments) end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:MakePointerType() end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, customBuilder: System.Reflection.Emit.CustomAttributeBuilder)
---@param con System.Reflection.ConstructorInfo
---@param binaryAttribute System.Byte[]
function System.Reflection.Emit.TypeBuilder:SetCustomAttribute(con, binaryAttribute) end
---@param name string
---@param attributes System.Reflection.EventAttributes
---@param eventtype System.Type
---@return System.Reflection.Emit.EventBuilder
function System.Reflection.Emit.TypeBuilder:DefineEvent(name, attributes, eventtype) end
---@param name string
---@param data System.Byte[]
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.TypeBuilder:DefineInitializedData(name, data, attributes) end
---@param name string
---@param size number
---@param attributes System.Reflection.FieldAttributes
---@return System.Reflection.Emit.FieldBuilder
function System.Reflection.Emit.TypeBuilder:DefineUninitializedData(name, size, attributes) end
---@param parent System.Type
function System.Reflection.Emit.TypeBuilder:SetParent(parent) end
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function System.Reflection.Emit.TypeBuilder:GetInterfaceMap(interfaceType) end
---@return string
function System.Reflection.Emit.TypeBuilder:ToString() end
---@overload fun(self: System.Reflection.Emit.TypeBuilder, c: System.Type) : boolean
---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function System.Reflection.Emit.TypeBuilder:IsAssignableFrom(typeInfo) end
---@return boolean
function System.Reflection.Emit.TypeBuilder:IsCreated() end
---@return System.Type[]
function System.Reflection.Emit.TypeBuilder:GetGenericArguments() end
---@return System.Type
function System.Reflection.Emit.TypeBuilder:GetGenericTypeDefinition() end
---@param names System.String[]
---@return System.Reflection.Emit.GenericTypeParameterBuilder[]
function System.Reflection.Emit.TypeBuilder:DefineGenericParameters(names) end

---@class System.Reflection.Emit.TypeBuilderInstantiation : System.Reflection.TypeInfo
---@field BaseType System.Type
---@field UnderlyingSystemType System.Type
---@field Assembly System.Reflection.Assembly
---@field Module System.Reflection.Module
---@field Name string
---@field Namespace string
---@field FullName string
---@field AssemblyQualifiedName string
---@field GUID System.Guid
---@field ContainsGenericParameters boolean
---@field IsGenericTypeDefinition boolean
---@field IsGenericType boolean
---@field DeclaringType System.Type
---@field TypeHandle System.RuntimeTypeHandle
---@field IsTypeDefinition boolean
---@field IsConstructedGenericType boolean
System.Reflection.Emit.TypeBuilderInstantiation = {}
---@alias CS.System.Reflection.Emit.TypeBuilderInstantiation System.Reflection.Emit.TypeBuilderInstantiation
CS.System.Reflection.Emit.TypeBuilderInstantiation = System.Reflection.Emit.TypeBuilderInstantiation

---@return System.Type[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetInterfaces() end
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.MethodInfo[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetMethods(bf) end
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.ConstructorInfo[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetConstructors(bf) end
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetFields(bf) end
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.PropertyInfo[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetProperties(bf) end
---@param bf System.Reflection.BindingFlags
---@return System.Reflection.EventInfo[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetEvents(bf) end
---@param bf System.Reflection.BindingFlags
---@return System.Type[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetNestedTypes(bf) end
---@param c System.Type
---@return boolean
function System.Reflection.Emit.TypeBuilderInstantiation:IsAssignableFrom(c) end
---@return string
function System.Reflection.Emit.TypeBuilderInstantiation:ToString() end
---@return System.Type
function System.Reflection.Emit.TypeBuilderInstantiation:GetGenericTypeDefinition() end
---@return System.Type[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetGenericArguments() end
---@overload fun() : System.Type
---@param rank number
---@return System.Type
function System.Reflection.Emit.TypeBuilderInstantiation:MakeArrayType(rank) end
---@return System.Type
function System.Reflection.Emit.TypeBuilderInstantiation:MakeByRefType() end
---@return System.Type
function System.Reflection.Emit.TypeBuilderInstantiation:MakePointerType() end
---@return System.Type
function System.Reflection.Emit.TypeBuilderInstantiation:GetElementType() end
---@param name string
---@param ignoreCase boolean
---@return System.Type
function System.Reflection.Emit.TypeBuilderInstantiation:GetInterface(name, ignoreCase) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.EventInfo
function System.Reflection.Emit.TypeBuilderInstantiation:GetEvent(name, bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.FieldInfo
function System.Reflection.Emit.TypeBuilderInstantiation:GetField(name, bindingAttr) end
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Reflection.MemberInfo[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetMembers(bindingAttr) end
---@param name string
---@param bindingAttr System.Reflection.BindingFlags
---@return System.Type
function System.Reflection.Emit.TypeBuilderInstantiation:GetNestedType(name, bindingAttr) end
---@param name string
---@param invokeAttr System.Reflection.BindingFlags
---@param binder System.Reflection.Binder
---@param target System.Object
---@param args System.Object[]
---@param modifiers System.Reflection.ParameterModifier[]
---@param culture System.Globalization.CultureInfo
---@param namedParameters System.String[]
---@return System.Object
function System.Reflection.Emit.TypeBuilderInstantiation:InvokeMember(name, invokeAttr, binder, target, args, modifiers, culture, namedParameters) end
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function System.Reflection.Emit.TypeBuilderInstantiation:IsDefined(attributeType, inherit) end
---@overload fun(self: System.Reflection.Emit.TypeBuilderInstantiation, inherit: boolean) : System.Object[]
---@param attributeType System.Type
---@param inherit boolean
---@return System.Object[]
function System.Reflection.Emit.TypeBuilderInstantiation:GetCustomAttributes(attributeType, inherit) end

---@class System.Reflection.Emit.TypeToken : System.ValueType
---@field Empty System.Reflection.Emit.TypeToken
---@field Token number
System.Reflection.Emit.TypeToken = {}
---@alias CS.System.Reflection.Emit.TypeToken System.Reflection.Emit.TypeToken
CS.System.Reflection.Emit.TypeToken = System.Reflection.Emit.TypeToken

---@overload fun(self: System.Reflection.Emit.TypeToken, obj: System.Object) : boolean
---@param obj System.Reflection.Emit.TypeToken
---@return boolean
function System.Reflection.Emit.TypeToken:Equals(obj) end
---@return number
function System.Reflection.Emit.TypeToken:GetHashCode() end

---@class System.Reflection.Emit.UnmanagedMarshal : System.Object
---@field BaseType System.Runtime.InteropServices.UnmanagedType
---@field ElementCount number
---@field GetUnmanagedType System.Runtime.InteropServices.UnmanagedType
---@field IIDGuid System.Guid
System.Reflection.Emit.UnmanagedMarshal = {}
---@alias CS.System.Reflection.Emit.UnmanagedMarshal System.Reflection.Emit.UnmanagedMarshal
CS.System.Reflection.Emit.UnmanagedMarshal = System.Reflection.Emit.UnmanagedMarshal

---@param elemCount number
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineByValArray(elemCount) end
---@param elemCount number
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineByValTStr(elemCount) end
---@param elemType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineLPArray(elemType) end
---@param elemType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineSafeArray(elemType) end
---@param unmanagedType System.Runtime.InteropServices.UnmanagedType
---@return System.Reflection.Emit.UnmanagedMarshal
function System.Reflection.Emit.UnmanagedMarshal.DefineUnmanagedMarshal(unmanagedType) end

---@class System.Numerics.ConstantHelper : System.Object
System.Numerics.ConstantHelper = {}
---@alias CS.System.Numerics.ConstantHelper System.Numerics.ConstantHelper
CS.System.Numerics.ConstantHelper = System.Numerics.ConstantHelper

---@return System.Numerics.ConstantHelper
function System.Numerics.ConstantHelper.New() end
---@return number
function System.Numerics.ConstantHelper.GetByteWithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetSByteWithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetUInt16WithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetInt16WithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetUInt32WithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetInt32WithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetUInt64WithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetInt64WithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetSingleWithAllBitsSet() end
---@return number
function System.Numerics.ConstantHelper.GetDoubleWithAllBitsSet() end

---@class System.Numerics.Register : System.ValueType
System.Numerics.Register = {}
---@alias CS.System.Numerics.Register System.Numerics.Register
CS.System.Numerics.Register = System.Numerics.Register


---@class System.Numerics.Vector : System.ValueType
---@field Count number
---@field Zero System.Numerics.Vector
---@field One System.Numerics.Vector
---@field Item T
System.Numerics.Vector = {}
---@alias CS.System.Numerics.Vector System.Numerics.Vector
CS.System.Numerics.Vector = System.Numerics.Vector

---@overload fun(value: T) : System.Numerics.Vector
---@overload fun(values: T[]) : System.Numerics.Vector
---@overload fun(values: System.Span[T]) : System.Numerics.Vector
---@param values T[]
---@param index number
---@return System.Numerics.Vector
function System.Numerics.Vector.New(values, index) end
---@overload fun(self: System.Numerics.Vector, destination: T[])
---@param destination T[]
---@param startIndex number
function System.Numerics.Vector:CopyTo(destination, startIndex) end
---@overload fun(self: System.Numerics.Vector, obj: System.Object) : boolean
---@param other System.Numerics.Vector
---@return boolean
function System.Numerics.Vector:Equals(other) end
---@return number
function System.Numerics.Vector:GetHashCode() end
---@overload fun() : string
---@overload fun(self: System.Numerics.Vector, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function System.Numerics.Vector:ToString(format, formatProvider) end

---@class System.Numerics.Vector.VectorSizeHelper : System.ValueType
System.Numerics.Vector.VectorSizeHelper = {}
---@alias CS.System.Numerics.Vector.VectorSizeHelper System.Numerics.Vector.VectorSizeHelper
CS.System.Numerics.Vector.VectorSizeHelper = System.Numerics.Vector.VectorSizeHelper


---@class System.Numerics.Vector : System.Object
---@field IsHardwareAccelerated boolean
System.Numerics.Vector = {}
---@alias CS.System.Numerics.Vector System.Numerics.Vector
CS.System.Numerics.Vector = System.Numerics.Vector

---@overload fun(source: System.Numerics.Vector, out_low: System.Numerics.Vector, out_high: System.Numerics.Vector) : System.Numerics.Vector, System.Numerics.Vector
---@overload fun(source: System.Numerics.Vector, out_low: System.Numerics.Vector, out_high: System.Numerics.Vector) : System.Numerics.Vector, System.Numerics.Vector
---@overload fun(source: System.Numerics.Vector, out_low: System.Numerics.Vector, out_high: System.Numerics.Vector) : System.Numerics.Vector, System.Numerics.Vector
---@overload fun(source: System.Numerics.Vector, out_low: System.Numerics.Vector, out_high: System.Numerics.Vector) : System.Numerics.Vector, System.Numerics.Vector
---@overload fun(source: System.Numerics.Vector, out_low: System.Numerics.Vector, out_high: System.Numerics.Vector) : System.Numerics.Vector, System.Numerics.Vector
---@overload fun(source: System.Numerics.Vector, out_low: System.Numerics.Vector, out_high: System.Numerics.Vector) : System.Numerics.Vector, System.Numerics.Vector
---@param source System.Numerics.Vector
---@param out_low System.Numerics.Vector
---@param out_high System.Numerics.Vector
---@return ,System.Numerics.Vector,System.Numerics.Vector
function System.Numerics.Vector.Widen(source, out_low, out_high) end
---@overload fun(low: System.Numerics.Vector, high: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(low: System.Numerics.Vector, high: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(low: System.Numerics.Vector, high: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(low: System.Numerics.Vector, high: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(low: System.Numerics.Vector, high: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(low: System.Numerics.Vector, high: System.Numerics.Vector) : System.Numerics.Vector
---@param low System.Numerics.Vector
---@param high System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.Narrow(low, high) end
---@overload fun(value: System.Numerics.Vector) : System.Numerics.Vector
---@param value System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.ConvertToSingle(value) end
---@overload fun(value: System.Numerics.Vector) : System.Numerics.Vector
---@param value System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.ConvertToDouble(value) end
---@param value System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.ConvertToInt32(value) end
---@param value System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.ConvertToUInt32(value) end
---@param value System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.ConvertToInt64(value) end
---@param value System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.ConvertToUInt64(value) end
---@overload fun(condition: System.Numerics.Vector, left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@param condition System.Numerics.Vector
---@param left System.Numerics.Vector
---@param right System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.ConditionalSelect(condition, left, right) end
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@param left System.Numerics.Vector
---@param right System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.Equals(left, right) end
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@param left System.Numerics.Vector
---@param right System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.LessThan(left, right) end
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@param left System.Numerics.Vector
---@param right System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.LessThanOrEqual(left, right) end
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@param left System.Numerics.Vector
---@param right System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.GreaterThan(left, right) end
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@overload fun(left: System.Numerics.Vector, right: System.Numerics.Vector) : System.Numerics.Vector
---@param left System.Numerics.Vector
---@param right System.Numerics.Vector
---@return System.Numerics.Vector
function System.Numerics.Vector.GreaterThanOrEqual(left, right) end

---@class System.Numerics.Hashing.HashHelpers : System.Object
---@field RandomSeed number
System.Numerics.Hashing.HashHelpers = {}
---@alias CS.System.Numerics.Hashing.HashHelpers System.Numerics.Hashing.HashHelpers
CS.System.Numerics.Hashing.HashHelpers = System.Numerics.Hashing.HashHelpers

---@param h1 number
---@param h2 number
---@return number
function System.Numerics.Hashing.HashHelpers.Combine(h1, h2) end

---@class System.Globalization.BidiCategory
---@field LeftToRight System.Globalization.BidiCategory
---@field LeftToRightEmbedding System.Globalization.BidiCategory
---@field LeftToRightOverride System.Globalization.BidiCategory
---@field RightToLeft System.Globalization.BidiCategory
---@field RightToLeftArabic System.Globalization.BidiCategory
---@field RightToLeftEmbedding System.Globalization.BidiCategory
---@field RightToLeftOverride System.Globalization.BidiCategory
---@field PopDirectionalFormat System.Globalization.BidiCategory
---@field EuropeanNumber System.Globalization.BidiCategory
---@field EuropeanNumberSeparator System.Globalization.BidiCategory
---@field EuropeanNumberTerminator System.Globalization.BidiCategory
---@field ArabicNumber System.Globalization.BidiCategory
---@field CommonNumberSeparator System.Globalization.BidiCategory
---@field NonSpacingMark System.Globalization.BidiCategory
---@field BoundaryNeutral System.Globalization.BidiCategory
---@field ParagraphSeparator System.Globalization.BidiCategory
---@field SegmentSeparator System.Globalization.BidiCategory
---@field Whitespace System.Globalization.BidiCategory
---@field OtherNeutrals System.Globalization.BidiCategory
---@field LeftToRightIsolate System.Globalization.BidiCategory
---@field RightToLeftIsolate System.Globalization.BidiCategory
---@field FirstStrongIsolate System.Globalization.BidiCategory
---@field PopDirectionIsolate System.Globalization.BidiCategory
System.Globalization.BidiCategory = {}
---@alias CS.System.Globalization.BidiCategory System.Globalization.BidiCategory
CS.System.Globalization.BidiCategory = System.Globalization.BidiCategory


---@class System.Globalization.CalendarAlgorithmType
---@field Unknown System.Globalization.CalendarAlgorithmType
---@field SolarCalendar System.Globalization.CalendarAlgorithmType
---@field LunarCalendar System.Globalization.CalendarAlgorithmType
---@field LunisolarCalendar System.Globalization.CalendarAlgorithmType
System.Globalization.CalendarAlgorithmType = {}
---@alias CS.System.Globalization.CalendarAlgorithmType System.Globalization.CalendarAlgorithmType
CS.System.Globalization.CalendarAlgorithmType = System.Globalization.CalendarAlgorithmType


---@class System.Globalization.CalendarWeekRule
---@field FirstDay System.Globalization.CalendarWeekRule
---@field FirstFullWeek System.Globalization.CalendarWeekRule
---@field FirstFourDayWeek System.Globalization.CalendarWeekRule
System.Globalization.CalendarWeekRule = {}
---@alias CS.System.Globalization.CalendarWeekRule System.Globalization.CalendarWeekRule
CS.System.Globalization.CalendarWeekRule = System.Globalization.CalendarWeekRule


---@class System.Globalization.CharUnicodeInfo : System.Object
System.Globalization.CharUnicodeInfo = {}
---@alias CS.System.Globalization.CharUnicodeInfo System.Globalization.CharUnicodeInfo
CS.System.Globalization.CharUnicodeInfo = System.Globalization.CharUnicodeInfo

---@overload fun(ch: System.Char) : number
---@param s string
---@param index number
---@return number
function System.Globalization.CharUnicodeInfo.GetNumericValue(s, index) end
---@overload fun(ch: System.Char) : number
---@param s string
---@param index number
---@return number
function System.Globalization.CharUnicodeInfo.GetDecimalDigitValue(s, index) end
---@overload fun(ch: System.Char) : number
---@param s string
---@param index number
---@return number
function System.Globalization.CharUnicodeInfo.GetDigitValue(s, index) end
---@overload fun(ch: System.Char) : System.Globalization.UnicodeCategory
---@overload fun(s: string, index: number) : System.Globalization.UnicodeCategory
---@param codePoint number
---@return System.Globalization.UnicodeCategory
function System.Globalization.CharUnicodeInfo.GetUnicodeCategory(codePoint) end

---@class System.Globalization.CompareInfo : System.Object
---@field Name string
---@field Version System.Globalization.SortVersion
---@field LCID number
System.Globalization.CompareInfo = {}
---@alias CS.System.Globalization.CompareInfo System.Globalization.CompareInfo
CS.System.Globalization.CompareInfo = System.Globalization.CompareInfo

---@overload fun(culture: number, assembly: System.Reflection.Assembly) : System.Globalization.CompareInfo
---@overload fun(name: string, assembly: System.Reflection.Assembly) : System.Globalization.CompareInfo
---@overload fun(culture: number) : System.Globalization.CompareInfo
---@param name string
---@return System.Globalization.CompareInfo
function System.Globalization.CompareInfo.GetCompareInfo(name) end
---@overload fun(ch: System.Char) : boolean
---@param text string
---@return boolean
function System.Globalization.CompareInfo.IsSortable(text) end
---@overload fun(self: System.Globalization.CompareInfo, string1: string, string2: string) : number
---@overload fun(self: System.Globalization.CompareInfo, string1: string, string2: string, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, string1: string, offset1: number, length1: number, string2: string, offset2: number, length2: number) : number
---@overload fun(self: System.Globalization.CompareInfo, string1: string, offset1: number, string2: string, offset2: number, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, string1: string, offset1: number, string2: string, offset2: number) : number
---@param string1 string
---@param offset1 number
---@param length1 number
---@param string2 string
---@param offset2 number
---@param length2 number
---@param options System.Globalization.CompareOptions
---@return number
function System.Globalization.CompareInfo:Compare(string1, offset1, length1, string2, offset2, length2, options) end
---@overload fun(self: System.Globalization.CompareInfo, source: string, prefix: string, options: System.Globalization.CompareOptions) : boolean
---@param source string
---@param prefix string
---@return boolean
function System.Globalization.CompareInfo:IsPrefix(source, prefix) end
---@overload fun(self: System.Globalization.CompareInfo, source: string, suffix: string, options: System.Globalization.CompareOptions) : boolean
---@param source string
---@param suffix string
---@return boolean
function System.Globalization.CompareInfo:IsSuffix(source, suffix) end
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, startIndex: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, startIndex: number, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number, count: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, startIndex: number, count: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number, count: number, options: System.Globalization.CompareOptions) : number
---@param source string
---@param value string
---@param startIndex number
---@param count number
---@param options System.Globalization.CompareOptions
---@return number
function System.Globalization.CompareInfo:IndexOf(source, value, startIndex, count, options) end
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, startIndex: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, startIndex: number, options: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number, count: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: string, startIndex: number, count: number) : number
---@overload fun(self: System.Globalization.CompareInfo, source: string, value: System.Char, startIndex: number, count: number, options: System.Globalization.CompareOptions) : number
---@param source string
---@param value string
---@param startIndex number
---@param count number
---@param options System.Globalization.CompareOptions
---@return number
function System.Globalization.CompareInfo:LastIndexOf(source, value, startIndex, count, options) end
---@overload fun(self: System.Globalization.CompareInfo, source: string, options: System.Globalization.CompareOptions) : System.Globalization.SortKey
---@param source string
---@return System.Globalization.SortKey
function System.Globalization.CompareInfo:GetSortKey(source) end
---@param value System.Object
---@return boolean
function System.Globalization.CompareInfo:Equals(value) end
---@overload fun() : number
---@param source string
---@param options System.Globalization.CompareOptions
---@return number
function System.Globalization.CompareInfo:GetHashCode(source, options) end
---@return string
function System.Globalization.CompareInfo:ToString() end
---@param options System.Globalization.CompareOptions
---@return System.StringComparer
function System.Globalization.CompareInfo:GetStringComparer(options) end

---@class System.Globalization.CompareOptions
---@field None System.Globalization.CompareOptions
---@field IgnoreCase System.Globalization.CompareOptions
---@field IgnoreNonSpace System.Globalization.CompareOptions
---@field IgnoreSymbols System.Globalization.CompareOptions
---@field IgnoreKanaType System.Globalization.CompareOptions
---@field IgnoreWidth System.Globalization.CompareOptions
---@field OrdinalIgnoreCase System.Globalization.CompareOptions
---@field StringSort System.Globalization.CompareOptions
---@field Ordinal System.Globalization.CompareOptions
System.Globalization.CompareOptions = {}
---@alias CS.System.Globalization.CompareOptions System.Globalization.CompareOptions
CS.System.Globalization.CompareOptions = System.Globalization.CompareOptions


---@class System.Globalization.CultureNotFoundException : System.ArgumentException
---@field InvalidCultureId System.Nullable
---@field InvalidCultureName string
---@field Message string
System.Globalization.CultureNotFoundException = {}
---@alias CS.System.Globalization.CultureNotFoundException System.Globalization.CultureNotFoundException
CS.System.Globalization.CultureNotFoundException = System.Globalization.CultureNotFoundException

---@overload fun() : System.Globalization.CultureNotFoundException
---@overload fun(message: string) : System.Globalization.CultureNotFoundException
---@overload fun(paramName: string, message: string) : System.Globalization.CultureNotFoundException
---@overload fun(message: string, innerException: System.Exception) : System.Globalization.CultureNotFoundException
---@overload fun(paramName: string, invalidCultureName: string, message: string) : System.Globalization.CultureNotFoundException
---@overload fun(message: string, invalidCultureName: string, innerException: System.Exception) : System.Globalization.CultureNotFoundException
---@overload fun(message: string, invalidCultureId: number, innerException: System.Exception) : System.Globalization.CultureNotFoundException
---@param paramName string
---@param invalidCultureId number
---@param message string
---@return System.Globalization.CultureNotFoundException
function System.Globalization.CultureNotFoundException.New(paramName, invalidCultureId, message) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Globalization.CultureNotFoundException:GetObjectData(info, context) end

---@class System.Globalization.CultureTypes
---@field NeutralCultures System.Globalization.CultureTypes
---@field SpecificCultures System.Globalization.CultureTypes
---@field InstalledWin32Cultures System.Globalization.CultureTypes
---@field AllCultures System.Globalization.CultureTypes
---@field UserCustomCulture System.Globalization.CultureTypes
---@field ReplacementCultures System.Globalization.CultureTypes
System.Globalization.CultureTypes = {}
---@alias CS.System.Globalization.CultureTypes System.Globalization.CultureTypes
CS.System.Globalization.CultureTypes = System.Globalization.CultureTypes


---@class System.Globalization.MonthNameStyles
---@field Regular System.Globalization.MonthNameStyles
---@field Genitive System.Globalization.MonthNameStyles
---@field LeapYear System.Globalization.MonthNameStyles
System.Globalization.MonthNameStyles = {}
---@alias CS.System.Globalization.MonthNameStyles System.Globalization.MonthNameStyles
CS.System.Globalization.MonthNameStyles = System.Globalization.MonthNameStyles


---@class System.Globalization.DateTimeFormatFlags
---@field None System.Globalization.DateTimeFormatFlags
---@field UseGenitiveMonth System.Globalization.DateTimeFormatFlags
---@field UseLeapYearMonth System.Globalization.DateTimeFormatFlags
---@field UseSpacesInMonthNames System.Globalization.DateTimeFormatFlags
---@field UseHebrewRule System.Globalization.DateTimeFormatFlags
---@field UseSpacesInDayNames System.Globalization.DateTimeFormatFlags
---@field UseDigitPrefixInTokens System.Globalization.DateTimeFormatFlags
---@field NotInitialized System.Globalization.DateTimeFormatFlags
System.Globalization.DateTimeFormatFlags = {}
---@alias CS.System.Globalization.DateTimeFormatFlags System.Globalization.DateTimeFormatFlags
CS.System.Globalization.DateTimeFormatFlags = System.Globalization.DateTimeFormatFlags


---@class System.Globalization.DateTimeFormatInfo : System.Object
---@field InvariantInfo System.Globalization.DateTimeFormatInfo
---@field CurrentInfo System.Globalization.DateTimeFormatInfo
---@field AMDesignator string
---@field Calendar System.Globalization.Calendar
---@field DateSeparator string
---@field FirstDayOfWeek System.DayOfWeek
---@field CalendarWeekRule System.Globalization.CalendarWeekRule
---@field FullDateTimePattern string
---@field LongDatePattern string
---@field LongTimePattern string
---@field MonthDayPattern string
---@field PMDesignator string
---@field RFC1123Pattern string
---@field ShortDatePattern string
---@field ShortTimePattern string
---@field SortableDateTimePattern string
---@field TimeSeparator string
---@field UniversalSortableDateTimePattern string
---@field YearMonthPattern string
---@field AbbreviatedDayNames System.String[]
---@field ShortestDayNames System.String[]
---@field DayNames System.String[]
---@field AbbreviatedMonthNames System.String[]
---@field MonthNames System.String[]
---@field IsReadOnly boolean
---@field NativeCalendarName string
---@field AbbreviatedMonthGenitiveNames System.String[]
---@field MonthGenitiveNames System.String[]
System.Globalization.DateTimeFormatInfo = {}
---@alias CS.System.Globalization.DateTimeFormatInfo System.Globalization.DateTimeFormatInfo
CS.System.Globalization.DateTimeFormatInfo = System.Globalization.DateTimeFormatInfo

---@return System.Globalization.DateTimeFormatInfo
function System.Globalization.DateTimeFormatInfo.New() end
---@param provider System.IFormatProvider
---@return System.Globalization.DateTimeFormatInfo
function System.Globalization.DateTimeFormatInfo.GetInstance(provider) end
---@param dtfi System.Globalization.DateTimeFormatInfo
---@return System.Globalization.DateTimeFormatInfo
function System.Globalization.DateTimeFormatInfo.ReadOnly(dtfi) end
---@param formatType System.Type
---@return System.Object
function System.Globalization.DateTimeFormatInfo:GetFormat(formatType) end
---@return System.Object
function System.Globalization.DateTimeFormatInfo:Clone() end
---@param eraName string
---@return number
function System.Globalization.DateTimeFormatInfo:GetEra(eraName) end
---@param era number
---@return string
function System.Globalization.DateTimeFormatInfo:GetEraName(era) end
---@param era number
---@return string
function System.Globalization.DateTimeFormatInfo:GetAbbreviatedEraName(era) end
---@param dayofweek System.DayOfWeek
---@return string
function System.Globalization.DateTimeFormatInfo:GetAbbreviatedDayName(dayofweek) end
---@param dayOfWeek System.DayOfWeek
---@return string
function System.Globalization.DateTimeFormatInfo:GetShortestDayName(dayOfWeek) end
---@overload fun() : System.String[]
---@param format System.Char
---@return System.String[]
function System.Globalization.DateTimeFormatInfo:GetAllDateTimePatterns(format) end
---@param dayofweek System.DayOfWeek
---@return string
function System.Globalization.DateTimeFormatInfo:GetDayName(dayofweek) end
---@param month number
---@return string
function System.Globalization.DateTimeFormatInfo:GetAbbreviatedMonthName(month) end
---@param month number
---@return string
function System.Globalization.DateTimeFormatInfo:GetMonthName(month) end
---@param patterns System.String[]
---@param format System.Char
function System.Globalization.DateTimeFormatInfo:SetAllDateTimePatterns(patterns, format) end

---@class System.Globalization.DateTimeFormatInfo.TokenHashValue : System.Object
System.Globalization.DateTimeFormatInfo.TokenHashValue = {}
---@alias CS.System.Globalization.DateTimeFormatInfo.TokenHashValue System.Globalization.DateTimeFormatInfo.TokenHashValue
CS.System.Globalization.DateTimeFormatInfo.TokenHashValue = System.Globalization.DateTimeFormatInfo.TokenHashValue


---@class System.Globalization.FORMATFLAGS
---@field None System.Globalization.FORMATFLAGS
---@field UseGenitiveMonth System.Globalization.FORMATFLAGS
---@field UseLeapYearMonth System.Globalization.FORMATFLAGS
---@field UseSpacesInMonthNames System.Globalization.FORMATFLAGS
---@field UseHebrewParsing System.Globalization.FORMATFLAGS
---@field UseSpacesInDayNames System.Globalization.FORMATFLAGS
---@field UseDigitPrefixInTokens System.Globalization.FORMATFLAGS
System.Globalization.FORMATFLAGS = {}
---@alias CS.System.Globalization.FORMATFLAGS System.Globalization.FORMATFLAGS
CS.System.Globalization.FORMATFLAGS = System.Globalization.FORMATFLAGS


---@class System.Globalization.CalendarId
---@field UNINITIALIZED_VALUE System.Globalization.CalendarId
---@field GREGORIAN System.Globalization.CalendarId
---@field GREGORIAN_US System.Globalization.CalendarId
---@field JAPAN System.Globalization.CalendarId
---@field TAIWAN System.Globalization.CalendarId
---@field KOREA System.Globalization.CalendarId
---@field HIJRI System.Globalization.CalendarId
---@field THAI System.Globalization.CalendarId
---@field HEBREW System.Globalization.CalendarId
---@field GREGORIAN_ME_FRENCH System.Globalization.CalendarId
---@field GREGORIAN_ARABIC System.Globalization.CalendarId
---@field GREGORIAN_XLIT_ENGLISH System.Globalization.CalendarId
---@field GREGORIAN_XLIT_FRENCH System.Globalization.CalendarId
---@field JULIAN System.Globalization.CalendarId
---@field JAPANESELUNISOLAR System.Globalization.CalendarId
---@field CHINESELUNISOLAR System.Globalization.CalendarId
---@field SAKA System.Globalization.CalendarId
---@field LUNAR_ETO_CHN System.Globalization.CalendarId
---@field LUNAR_ETO_KOR System.Globalization.CalendarId
---@field LUNAR_ETO_ROKUYOU System.Globalization.CalendarId
---@field KOREANLUNISOLAR System.Globalization.CalendarId
---@field TAIWANLUNISOLAR System.Globalization.CalendarId
---@field PERSIAN System.Globalization.CalendarId
---@field UMALQURA System.Globalization.CalendarId
---@field LAST_CALENDAR System.Globalization.CalendarId
System.Globalization.CalendarId = {}
---@alias CS.System.Globalization.CalendarId System.Globalization.CalendarId
CS.System.Globalization.CalendarId = System.Globalization.CalendarId


---@class System.Globalization.DateTimeFormatInfoScanner : System.Object
System.Globalization.DateTimeFormatInfoScanner = {}
---@alias CS.System.Globalization.DateTimeFormatInfoScanner System.Globalization.DateTimeFormatInfoScanner
CS.System.Globalization.DateTimeFormatInfoScanner = System.Globalization.DateTimeFormatInfoScanner

---@return System.Globalization.DateTimeFormatInfoScanner
function System.Globalization.DateTimeFormatInfoScanner.New() end

---@class System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern
---@field None System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern
---@field FoundYearPatternFlag System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern
---@field FoundMonthPatternFlag System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern
---@field FoundDayPatternFlag System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern
---@field FoundYMDPatternFlag System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern
System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern = {}
---@alias CS.System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern
CS.System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern = System.Globalization.DateTimeFormatInfoScanner.FoundDatePattern


---@class System.Globalization.DateTimeStyles
---@field None System.Globalization.DateTimeStyles
---@field AllowLeadingWhite System.Globalization.DateTimeStyles
---@field AllowTrailingWhite System.Globalization.DateTimeStyles
---@field AllowInnerWhite System.Globalization.DateTimeStyles
---@field AllowWhiteSpaces System.Globalization.DateTimeStyles
---@field NoCurrentDateDefault System.Globalization.DateTimeStyles
---@field AdjustToUniversal System.Globalization.DateTimeStyles
---@field AssumeLocal System.Globalization.DateTimeStyles
---@field AssumeUniversal System.Globalization.DateTimeStyles
---@field RoundtripKind System.Globalization.DateTimeStyles
System.Globalization.DateTimeStyles = {}
---@alias CS.System.Globalization.DateTimeStyles System.Globalization.DateTimeStyles
CS.System.Globalization.DateTimeStyles = System.Globalization.DateTimeStyles


---@class System.Globalization.DaylightTime : System.Object
---@field Start System.DateTime
---@field End System.DateTime
---@field Delta System.TimeSpan
System.Globalization.DaylightTime = {}
---@alias CS.System.Globalization.DaylightTime System.Globalization.DaylightTime
CS.System.Globalization.DaylightTime = System.Globalization.DaylightTime

---@param start System.DateTime
---@param _end System.DateTime
---@param delta System.TimeSpan
---@return System.Globalization.DaylightTime
function System.Globalization.DaylightTime.New(start, _end, delta) end

---@class System.Globalization.DaylightTimeStruct : System.ValueType
---@field Start System.DateTime
---@field End System.DateTime
---@field Delta System.TimeSpan
System.Globalization.DaylightTimeStruct = {}
---@alias CS.System.Globalization.DaylightTimeStruct System.Globalization.DaylightTimeStruct
CS.System.Globalization.DaylightTimeStruct = System.Globalization.DaylightTimeStruct

---@param start System.DateTime
---@param _end System.DateTime
---@param delta System.TimeSpan
---@return System.Globalization.DaylightTimeStruct
function System.Globalization.DaylightTimeStruct.New(start, _end, delta) end

---@class System.Globalization.DigitShapes
---@field Context System.Globalization.DigitShapes
---@field None System.Globalization.DigitShapes
---@field NativeNational System.Globalization.DigitShapes
System.Globalization.DigitShapes = {}
---@alias CS.System.Globalization.DigitShapes System.Globalization.DigitShapes
CS.System.Globalization.DigitShapes = System.Globalization.DigitShapes


---@class System.Globalization.GlobalizationExtensions : System.Object
System.Globalization.GlobalizationExtensions = {}
---@alias CS.System.Globalization.GlobalizationExtensions System.Globalization.GlobalizationExtensions
CS.System.Globalization.GlobalizationExtensions = System.Globalization.GlobalizationExtensions

---@param compareInfo System.Globalization.CompareInfo
---@param options System.Globalization.CompareOptions
---@return System.StringComparer
function System.Globalization.GlobalizationExtensions.GetStringComparer(compareInfo, options) end

---@class System.Globalization.HebrewNumberParsingContext : System.ValueType
System.Globalization.HebrewNumberParsingContext = {}
---@alias CS.System.Globalization.HebrewNumberParsingContext System.Globalization.HebrewNumberParsingContext
CS.System.Globalization.HebrewNumberParsingContext = System.Globalization.HebrewNumberParsingContext

---@param result number
---@return System.Globalization.HebrewNumberParsingContext
function System.Globalization.HebrewNumberParsingContext.New(result) end

---@class System.Globalization.HebrewNumberParsingState
---@field InvalidHebrewNumber System.Globalization.HebrewNumberParsingState
---@field NotHebrewDigit System.Globalization.HebrewNumberParsingState
---@field FoundEndOfHebrewNumber System.Globalization.HebrewNumberParsingState
---@field ContinueParsing System.Globalization.HebrewNumberParsingState
System.Globalization.HebrewNumberParsingState = {}
---@alias CS.System.Globalization.HebrewNumberParsingState System.Globalization.HebrewNumberParsingState
CS.System.Globalization.HebrewNumberParsingState = System.Globalization.HebrewNumberParsingState


---@class System.Globalization.HebrewNumber : System.Object
System.Globalization.HebrewNumber = {}
---@alias CS.System.Globalization.HebrewNumber System.Globalization.HebrewNumber
CS.System.Globalization.HebrewNumber = System.Globalization.HebrewNumber


---@class System.Globalization.HebrewNumber.HebrewToken
---@field Invalid System.Globalization.HebrewNumber.HebrewToken
---@field Digit400 System.Globalization.HebrewNumber.HebrewToken
---@field Digit200_300 System.Globalization.HebrewNumber.HebrewToken
---@field Digit100 System.Globalization.HebrewNumber.HebrewToken
---@field Digit10 System.Globalization.HebrewNumber.HebrewToken
---@field Digit1 System.Globalization.HebrewNumber.HebrewToken
---@field Digit6_7 System.Globalization.HebrewNumber.HebrewToken
---@field Digit7 System.Globalization.HebrewNumber.HebrewToken
---@field Digit9 System.Globalization.HebrewNumber.HebrewToken
---@field SingleQuote System.Globalization.HebrewNumber.HebrewToken
---@field DoubleQuote System.Globalization.HebrewNumber.HebrewToken
System.Globalization.HebrewNumber.HebrewToken = {}
---@alias CS.System.Globalization.HebrewNumber.HebrewToken System.Globalization.HebrewNumber.HebrewToken
CS.System.Globalization.HebrewNumber.HebrewToken = System.Globalization.HebrewNumber.HebrewToken


---@class System.Globalization.HebrewNumber.HebrewValue : System.ValueType
System.Globalization.HebrewNumber.HebrewValue = {}
---@alias CS.System.Globalization.HebrewNumber.HebrewValue System.Globalization.HebrewNumber.HebrewValue
CS.System.Globalization.HebrewNumber.HebrewValue = System.Globalization.HebrewNumber.HebrewValue


---@class System.Globalization.HebrewNumber.HS
---@field _err System.Globalization.HebrewNumber.HS
---@field Start System.Globalization.HebrewNumber.HS
---@field S400 System.Globalization.HebrewNumber.HS
---@field S400_400 System.Globalization.HebrewNumber.HS
---@field S400_X00 System.Globalization.HebrewNumber.HS
---@field S400_X0 System.Globalization.HebrewNumber.HS
---@field X00_DQ System.Globalization.HebrewNumber.HS
---@field S400_X00_X0 System.Globalization.HebrewNumber.HS
---@field X0_DQ System.Globalization.HebrewNumber.HS
---@field X System.Globalization.HebrewNumber.HS
---@field X0 System.Globalization.HebrewNumber.HS
---@field X00 System.Globalization.HebrewNumber.HS
---@field S400_DQ System.Globalization.HebrewNumber.HS
---@field S400_400_DQ System.Globalization.HebrewNumber.HS
---@field S400_400_100 System.Globalization.HebrewNumber.HS
---@field S9 System.Globalization.HebrewNumber.HS
---@field X00_S9 System.Globalization.HebrewNumber.HS
---@field S9_DQ System.Globalization.HebrewNumber.HS
---@field END System.Globalization.HebrewNumber.HS
System.Globalization.HebrewNumber.HS = {}
---@alias CS.System.Globalization.HebrewNumber.HS System.Globalization.HebrewNumber.HS
CS.System.Globalization.HebrewNumber.HS = System.Globalization.HebrewNumber.HS


---@class System.Globalization.InternalGlobalizationHelper : System.Object
System.Globalization.InternalGlobalizationHelper = {}
---@alias CS.System.Globalization.InternalGlobalizationHelper System.Globalization.InternalGlobalizationHelper
CS.System.Globalization.InternalGlobalizationHelper = System.Globalization.InternalGlobalizationHelper

---@return System.Globalization.InternalGlobalizationHelper
function System.Globalization.InternalGlobalizationHelper.New() end

---@class System.Globalization.NumberStyles
---@field None System.Globalization.NumberStyles
---@field AllowLeadingWhite System.Globalization.NumberStyles
---@field AllowTrailingWhite System.Globalization.NumberStyles
---@field AllowLeadingSign System.Globalization.NumberStyles
---@field AllowTrailingSign System.Globalization.NumberStyles
---@field AllowParentheses System.Globalization.NumberStyles
---@field AllowDecimalPoint System.Globalization.NumberStyles
---@field AllowThousands System.Globalization.NumberStyles
---@field AllowExponent System.Globalization.NumberStyles
---@field AllowCurrencySymbol System.Globalization.NumberStyles
---@field AllowHexSpecifier System.Globalization.NumberStyles
---@field Integer System.Globalization.NumberStyles
---@field HexNumber System.Globalization.NumberStyles
---@field Number System.Globalization.NumberStyles
---@field Float System.Globalization.NumberStyles
---@field Currency System.Globalization.NumberStyles
---@field Any System.Globalization.NumberStyles
System.Globalization.NumberStyles = {}
---@alias CS.System.Globalization.NumberStyles System.Globalization.NumberStyles
CS.System.Globalization.NumberStyles = System.Globalization.NumberStyles


---@class System.Globalization.SortVersion : System.Object
---@field FullVersion number
---@field SortId System.Guid
System.Globalization.SortVersion = {}
---@alias CS.System.Globalization.SortVersion System.Globalization.SortVersion
CS.System.Globalization.SortVersion = System.Globalization.SortVersion

---@param fullVersion number
---@param sortId System.Guid
---@return System.Globalization.SortVersion
function System.Globalization.SortVersion.New(fullVersion, sortId) end
---@overload fun(self: System.Globalization.SortVersion, obj: System.Object) : boolean
---@param other System.Globalization.SortVersion
---@return boolean
function System.Globalization.SortVersion:Equals(other) end
---@return number
function System.Globalization.SortVersion:GetHashCode() end

---@class System.Globalization.TimeSpanFormat : System.Object
System.Globalization.TimeSpanFormat = {}
---@alias CS.System.Globalization.TimeSpanFormat System.Globalization.TimeSpanFormat
CS.System.Globalization.TimeSpanFormat = System.Globalization.TimeSpanFormat


---@class System.Globalization.TimeSpanFormat.Pattern
---@field None System.Globalization.TimeSpanFormat.Pattern
---@field Minimum System.Globalization.TimeSpanFormat.Pattern
---@field Full System.Globalization.TimeSpanFormat.Pattern
System.Globalization.TimeSpanFormat.Pattern = {}
---@alias CS.System.Globalization.TimeSpanFormat.Pattern System.Globalization.TimeSpanFormat.Pattern
CS.System.Globalization.TimeSpanFormat.Pattern = System.Globalization.TimeSpanFormat.Pattern


---@class System.Globalization.TimeSpanFormat.FormatLiterals : System.ValueType
System.Globalization.TimeSpanFormat.FormatLiterals = {}
---@alias CS.System.Globalization.TimeSpanFormat.FormatLiterals System.Globalization.TimeSpanFormat.FormatLiterals
CS.System.Globalization.TimeSpanFormat.FormatLiterals = System.Globalization.TimeSpanFormat.FormatLiterals


---@class System.Globalization.TimeSpanParse : System.Object
System.Globalization.TimeSpanParse = {}
---@alias CS.System.Globalization.TimeSpanParse System.Globalization.TimeSpanParse
CS.System.Globalization.TimeSpanParse = System.Globalization.TimeSpanParse


---@class System.Globalization.TimeSpanParse.ParseFailureKind
---@field None System.Globalization.TimeSpanParse.ParseFailureKind
---@field ArgumentNull System.Globalization.TimeSpanParse.ParseFailureKind
---@field Format System.Globalization.TimeSpanParse.ParseFailureKind
---@field FormatWithParameter System.Globalization.TimeSpanParse.ParseFailureKind
---@field Overflow System.Globalization.TimeSpanParse.ParseFailureKind
System.Globalization.TimeSpanParse.ParseFailureKind = {}
---@alias CS.System.Globalization.TimeSpanParse.ParseFailureKind System.Globalization.TimeSpanParse.ParseFailureKind
CS.System.Globalization.TimeSpanParse.ParseFailureKind = System.Globalization.TimeSpanParse.ParseFailureKind


---@class System.Globalization.TimeSpanParse.TimeSpanStandardStyles
---@field None System.Globalization.TimeSpanParse.TimeSpanStandardStyles
---@field Invariant System.Globalization.TimeSpanParse.TimeSpanStandardStyles
---@field Localized System.Globalization.TimeSpanParse.TimeSpanStandardStyles
---@field RequireFull System.Globalization.TimeSpanParse.TimeSpanStandardStyles
---@field Any System.Globalization.TimeSpanParse.TimeSpanStandardStyles
System.Globalization.TimeSpanParse.TimeSpanStandardStyles = {}
---@alias CS.System.Globalization.TimeSpanParse.TimeSpanStandardStyles System.Globalization.TimeSpanParse.TimeSpanStandardStyles
CS.System.Globalization.TimeSpanParse.TimeSpanStandardStyles = System.Globalization.TimeSpanParse.TimeSpanStandardStyles


---@class System.Globalization.TimeSpanParse.TTT
---@field None System.Globalization.TimeSpanParse.TTT
---@field End System.Globalization.TimeSpanParse.TTT
---@field Num System.Globalization.TimeSpanParse.TTT
---@field Sep System.Globalization.TimeSpanParse.TTT
---@field NumOverflow System.Globalization.TimeSpanParse.TTT
System.Globalization.TimeSpanParse.TTT = {}
---@alias CS.System.Globalization.TimeSpanParse.TTT System.Globalization.TimeSpanParse.TTT
CS.System.Globalization.TimeSpanParse.TTT = System.Globalization.TimeSpanParse.TTT


---@class System.Globalization.TimeSpanParse.TimeSpanToken : System.ValueType
System.Globalization.TimeSpanParse.TimeSpanToken = {}
---@alias CS.System.Globalization.TimeSpanParse.TimeSpanToken System.Globalization.TimeSpanParse.TimeSpanToken
CS.System.Globalization.TimeSpanParse.TimeSpanToken = System.Globalization.TimeSpanParse.TimeSpanToken

---@overload fun(type: System.Globalization.TimeSpanParse.TTT) : System.Globalization.TimeSpanParse.TimeSpanToken
---@overload fun(number: number) : System.Globalization.TimeSpanParse.TimeSpanToken
---@overload fun(number: number, leadingZeroes: number) : System.Globalization.TimeSpanParse.TimeSpanToken
---@param type System.Globalization.TimeSpanParse.TTT
---@param number number
---@param leadingZeroes number
---@param separator System.ReadOnlySpan
---@return System.Globalization.TimeSpanParse.TimeSpanToken
function System.Globalization.TimeSpanParse.TimeSpanToken.New(type, number, leadingZeroes, separator) end
---@return boolean
function System.Globalization.TimeSpanParse.TimeSpanToken:IsInvalidFraction() end

---@class System.Globalization.TimeSpanParse.TimeSpanTokenizer : System.ValueType
System.Globalization.TimeSpanParse.TimeSpanTokenizer = {}
---@alias CS.System.Globalization.TimeSpanParse.TimeSpanTokenizer System.Globalization.TimeSpanParse.TimeSpanTokenizer
CS.System.Globalization.TimeSpanParse.TimeSpanTokenizer = System.Globalization.TimeSpanParse.TimeSpanTokenizer


---@class System.Globalization.TimeSpanParse.TimeSpanRawInfo : System.ValueType
System.Globalization.TimeSpanParse.TimeSpanRawInfo = {}
---@alias CS.System.Globalization.TimeSpanParse.TimeSpanRawInfo System.Globalization.TimeSpanParse.TimeSpanRawInfo
CS.System.Globalization.TimeSpanParse.TimeSpanRawInfo = System.Globalization.TimeSpanParse.TimeSpanRawInfo


---@class System.Globalization.TimeSpanParse.TimeSpanResult : System.ValueType
System.Globalization.TimeSpanParse.TimeSpanResult = {}
---@alias CS.System.Globalization.TimeSpanParse.TimeSpanResult System.Globalization.TimeSpanParse.TimeSpanResult
CS.System.Globalization.TimeSpanParse.TimeSpanResult = System.Globalization.TimeSpanParse.TimeSpanResult


---@class System.Globalization.TimeSpanParse.StringParser : System.ValueType
System.Globalization.TimeSpanParse.StringParser = {}
---@alias CS.System.Globalization.TimeSpanParse.StringParser System.Globalization.TimeSpanParse.StringParser
CS.System.Globalization.TimeSpanParse.StringParser = System.Globalization.TimeSpanParse.StringParser


---@class System.Globalization.TimeSpanStyles
---@field None System.Globalization.TimeSpanStyles
---@field AssumeNegative System.Globalization.TimeSpanStyles
System.Globalization.TimeSpanStyles = {}
---@alias CS.System.Globalization.TimeSpanStyles System.Globalization.TimeSpanStyles
CS.System.Globalization.TimeSpanStyles = System.Globalization.TimeSpanStyles


---@class System.Globalization.UnicodeCategory
---@field UppercaseLetter System.Globalization.UnicodeCategory
---@field LowercaseLetter System.Globalization.UnicodeCategory
---@field TitlecaseLetter System.Globalization.UnicodeCategory
---@field ModifierLetter System.Globalization.UnicodeCategory
---@field OtherLetter System.Globalization.UnicodeCategory
---@field NonSpacingMark System.Globalization.UnicodeCategory
---@field SpacingCombiningMark System.Globalization.UnicodeCategory
---@field EnclosingMark System.Globalization.UnicodeCategory
---@field DecimalDigitNumber System.Globalization.UnicodeCategory
---@field LetterNumber System.Globalization.UnicodeCategory
---@field OtherNumber System.Globalization.UnicodeCategory
---@field SpaceSeparator System.Globalization.UnicodeCategory
---@field LineSeparator System.Globalization.UnicodeCategory
---@field ParagraphSeparator System.Globalization.UnicodeCategory
---@field Control System.Globalization.UnicodeCategory
---@field Format System.Globalization.UnicodeCategory
---@field Surrogate System.Globalization.UnicodeCategory
---@field PrivateUse System.Globalization.UnicodeCategory
---@field ConnectorPunctuation System.Globalization.UnicodeCategory
---@field DashPunctuation System.Globalization.UnicodeCategory
---@field OpenPunctuation System.Globalization.UnicodeCategory
---@field ClosePunctuation System.Globalization.UnicodeCategory
---@field InitialQuotePunctuation System.Globalization.UnicodeCategory
---@field FinalQuotePunctuation System.Globalization.UnicodeCategory
---@field OtherPunctuation System.Globalization.UnicodeCategory
---@field MathSymbol System.Globalization.UnicodeCategory
---@field CurrencySymbol System.Globalization.UnicodeCategory
---@field ModifierSymbol System.Globalization.UnicodeCategory
---@field OtherSymbol System.Globalization.UnicodeCategory
---@field OtherNotAssigned System.Globalization.UnicodeCategory
System.Globalization.UnicodeCategory = {}
---@alias CS.System.Globalization.UnicodeCategory System.Globalization.UnicodeCategory
CS.System.Globalization.UnicodeCategory = System.Globalization.UnicodeCategory


---@class System.Globalization.ISOWeek : System.Object
System.Globalization.ISOWeek = {}
---@alias CS.System.Globalization.ISOWeek System.Globalization.ISOWeek
CS.System.Globalization.ISOWeek = System.Globalization.ISOWeek

---@param date System.DateTime
---@return number
function System.Globalization.ISOWeek.GetWeekOfYear(date) end
---@param date System.DateTime
---@return number
function System.Globalization.ISOWeek.GetYear(date) end
---@param year number
---@return System.DateTime
function System.Globalization.ISOWeek.GetYearStart(year) end
---@param year number
---@return System.DateTime
function System.Globalization.ISOWeek.GetYearEnd(year) end
---@param year number
---@return number
function System.Globalization.ISOWeek.GetWeeksInYear(year) end
---@param year number
---@param week number
---@param dayOfWeek System.DayOfWeek
---@return System.DateTime
function System.Globalization.ISOWeek.ToDateTime(year, week, dayOfWeek) end

---@class System.Globalization.GlobalizationMode : System.Object
System.Globalization.GlobalizationMode = {}
---@alias CS.System.Globalization.GlobalizationMode System.Globalization.GlobalizationMode
CS.System.Globalization.GlobalizationMode = System.Globalization.GlobalizationMode


---@class System.Globalization.CalendricalCalculationsHelper : System.Object
System.Globalization.CalendricalCalculationsHelper = {}
---@alias CS.System.Globalization.CalendricalCalculationsHelper System.Globalization.CalendricalCalculationsHelper
CS.System.Globalization.CalendricalCalculationsHelper = System.Globalization.CalendricalCalculationsHelper

---@return System.Globalization.CalendricalCalculationsHelper
function System.Globalization.CalendricalCalculationsHelper.New() end
---@param degrees number
---@param minutes number
---@param seconds number
---@return number
function System.Globalization.CalendricalCalculationsHelper.Angle(degrees, minutes, seconds) end
---@param longitude number
---@return number
function System.Globalization.CalendricalCalculationsHelper.AsDayFraction(longitude) end
---@param moment number
---@return number
function System.Globalization.CalendricalCalculationsHelper.JulianCenturies(moment) end
---@param date number
---@param longitude number
---@return number
function System.Globalization.CalendricalCalculationsHelper.Midday(date, longitude) end
---@param date number
---@return number
function System.Globalization.CalendricalCalculationsHelper.MiddayAtPersianObservationSite(date) end
---@param time number
---@return number
function System.Globalization.CalendricalCalculationsHelper.Compute(time) end
---@param longitude number
---@return number
function System.Globalization.CalendricalCalculationsHelper.AsSeason(longitude) end

---@class System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
---@field Default System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
---@field Year1988to2019 System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
---@field Year1900to1987 System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
---@field Year1800to1899 System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
---@field Year1700to1799 System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
---@field Year1620to1699 System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm = {}
---@alias CS.System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
CS.System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm = System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm


---@class System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap : System.ValueType
System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap = {}
---@alias CS.System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap
CS.System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap = System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap

---@param year number
---@param algorithm System.Globalization.CalendricalCalculationsHelper.CorrectionAlgorithm
---@return System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap
function System.Globalization.CalendricalCalculationsHelper.EphemerisCorrectionAlgorithmMap.New(year, algorithm) end

---@class System.Globalization.PersianCalendar : System.Globalization.Calendar
---@field PersianEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.PersianCalendar = {}
---@alias CS.System.Globalization.PersianCalendar System.Globalization.PersianCalendar
CS.System.Globalization.PersianCalendar = System.Globalization.PersianCalendar

---@return System.Globalization.PersianCalendar
function System.Globalization.PersianCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.PersianCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.PersianCalendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.PersianCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.PersianCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.PersianCalendar:GetDayOfYear(time) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.PersianCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.PersianCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.PersianCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.PersianCalendar:GetMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.PersianCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.PersianCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.PersianCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.PersianCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.PersianCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.PersianCalendar:IsLeapYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.PersianCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.PersianCalendar:ToFourDigitYear(year) end

---@class System.Globalization.Calendar : System.Object
---@field CurrentEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field IsReadOnly boolean
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.Calendar = {}
---@alias CS.System.Globalization.Calendar System.Globalization.Calendar
CS.System.Globalization.Calendar = System.Globalization.Calendar

---@param calendar System.Globalization.Calendar
---@return System.Globalization.Calendar
function System.Globalization.Calendar.ReadOnly(calendar) end
---@return System.Object
function System.Globalization.Calendar:Clone() end
---@param time System.DateTime
---@param milliseconds number
---@return System.DateTime
function System.Globalization.Calendar:AddMilliseconds(time, milliseconds) end
---@param time System.DateTime
---@param days number
---@return System.DateTime
function System.Globalization.Calendar:AddDays(time, days) end
---@param time System.DateTime
---@param hours number
---@return System.DateTime
function System.Globalization.Calendar:AddHours(time, hours) end
---@param time System.DateTime
---@param minutes number
---@return System.DateTime
function System.Globalization.Calendar:AddMinutes(time, minutes) end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.Calendar:AddMonths(time, months) end
---@param time System.DateTime
---@param seconds number
---@return System.DateTime
function System.Globalization.Calendar:AddSeconds(time, seconds) end
---@param time System.DateTime
---@param weeks number
---@return System.DateTime
function System.Globalization.Calendar:AddWeeks(time, weeks) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.Calendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.Calendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetDayOfYear(time) end
---@overload fun(self: System.Globalization.Calendar, year: number, month: number) : number
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.Calendar:GetDaysInMonth(year, month, era) end
---@overload fun(self: System.Globalization.Calendar, year: number) : number
---@param year number
---@param era number
---@return number
function System.Globalization.Calendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetHour(time) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetMilliseconds(time) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetMinute(time) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetMonth(time) end
---@overload fun(self: System.Globalization.Calendar, year: number) : number
---@param year number
---@param era number
---@return number
function System.Globalization.Calendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetSecond(time) end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function System.Globalization.Calendar:GetWeekOfYear(time, rule, firstDayOfWeek) end
---@param time System.DateTime
---@return number
function System.Globalization.Calendar:GetYear(time) end
---@overload fun(self: System.Globalization.Calendar, year: number, month: number, day: number) : boolean
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.Calendar:IsLeapDay(year, month, day, era) end
---@overload fun(self: System.Globalization.Calendar, year: number, month: number) : boolean
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.Calendar:IsLeapMonth(year, month, era) end
---@overload fun(self: System.Globalization.Calendar, year: number) : number
---@param year number
---@param era number
---@return number
function System.Globalization.Calendar:GetLeapMonth(year, era) end
---@overload fun(self: System.Globalization.Calendar, year: number) : boolean
---@param year number
---@param era number
---@return boolean
function System.Globalization.Calendar:IsLeapYear(year, era) end
---@overload fun(self: System.Globalization.Calendar, year: number, month: number, day: number, hour: number, minute: number, second: number, millisecond: number) : System.DateTime
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.Calendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.Calendar:ToFourDigitYear(year) end

---@class System.Globalization.CalendarData : System.Object
System.Globalization.CalendarData = {}
---@alias CS.System.Globalization.CalendarData System.Globalization.CalendarData
CS.System.Globalization.CalendarData = System.Globalization.CalendarData

---@param calID number
---@return number
function System.Globalization.CalendarData.nativeGetTwoDigitYearMax(calID) end

---@class System.Globalization.ChineseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field ChineseEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field Eras System.Int32[]
System.Globalization.ChineseLunisolarCalendar = {}
---@alias CS.System.Globalization.ChineseLunisolarCalendar System.Globalization.ChineseLunisolarCalendar
CS.System.Globalization.ChineseLunisolarCalendar = System.Globalization.ChineseLunisolarCalendar

---@return System.Globalization.ChineseLunisolarCalendar
function System.Globalization.ChineseLunisolarCalendar.New() end
---@param time System.DateTime
---@return number
function System.Globalization.ChineseLunisolarCalendar:GetEra(time) end

---@class System.Globalization.EastAsianLunisolarCalendar : System.Globalization.Calendar
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field TwoDigitYearMax number
System.Globalization.EastAsianLunisolarCalendar = {}
---@alias CS.System.Globalization.EastAsianLunisolarCalendar System.Globalization.EastAsianLunisolarCalendar
CS.System.Globalization.EastAsianLunisolarCalendar = System.Globalization.EastAsianLunisolarCalendar

---@param time System.DateTime
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetSexagenaryYear(time) end
---@param sexagenaryYear number
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetCelestialStem(sexagenaryYear) end
---@param sexagenaryYear number
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetTerrestrialBranch(sexagenaryYear) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.EastAsianLunisolarCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.EastAsianLunisolarCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.EastAsianLunisolarCalendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetDayOfYear(time) end
---@param time System.DateTime
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetDayOfMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetMonth(time) end
---@param time System.DateTime
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetYear(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.EastAsianLunisolarCalendar:GetDayOfWeek(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetMonthsInYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.EastAsianLunisolarCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.EastAsianLunisolarCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.EastAsianLunisolarCalendar:GetLeapMonth(year, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.EastAsianLunisolarCalendar:IsLeapYear(year, era) end
---@param year number
---@return number
function System.Globalization.EastAsianLunisolarCalendar:ToFourDigitYear(year) end

---@class System.Globalization.GlobalizationAssembly : System.Object
System.Globalization.GlobalizationAssembly = {}
---@alias CS.System.Globalization.GlobalizationAssembly System.Globalization.GlobalizationAssembly
CS.System.Globalization.GlobalizationAssembly = System.Globalization.GlobalizationAssembly

---@return System.Globalization.GlobalizationAssembly
function System.Globalization.GlobalizationAssembly.New() end

---@class System.Globalization.GregorianCalendar : System.Globalization.Calendar
---@field ADEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field CalendarType System.Globalization.GregorianCalendarTypes
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.GregorianCalendar = {}
---@alias CS.System.Globalization.GregorianCalendar System.Globalization.GregorianCalendar
CS.System.Globalization.GregorianCalendar = System.Globalization.GregorianCalendar

---@overload fun() : System.Globalization.GregorianCalendar
---@param type System.Globalization.GregorianCalendarTypes
---@return System.Globalization.GregorianCalendar
function System.Globalization.GregorianCalendar.New(type) end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.GregorianCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.GregorianCalendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.GregorianCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendar:GetDayOfYear(time) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.GregorianCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.GregorianCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendar:GetMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.GregorianCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.GregorianCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.GregorianCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.GregorianCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.GregorianCalendar:IsLeapYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.GregorianCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.GregorianCalendar:ToFourDigitYear(year) end

---@class System.Globalization.EraInfo : System.Object
System.Globalization.EraInfo = {}
---@alias CS.System.Globalization.EraInfo System.Globalization.EraInfo
CS.System.Globalization.EraInfo = System.Globalization.EraInfo


---@class System.Globalization.GregorianCalendarHelper : System.Object
---@field Eras System.Int32[]
System.Globalization.GregorianCalendarHelper = {}
---@alias CS.System.Globalization.GregorianCalendarHelper System.Globalization.GregorianCalendarHelper
CS.System.Globalization.GregorianCalendarHelper = System.Globalization.GregorianCalendarHelper

---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.GregorianCalendarHelper:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.GregorianCalendarHelper:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendarHelper:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.GregorianCalendarHelper:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendarHelper:GetDayOfYear(time) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.GregorianCalendarHelper:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.GregorianCalendarHelper:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendarHelper:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendarHelper:GetMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.GregorianCalendarHelper:GetMonthsInYear(year, era) end
---@overload fun(self: System.Globalization.GregorianCalendarHelper, time: System.DateTime) : number
---@param year number
---@param time System.DateTime
---@return number
function System.Globalization.GregorianCalendarHelper:GetYear(year, time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.GregorianCalendarHelper:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.GregorianCalendarHelper:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.GregorianCalendarHelper:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.GregorianCalendarHelper:IsLeapYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.GregorianCalendarHelper:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function System.Globalization.GregorianCalendarHelper:GetWeekOfYear(time, rule, firstDayOfWeek) end
---@param year number
---@param twoDigitYearMax number
---@return number
function System.Globalization.GregorianCalendarHelper:ToFourDigitYear(year, twoDigitYearMax) end

---@class System.Globalization.GregorianCalendarTypes
---@field Localized System.Globalization.GregorianCalendarTypes
---@field USEnglish System.Globalization.GregorianCalendarTypes
---@field MiddleEastFrench System.Globalization.GregorianCalendarTypes
---@field Arabic System.Globalization.GregorianCalendarTypes
---@field TransliteratedEnglish System.Globalization.GregorianCalendarTypes
---@field TransliteratedFrench System.Globalization.GregorianCalendarTypes
System.Globalization.GregorianCalendarTypes = {}
---@alias CS.System.Globalization.GregorianCalendarTypes System.Globalization.GregorianCalendarTypes
CS.System.Globalization.GregorianCalendarTypes = System.Globalization.GregorianCalendarTypes


---@class System.Globalization.HebrewCalendar : System.Globalization.Calendar
---@field HebrewEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.HebrewCalendar = {}
---@alias CS.System.Globalization.HebrewCalendar System.Globalization.HebrewCalendar
CS.System.Globalization.HebrewCalendar = System.Globalization.HebrewCalendar

---@return System.Globalization.HebrewCalendar
function System.Globalization.HebrewCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.HebrewCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.HebrewCalendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.HebrewCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.HebrewCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.HebrewCalendar:GetDayOfYear(time) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.HebrewCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.HebrewCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.HebrewCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.HebrewCalendar:GetMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.HebrewCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.HebrewCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.HebrewCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.HebrewCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.HebrewCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.HebrewCalendar:IsLeapYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.HebrewCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.HebrewCalendar:ToFourDigitYear(year) end

---@class System.Globalization.HebrewCalendar.__DateBuffer : System.Object
System.Globalization.HebrewCalendar.__DateBuffer = {}
---@alias CS.System.Globalization.HebrewCalendar.__DateBuffer System.Globalization.HebrewCalendar.__DateBuffer
CS.System.Globalization.HebrewCalendar.__DateBuffer = System.Globalization.HebrewCalendar.__DateBuffer

---@return System.Globalization.HebrewCalendar.__DateBuffer
function System.Globalization.HebrewCalendar.__DateBuffer.New() end

---@class System.Globalization.HijriCalendar : System.Globalization.Calendar
---@field HijriEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field HijriAdjustment number
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.HijriCalendar = {}
---@alias CS.System.Globalization.HijriCalendar System.Globalization.HijriCalendar
CS.System.Globalization.HijriCalendar = System.Globalization.HijriCalendar

---@return System.Globalization.HijriCalendar
function System.Globalization.HijriCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.HijriCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.HijriCalendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.HijriCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.HijriCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.HijriCalendar:GetDayOfYear(time) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.HijriCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.HijriCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.HijriCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.HijriCalendar:GetMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.HijriCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.HijriCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.HijriCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.HijriCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.HijriCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.HijriCalendar:IsLeapYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.HijriCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.HijriCalendar:ToFourDigitYear(year) end

---@class System.Globalization.JapaneseCalendar : System.Globalization.Calendar
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.JapaneseCalendar = {}
---@alias CS.System.Globalization.JapaneseCalendar System.Globalization.JapaneseCalendar
CS.System.Globalization.JapaneseCalendar = System.Globalization.JapaneseCalendar

---@return System.Globalization.JapaneseCalendar
function System.Globalization.JapaneseCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.JapaneseCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.JapaneseCalendar:AddYears(time, years) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.JapaneseCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.JapaneseCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.JapaneseCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.JapaneseCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.JapaneseCalendar:GetDayOfYear(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.JapaneseCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function System.Globalization.JapaneseCalendar:GetWeekOfYear(time, rule, firstDayOfWeek) end
---@param time System.DateTime
---@return number
function System.Globalization.JapaneseCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.JapaneseCalendar:GetMonth(time) end
---@param time System.DateTime
---@return number
function System.Globalization.JapaneseCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.JapaneseCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.JapaneseCalendar:IsLeapYear(year, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.JapaneseCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.JapaneseCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.JapaneseCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.JapaneseCalendar:ToFourDigitYear(year) end

---@class System.Globalization.JapaneseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field JapaneseEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field Eras System.Int32[]
System.Globalization.JapaneseLunisolarCalendar = {}
---@alias CS.System.Globalization.JapaneseLunisolarCalendar System.Globalization.JapaneseLunisolarCalendar
CS.System.Globalization.JapaneseLunisolarCalendar = System.Globalization.JapaneseLunisolarCalendar

---@return System.Globalization.JapaneseLunisolarCalendar
function System.Globalization.JapaneseLunisolarCalendar.New() end
---@param time System.DateTime
---@return number
function System.Globalization.JapaneseLunisolarCalendar:GetEra(time) end

---@class System.Globalization.JulianCalendar : System.Globalization.Calendar
---@field JulianEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.JulianCalendar = {}
---@alias CS.System.Globalization.JulianCalendar System.Globalization.JulianCalendar
CS.System.Globalization.JulianCalendar = System.Globalization.JulianCalendar

---@return System.Globalization.JulianCalendar
function System.Globalization.JulianCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.JulianCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.JulianCalendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.JulianCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.JulianCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.JulianCalendar:GetDayOfYear(time) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.JulianCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.JulianCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.JulianCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.JulianCalendar:GetMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.JulianCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.JulianCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.JulianCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.JulianCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.JulianCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.JulianCalendar:IsLeapYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.JulianCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.JulianCalendar:ToFourDigitYear(year) end

---@class System.Globalization.KoreanCalendar : System.Globalization.Calendar
---@field KoreanEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.KoreanCalendar = {}
---@alias CS.System.Globalization.KoreanCalendar System.Globalization.KoreanCalendar
CS.System.Globalization.KoreanCalendar = System.Globalization.KoreanCalendar

---@return System.Globalization.KoreanCalendar
function System.Globalization.KoreanCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.KoreanCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.KoreanCalendar:AddYears(time, years) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.KoreanCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.KoreanCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.KoreanCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.KoreanCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.KoreanCalendar:GetDayOfYear(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.KoreanCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function System.Globalization.KoreanCalendar:GetWeekOfYear(time, rule, firstDayOfWeek) end
---@param time System.DateTime
---@return number
function System.Globalization.KoreanCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.KoreanCalendar:GetMonth(time) end
---@param time System.DateTime
---@return number
function System.Globalization.KoreanCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.KoreanCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.KoreanCalendar:IsLeapYear(year, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.KoreanCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.KoreanCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.KoreanCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.KoreanCalendar:ToFourDigitYear(year) end

---@class System.Globalization.KoreanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field GregorianEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field Eras System.Int32[]
System.Globalization.KoreanLunisolarCalendar = {}
---@alias CS.System.Globalization.KoreanLunisolarCalendar System.Globalization.KoreanLunisolarCalendar
CS.System.Globalization.KoreanLunisolarCalendar = System.Globalization.KoreanLunisolarCalendar

---@return System.Globalization.KoreanLunisolarCalendar
function System.Globalization.KoreanLunisolarCalendar.New() end
---@param time System.DateTime
---@return number
function System.Globalization.KoreanLunisolarCalendar:GetEra(time) end

---@class System.Globalization.NumberFormatInfo : System.Object
---@field InvariantInfo System.Globalization.NumberFormatInfo
---@field CurrentInfo System.Globalization.NumberFormatInfo
---@field CurrencyDecimalDigits number
---@field CurrencyDecimalSeparator string
---@field IsReadOnly boolean
---@field CurrencyGroupSizes System.Int32[]
---@field NumberGroupSizes System.Int32[]
---@field PercentGroupSizes System.Int32[]
---@field CurrencyGroupSeparator string
---@field CurrencySymbol string
---@field NaNSymbol string
---@field CurrencyNegativePattern number
---@field NumberNegativePattern number
---@field PercentPositivePattern number
---@field PercentNegativePattern number
---@field NegativeInfinitySymbol string
---@field NegativeSign string
---@field NumberDecimalDigits number
---@field NumberDecimalSeparator string
---@field NumberGroupSeparator string
---@field CurrencyPositivePattern number
---@field PositiveInfinitySymbol string
---@field PositiveSign string
---@field PercentDecimalDigits number
---@field PercentDecimalSeparator string
---@field PercentGroupSeparator string
---@field PercentSymbol string
---@field PerMilleSymbol string
---@field NativeDigits System.String[]
---@field DigitSubstitution System.Globalization.DigitShapes
System.Globalization.NumberFormatInfo = {}
---@alias CS.System.Globalization.NumberFormatInfo System.Globalization.NumberFormatInfo
CS.System.Globalization.NumberFormatInfo = System.Globalization.NumberFormatInfo

---@return System.Globalization.NumberFormatInfo
function System.Globalization.NumberFormatInfo.New() end
---@param formatProvider System.IFormatProvider
---@return System.Globalization.NumberFormatInfo
function System.Globalization.NumberFormatInfo.GetInstance(formatProvider) end
---@param nfi System.Globalization.NumberFormatInfo
---@return System.Globalization.NumberFormatInfo
function System.Globalization.NumberFormatInfo.ReadOnly(nfi) end
---@return System.Object
function System.Globalization.NumberFormatInfo:Clone() end
---@param formatType System.Type
---@return System.Object
function System.Globalization.NumberFormatInfo:GetFormat(formatType) end

---@class System.Globalization.StringInfo : System.Object
---@field String string
---@field LengthInTextElements number
System.Globalization.StringInfo = {}
---@alias CS.System.Globalization.StringInfo System.Globalization.StringInfo
CS.System.Globalization.StringInfo = System.Globalization.StringInfo

---@overload fun() : System.Globalization.StringInfo
---@param value string
---@return System.Globalization.StringInfo
function System.Globalization.StringInfo.New(value) end
---@overload fun(str: string) : string
---@param str string
---@param index number
---@return string
function System.Globalization.StringInfo.GetNextTextElement(str, index) end
---@overload fun(str: string) : System.Globalization.TextElementEnumerator
---@param str string
---@param index number
---@return System.Globalization.TextElementEnumerator
function System.Globalization.StringInfo.GetTextElementEnumerator(str, index) end
---@param str string
---@return System.Int32[]
function System.Globalization.StringInfo.ParseCombiningCharacters(str) end
---@param value System.Object
---@return boolean
function System.Globalization.StringInfo:Equals(value) end
---@return number
function System.Globalization.StringInfo:GetHashCode() end
---@overload fun(self: System.Globalization.StringInfo, startingTextElement: number) : string
---@param startingTextElement number
---@param lengthInTextElements number
---@return string
function System.Globalization.StringInfo:SubstringByTextElements(startingTextElement, lengthInTextElements) end

---@class System.Globalization.TaiwanCalendar : System.Globalization.Calendar
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.TaiwanCalendar = {}
---@alias CS.System.Globalization.TaiwanCalendar System.Globalization.TaiwanCalendar
CS.System.Globalization.TaiwanCalendar = System.Globalization.TaiwanCalendar

---@return System.Globalization.TaiwanCalendar
function System.Globalization.TaiwanCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.TaiwanCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.TaiwanCalendar:AddYears(time, years) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.TaiwanCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.TaiwanCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.TaiwanCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.TaiwanCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.TaiwanCalendar:GetDayOfYear(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.TaiwanCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function System.Globalization.TaiwanCalendar:GetWeekOfYear(time, rule, firstDayOfWeek) end
---@param time System.DateTime
---@return number
function System.Globalization.TaiwanCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.TaiwanCalendar:GetMonth(time) end
---@param time System.DateTime
---@return number
function System.Globalization.TaiwanCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.TaiwanCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.TaiwanCalendar:IsLeapYear(year, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.TaiwanCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.TaiwanCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.TaiwanCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.TaiwanCalendar:ToFourDigitYear(year) end

---@class System.Globalization.TaiwanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field Eras System.Int32[]
System.Globalization.TaiwanLunisolarCalendar = {}
---@alias CS.System.Globalization.TaiwanLunisolarCalendar System.Globalization.TaiwanLunisolarCalendar
CS.System.Globalization.TaiwanLunisolarCalendar = System.Globalization.TaiwanLunisolarCalendar

---@return System.Globalization.TaiwanLunisolarCalendar
function System.Globalization.TaiwanLunisolarCalendar.New() end
---@param time System.DateTime
---@return number
function System.Globalization.TaiwanLunisolarCalendar:GetEra(time) end

---@class System.Globalization.TextElementEnumerator : System.Object
---@field Current System.Object
---@field ElementIndex number
System.Globalization.TextElementEnumerator = {}
---@alias CS.System.Globalization.TextElementEnumerator System.Globalization.TextElementEnumerator
CS.System.Globalization.TextElementEnumerator = System.Globalization.TextElementEnumerator

---@return boolean
function System.Globalization.TextElementEnumerator:MoveNext() end
---@return string
function System.Globalization.TextElementEnumerator:GetTextElement() end
function System.Globalization.TextElementEnumerator:Reset() end

---@class System.Globalization.TextInfo : System.Object
---@field ANSICodePage number
---@field OEMCodePage number
---@field MacCodePage number
---@field EBCDICCodePage number
---@field LCID number
---@field CultureName string
---@field IsReadOnly boolean
---@field ListSeparator string
---@field IsRightToLeft boolean
System.Globalization.TextInfo = {}
---@alias CS.System.Globalization.TextInfo System.Globalization.TextInfo
CS.System.Globalization.TextInfo = System.Globalization.TextInfo

---@param textInfo System.Globalization.TextInfo
---@return System.Globalization.TextInfo
function System.Globalization.TextInfo.ReadOnly(textInfo) end
---@return System.Object
function System.Globalization.TextInfo:Clone() end
---@overload fun(self: System.Globalization.TextInfo, c: System.Char) : System.Char
---@param str string
---@return string
function System.Globalization.TextInfo:ToLower(str) end
---@overload fun(self: System.Globalization.TextInfo, c: System.Char) : System.Char
---@param str string
---@return string
function System.Globalization.TextInfo:ToUpper(str) end
---@param obj System.Object
---@return boolean
function System.Globalization.TextInfo:Equals(obj) end
---@return number
function System.Globalization.TextInfo:GetHashCode() end
---@return string
function System.Globalization.TextInfo:ToString() end
---@param str string
---@return string
function System.Globalization.TextInfo:ToTitleCase(str) end

---@class System.Globalization.ThaiBuddhistCalendar : System.Globalization.Calendar
---@field ThaiBuddhistEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.ThaiBuddhistCalendar = {}
---@alias CS.System.Globalization.ThaiBuddhistCalendar System.Globalization.ThaiBuddhistCalendar
CS.System.Globalization.ThaiBuddhistCalendar = System.Globalization.ThaiBuddhistCalendar

---@return System.Globalization.ThaiBuddhistCalendar
function System.Globalization.ThaiBuddhistCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.ThaiBuddhistCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.ThaiBuddhistCalendar:AddYears(time, years) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.ThaiBuddhistCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetDayOfYear(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetWeekOfYear(time, rule, firstDayOfWeek) end
---@param time System.DateTime
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetMonth(time) end
---@param time System.DateTime
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.ThaiBuddhistCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.ThaiBuddhistCalendar:IsLeapYear(year, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.ThaiBuddhistCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.ThaiBuddhistCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.ThaiBuddhistCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.ThaiBuddhistCalendar:ToFourDigitYear(year) end

---@class System.Globalization.UmAlQuraCalendar : System.Globalization.Calendar
---@field UmAlQuraEra number
---@field MinSupportedDateTime System.DateTime
---@field MaxSupportedDateTime System.DateTime
---@field AlgorithmType System.Globalization.CalendarAlgorithmType
---@field Eras System.Int32[]
---@field TwoDigitYearMax number
System.Globalization.UmAlQuraCalendar = {}
---@alias CS.System.Globalization.UmAlQuraCalendar System.Globalization.UmAlQuraCalendar
CS.System.Globalization.UmAlQuraCalendar = System.Globalization.UmAlQuraCalendar

---@return System.Globalization.UmAlQuraCalendar
function System.Globalization.UmAlQuraCalendar.New() end
---@param time System.DateTime
---@param months number
---@return System.DateTime
function System.Globalization.UmAlQuraCalendar:AddMonths(time, months) end
---@param time System.DateTime
---@param years number
---@return System.DateTime
function System.Globalization.UmAlQuraCalendar:AddYears(time, years) end
---@param time System.DateTime
---@return number
function System.Globalization.UmAlQuraCalendar:GetDayOfMonth(time) end
---@param time System.DateTime
---@return System.DayOfWeek
function System.Globalization.UmAlQuraCalendar:GetDayOfWeek(time) end
---@param time System.DateTime
---@return number
function System.Globalization.UmAlQuraCalendar:GetDayOfYear(time) end
---@param year number
---@param month number
---@param era number
---@return number
function System.Globalization.UmAlQuraCalendar:GetDaysInMonth(year, month, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.UmAlQuraCalendar:GetDaysInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.UmAlQuraCalendar:GetEra(time) end
---@param time System.DateTime
---@return number
function System.Globalization.UmAlQuraCalendar:GetMonth(time) end
---@param year number
---@param era number
---@return number
function System.Globalization.UmAlQuraCalendar:GetMonthsInYear(year, era) end
---@param time System.DateTime
---@return number
function System.Globalization.UmAlQuraCalendar:GetYear(time) end
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function System.Globalization.UmAlQuraCalendar:IsLeapDay(year, month, day, era) end
---@param year number
---@param era number
---@return number
function System.Globalization.UmAlQuraCalendar:GetLeapMonth(year, era) end
---@param year number
---@param month number
---@param era number
---@return boolean
function System.Globalization.UmAlQuraCalendar:IsLeapMonth(year, month, era) end
---@param year number
---@param era number
---@return boolean
function System.Globalization.UmAlQuraCalendar:IsLeapYear(year, era) end
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function System.Globalization.UmAlQuraCalendar:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end
---@param year number
---@return number
function System.Globalization.UmAlQuraCalendar:ToFourDigitYear(year) end

---@class System.Globalization.UmAlQuraCalendar.DateMapping : System.ValueType
System.Globalization.UmAlQuraCalendar.DateMapping = {}
---@alias CS.System.Globalization.UmAlQuraCalendar.DateMapping System.Globalization.UmAlQuraCalendar.DateMapping
CS.System.Globalization.UmAlQuraCalendar.DateMapping = System.Globalization.UmAlQuraCalendar.DateMapping


---@class System.Globalization.SortKey : System.Object
---@field OriginalString string
---@field KeyData System.Byte[]
System.Globalization.SortKey = {}
---@alias CS.System.Globalization.SortKey System.Globalization.SortKey
CS.System.Globalization.SortKey = System.Globalization.SortKey

---@param sortkey1 System.Globalization.SortKey
---@param sortkey2 System.Globalization.SortKey
---@return number
function System.Globalization.SortKey.Compare(sortkey1, sortkey2) end
---@param value System.Object
---@return boolean
function System.Globalization.SortKey:Equals(value) end
---@return number
function System.Globalization.SortKey:GetHashCode() end
---@return string
function System.Globalization.SortKey:ToString() end

---@class System.Globalization.ISimpleCollator
System.Globalization.ISimpleCollator = {}
---@alias CS.System.Globalization.ISimpleCollator System.Globalization.ISimpleCollator
CS.System.Globalization.ISimpleCollator = System.Globalization.ISimpleCollator

---@param source string
---@param options System.Globalization.CompareOptions
---@return System.Globalization.SortKey
function System.Globalization.ISimpleCollator:GetSortKey(source, options) end
---@overload fun(self: System.Globalization.ISimpleCollator, s1: string, s2: string) : number
---@param s1 string
---@param idx1 number
---@param len1 number
---@param s2 string
---@param idx2 number
---@param len2 number
---@param options System.Globalization.CompareOptions
---@return number
function System.Globalization.ISimpleCollator:Compare(s1, idx1, len1, s2, idx2, len2, options) end
---@param src string
---@param target string
---@param opt System.Globalization.CompareOptions
---@return boolean
function System.Globalization.ISimpleCollator:IsPrefix(src, target, opt) end
---@param src string
---@param target string
---@param opt System.Globalization.CompareOptions
---@return boolean
function System.Globalization.ISimpleCollator:IsSuffix(src, target, opt) end
---@overload fun(self: System.Globalization.ISimpleCollator, s: string, target: string, start: number, length: number, opt: System.Globalization.CompareOptions) : number
---@param s string
---@param target System.Char
---@param start number
---@param length number
---@param opt System.Globalization.CompareOptions
---@return number
function System.Globalization.ISimpleCollator:IndexOf(s, target, start, length, opt) end
---@overload fun(self: System.Globalization.ISimpleCollator, s: string, target: string, opt: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.ISimpleCollator, s: string, target: string, start: number, length: number, opt: System.Globalization.CompareOptions) : number
---@overload fun(self: System.Globalization.ISimpleCollator, s: string, target: System.Char, opt: System.Globalization.CompareOptions) : number
---@param s string
---@param target System.Char
---@param start number
---@param length number
---@param opt System.Globalization.CompareOptions
---@return number
function System.Globalization.ISimpleCollator:LastIndexOf(s, target, start, length, opt) end

---@class System.Globalization.CultureData : System.Object
---@field Invariant System.Globalization.CultureData
System.Globalization.CultureData = {}
---@alias CS.System.Globalization.CultureData System.Globalization.CultureData
CS.System.Globalization.CultureData = System.Globalization.CultureData

---@overload fun(cultureName: string, useUserOverride: boolean) : System.Globalization.CultureData
---@param cultureName string
---@param useUserOverride boolean
---@param datetimeIndex number
---@param calendarId number
---@param numberIndex number
---@param iso2lang string
---@param ansiCodePage number
---@param oemCodePage number
---@param macCodePage number
---@param ebcdicCodePage number
---@param rightToLeft boolean
---@param listSeparator string
---@return System.Globalization.CultureData
function System.Globalization.CultureData.GetCultureData(cultureName, useUserOverride, datetimeIndex, calendarId, numberIndex, iso2lang, ansiCodePage, oemCodePage, macCodePage, ebcdicCodePage, rightToLeft, listSeparator) end
---@param calendarId number
---@return System.Globalization.CalendarData
function System.Globalization.CultureData:GetCalendar(calendarId) end

---@class System.Globalization.CultureData.NumberFormatEntryManaged : System.ValueType
System.Globalization.CultureData.NumberFormatEntryManaged = {}
---@alias CS.System.Globalization.CultureData.NumberFormatEntryManaged System.Globalization.CultureData.NumberFormatEntryManaged
CS.System.Globalization.CultureData.NumberFormatEntryManaged = System.Globalization.CultureData.NumberFormatEntryManaged


---@class System.Globalization.CodePageDataItem : System.Object
---@field WebName string
---@field UIFamilyCodePage number
---@field HeaderName string
---@field BodyName string
---@field Flags number
System.Globalization.CodePageDataItem = {}
---@alias CS.System.Globalization.CodePageDataItem System.Globalization.CodePageDataItem
CS.System.Globalization.CodePageDataItem = System.Globalization.CodePageDataItem


---@class System.Globalization.EncodingTable : System.Object
System.Globalization.EncodingTable = {}
---@alias CS.System.Globalization.EncodingTable System.Globalization.EncodingTable
CS.System.Globalization.EncodingTable = System.Globalization.EncodingTable


---@class System.Globalization.InternalEncodingDataItem : System.ValueType
System.Globalization.InternalEncodingDataItem = {}
---@alias CS.System.Globalization.InternalEncodingDataItem System.Globalization.InternalEncodingDataItem
CS.System.Globalization.InternalEncodingDataItem = System.Globalization.InternalEncodingDataItem


---@class System.Globalization.InternalCodePageDataItem : System.ValueType
System.Globalization.InternalCodePageDataItem = {}
---@alias CS.System.Globalization.InternalCodePageDataItem System.Globalization.InternalCodePageDataItem
CS.System.Globalization.InternalCodePageDataItem = System.Globalization.InternalCodePageDataItem


---@class System.Globalization.TextInfoToUpperData : System.Object
---@field range_00e0_0586 System.Char[]
---@field range_1e01_1ff3 System.Char[]
---@field range_2170_2184 System.Char[]
---@field range_24d0_24e9 System.Char[]
---@field range_2c30_2ce3 System.Char[]
---@field range_2d00_2d25 System.Char[]
---@field range_a641_a697 System.Char[]
---@field range_a723_a78c System.Char[]
System.Globalization.TextInfoToUpperData = {}
---@alias CS.System.Globalization.TextInfoToUpperData System.Globalization.TextInfoToUpperData
CS.System.Globalization.TextInfoToUpperData = System.Globalization.TextInfoToUpperData


---@class System.Globalization.TextInfoToLowerData : System.Object
---@field range_00c0_0556 System.Char[]
---@field range_10a0_10c5 System.Char[]
---@field range_1e00_1ffc System.Char[]
---@field range_2160_216f System.Char[]
---@field range_24b6_24cf System.Char[]
---@field range_2c00_2c2e System.Char[]
---@field range_2c60_2ce2 System.Char[]
---@field range_a640_a696 System.Char[]
---@field range_a722_a78b System.Char[]
System.Globalization.TextInfoToLowerData = {}
---@alias CS.System.Globalization.TextInfoToLowerData System.Globalization.TextInfoToLowerData
CS.System.Globalization.TextInfoToLowerData = System.Globalization.TextInfoToLowerData


---@class System.Globalization.CultureInfo : System.Object
---@field InvariantCulture System.Globalization.CultureInfo
---@field CurrentCulture System.Globalization.CultureInfo
---@field CurrentUICulture System.Globalization.CultureInfo
---@field InstalledUICulture System.Globalization.CultureInfo
---@field DefaultThreadCurrentCulture System.Globalization.CultureInfo
---@field DefaultThreadCurrentUICulture System.Globalization.CultureInfo
---@field CultureTypes System.Globalization.CultureTypes
---@field IetfLanguageTag string
---@field KeyboardLayoutId number
---@field LCID number
---@field Name string
---@field NativeName string
---@field Calendar System.Globalization.Calendar
---@field OptionalCalendars System.Globalization.Calendar[]
---@field Parent System.Globalization.CultureInfo
---@field TextInfo System.Globalization.TextInfo
---@field ThreeLetterISOLanguageName string
---@field ThreeLetterWindowsLanguageName string
---@field TwoLetterISOLanguageName string
---@field UseUserOverride boolean
---@field CompareInfo System.Globalization.CompareInfo
---@field IsNeutralCulture boolean
---@field NumberFormat System.Globalization.NumberFormatInfo
---@field DateTimeFormat System.Globalization.DateTimeFormatInfo
---@field DisplayName string
---@field EnglishName string
---@field IsReadOnly boolean
System.Globalization.CultureInfo = {}
---@alias CS.System.Globalization.CultureInfo System.Globalization.CultureInfo
CS.System.Globalization.CultureInfo = System.Globalization.CultureInfo

---@overload fun(culture: number) : System.Globalization.CultureInfo
---@overload fun(culture: number, useUserOverride: boolean) : System.Globalization.CultureInfo
---@overload fun(name: string) : System.Globalization.CultureInfo
---@param name string
---@param useUserOverride boolean
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.New(name, useUserOverride) end
---@param types System.Globalization.CultureTypes
---@return System.Globalization.CultureInfo[]
function System.Globalization.CultureInfo.GetCultures(types) end
---@param ci System.Globalization.CultureInfo
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.ReadOnly(ci) end
---@overload fun(culture: number) : System.Globalization.CultureInfo
---@overload fun(name: string) : System.Globalization.CultureInfo
---@param name string
---@param altName string
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.GetCultureInfo(name, altName) end
---@param name string
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.GetCultureInfoByIetfLanguageTag(name) end
---@param name string
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo.CreateSpecificCulture(name) end
---@return System.Globalization.CultureInfo
function System.Globalization.CultureInfo:GetConsoleFallbackUICulture() end
function System.Globalization.CultureInfo:ClearCachedData() end
---@return System.Object
function System.Globalization.CultureInfo:Clone() end
---@param value System.Object
---@return boolean
function System.Globalization.CultureInfo:Equals(value) end
---@return number
function System.Globalization.CultureInfo:GetHashCode() end
---@return string
function System.Globalization.CultureInfo:ToString() end
---@param formatType System.Type
---@return System.Object
function System.Globalization.CultureInfo:GetFormat(formatType) end

---@class System.Globalization.CultureInfo.Data : System.ValueType
---@field ansi number
---@field ebcdic number
---@field mac number
---@field oem number
---@field right_to_left boolean
---@field list_sep number
System.Globalization.CultureInfo.Data = {}
---@alias CS.System.Globalization.CultureInfo.Data System.Globalization.CultureInfo.Data
CS.System.Globalization.CultureInfo.Data = System.Globalization.CultureInfo.Data


---@class System.Globalization.CultureInfo.OnCultureInfoChangedDelegate : System.MulticastDelegate
System.Globalization.CultureInfo.OnCultureInfoChangedDelegate = {}
---@alias CS.System.Globalization.CultureInfo.OnCultureInfoChangedDelegate System.Globalization.CultureInfo.OnCultureInfoChangedDelegate
CS.System.Globalization.CultureInfo.OnCultureInfoChangedDelegate = System.Globalization.CultureInfo.OnCultureInfoChangedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.Globalization.CultureInfo.OnCultureInfoChangedDelegate
function System.Globalization.CultureInfo.OnCultureInfoChangedDelegate.New(object, method) end
---@param language string
function System.Globalization.CultureInfo.OnCultureInfoChangedDelegate:Invoke(language) end
---@param language string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Globalization.CultureInfo.OnCultureInfoChangedDelegate:BeginInvoke(language, callback, object) end
---@param result System.IAsyncResult
function System.Globalization.CultureInfo.OnCultureInfoChangedDelegate:EndInvoke(result) end

---@class System.Globalization.IdnMapping : System.Object
---@field AllowUnassigned boolean
---@field UseStd3AsciiRules boolean
System.Globalization.IdnMapping = {}
---@alias CS.System.Globalization.IdnMapping System.Globalization.IdnMapping
CS.System.Globalization.IdnMapping = System.Globalization.IdnMapping

---@return System.Globalization.IdnMapping
function System.Globalization.IdnMapping.New() end
---@param obj System.Object
---@return boolean
function System.Globalization.IdnMapping:Equals(obj) end
---@return number
function System.Globalization.IdnMapping:GetHashCode() end
---@overload fun(self: System.Globalization.IdnMapping, unicode: string) : string
---@overload fun(self: System.Globalization.IdnMapping, unicode: string, index: number) : string
---@param unicode string
---@param index number
---@param count number
---@return string
function System.Globalization.IdnMapping:GetAscii(unicode, index, count) end
---@overload fun(self: System.Globalization.IdnMapping, ascii: string) : string
---@overload fun(self: System.Globalization.IdnMapping, ascii: string, index: number) : string
---@param ascii string
---@param index number
---@param count number
---@return string
function System.Globalization.IdnMapping:GetUnicode(ascii, index, count) end

---@class System.Globalization.Bootstring : System.Object
System.Globalization.Bootstring = {}
---@alias CS.System.Globalization.Bootstring System.Globalization.Bootstring
CS.System.Globalization.Bootstring = System.Globalization.Bootstring

---@param delimiter System.Char
---@param baseNum number
---@param tmin number
---@param tmax number
---@param skew number
---@param damp number
---@param initialBias number
---@param initialN number
---@return System.Globalization.Bootstring
function System.Globalization.Bootstring.New(delimiter, baseNum, tmin, tmax, skew, damp, initialBias, initialN) end
---@param s string
---@param offset number
---@return string
function System.Globalization.Bootstring:Encode(s, offset) end
---@param s string
---@param offset number
---@return string
function System.Globalization.Bootstring:Decode(s, offset) end

---@class System.Globalization.Punycode : System.Globalization.Bootstring
System.Globalization.Punycode = {}
---@alias CS.System.Globalization.Punycode System.Globalization.Punycode
CS.System.Globalization.Punycode = System.Globalization.Punycode

---@return System.Globalization.Punycode
function System.Globalization.Punycode.New() end

---@class System.Globalization.RegionInfo : System.Object
---@field CurrentRegion System.Globalization.RegionInfo
---@field CurrencyEnglishName string
---@field CurrencySymbol string
---@field DisplayName string
---@field EnglishName string
---@field GeoId number
---@field IsMetric boolean
---@field ISOCurrencySymbol string
---@field NativeName string
---@field CurrencyNativeName string
---@field Name string
---@field ThreeLetterISORegionName string
---@field ThreeLetterWindowsRegionName string
---@field TwoLetterISORegionName string
System.Globalization.RegionInfo = {}
---@alias CS.System.Globalization.RegionInfo System.Globalization.RegionInfo
CS.System.Globalization.RegionInfo = System.Globalization.RegionInfo

---@overload fun(culture: number) : System.Globalization.RegionInfo
---@param name string
---@return System.Globalization.RegionInfo
function System.Globalization.RegionInfo.New(name) end
---@param value System.Object
---@return boolean
function System.Globalization.RegionInfo:Equals(value) end
---@return number
function System.Globalization.RegionInfo:GetHashCode() end
---@return string
function System.Globalization.RegionInfo:ToString() end

---@class System.Diagnostics.ConditionalAttribute : System.Attribute
---@field ConditionString string
System.Diagnostics.ConditionalAttribute = {}
---@alias CS.System.Diagnostics.ConditionalAttribute System.Diagnostics.ConditionalAttribute
CS.System.Diagnostics.ConditionalAttribute = System.Diagnostics.ConditionalAttribute

---@param conditionString string
---@return System.Diagnostics.ConditionalAttribute
function System.Diagnostics.ConditionalAttribute.New(conditionString) end

---@class System.Diagnostics.StackTraceHiddenAttribute : System.Attribute
System.Diagnostics.StackTraceHiddenAttribute = {}
---@alias CS.System.Diagnostics.StackTraceHiddenAttribute System.Diagnostics.StackTraceHiddenAttribute
CS.System.Diagnostics.StackTraceHiddenAttribute = System.Diagnostics.StackTraceHiddenAttribute

---@return System.Diagnostics.StackTraceHiddenAttribute
function System.Diagnostics.StackTraceHiddenAttribute.New() end

---@class System.Diagnostics.Assert : System.Object
System.Diagnostics.Assert = {}
---@alias CS.System.Diagnostics.Assert System.Diagnostics.Assert
CS.System.Diagnostics.Assert = System.Diagnostics.Assert


---@class System.Diagnostics.AssertFilter : System.Object
System.Diagnostics.AssertFilter = {}
---@alias CS.System.Diagnostics.AssertFilter System.Diagnostics.AssertFilter
CS.System.Diagnostics.AssertFilter = System.Diagnostics.AssertFilter

---@param condition string
---@param message string
---@param location System.Diagnostics.StackTrace
---@param stackTraceFormat System.Diagnostics.StackTrace.TraceFormat
---@param windowTitle string
---@return System.Diagnostics.AssertFilters
function System.Diagnostics.AssertFilter:AssertFailure(condition, message, location, stackTraceFormat, windowTitle) end

---@class System.Diagnostics.DefaultFilter : System.Diagnostics.AssertFilter
System.Diagnostics.DefaultFilter = {}
---@alias CS.System.Diagnostics.DefaultFilter System.Diagnostics.DefaultFilter
CS.System.Diagnostics.DefaultFilter = System.Diagnostics.DefaultFilter

---@param condition string
---@param message string
---@param location System.Diagnostics.StackTrace
---@param stackTraceFormat System.Diagnostics.StackTrace.TraceFormat
---@param windowTitle string
---@return System.Diagnostics.AssertFilters
function System.Diagnostics.DefaultFilter:AssertFailure(condition, message, location, stackTraceFormat, windowTitle) end

---@class System.Diagnostics.AssertFilters
---@field FailDebug System.Diagnostics.AssertFilters
---@field FailIgnore System.Diagnostics.AssertFilters
---@field FailTerminate System.Diagnostics.AssertFilters
---@field FailContinueFilter System.Diagnostics.AssertFilters
System.Diagnostics.AssertFilters = {}
---@alias CS.System.Diagnostics.AssertFilters System.Diagnostics.AssertFilters
CS.System.Diagnostics.AssertFilters = System.Diagnostics.AssertFilters


---@class System.Diagnostics.DebuggerStepThroughAttribute : System.Attribute
System.Diagnostics.DebuggerStepThroughAttribute = {}
---@alias CS.System.Diagnostics.DebuggerStepThroughAttribute System.Diagnostics.DebuggerStepThroughAttribute
CS.System.Diagnostics.DebuggerStepThroughAttribute = System.Diagnostics.DebuggerStepThroughAttribute

---@return System.Diagnostics.DebuggerStepThroughAttribute
function System.Diagnostics.DebuggerStepThroughAttribute.New() end

---@class System.Diagnostics.DebuggerStepperBoundaryAttribute : System.Attribute
System.Diagnostics.DebuggerStepperBoundaryAttribute = {}
---@alias CS.System.Diagnostics.DebuggerStepperBoundaryAttribute System.Diagnostics.DebuggerStepperBoundaryAttribute
CS.System.Diagnostics.DebuggerStepperBoundaryAttribute = System.Diagnostics.DebuggerStepperBoundaryAttribute

---@return System.Diagnostics.DebuggerStepperBoundaryAttribute
function System.Diagnostics.DebuggerStepperBoundaryAttribute.New() end

---@class System.Diagnostics.DebuggerHiddenAttribute : System.Attribute
System.Diagnostics.DebuggerHiddenAttribute = {}
---@alias CS.System.Diagnostics.DebuggerHiddenAttribute System.Diagnostics.DebuggerHiddenAttribute
CS.System.Diagnostics.DebuggerHiddenAttribute = System.Diagnostics.DebuggerHiddenAttribute

---@return System.Diagnostics.DebuggerHiddenAttribute
function System.Diagnostics.DebuggerHiddenAttribute.New() end

---@class System.Diagnostics.DebuggerNonUserCodeAttribute : System.Attribute
System.Diagnostics.DebuggerNonUserCodeAttribute = {}
---@alias CS.System.Diagnostics.DebuggerNonUserCodeAttribute System.Diagnostics.DebuggerNonUserCodeAttribute
CS.System.Diagnostics.DebuggerNonUserCodeAttribute = System.Diagnostics.DebuggerNonUserCodeAttribute

---@return System.Diagnostics.DebuggerNonUserCodeAttribute
function System.Diagnostics.DebuggerNonUserCodeAttribute.New() end

---@class System.Diagnostics.DebuggableAttribute : System.Attribute
---@field IsJITTrackingEnabled boolean
---@field IsJITOptimizerDisabled boolean
---@field DebuggingFlags System.Diagnostics.DebuggableAttribute.DebuggingModes
System.Diagnostics.DebuggableAttribute = {}
---@alias CS.System.Diagnostics.DebuggableAttribute System.Diagnostics.DebuggableAttribute
CS.System.Diagnostics.DebuggableAttribute = System.Diagnostics.DebuggableAttribute

---@overload fun(isJITTrackingEnabled: boolean, isJITOptimizerDisabled: boolean) : System.Diagnostics.DebuggableAttribute
---@param modes System.Diagnostics.DebuggableAttribute.DebuggingModes
---@return System.Diagnostics.DebuggableAttribute
function System.Diagnostics.DebuggableAttribute.New(modes) end

---@class System.Diagnostics.DebuggableAttribute.DebuggingModes
---@field None System.Diagnostics.DebuggableAttribute.DebuggingModes
---@field Default System.Diagnostics.DebuggableAttribute.DebuggingModes
---@field DisableOptimizations System.Diagnostics.DebuggableAttribute.DebuggingModes
---@field IgnoreSymbolStoreSequencePoints System.Diagnostics.DebuggableAttribute.DebuggingModes
---@field EnableEditAndContinue System.Diagnostics.DebuggableAttribute.DebuggingModes
System.Diagnostics.DebuggableAttribute.DebuggingModes = {}
---@alias CS.System.Diagnostics.DebuggableAttribute.DebuggingModes System.Diagnostics.DebuggableAttribute.DebuggingModes
CS.System.Diagnostics.DebuggableAttribute.DebuggingModes = System.Diagnostics.DebuggableAttribute.DebuggingModes


---@class System.Diagnostics.DebuggerBrowsableState
---@field Never System.Diagnostics.DebuggerBrowsableState
---@field Collapsed System.Diagnostics.DebuggerBrowsableState
---@field RootHidden System.Diagnostics.DebuggerBrowsableState
System.Diagnostics.DebuggerBrowsableState = {}
---@alias CS.System.Diagnostics.DebuggerBrowsableState System.Diagnostics.DebuggerBrowsableState
CS.System.Diagnostics.DebuggerBrowsableState = System.Diagnostics.DebuggerBrowsableState


---@class System.Diagnostics.DebuggerBrowsableAttribute : System.Attribute
---@field State System.Diagnostics.DebuggerBrowsableState
System.Diagnostics.DebuggerBrowsableAttribute = {}
---@alias CS.System.Diagnostics.DebuggerBrowsableAttribute System.Diagnostics.DebuggerBrowsableAttribute
CS.System.Diagnostics.DebuggerBrowsableAttribute = System.Diagnostics.DebuggerBrowsableAttribute

---@param state System.Diagnostics.DebuggerBrowsableState
---@return System.Diagnostics.DebuggerBrowsableAttribute
function System.Diagnostics.DebuggerBrowsableAttribute.New(state) end

---@class System.Diagnostics.DebuggerTypeProxyAttribute : System.Attribute
---@field ProxyTypeName string
---@field Target System.Type
---@field TargetTypeName string
System.Diagnostics.DebuggerTypeProxyAttribute = {}
---@alias CS.System.Diagnostics.DebuggerTypeProxyAttribute System.Diagnostics.DebuggerTypeProxyAttribute
CS.System.Diagnostics.DebuggerTypeProxyAttribute = System.Diagnostics.DebuggerTypeProxyAttribute

---@overload fun(type: System.Type) : System.Diagnostics.DebuggerTypeProxyAttribute
---@param typeName string
---@return System.Diagnostics.DebuggerTypeProxyAttribute
function System.Diagnostics.DebuggerTypeProxyAttribute.New(typeName) end

---@class System.Diagnostics.DebuggerDisplayAttribute : System.Attribute
---@field Value string
---@field Name string
---@field Type string
---@field Target System.Type
---@field TargetTypeName string
System.Diagnostics.DebuggerDisplayAttribute = {}
---@alias CS.System.Diagnostics.DebuggerDisplayAttribute System.Diagnostics.DebuggerDisplayAttribute
CS.System.Diagnostics.DebuggerDisplayAttribute = System.Diagnostics.DebuggerDisplayAttribute

---@param value string
---@return System.Diagnostics.DebuggerDisplayAttribute
function System.Diagnostics.DebuggerDisplayAttribute.New(value) end

---@class System.Diagnostics.DebuggerVisualizerAttribute : System.Attribute
---@field VisualizerObjectSourceTypeName string
---@field VisualizerTypeName string
---@field Description string
---@field Target System.Type
---@field TargetTypeName string
System.Diagnostics.DebuggerVisualizerAttribute = {}
---@alias CS.System.Diagnostics.DebuggerVisualizerAttribute System.Diagnostics.DebuggerVisualizerAttribute
CS.System.Diagnostics.DebuggerVisualizerAttribute = System.Diagnostics.DebuggerVisualizerAttribute

---@overload fun(visualizerTypeName: string) : System.Diagnostics.DebuggerVisualizerAttribute
---@overload fun(visualizerTypeName: string, visualizerObjectSourceTypeName: string) : System.Diagnostics.DebuggerVisualizerAttribute
---@overload fun(visualizerTypeName: string, visualizerObjectSource: System.Type) : System.Diagnostics.DebuggerVisualizerAttribute
---@overload fun(visualizer: System.Type) : System.Diagnostics.DebuggerVisualizerAttribute
---@overload fun(visualizer: System.Type, visualizerObjectSource: System.Type) : System.Diagnostics.DebuggerVisualizerAttribute
---@param visualizer System.Type
---@param visualizerObjectSourceTypeName string
---@return System.Diagnostics.DebuggerVisualizerAttribute
function System.Diagnostics.DebuggerVisualizerAttribute.New(visualizer, visualizerObjectSourceTypeName) end

---@class System.Diagnostics.DebugPrivate : System.Object
System.Diagnostics.DebugPrivate = {}
---@alias CS.System.Diagnostics.DebugPrivate System.Diagnostics.DebugPrivate
CS.System.Diagnostics.DebugPrivate = System.Diagnostics.DebugPrivate

---@overload fun(condition: boolean)
---@overload fun(condition: boolean, message: string)
---@overload fun(condition: boolean, message: string, detailMessage: string)
---@param condition boolean
---@param message string
---@param detailMessageFormat string
---@param args System.Object[]
function System.Diagnostics.DebugPrivate.Assert(condition, message, detailMessageFormat, args) end
---@overload fun(message: string)
---@param message string
---@param detailMessage string
function System.Diagnostics.DebugPrivate.Fail(message, detailMessage) end

---@class System.Diagnostics.Debugger : System.Object
---@field DefaultCategory string
---@field IsAttached boolean
System.Diagnostics.Debugger = {}
---@alias CS.System.Diagnostics.Debugger System.Diagnostics.Debugger
CS.System.Diagnostics.Debugger = System.Diagnostics.Debugger

---@return System.Diagnostics.Debugger
function System.Diagnostics.Debugger.New() end
function System.Diagnostics.Debugger.Break() end
---@return boolean
function System.Diagnostics.Debugger.IsLogging() end
---@return boolean
function System.Diagnostics.Debugger.Launch() end
---@param level number
---@param category string
---@param message string
function System.Diagnostics.Debugger.Log(level, category, message) end
function System.Diagnostics.Debugger.NotifyOfCrossThreadDependency() end

---@class System.Diagnostics.StackFrame : System.Object
---@field OFFSET_UNKNOWN number
System.Diagnostics.StackFrame = {}
---@alias CS.System.Diagnostics.StackFrame System.Diagnostics.StackFrame
CS.System.Diagnostics.StackFrame = System.Diagnostics.StackFrame

---@overload fun() : System.Diagnostics.StackFrame
---@overload fun(fNeedFileInfo: boolean) : System.Diagnostics.StackFrame
---@overload fun(skipFrames: number) : System.Diagnostics.StackFrame
---@overload fun(skipFrames: number, fNeedFileInfo: boolean) : System.Diagnostics.StackFrame
---@overload fun(fileName: string, lineNumber: number) : System.Diagnostics.StackFrame
---@param fileName string
---@param lineNumber number
---@param colNumber number
---@return System.Diagnostics.StackFrame
function System.Diagnostics.StackFrame.New(fileName, lineNumber, colNumber) end
---@return number
function System.Diagnostics.StackFrame:GetFileLineNumber() end
---@return number
function System.Diagnostics.StackFrame:GetFileColumnNumber() end
---@return string
function System.Diagnostics.StackFrame:GetFileName() end
---@return number
function System.Diagnostics.StackFrame:GetILOffset() end
---@return System.Reflection.MethodBase
function System.Diagnostics.StackFrame:GetMethod() end
---@return number
function System.Diagnostics.StackFrame:GetNativeOffset() end
---@return string
function System.Diagnostics.StackFrame:ToString() end
---@return boolean
function System.Diagnostics.StackFrame:HasNativeImage() end
---@return boolean
function System.Diagnostics.StackFrame:HasMethod() end
---@return boolean
function System.Diagnostics.StackFrame:HasILOffset() end
---@return boolean
function System.Diagnostics.StackFrame:HasSource() end
---@return System.IntPtr
function System.Diagnostics.StackFrame:GetNativeIP() end
---@return System.IntPtr
function System.Diagnostics.StackFrame:GetNativeImageBase() end

---@class System.Diagnostics.StackTrace : System.Object
---@field METHODS_TO_SKIP number
---@field FrameCount number
System.Diagnostics.StackTrace = {}
---@alias CS.System.Diagnostics.StackTrace System.Diagnostics.StackTrace
CS.System.Diagnostics.StackTrace = System.Diagnostics.StackTrace

---@overload fun() : System.Diagnostics.StackTrace
---@overload fun(fNeedFileInfo: boolean) : System.Diagnostics.StackTrace
---@overload fun(skipFrames: number) : System.Diagnostics.StackTrace
---@overload fun(skipFrames: number, fNeedFileInfo: boolean) : System.Diagnostics.StackTrace
---@overload fun(e: System.Exception) : System.Diagnostics.StackTrace
---@overload fun(e: System.Exception, fNeedFileInfo: boolean) : System.Diagnostics.StackTrace
---@overload fun(e: System.Exception, skipFrames: number) : System.Diagnostics.StackTrace
---@overload fun(e: System.Exception, skipFrames: number, fNeedFileInfo: boolean) : System.Diagnostics.StackTrace
---@overload fun(frame: System.Diagnostics.StackFrame) : System.Diagnostics.StackTrace
---@param targetThread System.Threading.Thread
---@param needFileInfo boolean
---@return System.Diagnostics.StackTrace
function System.Diagnostics.StackTrace.New(targetThread, needFileInfo) end
---@param index number
---@return System.Diagnostics.StackFrame
function System.Diagnostics.StackTrace:GetFrame(index) end
---@return System.Diagnostics.StackFrame[]
function System.Diagnostics.StackTrace:GetFrames() end
---@return string
function System.Diagnostics.StackTrace:ToString() end

---@class System.Diagnostics.StackTrace.TraceFormat
---@field Normal System.Diagnostics.StackTrace.TraceFormat
---@field TrailingNewLine System.Diagnostics.StackTrace.TraceFormat
---@field NoResourceLookup System.Diagnostics.StackTrace.TraceFormat
System.Diagnostics.StackTrace.TraceFormat = {}
---@alias CS.System.Diagnostics.StackTrace.TraceFormat System.Diagnostics.StackTrace.TraceFormat
CS.System.Diagnostics.StackTrace.TraceFormat = System.Diagnostics.StackTrace.TraceFormat


---@class System.Diagnostics.Contracts.PureAttribute : System.Attribute
System.Diagnostics.Contracts.PureAttribute = {}
---@alias CS.System.Diagnostics.Contracts.PureAttribute System.Diagnostics.Contracts.PureAttribute
CS.System.Diagnostics.Contracts.PureAttribute = System.Diagnostics.Contracts.PureAttribute

---@return System.Diagnostics.Contracts.PureAttribute
function System.Diagnostics.Contracts.PureAttribute.New() end

---@class System.Diagnostics.Contracts.ContractClassAttribute : System.Attribute
---@field TypeContainingContracts System.Type
System.Diagnostics.Contracts.ContractClassAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractClassAttribute System.Diagnostics.Contracts.ContractClassAttribute
CS.System.Diagnostics.Contracts.ContractClassAttribute = System.Diagnostics.Contracts.ContractClassAttribute

---@param typeContainingContracts System.Type
---@return System.Diagnostics.Contracts.ContractClassAttribute
function System.Diagnostics.Contracts.ContractClassAttribute.New(typeContainingContracts) end

---@class System.Diagnostics.Contracts.ContractClassForAttribute : System.Attribute
---@field TypeContractsAreFor System.Type
System.Diagnostics.Contracts.ContractClassForAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractClassForAttribute System.Diagnostics.Contracts.ContractClassForAttribute
CS.System.Diagnostics.Contracts.ContractClassForAttribute = System.Diagnostics.Contracts.ContractClassForAttribute

---@param typeContractsAreFor System.Type
---@return System.Diagnostics.Contracts.ContractClassForAttribute
function System.Diagnostics.Contracts.ContractClassForAttribute.New(typeContractsAreFor) end

---@class System.Diagnostics.Contracts.ContractInvariantMethodAttribute : System.Attribute
System.Diagnostics.Contracts.ContractInvariantMethodAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractInvariantMethodAttribute System.Diagnostics.Contracts.ContractInvariantMethodAttribute
CS.System.Diagnostics.Contracts.ContractInvariantMethodAttribute = System.Diagnostics.Contracts.ContractInvariantMethodAttribute

---@return System.Diagnostics.Contracts.ContractInvariantMethodAttribute
function System.Diagnostics.Contracts.ContractInvariantMethodAttribute.New() end

---@class System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute : System.Attribute
System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute
CS.System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute = System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute

---@return System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute
function System.Diagnostics.Contracts.ContractReferenceAssemblyAttribute.New() end

---@class System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute : System.Attribute
System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute
CS.System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute = System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute

---@return System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute
function System.Diagnostics.Contracts.ContractRuntimeIgnoredAttribute.New() end

---@class System.Diagnostics.Contracts.ContractVerificationAttribute : System.Attribute
---@field Value boolean
System.Diagnostics.Contracts.ContractVerificationAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractVerificationAttribute System.Diagnostics.Contracts.ContractVerificationAttribute
CS.System.Diagnostics.Contracts.ContractVerificationAttribute = System.Diagnostics.Contracts.ContractVerificationAttribute

---@param value boolean
---@return System.Diagnostics.Contracts.ContractVerificationAttribute
function System.Diagnostics.Contracts.ContractVerificationAttribute.New(value) end

---@class System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute : System.Attribute
---@field Name string
System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute
CS.System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute = System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute

---@param name string
---@return System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute
function System.Diagnostics.Contracts.ContractPublicPropertyNameAttribute.New(name) end

---@class System.Diagnostics.Contracts.ContractArgumentValidatorAttribute : System.Attribute
System.Diagnostics.Contracts.ContractArgumentValidatorAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractArgumentValidatorAttribute System.Diagnostics.Contracts.ContractArgumentValidatorAttribute
CS.System.Diagnostics.Contracts.ContractArgumentValidatorAttribute = System.Diagnostics.Contracts.ContractArgumentValidatorAttribute

---@return System.Diagnostics.Contracts.ContractArgumentValidatorAttribute
function System.Diagnostics.Contracts.ContractArgumentValidatorAttribute.New() end

---@class System.Diagnostics.Contracts.ContractAbbreviatorAttribute : System.Attribute
System.Diagnostics.Contracts.ContractAbbreviatorAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractAbbreviatorAttribute System.Diagnostics.Contracts.ContractAbbreviatorAttribute
CS.System.Diagnostics.Contracts.ContractAbbreviatorAttribute = System.Diagnostics.Contracts.ContractAbbreviatorAttribute

---@return System.Diagnostics.Contracts.ContractAbbreviatorAttribute
function System.Diagnostics.Contracts.ContractAbbreviatorAttribute.New() end

---@class System.Diagnostics.Contracts.ContractOptionAttribute : System.Attribute
---@field Category string
---@field Setting string
---@field Enabled boolean
---@field Value string
System.Diagnostics.Contracts.ContractOptionAttribute = {}
---@alias CS.System.Diagnostics.Contracts.ContractOptionAttribute System.Diagnostics.Contracts.ContractOptionAttribute
CS.System.Diagnostics.Contracts.ContractOptionAttribute = System.Diagnostics.Contracts.ContractOptionAttribute

---@overload fun(category: string, setting: string, enabled: boolean) : System.Diagnostics.Contracts.ContractOptionAttribute
---@param category string
---@param setting string
---@param value string
---@return System.Diagnostics.Contracts.ContractOptionAttribute
function System.Diagnostics.Contracts.ContractOptionAttribute.New(category, setting, value) end

---@class System.Diagnostics.Contracts.Contract : System.Object
System.Diagnostics.Contracts.Contract = {}
---@alias CS.System.Diagnostics.Contracts.Contract System.Diagnostics.Contracts.Contract
CS.System.Diagnostics.Contracts.Contract = System.Diagnostics.Contracts.Contract

---@overload fun(condition: boolean)
---@param condition boolean
---@param userMessage string
function System.Diagnostics.Contracts.Contract.Assume(condition, userMessage) end
---@overload fun(condition: boolean)
---@param condition boolean
---@param userMessage string
function System.Diagnostics.Contracts.Contract.Assert(condition, userMessage) end
---@overload fun(condition: boolean)
---@param condition boolean
---@param userMessage string
function System.Diagnostics.Contracts.Contract.Requires(condition, userMessage) end
---@overload fun(condition: boolean)
---@param condition boolean
---@param userMessage string
function System.Diagnostics.Contracts.Contract.Ensures(condition, userMessage) end
---@overload fun(condition: boolean)
---@param condition boolean
---@param userMessage string
function System.Diagnostics.Contracts.Contract.Invariant(condition, userMessage) end
---@param fromInclusive number
---@param toExclusive number
---@param predicate System.Predicate
---@return boolean
function System.Diagnostics.Contracts.Contract.ForAll(fromInclusive, toExclusive, predicate) end
---@param fromInclusive number
---@param toExclusive number
---@param predicate System.Predicate
---@return boolean
function System.Diagnostics.Contracts.Contract.Exists(fromInclusive, toExclusive, predicate) end
function System.Diagnostics.Contracts.Contract.EndContractBlock() end

---@class System.Diagnostics.Contracts.ContractFailureKind
---@field Precondition System.Diagnostics.Contracts.ContractFailureKind
---@field Postcondition System.Diagnostics.Contracts.ContractFailureKind
---@field PostconditionOnException System.Diagnostics.Contracts.ContractFailureKind
---@field Invariant System.Diagnostics.Contracts.ContractFailureKind
---@field Assert System.Diagnostics.Contracts.ContractFailureKind
---@field Assume System.Diagnostics.Contracts.ContractFailureKind
System.Diagnostics.Contracts.ContractFailureKind = {}
---@alias CS.System.Diagnostics.Contracts.ContractFailureKind System.Diagnostics.Contracts.ContractFailureKind
CS.System.Diagnostics.Contracts.ContractFailureKind = System.Diagnostics.Contracts.ContractFailureKind


---@class System.Diagnostics.Contracts.ContractFailedEventArgs : System.EventArgs
---@field Message string
---@field Condition string
---@field FailureKind System.Diagnostics.Contracts.ContractFailureKind
---@field OriginalException System.Exception
---@field Handled boolean
---@field Unwind boolean
System.Diagnostics.Contracts.ContractFailedEventArgs = {}
---@alias CS.System.Diagnostics.Contracts.ContractFailedEventArgs System.Diagnostics.Contracts.ContractFailedEventArgs
CS.System.Diagnostics.Contracts.ContractFailedEventArgs = System.Diagnostics.Contracts.ContractFailedEventArgs

---@param failureKind System.Diagnostics.Contracts.ContractFailureKind
---@param message string
---@param condition string
---@param originalException System.Exception
---@return System.Diagnostics.Contracts.ContractFailedEventArgs
function System.Diagnostics.Contracts.ContractFailedEventArgs.New(failureKind, message, condition, originalException) end
function System.Diagnostics.Contracts.ContractFailedEventArgs:SetHandled() end
function System.Diagnostics.Contracts.ContractFailedEventArgs:SetUnwind() end

---@class System.Diagnostics.Contracts.ContractException : System.Exception
---@field Kind System.Diagnostics.Contracts.ContractFailureKind
---@field Failure string
---@field UserMessage string
---@field Condition string
System.Diagnostics.Contracts.ContractException = {}
---@alias CS.System.Diagnostics.Contracts.ContractException System.Diagnostics.Contracts.ContractException
CS.System.Diagnostics.Contracts.ContractException = System.Diagnostics.Contracts.ContractException

---@param kind System.Diagnostics.Contracts.ContractFailureKind
---@param failure string
---@param userMessage string
---@param condition string
---@param innerException System.Exception
---@return System.Diagnostics.Contracts.ContractException
function System.Diagnostics.Contracts.ContractException.New(kind, failure, userMessage, condition, innerException) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Diagnostics.Contracts.ContractException:GetObjectData(info, context) end

---@class System.Diagnostics.Contracts.Internal.ContractHelper : System.Object
System.Diagnostics.Contracts.Internal.ContractHelper = {}
---@alias CS.System.Diagnostics.Contracts.Internal.ContractHelper System.Diagnostics.Contracts.Internal.ContractHelper
CS.System.Diagnostics.Contracts.Internal.ContractHelper = System.Diagnostics.Contracts.Internal.ContractHelper

---@param failureKind System.Diagnostics.Contracts.ContractFailureKind
---@param userMessage string
---@param conditionText string
---@param innerException System.Exception
---@return string
function System.Diagnostics.Contracts.Internal.ContractHelper.RaiseContractFailedEvent(failureKind, userMessage, conditionText, innerException) end
---@param kind System.Diagnostics.Contracts.ContractFailureKind
---@param displayMessage string
---@param userMessage string
---@param conditionText string
---@param innerException System.Exception
function System.Diagnostics.Contracts.Internal.ContractHelper.TriggerFailure(kind, displayMessage, userMessage, conditionText, innerException) end

---@class System.Diagnostics.SymbolStore.SymbolToken : System.ValueType
System.Diagnostics.SymbolStore.SymbolToken = {}
---@alias CS.System.Diagnostics.SymbolStore.SymbolToken System.Diagnostics.SymbolStore.SymbolToken
CS.System.Diagnostics.SymbolStore.SymbolToken = System.Diagnostics.SymbolStore.SymbolToken

---@param val number
---@return System.Diagnostics.SymbolStore.SymbolToken
function System.Diagnostics.SymbolStore.SymbolToken.New(val) end
---@return number
function System.Diagnostics.SymbolStore.SymbolToken:GetToken() end
---@return number
function System.Diagnostics.SymbolStore.SymbolToken:GetHashCode() end
---@overload fun(self: System.Diagnostics.SymbolStore.SymbolToken, obj: System.Object) : boolean
---@param obj System.Diagnostics.SymbolStore.SymbolToken
---@return boolean
function System.Diagnostics.SymbolStore.SymbolToken:Equals(obj) end

---@class System.Diagnostics.SymbolStore.ISymbolBinder
System.Diagnostics.SymbolStore.ISymbolBinder = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolBinder System.Diagnostics.SymbolStore.ISymbolBinder
CS.System.Diagnostics.SymbolStore.ISymbolBinder = System.Diagnostics.SymbolStore.ISymbolBinder


---@class System.Diagnostics.SymbolStore.ISymbolBinder1
System.Diagnostics.SymbolStore.ISymbolBinder1 = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolBinder1 System.Diagnostics.SymbolStore.ISymbolBinder1
CS.System.Diagnostics.SymbolStore.ISymbolBinder1 = System.Diagnostics.SymbolStore.ISymbolBinder1

---@param importer System.IntPtr
---@param filename string
---@param searchPath string
---@return System.Diagnostics.SymbolStore.ISymbolReader
function System.Diagnostics.SymbolStore.ISymbolBinder1:GetReader(importer, filename, searchPath) end

---@class System.Diagnostics.SymbolStore.ISymbolDocument
---@field CheckSumAlgorithmId System.Guid
---@field DocumentType System.Guid
---@field HasEmbeddedSource boolean
---@field Language System.Guid
---@field LanguageVendor System.Guid
---@field SourceLength number
---@field URL string
System.Diagnostics.SymbolStore.ISymbolDocument = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolDocument System.Diagnostics.SymbolStore.ISymbolDocument
CS.System.Diagnostics.SymbolStore.ISymbolDocument = System.Diagnostics.SymbolStore.ISymbolDocument

---@param line number
---@return number
function System.Diagnostics.SymbolStore.ISymbolDocument:FindClosestLine(line) end
---@return System.Byte[]
function System.Diagnostics.SymbolStore.ISymbolDocument:GetCheckSum() end
---@param startLine number
---@param startColumn number
---@param endLine number
---@param endColumn number
---@return System.Byte[]
function System.Diagnostics.SymbolStore.ISymbolDocument:GetSourceRange(startLine, startColumn, endLine, endColumn) end

---@class System.Diagnostics.SymbolStore.ISymbolDocumentWriter
System.Diagnostics.SymbolStore.ISymbolDocumentWriter = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolDocumentWriter System.Diagnostics.SymbolStore.ISymbolDocumentWriter
CS.System.Diagnostics.SymbolStore.ISymbolDocumentWriter = System.Diagnostics.SymbolStore.ISymbolDocumentWriter

---@param algorithmId System.Guid
---@param checkSum System.Byte[]
function System.Diagnostics.SymbolStore.ISymbolDocumentWriter:SetCheckSum(algorithmId, checkSum) end
---@param source System.Byte[]
function System.Diagnostics.SymbolStore.ISymbolDocumentWriter:SetSource(source) end

---@class System.Diagnostics.SymbolStore.ISymbolMethod
---@field RootScope System.Diagnostics.SymbolStore.ISymbolScope
---@field SequencePointCount number
---@field Token System.Diagnostics.SymbolStore.SymbolToken
System.Diagnostics.SymbolStore.ISymbolMethod = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolMethod System.Diagnostics.SymbolStore.ISymbolMethod
CS.System.Diagnostics.SymbolStore.ISymbolMethod = System.Diagnostics.SymbolStore.ISymbolMethod

---@return System.Diagnostics.SymbolStore.ISymbolNamespace
function System.Diagnostics.SymbolStore.ISymbolMethod:GetNamespace() end
---@param document System.Diagnostics.SymbolStore.ISymbolDocument
---@param line number
---@param column number
---@return number
function System.Diagnostics.SymbolStore.ISymbolMethod:GetOffset(document, line, column) end
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function System.Diagnostics.SymbolStore.ISymbolMethod:GetParameters() end
---@param document System.Diagnostics.SymbolStore.ISymbolDocument
---@param line number
---@param column number
---@return System.Int32[]
function System.Diagnostics.SymbolStore.ISymbolMethod:GetRanges(document, line, column) end
---@param offset number
---@return System.Diagnostics.SymbolStore.ISymbolScope
function System.Diagnostics.SymbolStore.ISymbolMethod:GetScope(offset) end
---@param offsets System.Int32[]
---@param documents System.Diagnostics.SymbolStore.ISymbolDocument[]
---@param lines System.Int32[]
---@param columns System.Int32[]
---@param endLines System.Int32[]
---@param endColumns System.Int32[]
function System.Diagnostics.SymbolStore.ISymbolMethod:GetSequencePoints(offsets, documents, lines, columns, endLines, endColumns) end
---@param docs System.Diagnostics.SymbolStore.ISymbolDocument[]
---@param lines System.Int32[]
---@param columns System.Int32[]
---@return boolean
function System.Diagnostics.SymbolStore.ISymbolMethod:GetSourceStartEnd(docs, lines, columns) end

---@class System.Diagnostics.SymbolStore.ISymbolNamespace
---@field Name string
System.Diagnostics.SymbolStore.ISymbolNamespace = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolNamespace System.Diagnostics.SymbolStore.ISymbolNamespace
CS.System.Diagnostics.SymbolStore.ISymbolNamespace = System.Diagnostics.SymbolStore.ISymbolNamespace

---@return System.Diagnostics.SymbolStore.ISymbolNamespace[]
function System.Diagnostics.SymbolStore.ISymbolNamespace:GetNamespaces() end
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function System.Diagnostics.SymbolStore.ISymbolNamespace:GetVariables() end

---@class System.Diagnostics.SymbolStore.ISymbolReader
---@field UserEntryPoint System.Diagnostics.SymbolStore.SymbolToken
System.Diagnostics.SymbolStore.ISymbolReader = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolReader System.Diagnostics.SymbolStore.ISymbolReader
CS.System.Diagnostics.SymbolStore.ISymbolReader = System.Diagnostics.SymbolStore.ISymbolReader

---@param url string
---@param language System.Guid
---@param languageVendor System.Guid
---@param documentType System.Guid
---@return System.Diagnostics.SymbolStore.ISymbolDocument
function System.Diagnostics.SymbolStore.ISymbolReader:GetDocument(url, language, languageVendor, documentType) end
---@return System.Diagnostics.SymbolStore.ISymbolDocument[]
function System.Diagnostics.SymbolStore.ISymbolReader:GetDocuments() end
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function System.Diagnostics.SymbolStore.ISymbolReader:GetGlobalVariables() end
---@overload fun(self: System.Diagnostics.SymbolStore.ISymbolReader, method: System.Diagnostics.SymbolStore.SymbolToken) : System.Diagnostics.SymbolStore.ISymbolMethod
---@param method System.Diagnostics.SymbolStore.SymbolToken
---@param version number
---@return System.Diagnostics.SymbolStore.ISymbolMethod
function System.Diagnostics.SymbolStore.ISymbolReader:GetMethod(method, version) end
---@param document System.Diagnostics.SymbolStore.ISymbolDocument
---@param line number
---@param column number
---@return System.Diagnostics.SymbolStore.ISymbolMethod
function System.Diagnostics.SymbolStore.ISymbolReader:GetMethodFromDocumentPosition(document, line, column) end
---@return System.Diagnostics.SymbolStore.ISymbolNamespace[]
function System.Diagnostics.SymbolStore.ISymbolReader:GetNamespaces() end
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@param name string
---@return System.Byte[]
function System.Diagnostics.SymbolStore.ISymbolReader:GetSymAttribute(parent, name) end
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function System.Diagnostics.SymbolStore.ISymbolReader:GetVariables(parent) end

---@class System.Diagnostics.SymbolStore.ISymbolScope
---@field EndOffset number
---@field Method System.Diagnostics.SymbolStore.ISymbolMethod
---@field Parent System.Diagnostics.SymbolStore.ISymbolScope
---@field StartOffset number
System.Diagnostics.SymbolStore.ISymbolScope = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolScope System.Diagnostics.SymbolStore.ISymbolScope
CS.System.Diagnostics.SymbolStore.ISymbolScope = System.Diagnostics.SymbolStore.ISymbolScope

---@return System.Diagnostics.SymbolStore.ISymbolScope[]
function System.Diagnostics.SymbolStore.ISymbolScope:GetChildren() end
---@return System.Diagnostics.SymbolStore.ISymbolVariable[]
function System.Diagnostics.SymbolStore.ISymbolScope:GetLocals() end
---@return System.Diagnostics.SymbolStore.ISymbolNamespace[]
function System.Diagnostics.SymbolStore.ISymbolScope:GetNamespaces() end

---@class System.Diagnostics.SymbolStore.ISymbolVariable
---@field AddressField1 number
---@field AddressField2 number
---@field AddressField3 number
---@field AddressKind System.Diagnostics.SymbolStore.SymAddressKind
---@field Attributes System.Object
---@field EndOffset number
---@field Name string
---@field StartOffset number
System.Diagnostics.SymbolStore.ISymbolVariable = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolVariable System.Diagnostics.SymbolStore.ISymbolVariable
CS.System.Diagnostics.SymbolStore.ISymbolVariable = System.Diagnostics.SymbolStore.ISymbolVariable

---@return System.Byte[]
function System.Diagnostics.SymbolStore.ISymbolVariable:GetSignature() end

---@class System.Diagnostics.SymbolStore.ISymbolWriter
System.Diagnostics.SymbolStore.ISymbolWriter = {}
---@alias CS.System.Diagnostics.SymbolStore.ISymbolWriter System.Diagnostics.SymbolStore.ISymbolWriter
CS.System.Diagnostics.SymbolStore.ISymbolWriter = System.Diagnostics.SymbolStore.ISymbolWriter

function System.Diagnostics.SymbolStore.ISymbolWriter:Close() end
function System.Diagnostics.SymbolStore.ISymbolWriter:CloseMethod() end
function System.Diagnostics.SymbolStore.ISymbolWriter:CloseNamespace() end
---@param endOffset number
function System.Diagnostics.SymbolStore.ISymbolWriter:CloseScope(endOffset) end
---@param url string
---@param language System.Guid
---@param languageVendor System.Guid
---@param documentType System.Guid
---@return System.Diagnostics.SymbolStore.ISymbolDocumentWriter
function System.Diagnostics.SymbolStore.ISymbolWriter:DefineDocument(url, language, languageVendor, documentType) end
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@param name string
---@param attributes System.Reflection.FieldAttributes
---@param signature System.Byte[]
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
function System.Diagnostics.SymbolStore.ISymbolWriter:DefineField(parent, name, attributes, signature, addrKind, addr1, addr2, addr3) end
---@param name string
---@param attributes System.Reflection.FieldAttributes
---@param signature System.Byte[]
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
function System.Diagnostics.SymbolStore.ISymbolWriter:DefineGlobalVariable(name, attributes, signature, addrKind, addr1, addr2, addr3) end
---@param name string
---@param attributes System.Reflection.FieldAttributes
---@param signature System.Byte[]
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
---@param startOffset number
---@param endOffset number
function System.Diagnostics.SymbolStore.ISymbolWriter:DefineLocalVariable(name, attributes, signature, addrKind, addr1, addr2, addr3, startOffset, endOffset) end
---@param name string
---@param attributes System.Reflection.ParameterAttributes
---@param sequence number
---@param addrKind System.Diagnostics.SymbolStore.SymAddressKind
---@param addr1 number
---@param addr2 number
---@param addr3 number
function System.Diagnostics.SymbolStore.ISymbolWriter:DefineParameter(name, attributes, sequence, addrKind, addr1, addr2, addr3) end
---@param document System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param offsets System.Int32[]
---@param lines System.Int32[]
---@param columns System.Int32[]
---@param endLines System.Int32[]
---@param endColumns System.Int32[]
function System.Diagnostics.SymbolStore.ISymbolWriter:DefineSequencePoints(document, offsets, lines, columns, endLines, endColumns) end
---@param emitter System.IntPtr
---@param filename string
---@param fFullBuild boolean
function System.Diagnostics.SymbolStore.ISymbolWriter:Initialize(emitter, filename, fFullBuild) end
---@param method System.Diagnostics.SymbolStore.SymbolToken
function System.Diagnostics.SymbolStore.ISymbolWriter:OpenMethod(method) end
---@param name string
function System.Diagnostics.SymbolStore.ISymbolWriter:OpenNamespace(name) end
---@param startOffset number
---@return number
function System.Diagnostics.SymbolStore.ISymbolWriter:OpenScope(startOffset) end
---@param startDoc System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param startLine number
---@param startColumn number
---@param endDoc System.Diagnostics.SymbolStore.ISymbolDocumentWriter
---@param endLine number
---@param endColumn number
function System.Diagnostics.SymbolStore.ISymbolWriter:SetMethodSourceRange(startDoc, startLine, startColumn, endDoc, endLine, endColumn) end
---@param scopeID number
---@param startOffset number
---@param endOffset number
function System.Diagnostics.SymbolStore.ISymbolWriter:SetScopeRange(scopeID, startOffset, endOffset) end
---@param parent System.Diagnostics.SymbolStore.SymbolToken
---@param name string
---@param data System.Byte[]
function System.Diagnostics.SymbolStore.ISymbolWriter:SetSymAttribute(parent, name, data) end
---@param underlyingWriter System.IntPtr
function System.Diagnostics.SymbolStore.ISymbolWriter:SetUnderlyingWriter(underlyingWriter) end
---@param entryMethod System.Diagnostics.SymbolStore.SymbolToken
function System.Diagnostics.SymbolStore.ISymbolWriter:SetUserEntryPoint(entryMethod) end
---@param fullName string
function System.Diagnostics.SymbolStore.ISymbolWriter:UsingNamespace(fullName) end

---@class System.Diagnostics.SymbolStore.SymAddressKind
---@field ILOffset System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeRVA System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeRegister System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeRegisterRelative System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeOffset System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeRegisterRegister System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeRegisterStack System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeStackRegister System.Diagnostics.SymbolStore.SymAddressKind
---@field BitField System.Diagnostics.SymbolStore.SymAddressKind
---@field NativeSectionOffset System.Diagnostics.SymbolStore.SymAddressKind
System.Diagnostics.SymbolStore.SymAddressKind = {}
---@alias CS.System.Diagnostics.SymbolStore.SymAddressKind System.Diagnostics.SymbolStore.SymAddressKind
CS.System.Diagnostics.SymbolStore.SymAddressKind = System.Diagnostics.SymbolStore.SymAddressKind


---@class System.Diagnostics.SymbolStore.SymDocumentType : System.Object
---@field Text System.Guid
System.Diagnostics.SymbolStore.SymDocumentType = {}
---@alias CS.System.Diagnostics.SymbolStore.SymDocumentType System.Diagnostics.SymbolStore.SymDocumentType
CS.System.Diagnostics.SymbolStore.SymDocumentType = System.Diagnostics.SymbolStore.SymDocumentType

---@return System.Diagnostics.SymbolStore.SymDocumentType
function System.Diagnostics.SymbolStore.SymDocumentType.New() end

---@class System.Diagnostics.SymbolStore.SymLanguageType : System.Object
---@field Basic System.Guid
---@field C System.Guid
---@field Cobol System.Guid
---@field CPlusPlus System.Guid
---@field CSharp System.Guid
---@field ILAssembly System.Guid
---@field Java System.Guid
---@field JScript System.Guid
---@field MCPlusPlus System.Guid
---@field Pascal System.Guid
---@field SMC System.Guid
System.Diagnostics.SymbolStore.SymLanguageType = {}
---@alias CS.System.Diagnostics.SymbolStore.SymLanguageType System.Diagnostics.SymbolStore.SymLanguageType
CS.System.Diagnostics.SymbolStore.SymLanguageType = System.Diagnostics.SymbolStore.SymLanguageType

---@return System.Diagnostics.SymbolStore.SymLanguageType
function System.Diagnostics.SymbolStore.SymLanguageType.New() end

---@class System.Diagnostics.SymbolStore.SymLanguageVendor : System.Object
---@field Microsoft System.Guid
System.Diagnostics.SymbolStore.SymLanguageVendor = {}
---@alias CS.System.Diagnostics.SymbolStore.SymLanguageVendor System.Diagnostics.SymbolStore.SymLanguageVendor
CS.System.Diagnostics.SymbolStore.SymLanguageVendor = System.Diagnostics.SymbolStore.SymLanguageVendor

---@return System.Diagnostics.SymbolStore.SymLanguageVendor
function System.Diagnostics.SymbolStore.SymLanguageVendor.New() end

---@class System.Diagnostics.Tracing.EventActivityOptions
---@field None System.Diagnostics.Tracing.EventActivityOptions
---@field Disable System.Diagnostics.Tracing.EventActivityOptions
---@field Recursive System.Diagnostics.Tracing.EventActivityOptions
---@field Detachable System.Diagnostics.Tracing.EventActivityOptions
System.Diagnostics.Tracing.EventActivityOptions = {}
---@alias CS.System.Diagnostics.Tracing.EventActivityOptions System.Diagnostics.Tracing.EventActivityOptions
CS.System.Diagnostics.Tracing.EventActivityOptions = System.Diagnostics.Tracing.EventActivityOptions


---@class System.Diagnostics.Tracing.EventSourceException : System.Exception
System.Diagnostics.Tracing.EventSourceException = {}
---@alias CS.System.Diagnostics.Tracing.EventSourceException System.Diagnostics.Tracing.EventSourceException
CS.System.Diagnostics.Tracing.EventSourceException = System.Diagnostics.Tracing.EventSourceException

---@overload fun() : System.Diagnostics.Tracing.EventSourceException
---@overload fun(message: string) : System.Diagnostics.Tracing.EventSourceException
---@param message string
---@param innerException System.Exception
---@return System.Diagnostics.Tracing.EventSourceException
function System.Diagnostics.Tracing.EventSourceException.New(message, innerException) end

---@class System.Diagnostics.Tracing.EventSourceOptions : System.ValueType
---@field Level System.Diagnostics.Tracing.EventLevel
---@field Opcode System.Diagnostics.Tracing.EventOpcode
---@field Keywords System.Diagnostics.Tracing.EventKeywords
---@field Tags System.Diagnostics.Tracing.EventTags
---@field ActivityOptions System.Diagnostics.Tracing.EventActivityOptions
System.Diagnostics.Tracing.EventSourceOptions = {}
---@alias CS.System.Diagnostics.Tracing.EventSourceOptions System.Diagnostics.Tracing.EventSourceOptions
CS.System.Diagnostics.Tracing.EventSourceOptions = System.Diagnostics.Tracing.EventSourceOptions


---@class System.Diagnostics.Tracing.EventTags
---@field None System.Diagnostics.Tracing.EventTags
System.Diagnostics.Tracing.EventTags = {}
---@alias CS.System.Diagnostics.Tracing.EventTags System.Diagnostics.Tracing.EventTags
CS.System.Diagnostics.Tracing.EventTags = System.Diagnostics.Tracing.EventTags


---@class System.Diagnostics.Tracing.EventLevel
---@field LogAlways System.Diagnostics.Tracing.EventLevel
---@field Critical System.Diagnostics.Tracing.EventLevel
---@field Error System.Diagnostics.Tracing.EventLevel
---@field Warning System.Diagnostics.Tracing.EventLevel
---@field Informational System.Diagnostics.Tracing.EventLevel
---@field Verbose System.Diagnostics.Tracing.EventLevel
System.Diagnostics.Tracing.EventLevel = {}
---@alias CS.System.Diagnostics.Tracing.EventLevel System.Diagnostics.Tracing.EventLevel
CS.System.Diagnostics.Tracing.EventLevel = System.Diagnostics.Tracing.EventLevel


---@class System.Diagnostics.Tracing.EventTask
---@field None System.Diagnostics.Tracing.EventTask
System.Diagnostics.Tracing.EventTask = {}
---@alias CS.System.Diagnostics.Tracing.EventTask System.Diagnostics.Tracing.EventTask
CS.System.Diagnostics.Tracing.EventTask = System.Diagnostics.Tracing.EventTask


---@class System.Diagnostics.Tracing.EventOpcode
---@field Info System.Diagnostics.Tracing.EventOpcode
---@field Start System.Diagnostics.Tracing.EventOpcode
---@field Stop System.Diagnostics.Tracing.EventOpcode
---@field DataCollectionStart System.Diagnostics.Tracing.EventOpcode
---@field DataCollectionStop System.Diagnostics.Tracing.EventOpcode
---@field Extension System.Diagnostics.Tracing.EventOpcode
---@field Reply System.Diagnostics.Tracing.EventOpcode
---@field Resume System.Diagnostics.Tracing.EventOpcode
---@field Suspend System.Diagnostics.Tracing.EventOpcode
---@field Send System.Diagnostics.Tracing.EventOpcode
---@field Receive System.Diagnostics.Tracing.EventOpcode
System.Diagnostics.Tracing.EventOpcode = {}
---@alias CS.System.Diagnostics.Tracing.EventOpcode System.Diagnostics.Tracing.EventOpcode
CS.System.Diagnostics.Tracing.EventOpcode = System.Diagnostics.Tracing.EventOpcode


---@class System.Diagnostics.Tracing.EventChannel
---@field None System.Diagnostics.Tracing.EventChannel
---@field Admin System.Diagnostics.Tracing.EventChannel
---@field Operational System.Diagnostics.Tracing.EventChannel
---@field Analytic System.Diagnostics.Tracing.EventChannel
---@field Debug System.Diagnostics.Tracing.EventChannel
System.Diagnostics.Tracing.EventChannel = {}
---@alias CS.System.Diagnostics.Tracing.EventChannel System.Diagnostics.Tracing.EventChannel
CS.System.Diagnostics.Tracing.EventChannel = System.Diagnostics.Tracing.EventChannel


---@class System.Diagnostics.Tracing.EventKeywords
---@field None System.Diagnostics.Tracing.EventKeywords
---@field All System.Diagnostics.Tracing.EventKeywords
---@field MicrosoftTelemetry System.Diagnostics.Tracing.EventKeywords
---@field WdiContext System.Diagnostics.Tracing.EventKeywords
---@field WdiDiagnostic System.Diagnostics.Tracing.EventKeywords
---@field Sqm System.Diagnostics.Tracing.EventKeywords
---@field AuditFailure System.Diagnostics.Tracing.EventKeywords
---@field AuditSuccess System.Diagnostics.Tracing.EventKeywords
---@field CorrelationHint System.Diagnostics.Tracing.EventKeywords
---@field EventLogClassic System.Diagnostics.Tracing.EventKeywords
System.Diagnostics.Tracing.EventKeywords = {}
---@alias CS.System.Diagnostics.Tracing.EventKeywords System.Diagnostics.Tracing.EventKeywords
CS.System.Diagnostics.Tracing.EventKeywords = System.Diagnostics.Tracing.EventKeywords


---@class System.Diagnostics.Tracing.EventAttribute : System.Attribute
---@field EventId number
---@field ActivityOptions System.Diagnostics.Tracing.EventActivityOptions
---@field Level System.Diagnostics.Tracing.EventLevel
---@field Keywords System.Diagnostics.Tracing.EventKeywords
---@field Opcode System.Diagnostics.Tracing.EventOpcode
---@field Channel System.Diagnostics.Tracing.EventChannel
---@field Message string
---@field Task System.Diagnostics.Tracing.EventTask
---@field Tags System.Diagnostics.Tracing.EventTags
---@field Version number
System.Diagnostics.Tracing.EventAttribute = {}
---@alias CS.System.Diagnostics.Tracing.EventAttribute System.Diagnostics.Tracing.EventAttribute
CS.System.Diagnostics.Tracing.EventAttribute = System.Diagnostics.Tracing.EventAttribute

---@param eventId number
---@return System.Diagnostics.Tracing.EventAttribute
function System.Diagnostics.Tracing.EventAttribute.New(eventId) end

---@class System.Diagnostics.Tracing.EventCommand
---@field Update System.Diagnostics.Tracing.EventCommand
---@field SendManifest System.Diagnostics.Tracing.EventCommand
---@field Enable System.Diagnostics.Tracing.EventCommand
---@field Disable System.Diagnostics.Tracing.EventCommand
System.Diagnostics.Tracing.EventCommand = {}
---@alias CS.System.Diagnostics.Tracing.EventCommand System.Diagnostics.Tracing.EventCommand
CS.System.Diagnostics.Tracing.EventCommand = System.Diagnostics.Tracing.EventCommand


---@class System.Diagnostics.Tracing.EventCommandEventArgs : System.EventArgs
---@field Arguments System.Collections.Generic.IDictionary
---@field Command System.Diagnostics.Tracing.EventCommand
System.Diagnostics.Tracing.EventCommandEventArgs = {}
---@alias CS.System.Diagnostics.Tracing.EventCommandEventArgs System.Diagnostics.Tracing.EventCommandEventArgs
CS.System.Diagnostics.Tracing.EventCommandEventArgs = System.Diagnostics.Tracing.EventCommandEventArgs

---@param eventId number
---@return boolean
function System.Diagnostics.Tracing.EventCommandEventArgs:DisableEvent(eventId) end
---@param eventId number
---@return boolean
function System.Diagnostics.Tracing.EventCommandEventArgs:EnableEvent(eventId) end

---@class System.Diagnostics.Tracing.EventCounter : System.Diagnostics.Tracing.DiagnosticCounter
System.Diagnostics.Tracing.EventCounter = {}
---@alias CS.System.Diagnostics.Tracing.EventCounter System.Diagnostics.Tracing.EventCounter
CS.System.Diagnostics.Tracing.EventCounter = System.Diagnostics.Tracing.EventCounter

---@param name string
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return System.Diagnostics.Tracing.EventCounter
function System.Diagnostics.Tracing.EventCounter.New(name, eventSource) end
---@overload fun(self: System.Diagnostics.Tracing.EventCounter, value: number)
---@param value number
function System.Diagnostics.Tracing.EventCounter:WriteMetric(value) end

---@class System.Diagnostics.Tracing.EventDataAttribute : System.Attribute
---@field Name string
System.Diagnostics.Tracing.EventDataAttribute = {}
---@alias CS.System.Diagnostics.Tracing.EventDataAttribute System.Diagnostics.Tracing.EventDataAttribute
CS.System.Diagnostics.Tracing.EventDataAttribute = System.Diagnostics.Tracing.EventDataAttribute

---@return System.Diagnostics.Tracing.EventDataAttribute
function System.Diagnostics.Tracing.EventDataAttribute.New() end

---@class System.Diagnostics.Tracing.EventFieldAttribute : System.Attribute
---@field Format System.Diagnostics.Tracing.EventFieldFormat
---@field Tags System.Diagnostics.Tracing.EventFieldTags
System.Diagnostics.Tracing.EventFieldAttribute = {}
---@alias CS.System.Diagnostics.Tracing.EventFieldAttribute System.Diagnostics.Tracing.EventFieldAttribute
CS.System.Diagnostics.Tracing.EventFieldAttribute = System.Diagnostics.Tracing.EventFieldAttribute

---@return System.Diagnostics.Tracing.EventFieldAttribute
function System.Diagnostics.Tracing.EventFieldAttribute.New() end

---@class System.Diagnostics.Tracing.EventFieldFormat
---@field Boolean System.Diagnostics.Tracing.EventFieldFormat
---@field Default System.Diagnostics.Tracing.EventFieldFormat
---@field Hexadecimal System.Diagnostics.Tracing.EventFieldFormat
---@field HResult System.Diagnostics.Tracing.EventFieldFormat
---@field Json System.Diagnostics.Tracing.EventFieldFormat
---@field String System.Diagnostics.Tracing.EventFieldFormat
---@field Xml System.Diagnostics.Tracing.EventFieldFormat
System.Diagnostics.Tracing.EventFieldFormat = {}
---@alias CS.System.Diagnostics.Tracing.EventFieldFormat System.Diagnostics.Tracing.EventFieldFormat
CS.System.Diagnostics.Tracing.EventFieldFormat = System.Diagnostics.Tracing.EventFieldFormat


---@class System.Diagnostics.Tracing.EventFieldTags
---@field None System.Diagnostics.Tracing.EventFieldTags
System.Diagnostics.Tracing.EventFieldTags = {}
---@alias CS.System.Diagnostics.Tracing.EventFieldTags System.Diagnostics.Tracing.EventFieldTags
CS.System.Diagnostics.Tracing.EventFieldTags = System.Diagnostics.Tracing.EventFieldTags


---@class System.Diagnostics.Tracing.EventIgnoreAttribute : System.Attribute
System.Diagnostics.Tracing.EventIgnoreAttribute = {}
---@alias CS.System.Diagnostics.Tracing.EventIgnoreAttribute System.Diagnostics.Tracing.EventIgnoreAttribute
CS.System.Diagnostics.Tracing.EventIgnoreAttribute = System.Diagnostics.Tracing.EventIgnoreAttribute

---@return System.Diagnostics.Tracing.EventIgnoreAttribute
function System.Diagnostics.Tracing.EventIgnoreAttribute.New() end

---@class System.Diagnostics.Tracing.EventListener : System.Object
System.Diagnostics.Tracing.EventListener = {}
---@alias CS.System.Diagnostics.Tracing.EventListener System.Diagnostics.Tracing.EventListener
CS.System.Diagnostics.Tracing.EventListener = System.Diagnostics.Tracing.EventListener

---@return System.Diagnostics.Tracing.EventListener
function System.Diagnostics.Tracing.EventListener.New() end
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return number
function System.Diagnostics.Tracing.EventListener.EventSourceIndex(eventSource) end
---@overload fun(self: System.Diagnostics.Tracing.EventListener, eventSource: System.Diagnostics.Tracing.EventSource, level: System.Diagnostics.Tracing.EventLevel)
---@overload fun(self: System.Diagnostics.Tracing.EventListener, eventSource: System.Diagnostics.Tracing.EventSource, level: System.Diagnostics.Tracing.EventLevel, matchAnyKeyword: System.Diagnostics.Tracing.EventKeywords)
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param level System.Diagnostics.Tracing.EventLevel
---@param matchAnyKeyword System.Diagnostics.Tracing.EventKeywords
---@param arguments System.Collections.Generic.IDictionary
function System.Diagnostics.Tracing.EventListener:EnableEvents(eventSource, level, matchAnyKeyword, arguments) end
---@param eventSource System.Diagnostics.Tracing.EventSource
function System.Diagnostics.Tracing.EventListener:DisableEvents(eventSource) end
function System.Diagnostics.Tracing.EventListener:Dispose() end

---@class System.Diagnostics.Tracing.EventManifestOptions
---@field AllCultures System.Diagnostics.Tracing.EventManifestOptions
---@field AllowEventSourceOverride System.Diagnostics.Tracing.EventManifestOptions
---@field None System.Diagnostics.Tracing.EventManifestOptions
---@field OnlyIfNeededForRegistration System.Diagnostics.Tracing.EventManifestOptions
---@field Strict System.Diagnostics.Tracing.EventManifestOptions
System.Diagnostics.Tracing.EventManifestOptions = {}
---@alias CS.System.Diagnostics.Tracing.EventManifestOptions System.Diagnostics.Tracing.EventManifestOptions
CS.System.Diagnostics.Tracing.EventManifestOptions = System.Diagnostics.Tracing.EventManifestOptions


---@class System.Diagnostics.Tracing.EventSource : System.Object
---@field CurrentThreadActivityId System.Guid
---@field ConstructionException System.Exception
---@field Guid System.Guid
---@field Name string
---@field Settings System.Diagnostics.Tracing.EventSourceSettings
System.Diagnostics.Tracing.EventSource = {}
---@alias CS.System.Diagnostics.Tracing.EventSource System.Diagnostics.Tracing.EventSource
CS.System.Diagnostics.Tracing.EventSource = System.Diagnostics.Tracing.EventSource

---@overload fun(eventSourceName: string) : System.Diagnostics.Tracing.EventSource
---@overload fun(eventSourceName: string, config: System.Diagnostics.Tracing.EventSourceSettings) : System.Diagnostics.Tracing.EventSource
---@param eventSourceName string
---@param config System.Diagnostics.Tracing.EventSourceSettings
---@param traits System.String[]
---@return System.Diagnostics.Tracing.EventSource
function System.Diagnostics.Tracing.EventSource.New(eventSourceName, config, traits) end
---@overload fun(eventSourceType: System.Type, assemblyPathToIncludeInManifest: string) : string
---@param eventSourceType System.Type
---@param assemblyPathToIncludeInManifest string
---@param flags System.Diagnostics.Tracing.EventManifestOptions
---@return string
function System.Diagnostics.Tracing.EventSource.GenerateManifest(eventSourceType, assemblyPathToIncludeInManifest, flags) end
---@param eventSourceType System.Type
---@return System.Guid
function System.Diagnostics.Tracing.EventSource.GetGuid(eventSourceType) end
---@param eventSourceType System.Type
---@return string
function System.Diagnostics.Tracing.EventSource.GetName(eventSourceType) end
---@return System.Collections.Generic.IEnumerable
function System.Diagnostics.Tracing.EventSource.GetSources() end
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param command System.Diagnostics.Tracing.EventCommand
---@param commandArguments System.Collections.Generic.IDictionary
function System.Diagnostics.Tracing.EventSource.SendCommand(eventSource, command, commandArguments) end
---@overload fun(activityId: System.Guid)
---@param activityId System.Guid
---@param out_oldActivityThatWillContinue System.Guid
---@return ,System.Guid
function System.Diagnostics.Tracing.EventSource.SetCurrentThreadActivityId(activityId, out_oldActivityThatWillContinue) end
---@overload fun() : boolean
---@overload fun(self: System.Diagnostics.Tracing.EventSource, level: System.Diagnostics.Tracing.EventLevel, keywords: System.Diagnostics.Tracing.EventKeywords) : boolean
---@param level System.Diagnostics.Tracing.EventLevel
---@param keywords System.Diagnostics.Tracing.EventKeywords
---@param channel System.Diagnostics.Tracing.EventChannel
---@return boolean
function System.Diagnostics.Tracing.EventSource:IsEnabled(level, keywords, channel) end
function System.Diagnostics.Tracing.EventSource:Dispose() end
---@param key string
---@return string
function System.Diagnostics.Tracing.EventSource:GetTrait(key) end
---@overload fun(self: System.Diagnostics.Tracing.EventSource, eventName: string)
---@param eventName string
---@param options System.Diagnostics.Tracing.EventSourceOptions
function System.Diagnostics.Tracing.EventSource:Write(eventName, options) end

---@class System.Diagnostics.Tracing.EventSource.EventData : System.ValueType
---@field DataPointer System.IntPtr
---@field Size number
System.Diagnostics.Tracing.EventSource.EventData = {}
---@alias CS.System.Diagnostics.Tracing.EventSource.EventData System.Diagnostics.Tracing.EventSource.EventData
CS.System.Diagnostics.Tracing.EventSource.EventData = System.Diagnostics.Tracing.EventSource.EventData


---@class System.Diagnostics.Tracing.EventSourceAttribute : System.Attribute
---@field Guid string
---@field LocalizationResources string
---@field Name string
System.Diagnostics.Tracing.EventSourceAttribute = {}
---@alias CS.System.Diagnostics.Tracing.EventSourceAttribute System.Diagnostics.Tracing.EventSourceAttribute
CS.System.Diagnostics.Tracing.EventSourceAttribute = System.Diagnostics.Tracing.EventSourceAttribute

---@return System.Diagnostics.Tracing.EventSourceAttribute
function System.Diagnostics.Tracing.EventSourceAttribute.New() end

---@class System.Diagnostics.Tracing.EventSourceCreatedEventArgs : System.EventArgs
---@field EventSource System.Diagnostics.Tracing.EventSource
System.Diagnostics.Tracing.EventSourceCreatedEventArgs = {}
---@alias CS.System.Diagnostics.Tracing.EventSourceCreatedEventArgs System.Diagnostics.Tracing.EventSourceCreatedEventArgs
CS.System.Diagnostics.Tracing.EventSourceCreatedEventArgs = System.Diagnostics.Tracing.EventSourceCreatedEventArgs

---@return System.Diagnostics.Tracing.EventSourceCreatedEventArgs
function System.Diagnostics.Tracing.EventSourceCreatedEventArgs.New() end

---@class System.Diagnostics.Tracing.EventSourceSettings
---@field Default System.Diagnostics.Tracing.EventSourceSettings
---@field ThrowOnEventWriteErrors System.Diagnostics.Tracing.EventSourceSettings
---@field EtwManifestEventFormat System.Diagnostics.Tracing.EventSourceSettings
---@field EtwSelfDescribingEventFormat System.Diagnostics.Tracing.EventSourceSettings
System.Diagnostics.Tracing.EventSourceSettings = {}
---@alias CS.System.Diagnostics.Tracing.EventSourceSettings System.Diagnostics.Tracing.EventSourceSettings
CS.System.Diagnostics.Tracing.EventSourceSettings = System.Diagnostics.Tracing.EventSourceSettings


---@class System.Diagnostics.Tracing.EventWrittenEventArgs : System.EventArgs
---@field ActivityId System.Guid
---@field Channel System.Diagnostics.Tracing.EventChannel
---@field EventId number
---@field OSThreadId number
---@field TimeStamp System.DateTime
---@field EventName string
---@field EventSource System.Diagnostics.Tracing.EventSource
---@field Keywords System.Diagnostics.Tracing.EventKeywords
---@field Level System.Diagnostics.Tracing.EventLevel
---@field Message string
---@field Opcode System.Diagnostics.Tracing.EventOpcode
---@field Payload System.Collections.ObjectModel.ReadOnlyCollection
---@field PayloadNames System.Collections.ObjectModel.ReadOnlyCollection
---@field RelatedActivityId System.Guid
---@field Tags System.Diagnostics.Tracing.EventTags
---@field Task System.Diagnostics.Tracing.EventTask
---@field Version number
System.Diagnostics.Tracing.EventWrittenEventArgs = {}
---@alias CS.System.Diagnostics.Tracing.EventWrittenEventArgs System.Diagnostics.Tracing.EventWrittenEventArgs
CS.System.Diagnostics.Tracing.EventWrittenEventArgs = System.Diagnostics.Tracing.EventWrittenEventArgs


---@class System.Diagnostics.Tracing.NonEventAttribute : System.Attribute
System.Diagnostics.Tracing.NonEventAttribute = {}
---@alias CS.System.Diagnostics.Tracing.NonEventAttribute System.Diagnostics.Tracing.NonEventAttribute
CS.System.Diagnostics.Tracing.NonEventAttribute = System.Diagnostics.Tracing.NonEventAttribute

---@return System.Diagnostics.Tracing.NonEventAttribute
function System.Diagnostics.Tracing.NonEventAttribute.New() end

---@class System.Diagnostics.Tracing.DiagnosticCounter : System.Object
---@field DisplayName string
---@field DisplayUnits string
---@field EventSource System.Diagnostics.Tracing.EventSource
---@field Name string
System.Diagnostics.Tracing.DiagnosticCounter = {}
---@alias CS.System.Diagnostics.Tracing.DiagnosticCounter System.Diagnostics.Tracing.DiagnosticCounter
CS.System.Diagnostics.Tracing.DiagnosticCounter = System.Diagnostics.Tracing.DiagnosticCounter

---@param key string
---@param value string
function System.Diagnostics.Tracing.DiagnosticCounter:AddMetadata(key, value) end
function System.Diagnostics.Tracing.DiagnosticCounter:Dispose() end

---@class System.Diagnostics.Tracing.IncrementingEventCounter : System.Diagnostics.Tracing.DiagnosticCounter
---@field DisplayRateTimeScale System.TimeSpan
System.Diagnostics.Tracing.IncrementingEventCounter = {}
---@alias CS.System.Diagnostics.Tracing.IncrementingEventCounter System.Diagnostics.Tracing.IncrementingEventCounter
CS.System.Diagnostics.Tracing.IncrementingEventCounter = System.Diagnostics.Tracing.IncrementingEventCounter

---@param name string
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return System.Diagnostics.Tracing.IncrementingEventCounter
function System.Diagnostics.Tracing.IncrementingEventCounter.New(name, eventSource) end
---@param increment number
function System.Diagnostics.Tracing.IncrementingEventCounter:Increment(increment) end

---@class System.Diagnostics.Tracing.IncrementingPollingCounter : System.Diagnostics.Tracing.DiagnosticCounter
---@field DisplayRateTimeScale System.TimeSpan
System.Diagnostics.Tracing.IncrementingPollingCounter = {}
---@alias CS.System.Diagnostics.Tracing.IncrementingPollingCounter System.Diagnostics.Tracing.IncrementingPollingCounter
CS.System.Diagnostics.Tracing.IncrementingPollingCounter = System.Diagnostics.Tracing.IncrementingPollingCounter

---@param name string
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param totalValueProvider System.Func
---@return System.Diagnostics.Tracing.IncrementingPollingCounter
function System.Diagnostics.Tracing.IncrementingPollingCounter.New(name, eventSource, totalValueProvider) end

---@class System.Diagnostics.Tracing.PollingCounter : System.Diagnostics.Tracing.DiagnosticCounter
System.Diagnostics.Tracing.PollingCounter = {}
---@alias CS.System.Diagnostics.Tracing.PollingCounter System.Diagnostics.Tracing.PollingCounter
CS.System.Diagnostics.Tracing.PollingCounter = System.Diagnostics.Tracing.PollingCounter

---@param name string
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param metricProvider System.Func
---@return System.Diagnostics.Tracing.PollingCounter
function System.Diagnostics.Tracing.PollingCounter.New(name, eventSource, metricProvider) end

---@class System.Diagnostics.CodeAnalysis.SuppressMessageAttribute : System.Attribute
---@field Category string
---@field CheckId string
---@field Scope string
---@field Target string
---@field MessageId string
---@field Justification string
System.Diagnostics.CodeAnalysis.SuppressMessageAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
CS.System.Diagnostics.CodeAnalysis.SuppressMessageAttribute = System.Diagnostics.CodeAnalysis.SuppressMessageAttribute

---@param category string
---@param checkId string
---@return System.Diagnostics.CodeAnalysis.SuppressMessageAttribute
function System.Diagnostics.CodeAnalysis.SuppressMessageAttribute.New(category, checkId) end

---@class System.Diagnostics.CodeAnalysis.AllowNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.AllowNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.AllowNullAttribute System.Diagnostics.CodeAnalysis.AllowNullAttribute
CS.System.Diagnostics.CodeAnalysis.AllowNullAttribute = System.Diagnostics.CodeAnalysis.AllowNullAttribute

---@return System.Diagnostics.CodeAnalysis.AllowNullAttribute
function System.Diagnostics.CodeAnalysis.AllowNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.DisallowNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.DisallowNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.DisallowNullAttribute System.Diagnostics.CodeAnalysis.DisallowNullAttribute
CS.System.Diagnostics.CodeAnalysis.DisallowNullAttribute = System.Diagnostics.CodeAnalysis.DisallowNullAttribute

---@return System.Diagnostics.CodeAnalysis.DisallowNullAttribute
function System.Diagnostics.CodeAnalysis.DisallowNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.MaybeNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.MaybeNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.MaybeNullAttribute System.Diagnostics.CodeAnalysis.MaybeNullAttribute
CS.System.Diagnostics.CodeAnalysis.MaybeNullAttribute = System.Diagnostics.CodeAnalysis.MaybeNullAttribute

---@return System.Diagnostics.CodeAnalysis.MaybeNullAttribute
function System.Diagnostics.CodeAnalysis.MaybeNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.NotNullAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.NotNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.NotNullAttribute System.Diagnostics.CodeAnalysis.NotNullAttribute
CS.System.Diagnostics.CodeAnalysis.NotNullAttribute = System.Diagnostics.CodeAnalysis.NotNullAttribute

---@return System.Diagnostics.CodeAnalysis.NotNullAttribute
function System.Diagnostics.CodeAnalysis.NotNullAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute : System.Attribute
---@field ReturnValue boolean
System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute
CS.System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute = System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute

---@param returnValue boolean
---@return System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute
function System.Diagnostics.CodeAnalysis.MaybeNullWhenAttribute.New(returnValue) end

---@class System.Diagnostics.CodeAnalysis.NotNullWhenAttribute : System.Attribute
---@field ReturnValue boolean
System.Diagnostics.CodeAnalysis.NotNullWhenAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.NotNullWhenAttribute System.Diagnostics.CodeAnalysis.NotNullWhenAttribute
CS.System.Diagnostics.CodeAnalysis.NotNullWhenAttribute = System.Diagnostics.CodeAnalysis.NotNullWhenAttribute

---@param returnValue boolean
---@return System.Diagnostics.CodeAnalysis.NotNullWhenAttribute
function System.Diagnostics.CodeAnalysis.NotNullWhenAttribute.New(returnValue) end

---@class System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute : System.Attribute
---@field ParameterName string
System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute
CS.System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute = System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute

---@param parameterName string
---@return System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute
function System.Diagnostics.CodeAnalysis.NotNullIfNotNullAttribute.New(parameterName) end

---@class System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute : System.Attribute
System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute
CS.System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute = System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute

---@return System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute
function System.Diagnostics.CodeAnalysis.DoesNotReturnAttribute.New() end

---@class System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute : System.Attribute
---@field ParameterValue boolean
System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute = {}
---@alias CS.System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute
CS.System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute = System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute

---@param parameterValue boolean
---@return System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute
function System.Diagnostics.CodeAnalysis.DoesNotReturnIfAttribute.New(parameterValue) end

---@class System.Configuration.Assemblies.AssemblyHashAlgorithm
---@field None System.Configuration.Assemblies.AssemblyHashAlgorithm
---@field MD5 System.Configuration.Assemblies.AssemblyHashAlgorithm
---@field SHA1 System.Configuration.Assemblies.AssemblyHashAlgorithm
---@field SHA256 System.Configuration.Assemblies.AssemblyHashAlgorithm
---@field SHA384 System.Configuration.Assemblies.AssemblyHashAlgorithm
---@field SHA512 System.Configuration.Assemblies.AssemblyHashAlgorithm
System.Configuration.Assemblies.AssemblyHashAlgorithm = {}
---@alias CS.System.Configuration.Assemblies.AssemblyHashAlgorithm System.Configuration.Assemblies.AssemblyHashAlgorithm
CS.System.Configuration.Assemblies.AssemblyHashAlgorithm = System.Configuration.Assemblies.AssemblyHashAlgorithm


---@class System.Configuration.Assemblies.AssemblyVersionCompatibility
---@field SameMachine System.Configuration.Assemblies.AssemblyVersionCompatibility
---@field SameProcess System.Configuration.Assemblies.AssemblyVersionCompatibility
---@field SameDomain System.Configuration.Assemblies.AssemblyVersionCompatibility
System.Configuration.Assemblies.AssemblyVersionCompatibility = {}
---@alias CS.System.Configuration.Assemblies.AssemblyVersionCompatibility System.Configuration.Assemblies.AssemblyVersionCompatibility
CS.System.Configuration.Assemblies.AssemblyVersionCompatibility = System.Configuration.Assemblies.AssemblyVersionCompatibility


---@class System.Configuration.Assemblies.AssemblyHash : System.ValueType
System.Configuration.Assemblies.AssemblyHash = {}
---@alias CS.System.Configuration.Assemblies.AssemblyHash System.Configuration.Assemblies.AssemblyHash
CS.System.Configuration.Assemblies.AssemblyHash = System.Configuration.Assemblies.AssemblyHash

---@overload fun(algorithm: System.Configuration.Assemblies.AssemblyHashAlgorithm, value: System.Byte[]) : System.Configuration.Assemblies.AssemblyHash
---@param value System.Byte[]
---@return System.Configuration.Assemblies.AssemblyHash
function System.Configuration.Assemblies.AssemblyHash.New(value) end

---@class System.Collections.Comparer : System.Object
---@field Default System.Collections.Comparer
---@field DefaultInvariant System.Collections.Comparer
System.Collections.Comparer = {}
---@alias CS.System.Collections.Comparer System.Collections.Comparer
CS.System.Collections.Comparer = System.Collections.Comparer

---@param culture System.Globalization.CultureInfo
---@return System.Collections.Comparer
function System.Collections.Comparer.New(culture) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Collections.Comparer:GetObjectData(info, context) end
---@param a System.Object
---@param b System.Object
---@return number
function System.Collections.Comparer:Compare(a, b) end

---@class System.Collections.DictionaryEntry : System.ValueType
---@field Key System.Object
---@field Value System.Object
System.Collections.DictionaryEntry = {}
---@alias CS.System.Collections.DictionaryEntry System.Collections.DictionaryEntry
CS.System.Collections.DictionaryEntry = System.Collections.DictionaryEntry

---@param key System.Object
---@param value System.Object
---@return System.Collections.DictionaryEntry
function System.Collections.DictionaryEntry.New(key, value) end
---@param out_key System.Object
---@param out_value System.Object
---@return ,System.Object,System.Object
function System.Collections.DictionaryEntry:Deconstruct(out_key, out_value) end

---@class System.Collections.HashHelpers : System.Object
---@field HashCollisionThreshold number
---@field HashPrime number
---@field primes System.Int32[]
---@field MaxPrimeArrayLength number
System.Collections.HashHelpers = {}
---@alias CS.System.Collections.HashHelpers System.Collections.HashHelpers
CS.System.Collections.HashHelpers = System.Collections.HashHelpers

---@param candidate number
---@return boolean
function System.Collections.HashHelpers.IsPrime(candidate) end
---@param min number
---@return number
function System.Collections.HashHelpers.GetPrime(min) end
---@param oldSize number
---@return number
function System.Collections.HashHelpers.ExpandPrime(oldSize) end

---@class System.Collections.ICollection
---@field Count number
---@field SyncRoot System.Object
---@field IsSynchronized boolean
System.Collections.ICollection = {}
---@alias CS.System.Collections.ICollection System.Collections.ICollection
CS.System.Collections.ICollection = System.Collections.ICollection

---@param array System.Array
---@param index number
function System.Collections.ICollection:CopyTo(array, index) end

---@class System.Collections.IComparer
System.Collections.IComparer = {}
---@alias CS.System.Collections.IComparer System.Collections.IComparer
CS.System.Collections.IComparer = System.Collections.IComparer

---@param x System.Object
---@param y System.Object
---@return number
function System.Collections.IComparer:Compare(x, y) end

---@class System.Collections.IDictionary
---@field Item System.Object
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
---@field IsReadOnly boolean
---@field IsFixedSize boolean
System.Collections.IDictionary = {}
---@alias CS.System.Collections.IDictionary System.Collections.IDictionary
CS.System.Collections.IDictionary = System.Collections.IDictionary

---@param key System.Object
---@return boolean
function System.Collections.IDictionary:Contains(key) end
---@param key System.Object
---@param value System.Object
function System.Collections.IDictionary:Add(key, value) end
function System.Collections.IDictionary:Clear() end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.IDictionary:GetEnumerator() end
---@param key System.Object
function System.Collections.IDictionary:Remove(key) end

---@class System.Collections.IDictionaryEnumerator
---@field Key System.Object
---@field Value System.Object
---@field Entry System.Collections.DictionaryEntry
System.Collections.IDictionaryEnumerator = {}
---@alias CS.System.Collections.IDictionaryEnumerator System.Collections.IDictionaryEnumerator
CS.System.Collections.IDictionaryEnumerator = System.Collections.IDictionaryEnumerator


---@class System.Collections.IEnumerable
System.Collections.IEnumerable = {}
---@alias CS.System.Collections.IEnumerable System.Collections.IEnumerable
CS.System.Collections.IEnumerable = System.Collections.IEnumerable

---@return System.Collections.IEnumerator
function System.Collections.IEnumerable:GetEnumerator() end
---@return System.Linq.ParallelQuery
function System.Collections.IEnumerable:AsParallel() end
---@return System.Linq.IQueryable
function System.Collections.IEnumerable:AsQueryable() end
---@return System.Collections.Generic.IEnumerable[TResult]
function System.Collections.IEnumerable:OfType() end
---@return System.Collections.Generic.IEnumerable[TResult]
function System.Collections.IEnumerable:Cast() end

---@class System.Collections.IEnumerator
---@field Current System.Object
System.Collections.IEnumerator = {}
---@alias CS.System.Collections.IEnumerator System.Collections.IEnumerator
CS.System.Collections.IEnumerator = System.Collections.IEnumerator

---@return boolean
function System.Collections.IEnumerator:MoveNext() end
function System.Collections.IEnumerator:Reset() end

---@class System.Collections.IEqualityComparer
System.Collections.IEqualityComparer = {}
---@alias CS.System.Collections.IEqualityComparer System.Collections.IEqualityComparer
CS.System.Collections.IEqualityComparer = System.Collections.IEqualityComparer

---@param x System.Object
---@param y System.Object
---@return boolean
function System.Collections.IEqualityComparer:Equals(x, y) end
---@param obj System.Object
---@return number
function System.Collections.IEqualityComparer:GetHashCode(obj) end

---@class System.Collections.IList
---@field Item System.Object
---@field IsReadOnly boolean
---@field IsFixedSize boolean
System.Collections.IList = {}
---@alias CS.System.Collections.IList System.Collections.IList
CS.System.Collections.IList = System.Collections.IList

---@param value System.Object
---@return number
function System.Collections.IList:Add(value) end
---@param value System.Object
---@return boolean
function System.Collections.IList:Contains(value) end
function System.Collections.IList:Clear() end
---@param value System.Object
---@return number
function System.Collections.IList:IndexOf(value) end
---@param index number
---@param value System.Object
function System.Collections.IList:Insert(index, value) end
---@param value System.Object
function System.Collections.IList:Remove(value) end
---@param index number
function System.Collections.IList:RemoveAt(index) end

---@class System.Collections.IStructuralComparable
System.Collections.IStructuralComparable = {}
---@alias CS.System.Collections.IStructuralComparable System.Collections.IStructuralComparable
CS.System.Collections.IStructuralComparable = System.Collections.IStructuralComparable

---@param other System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Collections.IStructuralComparable:CompareTo(other, comparer) end

---@class System.Collections.IStructuralEquatable
System.Collections.IStructuralEquatable = {}
---@alias CS.System.Collections.IStructuralEquatable System.Collections.IStructuralEquatable
CS.System.Collections.IStructuralEquatable = System.Collections.IStructuralEquatable

---@param other System.Object
---@param comparer System.Collections.IEqualityComparer
---@return boolean
function System.Collections.IStructuralEquatable:Equals(other, comparer) end
---@param comparer System.Collections.IEqualityComparer
---@return number
function System.Collections.IStructuralEquatable:GetHashCode(comparer) end

---@class System.Collections.ListDictionaryInternal : System.Object
---@field Item System.Object
---@field Count number
---@field Keys System.Collections.ICollection
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Values System.Collections.ICollection
System.Collections.ListDictionaryInternal = {}
---@alias CS.System.Collections.ListDictionaryInternal System.Collections.ListDictionaryInternal
CS.System.Collections.ListDictionaryInternal = System.Collections.ListDictionaryInternal

---@return System.Collections.ListDictionaryInternal
function System.Collections.ListDictionaryInternal.New() end
---@param key System.Object
---@param value System.Object
function System.Collections.ListDictionaryInternal:Add(key, value) end
function System.Collections.ListDictionaryInternal:Clear() end
---@param key System.Object
---@return boolean
function System.Collections.ListDictionaryInternal:Contains(key) end
---@param array System.Array
---@param index number
function System.Collections.ListDictionaryInternal:CopyTo(array, index) end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.ListDictionaryInternal:GetEnumerator() end
---@param key System.Object
function System.Collections.ListDictionaryInternal:Remove(key) end

---@class System.Collections.ListDictionaryInternal.NodeEnumerator : System.Object
---@field Current System.Object
---@field Entry System.Collections.DictionaryEntry
---@field Key System.Object
---@field Value System.Object
System.Collections.ListDictionaryInternal.NodeEnumerator = {}
---@alias CS.System.Collections.ListDictionaryInternal.NodeEnumerator System.Collections.ListDictionaryInternal.NodeEnumerator
CS.System.Collections.ListDictionaryInternal.NodeEnumerator = System.Collections.ListDictionaryInternal.NodeEnumerator

---@param list System.Collections.ListDictionaryInternal
---@return System.Collections.ListDictionaryInternal.NodeEnumerator
function System.Collections.ListDictionaryInternal.NodeEnumerator.New(list) end
---@return boolean
function System.Collections.ListDictionaryInternal.NodeEnumerator:MoveNext() end
function System.Collections.ListDictionaryInternal.NodeEnumerator:Reset() end

---@class System.Collections.ListDictionaryInternal.NodeKeyValueCollection : System.Object
System.Collections.ListDictionaryInternal.NodeKeyValueCollection = {}
---@alias CS.System.Collections.ListDictionaryInternal.NodeKeyValueCollection System.Collections.ListDictionaryInternal.NodeKeyValueCollection
CS.System.Collections.ListDictionaryInternal.NodeKeyValueCollection = System.Collections.ListDictionaryInternal.NodeKeyValueCollection

---@param list System.Collections.ListDictionaryInternal
---@param isKeys boolean
---@return System.Collections.ListDictionaryInternal.NodeKeyValueCollection
function System.Collections.ListDictionaryInternal.NodeKeyValueCollection.New(list, isKeys) end

---@class System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator : System.Object
---@field Current System.Object
System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator = {}
---@alias CS.System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator
CS.System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator = System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator

---@param list System.Collections.ListDictionaryInternal
---@param isKeys boolean
---@return System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator
function System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator.New(list, isKeys) end
---@return boolean
function System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator:MoveNext() end
function System.Collections.ListDictionaryInternal.NodeKeyValueCollection.NodeKeyValueEnumerator:Reset() end

---@class System.Collections.ListDictionaryInternal.DictionaryNode : System.Object
---@field key System.Object
---@field value System.Object
---@field next System.Collections.ListDictionaryInternal.DictionaryNode
System.Collections.ListDictionaryInternal.DictionaryNode = {}
---@alias CS.System.Collections.ListDictionaryInternal.DictionaryNode System.Collections.ListDictionaryInternal.DictionaryNode
CS.System.Collections.ListDictionaryInternal.DictionaryNode = System.Collections.ListDictionaryInternal.DictionaryNode

---@return System.Collections.ListDictionaryInternal.DictionaryNode
function System.Collections.ListDictionaryInternal.DictionaryNode.New() end

---@class System.Collections.CompatibleComparer : System.Object
System.Collections.CompatibleComparer = {}
---@alias CS.System.Collections.CompatibleComparer System.Collections.CompatibleComparer
CS.System.Collections.CompatibleComparer = System.Collections.CompatibleComparer

---@param a System.Object
---@param b System.Object
---@return boolean
function System.Collections.CompatibleComparer:Equals(a, b) end
---@param a System.Object
---@param b System.Object
---@return number
function System.Collections.CompatibleComparer:Compare(a, b) end
---@param obj System.Object
---@return number
function System.Collections.CompatibleComparer:GetHashCode(obj) end

---@class System.Collections.CaseInsensitiveComparer : System.Object
---@field Default System.Collections.CaseInsensitiveComparer
---@field DefaultInvariant System.Collections.CaseInsensitiveComparer
System.Collections.CaseInsensitiveComparer = {}
---@alias CS.System.Collections.CaseInsensitiveComparer System.Collections.CaseInsensitiveComparer
CS.System.Collections.CaseInsensitiveComparer = System.Collections.CaseInsensitiveComparer

---@overload fun() : System.Collections.CaseInsensitiveComparer
---@param culture System.Globalization.CultureInfo
---@return System.Collections.CaseInsensitiveComparer
function System.Collections.CaseInsensitiveComparer.New(culture) end
---@param a System.Object
---@param b System.Object
---@return number
function System.Collections.CaseInsensitiveComparer:Compare(a, b) end

---@class System.Collections.CaseInsensitiveHashCodeProvider : System.Object
---@field Default System.Collections.CaseInsensitiveHashCodeProvider
---@field DefaultInvariant System.Collections.CaseInsensitiveHashCodeProvider
System.Collections.CaseInsensitiveHashCodeProvider = {}
---@alias CS.System.Collections.CaseInsensitiveHashCodeProvider System.Collections.CaseInsensitiveHashCodeProvider
CS.System.Collections.CaseInsensitiveHashCodeProvider = System.Collections.CaseInsensitiveHashCodeProvider

---@overload fun() : System.Collections.CaseInsensitiveHashCodeProvider
---@param culture System.Globalization.CultureInfo
---@return System.Collections.CaseInsensitiveHashCodeProvider
function System.Collections.CaseInsensitiveHashCodeProvider.New(culture) end
---@param obj System.Object
---@return number
function System.Collections.CaseInsensitiveHashCodeProvider:GetHashCode(obj) end

---@class System.Collections.CollectionBase : System.Object
---@field Capacity number
---@field Count number
System.Collections.CollectionBase = {}
---@alias CS.System.Collections.CollectionBase System.Collections.CollectionBase
CS.System.Collections.CollectionBase = System.Collections.CollectionBase

function System.Collections.CollectionBase:Clear() end
---@param index number
function System.Collections.CollectionBase:RemoveAt(index) end
---@return System.Collections.IEnumerator
function System.Collections.CollectionBase:GetEnumerator() end

---@class System.Collections.DictionaryBase : System.Object
---@field Count number
System.Collections.DictionaryBase = {}
---@alias CS.System.Collections.DictionaryBase System.Collections.DictionaryBase
CS.System.Collections.DictionaryBase = System.Collections.DictionaryBase

---@param array System.Array
---@param index number
function System.Collections.DictionaryBase:CopyTo(array, index) end
function System.Collections.DictionaryBase:Clear() end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.DictionaryBase:GetEnumerator() end

---@class System.Collections.KeyValuePairs : System.Object
System.Collections.KeyValuePairs = {}
---@alias CS.System.Collections.KeyValuePairs System.Collections.KeyValuePairs
CS.System.Collections.KeyValuePairs = System.Collections.KeyValuePairs

---@param key System.Object
---@param value System.Object
---@return System.Collections.KeyValuePairs
function System.Collections.KeyValuePairs.New(key, value) end

---@class System.Collections.Queue : System.Object
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Collections.Queue = {}
---@alias CS.System.Collections.Queue System.Collections.Queue
CS.System.Collections.Queue = System.Collections.Queue

---@overload fun() : System.Collections.Queue
---@overload fun(capacity: number) : System.Collections.Queue
---@overload fun(capacity: number, growFactor: number) : System.Collections.Queue
---@param col System.Collections.ICollection
---@return System.Collections.Queue
function System.Collections.Queue.New(col) end
---@param queue System.Collections.Queue
---@return System.Collections.Queue
function System.Collections.Queue.Synchronized(queue) end
---@return System.Object
function System.Collections.Queue:Clone() end
function System.Collections.Queue:Clear() end
---@param array System.Array
---@param index number
function System.Collections.Queue:CopyTo(array, index) end
---@param obj System.Object
function System.Collections.Queue:Enqueue(obj) end
---@return System.Collections.IEnumerator
function System.Collections.Queue:GetEnumerator() end
---@return System.Object
function System.Collections.Queue:Dequeue() end
---@return System.Object
function System.Collections.Queue:Peek() end
---@param obj System.Object
---@return boolean
function System.Collections.Queue:Contains(obj) end
---@return System.Object[]
function System.Collections.Queue:ToArray() end
function System.Collections.Queue:TrimToSize() end

---@class System.Collections.Queue.SynchronizedQueue : System.Collections.Queue
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Count number
System.Collections.Queue.SynchronizedQueue = {}
---@alias CS.System.Collections.Queue.SynchronizedQueue System.Collections.Queue.SynchronizedQueue
CS.System.Collections.Queue.SynchronizedQueue = System.Collections.Queue.SynchronizedQueue

function System.Collections.Queue.SynchronizedQueue:Clear() end
---@return System.Object
function System.Collections.Queue.SynchronizedQueue:Clone() end
---@param obj System.Object
---@return boolean
function System.Collections.Queue.SynchronizedQueue:Contains(obj) end
---@param array System.Array
---@param arrayIndex number
function System.Collections.Queue.SynchronizedQueue:CopyTo(array, arrayIndex) end
---@param value System.Object
function System.Collections.Queue.SynchronizedQueue:Enqueue(value) end
---@return System.Object
function System.Collections.Queue.SynchronizedQueue:Dequeue() end
---@return System.Collections.IEnumerator
function System.Collections.Queue.SynchronizedQueue:GetEnumerator() end
---@return System.Object
function System.Collections.Queue.SynchronizedQueue:Peek() end
---@return System.Object[]
function System.Collections.Queue.SynchronizedQueue:ToArray() end
function System.Collections.Queue.SynchronizedQueue:TrimToSize() end

---@class System.Collections.Queue.QueueEnumerator : System.Object
---@field Current System.Object
System.Collections.Queue.QueueEnumerator = {}
---@alias CS.System.Collections.Queue.QueueEnumerator System.Collections.Queue.QueueEnumerator
CS.System.Collections.Queue.QueueEnumerator = System.Collections.Queue.QueueEnumerator

---@return System.Object
function System.Collections.Queue.QueueEnumerator:Clone() end
---@return boolean
function System.Collections.Queue.QueueEnumerator:MoveNext() end
function System.Collections.Queue.QueueEnumerator:Reset() end

---@class System.Collections.Queue.QueueDebugView : System.Object
---@field Items System.Object[]
System.Collections.Queue.QueueDebugView = {}
---@alias CS.System.Collections.Queue.QueueDebugView System.Collections.Queue.QueueDebugView
CS.System.Collections.Queue.QueueDebugView = System.Collections.Queue.QueueDebugView

---@param queue System.Collections.Queue
---@return System.Collections.Queue.QueueDebugView
function System.Collections.Queue.QueueDebugView.New(queue) end

---@class System.Collections.ReadOnlyCollectionBase : System.Object
---@field Count number
System.Collections.ReadOnlyCollectionBase = {}
---@alias CS.System.Collections.ReadOnlyCollectionBase System.Collections.ReadOnlyCollectionBase
CS.System.Collections.ReadOnlyCollectionBase = System.Collections.ReadOnlyCollectionBase

---@return System.Collections.IEnumerator
function System.Collections.ReadOnlyCollectionBase:GetEnumerator() end

---@class System.Collections.SortedList : System.Object
---@field Capacity number
---@field Count number
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Object
System.Collections.SortedList = {}
---@alias CS.System.Collections.SortedList System.Collections.SortedList
CS.System.Collections.SortedList = System.Collections.SortedList

---@overload fun() : System.Collections.SortedList
---@overload fun(initialCapacity: number) : System.Collections.SortedList
---@overload fun(comparer: System.Collections.IComparer) : System.Collections.SortedList
---@overload fun(comparer: System.Collections.IComparer, capacity: number) : System.Collections.SortedList
---@overload fun(d: System.Collections.IDictionary) : System.Collections.SortedList
---@param d System.Collections.IDictionary
---@param comparer System.Collections.IComparer
---@return System.Collections.SortedList
function System.Collections.SortedList.New(d, comparer) end
---@param list System.Collections.SortedList
---@return System.Collections.SortedList
function System.Collections.SortedList.Synchronized(list) end
---@param key System.Object
---@param value System.Object
function System.Collections.SortedList:Add(key, value) end
function System.Collections.SortedList:Clear() end
---@return System.Object
function System.Collections.SortedList:Clone() end
---@param key System.Object
---@return boolean
function System.Collections.SortedList:Contains(key) end
---@param key System.Object
---@return boolean
function System.Collections.SortedList:ContainsKey(key) end
---@param value System.Object
---@return boolean
function System.Collections.SortedList:ContainsValue(value) end
---@param array System.Array
---@param arrayIndex number
function System.Collections.SortedList:CopyTo(array, arrayIndex) end
---@param index number
---@return System.Object
function System.Collections.SortedList:GetByIndex(index) end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.SortedList:GetEnumerator() end
---@param index number
---@return System.Object
function System.Collections.SortedList:GetKey(index) end
---@return System.Collections.IList
function System.Collections.SortedList:GetKeyList() end
---@return System.Collections.IList
function System.Collections.SortedList:GetValueList() end
---@param key System.Object
---@return number
function System.Collections.SortedList:IndexOfKey(key) end
---@param value System.Object
---@return number
function System.Collections.SortedList:IndexOfValue(value) end
---@param index number
function System.Collections.SortedList:RemoveAt(index) end
---@param key System.Object
function System.Collections.SortedList:Remove(key) end
---@param index number
---@param value System.Object
function System.Collections.SortedList:SetByIndex(index, value) end
function System.Collections.SortedList:TrimToSize() end

---@class System.Collections.SortedList.SyncSortedList : System.Collections.SortedList
---@field Count number
---@field SyncRoot System.Object
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field Capacity number
System.Collections.SortedList.SyncSortedList = {}
---@alias CS.System.Collections.SortedList.SyncSortedList System.Collections.SortedList.SyncSortedList
CS.System.Collections.SortedList.SyncSortedList = System.Collections.SortedList.SyncSortedList

---@param key System.Object
---@param value System.Object
function System.Collections.SortedList.SyncSortedList:Add(key, value) end
function System.Collections.SortedList.SyncSortedList:Clear() end
---@return System.Object
function System.Collections.SortedList.SyncSortedList:Clone() end
---@param key System.Object
---@return boolean
function System.Collections.SortedList.SyncSortedList:Contains(key) end
---@param key System.Object
---@return boolean
function System.Collections.SortedList.SyncSortedList:ContainsKey(key) end
---@param key System.Object
---@return boolean
function System.Collections.SortedList.SyncSortedList:ContainsValue(key) end
---@param array System.Array
---@param index number
function System.Collections.SortedList.SyncSortedList:CopyTo(array, index) end
---@param index number
---@return System.Object
function System.Collections.SortedList.SyncSortedList:GetByIndex(index) end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.SortedList.SyncSortedList:GetEnumerator() end
---@param index number
---@return System.Object
function System.Collections.SortedList.SyncSortedList:GetKey(index) end
---@return System.Collections.IList
function System.Collections.SortedList.SyncSortedList:GetKeyList() end
---@return System.Collections.IList
function System.Collections.SortedList.SyncSortedList:GetValueList() end
---@param key System.Object
---@return number
function System.Collections.SortedList.SyncSortedList:IndexOfKey(key) end
---@param value System.Object
---@return number
function System.Collections.SortedList.SyncSortedList:IndexOfValue(value) end
---@param index number
function System.Collections.SortedList.SyncSortedList:RemoveAt(index) end
---@param key System.Object
function System.Collections.SortedList.SyncSortedList:Remove(key) end
---@param index number
---@param value System.Object
function System.Collections.SortedList.SyncSortedList:SetByIndex(index, value) end
function System.Collections.SortedList.SyncSortedList:TrimToSize() end

---@class System.Collections.SortedList.SortedListEnumerator : System.Object
---@field Key System.Object
---@field Entry System.Collections.DictionaryEntry
---@field Current System.Object
---@field Value System.Object
System.Collections.SortedList.SortedListEnumerator = {}
---@alias CS.System.Collections.SortedList.SortedListEnumerator System.Collections.SortedList.SortedListEnumerator
CS.System.Collections.SortedList.SortedListEnumerator = System.Collections.SortedList.SortedListEnumerator

---@return System.Object
function System.Collections.SortedList.SortedListEnumerator:Clone() end
---@return boolean
function System.Collections.SortedList.SortedListEnumerator:MoveNext() end
function System.Collections.SortedList.SortedListEnumerator:Reset() end

---@class System.Collections.SortedList.KeyList : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Object
System.Collections.SortedList.KeyList = {}
---@alias CS.System.Collections.SortedList.KeyList System.Collections.SortedList.KeyList
CS.System.Collections.SortedList.KeyList = System.Collections.SortedList.KeyList

---@param key System.Object
---@return number
function System.Collections.SortedList.KeyList:Add(key) end
function System.Collections.SortedList.KeyList:Clear() end
---@param key System.Object
---@return boolean
function System.Collections.SortedList.KeyList:Contains(key) end
---@param array System.Array
---@param arrayIndex number
function System.Collections.SortedList.KeyList:CopyTo(array, arrayIndex) end
---@param index number
---@param value System.Object
function System.Collections.SortedList.KeyList:Insert(index, value) end
---@return System.Collections.IEnumerator
function System.Collections.SortedList.KeyList:GetEnumerator() end
---@param key System.Object
---@return number
function System.Collections.SortedList.KeyList:IndexOf(key) end
---@param key System.Object
function System.Collections.SortedList.KeyList:Remove(key) end
---@param index number
function System.Collections.SortedList.KeyList:RemoveAt(index) end

---@class System.Collections.SortedList.ValueList : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Object
System.Collections.SortedList.ValueList = {}
---@alias CS.System.Collections.SortedList.ValueList System.Collections.SortedList.ValueList
CS.System.Collections.SortedList.ValueList = System.Collections.SortedList.ValueList

---@param key System.Object
---@return number
function System.Collections.SortedList.ValueList:Add(key) end
function System.Collections.SortedList.ValueList:Clear() end
---@param value System.Object
---@return boolean
function System.Collections.SortedList.ValueList:Contains(value) end
---@param array System.Array
---@param arrayIndex number
function System.Collections.SortedList.ValueList:CopyTo(array, arrayIndex) end
---@param index number
---@param value System.Object
function System.Collections.SortedList.ValueList:Insert(index, value) end
---@return System.Collections.IEnumerator
function System.Collections.SortedList.ValueList:GetEnumerator() end
---@param value System.Object
---@return number
function System.Collections.SortedList.ValueList:IndexOf(value) end
---@param value System.Object
function System.Collections.SortedList.ValueList:Remove(value) end
---@param index number
function System.Collections.SortedList.ValueList:RemoveAt(index) end

---@class System.Collections.SortedList.SortedListDebugView : System.Object
---@field Items System.Collections.KeyValuePairs[]
System.Collections.SortedList.SortedListDebugView = {}
---@alias CS.System.Collections.SortedList.SortedListDebugView System.Collections.SortedList.SortedListDebugView
CS.System.Collections.SortedList.SortedListDebugView = System.Collections.SortedList.SortedListDebugView

---@param sortedList System.Collections.SortedList
---@return System.Collections.SortedList.SortedListDebugView
function System.Collections.SortedList.SortedListDebugView.New(sortedList) end

---@class System.Collections.Stack : System.Object
---@field Count number
---@field IsSynchronized boolean
---@field SyncRoot System.Object
System.Collections.Stack = {}
---@alias CS.System.Collections.Stack System.Collections.Stack
CS.System.Collections.Stack = System.Collections.Stack

---@overload fun() : System.Collections.Stack
---@overload fun(initialCapacity: number) : System.Collections.Stack
---@param col System.Collections.ICollection
---@return System.Collections.Stack
function System.Collections.Stack.New(col) end
---@param stack System.Collections.Stack
---@return System.Collections.Stack
function System.Collections.Stack.Synchronized(stack) end
function System.Collections.Stack:Clear() end
---@return System.Object
function System.Collections.Stack:Clone() end
---@param obj System.Object
---@return boolean
function System.Collections.Stack:Contains(obj) end
---@param array System.Array
---@param index number
function System.Collections.Stack:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Collections.Stack:GetEnumerator() end
---@return System.Object
function System.Collections.Stack:Peek() end
---@return System.Object
function System.Collections.Stack:Pop() end
---@param obj System.Object
function System.Collections.Stack:Push(obj) end
---@return System.Object[]
function System.Collections.Stack:ToArray() end

---@class System.Collections.Stack.SyncStack : System.Collections.Stack
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Count number
System.Collections.Stack.SyncStack = {}
---@alias CS.System.Collections.Stack.SyncStack System.Collections.Stack.SyncStack
CS.System.Collections.Stack.SyncStack = System.Collections.Stack.SyncStack

---@param obj System.Object
---@return boolean
function System.Collections.Stack.SyncStack:Contains(obj) end
---@return System.Object
function System.Collections.Stack.SyncStack:Clone() end
function System.Collections.Stack.SyncStack:Clear() end
---@param array System.Array
---@param arrayIndex number
function System.Collections.Stack.SyncStack:CopyTo(array, arrayIndex) end
---@param value System.Object
function System.Collections.Stack.SyncStack:Push(value) end
---@return System.Object
function System.Collections.Stack.SyncStack:Pop() end
---@return System.Collections.IEnumerator
function System.Collections.Stack.SyncStack:GetEnumerator() end
---@return System.Object
function System.Collections.Stack.SyncStack:Peek() end
---@return System.Object[]
function System.Collections.Stack.SyncStack:ToArray() end

---@class System.Collections.Stack.StackEnumerator : System.Object
---@field Current System.Object
System.Collections.Stack.StackEnumerator = {}
---@alias CS.System.Collections.Stack.StackEnumerator System.Collections.Stack.StackEnumerator
CS.System.Collections.Stack.StackEnumerator = System.Collections.Stack.StackEnumerator

---@return System.Object
function System.Collections.Stack.StackEnumerator:Clone() end
---@return boolean
function System.Collections.Stack.StackEnumerator:MoveNext() end
function System.Collections.Stack.StackEnumerator:Reset() end

---@class System.Collections.Stack.StackDebugView : System.Object
---@field Items System.Object[]
System.Collections.Stack.StackDebugView = {}
---@alias CS.System.Collections.Stack.StackDebugView System.Collections.Stack.StackDebugView
CS.System.Collections.Stack.StackDebugView = System.Collections.Stack.StackDebugView

---@param stack System.Collections.Stack
---@return System.Collections.Stack.StackDebugView
function System.Collections.Stack.StackDebugView.New(stack) end

---@class System.Collections.BitArray : System.Object
---@field Item boolean
---@field Length number
---@field Count number
---@field SyncRoot System.Object
---@field IsSynchronized boolean
---@field IsReadOnly boolean
System.Collections.BitArray = {}
---@alias CS.System.Collections.BitArray System.Collections.BitArray
CS.System.Collections.BitArray = System.Collections.BitArray

---@overload fun(length: number) : System.Collections.BitArray
---@overload fun(length: number, defaultValue: boolean) : System.Collections.BitArray
---@overload fun(bytes: System.Byte[]) : System.Collections.BitArray
---@overload fun(values: System.Boolean[]) : System.Collections.BitArray
---@overload fun(values: System.Int32[]) : System.Collections.BitArray
---@param bits System.Collections.BitArray
---@return System.Collections.BitArray
function System.Collections.BitArray.New(bits) end
---@param index number
---@return boolean
function System.Collections.BitArray:Get(index) end
---@param index number
---@param value boolean
function System.Collections.BitArray:Set(index, value) end
---@param value boolean
function System.Collections.BitArray:SetAll(value) end
---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function System.Collections.BitArray:And(value) end
---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function System.Collections.BitArray:Or(value) end
---@param value System.Collections.BitArray
---@return System.Collections.BitArray
function System.Collections.BitArray:Xor(value) end
---@return System.Collections.BitArray
function System.Collections.BitArray:Not() end
---@param count number
---@return System.Collections.BitArray
function System.Collections.BitArray:RightShift(count) end
---@param count number
---@return System.Collections.BitArray
function System.Collections.BitArray:LeftShift(count) end
---@param array System.Array
---@param index number
function System.Collections.BitArray:CopyTo(array, index) end
---@return System.Object
function System.Collections.BitArray:Clone() end
---@return System.Collections.IEnumerator
function System.Collections.BitArray:GetEnumerator() end

---@class System.Collections.BitArray.BitArrayEnumeratorSimple : System.Object
---@field Current System.Object
System.Collections.BitArray.BitArrayEnumeratorSimple = {}
---@alias CS.System.Collections.BitArray.BitArrayEnumeratorSimple System.Collections.BitArray.BitArrayEnumeratorSimple
CS.System.Collections.BitArray.BitArrayEnumeratorSimple = System.Collections.BitArray.BitArrayEnumeratorSimple

---@return System.Object
function System.Collections.BitArray.BitArrayEnumeratorSimple:Clone() end
---@return boolean
function System.Collections.BitArray.BitArrayEnumeratorSimple:MoveNext() end
function System.Collections.BitArray.BitArrayEnumeratorSimple:Reset() end

---@class System.Collections.StructuralComparisons : System.Object
---@field StructuralComparer System.Collections.IComparer
---@field StructuralEqualityComparer System.Collections.IEqualityComparer
System.Collections.StructuralComparisons = {}
---@alias CS.System.Collections.StructuralComparisons System.Collections.StructuralComparisons
CS.System.Collections.StructuralComparisons = System.Collections.StructuralComparisons


---@class System.Collections.StructuralEqualityComparer : System.Object
System.Collections.StructuralEqualityComparer = {}
---@alias CS.System.Collections.StructuralEqualityComparer System.Collections.StructuralEqualityComparer
CS.System.Collections.StructuralEqualityComparer = System.Collections.StructuralEqualityComparer

---@return System.Collections.StructuralEqualityComparer
function System.Collections.StructuralEqualityComparer.New() end
---@param x System.Object
---@param y System.Object
---@return boolean
function System.Collections.StructuralEqualityComparer:Equals(x, y) end
---@param obj System.Object
---@return number
function System.Collections.StructuralEqualityComparer:GetHashCode(obj) end

---@class System.Collections.StructuralComparer : System.Object
System.Collections.StructuralComparer = {}
---@alias CS.System.Collections.StructuralComparer System.Collections.StructuralComparer
CS.System.Collections.StructuralComparer = System.Collections.StructuralComparer

---@return System.Collections.StructuralComparer
function System.Collections.StructuralComparer.New() end
---@param x System.Object
---@param y System.Object
---@return number
function System.Collections.StructuralComparer:Compare(x, y) end

---@class System.Collections.ArrayList : System.Object
---@field Capacity number
---@field Count number
---@field IsFixedSize boolean
---@field IsReadOnly boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Object
System.Collections.ArrayList = {}
---@alias CS.System.Collections.ArrayList System.Collections.ArrayList
CS.System.Collections.ArrayList = System.Collections.ArrayList

---@overload fun() : System.Collections.ArrayList
---@overload fun(capacity: number) : System.Collections.ArrayList
---@param c System.Collections.ICollection
---@return System.Collections.ArrayList
function System.Collections.ArrayList.New(c) end
---@param list System.Collections.IList
---@return System.Collections.ArrayList
function System.Collections.ArrayList.Adapter(list) end
---@overload fun(list: System.Collections.IList) : System.Collections.IList
---@param list System.Collections.ArrayList
---@return System.Collections.ArrayList
function System.Collections.ArrayList.FixedSize(list) end
---@overload fun(list: System.Collections.IList) : System.Collections.IList
---@param list System.Collections.ArrayList
---@return System.Collections.ArrayList
function System.Collections.ArrayList.ReadOnly(list) end
---@param value System.Object
---@param count number
---@return System.Collections.ArrayList
function System.Collections.ArrayList.Repeat(value, count) end
---@overload fun(list: System.Collections.IList) : System.Collections.IList
---@param list System.Collections.ArrayList
---@return System.Collections.ArrayList
function System.Collections.ArrayList.Synchronized(list) end
---@param value System.Object
---@return number
function System.Collections.ArrayList:Add(value) end
---@param c System.Collections.ICollection
function System.Collections.ArrayList:AddRange(c) end
---@overload fun(self: System.Collections.ArrayList, index: number, count: number, value: System.Object, comparer: System.Collections.IComparer) : number
---@overload fun(self: System.Collections.ArrayList, value: System.Object) : number
---@param value System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Collections.ArrayList:BinarySearch(value, comparer) end
function System.Collections.ArrayList:Clear() end
---@return System.Object
function System.Collections.ArrayList:Clone() end
---@param item System.Object
---@return boolean
function System.Collections.ArrayList:Contains(item) end
---@overload fun(self: System.Collections.ArrayList, array: System.Array)
---@overload fun(self: System.Collections.ArrayList, array: System.Array, arrayIndex: number)
---@param index number
---@param array System.Array
---@param arrayIndex number
---@param count number
function System.Collections.ArrayList:CopyTo(index, array, arrayIndex, count) end
---@overload fun() : System.Collections.IEnumerator
---@param index number
---@param count number
---@return System.Collections.IEnumerator
function System.Collections.ArrayList:GetEnumerator(index, count) end
---@overload fun(self: System.Collections.ArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList:IndexOf(value, startIndex, count) end
---@param index number
---@param value System.Object
function System.Collections.ArrayList:Insert(index, value) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList:InsertRange(index, c) end
---@overload fun(self: System.Collections.ArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList:LastIndexOf(value, startIndex, count) end
---@param obj System.Object
function System.Collections.ArrayList:Remove(obj) end
---@param index number
function System.Collections.ArrayList:RemoveAt(index) end
---@param index number
---@param count number
function System.Collections.ArrayList:RemoveRange(index, count) end
---@overload fun()
---@param index number
---@param count number
function System.Collections.ArrayList:Reverse(index, count) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList:SetRange(index, c) end
---@param index number
---@param count number
---@return System.Collections.ArrayList
function System.Collections.ArrayList:GetRange(index, count) end
---@overload fun()
---@overload fun(self: System.Collections.ArrayList, comparer: System.Collections.IComparer)
---@param index number
---@param count number
---@param comparer System.Collections.IComparer
function System.Collections.ArrayList:Sort(index, count, comparer) end
---@overload fun() : System.Object[]
---@param type System.Type
---@return System.Array
function System.Collections.ArrayList:ToArray(type) end
function System.Collections.ArrayList:TrimToSize() end

---@class System.Collections.ArrayList.IListWrapper : System.Collections.ArrayList
---@field Capacity number
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
System.Collections.ArrayList.IListWrapper = {}
---@alias CS.System.Collections.ArrayList.IListWrapper System.Collections.ArrayList.IListWrapper
CS.System.Collections.ArrayList.IListWrapper = System.Collections.ArrayList.IListWrapper

---@param obj System.Object
---@return number
function System.Collections.ArrayList.IListWrapper:Add(obj) end
---@param c System.Collections.ICollection
function System.Collections.ArrayList.IListWrapper:AddRange(c) end
---@param index number
---@param count number
---@param value System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Collections.ArrayList.IListWrapper:BinarySearch(index, count, value, comparer) end
function System.Collections.ArrayList.IListWrapper:Clear() end
---@return System.Object
function System.Collections.ArrayList.IListWrapper:Clone() end
---@param obj System.Object
---@return boolean
function System.Collections.ArrayList.IListWrapper:Contains(obj) end
---@overload fun(self: System.Collections.ArrayList.IListWrapper, array: System.Array, index: number)
---@param index number
---@param array System.Array
---@param arrayIndex number
---@param count number
function System.Collections.ArrayList.IListWrapper:CopyTo(index, array, arrayIndex, count) end
---@overload fun() : System.Collections.IEnumerator
---@param index number
---@param count number
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.IListWrapper:GetEnumerator(index, count) end
---@overload fun(self: System.Collections.ArrayList.IListWrapper, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.IListWrapper, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.IListWrapper:IndexOf(value, startIndex, count) end
---@param index number
---@param obj System.Object
function System.Collections.ArrayList.IListWrapper:Insert(index, obj) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.IListWrapper:InsertRange(index, c) end
---@overload fun(self: System.Collections.ArrayList.IListWrapper, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.IListWrapper, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.IListWrapper:LastIndexOf(value, startIndex, count) end
---@param value System.Object
function System.Collections.ArrayList.IListWrapper:Remove(value) end
---@param index number
function System.Collections.ArrayList.IListWrapper:RemoveAt(index) end
---@param index number
---@param count number
function System.Collections.ArrayList.IListWrapper:RemoveRange(index, count) end
---@param index number
---@param count number
function System.Collections.ArrayList.IListWrapper:Reverse(index, count) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.IListWrapper:SetRange(index, c) end
---@param index number
---@param count number
---@return System.Collections.ArrayList
function System.Collections.ArrayList.IListWrapper:GetRange(index, count) end
---@param index number
---@param count number
---@param comparer System.Collections.IComparer
function System.Collections.ArrayList.IListWrapper:Sort(index, count, comparer) end
---@overload fun() : System.Object[]
---@param type System.Type
---@return System.Array
function System.Collections.ArrayList.IListWrapper:ToArray(type) end
function System.Collections.ArrayList.IListWrapper:TrimToSize() end

---@class System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper : System.Object
---@field Current System.Object
System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper = {}
---@alias CS.System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper
CS.System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper = System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper

---@return System.Object
function System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper:Clone() end
---@return boolean
function System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper:MoveNext() end
function System.Collections.ArrayList.IListWrapper.IListWrapperEnumWrapper:Reset() end

---@class System.Collections.ArrayList.SyncArrayList : System.Collections.ArrayList
---@field Capacity number
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
System.Collections.ArrayList.SyncArrayList = {}
---@alias CS.System.Collections.ArrayList.SyncArrayList System.Collections.ArrayList.SyncArrayList
CS.System.Collections.ArrayList.SyncArrayList = System.Collections.ArrayList.SyncArrayList

---@param value System.Object
---@return number
function System.Collections.ArrayList.SyncArrayList:Add(value) end
---@param c System.Collections.ICollection
function System.Collections.ArrayList.SyncArrayList:AddRange(c) end
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, value: System.Object, comparer: System.Collections.IComparer) : number
---@param index number
---@param count number
---@param value System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Collections.ArrayList.SyncArrayList:BinarySearch(index, count, value, comparer) end
function System.Collections.ArrayList.SyncArrayList:Clear() end
---@return System.Object
function System.Collections.ArrayList.SyncArrayList:Clone() end
---@param item System.Object
---@return boolean
function System.Collections.ArrayList.SyncArrayList:Contains(item) end
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, array: System.Array)
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, array: System.Array, index: number)
---@param index number
---@param array System.Array
---@param arrayIndex number
---@param count number
function System.Collections.ArrayList.SyncArrayList:CopyTo(index, array, arrayIndex, count) end
---@overload fun() : System.Collections.IEnumerator
---@param index number
---@param count number
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.SyncArrayList:GetEnumerator(index, count) end
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.SyncArrayList:IndexOf(value, startIndex, count) end
---@param index number
---@param value System.Object
function System.Collections.ArrayList.SyncArrayList:Insert(index, value) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.SyncArrayList:InsertRange(index, c) end
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.SyncArrayList:LastIndexOf(value, startIndex, count) end
---@param value System.Object
function System.Collections.ArrayList.SyncArrayList:Remove(value) end
---@param index number
function System.Collections.ArrayList.SyncArrayList:RemoveAt(index) end
---@param index number
---@param count number
function System.Collections.ArrayList.SyncArrayList:RemoveRange(index, count) end
---@param index number
---@param count number
function System.Collections.ArrayList.SyncArrayList:Reverse(index, count) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.SyncArrayList:SetRange(index, c) end
---@param index number
---@param count number
---@return System.Collections.ArrayList
function System.Collections.ArrayList.SyncArrayList:GetRange(index, count) end
---@overload fun()
---@overload fun(self: System.Collections.ArrayList.SyncArrayList, comparer: System.Collections.IComparer)
---@param index number
---@param count number
---@param comparer System.Collections.IComparer
function System.Collections.ArrayList.SyncArrayList:Sort(index, count, comparer) end
---@overload fun() : System.Object[]
---@param type System.Type
---@return System.Array
function System.Collections.ArrayList.SyncArrayList:ToArray(type) end
function System.Collections.ArrayList.SyncArrayList:TrimToSize() end

---@class System.Collections.ArrayList.SyncIList : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
System.Collections.ArrayList.SyncIList = {}
---@alias CS.System.Collections.ArrayList.SyncIList System.Collections.ArrayList.SyncIList
CS.System.Collections.ArrayList.SyncIList = System.Collections.ArrayList.SyncIList

---@param value System.Object
---@return number
function System.Collections.ArrayList.SyncIList:Add(value) end
function System.Collections.ArrayList.SyncIList:Clear() end
---@param item System.Object
---@return boolean
function System.Collections.ArrayList.SyncIList:Contains(item) end
---@param array System.Array
---@param index number
function System.Collections.ArrayList.SyncIList:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.SyncIList:GetEnumerator() end
---@param value System.Object
---@return number
function System.Collections.ArrayList.SyncIList:IndexOf(value) end
---@param index number
---@param value System.Object
function System.Collections.ArrayList.SyncIList:Insert(index, value) end
---@param value System.Object
function System.Collections.ArrayList.SyncIList:Remove(value) end
---@param index number
function System.Collections.ArrayList.SyncIList:RemoveAt(index) end

---@class System.Collections.ArrayList.FixedSizeList : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
System.Collections.ArrayList.FixedSizeList = {}
---@alias CS.System.Collections.ArrayList.FixedSizeList System.Collections.ArrayList.FixedSizeList
CS.System.Collections.ArrayList.FixedSizeList = System.Collections.ArrayList.FixedSizeList

---@param obj System.Object
---@return number
function System.Collections.ArrayList.FixedSizeList:Add(obj) end
function System.Collections.ArrayList.FixedSizeList:Clear() end
---@param obj System.Object
---@return boolean
function System.Collections.ArrayList.FixedSizeList:Contains(obj) end
---@param array System.Array
---@param index number
function System.Collections.ArrayList.FixedSizeList:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.FixedSizeList:GetEnumerator() end
---@param value System.Object
---@return number
function System.Collections.ArrayList.FixedSizeList:IndexOf(value) end
---@param index number
---@param obj System.Object
function System.Collections.ArrayList.FixedSizeList:Insert(index, obj) end
---@param value System.Object
function System.Collections.ArrayList.FixedSizeList:Remove(value) end
---@param index number
function System.Collections.ArrayList.FixedSizeList:RemoveAt(index) end

---@class System.Collections.ArrayList.FixedSizeArrayList : System.Collections.ArrayList
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
---@field Capacity number
System.Collections.ArrayList.FixedSizeArrayList = {}
---@alias CS.System.Collections.ArrayList.FixedSizeArrayList System.Collections.ArrayList.FixedSizeArrayList
CS.System.Collections.ArrayList.FixedSizeArrayList = System.Collections.ArrayList.FixedSizeArrayList

---@param obj System.Object
---@return number
function System.Collections.ArrayList.FixedSizeArrayList:Add(obj) end
---@param c System.Collections.ICollection
function System.Collections.ArrayList.FixedSizeArrayList:AddRange(c) end
---@param index number
---@param count number
---@param value System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Collections.ArrayList.FixedSizeArrayList:BinarySearch(index, count, value, comparer) end
function System.Collections.ArrayList.FixedSizeArrayList:Clear() end
---@return System.Object
function System.Collections.ArrayList.FixedSizeArrayList:Clone() end
---@param obj System.Object
---@return boolean
function System.Collections.ArrayList.FixedSizeArrayList:Contains(obj) end
---@overload fun(self: System.Collections.ArrayList.FixedSizeArrayList, array: System.Array, index: number)
---@param index number
---@param array System.Array
---@param arrayIndex number
---@param count number
function System.Collections.ArrayList.FixedSizeArrayList:CopyTo(index, array, arrayIndex, count) end
---@overload fun() : System.Collections.IEnumerator
---@param index number
---@param count number
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.FixedSizeArrayList:GetEnumerator(index, count) end
---@overload fun(self: System.Collections.ArrayList.FixedSizeArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.FixedSizeArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.FixedSizeArrayList:IndexOf(value, startIndex, count) end
---@param index number
---@param obj System.Object
function System.Collections.ArrayList.FixedSizeArrayList:Insert(index, obj) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.FixedSizeArrayList:InsertRange(index, c) end
---@overload fun(self: System.Collections.ArrayList.FixedSizeArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.FixedSizeArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.FixedSizeArrayList:LastIndexOf(value, startIndex, count) end
---@param value System.Object
function System.Collections.ArrayList.FixedSizeArrayList:Remove(value) end
---@param index number
function System.Collections.ArrayList.FixedSizeArrayList:RemoveAt(index) end
---@param index number
---@param count number
function System.Collections.ArrayList.FixedSizeArrayList:RemoveRange(index, count) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.FixedSizeArrayList:SetRange(index, c) end
---@param index number
---@param count number
---@return System.Collections.ArrayList
function System.Collections.ArrayList.FixedSizeArrayList:GetRange(index, count) end
---@param index number
---@param count number
function System.Collections.ArrayList.FixedSizeArrayList:Reverse(index, count) end
---@param index number
---@param count number
---@param comparer System.Collections.IComparer
function System.Collections.ArrayList.FixedSizeArrayList:Sort(index, count, comparer) end
---@overload fun() : System.Object[]
---@param type System.Type
---@return System.Array
function System.Collections.ArrayList.FixedSizeArrayList:ToArray(type) end
function System.Collections.ArrayList.FixedSizeArrayList:TrimToSize() end

---@class System.Collections.ArrayList.ReadOnlyList : System.Object
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
System.Collections.ArrayList.ReadOnlyList = {}
---@alias CS.System.Collections.ArrayList.ReadOnlyList System.Collections.ArrayList.ReadOnlyList
CS.System.Collections.ArrayList.ReadOnlyList = System.Collections.ArrayList.ReadOnlyList

---@param obj System.Object
---@return number
function System.Collections.ArrayList.ReadOnlyList:Add(obj) end
function System.Collections.ArrayList.ReadOnlyList:Clear() end
---@param obj System.Object
---@return boolean
function System.Collections.ArrayList.ReadOnlyList:Contains(obj) end
---@param array System.Array
---@param index number
function System.Collections.ArrayList.ReadOnlyList:CopyTo(array, index) end
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.ReadOnlyList:GetEnumerator() end
---@param value System.Object
---@return number
function System.Collections.ArrayList.ReadOnlyList:IndexOf(value) end
---@param index number
---@param obj System.Object
function System.Collections.ArrayList.ReadOnlyList:Insert(index, obj) end
---@param value System.Object
function System.Collections.ArrayList.ReadOnlyList:Remove(value) end
---@param index number
function System.Collections.ArrayList.ReadOnlyList:RemoveAt(index) end

---@class System.Collections.ArrayList.ReadOnlyArrayList : System.Collections.ArrayList
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
---@field Capacity number
System.Collections.ArrayList.ReadOnlyArrayList = {}
---@alias CS.System.Collections.ArrayList.ReadOnlyArrayList System.Collections.ArrayList.ReadOnlyArrayList
CS.System.Collections.ArrayList.ReadOnlyArrayList = System.Collections.ArrayList.ReadOnlyArrayList

---@param obj System.Object
---@return number
function System.Collections.ArrayList.ReadOnlyArrayList:Add(obj) end
---@param c System.Collections.ICollection
function System.Collections.ArrayList.ReadOnlyArrayList:AddRange(c) end
---@param index number
---@param count number
---@param value System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Collections.ArrayList.ReadOnlyArrayList:BinarySearch(index, count, value, comparer) end
function System.Collections.ArrayList.ReadOnlyArrayList:Clear() end
---@return System.Object
function System.Collections.ArrayList.ReadOnlyArrayList:Clone() end
---@param obj System.Object
---@return boolean
function System.Collections.ArrayList.ReadOnlyArrayList:Contains(obj) end
---@overload fun(self: System.Collections.ArrayList.ReadOnlyArrayList, array: System.Array, index: number)
---@param index number
---@param array System.Array
---@param arrayIndex number
---@param count number
function System.Collections.ArrayList.ReadOnlyArrayList:CopyTo(index, array, arrayIndex, count) end
---@overload fun() : System.Collections.IEnumerator
---@param index number
---@param count number
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.ReadOnlyArrayList:GetEnumerator(index, count) end
---@overload fun(self: System.Collections.ArrayList.ReadOnlyArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.ReadOnlyArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.ReadOnlyArrayList:IndexOf(value, startIndex, count) end
---@param index number
---@param obj System.Object
function System.Collections.ArrayList.ReadOnlyArrayList:Insert(index, obj) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.ReadOnlyArrayList:InsertRange(index, c) end
---@overload fun(self: System.Collections.ArrayList.ReadOnlyArrayList, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.ReadOnlyArrayList, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.ReadOnlyArrayList:LastIndexOf(value, startIndex, count) end
---@param value System.Object
function System.Collections.ArrayList.ReadOnlyArrayList:Remove(value) end
---@param index number
function System.Collections.ArrayList.ReadOnlyArrayList:RemoveAt(index) end
---@param index number
---@param count number
function System.Collections.ArrayList.ReadOnlyArrayList:RemoveRange(index, count) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.ReadOnlyArrayList:SetRange(index, c) end
---@param index number
---@param count number
---@return System.Collections.ArrayList
function System.Collections.ArrayList.ReadOnlyArrayList:GetRange(index, count) end
---@param index number
---@param count number
function System.Collections.ArrayList.ReadOnlyArrayList:Reverse(index, count) end
---@param index number
---@param count number
---@param comparer System.Collections.IComparer
function System.Collections.ArrayList.ReadOnlyArrayList:Sort(index, count, comparer) end
---@overload fun() : System.Object[]
---@param type System.Type
---@return System.Array
function System.Collections.ArrayList.ReadOnlyArrayList:ToArray(type) end
function System.Collections.ArrayList.ReadOnlyArrayList:TrimToSize() end

---@class System.Collections.ArrayList.ArrayListEnumerator : System.Object
---@field Current System.Object
System.Collections.ArrayList.ArrayListEnumerator = {}
---@alias CS.System.Collections.ArrayList.ArrayListEnumerator System.Collections.ArrayList.ArrayListEnumerator
CS.System.Collections.ArrayList.ArrayListEnumerator = System.Collections.ArrayList.ArrayListEnumerator

---@return System.Object
function System.Collections.ArrayList.ArrayListEnumerator:Clone() end
---@return boolean
function System.Collections.ArrayList.ArrayListEnumerator:MoveNext() end
function System.Collections.ArrayList.ArrayListEnumerator:Reset() end

---@class System.Collections.ArrayList.Range : System.Collections.ArrayList
---@field Capacity number
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Item System.Object
System.Collections.ArrayList.Range = {}
---@alias CS.System.Collections.ArrayList.Range System.Collections.ArrayList.Range
CS.System.Collections.ArrayList.Range = System.Collections.ArrayList.Range

---@param value System.Object
---@return number
function System.Collections.ArrayList.Range:Add(value) end
---@param c System.Collections.ICollection
function System.Collections.ArrayList.Range:AddRange(c) end
---@param index number
---@param count number
---@param value System.Object
---@param comparer System.Collections.IComparer
---@return number
function System.Collections.ArrayList.Range:BinarySearch(index, count, value, comparer) end
function System.Collections.ArrayList.Range:Clear() end
---@return System.Object
function System.Collections.ArrayList.Range:Clone() end
---@param item System.Object
---@return boolean
function System.Collections.ArrayList.Range:Contains(item) end
---@overload fun(self: System.Collections.ArrayList.Range, array: System.Array, index: number)
---@param index number
---@param array System.Array
---@param arrayIndex number
---@param count number
function System.Collections.ArrayList.Range:CopyTo(index, array, arrayIndex, count) end
---@overload fun() : System.Collections.IEnumerator
---@param index number
---@param count number
---@return System.Collections.IEnumerator
function System.Collections.ArrayList.Range:GetEnumerator(index, count) end
---@param index number
---@param count number
---@return System.Collections.ArrayList
function System.Collections.ArrayList.Range:GetRange(index, count) end
---@overload fun(self: System.Collections.ArrayList.Range, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.Range, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.Range:IndexOf(value, startIndex, count) end
---@param index number
---@param value System.Object
function System.Collections.ArrayList.Range:Insert(index, value) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.Range:InsertRange(index, c) end
---@overload fun(self: System.Collections.ArrayList.Range, value: System.Object) : number
---@overload fun(self: System.Collections.ArrayList.Range, value: System.Object, startIndex: number) : number
---@param value System.Object
---@param startIndex number
---@param count number
---@return number
function System.Collections.ArrayList.Range:LastIndexOf(value, startIndex, count) end
---@param index number
function System.Collections.ArrayList.Range:RemoveAt(index) end
---@param index number
---@param count number
function System.Collections.ArrayList.Range:RemoveRange(index, count) end
---@param index number
---@param count number
function System.Collections.ArrayList.Range:Reverse(index, count) end
---@param index number
---@param c System.Collections.ICollection
function System.Collections.ArrayList.Range:SetRange(index, c) end
---@param index number
---@param count number
---@param comparer System.Collections.IComparer
function System.Collections.ArrayList.Range:Sort(index, count, comparer) end
---@overload fun() : System.Object[]
---@param type System.Type
---@return System.Array
function System.Collections.ArrayList.Range:ToArray(type) end
function System.Collections.ArrayList.Range:TrimToSize() end

---@class System.Collections.ArrayList.ArrayListEnumeratorSimple : System.Object
---@field Current System.Object
System.Collections.ArrayList.ArrayListEnumeratorSimple = {}
---@alias CS.System.Collections.ArrayList.ArrayListEnumeratorSimple System.Collections.ArrayList.ArrayListEnumeratorSimple
CS.System.Collections.ArrayList.ArrayListEnumeratorSimple = System.Collections.ArrayList.ArrayListEnumeratorSimple

---@return System.Object
function System.Collections.ArrayList.ArrayListEnumeratorSimple:Clone() end
---@return boolean
function System.Collections.ArrayList.ArrayListEnumeratorSimple:MoveNext() end
function System.Collections.ArrayList.ArrayListEnumeratorSimple:Reset() end

---@class System.Collections.ArrayList.ArrayListDebugView : System.Object
---@field Items System.Object[]
System.Collections.ArrayList.ArrayListDebugView = {}
---@alias CS.System.Collections.ArrayList.ArrayListDebugView System.Collections.ArrayList.ArrayListDebugView
CS.System.Collections.ArrayList.ArrayListDebugView = System.Collections.ArrayList.ArrayListDebugView

---@param arrayList System.Collections.ArrayList
---@return System.Collections.ArrayList.ArrayListDebugView
function System.Collections.ArrayList.ArrayListDebugView.New(arrayList) end

---@class System.Collections.Hashtable : System.Object
---@field Item System.Object
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
---@field SyncRoot System.Object
---@field Count number
System.Collections.Hashtable = {}
---@alias CS.System.Collections.Hashtable System.Collections.Hashtable
CS.System.Collections.Hashtable = System.Collections.Hashtable

---@overload fun() : System.Collections.Hashtable
---@overload fun(capacity: number) : System.Collections.Hashtable
---@overload fun(capacity: number, loadFactor: number) : System.Collections.Hashtable
---@overload fun(capacity: number, loadFactor: number, equalityComparer: System.Collections.IEqualityComparer) : System.Collections.Hashtable
---@overload fun(hcp: System.Collections.IHashCodeProvider, comparer: System.Collections.IComparer) : System.Collections.Hashtable
---@overload fun(equalityComparer: System.Collections.IEqualityComparer) : System.Collections.Hashtable
---@overload fun(capacity: number, hcp: System.Collections.IHashCodeProvider, comparer: System.Collections.IComparer) : System.Collections.Hashtable
---@overload fun(capacity: number, equalityComparer: System.Collections.IEqualityComparer) : System.Collections.Hashtable
---@overload fun(d: System.Collections.IDictionary) : System.Collections.Hashtable
---@overload fun(d: System.Collections.IDictionary, loadFactor: number) : System.Collections.Hashtable
---@overload fun(d: System.Collections.IDictionary, hcp: System.Collections.IHashCodeProvider, comparer: System.Collections.IComparer) : System.Collections.Hashtable
---@overload fun(d: System.Collections.IDictionary, equalityComparer: System.Collections.IEqualityComparer) : System.Collections.Hashtable
---@overload fun(capacity: number, loadFactor: number, hcp: System.Collections.IHashCodeProvider, comparer: System.Collections.IComparer) : System.Collections.Hashtable
---@overload fun(d: System.Collections.IDictionary, loadFactor: number, hcp: System.Collections.IHashCodeProvider, comparer: System.Collections.IComparer) : System.Collections.Hashtable
---@param d System.Collections.IDictionary
---@param loadFactor number
---@param equalityComparer System.Collections.IEqualityComparer
---@return System.Collections.Hashtable
function System.Collections.Hashtable.New(d, loadFactor, equalityComparer) end
---@param table System.Collections.Hashtable
---@return System.Collections.Hashtable
function System.Collections.Hashtable.Synchronized(table) end
---@param key System.Object
---@param value System.Object
function System.Collections.Hashtable:Add(key, value) end
function System.Collections.Hashtable:Clear() end
---@return System.Object
function System.Collections.Hashtable:Clone() end
---@param key System.Object
---@return boolean
function System.Collections.Hashtable:Contains(key) end
---@param key System.Object
---@return boolean
function System.Collections.Hashtable:ContainsKey(key) end
---@param value System.Object
---@return boolean
function System.Collections.Hashtable:ContainsValue(value) end
---@param array System.Array
---@param arrayIndex number
function System.Collections.Hashtable:CopyTo(array, arrayIndex) end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.Hashtable:GetEnumerator() end
---@param key System.Object
function System.Collections.Hashtable:Remove(key) end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Collections.Hashtable:GetObjectData(info, context) end
---@param sender System.Object
function System.Collections.Hashtable:OnDeserialization(sender) end
---@param key System.Object
---@param out_value T
---@return boolean,T
function System.Collections.Hashtable:TryGetValue(key, out_value) end

---@class System.Collections.Hashtable.bucket : System.ValueType
---@field key System.Object
---@field val System.Object
---@field hash_coll number
System.Collections.Hashtable.bucket = {}
---@alias CS.System.Collections.Hashtable.bucket System.Collections.Hashtable.bucket
CS.System.Collections.Hashtable.bucket = System.Collections.Hashtable.bucket


---@class System.Collections.Hashtable.KeyCollection : System.Object
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Count number
System.Collections.Hashtable.KeyCollection = {}
---@alias CS.System.Collections.Hashtable.KeyCollection System.Collections.Hashtable.KeyCollection
CS.System.Collections.Hashtable.KeyCollection = System.Collections.Hashtable.KeyCollection

---@param array System.Array
---@param arrayIndex number
function System.Collections.Hashtable.KeyCollection:CopyTo(array, arrayIndex) end
---@return System.Collections.IEnumerator
function System.Collections.Hashtable.KeyCollection:GetEnumerator() end

---@class System.Collections.Hashtable.ValueCollection : System.Object
---@field IsSynchronized boolean
---@field SyncRoot System.Object
---@field Count number
System.Collections.Hashtable.ValueCollection = {}
---@alias CS.System.Collections.Hashtable.ValueCollection System.Collections.Hashtable.ValueCollection
CS.System.Collections.Hashtable.ValueCollection = System.Collections.Hashtable.ValueCollection

---@param array System.Array
---@param arrayIndex number
function System.Collections.Hashtable.ValueCollection:CopyTo(array, arrayIndex) end
---@return System.Collections.IEnumerator
function System.Collections.Hashtable.ValueCollection:GetEnumerator() end

---@class System.Collections.Hashtable.SyncHashtable : System.Collections.Hashtable
---@field Count number
---@field IsReadOnly boolean
---@field IsFixedSize boolean
---@field IsSynchronized boolean
---@field Item System.Object
---@field SyncRoot System.Object
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
System.Collections.Hashtable.SyncHashtable = {}
---@alias CS.System.Collections.Hashtable.SyncHashtable System.Collections.Hashtable.SyncHashtable
CS.System.Collections.Hashtable.SyncHashtable = System.Collections.Hashtable.SyncHashtable

---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Collections.Hashtable.SyncHashtable:GetObjectData(info, context) end
---@param key System.Object
---@param value System.Object
function System.Collections.Hashtable.SyncHashtable:Add(key, value) end
function System.Collections.Hashtable.SyncHashtable:Clear() end
---@param key System.Object
---@return boolean
function System.Collections.Hashtable.SyncHashtable:Contains(key) end
---@param key System.Object
---@return boolean
function System.Collections.Hashtable.SyncHashtable:ContainsKey(key) end
---@param key System.Object
---@return boolean
function System.Collections.Hashtable.SyncHashtable:ContainsValue(key) end
---@param array System.Array
---@param arrayIndex number
function System.Collections.Hashtable.SyncHashtable:CopyTo(array, arrayIndex) end
---@return System.Object
function System.Collections.Hashtable.SyncHashtable:Clone() end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.Hashtable.SyncHashtable:GetEnumerator() end
---@param key System.Object
function System.Collections.Hashtable.SyncHashtable:Remove(key) end
---@param sender System.Object
function System.Collections.Hashtable.SyncHashtable:OnDeserialization(sender) end

---@class System.Collections.Hashtable.HashtableEnumerator : System.Object
---@field Key System.Object
---@field Entry System.Collections.DictionaryEntry
---@field Current System.Object
---@field Value System.Object
System.Collections.Hashtable.HashtableEnumerator = {}
---@alias CS.System.Collections.Hashtable.HashtableEnumerator System.Collections.Hashtable.HashtableEnumerator
CS.System.Collections.Hashtable.HashtableEnumerator = System.Collections.Hashtable.HashtableEnumerator

---@return System.Object
function System.Collections.Hashtable.HashtableEnumerator:Clone() end
---@return boolean
function System.Collections.Hashtable.HashtableEnumerator:MoveNext() end
function System.Collections.Hashtable.HashtableEnumerator:Reset() end

---@class System.Collections.Hashtable.HashtableDebugView : System.Object
---@field Items System.Collections.KeyValuePairs[]
System.Collections.Hashtable.HashtableDebugView = {}
---@alias CS.System.Collections.Hashtable.HashtableDebugView System.Collections.Hashtable.HashtableDebugView
CS.System.Collections.Hashtable.HashtableDebugView = System.Collections.Hashtable.HashtableDebugView

---@param hashtable System.Collections.Hashtable
---@return System.Collections.Hashtable.HashtableDebugView
function System.Collections.Hashtable.HashtableDebugView.New(hashtable) end

---@class System.Collections.IHashCodeProvider
System.Collections.IHashCodeProvider = {}
---@alias CS.System.Collections.IHashCodeProvider System.Collections.IHashCodeProvider
CS.System.Collections.IHashCodeProvider = System.Collections.IHashCodeProvider

---@param obj System.Object
---@return number
function System.Collections.IHashCodeProvider:GetHashCode(obj) end

---@class System.Collections.EmptyReadOnlyDictionaryInternal : System.Object
---@field Count number
---@field SyncRoot System.Object
---@field IsSynchronized boolean
---@field Item System.Object
---@field Keys System.Collections.ICollection
---@field Values System.Collections.ICollection
---@field IsReadOnly boolean
---@field IsFixedSize boolean
System.Collections.EmptyReadOnlyDictionaryInternal = {}
---@alias CS.System.Collections.EmptyReadOnlyDictionaryInternal System.Collections.EmptyReadOnlyDictionaryInternal
CS.System.Collections.EmptyReadOnlyDictionaryInternal = System.Collections.EmptyReadOnlyDictionaryInternal

---@return System.Collections.EmptyReadOnlyDictionaryInternal
function System.Collections.EmptyReadOnlyDictionaryInternal.New() end
---@param array System.Array
---@param index number
function System.Collections.EmptyReadOnlyDictionaryInternal:CopyTo(array, index) end
---@param key System.Object
---@return boolean
function System.Collections.EmptyReadOnlyDictionaryInternal:Contains(key) end
---@param key System.Object
---@param value System.Object
function System.Collections.EmptyReadOnlyDictionaryInternal:Add(key, value) end
function System.Collections.EmptyReadOnlyDictionaryInternal:Clear() end
---@return System.Collections.IDictionaryEnumerator
function System.Collections.EmptyReadOnlyDictionaryInternal:GetEnumerator() end
---@param key System.Object
function System.Collections.EmptyReadOnlyDictionaryInternal:Remove(key) end

---@class System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator : System.Object
---@field Current System.Object
---@field Key System.Object
---@field Value System.Object
---@field Entry System.Collections.DictionaryEntry
System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator = {}
---@alias CS.System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator
CS.System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator = System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator

---@return System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator
function System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator.New() end
---@return boolean
function System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator:MoveNext() end
function System.Collections.EmptyReadOnlyDictionaryInternal.NodeEnumerator:Reset() end

---@class System.Collections.Concurrent.ConcurrentQueue : System.Object
---@field IsEmpty boolean
---@field Count number
System.Collections.Concurrent.ConcurrentQueue = {}
---@alias CS.System.Collections.Concurrent.ConcurrentQueue System.Collections.Concurrent.ConcurrentQueue
CS.System.Collections.Concurrent.ConcurrentQueue = System.Collections.Concurrent.ConcurrentQueue

---@overload fun() : System.Collections.Concurrent.ConcurrentQueue
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Concurrent.ConcurrentQueue
function System.Collections.Concurrent.ConcurrentQueue.New(collection) end
---@return T[]
function System.Collections.Concurrent.ConcurrentQueue:ToArray() end
---@param array T[]
---@param index number
function System.Collections.Concurrent.ConcurrentQueue:CopyTo(array, index) end
---@return System.Collections.Generic.IEnumerator[T]
function System.Collections.Concurrent.ConcurrentQueue:GetEnumerator() end
---@param item T
function System.Collections.Concurrent.ConcurrentQueue:Enqueue(item) end
---@param out_result T
---@return boolean,T
function System.Collections.Concurrent.ConcurrentQueue:TryDequeue(out_result) end
---@param out_result T
---@return boolean,T
function System.Collections.Concurrent.ConcurrentQueue:TryPeek(out_result) end
function System.Collections.Concurrent.ConcurrentQueue:Clear() end

---@class System.Collections.Concurrent.ConcurrentQueue.Segment : System.Object
System.Collections.Concurrent.ConcurrentQueue.Segment = {}
---@alias CS.System.Collections.Concurrent.ConcurrentQueue.Segment System.Collections.Concurrent.ConcurrentQueue.Segment
CS.System.Collections.Concurrent.ConcurrentQueue.Segment = System.Collections.Concurrent.ConcurrentQueue.Segment

---@param boundedLength number
---@return System.Collections.Concurrent.ConcurrentQueue.Segment
function System.Collections.Concurrent.ConcurrentQueue.Segment.New(boundedLength) end
---@param out_item T
---@return boolean,T
function System.Collections.Concurrent.ConcurrentQueue.Segment:TryDequeue(out_item) end
---@param out_result T
---@param resultUsed boolean
---@return boolean,T
function System.Collections.Concurrent.ConcurrentQueue.Segment:TryPeek(out_result, resultUsed) end
---@param item T
---@return boolean
function System.Collections.Concurrent.ConcurrentQueue.Segment:TryEnqueue(item) end

---@class System.Collections.Concurrent.ConcurrentQueue.Segment.Slot : System.ValueType
---@field Item T
---@field SequenceNumber number
System.Collections.Concurrent.ConcurrentQueue.Segment.Slot = {}
---@alias CS.System.Collections.Concurrent.ConcurrentQueue.Segment.Slot System.Collections.Concurrent.ConcurrentQueue.Segment.Slot
CS.System.Collections.Concurrent.ConcurrentQueue.Segment.Slot = System.Collections.Concurrent.ConcurrentQueue.Segment.Slot


---@class System.Collections.Concurrent.PaddedHeadAndTail : System.ValueType
---@field Head number
---@field Tail number
System.Collections.Concurrent.PaddedHeadAndTail = {}
---@alias CS.System.Collections.Concurrent.PaddedHeadAndTail System.Collections.Concurrent.PaddedHeadAndTail
CS.System.Collections.Concurrent.PaddedHeadAndTail = System.Collections.Concurrent.PaddedHeadAndTail


---@class System.Collections.Concurrent.CDSCollectionETWBCLProvider : System.Diagnostics.Tracing.EventSource
---@field Log System.Collections.Concurrent.CDSCollectionETWBCLProvider
System.Collections.Concurrent.CDSCollectionETWBCLProvider = {}
---@alias CS.System.Collections.Concurrent.CDSCollectionETWBCLProvider System.Collections.Concurrent.CDSCollectionETWBCLProvider
CS.System.Collections.Concurrent.CDSCollectionETWBCLProvider = System.Collections.Concurrent.CDSCollectionETWBCLProvider

---@param spinCount number
function System.Collections.Concurrent.CDSCollectionETWBCLProvider:ConcurrentStack_FastPushFailed(spinCount) end
---@param spinCount number
function System.Collections.Concurrent.CDSCollectionETWBCLProvider:ConcurrentStack_FastPopFailed(spinCount) end
---@param numOfBuckets number
function System.Collections.Concurrent.CDSCollectionETWBCLProvider:ConcurrentDictionary_AcquiringAllLocks(numOfBuckets) end
function System.Collections.Concurrent.CDSCollectionETWBCLProvider:ConcurrentBag_TryTakeSteals() end
function System.Collections.Concurrent.CDSCollectionETWBCLProvider:ConcurrentBag_TryPeekSteals() end

---@class System.Collections.Concurrent.ConcurrentDictionary : System.Object
---@field Item TValue
---@field Count number
---@field IsEmpty boolean
---@field Keys System.Collections.Generic.ICollection[TKey]
---@field Values System.Collections.Generic.ICollection[TValue]
System.Collections.Concurrent.ConcurrentDictionary = {}
---@alias CS.System.Collections.Concurrent.ConcurrentDictionary System.Collections.Concurrent.ConcurrentDictionary
CS.System.Collections.Concurrent.ConcurrentDictionary = System.Collections.Concurrent.ConcurrentDictionary

---@overload fun() : System.Collections.Concurrent.ConcurrentDictionary
---@overload fun(concurrencyLevel: number, capacity: number) : System.Collections.Concurrent.ConcurrentDictionary
---@overload fun(collection: System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[TKey,TValue]]) : System.Collections.Concurrent.ConcurrentDictionary
---@overload fun(comparer: System.Collections.Generic.IEqualityComparer[TKey]) : System.Collections.Concurrent.ConcurrentDictionary
---@overload fun(collection: System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[TKey,TValue]], comparer: System.Collections.Generic.IEqualityComparer[TKey]) : System.Collections.Concurrent.ConcurrentDictionary
---@overload fun(concurrencyLevel: number, collection: System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[TKey,TValue]], comparer: System.Collections.Generic.IEqualityComparer[TKey]) : System.Collections.Concurrent.ConcurrentDictionary
---@param concurrencyLevel number
---@param capacity number
---@param comparer System.Collections.Generic.IEqualityComparer[TKey]
---@return System.Collections.Concurrent.ConcurrentDictionary
function System.Collections.Concurrent.ConcurrentDictionary.New(concurrencyLevel, capacity, comparer) end
---@param key TKey
---@param value TValue
---@return boolean
function System.Collections.Concurrent.ConcurrentDictionary:TryAdd(key, value) end
---@param key TKey
---@return boolean
function System.Collections.Concurrent.ConcurrentDictionary:ContainsKey(key) end
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.Concurrent.ConcurrentDictionary:TryRemove(key, out_value) end
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.Concurrent.ConcurrentDictionary:TryGetValue(key, out_value) end
---@param key TKey
---@param newValue TValue
---@param comparisonValue TValue
---@return boolean
function System.Collections.Concurrent.ConcurrentDictionary:TryUpdate(key, newValue, comparisonValue) end
function System.Collections.Concurrent.ConcurrentDictionary:Clear() end
---@return System.Collections.Generic.KeyValuePair[TKey,TValue][]
function System.Collections.Concurrent.ConcurrentDictionary:ToArray() end
---@return System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[TKey,TValue]]
function System.Collections.Concurrent.ConcurrentDictionary:GetEnumerator() end
---@overload fun(self: System.Collections.Concurrent.ConcurrentDictionary, key: TKey, valueFactory: System.Func[TKey,TValue]) : TValue
---@param key TKey
---@param value TValue
---@return TValue
function System.Collections.Concurrent.ConcurrentDictionary:GetOrAdd(key, value) end
---@overload fun(self: System.Collections.Concurrent.ConcurrentDictionary, key: TKey, addValueFactory: System.Func[TKey,TValue], updateValueFactory: System.Func[TKey,TValue,TValue]) : TValue
---@param key TKey
---@param addValue TValue
---@param updateValueFactory System.Func[TKey,TValue,TValue]
---@return TValue
function System.Collections.Concurrent.ConcurrentDictionary:AddOrUpdate(key, addValue, updateValueFactory) end

---@class System.Collections.Concurrent.ConcurrentDictionary.Tables : System.Object
System.Collections.Concurrent.ConcurrentDictionary.Tables = {}
---@alias CS.System.Collections.Concurrent.ConcurrentDictionary.Tables System.Collections.Concurrent.ConcurrentDictionary.Tables
CS.System.Collections.Concurrent.ConcurrentDictionary.Tables = System.Collections.Concurrent.ConcurrentDictionary.Tables


---@class System.Collections.Concurrent.ConcurrentDictionary.Node : System.Object
System.Collections.Concurrent.ConcurrentDictionary.Node = {}
---@alias CS.System.Collections.Concurrent.ConcurrentDictionary.Node System.Collections.Concurrent.ConcurrentDictionary.Node
CS.System.Collections.Concurrent.ConcurrentDictionary.Node = System.Collections.Concurrent.ConcurrentDictionary.Node


---@class System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator : System.Object
---@field Entry System.Collections.DictionaryEntry
---@field Key System.Object
---@field Value System.Object
---@field Current System.Object
System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator = {}
---@alias CS.System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator
CS.System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator = System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator

---@return boolean
function System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator:MoveNext() end
function System.Collections.Concurrent.ConcurrentDictionary.DictionaryEnumerator:Reset() end

---@class System.Collections.Concurrent.IDictionaryDebugView : System.Object
---@field Items System.Collections.Generic.KeyValuePair[K,V][]
System.Collections.Concurrent.IDictionaryDebugView = {}
---@alias CS.System.Collections.Concurrent.IDictionaryDebugView System.Collections.Concurrent.IDictionaryDebugView
CS.System.Collections.Concurrent.IDictionaryDebugView = System.Collections.Concurrent.IDictionaryDebugView

---@param dictionary System.Collections.Generic.IDictionary[K,V]
---@return System.Collections.Concurrent.IDictionaryDebugView
function System.Collections.Concurrent.IDictionaryDebugView.New(dictionary) end

---@class System.Collections.Concurrent.ConcurrentStack : System.Object
---@field IsEmpty boolean
---@field Count number
System.Collections.Concurrent.ConcurrentStack = {}
---@alias CS.System.Collections.Concurrent.ConcurrentStack System.Collections.Concurrent.ConcurrentStack
CS.System.Collections.Concurrent.ConcurrentStack = System.Collections.Concurrent.ConcurrentStack

---@overload fun() : System.Collections.Concurrent.ConcurrentStack
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Concurrent.ConcurrentStack
function System.Collections.Concurrent.ConcurrentStack.New(collection) end
function System.Collections.Concurrent.ConcurrentStack:Clear() end
---@param array T[]
---@param index number
function System.Collections.Concurrent.ConcurrentStack:CopyTo(array, index) end
---@param item T
function System.Collections.Concurrent.ConcurrentStack:Push(item) end
---@overload fun(self: System.Collections.Concurrent.ConcurrentStack, items: T[])
---@param items T[]
---@param startIndex number
---@param count number
function System.Collections.Concurrent.ConcurrentStack:PushRange(items, startIndex, count) end
---@param out_result T
---@return boolean,T
function System.Collections.Concurrent.ConcurrentStack:TryPeek(out_result) end
---@param out_result T
---@return boolean,T
function System.Collections.Concurrent.ConcurrentStack:TryPop(out_result) end
---@overload fun(self: System.Collections.Concurrent.ConcurrentStack, items: T[]) : number
---@param items T[]
---@param startIndex number
---@param count number
---@return number
function System.Collections.Concurrent.ConcurrentStack:TryPopRange(items, startIndex, count) end
---@return T[]
function System.Collections.Concurrent.ConcurrentStack:ToArray() end
---@return System.Collections.Generic.IEnumerator[T]
function System.Collections.Concurrent.ConcurrentStack:GetEnumerator() end

---@class System.Collections.Concurrent.ConcurrentStack.Node : System.Object
System.Collections.Concurrent.ConcurrentStack.Node = {}
---@alias CS.System.Collections.Concurrent.ConcurrentStack.Node System.Collections.Concurrent.ConcurrentStack.Node
CS.System.Collections.Concurrent.ConcurrentStack.Node = System.Collections.Concurrent.ConcurrentStack.Node


---@class System.Collections.Concurrent.IProducerConsumerCollection
System.Collections.Concurrent.IProducerConsumerCollection = {}
---@alias CS.System.Collections.Concurrent.IProducerConsumerCollection System.Collections.Concurrent.IProducerConsumerCollection
CS.System.Collections.Concurrent.IProducerConsumerCollection = System.Collections.Concurrent.IProducerConsumerCollection

---@param array T[]
---@param index number
function System.Collections.Concurrent.IProducerConsumerCollection:CopyTo(array, index) end
---@param item T
---@return boolean
function System.Collections.Concurrent.IProducerConsumerCollection:TryAdd(item) end
---@param out_item T
---@return boolean,T
function System.Collections.Concurrent.IProducerConsumerCollection:TryTake(out_item) end
---@return T[]
function System.Collections.Concurrent.IProducerConsumerCollection:ToArray() end

---@class System.Collections.Concurrent.IProducerConsumerCollectionDebugView : System.Object
---@field Items T[]
System.Collections.Concurrent.IProducerConsumerCollectionDebugView = {}
---@alias CS.System.Collections.Concurrent.IProducerConsumerCollectionDebugView System.Collections.Concurrent.IProducerConsumerCollectionDebugView
CS.System.Collections.Concurrent.IProducerConsumerCollectionDebugView = System.Collections.Concurrent.IProducerConsumerCollectionDebugView

---@param collection System.Collections.Concurrent.IProducerConsumerCollection[T]
---@return System.Collections.Concurrent.IProducerConsumerCollectionDebugView
function System.Collections.Concurrent.IProducerConsumerCollectionDebugView.New(collection) end

---@class System.Collections.Concurrent.OrderablePartitioner : System.Collections.Concurrent.Partitioner[TSource]
---@field KeysOrderedInEachPartition boolean
---@field KeysOrderedAcrossPartitions boolean
---@field KeysNormalized boolean
System.Collections.Concurrent.OrderablePartitioner = {}
---@alias CS.System.Collections.Concurrent.OrderablePartitioner System.Collections.Concurrent.OrderablePartitioner
CS.System.Collections.Concurrent.OrderablePartitioner = System.Collections.Concurrent.OrderablePartitioner

---@param partitionCount number
---@return System.Collections.Generic.IList[System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]]
function System.Collections.Concurrent.OrderablePartitioner:GetOrderablePartitions(partitionCount) end
---@return System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
function System.Collections.Concurrent.OrderablePartitioner:GetOrderableDynamicPartitions() end
---@param partitionCount number
---@return System.Collections.Generic.IList[System.Collections.Generic.IEnumerator[TSource]]
function System.Collections.Concurrent.OrderablePartitioner:GetPartitions(partitionCount) end
---@return System.Collections.Generic.IEnumerable[TSource]
function System.Collections.Concurrent.OrderablePartitioner:GetDynamicPartitions() end

---@class System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices : System.Object
System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices = {}
---@alias CS.System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices
CS.System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices = System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices

---@param source System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
---@return System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices
function System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices.New(source) end
---@return System.Collections.Generic.IEnumerator[TSource]
function System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices:GetEnumerator() end
function System.Collections.Concurrent.OrderablePartitioner.EnumerableDropIndices:Dispose() end

---@class System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices : System.Object
---@field Current TSource
System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices = {}
---@alias CS.System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices
CS.System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices = System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices

---@param source System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
---@return System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices
function System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices.New(source) end
---@return boolean
function System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices:MoveNext() end
function System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices:Dispose() end
function System.Collections.Concurrent.OrderablePartitioner.EnumeratorDropIndices:Reset() end

---@class System.Collections.Concurrent.Partitioner : System.Object
---@field SupportsDynamicPartitions boolean
System.Collections.Concurrent.Partitioner = {}
---@alias CS.System.Collections.Concurrent.Partitioner System.Collections.Concurrent.Partitioner
CS.System.Collections.Concurrent.Partitioner = System.Collections.Concurrent.Partitioner

---@param partitionCount number
---@return System.Collections.Generic.IList[System.Collections.Generic.IEnumerator[TSource]]
function System.Collections.Concurrent.Partitioner:GetPartitions(partitionCount) end
---@return System.Collections.Generic.IEnumerable[TSource]
function System.Collections.Concurrent.Partitioner:GetDynamicPartitions() end

---@class System.Collections.Concurrent.EnumerablePartitionerOptions
---@field None System.Collections.Concurrent.EnumerablePartitionerOptions
---@field NoBuffering System.Collections.Concurrent.EnumerablePartitionerOptions
System.Collections.Concurrent.EnumerablePartitionerOptions = {}
---@alias CS.System.Collections.Concurrent.EnumerablePartitionerOptions System.Collections.Concurrent.EnumerablePartitionerOptions
CS.System.Collections.Concurrent.EnumerablePartitionerOptions = System.Collections.Concurrent.EnumerablePartitionerOptions


---@class System.Collections.Concurrent.Partitioner : System.Object
System.Collections.Concurrent.Partitioner = {}
---@alias CS.System.Collections.Concurrent.Partitioner System.Collections.Concurrent.Partitioner
CS.System.Collections.Concurrent.Partitioner = System.Collections.Concurrent.Partitioner

---@overload fun(fromInclusive: number, toExclusive: number) : System.Collections.Concurrent.OrderablePartitioner
---@overload fun(fromInclusive: number, toExclusive: number, rangeSize: number) : System.Collections.Concurrent.OrderablePartitioner
---@overload fun(fromInclusive: number, toExclusive: number) : System.Collections.Concurrent.OrderablePartitioner
---@param fromInclusive number
---@param toExclusive number
---@param rangeSize number
---@return System.Collections.Concurrent.OrderablePartitioner
function System.Collections.Concurrent.Partitioner.Create(fromInclusive, toExclusive, rangeSize) end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract : System.Object
---@field Current System.Collections.Generic.KeyValuePair[System.Int64,TSource]
System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract = System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract

function System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract:Dispose() end
function System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract:Reset() end
---@return boolean
function System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract:MoveNext() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable : System.Collections.Concurrent.OrderablePartitioner[TSource]
---@field SupportsDynamicPartitions boolean
System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable = System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable

---@param partitionCount number
---@return System.Collections.Generic.IList[System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]]
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable:GetOrderablePartitions(partitionCount) end
---@return System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable:GetOrderableDynamicPartitions() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable : System.Object
System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable = System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable

---@return System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable:GetEnumerator() end
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerable:Dispose() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerator : System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract[TSource,System.Collections.Generic.IEnumerator[TSource]]
---@field Current System.Collections.Generic.KeyValuePair[System.Int64,TSource]
System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerator = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerator System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerator
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerator = System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerator

function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIEnumerable.InternalPartitionEnumerator:Dispose() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract : System.Collections.Concurrent.OrderablePartitioner[TSource]
---@field SupportsDynamicPartitions boolean
System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract = System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract

---@param partitionCount number
---@return System.Collections.Generic.IList[System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]]
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract:GetOrderablePartitions(partitionCount) end
---@return System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract:GetOrderableDynamicPartitions() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract : System.Collections.Concurrent.Partitioner.DynamicPartitionEnumerator_Abstract[TSource,TSourceReader]
System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract = System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract

function System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract:Dispose() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList : System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract[TSource,System.Collections.Generic.IList[TSource]]
System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList = System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList


---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerable : System.Object
System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerable = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerable System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerable
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerable = System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerable

---@return System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerable:GetEnumerator() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerator : System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract[TSource,System.Collections.Generic.IList[TSource]]
---@field Current System.Collections.Generic.KeyValuePair[System.Int64,TSource]
System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerator = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerator System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerator
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerator = System.Collections.Concurrent.Partitioner.DynamicPartitionerForIList.InternalPartitionEnumerator


---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray : System.Collections.Concurrent.Partitioner.DynamicPartitionerForIndexRange_Abstract[TSource,TSource[]]
System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray = System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray


---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerable : System.Object
System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerable = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerable System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerable
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerable = System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerable

---@return System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]
function System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerable:GetEnumerator() end

---@class System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerator : System.Collections.Concurrent.Partitioner.DynamicPartitionEnumeratorForIndexRange_Abstract[TSource,TSource[]]
---@field Current System.Collections.Generic.KeyValuePair[System.Int64,TSource]
System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerator = {}
---@alias CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerator System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerator
CS.System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerator = System.Collections.Concurrent.Partitioner.DynamicPartitionerForArray.InternalPartitionEnumerator


---@class System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner : System.Collections.Concurrent.OrderablePartitioner[TSource]
System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner = {}
---@alias CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner
CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner = System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner

---@param partitionCount number
---@return System.Collections.Generic.IList[System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[System.Int64,TSource]]]
function System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner:GetOrderablePartitions(partitionCount) end

---@class System.Collections.Concurrent.Partitioner.StaticIndexRangePartition : System.Object
---@field Current System.Collections.Generic.KeyValuePair[System.Int64,TSource]
System.Collections.Concurrent.Partitioner.StaticIndexRangePartition = {}
---@alias CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartition System.Collections.Concurrent.Partitioner.StaticIndexRangePartition
CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartition = System.Collections.Concurrent.Partitioner.StaticIndexRangePartition

function System.Collections.Concurrent.Partitioner.StaticIndexRangePartition:Dispose() end
function System.Collections.Concurrent.Partitioner.StaticIndexRangePartition:Reset() end
---@return boolean
function System.Collections.Concurrent.Partitioner.StaticIndexRangePartition:MoveNext() end

---@class System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForIList : System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner[TSource,System.Collections.Generic.IList[TSource]]
System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForIList = {}
---@alias CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForIList System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForIList
CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForIList = System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForIList


---@class System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForIList : System.Collections.Concurrent.Partitioner.StaticIndexRangePartition[TSource]
---@field Current System.Collections.Generic.KeyValuePair[System.Int64,TSource]
System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForIList = {}
---@alias CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForIList System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForIList
CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForIList = System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForIList


---@class System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForArray : System.Collections.Concurrent.Partitioner.StaticIndexRangePartitioner[TSource,TSource[]]
System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForArray = {}
---@alias CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForArray System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForArray
CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForArray = System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionerForArray


---@class System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForArray : System.Collections.Concurrent.Partitioner.StaticIndexRangePartition[TSource]
---@field Current System.Collections.Generic.KeyValuePair[System.Int64,TSource]
System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForArray = {}
---@alias CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForArray System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForArray
CS.System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForArray = System.Collections.Concurrent.Partitioner.StaticIndexRangePartitionForArray


---@class System.Collections.Concurrent.Partitioner.SharedInt : System.Object
System.Collections.Concurrent.Partitioner.SharedInt = {}
---@alias CS.System.Collections.Concurrent.Partitioner.SharedInt System.Collections.Concurrent.Partitioner.SharedInt
CS.System.Collections.Concurrent.Partitioner.SharedInt = System.Collections.Concurrent.Partitioner.SharedInt


---@class System.Collections.Concurrent.Partitioner.SharedBool : System.Object
System.Collections.Concurrent.Partitioner.SharedBool = {}
---@alias CS.System.Collections.Concurrent.Partitioner.SharedBool System.Collections.Concurrent.Partitioner.SharedBool
CS.System.Collections.Concurrent.Partitioner.SharedBool = System.Collections.Concurrent.Partitioner.SharedBool


---@class System.Collections.Concurrent.Partitioner.SharedLong : System.Object
System.Collections.Concurrent.Partitioner.SharedLong = {}
---@alias CS.System.Collections.Concurrent.Partitioner.SharedLong System.Collections.Concurrent.Partitioner.SharedLong
CS.System.Collections.Concurrent.Partitioner.SharedLong = System.Collections.Concurrent.Partitioner.SharedLong


---@class System.Collections.ObjectModel.Collection : System.Object
---@field Count number
---@field Item T
System.Collections.ObjectModel.Collection = {}
---@alias CS.System.Collections.ObjectModel.Collection System.Collections.ObjectModel.Collection
CS.System.Collections.ObjectModel.Collection = System.Collections.ObjectModel.Collection

---@overload fun() : System.Collections.ObjectModel.Collection
---@param list System.Collections.Generic.IList[T]
---@return System.Collections.ObjectModel.Collection
function System.Collections.ObjectModel.Collection.New(list) end
---@param item T
function System.Collections.ObjectModel.Collection:Add(item) end
function System.Collections.ObjectModel.Collection:Clear() end
---@param array T[]
---@param index number
function System.Collections.ObjectModel.Collection:CopyTo(array, index) end
---@param item T
---@return boolean
function System.Collections.ObjectModel.Collection:Contains(item) end
---@return System.Collections.Generic.IEnumerator[T]
function System.Collections.ObjectModel.Collection:GetEnumerator() end
---@param item T
---@return number
function System.Collections.ObjectModel.Collection:IndexOf(item) end
---@param index number
---@param item T
function System.Collections.ObjectModel.Collection:Insert(index, item) end
---@param item T
---@return boolean
function System.Collections.ObjectModel.Collection:Remove(item) end
---@param index number
function System.Collections.ObjectModel.Collection:RemoveAt(index) end

---@class System.Collections.ObjectModel.ReadOnlyCollection : System.Object
---@field Count number
---@field Item T
System.Collections.ObjectModel.ReadOnlyCollection = {}
---@alias CS.System.Collections.ObjectModel.ReadOnlyCollection System.Collections.ObjectModel.ReadOnlyCollection
CS.System.Collections.ObjectModel.ReadOnlyCollection = System.Collections.ObjectModel.ReadOnlyCollection

---@param list System.Collections.Generic.IList[T]
---@return System.Collections.ObjectModel.ReadOnlyCollection
function System.Collections.ObjectModel.ReadOnlyCollection.New(list) end
---@param value T
---@return boolean
function System.Collections.ObjectModel.ReadOnlyCollection:Contains(value) end
---@param array T[]
---@param index number
function System.Collections.ObjectModel.ReadOnlyCollection:CopyTo(array, index) end
---@return System.Collections.Generic.IEnumerator[T]
function System.Collections.ObjectModel.ReadOnlyCollection:GetEnumerator() end
---@param value T
---@return number
function System.Collections.ObjectModel.ReadOnlyCollection:IndexOf(value) end

---@class System.Collections.ObjectModel.KeyedCollection : System.Collections.ObjectModel.Collection[TItem]
---@field Comparer System.Collections.Generic.IEqualityComparer[TKey]
---@field Item TItem
System.Collections.ObjectModel.KeyedCollection = {}
---@alias CS.System.Collections.ObjectModel.KeyedCollection System.Collections.ObjectModel.KeyedCollection
CS.System.Collections.ObjectModel.KeyedCollection = System.Collections.ObjectModel.KeyedCollection

---@param key TKey
---@return boolean
function System.Collections.ObjectModel.KeyedCollection:Contains(key) end
---@param key TKey
---@param out_item TItem
---@return boolean,TItem
function System.Collections.ObjectModel.KeyedCollection:TryGetValue(key, out_item) end
---@param key TKey
---@return boolean
function System.Collections.ObjectModel.KeyedCollection:Remove(key) end

---@class System.Collections.ObjectModel.ReadOnlyDictionary : System.Object
---@field Keys System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection[TKey,TValue]
---@field Values System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection[TKey,TValue]
---@field Item TValue
---@field Count number
System.Collections.ObjectModel.ReadOnlyDictionary = {}
---@alias CS.System.Collections.ObjectModel.ReadOnlyDictionary System.Collections.ObjectModel.ReadOnlyDictionary
CS.System.Collections.ObjectModel.ReadOnlyDictionary = System.Collections.ObjectModel.ReadOnlyDictionary

---@param dictionary System.Collections.Generic.IDictionary[TKey,TValue]
---@return System.Collections.ObjectModel.ReadOnlyDictionary
function System.Collections.ObjectModel.ReadOnlyDictionary.New(dictionary) end
---@param key TKey
---@return boolean
function System.Collections.ObjectModel.ReadOnlyDictionary:ContainsKey(key) end
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.ObjectModel.ReadOnlyDictionary:TryGetValue(key, out_value) end
---@return System.Collections.Generic.IEnumerator[System.Collections.Generic.KeyValuePair[TKey,TValue]]
function System.Collections.ObjectModel.ReadOnlyDictionary:GetEnumerator() end

---@class System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator : System.ValueType
---@field Entry System.Collections.DictionaryEntry
---@field Key System.Object
---@field Value System.Object
---@field Current System.Object
System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator = {}
---@alias CS.System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator
CS.System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator = System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator

---@param dictionary System.Collections.Generic.IDictionary[TKey,TValue]
---@return System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator
function System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator.New(dictionary) end
---@return boolean
function System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator:MoveNext() end
function System.Collections.ObjectModel.ReadOnlyDictionary.DictionaryEnumerator:Reset() end

---@class System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection : System.Object
---@field Count number
System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection = {}
---@alias CS.System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection
CS.System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection = System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection

---@param array TKey[]
---@param arrayIndex number
function System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection:CopyTo(array, arrayIndex) end
---@return System.Collections.Generic.IEnumerator[TKey]
function System.Collections.ObjectModel.ReadOnlyDictionary.KeyCollection:GetEnumerator() end

---@class System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection : System.Object
---@field Count number
System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection = {}
---@alias CS.System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection
CS.System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection = System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection

---@param array TValue[]
---@param arrayIndex number
function System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection:CopyTo(array, arrayIndex) end
---@return System.Collections.Generic.IEnumerator[TValue]
function System.Collections.ObjectModel.ReadOnlyDictionary.ValueCollection:GetEnumerator() end

---@class System.Collections.ObjectModel.ReadOnlyDictionaryHelpers : System.Object
System.Collections.ObjectModel.ReadOnlyDictionaryHelpers = {}
---@alias CS.System.Collections.ObjectModel.ReadOnlyDictionaryHelpers System.Collections.ObjectModel.ReadOnlyDictionaryHelpers
CS.System.Collections.ObjectModel.ReadOnlyDictionaryHelpers = System.Collections.ObjectModel.ReadOnlyDictionaryHelpers


---@class System.Collections.Generic.InsertionBehavior
---@field None System.Collections.Generic.InsertionBehavior
---@field OverwriteExisting System.Collections.Generic.InsertionBehavior
---@field ThrowOnExisting System.Collections.Generic.InsertionBehavior
System.Collections.Generic.InsertionBehavior = {}
---@alias CS.System.Collections.Generic.InsertionBehavior System.Collections.Generic.InsertionBehavior
CS.System.Collections.Generic.InsertionBehavior = System.Collections.Generic.InsertionBehavior


---@class System.Collections.Generic.Dictionary : System.Object
---@field Comparer System.Collections.Generic.IEqualityComparer[TKey]
---@field Count number
---@field Keys System.Collections.Generic.Dictionary.KeyCollection[TKey,TValue]
---@field Values System.Collections.Generic.Dictionary.ValueCollection[TKey,TValue]
---@field Item TValue
System.Collections.Generic.Dictionary = {}
---@alias CS.System.Collections.Generic.Dictionary System.Collections.Generic.Dictionary
CS.System.Collections.Generic.Dictionary = System.Collections.Generic.Dictionary

---@overload fun() : System.Collections.Generic.Dictionary
---@overload fun(capacity: number) : System.Collections.Generic.Dictionary
---@overload fun(comparer: System.Collections.Generic.IEqualityComparer[TKey]) : System.Collections.Generic.Dictionary
---@overload fun(capacity: number, comparer: System.Collections.Generic.IEqualityComparer[TKey]) : System.Collections.Generic.Dictionary
---@overload fun(dictionary: System.Collections.Generic.IDictionary[TKey,TValue]) : System.Collections.Generic.Dictionary
---@overload fun(dictionary: System.Collections.Generic.IDictionary[TKey,TValue], comparer: System.Collections.Generic.IEqualityComparer[TKey]) : System.Collections.Generic.Dictionary
---@overload fun(collection: System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[TKey,TValue]]) : System.Collections.Generic.Dictionary
---@param collection System.Collections.Generic.IEnumerable[System.Collections.Generic.KeyValuePair[TKey,TValue]]
---@param comparer System.Collections.Generic.IEqualityComparer[TKey]
---@return System.Collections.Generic.Dictionary
function System.Collections.Generic.Dictionary.New(collection, comparer) end
---@param key TKey
---@param value TValue
function System.Collections.Generic.Dictionary:Add(key, value) end
function System.Collections.Generic.Dictionary:Clear() end
---@param key TKey
---@return boolean
function System.Collections.Generic.Dictionary:ContainsKey(key) end
---@param value TValue
---@return boolean
function System.Collections.Generic.Dictionary:ContainsValue(value) end
---@return System.Collections.Generic.Dictionary.Enumerator[TKey,TValue]
function System.Collections.Generic.Dictionary:GetEnumerator() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Collections.Generic.Dictionary:GetObjectData(info, context) end
---@param sender System.Object
function System.Collections.Generic.Dictionary:OnDeserialization(sender) end
---@overload fun(self: System.Collections.Generic.Dictionary, key: TKey) : boolean
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.Generic.Dictionary:Remove(key, out_value) end
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.Generic.Dictionary:TryGetValue(key, out_value) end
---@param key TKey
---@param value TValue
---@return boolean
function System.Collections.Generic.Dictionary:TryAdd(key, value) end
---@param capacity number
---@return number
function System.Collections.Generic.Dictionary:EnsureCapacity(capacity) end
---@overload fun()
---@param capacity number
function System.Collections.Generic.Dictionary:TrimExcess(capacity) end

---@class System.Collections.Generic.Dictionary.Entry : System.ValueType
---@field hashCode number
---@field next number
---@field key TKey
---@field value TValue
System.Collections.Generic.Dictionary.Entry = {}
---@alias CS.System.Collections.Generic.Dictionary.Entry System.Collections.Generic.Dictionary.Entry
CS.System.Collections.Generic.Dictionary.Entry = System.Collections.Generic.Dictionary.Entry


---@class System.Collections.Generic.Dictionary.Enumerator : System.ValueType
---@field Current System.Collections.Generic.KeyValuePair[TKey,TValue]
System.Collections.Generic.Dictionary.Enumerator = {}
---@alias CS.System.Collections.Generic.Dictionary.Enumerator System.Collections.Generic.Dictionary.Enumerator
CS.System.Collections.Generic.Dictionary.Enumerator = System.Collections.Generic.Dictionary.Enumerator

---@return boolean
function System.Collections.Generic.Dictionary.Enumerator:MoveNext() end
function System.Collections.Generic.Dictionary.Enumerator:Dispose() end

---@class System.Collections.Generic.Dictionary.KeyCollection : System.Object
---@field Count number
System.Collections.Generic.Dictionary.KeyCollection = {}
---@alias CS.System.Collections.Generic.Dictionary.KeyCollection System.Collections.Generic.Dictionary.KeyCollection
CS.System.Collections.Generic.Dictionary.KeyCollection = System.Collections.Generic.Dictionary.KeyCollection

---@param dictionary System.Collections.Generic.Dictionary[TKey,TValue]
---@return System.Collections.Generic.Dictionary.KeyCollection
function System.Collections.Generic.Dictionary.KeyCollection.New(dictionary) end
---@return System.Collections.Generic.Dictionary.KeyCollection.Enumerator[TKey,TValue]
function System.Collections.Generic.Dictionary.KeyCollection:GetEnumerator() end
---@param array TKey[]
---@param index number
function System.Collections.Generic.Dictionary.KeyCollection:CopyTo(array, index) end

---@class System.Collections.Generic.Dictionary.KeyCollection.Enumerator : System.ValueType
---@field Current TKey
System.Collections.Generic.Dictionary.KeyCollection.Enumerator = {}
---@alias CS.System.Collections.Generic.Dictionary.KeyCollection.Enumerator System.Collections.Generic.Dictionary.KeyCollection.Enumerator
CS.System.Collections.Generic.Dictionary.KeyCollection.Enumerator = System.Collections.Generic.Dictionary.KeyCollection.Enumerator

function System.Collections.Generic.Dictionary.KeyCollection.Enumerator:Dispose() end
---@return boolean
function System.Collections.Generic.Dictionary.KeyCollection.Enumerator:MoveNext() end

---@class System.Collections.Generic.Dictionary.ValueCollection : System.Object
---@field Count number
System.Collections.Generic.Dictionary.ValueCollection = {}
---@alias CS.System.Collections.Generic.Dictionary.ValueCollection System.Collections.Generic.Dictionary.ValueCollection
CS.System.Collections.Generic.Dictionary.ValueCollection = System.Collections.Generic.Dictionary.ValueCollection

---@param dictionary System.Collections.Generic.Dictionary[TKey,TValue]
---@return System.Collections.Generic.Dictionary.ValueCollection
function System.Collections.Generic.Dictionary.ValueCollection.New(dictionary) end
---@return System.Collections.Generic.Dictionary.ValueCollection.Enumerator[TKey,TValue]
function System.Collections.Generic.Dictionary.ValueCollection:GetEnumerator() end
---@param array TValue[]
---@param index number
function System.Collections.Generic.Dictionary.ValueCollection:CopyTo(array, index) end

---@class System.Collections.Generic.Dictionary.ValueCollection.Enumerator : System.ValueType
---@field Current TValue
System.Collections.Generic.Dictionary.ValueCollection.Enumerator = {}
---@alias CS.System.Collections.Generic.Dictionary.ValueCollection.Enumerator System.Collections.Generic.Dictionary.ValueCollection.Enumerator
CS.System.Collections.Generic.Dictionary.ValueCollection.Enumerator = System.Collections.Generic.Dictionary.ValueCollection.Enumerator

function System.Collections.Generic.Dictionary.ValueCollection.Enumerator:Dispose() end
---@return boolean
function System.Collections.Generic.Dictionary.ValueCollection.Enumerator:MoveNext() end

---@class System.Collections.Generic.IAsyncEnumerable
System.Collections.Generic.IAsyncEnumerable = {}
---@alias CS.System.Collections.Generic.IAsyncEnumerable System.Collections.Generic.IAsyncEnumerable
CS.System.Collections.Generic.IAsyncEnumerable = System.Collections.Generic.IAsyncEnumerable

---@param cancellationToken System.Threading.CancellationToken
---@return System.Collections.Generic.IAsyncEnumerator[T]
function System.Collections.Generic.IAsyncEnumerable:GetAsyncEnumerator(cancellationToken) end

---@class System.Collections.Generic.IAsyncEnumerator
---@field Current T
System.Collections.Generic.IAsyncEnumerator = {}
---@alias CS.System.Collections.Generic.IAsyncEnumerator System.Collections.Generic.IAsyncEnumerator
CS.System.Collections.Generic.IAsyncEnumerator = System.Collections.Generic.IAsyncEnumerator

---@return System.Threading.Tasks.ValueTask
function System.Collections.Generic.IAsyncEnumerator:MoveNextAsync() end

---@class System.Collections.Generic.ICollection
---@field Count number
---@field IsReadOnly boolean
System.Collections.Generic.ICollection = {}
---@alias CS.System.Collections.Generic.ICollection System.Collections.Generic.ICollection
CS.System.Collections.Generic.ICollection = System.Collections.Generic.ICollection

---@param item T
function System.Collections.Generic.ICollection:Add(item) end
function System.Collections.Generic.ICollection:Clear() end
---@param item T
---@return boolean
function System.Collections.Generic.ICollection:Contains(item) end
---@param array T[]
---@param arrayIndex number
function System.Collections.Generic.ICollection:CopyTo(array, arrayIndex) end
---@param item T
---@return boolean
function System.Collections.Generic.ICollection:Remove(item) end

---@class System.Collections.Generic.ICollectionDebugView : System.Object
---@field Items T[]
System.Collections.Generic.ICollectionDebugView = {}
---@alias CS.System.Collections.Generic.ICollectionDebugView System.Collections.Generic.ICollectionDebugView
CS.System.Collections.Generic.ICollectionDebugView = System.Collections.Generic.ICollectionDebugView

---@param collection System.Collections.Generic.ICollection[T]
---@return System.Collections.Generic.ICollectionDebugView
function System.Collections.Generic.ICollectionDebugView.New(collection) end

---@class System.Collections.Generic.IComparer
System.Collections.Generic.IComparer = {}
---@alias CS.System.Collections.Generic.IComparer System.Collections.Generic.IComparer
CS.System.Collections.Generic.IComparer = System.Collections.Generic.IComparer

---@param x T
---@param y T
---@return number
function System.Collections.Generic.IComparer:Compare(x, y) end

---@class System.Collections.Generic.IDictionary
---@field Item TValue
---@field Keys System.Collections.Generic.ICollection[TKey]
---@field Values System.Collections.Generic.ICollection[TValue]
System.Collections.Generic.IDictionary = {}
---@alias CS.System.Collections.Generic.IDictionary System.Collections.Generic.IDictionary
CS.System.Collections.Generic.IDictionary = System.Collections.Generic.IDictionary

---@param key TKey
---@return boolean
function System.Collections.Generic.IDictionary:ContainsKey(key) end
---@param key TKey
---@param value TValue
function System.Collections.Generic.IDictionary:Add(key, value) end
---@param key TKey
---@return boolean
function System.Collections.Generic.IDictionary:Remove(key) end
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.Generic.IDictionary:TryGetValue(key, out_value) end

---@class System.Collections.Generic.IDictionaryDebugView : System.Object
---@field Items System.Collections.Generic.KeyValuePair[K,V][]
System.Collections.Generic.IDictionaryDebugView = {}
---@alias CS.System.Collections.Generic.IDictionaryDebugView System.Collections.Generic.IDictionaryDebugView
CS.System.Collections.Generic.IDictionaryDebugView = System.Collections.Generic.IDictionaryDebugView

---@param dictionary System.Collections.Generic.IDictionary[K,V]
---@return System.Collections.Generic.IDictionaryDebugView
function System.Collections.Generic.IDictionaryDebugView.New(dictionary) end

---@class System.Collections.Generic.DictionaryKeyCollectionDebugView : System.Object
---@field Items TKey[]
System.Collections.Generic.DictionaryKeyCollectionDebugView = {}
---@alias CS.System.Collections.Generic.DictionaryKeyCollectionDebugView System.Collections.Generic.DictionaryKeyCollectionDebugView
CS.System.Collections.Generic.DictionaryKeyCollectionDebugView = System.Collections.Generic.DictionaryKeyCollectionDebugView

---@param collection System.Collections.Generic.ICollection[TKey]
---@return System.Collections.Generic.DictionaryKeyCollectionDebugView
function System.Collections.Generic.DictionaryKeyCollectionDebugView.New(collection) end

---@class System.Collections.Generic.DictionaryValueCollectionDebugView : System.Object
---@field Items TValue[]
System.Collections.Generic.DictionaryValueCollectionDebugView = {}
---@alias CS.System.Collections.Generic.DictionaryValueCollectionDebugView System.Collections.Generic.DictionaryValueCollectionDebugView
CS.System.Collections.Generic.DictionaryValueCollectionDebugView = System.Collections.Generic.DictionaryValueCollectionDebugView

---@param collection System.Collections.Generic.ICollection[TValue]
---@return System.Collections.Generic.DictionaryValueCollectionDebugView
function System.Collections.Generic.DictionaryValueCollectionDebugView.New(collection) end

---@class System.Collections.Generic.IEnumerable
System.Collections.Generic.IEnumerable = {}
---@alias CS.System.Collections.Generic.IEnumerable System.Collections.Generic.IEnumerable
CS.System.Collections.Generic.IEnumerable = System.Collections.Generic.IEnumerable

---@return System.Collections.Generic.IEnumerator[T]
function System.Collections.Generic.IEnumerable:GetEnumerator() end

---@class System.Collections.Generic.IEnumerator
---@field Current T
System.Collections.Generic.IEnumerator = {}
---@alias CS.System.Collections.Generic.IEnumerator System.Collections.Generic.IEnumerator
CS.System.Collections.Generic.IEnumerator = System.Collections.Generic.IEnumerator


---@class System.Collections.Generic.IEqualityComparer
System.Collections.Generic.IEqualityComparer = {}
---@alias CS.System.Collections.Generic.IEqualityComparer System.Collections.Generic.IEqualityComparer
CS.System.Collections.Generic.IEqualityComparer = System.Collections.Generic.IEqualityComparer

---@param x T
---@param y T
---@return boolean
function System.Collections.Generic.IEqualityComparer:Equals(x, y) end
---@param obj T
---@return number
function System.Collections.Generic.IEqualityComparer:GetHashCode(obj) end

---@class System.Collections.Generic.IList
---@field Item T
System.Collections.Generic.IList = {}
---@alias CS.System.Collections.Generic.IList System.Collections.Generic.IList
CS.System.Collections.Generic.IList = System.Collections.Generic.IList

---@param item T
---@return number
function System.Collections.Generic.IList:IndexOf(item) end
---@param index number
---@param item T
function System.Collections.Generic.IList:Insert(index, item) end
---@param index number
function System.Collections.Generic.IList:RemoveAt(index) end

---@class System.Collections.Generic.IReadOnlyCollection
---@field Count number
System.Collections.Generic.IReadOnlyCollection = {}
---@alias CS.System.Collections.Generic.IReadOnlyCollection System.Collections.Generic.IReadOnlyCollection
CS.System.Collections.Generic.IReadOnlyCollection = System.Collections.Generic.IReadOnlyCollection


---@class System.Collections.Generic.IReadOnlyDictionary
---@field Item TValue
---@field Keys System.Collections.Generic.IEnumerable[TKey]
---@field Values System.Collections.Generic.IEnumerable[TValue]
System.Collections.Generic.IReadOnlyDictionary = {}
---@alias CS.System.Collections.Generic.IReadOnlyDictionary System.Collections.Generic.IReadOnlyDictionary
CS.System.Collections.Generic.IReadOnlyDictionary = System.Collections.Generic.IReadOnlyDictionary

---@param key TKey
---@return boolean
function System.Collections.Generic.IReadOnlyDictionary:ContainsKey(key) end
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.Generic.IReadOnlyDictionary:TryGetValue(key, out_value) end

---@class System.Collections.Generic.IReadOnlyList
---@field Item T
System.Collections.Generic.IReadOnlyList = {}
---@alias CS.System.Collections.Generic.IReadOnlyList System.Collections.Generic.IReadOnlyList
CS.System.Collections.Generic.IReadOnlyList = System.Collections.Generic.IReadOnlyList


---@class System.Collections.Generic.KeyNotFoundException : System.SystemException
System.Collections.Generic.KeyNotFoundException = {}
---@alias CS.System.Collections.Generic.KeyNotFoundException System.Collections.Generic.KeyNotFoundException
CS.System.Collections.Generic.KeyNotFoundException = System.Collections.Generic.KeyNotFoundException

---@overload fun() : System.Collections.Generic.KeyNotFoundException
---@overload fun(message: string) : System.Collections.Generic.KeyNotFoundException
---@param message string
---@param innerException System.Exception
---@return System.Collections.Generic.KeyNotFoundException
function System.Collections.Generic.KeyNotFoundException.New(message, innerException) end

---@class System.Collections.Generic.KeyValuePair : System.Object
System.Collections.Generic.KeyValuePair = {}
---@alias CS.System.Collections.Generic.KeyValuePair System.Collections.Generic.KeyValuePair
CS.System.Collections.Generic.KeyValuePair = System.Collections.Generic.KeyValuePair


---@class System.Collections.Generic.KeyValuePair : System.ValueType
---@field Key TKey
---@field Value TValue
System.Collections.Generic.KeyValuePair = {}
---@alias CS.System.Collections.Generic.KeyValuePair System.Collections.Generic.KeyValuePair
CS.System.Collections.Generic.KeyValuePair = System.Collections.Generic.KeyValuePair

---@param key TKey
---@param value TValue
---@return System.Collections.Generic.KeyValuePair
function System.Collections.Generic.KeyValuePair.New(key, value) end
---@return string
function System.Collections.Generic.KeyValuePair:ToString() end
---@param out_key TKey
---@param out_value TValue
---@return ,TKey,TValue
function System.Collections.Generic.KeyValuePair:Deconstruct(out_key, out_value) end

---@class System.Collections.Generic.List : System.Object
---@field Capacity number
---@field Count number
---@field Item T
System.Collections.Generic.List = {}
---@alias CS.System.Collections.Generic.List System.Collections.Generic.List
CS.System.Collections.Generic.List = System.Collections.Generic.List

---@overload fun() : System.Collections.Generic.List
---@overload fun(capacity: number) : System.Collections.Generic.List
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Generic.List
function System.Collections.Generic.List.New(collection) end
---@param item T
function System.Collections.Generic.List:Add(item) end
---@param collection System.Collections.Generic.IEnumerable[T]
function System.Collections.Generic.List:AddRange(collection) end
---@return System.Collections.ObjectModel.ReadOnlyCollection[T]
function System.Collections.Generic.List:AsReadOnly() end
---@overload fun(self: System.Collections.Generic.List, index: number, count: number, item: T, comparer: System.Collections.Generic.IComparer[T]) : number
---@overload fun(self: System.Collections.Generic.List, item: T) : number
---@param item T
---@param comparer System.Collections.Generic.IComparer[T]
---@return number
function System.Collections.Generic.List:BinarySearch(item, comparer) end
function System.Collections.Generic.List:Clear() end
---@param item T
---@return boolean
function System.Collections.Generic.List:Contains(item) end
---@overload fun(self: System.Collections.Generic.List, array: T[])
---@overload fun(self: System.Collections.Generic.List, index: number, array: T[], arrayIndex: number, count: number)
---@param array T[]
---@param arrayIndex number
function System.Collections.Generic.List:CopyTo(array, arrayIndex) end
---@param match System.Predicate[T]
---@return boolean
function System.Collections.Generic.List:Exists(match) end
---@param match System.Predicate[T]
---@return T
function System.Collections.Generic.List:Find(match) end
---@param match System.Predicate[T]
---@return System.Collections.Generic.List
function System.Collections.Generic.List:FindAll(match) end
---@overload fun(self: System.Collections.Generic.List, match: System.Predicate[T]) : number
---@overload fun(self: System.Collections.Generic.List, startIndex: number, match: System.Predicate[T]) : number
---@param startIndex number
---@param count number
---@param match System.Predicate[T]
---@return number
function System.Collections.Generic.List:FindIndex(startIndex, count, match) end
---@param match System.Predicate[T]
---@return T
function System.Collections.Generic.List:FindLast(match) end
---@overload fun(self: System.Collections.Generic.List, match: System.Predicate[T]) : number
---@overload fun(self: System.Collections.Generic.List, startIndex: number, match: System.Predicate[T]) : number
---@param startIndex number
---@param count number
---@param match System.Predicate[T]
---@return number
function System.Collections.Generic.List:FindLastIndex(startIndex, count, match) end
---@param action System.Action[T]
function System.Collections.Generic.List:ForEach(action) end
---@return System.Collections.Generic.List.Enumerator[T]
function System.Collections.Generic.List:GetEnumerator() end
---@param index number
---@param count number
---@return System.Collections.Generic.List
function System.Collections.Generic.List:GetRange(index, count) end
---@overload fun(self: System.Collections.Generic.List, item: T) : number
---@overload fun(self: System.Collections.Generic.List, item: T, index: number) : number
---@param item T
---@param index number
---@param count number
---@return number
function System.Collections.Generic.List:IndexOf(item, index, count) end
---@param index number
---@param item T
function System.Collections.Generic.List:Insert(index, item) end
---@param index number
---@param collection System.Collections.Generic.IEnumerable[T]
function System.Collections.Generic.List:InsertRange(index, collection) end
---@overload fun(self: System.Collections.Generic.List, item: T) : number
---@overload fun(self: System.Collections.Generic.List, item: T, index: number) : number
---@param item T
---@param index number
---@param count number
---@return number
function System.Collections.Generic.List:LastIndexOf(item, index, count) end
---@param item T
---@return boolean
function System.Collections.Generic.List:Remove(item) end
---@param match System.Predicate[T]
---@return number
function System.Collections.Generic.List:RemoveAll(match) end
---@param index number
function System.Collections.Generic.List:RemoveAt(index) end
---@param index number
---@param count number
function System.Collections.Generic.List:RemoveRange(index, count) end
---@overload fun()
---@param index number
---@param count number
function System.Collections.Generic.List:Reverse(index, count) end
---@overload fun()
---@overload fun(self: System.Collections.Generic.List, comparer: System.Collections.Generic.IComparer[T])
---@overload fun(self: System.Collections.Generic.List, index: number, count: number, comparer: System.Collections.Generic.IComparer[T])
---@param comparison System.Comparison[T]
function System.Collections.Generic.List:Sort(comparison) end
---@return T[]
function System.Collections.Generic.List:ToArray() end
function System.Collections.Generic.List:TrimExcess() end
---@param match System.Predicate[T]
---@return boolean
function System.Collections.Generic.List:TrueForAll(match) end

---@class System.Collections.Generic.List.Enumerator : System.ValueType
---@field Current T
System.Collections.Generic.List.Enumerator = {}
---@alias CS.System.Collections.Generic.List.Enumerator System.Collections.Generic.List.Enumerator
CS.System.Collections.Generic.List.Enumerator = System.Collections.Generic.List.Enumerator

function System.Collections.Generic.List.Enumerator:Dispose() end
---@return boolean
function System.Collections.Generic.List.Enumerator:MoveNext() end

---@class System.Collections.Generic.ValueListBuilder : System.ValueType
---@field Length number
---@field Item T&
System.Collections.Generic.ValueListBuilder = {}
---@alias CS.System.Collections.Generic.ValueListBuilder System.Collections.Generic.ValueListBuilder
CS.System.Collections.Generic.ValueListBuilder = System.Collections.Generic.ValueListBuilder

---@param initialSpan System.Span[T]
---@return System.Collections.Generic.ValueListBuilder
function System.Collections.Generic.ValueListBuilder.New(initialSpan) end
---@param item T
function System.Collections.Generic.ValueListBuilder:Append(item) end
---@return System.ReadOnlySpan[T]
function System.Collections.Generic.ValueListBuilder:AsSpan() end
function System.Collections.Generic.ValueListBuilder:Dispose() end

---@class System.Collections.Generic.ArrayBuilder : System.ValueType
---@field Capacity number
---@field Count number
---@field Item T
System.Collections.Generic.ArrayBuilder = {}
---@alias CS.System.Collections.Generic.ArrayBuilder System.Collections.Generic.ArrayBuilder
CS.System.Collections.Generic.ArrayBuilder = System.Collections.Generic.ArrayBuilder

---@param capacity number
---@return System.Collections.Generic.ArrayBuilder
function System.Collections.Generic.ArrayBuilder.New(capacity) end
---@param item T
function System.Collections.Generic.ArrayBuilder:Add(item) end
---@return T
function System.Collections.Generic.ArrayBuilder:First() end
---@return T
function System.Collections.Generic.ArrayBuilder:Last() end
---@return T[]
function System.Collections.Generic.ArrayBuilder:ToArray() end
---@param item T
function System.Collections.Generic.ArrayBuilder:UncheckedAdd(item) end

---@class System.Collections.Generic.EnumerableHelpers : System.Object
System.Collections.Generic.EnumerableHelpers = {}
---@alias CS.System.Collections.Generic.EnumerableHelpers System.Collections.Generic.EnumerableHelpers
CS.System.Collections.Generic.EnumerableHelpers = System.Collections.Generic.EnumerableHelpers


---@class System.Collections.Generic.CopyPosition : System.ValueType
---@field Start System.Collections.Generic.CopyPosition
System.Collections.Generic.CopyPosition = {}
---@alias CS.System.Collections.Generic.CopyPosition System.Collections.Generic.CopyPosition
CS.System.Collections.Generic.CopyPosition = System.Collections.Generic.CopyPosition

---@param endColumn number
---@return System.Collections.Generic.CopyPosition
function System.Collections.Generic.CopyPosition:Normalize(endColumn) end

---@class System.Collections.Generic.LargeArrayBuilder : System.ValueType
---@field Count number
System.Collections.Generic.LargeArrayBuilder = {}
---@alias CS.System.Collections.Generic.LargeArrayBuilder System.Collections.Generic.LargeArrayBuilder
CS.System.Collections.Generic.LargeArrayBuilder = System.Collections.Generic.LargeArrayBuilder

---@overload fun(initialize: boolean) : System.Collections.Generic.LargeArrayBuilder
---@param maxCapacity number
---@return System.Collections.Generic.LargeArrayBuilder
function System.Collections.Generic.LargeArrayBuilder.New(maxCapacity) end
---@param item T
function System.Collections.Generic.LargeArrayBuilder:Add(item) end
---@param items System.Collections.Generic.IEnumerable[T]
function System.Collections.Generic.LargeArrayBuilder:AddRange(items) end
---@overload fun(self: System.Collections.Generic.LargeArrayBuilder, array: T[], arrayIndex: number, count: number)
---@param position System.Collections.Generic.CopyPosition
---@param array T[]
---@param arrayIndex number
---@param count number
---@return System.Collections.Generic.CopyPosition
function System.Collections.Generic.LargeArrayBuilder:CopyTo(position, array, arrayIndex, count) end
---@param index number
---@return T[]
function System.Collections.Generic.LargeArrayBuilder:GetBuffer(index) end
---@param item T
function System.Collections.Generic.LargeArrayBuilder:SlowAdd(item) end
---@return T[]
function System.Collections.Generic.LargeArrayBuilder:ToArray() end
---@param out_array T[]
---@return boolean,T[]
function System.Collections.Generic.LargeArrayBuilder:TryMove(out_array) end

---@class System.Collections.Generic.LowLevelDictionary : System.Object
---@field Count number
---@field Item TValue
System.Collections.Generic.LowLevelDictionary = {}
---@alias CS.System.Collections.Generic.LowLevelDictionary System.Collections.Generic.LowLevelDictionary
CS.System.Collections.Generic.LowLevelDictionary = System.Collections.Generic.LowLevelDictionary

---@overload fun() : System.Collections.Generic.LowLevelDictionary
---@overload fun(capacity: number) : System.Collections.Generic.LowLevelDictionary
---@overload fun(comparer: System.Collections.Generic.IEqualityComparer[TKey]) : System.Collections.Generic.LowLevelDictionary
---@param capacity number
---@param comparer System.Collections.Generic.IEqualityComparer[TKey]
---@return System.Collections.Generic.LowLevelDictionary
function System.Collections.Generic.LowLevelDictionary.New(capacity, comparer) end
---@param key TKey
---@param out_value TValue
---@return boolean,TValue
function System.Collections.Generic.LowLevelDictionary:TryGetValue(key, out_value) end
---@param key TKey
---@param value TValue
function System.Collections.Generic.LowLevelDictionary:Add(key, value) end
---@param capacity number
function System.Collections.Generic.LowLevelDictionary:Clear(capacity) end
---@param key TKey
---@return boolean
function System.Collections.Generic.LowLevelDictionary:Remove(key) end

---@class System.Collections.Generic.LowLevelDictionary.Entry : System.Object
---@field _key TKey
---@field _value TValue
---@field _next System.Collections.Generic.LowLevelDictionary.Entry
System.Collections.Generic.LowLevelDictionary.Entry = {}
---@alias CS.System.Collections.Generic.LowLevelDictionary.Entry System.Collections.Generic.LowLevelDictionary.Entry
CS.System.Collections.Generic.LowLevelDictionary.Entry = System.Collections.Generic.LowLevelDictionary.Entry

---@return System.Collections.Generic.LowLevelDictionary.Entry
function System.Collections.Generic.LowLevelDictionary.Entry.New() end

---@class System.Collections.Generic.LowLevelDictionary.DefaultComparer : System.Object
System.Collections.Generic.LowLevelDictionary.DefaultComparer = {}
---@alias CS.System.Collections.Generic.LowLevelDictionary.DefaultComparer System.Collections.Generic.LowLevelDictionary.DefaultComparer
CS.System.Collections.Generic.LowLevelDictionary.DefaultComparer = System.Collections.Generic.LowLevelDictionary.DefaultComparer

---@return System.Collections.Generic.LowLevelDictionary.DefaultComparer
function System.Collections.Generic.LowLevelDictionary.DefaultComparer.New() end
---@param x T
---@param y T
---@return boolean
function System.Collections.Generic.LowLevelDictionary.DefaultComparer:Equals(x, y) end
---@param obj T
---@return number
function System.Collections.Generic.LowLevelDictionary.DefaultComparer:GetHashCode(obj) end

---@class System.Collections.Generic.ReferenceEqualityComparer : System.Object
System.Collections.Generic.ReferenceEqualityComparer = {}
---@alias CS.System.Collections.Generic.ReferenceEqualityComparer System.Collections.Generic.ReferenceEqualityComparer
CS.System.Collections.Generic.ReferenceEqualityComparer = System.Collections.Generic.ReferenceEqualityComparer

---@param x T
---@param y T
---@return boolean
function System.Collections.Generic.ReferenceEqualityComparer:Equals(x, y) end
---@param obj T
---@return number
function System.Collections.Generic.ReferenceEqualityComparer:GetHashCode(obj) end

---@class System.Collections.Generic.CollectionExtensions : System.Object
System.Collections.Generic.CollectionExtensions = {}
---@alias CS.System.Collections.Generic.CollectionExtensions System.Collections.Generic.CollectionExtensions
CS.System.Collections.Generic.CollectionExtensions = System.Collections.Generic.CollectionExtensions


---@class System.Collections.Generic.Queue : System.Object
---@field Count number
System.Collections.Generic.Queue = {}
---@alias CS.System.Collections.Generic.Queue System.Collections.Generic.Queue
CS.System.Collections.Generic.Queue = System.Collections.Generic.Queue

---@overload fun() : System.Collections.Generic.Queue
---@overload fun(capacity: number) : System.Collections.Generic.Queue
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Generic.Queue
function System.Collections.Generic.Queue.New(collection) end
function System.Collections.Generic.Queue:Clear() end
---@param array T[]
---@param arrayIndex number
function System.Collections.Generic.Queue:CopyTo(array, arrayIndex) end
---@param item T
function System.Collections.Generic.Queue:Enqueue(item) end
---@return System.Collections.Generic.Queue.Enumerator[T]
function System.Collections.Generic.Queue:GetEnumerator() end
---@return T
function System.Collections.Generic.Queue:Dequeue() end
---@param out_result T
---@return boolean,T
function System.Collections.Generic.Queue:TryDequeue(out_result) end
---@return T
function System.Collections.Generic.Queue:Peek() end
---@param out_result T
---@return boolean,T
function System.Collections.Generic.Queue:TryPeek(out_result) end
---@param item T
---@return boolean
function System.Collections.Generic.Queue:Contains(item) end
---@return T[]
function System.Collections.Generic.Queue:ToArray() end
function System.Collections.Generic.Queue:TrimExcess() end

---@class System.Collections.Generic.Queue.Enumerator : System.ValueType
---@field Current T
System.Collections.Generic.Queue.Enumerator = {}
---@alias CS.System.Collections.Generic.Queue.Enumerator System.Collections.Generic.Queue.Enumerator
CS.System.Collections.Generic.Queue.Enumerator = System.Collections.Generic.Queue.Enumerator

function System.Collections.Generic.Queue.Enumerator:Dispose() end
---@return boolean
function System.Collections.Generic.Queue.Enumerator:MoveNext() end

---@class System.Collections.Generic.QueueDebugView : System.Object
---@field Items T[]
System.Collections.Generic.QueueDebugView = {}
---@alias CS.System.Collections.Generic.QueueDebugView System.Collections.Generic.QueueDebugView
CS.System.Collections.Generic.QueueDebugView = System.Collections.Generic.QueueDebugView

---@param queue System.Collections.Generic.Queue[T]
---@return System.Collections.Generic.QueueDebugView
function System.Collections.Generic.QueueDebugView.New(queue) end

---@class System.Collections.Generic.Stack : System.Object
---@field Count number
System.Collections.Generic.Stack = {}
---@alias CS.System.Collections.Generic.Stack System.Collections.Generic.Stack
CS.System.Collections.Generic.Stack = System.Collections.Generic.Stack

---@overload fun() : System.Collections.Generic.Stack
---@overload fun(capacity: number) : System.Collections.Generic.Stack
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Generic.Stack
function System.Collections.Generic.Stack.New(collection) end
function System.Collections.Generic.Stack:Clear() end
---@param item T
---@return boolean
function System.Collections.Generic.Stack:Contains(item) end
---@param array T[]
---@param arrayIndex number
function System.Collections.Generic.Stack:CopyTo(array, arrayIndex) end
---@return System.Collections.Generic.Stack.Enumerator[T]
function System.Collections.Generic.Stack:GetEnumerator() end
function System.Collections.Generic.Stack:TrimExcess() end
---@return T
function System.Collections.Generic.Stack:Peek() end
---@param out_result T
---@return boolean,T
function System.Collections.Generic.Stack:TryPeek(out_result) end
---@return T
function System.Collections.Generic.Stack:Pop() end
---@param out_result T
---@return boolean,T
function System.Collections.Generic.Stack:TryPop(out_result) end
---@param item T
function System.Collections.Generic.Stack:Push(item) end
---@return T[]
function System.Collections.Generic.Stack:ToArray() end

---@class System.Collections.Generic.Stack.Enumerator : System.ValueType
---@field Current T
System.Collections.Generic.Stack.Enumerator = {}
---@alias CS.System.Collections.Generic.Stack.Enumerator System.Collections.Generic.Stack.Enumerator
CS.System.Collections.Generic.Stack.Enumerator = System.Collections.Generic.Stack.Enumerator

function System.Collections.Generic.Stack.Enumerator:Dispose() end
---@return boolean
function System.Collections.Generic.Stack.Enumerator:MoveNext() end

---@class System.Collections.Generic.StackDebugView : System.Object
---@field Items T[]
System.Collections.Generic.StackDebugView = {}
---@alias CS.System.Collections.Generic.StackDebugView System.Collections.Generic.StackDebugView
CS.System.Collections.Generic.StackDebugView = System.Collections.Generic.StackDebugView

---@param stack System.Collections.Generic.Stack[T]
---@return System.Collections.Generic.StackDebugView
function System.Collections.Generic.StackDebugView.New(stack) end

---@class System.Collections.Generic.CollectionDebugView : System.Object
---@field Items T[]
System.Collections.Generic.CollectionDebugView = {}
---@alias CS.System.Collections.Generic.CollectionDebugView System.Collections.Generic.CollectionDebugView
CS.System.Collections.Generic.CollectionDebugView = System.Collections.Generic.CollectionDebugView

---@param collection System.Collections.Generic.ICollection[T]
---@return System.Collections.Generic.CollectionDebugView
function System.Collections.Generic.CollectionDebugView.New(collection) end

---@class System.Collections.Generic.DictionaryDebugView : System.Object
---@field Items System.Collections.Generic.KeyValuePair[K,V][]
System.Collections.Generic.DictionaryDebugView = {}
---@alias CS.System.Collections.Generic.DictionaryDebugView System.Collections.Generic.DictionaryDebugView
CS.System.Collections.Generic.DictionaryDebugView = System.Collections.Generic.DictionaryDebugView

---@param dictionary System.Collections.Generic.IDictionary[K,V]
---@return System.Collections.Generic.DictionaryDebugView
function System.Collections.Generic.DictionaryDebugView.New(dictionary) end

---@class System.Collections.Generic.LowLevelList : System.Object
---@field Capacity number
---@field Count number
---@field Item T
System.Collections.Generic.LowLevelList = {}
---@alias CS.System.Collections.Generic.LowLevelList System.Collections.Generic.LowLevelList
CS.System.Collections.Generic.LowLevelList = System.Collections.Generic.LowLevelList

---@overload fun() : System.Collections.Generic.LowLevelList
---@overload fun(capacity: number) : System.Collections.Generic.LowLevelList
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Generic.LowLevelList
function System.Collections.Generic.LowLevelList.New(collection) end
---@param item T
function System.Collections.Generic.LowLevelList:Add(item) end
---@param collection System.Collections.Generic.IEnumerable[T]
function System.Collections.Generic.LowLevelList:AddRange(collection) end
function System.Collections.Generic.LowLevelList:Clear() end
---@param item T
---@return boolean
function System.Collections.Generic.LowLevelList:Contains(item) end
---@overload fun(self: System.Collections.Generic.LowLevelList, index: number, array: T[], arrayIndex: number, count: number)
---@param array T[]
---@param arrayIndex number
function System.Collections.Generic.LowLevelList:CopyTo(array, arrayIndex) end
---@overload fun(self: System.Collections.Generic.LowLevelList, item: T) : number
---@param item T
---@param index number
---@return number
function System.Collections.Generic.LowLevelList:IndexOf(item, index) end
---@param index number
---@param item T
function System.Collections.Generic.LowLevelList:Insert(index, item) end
---@param index number
---@param collection System.Collections.Generic.IEnumerable[T]
function System.Collections.Generic.LowLevelList:InsertRange(index, collection) end
---@param item T
---@return boolean
function System.Collections.Generic.LowLevelList:Remove(item) end
---@param match System.Predicate[T]
---@return number
function System.Collections.Generic.LowLevelList:RemoveAll(match) end
---@param index number
function System.Collections.Generic.LowLevelList:RemoveAt(index) end
---@return T[]
function System.Collections.Generic.LowLevelList:ToArray() end

---@class System.Collections.Generic.LowLevelListWithIList : System.Collections.Generic.LowLevelList[T]
System.Collections.Generic.LowLevelListWithIList = {}
---@alias CS.System.Collections.Generic.LowLevelListWithIList System.Collections.Generic.LowLevelListWithIList
CS.System.Collections.Generic.LowLevelListWithIList = System.Collections.Generic.LowLevelListWithIList

---@overload fun() : System.Collections.Generic.LowLevelListWithIList
---@overload fun(capacity: number) : System.Collections.Generic.LowLevelListWithIList
---@param collection System.Collections.Generic.IEnumerable[T]
---@return System.Collections.Generic.LowLevelListWithIList
function System.Collections.Generic.LowLevelListWithIList.New(collection) end

---@class System.Collections.Generic.LowLevelListWithIList.Enumerator : System.ValueType
---@field Current T
System.Collections.Generic.LowLevelListWithIList.Enumerator = {}
---@alias CS.System.Collections.Generic.LowLevelListWithIList.Enumerator System.Collections.Generic.LowLevelListWithIList.Enumerator
CS.System.Collections.Generic.LowLevelListWithIList.Enumerator = System.Collections.Generic.LowLevelListWithIList.Enumerator

function System.Collections.Generic.LowLevelListWithIList.Enumerator:Dispose() end
---@return boolean
function System.Collections.Generic.LowLevelListWithIList.Enumerator:MoveNext() end

---@class System.Collections.Generic.IntrospectiveSortUtilities : System.Object
System.Collections.Generic.IntrospectiveSortUtilities = {}
---@alias CS.System.Collections.Generic.IntrospectiveSortUtilities System.Collections.Generic.IntrospectiveSortUtilities
CS.System.Collections.Generic.IntrospectiveSortUtilities = System.Collections.Generic.IntrospectiveSortUtilities


---@class System.Collections.Generic.ArraySortHelper : System.Object
---@field Default System.Collections.Generic.ArraySortHelper
System.Collections.Generic.ArraySortHelper = {}
---@alias CS.System.Collections.Generic.ArraySortHelper System.Collections.Generic.ArraySortHelper
CS.System.Collections.Generic.ArraySortHelper = System.Collections.Generic.ArraySortHelper

---@return System.Collections.Generic.ArraySortHelper
function System.Collections.Generic.ArraySortHelper.New() end
---@param keys T[]
---@param index number
---@param length number
---@param comparer System.Collections.Generic.IComparer[T]
function System.Collections.Generic.ArraySortHelper:Sort(keys, index, length, comparer) end
---@param array T[]
---@param index number
---@param length number
---@param value T
---@param comparer System.Collections.Generic.IComparer[T]
---@return number
function System.Collections.Generic.ArraySortHelper:BinarySearch(array, index, length, value, comparer) end

---@class System.Collections.Generic.GenericArraySortHelper : System.Object
System.Collections.Generic.GenericArraySortHelper = {}
---@alias CS.System.Collections.Generic.GenericArraySortHelper System.Collections.Generic.GenericArraySortHelper
CS.System.Collections.Generic.GenericArraySortHelper = System.Collections.Generic.GenericArraySortHelper

---@return System.Collections.Generic.GenericArraySortHelper
function System.Collections.Generic.GenericArraySortHelper.New() end
---@param keys T[]
---@param index number
---@param length number
---@param comparer System.Collections.Generic.IComparer[T]
function System.Collections.Generic.GenericArraySortHelper:Sort(keys, index, length, comparer) end
---@param array T[]
---@param index number
---@param length number
---@param value T
---@param comparer System.Collections.Generic.IComparer[T]
---@return number
function System.Collections.Generic.GenericArraySortHelper:BinarySearch(array, index, length, value, comparer) end

---@class System.Collections.Generic.ArraySortHelper : System.Object
---@field Default System.Collections.Generic.ArraySortHelper
System.Collections.Generic.ArraySortHelper = {}
---@alias CS.System.Collections.Generic.ArraySortHelper System.Collections.Generic.ArraySortHelper
CS.System.Collections.Generic.ArraySortHelper = System.Collections.Generic.ArraySortHelper

---@return System.Collections.Generic.ArraySortHelper
function System.Collections.Generic.ArraySortHelper.New() end
---@param keys TKey[]
---@param values TValue[]
---@param index number
---@param length number
---@param comparer System.Collections.Generic.IComparer[TKey]
function System.Collections.Generic.ArraySortHelper:Sort(keys, values, index, length, comparer) end

---@class System.Collections.Generic.GenericArraySortHelper : System.Object
System.Collections.Generic.GenericArraySortHelper = {}
---@alias CS.System.Collections.Generic.GenericArraySortHelper System.Collections.Generic.GenericArraySortHelper
CS.System.Collections.Generic.GenericArraySortHelper = System.Collections.Generic.GenericArraySortHelper

---@return System.Collections.Generic.GenericArraySortHelper
function System.Collections.Generic.GenericArraySortHelper.New() end
---@param keys TKey[]
---@param values TValue[]
---@param index number
---@param length number
---@param comparer System.Collections.Generic.IComparer[TKey]
function System.Collections.Generic.GenericArraySortHelper:Sort(keys, values, index, length, comparer) end

---@class System.Collections.Generic.Comparer : System.Object
---@field Default System.Collections.Generic.Comparer
System.Collections.Generic.Comparer = {}
---@alias CS.System.Collections.Generic.Comparer System.Collections.Generic.Comparer
CS.System.Collections.Generic.Comparer = System.Collections.Generic.Comparer

---@param comparison System.Comparison[T]
---@return System.Collections.Generic.Comparer
function System.Collections.Generic.Comparer.Create(comparison) end
---@param x T
---@param y T
---@return number
function System.Collections.Generic.Comparer:Compare(x, y) end

---@class System.Collections.Generic.GenericComparer : System.Collections.Generic.Comparer[T]
System.Collections.Generic.GenericComparer = {}
---@alias CS.System.Collections.Generic.GenericComparer System.Collections.Generic.GenericComparer
CS.System.Collections.Generic.GenericComparer = System.Collections.Generic.GenericComparer

---@return System.Collections.Generic.GenericComparer
function System.Collections.Generic.GenericComparer.New() end
---@param x T
---@param y T
---@return number
function System.Collections.Generic.GenericComparer:Compare(x, y) end
---@param obj System.Object
---@return boolean
function System.Collections.Generic.GenericComparer:Equals(obj) end
---@return number
function System.Collections.Generic.GenericComparer:GetHashCode() end

---@class System.Collections.Generic.NullableComparer : System.Collections.Generic.Comparer[System.Nullable[T]]
System.Collections.Generic.NullableComparer = {}
---@alias CS.System.Collections.Generic.NullableComparer System.Collections.Generic.NullableComparer
CS.System.Collections.Generic.NullableComparer = System.Collections.Generic.NullableComparer

---@return System.Collections.Generic.NullableComparer
function System.Collections.Generic.NullableComparer.New() end
---@param x System.Nullable[T]
---@param y System.Nullable[T]
---@return number
function System.Collections.Generic.NullableComparer:Compare(x, y) end
---@param obj System.Object
---@return boolean
function System.Collections.Generic.NullableComparer:Equals(obj) end
---@return number
function System.Collections.Generic.NullableComparer:GetHashCode() end

---@class System.Collections.Generic.ObjectComparer : System.Collections.Generic.Comparer[T]
System.Collections.Generic.ObjectComparer = {}
---@alias CS.System.Collections.Generic.ObjectComparer System.Collections.Generic.ObjectComparer
CS.System.Collections.Generic.ObjectComparer = System.Collections.Generic.ObjectComparer

---@return System.Collections.Generic.ObjectComparer
function System.Collections.Generic.ObjectComparer.New() end
---@param x T
---@param y T
---@return number
function System.Collections.Generic.ObjectComparer:Compare(x, y) end
---@param obj System.Object
---@return boolean
function System.Collections.Generic.ObjectComparer:Equals(obj) end
---@return number
function System.Collections.Generic.ObjectComparer:GetHashCode() end

---@class System.Collections.Generic.ComparisonComparer : System.Collections.Generic.Comparer[T]
System.Collections.Generic.ComparisonComparer = {}
---@alias CS.System.Collections.Generic.ComparisonComparer System.Collections.Generic.ComparisonComparer
CS.System.Collections.Generic.ComparisonComparer = System.Collections.Generic.ComparisonComparer

---@param comparison System.Comparison[T]
---@return System.Collections.Generic.ComparisonComparer
function System.Collections.Generic.ComparisonComparer.New(comparison) end
---@param x T
---@param y T
---@return number
function System.Collections.Generic.ComparisonComparer:Compare(x, y) end

---@class System.Collections.Generic.EqualityComparer : System.Object
---@field Default System.Collections.Generic.EqualityComparer
System.Collections.Generic.EqualityComparer = {}
---@alias CS.System.Collections.Generic.EqualityComparer System.Collections.Generic.EqualityComparer
CS.System.Collections.Generic.EqualityComparer = System.Collections.Generic.EqualityComparer

---@param x T
---@param y T
---@return boolean
function System.Collections.Generic.EqualityComparer:Equals(x, y) end
---@param obj T
---@return number
function System.Collections.Generic.EqualityComparer:GetHashCode(obj) end

---@class System.Collections.Generic.GenericEqualityComparer : System.Collections.Generic.EqualityComparer[T]
System.Collections.Generic.GenericEqualityComparer = {}
---@alias CS.System.Collections.Generic.GenericEqualityComparer System.Collections.Generic.GenericEqualityComparer
CS.System.Collections.Generic.GenericEqualityComparer = System.Collections.Generic.GenericEqualityComparer

---@return System.Collections.Generic.GenericEqualityComparer
function System.Collections.Generic.GenericEqualityComparer.New() end
---@overload fun(self: System.Collections.Generic.GenericEqualityComparer, x: T, y: T) : boolean
---@param obj System.Object
---@return boolean
function System.Collections.Generic.GenericEqualityComparer:Equals(obj) end
---@overload fun(self: System.Collections.Generic.GenericEqualityComparer, obj: T) : number
---@return number
function System.Collections.Generic.GenericEqualityComparer:GetHashCode() end

---@class System.Collections.Generic.NullableEqualityComparer : System.Collections.Generic.EqualityComparer[System.Nullable[T]]
System.Collections.Generic.NullableEqualityComparer = {}
---@alias CS.System.Collections.Generic.NullableEqualityComparer System.Collections.Generic.NullableEqualityComparer
CS.System.Collections.Generic.NullableEqualityComparer = System.Collections.Generic.NullableEqualityComparer

---@return System.Collections.Generic.NullableEqualityComparer
function System.Collections.Generic.NullableEqualityComparer.New() end
---@overload fun(self: System.Collections.Generic.NullableEqualityComparer, x: System.Nullable[T], y: System.Nullable[T]) : boolean
---@param obj System.Object
---@return boolean
function System.Collections.Generic.NullableEqualityComparer:Equals(obj) end
---@overload fun(self: System.Collections.Generic.NullableEqualityComparer, obj: System.Nullable[T]) : number
---@return number
function System.Collections.Generic.NullableEqualityComparer:GetHashCode() end

---@class System.Collections.Generic.ObjectEqualityComparer : System.Collections.Generic.EqualityComparer[T]
System.Collections.Generic.ObjectEqualityComparer = {}
---@alias CS.System.Collections.Generic.ObjectEqualityComparer System.Collections.Generic.ObjectEqualityComparer
CS.System.Collections.Generic.ObjectEqualityComparer = System.Collections.Generic.ObjectEqualityComparer

---@return System.Collections.Generic.ObjectEqualityComparer
function System.Collections.Generic.ObjectEqualityComparer.New() end
---@overload fun(self: System.Collections.Generic.ObjectEqualityComparer, x: T, y: T) : boolean
---@param obj System.Object
---@return boolean
function System.Collections.Generic.ObjectEqualityComparer:Equals(obj) end
---@overload fun(self: System.Collections.Generic.ObjectEqualityComparer, obj: T) : number
---@return number
function System.Collections.Generic.ObjectEqualityComparer:GetHashCode() end

---@class System.Collections.Generic.ByteEqualityComparer : System.Collections.Generic.EqualityComparer
System.Collections.Generic.ByteEqualityComparer = {}
---@alias CS.System.Collections.Generic.ByteEqualityComparer System.Collections.Generic.ByteEqualityComparer
CS.System.Collections.Generic.ByteEqualityComparer = System.Collections.Generic.ByteEqualityComparer

---@return System.Collections.Generic.ByteEqualityComparer
function System.Collections.Generic.ByteEqualityComparer.New() end
---@overload fun(self: System.Collections.Generic.ByteEqualityComparer, x: number, y: number) : boolean
---@param obj System.Object
---@return boolean
function System.Collections.Generic.ByteEqualityComparer:Equals(obj) end
---@overload fun(self: System.Collections.Generic.ByteEqualityComparer, b: number) : number
---@return number
function System.Collections.Generic.ByteEqualityComparer:GetHashCode() end

---@class System.Collections.Generic.EnumEqualityComparer : System.Collections.Generic.EqualityComparer[T]
System.Collections.Generic.EnumEqualityComparer = {}
---@alias CS.System.Collections.Generic.EnumEqualityComparer System.Collections.Generic.EnumEqualityComparer
CS.System.Collections.Generic.EnumEqualityComparer = System.Collections.Generic.EnumEqualityComparer

---@return System.Collections.Generic.EnumEqualityComparer
function System.Collections.Generic.EnumEqualityComparer.New() end
---@overload fun(self: System.Collections.Generic.EnumEqualityComparer, x: T, y: T) : boolean
---@param obj System.Object
---@return boolean
function System.Collections.Generic.EnumEqualityComparer:Equals(obj) end
---@overload fun(self: System.Collections.Generic.EnumEqualityComparer, obj: T) : number
---@return number
function System.Collections.Generic.EnumEqualityComparer:GetHashCode() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Collections.Generic.EnumEqualityComparer:GetObjectData(info, context) end

---@class System.Collections.Generic.SByteEnumEqualityComparer : System.Collections.Generic.EnumEqualityComparer[T]
System.Collections.Generic.SByteEnumEqualityComparer = {}
---@alias CS.System.Collections.Generic.SByteEnumEqualityComparer System.Collections.Generic.SByteEnumEqualityComparer
CS.System.Collections.Generic.SByteEnumEqualityComparer = System.Collections.Generic.SByteEnumEqualityComparer

---@overload fun() : System.Collections.Generic.SByteEnumEqualityComparer
---@param information System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Collections.Generic.SByteEnumEqualityComparer
function System.Collections.Generic.SByteEnumEqualityComparer.New(information, context) end
---@param obj T
---@return number
function System.Collections.Generic.SByteEnumEqualityComparer:GetHashCode(obj) end

---@class System.Collections.Generic.ShortEnumEqualityComparer : System.Collections.Generic.EnumEqualityComparer[T]
System.Collections.Generic.ShortEnumEqualityComparer = {}
---@alias CS.System.Collections.Generic.ShortEnumEqualityComparer System.Collections.Generic.ShortEnumEqualityComparer
CS.System.Collections.Generic.ShortEnumEqualityComparer = System.Collections.Generic.ShortEnumEqualityComparer

---@overload fun() : System.Collections.Generic.ShortEnumEqualityComparer
---@param information System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Collections.Generic.ShortEnumEqualityComparer
function System.Collections.Generic.ShortEnumEqualityComparer.New(information, context) end
---@param obj T
---@return number
function System.Collections.Generic.ShortEnumEqualityComparer:GetHashCode(obj) end

---@class System.Collections.Generic.LongEnumEqualityComparer : System.Collections.Generic.EqualityComparer[T]
System.Collections.Generic.LongEnumEqualityComparer = {}
---@alias CS.System.Collections.Generic.LongEnumEqualityComparer System.Collections.Generic.LongEnumEqualityComparer
CS.System.Collections.Generic.LongEnumEqualityComparer = System.Collections.Generic.LongEnumEqualityComparer

---@overload fun() : System.Collections.Generic.LongEnumEqualityComparer
---@param information System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
---@return System.Collections.Generic.LongEnumEqualityComparer
function System.Collections.Generic.LongEnumEqualityComparer.New(information, context) end
---@overload fun(self: System.Collections.Generic.LongEnumEqualityComparer, x: T, y: T) : boolean
---@param obj System.Object
---@return boolean
function System.Collections.Generic.LongEnumEqualityComparer:Equals(obj) end
---@overload fun(self: System.Collections.Generic.LongEnumEqualityComparer, obj: T) : number
---@return number
function System.Collections.Generic.LongEnumEqualityComparer:GetHashCode() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.Collections.Generic.LongEnumEqualityComparer:GetObjectData(info, context) end

---@class System.Collections.Generic.InternalStringComparer : System.Collections.Generic.EqualityComparer
System.Collections.Generic.InternalStringComparer = {}
---@alias CS.System.Collections.Generic.InternalStringComparer System.Collections.Generic.InternalStringComparer
CS.System.Collections.Generic.InternalStringComparer = System.Collections.Generic.InternalStringComparer

---@return System.Collections.Generic.InternalStringComparer
function System.Collections.Generic.InternalStringComparer.New() end
---@param obj string
---@return number
function System.Collections.Generic.InternalStringComparer:GetHashCode(obj) end
---@param x string
---@param y string
---@return boolean
function System.Collections.Generic.InternalStringComparer:Equals(x, y) end

---@class System.Buffers.SpanAction : System.MulticastDelegate
System.Buffers.SpanAction = {}
---@alias CS.System.Buffers.SpanAction System.Buffers.SpanAction
CS.System.Buffers.SpanAction = System.Buffers.SpanAction

---@param object System.Object
---@param method System.IntPtr
---@return System.Buffers.SpanAction
function System.Buffers.SpanAction.New(object, method) end
---@param span System.Span[T]
---@param arg TArg
function System.Buffers.SpanAction:Invoke(span, arg) end
---@param span System.Span[T]
---@param arg TArg
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Buffers.SpanAction:BeginInvoke(span, arg, callback, object) end
---@param result System.IAsyncResult
function System.Buffers.SpanAction:EndInvoke(result) end

---@class System.Buffers.ReadOnlySpanAction : System.MulticastDelegate
System.Buffers.ReadOnlySpanAction = {}
---@alias CS.System.Buffers.ReadOnlySpanAction System.Buffers.ReadOnlySpanAction
CS.System.Buffers.ReadOnlySpanAction = System.Buffers.ReadOnlySpanAction

---@param object System.Object
---@param method System.IntPtr
---@return System.Buffers.ReadOnlySpanAction
function System.Buffers.ReadOnlySpanAction.New(object, method) end
---@param span System.ReadOnlySpan[T]
---@param arg TArg
function System.Buffers.ReadOnlySpanAction:Invoke(span, arg) end
---@param span System.ReadOnlySpan[T]
---@param arg TArg
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.Buffers.ReadOnlySpanAction:BeginInvoke(span, arg, callback, object) end
---@param result System.IAsyncResult
function System.Buffers.ReadOnlySpanAction:EndInvoke(result) end

---@class System.Buffers.ArrayPool : System.Object
---@field Shared System.Buffers.ArrayPool
System.Buffers.ArrayPool = {}
---@alias CS.System.Buffers.ArrayPool System.Buffers.ArrayPool
CS.System.Buffers.ArrayPool = System.Buffers.ArrayPool

---@overload fun() : System.Buffers.ArrayPool
---@param maxArrayLength number
---@param maxArraysPerBucket number
---@return System.Buffers.ArrayPool
function System.Buffers.ArrayPool.Create(maxArrayLength, maxArraysPerBucket) end
---@param minimumLength number
---@return T[]
function System.Buffers.ArrayPool:Rent(minimumLength) end
---@param array T[]
---@param clearArray boolean
function System.Buffers.ArrayPool:Return(array, clearArray) end

---@class System.Buffers.ArrayPoolEventSource : System.Diagnostics.Tracing.EventSource
System.Buffers.ArrayPoolEventSource = {}
---@alias CS.System.Buffers.ArrayPoolEventSource System.Buffers.ArrayPoolEventSource
CS.System.Buffers.ArrayPoolEventSource = System.Buffers.ArrayPoolEventSource


---@class System.Buffers.ArrayPoolEventSource.BufferAllocatedReason
---@field Pooled System.Buffers.ArrayPoolEventSource.BufferAllocatedReason
---@field OverMaximumSize System.Buffers.ArrayPoolEventSource.BufferAllocatedReason
---@field PoolExhausted System.Buffers.ArrayPoolEventSource.BufferAllocatedReason
System.Buffers.ArrayPoolEventSource.BufferAllocatedReason = {}
---@alias CS.System.Buffers.ArrayPoolEventSource.BufferAllocatedReason System.Buffers.ArrayPoolEventSource.BufferAllocatedReason
CS.System.Buffers.ArrayPoolEventSource.BufferAllocatedReason = System.Buffers.ArrayPoolEventSource.BufferAllocatedReason


---@class System.Buffers.ConfigurableArrayPool : System.Buffers.ArrayPool[T]
System.Buffers.ConfigurableArrayPool = {}
---@alias CS.System.Buffers.ConfigurableArrayPool System.Buffers.ConfigurableArrayPool
CS.System.Buffers.ConfigurableArrayPool = System.Buffers.ConfigurableArrayPool

---@param minimumLength number
---@return T[]
function System.Buffers.ConfigurableArrayPool:Rent(minimumLength) end
---@param array T[]
---@param clearArray boolean
function System.Buffers.ConfigurableArrayPool:Return(array, clearArray) end

---@class System.Buffers.ConfigurableArrayPool.Bucket : System.Object
System.Buffers.ConfigurableArrayPool.Bucket = {}
---@alias CS.System.Buffers.ConfigurableArrayPool.Bucket System.Buffers.ConfigurableArrayPool.Bucket
CS.System.Buffers.ConfigurableArrayPool.Bucket = System.Buffers.ConfigurableArrayPool.Bucket


---@class System.Buffers.IMemoryOwner
---@field Memory System.Memory[T]
System.Buffers.IMemoryOwner = {}
---@alias CS.System.Buffers.IMemoryOwner System.Buffers.IMemoryOwner
CS.System.Buffers.IMemoryOwner = System.Buffers.IMemoryOwner


---@class System.Buffers.IPinnable
System.Buffers.IPinnable = {}
---@alias CS.System.Buffers.IPinnable System.Buffers.IPinnable
CS.System.Buffers.IPinnable = System.Buffers.IPinnable

---@param elementIndex number
---@return System.Buffers.MemoryHandle
function System.Buffers.IPinnable:Pin(elementIndex) end
function System.Buffers.IPinnable:Unpin() end

---@class System.Buffers.MemoryHandle : System.ValueType
---@field Pointer System.Void*
System.Buffers.MemoryHandle = {}
---@alias CS.System.Buffers.MemoryHandle System.Buffers.MemoryHandle
CS.System.Buffers.MemoryHandle = System.Buffers.MemoryHandle

---@param pointer System.Void*
---@param handle System.Runtime.InteropServices.GCHandle
---@param pinnable System.Buffers.IPinnable
---@return System.Buffers.MemoryHandle
function System.Buffers.MemoryHandle.New(pointer, handle, pinnable) end
function System.Buffers.MemoryHandle:Dispose() end

---@class System.Buffers.MemoryManager : System.Object
---@field Memory System.Memory[T]
System.Buffers.MemoryManager = {}
---@alias CS.System.Buffers.MemoryManager System.Buffers.MemoryManager
CS.System.Buffers.MemoryManager = System.Buffers.MemoryManager

---@return System.Span[T]
function System.Buffers.MemoryManager:GetSpan() end
---@param elementIndex number
---@return System.Buffers.MemoryHandle
function System.Buffers.MemoryManager:Pin(elementIndex) end
function System.Buffers.MemoryManager:Unpin() end

---@class System.Buffers.TlsOverPerCoreLockedStacksArrayPool : System.Buffers.ArrayPool[T]
System.Buffers.TlsOverPerCoreLockedStacksArrayPool = {}
---@alias CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool System.Buffers.TlsOverPerCoreLockedStacksArrayPool
CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool = System.Buffers.TlsOverPerCoreLockedStacksArrayPool

---@return System.Buffers.TlsOverPerCoreLockedStacksArrayPool
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.New() end
---@param minimumLength number
---@return T[]
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool:Rent(minimumLength) end
---@param array T[]
---@param clearArray boolean
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool:Return(array, clearArray) end
---@return boolean
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool:Trim() end

---@class System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure
---@field Low System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure
---@field Medium System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure
---@field High System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure
System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure = {}
---@alias CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure
CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure = System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure


---@class System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks : System.Object
System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks = {}
---@alias CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks
CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks = System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks

---@return System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks.New() end
---@param array T[]
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks:TryPush(array) end
---@return T[]
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks:TryPop() end
---@param tickCount number
---@param id number
---@param pressure System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure[T]
---@param bucketSizes System.Int32[]
---@return boolean
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.PerCoreLockedStacks:Trim(tickCount, id, pressure, bucketSizes) end

---@class System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack : System.Object
System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack = {}
---@alias CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack
CS.System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack = System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack

---@return System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack.New() end
---@param array T[]
---@return boolean
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack:TryPush(array) end
---@return T[]
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack:TryPop() end
---@param tickCount number
---@param id number
---@param pressure System.Buffers.TlsOverPerCoreLockedStacksArrayPool.MemoryPressure[T]
---@param bucketSize number
function System.Buffers.TlsOverPerCoreLockedStacksArrayPool.LockedStack:Trim(tickCount, id, pressure, bucketSize) end

---@class System.Buffers.Utilities : System.Object
System.Buffers.Utilities = {}
---@alias CS.System.Buffers.Utilities System.Buffers.Utilities
CS.System.Buffers.Utilities = System.Buffers.Utilities


---@class System.Buffers.ArrayMemoryPool : System.Buffers.MemoryPool[T]
---@field MaxBufferSize number
System.Buffers.ArrayMemoryPool = {}
---@alias CS.System.Buffers.ArrayMemoryPool System.Buffers.ArrayMemoryPool
CS.System.Buffers.ArrayMemoryPool = System.Buffers.ArrayMemoryPool

---@return System.Buffers.ArrayMemoryPool
function System.Buffers.ArrayMemoryPool.New() end
---@param minimumBufferSize number
---@return System.Buffers.IMemoryOwner[T]
function System.Buffers.ArrayMemoryPool:Rent(minimumBufferSize) end

---@class System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer : System.Object
---@field Memory System.Memory[T]
System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer = {}
---@alias CS.System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer
CS.System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer = System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer

---@param size number
---@return System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer
function System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer.New(size) end
function System.Buffers.ArrayMemoryPool.ArrayMemoryPoolBuffer:Dispose() end

---@class System.Buffers.BuffersExtensions : System.Object
System.Buffers.BuffersExtensions = {}
---@alias CS.System.Buffers.BuffersExtensions System.Buffers.BuffersExtensions
CS.System.Buffers.BuffersExtensions = System.Buffers.BuffersExtensions


---@class System.Buffers.IBufferWriter
System.Buffers.IBufferWriter = {}
---@alias CS.System.Buffers.IBufferWriter System.Buffers.IBufferWriter
CS.System.Buffers.IBufferWriter = System.Buffers.IBufferWriter

---@param count number
function System.Buffers.IBufferWriter:Advance(count) end
---@param sizeHint number
---@return System.Memory[T]
function System.Buffers.IBufferWriter:GetMemory(sizeHint) end
---@param sizeHint number
---@return System.Span[T]
function System.Buffers.IBufferWriter:GetSpan(sizeHint) end

---@class System.Buffers.MemoryPool : System.Object
---@field Shared System.Buffers.MemoryPool
---@field MaxBufferSize number
System.Buffers.MemoryPool = {}
---@alias CS.System.Buffers.MemoryPool System.Buffers.MemoryPool
CS.System.Buffers.MemoryPool = System.Buffers.MemoryPool

---@param minBufferSize number
---@return System.Buffers.IMemoryOwner[T]
function System.Buffers.MemoryPool:Rent(minBufferSize) end
function System.Buffers.MemoryPool:Dispose() end

---@class System.Buffers.OperationStatus
---@field Done System.Buffers.OperationStatus
---@field DestinationTooSmall System.Buffers.OperationStatus
---@field NeedMoreData System.Buffers.OperationStatus
---@field InvalidData System.Buffers.OperationStatus
System.Buffers.OperationStatus = {}
---@alias CS.System.Buffers.OperationStatus System.Buffers.OperationStatus
CS.System.Buffers.OperationStatus = System.Buffers.OperationStatus


---@class System.Buffers.ReadOnlySequence : System.ValueType
---@field Empty System.Buffers.ReadOnlySequence
---@field Length number
---@field IsEmpty boolean
---@field IsSingleSegment boolean
---@field First System.ReadOnlyMemory[T]
---@field FirstSpan System.ReadOnlySpan[T]
---@field Start System.SequencePosition
---@field End System.SequencePosition
System.Buffers.ReadOnlySequence = {}
---@alias CS.System.Buffers.ReadOnlySequence System.Buffers.ReadOnlySequence
CS.System.Buffers.ReadOnlySequence = System.Buffers.ReadOnlySequence

---@overload fun(startSegment: System.Buffers.ReadOnlySequenceSegment[T], startIndex: number, endSegment: System.Buffers.ReadOnlySequenceSegment[T], endIndex: number) : System.Buffers.ReadOnlySequence
---@overload fun(array: T[]) : System.Buffers.ReadOnlySequence
---@overload fun(array: T[], start: number, length: number) : System.Buffers.ReadOnlySequence
---@param memory System.ReadOnlyMemory[T]
---@return System.Buffers.ReadOnlySequence
function System.Buffers.ReadOnlySequence.New(memory) end
---@overload fun(self: System.Buffers.ReadOnlySequence, start: number, length: number) : System.Buffers.ReadOnlySequence
---@overload fun(self: System.Buffers.ReadOnlySequence, start: number, _end: System.SequencePosition) : System.Buffers.ReadOnlySequence
---@overload fun(self: System.Buffers.ReadOnlySequence, start: System.SequencePosition, length: number) : System.Buffers.ReadOnlySequence
---@overload fun(self: System.Buffers.ReadOnlySequence, start: number, length: number) : System.Buffers.ReadOnlySequence
---@overload fun(self: System.Buffers.ReadOnlySequence, start: number, _end: System.SequencePosition) : System.Buffers.ReadOnlySequence
---@overload fun(self: System.Buffers.ReadOnlySequence, start: System.SequencePosition, length: number) : System.Buffers.ReadOnlySequence
---@overload fun(self: System.Buffers.ReadOnlySequence, start: System.SequencePosition, _end: System.SequencePosition) : System.Buffers.ReadOnlySequence
---@overload fun(self: System.Buffers.ReadOnlySequence, start: System.SequencePosition) : System.Buffers.ReadOnlySequence
---@param start number
---@return System.Buffers.ReadOnlySequence
function System.Buffers.ReadOnlySequence:Slice(start) end
---@return string
function System.Buffers.ReadOnlySequence:ToString() end
---@return System.Buffers.ReadOnlySequence.Enumerator[T]
function System.Buffers.ReadOnlySequence:GetEnumerator() end
---@overload fun(self: System.Buffers.ReadOnlySequence, offset: number) : System.SequencePosition
---@param offset number
---@param origin System.SequencePosition
---@return System.SequencePosition
function System.Buffers.ReadOnlySequence:GetPosition(offset, origin) end
---@param ref_position System.SequencePosition
---@param out_memory System.ReadOnlyMemory[T]
---@param advance boolean
---@return boolean,System.SequencePosition,System.ReadOnlyMemory[T]
function System.Buffers.ReadOnlySequence:TryGet(ref_position, out_memory, advance) end

---@class System.Buffers.ReadOnlySequence.Enumerator : System.ValueType
---@field Current System.ReadOnlyMemory[T]
System.Buffers.ReadOnlySequence.Enumerator = {}
---@alias CS.System.Buffers.ReadOnlySequence.Enumerator System.Buffers.ReadOnlySequence.Enumerator
CS.System.Buffers.ReadOnlySequence.Enumerator = System.Buffers.ReadOnlySequence.Enumerator

---@param ref_sequence System.Buffers.ReadOnlySequence[T]
---@return System.Buffers.ReadOnlySequence.Enumerator,System.Buffers.ReadOnlySequence[T]
function System.Buffers.ReadOnlySequence.Enumerator.New(ref_sequence) end
---@return boolean
function System.Buffers.ReadOnlySequence.Enumerator:MoveNext() end

---@class System.Buffers.ReadOnlySequence.SequenceType
---@field MultiSegment System.Buffers.ReadOnlySequence.SequenceType
---@field Array System.Buffers.ReadOnlySequence.SequenceType
---@field MemoryManager System.Buffers.ReadOnlySequence.SequenceType
---@field String System.Buffers.ReadOnlySequence.SequenceType
---@field Empty System.Buffers.ReadOnlySequence.SequenceType
System.Buffers.ReadOnlySequence.SequenceType = {}
---@alias CS.System.Buffers.ReadOnlySequence.SequenceType System.Buffers.ReadOnlySequence.SequenceType
CS.System.Buffers.ReadOnlySequence.SequenceType = System.Buffers.ReadOnlySequence.SequenceType


---@class System.Buffers.ReadOnlySequence : System.Object
---@field FlagBitMask number
---@field IndexBitMask number
---@field SegmentStartMask number
---@field SegmentEndMask number
---@field ArrayStartMask number
---@field ArrayEndMask number
---@field MemoryManagerStartMask number
---@field MemoryManagerEndMask number
---@field StringStartMask number
---@field StringEndMask number
System.Buffers.ReadOnlySequence = {}
---@alias CS.System.Buffers.ReadOnlySequence System.Buffers.ReadOnlySequence
CS.System.Buffers.ReadOnlySequence = System.Buffers.ReadOnlySequence

---@param startIndex number
---@return number
function System.Buffers.ReadOnlySequence.SegmentToSequenceStart(startIndex) end
---@param endIndex number
---@return number
function System.Buffers.ReadOnlySequence.SegmentToSequenceEnd(endIndex) end
---@param startIndex number
---@return number
function System.Buffers.ReadOnlySequence.ArrayToSequenceStart(startIndex) end
---@param endIndex number
---@return number
function System.Buffers.ReadOnlySequence.ArrayToSequenceEnd(endIndex) end
---@param startIndex number
---@return number
function System.Buffers.ReadOnlySequence.MemoryManagerToSequenceStart(startIndex) end
---@param endIndex number
---@return number
function System.Buffers.ReadOnlySequence.MemoryManagerToSequenceEnd(endIndex) end
---@param startIndex number
---@return number
function System.Buffers.ReadOnlySequence.StringToSequenceStart(startIndex) end
---@param endIndex number
---@return number
function System.Buffers.ReadOnlySequence.StringToSequenceEnd(endIndex) end

---@class System.Buffers.ReadOnlySequenceDebugView : System.Object
---@field BufferSegments System.Buffers.ReadOnlySequenceDebugView.ReadOnlySequenceDebugViewSegments[T]
---@field Items T[]
System.Buffers.ReadOnlySequenceDebugView = {}
---@alias CS.System.Buffers.ReadOnlySequenceDebugView System.Buffers.ReadOnlySequenceDebugView
CS.System.Buffers.ReadOnlySequenceDebugView = System.Buffers.ReadOnlySequenceDebugView

---@param sequence System.Buffers.ReadOnlySequence[T]
---@return System.Buffers.ReadOnlySequenceDebugView
function System.Buffers.ReadOnlySequenceDebugView.New(sequence) end

---@class System.Buffers.ReadOnlySequenceDebugView.ReadOnlySequenceDebugViewSegments : System.ValueType
---@field Segments System.ReadOnlyMemory[T][]
System.Buffers.ReadOnlySequenceDebugView.ReadOnlySequenceDebugViewSegments = {}
---@alias CS.System.Buffers.ReadOnlySequenceDebugView.ReadOnlySequenceDebugViewSegments System.Buffers.ReadOnlySequenceDebugView.ReadOnlySequenceDebugViewSegments
CS.System.Buffers.ReadOnlySequenceDebugView.ReadOnlySequenceDebugViewSegments = System.Buffers.ReadOnlySequenceDebugView.ReadOnlySequenceDebugViewSegments


---@class System.Buffers.ReadOnlySequenceSegment : System.Object
---@field Memory System.ReadOnlyMemory[T]
---@field Next System.Buffers.ReadOnlySequenceSegment
---@field RunningIndex number
System.Buffers.ReadOnlySequenceSegment = {}
---@alias CS.System.Buffers.ReadOnlySequenceSegment System.Buffers.ReadOnlySequenceSegment
CS.System.Buffers.ReadOnlySequenceSegment = System.Buffers.ReadOnlySequenceSegment


---@class System.Buffers.StandardFormat : System.ValueType
---@field NoPrecision number
---@field MaxPrecision number
---@field Symbol System.Char
---@field Precision number
---@field HasPrecision boolean
---@field IsDefault boolean
System.Buffers.StandardFormat = {}
---@alias CS.System.Buffers.StandardFormat System.Buffers.StandardFormat
CS.System.Buffers.StandardFormat = System.Buffers.StandardFormat

---@param symbol System.Char
---@param precision number
---@return System.Buffers.StandardFormat
function System.Buffers.StandardFormat.New(symbol, precision) end
---@overload fun(format: System.ReadOnlySpan) : System.Buffers.StandardFormat
---@param format string
---@return System.Buffers.StandardFormat
function System.Buffers.StandardFormat.Parse(format) end
---@param format System.ReadOnlySpan
---@param out_result System.Buffers.StandardFormat
---@return boolean,System.Buffers.StandardFormat
function System.Buffers.StandardFormat.TryParse(format, out_result) end
---@overload fun(self: System.Buffers.StandardFormat, obj: System.Object) : boolean
---@param other System.Buffers.StandardFormat
---@return boolean
function System.Buffers.StandardFormat:Equals(other) end
---@return number
function System.Buffers.StandardFormat:GetHashCode() end
---@return string
function System.Buffers.StandardFormat:ToString() end

---@class System.Buffers.ArrayBufferWriter : System.Object
---@field WrittenMemory System.ReadOnlyMemory[T]
---@field WrittenSpan System.ReadOnlySpan[T]
---@field WrittenCount number
---@field Capacity number
---@field FreeCapacity number
System.Buffers.ArrayBufferWriter = {}
---@alias CS.System.Buffers.ArrayBufferWriter System.Buffers.ArrayBufferWriter
CS.System.Buffers.ArrayBufferWriter = System.Buffers.ArrayBufferWriter

---@overload fun() : System.Buffers.ArrayBufferWriter
---@param initialCapacity number
---@return System.Buffers.ArrayBufferWriter
function System.Buffers.ArrayBufferWriter.New(initialCapacity) end
function System.Buffers.ArrayBufferWriter:Clear() end
---@param count number
function System.Buffers.ArrayBufferWriter:Advance(count) end
---@param sizeHint number
---@return System.Memory[T]
function System.Buffers.ArrayBufferWriter:GetMemory(sizeHint) end
---@param sizeHint number
---@return System.Span[T]
function System.Buffers.ArrayBufferWriter:GetSpan(sizeHint) end

---@class System.Buffers.SequenceReader : System.ValueType
---@field End boolean
---@field Sequence System.Buffers.ReadOnlySequence[T]
---@field Position System.SequencePosition
---@field CurrentSpan System.ReadOnlySpan[T]
---@field CurrentSpanIndex number
---@field UnreadSpan System.ReadOnlySpan[T]
---@field Consumed number
---@field Remaining number
---@field Length number
System.Buffers.SequenceReader = {}
---@alias CS.System.Buffers.SequenceReader System.Buffers.SequenceReader
CS.System.Buffers.SequenceReader = System.Buffers.SequenceReader

---@param sequence System.Buffers.ReadOnlySequence[T]
---@return System.Buffers.SequenceReader
function System.Buffers.SequenceReader.New(sequence) end
---@overload fun(self: System.Buffers.SequenceReader, out_span: System.ReadOnlySpan[T], delimiter: T, advancePastDelimiter: boolean) : boolean, System.ReadOnlySpan[T]
---@overload fun(self: System.Buffers.SequenceReader, out_span: System.ReadOnlySpan[T], delimiter: T, delimiterEscape: T, advancePastDelimiter: boolean) : boolean, System.ReadOnlySpan[T]
---@overload fun(self: System.Buffers.SequenceReader, out_sequence: System.Buffers.ReadOnlySequence[T], delimiter: T, advancePastDelimiter: boolean) : boolean, System.Buffers.ReadOnlySequence[T]
---@overload fun(self: System.Buffers.SequenceReader, out_sequence: System.Buffers.ReadOnlySequence[T], delimiter: T, delimiterEscape: T, advancePastDelimiter: boolean) : boolean, System.Buffers.ReadOnlySequence[T]
---@param out_sequence System.Buffers.ReadOnlySequence[T]
---@param delimiter System.ReadOnlySpan[T]
---@param advancePastDelimiter boolean
---@return boolean,System.Buffers.ReadOnlySequence[T]
function System.Buffers.SequenceReader:TryReadTo(out_sequence, delimiter, advancePastDelimiter) end
---@overload fun(self: System.Buffers.SequenceReader, out_span: System.ReadOnlySpan[T], delimiters: System.ReadOnlySpan[T], advancePastDelimiter: boolean) : boolean, System.ReadOnlySpan[T]
---@param out_sequence System.Buffers.ReadOnlySequence[T]
---@param delimiters System.ReadOnlySpan[T]
---@param advancePastDelimiter boolean
---@return boolean,System.Buffers.ReadOnlySequence[T]
function System.Buffers.SequenceReader:TryReadToAny(out_sequence, delimiters, advancePastDelimiter) end
---@param delimiter T
---@param advancePastDelimiter boolean
---@return boolean
function System.Buffers.SequenceReader:TryAdvanceTo(delimiter, advancePastDelimiter) end
---@param delimiters System.ReadOnlySpan[T]
---@param advancePastDelimiter boolean
---@return boolean
function System.Buffers.SequenceReader:TryAdvanceToAny(delimiters, advancePastDelimiter) end
---@param value T
---@return number
function System.Buffers.SequenceReader:AdvancePast(value) end
---@overload fun(self: System.Buffers.SequenceReader, values: System.ReadOnlySpan[T]) : number
---@overload fun(self: System.Buffers.SequenceReader, value0: T, value1: T, value2: T, value3: T) : number
---@overload fun(self: System.Buffers.SequenceReader, value0: T, value1: T, value2: T) : number
---@param value0 T
---@param value1 T
---@return number
function System.Buffers.SequenceReader:AdvancePastAny(value0, value1) end
---@overload fun(self: System.Buffers.SequenceReader, next: T, advancePast: boolean) : boolean
---@param next System.ReadOnlySpan[T]
---@param advancePast boolean
---@return boolean
function System.Buffers.SequenceReader:IsNext(next, advancePast) end
---@param out_value T
---@return boolean,T
function System.Buffers.SequenceReader:TryPeek(out_value) end
---@param out_value T
---@return boolean,T
function System.Buffers.SequenceReader:TryRead(out_value) end
---@param count number
function System.Buffers.SequenceReader:Rewind(count) end
---@param count number
function System.Buffers.SequenceReader:Advance(count) end
---@param destination System.Span[T]
---@return boolean
function System.Buffers.SequenceReader:TryCopyTo(destination) end

---@class System.Buffers.SequenceReaderExtensions : System.Object
System.Buffers.SequenceReaderExtensions = {}
---@alias CS.System.Buffers.SequenceReaderExtensions System.Buffers.SequenceReaderExtensions
CS.System.Buffers.SequenceReaderExtensions = System.Buffers.SequenceReaderExtensions

---@overload fun(ref_reader: System.Buffers.SequenceReader, out_value: number) : boolean, System.Buffers.SequenceReader, number
---@overload fun(ref_reader: System.Buffers.SequenceReader, out_value: number) : boolean, System.Buffers.SequenceReader, number
---@param ref_reader System.Buffers.SequenceReader
---@param out_value number
---@return boolean,System.Buffers.SequenceReader,number
function System.Buffers.SequenceReaderExtensions.TryReadLittleEndian(ref_reader, out_value) end
---@overload fun(ref_reader: System.Buffers.SequenceReader, out_value: number) : boolean, System.Buffers.SequenceReader, number
---@overload fun(ref_reader: System.Buffers.SequenceReader, out_value: number) : boolean, System.Buffers.SequenceReader, number
---@param ref_reader System.Buffers.SequenceReader
---@param out_value number
---@return boolean,System.Buffers.SequenceReader,number
function System.Buffers.SequenceReaderExtensions.TryReadBigEndian(ref_reader, out_value) end

---@class System.Buffers.Binary.BinaryPrimitives : System.Object
System.Buffers.Binary.BinaryPrimitives = {}
---@alias CS.System.Buffers.Binary.BinaryPrimitives System.Buffers.Binary.BinaryPrimitives
CS.System.Buffers.Binary.BinaryPrimitives = System.Buffers.Binary.BinaryPrimitives

---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@overload fun(value: number) : number
---@param value number
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReverseEndianness(value) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadInt16BigEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadInt32BigEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadInt64BigEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadUInt16BigEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadUInt32BigEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadUInt64BigEndian(source) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadInt16BigEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadInt32BigEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadInt64BigEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt16BigEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt32BigEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt64BigEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadInt16LittleEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadInt32LittleEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadInt64LittleEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadUInt16LittleEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadUInt32LittleEndian(source) end
---@param source System.ReadOnlySpan
---@return number
function System.Buffers.Binary.BinaryPrimitives.ReadUInt64LittleEndian(source) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadInt16LittleEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadInt32LittleEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadInt64LittleEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt16LittleEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt32LittleEndian(source, out_value) end
---@param source System.ReadOnlySpan
---@param out_value number
---@return boolean,number
function System.Buffers.Binary.BinaryPrimitives.TryReadUInt64LittleEndian(source, out_value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteInt16BigEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteInt32BigEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteInt64BigEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteUInt16BigEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteUInt32BigEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteUInt64BigEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt16BigEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt32BigEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt64BigEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt16BigEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt32BigEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt64BigEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteInt16LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteInt32LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteInt64LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteUInt16LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteUInt32LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
function System.Buffers.Binary.BinaryPrimitives.WriteUInt64LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt16LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt32LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteInt64LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt16LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt32LittleEndian(destination, value) end
---@param destination System.Span
---@param value number
---@return boolean
function System.Buffers.Binary.BinaryPrimitives.TryWriteUInt64LittleEndian(destination, value) end

---@class System.Buffers.Text.FormattingHelpers : System.Object
System.Buffers.Text.FormattingHelpers = {}
---@alias CS.System.Buffers.Text.FormattingHelpers System.Buffers.Text.FormattingHelpers
CS.System.Buffers.Text.FormattingHelpers = System.Buffers.Text.FormattingHelpers

---@overload fun(value: number) : number
---@param value number
---@return number
function System.Buffers.Text.FormattingHelpers.CountDigits(value) end
---@param value number
---@return number
function System.Buffers.Text.FormattingHelpers.CountHexDigits(value) end
---@param ref_format System.Buffers.StandardFormat
---@param defaultSymbol System.Char
---@return System.Char,System.Buffers.StandardFormat
function System.Buffers.Text.FormattingHelpers.GetSymbolOrDefault(ref_format, defaultSymbol) end
---@param buffer System.Span
function System.Buffers.Text.FormattingHelpers.FillWithAsciiZeros(buffer) end
---@param value number
---@param buffer System.Span
---@param startingIndex number
---@param casing System.Buffers.Text.FormattingHelpers.HexCasing
function System.Buffers.Text.FormattingHelpers.WriteHexByte(value, buffer, startingIndex, casing) end
---@overload fun(value: number, buffer: System.Span)
---@param value number
---@param buffer System.Span
function System.Buffers.Text.FormattingHelpers.WriteDigits(value, buffer) end
---@param value number
---@param buffer System.Span
function System.Buffers.Text.FormattingHelpers.WriteDigitsWithGroupSeparator(value, buffer) end
---@param value number
---@param buffer System.Span
---@param startingIndex number
function System.Buffers.Text.FormattingHelpers.WriteFourDecimalDigits(value, buffer, startingIndex) end
---@param value number
---@param buffer System.Span
---@param startingIndex number
function System.Buffers.Text.FormattingHelpers.WriteTwoDecimalDigits(value, buffer, startingIndex) end
---@overload fun(numerator: number, denominator: number, out_modulo: number) : number, number
---@param numerator number
---@param denominator number
---@param out_modulo number
---@return number,number
function System.Buffers.Text.FormattingHelpers.DivMod(numerator, denominator, out_modulo) end
---@param value number
---@param out_valueWithoutTrailingZeros number
---@return number,number
function System.Buffers.Text.FormattingHelpers.CountDecimalTrailingZeros(value, out_valueWithoutTrailingZeros) end

---@class System.Buffers.Text.FormattingHelpers.HexCasing
---@field Uppercase System.Buffers.Text.FormattingHelpers.HexCasing
---@field Lowercase System.Buffers.Text.FormattingHelpers.HexCasing
System.Buffers.Text.FormattingHelpers.HexCasing = {}
---@alias CS.System.Buffers.Text.FormattingHelpers.HexCasing System.Buffers.Text.FormattingHelpers.HexCasing
CS.System.Buffers.Text.FormattingHelpers.HexCasing = System.Buffers.Text.FormattingHelpers.HexCasing


---@class System.Buffers.Text.Base64 : System.Object
System.Buffers.Text.Base64 = {}
---@alias CS.System.Buffers.Text.Base64 System.Buffers.Text.Base64
CS.System.Buffers.Text.Base64 = System.Buffers.Text.Base64

---@param utf8 System.ReadOnlySpan
---@param bytes System.Span
---@param out_bytesConsumed number
---@param out_bytesWritten number
---@param isFinalBlock boolean
---@return System.Buffers.OperationStatus,number,number
function System.Buffers.Text.Base64.DecodeFromUtf8(utf8, bytes, out_bytesConsumed, out_bytesWritten, isFinalBlock) end
---@param length number
---@return number
function System.Buffers.Text.Base64.GetMaxDecodedFromUtf8Length(length) end
---@param buffer System.Span
---@param out_bytesWritten number
---@return System.Buffers.OperationStatus,number
function System.Buffers.Text.Base64.DecodeFromUtf8InPlace(buffer, out_bytesWritten) end
---@param bytes System.ReadOnlySpan
---@param utf8 System.Span
---@param out_bytesConsumed number
---@param out_bytesWritten number
---@param isFinalBlock boolean
---@return System.Buffers.OperationStatus,number,number
function System.Buffers.Text.Base64.EncodeToUtf8(bytes, utf8, out_bytesConsumed, out_bytesWritten, isFinalBlock) end
---@param length number
---@return number
function System.Buffers.Text.Base64.GetMaxEncodedToUtf8Length(length) end
---@param buffer System.Span
---@param dataLength number
---@param out_bytesWritten number
---@return System.Buffers.OperationStatus,number
function System.Buffers.Text.Base64.EncodeToUtf8InPlace(buffer, dataLength, out_bytesWritten) end

---@class System.Buffers.Text.Utf8Constants : System.Object
---@field Colon number
---@field Comma number
---@field Minus number
---@field Period number
---@field Plus number
---@field Slash number
---@field Space number
---@field Hyphen number
---@field Separator number
---@field GroupSize number
---@field s_nullUtcOffset System.TimeSpan
---@field DateTimeMaxUtcOffsetHours number
---@field DateTimeNumFractionDigits number
---@field MaxDateTimeFraction number
---@field BillionMaxUIntValue number
---@field Billion number
System.Buffers.Text.Utf8Constants = {}
---@alias CS.System.Buffers.Text.Utf8Constants System.Buffers.Text.Utf8Constants
CS.System.Buffers.Text.Utf8Constants = System.Buffers.Text.Utf8Constants


---@class System.Buffers.Text.Utf8Formatter : System.Object
System.Buffers.Text.Utf8Formatter = {}
---@alias CS.System.Buffers.Text.Utf8Formatter System.Buffers.Text.Utf8Formatter
CS.System.Buffers.Text.Utf8Formatter = System.Buffers.Text.Utf8Formatter

---@overload fun(value: boolean, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: System.DateTimeOffset, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: System.DateTime, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: System.Decimal, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: System.Guid, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@overload fun(value: number, destination: System.Span, out_bytesWritten: number, format: System.Buffers.StandardFormat) : boolean, number
---@param value System.TimeSpan
---@param destination System.Span
---@param out_bytesWritten number
---@param format System.Buffers.StandardFormat
---@return boolean,number
function System.Buffers.Text.Utf8Formatter.TryFormat(value, destination, out_bytesWritten, format) end

---@class System.Buffers.Text.Utf8Formatter.DecomposedGuid : System.ValueType
---@field Guid System.Guid
---@field Byte00 number
---@field Byte01 number
---@field Byte02 number
---@field Byte03 number
---@field Byte04 number
---@field Byte05 number
---@field Byte06 number
---@field Byte07 number
---@field Byte08 number
---@field Byte09 number
---@field Byte10 number
---@field Byte11 number
---@field Byte12 number
---@field Byte13 number
---@field Byte14 number
---@field Byte15 number
System.Buffers.Text.Utf8Formatter.DecomposedGuid = {}
---@alias CS.System.Buffers.Text.Utf8Formatter.DecomposedGuid System.Buffers.Text.Utf8Formatter.DecomposedGuid
CS.System.Buffers.Text.Utf8Formatter.DecomposedGuid = System.Buffers.Text.Utf8Formatter.DecomposedGuid


---@class System.Buffers.Text.ParserHelpers : System.Object
---@field ByteOverflowLength number
---@field ByteOverflowLengthHex number
---@field UInt16OverflowLength number
---@field UInt16OverflowLengthHex number
---@field UInt32OverflowLength number
---@field UInt32OverflowLengthHex number
---@field UInt64OverflowLength number
---@field UInt64OverflowLengthHex number
---@field SByteOverflowLength number
---@field SByteOverflowLengthHex number
---@field Int16OverflowLength number
---@field Int16OverflowLengthHex number
---@field Int32OverflowLength number
---@field Int32OverflowLengthHex number
---@field Int64OverflowLength number
---@field Int64OverflowLengthHex number
---@field s_hexLookup System.Byte[]
System.Buffers.Text.ParserHelpers = {}
---@alias CS.System.Buffers.Text.ParserHelpers System.Buffers.Text.ParserHelpers
CS.System.Buffers.Text.ParserHelpers = System.Buffers.Text.ParserHelpers

---@param i number
---@return boolean
function System.Buffers.Text.ParserHelpers.IsDigit(i) end

---@class System.Buffers.Text.Utf8Parser : System.Object
System.Buffers.Text.Utf8Parser = {}
---@alias CS.System.Buffers.Text.Utf8Parser System.Buffers.Text.Utf8Parser
CS.System.Buffers.Text.Utf8Parser = System.Buffers.Text.Utf8Parser

---@overload fun(source: System.ReadOnlySpan, out_value: boolean, out_bytesConsumed: number, standardFormat: System.Char) : boolean, boolean, number
---@overload fun(source: System.ReadOnlySpan, out_value: System.DateTime, out_bytesConsumed: number, standardFormat: System.Char) : boolean, System.DateTime, number
---@overload fun(source: System.ReadOnlySpan, out_value: System.DateTimeOffset, out_bytesConsumed: number, standardFormat: System.Char) : boolean, System.DateTimeOffset, number
---@overload fun(source: System.ReadOnlySpan, out_value: System.Decimal, out_bytesConsumed: number, standardFormat: System.Char) : boolean, System.Decimal, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: System.Guid, out_bytesConsumed: number, standardFormat: System.Char) : boolean, System.Guid, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@overload fun(source: System.ReadOnlySpan, out_value: number, out_bytesConsumed: number, standardFormat: System.Char) : boolean, number, number
---@param source System.ReadOnlySpan
---@param out_value System.TimeSpan
---@param out_bytesConsumed number
---@param standardFormat System.Char
---@return boolean,System.TimeSpan,number
function System.Buffers.Text.Utf8Parser.TryParse(source, out_value, out_bytesConsumed, standardFormat) end

---@class System.Buffers.Text.Utf8Parser.ParseNumberOptions
---@field AllowExponent System.Buffers.Text.Utf8Parser.ParseNumberOptions
System.Buffers.Text.Utf8Parser.ParseNumberOptions = {}
---@alias CS.System.Buffers.Text.Utf8Parser.ParseNumberOptions System.Buffers.Text.Utf8Parser.ParseNumberOptions
CS.System.Buffers.Text.Utf8Parser.ParseNumberOptions = System.Buffers.Text.Utf8Parser.ParseNumberOptions


---@class System.Buffers.Text.Utf8Parser.ComponentParseResult
---@field NoMoreData System.Buffers.Text.Utf8Parser.ComponentParseResult
---@field Colon System.Buffers.Text.Utf8Parser.ComponentParseResult
---@field Period System.Buffers.Text.Utf8Parser.ComponentParseResult
---@field ParseFailure System.Buffers.Text.Utf8Parser.ComponentParseResult
System.Buffers.Text.Utf8Parser.ComponentParseResult = {}
---@alias CS.System.Buffers.Text.Utf8Parser.ComponentParseResult System.Buffers.Text.Utf8Parser.ComponentParseResult
CS.System.Buffers.Text.Utf8Parser.ComponentParseResult = System.Buffers.Text.Utf8Parser.ComponentParseResult


---@class System.Buffers.Text.Utf8Parser.TimeSpanSplitter : System.ValueType
---@field V1 number
---@field V2 number
---@field V3 number
---@field V4 number
---@field V5 number
---@field IsNegative boolean
---@field Separators number
System.Buffers.Text.Utf8Parser.TimeSpanSplitter = {}
---@alias CS.System.Buffers.Text.Utf8Parser.TimeSpanSplitter System.Buffers.Text.Utf8Parser.TimeSpanSplitter
CS.System.Buffers.Text.Utf8Parser.TimeSpanSplitter = System.Buffers.Text.Utf8Parser.TimeSpanSplitter

---@param source System.ReadOnlySpan
---@param periodUsedToSeparateDay boolean
---@param out_bytesConsumed number
---@return boolean,number
function System.Buffers.Text.Utf8Parser.TimeSpanSplitter:TrySplitTimeSpan(source, periodUsedToSeparateDay, out_bytesConsumed) end

---@class System.Buffers.Text.Number : System.Object
System.Buffers.Text.Number = {}
---@alias CS.System.Buffers.Text.Number System.Buffers.Text.Number
CS.System.Buffers.Text.Number = System.Buffers.Text.Number

---@param ref_number System.Buffers.Text.NumberBuffer
---@param ref_value System.Decimal
---@return boolean,System.Buffers.Text.NumberBuffer,System.Decimal
function System.Buffers.Text.Number.NumberBufferToDecimal(ref_number, ref_value) end
---@param value System.Decimal
---@param ref_number System.Buffers.Text.NumberBuffer
---@return ,System.Buffers.Text.NumberBuffer
function System.Buffers.Text.Number.DecimalToNumber(value, ref_number) end
---@param ref_number System.Buffers.Text.NumberBuffer
---@param pos number
---@return ,System.Buffers.Text.NumberBuffer
function System.Buffers.Text.Number.RoundNumber(ref_number, pos) end

---@class System.Buffers.Text.NumberBuffer : System.ValueType
---@field BufferSize number
---@field Scale number
---@field IsNegative boolean
---@field Digits System.Span
---@field UnsafeDigits System.Byte*
---@field NumDigits number
System.Buffers.Text.NumberBuffer = {}
---@alias CS.System.Buffers.Text.NumberBuffer System.Buffers.Text.NumberBuffer
CS.System.Buffers.Text.NumberBuffer = System.Buffers.Text.NumberBuffer

function System.Buffers.Text.NumberBuffer:CheckConsistency() end
---@return string
function System.Buffers.Text.NumberBuffer:ToString() end

---@class System.IO.DriveInfoInternal : System.Object
System.IO.DriveInfoInternal = {}
---@alias CS.System.IO.DriveInfoInternal System.IO.DriveInfoInternal
CS.System.IO.DriveInfoInternal = System.IO.DriveInfoInternal

---@return System.String[]
function System.IO.DriveInfoInternal.GetLogicalDrives() end

---@class System.IO.DisableMediaInsertionPrompt : System.ValueType
System.IO.DisableMediaInsertionPrompt = {}
---@alias CS.System.IO.DisableMediaInsertionPrompt System.IO.DisableMediaInsertionPrompt
CS.System.IO.DisableMediaInsertionPrompt = System.IO.DisableMediaInsertionPrompt

---@return System.IO.DisableMediaInsertionPrompt
function System.IO.DisableMediaInsertionPrompt.Create() end
function System.IO.DisableMediaInsertionPrompt:Dispose() end

---@class System.IO.FileSystem : System.Object
System.IO.FileSystem = {}
---@alias CS.System.IO.FileSystem System.IO.FileSystem
CS.System.IO.FileSystem = System.IO.FileSystem

---@param sourceFullPath string
---@param destFullPath string
---@param overwrite boolean
function System.IO.FileSystem.CopyFile(sourceFullPath, destFullPath, overwrite) end
---@param sourceFullPath string
---@param destFullPath string
---@param destBackupFullPath string
---@param ignoreMetadataErrors boolean
function System.IO.FileSystem.ReplaceFile(sourceFullPath, destFullPath, destBackupFullPath, ignoreMetadataErrors) end
---@param fullPath string
function System.IO.FileSystem.CreateDirectory(fullPath) end
---@param fullPath string
function System.IO.FileSystem.DeleteFile(fullPath) end
---@param fullPath string
---@return boolean
function System.IO.FileSystem.DirectoryExists(fullPath) end
---@param fullPath string
---@return boolean
function System.IO.FileSystem.FileExists(fullPath) end
---@param fullPath string
---@return System.IO.FileAttributes
function System.IO.FileSystem.GetAttributes(fullPath) end
---@param fullPath string
---@return System.DateTimeOffset
function System.IO.FileSystem.GetCreationTime(fullPath) end
---@param fullPath string
---@param asDirectory boolean
---@return System.IO.FileSystemInfo
function System.IO.FileSystem.GetFileSystemInfo(fullPath, asDirectory) end
---@param fullPath string
---@return System.DateTimeOffset
function System.IO.FileSystem.GetLastAccessTime(fullPath) end
---@param fullPath string
---@return System.DateTimeOffset
function System.IO.FileSystem.GetLastWriteTime(fullPath) end
---@param sourceFullPath string
---@param destFullPath string
function System.IO.FileSystem.MoveDirectory(sourceFullPath, destFullPath) end
---@param sourceFullPath string
---@param destFullPath string
function System.IO.FileSystem.MoveFile(sourceFullPath, destFullPath) end
---@param fullPath string
---@param recursive boolean
function System.IO.FileSystem.RemoveDirectory(fullPath, recursive) end
---@param fullPath string
---@param attributes System.IO.FileAttributes
function System.IO.FileSystem.SetAttributes(fullPath, attributes) end
---@param fullPath string
---@param time System.DateTimeOffset
---@param asDirectory boolean
function System.IO.FileSystem.SetCreationTime(fullPath, time, asDirectory) end
---@param fullPath string
---@param time System.DateTimeOffset
---@param asDirectory boolean
function System.IO.FileSystem.SetLastAccessTime(fullPath, time, asDirectory) end
---@param fullPath string
---@param time System.DateTimeOffset
---@param asDirectory boolean
function System.IO.FileSystem.SetLastWriteTime(fullPath, time, asDirectory) end
---@return System.String[]
function System.IO.FileSystem.GetLogicalDrives() end

---@class System.IO.DirectoryNotFoundException : System.IO.IOException
System.IO.DirectoryNotFoundException = {}
---@alias CS.System.IO.DirectoryNotFoundException System.IO.DirectoryNotFoundException
CS.System.IO.DirectoryNotFoundException = System.IO.DirectoryNotFoundException

---@overload fun() : System.IO.DirectoryNotFoundException
---@overload fun(message: string) : System.IO.DirectoryNotFoundException
---@param message string
---@param innerException System.Exception
---@return System.IO.DirectoryNotFoundException
function System.IO.DirectoryNotFoundException.New(message, innerException) end

---@class System.IO.EndOfStreamException : System.IO.IOException
System.IO.EndOfStreamException = {}
---@alias CS.System.IO.EndOfStreamException System.IO.EndOfStreamException
CS.System.IO.EndOfStreamException = System.IO.EndOfStreamException

---@overload fun() : System.IO.EndOfStreamException
---@overload fun(message: string) : System.IO.EndOfStreamException
---@param message string
---@param innerException System.Exception
---@return System.IO.EndOfStreamException
function System.IO.EndOfStreamException.New(message, innerException) end

---@class System.IO.Error : System.Object
System.IO.Error = {}
---@alias CS.System.IO.Error System.IO.Error
CS.System.IO.Error = System.IO.Error


---@class System.IO.FileAccess
---@field Read System.IO.FileAccess
---@field Write System.IO.FileAccess
---@field ReadWrite System.IO.FileAccess
System.IO.FileAccess = {}
---@alias CS.System.IO.FileAccess System.IO.FileAccess
CS.System.IO.FileAccess = System.IO.FileAccess


---@class System.IO.FileLoadException : System.IO.IOException
---@field Message string
---@field FileName string
---@field FusionLog string
System.IO.FileLoadException = {}
---@alias CS.System.IO.FileLoadException System.IO.FileLoadException
CS.System.IO.FileLoadException = System.IO.FileLoadException

---@overload fun() : System.IO.FileLoadException
---@overload fun(message: string) : System.IO.FileLoadException
---@overload fun(message: string, inner: System.Exception) : System.IO.FileLoadException
---@overload fun(message: string, fileName: string) : System.IO.FileLoadException
---@param message string
---@param fileName string
---@param inner System.Exception
---@return System.IO.FileLoadException
function System.IO.FileLoadException.New(message, fileName, inner) end
---@return string
function System.IO.FileLoadException:ToString() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.IO.FileLoadException:GetObjectData(info, context) end

---@class System.IO.FileMode
---@field CreateNew System.IO.FileMode
---@field Create System.IO.FileMode
---@field Open System.IO.FileMode
---@field OpenOrCreate System.IO.FileMode
---@field Truncate System.IO.FileMode
---@field Append System.IO.FileMode
System.IO.FileMode = {}
---@alias CS.System.IO.FileMode System.IO.FileMode
CS.System.IO.FileMode = System.IO.FileMode


---@class System.IO.FileNotFoundException : System.IO.IOException
---@field Message string
---@field FileName string
---@field FusionLog string
System.IO.FileNotFoundException = {}
---@alias CS.System.IO.FileNotFoundException System.IO.FileNotFoundException
CS.System.IO.FileNotFoundException = System.IO.FileNotFoundException

---@overload fun() : System.IO.FileNotFoundException
---@overload fun(message: string) : System.IO.FileNotFoundException
---@overload fun(message: string, innerException: System.Exception) : System.IO.FileNotFoundException
---@overload fun(message: string, fileName: string) : System.IO.FileNotFoundException
---@param message string
---@param fileName string
---@param innerException System.Exception
---@return System.IO.FileNotFoundException
function System.IO.FileNotFoundException.New(message, fileName, innerException) end
---@return string
function System.IO.FileNotFoundException:ToString() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.IO.FileNotFoundException:GetObjectData(info, context) end

---@class System.IO.FileOptions
---@field None System.IO.FileOptions
---@field WriteThrough System.IO.FileOptions
---@field Asynchronous System.IO.FileOptions
---@field RandomAccess System.IO.FileOptions
---@field DeleteOnClose System.IO.FileOptions
---@field SequentialScan System.IO.FileOptions
---@field Encrypted System.IO.FileOptions
System.IO.FileOptions = {}
---@alias CS.System.IO.FileOptions System.IO.FileOptions
CS.System.IO.FileOptions = System.IO.FileOptions


---@class System.IO.FileShare
---@field None System.IO.FileShare
---@field Read System.IO.FileShare
---@field Write System.IO.FileShare
---@field ReadWrite System.IO.FileShare
---@field Delete System.IO.FileShare
---@field Inheritable System.IO.FileShare
System.IO.FileShare = {}
---@alias CS.System.IO.FileShare System.IO.FileShare
CS.System.IO.FileShare = System.IO.FileShare


---@class System.IO.IOException : System.SystemException
System.IO.IOException = {}
---@alias CS.System.IO.IOException System.IO.IOException
CS.System.IO.IOException = System.IO.IOException

---@overload fun() : System.IO.IOException
---@overload fun(message: string) : System.IO.IOException
---@overload fun(message: string, hresult: number) : System.IO.IOException
---@param message string
---@param innerException System.Exception
---@return System.IO.IOException
function System.IO.IOException.New(message, innerException) end

---@class System.IO.MemoryStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Capacity number
---@field Length number
---@field Position number
System.IO.MemoryStream = {}
---@alias CS.System.IO.MemoryStream System.IO.MemoryStream
CS.System.IO.MemoryStream = System.IO.MemoryStream

---@overload fun() : System.IO.MemoryStream
---@overload fun(capacity: number) : System.IO.MemoryStream
---@overload fun(buffer: System.Byte[]) : System.IO.MemoryStream
---@overload fun(buffer: System.Byte[], writable: boolean) : System.IO.MemoryStream
---@overload fun(buffer: System.Byte[], index: number, count: number) : System.IO.MemoryStream
---@overload fun(buffer: System.Byte[], index: number, count: number, writable: boolean) : System.IO.MemoryStream
---@param buffer System.Byte[]
---@param index number
---@param count number
---@param writable boolean
---@param publiclyVisible boolean
---@return System.IO.MemoryStream
function System.IO.MemoryStream.New(buffer, index, count, writable, publiclyVisible) end
function System.IO.MemoryStream:Flush() end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.MemoryStream:FlushAsync(cancellationToken) end
---@return System.Byte[]
function System.IO.MemoryStream:GetBuffer() end
---@param out_buffer System.ArraySegment
---@return boolean,System.ArraySegment
function System.IO.MemoryStream:TryGetBuffer(out_buffer) end
---@overload fun(self: System.IO.MemoryStream, buffer: System.Byte[], offset: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.MemoryStream:Read(buffer) end
---@overload fun(self: System.IO.MemoryStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.MemoryStream:ReadAsync(buffer, cancellationToken) end
---@return number
function System.IO.MemoryStream:ReadByte() end
---@param destination System.IO.Stream
---@param bufferSize number
function System.IO.MemoryStream:CopyTo(destination, bufferSize) end
---@param destination System.IO.Stream
---@param bufferSize number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.MemoryStream:CopyToAsync(destination, bufferSize, cancellationToken) end
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function System.IO.MemoryStream:Seek(offset, loc) end
---@param value number
function System.IO.MemoryStream:SetLength(value) end
---@return System.Byte[]
function System.IO.MemoryStream:ToArray() end
---@overload fun(self: System.IO.MemoryStream, buffer: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.IO.MemoryStream:Write(buffer) end
---@overload fun(self: System.IO.MemoryStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.MemoryStream:WriteAsync(buffer, cancellationToken) end
---@param value number
function System.IO.MemoryStream:WriteByte(value) end
---@param stream System.IO.Stream
function System.IO.MemoryStream:WriteTo(stream) end

---@class System.IO.PathInternal : System.Object
System.IO.PathInternal = {}
---@alias CS.System.IO.PathInternal System.IO.PathInternal
CS.System.IO.PathInternal = System.IO.PathInternal

---@param path string
---@return boolean
function System.IO.PathInternal.IsPartiallyQualified(path) end
---@param path string
---@param checkAdditional boolean
---@return boolean
function System.IO.PathInternal.HasIllegalCharacters(path, checkAdditional) end

---@class System.IO.PathTooLongException : System.IO.IOException
System.IO.PathTooLongException = {}
---@alias CS.System.IO.PathTooLongException System.IO.PathTooLongException
CS.System.IO.PathTooLongException = System.IO.PathTooLongException

---@overload fun() : System.IO.PathTooLongException
---@overload fun(message: string) : System.IO.PathTooLongException
---@param message string
---@param innerException System.Exception
---@return System.IO.PathTooLongException
function System.IO.PathTooLongException.New(message, innerException) end

---@class System.IO.PinnedBufferMemoryStream : System.IO.UnmanagedMemoryStream
System.IO.PinnedBufferMemoryStream = {}
---@alias CS.System.IO.PinnedBufferMemoryStream System.IO.PinnedBufferMemoryStream
CS.System.IO.PinnedBufferMemoryStream = System.IO.PinnedBufferMemoryStream

---@param buffer System.Span
---@return number
function System.IO.PinnedBufferMemoryStream:Read(buffer) end
---@param buffer System.ReadOnlySpan
function System.IO.PinnedBufferMemoryStream:Write(buffer) end

---@class System.IO.SeekOrigin
---@field Begin System.IO.SeekOrigin
---@field Current System.IO.SeekOrigin
---@field End System.IO.SeekOrigin
System.IO.SeekOrigin = {}
---@alias CS.System.IO.SeekOrigin System.IO.SeekOrigin
CS.System.IO.SeekOrigin = System.IO.SeekOrigin


---@class System.IO.StreamHelpers : System.Object
System.IO.StreamHelpers = {}
---@alias CS.System.IO.StreamHelpers System.IO.StreamHelpers
CS.System.IO.StreamHelpers = System.IO.StreamHelpers

---@param source System.IO.Stream
---@param destination System.IO.Stream
---@param bufferSize number
function System.IO.StreamHelpers.ValidateCopyToArgs(source, destination, bufferSize) end

---@class System.IO.StreamReader : System.IO.TextReader
---@field Null System.IO.StreamReader
---@field CurrentEncoding System.Text.Encoding
---@field BaseStream System.IO.Stream
---@field EndOfStream boolean
System.IO.StreamReader = {}
---@alias CS.System.IO.StreamReader System.IO.StreamReader
CS.System.IO.StreamReader = System.IO.StreamReader

---@overload fun(stream: System.IO.Stream) : System.IO.StreamReader
---@overload fun(stream: System.IO.Stream, detectEncodingFromByteOrderMarks: boolean) : System.IO.StreamReader
---@overload fun(stream: System.IO.Stream, encoding: System.Text.Encoding) : System.IO.StreamReader
---@overload fun(stream: System.IO.Stream, encoding: System.Text.Encoding, detectEncodingFromByteOrderMarks: boolean) : System.IO.StreamReader
---@overload fun(stream: System.IO.Stream, encoding: System.Text.Encoding, detectEncodingFromByteOrderMarks: boolean, bufferSize: number) : System.IO.StreamReader
---@overload fun(stream: System.IO.Stream, encoding: System.Text.Encoding, detectEncodingFromByteOrderMarks: boolean, bufferSize: number, leaveOpen: boolean) : System.IO.StreamReader
---@overload fun(path: string) : System.IO.StreamReader
---@overload fun(path: string, detectEncodingFromByteOrderMarks: boolean) : System.IO.StreamReader
---@overload fun(path: string, encoding: System.Text.Encoding) : System.IO.StreamReader
---@overload fun(path: string, encoding: System.Text.Encoding, detectEncodingFromByteOrderMarks: boolean) : System.IO.StreamReader
---@param path string
---@param encoding System.Text.Encoding
---@param detectEncodingFromByteOrderMarks boolean
---@param bufferSize number
---@return System.IO.StreamReader
function System.IO.StreamReader.New(path, encoding, detectEncodingFromByteOrderMarks, bufferSize) end
function System.IO.StreamReader:Close() end
function System.IO.StreamReader:DiscardBufferedData() end
---@return number
function System.IO.StreamReader:Peek() end
---@overload fun() : number
---@overload fun(self: System.IO.StreamReader, buffer: System.Char[], index: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.StreamReader:Read(buffer) end
---@return string
function System.IO.StreamReader:ReadToEnd() end
---@overload fun(self: System.IO.StreamReader, buffer: System.Char[], index: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.StreamReader:ReadBlock(buffer) end
---@return string
function System.IO.StreamReader:ReadLine() end
---@return System.Threading.Tasks.Task
function System.IO.StreamReader:ReadLineAsync() end
---@return System.Threading.Tasks.Task
function System.IO.StreamReader:ReadToEndAsync() end
---@overload fun(self: System.IO.StreamReader, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.StreamReader:ReadAsync(buffer, cancellationToken) end
---@overload fun(self: System.IO.StreamReader, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.StreamReader:ReadBlockAsync(buffer, cancellationToken) end

---@class System.IO.StreamReader.NullStreamReader : System.IO.StreamReader
---@field BaseStream System.IO.Stream
---@field CurrentEncoding System.Text.Encoding
System.IO.StreamReader.NullStreamReader = {}
---@alias CS.System.IO.StreamReader.NullStreamReader System.IO.StreamReader.NullStreamReader
CS.System.IO.StreamReader.NullStreamReader = System.IO.StreamReader.NullStreamReader

---@return number
function System.IO.StreamReader.NullStreamReader:Peek() end
---@overload fun() : number
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.IO.StreamReader.NullStreamReader:Read(buffer, index, count) end
---@return string
function System.IO.StreamReader.NullStreamReader:ReadLine() end
---@return string
function System.IO.StreamReader.NullStreamReader:ReadToEnd() end

---@class System.IO.StreamWriter : System.IO.TextWriter
---@field Null System.IO.StreamWriter
---@field AutoFlush boolean
---@field BaseStream System.IO.Stream
---@field Encoding System.Text.Encoding
System.IO.StreamWriter = {}
---@alias CS.System.IO.StreamWriter System.IO.StreamWriter
CS.System.IO.StreamWriter = System.IO.StreamWriter

---@overload fun(stream: System.IO.Stream) : System.IO.StreamWriter
---@overload fun(stream: System.IO.Stream, encoding: System.Text.Encoding) : System.IO.StreamWriter
---@overload fun(stream: System.IO.Stream, encoding: System.Text.Encoding, bufferSize: number) : System.IO.StreamWriter
---@overload fun(stream: System.IO.Stream, encoding: System.Text.Encoding, bufferSize: number, leaveOpen: boolean) : System.IO.StreamWriter
---@overload fun(path: string) : System.IO.StreamWriter
---@overload fun(path: string, append: boolean) : System.IO.StreamWriter
---@overload fun(path: string, append: boolean, encoding: System.Text.Encoding) : System.IO.StreamWriter
---@param path string
---@param append boolean
---@param encoding System.Text.Encoding
---@param bufferSize number
---@return System.IO.StreamWriter
function System.IO.StreamWriter.New(path, append, encoding, bufferSize) end
function System.IO.StreamWriter:Close() end
---@return System.Threading.Tasks.ValueTask
function System.IO.StreamWriter:DisposeAsync() end
function System.IO.StreamWriter:Flush() end
---@overload fun(self: System.IO.StreamWriter, value: System.Char)
---@overload fun(self: System.IO.StreamWriter, buffer: System.Char[])
---@overload fun(self: System.IO.StreamWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.StreamWriter, buffer: System.ReadOnlySpan)
---@param value string
function System.IO.StreamWriter:Write(value) end
---@overload fun(self: System.IO.StreamWriter, value: string)
---@param value System.ReadOnlySpan
function System.IO.StreamWriter:WriteLine(value) end
---@overload fun(self: System.IO.StreamWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.StreamWriter, value: string) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.StreamWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.StreamWriter:WriteAsync(buffer, cancellationToken) end
---@overload fun() : System.Threading.Tasks.Task
---@overload fun(self: System.IO.StreamWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.StreamWriter, value: string) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.StreamWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.StreamWriter:WriteLineAsync(buffer, cancellationToken) end
---@return System.Threading.Tasks.Task
function System.IO.StreamWriter:FlushAsync() end

---@class System.IO.TextReader : System.MarshalByRefObject
---@field Null System.IO.TextReader
System.IO.TextReader = {}
---@alias CS.System.IO.TextReader System.IO.TextReader
CS.System.IO.TextReader = System.IO.TextReader

---@param reader System.IO.TextReader
---@return System.IO.TextReader
function System.IO.TextReader.Synchronized(reader) end
function System.IO.TextReader:Close() end
function System.IO.TextReader:Dispose() end
---@return number
function System.IO.TextReader:Peek() end
---@overload fun() : number
---@overload fun(self: System.IO.TextReader, buffer: System.Char[], index: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.TextReader:Read(buffer) end
---@return string
function System.IO.TextReader:ReadToEnd() end
---@overload fun(self: System.IO.TextReader, buffer: System.Char[], index: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.TextReader:ReadBlock(buffer) end
---@return string
function System.IO.TextReader:ReadLine() end
---@return System.Threading.Tasks.Task
function System.IO.TextReader:ReadLineAsync() end
---@return System.Threading.Tasks.Task
function System.IO.TextReader:ReadToEndAsync() end
---@overload fun(self: System.IO.TextReader, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.TextReader:ReadAsync(buffer, cancellationToken) end
---@overload fun(self: System.IO.TextReader, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.TextReader:ReadBlockAsync(buffer, cancellationToken) end

---@class System.IO.TextReader.NullTextReader : System.IO.TextReader
System.IO.TextReader.NullTextReader = {}
---@alias CS.System.IO.TextReader.NullTextReader System.IO.TextReader.NullTextReader
CS.System.IO.TextReader.NullTextReader = System.IO.TextReader.NullTextReader

---@return System.IO.TextReader.NullTextReader
function System.IO.TextReader.NullTextReader.New() end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.IO.TextReader.NullTextReader:Read(buffer, index, count) end
---@return string
function System.IO.TextReader.NullTextReader:ReadLine() end

---@class System.IO.TextReader.SyncTextReader : System.IO.TextReader
System.IO.TextReader.SyncTextReader = {}
---@alias CS.System.IO.TextReader.SyncTextReader System.IO.TextReader.SyncTextReader
CS.System.IO.TextReader.SyncTextReader = System.IO.TextReader.SyncTextReader

function System.IO.TextReader.SyncTextReader:Close() end
---@return number
function System.IO.TextReader.SyncTextReader:Peek() end
---@overload fun() : number
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.IO.TextReader.SyncTextReader:Read(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return number
function System.IO.TextReader.SyncTextReader:ReadBlock(buffer, index, count) end
---@return string
function System.IO.TextReader.SyncTextReader:ReadLine() end
---@return string
function System.IO.TextReader.SyncTextReader:ReadToEnd() end
---@return System.Threading.Tasks.Task
function System.IO.TextReader.SyncTextReader:ReadLineAsync() end
---@return System.Threading.Tasks.Task
function System.IO.TextReader.SyncTextReader:ReadToEndAsync() end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.TextReader.SyncTextReader:ReadBlockAsync(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.TextReader.SyncTextReader:ReadAsync(buffer, index, count) end

---@class System.IO.TextWriter : System.MarshalByRefObject
---@field Null System.IO.TextWriter
---@field FormatProvider System.IFormatProvider
---@field Encoding System.Text.Encoding
---@field NewLine string
System.IO.TextWriter = {}
---@alias CS.System.IO.TextWriter System.IO.TextWriter
CS.System.IO.TextWriter = System.IO.TextWriter

---@param writer System.IO.TextWriter
---@return System.IO.TextWriter
function System.IO.TextWriter.Synchronized(writer) end
function System.IO.TextWriter:Close() end
function System.IO.TextWriter:Dispose() end
---@return System.Threading.Tasks.ValueTask
function System.IO.TextWriter:DisposeAsync() end
function System.IO.TextWriter:Flush() end
---@overload fun(self: System.IO.TextWriter, value: System.Char)
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[])
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.TextWriter, buffer: System.ReadOnlySpan)
---@overload fun(self: System.IO.TextWriter, value: boolean)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: System.Decimal)
---@overload fun(self: System.IO.TextWriter, value: string)
---@overload fun(self: System.IO.TextWriter, value: System.Object)
---@overload fun(self: System.IO.TextWriter, format: string, arg0: System.Object)
---@overload fun(self: System.IO.TextWriter, format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(self: System.IO.TextWriter, format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@param format string
---@param arg System.Object[]
function System.IO.TextWriter:Write(format, arg) end
---@overload fun()
---@overload fun(self: System.IO.TextWriter, value: System.Char)
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[])
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.TextWriter, buffer: System.ReadOnlySpan)
---@overload fun(self: System.IO.TextWriter, value: boolean)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: number)
---@overload fun(self: System.IO.TextWriter, value: System.Decimal)
---@overload fun(self: System.IO.TextWriter, value: string)
---@overload fun(self: System.IO.TextWriter, value: System.Object)
---@overload fun(self: System.IO.TextWriter, format: string, arg0: System.Object)
---@overload fun(self: System.IO.TextWriter, format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(self: System.IO.TextWriter, format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@param format string
---@param arg System.Object[]
function System.IO.TextWriter:WriteLine(format, arg) end
---@overload fun(self: System.IO.TextWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter, value: string) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[]) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.TextWriter:WriteAsync(buffer, cancellationToken) end
---@overload fun(self: System.IO.TextWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter, value: string) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[]) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter, buffer: System.Char[], index: number, count: number) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter, buffer: System.ReadOnlyMemory, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@return System.Threading.Tasks.Task
function System.IO.TextWriter:WriteLineAsync() end
---@return System.Threading.Tasks.Task
function System.IO.TextWriter:FlushAsync() end

---@class System.IO.TextWriter.NullTextWriter : System.IO.TextWriter
---@field Encoding System.Text.Encoding
System.IO.TextWriter.NullTextWriter = {}
---@alias CS.System.IO.TextWriter.NullTextWriter System.IO.TextWriter.NullTextWriter
CS.System.IO.TextWriter.NullTextWriter = System.IO.TextWriter.NullTextWriter

---@overload fun(self: System.IO.TextWriter.NullTextWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.TextWriter.NullTextWriter, value: string)
---@param value System.Char
function System.IO.TextWriter.NullTextWriter:Write(value) end
---@overload fun()
---@overload fun(self: System.IO.TextWriter.NullTextWriter, value: string)
---@param value System.Object
function System.IO.TextWriter.NullTextWriter:WriteLine(value) end

---@class System.IO.TextWriter.SyncTextWriter : System.IO.TextWriter
---@field Encoding System.Text.Encoding
---@field FormatProvider System.IFormatProvider
---@field NewLine string
System.IO.TextWriter.SyncTextWriter = {}
---@alias CS.System.IO.TextWriter.SyncTextWriter System.IO.TextWriter.SyncTextWriter
CS.System.IO.TextWriter.SyncTextWriter = System.IO.TextWriter.SyncTextWriter

function System.IO.TextWriter.SyncTextWriter:Close() end
function System.IO.TextWriter.SyncTextWriter:Flush() end
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Char)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, buffer: System.Char[])
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: boolean)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Decimal)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: string)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Object)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, format: string, arg0: System.Object)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@param format string
---@param arg System.Object[]
function System.IO.TextWriter.SyncTextWriter:Write(format, arg) end
---@overload fun()
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Char)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Decimal)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, buffer: System.Char[])
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: boolean)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: number)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: string)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Object)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, format: string, arg0: System.Object)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, format: string, arg0: System.Object, arg1: System.Object)
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, format: string, arg0: System.Object, arg1: System.Object, arg2: System.Object)
---@param format string
---@param arg System.Object[]
function System.IO.TextWriter.SyncTextWriter:WriteLine(format, arg) end
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: string) : System.Threading.Tasks.Task
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.TextWriter.SyncTextWriter:WriteAsync(buffer, index, count) end
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.TextWriter.SyncTextWriter, value: string) : System.Threading.Tasks.Task
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.TextWriter.SyncTextWriter:WriteLineAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.IO.TextWriter.SyncTextWriter:FlushAsync() end

---@class System.IO.UnmanagedMemoryAccessor : System.Object
---@field Capacity number
---@field CanRead boolean
---@field CanWrite boolean
System.IO.UnmanagedMemoryAccessor = {}
---@alias CS.System.IO.UnmanagedMemoryAccessor System.IO.UnmanagedMemoryAccessor
CS.System.IO.UnmanagedMemoryAccessor = System.IO.UnmanagedMemoryAccessor

---@overload fun(buffer: System.Runtime.InteropServices.SafeBuffer, offset: number, capacity: number) : System.IO.UnmanagedMemoryAccessor
---@param buffer System.Runtime.InteropServices.SafeBuffer
---@param offset number
---@param capacity number
---@param access System.IO.FileAccess
---@return System.IO.UnmanagedMemoryAccessor
function System.IO.UnmanagedMemoryAccessor.New(buffer, offset, capacity, access) end
function System.IO.UnmanagedMemoryAccessor:Dispose() end
---@param position number
---@return boolean
function System.IO.UnmanagedMemoryAccessor:ReadBoolean(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadByte(position) end
---@param position number
---@return System.Char
function System.IO.UnmanagedMemoryAccessor:ReadChar(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadInt16(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadInt32(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadInt64(position) end
---@param position number
---@return System.Decimal
function System.IO.UnmanagedMemoryAccessor:ReadDecimal(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadSingle(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadDouble(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadSByte(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadUInt16(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadUInt32(position) end
---@param position number
---@return number
function System.IO.UnmanagedMemoryAccessor:ReadUInt64(position) end
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: boolean)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: System.Char)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: System.Decimal)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@overload fun(self: System.IO.UnmanagedMemoryAccessor, position: number, value: number)
---@param position number
---@param value number
function System.IO.UnmanagedMemoryAccessor:Write(position, value) end

---@class System.IO.UnmanagedMemoryStream : System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Length number
---@field Capacity number
---@field Position number
---@field PositionPointer System.Byte*
System.IO.UnmanagedMemoryStream = {}
---@alias CS.System.IO.UnmanagedMemoryStream System.IO.UnmanagedMemoryStream
CS.System.IO.UnmanagedMemoryStream = System.IO.UnmanagedMemoryStream

---@overload fun(buffer: System.Runtime.InteropServices.SafeBuffer, offset: number, length: number) : System.IO.UnmanagedMemoryStream
---@overload fun(buffer: System.Runtime.InteropServices.SafeBuffer, offset: number, length: number, access: System.IO.FileAccess) : System.IO.UnmanagedMemoryStream
---@overload fun(pointer: System.Byte*, length: number) : System.IO.UnmanagedMemoryStream
---@param pointer System.Byte*
---@param length number
---@param capacity number
---@param access System.IO.FileAccess
---@return System.IO.UnmanagedMemoryStream
function System.IO.UnmanagedMemoryStream.New(pointer, length, capacity, access) end
function System.IO.UnmanagedMemoryStream:Flush() end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.UnmanagedMemoryStream:FlushAsync(cancellationToken) end
---@overload fun(self: System.IO.UnmanagedMemoryStream, buffer: System.Byte[], offset: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.UnmanagedMemoryStream:Read(buffer) end
---@overload fun(self: System.IO.UnmanagedMemoryStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.UnmanagedMemoryStream:ReadAsync(buffer, cancellationToken) end
---@return number
function System.IO.UnmanagedMemoryStream:ReadByte() end
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function System.IO.UnmanagedMemoryStream:Seek(offset, loc) end
---@param value number
function System.IO.UnmanagedMemoryStream:SetLength(value) end
---@overload fun(self: System.IO.UnmanagedMemoryStream, buffer: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.IO.UnmanagedMemoryStream:Write(buffer) end
---@overload fun(self: System.IO.UnmanagedMemoryStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.UnmanagedMemoryStream:WriteAsync(buffer, cancellationToken) end
---@param value number
function System.IO.UnmanagedMemoryStream:WriteByte(value) end

---@class System.IO.UnmanagedMemoryStreamWrapper : System.IO.MemoryStream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field Capacity number
---@field Length number
---@field Position number
System.IO.UnmanagedMemoryStreamWrapper = {}
---@alias CS.System.IO.UnmanagedMemoryStreamWrapper System.IO.UnmanagedMemoryStreamWrapper
CS.System.IO.UnmanagedMemoryStreamWrapper = System.IO.UnmanagedMemoryStreamWrapper

function System.IO.UnmanagedMemoryStreamWrapper:Flush() end
---@return System.Byte[]
function System.IO.UnmanagedMemoryStreamWrapper:GetBuffer() end
---@param out_buffer System.ArraySegment
---@return boolean,System.ArraySegment
function System.IO.UnmanagedMemoryStreamWrapper:TryGetBuffer(out_buffer) end
---@overload fun(self: System.IO.UnmanagedMemoryStreamWrapper, buffer: System.Byte[], offset: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.UnmanagedMemoryStreamWrapper:Read(buffer) end
---@return number
function System.IO.UnmanagedMemoryStreamWrapper:ReadByte() end
---@param offset number
---@param loc System.IO.SeekOrigin
---@return number
function System.IO.UnmanagedMemoryStreamWrapper:Seek(offset, loc) end
---@return System.Byte[]
function System.IO.UnmanagedMemoryStreamWrapper:ToArray() end
---@overload fun(self: System.IO.UnmanagedMemoryStreamWrapper, buffer: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.IO.UnmanagedMemoryStreamWrapper:Write(buffer) end
---@param value number
function System.IO.UnmanagedMemoryStreamWrapper:WriteByte(value) end
---@param stream System.IO.Stream
function System.IO.UnmanagedMemoryStreamWrapper:WriteTo(stream) end
---@param value number
function System.IO.UnmanagedMemoryStreamWrapper:SetLength(value) end
---@param destination System.IO.Stream
---@param bufferSize number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.UnmanagedMemoryStreamWrapper:CopyToAsync(destination, bufferSize, cancellationToken) end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.UnmanagedMemoryStreamWrapper:FlushAsync(cancellationToken) end
---@overload fun(self: System.IO.UnmanagedMemoryStreamWrapper, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.UnmanagedMemoryStreamWrapper:ReadAsync(buffer, cancellationToken) end
---@overload fun(self: System.IO.UnmanagedMemoryStreamWrapper, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.UnmanagedMemoryStreamWrapper:WriteAsync(buffer, cancellationToken) end

---@class System.IO.Win32Marshal : System.Object
System.IO.Win32Marshal = {}
---@alias CS.System.IO.Win32Marshal System.IO.Win32Marshal
CS.System.IO.Win32Marshal = System.IO.Win32Marshal


---@class System.IO.DriveNotFoundException : System.IO.IOException
System.IO.DriveNotFoundException = {}
---@alias CS.System.IO.DriveNotFoundException System.IO.DriveNotFoundException
CS.System.IO.DriveNotFoundException = System.IO.DriveNotFoundException

---@overload fun() : System.IO.DriveNotFoundException
---@overload fun(message: string) : System.IO.DriveNotFoundException
---@param message string
---@param innerException System.Exception
---@return System.IO.DriveNotFoundException
function System.IO.DriveNotFoundException.New(message, innerException) end

---@class System.IO.DriveType
---@field Unknown System.IO.DriveType
---@field NoRootDirectory System.IO.DriveType
---@field Removable System.IO.DriveType
---@field Fixed System.IO.DriveType
---@field Network System.IO.DriveType
---@field CDRom System.IO.DriveType
---@field Ram System.IO.DriveType
System.IO.DriveType = {}
---@alias CS.System.IO.DriveType System.IO.DriveType
CS.System.IO.DriveType = System.IO.DriveType


---@class System.IO.Directory : System.Object
System.IO.Directory = {}
---@alias CS.System.IO.Directory System.IO.Directory
CS.System.IO.Directory = System.IO.Directory

---@param path string
---@return System.IO.DirectoryInfo
function System.IO.Directory.GetParent(path) end
---@overload fun(path: string) : System.IO.DirectoryInfo
---@param path string
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
---@return System.IO.DirectoryInfo
function System.IO.Directory.CreateDirectory(path, directorySecurity) end
---@param path string
---@return boolean
function System.IO.Directory.Exists(path) end
---@param path string
---@param creationTime System.DateTime
function System.IO.Directory.SetCreationTime(path, creationTime) end
---@param path string
---@param creationTimeUtc System.DateTime
function System.IO.Directory.SetCreationTimeUtc(path, creationTimeUtc) end
---@param path string
---@return System.DateTime
function System.IO.Directory.GetCreationTime(path) end
---@param path string
---@return System.DateTime
function System.IO.Directory.GetCreationTimeUtc(path) end
---@param path string
---@param lastWriteTime System.DateTime
function System.IO.Directory.SetLastWriteTime(path, lastWriteTime) end
---@param path string
---@param lastWriteTimeUtc System.DateTime
function System.IO.Directory.SetLastWriteTimeUtc(path, lastWriteTimeUtc) end
---@param path string
---@return System.DateTime
function System.IO.Directory.GetLastWriteTime(path) end
---@param path string
---@return System.DateTime
function System.IO.Directory.GetLastWriteTimeUtc(path) end
---@param path string
---@param lastAccessTime System.DateTime
function System.IO.Directory.SetLastAccessTime(path, lastAccessTime) end
---@param path string
---@param lastAccessTimeUtc System.DateTime
function System.IO.Directory.SetLastAccessTimeUtc(path, lastAccessTimeUtc) end
---@param path string
---@return System.DateTime
function System.IO.Directory.GetLastAccessTime(path) end
---@param path string
---@return System.DateTime
function System.IO.Directory.GetLastAccessTimeUtc(path) end
---@overload fun(path: string) : System.String[]
---@overload fun(path: string, searchPattern: string) : System.String[]
---@overload fun(path: string, searchPattern: string, searchOption: System.IO.SearchOption) : System.String[]
---@param path string
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.String[]
function System.IO.Directory.GetFiles(path, searchPattern, enumerationOptions) end
---@overload fun(path: string) : System.String[]
---@overload fun(path: string, searchPattern: string) : System.String[]
---@overload fun(path: string, searchPattern: string, searchOption: System.IO.SearchOption) : System.String[]
---@param path string
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.String[]
function System.IO.Directory.GetDirectories(path, searchPattern, enumerationOptions) end
---@overload fun(path: string) : System.String[]
---@overload fun(path: string, searchPattern: string) : System.String[]
---@overload fun(path: string, searchPattern: string, searchOption: System.IO.SearchOption) : System.String[]
---@param path string
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.String[]
function System.IO.Directory.GetFileSystemEntries(path, searchPattern, enumerationOptions) end
---@overload fun(path: string) : System.Collections.Generic.IEnumerable
---@overload fun(path: string, searchPattern: string) : System.Collections.Generic.IEnumerable
---@overload fun(path: string, searchPattern: string, searchOption: System.IO.SearchOption) : System.Collections.Generic.IEnumerable
---@param path string
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.Collections.Generic.IEnumerable
function System.IO.Directory.EnumerateDirectories(path, searchPattern, enumerationOptions) end
---@overload fun(path: string) : System.Collections.Generic.IEnumerable
---@overload fun(path: string, searchPattern: string) : System.Collections.Generic.IEnumerable
---@overload fun(path: string, searchPattern: string, searchOption: System.IO.SearchOption) : System.Collections.Generic.IEnumerable
---@param path string
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.Collections.Generic.IEnumerable
function System.IO.Directory.EnumerateFiles(path, searchPattern, enumerationOptions) end
---@overload fun(path: string) : System.Collections.Generic.IEnumerable
---@overload fun(path: string, searchPattern: string) : System.Collections.Generic.IEnumerable
---@overload fun(path: string, searchPattern: string, searchOption: System.IO.SearchOption) : System.Collections.Generic.IEnumerable
---@param path string
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.Collections.Generic.IEnumerable
function System.IO.Directory.EnumerateFileSystemEntries(path, searchPattern, enumerationOptions) end
---@param path string
---@return string
function System.IO.Directory.GetDirectoryRoot(path) end
---@return string
function System.IO.Directory.GetCurrentDirectory() end
---@param path string
function System.IO.Directory.SetCurrentDirectory(path) end
---@param sourceDirName string
---@param destDirName string
function System.IO.Directory.Move(sourceDirName, destDirName) end
---@overload fun(path: string)
---@param path string
---@param recursive boolean
function System.IO.Directory.Delete(path, recursive) end
---@return System.String[]
function System.IO.Directory.GetLogicalDrives() end
---@overload fun(path: string, includeSections: System.Security.AccessControl.AccessControlSections) : System.Security.AccessControl.DirectorySecurity
---@param path string
---@return System.Security.AccessControl.DirectorySecurity
function System.IO.Directory.GetAccessControl(path) end
---@param path string
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
function System.IO.Directory.SetAccessControl(path, directorySecurity) end

---@class System.IO.DirectoryInfo : System.IO.FileSystemInfo
---@field Parent System.IO.DirectoryInfo
---@field Root System.IO.DirectoryInfo
System.IO.DirectoryInfo = {}
---@alias CS.System.IO.DirectoryInfo System.IO.DirectoryInfo
CS.System.IO.DirectoryInfo = System.IO.DirectoryInfo

---@param path string
---@return System.IO.DirectoryInfo
function System.IO.DirectoryInfo.New(path) end
---@overload fun(self: System.IO.DirectoryInfo, path: string) : System.IO.DirectoryInfo
---@param path string
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
---@return System.IO.DirectoryInfo
function System.IO.DirectoryInfo:CreateSubdirectory(path, directorySecurity) end
---@overload fun()
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
function System.IO.DirectoryInfo:Create(directorySecurity) end
---@overload fun() : System.IO.FileInfo[]
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string) : System.IO.FileInfo[]
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string, searchOption: System.IO.SearchOption) : System.IO.FileInfo[]
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.IO.FileInfo[]
function System.IO.DirectoryInfo:GetFiles(searchPattern, enumerationOptions) end
---@overload fun() : System.IO.FileSystemInfo[]
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string) : System.IO.FileSystemInfo[]
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string, searchOption: System.IO.SearchOption) : System.IO.FileSystemInfo[]
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.IO.FileSystemInfo[]
function System.IO.DirectoryInfo:GetFileSystemInfos(searchPattern, enumerationOptions) end
---@overload fun() : System.IO.DirectoryInfo[]
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string) : System.IO.DirectoryInfo[]
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string, searchOption: System.IO.SearchOption) : System.IO.DirectoryInfo[]
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.IO.DirectoryInfo[]
function System.IO.DirectoryInfo:GetDirectories(searchPattern, enumerationOptions) end
---@overload fun() : System.Collections.Generic.IEnumerable
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string) : System.Collections.Generic.IEnumerable
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string, searchOption: System.IO.SearchOption) : System.Collections.Generic.IEnumerable
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.Collections.Generic.IEnumerable
function System.IO.DirectoryInfo:EnumerateDirectories(searchPattern, enumerationOptions) end
---@overload fun() : System.Collections.Generic.IEnumerable
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string) : System.Collections.Generic.IEnumerable
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string, searchOption: System.IO.SearchOption) : System.Collections.Generic.IEnumerable
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.Collections.Generic.IEnumerable
function System.IO.DirectoryInfo:EnumerateFiles(searchPattern, enumerationOptions) end
---@overload fun() : System.Collections.Generic.IEnumerable
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string) : System.Collections.Generic.IEnumerable
---@overload fun(self: System.IO.DirectoryInfo, searchPattern: string, searchOption: System.IO.SearchOption) : System.Collections.Generic.IEnumerable
---@param searchPattern string
---@param enumerationOptions System.IO.EnumerationOptions
---@return System.Collections.Generic.IEnumerable
function System.IO.DirectoryInfo:EnumerateFileSystemInfos(searchPattern, enumerationOptions) end
---@param destDirName string
function System.IO.DirectoryInfo:MoveTo(destDirName) end
---@overload fun()
---@param recursive boolean
function System.IO.DirectoryInfo:Delete(recursive) end
---@overload fun() : System.Security.AccessControl.DirectorySecurity
---@param includeSections System.Security.AccessControl.AccessControlSections
---@return System.Security.AccessControl.DirectorySecurity
function System.IO.DirectoryInfo:GetAccessControl(includeSections) end
---@param directorySecurity System.Security.AccessControl.DirectorySecurity
function System.IO.DirectoryInfo:SetAccessControl(directorySecurity) end

---@class System.IO.EnumerationOptions : System.Object
---@field RecurseSubdirectories boolean
---@field IgnoreInaccessible boolean
---@field BufferSize number
---@field AttributesToSkip System.IO.FileAttributes
---@field MatchType System.IO.MatchType
---@field MatchCasing System.IO.MatchCasing
---@field ReturnSpecialDirectories boolean
System.IO.EnumerationOptions = {}
---@alias CS.System.IO.EnumerationOptions System.IO.EnumerationOptions
CS.System.IO.EnumerationOptions = System.IO.EnumerationOptions

---@return System.IO.EnumerationOptions
function System.IO.EnumerationOptions.New() end

---@class System.IO.File : System.Object
System.IO.File = {}
---@alias CS.System.IO.File System.IO.File
CS.System.IO.File = System.IO.File

---@param path string
---@return System.IO.StreamReader
function System.IO.File.OpenText(path) end
---@param path string
---@return System.IO.StreamWriter
function System.IO.File.CreateText(path) end
---@param path string
---@return System.IO.StreamWriter
function System.IO.File.AppendText(path) end
---@overload fun(sourceFileName: string, destFileName: string)
---@param sourceFileName string
---@param destFileName string
---@param overwrite boolean
function System.IO.File.Copy(sourceFileName, destFileName, overwrite) end
---@overload fun(path: string) : System.IO.FileStream
---@overload fun(path: string, bufferSize: number) : System.IO.FileStream
---@overload fun(path: string, bufferSize: number, options: System.IO.FileOptions) : System.IO.FileStream
---@param path string
---@param bufferSize number
---@param options System.IO.FileOptions
---@param fileSecurity System.Security.AccessControl.FileSecurity
---@return System.IO.FileStream
function System.IO.File.Create(path, bufferSize, options, fileSecurity) end
---@param path string
function System.IO.File.Delete(path) end
---@param path string
---@return boolean
function System.IO.File.Exists(path) end
---@overload fun(path: string, mode: System.IO.FileMode) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess) : System.IO.FileStream
---@param path string
---@param mode System.IO.FileMode
---@param access System.IO.FileAccess
---@param share System.IO.FileShare
---@return System.IO.FileStream
function System.IO.File.Open(path, mode, access, share) end
---@param path string
---@param creationTime System.DateTime
function System.IO.File.SetCreationTime(path, creationTime) end
---@param path string
---@param creationTimeUtc System.DateTime
function System.IO.File.SetCreationTimeUtc(path, creationTimeUtc) end
---@param path string
---@return System.DateTime
function System.IO.File.GetCreationTime(path) end
---@param path string
---@return System.DateTime
function System.IO.File.GetCreationTimeUtc(path) end
---@param path string
---@param lastAccessTime System.DateTime
function System.IO.File.SetLastAccessTime(path, lastAccessTime) end
---@param path string
---@param lastAccessTimeUtc System.DateTime
function System.IO.File.SetLastAccessTimeUtc(path, lastAccessTimeUtc) end
---@param path string
---@return System.DateTime
function System.IO.File.GetLastAccessTime(path) end
---@param path string
---@return System.DateTime
function System.IO.File.GetLastAccessTimeUtc(path) end
---@param path string
---@param lastWriteTime System.DateTime
function System.IO.File.SetLastWriteTime(path, lastWriteTime) end
---@param path string
---@param lastWriteTimeUtc System.DateTime
function System.IO.File.SetLastWriteTimeUtc(path, lastWriteTimeUtc) end
---@param path string
---@return System.DateTime
function System.IO.File.GetLastWriteTime(path) end
---@param path string
---@return System.DateTime
function System.IO.File.GetLastWriteTimeUtc(path) end
---@param path string
---@return System.IO.FileAttributes
function System.IO.File.GetAttributes(path) end
---@param path string
---@param fileAttributes System.IO.FileAttributes
function System.IO.File.SetAttributes(path, fileAttributes) end
---@param path string
---@return System.IO.FileStream
function System.IO.File.OpenRead(path) end
---@param path string
---@return System.IO.FileStream
function System.IO.File.OpenWrite(path) end
---@overload fun(path: string) : string
---@param path string
---@param encoding System.Text.Encoding
---@return string
function System.IO.File.ReadAllText(path, encoding) end
---@overload fun(path: string, contents: string)
---@param path string
---@param contents string
---@param encoding System.Text.Encoding
function System.IO.File.WriteAllText(path, contents, encoding) end
---@param path string
---@return System.Byte[]
function System.IO.File.ReadAllBytes(path) end
---@param path string
---@param bytes System.Byte[]
function System.IO.File.WriteAllBytes(path, bytes) end
---@overload fun(path: string) : System.String[]
---@param path string
---@param encoding System.Text.Encoding
---@return System.String[]
function System.IO.File.ReadAllLines(path, encoding) end
---@overload fun(path: string) : System.Collections.Generic.IEnumerable
---@param path string
---@param encoding System.Text.Encoding
---@return System.Collections.Generic.IEnumerable
function System.IO.File.ReadLines(path, encoding) end
---@overload fun(path: string, contents: System.String[])
---@overload fun(path: string, contents: System.Collections.Generic.IEnumerable)
---@overload fun(path: string, contents: System.String[], encoding: System.Text.Encoding)
---@param path string
---@param contents System.Collections.Generic.IEnumerable
---@param encoding System.Text.Encoding
function System.IO.File.WriteAllLines(path, contents, encoding) end
---@overload fun(path: string, contents: string)
---@param path string
---@param contents string
---@param encoding System.Text.Encoding
function System.IO.File.AppendAllText(path, contents, encoding) end
---@overload fun(path: string, contents: System.Collections.Generic.IEnumerable)
---@param path string
---@param contents System.Collections.Generic.IEnumerable
---@param encoding System.Text.Encoding
function System.IO.File.AppendAllLines(path, contents, encoding) end
---@overload fun(sourceFileName: string, destinationFileName: string, destinationBackupFileName: string)
---@param sourceFileName string
---@param destinationFileName string
---@param destinationBackupFileName string
---@param ignoreMetadataErrors boolean
function System.IO.File.Replace(sourceFileName, destinationFileName, destinationBackupFileName, ignoreMetadataErrors) end
---@param sourceFileName string
---@param destFileName string
function System.IO.File.Move(sourceFileName, destFileName) end
---@param path string
function System.IO.File.Encrypt(path) end
---@param path string
function System.IO.File.Decrypt(path) end
---@overload fun(path: string, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param path string
---@param encoding System.Text.Encoding
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.ReadAllTextAsync(path, encoding, cancellationToken) end
---@overload fun(path: string, contents: string, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param path string
---@param contents string
---@param encoding System.Text.Encoding
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.WriteAllTextAsync(path, contents, encoding, cancellationToken) end
---@param path string
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.ReadAllBytesAsync(path, cancellationToken) end
---@param path string
---@param bytes System.Byte[]
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.WriteAllBytesAsync(path, bytes, cancellationToken) end
---@overload fun(path: string, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param path string
---@param encoding System.Text.Encoding
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.ReadAllLinesAsync(path, encoding, cancellationToken) end
---@overload fun(path: string, contents: System.Collections.Generic.IEnumerable, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param path string
---@param contents System.Collections.Generic.IEnumerable
---@param encoding System.Text.Encoding
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.WriteAllLinesAsync(path, contents, encoding, cancellationToken) end
---@overload fun(path: string, contents: string, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param path string
---@param contents string
---@param encoding System.Text.Encoding
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.AppendAllTextAsync(path, contents, encoding, cancellationToken) end
---@overload fun(path: string, contents: System.Collections.Generic.IEnumerable, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param path string
---@param contents System.Collections.Generic.IEnumerable
---@param encoding System.Text.Encoding
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.File.AppendAllLinesAsync(path, contents, encoding, cancellationToken) end
---@overload fun(path: string) : System.Security.AccessControl.FileSecurity
---@param path string
---@param includeSections System.Security.AccessControl.AccessControlSections
---@return System.Security.AccessControl.FileSecurity
function System.IO.File.GetAccessControl(path, includeSections) end
---@param path string
---@param fileSecurity System.Security.AccessControl.FileSecurity
function System.IO.File.SetAccessControl(path, fileSecurity) end

---@class System.IO.FileInfo : System.IO.FileSystemInfo
---@field Length number
---@field DirectoryName string
---@field Directory System.IO.DirectoryInfo
---@field IsReadOnly boolean
---@field Name string
System.IO.FileInfo = {}
---@alias CS.System.IO.FileInfo System.IO.FileInfo
CS.System.IO.FileInfo = System.IO.FileInfo

---@param fileName string
---@return System.IO.FileInfo
function System.IO.FileInfo.New(fileName) end
---@return System.IO.StreamReader
function System.IO.FileInfo:OpenText() end
---@return System.IO.StreamWriter
function System.IO.FileInfo:CreateText() end
---@return System.IO.StreamWriter
function System.IO.FileInfo:AppendText() end
---@overload fun(self: System.IO.FileInfo, destFileName: string) : System.IO.FileInfo
---@param destFileName string
---@param overwrite boolean
---@return System.IO.FileInfo
function System.IO.FileInfo:CopyTo(destFileName, overwrite) end
---@return System.IO.FileStream
function System.IO.FileInfo:Create() end
function System.IO.FileInfo:Delete() end
---@overload fun(self: System.IO.FileInfo, mode: System.IO.FileMode) : System.IO.FileStream
---@overload fun(self: System.IO.FileInfo, mode: System.IO.FileMode, access: System.IO.FileAccess) : System.IO.FileStream
---@param mode System.IO.FileMode
---@param access System.IO.FileAccess
---@param share System.IO.FileShare
---@return System.IO.FileStream
function System.IO.FileInfo:Open(mode, access, share) end
---@return System.IO.FileStream
function System.IO.FileInfo:OpenRead() end
---@return System.IO.FileStream
function System.IO.FileInfo:OpenWrite() end
---@param destFileName string
function System.IO.FileInfo:MoveTo(destFileName) end
---@overload fun(self: System.IO.FileInfo, destinationFileName: string, destinationBackupFileName: string) : System.IO.FileInfo
---@param destinationFileName string
---@param destinationBackupFileName string
---@param ignoreMetadataErrors boolean
---@return System.IO.FileInfo
function System.IO.FileInfo:Replace(destinationFileName, destinationBackupFileName, ignoreMetadataErrors) end
function System.IO.FileInfo:Decrypt() end
function System.IO.FileInfo:Encrypt() end
---@overload fun() : System.Security.AccessControl.FileSecurity
---@param includeSections System.Security.AccessControl.AccessControlSections
---@return System.Security.AccessControl.FileSecurity
function System.IO.FileInfo:GetAccessControl(includeSections) end
---@param fileSecurity System.Security.AccessControl.FileSecurity
function System.IO.FileInfo:SetAccessControl(fileSecurity) end

---@class System.IO.FileSystemInfo : System.MarshalByRefObject
---@field Attributes System.IO.FileAttributes
---@field FullName string
---@field Extension string
---@field Name string
---@field Exists boolean
---@field CreationTime System.DateTime
---@field CreationTimeUtc System.DateTime
---@field LastAccessTime System.DateTime
---@field LastAccessTimeUtc System.DateTime
---@field LastWriteTime System.DateTime
---@field LastWriteTimeUtc System.DateTime
System.IO.FileSystemInfo = {}
---@alias CS.System.IO.FileSystemInfo System.IO.FileSystemInfo
CS.System.IO.FileSystemInfo = System.IO.FileSystemInfo

function System.IO.FileSystemInfo:Refresh() end
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function System.IO.FileSystemInfo:GetObjectData(info, context) end
function System.IO.FileSystemInfo:Delete() end
---@return string
function System.IO.FileSystemInfo:ToString() end

---@class System.IO.Iterator : System.Object
---@field Current TSource
System.IO.Iterator = {}
---@alias CS.System.IO.Iterator System.IO.Iterator
CS.System.IO.Iterator = System.IO.Iterator

---@return System.IO.Iterator
function System.IO.Iterator.New() end
function System.IO.Iterator:Dispose() end
---@return System.Collections.Generic.IEnumerator[TSource]
function System.IO.Iterator:GetEnumerator() end
---@return boolean
function System.IO.Iterator:MoveNext() end

---@class System.IO.MatchCasing
---@field PlatformDefault System.IO.MatchCasing
---@field CaseSensitive System.IO.MatchCasing
---@field CaseInsensitive System.IO.MatchCasing
System.IO.MatchCasing = {}
---@alias CS.System.IO.MatchCasing System.IO.MatchCasing
CS.System.IO.MatchCasing = System.IO.MatchCasing


---@class System.IO.MatchType
---@field Simple System.IO.MatchType
---@field Win32 System.IO.MatchType
System.IO.MatchType = {}
---@alias CS.System.IO.MatchType System.IO.MatchType
CS.System.IO.MatchType = System.IO.MatchType


---@class System.IO.ReadLinesIterator : System.IO.Iterator
---@field Current System.IO.ReadLinesIterator -- infered from System.IO.Iterator`1[System.String]
System.IO.ReadLinesIterator = {}
---@alias CS.System.IO.ReadLinesIterator System.IO.ReadLinesIterator
CS.System.IO.ReadLinesIterator = System.IO.ReadLinesIterator

---@return boolean
function System.IO.ReadLinesIterator:MoveNext() end

---@class System.IO.SearchOption
---@field TopDirectoryOnly System.IO.SearchOption
---@field AllDirectories System.IO.SearchOption
System.IO.SearchOption = {}
---@alias CS.System.IO.SearchOption System.IO.SearchOption
CS.System.IO.SearchOption = System.IO.SearchOption


---@class System.IO.SearchTarget
---@field Files System.IO.SearchTarget
---@field Directories System.IO.SearchTarget
---@field Both System.IO.SearchTarget
System.IO.SearchTarget = {}
---@alias CS.System.IO.SearchTarget System.IO.SearchTarget
CS.System.IO.SearchTarget = System.IO.SearchTarget


---@class System.IO.BufferedStream : System.IO.Stream
---@field UnderlyingStream System.IO.Stream
---@field BufferSize number
---@field CanRead boolean
---@field CanWrite boolean
---@field CanSeek boolean
---@field Length number
---@field Position number
System.IO.BufferedStream = {}
---@alias CS.System.IO.BufferedStream System.IO.BufferedStream
CS.System.IO.BufferedStream = System.IO.BufferedStream

---@overload fun(stream: System.IO.Stream) : System.IO.BufferedStream
---@param stream System.IO.Stream
---@param bufferSize number
---@return System.IO.BufferedStream
function System.IO.BufferedStream.New(stream, bufferSize) end
---@return System.Threading.Tasks.ValueTask
function System.IO.BufferedStream:DisposeAsync() end
function System.IO.BufferedStream:Flush() end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.BufferedStream:FlushAsync(cancellationToken) end
---@overload fun(self: System.IO.BufferedStream, array: System.Byte[], offset: number, count: number) : number
---@param destination System.Span
---@return number
function System.IO.BufferedStream:Read(destination) end
---@overload fun(self: System.IO.BufferedStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.BufferedStream:ReadAsync(buffer, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.BufferedStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.IO.BufferedStream:EndRead(asyncResult) end
---@return number
function System.IO.BufferedStream:ReadByte() end
---@overload fun(self: System.IO.BufferedStream, array: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.IO.BufferedStream:Write(buffer) end
---@overload fun(self: System.IO.BufferedStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.BufferedStream:WriteAsync(buffer, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.BufferedStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.IO.BufferedStream:EndWrite(asyncResult) end
---@param value number
function System.IO.BufferedStream:WriteByte(value) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.IO.BufferedStream:Seek(offset, origin) end
---@param value number
function System.IO.BufferedStream:SetLength(value) end
---@param destination System.IO.Stream
---@param bufferSize number
function System.IO.BufferedStream:CopyTo(destination, bufferSize) end
---@param destination System.IO.Stream
---@param bufferSize number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.BufferedStream:CopyToAsync(destination, bufferSize, cancellationToken) end

---@class System.IO.FileAttributes
---@field ReadOnly System.IO.FileAttributes
---@field Hidden System.IO.FileAttributes
---@field System System.IO.FileAttributes
---@field Directory System.IO.FileAttributes
---@field Archive System.IO.FileAttributes
---@field Device System.IO.FileAttributes
---@field Normal System.IO.FileAttributes
---@field Temporary System.IO.FileAttributes
---@field SparseFile System.IO.FileAttributes
---@field ReparsePoint System.IO.FileAttributes
---@field Compressed System.IO.FileAttributes
---@field Offline System.IO.FileAttributes
---@field NotContentIndexed System.IO.FileAttributes
---@field Encrypted System.IO.FileAttributes
---@field IntegrityStream System.IO.FileAttributes
---@field NoScrubData System.IO.FileAttributes
System.IO.FileAttributes = {}
---@alias CS.System.IO.FileAttributes System.IO.FileAttributes
CS.System.IO.FileAttributes = System.IO.FileAttributes


---@class System.IO.Stream : System.MarshalByRefObject
---@field Null System.IO.Stream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanTimeout boolean
---@field CanWrite boolean
---@field Length number
---@field Position number
---@field ReadTimeout number
---@field WriteTimeout number
System.IO.Stream = {}
---@alias CS.System.IO.Stream System.IO.Stream
CS.System.IO.Stream = System.IO.Stream

---@param stream System.IO.Stream
---@return System.IO.Stream
function System.IO.Stream.Synchronized(stream) end
---@overload fun(self: System.IO.Stream, destination: System.IO.Stream) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.Stream, destination: System.IO.Stream, bufferSize: number) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.Stream, destination: System.IO.Stream, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param destination System.IO.Stream
---@param bufferSize number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.Stream:CopyToAsync(destination, bufferSize, cancellationToken) end
---@overload fun(self: System.IO.Stream, destination: System.IO.Stream)
---@param destination System.IO.Stream
---@param bufferSize number
function System.IO.Stream:CopyTo(destination, bufferSize) end
function System.IO.Stream:Close() end
function System.IO.Stream:Dispose() end
function System.IO.Stream:Flush() end
---@overload fun() : System.Threading.Tasks.Task
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.Stream:FlushAsync(cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.IO.Stream:EndRead(asyncResult) end
---@overload fun(self: System.IO.Stream, buffer: System.Byte[], offset: number, count: number) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.Stream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.Stream:ReadAsync(buffer, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.IO.Stream:EndWrite(asyncResult) end
---@overload fun(self: System.IO.Stream, buffer: System.Byte[], offset: number, count: number) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.Stream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.Stream:WriteAsync(buffer, cancellationToken) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.IO.Stream:Seek(offset, origin) end
---@param value number
function System.IO.Stream:SetLength(value) end
---@overload fun(self: System.IO.Stream, buffer: System.Byte[], offset: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.Stream:Read(buffer) end
---@return number
function System.IO.Stream:ReadByte() end
---@overload fun(self: System.IO.Stream, buffer: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.IO.Stream:Write(buffer) end
---@param value number
function System.IO.Stream:WriteByte(value) end
---@return System.Threading.Tasks.ValueTask
function System.IO.Stream:DisposeAsync() end

---@class System.IO.Stream.ReadWriteParameters : System.ValueType
System.IO.Stream.ReadWriteParameters = {}
---@alias CS.System.IO.Stream.ReadWriteParameters System.IO.Stream.ReadWriteParameters
CS.System.IO.Stream.ReadWriteParameters = System.IO.Stream.ReadWriteParameters


---@class System.IO.Stream.ReadWriteTask : System.Threading.Tasks.Task
---@field Result System.IO.Stream.ReadWriteTask -- infered from System.Threading.Tasks.Task`1[System.Int32]
System.IO.Stream.ReadWriteTask = {}
---@alias CS.System.IO.Stream.ReadWriteTask System.IO.Stream.ReadWriteTask
CS.System.IO.Stream.ReadWriteTask = System.IO.Stream.ReadWriteTask

---@param isRead boolean
---@param apm boolean
---@param _function System.Func
---@param state System.Object
---@param stream System.IO.Stream
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@return System.IO.Stream.ReadWriteTask
function System.IO.Stream.ReadWriteTask.New(isRead, apm, _function, state, stream, buffer, offset, count, callback) end

---@class System.IO.Stream.NullStream : System.IO.Stream
---@field CanRead boolean
---@field CanWrite boolean
---@field CanSeek boolean
---@field Length number
---@field Position number
System.IO.Stream.NullStream = {}
---@alias CS.System.IO.Stream.NullStream System.IO.Stream.NullStream
CS.System.IO.Stream.NullStream = System.IO.Stream.NullStream

---@param destination System.IO.Stream
---@param bufferSize number
function System.IO.Stream.NullStream:CopyTo(destination, bufferSize) end
---@param destination System.IO.Stream
---@param bufferSize number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.Stream.NullStream:CopyToAsync(destination, bufferSize, cancellationToken) end
function System.IO.Stream.NullStream:Flush() end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.Stream.NullStream:FlushAsync(cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream.NullStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.IO.Stream.NullStream:EndRead(asyncResult) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream.NullStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.IO.Stream.NullStream:EndWrite(asyncResult) end
---@overload fun(self: System.IO.Stream.NullStream, buffer: System.Byte[], offset: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.Stream.NullStream:Read(buffer) end
---@overload fun(self: System.IO.Stream.NullStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.Memory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.Stream.NullStream:ReadAsync(buffer, cancellationToken) end
---@return number
function System.IO.Stream.NullStream:ReadByte() end
---@overload fun(self: System.IO.Stream.NullStream, buffer: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.IO.Stream.NullStream:Write(buffer) end
---@overload fun(self: System.IO.Stream.NullStream, buffer: System.Byte[], offset: number, count: number, cancellationToken: System.Threading.CancellationToken) : System.Threading.Tasks.Task
---@param buffer System.ReadOnlyMemory
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.ValueTask
function System.IO.Stream.NullStream:WriteAsync(buffer, cancellationToken) end
---@param value number
function System.IO.Stream.NullStream:WriteByte(value) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.IO.Stream.NullStream:Seek(offset, origin) end
---@param length number
function System.IO.Stream.NullStream:SetLength(length) end

---@class System.IO.Stream.SynchronousAsyncResult : System.Object
---@field IsCompleted boolean
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field AsyncState System.Object
---@field CompletedSynchronously boolean
System.IO.Stream.SynchronousAsyncResult = {}
---@alias CS.System.IO.Stream.SynchronousAsyncResult System.IO.Stream.SynchronousAsyncResult
CS.System.IO.Stream.SynchronousAsyncResult = System.IO.Stream.SynchronousAsyncResult


---@class System.IO.Stream.SyncStream : System.IO.Stream
---@field CanRead boolean
---@field CanWrite boolean
---@field CanSeek boolean
---@field CanTimeout boolean
---@field Length number
---@field Position number
---@field ReadTimeout number
---@field WriteTimeout number
System.IO.Stream.SyncStream = {}
---@alias CS.System.IO.Stream.SyncStream System.IO.Stream.SyncStream
CS.System.IO.Stream.SyncStream = System.IO.Stream.SyncStream

function System.IO.Stream.SyncStream:Close() end
function System.IO.Stream.SyncStream:Flush() end
---@overload fun(self: System.IO.Stream.SyncStream, bytes: System.Byte[], offset: number, count: number) : number
---@param buffer System.Span
---@return number
function System.IO.Stream.SyncStream:Read(buffer) end
---@return number
function System.IO.Stream.SyncStream:ReadByte() end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream.SyncStream:BeginRead(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
---@return number
function System.IO.Stream.SyncStream:EndRead(asyncResult) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.IO.Stream.SyncStream:Seek(offset, origin) end
---@param length number
function System.IO.Stream.SyncStream:SetLength(length) end
---@overload fun(self: System.IO.Stream.SyncStream, bytes: System.Byte[], offset: number, count: number)
---@param buffer System.ReadOnlySpan
function System.IO.Stream.SyncStream:Write(buffer) end
---@param b number
function System.IO.Stream.SyncStream:WriteByte(b) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param state System.Object
---@return System.IAsyncResult
function System.IO.Stream.SyncStream:BeginWrite(buffer, offset, count, callback, state) end
---@param asyncResult System.IAsyncResult
function System.IO.Stream.SyncStream:EndWrite(asyncResult) end

---@class System.IO.__Error : System.Object
System.IO.__Error = {}
---@alias CS.System.IO.__Error System.IO.__Error
CS.System.IO.__Error = System.IO.__Error


---@class System.IO.__HResults : System.Object
---@field COR_E_ENDOFSTREAM number
---@field COR_E_FILELOAD number
---@field COR_E_FILENOTFOUND number
---@field COR_E_DIRECTORYNOTFOUND number
---@field COR_E_PATHTOOLONG number
---@field COR_E_IO number
System.IO.__HResults = {}
---@alias CS.System.IO.__HResults System.IO.__HResults
CS.System.IO.__HResults = System.IO.__HResults


---@class System.IO.BinaryReader : System.Object
---@field BaseStream System.IO.Stream
System.IO.BinaryReader = {}
---@alias CS.System.IO.BinaryReader System.IO.BinaryReader
CS.System.IO.BinaryReader = System.IO.BinaryReader

---@overload fun(input: System.IO.Stream) : System.IO.BinaryReader
---@overload fun(input: System.IO.Stream, encoding: System.Text.Encoding) : System.IO.BinaryReader
---@param input System.IO.Stream
---@param encoding System.Text.Encoding
---@param leaveOpen boolean
---@return System.IO.BinaryReader
function System.IO.BinaryReader.New(input, encoding, leaveOpen) end
function System.IO.BinaryReader:Close() end
function System.IO.BinaryReader:Dispose() end
---@return number
function System.IO.BinaryReader:PeekChar() end
---@overload fun() : number
---@overload fun(self: System.IO.BinaryReader, buffer: System.Char[], index: number, count: number) : number
---@overload fun(self: System.IO.BinaryReader, buffer: System.Span) : number
---@overload fun(self: System.IO.BinaryReader, buffer: System.Span) : number
---@param buffer System.Byte[]
---@param index number
---@param count number
---@return number
function System.IO.BinaryReader:Read(buffer, index, count) end
---@return boolean
function System.IO.BinaryReader:ReadBoolean() end
---@return number
function System.IO.BinaryReader:ReadByte() end
---@return number
function System.IO.BinaryReader:ReadSByte() end
---@return System.Char
function System.IO.BinaryReader:ReadChar() end
---@return number
function System.IO.BinaryReader:ReadInt16() end
---@return number
function System.IO.BinaryReader:ReadUInt16() end
---@return number
function System.IO.BinaryReader:ReadInt32() end
---@return number
function System.IO.BinaryReader:ReadUInt32() end
---@return number
function System.IO.BinaryReader:ReadInt64() end
---@return number
function System.IO.BinaryReader:ReadUInt64() end
---@return number
function System.IO.BinaryReader:ReadSingle() end
---@return number
function System.IO.BinaryReader:ReadDouble() end
---@return System.Decimal
function System.IO.BinaryReader:ReadDecimal() end
---@return string
function System.IO.BinaryReader:ReadString() end
---@param count number
---@return System.Char[]
function System.IO.BinaryReader:ReadChars(count) end
---@param count number
---@return System.Byte[]
function System.IO.BinaryReader:ReadBytes(count) end

---@class System.IO.BinaryWriter : System.Object
---@field Null System.IO.BinaryWriter
---@field BaseStream System.IO.Stream
System.IO.BinaryWriter = {}
---@alias CS.System.IO.BinaryWriter System.IO.BinaryWriter
CS.System.IO.BinaryWriter = System.IO.BinaryWriter

---@overload fun(output: System.IO.Stream) : System.IO.BinaryWriter
---@overload fun(output: System.IO.Stream, encoding: System.Text.Encoding) : System.IO.BinaryWriter
---@param output System.IO.Stream
---@param encoding System.Text.Encoding
---@param leaveOpen boolean
---@return System.IO.BinaryWriter
function System.IO.BinaryWriter.New(output, encoding, leaveOpen) end
function System.IO.BinaryWriter:Close() end
function System.IO.BinaryWriter:Dispose() end
function System.IO.BinaryWriter:Flush() end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.IO.BinaryWriter:Seek(offset, origin) end
---@overload fun(self: System.IO.BinaryWriter, buffer: System.ReadOnlySpan)
---@overload fun(self: System.IO.BinaryWriter, buffer: System.ReadOnlySpan)
---@overload fun(self: System.IO.BinaryWriter, value: boolean)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, buffer: System.Byte[])
---@overload fun(self: System.IO.BinaryWriter, buffer: System.Byte[], index: number, count: number)
---@overload fun(self: System.IO.BinaryWriter, ch: System.Char)
---@overload fun(self: System.IO.BinaryWriter, chars: System.Char[])
---@overload fun(self: System.IO.BinaryWriter, chars: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: System.Decimal)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@overload fun(self: System.IO.BinaryWriter, value: number)
---@param value string
function System.IO.BinaryWriter:Write(value) end
---@return System.Threading.Tasks.ValueTask
function System.IO.BinaryWriter:DisposeAsync() end

---@class System.IO.StringReader : System.IO.TextReader
System.IO.StringReader = {}
---@alias CS.System.IO.StringReader System.IO.StringReader
CS.System.IO.StringReader = System.IO.StringReader

---@param s string
---@return System.IO.StringReader
function System.IO.StringReader.New(s) end
function System.IO.StringReader:Close() end
---@return number
function System.IO.StringReader:Peek() end
---@overload fun() : number
---@param out_buffer System.Char
---@param index number
---@param count number
---@return number,System.Char
function System.IO.StringReader:Read(out_buffer, index, count) end
---@return string
function System.IO.StringReader:ReadToEnd() end
---@return string
function System.IO.StringReader:ReadLine() end
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadLineAsync() end
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadToEndAsync() end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadBlockAsync(buffer, index, count) end
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.StringReader:ReadAsync(buffer, index, count) end

---@class System.IO.StringWriter : System.IO.TextWriter
---@field Encoding System.Text.Encoding
System.IO.StringWriter = {}
---@alias CS.System.IO.StringWriter System.IO.StringWriter
CS.System.IO.StringWriter = System.IO.StringWriter

---@overload fun() : System.IO.StringWriter
---@overload fun(formatProvider: System.IFormatProvider) : System.IO.StringWriter
---@overload fun(sb: System.Text.StringBuilder) : System.IO.StringWriter
---@param sb System.Text.StringBuilder
---@param formatProvider System.IFormatProvider
---@return System.IO.StringWriter
function System.IO.StringWriter.New(sb, formatProvider) end
function System.IO.StringWriter:Close() end
---@return System.Text.StringBuilder
function System.IO.StringWriter:GetStringBuilder() end
---@overload fun(self: System.IO.StringWriter, value: System.Char)
---@overload fun(self: System.IO.StringWriter, buffer: System.Char[], index: number, count: number)
---@param value string
function System.IO.StringWriter:Write(value) end
---@overload fun(self: System.IO.StringWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.StringWriter, value: string) : System.Threading.Tasks.Task
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.StringWriter:WriteAsync(buffer, index, count) end
---@overload fun(self: System.IO.StringWriter, value: System.Char) : System.Threading.Tasks.Task
---@overload fun(self: System.IO.StringWriter, value: string) : System.Threading.Tasks.Task
---@param buffer System.Char[]
---@param index number
---@param count number
---@return System.Threading.Tasks.Task
function System.IO.StringWriter:WriteLineAsync(buffer, index, count) end
---@return System.Threading.Tasks.Task
function System.IO.StringWriter:FlushAsync() end
---@return string
function System.IO.StringWriter:ToString() end

---@class System.IO.__ConsoleStream : System.Object
System.IO.__ConsoleStream = {}
---@alias CS.System.IO.__ConsoleStream System.IO.__ConsoleStream
CS.System.IO.__ConsoleStream = System.IO.__ConsoleStream

---@return System.IO.__ConsoleStream
function System.IO.__ConsoleStream.New() end

---@class System.IO.DriveInfo : System.Object
---@field AvailableFreeSpace number
---@field TotalFreeSpace number
---@field TotalSize number
---@field VolumeLabel string
---@field DriveFormat string
---@field DriveType System.IO.DriveType
---@field Name string
---@field RootDirectory System.IO.DirectoryInfo
---@field IsReady boolean
System.IO.DriveInfo = {}
---@alias CS.System.IO.DriveInfo System.IO.DriveInfo
CS.System.IO.DriveInfo = System.IO.DriveInfo

---@param driveName string
---@return System.IO.DriveInfo
function System.IO.DriveInfo.New(driveName) end
---@return System.IO.DriveInfo[]
function System.IO.DriveInfo.GetDrives() end
---@return string
function System.IO.DriveInfo:ToString() end

---@class System.IO.FileStream : System.IO.Stream
---@field CanRead boolean
---@field CanWrite boolean
---@field CanSeek boolean
---@field IsAsync boolean
---@field Name string
---@field Length number
---@field Position number
---@field SafeFileHandle Microsoft.Win32.SafeHandles.SafeFileHandle
System.IO.FileStream = {}
---@alias CS.System.IO.FileStream System.IO.FileStream
CS.System.IO.FileStream = System.IO.FileStream

---@overload fun(handle: System.IntPtr, access: System.IO.FileAccess) : System.IO.FileStream
---@overload fun(handle: System.IntPtr, access: System.IO.FileAccess, ownsHandle: boolean) : System.IO.FileStream
---@overload fun(handle: System.IntPtr, access: System.IO.FileAccess, ownsHandle: boolean, bufferSize: number) : System.IO.FileStream
---@overload fun(handle: System.IntPtr, access: System.IO.FileAccess, ownsHandle: boolean, bufferSize: number, isAsync: boolean) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare, bufferSize: number) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare, bufferSize: number, useAsync: boolean) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare, bufferSize: number, options: System.IO.FileOptions) : System.IO.FileStream
---@overload fun(handle: Microsoft.Win32.SafeHandles.SafeFileHandle, access: System.IO.FileAccess) : System.IO.FileStream
---@overload fun(handle: Microsoft.Win32.SafeHandles.SafeFileHandle, access: System.IO.FileAccess, bufferSize: number) : System.IO.FileStream
---@overload fun(handle: Microsoft.Win32.SafeHandles.SafeFileHandle, access: System.IO.FileAccess, bufferSize: number, isAsync: boolean) : System.IO.FileStream
---@overload fun(path: string, mode: System.IO.FileMode, rights: System.Security.AccessControl.FileSystemRights, share: System.IO.FileShare, bufferSize: number, options: System.IO.FileOptions) : System.IO.FileStream
---@param path string
---@param mode System.IO.FileMode
---@param rights System.Security.AccessControl.FileSystemRights
---@param share System.IO.FileShare
---@param bufferSize number
---@param options System.IO.FileOptions
---@param fileSecurity System.Security.AccessControl.FileSecurity
---@return System.IO.FileStream
function System.IO.FileStream.New(path, mode, rights, share, bufferSize, options, fileSecurity) end
---@return number
function System.IO.FileStream:ReadByte() end
---@param value number
function System.IO.FileStream:WriteByte(value) end
---@param out_array number
---@param offset number
---@param count number
---@return number,number
function System.IO.FileStream:Read(out_array, offset, count) end
---@param array System.Byte[]
---@param offset number
---@param numBytes number
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.FileStream:BeginRead(array, offset, numBytes, userCallback, stateObject) end
---@param asyncResult System.IAsyncResult
---@return number
function System.IO.FileStream:EndRead(asyncResult) end
---@param array System.Byte[]
---@param offset number
---@param count number
function System.IO.FileStream:Write(array, offset, count) end
---@param array System.Byte[]
---@param offset number
---@param numBytes number
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.FileStream:BeginWrite(array, offset, numBytes, userCallback, stateObject) end
---@param asyncResult System.IAsyncResult
function System.IO.FileStream:EndWrite(asyncResult) end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.IO.FileStream:Seek(offset, origin) end
---@param value number
function System.IO.FileStream:SetLength(value) end
---@overload fun()
---@param flushToDisk boolean
function System.IO.FileStream:Flush(flushToDisk) end
---@param position number
---@param length number
function System.IO.FileStream:Lock(position, length) end
---@param position number
---@param length number
function System.IO.FileStream:Unlock(position, length) end
---@return System.Security.AccessControl.FileSecurity
function System.IO.FileStream:GetAccessControl() end
---@param fileSecurity System.Security.AccessControl.FileSecurity
function System.IO.FileStream:SetAccessControl(fileSecurity) end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.FileStream:FlushAsync(cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.FileStream:ReadAsync(buffer, offset, count, cancellationToken) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function System.IO.FileStream:WriteAsync(buffer, offset, count, cancellationToken) end

---@class System.IO.FileStream.ReadDelegate : System.MulticastDelegate
System.IO.FileStream.ReadDelegate = {}
---@alias CS.System.IO.FileStream.ReadDelegate System.IO.FileStream.ReadDelegate
CS.System.IO.FileStream.ReadDelegate = System.IO.FileStream.ReadDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.IO.FileStream.ReadDelegate
function System.IO.FileStream.ReadDelegate.New(object, method) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.IO.FileStream.ReadDelegate:Invoke(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.IO.FileStream.ReadDelegate:BeginInvoke(buffer, offset, count, callback, object) end
---@param result System.IAsyncResult
---@return number
function System.IO.FileStream.ReadDelegate:EndInvoke(result) end

---@class System.IO.FileStream.WriteDelegate : System.MulticastDelegate
System.IO.FileStream.WriteDelegate = {}
---@alias CS.System.IO.FileStream.WriteDelegate System.IO.FileStream.WriteDelegate
CS.System.IO.FileStream.WriteDelegate = System.IO.FileStream.WriteDelegate

---@param object System.Object
---@param method System.IntPtr
---@return System.IO.FileStream.WriteDelegate
function System.IO.FileStream.WriteDelegate.New(object, method) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.IO.FileStream.WriteDelegate:Invoke(buffer, offset, count) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function System.IO.FileStream.WriteDelegate:BeginInvoke(buffer, offset, count, callback, object) end
---@param result System.IAsyncResult
function System.IO.FileStream.WriteDelegate:EndInvoke(result) end

---@class System.IO.FileStreamAsyncResult : System.Object
---@field Buffer System.Byte[]
---@field Offset number
---@field Count number
---@field OriginalCount number
---@field BytesRead number
---@field AsyncState System.Object
---@field CompletedSynchronously boolean
---@field AsyncWaitHandle System.Threading.WaitHandle
---@field IsCompleted boolean
---@field Exception System.Exception
---@field Done boolean
System.IO.FileStreamAsyncResult = {}
---@alias CS.System.IO.FileStreamAsyncResult System.IO.FileStreamAsyncResult
CS.System.IO.FileStreamAsyncResult = System.IO.FileStreamAsyncResult

---@param cb System.AsyncCallback
---@param state System.Object
---@return System.IO.FileStreamAsyncResult
function System.IO.FileStreamAsyncResult.New(cb, state) end
---@overload fun(self: System.IO.FileStreamAsyncResult, e: System.Exception)
---@overload fun(self: System.IO.FileStreamAsyncResult, e: System.Exception, nbytes: number)
---@param e System.Exception
---@param nbytes number
---@param synch boolean
function System.IO.FileStreamAsyncResult:SetComplete(e, nbytes, synch) end

---@class System.IO.HGlobalUnmanagedMemoryStream : System.IO.UnmanagedMemoryStream
System.IO.HGlobalUnmanagedMemoryStream = {}
---@alias CS.System.IO.HGlobalUnmanagedMemoryStream System.IO.HGlobalUnmanagedMemoryStream
CS.System.IO.HGlobalUnmanagedMemoryStream = System.IO.HGlobalUnmanagedMemoryStream

---@param pointer System.Byte*
---@param length number
---@param ptr System.IntPtr
---@return System.IO.HGlobalUnmanagedMemoryStream
function System.IO.HGlobalUnmanagedMemoryStream.New(pointer, length, ptr) end

---@class System.IO.MonoFileType
---@field Unknown System.IO.MonoFileType
---@field Disk System.IO.MonoFileType
---@field Char System.IO.MonoFileType
---@field Pipe System.IO.MonoFileType
---@field Remote System.IO.MonoFileType
System.IO.MonoFileType = {}
---@alias CS.System.IO.MonoFileType System.IO.MonoFileType
CS.System.IO.MonoFileType = System.IO.MonoFileType


---@class System.IO.MonoIO : System.Object
---@field FileAlreadyExistsHResult number
---@field InvalidFileAttributes System.IO.FileAttributes
---@field InvalidHandle System.IntPtr
---@field ConsoleOutput System.IntPtr
---@field ConsoleInput System.IntPtr
---@field ConsoleError System.IntPtr
---@field VolumeSeparatorChar System.Char
---@field DirectorySeparatorChar System.Char
---@field AltDirectorySeparatorChar System.Char
---@field PathSeparator System.Char
System.IO.MonoIO = {}
---@alias CS.System.IO.MonoIO System.IO.MonoIO
CS.System.IO.MonoIO = System.IO.MonoIO

---@overload fun(error: System.IO.MonoIOError) : System.Exception
---@param path string
---@param error System.IO.MonoIOError
---@return System.Exception
function System.IO.MonoIO.GetException(path, error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.CreateDirectory(path, out_error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.RemoveDirectory(path, out_error) end
---@param out_error System.IO.MonoIOError
---@return string,System.IO.MonoIOError
function System.IO.MonoIO.GetCurrentDirectory(out_error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.SetCurrentDirectory(path, out_error) end
---@param path string
---@param dest string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.MoveFile(path, dest, out_error) end
---@param path string
---@param dest string
---@param overwrite boolean
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.CopyFile(path, dest, overwrite, out_error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.DeleteFile(path, out_error) end
---@param sourceFileName string
---@param destinationFileName string
---@param destinationBackupFileName string
---@param ignoreMetadataErrors boolean
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.ReplaceFile(sourceFileName, destinationFileName, destinationBackupFileName, ignoreMetadataErrors, out_error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return System.IO.FileAttributes,System.IO.MonoIOError
function System.IO.MonoIO.GetFileAttributes(path, out_error) end
---@param path string
---@param attrs System.IO.FileAttributes
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.SetFileAttributes(path, attrs, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param out_error System.IO.MonoIOError
---@return System.IO.MonoFileType,System.IO.MonoIOError
function System.IO.MonoIO.GetFileType(safeHandle, out_error) end
---@param pathWithPattern string
---@param out_fileName string
---@param out_fileAttr number
---@param out_error number
---@return System.IntPtr,string,number,number
function System.IO.MonoIO.FindFirstFile(pathWithPattern, out_fileName, out_fileAttr, out_error) end
---@param hnd System.IntPtr
---@param out_fileName string
---@param out_fileAttr number
---@param out_error number
---@return boolean,string,number,number
function System.IO.MonoIO.FindNextFile(hnd, out_fileName, out_fileAttr, out_error) end
---@param hnd System.IntPtr
---@return boolean
function System.IO.MonoIO.FindCloseFile(hnd) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.Exists(path, out_error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.ExistsFile(path, out_error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.ExistsDirectory(path, out_error) end
---@param path string
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.ExistsSymlink(path, out_error) end
---@param path string
---@param out_stat System.IO.MonoIOStat
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOStat,System.IO.MonoIOError
function System.IO.MonoIO.GetFileStat(path, out_stat, out_error) end
---@param filename string
---@param mode System.IO.FileMode
---@param access System.IO.FileAccess
---@param share System.IO.FileShare
---@param options System.IO.FileOptions
---@param out_error System.IO.MonoIOError
---@return System.IntPtr,System.IO.MonoIOError
function System.IO.MonoIO.Open(filename, mode, access, share, options, out_error) end
---@param handle System.IntPtr
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.Close(handle, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param dest System.Byte[]
---@param dest_offset number
---@param count number
---@param out_error System.IO.MonoIOError
---@return number,System.IO.MonoIOError
function System.IO.MonoIO.Read(safeHandle, dest, dest_offset, count, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param src System.Byte[]
---@param src_offset number
---@param count number
---@param out_error System.IO.MonoIOError
---@return number,System.IO.MonoIOError
function System.IO.MonoIO.Write(safeHandle, src, src_offset, count, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param offset number
---@param origin System.IO.SeekOrigin
---@param out_error System.IO.MonoIOError
---@return number,System.IO.MonoIOError
function System.IO.MonoIO.Seek(safeHandle, offset, origin, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.Flush(safeHandle, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param out_error System.IO.MonoIOError
---@return number,System.IO.MonoIOError
function System.IO.MonoIO.GetLength(safeHandle, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param length number
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.SetLength(safeHandle, length, out_error) end
---@overload fun(safeHandle: System.Runtime.InteropServices.SafeHandle, creation_time: number, last_access_time: number, last_write_time: number, out_error: System.IO.MonoIOError) : boolean, System.IO.MonoIOError
---@overload fun(path: string, creation_time: number, last_access_time: number, last_write_time: number, out_error: System.IO.MonoIOError) : boolean, System.IO.MonoIOError
---@param path string
---@param type number
---@param creation_time number
---@param last_access_time number
---@param last_write_time number
---@param dateTime System.DateTime
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.SetFileTime(path, type, creation_time, last_access_time, last_write_time, dateTime, out_error) end
---@param path string
---@param dateTime System.DateTime
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.SetCreationTime(path, dateTime, out_error) end
---@param path string
---@param dateTime System.DateTime
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.SetLastAccessTime(path, dateTime, out_error) end
---@param path string
---@param dateTime System.DateTime
---@param out_error System.IO.MonoIOError
---@return boolean,System.IO.MonoIOError
function System.IO.MonoIO.SetLastWriteTime(path, dateTime, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param position number
---@param length number
---@param out_error System.IO.MonoIOError
---@return ,System.IO.MonoIOError
function System.IO.MonoIO.Lock(safeHandle, position, length, out_error) end
---@param safeHandle System.Runtime.InteropServices.SafeHandle
---@param position number
---@param length number
---@param out_error System.IO.MonoIOError
---@return ,System.IO.MonoIOError
function System.IO.MonoIO.Unlock(safeHandle, position, length, out_error) end
---@param out_read_handle System.IntPtr
---@param out_write_handle System.IntPtr
---@param out_error System.IO.MonoIOError
---@return boolean,System.IntPtr,System.IntPtr,System.IO.MonoIOError
function System.IO.MonoIO.CreatePipe(out_read_handle, out_write_handle, out_error) end
---@param source_process_handle System.IntPtr
---@param source_handle System.IntPtr
---@param target_process_handle System.IntPtr
---@param out_target_handle System.IntPtr
---@param access number
---@param inherit number
---@param options number
---@param out_error System.IO.MonoIOError
---@return boolean,System.IntPtr,System.IO.MonoIOError
function System.IO.MonoIO.DuplicateHandle(source_process_handle, source_handle, target_process_handle, out_target_handle, access, inherit, options, out_error) end
---@param path string
---@param out_newPath string
---@return boolean,string
function System.IO.MonoIO.RemapPath(path, out_newPath) end

---@class System.IO.MonoIOError
---@field ERROR_SUCCESS System.IO.MonoIOError
---@field ERROR_FILE_NOT_FOUND System.IO.MonoIOError
---@field ERROR_PATH_NOT_FOUND System.IO.MonoIOError
---@field ERROR_TOO_MANY_OPEN_FILES System.IO.MonoIOError
---@field ERROR_ACCESS_DENIED System.IO.MonoIOError
---@field ERROR_INVALID_HANDLE System.IO.MonoIOError
---@field ERROR_INVALID_DRIVE System.IO.MonoIOError
---@field ERROR_NOT_SAME_DEVICE System.IO.MonoIOError
---@field ERROR_NO_MORE_FILES System.IO.MonoIOError
---@field ERROR_NOT_READY System.IO.MonoIOError
---@field ERROR_WRITE_FAULT System.IO.MonoIOError
---@field ERROR_READ_FAULT System.IO.MonoIOError
---@field ERROR_GEN_FAILURE System.IO.MonoIOError
---@field ERROR_SHARING_VIOLATION System.IO.MonoIOError
---@field ERROR_LOCK_VIOLATION System.IO.MonoIOError
---@field ERROR_HANDLE_DISK_FULL System.IO.MonoIOError
---@field ERROR_NOT_SUPPORTED System.IO.MonoIOError
---@field ERROR_FILE_EXISTS System.IO.MonoIOError
---@field ERROR_CANNOT_MAKE System.IO.MonoIOError
---@field ERROR_INVALID_PARAMETER System.IO.MonoIOError
---@field ERROR_BROKEN_PIPE System.IO.MonoIOError
---@field ERROR_INVALID_NAME System.IO.MonoIOError
---@field ERROR_DIR_NOT_EMPTY System.IO.MonoIOError
---@field ERROR_ALREADY_EXISTS System.IO.MonoIOError
---@field ERROR_FILENAME_EXCED_RANGE System.IO.MonoIOError
---@field ERROR_DIRECTORY System.IO.MonoIOError
---@field ERROR_ENCRYPTION_FAILED System.IO.MonoIOError
System.IO.MonoIOError = {}
---@alias CS.System.IO.MonoIOError System.IO.MonoIOError
CS.System.IO.MonoIOError = System.IO.MonoIOError


---@class System.IO.MonoIOStat : System.ValueType
---@field fileAttributes System.IO.FileAttributes
---@field Length number
---@field CreationTime number
---@field LastAccessTime number
---@field LastWriteTime number
System.IO.MonoIOStat = {}
---@alias CS.System.IO.MonoIOStat System.IO.MonoIOStat
CS.System.IO.MonoIOStat = System.IO.MonoIOStat


---@class System.IO.Path : System.Object
---@field AltDirectorySeparatorChar System.Char
---@field DirectorySeparatorChar System.Char
---@field PathSeparator System.Char
---@field VolumeSeparatorChar System.Char
System.IO.Path = {}
---@alias CS.System.IO.Path System.IO.Path
CS.System.IO.Path = System.IO.Path

---@param path string
---@param extension string
---@return string
function System.IO.Path.ChangeExtension(path, extension) end
---@overload fun(path1: string, path2: string) : string
---@overload fun(paths: System.String[]) : string
---@overload fun(path1: string, path2: string, path3: string) : string
---@param path1 string
---@param path2 string
---@param path3 string
---@param path4 string
---@return string
function System.IO.Path.Combine(path1, path2, path3, path4) end
---@overload fun(path: string) : string
---@param path System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.IO.Path.GetDirectoryName(path) end
---@overload fun(path: string) : string
---@param path System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.IO.Path.GetExtension(path) end
---@overload fun(path: string) : string
---@param path System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.IO.Path.GetFileName(path) end
---@overload fun(path: string) : string
---@param path System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.IO.Path.GetFileNameWithoutExtension(path) end
---@overload fun(path: string) : string
---@param path string
---@param basePath string
---@return string
function System.IO.Path.GetFullPath(path, basePath) end
---@overload fun(path: string) : string
---@param path System.ReadOnlySpan
---@return System.ReadOnlySpan
function System.IO.Path.GetPathRoot(path) end
---@return string
function System.IO.Path.GetTempFileName() end
---@return string
function System.IO.Path.GetTempPath() end
---@overload fun(path: string) : boolean
---@param path System.ReadOnlySpan
---@return boolean
function System.IO.Path.HasExtension(path) end
---@overload fun(path: System.ReadOnlySpan) : boolean
---@param path string
---@return boolean
function System.IO.Path.IsPathRooted(path) end
---@return System.Char[]
function System.IO.Path.GetInvalidFileNameChars() end
---@return System.Char[]
function System.IO.Path.GetInvalidPathChars() end
---@return string
function System.IO.Path.GetRandomFileName() end
---@overload fun(path1: System.ReadOnlySpan, path2: System.ReadOnlySpan) : string
---@param path1 System.ReadOnlySpan
---@param path2 System.ReadOnlySpan
---@param path3 System.ReadOnlySpan
---@return string
function System.IO.Path.Join(path1, path2, path3) end
---@overload fun(path1: System.ReadOnlySpan, path2: System.ReadOnlySpan, destination: System.Span, out_charsWritten: number) : boolean, number
---@param path1 System.ReadOnlySpan
---@param path2 System.ReadOnlySpan
---@param path3 System.ReadOnlySpan
---@param destination System.Span
---@param out_charsWritten number
---@return boolean,number
function System.IO.Path.TryJoin(path1, path2, path3, destination, out_charsWritten) end
---@param relativeTo string
---@param path string
---@return string
function System.IO.Path.GetRelativePath(relativeTo, path) end
---@overload fun(path: string) : boolean
---@param path System.ReadOnlySpan
---@return boolean
function System.IO.Path.IsPathFullyQualified(path) end

---@class System.IO.SearchPattern : System.Object
System.IO.SearchPattern = {}
---@alias CS.System.IO.SearchPattern System.IO.SearchPattern
CS.System.IO.SearchPattern = System.IO.SearchPattern

---@return System.IO.SearchPattern
function System.IO.SearchPattern.New() end

---@class System.IO.UnexceptionalStreamReader : System.IO.StreamReader
System.IO.UnexceptionalStreamReader = {}
---@alias CS.System.IO.UnexceptionalStreamReader System.IO.UnexceptionalStreamReader
CS.System.IO.UnexceptionalStreamReader = System.IO.UnexceptionalStreamReader

---@param stream System.IO.Stream
---@param encoding System.Text.Encoding
---@return System.IO.UnexceptionalStreamReader
function System.IO.UnexceptionalStreamReader.New(stream, encoding) end
---@return number
function System.IO.UnexceptionalStreamReader:Peek() end
---@overload fun() : number
---@param out_dest_buffer System.Char
---@param index number
---@param count number
---@return number,System.Char
function System.IO.UnexceptionalStreamReader:Read(out_dest_buffer, index, count) end
---@return string
function System.IO.UnexceptionalStreamReader:ReadLine() end
---@return string
function System.IO.UnexceptionalStreamReader:ReadToEnd() end

---@class System.IO.UnexceptionalStreamWriter : System.IO.StreamWriter
System.IO.UnexceptionalStreamWriter = {}
---@alias CS.System.IO.UnexceptionalStreamWriter System.IO.UnexceptionalStreamWriter
CS.System.IO.UnexceptionalStreamWriter = System.IO.UnexceptionalStreamWriter

---@param stream System.IO.Stream
---@param encoding System.Text.Encoding
---@return System.IO.UnexceptionalStreamWriter
function System.IO.UnexceptionalStreamWriter.New(stream, encoding) end
function System.IO.UnexceptionalStreamWriter:Flush() end
---@overload fun(self: System.IO.UnexceptionalStreamWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.UnexceptionalStreamWriter, value: System.Char)
---@overload fun(self: System.IO.UnexceptionalStreamWriter, value: System.Char[])
---@param value string
function System.IO.UnexceptionalStreamWriter:Write(value) end

---@class System.IO.CStreamReader : System.IO.StreamReader
System.IO.CStreamReader = {}
---@alias CS.System.IO.CStreamReader System.IO.CStreamReader
CS.System.IO.CStreamReader = System.IO.CStreamReader

---@param stream System.IO.Stream
---@param encoding System.Text.Encoding
---@return System.IO.CStreamReader
function System.IO.CStreamReader.New(stream, encoding) end
---@return number
function System.IO.CStreamReader:Peek() end
---@overload fun() : number
---@param out_dest System.Char
---@param index number
---@param count number
---@return number,System.Char
function System.IO.CStreamReader:Read(out_dest, index, count) end
---@return string
function System.IO.CStreamReader:ReadLine() end
---@return string
function System.IO.CStreamReader:ReadToEnd() end

---@class System.IO.CStreamWriter : System.IO.StreamWriter
System.IO.CStreamWriter = {}
---@alias CS.System.IO.CStreamWriter System.IO.CStreamWriter
CS.System.IO.CStreamWriter = System.IO.CStreamWriter

---@param stream System.IO.Stream
---@param encoding System.Text.Encoding
---@param leaveOpen boolean
---@return System.IO.CStreamWriter
function System.IO.CStreamWriter.New(stream, encoding, leaveOpen) end
---@overload fun(self: System.IO.CStreamWriter, buffer: System.Char[], index: number, count: number)
---@overload fun(self: System.IO.CStreamWriter, val: System.Char)
---@overload fun(self: System.IO.CStreamWriter, val: System.Char[])
---@param val string
function System.IO.CStreamWriter:Write(val) end
---@param val string
function System.IO.CStreamWriter:InternalWriteString(val) end
---@param val System.Char
function System.IO.CStreamWriter:InternalWriteChar(val) end
---@param buffer System.Char[]
---@param n number
function System.IO.CStreamWriter:InternalWriteChars(buffer, n) end
---@param val string
function System.IO.CStreamWriter:WriteLine(val) end

---@class System.IO.MonoLinqHelper : System.Object
System.IO.MonoLinqHelper = {}
---@alias CS.System.IO.MonoLinqHelper System.IO.MonoLinqHelper
CS.System.IO.MonoLinqHelper = System.IO.MonoLinqHelper


---@class System.IO.IsolatedStorage.INormalizeForIsolatedStorage
System.IO.IsolatedStorage.INormalizeForIsolatedStorage = {}
---@alias CS.System.IO.IsolatedStorage.INormalizeForIsolatedStorage System.IO.IsolatedStorage.INormalizeForIsolatedStorage
CS.System.IO.IsolatedStorage.INormalizeForIsolatedStorage = System.IO.IsolatedStorage.INormalizeForIsolatedStorage

---@return System.Object
function System.IO.IsolatedStorage.INormalizeForIsolatedStorage:Normalize() end

---@class System.IO.IsolatedStorage.IsolatedStorageScope
---@field None System.IO.IsolatedStorage.IsolatedStorageScope
---@field User System.IO.IsolatedStorage.IsolatedStorageScope
---@field Domain System.IO.IsolatedStorage.IsolatedStorageScope
---@field Assembly System.IO.IsolatedStorage.IsolatedStorageScope
---@field Roaming System.IO.IsolatedStorage.IsolatedStorageScope
---@field Machine System.IO.IsolatedStorage.IsolatedStorageScope
---@field Application System.IO.IsolatedStorage.IsolatedStorageScope
System.IO.IsolatedStorage.IsolatedStorageScope = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageScope System.IO.IsolatedStorage.IsolatedStorageScope
CS.System.IO.IsolatedStorage.IsolatedStorageScope = System.IO.IsolatedStorage.IsolatedStorageScope


---@class System.IO.IsolatedStorage.IsolatedStorage : System.MarshalByRefObject
---@field ApplicationIdentity System.Object
---@field AssemblyIdentity System.Object
---@field DomainIdentity System.Object
---@field Scope System.IO.IsolatedStorage.IsolatedStorageScope
---@field AvailableFreeSpace number
---@field Quota number
---@field UsedSize number
System.IO.IsolatedStorage.IsolatedStorage = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorage System.IO.IsolatedStorage.IsolatedStorage
CS.System.IO.IsolatedStorage.IsolatedStorage = System.IO.IsolatedStorage.IsolatedStorage

function System.IO.IsolatedStorage.IsolatedStorage:Remove() end
---@param newQuotaSize number
---@return boolean
function System.IO.IsolatedStorage.IsolatedStorage:IncreaseQuotaTo(newQuotaSize) end

---@class System.IO.IsolatedStorage.IsolatedStorageException : System.Exception
System.IO.IsolatedStorage.IsolatedStorageException = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageException System.IO.IsolatedStorage.IsolatedStorageException
CS.System.IO.IsolatedStorage.IsolatedStorageException = System.IO.IsolatedStorage.IsolatedStorageException

---@overload fun() : System.IO.IsolatedStorage.IsolatedStorageException
---@overload fun(message: string) : System.IO.IsolatedStorage.IsolatedStorageException
---@param message string
---@param inner System.Exception
---@return System.IO.IsolatedStorage.IsolatedStorageException
function System.IO.IsolatedStorage.IsolatedStorageException.New(message, inner) end

---@class System.IO.IsolatedStorage.IsolatedStorageFile : System.IO.IsolatedStorage.IsolatedStorage
---@field IsEnabled boolean
---@field AvailableFreeSpace number
---@field Quota number
---@field UsedSize number
System.IO.IsolatedStorage.IsolatedStorageFile = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageFile System.IO.IsolatedStorage.IsolatedStorageFile
CS.System.IO.IsolatedStorage.IsolatedStorageFile = System.IO.IsolatedStorage.IsolatedStorageFile

---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@return System.Collections.IEnumerator
function System.IO.IsolatedStorage.IsolatedStorageFile.GetEnumerator(scope) end
---@overload fun(scope: System.IO.IsolatedStorage.IsolatedStorageScope, domainEvidence: System.Security.Policy.Evidence, domainEvidenceType: System.Type, assemblyEvidence: System.Security.Policy.Evidence, assemblyEvidenceType: System.Type) : System.IO.IsolatedStorage.IsolatedStorageFile
---@overload fun(scope: System.IO.IsolatedStorage.IsolatedStorageScope, domainIdentity: System.Object, assemblyIdentity: System.Object) : System.IO.IsolatedStorage.IsolatedStorageFile
---@overload fun(scope: System.IO.IsolatedStorage.IsolatedStorageScope, domainEvidenceType: System.Type, assemblyEvidenceType: System.Type) : System.IO.IsolatedStorage.IsolatedStorageFile
---@overload fun(scope: System.IO.IsolatedStorage.IsolatedStorageScope, applicationIdentity: System.Object) : System.IO.IsolatedStorage.IsolatedStorageFile
---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@param applicationEvidenceType System.Type
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetStore(scope, applicationEvidenceType) end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetMachineStoreForApplication() end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetMachineStoreForAssembly() end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetMachineStoreForDomain() end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForApplication() end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForAssembly() end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForDomain() end
---@return System.IO.IsolatedStorage.IsolatedStorageFile
function System.IO.IsolatedStorage.IsolatedStorageFile.GetUserStoreForSite() end
---@overload fun(scope: System.IO.IsolatedStorage.IsolatedStorageScope)
function System.IO.IsolatedStorage.IsolatedStorageFile:Remove() end
function System.IO.IsolatedStorage.IsolatedStorageFile:Close() end
---@param dir string
function System.IO.IsolatedStorage.IsolatedStorageFile:CreateDirectory(dir) end
---@overload fun(self: System.IO.IsolatedStorage.IsolatedStorageFile, sourceFileName: string, destinationFileName: string)
---@param sourceFileName string
---@param destinationFileName string
---@param overwrite boolean
function System.IO.IsolatedStorage.IsolatedStorageFile:CopyFile(sourceFileName, destinationFileName, overwrite) end
---@param path string
---@return System.IO.IsolatedStorage.IsolatedStorageFileStream
function System.IO.IsolatedStorage.IsolatedStorageFile:CreateFile(path) end
---@param dir string
function System.IO.IsolatedStorage.IsolatedStorageFile:DeleteDirectory(dir) end
---@param file string
function System.IO.IsolatedStorage.IsolatedStorageFile:DeleteFile(file) end
function System.IO.IsolatedStorage.IsolatedStorageFile:Dispose() end
---@param path string
---@return boolean
function System.IO.IsolatedStorage.IsolatedStorageFile:DirectoryExists(path) end
---@param path string
---@return boolean
function System.IO.IsolatedStorage.IsolatedStorageFile:FileExists(path) end
---@param path string
---@return System.DateTimeOffset
function System.IO.IsolatedStorage.IsolatedStorageFile:GetCreationTime(path) end
---@param path string
---@return System.DateTimeOffset
function System.IO.IsolatedStorage.IsolatedStorageFile:GetLastAccessTime(path) end
---@param path string
---@return System.DateTimeOffset
function System.IO.IsolatedStorage.IsolatedStorageFile:GetLastWriteTime(path) end
---@overload fun(self: System.IO.IsolatedStorage.IsolatedStorageFile, searchPattern: string) : System.String[]
---@return System.String[]
function System.IO.IsolatedStorage.IsolatedStorageFile:GetDirectoryNames() end
---@overload fun(self: System.IO.IsolatedStorage.IsolatedStorageFile, searchPattern: string) : System.String[]
---@return System.String[]
function System.IO.IsolatedStorage.IsolatedStorageFile:GetFileNames() end
---@param newQuotaSize number
---@return boolean
function System.IO.IsolatedStorage.IsolatedStorageFile:IncreaseQuotaTo(newQuotaSize) end
---@param sourceDirectoryName string
---@param destinationDirectoryName string
function System.IO.IsolatedStorage.IsolatedStorageFile:MoveDirectory(sourceDirectoryName, destinationDirectoryName) end
---@param sourceFileName string
---@param destinationFileName string
function System.IO.IsolatedStorage.IsolatedStorageFile:MoveFile(sourceFileName, destinationFileName) end
---@overload fun(self: System.IO.IsolatedStorage.IsolatedStorageFile, path: string, mode: System.IO.FileMode) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(self: System.IO.IsolatedStorage.IsolatedStorageFile, path: string, mode: System.IO.FileMode, access: System.IO.FileAccess) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@param path string
---@param mode System.IO.FileMode
---@param access System.IO.FileAccess
---@param share System.IO.FileShare
---@return System.IO.IsolatedStorage.IsolatedStorageFileStream
function System.IO.IsolatedStorage.IsolatedStorageFile:OpenFile(path, mode, access, share) end

---@class System.IO.IsolatedStorage.IsolatedStorageFile.Identities : System.ValueType
---@field Application System.Object
---@field Assembly System.Object
---@field Domain System.Object
System.IO.IsolatedStorage.IsolatedStorageFile.Identities = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageFile.Identities System.IO.IsolatedStorage.IsolatedStorageFile.Identities
CS.System.IO.IsolatedStorage.IsolatedStorageFile.Identities = System.IO.IsolatedStorage.IsolatedStorageFile.Identities

---@param application System.Object
---@param assembly System.Object
---@param domain System.Object
---@return System.IO.IsolatedStorage.IsolatedStorageFile.Identities
function System.IO.IsolatedStorage.IsolatedStorageFile.Identities.New(application, assembly, domain) end

---@class System.IO.IsolatedStorage.IsolatedStorageFileEnumerator : System.Object
---@field Current System.Object
System.IO.IsolatedStorage.IsolatedStorageFileEnumerator = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageFileEnumerator System.IO.IsolatedStorage.IsolatedStorageFileEnumerator
CS.System.IO.IsolatedStorage.IsolatedStorageFileEnumerator = System.IO.IsolatedStorage.IsolatedStorageFileEnumerator

---@param scope System.IO.IsolatedStorage.IsolatedStorageScope
---@param root string
---@return System.IO.IsolatedStorage.IsolatedStorageFileEnumerator
function System.IO.IsolatedStorage.IsolatedStorageFileEnumerator.New(scope, root) end
---@return boolean
function System.IO.IsolatedStorage.IsolatedStorageFileEnumerator:MoveNext() end
function System.IO.IsolatedStorage.IsolatedStorageFileEnumerator:Reset() end

---@class System.IO.IsolatedStorage.IsolatedStorageFileStream : System.IO.FileStream
---@field CanRead boolean
---@field CanSeek boolean
---@field CanWrite boolean
---@field SafeFileHandle Microsoft.Win32.SafeHandles.SafeFileHandle
---@field IsAsync boolean
---@field Length number
---@field Position number
System.IO.IsolatedStorage.IsolatedStorageFileStream = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageFileStream System.IO.IsolatedStorage.IsolatedStorageFileStream
CS.System.IO.IsolatedStorage.IsolatedStorageFileStream = System.IO.IsolatedStorage.IsolatedStorageFileStream

---@overload fun(path: string, mode: System.IO.FileMode) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare, bufferSize: number) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare, bufferSize: number, isf: System.IO.IsolatedStorage.IsolatedStorageFile) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, share: System.IO.FileShare, isf: System.IO.IsolatedStorage.IsolatedStorageFile) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@overload fun(path: string, mode: System.IO.FileMode, access: System.IO.FileAccess, isf: System.IO.IsolatedStorage.IsolatedStorageFile) : System.IO.IsolatedStorage.IsolatedStorageFileStream
---@param path string
---@param mode System.IO.FileMode
---@param isf System.IO.IsolatedStorage.IsolatedStorageFile
---@return System.IO.IsolatedStorage.IsolatedStorageFileStream
function System.IO.IsolatedStorage.IsolatedStorageFileStream.New(path, mode, isf) end
---@param buffer System.Byte[]
---@param offset number
---@param numBytes number
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.IsolatedStorage.IsolatedStorageFileStream:BeginRead(buffer, offset, numBytes, userCallback, stateObject) end
---@param buffer System.Byte[]
---@param offset number
---@param numBytes number
---@param userCallback System.AsyncCallback
---@param stateObject System.Object
---@return System.IAsyncResult
function System.IO.IsolatedStorage.IsolatedStorageFileStream:BeginWrite(buffer, offset, numBytes, userCallback, stateObject) end
---@param asyncResult System.IAsyncResult
---@return number
function System.IO.IsolatedStorage.IsolatedStorageFileStream:EndRead(asyncResult) end
---@param asyncResult System.IAsyncResult
function System.IO.IsolatedStorage.IsolatedStorageFileStream:EndWrite(asyncResult) end
---@overload fun()
---@param flushToDisk boolean
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Flush(flushToDisk) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
---@return number
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Read(buffer, offset, count) end
---@return number
function System.IO.IsolatedStorage.IsolatedStorageFileStream:ReadByte() end
---@param offset number
---@param origin System.IO.SeekOrigin
---@return number
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Seek(offset, origin) end
---@param value number
function System.IO.IsolatedStorage.IsolatedStorageFileStream:SetLength(value) end
---@param buffer System.Byte[]
---@param offset number
---@param count number
function System.IO.IsolatedStorage.IsolatedStorageFileStream:Write(buffer, offset, count) end
---@param value number
function System.IO.IsolatedStorage.IsolatedStorageFileStream:WriteByte(value) end

---@class System.IO.IsolatedStorage.IsolatedStorageSecurityOptions
---@field IncreaseQuotaForApplication System.IO.IsolatedStorage.IsolatedStorageSecurityOptions
System.IO.IsolatedStorage.IsolatedStorageSecurityOptions = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageSecurityOptions System.IO.IsolatedStorage.IsolatedStorageSecurityOptions
CS.System.IO.IsolatedStorage.IsolatedStorageSecurityOptions = System.IO.IsolatedStorage.IsolatedStorageSecurityOptions


---@class System.IO.IsolatedStorage.IsolatedStorageSecurityState : System.Security.SecurityState
---@field Options System.IO.IsolatedStorage.IsolatedStorageSecurityOptions
---@field Quota number
---@field UsedSize number
System.IO.IsolatedStorage.IsolatedStorageSecurityState = {}
---@alias CS.System.IO.IsolatedStorage.IsolatedStorageSecurityState System.IO.IsolatedStorage.IsolatedStorageSecurityState
CS.System.IO.IsolatedStorage.IsolatedStorageSecurityState = System.IO.IsolatedStorage.IsolatedStorageSecurityState

function System.IO.IsolatedStorage.IsolatedStorageSecurityState:EnsureState() end

---@class System.IO.Enumeration.FileSystemEntry : System.ValueType
---@field Directory System.ReadOnlySpan
---@field RootDirectory System.ReadOnlySpan
---@field OriginalRootDirectory System.ReadOnlySpan
---@field FileName System.ReadOnlySpan
---@field Attributes System.IO.FileAttributes
---@field Length number
---@field CreationTimeUtc System.DateTimeOffset
---@field LastAccessTimeUtc System.DateTimeOffset
---@field LastWriteTimeUtc System.DateTimeOffset
---@field IsDirectory boolean
---@field IsHidden boolean
System.IO.Enumeration.FileSystemEntry = {}
---@alias CS.System.IO.Enumeration.FileSystemEntry System.IO.Enumeration.FileSystemEntry
CS.System.IO.Enumeration.FileSystemEntry = System.IO.Enumeration.FileSystemEntry

---@return System.IO.FileSystemInfo
function System.IO.Enumeration.FileSystemEntry:ToFileSystemInfo() end
---@return string
function System.IO.Enumeration.FileSystemEntry:ToFullPath() end
---@return string
function System.IO.Enumeration.FileSystemEntry:ToSpecifiedFullPath() end

---@class System.IO.Enumeration.FileSystemEnumerable : System.Object
---@field ShouldIncludePredicate System.IO.Enumeration.FileSystemEnumerable.FindPredicate[TResult]
---@field ShouldRecursePredicate System.IO.Enumeration.FileSystemEnumerable.FindPredicate[TResult]
System.IO.Enumeration.FileSystemEnumerable = {}
---@alias CS.System.IO.Enumeration.FileSystemEnumerable System.IO.Enumeration.FileSystemEnumerable
CS.System.IO.Enumeration.FileSystemEnumerable = System.IO.Enumeration.FileSystemEnumerable

---@param directory string
---@param transform System.IO.Enumeration.FileSystemEnumerable.FindTransform[TResult]
---@param options System.IO.EnumerationOptions
---@return System.IO.Enumeration.FileSystemEnumerable
function System.IO.Enumeration.FileSystemEnumerable.New(directory, transform, options) end
---@return System.Collections.Generic.IEnumerator[TResult]
function System.IO.Enumeration.FileSystemEnumerable:GetEnumerator() end

---@class System.IO.Enumeration.FileSystemEnumerable.FindPredicate : System.MulticastDelegate
System.IO.Enumeration.FileSystemEnumerable.FindPredicate = {}
---@alias CS.System.IO.Enumeration.FileSystemEnumerable.FindPredicate System.IO.Enumeration.FileSystemEnumerable.FindPredicate
CS.System.IO.Enumeration.FileSystemEnumerable.FindPredicate = System.IO.Enumeration.FileSystemEnumerable.FindPredicate

---@param object System.Object
---@param method System.IntPtr
---@return System.IO.Enumeration.FileSystemEnumerable.FindPredicate
function System.IO.Enumeration.FileSystemEnumerable.FindPredicate.New(object, method) end
---@param ref_entry System.IO.Enumeration.FileSystemEntry
---@return boolean,System.IO.Enumeration.FileSystemEntry
function System.IO.Enumeration.FileSystemEnumerable.FindPredicate:Invoke(ref_entry) end
---@param ref_entry System.IO.Enumeration.FileSystemEntry
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.IO.Enumeration.FileSystemEntry
function System.IO.Enumeration.FileSystemEnumerable.FindPredicate:BeginInvoke(ref_entry, callback, object) end
---@param ref_entry System.IO.Enumeration.FileSystemEntry
---@param result System.IAsyncResult
---@return boolean,System.IO.Enumeration.FileSystemEntry
function System.IO.Enumeration.FileSystemEnumerable.FindPredicate:EndInvoke(ref_entry, result) end

---@class System.IO.Enumeration.FileSystemEnumerable.FindTransform : System.MulticastDelegate
System.IO.Enumeration.FileSystemEnumerable.FindTransform = {}
---@alias CS.System.IO.Enumeration.FileSystemEnumerable.FindTransform System.IO.Enumeration.FileSystemEnumerable.FindTransform
CS.System.IO.Enumeration.FileSystemEnumerable.FindTransform = System.IO.Enumeration.FileSystemEnumerable.FindTransform

---@param object System.Object
---@param method System.IntPtr
---@return System.IO.Enumeration.FileSystemEnumerable.FindTransform
function System.IO.Enumeration.FileSystemEnumerable.FindTransform.New(object, method) end
---@param ref_entry System.IO.Enumeration.FileSystemEntry
---@return TResult,System.IO.Enumeration.FileSystemEntry
function System.IO.Enumeration.FileSystemEnumerable.FindTransform:Invoke(ref_entry) end
---@param ref_entry System.IO.Enumeration.FileSystemEntry
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,System.IO.Enumeration.FileSystemEntry
function System.IO.Enumeration.FileSystemEnumerable.FindTransform:BeginInvoke(ref_entry, callback, object) end
---@param ref_entry System.IO.Enumeration.FileSystemEntry
---@param result System.IAsyncResult
---@return TResult,System.IO.Enumeration.FileSystemEntry
function System.IO.Enumeration.FileSystemEnumerable.FindTransform:EndInvoke(ref_entry, result) end

---@class System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator : System.IO.Enumeration.FileSystemEnumerator[TResult]
System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator = {}
---@alias CS.System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator
CS.System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator = System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator

---@param enumerable System.IO.Enumeration.FileSystemEnumerable[TResult]
---@return System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator
function System.IO.Enumeration.FileSystemEnumerable.DelegateEnumerator.New(enumerable) end

---@class System.IO.Enumeration.FileSystemEnumerableFactory : System.Object
System.IO.Enumeration.FileSystemEnumerableFactory = {}
---@alias CS.System.IO.Enumeration.FileSystemEnumerableFactory System.IO.Enumeration.FileSystemEnumerableFactory
CS.System.IO.Enumeration.FileSystemEnumerableFactory = System.IO.Enumeration.FileSystemEnumerableFactory


---@class System.IO.Enumeration.FileSystemEnumerator : System.Runtime.ConstrainedExecution.CriticalFinalizerObject
---@field Current TResult
System.IO.Enumeration.FileSystemEnumerator = {}
---@alias CS.System.IO.Enumeration.FileSystemEnumerator System.IO.Enumeration.FileSystemEnumerator
CS.System.IO.Enumeration.FileSystemEnumerator = System.IO.Enumeration.FileSystemEnumerator

---@param directory string
---@param options System.IO.EnumerationOptions
---@return System.IO.Enumeration.FileSystemEnumerator
function System.IO.Enumeration.FileSystemEnumerator.New(directory, options) end
---@return boolean
function System.IO.Enumeration.FileSystemEnumerator:MoveNext() end
function System.IO.Enumeration.FileSystemEnumerator:Reset() end
function System.IO.Enumeration.FileSystemEnumerator:Dispose() end

---@class System.IO.Enumeration.FileSystemName : System.Object
System.IO.Enumeration.FileSystemName = {}
---@alias CS.System.IO.Enumeration.FileSystemName System.IO.Enumeration.FileSystemName
CS.System.IO.Enumeration.FileSystemName = System.IO.Enumeration.FileSystemName

---@param expression string
---@return string
function System.IO.Enumeration.FileSystemName.TranslateWin32Expression(expression) end
---@param expression System.ReadOnlySpan
---@param name System.ReadOnlySpan
---@param ignoreCase boolean
---@return boolean
function System.IO.Enumeration.FileSystemName.MatchesWin32Expression(expression, name, ignoreCase) end
---@param expression System.ReadOnlySpan
---@param name System.ReadOnlySpan
---@param ignoreCase boolean
---@return boolean
function System.IO.Enumeration.FileSystemName.MatchesSimpleExpression(expression, name, ignoreCase) end

---@class System.Security.ReadOnlyPermissionSet : System.Security.PermissionSet
System.Security.ReadOnlyPermissionSet = {}
---@alias CS.System.Security.ReadOnlyPermissionSet System.Security.ReadOnlyPermissionSet
CS.System.Security.ReadOnlyPermissionSet = System.Security.ReadOnlyPermissionSet

---@param permissionSetXml System.Security.SecurityElement
---@return System.Security.ReadOnlyPermissionSet
function System.Security.ReadOnlyPermissionSet.New(permissionSetXml) end

---@class System.Runtime.DesignerServices.WindowsRuntimeDesignerContext : System.Object
---@field Name string
System.Runtime.DesignerServices.WindowsRuntimeDesignerContext = {}
---@alias CS.System.Runtime.DesignerServices.WindowsRuntimeDesignerContext System.Runtime.DesignerServices.WindowsRuntimeDesignerContext
CS.System.Runtime.DesignerServices.WindowsRuntimeDesignerContext = System.Runtime.DesignerServices.WindowsRuntimeDesignerContext

---@param paths System.Collections.Generic.IEnumerable
---@param name string
---@return System.Runtime.DesignerServices.WindowsRuntimeDesignerContext
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext.New(paths, name) end
---@param paths System.Collections.Generic.IEnumerable
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext.InitializeSharedContext(paths) end
---@param context System.Runtime.DesignerServices.WindowsRuntimeDesignerContext
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext.SetIterationContext(context) end
---@param assemblyName string
---@return System.Reflection.Assembly
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext:GetAssembly(assemblyName) end
---@param typeName string
---@return System.Type
function System.Runtime.DesignerServices.WindowsRuntimeDesignerContext:GetType(typeName) end

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
