---@meta

---@return UnityEngine.UIElements.StyleSheets.StyleValidator
function UnityEngine.UIElements.StyleSheets.StyleValidator.New() end
---@param name string
---@param value string
---@return UnityEngine.UIElements.StyleSheets.StyleValidationResult
function UnityEngine.UIElements.StyleSheets.StyleValidator:ValidateProperty(name, value) end

---@class UnityEngine.UIElements.StyleSheets.Syntax.Expression : System.Object
---@field type UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
---@field multiplier UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier
---@field dataType UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field combinator UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
---@field subExpressions UnityEngine.UIElements.StyleSheets.Syntax.Expression[]
---@field keyword string
UnityEngine.UIElements.StyleSheets.Syntax.Expression = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.Expression UnityEngine.UIElements.StyleSheets.Syntax.Expression
CS.UnityEngine.UIElements.StyleSheets.Syntax.Expression = UnityEngine.UIElements.StyleSheets.Syntax.Expression

---@param type UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
---@return UnityEngine.UIElements.StyleSheets.Syntax.Expression
function UnityEngine.UIElements.StyleSheets.Syntax.Expression.New(type) end

---@class UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
---@field Unknown UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
---@field Data UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
---@field Keyword UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
---@field Combinator UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType
CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType = UnityEngine.UIElements.StyleSheets.Syntax.ExpressionType


---@class UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field None UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Number UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Integer UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Length UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Percentage UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Color UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Resource UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Url UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Time UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field Angle UnityEngine.UIElements.StyleSheets.Syntax.DataType
---@field CustomIdent UnityEngine.UIElements.StyleSheets.Syntax.DataType
UnityEngine.UIElements.StyleSheets.Syntax.DataType = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.DataType UnityEngine.UIElements.StyleSheets.Syntax.DataType
CS.UnityEngine.UIElements.StyleSheets.Syntax.DataType = UnityEngine.UIElements.StyleSheets.Syntax.DataType


---@class UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
---@field None UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
---@field Or UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
---@field OrOr UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
---@field AndAnd UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
---@field Juxtaposition UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
---@field Group UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator
CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator = UnityEngine.UIElements.StyleSheets.Syntax.ExpressionCombinator


---@class UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@field None UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@field ZeroOrMore UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@field OneOrMore UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@field ZeroOrOne UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@field Ranges UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@field OneOrMoreComma UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@field GroupAtLeastOne UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType = UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType


---@class UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier : System.ValueType
---@field Infinity number
---@field min number
---@field max number
---@field type UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier
CS.UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier = UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier

---@param type UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplierType
---@return UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier
function UnityEngine.UIElements.StyleSheets.Syntax.ExpressionMultiplier.New(type) end

---@class UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser : System.Object
UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser
CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser = UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser

---@return UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser
function UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser.New() end
---@param syntax string
---@return UnityEngine.UIElements.StyleSheets.Syntax.Expression
function UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxParser:Parse(syntax) end

---@class UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field Unknown UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field String UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field Number UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field Space UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field SingleBar UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field DoubleBar UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field DoubleAmpersand UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field Comma UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field SingleQuote UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field Asterisk UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field Plus UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field QuestionMark UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field HashMark UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field ExclamationPoint UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field OpenBracket UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field CloseBracket UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field OpenBrace UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field CloseBrace UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field LessThan UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field GreaterThan UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field End UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType = UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType


---@class UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken : System.ValueType
---@field type UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@field text string
---@field number number
UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken
CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken = UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken

---@overload fun(t: UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType) : UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken
---@overload fun(type: UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType, text: string) : UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken
---@param type UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenType
---@param number number
---@return UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken
function UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken.New(type, number) end

---@class UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer : System.Object
---@field current UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken
UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer
CS.UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer = UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer

---@return UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer
function UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer.New() end
---@return UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken
function UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer:MoveNext() end
---@return UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxToken
function UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer:PeekNext() end
---@param syntax string
function UnityEngine.UIElements.StyleSheets.Syntax.StyleSyntaxTokenizer:Tokenize(syntax) end

---@class UnityEngine.UIElements.Experimental.Easing : System.Object
UnityEngine.UIElements.Experimental.Easing = {}
---@alias CS.UnityEngine.UIElements.Experimental.Easing UnityEngine.UIElements.Experimental.Easing
CS.UnityEngine.UIElements.Experimental.Easing = UnityEngine.UIElements.Experimental.Easing

---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.Step(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.Linear(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InSine(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutSine(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutSine(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InQuad(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutQuad(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutQuad(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InCubic(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutCubic(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutCubic(t) end
---@param t number
---@param power number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InPower(t, power) end
---@param t number
---@param power number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutPower(t, power) end
---@param t number
---@param power number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutPower(t, power) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InBounce(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutBounce(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutBounce(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InElastic(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutElastic(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutElastic(t) end
---@overload fun(t: number) : number
---@param t number
---@param s number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InBack(t, s) end
---@overload fun(t: number) : number
---@param t number
---@param s number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutBack(t, s) end
---@overload fun(t: number) : number
---@param t number
---@param s number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutBack(t, s) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InCirc(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.OutCirc(t) end
---@param t number
---@return number
function UnityEngine.UIElements.Experimental.Easing.InOutCirc(t) end

---@class UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent : UnityEngine.UIElements.PointerEventBase
---@field linkID string
---@field linkText string
UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent = {}
---@alias CS.UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent
CS.UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent = UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent

---@return UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent.New() end
---@param evt UnityEngine.UIElements.IPointerEvent
---@param linkID string
---@param linkText string
---@return UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerOverLinkTagEvent.GetPooled(evt, linkID, linkText) end

---@class UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent : UnityEngine.UIElements.PointerEventBase
---@field linkID string
---@field linkText string
UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent = {}
---@alias CS.UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent
CS.UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent = UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent

---@return UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent.New() end
---@param evt UnityEngine.UIElements.IPointerEvent
---@param linkID string
---@param linkText string
---@return UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerMoveLinkTagEvent.GetPooled(evt, linkID, linkText) end

---@class UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent = {}
---@alias CS.UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent
CS.UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent = UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent

---@return UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent.New() end
---@param evt UnityEngine.UIElements.IPointerEvent
---@param linkID string
---@return UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerOutLinkTagEvent.GetPooled(evt, linkID) end

---@class UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent : UnityEngine.UIElements.PointerEventBase
---@field linkID string
---@field linkText string
UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent = {}
---@alias CS.UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent
CS.UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent = UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent

---@return UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent.New() end
---@param evt UnityEngine.UIElements.IPointerEvent
---@param linkID string
---@param linkText string
---@return UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerDownLinkTagEvent.GetPooled(evt, linkID, linkText) end

---@class UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent : UnityEngine.UIElements.PointerEventBase
---@field linkID string
---@field linkText string
UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent = {}
---@alias CS.UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent
CS.UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent = UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent

---@return UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent.New() end
---@param evt UnityEngine.UIElements.IPointerEvent
---@param linkID string
---@param linkText string
---@return UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent
function UnityEngine.UIElements.Experimental.PointerUpLinkTagEvent.GetPooled(evt, linkID, linkText) end

---@class UnityEngine.UIElements.Experimental.StyleValues : System.ValueType
---@field top number
---@field left number
---@field width number
---@field height number
---@field right number
---@field bottom number
---@field color UnityEngine.Color
---@field backgroundColor UnityEngine.Color
---@field unityBackgroundImageTintColor UnityEngine.Color
---@field borderColor UnityEngine.Color
---@field marginLeft number
---@field marginTop number
---@field marginRight number
---@field marginBottom number
---@field paddingLeft number
---@field paddingTop number
---@field paddingRight number
---@field paddingBottom number
---@field borderLeftWidth number
---@field borderRightWidth number
---@field borderTopWidth number
---@field borderBottomWidth number
---@field borderTopLeftRadius number
---@field borderTopRightRadius number
---@field borderBottomLeftRadius number
---@field borderBottomRightRadius number
---@field opacity number
---@field flexGrow number
---@field flexShrink number
UnityEngine.UIElements.Experimental.StyleValues = {}
---@alias CS.UnityEngine.UIElements.Experimental.StyleValues UnityEngine.UIElements.Experimental.StyleValues
CS.UnityEngine.UIElements.Experimental.StyleValues = UnityEngine.UIElements.Experimental.StyleValues


---@class UnityEngine.UIElements.Experimental.ITransitionAnimations
UnityEngine.UIElements.Experimental.ITransitionAnimations = {}
---@alias CS.UnityEngine.UIElements.Experimental.ITransitionAnimations UnityEngine.UIElements.Experimental.ITransitionAnimations
CS.UnityEngine.UIElements.Experimental.ITransitionAnimations = UnityEngine.UIElements.Experimental.ITransitionAnimations

---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, from: number, to: number, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, from: UnityEngine.Rect, to: UnityEngine.Rect, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, from: UnityEngine.Color, to: UnityEngine.Color, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, from: UnityEngine.Vector3, to: UnityEngine.Vector3, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, from: UnityEngine.Vector2, to: UnityEngine.Vector2, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, from: UnityEngine.Quaternion, to: UnityEngine.Quaternion, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, from: UnityEngine.UIElements.Experimental.StyleValues, to: UnityEngine.UIElements.Experimental.StyleValues, durationMs: number) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, to: UnityEngine.UIElements.Experimental.StyleValues, durationMs: number) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, fromValueGetter: System.Func, to: number, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, fromValueGetter: System.Func, to: UnityEngine.Rect, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, fromValueGetter: System.Func, to: UnityEngine.Color, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, fromValueGetter: System.Func, to: UnityEngine.Vector3, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@overload fun(self: UnityEngine.UIElements.Experimental.ITransitionAnimations, fromValueGetter: System.Func, to: UnityEngine.Vector2, durationMs: number, onValueChanged: System.Action) : UnityEngine.UIElements.Experimental.ValueAnimation
---@param fromValueGetter System.Func
---@param to UnityEngine.Quaternion
---@param durationMs number
---@param onValueChanged System.Action
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ITransitionAnimations:Start(fromValueGetter, to, durationMs, onValueChanged) end
---@param to UnityEngine.Rect
---@param durationMs number
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ITransitionAnimations:Layout(to, durationMs) end
---@param to UnityEngine.Vector2
---@param durationMs number
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ITransitionAnimations:TopLeft(to, durationMs) end
---@param to UnityEngine.Vector2
---@param durationMs number
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ITransitionAnimations:Size(to, durationMs) end
---@param to number
---@param duration number
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ITransitionAnimations:Scale(to, duration) end
---@param to UnityEngine.Vector3
---@param duration number
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ITransitionAnimations:Position(to, duration) end
---@param to UnityEngine.Quaternion
---@param duration number
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ITransitionAnimations:Rotation(to, duration) end

---@class UnityEngine.UIElements.Experimental.Lerp : System.Object
UnityEngine.UIElements.Experimental.Lerp = {}
---@alias CS.UnityEngine.UIElements.Experimental.Lerp UnityEngine.UIElements.Experimental.Lerp
CS.UnityEngine.UIElements.Experimental.Lerp = UnityEngine.UIElements.Experimental.Lerp

---@overload fun(start: number, _end: number, ratio: number) : number
---@overload fun(start: number, _end: number, ratio: number) : number
---@overload fun(r1: UnityEngine.Rect, r2: UnityEngine.Rect, ratio: number) : UnityEngine.Rect
---@overload fun(start: UnityEngine.Color, _end: UnityEngine.Color, ratio: number) : UnityEngine.Color
---@overload fun(start: UnityEngine.Vector2, _end: UnityEngine.Vector2, ratio: number) : UnityEngine.Vector2
---@overload fun(start: UnityEngine.Vector3, _end: UnityEngine.Vector3, ratio: number) : UnityEngine.Vector3
---@param start UnityEngine.Quaternion
---@param _end UnityEngine.Quaternion
---@param ratio number
---@return UnityEngine.Quaternion
function UnityEngine.UIElements.Experimental.Lerp.Interpolate(start, _end, ratio) end

---@class UnityEngine.UIElements.Experimental.IValueAnimationUpdate
UnityEngine.UIElements.Experimental.IValueAnimationUpdate = {}
---@alias CS.UnityEngine.UIElements.Experimental.IValueAnimationUpdate UnityEngine.UIElements.Experimental.IValueAnimationUpdate
CS.UnityEngine.UIElements.Experimental.IValueAnimationUpdate = UnityEngine.UIElements.Experimental.IValueAnimationUpdate

---@param currentTimeMs number
function UnityEngine.UIElements.Experimental.IValueAnimationUpdate:Tick(currentTimeMs) end

---@class UnityEngine.UIElements.Experimental.IValueAnimation
---@field isRunning boolean
---@field durationMs number
UnityEngine.UIElements.Experimental.IValueAnimation = {}
---@alias CS.UnityEngine.UIElements.Experimental.IValueAnimation UnityEngine.UIElements.Experimental.IValueAnimation
CS.UnityEngine.UIElements.Experimental.IValueAnimation = UnityEngine.UIElements.Experimental.IValueAnimation

function UnityEngine.UIElements.Experimental.IValueAnimation:Start() end
function UnityEngine.UIElements.Experimental.IValueAnimation:Stop() end
function UnityEngine.UIElements.Experimental.IValueAnimation:Recycle() end

---@class UnityEngine.UIElements.Experimental.ValueAnimation : System.Object
---@field durationMs number
---@field easingCurve System.Func
---@field isRunning boolean
---@field onAnimationCompleted System.Action
---@field autoRecycle boolean
---@field valueUpdated System.Action[UnityEngine.UIElements.VisualElement,T]
---@field initialValue System.Func[UnityEngine.UIElements.VisualElement,T]
---@field interpolator System.Func[T,T,System.Single,T]
---@field from T
---@field to T
UnityEngine.UIElements.Experimental.ValueAnimation = {}
---@alias CS.UnityEngine.UIElements.Experimental.ValueAnimation UnityEngine.UIElements.Experimental.ValueAnimation
CS.UnityEngine.UIElements.Experimental.ValueAnimation = UnityEngine.UIElements.Experimental.ValueAnimation

---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ValueAnimation.New() end
---@param e UnityEngine.UIElements.VisualElement
---@param interpolator System.Func[T,T,System.Single,T]
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ValueAnimation.Create(e, interpolator) end
function UnityEngine.UIElements.Experimental.ValueAnimation:Start() end
function UnityEngine.UIElements.Experimental.ValueAnimation:Stop() end
function UnityEngine.UIElements.Experimental.ValueAnimation:Recycle() end
---@param easing System.Func
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ValueAnimation:Ease(easing) end
---@param callback System.Action
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ValueAnimation:OnCompleted(callback) end
---@return UnityEngine.UIElements.Experimental.ValueAnimation
function UnityEngine.UIElements.Experimental.ValueAnimation:KeepAlive() end

---@class UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview : UnityEngine.UIElements.VisualElement
---@field ussClassName string
UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview
CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview = UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview

---@return UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMovePreview.New() end

---@class UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field visualUssClassName string
UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview
CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview = UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview

---@return UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumnMoveLocationPreview.New() end

---@class UnityEngine.UIElements.Internal.ColumnMover : UnityEngine.UIElements.PointerManipulator
---@field columnLayout UnityEngine.UIElements.ColumnLayout
---@field active boolean
---@field moving boolean
UnityEngine.UIElements.Internal.ColumnMover = {}
---@alias CS.UnityEngine.UIElements.Internal.ColumnMover UnityEngine.UIElements.Internal.ColumnMover
CS.UnityEngine.UIElements.Internal.ColumnMover = UnityEngine.UIElements.Internal.ColumnMover

---@return UnityEngine.UIElements.Internal.ColumnMover
function UnityEngine.UIElements.Internal.ColumnMover.New() end

---@class UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field visualUssClassName string
UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview
CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview = UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview

---@return UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizePreview.New() end

---@class UnityEngine.UIElements.Internal.ColumnResizer : UnityEngine.UIElements.PointerManipulator
---@field columnLayout UnityEngine.UIElements.ColumnLayout
---@field preview boolean
UnityEngine.UIElements.Internal.ColumnResizer = {}
---@alias CS.UnityEngine.UIElements.Internal.ColumnResizer UnityEngine.UIElements.Internal.ColumnResizer
CS.UnityEngine.UIElements.Internal.ColumnResizer = UnityEngine.UIElements.Internal.ColumnResizer

---@param column UnityEngine.UIElements.Column
---@return UnityEngine.UIElements.Internal.ColumnResizer
function UnityEngine.UIElements.Internal.ColumnResizer.New(column) end

---@class UnityEngine.UIElements.Internal.MultiColumnCollectionHeader : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field columnContainerUssClassName string
---@field handleContainerUssClassName string
---@field reorderableUssClassName string
---@field columnDataMap System.Collections.Generic.Dictionary
---@field columnLayout UnityEngine.UIElements.ColumnLayout
---@field columnContainer UnityEngine.UIElements.VisualElement
---@field resizeHandleContainer UnityEngine.UIElements.VisualElement
---@field sortedColumns System.Collections.Generic.IEnumerable
---@field sortDescriptions UnityEngine.UIElements.SortColumnDescriptions
---@field columns UnityEngine.UIElements.Columns
---@field sortingEnabled boolean
UnityEngine.UIElements.Internal.MultiColumnCollectionHeader = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader UnityEngine.UIElements.Internal.MultiColumnCollectionHeader
CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader = UnityEngine.UIElements.Internal.MultiColumnCollectionHeader

---@overload fun() : UnityEngine.UIElements.Internal.MultiColumnCollectionHeader
---@param columns UnityEngine.UIElements.Columns
---@param sortDescriptions UnityEngine.UIElements.SortColumnDescriptions
---@param sortedColumns System.Collections.Generic.List
---@return UnityEngine.UIElements.Internal.MultiColumnCollectionHeader
function UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.New(columns, sortDescriptions, sortedColumns) end
---@param horizontalOffset number
function UnityEngine.UIElements.Internal.MultiColumnCollectionHeader:ScrollHorizontally(horizontalOffset) end
function UnityEngine.UIElements.Internal.MultiColumnCollectionHeader:Dispose() end

---@class UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState : System.Object
UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState
CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState = UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState

---@return UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState
function UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState.New() end

---@class UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState.ColumnState : System.ValueType
---@field index number
---@field name string
---@field actualWidth number
---@field width UnityEngine.UIElements.Length
---@field visible boolean
UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState.ColumnState = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState.ColumnState UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState.ColumnState
CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState.ColumnState = UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ViewState.ColumnState


---@class UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData : System.Object
---@field control UnityEngine.UIElements.Internal.MultiColumnHeaderColumn
---@field resizeHandle UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle
UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData
CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData = UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData

---@return UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData
function UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.ColumnData.New() end

---@class UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState : System.ValueType
---@field columnDesc UnityEngine.UIElements.SortColumnDescription
---@field direction UnityEngine.UIElements.SortDirection
UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState
CS.UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState = UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState

---@param desc UnityEngine.UIElements.SortColumnDescription
---@param dir UnityEngine.UIElements.SortDirection
---@return UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState
function UnityEngine.UIElements.Internal.MultiColumnCollectionHeader.SortedColumnState.New(desc, dir) end

---@class UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field arrowUssClassName string
---@field indexLabelUssClassName string
---@field sortOrderLabel string
UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator
CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator = UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator

---@return UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumnSortIndicator.New() end

---@class UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon : UnityEngine.UIElements.Image
---@field ussClassName string
---@field isImageInline boolean
UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon
CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon = UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon

---@return UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon.New() end
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumnIcon:UpdateClassList() end

---@class UnityEngine.UIElements.Internal.MultiColumnHeaderColumn : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field sortableUssClassName string
---@field sortedAscendingUssClassName string
---@field sortedDescendingUssClassName string
---@field movingUssClassName string
---@field contentContainerUssClassName string
---@field contentUssClassName string
---@field defaultContentUssClassName string
---@field hasIconUssClassName string
---@field hasTitleUssClassName string
---@field titleUssClassName string
---@field iconElementName string
---@field titleElementName string
---@field clickable UnityEngine.UIElements.Clickable
---@field mover UnityEngine.UIElements.Internal.ColumnMover
---@field sortOrderLabel string
---@field column UnityEngine.UIElements.Column
---@field content UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.Internal.MultiColumnHeaderColumn = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumn UnityEngine.UIElements.Internal.MultiColumnHeaderColumn
CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumn = UnityEngine.UIElements.Internal.MultiColumnHeaderColumn

---@overload fun() : UnityEngine.UIElements.Internal.MultiColumnHeaderColumn
---@param column UnityEngine.UIElements.Column
---@return UnityEngine.UIElements.Internal.MultiColumnHeaderColumn
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumn.New(column) end
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumn:Dispose() end

---@class UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field dragAreaUssClassName string
---@field dragArea UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle = {}
---@alias CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle
CS.UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle = UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle

---@return UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle
function UnityEngine.UIElements.Internal.MultiColumnHeaderColumnResizeHandle.New() end

---@class UnityEngine.UIElements.Collections.DictionaryExtensions : System.Object
UnityEngine.UIElements.Collections.DictionaryExtensions = {}
---@alias CS.UnityEngine.UIElements.Collections.DictionaryExtensions UnityEngine.UIElements.Collections.DictionaryExtensions
CS.UnityEngine.UIElements.Collections.DictionaryExtensions = UnityEngine.UIElements.Collections.DictionaryExtensions


---@class UnityEngine.RemoteSettings : System.Object
UnityEngine.RemoteSettings = {}
---@alias CS.UnityEngine.RemoteSettings UnityEngine.RemoteSettings
CS.UnityEngine.RemoteSettings = UnityEngine.RemoteSettings

function UnityEngine.RemoteSettings.ForceUpdate() end
---@return boolean
function UnityEngine.RemoteSettings.WasLastUpdatedFromServer() end
---@overload fun(key: string) : number
---@param key string
---@param defaultValue number
---@return number
function UnityEngine.RemoteSettings.GetInt(key, defaultValue) end
---@overload fun(key: string) : number
---@param key string
---@param defaultValue number
---@return number
function UnityEngine.RemoteSettings.GetLong(key, defaultValue) end
---@overload fun(key: string) : number
---@param key string
---@param defaultValue number
---@return number
function UnityEngine.RemoteSettings.GetFloat(key, defaultValue) end
---@overload fun(key: string) : string
---@param key string
---@param defaultValue string
---@return string
function UnityEngine.RemoteSettings.GetString(key, defaultValue) end
---@overload fun(key: string) : boolean
---@param key string
---@param defaultValue boolean
---@return boolean
function UnityEngine.RemoteSettings.GetBool(key, defaultValue) end
---@param key string
---@return boolean
function UnityEngine.RemoteSettings.HasKey(key) end
---@return number
function UnityEngine.RemoteSettings.GetCount() end
---@return System.String[]
function UnityEngine.RemoteSettings.GetKeys() end
---@overload fun(type: System.Type, key: string) : System.Object
---@param key string
---@param defaultValue System.Object
---@return System.Object
function UnityEngine.RemoteSettings.GetObject(key, defaultValue) end
---@param key string
---@return System.Collections.Generic.IDictionary
function UnityEngine.RemoteSettings.GetDictionary(key) end

---@class UnityEngine.RemoteSettings.UpdatedEventHandler : System.MulticastDelegate
UnityEngine.RemoteSettings.UpdatedEventHandler = {}
---@alias CS.UnityEngine.RemoteSettings.UpdatedEventHandler UnityEngine.RemoteSettings.UpdatedEventHandler
CS.UnityEngine.RemoteSettings.UpdatedEventHandler = UnityEngine.RemoteSettings.UpdatedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.RemoteSettings.UpdatedEventHandler
function UnityEngine.RemoteSettings.UpdatedEventHandler.New(object, method) end
function UnityEngine.RemoteSettings.UpdatedEventHandler:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.RemoteSettings.UpdatedEventHandler:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.RemoteSettings.UpdatedEventHandler:EndInvoke(result) end

---@class UnityEngine.RemoteConfigSettings : System.Object
UnityEngine.RemoteConfigSettings = {}
---@alias CS.UnityEngine.RemoteConfigSettings UnityEngine.RemoteConfigSettings
CS.UnityEngine.RemoteConfigSettings = UnityEngine.RemoteConfigSettings

---@param configKey string
---@return UnityEngine.RemoteConfigSettings
function UnityEngine.RemoteConfigSettings.New(configKey) end
---@param name string
---@param param System.Object
---@param ver number
---@param prefix string
---@return boolean
function UnityEngine.RemoteConfigSettings.QueueConfig(name, param, ver, prefix) end
---@return boolean
function UnityEngine.RemoteConfigSettings.SendDeviceInfoInConfigRequest() end
---@param tag string
function UnityEngine.RemoteConfigSettings.AddSessionTag(tag) end
function UnityEngine.RemoteConfigSettings:Dispose() end
function UnityEngine.RemoteConfigSettings:ForceUpdate() end
---@return boolean
function UnityEngine.RemoteConfigSettings:WasLastUpdatedFromServer() end
---@overload fun(self: UnityEngine.RemoteConfigSettings, key: string) : number
---@param key string
---@param defaultValue number
---@return number
function UnityEngine.RemoteConfigSettings:GetInt(key, defaultValue) end
---@overload fun(self: UnityEngine.RemoteConfigSettings, key: string) : number
---@param key string
---@param defaultValue number
---@return number
function UnityEngine.RemoteConfigSettings:GetLong(key, defaultValue) end
---@overload fun(self: UnityEngine.RemoteConfigSettings, key: string) : number
---@param key string
---@param defaultValue number
---@return number
function UnityEngine.RemoteConfigSettings:GetFloat(key, defaultValue) end
---@overload fun(self: UnityEngine.RemoteConfigSettings, key: string) : string
---@param key string
---@param defaultValue string
---@return string
function UnityEngine.RemoteConfigSettings:GetString(key, defaultValue) end
---@overload fun(self: UnityEngine.RemoteConfigSettings, key: string) : boolean
---@param key string
---@param defaultValue boolean
---@return boolean
function UnityEngine.RemoteConfigSettings:GetBool(key, defaultValue) end
---@param key string
---@return boolean
function UnityEngine.RemoteConfigSettings:HasKey(key) end
---@return number
function UnityEngine.RemoteConfigSettings:GetCount() end
---@return System.String[]
function UnityEngine.RemoteConfigSettings:GetKeys() end
---@overload fun(self: UnityEngine.RemoteConfigSettings, type: System.Type, key: string) : System.Object
---@param key string
---@param defaultValue System.Object
---@return System.Object
function UnityEngine.RemoteConfigSettings:GetObject(key, defaultValue) end
---@param key string
---@return System.Collections.Generic.IDictionary
function UnityEngine.RemoteConfigSettings:GetDictionary(key) end

---@class UnityEngine.RemoteConfigSettingsHelper : System.Object
UnityEngine.RemoteConfigSettingsHelper = {}
---@alias CS.UnityEngine.RemoteConfigSettingsHelper UnityEngine.RemoteConfigSettingsHelper
CS.UnityEngine.RemoteConfigSettingsHelper = UnityEngine.RemoteConfigSettingsHelper

---@param m System.IntPtr
---@param key string
---@return System.Collections.Generic.IDictionary
function UnityEngine.RemoteConfigSettingsHelper.GetDictionary(m, key) end

---@class UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kUnknown UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kIntVal UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kInt64Val UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kUInt64Val UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kDoubleVal UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kBoolVal UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kStringVal UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kArrayVal UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kMixedArrayVal UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kMapVal UnityEngine.RemoteConfigSettingsHelper.Tag
---@field kMaxTags UnityEngine.RemoteConfigSettingsHelper.Tag
UnityEngine.RemoteConfigSettingsHelper.Tag = {}
---@alias CS.UnityEngine.RemoteConfigSettingsHelper.Tag UnityEngine.RemoteConfigSettingsHelper.Tag
CS.UnityEngine.RemoteConfigSettingsHelper.Tag = UnityEngine.RemoteConfigSettingsHelper.Tag


---@class UnityEngine.Analytics.ContinuousEvent : System.Object
UnityEngine.Analytics.ContinuousEvent = {}
---@alias CS.UnityEngine.Analytics.ContinuousEvent UnityEngine.Analytics.ContinuousEvent
CS.UnityEngine.Analytics.ContinuousEvent = UnityEngine.Analytics.ContinuousEvent

---@return UnityEngine.Analytics.ContinuousEvent
function UnityEngine.Analytics.ContinuousEvent.New() end
---@param customEventName string
---@param metricName string
---@param interval number
---@param period number
---@param enabled boolean
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.ContinuousEvent.ConfigureCustomEvent(customEventName, metricName, interval, period, enabled) end
---@param eventName string
---@param metricName string
---@param interval number
---@param period number
---@param enabled boolean
---@param ver number
---@param prefix string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.ContinuousEvent.ConfigureEvent(eventName, metricName, interval, period, enabled, ver, prefix) end

---@class UnityEngine.Analytics.AnalyticsSessionState
---@field kSessionStopped UnityEngine.Analytics.AnalyticsSessionState
---@field kSessionStarted UnityEngine.Analytics.AnalyticsSessionState
---@field kSessionPaused UnityEngine.Analytics.AnalyticsSessionState
---@field kSessionResumed UnityEngine.Analytics.AnalyticsSessionState
UnityEngine.Analytics.AnalyticsSessionState = {}
---@alias CS.UnityEngine.Analytics.AnalyticsSessionState UnityEngine.Analytics.AnalyticsSessionState
CS.UnityEngine.Analytics.AnalyticsSessionState = UnityEngine.Analytics.AnalyticsSessionState


---@class UnityEngine.Analytics.AnalyticsSessionInfo : System.Object
---@field sessionState UnityEngine.Analytics.AnalyticsSessionState
---@field sessionId number
---@field sessionCount number
---@field sessionElapsedTime number
---@field sessionFirstRun boolean
---@field userId string
---@field customUserId string
---@field customDeviceId string
---@field identityToken string
UnityEngine.Analytics.AnalyticsSessionInfo = {}
---@alias CS.UnityEngine.Analytics.AnalyticsSessionInfo UnityEngine.Analytics.AnalyticsSessionInfo
CS.UnityEngine.Analytics.AnalyticsSessionInfo = UnityEngine.Analytics.AnalyticsSessionInfo


---@class UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged : System.MulticastDelegate
UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged = {}
---@alias CS.UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged
CS.UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged = UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged
function UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged.New(object, method) end
---@param sessionState UnityEngine.Analytics.AnalyticsSessionState
---@param sessionId number
---@param sessionElapsedTime number
---@param sessionChanged boolean
function UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged:Invoke(sessionState, sessionId, sessionElapsedTime, sessionChanged) end
---@param sessionState UnityEngine.Analytics.AnalyticsSessionState
---@param sessionId number
---@param sessionElapsedTime number
---@param sessionChanged boolean
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged:BeginInvoke(sessionState, sessionId, sessionElapsedTime, sessionChanged, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Analytics.AnalyticsSessionInfo.SessionStateChanged:EndInvoke(result) end

---@class UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged : System.MulticastDelegate
UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged = {}
---@alias CS.UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged
CS.UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged = UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged
function UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged.New(object, method) end
---@param token string
function UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged:Invoke(token) end
---@param token string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged:BeginInvoke(token, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Analytics.AnalyticsSessionInfo.IdentityTokenChanged:EndInvoke(result) end

---@class UnityEngine.Analytics.CustomEventData : System.Object
UnityEngine.Analytics.CustomEventData = {}
---@alias CS.UnityEngine.Analytics.CustomEventData UnityEngine.Analytics.CustomEventData
CS.UnityEngine.Analytics.CustomEventData = UnityEngine.Analytics.CustomEventData

---@param name string
---@return UnityEngine.Analytics.CustomEventData
function UnityEngine.Analytics.CustomEventData.New(name) end
function UnityEngine.Analytics.CustomEventData:Dispose() end
---@param key string
---@param value string
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddString(key, value) end
---@param key string
---@param value number
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddInt32(key, value) end
---@param key string
---@param value number
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddUInt32(key, value) end
---@param key string
---@param value number
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddInt64(key, value) end
---@param key string
---@param value number
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddUInt64(key, value) end
---@param key string
---@param value boolean
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddBool(key, value) end
---@param key string
---@param value number
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddDouble(key, value) end
---@param eventData System.Collections.Generic.IDictionary
---@return boolean
function UnityEngine.Analytics.CustomEventData:AddDictionary(eventData) end

---@class UnityEngine.Analytics.Analytics : System.Object
---@field initializeOnStartup boolean
---@field playerOptedOut boolean
---@field eventUrl string
---@field dashboardUrl string
---@field configUrl string
---@field limitUserTracking boolean
---@field deviceStatsEnabled boolean
---@field enabled boolean
UnityEngine.Analytics.Analytics = {}
---@alias CS.UnityEngine.Analytics.Analytics UnityEngine.Analytics.Analytics
CS.UnityEngine.Analytics.Analytics = UnityEngine.Analytics.Analytics

---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.ResumeInitialization() end
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.FlushEvents() end
---@overload fun(productId: string, amount: System.Decimal, currency: string) : UnityEngine.Analytics.AnalyticsResult
---@overload fun(productId: string, amount: System.Decimal, currency: string, receiptPurchaseData: string, signature: string) : UnityEngine.Analytics.AnalyticsResult
---@param productId string
---@param amount System.Decimal
---@param currency string
---@param receiptPurchaseData string
---@param signature string
---@param usingIAPService boolean
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.Transaction(productId, amount, currency, receiptPurchaseData, signature, usingIAPService) end
---@overload fun(customEventName: string) : UnityEngine.Analytics.AnalyticsResult
---@overload fun(customEventName: string, position: UnityEngine.Vector3) : UnityEngine.Analytics.AnalyticsResult
---@param customEventName string
---@param eventData System.Collections.Generic.IDictionary
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.CustomEvent(customEventName, eventData) end
---@param customEventName string
---@param enabled boolean
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.EnableCustomEvent(customEventName, enabled) end
---@param customEventName string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.IsCustomEventEnabled(customEventName) end
---@overload fun(eventName: string, maxEventPerHour: number, maxItems: number, vendorKey: string, prefix: string) : UnityEngine.Analytics.AnalyticsResult
---@param eventName string
---@param maxEventPerHour number
---@param maxItems number
---@param vendorKey string
---@param ver number
---@param prefix string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.RegisterEvent(eventName, maxEventPerHour, maxItems, vendorKey, ver, prefix) end
---@param eventName string
---@param parameters System.Object
---@param ver number
---@param prefix string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.SendEvent(eventName, parameters, ver, prefix) end
---@param eventName string
---@param endPoint string
---@param ver number
---@param prefix string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.SetEventEndPoint(eventName, endPoint, ver, prefix) end
---@param eventName string
---@param eventPriority UnityEngine.Analytics.AnalyticsEventPriority
---@param ver number
---@param prefix string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.SetEventPriority(eventName, eventPriority, ver, prefix) end
---@param eventName string
---@param enabled boolean
---@param ver number
---@param prefix string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.EnableEvent(eventName, enabled, ver, prefix) end
---@param eventName string
---@param ver number
---@param prefix string
---@return UnityEngine.Analytics.AnalyticsResult
function UnityEngine.Analytics.Analytics.IsEventEnabled(eventName, ver, prefix) end

---@class UnityEngine.Analytics.Gender
---@field Male UnityEngine.Analytics.Gender
---@field Female UnityEngine.Analytics.Gender
---@field Unknown UnityEngine.Analytics.Gender
UnityEngine.Analytics.Gender = {}
---@alias CS.UnityEngine.Analytics.Gender UnityEngine.Analytics.Gender
CS.UnityEngine.Analytics.Gender = UnityEngine.Analytics.Gender


---@class UnityEngine.Analytics.AnalyticsResult
---@field Ok UnityEngine.Analytics.AnalyticsResult
---@field NotInitialized UnityEngine.Analytics.AnalyticsResult
---@field AnalyticsDisabled UnityEngine.Analytics.AnalyticsResult
---@field TooManyItems UnityEngine.Analytics.AnalyticsResult
---@field SizeLimitReached UnityEngine.Analytics.AnalyticsResult
---@field TooManyRequests UnityEngine.Analytics.AnalyticsResult
---@field InvalidData UnityEngine.Analytics.AnalyticsResult
---@field UnsupportedPlatform UnityEngine.Analytics.AnalyticsResult
UnityEngine.Analytics.AnalyticsResult = {}
---@alias CS.UnityEngine.Analytics.AnalyticsResult UnityEngine.Analytics.AnalyticsResult
CS.UnityEngine.Analytics.AnalyticsResult = UnityEngine.Analytics.AnalyticsResult


---@class UnityEngine.Analytics.AnalyticsEventPriority
---@field FlushQueueFlag UnityEngine.Analytics.AnalyticsEventPriority
---@field CacheImmediatelyFlag UnityEngine.Analytics.AnalyticsEventPriority
---@field AllowInStopModeFlag UnityEngine.Analytics.AnalyticsEventPriority
---@field SendImmediateFlag UnityEngine.Analytics.AnalyticsEventPriority
---@field NoCachingFlag UnityEngine.Analytics.AnalyticsEventPriority
---@field NoRetryFlag UnityEngine.Analytics.AnalyticsEventPriority
---@field NormalPriorityEvent UnityEngine.Analytics.AnalyticsEventPriority
---@field NormalPriorityEvent_WithCaching UnityEngine.Analytics.AnalyticsEventPriority
---@field NormalPriorityEvent_NoRetryNoCaching UnityEngine.Analytics.AnalyticsEventPriority
---@field HighPriorityEvent UnityEngine.Analytics.AnalyticsEventPriority
---@field HighPriorityEvent_InStopMode UnityEngine.Analytics.AnalyticsEventPriority
---@field HighestPriorityEvent UnityEngine.Analytics.AnalyticsEventPriority
---@field HighestPriorityEvent_NoRetryNoCaching UnityEngine.Analytics.AnalyticsEventPriority
UnityEngine.Analytics.AnalyticsEventPriority = {}
---@alias CS.UnityEngine.Analytics.AnalyticsEventPriority UnityEngine.Analytics.AnalyticsEventPriority
CS.UnityEngine.Analytics.AnalyticsEventPriority = UnityEngine.Analytics.AnalyticsEventPriority


---@class UnityEngine.Analytics.AnalyticsCommon : System.Object
---@field ugsAnalyticsEnabled boolean
UnityEngine.Analytics.AnalyticsCommon = {}
---@alias CS.UnityEngine.Analytics.AnalyticsCommon UnityEngine.Analytics.AnalyticsCommon
CS.UnityEngine.Analytics.AnalyticsCommon = UnityEngine.Analytics.AnalyticsCommon


---@class UnityEngine.Analytics.UGSAnalyticsInternalTools
UnityEngine.Analytics.UGSAnalyticsInternalTools = {}
---@alias CS.UnityEngine.Analytics.UGSAnalyticsInternalTools UnityEngine.Analytics.UGSAnalyticsInternalTools
CS.UnityEngine.Analytics.UGSAnalyticsInternalTools = UnityEngine.Analytics.UGSAnalyticsInternalTools

---@param status boolean
function UnityEngine.Analytics.UGSAnalyticsInternalTools.SetPrivacyStatus(status) end

---@class UnityEngine.Connect.UnityConnectSettings : UnityEngine.Object
---@field enabled boolean
---@field testMode boolean
---@field eventUrl string
---@field eventOldUrl string
---@field configUrl string
---@field testInitMode number
UnityEngine.Connect.UnityConnectSettings = {}
---@alias CS.UnityEngine.Connect.UnityConnectSettings UnityEngine.Connect.UnityConnectSettings
CS.UnityEngine.Connect.UnityConnectSettings = UnityEngine.Connect.UnityConnectSettings

---@return UnityEngine.Connect.UnityConnectSettings
function UnityEngine.Connect.UnityConnectSettings.New() end

---@class UnityEngine.Advertisements.UnityAdsSettings : System.Object
---@field enabled boolean
---@field initializeOnStartup boolean
---@field testMode boolean
UnityEngine.Advertisements.UnityAdsSettings = {}
---@alias CS.UnityEngine.Advertisements.UnityAdsSettings UnityEngine.Advertisements.UnityAdsSettings
CS.UnityEngine.Advertisements.UnityAdsSettings = UnityEngine.Advertisements.UnityAdsSettings

---@param platform UnityEngine.RuntimePlatform
---@return string
function UnityEngine.Advertisements.UnityAdsSettings.GetGameId(platform) end
---@param platform UnityEngine.RuntimePlatform
---@param gameId string
function UnityEngine.Advertisements.UnityAdsSettings.SetGameId(platform, gameId) end

---@class UnityEngineInternal.WebRequestUtils : System.Object
UnityEngineInternal.WebRequestUtils = {}
---@alias CS.UnityEngineInternal.WebRequestUtils UnityEngineInternal.WebRequestUtils
CS.UnityEngineInternal.WebRequestUtils = UnityEngineInternal.WebRequestUtils


---@class UnityEngine.WWWForm : System.Object
---@field headers System.Collections.Generic.Dictionary
---@field data System.Byte[]
UnityEngine.WWWForm = {}
---@alias CS.UnityEngine.WWWForm UnityEngine.WWWForm
CS.UnityEngine.WWWForm = UnityEngine.WWWForm

---@return UnityEngine.WWWForm
function UnityEngine.WWWForm.New() end
---@overload fun(self: UnityEngine.WWWForm, fieldName: string, value: string)
---@overload fun(self: UnityEngine.WWWForm, fieldName: string, value: string, e: System.Text.Encoding)
---@param fieldName string
---@param i number
function UnityEngine.WWWForm:AddField(fieldName, i) end
---@overload fun(self: UnityEngine.WWWForm, fieldName: string, contents: System.Byte[])
---@overload fun(self: UnityEngine.WWWForm, fieldName: string, contents: System.Byte[], fileName: string)
---@param fieldName string
---@param contents System.Byte[]
---@param fileName string
---@param mimeType string
function UnityEngine.WWWForm:AddBinaryData(fieldName, contents, fileName, mimeType) end

---@class UnityEngine.WWWTranscoder : System.Object
UnityEngine.WWWTranscoder = {}
---@alias CS.UnityEngine.WWWTranscoder UnityEngine.WWWTranscoder
CS.UnityEngine.WWWTranscoder = UnityEngine.WWWTranscoder

---@return UnityEngine.WWWTranscoder
function UnityEngine.WWWTranscoder.New() end
---@overload fun(toEncode: string) : string
---@overload fun(toEncode: string, e: System.Text.Encoding) : string
---@param toEncode System.Byte[]
---@return System.Byte[]
function UnityEngine.WWWTranscoder.URLEncode(toEncode) end
---@overload fun(toEncode: string) : string
---@overload fun(toEncode: string, e: System.Text.Encoding) : string
---@param toEncode System.Byte[]
---@return System.Byte[]
function UnityEngine.WWWTranscoder.DataEncode(toEncode) end
---@overload fun(toEncode: string) : string
---@overload fun(toEncode: string, e: System.Text.Encoding) : string
---@param toEncode System.Byte[]
---@return System.Byte[]
function UnityEngine.WWWTranscoder.QPEncode(toEncode) end
---@param input System.Byte[]
---@param escapeChar number
---@param space System.Byte[]
---@param forbidden System.Byte[]
---@param uppercase boolean
---@return System.Byte[]
function UnityEngine.WWWTranscoder.Encode(input, escapeChar, space, forbidden, uppercase) end
---@overload fun(toEncode: string) : string
---@overload fun(toEncode: string, e: System.Text.Encoding) : string
---@param toEncode System.Byte[]
---@return System.Byte[]
function UnityEngine.WWWTranscoder.URLDecode(toEncode) end
---@overload fun(toDecode: string) : string
---@overload fun(toDecode: string, e: System.Text.Encoding) : string
---@param toDecode System.Byte[]
---@return System.Byte[]
function UnityEngine.WWWTranscoder.DataDecode(toDecode) end
---@overload fun(toEncode: string) : string
---@overload fun(toEncode: string, e: System.Text.Encoding) : string
---@param toEncode System.Byte[]
---@return System.Byte[]
function UnityEngine.WWWTranscoder.QPDecode(toEncode) end
---@param input System.Byte[]
---@param escapeChar number
---@param space System.Byte[]
---@return System.Byte[]
function UnityEngine.WWWTranscoder.Decode(input, escapeChar, space) end
---@overload fun(s: string) : boolean
---@overload fun(s: string, e: System.Text.Encoding) : boolean
---@param input System.Byte*
---@param inputLength number
---@return boolean
function UnityEngine.WWWTranscoder.SevenBitClean(input, inputLength) end

---@class UnityEngine.Networking.CertificateHandler : System.Object
UnityEngine.Networking.CertificateHandler = {}
---@alias CS.UnityEngine.Networking.CertificateHandler UnityEngine.Networking.CertificateHandler
CS.UnityEngine.Networking.CertificateHandler = UnityEngine.Networking.CertificateHandler

function UnityEngine.Networking.CertificateHandler:Dispose() end

---@class UnityEngine.Networking.DownloadHandler : System.Object
---@field isDone boolean
---@field error string
---@field nativeData Unity.Collections.NativeArray.ReadOnly
---@field data System.Byte[]
---@field text string
UnityEngine.Networking.DownloadHandler = {}
---@alias CS.UnityEngine.Networking.DownloadHandler UnityEngine.Networking.DownloadHandler
CS.UnityEngine.Networking.DownloadHandler = UnityEngine.Networking.DownloadHandler

function UnityEngine.Networking.DownloadHandler:Dispose() end

---@class UnityEngine.Networking.DownloadHandlerBuffer : UnityEngine.Networking.DownloadHandler
UnityEngine.Networking.DownloadHandlerBuffer = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerBuffer UnityEngine.Networking.DownloadHandlerBuffer
CS.UnityEngine.Networking.DownloadHandlerBuffer = UnityEngine.Networking.DownloadHandlerBuffer

---@return UnityEngine.Networking.DownloadHandlerBuffer
function UnityEngine.Networking.DownloadHandlerBuffer.New() end
---@param www UnityEngine.Networking.UnityWebRequest
---@return string
function UnityEngine.Networking.DownloadHandlerBuffer.GetContent(www) end
function UnityEngine.Networking.DownloadHandlerBuffer:Dispose() end

---@class UnityEngine.Networking.DownloadHandlerScript : UnityEngine.Networking.DownloadHandler
UnityEngine.Networking.DownloadHandlerScript = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerScript UnityEngine.Networking.DownloadHandlerScript
CS.UnityEngine.Networking.DownloadHandlerScript = UnityEngine.Networking.DownloadHandlerScript

---@overload fun() : UnityEngine.Networking.DownloadHandlerScript
---@param preallocatedBuffer System.Byte[]
---@return UnityEngine.Networking.DownloadHandlerScript
function UnityEngine.Networking.DownloadHandlerScript.New(preallocatedBuffer) end

---@class UnityEngine.Networking.DownloadHandlerFile : UnityEngine.Networking.DownloadHandler
---@field removeFileOnAbort boolean
UnityEngine.Networking.DownloadHandlerFile = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerFile UnityEngine.Networking.DownloadHandlerFile
CS.UnityEngine.Networking.DownloadHandlerFile = UnityEngine.Networking.DownloadHandlerFile

---@overload fun(path: string) : UnityEngine.Networking.DownloadHandlerFile
---@param path string
---@param append boolean
---@return UnityEngine.Networking.DownloadHandlerFile
function UnityEngine.Networking.DownloadHandlerFile.New(path, append) end

---@class UnityEngine.Networking.IMultipartFormSection
---@field sectionName string
---@field sectionData System.Byte[]
---@field fileName string
---@field contentType string
UnityEngine.Networking.IMultipartFormSection = {}
---@alias CS.UnityEngine.Networking.IMultipartFormSection UnityEngine.Networking.IMultipartFormSection
CS.UnityEngine.Networking.IMultipartFormSection = UnityEngine.Networking.IMultipartFormSection


---@class UnityEngine.Networking.MultipartFormDataSection : System.Object
---@field sectionName string
---@field sectionData System.Byte[]
---@field fileName string
---@field contentType string
UnityEngine.Networking.MultipartFormDataSection = {}
---@alias CS.UnityEngine.Networking.MultipartFormDataSection UnityEngine.Networking.MultipartFormDataSection
CS.UnityEngine.Networking.MultipartFormDataSection = UnityEngine.Networking.MultipartFormDataSection

---@overload fun(name: string, data: System.Byte[], contentType: string) : UnityEngine.Networking.MultipartFormDataSection
---@overload fun(name: string, data: System.Byte[]) : UnityEngine.Networking.MultipartFormDataSection
---@overload fun(data: System.Byte[]) : UnityEngine.Networking.MultipartFormDataSection
---@overload fun(name: string, data: string, encoding: System.Text.Encoding, contentType: string) : UnityEngine.Networking.MultipartFormDataSection
---@overload fun(name: string, data: string, contentType: string) : UnityEngine.Networking.MultipartFormDataSection
---@overload fun(name: string, data: string) : UnityEngine.Networking.MultipartFormDataSection
---@param data string
---@return UnityEngine.Networking.MultipartFormDataSection
function UnityEngine.Networking.MultipartFormDataSection.New(data) end

---@class UnityEngine.Networking.MultipartFormFileSection : System.Object
---@field sectionName string
---@field sectionData System.Byte[]
---@field fileName string
---@field contentType string
UnityEngine.Networking.MultipartFormFileSection = {}
---@alias CS.UnityEngine.Networking.MultipartFormFileSection UnityEngine.Networking.MultipartFormFileSection
CS.UnityEngine.Networking.MultipartFormFileSection = UnityEngine.Networking.MultipartFormFileSection

---@overload fun(name: string, data: System.Byte[], fileName: string, contentType: string) : UnityEngine.Networking.MultipartFormFileSection
---@overload fun(data: System.Byte[]) : UnityEngine.Networking.MultipartFormFileSection
---@overload fun(fileName: string, data: System.Byte[]) : UnityEngine.Networking.MultipartFormFileSection
---@overload fun(name: string, data: string, dataEncoding: System.Text.Encoding, fileName: string) : UnityEngine.Networking.MultipartFormFileSection
---@overload fun(data: string, dataEncoding: System.Text.Encoding, fileName: string) : UnityEngine.Networking.MultipartFormFileSection
---@param data string
---@param fileName string
---@return UnityEngine.Networking.MultipartFormFileSection
function UnityEngine.Networking.MultipartFormFileSection.New(data, fileName) end

---@class UnityEngine.Networking.UnityWebRequestAsyncOperation : UnityEngine.AsyncOperation
---@field webRequest UnityEngine.Networking.UnityWebRequest
UnityEngine.Networking.UnityWebRequestAsyncOperation = {}
---@alias CS.UnityEngine.Networking.UnityWebRequestAsyncOperation UnityEngine.Networking.UnityWebRequestAsyncOperation
CS.UnityEngine.Networking.UnityWebRequestAsyncOperation = UnityEngine.Networking.UnityWebRequestAsyncOperation

---@return UnityEngine.Networking.UnityWebRequestAsyncOperation
function UnityEngine.Networking.UnityWebRequestAsyncOperation.New() end

---@class UnityEngine.Networking.UnityWebRequest : System.Object
---@field kHttpVerbGET string
---@field kHttpVerbHEAD string
---@field kHttpVerbPOST string
---@field kHttpVerbPUT string
---@field kHttpVerbCREATE string
---@field kHttpVerbDELETE string
---@field disposeCertificateHandlerOnDispose boolean
---@field disposeDownloadHandlerOnDispose boolean
---@field disposeUploadHandlerOnDispose boolean
---@field method string
---@field error string
---@field useHttpContinue boolean
---@field url string
---@field uri System.Uri
---@field responseCode number
---@field uploadProgress number
---@field isModifiable boolean
---@field isDone boolean
---@field result UnityEngine.Networking.UnityWebRequest.Result
---@field downloadProgress number
---@field uploadedBytes number
---@field downloadedBytes number
---@field redirectLimit number
---@field uploadHandler UnityEngine.Networking.UploadHandler
---@field downloadHandler UnityEngine.Networking.DownloadHandler
---@field certificateHandler UnityEngine.Networking.CertificateHandler
---@field timeout number
UnityEngine.Networking.UnityWebRequest = {}
---@alias CS.UnityEngine.Networking.UnityWebRequest UnityEngine.Networking.UnityWebRequest
CS.UnityEngine.Networking.UnityWebRequest = UnityEngine.Networking.UnityWebRequest

---@overload fun() : UnityEngine.Networking.UnityWebRequest
---@overload fun(url: string) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri) : UnityEngine.Networking.UnityWebRequest
---@overload fun(url: string, method: string) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, method: string) : UnityEngine.Networking.UnityWebRequest
---@overload fun(url: string, method: string, downloadHandler: UnityEngine.Networking.DownloadHandler, uploadHandler: UnityEngine.Networking.UploadHandler) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@param method string
---@param downloadHandler UnityEngine.Networking.DownloadHandler
---@param uploadHandler UnityEngine.Networking.UploadHandler
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.New(uri, method, downloadHandler, uploadHandler) end
---@overload fun()
---@param uri System.Uri
function UnityEngine.Networking.UnityWebRequest.ClearCookieCache(uri) end
---@overload fun(uri: string) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Get(uri) end
---@overload fun(uri: string) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Delete(uri) end
---@overload fun(uri: string) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Head(uri) end
---@overload fun(uri: string, bodyData: System.Byte[]) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, bodyData: System.Byte[]) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, bodyData: string) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@param bodyData string
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Put(uri, bodyData) end
---@overload fun(uri: string, form: string) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@param form string
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.PostWwwForm(uri, form) end
---@overload fun(uri: string, postData: string, contentType: string) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, postData: string, contentType: string) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, formData: UnityEngine.WWWForm) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, formData: UnityEngine.WWWForm) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, multipartFormSections: System.Collections.Generic.List) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, multipartFormSections: System.Collections.Generic.List) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, multipartFormSections: System.Collections.Generic.List, boundary: System.Byte[]) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, multipartFormSections: System.Collections.Generic.List, boundary: System.Byte[]) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, formFields: System.Collections.Generic.Dictionary) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@param formFields System.Collections.Generic.Dictionary
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequest.Post(uri, formFields) end
---@overload fun(s: string) : string
---@param s string
---@param e System.Text.Encoding
---@return string
function UnityEngine.Networking.UnityWebRequest.EscapeURL(s, e) end
---@overload fun(s: string) : string
---@param s string
---@param e System.Text.Encoding
---@return string
function UnityEngine.Networking.UnityWebRequest.UnEscapeURL(s, e) end
---@param multipartFormSections System.Collections.Generic.List
---@param boundary System.Byte[]
---@return System.Byte[]
function UnityEngine.Networking.UnityWebRequest.SerializeFormSections(multipartFormSections, boundary) end
---@return System.Byte[]
function UnityEngine.Networking.UnityWebRequest.GenerateBoundary() end
---@param formFields System.Collections.Generic.Dictionary
---@return System.Byte[]
function UnityEngine.Networking.UnityWebRequest.SerializeSimpleForm(formFields) end
function UnityEngine.Networking.UnityWebRequest:Dispose() end
---@return UnityEngine.Networking.UnityWebRequestAsyncOperation
function UnityEngine.Networking.UnityWebRequest:SendWebRequest() end
function UnityEngine.Networking.UnityWebRequest:Abort() end
---@param name string
---@return string
function UnityEngine.Networking.UnityWebRequest:GetRequestHeader(name) end
---@param name string
---@param value string
function UnityEngine.Networking.UnityWebRequest:SetRequestHeader(name, value) end
---@param name string
---@return string
function UnityEngine.Networking.UnityWebRequest:GetResponseHeader(name) end
---@return System.Collections.Generic.Dictionary
function UnityEngine.Networking.UnityWebRequest:GetResponseHeaders() end

---@class UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod
---@field Get UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod
---@field Post UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod
---@field Put UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod
---@field Head UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod
---@field Custom UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod
UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod = {}
---@alias CS.UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod
CS.UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod = UnityEngine.Networking.UnityWebRequest.UnityWebRequestMethod


---@class UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field OK UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field OKCached UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field Unknown UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field SDKError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field UnsupportedProtocol UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field MalformattedUrl UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field CannotResolveProxy UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field CannotResolveHost UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field CannotConnectToHost UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field AccessDenied UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field GenericHttpError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field WriteError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field ReadError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field OutOfMemory UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field Timeout UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field HTTPPostError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field SSLCannotConnect UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field Aborted UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field TooManyRedirects UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field ReceivedNoData UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field SSLNotSupported UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field FailedToSendData UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field FailedToReceiveData UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field SSLCertificateError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field SSLCipherNotAvailable UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field SSLCACertError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field UnrecognizedContentEncoding UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field LoginFailed UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field SSLShutdownFailed UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field RedirectLimitInvalid UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field InvalidRedirect UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field CannotModifyRequest UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field HeaderNameContainsInvalidCharacters UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field HeaderValueContainsInvalidCharacters UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field CannotOverrideSystemHeaders UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field AlreadySent UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field InvalidMethod UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field NotImplemented UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field NoInternetConnection UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field DataProcessingError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
---@field InsecureConnectionNotAllowed UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
UnityEngine.Networking.UnityWebRequest.UnityWebRequestError = {}
---@alias CS.UnityEngine.Networking.UnityWebRequest.UnityWebRequestError UnityEngine.Networking.UnityWebRequest.UnityWebRequestError
CS.UnityEngine.Networking.UnityWebRequest.UnityWebRequestError = UnityEngine.Networking.UnityWebRequest.UnityWebRequestError


---@class UnityEngine.Networking.UnityWebRequest.Result
---@field InProgress UnityEngine.Networking.UnityWebRequest.Result
---@field Success UnityEngine.Networking.UnityWebRequest.Result
---@field ConnectionError UnityEngine.Networking.UnityWebRequest.Result
---@field ProtocolError UnityEngine.Networking.UnityWebRequest.Result
---@field DataProcessingError UnityEngine.Networking.UnityWebRequest.Result
UnityEngine.Networking.UnityWebRequest.Result = {}
---@alias CS.UnityEngine.Networking.UnityWebRequest.Result UnityEngine.Networking.UnityWebRequest.Result
CS.UnityEngine.Networking.UnityWebRequest.Result = UnityEngine.Networking.UnityWebRequest.Result


---@class UnityEngine.Networking.UploadHandler : System.Object
---@field data System.Byte[]
---@field contentType string
---@field progress number
UnityEngine.Networking.UploadHandler = {}
---@alias CS.UnityEngine.Networking.UploadHandler UnityEngine.Networking.UploadHandler
CS.UnityEngine.Networking.UploadHandler = UnityEngine.Networking.UploadHandler

function UnityEngine.Networking.UploadHandler:Dispose() end

---@class UnityEngine.Networking.UploadHandlerRaw : UnityEngine.Networking.UploadHandler
UnityEngine.Networking.UploadHandlerRaw = {}
---@alias CS.UnityEngine.Networking.UploadHandlerRaw UnityEngine.Networking.UploadHandlerRaw
CS.UnityEngine.Networking.UploadHandlerRaw = UnityEngine.Networking.UploadHandlerRaw

---@overload fun(data: System.Byte[]) : UnityEngine.Networking.UploadHandlerRaw
---@overload fun(data: Unity.Collections.NativeArray, transferOwnership: boolean) : UnityEngine.Networking.UploadHandlerRaw
---@param data Unity.Collections.NativeArray.ReadOnly
---@return UnityEngine.Networking.UploadHandlerRaw
function UnityEngine.Networking.UploadHandlerRaw.New(data) end
function UnityEngine.Networking.UploadHandlerRaw:Dispose() end

---@class UnityEngine.Networking.UploadHandlerFile : UnityEngine.Networking.UploadHandler
UnityEngine.Networking.UploadHandlerFile = {}
---@alias CS.UnityEngine.Networking.UploadHandlerFile UnityEngine.Networking.UploadHandlerFile
CS.UnityEngine.Networking.UploadHandlerFile = UnityEngine.Networking.UploadHandlerFile

---@param filePath string
---@return UnityEngine.Networking.UploadHandlerFile
function UnityEngine.Networking.UploadHandlerFile.New(filePath) end

---@class UnityEngine.Networking.UnityWebRequestAssetBundle : System.Object
UnityEngine.Networking.UnityWebRequestAssetBundle = {}
---@alias CS.UnityEngine.Networking.UnityWebRequestAssetBundle UnityEngine.Networking.UnityWebRequestAssetBundle
CS.UnityEngine.Networking.UnityWebRequestAssetBundle = UnityEngine.Networking.UnityWebRequestAssetBundle

---@overload fun(uri: string) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, crc: number) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, crc: number) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, version: number, crc: number) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, version: number, crc: number) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, hash: UnityEngine.Hash128, crc: number) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri, hash: UnityEngine.Hash128, crc: number) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, cachedAssetBundle: UnityEngine.CachedAssetBundle, crc: number) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@param cachedAssetBundle UnityEngine.CachedAssetBundle
---@param crc number
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequestAssetBundle.GetAssetBundle(uri, cachedAssetBundle, crc) end

---@class UnityEngine.Networking.DownloadHandlerAssetBundle : UnityEngine.Networking.DownloadHandler
---@field assetBundle UnityEngine.AssetBundle
---@field autoLoadAssetBundle boolean
---@field isDownloadComplete boolean
UnityEngine.Networking.DownloadHandlerAssetBundle = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerAssetBundle UnityEngine.Networking.DownloadHandlerAssetBundle
CS.UnityEngine.Networking.DownloadHandlerAssetBundle = UnityEngine.Networking.DownloadHandlerAssetBundle

---@overload fun(url: string, crc: number) : UnityEngine.Networking.DownloadHandlerAssetBundle
---@overload fun(url: string, version: number, crc: number) : UnityEngine.Networking.DownloadHandlerAssetBundle
---@overload fun(url: string, hash: UnityEngine.Hash128, crc: number) : UnityEngine.Networking.DownloadHandlerAssetBundle
---@overload fun(url: string, name: string, hash: UnityEngine.Hash128, crc: number) : UnityEngine.Networking.DownloadHandlerAssetBundle
---@param url string
---@param cachedBundle UnityEngine.CachedAssetBundle
---@param crc number
---@return UnityEngine.Networking.DownloadHandlerAssetBundle
function UnityEngine.Networking.DownloadHandlerAssetBundle.New(url, cachedBundle, crc) end
---@param www UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.AssetBundle
function UnityEngine.Networking.DownloadHandlerAssetBundle.GetContent(www) end

---@class UnityEngine.Networking.DownloadHandlerAudioClip : UnityEngine.Networking.DownloadHandler
---@field audioClip UnityEngine.AudioClip
---@field streamAudio boolean
---@field compressed boolean
UnityEngine.Networking.DownloadHandlerAudioClip = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerAudioClip UnityEngine.Networking.DownloadHandlerAudioClip
CS.UnityEngine.Networking.DownloadHandlerAudioClip = UnityEngine.Networking.DownloadHandlerAudioClip

---@overload fun(url: string, audioType: UnityEngine.AudioType) : UnityEngine.Networking.DownloadHandlerAudioClip
---@param uri System.Uri
---@param audioType UnityEngine.AudioType
---@return UnityEngine.Networking.DownloadHandlerAudioClip
function UnityEngine.Networking.DownloadHandlerAudioClip.New(uri, audioType) end
---@param www UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.AudioClip
function UnityEngine.Networking.DownloadHandlerAudioClip.GetContent(www) end
function UnityEngine.Networking.DownloadHandlerAudioClip:Dispose() end

---@class UnityEngine.Networking.DownloadHandlerMovieTexture : UnityEngine.Networking.DownloadHandler
---@field movieTexture UnityEngine.MovieTexture
UnityEngine.Networking.DownloadHandlerMovieTexture = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerMovieTexture UnityEngine.Networking.DownloadHandlerMovieTexture
CS.UnityEngine.Networking.DownloadHandlerMovieTexture = UnityEngine.Networking.DownloadHandlerMovieTexture

---@return UnityEngine.Networking.DownloadHandlerMovieTexture
function UnityEngine.Networking.DownloadHandlerMovieTexture.New() end
---@param uwr UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.MovieTexture
function UnityEngine.Networking.DownloadHandlerMovieTexture.GetContent(uwr) end

---@class UnityEngine.Networking.UnityWebRequestMultimedia : System.Object
UnityEngine.Networking.UnityWebRequestMultimedia = {}
---@alias CS.UnityEngine.Networking.UnityWebRequestMultimedia UnityEngine.Networking.UnityWebRequestMultimedia
CS.UnityEngine.Networking.UnityWebRequestMultimedia = UnityEngine.Networking.UnityWebRequestMultimedia

---@overload fun(uri: string, audioType: UnityEngine.AudioType) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@param audioType UnityEngine.AudioType
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequestMultimedia.GetAudioClip(uri, audioType) end

---@class UnityEngine.Networking.DownloadHandlerTexture : UnityEngine.Networking.DownloadHandler
---@field texture UnityEngine.Texture2D
UnityEngine.Networking.DownloadHandlerTexture = {}
---@alias CS.UnityEngine.Networking.DownloadHandlerTexture UnityEngine.Networking.DownloadHandlerTexture
CS.UnityEngine.Networking.DownloadHandlerTexture = UnityEngine.Networking.DownloadHandlerTexture

---@overload fun() : UnityEngine.Networking.DownloadHandlerTexture
---@param readable boolean
---@return UnityEngine.Networking.DownloadHandlerTexture
function UnityEngine.Networking.DownloadHandlerTexture.New(readable) end
---@param www UnityEngine.Networking.UnityWebRequest
---@return UnityEngine.Texture2D
function UnityEngine.Networking.DownloadHandlerTexture.GetContent(www) end
function UnityEngine.Networking.DownloadHandlerTexture:Dispose() end

---@class UnityEngine.Networking.UnityWebRequestTexture : System.Object
UnityEngine.Networking.UnityWebRequestTexture = {}
---@alias CS.UnityEngine.Networking.UnityWebRequestTexture UnityEngine.Networking.UnityWebRequestTexture
CS.UnityEngine.Networking.UnityWebRequestTexture = UnityEngine.Networking.UnityWebRequestTexture

---@overload fun(uri: string) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: System.Uri) : UnityEngine.Networking.UnityWebRequest
---@overload fun(uri: string, nonReadable: boolean) : UnityEngine.Networking.UnityWebRequest
---@param uri System.Uri
---@param nonReadable boolean
---@return UnityEngine.Networking.UnityWebRequest
function UnityEngine.Networking.UnityWebRequestTexture.GetTexture(uri, nonReadable) end

---@class UnityEngine.WWW : UnityEngine.CustomYieldInstruction
---@field assetBundle UnityEngine.AssetBundle
---@field bytes System.Byte[]
---@field bytesDownloaded number
---@field error string
---@field isDone boolean
---@field progress number
---@field responseHeaders System.Collections.Generic.Dictionary
---@field text string
---@field texture UnityEngine.Texture2D
---@field textureNonReadable UnityEngine.Texture2D
---@field threadPriority UnityEngine.ThreadPriority
---@field uploadProgress number
---@field url string
---@field keepWaiting boolean
UnityEngine.WWW = {}
---@alias CS.UnityEngine.WWW UnityEngine.WWW
CS.UnityEngine.WWW = UnityEngine.WWW

---@overload fun(url: string) : UnityEngine.WWW
---@overload fun(url: string, form: UnityEngine.WWWForm) : UnityEngine.WWW
---@overload fun(url: string, postData: System.Byte[]) : UnityEngine.WWW
---@overload fun(url: string, postData: System.Byte[], headers: System.Collections.Hashtable) : UnityEngine.WWW
---@param url string
---@param postData System.Byte[]
---@param headers System.Collections.Generic.Dictionary
---@return UnityEngine.WWW
function UnityEngine.WWW.New(url, postData, headers) end
---@overload fun(s: string) : string
---@param s string
---@param e System.Text.Encoding
---@return string
function UnityEngine.WWW.EscapeURL(s, e) end
---@overload fun(s: string) : string
---@param s string
---@param e System.Text.Encoding
---@return string
function UnityEngine.WWW.UnEscapeURL(s, e) end
---@overload fun(url: string, version: number) : UnityEngine.WWW
---@overload fun(url: string, version: number, crc: number) : UnityEngine.WWW
---@overload fun(url: string, hash: UnityEngine.Hash128) : UnityEngine.WWW
---@overload fun(url: string, hash: UnityEngine.Hash128, crc: number) : UnityEngine.WWW
---@param url string
---@param cachedBundle UnityEngine.CachedAssetBundle
---@param crc number
---@return UnityEngine.WWW
function UnityEngine.WWW.LoadFromCacheOrDownload(url, cachedBundle, crc) end
---@param texture UnityEngine.Texture2D
function UnityEngine.WWW:LoadImageIntoTexture(texture) end
function UnityEngine.WWW:Dispose() end
---@overload fun() : UnityEngine.AudioClip
---@overload fun(self: UnityEngine.WWW, threeD: boolean) : UnityEngine.AudioClip
---@overload fun(self: UnityEngine.WWW, threeD: boolean, stream: boolean) : UnityEngine.AudioClip
---@param threeD boolean
---@param stream boolean
---@param audioType UnityEngine.AudioType
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClip(threeD, stream, audioType) end
---@overload fun() : UnityEngine.AudioClip
---@overload fun(self: UnityEngine.WWW, threeD: boolean) : UnityEngine.AudioClip
---@param threeD boolean
---@param audioType UnityEngine.AudioType
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClipCompressed(threeD, audioType) end
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClip() end
---@param threeD boolean
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClip(threeD) end
---@param threeD boolean
---@param stream boolean
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClip(threeD, stream) end
---@param threeD boolean
---@param stream boolean
---@param audioType UnityEngine.AudioType
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClip(threeD, stream, audioType) end
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClipCompressed() end
---@param threeD boolean
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClipCompressed(threeD) end
---@param threeD boolean
---@param audioType UnityEngine.AudioType
---@return UnityEngine.AudioClip
function UnityEngine.WWW:GetAudioClipCompressed(threeD, audioType) end
---@return UnityEngine.MovieTexture
function UnityEngine.WWW:GetMovieTexture() end

---@class UnityEngine.WWWAudioExtensions : System.Object
UnityEngine.WWWAudioExtensions = {}
---@alias CS.UnityEngine.WWWAudioExtensions UnityEngine.WWWAudioExtensions
CS.UnityEngine.WWWAudioExtensions = UnityEngine.WWWAudioExtensions


---@class UnityEngine.Networking.WebRequestWWW : System.Object
UnityEngine.Networking.WebRequestWWW = {}
---@alias CS.UnityEngine.Networking.WebRequestWWW UnityEngine.Networking.WebRequestWWW
CS.UnityEngine.Networking.WebRequestWWW = UnityEngine.Networking.WebRequestWWW


---@class UnityEngine.Experimental.VFX.VFXManager : System.Object
UnityEngine.Experimental.VFX.VFXManager = {}
---@alias CS.UnityEngine.Experimental.VFX.VFXManager UnityEngine.Experimental.VFX.VFXManager
CS.UnityEngine.Experimental.VFX.VFXManager = UnityEngine.Experimental.VFX.VFXManager


---@class UnityEngine.VFX.VFXCullingFlags
---@field CullNone UnityEngine.VFX.VFXCullingFlags
---@field CullSimulation UnityEngine.VFX.VFXCullingFlags
---@field CullBoundsUpdate UnityEngine.VFX.VFXCullingFlags
---@field CullDefault UnityEngine.VFX.VFXCullingFlags
UnityEngine.VFX.VFXCullingFlags = {}
---@alias CS.UnityEngine.VFX.VFXCullingFlags UnityEngine.VFX.VFXCullingFlags
CS.UnityEngine.VFX.VFXCullingFlags = UnityEngine.VFX.VFXCullingFlags


---@class UnityEngine.VFX.VFXExpressionOperation
---@field None UnityEngine.VFX.VFXExpressionOperation
---@field Value UnityEngine.VFX.VFXExpressionOperation
---@field Combine2f UnityEngine.VFX.VFXExpressionOperation
---@field Combine3f UnityEngine.VFX.VFXExpressionOperation
---@field Combine4f UnityEngine.VFX.VFXExpressionOperation
---@field ExtractComponent UnityEngine.VFX.VFXExpressionOperation
---@field DeltaTime UnityEngine.VFX.VFXExpressionOperation
---@field TotalTime UnityEngine.VFX.VFXExpressionOperation
---@field SystemSeed UnityEngine.VFX.VFXExpressionOperation
---@field LocalToWorld UnityEngine.VFX.VFXExpressionOperation
---@field WorldToLocal UnityEngine.VFX.VFXExpressionOperation
---@field FrameIndex UnityEngine.VFX.VFXExpressionOperation
---@field PlayRate UnityEngine.VFX.VFXExpressionOperation
---@field UnscaledDeltaTime UnityEngine.VFX.VFXExpressionOperation
---@field ManagerMaxDeltaTime UnityEngine.VFX.VFXExpressionOperation
---@field ManagerFixedTimeStep UnityEngine.VFX.VFXExpressionOperation
---@field GameDeltaTime UnityEngine.VFX.VFXExpressionOperation
---@field GameUnscaledDeltaTime UnityEngine.VFX.VFXExpressionOperation
---@field GameSmoothDeltaTime UnityEngine.VFX.VFXExpressionOperation
---@field GameTotalTime UnityEngine.VFX.VFXExpressionOperation
---@field GameUnscaledTotalTime UnityEngine.VFX.VFXExpressionOperation
---@field GameTotalTimeSinceSceneLoad UnityEngine.VFX.VFXExpressionOperation
---@field GameTimeScale UnityEngine.VFX.VFXExpressionOperation
---@field Sin UnityEngine.VFX.VFXExpressionOperation
---@field Cos UnityEngine.VFX.VFXExpressionOperation
---@field Tan UnityEngine.VFX.VFXExpressionOperation
---@field ASin UnityEngine.VFX.VFXExpressionOperation
---@field ACos UnityEngine.VFX.VFXExpressionOperation
---@field ATan UnityEngine.VFX.VFXExpressionOperation
---@field Abs UnityEngine.VFX.VFXExpressionOperation
---@field Sign UnityEngine.VFX.VFXExpressionOperation
---@field Saturate UnityEngine.VFX.VFXExpressionOperation
---@field Ceil UnityEngine.VFX.VFXExpressionOperation
---@field Round UnityEngine.VFX.VFXExpressionOperation
---@field Frac UnityEngine.VFX.VFXExpressionOperation
---@field Floor UnityEngine.VFX.VFXExpressionOperation
---@field Log2 UnityEngine.VFX.VFXExpressionOperation
---@field Mul UnityEngine.VFX.VFXExpressionOperation
---@field Divide UnityEngine.VFX.VFXExpressionOperation
---@field Add UnityEngine.VFX.VFXExpressionOperation
---@field Subtract UnityEngine.VFX.VFXExpressionOperation
---@field Min UnityEngine.VFX.VFXExpressionOperation
---@field Max UnityEngine.VFX.VFXExpressionOperation
---@field Pow UnityEngine.VFX.VFXExpressionOperation
---@field ATan2 UnityEngine.VFX.VFXExpressionOperation
---@field TRSToMatrix UnityEngine.VFX.VFXExpressionOperation
---@field InverseMatrix UnityEngine.VFX.VFXExpressionOperation
---@field InverseTRSMatrix UnityEngine.VFX.VFXExpressionOperation
---@field TransposeMatrix UnityEngine.VFX.VFXExpressionOperation
---@field ExtractPositionFromMatrix UnityEngine.VFX.VFXExpressionOperation
---@field ExtractAnglesFromMatrix UnityEngine.VFX.VFXExpressionOperation
---@field ExtractScaleFromMatrix UnityEngine.VFX.VFXExpressionOperation
---@field TransformMatrix UnityEngine.VFX.VFXExpressionOperation
---@field TransformPos UnityEngine.VFX.VFXExpressionOperation
---@field TransformVec UnityEngine.VFX.VFXExpressionOperation
---@field TransformDir UnityEngine.VFX.VFXExpressionOperation
---@field TransformVector4 UnityEngine.VFX.VFXExpressionOperation
---@field Vector3sToMatrix UnityEngine.VFX.VFXExpressionOperation
---@field Vector4sToMatrix UnityEngine.VFX.VFXExpressionOperation
---@field MatrixToVector3s UnityEngine.VFX.VFXExpressionOperation
---@field MatrixToVector4s UnityEngine.VFX.VFXExpressionOperation
---@field SampleCurve UnityEngine.VFX.VFXExpressionOperation
---@field SampleGradient UnityEngine.VFX.VFXExpressionOperation
---@field SampleMeshVertexFloat UnityEngine.VFX.VFXExpressionOperation
---@field SampleMeshVertexFloat2 UnityEngine.VFX.VFXExpressionOperation
---@field SampleMeshVertexFloat3 UnityEngine.VFX.VFXExpressionOperation
---@field SampleMeshVertexFloat4 UnityEngine.VFX.VFXExpressionOperation
---@field SampleMeshVertexColor UnityEngine.VFX.VFXExpressionOperation
---@field SampleMeshIndex UnityEngine.VFX.VFXExpressionOperation
---@field VertexBufferFromMesh UnityEngine.VFX.VFXExpressionOperation
---@field VertexBufferFromSkinnedMeshRenderer UnityEngine.VFX.VFXExpressionOperation
---@field IndexBufferFromMesh UnityEngine.VFX.VFXExpressionOperation
---@field MeshFromSkinnedMeshRenderer UnityEngine.VFX.VFXExpressionOperation
---@field RootBoneTransformFromSkinnedMeshRenderer UnityEngine.VFX.VFXExpressionOperation
---@field BakeCurve UnityEngine.VFX.VFXExpressionOperation
---@field BakeGradient UnityEngine.VFX.VFXExpressionOperation
---@field BitwiseLeftShift UnityEngine.VFX.VFXExpressionOperation
---@field BitwiseRightShift UnityEngine.VFX.VFXExpressionOperation
---@field BitwiseOr UnityEngine.VFX.VFXExpressionOperation
---@field BitwiseAnd UnityEngine.VFX.VFXExpressionOperation
---@field BitwiseXor UnityEngine.VFX.VFXExpressionOperation
---@field BitwiseComplement UnityEngine.VFX.VFXExpressionOperation
---@field CastUintToFloat UnityEngine.VFX.VFXExpressionOperation
---@field CastIntToFloat UnityEngine.VFX.VFXExpressionOperation
---@field CastFloatToUint UnityEngine.VFX.VFXExpressionOperation
---@field CastIntToUint UnityEngine.VFX.VFXExpressionOperation
---@field CastFloatToInt UnityEngine.VFX.VFXExpressionOperation
---@field CastUintToInt UnityEngine.VFX.VFXExpressionOperation
---@field CastIntToBool UnityEngine.VFX.VFXExpressionOperation
---@field CastUintToBool UnityEngine.VFX.VFXExpressionOperation
---@field CastFloatToBool UnityEngine.VFX.VFXExpressionOperation
---@field CastBoolToInt UnityEngine.VFX.VFXExpressionOperation
---@field CastBoolToUint UnityEngine.VFX.VFXExpressionOperation
---@field CastBoolToFloat UnityEngine.VFX.VFXExpressionOperation
---@field RGBtoHSV UnityEngine.VFX.VFXExpressionOperation
---@field HSVtoRGB UnityEngine.VFX.VFXExpressionOperation
---@field Condition UnityEngine.VFX.VFXExpressionOperation
---@field Branch UnityEngine.VFX.VFXExpressionOperation
---@field GenerateRandom UnityEngine.VFX.VFXExpressionOperation
---@field GenerateFixedRandom UnityEngine.VFX.VFXExpressionOperation
---@field ExtractMatrixFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field ExtractFOVFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field ExtractNearPlaneFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field ExtractFarPlaneFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field ExtractAspectRatioFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field ExtractPixelDimensionsFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field ExtractScaledPixelDimensionsFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field ExtractLensShiftFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field GetBufferFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field IsMainCameraOrthographic UnityEngine.VFX.VFXExpressionOperation
---@field GetOrthographicSizeFromMainCamera UnityEngine.VFX.VFXExpressionOperation
---@field LogicalAnd UnityEngine.VFX.VFXExpressionOperation
---@field LogicalOr UnityEngine.VFX.VFXExpressionOperation
---@field LogicalNot UnityEngine.VFX.VFXExpressionOperation
---@field ValueNoise1D UnityEngine.VFX.VFXExpressionOperation
---@field ValueNoise2D UnityEngine.VFX.VFXExpressionOperation
---@field ValueNoise3D UnityEngine.VFX.VFXExpressionOperation
---@field ValueCurlNoise2D UnityEngine.VFX.VFXExpressionOperation
---@field ValueCurlNoise3D UnityEngine.VFX.VFXExpressionOperation
---@field PerlinNoise1D UnityEngine.VFX.VFXExpressionOperation
---@field PerlinNoise2D UnityEngine.VFX.VFXExpressionOperation
---@field PerlinNoise3D UnityEngine.VFX.VFXExpressionOperation
---@field PerlinCurlNoise2D UnityEngine.VFX.VFXExpressionOperation
---@field PerlinCurlNoise3D UnityEngine.VFX.VFXExpressionOperation
---@field CellularNoise1D UnityEngine.VFX.VFXExpressionOperation
---@field CellularNoise2D UnityEngine.VFX.VFXExpressionOperation
---@field CellularNoise3D UnityEngine.VFX.VFXExpressionOperation
---@field CellularCurlNoise2D UnityEngine.VFX.VFXExpressionOperation
---@field CellularCurlNoise3D UnityEngine.VFX.VFXExpressionOperation
---@field VoroNoise2D UnityEngine.VFX.VFXExpressionOperation
---@field MeshVertexCount UnityEngine.VFX.VFXExpressionOperation
---@field MeshChannelOffset UnityEngine.VFX.VFXExpressionOperation
---@field MeshChannelInfos UnityEngine.VFX.VFXExpressionOperation
---@field MeshVertexStride UnityEngine.VFX.VFXExpressionOperation
---@field MeshIndexCount UnityEngine.VFX.VFXExpressionOperation
---@field MeshIndexFormat UnityEngine.VFX.VFXExpressionOperation
---@field BufferStride UnityEngine.VFX.VFXExpressionOperation
---@field BufferCount UnityEngine.VFX.VFXExpressionOperation
---@field TextureWidth UnityEngine.VFX.VFXExpressionOperation
---@field TextureHeight UnityEngine.VFX.VFXExpressionOperation
---@field TextureDepth UnityEngine.VFX.VFXExpressionOperation
---@field ReadEventAttribute UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateNewLoop UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateLoopState UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateSpawnCount UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateDeltaTime UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateTotalTime UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateDelayBeforeLoop UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateLoopDuration UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateDelayAfterLoop UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateLoopIndex UnityEngine.VFX.VFXExpressionOperation
---@field SpawnerStateLoopCount UnityEngine.VFX.VFXExpressionOperation
UnityEngine.VFX.VFXExpressionOperation = {}
---@alias CS.UnityEngine.VFX.VFXExpressionOperation UnityEngine.VFX.VFXExpressionOperation
CS.UnityEngine.VFX.VFXExpressionOperation = UnityEngine.VFX.VFXExpressionOperation


---@class UnityEngine.VFX.VFXValueType
---@field None UnityEngine.VFX.VFXValueType
---@field Float UnityEngine.VFX.VFXValueType
---@field Float2 UnityEngine.VFX.VFXValueType
---@field Float3 UnityEngine.VFX.VFXValueType
---@field Float4 UnityEngine.VFX.VFXValueType
---@field Int32 UnityEngine.VFX.VFXValueType
---@field Uint32 UnityEngine.VFX.VFXValueType
---@field Texture2D UnityEngine.VFX.VFXValueType
---@field Texture2DArray UnityEngine.VFX.VFXValueType
---@field Texture3D UnityEngine.VFX.VFXValueType
---@field TextureCube UnityEngine.VFX.VFXValueType
---@field TextureCubeArray UnityEngine.VFX.VFXValueType
---@field CameraBuffer UnityEngine.VFX.VFXValueType
---@field Matrix4x4 UnityEngine.VFX.VFXValueType
---@field Curve UnityEngine.VFX.VFXValueType
---@field ColorGradient UnityEngine.VFX.VFXValueType
---@field Mesh UnityEngine.VFX.VFXValueType
---@field Spline UnityEngine.VFX.VFXValueType
---@field Boolean UnityEngine.VFX.VFXValueType
---@field Buffer UnityEngine.VFX.VFXValueType
---@field SkinnedMeshRenderer UnityEngine.VFX.VFXValueType
UnityEngine.VFX.VFXValueType = {}
---@alias CS.UnityEngine.VFX.VFXValueType UnityEngine.VFX.VFXValueType
CS.UnityEngine.VFX.VFXValueType = UnityEngine.VFX.VFXValueType


---@class UnityEngine.VFX.VFXTaskType
---@field None UnityEngine.VFX.VFXTaskType
---@field Spawner UnityEngine.VFX.VFXTaskType
---@field Initialize UnityEngine.VFX.VFXTaskType
---@field Update UnityEngine.VFX.VFXTaskType
---@field Output UnityEngine.VFX.VFXTaskType
---@field CameraSort UnityEngine.VFX.VFXTaskType
---@field PerCameraUpdate UnityEngine.VFX.VFXTaskType
---@field PerCameraSort UnityEngine.VFX.VFXTaskType
---@field PerOutputSort UnityEngine.VFX.VFXTaskType
---@field GlobalSort UnityEngine.VFX.VFXTaskType
---@field ParticlePointOutput UnityEngine.VFX.VFXTaskType
---@field ParticleLineOutput UnityEngine.VFX.VFXTaskType
---@field ParticleQuadOutput UnityEngine.VFX.VFXTaskType
---@field ParticleHexahedronOutput UnityEngine.VFX.VFXTaskType
---@field ParticleMeshOutput UnityEngine.VFX.VFXTaskType
---@field ParticleTriangleOutput UnityEngine.VFX.VFXTaskType
---@field ParticleOctagonOutput UnityEngine.VFX.VFXTaskType
---@field ConstantRateSpawner UnityEngine.VFX.VFXTaskType
---@field BurstSpawner UnityEngine.VFX.VFXTaskType
---@field PeriodicBurstSpawner UnityEngine.VFX.VFXTaskType
---@field VariableRateSpawner UnityEngine.VFX.VFXTaskType
---@field CustomCallbackSpawner UnityEngine.VFX.VFXTaskType
---@field SetAttributeSpawner UnityEngine.VFX.VFXTaskType
---@field EvaluateExpressionsSpawner UnityEngine.VFX.VFXTaskType
UnityEngine.VFX.VFXTaskType = {}
---@alias CS.UnityEngine.VFX.VFXTaskType UnityEngine.VFX.VFXTaskType
CS.UnityEngine.VFX.VFXTaskType = UnityEngine.VFX.VFXTaskType


---@class UnityEngine.VFX.VFXSystemType
---@field Spawner UnityEngine.VFX.VFXSystemType
---@field Particle UnityEngine.VFX.VFXSystemType
---@field Mesh UnityEngine.VFX.VFXSystemType
---@field OutputEvent UnityEngine.VFX.VFXSystemType
UnityEngine.VFX.VFXSystemType = {}
---@alias CS.UnityEngine.VFX.VFXSystemType UnityEngine.VFX.VFXSystemType
CS.UnityEngine.VFX.VFXSystemType = UnityEngine.VFX.VFXSystemType


---@class UnityEngine.VFX.VFXSystemFlag
---@field SystemDefault UnityEngine.VFX.VFXSystemFlag
---@field SystemHasKill UnityEngine.VFX.VFXSystemFlag
---@field SystemHasIndirectBuffer UnityEngine.VFX.VFXSystemFlag
---@field SystemReceivedEventGPU UnityEngine.VFX.VFXSystemFlag
---@field SystemHasStrips UnityEngine.VFX.VFXSystemFlag
---@field SystemNeedsComputeBounds UnityEngine.VFX.VFXSystemFlag
---@field SystemAutomaticBounds UnityEngine.VFX.VFXSystemFlag
---@field SystemInWorldSpace UnityEngine.VFX.VFXSystemFlag
---@field SystemHasDirectLink UnityEngine.VFX.VFXSystemFlag
---@field SystemHasAttributeBuffer UnityEngine.VFX.VFXSystemFlag
---@field SystemUsesInstancedRendering UnityEngine.VFX.VFXSystemFlag
UnityEngine.VFX.VFXSystemFlag = {}
---@alias CS.UnityEngine.VFX.VFXSystemFlag UnityEngine.VFX.VFXSystemFlag
CS.UnityEngine.VFX.VFXSystemFlag = UnityEngine.VFX.VFXSystemFlag


---@class UnityEngine.VFX.VFXUpdateMode
---@field FixedDeltaTime UnityEngine.VFX.VFXUpdateMode
---@field DeltaTime UnityEngine.VFX.VFXUpdateMode
---@field IgnoreTimeScale UnityEngine.VFX.VFXUpdateMode
---@field ExactFixedTimeStep UnityEngine.VFX.VFXUpdateMode
---@field DeltaTimeAndIgnoreTimeScale UnityEngine.VFX.VFXUpdateMode
---@field FixedDeltaAndExactTime UnityEngine.VFX.VFXUpdateMode
---@field FixedDeltaAndExactTimeAndIgnoreTimeScale UnityEngine.VFX.VFXUpdateMode
UnityEngine.VFX.VFXUpdateMode = {}
---@alias CS.UnityEngine.VFX.VFXUpdateMode UnityEngine.VFX.VFXUpdateMode
CS.UnityEngine.VFX.VFXUpdateMode = UnityEngine.VFX.VFXUpdateMode


---@class UnityEngine.VFX.VFXCameraBufferTypes
---@field None UnityEngine.VFX.VFXCameraBufferTypes
---@field Depth UnityEngine.VFX.VFXCameraBufferTypes
---@field Color UnityEngine.VFX.VFXCameraBufferTypes
---@field Normal UnityEngine.VFX.VFXCameraBufferTypes
UnityEngine.VFX.VFXCameraBufferTypes = {}
---@alias CS.UnityEngine.VFX.VFXCameraBufferTypes UnityEngine.VFX.VFXCameraBufferTypes
CS.UnityEngine.VFX.VFXCameraBufferTypes = UnityEngine.VFX.VFXCameraBufferTypes


---@class UnityEngine.VFX.VFXInstancingMode
---@field Disabled UnityEngine.VFX.VFXInstancingMode
---@field Auto UnityEngine.VFX.VFXInstancingMode
---@field Custom UnityEngine.VFX.VFXInstancingMode
UnityEngine.VFX.VFXInstancingMode = {}
---@alias CS.UnityEngine.VFX.VFXInstancingMode UnityEngine.VFX.VFXInstancingMode
CS.UnityEngine.VFX.VFXInstancingMode = UnityEngine.VFX.VFXInstancingMode


---@class UnityEngine.VFX.VFXInstancingDisabledReason
---@field None UnityEngine.VFX.VFXInstancingDisabledReason
---@field IndirectDraw UnityEngine.VFX.VFXInstancingDisabledReason
---@field OutputEvent UnityEngine.VFX.VFXInstancingDisabledReason
---@field GPUEvent UnityEngine.VFX.VFXInstancingDisabledReason
---@field AutomaticBounds UnityEngine.VFX.VFXInstancingDisabledReason
---@field MeshOutput UnityEngine.VFX.VFXInstancingDisabledReason
---@field ExposedObject UnityEngine.VFX.VFXInstancingDisabledReason
---@field Unknown UnityEngine.VFX.VFXInstancingDisabledReason
UnityEngine.VFX.VFXInstancingDisabledReason = {}
---@alias CS.UnityEngine.VFX.VFXInstancingDisabledReason UnityEngine.VFX.VFXInstancingDisabledReason
CS.UnityEngine.VFX.VFXInstancingDisabledReason = UnityEngine.VFX.VFXInstancingDisabledReason


---@class UnityEngine.VFX.VFXMainCameraBufferFallback
---@field NoFallback UnityEngine.VFX.VFXMainCameraBufferFallback
---@field PreferMainCamera UnityEngine.VFX.VFXMainCameraBufferFallback
---@field PreferSceneCamera UnityEngine.VFX.VFXMainCameraBufferFallback
UnityEngine.VFX.VFXMainCameraBufferFallback = {}
---@alias CS.UnityEngine.VFX.VFXMainCameraBufferFallback UnityEngine.VFX.VFXMainCameraBufferFallback
CS.UnityEngine.VFX.VFXMainCameraBufferFallback = UnityEngine.VFX.VFXMainCameraBufferFallback


---@class UnityEngine.VFX.VFXSkinnedMeshFrame
---@field Current UnityEngine.VFX.VFXSkinnedMeshFrame
---@field Previous UnityEngine.VFX.VFXSkinnedMeshFrame
UnityEngine.VFX.VFXSkinnedMeshFrame = {}
---@alias CS.UnityEngine.VFX.VFXSkinnedMeshFrame UnityEngine.VFX.VFXSkinnedMeshFrame
CS.UnityEngine.VFX.VFXSkinnedMeshFrame = UnityEngine.VFX.VFXSkinnedMeshFrame


---@class UnityEngine.VFX.VFXSkinnedTransform
---@field LocalRootBoneTransform UnityEngine.VFX.VFXSkinnedTransform
---@field WorldRootBoneTransform UnityEngine.VFX.VFXSkinnedTransform
UnityEngine.VFX.VFXSkinnedTransform = {}
---@alias CS.UnityEngine.VFX.VFXSkinnedTransform UnityEngine.VFX.VFXSkinnedTransform
CS.UnityEngine.VFX.VFXSkinnedTransform = UnityEngine.VFX.VFXSkinnedTransform


---@class UnityEngine.VFX.VFXEventAttribute : System.Object
UnityEngine.VFX.VFXEventAttribute = {}
---@alias CS.UnityEngine.VFX.VFXEventAttribute UnityEngine.VFX.VFXEventAttribute
CS.UnityEngine.VFX.VFXEventAttribute = UnityEngine.VFX.VFXEventAttribute

---@param original UnityEngine.VFX.VFXEventAttribute
---@return UnityEngine.VFX.VFXEventAttribute
function UnityEngine.VFX.VFXEventAttribute.New(original) end
function UnityEngine.VFX.VFXEventAttribute:Dispose() end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasBool(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasInt(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasUint(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasFloat(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasVector2(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasVector3(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasVector4(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:HasMatrix4x4(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, b: boolean)
---@param name string
---@param b boolean
function UnityEngine.VFX.VFXEventAttribute:SetBool(name, b) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, i: number)
---@param name string
---@param i number
function UnityEngine.VFX.VFXEventAttribute:SetInt(name, i) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, i: number)
---@param name string
---@param i number
function UnityEngine.VFX.VFXEventAttribute:SetUint(name, i) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, f: number)
---@param name string
---@param f number
function UnityEngine.VFX.VFXEventAttribute:SetFloat(name, f) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, v: UnityEngine.Vector2)
---@param name string
---@param v UnityEngine.Vector2
function UnityEngine.VFX.VFXEventAttribute:SetVector2(name, v) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, v: UnityEngine.Vector3)
---@param name string
---@param v UnityEngine.Vector3
function UnityEngine.VFX.VFXEventAttribute:SetVector3(name, v) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, v: UnityEngine.Vector4)
---@param name string
---@param v UnityEngine.Vector4
function UnityEngine.VFX.VFXEventAttribute:SetVector4(name, v) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number, v: UnityEngine.Matrix4x4)
---@param name string
---@param v UnityEngine.Matrix4x4
function UnityEngine.VFX.VFXEventAttribute:SetMatrix4x4(name, v) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXEventAttribute:GetBool(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VFXEventAttribute:GetInt(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VFXEventAttribute:GetUint(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VFXEventAttribute:GetFloat(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : UnityEngine.Vector2
---@param name string
---@return UnityEngine.Vector2
function UnityEngine.VFX.VFXEventAttribute:GetVector2(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : UnityEngine.Vector3
---@param name string
---@return UnityEngine.Vector3
function UnityEngine.VFX.VFXEventAttribute:GetVector3(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : UnityEngine.Vector4
---@param name string
---@return UnityEngine.Vector4
function UnityEngine.VFX.VFXEventAttribute:GetVector4(name) end
---@overload fun(self: UnityEngine.VFX.VFXEventAttribute, nameID: number) : UnityEngine.Matrix4x4
---@param name string
---@return UnityEngine.Matrix4x4
function UnityEngine.VFX.VFXEventAttribute:GetMatrix4x4(name) end
---@param eventAttibute UnityEngine.VFX.VFXEventAttribute
function UnityEngine.VFX.VFXEventAttribute:CopyValuesFrom(eventAttibute) end

---@class UnityEngine.VFX.VFXExpressionValues : System.Object
UnityEngine.VFX.VFXExpressionValues = {}
---@alias CS.UnityEngine.VFX.VFXExpressionValues UnityEngine.VFX.VFXExpressionValues
CS.UnityEngine.VFX.VFXExpressionValues = UnityEngine.VFX.VFXExpressionValues

---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VFXExpressionValues:GetBool(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VFXExpressionValues:GetInt(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VFXExpressionValues:GetUInt(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VFXExpressionValues:GetFloat(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.Vector2
---@param name string
---@return UnityEngine.Vector2
function UnityEngine.VFX.VFXExpressionValues:GetVector2(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.Vector3
---@param name string
---@return UnityEngine.Vector3
function UnityEngine.VFX.VFXExpressionValues:GetVector3(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.Vector4
---@param name string
---@return UnityEngine.Vector4
function UnityEngine.VFX.VFXExpressionValues:GetVector4(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.Matrix4x4
---@param name string
---@return UnityEngine.Matrix4x4
function UnityEngine.VFX.VFXExpressionValues:GetMatrix4x4(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.Texture
---@param name string
---@return UnityEngine.Texture
function UnityEngine.VFX.VFXExpressionValues:GetTexture(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.Mesh
---@param name string
---@return UnityEngine.Mesh
function UnityEngine.VFX.VFXExpressionValues:GetMesh(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.AnimationCurve
---@param name string
---@return UnityEngine.AnimationCurve
function UnityEngine.VFX.VFXExpressionValues:GetAnimationCurve(name) end
---@overload fun(self: UnityEngine.VFX.VFXExpressionValues, nameID: number) : UnityEngine.Gradient
---@param name string
---@return UnityEngine.Gradient
function UnityEngine.VFX.VFXExpressionValues:GetGradient(name) end

---@class UnityEngine.VFX.VFXCameraXRSettings : System.ValueType
---@field viewTotal number
---@field viewCount number
---@field viewOffset number
UnityEngine.VFX.VFXCameraXRSettings = {}
---@alias CS.UnityEngine.VFX.VFXCameraXRSettings UnityEngine.VFX.VFXCameraXRSettings
CS.UnityEngine.VFX.VFXCameraXRSettings = UnityEngine.VFX.VFXCameraXRSettings


---@class UnityEngine.VFX.VFXBatchedEffectInfo : System.ValueType
---@field vfxAsset UnityEngine.VFX.VisualEffectAsset
---@field activeBatchCount number
---@field inactiveBatchCount number
---@field activeInstanceCount number
---@field unbatchedInstanceCount number
---@field totalInstanceCapacity number
---@field maxInstancePerBatchCapacity number
---@field totalGPUSizeInBytes number
---@field totalCPUSizeInBytes number
UnityEngine.VFX.VFXBatchedEffectInfo = {}
---@alias CS.UnityEngine.VFX.VFXBatchedEffectInfo UnityEngine.VFX.VFXBatchedEffectInfo
CS.UnityEngine.VFX.VFXBatchedEffectInfo = UnityEngine.VFX.VFXBatchedEffectInfo


---@class UnityEngine.VFX.VFXBatchInfo : System.ValueType
---@field capacity number
---@field activeInstanceCount number
UnityEngine.VFX.VFXBatchInfo = {}
---@alias CS.UnityEngine.VFX.VFXBatchInfo UnityEngine.VFX.VFXBatchInfo
CS.UnityEngine.VFX.VFXBatchInfo = UnityEngine.VFX.VFXBatchInfo


---@class UnityEngine.VFX.VFXManager : System.Object
---@field fixedTimeStep number
---@field maxDeltaTime number
UnityEngine.VFX.VFXManager = {}
---@alias CS.UnityEngine.VFX.VFXManager UnityEngine.VFX.VFXManager
CS.UnityEngine.VFX.VFXManager = UnityEngine.VFX.VFXManager

---@return UnityEngine.VFX.VisualEffect[]
function UnityEngine.VFX.VFXManager.GetComponents() end
function UnityEngine.VFX.VFXManager.FlushEmptyBatches() end
---@param vfx UnityEngine.VFX.VisualEffectAsset
---@return UnityEngine.VFX.VFXBatchedEffectInfo
function UnityEngine.VFX.VFXManager.GetBatchedEffectInfo(vfx) end
---@param infos System.Collections.Generic.List
function UnityEngine.VFX.VFXManager.GetBatchedEffectInfos(infos) end
---@overload fun(cam: UnityEngine.Camera)
---@param cam UnityEngine.Camera
---@param camXRSettings UnityEngine.VFX.VFXCameraXRSettings
function UnityEngine.VFX.VFXManager.PrepareCamera(cam, camXRSettings) end
---@param cam UnityEngine.Camera
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param camXRSettings UnityEngine.VFX.VFXCameraXRSettings
---@param results UnityEngine.Rendering.CullingResults
function UnityEngine.VFX.VFXManager.ProcessCameraCommand(cam, cmd, camXRSettings, results) end
---@param cam UnityEngine.Camera
---@return UnityEngine.VFX.VFXCameraBufferTypes
function UnityEngine.VFX.VFXManager.IsCameraBufferNeeded(cam) end
---@param cam UnityEngine.Camera
---@param type UnityEngine.VFX.VFXCameraBufferTypes
---@param buffer UnityEngine.Texture
---@param x number
---@param y number
---@param width number
---@param height number
function UnityEngine.VFX.VFXManager.SetCameraBuffer(cam, type, buffer, x, y, width, height) end

---@class UnityEngine.VFX.VFXSpawnerCallbacks : UnityEngine.ScriptableObject
UnityEngine.VFX.VFXSpawnerCallbacks = {}
---@alias CS.UnityEngine.VFX.VFXSpawnerCallbacks UnityEngine.VFX.VFXSpawnerCallbacks
CS.UnityEngine.VFX.VFXSpawnerCallbacks = UnityEngine.VFX.VFXSpawnerCallbacks

---@param state UnityEngine.VFX.VFXSpawnerState
---@param vfxValues UnityEngine.VFX.VFXExpressionValues
---@param vfxComponent UnityEngine.VFX.VisualEffect
function UnityEngine.VFX.VFXSpawnerCallbacks:OnPlay(state, vfxValues, vfxComponent) end
---@param state UnityEngine.VFX.VFXSpawnerState
---@param vfxValues UnityEngine.VFX.VFXExpressionValues
---@param vfxComponent UnityEngine.VFX.VisualEffect
function UnityEngine.VFX.VFXSpawnerCallbacks:OnUpdate(state, vfxValues, vfxComponent) end
---@param state UnityEngine.VFX.VFXSpawnerState
---@param vfxValues UnityEngine.VFX.VFXExpressionValues
---@param vfxComponent UnityEngine.VFX.VisualEffect
function UnityEngine.VFX.VFXSpawnerCallbacks:OnStop(state, vfxValues, vfxComponent) end

---@class UnityEngine.VFX.VFXSpawnerLoopState
---@field Finished UnityEngine.VFX.VFXSpawnerLoopState
---@field DelayingBeforeLoop UnityEngine.VFX.VFXSpawnerLoopState
---@field Looping UnityEngine.VFX.VFXSpawnerLoopState
---@field DelayingAfterLoop UnityEngine.VFX.VFXSpawnerLoopState
UnityEngine.VFX.VFXSpawnerLoopState = {}
---@alias CS.UnityEngine.VFX.VFXSpawnerLoopState UnityEngine.VFX.VFXSpawnerLoopState
CS.UnityEngine.VFX.VFXSpawnerLoopState = UnityEngine.VFX.VFXSpawnerLoopState


---@class UnityEngine.VFX.VFXSpawnerState : System.Object
---@field playing boolean
---@field newLoop boolean
---@field loopState UnityEngine.VFX.VFXSpawnerLoopState
---@field spawnCount number
---@field deltaTime number
---@field totalTime number
---@field delayBeforeLoop number
---@field loopDuration number
---@field delayAfterLoop number
---@field loopIndex number
---@field loopCount number
---@field vfxEventAttribute UnityEngine.VFX.VFXEventAttribute
UnityEngine.VFX.VFXSpawnerState = {}
---@alias CS.UnityEngine.VFX.VFXSpawnerState UnityEngine.VFX.VFXSpawnerState
CS.UnityEngine.VFX.VFXSpawnerState = UnityEngine.VFX.VFXSpawnerState

---@return UnityEngine.VFX.VFXSpawnerState
function UnityEngine.VFX.VFXSpawnerState.New() end
function UnityEngine.VFX.VFXSpawnerState:Dispose() end

---@class UnityEngine.VFX.VFXExposedProperty : System.ValueType
---@field name string
---@field type System.Type
UnityEngine.VFX.VFXExposedProperty = {}
---@alias CS.UnityEngine.VFX.VFXExposedProperty UnityEngine.VFX.VFXExposedProperty
CS.UnityEngine.VFX.VFXExposedProperty = UnityEngine.VFX.VFXExposedProperty


---@class UnityEngine.VFX.VisualEffectObject : UnityEngine.Object
UnityEngine.VFX.VisualEffectObject = {}
---@alias CS.UnityEngine.VFX.VisualEffectObject UnityEngine.VFX.VisualEffectObject
CS.UnityEngine.VFX.VisualEffectObject = UnityEngine.VFX.VisualEffectObject


---@class UnityEngine.VFX.VisualEffectAsset : UnityEngine.VFX.VisualEffectObject
---@field PlayEventName string
---@field StopEventName string
---@field PlayEventID number
---@field StopEventID number
UnityEngine.VFX.VisualEffectAsset = {}
---@alias CS.UnityEngine.VFX.VisualEffectAsset UnityEngine.VFX.VisualEffectAsset
CS.UnityEngine.VFX.VisualEffectAsset = UnityEngine.VFX.VisualEffectAsset

---@return UnityEngine.VFX.VisualEffectAsset
function UnityEngine.VFX.VisualEffectAsset.New() end
---@overload fun(self: UnityEngine.VFX.VisualEffectAsset, nameID: number) : UnityEngine.Rendering.TextureDimension
---@param name string
---@return UnityEngine.Rendering.TextureDimension
function UnityEngine.VFX.VisualEffectAsset:GetTextureDimension(name) end
---@param exposedProperties System.Collections.Generic.List
function UnityEngine.VFX.VisualEffectAsset:GetExposedProperties(exposedProperties) end
---@param names System.Collections.Generic.List
function UnityEngine.VFX.VisualEffectAsset:GetEvents(names) end

---@class UnityEngine.VFX.VFXOutputEventArgs : System.ValueType
---@field nameId number
---@field eventAttribute UnityEngine.VFX.VFXEventAttribute
UnityEngine.VFX.VFXOutputEventArgs = {}
---@alias CS.UnityEngine.VFX.VFXOutputEventArgs UnityEngine.VFX.VFXOutputEventArgs
CS.UnityEngine.VFX.VFXOutputEventArgs = UnityEngine.VFX.VFXOutputEventArgs

---@param nameId number
---@param eventAttribute UnityEngine.VFX.VFXEventAttribute
---@return UnityEngine.VFX.VFXOutputEventArgs
function UnityEngine.VFX.VFXOutputEventArgs.New(nameId, eventAttribute) end

---@class UnityEngine.VFX.VisualEffect : UnityEngine.Behaviour
---@field outputEventReceived System.Action
---@field pause boolean
---@field playRate number
---@field startSeed number
---@field resetSeedOnPlay boolean
---@field initialEventID number
---@field initialEventName string
---@field culled boolean
---@field visualEffectAsset UnityEngine.VFX.VisualEffectAsset
---@field aliveParticleCount number
UnityEngine.VFX.VisualEffect = {}
---@alias CS.UnityEngine.VFX.VisualEffect UnityEngine.VFX.VisualEffect
CS.UnityEngine.VFX.VisualEffect = UnityEngine.VFX.VisualEffect

---@return UnityEngine.VFX.VisualEffect
function UnityEngine.VFX.VisualEffect.New() end
---@return UnityEngine.VFX.VFXEventAttribute
function UnityEngine.VFX.VisualEffect:CreateVFXEventAttribute() end
---@overload fun(self: UnityEngine.VFX.VisualEffect, eventNameID: number, eventAttribute: UnityEngine.VFX.VFXEventAttribute)
---@overload fun(self: UnityEngine.VFX.VisualEffect, eventName: string, eventAttribute: UnityEngine.VFX.VFXEventAttribute)
---@overload fun(self: UnityEngine.VFX.VisualEffect, eventNameID: number)
---@param eventName string
function UnityEngine.VFX.VisualEffect:SendEvent(eventName) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, eventAttribute: UnityEngine.VFX.VFXEventAttribute)
function UnityEngine.VFX.VisualEffect:Play() end
---@overload fun(self: UnityEngine.VFX.VisualEffect, eventAttribute: UnityEngine.VFX.VFXEventAttribute)
function UnityEngine.VFX.VisualEffect:Stop() end
function UnityEngine.VFX.VisualEffect:Reinit() end
function UnityEngine.VFX.VisualEffect:AdvanceOneFrame() end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number)
---@param name string
function UnityEngine.VFX.VisualEffect:ResetOverride(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Rendering.TextureDimension
---@param name string
---@return UnityEngine.Rendering.TextureDimension
function UnityEngine.VFX.VisualEffect:GetTextureDimension(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasBool(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasInt(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasUInt(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasFloat(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasVector2(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasVector3(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasVector4(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasMatrix4x4(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasTexture(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasAnimationCurve(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasGradient(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasMesh(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasSkinnedMeshRenderer(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasGraphicsBuffer(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, b: boolean)
---@param name string
---@param b boolean
function UnityEngine.VFX.VisualEffect:SetBool(name, b) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, i: number)
---@param name string
---@param i number
function UnityEngine.VFX.VisualEffect:SetInt(name, i) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, i: number)
---@param name string
---@param i number
function UnityEngine.VFX.VisualEffect:SetUInt(name, i) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, f: number)
---@param name string
---@param f number
function UnityEngine.VFX.VisualEffect:SetFloat(name, f) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, v: UnityEngine.Vector2)
---@param name string
---@param v UnityEngine.Vector2
function UnityEngine.VFX.VisualEffect:SetVector2(name, v) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, v: UnityEngine.Vector3)
---@param name string
---@param v UnityEngine.Vector3
function UnityEngine.VFX.VisualEffect:SetVector3(name, v) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, v: UnityEngine.Vector4)
---@param name string
---@param v UnityEngine.Vector4
function UnityEngine.VFX.VisualEffect:SetVector4(name, v) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, v: UnityEngine.Matrix4x4)
---@param name string
---@param v UnityEngine.Matrix4x4
function UnityEngine.VFX.VisualEffect:SetMatrix4x4(name, v) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, t: UnityEngine.Texture)
---@param name string
---@param t UnityEngine.Texture
function UnityEngine.VFX.VisualEffect:SetTexture(name, t) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, c: UnityEngine.AnimationCurve)
---@param name string
---@param c UnityEngine.AnimationCurve
function UnityEngine.VFX.VisualEffect:SetAnimationCurve(name, c) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, g: UnityEngine.Gradient)
---@param name string
---@param g UnityEngine.Gradient
function UnityEngine.VFX.VisualEffect:SetGradient(name, g) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, m: UnityEngine.Mesh)
---@param name string
---@param m UnityEngine.Mesh
function UnityEngine.VFX.VisualEffect:SetMesh(name, m) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, m: UnityEngine.SkinnedMeshRenderer)
---@param name string
---@param m UnityEngine.SkinnedMeshRenderer
function UnityEngine.VFX.VisualEffect:SetSkinnedMeshRenderer(name, m) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, g: UnityEngine.GraphicsBuffer)
---@param name string
---@param g UnityEngine.GraphicsBuffer
function UnityEngine.VFX.VisualEffect:SetGraphicsBuffer(name, g) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:GetBool(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VisualEffect:GetInt(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VisualEffect:GetUInt(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : number
---@param name string
---@return number
function UnityEngine.VFX.VisualEffect:GetFloat(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Vector2
---@param name string
---@return UnityEngine.Vector2
function UnityEngine.VFX.VisualEffect:GetVector2(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Vector3
---@param name string
---@return UnityEngine.Vector3
function UnityEngine.VFX.VisualEffect:GetVector3(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Vector4
---@param name string
---@return UnityEngine.Vector4
function UnityEngine.VFX.VisualEffect:GetVector4(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Matrix4x4
---@param name string
---@return UnityEngine.Matrix4x4
function UnityEngine.VFX.VisualEffect:GetMatrix4x4(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Texture
---@param name string
---@return UnityEngine.Texture
function UnityEngine.VFX.VisualEffect:GetTexture(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Mesh
---@param name string
---@return UnityEngine.Mesh
function UnityEngine.VFX.VisualEffect:GetMesh(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.SkinnedMeshRenderer
---@param name string
---@return UnityEngine.SkinnedMeshRenderer
function UnityEngine.VFX.VisualEffect:GetSkinnedMeshRenderer(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.Gradient
---@param name string
---@return UnityEngine.Gradient
function UnityEngine.VFX.VisualEffect:GetGradient(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.AnimationCurve
---@param name string
---@return UnityEngine.AnimationCurve
function UnityEngine.VFX.VisualEffect:GetAnimationCurve(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.VFX.VFXParticleSystemInfo
---@param name string
---@return UnityEngine.VFX.VFXParticleSystemInfo
function UnityEngine.VFX.VisualEffect:GetParticleSystemInfo(name) end
---@return boolean
function UnityEngine.VFX.VisualEffect:HasAnySystemAwake() end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number, spawnState: UnityEngine.VFX.VFXSpawnerState)
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : UnityEngine.VFX.VFXSpawnerState
---@param name string
---@return UnityEngine.VFX.VFXSpawnerState
function UnityEngine.VFX.VisualEffect:GetSpawnSystemInfo(name) end
---@overload fun(self: UnityEngine.VFX.VisualEffect, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.VFX.VisualEffect:HasSystem(name) end
---@param names System.Collections.Generic.List
function UnityEngine.VFX.VisualEffect:GetSystemNames(names) end
---@param names System.Collections.Generic.List
function UnityEngine.VFX.VisualEffect:GetParticleSystemNames(names) end
---@param names System.Collections.Generic.List
function UnityEngine.VFX.VisualEffect:GetOutputEventNames(names) end
---@param names System.Collections.Generic.List
function UnityEngine.VFX.VisualEffect:GetSpawnSystemNames(names) end
---@param stepDeltaTime number
---@param stepCount number
function UnityEngine.VFX.VisualEffect:Simulate(stepDeltaTime, stepCount) end

---@class UnityEngine.VFX.VFXRenderer : UnityEngine.Renderer
UnityEngine.VFX.VFXRenderer = {}
---@alias CS.UnityEngine.VFX.VFXRenderer UnityEngine.VFX.VFXRenderer
CS.UnityEngine.VFX.VFXRenderer = UnityEngine.VFX.VFXRenderer

---@return UnityEngine.VFX.VFXRenderer
function UnityEngine.VFX.VFXRenderer.New() end

---@class UnityEngine.VFX.VFXParticleSystemInfo : System.ValueType
---@field aliveCount number
---@field capacity number
---@field sleeping boolean
---@field bounds UnityEngine.Bounds
UnityEngine.VFX.VFXParticleSystemInfo = {}
---@alias CS.UnityEngine.VFX.VFXParticleSystemInfo UnityEngine.VFX.VFXParticleSystemInfo
CS.UnityEngine.VFX.VFXParticleSystemInfo = UnityEngine.VFX.VFXParticleSystemInfo

---@param aliveCount number
---@param capacity number
---@param sleeping boolean
---@param bounds UnityEngine.Bounds
---@return UnityEngine.VFX.VFXParticleSystemInfo
function UnityEngine.VFX.VFXParticleSystemInfo.New(aliveCount, capacity, sleeping, bounds) end

---@class UnityEngineInternal.XR.WSA.RemoteSpeechAccess : System.Object
UnityEngineInternal.XR.WSA.RemoteSpeechAccess = {}
---@alias CS.UnityEngineInternal.XR.WSA.RemoteSpeechAccess UnityEngineInternal.XR.WSA.RemoteSpeechAccess
CS.UnityEngineInternal.XR.WSA.RemoteSpeechAccess = UnityEngineInternal.XR.WSA.RemoteSpeechAccess

---@return UnityEngineInternal.XR.WSA.RemoteSpeechAccess
function UnityEngineInternal.XR.WSA.RemoteSpeechAccess.New() end

---@class UnityEngine.XR.GameViewRenderMode
---@field None UnityEngine.XR.GameViewRenderMode
---@field LeftEye UnityEngine.XR.GameViewRenderMode
---@field RightEye UnityEngine.XR.GameViewRenderMode
---@field BothEyes UnityEngine.XR.GameViewRenderMode
---@field OcclusionMesh UnityEngine.XR.GameViewRenderMode
UnityEngine.XR.GameViewRenderMode = {}
---@alias CS.UnityEngine.XR.GameViewRenderMode UnityEngine.XR.GameViewRenderMode
CS.UnityEngine.XR.GameViewRenderMode = UnityEngine.XR.GameViewRenderMode


---@class UnityEngine.XR.XRSettings : System.Object
---@field enabled boolean
---@field gameViewRenderMode UnityEngine.XR.GameViewRenderMode
---@field isDeviceActive boolean
---@field showDeviceView boolean
---@field eyeTextureResolutionScale number
---@field eyeTextureWidth number
---@field eyeTextureHeight number
---@field eyeTextureDesc UnityEngine.RenderTextureDescriptor
---@field deviceEyeTextureDimension UnityEngine.Rendering.TextureDimension
---@field renderViewportScale number
---@field occlusionMaskScale number
---@field useOcclusionMesh boolean
---@field loadedDeviceName string
---@field supportedDevices System.String[]
---@field stereoRenderingMode UnityEngine.XR.XRSettings.StereoRenderingMode
UnityEngine.XR.XRSettings = {}
---@alias CS.UnityEngine.XR.XRSettings UnityEngine.XR.XRSettings
CS.UnityEngine.XR.XRSettings = UnityEngine.XR.XRSettings


---@class UnityEngine.XR.XRSettings.StereoRenderingMode
---@field MultiPass UnityEngine.XR.XRSettings.StereoRenderingMode
---@field SinglePass UnityEngine.XR.XRSettings.StereoRenderingMode
---@field SinglePassInstanced UnityEngine.XR.XRSettings.StereoRenderingMode
---@field SinglePassMultiview UnityEngine.XR.XRSettings.StereoRenderingMode
UnityEngine.XR.XRSettings.StereoRenderingMode = {}
---@alias CS.UnityEngine.XR.XRSettings.StereoRenderingMode UnityEngine.XR.XRSettings.StereoRenderingMode
CS.UnityEngine.XR.XRSettings.StereoRenderingMode = UnityEngine.XR.XRSettings.StereoRenderingMode


---@class UnityEngine.XR.TrackingSpaceType
---@field Stationary UnityEngine.XR.TrackingSpaceType
---@field RoomScale UnityEngine.XR.TrackingSpaceType
UnityEngine.XR.TrackingSpaceType = {}
---@alias CS.UnityEngine.XR.TrackingSpaceType UnityEngine.XR.TrackingSpaceType
CS.UnityEngine.XR.TrackingSpaceType = UnityEngine.XR.TrackingSpaceType


---@class UnityEngine.XR.XRDevice : System.Object
---@field refreshRate number
---@field fovZoomFactor number
UnityEngine.XR.XRDevice = {}
---@alias CS.UnityEngine.XR.XRDevice UnityEngine.XR.XRDevice
CS.UnityEngine.XR.XRDevice = UnityEngine.XR.XRDevice

---@return System.IntPtr
function UnityEngine.XR.XRDevice.GetNativePtr() end
---@param camera UnityEngine.Camera
---@param disabled boolean
function UnityEngine.XR.XRDevice.DisableAutoXRCameraTracking(camera, disabled) end
function UnityEngine.XR.XRDevice.UpdateEyeTextureMSAASetting() end

---@class UnityEngine.XR.XRStats : System.Object
UnityEngine.XR.XRStats = {}
---@alias CS.UnityEngine.XR.XRStats UnityEngine.XR.XRStats
CS.UnityEngine.XR.XRStats = UnityEngine.XR.XRStats

---@param out_gpuTimeLastFrame number
---@return boolean,number
function UnityEngine.XR.XRStats.TryGetGPUTimeLastFrame(out_gpuTimeLastFrame) end
---@param out_droppedFrameCount number
---@return boolean,number
function UnityEngine.XR.XRStats.TryGetDroppedFrameCount(out_droppedFrameCount) end
---@param out_framePresentCount number
---@return boolean,number
function UnityEngine.XR.XRStats.TryGetFramePresentCount(out_framePresentCount) end

---@class UnityEngine.XR.WSA.RemoteDeviceVersion
---@field V1 UnityEngine.XR.WSA.RemoteDeviceVersion
---@field V2 UnityEngine.XR.WSA.RemoteDeviceVersion
UnityEngine.XR.WSA.RemoteDeviceVersion = {}
---@alias CS.UnityEngine.XR.WSA.RemoteDeviceVersion UnityEngine.XR.WSA.RemoteDeviceVersion
CS.UnityEngine.XR.WSA.RemoteDeviceVersion = UnityEngine.XR.WSA.RemoteDeviceVersion


---@class UnityEngine.XR.WSA.Input.DeleteMe
---@field Please UnityEngine.XR.WSA.Input.DeleteMe
UnityEngine.XR.WSA.Input.DeleteMe = {}
---@alias CS.UnityEngine.XR.WSA.Input.DeleteMe UnityEngine.XR.WSA.Input.DeleteMe
CS.UnityEngine.XR.WSA.Input.DeleteMe = UnityEngine.XR.WSA.Input.DeleteMe


---@class UnityEngine.Experimental.XR.DeleteMe
---@field Please UnityEngine.Experimental.XR.DeleteMe
UnityEngine.Experimental.XR.DeleteMe = {}
---@alias CS.UnityEngine.Experimental.XR.DeleteMe UnityEngine.Experimental.XR.DeleteMe
CS.UnityEngine.Experimental.XR.DeleteMe = UnityEngine.Experimental.XR.DeleteMe


---@class UnityEngine.WheelHit : System.ValueType
---@field collider UnityEngine.Collider
---@field point UnityEngine.Vector3
---@field normal UnityEngine.Vector3
---@field forwardDir UnityEngine.Vector3
---@field sidewaysDir UnityEngine.Vector3
---@field force number
---@field forwardSlip number
---@field sidewaysSlip number
UnityEngine.WheelHit = {}
---@alias CS.UnityEngine.WheelHit UnityEngine.WheelHit
CS.UnityEngine.WheelHit = UnityEngine.WheelHit


---@class UnityEngine.WheelCollider : UnityEngine.Collider
---@field center UnityEngine.Vector3
---@field radius number
---@field suspensionDistance number
---@field suspensionSpring UnityEngine.JointSpring
---@field suspensionExpansionLimited boolean
---@field forceAppPointDistance number
---@field mass number
---@field wheelDampingRate number
---@field forwardFriction UnityEngine.WheelFrictionCurve
---@field sidewaysFriction UnityEngine.WheelFrictionCurve
---@field motorTorque number
---@field brakeTorque number
---@field steerAngle number
---@field isGrounded boolean
---@field rpm number
---@field sprungMass number
---@field rotationSpeed number
UnityEngine.WheelCollider = {}
---@alias CS.UnityEngine.WheelCollider UnityEngine.WheelCollider
CS.UnityEngine.WheelCollider = UnityEngine.WheelCollider

---@return UnityEngine.WheelCollider
function UnityEngine.WheelCollider.New() end
function UnityEngine.WheelCollider:ResetSprungMasses() end
---@param speedThreshold number
---@param stepsBelowThreshold number
---@param stepsAboveThreshold number
function UnityEngine.WheelCollider:ConfigureVehicleSubsteps(speedThreshold, stepsBelowThreshold, stepsAboveThreshold) end
---@param out_pos UnityEngine.Vector3
---@param out_quat UnityEngine.Quaternion
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion
function UnityEngine.WheelCollider:GetWorldPose(out_pos, out_quat) end
---@param out_hit UnityEngine.WheelHit
---@return boolean,UnityEngine.WheelHit
function UnityEngine.WheelCollider:GetGroundHit(out_hit) end

---@class UnityEngine.Experimental.Video.VideoClipPlayable : System.ValueType
UnityEngine.Experimental.Video.VideoClipPlayable = {}
---@alias CS.UnityEngine.Experimental.Video.VideoClipPlayable UnityEngine.Experimental.Video.VideoClipPlayable
CS.UnityEngine.Experimental.Video.VideoClipPlayable = UnityEngine.Experimental.Video.VideoClipPlayable

---@param graph UnityEngine.Playables.PlayableGraph
---@param clip UnityEngine.Video.VideoClip
---@param looping boolean
---@return UnityEngine.Experimental.Video.VideoClipPlayable
function UnityEngine.Experimental.Video.VideoClipPlayable.Create(graph, clip, looping) end
---@return UnityEngine.Playables.PlayableHandle
function UnityEngine.Experimental.Video.VideoClipPlayable:GetHandle() end
---@param other UnityEngine.Experimental.Video.VideoClipPlayable
---@return boolean
function UnityEngine.Experimental.Video.VideoClipPlayable:Equals(other) end
---@return UnityEngine.Video.VideoClip
function UnityEngine.Experimental.Video.VideoClipPlayable:GetClip() end
---@param value UnityEngine.Video.VideoClip
function UnityEngine.Experimental.Video.VideoClipPlayable:SetClip(value) end
---@return boolean
function UnityEngine.Experimental.Video.VideoClipPlayable:GetLooped() end
---@param value boolean
function UnityEngine.Experimental.Video.VideoClipPlayable:SetLooped(value) end
---@return boolean
function UnityEngine.Experimental.Video.VideoClipPlayable:IsPlaying() end
---@return number
function UnityEngine.Experimental.Video.VideoClipPlayable:GetStartDelay() end
---@return number
function UnityEngine.Experimental.Video.VideoClipPlayable:GetPauseDelay() end
---@overload fun(self: UnityEngine.Experimental.Video.VideoClipPlayable, startTime: number, startDelay: number)
---@param startTime number
---@param startDelay number
---@param duration number
function UnityEngine.Experimental.Video.VideoClipPlayable:Seek(startTime, startDelay, duration) end

---@class UnityEngine.Experimental.Video.VideoPlayerExtensions : System.Object
UnityEngine.Experimental.Video.VideoPlayerExtensions = {}
---@alias CS.UnityEngine.Experimental.Video.VideoPlayerExtensions UnityEngine.Experimental.Video.VideoPlayerExtensions
CS.UnityEngine.Experimental.Video.VideoPlayerExtensions = UnityEngine.Experimental.Video.VideoPlayerExtensions

---@param vp UnityEngine.Video.VideoPlayer
---@param trackIndex number
---@return UnityEngine.Experimental.Audio.AudioSampleProvider
function UnityEngine.Experimental.Video.VideoPlayerExtensions.GetAudioSampleProvider(vp, trackIndex) end

---@class UnityEngine.Video.VideoClip : UnityEngine.Object
---@field originalPath string
---@field frameCount number
---@field frameRate number
---@field length number
---@field width number
---@field height number
---@field pixelAspectRatioNumerator number
---@field pixelAspectRatioDenominator number
---@field sRGB boolean
---@field audioTrackCount number
UnityEngine.Video.VideoClip = {}
---@alias CS.UnityEngine.Video.VideoClip UnityEngine.Video.VideoClip
CS.UnityEngine.Video.VideoClip = UnityEngine.Video.VideoClip

---@param audioTrackIdx number
---@return number
function UnityEngine.Video.VideoClip:GetAudioChannelCount(audioTrackIdx) end
---@param audioTrackIdx number
---@return number
function UnityEngine.Video.VideoClip:GetAudioSampleRate(audioTrackIdx) end
---@param audioTrackIdx number
---@return string
function UnityEngine.Video.VideoClip:GetAudioLanguage(audioTrackIdx) end

---@class UnityEngine.Video.VideoRenderMode
---@field CameraFarPlane UnityEngine.Video.VideoRenderMode
---@field CameraNearPlane UnityEngine.Video.VideoRenderMode
---@field RenderTexture UnityEngine.Video.VideoRenderMode
---@field MaterialOverride UnityEngine.Video.VideoRenderMode
---@field APIOnly UnityEngine.Video.VideoRenderMode
UnityEngine.Video.VideoRenderMode = {}
---@alias CS.UnityEngine.Video.VideoRenderMode UnityEngine.Video.VideoRenderMode
CS.UnityEngine.Video.VideoRenderMode = UnityEngine.Video.VideoRenderMode


---@class UnityEngine.Video.Video3DLayout
---@field No3D UnityEngine.Video.Video3DLayout
---@field SideBySide3D UnityEngine.Video.Video3DLayout
---@field OverUnder3D UnityEngine.Video.Video3DLayout
UnityEngine.Video.Video3DLayout = {}
---@alias CS.UnityEngine.Video.Video3DLayout UnityEngine.Video.Video3DLayout
CS.UnityEngine.Video.Video3DLayout = UnityEngine.Video.Video3DLayout


---@class UnityEngine.Video.VideoAspectRatio
---@field NoScaling UnityEngine.Video.VideoAspectRatio
---@field FitVertically UnityEngine.Video.VideoAspectRatio
---@field FitHorizontally UnityEngine.Video.VideoAspectRatio
---@field FitInside UnityEngine.Video.VideoAspectRatio
---@field FitOutside UnityEngine.Video.VideoAspectRatio
---@field Stretch UnityEngine.Video.VideoAspectRatio
UnityEngine.Video.VideoAspectRatio = {}
---@alias CS.UnityEngine.Video.VideoAspectRatio UnityEngine.Video.VideoAspectRatio
CS.UnityEngine.Video.VideoAspectRatio = UnityEngine.Video.VideoAspectRatio


---@class UnityEngine.Video.VideoTimeSource
UnityEngine.Video.VideoTimeSource = {}
---@alias CS.UnityEngine.Video.VideoTimeSource UnityEngine.Video.VideoTimeSource
CS.UnityEngine.Video.VideoTimeSource = UnityEngine.Video.VideoTimeSource


---@class UnityEngine.Video.VideoTimeReference
---@field Freerun UnityEngine.Video.VideoTimeReference
---@field InternalTime UnityEngine.Video.VideoTimeReference
---@field ExternalTime UnityEngine.Video.VideoTimeReference
UnityEngine.Video.VideoTimeReference = {}
---@alias CS.UnityEngine.Video.VideoTimeReference UnityEngine.Video.VideoTimeReference
CS.UnityEngine.Video.VideoTimeReference = UnityEngine.Video.VideoTimeReference


---@class UnityEngine.Video.VideoSource
---@field VideoClip UnityEngine.Video.VideoSource
---@field Url UnityEngine.Video.VideoSource
UnityEngine.Video.VideoSource = {}
---@alias CS.UnityEngine.Video.VideoSource UnityEngine.Video.VideoSource
CS.UnityEngine.Video.VideoSource = UnityEngine.Video.VideoSource


---@class UnityEngine.Video.VideoTimeUpdateMode
---@field DSPTime UnityEngine.Video.VideoTimeUpdateMode
---@field GameTime UnityEngine.Video.VideoTimeUpdateMode
---@field UnscaledGameTime UnityEngine.Video.VideoTimeUpdateMode
UnityEngine.Video.VideoTimeUpdateMode = {}
---@alias CS.UnityEngine.Video.VideoTimeUpdateMode UnityEngine.Video.VideoTimeUpdateMode
CS.UnityEngine.Video.VideoTimeUpdateMode = UnityEngine.Video.VideoTimeUpdateMode


---@class UnityEngine.Video.VideoAudioOutputMode
---@field None UnityEngine.Video.VideoAudioOutputMode
---@field AudioSource UnityEngine.Video.VideoAudioOutputMode
---@field Direct UnityEngine.Video.VideoAudioOutputMode
---@field APIOnly UnityEngine.Video.VideoAudioOutputMode
UnityEngine.Video.VideoAudioOutputMode = {}
---@alias CS.UnityEngine.Video.VideoAudioOutputMode UnityEngine.Video.VideoAudioOutputMode
CS.UnityEngine.Video.VideoAudioOutputMode = UnityEngine.Video.VideoAudioOutputMode


---@class UnityEngine.Video.VideoPlayer : UnityEngine.Behaviour
---@field controlledAudioTrackMaxCount number
---@field source UnityEngine.Video.VideoSource
---@field timeUpdateMode UnityEngine.Video.VideoTimeUpdateMode
---@field url string
---@field clip UnityEngine.Video.VideoClip
---@field renderMode UnityEngine.Video.VideoRenderMode
---@field canSetTimeUpdateMode boolean
---@field targetCamera UnityEngine.Camera
---@field targetTexture UnityEngine.RenderTexture
---@field targetMaterialRenderer UnityEngine.Renderer
---@field targetMaterialProperty string
---@field aspectRatio UnityEngine.Video.VideoAspectRatio
---@field targetCameraAlpha number
---@field targetCamera3DLayout UnityEngine.Video.Video3DLayout
---@field texture UnityEngine.Texture
---@field isPrepared boolean
---@field waitForFirstFrame boolean
---@field playOnAwake boolean
---@field isPlaying boolean
---@field isPaused boolean
---@field canSetTime boolean
---@field time number
---@field frame number
---@field clockTime number
---@field canStep boolean
---@field canSetPlaybackSpeed boolean
---@field playbackSpeed number
---@field isLooping boolean
---@field timeReference UnityEngine.Video.VideoTimeReference
---@field externalReferenceTime number
---@field canSetSkipOnDrop boolean
---@field skipOnDrop boolean
---@field frameCount number
---@field frameRate number
---@field length number
---@field width number
---@field height number
---@field pixelAspectRatioNumerator number
---@field pixelAspectRatioDenominator number
---@field audioTrackCount number
---@field controlledAudioTrackCount number
---@field audioOutputMode UnityEngine.Video.VideoAudioOutputMode
---@field canSetDirectAudioVolume boolean
---@field sendFrameReadyEvents boolean
UnityEngine.Video.VideoPlayer = {}
---@alias CS.UnityEngine.Video.VideoPlayer UnityEngine.Video.VideoPlayer
CS.UnityEngine.Video.VideoPlayer = UnityEngine.Video.VideoPlayer

---@return UnityEngine.Video.VideoPlayer
function UnityEngine.Video.VideoPlayer.New() end
function UnityEngine.Video.VideoPlayer:Prepare() end
function UnityEngine.Video.VideoPlayer:Play() end
function UnityEngine.Video.VideoPlayer:Pause() end
function UnityEngine.Video.VideoPlayer:Stop() end
function UnityEngine.Video.VideoPlayer:StepForward() end
---@param trackIndex number
---@return string
function UnityEngine.Video.VideoPlayer:GetAudioLanguageCode(trackIndex) end
---@param trackIndex number
---@return number
function UnityEngine.Video.VideoPlayer:GetAudioChannelCount(trackIndex) end
---@param trackIndex number
---@return number
function UnityEngine.Video.VideoPlayer:GetAudioSampleRate(trackIndex) end
---@param trackIndex number
---@param enabled boolean
function UnityEngine.Video.VideoPlayer:EnableAudioTrack(trackIndex, enabled) end
---@param trackIndex number
---@return boolean
function UnityEngine.Video.VideoPlayer:IsAudioTrackEnabled(trackIndex) end
---@param trackIndex number
---@return number
function UnityEngine.Video.VideoPlayer:GetDirectAudioVolume(trackIndex) end
---@param trackIndex number
---@param volume number
function UnityEngine.Video.VideoPlayer:SetDirectAudioVolume(trackIndex, volume) end
---@param trackIndex number
---@return boolean
function UnityEngine.Video.VideoPlayer:GetDirectAudioMute(trackIndex) end
---@param trackIndex number
---@param mute boolean
function UnityEngine.Video.VideoPlayer:SetDirectAudioMute(trackIndex, mute) end
---@param trackIndex number
---@return UnityEngine.AudioSource
function UnityEngine.Video.VideoPlayer:GetTargetAudioSource(trackIndex) end
---@param trackIndex number
---@param source UnityEngine.AudioSource
function UnityEngine.Video.VideoPlayer:SetTargetAudioSource(trackIndex, source) end
---@param trackIndex number
---@return UnityEngine.Experimental.Audio.AudioSampleProvider
function UnityEngine.Video.VideoPlayer:GetAudioSampleProvider(trackIndex) end

---@class UnityEngine.Video.VideoPlayer.EventHandler : System.MulticastDelegate
UnityEngine.Video.VideoPlayer.EventHandler = {}
---@alias CS.UnityEngine.Video.VideoPlayer.EventHandler UnityEngine.Video.VideoPlayer.EventHandler
CS.UnityEngine.Video.VideoPlayer.EventHandler = UnityEngine.Video.VideoPlayer.EventHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Video.VideoPlayer.EventHandler
function UnityEngine.Video.VideoPlayer.EventHandler.New(object, method) end
---@param source UnityEngine.Video.VideoPlayer
function UnityEngine.Video.VideoPlayer.EventHandler:Invoke(source) end
---@param source UnityEngine.Video.VideoPlayer
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Video.VideoPlayer.EventHandler:BeginInvoke(source, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Video.VideoPlayer.EventHandler:EndInvoke(result) end

---@class UnityEngine.Video.VideoPlayer.ErrorEventHandler : System.MulticastDelegate
UnityEngine.Video.VideoPlayer.ErrorEventHandler = {}
---@alias CS.UnityEngine.Video.VideoPlayer.ErrorEventHandler UnityEngine.Video.VideoPlayer.ErrorEventHandler
CS.UnityEngine.Video.VideoPlayer.ErrorEventHandler = UnityEngine.Video.VideoPlayer.ErrorEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Video.VideoPlayer.ErrorEventHandler
function UnityEngine.Video.VideoPlayer.ErrorEventHandler.New(object, method) end
---@param source UnityEngine.Video.VideoPlayer
---@param message string
function UnityEngine.Video.VideoPlayer.ErrorEventHandler:Invoke(source, message) end
---@param source UnityEngine.Video.VideoPlayer
---@param message string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Video.VideoPlayer.ErrorEventHandler:BeginInvoke(source, message, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Video.VideoPlayer.ErrorEventHandler:EndInvoke(result) end

---@class UnityEngine.Video.VideoPlayer.FrameReadyEventHandler : System.MulticastDelegate
UnityEngine.Video.VideoPlayer.FrameReadyEventHandler = {}
---@alias CS.UnityEngine.Video.VideoPlayer.FrameReadyEventHandler UnityEngine.Video.VideoPlayer.FrameReadyEventHandler
CS.UnityEngine.Video.VideoPlayer.FrameReadyEventHandler = UnityEngine.Video.VideoPlayer.FrameReadyEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Video.VideoPlayer.FrameReadyEventHandler
function UnityEngine.Video.VideoPlayer.FrameReadyEventHandler.New(object, method) end
---@param source UnityEngine.Video.VideoPlayer
---@param frameIdx number
function UnityEngine.Video.VideoPlayer.FrameReadyEventHandler:Invoke(source, frameIdx) end
---@param source UnityEngine.Video.VideoPlayer
---@param frameIdx number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Video.VideoPlayer.FrameReadyEventHandler:BeginInvoke(source, frameIdx, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Video.VideoPlayer.FrameReadyEventHandler:EndInvoke(result) end

---@class UnityEngine.Video.VideoPlayer.TimeEventHandler : System.MulticastDelegate
UnityEngine.Video.VideoPlayer.TimeEventHandler = {}
---@alias CS.UnityEngine.Video.VideoPlayer.TimeEventHandler UnityEngine.Video.VideoPlayer.TimeEventHandler
CS.UnityEngine.Video.VideoPlayer.TimeEventHandler = UnityEngine.Video.VideoPlayer.TimeEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Video.VideoPlayer.TimeEventHandler
function UnityEngine.Video.VideoPlayer.TimeEventHandler.New(object, method) end
---@param source UnityEngine.Video.VideoPlayer
---@param seconds number
function UnityEngine.Video.VideoPlayer.TimeEventHandler:Invoke(source, seconds) end
---@param source UnityEngine.Video.VideoPlayer
---@param seconds number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Video.VideoPlayer.TimeEventHandler:BeginInvoke(source, seconds, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Video.VideoPlayer.TimeEventHandler:EndInvoke(result) end

---@class UnityEngineInternal.Video.VideoError
---@field NoErr UnityEngineInternal.Video.VideoError
---@field OutOfMemoryErr UnityEngineInternal.Video.VideoError
---@field CantReadFile UnityEngineInternal.Video.VideoError
---@field CantWriteFile UnityEngineInternal.Video.VideoError
---@field BadParams UnityEngineInternal.Video.VideoError
---@field NoData UnityEngineInternal.Video.VideoError
---@field BadPermissions UnityEngineInternal.Video.VideoError
---@field DeviceNotAvailable UnityEngineInternal.Video.VideoError
---@field ResourceNotAvailable UnityEngineInternal.Video.VideoError
---@field NetworkErr UnityEngineInternal.Video.VideoError
UnityEngineInternal.Video.VideoError = {}
---@alias CS.UnityEngineInternal.Video.VideoError UnityEngineInternal.Video.VideoError
CS.UnityEngineInternal.Video.VideoError = UnityEngineInternal.Video.VideoError


---@class UnityEngineInternal.Video.VideoPixelFormat
---@field RGB UnityEngineInternal.Video.VideoPixelFormat
---@field RGBA UnityEngineInternal.Video.VideoPixelFormat
---@field YUV UnityEngineInternal.Video.VideoPixelFormat
---@field YUVA UnityEngineInternal.Video.VideoPixelFormat
UnityEngineInternal.Video.VideoPixelFormat = {}
---@alias CS.UnityEngineInternal.Video.VideoPixelFormat UnityEngineInternal.Video.VideoPixelFormat
CS.UnityEngineInternal.Video.VideoPixelFormat = UnityEngineInternal.Video.VideoPixelFormat


---@class UnityEngineInternal.Video.VideoAlphaLayout
---@field Native UnityEngineInternal.Video.VideoAlphaLayout
---@field Split UnityEngineInternal.Video.VideoAlphaLayout
UnityEngineInternal.Video.VideoAlphaLayout = {}
---@alias CS.UnityEngineInternal.Video.VideoAlphaLayout UnityEngineInternal.Video.VideoAlphaLayout
CS.UnityEngineInternal.Video.VideoAlphaLayout = UnityEngineInternal.Video.VideoAlphaLayout


---@class UnityEngineInternal.Video.VideoPlayback : System.Object
UnityEngineInternal.Video.VideoPlayback = {}
---@alias CS.UnityEngineInternal.Video.VideoPlayback UnityEngineInternal.Video.VideoPlayback
CS.UnityEngineInternal.Video.VideoPlayback = UnityEngineInternal.Video.VideoPlayback

---@return UnityEngineInternal.Video.VideoPlayback
function UnityEngineInternal.Video.VideoPlayback.New() end
function UnityEngineInternal.Video.VideoPlayback:StartPlayback() end
function UnityEngineInternal.Video.VideoPlayback:PausePlayback() end
function UnityEngineInternal.Video.VideoPlayback:StopPlayback() end
---@return UnityEngineInternal.Video.VideoError
function UnityEngineInternal.Video.VideoPlayback:GetStatus() end
---@return boolean
function UnityEngineInternal.Video.VideoPlayback:IsReady() end
---@return boolean
function UnityEngineInternal.Video.VideoPlayback:IsPlaying() end
function UnityEngineInternal.Video.VideoPlayback:Step() end
---@return boolean
function UnityEngineInternal.Video.VideoPlayback:CanStep() end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetWidth() end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetHeight() end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetFrameRate() end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetDuration() end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetFrameCount() end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetPixelAspectRatioNumerator() end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetPixelAspectRatioDenominator() end
---@return UnityEngineInternal.Video.VideoPixelFormat
function UnityEngineInternal.Video.VideoPlayback:GetPixelFormat() end
---@return boolean
function UnityEngineInternal.Video.VideoPlayback:CanNotSkipOnDrop() end
---@param skipOnDrop boolean
function UnityEngineInternal.Video.VideoPlayback:SetSkipOnDrop(skipOnDrop) end
---@param texture UnityEngine.Texture
---@param out_outputFrameNum number
---@return boolean,number
function UnityEngineInternal.Video.VideoPlayback:GetTexture(texture, out_outputFrameNum) end
---@param frameIndex number
---@param seekCompletedCallback UnityEngineInternal.Video.VideoPlayback.Callback
function UnityEngineInternal.Video.VideoPlayback:SeekToFrame(frameIndex, seekCompletedCallback) end
---@param secs number
---@param seekCompletedCallback UnityEngineInternal.Video.VideoPlayback.Callback
function UnityEngineInternal.Video.VideoPlayback:SeekToTime(secs, seekCompletedCallback) end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetPlaybackSpeed() end
---@param value number
function UnityEngineInternal.Video.VideoPlayback:SetPlaybackSpeed(value) end
---@return boolean
function UnityEngineInternal.Video.VideoPlayback:GetLoop() end
---@param value boolean
function UnityEngineInternal.Video.VideoPlayback:SetLoop(value) end
---@param enable boolean
function UnityEngineInternal.Video.VideoPlayback:SetAdjustToLinearSpace(enable) end
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetAudioTrackCount() end
---@param trackIdx number
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetAudioChannelCount(trackIdx) end
---@param trackIdx number
---@return number
function UnityEngineInternal.Video.VideoPlayback:GetAudioSampleRate(trackIdx) end
---@param trackIdx number
---@return string
function UnityEngineInternal.Video.VideoPlayback:GetAudioLanguageCode(trackIdx) end
---@param trackIdx number
---@param enabled boolean
---@param softwareOutput boolean
---@param audioSource UnityEngine.AudioSource
function UnityEngineInternal.Video.VideoPlayback:SetAudioTarget(trackIdx, enabled, softwareOutput, audioSource) end
---@param trackIndex number
---@return UnityEngine.Experimental.Audio.AudioSampleProvider
function UnityEngineInternal.Video.VideoPlayback:GetAudioSampleProvider(trackIndex) end

---@class UnityEngineInternal.Video.VideoPlayback.Callback : System.MulticastDelegate
UnityEngineInternal.Video.VideoPlayback.Callback = {}
---@alias CS.UnityEngineInternal.Video.VideoPlayback.Callback UnityEngineInternal.Video.VideoPlayback.Callback
CS.UnityEngineInternal.Video.VideoPlayback.Callback = UnityEngineInternal.Video.VideoPlayback.Callback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngineInternal.Video.VideoPlayback.Callback
function UnityEngineInternal.Video.VideoPlayback.Callback.New(object, method) end
function UnityEngineInternal.Video.VideoPlayback.Callback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngineInternal.Video.VideoPlayback.Callback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngineInternal.Video.VideoPlayback.Callback:EndInvoke(result) end

---@class UnityEngineInternal.Video.VideoPlaybackMgr : System.Object
---@field videoPlaybackCount number
UnityEngineInternal.Video.VideoPlaybackMgr = {}
---@alias CS.UnityEngineInternal.Video.VideoPlaybackMgr UnityEngineInternal.Video.VideoPlaybackMgr
CS.UnityEngineInternal.Video.VideoPlaybackMgr = UnityEngineInternal.Video.VideoPlaybackMgr

---@return UnityEngineInternal.Video.VideoPlaybackMgr
function UnityEngineInternal.Video.VideoPlaybackMgr.New() end
function UnityEngineInternal.Video.VideoPlaybackMgr:Dispose() end
---@param fileName string
---@param errorCallback UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback
---@param readyCallback UnityEngineInternal.Video.VideoPlaybackMgr.Callback
---@param reachedEndCallback UnityEngineInternal.Video.VideoPlaybackMgr.Callback
---@param splitAlpha boolean
---@return UnityEngineInternal.Video.VideoPlayback
function UnityEngineInternal.Video.VideoPlaybackMgr:CreateVideoPlayback(fileName, errorCallback, readyCallback, reachedEndCallback, splitAlpha) end
---@param playback UnityEngineInternal.Video.VideoPlayback
function UnityEngineInternal.Video.VideoPlaybackMgr:ReleaseVideoPlayback(playback) end
function UnityEngineInternal.Video.VideoPlaybackMgr:Update() end

---@class UnityEngineInternal.Video.VideoPlaybackMgr.Callback : System.MulticastDelegate
UnityEngineInternal.Video.VideoPlaybackMgr.Callback = {}
---@alias CS.UnityEngineInternal.Video.VideoPlaybackMgr.Callback UnityEngineInternal.Video.VideoPlaybackMgr.Callback
CS.UnityEngineInternal.Video.VideoPlaybackMgr.Callback = UnityEngineInternal.Video.VideoPlaybackMgr.Callback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngineInternal.Video.VideoPlaybackMgr.Callback
function UnityEngineInternal.Video.VideoPlaybackMgr.Callback.New(object, method) end
function UnityEngineInternal.Video.VideoPlaybackMgr.Callback:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngineInternal.Video.VideoPlaybackMgr.Callback:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngineInternal.Video.VideoPlaybackMgr.Callback:EndInvoke(result) end

---@class UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback : System.MulticastDelegate
UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback = {}
---@alias CS.UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback
CS.UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback = UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback
function UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback.New(object, method) end
---@param message string
function UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback:Invoke(message) end
---@param message string
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback:BeginInvoke(message, callback, object) end
---@param result System.IAsyncResult
function UnityEngineInternal.Video.VideoPlaybackMgr.MessageCallback:EndInvoke(result) end

---@class UnityEngine.Rendering.VirtualTexturing.System : System.Object
---@field AllMips number
UnityEngine.Rendering.VirtualTexturing.System = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.System UnityEngine.Rendering.VirtualTexturing.System
CS.UnityEngine.Rendering.VirtualTexturing.System = UnityEngine.Rendering.VirtualTexturing.System

function UnityEngine.Rendering.VirtualTexturing.System.Update() end

---@class UnityEngine.Rendering.VirtualTexturing.EditorHelpers : System.Object
UnityEngine.Rendering.VirtualTexturing.EditorHelpers = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.EditorHelpers UnityEngine.Rendering.VirtualTexturing.EditorHelpers
CS.UnityEngine.Rendering.VirtualTexturing.EditorHelpers = UnityEngine.Rendering.VirtualTexturing.EditorHelpers

---@param textures UnityEngine.Texture[]
---@param out_errorMessage string
---@return boolean,string
function UnityEngine.Rendering.VirtualTexturing.EditorHelpers.ValidateTextureStack(textures, out_errorMessage) end
---@return UnityEngine.Experimental.Rendering.GraphicsFormat[]
function UnityEngine.Rendering.VirtualTexturing.EditorHelpers.QuerySupportedFormats() end

---@class UnityEngine.Rendering.VirtualTexturing.EditorHelpers.StackValidationResult : System.ValueType
---@field stackName string
---@field errorMessage string
UnityEngine.Rendering.VirtualTexturing.EditorHelpers.StackValidationResult = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.EditorHelpers.StackValidationResult UnityEngine.Rendering.VirtualTexturing.EditorHelpers.StackValidationResult
CS.UnityEngine.Rendering.VirtualTexturing.EditorHelpers.StackValidationResult = UnityEngine.Rendering.VirtualTexturing.EditorHelpers.StackValidationResult


---@class UnityEngine.Rendering.VirtualTexturing.Debugging : System.Object
---@field debugTilesEnabled boolean
---@field resolvingEnabled boolean
---@field flushEveryTickEnabled boolean
---@field mipPreloadedTextureCount number
UnityEngine.Rendering.VirtualTexturing.Debugging = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Debugging UnityEngine.Rendering.VirtualTexturing.Debugging
CS.UnityEngine.Rendering.VirtualTexturing.Debugging = UnityEngine.Rendering.VirtualTexturing.Debugging

---@return number
function UnityEngine.Rendering.VirtualTexturing.Debugging.GetNumHandles() end
---@param out_debugHandle UnityEngine.Rendering.VirtualTexturing.Debugging.Handle
---@param index number
---@return ,UnityEngine.Rendering.VirtualTexturing.Debugging.Handle
function UnityEngine.Rendering.VirtualTexturing.Debugging.GrabHandleInfo(out_debugHandle, index) end
---@return string
function UnityEngine.Rendering.VirtualTexturing.Debugging.GetInfoDump() end

---@class UnityEngine.Rendering.VirtualTexturing.Debugging.Handle : System.ValueType
---@field handle number
---@field group string
---@field name string
---@field numLayers number
---@field material UnityEngine.Material
UnityEngine.Rendering.VirtualTexturing.Debugging.Handle = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Debugging.Handle UnityEngine.Rendering.VirtualTexturing.Debugging.Handle
CS.UnityEngine.Rendering.VirtualTexturing.Debugging.Handle = UnityEngine.Rendering.VirtualTexturing.Debugging.Handle


---@class UnityEngine.Rendering.VirtualTexturing.Resolver : System.Object
---@field CurrentWidth number
---@field CurrentHeight number
UnityEngine.Rendering.VirtualTexturing.Resolver = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Resolver UnityEngine.Rendering.VirtualTexturing.Resolver
CS.UnityEngine.Rendering.VirtualTexturing.Resolver = UnityEngine.Rendering.VirtualTexturing.Resolver

---@return UnityEngine.Rendering.VirtualTexturing.Resolver
function UnityEngine.Rendering.VirtualTexturing.Resolver.New() end
function UnityEngine.Rendering.VirtualTexturing.Resolver:Dispose() end
---@param width number
---@param height number
function UnityEngine.Rendering.VirtualTexturing.Resolver:UpdateSize(width, height) end
---@overload fun(self: UnityEngine.Rendering.VirtualTexturing.Resolver, cmd: UnityEngine.Rendering.CommandBuffer, rt: UnityEngine.Rendering.RenderTargetIdentifier)
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
---@param x number
---@param width number
---@param y number
---@param height number
---@param mip number
---@param slice number
function UnityEngine.Rendering.VirtualTexturing.Resolver:Process(cmd, rt, x, width, y, height, mip, slice) end

---@class UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting : System.ValueType
---@field format UnityEngine.Experimental.Rendering.GraphicsFormat
---@field sizeInMegaBytes number
UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting
CS.UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting = UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting


---@class UnityEngine.Rendering.VirtualTexturing.FilterMode
---@field Bilinear UnityEngine.Rendering.VirtualTexturing.FilterMode
---@field Trilinear UnityEngine.Rendering.VirtualTexturing.FilterMode
UnityEngine.Rendering.VirtualTexturing.FilterMode = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.FilterMode UnityEngine.Rendering.VirtualTexturing.FilterMode
CS.UnityEngine.Rendering.VirtualTexturing.FilterMode = UnityEngine.Rendering.VirtualTexturing.FilterMode


---@class UnityEngine.Rendering.VirtualTexturing.Streaming : System.Object
UnityEngine.Rendering.VirtualTexturing.Streaming = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Streaming UnityEngine.Rendering.VirtualTexturing.Streaming
CS.UnityEngine.Rendering.VirtualTexturing.Streaming = UnityEngine.Rendering.VirtualTexturing.Streaming

---@param mat UnityEngine.Material
---@param stackNameId number
---@param r UnityEngine.Rect
---@param mipMap number
---@param numMips number
function UnityEngine.Rendering.VirtualTexturing.Streaming.RequestRegion(mat, stackNameId, r, mipMap, numMips) end
---@param mat UnityEngine.Material
---@param stackNameId number
---@param out_width number
---@param out_height number
---@return ,number,number
function UnityEngine.Rendering.VirtualTexturing.Streaming.GetTextureStackSize(mat, stackNameId, out_width, out_height) end
---@param sizeInMegabytes number
function UnityEngine.Rendering.VirtualTexturing.Streaming.SetCPUCacheSize(sizeInMegabytes) end
---@return number
function UnityEngine.Rendering.VirtualTexturing.Streaming.GetCPUCacheSize() end
---@param cacheSettings UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting[]
function UnityEngine.Rendering.VirtualTexturing.Streaming.SetGPUCacheSettings(cacheSettings) end
---@return UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting[]
function UnityEngine.Rendering.VirtualTexturing.Streaming.GetGPUCacheSettings() end
---@param texturesPerFrame number
---@param mipCount number
function UnityEngine.Rendering.VirtualTexturing.Streaming.EnableMipPreloading(texturesPerFrame, mipCount) end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural : System.Object
UnityEngine.Rendering.VirtualTexturing.Procedural = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural UnityEngine.Rendering.VirtualTexturing.Procedural
CS.UnityEngine.Rendering.VirtualTexturing.Procedural = UnityEngine.Rendering.VirtualTexturing.Procedural

---@param guid System.Guid
---@param value number
function UnityEngine.Rendering.VirtualTexturing.Procedural.SetDebugFlagInteger(guid, value) end
---@param guid System.Guid
---@param value number
function UnityEngine.Rendering.VirtualTexturing.Procedural.SetDebugFlagDouble(guid, value) end
---@param sizeInMegabytes number
function UnityEngine.Rendering.VirtualTexturing.Procedural.SetCPUCacheSize(sizeInMegabytes) end
---@return number
function UnityEngine.Rendering.VirtualTexturing.Procedural.GetCPUCacheSize() end
---@param cacheSettings UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting[]
function UnityEngine.Rendering.VirtualTexturing.Procedural.SetGPUCacheSettings(cacheSettings) end
---@return UnityEngine.Rendering.VirtualTexturing.GPUCacheSetting[]
function UnityEngine.Rendering.VirtualTexturing.Procedural.GetGPUCacheSettings() end
---@param tilesPerFrame number
function UnityEngine.Rendering.VirtualTexturing.Procedural.SetGPUCacheStagingAreaCapacity(tilesPerFrame) end
---@return number
function UnityEngine.Rendering.VirtualTexturing.Procedural.GetGPUCacheStagingAreaCapacity() end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.Binding : System.Object
UnityEngine.Rendering.VirtualTexturing.Procedural.Binding = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.Binding UnityEngine.Rendering.VirtualTexturing.Procedural.Binding
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.Binding = UnityEngine.Rendering.VirtualTexturing.Procedural.Binding

---@param handle number
---@param r UnityEngine.Rect
---@param mipMap number
---@param numMips number
function UnityEngine.Rendering.VirtualTexturing.Procedural.Binding.EvictRegion(handle, r, mipMap, numMips) end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters : System.ValueType
---@field MaxNumLayers number
---@field MaxRequestsPerFrameSupported number
---@field width number
---@field height number
---@field maxActiveRequests number
---@field tilesize number
---@field layers UnityEngine.Experimental.Rendering.GraphicsFormat[]
---@field filterMode UnityEngine.Rendering.VirtualTexturing.FilterMode
UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters = UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters


---@class UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload : System.ValueType
UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload = UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload

---@overload fun(self: UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload, obj: System.Object) : boolean
---@param other UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload
---@return boolean
function UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload:Equals(other) end
---@return number
function UnityEngine.Rendering.VirtualTexturing.Procedural.RequestHandlePayload:GetHashCode() end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle : System.ValueType
UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle = UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle

---@overload fun(requestHandles: Unity.Collections.NativeSlice[UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle[T]], status: Unity.Collections.NativeSlice)
---@param requestHandles Unity.Collections.NativeSlice[UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle[T]]
---@param status Unity.Collections.NativeSlice
---@param fenceBuffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle.CompleteRequests(requestHandles, status, fenceBuffer) end
---@overload fun(handles: Unity.Collections.NativeSlice[UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle[T]], requests: Unity.Collections.NativeSlice[T])
---@return T
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle:GetRequestParameters() end
---@overload fun(self: UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle, obj: System.Object) : boolean
---@param other UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle
---@return boolean
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle:Equals(other) end
---@return number
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle:GetHashCode() end
---@overload fun(self: UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle, status: UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus)
---@param status UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus
---@param fenceBuffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle:CompleteRequest(status, fenceBuffer) end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters : System.ValueType
---@field destX number
---@field destY number
---@field dest UnityEngine.Rendering.RenderTargetIdentifier
UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters = UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters

---@return number
function UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters:GetWidth() end
---@return number
function UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters:GetHeight() end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestLayerParameters : System.ValueType
---@field scanlineSize number
---@field mipScanlineSize number
---@field requiresCachedMip boolean
UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestLayerParameters = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestLayerParameters UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestLayerParameters
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestLayerParameters = UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestLayerParameters


---@class UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestParameters : System.ValueType
---@field level number
---@field x number
---@field y number
---@field width number
---@field height number
---@field numLayers number
UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestParameters = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestParameters UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestParameters
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestParameters = UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestParameters

---@param index number
---@return UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestLayerParameters
function UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStackRequestParameters:GetLayer(index) end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestParameters : System.ValueType
---@field level number
---@field x number
---@field y number
---@field width number
---@field height number
---@field numLayers number
UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestParameters = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestParameters UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestParameters
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestParameters = UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestParameters

---@param index number
---@return UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestLayerParameters
function UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStackRequestParameters:GetLayer(index) end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus
---@field StatusFree UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus
---@field StatusRequested UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus
---@field StatusProcessing UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus
---@field StatusComplete UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus
---@field StatusDropped UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus
UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus = UnityEngine.Rendering.VirtualTexturing.Procedural.ProceduralTextureStackRequestStatus


---@class UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus
---@field Dropped UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus
---@field Generated UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus
UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus = UnityEngine.Rendering.VirtualTexturing.Procedural.RequestStatus


---@class UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase : System.Object
---@field borderSize number
---@field AllMips number
UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase = UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase

---@param _name string
---@param _creationParams UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters
---@param gpuGeneration boolean
---@return UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase.New(_name, _creationParams, gpuGeneration) end
---@param requestHandles Unity.Collections.NativeSlice[UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackRequestHandle[T]]
---@return number
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:PopRequests(requestHandles) end
---@return boolean
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:IsValid() end
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:Dispose() end
---@param mpb UnityEngine.MaterialPropertyBlock
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:BindToMaterialPropertyBlock(mpb) end
---@param mat UnityEngine.Material
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:BindToMaterial(mat) end
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:BindGlobally() end
---@param r UnityEngine.Rect
---@param mipMap number
---@param numMips number
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:RequestRegion(r, mipMap, numMips) end
---@param r UnityEngine.Rect
---@param mipMap number
---@param numMips number
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:InvalidateRegion(r, mipMap, numMips) end
---@param r UnityEngine.Rect
---@param mipMap number
---@param numMips number
function UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase:EvictRegion(r, mipMap, numMips) end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack : UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase
UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack = UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack

---@param _name string
---@param creationParams UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters
---@return UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack
function UnityEngine.Rendering.VirtualTexturing.Procedural.GPUTextureStack.New(_name, creationParams) end

---@class UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack : UnityEngine.Rendering.VirtualTexturing.Procedural.TextureStackBase
UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack
CS.UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack = UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack

---@param _name string
---@param creationParams UnityEngine.Rendering.VirtualTexturing.Procedural.CreationParameters
---@return UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack
function UnityEngine.Rendering.VirtualTexturing.Procedural.CPUTextureStack.New(_name, creationParams) end

---@class UnityEngine.WindZoneMode
---@field Directional UnityEngine.WindZoneMode
---@field Spherical UnityEngine.WindZoneMode
UnityEngine.WindZoneMode = {}
---@alias CS.UnityEngine.WindZoneMode UnityEngine.WindZoneMode
CS.UnityEngine.WindZoneMode = UnityEngine.WindZoneMode


---@class UnityEngine.WindZone : UnityEngine.Component
---@field mode UnityEngine.WindZoneMode
---@field radius number
---@field windMain number
---@field windTurbulence number
---@field windPulseMagnitude number
---@field windPulseFrequency number
UnityEngine.WindZone = {}
---@alias CS.UnityEngine.WindZone UnityEngine.WindZone
CS.UnityEngine.WindZone = UnityEngine.WindZone

---@return UnityEngine.WindZone
function UnityEngine.WindZone.New() end

---@class UnityEngine.XR.InputTracking : System.Object
UnityEngine.XR.InputTracking = {}
---@alias CS.UnityEngine.XR.InputTracking UnityEngine.XR.InputTracking
CS.UnityEngine.XR.InputTracking = UnityEngine.XR.InputTracking

---@param nodeStates System.Collections.Generic.List
function UnityEngine.XR.InputTracking.GetNodeStates(nodeStates) end

---@class UnityEngine.XR.InputTracking.TrackingStateEventType
---@field NodeAdded UnityEngine.XR.InputTracking.TrackingStateEventType
---@field NodeRemoved UnityEngine.XR.InputTracking.TrackingStateEventType
---@field TrackingAcquired UnityEngine.XR.InputTracking.TrackingStateEventType
---@field TrackingLost UnityEngine.XR.InputTracking.TrackingStateEventType
UnityEngine.XR.InputTracking.TrackingStateEventType = {}
---@alias CS.UnityEngine.XR.InputTracking.TrackingStateEventType UnityEngine.XR.InputTracking.TrackingStateEventType
CS.UnityEngine.XR.InputTracking.TrackingStateEventType = UnityEngine.XR.InputTracking.TrackingStateEventType


---@class UnityEngine.XR.XRNode
---@field LeftEye UnityEngine.XR.XRNode
---@field RightEye UnityEngine.XR.XRNode
---@field CenterEye UnityEngine.XR.XRNode
---@field Head UnityEngine.XR.XRNode
---@field LeftHand UnityEngine.XR.XRNode
---@field RightHand UnityEngine.XR.XRNode
---@field GameController UnityEngine.XR.XRNode
---@field TrackingReference UnityEngine.XR.XRNode
---@field HardwareTracker UnityEngine.XR.XRNode
UnityEngine.XR.XRNode = {}
---@alias CS.UnityEngine.XR.XRNode UnityEngine.XR.XRNode
CS.UnityEngine.XR.XRNode = UnityEngine.XR.XRNode


---@class UnityEngine.XR.AvailableTrackingData
---@field None UnityEngine.XR.AvailableTrackingData
---@field PositionAvailable UnityEngine.XR.AvailableTrackingData
---@field RotationAvailable UnityEngine.XR.AvailableTrackingData
---@field VelocityAvailable UnityEngine.XR.AvailableTrackingData
---@field AngularVelocityAvailable UnityEngine.XR.AvailableTrackingData
---@field AccelerationAvailable UnityEngine.XR.AvailableTrackingData
---@field AngularAccelerationAvailable UnityEngine.XR.AvailableTrackingData
UnityEngine.XR.AvailableTrackingData = {}
---@alias CS.UnityEngine.XR.AvailableTrackingData UnityEngine.XR.AvailableTrackingData
CS.UnityEngine.XR.AvailableTrackingData = UnityEngine.XR.AvailableTrackingData


---@class UnityEngine.XR.XRNodeState : System.ValueType
---@field uniqueID number
---@field nodeType UnityEngine.XR.XRNode
---@field tracked boolean
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field velocity UnityEngine.Vector3
---@field angularVelocity UnityEngine.Vector3
---@field acceleration UnityEngine.Vector3
---@field angularAcceleration UnityEngine.Vector3
UnityEngine.XR.XRNodeState = {}
---@alias CS.UnityEngine.XR.XRNodeState UnityEngine.XR.XRNodeState
CS.UnityEngine.XR.XRNodeState = UnityEngine.XR.XRNodeState

---@param out_position UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.XRNodeState:TryGetPosition(out_position) end
---@param out_rotation UnityEngine.Quaternion
---@return boolean,UnityEngine.Quaternion
function UnityEngine.XR.XRNodeState:TryGetRotation(out_rotation) end
---@param out_velocity UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.XRNodeState:TryGetVelocity(out_velocity) end
---@param out_angularVelocity UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.XRNodeState:TryGetAngularVelocity(out_angularVelocity) end
---@param out_acceleration UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.XRNodeState:TryGetAcceleration(out_acceleration) end
---@param out_angularAcceleration UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.XRNodeState:TryGetAngularAcceleration(out_angularAcceleration) end

---@class UnityEngine.XR.HapticCapabilities : System.ValueType
---@field numChannels number
---@field supportsImpulse boolean
---@field supportsBuffer boolean
---@field bufferFrequencyHz number
---@field bufferMaxSize number
---@field bufferOptimalSize number
UnityEngine.XR.HapticCapabilities = {}
---@alias CS.UnityEngine.XR.HapticCapabilities UnityEngine.XR.HapticCapabilities
CS.UnityEngine.XR.HapticCapabilities = UnityEngine.XR.HapticCapabilities

---@overload fun(self: UnityEngine.XR.HapticCapabilities, obj: System.Object) : boolean
---@param other UnityEngine.XR.HapticCapabilities
---@return boolean
function UnityEngine.XR.HapticCapabilities:Equals(other) end
---@return number
function UnityEngine.XR.HapticCapabilities:GetHashCode() end

---@class UnityEngine.XR.InputFeatureType
---@field Custom UnityEngine.XR.InputFeatureType
---@field Binary UnityEngine.XR.InputFeatureType
---@field DiscreteStates UnityEngine.XR.InputFeatureType
---@field Axis1D UnityEngine.XR.InputFeatureType
---@field Axis2D UnityEngine.XR.InputFeatureType
---@field Axis3D UnityEngine.XR.InputFeatureType
---@field Rotation UnityEngine.XR.InputFeatureType
---@field Hand UnityEngine.XR.InputFeatureType
---@field Bone UnityEngine.XR.InputFeatureType
---@field Eyes UnityEngine.XR.InputFeatureType
---@field kUnityXRInputFeatureTypeInvalid UnityEngine.XR.InputFeatureType
UnityEngine.XR.InputFeatureType = {}
---@alias CS.UnityEngine.XR.InputFeatureType UnityEngine.XR.InputFeatureType
CS.UnityEngine.XR.InputFeatureType = UnityEngine.XR.InputFeatureType


---@class UnityEngine.XR.ConnectionChangeType
---@field Connected UnityEngine.XR.ConnectionChangeType
---@field Disconnected UnityEngine.XR.ConnectionChangeType
---@field ConfigChange UnityEngine.XR.ConnectionChangeType
UnityEngine.XR.ConnectionChangeType = {}
---@alias CS.UnityEngine.XR.ConnectionChangeType UnityEngine.XR.ConnectionChangeType
CS.UnityEngine.XR.ConnectionChangeType = UnityEngine.XR.ConnectionChangeType


---@class UnityEngine.XR.InputDeviceRole
---@field Unknown UnityEngine.XR.InputDeviceRole
---@field Generic UnityEngine.XR.InputDeviceRole
---@field LeftHanded UnityEngine.XR.InputDeviceRole
---@field RightHanded UnityEngine.XR.InputDeviceRole
---@field GameController UnityEngine.XR.InputDeviceRole
---@field TrackingReference UnityEngine.XR.InputDeviceRole
---@field HardwareTracker UnityEngine.XR.InputDeviceRole
---@field LegacyController UnityEngine.XR.InputDeviceRole
UnityEngine.XR.InputDeviceRole = {}
---@alias CS.UnityEngine.XR.InputDeviceRole UnityEngine.XR.InputDeviceRole
CS.UnityEngine.XR.InputDeviceRole = UnityEngine.XR.InputDeviceRole


---@class UnityEngine.XR.InputDeviceCharacteristics
---@field None UnityEngine.XR.InputDeviceCharacteristics
---@field HeadMounted UnityEngine.XR.InputDeviceCharacteristics
---@field Camera UnityEngine.XR.InputDeviceCharacteristics
---@field HeldInHand UnityEngine.XR.InputDeviceCharacteristics
---@field HandTracking UnityEngine.XR.InputDeviceCharacteristics
---@field EyeTracking UnityEngine.XR.InputDeviceCharacteristics
---@field TrackedDevice UnityEngine.XR.InputDeviceCharacteristics
---@field Controller UnityEngine.XR.InputDeviceCharacteristics
---@field TrackingReference UnityEngine.XR.InputDeviceCharacteristics
---@field Left UnityEngine.XR.InputDeviceCharacteristics
---@field Right UnityEngine.XR.InputDeviceCharacteristics
---@field Simulated6DOF UnityEngine.XR.InputDeviceCharacteristics
UnityEngine.XR.InputDeviceCharacteristics = {}
---@alias CS.UnityEngine.XR.InputDeviceCharacteristics UnityEngine.XR.InputDeviceCharacteristics
CS.UnityEngine.XR.InputDeviceCharacteristics = UnityEngine.XR.InputDeviceCharacteristics


---@class UnityEngine.XR.InputTrackingState
---@field None UnityEngine.XR.InputTrackingState
---@field Position UnityEngine.XR.InputTrackingState
---@field Rotation UnityEngine.XR.InputTrackingState
---@field Velocity UnityEngine.XR.InputTrackingState
---@field AngularVelocity UnityEngine.XR.InputTrackingState
---@field Acceleration UnityEngine.XR.InputTrackingState
---@field AngularAcceleration UnityEngine.XR.InputTrackingState
---@field All UnityEngine.XR.InputTrackingState
UnityEngine.XR.InputTrackingState = {}
---@alias CS.UnityEngine.XR.InputTrackingState UnityEngine.XR.InputTrackingState
CS.UnityEngine.XR.InputTrackingState = UnityEngine.XR.InputTrackingState


---@class UnityEngine.XR.InputFeatureUsage : System.ValueType
---@field name string
---@field type System.Type
UnityEngine.XR.InputFeatureUsage = {}
---@alias CS.UnityEngine.XR.InputFeatureUsage UnityEngine.XR.InputFeatureUsage
CS.UnityEngine.XR.InputFeatureUsage = UnityEngine.XR.InputFeatureUsage

---@overload fun(self: UnityEngine.XR.InputFeatureUsage, obj: System.Object) : boolean
---@param other UnityEngine.XR.InputFeatureUsage
---@return boolean
function UnityEngine.XR.InputFeatureUsage:Equals(other) end
---@return number
function UnityEngine.XR.InputFeatureUsage:GetHashCode() end

---@class UnityEngine.XR.InputFeatureUsage : System.ValueType
---@field name string
UnityEngine.XR.InputFeatureUsage = {}
---@alias CS.UnityEngine.XR.InputFeatureUsage UnityEngine.XR.InputFeatureUsage
CS.UnityEngine.XR.InputFeatureUsage = UnityEngine.XR.InputFeatureUsage

---@param usageName string
---@return UnityEngine.XR.InputFeatureUsage
function UnityEngine.XR.InputFeatureUsage.New(usageName) end
---@overload fun(self: UnityEngine.XR.InputFeatureUsage, obj: System.Object) : boolean
---@param other UnityEngine.XR.InputFeatureUsage
---@return boolean
function UnityEngine.XR.InputFeatureUsage:Equals(other) end
---@return number
function UnityEngine.XR.InputFeatureUsage:GetHashCode() end

---@class UnityEngine.XR.CommonUsages : System.Object
---@field isTracked UnityEngine.XR.InputFeatureUsage
---@field primaryButton UnityEngine.XR.InputFeatureUsage
---@field primaryTouch UnityEngine.XR.InputFeatureUsage
---@field secondaryButton UnityEngine.XR.InputFeatureUsage
---@field secondaryTouch UnityEngine.XR.InputFeatureUsage
---@field gripButton UnityEngine.XR.InputFeatureUsage
---@field triggerButton UnityEngine.XR.InputFeatureUsage
---@field menuButton UnityEngine.XR.InputFeatureUsage
---@field primary2DAxisClick UnityEngine.XR.InputFeatureUsage
---@field primary2DAxisTouch UnityEngine.XR.InputFeatureUsage
---@field secondary2DAxisClick UnityEngine.XR.InputFeatureUsage
---@field secondary2DAxisTouch UnityEngine.XR.InputFeatureUsage
---@field userPresence UnityEngine.XR.InputFeatureUsage
---@field trackingState UnityEngine.XR.InputFeatureUsage
---@field batteryLevel UnityEngine.XR.InputFeatureUsage
---@field trigger UnityEngine.XR.InputFeatureUsage
---@field grip UnityEngine.XR.InputFeatureUsage
---@field primary2DAxis UnityEngine.XR.InputFeatureUsage
---@field secondary2DAxis UnityEngine.XR.InputFeatureUsage
---@field devicePosition UnityEngine.XR.InputFeatureUsage
---@field leftEyePosition UnityEngine.XR.InputFeatureUsage
---@field rightEyePosition UnityEngine.XR.InputFeatureUsage
---@field centerEyePosition UnityEngine.XR.InputFeatureUsage
---@field colorCameraPosition UnityEngine.XR.InputFeatureUsage
---@field deviceVelocity UnityEngine.XR.InputFeatureUsage
---@field deviceAngularVelocity UnityEngine.XR.InputFeatureUsage
---@field leftEyeVelocity UnityEngine.XR.InputFeatureUsage
---@field leftEyeAngularVelocity UnityEngine.XR.InputFeatureUsage
---@field rightEyeVelocity UnityEngine.XR.InputFeatureUsage
---@field rightEyeAngularVelocity UnityEngine.XR.InputFeatureUsage
---@field centerEyeVelocity UnityEngine.XR.InputFeatureUsage
---@field centerEyeAngularVelocity UnityEngine.XR.InputFeatureUsage
---@field colorCameraVelocity UnityEngine.XR.InputFeatureUsage
---@field colorCameraAngularVelocity UnityEngine.XR.InputFeatureUsage
---@field deviceAcceleration UnityEngine.XR.InputFeatureUsage
---@field deviceAngularAcceleration UnityEngine.XR.InputFeatureUsage
---@field leftEyeAcceleration UnityEngine.XR.InputFeatureUsage
---@field leftEyeAngularAcceleration UnityEngine.XR.InputFeatureUsage
---@field rightEyeAcceleration UnityEngine.XR.InputFeatureUsage
---@field rightEyeAngularAcceleration UnityEngine.XR.InputFeatureUsage
---@field centerEyeAcceleration UnityEngine.XR.InputFeatureUsage
---@field centerEyeAngularAcceleration UnityEngine.XR.InputFeatureUsage
---@field colorCameraAcceleration UnityEngine.XR.InputFeatureUsage
---@field colorCameraAngularAcceleration UnityEngine.XR.InputFeatureUsage
---@field deviceRotation UnityEngine.XR.InputFeatureUsage
---@field leftEyeRotation UnityEngine.XR.InputFeatureUsage
---@field rightEyeRotation UnityEngine.XR.InputFeatureUsage
---@field centerEyeRotation UnityEngine.XR.InputFeatureUsage
---@field colorCameraRotation UnityEngine.XR.InputFeatureUsage
---@field handData UnityEngine.XR.InputFeatureUsage
---@field eyesData UnityEngine.XR.InputFeatureUsage
UnityEngine.XR.CommonUsages = {}
---@alias CS.UnityEngine.XR.CommonUsages UnityEngine.XR.CommonUsages
CS.UnityEngine.XR.CommonUsages = UnityEngine.XR.CommonUsages


---@class UnityEngine.XR.InputDevice : System.ValueType
---@field subsystem UnityEngine.XR.XRInputSubsystem
---@field isValid boolean
---@field name string
---@field manufacturer string
---@field serialNumber string
---@field characteristics UnityEngine.XR.InputDeviceCharacteristics
UnityEngine.XR.InputDevice = {}
---@alias CS.UnityEngine.XR.InputDevice UnityEngine.XR.InputDevice
CS.UnityEngine.XR.InputDevice = UnityEngine.XR.InputDevice

---@param channel number
---@param amplitude number
---@param duration number
---@return boolean
function UnityEngine.XR.InputDevice:SendHapticImpulse(channel, amplitude, duration) end
---@param channel number
---@param buffer System.Byte[]
---@return boolean
function UnityEngine.XR.InputDevice:SendHapticBuffer(channel, buffer) end
---@param out_capabilities UnityEngine.XR.HapticCapabilities
---@return boolean,UnityEngine.XR.HapticCapabilities
function UnityEngine.XR.InputDevice:TryGetHapticCapabilities(out_capabilities) end
function UnityEngine.XR.InputDevice:StopHaptics() end
---@param featureUsages System.Collections.Generic.List
---@return boolean
function UnityEngine.XR.InputDevice:TryGetFeatureUsages(featureUsages) end
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: boolean) : boolean, boolean
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: UnityEngine.Vector2) : boolean, UnityEngine.Vector2
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: UnityEngine.Vector3) : boolean, UnityEngine.Vector3
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: UnityEngine.Quaternion) : boolean, UnityEngine.Quaternion
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: UnityEngine.XR.Hand) : boolean, UnityEngine.XR.Hand
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: UnityEngine.XR.Bone) : boolean, UnityEngine.XR.Bone
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: UnityEngine.XR.Eyes) : boolean, UnityEngine.XR.Eyes
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, value: System.Byte[]) : boolean
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, out_value: UnityEngine.XR.InputTrackingState) : boolean, UnityEngine.XR.InputTrackingState
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, time: System.DateTime, out_value: boolean) : boolean, boolean
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, time: System.DateTime, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, time: System.DateTime, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, time: System.DateTime, out_value: UnityEngine.Vector2) : boolean, UnityEngine.Vector2
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, time: System.DateTime, out_value: UnityEngine.Vector3) : boolean, UnityEngine.Vector3
---@overload fun(self: UnityEngine.XR.InputDevice, usage: UnityEngine.XR.InputFeatureUsage, time: System.DateTime, out_value: UnityEngine.Quaternion) : boolean, UnityEngine.Quaternion
---@param usage UnityEngine.XR.InputFeatureUsage
---@param time System.DateTime
---@param out_value UnityEngine.XR.InputTrackingState
---@return boolean,UnityEngine.XR.InputTrackingState
function UnityEngine.XR.InputDevice:TryGetFeatureValue(usage, time, out_value) end
---@overload fun(self: UnityEngine.XR.InputDevice, obj: System.Object) : boolean
---@param other UnityEngine.XR.InputDevice
---@return boolean
function UnityEngine.XR.InputDevice:Equals(other) end
---@return number
function UnityEngine.XR.InputDevice:GetHashCode() end

---@class UnityEngine.XR.TimeConverter : System.Object
---@field now System.DateTime
UnityEngine.XR.TimeConverter = {}
---@alias CS.UnityEngine.XR.TimeConverter UnityEngine.XR.TimeConverter
CS.UnityEngine.XR.TimeConverter = UnityEngine.XR.TimeConverter

---@param date System.DateTime
---@return number
function UnityEngine.XR.TimeConverter.LocalDateTimeToUnixTimeMilliseconds(date) end
---@param unixTimeInMilliseconds number
---@return System.DateTime
function UnityEngine.XR.TimeConverter.UnixTimeMillisecondsToLocalDateTime(unixTimeInMilliseconds) end

---@class UnityEngine.XR.HandFinger
---@field Thumb UnityEngine.XR.HandFinger
---@field Index UnityEngine.XR.HandFinger
---@field Middle UnityEngine.XR.HandFinger
---@field Ring UnityEngine.XR.HandFinger
---@field Pinky UnityEngine.XR.HandFinger
UnityEngine.XR.HandFinger = {}
---@alias CS.UnityEngine.XR.HandFinger UnityEngine.XR.HandFinger
CS.UnityEngine.XR.HandFinger = UnityEngine.XR.HandFinger


---@class UnityEngine.XR.Hand : System.ValueType
UnityEngine.XR.Hand = {}
---@alias CS.UnityEngine.XR.Hand UnityEngine.XR.Hand
CS.UnityEngine.XR.Hand = UnityEngine.XR.Hand

---@param out_boneOut UnityEngine.XR.Bone
---@return boolean,UnityEngine.XR.Bone
function UnityEngine.XR.Hand:TryGetRootBone(out_boneOut) end
---@param finger UnityEngine.XR.HandFinger
---@param bonesOut System.Collections.Generic.List
---@return boolean
function UnityEngine.XR.Hand:TryGetFingerBones(finger, bonesOut) end
---@overload fun(self: UnityEngine.XR.Hand, obj: System.Object) : boolean
---@param other UnityEngine.XR.Hand
---@return boolean
function UnityEngine.XR.Hand:Equals(other) end
---@return number
function UnityEngine.XR.Hand:GetHashCode() end

---@class UnityEngine.XR.EyeSide
---@field Left UnityEngine.XR.EyeSide
---@field Right UnityEngine.XR.EyeSide
UnityEngine.XR.EyeSide = {}
---@alias CS.UnityEngine.XR.EyeSide UnityEngine.XR.EyeSide
CS.UnityEngine.XR.EyeSide = UnityEngine.XR.EyeSide


---@class UnityEngine.XR.Eyes : System.ValueType
UnityEngine.XR.Eyes = {}
---@alias CS.UnityEngine.XR.Eyes UnityEngine.XR.Eyes
CS.UnityEngine.XR.Eyes = UnityEngine.XR.Eyes

---@param out_position UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.Eyes:TryGetLeftEyePosition(out_position) end
---@param out_position UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.Eyes:TryGetRightEyePosition(out_position) end
---@param out_rotation UnityEngine.Quaternion
---@return boolean,UnityEngine.Quaternion
function UnityEngine.XR.Eyes:TryGetLeftEyeRotation(out_rotation) end
---@param out_rotation UnityEngine.Quaternion
---@return boolean,UnityEngine.Quaternion
function UnityEngine.XR.Eyes:TryGetRightEyeRotation(out_rotation) end
---@param out_fixationPoint UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.Eyes:TryGetFixationPoint(out_fixationPoint) end
---@param out_openAmount number
---@return boolean,number
function UnityEngine.XR.Eyes:TryGetLeftEyeOpenAmount(out_openAmount) end
---@param out_openAmount number
---@return boolean,number
function UnityEngine.XR.Eyes:TryGetRightEyeOpenAmount(out_openAmount) end
---@overload fun(self: UnityEngine.XR.Eyes, obj: System.Object) : boolean
---@param other UnityEngine.XR.Eyes
---@return boolean
function UnityEngine.XR.Eyes:Equals(other) end
---@return number
function UnityEngine.XR.Eyes:GetHashCode() end

---@class UnityEngine.XR.Bone : System.ValueType
UnityEngine.XR.Bone = {}
---@alias CS.UnityEngine.XR.Bone UnityEngine.XR.Bone
CS.UnityEngine.XR.Bone = UnityEngine.XR.Bone

---@param out_position UnityEngine.Vector3
---@return boolean,UnityEngine.Vector3
function UnityEngine.XR.Bone:TryGetPosition(out_position) end
---@param out_rotation UnityEngine.Quaternion
---@return boolean,UnityEngine.Quaternion
function UnityEngine.XR.Bone:TryGetRotation(out_rotation) end
---@param out_parentBone UnityEngine.XR.Bone
---@return boolean,UnityEngine.XR.Bone
function UnityEngine.XR.Bone:TryGetParentBone(out_parentBone) end
---@param childBones System.Collections.Generic.List
---@return boolean
function UnityEngine.XR.Bone:TryGetChildBones(childBones) end
---@overload fun(self: UnityEngine.XR.Bone, obj: System.Object) : boolean
---@param other UnityEngine.XR.Bone
---@return boolean
function UnityEngine.XR.Bone:Equals(other) end
---@return number
function UnityEngine.XR.Bone:GetHashCode() end

---@class UnityEngine.XR.InputDevices : System.Object
UnityEngine.XR.InputDevices = {}
---@alias CS.UnityEngine.XR.InputDevices UnityEngine.XR.InputDevices
CS.UnityEngine.XR.InputDevices = UnityEngine.XR.InputDevices

---@return UnityEngine.XR.InputDevices
function UnityEngine.XR.InputDevices.New() end
---@param node UnityEngine.XR.XRNode
---@return UnityEngine.XR.InputDevice
function UnityEngine.XR.InputDevices.GetDeviceAtXRNode(node) end
---@param node UnityEngine.XR.XRNode
---@param inputDevices System.Collections.Generic.List
function UnityEngine.XR.InputDevices.GetDevicesAtXRNode(node, inputDevices) end
---@param inputDevices System.Collections.Generic.List
function UnityEngine.XR.InputDevices.GetDevices(inputDevices) end
---@param desiredCharacteristics UnityEngine.XR.InputDeviceCharacteristics
---@param inputDevices System.Collections.Generic.List
function UnityEngine.XR.InputDevices.GetDevicesWithCharacteristics(desiredCharacteristics, inputDevices) end

---@class UnityEngine.XR.XRDisplaySubsystem : UnityEngine.IntegratedSubsystem
---@field displayOpaque boolean
---@field contentProtectionEnabled boolean
---@field scaleOfAllViewports number
---@field scaleOfAllRenderTargets number
---@field zNear number
---@field zFar number
---@field sRGB boolean
---@field occlusionMaskScale number
---@field foveatedRenderingLevel number
---@field foveatedRenderingFlags UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags
---@field textureLayout UnityEngine.XR.XRDisplaySubsystem.TextureLayout
---@field supportedTextureLayouts UnityEngine.XR.XRDisplaySubsystem.TextureLayout
---@field reprojectionMode UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode
---@field disableLegacyRenderer boolean
---@field hdrOutputSettings UnityEngine.HDROutputSettings
---@field subsystemDescriptor UnityEngine.XR.XRDisplaySubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.XR.XRDisplaySubsystemDescriptor]
---@field SubsystemDescriptor UnityEngine.XR.XRDisplaySubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.XR.XRDisplaySubsystemDescriptor]
UnityEngine.XR.XRDisplaySubsystem = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem UnityEngine.XR.XRDisplaySubsystem
CS.UnityEngine.XR.XRDisplaySubsystem = UnityEngine.XR.XRDisplaySubsystem

---@return UnityEngine.XR.XRDisplaySubsystem
function UnityEngine.XR.XRDisplaySubsystem.New() end
---@param transform UnityEngine.Transform
---@param nodeType UnityEngine.XR.XRDisplaySubsystem.LateLatchNode
function UnityEngine.XR.XRDisplaySubsystem:MarkTransformLateLatched(transform, nodeType) end
---@param point UnityEngine.Vector3
---@param normal UnityEngine.Vector3
---@param velocity UnityEngine.Vector3
function UnityEngine.XR.XRDisplaySubsystem:SetFocusPlane(point, normal, velocity) end
---@param level number
function UnityEngine.XR.XRDisplaySubsystem:SetMSAALevel(level) end
---@return number
function UnityEngine.XR.XRDisplaySubsystem:GetRenderPassCount() end
---@param renderPassIndex number
---@param out_renderPass UnityEngine.XR.XRDisplaySubsystem.XRRenderPass
---@return ,UnityEngine.XR.XRDisplaySubsystem.XRRenderPass
function UnityEngine.XR.XRDisplaySubsystem:GetRenderPass(renderPassIndex, out_renderPass) end
---@param camera UnityEngine.Camera
function UnityEngine.XR.XRDisplaySubsystem:EndRecordingIfLateLatched(camera) end
---@param camera UnityEngine.Camera
function UnityEngine.XR.XRDisplaySubsystem:BeginRecordingIfLateLatched(camera) end
---@param camera UnityEngine.Camera
---@param cullingPassIndex number
---@param out_scriptableCullingParameters UnityEngine.Rendering.ScriptableCullingParameters
---@return ,UnityEngine.Rendering.ScriptableCullingParameters
function UnityEngine.XR.XRDisplaySubsystem:GetCullingParameters(camera, cullingPassIndex, out_scriptableCullingParameters) end
---@param out_gpuTimeLastFrame number
---@return boolean,number
function UnityEngine.XR.XRDisplaySubsystem:TryGetAppGPUTimeLastFrame(out_gpuTimeLastFrame) end
---@param out_gpuTimeLastFrameCompositor number
---@return boolean,number
function UnityEngine.XR.XRDisplaySubsystem:TryGetCompositorGPUTimeLastFrame(out_gpuTimeLastFrameCompositor) end
---@param out_droppedFrameCount number
---@return boolean,number
function UnityEngine.XR.XRDisplaySubsystem:TryGetDroppedFrameCount(out_droppedFrameCount) end
---@param out_framePresentCount number
---@return boolean,number
function UnityEngine.XR.XRDisplaySubsystem:TryGetFramePresentCount(out_framePresentCount) end
---@param out_displayRefreshRate number
---@return boolean,number
function UnityEngine.XR.XRDisplaySubsystem:TryGetDisplayRefreshRate(out_displayRefreshRate) end
---@param out_motionToPhoton number
---@return boolean,number
function UnityEngine.XR.XRDisplaySubsystem:TryGetMotionToPhoton(out_motionToPhoton) end
---@param unityXrRenderTextureId number
---@return UnityEngine.RenderTexture
function UnityEngine.XR.XRDisplaySubsystem:GetRenderTexture(unityXrRenderTextureId) end
---@param renderPass number
---@return UnityEngine.RenderTexture
function UnityEngine.XR.XRDisplaySubsystem:GetRenderTextureForRenderPass(renderPass) end
---@param renderPass number
---@return UnityEngine.RenderTexture
function UnityEngine.XR.XRDisplaySubsystem:GetSharedDepthTextureForRenderPass(renderPass) end
---@return number
function UnityEngine.XR.XRDisplaySubsystem:GetPreferredMirrorBlitMode() end
---@param blitMode number
function UnityEngine.XR.XRDisplaySubsystem:SetPreferredMirrorBlitMode(blitMode) end
---@param mirrorRt UnityEngine.RenderTexture
---@param out_outDesc UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc
---@param mode number
---@return boolean,UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc
function UnityEngine.XR.XRDisplaySubsystem:GetMirrorViewBlitDesc(mirrorRt, out_outDesc, mode) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param allowGraphicsStateInvalidate boolean
---@param mode number
---@return boolean
function UnityEngine.XR.XRDisplaySubsystem:AddGraphicsThreadMirrorViewBlit(cmd, allowGraphicsStateInvalidate, mode) end

---@class UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags
---@field None UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags
---@field GazeAllowed UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags
UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags
CS.UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags = UnityEngine.XR.XRDisplaySubsystem.FoveatedRenderingFlags


---@class UnityEngine.XR.XRDisplaySubsystem.LateLatchNode
---@field Head UnityEngine.XR.XRDisplaySubsystem.LateLatchNode
---@field LeftHand UnityEngine.XR.XRDisplaySubsystem.LateLatchNode
---@field RightHand UnityEngine.XR.XRDisplaySubsystem.LateLatchNode
UnityEngine.XR.XRDisplaySubsystem.LateLatchNode = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.LateLatchNode UnityEngine.XR.XRDisplaySubsystem.LateLatchNode
CS.UnityEngine.XR.XRDisplaySubsystem.LateLatchNode = UnityEngine.XR.XRDisplaySubsystem.LateLatchNode


---@class UnityEngine.XR.XRDisplaySubsystem.TextureLayout
---@field Texture2DArray UnityEngine.XR.XRDisplaySubsystem.TextureLayout
---@field SingleTexture2D UnityEngine.XR.XRDisplaySubsystem.TextureLayout
---@field SeparateTexture2Ds UnityEngine.XR.XRDisplaySubsystem.TextureLayout
UnityEngine.XR.XRDisplaySubsystem.TextureLayout = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.TextureLayout UnityEngine.XR.XRDisplaySubsystem.TextureLayout
CS.UnityEngine.XR.XRDisplaySubsystem.TextureLayout = UnityEngine.XR.XRDisplaySubsystem.TextureLayout


---@class UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode
---@field Unspecified UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode
---@field PositionAndOrientation UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode
---@field OrientationOnly UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode
---@field None UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode
UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode
CS.UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode = UnityEngine.XR.XRDisplaySubsystem.ReprojectionMode


---@class UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter : System.ValueType
---@field view UnityEngine.Matrix4x4
---@field projection UnityEngine.Matrix4x4
---@field viewport UnityEngine.Rect
---@field occlusionMesh UnityEngine.Mesh
---@field textureArraySlice number
---@field previousView UnityEngine.Matrix4x4
---@field isPreviousViewValid boolean
UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter
CS.UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter = UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter


---@class UnityEngine.XR.XRDisplaySubsystem.XRRenderPass : System.ValueType
---@field renderPassIndex number
---@field renderTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field renderTargetDesc UnityEngine.RenderTextureDescriptor
---@field hasMotionVectorPass boolean
---@field motionVectorRenderTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field motionVectorRenderTargetDesc UnityEngine.RenderTextureDescriptor
---@field shouldFillOutDepth boolean
---@field cullingPassIndex number
---@field foveatedRenderingInfo System.IntPtr
UnityEngine.XR.XRDisplaySubsystem.XRRenderPass = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.XRRenderPass UnityEngine.XR.XRDisplaySubsystem.XRRenderPass
CS.UnityEngine.XR.XRDisplaySubsystem.XRRenderPass = UnityEngine.XR.XRDisplaySubsystem.XRRenderPass

---@param camera UnityEngine.Camera
---@param renderParameterIndex number
---@param out_renderParameter UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter
---@return ,UnityEngine.XR.XRDisplaySubsystem.XRRenderParameter
function UnityEngine.XR.XRDisplaySubsystem.XRRenderPass:GetRenderParameter(camera, renderParameterIndex, out_renderParameter) end
---@return number
function UnityEngine.XR.XRDisplaySubsystem.XRRenderPass:GetRenderParameterCount() end

---@class UnityEngine.XR.XRDisplaySubsystem.XRBlitParams : System.ValueType
---@field srcTex UnityEngine.RenderTexture
---@field srcTexArraySlice number
---@field srcRect UnityEngine.Rect
---@field destRect UnityEngine.Rect
---@field foveatedRenderingInfo System.IntPtr
---@field srcHdrEncoded boolean
---@field srcHdrColorGamut UnityEngine.ColorGamut
---@field srcHdrMaxLuminance number
UnityEngine.XR.XRDisplaySubsystem.XRBlitParams = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.XRBlitParams UnityEngine.XR.XRDisplaySubsystem.XRBlitParams
CS.UnityEngine.XR.XRDisplaySubsystem.XRBlitParams = UnityEngine.XR.XRDisplaySubsystem.XRBlitParams


---@class UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc : System.ValueType
---@field nativeBlitAvailable boolean
---@field nativeBlitInvalidStates boolean
---@field blitParamsCount number
UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc
CS.UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc = UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc

---@param blitParameterIndex number
---@param out_blitParameter UnityEngine.XR.XRDisplaySubsystem.XRBlitParams
---@return ,UnityEngine.XR.XRDisplaySubsystem.XRBlitParams
function UnityEngine.XR.XRDisplaySubsystem.XRMirrorViewBlitDesc:GetBlitParameter(blitParameterIndex, out_blitParameter) end

---@class UnityEngine.XR.XRMirrorViewBlitMode : System.ValueType
---@field Default number
---@field LeftEye number
---@field RightEye number
---@field SideBySide number
---@field SideBySideOcclusionMesh number
---@field Distort number
---@field None number
UnityEngine.XR.XRMirrorViewBlitMode = {}
---@alias CS.UnityEngine.XR.XRMirrorViewBlitMode UnityEngine.XR.XRMirrorViewBlitMode
CS.UnityEngine.XR.XRMirrorViewBlitMode = UnityEngine.XR.XRMirrorViewBlitMode


---@class UnityEngine.XR.XRMirrorViewBlitModeDesc : System.ValueType
---@field blitMode number
---@field blitModeDesc string
UnityEngine.XR.XRMirrorViewBlitModeDesc = {}
---@alias CS.UnityEngine.XR.XRMirrorViewBlitModeDesc UnityEngine.XR.XRMirrorViewBlitModeDesc
CS.UnityEngine.XR.XRMirrorViewBlitModeDesc = UnityEngine.XR.XRMirrorViewBlitModeDesc


---@class UnityEngine.XR.XRDisplaySubsystemDescriptor : UnityEngine.IntegratedSubsystemDescriptor
---@field disablesLegacyVr boolean
---@field enableBackBufferMSAA boolean
UnityEngine.XR.XRDisplaySubsystemDescriptor = {}
---@alias CS.UnityEngine.XR.XRDisplaySubsystemDescriptor UnityEngine.XR.XRDisplaySubsystemDescriptor
CS.UnityEngine.XR.XRDisplaySubsystemDescriptor = UnityEngine.XR.XRDisplaySubsystemDescriptor

---@return UnityEngine.XR.XRDisplaySubsystemDescriptor
function UnityEngine.XR.XRDisplaySubsystemDescriptor.New() end
---@return number
function UnityEngine.XR.XRDisplaySubsystemDescriptor:GetAvailableMirrorBlitModeCount() end
---@param index number
---@param out_mode UnityEngine.XR.XRMirrorViewBlitModeDesc
---@return ,UnityEngine.XR.XRMirrorViewBlitModeDesc
function UnityEngine.XR.XRDisplaySubsystemDescriptor:GetMirrorBlitModeByIndex(index, out_mode) end

---@class UnityEngine.XR.TrackingOriginModeFlags
---@field Unknown UnityEngine.XR.TrackingOriginModeFlags
---@field Device UnityEngine.XR.TrackingOriginModeFlags
---@field Floor UnityEngine.XR.TrackingOriginModeFlags
---@field TrackingReference UnityEngine.XR.TrackingOriginModeFlags
---@field Unbounded UnityEngine.XR.TrackingOriginModeFlags
UnityEngine.XR.TrackingOriginModeFlags = {}
---@alias CS.UnityEngine.XR.TrackingOriginModeFlags UnityEngine.XR.TrackingOriginModeFlags
CS.UnityEngine.XR.TrackingOriginModeFlags = UnityEngine.XR.TrackingOriginModeFlags


---@class UnityEngine.XR.XRInputSubsystem : UnityEngine.IntegratedSubsystem
---@field subsystemDescriptor UnityEngine.XR.XRInputSubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.XR.XRInputSubsystemDescriptor]
---@field SubsystemDescriptor UnityEngine.XR.XRInputSubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.XR.XRInputSubsystemDescriptor]
UnityEngine.XR.XRInputSubsystem = {}
---@alias CS.UnityEngine.XR.XRInputSubsystem UnityEngine.XR.XRInputSubsystem
CS.UnityEngine.XR.XRInputSubsystem = UnityEngine.XR.XRInputSubsystem

---@return UnityEngine.XR.XRInputSubsystem
function UnityEngine.XR.XRInputSubsystem.New() end
---@return boolean
function UnityEngine.XR.XRInputSubsystem:TryRecenter() end
---@param devices System.Collections.Generic.List
---@return boolean
function UnityEngine.XR.XRInputSubsystem:TryGetInputDevices(devices) end
---@param origin UnityEngine.XR.TrackingOriginModeFlags
---@return boolean
function UnityEngine.XR.XRInputSubsystem:TrySetTrackingOriginMode(origin) end
---@return UnityEngine.XR.TrackingOriginModeFlags
function UnityEngine.XR.XRInputSubsystem:GetTrackingOriginMode() end
---@return UnityEngine.XR.TrackingOriginModeFlags
function UnityEngine.XR.XRInputSubsystem:GetSupportedTrackingOriginModes() end
---@param boundaryPoints System.Collections.Generic.List
---@return boolean
function UnityEngine.XR.XRInputSubsystem:TryGetBoundaryPoints(boundaryPoints) end

---@class UnityEngine.XR.XRInputSubsystemDescriptor : UnityEngine.IntegratedSubsystemDescriptor
---@field disablesLegacyInput boolean
UnityEngine.XR.XRInputSubsystemDescriptor = {}
---@alias CS.UnityEngine.XR.XRInputSubsystemDescriptor UnityEngine.XR.XRInputSubsystemDescriptor
CS.UnityEngine.XR.XRInputSubsystemDescriptor = UnityEngine.XR.XRInputSubsystemDescriptor

---@return UnityEngine.XR.XRInputSubsystemDescriptor
function UnityEngine.XR.XRInputSubsystemDescriptor.New() end

---@class UnityEngine.XR.MeshId : System.ValueType
---@field InvalidId UnityEngine.XR.MeshId
UnityEngine.XR.MeshId = {}
---@alias CS.UnityEngine.XR.MeshId UnityEngine.XR.MeshId
CS.UnityEngine.XR.MeshId = UnityEngine.XR.MeshId

---@return string
function UnityEngine.XR.MeshId:ToString() end
---@return number
function UnityEngine.XR.MeshId:GetHashCode() end
---@overload fun(self: UnityEngine.XR.MeshId, obj: System.Object) : boolean
---@param other UnityEngine.XR.MeshId
---@return boolean
function UnityEngine.XR.MeshId:Equals(other) end

---@class UnityEngine.XR.MeshGenerationStatus
---@field Success UnityEngine.XR.MeshGenerationStatus
---@field InvalidMeshId UnityEngine.XR.MeshGenerationStatus
---@field GenerationAlreadyInProgress UnityEngine.XR.MeshGenerationStatus
---@field Canceled UnityEngine.XR.MeshGenerationStatus
---@field UnknownError UnityEngine.XR.MeshGenerationStatus
UnityEngine.XR.MeshGenerationStatus = {}
---@alias CS.UnityEngine.XR.MeshGenerationStatus UnityEngine.XR.MeshGenerationStatus
CS.UnityEngine.XR.MeshGenerationStatus = UnityEngine.XR.MeshGenerationStatus


---@class UnityEngine.XR.HashCodeHelper : System.Object
UnityEngine.XR.HashCodeHelper = {}
---@alias CS.UnityEngine.XR.HashCodeHelper UnityEngine.XR.HashCodeHelper
CS.UnityEngine.XR.HashCodeHelper = UnityEngine.XR.HashCodeHelper

---@overload fun(hash1: number, hash2: number) : number
---@overload fun(hash1: number, hash2: number, hash3: number) : number
---@overload fun(hash1: number, hash2: number, hash3: number, hash4: number) : number
---@overload fun(hash1: number, hash2: number, hash3: number, hash4: number, hash5: number) : number
---@overload fun(hash1: number, hash2: number, hash3: number, hash4: number, hash5: number, hash6: number) : number
---@overload fun(hash1: number, hash2: number, hash3: number, hash4: number, hash5: number, hash6: number, hash7: number) : number
---@param hash1 number
---@param hash2 number
---@param hash3 number
---@param hash4 number
---@param hash5 number
---@param hash6 number
---@param hash7 number
---@param hash8 number
---@return number
function UnityEngine.XR.HashCodeHelper.Combine(hash1, hash2, hash3, hash4, hash5, hash6, hash7, hash8) end

---@class UnityEngine.XR.MeshGenerationResult : System.ValueType
---@field MeshId UnityEngine.XR.MeshId
---@field Mesh UnityEngine.Mesh
---@field MeshCollider UnityEngine.MeshCollider
---@field Status UnityEngine.XR.MeshGenerationStatus
---@field Attributes UnityEngine.XR.MeshVertexAttributes
---@field Timestamp number
---@field Position UnityEngine.Vector3
---@field Rotation UnityEngine.Quaternion
---@field Scale UnityEngine.Vector3
UnityEngine.XR.MeshGenerationResult = {}
---@alias CS.UnityEngine.XR.MeshGenerationResult UnityEngine.XR.MeshGenerationResult
CS.UnityEngine.XR.MeshGenerationResult = UnityEngine.XR.MeshGenerationResult

---@overload fun(self: UnityEngine.XR.MeshGenerationResult, obj: System.Object) : boolean
---@param other UnityEngine.XR.MeshGenerationResult
---@return boolean
function UnityEngine.XR.MeshGenerationResult:Equals(other) end
---@return number
function UnityEngine.XR.MeshGenerationResult:GetHashCode() end

---@class UnityEngine.XR.MeshVertexAttributes
---@field None UnityEngine.XR.MeshVertexAttributes
---@field Normals UnityEngine.XR.MeshVertexAttributes
---@field Tangents UnityEngine.XR.MeshVertexAttributes
---@field UVs UnityEngine.XR.MeshVertexAttributes
---@field Colors UnityEngine.XR.MeshVertexAttributes
UnityEngine.XR.MeshVertexAttributes = {}
---@alias CS.UnityEngine.XR.MeshVertexAttributes UnityEngine.XR.MeshVertexAttributes
CS.UnityEngine.XR.MeshVertexAttributes = UnityEngine.XR.MeshVertexAttributes


---@class UnityEngine.XR.MeshGenerationOptions
---@field None UnityEngine.XR.MeshGenerationOptions
---@field ConsumeTransform UnityEngine.XR.MeshGenerationOptions
UnityEngine.XR.MeshGenerationOptions = {}
---@alias CS.UnityEngine.XR.MeshGenerationOptions UnityEngine.XR.MeshGenerationOptions
CS.UnityEngine.XR.MeshGenerationOptions = UnityEngine.XR.MeshGenerationOptions


---@class UnityEngine.XR.MeshChangeState
---@field Added UnityEngine.XR.MeshChangeState
---@field Updated UnityEngine.XR.MeshChangeState
---@field Removed UnityEngine.XR.MeshChangeState
---@field Unchanged UnityEngine.XR.MeshChangeState
UnityEngine.XR.MeshChangeState = {}
---@alias CS.UnityEngine.XR.MeshChangeState UnityEngine.XR.MeshChangeState
CS.UnityEngine.XR.MeshChangeState = UnityEngine.XR.MeshChangeState


---@class UnityEngine.XR.MeshInfo : System.ValueType
---@field MeshId UnityEngine.XR.MeshId
---@field ChangeState UnityEngine.XR.MeshChangeState
---@field PriorityHint number
UnityEngine.XR.MeshInfo = {}
---@alias CS.UnityEngine.XR.MeshInfo UnityEngine.XR.MeshInfo
CS.UnityEngine.XR.MeshInfo = UnityEngine.XR.MeshInfo

---@overload fun(self: UnityEngine.XR.MeshInfo, obj: System.Object) : boolean
---@param other UnityEngine.XR.MeshInfo
---@return boolean
function UnityEngine.XR.MeshInfo:Equals(other) end
---@return number
function UnityEngine.XR.MeshInfo:GetHashCode() end

---@class UnityEngine.XR.MeshTransform : System.ValueType
---@field MeshId UnityEngine.XR.MeshId
---@field Timestamp number
---@field Position UnityEngine.Vector3
---@field Rotation UnityEngine.Quaternion
---@field Scale UnityEngine.Vector3
UnityEngine.XR.MeshTransform = {}
---@alias CS.UnityEngine.XR.MeshTransform UnityEngine.XR.MeshTransform
CS.UnityEngine.XR.MeshTransform = UnityEngine.XR.MeshTransform

---@param ref_meshId UnityEngine.XR.MeshId
---@param timestamp number
---@param ref_position UnityEngine.Vector3
---@param ref_rotation UnityEngine.Quaternion
---@param ref_scale UnityEngine.Vector3
---@return UnityEngine.XR.MeshTransform,UnityEngine.XR.MeshId,UnityEngine.Vector3,UnityEngine.Quaternion,UnityEngine.Vector3
function UnityEngine.XR.MeshTransform.New(ref_meshId, timestamp, ref_position, ref_rotation, ref_scale) end
---@overload fun(self: UnityEngine.XR.MeshTransform, obj: System.Object) : boolean
---@param other UnityEngine.XR.MeshTransform
---@return boolean
function UnityEngine.XR.MeshTransform:Equals(other) end
---@return number
function UnityEngine.XR.MeshTransform:GetHashCode() end

---@class UnityEngine.XR.XRMeshSubsystem : UnityEngine.IntegratedSubsystem
---@field meshDensity number
---@field subsystemDescriptor UnityEngine.XR.XRMeshSubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.XR.XRMeshSubsystemDescriptor]
---@field SubsystemDescriptor UnityEngine.XR.XRMeshSubsystem -- infered from UnityEngine.IntegratedSubsystem`1[UnityEngine.XR.XRMeshSubsystemDescriptor]
UnityEngine.XR.XRMeshSubsystem = {}
---@alias CS.UnityEngine.XR.XRMeshSubsystem UnityEngine.XR.XRMeshSubsystem
CS.UnityEngine.XR.XRMeshSubsystem = UnityEngine.XR.XRMeshSubsystem

---@return UnityEngine.XR.XRMeshSubsystem
function UnityEngine.XR.XRMeshSubsystem.New() end
---@param meshInfosOut System.Collections.Generic.List
---@return boolean
function UnityEngine.XR.XRMeshSubsystem:TryGetMeshInfos(meshInfosOut) end
---@overload fun(self: UnityEngine.XR.XRMeshSubsystem, meshId: UnityEngine.XR.MeshId, mesh: UnityEngine.Mesh, meshCollider: UnityEngine.MeshCollider, attributes: UnityEngine.XR.MeshVertexAttributes, onMeshGenerationComplete: System.Action)
---@param meshId UnityEngine.XR.MeshId
---@param mesh UnityEngine.Mesh
---@param meshCollider UnityEngine.MeshCollider
---@param attributes UnityEngine.XR.MeshVertexAttributes
---@param onMeshGenerationComplete System.Action
---@param options UnityEngine.XR.MeshGenerationOptions
function UnityEngine.XR.XRMeshSubsystem:GenerateMeshAsync(meshId, mesh, meshCollider, attributes, onMeshGenerationComplete, options) end
---@param origin UnityEngine.Vector3
---@param extents UnityEngine.Vector3
---@return boolean
function UnityEngine.XR.XRMeshSubsystem:SetBoundingVolume(origin, extents) end
---@param allocator Unity.Collections.Allocator
---@return Unity.Collections.NativeArray
function UnityEngine.XR.XRMeshSubsystem:GetUpdatedMeshTransforms(allocator) end

---@class UnityEngine.XR.XRMeshSubsystem.MeshTransformList : System.ValueType
---@field Count number
---@field Data System.IntPtr
UnityEngine.XR.XRMeshSubsystem.MeshTransformList = {}
---@alias CS.UnityEngine.XR.XRMeshSubsystem.MeshTransformList UnityEngine.XR.XRMeshSubsystem.MeshTransformList
CS.UnityEngine.XR.XRMeshSubsystem.MeshTransformList = UnityEngine.XR.XRMeshSubsystem.MeshTransformList

---@param self System.IntPtr
---@return UnityEngine.XR.XRMeshSubsystem.MeshTransformList
function UnityEngine.XR.XRMeshSubsystem.MeshTransformList.New(self) end
function UnityEngine.XR.XRMeshSubsystem.MeshTransformList:Dispose() end

---@class UnityEngine.XR.XRMeshSubsystemDescriptor : UnityEngine.IntegratedSubsystemDescriptor
UnityEngine.XR.XRMeshSubsystemDescriptor = {}
---@alias CS.UnityEngine.XR.XRMeshSubsystemDescriptor UnityEngine.XR.XRMeshSubsystemDescriptor
CS.UnityEngine.XR.XRMeshSubsystemDescriptor = UnityEngine.XR.XRMeshSubsystemDescriptor

---@return UnityEngine.XR.XRMeshSubsystemDescriptor
function UnityEngine.XR.XRMeshSubsystemDescriptor.New() end

---@class UnityEngine.XR.Provider.XRStats : System.Object
UnityEngine.XR.Provider.XRStats = {}
---@alias CS.UnityEngine.XR.Provider.XRStats UnityEngine.XR.Provider.XRStats
CS.UnityEngine.XR.Provider.XRStats = UnityEngine.XR.Provider.XRStats

---@param xrSubsystem UnityEngine.IntegratedSubsystem
---@param tag string
---@param out_value number
---@return boolean,number
function UnityEngine.XR.Provider.XRStats.TryGetStat(xrSubsystem, tag, out_value) end

---@class SerializedStringTable : System.Object
---@field hashtable System.Collections.Hashtable
---@field Length number
SerializedStringTable = {}
---@alias CS.SerializedStringTable SerializedStringTable
CS.SerializedStringTable = SerializedStringTable

---@return SerializedStringTable
function SerializedStringTable.New() end
---@overload fun(self: SerializedStringTable, key: string, value: number)
---@param key string
function SerializedStringTable:Set(key) end
---@param key string
---@return boolean
function SerializedStringTable:Contains(key) end
---@param key string
---@return number
function SerializedStringTable:Get(key) end
---@param key string
function SerializedStringTable:Remove(key) end

---@class AssemblyValidationRule : System.Attribute
---@field Priority number
---@field Platform UnityEngine.RuntimePlatform
AssemblyValidationRule = {}
---@alias CS.AssemblyValidationRule AssemblyValidationRule
CS.AssemblyValidationRule = AssemblyValidationRule

---@param platform UnityEngine.RuntimePlatform
---@return AssemblyValidationRule
function AssemblyValidationRule.New(platform) end

---@class ValidationResult : System.ValueType
---@field Success boolean
---@field Rule IValidationRule
---@field CompilerMessages System.Collections.Generic.IEnumerable
ValidationResult = {}
---@alias CS.ValidationResult ValidationResult
CS.ValidationResult = ValidationResult


---@class IValidationRule
IValidationRule = {}
---@alias CS.IValidationRule IValidationRule
CS.IValidationRule = IValidationRule

---@param userAssemblies System.Collections.Generic.IEnumerable
---@param options System.Object[]
---@return ValidationResult
function IValidationRule:Validate(userAssemblies, options) end

---@class AssemblyValidation : System.Object
AssemblyValidation = {}
---@alias CS.AssemblyValidation AssemblyValidation
CS.AssemblyValidation = AssemblyValidation

---@return AssemblyValidation
function AssemblyValidation.New() end
---@param platform UnityEngine.RuntimePlatform
---@param userAssemblies System.Collections.Generic.IEnumerable
---@param options System.Object[]
---@return ValidationResult
function AssemblyValidation.Validate(platform, userAssemblies, options) end

---@class DesktopStandaloneBuildWindowExtension : UnityEditor.Modules.DefaultBuildWindowExtension
DesktopStandaloneBuildWindowExtension = {}
---@alias CS.DesktopStandaloneBuildWindowExtension DesktopStandaloneBuildWindowExtension
CS.DesktopStandaloneBuildWindowExtension = DesktopStandaloneBuildWindowExtension

---@param hasMonoPlayers boolean
---@param hasIl2CppPlayers boolean
---@param hasCoreCLRPlayers boolean
---@param hasServerPlayers boolean
---@return DesktopStandaloneBuildWindowExtension
function DesktopStandaloneBuildWindowExtension.New(hasMonoPlayers, hasIl2CppPlayers, hasCoreCLRPlayers, hasServerPlayers) end
---@param buildTarget UnityEditor.BuildTarget
---@param architecture UnityEditor.Build.OSArchitecture
function DesktopStandaloneBuildWindowExtension.SetArchitectureForPlatform(buildTarget, architecture) end
function DesktopStandaloneBuildWindowExtension:ShowPlatformBuildOptions() end
---@return boolean
function DesktopStandaloneBuildWindowExtension:EnabledBuildButton() end
---@return boolean
function DesktopStandaloneBuildWindowExtension:EnabledBuildAndRunButton() end
---@return boolean
function DesktopStandaloneBuildWindowExtension:ShouldDrawWaitForManagedDebugger() end

---@class DesktopStandaloneBuildWindowExtension.BuildTargetInfo : System.ValueType
---@field buildTarget UnityEditor.BuildTarget
---@field architecture UnityEditor.Build.OSArchitecture
DesktopStandaloneBuildWindowExtension.BuildTargetInfo = {}
---@alias CS.DesktopStandaloneBuildWindowExtension.BuildTargetInfo DesktopStandaloneBuildWindowExtension.BuildTargetInfo
CS.DesktopStandaloneBuildWindowExtension.BuildTargetInfo = DesktopStandaloneBuildWindowExtension.BuildTargetInfo


---@class DesktopStandalonePostProcessor : UnityEditor.Modules.BeeBuildPostprocessor
DesktopStandalonePostProcessor = {}
---@alias CS.DesktopStandalonePostProcessor DesktopStandalonePostProcessor
CS.DesktopStandalonePostProcessor = DesktopStandalonePostProcessor

---@return boolean
function DesktopStandalonePostProcessor:SupportsLz4Compression() end
---@return boolean
function DesktopStandalonePostProcessor:SupportsScriptsOnlyBuild() end
---@return boolean
function DesktopStandalonePostProcessor:SupportsInstallInBuildFolder() end
---@param target UnityEditor.BuildTarget
---@param config UnityEngine.BootConfigData
---@param options UnityEditor.BuildOptions
function DesktopStandalonePostProcessor:UpdateBootConfig(target, config, options) end
---@param args UnityEditor.Modules.BuildLaunchPlayerArgs
function DesktopStandalonePostProcessor:LaunchPlayer(args) end
---@param buildOptions UnityEditor.BuildPlayerOptions
---@return string
function DesktopStandalonePostProcessor:PrepareForBuild(buildOptions) end

---@class DesktopStandalonePostProcessor.ScriptingImplementations : UnityEditor.Modules.DefaultScriptingImplementations
DesktopStandalonePostProcessor.ScriptingImplementations = {}
---@alias CS.DesktopStandalonePostProcessor.ScriptingImplementations DesktopStandalonePostProcessor.ScriptingImplementations
CS.DesktopStandalonePostProcessor.ScriptingImplementations = DesktopStandalonePostProcessor.ScriptingImplementations

---@return DesktopStandalonePostProcessor.ScriptingImplementations
function DesktopStandalonePostProcessor.ScriptingImplementations.New() end

---@class DesktopStandaloneUserBuildSettings : System.Object
DesktopStandaloneUserBuildSettings = {}
---@alias CS.DesktopStandaloneUserBuildSettings DesktopStandaloneUserBuildSettings
CS.DesktopStandaloneUserBuildSettings = DesktopStandaloneUserBuildSettings


---@class ICompilerSettings
---@field LibPaths System.String[]
---@field CompilerPath string
---@field LinkerPath string
---@field MachineSpecification string
ICompilerSettings = {}
---@alias CS.ICompilerSettings ICompilerSettings
CS.ICompilerSettings = ICompilerSettings


---@class INativeCompiler
INativeCompiler = {}
---@alias CS.INativeCompiler INativeCompiler
CS.INativeCompiler = INativeCompiler

---@param outFile string
---@param sources System.Collections.Generic.IEnumerable
---@param includePaths System.Collections.Generic.IEnumerable
---@param libraries System.Collections.Generic.IEnumerable
---@param libraryPaths System.Collections.Generic.IEnumerable
function INativeCompiler:CompileDynamicLibrary(outFile, sources, includePaths, libraries, libraryPaths) end

---@class NativeCompiler : System.Object
NativeCompiler = {}
---@alias CS.NativeCompiler NativeCompiler
CS.NativeCompiler = NativeCompiler

---@param outFile string
---@param sources System.Collections.Generic.IEnumerable
---@param includePaths System.Collections.Generic.IEnumerable
---@param libraries System.Collections.Generic.IEnumerable
---@param libraryPaths System.Collections.Generic.IEnumerable
function NativeCompiler:CompileDynamicLibrary(outFile, sources, includePaths, libraries, libraryPaths) end

---@class NativeCompiler.Counter : System.Object
---@field index number
NativeCompiler.Counter = {}
---@alias CS.NativeCompiler.Counter NativeCompiler.Counter
CS.NativeCompiler.Counter = NativeCompiler.Counter

---@return NativeCompiler.Counter
function NativeCompiler.Counter.New() end

---@class PostProcessStandalonePlayer : System.Object
PostProcessStandalonePlayer = {}
---@alias CS.PostProcessStandalonePlayer PostProcessStandalonePlayer
CS.PostProcessStandalonePlayer = PostProcessStandalonePlayer

---@return PostProcessStandalonePlayer
function PostProcessStandalonePlayer.New() end

---@class WinRTUtils : System.Object
WinRTUtils = {}
---@alias CS.WinRTUtils WinRTUtils
CS.WinRTUtils = WinRTUtils

---@return WinRTUtils
function WinRTUtils.New() end
---@param target UnityEditor.BuildTarget
---@return string
function WinRTUtils.GetProcessorArchitecture(target) end

---@class SubSceneGUI : System.Object
SubSceneGUI = {}
---@alias CS.SubSceneGUI SubSceneGUI
CS.SubSceneGUI = SubSceneGUI


---@class ToggleTreeViewItem : UnityEditor.IMGUI.Controls.TreeViewItem
---@field nodeState boolean
ToggleTreeViewItem = {}
---@alias CS.ToggleTreeViewItem ToggleTreeViewItem
CS.ToggleTreeViewItem = ToggleTreeViewItem


---@class ToggleTreeView : UnityEditor.IMGUI.Controls.TreeView
---@field totalHeightIncludingSearchBarAndBottomBar number
ToggleTreeView = {}
---@alias CS.ToggleTreeView ToggleTreeView
CS.ToggleTreeView = ToggleTreeView

---@param state UnityEditor.IMGUI.Controls.TreeViewState
---@param multiColumnHeader UnityEditor.IMGUI.Controls.MultiColumnHeader
---@param rebuildRoot System.Func[T]
---@return ToggleTreeView
function ToggleTreeView.New(state, multiColumnHeader, rebuildRoot) end
---@param rect UnityEngine.Rect
function ToggleTreeView:OnGUI(rect) end

---@class ToggleTreeView.Styles : System.Object
---@field toggleAll UnityEngine.GUIContent
---@field expandAll UnityEngine.GUIContent
---@field collapseAll UnityEngine.GUIContent
---@field toggle UnityEngine.GUIContent
---@field filterSelected UnityEngine.GUIContent
ToggleTreeView.Styles = {}
---@alias CS.ToggleTreeView.Styles ToggleTreeView.Styles
CS.ToggleTreeView.Styles = ToggleTreeView.Styles


---@class ToggleTreeView.Column
---@field Enabled ToggleTreeView.Column
---@field Name ToggleTreeView.Column
ToggleTreeView.Column = {}
---@alias CS.ToggleTreeView.Column ToggleTreeView.Column
CS.ToggleTreeView.Column = ToggleTreeView.Column


---@class ImportSettingInternalID : System.Object
ImportSettingInternalID = {}
---@alias CS.ImportSettingInternalID ImportSettingInternalID
CS.ImportSettingInternalID = ImportSettingInternalID

---@return ImportSettingInternalID
function ImportSettingInternalID.New() end
---@overload fun(serializedObject: UnityEditor.SerializedObject, type: UnityEditor.UnityType, id: number, name: string)
---@param serializedObject UnityEditor.SerializedObject
---@param type UnityEditor.UnityType
---@param ids System.Collections.Generic.ICollection
---@param names System.Collections.Generic.ICollection
function ImportSettingInternalID.RegisterInternalID(serializedObject, type, ids, names) end
---@param serializedObject UnityEditor.SerializedObject
---@param type UnityEditor.UnityType
---@param id number
---@param name string
---@return boolean
function ImportSettingInternalID.RemoveEntryFromInternalIDTable(serializedObject, type, id, name) end
---@param serializedObject UnityEditor.SerializedObject
---@param type UnityEditor.UnityType
---@param name string
---@return number
function ImportSettingInternalID.FindInternalID(serializedObject, type, name) end
---@param serializedObject UnityEditor.SerializedObject
---@param type UnityEditor.UnityType
---@param name string
---@return number
function ImportSettingInternalID.MakeInternalID(serializedObject, type, name) end
---@param serializedObject UnityEditor.SerializedObject
---@param type UnityEditor.UnityType
---@param oldName string
---@param newName string
function ImportSettingInternalID.Rename(serializedObject, type, oldName, newName) end
---@param serializedObject UnityEditor.SerializedObject
---@param type UnityEditor.UnityType
---@param oldNames System.String[]
---@param newNames System.String[]
function ImportSettingInternalID.RenameMultiple(serializedObject, type, oldNames, newNames) end

---@class LODGroupExtensions : System.Object
LODGroupExtensions = {}
---@alias CS.LODGroupExtensions LODGroupExtensions
CS.LODGroupExtensions = LODGroupExtensions

---@param lodGroup UnityEngine.LODGroup
---@return number
function LODGroupExtensions.GetWorldSpaceSize(lodGroup) end
---@param camera UnityEngine.Camera
---@param distance number
---@param size number
---@return number
function LODGroupExtensions.DistanceToRelativeHeight(camera, distance, size) end
---@param camera UnityEngine.Camera
---@param relativeHeight number
---@param size number
---@return number
function LODGroupExtensions.RelativeHeightToDistance(camera, relativeHeight, size) end
---@param lodGroup UnityEngine.LODGroup
---@param camera UnityEngine.Camera
---@return number
function LODGroupExtensions.GetRelativeHeight(lodGroup, camera) end

---@class PreviewGUI : System.Object
PreviewGUI = {}
---@alias CS.PreviewGUI PreviewGUI
CS.PreviewGUI = PreviewGUI

---@return PreviewGUI
function PreviewGUI.New() end
---@param selected number
---@param options UnityEngine.GUIContent[]
---@return number
function PreviewGUI.CycleButton(selected, options) end
---@return UnityEngine.Vector2
function PreviewGUI.EndScrollView() end
---@param scrollPosition UnityEngine.Vector2
---@param position UnityEngine.Rect
---@return UnityEngine.Vector2
function PreviewGUI.Drag2D(scrollPosition, position) end

---@class PreviewGUI.Styles : System.Object
---@field preButton UnityEngine.GUIStyle
PreviewGUI.Styles = {}
---@alias CS.PreviewGUI.Styles PreviewGUI.Styles
CS.PreviewGUI.Styles = PreviewGUI.Styles

---@return PreviewGUI.Styles
function PreviewGUI.Styles.New() end
function PreviewGUI.Styles.Init() end

---@class JobsMenu : System.Object
JobsMenu = {}
---@alias CS.JobsMenu JobsMenu
CS.JobsMenu = JobsMenu

---@return JobsMenu
function JobsMenu.New() end

---@class JobsMenu.Telemetry : System.ValueType
JobsMenu.Telemetry = {}
---@alias CS.JobsMenu.Telemetry JobsMenu.Telemetry
CS.JobsMenu.Telemetry = JobsMenu.Telemetry


---@class JobsMenu.Telemetry.MenuPreferencesEvent : System.ValueType
---@field enableJobsDebugger boolean
---@field useJobsThreads boolean
---@field nativeLeakDetectionMode Unity.Collections.NativeLeakDetectionMode
JobsMenu.Telemetry.MenuPreferencesEvent = {}
---@alias CS.JobsMenu.Telemetry.MenuPreferencesEvent JobsMenu.Telemetry.MenuPreferencesEvent
CS.JobsMenu.Telemetry.MenuPreferencesEvent = JobsMenu.Telemetry.MenuPreferencesEvent


---@class SceneOrientationGizmo : UnityEditor.Overlays.IMGUIOverlay
SceneOrientationGizmo = {}
---@alias CS.SceneOrientationGizmo SceneOrientationGizmo
CS.SceneOrientationGizmo = SceneOrientationGizmo

---@return SceneOrientationGizmo
function SceneOrientationGizmo.New() end
function SceneOrientationGizmo:OnCreated() end
function SceneOrientationGizmo:OnWillBeDestroyed() end
function SceneOrientationGizmo:OnGUI() end

---@class SceneOrientationGizmo.Styles : System.Object
---@field viewLabelStyleLeftAligned UnityEngine.GUIStyle
---@field viewLabelStyleCentered UnityEngine.GUIStyle
---@field viewAxisLabelStyle UnityEngine.GUIStyle
---@field lockStyle UnityEngine.GUIStyle
---@field unlockedRotationIcon UnityEngine.GUIContent
---@field lockedRotationIcon UnityEngine.GUIContent
SceneOrientationGizmo.Styles = {}
---@alias CS.SceneOrientationGizmo.Styles SceneOrientationGizmo.Styles
CS.SceneOrientationGizmo.Styles = SceneOrientationGizmo.Styles


---@class SceneOrientationGizmo.BlendingScope : System.ValueType
SceneOrientationGizmo.BlendingScope = {}
---@alias CS.SceneOrientationGizmo.BlendingScope SceneOrientationGizmo.BlendingScope
CS.SceneOrientationGizmo.BlendingScope = SceneOrientationGizmo.BlendingScope

---@param srcMode UnityEngine.Rendering.BlendMode
---@param dstMode UnityEngine.Rendering.BlendMode
---@return SceneOrientationGizmo.BlendingScope
function SceneOrientationGizmo.BlendingScope.New(srcMode, dstMode) end
function SceneOrientationGizmo.BlendingScope:Dispose() end

---@class BaseExposedPropertyDrawer : UnityEditor.PropertyDrawer
BaseExposedPropertyDrawer = {}
---@alias CS.BaseExposedPropertyDrawer BaseExposedPropertyDrawer
CS.BaseExposedPropertyDrawer = BaseExposedPropertyDrawer

---@return BaseExposedPropertyDrawer
function BaseExposedPropertyDrawer.New() end
---@param position UnityEngine.Rect
---@param prop UnityEditor.SerializedProperty
---@param label UnityEngine.GUIContent
function BaseExposedPropertyDrawer:OnGUI(position, prop, label) end
---@param prop UnityEditor.SerializedProperty
---@return UnityEngine.UIElements.VisualElement
function BaseExposedPropertyDrawer:CreatePropertyGUI(prop) end

---@class BaseExposedPropertyDrawer.ExposedPropertyMode
---@field DefaultValue BaseExposedPropertyDrawer.ExposedPropertyMode
---@field Named BaseExposedPropertyDrawer.ExposedPropertyMode
---@field NamedGUID BaseExposedPropertyDrawer.ExposedPropertyMode
BaseExposedPropertyDrawer.ExposedPropertyMode = {}
---@alias CS.BaseExposedPropertyDrawer.ExposedPropertyMode BaseExposedPropertyDrawer.ExposedPropertyMode
CS.BaseExposedPropertyDrawer.ExposedPropertyMode = BaseExposedPropertyDrawer.ExposedPropertyMode


---@class BaseExposedPropertyDrawer.OverrideState
---@field DefaultValue BaseExposedPropertyDrawer.OverrideState
---@field MissingOverride BaseExposedPropertyDrawer.OverrideState
---@field Overridden BaseExposedPropertyDrawer.OverrideState
BaseExposedPropertyDrawer.OverrideState = {}
---@alias CS.BaseExposedPropertyDrawer.OverrideState BaseExposedPropertyDrawer.OverrideState
CS.BaseExposedPropertyDrawer.OverrideState = BaseExposedPropertyDrawer.OverrideState


---@class ExposedReferencePropertyDrawer : BaseExposedPropertyDrawer
ExposedReferencePropertyDrawer = {}
---@alias CS.ExposedReferencePropertyDrawer ExposedReferencePropertyDrawer
CS.ExposedReferencePropertyDrawer = ExposedReferencePropertyDrawer

---@return ExposedReferencePropertyDrawer
function ExposedReferencePropertyDrawer.New() end

---@class EnumerableExtensions : System.Object
EnumerableExtensions = {}
---@alias CS.EnumerableExtensions EnumerableExtensions
CS.EnumerableExtensions = EnumerableExtensions

---@param values System.Collections.Generic.IEnumerable
---@param separator string
---@return string
function EnumerableExtensions.SeparateWith(values, separator) end

---@class ParticleSystemCurveEditor : System.Object
---@field k_PresetsHeight number
ParticleSystemCurveEditor = {}
---@alias CS.ParticleSystemCurveEditor ParticleSystemCurveEditor
CS.ParticleSystemCurveEditor = ParticleSystemCurveEditor

---@return ParticleSystemCurveEditor
function ParticleSystemCurveEditor.New() end
function ParticleSystemCurveEditor:OnDisable() end
function ParticleSystemCurveEditor:OnDestroy() end
function ParticleSystemCurveEditor:Refresh() end
function ParticleSystemCurveEditor:Init() end
---@overload fun(self: ParticleSystemCurveEditor, min: UnityEditor.SerializedProperty, max: UnityEditor.SerializedProperty) : boolean
---@param max UnityEditor.SerializedProperty
---@return boolean
function ParticleSystemCurveEditor:IsAdded(max) end
---@param curveData ParticleSystemCurveEditor.CurveData
function ParticleSystemCurveEditor:AddCurve(curveData) end
---@overload fun(self: ParticleSystemCurveEditor, max: UnityEditor.SerializedProperty)
---@param min UnityEditor.SerializedProperty
---@param max UnityEditor.SerializedProperty
function ParticleSystemCurveEditor:RemoveCurve(min, max) end
---@param max UnityEditor.SerializedProperty
---@return UnityEngine.Color
function ParticleSystemCurveEditor:GetCurveColor(max) end
---@param curveName string
---@param curveData ParticleSystemCurveEditor.CurveData
function ParticleSystemCurveEditor:AddCurveDataIfNeeded(curveName, curveData) end
---@param curveProp UnityEditor.SerializedProperty
---@param visible boolean
function ParticleSystemCurveEditor:SetVisible(curveProp, visible) end
---@return UnityEngine.Color
function ParticleSystemCurveEditor:GetAvailableColor() end
---@param rect UnityEngine.Rect
function ParticleSystemCurveEditor:OnGUI(rect) end

---@class ParticleSystemCurveEditor.Styles : System.Object
---@field curveEditorBackground UnityEngine.GUIStyle
---@field curveSwatch UnityEngine.GUIStyle
---@field curveSwatchArea UnityEngine.GUIStyle
---@field yAxisHeader UnityEngine.GUIStyle
---@field optimizeCurveText UnityEngine.GUIContent
---@field removeCurveText UnityEngine.GUIContent
---@field curveLibraryPopup UnityEngine.GUIContent
---@field presetTooltip UnityEngine.GUIContent
ParticleSystemCurveEditor.Styles = {}
---@alias CS.ParticleSystemCurveEditor.Styles ParticleSystemCurveEditor.Styles
CS.ParticleSystemCurveEditor.Styles = ParticleSystemCurveEditor.Styles

---@return ParticleSystemCurveEditor.Styles
function ParticleSystemCurveEditor.Styles.New() end

---@class ParticleSystemCurveEditor.CurveData : System.Object
---@field m_Max UnityEditor.SerializedProperty
---@field m_Min UnityEditor.SerializedProperty
---@field m_SignedRange boolean
---@field m_Color UnityEngine.Color
---@field m_UniqueName string
---@field m_DisplayName UnityEngine.GUIContent
---@field m_GetAxisScalarsCallback UnityEditor.CurveWrapper.GetAxisScalarsCallback
---@field m_SetAxisScalarsCallback UnityEditor.CurveWrapper.SetAxisScalarsCallback
---@field m_MaxId number
---@field m_MinId number
---@field m_Visible boolean
ParticleSystemCurveEditor.CurveData = {}
---@alias CS.ParticleSystemCurveEditor.CurveData ParticleSystemCurveEditor.CurveData
CS.ParticleSystemCurveEditor.CurveData = ParticleSystemCurveEditor.CurveData

---@param name string
---@param displayName UnityEngine.GUIContent
---@param min UnityEditor.SerializedProperty
---@param max UnityEditor.SerializedProperty
---@param color UnityEngine.Color
---@param signedRange boolean
---@param getAxisScalars UnityEditor.CurveWrapper.GetAxisScalarsCallback
---@param setAxisScalars UnityEditor.CurveWrapper.SetAxisScalarsCallback
---@param visible boolean
---@return ParticleSystemCurveEditor.CurveData
function ParticleSystemCurveEditor.CurveData.New(name, displayName, min, max, color, signedRange, getAxisScalars, setAxisScalars, visible) end
---@return boolean
function ParticleSystemCurveEditor.CurveData:IsRegion() end

---@class IConflictResolver
IConflictResolver = {}
---@alias CS.IConflictResolver IConflictResolver
CS.IConflictResolver = IConflictResolver

---@param keyCombinationSequence System.Collections.Generic.IEnumerable
---@param entries System.Collections.Generic.IEnumerable
function IConflictResolver:ResolveConflict(keyCombinationSequence, entries) end
function IConflictResolver:Cancel() end
---@param entry UnityEditor.ShortcutManagement.ShortcutEntry
function IConflictResolver:ExecuteOnce(entry) end
---@param entry UnityEditor.ShortcutManagement.ShortcutEntry
function IConflictResolver:ExecuteAlways(entry) end
function IConflictResolver:GoToShortcutManagerConflictCategory() end

---@class UnityEngine.CubemapArrayInspector : UnityEditor.TextureInspector
---@field m_PreviewDir UnityEngine.Vector2
UnityEngine.CubemapArrayInspector = {}
---@alias CS.UnityEngine.CubemapArrayInspector UnityEngine.CubemapArrayInspector
CS.UnityEngine.CubemapArrayInspector = UnityEngine.CubemapArrayInspector

---@return UnityEngine.CubemapArrayInspector
function UnityEngine.CubemapArrayInspector.New() end
function UnityEngine.CubemapArrayInspector:OnPreviewSettings() end
---@param r UnityEngine.Rect
---@param background UnityEngine.GUIStyle
function UnityEngine.CubemapArrayInspector:OnPreviewGUI(r, background) end
---@param assetPath string
---@param subAssets UnityEngine.Object[]
---@param width number
---@param height number
---@return UnityEngine.Texture2D
function UnityEngine.CubemapArrayInspector:RenderStaticPreview(assetPath, subAssets, width, height) end

---@class UnityEngine.CubemapArrayInspector.Styles : System.Object
---@field slice UnityEngine.GUIContent
---@field toolbarLabel UnityEngine.GUIStyle
UnityEngine.CubemapArrayInspector.Styles = {}
---@alias CS.UnityEngine.CubemapArrayInspector.Styles UnityEngine.CubemapArrayInspector.Styles
CS.UnityEngine.CubemapArrayInspector.Styles = UnityEngine.CubemapArrayInspector.Styles


---@class UnityEngine.RuntimeInitializeMethodInfo : System.Object
UnityEngine.RuntimeInitializeMethodInfo = {}
---@alias CS.UnityEngine.RuntimeInitializeMethodInfo UnityEngine.RuntimeInitializeMethodInfo
CS.UnityEngine.RuntimeInitializeMethodInfo = UnityEngine.RuntimeInitializeMethodInfo

---@return UnityEngine.RuntimeInitializeMethodInfo
function UnityEngine.RuntimeInitializeMethodInfo.New() end

---@class UnityEngine.RuntimeInitializeClassInfo : System.Object
---@field assemblyName string
---@field nameSpace string
---@field className string
---@field methodName string
---@field loadTypes number
UnityEngine.RuntimeInitializeClassInfo = {}
---@alias CS.UnityEngine.RuntimeInitializeClassInfo UnityEngine.RuntimeInitializeClassInfo
CS.UnityEngine.RuntimeInitializeClassInfo = UnityEngine.RuntimeInitializeClassInfo

---@return UnityEngine.RuntimeInitializeClassInfo
function UnityEngine.RuntimeInitializeClassInfo.New() end

---@class UnityEngine.RuntimeInitializeOnLoadManager : System.Object
UnityEngine.RuntimeInitializeOnLoadManager = {}
---@alias CS.UnityEngine.RuntimeInitializeOnLoadManager UnityEngine.RuntimeInitializeOnLoadManager
CS.UnityEngine.RuntimeInitializeOnLoadManager = UnityEngine.RuntimeInitializeOnLoadManager

---@return UnityEngine.RuntimeInitializeOnLoadManager
function UnityEngine.RuntimeInitializeOnLoadManager.New() end

---@class UnityEngine.Rendering.VirtualTexturingEditor.Building : System.Object
UnityEngine.Rendering.VirtualTexturingEditor.Building = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturingEditor.Building UnityEngine.Rendering.VirtualTexturingEditor.Building
CS.UnityEngine.Rendering.VirtualTexturingEditor.Building = UnityEngine.Rendering.VirtualTexturingEditor.Building


---@class UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks
UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks
CS.UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks = UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks

---@return System.Collections.Generic.IList
function UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks:OnIncludeAdditionalStacksInPlayer() end
---@param bundleName string
---@param variantName string
---@param stackOwners System.Collections.Generic.IList
---@return boolean
function UnityEngine.Rendering.VirtualTexturingEditor.Building.IBuildStacks:OnPreparedStacksInAssetBundle(bundleName, variantName, stackOwners) end

---@class UnityEngine.Rendering.VirtualTexturingEditor.StackBuildingFeedbackInterfaces : System.Object
UnityEngine.Rendering.VirtualTexturingEditor.StackBuildingFeedbackInterfaces = {}
---@alias CS.UnityEngine.Rendering.VirtualTexturingEditor.StackBuildingFeedbackInterfaces UnityEngine.Rendering.VirtualTexturingEditor.StackBuildingFeedbackInterfaces
CS.UnityEngine.Rendering.VirtualTexturingEditor.StackBuildingFeedbackInterfaces = UnityEngine.Rendering.VirtualTexturingEditor.StackBuildingFeedbackInterfaces


---@class UnityEngine.U2D.Interface.IEvent
---@field type UnityEngine.EventType
---@field commandName string
---@field control boolean
---@field alt boolean
---@field shift boolean
---@field keyCode UnityEngine.KeyCode
---@field mousePosition UnityEngine.Vector2
---@field button number
---@field modifiers UnityEngine.EventModifiers
UnityEngine.U2D.Interface.IEvent = {}
---@alias CS.UnityEngine.U2D.Interface.IEvent UnityEngine.U2D.Interface.IEvent
CS.UnityEngine.U2D.Interface.IEvent = UnityEngine.U2D.Interface.IEvent

---@param id number
---@return UnityEngine.EventType
function UnityEngine.U2D.Interface.IEvent:GetTypeForControl(id) end
function UnityEngine.U2D.Interface.IEvent:Use() end

---@class UnityEngine.U2D.Interface.Event : System.Object
---@field type UnityEngine.EventType
---@field commandName string
---@field control boolean
---@field alt boolean
---@field shift boolean
---@field keyCode UnityEngine.KeyCode
---@field mousePosition UnityEngine.Vector2
---@field button number
---@field modifiers UnityEngine.EventModifiers
UnityEngine.U2D.Interface.Event = {}
---@alias CS.UnityEngine.U2D.Interface.Event UnityEngine.U2D.Interface.Event
CS.UnityEngine.U2D.Interface.Event = UnityEngine.U2D.Interface.Event

---@return UnityEngine.U2D.Interface.Event
function UnityEngine.U2D.Interface.Event.New() end
function UnityEngine.U2D.Interface.Event:Use() end
---@param id number
---@return UnityEngine.EventType
function UnityEngine.U2D.Interface.Event:GetTypeForControl(id) end

---@class UnityEngine.U2D.Interface.IEventSystem
---@field current UnityEngine.U2D.Interface.IEvent
UnityEngine.U2D.Interface.IEventSystem = {}
---@alias CS.UnityEngine.U2D.Interface.IEventSystem UnityEngine.U2D.Interface.IEventSystem
CS.UnityEngine.U2D.Interface.IEventSystem = UnityEngine.U2D.Interface.IEventSystem


---@class UnityEngine.U2D.Interface.EventSystem : System.Object
---@field current UnityEngine.U2D.Interface.IEvent
UnityEngine.U2D.Interface.EventSystem = {}
---@alias CS.UnityEngine.U2D.Interface.EventSystem UnityEngine.U2D.Interface.EventSystem
CS.UnityEngine.U2D.Interface.EventSystem = UnityEngine.U2D.Interface.EventSystem

---@return UnityEngine.U2D.Interface.EventSystem
function UnityEngine.U2D.Interface.EventSystem.New() end

---@class UnityEngine.TextCore.Text.GlyphProxy : System.ValueType
---@field index number
---@field glyphRect UnityEngine.TextCore.GlyphRect
---@field metrics UnityEngine.TextCore.GlyphMetrics
---@field atlasIndex number
UnityEngine.TextCore.Text.GlyphProxy = {}
---@alias CS.UnityEngine.TextCore.Text.GlyphProxy UnityEngine.TextCore.Text.GlyphProxy
CS.UnityEngine.TextCore.Text.GlyphProxy = UnityEngine.TextCore.Text.GlyphProxy


---@class UnityEngine.TextCore.Text.FontAssetEditorUtilities : System.Object
UnityEngine.TextCore.Text.FontAssetEditorUtilities = {}
---@alias CS.UnityEngine.TextCore.Text.FontAssetEditorUtilities UnityEngine.TextCore.Text.FontAssetEditorUtilities
CS.UnityEngine.TextCore.Text.FontAssetEditorUtilities = UnityEngine.TextCore.Text.FontAssetEditorUtilities


---@class UnityEngine.UIElements.AngleField : UnityEngine.UIElements.BaseField
---@field value UnityEngine.UIElements.AngleField -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.UIElements.Angle]
UnityEngine.UIElements.AngleField = {}
---@alias CS.UnityEngine.UIElements.AngleField UnityEngine.UIElements.AngleField
CS.UnityEngine.UIElements.AngleField = UnityEngine.UIElements.AngleField

---@overload fun(label: string) : UnityEngine.UIElements.AngleField
---@param label string
---@param angle UnityEngine.UIElements.Angle
---@return UnityEngine.UIElements.AngleField
function UnityEngine.UIElements.AngleField.New(label, angle) end
---@param angle UnityEngine.UIElements.Angle
function UnityEngine.UIElements.AngleField:SetValueWithoutNotify(angle) end

---@class UnityEngine.UIElements.RotateField : UnityEngine.UIElements.BaseField
---@field value UnityEngine.UIElements.RotateField -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.UIElements.Rotate]
UnityEngine.UIElements.RotateField = {}
---@alias CS.UnityEngine.UIElements.RotateField UnityEngine.UIElements.RotateField
CS.UnityEngine.UIElements.RotateField = UnityEngine.UIElements.RotateField

---@overload fun() : UnityEngine.UIElements.RotateField
---@overload fun(label: string) : UnityEngine.UIElements.RotateField
---@param label string
---@param rotate UnityEngine.UIElements.Rotate
---@return UnityEngine.UIElements.RotateField
function UnityEngine.UIElements.RotateField.New(label, rotate) end
---@param rotate UnityEngine.UIElements.Rotate
function UnityEngine.UIElements.RotateField:SetValueWithoutNotify(rotate) end

---@class UnityEngine.UIElements.TranslateField : UnityEngine.UIElements.BaseField
---@field value UnityEngine.UIElements.TranslateField -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.UIElements.Translate]
UnityEngine.UIElements.TranslateField = {}
---@alias CS.UnityEngine.UIElements.TranslateField UnityEngine.UIElements.TranslateField
CS.UnityEngine.UIElements.TranslateField = UnityEngine.UIElements.TranslateField

---@overload fun() : UnityEngine.UIElements.TranslateField
---@overload fun(label: string) : UnityEngine.UIElements.TranslateField
---@param label string
---@param t UnityEngine.UIElements.Translate
---@return UnityEngine.UIElements.TranslateField
function UnityEngine.UIElements.TranslateField.New(label, t) end
---@param t UnityEngine.UIElements.Translate
function UnityEngine.UIElements.TranslateField:SetValueWithoutNotify(t) end

---@class UnityEngine.UIElements.TransformOriginField : UnityEngine.UIElements.BaseField
---@field value UnityEngine.UIElements.TransformOriginField -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.UIElements.TransformOrigin]
UnityEngine.UIElements.TransformOriginField = {}
---@alias CS.UnityEngine.UIElements.TransformOriginField UnityEngine.UIElements.TransformOriginField
CS.UnityEngine.UIElements.TransformOriginField = UnityEngine.UIElements.TransformOriginField

---@overload fun() : UnityEngine.UIElements.TransformOriginField
---@overload fun(label: string) : UnityEngine.UIElements.TransformOriginField
---@param label string
---@param to UnityEngine.UIElements.TransformOrigin
---@return UnityEngine.UIElements.TransformOriginField
function UnityEngine.UIElements.TransformOriginField.New(label, to) end
---@param to UnityEngine.UIElements.TransformOrigin
function UnityEngine.UIElements.TransformOriginField:SetValueWithoutNotify(to) end

---@class UnityEngine.UIElements.BackgroundRepeatField : UnityEngine.UIElements.BaseField
---@field value UnityEngine.UIElements.BackgroundRepeatField -- infered from UnityEngine.UIElements.BaseField`1[UnityEngine.UIElements.BackgroundRepeat]
UnityEngine.UIElements.BackgroundRepeatField = {}
---@alias CS.UnityEngine.UIElements.BackgroundRepeatField UnityEngine.UIElements.BackgroundRepeatField
CS.UnityEngine.UIElements.BackgroundRepeatField = UnityEngine.UIElements.BackgroundRepeatField

---@overload fun() : UnityEngine.UIElements.BackgroundRepeatField
---@overload fun(label: string) : UnityEngine.UIElements.BackgroundRepeatField
---@param label string
---@param br UnityEngine.UIElements.BackgroundRepeat
---@return UnityEngine.UIElements.BackgroundRepeatField
function UnityEngine.UIElements.BackgroundRepeatField.New(label, br) end
---@param br UnityEngine.UIElements.BackgroundRepeat
function UnityEngine.UIElements.BackgroundRepeatField:SetValueWithoutNotify(br) end

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

---@class ConfigXmlTextReader : System.Xml.XmlTextReader
---@field Filename string
ConfigXmlTextReader = {}
---@alias CS.ConfigXmlTextReader ConfigXmlTextReader
CS.ConfigXmlTextReader = ConfigXmlTextReader

---@overload fun(s: System.IO.Stream, fileName: string) : ConfigXmlTextReader
---@param input System.IO.TextReader
---@param fileName string
---@return ConfigXmlTextReader
function ConfigXmlTextReader.New(input, fileName) end

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


---@class ThisAssembly : System.Object
---@field Version string
ThisAssembly = {}
---@alias CS.ThisAssembly ThisAssembly
CS.ThisAssembly = ThisAssembly


---@class SqlDependencyProcessDispatcher : System.MarshalByRefObject
SqlDependencyProcessDispatcher = {}
---@alias CS.SqlDependencyProcessDispatcher SqlDependencyProcessDispatcher
CS.SqlDependencyProcessDispatcher = SqlDependencyProcessDispatcher

---@return SqlDependencyProcessDispatcher
function SqlDependencyProcessDispatcher.New() end
---@return System.Object
function SqlDependencyProcessDispatcher:InitializeLifetimeService() end

---@class SqlDependencyProcessDispatcher.SqlConnectionContainer : System.Object
SqlDependencyProcessDispatcher.SqlConnectionContainer = {}
---@alias CS.SqlDependencyProcessDispatcher.SqlConnectionContainer SqlDependencyProcessDispatcher.SqlConnectionContainer
CS.SqlDependencyProcessDispatcher.SqlConnectionContainer = SqlDependencyProcessDispatcher.SqlConnectionContainer


---@class SqlDependencyProcessDispatcher.SqlNotificationParser : System.Object
SqlDependencyProcessDispatcher.SqlNotificationParser = {}
---@alias CS.SqlDependencyProcessDispatcher.SqlNotificationParser SqlDependencyProcessDispatcher.SqlNotificationParser
CS.SqlDependencyProcessDispatcher.SqlNotificationParser = SqlDependencyProcessDispatcher.SqlNotificationParser

---@return SqlDependencyProcessDispatcher.SqlNotificationParser
function SqlDependencyProcessDispatcher.SqlNotificationParser.New() end

---@class SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes
---@field None SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes
---@field Type SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes
---@field Source SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes
---@field Info SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes
---@field All SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes
SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes = {}
---@alias CS.SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes
CS.SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes = SqlDependencyProcessDispatcher.SqlNotificationParser.MessageAttributes


---@class SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper : System.Object
SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper = {}
---@alias CS.SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper
CS.SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper = SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper

---@param value System.Object
---@return boolean
function SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper:Equals(value) end
---@return number
function SqlDependencyProcessDispatcher.SqlConnectionContainerHashHelper:GetHashCode() end

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

---@class DiagnosticListener : System.Object
DiagnosticListener = {}
---@alias CS.DiagnosticListener DiagnosticListener
CS.DiagnosticListener = DiagnosticListener


---@class Res : System.Object
---@field ADP_InvalidXMLBadVersion string
---@field ADP_NotAPermissionElement string
---@field ADP_PermissionTypeMismatch string
---@field ConfigProviderNotFound string
---@field ConfigProviderInvalid string
---@field ConfigProviderNotInstalled string
---@field ConfigProviderMissing string
---@field ConfigBaseElementsOnly string
---@field ConfigBaseNoChildNodes string
---@field ConfigUnrecognizedAttributes string
---@field ConfigUnrecognizedElement string
---@field ConfigSectionsUnique string
---@field ConfigRequiredAttributeMissing string
---@field ConfigRequiredAttributeEmpty string
---@field ADP_QuotePrefixNotSet string
Res = {}
---@alias CS.Res Res
CS.Res = Res


---@class ThisAssembly : System.Object
---@field InformationalVersion string
ThisAssembly = {}
---@alias CS.ThisAssembly ThisAssembly
CS.ThisAssembly = ThisAssembly


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


---@class TaskSchedulerExtensions : System.Object
TaskSchedulerExtensions = {}
---@alias CS.TaskSchedulerExtensions TaskSchedulerExtensions
CS.TaskSchedulerExtensions = TaskSchedulerExtensions


---@class IReadPipe
IReadPipe = {}
---@alias CS.IReadPipe IReadPipe
CS.IReadPipe = IReadPipe

---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function IReadPipe:WaitForConnectionAsync(cancellationToken) end
---@param buf System.Byte[]
---@param start number
---@param length number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function IReadPipe:ReadAsync(buf, start, length, cancellationToken) end
function IReadPipe:Disconnect() end

---@class IWritePipe
IWritePipe = {}
---@alias CS.IWritePipe IWritePipe
CS.IWritePipe = IWritePipe

---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function IWritePipe:WaitForConnectionAsync(cancellationToken) end
---@param buf System.Byte[]
---@param start number
---@param length number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function IWritePipe:WriteAsync(buf, start, length, cancellationToken) end
function IWritePipe:Disconnect() end

---@class IPCConnection : System.Object
---@field WritePipe IWritePipe
---@field ReadPipe IReadPipe
IPCConnection = {}
---@alias CS.IPCConnection IPCConnection
CS.IPCConnection = IPCConnection

---@return IPCConnection
function IPCConnection.New() end
---@return IPCConnection
function IPCConnection.Create() end
---@return System.Collections.Generic.Dictionary
function IPCConnection:EnvironmentVarsForStartingProcess() end
function IPCConnection:Dispose() end

---@class IPCConnection.WrappedNamedServerStream : System.Object
IPCConnection.WrappedNamedServerStream = {}
---@alias CS.IPCConnection.WrappedNamedServerStream IPCConnection.WrappedNamedServerStream
CS.IPCConnection.WrappedNamedServerStream = IPCConnection.WrappedNamedServerStream

---@param stream System.IO.Pipes.NamedPipeServerStream
---@return IPCConnection.WrappedNamedServerStream
function IPCConnection.WrappedNamedServerStream.New(stream) end
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function IPCConnection.WrappedNamedServerStream:WaitForConnectionAsync(cancellationToken) end
---@param buf System.Byte[]
---@param start number
---@param length number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function IPCConnection.WrappedNamedServerStream:WriteAsync(buf, start, length, cancellationToken) end
---@param buf System.Byte[]
---@param start number
---@param length number
---@param cancellationToken System.Threading.CancellationToken
---@return System.Threading.Tasks.Task
function IPCConnection.WrappedNamedServerStream:ReadAsync(buf, start, length, cancellationToken) end
---@return System.IO.Stream
function IPCConnection.WrappedNamedServerStream:AsStream() end
function IPCConnection.WrappedNamedServerStream:Disconnect() end
function IPCConnection.WrappedNamedServerStream:Dispose() end

---@class ProfilerBlock : System.ValueType
ProfilerBlock = {}
---@alias CS.ProfilerBlock ProfilerBlock
CS.ProfilerBlock = ProfilerBlock

---@param name string
---@return ProfilerBlock
function ProfilerBlock.New(name) end
function ProfilerBlock:Dispose() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class DG.Tweening.DOTweenModuleAudio : System.Object
DG.Tweening.DOTweenModuleAudio = {}
---@alias CS.DG.Tweening.DOTweenModuleAudio DG.Tweening.DOTweenModuleAudio
CS.DG.Tweening.DOTweenModuleAudio = DG.Tweening.DOTweenModuleAudio

---@param target UnityEngine.AudioSource
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleAudio.DOFade(target, endValue, duration) end
---@param target UnityEngine.AudioSource
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleAudio.DOPitch(target, endValue, duration) end
---@param target UnityEngine.Audio.AudioMixer
---@param floatName string
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleAudio.DOSetFloat(target, floatName, endValue, duration) end
---@param target UnityEngine.Audio.AudioMixer
---@param withCallbacks boolean
---@return number
function DG.Tweening.DOTweenModuleAudio.DOComplete(target, withCallbacks) end
---@param target UnityEngine.Audio.AudioMixer
---@param complete boolean
---@return number
function DG.Tweening.DOTweenModuleAudio.DOKill(target, complete) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DOFlip(target) end
---@param target UnityEngine.Audio.AudioMixer
---@param to number
---@param andPlay boolean
---@return number
function DG.Tweening.DOTweenModuleAudio.DOGoto(target, to, andPlay) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DOPause(target) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DOPlay(target) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DOPlayBackwards(target) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DOPlayForward(target) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DORestart(target) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DORewind(target) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DOSmoothRewind(target) end
---@param target UnityEngine.Audio.AudioMixer
---@return number
function DG.Tweening.DOTweenModuleAudio.DOTogglePause(target) end

---@class DG.Tweening.DOTweenModulePhysics : System.Object
DG.Tweening.DOTweenModulePhysics = {}
---@alias CS.DG.Tweening.DOTweenModulePhysics DG.Tweening.DOTweenModulePhysics
CS.DG.Tweening.DOTweenModulePhysics = DG.Tweening.DOTweenModulePhysics

---@param target UnityEngine.Rigidbody
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DOMove(target, endValue, duration, snapping) end
---@param target UnityEngine.Rigidbody
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DOMoveX(target, endValue, duration, snapping) end
---@param target UnityEngine.Rigidbody
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DOMoveY(target, endValue, duration, snapping) end
---@param target UnityEngine.Rigidbody
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DOMoveZ(target, endValue, duration, snapping) end
---@param target UnityEngine.Rigidbody
---@param endValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DORotate(target, endValue, duration, mode) end
---@param target UnityEngine.Rigidbody
---@param towards UnityEngine.Vector3
---@param duration number
---@param axisConstraint DG.Tweening.AxisConstraint
---@param up System.Nullable
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DOLookAt(target, towards, duration, axisConstraint, up) end
---@param target UnityEngine.Rigidbody
---@param endValue UnityEngine.Vector3
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function DG.Tweening.DOTweenModulePhysics.DOJump(target, endValue, jumpPower, numJumps, duration, snapping) end
---@param target UnityEngine.Rigidbody
---@param path UnityEngine.Vector3[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DOPath(target, path, duration, pathType, pathMode, resolution, gizmoColor) end
---@param target UnityEngine.Rigidbody
---@param path UnityEngine.Vector3[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics.DOLocalPath(target, path, duration, pathType, pathMode, resolution, gizmoColor) end

---@class DG.Tweening.DOTweenModulePhysics2D : System.Object
DG.Tweening.DOTweenModulePhysics2D = {}
---@alias CS.DG.Tweening.DOTweenModulePhysics2D DG.Tweening.DOTweenModulePhysics2D
CS.DG.Tweening.DOTweenModulePhysics2D = DG.Tweening.DOTweenModulePhysics2D

---@param target UnityEngine.Rigidbody2D
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics2D.DOMove(target, endValue, duration, snapping) end
---@param target UnityEngine.Rigidbody2D
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics2D.DOMoveX(target, endValue, duration, snapping) end
---@param target UnityEngine.Rigidbody2D
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics2D.DOMoveY(target, endValue, duration, snapping) end
---@param target UnityEngine.Rigidbody2D
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics2D.DORotate(target, endValue, duration) end
---@param target UnityEngine.Rigidbody2D
---@param endValue UnityEngine.Vector2
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function DG.Tweening.DOTweenModulePhysics2D.DOJump(target, endValue, jumpPower, numJumps, duration, snapping) end
---@param target UnityEngine.Rigidbody2D
---@param path UnityEngine.Vector2[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics2D.DOPath(target, path, duration, pathType, pathMode, resolution, gizmoColor) end
---@param target UnityEngine.Rigidbody2D
---@param path UnityEngine.Vector2[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModulePhysics2D.DOLocalPath(target, path, duration, pathType, pathMode, resolution, gizmoColor) end

---@class DG.Tweening.DOTweenModuleSprite : System.Object
DG.Tweening.DOTweenModuleSprite = {}
---@alias CS.DG.Tweening.DOTweenModuleSprite DG.Tweening.DOTweenModuleSprite
CS.DG.Tweening.DOTweenModuleSprite = DG.Tweening.DOTweenModuleSprite

---@param target UnityEngine.SpriteRenderer
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleSprite.DOColor(target, endValue, duration) end
---@param target UnityEngine.SpriteRenderer
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleSprite.DOFade(target, endValue, duration) end
---@param target UnityEngine.SpriteRenderer
---@param gradient UnityEngine.Gradient
---@param duration number
---@return DG.Tweening.Sequence
function DG.Tweening.DOTweenModuleSprite.DOGradientColor(target, gradient, duration) end
---@param target UnityEngine.SpriteRenderer
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Tweener
function DG.Tweening.DOTweenModuleSprite.DOBlendableColor(target, endValue, duration) end

---@class DG.Tweening.DOTweenModuleUI : System.Object
DG.Tweening.DOTweenModuleUI = {}
---@alias CS.DG.Tweening.DOTweenModuleUI DG.Tweening.DOTweenModuleUI
CS.DG.Tweening.DOTweenModuleUI = DG.Tweening.DOTweenModuleUI

---@overload fun(target: UnityEngine.CanvasGroup, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.UI.Graphic, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.UI.Image, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.UI.Outline, endValue: number, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.UI.Text
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOFade(target, endValue, duration) end
---@overload fun(target: UnityEngine.UI.Graphic, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.UI.Image, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Core.TweenerCore
---@overload fun(target: UnityEngine.UI.Outline, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Core.TweenerCore
---@param target UnityEngine.UI.Text
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOColor(target, endValue, duration) end
---@param target UnityEngine.UI.Image
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOFillAmount(target, endValue, duration) end
---@param target UnityEngine.UI.Image
---@param gradient UnityEngine.Gradient
---@param duration number
---@return DG.Tweening.Sequence
function DG.Tweening.DOTweenModuleUI.DOGradientColor(target, gradient, duration) end
---@param target UnityEngine.UI.LayoutElement
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOFlexibleSize(target, endValue, duration, snapping) end
---@param target UnityEngine.UI.LayoutElement
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOMinSize(target, endValue, duration, snapping) end
---@param target UnityEngine.UI.LayoutElement
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOPreferredSize(target, endValue, duration, snapping) end
---@param target UnityEngine.UI.Outline
---@param endValue UnityEngine.Vector2
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOScale(target, endValue, duration) end
---@param target UnityEngine.RectTransform
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorPos(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorPosX(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorPosY(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorPos3D(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorPos3DX(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorPos3DY(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorPos3DZ(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorMax(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOAnchorMin(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param endValue UnityEngine.Vector2
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOPivot(target, endValue, duration) end
---@param target UnityEngine.RectTransform
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOPivotX(target, endValue, duration) end
---@param target UnityEngine.RectTransform
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOPivotY(target, endValue, duration) end
---@param target UnityEngine.RectTransform
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOSizeDelta(target, endValue, duration, snapping) end
---@param target UnityEngine.RectTransform
---@param punch UnityEngine.Vector2
---@param duration number
---@param vibrato number
---@param elasticity number
---@param snapping boolean
---@return DG.Tweening.Tweener
function DG.Tweening.DOTweenModuleUI.DOPunchAnchorPos(target, punch, duration, vibrato, elasticity, snapping) end
---@overload fun(target: UnityEngine.RectTransform, duration: number, strength: number, vibrato: number, randomness: number, snapping: boolean, fadeOut: boolean, randomnessMode: DG.Tweening.ShakeRandomnessMode) : DG.Tweening.Tweener
---@param target UnityEngine.RectTransform
---@param duration number
---@param strength UnityEngine.Vector2
---@param vibrato number
---@param randomness number
---@param snapping boolean
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function DG.Tweening.DOTweenModuleUI.DOShakeAnchorPos(target, duration, strength, vibrato, randomness, snapping, fadeOut, randomnessMode) end
---@param target UnityEngine.RectTransform
---@param endValue UnityEngine.Vector2
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function DG.Tweening.DOTweenModuleUI.DOJumpAnchorPos(target, endValue, jumpPower, numJumps, duration, snapping) end
---@param target UnityEngine.UI.ScrollRect
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Tweener
function DG.Tweening.DOTweenModuleUI.DONormalizedPos(target, endValue, duration, snapping) end
---@param target UnityEngine.UI.ScrollRect
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Tweener
function DG.Tweening.DOTweenModuleUI.DOHorizontalNormalizedPos(target, endValue, duration, snapping) end
---@param target UnityEngine.UI.ScrollRect
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Tweener
function DG.Tweening.DOTweenModuleUI.DOVerticalNormalizedPos(target, endValue, duration, snapping) end
---@param target UnityEngine.UI.Slider
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOValue(target, endValue, duration, snapping) end
---@param target UnityEngine.UI.Text
---@param fromValue number
---@param endValue number
---@param duration number
---@param addThousandsSeparator boolean
---@param culture System.Globalization.CultureInfo
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOCounter(target, fromValue, endValue, duration, addThousandsSeparator, culture) end
---@param target UnityEngine.UI.Text
---@param endValue string
---@param duration number
---@param richTextEnabled boolean
---@param scrambleMode DG.Tweening.ScrambleMode
---@param scrambleChars string
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOText(target, endValue, duration, richTextEnabled, scrambleMode, scrambleChars) end
---@overload fun(target: UnityEngine.UI.Graphic, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Tweener
---@overload fun(target: UnityEngine.UI.Image, endValue: UnityEngine.Color, duration: number) : DG.Tweening.Tweener
---@param target UnityEngine.UI.Text
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Tweener
function DG.Tweening.DOTweenModuleUI.DOBlendableColor(target, endValue, duration) end
---@param target UnityEngine.RectTransform
---@param center UnityEngine.Vector2
---@param endValueDegrees number
---@param duration number
---@param relativeCenter boolean
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUI.DOShapeCircle(target, center, endValueDegrees, duration, relativeCenter, snapping) end

---@class DG.Tweening.DOTweenModuleUnityVersion : System.Object
DG.Tweening.DOTweenModuleUnityVersion = {}
---@alias CS.DG.Tweening.DOTweenModuleUnityVersion DG.Tweening.DOTweenModuleUnityVersion
CS.DG.Tweening.DOTweenModuleUnityVersion = DG.Tweening.DOTweenModuleUnityVersion

---@overload fun(target: UnityEngine.Material, gradient: UnityEngine.Gradient, duration: number) : DG.Tweening.Sequence
---@param target UnityEngine.Material
---@param gradient UnityEngine.Gradient
---@param property string
---@param duration number
---@return DG.Tweening.Sequence
function DG.Tweening.DOTweenModuleUnityVersion.DOGradientColor(target, gradient, property, duration) end
---@param t DG.Tweening.Tween
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.DOTweenModuleUnityVersion.WaitForCompletion(t, returnCustomYieldInstruction) end
---@param t DG.Tweening.Tween
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.DOTweenModuleUnityVersion.WaitForRewind(t, returnCustomYieldInstruction) end
---@param t DG.Tweening.Tween
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.DOTweenModuleUnityVersion.WaitForKill(t, returnCustomYieldInstruction) end
---@param t DG.Tweening.Tween
---@param elapsedLoops number
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.DOTweenModuleUnityVersion.WaitForElapsedLoops(t, elapsedLoops, returnCustomYieldInstruction) end
---@param t DG.Tweening.Tween
---@param position number
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.DOTweenModuleUnityVersion.WaitForPosition(t, position, returnCustomYieldInstruction) end
---@param t DG.Tweening.Tween
---@param returnCustomYieldInstruction boolean
---@return UnityEngine.CustomYieldInstruction
function DG.Tweening.DOTweenModuleUnityVersion.WaitForStart(t, returnCustomYieldInstruction) end
---@param target UnityEngine.Material
---@param endValue UnityEngine.Vector2
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUnityVersion.DOOffset(target, endValue, propertyID, duration) end
---@param target UnityEngine.Material
---@param endValue UnityEngine.Vector2
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUnityVersion.DOTiling(target, endValue, propertyID, duration) end
---@param t DG.Tweening.Tween
---@return System.Threading.Tasks.Task
function DG.Tweening.DOTweenModuleUnityVersion.AsyncWaitForCompletion(t) end
---@param t DG.Tweening.Tween
---@return System.Threading.Tasks.Task
function DG.Tweening.DOTweenModuleUnityVersion.AsyncWaitForRewind(t) end
---@param t DG.Tweening.Tween
---@return System.Threading.Tasks.Task
function DG.Tweening.DOTweenModuleUnityVersion.AsyncWaitForKill(t) end
---@param t DG.Tweening.Tween
---@param elapsedLoops number
---@return System.Threading.Tasks.Task
function DG.Tweening.DOTweenModuleUnityVersion.AsyncWaitForElapsedLoops(t, elapsedLoops) end
---@param t DG.Tweening.Tween
---@param position number
---@return System.Threading.Tasks.Task
function DG.Tweening.DOTweenModuleUnityVersion.AsyncWaitForPosition(t, position) end
---@param t DG.Tweening.Tween
---@return System.Threading.Tasks.Task
function DG.Tweening.DOTweenModuleUnityVersion.AsyncWaitForStart(t) end

---@class DG.Tweening.DOTweenCYInstruction : System.Object
DG.Tweening.DOTweenCYInstruction = {}
---@alias CS.DG.Tweening.DOTweenCYInstruction DG.Tweening.DOTweenCYInstruction
CS.DG.Tweening.DOTweenCYInstruction = DG.Tweening.DOTweenCYInstruction


---@class DG.Tweening.DOTweenModuleUtils : System.Object
DG.Tweening.DOTweenModuleUtils = {}
---@alias CS.DG.Tweening.DOTweenModuleUtils DG.Tweening.DOTweenModuleUtils
CS.DG.Tweening.DOTweenModuleUtils = DG.Tweening.DOTweenModuleUtils

function DG.Tweening.DOTweenModuleUtils.Init() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class DG.Tweening.DOTweenModuleUI.Utils : System.Object
DG.Tweening.DOTweenModuleUI.Utils = {}
---@alias CS.DG.Tweening.DOTweenModuleUI.Utils DG.Tweening.DOTweenModuleUI.Utils
CS.DG.Tweening.DOTweenModuleUI.Utils = DG.Tweening.DOTweenModuleUI.Utils

---@param from UnityEngine.RectTransform
---@param to UnityEngine.RectTransform
---@return UnityEngine.Vector2
function DG.Tweening.DOTweenModuleUI.Utils.SwitchToRectTransform(from, to) end

---@class DG.Tweening.DOTweenCYInstruction.WaitForCompletion : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
DG.Tweening.DOTweenCYInstruction.WaitForCompletion = {}
---@alias CS.DG.Tweening.DOTweenCYInstruction.WaitForCompletion DG.Tweening.DOTweenCYInstruction.WaitForCompletion
CS.DG.Tweening.DOTweenCYInstruction.WaitForCompletion = DG.Tweening.DOTweenCYInstruction.WaitForCompletion

---@param tween DG.Tweening.Tween
---@return DG.Tweening.DOTweenCYInstruction.WaitForCompletion
function DG.Tweening.DOTweenCYInstruction.WaitForCompletion.New(tween) end

---@class DG.Tweening.DOTweenCYInstruction.WaitForRewind : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
DG.Tweening.DOTweenCYInstruction.WaitForRewind = {}
---@alias CS.DG.Tweening.DOTweenCYInstruction.WaitForRewind DG.Tweening.DOTweenCYInstruction.WaitForRewind
CS.DG.Tweening.DOTweenCYInstruction.WaitForRewind = DG.Tweening.DOTweenCYInstruction.WaitForRewind

---@param tween DG.Tweening.Tween
---@return DG.Tweening.DOTweenCYInstruction.WaitForRewind
function DG.Tweening.DOTweenCYInstruction.WaitForRewind.New(tween) end

---@class DG.Tweening.DOTweenCYInstruction.WaitForKill : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
DG.Tweening.DOTweenCYInstruction.WaitForKill = {}
---@alias CS.DG.Tweening.DOTweenCYInstruction.WaitForKill DG.Tweening.DOTweenCYInstruction.WaitForKill
CS.DG.Tweening.DOTweenCYInstruction.WaitForKill = DG.Tweening.DOTweenCYInstruction.WaitForKill

---@param tween DG.Tweening.Tween
---@return DG.Tweening.DOTweenCYInstruction.WaitForKill
function DG.Tweening.DOTweenCYInstruction.WaitForKill.New(tween) end

---@class DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops = {}
---@alias CS.DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops
CS.DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops = DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops

---@param tween DG.Tweening.Tween
---@param elapsedLoops number
---@return DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops
function DG.Tweening.DOTweenCYInstruction.WaitForElapsedLoops.New(tween, elapsedLoops) end

---@class DG.Tweening.DOTweenCYInstruction.WaitForPosition : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
DG.Tweening.DOTweenCYInstruction.WaitForPosition = {}
---@alias CS.DG.Tweening.DOTweenCYInstruction.WaitForPosition DG.Tweening.DOTweenCYInstruction.WaitForPosition
CS.DG.Tweening.DOTweenCYInstruction.WaitForPosition = DG.Tweening.DOTweenCYInstruction.WaitForPosition

---@param tween DG.Tweening.Tween
---@param position number
---@return DG.Tweening.DOTweenCYInstruction.WaitForPosition
function DG.Tweening.DOTweenCYInstruction.WaitForPosition.New(tween, position) end

---@class DG.Tweening.DOTweenCYInstruction.WaitForStart : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
DG.Tweening.DOTweenCYInstruction.WaitForStart = {}
---@alias CS.DG.Tweening.DOTweenCYInstruction.WaitForStart DG.Tweening.DOTweenCYInstruction.WaitForStart
CS.DG.Tweening.DOTweenCYInstruction.WaitForStart = DG.Tweening.DOTweenCYInstruction.WaitForStart

---@param tween DG.Tweening.Tween
---@return DG.Tweening.DOTweenCYInstruction.WaitForStart
function DG.Tweening.DOTweenCYInstruction.WaitForStart.New(tween) end

---@class DG.Tweening.DOTweenModuleUtils.Physics : System.Object
DG.Tweening.DOTweenModuleUtils.Physics = {}
---@alias CS.DG.Tweening.DOTweenModuleUtils.Physics DG.Tweening.DOTweenModuleUtils.Physics
CS.DG.Tweening.DOTweenModuleUtils.Physics = DG.Tweening.DOTweenModuleUtils.Physics

---@param options DG.Tweening.Plugins.Options.PathOptions
---@param t DG.Tweening.Tween
---@param newRot UnityEngine.Quaternion
---@param trans UnityEngine.Transform
function DG.Tweening.DOTweenModuleUtils.Physics.SetOrientationOnPath(options, t, newRot, trans) end
---@param target UnityEngine.Component
---@return boolean
function DG.Tweening.DOTweenModuleUtils.Physics.HasRigidbody2D(target) end
---@param target UnityEngine.Component
---@return boolean
function DG.Tweening.DOTweenModuleUtils.Physics.HasRigidbody(target) end
---@param target UnityEngine.MonoBehaviour
---@param tweenRigidbody boolean
---@param isLocal boolean
---@param path DG.Tweening.Plugins.Core.PathCore.Path
---@param duration number
---@param pathMode DG.Tweening.PathMode
---@return DG.Tweening.Core.TweenerCore
function DG.Tweening.DOTweenModuleUtils.Physics.CreateDOTweenPathTween(target, tweenRigidbody, isLocal, path, duration, pathMode) end

---@class GameMath : System.Object
GameMath = {}
---@alias CS.GameMath GameMath
CS.GameMath = GameMath

---@param pos1 UnityEngine.Vector3
---@param pos2 UnityEngine.Vector3
---@return number
function GameMath.abs(pos1, pos2) end
---@param min number
---@param max number
---@param val number
---@return number
function GameMath.linearStep(min, max, val) end
---@param min1 number
---@param max1 number
---@param min2 number
---@param max2 number
---@param val number
---@return number
function GameMath.remap(min1, max1, min2, max2, val) end
---@param val number
---@return number
function GameMath.clamp01(val) end

---@class FireDamageTileEffectSO : GamePlay.Grid.TileEffectSO
---@field damageAmount number
---@field damageType Global.DamageType
FireDamageTileEffectSO = {}
---@alias CS.FireDamageTileEffectSO FireDamageTileEffectSO
CS.FireDamageTileEffectSO = FireDamageTileEffectSO

---@return FireDamageTileEffectSO
function FireDamageTileEffectSO.New() end
---@param unit GamePlay.Units.MapUnit
---@param mapObject GamePlay.Units.MapObject
function FireDamageTileEffectSO:onApply(unit, mapObject) end

---@class TurnManager : UnityEngine.MonoBehaviour
---@field Instance TurnManager
---@field ActiveUnit GamePlay.Units.MapUnit
---@field ActionQueue System.Collections.Generic.List
TurnManager = {}
---@alias CS.TurnManager TurnManager
CS.TurnManager = TurnManager

function TurnManager:StartBattle() end
function TurnManager:CalculateNextAction() end
function TurnManager:EndCurrentUnitTurn() end
function TurnManager:TryEndCurrentUnitTurn() end

---@class DamageTextAnimator : UnityEngine.MonoBehaviour
---@field floatSpeed number
---@field lifetime number
DamageTextAnimator = {}
---@alias CS.DamageTextAnimator DamageTextAnimator
CS.DamageTextAnimator = DamageTextAnimator


---@class ApplyExposureRenderFeature : UnityEngine.Rendering.Universal.ScriptableRendererFeature
---@field settings ApplyExposureRenderFeature.Settings
ApplyExposureRenderFeature = {}
---@alias CS.ApplyExposureRenderFeature ApplyExposureRenderFeature
CS.ApplyExposureRenderFeature = ApplyExposureRenderFeature

---@return ApplyExposureRenderFeature
function ApplyExposureRenderFeature.New() end
function ApplyExposureRenderFeature:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function ApplyExposureRenderFeature:AddRenderPasses(renderer, ref_renderingData) end

---@class AutoExposureRenderFeature : UnityEngine.Rendering.Universal.ScriptableRendererFeature
---@field CurrentExposureTexture UnityEngine.RenderTexture
---@field settings AutoExposureRenderFeature.Settings
AutoExposureRenderFeature = {}
---@alias CS.AutoExposureRenderFeature AutoExposureRenderFeature
CS.AutoExposureRenderFeature = AutoExposureRenderFeature

---@return AutoExposureRenderFeature
function AutoExposureRenderFeature.New() end
function AutoExposureRenderFeature:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function AutoExposureRenderFeature:AddRenderPasses(renderer, ref_renderingData) end

---@class TestCompileDebug : UnityEngine.MonoBehaviour
TestCompileDebug = {}
---@alias CS.TestCompileDebug TestCompileDebug
CS.TestCompileDebug = TestCompileDebug


---@class PortraitDragRotator : UnityEngine.MonoBehaviour
---@field target UnityEngine.Transform
---@field sensitivity number
PortraitDragRotator = {}
---@alias CS.PortraitDragRotator PortraitDragRotator
CS.PortraitDragRotator = PortraitDragRotator

---@param e UnityEngine.EventSystems.PointerEventData
function PortraitDragRotator:OnDrag(e) end

---@class GameInput : System.Object
---@field asset UnityEngine.InputSystem.InputActionAsset
---@field bindingMask System.Nullable
---@field devices System.Nullable
---@field controlSchemes UnityEngine.InputSystem.Utilities.ReadOnlyArray
---@field bindings System.Collections.Generic.IEnumerable
---@field UI GameInput.UIActions
---@field Gameplay GameInput.GameplayActions
---@field Debug GameInput.DebugActions
---@field KeyboardMouseScheme UnityEngine.InputSystem.InputControlScheme
GameInput = {}
---@alias CS.GameInput GameInput
CS.GameInput = GameInput

---@return GameInput
function GameInput.New() end
function GameInput:Dispose() end
---@param action UnityEngine.InputSystem.InputAction
---@return boolean
function GameInput:Contains(action) end
---@return System.Collections.Generic.IEnumerator
function GameInput:GetEnumerator() end
function GameInput:Enable() end
function GameInput:Disable() end
---@param actionNameOrId string
---@param throwIfNotFound boolean
---@return UnityEngine.InputSystem.InputAction
function GameInput:FindAction(actionNameOrId, throwIfNotFound) end
---@param bindingMask UnityEngine.InputSystem.InputBinding
---@param out_action UnityEngine.InputSystem.InputAction
---@return number,UnityEngine.InputSystem.InputAction
function GameInput:FindBinding(bindingMask, out_action) end

---@class FakeSunLight : UnityEngine.MonoBehaviour
---@field sunAngle number
---@field sunDeclination number
---@field minSunElevation number
---@field skyboxMaterial UnityEngine.Material
---@field dynamicSkyMap UnityEngine.RenderTexture
FakeSunLight = {}
---@alias CS.FakeSunLight FakeSunLight
CS.FakeSunLight = FakeSunLight


---@class PhysicsSunLight : UnityEngine.MonoBehaviour
---@field sunAngle number
---@field sunDeclination number
---@field skyboxMaterial UnityEngine.Material
---@field transmittanceLUT UnityEngine.Texture2D
PhysicsSunLight = {}
---@alias CS.PhysicsSunLight PhysicsSunLight
CS.PhysicsSunLight = PhysicsSunLight


---@class SSPRFeature : UnityEngine.Rendering.Universal.ScriptableRendererFeature
---@field settings SSPRFeature.SSPRSettings
SSPRFeature = {}
---@alias CS.SSPRFeature SSPRFeature
CS.SSPRFeature = SSPRFeature

---@return SSPRFeature
function SSPRFeature.New() end
function SSPRFeature:Create() end
---@param renderer UnityEngine.Rendering.Universal.ScriptableRenderer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function SSPRFeature:AddRenderPasses(renderer, ref_renderingData) end

---@class ChatController : UnityEngine.MonoBehaviour
---@field ChatInputField TMPro.TMP_InputField
---@field ChatDisplayOutput TMPro.TMP_Text
---@field ChatScrollbar UnityEngine.UI.Scrollbar
ChatController = {}
---@alias CS.ChatController ChatController
CS.ChatController = ChatController


---@class DropdownSample : UnityEngine.MonoBehaviour
DropdownSample = {}
---@alias CS.DropdownSample DropdownSample
CS.DropdownSample = DropdownSample

function DropdownSample:OnButtonClick() end

---@class EnvMapAnimator : UnityEngine.MonoBehaviour
---@field RotationSpeeds UnityEngine.Vector3
EnvMapAnimator = {}
---@alias CS.EnvMapAnimator EnvMapAnimator
CS.EnvMapAnimator = EnvMapAnimator


---@class Readme : UnityEngine.ScriptableObject
---@field icon UnityEngine.Texture2D
---@field title string
---@field sections Readme.Section[]
---@field loadedLayout boolean
Readme = {}
---@alias CS.Readme Readme
CS.Readme = Readme

---@return Readme
function Readme.New() end

---@class ExampleGenConfig : System.Object
---@field LuaCallCSharp System.Collections.Generic.List
---@field CSharpCallLua System.Collections.Generic.List
---@field BlackList System.Collections.Generic.List
---@field BlackGenericTypeList System.Collections.Generic.List
---@field GenericTypeFilter System.Func
ExampleGenConfig = {}
---@alias CS.ExampleGenConfig ExampleGenConfig
CS.ExampleGenConfig = ExampleGenConfig


---@class LuaCallCs : UnityEngine.MonoBehaviour
LuaCallCs = {}
---@alias CS.LuaCallCs LuaCallCs
CS.LuaCallCs = LuaCallCs


---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1 : System.Object
UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 UnitySourceGeneratedAssemblyMonoScriptTypes_v1
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1 = UnitySourceGeneratedAssemblyMonoScriptTypes_v1

---@return UnitySourceGeneratedAssemblyMonoScriptTypes_v1
function UnitySourceGeneratedAssemblyMonoScriptTypes_v1.New() end

---@class ApplyExposureRenderFeature.Settings : System.Object
---@field shader UnityEngine.Shader
ApplyExposureRenderFeature.Settings = {}
---@alias CS.ApplyExposureRenderFeature.Settings ApplyExposureRenderFeature.Settings
CS.ApplyExposureRenderFeature.Settings = ApplyExposureRenderFeature.Settings

---@return ApplyExposureRenderFeature.Settings
function ApplyExposureRenderFeature.Settings.New() end

---@class ApplyExposureRenderFeature.ApplyExposurePass : UnityEngine.Rendering.Universal.ScriptableRenderPass
ApplyExposureRenderFeature.ApplyExposurePass = {}
---@alias CS.ApplyExposureRenderFeature.ApplyExposurePass ApplyExposureRenderFeature.ApplyExposurePass
CS.ApplyExposureRenderFeature.ApplyExposurePass = ApplyExposureRenderFeature.ApplyExposurePass

---@param material UnityEngine.Material
---@param stubTex UnityEngine.Texture2D
---@return ApplyExposureRenderFeature.ApplyExposurePass
function ApplyExposureRenderFeature.ApplyExposurePass.New(material, stubTex) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function ApplyExposureRenderFeature.ApplyExposurePass:OnCameraSetup(cmd, ref_renderingData) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function ApplyExposureRenderFeature.ApplyExposurePass:Execute(context, ref_renderingData) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function ApplyExposureRenderFeature.ApplyExposurePass:OnCameraCleanup(cmd) end

---@class AutoExposureRenderFeature.Settings : System.Object
---@field computeShader UnityEngine.ComputeShader
---@field showLog boolean
---@field keyValue number
---@field compensationEV number
---@field speedDarkToLight number
---@field speedLightToDark number
---@field minLuminance number
---@field maxLuminance number
AutoExposureRenderFeature.Settings = {}
---@alias CS.AutoExposureRenderFeature.Settings AutoExposureRenderFeature.Settings
CS.AutoExposureRenderFeature.Settings = AutoExposureRenderFeature.Settings

---@return AutoExposureRenderFeature.Settings
function AutoExposureRenderFeature.Settings.New() end

---@class AutoExposureRenderFeature.AutoExposurePass : UnityEngine.Rendering.Universal.ScriptableRenderPass
AutoExposureRenderFeature.AutoExposurePass = {}
---@alias CS.AutoExposureRenderFeature.AutoExposurePass AutoExposureRenderFeature.AutoExposurePass
CS.AutoExposureRenderFeature.AutoExposurePass = AutoExposureRenderFeature.AutoExposurePass

---@param settings AutoExposureRenderFeature.Settings
---@return AutoExposureRenderFeature.AutoExposurePass
function AutoExposureRenderFeature.AutoExposurePass.New(settings) end
---@param rt UnityEngine.RenderTexture
function AutoExposureRenderFeature.AutoExposurePass:Setup(rt) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param cameraTextureDescriptor UnityEngine.RenderTextureDescriptor
function AutoExposureRenderFeature.AutoExposurePass:Configure(cmd, cameraTextureDescriptor) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function AutoExposureRenderFeature.AutoExposurePass:Execute(context, ref_renderingData) end

---@class GameInput.UIActions : System.ValueType
---@field Navigate UnityEngine.InputSystem.InputAction
---@field Submit UnityEngine.InputSystem.InputAction
---@field Cancel UnityEngine.InputSystem.InputAction
---@field Point UnityEngine.InputSystem.InputAction
---@field LeftClick UnityEngine.InputSystem.InputAction
---@field RightClick UnityEngine.InputSystem.InputAction
---@field MiddleClick UnityEngine.InputSystem.InputAction
---@field ScrollWheel UnityEngine.InputSystem.InputAction
---@field enabled boolean
GameInput.UIActions = {}
---@alias CS.GameInput.UIActions GameInput.UIActions
CS.GameInput.UIActions = GameInput.UIActions

---@param wrapper GameInput
---@return GameInput.UIActions
function GameInput.UIActions.New(wrapper) end
---@return UnityEngine.InputSystem.InputActionMap
function GameInput.UIActions:Get() end
function GameInput.UIActions:Enable() end
function GameInput.UIActions:Disable() end
---@param instance GameInput.IUIActions
function GameInput.UIActions:AddCallbacks(instance) end
---@param instance GameInput.IUIActions
function GameInput.UIActions:RemoveCallbacks(instance) end
---@param instance GameInput.IUIActions
function GameInput.UIActions:SetCallbacks(instance) end

---@class GameInput.GameplayActions : System.ValueType
---@field Move UnityEngine.InputSystem.InputAction
---@field RotateLeft UnityEngine.InputSystem.InputAction
---@field RotateRight UnityEngine.InputSystem.InputAction
---@field HeightUp UnityEngine.InputSystem.InputAction
---@field HeightDown UnityEngine.InputSystem.InputAction
---@field Zoom UnityEngine.InputSystem.InputAction
---@field Confirm UnityEngine.InputSystem.InputAction
---@field Cancel UnityEngine.InputSystem.InputAction
---@field Point UnityEngine.InputSystem.InputAction
---@field SpeedBoost UnityEngine.InputSystem.InputAction
---@field ViewDefault UnityEngine.InputSystem.InputAction
---@field ViewTopDown UnityEngine.InputSystem.InputAction
---@field ViewFront UnityEngine.InputSystem.InputAction
---@field ViewRight UnityEngine.InputSystem.InputAction
---@field enabled boolean
GameInput.GameplayActions = {}
---@alias CS.GameInput.GameplayActions GameInput.GameplayActions
CS.GameInput.GameplayActions = GameInput.GameplayActions

---@param wrapper GameInput
---@return GameInput.GameplayActions
function GameInput.GameplayActions.New(wrapper) end
---@return UnityEngine.InputSystem.InputActionMap
function GameInput.GameplayActions:Get() end
function GameInput.GameplayActions:Enable() end
function GameInput.GameplayActions:Disable() end
---@param instance GameInput.IGameplayActions
function GameInput.GameplayActions:AddCallbacks(instance) end
---@param instance GameInput.IGameplayActions
function GameInput.GameplayActions:RemoveCallbacks(instance) end
---@param instance GameInput.IGameplayActions
function GameInput.GameplayActions:SetCallbacks(instance) end

---@class GameInput.DebugActions : System.ValueType
---@field Undo UnityEngine.InputSystem.InputAction
---@field ToggleCursor UnityEngine.InputSystem.InputAction
---@field enabled boolean
GameInput.DebugActions = {}
---@alias CS.GameInput.DebugActions GameInput.DebugActions
CS.GameInput.DebugActions = GameInput.DebugActions

---@param wrapper GameInput
---@return GameInput.DebugActions
function GameInput.DebugActions.New(wrapper) end
---@return UnityEngine.InputSystem.InputActionMap
function GameInput.DebugActions:Get() end
function GameInput.DebugActions:Enable() end
function GameInput.DebugActions:Disable() end
---@param instance GameInput.IDebugActions
function GameInput.DebugActions:AddCallbacks(instance) end
---@param instance GameInput.IDebugActions
function GameInput.DebugActions:RemoveCallbacks(instance) end
---@param instance GameInput.IDebugActions
function GameInput.DebugActions:SetCallbacks(instance) end

---@class GameInput.IUIActions
GameInput.IUIActions = {}
---@alias CS.GameInput.IUIActions GameInput.IUIActions
CS.GameInput.IUIActions = GameInput.IUIActions

---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnNavigate(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnSubmit(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnCancel(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnPoint(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnLeftClick(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnRightClick(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnMiddleClick(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IUIActions:OnScrollWheel(context) end

---@class GameInput.IGameplayActions
GameInput.IGameplayActions = {}
---@alias CS.GameInput.IGameplayActions GameInput.IGameplayActions
CS.GameInput.IGameplayActions = GameInput.IGameplayActions

---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnMove(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnRotateLeft(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnRotateRight(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnHeightUp(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnHeightDown(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnZoom(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnConfirm(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnCancel(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnPoint(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnSpeedBoost(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnViewDefault(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnViewTopDown(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnViewFront(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IGameplayActions:OnViewRight(context) end

---@class GameInput.IDebugActions
GameInput.IDebugActions = {}
---@alias CS.GameInput.IDebugActions GameInput.IDebugActions
CS.GameInput.IDebugActions = GameInput.IDebugActions

---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IDebugActions:OnUndo(context) end
---@param context UnityEngine.InputSystem.InputAction.CallbackContext
function GameInput.IDebugActions:OnToggleCursor(context) end

---@class SSPRFeature.SSPRSettings : System.Object
---@field ssprCompute UnityEngine.ComputeShader
---@field waterHeight number
---@field stretchIntensity number
---@field stretchThreshold number
---@field edgeFadeOut number
SSPRFeature.SSPRSettings = {}
---@alias CS.SSPRFeature.SSPRSettings SSPRFeature.SSPRSettings
CS.SSPRFeature.SSPRSettings = SSPRFeature.SSPRSettings

---@return SSPRFeature.SSPRSettings
function SSPRFeature.SSPRSettings.New() end

---@class SSPRFeature.SSPRPass : UnityEngine.Rendering.Universal.ScriptableRenderPass
SSPRFeature.SSPRPass = {}
---@alias CS.SSPRFeature.SSPRPass SSPRFeature.SSPRPass
CS.SSPRFeature.SSPRPass = SSPRFeature.SSPRPass

---@param settings SSPRFeature.SSPRSettings
---@return SSPRFeature.SSPRPass
function SSPRFeature.SSPRPass.New(settings) end
---@param context UnityEngine.Rendering.ScriptableRenderContext
---@param ref_renderingData UnityEngine.Rendering.Universal.RenderingData
---@return ,UnityEngine.Rendering.Universal.RenderingData
function SSPRFeature.SSPRPass:Execute(context, ref_renderingData) end
function SSPRFeature.SSPRPass:Cleanup() end

---@class Readme.Section : System.Object
---@field heading string
---@field text string
---@field linkText string
---@field url string
Readme.Section = {}
---@alias CS.Readme.Section Readme.Section
CS.Readme.Section = Readme.Section

---@return Readme.Section
function Readme.Section.New() end

---@class UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData : System.ValueType
---@field FilePathsData System.Byte[]
---@field TypesData System.Byte[]
---@field TotalTypes number
---@field TotalFiles number
---@field IsEditorOnly boolean
UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = {}
---@alias CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData
CS.UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData = UnitySourceGeneratedAssemblyMonoScriptTypes_v1.MonoScriptData


---@class MapEditor : UnityEditor.Editor
MapEditor = {}
---@alias CS.MapEditor MapEditor
CS.MapEditor = MapEditor

---@return MapEditor
function MapEditor.New() end
function MapEditor:OnInspectorGUI() end

---@class CustomLitShaderGUI : UnityEditor.BaseShaderGUI
CustomLitShaderGUI = {}
---@alias CS.CustomLitShaderGUI CustomLitShaderGUI
CS.CustomLitShaderGUI = CustomLitShaderGUI

---@return CustomLitShaderGUI
function CustomLitShaderGUI.New() end
---@param properties UnityEditor.MaterialProperty[]
function CustomLitShaderGUI:FindProperties(properties) end
---@param material UnityEngine.Material
function CustomLitShaderGUI:ValidateMaterial(material) end
---@param material UnityEngine.Material
function CustomLitShaderGUI:DrawSurfaceOptions(material) end
---@param material UnityEngine.Material
function CustomLitShaderGUI:DrawSurfaceInputs(material) end
---@param material UnityEngine.Material
function CustomLitShaderGUI:DrawAdvancedOptions(material) end
---@param material UnityEngine.Material
---@param oldShader UnityEngine.Shader
---@param newShader UnityEngine.Shader
function CustomLitShaderGUI:AssignNewShaderToMaterial(material, oldShader, newShader) end

---@class ReadmeEditor : UnityEditor.Editor
ReadmeEditor = {}
---@alias CS.ReadmeEditor ReadmeEditor
CS.ReadmeEditor = ReadmeEditor

---@return ReadmeEditor
function ReadmeEditor.New() end
function ReadmeEditor:OnInspectorGUI() end

---@class ExampleConfig : System.Object
---@field BlackList System.Collections.Generic.List
---@field MethodFilter System.Func
ExampleConfig = {}
---@alias CS.ExampleConfig ExampleConfig
CS.ExampleConfig = ExampleConfig


---@class XLuaUnityDefaultConfig : System.Object
---@field SpanMembersFilter System.Func
XLuaUnityDefaultConfig = {}
---@alias CS.XLuaUnityDefaultConfig XLuaUnityDefaultConfig
CS.XLuaUnityDefaultConfig = XLuaUnityDefaultConfig


---@class LinkXmlGen : UnityEngine.ScriptableObject
---@field Template UnityEngine.TextAsset
LinkXmlGen = {}
---@alias CS.LinkXmlGen LinkXmlGen
CS.LinkXmlGen = LinkXmlGen

---@return LinkXmlGen
function LinkXmlGen.New() end
---@param lua_env XLua.LuaEnv
---@param user_cfg CSObjectWrapEditor.UserConfig
---@return System.Collections.Generic.IEnumerable
function LinkXmlGen.GetTasks(lua_env, user_cfg) end
function LinkXmlGen.GenLinkXml() end

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

---@class UnityEngine.InputManagerEntry : System.Object
---@field name string
---@field desc string
---@field btnNegative string
---@field btnPositive string
---@field altBtnNegative string
---@field altBtnPositive string
---@field gravity number
---@field deadZone number
---@field sensitivity number
---@field snap boolean
---@field invert boolean
---@field kind UnityEngine.InputManagerEntry.Kind
---@field axis UnityEngine.InputManagerEntry.Axis
---@field joystick UnityEngine.InputManagerEntry.Joy
UnityEngine.InputManagerEntry = {}
---@alias CS.UnityEngine.InputManagerEntry UnityEngine.InputManagerEntry
CS.UnityEngine.InputManagerEntry = UnityEngine.InputManagerEntry

---@return UnityEngine.InputManagerEntry
function UnityEngine.InputManagerEntry.New() end

---@class UnityEngine.InputRegistering : System.Object
UnityEngine.InputRegistering = {}
---@alias CS.UnityEngine.InputRegistering UnityEngine.InputRegistering
CS.UnityEngine.InputRegistering = UnityEngine.InputRegistering

---@param entries System.Collections.Generic.List
function UnityEngine.InputRegistering.RegisterInputs(entries) end

---@class UnityEngine.LightAnchor : UnityEngine.MonoBehaviour
---@field yaw number
---@field pitch number
---@field roll number
---@field distance number
---@field frameSpace UnityEngine.LightAnchor.UpDirection
---@field anchorPosition UnityEngine.Vector3
---@field anchorPositionOverride UnityEngine.Transform
---@field anchorPositionOffset UnityEngine.Vector3
UnityEngine.LightAnchor = {}
---@alias CS.UnityEngine.LightAnchor UnityEngine.LightAnchor
CS.UnityEngine.LightAnchor = UnityEngine.LightAnchor

---@param angle number
---@return number
function UnityEngine.LightAnchor.NormalizeAngleDegree(angle) end
---@param camera UnityEngine.Camera
function UnityEngine.LightAnchor:SynchronizeOnTransform(camera) end
---@param camera UnityEngine.Camera
---@param anchor UnityEngine.Vector3
function UnityEngine.LightAnchor:UpdateTransform(camera, anchor) end

---@class UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants : System.Object
---@field unity_StereoCameraProjection number
---@field unity_StereoCameraInvProjection number
---@field unity_StereoMatrixV number
---@field unity_StereoMatrixInvV number
---@field unity_StereoMatrixP number
---@field unity_StereoMatrixInvP number
---@field unity_StereoMatrixVP number
---@field unity_StereoMatrixInvVP number
---@field unity_StereoWorldSpaceCameraPos number
UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants = {}
---@alias CS.UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants
CS.UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants = UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants

---@param viewMatrix UnityEngine.Matrix4x4
---@param projMatrix UnityEngine.Matrix4x4
---@param renderIntoTexture boolean
---@param viewIndex number
function UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants.UpdateBuiltinShaderConstants(viewMatrix, projMatrix, renderIntoTexture, viewIndex) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants.SetBuiltinShaderConstants(cmd) end
---@param xrPass UnityEngine.Experimental.Rendering.XRPass
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param renderIntoTexture boolean
function UnityEngine.Experimental.Rendering.XRBuiltinShaderConstants.Update(xrPass, cmd, renderIntoTexture) end

---@class UnityEngine.Experimental.Rendering.XRLayout : System.Object
UnityEngine.Experimental.Rendering.XRLayout = {}
---@alias CS.UnityEngine.Experimental.Rendering.XRLayout UnityEngine.Experimental.Rendering.XRLayout
CS.UnityEngine.Experimental.Rendering.XRLayout = UnityEngine.Experimental.Rendering.XRLayout

---@return UnityEngine.Experimental.Rendering.XRLayout
function UnityEngine.Experimental.Rendering.XRLayout.New() end
---@param camera UnityEngine.Camera
---@param enableXR boolean
function UnityEngine.Experimental.Rendering.XRLayout:AddCamera(camera, enableXR) end
---@param xrPass UnityEngine.Experimental.Rendering.XRPass
---@param camera UnityEngine.Camera
function UnityEngine.Experimental.Rendering.XRLayout:ReconfigurePass(xrPass, camera) end
---@return System.Collections.Generic.List
function UnityEngine.Experimental.Rendering.XRLayout:GetActivePasses() end

---@class UnityEngine.Experimental.Rendering.XRMirrorView : System.Object
UnityEngine.Experimental.Rendering.XRMirrorView = {}
---@alias CS.UnityEngine.Experimental.Rendering.XRMirrorView UnityEngine.Experimental.Rendering.XRMirrorView
CS.UnityEngine.Experimental.Rendering.XRMirrorView = UnityEngine.Experimental.Rendering.XRMirrorView


---@class UnityEngine.Experimental.Rendering.XROcclusionMesh : System.Object
UnityEngine.Experimental.Rendering.XROcclusionMesh = {}
---@alias CS.UnityEngine.Experimental.Rendering.XROcclusionMesh UnityEngine.Experimental.Rendering.XROcclusionMesh
CS.UnityEngine.Experimental.Rendering.XROcclusionMesh = UnityEngine.Experimental.Rendering.XROcclusionMesh


---@class UnityEngine.Experimental.Rendering.XRPassCreateInfo : System.ValueType
UnityEngine.Experimental.Rendering.XRPassCreateInfo = {}
---@alias CS.UnityEngine.Experimental.Rendering.XRPassCreateInfo UnityEngine.Experimental.Rendering.XRPassCreateInfo
CS.UnityEngine.Experimental.Rendering.XRPassCreateInfo = UnityEngine.Experimental.Rendering.XRPassCreateInfo


---@class UnityEngine.Experimental.Rendering.XRPass : System.Object
---@field enabled boolean
---@field supportsFoveatedRendering boolean
---@field copyDepth boolean
---@field multipassId number
---@field cullingPassId number
---@field renderTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field renderTargetDesc UnityEngine.RenderTextureDescriptor
---@field cullingParams UnityEngine.Rendering.ScriptableCullingParameters
---@field viewCount number
---@field singlePassEnabled boolean
---@field foveatedRenderingInfo System.IntPtr
---@field isHDRDisplayOutputActive boolean
---@field hdrDisplayOutputColorGamut UnityEngine.ColorGamut
---@field hdrDisplayOutputInformation UnityEngine.Rendering.HDROutputUtils.HDRDisplayInformation
---@field occlusionMeshScale number
---@field hasValidOcclusionMesh boolean
UnityEngine.Experimental.Rendering.XRPass = {}
---@alias CS.UnityEngine.Experimental.Rendering.XRPass UnityEngine.Experimental.Rendering.XRPass
CS.UnityEngine.Experimental.Rendering.XRPass = UnityEngine.Experimental.Rendering.XRPass

---@return UnityEngine.Experimental.Rendering.XRPass
function UnityEngine.Experimental.Rendering.XRPass.New() end
---@param createInfo UnityEngine.Experimental.Rendering.XRPassCreateInfo
---@return UnityEngine.Experimental.Rendering.XRPass
function UnityEngine.Experimental.Rendering.XRPass.CreateDefault(createInfo) end
function UnityEngine.Experimental.Rendering.XRPass:Release() end
---@param viewIndex number
---@return UnityEngine.Matrix4x4
function UnityEngine.Experimental.Rendering.XRPass:GetProjMatrix(viewIndex) end
---@param viewIndex number
---@return UnityEngine.Matrix4x4
function UnityEngine.Experimental.Rendering.XRPass:GetViewMatrix(viewIndex) end
---@param viewIndex number
---@return UnityEngine.Rect
function UnityEngine.Experimental.Rendering.XRPass:GetViewport(viewIndex) end
---@param viewIndex number
---@return UnityEngine.Mesh
function UnityEngine.Experimental.Rendering.XRPass:GetOcclusionMesh(viewIndex) end
---@param viewIndex number
---@return number
function UnityEngine.Experimental.Rendering.XRPass:GetTextureArraySlice(viewIndex) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Experimental.Rendering.XRPass:StartSinglePass(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Experimental.Rendering.XRPass:StopSinglePass(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param renderIntoTexture boolean
function UnityEngine.Experimental.Rendering.XRPass:RenderOcclusionMesh(cmd, renderIntoTexture) end
---@param center UnityEngine.Vector2
---@return UnityEngine.Vector4
function UnityEngine.Experimental.Rendering.XRPass:ApplyXRViewCenterOffset(center) end
---@param createInfo UnityEngine.Experimental.Rendering.XRPassCreateInfo
function UnityEngine.Experimental.Rendering.XRPass:InitBase(createInfo) end

---@class UnityEngine.Experimental.Rendering.XRSystem : System.Object
---@field emptyPass UnityEngine.Experimental.Rendering.XRPass
---@field displayActive boolean
---@field isHDRDisplayOutputActive boolean
---@field singlePassAllowed boolean
---@field foveatedRenderingCaps UnityEngine.Rendering.FoveatedRenderingCaps
---@field dumpDebugInfo boolean
UnityEngine.Experimental.Rendering.XRSystem = {}
---@alias CS.UnityEngine.Experimental.Rendering.XRSystem UnityEngine.Experimental.Rendering.XRSystem
CS.UnityEngine.Experimental.Rendering.XRSystem = UnityEngine.Experimental.Rendering.XRSystem

---@return UnityEngine.XR.XRDisplaySubsystem
function UnityEngine.Experimental.Rendering.XRSystem.GetActiveDisplay() end
---@param passAllocator System.Func
---@param occlusionMeshPS UnityEngine.Shader
---@param mirrorViewPS UnityEngine.Shader
function UnityEngine.Experimental.Rendering.XRSystem.Initialize(passAllocator, occlusionMeshPS, mirrorViewPS) end
---@param msaaSamples UnityEngine.Rendering.MSAASamples
function UnityEngine.Experimental.Rendering.XRSystem.SetDisplayMSAASamples(msaaSamples) end
---@return UnityEngine.Rendering.MSAASamples
function UnityEngine.Experimental.Rendering.XRSystem.GetDisplayMSAASamples() end
---@param renderScale number
function UnityEngine.Experimental.Rendering.XRSystem.SetRenderScale(renderScale) end
---@return UnityEngine.Experimental.Rendering.XRLayout
function UnityEngine.Experimental.Rendering.XRSystem.NewLayout() end
function UnityEngine.Experimental.Rendering.XRSystem.EndLayout() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param camera UnityEngine.Camera
function UnityEngine.Experimental.Rendering.XRSystem.RenderMirrorView(cmd, camera) end
function UnityEngine.Experimental.Rendering.XRSystem.Dispose() end

---@class UnityEngine.Experimental.Rendering.XRView : System.ValueType
UnityEngine.Experimental.Rendering.XRView = {}
---@alias CS.UnityEngine.Experimental.Rendering.XRView UnityEngine.Experimental.Rendering.XRView
CS.UnityEngine.Experimental.Rendering.XRView = UnityEngine.Experimental.Rendering.XRView


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess
---@field Read UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess
---@field Write UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess
---@field ReadWrite UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess
UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess = UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext : System.Object
---@field renderContext UnityEngine.Rendering.ScriptableRenderContext
---@field cmd UnityEngine.Rendering.CommandBuffer
---@field renderGraphPool UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool
---@field defaultResources UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext.New() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters : System.ValueType
---@field executionName string
---@field currentFrameIndex number
---@field rendererListCulling boolean
---@field scriptableRenderContext UnityEngine.Rendering.ScriptableRenderContext
---@field commandBuffer UnityEngine.Rendering.CommandBuffer
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution : System.ValueType
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution

function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution:Dispose() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams : System.Object
---@field clearRenderTargetsAtCreation boolean
---@field clearRenderTargetsAtRelease boolean
---@field disablePassCulling boolean
---@field immediateMode boolean
---@field enableLogging boolean
---@field logFrameInformation boolean
---@field logResources boolean
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams.New() end
---@param name string
---@param debugPanel UnityEngine.Rendering.DebugUI.Panel
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams:RegisterDebug(name, debugPanel) end
---@param name string
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugParams:UnRegisterDebug(name) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc : System.MulticastDelegate
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc.New(object, method) end
---@param data PassData
---@param renderGraphContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc:Invoke(data, renderGraphContext) end
---@param data PassData
---@param renderGraphContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc:BeginInvoke(data, renderGraphContext, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderFunc:EndInvoke(result) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData : System.Object
---@field passList System.Collections.Generic.List
---@field resourceLists System.Collections.Generic.List
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData.New() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDebugData:Clear() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph : System.Object
---@field kMaxMRTCount number
---@field name string
---@field defaultResources UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph

---@param name string
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.New(name) end
---@return System.Collections.Generic.List
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph.GetRegisteredRenderGraphs() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:Cleanup() end
---@param panel UnityEngine.Rendering.DebugUI.Panel
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:RegisterDebug(panel) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:UnRegisterDebug() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:EndFrame() end
---@param rt UnityEngine.Rendering.RTHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:ImportTexture(rt) end
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:ImportBackbuffer(rt) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph, ref_desc: UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc) : UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle, UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@param texture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:CreateTexture(texture) end
---@param ref_desc UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@param explicitRelease boolean
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:CreateSharedTexture(ref_desc, explicitRelease) end
---@param handle UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@param ref_desc UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@return ,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:RefreshSharedTextureDesc(handle, ref_desc) end
---@param texture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:ReleaseSharedTexture(texture) end
---@param ref_desc UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@param ref_texture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@return ,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:CreateTextureIfInvalid(ref_desc, ref_texture) end
---@param texture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:GetTextureDesc(texture) end
---@param ref_desc UnityEngine.Rendering.RendererUtils.RendererListDesc
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle,UnityEngine.Rendering.RendererUtils.RendererListDesc
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:CreateRendererList(ref_desc) end
---@param computeBuffer UnityEngine.ComputeBuffer
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:ImportComputeBuffer(computeBuffer) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph, ref_desc: UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc) : UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle, UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc
---@param ref_computeBuffer UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:CreateComputeBuffer(ref_computeBuffer) end
---@param ref_computeBuffer UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc,UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:GetComputeBufferDesc(ref_computeBuffer) end
---@param ref_parameters UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphExecution,UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphParameters
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:RecordAndExecute(ref_parameters) end
---@param sampler UnityEngine.Rendering.ProfilingSampler
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:BeginProfilingSampler(sampler) end
---@param sampler UnityEngine.Rendering.ProfilingSampler
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph:EndProfilingSampler(sampler) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope : System.ValueType
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope

---@param renderGraph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraph
---@param sampler UnityEngine.Rendering.ProfilingSampler
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope.New(renderGraph, sampler) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfilingScope:Dispose() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder : System.ValueType
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder

---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@param index number
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:UseColorBuffer(ref_input, index) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@param flags UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:UseDepthBuffer(ref_input, flags) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:ReadTexture(ref_input) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:WriteTexture(ref_input) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:ReadWriteTexture(ref_input) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder, ref_desc: UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc) : UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle, UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@param ref_texture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:CreateTransientTexture(ref_texture) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:UseRendererList(ref_input) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:ReadComputeBuffer(ref_input) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:WriteComputeBuffer(ref_input) end
---@overload fun(self: UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder, ref_desc: UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc) : UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle, UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc
---@param ref_computebuffer UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:CreateTransientComputeBuffer(ref_computebuffer) end
---@param value boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:EnableAsyncCompute(value) end
---@param value boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:AllowPassCulling(value) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:Dispose() end
---@param value boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:AllowRendererListCulling(value) end
---@param ref_input UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle,UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphBuilder:DependsOn(ref_input) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources : System.Object
---@field blackTexture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field whiteTexture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field clearTextureXR UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field magentaTextureXR UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field blackTextureXR UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field blackTextureArrayXR UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field blackUIntTextureXR UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field blackTexture3DXR UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field whiteTextureXR UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field defaultShadowTexture UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphDefaultResources


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent : System.ValueType
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent

---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
---@param indentation number
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent.New(logger, indentation) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogIndent:Dispose() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger : System.Object
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger.New() end
---@param logName string
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger:Initialize(logName) end
---@param value number
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger:IncrementIndentation(value) end
---@param value number
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger:DecrementIndentation(value) end
---@param format string
---@param args System.Object[]
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger:LogLine(format, args) end
---@param logName string
---@return string
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger:GetLog(logName) end
---@return string
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger:GetAllLogs() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool : System.Object
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool

---@return UnityEngine.MaterialPropertyBlock
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool:GetTempMaterialPropertyBlock() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass : System.Object
---@field resourceReadLists System.Collections.Generic.List
---@field resourceWriteLists System.Collections.Generic.List
---@field transientResourceList System.Collections.Generic.List
---@field usedRendererListList System.Collections.Generic.List
---@field name string
---@field index number
---@field customSampler UnityEngine.Rendering.ProfilingSampler
---@field enableAsyncCompute boolean
---@field allowPassCulling boolean
---@field depthBuffer UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@field colorBuffers UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle[]
---@field colorBufferMaxIndex number
---@field refCount number
---@field generateDebugData boolean
---@field allowRendererListCulling boolean
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass.New() end
---@param renderGraphContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:Execute(renderGraphContext) end
---@param pool UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:Release(pool) end
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:HasRenderFunc() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:Clear() end
---@param ref_res UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle
---@return ,UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:AddResourceWrite(ref_res) end
---@param ref_res UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle
---@return ,UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:AddResourceRead(ref_res) end
---@param ref_res UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle
---@return ,UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:AddTransientResource(ref_res) end
---@param rendererList UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:UseRendererList(rendererList) end
---@param value boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:EnableAsyncCompute(value) end
---@param value boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:AllowPassCulling(value) end
---@param value boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:AllowRendererListCulling(value) end
---@param value boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:GenerateDebugData(value) end
---@param resource UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@param index number
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:SetColorBuffer(resource, index) end
---@param resource UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
---@param flags UnityEngine.Experimental.Rendering.RenderGraphModule.DepthAccess
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:SetDepthBuffer(resource, flags) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass : UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass.New() end
---@param renderGraphContext UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphContext
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:Execute(renderGraphContext) end
---@param passIndex number
---@param passData PassData
---@param passName string
---@param sampler UnityEngine.Rendering.ProfilingSampler
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:Initialize(passIndex, passData, passName, sampler) end
---@param pool UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphObjectPool
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:Release(pool) end
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphPass:HasRenderFunc() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId
---@field CompileRenderGraph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId
---@field ExecuteRenderGraph UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId
---@field RenderGraphClear UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId
---@field RenderGraphClearDebug UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphProfileId


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle : System.ValueType
---@field nullHandle UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle = UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle

---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferHandle:IsValid() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc : System.ValueType
---@field count number
---@field stride number
---@field type UnityEngine.ComputeBufferType
---@field name string
UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc = UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc

---@overload fun(count: number, stride: number) : UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc
---@param count number
---@param stride number
---@param type UnityEngine.ComputeBufferType
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc.New(count, stride, type) end
---@return number
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferDesc:GetHashCode() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource : UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource
UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource = UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource.New() end
---@return string
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource:GetName() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource:CreatePooledGraphicsResource() end
---@param frameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource:ReleasePooledGraphicsResource(frameIndex) end
---@param name string
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource:CreateGraphicsResource(name) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource:ReleaseGraphicsResource() end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource:LogCreation(logger) end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferResource:LogRelease(logger) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool : UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool
UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool = UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool.New() end
---@param currentFrameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.ComputeBufferPool:PurgeUnusedResources(currentFrameIndex) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool : System.Object
UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool = UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool

---@param currentFrameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool:PurgeUnusedResources(currentFrameIndex) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool:Cleanup() end
---@param onException boolean
---@param frameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool:CheckFrameAllocation(onException, frameIndex) end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool:LogResources(logger) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool : UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool

---@param hash number
---@param resource Type
---@param currentFrameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool:ReleaseResource(hash, resource, currentFrameIndex) end
---@param hashCode number
---@param out_resource Type
---@return boolean,Type
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool:TryGetResource(hashCode, out_resource) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool:Cleanup() end
---@param hash number
---@param value Type
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool:RegisterFrameAllocation(hash, value) end
---@param hash number
---@param value Type
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool:UnregisterFrameAllocation(hash, value) end
---@param onException boolean
---@param frameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool:CheckFrameAllocation(onException, frameIndex) end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool:LogResources(logger) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry : System.Object
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceRegistry


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle : System.ValueType
UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle = UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle

---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListHandle:IsValid() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListResource : System.ValueType
---@field desc UnityEngine.Rendering.RendererUtils.RendererListDesc
---@field rendererList UnityEngine.Rendering.RendererList
UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListResource = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListResource UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListResource
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListResource = UnityEngine.Experimental.Rendering.RenderGraphModule.RendererListResource


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType
---@field Texture UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType
---@field ComputeBuffer UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType
---@field Count UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle : System.ValueType
---@field index number
---@field type UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourceType
---@field iType number
UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle = UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle

---@param executionIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle.NewFrame(executionIndex) end
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.ResourceHandle:IsValid() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource : System.Object
---@field imported boolean
---@field shared boolean
---@field sharedExplicitRelease boolean
---@field requestFallBack boolean
---@field writeCount number
---@field cachedHash number
---@field transientPassIndex number
---@field sharedResourceLastFrameUsed number
UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource = UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource.New() end
---@param pool UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:Reset(pool) end
---@return string
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:GetName() end
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:IsCreated() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:IncrementWriteCount() end
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:NeedsFallBack() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:CreatePooledGraphicsResource() end
---@param name string
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:CreateGraphicsResource(name) end
---@param frameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:ReleasePooledGraphicsResource(frameIndex) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:ReleaseGraphicsResource() end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:LogCreation(logger) end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:LogRelease(logger) end
---@return number
function UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource:GetSortIndex() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource : UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResource
---@field desc DescType
---@field graphicsResource ResType
UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource = UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource

---@param pool UnityEngine.Experimental.Rendering.RenderGraphModule.IRenderGraphResourcePool
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource:Reset(pool) end
---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource:IsCreated() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource:ReleaseGraphicsResource() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle : System.ValueType
---@field nullHandle UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle = UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle

---@return boolean
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureHandle:IsValid() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode
---@field Explicit UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode
---@field Scale UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode
---@field Functor UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode
UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode = UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.FastMemoryDesc : System.ValueType
---@field inFastMemory boolean
---@field flags UnityEngine.Rendering.FastMemoryFlags
---@field residencyFraction number
UnityEngine.Experimental.Rendering.RenderGraphModule.FastMemoryDesc = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.FastMemoryDesc UnityEngine.Experimental.Rendering.RenderGraphModule.FastMemoryDesc
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.FastMemoryDesc = UnityEngine.Experimental.Rendering.RenderGraphModule.FastMemoryDesc


---@class UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc : System.ValueType
---@field sizeMode UnityEngine.Experimental.Rendering.RenderGraphModule.TextureSizeMode
---@field width number
---@field height number
---@field slices number
---@field scale UnityEngine.Vector2
---@field func UnityEngine.Rendering.ScaleFunc
---@field depthBufferBits UnityEngine.Rendering.DepthBits
---@field colorFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field filterMode UnityEngine.FilterMode
---@field wrapMode UnityEngine.TextureWrapMode
---@field dimension UnityEngine.Rendering.TextureDimension
---@field enableRandomWrite boolean
---@field useMipMap boolean
---@field autoGenerateMips boolean
---@field isShadowMap boolean
---@field anisoLevel number
---@field mipMapBias number
---@field msaaSamples UnityEngine.Rendering.MSAASamples
---@field bindTextureMS boolean
---@field useDynamicScale boolean
---@field memoryless UnityEngine.RenderTextureMemoryless
---@field vrUsage UnityEngine.VRTextureUsage
---@field name string
---@field fastMemoryDesc UnityEngine.Experimental.Rendering.RenderGraphModule.FastMemoryDesc
---@field fallBackToBlackTexture boolean
---@field disableFallBackToImportedTexture boolean
---@field clearBuffer boolean
---@field clearColor UnityEngine.Color
UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc = UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc

---@overload fun(width: number, height: number, dynamicResolution: boolean, xrReady: boolean) : UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@overload fun(scale: UnityEngine.Vector2, dynamicResolution: boolean, xrReady: boolean) : UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@overload fun(func: UnityEngine.Rendering.ScaleFunc, dynamicResolution: boolean, xrReady: boolean) : UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@param input UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc.New(input) end
---@return number
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureDesc:GetHashCode() end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource : UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResource
UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource = UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource.New() end
---@return string
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource:GetName() end
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource:CreatePooledGraphicsResource() end
---@param frameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource:ReleasePooledGraphicsResource(frameIndex) end
---@param name string
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource:CreateGraphicsResource(name) end
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource:ReleaseGraphicsResource() end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource:LogCreation(logger) end
---@param logger UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphLogger
function UnityEngine.Experimental.Rendering.RenderGraphModule.TextureResource:LogRelease(logger) end

---@class UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool : UnityEngine.Experimental.Rendering.RenderGraphModule.RenderGraphResourcePool
UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool = {}
---@alias CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool
CS.UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool = UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool

---@return UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool
function UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool.New() end
---@param currentFrameIndex number
function UnityEngine.Experimental.Rendering.RenderGraphModule.TexturePool:PurgeUnusedResources(currentFrameIndex) end

---@class UnityEngine.Rendering.CameraSwitcher : UnityEngine.MonoBehaviour
---@field m_Cameras UnityEngine.Camera[]
UnityEngine.Rendering.CameraSwitcher = {}
---@alias CS.UnityEngine.Rendering.CameraSwitcher UnityEngine.Rendering.CameraSwitcher
CS.UnityEngine.Rendering.CameraSwitcher = UnityEngine.Rendering.CameraSwitcher


---@class UnityEngine.Rendering.FreeCamera : UnityEngine.MonoBehaviour
---@field m_LookSpeedController number
---@field m_LookSpeedMouse number
---@field m_MoveSpeed number
---@field m_MoveSpeedIncrement number
---@field m_Turbo number
UnityEngine.Rendering.FreeCamera = {}
---@alias CS.UnityEngine.Rendering.FreeCamera UnityEngine.Rendering.FreeCamera
CS.UnityEngine.Rendering.FreeCamera = UnityEngine.Rendering.FreeCamera


---@class UnityEngine.Rendering.CommandBufferPool : System.Object
UnityEngine.Rendering.CommandBufferPool = {}
---@alias CS.UnityEngine.Rendering.CommandBufferPool UnityEngine.Rendering.CommandBufferPool
CS.UnityEngine.Rendering.CommandBufferPool = UnityEngine.Rendering.CommandBufferPool

---@overload fun() : UnityEngine.Rendering.CommandBuffer
---@param name string
---@return UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.CommandBufferPool.Get(name) end
---@param buffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.CommandBufferPool.Release(buffer) end

---@class UnityEngine.Rendering.ClearFlag
---@field None UnityEngine.Rendering.ClearFlag
---@field Color UnityEngine.Rendering.ClearFlag
---@field Depth UnityEngine.Rendering.ClearFlag
---@field Stencil UnityEngine.Rendering.ClearFlag
---@field DepthStencil UnityEngine.Rendering.ClearFlag
---@field ColorStencil UnityEngine.Rendering.ClearFlag
---@field All UnityEngine.Rendering.ClearFlag
UnityEngine.Rendering.ClearFlag = {}
---@alias CS.UnityEngine.Rendering.ClearFlag UnityEngine.Rendering.ClearFlag
CS.UnityEngine.Rendering.ClearFlag = UnityEngine.Rendering.ClearFlag


---@class UnityEngine.Rendering.ComponentSingleton : System.Object
---@field instance TType
UnityEngine.Rendering.ComponentSingleton = {}
---@alias CS.UnityEngine.Rendering.ComponentSingleton UnityEngine.Rendering.ComponentSingleton
CS.UnityEngine.Rendering.ComponentSingleton = UnityEngine.Rendering.ComponentSingleton

function UnityEngine.Rendering.ComponentSingleton.Release() end

---@class UnityEngine.Rendering.ConstantBuffer : System.Object
UnityEngine.Rendering.ConstantBuffer = {}
---@alias CS.UnityEngine.Rendering.ConstantBuffer UnityEngine.Rendering.ConstantBuffer
CS.UnityEngine.Rendering.ConstantBuffer = UnityEngine.Rendering.ConstantBuffer

---@return UnityEngine.Rendering.ConstantBuffer
function UnityEngine.Rendering.ConstantBuffer.New() end
function UnityEngine.Rendering.ConstantBuffer.ReleaseAll() end

---@class UnityEngine.Rendering.ConstantBufferBase : System.Object
UnityEngine.Rendering.ConstantBufferBase = {}
---@alias CS.UnityEngine.Rendering.ConstantBufferBase UnityEngine.Rendering.ConstantBufferBase
CS.UnityEngine.Rendering.ConstantBufferBase = UnityEngine.Rendering.ConstantBufferBase

function UnityEngine.Rendering.ConstantBufferBase:Release() end

---@class UnityEngine.Rendering.ConstantBuffer : UnityEngine.Rendering.ConstantBufferBase
UnityEngine.Rendering.ConstantBuffer = {}
---@alias CS.UnityEngine.Rendering.ConstantBuffer UnityEngine.Rendering.ConstantBuffer
CS.UnityEngine.Rendering.ConstantBuffer = UnityEngine.Rendering.ConstantBuffer

---@return UnityEngine.Rendering.ConstantBuffer
function UnityEngine.Rendering.ConstantBuffer.New() end
---@overload fun(self: UnityEngine.Rendering.ConstantBuffer, cmd: UnityEngine.Rendering.CommandBuffer, ref_data: CBType) : CBType
---@param ref_data CBType
---@return ,CBType
function UnityEngine.Rendering.ConstantBuffer:UpdateData(ref_data) end
---@overload fun(self: UnityEngine.Rendering.ConstantBuffer, cmd: UnityEngine.Rendering.CommandBuffer, shaderId: number)
---@param shaderId number
function UnityEngine.Rendering.ConstantBuffer:SetGlobal(shaderId) end
---@overload fun(self: UnityEngine.Rendering.ConstantBuffer, cmd: UnityEngine.Rendering.CommandBuffer, cs: UnityEngine.ComputeShader, shaderId: number)
---@overload fun(self: UnityEngine.Rendering.ConstantBuffer, cs: UnityEngine.ComputeShader, shaderId: number)
---@param mat UnityEngine.Material
---@param shaderId number
function UnityEngine.Rendering.ConstantBuffer:Set(mat, shaderId) end
---@overload fun(self: UnityEngine.Rendering.ConstantBuffer, cmd: UnityEngine.Rendering.CommandBuffer, ref_data: CBType, shaderId: number) : CBType
---@param ref_data CBType
---@param shaderId number
---@return ,CBType
function UnityEngine.Rendering.ConstantBuffer:PushGlobal(ref_data, shaderId) end
function UnityEngine.Rendering.ConstantBuffer:Release() end

---@class UnityEngine.Rendering.ConstantBufferSingleton : UnityEngine.Rendering.ConstantBuffer[CBType]
UnityEngine.Rendering.ConstantBufferSingleton = {}
---@alias CS.UnityEngine.Rendering.ConstantBufferSingleton UnityEngine.Rendering.ConstantBufferSingleton
CS.UnityEngine.Rendering.ConstantBufferSingleton = UnityEngine.Rendering.ConstantBufferSingleton

---@return UnityEngine.Rendering.ConstantBufferSingleton
function UnityEngine.Rendering.ConstantBufferSingleton.New() end
function UnityEngine.Rendering.ConstantBufferSingleton:Release() end

---@class UnityEngine.Rendering.DisplayInfoAttribute : System.Attribute
---@field name string
---@field order number
UnityEngine.Rendering.DisplayInfoAttribute = {}
---@alias CS.UnityEngine.Rendering.DisplayInfoAttribute UnityEngine.Rendering.DisplayInfoAttribute
CS.UnityEngine.Rendering.DisplayInfoAttribute = UnityEngine.Rendering.DisplayInfoAttribute

---@return UnityEngine.Rendering.DisplayInfoAttribute
function UnityEngine.Rendering.DisplayInfoAttribute.New() end

---@class UnityEngine.Rendering.AdditionalPropertyAttribute : System.Attribute
UnityEngine.Rendering.AdditionalPropertyAttribute = {}
---@alias CS.UnityEngine.Rendering.AdditionalPropertyAttribute UnityEngine.Rendering.AdditionalPropertyAttribute
CS.UnityEngine.Rendering.AdditionalPropertyAttribute = UnityEngine.Rendering.AdditionalPropertyAttribute

---@return UnityEngine.Rendering.AdditionalPropertyAttribute
function UnityEngine.Rendering.AdditionalPropertyAttribute.New() end

---@class UnityEngine.Rendering.CoreProfileId
---@field BlitTextureInPotAtlas UnityEngine.Rendering.CoreProfileId
---@field APVCellStreamingUpdate UnityEngine.Rendering.CoreProfileId
---@field APVScenarioBlendingUpdate UnityEngine.Rendering.CoreProfileId
UnityEngine.Rendering.CoreProfileId = {}
---@alias CS.UnityEngine.Rendering.CoreProfileId UnityEngine.Rendering.CoreProfileId
CS.UnityEngine.Rendering.CoreProfileId = UnityEngine.Rendering.CoreProfileId


---@class UnityEngine.Rendering.CoreUnsafeUtils : System.Object
UnityEngine.Rendering.CoreUnsafeUtils = {}
---@alias CS.UnityEngine.Rendering.CoreUnsafeUtils UnityEngine.Rendering.CoreUnsafeUtils
CS.UnityEngine.Rendering.CoreUnsafeUtils = UnityEngine.Rendering.CoreUnsafeUtils

---@overload fun(arr: System.UInt32[], sortSize: number, ref_supportArray: System.UInt32[]) : System.UInt32[]
---@param arr Unity.Collections.NativeArray
---@param sortSize number
---@param ref_supportArray Unity.Collections.NativeArray
---@return ,Unity.Collections.NativeArray
function UnityEngine.Rendering.CoreUnsafeUtils.MergeSort(arr, sortSize, ref_supportArray) end
---@overload fun(arr: System.UInt32[], sortSize: number)
---@param arr Unity.Collections.NativeArray
---@param sortSize number
function UnityEngine.Rendering.CoreUnsafeUtils.InsertionSort(arr, sortSize) end
---@overload fun(arr: System.UInt32[], sortSize: number, ref_supportArray: System.UInt32[], radixBits: number) : System.UInt32[]
---@param array Unity.Collections.NativeArray
---@param sortSize number
---@param ref_supportArray Unity.Collections.NativeArray
---@param radixBits number
---@return ,Unity.Collections.NativeArray
function UnityEngine.Rendering.CoreUnsafeUtils.RadixSort(array, sortSize, ref_supportArray, radixBits) end
---@param arr System.UInt32[]
---@param left number
---@param right number
function UnityEngine.Rendering.CoreUnsafeUtils.QuickSort(arr, left, right) end
---@param oldHashCount number
---@param oldHashes UnityEngine.Hash128*
---@param newHashCount number
---@param newHashes UnityEngine.Hash128*
---@param addIndices System.Int32*
---@param removeIndices System.Int32*
---@param out_addCount number
---@param out_remCount number
---@return number,number,number
function UnityEngine.Rendering.CoreUnsafeUtils.CompareHashes(oldHashCount, oldHashes, newHashCount, newHashes, addIndices, removeIndices, out_addCount, out_remCount) end
---@param count number
---@param hashes UnityEngine.Hash128*
---@param outHash UnityEngine.Hash128*
function UnityEngine.Rendering.CoreUnsafeUtils.CombineHashes(count, hashes, outHash) end
---@param arr System.Int32[]
---@return boolean
function UnityEngine.Rendering.CoreUnsafeUtils.HaveDuplicates(arr) end

---@class UnityEngine.Rendering.DynamicArray : System.Object
---@field size number
---@field capacity number
---@field Item T&
UnityEngine.Rendering.DynamicArray = {}
---@alias CS.UnityEngine.Rendering.DynamicArray UnityEngine.Rendering.DynamicArray
CS.UnityEngine.Rendering.DynamicArray = UnityEngine.Rendering.DynamicArray

---@overload fun() : UnityEngine.Rendering.DynamicArray
---@param size number
---@return UnityEngine.Rendering.DynamicArray
function UnityEngine.Rendering.DynamicArray.New(size) end
function UnityEngine.Rendering.DynamicArray:Clear() end
---@param item T
---@return boolean
function UnityEngine.Rendering.DynamicArray:Contains(item) end
---@param ref_value T
---@return number,T
function UnityEngine.Rendering.DynamicArray:Add(ref_value) end
---@param array UnityEngine.Rendering.DynamicArray
function UnityEngine.Rendering.DynamicArray:AddRange(array) end
---@param item T
---@return boolean
function UnityEngine.Rendering.DynamicArray:Remove(item) end
---@param index number
function UnityEngine.Rendering.DynamicArray:RemoveAt(index) end
---@param index number
---@param count number
function UnityEngine.Rendering.DynamicArray:RemoveRange(index, count) end
---@param startIndex number
---@param count number
---@param match System.Predicate[T]
---@return number
function UnityEngine.Rendering.DynamicArray:FindIndex(startIndex, count, match) end
---@overload fun(self: UnityEngine.Rendering.DynamicArray, item: T, index: number, count: number) : number
---@overload fun(self: UnityEngine.Rendering.DynamicArray, item: T, index: number) : number
---@param item T
---@return number
function UnityEngine.Rendering.DynamicArray:IndexOf(item) end
---@param newSize number
---@param keepContent boolean
function UnityEngine.Rendering.DynamicArray:Resize(newSize, keepContent) end
---@param newCapacity number
---@param keepContent boolean
function UnityEngine.Rendering.DynamicArray:Reserve(newCapacity, keepContent) end
---@return UnityEngine.Rendering.DynamicArray.Iterator[T]
function UnityEngine.Rendering.DynamicArray:GetEnumerator() end
---@param first number
---@param numItems number
---@return UnityEngine.Rendering.DynamicArray.RangeEnumerable[T]
function UnityEngine.Rendering.DynamicArray:SubRange(first, numItems) end

---@class UnityEngine.Rendering.DynamicArrayExtensions : System.Object
UnityEngine.Rendering.DynamicArrayExtensions = {}
---@alias CS.UnityEngine.Rendering.DynamicArrayExtensions UnityEngine.Rendering.DynamicArrayExtensions
CS.UnityEngine.Rendering.DynamicArrayExtensions = UnityEngine.Rendering.DynamicArrayExtensions


---@class UnityEngine.Rendering.PerformDynamicRes : System.MulticastDelegate
UnityEngine.Rendering.PerformDynamicRes = {}
---@alias CS.UnityEngine.Rendering.PerformDynamicRes UnityEngine.Rendering.PerformDynamicRes
CS.UnityEngine.Rendering.PerformDynamicRes = UnityEngine.Rendering.PerformDynamicRes

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.PerformDynamicRes
function UnityEngine.Rendering.PerformDynamicRes.New(object, method) end
---@return number
function UnityEngine.Rendering.PerformDynamicRes:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.PerformDynamicRes:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return number
function UnityEngine.Rendering.PerformDynamicRes:EndInvoke(result) end

---@class UnityEngine.Rendering.DynamicResScalePolicyType
---@field ReturnsPercentage UnityEngine.Rendering.DynamicResScalePolicyType
---@field ReturnsMinMaxLerpFactor UnityEngine.Rendering.DynamicResScalePolicyType
UnityEngine.Rendering.DynamicResScalePolicyType = {}
---@alias CS.UnityEngine.Rendering.DynamicResScalePolicyType UnityEngine.Rendering.DynamicResScalePolicyType
CS.UnityEngine.Rendering.DynamicResScalePolicyType = UnityEngine.Rendering.DynamicResScalePolicyType


---@class UnityEngine.Rendering.DynamicResScalerSlot
---@field User UnityEngine.Rendering.DynamicResScalerSlot
---@field System UnityEngine.Rendering.DynamicResScalerSlot
---@field Count UnityEngine.Rendering.DynamicResScalerSlot
UnityEngine.Rendering.DynamicResScalerSlot = {}
---@alias CS.UnityEngine.Rendering.DynamicResScalerSlot UnityEngine.Rendering.DynamicResScalerSlot
CS.UnityEngine.Rendering.DynamicResScalerSlot = UnityEngine.Rendering.DynamicResScalerSlot


---@class UnityEngine.Rendering.DynamicResolutionHandler : System.Object
---@field instance UnityEngine.Rendering.DynamicResolutionHandler
---@field filter UnityEngine.Rendering.DynamicResUpscaleFilter
---@field finalViewport UnityEngine.Vector2Int
---@field runUpscalerFilterOnFullResolution boolean
---@field upsamplerSchedule UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType
UnityEngine.Rendering.DynamicResolutionHandler = {}
---@alias CS.UnityEngine.Rendering.DynamicResolutionHandler UnityEngine.Rendering.DynamicResolutionHandler
CS.UnityEngine.Rendering.DynamicResolutionHandler = UnityEngine.Rendering.DynamicResolutionHandler

---@param scaler UnityEngine.Rendering.PerformDynamicRes
---@param scalerType UnityEngine.Rendering.DynamicResScalePolicyType
function UnityEngine.Rendering.DynamicResolutionHandler.SetDynamicResScaler(scaler, scalerType) end
---@param scaler UnityEngine.Rendering.PerformDynamicRes
---@param scalerType UnityEngine.Rendering.DynamicResScalePolicyType
function UnityEngine.Rendering.DynamicResolutionHandler.SetSystemDynamicResScaler(scaler, scalerType) end
---@param slot UnityEngine.Rendering.DynamicResScalerSlot
function UnityEngine.Rendering.DynamicResolutionHandler.SetActiveDynamicScalerSlot(slot) end
function UnityEngine.Rendering.DynamicResolutionHandler.ClearSelectedCamera() end
---@param camera UnityEngine.Camera
---@param filter UnityEngine.Rendering.DynamicResUpscaleFilter
function UnityEngine.Rendering.DynamicResolutionHandler.SetUpscaleFilter(camera, filter) end
---@param camera UnityEngine.Camera
---@param settings System.Nullable
---@param OnResolutionChange System.Action
function UnityEngine.Rendering.DynamicResolutionHandler.UpdateAndUseCamera(camera, settings, OnResolutionChange) end
---@return UnityEngine.Vector2
function UnityEngine.Rendering.DynamicResolutionHandler:GetResolvedScale() end
---@param inputResolution UnityEngine.Vector2Int
---@param outputResolution UnityEngine.Vector2Int
---@param forceApply boolean
---@return number
function UnityEngine.Rendering.DynamicResolutionHandler:CalculateMipBias(inputResolution, outputResolution, forceApply) end
---@param cameraRequest boolean
function UnityEngine.Rendering.DynamicResolutionHandler:SetCurrentCameraRequest(cameraRequest) end
---@param settings UnityEngine.Rendering.GlobalDynamicResolutionSettings
---@param OnResolutionChange System.Action
function UnityEngine.Rendering.DynamicResolutionHandler:Update(settings, OnResolutionChange) end
---@return boolean
function UnityEngine.Rendering.DynamicResolutionHandler:SoftwareDynamicResIsEnabled() end
---@return boolean
function UnityEngine.Rendering.DynamicResolutionHandler:HardwareDynamicResIsEnabled() end
---@return boolean
function UnityEngine.Rendering.DynamicResolutionHandler:RequestsHardwareDynamicResolution() end
---@return boolean
function UnityEngine.Rendering.DynamicResolutionHandler:DynamicResolutionEnabled() end
function UnityEngine.Rendering.DynamicResolutionHandler:ForceSoftwareFallback() end
---@param size UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Rendering.DynamicResolutionHandler:GetScaledSize(size) end
---@param size UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Rendering.DynamicResolutionHandler:ApplyScalesOnSize(size) end
---@return number
function UnityEngine.Rendering.DynamicResolutionHandler:GetCurrentScale() end
---@return UnityEngine.Vector2Int
function UnityEngine.Rendering.DynamicResolutionHandler:GetLastScaledSize() end
---@overload fun(self: UnityEngine.Rendering.DynamicResolutionHandler, targetLowRes: number) : number
---@param targetLowRes number
---@param minimumThreshold number
---@return number
function UnityEngine.Rendering.DynamicResolutionHandler:GetLowResMultiplier(targetLowRes, minimumThreshold) end

---@class UnityEngine.Rendering.DynamicResolutionType
---@field Software UnityEngine.Rendering.DynamicResolutionType
---@field Hardware UnityEngine.Rendering.DynamicResolutionType
UnityEngine.Rendering.DynamicResolutionType = {}
---@alias CS.UnityEngine.Rendering.DynamicResolutionType UnityEngine.Rendering.DynamicResolutionType
CS.UnityEngine.Rendering.DynamicResolutionType = UnityEngine.Rendering.DynamicResolutionType


---@class UnityEngine.Rendering.DynamicResUpscaleFilter
---@field CatmullRom UnityEngine.Rendering.DynamicResUpscaleFilter
---@field ContrastAdaptiveSharpen UnityEngine.Rendering.DynamicResUpscaleFilter
---@field EdgeAdaptiveScalingUpres UnityEngine.Rendering.DynamicResUpscaleFilter
---@field TAAU UnityEngine.Rendering.DynamicResUpscaleFilter
UnityEngine.Rendering.DynamicResUpscaleFilter = {}
---@alias CS.UnityEngine.Rendering.DynamicResUpscaleFilter UnityEngine.Rendering.DynamicResUpscaleFilter
CS.UnityEngine.Rendering.DynamicResUpscaleFilter = UnityEngine.Rendering.DynamicResUpscaleFilter


---@class UnityEngine.Rendering.GlobalDynamicResolutionSettings : System.ValueType
---@field enabled boolean
---@field useMipBias boolean
---@field enableDLSS boolean
---@field DLSSPerfQualitySetting number
---@field DLSSInjectionPoint UnityEngine.Rendering.DynamicResolutionHandler.UpsamplerScheduleType
---@field DLSSUseOptimalSettings boolean
---@field DLSSSharpness number
---@field fsrOverrideSharpness boolean
---@field fsrSharpness number
---@field maxPercentage number
---@field minPercentage number
---@field dynResType UnityEngine.Rendering.DynamicResolutionType
---@field upsampleFilter UnityEngine.Rendering.DynamicResUpscaleFilter
---@field forceResolution boolean
---@field forcedPercentage number
---@field lowResTransparencyMinimumThreshold number
---@field rayTracingHalfResThreshold number
---@field lowResSSGIMinimumThreshold number
---@field lowResVolumetricCloudsMinimumThreshold number
UnityEngine.Rendering.GlobalDynamicResolutionSettings = {}
---@alias CS.UnityEngine.Rendering.GlobalDynamicResolutionSettings UnityEngine.Rendering.GlobalDynamicResolutionSettings
CS.UnityEngine.Rendering.GlobalDynamicResolutionSettings = UnityEngine.Rendering.GlobalDynamicResolutionSettings

---@return UnityEngine.Rendering.GlobalDynamicResolutionSettings
function UnityEngine.Rendering.GlobalDynamicResolutionSettings.NewDefault() end

---@class UnityEngine.Rendering.IAdditionalData
UnityEngine.Rendering.IAdditionalData = {}
---@alias CS.UnityEngine.Rendering.IAdditionalData UnityEngine.Rendering.IAdditionalData
CS.UnityEngine.Rendering.IAdditionalData = UnityEngine.Rendering.IAdditionalData


---@class UnityEngine.Rendering.IVirtualTexturingEnabledRenderPipeline
---@field virtualTexturingEnabled boolean
UnityEngine.Rendering.IVirtualTexturingEnabledRenderPipeline = {}
---@alias CS.UnityEngine.Rendering.IVirtualTexturingEnabledRenderPipeline UnityEngine.Rendering.IVirtualTexturingEnabledRenderPipeline
CS.UnityEngine.Rendering.IVirtualTexturingEnabledRenderPipeline = UnityEngine.Rendering.IVirtualTexturingEnabledRenderPipeline


---@class UnityEngine.Rendering.ListBuffer : System.ValueType
---@field Count number
---@field Capacity number
---@field Item T&
UnityEngine.Rendering.ListBuffer = {}
---@alias CS.UnityEngine.Rendering.ListBuffer UnityEngine.Rendering.ListBuffer
CS.UnityEngine.Rendering.ListBuffer = UnityEngine.Rendering.ListBuffer

---@param bufferPtr T*
---@param countPtr System.Int32*
---@param capacity number
---@return UnityEngine.Rendering.ListBuffer
function UnityEngine.Rendering.ListBuffer.New(bufferPtr, countPtr, capacity) end
---@param ref_index number
---@return T&,number
function UnityEngine.Rendering.ListBuffer:GetUnchecked(ref_index) end
---@param ref_value T
---@return boolean,T
function UnityEngine.Rendering.ListBuffer:TryAdd(ref_value) end
---@param dstBuffer T*
---@param startDstIndex number
---@param copyCount number
function UnityEngine.Rendering.ListBuffer:CopyTo(dstBuffer, startDstIndex, copyCount) end
---@param other UnityEngine.Rendering.ListBuffer
---@return boolean
function UnityEngine.Rendering.ListBuffer:TryCopyTo(other) end
---@param srcPtr T*
---@param count number
---@return boolean
function UnityEngine.Rendering.ListBuffer:TryCopyFrom(srcPtr, count) end

---@class UnityEngine.Rendering.ListBufferExtensions : System.Object
UnityEngine.Rendering.ListBufferExtensions = {}
---@alias CS.UnityEngine.Rendering.ListBufferExtensions UnityEngine.Rendering.ListBufferExtensions
CS.UnityEngine.Rendering.ListBufferExtensions = UnityEngine.Rendering.ListBufferExtensions


---@class UnityEngine.Rendering.ObjectPool : System.Object
---@field countAll number
---@field countActive number
---@field countInactive number
UnityEngine.Rendering.ObjectPool = {}
---@alias CS.UnityEngine.Rendering.ObjectPool UnityEngine.Rendering.ObjectPool
CS.UnityEngine.Rendering.ObjectPool = UnityEngine.Rendering.ObjectPool

---@param actionOnGet UnityEngine.Events.UnityAction[T]
---@param actionOnRelease UnityEngine.Events.UnityAction[T]
---@param collectionCheck boolean
---@return UnityEngine.Rendering.ObjectPool
function UnityEngine.Rendering.ObjectPool.New(actionOnGet, actionOnRelease, collectionCheck) end
---@overload fun() : T
---@param out_v T
---@return UnityEngine.Rendering.ObjectPool.PooledObject[T],T
function UnityEngine.Rendering.ObjectPool:Get(out_v) end
---@param element T
function UnityEngine.Rendering.ObjectPool:Release(element) end

---@class UnityEngine.Rendering.GenericPool : System.Object
UnityEngine.Rendering.GenericPool = {}
---@alias CS.UnityEngine.Rendering.GenericPool UnityEngine.Rendering.GenericPool
CS.UnityEngine.Rendering.GenericPool = UnityEngine.Rendering.GenericPool

---@overload fun() : T
---@param out_value T
---@return UnityEngine.Rendering.ObjectPool.PooledObject[T],T
function UnityEngine.Rendering.GenericPool.Get(out_value) end
---@param toRelease T
function UnityEngine.Rendering.GenericPool.Release(toRelease) end

---@class UnityEngine.Rendering.UnsafeGenericPool : System.Object
UnityEngine.Rendering.UnsafeGenericPool = {}
---@alias CS.UnityEngine.Rendering.UnsafeGenericPool UnityEngine.Rendering.UnsafeGenericPool
CS.UnityEngine.Rendering.UnsafeGenericPool = UnityEngine.Rendering.UnsafeGenericPool

---@overload fun() : T
---@param out_value T
---@return UnityEngine.Rendering.ObjectPool.PooledObject[T],T
function UnityEngine.Rendering.UnsafeGenericPool.Get(out_value) end
---@param toRelease T
function UnityEngine.Rendering.UnsafeGenericPool.Release(toRelease) end

---@class UnityEngine.Rendering.ListPool : System.Object
UnityEngine.Rendering.ListPool = {}
---@alias CS.UnityEngine.Rendering.ListPool UnityEngine.Rendering.ListPool
CS.UnityEngine.Rendering.ListPool = UnityEngine.Rendering.ListPool

---@overload fun() : System.Collections.Generic.List[T]
---@param out_value System.Collections.Generic.List[T]
---@return UnityEngine.Rendering.ObjectPool.PooledObject[System.Collections.Generic.List[T]],System.Collections.Generic.List[T]
function UnityEngine.Rendering.ListPool.Get(out_value) end
---@param toRelease System.Collections.Generic.List[T]
function UnityEngine.Rendering.ListPool.Release(toRelease) end

---@class UnityEngine.Rendering.HashSetPool : System.Object
UnityEngine.Rendering.HashSetPool = {}
---@alias CS.UnityEngine.Rendering.HashSetPool UnityEngine.Rendering.HashSetPool
CS.UnityEngine.Rendering.HashSetPool = UnityEngine.Rendering.HashSetPool

---@overload fun() : System.Collections.Generic.HashSet[T]
---@param out_value System.Collections.Generic.HashSet[T]
---@return UnityEngine.Rendering.ObjectPool.PooledObject[System.Collections.Generic.HashSet[T]],System.Collections.Generic.HashSet[T]
function UnityEngine.Rendering.HashSetPool.Get(out_value) end
---@param toRelease System.Collections.Generic.HashSet[T]
function UnityEngine.Rendering.HashSetPool.Release(toRelease) end

---@class UnityEngine.Rendering.DictionaryPool : System.Object
UnityEngine.Rendering.DictionaryPool = {}
---@alias CS.UnityEngine.Rendering.DictionaryPool UnityEngine.Rendering.DictionaryPool
CS.UnityEngine.Rendering.DictionaryPool = UnityEngine.Rendering.DictionaryPool

---@overload fun() : System.Collections.Generic.Dictionary[TKey,TValue]
---@param out_value System.Collections.Generic.Dictionary[TKey,TValue]
---@return UnityEngine.Rendering.ObjectPool.PooledObject[System.Collections.Generic.Dictionary[TKey,TValue]],System.Collections.Generic.Dictionary[TKey,TValue]
function UnityEngine.Rendering.DictionaryPool.Get(out_value) end
---@param toRelease System.Collections.Generic.Dictionary[TKey,TValue]
function UnityEngine.Rendering.DictionaryPool.Release(toRelease) end

---@class UnityEngine.Rendering.ListChangedEventArgs : System.EventArgs
---@field index number
---@field item T
UnityEngine.Rendering.ListChangedEventArgs = {}
---@alias CS.UnityEngine.Rendering.ListChangedEventArgs UnityEngine.Rendering.ListChangedEventArgs
CS.UnityEngine.Rendering.ListChangedEventArgs = UnityEngine.Rendering.ListChangedEventArgs

---@param index number
---@param item T
---@return UnityEngine.Rendering.ListChangedEventArgs
function UnityEngine.Rendering.ListChangedEventArgs.New(index, item) end

---@class UnityEngine.Rendering.ListChangedEventHandler : System.MulticastDelegate
UnityEngine.Rendering.ListChangedEventHandler = {}
---@alias CS.UnityEngine.Rendering.ListChangedEventHandler UnityEngine.Rendering.ListChangedEventHandler
CS.UnityEngine.Rendering.ListChangedEventHandler = UnityEngine.Rendering.ListChangedEventHandler

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Rendering.ListChangedEventHandler
function UnityEngine.Rendering.ListChangedEventHandler.New(object, method) end
---@param sender UnityEngine.Rendering.ObservableList[T]
---@param e UnityEngine.Rendering.ListChangedEventArgs[T]
function UnityEngine.Rendering.ListChangedEventHandler:Invoke(sender, e) end
---@param sender UnityEngine.Rendering.ObservableList[T]
---@param e UnityEngine.Rendering.ListChangedEventArgs[T]
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Rendering.ListChangedEventHandler:BeginInvoke(sender, e, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Rendering.ListChangedEventHandler:EndInvoke(result) end

---@class UnityEngine.Rendering.ObservableList : System.Object
---@field Item T
---@field Count number
---@field IsReadOnly boolean
UnityEngine.Rendering.ObservableList = {}
---@alias CS.UnityEngine.Rendering.ObservableList UnityEngine.Rendering.ObservableList
CS.UnityEngine.Rendering.ObservableList = UnityEngine.Rendering.ObservableList

---@overload fun() : UnityEngine.Rendering.ObservableList
---@overload fun(capacity: number) : UnityEngine.Rendering.ObservableList
---@param collection System.Collections.Generic.IEnumerable[T]
---@return UnityEngine.Rendering.ObservableList
function UnityEngine.Rendering.ObservableList.New(collection) end
---@param item T
---@return boolean
function UnityEngine.Rendering.ObservableList:Contains(item) end
---@param item T
---@return number
function UnityEngine.Rendering.ObservableList:IndexOf(item) end
---@overload fun(self: UnityEngine.Rendering.ObservableList, item: T)
---@param items T[]
function UnityEngine.Rendering.ObservableList:Add(items) end
---@param index number
---@param item T
function UnityEngine.Rendering.ObservableList:Insert(index, item) end
---@overload fun(self: UnityEngine.Rendering.ObservableList, item: T) : boolean
---@param items T[]
---@return number
function UnityEngine.Rendering.ObservableList:Remove(items) end
---@param index number
function UnityEngine.Rendering.ObservableList:RemoveAt(index) end
function UnityEngine.Rendering.ObservableList:Clear() end
---@param array T[]
---@param arrayIndex number
function UnityEngine.Rendering.ObservableList:CopyTo(array, arrayIndex) end
---@return System.Collections.Generic.IEnumerator[T]
function UnityEngine.Rendering.ObservableList:GetEnumerator() end

---@class UnityEngine.Rendering.RemoveRangeExtensions : System.Object
UnityEngine.Rendering.RemoveRangeExtensions = {}
---@alias CS.UnityEngine.Rendering.RemoveRangeExtensions UnityEngine.Rendering.RemoveRangeExtensions
CS.UnityEngine.Rendering.RemoveRangeExtensions = UnityEngine.Rendering.RemoveRangeExtensions


---@class UnityEngine.Rendering.SerializableEnum : System.Object
---@field value System.Enum
UnityEngine.Rendering.SerializableEnum = {}
---@alias CS.UnityEngine.Rendering.SerializableEnum UnityEngine.Rendering.SerializableEnum
CS.UnityEngine.Rendering.SerializableEnum = UnityEngine.Rendering.SerializableEnum

---@param enumType System.Type
---@return UnityEngine.Rendering.SerializableEnum
function UnityEngine.Rendering.SerializableEnum.New(enumType) end

---@class UnityEngine.Rendering.SerializedDictionary : UnityEngine.Rendering.SerializedDictionary[K,V,K,V]
UnityEngine.Rendering.SerializedDictionary = {}
---@alias CS.UnityEngine.Rendering.SerializedDictionary UnityEngine.Rendering.SerializedDictionary
CS.UnityEngine.Rendering.SerializedDictionary = UnityEngine.Rendering.SerializedDictionary

---@return UnityEngine.Rendering.SerializedDictionary
function UnityEngine.Rendering.SerializedDictionary.New() end
---@param key K
---@return K
function UnityEngine.Rendering.SerializedDictionary:SerializeKey(key) end
---@param val V
---@return V
function UnityEngine.Rendering.SerializedDictionary:SerializeValue(val) end
---@param key K
---@return K
function UnityEngine.Rendering.SerializedDictionary:DeserializeKey(key) end
---@param val V
---@return V
function UnityEngine.Rendering.SerializedDictionary:DeserializeValue(val) end

---@class UnityEngine.Rendering.SerializedDictionary : System.Collections.Generic.Dictionary[K,V]
UnityEngine.Rendering.SerializedDictionary = {}
---@alias CS.UnityEngine.Rendering.SerializedDictionary UnityEngine.Rendering.SerializedDictionary
CS.UnityEngine.Rendering.SerializedDictionary = UnityEngine.Rendering.SerializedDictionary

---@param key K
---@return SK
function UnityEngine.Rendering.SerializedDictionary:SerializeKey(key) end
---@param value V
---@return SV
function UnityEngine.Rendering.SerializedDictionary:SerializeValue(value) end
---@param serializedKey SK
---@return K
function UnityEngine.Rendering.SerializedDictionary:DeserializeKey(serializedKey) end
---@param serializedValue SV
---@return V
function UnityEngine.Rendering.SerializedDictionary:DeserializeValue(serializedValue) end
function UnityEngine.Rendering.SerializedDictionary:OnBeforeSerialize() end
function UnityEngine.Rendering.SerializedDictionary:OnAfterDeserialize() end

---@class UnityEngine.Rendering.SwapCollectionExtensions : System.Object
UnityEngine.Rendering.SwapCollectionExtensions = {}
---@alias CS.UnityEngine.Rendering.SwapCollectionExtensions UnityEngine.Rendering.SwapCollectionExtensions
CS.UnityEngine.Rendering.SwapCollectionExtensions = UnityEngine.Rendering.SwapCollectionExtensions


---@class UnityEngine.Rendering.XRGraphics : System.Object
---@field eyeTextureResolutionScale number
---@field renderViewportScale number
---@field tryEnable boolean
---@field enabled boolean
---@field isDeviceActive boolean
---@field loadedDeviceName string
---@field supportedDevices System.String[]
---@field stereoRenderingMode UnityEngine.Rendering.XRGraphics.StereoRenderingMode
---@field eyeTextureDesc UnityEngine.RenderTextureDescriptor
---@field eyeTextureWidth number
---@field eyeTextureHeight number
UnityEngine.Rendering.XRGraphics = {}
---@alias CS.UnityEngine.Rendering.XRGraphics UnityEngine.Rendering.XRGraphics
CS.UnityEngine.Rendering.XRGraphics = UnityEngine.Rendering.XRGraphics

---@return UnityEngine.Rendering.XRGraphics
function UnityEngine.Rendering.XRGraphics.New() end

---@class UnityEngine.Rendering.DebugDisplaySettings : System.Object
---@field Instance T
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.DebugDisplaySettings = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettings UnityEngine.Rendering.DebugDisplaySettings
CS.UnityEngine.Rendering.DebugDisplaySettings = UnityEngine.Rendering.DebugDisplaySettings

---@param onExecute System.Action
function UnityEngine.Rendering.DebugDisplaySettings:ForEach(onExecute) end
function UnityEngine.Rendering.DebugDisplaySettings:Reset() end
---@param ref_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.DebugDisplaySettings:TryGetScreenClearColor(ref_color) end

---@class UnityEngine.Rendering.DebugDisplaySettingsPanel : System.Object
---@field PanelName string
---@field Order number
---@field Widgets UnityEngine.Rendering.DebugUI.Widget[]
---@field Flags UnityEngine.Rendering.DebugUI.Flags
UnityEngine.Rendering.DebugDisplaySettingsPanel = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsPanel UnityEngine.Rendering.DebugDisplaySettingsPanel
CS.UnityEngine.Rendering.DebugDisplaySettingsPanel = UnityEngine.Rendering.DebugDisplaySettingsPanel

function UnityEngine.Rendering.DebugDisplaySettingsPanel:Dispose() end

---@class UnityEngine.Rendering.DebugDisplaySettingsPanel : UnityEngine.Rendering.DebugDisplaySettingsPanel
---@field data T
UnityEngine.Rendering.DebugDisplaySettingsPanel = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsPanel UnityEngine.Rendering.DebugDisplaySettingsPanel
CS.UnityEngine.Rendering.DebugDisplaySettingsPanel = UnityEngine.Rendering.DebugDisplaySettingsPanel


---@class UnityEngine.Rendering.DebugDisplaySettingsUI : System.Object
UnityEngine.Rendering.DebugDisplaySettingsUI = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsUI UnityEngine.Rendering.DebugDisplaySettingsUI
CS.UnityEngine.Rendering.DebugDisplaySettingsUI = UnityEngine.Rendering.DebugDisplaySettingsUI

---@return UnityEngine.Rendering.DebugDisplaySettingsUI
function UnityEngine.Rendering.DebugDisplaySettingsUI.New() end
---@param settings UnityEngine.Rendering.IDebugDisplaySettings
function UnityEngine.Rendering.DebugDisplaySettingsUI:RegisterDebug(settings) end
function UnityEngine.Rendering.DebugDisplaySettingsUI:UnregisterDebug() end
---@return System.Action
function UnityEngine.Rendering.DebugDisplaySettingsUI:GetReset() end

---@class UnityEngine.Rendering.DebugDisplaySettingsVolume : System.Object
---@field volumeDebugSettings UnityEngine.Rendering.IVolumeDebugSettings2
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.DebugDisplaySettingsVolume = {}
---@alias CS.UnityEngine.Rendering.DebugDisplaySettingsVolume UnityEngine.Rendering.DebugDisplaySettingsVolume
CS.UnityEngine.Rendering.DebugDisplaySettingsVolume = UnityEngine.Rendering.DebugDisplaySettingsVolume

---@param volumeDebugSettings UnityEngine.Rendering.IVolumeDebugSettings2
---@return UnityEngine.Rendering.DebugDisplaySettingsVolume
function UnityEngine.Rendering.DebugDisplaySettingsVolume.New(volumeDebugSettings) end
---@param ref_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.DebugDisplaySettingsVolume:TryGetScreenClearColor(ref_color) end
---@return UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable
function UnityEngine.Rendering.DebugDisplaySettingsVolume:CreatePanel() end

---@class UnityEngine.Rendering.DebugFrameTiming : System.Object
---@field bottleneckHistorySize number
---@field sampleHistorySize number
UnityEngine.Rendering.DebugFrameTiming = {}
---@alias CS.UnityEngine.Rendering.DebugFrameTiming UnityEngine.Rendering.DebugFrameTiming
CS.UnityEngine.Rendering.DebugFrameTiming = UnityEngine.Rendering.DebugFrameTiming

---@return UnityEngine.Rendering.DebugFrameTiming
function UnityEngine.Rendering.DebugFrameTiming.New() end
function UnityEngine.Rendering.DebugFrameTiming:UpdateFrameTiming() end
---@param list System.Collections.Generic.List
function UnityEngine.Rendering.DebugFrameTiming:RegisterDebugUI(list) end

---@class UnityEngine.Rendering.DebugAction
---@field EnableDebugMenu UnityEngine.Rendering.DebugAction
---@field PreviousDebugPanel UnityEngine.Rendering.DebugAction
---@field NextDebugPanel UnityEngine.Rendering.DebugAction
---@field Action UnityEngine.Rendering.DebugAction
---@field MakePersistent UnityEngine.Rendering.DebugAction
---@field MoveVertical UnityEngine.Rendering.DebugAction
---@field MoveHorizontal UnityEngine.Rendering.DebugAction
---@field Multiplier UnityEngine.Rendering.DebugAction
---@field ResetAll UnityEngine.Rendering.DebugAction
---@field DebugActionCount UnityEngine.Rendering.DebugAction
UnityEngine.Rendering.DebugAction = {}
---@alias CS.UnityEngine.Rendering.DebugAction UnityEngine.Rendering.DebugAction
CS.UnityEngine.Rendering.DebugAction = UnityEngine.Rendering.DebugAction


---@class UnityEngine.Rendering.DebugActionRepeatMode
---@field Never UnityEngine.Rendering.DebugActionRepeatMode
---@field Delay UnityEngine.Rendering.DebugActionRepeatMode
UnityEngine.Rendering.DebugActionRepeatMode = {}
---@alias CS.UnityEngine.Rendering.DebugActionRepeatMode UnityEngine.Rendering.DebugActionRepeatMode
CS.UnityEngine.Rendering.DebugActionRepeatMode = UnityEngine.Rendering.DebugActionRepeatMode


---@class UnityEngine.Rendering.DebugManager : System.Object
---@field refreshEditorRequested boolean
---@field instance UnityEngine.Rendering.DebugManager
---@field panels System.Collections.ObjectModel.ReadOnlyCollection
---@field isAnyDebugUIActive boolean
---@field displayEditorUI boolean
---@field enableRuntimeUI boolean
---@field displayRuntimeUI boolean
---@field displayPersistentRuntimeUI boolean
UnityEngine.Rendering.DebugManager = {}
---@alias CS.UnityEngine.Rendering.DebugManager UnityEngine.Rendering.DebugManager
CS.UnityEngine.Rendering.DebugManager = UnityEngine.Rendering.DebugManager

function UnityEngine.Rendering.DebugManager:RefreshEditor() end
function UnityEngine.Rendering.DebugManager:Reset() end
function UnityEngine.Rendering.DebugManager:ReDrawOnScreenDebug() end
---@param data UnityEngine.Rendering.IDebugData
function UnityEngine.Rendering.DebugManager:RegisterData(data) end
---@param data UnityEngine.Rendering.IDebugData
function UnityEngine.Rendering.DebugManager:UnregisterData(data) end
---@return number
function UnityEngine.Rendering.DebugManager:GetState() end
---@param displayName string
---@return number
function UnityEngine.Rendering.DebugManager:PanelIndex(displayName) end
---@param panelIndex number
---@return string
function UnityEngine.Rendering.DebugManager:PanelDiplayName(panelIndex) end
---@param index number
function UnityEngine.Rendering.DebugManager:RequestEditorWindowPanelIndex(index) end
---@param displayName string
---@param createIfNull boolean
---@param groupIndex number
---@param overrideIfExist boolean
---@return UnityEngine.Rendering.DebugUI.Panel
function UnityEngine.Rendering.DebugManager:GetPanel(displayName, createIfNull, groupIndex, overrideIfExist) end
---@param displayName string
---@return number
function UnityEngine.Rendering.DebugManager:FindPanelIndex(displayName) end
---@overload fun(self: UnityEngine.Rendering.DebugManager, displayName: string)
---@param panel UnityEngine.Rendering.DebugUI.Panel
function UnityEngine.Rendering.DebugManager:RemovePanel(panel) end
---@param flags UnityEngine.Rendering.DebugUI.Flags
---@return UnityEngine.Rendering.DebugUI.Widget[]
function UnityEngine.Rendering.DebugManager:GetItems(flags) end
---@param queryPath string
---@return UnityEngine.Rendering.DebugUI.Widget
function UnityEngine.Rendering.DebugManager:GetItem(queryPath) end

---@class UnityEngine.Rendering.DebugActionDesc : System.Object
---@field buttonAction UnityEngine.InputSystem.InputAction
---@field repeatMode UnityEngine.Rendering.DebugActionRepeatMode
---@field repeatDelay number
UnityEngine.Rendering.DebugActionDesc = {}
---@alias CS.UnityEngine.Rendering.DebugActionDesc UnityEngine.Rendering.DebugActionDesc
CS.UnityEngine.Rendering.DebugActionDesc = UnityEngine.Rendering.DebugActionDesc

---@return UnityEngine.Rendering.DebugActionDesc
function UnityEngine.Rendering.DebugActionDesc.New() end

---@class UnityEngine.Rendering.DebugActionState : System.Object
UnityEngine.Rendering.DebugActionState = {}
---@alias CS.UnityEngine.Rendering.DebugActionState UnityEngine.Rendering.DebugActionState
CS.UnityEngine.Rendering.DebugActionState = UnityEngine.Rendering.DebugActionState

---@return UnityEngine.Rendering.DebugActionState
function UnityEngine.Rendering.DebugActionState.New() end
---@param action UnityEngine.InputSystem.InputAction
---@param state number
function UnityEngine.Rendering.DebugActionState:TriggerWithButton(action, state) end
---@param desc UnityEngine.Rendering.DebugActionDesc
function UnityEngine.Rendering.DebugActionState:Update(desc) end

---@class UnityEngine.Rendering.IDebugData
UnityEngine.Rendering.IDebugData = {}
---@alias CS.UnityEngine.Rendering.IDebugData UnityEngine.Rendering.IDebugData
CS.UnityEngine.Rendering.IDebugData = UnityEngine.Rendering.IDebugData

---@return System.Action
function UnityEngine.Rendering.IDebugData:GetReset() end

---@class UnityEngine.Rendering.DebugShapes : System.Object
---@field instance UnityEngine.Rendering.DebugShapes
UnityEngine.Rendering.DebugShapes = {}
---@alias CS.UnityEngine.Rendering.DebugShapes UnityEngine.Rendering.DebugShapes
CS.UnityEngine.Rendering.DebugShapes = UnityEngine.Rendering.DebugShapes

---@return UnityEngine.Rendering.DebugShapes
function UnityEngine.Rendering.DebugShapes.New() end
---@return UnityEngine.Mesh
function UnityEngine.Rendering.DebugShapes:RequestSphereMesh() end
---@return UnityEngine.Mesh
function UnityEngine.Rendering.DebugShapes:RequestBoxMesh() end
---@return UnityEngine.Mesh
function UnityEngine.Rendering.DebugShapes:RequestConeMesh() end
---@return UnityEngine.Mesh
function UnityEngine.Rendering.DebugShapes:RequestPyramidMesh() end

---@class UnityEngine.Rendering.DebugUI : System.Object
UnityEngine.Rendering.DebugUI = {}
---@alias CS.UnityEngine.Rendering.DebugUI UnityEngine.Rendering.DebugUI
CS.UnityEngine.Rendering.DebugUI = UnityEngine.Rendering.DebugUI

---@return UnityEngine.Rendering.DebugUI
function UnityEngine.Rendering.DebugUI.New() end

---@class UnityEngine.Rendering.DebugUpdater : UnityEngine.MonoBehaviour
UnityEngine.Rendering.DebugUpdater = {}
---@alias CS.UnityEngine.Rendering.DebugUpdater UnityEngine.Rendering.DebugUpdater
CS.UnityEngine.Rendering.DebugUpdater = UnityEngine.Rendering.DebugUpdater


---@class UnityEngine.Rendering.PerformanceBottleneck
---@field Indeterminate UnityEngine.Rendering.PerformanceBottleneck
---@field PresentLimited UnityEngine.Rendering.PerformanceBottleneck
---@field CPU UnityEngine.Rendering.PerformanceBottleneck
---@field GPU UnityEngine.Rendering.PerformanceBottleneck
---@field Balanced UnityEngine.Rendering.PerformanceBottleneck
UnityEngine.Rendering.PerformanceBottleneck = {}
---@alias CS.UnityEngine.Rendering.PerformanceBottleneck UnityEngine.Rendering.PerformanceBottleneck
CS.UnityEngine.Rendering.PerformanceBottleneck = UnityEngine.Rendering.PerformanceBottleneck


---@class UnityEngine.Rendering.BottleneckHistogram : System.ValueType
UnityEngine.Rendering.BottleneckHistogram = {}
---@alias CS.UnityEngine.Rendering.BottleneckHistogram UnityEngine.Rendering.BottleneckHistogram
CS.UnityEngine.Rendering.BottleneckHistogram = UnityEngine.Rendering.BottleneckHistogram


---@class UnityEngine.Rendering.BottleneckHistory : System.Object
UnityEngine.Rendering.BottleneckHistory = {}
---@alias CS.UnityEngine.Rendering.BottleneckHistory UnityEngine.Rendering.BottleneckHistory
CS.UnityEngine.Rendering.BottleneckHistory = UnityEngine.Rendering.BottleneckHistory

---@param initialCapacity number
---@return UnityEngine.Rendering.BottleneckHistory
function UnityEngine.Rendering.BottleneckHistory.New(initialCapacity) end

---@class UnityEngine.Rendering.FrameTimeSample : System.ValueType
UnityEngine.Rendering.FrameTimeSample = {}
---@alias CS.UnityEngine.Rendering.FrameTimeSample UnityEngine.Rendering.FrameTimeSample
CS.UnityEngine.Rendering.FrameTimeSample = UnityEngine.Rendering.FrameTimeSample


---@class UnityEngine.Rendering.FrameTimeSampleHistory : System.Object
UnityEngine.Rendering.FrameTimeSampleHistory = {}
---@alias CS.UnityEngine.Rendering.FrameTimeSampleHistory UnityEngine.Rendering.FrameTimeSampleHistory
CS.UnityEngine.Rendering.FrameTimeSampleHistory = UnityEngine.Rendering.FrameTimeSampleHistory

---@param initialCapacity number
---@return UnityEngine.Rendering.FrameTimeSampleHistory
function UnityEngine.Rendering.FrameTimeSampleHistory.New(initialCapacity) end

---@class UnityEngine.Rendering.IDebugDisplaySettings
UnityEngine.Rendering.IDebugDisplaySettings = {}
---@alias CS.UnityEngine.Rendering.IDebugDisplaySettings UnityEngine.Rendering.IDebugDisplaySettings
CS.UnityEngine.Rendering.IDebugDisplaySettings = UnityEngine.Rendering.IDebugDisplaySettings

function UnityEngine.Rendering.IDebugDisplaySettings:Reset() end
---@param onExecute System.Action
function UnityEngine.Rendering.IDebugDisplaySettings:ForEach(onExecute) end

---@class UnityEngine.Rendering.IDebugDisplaySettingsData
UnityEngine.Rendering.IDebugDisplaySettingsData = {}
---@alias CS.UnityEngine.Rendering.IDebugDisplaySettingsData UnityEngine.Rendering.IDebugDisplaySettingsData
CS.UnityEngine.Rendering.IDebugDisplaySettingsData = UnityEngine.Rendering.IDebugDisplaySettingsData

---@return UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable
function UnityEngine.Rendering.IDebugDisplaySettingsData:CreatePanel() end

---@class UnityEngine.Rendering.IDebugDisplaySettingsPanel
---@field PanelName string
---@field Widgets UnityEngine.Rendering.DebugUI.Widget[]
---@field Flags UnityEngine.Rendering.DebugUI.Flags
UnityEngine.Rendering.IDebugDisplaySettingsPanel = {}
---@alias CS.UnityEngine.Rendering.IDebugDisplaySettingsPanel UnityEngine.Rendering.IDebugDisplaySettingsPanel
CS.UnityEngine.Rendering.IDebugDisplaySettingsPanel = UnityEngine.Rendering.IDebugDisplaySettingsPanel


---@class UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable
UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable = {}
---@alias CS.UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable
CS.UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable = UnityEngine.Rendering.IDebugDisplaySettingsPanelDisposable


---@class UnityEngine.Rendering.IDebugDisplaySettingsQuery
---@field AreAnySettingsActive boolean
---@field IsPostProcessingAllowed boolean
---@field IsLightingActive boolean
UnityEngine.Rendering.IDebugDisplaySettingsQuery = {}
---@alias CS.UnityEngine.Rendering.IDebugDisplaySettingsQuery UnityEngine.Rendering.IDebugDisplaySettingsQuery
CS.UnityEngine.Rendering.IDebugDisplaySettingsQuery = UnityEngine.Rendering.IDebugDisplaySettingsQuery

---@param ref_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.Rendering.IDebugDisplaySettingsQuery:TryGetScreenClearColor(ref_color) end

---@class UnityEngine.Rendering.IVolumeDebugSettings
---@field selectedComponent number
---@field selectedCamera UnityEngine.Camera
---@field cameras System.Collections.Generic.IEnumerable
---@field selectedCameraIndex number
---@field selectedCameraVolumeStack UnityEngine.Rendering.VolumeStack
---@field selectedCameraLayerMask UnityEngine.LayerMask
---@field selectedCameraPosition UnityEngine.Vector3
---@field selectedComponentType System.Type
UnityEngine.Rendering.IVolumeDebugSettings = {}
---@alias CS.UnityEngine.Rendering.IVolumeDebugSettings UnityEngine.Rendering.IVolumeDebugSettings
CS.UnityEngine.Rendering.IVolumeDebugSettings = UnityEngine.Rendering.IVolumeDebugSettings

---@return UnityEngine.Rendering.Volume[]
function UnityEngine.Rendering.IVolumeDebugSettings:GetVolumes() end
---@param volume UnityEngine.Rendering.Volume
---@return boolean
function UnityEngine.Rendering.IVolumeDebugSettings:VolumeHasInfluence(volume) end
---@param newVolumes UnityEngine.Rendering.Volume[]
---@return boolean
function UnityEngine.Rendering.IVolumeDebugSettings:RefreshVolumes(newVolumes) end
---@param volume UnityEngine.Rendering.Volume
---@return number
function UnityEngine.Rendering.IVolumeDebugSettings:GetVolumeWeight(volume) end

---@class UnityEngine.Rendering.IVolumeDebugSettings2
---@field targetRenderPipeline System.Type
---@field volumeComponentsPathAndType System.Collections.Generic.List
UnityEngine.Rendering.IVolumeDebugSettings2 = {}
---@alias CS.UnityEngine.Rendering.IVolumeDebugSettings2 UnityEngine.Rendering.IVolumeDebugSettings2
CS.UnityEngine.Rendering.IVolumeDebugSettings2 = UnityEngine.Rendering.IVolumeDebugSettings2


---@class UnityEngine.Rendering.MousePositionDebug : System.Object
---@field instance UnityEngine.Rendering.MousePositionDebug
UnityEngine.Rendering.MousePositionDebug = {}
---@alias CS.UnityEngine.Rendering.MousePositionDebug UnityEngine.Rendering.MousePositionDebug
CS.UnityEngine.Rendering.MousePositionDebug = UnityEngine.Rendering.MousePositionDebug

---@return UnityEngine.Rendering.MousePositionDebug
function UnityEngine.Rendering.MousePositionDebug.New() end
function UnityEngine.Rendering.MousePositionDebug:Build() end
function UnityEngine.Rendering.MousePositionDebug:Cleanup() end
---@param ScreenHeight number
---@param sceneView boolean
---@return UnityEngine.Vector2
function UnityEngine.Rendering.MousePositionDebug:GetMousePosition(ScreenHeight, sceneView) end
---@param ScreenHeight number
---@return UnityEngine.Vector2
function UnityEngine.Rendering.MousePositionDebug:GetMouseClickPosition(ScreenHeight) end

---@class UnityEngine.Rendering.TProfilingSampler : UnityEngine.Rendering.ProfilingSampler
UnityEngine.Rendering.TProfilingSampler = {}
---@alias CS.UnityEngine.Rendering.TProfilingSampler UnityEngine.Rendering.TProfilingSampler
CS.UnityEngine.Rendering.TProfilingSampler = UnityEngine.Rendering.TProfilingSampler

---@param name string
---@return UnityEngine.Rendering.TProfilingSampler
function UnityEngine.Rendering.TProfilingSampler.New(name) end

---@class UnityEngine.Rendering.ProfilingSampler : System.Object
---@field name string
---@field enableRecording boolean
---@field gpuElapsedTime number
---@field gpuSampleCount number
---@field cpuElapsedTime number
---@field cpuSampleCount number
---@field inlineCpuElapsedTime number
---@field inlineCpuSampleCount number
UnityEngine.Rendering.ProfilingSampler = {}
---@alias CS.UnityEngine.Rendering.ProfilingSampler UnityEngine.Rendering.ProfilingSampler
CS.UnityEngine.Rendering.ProfilingSampler = UnityEngine.Rendering.ProfilingSampler

---@param name string
---@return UnityEngine.Rendering.ProfilingSampler
function UnityEngine.Rendering.ProfilingSampler.New(name) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.ProfilingSampler:Begin(cmd) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.ProfilingSampler:End(cmd) end

---@class UnityEngine.Rendering.ProfilingScope : System.ValueType
UnityEngine.Rendering.ProfilingScope = {}
---@alias CS.UnityEngine.Rendering.ProfilingScope UnityEngine.Rendering.ProfilingScope
CS.UnityEngine.Rendering.ProfilingScope = UnityEngine.Rendering.ProfilingScope

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param sampler UnityEngine.Rendering.ProfilingSampler
---@return UnityEngine.Rendering.ProfilingScope
function UnityEngine.Rendering.ProfilingScope.New(cmd, sampler) end
function UnityEngine.Rendering.ProfilingScope:Dispose() end

---@class UnityEngine.Rendering.ProfilingSample : System.ValueType
UnityEngine.Rendering.ProfilingSample = {}
---@alias CS.UnityEngine.Rendering.ProfilingSample UnityEngine.Rendering.ProfilingSample
CS.UnityEngine.Rendering.ProfilingSample = UnityEngine.Rendering.ProfilingSample

---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, name: string, sampler: UnityEngine.Profiling.CustomSampler) : UnityEngine.Rendering.ProfilingSample
---@overload fun(cmd: UnityEngine.Rendering.CommandBuffer, format: string, arg: System.Object) : UnityEngine.Rendering.ProfilingSample
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param format string
---@param args System.Object[]
---@return UnityEngine.Rendering.ProfilingSample
function UnityEngine.Rendering.ProfilingSample.New(cmd, format, args) end
function UnityEngine.Rendering.ProfilingSample:Dispose() end

---@class UnityEngine.Rendering.ShaderDebugPrintManager : System.Object
---@field instance UnityEngine.Rendering.ShaderDebugPrintManager
---@field outputLine string
---@field outputAction System.Action
UnityEngine.Rendering.ShaderDebugPrintManager = {}
---@alias CS.UnityEngine.Rendering.ShaderDebugPrintManager UnityEngine.Rendering.ShaderDebugPrintManager
CS.UnityEngine.Rendering.ShaderDebugPrintManager = UnityEngine.Rendering.ShaderDebugPrintManager

---@param cmd UnityEngine.Rendering.CommandBuffer
---@param input UnityEngine.Rendering.ShaderDebugPrintInput
function UnityEngine.Rendering.ShaderDebugPrintManager:SetShaderDebugPrintInputConstants(cmd, input) end
---@param cmd UnityEngine.Rendering.CommandBuffer
function UnityEngine.Rendering.ShaderDebugPrintManager:SetShaderDebugPrintBindings(cmd) end
function UnityEngine.Rendering.ShaderDebugPrintManager:EndFrame() end
---@param line string
function UnityEngine.Rendering.ShaderDebugPrintManager:DefaultOutput(line) end

---@class UnityEngine.Rendering.ShaderDebugPrintInput : System.ValueType
---@field pos UnityEngine.Vector2
---@field leftDown boolean
---@field rightDown boolean
---@field middleDown boolean
UnityEngine.Rendering.ShaderDebugPrintInput = {}
---@alias CS.UnityEngine.Rendering.ShaderDebugPrintInput UnityEngine.Rendering.ShaderDebugPrintInput
CS.UnityEngine.Rendering.ShaderDebugPrintInput = UnityEngine.Rendering.ShaderDebugPrintInput

---@return string
function UnityEngine.Rendering.ShaderDebugPrintInput:String() end

---@class UnityEngine.Rendering.ShaderDebugPrintInputProducer : System.Object
UnityEngine.Rendering.ShaderDebugPrintInputProducer = {}
---@alias CS.UnityEngine.Rendering.ShaderDebugPrintInputProducer UnityEngine.Rendering.ShaderDebugPrintInputProducer
CS.UnityEngine.Rendering.ShaderDebugPrintInputProducer = UnityEngine.Rendering.ShaderDebugPrintInputProducer

---@return UnityEngine.Rendering.ShaderDebugPrintInput
function UnityEngine.Rendering.ShaderDebugPrintInputProducer.Get() end

---@class UnityEngine.Rendering.VolumeDebugSettings : System.Object
---@field selectedComponent number
---@field selectedCamera UnityEngine.Camera
---@field selectedCameraIndex number
---@field cameras System.Collections.Generic.IEnumerable
---@field selectedCameraVolumeStack UnityEngine.Rendering.VolumeStack
---@field selectedCameraLayerMask UnityEngine.LayerMask
---@field selectedCameraPosition UnityEngine.Vector3
---@field selectedComponentType System.Type
---@field volumeComponentsPathAndType System.Collections.Generic.List
---@field targetRenderPipeline System.Type
UnityEngine.Rendering.VolumeDebugSettings = {}
---@alias CS.UnityEngine.Rendering.VolumeDebugSettings UnityEngine.Rendering.VolumeDebugSettings
CS.UnityEngine.Rendering.VolumeDebugSettings = UnityEngine.Rendering.VolumeDebugSettings

---@return UnityEngine.Rendering.Volume[]
function UnityEngine.Rendering.VolumeDebugSettings:GetVolumes() end
---@param newVolumes UnityEngine.Rendering.Volume[]
---@return boolean
function UnityEngine.Rendering.VolumeDebugSettings:RefreshVolumes(newVolumes) end
---@param volume UnityEngine.Rendering.Volume
---@return number
function UnityEngine.Rendering.VolumeDebugSettings:GetVolumeWeight(volume) end
---@param volume UnityEngine.Rendering.Volume
---@return boolean
function UnityEngine.Rendering.VolumeDebugSettings:VolumeHasInfluence(volume) end

---@class UnityEngine.Rendering.CoreRPHelpURLAttribute : UnityEngine.HelpURLAttribute
UnityEngine.Rendering.CoreRPHelpURLAttribute = {}
---@alias CS.UnityEngine.Rendering.CoreRPHelpURLAttribute UnityEngine.Rendering.CoreRPHelpURLAttribute
CS.UnityEngine.Rendering.CoreRPHelpURLAttribute = UnityEngine.Rendering.CoreRPHelpURLAttribute

---@overload fun(pageName: string, packageName: string) : UnityEngine.Rendering.CoreRPHelpURLAttribute
---@param pageName string
---@param pageHash string
---@param packageName string
---@return UnityEngine.Rendering.CoreRPHelpURLAttribute
function UnityEngine.Rendering.CoreRPHelpURLAttribute.New(pageName, pageHash, packageName) end

---@class UnityEngine.Rendering.DocumentationInfo : System.Object
---@field version string
UnityEngine.Rendering.DocumentationInfo = {}
---@alias CS.UnityEngine.Rendering.DocumentationInfo UnityEngine.Rendering.DocumentationInfo
CS.UnityEngine.Rendering.DocumentationInfo = UnityEngine.Rendering.DocumentationInfo

---@return UnityEngine.Rendering.DocumentationInfo
function UnityEngine.Rendering.DocumentationInfo.New() end
---@overload fun(packageName: string, pageName: string) : string
---@param packageName string
---@param pageName string
---@param pageHash string
---@return string
function UnityEngine.Rendering.DocumentationInfo.GetPageLink(packageName, pageName, pageHash) end

---@class UnityEngine.Rendering.DocumentationUtils : System.Object
UnityEngine.Rendering.DocumentationUtils = {}
---@alias CS.UnityEngine.Rendering.DocumentationUtils UnityEngine.Rendering.DocumentationUtils
CS.UnityEngine.Rendering.DocumentationUtils = UnityEngine.Rendering.DocumentationUtils

---@param type System.Type
---@param out_url string
---@return boolean,string
function UnityEngine.Rendering.DocumentationUtils.TryGetHelpURL(type, out_url) end

---@class UnityEngine.Rendering.ProbeBrickIndex : System.Object
UnityEngine.Rendering.ProbeBrickIndex = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickIndex UnityEngine.Rendering.ProbeBrickIndex
CS.UnityEngine.Rendering.ProbeBrickIndex = UnityEngine.Rendering.ProbeBrickIndex

---@return number
function UnityEngine.Rendering.ProbeBrickIndex:GetRemainingChunkCount() end
---@param cell UnityEngine.Rendering.ProbeReferenceVolume.Cell
---@param bricks Unity.Collections.NativeArray
---@param allocations System.Collections.Generic.List
---@param allocationSize number
---@param poolWidth number
---@param poolHeight number
---@param cellInfo UnityEngine.Rendering.ProbeBrickIndex.CellIndexUpdateInfo
function UnityEngine.Rendering.ProbeBrickIndex:AddBricks(cell, bricks, allocations, allocationSize, poolWidth, poolHeight, cellInfo) end
---@param cellInfo UnityEngine.Rendering.ProbeReferenceVolume.CellInfo
function UnityEngine.Rendering.ProbeBrickIndex:RemoveBricks(cellInfo) end

---@class UnityEngine.Rendering.ProbeBrickPool : System.Object
UnityEngine.Rendering.ProbeBrickPool = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickPool UnityEngine.Rendering.ProbeBrickPool
CS.UnityEngine.Rendering.ProbeBrickPool = UnityEngine.Rendering.ProbeBrickPool

---@param width number
---@param height number
---@param depth number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param name string
---@param allocateRendertexture boolean
---@param ref_allocatedBytes number
---@return UnityEngine.Texture,number
function UnityEngine.Rendering.ProbeBrickPool.CreateDataTexture(width, height, depth, format, name, allocateRendertexture, ref_allocatedBytes) end
---@param numProbes number
---@param compressed boolean
---@param bands UnityEngine.Rendering.ProbeVolumeSHBands
---@param name string
---@param allocateRendertexture boolean
---@param allocateValidityData boolean
---@param out_allocatedBytes number
---@return UnityEngine.Rendering.ProbeBrickPool.DataLocation,number
function UnityEngine.Rendering.ProbeBrickPool.CreateDataLocation(numProbes, compressed, bands, name, allocateRendertexture, allocateValidityData, out_allocatedBytes) end
---@return number
function UnityEngine.Rendering.ProbeBrickPool:GetRemainingChunkCount() end

---@class UnityEngine.Rendering.ProbeBrickBlendingPool : System.Object
UnityEngine.Rendering.ProbeBrickBlendingPool = {}
---@alias CS.UnityEngine.Rendering.ProbeBrickBlendingPool UnityEngine.Rendering.ProbeBrickBlendingPool
CS.UnityEngine.Rendering.ProbeBrickBlendingPool = UnityEngine.Rendering.ProbeBrickBlendingPool


---@class UnityEngine.Rendering.ProbeCellIndices : System.Object
UnityEngine.Rendering.ProbeCellIndices = {}
---@alias CS.UnityEngine.Rendering.ProbeCellIndices UnityEngine.Rendering.ProbeCellIndices
CS.UnityEngine.Rendering.ProbeCellIndices = UnityEngine.Rendering.ProbeCellIndices


---@class UnityEngine.Rendering.ProbeVolumeSystemParameters : System.ValueType
---@field memoryBudget UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget
---@field blendingMemoryBudget UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget
---@field probeDebugMesh UnityEngine.Mesh
---@field probeDebugShader UnityEngine.Shader
---@field offsetDebugMesh UnityEngine.Mesh
---@field offsetDebugShader UnityEngine.Shader
---@field scenarioBlendingShader UnityEngine.ComputeShader
---@field sceneData UnityEngine.Rendering.ProbeVolumeSceneData
---@field shBands UnityEngine.Rendering.ProbeVolumeSHBands
---@field supportsRuntimeDebug boolean
---@field supportStreaming boolean
UnityEngine.Rendering.ProbeVolumeSystemParameters = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSystemParameters UnityEngine.Rendering.ProbeVolumeSystemParameters
CS.UnityEngine.Rendering.ProbeVolumeSystemParameters = UnityEngine.Rendering.ProbeVolumeSystemParameters


---@class UnityEngine.Rendering.ProbeVolumeShadingParameters : System.ValueType
---@field normalBias number
---@field viewBias number
---@field scaleBiasByMinDistanceBetweenProbes boolean
---@field samplingNoise number
---@field weight number
---@field leakReductionMode UnityEngine.Rendering.APVLeakReductionMode
---@field occlusionWeightContribution number
---@field minValidNormalWeight number
---@field frameIndexForNoise number
---@field reflNormalizationLowerClamp number
---@field reflNormalizationUpperClamp number
UnityEngine.Rendering.ProbeVolumeShadingParameters = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeShadingParameters UnityEngine.Rendering.ProbeVolumeShadingParameters
CS.UnityEngine.Rendering.ProbeVolumeShadingParameters = UnityEngine.Rendering.ProbeVolumeShadingParameters


---@class UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget
---@field MemoryBudgetLow UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget
---@field MemoryBudgetMedium UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget
---@field MemoryBudgetHigh UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget
UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget
CS.UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget = UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget


---@class UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget
---@field None UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget
---@field MemoryBudgetLow UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget
---@field MemoryBudgetMedium UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget
---@field MemoryBudgetHigh UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget
UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget
CS.UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget = UnityEngine.Rendering.ProbeVolumeBlendingTextureMemoryBudget


---@class UnityEngine.Rendering.ProbeVolumeSHBands
---@field SphericalHarmonicsL1 UnityEngine.Rendering.ProbeVolumeSHBands
---@field SphericalHarmonicsL2 UnityEngine.Rendering.ProbeVolumeSHBands
UnityEngine.Rendering.ProbeVolumeSHBands = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSHBands UnityEngine.Rendering.ProbeVolumeSHBands
CS.UnityEngine.Rendering.ProbeVolumeSHBands = UnityEngine.Rendering.ProbeVolumeSHBands


---@class UnityEngine.Rendering.ProbeReferenceVolume : System.Object
---@field k_DebugPanelName string
---@field retrieveExtraDataAction System.Action
---@field checksDuringBakeAction System.Action
---@field instance UnityEngine.Rendering.ProbeReferenceVolume
---@field isInitialized boolean
---@field numberOfCellsBlendedPerFrame number
---@field turnoverRate number
---@field shBands UnityEngine.Rendering.ProbeVolumeSHBands
---@field lightingScenario string
---@field scenarioBlendingFactor number
---@field memoryBudget UnityEngine.Rendering.ProbeVolumeTextureMemoryBudget
---@field probeVolumesWeight number
---@field subdivisionDebugColors UnityEngine.Color[]
UnityEngine.Rendering.ProbeReferenceVolume = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolume UnityEngine.Rendering.ProbeReferenceVolume
CS.UnityEngine.Rendering.ProbeReferenceVolume = UnityEngine.Rendering.ProbeReferenceVolume

---@param otherScenario string
---@param blendingFactor number
function UnityEngine.Rendering.ProbeReferenceVolume:BlendLightingScenario(otherScenario, blendingFactor) end
---@param ref_parameters UnityEngine.Rendering.ProbeVolumeSystemParameters
---@return ,UnityEngine.Rendering.ProbeVolumeSystemParameters
function UnityEngine.Rendering.ProbeReferenceVolume:Initialize(ref_parameters) end
---@param srpEnablesPV boolean
function UnityEngine.Rendering.ProbeReferenceVolume:SetEnableStateFromSRP(srpEnablesPV) end
function UnityEngine.Rendering.ProbeReferenceVolume:Cleanup() end
---@return number
function UnityEngine.Rendering.ProbeReferenceVolume:GetVideoMemoryCost() end
function UnityEngine.Rendering.ProbeReferenceVolume:PerformPendingOperations() end
---@return UnityEngine.Rendering.ProbeReferenceVolume.RuntimeResources
function UnityEngine.Rendering.ProbeReferenceVolume:GetRuntimeResources() end
---@return boolean
function UnityEngine.Rendering.ProbeReferenceVolume:DataHasBeenLoaded() end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param parameters UnityEngine.Rendering.ProbeVolumeShadingParameters
function UnityEngine.Rendering.ProbeReferenceVolume:UpdateConstantBuffer(cmd, parameters) end
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.ProbeReferenceVolume:RenderDebug(camera) end
---@param numberOfCells number
function UnityEngine.Rendering.ProbeReferenceVolume:SetNumberOfCellsLoadedPerFrame(numberOfCells) end
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param camera UnityEngine.Camera
function UnityEngine.Rendering.ProbeReferenceVolume:UpdateCellStreaming(cmd, camera) end

---@class UnityEngine.Rendering.DebugProbeShadingMode
---@field SH UnityEngine.Rendering.DebugProbeShadingMode
---@field SHL0 UnityEngine.Rendering.DebugProbeShadingMode
---@field SHL0L1 UnityEngine.Rendering.DebugProbeShadingMode
---@field Validity UnityEngine.Rendering.DebugProbeShadingMode
---@field ValidityOverDilationThreshold UnityEngine.Rendering.DebugProbeShadingMode
---@field InvalidatedByTouchupVolumes UnityEngine.Rendering.DebugProbeShadingMode
---@field Size UnityEngine.Rendering.DebugProbeShadingMode
UnityEngine.Rendering.DebugProbeShadingMode = {}
---@alias CS.UnityEngine.Rendering.DebugProbeShadingMode UnityEngine.Rendering.DebugProbeShadingMode
CS.UnityEngine.Rendering.DebugProbeShadingMode = UnityEngine.Rendering.DebugProbeShadingMode


---@class UnityEngine.Rendering.ProbeVolumeDebug : System.Object
---@field drawProbes boolean
---@field drawBricks boolean
---@field drawCells boolean
---@field realtimeSubdivision boolean
---@field subdivisionCellUpdatePerFrame number
---@field subdivisionDelayInSeconds number
---@field probeShading UnityEngine.Rendering.DebugProbeShadingMode
---@field probeSize number
---@field subdivisionViewCullingDistance number
---@field probeCullingDistance number
---@field maxSubdivToVisualize number
---@field minSubdivToVisualize number
---@field exposureCompensation number
---@field drawVirtualOffsetPush boolean
---@field offsetSize number
---@field freezeStreaming boolean
---@field otherStateIndex number
UnityEngine.Rendering.ProbeVolumeDebug = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeDebug UnityEngine.Rendering.ProbeVolumeDebug
CS.UnityEngine.Rendering.ProbeVolumeDebug = UnityEngine.Rendering.ProbeVolumeDebug

---@return UnityEngine.Rendering.ProbeVolumeDebug
function UnityEngine.Rendering.ProbeVolumeDebug.New() end
---@return System.Action
function UnityEngine.Rendering.ProbeVolumeDebug:GetReset() end

---@class UnityEngine.Rendering.AdditionalGIBakeRequestsManager : System.Object
---@field instance UnityEngine.Rendering.AdditionalGIBakeRequestsManager
UnityEngine.Rendering.AdditionalGIBakeRequestsManager = {}
---@alias CS.UnityEngine.Rendering.AdditionalGIBakeRequestsManager UnityEngine.Rendering.AdditionalGIBakeRequestsManager
CS.UnityEngine.Rendering.AdditionalGIBakeRequestsManager = UnityEngine.Rendering.AdditionalGIBakeRequestsManager

---@return UnityEngine.Rendering.AdditionalGIBakeRequestsManager
function UnityEngine.Rendering.AdditionalGIBakeRequestsManager.New() end
---@param capturePosition UnityEngine.Vector3
---@param probeInstanceID number
function UnityEngine.Rendering.AdditionalGIBakeRequestsManager:EnqueueRequest(capturePosition, probeInstanceID) end
---@param probeInstanceID number
function UnityEngine.Rendering.AdditionalGIBakeRequestsManager:DequeueRequest(probeInstanceID) end
---@param probeInstanceID number
---@param out_sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param out_pos UnityEngine.Vector3
---@return boolean,UnityEngine.Rendering.SphericalHarmonicsL2,UnityEngine.Vector3
function UnityEngine.Rendering.AdditionalGIBakeRequestsManager:RetrieveProbeSH(probeInstanceID, out_sh, out_pos) end
---@param probeInstanceID number
---@param newPosition UnityEngine.Vector3
function UnityEngine.Rendering.AdditionalGIBakeRequestsManager:UpdatePositionForRequest(probeInstanceID, newPosition) end

---@class UnityEngine.Rendering.ProbeReferenceVolumeProfile : UnityEngine.ScriptableObject
---@field simplificationLevels number
---@field minDistanceBetweenProbes number
---@field renderersLayerMask UnityEngine.LayerMask
---@field minRendererVolumeSize number
---@field cellSizeInBricks number
---@field maxSubdivision number
---@field minBrickSize number
---@field cellSizeInMeters number
UnityEngine.Rendering.ProbeReferenceVolumeProfile = {}
---@alias CS.UnityEngine.Rendering.ProbeReferenceVolumeProfile UnityEngine.Rendering.ProbeReferenceVolumeProfile
CS.UnityEngine.Rendering.ProbeReferenceVolumeProfile = UnityEngine.Rendering.ProbeReferenceVolumeProfile

---@return UnityEngine.Rendering.ProbeReferenceVolumeProfile
function UnityEngine.Rendering.ProbeReferenceVolumeProfile.New() end
---@param otherProfile UnityEngine.Rendering.ProbeReferenceVolumeProfile
---@return boolean
function UnityEngine.Rendering.ProbeReferenceVolumeProfile:IsEquivalent(otherProfile) end

---@class UnityEngine.Rendering.ProbeTouchupVolume : UnityEngine.MonoBehaviour
---@field intensityScale number
---@field invalidateProbes boolean
---@field overrideDilationThreshold boolean
---@field overriddenDilationThreshold number
---@field size UnityEngine.Vector3
UnityEngine.Rendering.ProbeTouchupVolume = {}
---@alias CS.UnityEngine.Rendering.ProbeTouchupVolume UnityEngine.Rendering.ProbeTouchupVolume
CS.UnityEngine.Rendering.ProbeTouchupVolume = UnityEngine.Rendering.ProbeTouchupVolume

---@return UnityEngine.Vector3
function UnityEngine.Rendering.ProbeTouchupVolume:GetExtents() end

---@class UnityEngine.Rendering.ProbeVolume : UnityEngine.MonoBehaviour
---@field mode UnityEngine.Rendering.ProbeVolume.Mode
---@field size UnityEngine.Vector3
---@field overrideRendererFilters boolean
---@field minRendererVolumeSize number
---@field objectLayerMask UnityEngine.LayerMask
---@field lowestSubdivLevelOverride number
---@field highestSubdivLevelOverride number
---@field overridesSubdivLevels boolean
---@field fillEmptySpaces boolean
UnityEngine.Rendering.ProbeVolume = {}
---@alias CS.UnityEngine.Rendering.ProbeVolume UnityEngine.Rendering.ProbeVolume
CS.UnityEngine.Rendering.ProbeVolume = UnityEngine.Rendering.ProbeVolume

---@return UnityEngine.Vector3
function UnityEngine.Rendering.ProbeVolume:GetExtents() end
---@return number
function UnityEngine.Rendering.ProbeVolume:GetHashCode() end

---@class UnityEngine.Rendering.ProbeVolumeAsset : UnityEngine.ScriptableObject
---@field Version number
UnityEngine.Rendering.ProbeVolumeAsset = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeAsset UnityEngine.Rendering.ProbeVolumeAsset
CS.UnityEngine.Rendering.ProbeVolumeAsset = UnityEngine.Rendering.ProbeVolumeAsset

---@return UnityEngine.Rendering.ProbeVolumeAsset
function UnityEngine.Rendering.ProbeVolumeAsset.New() end
---@param scene UnityEngine.SceneManagement.Scene
---@return string
function UnityEngine.Rendering.ProbeVolumeAsset.GetPath(scene) end
---@param scenePath string
---@param sceneName string
---@return string
function UnityEngine.Rendering.ProbeVolumeAsset.GetDirectory(scenePath, sceneName) end
---@param data UnityEngine.Rendering.ProbeVolumePerSceneData
---@return UnityEngine.Rendering.ProbeVolumeAsset
function UnityEngine.Rendering.ProbeVolumeAsset.CreateAsset(data) end
---@return string
function UnityEngine.Rendering.ProbeVolumeAsset:GetSerializedFullPath() end
function UnityEngine.Rendering.ProbeVolumeAsset:OnEnable() end

---@class UnityEngine.Rendering.ProbeDilationSettings : System.ValueType
---@field enableDilation boolean
---@field dilationDistance number
---@field dilationValidityThreshold number
---@field dilationIterations number
---@field squaredDistWeighting boolean
UnityEngine.Rendering.ProbeDilationSettings = {}
---@alias CS.UnityEngine.Rendering.ProbeDilationSettings UnityEngine.Rendering.ProbeDilationSettings
CS.UnityEngine.Rendering.ProbeDilationSettings = UnityEngine.Rendering.ProbeDilationSettings


---@class UnityEngine.Rendering.VirtualOffsetSettings : System.ValueType
---@field useVirtualOffset boolean
---@field outOfGeoOffset number
---@field searchMultiplier number
---@field rayOriginBias number
---@field maxHitsPerRay number
---@field collisionMask UnityEngine.LayerMask
UnityEngine.Rendering.VirtualOffsetSettings = {}
---@alias CS.UnityEngine.Rendering.VirtualOffsetSettings UnityEngine.Rendering.VirtualOffsetSettings
CS.UnityEngine.Rendering.VirtualOffsetSettings = UnityEngine.Rendering.VirtualOffsetSettings


---@class UnityEngine.Rendering.ProbeVolumeBakingProcessSettings : System.ValueType
---@field dilationSettings UnityEngine.Rendering.ProbeDilationSettings
---@field virtualOffsetSettings UnityEngine.Rendering.VirtualOffsetSettings
UnityEngine.Rendering.ProbeVolumeBakingProcessSettings = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettings UnityEngine.Rendering.ProbeVolumeBakingProcessSettings
CS.UnityEngine.Rendering.ProbeVolumeBakingProcessSettings = UnityEngine.Rendering.ProbeVolumeBakingProcessSettings


---@class UnityEngine.Rendering.GIContributors : System.ValueType
---@field renderers System.Collections.Generic.List
---@field terrains System.Collections.Generic.List
---@field Count number
UnityEngine.Rendering.GIContributors = {}
---@alias CS.UnityEngine.Rendering.GIContributors UnityEngine.Rendering.GIContributors
CS.UnityEngine.Rendering.GIContributors = UnityEngine.Rendering.GIContributors

---@param filter UnityEngine.Rendering.GIContributors.ContributorFilter
---@param scene System.Nullable
---@return UnityEngine.Rendering.GIContributors
function UnityEngine.Rendering.GIContributors.Find(filter, scene) end
---@param profile UnityEngine.Rendering.ProbeReferenceVolumeProfile
---@param cellBounds UnityEngine.Bounds
---@param probeVolumes System.Collections.Generic.List
---@return UnityEngine.Rendering.GIContributors
function UnityEngine.Rendering.GIContributors:Filter(profile, cellBounds, probeVolumes) end
---@param layerMask UnityEngine.LayerMask
---@return UnityEngine.Rendering.GIContributors
function UnityEngine.Rendering.GIContributors:FilterLayerMaskOnly(layerMask) end

---@class UnityEngine.Rendering.ProbeVolumePerSceneData : UnityEngine.MonoBehaviour
UnityEngine.Rendering.ProbeVolumePerSceneData = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumePerSceneData UnityEngine.Rendering.ProbeVolumePerSceneData
CS.UnityEngine.Rendering.ProbeVolumePerSceneData = UnityEngine.Rendering.ProbeVolumePerSceneData

function UnityEngine.Rendering.ProbeVolumePerSceneData:StripSupportData() end

---@class UnityEngine.Rendering.ProbeVolumePositioning : System.Object
UnityEngine.Rendering.ProbeVolumePositioning = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumePositioning UnityEngine.Rendering.ProbeVolumePositioning
CS.UnityEngine.Rendering.ProbeVolumePositioning = UnityEngine.Rendering.ProbeVolumePositioning

---@param ref_a UnityEngine.Rendering.ProbeReferenceVolume.Volume
---@param ref_b UnityEngine.Rendering.ProbeReferenceVolume.Volume
---@return boolean,UnityEngine.Rendering.ProbeReferenceVolume.Volume,UnityEngine.Rendering.ProbeReferenceVolume.Volume
function UnityEngine.Rendering.ProbeVolumePositioning.OBBIntersect(ref_a, ref_b) end
---@param ref_a UnityEngine.Rendering.ProbeReferenceVolume.Volume
---@param ref_b UnityEngine.Bounds
---@param ref_aAABB UnityEngine.Bounds
---@return boolean,UnityEngine.Rendering.ProbeReferenceVolume.Volume,UnityEngine.Bounds,UnityEngine.Bounds
function UnityEngine.Rendering.ProbeVolumePositioning.OBBAABBIntersect(ref_a, ref_b, ref_aAABB) end

---@class UnityEngine.Rendering.ProbeVolumeSceneData : System.Object
---@field sceneBounds System.Collections.Generic.Dictionary
UnityEngine.Rendering.ProbeVolumeSceneData = {}
---@alias CS.UnityEngine.Rendering.ProbeVolumeSceneData UnityEngine.Rendering.ProbeVolumeSceneData
CS.UnityEngine.Rendering.ProbeVolumeSceneData = UnityEngine.Rendering.ProbeVolumeSceneData

---@param parentAsset UnityEngine.Object
---@param parentSceneDataPropertyName string
---@return UnityEngine.Rendering.ProbeVolumeSceneData
function UnityEngine.Rendering.ProbeVolumeSceneData.New(parentAsset, parentSceneDataPropertyName) end
---@param parent UnityEngine.Object
---@param parentSceneDataPropertyName string
function UnityEngine.Rendering.ProbeVolumeSceneData:SetParentObject(parent, parentSceneDataPropertyName) end
function UnityEngine.Rendering.ProbeVolumeSceneData:OnAfterDeserialize() end
function UnityEngine.Rendering.ProbeVolumeSceneData:OnBeforeSerialize() end

---@class UnityEngine.Rendering.APVConstantBufferRegister
---@field GlobalRegister UnityEngine.Rendering.APVConstantBufferRegister
UnityEngine.Rendering.APVConstantBufferRegister = {}
---@alias CS.UnityEngine.Rendering.APVConstantBufferRegister UnityEngine.Rendering.APVConstantBufferRegister
CS.UnityEngine.Rendering.APVConstantBufferRegister = UnityEngine.Rendering.APVConstantBufferRegister


---@class UnityEngine.Rendering.APVLeakReductionMode
---@field None UnityEngine.Rendering.APVLeakReductionMode
---@field ValidityAndNormalBased UnityEngine.Rendering.APVLeakReductionMode
UnityEngine.Rendering.APVLeakReductionMode = {}
---@alias CS.UnityEngine.Rendering.APVLeakReductionMode UnityEngine.Rendering.APVLeakReductionMode
CS.UnityEngine.Rendering.APVLeakReductionMode = UnityEngine.Rendering.APVLeakReductionMode


---@class UnityEngine.Rendering.ShaderVariablesProbeVolumes : System.ValueType
---@field _PoolDim_CellInMeters UnityEngine.Vector4
---@field _MinCellPos_Noise UnityEngine.Vector4
---@field _IndicesDim_IndexChunkSize UnityEngine.Vector4
---@field _Biases_CellInMinBrick_MinBrickSize UnityEngine.Vector4
---@field _LeakReductionParams UnityEngine.Vector4
---@field _Weight_MinLoadedCell UnityEngine.Vector4
---@field _MaxLoadedCell_FrameIndex UnityEngine.Vector4
---@field _NormalizationClamp_Padding12 UnityEngine.Vector4
UnityEngine.Rendering.ShaderVariablesProbeVolumes = {}
---@alias CS.UnityEngine.Rendering.ShaderVariablesProbeVolumes UnityEngine.Rendering.ShaderVariablesProbeVolumes
CS.UnityEngine.Rendering.ShaderVariablesProbeVolumes = UnityEngine.Rendering.ShaderVariablesProbeVolumes


---@class UnityEngine.Rendering.SphericalHarmonicsL1 : System.ValueType
---@field zero UnityEngine.Rendering.SphericalHarmonicsL1
---@field shAr UnityEngine.Vector4
---@field shAg UnityEngine.Vector4
---@field shAb UnityEngine.Vector4
UnityEngine.Rendering.SphericalHarmonicsL1 = {}
---@alias CS.UnityEngine.Rendering.SphericalHarmonicsL1 UnityEngine.Rendering.SphericalHarmonicsL1
CS.UnityEngine.Rendering.SphericalHarmonicsL1 = UnityEngine.Rendering.SphericalHarmonicsL1

---@param other System.Object
---@return boolean
function UnityEngine.Rendering.SphericalHarmonicsL1:Equals(other) end
---@return number
function UnityEngine.Rendering.SphericalHarmonicsL1:GetHashCode() end

---@class UnityEngine.Rendering.SphericalHarmonicsL2Utils : System.Object
UnityEngine.Rendering.SphericalHarmonicsL2Utils = {}
---@alias CS.UnityEngine.Rendering.SphericalHarmonicsL2Utils UnityEngine.Rendering.SphericalHarmonicsL2Utils
CS.UnityEngine.Rendering.SphericalHarmonicsL2Utils = UnityEngine.Rendering.SphericalHarmonicsL2Utils

---@return UnityEngine.Rendering.SphericalHarmonicsL2Utils
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.New() end
---@param sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param out_L1_R UnityEngine.Vector3
---@param out_L1_G UnityEngine.Vector3
---@param out_L1_B UnityEngine.Vector3
---@return ,UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.GetL1(sh, out_L1_R, out_L1_G, out_L1_B) end
---@param sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param out_L2_0 UnityEngine.Vector3
---@param out_L2_1 UnityEngine.Vector3
---@param out_L2_2 UnityEngine.Vector3
---@param out_L2_3 UnityEngine.Vector3
---@param out_L2_4 UnityEngine.Vector3
---@return ,UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.GetL2(sh, out_L2_0, out_L2_1, out_L2_2, out_L2_3, out_L2_4) end
---@param ref_sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param L0 UnityEngine.Vector3
---@return ,UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.SetL0(ref_sh, L0) end
---@param ref_sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param L1_R UnityEngine.Vector3
---@return ,UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.SetL1R(ref_sh, L1_R) end
---@param ref_sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param L1_G UnityEngine.Vector3
---@return ,UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.SetL1G(ref_sh, L1_G) end
---@param ref_sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param L1_B UnityEngine.Vector3
---@return ,UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.SetL1B(ref_sh, L1_B) end
---@param ref_sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param L1_R UnityEngine.Vector3
---@param L1_G UnityEngine.Vector3
---@param L1_B UnityEngine.Vector3
---@return ,UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.SetL1(ref_sh, L1_R, L1_G, L1_B) end
---@param ref_sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param index number
---@param coefficient UnityEngine.Vector3
---@return ,UnityEngine.Rendering.SphericalHarmonicsL2
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.SetCoefficient(ref_sh, index, coefficient) end
---@param sh UnityEngine.Rendering.SphericalHarmonicsL2
---@param index number
---@return UnityEngine.Vector3
function UnityEngine.Rendering.SphericalHarmonicsL2Utils.GetCoefficient(sh, index) end

---@class UnityEngine.Rendering.HDRRangeReduction
---@field None UnityEngine.Rendering.HDRRangeReduction
---@field Reinhard UnityEngine.Rendering.HDRRangeReduction
---@field BT2390 UnityEngine.Rendering.HDRRangeReduction
---@field ACES1000Nits UnityEngine.Rendering.HDRRangeReduction
---@field ACES2000Nits UnityEngine.Rendering.HDRRangeReduction
---@field ACES4000Nits UnityEngine.Rendering.HDRRangeReduction
UnityEngine.Rendering.HDRRangeReduction = {}
---@alias CS.UnityEngine.Rendering.HDRRangeReduction UnityEngine.Rendering.HDRRangeReduction
CS.UnityEngine.Rendering.HDRRangeReduction = UnityEngine.Rendering.HDRRangeReduction


---@class UnityEngine.Rendering.HDRColorspace
---@field Rec709 UnityEngine.Rendering.HDRColorspace
---@field Rec2020 UnityEngine.Rendering.HDRColorspace
---@field P3D65 UnityEngine.Rendering.HDRColorspace
UnityEngine.Rendering.HDRColorspace = {}
---@alias CS.UnityEngine.Rendering.HDRColorspace UnityEngine.Rendering.HDRColorspace
CS.UnityEngine.Rendering.HDRColorspace = UnityEngine.Rendering.HDRColorspace


---@class UnityEngine.Rendering.HDREncoding
---@field Linear UnityEngine.Rendering.HDREncoding
---@field PQ UnityEngine.Rendering.HDREncoding
---@field Gamma22 UnityEngine.Rendering.HDREncoding
---@field sRGB UnityEngine.Rendering.HDREncoding
UnityEngine.Rendering.HDREncoding = {}
---@alias CS.UnityEngine.Rendering.HDREncoding UnityEngine.Rendering.HDREncoding
CS.UnityEngine.Rendering.HDREncoding = UnityEngine.Rendering.HDREncoding


---@class UnityEngine.Rendering.LensFlareCommonSRP : System.Object
---@field maxLensFlareWithOcclusion number
---@field maxLensFlareWithOcclusionTemporalSample number
---@field mergeNeeded number
---@field occlusionRT UnityEngine.Rendering.RTHandle
---@field Instance UnityEngine.Rendering.LensFlareCommonSRP
UnityEngine.Rendering.LensFlareCommonSRP = {}
---@alias CS.UnityEngine.Rendering.LensFlareCommonSRP UnityEngine.Rendering.LensFlareCommonSRP
CS.UnityEngine.Rendering.LensFlareCommonSRP = UnityEngine.Rendering.LensFlareCommonSRP

---@return boolean
function UnityEngine.Rendering.LensFlareCommonSRP.IsOcclusionRTCompatible() end
function UnityEngine.Rendering.LensFlareCommonSRP.Initialize() end
function UnityEngine.Rendering.LensFlareCommonSRP.Dispose() end
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationPointLight() end
---@param forward UnityEngine.Vector3
---@param wo UnityEngine.Vector3
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationDirLight(forward, wo) end
---@param forward UnityEngine.Vector3
---@param wo UnityEngine.Vector3
---@param spotAngle number
---@param innerSpotPercent01 number
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationSpotConeLight(forward, wo, spotAngle, innerSpotPercent01) end
---@param forward UnityEngine.Vector3
---@param wo UnityEngine.Vector3
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationSpotBoxLight(forward, wo) end
---@param forward UnityEngine.Vector3
---@param wo UnityEngine.Vector3
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationSpotPyramidLight(forward, wo) end
---@param lightPositionWS UnityEngine.Vector3
---@param lightSide UnityEngine.Vector3
---@param lightWidth number
---@param cam UnityEngine.Camera
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationAreaTubeLight(lightPositionWS, lightSide, lightWidth, cam) end
---@param forward UnityEngine.Vector3
---@param wo UnityEngine.Vector3
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationAreaRectangleLight(forward, wo) end
---@param forward UnityEngine.Vector3
---@param wo UnityEngine.Vector3
---@return number
function UnityEngine.Rendering.LensFlareCommonSRP.ShapeAttenuationAreaDiscLight(forward, wo) end
---@param screenPos UnityEngine.Vector2
---@param translationScale UnityEngine.Vector2
---@param rayOff0 UnityEngine.Vector2
---@param vLocalScreenRatio UnityEngine.Vector2
---@param angleDeg number
---@param position number
---@param angularOffset number
---@param positionOffset UnityEngine.Vector2
---@param autoRotate boolean
---@return UnityEngine.Vector4
function UnityEngine.Rendering.LensFlareCommonSRP.GetFlareData0(screenPos, translationScale, rayOff0, vLocalScreenRatio, angleDeg, position, angularOffset, positionOffset, autoRotate) end
---@param cam UnityEngine.Camera
---@return boolean
function UnityEngine.Rendering.LensFlareCommonSRP.IsCloudLayerOpacityNeeded(cam) end
---@param lensFlareShader UnityEngine.Material
---@param cam UnityEngine.Camera
---@param actualWidth number
---@param actualHeight number
---@param usePanini boolean
---@param paniniDistance number
---@param paniniCropToFit number
---@param isCameraRelative boolean
---@param cameraPositionWS UnityEngine.Vector3
---@param viewProjMatrix UnityEngine.Matrix4x4
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param taaEnabled boolean
---@param hasCloudLayer boolean
---@param cloudOpacityTexture UnityEngine.Texture
---@param sunOcclusionTexture UnityEngine.Texture
---@param _FlareOcclusionTex number
---@param _FlareCloudOpacity number
---@param _FlareOcclusionIndex number
---@param _FlareTex number
---@param _FlareColorValue number
---@param _FlareSunOcclusionTex number
---@param _FlareData0 number
---@param _FlareData1 number
---@param _FlareData2 number
---@param _FlareData3 number
---@param _FlareData4 number
function UnityEngine.Rendering.LensFlareCommonSRP.ComputeOcclusion(lensFlareShader, cam, actualWidth, actualHeight, usePanini, paniniDistance, paniniCropToFit, isCameraRelative, cameraPositionWS, viewProjMatrix, cmd, taaEnabled, hasCloudLayer, cloudOpacityTexture, sunOcclusionTexture, _FlareOcclusionTex, _FlareCloudOpacity, _FlareOcclusionIndex, _FlareTex, _FlareColorValue, _FlareSunOcclusionTex, _FlareData0, _FlareData1, _FlareData2, _FlareData3, _FlareData4) end
---@param lensFlareShader UnityEngine.Material
---@param cam UnityEngine.Camera
---@param actualWidth number
---@param actualHeight number
---@param usePanini boolean
---@param paniniDistance number
---@param paniniCropToFit number
---@param isCameraRelative boolean
---@param cameraPositionWS UnityEngine.Vector3
---@param viewProjMatrix UnityEngine.Matrix4x4
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param taaEnabled boolean
---@param hasCloudLayer boolean
---@param cloudOpacityTexture UnityEngine.Texture
---@param sunOcclusionTexture UnityEngine.Texture
---@param colorBuffer UnityEngine.Rendering.RenderTargetIdentifier
---@param GetLensFlareLightAttenuation System.Func
---@param _FlareOcclusionRemapTex number
---@param _FlareOcclusionTex number
---@param _FlareOcclusionIndex number
---@param _FlareCloudOpacity number
---@param _FlareSunOcclusionTex number
---@param _FlareTex number
---@param _FlareColorValue number
---@param _FlareData0 number
---@param _FlareData1 number
---@param _FlareData2 number
---@param _FlareData3 number
---@param _FlareData4 number
---@param debugView boolean
function UnityEngine.Rendering.LensFlareCommonSRP.DoLensFlareDataDrivenCommon(lensFlareShader, cam, actualWidth, actualHeight, usePanini, paniniDistance, paniniCropToFit, isCameraRelative, cameraPositionWS, viewProjMatrix, cmd, taaEnabled, hasCloudLayer, cloudOpacityTexture, sunOcclusionTexture, colorBuffer, GetLensFlareLightAttenuation, _FlareOcclusionRemapTex, _FlareOcclusionTex, _FlareOcclusionIndex, _FlareCloudOpacity, _FlareSunOcclusionTex, _FlareTex, _FlareColorValue, _FlareData0, _FlareData1, _FlareData2, _FlareData3, _FlareData4, debugView) end
---@return boolean
function UnityEngine.Rendering.LensFlareCommonSRP:IsEmpty() end
---@param newData UnityEngine.Rendering.LensFlareComponentSRP
function UnityEngine.Rendering.LensFlareCommonSRP:AddData(newData) end
---@param data UnityEngine.Rendering.LensFlareComponentSRP
function UnityEngine.Rendering.LensFlareCommonSRP:RemoveData(data) end

---@class UnityEngine.Rendering.LensFlareComponentSRP : UnityEngine.MonoBehaviour
---@field intensity number
---@field maxAttenuationDistance number
---@field maxAttenuationScale number
---@field distanceAttenuationCurve UnityEngine.AnimationCurve
---@field scaleByDistanceCurve UnityEngine.AnimationCurve
---@field attenuationByLightShape boolean
---@field radialScreenAttenuationCurve UnityEngine.AnimationCurve
---@field useOcclusion boolean
---@field occlusionRadius number
---@field useBackgroundCloudOcclusion boolean
---@field sampleCount number
---@field occlusionOffset number
---@field scale number
---@field allowOffScreen boolean
---@field volumetricCloudOcclusion boolean
---@field occlusionRemapCurve UnityEngine.Rendering.TextureCurve
---@field lensFlareData UnityEngine.Rendering.LensFlareDataSRP
UnityEngine.Rendering.LensFlareComponentSRP = {}
---@alias CS.UnityEngine.Rendering.LensFlareComponentSRP UnityEngine.Rendering.LensFlareComponentSRP
CS.UnityEngine.Rendering.LensFlareComponentSRP = UnityEngine.Rendering.LensFlareComponentSRP

---@param mainCam UnityEngine.Camera
---@return number
function UnityEngine.Rendering.LensFlareComponentSRP:celestialProjectedOcclusionRadius(mainCam) end

---@class UnityEngine.Rendering.SRPLensFlareBlendMode
---@field Additive UnityEngine.Rendering.SRPLensFlareBlendMode
---@field Screen UnityEngine.Rendering.SRPLensFlareBlendMode
---@field Premultiply UnityEngine.Rendering.SRPLensFlareBlendMode
---@field Lerp UnityEngine.Rendering.SRPLensFlareBlendMode
UnityEngine.Rendering.SRPLensFlareBlendMode = {}
---@alias CS.UnityEngine.Rendering.SRPLensFlareBlendMode UnityEngine.Rendering.SRPLensFlareBlendMode
CS.UnityEngine.Rendering.SRPLensFlareBlendMode = UnityEngine.Rendering.SRPLensFlareBlendMode


---@class UnityEngine.Rendering.SRPLensFlareDistribution
---@field Uniform UnityEngine.Rendering.SRPLensFlareDistribution
---@field Curve UnityEngine.Rendering.SRPLensFlareDistribution
---@field Random UnityEngine.Rendering.SRPLensFlareDistribution
UnityEngine.Rendering.SRPLensFlareDistribution = {}
---@alias CS.UnityEngine.Rendering.SRPLensFlareDistribution UnityEngine.Rendering.SRPLensFlareDistribution
CS.UnityEngine.Rendering.SRPLensFlareDistribution = UnityEngine.Rendering.SRPLensFlareDistribution


---@class UnityEngine.Rendering.SRPLensFlareType
---@field Image UnityEngine.Rendering.SRPLensFlareType
---@field Circle UnityEngine.Rendering.SRPLensFlareType
---@field Polygon UnityEngine.Rendering.SRPLensFlareType
UnityEngine.Rendering.SRPLensFlareType = {}
---@alias CS.UnityEngine.Rendering.SRPLensFlareType UnityEngine.Rendering.SRPLensFlareType
CS.UnityEngine.Rendering.SRPLensFlareType = UnityEngine.Rendering.SRPLensFlareType


---@class UnityEngine.Rendering.LensFlareDataElementSRP : System.Object
---@field visible boolean
---@field position number
---@field positionOffset UnityEngine.Vector2
---@field angularOffset number
---@field translationScale UnityEngine.Vector2
---@field lensFlareTexture UnityEngine.Texture
---@field uniformScale number
---@field sizeXY UnityEngine.Vector2
---@field allowMultipleElement boolean
---@field preserveAspectRatio boolean
---@field rotation number
---@field tint UnityEngine.Color
---@field blendMode UnityEngine.Rendering.SRPLensFlareBlendMode
---@field autoRotate boolean
---@field flareType UnityEngine.Rendering.SRPLensFlareType
---@field modulateByLightColor boolean
---@field distribution UnityEngine.Rendering.SRPLensFlareDistribution
---@field lengthSpread number
---@field positionCurve UnityEngine.AnimationCurve
---@field scaleCurve UnityEngine.AnimationCurve
---@field seed number
---@field colorGradient UnityEngine.Gradient
---@field positionVariation UnityEngine.Vector2
---@field scaleVariation number
---@field rotationVariation number
---@field enableRadialDistortion boolean
---@field targetSizeDistortion UnityEngine.Vector2
---@field distortionCurve UnityEngine.AnimationCurve
---@field distortionRelativeToCenter boolean
---@field inverseSDF boolean
---@field uniformAngle number
---@field uniformAngleCurve UnityEngine.AnimationCurve
---@field localIntensity number
---@field count number
---@field intensityVariation number
---@field fallOff number
---@field edgeOffset number
---@field sideCount number
---@field sdfRoundness number
UnityEngine.Rendering.LensFlareDataElementSRP = {}
---@alias CS.UnityEngine.Rendering.LensFlareDataElementSRP UnityEngine.Rendering.LensFlareDataElementSRP
CS.UnityEngine.Rendering.LensFlareDataElementSRP = UnityEngine.Rendering.LensFlareDataElementSRP

---@return UnityEngine.Rendering.LensFlareDataElementSRP
function UnityEngine.Rendering.LensFlareDataElementSRP.New() end

---@class UnityEngine.Rendering.LensFlareDataSRP : UnityEngine.ScriptableObject
---@field elements UnityEngine.Rendering.LensFlareDataElementSRP[]
UnityEngine.Rendering.LensFlareDataSRP = {}
---@alias CS.UnityEngine.Rendering.LensFlareDataSRP UnityEngine.Rendering.LensFlareDataSRP
CS.UnityEngine.Rendering.LensFlareDataSRP = UnityEngine.Rendering.LensFlareDataSRP

---@return UnityEngine.Rendering.LensFlareDataSRP
function UnityEngine.Rendering.LensFlareDataSRP.New() end

---@class UnityEngine.Rendering.ICloudBackground
UnityEngine.Rendering.ICloudBackground = {}
---@alias CS.UnityEngine.Rendering.ICloudBackground UnityEngine.Rendering.ICloudBackground
CS.UnityEngine.Rendering.ICloudBackground = UnityEngine.Rendering.ICloudBackground
