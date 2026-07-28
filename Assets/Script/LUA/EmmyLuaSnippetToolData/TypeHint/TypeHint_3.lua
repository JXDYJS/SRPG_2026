---@meta


---@class UnityEngine.GUILayer : System.Object
UnityEngine.GUILayer = {}
---@alias CS.UnityEngine.GUILayer UnityEngine.GUILayer
CS.UnityEngine.GUILayer = UnityEngine.GUILayer

---@return UnityEngine.GUILayer
function UnityEngine.GUILayer.New() end

---@class UnityEngine.GUILayout : System.Object
UnityEngine.GUILayout = {}
---@alias CS.UnityEngine.GUILayout UnityEngine.GUILayout
CS.UnityEngine.GUILayout = UnityEngine.GUILayout

---@return UnityEngine.GUILayout
function UnityEngine.GUILayout.New() end
---@overload fun(image: UnityEngine.Texture, options: UnityEngine.GUILayoutOption[])
---@overload fun(text: string, options: UnityEngine.GUILayoutOption[])
---@overload fun(content: UnityEngine.GUIContent, options: UnityEngine.GUILayoutOption[])
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
function UnityEngine.GUILayout.Label(content, style, options) end
---@overload fun(image: UnityEngine.Texture, options: UnityEngine.GUILayoutOption[])
---@overload fun(text: string, options: UnityEngine.GUILayoutOption[])
---@overload fun(content: UnityEngine.GUIContent, options: UnityEngine.GUILayoutOption[])
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
function UnityEngine.GUILayout.Box(content, style, options) end
---@overload fun(image: UnityEngine.Texture, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(text: string, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(content: UnityEngine.GUIContent, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : boolean
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return boolean
function UnityEngine.GUILayout.Button(content, style, options) end
---@overload fun(image: UnityEngine.Texture, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(text: string, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(content: UnityEngine.GUIContent, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : boolean
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return boolean
function UnityEngine.GUILayout.RepeatButton(content, style, options) end
---@overload fun(text: string, options: UnityEngine.GUILayoutOption[]) : string
---@overload fun(text: string, maxLength: number, options: UnityEngine.GUILayoutOption[]) : string
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : string
---@param text string
---@param maxLength number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return string
function UnityEngine.GUILayout.TextField(text, maxLength, style, options) end
---@overload fun(password: string, maskChar: System.Char, options: UnityEngine.GUILayoutOption[]) : string
---@overload fun(password: string, maskChar: System.Char, maxLength: number, options: UnityEngine.GUILayoutOption[]) : string
---@overload fun(password: string, maskChar: System.Char, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : string
---@param password string
---@param maskChar System.Char
---@param maxLength number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return string
function UnityEngine.GUILayout.PasswordField(password, maskChar, maxLength, style, options) end
---@overload fun(text: string, options: UnityEngine.GUILayoutOption[]) : string
---@overload fun(text: string, maxLength: number, options: UnityEngine.GUILayoutOption[]) : string
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : string
---@param text string
---@param maxLength number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return string
function UnityEngine.GUILayout.TextArea(text, maxLength, style, options) end
---@overload fun(value: boolean, image: UnityEngine.Texture, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(value: boolean, text: string, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(value: boolean, content: UnityEngine.GUIContent, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(value: boolean, image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : boolean
---@overload fun(value: boolean, text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : boolean
---@param value boolean
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return boolean
function UnityEngine.GUILayout.Toggle(value, content, style, options) end
---@overload fun(selected: number, texts: System.String[], options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, images: UnityEngine.Texture[], options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, contents: UnityEngine.GUIContent[], options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, texts: System.String[], style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, images: UnityEngine.Texture[], style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, texts: System.String[], style: UnityEngine.GUIStyle, buttonSize: UnityEngine.GUI.ToolbarButtonSize, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, images: UnityEngine.Texture[], style: UnityEngine.GUIStyle, buttonSize: UnityEngine.GUI.ToolbarButtonSize, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, contents: UnityEngine.GUIContent[], style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, contents: UnityEngine.GUIContent[], style: UnityEngine.GUIStyle, buttonSize: UnityEngine.GUI.ToolbarButtonSize, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, contents: UnityEngine.GUIContent[], enabled: System.Boolean[], style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : number
---@param selected number
---@param contents UnityEngine.GUIContent[]
---@param enabled System.Boolean[]
---@param style UnityEngine.GUIStyle
---@param buttonSize UnityEngine.GUI.ToolbarButtonSize
---@param options UnityEngine.GUILayoutOption[]
---@return number
function UnityEngine.GUILayout.Toolbar(selected, contents, enabled, style, buttonSize, options) end
---@overload fun(selected: number, texts: System.String[], xCount: number, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, images: UnityEngine.Texture[], xCount: number, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, content: UnityEngine.GUIContent[], xCount: number, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, texts: System.String[], xCount: number, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : number
---@overload fun(selected: number, images: UnityEngine.Texture[], xCount: number, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : number
---@param selected number
---@param contents UnityEngine.GUIContent[]
---@param xCount number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return number
function UnityEngine.GUILayout.SelectionGrid(selected, contents, xCount, style, options) end
---@overload fun(value: number, leftValue: number, rightValue: number, options: UnityEngine.GUILayoutOption[]) : number
---@param value number
---@param leftValue number
---@param rightValue number
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return number
function UnityEngine.GUILayout.HorizontalSlider(value, leftValue, rightValue, slider, thumb, options) end
---@overload fun(value: number, leftValue: number, rightValue: number, options: UnityEngine.GUILayoutOption[]) : number
---@param value number
---@param leftValue number
---@param rightValue number
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return number
function UnityEngine.GUILayout.VerticalSlider(value, leftValue, rightValue, slider, thumb, options) end
---@overload fun(value: number, size: number, leftValue: number, rightValue: number, options: UnityEngine.GUILayoutOption[]) : number
---@param value number
---@param size number
---@param leftValue number
---@param rightValue number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return number
function UnityEngine.GUILayout.HorizontalScrollbar(value, size, leftValue, rightValue, style, options) end
---@overload fun(value: number, size: number, topValue: number, bottomValue: number, options: UnityEngine.GUILayoutOption[]) : number
---@param value number
---@param size number
---@param topValue number
---@param bottomValue number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return number
function UnityEngine.GUILayout.VerticalScrollbar(value, size, topValue, bottomValue, style, options) end
---@param pixels number
function UnityEngine.GUILayout.Space(pixels) end
function UnityEngine.GUILayout.FlexibleSpace() end
---@overload fun(options: UnityEngine.GUILayoutOption[])
---@overload fun(style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
function UnityEngine.GUILayout.BeginHorizontal(content, style, options) end
function UnityEngine.GUILayout.EndHorizontal() end
---@overload fun(options: UnityEngine.GUILayoutOption[])
---@overload fun(style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[])
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
function UnityEngine.GUILayout.BeginVertical(content, style, options) end
function UnityEngine.GUILayout.EndVertical() end
---@overload fun(screenRect: UnityEngine.Rect)
---@overload fun(screenRect: UnityEngine.Rect, text: string)
---@overload fun(screenRect: UnityEngine.Rect, image: UnityEngine.Texture)
---@overload fun(screenRect: UnityEngine.Rect, content: UnityEngine.GUIContent)
---@overload fun(screenRect: UnityEngine.Rect, style: UnityEngine.GUIStyle)
---@overload fun(screenRect: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle)
---@overload fun(screenRect: UnityEngine.Rect, image: UnityEngine.Texture, style: UnityEngine.GUIStyle)
---@param screenRect UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
function UnityEngine.GUILayout.BeginArea(screenRect, content, style) end
function UnityEngine.GUILayout.EndArea() end
---@overload fun(scrollPosition: UnityEngine.Vector2, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Vector2
---@overload fun(scrollPosition: UnityEngine.Vector2, alwaysShowHorizontal: boolean, alwaysShowVertical: boolean, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Vector2
---@overload fun(scrollPosition: UnityEngine.Vector2, horizontalScrollbar: UnityEngine.GUIStyle, verticalScrollbar: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Vector2
---@overload fun(scrollPosition: UnityEngine.Vector2, style: UnityEngine.GUIStyle) : UnityEngine.Vector2
---@overload fun(scrollPosition: UnityEngine.Vector2, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Vector2
---@overload fun(scrollPosition: UnityEngine.Vector2, alwaysShowHorizontal: boolean, alwaysShowVertical: boolean, horizontalScrollbar: UnityEngine.GUIStyle, verticalScrollbar: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Vector2
---@param scrollPosition UnityEngine.Vector2
---@param alwaysShowHorizontal boolean
---@param alwaysShowVertical boolean
---@param horizontalScrollbar UnityEngine.GUIStyle
---@param verticalScrollbar UnityEngine.GUIStyle
---@param background UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Vector2
function UnityEngine.GUILayout.BeginScrollView(scrollPosition, alwaysShowHorizontal, alwaysShowVertical, horizontalScrollbar, verticalScrollbar, background, options) end
function UnityEngine.GUILayout.EndScrollView() end
---@overload fun(id: number, screenRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, text: string, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@overload fun(id: number, screenRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, image: UnityEngine.Texture, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@overload fun(id: number, screenRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, content: UnityEngine.GUIContent, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@overload fun(id: number, screenRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@overload fun(id: number, screenRect: UnityEngine.Rect, func: UnityEngine.GUI.WindowFunction, image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@param id number
---@param screenRect UnityEngine.Rect
---@param func UnityEngine.GUI.WindowFunction
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEngine.GUILayout.Window(id, screenRect, func, content, style, options) end
---@param width number
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.Width(width) end
---@param minWidth number
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MinWidth(minWidth) end
---@param maxWidth number
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MaxWidth(maxWidth) end
---@param height number
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.Height(height) end
---@param minHeight number
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MinHeight(minHeight) end
---@param maxHeight number
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.MaxHeight(maxHeight) end
---@param expand boolean
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.ExpandWidth(expand) end
---@param expand boolean
---@return UnityEngine.GUILayoutOption
function UnityEngine.GUILayout.ExpandHeight(expand) end

---@class UnityEngine.GUILayout.LayoutedWindow : System.Object
UnityEngine.GUILayout.LayoutedWindow = {}
---@alias CS.UnityEngine.GUILayout.LayoutedWindow UnityEngine.GUILayout.LayoutedWindow
CS.UnityEngine.GUILayout.LayoutedWindow = UnityEngine.GUILayout.LayoutedWindow

---@param windowID number
function UnityEngine.GUILayout.LayoutedWindow:DoWindow(windowID) end

---@class UnityEngine.GUILayout.HorizontalScope : UnityEngine.GUI.Scope
UnityEngine.GUILayout.HorizontalScope = {}
---@alias CS.UnityEngine.GUILayout.HorizontalScope UnityEngine.GUILayout.HorizontalScope
CS.UnityEngine.GUILayout.HorizontalScope = UnityEngine.GUILayout.HorizontalScope

---@overload fun(options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.HorizontalScope
---@overload fun(style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.HorizontalScope
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.HorizontalScope
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.HorizontalScope
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.GUILayout.HorizontalScope
function UnityEngine.GUILayout.HorizontalScope.New(content, style, options) end

---@class UnityEngine.GUILayout.VerticalScope : UnityEngine.GUI.Scope
UnityEngine.GUILayout.VerticalScope = {}
---@alias CS.UnityEngine.GUILayout.VerticalScope UnityEngine.GUILayout.VerticalScope
CS.UnityEngine.GUILayout.VerticalScope = UnityEngine.GUILayout.VerticalScope

---@overload fun(options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.VerticalScope
---@overload fun(style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.VerticalScope
---@overload fun(text: string, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.VerticalScope
---@overload fun(image: UnityEngine.Texture, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.VerticalScope
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.GUILayout.VerticalScope
function UnityEngine.GUILayout.VerticalScope.New(content, style, options) end

---@class UnityEngine.GUILayout.AreaScope : UnityEngine.GUI.Scope
UnityEngine.GUILayout.AreaScope = {}
---@alias CS.UnityEngine.GUILayout.AreaScope UnityEngine.GUILayout.AreaScope
CS.UnityEngine.GUILayout.AreaScope = UnityEngine.GUILayout.AreaScope

---@overload fun(screenRect: UnityEngine.Rect) : UnityEngine.GUILayout.AreaScope
---@overload fun(screenRect: UnityEngine.Rect, text: string) : UnityEngine.GUILayout.AreaScope
---@overload fun(screenRect: UnityEngine.Rect, image: UnityEngine.Texture) : UnityEngine.GUILayout.AreaScope
---@overload fun(screenRect: UnityEngine.Rect, content: UnityEngine.GUIContent) : UnityEngine.GUILayout.AreaScope
---@overload fun(screenRect: UnityEngine.Rect, text: string, style: UnityEngine.GUIStyle) : UnityEngine.GUILayout.AreaScope
---@overload fun(screenRect: UnityEngine.Rect, image: UnityEngine.Texture, style: UnityEngine.GUIStyle) : UnityEngine.GUILayout.AreaScope
---@param screenRect UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param style UnityEngine.GUIStyle
---@return UnityEngine.GUILayout.AreaScope
function UnityEngine.GUILayout.AreaScope.New(screenRect, content, style) end

---@class UnityEngine.GUILayout.ScrollViewScope : UnityEngine.GUI.Scope
---@field scrollPosition UnityEngine.Vector2
---@field handleScrollWheel boolean
UnityEngine.GUILayout.ScrollViewScope = {}
---@alias CS.UnityEngine.GUILayout.ScrollViewScope UnityEngine.GUILayout.ScrollViewScope
CS.UnityEngine.GUILayout.ScrollViewScope = UnityEngine.GUILayout.ScrollViewScope

---@overload fun(scrollPosition: UnityEngine.Vector2, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.ScrollViewScope
---@overload fun(scrollPosition: UnityEngine.Vector2, alwaysShowHorizontal: boolean, alwaysShowVertical: boolean, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.ScrollViewScope
---@overload fun(scrollPosition: UnityEngine.Vector2, horizontalScrollbar: UnityEngine.GUIStyle, verticalScrollbar: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.ScrollViewScope
---@overload fun(scrollPosition: UnityEngine.Vector2, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.ScrollViewScope
---@overload fun(scrollPosition: UnityEngine.Vector2, alwaysShowHorizontal: boolean, alwaysShowVertical: boolean, horizontalScrollbar: UnityEngine.GUIStyle, verticalScrollbar: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.GUILayout.ScrollViewScope
---@param scrollPosition UnityEngine.Vector2
---@param alwaysShowHorizontal boolean
---@param alwaysShowVertical boolean
---@param horizontalScrollbar UnityEngine.GUIStyle
---@param verticalScrollbar UnityEngine.GUIStyle
---@param background UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.GUILayout.ScrollViewScope
function UnityEngine.GUILayout.ScrollViewScope.New(scrollPosition, alwaysShowHorizontal, alwaysShowVertical, horizontalScrollbar, verticalScrollbar, background, options) end

---@class UnityEngine.GUILayoutOption : System.Object
UnityEngine.GUILayoutOption = {}
---@alias CS.UnityEngine.GUILayoutOption UnityEngine.GUILayoutOption
CS.UnityEngine.GUILayoutOption = UnityEngine.GUILayoutOption


---@class UnityEngine.GUILayoutOption.Type
---@field fixedWidth UnityEngine.GUILayoutOption.Type
---@field fixedHeight UnityEngine.GUILayoutOption.Type
---@field minWidth UnityEngine.GUILayoutOption.Type
---@field maxWidth UnityEngine.GUILayoutOption.Type
---@field minHeight UnityEngine.GUILayoutOption.Type
---@field maxHeight UnityEngine.GUILayoutOption.Type
---@field stretchWidth UnityEngine.GUILayoutOption.Type
---@field stretchHeight UnityEngine.GUILayoutOption.Type
---@field alignStart UnityEngine.GUILayoutOption.Type
---@field alignMiddle UnityEngine.GUILayoutOption.Type
---@field alignEnd UnityEngine.GUILayoutOption.Type
---@field alignJustify UnityEngine.GUILayoutOption.Type
---@field equalSize UnityEngine.GUILayoutOption.Type
---@field spacing UnityEngine.GUILayoutOption.Type
UnityEngine.GUILayoutOption.Type = {}
---@alias CS.UnityEngine.GUILayoutOption.Type UnityEngine.GUILayoutOption.Type
CS.UnityEngine.GUILayoutOption.Type = UnityEngine.GUILayoutOption.Type


---@class UnityEngine.GUILayoutUtility : System.Object
UnityEngine.GUILayoutUtility = {}
---@alias CS.UnityEngine.GUILayoutUtility UnityEngine.GUILayoutUtility
CS.UnityEngine.GUILayoutUtility = UnityEngine.GUILayoutUtility

---@return UnityEngine.GUILayoutUtility
function UnityEngine.GUILayoutUtility.New() end
---@overload fun(content: UnityEngine.GUIContent, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@overload fun(content: UnityEngine.GUIContent, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@overload fun(width: number, height: number) : UnityEngine.Rect
---@overload fun(width: number, height: number, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@overload fun(width: number, height: number, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@overload fun(width: number, height: number, style: UnityEngine.GUIStyle, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@overload fun(minWidth: number, maxWidth: number, minHeight: number, maxHeight: number) : UnityEngine.Rect
---@overload fun(minWidth: number, maxWidth: number, minHeight: number, maxHeight: number, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@overload fun(minWidth: number, maxWidth: number, minHeight: number, maxHeight: number, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@param minWidth number
---@param maxWidth number
---@param minHeight number
---@param maxHeight number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEngine.GUILayoutUtility.GetRect(minWidth, maxWidth, minHeight, maxHeight, style, options) end
---@return UnityEngine.Rect
function UnityEngine.GUILayoutUtility.GetLastRect() end
---@overload fun(aspect: number) : UnityEngine.Rect
---@overload fun(aspect: number, style: UnityEngine.GUIStyle) : UnityEngine.Rect
---@overload fun(aspect: number, options: UnityEngine.GUILayoutOption[]) : UnityEngine.Rect
---@param aspect number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEngine.GUILayoutUtility.GetAspectRect(aspect, style, options) end

---@class UnityEngine.GUILayoutUtility.LayoutCacheState : System.ValueType
---@field id number
---@field topLevel UnityEngine.GUILayoutGroup
---@field layoutGroups UnityEngineInternal.GenericStack
---@field windows UnityEngine.GUILayoutGroup
UnityEngine.GUILayoutUtility.LayoutCacheState = {}
---@alias CS.UnityEngine.GUILayoutUtility.LayoutCacheState UnityEngine.GUILayoutUtility.LayoutCacheState
CS.UnityEngine.GUILayoutUtility.LayoutCacheState = UnityEngine.GUILayoutUtility.LayoutCacheState

---@param cache UnityEngine.GUILayoutUtility.LayoutCache
---@return UnityEngine.GUILayoutUtility.LayoutCacheState
function UnityEngine.GUILayoutUtility.LayoutCacheState.New(cache) end

---@class UnityEngine.GUILayoutUtility.LayoutCache : System.Object
---@field State UnityEngine.GUILayoutUtility.LayoutCacheState
UnityEngine.GUILayoutUtility.LayoutCache = {}
---@alias CS.UnityEngine.GUILayoutUtility.LayoutCache UnityEngine.GUILayoutUtility.LayoutCache
CS.UnityEngine.GUILayoutUtility.LayoutCache = UnityEngine.GUILayoutUtility.LayoutCache

function UnityEngine.GUILayoutUtility.LayoutCache:ResetCursor() end

---@class UnityEngine.GUISettings : System.Object
---@field doubleClickSelectsWord boolean
---@field tripleClickSelectsLine boolean
---@field cursorColor UnityEngine.Color
---@field cursorFlashSpeed number
---@field selectionColor UnityEngine.Color
UnityEngine.GUISettings = {}
---@alias CS.UnityEngine.GUISettings UnityEngine.GUISettings
CS.UnityEngine.GUISettings = UnityEngine.GUISettings

---@return UnityEngine.GUISettings
function UnityEngine.GUISettings.New() end

---@class UnityEngine.PlatformSelection
---@field Native UnityEngine.PlatformSelection
---@field Mac UnityEngine.PlatformSelection
---@field Windows UnityEngine.PlatformSelection
UnityEngine.PlatformSelection = {}
---@alias CS.UnityEngine.PlatformSelection UnityEngine.PlatformSelection
CS.UnityEngine.PlatformSelection = UnityEngine.PlatformSelection


---@class UnityEngine.GUISkin : UnityEngine.ScriptableObject
---@field font UnityEngine.Font
---@field box UnityEngine.GUIStyle
---@field label UnityEngine.GUIStyle
---@field textField UnityEngine.GUIStyle
---@field textArea UnityEngine.GUIStyle
---@field button UnityEngine.GUIStyle
---@field toggle UnityEngine.GUIStyle
---@field window UnityEngine.GUIStyle
---@field horizontalSlider UnityEngine.GUIStyle
---@field horizontalSliderThumb UnityEngine.GUIStyle
---@field verticalSlider UnityEngine.GUIStyle
---@field verticalSliderThumb UnityEngine.GUIStyle
---@field horizontalScrollbar UnityEngine.GUIStyle
---@field horizontalScrollbarThumb UnityEngine.GUIStyle
---@field horizontalScrollbarLeftButton UnityEngine.GUIStyle
---@field horizontalScrollbarRightButton UnityEngine.GUIStyle
---@field verticalScrollbar UnityEngine.GUIStyle
---@field verticalScrollbarThumb UnityEngine.GUIStyle
---@field verticalScrollbarUpButton UnityEngine.GUIStyle
---@field verticalScrollbarDownButton UnityEngine.GUIStyle
---@field scrollView UnityEngine.GUIStyle
---@field customStyles UnityEngine.GUIStyle[]
---@field settings UnityEngine.GUISettings
UnityEngine.GUISkin = {}
---@alias CS.UnityEngine.GUISkin UnityEngine.GUISkin
CS.UnityEngine.GUISkin = UnityEngine.GUISkin

---@return UnityEngine.GUISkin
function UnityEngine.GUISkin.New() end
---@param styleName string
---@return UnityEngine.GUIStyle
function UnityEngine.GUISkin:GetStyle(styleName) end
---@param styleName string
---@return UnityEngine.GUIStyle
function UnityEngine.GUISkin:FindStyle(styleName) end
---@return System.Collections.IEnumerator
function UnityEngine.GUISkin:GetEnumerator() end

---@class UnityEngine.GUISkin.SkinChangedDelegate : System.MulticastDelegate
UnityEngine.GUISkin.SkinChangedDelegate = {}
---@alias CS.UnityEngine.GUISkin.SkinChangedDelegate UnityEngine.GUISkin.SkinChangedDelegate
CS.UnityEngine.GUISkin.SkinChangedDelegate = UnityEngine.GUISkin.SkinChangedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.GUISkin.SkinChangedDelegate
function UnityEngine.GUISkin.SkinChangedDelegate.New(object, method) end
function UnityEngine.GUISkin.SkinChangedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.GUISkin.SkinChangedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.GUISkin.SkinChangedDelegate:EndInvoke(result) end

---@class UnityEngine.GUIStateObjects : System.Object
UnityEngine.GUIStateObjects = {}
---@alias CS.UnityEngine.GUIStateObjects UnityEngine.GUIStateObjects
CS.UnityEngine.GUIStateObjects = UnityEngine.GUIStateObjects

---@return UnityEngine.GUIStateObjects
function UnityEngine.GUIStateObjects.New() end

---@class UnityEngine.GUIStyleState : System.Object
---@field background UnityEngine.Texture2D
---@field textColor UnityEngine.Color
---@field scaledBackgrounds UnityEngine.Texture2D[]
UnityEngine.GUIStyleState = {}
---@alias CS.UnityEngine.GUIStyleState UnityEngine.GUIStyleState
CS.UnityEngine.GUIStyleState = UnityEngine.GUIStyleState

---@return UnityEngine.GUIStyleState
function UnityEngine.GUIStyleState.New() end

---@class UnityEngine.GUIStyle : System.Object
---@field none UnityEngine.GUIStyle
---@field font UnityEngine.Font
---@field imagePosition UnityEngine.ImagePosition
---@field alignment UnityEngine.TextAnchor
---@field wordWrap boolean
---@field clipping UnityEngine.TextClipping
---@field contentOffset UnityEngine.Vector2
---@field fixedWidth number
---@field fixedHeight number
---@field stretchWidth boolean
---@field stretchHeight boolean
---@field fontSize number
---@field fontStyle UnityEngine.FontStyle
---@field richText boolean
---@field name string
---@field normal UnityEngine.GUIStyleState
---@field hover UnityEngine.GUIStyleState
---@field active UnityEngine.GUIStyleState
---@field onNormal UnityEngine.GUIStyleState
---@field onHover UnityEngine.GUIStyleState
---@field onActive UnityEngine.GUIStyleState
---@field focused UnityEngine.GUIStyleState
---@field onFocused UnityEngine.GUIStyleState
---@field border UnityEngine.RectOffset
---@field margin UnityEngine.RectOffset
---@field padding UnityEngine.RectOffset
---@field overflow UnityEngine.RectOffset
---@field lineHeight number
---@field isHeightDependantOnWidth boolean
UnityEngine.GUIStyle = {}
---@alias CS.UnityEngine.GUIStyle UnityEngine.GUIStyle
CS.UnityEngine.GUIStyle = UnityEngine.GUIStyle

---@overload fun() : UnityEngine.GUIStyle
---@param other UnityEngine.GUIStyle
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle.New(other) end
---@overload fun(self: UnityEngine.GUIStyle, position: UnityEngine.Rect, isHover: boolean, isActive: boolean, on: boolean, hasKeyboardFocus: boolean)
---@overload fun(self: UnityEngine.GUIStyle, position: UnityEngine.Rect, text: string, isHover: boolean, isActive: boolean, on: boolean, hasKeyboardFocus: boolean)
---@overload fun(self: UnityEngine.GUIStyle, position: UnityEngine.Rect, image: UnityEngine.Texture, isHover: boolean, isActive: boolean, on: boolean, hasKeyboardFocus: boolean)
---@overload fun(self: UnityEngine.GUIStyle, position: UnityEngine.Rect, content: UnityEngine.GUIContent, isHover: boolean, isActive: boolean, on: boolean, hasKeyboardFocus: boolean)
---@overload fun(self: UnityEngine.GUIStyle, position: UnityEngine.Rect, content: UnityEngine.GUIContent, controlID: number)
---@overload fun(self: UnityEngine.GUIStyle, position: UnityEngine.Rect, content: UnityEngine.GUIContent, controlID: number, on: boolean)
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param controlID number
---@param on boolean
---@param hover boolean
function UnityEngine.GUIStyle:Draw(position, content, controlID, on, hover) end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param controlID number
---@param character number
function UnityEngine.GUIStyle:DrawCursor(position, content, controlID, character) end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param controlID number
---@param firstSelectedCharacter number
---@param lastSelectedCharacter number
function UnityEngine.GUIStyle:DrawWithTextSelection(position, content, controlID, firstSelectedCharacter, lastSelectedCharacter) end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param cursorStringIndex number
---@return UnityEngine.Vector2
function UnityEngine.GUIStyle:GetCursorPixelPosition(position, content, cursorStringIndex) end
---@param position UnityEngine.Rect
---@param content UnityEngine.GUIContent
---@param cursorPixelPosition UnityEngine.Vector2
---@return number
function UnityEngine.GUIStyle:GetCursorStringIndex(position, content, cursorPixelPosition) end
---@param content UnityEngine.GUIContent
---@return UnityEngine.Vector2
function UnityEngine.GUIStyle:CalcSize(content) end
---@param contentSize UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.GUIStyle:CalcScreenSize(contentSize) end
---@param content UnityEngine.GUIContent
---@param width number
---@return number
function UnityEngine.GUIStyle:CalcHeight(content, width) end
---@param content UnityEngine.GUIContent
---@param out_minWidth number
---@param out_maxWidth number
---@return ,number,number
function UnityEngine.GUIStyle:CalcMinMaxWidth(content, out_minWidth, out_maxWidth) end
---@return string
function UnityEngine.GUIStyle:ToString() end
---@param background UnityEngine.Texture2D
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithNormalBackground(background) end
---@param fontSize number
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithFontSize(fontSize) end
---@param fontStyle UnityEngine.FontStyle
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithFontStyle(fontStyle) end
---@param alignment UnityEngine.TextAnchor
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithAlignment(alignment) end
---@param margin UnityEngine.RectOffset
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithMargin(margin) end
---@param border UnityEngine.RectOffset
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithBorder(border) end
---@param padding UnityEngine.RectOffset
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithPadding(padding) end
---@param fixedWidth number
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithFixedWidth(fixedWidth) end
---@param fixedHeight number
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithFixedHeight(fixedHeight) end
---@param richText boolean
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithRichText(richText) end
---@param font UnityEngine.Font
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithFont(font) end
---@param contentOffset UnityEngine.Vector2
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithContentOffset(contentOffset) end
---@param textColor UnityEngine.Color
---@return UnityEngine.GUIStyle
function UnityEngine.GUIStyle:WithNormalTextColor(textColor) end

---@class UnityEngine.ImagePosition
---@field ImageLeft UnityEngine.ImagePosition
---@field ImageAbove UnityEngine.ImagePosition
---@field ImageOnly UnityEngine.ImagePosition
---@field TextOnly UnityEngine.ImagePosition
UnityEngine.ImagePosition = {}
---@alias CS.UnityEngine.ImagePosition UnityEngine.ImagePosition
CS.UnityEngine.ImagePosition = UnityEngine.ImagePosition


---@class UnityEngine.TextClipping
---@field Overflow UnityEngine.TextClipping
---@field Clip UnityEngine.TextClipping
UnityEngine.TextClipping = {}
---@alias CS.UnityEngine.TextClipping UnityEngine.TextClipping
CS.UnityEngine.TextClipping = UnityEngine.TextClipping


---@class UnityEngine.GUITargetAttribute : System.Attribute
UnityEngine.GUITargetAttribute = {}
---@alias CS.UnityEngine.GUITargetAttribute UnityEngine.GUITargetAttribute
CS.UnityEngine.GUITargetAttribute = UnityEngine.GUITargetAttribute

---@overload fun() : UnityEngine.GUITargetAttribute
---@overload fun(displayIndex: number) : UnityEngine.GUITargetAttribute
---@overload fun(displayIndex: number, displayIndex1: number) : UnityEngine.GUITargetAttribute
---@param displayIndex number
---@param displayIndex1 number
---@param displayIndexList System.Int32[]
---@return UnityEngine.GUITargetAttribute
function UnityEngine.GUITargetAttribute.New(displayIndex, displayIndex1, displayIndexList) end

---@class UnityEngine.GUITexture : System.Object
UnityEngine.GUITexture = {}
---@alias CS.UnityEngine.GUITexture UnityEngine.GUITexture
CS.UnityEngine.GUITexture = UnityEngine.GUITexture

---@return UnityEngine.GUITexture
function UnityEngine.GUITexture.New() end

---@class UnityEngine.GUIUtility : System.Object
---@field hasModalWindow boolean
---@field systemCopyBuffer string
---@field hotControl number
---@field keyboardControl number
UnityEngine.GUIUtility = {}
---@alias CS.UnityEngine.GUIUtility UnityEngine.GUIUtility
CS.UnityEngine.GUIUtility = UnityEngine.GUIUtility

---@return UnityEngine.GUIUtility
function UnityEngine.GUIUtility.New() end
---@overload fun(hint: number, focusType: UnityEngine.FocusType, rect: UnityEngine.Rect) : number
---@overload fun(focus: UnityEngine.FocusType) : number
---@overload fun(contents: UnityEngine.GUIContent, focus: UnityEngine.FocusType) : number
---@overload fun(focus: UnityEngine.FocusType, position: UnityEngine.Rect) : number
---@overload fun(contents: UnityEngine.GUIContent, focus: UnityEngine.FocusType, position: UnityEngine.Rect) : number
---@param hint number
---@param focus UnityEngine.FocusType
---@return number
function UnityEngine.GUIUtility.GetControlID(hint, focus) end
---@overload fun(rect: UnityEngine.Rect, out_widthInPixels: number, out_heightInPixels: number) : UnityEngine.Rect, number, number
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIUtility.AlignRectToDevice(rect) end
---@param t System.Type
---@param controlID number
---@return System.Object
function UnityEngine.GUIUtility.GetStateObject(t, controlID) end
---@param t System.Type
---@param controlID number
---@return System.Object
function UnityEngine.GUIUtility.QueryStateObject(t, controlID) end
function UnityEngine.GUIUtility.ExitGUI() end
---@param guiPoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.GUIUtility.GUIToScreenPoint(guiPoint) end
---@param guiRect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIUtility.GUIToScreenRect(guiRect) end
---@param screenPoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.GUIUtility.ScreenToGUIPoint(screenPoint) end
---@param screenRect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.GUIUtility.ScreenToGUIRect(screenRect) end
---@param angle number
---@param pivotPoint UnityEngine.Vector2
function UnityEngine.GUIUtility.RotateAroundPivot(angle, pivotPoint) end
---@param scale UnityEngine.Vector2
---@param pivotPoint UnityEngine.Vector2
function UnityEngine.GUIUtility.ScaleAroundPivot(scale, pivotPoint) end

---@class UnityEngine.ExitGUIException : System.Exception
UnityEngine.ExitGUIException = {}
---@alias CS.UnityEngine.ExitGUIException UnityEngine.ExitGUIException
CS.UnityEngine.ExitGUIException = UnityEngine.ExitGUIException

---@return UnityEngine.ExitGUIException
function UnityEngine.ExitGUIException.New() end

---@class UnityEngine.GUILayoutEntry : System.Object
---@field minWidth number
---@field maxWidth number
---@field minHeight number
---@field maxHeight number
---@field rect UnityEngine.Rect
---@field stretchWidth number
---@field stretchHeight number
---@field consideredForMargin boolean
---@field style UnityEngine.GUIStyle
---@field marginLeft number
---@field marginRight number
---@field marginTop number
---@field marginBottom number
---@field marginHorizontal number
---@field marginVertical number
UnityEngine.GUILayoutEntry = {}
---@alias CS.UnityEngine.GUILayoutEntry UnityEngine.GUILayoutEntry
CS.UnityEngine.GUILayoutEntry = UnityEngine.GUILayoutEntry

---@overload fun(_minWidth: number, _maxWidth: number, _minHeight: number, _maxHeight: number, _style: UnityEngine.GUIStyle) : UnityEngine.GUILayoutEntry
---@param _minWidth number
---@param _maxWidth number
---@param _minHeight number
---@param _maxHeight number
---@param _style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.GUILayoutEntry
function UnityEngine.GUILayoutEntry.New(_minWidth, _maxWidth, _minHeight, _maxHeight, _style, options) end
function UnityEngine.GUILayoutEntry:CalcWidth() end
function UnityEngine.GUILayoutEntry:CalcHeight() end
---@param x number
---@param width number
function UnityEngine.GUILayoutEntry:SetHorizontal(x, width) end
---@param y number
---@param height number
function UnityEngine.GUILayoutEntry:SetVertical(y, height) end
---@param options UnityEngine.GUILayoutOption[]
function UnityEngine.GUILayoutEntry:ApplyOptions(options) end
---@return string
function UnityEngine.GUILayoutEntry:ToString() end

---@class UnityEngine.GUIAspectSizer : UnityEngine.GUILayoutEntry
UnityEngine.GUIAspectSizer = {}
---@alias CS.UnityEngine.GUIAspectSizer UnityEngine.GUIAspectSizer
CS.UnityEngine.GUIAspectSizer = UnityEngine.GUIAspectSizer

---@param aspect number
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.GUIAspectSizer
function UnityEngine.GUIAspectSizer.New(aspect, options) end
function UnityEngine.GUIAspectSizer:CalcHeight() end

---@class UnityEngine.GUIGridSizer : UnityEngine.GUILayoutEntry
UnityEngine.GUIGridSizer = {}
---@alias CS.UnityEngine.GUIGridSizer UnityEngine.GUIGridSizer
CS.UnityEngine.GUIGridSizer = UnityEngine.GUIGridSizer

---@param contents UnityEngine.GUIContent[]
---@param xCount number
---@param style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.Rect
function UnityEngine.GUIGridSizer.GetRect(contents, xCount, style, options) end

---@class UnityEngine.GUIWordWrapSizer : UnityEngine.GUILayoutEntry
UnityEngine.GUIWordWrapSizer = {}
---@alias CS.UnityEngine.GUIWordWrapSizer UnityEngine.GUIWordWrapSizer
CS.UnityEngine.GUIWordWrapSizer = UnityEngine.GUIWordWrapSizer

---@param style UnityEngine.GUIStyle
---@param content UnityEngine.GUIContent
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.GUIWordWrapSizer
function UnityEngine.GUIWordWrapSizer.New(style, content, options) end
function UnityEngine.GUIWordWrapSizer:CalcWidth() end
function UnityEngine.GUIWordWrapSizer:CalcHeight() end

---@class UnityEngine.GUILayoutGroup : UnityEngine.GUILayoutEntry
---@field entries System.Collections.Generic.List
---@field isVertical boolean
---@field resetCoords boolean
---@field spacing number
---@field sameSize boolean
---@field isWindow boolean
---@field windowID number
---@field marginLeft number
---@field marginRight number
---@field marginTop number
---@field marginBottom number
UnityEngine.GUILayoutGroup = {}
---@alias CS.UnityEngine.GUILayoutGroup UnityEngine.GUILayoutGroup
CS.UnityEngine.GUILayoutGroup = UnityEngine.GUILayoutGroup

---@overload fun() : UnityEngine.GUILayoutGroup
---@param _style UnityEngine.GUIStyle
---@param options UnityEngine.GUILayoutOption[]
---@return UnityEngine.GUILayoutGroup
function UnityEngine.GUILayoutGroup.New(_style, options) end
---@param options UnityEngine.GUILayoutOption[]
function UnityEngine.GUILayoutGroup:ApplyOptions(options) end
function UnityEngine.GUILayoutGroup:ResetCursor() end
---@return UnityEngine.Rect
function UnityEngine.GUILayoutGroup:PeekNext() end
---@return UnityEngine.GUILayoutEntry
function UnityEngine.GUILayoutGroup:GetNext() end
---@return UnityEngine.Rect
function UnityEngine.GUILayoutGroup:GetLast() end
---@param e UnityEngine.GUILayoutEntry
function UnityEngine.GUILayoutGroup:Add(e) end
function UnityEngine.GUILayoutGroup:CalcWidth() end
---@param x number
---@param width number
function UnityEngine.GUILayoutGroup:SetHorizontal(x, width) end
function UnityEngine.GUILayoutGroup:CalcHeight() end
---@param y number
---@param height number
function UnityEngine.GUILayoutGroup:SetVertical(y, height) end
---@return string
function UnityEngine.GUILayoutGroup:ToString() end

---@class UnityEngine.GUIScrollGroup : UnityEngine.GUILayoutGroup
---@field calcMinWidth number
---@field calcMaxWidth number
---@field calcMinHeight number
---@field calcMaxHeight number
---@field clientWidth number
---@field clientHeight number
---@field allowHorizontalScroll boolean
---@field allowVerticalScroll boolean
---@field needsHorizontalScrollbar boolean
---@field needsVerticalScrollbar boolean
---@field horizontalScrollbar UnityEngine.GUIStyle
---@field verticalScrollbar UnityEngine.GUIStyle
UnityEngine.GUIScrollGroup = {}
---@alias CS.UnityEngine.GUIScrollGroup UnityEngine.GUIScrollGroup
CS.UnityEngine.GUIScrollGroup = UnityEngine.GUIScrollGroup

---@return UnityEngine.GUIScrollGroup
function UnityEngine.GUIScrollGroup.New() end
function UnityEngine.GUIScrollGroup:CalcWidth() end
---@param x number
---@param width number
function UnityEngine.GUIScrollGroup:SetHorizontal(x, width) end
function UnityEngine.GUIScrollGroup:CalcHeight() end
---@param y number
---@param height number
function UnityEngine.GUIScrollGroup:SetVertical(y, height) end

---@class UnityEngine.ObjectGUIState : System.Object
UnityEngine.ObjectGUIState = {}
---@alias CS.UnityEngine.ObjectGUIState UnityEngine.ObjectGUIState
CS.UnityEngine.ObjectGUIState = UnityEngine.ObjectGUIState

---@return UnityEngine.ObjectGUIState
function UnityEngine.ObjectGUIState.New() end
function UnityEngine.ObjectGUIState:Dispose() end

---@class UnityEngine.ScrollViewState : System.Object
---@field position UnityEngine.Rect
---@field visibleRect UnityEngine.Rect
---@field viewRect UnityEngine.Rect
---@field scrollPosition UnityEngine.Vector2
---@field apply boolean
---@field isDuringTouchScroll boolean
---@field touchScrollStartMousePosition UnityEngine.Vector2
---@field touchScrollStartPosition UnityEngine.Vector2
---@field velocity UnityEngine.Vector2
---@field previousTimeSinceStartup number
UnityEngine.ScrollViewState = {}
---@alias CS.UnityEngine.ScrollViewState UnityEngine.ScrollViewState
CS.UnityEngine.ScrollViewState = UnityEngine.ScrollViewState

---@return UnityEngine.ScrollViewState
function UnityEngine.ScrollViewState.New() end
---@param pos UnityEngine.Rect
function UnityEngine.ScrollViewState:ScrollTo(pos) end
---@param pos UnityEngine.Rect
---@param maxDelta number
---@return boolean
function UnityEngine.ScrollViewState:ScrollTowards(pos, maxDelta) end

---@class UnityEngine.SliderState : System.Object
---@field dragStartPos number
---@field dragStartValue number
---@field isDragging boolean
UnityEngine.SliderState = {}
---@alias CS.UnityEngine.SliderState UnityEngine.SliderState
CS.UnityEngine.SliderState = UnityEngine.SliderState

---@return UnityEngine.SliderState
function UnityEngine.SliderState.New() end

---@class UnityEngine.SliderHandler : System.ValueType
UnityEngine.SliderHandler = {}
---@alias CS.UnityEngine.SliderHandler UnityEngine.SliderHandler
CS.UnityEngine.SliderHandler = UnityEngine.SliderHandler

---@param position UnityEngine.Rect
---@param currentValue number
---@param size number
---@param start number
---@param _end number
---@param slider UnityEngine.GUIStyle
---@param thumb UnityEngine.GUIStyle
---@param horiz boolean
---@param id number
---@param thumbExtent UnityEngine.GUIStyle
---@return UnityEngine.SliderHandler
function UnityEngine.SliderHandler.New(position, currentValue, size, start, _end, slider, thumb, horiz, id, thumbExtent) end
---@return number
function UnityEngine.SliderHandler:Handle() end

---@class UnityEngine.TextEditOp
---@field MoveLeft UnityEngine.TextEditOp
---@field MoveRight UnityEngine.TextEditOp
---@field MoveUp UnityEngine.TextEditOp
---@field MoveDown UnityEngine.TextEditOp
---@field MoveLineStart UnityEngine.TextEditOp
---@field MoveLineEnd UnityEngine.TextEditOp
---@field MoveTextStart UnityEngine.TextEditOp
---@field MoveTextEnd UnityEngine.TextEditOp
---@field MovePageUp UnityEngine.TextEditOp
---@field MovePageDown UnityEngine.TextEditOp
---@field MoveGraphicalLineStart UnityEngine.TextEditOp
---@field MoveGraphicalLineEnd UnityEngine.TextEditOp
---@field MoveWordLeft UnityEngine.TextEditOp
---@field MoveWordRight UnityEngine.TextEditOp
---@field MoveParagraphForward UnityEngine.TextEditOp
---@field MoveParagraphBackward UnityEngine.TextEditOp
---@field MoveToStartOfNextWord UnityEngine.TextEditOp
---@field MoveToEndOfPreviousWord UnityEngine.TextEditOp
---@field Delete UnityEngine.TextEditOp
---@field Backspace UnityEngine.TextEditOp
---@field DeleteWordBack UnityEngine.TextEditOp
---@field DeleteWordForward UnityEngine.TextEditOp
---@field DeleteLineBack UnityEngine.TextEditOp
---@field Cut UnityEngine.TextEditOp
---@field Paste UnityEngine.TextEditOp
---@field ScrollStart UnityEngine.TextEditOp
---@field ScrollEnd UnityEngine.TextEditOp
---@field ScrollPageUp UnityEngine.TextEditOp
---@field ScrollPageDown UnityEngine.TextEditOp
UnityEngine.TextEditOp = {}
---@alias CS.UnityEngine.TextEditOp UnityEngine.TextEditOp
CS.UnityEngine.TextEditOp = UnityEngine.TextEditOp


---@class UnityEngine.TextSelectOp
---@field SelectLeft UnityEngine.TextSelectOp
---@field SelectRight UnityEngine.TextSelectOp
---@field SelectUp UnityEngine.TextSelectOp
---@field SelectDown UnityEngine.TextSelectOp
---@field SelectTextStart UnityEngine.TextSelectOp
---@field SelectTextEnd UnityEngine.TextSelectOp
---@field SelectPageUp UnityEngine.TextSelectOp
---@field SelectPageDown UnityEngine.TextSelectOp
---@field ExpandSelectGraphicalLineStart UnityEngine.TextSelectOp
---@field ExpandSelectGraphicalLineEnd UnityEngine.TextSelectOp
---@field SelectGraphicalLineStart UnityEngine.TextSelectOp
---@field SelectGraphicalLineEnd UnityEngine.TextSelectOp
---@field SelectWordLeft UnityEngine.TextSelectOp
---@field SelectWordRight UnityEngine.TextSelectOp
---@field SelectToEndOfPreviousWord UnityEngine.TextSelectOp
---@field SelectToStartOfNextWord UnityEngine.TextSelectOp
---@field SelectParagraphBackward UnityEngine.TextSelectOp
---@field SelectParagraphForward UnityEngine.TextSelectOp
---@field Copy UnityEngine.TextSelectOp
---@field SelectAll UnityEngine.TextSelectOp
---@field SelectNone UnityEngine.TextSelectOp
UnityEngine.TextSelectOp = {}
---@alias CS.UnityEngine.TextSelectOp UnityEngine.TextSelectOp
CS.UnityEngine.TextSelectOp = UnityEngine.TextSelectOp


---@class UnityEngine.TextEditingUtilities : System.Object
---@field multiline boolean
---@field text string
UnityEngine.TextEditingUtilities = {}
---@alias CS.UnityEngine.TextEditingUtilities UnityEngine.TextEditingUtilities
CS.UnityEngine.TextEditingUtilities = UnityEngine.TextEditingUtilities

---@param selectingUtilities UnityEngine.TextSelectingUtilities
---@param textHandle UnityEngine.TextCore.Text.TextHandle
---@param text string
---@return UnityEngine.TextEditingUtilities
function UnityEngine.TextEditingUtilities.New(selectingUtilities, textHandle, text) end
---@return boolean
function UnityEngine.TextEditingUtilities:UpdateImeState() end
---@return boolean
function UnityEngine.TextEditingUtilities:ShouldUpdateImeWindowPosition() end
---@param worldPosition UnityEngine.Vector2
function UnityEngine.TextEditingUtilities:SetImeWindowPosition(worldPosition) end
---@param richText boolean
---@return string
function UnityEngine.TextEditingUtilities:GeneratePreviewString(richText) end
function UnityEngine.TextEditingUtilities:EnableCursorPreviewState() end
function UnityEngine.TextEditingUtilities:RestoreCursorState() end
---@return boolean
function UnityEngine.TextEditingUtilities:DeleteLineBack() end
---@return boolean
function UnityEngine.TextEditingUtilities:DeleteWordBack() end
---@return boolean
function UnityEngine.TextEditingUtilities:DeleteWordForward() end
---@return boolean
function UnityEngine.TextEditingUtilities:Delete() end
---@return boolean
function UnityEngine.TextEditingUtilities:Backspace() end
---@return boolean
function UnityEngine.TextEditingUtilities:DeleteSelection() end
---@param replace string
function UnityEngine.TextEditingUtilities:ReplaceSelection(replace) end
---@param c System.Char
function UnityEngine.TextEditingUtilities:Insert(c) end
function UnityEngine.TextEditingUtilities:MoveSelectionToAltCursor() end
---@return boolean
function UnityEngine.TextEditingUtilities:CanPaste() end
---@return boolean
function UnityEngine.TextEditingUtilities:Cut() end
---@return boolean
function UnityEngine.TextEditingUtilities:Paste() end

---@class UnityEngine.TextEditor : System.Object
---@field keyboardOnScreen UnityEngine.TouchScreenKeyboard
---@field controlID number
---@field style UnityEngine.GUIStyle
---@field multiline boolean
---@field hasHorizontalCursorPos boolean
---@field isPasswordField boolean
---@field scrollOffset UnityEngine.Vector2
---@field graphicalCursorPos UnityEngine.Vector2
---@field graphicalSelectCursorPos UnityEngine.Vector2
---@field text string
---@field position UnityEngine.Rect
---@field cursorIndex number
---@field selectIndex number
---@field doubleClickSnapping UnityEngine.TextEditor.DblClickSnapping
---@field altCursorPosition number
---@field hasSelection boolean
---@field SelectedText string
UnityEngine.TextEditor = {}
---@alias CS.UnityEngine.TextEditor UnityEngine.TextEditor
CS.UnityEngine.TextEditor = UnityEngine.TextEditor

---@return UnityEngine.TextEditor
function UnityEngine.TextEditor.New() end
function UnityEngine.TextEditor:OnFocus() end
function UnityEngine.TextEditor:OnLostFocus() end
---@param e UnityEngine.Event
---@return boolean
function UnityEngine.TextEditor:HandleKeyEvent(e) end
---@return boolean
function UnityEngine.TextEditor:DeleteLineBack() end
---@return boolean
function UnityEngine.TextEditor:DeleteWordBack() end
---@return boolean
function UnityEngine.TextEditor:DeleteWordForward() end
---@return boolean
function UnityEngine.TextEditor:Delete() end
---@return boolean
function UnityEngine.TextEditor:CanPaste() end
---@return boolean
function UnityEngine.TextEditor:Backspace() end
function UnityEngine.TextEditor:SelectAll() end
function UnityEngine.TextEditor:SelectNone() end
---@return boolean
function UnityEngine.TextEditor:DeleteSelection() end
---@param replace string
function UnityEngine.TextEditor:ReplaceSelection(replace) end
---@param c System.Char
function UnityEngine.TextEditor:Insert(c) end
function UnityEngine.TextEditor:MoveSelectionToAltCursor() end
function UnityEngine.TextEditor:MoveRight() end
function UnityEngine.TextEditor:MoveLeft() end
function UnityEngine.TextEditor:MoveUp() end
function UnityEngine.TextEditor:MoveDown() end
function UnityEngine.TextEditor:MoveLineStart() end
function UnityEngine.TextEditor:MoveLineEnd() end
function UnityEngine.TextEditor:MoveGraphicalLineStart() end
function UnityEngine.TextEditor:MoveGraphicalLineEnd() end
function UnityEngine.TextEditor:MoveTextStart() end
function UnityEngine.TextEditor:MoveTextEnd() end
function UnityEngine.TextEditor:MoveParagraphForward() end
function UnityEngine.TextEditor:MoveParagraphBackward() end
---@param cursorPosition UnityEngine.Vector2
function UnityEngine.TextEditor:MoveCursorToPosition(cursorPosition) end
---@param cursorPosition UnityEngine.Vector2
function UnityEngine.TextEditor:MoveAltCursorToPosition(cursorPosition) end
---@param cursorPosition UnityEngine.Vector2
---@return boolean
function UnityEngine.TextEditor:IsOverSelection(cursorPosition) end
---@param cursorPosition UnityEngine.Vector2
function UnityEngine.TextEditor:SelectToPosition(cursorPosition) end
function UnityEngine.TextEditor:SelectLeft() end
function UnityEngine.TextEditor:SelectRight() end
function UnityEngine.TextEditor:SelectUp() end
function UnityEngine.TextEditor:SelectDown() end
function UnityEngine.TextEditor:SelectTextEnd() end
function UnityEngine.TextEditor:SelectTextStart() end
---@param on boolean
function UnityEngine.TextEditor:MouseDragSelectsWholeWords(on) end
---@param snapping UnityEngine.TextEditor.DblClickSnapping
function UnityEngine.TextEditor:DblClickSnap(snapping) end
function UnityEngine.TextEditor:MoveWordRight() end
function UnityEngine.TextEditor:MoveToStartOfNextWord() end
function UnityEngine.TextEditor:MoveToEndOfPreviousWord() end
function UnityEngine.TextEditor:SelectToStartOfNextWord() end
function UnityEngine.TextEditor:SelectToEndOfPreviousWord() end
---@param p number
---@return number
function UnityEngine.TextEditor:FindStartOfNextWord(p) end
function UnityEngine.TextEditor:MoveWordLeft() end
function UnityEngine.TextEditor:SelectWordRight() end
function UnityEngine.TextEditor:SelectWordLeft() end
function UnityEngine.TextEditor:ExpandSelectGraphicalLineStart() end
function UnityEngine.TextEditor:ExpandSelectGraphicalLineEnd() end
function UnityEngine.TextEditor:SelectGraphicalLineStart() end
function UnityEngine.TextEditor:SelectGraphicalLineEnd() end
function UnityEngine.TextEditor:SelectParagraphForward() end
function UnityEngine.TextEditor:SelectParagraphBackward() end
function UnityEngine.TextEditor:SelectCurrentWord() end
function UnityEngine.TextEditor:SelectCurrentParagraph() end
---@param evt UnityEngine.Event
function UnityEngine.TextEditor:UpdateScrollOffsetIfNeeded(evt) end
---@param newText string
function UnityEngine.TextEditor:DrawCursor(newText) end
function UnityEngine.TextEditor:SaveBackup() end
function UnityEngine.TextEditor:Undo() end
---@return boolean
function UnityEngine.TextEditor:Cut() end
function UnityEngine.TextEditor:Copy() end
---@return boolean
function UnityEngine.TextEditor:Paste() end
function UnityEngine.TextEditor:DetectFocusChange() end

---@class UnityEngine.TextEditor.DblClickSnapping
---@field WORDS UnityEngine.TextEditor.DblClickSnapping
---@field PARAGRAPHS UnityEngine.TextEditor.DblClickSnapping
UnityEngine.TextEditor.DblClickSnapping = {}
---@alias CS.UnityEngine.TextEditor.DblClickSnapping UnityEngine.TextEditor.DblClickSnapping
CS.UnityEngine.TextEditor.DblClickSnapping = UnityEngine.TextEditor.DblClickSnapping


---@class UnityEngine.TextEditor.CharacterType
---@field LetterLike UnityEngine.TextEditor.CharacterType
---@field Symbol UnityEngine.TextEditor.CharacterType
---@field Symbol2 UnityEngine.TextEditor.CharacterType
---@field WhiteSpace UnityEngine.TextEditor.CharacterType
UnityEngine.TextEditor.CharacterType = {}
---@alias CS.UnityEngine.TextEditor.CharacterType UnityEngine.TextEditor.CharacterType
CS.UnityEngine.TextEditor.CharacterType = UnityEngine.TextEditor.CharacterType


---@class UnityEngine.TextEditor.Direction
---@field Forward UnityEngine.TextEditor.Direction
---@field Backward UnityEngine.TextEditor.Direction
UnityEngine.TextEditor.Direction = {}
---@alias CS.UnityEngine.TextEditor.Direction UnityEngine.TextEditor.Direction
CS.UnityEngine.TextEditor.Direction = UnityEngine.TextEditor.Direction


---@class UnityEngine.TextEditor.TextEditOp
---@field MoveLeft UnityEngine.TextEditor.TextEditOp
---@field MoveRight UnityEngine.TextEditor.TextEditOp
---@field MoveUp UnityEngine.TextEditor.TextEditOp
---@field MoveDown UnityEngine.TextEditor.TextEditOp
---@field MoveLineStart UnityEngine.TextEditor.TextEditOp
---@field MoveLineEnd UnityEngine.TextEditor.TextEditOp
---@field MoveTextStart UnityEngine.TextEditor.TextEditOp
---@field MoveTextEnd UnityEngine.TextEditor.TextEditOp
---@field MovePageUp UnityEngine.TextEditor.TextEditOp
---@field MovePageDown UnityEngine.TextEditor.TextEditOp
---@field MoveGraphicalLineStart UnityEngine.TextEditor.TextEditOp
---@field MoveGraphicalLineEnd UnityEngine.TextEditor.TextEditOp
---@field MoveWordLeft UnityEngine.TextEditor.TextEditOp
---@field MoveWordRight UnityEngine.TextEditor.TextEditOp
---@field MoveParagraphForward UnityEngine.TextEditor.TextEditOp
---@field MoveParagraphBackward UnityEngine.TextEditor.TextEditOp
---@field MoveToStartOfNextWord UnityEngine.TextEditor.TextEditOp
---@field MoveToEndOfPreviousWord UnityEngine.TextEditor.TextEditOp
---@field SelectLeft UnityEngine.TextEditor.TextEditOp
---@field SelectRight UnityEngine.TextEditor.TextEditOp
---@field SelectUp UnityEngine.TextEditor.TextEditOp
---@field SelectDown UnityEngine.TextEditor.TextEditOp
---@field SelectTextStart UnityEngine.TextEditor.TextEditOp
---@field SelectTextEnd UnityEngine.TextEditor.TextEditOp
---@field SelectPageUp UnityEngine.TextEditor.TextEditOp
---@field SelectPageDown UnityEngine.TextEditor.TextEditOp
---@field ExpandSelectGraphicalLineStart UnityEngine.TextEditor.TextEditOp
---@field ExpandSelectGraphicalLineEnd UnityEngine.TextEditor.TextEditOp
---@field SelectGraphicalLineStart UnityEngine.TextEditor.TextEditOp
---@field SelectGraphicalLineEnd UnityEngine.TextEditor.TextEditOp
---@field SelectWordLeft UnityEngine.TextEditor.TextEditOp
---@field SelectWordRight UnityEngine.TextEditor.TextEditOp
---@field SelectToEndOfPreviousWord UnityEngine.TextEditor.TextEditOp
---@field SelectToStartOfNextWord UnityEngine.TextEditor.TextEditOp
---@field SelectParagraphBackward UnityEngine.TextEditor.TextEditOp
---@field SelectParagraphForward UnityEngine.TextEditor.TextEditOp
---@field Delete UnityEngine.TextEditor.TextEditOp
---@field Backspace UnityEngine.TextEditor.TextEditOp
---@field DeleteWordBack UnityEngine.TextEditor.TextEditOp
---@field DeleteWordForward UnityEngine.TextEditor.TextEditOp
---@field DeleteLineBack UnityEngine.TextEditor.TextEditOp
---@field Cut UnityEngine.TextEditor.TextEditOp
---@field Copy UnityEngine.TextEditor.TextEditOp
---@field Paste UnityEngine.TextEditor.TextEditOp
---@field SelectAll UnityEngine.TextEditor.TextEditOp
---@field SelectNone UnityEngine.TextEditor.TextEditOp
---@field ScrollStart UnityEngine.TextEditor.TextEditOp
---@field ScrollEnd UnityEngine.TextEditor.TextEditOp
---@field ScrollPageUp UnityEngine.TextEditor.TextEditOp
---@field ScrollPageDown UnityEngine.TextEditor.TextEditOp
UnityEngine.TextEditor.TextEditOp = {}
---@alias CS.UnityEngine.TextEditor.TextEditOp UnityEngine.TextEditor.TextEditOp
CS.UnityEngine.TextEditor.TextEditOp = UnityEngine.TextEditor.TextEditOp


---@class UnityEngine.TextSelectingUtilities : System.Object
---@field dblClickSnap UnityEngine.TextEditor.DblClickSnapping
---@field iAltCursorPos number
---@field hasHorizontalCursorPos boolean
---@field hasSelection boolean
---@field revealCursor boolean
---@field cursorIndex number
---@field selectIndex number
---@field selectedText string
UnityEngine.TextSelectingUtilities = {}
---@alias CS.UnityEngine.TextSelectingUtilities UnityEngine.TextSelectingUtilities
CS.UnityEngine.TextSelectingUtilities = UnityEngine.TextSelectingUtilities

---@param textHandle UnityEngine.TextCore.Text.TextHandle
---@return UnityEngine.TextSelectingUtilities
function UnityEngine.TextSelectingUtilities.New(textHandle) end
function UnityEngine.TextSelectingUtilities:ClearCursorPos() end
---@param selectAll boolean
function UnityEngine.TextSelectingUtilities:OnFocus(selectAll) end
function UnityEngine.TextSelectingUtilities:SelectAll() end
function UnityEngine.TextSelectingUtilities:SelectNone() end
function UnityEngine.TextSelectingUtilities:SelectLeft() end
function UnityEngine.TextSelectingUtilities:SelectRight() end
function UnityEngine.TextSelectingUtilities:SelectUp() end
function UnityEngine.TextSelectingUtilities:SelectDown() end
function UnityEngine.TextSelectingUtilities:SelectTextEnd() end
function UnityEngine.TextSelectingUtilities:SelectTextStart() end
function UnityEngine.TextSelectingUtilities:SelectToStartOfNextWord() end
function UnityEngine.TextSelectingUtilities:SelectToEndOfPreviousWord() end
function UnityEngine.TextSelectingUtilities:SelectWordRight() end
function UnityEngine.TextSelectingUtilities:SelectWordLeft() end
function UnityEngine.TextSelectingUtilities:SelectGraphicalLineStart() end
function UnityEngine.TextSelectingUtilities:SelectGraphicalLineEnd() end
function UnityEngine.TextSelectingUtilities:SelectParagraphForward() end
function UnityEngine.TextSelectingUtilities:SelectParagraphBackward() end
function UnityEngine.TextSelectingUtilities:SelectCurrentWord() end
function UnityEngine.TextSelectingUtilities:SelectCurrentParagraph() end
function UnityEngine.TextSelectingUtilities:MoveRight() end
function UnityEngine.TextSelectingUtilities:MoveLeft() end
function UnityEngine.TextSelectingUtilities:MoveUp() end
function UnityEngine.TextSelectingUtilities:MoveDown() end
function UnityEngine.TextSelectingUtilities:MoveLineStart() end
function UnityEngine.TextSelectingUtilities:MoveLineEnd() end
function UnityEngine.TextSelectingUtilities:MoveGraphicalLineStart() end
function UnityEngine.TextSelectingUtilities:MoveGraphicalLineEnd() end
function UnityEngine.TextSelectingUtilities:MoveTextStart() end
function UnityEngine.TextSelectingUtilities:MoveTextEnd() end
function UnityEngine.TextSelectingUtilities:MoveParagraphForward() end
function UnityEngine.TextSelectingUtilities:MoveParagraphBackward() end
function UnityEngine.TextSelectingUtilities:MoveWordRight() end
function UnityEngine.TextSelectingUtilities:MoveToStartOfNextWord() end
function UnityEngine.TextSelectingUtilities:MoveToEndOfPreviousWord() end
function UnityEngine.TextSelectingUtilities:MoveWordLeft() end
---@param on boolean
function UnityEngine.TextSelectingUtilities:MouseDragSelectsWholeWords(on) end
function UnityEngine.TextSelectingUtilities:ExpandSelectGraphicalLineStart() end
function UnityEngine.TextSelectingUtilities:ExpandSelectGraphicalLineEnd() end
---@param snapping UnityEngine.TextEditor.DblClickSnapping
function UnityEngine.TextSelectingUtilities:DblClickSnap(snapping) end
---@param cursorPosition UnityEngine.Vector2
function UnityEngine.TextSelectingUtilities:SelectToPosition(cursorPosition) end
---@param p number
---@return number
function UnityEngine.TextSelectingUtilities:FindStartOfNextWord(p) end
---@param p number
---@return number
function UnityEngine.TextSelectingUtilities:FindEndOfPreviousWord(p) end
---@param index number
---@return number
function UnityEngine.TextSelectingUtilities:PreviousCodePointIndex(index) end
---@param index number
---@return number
function UnityEngine.TextSelectingUtilities:NextCodePointIndex(index) end
function UnityEngine.TextSelectingUtilities:Copy() end

---@class UnityEngine.TextSelectingUtilities.CharacterType
---@field LetterLike UnityEngine.TextSelectingUtilities.CharacterType
---@field Symbol UnityEngine.TextSelectingUtilities.CharacterType
---@field Symbol2 UnityEngine.TextSelectingUtilities.CharacterType
---@field WhiteSpace UnityEngine.TextSelectingUtilities.CharacterType
---@field NewLine UnityEngine.TextSelectingUtilities.CharacterType
UnityEngine.TextSelectingUtilities.CharacterType = {}
---@alias CS.UnityEngine.TextSelectingUtilities.CharacterType UnityEngine.TextSelectingUtilities.CharacterType
CS.UnityEngine.TextSelectingUtilities.CharacterType = UnityEngine.TextSelectingUtilities.CharacterType


---@class UnityEngine.TextSelectingUtilities.Direction
---@field Forward UnityEngine.TextSelectingUtilities.Direction
---@field Backward UnityEngine.TextSelectingUtilities.Direction
UnityEngine.TextSelectingUtilities.Direction = {}
---@alias CS.UnityEngine.TextSelectingUtilities.Direction UnityEngine.TextSelectingUtilities.Direction
CS.UnityEngine.TextSelectingUtilities.Direction = UnityEngine.TextSelectingUtilities.Direction


---@class UnityEngine.ImageConversion : System.Object
---@field EnableLegacyPngGammaRuntimeLoadBehavior boolean
UnityEngine.ImageConversion = {}
---@alias CS.UnityEngine.ImageConversion UnityEngine.ImageConversion
CS.UnityEngine.ImageConversion = UnityEngine.ImageConversion

---@param tex UnityEngine.Texture2D
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeToTGA(tex) end
---@param tex UnityEngine.Texture2D
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeToPNG(tex) end
---@overload fun(tex: UnityEngine.Texture2D, quality: number) : System.Byte[]
---@param tex UnityEngine.Texture2D
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeToJPG(tex) end
---@overload fun(tex: UnityEngine.Texture2D, flags: UnityEngine.Texture2D.EXRFlags) : System.Byte[]
---@param tex UnityEngine.Texture2D
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeToEXR(tex) end
---@overload fun(tex: UnityEngine.Texture2D, data: System.Byte[], markNonReadable: boolean) : boolean
---@param tex UnityEngine.Texture2D
---@param data System.Byte[]
---@return boolean
function UnityEngine.ImageConversion.LoadImage(tex, data) end
---@param array System.Array
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param width number
---@param height number
---@param rowBytes number
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeArrayToTGA(array, format, width, height, rowBytes) end
---@param array System.Array
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param width number
---@param height number
---@param rowBytes number
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeArrayToPNG(array, format, width, height, rowBytes) end
---@param array System.Array
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param width number
---@param height number
---@param rowBytes number
---@param quality number
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeArrayToJPG(array, format, width, height, rowBytes, quality) end
---@param array System.Array
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param width number
---@param height number
---@param rowBytes number
---@param flags UnityEngine.Texture2D.EXRFlags
---@return System.Byte[]
function UnityEngine.ImageConversion.EncodeArrayToEXR(array, format, width, height, rowBytes, flags) end

---@class UnityEngineInternal.Input.NativeUpdateCallback : System.MulticastDelegate
UnityEngineInternal.Input.NativeUpdateCallback = {}
---@alias CS.UnityEngineInternal.Input.NativeUpdateCallback UnityEngineInternal.Input.NativeUpdateCallback
CS.UnityEngineInternal.Input.NativeUpdateCallback = UnityEngineInternal.Input.NativeUpdateCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngineInternal.Input.NativeUpdateCallback
function UnityEngineInternal.Input.NativeUpdateCallback.New(object, method) end
---@param updateType UnityEngineInternal.Input.NativeInputUpdateType
---@param buffer UnityEngineInternal.Input.NativeInputEventBuffer*
function UnityEngineInternal.Input.NativeUpdateCallback:Invoke(updateType, buffer) end
---@param updateType UnityEngineInternal.Input.NativeInputUpdateType
---@param buffer UnityEngineInternal.Input.NativeInputEventBuffer*
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngineInternal.Input.NativeUpdateCallback:BeginInvoke(updateType, buffer, callback, object) end
---@param result System.IAsyncResult
function UnityEngineInternal.Input.NativeUpdateCallback:EndInvoke(result) end

---@class UnityEngineInternal.Input.NativeInputEventType
---@field DeviceRemoved UnityEngineInternal.Input.NativeInputEventType
---@field DeviceConfigChanged UnityEngineInternal.Input.NativeInputEventType
---@field Text UnityEngineInternal.Input.NativeInputEventType
---@field State UnityEngineInternal.Input.NativeInputEventType
---@field Delta UnityEngineInternal.Input.NativeInputEventType
UnityEngineInternal.Input.NativeInputEventType = {}
---@alias CS.UnityEngineInternal.Input.NativeInputEventType UnityEngineInternal.Input.NativeInputEventType
CS.UnityEngineInternal.Input.NativeInputEventType = UnityEngineInternal.Input.NativeInputEventType


---@class UnityEngineInternal.Input.NativeInputEventBuffer : System.ValueType
---@field structSize number
---@field eventBuffer System.Void*
---@field eventCount number
---@field sizeInBytes number
---@field capacityInBytes number
UnityEngineInternal.Input.NativeInputEventBuffer = {}
---@alias CS.UnityEngineInternal.Input.NativeInputEventBuffer UnityEngineInternal.Input.NativeInputEventBuffer
CS.UnityEngineInternal.Input.NativeInputEventBuffer = UnityEngineInternal.Input.NativeInputEventBuffer


---@class UnityEngineInternal.Input.NativeInputEvent : System.ValueType
---@field structSize number
---@field type UnityEngineInternal.Input.NativeInputEventType
---@field sizeInBytes number
---@field deviceId number
---@field time number
---@field eventId number
UnityEngineInternal.Input.NativeInputEvent = {}
---@alias CS.UnityEngineInternal.Input.NativeInputEvent UnityEngineInternal.Input.NativeInputEvent
CS.UnityEngineInternal.Input.NativeInputEvent = UnityEngineInternal.Input.NativeInputEvent

---@param type UnityEngineInternal.Input.NativeInputEventType
---@param sizeInBytes number
---@param deviceId number
---@param time number
---@return UnityEngineInternal.Input.NativeInputEvent
function UnityEngineInternal.Input.NativeInputEvent.New(type, sizeInBytes, deviceId, time) end

---@class UnityEngineInternal.Input.NativeInputUpdateType
---@field Dynamic UnityEngineInternal.Input.NativeInputUpdateType
---@field Fixed UnityEngineInternal.Input.NativeInputUpdateType
---@field BeforeRender UnityEngineInternal.Input.NativeInputUpdateType
---@field Editor UnityEngineInternal.Input.NativeInputUpdateType
---@field IgnoreFocus UnityEngineInternal.Input.NativeInputUpdateType
UnityEngineInternal.Input.NativeInputUpdateType = {}
---@alias CS.UnityEngineInternal.Input.NativeInputUpdateType UnityEngineInternal.Input.NativeInputUpdateType
CS.UnityEngineInternal.Input.NativeInputUpdateType = UnityEngineInternal.Input.NativeInputUpdateType


---@class UnityEngineInternal.Input.NativeInputSystem : System.Object
---@field onUpdate UnityEngineInternal.Input.NativeUpdateCallback
---@field onBeforeUpdate System.Action
---@field onShouldRunUpdate System.Func
---@field onDeviceDiscovered System.Action
---@field currentTime number
---@field currentTimeOffsetToRealtimeSinceStartup number
UnityEngineInternal.Input.NativeInputSystem = {}
---@alias CS.UnityEngineInternal.Input.NativeInputSystem UnityEngineInternal.Input.NativeInputSystem
CS.UnityEngineInternal.Input.NativeInputSystem = UnityEngineInternal.Input.NativeInputSystem

---@return UnityEngineInternal.Input.NativeInputSystem
function UnityEngineInternal.Input.NativeInputSystem.New() end
---@return number
function UnityEngineInternal.Input.NativeInputSystem.AllocateDeviceId() end
---@param inputEvent System.IntPtr
function UnityEngineInternal.Input.NativeInputSystem.QueueInputEvent(inputEvent) end
---@param deviceId number
---@param code number
---@param data System.IntPtr
---@param sizeInBytes number
---@return number
function UnityEngineInternal.Input.NativeInputSystem.IOCTL(deviceId, code, data, sizeInBytes) end
---@param hertz number
function UnityEngineInternal.Input.NativeInputSystem.SetPollingFrequency(hertz) end
---@param updateType UnityEngineInternal.Input.NativeInputUpdateType
function UnityEngineInternal.Input.NativeInputSystem.Update(updateType) end

---@class UnityEngine.AndroidInput : System.Object
---@field touchCountSecondary number
---@field secondaryTouchEnabled boolean
---@field secondaryTouchWidth number
---@field secondaryTouchHeight number
UnityEngine.AndroidInput = {}
---@alias CS.UnityEngine.AndroidInput UnityEngine.AndroidInput
CS.UnityEngine.AndroidInput = UnityEngine.AndroidInput

---@param index number
---@return UnityEngine.Touch
function UnityEngine.AndroidInput.GetSecondaryTouch(index) end

---@class UnityEngine.TouchPhase
---@field Began UnityEngine.TouchPhase
---@field Moved UnityEngine.TouchPhase
---@field Stationary UnityEngine.TouchPhase
---@field Ended UnityEngine.TouchPhase
---@field Canceled UnityEngine.TouchPhase
UnityEngine.TouchPhase = {}
---@alias CS.UnityEngine.TouchPhase UnityEngine.TouchPhase
CS.UnityEngine.TouchPhase = UnityEngine.TouchPhase


---@class UnityEngine.IMECompositionMode
---@field Auto UnityEngine.IMECompositionMode
---@field On UnityEngine.IMECompositionMode
---@field Off UnityEngine.IMECompositionMode
UnityEngine.IMECompositionMode = {}
---@alias CS.UnityEngine.IMECompositionMode UnityEngine.IMECompositionMode
CS.UnityEngine.IMECompositionMode = UnityEngine.IMECompositionMode


---@class UnityEngine.TouchType
---@field Direct UnityEngine.TouchType
---@field Indirect UnityEngine.TouchType
---@field Stylus UnityEngine.TouchType
UnityEngine.TouchType = {}
---@alias CS.UnityEngine.TouchType UnityEngine.TouchType
CS.UnityEngine.TouchType = UnityEngine.TouchType


---@class UnityEngine.Touch : System.ValueType
---@field fingerId number
---@field position UnityEngine.Vector2
---@field rawPosition UnityEngine.Vector2
---@field deltaPosition UnityEngine.Vector2
---@field deltaTime number
---@field tapCount number
---@field phase UnityEngine.TouchPhase
---@field pressure number
---@field maximumPossiblePressure number
---@field type UnityEngine.TouchType
---@field altitudeAngle number
---@field azimuthAngle number
---@field radius number
---@field radiusVariance number
UnityEngine.Touch = {}
---@alias CS.UnityEngine.Touch UnityEngine.Touch
CS.UnityEngine.Touch = UnityEngine.Touch


---@class UnityEngine.PenStatus
---@field None UnityEngine.PenStatus
---@field Contact UnityEngine.PenStatus
---@field Barrel UnityEngine.PenStatus
---@field Inverted UnityEngine.PenStatus
---@field Eraser UnityEngine.PenStatus
UnityEngine.PenStatus = {}
---@alias CS.UnityEngine.PenStatus UnityEngine.PenStatus
CS.UnityEngine.PenStatus = UnityEngine.PenStatus


---@class UnityEngine.PenEventType
---@field NoContact UnityEngine.PenEventType
---@field PenDown UnityEngine.PenEventType
---@field PenUp UnityEngine.PenEventType
UnityEngine.PenEventType = {}
---@alias CS.UnityEngine.PenEventType UnityEngine.PenEventType
CS.UnityEngine.PenEventType = UnityEngine.PenEventType


---@class UnityEngine.PenData : System.ValueType
---@field position UnityEngine.Vector2
---@field tilt UnityEngine.Vector2
---@field penStatus UnityEngine.PenStatus
---@field twist number
---@field pressure number
---@field contactType UnityEngine.PenEventType
---@field deltaPos UnityEngine.Vector2
UnityEngine.PenData = {}
---@alias CS.UnityEngine.PenData UnityEngine.PenData
CS.UnityEngine.PenData = UnityEngine.PenData


---@class UnityEngine.DeviceOrientation
---@field Unknown UnityEngine.DeviceOrientation
---@field Portrait UnityEngine.DeviceOrientation
---@field PortraitUpsideDown UnityEngine.DeviceOrientation
---@field LandscapeLeft UnityEngine.DeviceOrientation
---@field LandscapeRight UnityEngine.DeviceOrientation
---@field FaceUp UnityEngine.DeviceOrientation
---@field FaceDown UnityEngine.DeviceOrientation
UnityEngine.DeviceOrientation = {}
---@alias CS.UnityEngine.DeviceOrientation UnityEngine.DeviceOrientation
CS.UnityEngine.DeviceOrientation = UnityEngine.DeviceOrientation


---@class UnityEngine.AccelerationEvent : System.ValueType
---@field acceleration UnityEngine.Vector3
---@field deltaTime number
UnityEngine.AccelerationEvent = {}
---@alias CS.UnityEngine.AccelerationEvent UnityEngine.AccelerationEvent
CS.UnityEngine.AccelerationEvent = UnityEngine.AccelerationEvent


---@class UnityEngine.Gyroscope : System.Object
---@field rotationRate UnityEngine.Vector3
---@field rotationRateUnbiased UnityEngine.Vector3
---@field gravity UnityEngine.Vector3
---@field userAcceleration UnityEngine.Vector3
---@field attitude UnityEngine.Quaternion
---@field enabled boolean
---@field updateInterval number
UnityEngine.Gyroscope = {}
---@alias CS.UnityEngine.Gyroscope UnityEngine.Gyroscope
CS.UnityEngine.Gyroscope = UnityEngine.Gyroscope


---@class UnityEngine.LocationInfo : System.ValueType
---@field latitude number
---@field longitude number
---@field altitude number
---@field horizontalAccuracy number
---@field verticalAccuracy number
---@field timestamp number
UnityEngine.LocationInfo = {}
---@alias CS.UnityEngine.LocationInfo UnityEngine.LocationInfo
CS.UnityEngine.LocationInfo = UnityEngine.LocationInfo


---@class UnityEngine.LocationServiceStatus
---@field Stopped UnityEngine.LocationServiceStatus
---@field Initializing UnityEngine.LocationServiceStatus
---@field Running UnityEngine.LocationServiceStatus
---@field Failed UnityEngine.LocationServiceStatus
UnityEngine.LocationServiceStatus = {}
---@alias CS.UnityEngine.LocationServiceStatus UnityEngine.LocationServiceStatus
CS.UnityEngine.LocationServiceStatus = UnityEngine.LocationServiceStatus


---@class UnityEngine.LocationService : System.Object
---@field isEnabledByUser boolean
---@field status UnityEngine.LocationServiceStatus
---@field lastData UnityEngine.LocationInfo
UnityEngine.LocationService = {}
---@alias CS.UnityEngine.LocationService UnityEngine.LocationService
CS.UnityEngine.LocationService = UnityEngine.LocationService

---@return UnityEngine.LocationService
function UnityEngine.LocationService.New() end
---@overload fun(self: UnityEngine.LocationService, desiredAccuracyInMeters: number, updateDistanceInMeters: number)
---@overload fun(self: UnityEngine.LocationService, desiredAccuracyInMeters: number)
function UnityEngine.LocationService:Start() end
function UnityEngine.LocationService:Stop() end

---@class UnityEngine.LocationService.HeadingInfo : System.ValueType
---@field magneticHeading number
---@field trueHeading number
---@field headingAccuracy number
---@field raw UnityEngine.Vector3
---@field timestamp number
UnityEngine.LocationService.HeadingInfo = {}
---@alias CS.UnityEngine.LocationService.HeadingInfo UnityEngine.LocationService.HeadingInfo
CS.UnityEngine.LocationService.HeadingInfo = UnityEngine.LocationService.HeadingInfo


---@class UnityEngine.Compass : System.Object
---@field magneticHeading number
---@field trueHeading number
---@field headingAccuracy number
---@field rawVector UnityEngine.Vector3
---@field timestamp number
---@field enabled boolean
UnityEngine.Compass = {}
---@alias CS.UnityEngine.Compass UnityEngine.Compass
CS.UnityEngine.Compass = UnityEngine.Compass

---@return UnityEngine.Compass
function UnityEngine.Compass.New() end

---@class UnityEngine.CameraRaycastHelper : System.Object
UnityEngine.CameraRaycastHelper = {}
---@alias CS.UnityEngine.CameraRaycastHelper UnityEngine.CameraRaycastHelper
CS.UnityEngine.CameraRaycastHelper = UnityEngine.CameraRaycastHelper

---@return UnityEngine.CameraRaycastHelper
function UnityEngine.CameraRaycastHelper.New() end

---@class UnityEngine.Input : System.Object
---@field simulateMouseWithTouches boolean
---@field anyKey boolean
---@field anyKeyDown boolean
---@field inputString string
---@field mousePosition UnityEngine.Vector3
---@field mouseScrollDelta UnityEngine.Vector2
---@field imeCompositionMode UnityEngine.IMECompositionMode
---@field compositionString string
---@field imeIsSelected boolean
---@field compositionCursorPos UnityEngine.Vector2
---@field mousePresent boolean
---@field penEventCount number
---@field touchCount number
---@field touchPressureSupported boolean
---@field stylusTouchSupported boolean
---@field touchSupported boolean
---@field multiTouchEnabled boolean
---@field deviceOrientation UnityEngine.DeviceOrientation
---@field acceleration UnityEngine.Vector3
---@field compensateSensors boolean
---@field accelerationEventCount number
---@field backButtonLeavesApp boolean
---@field location UnityEngine.LocationService
---@field compass UnityEngine.Compass
---@field gyro UnityEngine.Gyroscope
---@field touches UnityEngine.Touch[]
---@field accelerationEvents UnityEngine.AccelerationEvent[]
UnityEngine.Input = {}
---@alias CS.UnityEngine.Input UnityEngine.Input
CS.UnityEngine.Input = UnityEngine.Input

---@return UnityEngine.Input
function UnityEngine.Input.New() end
---@param axisName string
---@return number
function UnityEngine.Input.GetAxis(axisName) end
---@param axisName string
---@return number
function UnityEngine.Input.GetAxisRaw(axisName) end
---@param buttonName string
---@return boolean
function UnityEngine.Input.GetButton(buttonName) end
---@param buttonName string
---@return boolean
function UnityEngine.Input.GetButtonDown(buttonName) end
---@param buttonName string
---@return boolean
function UnityEngine.Input.GetButtonUp(buttonName) end
---@param button number
---@return boolean
function UnityEngine.Input.GetMouseButton(button) end
---@param button number
---@return boolean
function UnityEngine.Input.GetMouseButtonDown(button) end
---@param button number
---@return boolean
function UnityEngine.Input.GetMouseButtonUp(button) end
function UnityEngine.Input.ResetInputAxes() end
---@param joystickName string
---@return boolean
function UnityEngine.Input.IsJoystickPreconfigured(joystickName) end
---@return System.String[]
function UnityEngine.Input.GetJoystickNames() end
---@param index number
---@return UnityEngine.Touch
function UnityEngine.Input.GetTouch(index) end
---@param index number
---@return UnityEngine.PenData
function UnityEngine.Input.GetPenEvent(index) end
---@return UnityEngine.PenData
function UnityEngine.Input.GetLastPenContactEvent() end
function UnityEngine.Input.ResetPenEvents() end
function UnityEngine.Input.ClearLastPenContactEvent() end
---@param index number
---@return UnityEngine.AccelerationEvent
function UnityEngine.Input.GetAccelerationEvent(index) end
---@overload fun(key: UnityEngine.KeyCode) : boolean
---@param name string
---@return boolean
function UnityEngine.Input.GetKey(name) end
---@overload fun(key: UnityEngine.KeyCode) : boolean
---@param name string
---@return boolean
function UnityEngine.Input.GetKeyUp(name) end
---@overload fun(key: UnityEngine.KeyCode) : boolean
---@param name string
---@return boolean
function UnityEngine.Input.GetKeyDown(name) end

---@class UnityEngine.SendMouseEvents : System.Object
---@field s_GetMouseState System.Func
UnityEngine.SendMouseEvents = {}
---@alias CS.UnityEngine.SendMouseEvents UnityEngine.SendMouseEvents
CS.UnityEngine.SendMouseEvents = UnityEngine.SendMouseEvents

---@return UnityEngine.SendMouseEvents
function UnityEngine.SendMouseEvents.New() end

---@class UnityEngine.SendMouseEvents.HitInfo : System.ValueType
---@field target UnityEngine.GameObject
---@field camera UnityEngine.Camera
UnityEngine.SendMouseEvents.HitInfo = {}
---@alias CS.UnityEngine.SendMouseEvents.HitInfo UnityEngine.SendMouseEvents.HitInfo
CS.UnityEngine.SendMouseEvents.HitInfo = UnityEngine.SendMouseEvents.HitInfo

---@param lhs UnityEngine.SendMouseEvents.HitInfo
---@param rhs UnityEngine.SendMouseEvents.HitInfo
---@return boolean
function UnityEngine.SendMouseEvents.HitInfo.Compare(lhs, rhs) end
---@param name string
function UnityEngine.SendMouseEvents.HitInfo:SendMessage(name) end

---@class UnityEngine.SendMouseEvents.LeftMouseButtonState
---@field NotPressed UnityEngine.SendMouseEvents.LeftMouseButtonState
---@field Pressed UnityEngine.SendMouseEvents.LeftMouseButtonState
---@field PressedThisFrame UnityEngine.SendMouseEvents.LeftMouseButtonState
UnityEngine.SendMouseEvents.LeftMouseButtonState = {}
---@alias CS.UnityEngine.SendMouseEvents.LeftMouseButtonState UnityEngine.SendMouseEvents.LeftMouseButtonState
CS.UnityEngine.SendMouseEvents.LeftMouseButtonState = UnityEngine.SendMouseEvents.LeftMouseButtonState


---@class UnityEngine.Internal.InputUnsafeUtility : System.Object
UnityEngine.Internal.InputUnsafeUtility = {}
---@alias CS.UnityEngine.Internal.InputUnsafeUtility UnityEngine.Internal.InputUnsafeUtility
CS.UnityEngine.Internal.InputUnsafeUtility = UnityEngine.Internal.InputUnsafeUtility


---@class UnityEngine.JsonUtility : System.Object
UnityEngine.JsonUtility = {}
---@alias CS.UnityEngine.JsonUtility UnityEngine.JsonUtility
CS.UnityEngine.JsonUtility = UnityEngine.JsonUtility

---@overload fun(obj: System.Object) : string
---@param obj System.Object
---@param prettyPrint boolean
---@return string
function UnityEngine.JsonUtility.ToJson(obj, prettyPrint) end
---@param json string
---@param type System.Type
---@return System.Object
function UnityEngine.JsonUtility.FromJson(json, type) end
---@param json string
---@param objectToOverwrite System.Object
function UnityEngine.JsonUtility.FromJsonOverwrite(json, objectToOverwrite) end

---@class UnityEngine.LocalizationAsset : UnityEngine.Object
---@field localeIsoCode string
---@field isEditorAsset boolean
UnityEngine.LocalizationAsset = {}
---@alias CS.UnityEngine.LocalizationAsset UnityEngine.LocalizationAsset
CS.UnityEngine.LocalizationAsset = UnityEngine.LocalizationAsset

---@return UnityEngine.LocalizationAsset
function UnityEngine.LocalizationAsset.New() end
---@param original string
---@param localized string
function UnityEngine.LocalizationAsset:SetLocalizedString(original, localized) end
---@param original string
---@return string
function UnityEngine.LocalizationAsset:GetLocalizedString(original) end

---@class UnityEngine.NVIDIA.NVUnityPlugin : System.Object
UnityEngine.NVIDIA.NVUnityPlugin = {}
---@alias CS.UnityEngine.NVIDIA.NVUnityPlugin UnityEngine.NVIDIA.NVUnityPlugin
CS.UnityEngine.NVIDIA.NVUnityPlugin = UnityEngine.NVIDIA.NVUnityPlugin

---@return boolean
function UnityEngine.NVIDIA.NVUnityPlugin.Load() end
---@return boolean
function UnityEngine.NVIDIA.NVUnityPlugin.IsLoaded() end

---@class UnityEngine.NVIDIA.DLSSFeatureFlags
---@field None UnityEngine.NVIDIA.DLSSFeatureFlags
---@field IsHDR UnityEngine.NVIDIA.DLSSFeatureFlags
---@field MVLowRes UnityEngine.NVIDIA.DLSSFeatureFlags
---@field MVJittered UnityEngine.NVIDIA.DLSSFeatureFlags
---@field DepthInverted UnityEngine.NVIDIA.DLSSFeatureFlags
---@field DoSharpening UnityEngine.NVIDIA.DLSSFeatureFlags
UnityEngine.NVIDIA.DLSSFeatureFlags = {}
---@alias CS.UnityEngine.NVIDIA.DLSSFeatureFlags UnityEngine.NVIDIA.DLSSFeatureFlags
CS.UnityEngine.NVIDIA.DLSSFeatureFlags = UnityEngine.NVIDIA.DLSSFeatureFlags


---@class UnityEngine.NVIDIA.DLSSQuality
---@field MaximumQuality UnityEngine.NVIDIA.DLSSQuality
---@field Balanced UnityEngine.NVIDIA.DLSSQuality
---@field MaximumPerformance UnityEngine.NVIDIA.DLSSQuality
---@field UltraPerformance UnityEngine.NVIDIA.DLSSQuality
UnityEngine.NVIDIA.DLSSQuality = {}
---@alias CS.UnityEngine.NVIDIA.DLSSQuality UnityEngine.NVIDIA.DLSSQuality
CS.UnityEngine.NVIDIA.DLSSQuality = UnityEngine.NVIDIA.DLSSQuality


---@class UnityEngine.NVIDIA.InitDeviceCmdData : System.ValueType
---@field projectId System.IntPtr
---@field engineVersion System.IntPtr
---@field appDir System.IntPtr
UnityEngine.NVIDIA.InitDeviceCmdData = {}
---@alias CS.UnityEngine.NVIDIA.InitDeviceCmdData UnityEngine.NVIDIA.InitDeviceCmdData
CS.UnityEngine.NVIDIA.InitDeviceCmdData = UnityEngine.NVIDIA.InitDeviceCmdData


---@class UnityEngine.NVIDIA.DLSSCommandInitializationData : System.ValueType
---@field inputRTWidth number
---@field inputRTHeight number
---@field outputRTWidth number
---@field outputRTHeight number
---@field quality UnityEngine.NVIDIA.DLSSQuality
---@field featureFlags UnityEngine.NVIDIA.DLSSFeatureFlags
UnityEngine.NVIDIA.DLSSCommandInitializationData = {}
---@alias CS.UnityEngine.NVIDIA.DLSSCommandInitializationData UnityEngine.NVIDIA.DLSSCommandInitializationData
CS.UnityEngine.NVIDIA.DLSSCommandInitializationData = UnityEngine.NVIDIA.DLSSCommandInitializationData

---@param flag UnityEngine.NVIDIA.DLSSFeatureFlags
---@param value boolean
function UnityEngine.NVIDIA.DLSSCommandInitializationData:SetFlag(flag, value) end
---@param flag UnityEngine.NVIDIA.DLSSFeatureFlags
---@return boolean
function UnityEngine.NVIDIA.DLSSCommandInitializationData:GetFlag(flag) end

---@class UnityEngine.NVIDIA.DLSSTextureTable : System.ValueType
---@field colorInput UnityEngine.Texture
---@field colorOutput UnityEngine.Texture
---@field depth UnityEngine.Texture
---@field motionVectors UnityEngine.Texture
---@field transparencyMask UnityEngine.Texture
---@field exposureTexture UnityEngine.Texture
---@field biasColorMask UnityEngine.Texture
UnityEngine.NVIDIA.DLSSTextureTable = {}
---@alias CS.UnityEngine.NVIDIA.DLSSTextureTable UnityEngine.NVIDIA.DLSSTextureTable
CS.UnityEngine.NVIDIA.DLSSTextureTable = UnityEngine.NVIDIA.DLSSTextureTable


---@class UnityEngine.NVIDIA.DLSSCommandExecutionData : System.ValueType
---@field reset number
---@field sharpness number
---@field mvScaleX number
---@field mvScaleY number
---@field jitterOffsetX number
---@field jitterOffsetY number
---@field preExposure number
---@field subrectOffsetX number
---@field subrectOffsetY number
---@field subrectWidth number
---@field subrectHeight number
---@field invertXAxis number
---@field invertYAxis number
UnityEngine.NVIDIA.DLSSCommandExecutionData = {}
---@alias CS.UnityEngine.NVIDIA.DLSSCommandExecutionData UnityEngine.NVIDIA.DLSSCommandExecutionData
CS.UnityEngine.NVIDIA.DLSSCommandExecutionData = UnityEngine.NVIDIA.DLSSCommandExecutionData


---@class UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
---@field ColorInput UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
---@field ColorOutput UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
---@field Depth UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
---@field MotionVectors UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
---@field TransparencyMask UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
---@field ExposureTexture UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
---@field BiasColorMask UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures = {}
---@alias CS.UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures
CS.UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures = UnityEngine.NVIDIA.DLSSCommandExecutionData.Textures


---@class UnityEngine.NVIDIA.OptimalDLSSSettingsData : System.ValueType
---@field outRenderWidth number
---@field outRenderHeight number
---@field sharpness number
---@field maxWidth number
---@field maxHeight number
---@field minWidth number
---@field minHeight number
UnityEngine.NVIDIA.OptimalDLSSSettingsData = {}
---@alias CS.UnityEngine.NVIDIA.OptimalDLSSSettingsData UnityEngine.NVIDIA.OptimalDLSSSettingsData
CS.UnityEngine.NVIDIA.OptimalDLSSSettingsData = UnityEngine.NVIDIA.OptimalDLSSSettingsData


---@class UnityEngine.NVIDIA.DLSSDebugFeatureInfos : System.ValueType
---@field validFeature boolean
---@field featureSlot number
---@field execData UnityEngine.NVIDIA.DLSSCommandExecutionData
---@field initData UnityEngine.NVIDIA.DLSSCommandInitializationData
UnityEngine.NVIDIA.DLSSDebugFeatureInfos = {}
---@alias CS.UnityEngine.NVIDIA.DLSSDebugFeatureInfos UnityEngine.NVIDIA.DLSSDebugFeatureInfos
CS.UnityEngine.NVIDIA.DLSSDebugFeatureInfos = UnityEngine.NVIDIA.DLSSDebugFeatureInfos


---@class UnityEngine.NVIDIA.GraphicsDeviceDebugInfo : System.ValueType
---@field NVDeviceVersion number
---@field NGXVersion number
---@field dlssInfos UnityEngine.NVIDIA.DLSSDebugFeatureInfos*
---@field dlssInfosCount number
UnityEngine.NVIDIA.GraphicsDeviceDebugInfo = {}
---@alias CS.UnityEngine.NVIDIA.GraphicsDeviceDebugInfo UnityEngine.NVIDIA.GraphicsDeviceDebugInfo
CS.UnityEngine.NVIDIA.GraphicsDeviceDebugInfo = UnityEngine.NVIDIA.GraphicsDeviceDebugInfo


---@class UnityEngine.NVIDIA.NativeData : System.Object
---@field Value T
---@field Ptr System.IntPtr
UnityEngine.NVIDIA.NativeData = {}
---@alias CS.UnityEngine.NVIDIA.NativeData UnityEngine.NVIDIA.NativeData
CS.UnityEngine.NVIDIA.NativeData = UnityEngine.NVIDIA.NativeData

---@return UnityEngine.NVIDIA.NativeData
function UnityEngine.NVIDIA.NativeData.New() end
function UnityEngine.NVIDIA.NativeData:Dispose() end

---@class UnityEngine.NVIDIA.NativeStr : System.Object
---@field Str string
---@field Ptr System.IntPtr
UnityEngine.NVIDIA.NativeStr = {}
---@alias CS.UnityEngine.NVIDIA.NativeStr UnityEngine.NVIDIA.NativeStr
CS.UnityEngine.NVIDIA.NativeStr = UnityEngine.NVIDIA.NativeStr

---@return UnityEngine.NVIDIA.NativeStr
function UnityEngine.NVIDIA.NativeStr.New() end
function UnityEngine.NVIDIA.NativeStr:Dispose() end

---@class UnityEngine.NVIDIA.InitDeviceContext : System.Object
UnityEngine.NVIDIA.InitDeviceContext = {}
---@alias CS.UnityEngine.NVIDIA.InitDeviceContext UnityEngine.NVIDIA.InitDeviceContext
CS.UnityEngine.NVIDIA.InitDeviceContext = UnityEngine.NVIDIA.InitDeviceContext

---@param projectId string
---@param engineVersion string
---@param appDir string
---@return UnityEngine.NVIDIA.InitDeviceContext
function UnityEngine.NVIDIA.InitDeviceContext.New(projectId, engineVersion, appDir) end

---@class UnityEngine.NVIDIA.DLSSContext : System.Object
---@field initData UnityEngine.NVIDIA.DLSSCommandInitializationData&
---@field executeData UnityEngine.NVIDIA.DLSSCommandExecutionData&
UnityEngine.NVIDIA.DLSSContext = {}
---@alias CS.UnityEngine.NVIDIA.DLSSContext UnityEngine.NVIDIA.DLSSContext
CS.UnityEngine.NVIDIA.DLSSContext = UnityEngine.NVIDIA.DLSSContext


---@class UnityEngine.NVIDIA.GraphicsDeviceDebugView : System.Object
---@field deviceVersion number
---@field ngxVersion number
---@field dlssFeatureInfos System.Collections.Generic.IEnumerable
UnityEngine.NVIDIA.GraphicsDeviceDebugView = {}
---@alias CS.UnityEngine.NVIDIA.GraphicsDeviceDebugView UnityEngine.NVIDIA.GraphicsDeviceDebugView
CS.UnityEngine.NVIDIA.GraphicsDeviceDebugView = UnityEngine.NVIDIA.GraphicsDeviceDebugView


---@class UnityEngine.NVIDIA.GraphicsDeviceFeature
---@field DLSS UnityEngine.NVIDIA.GraphicsDeviceFeature
UnityEngine.NVIDIA.GraphicsDeviceFeature = {}
---@alias CS.UnityEngine.NVIDIA.GraphicsDeviceFeature UnityEngine.NVIDIA.GraphicsDeviceFeature
CS.UnityEngine.NVIDIA.GraphicsDeviceFeature = UnityEngine.NVIDIA.GraphicsDeviceFeature


---@class UnityEngine.NVIDIA.PluginEvent
---@field DestroyFeature UnityEngine.NVIDIA.PluginEvent
---@field DLSSExecute UnityEngine.NVIDIA.PluginEvent
---@field DLSSInit UnityEngine.NVIDIA.PluginEvent
UnityEngine.NVIDIA.PluginEvent = {}
---@alias CS.UnityEngine.NVIDIA.PluginEvent UnityEngine.NVIDIA.PluginEvent
CS.UnityEngine.NVIDIA.PluginEvent = UnityEngine.NVIDIA.PluginEvent


---@class UnityEngine.NVIDIA.GraphicsDevice : System.Object
---@field device UnityEngine.NVIDIA.GraphicsDevice
---@field version number
UnityEngine.NVIDIA.GraphicsDevice = {}
---@alias CS.UnityEngine.NVIDIA.GraphicsDevice UnityEngine.NVIDIA.GraphicsDevice
CS.UnityEngine.NVIDIA.GraphicsDevice = UnityEngine.NVIDIA.GraphicsDevice

---@overload fun() : UnityEngine.NVIDIA.GraphicsDevice
---@overload fun(projectID: string) : UnityEngine.NVIDIA.GraphicsDevice
---@param projectID string
---@param appDir string
---@return UnityEngine.NVIDIA.GraphicsDevice
function UnityEngine.NVIDIA.GraphicsDevice.CreateGraphicsDevice(projectID, appDir) end
---@param featureID UnityEngine.NVIDIA.GraphicsDeviceFeature
---@return boolean
function UnityEngine.NVIDIA.GraphicsDevice:IsFeatureAvailable(featureID) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_initSettings UnityEngine.NVIDIA.DLSSCommandInitializationData
---@return UnityEngine.NVIDIA.DLSSContext,UnityEngine.NVIDIA.DLSSCommandInitializationData
function UnityEngine.NVIDIA.GraphicsDevice:CreateFeature(cmd, ref_initSettings) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param dlssContext UnityEngine.NVIDIA.DLSSContext
function UnityEngine.NVIDIA.GraphicsDevice:DestroyFeature(cmd, dlssContext) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param dlssContext UnityEngine.NVIDIA.DLSSContext
---@param ref_textures UnityEngine.NVIDIA.DLSSTextureTable
---@return ,UnityEngine.NVIDIA.DLSSTextureTable
function UnityEngine.NVIDIA.GraphicsDevice:ExecuteDLSS(cmd, dlssContext, ref_textures) end
---@param targetWidth number
---@param targetHeight number
---@param quality UnityEngine.NVIDIA.DLSSQuality
---@param out_optimalSettings UnityEngine.NVIDIA.OptimalDLSSSettingsData
---@return boolean,UnityEngine.NVIDIA.OptimalDLSSSettingsData
function UnityEngine.NVIDIA.GraphicsDevice:GetOptimalSettings(targetWidth, targetHeight, quality, out_optimalSettings) end
---@return UnityEngine.NVIDIA.GraphicsDeviceDebugView
function UnityEngine.NVIDIA.GraphicsDevice:CreateDebugView() end
---@param debugView UnityEngine.NVIDIA.GraphicsDeviceDebugView
function UnityEngine.NVIDIA.GraphicsDevice:UpdateDebugView(debugView) end
---@param debugView UnityEngine.NVIDIA.GraphicsDeviceDebugView
function UnityEngine.NVIDIA.GraphicsDevice:DeleteDebugView(debugView) end

---@class UnityEngine.ParticleSystemEmissionType
---@field Time UnityEngine.ParticleSystemEmissionType
---@field Distance UnityEngine.ParticleSystemEmissionType
UnityEngine.ParticleSystemEmissionType = {}
---@alias CS.UnityEngine.ParticleSystemEmissionType UnityEngine.ParticleSystemEmissionType
CS.UnityEngine.ParticleSystemEmissionType = UnityEngine.ParticleSystemEmissionType


---@class UnityEngine.ParticleSystem : UnityEngine.Component
---@field isPlaying boolean
---@field isEmitting boolean
---@field isStopped boolean
---@field isPaused boolean
---@field particleCount number
---@field time number
---@field totalTime number
---@field randomSeed number
---@field useAutoRandomSeed boolean
---@field proceduralSimulationSupported boolean
---@field has3DParticleRotations boolean
---@field hasNonUniformParticleSizes boolean
---@field main UnityEngine.ParticleSystem.MainModule
---@field emission UnityEngine.ParticleSystem.EmissionModule
---@field shape UnityEngine.ParticleSystem.ShapeModule
---@field velocityOverLifetime UnityEngine.ParticleSystem.VelocityOverLifetimeModule
---@field limitVelocityOverLifetime UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule
---@field inheritVelocity UnityEngine.ParticleSystem.InheritVelocityModule
---@field lifetimeByEmitterSpeed UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule
---@field forceOverLifetime UnityEngine.ParticleSystem.ForceOverLifetimeModule
---@field colorOverLifetime UnityEngine.ParticleSystem.ColorOverLifetimeModule
---@field colorBySpeed UnityEngine.ParticleSystem.ColorBySpeedModule
---@field sizeOverLifetime UnityEngine.ParticleSystem.SizeOverLifetimeModule
---@field sizeBySpeed UnityEngine.ParticleSystem.SizeBySpeedModule
---@field rotationOverLifetime UnityEngine.ParticleSystem.RotationOverLifetimeModule
---@field rotationBySpeed UnityEngine.ParticleSystem.RotationBySpeedModule
---@field externalForces UnityEngine.ParticleSystem.ExternalForcesModule
---@field noise UnityEngine.ParticleSystem.NoiseModule
---@field collision UnityEngine.ParticleSystem.CollisionModule
---@field trigger UnityEngine.ParticleSystem.TriggerModule
---@field subEmitters UnityEngine.ParticleSystem.SubEmittersModule
---@field textureSheetAnimation UnityEngine.ParticleSystem.TextureSheetAnimationModule
---@field lights UnityEngine.ParticleSystem.LightsModule
---@field trails UnityEngine.ParticleSystem.TrailModule
---@field customData UnityEngine.ParticleSystem.CustomDataModule
UnityEngine.ParticleSystem = {}
---@alias CS.UnityEngine.ParticleSystem UnityEngine.ParticleSystem
CS.UnityEngine.ParticleSystem = UnityEngine.ParticleSystem

---@return UnityEngine.ParticleSystem
function UnityEngine.ParticleSystem.New() end
function UnityEngine.ParticleSystem.ResetPreMappedBufferMemory() end
---@param vertexBuffersCount number
---@param indexBuffersCount number
function UnityEngine.ParticleSystem.SetMaximumPreMappedBufferCounts(vertexBuffersCount, indexBuffersCount) end
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: UnityEngine.ParticleSystem.Particle, size: number, offset: number) : UnityEngine.ParticleSystem.Particle
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: UnityEngine.ParticleSystem.Particle, size: number) : UnityEngine.ParticleSystem.Particle
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: UnityEngine.ParticleSystem.Particle) : UnityEngine.ParticleSystem.Particle
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: NullType, size: number, offset: number) : NullType
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: NullType, size: number) : NullType
---@param out_particles NullType
---@return ,NullType
function UnityEngine.ParticleSystem:SetParticles(out_particles) end
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: UnityEngine.ParticleSystem.Particle, size: number, offset: number) : number, UnityEngine.ParticleSystem.Particle
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: UnityEngine.ParticleSystem.Particle, size: number) : number, UnityEngine.ParticleSystem.Particle
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: UnityEngine.ParticleSystem.Particle) : number, UnityEngine.ParticleSystem.Particle
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: NullType, size: number, offset: number) : number, NullType
---@overload fun(self: UnityEngine.ParticleSystem, out_particles: NullType, size: number) : number, NullType
---@param out_particles NullType
---@return number,NullType
function UnityEngine.ParticleSystem:GetParticles(out_particles) end
---@param customData System.Collections.Generic.List
---@param streamIndex UnityEngine.ParticleSystemCustomData
function UnityEngine.ParticleSystem:SetCustomParticleData(customData, streamIndex) end
---@param customData System.Collections.Generic.List
---@param streamIndex UnityEngine.ParticleSystemCustomData
---@return number
function UnityEngine.ParticleSystem:GetCustomParticleData(customData, streamIndex) end
---@return UnityEngine.ParticleSystem.PlaybackState
function UnityEngine.ParticleSystem:GetPlaybackState() end
---@param playbackState UnityEngine.ParticleSystem.PlaybackState
function UnityEngine.ParticleSystem:SetPlaybackState(playbackState) end
---@overload fun() : UnityEngine.ParticleSystem.Trails
---@param ref_trailData UnityEngine.ParticleSystem.Trails
---@return number,UnityEngine.ParticleSystem.Trails
function UnityEngine.ParticleSystem:GetTrails(ref_trailData) end
---@param trailData UnityEngine.ParticleSystem.Trails
function UnityEngine.ParticleSystem:SetTrails(trailData) end
---@overload fun(self: UnityEngine.ParticleSystem, t: number, withChildren: boolean, restart: boolean, fixedTimeStep: boolean)
---@overload fun(self: UnityEngine.ParticleSystem, t: number, withChildren: boolean, restart: boolean)
---@overload fun(self: UnityEngine.ParticleSystem, t: number, withChildren: boolean)
---@param t number
function UnityEngine.ParticleSystem:Simulate(t) end
---@overload fun(self: UnityEngine.ParticleSystem, withChildren: boolean)
function UnityEngine.ParticleSystem:Play() end
---@overload fun(self: UnityEngine.ParticleSystem, withChildren: boolean)
function UnityEngine.ParticleSystem:Pause() end
---@overload fun(self: UnityEngine.ParticleSystem, withChildren: boolean, stopBehavior: UnityEngine.ParticleSystemStopBehavior)
---@overload fun(self: UnityEngine.ParticleSystem, withChildren: boolean)
function UnityEngine.ParticleSystem:Stop() end
---@overload fun(self: UnityEngine.ParticleSystem, withChildren: boolean)
function UnityEngine.ParticleSystem:Clear() end
---@overload fun(self: UnityEngine.ParticleSystem, withChildren: boolean) : boolean
---@return boolean
function UnityEngine.ParticleSystem:IsAlive() end
---@overload fun(self: UnityEngine.ParticleSystem, count: number)
---@param emitParams UnityEngine.ParticleSystem.EmitParams
---@param count number
function UnityEngine.ParticleSystem:Emit(emitParams, count) end
---@overload fun(self: UnityEngine.ParticleSystem, subEmitterIndex: number)
---@overload fun(self: UnityEngine.ParticleSystem, subEmitterIndex: number, ref_particle: UnityEngine.ParticleSystem.Particle) : UnityEngine.ParticleSystem.Particle
---@param subEmitterIndex number
---@param particles System.Collections.Generic.List
function UnityEngine.ParticleSystem:TriggerSubEmitter(subEmitterIndex, particles) end
function UnityEngine.ParticleSystem:AllocateAxisOfRotationAttribute() end
function UnityEngine.ParticleSystem:AllocateMeshIndexAttribute() end
---@param stream UnityEngine.ParticleSystemCustomData
function UnityEngine.ParticleSystem:AllocateCustomDataAttribute(stream) end
---@param go UnityEngine.GameObject
---@param collisionEvents UnityEngine.ParticleCollisionEvent[]
---@return number
function UnityEngine.ParticleSystem:GetCollisionEvents(go, collisionEvents) end
---@return number
function UnityEngine.ParticleSystem:GetSafeCollisionEventSize() end
---@param go UnityEngine.GameObject
---@param collisionEvents System.Collections.Generic.List
---@return number
function UnityEngine.ParticleSystem:GetCollisionEvents(go, collisionEvents) end
---@param type UnityEngine.ParticleSystemTriggerEventType
---@return number
function UnityEngine.ParticleSystem:GetSafeTriggerParticlesSize(type) end
---@param type UnityEngine.ParticleSystemTriggerEventType
---@param particles System.Collections.Generic.List
---@return number
function UnityEngine.ParticleSystem:GetTriggerParticles(type, particles) end
---@param type UnityEngine.ParticleSystemTriggerEventType
---@param particles System.Collections.Generic.List
---@param out_colliderData UnityEngine.ParticleSystem.ColliderData
---@return number,UnityEngine.ParticleSystem.ColliderData
function UnityEngine.ParticleSystem:GetTriggerParticles(type, particles, out_colliderData) end
---@param type UnityEngine.ParticleSystemTriggerEventType
---@param particles System.Collections.Generic.List
---@param offset number
---@param count number
function UnityEngine.ParticleSystem:SetTriggerParticles(type, particles, offset, count) end
---@param type UnityEngine.ParticleSystemTriggerEventType
---@param particles System.Collections.Generic.List
function UnityEngine.ParticleSystem:SetTriggerParticles(type, particles) end

---@class UnityEngine.ParticleSystem.MinMaxCurve : System.ValueType
---@field mode UnityEngine.ParticleSystemCurveMode
---@field curveMultiplier number
---@field curveMax UnityEngine.AnimationCurve
---@field curveMin UnityEngine.AnimationCurve
---@field constantMax number
---@field constantMin number
---@field constant number
---@field curve UnityEngine.AnimationCurve
UnityEngine.ParticleSystem.MinMaxCurve = {}
---@alias CS.UnityEngine.ParticleSystem.MinMaxCurve UnityEngine.ParticleSystem.MinMaxCurve
CS.UnityEngine.ParticleSystem.MinMaxCurve = UnityEngine.ParticleSystem.MinMaxCurve

---@overload fun(constant: number) : UnityEngine.ParticleSystem.MinMaxCurve
---@overload fun(multiplier: number, curve: UnityEngine.AnimationCurve) : UnityEngine.ParticleSystem.MinMaxCurve
---@overload fun(multiplier: number, min: UnityEngine.AnimationCurve, max: UnityEngine.AnimationCurve) : UnityEngine.ParticleSystem.MinMaxCurve
---@param min number
---@param max number
---@return UnityEngine.ParticleSystem.MinMaxCurve
function UnityEngine.ParticleSystem.MinMaxCurve.New(min, max) end
---@overload fun(self: UnityEngine.ParticleSystem.MinMaxCurve, time: number) : number
---@param time number
---@param lerpFactor number
---@return number
function UnityEngine.ParticleSystem.MinMaxCurve:Evaluate(time, lerpFactor) end

---@class UnityEngine.ParticleSystem.MainModule : System.ValueType
---@field emitterVelocity UnityEngine.Vector3
---@field duration number
---@field loop boolean
---@field prewarm boolean
---@field startDelay UnityEngine.ParticleSystem.MinMaxCurve
---@field startDelayMultiplier number
---@field startLifetime UnityEngine.ParticleSystem.MinMaxCurve
---@field startLifetimeMultiplier number
---@field startSpeed UnityEngine.ParticleSystem.MinMaxCurve
---@field startSpeedMultiplier number
---@field startSize3D boolean
---@field startSize UnityEngine.ParticleSystem.MinMaxCurve
---@field startSizeMultiplier number
---@field startSizeX UnityEngine.ParticleSystem.MinMaxCurve
---@field startSizeXMultiplier number
---@field startSizeY UnityEngine.ParticleSystem.MinMaxCurve
---@field startSizeYMultiplier number
---@field startSizeZ UnityEngine.ParticleSystem.MinMaxCurve
---@field startSizeZMultiplier number
---@field startRotation3D boolean
---@field startRotation UnityEngine.ParticleSystem.MinMaxCurve
---@field startRotationMultiplier number
---@field startRotationX UnityEngine.ParticleSystem.MinMaxCurve
---@field startRotationXMultiplier number
---@field startRotationY UnityEngine.ParticleSystem.MinMaxCurve
---@field startRotationYMultiplier number
---@field startRotationZ UnityEngine.ParticleSystem.MinMaxCurve
---@field startRotationZMultiplier number
---@field flipRotation number
---@field startColor UnityEngine.ParticleSystem.MinMaxGradient
---@field gravitySource UnityEngine.ParticleSystemGravitySource
---@field gravityModifier UnityEngine.ParticleSystem.MinMaxCurve
---@field gravityModifierMultiplier number
---@field simulationSpace UnityEngine.ParticleSystemSimulationSpace
---@field customSimulationSpace UnityEngine.Transform
---@field simulationSpeed number
---@field useUnscaledTime boolean
---@field scalingMode UnityEngine.ParticleSystemScalingMode
---@field playOnAwake boolean
---@field maxParticles number
---@field emitterVelocityMode UnityEngine.ParticleSystemEmitterVelocityMode
---@field stopAction UnityEngine.ParticleSystemStopAction
---@field ringBufferMode UnityEngine.ParticleSystemRingBufferMode
---@field ringBufferLoopRange UnityEngine.Vector2
---@field cullingMode UnityEngine.ParticleSystemCullingMode
UnityEngine.ParticleSystem.MainModule = {}
---@alias CS.UnityEngine.ParticleSystem.MainModule UnityEngine.ParticleSystem.MainModule
CS.UnityEngine.ParticleSystem.MainModule = UnityEngine.ParticleSystem.MainModule


---@class UnityEngine.ParticleSystem.EmissionModule : System.ValueType
---@field enabled boolean
---@field rateOverTime UnityEngine.ParticleSystem.MinMaxCurve
---@field rateOverTimeMultiplier number
---@field rateOverDistance UnityEngine.ParticleSystem.MinMaxCurve
---@field rateOverDistanceMultiplier number
---@field burstCount number
UnityEngine.ParticleSystem.EmissionModule = {}
---@alias CS.UnityEngine.ParticleSystem.EmissionModule UnityEngine.ParticleSystem.EmissionModule
CS.UnityEngine.ParticleSystem.EmissionModule = UnityEngine.ParticleSystem.EmissionModule

---@overload fun(self: UnityEngine.ParticleSystem.EmissionModule, bursts: UnityEngine.ParticleSystem.Burst[])
---@param bursts UnityEngine.ParticleSystem.Burst[]
---@param size number
function UnityEngine.ParticleSystem.EmissionModule:SetBursts(bursts, size) end
---@param bursts UnityEngine.ParticleSystem.Burst[]
---@return number
function UnityEngine.ParticleSystem.EmissionModule:GetBursts(bursts) end
---@param index number
---@param burst UnityEngine.ParticleSystem.Burst
function UnityEngine.ParticleSystem.EmissionModule:SetBurst(index, burst) end
---@param index number
---@return UnityEngine.ParticleSystem.Burst
function UnityEngine.ParticleSystem.EmissionModule:GetBurst(index) end

---@class UnityEngine.ParticleSystem.ShapeModule : System.ValueType
---@field enabled boolean
---@field shapeType UnityEngine.ParticleSystemShapeType
---@field randomDirectionAmount number
---@field sphericalDirectionAmount number
---@field randomPositionAmount number
---@field alignToDirection boolean
---@field radius number
---@field radiusMode UnityEngine.ParticleSystemShapeMultiModeValue
---@field radiusSpread number
---@field radiusSpeed UnityEngine.ParticleSystem.MinMaxCurve
---@field radiusSpeedMultiplier number
---@field radiusThickness number
---@field angle number
---@field length number
---@field boxThickness UnityEngine.Vector3
---@field meshShapeType UnityEngine.ParticleSystemMeshShapeType
---@field mesh UnityEngine.Mesh
---@field meshRenderer UnityEngine.MeshRenderer
---@field skinnedMeshRenderer UnityEngine.SkinnedMeshRenderer
---@field sprite UnityEngine.Sprite
---@field spriteRenderer UnityEngine.SpriteRenderer
---@field useMeshMaterialIndex boolean
---@field meshMaterialIndex number
---@field useMeshColors boolean
---@field normalOffset number
---@field meshSpawnMode UnityEngine.ParticleSystemShapeMultiModeValue
---@field meshSpawnSpread number
---@field meshSpawnSpeed UnityEngine.ParticleSystem.MinMaxCurve
---@field meshSpawnSpeedMultiplier number
---@field arc number
---@field arcMode UnityEngine.ParticleSystemShapeMultiModeValue
---@field arcSpread number
---@field arcSpeed UnityEngine.ParticleSystem.MinMaxCurve
---@field arcSpeedMultiplier number
---@field donutRadius number
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Vector3
---@field scale UnityEngine.Vector3
---@field texture UnityEngine.Texture2D
---@field textureClipChannel UnityEngine.ParticleSystemShapeTextureChannel
---@field textureClipThreshold number
---@field textureColorAffectsParticles boolean
---@field textureAlphaAffectsParticles boolean
---@field textureBilinearFiltering boolean
---@field textureUVChannel number
UnityEngine.ParticleSystem.ShapeModule = {}
---@alias CS.UnityEngine.ParticleSystem.ShapeModule UnityEngine.ParticleSystem.ShapeModule
CS.UnityEngine.ParticleSystem.ShapeModule = UnityEngine.ParticleSystem.ShapeModule


---@class UnityEngine.ParticleSystem.CollisionModule : System.ValueType
---@field enabled boolean
---@field type UnityEngine.ParticleSystemCollisionType
---@field mode UnityEngine.ParticleSystemCollisionMode
---@field dampen UnityEngine.ParticleSystem.MinMaxCurve
---@field dampenMultiplier number
---@field bounce UnityEngine.ParticleSystem.MinMaxCurve
---@field bounceMultiplier number
---@field lifetimeLoss UnityEngine.ParticleSystem.MinMaxCurve
---@field lifetimeLossMultiplier number
---@field minKillSpeed number
---@field maxKillSpeed number
---@field collidesWith UnityEngine.LayerMask
---@field enableDynamicColliders boolean
---@field maxCollisionShapes number
---@field quality UnityEngine.ParticleSystemCollisionQuality
---@field voxelSize number
---@field radiusScale number
---@field sendCollisionMessages boolean
---@field colliderForce number
---@field multiplyColliderForceByCollisionAngle boolean
---@field multiplyColliderForceByParticleSpeed boolean
---@field multiplyColliderForceByParticleSize boolean
---@field planeCount number
UnityEngine.ParticleSystem.CollisionModule = {}
---@alias CS.UnityEngine.ParticleSystem.CollisionModule UnityEngine.ParticleSystem.CollisionModule
CS.UnityEngine.ParticleSystem.CollisionModule = UnityEngine.ParticleSystem.CollisionModule

---@param transform UnityEngine.Transform
function UnityEngine.ParticleSystem.CollisionModule:AddPlane(transform) end
---@overload fun(self: UnityEngine.ParticleSystem.CollisionModule, index: number)
---@param transform UnityEngine.Transform
function UnityEngine.ParticleSystem.CollisionModule:RemovePlane(transform) end
---@param index number
---@param transform UnityEngine.Transform
function UnityEngine.ParticleSystem.CollisionModule:SetPlane(index, transform) end
---@param index number
---@return UnityEngine.Transform
function UnityEngine.ParticleSystem.CollisionModule:GetPlane(index) end

---@class UnityEngine.ParticleSystem.TriggerModule : System.ValueType
---@field enabled boolean
---@field inside UnityEngine.ParticleSystemOverlapAction
---@field outside UnityEngine.ParticleSystemOverlapAction
---@field enter UnityEngine.ParticleSystemOverlapAction
---@field exit UnityEngine.ParticleSystemOverlapAction
---@field colliderQueryMode UnityEngine.ParticleSystemColliderQueryMode
---@field radiusScale number
---@field colliderCount number
UnityEngine.ParticleSystem.TriggerModule = {}
---@alias CS.UnityEngine.ParticleSystem.TriggerModule UnityEngine.ParticleSystem.TriggerModule
CS.UnityEngine.ParticleSystem.TriggerModule = UnityEngine.ParticleSystem.TriggerModule

---@param collider UnityEngine.Component
function UnityEngine.ParticleSystem.TriggerModule:AddCollider(collider) end
---@overload fun(self: UnityEngine.ParticleSystem.TriggerModule, index: number)
---@param collider UnityEngine.Component
function UnityEngine.ParticleSystem.TriggerModule:RemoveCollider(collider) end
---@param index number
---@param collider UnityEngine.Component
function UnityEngine.ParticleSystem.TriggerModule:SetCollider(index, collider) end
---@param index number
---@return UnityEngine.Component
function UnityEngine.ParticleSystem.TriggerModule:GetCollider(index) end

---@class UnityEngine.ParticleSystem.SubEmittersModule : System.ValueType
---@field enabled boolean
---@field subEmittersCount number
UnityEngine.ParticleSystem.SubEmittersModule = {}
---@alias CS.UnityEngine.ParticleSystem.SubEmittersModule UnityEngine.ParticleSystem.SubEmittersModule
CS.UnityEngine.ParticleSystem.SubEmittersModule = UnityEngine.ParticleSystem.SubEmittersModule

---@overload fun(self: UnityEngine.ParticleSystem.SubEmittersModule, subEmitter: UnityEngine.ParticleSystem, type: UnityEngine.ParticleSystemSubEmitterType, properties: UnityEngine.ParticleSystemSubEmitterProperties, emitProbability: number)
---@param subEmitter UnityEngine.ParticleSystem
---@param type UnityEngine.ParticleSystemSubEmitterType
---@param properties UnityEngine.ParticleSystemSubEmitterProperties
function UnityEngine.ParticleSystem.SubEmittersModule:AddSubEmitter(subEmitter, type, properties) end
---@overload fun(self: UnityEngine.ParticleSystem.SubEmittersModule, index: number)
---@param subEmitter UnityEngine.ParticleSystem
function UnityEngine.ParticleSystem.SubEmittersModule:RemoveSubEmitter(subEmitter) end
---@param index number
---@param subEmitter UnityEngine.ParticleSystem
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterSystem(index, subEmitter) end
---@param index number
---@param type UnityEngine.ParticleSystemSubEmitterType
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterType(index, type) end
---@param index number
---@param properties UnityEngine.ParticleSystemSubEmitterProperties
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterProperties(index, properties) end
---@param index number
---@param emitProbability number
function UnityEngine.ParticleSystem.SubEmittersModule:SetSubEmitterEmitProbability(index, emitProbability) end
---@param index number
---@return UnityEngine.ParticleSystem
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterSystem(index) end
---@param index number
---@return UnityEngine.ParticleSystemSubEmitterType
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterType(index) end
---@param index number
---@return UnityEngine.ParticleSystemSubEmitterProperties
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterProperties(index) end
---@param index number
---@return number
function UnityEngine.ParticleSystem.SubEmittersModule:GetSubEmitterEmitProbability(index) end

---@class UnityEngine.ParticleSystem.TextureSheetAnimationModule : System.ValueType
---@field enabled boolean
---@field mode UnityEngine.ParticleSystemAnimationMode
---@field timeMode UnityEngine.ParticleSystemAnimationTimeMode
---@field fps number
---@field numTilesX number
---@field numTilesY number
---@field animation UnityEngine.ParticleSystemAnimationType
---@field rowMode UnityEngine.ParticleSystemAnimationRowMode
---@field frameOverTime UnityEngine.ParticleSystem.MinMaxCurve
---@field frameOverTimeMultiplier number
---@field startFrame UnityEngine.ParticleSystem.MinMaxCurve
---@field startFrameMultiplier number
---@field cycleCount number
---@field rowIndex number
---@field uvChannelMask UnityEngine.Rendering.UVChannelFlags
---@field spriteCount number
---@field speedRange UnityEngine.Vector2
UnityEngine.ParticleSystem.TextureSheetAnimationModule = {}
---@alias CS.UnityEngine.ParticleSystem.TextureSheetAnimationModule UnityEngine.ParticleSystem.TextureSheetAnimationModule
CS.UnityEngine.ParticleSystem.TextureSheetAnimationModule = UnityEngine.ParticleSystem.TextureSheetAnimationModule

---@param sprite UnityEngine.Sprite
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:AddSprite(sprite) end
---@param index number
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:RemoveSprite(index) end
---@param index number
---@param sprite UnityEngine.Sprite
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:SetSprite(index, sprite) end
---@param index number
---@return UnityEngine.Sprite
function UnityEngine.ParticleSystem.TextureSheetAnimationModule:GetSprite(index) end

---@class UnityEngine.ParticleSystem.Particle : System.ValueType
---@field position UnityEngine.Vector3
---@field velocity UnityEngine.Vector3
---@field animatedVelocity UnityEngine.Vector3
---@field totalVelocity UnityEngine.Vector3
---@field remainingLifetime number
---@field startLifetime number
---@field startColor UnityEngine.Color32
---@field randomSeed number
---@field axisOfRotation UnityEngine.Vector3
---@field startSize number
---@field startSize3D UnityEngine.Vector3
---@field rotation number
---@field rotation3D UnityEngine.Vector3
---@field angularVelocity number
---@field angularVelocity3D UnityEngine.Vector3
UnityEngine.ParticleSystem.Particle = {}
---@alias CS.UnityEngine.ParticleSystem.Particle UnityEngine.ParticleSystem.Particle
CS.UnityEngine.ParticleSystem.Particle = UnityEngine.ParticleSystem.Particle

---@param system UnityEngine.ParticleSystem
---@return number
function UnityEngine.ParticleSystem.Particle:GetCurrentSize(system) end
---@param system UnityEngine.ParticleSystem
---@return UnityEngine.Vector3
function UnityEngine.ParticleSystem.Particle:GetCurrentSize3D(system) end
---@param system UnityEngine.ParticleSystem
---@return UnityEngine.Color32
function UnityEngine.ParticleSystem.Particle:GetCurrentColor(system) end
---@param index number
function UnityEngine.ParticleSystem.Particle:SetMeshIndex(index) end
---@param system UnityEngine.ParticleSystem
---@return number
function UnityEngine.ParticleSystem.Particle:GetMeshIndex(system) end

---@class UnityEngine.ParticleSystem.Particle.Flags
---@field Size3D UnityEngine.ParticleSystem.Particle.Flags
---@field Rotation3D UnityEngine.ParticleSystem.Particle.Flags
---@field MeshIndex UnityEngine.ParticleSystem.Particle.Flags
UnityEngine.ParticleSystem.Particle.Flags = {}
---@alias CS.UnityEngine.ParticleSystem.Particle.Flags UnityEngine.ParticleSystem.Particle.Flags
CS.UnityEngine.ParticleSystem.Particle.Flags = UnityEngine.ParticleSystem.Particle.Flags


---@class UnityEngine.ParticleSystem.CollisionEvent : System.ValueType
---@field intersection UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field velocity UnityEngine.Vector3
---@field collider UnityEngine.Component
UnityEngine.ParticleSystem.CollisionEvent = {}
---@alias CS.UnityEngine.ParticleSystem.CollisionEvent UnityEngine.ParticleSystem.CollisionEvent
CS.UnityEngine.ParticleSystem.CollisionEvent = UnityEngine.ParticleSystem.CollisionEvent


---@class UnityEngine.ParticleSystem.Burst : System.ValueType
---@field time number
---@field count UnityEngine.ParticleSystem.MinMaxCurve
---@field minCount number
---@field maxCount number
---@field cycleCount number
---@field repeatInterval number
---@field probability number
UnityEngine.ParticleSystem.Burst = {}
---@alias CS.UnityEngine.ParticleSystem.Burst UnityEngine.ParticleSystem.Burst
CS.UnityEngine.ParticleSystem.Burst = UnityEngine.ParticleSystem.Burst

---@overload fun(_time: number, _count: number) : UnityEngine.ParticleSystem.Burst
---@overload fun(_time: number, _minCount: number, _maxCount: number) : UnityEngine.ParticleSystem.Burst
---@overload fun(_time: number, _minCount: number, _maxCount: number, _cycleCount: number, _repeatInterval: number) : UnityEngine.ParticleSystem.Burst
---@overload fun(_time: number, _count: UnityEngine.ParticleSystem.MinMaxCurve) : UnityEngine.ParticleSystem.Burst
---@param _time number
---@param _count UnityEngine.ParticleSystem.MinMaxCurve
---@param _cycleCount number
---@param _repeatInterval number
---@return UnityEngine.ParticleSystem.Burst
function UnityEngine.ParticleSystem.Burst.New(_time, _count, _cycleCount, _repeatInterval) end

---@class UnityEngine.ParticleSystem.MinMaxGradient : System.ValueType
---@field mode UnityEngine.ParticleSystemGradientMode
---@field gradientMax UnityEngine.Gradient
---@field gradientMin UnityEngine.Gradient
---@field colorMax UnityEngine.Color
---@field colorMin UnityEngine.Color
---@field color UnityEngine.Color
---@field gradient UnityEngine.Gradient
UnityEngine.ParticleSystem.MinMaxGradient = {}
---@alias CS.UnityEngine.ParticleSystem.MinMaxGradient UnityEngine.ParticleSystem.MinMaxGradient
CS.UnityEngine.ParticleSystem.MinMaxGradient = UnityEngine.ParticleSystem.MinMaxGradient

---@overload fun(color: UnityEngine.Color) : UnityEngine.ParticleSystem.MinMaxGradient
---@overload fun(gradient: UnityEngine.Gradient) : UnityEngine.ParticleSystem.MinMaxGradient
---@overload fun(min: UnityEngine.Color, max: UnityEngine.Color) : UnityEngine.ParticleSystem.MinMaxGradient
---@param min UnityEngine.Gradient
---@param max UnityEngine.Gradient
---@return UnityEngine.ParticleSystem.MinMaxGradient
function UnityEngine.ParticleSystem.MinMaxGradient.New(min, max) end
---@overload fun(self: UnityEngine.ParticleSystem.MinMaxGradient, time: number) : UnityEngine.Color
---@param time number
---@param lerpFactor number
---@return UnityEngine.Color
function UnityEngine.ParticleSystem.MinMaxGradient:Evaluate(time, lerpFactor) end

---@class UnityEngine.ParticleSystem.EmitParams : System.ValueType
---@field particle UnityEngine.ParticleSystem.Particle
---@field position UnityEngine.Vector3
---@field applyShapeToPosition boolean
---@field velocity UnityEngine.Vector3
---@field startLifetime number
---@field startSize number
---@field startSize3D UnityEngine.Vector3
---@field axisOfRotation UnityEngine.Vector3
---@field rotation number
---@field rotation3D UnityEngine.Vector3
---@field angularVelocity number
---@field angularVelocity3D UnityEngine.Vector3
---@field startColor UnityEngine.Color32
---@field randomSeed number
---@field meshIndex number
UnityEngine.ParticleSystem.EmitParams = {}
---@alias CS.UnityEngine.ParticleSystem.EmitParams UnityEngine.ParticleSystem.EmitParams
CS.UnityEngine.ParticleSystem.EmitParams = UnityEngine.ParticleSystem.EmitParams

function UnityEngine.ParticleSystem.EmitParams:ResetPosition() end
function UnityEngine.ParticleSystem.EmitParams:ResetVelocity() end
function UnityEngine.ParticleSystem.EmitParams:ResetAxisOfRotation() end
function UnityEngine.ParticleSystem.EmitParams:ResetRotation() end
function UnityEngine.ParticleSystem.EmitParams:ResetAngularVelocity() end
function UnityEngine.ParticleSystem.EmitParams:ResetStartSize() end
function UnityEngine.ParticleSystem.EmitParams:ResetStartColor() end
function UnityEngine.ParticleSystem.EmitParams:ResetRandomSeed() end
function UnityEngine.ParticleSystem.EmitParams:ResetStartLifetime() end
function UnityEngine.ParticleSystem.EmitParams:ResetMeshIndex() end

---@class UnityEngine.ParticleSystem.PlaybackState : System.ValueType
UnityEngine.ParticleSystem.PlaybackState = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState UnityEngine.ParticleSystem.PlaybackState
CS.UnityEngine.ParticleSystem.PlaybackState = UnityEngine.ParticleSystem.PlaybackState


---@class UnityEngine.ParticleSystem.PlaybackState.Seed : System.ValueType
---@field x number
---@field y number
---@field z number
---@field w number
UnityEngine.ParticleSystem.PlaybackState.Seed = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Seed UnityEngine.ParticleSystem.PlaybackState.Seed
CS.UnityEngine.ParticleSystem.PlaybackState.Seed = UnityEngine.ParticleSystem.PlaybackState.Seed


---@class UnityEngine.ParticleSystem.PlaybackState.Seed4 : System.ValueType
---@field x UnityEngine.ParticleSystem.PlaybackState.Seed
---@field y UnityEngine.ParticleSystem.PlaybackState.Seed
---@field z UnityEngine.ParticleSystem.PlaybackState.Seed
---@field w UnityEngine.ParticleSystem.PlaybackState.Seed
UnityEngine.ParticleSystem.PlaybackState.Seed4 = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Seed4 UnityEngine.ParticleSystem.PlaybackState.Seed4
CS.UnityEngine.ParticleSystem.PlaybackState.Seed4 = UnityEngine.ParticleSystem.PlaybackState.Seed4


---@class UnityEngine.ParticleSystem.PlaybackState.Emission : System.ValueType
---@field m_ParticleSpacing number
---@field m_ToEmitAccumulator number
---@field m_Random UnityEngine.ParticleSystem.PlaybackState.Seed
UnityEngine.ParticleSystem.PlaybackState.Emission = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Emission UnityEngine.ParticleSystem.PlaybackState.Emission
CS.UnityEngine.ParticleSystem.PlaybackState.Emission = UnityEngine.ParticleSystem.PlaybackState.Emission


---@class UnityEngine.ParticleSystem.PlaybackState.Initial : System.ValueType
---@field m_Random UnityEngine.ParticleSystem.PlaybackState.Seed4
UnityEngine.ParticleSystem.PlaybackState.Initial = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Initial UnityEngine.ParticleSystem.PlaybackState.Initial
CS.UnityEngine.ParticleSystem.PlaybackState.Initial = UnityEngine.ParticleSystem.PlaybackState.Initial


---@class UnityEngine.ParticleSystem.PlaybackState.Shape : System.ValueType
---@field m_Random UnityEngine.ParticleSystem.PlaybackState.Seed4
---@field m_RadiusTimer number
---@field m_RadiusTimerPrev number
---@field m_ArcTimer number
---@field m_ArcTimerPrev number
---@field m_MeshSpawnTimer number
---@field m_MeshSpawnTimerPrev number
---@field m_OrderedMeshVertexIndex number
UnityEngine.ParticleSystem.PlaybackState.Shape = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Shape UnityEngine.ParticleSystem.PlaybackState.Shape
CS.UnityEngine.ParticleSystem.PlaybackState.Shape = UnityEngine.ParticleSystem.PlaybackState.Shape


---@class UnityEngine.ParticleSystem.PlaybackState.Force : System.ValueType
---@field m_Random UnityEngine.ParticleSystem.PlaybackState.Seed4
UnityEngine.ParticleSystem.PlaybackState.Force = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Force UnityEngine.ParticleSystem.PlaybackState.Force
CS.UnityEngine.ParticleSystem.PlaybackState.Force = UnityEngine.ParticleSystem.PlaybackState.Force


---@class UnityEngine.ParticleSystem.PlaybackState.Collision : System.ValueType
---@field m_Random UnityEngine.ParticleSystem.PlaybackState.Seed4
UnityEngine.ParticleSystem.PlaybackState.Collision = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Collision UnityEngine.ParticleSystem.PlaybackState.Collision
CS.UnityEngine.ParticleSystem.PlaybackState.Collision = UnityEngine.ParticleSystem.PlaybackState.Collision


---@class UnityEngine.ParticleSystem.PlaybackState.Noise : System.ValueType
---@field m_ScrollOffset number
UnityEngine.ParticleSystem.PlaybackState.Noise = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Noise UnityEngine.ParticleSystem.PlaybackState.Noise
CS.UnityEngine.ParticleSystem.PlaybackState.Noise = UnityEngine.ParticleSystem.PlaybackState.Noise


---@class UnityEngine.ParticleSystem.PlaybackState.Lights : System.ValueType
---@field m_Random UnityEngine.ParticleSystem.PlaybackState.Seed
---@field m_ParticleEmissionCounter number
UnityEngine.ParticleSystem.PlaybackState.Lights = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Lights UnityEngine.ParticleSystem.PlaybackState.Lights
CS.UnityEngine.ParticleSystem.PlaybackState.Lights = UnityEngine.ParticleSystem.PlaybackState.Lights


---@class UnityEngine.ParticleSystem.PlaybackState.Trail : System.ValueType
---@field m_Timer number
UnityEngine.ParticleSystem.PlaybackState.Trail = {}
---@alias CS.UnityEngine.ParticleSystem.PlaybackState.Trail UnityEngine.ParticleSystem.PlaybackState.Trail
CS.UnityEngine.ParticleSystem.PlaybackState.Trail = UnityEngine.ParticleSystem.PlaybackState.Trail


---@class UnityEngine.ParticleSystem.Trails : System.ValueType
---@field capacity number
UnityEngine.ParticleSystem.Trails = {}
---@alias CS.UnityEngine.ParticleSystem.Trails UnityEngine.ParticleSystem.Trails
CS.UnityEngine.ParticleSystem.Trails = UnityEngine.ParticleSystem.Trails


---@class UnityEngine.ParticleSystem.ColliderData : System.ValueType
UnityEngine.ParticleSystem.ColliderData = {}
---@alias CS.UnityEngine.ParticleSystem.ColliderData UnityEngine.ParticleSystem.ColliderData
CS.UnityEngine.ParticleSystem.ColliderData = UnityEngine.ParticleSystem.ColliderData

---@param particleIndex number
---@return number
function UnityEngine.ParticleSystem.ColliderData:GetColliderCount(particleIndex) end
---@param particleIndex number
---@param colliderIndex number
---@return UnityEngine.Component
function UnityEngine.ParticleSystem.ColliderData:GetCollider(particleIndex, colliderIndex) end

---@class UnityEngine.ParticleSystem.VelocityOverLifetimeModule : System.ValueType
---@field enabled boolean
---@field x UnityEngine.ParticleSystem.MinMaxCurve
---@field y UnityEngine.ParticleSystem.MinMaxCurve
---@field z UnityEngine.ParticleSystem.MinMaxCurve
---@field xMultiplier number
---@field yMultiplier number
---@field zMultiplier number
---@field orbitalX UnityEngine.ParticleSystem.MinMaxCurve
---@field orbitalY UnityEngine.ParticleSystem.MinMaxCurve
---@field orbitalZ UnityEngine.ParticleSystem.MinMaxCurve
---@field orbitalXMultiplier number
---@field orbitalYMultiplier number
---@field orbitalZMultiplier number
---@field orbitalOffsetX UnityEngine.ParticleSystem.MinMaxCurve
---@field orbitalOffsetY UnityEngine.ParticleSystem.MinMaxCurve
---@field orbitalOffsetZ UnityEngine.ParticleSystem.MinMaxCurve
---@field orbitalOffsetXMultiplier number
---@field orbitalOffsetYMultiplier number
---@field orbitalOffsetZMultiplier number
---@field radial UnityEngine.ParticleSystem.MinMaxCurve
---@field radialMultiplier number
---@field speedModifier UnityEngine.ParticleSystem.MinMaxCurve
---@field speedModifierMultiplier number
---@field space UnityEngine.ParticleSystemSimulationSpace
UnityEngine.ParticleSystem.VelocityOverLifetimeModule = {}
---@alias CS.UnityEngine.ParticleSystem.VelocityOverLifetimeModule UnityEngine.ParticleSystem.VelocityOverLifetimeModule
CS.UnityEngine.ParticleSystem.VelocityOverLifetimeModule = UnityEngine.ParticleSystem.VelocityOverLifetimeModule


---@class UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule : System.ValueType
---@field enabled boolean
---@field limitX UnityEngine.ParticleSystem.MinMaxCurve
---@field limitXMultiplier number
---@field limitY UnityEngine.ParticleSystem.MinMaxCurve
---@field limitYMultiplier number
---@field limitZ UnityEngine.ParticleSystem.MinMaxCurve
---@field limitZMultiplier number
---@field limit UnityEngine.ParticleSystem.MinMaxCurve
---@field limitMultiplier number
---@field dampen number
---@field separateAxes boolean
---@field space UnityEngine.ParticleSystemSimulationSpace
---@field drag UnityEngine.ParticleSystem.MinMaxCurve
---@field dragMultiplier number
---@field multiplyDragByParticleSize boolean
---@field multiplyDragByParticleVelocity boolean
UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule = {}
---@alias CS.UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule
CS.UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule = UnityEngine.ParticleSystem.LimitVelocityOverLifetimeModule


---@class UnityEngine.ParticleSystem.InheritVelocityModule : System.ValueType
---@field enabled boolean
---@field mode UnityEngine.ParticleSystemInheritVelocityMode
---@field curve UnityEngine.ParticleSystem.MinMaxCurve
---@field curveMultiplier number
UnityEngine.ParticleSystem.InheritVelocityModule = {}
---@alias CS.UnityEngine.ParticleSystem.InheritVelocityModule UnityEngine.ParticleSystem.InheritVelocityModule
CS.UnityEngine.ParticleSystem.InheritVelocityModule = UnityEngine.ParticleSystem.InheritVelocityModule


---@class UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule : System.ValueType
---@field enabled boolean
---@field curve UnityEngine.ParticleSystem.MinMaxCurve
---@field curveMultiplier number
---@field range UnityEngine.Vector2
UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule = {}
---@alias CS.UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule
CS.UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule = UnityEngine.ParticleSystem.LifetimeByEmitterSpeedModule


---@class UnityEngine.ParticleSystem.ForceOverLifetimeModule : System.ValueType
---@field enabled boolean
---@field x UnityEngine.ParticleSystem.MinMaxCurve
---@field y UnityEngine.ParticleSystem.MinMaxCurve
---@field z UnityEngine.ParticleSystem.MinMaxCurve
---@field xMultiplier number
---@field yMultiplier number
---@field zMultiplier number
---@field space UnityEngine.ParticleSystemSimulationSpace
---@field randomized boolean
UnityEngine.ParticleSystem.ForceOverLifetimeModule = {}
---@alias CS.UnityEngine.ParticleSystem.ForceOverLifetimeModule UnityEngine.ParticleSystem.ForceOverLifetimeModule
CS.UnityEngine.ParticleSystem.ForceOverLifetimeModule = UnityEngine.ParticleSystem.ForceOverLifetimeModule


---@class UnityEngine.ParticleSystem.ColorOverLifetimeModule : System.ValueType
---@field enabled boolean
---@field color UnityEngine.ParticleSystem.MinMaxGradient
UnityEngine.ParticleSystem.ColorOverLifetimeModule = {}
---@alias CS.UnityEngine.ParticleSystem.ColorOverLifetimeModule UnityEngine.ParticleSystem.ColorOverLifetimeModule
CS.UnityEngine.ParticleSystem.ColorOverLifetimeModule = UnityEngine.ParticleSystem.ColorOverLifetimeModule


---@class UnityEngine.ParticleSystem.ColorBySpeedModule : System.ValueType
---@field enabled boolean
---@field color UnityEngine.ParticleSystem.MinMaxGradient
---@field range UnityEngine.Vector2
UnityEngine.ParticleSystem.ColorBySpeedModule = {}
---@alias CS.UnityEngine.ParticleSystem.ColorBySpeedModule UnityEngine.ParticleSystem.ColorBySpeedModule
CS.UnityEngine.ParticleSystem.ColorBySpeedModule = UnityEngine.ParticleSystem.ColorBySpeedModule


---@class UnityEngine.ParticleSystem.SizeOverLifetimeModule : System.ValueType
---@field enabled boolean
---@field size UnityEngine.ParticleSystem.MinMaxCurve
---@field sizeMultiplier number
---@field x UnityEngine.ParticleSystem.MinMaxCurve
---@field xMultiplier number
---@field y UnityEngine.ParticleSystem.MinMaxCurve
---@field yMultiplier number
---@field z UnityEngine.ParticleSystem.MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
UnityEngine.ParticleSystem.SizeOverLifetimeModule = {}
---@alias CS.UnityEngine.ParticleSystem.SizeOverLifetimeModule UnityEngine.ParticleSystem.SizeOverLifetimeModule
CS.UnityEngine.ParticleSystem.SizeOverLifetimeModule = UnityEngine.ParticleSystem.SizeOverLifetimeModule


---@class UnityEngine.ParticleSystem.SizeBySpeedModule : System.ValueType
---@field enabled boolean
---@field size UnityEngine.ParticleSystem.MinMaxCurve
---@field sizeMultiplier number
---@field x UnityEngine.ParticleSystem.MinMaxCurve
---@field xMultiplier number
---@field y UnityEngine.ParticleSystem.MinMaxCurve
---@field yMultiplier number
---@field z UnityEngine.ParticleSystem.MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
---@field range UnityEngine.Vector2
UnityEngine.ParticleSystem.SizeBySpeedModule = {}
---@alias CS.UnityEngine.ParticleSystem.SizeBySpeedModule UnityEngine.ParticleSystem.SizeBySpeedModule
CS.UnityEngine.ParticleSystem.SizeBySpeedModule = UnityEngine.ParticleSystem.SizeBySpeedModule


---@class UnityEngine.ParticleSystem.RotationOverLifetimeModule : System.ValueType
---@field enabled boolean
---@field x UnityEngine.ParticleSystem.MinMaxCurve
---@field xMultiplier number
---@field y UnityEngine.ParticleSystem.MinMaxCurve
---@field yMultiplier number
---@field z UnityEngine.ParticleSystem.MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
UnityEngine.ParticleSystem.RotationOverLifetimeModule = {}
---@alias CS.UnityEngine.ParticleSystem.RotationOverLifetimeModule UnityEngine.ParticleSystem.RotationOverLifetimeModule
CS.UnityEngine.ParticleSystem.RotationOverLifetimeModule = UnityEngine.ParticleSystem.RotationOverLifetimeModule


---@class UnityEngine.ParticleSystem.RotationBySpeedModule : System.ValueType
---@field enabled boolean
---@field x UnityEngine.ParticleSystem.MinMaxCurve
---@field xMultiplier number
---@field y UnityEngine.ParticleSystem.MinMaxCurve
---@field yMultiplier number
---@field z UnityEngine.ParticleSystem.MinMaxCurve
---@field zMultiplier number
---@field separateAxes boolean
---@field range UnityEngine.Vector2
UnityEngine.ParticleSystem.RotationBySpeedModule = {}
---@alias CS.UnityEngine.ParticleSystem.RotationBySpeedModule UnityEngine.ParticleSystem.RotationBySpeedModule
CS.UnityEngine.ParticleSystem.RotationBySpeedModule = UnityEngine.ParticleSystem.RotationBySpeedModule


---@class UnityEngine.ParticleSystem.ExternalForcesModule : System.ValueType
---@field enabled boolean
---@field multiplier number
---@field multiplierCurve UnityEngine.ParticleSystem.MinMaxCurve
---@field influenceFilter UnityEngine.ParticleSystemGameObjectFilter
---@field influenceMask UnityEngine.LayerMask
---@field influenceCount number
UnityEngine.ParticleSystem.ExternalForcesModule = {}
---@alias CS.UnityEngine.ParticleSystem.ExternalForcesModule UnityEngine.ParticleSystem.ExternalForcesModule
CS.UnityEngine.ParticleSystem.ExternalForcesModule = UnityEngine.ParticleSystem.ExternalForcesModule

---@param field UnityEngine.ParticleSystemForceField
---@return boolean
function UnityEngine.ParticleSystem.ExternalForcesModule:IsAffectedBy(field) end
---@param field UnityEngine.ParticleSystemForceField
function UnityEngine.ParticleSystem.ExternalForcesModule:AddInfluence(field) end
---@overload fun(self: UnityEngine.ParticleSystem.ExternalForcesModule, index: number)
---@param field UnityEngine.ParticleSystemForceField
function UnityEngine.ParticleSystem.ExternalForcesModule:RemoveInfluence(field) end
function UnityEngine.ParticleSystem.ExternalForcesModule:RemoveAllInfluences() end
---@param index number
---@param field UnityEngine.ParticleSystemForceField
function UnityEngine.ParticleSystem.ExternalForcesModule:SetInfluence(index, field) end
---@param index number
---@return UnityEngine.ParticleSystemForceField
function UnityEngine.ParticleSystem.ExternalForcesModule:GetInfluence(index) end

---@class UnityEngine.ParticleSystem.NoiseModule : System.ValueType
---@field enabled boolean
---@field separateAxes boolean
---@field strength UnityEngine.ParticleSystem.MinMaxCurve
---@field strengthMultiplier number
---@field strengthX UnityEngine.ParticleSystem.MinMaxCurve
---@field strengthXMultiplier number
---@field strengthY UnityEngine.ParticleSystem.MinMaxCurve
---@field strengthYMultiplier number
---@field strengthZ UnityEngine.ParticleSystem.MinMaxCurve
---@field strengthZMultiplier number
---@field frequency number
---@field damping boolean
---@field octaveCount number
---@field octaveMultiplier number
---@field octaveScale number
---@field quality UnityEngine.ParticleSystemNoiseQuality
---@field scrollSpeed UnityEngine.ParticleSystem.MinMaxCurve
---@field scrollSpeedMultiplier number
---@field remapEnabled boolean
---@field remap UnityEngine.ParticleSystem.MinMaxCurve
---@field remapMultiplier number
---@field remapX UnityEngine.ParticleSystem.MinMaxCurve
---@field remapXMultiplier number
---@field remapY UnityEngine.ParticleSystem.MinMaxCurve
---@field remapYMultiplier number
---@field remapZ UnityEngine.ParticleSystem.MinMaxCurve
---@field remapZMultiplier number
---@field positionAmount UnityEngine.ParticleSystem.MinMaxCurve
---@field rotationAmount UnityEngine.ParticleSystem.MinMaxCurve
---@field sizeAmount UnityEngine.ParticleSystem.MinMaxCurve
UnityEngine.ParticleSystem.NoiseModule = {}
---@alias CS.UnityEngine.ParticleSystem.NoiseModule UnityEngine.ParticleSystem.NoiseModule
CS.UnityEngine.ParticleSystem.NoiseModule = UnityEngine.ParticleSystem.NoiseModule


---@class UnityEngine.ParticleSystem.LightsModule : System.ValueType
---@field enabled boolean
---@field ratio number
---@field useRandomDistribution boolean
---@field light UnityEngine.Light
---@field useParticleColor boolean
---@field sizeAffectsRange boolean
---@field alphaAffectsIntensity boolean
---@field range UnityEngine.ParticleSystem.MinMaxCurve
---@field rangeMultiplier number
---@field intensity UnityEngine.ParticleSystem.MinMaxCurve
---@field intensityMultiplier number
---@field maxLights number
UnityEngine.ParticleSystem.LightsModule = {}
---@alias CS.UnityEngine.ParticleSystem.LightsModule UnityEngine.ParticleSystem.LightsModule
CS.UnityEngine.ParticleSystem.LightsModule = UnityEngine.ParticleSystem.LightsModule


---@class UnityEngine.ParticleSystem.TrailModule : System.ValueType
---@field enabled boolean
---@field mode UnityEngine.ParticleSystemTrailMode
---@field ratio number
---@field lifetime UnityEngine.ParticleSystem.MinMaxCurve
---@field lifetimeMultiplier number
---@field minVertexDistance number
---@field textureMode UnityEngine.ParticleSystemTrailTextureMode
---@field textureScale UnityEngine.Vector2
---@field worldSpace boolean
---@field dieWithParticles boolean
---@field sizeAffectsWidth boolean
---@field sizeAffectsLifetime boolean
---@field inheritParticleColor boolean
---@field colorOverLifetime UnityEngine.ParticleSystem.MinMaxGradient
---@field widthOverTrail UnityEngine.ParticleSystem.MinMaxCurve
---@field widthOverTrailMultiplier number
---@field colorOverTrail UnityEngine.ParticleSystem.MinMaxGradient
---@field generateLightingData boolean
---@field ribbonCount number
---@field shadowBias number
---@field splitSubEmitterRibbons boolean
---@field attachRibbonsToTransform boolean
UnityEngine.ParticleSystem.TrailModule = {}
---@alias CS.UnityEngine.ParticleSystem.TrailModule UnityEngine.ParticleSystem.TrailModule
CS.UnityEngine.ParticleSystem.TrailModule = UnityEngine.ParticleSystem.TrailModule


---@class UnityEngine.ParticleSystem.CustomDataModule : System.ValueType
---@field enabled boolean
UnityEngine.ParticleSystem.CustomDataModule = {}
---@alias CS.UnityEngine.ParticleSystem.CustomDataModule UnityEngine.ParticleSystem.CustomDataModule
CS.UnityEngine.ParticleSystem.CustomDataModule = UnityEngine.ParticleSystem.CustomDataModule

---@param stream UnityEngine.ParticleSystemCustomData
---@param mode UnityEngine.ParticleSystemCustomDataMode
function UnityEngine.ParticleSystem.CustomDataModule:SetMode(stream, mode) end
---@param stream UnityEngine.ParticleSystemCustomData
---@return UnityEngine.ParticleSystemCustomDataMode
function UnityEngine.ParticleSystem.CustomDataModule:GetMode(stream) end
---@param stream UnityEngine.ParticleSystemCustomData
---@param count number
function UnityEngine.ParticleSystem.CustomDataModule:SetVectorComponentCount(stream, count) end
---@param stream UnityEngine.ParticleSystemCustomData
---@return number
function UnityEngine.ParticleSystem.CustomDataModule:GetVectorComponentCount(stream) end
---@param stream UnityEngine.ParticleSystemCustomData
---@param component number
---@param curve UnityEngine.ParticleSystem.MinMaxCurve
function UnityEngine.ParticleSystem.CustomDataModule:SetVector(stream, component, curve) end
---@param stream UnityEngine.ParticleSystemCustomData
---@param component number
---@return UnityEngine.ParticleSystem.MinMaxCurve
function UnityEngine.ParticleSystem.CustomDataModule:GetVector(stream, component) end
---@param stream UnityEngine.ParticleSystemCustomData
---@param gradient UnityEngine.ParticleSystem.MinMaxGradient
function UnityEngine.ParticleSystem.CustomDataModule:SetColor(stream, gradient) end
---@param stream UnityEngine.ParticleSystemCustomData
---@return UnityEngine.ParticleSystem.MinMaxGradient
function UnityEngine.ParticleSystem.CustomDataModule:GetColor(stream) end

---@class UnityEngine.ParticlePhysicsExtensions : System.Object
UnityEngine.ParticlePhysicsExtensions = {}
---@alias CS.UnityEngine.ParticlePhysicsExtensions UnityEngine.ParticlePhysicsExtensions
CS.UnityEngine.ParticlePhysicsExtensions = UnityEngine.ParticlePhysicsExtensions

---@param ps UnityEngine.ParticleSystem
---@return number
function UnityEngine.ParticlePhysicsExtensions.GetSafeCollisionEventSize(ps) end
---@param ps UnityEngine.ParticleSystem
---@param go UnityEngine.GameObject
---@param collisionEvents System.Collections.Generic.List
---@return number
function UnityEngine.ParticlePhysicsExtensions.GetCollisionEvents(ps, go, collisionEvents) end
---@param ps UnityEngine.ParticleSystem
---@param type UnityEngine.ParticleSystemTriggerEventType
---@return number
function UnityEngine.ParticlePhysicsExtensions.GetSafeTriggerParticlesSize(ps, type) end
---@overload fun(ps: UnityEngine.ParticleSystem, type: UnityEngine.ParticleSystemTriggerEventType, particles: System.Collections.Generic.List) : number
---@param ps UnityEngine.ParticleSystem
---@param type UnityEngine.ParticleSystemTriggerEventType
---@param particles System.Collections.Generic.List
---@param out_colliderData UnityEngine.ParticleSystem.ColliderData
---@return number,UnityEngine.ParticleSystem.ColliderData
function UnityEngine.ParticlePhysicsExtensions.GetTriggerParticles(ps, type, particles, out_colliderData) end
---@overload fun(ps: UnityEngine.ParticleSystem, type: UnityEngine.ParticleSystemTriggerEventType, particles: System.Collections.Generic.List, offset: number, count: number)
---@param ps UnityEngine.ParticleSystem
---@param type UnityEngine.ParticleSystemTriggerEventType
---@param particles System.Collections.Generic.List
function UnityEngine.ParticlePhysicsExtensions.SetTriggerParticles(ps, type, particles) end

---@class UnityEngine.ParticleCollisionEvent : System.ValueType
---@field intersection UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field velocity UnityEngine.Vector3
---@field colliderComponent UnityEngine.Component
UnityEngine.ParticleCollisionEvent = {}
---@alias CS.UnityEngine.ParticleCollisionEvent UnityEngine.ParticleCollisionEvent
CS.UnityEngine.ParticleCollisionEvent = UnityEngine.ParticleCollisionEvent


---@class UnityEngine.ParticleSystemRenderMode
---@field Billboard UnityEngine.ParticleSystemRenderMode
---@field Stretch UnityEngine.ParticleSystemRenderMode
---@field HorizontalBillboard UnityEngine.ParticleSystemRenderMode
---@field VerticalBillboard UnityEngine.ParticleSystemRenderMode
---@field Mesh UnityEngine.ParticleSystemRenderMode
---@field None UnityEngine.ParticleSystemRenderMode
UnityEngine.ParticleSystemRenderMode = {}
---@alias CS.UnityEngine.ParticleSystemRenderMode UnityEngine.ParticleSystemRenderMode
CS.UnityEngine.ParticleSystemRenderMode = UnityEngine.ParticleSystemRenderMode


---@class UnityEngine.ParticleSystemMeshDistribution
---@field UniformRandom UnityEngine.ParticleSystemMeshDistribution
---@field NonUniformRandom UnityEngine.ParticleSystemMeshDistribution
UnityEngine.ParticleSystemMeshDistribution = {}
---@alias CS.UnityEngine.ParticleSystemMeshDistribution UnityEngine.ParticleSystemMeshDistribution
CS.UnityEngine.ParticleSystemMeshDistribution = UnityEngine.ParticleSystemMeshDistribution


---@class UnityEngine.ParticleSystemSortMode
---@field None UnityEngine.ParticleSystemSortMode
---@field Distance UnityEngine.ParticleSystemSortMode
---@field OldestInFront UnityEngine.ParticleSystemSortMode
---@field YoungestInFront UnityEngine.ParticleSystemSortMode
---@field Depth UnityEngine.ParticleSystemSortMode
---@field DistanceReverse UnityEngine.ParticleSystemSortMode
---@field DepthReverse UnityEngine.ParticleSystemSortMode
UnityEngine.ParticleSystemSortMode = {}
---@alias CS.UnityEngine.ParticleSystemSortMode UnityEngine.ParticleSystemSortMode
CS.UnityEngine.ParticleSystemSortMode = UnityEngine.ParticleSystemSortMode


---@class UnityEngine.ParticleSystemCollisionQuality
---@field High UnityEngine.ParticleSystemCollisionQuality
---@field Medium UnityEngine.ParticleSystemCollisionQuality
---@field Low UnityEngine.ParticleSystemCollisionQuality
UnityEngine.ParticleSystemCollisionQuality = {}
---@alias CS.UnityEngine.ParticleSystemCollisionQuality UnityEngine.ParticleSystemCollisionQuality
CS.UnityEngine.ParticleSystemCollisionQuality = UnityEngine.ParticleSystemCollisionQuality


---@class UnityEngine.ParticleSystemRenderSpace
---@field View UnityEngine.ParticleSystemRenderSpace
---@field World UnityEngine.ParticleSystemRenderSpace
---@field Local UnityEngine.ParticleSystemRenderSpace
---@field Facing UnityEngine.ParticleSystemRenderSpace
---@field Velocity UnityEngine.ParticleSystemRenderSpace
UnityEngine.ParticleSystemRenderSpace = {}
---@alias CS.UnityEngine.ParticleSystemRenderSpace UnityEngine.ParticleSystemRenderSpace
CS.UnityEngine.ParticleSystemRenderSpace = UnityEngine.ParticleSystemRenderSpace


---@class UnityEngine.ParticleSystemCurveMode
---@field Constant UnityEngine.ParticleSystemCurveMode
---@field Curve UnityEngine.ParticleSystemCurveMode
---@field TwoCurves UnityEngine.ParticleSystemCurveMode
---@field TwoConstants UnityEngine.ParticleSystemCurveMode
UnityEngine.ParticleSystemCurveMode = {}
---@alias CS.UnityEngine.ParticleSystemCurveMode UnityEngine.ParticleSystemCurveMode
CS.UnityEngine.ParticleSystemCurveMode = UnityEngine.ParticleSystemCurveMode


---@class UnityEngine.ParticleSystemGradientMode
---@field Color UnityEngine.ParticleSystemGradientMode
---@field Gradient UnityEngine.ParticleSystemGradientMode
---@field TwoColors UnityEngine.ParticleSystemGradientMode
---@field TwoGradients UnityEngine.ParticleSystemGradientMode
---@field RandomColor UnityEngine.ParticleSystemGradientMode
UnityEngine.ParticleSystemGradientMode = {}
---@alias CS.UnityEngine.ParticleSystemGradientMode UnityEngine.ParticleSystemGradientMode
CS.UnityEngine.ParticleSystemGradientMode = UnityEngine.ParticleSystemGradientMode


---@class UnityEngine.ParticleSystemShapeType
---@field Sphere UnityEngine.ParticleSystemShapeType
---@field Hemisphere UnityEngine.ParticleSystemShapeType
---@field Cone UnityEngine.ParticleSystemShapeType
---@field Box UnityEngine.ParticleSystemShapeType
---@field Mesh UnityEngine.ParticleSystemShapeType
---@field ConeVolume UnityEngine.ParticleSystemShapeType
---@field Circle UnityEngine.ParticleSystemShapeType
---@field SingleSidedEdge UnityEngine.ParticleSystemShapeType
---@field MeshRenderer UnityEngine.ParticleSystemShapeType
---@field SkinnedMeshRenderer UnityEngine.ParticleSystemShapeType
---@field BoxShell UnityEngine.ParticleSystemShapeType
---@field BoxEdge UnityEngine.ParticleSystemShapeType
---@field Donut UnityEngine.ParticleSystemShapeType
---@field Rectangle UnityEngine.ParticleSystemShapeType
---@field Sprite UnityEngine.ParticleSystemShapeType
---@field SpriteRenderer UnityEngine.ParticleSystemShapeType
UnityEngine.ParticleSystemShapeType = {}
---@alias CS.UnityEngine.ParticleSystemShapeType UnityEngine.ParticleSystemShapeType
CS.UnityEngine.ParticleSystemShapeType = UnityEngine.ParticleSystemShapeType


---@class UnityEngine.ParticleSystemMeshShapeType
---@field Vertex UnityEngine.ParticleSystemMeshShapeType
---@field Edge UnityEngine.ParticleSystemMeshShapeType
---@field Triangle UnityEngine.ParticleSystemMeshShapeType
UnityEngine.ParticleSystemMeshShapeType = {}
---@alias CS.UnityEngine.ParticleSystemMeshShapeType UnityEngine.ParticleSystemMeshShapeType
CS.UnityEngine.ParticleSystemMeshShapeType = UnityEngine.ParticleSystemMeshShapeType


---@class UnityEngine.ParticleSystemShapeTextureChannel
---@field Red UnityEngine.ParticleSystemShapeTextureChannel
---@field Green UnityEngine.ParticleSystemShapeTextureChannel
---@field Blue UnityEngine.ParticleSystemShapeTextureChannel
---@field Alpha UnityEngine.ParticleSystemShapeTextureChannel
UnityEngine.ParticleSystemShapeTextureChannel = {}
---@alias CS.UnityEngine.ParticleSystemShapeTextureChannel UnityEngine.ParticleSystemShapeTextureChannel
CS.UnityEngine.ParticleSystemShapeTextureChannel = UnityEngine.ParticleSystemShapeTextureChannel


---@class UnityEngine.ParticleSystemAnimationMode
---@field Grid UnityEngine.ParticleSystemAnimationMode
---@field Sprites UnityEngine.ParticleSystemAnimationMode
UnityEngine.ParticleSystemAnimationMode = {}
---@alias CS.UnityEngine.ParticleSystemAnimationMode UnityEngine.ParticleSystemAnimationMode
CS.UnityEngine.ParticleSystemAnimationMode = UnityEngine.ParticleSystemAnimationMode


---@class UnityEngine.ParticleSystemAnimationTimeMode
---@field Lifetime UnityEngine.ParticleSystemAnimationTimeMode
---@field Speed UnityEngine.ParticleSystemAnimationTimeMode
---@field FPS UnityEngine.ParticleSystemAnimationTimeMode
UnityEngine.ParticleSystemAnimationTimeMode = {}
---@alias CS.UnityEngine.ParticleSystemAnimationTimeMode UnityEngine.ParticleSystemAnimationTimeMode
CS.UnityEngine.ParticleSystemAnimationTimeMode = UnityEngine.ParticleSystemAnimationTimeMode


---@class UnityEngine.ParticleSystemAnimationType
---@field WholeSheet UnityEngine.ParticleSystemAnimationType
---@field SingleRow UnityEngine.ParticleSystemAnimationType
UnityEngine.ParticleSystemAnimationType = {}
---@alias CS.UnityEngine.ParticleSystemAnimationType UnityEngine.ParticleSystemAnimationType
CS.UnityEngine.ParticleSystemAnimationType = UnityEngine.ParticleSystemAnimationType


---@class UnityEngine.ParticleSystemAnimationRowMode
---@field Custom UnityEngine.ParticleSystemAnimationRowMode
---@field Random UnityEngine.ParticleSystemAnimationRowMode
---@field MeshIndex UnityEngine.ParticleSystemAnimationRowMode
UnityEngine.ParticleSystemAnimationRowMode = {}
---@alias CS.UnityEngine.ParticleSystemAnimationRowMode UnityEngine.ParticleSystemAnimationRowMode
CS.UnityEngine.ParticleSystemAnimationRowMode = UnityEngine.ParticleSystemAnimationRowMode


---@class UnityEngine.ParticleSystemCollisionType
---@field Planes UnityEngine.ParticleSystemCollisionType
---@field World UnityEngine.ParticleSystemCollisionType
UnityEngine.ParticleSystemCollisionType = {}
---@alias CS.UnityEngine.ParticleSystemCollisionType UnityEngine.ParticleSystemCollisionType
CS.UnityEngine.ParticleSystemCollisionType = UnityEngine.ParticleSystemCollisionType


---@class UnityEngine.ParticleSystemCollisionMode
---@field Collision3D UnityEngine.ParticleSystemCollisionMode
---@field Collision2D UnityEngine.ParticleSystemCollisionMode
UnityEngine.ParticleSystemCollisionMode = {}
---@alias CS.UnityEngine.ParticleSystemCollisionMode UnityEngine.ParticleSystemCollisionMode
CS.UnityEngine.ParticleSystemCollisionMode = UnityEngine.ParticleSystemCollisionMode


---@class UnityEngine.ParticleSystemOverlapAction
---@field Ignore UnityEngine.ParticleSystemOverlapAction
---@field Kill UnityEngine.ParticleSystemOverlapAction
---@field Callback UnityEngine.ParticleSystemOverlapAction
UnityEngine.ParticleSystemOverlapAction = {}
---@alias CS.UnityEngine.ParticleSystemOverlapAction UnityEngine.ParticleSystemOverlapAction
CS.UnityEngine.ParticleSystemOverlapAction = UnityEngine.ParticleSystemOverlapAction


---@class UnityEngine.ParticleSystemColliderQueryMode
---@field Disabled UnityEngine.ParticleSystemColliderQueryMode
---@field One UnityEngine.ParticleSystemColliderQueryMode
---@field All UnityEngine.ParticleSystemColliderQueryMode
UnityEngine.ParticleSystemColliderQueryMode = {}
---@alias CS.UnityEngine.ParticleSystemColliderQueryMode UnityEngine.ParticleSystemColliderQueryMode
CS.UnityEngine.ParticleSystemColliderQueryMode = UnityEngine.ParticleSystemColliderQueryMode


---@class UnityEngine.ParticleSystemSimulationSpace
---@field Local UnityEngine.ParticleSystemSimulationSpace
---@field World UnityEngine.ParticleSystemSimulationSpace
---@field Custom UnityEngine.ParticleSystemSimulationSpace
UnityEngine.ParticleSystemSimulationSpace = {}
---@alias CS.UnityEngine.ParticleSystemSimulationSpace UnityEngine.ParticleSystemSimulationSpace
CS.UnityEngine.ParticleSystemSimulationSpace = UnityEngine.ParticleSystemSimulationSpace


---@class UnityEngine.ParticleSystemStopBehavior
---@field StopEmittingAndClear UnityEngine.ParticleSystemStopBehavior
---@field StopEmitting UnityEngine.ParticleSystemStopBehavior
UnityEngine.ParticleSystemStopBehavior = {}
---@alias CS.UnityEngine.ParticleSystemStopBehavior UnityEngine.ParticleSystemStopBehavior
CS.UnityEngine.ParticleSystemStopBehavior = UnityEngine.ParticleSystemStopBehavior


---@class UnityEngine.ParticleSystemScalingMode
---@field Hierarchy UnityEngine.ParticleSystemScalingMode
---@field Local UnityEngine.ParticleSystemScalingMode
---@field Shape UnityEngine.ParticleSystemScalingMode
UnityEngine.ParticleSystemScalingMode = {}
---@alias CS.UnityEngine.ParticleSystemScalingMode UnityEngine.ParticleSystemScalingMode
CS.UnityEngine.ParticleSystemScalingMode = UnityEngine.ParticleSystemScalingMode


---@class UnityEngine.ParticleSystemStopAction
---@field None UnityEngine.ParticleSystemStopAction
---@field Disable UnityEngine.ParticleSystemStopAction
---@field Destroy UnityEngine.ParticleSystemStopAction
---@field Callback UnityEngine.ParticleSystemStopAction
UnityEngine.ParticleSystemStopAction = {}
---@alias CS.UnityEngine.ParticleSystemStopAction UnityEngine.ParticleSystemStopAction
CS.UnityEngine.ParticleSystemStopAction = UnityEngine.ParticleSystemStopAction


---@class UnityEngine.ParticleSystemCullingMode
---@field Automatic UnityEngine.ParticleSystemCullingMode
---@field PauseAndCatchup UnityEngine.ParticleSystemCullingMode
---@field Pause UnityEngine.ParticleSystemCullingMode
---@field AlwaysSimulate UnityEngine.ParticleSystemCullingMode
UnityEngine.ParticleSystemCullingMode = {}
---@alias CS.UnityEngine.ParticleSystemCullingMode UnityEngine.ParticleSystemCullingMode
CS.UnityEngine.ParticleSystemCullingMode = UnityEngine.ParticleSystemCullingMode


---@class UnityEngine.ParticleSystemEmitterVelocityMode
---@field Transform UnityEngine.ParticleSystemEmitterVelocityMode
---@field Rigidbody UnityEngine.ParticleSystemEmitterVelocityMode
---@field Custom UnityEngine.ParticleSystemEmitterVelocityMode
UnityEngine.ParticleSystemEmitterVelocityMode = {}
---@alias CS.UnityEngine.ParticleSystemEmitterVelocityMode UnityEngine.ParticleSystemEmitterVelocityMode
CS.UnityEngine.ParticleSystemEmitterVelocityMode = UnityEngine.ParticleSystemEmitterVelocityMode


---@class UnityEngine.ParticleSystemGravitySource
---@field Physics3D UnityEngine.ParticleSystemGravitySource
---@field Physics2D UnityEngine.ParticleSystemGravitySource
UnityEngine.ParticleSystemGravitySource = {}
---@alias CS.UnityEngine.ParticleSystemGravitySource UnityEngine.ParticleSystemGravitySource
CS.UnityEngine.ParticleSystemGravitySource = UnityEngine.ParticleSystemGravitySource


---@class UnityEngine.ParticleSystemInheritVelocityMode
---@field Initial UnityEngine.ParticleSystemInheritVelocityMode
---@field Current UnityEngine.ParticleSystemInheritVelocityMode
UnityEngine.ParticleSystemInheritVelocityMode = {}
---@alias CS.UnityEngine.ParticleSystemInheritVelocityMode UnityEngine.ParticleSystemInheritVelocityMode
CS.UnityEngine.ParticleSystemInheritVelocityMode = UnityEngine.ParticleSystemInheritVelocityMode


---@class UnityEngine.ParticleSystemTriggerEventType
---@field Inside UnityEngine.ParticleSystemTriggerEventType
---@field Outside UnityEngine.ParticleSystemTriggerEventType
---@field Enter UnityEngine.ParticleSystemTriggerEventType
---@field Exit UnityEngine.ParticleSystemTriggerEventType
UnityEngine.ParticleSystemTriggerEventType = {}
---@alias CS.UnityEngine.ParticleSystemTriggerEventType UnityEngine.ParticleSystemTriggerEventType
CS.UnityEngine.ParticleSystemTriggerEventType = UnityEngine.ParticleSystemTriggerEventType


---@class UnityEngine.ParticleSystemVertexStream
---@field Position UnityEngine.ParticleSystemVertexStream
---@field Normal UnityEngine.ParticleSystemVertexStream
---@field Tangent UnityEngine.ParticleSystemVertexStream
---@field Color UnityEngine.ParticleSystemVertexStream
---@field UV UnityEngine.ParticleSystemVertexStream
---@field UV2 UnityEngine.ParticleSystemVertexStream
---@field UV3 UnityEngine.ParticleSystemVertexStream
---@field UV4 UnityEngine.ParticleSystemVertexStream
---@field AnimBlend UnityEngine.ParticleSystemVertexStream
---@field AnimFrame UnityEngine.ParticleSystemVertexStream
---@field Center UnityEngine.ParticleSystemVertexStream
---@field VertexID UnityEngine.ParticleSystemVertexStream
---@field SizeX UnityEngine.ParticleSystemVertexStream
---@field SizeXY UnityEngine.ParticleSystemVertexStream
---@field SizeXYZ UnityEngine.ParticleSystemVertexStream
---@field Rotation UnityEngine.ParticleSystemVertexStream
---@field Rotation3D UnityEngine.ParticleSystemVertexStream
---@field RotationSpeed UnityEngine.ParticleSystemVertexStream
---@field RotationSpeed3D UnityEngine.ParticleSystemVertexStream
---@field Velocity UnityEngine.ParticleSystemVertexStream
---@field Speed UnityEngine.ParticleSystemVertexStream
---@field AgePercent UnityEngine.ParticleSystemVertexStream
---@field InvStartLifetime UnityEngine.ParticleSystemVertexStream
---@field StableRandomX UnityEngine.ParticleSystemVertexStream
---@field StableRandomXY UnityEngine.ParticleSystemVertexStream
---@field StableRandomXYZ UnityEngine.ParticleSystemVertexStream
---@field StableRandomXYZW UnityEngine.ParticleSystemVertexStream
---@field VaryingRandomX UnityEngine.ParticleSystemVertexStream
---@field VaryingRandomXY UnityEngine.ParticleSystemVertexStream
---@field VaryingRandomXYZ UnityEngine.ParticleSystemVertexStream
---@field VaryingRandomXYZW UnityEngine.ParticleSystemVertexStream
---@field Custom1X UnityEngine.ParticleSystemVertexStream
---@field Custom1XY UnityEngine.ParticleSystemVertexStream
---@field Custom1XYZ UnityEngine.ParticleSystemVertexStream
---@field Custom1XYZW UnityEngine.ParticleSystemVertexStream
---@field Custom2X UnityEngine.ParticleSystemVertexStream
---@field Custom2XY UnityEngine.ParticleSystemVertexStream
---@field Custom2XYZ UnityEngine.ParticleSystemVertexStream
---@field Custom2XYZW UnityEngine.ParticleSystemVertexStream
---@field NoiseSumX UnityEngine.ParticleSystemVertexStream
---@field NoiseSumXY UnityEngine.ParticleSystemVertexStream
---@field NoiseSumXYZ UnityEngine.ParticleSystemVertexStream
---@field NoiseImpulseX UnityEngine.ParticleSystemVertexStream
---@field NoiseImpulseXY UnityEngine.ParticleSystemVertexStream
---@field NoiseImpulseXYZ UnityEngine.ParticleSystemVertexStream
---@field MeshIndex UnityEngine.ParticleSystemVertexStream
---@field ParticleIndex UnityEngine.ParticleSystemVertexStream
---@field ColorPackedAsTwoFloats UnityEngine.ParticleSystemVertexStream
---@field MeshAxisOfRotation UnityEngine.ParticleSystemVertexStream
---@field NextTrailCenter UnityEngine.ParticleSystemVertexStream
---@field PreviousTrailCenter UnityEngine.ParticleSystemVertexStream
---@field PercentageAlongTrail UnityEngine.ParticleSystemVertexStream
---@field TrailWidth UnityEngine.ParticleSystemVertexStream
UnityEngine.ParticleSystemVertexStream = {}
---@alias CS.UnityEngine.ParticleSystemVertexStream UnityEngine.ParticleSystemVertexStream
CS.UnityEngine.ParticleSystemVertexStream = UnityEngine.ParticleSystemVertexStream


---@class UnityEngine.ParticleSystemCustomData
---@field Custom1 UnityEngine.ParticleSystemCustomData
---@field Custom2 UnityEngine.ParticleSystemCustomData
UnityEngine.ParticleSystemCustomData = {}
---@alias CS.UnityEngine.ParticleSystemCustomData UnityEngine.ParticleSystemCustomData
CS.UnityEngine.ParticleSystemCustomData = UnityEngine.ParticleSystemCustomData


---@class UnityEngine.ParticleSystemCustomDataMode
---@field Disabled UnityEngine.ParticleSystemCustomDataMode
---@field Vector UnityEngine.ParticleSystemCustomDataMode
---@field Color UnityEngine.ParticleSystemCustomDataMode
UnityEngine.ParticleSystemCustomDataMode = {}
---@alias CS.UnityEngine.ParticleSystemCustomDataMode UnityEngine.ParticleSystemCustomDataMode
CS.UnityEngine.ParticleSystemCustomDataMode = UnityEngine.ParticleSystemCustomDataMode


---@class UnityEngine.ParticleSystemNoiseQuality
---@field Low UnityEngine.ParticleSystemNoiseQuality
---@field Medium UnityEngine.ParticleSystemNoiseQuality
---@field High UnityEngine.ParticleSystemNoiseQuality
UnityEngine.ParticleSystemNoiseQuality = {}
---@alias CS.UnityEngine.ParticleSystemNoiseQuality UnityEngine.ParticleSystemNoiseQuality
CS.UnityEngine.ParticleSystemNoiseQuality = UnityEngine.ParticleSystemNoiseQuality


---@class UnityEngine.ParticleSystemSubEmitterType
---@field Birth UnityEngine.ParticleSystemSubEmitterType
---@field Collision UnityEngine.ParticleSystemSubEmitterType
---@field Death UnityEngine.ParticleSystemSubEmitterType
---@field Trigger UnityEngine.ParticleSystemSubEmitterType
---@field Manual UnityEngine.ParticleSystemSubEmitterType
UnityEngine.ParticleSystemSubEmitterType = {}
---@alias CS.UnityEngine.ParticleSystemSubEmitterType UnityEngine.ParticleSystemSubEmitterType
CS.UnityEngine.ParticleSystemSubEmitterType = UnityEngine.ParticleSystemSubEmitterType


---@class UnityEngine.ParticleSystemSubEmitterProperties
---@field InheritNothing UnityEngine.ParticleSystemSubEmitterProperties
---@field InheritEverything UnityEngine.ParticleSystemSubEmitterProperties
---@field InheritColor UnityEngine.ParticleSystemSubEmitterProperties
---@field InheritSize UnityEngine.ParticleSystemSubEmitterProperties
---@field InheritRotation UnityEngine.ParticleSystemSubEmitterProperties
---@field InheritLifetime UnityEngine.ParticleSystemSubEmitterProperties
---@field InheritDuration UnityEngine.ParticleSystemSubEmitterProperties
UnityEngine.ParticleSystemSubEmitterProperties = {}
---@alias CS.UnityEngine.ParticleSystemSubEmitterProperties UnityEngine.ParticleSystemSubEmitterProperties
CS.UnityEngine.ParticleSystemSubEmitterProperties = UnityEngine.ParticleSystemSubEmitterProperties


---@class UnityEngine.ParticleSystemTrailMode
---@field PerParticle UnityEngine.ParticleSystemTrailMode
---@field Ribbon UnityEngine.ParticleSystemTrailMode
UnityEngine.ParticleSystemTrailMode = {}
---@alias CS.UnityEngine.ParticleSystemTrailMode UnityEngine.ParticleSystemTrailMode
CS.UnityEngine.ParticleSystemTrailMode = UnityEngine.ParticleSystemTrailMode


---@class UnityEngine.ParticleSystemTrailTextureMode
---@field Stretch UnityEngine.ParticleSystemTrailTextureMode
---@field Tile UnityEngine.ParticleSystemTrailTextureMode
---@field DistributePerSegment UnityEngine.ParticleSystemTrailTextureMode
---@field RepeatPerSegment UnityEngine.ParticleSystemTrailTextureMode
---@field Static UnityEngine.ParticleSystemTrailTextureMode
UnityEngine.ParticleSystemTrailTextureMode = {}
---@alias CS.UnityEngine.ParticleSystemTrailTextureMode UnityEngine.ParticleSystemTrailTextureMode
CS.UnityEngine.ParticleSystemTrailTextureMode = UnityEngine.ParticleSystemTrailTextureMode


---@class UnityEngine.ParticleSystemShapeMultiModeValue
---@field Random UnityEngine.ParticleSystemShapeMultiModeValue
---@field Loop UnityEngine.ParticleSystemShapeMultiModeValue
---@field PingPong UnityEngine.ParticleSystemShapeMultiModeValue
---@field BurstSpread UnityEngine.ParticleSystemShapeMultiModeValue
UnityEngine.ParticleSystemShapeMultiModeValue = {}
---@alias CS.UnityEngine.ParticleSystemShapeMultiModeValue UnityEngine.ParticleSystemShapeMultiModeValue
CS.UnityEngine.ParticleSystemShapeMultiModeValue = UnityEngine.ParticleSystemShapeMultiModeValue


---@class UnityEngine.ParticleSystemRingBufferMode
---@field Disabled UnityEngine.ParticleSystemRingBufferMode
---@field PauseUntilReplaced UnityEngine.ParticleSystemRingBufferMode
---@field LoopUntilReplaced UnityEngine.ParticleSystemRingBufferMode
UnityEngine.ParticleSystemRingBufferMode = {}
---@alias CS.UnityEngine.ParticleSystemRingBufferMode UnityEngine.ParticleSystemRingBufferMode
CS.UnityEngine.ParticleSystemRingBufferMode = UnityEngine.ParticleSystemRingBufferMode


---@class UnityEngine.ParticleSystemGameObjectFilter
---@field LayerMask UnityEngine.ParticleSystemGameObjectFilter
---@field List UnityEngine.ParticleSystemGameObjectFilter
---@field LayerMaskAndList UnityEngine.ParticleSystemGameObjectFilter
UnityEngine.ParticleSystemGameObjectFilter = {}
---@alias CS.UnityEngine.ParticleSystemGameObjectFilter UnityEngine.ParticleSystemGameObjectFilter
CS.UnityEngine.ParticleSystemGameObjectFilter = UnityEngine.ParticleSystemGameObjectFilter


---@class UnityEngine.ParticleSystemForceFieldShape
---@field Sphere UnityEngine.ParticleSystemForceFieldShape
---@field Hemisphere UnityEngine.ParticleSystemForceFieldShape
---@field Cylinder UnityEngine.ParticleSystemForceFieldShape
---@field Box UnityEngine.ParticleSystemForceFieldShape
UnityEngine.ParticleSystemForceFieldShape = {}
---@alias CS.UnityEngine.ParticleSystemForceFieldShape UnityEngine.ParticleSystemForceFieldShape
CS.UnityEngine.ParticleSystemForceFieldShape = UnityEngine.ParticleSystemForceFieldShape


---@class UnityEngine.ParticleSystemBakeMeshOptions
---@field BakeRotationAndScale UnityEngine.ParticleSystemBakeMeshOptions
---@field BakePosition UnityEngine.ParticleSystemBakeMeshOptions
---@field Default UnityEngine.ParticleSystemBakeMeshOptions
UnityEngine.ParticleSystemBakeMeshOptions = {}
---@alias CS.UnityEngine.ParticleSystemBakeMeshOptions UnityEngine.ParticleSystemBakeMeshOptions
CS.UnityEngine.ParticleSystemBakeMeshOptions = UnityEngine.ParticleSystemBakeMeshOptions


---@class UnityEngine.ParticleSystemBakeTextureOptions
---@field BakeRotationAndScale UnityEngine.ParticleSystemBakeTextureOptions
---@field BakePosition UnityEngine.ParticleSystemBakeTextureOptions
---@field PerVertex UnityEngine.ParticleSystemBakeTextureOptions
---@field PerParticle UnityEngine.ParticleSystemBakeTextureOptions
---@field IncludeParticleIndices UnityEngine.ParticleSystemBakeTextureOptions
---@field Default UnityEngine.ParticleSystemBakeTextureOptions
UnityEngine.ParticleSystemBakeTextureOptions = {}
---@alias CS.UnityEngine.ParticleSystemBakeTextureOptions UnityEngine.ParticleSystemBakeTextureOptions
CS.UnityEngine.ParticleSystemBakeTextureOptions = UnityEngine.ParticleSystemBakeTextureOptions


---@class UnityEngine.ParticleSystemVertexStreams
---@field Position UnityEngine.ParticleSystemVertexStreams
---@field Normal UnityEngine.ParticleSystemVertexStreams
---@field Tangent UnityEngine.ParticleSystemVertexStreams
---@field Color UnityEngine.ParticleSystemVertexStreams
---@field UV UnityEngine.ParticleSystemVertexStreams
---@field UV2BlendAndFrame UnityEngine.ParticleSystemVertexStreams
---@field CenterAndVertexID UnityEngine.ParticleSystemVertexStreams
---@field Size UnityEngine.ParticleSystemVertexStreams
---@field Rotation UnityEngine.ParticleSystemVertexStreams
---@field Velocity UnityEngine.ParticleSystemVertexStreams
---@field Lifetime UnityEngine.ParticleSystemVertexStreams
---@field Custom1 UnityEngine.ParticleSystemVertexStreams
---@field Custom2 UnityEngine.ParticleSystemVertexStreams
---@field Random UnityEngine.ParticleSystemVertexStreams
---@field None UnityEngine.ParticleSystemVertexStreams
---@field All UnityEngine.ParticleSystemVertexStreams
UnityEngine.ParticleSystemVertexStreams = {}
---@alias CS.UnityEngine.ParticleSystemVertexStreams UnityEngine.ParticleSystemVertexStreams
CS.UnityEngine.ParticleSystemVertexStreams = UnityEngine.ParticleSystemVertexStreams


---@class UnityEngine.ParticleSystemRenderer : UnityEngine.Renderer
---@field alignment UnityEngine.ParticleSystemRenderSpace
---@field renderMode UnityEngine.ParticleSystemRenderMode
---@field meshDistribution UnityEngine.ParticleSystemMeshDistribution
---@field sortMode UnityEngine.ParticleSystemSortMode
---@field lengthScale number
---@field velocityScale number
---@field cameraVelocityScale number
---@field normalDirection number
---@field shadowBias number
---@field sortingFudge number
---@field minParticleSize number
---@field maxParticleSize number
---@field pivot UnityEngine.Vector3
---@field flip UnityEngine.Vector3
---@field maskInteraction UnityEngine.SpriteMaskInteraction
---@field trailMaterial UnityEngine.Material
---@field enableGPUInstancing boolean
---@field allowRoll boolean
---@field freeformStretching boolean
---@field rotateWithStretchDirection boolean
---@field mesh UnityEngine.Mesh
---@field meshCount number
---@field activeVertexStreamsCount number
---@field activeTrailVertexStreamsCount number
---@field supportsMeshInstancing boolean
UnityEngine.ParticleSystemRenderer = {}
---@alias CS.UnityEngine.ParticleSystemRenderer UnityEngine.ParticleSystemRenderer
CS.UnityEngine.ParticleSystemRenderer = UnityEngine.ParticleSystemRenderer

---@return UnityEngine.ParticleSystemRenderer
function UnityEngine.ParticleSystemRenderer.New() end
---@param out_meshes UnityEngine.Mesh
---@return number,UnityEngine.Mesh
function UnityEngine.ParticleSystemRenderer:GetMeshes(out_meshes) end
---@overload fun(self: UnityEngine.ParticleSystemRenderer, meshes: UnityEngine.Mesh[], size: number)
---@param meshes UnityEngine.Mesh[]
function UnityEngine.ParticleSystemRenderer:SetMeshes(meshes) end
---@param out_weightings number
---@return number,number
function UnityEngine.ParticleSystemRenderer:GetMeshWeightings(out_weightings) end
---@overload fun(self: UnityEngine.ParticleSystemRenderer, weightings: System.Single[], size: number)
---@param weightings System.Single[]
function UnityEngine.ParticleSystemRenderer:SetMeshWeightings(weightings) end
---@overload fun(self: UnityEngine.ParticleSystemRenderer, mesh: UnityEngine.Mesh, options: UnityEngine.ParticleSystemBakeMeshOptions)
---@param mesh UnityEngine.Mesh
---@param camera UnityEngine.Camera
---@param options UnityEngine.ParticleSystemBakeMeshOptions
function UnityEngine.ParticleSystemRenderer:BakeMesh(mesh, camera, options) end
---@overload fun(self: UnityEngine.ParticleSystemRenderer, mesh: UnityEngine.Mesh, options: UnityEngine.ParticleSystemBakeMeshOptions)
---@param mesh UnityEngine.Mesh
---@param camera UnityEngine.Camera
---@param options UnityEngine.ParticleSystemBakeMeshOptions
function UnityEngine.ParticleSystemRenderer:BakeTrailsMesh(mesh, camera, options) end
---@overload fun(self: UnityEngine.ParticleSystemRenderer, ref_verticesTexture: UnityEngine.Texture2D, options: UnityEngine.ParticleSystemBakeTextureOptions) : number, UnityEngine.Texture2D
---@overload fun(self: UnityEngine.ParticleSystemRenderer, ref_verticesTexture: UnityEngine.Texture2D, camera: UnityEngine.Camera, options: UnityEngine.ParticleSystemBakeTextureOptions) : number, UnityEngine.Texture2D
---@overload fun(self: UnityEngine.ParticleSystemRenderer, ref_verticesTexture: UnityEngine.Texture2D, ref_indicesTexture: UnityEngine.Texture2D, options: UnityEngine.ParticleSystemBakeTextureOptions) : number, UnityEngine.Texture2D, UnityEngine.Texture2D
---@param ref_verticesTexture UnityEngine.Texture2D
---@param ref_indicesTexture UnityEngine.Texture2D
---@param camera UnityEngine.Camera
---@param options UnityEngine.ParticleSystemBakeTextureOptions
---@return number,UnityEngine.Texture2D,UnityEngine.Texture2D
function UnityEngine.ParticleSystemRenderer:BakeTexture(ref_verticesTexture, ref_indicesTexture, camera, options) end
---@overload fun(self: UnityEngine.ParticleSystemRenderer, ref_verticesTexture: UnityEngine.Texture2D, ref_indicesTexture: UnityEngine.Texture2D, options: UnityEngine.ParticleSystemBakeTextureOptions) : number, UnityEngine.Texture2D, UnityEngine.Texture2D
---@param ref_verticesTexture UnityEngine.Texture2D
---@param ref_indicesTexture UnityEngine.Texture2D
---@param camera UnityEngine.Camera
---@param options UnityEngine.ParticleSystemBakeTextureOptions
---@return number,UnityEngine.Texture2D,UnityEngine.Texture2D
function UnityEngine.ParticleSystemRenderer:BakeTrailsTexture(ref_verticesTexture, ref_indicesTexture, camera, options) end
---@param streams System.Collections.Generic.List
function UnityEngine.ParticleSystemRenderer:SetActiveVertexStreams(streams) end
---@param streams System.Collections.Generic.List
function UnityEngine.ParticleSystemRenderer:GetActiveVertexStreams(streams) end
---@param streams System.Collections.Generic.List
function UnityEngine.ParticleSystemRenderer:SetActiveTrailVertexStreams(streams) end
---@param streams System.Collections.Generic.List
function UnityEngine.ParticleSystemRenderer:GetActiveTrailVertexStreams(streams) end

---@class UnityEngine.ParticleSystemRenderer.BakeTextureOutput : System.ValueType
UnityEngine.ParticleSystemRenderer.BakeTextureOutput = {}
---@alias CS.UnityEngine.ParticleSystemRenderer.BakeTextureOutput UnityEngine.ParticleSystemRenderer.BakeTextureOutput
CS.UnityEngine.ParticleSystemRenderer.BakeTextureOutput = UnityEngine.ParticleSystemRenderer.BakeTextureOutput


---@class UnityEngine.ParticleSystemExtensionsImpl : System.Object
UnityEngine.ParticleSystemExtensionsImpl = {}
---@alias CS.UnityEngine.ParticleSystemExtensionsImpl UnityEngine.ParticleSystemExtensionsImpl
CS.UnityEngine.ParticleSystemExtensionsImpl = UnityEngine.ParticleSystemExtensionsImpl

---@return UnityEngine.ParticleSystemExtensionsImpl
function UnityEngine.ParticleSystemExtensionsImpl.New() end

---@class UnityEngine.ParticleSystemForceField : UnityEngine.Behaviour
---@field shape UnityEngine.ParticleSystemForceFieldShape
---@field startRange number
---@field endRange number
---@field length number
---@field gravityFocus number
---@field rotationRandomness UnityEngine.Vector2
---@field multiplyDragByParticleSize boolean
---@field multiplyDragByParticleVelocity boolean
---@field vectorField UnityEngine.Texture3D
---@field directionX UnityEngine.ParticleSystem.MinMaxCurve
---@field directionY UnityEngine.ParticleSystem.MinMaxCurve
---@field directionZ UnityEngine.ParticleSystem.MinMaxCurve
---@field gravity UnityEngine.ParticleSystem.MinMaxCurve
---@field rotationSpeed UnityEngine.ParticleSystem.MinMaxCurve
---@field rotationAttraction UnityEngine.ParticleSystem.MinMaxCurve
---@field drag UnityEngine.ParticleSystem.MinMaxCurve
---@field vectorFieldSpeed UnityEngine.ParticleSystem.MinMaxCurve
---@field vectorFieldAttraction UnityEngine.ParticleSystem.MinMaxCurve
UnityEngine.ParticleSystemForceField = {}
---@alias CS.UnityEngine.ParticleSystemForceField UnityEngine.ParticleSystemForceField
CS.UnityEngine.ParticleSystemForceField = UnityEngine.ParticleSystemForceField

---@return UnityEngine.ParticleSystemForceField
function UnityEngine.ParticleSystemForceField.New() end
---@return UnityEngine.ParticleSystemForceField[]
function UnityEngine.ParticleSystemForceField.FindAll() end

---@class UnityEngine.Rendering.UVChannelFlags
---@field UV0 UnityEngine.Rendering.UVChannelFlags
---@field UV1 UnityEngine.Rendering.UVChannelFlags
---@field UV2 UnityEngine.Rendering.UVChannelFlags
---@field UV3 UnityEngine.Rendering.UVChannelFlags
UnityEngine.Rendering.UVChannelFlags = {}
---@alias CS.UnityEngine.Rendering.UVChannelFlags UnityEngine.Rendering.UVChannelFlags
CS.UnityEngine.Rendering.UVChannelFlags = UnityEngine.Rendering.UVChannelFlags


---@class UnityEngine.ParticleSystemJobs.IJobParticleSystem
UnityEngine.ParticleSystemJobs.IJobParticleSystem = {}
---@alias CS.UnityEngine.ParticleSystemJobs.IJobParticleSystem UnityEngine.ParticleSystemJobs.IJobParticleSystem
CS.UnityEngine.ParticleSystemJobs.IJobParticleSystem = UnityEngine.ParticleSystemJobs.IJobParticleSystem

---@param jobData UnityEngine.ParticleSystemJobs.ParticleSystemJobData
function UnityEngine.ParticleSystemJobs.IJobParticleSystem:Execute(jobData) end

---@class UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelFor
UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelFor = {}
---@alias CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelFor UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelFor
CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelFor = UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelFor

---@param jobData UnityEngine.ParticleSystemJobs.ParticleSystemJobData
---@param index number
function UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelFor:Execute(jobData, index) end

---@class UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatch
UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatch = {}
---@alias CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatch UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatch
CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatch = UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatch

---@param jobData UnityEngine.ParticleSystemJobs.ParticleSystemJobData
---@param startIndex number
---@param count number
function UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatch:Execute(jobData, startIndex, count) end

---@class UnityEngine.ParticleSystemJobs.IJobParticleSystemExtensions : System.Object
UnityEngine.ParticleSystemJobs.IJobParticleSystemExtensions = {}
---@alias CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemExtensions UnityEngine.ParticleSystemJobs.IJobParticleSystemExtensions
CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemExtensions = UnityEngine.ParticleSystemJobs.IJobParticleSystemExtensions


---@class UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForExtensions : System.Object
UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForExtensions = {}
---@alias CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForExtensions UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForExtensions
CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForExtensions = UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForExtensions


---@class UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatchExtensions : System.Object
UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatchExtensions = {}
---@alias CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatchExtensions UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatchExtensions
CS.UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatchExtensions = UnityEngine.ParticleSystemJobs.IJobParticleSystemParallelForBatchExtensions


---@class UnityEngine.ParticleSystemJobs.ParticleSystemJobUtility : System.Object
UnityEngine.ParticleSystemJobs.ParticleSystemJobUtility = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobUtility UnityEngine.ParticleSystemJobs.ParticleSystemJobUtility
CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobUtility = UnityEngine.ParticleSystemJobs.ParticleSystemJobUtility


---@class UnityEngine.ParticleSystemJobs.IParticleSystemJobExtensions : System.Object
UnityEngine.ParticleSystemJobs.IParticleSystemJobExtensions = {}
---@alias CS.UnityEngine.ParticleSystemJobs.IParticleSystemJobExtensions UnityEngine.ParticleSystemJobs.IParticleSystemJobExtensions
CS.UnityEngine.ParticleSystemJobs.IParticleSystemJobExtensions = UnityEngine.ParticleSystemJobs.IParticleSystemJobExtensions


---@class UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3 : System.ValueType
---@field x Unity.Collections.NativeArray
---@field y Unity.Collections.NativeArray
---@field z Unity.Collections.NativeArray
---@field Item UnityEngine.Vector3
UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3 = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3 UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3
CS.UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3 = UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3


---@class UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4 : System.ValueType
---@field x Unity.Collections.NativeArray
---@field y Unity.Collections.NativeArray
---@field z Unity.Collections.NativeArray
---@field w Unity.Collections.NativeArray
---@field Item UnityEngine.Vector4
UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4 = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4 UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4
CS.UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4 = UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4


---@class UnityEngine.ParticleSystemJobs.ParticleSystemJobData : System.ValueType
---@field count number
---@field positions UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3
---@field velocities UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3
---@field axisOfRotations UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3
---@field rotations UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3
---@field rotationalSpeeds UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3
---@field sizes UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray3
---@field startColors Unity.Collections.NativeArray
---@field aliveTimePercent Unity.Collections.NativeArray
---@field inverseStartLifetimes Unity.Collections.NativeArray
---@field randomSeeds Unity.Collections.NativeArray
---@field customData1 UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4
---@field customData2 UnityEngine.ParticleSystemJobs.ParticleSystemNativeArray4
---@field meshIndices Unity.Collections.NativeArray
UnityEngine.ParticleSystemJobs.ParticleSystemJobData = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobData UnityEngine.ParticleSystemJobs.ParticleSystemJobData
CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobData = UnityEngine.ParticleSystemJobs.ParticleSystemJobData


---@class UnityEngine.ParticleSystemJobs.NativeParticleData : System.ValueType
UnityEngine.ParticleSystemJobs.NativeParticleData = {}
---@alias CS.UnityEngine.ParticleSystemJobs.NativeParticleData UnityEngine.ParticleSystemJobs.NativeParticleData
CS.UnityEngine.ParticleSystemJobs.NativeParticleData = UnityEngine.ParticleSystemJobs.NativeParticleData


---@class UnityEngine.ParticleSystemJobs.NativeParticleData.Array3 : System.ValueType
UnityEngine.ParticleSystemJobs.NativeParticleData.Array3 = {}
---@alias CS.UnityEngine.ParticleSystemJobs.NativeParticleData.Array3 UnityEngine.ParticleSystemJobs.NativeParticleData.Array3
CS.UnityEngine.ParticleSystemJobs.NativeParticleData.Array3 = UnityEngine.ParticleSystemJobs.NativeParticleData.Array3


---@class UnityEngine.ParticleSystemJobs.NativeParticleData.Array4 : System.ValueType
UnityEngine.ParticleSystemJobs.NativeParticleData.Array4 = {}
---@alias CS.UnityEngine.ParticleSystemJobs.NativeParticleData.Array4 UnityEngine.ParticleSystemJobs.NativeParticleData.Array4
CS.UnityEngine.ParticleSystemJobs.NativeParticleData.Array4 = UnityEngine.ParticleSystemJobs.NativeParticleData.Array4


---@class UnityEngine.ParticleSystemJobs.NativeListData : System.ValueType
---@field system System.Void*
---@field length number
---@field capacity number
UnityEngine.ParticleSystemJobs.NativeListData = {}
---@alias CS.UnityEngine.ParticleSystemJobs.NativeListData UnityEngine.ParticleSystemJobs.NativeListData
CS.UnityEngine.ParticleSystemJobs.NativeListData = UnityEngine.ParticleSystemJobs.NativeListData


---@class UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct : System.ValueType
---@field jobReflectionData Unity.Collections.LowLevel.Unsafe.BurstLike.SharedStatic
UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct
CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct = UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct

function UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.Initialize() end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param unusedPtr System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.Execute(ref_data, listDataPtr, unusedPtr, ref_ranges, jobIndex) end

---@class UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction : System.MulticastDelegate
UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction
CS.UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction = UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction
function UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction.New(object, method) end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param unusedPtr System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction:Invoke(ref_data, listDataPtr, unusedPtr, ref_ranges, jobIndex) end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param unusedPtr System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction:BeginInvoke(ref_data, listDataPtr, unusedPtr, ref_ranges, jobIndex, callback, object) end
---@param ref_data T
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result System.IAsyncResult
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemJobStruct.ExecuteJobFunction:EndInvoke(ref_data, ref_ranges, result) end

---@class UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct : System.ValueType
---@field jobReflectionData Unity.Collections.LowLevel.Unsafe.BurstLike.SharedStatic
UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct
CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct = UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct

function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.Initialize() end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.Execute(ref_data, listDataPtr, bufferRangePatchData, ref_ranges, jobIndex) end

---@class UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction : System.MulticastDelegate
UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction
CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction = UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction.New(object, method) end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction:Invoke(ref_data, listDataPtr, bufferRangePatchData, ref_ranges, jobIndex) end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction:BeginInvoke(ref_data, listDataPtr, bufferRangePatchData, ref_ranges, jobIndex, callback, object) end
---@param ref_data T
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result System.IAsyncResult
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForJobStruct.ExecuteJobFunction:EndInvoke(ref_data, ref_ranges, result) end

---@class UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct : System.ValueType
---@field jobReflectionData Unity.Collections.LowLevel.Unsafe.BurstLike.SharedStatic
UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct
CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct = UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct

function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.Initialize() end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.Execute(ref_data, listDataPtr, bufferRangePatchData, ref_ranges, jobIndex) end

---@class UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction : System.MulticastDelegate
UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction = {}
---@alias CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction
CS.UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction = UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction.New(object, method) end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction:Invoke(ref_data, listDataPtr, bufferRangePatchData, ref_ranges, jobIndex) end
---@param ref_data T
---@param listDataPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction:BeginInvoke(ref_data, listDataPtr, bufferRangePatchData, ref_ranges, jobIndex, callback, object) end
---@param ref_data T
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result System.IAsyncResult
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.ParticleSystemJobs.ParticleSystemParallelForBatchJobStruct.ExecuteJobFunction:EndInvoke(ref_data, ref_ranges, result) end

---@class UnityEngine.Analytics.PerformanceReporting : System.Object
---@field enabled boolean
---@field graphicsInitializationFinishTime number
UnityEngine.Analytics.PerformanceReporting = {}
---@alias CS.UnityEngine.Analytics.PerformanceReporting UnityEngine.Analytics.PerformanceReporting
CS.UnityEngine.Analytics.PerformanceReporting = UnityEngine.Analytics.PerformanceReporting


---@class UnityEngine.RigidbodyConstraints
---@field None UnityEngine.RigidbodyConstraints
---@field FreezePositionX UnityEngine.RigidbodyConstraints
---@field FreezePositionY UnityEngine.RigidbodyConstraints
---@field FreezePositionZ UnityEngine.RigidbodyConstraints
---@field FreezeRotationX UnityEngine.RigidbodyConstraints
---@field FreezeRotationY UnityEngine.RigidbodyConstraints
---@field FreezeRotationZ UnityEngine.RigidbodyConstraints
---@field FreezePosition UnityEngine.RigidbodyConstraints
---@field FreezeRotation UnityEngine.RigidbodyConstraints
---@field FreezeAll UnityEngine.RigidbodyConstraints
UnityEngine.RigidbodyConstraints = {}
---@alias CS.UnityEngine.RigidbodyConstraints UnityEngine.RigidbodyConstraints
CS.UnityEngine.RigidbodyConstraints = UnityEngine.RigidbodyConstraints


---@class UnityEngine.ForceMode
---@field Force UnityEngine.ForceMode
---@field Acceleration UnityEngine.ForceMode
---@field Impulse UnityEngine.ForceMode
---@field VelocityChange UnityEngine.ForceMode
UnityEngine.ForceMode = {}
---@alias CS.UnityEngine.ForceMode UnityEngine.ForceMode
CS.UnityEngine.ForceMode = UnityEngine.ForceMode


---@class UnityEngine.JointProjectionMode
---@field None UnityEngine.JointProjectionMode
---@field PositionAndRotation UnityEngine.JointProjectionMode
UnityEngine.JointProjectionMode = {}
---@alias CS.UnityEngine.JointProjectionMode UnityEngine.JointProjectionMode
CS.UnityEngine.JointProjectionMode = UnityEngine.JointProjectionMode


---@class UnityEngine.MeshColliderCookingOptions
---@field None UnityEngine.MeshColliderCookingOptions
---@field CookForFasterSimulation UnityEngine.MeshColliderCookingOptions
---@field EnableMeshCleaning UnityEngine.MeshColliderCookingOptions
---@field WeldColocatedVertices UnityEngine.MeshColliderCookingOptions
---@field UseFastMidphase UnityEngine.MeshColliderCookingOptions
UnityEngine.MeshColliderCookingOptions = {}
---@alias CS.UnityEngine.MeshColliderCookingOptions UnityEngine.MeshColliderCookingOptions
CS.UnityEngine.MeshColliderCookingOptions = UnityEngine.MeshColliderCookingOptions


---@class UnityEngine.WheelFrictionCurve : System.ValueType
---@field extremumSlip number
---@field extremumValue number
---@field asymptoteSlip number
---@field asymptoteValue number
---@field stiffness number
UnityEngine.WheelFrictionCurve = {}
---@alias CS.UnityEngine.WheelFrictionCurve UnityEngine.WheelFrictionCurve
CS.UnityEngine.WheelFrictionCurve = UnityEngine.WheelFrictionCurve


---@class UnityEngine.SoftJointLimit : System.ValueType
---@field limit number
---@field bounciness number
---@field contactDistance number
UnityEngine.SoftJointLimit = {}
---@alias CS.UnityEngine.SoftJointLimit UnityEngine.SoftJointLimit
CS.UnityEngine.SoftJointLimit = UnityEngine.SoftJointLimit


---@class UnityEngine.SoftJointLimitSpring : System.ValueType
---@field spring number
---@field damper number
UnityEngine.SoftJointLimitSpring = {}
---@alias CS.UnityEngine.SoftJointLimitSpring UnityEngine.SoftJointLimitSpring
CS.UnityEngine.SoftJointLimitSpring = UnityEngine.SoftJointLimitSpring


---@class UnityEngine.JointDrive : System.ValueType
---@field positionSpring number
---@field positionDamper number
---@field maximumForce number
---@field useAcceleration boolean
UnityEngine.JointDrive = {}
---@alias CS.UnityEngine.JointDrive UnityEngine.JointDrive
CS.UnityEngine.JointDrive = UnityEngine.JointDrive


---@class UnityEngine.RigidbodyInterpolation
---@field None UnityEngine.RigidbodyInterpolation
---@field Interpolate UnityEngine.RigidbodyInterpolation
---@field Extrapolate UnityEngine.RigidbodyInterpolation
UnityEngine.RigidbodyInterpolation = {}
---@alias CS.UnityEngine.RigidbodyInterpolation UnityEngine.RigidbodyInterpolation
CS.UnityEngine.RigidbodyInterpolation = UnityEngine.RigidbodyInterpolation


---@class UnityEngine.JointMotor : System.ValueType
---@field targetVelocity number
---@field force number
---@field freeSpin boolean
UnityEngine.JointMotor = {}
---@alias CS.UnityEngine.JointMotor UnityEngine.JointMotor
CS.UnityEngine.JointMotor = UnityEngine.JointMotor


---@class UnityEngine.JointSpring : System.ValueType
---@field spring number
---@field damper number
---@field targetPosition number
UnityEngine.JointSpring = {}
---@alias CS.UnityEngine.JointSpring UnityEngine.JointSpring
CS.UnityEngine.JointSpring = UnityEngine.JointSpring


---@class UnityEngine.JointLimits : System.ValueType
---@field min number
---@field max number
---@field bounciness number
---@field bounceMinVelocity number
---@field contactDistance number
UnityEngine.JointLimits = {}
---@alias CS.UnityEngine.JointLimits UnityEngine.JointLimits
CS.UnityEngine.JointLimits = UnityEngine.JointLimits


---@class UnityEngine.ControllerColliderHit : System.Object
---@field controller UnityEngine.CharacterController
---@field collider UnityEngine.Collider
---@field rigidbody UnityEngine.Rigidbody
---@field gameObject UnityEngine.GameObject
---@field transform UnityEngine.Transform
---@field point UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field moveDirection UnityEngine.Vector3
---@field moveLength number
UnityEngine.ControllerColliderHit = {}
---@alias CS.UnityEngine.ControllerColliderHit UnityEngine.ControllerColliderHit
CS.UnityEngine.ControllerColliderHit = UnityEngine.ControllerColliderHit

---@return UnityEngine.ControllerColliderHit
function UnityEngine.ControllerColliderHit.New() end

---@class UnityEngine.PhysicMaterialCombine
---@field Average UnityEngine.PhysicMaterialCombine
---@field Minimum UnityEngine.PhysicMaterialCombine
---@field Multiply UnityEngine.PhysicMaterialCombine
---@field Maximum UnityEngine.PhysicMaterialCombine
UnityEngine.PhysicMaterialCombine = {}
---@alias CS.UnityEngine.PhysicMaterialCombine UnityEngine.PhysicMaterialCombine
CS.UnityEngine.PhysicMaterialCombine = UnityEngine.PhysicMaterialCombine


---@class UnityEngine.Collision : System.Object
---@field impulse UnityEngine.Vector3
---@field relativeVelocity UnityEngine.Vector3
---@field rigidbody UnityEngine.Rigidbody
---@field articulationBody UnityEngine.ArticulationBody
---@field body UnityEngine.Component
---@field collider UnityEngine.Collider
---@field transform UnityEngine.Transform
---@field gameObject UnityEngine.GameObject
---@field contactCount number
---@field contacts UnityEngine.ContactPoint[]
UnityEngine.Collision = {}
---@alias CS.UnityEngine.Collision UnityEngine.Collision
CS.UnityEngine.Collision = UnityEngine.Collision

---@return UnityEngine.Collision
function UnityEngine.Collision.New() end
---@param index number
---@return UnityEngine.ContactPoint
function UnityEngine.Collision:GetContact(index) end
---@overload fun(self: UnityEngine.Collision, contacts: UnityEngine.ContactPoint[]) : number
---@param contacts System.Collections.Generic.List
---@return number
function UnityEngine.Collision:GetContacts(contacts) end

---@class UnityEngine.CollisionFlags
---@field None UnityEngine.CollisionFlags
---@field Sides UnityEngine.CollisionFlags
---@field Above UnityEngine.CollisionFlags
---@field Below UnityEngine.CollisionFlags
---@field CollidedSides UnityEngine.CollisionFlags
---@field CollidedAbove UnityEngine.CollisionFlags
---@field CollidedBelow UnityEngine.CollisionFlags
UnityEngine.CollisionFlags = {}
---@alias CS.UnityEngine.CollisionFlags UnityEngine.CollisionFlags
CS.UnityEngine.CollisionFlags = UnityEngine.CollisionFlags


---@class UnityEngine.QueryTriggerInteraction
---@field UseGlobal UnityEngine.QueryTriggerInteraction
---@field Ignore UnityEngine.QueryTriggerInteraction
---@field Collide UnityEngine.QueryTriggerInteraction
UnityEngine.QueryTriggerInteraction = {}
---@alias CS.UnityEngine.QueryTriggerInteraction UnityEngine.QueryTriggerInteraction
CS.UnityEngine.QueryTriggerInteraction = UnityEngine.QueryTriggerInteraction


---@class UnityEngine.CollisionDetectionMode
---@field Discrete UnityEngine.CollisionDetectionMode
---@field Continuous UnityEngine.CollisionDetectionMode
---@field ContinuousDynamic UnityEngine.CollisionDetectionMode
---@field ContinuousSpeculative UnityEngine.CollisionDetectionMode
UnityEngine.CollisionDetectionMode = {}
---@alias CS.UnityEngine.CollisionDetectionMode UnityEngine.CollisionDetectionMode
CS.UnityEngine.CollisionDetectionMode = UnityEngine.CollisionDetectionMode


---@class UnityEngine.ConfigurableJointMotion
---@field Locked UnityEngine.ConfigurableJointMotion
---@field Limited UnityEngine.ConfigurableJointMotion
---@field Free UnityEngine.ConfigurableJointMotion
UnityEngine.ConfigurableJointMotion = {}
---@alias CS.UnityEngine.ConfigurableJointMotion UnityEngine.ConfigurableJointMotion
CS.UnityEngine.ConfigurableJointMotion = UnityEngine.ConfigurableJointMotion


---@class UnityEngine.RotationDriveMode
---@field XYAndZ UnityEngine.RotationDriveMode
---@field Slerp UnityEngine.RotationDriveMode
UnityEngine.RotationDriveMode = {}
---@alias CS.UnityEngine.RotationDriveMode UnityEngine.RotationDriveMode
CS.UnityEngine.RotationDriveMode = UnityEngine.RotationDriveMode


---@class UnityEngine.ArticulationJointType
---@field FixedJoint UnityEngine.ArticulationJointType
---@field PrismaticJoint UnityEngine.ArticulationJointType
---@field RevoluteJoint UnityEngine.ArticulationJointType
---@field SphericalJoint UnityEngine.ArticulationJointType
UnityEngine.ArticulationJointType = {}
---@alias CS.UnityEngine.ArticulationJointType UnityEngine.ArticulationJointType
CS.UnityEngine.ArticulationJointType = UnityEngine.ArticulationJointType


---@class UnityEngine.ArticulationDofLock
---@field LockedMotion UnityEngine.ArticulationDofLock
---@field LimitedMotion UnityEngine.ArticulationDofLock
---@field FreeMotion UnityEngine.ArticulationDofLock
UnityEngine.ArticulationDofLock = {}
---@alias CS.UnityEngine.ArticulationDofLock UnityEngine.ArticulationDofLock
CS.UnityEngine.ArticulationDofLock = UnityEngine.ArticulationDofLock


---@class UnityEngine.ArticulationDriveType
---@field Force UnityEngine.ArticulationDriveType
---@field Acceleration UnityEngine.ArticulationDriveType
---@field Target UnityEngine.ArticulationDriveType
---@field Velocity UnityEngine.ArticulationDriveType
UnityEngine.ArticulationDriveType = {}
---@alias CS.UnityEngine.ArticulationDriveType UnityEngine.ArticulationDriveType
CS.UnityEngine.ArticulationDriveType = UnityEngine.ArticulationDriveType


---@class UnityEngine.ArticulationDrive : System.ValueType
---@field lowerLimit number
---@field upperLimit number
---@field stiffness number
---@field damping number
---@field forceLimit number
---@field target number
---@field targetVelocity number
---@field driveType UnityEngine.ArticulationDriveType
UnityEngine.ArticulationDrive = {}
---@alias CS.UnityEngine.ArticulationDrive UnityEngine.ArticulationDrive
CS.UnityEngine.ArticulationDrive = UnityEngine.ArticulationDrive


---@class UnityEngine.ArticulationReducedSpace : System.ValueType
---@field dofCount number
---@field Item number
UnityEngine.ArticulationReducedSpace = {}
---@alias CS.UnityEngine.ArticulationReducedSpace UnityEngine.ArticulationReducedSpace
CS.UnityEngine.ArticulationReducedSpace = UnityEngine.ArticulationReducedSpace

---@overload fun(a: number) : UnityEngine.ArticulationReducedSpace
---@overload fun(a: number, b: number) : UnityEngine.ArticulationReducedSpace
---@param a number
---@param b number
---@param c number
---@return UnityEngine.ArticulationReducedSpace
function UnityEngine.ArticulationReducedSpace.New(a, b, c) end

---@class UnityEngine.ArticulationJacobian : System.ValueType
---@field Item number
---@field rows number
---@field columns number
---@field elements System.Collections.Generic.List
UnityEngine.ArticulationJacobian = {}
---@alias CS.UnityEngine.ArticulationJacobian UnityEngine.ArticulationJacobian
CS.UnityEngine.ArticulationJacobian = UnityEngine.ArticulationJacobian

---@param rows number
---@param cols number
---@return UnityEngine.ArticulationJacobian
function UnityEngine.ArticulationJacobian.New(rows, cols) end

---@class UnityEngine.ArticulationDriveAxis
---@field X UnityEngine.ArticulationDriveAxis
---@field Y UnityEngine.ArticulationDriveAxis
---@field Z UnityEngine.ArticulationDriveAxis
UnityEngine.ArticulationDriveAxis = {}
---@alias CS.UnityEngine.ArticulationDriveAxis UnityEngine.ArticulationDriveAxis
CS.UnityEngine.ArticulationDriveAxis = UnityEngine.ArticulationDriveAxis


---@class UnityEngine.ArticulationBody : UnityEngine.Behaviour
---@field jointType UnityEngine.ArticulationJointType
---@field anchorPosition UnityEngine.Vector3
---@field parentAnchorPosition UnityEngine.Vector3
---@field anchorRotation UnityEngine.Quaternion
---@field parentAnchorRotation UnityEngine.Quaternion
---@field isRoot boolean
---@field matchAnchors boolean
---@field linearLockX UnityEngine.ArticulationDofLock
---@field linearLockY UnityEngine.ArticulationDofLock
---@field linearLockZ UnityEngine.ArticulationDofLock
---@field swingYLock UnityEngine.ArticulationDofLock
---@field swingZLock UnityEngine.ArticulationDofLock
---@field twistLock UnityEngine.ArticulationDofLock
---@field xDrive UnityEngine.ArticulationDrive
---@field yDrive UnityEngine.ArticulationDrive
---@field zDrive UnityEngine.ArticulationDrive
---@field immovable boolean
---@field useGravity boolean
---@field linearDamping number
---@field angularDamping number
---@field jointFriction number
---@field excludeLayers UnityEngine.LayerMask
---@field includeLayers UnityEngine.LayerMask
---@field velocity UnityEngine.Vector3
---@field angularVelocity UnityEngine.Vector3
---@field mass number
---@field automaticCenterOfMass boolean
---@field centerOfMass UnityEngine.Vector3
---@field worldCenterOfMass UnityEngine.Vector3
---@field automaticInertiaTensor boolean
---@field inertiaTensor UnityEngine.Vector3
---@field inertiaTensorRotation UnityEngine.Quaternion
---@field sleepThreshold number
---@field solverIterations number
---@field solverVelocityIterations number
---@field maxAngularVelocity number
---@field maxLinearVelocity number
---@field maxJointVelocity number
---@field maxDepenetrationVelocity number
---@field jointPosition UnityEngine.ArticulationReducedSpace
---@field jointVelocity UnityEngine.ArticulationReducedSpace
---@field jointAcceleration UnityEngine.ArticulationReducedSpace
---@field jointForce UnityEngine.ArticulationReducedSpace
---@field driveForce UnityEngine.ArticulationReducedSpace
---@field dofCount number
---@field index number
---@field collisionDetectionMode UnityEngine.CollisionDetectionMode
UnityEngine.ArticulationBody = {}
---@alias CS.UnityEngine.ArticulationBody UnityEngine.ArticulationBody
CS.UnityEngine.ArticulationBody = UnityEngine.ArticulationBody

---@return UnityEngine.ArticulationBody
function UnityEngine.ArticulationBody.New() end
---@overload fun(self: UnityEngine.ArticulationBody, step: number) : UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.ArticulationBody:GetAccumulatedForce() end
---@overload fun(self: UnityEngine.ArticulationBody, step: number) : UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.ArticulationBody:GetAccumulatedTorque() end
---@overload fun(self: UnityEngine.ArticulationBody, force: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@param force UnityEngine.Vector3
function UnityEngine.ArticulationBody:AddForce(force) end
---@overload fun(self: UnityEngine.ArticulationBody, force: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@param force UnityEngine.Vector3
function UnityEngine.ArticulationBody:AddRelativeForce(force) end
---@overload fun(self: UnityEngine.ArticulationBody, torque: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@param torque UnityEngine.Vector3
function UnityEngine.ArticulationBody:AddTorque(torque) end
---@overload fun(self: UnityEngine.ArticulationBody, torque: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@param torque UnityEngine.Vector3
function UnityEngine.ArticulationBody:AddRelativeTorque(torque) end
---@overload fun(self: UnityEngine.ArticulationBody, force: UnityEngine.Vector3, position: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@param force UnityEngine.Vector3
---@param position UnityEngine.Vector3
function UnityEngine.ArticulationBody:AddForceAtPosition(force, position) end
function UnityEngine.ArticulationBody:ResetCenterOfMass() end
function UnityEngine.ArticulationBody:ResetInertiaTensor() end
function UnityEngine.ArticulationBody:Sleep() end
---@return boolean
function UnityEngine.ArticulationBody:IsSleeping() end
function UnityEngine.ArticulationBody:WakeUp() end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
function UnityEngine.ArticulationBody:TeleportRoot(position, rotation) end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.ArticulationBody:GetClosestPoint(point) end
---@param relativePoint UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.ArticulationBody:GetRelativePointVelocity(relativePoint) end
---@param worldPoint UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.ArticulationBody:GetPointVelocity(worldPoint) end
---@param ref_jacobian UnityEngine.ArticulationJacobian
---@return number,UnityEngine.ArticulationJacobian
function UnityEngine.ArticulationBody:GetDenseJacobian(ref_jacobian) end
---@param positions System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetJointPositions(positions) end
---@param positions System.Collections.Generic.List
function UnityEngine.ArticulationBody:SetJointPositions(positions) end
---@param velocities System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetJointVelocities(velocities) end
---@param velocities System.Collections.Generic.List
function UnityEngine.ArticulationBody:SetJointVelocities(velocities) end
---@param accelerations System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetJointAccelerations(accelerations) end
---@param forces System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetJointForces(forces) end
---@param forces System.Collections.Generic.List
function UnityEngine.ArticulationBody:SetJointForces(forces) end
---@param acceleration UnityEngine.ArticulationReducedSpace
---@return UnityEngine.ArticulationReducedSpace
function UnityEngine.ArticulationBody:GetJointForcesForAcceleration(acceleration) end
---@param forces System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetDriveForces(forces) end
---@param forces System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetJointGravityForces(forces) end
---@param forces System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetJointCoriolisCentrifugalForces(forces) end
---@param forces System.Collections.Generic.List
---@param step number
---@return number
function UnityEngine.ArticulationBody:GetJointExternalForces(forces, step) end
---@param targets System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetDriveTargets(targets) end
---@param targets System.Collections.Generic.List
function UnityEngine.ArticulationBody:SetDriveTargets(targets) end
---@param targetVelocities System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetDriveTargetVelocities(targetVelocities) end
---@param targetVelocities System.Collections.Generic.List
function UnityEngine.ArticulationBody:SetDriveTargetVelocities(targetVelocities) end
---@param dofStartIndices System.Collections.Generic.List
---@return number
function UnityEngine.ArticulationBody:GetDofStartIndices(dofStartIndices) end
---@param axis UnityEngine.ArticulationDriveAxis
---@param value number
function UnityEngine.ArticulationBody:SetDriveTarget(axis, value) end
---@param axis UnityEngine.ArticulationDriveAxis
---@param value number
function UnityEngine.ArticulationBody:SetDriveTargetVelocity(axis, value) end
---@param axis UnityEngine.ArticulationDriveAxis
---@param lower number
---@param upper number
function UnityEngine.ArticulationBody:SetDriveLimits(axis, lower, upper) end
---@param axis UnityEngine.ArticulationDriveAxis
---@param value number
function UnityEngine.ArticulationBody:SetDriveStiffness(axis, value) end
---@param axis UnityEngine.ArticulationDriveAxis
---@param value number
function UnityEngine.ArticulationBody:SetDriveDamping(axis, value) end
---@param axis UnityEngine.ArticulationDriveAxis
---@param value number
function UnityEngine.ArticulationBody:SetDriveForceLimit(axis, value) end
function UnityEngine.ArticulationBody:SnapAnchorToClosestContact() end

---@class UnityEngine.Physics : System.Object
---@field IgnoreRaycastLayer number
---@field DefaultRaycastLayers number
---@field AllLayers number
---@field gravity UnityEngine.Vector3
---@field defaultContactOffset number
---@field sleepThreshold number
---@field queriesHitTriggers boolean
---@field queriesHitBackfaces boolean
---@field bounceThreshold number
---@field defaultMaxDepenetrationVelocity number
---@field defaultSolverIterations number
---@field defaultSolverVelocityIterations number
---@field simulationMode UnityEngine.SimulationMode
---@field defaultMaxAngularSpeed number
---@field improvedPatchFriction boolean
---@field invokeCollisionCallbacks boolean
---@field defaultPhysicsScene UnityEngine.PhysicsScene
---@field autoSyncTransforms boolean
---@field reuseCollisionCallbacks boolean
---@field interCollisionDistance number
---@field interCollisionStiffness number
---@field interCollisionSettingsToggle boolean
---@field clothGravity UnityEngine.Vector3
UnityEngine.Physics = {}
---@alias CS.UnityEngine.Physics UnityEngine.Physics
CS.UnityEngine.Physics = UnityEngine.Physics

---@return UnityEngine.Physics
function UnityEngine.Physics.New() end
---@overload fun(collider1: UnityEngine.Collider, collider2: UnityEngine.Collider, ignore: boolean)
---@param collider1 UnityEngine.Collider
---@param collider2 UnityEngine.Collider
function UnityEngine.Physics.IgnoreCollision(collider1, collider2) end
---@overload fun(layer1: number, layer2: number, ignore: boolean)
---@param layer1 number
---@param layer2 number
function UnityEngine.Physics.IgnoreLayerCollision(layer1, layer2) end
---@param layer1 number
---@param layer2 number
---@return boolean
function UnityEngine.Physics.GetIgnoreLayerCollision(layer1, layer2) end
---@param collider1 UnityEngine.Collider
---@param collider2 UnityEngine.Collider
---@return boolean
function UnityEngine.Physics.GetIgnoreCollision(collider1, collider2) end
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number) : boolean
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, maxDistance: number) : boolean
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3) : boolean
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number) : boolean, UnityEngine.RaycastHit
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number) : boolean, UnityEngine.RaycastHit
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit) : boolean, UnityEngine.RaycastHit
---@overload fun(ray: UnityEngine.Ray, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(ray: UnityEngine.Ray, maxDistance: number, layerMask: number) : boolean
---@overload fun(ray: UnityEngine.Ray, maxDistance: number) : boolean
---@overload fun(ray: UnityEngine.Ray) : boolean
---@overload fun(ray: UnityEngine.Ray, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(ray: UnityEngine.Ray, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number) : boolean, UnityEngine.RaycastHit
---@overload fun(ray: UnityEngine.Ray, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number) : boolean, UnityEngine.RaycastHit
---@param ray UnityEngine.Ray
---@param out_hitInfo UnityEngine.RaycastHit
---@return boolean,UnityEngine.RaycastHit
function UnityEngine.Physics.Raycast(ray, out_hitInfo) end
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, layerMask: number) : boolean
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3) : boolean
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, layerMask: number) : boolean, UnityEngine.RaycastHit
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@param out_hitInfo UnityEngine.RaycastHit
---@return boolean,UnityEngine.RaycastHit
function UnityEngine.Physics.Linecast(start, _end, out_hitInfo) end
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number) : boolean
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number) : boolean
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3) : boolean
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number) : boolean, UnityEngine.RaycastHit
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number) : boolean, UnityEngine.RaycastHit
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius number
---@param direction UnityEngine.Vector3
---@param out_hitInfo UnityEngine.RaycastHit
---@return boolean,UnityEngine.RaycastHit
function UnityEngine.Physics.CapsuleCast(point1, point2, radius, direction, out_hitInfo) end
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number) : boolean, UnityEngine.RaycastHit
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number) : boolean, UnityEngine.RaycastHit
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit) : boolean, UnityEngine.RaycastHit
---@overload fun(ray: UnityEngine.Ray, radius: number, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(ray: UnityEngine.Ray, radius: number, maxDistance: number, layerMask: number) : boolean
---@overload fun(ray: UnityEngine.Ray, radius: number, maxDistance: number) : boolean
---@overload fun(ray: UnityEngine.Ray, radius: number) : boolean
---@overload fun(ray: UnityEngine.Ray, radius: number, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(ray: UnityEngine.Ray, radius: number, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number) : boolean, UnityEngine.RaycastHit
---@overload fun(ray: UnityEngine.Ray, radius: number, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number) : boolean, UnityEngine.RaycastHit
---@param ray UnityEngine.Ray
---@param radius number
---@param out_hitInfo UnityEngine.RaycastHit
---@return boolean,UnityEngine.RaycastHit
function UnityEngine.Physics.SphereCast(ray, radius, out_hitInfo) end
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number) : boolean
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, maxDistance: number) : boolean
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion) : boolean
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3) : boolean
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number) : boolean, UnityEngine.RaycastHit
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, orientation: UnityEngine.Quaternion, maxDistance: number) : boolean, UnityEngine.RaycastHit
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, orientation: UnityEngine.Quaternion) : boolean, UnityEngine.RaycastHit
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param out_hitInfo UnityEngine.RaycastHit
---@return boolean,UnityEngine.RaycastHit
function UnityEngine.Physics.BoxCast(center, halfExtents, direction, out_hitInfo) end
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.RaycastHit[]
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number) : UnityEngine.RaycastHit[]
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, maxDistance: number) : UnityEngine.RaycastHit[]
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3) : UnityEngine.RaycastHit[]
---@overload fun(ray: UnityEngine.Ray, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.RaycastHit[]
---@overload fun(ray: UnityEngine.Ray, maxDistance: number, layerMask: number) : UnityEngine.RaycastHit[]
---@overload fun(ray: UnityEngine.Ray, maxDistance: number) : UnityEngine.RaycastHit[]
---@param ray UnityEngine.Ray
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.RaycastAll(ray) end
---@overload fun(ray: UnityEngine.Ray, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(ray: UnityEngine.Ray, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number) : number
---@overload fun(ray: UnityEngine.Ray, results: UnityEngine.RaycastHit[], maxDistance: number) : number
---@overload fun(ray: UnityEngine.Ray, results: UnityEngine.RaycastHit[]) : number
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number) : number
---@overload fun(origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number) : number
---@param origin UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@return number
function UnityEngine.Physics.RaycastNonAlloc(origin, direction, results) end
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.RaycastHit[]
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number) : UnityEngine.RaycastHit[]
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number) : UnityEngine.RaycastHit[]
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius number
---@param direction UnityEngine.Vector3
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.CapsuleCastAll(point1, point2, radius, direction) end
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.RaycastHit[]
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number) : UnityEngine.RaycastHit[]
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, maxDistance: number) : UnityEngine.RaycastHit[]
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3) : UnityEngine.RaycastHit[]
---@overload fun(ray: UnityEngine.Ray, radius: number, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.RaycastHit[]
---@overload fun(ray: UnityEngine.Ray, radius: number, maxDistance: number, layerMask: number) : UnityEngine.RaycastHit[]
---@overload fun(ray: UnityEngine.Ray, radius: number, maxDistance: number) : UnityEngine.RaycastHit[]
---@param ray UnityEngine.Ray
---@param radius number
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.SphereCastAll(ray, radius) end
---@overload fun(point0: UnityEngine.Vector3, point1: UnityEngine.Vector3, radius: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.Collider[]
---@overload fun(point0: UnityEngine.Vector3, point1: UnityEngine.Vector3, radius: number, layerMask: number) : UnityEngine.Collider[]
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius number
---@return UnityEngine.Collider[]
function UnityEngine.Physics.OverlapCapsule(point0, point1, radius) end
---@overload fun(position: UnityEngine.Vector3, radius: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.Collider[]
---@overload fun(position: UnityEngine.Vector3, radius: number, layerMask: number) : UnityEngine.Collider[]
---@param position UnityEngine.Vector3
---@param radius number
---@return UnityEngine.Collider[]
function UnityEngine.Physics.OverlapSphere(position, radius) end
---@param step number
function UnityEngine.Physics.Simulate(step) end
function UnityEngine.Physics.SyncTransforms() end
---@param colliderA UnityEngine.Collider
---@param positionA UnityEngine.Vector3
---@param rotationA UnityEngine.Quaternion
---@param colliderB UnityEngine.Collider
---@param positionB UnityEngine.Vector3
---@param rotationB UnityEngine.Quaternion
---@param out_direction UnityEngine.Vector3
---@param out_distance number
---@return boolean,UnityEngine.Vector3,number
function UnityEngine.Physics.ComputePenetration(colliderA, positionA, rotationA, colliderB, positionB, rotationB, out_direction, out_distance) end
---@param point UnityEngine.Vector3
---@param collider UnityEngine.Collider
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Vector3
function UnityEngine.Physics.ClosestPoint(point, collider, position, rotation) end
---@overload fun(position: UnityEngine.Vector3, radius: number, results: UnityEngine.Collider[], layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(position: UnityEngine.Vector3, radius: number, results: UnityEngine.Collider[], layerMask: number) : number
---@param position UnityEngine.Vector3
---@param radius number
---@param results UnityEngine.Collider[]
---@return number
function UnityEngine.Physics.OverlapSphereNonAlloc(position, radius, results) end
---@overload fun(position: UnityEngine.Vector3, radius: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(position: UnityEngine.Vector3, radius: number, layerMask: number) : boolean
---@param position UnityEngine.Vector3
---@param radius number
---@return boolean
function UnityEngine.Physics.CheckSphere(position, radius) end
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number) : number
---@overload fun(point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number) : number
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius number
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@return number
function UnityEngine.Physics.CapsuleCastNonAlloc(point1, point2, radius, direction, results) end
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number) : number
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], maxDistance: number) : number
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[]) : number
---@overload fun(ray: UnityEngine.Ray, radius: number, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(ray: UnityEngine.Ray, radius: number, results: UnityEngine.RaycastHit[], maxDistance: number, layerMask: number) : number
---@overload fun(ray: UnityEngine.Ray, radius: number, results: UnityEngine.RaycastHit[], maxDistance: number) : number
---@param ray UnityEngine.Ray
---@param radius number
---@param results UnityEngine.RaycastHit[]
---@return number
function UnityEngine.Physics.SphereCastNonAlloc(ray, radius, results) end
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, radius: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, radius: number, layerMask: number) : boolean
---@param start UnityEngine.Vector3
---@param _end UnityEngine.Vector3
---@param radius number
---@return boolean
function UnityEngine.Physics.CheckCapsule(start, _end, radius) end
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, layermask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, layerMask: number) : boolean
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion) : boolean
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@return boolean
function UnityEngine.Physics.CheckBox(center, halfExtents) end
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.Collider[]
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, layerMask: number) : UnityEngine.Collider[]
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion) : UnityEngine.Collider[]
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@return UnityEngine.Collider[]
function UnityEngine.Physics.OverlapBox(center, halfExtents) end
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, results: UnityEngine.Collider[], orientation: UnityEngine.Quaternion, mask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, results: UnityEngine.Collider[], orientation: UnityEngine.Quaternion, mask: number) : number
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, results: UnityEngine.Collider[], orientation: UnityEngine.Quaternion) : number
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param results UnityEngine.Collider[]
---@return number
function UnityEngine.Physics.OverlapBoxNonAlloc(center, halfExtents, results) end
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], orientation: UnityEngine.Quaternion) : number
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], orientation: UnityEngine.Quaternion, maxDistance: number) : number
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number) : number
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@return number
function UnityEngine.Physics.BoxCastNonAlloc(center, halfExtents, direction, results) end
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.RaycastHit[]
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number) : UnityEngine.RaycastHit[]
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, maxDistance: number) : UnityEngine.RaycastHit[]
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, orientation: UnityEngine.Quaternion) : UnityEngine.RaycastHit[]
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@return UnityEngine.RaycastHit[]
function UnityEngine.Physics.BoxCastAll(center, halfExtents, direction) end
---@overload fun(point0: UnityEngine.Vector3, point1: UnityEngine.Vector3, radius: number, results: UnityEngine.Collider[], layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@overload fun(point0: UnityEngine.Vector3, point1: UnityEngine.Vector3, radius: number, results: UnityEngine.Collider[], layerMask: number) : number
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius number
---@param results UnityEngine.Collider[]
---@return number
function UnityEngine.Physics.OverlapCapsuleNonAlloc(point0, point1, radius, results) end
---@param worldBounds UnityEngine.Bounds
---@param subdivisions number
function UnityEngine.Physics.RebuildBroadphaseRegions(worldBounds, subdivisions) end
---@overload fun(meshID: number, convex: boolean, cookingOptions: UnityEngine.MeshColliderCookingOptions)
---@param meshID number
---@param convex boolean
function UnityEngine.Physics.BakeMesh(meshID, convex) end

---@class UnityEngine.Physics.ContactEventDelegate : System.MulticastDelegate
UnityEngine.Physics.ContactEventDelegate = {}
---@alias CS.UnityEngine.Physics.ContactEventDelegate UnityEngine.Physics.ContactEventDelegate
CS.UnityEngine.Physics.ContactEventDelegate = UnityEngine.Physics.ContactEventDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Physics.ContactEventDelegate
function UnityEngine.Physics.ContactEventDelegate.New(object, method) end
---@param scene UnityEngine.PhysicsScene
---@param headerArray Unity.Collections.NativeArray.ReadOnly
function UnityEngine.Physics.ContactEventDelegate:Invoke(scene, headerArray) end
---@param scene UnityEngine.PhysicsScene
---@param headerArray Unity.Collections.NativeArray.ReadOnly
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Physics.ContactEventDelegate:BeginInvoke(scene, headerArray, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Physics.ContactEventDelegate:EndInvoke(result) end

---@class UnityEngine.ModifiableContactPair : System.ValueType
---@field rotation UnityEngine.Quaternion
---@field position UnityEngine.Vector3
---@field otherRotation UnityEngine.Quaternion
---@field otherPosition UnityEngine.Vector3
---@field colliderInstanceID number
---@field otherColliderInstanceID number
---@field bodyInstanceID number
---@field otherBodyInstanceID number
---@field bodyVelocity UnityEngine.Vector3
---@field bodyAngularVelocity UnityEngine.Vector3
---@field otherBodyVelocity UnityEngine.Vector3
---@field otherBodyAngularVelocity UnityEngine.Vector3
---@field contactCount number
---@field massProperties UnityEngine.ModifiableMassProperties
UnityEngine.ModifiableContactPair = {}
---@alias CS.UnityEngine.ModifiableContactPair UnityEngine.ModifiableContactPair
CS.UnityEngine.ModifiableContactPair = UnityEngine.ModifiableContactPair

---@param i number
---@return UnityEngine.Vector3
function UnityEngine.ModifiableContactPair:GetPoint(i) end
---@param i number
---@param v UnityEngine.Vector3
function UnityEngine.ModifiableContactPair:SetPoint(i, v) end
---@param i number
---@return UnityEngine.Vector3
function UnityEngine.ModifiableContactPair:GetNormal(i) end
---@param i number
---@param normal UnityEngine.Vector3
function UnityEngine.ModifiableContactPair:SetNormal(i, normal) end
---@param i number
---@return number
function UnityEngine.ModifiableContactPair:GetSeparation(i) end
---@param i number
---@param separation number
function UnityEngine.ModifiableContactPair:SetSeparation(i, separation) end
---@param i number
---@return UnityEngine.Vector3
function UnityEngine.ModifiableContactPair:GetTargetVelocity(i) end
---@param i number
---@param velocity UnityEngine.Vector3
function UnityEngine.ModifiableContactPair:SetTargetVelocity(i, velocity) end
---@param i number
---@return number
function UnityEngine.ModifiableContactPair:GetBounciness(i) end
---@param i number
---@param bounciness number
function UnityEngine.ModifiableContactPair:SetBounciness(i, bounciness) end
---@param i number
---@return number
function UnityEngine.ModifiableContactPair:GetStaticFriction(i) end
---@param i number
---@param staticFriction number
function UnityEngine.ModifiableContactPair:SetStaticFriction(i, staticFriction) end
---@param i number
---@return number
function UnityEngine.ModifiableContactPair:GetDynamicFriction(i) end
---@param i number
---@param dynamicFriction number
function UnityEngine.ModifiableContactPair:SetDynamicFriction(i, dynamicFriction) end
---@param i number
---@return number
function UnityEngine.ModifiableContactPair:GetMaxImpulse(i) end
---@param i number
---@param value number
function UnityEngine.ModifiableContactPair:SetMaxImpulse(i, value) end
---@param i number
function UnityEngine.ModifiableContactPair:IgnoreContact(i) end
---@param i number
---@return number
function UnityEngine.ModifiableContactPair:GetFaceIndex(i) end

---@class UnityEngine.ModifiableMassProperties : System.ValueType
---@field inverseMassScale number
---@field inverseInertiaScale number
---@field otherInverseMassScale number
---@field otherInverseInertiaScale number
UnityEngine.ModifiableMassProperties = {}
---@alias CS.UnityEngine.ModifiableMassProperties UnityEngine.ModifiableMassProperties
CS.UnityEngine.ModifiableMassProperties = UnityEngine.ModifiableMassProperties


---@class UnityEngine.ModifiableContact : System.ValueType
---@field contact UnityEngine.Vector3
---@field separation number
---@field targetVelocity UnityEngine.Vector3
---@field maxImpulse number
---@field normal UnityEngine.Vector3
---@field restitution number
---@field materialFlags number
---@field materialIndex number
---@field otherMaterialIndex number
---@field staticFriction number
---@field dynamicFriction number
UnityEngine.ModifiableContact = {}
---@alias CS.UnityEngine.ModifiableContact UnityEngine.ModifiableContact
CS.UnityEngine.ModifiableContact = UnityEngine.ModifiableContact


---@class UnityEngine.ModifiableContactPatch : System.ValueType
---@field massProperties UnityEngine.ModifiableMassProperties
---@field normal UnityEngine.Vector3
---@field restitution number
---@field dynamicFriction number
---@field staticFriction number
---@field startContactIndex number
---@field contactCount number
---@field materialFlags number
---@field internalFlags number
---@field materialIndex number
---@field otherMaterialIndex number
UnityEngine.ModifiableContactPatch = {}
---@alias CS.UnityEngine.ModifiableContactPatch UnityEngine.ModifiableContactPatch
CS.UnityEngine.ModifiableContactPatch = UnityEngine.ModifiableContactPatch


---@class UnityEngine.ModifiableContactPatch.Flags
---@field HasFaceIndices UnityEngine.ModifiableContactPatch.Flags
---@field HasModifiedMassRatios UnityEngine.ModifiableContactPatch.Flags
---@field HasTargetVelocity UnityEngine.ModifiableContactPatch.Flags
---@field HasMaxImpulse UnityEngine.ModifiableContactPatch.Flags
---@field RegeneratePatches UnityEngine.ModifiableContactPatch.Flags
UnityEngine.ModifiableContactPatch.Flags = {}
---@alias CS.UnityEngine.ModifiableContactPatch.Flags UnityEngine.ModifiableContactPatch.Flags
CS.UnityEngine.ModifiableContactPatch.Flags = UnityEngine.ModifiableContactPatch.Flags


---@class UnityEngine.PhysicMaterial : UnityEngine.Object
---@field bounciness number
---@field dynamicFriction number
---@field staticFriction number
---@field frictionCombine UnityEngine.PhysicMaterialCombine
---@field bounceCombine UnityEngine.PhysicMaterialCombine
UnityEngine.PhysicMaterial = {}
---@alias CS.UnityEngine.PhysicMaterial UnityEngine.PhysicMaterial
CS.UnityEngine.PhysicMaterial = UnityEngine.PhysicMaterial

---@overload fun() : UnityEngine.PhysicMaterial
---@param name string
---@return UnityEngine.PhysicMaterial
function UnityEngine.PhysicMaterial.New(name) end

---@class UnityEngine.RaycastHit : System.ValueType
---@field collider UnityEngine.Collider
---@field colliderInstanceID number
---@field point UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field barycentricCoordinate UnityEngine.Vector3
---@field distance number
---@field triangleIndex number
---@field textureCoord UnityEngine.Vector2
---@field textureCoord2 UnityEngine.Vector2
---@field transform UnityEngine.Transform
---@field rigidbody UnityEngine.Rigidbody
---@field articulationBody UnityEngine.ArticulationBody
---@field lightmapCoord UnityEngine.Vector2
UnityEngine.RaycastHit = {}
---@alias CS.UnityEngine.RaycastHit UnityEngine.RaycastHit
CS.UnityEngine.RaycastHit = UnityEngine.RaycastHit


---@class UnityEngine.Rigidbody : UnityEngine.Component
---@field velocity UnityEngine.Vector3
---@field angularVelocity UnityEngine.Vector3
---@field drag number
---@field angularDrag number
---@field mass number
---@field useGravity boolean
---@field maxDepenetrationVelocity number
---@field isKinematic boolean
---@field freezeRotation boolean
---@field constraints UnityEngine.RigidbodyConstraints
---@field collisionDetectionMode UnityEngine.CollisionDetectionMode
---@field automaticCenterOfMass boolean
---@field centerOfMass UnityEngine.Vector3
---@field worldCenterOfMass UnityEngine.Vector3
---@field automaticInertiaTensor boolean
---@field inertiaTensorRotation UnityEngine.Quaternion
---@field inertiaTensor UnityEngine.Vector3
---@field detectCollisions boolean
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field interpolation UnityEngine.RigidbodyInterpolation
---@field solverIterations number
---@field sleepThreshold number
---@field maxAngularVelocity number
---@field maxLinearVelocity number
---@field solverVelocityIterations number
---@field excludeLayers UnityEngine.LayerMask
---@field includeLayers UnityEngine.LayerMask
UnityEngine.Rigidbody = {}
---@alias CS.UnityEngine.Rigidbody UnityEngine.Rigidbody
CS.UnityEngine.Rigidbody = UnityEngine.Rigidbody

---@return UnityEngine.Rigidbody
function UnityEngine.Rigidbody.New() end
---@param density number
function UnityEngine.Rigidbody:SetDensity(density) end
---@param position UnityEngine.Vector3
function UnityEngine.Rigidbody:MovePosition(position) end
---@param rot UnityEngine.Quaternion
function UnityEngine.Rigidbody:MoveRotation(rot) end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
function UnityEngine.Rigidbody:Move(position, rotation) end
function UnityEngine.Rigidbody:Sleep() end
---@return boolean
function UnityEngine.Rigidbody:IsSleeping() end
function UnityEngine.Rigidbody:WakeUp() end
function UnityEngine.Rigidbody:ResetCenterOfMass() end
function UnityEngine.Rigidbody:ResetInertiaTensor() end
---@param relativePoint UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:GetRelativePointVelocity(relativePoint) end
---@param worldPoint UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:GetPointVelocity(worldPoint) end
---@overload fun(self: UnityEngine.Rigidbody, step: number) : UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:GetAccumulatedForce() end
---@overload fun(self: UnityEngine.Rigidbody, step: number) : UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:GetAccumulatedTorque() end
---@overload fun(self: UnityEngine.Rigidbody, force: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@overload fun(self: UnityEngine.Rigidbody, force: UnityEngine.Vector3)
---@overload fun(self: UnityEngine.Rigidbody, x: number, y: number, z: number, mode: UnityEngine.ForceMode)
---@param x number
---@param y number
---@param z number
function UnityEngine.Rigidbody:AddForce(x, y, z) end
---@overload fun(self: UnityEngine.Rigidbody, force: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@overload fun(self: UnityEngine.Rigidbody, force: UnityEngine.Vector3)
---@overload fun(self: UnityEngine.Rigidbody, x: number, y: number, z: number, mode: UnityEngine.ForceMode)
---@param x number
---@param y number
---@param z number
function UnityEngine.Rigidbody:AddRelativeForce(x, y, z) end
---@overload fun(self: UnityEngine.Rigidbody, torque: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@overload fun(self: UnityEngine.Rigidbody, torque: UnityEngine.Vector3)
---@overload fun(self: UnityEngine.Rigidbody, x: number, y: number, z: number, mode: UnityEngine.ForceMode)
---@param x number
---@param y number
---@param z number
function UnityEngine.Rigidbody:AddTorque(x, y, z) end
---@overload fun(self: UnityEngine.Rigidbody, torque: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@overload fun(self: UnityEngine.Rigidbody, torque: UnityEngine.Vector3)
---@overload fun(self: UnityEngine.Rigidbody, x: number, y: number, z: number, mode: UnityEngine.ForceMode)
---@param x number
---@param y number
---@param z number
function UnityEngine.Rigidbody:AddRelativeTorque(x, y, z) end
---@overload fun(self: UnityEngine.Rigidbody, force: UnityEngine.Vector3, position: UnityEngine.Vector3, mode: UnityEngine.ForceMode)
---@param force UnityEngine.Vector3
---@param position UnityEngine.Vector3
function UnityEngine.Rigidbody:AddForceAtPosition(force, position) end
---@overload fun(self: UnityEngine.Rigidbody, explosionForce: number, explosionPosition: UnityEngine.Vector3, explosionRadius: number, upwardsModifier: number, mode: UnityEngine.ForceMode)
---@overload fun(self: UnityEngine.Rigidbody, explosionForce: number, explosionPosition: UnityEngine.Vector3, explosionRadius: number, upwardsModifier: number)
---@param explosionForce number
---@param explosionPosition UnityEngine.Vector3
---@param explosionRadius number
function UnityEngine.Rigidbody:AddExplosionForce(explosionForce, explosionPosition, explosionRadius) end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Rigidbody:ClosestPointOnBounds(position) end
---@overload fun(self: UnityEngine.Rigidbody, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(self: UnityEngine.Rigidbody, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number) : boolean, UnityEngine.RaycastHit
---@param direction UnityEngine.Vector3
---@param out_hitInfo UnityEngine.RaycastHit
---@return boolean,UnityEngine.RaycastHit
function UnityEngine.Rigidbody:SweepTest(direction, out_hitInfo) end
---@overload fun(self: UnityEngine.Rigidbody, direction: UnityEngine.Vector3, maxDistance: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : UnityEngine.RaycastHit[]
---@overload fun(self: UnityEngine.Rigidbody, direction: UnityEngine.Vector3, maxDistance: number) : UnityEngine.RaycastHit[]
---@param direction UnityEngine.Vector3
---@return UnityEngine.RaycastHit[]
function UnityEngine.Rigidbody:SweepTestAll(direction) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DOMove(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DOMoveX(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DOMoveY(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DOMoveZ(endValue, duration, snapping) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DORotate(endValue, duration, mode) end
---@param towards UnityEngine.Vector3
---@param duration number
---@param axisConstraint DG.Tweening.AxisConstraint
---@param up System.Nullable
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DOLookAt(towards, duration, axisConstraint, up) end
---@param endValue UnityEngine.Vector3
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function UnityEngine.Rigidbody:DOJump(endValue, jumpPower, numJumps, duration, snapping) end
---@param path UnityEngine.Vector3[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DOPath(path, duration, pathType, pathMode, resolution, gizmoColor) end
---@param path UnityEngine.Vector3[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody:DOLocalPath(path, duration, pathType, pathMode, resolution, gizmoColor) end

---@class UnityEngine.Collider : UnityEngine.Component
---@field enabled boolean
---@field attachedRigidbody UnityEngine.Rigidbody
---@field attachedArticulationBody UnityEngine.ArticulationBody
---@field isTrigger boolean
---@field contactOffset number
---@field bounds UnityEngine.Bounds
---@field hasModifiableContacts boolean
---@field providesContacts boolean
---@field layerOverridePriority number
---@field excludeLayers UnityEngine.LayerMask
---@field includeLayers UnityEngine.LayerMask
---@field sharedMaterial UnityEngine.PhysicMaterial
---@field material UnityEngine.PhysicMaterial
UnityEngine.Collider = {}
---@alias CS.UnityEngine.Collider UnityEngine.Collider
CS.UnityEngine.Collider = UnityEngine.Collider

---@return UnityEngine.Collider
function UnityEngine.Collider.New() end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Collider:ClosestPoint(position) end
---@param ray UnityEngine.Ray
---@param out_hitInfo UnityEngine.RaycastHit
---@param maxDistance number
---@return boolean,UnityEngine.RaycastHit
function UnityEngine.Collider:Raycast(ray, out_hitInfo, maxDistance) end
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Collider:ClosestPointOnBounds(position) end

---@class UnityEngine.CharacterController : UnityEngine.Collider
---@field velocity UnityEngine.Vector3
---@field isGrounded boolean
---@field collisionFlags UnityEngine.CollisionFlags
---@field radius number
---@field height number
---@field center UnityEngine.Vector3
---@field slopeLimit number
---@field stepOffset number
---@field skinWidth number
---@field minMoveDistance number
---@field detectCollisions boolean
---@field enableOverlapRecovery boolean
UnityEngine.CharacterController = {}
---@alias CS.UnityEngine.CharacterController UnityEngine.CharacterController
CS.UnityEngine.CharacterController = UnityEngine.CharacterController

---@return UnityEngine.CharacterController
function UnityEngine.CharacterController.New() end
---@param speed UnityEngine.Vector3
---@return boolean
function UnityEngine.CharacterController:SimpleMove(speed) end
---@param motion UnityEngine.Vector3
---@return UnityEngine.CollisionFlags
function UnityEngine.CharacterController:Move(motion) end

---@class UnityEngine.MeshCollider : UnityEngine.Collider
---@field sharedMesh UnityEngine.Mesh
---@field convex boolean
---@field cookingOptions UnityEngine.MeshColliderCookingOptions
UnityEngine.MeshCollider = {}
---@alias CS.UnityEngine.MeshCollider UnityEngine.MeshCollider
CS.UnityEngine.MeshCollider = UnityEngine.MeshCollider

---@return UnityEngine.MeshCollider
function UnityEngine.MeshCollider.New() end

---@class UnityEngine.CapsuleCollider : UnityEngine.Collider
---@field center UnityEngine.Vector3
---@field radius number
---@field height number
---@field direction number
UnityEngine.CapsuleCollider = {}
---@alias CS.UnityEngine.CapsuleCollider UnityEngine.CapsuleCollider
CS.UnityEngine.CapsuleCollider = UnityEngine.CapsuleCollider

---@return UnityEngine.CapsuleCollider
function UnityEngine.CapsuleCollider.New() end

---@class UnityEngine.BoxCollider : UnityEngine.Collider
---@field center UnityEngine.Vector3
---@field size UnityEngine.Vector3
UnityEngine.BoxCollider = {}
---@alias CS.UnityEngine.BoxCollider UnityEngine.BoxCollider
CS.UnityEngine.BoxCollider = UnityEngine.BoxCollider

---@return UnityEngine.BoxCollider
function UnityEngine.BoxCollider.New() end

---@class UnityEngine.SphereCollider : UnityEngine.Collider
---@field center UnityEngine.Vector3
---@field radius number
UnityEngine.SphereCollider = {}
---@alias CS.UnityEngine.SphereCollider UnityEngine.SphereCollider
CS.UnityEngine.SphereCollider = UnityEngine.SphereCollider

---@return UnityEngine.SphereCollider
function UnityEngine.SphereCollider.New() end

---@class UnityEngine.ConstantForce : UnityEngine.Behaviour
---@field force UnityEngine.Vector3
---@field relativeForce UnityEngine.Vector3
---@field torque UnityEngine.Vector3
---@field relativeTorque UnityEngine.Vector3
UnityEngine.ConstantForce = {}
---@alias CS.UnityEngine.ConstantForce UnityEngine.ConstantForce
CS.UnityEngine.ConstantForce = UnityEngine.ConstantForce

---@return UnityEngine.ConstantForce
function UnityEngine.ConstantForce.New() end

---@class UnityEngine.Joint : UnityEngine.Component
---@field connectedBody UnityEngine.Rigidbody
---@field connectedArticulationBody UnityEngine.ArticulationBody
---@field axis UnityEngine.Vector3
---@field anchor UnityEngine.Vector3
---@field connectedAnchor UnityEngine.Vector3
---@field autoConfigureConnectedAnchor boolean
---@field breakForce number
---@field breakTorque number
---@field enableCollision boolean
---@field enablePreprocessing boolean
---@field massScale number
---@field connectedMassScale number
---@field currentForce UnityEngine.Vector3
---@field currentTorque UnityEngine.Vector3
UnityEngine.Joint = {}
---@alias CS.UnityEngine.Joint UnityEngine.Joint
CS.UnityEngine.Joint = UnityEngine.Joint

---@return UnityEngine.Joint
function UnityEngine.Joint.New() end

---@class UnityEngine.HingeJoint : UnityEngine.Joint
---@field motor UnityEngine.JointMotor
---@field limits UnityEngine.JointLimits
---@field spring UnityEngine.JointSpring
---@field useMotor boolean
---@field useLimits boolean
---@field extendedLimits boolean
---@field useSpring boolean
---@field velocity number
---@field angle number
---@field useAcceleration boolean
UnityEngine.HingeJoint = {}
---@alias CS.UnityEngine.HingeJoint UnityEngine.HingeJoint
CS.UnityEngine.HingeJoint = UnityEngine.HingeJoint

---@return UnityEngine.HingeJoint
function UnityEngine.HingeJoint.New() end

---@class UnityEngine.SpringJoint : UnityEngine.Joint
---@field spring number
---@field damper number
---@field minDistance number
---@field maxDistance number
---@field tolerance number
UnityEngine.SpringJoint = {}
---@alias CS.UnityEngine.SpringJoint UnityEngine.SpringJoint
CS.UnityEngine.SpringJoint = UnityEngine.SpringJoint

---@return UnityEngine.SpringJoint
function UnityEngine.SpringJoint.New() end

---@class UnityEngine.FixedJoint : UnityEngine.Joint
UnityEngine.FixedJoint = {}
---@alias CS.UnityEngine.FixedJoint UnityEngine.FixedJoint
CS.UnityEngine.FixedJoint = UnityEngine.FixedJoint

---@return UnityEngine.FixedJoint
function UnityEngine.FixedJoint.New() end

---@class UnityEngine.CharacterJoint : UnityEngine.Joint
---@field swingAxis UnityEngine.Vector3
---@field twistLimitSpring UnityEngine.SoftJointLimitSpring
---@field swingLimitSpring UnityEngine.SoftJointLimitSpring
---@field lowTwistLimit UnityEngine.SoftJointLimit
---@field highTwistLimit UnityEngine.SoftJointLimit
---@field swing1Limit UnityEngine.SoftJointLimit
---@field swing2Limit UnityEngine.SoftJointLimit
---@field enableProjection boolean
---@field projectionDistance number
---@field projectionAngle number
UnityEngine.CharacterJoint = {}
---@alias CS.UnityEngine.CharacterJoint UnityEngine.CharacterJoint
CS.UnityEngine.CharacterJoint = UnityEngine.CharacterJoint

---@return UnityEngine.CharacterJoint
function UnityEngine.CharacterJoint.New() end

---@class UnityEngine.ConfigurableJoint : UnityEngine.Joint
---@field secondaryAxis UnityEngine.Vector3
---@field xMotion UnityEngine.ConfigurableJointMotion
---@field yMotion UnityEngine.ConfigurableJointMotion
---@field zMotion UnityEngine.ConfigurableJointMotion
---@field angularXMotion UnityEngine.ConfigurableJointMotion
---@field angularYMotion UnityEngine.ConfigurableJointMotion
---@field angularZMotion UnityEngine.ConfigurableJointMotion
---@field linearLimitSpring UnityEngine.SoftJointLimitSpring
---@field angularXLimitSpring UnityEngine.SoftJointLimitSpring
---@field angularYZLimitSpring UnityEngine.SoftJointLimitSpring
---@field linearLimit UnityEngine.SoftJointLimit
---@field lowAngularXLimit UnityEngine.SoftJointLimit
---@field highAngularXLimit UnityEngine.SoftJointLimit
---@field angularYLimit UnityEngine.SoftJointLimit
---@field angularZLimit UnityEngine.SoftJointLimit
---@field targetPosition UnityEngine.Vector3
---@field targetVelocity UnityEngine.Vector3
---@field xDrive UnityEngine.JointDrive
---@field yDrive UnityEngine.JointDrive
---@field zDrive UnityEngine.JointDrive
---@field targetRotation UnityEngine.Quaternion
---@field targetAngularVelocity UnityEngine.Vector3
---@field rotationDriveMode UnityEngine.RotationDriveMode
---@field angularXDrive UnityEngine.JointDrive
---@field angularYZDrive UnityEngine.JointDrive
---@field slerpDrive UnityEngine.JointDrive
---@field projectionMode UnityEngine.JointProjectionMode
---@field projectionDistance number
---@field projectionAngle number
---@field configuredInWorldSpace boolean
---@field swapBodies boolean
UnityEngine.ConfigurableJoint = {}
---@alias CS.UnityEngine.ConfigurableJoint UnityEngine.ConfigurableJoint
CS.UnityEngine.ConfigurableJoint = UnityEngine.ConfigurableJoint

---@return UnityEngine.ConfigurableJoint
function UnityEngine.ConfigurableJoint.New() end

---@class UnityEngine.ContactPoint : System.ValueType
---@field point UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field impulse UnityEngine.Vector3
---@field thisCollider UnityEngine.Collider
---@field otherCollider UnityEngine.Collider
---@field separation number
UnityEngine.ContactPoint = {}
---@alias CS.UnityEngine.ContactPoint UnityEngine.ContactPoint
CS.UnityEngine.ContactPoint = UnityEngine.ContactPoint


---@class UnityEngine.PhysicsScene : System.ValueType
UnityEngine.PhysicsScene = {}
---@alias CS.UnityEngine.PhysicsScene UnityEngine.PhysicsScene
CS.UnityEngine.PhysicsScene = UnityEngine.PhysicsScene

---@return string
function UnityEngine.PhysicsScene:ToString() end
---@return number
function UnityEngine.PhysicsScene:GetHashCode() end
---@overload fun(self: UnityEngine.PhysicsScene, other: System.Object) : boolean
---@param other UnityEngine.PhysicsScene
---@return boolean
function UnityEngine.PhysicsScene:Equals(other) end
---@return boolean
function UnityEngine.PhysicsScene:IsValid() end
---@return boolean
function UnityEngine.PhysicsScene:IsEmpty() end
---@param step number
function UnityEngine.PhysicsScene:Simulate(step) end
function UnityEngine.PhysicsScene:InterpolateBodies() end
function UnityEngine.PhysicsScene:ResetInterpolationPoses() end
---@overload fun(self: UnityEngine.PhysicsScene, origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean
---@overload fun(self: UnityEngine.PhysicsScene, origin: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@param origin UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param raycastHits UnityEngine.RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return number
function UnityEngine.PhysicsScene:Raycast(origin, direction, raycastHits, maxDistance, layerMask, queryTriggerInteraction) end
---@overload fun(self: UnityEngine.PhysicsScene, point1: UnityEngine.Vector3, point2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@param point1 UnityEngine.Vector3
---@param point2 UnityEngine.Vector3
---@param radius number
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return number
function UnityEngine.PhysicsScene:CapsuleCast(point1, point2, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius number
---@param results UnityEngine.Collider[]
---@param layerMask number
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return number
function UnityEngine.PhysicsScene:OverlapCapsule(point0, point1, radius, results, layerMask, queryTriggerInteraction) end
---@overload fun(self: UnityEngine.PhysicsScene, origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@param origin UnityEngine.Vector3
---@param radius number
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@param maxDistance number
---@param layerMask number
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return number
function UnityEngine.PhysicsScene:SphereCast(origin, radius, direction, results, maxDistance, layerMask, queryTriggerInteraction) end
---@param position UnityEngine.Vector3
---@param radius number
---@param results UnityEngine.Collider[]
---@param layerMask number
---@param queryTriggerInteraction UnityEngine.QueryTriggerInteraction
---@return number
function UnityEngine.PhysicsScene:OverlapSphere(position, radius, results, layerMask, queryTriggerInteraction) end
---@overload fun(self: UnityEngine.PhysicsScene, center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit, orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : boolean, UnityEngine.RaycastHit
---@overload fun(self: UnityEngine.PhysicsScene, center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, out_hitInfo: UnityEngine.RaycastHit) : boolean, UnityEngine.RaycastHit
---@overload fun(self: UnityEngine.PhysicsScene, center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, direction: UnityEngine.Vector3, results: UnityEngine.RaycastHit[], orientation: UnityEngine.Quaternion, maxDistance: number, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param results UnityEngine.RaycastHit[]
---@return number
function UnityEngine.PhysicsScene:BoxCast(center, halfExtents, direction, results) end
---@overload fun(self: UnityEngine.PhysicsScene, center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, results: UnityEngine.Collider[], orientation: UnityEngine.Quaternion, layerMask: number, queryTriggerInteraction: UnityEngine.QueryTriggerInteraction) : number
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param results UnityEngine.Collider[]
---@return number
function UnityEngine.PhysicsScene:OverlapBox(center, halfExtents, results) end

---@class UnityEngine.PhysicsSceneExtensions : System.Object
UnityEngine.PhysicsSceneExtensions = {}
---@alias CS.UnityEngine.PhysicsSceneExtensions UnityEngine.PhysicsSceneExtensions
CS.UnityEngine.PhysicsSceneExtensions = UnityEngine.PhysicsSceneExtensions

---@param scene UnityEngine.SceneManagement.Scene
---@return UnityEngine.PhysicsScene
function UnityEngine.PhysicsSceneExtensions.GetPhysicsScene(scene) end

---@class UnityEngine.SimulationMode
---@field FixedUpdate UnityEngine.SimulationMode
---@field Update UnityEngine.SimulationMode
---@field Script UnityEngine.SimulationMode
UnityEngine.SimulationMode = {}
---@alias CS.UnityEngine.SimulationMode UnityEngine.SimulationMode
CS.UnityEngine.SimulationMode = UnityEngine.SimulationMode


---@class UnityEngine.JointDriveMode
UnityEngine.JointDriveMode = {}
---@alias CS.UnityEngine.JointDriveMode UnityEngine.JointDriveMode
CS.UnityEngine.JointDriveMode = UnityEngine.JointDriveMode


---@class UnityEngine.ContactPairHeader : System.ValueType
---@field BodyInstanceID number
---@field OtherBodyInstanceID number
---@field Body UnityEngine.Component
---@field OtherBody UnityEngine.Component
---@field PairCount number
UnityEngine.ContactPairHeader = {}
---@alias CS.UnityEngine.ContactPairHeader UnityEngine.ContactPairHeader
CS.UnityEngine.ContactPairHeader = UnityEngine.ContactPairHeader

---@param index number
---@return UnityEngine.ContactPair&
function UnityEngine.ContactPairHeader:GetContactPair(index) end

---@class UnityEngine.ContactPair : System.ValueType
---@field ColliderInstanceID number
---@field OtherColliderInstanceID number
---@field Collider UnityEngine.Collider
---@field OtherCollider UnityEngine.Collider
---@field ContactCount number
---@field ImpulseSum UnityEngine.Vector3
---@field IsCollisionEnter boolean
---@field IsCollisionExit boolean
---@field IsCollisionStay boolean
UnityEngine.ContactPair = {}
---@alias CS.UnityEngine.ContactPair UnityEngine.ContactPair
CS.UnityEngine.ContactPair = UnityEngine.ContactPair

---@param buffer Unity.Collections.NativeArray
function UnityEngine.ContactPair:CopyToNativeArray(buffer) end
---@param index number
---@return UnityEngine.ContactPairPoint&
function UnityEngine.ContactPair:GetContactPoint(index) end
---@param contactIndex number
---@return number
function UnityEngine.ContactPair:GetContactPointFaceIndex(contactIndex) end

---@class UnityEngine.ContactPairPoint : System.ValueType
---@field Position UnityEngine.Vector3
---@field Separation number
---@field Normal UnityEngine.Vector3
---@field Impulse UnityEngine.Vector3
UnityEngine.ContactPairPoint = {}
---@alias CS.UnityEngine.ContactPairPoint UnityEngine.ContactPairPoint
CS.UnityEngine.ContactPairPoint = UnityEngine.ContactPairPoint


---@class UnityEngine.CollisionPairHeaderFlags
---@field RemovedActor UnityEngine.CollisionPairHeaderFlags
---@field RemovedOtherActor UnityEngine.CollisionPairHeaderFlags
UnityEngine.CollisionPairHeaderFlags = {}
---@alias CS.UnityEngine.CollisionPairHeaderFlags UnityEngine.CollisionPairHeaderFlags
CS.UnityEngine.CollisionPairHeaderFlags = UnityEngine.CollisionPairHeaderFlags


---@class UnityEngine.CollisionPairFlags
---@field RemovedShape UnityEngine.CollisionPairFlags
---@field RemovedOtherShape UnityEngine.CollisionPairFlags
---@field ActorPairHasFirstTouch UnityEngine.CollisionPairFlags
---@field ActorPairLostTouch UnityEngine.CollisionPairFlags
---@field InternalHasImpulses UnityEngine.CollisionPairFlags
---@field InternalContactsAreFlipped UnityEngine.CollisionPairFlags
UnityEngine.CollisionPairFlags = {}
---@alias CS.UnityEngine.CollisionPairFlags UnityEngine.CollisionPairFlags
CS.UnityEngine.CollisionPairFlags = UnityEngine.CollisionPairFlags


---@class UnityEngine.CollisionPairEventFlags
---@field SolveContacts UnityEngine.CollisionPairEventFlags
---@field ModifyContacts UnityEngine.CollisionPairEventFlags
---@field NotifyTouchFound UnityEngine.CollisionPairEventFlags
---@field NotifyTouchPersists UnityEngine.CollisionPairEventFlags
---@field NotifyTouchLost UnityEngine.CollisionPairEventFlags
---@field NotifyTouchCCD UnityEngine.CollisionPairEventFlags
---@field NotifyThresholdForceFound UnityEngine.CollisionPairEventFlags
---@field NotifyThresholdForcePersists UnityEngine.CollisionPairEventFlags
---@field NotifyThresholdForceLost UnityEngine.CollisionPairEventFlags
---@field NotifyContactPoint UnityEngine.CollisionPairEventFlags
---@field DetectDiscreteContact UnityEngine.CollisionPairEventFlags
---@field DetectCCDContact UnityEngine.CollisionPairEventFlags
---@field PreSolverVelocity UnityEngine.CollisionPairEventFlags
---@field PostSolverVelocity UnityEngine.CollisionPairEventFlags
---@field ContactEventPose UnityEngine.CollisionPairEventFlags
---@field NextFree UnityEngine.CollisionPairEventFlags
---@field ContactDefault UnityEngine.CollisionPairEventFlags
---@field TriggerDefault UnityEngine.CollisionPairEventFlags
UnityEngine.CollisionPairEventFlags = {}
---@alias CS.UnityEngine.CollisionPairEventFlags UnityEngine.CollisionPairEventFlags
CS.UnityEngine.CollisionPairEventFlags = UnityEngine.CollisionPairEventFlags


---@class UnityEngine.QueryParameters : System.ValueType
---@field layerMask number
---@field hitMultipleFaces boolean
---@field hitTriggers UnityEngine.QueryTriggerInteraction
---@field hitBackfaces boolean
---@field Default UnityEngine.QueryParameters
UnityEngine.QueryParameters = {}
---@alias CS.UnityEngine.QueryParameters UnityEngine.QueryParameters
CS.UnityEngine.QueryParameters = UnityEngine.QueryParameters

---@param layerMask number
---@param hitMultipleFaces boolean
---@param hitTriggers UnityEngine.QueryTriggerInteraction
---@param hitBackfaces boolean
---@return UnityEngine.QueryParameters
function UnityEngine.QueryParameters.New(layerMask, hitMultipleFaces, hitTriggers, hitBackfaces) end

---@class UnityEngine.ColliderHit : System.ValueType
---@field instanceID number
---@field collider UnityEngine.Collider
UnityEngine.ColliderHit = {}
---@alias CS.UnityEngine.ColliderHit UnityEngine.ColliderHit
CS.UnityEngine.ColliderHit = UnityEngine.ColliderHit


---@class UnityEngine.RaycastCommand : System.ValueType
---@field queryParameters UnityEngine.QueryParameters
---@field from UnityEngine.Vector3
---@field direction UnityEngine.Vector3
---@field physicsScene UnityEngine.PhysicsScene
---@field distance number
UnityEngine.RaycastCommand = {}
---@alias CS.UnityEngine.RaycastCommand UnityEngine.RaycastCommand
CS.UnityEngine.RaycastCommand = UnityEngine.RaycastCommand

---@overload fun(from: UnityEngine.Vector3, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.RaycastCommand
---@overload fun(physicsScene: UnityEngine.PhysicsScene, from: UnityEngine.Vector3, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.RaycastCommand
---@overload fun(from: UnityEngine.Vector3, direction: UnityEngine.Vector3, distance: number, layerMask: number, maxHits: number) : UnityEngine.RaycastCommand
---@param physicsScene UnityEngine.PhysicsScene
---@param from UnityEngine.Vector3
---@param direction UnityEngine.Vector3
---@param distance number
---@param layerMask number
---@param maxHits number
---@return UnityEngine.RaycastCommand
function UnityEngine.RaycastCommand.New(physicsScene, from, direction, distance, layerMask, maxHits) end
---@overload fun(commands: Unity.Collections.NativeArray, results: Unity.Collections.NativeArray, minCommandsPerJob: number, maxHits: number, dependsOn: Unity.Jobs.JobHandle) : Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.RaycastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn) end

---@class UnityEngine.SpherecastCommand : System.ValueType
---@field queryParameters UnityEngine.QueryParameters
---@field origin UnityEngine.Vector3
---@field radius number
---@field direction UnityEngine.Vector3
---@field distance number
---@field physicsScene UnityEngine.PhysicsScene
UnityEngine.SpherecastCommand = {}
---@alias CS.UnityEngine.SpherecastCommand UnityEngine.SpherecastCommand
CS.UnityEngine.SpherecastCommand = UnityEngine.SpherecastCommand

---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.SpherecastCommand
---@overload fun(physicsScene: UnityEngine.PhysicsScene, origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.SpherecastCommand
---@overload fun(origin: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, distance: number, layerMask: number) : UnityEngine.SpherecastCommand
---@param physicsScene UnityEngine.PhysicsScene
---@param origin UnityEngine.Vector3
---@param radius number
---@param direction UnityEngine.Vector3
---@param distance number
---@param layerMask number
---@return UnityEngine.SpherecastCommand
function UnityEngine.SpherecastCommand.New(physicsScene, origin, radius, direction, distance, layerMask) end
---@overload fun(commands: Unity.Collections.NativeArray, results: Unity.Collections.NativeArray, minCommandsPerJob: number, maxHits: number, dependsOn: Unity.Jobs.JobHandle) : Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.SpherecastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn) end

---@class UnityEngine.CapsulecastCommand : System.ValueType
---@field queryParameters UnityEngine.QueryParameters
---@field point1 UnityEngine.Vector3
---@field point2 UnityEngine.Vector3
---@field radius number
---@field direction UnityEngine.Vector3
---@field distance number
---@field physicsScene UnityEngine.PhysicsScene
UnityEngine.CapsulecastCommand = {}
---@alias CS.UnityEngine.CapsulecastCommand UnityEngine.CapsulecastCommand
CS.UnityEngine.CapsulecastCommand = UnityEngine.CapsulecastCommand

---@overload fun(p1: UnityEngine.Vector3, p2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.CapsulecastCommand
---@overload fun(physicsScene: UnityEngine.PhysicsScene, p1: UnityEngine.Vector3, p2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.CapsulecastCommand
---@overload fun(p1: UnityEngine.Vector3, p2: UnityEngine.Vector3, radius: number, direction: UnityEngine.Vector3, distance: number, layerMask: number) : UnityEngine.CapsulecastCommand
---@param physicsScene UnityEngine.PhysicsScene
---@param p1 UnityEngine.Vector3
---@param p2 UnityEngine.Vector3
---@param radius number
---@param direction UnityEngine.Vector3
---@param distance number
---@param layerMask number
---@return UnityEngine.CapsulecastCommand
function UnityEngine.CapsulecastCommand.New(physicsScene, p1, p2, radius, direction, distance, layerMask) end
---@overload fun(commands: Unity.Collections.NativeArray, results: Unity.Collections.NativeArray, minCommandsPerJob: number, maxHits: number, dependsOn: Unity.Jobs.JobHandle) : Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.CapsulecastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn) end

---@class UnityEngine.BoxcastCommand : System.ValueType
---@field queryParameters UnityEngine.QueryParameters
---@field center UnityEngine.Vector3
---@field halfExtents UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field direction UnityEngine.Vector3
---@field distance number
---@field physicsScene UnityEngine.PhysicsScene
UnityEngine.BoxcastCommand = {}
---@alias CS.UnityEngine.BoxcastCommand UnityEngine.BoxcastCommand
CS.UnityEngine.BoxcastCommand = UnityEngine.BoxcastCommand

---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.BoxcastCommand
---@overload fun(physicsScene: UnityEngine.PhysicsScene, center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, direction: UnityEngine.Vector3, queryParameters: UnityEngine.QueryParameters, distance: number) : UnityEngine.BoxcastCommand
---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, direction: UnityEngine.Vector3, distance: number, layerMask: number) : UnityEngine.BoxcastCommand
---@param physicsScene UnityEngine.PhysicsScene
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param orientation UnityEngine.Quaternion
---@param direction UnityEngine.Vector3
---@param distance number
---@param layerMask number
---@return UnityEngine.BoxcastCommand
function UnityEngine.BoxcastCommand.New(physicsScene, center, halfExtents, orientation, direction, distance, layerMask) end
---@overload fun(commands: Unity.Collections.NativeArray, results: Unity.Collections.NativeArray, minCommandsPerJob: number, maxHits: number, dependsOn: Unity.Jobs.JobHandle) : Unity.Jobs.JobHandle
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.BoxcastCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn) end

---@class UnityEngine.ClosestPointCommand : System.ValueType
---@field point UnityEngine.Vector3
---@field colliderInstanceID number
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field scale UnityEngine.Vector3
UnityEngine.ClosestPointCommand = {}
---@alias CS.UnityEngine.ClosestPointCommand UnityEngine.ClosestPointCommand
CS.UnityEngine.ClosestPointCommand = UnityEngine.ClosestPointCommand

---@overload fun(point: UnityEngine.Vector3, colliderInstanceID: number, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, scale: UnityEngine.Vector3) : UnityEngine.ClosestPointCommand
---@param point UnityEngine.Vector3
---@param collider UnityEngine.Collider
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param scale UnityEngine.Vector3
---@return UnityEngine.ClosestPointCommand
function UnityEngine.ClosestPointCommand.New(point, collider, position, rotation, scale) end
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.ClosestPointCommand.ScheduleBatch(commands, results, minCommandsPerJob, dependsOn) end

---@class UnityEngine.OverlapSphereCommand : System.ValueType
---@field queryParameters UnityEngine.QueryParameters
---@field point UnityEngine.Vector3
---@field radius number
---@field physicsScene UnityEngine.PhysicsScene
UnityEngine.OverlapSphereCommand = {}
---@alias CS.UnityEngine.OverlapSphereCommand UnityEngine.OverlapSphereCommand
CS.UnityEngine.OverlapSphereCommand = UnityEngine.OverlapSphereCommand

---@overload fun(point: UnityEngine.Vector3, radius: number, queryParameters: UnityEngine.QueryParameters) : UnityEngine.OverlapSphereCommand
---@param physicsScene UnityEngine.PhysicsScene
---@param point UnityEngine.Vector3
---@param radius number
---@param queryParameters UnityEngine.QueryParameters
---@return UnityEngine.OverlapSphereCommand
function UnityEngine.OverlapSphereCommand.New(physicsScene, point, radius, queryParameters) end
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param maxHits number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.OverlapSphereCommand.ScheduleBatch(commands, results, minCommandsPerJob, maxHits, dependsOn) end

---@class UnityEngine.OverlapBoxCommand : System.ValueType
---@field queryParameters UnityEngine.QueryParameters
---@field center UnityEngine.Vector3
---@field halfExtents UnityEngine.Vector3
---@field orientation UnityEngine.Quaternion
---@field physicsScene UnityEngine.PhysicsScene
UnityEngine.OverlapBoxCommand = {}
---@alias CS.UnityEngine.OverlapBoxCommand UnityEngine.OverlapBoxCommand
CS.UnityEngine.OverlapBoxCommand = UnityEngine.OverlapBoxCommand

---@overload fun(center: UnityEngine.Vector3, halfExtents: UnityEngine.Vector3, orientation: UnityEngine.Quaternion, queryParameters: UnityEngine.QueryParameters) : UnityEngine.OverlapBoxCommand
---@param physicsScene UnityEngine.PhysicsScene
---@param center UnityEngine.Vector3
---@param halfExtents UnityEngine.Vector3
---@param orientation UnityEngine.Quaternion
---@param queryParameters UnityEngine.QueryParameters
---@return UnityEngine.OverlapBoxCommand
function UnityEngine.OverlapBoxCommand.New(physicsScene, center, halfExtents, orientation, queryParameters) end
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param maxHits number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.OverlapBoxCommand.ScheduleBatch(commands, results, minCommandsPerJob, maxHits, dependsOn) end

---@class UnityEngine.OverlapCapsuleCommand : System.ValueType
---@field queryParameters UnityEngine.QueryParameters
---@field point0 UnityEngine.Vector3
---@field point1 UnityEngine.Vector3
---@field radius number
---@field physicsScene UnityEngine.PhysicsScene
UnityEngine.OverlapCapsuleCommand = {}
---@alias CS.UnityEngine.OverlapCapsuleCommand UnityEngine.OverlapCapsuleCommand
CS.UnityEngine.OverlapCapsuleCommand = UnityEngine.OverlapCapsuleCommand

---@overload fun(point0: UnityEngine.Vector3, point1: UnityEngine.Vector3, radius: number, queryParameters: UnityEngine.QueryParameters) : UnityEngine.OverlapCapsuleCommand
---@param physicsScene UnityEngine.PhysicsScene
---@param point0 UnityEngine.Vector3
---@param point1 UnityEngine.Vector3
---@param radius number
---@param queryParameters UnityEngine.QueryParameters
---@return UnityEngine.OverlapCapsuleCommand
function UnityEngine.OverlapCapsuleCommand.New(physicsScene, point0, point1, radius, queryParameters) end
---@param commands Unity.Collections.NativeArray
---@param results Unity.Collections.NativeArray
---@param minCommandsPerJob number
---@param maxHits number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function UnityEngine.OverlapCapsuleCommand.ScheduleBatch(commands, results, minCommandsPerJob, maxHits, dependsOn) end

---@class UnityEngine.PhysicsScene2D : System.ValueType
UnityEngine.PhysicsScene2D = {}
---@alias CS.UnityEngine.PhysicsScene2D UnityEngine.PhysicsScene2D
CS.UnityEngine.PhysicsScene2D = UnityEngine.PhysicsScene2D

---@overload fun(collider: UnityEngine.Collider2D, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param collider UnityEngine.Collider2D
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D.OverlapCollider(collider, contactFilter, results) end
---@return string
function UnityEngine.PhysicsScene2D:ToString() end
---@return number
function UnityEngine.PhysicsScene2D:GetHashCode() end
---@overload fun(self: UnityEngine.PhysicsScene2D, other: System.Object) : boolean
---@param other UnityEngine.PhysicsScene2D
---@return boolean
function UnityEngine.PhysicsScene2D:Equals(other) end
---@return boolean
function UnityEngine.PhysicsScene2D:IsValid() end
---@return boolean
function UnityEngine.PhysicsScene2D:IsEmpty() end
---@param step number
---@return boolean
function UnityEngine.PhysicsScene2D:Simulate(step) end
---@overload fun(self: UnityEngine.PhysicsScene2D, start: UnityEngine.Vector2, _end: UnityEngine.Vector2, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, start: UnityEngine.Vector2, _end: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, start: UnityEngine.Vector2, _end: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, start: UnityEngine.Vector2, _end: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:Linecast(start, _end, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, results: UnityEngine.RaycastHit2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@param distance number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:Raycast(origin, direction, distance, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, results: UnityEngine.RaycastHit2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@param origin UnityEngine.Vector2
---@param radius number
---@param direction UnityEngine.Vector2
---@param distance number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:CircleCast(origin, radius, direction, distance, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, results: UnityEngine.RaycastHit2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param direction UnityEngine.Vector2
---@param distance number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:BoxCast(origin, size, angle, direction, distance, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.RaycastHit2D
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, results: UnityEngine.RaycastHit2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle number
---@param direction UnityEngine.Vector2
---@param distance number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:CapsuleCast(origin, size, capsuleDirection, angle, direction, distance, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, ray: UnityEngine.Ray, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@param ray UnityEngine.Ray
---@param distance number
---@param results UnityEngine.RaycastHit2D[]
---@param layerMask number
---@return number
function UnityEngine.PhysicsScene2D:GetRayIntersection(ray, distance, results, layerMask) end
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, layerMask: number) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:OverlapPoint(point, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, radius: number, layerMask: number) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, radius: number, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, radius: number, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, radius: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param radius number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:OverlapCircle(point, radius, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, layerMask: number) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:OverlapBox(point, size, angle, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, layerMask: number) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:OverlapArea(pointA, pointB, contactFilter, results) end
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, layerMask: number) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, contactFilter: UnityEngine.ContactFilter2D) : UnityEngine.Collider2D
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(self: UnityEngine.PhysicsScene2D, point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsScene2D:OverlapCapsule(point, size, direction, angle, contactFilter, results) end

---@class UnityEngine.PhysicsSceneExtensions2D : System.Object
UnityEngine.PhysicsSceneExtensions2D = {}
---@alias CS.UnityEngine.PhysicsSceneExtensions2D UnityEngine.PhysicsSceneExtensions2D
CS.UnityEngine.PhysicsSceneExtensions2D = UnityEngine.PhysicsSceneExtensions2D

---@param scene UnityEngine.SceneManagement.Scene
---@return UnityEngine.PhysicsScene2D
function UnityEngine.PhysicsSceneExtensions2D.GetPhysicsScene2D(scene) end

---@class UnityEngine.Physics2D : System.Object
---@field IgnoreRaycastLayer number
---@field DefaultRaycastLayers number
---@field AllLayers number
---@field MaxPolygonShapeVertices number
---@field defaultPhysicsScene UnityEngine.PhysicsScene2D
---@field velocityIterations number
---@field positionIterations number
---@field gravity UnityEngine.Vector2
---@field queriesHitTriggers boolean
---@field queriesStartInColliders boolean
---@field callbacksOnDisable boolean
---@field reuseCollisionCallbacks boolean
---@field autoSyncTransforms boolean
---@field simulationMode UnityEngine.SimulationMode2D
---@field jobOptions UnityEngine.PhysicsJobOptions2D
---@field velocityThreshold number
---@field maxLinearCorrection number
---@field maxAngularCorrection number
---@field maxTranslationSpeed number
---@field maxRotationSpeed number
---@field defaultContactOffset number
---@field baumgarteScale number
---@field baumgarteTOIScale number
---@field timeToSleep number
---@field linearSleepTolerance number
---@field angularSleepTolerance number
UnityEngine.Physics2D = {}
---@alias CS.UnityEngine.Physics2D UnityEngine.Physics2D
CS.UnityEngine.Physics2D = UnityEngine.Physics2D

---@return UnityEngine.Physics2D
function UnityEngine.Physics2D.New() end
---@param step number
---@return boolean
function UnityEngine.Physics2D.Simulate(step) end
function UnityEngine.Physics2D.SyncTransforms() end
---@overload fun(collider1: UnityEngine.Collider2D, collider2: UnityEngine.Collider2D)
---@param collider1 UnityEngine.Collider2D
---@param collider2 UnityEngine.Collider2D
---@param ignore boolean
function UnityEngine.Physics2D.IgnoreCollision(collider1, collider2, ignore) end
---@param collider1 UnityEngine.Collider2D
---@param collider2 UnityEngine.Collider2D
---@return boolean
function UnityEngine.Physics2D.GetIgnoreCollision(collider1, collider2) end
---@overload fun(layer1: number, layer2: number)
---@param layer1 number
---@param layer2 number
---@param ignore boolean
function UnityEngine.Physics2D.IgnoreLayerCollision(layer1, layer2, ignore) end
---@param layer1 number
---@param layer2 number
---@return boolean
function UnityEngine.Physics2D.GetIgnoreLayerCollision(layer1, layer2) end
---@param layer number
---@param layerMask number
function UnityEngine.Physics2D.SetLayerCollisionMask(layer, layerMask) end
---@param layer number
---@return number
function UnityEngine.Physics2D.GetLayerCollisionMask(layer) end
---@overload fun(collider1: UnityEngine.Collider2D, collider2: UnityEngine.Collider2D) : boolean
---@overload fun(collider1: UnityEngine.Collider2D, collider2: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D) : boolean
---@param collider UnityEngine.Collider2D
---@param contactFilter UnityEngine.ContactFilter2D
---@return boolean
function UnityEngine.Physics2D.IsTouching(collider, contactFilter) end
---@overload fun(collider: UnityEngine.Collider2D) : boolean
---@param collider UnityEngine.Collider2D
---@param layerMask number
---@return boolean
function UnityEngine.Physics2D.IsTouchingLayers(collider, layerMask) end
---@param colliderA UnityEngine.Collider2D
---@param colliderB UnityEngine.Collider2D
---@return UnityEngine.ColliderDistance2D
function UnityEngine.Physics2D.Distance(colliderA, colliderB) end
---@overload fun(position: UnityEngine.Vector2, collider: UnityEngine.Collider2D) : UnityEngine.Vector2
---@param position UnityEngine.Vector2
---@param rigidbody UnityEngine.Rigidbody2D
---@return UnityEngine.Vector2
function UnityEngine.Physics2D.ClosestPoint(position, rigidbody) end
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2) : UnityEngine.RaycastHit2D
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.Linecast(start, _end, contactFilter, results) end
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2) : UnityEngine.RaycastHit2D[]
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, layerMask: number) : UnityEngine.RaycastHit2D[]
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D[]
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.LinecastAll(start, _end, layerMask, minDepth, maxDepth) end
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], layerMask: number) : number
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], layerMask: number, minDepth: number) : number
---@param start UnityEngine.Vector2
---@param _end UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.LinecastNonAlloc(start, _end, results, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@param distance number
---@return number
function UnityEngine.Physics2D.Raycast(origin, direction, contactFilter, results, distance) end
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number) : number
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number, minDepth: number) : number
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.RaycastNonAlloc(origin, direction, results, distance, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param direction UnityEngine.Vector2
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.RaycastAll(origin, direction, distance, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@param origin UnityEngine.Vector2
---@param radius number
---@param direction UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@param distance number
---@return number
function UnityEngine.Physics2D.CircleCast(origin, radius, direction, contactFilter, results, distance) end
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param radius number
---@param direction UnityEngine.Vector2
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.CircleCastAll(origin, radius, direction, distance, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number) : number
---@overload fun(origin: UnityEngine.Vector2, radius: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number, minDepth: number) : number
---@param origin UnityEngine.Vector2
---@param radius number
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.CircleCastNonAlloc(origin, radius, direction, results, distance, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param direction UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@param distance number
---@return number
function UnityEngine.Physics2D.BoxCast(origin, size, angle, direction, contactFilter, results, distance) end
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param direction UnityEngine.Vector2
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.BoxCastAll(origin, size, angle, direction, distance, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number, minDepth: number) : number
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.BoxCastNonAlloc(origin, size, angle, direction, results, distance, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.RaycastHit2D
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle number
---@param direction UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@param distance number
---@return number
function UnityEngine.Physics2D.CapsuleCast(origin, size, capsuleDirection, angle, direction, contactFilter, results, distance) end
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number) : UnityEngine.RaycastHit2D[]
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, distance: number, layerMask: number, minDepth: number) : UnityEngine.RaycastHit2D[]
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle number
---@param direction UnityEngine.Vector2
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.CapsuleCastAll(origin, size, capsuleDirection, angle, direction, distance, layerMask, minDepth, maxDepth) end
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number) : number
---@overload fun(origin: UnityEngine.Vector2, size: UnityEngine.Vector2, capsuleDirection: UnityEngine.CapsuleDirection2D, angle: number, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number, minDepth: number) : number
---@param origin UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param capsuleDirection UnityEngine.CapsuleDirection2D
---@param angle number
---@param direction UnityEngine.Vector2
---@param results UnityEngine.RaycastHit2D[]
---@param distance number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.CapsuleCastNonAlloc(origin, size, capsuleDirection, angle, direction, results, distance, layerMask, minDepth, maxDepth) end
---@overload fun(ray: UnityEngine.Ray) : UnityEngine.RaycastHit2D
---@overload fun(ray: UnityEngine.Ray, distance: number) : UnityEngine.RaycastHit2D
---@param ray UnityEngine.Ray
---@param distance number
---@param layerMask number
---@return UnityEngine.RaycastHit2D
function UnityEngine.Physics2D.GetRayIntersection(ray, distance, layerMask) end
---@overload fun(ray: UnityEngine.Ray) : UnityEngine.RaycastHit2D[]
---@overload fun(ray: UnityEngine.Ray, distance: number) : UnityEngine.RaycastHit2D[]
---@param ray UnityEngine.Ray
---@param distance number
---@param layerMask number
---@return UnityEngine.RaycastHit2D[]
function UnityEngine.Physics2D.GetRayIntersectionAll(ray, distance, layerMask) end
---@overload fun(ray: UnityEngine.Ray, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(ray: UnityEngine.Ray, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@param ray UnityEngine.Ray
---@param results UnityEngine.RaycastHit2D[]
---@param distance number
---@param layerMask number
---@return number
function UnityEngine.Physics2D.GetRayIntersectionNonAlloc(ray, results, distance, layerMask) end
---@overload fun(point: UnityEngine.Vector2) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, layerMask: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, layerMask: number, minDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.OverlapPoint(point, contactFilter, results) end
---@overload fun(point: UnityEngine.Vector2) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, layerMask: number) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, layerMask: number, minDepth: number) : UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapPointAll(point, layerMask, minDepth, maxDepth) end
---@overload fun(point: UnityEngine.Vector2, results: UnityEngine.Collider2D[]) : number
---@overload fun(point: UnityEngine.Vector2, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(point: UnityEngine.Vector2, results: UnityEngine.Collider2D[], layerMask: number, minDepth: number) : number
---@param point UnityEngine.Vector2
---@param results UnityEngine.Collider2D[]
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.OverlapPointNonAlloc(point, results, layerMask, minDepth, maxDepth) end
---@overload fun(point: UnityEngine.Vector2, radius: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, radius: number, layerMask: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, radius: number, layerMask: number, minDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, radius: number, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, radius: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param radius number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.OverlapCircle(point, radius, contactFilter, results) end
---@overload fun(point: UnityEngine.Vector2, radius: number) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, radius: number, layerMask: number) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, radius: number, layerMask: number, minDepth: number) : UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@param radius number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapCircleAll(point, radius, layerMask, minDepth, maxDepth) end
---@overload fun(point: UnityEngine.Vector2, radius: number, results: UnityEngine.Collider2D[]) : number
---@overload fun(point: UnityEngine.Vector2, radius: number, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(point: UnityEngine.Vector2, radius: number, results: UnityEngine.Collider2D[], layerMask: number, minDepth: number) : number
---@param point UnityEngine.Vector2
---@param radius number
---@param results UnityEngine.Collider2D[]
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.OverlapCircleNonAlloc(point, radius, results, layerMask, minDepth, maxDepth) end
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, layerMask: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, layerMask: number, minDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.OverlapBox(point, size, angle, contactFilter, results) end
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, layerMask: number) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, layerMask: number, minDepth: number) : UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapBoxAll(point, size, angle, layerMask, minDepth, maxDepth) end
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, results: UnityEngine.Collider2D[]) : number
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, angle: number, results: UnityEngine.Collider2D[], layerMask: number, minDepth: number) : number
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param results UnityEngine.Collider2D[]
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.OverlapBoxNonAlloc(point, size, angle, results, layerMask, minDepth, maxDepth) end
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2) : UnityEngine.Collider2D
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, layerMask: number) : UnityEngine.Collider2D
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, layerMask: number, minDepth: number) : UnityEngine.Collider2D
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.Collider2D
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.OverlapArea(pointA, pointB, contactFilter, results) end
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2) : UnityEngine.Collider2D[]
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, layerMask: number) : UnityEngine.Collider2D[]
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, layerMask: number, minDepth: number) : UnityEngine.Collider2D[]
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapAreaAll(pointA, pointB, layerMask, minDepth, maxDepth) end
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, results: UnityEngine.Collider2D[]) : number
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(pointA: UnityEngine.Vector2, pointB: UnityEngine.Vector2, results: UnityEngine.Collider2D[], layerMask: number, minDepth: number) : number
---@param pointA UnityEngine.Vector2
---@param pointB UnityEngine.Vector2
---@param results UnityEngine.Collider2D[]
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.OverlapAreaNonAlloc(pointA, pointB, results, layerMask, minDepth, maxDepth) end
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, layerMask: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, layerMask: number, minDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, layerMask: number, minDepth: number, maxDepth: number) : UnityEngine.Collider2D
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.OverlapCapsule(point, size, direction, angle, contactFilter, results) end
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, layerMask: number) : UnityEngine.Collider2D[]
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, layerMask: number, minDepth: number) : UnityEngine.Collider2D[]
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle number
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return UnityEngine.Collider2D[]
function UnityEngine.Physics2D.OverlapCapsuleAll(point, size, direction, angle, layerMask, minDepth, maxDepth) end
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, results: UnityEngine.Collider2D[]) : number
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, results: UnityEngine.Collider2D[], layerMask: number) : number
---@overload fun(point: UnityEngine.Vector2, size: UnityEngine.Vector2, direction: UnityEngine.CapsuleDirection2D, angle: number, results: UnityEngine.Collider2D[], layerMask: number, minDepth: number) : number
---@param point UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param direction UnityEngine.CapsuleDirection2D
---@param angle number
---@param results UnityEngine.Collider2D[]
---@param layerMask number
---@param minDepth number
---@param maxDepth number
---@return number
function UnityEngine.Physics2D.OverlapCapsuleNonAlloc(point, size, direction, angle, results, layerMask, minDepth, maxDepth) end
---@overload fun(collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param collider UnityEngine.Collider2D
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.OverlapCollider(collider, contactFilter, results) end
---@overload fun(collider1: UnityEngine.Collider2D, collider2: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(collider: UnityEngine.Collider2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(collider: UnityEngine.Collider2D, colliders: UnityEngine.Collider2D[]) : number
---@overload fun(collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, colliders: UnityEngine.Collider2D[]) : number
---@overload fun(rigidbody: UnityEngine.Rigidbody2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(rigidbody: UnityEngine.Rigidbody2D, contactFilter: UnityEngine.ContactFilter2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(rigidbody: UnityEngine.Rigidbody2D, colliders: UnityEngine.Collider2D[]) : number
---@overload fun(rigidbody: UnityEngine.Rigidbody2D, contactFilter: UnityEngine.ContactFilter2D, colliders: UnityEngine.Collider2D[]) : number
---@overload fun(collider1: UnityEngine.Collider2D, collider2: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, contacts: System.Collections.Generic.List) : number
---@overload fun(collider: UnityEngine.Collider2D, contacts: System.Collections.Generic.List) : number
---@overload fun(collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, contacts: System.Collections.Generic.List) : number
---@overload fun(collider: UnityEngine.Collider2D, colliders: System.Collections.Generic.List) : number
---@overload fun(collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, colliders: System.Collections.Generic.List) : number
---@overload fun(rigidbody: UnityEngine.Rigidbody2D, contacts: System.Collections.Generic.List) : number
---@overload fun(rigidbody: UnityEngine.Rigidbody2D, contactFilter: UnityEngine.ContactFilter2D, contacts: System.Collections.Generic.List) : number
---@overload fun(rigidbody: UnityEngine.Rigidbody2D, colliders: System.Collections.Generic.List) : number
---@param rigidbody UnityEngine.Rigidbody2D
---@param contactFilter UnityEngine.ContactFilter2D
---@param colliders System.Collections.Generic.List
---@return number
function UnityEngine.Physics2D.GetContacts(rigidbody, contactFilter, colliders) end

---@class UnityEngine.Physics2D.GizmoOptions
---@field AllColliders UnityEngine.Physics2D.GizmoOptions
---@field CollidersOutlined UnityEngine.Physics2D.GizmoOptions
---@field CollidersFilled UnityEngine.Physics2D.GizmoOptions
---@field CollidersSleeping UnityEngine.Physics2D.GizmoOptions
---@field ColliderContacts UnityEngine.Physics2D.GizmoOptions
---@field ColliderBounds UnityEngine.Physics2D.GizmoOptions
UnityEngine.Physics2D.GizmoOptions = {}
---@alias CS.UnityEngine.Physics2D.GizmoOptions UnityEngine.Physics2D.GizmoOptions
CS.UnityEngine.Physics2D.GizmoOptions = UnityEngine.Physics2D.GizmoOptions


---@class UnityEngine.SimulationMode2D
---@field FixedUpdate UnityEngine.SimulationMode2D
---@field Update UnityEngine.SimulationMode2D
---@field Script UnityEngine.SimulationMode2D
UnityEngine.SimulationMode2D = {}
---@alias CS.UnityEngine.SimulationMode2D UnityEngine.SimulationMode2D
CS.UnityEngine.SimulationMode2D = UnityEngine.SimulationMode2D


---@class UnityEngine.CapsuleDirection2D
---@field Vertical UnityEngine.CapsuleDirection2D
---@field Horizontal UnityEngine.CapsuleDirection2D
UnityEngine.CapsuleDirection2D = {}
---@alias CS.UnityEngine.CapsuleDirection2D UnityEngine.CapsuleDirection2D
CS.UnityEngine.CapsuleDirection2D = UnityEngine.CapsuleDirection2D


---@class UnityEngine.RigidbodyConstraints2D
---@field None UnityEngine.RigidbodyConstraints2D
---@field FreezePositionX UnityEngine.RigidbodyConstraints2D
---@field FreezePositionY UnityEngine.RigidbodyConstraints2D
---@field FreezeRotation UnityEngine.RigidbodyConstraints2D
---@field FreezePosition UnityEngine.RigidbodyConstraints2D
---@field FreezeAll UnityEngine.RigidbodyConstraints2D
UnityEngine.RigidbodyConstraints2D = {}
---@alias CS.UnityEngine.RigidbodyConstraints2D UnityEngine.RigidbodyConstraints2D
CS.UnityEngine.RigidbodyConstraints2D = UnityEngine.RigidbodyConstraints2D


---@class UnityEngine.RigidbodyInterpolation2D
---@field None UnityEngine.RigidbodyInterpolation2D
---@field Interpolate UnityEngine.RigidbodyInterpolation2D
---@field Extrapolate UnityEngine.RigidbodyInterpolation2D
UnityEngine.RigidbodyInterpolation2D = {}
---@alias CS.UnityEngine.RigidbodyInterpolation2D UnityEngine.RigidbodyInterpolation2D
CS.UnityEngine.RigidbodyInterpolation2D = UnityEngine.RigidbodyInterpolation2D


---@class UnityEngine.RigidbodySleepMode2D
---@field NeverSleep UnityEngine.RigidbodySleepMode2D
---@field StartAwake UnityEngine.RigidbodySleepMode2D
---@field StartAsleep UnityEngine.RigidbodySleepMode2D
UnityEngine.RigidbodySleepMode2D = {}
---@alias CS.UnityEngine.RigidbodySleepMode2D UnityEngine.RigidbodySleepMode2D
CS.UnityEngine.RigidbodySleepMode2D = UnityEngine.RigidbodySleepMode2D


---@class UnityEngine.CollisionDetectionMode2D
---@field Discrete UnityEngine.CollisionDetectionMode2D
---@field Continuous UnityEngine.CollisionDetectionMode2D
UnityEngine.CollisionDetectionMode2D = {}
---@alias CS.UnityEngine.CollisionDetectionMode2D UnityEngine.CollisionDetectionMode2D
CS.UnityEngine.CollisionDetectionMode2D = UnityEngine.CollisionDetectionMode2D


---@class UnityEngine.RigidbodyType2D
---@field Dynamic UnityEngine.RigidbodyType2D
---@field Kinematic UnityEngine.RigidbodyType2D
---@field Static UnityEngine.RigidbodyType2D
UnityEngine.RigidbodyType2D = {}
---@alias CS.UnityEngine.RigidbodyType2D UnityEngine.RigidbodyType2D
CS.UnityEngine.RigidbodyType2D = UnityEngine.RigidbodyType2D


---@class UnityEngine.ForceMode2D
---@field Force UnityEngine.ForceMode2D
---@field Impulse UnityEngine.ForceMode2D
UnityEngine.ForceMode2D = {}
---@alias CS.UnityEngine.ForceMode2D UnityEngine.ForceMode2D
CS.UnityEngine.ForceMode2D = UnityEngine.ForceMode2D


---@class UnityEngine.ColliderErrorState2D
---@field None UnityEngine.ColliderErrorState2D
---@field NoShapes UnityEngine.ColliderErrorState2D
---@field RemovedShapes UnityEngine.ColliderErrorState2D
UnityEngine.ColliderErrorState2D = {}
---@alias CS.UnityEngine.ColliderErrorState2D UnityEngine.ColliderErrorState2D
CS.UnityEngine.ColliderErrorState2D = UnityEngine.ColliderErrorState2D


---@class UnityEngine.JointLimitState2D
---@field Inactive UnityEngine.JointLimitState2D
---@field LowerLimit UnityEngine.JointLimitState2D
---@field UpperLimit UnityEngine.JointLimitState2D
---@field EqualLimits UnityEngine.JointLimitState2D
UnityEngine.JointLimitState2D = {}
---@alias CS.UnityEngine.JointLimitState2D UnityEngine.JointLimitState2D
CS.UnityEngine.JointLimitState2D = UnityEngine.JointLimitState2D


---@class UnityEngine.JointBreakAction2D
---@field Ignore UnityEngine.JointBreakAction2D
---@field CallbackOnly UnityEngine.JointBreakAction2D
---@field Disable UnityEngine.JointBreakAction2D
---@field Destroy UnityEngine.JointBreakAction2D
UnityEngine.JointBreakAction2D = {}
---@alias CS.UnityEngine.JointBreakAction2D UnityEngine.JointBreakAction2D
CS.UnityEngine.JointBreakAction2D = UnityEngine.JointBreakAction2D


---@class UnityEngine.EffectorSelection2D
---@field Rigidbody UnityEngine.EffectorSelection2D
---@field Collider UnityEngine.EffectorSelection2D
UnityEngine.EffectorSelection2D = {}
---@alias CS.UnityEngine.EffectorSelection2D UnityEngine.EffectorSelection2D
CS.UnityEngine.EffectorSelection2D = UnityEngine.EffectorSelection2D


---@class UnityEngine.EffectorForceMode2D
---@field Constant UnityEngine.EffectorForceMode2D
---@field InverseLinear UnityEngine.EffectorForceMode2D
---@field InverseSquared UnityEngine.EffectorForceMode2D
UnityEngine.EffectorForceMode2D = {}
---@alias CS.UnityEngine.EffectorForceMode2D UnityEngine.EffectorForceMode2D
CS.UnityEngine.EffectorForceMode2D = UnityEngine.EffectorForceMode2D


---@class UnityEngine.PhysicsShapeType2D
---@field Circle UnityEngine.PhysicsShapeType2D
---@field Capsule UnityEngine.PhysicsShapeType2D
---@field Polygon UnityEngine.PhysicsShapeType2D
---@field Edges UnityEngine.PhysicsShapeType2D
UnityEngine.PhysicsShapeType2D = {}
---@alias CS.UnityEngine.PhysicsShapeType2D UnityEngine.PhysicsShapeType2D
CS.UnityEngine.PhysicsShapeType2D = UnityEngine.PhysicsShapeType2D


---@class UnityEngine.PhysicsShape2D : System.ValueType
---@field shapeType UnityEngine.PhysicsShapeType2D
---@field radius number
---@field vertexStartIndex number
---@field vertexCount number
---@field useAdjacentStart boolean
---@field useAdjacentEnd boolean
---@field adjacentStart UnityEngine.Vector2
---@field adjacentEnd UnityEngine.Vector2
UnityEngine.PhysicsShape2D = {}
---@alias CS.UnityEngine.PhysicsShape2D UnityEngine.PhysicsShape2D
CS.UnityEngine.PhysicsShape2D = UnityEngine.PhysicsShape2D


---@class UnityEngine.PhysicsShapeGroup2D : System.Object
---@field shapeCount number
---@field vertexCount number
---@field localToWorldMatrix UnityEngine.Matrix4x4
UnityEngine.PhysicsShapeGroup2D = {}
---@alias CS.UnityEngine.PhysicsShapeGroup2D UnityEngine.PhysicsShapeGroup2D
CS.UnityEngine.PhysicsShapeGroup2D = UnityEngine.PhysicsShapeGroup2D

---@param shapeCapacity number
---@param vertexCapacity number
---@return UnityEngine.PhysicsShapeGroup2D
function UnityEngine.PhysicsShapeGroup2D.New(shapeCapacity, vertexCapacity) end
function UnityEngine.PhysicsShapeGroup2D:Clear() end
---@param physicsShapeGroup UnityEngine.PhysicsShapeGroup2D
function UnityEngine.PhysicsShapeGroup2D:Add(physicsShapeGroup) end
---@overload fun(self: UnityEngine.PhysicsShapeGroup2D, shapes: System.Collections.Generic.List, vertices: System.Collections.Generic.List)
---@param shapes Unity.Collections.NativeArray
---@param vertices Unity.Collections.NativeArray
function UnityEngine.PhysicsShapeGroup2D:GetShapeData(shapes, vertices) end
---@param shapeIndex number
---@param vertices System.Collections.Generic.List
function UnityEngine.PhysicsShapeGroup2D:GetShapeVertices(shapeIndex, vertices) end
---@param shapeIndex number
---@param vertexIndex number
---@return UnityEngine.Vector2
function UnityEngine.PhysicsShapeGroup2D:GetShapeVertex(shapeIndex, vertexIndex) end
---@param shapeIndex number
---@param vertexIndex number
---@param vertex UnityEngine.Vector2
function UnityEngine.PhysicsShapeGroup2D:SetShapeVertex(shapeIndex, vertexIndex, vertex) end
---@param shapeIndex number
---@param radius number
function UnityEngine.PhysicsShapeGroup2D:SetShapeRadius(shapeIndex, radius) end
---@param shapeIndex number
---@param useAdjacentStart boolean
---@param useAdjacentEnd boolean
---@param adjacentStart UnityEngine.Vector2
---@param adjacentEnd UnityEngine.Vector2
function UnityEngine.PhysicsShapeGroup2D:SetShapeAdjacentVertices(shapeIndex, useAdjacentStart, useAdjacentEnd, adjacentStart, adjacentEnd) end
---@param shapeIndex number
function UnityEngine.PhysicsShapeGroup2D:DeleteShape(shapeIndex) end
---@param shapeIndex number
---@return UnityEngine.PhysicsShape2D
function UnityEngine.PhysicsShapeGroup2D:GetShape(shapeIndex) end
---@param center UnityEngine.Vector2
---@param radius number
---@return number
function UnityEngine.PhysicsShapeGroup2D:AddCircle(center, radius) end
---@param vertex0 UnityEngine.Vector2
---@param vertex1 UnityEngine.Vector2
---@param radius number
---@return number
function UnityEngine.PhysicsShapeGroup2D:AddCapsule(vertex0, vertex1, radius) end
---@param center UnityEngine.Vector2
---@param size UnityEngine.Vector2
---@param angle number
---@param edgeRadius number
---@return number
function UnityEngine.PhysicsShapeGroup2D:AddBox(center, size, angle, edgeRadius) end
---@param vertices System.Collections.Generic.List
---@return number
function UnityEngine.PhysicsShapeGroup2D:AddPolygon(vertices) end
---@overload fun(self: UnityEngine.PhysicsShapeGroup2D, vertices: System.Collections.Generic.List, edgeRadius: number) : number
---@param vertices System.Collections.Generic.List
---@param useAdjacentStart boolean
---@param useAdjacentEnd boolean
---@param adjacentStart UnityEngine.Vector2
---@param adjacentEnd UnityEngine.Vector2
---@param edgeRadius number
---@return number
function UnityEngine.PhysicsShapeGroup2D:AddEdges(vertices, useAdjacentStart, useAdjacentEnd, adjacentStart, adjacentEnd, edgeRadius) end

---@class UnityEngine.PhysicsShapeGroup2D.GroupState : System.ValueType
---@field m_Shapes System.Collections.Generic.List
---@field m_Vertices System.Collections.Generic.List
---@field m_LocalToWorld UnityEngine.Matrix4x4
UnityEngine.PhysicsShapeGroup2D.GroupState = {}
---@alias CS.UnityEngine.PhysicsShapeGroup2D.GroupState UnityEngine.PhysicsShapeGroup2D.GroupState
CS.UnityEngine.PhysicsShapeGroup2D.GroupState = UnityEngine.PhysicsShapeGroup2D.GroupState

function UnityEngine.PhysicsShapeGroup2D.GroupState:ClearGeometry() end

---@class UnityEngine.ColliderDistance2D : System.ValueType
---@field pointA UnityEngine.Vector2
---@field pointB UnityEngine.Vector2
---@field normal UnityEngine.Vector2
---@field distance number
---@field isOverlapped boolean
---@field isValid boolean
UnityEngine.ColliderDistance2D = {}
---@alias CS.UnityEngine.ColliderDistance2D UnityEngine.ColliderDistance2D
CS.UnityEngine.ColliderDistance2D = UnityEngine.ColliderDistance2D


---@class UnityEngine.ContactFilter2D : System.ValueType
---@field NormalAngleUpperLimit number
---@field useTriggers boolean
---@field useLayerMask boolean
---@field useDepth boolean
---@field useOutsideDepth boolean
---@field useNormalAngle boolean
---@field useOutsideNormalAngle boolean
---@field layerMask UnityEngine.LayerMask
---@field minDepth number
---@field maxDepth number
---@field minNormalAngle number
---@field maxNormalAngle number
---@field isFiltering boolean
UnityEngine.ContactFilter2D = {}
---@alias CS.UnityEngine.ContactFilter2D UnityEngine.ContactFilter2D
CS.UnityEngine.ContactFilter2D = UnityEngine.ContactFilter2D

---@return UnityEngine.ContactFilter2D
function UnityEngine.ContactFilter2D:NoFilter() end
function UnityEngine.ContactFilter2D:ClearLayerMask() end
---@param layerMask UnityEngine.LayerMask
function UnityEngine.ContactFilter2D:SetLayerMask(layerMask) end
function UnityEngine.ContactFilter2D:ClearDepth() end
---@param minDepth number
---@param maxDepth number
function UnityEngine.ContactFilter2D:SetDepth(minDepth, maxDepth) end
function UnityEngine.ContactFilter2D:ClearNormalAngle() end
---@param minNormalAngle number
---@param maxNormalAngle number
function UnityEngine.ContactFilter2D:SetNormalAngle(minNormalAngle, maxNormalAngle) end
---@param collider UnityEngine.Collider2D
---@return boolean
function UnityEngine.ContactFilter2D:IsFilteringTrigger(collider) end
---@param obj UnityEngine.GameObject
---@return boolean
function UnityEngine.ContactFilter2D:IsFilteringLayerMask(obj) end
---@param obj UnityEngine.GameObject
---@return boolean
function UnityEngine.ContactFilter2D:IsFilteringDepth(obj) end
---@overload fun(self: UnityEngine.ContactFilter2D, normal: UnityEngine.Vector2) : boolean
---@param angle number
---@return boolean
function UnityEngine.ContactFilter2D:IsFilteringNormalAngle(angle) end

---@class UnityEngine.Collision2D : System.Object
---@field collider UnityEngine.Collider2D
---@field otherCollider UnityEngine.Collider2D
---@field rigidbody UnityEngine.Rigidbody2D
---@field otherRigidbody UnityEngine.Rigidbody2D
---@field transform UnityEngine.Transform
---@field gameObject UnityEngine.GameObject
---@field relativeVelocity UnityEngine.Vector2
---@field enabled boolean
---@field contacts UnityEngine.ContactPoint2D[]
---@field contactCount number
UnityEngine.Collision2D = {}
---@alias CS.UnityEngine.Collision2D UnityEngine.Collision2D
CS.UnityEngine.Collision2D = UnityEngine.Collision2D

---@return UnityEngine.Collision2D
function UnityEngine.Collision2D.New() end
---@param index number
---@return UnityEngine.ContactPoint2D
function UnityEngine.Collision2D:GetContact(index) end
---@overload fun(self: UnityEngine.Collision2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@param contacts System.Collections.Generic.List
---@return number
function UnityEngine.Collision2D:GetContacts(contacts) end

---@class UnityEngine.ContactPoint2D : System.ValueType
---@field point UnityEngine.Vector2
---@field normal UnityEngine.Vector2
---@field separation number
---@field normalImpulse number
---@field tangentImpulse number
---@field relativeVelocity UnityEngine.Vector2
---@field collider UnityEngine.Collider2D
---@field otherCollider UnityEngine.Collider2D
---@field rigidbody UnityEngine.Rigidbody2D
---@field otherRigidbody UnityEngine.Rigidbody2D
---@field enabled boolean
UnityEngine.ContactPoint2D = {}
---@alias CS.UnityEngine.ContactPoint2D UnityEngine.ContactPoint2D
CS.UnityEngine.ContactPoint2D = UnityEngine.ContactPoint2D


---@class UnityEngine.JointAngleLimits2D : System.ValueType
---@field min number
---@field max number
UnityEngine.JointAngleLimits2D = {}
---@alias CS.UnityEngine.JointAngleLimits2D UnityEngine.JointAngleLimits2D
CS.UnityEngine.JointAngleLimits2D = UnityEngine.JointAngleLimits2D


---@class UnityEngine.JointTranslationLimits2D : System.ValueType
---@field min number
---@field max number
UnityEngine.JointTranslationLimits2D = {}
---@alias CS.UnityEngine.JointTranslationLimits2D UnityEngine.JointTranslationLimits2D
CS.UnityEngine.JointTranslationLimits2D = UnityEngine.JointTranslationLimits2D


---@class UnityEngine.JointMotor2D : System.ValueType
---@field motorSpeed number
---@field maxMotorTorque number
UnityEngine.JointMotor2D = {}
---@alias CS.UnityEngine.JointMotor2D UnityEngine.JointMotor2D
CS.UnityEngine.JointMotor2D = UnityEngine.JointMotor2D


---@class UnityEngine.JointSuspension2D : System.ValueType
---@field dampingRatio number
---@field frequency number
---@field angle number
UnityEngine.JointSuspension2D = {}
---@alias CS.UnityEngine.JointSuspension2D UnityEngine.JointSuspension2D
CS.UnityEngine.JointSuspension2D = UnityEngine.JointSuspension2D


---@class UnityEngine.RaycastHit2D : System.ValueType
---@field centroid UnityEngine.Vector2
---@field point UnityEngine.Vector2
---@field normal UnityEngine.Vector2
---@field distance number
---@field fraction number
---@field collider UnityEngine.Collider2D
---@field rigidbody UnityEngine.Rigidbody2D
---@field transform UnityEngine.Transform
UnityEngine.RaycastHit2D = {}
---@alias CS.UnityEngine.RaycastHit2D UnityEngine.RaycastHit2D
CS.UnityEngine.RaycastHit2D = UnityEngine.RaycastHit2D

---@param other UnityEngine.RaycastHit2D
---@return number
function UnityEngine.RaycastHit2D:CompareTo(other) end

---@class UnityEngine.PhysicsJobOptions2D : System.ValueType
---@field useMultithreading boolean
---@field useConsistencySorting boolean
---@field interpolationPosesPerJob number
---@field newContactsPerJob number
---@field collideContactsPerJob number
---@field clearFlagsPerJob number
---@field clearBodyForcesPerJob number
---@field syncDiscreteFixturesPerJob number
---@field syncContinuousFixturesPerJob number
---@field findNearestContactsPerJob number
---@field updateTriggerContactsPerJob number
---@field islandSolverCostThreshold number
---@field islandSolverBodyCostScale number
---@field islandSolverContactCostScale number
---@field islandSolverJointCostScale number
---@field islandSolverBodiesPerJob number
---@field islandSolverContactsPerJob number
UnityEngine.PhysicsJobOptions2D = {}
---@alias CS.UnityEngine.PhysicsJobOptions2D UnityEngine.PhysicsJobOptions2D
CS.UnityEngine.PhysicsJobOptions2D = UnityEngine.PhysicsJobOptions2D


---@class UnityEngine.Rigidbody2D : UnityEngine.Component
---@field position UnityEngine.Vector2
---@field rotation number
---@field velocity UnityEngine.Vector2
---@field angularVelocity number
---@field useAutoMass boolean
---@field mass number
---@field sharedMaterial UnityEngine.PhysicsMaterial2D
---@field centerOfMass UnityEngine.Vector2
---@field worldCenterOfMass UnityEngine.Vector2
---@field inertia number
---@field drag number
---@field angularDrag number
---@field gravityScale number
---@field bodyType UnityEngine.RigidbodyType2D
---@field useFullKinematicContacts boolean
---@field isKinematic boolean
---@field freezeRotation boolean
---@field constraints UnityEngine.RigidbodyConstraints2D
---@field simulated boolean
---@field interpolation UnityEngine.RigidbodyInterpolation2D
---@field sleepMode UnityEngine.RigidbodySleepMode2D
---@field collisionDetectionMode UnityEngine.CollisionDetectionMode2D
---@field attachedColliderCount number
---@field totalForce UnityEngine.Vector2
---@field totalTorque number
---@field excludeLayers UnityEngine.LayerMask
---@field includeLayers UnityEngine.LayerMask
UnityEngine.Rigidbody2D = {}
---@alias CS.UnityEngine.Rigidbody2D UnityEngine.Rigidbody2D
CS.UnityEngine.Rigidbody2D = UnityEngine.Rigidbody2D

---@return UnityEngine.Rigidbody2D
function UnityEngine.Rigidbody2D.New() end
---@overload fun(self: UnityEngine.Rigidbody2D, angle: number)
---@param rotation UnityEngine.Quaternion
function UnityEngine.Rigidbody2D:SetRotation(rotation) end
---@param position UnityEngine.Vector2
function UnityEngine.Rigidbody2D:MovePosition(position) end
---@overload fun(self: UnityEngine.Rigidbody2D, angle: number)
---@param rotation UnityEngine.Quaternion
function UnityEngine.Rigidbody2D:MoveRotation(rotation) end
---@return boolean
function UnityEngine.Rigidbody2D:IsSleeping() end
---@return boolean
function UnityEngine.Rigidbody2D:IsAwake() end
function UnityEngine.Rigidbody2D:Sleep() end
function UnityEngine.Rigidbody2D:WakeUp() end
---@overload fun(self: UnityEngine.Rigidbody2D, collider: UnityEngine.Collider2D) : boolean
---@overload fun(self: UnityEngine.Rigidbody2D, collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D) : boolean
---@param contactFilter UnityEngine.ContactFilter2D
---@return boolean
function UnityEngine.Rigidbody2D:IsTouching(contactFilter) end
---@overload fun() : boolean
---@param layerMask number
---@return boolean
function UnityEngine.Rigidbody2D:IsTouchingLayers(layerMask) end
---@param point UnityEngine.Vector2
---@return boolean
function UnityEngine.Rigidbody2D:OverlapPoint(point) end
---@param collider UnityEngine.Collider2D
---@return UnityEngine.ColliderDistance2D
function UnityEngine.Rigidbody2D:Distance(collider) end
---@param position UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:ClosestPoint(position) end
---@overload fun(self: UnityEngine.Rigidbody2D, force: UnityEngine.Vector2)
---@param force UnityEngine.Vector2
---@param mode UnityEngine.ForceMode2D
function UnityEngine.Rigidbody2D:AddForce(force, mode) end
---@overload fun(self: UnityEngine.Rigidbody2D, relativeForce: UnityEngine.Vector2)
---@param relativeForce UnityEngine.Vector2
---@param mode UnityEngine.ForceMode2D
function UnityEngine.Rigidbody2D:AddRelativeForce(relativeForce, mode) end
---@overload fun(self: UnityEngine.Rigidbody2D, force: UnityEngine.Vector2, position: UnityEngine.Vector2)
---@param force UnityEngine.Vector2
---@param position UnityEngine.Vector2
---@param mode UnityEngine.ForceMode2D
function UnityEngine.Rigidbody2D:AddForceAtPosition(force, position, mode) end
---@overload fun(self: UnityEngine.Rigidbody2D, torque: number)
---@param torque number
---@param mode UnityEngine.ForceMode2D
function UnityEngine.Rigidbody2D:AddTorque(torque, mode) end
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetPoint(point) end
---@param relativePoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetRelativePoint(relativePoint) end
---@param vector UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetVector(vector) end
---@param relativeVector UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetRelativeVector(relativeVector) end
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetPointVelocity(point) end
---@param relativePoint UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Rigidbody2D:GetRelativePointVelocity(relativePoint) end
---@overload fun(self: UnityEngine.Rigidbody2D, contactFilter: UnityEngine.ContactFilter2D, out_results: UnityEngine.Collider2D) : number, UnityEngine.Collider2D
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Rigidbody2D:OverlapCollider(contactFilter, results) end
---@overload fun(self: UnityEngine.Rigidbody2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(self: UnityEngine.Rigidbody2D, contacts: System.Collections.Generic.List) : number
---@overload fun(self: UnityEngine.Rigidbody2D, contactFilter: UnityEngine.ContactFilter2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(self: UnityEngine.Rigidbody2D, contactFilter: UnityEngine.ContactFilter2D, contacts: System.Collections.Generic.List) : number
---@overload fun(self: UnityEngine.Rigidbody2D, colliders: UnityEngine.Collider2D[]) : number
---@overload fun(self: UnityEngine.Rigidbody2D, colliders: System.Collections.Generic.List) : number
---@overload fun(self: UnityEngine.Rigidbody2D, contactFilter: UnityEngine.ContactFilter2D, colliders: UnityEngine.Collider2D[]) : number
---@param contactFilter UnityEngine.ContactFilter2D
---@param colliders System.Collections.Generic.List
---@return number
function UnityEngine.Rigidbody2D:GetContacts(contactFilter, colliders) end
---@overload fun(self: UnityEngine.Rigidbody2D, out_results: UnityEngine.Collider2D) : number, UnityEngine.Collider2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Rigidbody2D:GetAttachedColliders(results) end
---@overload fun(self: UnityEngine.Rigidbody2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(self: UnityEngine.Rigidbody2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(self: UnityEngine.Rigidbody2D, direction: UnityEngine.Vector2, results: System.Collections.Generic.List, distance: number) : number
---@overload fun(self: UnityEngine.Rigidbody2D, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(self: UnityEngine.Rigidbody2D, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@param direction UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@param distance number
---@return number
function UnityEngine.Rigidbody2D:Cast(direction, contactFilter, results, distance) end
---@param physicsShapeGroup UnityEngine.PhysicsShapeGroup2D
---@return number
function UnityEngine.Rigidbody2D:GetShapes(physicsShapeGroup) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody2D:DOMove(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody2D:DOMoveX(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody2D:DOMoveY(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody2D:DORotate(endValue, duration) end
---@param endValue UnityEngine.Vector2
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function UnityEngine.Rigidbody2D:DOJump(endValue, jumpPower, numJumps, duration, snapping) end
---@param path UnityEngine.Vector2[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody2D:DOPath(path, duration, pathType, pathMode, resolution, gizmoColor) end
---@param path UnityEngine.Vector2[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Rigidbody2D:DOLocalPath(path, duration, pathType, pathMode, resolution, gizmoColor) end

---@class UnityEngine.Collider2D : UnityEngine.Behaviour
---@field density number
---@field isTrigger boolean
---@field usedByEffector boolean
---@field usedByComposite boolean
---@field composite UnityEngine.CompositeCollider2D
---@field offset UnityEngine.Vector2
---@field attachedRigidbody UnityEngine.Rigidbody2D
---@field shapeCount number
---@field bounds UnityEngine.Bounds
---@field errorState UnityEngine.ColliderErrorState2D
---@field sharedMaterial UnityEngine.PhysicsMaterial2D
---@field layerOverridePriority number
---@field excludeLayers UnityEngine.LayerMask
---@field includeLayers UnityEngine.LayerMask
---@field forceSendLayers UnityEngine.LayerMask
---@field forceReceiveLayers UnityEngine.LayerMask
---@field contactCaptureLayers UnityEngine.LayerMask
---@field callbackLayers UnityEngine.LayerMask
---@field friction number
---@field bounciness number
UnityEngine.Collider2D = {}
---@alias CS.UnityEngine.Collider2D UnityEngine.Collider2D
CS.UnityEngine.Collider2D = UnityEngine.Collider2D

---@return UnityEngine.Collider2D
function UnityEngine.Collider2D.New() end
---@param useBodyPosition boolean
---@param useBodyRotation boolean
---@return UnityEngine.Mesh
function UnityEngine.Collider2D:CreateMesh(useBodyPosition, useBodyRotation) end
---@return number
function UnityEngine.Collider2D:GetShapeHash() end
---@overload fun(self: UnityEngine.Collider2D, physicsShapeGroup: UnityEngine.PhysicsShapeGroup2D) : number
---@param physicsShapeGroup UnityEngine.PhysicsShapeGroup2D
---@param shapeIndex number
---@param shapeCount number
---@return number
function UnityEngine.Collider2D:GetShapes(physicsShapeGroup, shapeIndex, shapeCount) end
---@overload fun(self: UnityEngine.Collider2D, collider: UnityEngine.Collider2D) : boolean
---@overload fun(self: UnityEngine.Collider2D, collider: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D) : boolean
---@param contactFilter UnityEngine.ContactFilter2D
---@return boolean
function UnityEngine.Collider2D:IsTouching(contactFilter) end
---@overload fun() : boolean
---@param layerMask number
---@return boolean
function UnityEngine.Collider2D:IsTouchingLayers(layerMask) end
---@param point UnityEngine.Vector2
---@return boolean
function UnityEngine.Collider2D:OverlapPoint(point) end
---@param collider UnityEngine.Collider2D
---@return UnityEngine.ColliderDistance2D
function UnityEngine.Collider2D:Distance(collider) end
---@overload fun(self: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.Collider2D[]) : number
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@return number
function UnityEngine.Collider2D:OverlapCollider(contactFilter, results) end
---@overload fun(self: UnityEngine.Collider2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(self: UnityEngine.Collider2D, contacts: System.Collections.Generic.List) : number
---@overload fun(self: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, contacts: UnityEngine.ContactPoint2D[]) : number
---@overload fun(self: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, contacts: System.Collections.Generic.List) : number
---@overload fun(self: UnityEngine.Collider2D, colliders: UnityEngine.Collider2D[]) : number
---@overload fun(self: UnityEngine.Collider2D, colliders: System.Collections.Generic.List) : number
---@overload fun(self: UnityEngine.Collider2D, contactFilter: UnityEngine.ContactFilter2D, colliders: UnityEngine.Collider2D[]) : number
---@param contactFilter UnityEngine.ContactFilter2D
---@param colliders System.Collections.Generic.List
---@return number
function UnityEngine.Collider2D:GetContacts(contactFilter, colliders) end
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, ignoreSiblingColliders: boolean) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number, ignoreSiblingColliders: boolean) : number
---@param direction UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@param distance number
---@param ignoreSiblingColliders boolean
---@return number
function UnityEngine.Collider2D:Cast(direction, contactFilter, results, distance, ignoreSiblingColliders) end
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number, minDepth: number) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, results: UnityEngine.RaycastHit2D[], distance: number, layerMask: number, minDepth: number, maxDepth: number) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[]) : number
---@overload fun(self: UnityEngine.Collider2D, direction: UnityEngine.Vector2, contactFilter: UnityEngine.ContactFilter2D, results: UnityEngine.RaycastHit2D[], distance: number) : number
---@param direction UnityEngine.Vector2
---@param contactFilter UnityEngine.ContactFilter2D
---@param results System.Collections.Generic.List
---@param distance number
---@return number
function UnityEngine.Collider2D:Raycast(direction, contactFilter, results, distance) end
---@param position UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Collider2D:ClosestPoint(position) end

---@class UnityEngine.CustomCollider2D : UnityEngine.Collider2D
---@field customShapeCount number
---@field customVertexCount number
UnityEngine.CustomCollider2D = {}
---@alias CS.UnityEngine.CustomCollider2D UnityEngine.CustomCollider2D
CS.UnityEngine.CustomCollider2D = UnityEngine.CustomCollider2D

---@return UnityEngine.CustomCollider2D
function UnityEngine.CustomCollider2D.New() end
---@overload fun(self: UnityEngine.CustomCollider2D, physicsShapeGroup: UnityEngine.PhysicsShapeGroup2D) : number
---@overload fun(self: UnityEngine.CustomCollider2D, physicsShapeGroup: UnityEngine.PhysicsShapeGroup2D, shapeIndex: number, shapeCount: number) : number
---@param shapes Unity.Collections.NativeArray
---@param vertices Unity.Collections.NativeArray
---@return number
function UnityEngine.CustomCollider2D:GetCustomShapes(shapes, vertices) end
---@overload fun(self: UnityEngine.CustomCollider2D, physicsShapeGroup: UnityEngine.PhysicsShapeGroup2D)
---@param shapes Unity.Collections.NativeArray
---@param vertices Unity.Collections.NativeArray
function UnityEngine.CustomCollider2D:SetCustomShapes(shapes, vertices) end
---@overload fun(self: UnityEngine.CustomCollider2D, physicsShapeGroup: UnityEngine.PhysicsShapeGroup2D, srcShapeIndex: number, dstShapeIndex: number)
---@param shapes Unity.Collections.NativeArray
---@param vertices Unity.Collections.NativeArray
---@param srcShapeIndex number
---@param dstShapeIndex number
function UnityEngine.CustomCollider2D:SetCustomShape(shapes, vertices, srcShapeIndex, dstShapeIndex) end
---@overload fun(self: UnityEngine.CustomCollider2D, shapeIndex: number, shapeCount: number)
function UnityEngine.CustomCollider2D:ClearCustomShapes() end

---@class UnityEngine.CircleCollider2D : UnityEngine.Collider2D
---@field radius number
UnityEngine.CircleCollider2D = {}
---@alias CS.UnityEngine.CircleCollider2D UnityEngine.CircleCollider2D
CS.UnityEngine.CircleCollider2D = UnityEngine.CircleCollider2D

---@return UnityEngine.CircleCollider2D
function UnityEngine.CircleCollider2D.New() end

---@class UnityEngine.CapsuleCollider2D : UnityEngine.Collider2D
---@field size UnityEngine.Vector2
---@field direction UnityEngine.CapsuleDirection2D
UnityEngine.CapsuleCollider2D = {}
---@alias CS.UnityEngine.CapsuleCollider2D UnityEngine.CapsuleCollider2D
CS.UnityEngine.CapsuleCollider2D = UnityEngine.CapsuleCollider2D

---@return UnityEngine.CapsuleCollider2D
function UnityEngine.CapsuleCollider2D.New() end

---@class UnityEngine.EdgeCollider2D : UnityEngine.Collider2D
---@field edgeRadius number
---@field edgeCount number
---@field pointCount number
---@field points UnityEngine.Vector2[]
---@field useAdjacentStartPoint boolean
---@field useAdjacentEndPoint boolean
---@field adjacentStartPoint UnityEngine.Vector2
---@field adjacentEndPoint UnityEngine.Vector2
UnityEngine.EdgeCollider2D = {}
---@alias CS.UnityEngine.EdgeCollider2D UnityEngine.EdgeCollider2D
CS.UnityEngine.EdgeCollider2D = UnityEngine.EdgeCollider2D

---@return UnityEngine.EdgeCollider2D
function UnityEngine.EdgeCollider2D.New() end
function UnityEngine.EdgeCollider2D:Reset() end
---@param points System.Collections.Generic.List
---@return number
function UnityEngine.EdgeCollider2D:GetPoints(points) end
---@param points System.Collections.Generic.List
---@return boolean
function UnityEngine.EdgeCollider2D:SetPoints(points) end

---@class UnityEngine.BoxCollider2D : UnityEngine.Collider2D
---@field size UnityEngine.Vector2
---@field edgeRadius number
---@field autoTiling boolean
UnityEngine.BoxCollider2D = {}
---@alias CS.UnityEngine.BoxCollider2D UnityEngine.BoxCollider2D
CS.UnityEngine.BoxCollider2D = UnityEngine.BoxCollider2D

---@return UnityEngine.BoxCollider2D
function UnityEngine.BoxCollider2D.New() end

---@class UnityEngine.PolygonCollider2D : UnityEngine.Collider2D
---@field useDelaunayMesh boolean
---@field autoTiling boolean
---@field points UnityEngine.Vector2[]
---@field pathCount number
UnityEngine.PolygonCollider2D = {}
---@alias CS.UnityEngine.PolygonCollider2D UnityEngine.PolygonCollider2D
CS.UnityEngine.PolygonCollider2D = UnityEngine.PolygonCollider2D

---@return UnityEngine.PolygonCollider2D
function UnityEngine.PolygonCollider2D.New() end
---@return number
function UnityEngine.PolygonCollider2D:GetTotalPointCount() end
---@overload fun(self: UnityEngine.PolygonCollider2D, index: number) : UnityEngine.Vector2[]
---@param index number
---@param points System.Collections.Generic.List
---@return number
function UnityEngine.PolygonCollider2D:GetPath(index, points) end
---@overload fun(self: UnityEngine.PolygonCollider2D, index: number, points: UnityEngine.Vector2[])
---@param index number
---@param points System.Collections.Generic.List
function UnityEngine.PolygonCollider2D:SetPath(index, points) end
---@overload fun(self: UnityEngine.PolygonCollider2D, sides: number)
---@overload fun(self: UnityEngine.PolygonCollider2D, sides: number, scale: UnityEngine.Vector2)
---@param sides number
---@param scale UnityEngine.Vector2
---@param offset UnityEngine.Vector2
function UnityEngine.PolygonCollider2D:CreatePrimitive(sides, scale, offset) end

---@class UnityEngine.CompositeCollider2D : UnityEngine.Collider2D
---@field geometryType UnityEngine.CompositeCollider2D.GeometryType
---@field generationType UnityEngine.CompositeCollider2D.GenerationType
---@field useDelaunayMesh boolean
---@field vertexDistance number
---@field edgeRadius number
---@field offsetDistance number
---@field pathCount number
---@field pointCount number
UnityEngine.CompositeCollider2D = {}
---@alias CS.UnityEngine.CompositeCollider2D UnityEngine.CompositeCollider2D
CS.UnityEngine.CompositeCollider2D = UnityEngine.CompositeCollider2D

---@return UnityEngine.CompositeCollider2D
function UnityEngine.CompositeCollider2D.New() end
function UnityEngine.CompositeCollider2D:GenerateGeometry() end
---@param index number
---@return number
function UnityEngine.CompositeCollider2D:GetPathPointCount(index) end
---@overload fun(self: UnityEngine.CompositeCollider2D, index: number, points: UnityEngine.Vector2[]) : number
---@param index number
---@param points System.Collections.Generic.List
---@return number
function UnityEngine.CompositeCollider2D:GetPath(index, points) end

---@class UnityEngine.CompositeCollider2D.GeometryType
---@field Outlines UnityEngine.CompositeCollider2D.GeometryType
---@field Polygons UnityEngine.CompositeCollider2D.GeometryType
UnityEngine.CompositeCollider2D.GeometryType = {}
---@alias CS.UnityEngine.CompositeCollider2D.GeometryType UnityEngine.CompositeCollider2D.GeometryType
CS.UnityEngine.CompositeCollider2D.GeometryType = UnityEngine.CompositeCollider2D.GeometryType


---@class UnityEngine.CompositeCollider2D.GenerationType
---@field Synchronous UnityEngine.CompositeCollider2D.GenerationType
---@field Manual UnityEngine.CompositeCollider2D.GenerationType
UnityEngine.CompositeCollider2D.GenerationType = {}
---@alias CS.UnityEngine.CompositeCollider2D.GenerationType UnityEngine.CompositeCollider2D.GenerationType
CS.UnityEngine.CompositeCollider2D.GenerationType = UnityEngine.CompositeCollider2D.GenerationType


---@class UnityEngine.Joint2D : UnityEngine.Behaviour
---@field attachedRigidbody UnityEngine.Rigidbody2D
---@field connectedBody UnityEngine.Rigidbody2D
---@field enableCollision boolean
---@field breakForce number
---@field breakTorque number
---@field breakAction UnityEngine.JointBreakAction2D
---@field reactionForce UnityEngine.Vector2
---@field reactionTorque number
UnityEngine.Joint2D = {}
---@alias CS.UnityEngine.Joint2D UnityEngine.Joint2D
CS.UnityEngine.Joint2D = UnityEngine.Joint2D

---@return UnityEngine.Joint2D
function UnityEngine.Joint2D.New() end
---@param timeStep number
---@return UnityEngine.Vector2
function UnityEngine.Joint2D:GetReactionForce(timeStep) end
---@param timeStep number
---@return number
function UnityEngine.Joint2D:GetReactionTorque(timeStep) end

---@class UnityEngine.AnchoredJoint2D : UnityEngine.Joint2D
---@field anchor UnityEngine.Vector2
---@field connectedAnchor UnityEngine.Vector2
---@field autoConfigureConnectedAnchor boolean
UnityEngine.AnchoredJoint2D = {}
---@alias CS.UnityEngine.AnchoredJoint2D UnityEngine.AnchoredJoint2D
CS.UnityEngine.AnchoredJoint2D = UnityEngine.AnchoredJoint2D

---@return UnityEngine.AnchoredJoint2D
function UnityEngine.AnchoredJoint2D.New() end

---@class UnityEngine.SpringJoint2D : UnityEngine.AnchoredJoint2D
---@field autoConfigureDistance boolean
---@field distance number
---@field dampingRatio number
---@field frequency number
UnityEngine.SpringJoint2D = {}
---@alias CS.UnityEngine.SpringJoint2D UnityEngine.SpringJoint2D
CS.UnityEngine.SpringJoint2D = UnityEngine.SpringJoint2D

---@return UnityEngine.SpringJoint2D
function UnityEngine.SpringJoint2D.New() end

---@class UnityEngine.DistanceJoint2D : UnityEngine.AnchoredJoint2D
---@field autoConfigureDistance boolean
---@field distance number
---@field maxDistanceOnly boolean
UnityEngine.DistanceJoint2D = {}
---@alias CS.UnityEngine.DistanceJoint2D UnityEngine.DistanceJoint2D
CS.UnityEngine.DistanceJoint2D = UnityEngine.DistanceJoint2D

---@return UnityEngine.DistanceJoint2D
function UnityEngine.DistanceJoint2D.New() end

---@class UnityEngine.FrictionJoint2D : UnityEngine.AnchoredJoint2D
---@field maxForce number
---@field maxTorque number
UnityEngine.FrictionJoint2D = {}
---@alias CS.UnityEngine.FrictionJoint2D UnityEngine.FrictionJoint2D
CS.UnityEngine.FrictionJoint2D = UnityEngine.FrictionJoint2D

---@return UnityEngine.FrictionJoint2D
function UnityEngine.FrictionJoint2D.New() end

---@class UnityEngine.HingeJoint2D : UnityEngine.AnchoredJoint2D
---@field useMotor boolean
---@field useLimits boolean
---@field motor UnityEngine.JointMotor2D
---@field limits UnityEngine.JointAngleLimits2D
---@field limitState UnityEngine.JointLimitState2D
---@field referenceAngle number
---@field jointAngle number
---@field jointSpeed number
UnityEngine.HingeJoint2D = {}
---@alias CS.UnityEngine.HingeJoint2D UnityEngine.HingeJoint2D
CS.UnityEngine.HingeJoint2D = UnityEngine.HingeJoint2D

---@return UnityEngine.HingeJoint2D
function UnityEngine.HingeJoint2D.New() end
---@param timeStep number
---@return number
function UnityEngine.HingeJoint2D:GetMotorTorque(timeStep) end

---@class UnityEngine.RelativeJoint2D : UnityEngine.Joint2D
---@field maxForce number
---@field maxTorque number
---@field correctionScale number
---@field autoConfigureOffset boolean
---@field linearOffset UnityEngine.Vector2
---@field angularOffset number
---@field target UnityEngine.Vector2
UnityEngine.RelativeJoint2D = {}
---@alias CS.UnityEngine.RelativeJoint2D UnityEngine.RelativeJoint2D
CS.UnityEngine.RelativeJoint2D = UnityEngine.RelativeJoint2D

---@return UnityEngine.RelativeJoint2D
function UnityEngine.RelativeJoint2D.New() end

---@class UnityEngine.SliderJoint2D : UnityEngine.AnchoredJoint2D
---@field autoConfigureAngle boolean
---@field angle number
---@field useMotor boolean
---@field useLimits boolean
---@field motor UnityEngine.JointMotor2D
---@field limits UnityEngine.JointTranslationLimits2D
---@field limitState UnityEngine.JointLimitState2D
---@field referenceAngle number
---@field jointTranslation number
---@field jointSpeed number
UnityEngine.SliderJoint2D = {}
---@alias CS.UnityEngine.SliderJoint2D UnityEngine.SliderJoint2D
CS.UnityEngine.SliderJoint2D = UnityEngine.SliderJoint2D

---@return UnityEngine.SliderJoint2D
function UnityEngine.SliderJoint2D.New() end
---@param timeStep number
---@return number
function UnityEngine.SliderJoint2D:GetMotorForce(timeStep) end

---@class UnityEngine.TargetJoint2D : UnityEngine.Joint2D
---@field anchor UnityEngine.Vector2
---@field target UnityEngine.Vector2
---@field autoConfigureTarget boolean
---@field maxForce number
---@field dampingRatio number
---@field frequency number
UnityEngine.TargetJoint2D = {}
---@alias CS.UnityEngine.TargetJoint2D UnityEngine.TargetJoint2D
CS.UnityEngine.TargetJoint2D = UnityEngine.TargetJoint2D

---@return UnityEngine.TargetJoint2D
function UnityEngine.TargetJoint2D.New() end

---@class UnityEngine.FixedJoint2D : UnityEngine.AnchoredJoint2D
---@field dampingRatio number
---@field frequency number
---@field referenceAngle number
UnityEngine.FixedJoint2D = {}
---@alias CS.UnityEngine.FixedJoint2D UnityEngine.FixedJoint2D
CS.UnityEngine.FixedJoint2D = UnityEngine.FixedJoint2D

---@return UnityEngine.FixedJoint2D
function UnityEngine.FixedJoint2D.New() end

---@class UnityEngine.WheelJoint2D : UnityEngine.AnchoredJoint2D
---@field suspension UnityEngine.JointSuspension2D
---@field useMotor boolean
---@field motor UnityEngine.JointMotor2D
---@field jointTranslation number
---@field jointLinearSpeed number
---@field jointSpeed number
---@field jointAngle number
UnityEngine.WheelJoint2D = {}
---@alias CS.UnityEngine.WheelJoint2D UnityEngine.WheelJoint2D
CS.UnityEngine.WheelJoint2D = UnityEngine.WheelJoint2D

---@return UnityEngine.WheelJoint2D
function UnityEngine.WheelJoint2D.New() end
---@param timeStep number
---@return number
function UnityEngine.WheelJoint2D:GetMotorTorque(timeStep) end

---@class UnityEngine.Effector2D : UnityEngine.Behaviour
---@field useColliderMask boolean
---@field colliderMask number
UnityEngine.Effector2D = {}
---@alias CS.UnityEngine.Effector2D UnityEngine.Effector2D
CS.UnityEngine.Effector2D = UnityEngine.Effector2D

---@return UnityEngine.Effector2D
function UnityEngine.Effector2D.New() end

---@class UnityEngine.AreaEffector2D : UnityEngine.Effector2D
---@field forceAngle number
---@field useGlobalAngle boolean
---@field forceMagnitude number
---@field forceVariation number
---@field drag number
---@field angularDrag number
---@field forceTarget UnityEngine.EffectorSelection2D
UnityEngine.AreaEffector2D = {}
---@alias CS.UnityEngine.AreaEffector2D UnityEngine.AreaEffector2D
CS.UnityEngine.AreaEffector2D = UnityEngine.AreaEffector2D

---@return UnityEngine.AreaEffector2D
function UnityEngine.AreaEffector2D.New() end

---@class UnityEngine.BuoyancyEffector2D : UnityEngine.Effector2D
---@field surfaceLevel number
---@field density number
---@field linearDrag number
---@field angularDrag number
---@field flowAngle number
---@field flowMagnitude number
---@field flowVariation number
UnityEngine.BuoyancyEffector2D = {}
---@alias CS.UnityEngine.BuoyancyEffector2D UnityEngine.BuoyancyEffector2D
CS.UnityEngine.BuoyancyEffector2D = UnityEngine.BuoyancyEffector2D

---@return UnityEngine.BuoyancyEffector2D
function UnityEngine.BuoyancyEffector2D.New() end

---@class UnityEngine.PointEffector2D : UnityEngine.Effector2D
---@field forceMagnitude number
---@field forceVariation number
---@field distanceScale number
---@field drag number
---@field angularDrag number
---@field forceSource UnityEngine.EffectorSelection2D
---@field forceTarget UnityEngine.EffectorSelection2D
---@field forceMode UnityEngine.EffectorForceMode2D
UnityEngine.PointEffector2D = {}
---@alias CS.UnityEngine.PointEffector2D UnityEngine.PointEffector2D
CS.UnityEngine.PointEffector2D = UnityEngine.PointEffector2D

---@return UnityEngine.PointEffector2D
function UnityEngine.PointEffector2D.New() end

---@class UnityEngine.PlatformEffector2D : UnityEngine.Effector2D
---@field useOneWay boolean
---@field useOneWayGrouping boolean
---@field useSideFriction boolean
---@field useSideBounce boolean
---@field surfaceArc number
---@field sideArc number
---@field rotationalOffset number
UnityEngine.PlatformEffector2D = {}
---@alias CS.UnityEngine.PlatformEffector2D UnityEngine.PlatformEffector2D
CS.UnityEngine.PlatformEffector2D = UnityEngine.PlatformEffector2D

---@return UnityEngine.PlatformEffector2D
function UnityEngine.PlatformEffector2D.New() end

---@class UnityEngine.SurfaceEffector2D : UnityEngine.Effector2D
---@field speed number
---@field speedVariation number
---@field forceScale number
---@field useContactForce boolean
---@field useFriction boolean
---@field useBounce boolean
UnityEngine.SurfaceEffector2D = {}
---@alias CS.UnityEngine.SurfaceEffector2D UnityEngine.SurfaceEffector2D
CS.UnityEngine.SurfaceEffector2D = UnityEngine.SurfaceEffector2D

---@return UnityEngine.SurfaceEffector2D
function UnityEngine.SurfaceEffector2D.New() end

---@class UnityEngine.PhysicsUpdateBehaviour2D : UnityEngine.Behaviour
UnityEngine.PhysicsUpdateBehaviour2D = {}
---@alias CS.UnityEngine.PhysicsUpdateBehaviour2D UnityEngine.PhysicsUpdateBehaviour2D
CS.UnityEngine.PhysicsUpdateBehaviour2D = UnityEngine.PhysicsUpdateBehaviour2D

---@return UnityEngine.PhysicsUpdateBehaviour2D
function UnityEngine.PhysicsUpdateBehaviour2D.New() end

---@class UnityEngine.ConstantForce2D : UnityEngine.PhysicsUpdateBehaviour2D
---@field force UnityEngine.Vector2
---@field relativeForce UnityEngine.Vector2
---@field torque number
UnityEngine.ConstantForce2D = {}
---@alias CS.UnityEngine.ConstantForce2D UnityEngine.ConstantForce2D
CS.UnityEngine.ConstantForce2D = UnityEngine.ConstantForce2D

---@return UnityEngine.ConstantForce2D
function UnityEngine.ConstantForce2D.New() end

---@class UnityEngine.PhysicsMaterial2D : UnityEngine.Object
---@field bounciness number
---@field friction number
UnityEngine.PhysicsMaterial2D = {}
---@alias CS.UnityEngine.PhysicsMaterial2D UnityEngine.PhysicsMaterial2D
CS.UnityEngine.PhysicsMaterial2D = UnityEngine.PhysicsMaterial2D

---@overload fun() : UnityEngine.PhysicsMaterial2D
---@param name string
---@return UnityEngine.PhysicsMaterial2D
function UnityEngine.PhysicsMaterial2D.New(name) end

---@class UnityEngine.ScreenCapture : System.Object
UnityEngine.ScreenCapture = {}
---@alias CS.UnityEngine.ScreenCapture UnityEngine.ScreenCapture
CS.UnityEngine.ScreenCapture = UnityEngine.ScreenCapture

---@overload fun(filename: string)
---@overload fun(filename: string, superSize: number)
---@param filename string
---@param stereoCaptureMode UnityEngine.ScreenCapture.StereoScreenCaptureMode
function UnityEngine.ScreenCapture.CaptureScreenshot(filename, stereoCaptureMode) end
---@overload fun() : UnityEngine.Texture2D
---@overload fun(superSize: number) : UnityEngine.Texture2D
---@param stereoCaptureMode UnityEngine.ScreenCapture.StereoScreenCaptureMode
---@return UnityEngine.Texture2D
function UnityEngine.ScreenCapture.CaptureScreenshotAsTexture(stereoCaptureMode) end
---@param renderTexture UnityEngine.RenderTexture
function UnityEngine.ScreenCapture.CaptureScreenshotIntoRenderTexture(renderTexture) end

---@class UnityEngine.ScreenCapture.StereoScreenCaptureMode
---@field LeftEye UnityEngine.ScreenCapture.StereoScreenCaptureMode
---@field RightEye UnityEngine.ScreenCapture.StereoScreenCaptureMode
---@field BothEyes UnityEngine.ScreenCapture.StereoScreenCaptureMode
UnityEngine.ScreenCapture.StereoScreenCaptureMode = {}
---@alias CS.UnityEngine.ScreenCapture.StereoScreenCaptureMode UnityEngine.ScreenCapture.StereoScreenCaptureMode
CS.UnityEngine.ScreenCapture.StereoScreenCaptureMode = UnityEngine.ScreenCapture.StereoScreenCaptureMode


---@class UnityEngine.AssetFileNameExtensionAttribute : System.Attribute
---@field preferredExtension string
---@field otherExtensions System.Collections.Generic.IEnumerable
UnityEngine.AssetFileNameExtensionAttribute = {}
---@alias CS.UnityEngine.AssetFileNameExtensionAttribute UnityEngine.AssetFileNameExtensionAttribute
CS.UnityEngine.AssetFileNameExtensionAttribute = UnityEngine.AssetFileNameExtensionAttribute

---@param preferredExtension string
---@param otherExtensions System.String[]
---@return UnityEngine.AssetFileNameExtensionAttribute
function UnityEngine.AssetFileNameExtensionAttribute.New(preferredExtension, otherExtensions) end

---@class UnityEngine.ThreadAndSerializationSafeAttribute : System.Attribute
UnityEngine.ThreadAndSerializationSafeAttribute = {}
---@alias CS.UnityEngine.ThreadAndSerializationSafeAttribute UnityEngine.ThreadAndSerializationSafeAttribute
CS.UnityEngine.ThreadAndSerializationSafeAttribute = UnityEngine.ThreadAndSerializationSafeAttribute

---@return UnityEngine.ThreadAndSerializationSafeAttribute
function UnityEngine.ThreadAndSerializationSafeAttribute.New() end

---@class UnityEngine.IL2CPPStructAlignmentAttribute : System.Attribute
---@field Align number
UnityEngine.IL2CPPStructAlignmentAttribute = {}
---@alias CS.UnityEngine.IL2CPPStructAlignmentAttribute UnityEngine.IL2CPPStructAlignmentAttribute
CS.UnityEngine.IL2CPPStructAlignmentAttribute = UnityEngine.IL2CPPStructAlignmentAttribute

---@return UnityEngine.IL2CPPStructAlignmentAttribute
function UnityEngine.IL2CPPStructAlignmentAttribute.New() end

---@class UnityEngine.WritableAttribute : System.Attribute
UnityEngine.WritableAttribute = {}
---@alias CS.UnityEngine.WritableAttribute UnityEngine.WritableAttribute
CS.UnityEngine.WritableAttribute = UnityEngine.WritableAttribute

---@return UnityEngine.WritableAttribute
function UnityEngine.WritableAttribute.New() end

---@class UnityEngine.RejectDragAndDropMaterial : System.Attribute
UnityEngine.RejectDragAndDropMaterial = {}
---@alias CS.UnityEngine.RejectDragAndDropMaterial UnityEngine.RejectDragAndDropMaterial
CS.UnityEngine.RejectDragAndDropMaterial = UnityEngine.RejectDragAndDropMaterial

---@return UnityEngine.RejectDragAndDropMaterial
function UnityEngine.RejectDragAndDropMaterial.New() end

---@class UnityEngine.UnityEngineModuleAssembly : System.Attribute
UnityEngine.UnityEngineModuleAssembly = {}
---@alias CS.UnityEngine.UnityEngineModuleAssembly UnityEngine.UnityEngineModuleAssembly
CS.UnityEngine.UnityEngineModuleAssembly = UnityEngine.UnityEngineModuleAssembly

---@return UnityEngine.UnityEngineModuleAssembly
function UnityEngine.UnityEngineModuleAssembly.New() end

---@class UnityEngine.NativeClassAttribute : System.Attribute
---@field QualifiedNativeName string
---@field Declaration string
UnityEngine.NativeClassAttribute = {}
---@alias CS.UnityEngine.NativeClassAttribute UnityEngine.NativeClassAttribute
CS.UnityEngine.NativeClassAttribute = UnityEngine.NativeClassAttribute

---@overload fun(qualifiedCppName: string) : UnityEngine.NativeClassAttribute
---@param qualifiedCppName string
---@param declaration string
---@return UnityEngine.NativeClassAttribute
function UnityEngine.NativeClassAttribute.New(qualifiedCppName, declaration) end

---@class UnityEngine.UnityString : System.Object
UnityEngine.UnityString = {}
---@alias CS.UnityEngine.UnityString UnityEngine.UnityString
CS.UnityEngine.UnityString = UnityEngine.UnityString

---@return UnityEngine.UnityString
function UnityEngine.UnityString.New() end
---@param fmt string
---@param args System.Object[]
---@return string
function UnityEngine.UnityString.Format(fmt, args) end

---@class UnityEngine.Bindings.VisibleToOtherModulesAttribute : System.Attribute
UnityEngine.Bindings.VisibleToOtherModulesAttribute = {}
---@alias CS.UnityEngine.Bindings.VisibleToOtherModulesAttribute UnityEngine.Bindings.VisibleToOtherModulesAttribute
CS.UnityEngine.Bindings.VisibleToOtherModulesAttribute = UnityEngine.Bindings.VisibleToOtherModulesAttribute

---@overload fun() : UnityEngine.Bindings.VisibleToOtherModulesAttribute
---@param modules System.String[]
---@return UnityEngine.Bindings.VisibleToOtherModulesAttribute
function UnityEngine.Bindings.VisibleToOtherModulesAttribute.New(modules) end

---@class UnityEngine.Bindings.IBindingsAttribute
UnityEngine.Bindings.IBindingsAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsAttribute UnityEngine.Bindings.IBindingsAttribute
CS.UnityEngine.Bindings.IBindingsAttribute = UnityEngine.Bindings.IBindingsAttribute


---@class UnityEngine.Bindings.IBindingsNameProviderAttribute
---@field Name string
UnityEngine.Bindings.IBindingsNameProviderAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsNameProviderAttribute UnityEngine.Bindings.IBindingsNameProviderAttribute
CS.UnityEngine.Bindings.IBindingsNameProviderAttribute = UnityEngine.Bindings.IBindingsNameProviderAttribute


---@class UnityEngine.Bindings.IBindingsHeaderProviderAttribute
---@field Header string
UnityEngine.Bindings.IBindingsHeaderProviderAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsHeaderProviderAttribute UnityEngine.Bindings.IBindingsHeaderProviderAttribute
CS.UnityEngine.Bindings.IBindingsHeaderProviderAttribute = UnityEngine.Bindings.IBindingsHeaderProviderAttribute


---@class UnityEngine.Bindings.IBindingsIsThreadSafeProviderAttribute
---@field IsThreadSafe boolean
UnityEngine.Bindings.IBindingsIsThreadSafeProviderAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsIsThreadSafeProviderAttribute UnityEngine.Bindings.IBindingsIsThreadSafeProviderAttribute
CS.UnityEngine.Bindings.IBindingsIsThreadSafeProviderAttribute = UnityEngine.Bindings.IBindingsIsThreadSafeProviderAttribute


---@class UnityEngine.Bindings.IBindingsIsFreeFunctionProviderAttribute
---@field IsFreeFunction boolean
---@field HasExplicitThis boolean
UnityEngine.Bindings.IBindingsIsFreeFunctionProviderAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsIsFreeFunctionProviderAttribute UnityEngine.Bindings.IBindingsIsFreeFunctionProviderAttribute
CS.UnityEngine.Bindings.IBindingsIsFreeFunctionProviderAttribute = UnityEngine.Bindings.IBindingsIsFreeFunctionProviderAttribute


---@class UnityEngine.Bindings.IBindingsThrowsProviderAttribute
---@field ThrowsException boolean
UnityEngine.Bindings.IBindingsThrowsProviderAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsThrowsProviderAttribute UnityEngine.Bindings.IBindingsThrowsProviderAttribute
CS.UnityEngine.Bindings.IBindingsThrowsProviderAttribute = UnityEngine.Bindings.IBindingsThrowsProviderAttribute


---@class UnityEngine.Bindings.IBindingsGenerateMarshallingTypeAttribute
---@field CodegenOptions UnityEngine.Bindings.CodegenOptions
UnityEngine.Bindings.IBindingsGenerateMarshallingTypeAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsGenerateMarshallingTypeAttribute UnityEngine.Bindings.IBindingsGenerateMarshallingTypeAttribute
CS.UnityEngine.Bindings.IBindingsGenerateMarshallingTypeAttribute = UnityEngine.Bindings.IBindingsGenerateMarshallingTypeAttribute


---@class UnityEngine.Bindings.IBindingsWritableSelfProviderAttribute
---@field WritableSelf boolean
UnityEngine.Bindings.IBindingsWritableSelfProviderAttribute = {}
---@alias CS.UnityEngine.Bindings.IBindingsWritableSelfProviderAttribute UnityEngine.Bindings.IBindingsWritableSelfProviderAttribute
CS.UnityEngine.Bindings.IBindingsWritableSelfProviderAttribute = UnityEngine.Bindings.IBindingsWritableSelfProviderAttribute


---@class UnityEngine.Bindings.NativeConditionalAttribute : System.Attribute
---@field Condition string
---@field StubReturnStatement string
---@field Enabled boolean
UnityEngine.Bindings.NativeConditionalAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeConditionalAttribute UnityEngine.Bindings.NativeConditionalAttribute
CS.UnityEngine.Bindings.NativeConditionalAttribute = UnityEngine.Bindings.NativeConditionalAttribute

---@overload fun() : UnityEngine.Bindings.NativeConditionalAttribute
---@overload fun(condition: string) : UnityEngine.Bindings.NativeConditionalAttribute
---@overload fun(enabled: boolean) : UnityEngine.Bindings.NativeConditionalAttribute
---@overload fun(condition: string, enabled: boolean) : UnityEngine.Bindings.NativeConditionalAttribute
---@overload fun(condition: string, stubReturnStatement: string, enabled: boolean) : UnityEngine.Bindings.NativeConditionalAttribute
---@param condition string
---@param stubReturnStatement string
---@return UnityEngine.Bindings.NativeConditionalAttribute
function UnityEngine.Bindings.NativeConditionalAttribute.New(condition, stubReturnStatement) end

---@class UnityEngine.Bindings.NativeHeaderAttribute : System.Attribute
---@field Header string
UnityEngine.Bindings.NativeHeaderAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeHeaderAttribute UnityEngine.Bindings.NativeHeaderAttribute
CS.UnityEngine.Bindings.NativeHeaderAttribute = UnityEngine.Bindings.NativeHeaderAttribute

---@overload fun() : UnityEngine.Bindings.NativeHeaderAttribute
---@param header string
---@return UnityEngine.Bindings.NativeHeaderAttribute
function UnityEngine.Bindings.NativeHeaderAttribute.New(header) end

---@class UnityEngine.Bindings.NativeNameAttribute : System.Attribute
---@field Name string
UnityEngine.Bindings.NativeNameAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeNameAttribute UnityEngine.Bindings.NativeNameAttribute
CS.UnityEngine.Bindings.NativeNameAttribute = UnityEngine.Bindings.NativeNameAttribute

---@overload fun() : UnityEngine.Bindings.NativeNameAttribute
---@param name string
---@return UnityEngine.Bindings.NativeNameAttribute
function UnityEngine.Bindings.NativeNameAttribute.New(name) end

---@class UnityEngine.Bindings.NativeWritableSelfAttribute : System.Attribute
---@field WritableSelf boolean
UnityEngine.Bindings.NativeWritableSelfAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeWritableSelfAttribute UnityEngine.Bindings.NativeWritableSelfAttribute
CS.UnityEngine.Bindings.NativeWritableSelfAttribute = UnityEngine.Bindings.NativeWritableSelfAttribute

---@overload fun() : UnityEngine.Bindings.NativeWritableSelfAttribute
---@param writable boolean
---@return UnityEngine.Bindings.NativeWritableSelfAttribute
function UnityEngine.Bindings.NativeWritableSelfAttribute.New(writable) end

---@class UnityEngine.Bindings.NativeMethodAttribute : System.Attribute
---@field Name string
---@field IsThreadSafe boolean
---@field IsFreeFunction boolean
---@field ThrowsException boolean
---@field HasExplicitThis boolean
---@field WritableSelf boolean
UnityEngine.Bindings.NativeMethodAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeMethodAttribute UnityEngine.Bindings.NativeMethodAttribute
CS.UnityEngine.Bindings.NativeMethodAttribute = UnityEngine.Bindings.NativeMethodAttribute

---@overload fun() : UnityEngine.Bindings.NativeMethodAttribute
---@overload fun(name: string) : UnityEngine.Bindings.NativeMethodAttribute
---@overload fun(name: string, isFreeFunction: boolean) : UnityEngine.Bindings.NativeMethodAttribute
---@overload fun(name: string, isFreeFunction: boolean, isThreadSafe: boolean) : UnityEngine.Bindings.NativeMethodAttribute
---@param name string
---@param isFreeFunction boolean
---@param isThreadSafe boolean
---@param throws boolean
---@return UnityEngine.Bindings.NativeMethodAttribute
function UnityEngine.Bindings.NativeMethodAttribute.New(name, isFreeFunction, isThreadSafe, throws) end

---@class UnityEngine.Bindings.TargetType
---@field Function UnityEngine.Bindings.TargetType
---@field Field UnityEngine.Bindings.TargetType
UnityEngine.Bindings.TargetType = {}
---@alias CS.UnityEngine.Bindings.TargetType UnityEngine.Bindings.TargetType
CS.UnityEngine.Bindings.TargetType = UnityEngine.Bindings.TargetType


---@class UnityEngine.Bindings.NativePropertyAttribute : UnityEngine.Bindings.NativeMethodAttribute
---@field TargetType UnityEngine.Bindings.TargetType
UnityEngine.Bindings.NativePropertyAttribute = {}
---@alias CS.UnityEngine.Bindings.NativePropertyAttribute UnityEngine.Bindings.NativePropertyAttribute
CS.UnityEngine.Bindings.NativePropertyAttribute = UnityEngine.Bindings.NativePropertyAttribute

---@overload fun() : UnityEngine.Bindings.NativePropertyAttribute
---@overload fun(name: string) : UnityEngine.Bindings.NativePropertyAttribute
---@overload fun(name: string, targetType: UnityEngine.Bindings.TargetType) : UnityEngine.Bindings.NativePropertyAttribute
---@overload fun(name: string, isFree: boolean, targetType: UnityEngine.Bindings.TargetType) : UnityEngine.Bindings.NativePropertyAttribute
---@param name string
---@param isFree boolean
---@param targetType UnityEngine.Bindings.TargetType
---@param isThreadSafe boolean
---@return UnityEngine.Bindings.NativePropertyAttribute
function UnityEngine.Bindings.NativePropertyAttribute.New(name, isFree, targetType, isThreadSafe) end

---@class UnityEngine.Bindings.CodegenOptions
---@field Auto UnityEngine.Bindings.CodegenOptions
---@field Custom UnityEngine.Bindings.CodegenOptions
---@field Force UnityEngine.Bindings.CodegenOptions
UnityEngine.Bindings.CodegenOptions = {}
---@alias CS.UnityEngine.Bindings.CodegenOptions UnityEngine.Bindings.CodegenOptions
CS.UnityEngine.Bindings.CodegenOptions = UnityEngine.Bindings.CodegenOptions


---@class UnityEngine.Bindings.NativeAsStructAttribute : System.Attribute
UnityEngine.Bindings.NativeAsStructAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeAsStructAttribute UnityEngine.Bindings.NativeAsStructAttribute
CS.UnityEngine.Bindings.NativeAsStructAttribute = UnityEngine.Bindings.NativeAsStructAttribute

---@return UnityEngine.Bindings.NativeAsStructAttribute
function UnityEngine.Bindings.NativeAsStructAttribute.New() end

---@class UnityEngine.Bindings.NativeTypeAttribute : System.Attribute
---@field Header string
---@field IntermediateScriptingStructName string
---@field CodegenOptions UnityEngine.Bindings.CodegenOptions
UnityEngine.Bindings.NativeTypeAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeTypeAttribute UnityEngine.Bindings.NativeTypeAttribute
CS.UnityEngine.Bindings.NativeTypeAttribute = UnityEngine.Bindings.NativeTypeAttribute

---@overload fun() : UnityEngine.Bindings.NativeTypeAttribute
---@overload fun(codegenOptions: UnityEngine.Bindings.CodegenOptions) : UnityEngine.Bindings.NativeTypeAttribute
---@overload fun(header: string) : UnityEngine.Bindings.NativeTypeAttribute
---@overload fun(header: string, codegenOptions: UnityEngine.Bindings.CodegenOptions) : UnityEngine.Bindings.NativeTypeAttribute
---@param codegenOptions UnityEngine.Bindings.CodegenOptions
---@param intermediateStructName string
---@return UnityEngine.Bindings.NativeTypeAttribute
function UnityEngine.Bindings.NativeTypeAttribute.New(codegenOptions, intermediateStructName) end

---@class UnityEngine.Bindings.NotNullAttribute : System.Attribute
---@field Exception string
UnityEngine.Bindings.NotNullAttribute = {}
---@alias CS.UnityEngine.Bindings.NotNullAttribute UnityEngine.Bindings.NotNullAttribute
CS.UnityEngine.Bindings.NotNullAttribute = UnityEngine.Bindings.NotNullAttribute

---@param exception string
---@return UnityEngine.Bindings.NotNullAttribute
function UnityEngine.Bindings.NotNullAttribute.New(exception) end

---@class UnityEngine.Bindings.UnityTypeAttribute : System.Attribute
UnityEngine.Bindings.UnityTypeAttribute = {}
---@alias CS.UnityEngine.Bindings.UnityTypeAttribute UnityEngine.Bindings.UnityTypeAttribute
CS.UnityEngine.Bindings.UnityTypeAttribute = UnityEngine.Bindings.UnityTypeAttribute

---@return UnityEngine.Bindings.UnityTypeAttribute
function UnityEngine.Bindings.UnityTypeAttribute.New() end

---@class UnityEngine.Bindings.UnmarshalledAttribute : System.Attribute
UnityEngine.Bindings.UnmarshalledAttribute = {}
---@alias CS.UnityEngine.Bindings.UnmarshalledAttribute UnityEngine.Bindings.UnmarshalledAttribute
CS.UnityEngine.Bindings.UnmarshalledAttribute = UnityEngine.Bindings.UnmarshalledAttribute

---@return UnityEngine.Bindings.UnmarshalledAttribute
function UnityEngine.Bindings.UnmarshalledAttribute.New() end

---@class UnityEngine.Bindings.FreeFunctionAttribute : UnityEngine.Bindings.NativeMethodAttribute
UnityEngine.Bindings.FreeFunctionAttribute = {}
---@alias CS.UnityEngine.Bindings.FreeFunctionAttribute UnityEngine.Bindings.FreeFunctionAttribute
CS.UnityEngine.Bindings.FreeFunctionAttribute = UnityEngine.Bindings.FreeFunctionAttribute

---@overload fun() : UnityEngine.Bindings.FreeFunctionAttribute
---@overload fun(name: string) : UnityEngine.Bindings.FreeFunctionAttribute
---@param name string
---@param isThreadSafe boolean
---@return UnityEngine.Bindings.FreeFunctionAttribute
function UnityEngine.Bindings.FreeFunctionAttribute.New(name, isThreadSafe) end

---@class UnityEngine.Bindings.ThreadSafeAttribute : UnityEngine.Bindings.NativeMethodAttribute
UnityEngine.Bindings.ThreadSafeAttribute = {}
---@alias CS.UnityEngine.Bindings.ThreadSafeAttribute UnityEngine.Bindings.ThreadSafeAttribute
CS.UnityEngine.Bindings.ThreadSafeAttribute = UnityEngine.Bindings.ThreadSafeAttribute

---@return UnityEngine.Bindings.ThreadSafeAttribute
function UnityEngine.Bindings.ThreadSafeAttribute.New() end

---@class UnityEngine.Bindings.StaticAccessorType
---@field Dot UnityEngine.Bindings.StaticAccessorType
---@field Arrow UnityEngine.Bindings.StaticAccessorType
---@field DoubleColon UnityEngine.Bindings.StaticAccessorType
---@field ArrowWithDefaultReturnIfNull UnityEngine.Bindings.StaticAccessorType
UnityEngine.Bindings.StaticAccessorType = {}
---@alias CS.UnityEngine.Bindings.StaticAccessorType UnityEngine.Bindings.StaticAccessorType
CS.UnityEngine.Bindings.StaticAccessorType = UnityEngine.Bindings.StaticAccessorType


---@class UnityEngine.Bindings.StaticAccessorAttribute : System.Attribute
---@field Name string
---@field Type UnityEngine.Bindings.StaticAccessorType
UnityEngine.Bindings.StaticAccessorAttribute = {}
---@alias CS.UnityEngine.Bindings.StaticAccessorAttribute UnityEngine.Bindings.StaticAccessorAttribute
CS.UnityEngine.Bindings.StaticAccessorAttribute = UnityEngine.Bindings.StaticAccessorAttribute

---@overload fun() : UnityEngine.Bindings.StaticAccessorAttribute
---@overload fun(type: UnityEngine.Bindings.StaticAccessorType) : UnityEngine.Bindings.StaticAccessorAttribute
---@param name string
---@param type UnityEngine.Bindings.StaticAccessorType
---@return UnityEngine.Bindings.StaticAccessorAttribute
function UnityEngine.Bindings.StaticAccessorAttribute.New(name, type) end

---@class UnityEngine.Bindings.NativeThrowsAttribute : System.Attribute
---@field ThrowsException boolean
UnityEngine.Bindings.NativeThrowsAttribute = {}
---@alias CS.UnityEngine.Bindings.NativeThrowsAttribute UnityEngine.Bindings.NativeThrowsAttribute
CS.UnityEngine.Bindings.NativeThrowsAttribute = UnityEngine.Bindings.NativeThrowsAttribute

---@overload fun() : UnityEngine.Bindings.NativeThrowsAttribute
---@param throwsException boolean
---@return UnityEngine.Bindings.NativeThrowsAttribute
function UnityEngine.Bindings.NativeThrowsAttribute.New(throwsException) end

---@class UnityEngine.Bindings.IgnoreAttribute : System.Attribute
---@field DoesNotContributeToSize boolean
UnityEngine.Bindings.IgnoreAttribute = {}
---@alias CS.UnityEngine.Bindings.IgnoreAttribute UnityEngine.Bindings.IgnoreAttribute
CS.UnityEngine.Bindings.IgnoreAttribute = UnityEngine.Bindings.IgnoreAttribute

---@return UnityEngine.Bindings.IgnoreAttribute
function UnityEngine.Bindings.IgnoreAttribute.New() end

---@class UnityEngine.Bindings.MarshalUnityObjectAs : System.Attribute
---@field MarshalAsType System.Type
UnityEngine.Bindings.MarshalUnityObjectAs = {}
---@alias CS.UnityEngine.Bindings.MarshalUnityObjectAs UnityEngine.Bindings.MarshalUnityObjectAs
CS.UnityEngine.Bindings.MarshalUnityObjectAs = UnityEngine.Bindings.MarshalUnityObjectAs

---@param marshalAsType System.Type
---@return UnityEngine.Bindings.MarshalUnityObjectAs
function UnityEngine.Bindings.MarshalUnityObjectAs.New(marshalAsType) end

---@class UnityEngine.Bindings.PreventExecutionSeverity
---@field PreventExecution_Error UnityEngine.Bindings.PreventExecutionSeverity
---@field PreventExecution_ManagedException UnityEngine.Bindings.PreventExecutionSeverity
---@field PreventExecution_Warning UnityEngine.Bindings.PreventExecutionSeverity
UnityEngine.Bindings.PreventExecutionSeverity = {}
---@alias CS.UnityEngine.Bindings.PreventExecutionSeverity UnityEngine.Bindings.PreventExecutionSeverity
CS.UnityEngine.Bindings.PreventExecutionSeverity = UnityEngine.Bindings.PreventExecutionSeverity


---@class UnityEngine.Bindings.IBindingsPreventExecution
---@field singleFlagValue System.Object
---@field severity UnityEngine.Bindings.PreventExecutionSeverity
---@field howToFix string
UnityEngine.Bindings.IBindingsPreventExecution = {}
---@alias CS.UnityEngine.Bindings.IBindingsPreventExecution UnityEngine.Bindings.IBindingsPreventExecution
CS.UnityEngine.Bindings.IBindingsPreventExecution = UnityEngine.Bindings.IBindingsPreventExecution


---@class UnityEngine.Bindings.PreventExecutionInStateAttribute : System.Attribute
---@field singleFlagValue System.Object
---@field severity UnityEngine.Bindings.PreventExecutionSeverity
---@field howToFix string
UnityEngine.Bindings.PreventExecutionInStateAttribute = {}
---@alias CS.UnityEngine.Bindings.PreventExecutionInStateAttribute UnityEngine.Bindings.PreventExecutionInStateAttribute
CS.UnityEngine.Bindings.PreventExecutionInStateAttribute = UnityEngine.Bindings.PreventExecutionInStateAttribute

---@param systemAndFlags System.Object
---@param reportSeverity UnityEngine.Bindings.PreventExecutionSeverity
---@param howToString string
---@return UnityEngine.Bindings.PreventExecutionInStateAttribute
function UnityEngine.Bindings.PreventExecutionInStateAttribute.New(systemAndFlags, reportSeverity, howToString) end

---@class UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute : System.Attribute
UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute = {}
---@alias CS.UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute
CS.UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute = UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute

---@return UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute
function UnityEngine.Bindings.PreventReadOnlyInstanceModificationAttribute.New() end

---@class UnityEngine.Bindings.IBindingsMarshalAsSpan
---@field IsReadOnly boolean
---@field SizeParameter string
UnityEngine.Bindings.IBindingsMarshalAsSpan = {}
---@alias CS.UnityEngine.Bindings.IBindingsMarshalAsSpan UnityEngine.Bindings.IBindingsMarshalAsSpan
CS.UnityEngine.Bindings.IBindingsMarshalAsSpan = UnityEngine.Bindings.IBindingsMarshalAsSpan


---@class UnityEngine.Bindings.SpanAttribute : System.Attribute
---@field IsReadOnly boolean
---@field SizeParameter string
UnityEngine.Bindings.SpanAttribute = {}
---@alias CS.UnityEngine.Bindings.SpanAttribute UnityEngine.Bindings.SpanAttribute
CS.UnityEngine.Bindings.SpanAttribute = UnityEngine.Bindings.SpanAttribute

---@param sizeParameter string
---@param isReadOnly boolean
---@return UnityEngine.Bindings.SpanAttribute
function UnityEngine.Bindings.SpanAttribute.New(sizeParameter, isReadOnly) end

---@class UnityEngine.Scripting.UsedByNativeCodeAttribute : System.Attribute
---@field Name string
UnityEngine.Scripting.UsedByNativeCodeAttribute = {}
---@alias CS.UnityEngine.Scripting.UsedByNativeCodeAttribute UnityEngine.Scripting.UsedByNativeCodeAttribute
CS.UnityEngine.Scripting.UsedByNativeCodeAttribute = UnityEngine.Scripting.UsedByNativeCodeAttribute

---@overload fun() : UnityEngine.Scripting.UsedByNativeCodeAttribute
---@param name string
---@return UnityEngine.Scripting.UsedByNativeCodeAttribute
function UnityEngine.Scripting.UsedByNativeCodeAttribute.New(name) end

---@class UnityEngine.Scripting.RequiredByNativeCodeAttribute : System.Attribute
---@field Name string
---@field Optional boolean
---@field GenerateProxy boolean
UnityEngine.Scripting.RequiredByNativeCodeAttribute = {}
---@alias CS.UnityEngine.Scripting.RequiredByNativeCodeAttribute UnityEngine.Scripting.RequiredByNativeCodeAttribute
CS.UnityEngine.Scripting.RequiredByNativeCodeAttribute = UnityEngine.Scripting.RequiredByNativeCodeAttribute

---@overload fun() : UnityEngine.Scripting.RequiredByNativeCodeAttribute
---@overload fun(name: string) : UnityEngine.Scripting.RequiredByNativeCodeAttribute
---@overload fun(optional: boolean) : UnityEngine.Scripting.RequiredByNativeCodeAttribute
---@param name string
---@param optional boolean
---@return UnityEngine.Scripting.RequiredByNativeCodeAttribute
function UnityEngine.Scripting.RequiredByNativeCodeAttribute.New(name, optional) end

---@class UnityEngine.SpriteMask : UnityEngine.Renderer
---@field frontSortingLayerID number
---@field frontSortingOrder number
---@field backSortingLayerID number
---@field backSortingOrder number
---@field alphaCutoff number
---@field sprite UnityEngine.Sprite
---@field isCustomRangeActive boolean
---@field spriteSortPoint UnityEngine.SpriteSortPoint
UnityEngine.SpriteMask = {}
---@alias CS.UnityEngine.SpriteMask UnityEngine.SpriteMask
CS.UnityEngine.SpriteMask = UnityEngine.SpriteMask

---@return UnityEngine.SpriteMask
function UnityEngine.SpriteMask.New() end

---@class UnityEngine.SpriteMaskUtility : System.Object
UnityEngine.SpriteMaskUtility = {}
---@alias CS.UnityEngine.SpriteMaskUtility UnityEngine.SpriteMaskUtility
CS.UnityEngine.SpriteMaskUtility = UnityEngine.SpriteMaskUtility

---@param range UnityEngine.Rendering.SortingLayerRange
---@return boolean
function UnityEngine.SpriteMaskUtility.HasSpriteMaskInLayerRange(range) end

---@class UnityEngine.U2D.SpriteShapeParameters : System.ValueType
---@field transform UnityEngine.Matrix4x4
---@field fillTexture UnityEngine.Texture2D
---@field fillScale number
---@field splineDetail number
---@field angleThreshold number
---@field borderPivot number
---@field bevelCutoff number
---@field bevelSize number
---@field carpet boolean
---@field smartSprite boolean
---@field adaptiveUV boolean
---@field spriteBorders boolean
---@field stretchUV boolean
UnityEngine.U2D.SpriteShapeParameters = {}
---@alias CS.UnityEngine.U2D.SpriteShapeParameters UnityEngine.U2D.SpriteShapeParameters
CS.UnityEngine.U2D.SpriteShapeParameters = UnityEngine.U2D.SpriteShapeParameters


---@class UnityEngine.U2D.SpriteShapeSegment : System.ValueType
---@field geomIndex number
---@field indexCount number
---@field vertexCount number
---@field spriteIndex number
UnityEngine.U2D.SpriteShapeSegment = {}
---@alias CS.UnityEngine.U2D.SpriteShapeSegment UnityEngine.U2D.SpriteShapeSegment
CS.UnityEngine.U2D.SpriteShapeSegment = UnityEngine.U2D.SpriteShapeSegment


---@class UnityEngine.U2D.SpriteShapeDataType
---@field Index UnityEngine.U2D.SpriteShapeDataType
---@field Segment UnityEngine.U2D.SpriteShapeDataType
---@field BoundingBox UnityEngine.U2D.SpriteShapeDataType
---@field ChannelVertex UnityEngine.U2D.SpriteShapeDataType
---@field ChannelTexCoord0 UnityEngine.U2D.SpriteShapeDataType
---@field ChannelNormal UnityEngine.U2D.SpriteShapeDataType
---@field ChannelTangent UnityEngine.U2D.SpriteShapeDataType
---@field ChannelColor UnityEngine.U2D.SpriteShapeDataType
---@field DataCount UnityEngine.U2D.SpriteShapeDataType
UnityEngine.U2D.SpriteShapeDataType = {}
---@alias CS.UnityEngine.U2D.SpriteShapeDataType UnityEngine.U2D.SpriteShapeDataType
CS.UnityEngine.U2D.SpriteShapeDataType = UnityEngine.U2D.SpriteShapeDataType


---@class UnityEngine.U2D.SpriteShapeRenderer : UnityEngine.Renderer
---@field color UnityEngine.Color
---@field maskInteraction UnityEngine.SpriteMaskInteraction
UnityEngine.U2D.SpriteShapeRenderer = {}
---@alias CS.UnityEngine.U2D.SpriteShapeRenderer UnityEngine.U2D.SpriteShapeRenderer
CS.UnityEngine.U2D.SpriteShapeRenderer = UnityEngine.U2D.SpriteShapeRenderer

---@return UnityEngine.U2D.SpriteShapeRenderer
function UnityEngine.U2D.SpriteShapeRenderer.New() end
---@param handle Unity.Jobs.JobHandle
---@param shapeParams UnityEngine.U2D.SpriteShapeParameters
---@param sprites UnityEngine.Sprite[]
function UnityEngine.U2D.SpriteShapeRenderer:Prepare(handle, shapeParams, sprites) end
---@param bounds UnityEngine.Bounds
function UnityEngine.U2D.SpriteShapeRenderer:SetLocalAABB(bounds) end
---@return Unity.Collections.NativeArray
function UnityEngine.U2D.SpriteShapeRenderer:GetBounds() end
---@param dataSize number
---@return Unity.Collections.NativeArray
function UnityEngine.U2D.SpriteShapeRenderer:GetSegments(dataSize) end
---@overload fun(self: UnityEngine.U2D.SpriteShapeRenderer, dataSize: number, out_indices: Unity.Collections.NativeArray, out_vertices: Unity.Collections.NativeSlice, out_texcoords: Unity.Collections.NativeSlice) : Unity.Collections.NativeArray, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice
---@overload fun(self: UnityEngine.U2D.SpriteShapeRenderer, dataSize: number, out_indices: Unity.Collections.NativeArray, out_vertices: Unity.Collections.NativeSlice, out_texcoords: Unity.Collections.NativeSlice, out_colors: Unity.Collections.NativeSlice) : Unity.Collections.NativeArray, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice
---@overload fun(self: UnityEngine.U2D.SpriteShapeRenderer, dataSize: number, out_indices: Unity.Collections.NativeArray, out_vertices: Unity.Collections.NativeSlice, out_texcoords: Unity.Collections.NativeSlice, out_tangents: Unity.Collections.NativeSlice) : Unity.Collections.NativeArray, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice
---@overload fun(self: UnityEngine.U2D.SpriteShapeRenderer, dataSize: number, out_indices: Unity.Collections.NativeArray, out_vertices: Unity.Collections.NativeSlice, out_texcoords: Unity.Collections.NativeSlice, out_colors: Unity.Collections.NativeSlice, out_tangents: Unity.Collections.NativeSlice) : Unity.Collections.NativeArray, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice
---@overload fun(self: UnityEngine.U2D.SpriteShapeRenderer, dataSize: number, out_indices: Unity.Collections.NativeArray, out_vertices: Unity.Collections.NativeSlice, out_texcoords: Unity.Collections.NativeSlice, out_tangents: Unity.Collections.NativeSlice, out_normals: Unity.Collections.NativeSlice) : Unity.Collections.NativeArray, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice, Unity.Collections.NativeSlice
---@param dataSize number
---@param out_indices Unity.Collections.NativeArray
---@param out_vertices Unity.Collections.NativeSlice
---@param out_texcoords Unity.Collections.NativeSlice
---@param out_colors Unity.Collections.NativeSlice
---@param out_tangents Unity.Collections.NativeSlice
---@param out_normals Unity.Collections.NativeSlice
---@return ,Unity.Collections.NativeArray,Unity.Collections.NativeSlice,Unity.Collections.NativeSlice,Unity.Collections.NativeSlice,Unity.Collections.NativeSlice,Unity.Collections.NativeSlice
function UnityEngine.U2D.SpriteShapeRenderer:GetChannels(dataSize, out_indices, out_vertices, out_texcoords, out_colors, out_tangents, out_normals) end

---@class UnityEngine.U2D.SpriteShapeMetaData : System.ValueType
---@field height number
---@field bevelCutoff number
---@field bevelSize number
---@field spriteIndex number
---@field corner boolean
UnityEngine.U2D.SpriteShapeMetaData = {}
---@alias CS.UnityEngine.U2D.SpriteShapeMetaData UnityEngine.U2D.SpriteShapeMetaData
CS.UnityEngine.U2D.SpriteShapeMetaData = UnityEngine.U2D.SpriteShapeMetaData


---@class UnityEngine.U2D.ShapeControlPoint : System.ValueType
---@field position UnityEngine.Vector3
---@field leftTangent UnityEngine.Vector3
---@field rightTangent UnityEngine.Vector3
---@field mode number
UnityEngine.U2D.ShapeControlPoint = {}
---@alias CS.UnityEngine.U2D.ShapeControlPoint UnityEngine.U2D.ShapeControlPoint
CS.UnityEngine.U2D.ShapeControlPoint = UnityEngine.U2D.ShapeControlPoint


---@class UnityEngine.U2D.AngleRangeInfo : System.ValueType
---@field start number
---@field end number
---@field order number
---@field sprites System.Int32[]
UnityEngine.U2D.AngleRangeInfo = {}
---@alias CS.UnityEngine.U2D.AngleRangeInfo UnityEngine.U2D.AngleRangeInfo
CS.UnityEngine.U2D.AngleRangeInfo = UnityEngine.U2D.AngleRangeInfo


---@class UnityEngine.U2D.SpriteShapeUtility : System.Object
UnityEngine.U2D.SpriteShapeUtility = {}
---@alias CS.UnityEngine.U2D.SpriteShapeUtility UnityEngine.U2D.SpriteShapeUtility
CS.UnityEngine.U2D.SpriteShapeUtility = UnityEngine.U2D.SpriteShapeUtility

---@return UnityEngine.U2D.SpriteShapeUtility
function UnityEngine.U2D.SpriteShapeUtility.New() end
---@param mesh UnityEngine.Mesh
---@param shapeParams UnityEngine.U2D.SpriteShapeParameters
---@param points UnityEngine.U2D.ShapeControlPoint[]
---@param metaData UnityEngine.U2D.SpriteShapeMetaData[]
---@param angleRange UnityEngine.U2D.AngleRangeInfo[]
---@param sprites UnityEngine.Sprite[]
---@param corners UnityEngine.Sprite[]
---@return System.Int32[]
function UnityEngine.U2D.SpriteShapeUtility.Generate(mesh, shapeParams, points, metaData, angleRange, sprites, corners) end
---@param renderer UnityEngine.U2D.SpriteShapeRenderer
---@param shapeParams UnityEngine.U2D.SpriteShapeParameters
---@param points UnityEngine.U2D.ShapeControlPoint[]
---@param metaData UnityEngine.U2D.SpriteShapeMetaData[]
---@param angleRange UnityEngine.U2D.AngleRangeInfo[]
---@param sprites UnityEngine.Sprite[]
---@param corners UnityEngine.Sprite[]
function UnityEngine.U2D.SpriteShapeUtility.GenerateSpriteShape(renderer, shapeParams, points, metaData, angleRange, sprites, corners) end

---@class UnityEngine.StreamingController : UnityEngine.Behaviour
---@field streamingMipmapBias number
UnityEngine.StreamingController = {}
---@alias CS.UnityEngine.StreamingController UnityEngine.StreamingController
CS.UnityEngine.StreamingController = UnityEngine.StreamingController

---@return UnityEngine.StreamingController
function UnityEngine.StreamingController.New() end
---@param timeoutSeconds number
---@param activateCameraOnTimeout boolean
---@param disableCameraCuttingFrom UnityEngine.Camera
function UnityEngine.StreamingController:SetPreloading(timeoutSeconds, activateCameraOnTimeout, disableCameraCuttingFrom) end
function UnityEngine.StreamingController:CancelPreloading() end
---@return boolean
function UnityEngine.StreamingController:IsPreloading() end

---@class UnityEngine.ProceduralMaterial : UnityEngine.Material
---@field isSupported boolean
---@field substanceProcessorUsage UnityEngine.ProceduralProcessorUsage
---@field cacheSize UnityEngine.ProceduralCacheSize
---@field animationUpdateRate number
---@field isProcessing boolean
---@field isCachedDataAvailable boolean
---@field isLoadTimeGenerated boolean
---@field loadingBehavior UnityEngine.ProceduralLoadingBehavior
---@field preset string
---@field isReadable boolean
---@field isFrozen boolean
UnityEngine.ProceduralMaterial = {}
---@alias CS.UnityEngine.ProceduralMaterial UnityEngine.ProceduralMaterial
CS.UnityEngine.ProceduralMaterial = UnityEngine.ProceduralMaterial

function UnityEngine.ProceduralMaterial.StopRebuilds() end
---@return UnityEngine.ProceduralPropertyDescription[]
function UnityEngine.ProceduralMaterial:GetProceduralPropertyDescriptions() end
---@param inputName string
---@return boolean
function UnityEngine.ProceduralMaterial:HasProceduralProperty(inputName) end
---@param inputName string
---@return boolean
function UnityEngine.ProceduralMaterial:GetProceduralBoolean(inputName) end
---@param inputName string
---@return boolean
function UnityEngine.ProceduralMaterial:IsProceduralPropertyVisible(inputName) end
---@param inputName string
---@param value boolean
function UnityEngine.ProceduralMaterial:SetProceduralBoolean(inputName, value) end
---@param inputName string
---@return number
function UnityEngine.ProceduralMaterial:GetProceduralFloat(inputName) end
---@param inputName string
---@param value number
function UnityEngine.ProceduralMaterial:SetProceduralFloat(inputName, value) end
---@param inputName string
---@return UnityEngine.Vector4
function UnityEngine.ProceduralMaterial:GetProceduralVector(inputName) end
---@param inputName string
---@param value UnityEngine.Vector4
function UnityEngine.ProceduralMaterial:SetProceduralVector(inputName, value) end
---@param inputName string
---@return UnityEngine.Color
function UnityEngine.ProceduralMaterial:GetProceduralColor(inputName) end
---@param inputName string
---@param value UnityEngine.Color
function UnityEngine.ProceduralMaterial:SetProceduralColor(inputName, value) end
---@param inputName string
---@return number
function UnityEngine.ProceduralMaterial:GetProceduralEnum(inputName) end
---@param inputName string
---@param value number
function UnityEngine.ProceduralMaterial:SetProceduralEnum(inputName, value) end
---@param inputName string
---@return UnityEngine.Texture2D
function UnityEngine.ProceduralMaterial:GetProceduralTexture(inputName) end
---@param inputName string
---@param value UnityEngine.Texture2D
function UnityEngine.ProceduralMaterial:SetProceduralTexture(inputName, value) end
---@param inputName string
---@return string
function UnityEngine.ProceduralMaterial:GetProceduralString(inputName) end
---@param inputName string
---@param value string
function UnityEngine.ProceduralMaterial:SetProceduralString(inputName, value) end
---@param inputName string
---@return boolean
function UnityEngine.ProceduralMaterial:IsProceduralPropertyCached(inputName) end
---@param inputName string
---@param value boolean
function UnityEngine.ProceduralMaterial:CacheProceduralProperty(inputName, value) end
function UnityEngine.ProceduralMaterial:ClearCache() end
function UnityEngine.ProceduralMaterial:RebuildTextures() end
function UnityEngine.ProceduralMaterial:RebuildTexturesImmediately() end
---@return UnityEngine.Texture[]
function UnityEngine.ProceduralMaterial:GetGeneratedTextures() end
---@param textureName string
---@return UnityEngine.ProceduralTexture
function UnityEngine.ProceduralMaterial:GetGeneratedTexture(textureName) end
function UnityEngine.ProceduralMaterial:FreezeAndReleaseSourceData() end

---@class UnityEngine.ProceduralProcessorUsage
---@field Unsupported UnityEngine.ProceduralProcessorUsage
---@field One UnityEngine.ProceduralProcessorUsage
---@field Half UnityEngine.ProceduralProcessorUsage
---@field All UnityEngine.ProceduralProcessorUsage
UnityEngine.ProceduralProcessorUsage = {}
---@alias CS.UnityEngine.ProceduralProcessorUsage UnityEngine.ProceduralProcessorUsage
CS.UnityEngine.ProceduralProcessorUsage = UnityEngine.ProceduralProcessorUsage


---@class UnityEngine.ProceduralCacheSize
---@field Tiny UnityEngine.ProceduralCacheSize
---@field Medium UnityEngine.ProceduralCacheSize
---@field Heavy UnityEngine.ProceduralCacheSize
---@field NoLimit UnityEngine.ProceduralCacheSize
---@field None UnityEngine.ProceduralCacheSize
UnityEngine.ProceduralCacheSize = {}
---@alias CS.UnityEngine.ProceduralCacheSize UnityEngine.ProceduralCacheSize
CS.UnityEngine.ProceduralCacheSize = UnityEngine.ProceduralCacheSize


---@class UnityEngine.ProceduralLoadingBehavior
---@field DoNothing UnityEngine.ProceduralLoadingBehavior
---@field Generate UnityEngine.ProceduralLoadingBehavior
---@field BakeAndKeep UnityEngine.ProceduralLoadingBehavior
---@field BakeAndDiscard UnityEngine.ProceduralLoadingBehavior
---@field Cache UnityEngine.ProceduralLoadingBehavior
---@field DoNothingAndCache UnityEngine.ProceduralLoadingBehavior
UnityEngine.ProceduralLoadingBehavior = {}
---@alias CS.UnityEngine.ProceduralLoadingBehavior UnityEngine.ProceduralLoadingBehavior
CS.UnityEngine.ProceduralLoadingBehavior = UnityEngine.ProceduralLoadingBehavior


---@class UnityEngine.ProceduralPropertyType
---@field Boolean UnityEngine.ProceduralPropertyType
---@field Float UnityEngine.ProceduralPropertyType
---@field Vector2 UnityEngine.ProceduralPropertyType
---@field Vector3 UnityEngine.ProceduralPropertyType
---@field Vector4 UnityEngine.ProceduralPropertyType
---@field Color3 UnityEngine.ProceduralPropertyType
---@field Color4 UnityEngine.ProceduralPropertyType
---@field Enum UnityEngine.ProceduralPropertyType
---@field Texture UnityEngine.ProceduralPropertyType
---@field String UnityEngine.ProceduralPropertyType
UnityEngine.ProceduralPropertyType = {}
---@alias CS.UnityEngine.ProceduralPropertyType UnityEngine.ProceduralPropertyType
CS.UnityEngine.ProceduralPropertyType = UnityEngine.ProceduralPropertyType


---@class UnityEngine.ProceduralOutputType
---@field Unknown UnityEngine.ProceduralOutputType
---@field Diffuse UnityEngine.ProceduralOutputType
---@field Normal UnityEngine.ProceduralOutputType
---@field Height UnityEngine.ProceduralOutputType
---@field Emissive UnityEngine.ProceduralOutputType
---@field Specular UnityEngine.ProceduralOutputType
---@field Opacity UnityEngine.ProceduralOutputType
---@field Smoothness UnityEngine.ProceduralOutputType
---@field AmbientOcclusion UnityEngine.ProceduralOutputType
---@field DetailMask UnityEngine.ProceduralOutputType
---@field Metallic UnityEngine.ProceduralOutputType
---@field Roughness UnityEngine.ProceduralOutputType
UnityEngine.ProceduralOutputType = {}
---@alias CS.UnityEngine.ProceduralOutputType UnityEngine.ProceduralOutputType
CS.UnityEngine.ProceduralOutputType = UnityEngine.ProceduralOutputType


---@class UnityEngine.ProceduralPropertyDescription : System.Object
---@field name string
---@field label string
---@field group string
---@field type UnityEngine.ProceduralPropertyType
---@field hasRange boolean
---@field minimum number
---@field maximum number
---@field step number
---@field enumOptions System.String[]
---@field componentLabels System.String[]
UnityEngine.ProceduralPropertyDescription = {}
---@alias CS.UnityEngine.ProceduralPropertyDescription UnityEngine.ProceduralPropertyDescription
CS.UnityEngine.ProceduralPropertyDescription = UnityEngine.ProceduralPropertyDescription

---@return UnityEngine.ProceduralPropertyDescription
function UnityEngine.ProceduralPropertyDescription.New() end

---@class UnityEngine.ProceduralTexture : UnityEngine.Texture
---@field hasAlpha boolean
---@field format UnityEngine.TextureFormat
UnityEngine.ProceduralTexture = {}
---@alias CS.UnityEngine.ProceduralTexture UnityEngine.ProceduralTexture
CS.UnityEngine.ProceduralTexture = UnityEngine.ProceduralTexture

---@return UnityEngine.ProceduralOutputType
function UnityEngine.ProceduralTexture:GetProceduralOutputType() end
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@return UnityEngine.Color32[]
function UnityEngine.ProceduralTexture:GetPixels32(x, y, blockWidth, blockHeight) end

---@class UnityEngine.IntegratedSubsystem : System.Object
---@field running boolean
UnityEngine.IntegratedSubsystem = {}
---@alias CS.UnityEngine.IntegratedSubsystem UnityEngine.IntegratedSubsystem
CS.UnityEngine.IntegratedSubsystem = UnityEngine.IntegratedSubsystem

---@return UnityEngine.IntegratedSubsystem
function UnityEngine.IntegratedSubsystem.New() end
function UnityEngine.IntegratedSubsystem:Start() end
function UnityEngine.IntegratedSubsystem:Stop() end
function UnityEngine.IntegratedSubsystem:Destroy() end

---@class UnityEngine.IntegratedSubsystem : UnityEngine.IntegratedSubsystem
---@field subsystemDescriptor TSubsystemDescriptor
---@field SubsystemDescriptor TSubsystemDescriptor
UnityEngine.IntegratedSubsystem = {}
---@alias CS.UnityEngine.IntegratedSubsystem UnityEngine.IntegratedSubsystem
CS.UnityEngine.IntegratedSubsystem = UnityEngine.IntegratedSubsystem

---@return UnityEngine.IntegratedSubsystem
function UnityEngine.IntegratedSubsystem.New() end

---@class UnityEngine.SubsystemBindings : System.Object
UnityEngine.SubsystemBindings = {}
---@alias CS.UnityEngine.SubsystemBindings UnityEngine.SubsystemBindings
CS.UnityEngine.SubsystemBindings = UnityEngine.SubsystemBindings


---@class UnityEngine.ISubsystemDescriptorImpl
---@field ptr System.IntPtr
UnityEngine.ISubsystemDescriptorImpl = {}
---@alias CS.UnityEngine.ISubsystemDescriptorImpl UnityEngine.ISubsystemDescriptorImpl
CS.UnityEngine.ISubsystemDescriptorImpl = UnityEngine.ISubsystemDescriptorImpl


---@class UnityEngine.IntegratedSubsystemDescriptor : System.Object
---@field id string
UnityEngine.IntegratedSubsystemDescriptor = {}
---@alias CS.UnityEngine.IntegratedSubsystemDescriptor UnityEngine.IntegratedSubsystemDescriptor
CS.UnityEngine.IntegratedSubsystemDescriptor = UnityEngine.IntegratedSubsystemDescriptor


---@class UnityEngine.IntegratedSubsystemDescriptor : UnityEngine.IntegratedSubsystemDescriptor
UnityEngine.IntegratedSubsystemDescriptor = {}
---@alias CS.UnityEngine.IntegratedSubsystemDescriptor UnityEngine.IntegratedSubsystemDescriptor
CS.UnityEngine.IntegratedSubsystemDescriptor = UnityEngine.IntegratedSubsystemDescriptor

---@return UnityEngine.IntegratedSubsystemDescriptor
function UnityEngine.IntegratedSubsystemDescriptor.New() end
---@return TSubsystem
function UnityEngine.IntegratedSubsystemDescriptor:Create() end

---@class UnityEngine.SubsystemDescriptorBindings : System.Object
UnityEngine.SubsystemDescriptorBindings = {}
---@alias CS.UnityEngine.SubsystemDescriptorBindings UnityEngine.SubsystemDescriptorBindings
CS.UnityEngine.SubsystemDescriptorBindings = UnityEngine.SubsystemDescriptorBindings

---@param descriptorPtr System.IntPtr
---@return System.IntPtr
function UnityEngine.SubsystemDescriptorBindings.Create(descriptorPtr) end
---@param descriptorPtr System.IntPtr
---@return string
function UnityEngine.SubsystemDescriptorBindings.GetId(descriptorPtr) end

---@class UnityEngine.ISubsystem
---@field running boolean
UnityEngine.ISubsystem = {}
---@alias CS.UnityEngine.ISubsystem UnityEngine.ISubsystem
CS.UnityEngine.ISubsystem = UnityEngine.ISubsystem

function UnityEngine.ISubsystem:Start() end
function UnityEngine.ISubsystem:Stop() end
function UnityEngine.ISubsystem:Destroy() end

---@class UnityEngine.ISubsystemDescriptor
---@field id string
UnityEngine.ISubsystemDescriptor = {}
---@alias CS.UnityEngine.ISubsystemDescriptor UnityEngine.ISubsystemDescriptor
CS.UnityEngine.ISubsystemDescriptor = UnityEngine.ISubsystemDescriptor

---@return UnityEngine.ISubsystem
function UnityEngine.ISubsystemDescriptor:Create() end

---@class UnityEngine.Subsystem : System.Object
---@field running boolean
UnityEngine.Subsystem = {}
---@alias CS.UnityEngine.Subsystem UnityEngine.Subsystem
CS.UnityEngine.Subsystem = UnityEngine.Subsystem

function UnityEngine.Subsystem:Start() end
function UnityEngine.Subsystem:Stop() end
function UnityEngine.Subsystem:Destroy() end

---@class UnityEngine.Subsystem : UnityEngine.Subsystem
---@field SubsystemDescriptor TSubsystemDescriptor
UnityEngine.Subsystem = {}
---@alias CS.UnityEngine.Subsystem UnityEngine.Subsystem
CS.UnityEngine.Subsystem = UnityEngine.Subsystem


---@class UnityEngine.SubsystemDescriptor : System.Object
---@field id string
---@field subsystemImplementationType System.Type
UnityEngine.SubsystemDescriptor = {}
---@alias CS.UnityEngine.SubsystemDescriptor UnityEngine.SubsystemDescriptor
CS.UnityEngine.SubsystemDescriptor = UnityEngine.SubsystemDescriptor


---@class UnityEngine.SubsystemDescriptor : UnityEngine.SubsystemDescriptor
UnityEngine.SubsystemDescriptor = {}
---@alias CS.UnityEngine.SubsystemDescriptor UnityEngine.SubsystemDescriptor
CS.UnityEngine.SubsystemDescriptor = UnityEngine.SubsystemDescriptor

---@return UnityEngine.SubsystemDescriptor
function UnityEngine.SubsystemDescriptor.New() end
---@return TSubsystem
function UnityEngine.SubsystemDescriptor:Create() end

---@class UnityEngine.Internal_SubsystemDescriptors : System.Object
UnityEngine.Internal_SubsystemDescriptors = {}
---@alias CS.UnityEngine.Internal_SubsystemDescriptors UnityEngine.Internal_SubsystemDescriptors
CS.UnityEngine.Internal_SubsystemDescriptors = UnityEngine.Internal_SubsystemDescriptors


---@class UnityEngine.SubsystemManager : System.Object
UnityEngine.SubsystemManager = {}
---@alias CS.UnityEngine.SubsystemManager UnityEngine.SubsystemManager
CS.UnityEngine.SubsystemManager = UnityEngine.SubsystemManager

---@param descriptors System.Collections.Generic.List
function UnityEngine.SubsystemManager.GetAllSubsystemDescriptors(descriptors) end

---@class UnityEngine.SubsystemsImplementation.SubsystemDescriptorStore : System.Object
UnityEngine.SubsystemsImplementation.SubsystemDescriptorStore = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemDescriptorStore UnityEngine.SubsystemsImplementation.SubsystemDescriptorStore
CS.UnityEngine.SubsystemsImplementation.SubsystemDescriptorStore = UnityEngine.SubsystemsImplementation.SubsystemDescriptorStore

---@param descriptor UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider
function UnityEngine.SubsystemsImplementation.SubsystemDescriptorStore.RegisterDescriptor(descriptor) end

---@class UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider : System.Object
---@field id string
UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider
CS.UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider = UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider


---@class UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider : UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider
UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider
CS.UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider = UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider

---@return UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider
function UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider.New() end
---@return TSubsystem
function UnityEngine.SubsystemsImplementation.SubsystemDescriptorWithProvider:Create() end

---@class UnityEngine.SubsystemsImplementation.SubsystemProvider : System.Object
---@field running boolean
UnityEngine.SubsystemsImplementation.SubsystemProvider = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemProvider UnityEngine.SubsystemsImplementation.SubsystemProvider
CS.UnityEngine.SubsystemsImplementation.SubsystemProvider = UnityEngine.SubsystemsImplementation.SubsystemProvider


---@class UnityEngine.SubsystemsImplementation.SubsystemProvider : UnityEngine.SubsystemsImplementation.SubsystemProvider
UnityEngine.SubsystemsImplementation.SubsystemProvider = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemProvider UnityEngine.SubsystemsImplementation.SubsystemProvider
CS.UnityEngine.SubsystemsImplementation.SubsystemProvider = UnityEngine.SubsystemsImplementation.SubsystemProvider

function UnityEngine.SubsystemsImplementation.SubsystemProvider:Start() end
function UnityEngine.SubsystemsImplementation.SubsystemProvider:Stop() end
function UnityEngine.SubsystemsImplementation.SubsystemProvider:Destroy() end

---@class UnityEngine.SubsystemsImplementation.SubsystemProxy : System.Object
---@field provider TProvider
---@field running boolean
UnityEngine.SubsystemsImplementation.SubsystemProxy = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemProxy UnityEngine.SubsystemsImplementation.SubsystemProxy
CS.UnityEngine.SubsystemsImplementation.SubsystemProxy = UnityEngine.SubsystemsImplementation.SubsystemProxy


---@class UnityEngine.SubsystemsImplementation.SubsystemWithProvider : System.Object
---@field running boolean
UnityEngine.SubsystemsImplementation.SubsystemWithProvider = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemWithProvider UnityEngine.SubsystemsImplementation.SubsystemWithProvider
CS.UnityEngine.SubsystemsImplementation.SubsystemWithProvider = UnityEngine.SubsystemsImplementation.SubsystemWithProvider

function UnityEngine.SubsystemsImplementation.SubsystemWithProvider:Start() end
function UnityEngine.SubsystemsImplementation.SubsystemWithProvider:Stop() end
function UnityEngine.SubsystemsImplementation.SubsystemWithProvider:Destroy() end

---@class UnityEngine.SubsystemsImplementation.SubsystemWithProvider : UnityEngine.SubsystemsImplementation.SubsystemWithProvider
---@field subsystemDescriptor TSubsystemDescriptor
UnityEngine.SubsystemsImplementation.SubsystemWithProvider = {}
---@alias CS.UnityEngine.SubsystemsImplementation.SubsystemWithProvider UnityEngine.SubsystemsImplementation.SubsystemWithProvider
CS.UnityEngine.SubsystemsImplementation.SubsystemWithProvider = UnityEngine.SubsystemsImplementation.SubsystemWithProvider


---@class UnityEngine.SubsystemsImplementation.Extensions.SubsystemDescriptorExtensions : System.Object
UnityEngine.SubsystemsImplementation.Extensions.SubsystemDescriptorExtensions = {}
---@alias CS.UnityEngine.SubsystemsImplementation.Extensions.SubsystemDescriptorExtensions UnityEngine.SubsystemsImplementation.Extensions.SubsystemDescriptorExtensions
CS.UnityEngine.SubsystemsImplementation.Extensions.SubsystemDescriptorExtensions = UnityEngine.SubsystemsImplementation.Extensions.SubsystemDescriptorExtensions


---@class UnityEngine.SubsystemsImplementation.Extensions.SubsystemExtensions : System.Object
UnityEngine.SubsystemsImplementation.Extensions.SubsystemExtensions = {}
---@alias CS.UnityEngine.SubsystemsImplementation.Extensions.SubsystemExtensions UnityEngine.SubsystemsImplementation.Extensions.SubsystemExtensions
CS.UnityEngine.SubsystemsImplementation.Extensions.SubsystemExtensions = UnityEngine.SubsystemsImplementation.Extensions.SubsystemExtensions


---@class UnityEngine.Subsystems.ExampleSubsystem : UnityEngine.IntegratedSubsystem
---@field subsystemDescriptor UnityEngine.Subsystems.ExampleSubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.Subsystems.ExampleSubsystemDescriptor]
---@field SubsystemDescriptor UnityEngine.Subsystems.ExampleSubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.Subsystems.ExampleSubsystemDescriptor]
UnityEngine.Subsystems.ExampleSubsystem = {}
---@alias CS.UnityEngine.Subsystems.ExampleSubsystem UnityEngine.Subsystems.ExampleSubsystem
CS.UnityEngine.Subsystems.ExampleSubsystem = UnityEngine.Subsystems.ExampleSubsystem

---@return UnityEngine.Subsystems.ExampleSubsystem
function UnityEngine.Subsystems.ExampleSubsystem.New() end
function UnityEngine.Subsystems.ExampleSubsystem:PrintExample() end
---@return boolean
function UnityEngine.Subsystems.ExampleSubsystem:GetBool() end

---@class UnityEngine.Subsystems.ExampleSubsystemDescriptor : UnityEngine.IntegratedSubsystemDescriptor
---@field supportsEditorMode boolean
---@field disableBackbufferMSAA boolean
---@field stereoscopicBackbuffer boolean
---@field usePBufferEGL boolean
UnityEngine.Subsystems.ExampleSubsystemDescriptor = {}
---@alias CS.UnityEngine.Subsystems.ExampleSubsystemDescriptor UnityEngine.Subsystems.ExampleSubsystemDescriptor
CS.UnityEngine.Subsystems.ExampleSubsystemDescriptor = UnityEngine.Subsystems.ExampleSubsystemDescriptor

---@return UnityEngine.Subsystems.ExampleSubsystemDescriptor
function UnityEngine.Subsystems.ExampleSubsystemDescriptor.New() end

---@class UnityEngine.TerrainChangedFlags
---@field Heightmap UnityEngine.TerrainChangedFlags
---@field TreeInstances UnityEngine.TerrainChangedFlags
---@field DelayedHeightmapUpdate UnityEngine.TerrainChangedFlags
---@field FlushEverythingImmediately UnityEngine.TerrainChangedFlags
---@field RemoveDirtyDetailsImmediately UnityEngine.TerrainChangedFlags
---@field HeightmapResolution UnityEngine.TerrainChangedFlags
---@field Holes UnityEngine.TerrainChangedFlags
---@field DelayedHolesUpdate UnityEngine.TerrainChangedFlags
---@field WillBeDestroyed UnityEngine.TerrainChangedFlags
UnityEngine.TerrainChangedFlags = {}
---@alias CS.UnityEngine.TerrainChangedFlags UnityEngine.TerrainChangedFlags
CS.UnityEngine.TerrainChangedFlags = UnityEngine.TerrainChangedFlags


---@class UnityEngine.TerrainRenderFlags
---@field Heightmap UnityEngine.TerrainRenderFlags
---@field Trees UnityEngine.TerrainRenderFlags
---@field Details UnityEngine.TerrainRenderFlags
---@field All UnityEngine.TerrainRenderFlags
UnityEngine.TerrainRenderFlags = {}
---@alias CS.UnityEngine.TerrainRenderFlags UnityEngine.TerrainRenderFlags
CS.UnityEngine.TerrainRenderFlags = UnityEngine.TerrainRenderFlags


---@class UnityEngine.Terrain : UnityEngine.Behaviour
---@field heightmapFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field heightmapTextureFormat UnityEngine.TextureFormat
---@field heightmapRenderTextureFormat UnityEngine.RenderTextureFormat
---@field normalmapFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field normalmapTextureFormat UnityEngine.TextureFormat
---@field normalmapRenderTextureFormat UnityEngine.RenderTextureFormat
---@field holesFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field holesRenderTextureFormat UnityEngine.RenderTextureFormat
---@field compressedHolesFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field compressedHolesTextureFormat UnityEngine.TextureFormat
---@field activeTerrain UnityEngine.Terrain
---@field activeTerrains UnityEngine.Terrain[]
---@field terrainData UnityEngine.TerrainData
---@field treeDistance number
---@field treeBillboardDistance number
---@field treeCrossFadeLength number
---@field treeMaximumFullLODCount number
---@field detailObjectDistance number
---@field detailObjectDensity number
---@field heightmapPixelError number
---@field heightmapMaximumLOD number
---@field heightmapMinimumLODSimplification number
---@field basemapDistance number
---@field lightmapIndex number
---@field realtimeLightmapIndex number
---@field lightmapScaleOffset UnityEngine.Vector4
---@field realtimeLightmapScaleOffset UnityEngine.Vector4
---@field keepUnusedRenderingResources boolean
---@field shadowCastingMode UnityEngine.Rendering.ShadowCastingMode
---@field reflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage
---@field materialTemplate UnityEngine.Material
---@field drawHeightmap boolean
---@field allowAutoConnect boolean
---@field groupingID number
---@field drawInstanced boolean
---@field enableHeightmapRayTracing boolean
---@field normalmapTexture UnityEngine.RenderTexture
---@field drawTreesAndFoliage boolean
---@field patchBoundsMultiplier UnityEngine.Vector3
---@field treeLODBiasMultiplier number
---@field collectDetailPatches boolean
---@field ignoreQualitySettings boolean
---@field editorRenderFlags UnityEngine.TerrainRenderFlags
---@field bakeLightProbesForTrees boolean
---@field deringLightProbesForTrees boolean
---@field treeMotionVectorModeOverride UnityEngine.TreeMotionVectorModeOverride
---@field preserveTreePrototypeLayers boolean
---@field leftNeighbor UnityEngine.Terrain
---@field rightNeighbor UnityEngine.Terrain
---@field topNeighbor UnityEngine.Terrain
---@field bottomNeighbor UnityEngine.Terrain
---@field renderingLayerMask number
UnityEngine.Terrain = {}
---@alias CS.UnityEngine.Terrain UnityEngine.Terrain
CS.UnityEngine.Terrain = UnityEngine.Terrain

---@return UnityEngine.Terrain
function UnityEngine.Terrain.New() end
function UnityEngine.Terrain.SetConnectivityDirty() end
---@param terrainList System.Collections.Generic.List
function UnityEngine.Terrain.GetActiveTerrains(terrainList) end
---@param assignTerrain UnityEngine.TerrainData
---@return UnityEngine.GameObject
function UnityEngine.Terrain.CreateTerrainGameObject(assignTerrain) end
---@param cameraInstanceID number
---@return boolean
function UnityEngine.Terrain:GetKeepUnusedCameraRenderingResources(cameraInstanceID) end
---@param cameraInstanceID number
---@param keepUnused boolean
function UnityEngine.Terrain:SetKeepUnusedCameraRenderingResources(cameraInstanceID, keepUnused) end
---@param result System.Collections.Generic.List
function UnityEngine.Terrain:GetClosestReflectionProbes(result) end
---@param worldPosition UnityEngine.Vector3
---@return number
function UnityEngine.Terrain:SampleHeight(worldPosition) end
---@param instance UnityEngine.TreeInstance
function UnityEngine.Terrain:AddTreeInstance(instance) end
---@param left UnityEngine.Terrain
---@param top UnityEngine.Terrain
---@param right UnityEngine.Terrain
---@param bottom UnityEngine.Terrain
function UnityEngine.Terrain:SetNeighbors(left, top, right, bottom) end
---@return UnityEngine.Vector3
function UnityEngine.Terrain:GetPosition() end
function UnityEngine.Terrain:Flush() end
---@param properties UnityEngine.MaterialPropertyBlock
function UnityEngine.Terrain:SetSplatMaterialPropertyBlock(properties) end
---@param dest UnityEngine.MaterialPropertyBlock
function UnityEngine.Terrain:GetSplatMaterialPropertyBlock(dest) end
function UnityEngine.Terrain:UpdateGIMaterials() end
---@param x number
---@param y number
---@param width number
---@param height number
function UnityEngine.Terrain:UpdateGIMaterials(x, y, width, height) end

---@class UnityEngine.Terrain.MaterialType
---@field BuiltInStandard UnityEngine.Terrain.MaterialType
---@field BuiltInLegacyDiffuse UnityEngine.Terrain.MaterialType
---@field BuiltInLegacySpecular UnityEngine.Terrain.MaterialType
---@field Custom UnityEngine.Terrain.MaterialType
UnityEngine.Terrain.MaterialType = {}
---@alias CS.UnityEngine.Terrain.MaterialType UnityEngine.Terrain.MaterialType
CS.UnityEngine.Terrain.MaterialType = UnityEngine.Terrain.MaterialType


---@class UnityEngine.TerrainExtensions : System.Object
UnityEngine.TerrainExtensions = {}
---@alias CS.UnityEngine.TerrainExtensions UnityEngine.TerrainExtensions
CS.UnityEngine.TerrainExtensions = UnityEngine.TerrainExtensions

---@overload fun(terrain: UnityEngine.Terrain)
---@param terrain UnityEngine.Terrain
---@param x number
---@param y number
---@param width number
---@param height number
function UnityEngine.TerrainExtensions.UpdateGIMaterials(terrain, x, y, width, height) end

---@class UnityEngine.Tree : UnityEngine.Component
---@field data UnityEngine.ScriptableObject
---@field hasSpeedTreeWind boolean
UnityEngine.Tree = {}
---@alias CS.UnityEngine.Tree UnityEngine.Tree
CS.UnityEngine.Tree = UnityEngine.Tree

---@return UnityEngine.Tree
function UnityEngine.Tree.New() end

---@class UnityEngine.SpeedTreeWindAsset : UnityEngine.Object
UnityEngine.SpeedTreeWindAsset = {}
---@alias CS.UnityEngine.SpeedTreeWindAsset UnityEngine.SpeedTreeWindAsset
CS.UnityEngine.SpeedTreeWindAsset = UnityEngine.SpeedTreeWindAsset


---@class UnityEngine.TerrainCallbacks : System.Object
UnityEngine.TerrainCallbacks = {}
---@alias CS.UnityEngine.TerrainCallbacks UnityEngine.TerrainCallbacks
CS.UnityEngine.TerrainCallbacks = UnityEngine.TerrainCallbacks


---@class UnityEngine.TerrainCallbacks.HeightmapChangedCallback : System.MulticastDelegate
UnityEngine.TerrainCallbacks.HeightmapChangedCallback = {}
---@alias CS.UnityEngine.TerrainCallbacks.HeightmapChangedCallback UnityEngine.TerrainCallbacks.HeightmapChangedCallback
CS.UnityEngine.TerrainCallbacks.HeightmapChangedCallback = UnityEngine.TerrainCallbacks.HeightmapChangedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.TerrainCallbacks.HeightmapChangedCallback
function UnityEngine.TerrainCallbacks.HeightmapChangedCallback.New(object, method) end
---@param terrain UnityEngine.Terrain
---@param heightRegion UnityEngine.RectInt
---@param synched boolean
function UnityEngine.TerrainCallbacks.HeightmapChangedCallback:Invoke(terrain, heightRegion, synched) end
---@param terrain UnityEngine.Terrain
---@param heightRegion UnityEngine.RectInt
---@param synched boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.TerrainCallbacks.HeightmapChangedCallback:BeginInvoke(terrain, heightRegion, synched, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.TerrainCallbacks.HeightmapChangedCallback:EndInvoke(result) end

---@class UnityEngine.TerrainCallbacks.TextureChangedCallback : System.MulticastDelegate
UnityEngine.TerrainCallbacks.TextureChangedCallback = {}
---@alias CS.UnityEngine.TerrainCallbacks.TextureChangedCallback UnityEngine.TerrainCallbacks.TextureChangedCallback
CS.UnityEngine.TerrainCallbacks.TextureChangedCallback = UnityEngine.TerrainCallbacks.TextureChangedCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.TerrainCallbacks.TextureChangedCallback
function UnityEngine.TerrainCallbacks.TextureChangedCallback.New(object, method) end
---@param terrain UnityEngine.Terrain
---@param textureName string
---@param texelRegion UnityEngine.RectInt
---@param synched boolean
function UnityEngine.TerrainCallbacks.TextureChangedCallback:Invoke(terrain, textureName, texelRegion, synched) end
---@param terrain UnityEngine.Terrain
---@param textureName string
---@param texelRegion UnityEngine.RectInt
---@param synched boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.TerrainCallbacks.TextureChangedCallback:BeginInvoke(terrain, textureName, texelRegion, synched, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.TerrainCallbacks.TextureChangedCallback:EndInvoke(result) end

---@class UnityEngine.TreePrototype : System.Object
---@field prefab UnityEngine.GameObject
---@field bendFactor number
---@field navMeshLod number
UnityEngine.TreePrototype = {}
---@alias CS.UnityEngine.TreePrototype UnityEngine.TreePrototype
CS.UnityEngine.TreePrototype = UnityEngine.TreePrototype

---@overload fun() : UnityEngine.TreePrototype
---@param other UnityEngine.TreePrototype
---@return UnityEngine.TreePrototype
function UnityEngine.TreePrototype.New(other) end
---@param obj System.Object
---@return boolean
function UnityEngine.TreePrototype:Equals(obj) end
---@return number
function UnityEngine.TreePrototype:GetHashCode() end

---@class UnityEngine.DetailRenderMode
---@field GrassBillboard UnityEngine.DetailRenderMode
---@field VertexLit UnityEngine.DetailRenderMode
---@field Grass UnityEngine.DetailRenderMode
UnityEngine.DetailRenderMode = {}
---@alias CS.UnityEngine.DetailRenderMode UnityEngine.DetailRenderMode
CS.UnityEngine.DetailRenderMode = UnityEngine.DetailRenderMode


---@class UnityEngine.DetailScatterMode
---@field CoverageMode UnityEngine.DetailScatterMode
---@field InstanceCountMode UnityEngine.DetailScatterMode
UnityEngine.DetailScatterMode = {}
---@alias CS.UnityEngine.DetailScatterMode UnityEngine.DetailScatterMode
CS.UnityEngine.DetailScatterMode = UnityEngine.DetailScatterMode


---@class UnityEngine.TreeMotionVectorModeOverride
---@field CameraMotionOnly UnityEngine.TreeMotionVectorModeOverride
---@field PerObjectMotion UnityEngine.TreeMotionVectorModeOverride
---@field ForceNoMotion UnityEngine.TreeMotionVectorModeOverride
---@field InheritFromPrototype UnityEngine.TreeMotionVectorModeOverride
UnityEngine.TreeMotionVectorModeOverride = {}
---@alias CS.UnityEngine.TreeMotionVectorModeOverride UnityEngine.TreeMotionVectorModeOverride
CS.UnityEngine.TreeMotionVectorModeOverride = UnityEngine.TreeMotionVectorModeOverride


---@class UnityEngine.DetailPrototype : System.Object
---@field prototype UnityEngine.GameObject
---@field prototypeTexture UnityEngine.Texture2D
---@field minWidth number
---@field maxWidth number
---@field minHeight number
---@field maxHeight number
---@field noiseSeed number
---@field noiseSpread number
---@field density number
---@field holeEdgePadding number
---@field healthyColor UnityEngine.Color
---@field dryColor UnityEngine.Color
---@field renderMode UnityEngine.DetailRenderMode
---@field usePrototypeMesh boolean
---@field useInstancing boolean
---@field targetCoverage number
---@field useDensityScaling boolean
---@field alignToGround number
---@field positionJitter number
UnityEngine.DetailPrototype = {}
---@alias CS.UnityEngine.DetailPrototype UnityEngine.DetailPrototype
CS.UnityEngine.DetailPrototype = UnityEngine.DetailPrototype

---@overload fun() : UnityEngine.DetailPrototype
---@param other UnityEngine.DetailPrototype
---@return UnityEngine.DetailPrototype
function UnityEngine.DetailPrototype.New(other) end
---@param obj System.Object
---@return boolean
function UnityEngine.DetailPrototype:Equals(obj) end
---@return number
function UnityEngine.DetailPrototype:GetHashCode() end
---@overload fun() : boolean
---@param out_errorMessage string
---@return boolean,string
function UnityEngine.DetailPrototype:Validate(out_errorMessage) end

---@class UnityEngine.SplatPrototype : System.Object
---@field texture UnityEngine.Texture2D
---@field normalMap UnityEngine.Texture2D
---@field tileSize UnityEngine.Vector2
---@field tileOffset UnityEngine.Vector2
---@field specular UnityEngine.Color
---@field metallic number
---@field smoothness number
UnityEngine.SplatPrototype = {}
---@alias CS.UnityEngine.SplatPrototype UnityEngine.SplatPrototype
CS.UnityEngine.SplatPrototype = UnityEngine.SplatPrototype

---@return UnityEngine.SplatPrototype
function UnityEngine.SplatPrototype.New() end

---@class UnityEngine.TreeInstance : System.ValueType
---@field position UnityEngine.Vector3
---@field widthScale number
---@field heightScale number
---@field rotation number
---@field color UnityEngine.Color32
---@field lightmapColor UnityEngine.Color32
---@field prototypeIndex number
UnityEngine.TreeInstance = {}
---@alias CS.UnityEngine.TreeInstance UnityEngine.TreeInstance
CS.UnityEngine.TreeInstance = UnityEngine.TreeInstance


---@class UnityEngine.PatchExtents : System.ValueType
---@field min number
---@field max number
UnityEngine.PatchExtents = {}
---@alias CS.UnityEngine.PatchExtents UnityEngine.PatchExtents
CS.UnityEngine.PatchExtents = UnityEngine.PatchExtents


---@class UnityEngine.TerrainHeightmapSyncControl
---@field None UnityEngine.TerrainHeightmapSyncControl
---@field HeightOnly UnityEngine.TerrainHeightmapSyncControl
---@field HeightAndLod UnityEngine.TerrainHeightmapSyncControl
UnityEngine.TerrainHeightmapSyncControl = {}
---@alias CS.UnityEngine.TerrainHeightmapSyncControl UnityEngine.TerrainHeightmapSyncControl
CS.UnityEngine.TerrainHeightmapSyncControl = UnityEngine.TerrainHeightmapSyncControl


---@class UnityEngine.DetailInstanceTransform : System.ValueType
---@field posX number
---@field posY number
---@field posZ number
---@field scaleXZ number
---@field scaleY number
---@field rotationY number
UnityEngine.DetailInstanceTransform = {}
---@alias CS.UnityEngine.DetailInstanceTransform UnityEngine.DetailInstanceTransform
CS.UnityEngine.DetailInstanceTransform = UnityEngine.DetailInstanceTransform


---@class UnityEngine.TerrainData : UnityEngine.Object
---@field AlphamapTextureName string
---@field HolesTextureName string
---@field heightmapTexture UnityEngine.RenderTexture
---@field heightmapResolution number
---@field heightmapScale UnityEngine.Vector3
---@field holesTexture UnityEngine.Texture
---@field enableHolesTextureCompression boolean
---@field holesResolution number
---@field size UnityEngine.Vector3
---@field bounds UnityEngine.Bounds
---@field wavingGrassStrength number
---@field wavingGrassAmount number
---@field wavingGrassSpeed number
---@field wavingGrassTint UnityEngine.Color
---@field detailWidth number
---@field detailHeight number
---@field maxDetailScatterPerRes number
---@field detailPatchCount number
---@field detailResolution number
---@field detailResolutionPerPatch number
---@field detailScatterMode UnityEngine.DetailScatterMode
---@field detailPrototypes UnityEngine.DetailPrototype[]
---@field treeInstances UnityEngine.TreeInstance[]
---@field treeInstanceCount number
---@field treePrototypes UnityEngine.TreePrototype[]
---@field alphamapLayers number
---@field alphamapResolution number
---@field alphamapWidth number
---@field alphamapHeight number
---@field baseMapResolution number
---@field alphamapTextureCount number
---@field alphamapTextures UnityEngine.Texture2D[]
---@field terrainLayers UnityEngine.TerrainLayer[]
UnityEngine.TerrainData = {}
---@alias CS.UnityEngine.TerrainData UnityEngine.TerrainData
CS.UnityEngine.TerrainData = UnityEngine.TerrainData

---@return UnityEngine.TerrainData
function UnityEngine.TerrainData.New() end
---@param x number
---@param y number
---@return number
function UnityEngine.TerrainData:GetHeight(x, y) end
---@param x number
---@param y number
---@return number
function UnityEngine.TerrainData:GetInterpolatedHeight(x, y) end
---@overload fun(self: UnityEngine.TerrainData, xBase: number, yBase: number, xCount: number, yCount: number, xInterval: number, yInterval: number) : System.Single[,]
---@param results System.Single[,]
---@param resultXOffset number
---@param resultYOffset number
---@param xBase number
---@param yBase number
---@param xCount number
---@param yCount number
---@param xInterval number
---@param yInterval number
function UnityEngine.TerrainData:GetInterpolatedHeights(results, resultXOffset, resultYOffset, xBase, yBase, xCount, yCount, xInterval, yInterval) end
---@param xBase number
---@param yBase number
---@param width number
---@param height number
---@return System.Single[,]
function UnityEngine.TerrainData:GetHeights(xBase, yBase, width, height) end
---@param xBase number
---@param yBase number
---@param heights System.Single[,]
function UnityEngine.TerrainData:SetHeights(xBase, yBase, heights) end
---@return UnityEngine.PatchExtents[]
function UnityEngine.TerrainData:GetPatchMinMaxHeights() end
---@param minMaxHeights UnityEngine.PatchExtents[]
function UnityEngine.TerrainData:OverrideMinMaxPatchHeights(minMaxHeights) end
---@return System.Single[]
function UnityEngine.TerrainData:GetMaximumHeightError() end
---@param maxError System.Single[]
function UnityEngine.TerrainData:OverrideMaximumHeightError(maxError) end
---@param xBase number
---@param yBase number
---@param heights System.Single[,]
function UnityEngine.TerrainData:SetHeightsDelayLOD(xBase, yBase, heights) end
---@param x number
---@param y number
---@return boolean
function UnityEngine.TerrainData:IsHole(x, y) end
---@param xBase number
---@param yBase number
---@param width number
---@param height number
---@return System.Boolean[,]
function UnityEngine.TerrainData:GetHoles(xBase, yBase, width, height) end
---@param xBase number
---@param yBase number
---@param holes System.Boolean[,]
function UnityEngine.TerrainData:SetHoles(xBase, yBase, holes) end
---@param xBase number
---@param yBase number
---@param holes System.Boolean[,]
function UnityEngine.TerrainData:SetHolesDelayLOD(xBase, yBase, holes) end
---@param x number
---@param y number
---@return number
function UnityEngine.TerrainData:GetSteepness(x, y) end
---@param x number
---@param y number
---@return UnityEngine.Vector3
function UnityEngine.TerrainData:GetInterpolatedNormal(x, y) end
---@param detailResolution number
---@param resolutionPerPatch number
function UnityEngine.TerrainData:SetDetailResolution(detailResolution, resolutionPerPatch) end
---@param scatterMode UnityEngine.DetailScatterMode
function UnityEngine.TerrainData:SetDetailScatterMode(scatterMode) end
function UnityEngine.TerrainData:RefreshPrototypes() end
---@overload fun(self: UnityEngine.TerrainData, xBase: number, yBase: number, totalWidth: number, totalHeight: number) : System.Int32[]
---@param positionBase UnityEngine.Vector2Int
---@param size UnityEngine.Vector2Int
---@return System.Int32[]
function UnityEngine.TerrainData:GetSupportedLayers(positionBase, size) end
---@overload fun(self: UnityEngine.TerrainData, xBase: number, yBase: number, width: number, height: number, layer: number) : System.Int32[,]
---@param positionBase UnityEngine.Vector2Int
---@param size UnityEngine.Vector2Int
---@param layer number
---@return System.Int32[,]
function UnityEngine.TerrainData:GetDetailLayer(positionBase, size, layer) end
---@param patchX number
---@param patchY number
---@param layer number
---@param density number
---@param out_bounds UnityEngine.Bounds
---@return UnityEngine.DetailInstanceTransform[],UnityEngine.Bounds
function UnityEngine.TerrainData:ComputeDetailInstanceTransforms(patchX, patchY, layer, density, out_bounds) end
---@param detailPrototypeIndex number
---@return number
function UnityEngine.TerrainData:ComputeDetailCoverage(detailPrototypeIndex) end
---@overload fun(self: UnityEngine.TerrainData, xBase: number, yBase: number, layer: number, details: System.Int32[,])
---@param basePosition UnityEngine.Vector2Int
---@param layer number
---@param details System.Int32[,]
function UnityEngine.TerrainData:SetDetailLayer(basePosition, layer, details) end
---@param density number
---@return UnityEngine.Vector2Int[]
function UnityEngine.TerrainData:GetClampedDetailPatches(density) end
---@param instances UnityEngine.TreeInstance[]
---@param snapToHeightmap boolean
function UnityEngine.TerrainData:SetTreeInstances(instances, snapToHeightmap) end
---@param index number
---@return UnityEngine.TreeInstance
function UnityEngine.TerrainData:GetTreeInstance(index) end
---@param index number
---@param instance UnityEngine.TreeInstance
function UnityEngine.TerrainData:SetTreeInstance(index, instance) end
---@param index number
function UnityEngine.TerrainData:RemoveDetailPrototype(index) end
---@param x number
---@param y number
---@param width number
---@param height number
---@return System.Single[,,]
function UnityEngine.TerrainData:GetAlphamaps(x, y, width, height) end
---@param x number
---@param y number
---@param map System.Single[,,]
function UnityEngine.TerrainData:SetAlphamaps(x, y, map) end
function UnityEngine.TerrainData:SetBaseMapDirty() end
---@param index number
---@return UnityEngine.Texture2D
function UnityEngine.TerrainData:GetAlphamapTexture(index) end
---@param terrainLayers UnityEngine.TerrainLayer[]
---@param undoName string
function UnityEngine.TerrainData:SetTerrainLayersRegisterUndo(terrainLayers, undoName) end
function UnityEngine.TerrainData:SyncHeightmap() end
---@param sourceRect UnityEngine.RectInt
---@param dest UnityEngine.Vector2Int
---@param syncControl UnityEngine.TerrainHeightmapSyncControl
function UnityEngine.TerrainData:CopyActiveRenderTextureToHeightmap(sourceRect, dest, syncControl) end
---@param region UnityEngine.RectInt
---@param syncControl UnityEngine.TerrainHeightmapSyncControl
function UnityEngine.TerrainData:DirtyHeightmapRegion(region, syncControl) end
---@param textureName string
---@param textureIndex number
---@param sourceRect UnityEngine.RectInt
---@param dest UnityEngine.Vector2Int
---@param allowDelayedCPUSync boolean
function UnityEngine.TerrainData:CopyActiveRenderTextureToTexture(textureName, textureIndex, sourceRect, dest, allowDelayedCPUSync) end
---@param textureName string
---@param region UnityEngine.RectInt
---@param allowDelayedCPUSync boolean
function UnityEngine.TerrainData:DirtyTextureRegion(textureName, region, allowDelayedCPUSync) end
---@param textureName string
function UnityEngine.TerrainData:SyncTexture(textureName) end

---@class UnityEngine.TerrainData.BoundaryValueType
---@field MaxHeightmapRes UnityEngine.TerrainData.BoundaryValueType
---@field MinDetailResPerPatch UnityEngine.TerrainData.BoundaryValueType
---@field MaxDetailResPerPatch UnityEngine.TerrainData.BoundaryValueType
---@field MaxDetailPatchCount UnityEngine.TerrainData.BoundaryValueType
---@field MaxCoveragePerRes UnityEngine.TerrainData.BoundaryValueType
---@field MinAlphamapRes UnityEngine.TerrainData.BoundaryValueType
---@field MaxAlphamapRes UnityEngine.TerrainData.BoundaryValueType
---@field MinBaseMapRes UnityEngine.TerrainData.BoundaryValueType
---@field MaxBaseMapRes UnityEngine.TerrainData.BoundaryValueType
UnityEngine.TerrainData.BoundaryValueType = {}
---@alias CS.UnityEngine.TerrainData.BoundaryValueType UnityEngine.TerrainData.BoundaryValueType
CS.UnityEngine.TerrainData.BoundaryValueType = UnityEngine.TerrainData.BoundaryValueType


---@class UnityEngine.TerrainLayer : UnityEngine.Object
---@field diffuseTexture UnityEngine.Texture2D
---@field normalMapTexture UnityEngine.Texture2D
---@field maskMapTexture UnityEngine.Texture2D
---@field tileSize UnityEngine.Vector2
---@field tileOffset UnityEngine.Vector2
---@field specular UnityEngine.Color
---@field metallic number
---@field smoothness number
---@field normalScale number
---@field diffuseRemapMin UnityEngine.Vector4
---@field diffuseRemapMax UnityEngine.Vector4
---@field maskMapRemapMin UnityEngine.Vector4
---@field maskMapRemapMax UnityEngine.Vector4
UnityEngine.TerrainLayer = {}
---@alias CS.UnityEngine.TerrainLayer UnityEngine.TerrainLayer
CS.UnityEngine.TerrainLayer = UnityEngine.TerrainLayer

---@return UnityEngine.TerrainLayer
function UnityEngine.TerrainLayer.New() end

---@class UnityEngine.TerrainUtils.TerrainMapStatusCode
---@field OK UnityEngine.TerrainUtils.TerrainMapStatusCode
---@field Overlapping UnityEngine.TerrainUtils.TerrainMapStatusCode
---@field SizeMismatch UnityEngine.TerrainUtils.TerrainMapStatusCode
---@field EdgeAlignmentMismatch UnityEngine.TerrainUtils.TerrainMapStatusCode
UnityEngine.TerrainUtils.TerrainMapStatusCode = {}
---@alias CS.UnityEngine.TerrainUtils.TerrainMapStatusCode UnityEngine.TerrainUtils.TerrainMapStatusCode
CS.UnityEngine.TerrainUtils.TerrainMapStatusCode = UnityEngine.TerrainUtils.TerrainMapStatusCode


---@class UnityEngine.TerrainUtils.TerrainTileCoord : System.ValueType
---@field tileX number
---@field tileZ number
UnityEngine.TerrainUtils.TerrainTileCoord = {}
---@alias CS.UnityEngine.TerrainUtils.TerrainTileCoord UnityEngine.TerrainUtils.TerrainTileCoord
CS.UnityEngine.TerrainUtils.TerrainTileCoord = UnityEngine.TerrainUtils.TerrainTileCoord

---@param tileX number
---@param tileZ number
---@return UnityEngine.TerrainUtils.TerrainTileCoord
function UnityEngine.TerrainUtils.TerrainTileCoord.New(tileX, tileZ) end

---@class UnityEngine.TerrainUtils.TerrainMap : System.Object
---@field terrainTiles System.Collections.Generic.Dictionary
UnityEngine.TerrainUtils.TerrainMap = {}
---@alias CS.UnityEngine.TerrainUtils.TerrainMap UnityEngine.TerrainUtils.TerrainMap
CS.UnityEngine.TerrainUtils.TerrainMap = UnityEngine.TerrainUtils.TerrainMap

---@return UnityEngine.TerrainUtils.TerrainMap
function UnityEngine.TerrainUtils.TerrainMap.New() end
---@param originTerrain UnityEngine.Terrain
---@param filter System.Predicate
---@param fullValidation boolean
---@return UnityEngine.TerrainUtils.TerrainMap
function UnityEngine.TerrainUtils.TerrainMap.CreateFromConnectedNeighbors(originTerrain, filter, fullValidation) end
---@overload fun(originTerrain: UnityEngine.Terrain, filter: System.Predicate, fullValidation: boolean) : UnityEngine.TerrainUtils.TerrainMap
---@param gridOrigin UnityEngine.Vector2
---@param gridSize UnityEngine.Vector2
---@param filter System.Predicate
---@param fullValidation boolean
---@return UnityEngine.TerrainUtils.TerrainMap
function UnityEngine.TerrainUtils.TerrainMap.CreateFromPlacement(gridOrigin, gridSize, filter, fullValidation) end
---@param tileX number
---@param tileZ number
---@return UnityEngine.Terrain
function UnityEngine.TerrainUtils.TerrainMap:GetTerrain(tileX, tileZ) end

---@class UnityEngine.TerrainUtils.TerrainMap.QueueElement : System.ValueType
---@field tileX number
---@field tileZ number
---@field terrain UnityEngine.Terrain
UnityEngine.TerrainUtils.TerrainMap.QueueElement = {}
---@alias CS.UnityEngine.TerrainUtils.TerrainMap.QueueElement UnityEngine.TerrainUtils.TerrainMap.QueueElement
CS.UnityEngine.TerrainUtils.TerrainMap.QueueElement = UnityEngine.TerrainUtils.TerrainMap.QueueElement

---@param tileX number
---@param tileZ number
---@param terrain UnityEngine.Terrain
---@return UnityEngine.TerrainUtils.TerrainMap.QueueElement
function UnityEngine.TerrainUtils.TerrainMap.QueueElement.New(tileX, tileZ, terrain) end

---@class UnityEngine.TerrainUtils.TerrainUtility : System.Object
UnityEngine.TerrainUtils.TerrainUtility = {}
---@alias CS.UnityEngine.TerrainUtils.TerrainUtility UnityEngine.TerrainUtils.TerrainUtility
CS.UnityEngine.TerrainUtils.TerrainUtility = UnityEngine.TerrainUtils.TerrainUtility

function UnityEngine.TerrainUtils.TerrainUtility.AutoConnect() end

---@class UnityEngine.TerrainTools.BrushTransform : System.ValueType
---@field brushOrigin UnityEngine.Vector2
---@field brushU UnityEngine.Vector2
---@field brushV UnityEngine.Vector2
---@field targetOrigin UnityEngine.Vector2
---@field targetX UnityEngine.Vector2
---@field targetY UnityEngine.Vector2
UnityEngine.TerrainTools.BrushTransform = {}
---@alias CS.UnityEngine.TerrainTools.BrushTransform UnityEngine.TerrainTools.BrushTransform
CS.UnityEngine.TerrainTools.BrushTransform = UnityEngine.TerrainTools.BrushTransform

---@param brushOrigin UnityEngine.Vector2
---@param brushU UnityEngine.Vector2
---@param brushV UnityEngine.Vector2
---@return UnityEngine.TerrainTools.BrushTransform
function UnityEngine.TerrainTools.BrushTransform.New(brushOrigin, brushU, brushV) end
---@param brushRect UnityEngine.Rect
---@return UnityEngine.TerrainTools.BrushTransform
function UnityEngine.TerrainTools.BrushTransform.FromRect(brushRect) end
---@return UnityEngine.Rect
function UnityEngine.TerrainTools.BrushTransform:GetBrushXYBounds() end
---@param targetXY UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.TerrainTools.BrushTransform:ToBrushUV(targetXY) end
---@param brushUV UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.TerrainTools.BrushTransform:FromBrushUV(brushUV) end

---@class UnityEngine.TerrainTools.PaintContext : System.Object
---@field kNormalizedHeightScale number
---@field originTerrain UnityEngine.Terrain
---@field pixelRect UnityEngine.RectInt
---@field targetTextureWidth number
---@field targetTextureHeight number
---@field pixelSize UnityEngine.Vector2
---@field sourceRenderTexture UnityEngine.RenderTexture
---@field destinationRenderTexture UnityEngine.RenderTexture
---@field oldRenderTexture UnityEngine.RenderTexture
---@field terrainCount number
---@field heightWorldSpaceMin number
---@field heightWorldSpaceSize number
UnityEngine.TerrainTools.PaintContext = {}
---@alias CS.UnityEngine.TerrainTools.PaintContext UnityEngine.TerrainTools.PaintContext
CS.UnityEngine.TerrainTools.PaintContext = UnityEngine.TerrainTools.PaintContext

---@param terrain UnityEngine.Terrain
---@param pixelRect UnityEngine.RectInt
---@param targetTextureWidth number
---@param targetTextureHeight number
---@param sharedBoundaryTexel boolean
---@param fillOutsideTerrain boolean
---@return UnityEngine.TerrainTools.PaintContext
function UnityEngine.TerrainTools.PaintContext.New(terrain, pixelRect, targetTextureWidth, targetTextureHeight, sharedBoundaryTexel, fillOutsideTerrain) end
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param inputTextureWidth number
---@param inputTextureHeight number
---@param extraBorderPixels number
---@param sharedBoundaryTexel boolean
---@param fillOutsideTerrain boolean
---@return UnityEngine.TerrainTools.PaintContext
function UnityEngine.TerrainTools.PaintContext.CreateFromBounds(terrain, boundsInTerrainSpace, inputTextureWidth, inputTextureHeight, extraBorderPixels, sharedBoundaryTexel, fillOutsideTerrain) end
function UnityEngine.TerrainTools.PaintContext.ApplyDelayedActions() end
---@param terrainIndex number
---@return UnityEngine.Terrain
function UnityEngine.TerrainTools.PaintContext:GetTerrain(terrainIndex) end
---@param terrainIndex number
---@return UnityEngine.RectInt
function UnityEngine.TerrainTools.PaintContext:GetClippedPixelRectInTerrainPixels(terrainIndex) end
---@param terrainIndex number
---@return UnityEngine.RectInt
function UnityEngine.TerrainTools.PaintContext:GetClippedPixelRectInRenderTexturePixels(terrainIndex) end
---@param colorFormat UnityEngine.RenderTextureFormat
function UnityEngine.TerrainTools.PaintContext:CreateRenderTargets(colorFormat) end
---@param restoreRenderTexture boolean
function UnityEngine.TerrainTools.PaintContext:Cleanup(restoreRenderTexture) end
---@param terrainSource System.Func
---@param defaultColor UnityEngine.Color
---@param blitMaterial UnityEngine.Material
---@param blitPass number
---@param beforeBlit System.Action
---@param afterBlit System.Action
function UnityEngine.TerrainTools.PaintContext:Gather(terrainSource, defaultColor, blitMaterial, blitPass, beforeBlit, afterBlit) end
---@param terrainDest System.Func
---@param blitMaterial UnityEngine.Material
---@param blitPass number
---@param beforeBlit System.Action
---@param afterBlit System.Action
function UnityEngine.TerrainTools.PaintContext:Scatter(terrainDest, blitMaterial, blitPass, beforeBlit, afterBlit) end
function UnityEngine.TerrainTools.PaintContext:GatherHeightmap() end
---@param editorUndoName string
function UnityEngine.TerrainTools.PaintContext:ScatterHeightmap(editorUndoName) end
function UnityEngine.TerrainTools.PaintContext:GatherHoles() end
---@param editorUndoName string
function UnityEngine.TerrainTools.PaintContext:ScatterHoles(editorUndoName) end
function UnityEngine.TerrainTools.PaintContext:GatherNormals() end
---@param inputLayer UnityEngine.TerrainLayer
---@param addLayerIfDoesntExist boolean
function UnityEngine.TerrainTools.PaintContext:GatherAlphamap(inputLayer, addLayerIfDoesntExist) end
---@param editorUndoName string
function UnityEngine.TerrainTools.PaintContext:ScatterAlphamap(editorUndoName) end

---@class UnityEngine.TerrainTools.PaintContext.ITerrainInfo
---@field terrain UnityEngine.Terrain
---@field clippedTerrainPixels UnityEngine.RectInt
---@field clippedPCPixels UnityEngine.RectInt
---@field paddedTerrainPixels UnityEngine.RectInt
---@field paddedPCPixels UnityEngine.RectInt
---@field gatherEnable boolean
---@field scatterEnable boolean
---@field userData System.Object
UnityEngine.TerrainTools.PaintContext.ITerrainInfo = {}
---@alias CS.UnityEngine.TerrainTools.PaintContext.ITerrainInfo UnityEngine.TerrainTools.PaintContext.ITerrainInfo
CS.UnityEngine.TerrainTools.PaintContext.ITerrainInfo = UnityEngine.TerrainTools.PaintContext.ITerrainInfo


---@class UnityEngine.TerrainTools.PaintContext.TerrainTile : System.Object
---@field terrain UnityEngine.Terrain
---@field tileOriginPixels UnityEngine.Vector2Int
---@field clippedTerrainPixels UnityEngine.RectInt
---@field clippedPCPixels UnityEngine.RectInt
---@field paddedTerrainPixels UnityEngine.RectInt
---@field paddedPCPixels UnityEngine.RectInt
---@field userData System.Object
---@field gatherEnable boolean
---@field scatterEnable boolean
UnityEngine.TerrainTools.PaintContext.TerrainTile = {}
---@alias CS.UnityEngine.TerrainTools.PaintContext.TerrainTile UnityEngine.TerrainTools.PaintContext.TerrainTile
CS.UnityEngine.TerrainTools.PaintContext.TerrainTile = UnityEngine.TerrainTools.PaintContext.TerrainTile

---@return UnityEngine.TerrainTools.PaintContext.TerrainTile
function UnityEngine.TerrainTools.PaintContext.TerrainTile.New() end
---@param terrain UnityEngine.Terrain
---@param tileOriginPixelsX number
---@param tileOriginPixelsY number
---@param pixelRect UnityEngine.RectInt
---@param targetTextureWidth number
---@param targetTextureHeight number
---@param edgePad number
---@return UnityEngine.TerrainTools.PaintContext.TerrainTile
function UnityEngine.TerrainTools.PaintContext.TerrainTile.Make(terrain, tileOriginPixelsX, tileOriginPixelsY, pixelRect, targetTextureWidth, targetTextureHeight, edgePad) end

---@class UnityEngine.TerrainTools.PaintContext.SplatmapUserData : System.Object
---@field terrainLayer UnityEngine.TerrainLayer
---@field terrainLayerIndex number
---@field mapIndex number
---@field channelIndex number
UnityEngine.TerrainTools.PaintContext.SplatmapUserData = {}
---@alias CS.UnityEngine.TerrainTools.PaintContext.SplatmapUserData UnityEngine.TerrainTools.PaintContext.SplatmapUserData
CS.UnityEngine.TerrainTools.PaintContext.SplatmapUserData = UnityEngine.TerrainTools.PaintContext.SplatmapUserData

---@return UnityEngine.TerrainTools.PaintContext.SplatmapUserData
function UnityEngine.TerrainTools.PaintContext.SplatmapUserData.New() end

---@class UnityEngine.TerrainTools.PaintContext.ToolAction
---@field None UnityEngine.TerrainTools.PaintContext.ToolAction
---@field PaintHeightmap UnityEngine.TerrainTools.PaintContext.ToolAction
---@field PaintTexture UnityEngine.TerrainTools.PaintContext.ToolAction
---@field PaintHoles UnityEngine.TerrainTools.PaintContext.ToolAction
---@field AddTerrainLayer UnityEngine.TerrainTools.PaintContext.ToolAction
UnityEngine.TerrainTools.PaintContext.ToolAction = {}
---@alias CS.UnityEngine.TerrainTools.PaintContext.ToolAction UnityEngine.TerrainTools.PaintContext.ToolAction
CS.UnityEngine.TerrainTools.PaintContext.ToolAction = UnityEngine.TerrainTools.PaintContext.ToolAction


---@class UnityEngine.TerrainTools.PaintContext.PaintedTerrain : System.ValueType
---@field terrain UnityEngine.Terrain
---@field action UnityEngine.TerrainTools.PaintContext.ToolAction
UnityEngine.TerrainTools.PaintContext.PaintedTerrain = {}
---@alias CS.UnityEngine.TerrainTools.PaintContext.PaintedTerrain UnityEngine.TerrainTools.PaintContext.PaintedTerrain
CS.UnityEngine.TerrainTools.PaintContext.PaintedTerrain = UnityEngine.TerrainTools.PaintContext.PaintedTerrain


---@class UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
---@field RaiseLowerHeight UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
---@field StampHeight UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
---@field SetHeights UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
---@field SmoothHeights UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
---@field PaintTexture UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
---@field PaintHoles UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses = {}
---@alias CS.UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses
CS.UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses = UnityEngine.TerrainTools.TerrainBuiltinPaintMaterialPasses


---@class UnityEngine.TerrainTools.TerrainPaintUtility : System.Object
UnityEngine.TerrainTools.TerrainPaintUtility = {}
---@alias CS.UnityEngine.TerrainTools.TerrainPaintUtility UnityEngine.TerrainTools.TerrainPaintUtility
CS.UnityEngine.TerrainTools.TerrainPaintUtility = UnityEngine.TerrainTools.TerrainPaintUtility

---@return UnityEngine.Material
function UnityEngine.TerrainTools.TerrainPaintUtility.GetBuiltinPaintMaterial() end
---@param out_minBrushWorldSize number
---@param out_maxBrushWorldSize number
---@param terrainTileWorldSize number
---@param terrainTileTextureResolutionPixels number
---@param minBrushResolutionPixels number
---@param maxBrushResolutionPixels number
---@return ,number,number
function UnityEngine.TerrainTools.TerrainPaintUtility.GetBrushWorldSizeLimits(out_minBrushWorldSize, out_maxBrushWorldSize, terrainTileWorldSize, terrainTileTextureResolutionPixels, minBrushResolutionPixels, maxBrushResolutionPixels) end
---@param terrain UnityEngine.Terrain
---@param brushCenterTerrainUV UnityEngine.Vector2
---@param brushSize number
---@param brushRotationDegrees number
---@return UnityEngine.TerrainTools.BrushTransform
function UnityEngine.TerrainTools.TerrainPaintUtility.CalculateBrushTransform(terrain, brushCenterTerrainUV, brushSize, brushRotationDegrees) end
---@param src UnityEngine.TerrainTools.PaintContext
---@param dst UnityEngine.TerrainTools.PaintContext
---@param out_scaleOffset UnityEngine.Vector4
---@return ,UnityEngine.Vector4
function UnityEngine.TerrainTools.TerrainPaintUtility.BuildTransformPaintContextUVToPaintContextUV(src, dst, out_scaleOffset) end
---@param paintContext UnityEngine.TerrainTools.PaintContext
---@param ref_brushXform UnityEngine.TerrainTools.BrushTransform
---@param material UnityEngine.Material
---@return ,UnityEngine.TerrainTools.BrushTransform
function UnityEngine.TerrainTools.TerrainPaintUtility.SetupTerrainToolMaterialProperties(paintContext, ref_brushXform, material) end
---@param ctx UnityEngine.TerrainTools.PaintContext
function UnityEngine.TerrainTools.TerrainPaintUtility.ReleaseContextResources(ctx) end
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param extraBorderPixels number
---@param fillOutsideTerrain boolean
---@return UnityEngine.TerrainTools.PaintContext
function UnityEngine.TerrainTools.TerrainPaintUtility.BeginPaintHeightmap(terrain, boundsInTerrainSpace, extraBorderPixels, fillOutsideTerrain) end
---@param ctx UnityEngine.TerrainTools.PaintContext
---@param editorUndoName string
function UnityEngine.TerrainTools.TerrainPaintUtility.EndPaintHeightmap(ctx, editorUndoName) end
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param extraBorderPixels number
---@param fillOutsideTerrain boolean
---@return UnityEngine.TerrainTools.PaintContext
function UnityEngine.TerrainTools.TerrainPaintUtility.BeginPaintHoles(terrain, boundsInTerrainSpace, extraBorderPixels, fillOutsideTerrain) end
---@param ctx UnityEngine.TerrainTools.PaintContext
---@param editorUndoName string
function UnityEngine.TerrainTools.TerrainPaintUtility.EndPaintHoles(ctx, editorUndoName) end
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param extraBorderPixels number
---@param fillOutsideTerrain boolean
---@return UnityEngine.TerrainTools.PaintContext
function UnityEngine.TerrainTools.TerrainPaintUtility.CollectNormals(terrain, boundsInTerrainSpace, extraBorderPixels, fillOutsideTerrain) end
---@param terrain UnityEngine.Terrain
---@param boundsInTerrainSpace UnityEngine.Rect
---@param inputLayer UnityEngine.TerrainLayer
---@param extraBorderPixels number
---@param fillOutsideTerrain boolean
---@return UnityEngine.TerrainTools.PaintContext
function UnityEngine.TerrainTools.TerrainPaintUtility.BeginPaintTexture(terrain, boundsInTerrainSpace, inputLayer, extraBorderPixels, fillOutsideTerrain) end
---@param ctx UnityEngine.TerrainTools.PaintContext
---@param editorUndoName string
function UnityEngine.TerrainTools.TerrainPaintUtility.EndPaintTexture(ctx, editorUndoName) end
---@return UnityEngine.Material
function UnityEngine.TerrainTools.TerrainPaintUtility.GetBlitMaterial() end
---@return UnityEngine.Material
function UnityEngine.TerrainTools.TerrainPaintUtility.GetHeightBlitMaterial() end
---@return UnityEngine.Material
function UnityEngine.TerrainTools.TerrainPaintUtility.GetCopyTerrainLayerMaterial() end
---@param terrain UnityEngine.Terrain
---@param mapIndex number
---@return UnityEngine.Texture2D
function UnityEngine.TerrainTools.TerrainPaintUtility.GetTerrainAlphaMapChecked(terrain, mapIndex) end
---@param terrain UnityEngine.Terrain
---@param inputLayer UnityEngine.TerrainLayer
---@return number
function UnityEngine.TerrainTools.TerrainPaintUtility.FindTerrainLayerIndex(terrain, inputLayer) end

---@class UnityEngine.TerrainCollider : UnityEngine.Collider
---@field terrainData UnityEngine.TerrainData
UnityEngine.TerrainCollider = {}
---@alias CS.UnityEngine.TerrainCollider UnityEngine.TerrainCollider
CS.UnityEngine.TerrainCollider = UnityEngine.TerrainCollider

---@return UnityEngine.TerrainCollider
function UnityEngine.TerrainCollider.New() end

---@class UnityEngine.TextCore.FaceInfo : System.ValueType
---@field familyName string
---@field styleName string
---@field pointSize number
---@field scale number
---@field lineHeight number
---@field ascentLine number
---@field capLine number
---@field meanLine number
---@field baseline number
---@field descentLine number
---@field superscriptOffset number
---@field superscriptSize number
---@field subscriptOffset number
---@field subscriptSize number
---@field underlineOffset number
---@field underlineThickness number
---@field strikethroughOffset number
---@field strikethroughThickness number
---@field tabWidth number
UnityEngine.TextCore.FaceInfo = {}
---@alias CS.UnityEngine.TextCore.FaceInfo UnityEngine.TextCore.FaceInfo
CS.UnityEngine.TextCore.FaceInfo = UnityEngine.TextCore.FaceInfo

---@param other UnityEngine.TextCore.FaceInfo
---@return boolean
function UnityEngine.TextCore.FaceInfo:Compare(other) end

---@class UnityEngine.TextCore.GlyphClassDefinitionType
---@field Undefined UnityEngine.TextCore.GlyphClassDefinitionType
---@field Base UnityEngine.TextCore.GlyphClassDefinitionType
---@field Ligature UnityEngine.TextCore.GlyphClassDefinitionType
---@field Mark UnityEngine.TextCore.GlyphClassDefinitionType
---@field Component UnityEngine.TextCore.GlyphClassDefinitionType
UnityEngine.TextCore.GlyphClassDefinitionType = {}
---@alias CS.UnityEngine.TextCore.GlyphClassDefinitionType UnityEngine.TextCore.GlyphClassDefinitionType
CS.UnityEngine.TextCore.GlyphClassDefinitionType = UnityEngine.TextCore.GlyphClassDefinitionType


---@class UnityEngine.TextCore.GlyphRect : System.ValueType
---@field zero UnityEngine.TextCore.GlyphRect
---@field x number
---@field y number
---@field width number
---@field height number
UnityEngine.TextCore.GlyphRect = {}
---@alias CS.UnityEngine.TextCore.GlyphRect UnityEngine.TextCore.GlyphRect
CS.UnityEngine.TextCore.GlyphRect = UnityEngine.TextCore.GlyphRect

---@overload fun(x: number, y: number, width: number, height: number) : UnityEngine.TextCore.GlyphRect
---@param rect UnityEngine.Rect
---@return UnityEngine.TextCore.GlyphRect
function UnityEngine.TextCore.GlyphRect.New(rect) end
---@return number
function UnityEngine.TextCore.GlyphRect:GetHashCode() end
---@overload fun(self: UnityEngine.TextCore.GlyphRect, obj: System.Object) : boolean
---@param other UnityEngine.TextCore.GlyphRect
---@return boolean
function UnityEngine.TextCore.GlyphRect:Equals(other) end

---@class UnityEngine.TextCore.GlyphMetrics : System.ValueType
---@field width number
---@field height number
---@field horizontalBearingX number
---@field horizontalBearingY number
---@field horizontalAdvance number
UnityEngine.TextCore.GlyphMetrics = {}
---@alias CS.UnityEngine.TextCore.GlyphMetrics UnityEngine.TextCore.GlyphMetrics
CS.UnityEngine.TextCore.GlyphMetrics = UnityEngine.TextCore.GlyphMetrics

---@param width number
---@param height number
---@param bearingX number
---@param bearingY number
---@param advance number
---@return UnityEngine.TextCore.GlyphMetrics
function UnityEngine.TextCore.GlyphMetrics.New(width, height, bearingX, bearingY, advance) end
---@return number
function UnityEngine.TextCore.GlyphMetrics:GetHashCode() end
---@overload fun(self: UnityEngine.TextCore.GlyphMetrics, obj: System.Object) : boolean
---@param other UnityEngine.TextCore.GlyphMetrics
---@return boolean
function UnityEngine.TextCore.GlyphMetrics:Equals(other) end

---@class UnityEngine.TextCore.Glyph : System.Object
---@field index number
---@field metrics UnityEngine.TextCore.GlyphMetrics
---@field glyphRect UnityEngine.TextCore.GlyphRect
---@field scale number
---@field atlasIndex number
---@field classDefinitionType UnityEngine.TextCore.GlyphClassDefinitionType
UnityEngine.TextCore.Glyph = {}
---@alias CS.UnityEngine.TextCore.Glyph UnityEngine.TextCore.Glyph
CS.UnityEngine.TextCore.Glyph = UnityEngine.TextCore.Glyph

---@overload fun() : UnityEngine.TextCore.Glyph
---@overload fun(glyph: UnityEngine.TextCore.Glyph) : UnityEngine.TextCore.Glyph
---@overload fun(index: number, metrics: UnityEngine.TextCore.GlyphMetrics, glyphRect: UnityEngine.TextCore.GlyphRect) : UnityEngine.TextCore.Glyph
---@param index number
---@param metrics UnityEngine.TextCore.GlyphMetrics
---@param glyphRect UnityEngine.TextCore.GlyphRect
---@param scale number
---@param atlasIndex number
---@return UnityEngine.TextCore.Glyph
function UnityEngine.TextCore.Glyph.New(index, metrics, glyphRect, scale, atlasIndex) end
---@param other UnityEngine.TextCore.Glyph
---@return boolean
function UnityEngine.TextCore.Glyph:Compare(other) end

---@class UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_DEFAULT UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_NO_SCALE UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_NO_HINTING UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_RENDER UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_NO_BITMAP UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_FORCE_AUTOHINT UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_MONOCHROME UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_NO_AUTOHINT UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_COLOR UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_COMPUTE_METRICS UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@field LOAD_BITMAP_METRICS_ONLY UnityEngine.TextCore.LowLevel.GlyphLoadFlags
UnityEngine.TextCore.LowLevel.GlyphLoadFlags = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphLoadFlags UnityEngine.TextCore.LowLevel.GlyphLoadFlags
CS.UnityEngine.TextCore.LowLevel.GlyphLoadFlags = UnityEngine.TextCore.LowLevel.GlyphLoadFlags


---@class UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_8BIT UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_MONO UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_NO_HINTING UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_HINTED UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_BITMAP UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_SDF UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_SDFAA UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_MSDF UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_MSDFA UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_1X UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_8X UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_16X UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_32X UnityEngine.TextCore.LowLevel.GlyphRasterModes
---@field RASTER_MODE_COLOR UnityEngine.TextCore.LowLevel.GlyphRasterModes
UnityEngine.TextCore.LowLevel.GlyphRasterModes = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphRasterModes UnityEngine.TextCore.LowLevel.GlyphRasterModes
CS.UnityEngine.TextCore.LowLevel.GlyphRasterModes = UnityEngine.TextCore.LowLevel.GlyphRasterModes


---@class UnityEngine.TextCore.LowLevel.FontEngineError
---@field Success UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_File_Path UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_File_Format UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_File_Structure UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_File UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_Table UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_Glyph_Index UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_Character_Code UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_Pixel_Size UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_Library UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_Face UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_Library_or_Face UnityEngine.TextCore.LowLevel.FontEngineError
---@field Atlas_Generation_Cancelled UnityEngine.TextCore.LowLevel.FontEngineError
---@field Invalid_SharedTextureData UnityEngine.TextCore.LowLevel.FontEngineError
---@field OpenTypeLayoutLookup_Mismatch UnityEngine.TextCore.LowLevel.FontEngineError
UnityEngine.TextCore.LowLevel.FontEngineError = {}
---@alias CS.UnityEngine.TextCore.LowLevel.FontEngineError UnityEngine.TextCore.LowLevel.FontEngineError
CS.UnityEngine.TextCore.LowLevel.FontEngineError = UnityEngine.TextCore.LowLevel.FontEngineError


---@class UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SMOOTH_HINTED UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SMOOTH UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field COLOR_HINTED UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field COLOR UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field RASTER_HINTED UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field RASTER UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SDF UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SDF8 UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SDF16 UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SDF32 UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SDFAA_HINTED UnityEngine.TextCore.LowLevel.GlyphRenderMode
---@field SDFAA UnityEngine.TextCore.LowLevel.GlyphRenderMode
UnityEngine.TextCore.LowLevel.GlyphRenderMode = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphRenderMode UnityEngine.TextCore.LowLevel.GlyphRenderMode
CS.UnityEngine.TextCore.LowLevel.GlyphRenderMode = UnityEngine.TextCore.LowLevel.GlyphRenderMode


---@class UnityEngine.TextCore.LowLevel.GlyphPackingMode
---@field BestShortSideFit UnityEngine.TextCore.LowLevel.GlyphPackingMode
---@field BestLongSideFit UnityEngine.TextCore.LowLevel.GlyphPackingMode
---@field BestAreaFit UnityEngine.TextCore.LowLevel.GlyphPackingMode
---@field BottomLeftRule UnityEngine.TextCore.LowLevel.GlyphPackingMode
---@field ContactPointRule UnityEngine.TextCore.LowLevel.GlyphPackingMode
UnityEngine.TextCore.LowLevel.GlyphPackingMode = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphPackingMode UnityEngine.TextCore.LowLevel.GlyphPackingMode
CS.UnityEngine.TextCore.LowLevel.GlyphPackingMode = UnityEngine.TextCore.LowLevel.GlyphPackingMode


---@class UnityEngine.TextCore.LowLevel.FontReference : System.ValueType
---@field familyName string
---@field styleName string
---@field faceIndex number
---@field filePath string
UnityEngine.TextCore.LowLevel.FontReference = {}
---@alias CS.UnityEngine.TextCore.LowLevel.FontReference UnityEngine.TextCore.LowLevel.FontReference
CS.UnityEngine.TextCore.LowLevel.FontReference = UnityEngine.TextCore.LowLevel.FontReference


---@class UnityEngine.TextCore.LowLevel.FontEngine : System.Object
UnityEngine.TextCore.LowLevel.FontEngine = {}
---@alias CS.UnityEngine.TextCore.LowLevel.FontEngine UnityEngine.TextCore.LowLevel.FontEngine
CS.UnityEngine.TextCore.LowLevel.FontEngine = UnityEngine.TextCore.LowLevel.FontEngine

---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.InitializeFontEngine() end
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.DestroyFontEngine() end
---@overload fun(filePath: string) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(filePath: string, pointSize: number) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(filePath: string, pointSize: number, faceIndex: number) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(sourceFontFile: System.Byte[]) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(sourceFontFile: System.Byte[], pointSize: number) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(sourceFontFile: System.Byte[], pointSize: number, faceIndex: number) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(font: UnityEngine.Font) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(font: UnityEngine.Font, pointSize: number) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(font: UnityEngine.Font, pointSize: number, faceIndex: number) : UnityEngine.TextCore.LowLevel.FontEngineError
---@overload fun(familyName: string, styleName: string) : UnityEngine.TextCore.LowLevel.FontEngineError
---@param familyName string
---@param styleName string
---@param pointSize number
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.LoadFontFace(familyName, styleName, pointSize) end
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.UnloadFontFace() end
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.UnloadAllFontFaces() end
---@return System.String[]
function UnityEngine.TextCore.LowLevel.FontEngine.GetSystemFontNames() end
---@param pointSize number
---@return UnityEngine.TextCore.LowLevel.FontEngineError
function UnityEngine.TextCore.LowLevel.FontEngine.SetFaceSize(pointSize) end
---@return UnityEngine.TextCore.FaceInfo
function UnityEngine.TextCore.LowLevel.FontEngine.GetFaceInfo() end
---@return System.String[]
function UnityEngine.TextCore.LowLevel.FontEngine.GetFontFaces() end
---@param unicode number
---@param out_glyphIndex number
---@return boolean,number
function UnityEngine.TextCore.LowLevel.FontEngine.TryGetGlyphIndex(unicode, out_glyphIndex) end
---@param unicode number
---@param flags UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@param out_glyph UnityEngine.TextCore.Glyph
---@return boolean,UnityEngine.TextCore.Glyph
function UnityEngine.TextCore.LowLevel.FontEngine.TryGetGlyphWithUnicodeValue(unicode, flags, out_glyph) end
---@param glyphIndex number
---@param flags UnityEngine.TextCore.LowLevel.GlyphLoadFlags
---@param out_glyph UnityEngine.TextCore.Glyph
---@return boolean,UnityEngine.TextCore.Glyph
function UnityEngine.TextCore.LowLevel.FontEngine.TryGetGlyphWithIndexValue(glyphIndex, flags, out_glyph) end

---@class UnityEngine.TextCore.LowLevel.FontEngineUtilities : System.ValueType
UnityEngine.TextCore.LowLevel.FontEngineUtilities = {}
---@alias CS.UnityEngine.TextCore.LowLevel.FontEngineUtilities UnityEngine.TextCore.LowLevel.FontEngineUtilities
CS.UnityEngine.TextCore.LowLevel.FontEngineUtilities = UnityEngine.TextCore.LowLevel.FontEngineUtilities


---@class UnityEngine.TextCore.LowLevel.OTL_Table : System.ValueType
---@field scripts UnityEngine.TextCore.LowLevel.OTL_Script[]
---@field features UnityEngine.TextCore.LowLevel.OTL_Feature[]
---@field lookups UnityEngine.TextCore.LowLevel.OTL_Lookup[]
UnityEngine.TextCore.LowLevel.OTL_Table = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OTL_Table UnityEngine.TextCore.LowLevel.OTL_Table
CS.UnityEngine.TextCore.LowLevel.OTL_Table = UnityEngine.TextCore.LowLevel.OTL_Table


---@class UnityEngine.TextCore.LowLevel.OTL_Script : System.ValueType
---@field tag string
---@field languages UnityEngine.TextCore.LowLevel.OTL_Language[]
UnityEngine.TextCore.LowLevel.OTL_Script = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OTL_Script UnityEngine.TextCore.LowLevel.OTL_Script
CS.UnityEngine.TextCore.LowLevel.OTL_Script = UnityEngine.TextCore.LowLevel.OTL_Script


---@class UnityEngine.TextCore.LowLevel.OTL_Language : System.ValueType
---@field tag string
---@field featureIndexes System.UInt32[]
UnityEngine.TextCore.LowLevel.OTL_Language = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OTL_Language UnityEngine.TextCore.LowLevel.OTL_Language
CS.UnityEngine.TextCore.LowLevel.OTL_Language = UnityEngine.TextCore.LowLevel.OTL_Language


---@class UnityEngine.TextCore.LowLevel.OTL_Feature : System.ValueType
---@field tag string
---@field lookupIndexes System.UInt32[]
UnityEngine.TextCore.LowLevel.OTL_Feature = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OTL_Feature UnityEngine.TextCore.LowLevel.OTL_Feature
CS.UnityEngine.TextCore.LowLevel.OTL_Feature = UnityEngine.TextCore.LowLevel.OTL_Feature


---@class UnityEngine.TextCore.LowLevel.OTL_Lookup : System.ValueType
---@field lookupType number
---@field lookupFlag number
---@field markFilteringSet number
UnityEngine.TextCore.LowLevel.OTL_Lookup = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OTL_Lookup UnityEngine.TextCore.LowLevel.OTL_Lookup
CS.UnityEngine.TextCore.LowLevel.OTL_Lookup = UnityEngine.TextCore.LowLevel.OTL_Lookup


---@class UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct : System.ValueType
---@field index number
---@field metrics UnityEngine.TextCore.GlyphMetrics
---@field glyphRect UnityEngine.TextCore.GlyphRect
---@field scale number
---@field atlasIndex number
---@field classDefinitionType UnityEngine.TextCore.GlyphClassDefinitionType
UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct = {}
---@alias CS.UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct
CS.UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct = UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct

---@overload fun(glyph: UnityEngine.TextCore.Glyph) : UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct
---@overload fun(index: number, metrics: UnityEngine.TextCore.GlyphMetrics, glyphRect: UnityEngine.TextCore.GlyphRect, scale: number, atlasIndex: number) : UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct
---@param index number
---@param metrics UnityEngine.TextCore.GlyphMetrics
---@param glyphRect UnityEngine.TextCore.GlyphRect
---@param scale number
---@param atlasIndex number
---@param classDefinitionType UnityEngine.TextCore.GlyphClassDefinitionType
---@return UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct
function UnityEngine.TextCore.LowLevel.GlyphMarshallingStruct.New(index, metrics, glyphRect, scale, atlasIndex, classDefinitionType) end

---@class UnityEngine.TextCore.LowLevel.OTL_TableType
---@field BASE UnityEngine.TextCore.LowLevel.OTL_TableType
---@field GDEF UnityEngine.TextCore.LowLevel.OTL_TableType
---@field GPOS UnityEngine.TextCore.LowLevel.OTL_TableType
---@field GSUB UnityEngine.TextCore.LowLevel.OTL_TableType
---@field JSTF UnityEngine.TextCore.LowLevel.OTL_TableType
---@field MATH UnityEngine.TextCore.LowLevel.OTL_TableType
UnityEngine.TextCore.LowLevel.OTL_TableType = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OTL_TableType UnityEngine.TextCore.LowLevel.OTL_TableType
CS.UnityEngine.TextCore.LowLevel.OTL_TableType = UnityEngine.TextCore.LowLevel.OTL_TableType


---@class UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Single_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Multiple_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Alternate_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Ligature_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Contextual_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Chaining_Contextual_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Extension_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Reverse_Chaining_Contextual_Single_Substitution UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Single_Adjustment UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Pair_Adjustment UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Cursive_Attachment UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Mark_to_Base_Attachment UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Mark_to_Ligature_Attachment UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Mark_to_Mark_Attachment UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Contextual_Positioning UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Chaining_Contextual_Positioning UnityEngine.TextCore.LowLevel.OTL_LookupType
---@field Extension_Positioning UnityEngine.TextCore.LowLevel.OTL_LookupType
UnityEngine.TextCore.LowLevel.OTL_LookupType = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OTL_LookupType UnityEngine.TextCore.LowLevel.OTL_LookupType
CS.UnityEngine.TextCore.LowLevel.OTL_LookupType = UnityEngine.TextCore.LowLevel.OTL_LookupType


---@class UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags
---@field None UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags
---@field IgnoreLigatures UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags
---@field IgnoreSpacingAdjustments UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags
UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags = {}
---@alias CS.UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags
CS.UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags = UnityEngine.TextCore.LowLevel.FontFeatureLookupFlags


---@class UnityEngine.TextCore.LowLevel.OpenTypeLayoutTable : System.ValueType
---@field scripts System.Collections.Generic.List
---@field features System.Collections.Generic.List
---@field lookups System.Collections.Generic.List
UnityEngine.TextCore.LowLevel.OpenTypeLayoutTable = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutTable UnityEngine.TextCore.LowLevel.OpenTypeLayoutTable
CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutTable = UnityEngine.TextCore.LowLevel.OpenTypeLayoutTable


---@class UnityEngine.TextCore.LowLevel.OpenTypeLayoutScript : System.ValueType
---@field tag string
---@field languages System.Collections.Generic.List
UnityEngine.TextCore.LowLevel.OpenTypeLayoutScript = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutScript UnityEngine.TextCore.LowLevel.OpenTypeLayoutScript
CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutScript = UnityEngine.TextCore.LowLevel.OpenTypeLayoutScript


---@class UnityEngine.TextCore.LowLevel.OpenTypeLayoutLanguage : System.ValueType
---@field tag string
---@field featureIndexes System.UInt32[]
UnityEngine.TextCore.LowLevel.OpenTypeLayoutLanguage = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutLanguage UnityEngine.TextCore.LowLevel.OpenTypeLayoutLanguage
CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutLanguage = UnityEngine.TextCore.LowLevel.OpenTypeLayoutLanguage


---@class UnityEngine.TextCore.LowLevel.OpenTypeLayoutFeature : System.ValueType
---@field tag string
---@field lookupIndexes System.UInt32[]
UnityEngine.TextCore.LowLevel.OpenTypeLayoutFeature = {}
---@alias CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutFeature UnityEngine.TextCore.LowLevel.OpenTypeLayoutFeature
CS.UnityEngine.TextCore.LowLevel.OpenTypeLayoutFeature = UnityEngine.TextCore.LowLevel.OpenTypeLayoutFeature
