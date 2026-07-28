---@meta

---@class UnityEngine.UIElements.PointerDeviceState.LocationFlag
---@field None UnityEngine.UIElements.PointerDeviceState.LocationFlag
---@field OutsidePanel UnityEngine.UIElements.PointerDeviceState.LocationFlag
UnityEngine.UIElements.PointerDeviceState.LocationFlag = {}
---@alias CS.UnityEngine.UIElements.PointerDeviceState.LocationFlag UnityEngine.UIElements.PointerDeviceState.LocationFlag
CS.UnityEngine.UIElements.PointerDeviceState.LocationFlag = UnityEngine.UIElements.PointerDeviceState.LocationFlag


---@class UnityEngine.UIElements.PointerDeviceState.PointerLocation : System.ValueType
UnityEngine.UIElements.PointerDeviceState.PointerLocation = {}
---@alias CS.UnityEngine.UIElements.PointerDeviceState.PointerLocation UnityEngine.UIElements.PointerDeviceState.PointerLocation
CS.UnityEngine.UIElements.PointerDeviceState.PointerLocation = UnityEngine.UIElements.PointerDeviceState.PointerLocation


---@class UnityEngine.UIElements.PointerEventDispatchingStrategy : System.Object
UnityEngine.UIElements.PointerEventDispatchingStrategy = {}
---@alias CS.UnityEngine.UIElements.PointerEventDispatchingStrategy UnityEngine.UIElements.PointerEventDispatchingStrategy
CS.UnityEngine.UIElements.PointerEventDispatchingStrategy = UnityEngine.UIElements.PointerEventDispatchingStrategy

---@return UnityEngine.UIElements.PointerEventDispatchingStrategy
function UnityEngine.UIElements.PointerEventDispatchingStrategy.New() end
---@param evt UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.PointerEventDispatchingStrategy:CanDispatchEvent(evt) end
---@param evt UnityEngine.UIElements.EventBase
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.PointerEventDispatchingStrategy:DispatchEvent(evt, panel) end

---@class UnityEngine.UIElements.PointerType : System.Object
---@field mouse string
---@field touch string
---@field pen string
---@field unknown string
UnityEngine.UIElements.PointerType = {}
---@alias CS.UnityEngine.UIElements.PointerType UnityEngine.UIElements.PointerType
CS.UnityEngine.UIElements.PointerType = UnityEngine.UIElements.PointerType


---@class UnityEngine.UIElements.PointerId : System.Object
---@field maxPointers number
---@field invalidPointerId number
---@field mousePointerId number
---@field touchPointerIdBase number
---@field touchPointerCount number
---@field penPointerIdBase number
---@field penPointerCount number
UnityEngine.UIElements.PointerId = {}
---@alias CS.UnityEngine.UIElements.PointerId UnityEngine.UIElements.PointerId
CS.UnityEngine.UIElements.PointerId = UnityEngine.UIElements.PointerId


---@class UnityEngine.UIElements.IPointerEvent
---@field pointerId number
---@field pointerType string
---@field isPrimary boolean
---@field button number
---@field pressedButtons number
---@field position UnityEngine.Vector3
---@field localPosition UnityEngine.Vector3
---@field deltaPosition UnityEngine.Vector3
---@field deltaTime number
---@field clickCount number
---@field pressure number
---@field tangentialPressure number
---@field altitudeAngle number
---@field azimuthAngle number
---@field twist number
---@field tilt UnityEngine.Vector2
---@field penStatus UnityEngine.PenStatus
---@field radius UnityEngine.Vector2
---@field radiusVariance UnityEngine.Vector2
---@field modifiers UnityEngine.EventModifiers
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
UnityEngine.UIElements.IPointerEvent = {}
---@alias CS.UnityEngine.UIElements.IPointerEvent UnityEngine.UIElements.IPointerEvent
CS.UnityEngine.UIElements.IPointerEvent = UnityEngine.UIElements.IPointerEvent


---@class UnityEngine.UIElements.IPointerEventInternal
---@field triggeredByOS boolean
---@field recomputeTopElementUnderPointer boolean
UnityEngine.UIElements.IPointerEventInternal = {}
---@alias CS.UnityEngine.UIElements.IPointerEventInternal UnityEngine.UIElements.IPointerEventInternal
CS.UnityEngine.UIElements.IPointerEventInternal = UnityEngine.UIElements.IPointerEventInternal


---@class UnityEngine.UIElements.PointerEventHelper : System.Object
UnityEngine.UIElements.PointerEventHelper = {}
---@alias CS.UnityEngine.UIElements.PointerEventHelper UnityEngine.UIElements.PointerEventHelper
CS.UnityEngine.UIElements.PointerEventHelper = UnityEngine.UIElements.PointerEventHelper

---@param eventType UnityEngine.EventType
---@param mousePosition UnityEngine.Vector3
---@param delta UnityEngine.Vector2
---@param button number
---@param clickCount number
---@param modifiers UnityEngine.EventModifiers
---@return UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.PointerEventHelper.GetPooled(eventType, mousePosition, delta, button, clickCount, modifiers) end

---@class UnityEngine.UIElements.PointerEventBase : UnityEngine.UIElements.EventBase[T]
---@field pointerId number
---@field pointerType string
---@field isPrimary boolean
---@field button number
---@field pressedButtons number
---@field position UnityEngine.Vector3
---@field localPosition UnityEngine.Vector3
---@field deltaPosition UnityEngine.Vector3
---@field deltaTime number
---@field clickCount number
---@field pressure number
---@field tangentialPressure number
---@field altitudeAngle number
---@field azimuthAngle number
---@field twist number
---@field tilt UnityEngine.Vector2
---@field penStatus UnityEngine.PenStatus
---@field radius UnityEngine.Vector2
---@field radiusVariance UnityEngine.Vector2
---@field modifiers UnityEngine.EventModifiers
---@field shiftKey boolean
---@field ctrlKey boolean
---@field commandKey boolean
---@field altKey boolean
---@field actionKey boolean
---@field currentTarget UnityEngine.UIElements.IEventHandler
UnityEngine.UIElements.PointerEventBase = {}
---@alias CS.UnityEngine.UIElements.PointerEventBase UnityEngine.UIElements.PointerEventBase
CS.UnityEngine.UIElements.PointerEventBase = UnityEngine.UIElements.PointerEventBase

---@overload fun(systemEvent: UnityEngine.Event) : T
---@overload fun(touch: UnityEngine.Touch, modifiers: UnityEngine.EventModifiers) : T
---@overload fun(pen: UnityEngine.PenData, modifiers: UnityEngine.EventModifiers) : T
---@param triggerEvent UnityEngine.UIElements.IPointerEvent
---@return T
function UnityEngine.UIElements.PointerEventBase.GetPooled(triggerEvent) end

---@class UnityEngine.UIElements.PointerDownEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerDownEvent = {}
---@alias CS.UnityEngine.UIElements.PointerDownEvent UnityEngine.UIElements.PointerDownEvent
CS.UnityEngine.UIElements.PointerDownEvent = UnityEngine.UIElements.PointerDownEvent

---@return UnityEngine.UIElements.PointerDownEvent
function UnityEngine.UIElements.PointerDownEvent.New() end

---@class UnityEngine.UIElements.PointerMoveEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerMoveEvent = {}
---@alias CS.UnityEngine.UIElements.PointerMoveEvent UnityEngine.UIElements.PointerMoveEvent
CS.UnityEngine.UIElements.PointerMoveEvent = UnityEngine.UIElements.PointerMoveEvent

---@return UnityEngine.UIElements.PointerMoveEvent
function UnityEngine.UIElements.PointerMoveEvent.New() end

---@class UnityEngine.UIElements.PointerStationaryEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerStationaryEvent = {}
---@alias CS.UnityEngine.UIElements.PointerStationaryEvent UnityEngine.UIElements.PointerStationaryEvent
CS.UnityEngine.UIElements.PointerStationaryEvent = UnityEngine.UIElements.PointerStationaryEvent

---@return UnityEngine.UIElements.PointerStationaryEvent
function UnityEngine.UIElements.PointerStationaryEvent.New() end

---@class UnityEngine.UIElements.PointerUpEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerUpEvent = {}
---@alias CS.UnityEngine.UIElements.PointerUpEvent UnityEngine.UIElements.PointerUpEvent
CS.UnityEngine.UIElements.PointerUpEvent = UnityEngine.UIElements.PointerUpEvent

---@return UnityEngine.UIElements.PointerUpEvent
function UnityEngine.UIElements.PointerUpEvent.New() end

---@class UnityEngine.UIElements.PointerCancelEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerCancelEvent = {}
---@alias CS.UnityEngine.UIElements.PointerCancelEvent UnityEngine.UIElements.PointerCancelEvent
CS.UnityEngine.UIElements.PointerCancelEvent = UnityEngine.UIElements.PointerCancelEvent

---@return UnityEngine.UIElements.PointerCancelEvent
function UnityEngine.UIElements.PointerCancelEvent.New() end

---@class UnityEngine.UIElements.ClickEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.ClickEvent = {}
---@alias CS.UnityEngine.UIElements.ClickEvent UnityEngine.UIElements.ClickEvent
CS.UnityEngine.UIElements.ClickEvent = UnityEngine.UIElements.ClickEvent

---@return UnityEngine.UIElements.ClickEvent
function UnityEngine.UIElements.ClickEvent.New() end

---@class UnityEngine.UIElements.PointerEnterEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerEnterEvent = {}
---@alias CS.UnityEngine.UIElements.PointerEnterEvent UnityEngine.UIElements.PointerEnterEvent
CS.UnityEngine.UIElements.PointerEnterEvent = UnityEngine.UIElements.PointerEnterEvent

---@return UnityEngine.UIElements.PointerEnterEvent
function UnityEngine.UIElements.PointerEnterEvent.New() end

---@class UnityEngine.UIElements.PointerLeaveEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerLeaveEvent = {}
---@alias CS.UnityEngine.UIElements.PointerLeaveEvent UnityEngine.UIElements.PointerLeaveEvent
CS.UnityEngine.UIElements.PointerLeaveEvent = UnityEngine.UIElements.PointerLeaveEvent

---@return UnityEngine.UIElements.PointerLeaveEvent
function UnityEngine.UIElements.PointerLeaveEvent.New() end

---@class UnityEngine.UIElements.PointerOverEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerOverEvent = {}
---@alias CS.UnityEngine.UIElements.PointerOverEvent UnityEngine.UIElements.PointerOverEvent
CS.UnityEngine.UIElements.PointerOverEvent = UnityEngine.UIElements.PointerOverEvent

---@return UnityEngine.UIElements.PointerOverEvent
function UnityEngine.UIElements.PointerOverEvent.New() end

---@class UnityEngine.UIElements.PointerOutEvent : UnityEngine.UIElements.PointerEventBase
UnityEngine.UIElements.PointerOutEvent = {}
---@alias CS.UnityEngine.UIElements.PointerOutEvent UnityEngine.UIElements.PointerOutEvent
CS.UnityEngine.UIElements.PointerOutEvent = UnityEngine.UIElements.PointerOutEvent

---@return UnityEngine.UIElements.PointerOutEvent
function UnityEngine.UIElements.PointerOutEvent.New() end

---@class UnityEngine.UIElements.PropagationPaths : System.Object
---@field trickleDownPath System.Collections.Generic.List
---@field targetElements System.Collections.Generic.List
---@field bubbleUpPath System.Collections.Generic.List
UnityEngine.UIElements.PropagationPaths = {}
---@alias CS.UnityEngine.UIElements.PropagationPaths UnityEngine.UIElements.PropagationPaths
CS.UnityEngine.UIElements.PropagationPaths = UnityEngine.UIElements.PropagationPaths

---@overload fun() : UnityEngine.UIElements.PropagationPaths
---@param paths UnityEngine.UIElements.PropagationPaths
---@return UnityEngine.UIElements.PropagationPaths
function UnityEngine.UIElements.PropagationPaths.New(paths) end
---@param elem UnityEngine.UIElements.VisualElement
---@param evt UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.PropagationPaths
function UnityEngine.UIElements.PropagationPaths.Build(elem, evt) end
function UnityEngine.UIElements.PropagationPaths:Release() end

---@class UnityEngine.UIElements.PropagationPaths.Type
---@field None UnityEngine.UIElements.PropagationPaths.Type
---@field TrickleDown UnityEngine.UIElements.PropagationPaths.Type
---@field BubbleUp UnityEngine.UIElements.PropagationPaths.Type
UnityEngine.UIElements.PropagationPaths.Type = {}
---@alias CS.UnityEngine.UIElements.PropagationPaths.Type UnityEngine.UIElements.PropagationPaths.Type
CS.UnityEngine.UIElements.PropagationPaths.Type = UnityEngine.UIElements.PropagationPaths.Type


---@class UnityEngine.UIElements.CustomStyleResolvedEvent : UnityEngine.UIElements.EventBase
---@field customStyle UnityEngine.UIElements.ICustomStyle
UnityEngine.UIElements.CustomStyleResolvedEvent = {}
---@alias CS.UnityEngine.UIElements.CustomStyleResolvedEvent UnityEngine.UIElements.CustomStyleResolvedEvent
CS.UnityEngine.UIElements.CustomStyleResolvedEvent = UnityEngine.UIElements.CustomStyleResolvedEvent

---@return UnityEngine.UIElements.CustomStyleResolvedEvent
function UnityEngine.UIElements.CustomStyleResolvedEvent.New() end

---@class UnityEngine.UIElements.TooltipEvent : UnityEngine.UIElements.EventBase
---@field tooltip string
---@field rect UnityEngine.Rect
UnityEngine.UIElements.TooltipEvent = {}
---@alias CS.UnityEngine.UIElements.TooltipEvent UnityEngine.UIElements.TooltipEvent
CS.UnityEngine.UIElements.TooltipEvent = UnityEngine.UIElements.TooltipEvent

---@return UnityEngine.UIElements.TooltipEvent
function UnityEngine.UIElements.TooltipEvent.New() end

---@class UnityEngine.UIElements.ITransitionEvent
---@field stylePropertyNames UnityEngine.UIElements.StylePropertyNameCollection
---@field elapsedTime number
UnityEngine.UIElements.ITransitionEvent = {}
---@alias CS.UnityEngine.UIElements.ITransitionEvent UnityEngine.UIElements.ITransitionEvent
CS.UnityEngine.UIElements.ITransitionEvent = UnityEngine.UIElements.ITransitionEvent


---@class UnityEngine.UIElements.StylePropertyNameCollection : System.ValueType
UnityEngine.UIElements.StylePropertyNameCollection = {}
---@alias CS.UnityEngine.UIElements.StylePropertyNameCollection UnityEngine.UIElements.StylePropertyNameCollection
CS.UnityEngine.UIElements.StylePropertyNameCollection = UnityEngine.UIElements.StylePropertyNameCollection

---@return UnityEngine.UIElements.StylePropertyNameCollection.Enumerator
function UnityEngine.UIElements.StylePropertyNameCollection:GetEnumerator() end
---@param stylePropertyName UnityEngine.UIElements.StylePropertyName
---@return boolean
function UnityEngine.UIElements.StylePropertyNameCollection:Contains(stylePropertyName) end

---@class UnityEngine.UIElements.StylePropertyNameCollection.Enumerator : System.ValueType
---@field Current UnityEngine.UIElements.StylePropertyName
UnityEngine.UIElements.StylePropertyNameCollection.Enumerator = {}
---@alias CS.UnityEngine.UIElements.StylePropertyNameCollection.Enumerator UnityEngine.UIElements.StylePropertyNameCollection.Enumerator
CS.UnityEngine.UIElements.StylePropertyNameCollection.Enumerator = UnityEngine.UIElements.StylePropertyNameCollection.Enumerator

---@return boolean
function UnityEngine.UIElements.StylePropertyNameCollection.Enumerator:MoveNext() end
function UnityEngine.UIElements.StylePropertyNameCollection.Enumerator:Reset() end
function UnityEngine.UIElements.StylePropertyNameCollection.Enumerator:Dispose() end

---@class UnityEngine.UIElements.TransitionEventBase : UnityEngine.UIElements.EventBase[T]
---@field stylePropertyNames UnityEngine.UIElements.StylePropertyNameCollection
---@field elapsedTime number
UnityEngine.UIElements.TransitionEventBase = {}
---@alias CS.UnityEngine.UIElements.TransitionEventBase UnityEngine.UIElements.TransitionEventBase
CS.UnityEngine.UIElements.TransitionEventBase = UnityEngine.UIElements.TransitionEventBase

---@param stylePropertyName UnityEngine.UIElements.StylePropertyName
---@param elapsedTime number
---@return T
function UnityEngine.UIElements.TransitionEventBase.GetPooled(stylePropertyName, elapsedTime) end
---@param stylePropertyName UnityEngine.UIElements.StylePropertyName
---@return boolean
function UnityEngine.UIElements.TransitionEventBase:AffectsProperty(stylePropertyName) end

---@class UnityEngine.UIElements.TransitionRunEvent : UnityEngine.UIElements.TransitionEventBase
UnityEngine.UIElements.TransitionRunEvent = {}
---@alias CS.UnityEngine.UIElements.TransitionRunEvent UnityEngine.UIElements.TransitionRunEvent
CS.UnityEngine.UIElements.TransitionRunEvent = UnityEngine.UIElements.TransitionRunEvent

---@return UnityEngine.UIElements.TransitionRunEvent
function UnityEngine.UIElements.TransitionRunEvent.New() end

---@class UnityEngine.UIElements.TransitionStartEvent : UnityEngine.UIElements.TransitionEventBase
UnityEngine.UIElements.TransitionStartEvent = {}
---@alias CS.UnityEngine.UIElements.TransitionStartEvent UnityEngine.UIElements.TransitionStartEvent
CS.UnityEngine.UIElements.TransitionStartEvent = UnityEngine.UIElements.TransitionStartEvent

---@return UnityEngine.UIElements.TransitionStartEvent
function UnityEngine.UIElements.TransitionStartEvent.New() end

---@class UnityEngine.UIElements.TransitionEndEvent : UnityEngine.UIElements.TransitionEventBase
UnityEngine.UIElements.TransitionEndEvent = {}
---@alias CS.UnityEngine.UIElements.TransitionEndEvent UnityEngine.UIElements.TransitionEndEvent
CS.UnityEngine.UIElements.TransitionEndEvent = UnityEngine.UIElements.TransitionEndEvent

---@return UnityEngine.UIElements.TransitionEndEvent
function UnityEngine.UIElements.TransitionEndEvent.New() end

---@class UnityEngine.UIElements.TransitionCancelEvent : UnityEngine.UIElements.TransitionEventBase
UnityEngine.UIElements.TransitionCancelEvent = {}
---@alias CS.UnityEngine.UIElements.TransitionCancelEvent UnityEngine.UIElements.TransitionCancelEvent
CS.UnityEngine.UIElements.TransitionCancelEvent = UnityEngine.UIElements.TransitionCancelEvent

---@return UnityEngine.UIElements.TransitionCancelEvent
function UnityEngine.UIElements.TransitionCancelEvent.New() end

---@class UnityEngine.UIElements.IMGUIEvent : UnityEngine.UIElements.EventBase
UnityEngine.UIElements.IMGUIEvent = {}
---@alias CS.UnityEngine.UIElements.IMGUIEvent UnityEngine.UIElements.IMGUIEvent
CS.UnityEngine.UIElements.IMGUIEvent = UnityEngine.UIElements.IMGUIEvent

---@return UnityEngine.UIElements.IMGUIEvent
function UnityEngine.UIElements.IMGUIEvent.New() end
---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.IMGUIEvent
function UnityEngine.UIElements.IMGUIEvent.GetPooled(systemEvent) end

---@class UnityEngine.UIElements.BaseFieldMouseDragger : System.Object
UnityEngine.UIElements.BaseFieldMouseDragger = {}
---@alias CS.UnityEngine.UIElements.BaseFieldMouseDragger UnityEngine.UIElements.BaseFieldMouseDragger
CS.UnityEngine.UIElements.BaseFieldMouseDragger = UnityEngine.UIElements.BaseFieldMouseDragger

---@overload fun(self: UnityEngine.UIElements.BaseFieldMouseDragger, dragElement: UnityEngine.UIElements.VisualElement)
---@param dragElement UnityEngine.UIElements.VisualElement
---@param hotZone UnityEngine.Rect
function UnityEngine.UIElements.BaseFieldMouseDragger:SetDragZone(dragElement, hotZone) end

---@class UnityEngine.UIElements.FieldMouseDragger : UnityEngine.UIElements.BaseFieldMouseDragger
---@field dragging boolean
---@field startValue T
UnityEngine.UIElements.FieldMouseDragger = {}
---@alias CS.UnityEngine.UIElements.FieldMouseDragger UnityEngine.UIElements.FieldMouseDragger
CS.UnityEngine.UIElements.FieldMouseDragger = UnityEngine.UIElements.FieldMouseDragger

---@param drivenField UnityEngine.UIElements.IValueField[T]
---@return UnityEngine.UIElements.FieldMouseDragger
function UnityEngine.UIElements.FieldMouseDragger.New(drivenField) end
---@param dragElement UnityEngine.UIElements.VisualElement
---@param hotZone UnityEngine.Rect
function UnityEngine.UIElements.FieldMouseDragger:SetDragZone(dragElement, hotZone) end

---@class UnityEngine.UIElements.Focusable : UnityEngine.UIElements.CallbackEventHandler
---@field focusController UnityEngine.UIElements.FocusController
---@field focusable boolean
---@field tabIndex number
---@field delegatesFocus boolean
---@field canGrabFocus boolean
UnityEngine.UIElements.Focusable = {}
---@alias CS.UnityEngine.UIElements.Focusable UnityEngine.UIElements.Focusable
CS.UnityEngine.UIElements.Focusable = UnityEngine.UIElements.Focusable

function UnityEngine.UIElements.Focusable:Focus() end
function UnityEngine.UIElements.Focusable:Blur() end

---@class UnityEngine.UIElements.FocusChangeDirection : System.Object
---@field unspecified UnityEngine.UIElements.FocusChangeDirection
---@field none UnityEngine.UIElements.FocusChangeDirection
UnityEngine.UIElements.FocusChangeDirection = {}
---@alias CS.UnityEngine.UIElements.FocusChangeDirection UnityEngine.UIElements.FocusChangeDirection
CS.UnityEngine.UIElements.FocusChangeDirection = UnityEngine.UIElements.FocusChangeDirection


---@class UnityEngine.UIElements.IFocusRing
UnityEngine.UIElements.IFocusRing = {}
---@alias CS.UnityEngine.UIElements.IFocusRing UnityEngine.UIElements.IFocusRing
CS.UnityEngine.UIElements.IFocusRing = UnityEngine.UIElements.IFocusRing

---@param currentFocusable UnityEngine.UIElements.Focusable
---@param e UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.FocusChangeDirection
function UnityEngine.UIElements.IFocusRing:GetFocusChangeDirection(currentFocusable, e) end
---@param currentFocusable UnityEngine.UIElements.Focusable
---@param direction UnityEngine.UIElements.FocusChangeDirection
---@return UnityEngine.UIElements.Focusable
function UnityEngine.UIElements.IFocusRing:GetNextFocusable(currentFocusable, direction) end

---@class UnityEngine.UIElements.FocusController : System.Object
---@field focusedElement UnityEngine.UIElements.Focusable
UnityEngine.UIElements.FocusController = {}
---@alias CS.UnityEngine.UIElements.FocusController UnityEngine.UIElements.FocusController
CS.UnityEngine.UIElements.FocusController = UnityEngine.UIElements.FocusController

---@param focusRing UnityEngine.UIElements.IFocusRing
---@return UnityEngine.UIElements.FocusController
function UnityEngine.UIElements.FocusController.New(focusRing) end

---@class UnityEngine.UIElements.FocusController.FocusedElement : System.ValueType
---@field m_SubTreeRoot UnityEngine.UIElements.VisualElement
---@field m_FocusedElement UnityEngine.UIElements.Focusable
UnityEngine.UIElements.FocusController.FocusedElement = {}
---@alias CS.UnityEngine.UIElements.FocusController.FocusedElement UnityEngine.UIElements.FocusController.FocusedElement
CS.UnityEngine.UIElements.FocusController.FocusedElement = UnityEngine.UIElements.FocusController.FocusedElement


---@class UnityEngine.UIElements.DynamicAtlasSettings : System.Object
---@field defaultFilters UnityEngine.UIElements.DynamicAtlasFilters
---@field defaults UnityEngine.UIElements.DynamicAtlasSettings
---@field minAtlasSize number
---@field maxAtlasSize number
---@field maxSubTextureSize number
---@field activeFilters UnityEngine.UIElements.DynamicAtlasFilters
---@field customFilter UnityEngine.UIElements.DynamicAtlasCustomFilter
UnityEngine.UIElements.DynamicAtlasSettings = {}
---@alias CS.UnityEngine.UIElements.DynamicAtlasSettings UnityEngine.UIElements.DynamicAtlasSettings
CS.UnityEngine.UIElements.DynamicAtlasSettings = UnityEngine.UIElements.DynamicAtlasSettings

---@return UnityEngine.UIElements.DynamicAtlasSettings
function UnityEngine.UIElements.DynamicAtlasSettings.New() end

---@class UnityEngine.UIElements.NavigateFocusRing : System.Object
---@field Left UnityEngine.UIElements.NavigateFocusRing.ChangeDirection
---@field Right UnityEngine.UIElements.NavigateFocusRing.ChangeDirection
---@field Up UnityEngine.UIElements.NavigateFocusRing.ChangeDirection
---@field Down UnityEngine.UIElements.NavigateFocusRing.ChangeDirection
---@field Next UnityEngine.UIElements.FocusChangeDirection
---@field Previous UnityEngine.UIElements.FocusChangeDirection
UnityEngine.UIElements.NavigateFocusRing = {}
---@alias CS.UnityEngine.UIElements.NavigateFocusRing UnityEngine.UIElements.NavigateFocusRing
CS.UnityEngine.UIElements.NavigateFocusRing = UnityEngine.UIElements.NavigateFocusRing

---@param root UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.NavigateFocusRing
function UnityEngine.UIElements.NavigateFocusRing.New(root) end
---@param currentFocusable UnityEngine.UIElements.Focusable
---@param e UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.FocusChangeDirection
function UnityEngine.UIElements.NavigateFocusRing:GetFocusChangeDirection(currentFocusable, e) end
---@param currentFocusable UnityEngine.UIElements.Focusable
---@param direction UnityEngine.UIElements.FocusChangeDirection
---@return UnityEngine.UIElements.Focusable
function UnityEngine.UIElements.NavigateFocusRing:GetNextFocusable(currentFocusable, direction) end

---@class UnityEngine.UIElements.NavigateFocusRing.ChangeDirection : UnityEngine.UIElements.FocusChangeDirection
UnityEngine.UIElements.NavigateFocusRing.ChangeDirection = {}
---@alias CS.UnityEngine.UIElements.NavigateFocusRing.ChangeDirection UnityEngine.UIElements.NavigateFocusRing.ChangeDirection
CS.UnityEngine.UIElements.NavigateFocusRing.ChangeDirection = UnityEngine.UIElements.NavigateFocusRing.ChangeDirection

---@param i number
---@return UnityEngine.UIElements.NavigateFocusRing.ChangeDirection
function UnityEngine.UIElements.NavigateFocusRing.ChangeDirection.New(i) end

---@class UnityEngine.UIElements.NavigateFocusRing.FocusableHierarchyTraversal : System.ValueType
---@field currentFocusable UnityEngine.UIElements.VisualElement
---@field validRect UnityEngine.Rect
---@field firstPass boolean
---@field direction UnityEngine.UIElements.NavigateFocusRing.ChangeDirection
UnityEngine.UIElements.NavigateFocusRing.FocusableHierarchyTraversal = {}
---@alias CS.UnityEngine.UIElements.NavigateFocusRing.FocusableHierarchyTraversal UnityEngine.UIElements.NavigateFocusRing.FocusableHierarchyTraversal
CS.UnityEngine.UIElements.NavigateFocusRing.FocusableHierarchyTraversal = UnityEngine.UIElements.NavigateFocusRing.FocusableHierarchyTraversal

---@param candidate UnityEngine.UIElements.VisualElement
---@param bestSoFar UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.NavigateFocusRing.FocusableHierarchyTraversal:GetBestOverall(candidate, bestSoFar) end

---@class UnityEngine.UIElements.PanelScaleMode
---@field ConstantPixelSize UnityEngine.UIElements.PanelScaleMode
---@field ConstantPhysicalSize UnityEngine.UIElements.PanelScaleMode
---@field ScaleWithScreenSize UnityEngine.UIElements.PanelScaleMode
UnityEngine.UIElements.PanelScaleMode = {}
---@alias CS.UnityEngine.UIElements.PanelScaleMode UnityEngine.UIElements.PanelScaleMode
CS.UnityEngine.UIElements.PanelScaleMode = UnityEngine.UIElements.PanelScaleMode


---@class UnityEngine.UIElements.PanelScreenMatchMode
---@field MatchWidthOrHeight UnityEngine.UIElements.PanelScreenMatchMode
---@field Shrink UnityEngine.UIElements.PanelScreenMatchMode
---@field Expand UnityEngine.UIElements.PanelScreenMatchMode
UnityEngine.UIElements.PanelScreenMatchMode = {}
---@alias CS.UnityEngine.UIElements.PanelScreenMatchMode UnityEngine.UIElements.PanelScreenMatchMode
CS.UnityEngine.UIElements.PanelScreenMatchMode = UnityEngine.UIElements.PanelScreenMatchMode


---@class UnityEngine.UIElements.PanelSettings : UnityEngine.ScriptableObject
---@field textSettings UnityEngine.UIElements.PanelTextSettings
---@field themeStyleSheet UnityEngine.UIElements.ThemeStyleSheet
---@field targetTexture UnityEngine.RenderTexture
---@field scaleMode UnityEngine.UIElements.PanelScaleMode
---@field referenceSpritePixelsPerUnit number
---@field scale number
---@field referenceDpi number
---@field fallbackDpi number
---@field referenceResolution UnityEngine.Vector2Int
---@field screenMatchMode UnityEngine.UIElements.PanelScreenMatchMode
---@field match number
---@field sortingOrder number
---@field targetDisplay number
---@field clearDepthStencil boolean
---@field depthClearValue number
---@field clearColor boolean
---@field colorClearValue UnityEngine.Color
---@field dynamicAtlasSettings UnityEngine.UIElements.DynamicAtlasSettings
UnityEngine.UIElements.PanelSettings = {}
---@alias CS.UnityEngine.UIElements.PanelSettings UnityEngine.UIElements.PanelSettings
CS.UnityEngine.UIElements.PanelSettings = UnityEngine.UIElements.PanelSettings

---@param screentoPanelSpaceFunction System.Func
function UnityEngine.UIElements.PanelSettings:SetScreenToPanelSpaceFunction(screentoPanelSpaceFunction) end

---@class UnityEngine.UIElements.PanelSettings.RuntimePanelAccess : System.Object
UnityEngine.UIElements.PanelSettings.RuntimePanelAccess = {}
---@alias CS.UnityEngine.UIElements.PanelSettings.RuntimePanelAccess UnityEngine.UIElements.PanelSettings.RuntimePanelAccess
CS.UnityEngine.UIElements.PanelSettings.RuntimePanelAccess = UnityEngine.UIElements.PanelSettings.RuntimePanelAccess


---@class UnityEngine.UIElements.RuntimeEventDispatcher : System.Object
UnityEngine.UIElements.RuntimeEventDispatcher = {}
---@alias CS.UnityEngine.UIElements.RuntimeEventDispatcher UnityEngine.UIElements.RuntimeEventDispatcher
CS.UnityEngine.UIElements.RuntimeEventDispatcher = UnityEngine.UIElements.RuntimeEventDispatcher

---@return UnityEngine.UIElements.EventDispatcher
function UnityEngine.UIElements.RuntimeEventDispatcher.Create() end

---@class UnityEngine.UIElements.IRuntimePanel
---@field panelSettings UnityEngine.UIElements.PanelSettings
---@field selectableGameObject UnityEngine.GameObject
UnityEngine.UIElements.IRuntimePanel = {}
---@alias CS.UnityEngine.UIElements.IRuntimePanel UnityEngine.UIElements.IRuntimePanel
CS.UnityEngine.UIElements.IRuntimePanel = UnityEngine.UIElements.IRuntimePanel


---@class UnityEngine.UIElements.RuntimePanel : UnityEngine.UIElements.BaseRuntimePanel
---@field panelSettings UnityEngine.UIElements.PanelSettings
UnityEngine.UIElements.RuntimePanel = {}
---@alias CS.UnityEngine.UIElements.RuntimePanel UnityEngine.UIElements.RuntimePanel
CS.UnityEngine.UIElements.RuntimePanel = UnityEngine.UIElements.RuntimePanel

---@param ownerObject UnityEngine.ScriptableObject
---@return UnityEngine.UIElements.RuntimePanel
function UnityEngine.UIElements.RuntimePanel.Create(ownerObject) end
function UnityEngine.UIElements.RuntimePanel:Update() end

---@class UnityEngine.UIElements.RuntimePanelUtils : System.Object
UnityEngine.UIElements.RuntimePanelUtils = {}
---@alias CS.UnityEngine.UIElements.RuntimePanelUtils UnityEngine.UIElements.RuntimePanelUtils
CS.UnityEngine.UIElements.RuntimePanelUtils = UnityEngine.UIElements.RuntimePanelUtils

---@param panel UnityEngine.UIElements.IPanel
---@param screenPosition UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.UIElements.RuntimePanelUtils.ScreenToPanel(panel, screenPosition) end
---@param panel UnityEngine.UIElements.IPanel
---@param worldPosition UnityEngine.Vector3
---@param camera UnityEngine.Camera
---@return UnityEngine.Vector2
function UnityEngine.UIElements.RuntimePanelUtils.CameraTransformWorldToPanel(panel, worldPosition, camera) end
---@param panel UnityEngine.UIElements.IPanel
---@param worldPosition UnityEngine.Vector3
---@param worldSize UnityEngine.Vector2
---@param camera UnityEngine.Camera
---@return UnityEngine.Rect
function UnityEngine.UIElements.RuntimePanelUtils.CameraTransformWorldToPanelRect(panel, worldPosition, worldSize, camera) end
---@param panel UnityEngine.UIElements.IPanel
function UnityEngine.UIElements.RuntimePanelUtils.ResetDynamicAtlas(panel) end
---@param panel UnityEngine.UIElements.IPanel
---@param texture UnityEngine.Texture2D
function UnityEngine.UIElements.RuntimePanelUtils.SetTextureDirty(panel, texture) end

---@class UnityEngine.UIElements.UIDocumentList : System.Object
UnityEngine.UIElements.UIDocumentList = {}
---@alias CS.UnityEngine.UIElements.UIDocumentList UnityEngine.UIElements.UIDocumentList
CS.UnityEngine.UIElements.UIDocumentList = UnityEngine.UIElements.UIDocumentList

---@return UnityEngine.UIElements.UIDocumentList
function UnityEngine.UIElements.UIDocumentList.New() end

---@class UnityEngine.UIElements.UIDocument : UnityEngine.MonoBehaviour
---@field panelSettings UnityEngine.UIElements.PanelSettings
---@field parentUI UnityEngine.UIElements.UIDocument
---@field visualTreeAsset UnityEngine.UIElements.VisualTreeAsset
---@field rootVisualElement UnityEngine.UIElements.VisualElement
---@field sortingOrder number
UnityEngine.UIElements.UIDocument = {}
---@alias CS.UnityEngine.UIElements.UIDocument UnityEngine.UIElements.UIDocument
CS.UnityEngine.UIElements.UIDocument = UnityEngine.UIElements.UIDocument


---@class UnityEngine.UIElements.UIDocumentHierarchyUtil : System.Object
UnityEngine.UIElements.UIDocumentHierarchyUtil = {}
---@alias CS.UnityEngine.UIElements.UIDocumentHierarchyUtil UnityEngine.UIElements.UIDocumentHierarchyUtil
CS.UnityEngine.UIElements.UIDocumentHierarchyUtil = UnityEngine.UIElements.UIDocumentHierarchyUtil


---@class UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer : System.Object
UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer = {}
---@alias CS.UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer
CS.UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer = UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer

---@return UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer
function UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer.New() end
---@param x UnityEngine.UIElements.UIDocumentHierarchicalIndex
---@param y UnityEngine.UIElements.UIDocumentHierarchicalIndex
---@return number
function UnityEngine.UIElements.UIDocumentHierarchicalIndexComparer:Compare(x, y) end

---@class UnityEngine.UIElements.UIDocumentHierarchicalIndex : System.ValueType
UnityEngine.UIElements.UIDocumentHierarchicalIndex = {}
---@alias CS.UnityEngine.UIElements.UIDocumentHierarchicalIndex UnityEngine.UIElements.UIDocumentHierarchicalIndex
CS.UnityEngine.UIElements.UIDocumentHierarchicalIndex = UnityEngine.UIElements.UIDocumentHierarchicalIndex

---@param other UnityEngine.UIElements.UIDocumentHierarchicalIndex
---@return number
function UnityEngine.UIElements.UIDocumentHierarchicalIndex:CompareTo(other) end
---@return string
function UnityEngine.UIElements.UIDocumentHierarchicalIndex:ToString() end

---@class UnityEngine.UIElements.GroupBoxUtility : System.Object
UnityEngine.UIElements.GroupBoxUtility = {}
---@alias CS.UnityEngine.UIElements.GroupBoxUtility UnityEngine.UIElements.GroupBoxUtility
CS.UnityEngine.UIElements.GroupBoxUtility = UnityEngine.UIElements.GroupBoxUtility

---@param groupBox UnityEngine.UIElements.IGroupBox
---@return UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.GroupBoxUtility.GetSelectedOption(groupBox) end
---@param groupBox UnityEngine.UIElements.IGroupBox
---@return UnityEngine.UIElements.IGroupManager
function UnityEngine.UIElements.GroupBoxUtility.GetGroupManager(groupBox) end

---@class UnityEngine.UIElements.IDataWatchHandle
---@field watched UnityEngine.Object
---@field disposed boolean
UnityEngine.UIElements.IDataWatchHandle = {}
---@alias CS.UnityEngine.UIElements.IDataWatchHandle UnityEngine.UIElements.IDataWatchHandle
CS.UnityEngine.UIElements.IDataWatchHandle = UnityEngine.UIElements.IDataWatchHandle


---@class UnityEngine.UIElements.IDataWatchService
UnityEngine.UIElements.IDataWatchService = {}
---@alias CS.UnityEngine.UIElements.IDataWatchService UnityEngine.UIElements.IDataWatchService
CS.UnityEngine.UIElements.IDataWatchService = UnityEngine.UIElements.IDataWatchService

---@param watched UnityEngine.Object
---@param onDataChanged System.Action
---@return UnityEngine.UIElements.IDataWatchHandle
function UnityEngine.UIElements.IDataWatchService:AddWatch(watched, onDataChanged) end
---@param handle UnityEngine.UIElements.IDataWatchHandle
function UnityEngine.UIElements.IDataWatchService:RemoveWatch(handle) end
---@param obj UnityEngine.Object
function UnityEngine.UIElements.IDataWatchService:ForceDirtyNextPoll(obj) end

---@class UnityEngine.UIElements.IEnumerableExtensions : System.Object
UnityEngine.UIElements.IEnumerableExtensions = {}
---@alias CS.UnityEngine.UIElements.IEnumerableExtensions UnityEngine.UIElements.IEnumerableExtensions
CS.UnityEngine.UIElements.IEnumerableExtensions = UnityEngine.UIElements.IEnumerableExtensions


---@class UnityEngine.UIElements.IGroupBoxOption
UnityEngine.UIElements.IGroupBoxOption = {}
---@alias CS.UnityEngine.UIElements.IGroupBoxOption UnityEngine.UIElements.IGroupBoxOption
CS.UnityEngine.UIElements.IGroupBoxOption = UnityEngine.UIElements.IGroupBoxOption

---@param selected boolean
function UnityEngine.UIElements.IGroupBoxOption:SetSelected(selected) end

---@class UnityEngine.UIElements.IGroupBox
UnityEngine.UIElements.IGroupBox = {}
---@alias CS.UnityEngine.UIElements.IGroupBox UnityEngine.UIElements.IGroupBox
CS.UnityEngine.UIElements.IGroupBox = UnityEngine.UIElements.IGroupBox

---@param option UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.IGroupBox:OnOptionAdded(option) end
---@param option UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.IGroupBox:OnOptionRemoved(option) end
---@return UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.IGroupBox:GetSelectedOption() end
---@return UnityEngine.UIElements.IGroupManager
function UnityEngine.UIElements.IGroupBox:GetGroupManager() end

---@class UnityEngine.UIElements.IGroupBox
UnityEngine.UIElements.IGroupBox = {}
---@alias CS.UnityEngine.UIElements.IGroupBox UnityEngine.UIElements.IGroupBox
CS.UnityEngine.UIElements.IGroupBox = UnityEngine.UIElements.IGroupBox


---@class UnityEngine.UIElements.IGroupManager
UnityEngine.UIElements.IGroupManager = {}
---@alias CS.UnityEngine.UIElements.IGroupManager UnityEngine.UIElements.IGroupManager
CS.UnityEngine.UIElements.IGroupManager = UnityEngine.UIElements.IGroupManager

---@param groupBox UnityEngine.UIElements.IGroupBox
function UnityEngine.UIElements.IGroupManager:Init(groupBox) end
---@return UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.IGroupManager:GetSelectedOption() end
---@param selectedOption UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.IGroupManager:OnOptionSelectionChanged(selectedOption) end
---@param option UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.IGroupManager:RegisterOption(option) end
---@param option UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.IGroupManager:UnregisterOption(option) end

---@class UnityEngine.UIElements.DefaultGroupManager : System.Object
UnityEngine.UIElements.DefaultGroupManager = {}
---@alias CS.UnityEngine.UIElements.DefaultGroupManager UnityEngine.UIElements.DefaultGroupManager
CS.UnityEngine.UIElements.DefaultGroupManager = UnityEngine.UIElements.DefaultGroupManager

---@return UnityEngine.UIElements.DefaultGroupManager
function UnityEngine.UIElements.DefaultGroupManager.New() end
---@param groupBox UnityEngine.UIElements.IGroupBox
function UnityEngine.UIElements.DefaultGroupManager:Init(groupBox) end
---@return UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.DefaultGroupManager:GetSelectedOption() end
---@param selectedOption UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.DefaultGroupManager:OnOptionSelectionChanged(selectedOption) end
---@param option UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.DefaultGroupManager:RegisterOption(option) end
---@param option UnityEngine.UIElements.IGroupBoxOption
function UnityEngine.UIElements.DefaultGroupManager:UnregisterOption(option) end

---@class UnityEngine.UIElements.ILiveReloadAssetTracker
UnityEngine.UIElements.ILiveReloadAssetTracker = {}
---@alias CS.UnityEngine.UIElements.ILiveReloadAssetTracker UnityEngine.UIElements.ILiveReloadAssetTracker
CS.UnityEngine.UIElements.ILiveReloadAssetTracker = UnityEngine.UIElements.ILiveReloadAssetTracker

---@param asset T
---@return number
function UnityEngine.UIElements.ILiveReloadAssetTracker:StartTrackingAsset(asset) end
---@param asset T
function UnityEngine.UIElements.ILiveReloadAssetTracker:StopTrackingAsset(asset) end
---@param asset T
---@return boolean
function UnityEngine.UIElements.ILiveReloadAssetTracker:IsTrackingAsset(asset) end
---@return boolean
function UnityEngine.UIElements.ILiveReloadAssetTracker:IsTrackingAssets() end
---@return boolean
function UnityEngine.UIElements.ILiveReloadAssetTracker:CheckTrackedAssetsDirty() end
---@param asset T
---@param newDirtyCount number
---@param newElementCount number
---@param newInlinePropertiesCount number
---@param newAttributePropertiesDirtyCount number
function UnityEngine.UIElements.ILiveReloadAssetTracker:UpdateAssetTrackerCounts(asset, newDirtyCount, newElementCount, newInlinePropertiesCount, newAttributePropertiesDirtyCount) end
---@param changedAssets System.Collections.Generic.HashSet[T]
---@param deletedAssets System.Collections.Generic.HashSet
---@return boolean
function UnityEngine.UIElements.ILiveReloadAssetTracker:OnAssetsImported(changedAssets, deletedAssets) end
function UnityEngine.UIElements.ILiveReloadAssetTracker:OnTrackedAssetChanged() end

---@class UnityEngine.UIElements.LiveReloadTrackers
---@field Document UnityEngine.UIElements.LiveReloadTrackers
---@field Text UnityEngine.UIElements.LiveReloadTrackers
UnityEngine.UIElements.LiveReloadTrackers = {}
---@alias CS.UnityEngine.UIElements.LiveReloadTrackers UnityEngine.UIElements.LiveReloadTrackers
CS.UnityEngine.UIElements.LiveReloadTrackers = UnityEngine.UIElements.LiveReloadTrackers


---@class UnityEngine.UIElements.ILiveReloadSystem
---@field enable boolean
---@field enabledTrackers UnityEngine.UIElements.LiveReloadTrackers
UnityEngine.UIElements.ILiveReloadSystem = {}
---@alias CS.UnityEngine.UIElements.ILiveReloadSystem UnityEngine.UIElements.ILiveReloadSystem
CS.UnityEngine.UIElements.ILiveReloadSystem = UnityEngine.UIElements.ILiveReloadSystem

function UnityEngine.UIElements.ILiveReloadSystem:Update() end
---@param tracker UnityEngine.UIElements.ILiveReloadAssetTracker
---@param owner UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.ILiveReloadSystem:RegisterVisualTreeAssetTracker(tracker, owner) end
---@param owner UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.ILiveReloadSystem:UnregisterVisualTreeAssetTracker(owner) end
---@param elements System.Collections.Generic.List
function UnityEngine.UIElements.ILiveReloadSystem:StartTracking(elements) end
---@param elements System.Collections.Generic.List
function UnityEngine.UIElements.ILiveReloadSystem:StopTracking(elements) end
---@param styleSheet UnityEngine.UIElements.StyleSheet
function UnityEngine.UIElements.ILiveReloadSystem:StartStyleSheetAssetTracking(styleSheet) end
---@param styleSheet UnityEngine.UIElements.StyleSheet
function UnityEngine.UIElements.ILiveReloadSystem:StopStyleSheetAssetTracking(styleSheet) end
---@param changedAssets System.Collections.Generic.HashSet
---@param deletedAssets System.Collections.Generic.HashSet
function UnityEngine.UIElements.ILiveReloadSystem:OnStyleSheetAssetsImported(changedAssets, deletedAssets) end
---@param changedAssets System.Collections.Generic.HashSet
---@param deletedAssets System.Collections.Generic.HashSet
function UnityEngine.UIElements.ILiveReloadSystem:OnVisualTreeAssetsImported(changedAssets, deletedAssets) end
---@param element UnityEngine.UIElements.TextElement
function UnityEngine.UIElements.ILiveReloadSystem:RegisterTextElement(element) end
---@param element UnityEngine.UIElements.TextElement
function UnityEngine.UIElements.ILiveReloadSystem:UnregisterTextElement(element) end

---@class UnityEngine.UIElements.IMGUIContainer : UnityEngine.UIElements.VisualElement
---@field ussClassName string
---@field onGUIHandler System.Action
---@field cullingEnabled boolean
---@field contextType UnityEngine.UIElements.ContextType
---@field canGrabFocus boolean
UnityEngine.UIElements.IMGUIContainer = {}
---@alias CS.UnityEngine.UIElements.IMGUIContainer UnityEngine.UIElements.IMGUIContainer
CS.UnityEngine.UIElements.IMGUIContainer = UnityEngine.UIElements.IMGUIContainer

---@overload fun() : UnityEngine.UIElements.IMGUIContainer
---@param onGUIHandler System.Action
---@return UnityEngine.UIElements.IMGUIContainer
function UnityEngine.UIElements.IMGUIContainer.New(onGUIHandler) end
function UnityEngine.UIElements.IMGUIContainer:MarkDirtyLayout() end
function UnityEngine.UIElements.IMGUIContainer:Dispose() end

---@class UnityEngine.UIElements.IMGUIContainer.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.IMGUIContainer.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.IMGUIContainer.UxmlFactory UnityEngine.UIElements.IMGUIContainer.UxmlFactory
CS.UnityEngine.UIElements.IMGUIContainer.UxmlFactory = UnityEngine.UIElements.IMGUIContainer.UxmlFactory

---@return UnityEngine.UIElements.IMGUIContainer.UxmlFactory
function UnityEngine.UIElements.IMGUIContainer.UxmlFactory.New() end

---@class UnityEngine.UIElements.IMGUIContainer.UxmlTraits : UnityEngine.UIElements.VisualElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.IMGUIContainer.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.IMGUIContainer.UxmlTraits UnityEngine.UIElements.IMGUIContainer.UxmlTraits
CS.UnityEngine.UIElements.IMGUIContainer.UxmlTraits = UnityEngine.UIElements.IMGUIContainer.UxmlTraits

---@return UnityEngine.UIElements.IMGUIContainer.UxmlTraits
function UnityEngine.UIElements.IMGUIContainer.UxmlTraits.New() end

---@class UnityEngine.UIElements.IMGUIContainer.GUIGlobals : System.ValueType
---@field matrix UnityEngine.Matrix4x4
---@field color UnityEngine.Color
---@field contentColor UnityEngine.Color
---@field backgroundColor UnityEngine.Color
---@field enabled boolean
---@field changed boolean
---@field displayIndex number
UnityEngine.UIElements.IMGUIContainer.GUIGlobals = {}
---@alias CS.UnityEngine.UIElements.IMGUIContainer.GUIGlobals UnityEngine.UIElements.IMGUIContainer.GUIGlobals
CS.UnityEngine.UIElements.IMGUIContainer.GUIGlobals = UnityEngine.UIElements.IMGUIContainer.GUIGlobals


---@class UnityEngine.UIElements.ImmediateModeElement : UnityEngine.UIElements.VisualElement
---@field cullingEnabled boolean
UnityEngine.UIElements.ImmediateModeElement = {}
---@alias CS.UnityEngine.UIElements.ImmediateModeElement UnityEngine.UIElements.ImmediateModeElement
CS.UnityEngine.UIElements.ImmediateModeElement = UnityEngine.UIElements.ImmediateModeElement

---@return UnityEngine.UIElements.ImmediateModeElement
function UnityEngine.UIElements.ImmediateModeElement.New() end

---@class UnityEngine.UIElements.ImmediateModeException : System.Exception
UnityEngine.UIElements.ImmediateModeException = {}
---@alias CS.UnityEngine.UIElements.ImmediateModeException UnityEngine.UIElements.ImmediateModeException
CS.UnityEngine.UIElements.ImmediateModeException = UnityEngine.UIElements.ImmediateModeException

---@param inner System.Exception
---@return UnityEngine.UIElements.ImmediateModeException
function UnityEngine.UIElements.ImmediateModeException.New(inner) end

---@class UnityEngine.UIElements.SelectionType
---@field None UnityEngine.UIElements.SelectionType
---@field Single UnityEngine.UIElements.SelectionType
---@field Multiple UnityEngine.UIElements.SelectionType
UnityEngine.UIElements.SelectionType = {}
---@alias CS.UnityEngine.UIElements.SelectionType UnityEngine.UIElements.SelectionType
CS.UnityEngine.UIElements.SelectionType = UnityEngine.UIElements.SelectionType


---@class UnityEngine.UIElements.ISerializableJsonDictionary
UnityEngine.UIElements.ISerializableJsonDictionary = {}
---@alias CS.UnityEngine.UIElements.ISerializableJsonDictionary UnityEngine.UIElements.ISerializableJsonDictionary
CS.UnityEngine.UIElements.ISerializableJsonDictionary = UnityEngine.UIElements.ISerializableJsonDictionary

---@param obj System.Object
---@param key string
function UnityEngine.UIElements.ISerializableJsonDictionary:Overwrite(obj, key) end
---@param key string
---@return boolean
function UnityEngine.UIElements.ISerializableJsonDictionary:ContainsKey(key) end
function UnityEngine.UIElements.ISerializableJsonDictionary:OnBeforeSerialize() end
function UnityEngine.UIElements.ISerializableJsonDictionary:OnAfterDeserialize() end

---@class UnityEngine.UIElements.ITransform
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field scale UnityEngine.Vector3
---@field matrix UnityEngine.Matrix4x4
UnityEngine.UIElements.ITransform = {}
---@alias CS.UnityEngine.UIElements.ITransform UnityEngine.UIElements.ITransform
CS.UnityEngine.UIElements.ITransform = UnityEngine.UIElements.ITransform


---@class UnityEngine.UIElements.KeyboardNavigationOperation
---@field None UnityEngine.UIElements.KeyboardNavigationOperation
---@field SelectAll UnityEngine.UIElements.KeyboardNavigationOperation
---@field Cancel UnityEngine.UIElements.KeyboardNavigationOperation
---@field Submit UnityEngine.UIElements.KeyboardNavigationOperation
---@field Previous UnityEngine.UIElements.KeyboardNavigationOperation
---@field Next UnityEngine.UIElements.KeyboardNavigationOperation
---@field MoveRight UnityEngine.UIElements.KeyboardNavigationOperation
---@field MoveLeft UnityEngine.UIElements.KeyboardNavigationOperation
---@field PageUp UnityEngine.UIElements.KeyboardNavigationOperation
---@field PageDown UnityEngine.UIElements.KeyboardNavigationOperation
---@field Begin UnityEngine.UIElements.KeyboardNavigationOperation
---@field End UnityEngine.UIElements.KeyboardNavigationOperation
UnityEngine.UIElements.KeyboardNavigationOperation = {}
---@alias CS.UnityEngine.UIElements.KeyboardNavigationOperation UnityEngine.UIElements.KeyboardNavigationOperation
CS.UnityEngine.UIElements.KeyboardNavigationOperation = UnityEngine.UIElements.KeyboardNavigationOperation


---@class UnityEngine.UIElements.KeyboardNavigationManipulator : UnityEngine.UIElements.Manipulator
UnityEngine.UIElements.KeyboardNavigationManipulator = {}
---@alias CS.UnityEngine.UIElements.KeyboardNavigationManipulator UnityEngine.UIElements.KeyboardNavigationManipulator
CS.UnityEngine.UIElements.KeyboardNavigationManipulator = UnityEngine.UIElements.KeyboardNavigationManipulator

---@param action System.Action
---@return UnityEngine.UIElements.KeyboardNavigationManipulator
function UnityEngine.UIElements.KeyboardNavigationManipulator.New(action) end

---@class UnityEngine.UIElements.ManipulatorActivationFilter : System.ValueType
---@field button UnityEngine.UIElements.MouseButton
---@field modifiers UnityEngine.EventModifiers
---@field clickCount number
UnityEngine.UIElements.ManipulatorActivationFilter = {}
---@alias CS.UnityEngine.UIElements.ManipulatorActivationFilter UnityEngine.UIElements.ManipulatorActivationFilter
CS.UnityEngine.UIElements.ManipulatorActivationFilter = UnityEngine.UIElements.ManipulatorActivationFilter

---@overload fun(self: UnityEngine.UIElements.ManipulatorActivationFilter, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.ManipulatorActivationFilter
---@return boolean
function UnityEngine.UIElements.ManipulatorActivationFilter:Equals(other) end
---@return number
function UnityEngine.UIElements.ManipulatorActivationFilter:GetHashCode() end
---@overload fun(self: UnityEngine.UIElements.ManipulatorActivationFilter, e: UnityEngine.UIElements.IMouseEvent) : boolean
---@param e UnityEngine.UIElements.IPointerEvent
---@return boolean
function UnityEngine.UIElements.ManipulatorActivationFilter:Matches(e) end

---@class UnityEngine.UIElements.IManipulator
---@field target UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.IManipulator = {}
---@alias CS.UnityEngine.UIElements.IManipulator UnityEngine.UIElements.IManipulator
CS.UnityEngine.UIElements.IManipulator = UnityEngine.UIElements.IManipulator


---@class UnityEngine.UIElements.Manipulator : System.Object
---@field target UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.Manipulator = {}
---@alias CS.UnityEngine.UIElements.Manipulator UnityEngine.UIElements.Manipulator
CS.UnityEngine.UIElements.Manipulator = UnityEngine.UIElements.Manipulator


---@class UnityEngine.UIElements.MouseButton
---@field LeftMouse UnityEngine.UIElements.MouseButton
---@field RightMouse UnityEngine.UIElements.MouseButton
---@field MiddleMouse UnityEngine.UIElements.MouseButton
UnityEngine.UIElements.MouseButton = {}
---@alias CS.UnityEngine.UIElements.MouseButton UnityEngine.UIElements.MouseButton
CS.UnityEngine.UIElements.MouseButton = UnityEngine.UIElements.MouseButton


---@class UnityEngine.UIElements.MouseCaptureController : System.Object
UnityEngine.UIElements.MouseCaptureController = {}
---@alias CS.UnityEngine.UIElements.MouseCaptureController UnityEngine.UIElements.MouseCaptureController
CS.UnityEngine.UIElements.MouseCaptureController = UnityEngine.UIElements.MouseCaptureController

---@return boolean
function UnityEngine.UIElements.MouseCaptureController.IsMouseCaptured() end
---@param handler UnityEngine.UIElements.IEventHandler
---@return boolean
function UnityEngine.UIElements.MouseCaptureController.HasMouseCapture(handler) end
---@param handler UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.MouseCaptureController.CaptureMouse(handler) end
---@overload fun(handler: UnityEngine.UIElements.IEventHandler)
function UnityEngine.UIElements.MouseCaptureController.ReleaseMouse() end

---@class UnityEngine.UIElements.MouseManipulator : UnityEngine.UIElements.Manipulator
---@field activators System.Collections.Generic.List
UnityEngine.UIElements.MouseManipulator = {}
---@alias CS.UnityEngine.UIElements.MouseManipulator UnityEngine.UIElements.MouseManipulator
CS.UnityEngine.UIElements.MouseManipulator = UnityEngine.UIElements.MouseManipulator


---@class UnityEngine.UIElements.ImmediateStylePainter : System.Object
UnityEngine.UIElements.ImmediateStylePainter = {}
---@alias CS.UnityEngine.UIElements.ImmediateStylePainter UnityEngine.UIElements.ImmediateStylePainter
CS.UnityEngine.UIElements.ImmediateStylePainter = UnityEngine.UIElements.ImmediateStylePainter

---@return UnityEngine.UIElements.ImmediateStylePainter
function UnityEngine.UIElements.ImmediateStylePainter.New() end

---@class UnityEngine.UIElements.MeshWriteDataInterface : System.ValueType
---@field vertices System.IntPtr
---@field indices System.IntPtr
---@field vertexCount number
---@field indexCount number
UnityEngine.UIElements.MeshWriteDataInterface = {}
---@alias CS.UnityEngine.UIElements.MeshWriteDataInterface UnityEngine.UIElements.MeshWriteDataInterface
CS.UnityEngine.UIElements.MeshWriteDataInterface = UnityEngine.UIElements.MeshWriteDataInterface

---@param data UnityEngine.UIElements.MeshWriteData
---@return UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.MeshWriteDataInterface.FromMeshWriteData(data) end

---@class UnityEngine.UIElements.UIPainter2D : System.Object
UnityEngine.UIElements.UIPainter2D = {}
---@alias CS.UnityEngine.UIElements.UIPainter2D UnityEngine.UIElements.UIPainter2D
CS.UnityEngine.UIElements.UIPainter2D = UnityEngine.UIElements.UIPainter2D

---@param computeBBox boolean
---@return System.IntPtr
function UnityEngine.UIElements.UIPainter2D.Create(computeBBox) end
---@param handle System.IntPtr
function UnityEngine.UIElements.UIPainter2D.Destroy(handle) end
---@param handle System.IntPtr
function UnityEngine.UIElements.UIPainter2D.Reset(handle) end
---@param handle System.IntPtr
---@return number
function UnityEngine.UIElements.UIPainter2D.GetLineWidth(handle) end
---@param handle System.IntPtr
---@param value number
function UnityEngine.UIElements.UIPainter2D.SetLineWidth(handle, value) end
---@param handle System.IntPtr
---@return UnityEngine.Color
function UnityEngine.UIElements.UIPainter2D.GetStrokeColor(handle) end
---@param handle System.IntPtr
---@param value UnityEngine.Color
function UnityEngine.UIElements.UIPainter2D.SetStrokeColor(handle, value) end
---@param handle System.IntPtr
---@return UnityEngine.Gradient
function UnityEngine.UIElements.UIPainter2D.GetStrokeGradient(handle) end
---@param handle System.IntPtr
---@param gradient UnityEngine.Gradient
function UnityEngine.UIElements.UIPainter2D.SetStrokeGradient(handle, gradient) end
---@param handle System.IntPtr
---@return UnityEngine.Color
function UnityEngine.UIElements.UIPainter2D.GetFillColor(handle) end
---@param handle System.IntPtr
---@param value UnityEngine.Color
function UnityEngine.UIElements.UIPainter2D.SetFillColor(handle, value) end
---@param handle System.IntPtr
---@return UnityEngine.UIElements.LineJoin
function UnityEngine.UIElements.UIPainter2D.GetLineJoin(handle) end
---@param handle System.IntPtr
---@param value UnityEngine.UIElements.LineJoin
function UnityEngine.UIElements.UIPainter2D.SetLineJoin(handle, value) end
---@param handle System.IntPtr
---@return UnityEngine.UIElements.LineCap
function UnityEngine.UIElements.UIPainter2D.GetLineCap(handle) end
---@param handle System.IntPtr
---@param value UnityEngine.UIElements.LineCap
function UnityEngine.UIElements.UIPainter2D.SetLineCap(handle, value) end
---@param handle System.IntPtr
---@return number
function UnityEngine.UIElements.UIPainter2D.GetMiterLimit(handle) end
---@param handle System.IntPtr
---@param value number
function UnityEngine.UIElements.UIPainter2D.SetMiterLimit(handle, value) end
---@param handle System.IntPtr
function UnityEngine.UIElements.UIPainter2D.BeginPath(handle) end
---@param handle System.IntPtr
---@param pos UnityEngine.Vector2
function UnityEngine.UIElements.UIPainter2D.MoveTo(handle, pos) end
---@param handle System.IntPtr
---@param pos UnityEngine.Vector2
function UnityEngine.UIElements.UIPainter2D.LineTo(handle, pos) end
---@param handle System.IntPtr
---@param p1 UnityEngine.Vector2
---@param p2 UnityEngine.Vector2
---@param radius number
function UnityEngine.UIElements.UIPainter2D.ArcTo(handle, p1, p2, radius) end
---@param handle System.IntPtr
---@param center UnityEngine.Vector2
---@param radius number
---@param startAngleRads number
---@param endAngleRads number
---@param direction UnityEngine.UIElements.ArcDirection
function UnityEngine.UIElements.UIPainter2D.Arc(handle, center, radius, startAngleRads, endAngleRads, direction) end
---@param handle System.IntPtr
---@param p1 UnityEngine.Vector2
---@param p2 UnityEngine.Vector2
---@param p3 UnityEngine.Vector2
function UnityEngine.UIElements.UIPainter2D.BezierCurveTo(handle, p1, p2, p3) end
---@param handle System.IntPtr
---@param p1 UnityEngine.Vector2
---@param p2 UnityEngine.Vector2
function UnityEngine.UIElements.UIPainter2D.QuadraticCurveTo(handle, p1, p2) end
---@param handle System.IntPtr
function UnityEngine.UIElements.UIPainter2D.ClosePath(handle) end
---@param handle System.IntPtr
---@return UnityEngine.Rect
function UnityEngine.UIElements.UIPainter2D.GetBBox(handle) end
---@param handle System.IntPtr
---@return UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.UIPainter2D.Stroke(handle) end
---@param handle System.IntPtr
---@param fillRule UnityEngine.UIElements.FillRule
---@return UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.UIPainter2D.Fill(handle, fillRule) end

---@class UnityEngine.UIElements.FillRule
---@field NonZero UnityEngine.UIElements.FillRule
---@field OddEven UnityEngine.UIElements.FillRule
UnityEngine.UIElements.FillRule = {}
---@alias CS.UnityEngine.UIElements.FillRule UnityEngine.UIElements.FillRule
CS.UnityEngine.UIElements.FillRule = UnityEngine.UIElements.FillRule


---@class UnityEngine.UIElements.LineJoin
---@field Miter UnityEngine.UIElements.LineJoin
---@field Bevel UnityEngine.UIElements.LineJoin
---@field Round UnityEngine.UIElements.LineJoin
UnityEngine.UIElements.LineJoin = {}
---@alias CS.UnityEngine.UIElements.LineJoin UnityEngine.UIElements.LineJoin
CS.UnityEngine.UIElements.LineJoin = UnityEngine.UIElements.LineJoin


---@class UnityEngine.UIElements.LineCap
---@field Butt UnityEngine.UIElements.LineCap
---@field Round UnityEngine.UIElements.LineCap
UnityEngine.UIElements.LineCap = {}
---@alias CS.UnityEngine.UIElements.LineCap UnityEngine.UIElements.LineCap
CS.UnityEngine.UIElements.LineCap = UnityEngine.UIElements.LineCap


---@class UnityEngine.UIElements.ArcDirection
---@field Clockwise UnityEngine.UIElements.ArcDirection
---@field CounterClockwise UnityEngine.UIElements.ArcDirection
UnityEngine.UIElements.ArcDirection = {}
---@alias CS.UnityEngine.UIElements.ArcDirection UnityEngine.UIElements.ArcDirection
CS.UnityEngine.UIElements.ArcDirection = UnityEngine.UIElements.ArcDirection


---@class UnityEngine.UIElements.MeshBuilderNative : System.Object
---@field kEpsilon number
UnityEngine.UIElements.MeshBuilderNative = {}
---@alias CS.UnityEngine.UIElements.MeshBuilderNative UnityEngine.UIElements.MeshBuilderNative
CS.UnityEngine.UIElements.MeshBuilderNative = UnityEngine.UIElements.MeshBuilderNative

---@param borderParams UnityEngine.UIElements.MeshBuilderNative.NativeBorderParams
---@param posZ number
---@return UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.MeshBuilderNative.MakeBorder(borderParams, posZ) end
---@param rectParams UnityEngine.UIElements.MeshBuilderNative.NativeRectParams
---@param posZ number
---@return UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.MeshBuilderNative.MakeSolidRect(rectParams, posZ) end
---@param rectParams UnityEngine.UIElements.MeshBuilderNative.NativeRectParams
---@param posZ number
---@return UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.MeshBuilderNative.MakeTexturedRect(rectParams, posZ) end
---@param svgVertices UnityEngine.UIElements.Vertex[]
---@param svgIndices System.UInt16[]
---@param svgWidth number
---@param svgHeight number
---@param targetRect UnityEngine.Rect
---@param sourceUV UnityEngine.Rect
---@param scaleMode UnityEngine.ScaleMode
---@param tint UnityEngine.Color
---@param colorPage UnityEngine.UIElements.MeshBuilderNative.NativeColorPage
---@param settingIndexOffset number
---@param ref_finalVertexCount number
---@param ref_finalIndexCount number
---@return UnityEngine.UIElements.MeshWriteDataInterface,number,number
function UnityEngine.UIElements.MeshBuilderNative.MakeVectorGraphicsStretchBackground(svgVertices, svgIndices, svgWidth, svgHeight, targetRect, sourceUV, scaleMode, tint, colorPage, settingIndexOffset, ref_finalVertexCount, ref_finalIndexCount) end
---@param svgVertices UnityEngine.UIElements.Vertex[]
---@param svgIndices System.UInt16[]
---@param svgWidth number
---@param svgHeight number
---@param targetRect UnityEngine.Rect
---@param sliceLTRB UnityEngine.Vector4
---@param tint UnityEngine.Color
---@param colorPage UnityEngine.UIElements.MeshBuilderNative.NativeColorPage
---@param settingIndexOffset number
---@return UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.MeshBuilderNative.MakeVectorGraphics9SliceBackground(svgVertices, svgIndices, svgWidth, svgHeight, targetRect, sliceLTRB, tint, colorPage, settingIndexOffset) end

---@class UnityEngine.UIElements.MeshBuilderNative.NativeColorPage : System.ValueType
---@field isValid number
---@field pageAndID UnityEngine.Color32
UnityEngine.UIElements.MeshBuilderNative.NativeColorPage = {}
---@alias CS.UnityEngine.UIElements.MeshBuilderNative.NativeColorPage UnityEngine.UIElements.MeshBuilderNative.NativeColorPage
CS.UnityEngine.UIElements.MeshBuilderNative.NativeColorPage = UnityEngine.UIElements.MeshBuilderNative.NativeColorPage


---@class UnityEngine.UIElements.MeshBuilderNative.NativeBorderParams : System.ValueType
---@field rect UnityEngine.Rect
---@field leftColor UnityEngine.Color
---@field topColor UnityEngine.Color
---@field rightColor UnityEngine.Color
---@field bottomColor UnityEngine.Color
---@field leftWidth number
---@field topWidth number
---@field rightWidth number
---@field bottomWidth number
---@field topLeftRadius UnityEngine.Vector2
---@field topRightRadius UnityEngine.Vector2
---@field bottomRightRadius UnityEngine.Vector2
---@field bottomLeftRadius UnityEngine.Vector2
UnityEngine.UIElements.MeshBuilderNative.NativeBorderParams = {}
---@alias CS.UnityEngine.UIElements.MeshBuilderNative.NativeBorderParams UnityEngine.UIElements.MeshBuilderNative.NativeBorderParams
CS.UnityEngine.UIElements.MeshBuilderNative.NativeBorderParams = UnityEngine.UIElements.MeshBuilderNative.NativeBorderParams


---@class UnityEngine.UIElements.MeshBuilderNative.NativeRectParams : System.ValueType
---@field rect UnityEngine.Rect
---@field subRect UnityEngine.Rect
---@field uv UnityEngine.Rect
---@field uvRegion UnityEngine.Rect
---@field color UnityEngine.Color
---@field scaleMode UnityEngine.ScaleMode
---@field topLeftRadius UnityEngine.Vector2
---@field topRightRadius UnityEngine.Vector2
---@field bottomRightRadius UnityEngine.Vector2
---@field bottomLeftRadius UnityEngine.Vector2
---@field backgroundRepeatRect UnityEngine.Rect
---@field contentSize UnityEngine.Vector2
---@field textureSize UnityEngine.Vector2
---@field texturePixelsPerPoint number
---@field leftSlice number
---@field topSlice number
---@field rightSlice number
---@field bottomSlice number
---@field sliceScale number
---@field rectInset UnityEngine.Vector4
---@field colorPage UnityEngine.UIElements.MeshBuilderNative.NativeColorPage
UnityEngine.UIElements.MeshBuilderNative.NativeRectParams = {}
---@alias CS.UnityEngine.UIElements.MeshBuilderNative.NativeRectParams UnityEngine.UIElements.MeshBuilderNative.NativeRectParams
CS.UnityEngine.UIElements.MeshBuilderNative.NativeRectParams = UnityEngine.UIElements.MeshBuilderNative.NativeRectParams


---@class UnityEngine.UIElements.TextNativeSettings : System.ValueType
---@field text string
---@field font UnityEngine.Font
---@field size number
---@field scaling number
---@field style UnityEngine.FontStyle
---@field color UnityEngine.Color
---@field anchor UnityEngine.TextAnchor
---@field wordWrap boolean
---@field wordWrapWidth number
---@field richText boolean
UnityEngine.UIElements.TextNativeSettings = {}
---@alias CS.UnityEngine.UIElements.TextNativeSettings UnityEngine.UIElements.TextNativeSettings
CS.UnityEngine.UIElements.TextNativeSettings = UnityEngine.UIElements.TextNativeSettings


---@class UnityEngine.UIElements.TextVertex : System.ValueType
---@field position UnityEngine.Vector3
---@field color UnityEngine.Color32
---@field uv0 UnityEngine.Vector2
UnityEngine.UIElements.TextVertex = {}
---@alias CS.UnityEngine.UIElements.TextVertex UnityEngine.UIElements.TextVertex
CS.UnityEngine.UIElements.TextVertex = UnityEngine.UIElements.TextVertex


---@class UnityEngine.UIElements.TextNative : System.Object
UnityEngine.UIElements.TextNative = {}
---@alias CS.UnityEngine.UIElements.TextNative UnityEngine.UIElements.TextNative
CS.UnityEngine.UIElements.TextNative = UnityEngine.UIElements.TextNative

---@param settings UnityEngine.UIElements.TextNativeSettings
---@param rect UnityEngine.Rect
---@param cursorIndex number
---@return UnityEngine.Vector2
function UnityEngine.UIElements.TextNative.GetCursorPosition(settings, rect, cursorIndex) end
---@param settings UnityEngine.UIElements.TextNativeSettings
---@return number
function UnityEngine.UIElements.TextNative.ComputeTextWidth(settings) end
---@param settings UnityEngine.UIElements.TextNativeSettings
---@return number
function UnityEngine.UIElements.TextNative.ComputeTextHeight(settings) end
---@param settings UnityEngine.UIElements.TextNativeSettings
---@return Unity.Collections.NativeArray
function UnityEngine.UIElements.TextNative.GetVertices(settings) end
---@param settings UnityEngine.UIElements.TextNativeSettings
---@param screenRect UnityEngine.Rect
---@return UnityEngine.Vector2
function UnityEngine.UIElements.TextNative.GetOffset(settings, screenRect) end
---@param worldMatrix UnityEngine.Matrix4x4
---@param pixelsPerPoint number
---@return number
function UnityEngine.UIElements.TextNative.ComputeTextScaling(worldMatrix, pixelsPerPoint) end

---@class UnityEngine.UIElements.UIElementsRuntimeUtilityNative : System.Object
UnityEngine.UIElements.UIElementsRuntimeUtilityNative = {}
---@alias CS.UnityEngine.UIElements.UIElementsRuntimeUtilityNative UnityEngine.UIElements.UIElementsRuntimeUtilityNative
CS.UnityEngine.UIElements.UIElementsRuntimeUtilityNative = UnityEngine.UIElements.UIElementsRuntimeUtilityNative

function UnityEngine.UIElements.UIElementsRuntimeUtilityNative.RepaintOverlayPanels() end
function UnityEngine.UIElements.UIElementsRuntimeUtilityNative.UpdateRuntimePanels() end
function UnityEngine.UIElements.UIElementsRuntimeUtilityNative.RepaintOffscreenPanels() end
function UnityEngine.UIElements.UIElementsRuntimeUtilityNative.RegisterPlayerloopCallback() end
function UnityEngine.UIElements.UIElementsRuntimeUtilityNative.UnregisterPlayerloopCallback() end
function UnityEngine.UIElements.UIElementsRuntimeUtilityNative.VisualElementCreation() end

---@class UnityEngine.UIElements.ObjectPool : System.Object
---@field maxSize number
UnityEngine.UIElements.ObjectPool = {}
---@alias CS.UnityEngine.UIElements.ObjectPool UnityEngine.UIElements.ObjectPool
CS.UnityEngine.UIElements.ObjectPool = UnityEngine.UIElements.ObjectPool

---@param CreateFunc System.Func[T]
---@param maxSize number
---@return UnityEngine.UIElements.ObjectPool
function UnityEngine.UIElements.ObjectPool.New(CreateFunc, maxSize) end
---@return number
function UnityEngine.UIElements.ObjectPool:Size() end
function UnityEngine.UIElements.ObjectPool:Clear() end
---@return T
function UnityEngine.UIElements.ObjectPool:Get() end
---@param element T
function UnityEngine.UIElements.ObjectPool:Release(element) end

---@class UnityEngine.UIElements.ContextType
---@field Player UnityEngine.UIElements.ContextType
---@field Editor UnityEngine.UIElements.ContextType
UnityEngine.UIElements.ContextType = {}
---@alias CS.UnityEngine.UIElements.ContextType UnityEngine.UIElements.ContextType
CS.UnityEngine.UIElements.ContextType = UnityEngine.UIElements.ContextType


---@class UnityEngine.UIElements.VersionChangeType
---@field Bindings UnityEngine.UIElements.VersionChangeType
---@field ViewData UnityEngine.UIElements.VersionChangeType
---@field Hierarchy UnityEngine.UIElements.VersionChangeType
---@field Layout UnityEngine.UIElements.VersionChangeType
---@field StyleSheet UnityEngine.UIElements.VersionChangeType
---@field Styles UnityEngine.UIElements.VersionChangeType
---@field Overflow UnityEngine.UIElements.VersionChangeType
---@field BorderRadius UnityEngine.UIElements.VersionChangeType
---@field BorderWidth UnityEngine.UIElements.VersionChangeType
---@field Transform UnityEngine.UIElements.VersionChangeType
---@field Size UnityEngine.UIElements.VersionChangeType
---@field Repaint UnityEngine.UIElements.VersionChangeType
---@field Opacity UnityEngine.UIElements.VersionChangeType
---@field Color UnityEngine.UIElements.VersionChangeType
---@field RenderHints UnityEngine.UIElements.VersionChangeType
---@field TransitionProperty UnityEngine.UIElements.VersionChangeType
---@field EventCallbackCategories UnityEngine.UIElements.VersionChangeType
---@field Picking UnityEngine.UIElements.VersionChangeType
UnityEngine.UIElements.VersionChangeType = {}
---@alias CS.UnityEngine.UIElements.VersionChangeType UnityEngine.UIElements.VersionChangeType
CS.UnityEngine.UIElements.VersionChangeType = UnityEngine.UIElements.VersionChangeType


---@class UnityEngine.UIElements.UsageHints
---@field None UnityEngine.UIElements.UsageHints
---@field DynamicTransform UnityEngine.UIElements.UsageHints
---@field GroupTransform UnityEngine.UIElements.UsageHints
---@field MaskContainer UnityEngine.UIElements.UsageHints
---@field DynamicColor UnityEngine.UIElements.UsageHints
UnityEngine.UIElements.UsageHints = {}
---@alias CS.UnityEngine.UIElements.UsageHints UnityEngine.UIElements.UsageHints
CS.UnityEngine.UIElements.UsageHints = UnityEngine.UIElements.UsageHints


---@class UnityEngine.UIElements.RenderHints
---@field None UnityEngine.UIElements.RenderHints
---@field GroupTransform UnityEngine.UIElements.RenderHints
---@field BoneTransform UnityEngine.UIElements.RenderHints
---@field ClipWithScissors UnityEngine.UIElements.RenderHints
---@field MaskContainer UnityEngine.UIElements.RenderHints
---@field DynamicColor UnityEngine.UIElements.RenderHints
---@field DirtyOffset UnityEngine.UIElements.RenderHints
---@field DirtyGroupTransform UnityEngine.UIElements.RenderHints
---@field DirtyBoneTransform UnityEngine.UIElements.RenderHints
---@field DirtyClipWithScissors UnityEngine.UIElements.RenderHints
---@field DirtyMaskContainer UnityEngine.UIElements.RenderHints
---@field DirtyDynamicColor UnityEngine.UIElements.RenderHints
---@field DirtyAll UnityEngine.UIElements.RenderHints
UnityEngine.UIElements.RenderHints = {}
---@alias CS.UnityEngine.UIElements.RenderHints UnityEngine.UIElements.RenderHints
CS.UnityEngine.UIElements.RenderHints = UnityEngine.UIElements.RenderHints


---@class UnityEngine.UIElements.PanelClearFlags
---@field None UnityEngine.UIElements.PanelClearFlags
---@field Color UnityEngine.UIElements.PanelClearFlags
---@field Depth UnityEngine.UIElements.PanelClearFlags
---@field All UnityEngine.UIElements.PanelClearFlags
UnityEngine.UIElements.PanelClearFlags = {}
---@alias CS.UnityEngine.UIElements.PanelClearFlags UnityEngine.UIElements.PanelClearFlags
CS.UnityEngine.UIElements.PanelClearFlags = UnityEngine.UIElements.PanelClearFlags


---@class UnityEngine.UIElements.PanelClearSettings : System.ValueType
---@field clearDepthStencil boolean
---@field clearColor boolean
---@field color UnityEngine.Color
UnityEngine.UIElements.PanelClearSettings = {}
---@alias CS.UnityEngine.UIElements.PanelClearSettings UnityEngine.UIElements.PanelClearSettings
CS.UnityEngine.UIElements.PanelClearSettings = UnityEngine.UIElements.PanelClearSettings


---@class UnityEngine.UIElements.RepaintData : System.Object
---@field currentOffset UnityEngine.Matrix4x4
---@field mousePosition UnityEngine.Vector2
---@field currentWorldClip UnityEngine.Rect
---@field repaintEvent UnityEngine.Event
UnityEngine.UIElements.RepaintData = {}
---@alias CS.UnityEngine.UIElements.RepaintData UnityEngine.UIElements.RepaintData
CS.UnityEngine.UIElements.RepaintData = UnityEngine.UIElements.RepaintData

---@return UnityEngine.UIElements.RepaintData
function UnityEngine.UIElements.RepaintData.New() end

---@class UnityEngine.UIElements.HierarchyEvent : System.MulticastDelegate
UnityEngine.UIElements.HierarchyEvent = {}
---@alias CS.UnityEngine.UIElements.HierarchyEvent UnityEngine.UIElements.HierarchyEvent
CS.UnityEngine.UIElements.HierarchyEvent = UnityEngine.UIElements.HierarchyEvent

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.HierarchyEvent
function UnityEngine.UIElements.HierarchyEvent.New(object, method) end
---@param ve UnityEngine.UIElements.VisualElement
---@param changeType UnityEngine.UIElements.HierarchyChangeType
function UnityEngine.UIElements.HierarchyEvent:Invoke(ve, changeType) end
---@param ve UnityEngine.UIElements.VisualElement
---@param changeType UnityEngine.UIElements.HierarchyChangeType
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.HierarchyEvent:BeginInvoke(ve, changeType, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.UIElements.HierarchyEvent:EndInvoke(result) end

---@class UnityEngine.UIElements.IGlobalPanelDebugger
UnityEngine.UIElements.IGlobalPanelDebugger = {}
---@alias CS.UnityEngine.UIElements.IGlobalPanelDebugger UnityEngine.UIElements.IGlobalPanelDebugger
CS.UnityEngine.UIElements.IGlobalPanelDebugger = UnityEngine.UIElements.IGlobalPanelDebugger

---@param panel UnityEngine.UIElements.IPanel
---@param ev UnityEngine.UIElements.IMouseEvent
---@return boolean
function UnityEngine.UIElements.IGlobalPanelDebugger:InterceptMouseEvent(panel, ev) end
---@param panel UnityEngine.UIElements.IPanel
---@param ev UnityEngine.UIElements.ContextClickEvent
function UnityEngine.UIElements.IGlobalPanelDebugger:OnContextClick(panel, ev) end

---@class UnityEngine.UIElements.IPanelDebugger
---@field panelDebug UnityEngine.UIElements.IPanelDebug
UnityEngine.UIElements.IPanelDebugger = {}
---@alias CS.UnityEngine.UIElements.IPanelDebugger UnityEngine.UIElements.IPanelDebugger
CS.UnityEngine.UIElements.IPanelDebugger = UnityEngine.UIElements.IPanelDebugger

function UnityEngine.UIElements.IPanelDebugger:Disconnect() end
function UnityEngine.UIElements.IPanelDebugger:Refresh() end
---@param ele UnityEngine.UIElements.VisualElement
---@param changeTypeFlag UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.IPanelDebugger:OnVersionChanged(ele, changeTypeFlag) end
---@param ev UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.IPanelDebugger:InterceptEvent(ev) end
---@param ev UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.IPanelDebugger:PostProcessEvent(ev) end

---@class UnityEngine.UIElements.IPanelDebug
---@field panel UnityEngine.UIElements.IPanel
---@field debuggerOverlayPanel UnityEngine.UIElements.IPanel
---@field visualTree UnityEngine.UIElements.VisualElement
---@field debugContainer UnityEngine.UIElements.VisualElement
---@field hasAttachedDebuggers boolean
UnityEngine.UIElements.IPanelDebug = {}
---@alias CS.UnityEngine.UIElements.IPanelDebug UnityEngine.UIElements.IPanelDebug
CS.UnityEngine.UIElements.IPanelDebug = UnityEngine.UIElements.IPanelDebug

---@param debugger UnityEngine.UIElements.IPanelDebugger
function UnityEngine.UIElements.IPanelDebug:AttachDebugger(debugger) end
---@param debugger UnityEngine.UIElements.IPanelDebugger
function UnityEngine.UIElements.IPanelDebug:DetachDebugger(debugger) end
function UnityEngine.UIElements.IPanelDebug:DetachAllDebuggers() end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.IPanelDebug:GetAttachedDebuggers() end
function UnityEngine.UIElements.IPanelDebug:MarkDirtyRepaint() end
function UnityEngine.UIElements.IPanelDebug:MarkDebugContainerDirtyRepaint() end
function UnityEngine.UIElements.IPanelDebug:Refresh() end
---@param ele UnityEngine.UIElements.VisualElement
---@param changeTypeFlag UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.IPanelDebug:OnVersionChanged(ele, changeTypeFlag) end
---@param ev UnityEngine.UIElements.EventBase
---@return boolean
function UnityEngine.UIElements.IPanelDebug:InterceptEvent(ev) end
---@param ev UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.IPanelDebug:PostProcessEvent(ev) end

---@class UnityEngine.UIElements.IPanel
---@field visualTree UnityEngine.UIElements.VisualElement
---@field dispatcher UnityEngine.UIElements.EventDispatcher
---@field contextType UnityEngine.UIElements.ContextType
---@field focusController UnityEngine.UIElements.FocusController
---@field contextualMenuManager UnityEngine.UIElements.ContextualMenuManager
---@field isDirty boolean
UnityEngine.UIElements.IPanel = {}
---@alias CS.UnityEngine.UIElements.IPanel UnityEngine.UIElements.IPanel
CS.UnityEngine.UIElements.IPanel = UnityEngine.UIElements.IPanel

---@param point UnityEngine.Vector2
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.IPanel:Pick(point) end
---@param point UnityEngine.Vector2
---@param picked System.Collections.Generic.List
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.IPanel:PickAll(point, picked) end
function UnityEngine.UIElements.IPanel:ResetDynamicAtlas() end
---@param texture UnityEngine.Texture2D
function UnityEngine.UIElements.IPanel:SetTextureDirty(texture) end
---@param pointerId number
---@return UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.IPanel:GetCapturingElement(pointerId) end
---@param pointerId number
function UnityEngine.UIElements.IPanel:ReleasePointer(pointerId) end

---@class UnityEngine.UIElements.BaseVisualElementPanel : System.Object
---@field IMGUIEventInterests UnityEngine.EventInterests
---@field ownerObject UnityEngine.ScriptableObject
---@field saveViewData UnityEngine.UIElements.SavePersistentViewData
---@field getViewDataDictionary UnityEngine.UIElements.GetViewDataDictionary
---@field IMGUIContainersCount number
---@field focusController UnityEngine.UIElements.FocusController
---@field rootIMGUIContainer UnityEngine.UIElements.IMGUIContainer
---@field enableAssetReload boolean
---@field scaledPixelsPerPoint number
---@field referenceSpritePixelsPerUnit number
---@field clearFlags UnityEngine.UIElements.PanelClearFlags
---@field isDirty boolean
---@field contextualMenuManager UnityEngine.UIElements.ContextualMenuManager
---@field visualTree UnityEngine.UIElements.VisualElement
---@field dispatcher UnityEngine.UIElements.EventDispatcher
---@field contextType UnityEngine.UIElements.ContextType
---@field atlas UnityEngine.UIElements.AtlasBase
---@field panelDebug UnityEngine.UIElements.IPanelDebug
---@field liveReloadSystem UnityEngine.UIElements.ILiveReloadSystem
UnityEngine.UIElements.BaseVisualElementPanel = {}
---@alias CS.UnityEngine.UIElements.BaseVisualElementPanel UnityEngine.UIElements.BaseVisualElementPanel
CS.UnityEngine.UIElements.BaseVisualElementPanel = UnityEngine.UIElements.BaseVisualElementPanel

function UnityEngine.UIElements.BaseVisualElementPanel:Dispose() end
---@param e UnityEngine.Event
function UnityEngine.UIElements.BaseVisualElementPanel:Repaint(e) end
function UnityEngine.UIElements.BaseVisualElementPanel:ValidateFocus() end
function UnityEngine.UIElements.BaseVisualElementPanel:ValidateLayout() end
function UnityEngine.UIElements.BaseVisualElementPanel:UpdateAnimations() end
function UnityEngine.UIElements.BaseVisualElementPanel:UpdateBindings() end
function UnityEngine.UIElements.BaseVisualElementPanel:ApplyStyles() end
function UnityEngine.UIElements.BaseVisualElementPanel:UpdateAssetTrackers() end
function UnityEngine.UIElements.BaseVisualElementPanel:DirtyStyleSheets() end
---@param point UnityEngine.Vector2
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.BaseVisualElementPanel:Pick(point) end
---@param point UnityEngine.Vector2
---@param picked System.Collections.Generic.List
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.BaseVisualElementPanel:PickAll(point, picked) end
function UnityEngine.UIElements.BaseVisualElementPanel:Update() end

---@class UnityEngine.UIElements.InitEditorUpdaterFunction : System.MulticastDelegate
UnityEngine.UIElements.InitEditorUpdaterFunction = {}
---@alias CS.UnityEngine.UIElements.InitEditorUpdaterFunction UnityEngine.UIElements.InitEditorUpdaterFunction
CS.UnityEngine.UIElements.InitEditorUpdaterFunction = UnityEngine.UIElements.InitEditorUpdaterFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.InitEditorUpdaterFunction
function UnityEngine.UIElements.InitEditorUpdaterFunction.New(object, method) end
---@param panel UnityEngine.UIElements.BaseVisualElementPanel
---@param visualTreeUpdater UnityEngine.UIElements.VisualTreeUpdater
function UnityEngine.UIElements.InitEditorUpdaterFunction:Invoke(panel, visualTreeUpdater) end
---@param panel UnityEngine.UIElements.BaseVisualElementPanel
---@param visualTreeUpdater UnityEngine.UIElements.VisualTreeUpdater
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.InitEditorUpdaterFunction:BeginInvoke(panel, visualTreeUpdater, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.UIElements.InitEditorUpdaterFunction:EndInvoke(result) end

---@class UnityEngine.UIElements.LoadResourceFunction : System.MulticastDelegate
UnityEngine.UIElements.LoadResourceFunction = {}
---@alias CS.UnityEngine.UIElements.LoadResourceFunction UnityEngine.UIElements.LoadResourceFunction
CS.UnityEngine.UIElements.LoadResourceFunction = UnityEngine.UIElements.LoadResourceFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.LoadResourceFunction
function UnityEngine.UIElements.LoadResourceFunction.New(object, method) end
---@param pathName string
---@param type System.Type
---@param dpiScaling number
---@return UnityEngine.Object
function UnityEngine.UIElements.LoadResourceFunction:Invoke(pathName, type, dpiScaling) end
---@param pathName string
---@param type System.Type
---@param dpiScaling number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.LoadResourceFunction:BeginInvoke(pathName, type, dpiScaling, callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.Object
function UnityEngine.UIElements.LoadResourceFunction:EndInvoke(result) end

---@class UnityEngine.UIElements.TimeMsFunction : System.MulticastDelegate
UnityEngine.UIElements.TimeMsFunction = {}
---@alias CS.UnityEngine.UIElements.TimeMsFunction UnityEngine.UIElements.TimeMsFunction
CS.UnityEngine.UIElements.TimeMsFunction = UnityEngine.UIElements.TimeMsFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.TimeMsFunction
function UnityEngine.UIElements.TimeMsFunction.New(object, method) end
---@return number
function UnityEngine.UIElements.TimeMsFunction:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.TimeMsFunction:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return number
function UnityEngine.UIElements.TimeMsFunction:EndInvoke(result) end

---@class UnityEngine.UIElements.GetViewDataDictionary : System.MulticastDelegate
UnityEngine.UIElements.GetViewDataDictionary = {}
---@alias CS.UnityEngine.UIElements.GetViewDataDictionary UnityEngine.UIElements.GetViewDataDictionary
CS.UnityEngine.UIElements.GetViewDataDictionary = UnityEngine.UIElements.GetViewDataDictionary

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.GetViewDataDictionary
function UnityEngine.UIElements.GetViewDataDictionary.New(object, method) end
---@return UnityEngine.UIElements.ISerializableJsonDictionary
function UnityEngine.UIElements.GetViewDataDictionary:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.GetViewDataDictionary:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.UIElements.ISerializableJsonDictionary
function UnityEngine.UIElements.GetViewDataDictionary:EndInvoke(result) end

---@class UnityEngine.UIElements.SavePersistentViewData : System.MulticastDelegate
UnityEngine.UIElements.SavePersistentViewData = {}
---@alias CS.UnityEngine.UIElements.SavePersistentViewData UnityEngine.UIElements.SavePersistentViewData
CS.UnityEngine.UIElements.SavePersistentViewData = UnityEngine.UIElements.SavePersistentViewData

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.SavePersistentViewData
function UnityEngine.UIElements.SavePersistentViewData.New(object, method) end
function UnityEngine.UIElements.SavePersistentViewData:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.SavePersistentViewData:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.UIElements.SavePersistentViewData:EndInvoke(result) end

---@class UnityEngine.UIElements.Panel : UnityEngine.UIElements.BaseVisualElementPanel
---@field visualTree UnityEngine.UIElements.VisualElement
---@field dispatcher UnityEngine.UIElements.EventDispatcher
---@field timerEventScheduler UnityEngine.UIElements.TimerEventScheduler
---@field ownerObject UnityEngine.ScriptableObject
---@field contextType UnityEngine.UIElements.ContextType
---@field saveViewData UnityEngine.UIElements.SavePersistentViewData
---@field getViewDataDictionary UnityEngine.UIElements.GetViewDataDictionary
---@field focusController UnityEngine.UIElements.FocusController
---@field IMGUIEventInterests UnityEngine.EventInterests
---@field resetPanelRenderingOnAssetChange boolean
---@field IMGUIContainersCount number
---@field rootIMGUIContainer UnityEngine.UIElements.IMGUIContainer
---@field atlas UnityEngine.UIElements.AtlasBase
UnityEngine.UIElements.Panel = {}
---@alias CS.UnityEngine.UIElements.Panel UnityEngine.UIElements.Panel
CS.UnityEngine.UIElements.Panel = UnityEngine.UIElements.Panel

---@param ownerObject UnityEngine.ScriptableObject
---@param contextType UnityEngine.UIElements.ContextType
---@param dispatcher UnityEngine.UIElements.EventDispatcher
---@param initEditorUpdater UnityEngine.UIElements.InitEditorUpdaterFunction
---@return UnityEngine.UIElements.Panel
function UnityEngine.UIElements.Panel.New(ownerObject, contextType, dispatcher, initEditorUpdater) end
---@return number
function UnityEngine.UIElements.Panel.TimeSinceStartupMs() end
function UnityEngine.UIElements.Panel:ResetRendering() end
function UnityEngine.UIElements.Panel:ValidateFocus() end
---@param point UnityEngine.Vector2
---@param picked System.Collections.Generic.List
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.Panel:PickAll(point, picked) end
---@param point UnityEngine.Vector2
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.Panel:Pick(point) end
function UnityEngine.UIElements.Panel:ValidateLayout() end
function UnityEngine.UIElements.Panel:UpdateAnimations() end
function UnityEngine.UIElements.Panel:UpdateBindings() end
function UnityEngine.UIElements.Panel:ApplyStyles() end
function UnityEngine.UIElements.Panel:UpdateAssetTrackers() end
function UnityEngine.UIElements.Panel:DirtyStyleSheets() end
---@param e UnityEngine.Event
function UnityEngine.UIElements.Panel:Repaint(e) end

---@class UnityEngine.UIElements.BaseRuntimePanel : UnityEngine.UIElements.Panel
---@field selectableGameObject UnityEngine.GameObject
---@field sortingPriority number
---@field screenToPanelSpace System.Func
UnityEngine.UIElements.BaseRuntimePanel = {}
---@alias CS.UnityEngine.UIElements.BaseRuntimePanel UnityEngine.UIElements.BaseRuntimePanel
CS.UnityEngine.UIElements.BaseRuntimePanel = UnityEngine.UIElements.BaseRuntimePanel

---@param e UnityEngine.Event
function UnityEngine.UIElements.BaseRuntimePanel:Repaint(e) end

---@class UnityEngine.UIElements.IRuntimePanelComponent
---@field panel UnityEngine.UIElements.IPanel
UnityEngine.UIElements.IRuntimePanelComponent = {}
---@alias CS.UnityEngine.UIElements.IRuntimePanelComponent UnityEngine.UIElements.IRuntimePanelComponent
CS.UnityEngine.UIElements.IRuntimePanelComponent = UnityEngine.UIElements.IRuntimePanelComponent


---@class UnityEngine.UIElements.PenButton
---@field PenContact UnityEngine.UIElements.PenButton
---@field PenBarrel UnityEngine.UIElements.PenButton
---@field PenEraser UnityEngine.UIElements.PenButton
UnityEngine.UIElements.PenButton = {}
---@alias CS.UnityEngine.UIElements.PenButton UnityEngine.UIElements.PenButton
CS.UnityEngine.UIElements.PenButton = UnityEngine.UIElements.PenButton


---@class UnityEngine.UIElements.PointerCaptureHelper : System.Object
UnityEngine.UIElements.PointerCaptureHelper = {}
---@alias CS.UnityEngine.UIElements.PointerCaptureHelper UnityEngine.UIElements.PointerCaptureHelper
CS.UnityEngine.UIElements.PointerCaptureHelper = UnityEngine.UIElements.PointerCaptureHelper

---@param handler UnityEngine.UIElements.IEventHandler
---@param pointerId number
---@return boolean
function UnityEngine.UIElements.PointerCaptureHelper.HasPointerCapture(handler, pointerId) end
---@param handler UnityEngine.UIElements.IEventHandler
---@param pointerId number
function UnityEngine.UIElements.PointerCaptureHelper.CapturePointer(handler, pointerId) end
---@overload fun(handler: UnityEngine.UIElements.IEventHandler, pointerId: number)
---@param panel UnityEngine.UIElements.IPanel
---@param pointerId number
function UnityEngine.UIElements.PointerCaptureHelper.ReleasePointer(panel, pointerId) end
---@param panel UnityEngine.UIElements.IPanel
---@param pointerId number
---@return UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.PointerCaptureHelper.GetCapturingElement(panel, pointerId) end

---@class UnityEngine.UIElements.PointerDispatchState : System.Object
UnityEngine.UIElements.PointerDispatchState = {}
---@alias CS.UnityEngine.UIElements.PointerDispatchState UnityEngine.UIElements.PointerDispatchState
CS.UnityEngine.UIElements.PointerDispatchState = UnityEngine.UIElements.PointerDispatchState

---@return UnityEngine.UIElements.PointerDispatchState
function UnityEngine.UIElements.PointerDispatchState.New() end
---@param pointerId number
---@return UnityEngine.UIElements.IEventHandler
function UnityEngine.UIElements.PointerDispatchState:GetCapturingElement(pointerId) end
---@param handler UnityEngine.UIElements.IEventHandler
---@param pointerId number
---@return boolean
function UnityEngine.UIElements.PointerDispatchState:HasPointerCapture(handler, pointerId) end
---@param handler UnityEngine.UIElements.IEventHandler
---@param pointerId number
function UnityEngine.UIElements.PointerDispatchState:CapturePointer(handler, pointerId) end
---@overload fun(self: UnityEngine.UIElements.PointerDispatchState, pointerId: number)
---@param handler UnityEngine.UIElements.IEventHandler
---@param pointerId number
function UnityEngine.UIElements.PointerDispatchState:ReleasePointer(handler, pointerId) end
---@param pointerId number
function UnityEngine.UIElements.PointerDispatchState:ProcessPointerCapture(pointerId) end
---@param pointerId number
function UnityEngine.UIElements.PointerDispatchState:ActivateCompatibilityMouseEvents(pointerId) end
---@param pointerId number
function UnityEngine.UIElements.PointerDispatchState:PreventCompatibilityMouseEvents(pointerId) end
---@param evt UnityEngine.UIElements.IPointerEvent
---@return boolean
function UnityEngine.UIElements.PointerDispatchState:ShouldSendCompatibilityMouseEvents(evt) end

---@class UnityEngine.UIElements.PointerManipulator : UnityEngine.UIElements.MouseManipulator
UnityEngine.UIElements.PointerManipulator = {}
---@alias CS.UnityEngine.UIElements.PointerManipulator UnityEngine.UIElements.PointerManipulator
CS.UnityEngine.UIElements.PointerManipulator = UnityEngine.UIElements.PointerManipulator


---@class UnityEngine.UIElements.ProjectionUtils : System.Object
UnityEngine.UIElements.ProjectionUtils = {}
---@alias CS.UnityEngine.UIElements.ProjectionUtils UnityEngine.UIElements.ProjectionUtils
CS.UnityEngine.UIElements.ProjectionUtils = UnityEngine.UIElements.ProjectionUtils

---@param left number
---@param right number
---@param bottom number
---@param top number
---@param near number
---@param far number
---@return UnityEngine.Matrix4x4
function UnityEngine.UIElements.ProjectionUtils.Ortho(left, right, bottom, top, near, far) end

---@class UnityEngine.UIElements.SafeHandleAccess : System.ValueType
UnityEngine.UIElements.SafeHandleAccess = {}
---@alias CS.UnityEngine.UIElements.SafeHandleAccess UnityEngine.UIElements.SafeHandleAccess
CS.UnityEngine.UIElements.SafeHandleAccess = UnityEngine.UIElements.SafeHandleAccess

---@param ptr System.IntPtr
---@return UnityEngine.UIElements.SafeHandleAccess
function UnityEngine.UIElements.SafeHandleAccess.New(ptr) end
---@return boolean
function UnityEngine.UIElements.SafeHandleAccess:IsNull() end

---@class UnityEngine.UIElements.UIRAtlasAllocator : System.Object
---@field maxAtlasSize number
---@field maxImageWidth number
---@field maxImageHeight number
---@field virtualWidth number
---@field virtualHeight number
---@field physicalWidth number
---@field physicalHeight number
UnityEngine.UIElements.UIRAtlasAllocator = {}
---@alias CS.UnityEngine.UIElements.UIRAtlasAllocator UnityEngine.UIElements.UIRAtlasAllocator
CS.UnityEngine.UIElements.UIRAtlasAllocator = UnityEngine.UIElements.UIRAtlasAllocator

---@param initialAtlasSize number
---@param maxAtlasSize number
---@param sidePadding number
---@return UnityEngine.UIElements.UIRAtlasAllocator
function UnityEngine.UIElements.UIRAtlasAllocator.New(initialAtlasSize, maxAtlasSize, sidePadding) end
function UnityEngine.UIElements.UIRAtlasAllocator:Dispose() end
---@param width number
---@param height number
---@param out_location UnityEngine.RectInt
---@return boolean,UnityEngine.RectInt
function UnityEngine.UIElements.UIRAtlasAllocator:TryAllocate(width, height, out_location) end

---@class UnityEngine.UIElements.UIRAtlasAllocator.Row : System.Object
---@field Cursor number
---@field offsetX number
---@field offsetY number
---@field width number
---@field height number
UnityEngine.UIElements.UIRAtlasAllocator.Row = {}
---@alias CS.UnityEngine.UIElements.UIRAtlasAllocator.Row UnityEngine.UIElements.UIRAtlasAllocator.Row
CS.UnityEngine.UIElements.UIRAtlasAllocator.Row = UnityEngine.UIElements.UIRAtlasAllocator.Row

---@return UnityEngine.UIElements.UIRAtlasAllocator.Row
function UnityEngine.UIElements.UIRAtlasAllocator.Row.New() end
---@param offsetX number
---@param offsetY number
---@param width number
---@param height number
---@return UnityEngine.UIElements.UIRAtlasAllocator.Row
function UnityEngine.UIElements.UIRAtlasAllocator.Row.Acquire(offsetX, offsetY, width, height) end
function UnityEngine.UIElements.UIRAtlasAllocator.Row:Release() end

---@class UnityEngine.UIElements.UIRAtlasAllocator.AreaNode : System.Object
---@field rect UnityEngine.RectInt
---@field previous UnityEngine.UIElements.UIRAtlasAllocator.AreaNode
---@field next UnityEngine.UIElements.UIRAtlasAllocator.AreaNode
UnityEngine.UIElements.UIRAtlasAllocator.AreaNode = {}
---@alias CS.UnityEngine.UIElements.UIRAtlasAllocator.AreaNode UnityEngine.UIElements.UIRAtlasAllocator.AreaNode
CS.UnityEngine.UIElements.UIRAtlasAllocator.AreaNode = UnityEngine.UIElements.UIRAtlasAllocator.AreaNode

---@return UnityEngine.UIElements.UIRAtlasAllocator.AreaNode
function UnityEngine.UIElements.UIRAtlasAllocator.AreaNode.New() end
---@param rect UnityEngine.RectInt
---@return UnityEngine.UIElements.UIRAtlasAllocator.AreaNode
function UnityEngine.UIElements.UIRAtlasAllocator.AreaNode.Acquire(rect) end
function UnityEngine.UIElements.UIRAtlasAllocator.AreaNode:Release() end
function UnityEngine.UIElements.UIRAtlasAllocator.AreaNode:RemoveFromChain() end
---@param previous UnityEngine.UIElements.UIRAtlasAllocator.AreaNode
function UnityEngine.UIElements.UIRAtlasAllocator.AreaNode:AddAfter(previous) end

---@class UnityEngine.UIElements.DynamicAtlasCore : System.Object
---@field maxImageSize number
---@field format UnityEngine.RenderTextureFormat
---@field atlas UnityEngine.RenderTexture
UnityEngine.UIElements.DynamicAtlasCore = {}
---@alias CS.UnityEngine.UIElements.DynamicAtlasCore UnityEngine.UIElements.DynamicAtlasCore
CS.UnityEngine.UIElements.DynamicAtlasCore = UnityEngine.UIElements.DynamicAtlasCore

---@param format UnityEngine.RenderTextureFormat
---@param filterMode UnityEngine.FilterMode
---@param maxImageSize number
---@param initialSize number
---@param maxAtlasSize number
---@return UnityEngine.UIElements.DynamicAtlasCore
function UnityEngine.UIElements.DynamicAtlasCore.New(format, filterMode, maxImageSize, initialSize, maxAtlasSize) end
function UnityEngine.UIElements.DynamicAtlasCore:Dispose() end
---@return boolean
function UnityEngine.UIElements.DynamicAtlasCore:IsReleased() end
---@param image UnityEngine.Texture2D
---@param out_uvs UnityEngine.RectInt
---@param filter System.Func
---@return boolean,UnityEngine.RectInt
function UnityEngine.UIElements.DynamicAtlasCore:TryGetRect(image, out_uvs, filter) end
---@param image UnityEngine.Texture2D
function UnityEngine.UIElements.DynamicAtlasCore:UpdateTexture(image) end
---@param width number
---@param height number
---@param out_uvs UnityEngine.RectInt
---@return boolean,UnityEngine.RectInt
function UnityEngine.UIElements.DynamicAtlasCore:AllocateRect(width, height, out_uvs) end
---@param image UnityEngine.Texture
---@param srcRect UnityEngine.RectInt
---@param x number
---@param y number
---@param addBorder boolean
---@param tint UnityEngine.Color
function UnityEngine.UIElements.DynamicAtlasCore:EnqueueBlit(image, srcRect, x, y, addBorder, tint) end
function UnityEngine.UIElements.DynamicAtlasCore:Commit() end

---@class UnityEngine.UIElements.DynamicAtlasPage : System.Object
---@field textureId UnityEngine.UIElements.TextureId
---@field atlas UnityEngine.RenderTexture
---@field format UnityEngine.RenderTextureFormat
---@field filterMode UnityEngine.FilterMode
---@field minSize UnityEngine.Vector2Int
---@field maxSize UnityEngine.Vector2Int
---@field currentSize UnityEngine.Vector2Int
UnityEngine.UIElements.DynamicAtlasPage = {}
---@alias CS.UnityEngine.UIElements.DynamicAtlasPage UnityEngine.UIElements.DynamicAtlasPage
CS.UnityEngine.UIElements.DynamicAtlasPage = UnityEngine.UIElements.DynamicAtlasPage

---@param format UnityEngine.RenderTextureFormat
---@param filterMode UnityEngine.FilterMode
---@param minSize UnityEngine.Vector2Int
---@param maxSize UnityEngine.Vector2Int
---@return UnityEngine.UIElements.DynamicAtlasPage
function UnityEngine.UIElements.DynamicAtlasPage.New(format, filterMode, minSize, maxSize) end
function UnityEngine.UIElements.DynamicAtlasPage:Dispose() end
---@param image UnityEngine.Texture2D
---@param out_alloc UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
---@param out_rect UnityEngine.RectInt
---@return boolean,UnityEngine.UIElements.UIR.Allocator2D.Alloc2D,UnityEngine.RectInt
function UnityEngine.UIElements.DynamicAtlasPage:TryAdd(image, out_alloc, out_rect) end
---@param image UnityEngine.Texture2D
---@param rect UnityEngine.RectInt
function UnityEngine.UIElements.DynamicAtlasPage:Update(image, rect) end
---@param alloc UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
function UnityEngine.UIElements.DynamicAtlasPage:Remove(alloc) end
function UnityEngine.UIElements.DynamicAtlasPage:Commit() end

---@class UnityEngine.UIElements.UIRLayoutUpdater : UnityEngine.UIElements.BaseVisualTreeUpdater
---@field profilerMarker Unity.Profiling.ProfilerMarker
UnityEngine.UIElements.UIRLayoutUpdater = {}
---@alias CS.UnityEngine.UIElements.UIRLayoutUpdater UnityEngine.UIElements.UIRLayoutUpdater
CS.UnityEngine.UIElements.UIRLayoutUpdater = UnityEngine.UIElements.UIRLayoutUpdater

---@return UnityEngine.UIElements.UIRLayoutUpdater
function UnityEngine.UIElements.UIRLayoutUpdater.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.UIRLayoutUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.UIRLayoutUpdater:Update() end

---@class UnityEngine.UIElements.Vertex : System.ValueType
---@field nearZ number
---@field position UnityEngine.Vector3
---@field tint UnityEngine.Color32
---@field uv UnityEngine.Vector2
UnityEngine.UIElements.Vertex = {}
---@alias CS.UnityEngine.UIElements.Vertex UnityEngine.UIElements.Vertex
CS.UnityEngine.UIElements.Vertex = UnityEngine.UIElements.Vertex


---@class UnityEngine.UIElements.MeshWriteData : System.Object
---@field vertexCount number
---@field indexCount number
---@field uvRegion UnityEngine.Rect
UnityEngine.UIElements.MeshWriteData = {}
---@alias CS.UnityEngine.UIElements.MeshWriteData UnityEngine.UIElements.MeshWriteData
CS.UnityEngine.UIElements.MeshWriteData = UnityEngine.UIElements.MeshWriteData

---@param vertex UnityEngine.UIElements.Vertex
function UnityEngine.UIElements.MeshWriteData:SetNextVertex(vertex) end
---@param index number
function UnityEngine.UIElements.MeshWriteData:SetNextIndex(index) end
---@overload fun(self: UnityEngine.UIElements.MeshWriteData, vertices: UnityEngine.UIElements.Vertex[])
---@param vertices Unity.Collections.NativeSlice
function UnityEngine.UIElements.MeshWriteData:SetAllVertices(vertices) end
---@overload fun(self: UnityEngine.UIElements.MeshWriteData, indices: System.UInt16[])
---@param indices Unity.Collections.NativeSlice
function UnityEngine.UIElements.MeshWriteData:SetAllIndices(indices) end

---@class UnityEngine.UIElements.ColorPage : System.ValueType
---@field isValid boolean
---@field pageAndID UnityEngine.Color32
UnityEngine.UIElements.ColorPage = {}
---@alias CS.UnityEngine.UIElements.ColorPage UnityEngine.UIElements.ColorPage
CS.UnityEngine.UIElements.ColorPage = UnityEngine.UIElements.ColorPage

---@param renderChain UnityEngine.UIElements.UIR.RenderChain
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@return UnityEngine.UIElements.ColorPage
function UnityEngine.UIElements.ColorPage.Init(renderChain, alloc) end
---@return UnityEngine.UIElements.MeshBuilderNative.NativeColorPage
function UnityEngine.UIElements.ColorPage:ToNativeColorPage() end

---@class UnityEngine.UIElements.MeshGenerationContextUtils : System.Object
UnityEngine.UIElements.MeshGenerationContextUtils = {}
---@alias CS.UnityEngine.UIElements.MeshGenerationContextUtils UnityEngine.UIElements.MeshGenerationContextUtils
CS.UnityEngine.UIElements.MeshGenerationContextUtils = UnityEngine.UIElements.MeshGenerationContextUtils

---@param mgc UnityEngine.UIElements.MeshGenerationContext
---@param rectParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.MeshGenerationContextUtils.Rectangle(mgc, rectParams) end
---@param mgc UnityEngine.UIElements.MeshGenerationContext
---@param borderParams UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams
function UnityEngine.UIElements.MeshGenerationContextUtils.Border(mgc, borderParams) end
---@param mgc UnityEngine.UIElements.MeshGenerationContext
---@param te UnityEngine.UIElements.TextElement
function UnityEngine.UIElements.MeshGenerationContextUtils.Text(mgc, te) end
---@param ve UnityEngine.UIElements.VisualElement
---@param out_topLeft UnityEngine.Vector2
---@param out_bottomLeft UnityEngine.Vector2
---@param out_topRight UnityEngine.Vector2
---@param out_bottomRight UnityEngine.Vector2
---@return ,UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Vector2,UnityEngine.Vector2
function UnityEngine.UIElements.MeshGenerationContextUtils.GetVisualElementRadii(ve, out_topLeft, out_bottomLeft, out_topRight, out_bottomRight) end
---@param visualElement UnityEngine.UIElements.VisualElement
---@param ref_rectParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
---@return ,UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.MeshGenerationContextUtils.AdjustBackgroundSizeForBorders(visualElement, ref_rectParams) end

---@class UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams : System.ValueType
---@field rect UnityEngine.Rect
---@field playmodeTintColor UnityEngine.Color
---@field leftColor UnityEngine.Color
---@field topColor UnityEngine.Color
---@field rightColor UnityEngine.Color
---@field bottomColor UnityEngine.Color
---@field leftWidth number
---@field topWidth number
---@field rightWidth number
---@field bottomWidth number
---@field topLeftRadius UnityEngine.Vector2
---@field topRightRadius UnityEngine.Vector2
---@field bottomRightRadius UnityEngine.Vector2
---@field bottomLeftRadius UnityEngine.Vector2
---@field material UnityEngine.Material
UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams = {}
---@alias CS.UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams
CS.UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams = UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams


---@class UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams : System.ValueType
---@field rect UnityEngine.Rect
---@field uv UnityEngine.Rect
---@field color UnityEngine.Color
---@field subRect UnityEngine.Rect
---@field backgroundRepeatRect UnityEngine.Rect
---@field backgroundPositionX UnityEngine.UIElements.BackgroundPosition
---@field backgroundPositionY UnityEngine.UIElements.BackgroundPosition
---@field backgroundRepeat UnityEngine.UIElements.BackgroundRepeat
---@field backgroundSize UnityEngine.UIElements.BackgroundSize
---@field texture UnityEngine.Texture
---@field sprite UnityEngine.Sprite
---@field vectorImage UnityEngine.UIElements.VectorImage
---@field material UnityEngine.Material
---@field scaleMode UnityEngine.ScaleMode
---@field playmodeTintColor UnityEngine.Color
---@field topLeftRadius UnityEngine.Vector2
---@field topRightRadius UnityEngine.Vector2
---@field bottomRightRadius UnityEngine.Vector2
---@field bottomLeftRadius UnityEngine.Vector2
---@field contentSize UnityEngine.Vector2
---@field textureSize UnityEngine.Vector2
---@field leftSlice number
---@field topSlice number
---@field rightSlice number
---@field bottomSlice number
---@field sliceScale number
---@field rectInset UnityEngine.Vector4
UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams = {}
---@alias CS.UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
CS.UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams = UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams

---@param rect UnityEngine.Rect
---@param color UnityEngine.Color
---@param panelContext UnityEngine.UIElements.ContextType
---@return UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams.MakeSolid(rect, color, panelContext) end
---@param rect UnityEngine.Rect
---@param uv UnityEngine.Rect
---@param texture UnityEngine.Texture
---@param scaleMode UnityEngine.ScaleMode
---@param panelContext UnityEngine.UIElements.ContextType
---@return UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams.MakeTextured(rect, uv, texture, scaleMode, panelContext) end
---@param containerRect UnityEngine.Rect
---@param subRect UnityEngine.Rect
---@param sprite UnityEngine.Sprite
---@param scaleMode UnityEngine.ScaleMode
---@param panelContext UnityEngine.UIElements.ContextType
---@param hasRadius boolean
---@param ref_slices UnityEngine.Vector4
---@param useForRepeat boolean
---@return UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams,UnityEngine.Vector4
function UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams.MakeSprite(containerRect, subRect, sprite, scaleMode, panelContext, hasRadius, ref_slices, useForRepeat) end
---@param rect UnityEngine.Rect
---@param uv UnityEngine.Rect
---@param vectorImage UnityEngine.UIElements.VectorImage
---@param scaleMode UnityEngine.ScaleMode
---@param panelContext UnityEngine.UIElements.ContextType
---@return UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams.MakeVectorTextured(rect, uv, vectorImage, scaleMode, panelContext) end

---@class UnityEngine.UIElements.MeshGenerationContext : System.Object
---@field visualElement UnityEngine.UIElements.VisualElement
---@field painter2D UnityEngine.UIElements.Painter2D
UnityEngine.UIElements.MeshGenerationContext = {}
---@alias CS.UnityEngine.UIElements.MeshGenerationContext UnityEngine.UIElements.MeshGenerationContext
CS.UnityEngine.UIElements.MeshGenerationContext = UnityEngine.UIElements.MeshGenerationContext

---@param vertexCount number
---@param indexCount number
---@param texture UnityEngine.Texture
---@return UnityEngine.UIElements.MeshWriteData
function UnityEngine.UIElements.MeshGenerationContext:Allocate(vertexCount, indexCount, texture) end
---@param vectorImage UnityEngine.UIElements.VectorImage
---@param offset UnityEngine.Vector2
---@param rotationAngle UnityEngine.UIElements.Angle
---@param scale UnityEngine.Vector2
function UnityEngine.UIElements.MeshGenerationContext:DrawVectorImage(vectorImage, offset, rotationAngle, scale) end
---@param text string
---@param pos UnityEngine.Vector2
---@param fontSize number
---@param color UnityEngine.Color
---@param font UnityEngine.TextCore.Text.FontAsset
function UnityEngine.UIElements.MeshGenerationContext:DrawText(text, pos, fontSize, color, font) end
---@param rectParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.MeshGenerationContext:Rectangle(rectParams) end
---@param borderParams UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams
function UnityEngine.UIElements.MeshGenerationContext:Border(borderParams) end
---@param te UnityEngine.UIElements.TextElement
function UnityEngine.UIElements.MeshGenerationContext:Text(te) end

---@class UnityEngine.UIElements.MeshGenerationContext.MeshFlags
---@field None UnityEngine.UIElements.MeshGenerationContext.MeshFlags
---@field UVisDisplacement UnityEngine.UIElements.MeshGenerationContext.MeshFlags
---@field SkipDynamicAtlas UnityEngine.UIElements.MeshGenerationContext.MeshFlags
UnityEngine.UIElements.MeshGenerationContext.MeshFlags = {}
---@alias CS.UnityEngine.UIElements.MeshGenerationContext.MeshFlags UnityEngine.UIElements.MeshGenerationContext.MeshFlags
CS.UnityEngine.UIElements.MeshGenerationContext.MeshFlags = UnityEngine.UIElements.MeshGenerationContext.MeshFlags


---@class UnityEngine.UIElements.Painter2D : System.Object
---@field lineWidth number
---@field strokeColor UnityEngine.Color
---@field strokeGradient UnityEngine.Gradient
---@field fillColor UnityEngine.Color
---@field lineJoin UnityEngine.UIElements.LineJoin
---@field lineCap UnityEngine.UIElements.LineCap
---@field miterLimit number
UnityEngine.UIElements.Painter2D = {}
---@alias CS.UnityEngine.UIElements.Painter2D UnityEngine.UIElements.Painter2D
CS.UnityEngine.UIElements.Painter2D = UnityEngine.UIElements.Painter2D

---@return UnityEngine.UIElements.Painter2D
function UnityEngine.UIElements.Painter2D.New() end
function UnityEngine.UIElements.Painter2D:Clear() end
function UnityEngine.UIElements.Painter2D:Dispose() end
function UnityEngine.UIElements.Painter2D:BeginPath() end
function UnityEngine.UIElements.Painter2D:ClosePath() end
---@param pos UnityEngine.Vector2
function UnityEngine.UIElements.Painter2D:MoveTo(pos) end
---@param pos UnityEngine.Vector2
function UnityEngine.UIElements.Painter2D:LineTo(pos) end
---@param p1 UnityEngine.Vector2
---@param p2 UnityEngine.Vector2
---@param radius number
function UnityEngine.UIElements.Painter2D:ArcTo(p1, p2, radius) end
---@param center UnityEngine.Vector2
---@param radius number
---@param startAngle UnityEngine.UIElements.Angle
---@param endAngle UnityEngine.UIElements.Angle
---@param direction UnityEngine.UIElements.ArcDirection
function UnityEngine.UIElements.Painter2D:Arc(center, radius, startAngle, endAngle, direction) end
---@param p1 UnityEngine.Vector2
---@param p2 UnityEngine.Vector2
---@param p3 UnityEngine.Vector2
function UnityEngine.UIElements.Painter2D:BezierCurveTo(p1, p2, p3) end
---@param p1 UnityEngine.Vector2
---@param p2 UnityEngine.Vector2
function UnityEngine.UIElements.Painter2D:QuadraticCurveTo(p1, p2) end
function UnityEngine.UIElements.Painter2D:Stroke() end
---@param fillRule UnityEngine.UIElements.FillRule
function UnityEngine.UIElements.Painter2D:Fill(fillRule) end
---@param vectorImage UnityEngine.UIElements.VectorImage
---@return boolean
function UnityEngine.UIElements.Painter2D:SaveToVectorImage(vectorImage) end

---@class UnityEngine.UIElements.UIRRepaintUpdater : UnityEngine.UIElements.BaseVisualTreeUpdater
---@field profilerMarker Unity.Profiling.ProfilerMarker
---@field drawStats boolean
---@field breakBatches boolean
UnityEngine.UIElements.UIRRepaintUpdater = {}
---@alias CS.UnityEngine.UIElements.UIRRepaintUpdater UnityEngine.UIElements.UIRRepaintUpdater
CS.UnityEngine.UIElements.UIRRepaintUpdater = UnityEngine.UIElements.UIRRepaintUpdater

---@return UnityEngine.UIElements.UIRRepaintUpdater
function UnityEngine.UIElements.UIRRepaintUpdater.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.UIRRepaintUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.UIRRepaintUpdater:Update() end

---@class UnityEngine.UIElements.TextureId : System.ValueType
---@field invalid UnityEngine.UIElements.TextureId
---@field index number
UnityEngine.UIElements.TextureId = {}
---@alias CS.UnityEngine.UIElements.TextureId UnityEngine.UIElements.TextureId
CS.UnityEngine.UIElements.TextureId = UnityEngine.UIElements.TextureId

---@param index number
---@return UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.TextureId.New(index) end
---@return boolean
function UnityEngine.UIElements.TextureId:IsValid() end
---@return number
function UnityEngine.UIElements.TextureId:ConvertToGpu() end
---@overload fun(self: UnityEngine.UIElements.TextureId, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.TextureId
---@return boolean
function UnityEngine.UIElements.TextureId:Equals(other) end
---@return number
function UnityEngine.UIElements.TextureId:GetHashCode() end

---@class UnityEngine.UIElements.TextureRegistry : System.Object
---@field instance UnityEngine.UIElements.TextureRegistry
UnityEngine.UIElements.TextureRegistry = {}
---@alias CS.UnityEngine.UIElements.TextureRegistry UnityEngine.UIElements.TextureRegistry
CS.UnityEngine.UIElements.TextureRegistry = UnityEngine.UIElements.TextureRegistry

---@return UnityEngine.UIElements.TextureRegistry
function UnityEngine.UIElements.TextureRegistry.New() end
---@param id UnityEngine.UIElements.TextureId
---@return UnityEngine.Texture
function UnityEngine.UIElements.TextureRegistry:GetTexture(id) end
---@return UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.TextureRegistry:AllocAndAcquireDynamic() end
---@param id UnityEngine.UIElements.TextureId
---@param texture UnityEngine.Texture
function UnityEngine.UIElements.TextureRegistry:UpdateDynamic(id, texture) end
---@overload fun(self: UnityEngine.UIElements.TextureRegistry, tex: UnityEngine.Texture) : UnityEngine.UIElements.TextureId
---@param id UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.TextureRegistry:Acquire(id) end
---@param id UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.TextureRegistry:Release(id) end
---@param texture UnityEngine.Texture
---@return UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.TextureRegistry:TextureToId(texture) end
---@return UnityEngine.UIElements.TextureRegistry.Statistics
function UnityEngine.UIElements.TextureRegistry:GatherStatistics() end

---@class UnityEngine.UIElements.TextureRegistry.TextureInfo : System.ValueType
---@field texture UnityEngine.Texture
---@field dynamic boolean
---@field refCount number
UnityEngine.UIElements.TextureRegistry.TextureInfo = {}
---@alias CS.UnityEngine.UIElements.TextureRegistry.TextureInfo UnityEngine.UIElements.TextureRegistry.TextureInfo
CS.UnityEngine.UIElements.TextureRegistry.TextureInfo = UnityEngine.UIElements.TextureRegistry.TextureInfo


---@class UnityEngine.UIElements.TextureRegistry.Statistics : System.ValueType
---@field freeIdsCount number
---@field createdIdsCount number
---@field allocatedIdsTotalCount number
---@field allocatedIdsDynamicCount number
---@field allocatedIdsStaticCount number
---@field availableIdsCount number
UnityEngine.UIElements.TextureRegistry.Statistics = {}
---@alias CS.UnityEngine.UIElements.TextureRegistry.Statistics UnityEngine.UIElements.TextureRegistry.Statistics
CS.UnityEngine.UIElements.TextureRegistry.Statistics = UnityEngine.UIElements.TextureRegistry.Statistics


---@class UnityEngine.UIElements.UIRUtility : System.Object
---@field k_DefaultShaderName string
---@field k_DefaultWorldSpaceShaderName string
---@field k_Epsilon number
---@field k_ClearZ number
---@field k_MeshPosZ number
---@field k_MaskPosZ number
---@field k_MaxMaskDepth number
UnityEngine.UIElements.UIRUtility = {}
---@alias CS.UnityEngine.UIElements.UIRUtility UnityEngine.UIElements.UIRUtility
CS.UnityEngine.UIElements.UIRUtility = UnityEngine.UIElements.UIRUtility

---@param maskDepth number
---@param stencilRef number
---@return boolean
function UnityEngine.UIElements.UIRUtility.ShapeWindingIsClockwise(maskDepth, stencilRef) end
---@param rc UnityEngine.Rect
---@return UnityEngine.Vector4
function UnityEngine.UIElements.UIRUtility.ToVector4(rc) end
---@param ve UnityEngine.UIElements.VisualElement
---@return boolean
function UnityEngine.UIElements.UIRUtility.IsRoundRect(ve) end
---@param rotation UnityEngine.Quaternion
---@param ref_point UnityEngine.Vector2
---@return ,UnityEngine.Vector2
function UnityEngine.UIElements.UIRUtility.Multiply2D(rotation, ref_point) end
---@param ve UnityEngine.UIElements.VisualElement
---@return boolean
function UnityEngine.UIElements.UIRUtility.IsVectorImageBackground(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@return boolean
function UnityEngine.UIElements.UIRUtility.IsElementSelfHidden(ve) end
---@param obj UnityEngine.Object
function UnityEngine.UIElements.UIRUtility.Destroy(obj) end
---@param n number
---@return number
function UnityEngine.UIElements.UIRUtility.GetPrevPow2(n) end
---@param n number
---@return number
function UnityEngine.UIElements.UIRUtility.GetNextPow2(n) end
---@param n number
---@return number
function UnityEngine.UIElements.UIRUtility.GetNextPow2Exp(n) end

---@class UnityEngine.UIElements.TimerState : System.ValueType
---@field start number
---@field now number
---@field deltaTime number
UnityEngine.UIElements.TimerState = {}
---@alias CS.UnityEngine.UIElements.TimerState UnityEngine.UIElements.TimerState
CS.UnityEngine.UIElements.TimerState = UnityEngine.UIElements.TimerState

---@overload fun(self: UnityEngine.UIElements.TimerState, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.TimerState
---@return boolean
function UnityEngine.UIElements.TimerState:Equals(other) end
---@return number
function UnityEngine.UIElements.TimerState:GetHashCode() end

---@class UnityEngine.UIElements.IScheduler
UnityEngine.UIElements.IScheduler = {}
---@alias CS.UnityEngine.UIElements.IScheduler UnityEngine.UIElements.IScheduler
CS.UnityEngine.UIElements.IScheduler = UnityEngine.UIElements.IScheduler

---@param timerUpdateEvent System.Action
---@param delayMs number
---@return UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.IScheduler:ScheduleOnce(timerUpdateEvent, delayMs) end
---@param timerUpdateEvent System.Action
---@param delayMs number
---@param intervalMs number
---@param stopCondition System.Func
---@return UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.IScheduler:ScheduleUntil(timerUpdateEvent, delayMs, intervalMs, stopCondition) end
---@param timerUpdateEvent System.Action
---@param delayMs number
---@param intervalMs number
---@param durationMs number
---@return UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.IScheduler:ScheduleForDuration(timerUpdateEvent, delayMs, intervalMs, durationMs) end
---@param item UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.IScheduler:Unschedule(item) end
---@param item UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.IScheduler:Schedule(item) end
function UnityEngine.UIElements.IScheduler:UpdateScheduledEvents() end

---@class UnityEngine.UIElements.ScheduledItem : System.Object
---@field OnceCondition System.Func
---@field ForeverCondition System.Func
---@field timerUpdateStopCondition System.Func
---@field startMs number
---@field delayMs number
---@field intervalMs number
---@field endTimeMs number
UnityEngine.UIElements.ScheduledItem = {}
---@alias CS.UnityEngine.UIElements.ScheduledItem UnityEngine.UIElements.ScheduledItem
CS.UnityEngine.UIElements.ScheduledItem = UnityEngine.UIElements.ScheduledItem

---@return UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.ScheduledItem.New() end
---@param durationMs number
function UnityEngine.UIElements.ScheduledItem:SetDuration(durationMs) end
---@param state UnityEngine.UIElements.TimerState
function UnityEngine.UIElements.ScheduledItem:PerformTimerUpdate(state) end
---@return boolean
function UnityEngine.UIElements.ScheduledItem:ShouldUnschedule() end

---@class UnityEngine.UIElements.TimerEventScheduler : System.Object
UnityEngine.UIElements.TimerEventScheduler = {}
---@alias CS.UnityEngine.UIElements.TimerEventScheduler UnityEngine.UIElements.TimerEventScheduler
CS.UnityEngine.UIElements.TimerEventScheduler = UnityEngine.UIElements.TimerEventScheduler

---@return UnityEngine.UIElements.TimerEventScheduler
function UnityEngine.UIElements.TimerEventScheduler.New() end
---@param item UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.TimerEventScheduler:Schedule(item) end
---@param timerUpdateEvent System.Action
---@param delayMs number
---@return UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.TimerEventScheduler:ScheduleOnce(timerUpdateEvent, delayMs) end
---@param timerUpdateEvent System.Action
---@param delayMs number
---@param intervalMs number
---@param stopCondition System.Func
---@return UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.TimerEventScheduler:ScheduleUntil(timerUpdateEvent, delayMs, intervalMs, stopCondition) end
---@param timerUpdateEvent System.Action
---@param delayMs number
---@param intervalMs number
---@param durationMs number
---@return UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.TimerEventScheduler:ScheduleForDuration(timerUpdateEvent, delayMs, intervalMs, durationMs) end
---@param item UnityEngine.UIElements.ScheduledItem
function UnityEngine.UIElements.TimerEventScheduler:Unschedule(item) end
function UnityEngine.UIElements.TimerEventScheduler:UpdateScheduledEvents() end

---@class UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem : UnityEngine.UIElements.ScheduledItem
UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem = {}
---@alias CS.UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem
CS.UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem = UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem

---@param updateEvent System.Action
---@return UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem
function UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem.New(updateEvent) end
---@param state UnityEngine.UIElements.TimerState
function UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem:PerformTimerUpdate(state) end
---@return string
function UnityEngine.UIElements.TimerEventScheduler.TimerEventSchedulerItem:ToString() end

---@class UnityEngine.UIElements.Spacing : System.ValueType
---@field left number
---@field top number
---@field right number
---@field bottom number
---@field horizontal number
---@field vertical number
UnityEngine.UIElements.Spacing = {}
---@alias CS.UnityEngine.UIElements.Spacing UnityEngine.UIElements.Spacing
CS.UnityEngine.UIElements.Spacing = UnityEngine.UIElements.Spacing

---@param left number
---@param top number
---@param right number
---@param bottom number
---@return UnityEngine.UIElements.Spacing
function UnityEngine.UIElements.Spacing.New(left, top, right, bottom) end

---@class UnityEngine.UIElements.StringUtils : System.Object
UnityEngine.UIElements.StringUtils = {}
---@alias CS.UnityEngine.UIElements.StringUtils UnityEngine.UIElements.StringUtils
CS.UnityEngine.UIElements.StringUtils = UnityEngine.UIElements.StringUtils

---@param s string
---@param t string
---@return number
function UnityEngine.UIElements.StringUtils.LevenshteinDistance(s, t) end

---@class UnityEngine.UIElements.StringUtilsExtensions : System.Object
UnityEngine.UIElements.StringUtilsExtensions = {}
---@alias CS.UnityEngine.UIElements.StringUtilsExtensions UnityEngine.UIElements.StringUtilsExtensions
CS.UnityEngine.UIElements.StringUtilsExtensions = UnityEngine.UIElements.StringUtilsExtensions

---@param text string
---@return string
function UnityEngine.UIElements.StringUtilsExtensions.ToPascalCase(text) end
---@param text string
---@return string
function UnityEngine.UIElements.StringUtilsExtensions.ToCamelCase(text) end
---@param text string
---@return string
function UnityEngine.UIElements.StringUtilsExtensions.ToKebabCase(text) end
---@param text string
---@return string
function UnityEngine.UIElements.StringUtilsExtensions.ToTrainCase(text) end
---@param text string
---@return string
function UnityEngine.UIElements.StringUtilsExtensions.ToSnakeCase(text) end
---@param a string
---@param b string
---@return boolean
function UnityEngine.UIElements.StringUtilsExtensions.EndsWithIgnoreCaseFast(a, b) end
---@param a string
---@param b string
---@return boolean
function UnityEngine.UIElements.StringUtilsExtensions.StartsWithIgnoreCaseFast(a, b) end

---@class UnityEngine.UIElements.AngleUnit
---@field Degree UnityEngine.UIElements.AngleUnit
---@field Gradian UnityEngine.UIElements.AngleUnit
---@field Radian UnityEngine.UIElements.AngleUnit
---@field Turn UnityEngine.UIElements.AngleUnit
UnityEngine.UIElements.AngleUnit = {}
---@alias CS.UnityEngine.UIElements.AngleUnit UnityEngine.UIElements.AngleUnit
CS.UnityEngine.UIElements.AngleUnit = UnityEngine.UIElements.AngleUnit


---@class UnityEngine.UIElements.Angle : System.ValueType
---@field value number
---@field unit UnityEngine.UIElements.AngleUnit
UnityEngine.UIElements.Angle = {}
---@alias CS.UnityEngine.UIElements.Angle UnityEngine.UIElements.Angle
CS.UnityEngine.UIElements.Angle = UnityEngine.UIElements.Angle

---@overload fun(value: number) : UnityEngine.UIElements.Angle
---@param value number
---@param unit UnityEngine.UIElements.AngleUnit
---@return UnityEngine.UIElements.Angle
function UnityEngine.UIElements.Angle.New(value, unit) end
---@param value number
---@return UnityEngine.UIElements.Angle
function UnityEngine.UIElements.Angle.Degrees(value) end
---@param value number
---@return UnityEngine.UIElements.Angle
function UnityEngine.UIElements.Angle.Gradians(value) end
---@param value number
---@return UnityEngine.UIElements.Angle
function UnityEngine.UIElements.Angle.Radians(value) end
---@param value number
---@return UnityEngine.UIElements.Angle
function UnityEngine.UIElements.Angle.Turns(value) end
---@return number
function UnityEngine.UIElements.Angle:ToDegrees() end
---@return number
function UnityEngine.UIElements.Angle:ToGradians() end
---@return number
function UnityEngine.UIElements.Angle:ToRadians() end
---@return number
function UnityEngine.UIElements.Angle:ToTurns() end
---@overload fun(self: UnityEngine.UIElements.Angle, other: UnityEngine.UIElements.Angle) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.Angle:Equals(obj) end
---@return number
function UnityEngine.UIElements.Angle:GetHashCode() end
---@return string
function UnityEngine.UIElements.Angle:ToString() end

---@class UnityEngine.UIElements.Angle.Unit
---@field Degree UnityEngine.UIElements.Angle.Unit
---@field Gradian UnityEngine.UIElements.Angle.Unit
---@field Radian UnityEngine.UIElements.Angle.Unit
---@field Turn UnityEngine.UIElements.Angle.Unit
---@field None UnityEngine.UIElements.Angle.Unit
UnityEngine.UIElements.Angle.Unit = {}
---@alias CS.UnityEngine.UIElements.Angle.Unit UnityEngine.UIElements.Angle.Unit
CS.UnityEngine.UIElements.Angle.Unit = UnityEngine.UIElements.Angle.Unit


---@class UnityEngine.UIElements.Background : System.ValueType
---@field texture UnityEngine.Texture2D
---@field sprite UnityEngine.Sprite
---@field renderTexture UnityEngine.RenderTexture
---@field vectorImage UnityEngine.UIElements.VectorImage
UnityEngine.UIElements.Background = {}
---@alias CS.UnityEngine.UIElements.Background UnityEngine.UIElements.Background
CS.UnityEngine.UIElements.Background = UnityEngine.UIElements.Background

---@param t UnityEngine.Texture2D
---@return UnityEngine.UIElements.Background
function UnityEngine.UIElements.Background.New(t) end
---@param t UnityEngine.Texture2D
---@return UnityEngine.UIElements.Background
function UnityEngine.UIElements.Background.FromTexture2D(t) end
---@param rt UnityEngine.RenderTexture
---@return UnityEngine.UIElements.Background
function UnityEngine.UIElements.Background.FromRenderTexture(rt) end
---@param s UnityEngine.Sprite
---@return UnityEngine.UIElements.Background
function UnityEngine.UIElements.Background.FromSprite(s) end
---@param vi UnityEngine.UIElements.VectorImage
---@return UnityEngine.UIElements.Background
function UnityEngine.UIElements.Background.FromVectorImage(vi) end
---@overload fun(self: UnityEngine.UIElements.Background, other: UnityEngine.UIElements.Background) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.Background:Equals(obj) end
---@return number
function UnityEngine.UIElements.Background:GetHashCode() end
---@return string
function UnityEngine.UIElements.Background:ToString() end

---@class UnityEngine.UIElements.ComputedStyle : System.ValueType
---@field inheritedData UnityEngine.UIElements.StyleDataRef
---@field layoutData UnityEngine.UIElements.StyleDataRef
---@field rareData UnityEngine.UIElements.StyleDataRef
---@field transformData UnityEngine.UIElements.StyleDataRef
---@field transitionData UnityEngine.UIElements.StyleDataRef
---@field visualData UnityEngine.UIElements.StyleDataRef
---@field yogaNode UnityEngine.Yoga.YogaNode
---@field customProperties System.Collections.Generic.Dictionary
---@field matchingRulesHash number
---@field dpiScaling number
---@field computedTransitions UnityEngine.UIElements.ComputedTransitionProperty[]
---@field customPropertiesCount number
---@field hasTransition boolean
---@field alignContent UnityEngine.UIElements.Align
---@field alignItems UnityEngine.UIElements.Align
---@field alignSelf UnityEngine.UIElements.Align
---@field backgroundColor UnityEngine.Color
---@field backgroundImage UnityEngine.UIElements.Background
---@field backgroundPositionX UnityEngine.UIElements.BackgroundPosition
---@field backgroundPositionY UnityEngine.UIElements.BackgroundPosition
---@field backgroundRepeat UnityEngine.UIElements.BackgroundRepeat
---@field backgroundSize UnityEngine.UIElements.BackgroundSize
---@field borderBottomColor UnityEngine.Color
---@field borderBottomLeftRadius UnityEngine.UIElements.Length
---@field borderBottomRightRadius UnityEngine.UIElements.Length
---@field borderBottomWidth number
---@field borderLeftColor UnityEngine.Color
---@field borderLeftWidth number
---@field borderRightColor UnityEngine.Color
---@field borderRightWidth number
---@field borderTopColor UnityEngine.Color
---@field borderTopLeftRadius UnityEngine.UIElements.Length
---@field borderTopRightRadius UnityEngine.UIElements.Length
---@field borderTopWidth number
---@field bottom UnityEngine.UIElements.Length
---@field color UnityEngine.Color
---@field cursor UnityEngine.UIElements.Cursor
---@field display UnityEngine.UIElements.DisplayStyle
---@field flexBasis UnityEngine.UIElements.Length
---@field flexDirection UnityEngine.UIElements.FlexDirection
---@field flexGrow number
---@field flexShrink number
---@field flexWrap UnityEngine.UIElements.Wrap
---@field fontSize UnityEngine.UIElements.Length
---@field height UnityEngine.UIElements.Length
---@field justifyContent UnityEngine.UIElements.Justify
---@field left UnityEngine.UIElements.Length
---@field letterSpacing UnityEngine.UIElements.Length
---@field marginBottom UnityEngine.UIElements.Length
---@field marginLeft UnityEngine.UIElements.Length
---@field marginRight UnityEngine.UIElements.Length
---@field marginTop UnityEngine.UIElements.Length
---@field maxHeight UnityEngine.UIElements.Length
---@field maxWidth UnityEngine.UIElements.Length
---@field minHeight UnityEngine.UIElements.Length
---@field minWidth UnityEngine.UIElements.Length
---@field opacity number
---@field overflow UnityEngine.UIElements.OverflowInternal
---@field paddingBottom UnityEngine.UIElements.Length
---@field paddingLeft UnityEngine.UIElements.Length
---@field paddingRight UnityEngine.UIElements.Length
---@field paddingTop UnityEngine.UIElements.Length
---@field position UnityEngine.UIElements.Position
---@field right UnityEngine.UIElements.Length
---@field rotate UnityEngine.UIElements.Rotate
---@field scale UnityEngine.UIElements.Scale
---@field textOverflow UnityEngine.UIElements.TextOverflow
---@field textShadow UnityEngine.UIElements.TextShadow
---@field top UnityEngine.UIElements.Length
---@field transformOrigin UnityEngine.UIElements.TransformOrigin
---@field transitionDelay System.Collections.Generic.List
---@field transitionDuration System.Collections.Generic.List
---@field transitionProperty System.Collections.Generic.List
---@field transitionTimingFunction System.Collections.Generic.List
---@field translate UnityEngine.UIElements.Translate
---@field unityBackgroundImageTintColor UnityEngine.Color
---@field unityFont UnityEngine.Font
---@field unityFontDefinition UnityEngine.UIElements.FontDefinition
---@field unityFontStyleAndWeight UnityEngine.FontStyle
---@field unityOverflowClipBox UnityEngine.UIElements.OverflowClipBox
---@field unityParagraphSpacing UnityEngine.UIElements.Length
---@field unitySliceBottom number
---@field unitySliceLeft number
---@field unitySliceRight number
---@field unitySliceScale number
---@field unitySliceTop number
---@field unityTextAlign UnityEngine.TextAnchor
---@field unityTextOutlineColor UnityEngine.Color
---@field unityTextOutlineWidth number
---@field unityTextOverflowPosition UnityEngine.UIElements.TextOverflowPosition
---@field visibility UnityEngine.UIElements.Visibility
---@field whiteSpace UnityEngine.UIElements.WhiteSpace
---@field width UnityEngine.UIElements.Length
---@field wordSpacing UnityEngine.UIElements.Length
UnityEngine.UIElements.ComputedStyle = {}
---@alias CS.UnityEngine.UIElements.ComputedStyle UnityEngine.UIElements.ComputedStyle
CS.UnityEngine.UIElements.ComputedStyle = UnityEngine.UIElements.ComputedStyle

---@overload fun() : UnityEngine.UIElements.ComputedStyle
---@param ref_parentStyle UnityEngine.UIElements.ComputedStyle
---@return UnityEngine.UIElements.ComputedStyle,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.Create(ref_parentStyle) end
---@param element UnityEngine.UIElements.VisualElement
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param textShadow UnityEngine.UIElements.StyleTextShadow
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationInlineTextShadow(element, ref_computedStyle, textShadow, durationMs, delayMs, easingCurve) end
---@param element UnityEngine.UIElements.VisualElement
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param rotate UnityEngine.UIElements.StyleRotate
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationInlineRotate(element, ref_computedStyle, rotate, durationMs, delayMs, easingCurve) end
---@param element UnityEngine.UIElements.VisualElement
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param translate UnityEngine.UIElements.StyleTranslate
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationInlineTranslate(element, ref_computedStyle, translate, durationMs, delayMs, easingCurve) end
---@param element UnityEngine.UIElements.VisualElement
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param scale UnityEngine.UIElements.StyleScale
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationInlineScale(element, ref_computedStyle, scale, durationMs, delayMs, easingCurve) end
---@param element UnityEngine.UIElements.VisualElement
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param transformOrigin UnityEngine.UIElements.StyleTransformOrigin
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationInlineTransformOrigin(element, ref_computedStyle, transformOrigin, durationMs, delayMs, easingCurve) end
---@param element UnityEngine.UIElements.VisualElement
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param backgroundSize UnityEngine.UIElements.StyleBackgroundSize
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationInlineBackgroundSize(element, ref_computedStyle, backgroundSize, durationMs, delayMs, easingCurve) end
---@return UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.CreateInitial() end
---@param element UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param ref_oldStyle UnityEngine.UIElements.ComputedStyle
---@param ref_newStyle UnityEngine.UIElements.ComputedStyle
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimation(element, id, ref_oldStyle, ref_newStyle, durationMs, delayMs, easingCurve) end
---@param element UnityEngine.UIElements.VisualElement
---@param ref_oldStyle UnityEngine.UIElements.ComputedStyle
---@param ref_newStyle UnityEngine.UIElements.ComputedStyle
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationAllProperty(element, ref_oldStyle, ref_newStyle, durationMs, delayMs, easingCurve) end
---@param element UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param sv UnityEngine.UIElements.StyleSheets.StyleValue
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.StartAnimationInline(element, id, ref_computedStyle, sv, durationMs, delayMs, easingCurve) end
---@param ref_x UnityEngine.UIElements.ComputedStyle
---@param ref_y UnityEngine.UIElements.ComputedStyle
---@return UnityEngine.UIElements.VersionChangeType,UnityEngine.UIElements.ComputedStyle,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle.CompareChanges(ref_x, ref_y) end
---@param ref_parentStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:FinalizeApply(ref_parentStyle) end
---@param targetNode UnityEngine.Yoga.YogaNode
function UnityEngine.UIElements.ComputedStyle:SyncWithLayout(targetNode) end
---@return UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:Acquire() end
function UnityEngine.UIElements.ComputedStyle:Release() end
---@param ref_other UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:CopyFrom(ref_other) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_parentStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:ApplyProperties(reader, ref_parentStyle) end
---@param sv UnityEngine.UIElements.StyleSheets.StyleValue
---@param ref_parentStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:ApplyStyleValue(sv, ref_parentStyle) end
---@param sv UnityEngine.UIElements.StyleSheets.StyleValueManaged
---@param ref_parentStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:ApplyStyleValueManaged(sv, ref_parentStyle) end
---@param cursor UnityEngine.UIElements.Cursor
function UnityEngine.UIElements.ComputedStyle:ApplyStyleCursor(cursor) end
---@param st UnityEngine.UIElements.TextShadow
function UnityEngine.UIElements.ComputedStyle:ApplyStyleTextShadow(st) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param ref_other UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:ApplyFromComputedStyle(id, ref_other) end
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.Length)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: number)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: number)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.BackgroundPosition)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.BackgroundRepeat)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.BackgroundSize)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.Color)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.Background)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.Font)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.FontDefinition)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.TextShadow)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.Translate)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.TransformOrigin)
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, ve: UnityEngine.UIElements.VisualElement, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, newValue: UnityEngine.UIElements.Rotate)
---@param ve UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param newValue UnityEngine.UIElements.Scale
function UnityEngine.UIElements.ComputedStyle:ApplyPropertyAnimation(ve, id, newValue) end
---@param st UnityEngine.UIElements.TransformOrigin
function UnityEngine.UIElements.ComputedStyle:ApplyStyleTransformOrigin(st) end
---@param translateValue UnityEngine.UIElements.Translate
function UnityEngine.UIElements.ComputedStyle:ApplyStyleTranslate(translateValue) end
---@param rotateValue UnityEngine.UIElements.Rotate
function UnityEngine.UIElements.ComputedStyle:ApplyStyleRotate(rotateValue) end
---@param scaleValue UnityEngine.UIElements.Scale
function UnityEngine.UIElements.ComputedStyle:ApplyStyleScale(scaleValue) end
---@param backgroundSizeValue UnityEngine.UIElements.BackgroundSize
function UnityEngine.UIElements.ComputedStyle:ApplyStyleBackgroundSize(backgroundSizeValue) end
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, reader: UnityEngine.UIElements.StyleSheets.StylePropertyReader)
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.ComputedStyle:ApplyInitialValue(id) end
---@overload fun(self: UnityEngine.UIElements.ComputedStyle, reader: UnityEngine.UIElements.StyleSheets.StylePropertyReader, ref_parentStyle: UnityEngine.UIElements.ComputedStyle) : UnityEngine.UIElements.ComputedStyle
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param ref_parentStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.ComputedStyle:ApplyUnsetValue(id, ref_parentStyle) end

---@class UnityEngine.UIElements.ComputedTransitionProperty : System.ValueType
---@field id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field durationMs number
---@field delayMs number
---@field easingCurve System.Func
UnityEngine.UIElements.ComputedTransitionProperty = {}
---@alias CS.UnityEngine.UIElements.ComputedTransitionProperty UnityEngine.UIElements.ComputedTransitionProperty
CS.UnityEngine.UIElements.ComputedTransitionProperty = UnityEngine.UIElements.ComputedTransitionProperty


---@class UnityEngine.UIElements.ComputedTransitionUtils : System.Object
UnityEngine.UIElements.ComputedTransitionUtils = {}
---@alias CS.UnityEngine.UIElements.ComputedTransitionUtils UnityEngine.UIElements.ComputedTransitionUtils
CS.UnityEngine.UIElements.ComputedTransitionUtils = UnityEngine.UIElements.ComputedTransitionUtils


---@class UnityEngine.UIElements.CustomStyleProperty : System.ValueType
---@field name string
UnityEngine.UIElements.CustomStyleProperty = {}
---@alias CS.UnityEngine.UIElements.CustomStyleProperty UnityEngine.UIElements.CustomStyleProperty
CS.UnityEngine.UIElements.CustomStyleProperty = UnityEngine.UIElements.CustomStyleProperty

---@param propertyName string
---@return UnityEngine.UIElements.CustomStyleProperty
function UnityEngine.UIElements.CustomStyleProperty.New(propertyName) end
---@overload fun(self: UnityEngine.UIElements.CustomStyleProperty, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.CustomStyleProperty
---@return boolean
function UnityEngine.UIElements.CustomStyleProperty:Equals(other) end
---@return number
function UnityEngine.UIElements.CustomStyleProperty:GetHashCode() end

---@class UnityEngine.UIElements.ICustomStyle
UnityEngine.UIElements.ICustomStyle = {}
---@alias CS.UnityEngine.UIElements.ICustomStyle UnityEngine.UIElements.ICustomStyle
CS.UnityEngine.UIElements.ICustomStyle = UnityEngine.UIElements.ICustomStyle

---@overload fun(self: UnityEngine.UIElements.ICustomStyle, property: UnityEngine.UIElements.CustomStyleProperty, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.UIElements.ICustomStyle, property: UnityEngine.UIElements.CustomStyleProperty, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.UIElements.ICustomStyle, property: UnityEngine.UIElements.CustomStyleProperty, out_value: boolean) : boolean, boolean
---@overload fun(self: UnityEngine.UIElements.ICustomStyle, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.Color) : boolean, UnityEngine.Color
---@overload fun(self: UnityEngine.UIElements.ICustomStyle, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.Texture2D) : boolean, UnityEngine.Texture2D
---@overload fun(self: UnityEngine.UIElements.ICustomStyle, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.Sprite) : boolean, UnityEngine.Sprite
---@overload fun(self: UnityEngine.UIElements.ICustomStyle, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.UIElements.VectorImage) : boolean, UnityEngine.UIElements.VectorImage
---@param property UnityEngine.UIElements.CustomStyleProperty
---@param out_value string
---@return boolean,string
function UnityEngine.UIElements.ICustomStyle:TryGetValue(property, out_value) end

---@class UnityEngine.UIElements.EasingMode
---@field Ease UnityEngine.UIElements.EasingMode
---@field EaseIn UnityEngine.UIElements.EasingMode
---@field EaseOut UnityEngine.UIElements.EasingMode
---@field EaseInOut UnityEngine.UIElements.EasingMode
---@field Linear UnityEngine.UIElements.EasingMode
---@field EaseInSine UnityEngine.UIElements.EasingMode
---@field EaseOutSine UnityEngine.UIElements.EasingMode
---@field EaseInOutSine UnityEngine.UIElements.EasingMode
---@field EaseInCubic UnityEngine.UIElements.EasingMode
---@field EaseOutCubic UnityEngine.UIElements.EasingMode
---@field EaseInOutCubic UnityEngine.UIElements.EasingMode
---@field EaseInCirc UnityEngine.UIElements.EasingMode
---@field EaseOutCirc UnityEngine.UIElements.EasingMode
---@field EaseInOutCirc UnityEngine.UIElements.EasingMode
---@field EaseInElastic UnityEngine.UIElements.EasingMode
---@field EaseOutElastic UnityEngine.UIElements.EasingMode
---@field EaseInOutElastic UnityEngine.UIElements.EasingMode
---@field EaseInBack UnityEngine.UIElements.EasingMode
---@field EaseOutBack UnityEngine.UIElements.EasingMode
---@field EaseInOutBack UnityEngine.UIElements.EasingMode
---@field EaseInBounce UnityEngine.UIElements.EasingMode
---@field EaseOutBounce UnityEngine.UIElements.EasingMode
---@field EaseInOutBounce UnityEngine.UIElements.EasingMode
UnityEngine.UIElements.EasingMode = {}
---@alias CS.UnityEngine.UIElements.EasingMode UnityEngine.UIElements.EasingMode
CS.UnityEngine.UIElements.EasingMode = UnityEngine.UIElements.EasingMode


---@class UnityEngine.UIElements.EasingFunction : System.ValueType
---@field mode UnityEngine.UIElements.EasingMode
UnityEngine.UIElements.EasingFunction = {}
---@alias CS.UnityEngine.UIElements.EasingFunction UnityEngine.UIElements.EasingFunction
CS.UnityEngine.UIElements.EasingFunction = UnityEngine.UIElements.EasingFunction

---@param mode UnityEngine.UIElements.EasingMode
---@return UnityEngine.UIElements.EasingFunction
function UnityEngine.UIElements.EasingFunction.New(mode) end
---@overload fun(self: UnityEngine.UIElements.EasingFunction, other: UnityEngine.UIElements.EasingFunction) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.EasingFunction:Equals(obj) end
---@return string
function UnityEngine.UIElements.EasingFunction:ToString() end
---@return number
function UnityEngine.UIElements.EasingFunction:GetHashCode() end

---@class UnityEngine.UIElements.FontDefinition : System.ValueType
---@field font UnityEngine.Font
---@field fontAsset UnityEngine.TextCore.Text.FontAsset
UnityEngine.UIElements.FontDefinition = {}
---@alias CS.UnityEngine.UIElements.FontDefinition UnityEngine.UIElements.FontDefinition
CS.UnityEngine.UIElements.FontDefinition = UnityEngine.UIElements.FontDefinition

---@param f UnityEngine.Font
---@return UnityEngine.UIElements.FontDefinition
function UnityEngine.UIElements.FontDefinition.FromFont(f) end
---@param f UnityEngine.TextCore.Text.FontAsset
---@return UnityEngine.UIElements.FontDefinition
function UnityEngine.UIElements.FontDefinition.FromSDFFont(f) end
---@return string
function UnityEngine.UIElements.FontDefinition:ToString() end
---@overload fun(self: UnityEngine.UIElements.FontDefinition, other: UnityEngine.UIElements.FontDefinition) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.FontDefinition:Equals(obj) end
---@return number
function UnityEngine.UIElements.FontDefinition:GetHashCode() end

---@class UnityEngine.UIElements.InlineStyleAccess : UnityEngine.UIElements.StyleValueCollection
---@field m_InlineBackgroundSize UnityEngine.UIElements.StyleBackgroundSize
---@field inlineRule UnityEngine.UIElements.InlineStyleAccess.InlineRule
UnityEngine.UIElements.InlineStyleAccess = {}
---@alias CS.UnityEngine.UIElements.InlineStyleAccess UnityEngine.UIElements.InlineStyleAccess
CS.UnityEngine.UIElements.InlineStyleAccess = UnityEngine.UIElements.InlineStyleAccess

---@param ve UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.InlineStyleAccess
function UnityEngine.UIElements.InlineStyleAccess.New(ve) end
---@param sheet UnityEngine.UIElements.StyleSheet
---@param rule UnityEngine.UIElements.StyleRule
function UnityEngine.UIElements.InlineStyleAccess:SetInlineRule(sheet, rule) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.InlineStyleAccess:IsValueSet(id) end
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.InlineStyleAccess:ApplyInlineStyles(ref_computedStyle) end
---@param ref_value UnityEngine.UIElements.StyleCursor
---@return boolean,UnityEngine.UIElements.StyleCursor
function UnityEngine.UIElements.InlineStyleAccess:TryGetInlineCursor(ref_value) end
---@param ref_value UnityEngine.UIElements.StyleTextShadow
---@return boolean,UnityEngine.UIElements.StyleTextShadow
function UnityEngine.UIElements.InlineStyleAccess:TryGetInlineTextShadow(ref_value) end
---@param ref_value UnityEngine.UIElements.StyleTransformOrigin
---@return boolean,UnityEngine.UIElements.StyleTransformOrigin
function UnityEngine.UIElements.InlineStyleAccess:TryGetInlineTransformOrigin(ref_value) end
---@param ref_value UnityEngine.UIElements.StyleTranslate
---@return boolean,UnityEngine.UIElements.StyleTranslate
function UnityEngine.UIElements.InlineStyleAccess:TryGetInlineTranslate(ref_value) end
---@param ref_value UnityEngine.UIElements.StyleRotate
---@return boolean,UnityEngine.UIElements.StyleRotate
function UnityEngine.UIElements.InlineStyleAccess:TryGetInlineRotate(ref_value) end
---@param ref_value UnityEngine.UIElements.StyleScale
---@return boolean,UnityEngine.UIElements.StyleScale
function UnityEngine.UIElements.InlineStyleAccess:TryGetInlineScale(ref_value) end
---@param ref_value UnityEngine.UIElements.StyleBackgroundSize
---@return boolean,UnityEngine.UIElements.StyleBackgroundSize
function UnityEngine.UIElements.InlineStyleAccess:TryGetInlineBackgroundSize(ref_value) end

---@class UnityEngine.UIElements.InlineStyleAccess.InlineRule : System.ValueType
---@field sheet UnityEngine.UIElements.StyleSheet
---@field rule UnityEngine.UIElements.StyleRule
---@field propertyIds UnityEngine.UIElements.StyleSheets.StylePropertyId[]
---@field properties UnityEngine.UIElements.StyleProperty[]
UnityEngine.UIElements.InlineStyleAccess.InlineRule = {}
---@alias CS.UnityEngine.UIElements.InlineStyleAccess.InlineRule UnityEngine.UIElements.InlineStyleAccess.InlineRule
CS.UnityEngine.UIElements.InlineStyleAccess.InlineRule = UnityEngine.UIElements.InlineStyleAccess.InlineRule


---@class UnityEngine.UIElements.IResolvedStyle
---@field alignContent UnityEngine.UIElements.Align
---@field alignItems UnityEngine.UIElements.Align
---@field alignSelf UnityEngine.UIElements.Align
---@field backgroundColor UnityEngine.Color
---@field backgroundImage UnityEngine.UIElements.Background
---@field backgroundPositionX UnityEngine.UIElements.BackgroundPosition
---@field backgroundPositionY UnityEngine.UIElements.BackgroundPosition
---@field backgroundRepeat UnityEngine.UIElements.BackgroundRepeat
---@field backgroundSize UnityEngine.UIElements.BackgroundSize
---@field borderBottomColor UnityEngine.Color
---@field borderBottomLeftRadius number
---@field borderBottomRightRadius number
---@field borderBottomWidth number
---@field borderLeftColor UnityEngine.Color
---@field borderLeftWidth number
---@field borderRightColor UnityEngine.Color
---@field borderRightWidth number
---@field borderTopColor UnityEngine.Color
---@field borderTopLeftRadius number
---@field borderTopRightRadius number
---@field borderTopWidth number
---@field bottom number
---@field color UnityEngine.Color
---@field display UnityEngine.UIElements.DisplayStyle
---@field flexBasis UnityEngine.UIElements.StyleFloat
---@field flexDirection UnityEngine.UIElements.FlexDirection
---@field flexGrow number
---@field flexShrink number
---@field flexWrap UnityEngine.UIElements.Wrap
---@field fontSize number
---@field height number
---@field justifyContent UnityEngine.UIElements.Justify
---@field left number
---@field letterSpacing number
---@field marginBottom number
---@field marginLeft number
---@field marginRight number
---@field marginTop number
---@field maxHeight UnityEngine.UIElements.StyleFloat
---@field maxWidth UnityEngine.UIElements.StyleFloat
---@field minHeight UnityEngine.UIElements.StyleFloat
---@field minWidth UnityEngine.UIElements.StyleFloat
---@field opacity number
---@field paddingBottom number
---@field paddingLeft number
---@field paddingRight number
---@field paddingTop number
---@field position UnityEngine.UIElements.Position
---@field right number
---@field rotate UnityEngine.UIElements.Rotate
---@field scale UnityEngine.UIElements.Scale
---@field textOverflow UnityEngine.UIElements.TextOverflow
---@field top number
---@field transformOrigin UnityEngine.Vector3
---@field transitionDelay System.Collections.Generic.IEnumerable
---@field transitionDuration System.Collections.Generic.IEnumerable
---@field transitionProperty System.Collections.Generic.IEnumerable
---@field transitionTimingFunction System.Collections.Generic.IEnumerable
---@field translate UnityEngine.Vector3
---@field unityBackgroundImageTintColor UnityEngine.Color
---@field unityFont UnityEngine.Font
---@field unityFontDefinition UnityEngine.UIElements.FontDefinition
---@field unityFontStyleAndWeight UnityEngine.FontStyle
---@field unityParagraphSpacing number
---@field unitySliceBottom number
---@field unitySliceLeft number
---@field unitySliceRight number
---@field unitySliceScale number
---@field unitySliceTop number
---@field unityTextAlign UnityEngine.TextAnchor
---@field unityTextOutlineColor UnityEngine.Color
---@field unityTextOutlineWidth number
---@field unityTextOverflowPosition UnityEngine.UIElements.TextOverflowPosition
---@field visibility UnityEngine.UIElements.Visibility
---@field whiteSpace UnityEngine.UIElements.WhiteSpace
---@field width number
---@field wordSpacing number
UnityEngine.UIElements.IResolvedStyle = {}
---@alias CS.UnityEngine.UIElements.IResolvedStyle UnityEngine.UIElements.IResolvedStyle
CS.UnityEngine.UIElements.IResolvedStyle = UnityEngine.UIElements.IResolvedStyle


---@class UnityEngine.UIElements.IStyle
---@field alignContent UnityEngine.UIElements.StyleEnum
---@field alignItems UnityEngine.UIElements.StyleEnum
---@field alignSelf UnityEngine.UIElements.StyleEnum
---@field backgroundColor UnityEngine.UIElements.StyleColor
---@field backgroundImage UnityEngine.UIElements.StyleBackground
---@field backgroundPositionX UnityEngine.UIElements.StyleBackgroundPosition
---@field backgroundPositionY UnityEngine.UIElements.StyleBackgroundPosition
---@field backgroundRepeat UnityEngine.UIElements.StyleBackgroundRepeat
---@field backgroundSize UnityEngine.UIElements.StyleBackgroundSize
---@field borderBottomColor UnityEngine.UIElements.StyleColor
---@field borderBottomLeftRadius UnityEngine.UIElements.StyleLength
---@field borderBottomRightRadius UnityEngine.UIElements.StyleLength
---@field borderBottomWidth UnityEngine.UIElements.StyleFloat
---@field borderLeftColor UnityEngine.UIElements.StyleColor
---@field borderLeftWidth UnityEngine.UIElements.StyleFloat
---@field borderRightColor UnityEngine.UIElements.StyleColor
---@field borderRightWidth UnityEngine.UIElements.StyleFloat
---@field borderTopColor UnityEngine.UIElements.StyleColor
---@field borderTopLeftRadius UnityEngine.UIElements.StyleLength
---@field borderTopRightRadius UnityEngine.UIElements.StyleLength
---@field borderTopWidth UnityEngine.UIElements.StyleFloat
---@field bottom UnityEngine.UIElements.StyleLength
---@field color UnityEngine.UIElements.StyleColor
---@field cursor UnityEngine.UIElements.StyleCursor
---@field display UnityEngine.UIElements.StyleEnum
---@field flexBasis UnityEngine.UIElements.StyleLength
---@field flexDirection UnityEngine.UIElements.StyleEnum
---@field flexGrow UnityEngine.UIElements.StyleFloat
---@field flexShrink UnityEngine.UIElements.StyleFloat
---@field flexWrap UnityEngine.UIElements.StyleEnum
---@field fontSize UnityEngine.UIElements.StyleLength
---@field height UnityEngine.UIElements.StyleLength
---@field justifyContent UnityEngine.UIElements.StyleEnum
---@field left UnityEngine.UIElements.StyleLength
---@field letterSpacing UnityEngine.UIElements.StyleLength
---@field marginBottom UnityEngine.UIElements.StyleLength
---@field marginLeft UnityEngine.UIElements.StyleLength
---@field marginRight UnityEngine.UIElements.StyleLength
---@field marginTop UnityEngine.UIElements.StyleLength
---@field maxHeight UnityEngine.UIElements.StyleLength
---@field maxWidth UnityEngine.UIElements.StyleLength
---@field minHeight UnityEngine.UIElements.StyleLength
---@field minWidth UnityEngine.UIElements.StyleLength
---@field opacity UnityEngine.UIElements.StyleFloat
---@field overflow UnityEngine.UIElements.StyleEnum
---@field paddingBottom UnityEngine.UIElements.StyleLength
---@field paddingLeft UnityEngine.UIElements.StyleLength
---@field paddingRight UnityEngine.UIElements.StyleLength
---@field paddingTop UnityEngine.UIElements.StyleLength
---@field position UnityEngine.UIElements.StyleEnum
---@field right UnityEngine.UIElements.StyleLength
---@field rotate UnityEngine.UIElements.StyleRotate
---@field scale UnityEngine.UIElements.StyleScale
---@field textOverflow UnityEngine.UIElements.StyleEnum
---@field textShadow UnityEngine.UIElements.StyleTextShadow
---@field top UnityEngine.UIElements.StyleLength
---@field transformOrigin UnityEngine.UIElements.StyleTransformOrigin
---@field transitionDelay UnityEngine.UIElements.StyleList
---@field transitionDuration UnityEngine.UIElements.StyleList
---@field transitionProperty UnityEngine.UIElements.StyleList
---@field transitionTimingFunction UnityEngine.UIElements.StyleList
---@field translate UnityEngine.UIElements.StyleTranslate
---@field unityBackgroundImageTintColor UnityEngine.UIElements.StyleColor
---@field unityFont UnityEngine.UIElements.StyleFont
---@field unityFontDefinition UnityEngine.UIElements.StyleFontDefinition
---@field unityFontStyleAndWeight UnityEngine.UIElements.StyleEnum
---@field unityOverflowClipBox UnityEngine.UIElements.StyleEnum
---@field unityParagraphSpacing UnityEngine.UIElements.StyleLength
---@field unitySliceBottom UnityEngine.UIElements.StyleInt
---@field unitySliceLeft UnityEngine.UIElements.StyleInt
---@field unitySliceRight UnityEngine.UIElements.StyleInt
---@field unitySliceScale UnityEngine.UIElements.StyleFloat
---@field unitySliceTop UnityEngine.UIElements.StyleInt
---@field unityTextAlign UnityEngine.UIElements.StyleEnum
---@field unityTextOutlineColor UnityEngine.UIElements.StyleColor
---@field unityTextOutlineWidth UnityEngine.UIElements.StyleFloat
---@field unityTextOverflowPosition UnityEngine.UIElements.StyleEnum
---@field visibility UnityEngine.UIElements.StyleEnum
---@field whiteSpace UnityEngine.UIElements.StyleEnum
---@field width UnityEngine.UIElements.StyleLength
---@field wordSpacing UnityEngine.UIElements.StyleLength
UnityEngine.UIElements.IStyle = {}
---@alias CS.UnityEngine.UIElements.IStyle UnityEngine.UIElements.IStyle
CS.UnityEngine.UIElements.IStyle = UnityEngine.UIElements.IStyle


---@class UnityEngine.UIElements.VisualElement : UnityEngine.UIElements.Focusable
---@field disabledUssClassName string
---@field resolvedStyle UnityEngine.UIElements.IResolvedStyle
---@field viewDataKey string
---@field userData System.Object
---@field canGrabFocus boolean
---@field focusController UnityEngine.UIElements.FocusController
---@field usageHints UnityEngine.UIElements.UsageHints
---@field transform UnityEngine.UIElements.ITransform
---@field layout UnityEngine.Rect
---@field contentRect UnityEngine.Rect
---@field worldBound UnityEngine.Rect
---@field localBound UnityEngine.Rect
---@field worldTransform UnityEngine.Matrix4x4
---@field pickingMode UnityEngine.UIElements.PickingMode
---@field name string
---@field enabledInHierarchy boolean
---@field enabledSelf boolean
---@field languageDirection UnityEngine.UIElements.LanguageDirection
---@field visible boolean
---@field generateVisualContent System.Action
---@field experimental UnityEngine.UIElements.IExperimentalFeatures
---@field hierarchy UnityEngine.UIElements.VisualElement.Hierarchy
---@field parent UnityEngine.UIElements.VisualElement
---@field panel UnityEngine.UIElements.IPanel
---@field contentContainer UnityEngine.UIElements.VisualElement
---@field visualTreeAssetSource UnityEngine.UIElements.VisualTreeAsset
---@field Item UnityEngine.UIElements.VisualElement
---@field childCount number
---@field schedule UnityEngine.UIElements.IVisualElementScheduler
---@field style UnityEngine.UIElements.IStyle
---@field customStyle UnityEngine.UIElements.ICustomStyle
---@field styleSheets UnityEngine.UIElements.VisualElementStyleSheetSet
---@field tooltip string
UnityEngine.UIElements.VisualElement = {}
---@alias CS.UnityEngine.UIElements.VisualElement UnityEngine.UIElements.VisualElement
CS.UnityEngine.UIElements.VisualElement = UnityEngine.UIElements.VisualElement

---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement.New() end
function UnityEngine.UIElements.VisualElement:Focus() end
---@param e UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.VisualElement:SendEvent(e) end
---@param value boolean
function UnityEngine.UIElements.VisualElement:SetEnabled(value) end
function UnityEngine.UIElements.VisualElement:MarkDirtyRepaint() end
---@param localPoint UnityEngine.Vector2
---@return boolean
function UnityEngine.UIElements.VisualElement:ContainsPoint(localPoint) end
---@param rectangle UnityEngine.Rect
---@return boolean
function UnityEngine.UIElements.VisualElement:Overlaps(rectangle) end
---@return string
function UnityEngine.UIElements.VisualElement:ToString() end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.VisualElement:GetClasses() end
function UnityEngine.UIElements.VisualElement:ClearClassList() end
---@param className string
function UnityEngine.UIElements.VisualElement:AddToClassList(className) end
---@param className string
function UnityEngine.UIElements.VisualElement:RemoveFromClassList(className) end
---@param className string
function UnityEngine.UIElements.VisualElement:ToggleInClassList(className) end
---@param className string
---@param enable boolean
function UnityEngine.UIElements.VisualElement:EnableInClassList(className, enable) end
---@param cls string
---@return boolean
function UnityEngine.UIElements.VisualElement:ClassListContains(cls) end
---@return System.Object
function UnityEngine.UIElements.VisualElement:FindAncestorUserData() end
---@param child UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:Add(child) end
---@param index number
---@param element UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:Insert(index, element) end
---@param element UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:Remove(element) end
---@param index number
function UnityEngine.UIElements.VisualElement:RemoveAt(index) end
function UnityEngine.UIElements.VisualElement:Clear() end
---@param index number
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:ElementAt(index) end
---@param element UnityEngine.UIElements.VisualElement
---@return number
function UnityEngine.UIElements.VisualElement:IndexOf(element) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.VisualElement:Children() end
---@param comp System.Comparison
function UnityEngine.UIElements.VisualElement:Sort(comp) end
function UnityEngine.UIElements.VisualElement:BringToFront() end
function UnityEngine.UIElements.VisualElement:SendToBack() end
---@param sibling UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:PlaceBehind(sibling) end
---@param sibling UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:PlaceInFront(sibling) end
function UnityEngine.UIElements.VisualElement:RemoveFromHierarchy() end
---@param child UnityEngine.UIElements.VisualElement
---@return boolean
function UnityEngine.UIElements.VisualElement:Contains(child) end
---@param other UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:FindCommonAncestor(other) end
---@param name string
---@param classes System.String[]
---@return T
function UnityEngine.UIElements.VisualElement:Q(name, classes) end
---@param name string
---@param classes System.String[]
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:Q(name, classes) end
---@param name string
---@param className string
---@return T
function UnityEngine.UIElements.VisualElement:Q(name, className) end
---@param name string
---@param className string
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement:Q(name, className) end
---@param name string
---@param classes System.String[]
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.VisualElement:Query(name, classes) end
---@param name string
---@param className string
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.VisualElement:Query(name, className) end
---@param name string
---@param classes System.String[]
---@return UnityEngine.UIElements.UQueryBuilder[T]
function UnityEngine.UIElements.VisualElement:Query(name, classes) end
---@param name string
---@param className string
---@return UnityEngine.UIElements.UQueryBuilder[T]
function UnityEngine.UIElements.VisualElement:Query(name, className) end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.VisualElement:Query() end
function UnityEngine.UIElements.VisualElement:StretchToParentSize() end
function UnityEngine.UIElements.VisualElement:StretchToParentWidth() end
---@param manipulator UnityEngine.UIElements.IManipulator
function UnityEngine.UIElements.VisualElement:AddManipulator(manipulator) end
---@param manipulator UnityEngine.UIElements.IManipulator
function UnityEngine.UIElements.VisualElement:RemoveManipulator(manipulator) end
---@param p UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.UIElements.VisualElement:WorldToLocal(p) end
---@param p UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.UIElements.VisualElement:LocalToWorld(p) end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.UIElements.VisualElement:WorldToLocal(r) end
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.UIElements.VisualElement:LocalToWorld(r) end
---@param dest UnityEngine.UIElements.VisualElement
---@param point UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.UIElements.VisualElement:ChangeCoordinatesTo(dest, point) end
---@param dest UnityEngine.UIElements.VisualElement
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.UIElements.VisualElement:ChangeCoordinatesTo(dest, rect) end
---@param withHashCode boolean
---@return string
function UnityEngine.UIElements.VisualElement:GetDisplayName(withHashCode) end
---@param name string
---@return TElement
function UnityEngine.UIElements.VisualElement:Q(name) end

---@class UnityEngine.UIElements.VisualElement.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.VisualElement.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.VisualElement.UxmlFactory UnityEngine.UIElements.VisualElement.UxmlFactory
CS.UnityEngine.UIElements.VisualElement.UxmlFactory = UnityEngine.UIElements.VisualElement.UxmlFactory

---@return UnityEngine.UIElements.VisualElement.UxmlFactory
function UnityEngine.UIElements.VisualElement.UxmlFactory.New() end

---@class UnityEngine.UIElements.VisualElement.UxmlTraits : UnityEngine.UIElements.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.VisualElement.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.VisualElement.UxmlTraits UnityEngine.UIElements.VisualElement.UxmlTraits
CS.UnityEngine.UIElements.VisualElement.UxmlTraits = UnityEngine.UIElements.VisualElement.UxmlTraits

---@return UnityEngine.UIElements.VisualElement.UxmlTraits
function UnityEngine.UIElements.VisualElement.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.VisualElement.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.VisualElement.MeasureMode
---@field Undefined UnityEngine.UIElements.VisualElement.MeasureMode
---@field Exactly UnityEngine.UIElements.VisualElement.MeasureMode
---@field AtMost UnityEngine.UIElements.VisualElement.MeasureMode
UnityEngine.UIElements.VisualElement.MeasureMode = {}
---@alias CS.UnityEngine.UIElements.VisualElement.MeasureMode UnityEngine.UIElements.VisualElement.MeasureMode
CS.UnityEngine.UIElements.VisualElement.MeasureMode = UnityEngine.UIElements.VisualElement.MeasureMode


---@class UnityEngine.UIElements.VisualElement.RenderTargetMode
---@field None UnityEngine.UIElements.VisualElement.RenderTargetMode
---@field NoColorConversion UnityEngine.UIElements.VisualElement.RenderTargetMode
---@field LinearToGamma UnityEngine.UIElements.VisualElement.RenderTargetMode
---@field GammaToLinear UnityEngine.UIElements.VisualElement.RenderTargetMode
UnityEngine.UIElements.VisualElement.RenderTargetMode = {}
---@alias CS.UnityEngine.UIElements.VisualElement.RenderTargetMode UnityEngine.UIElements.VisualElement.RenderTargetMode
CS.UnityEngine.UIElements.VisualElement.RenderTargetMode = UnityEngine.UIElements.VisualElement.RenderTargetMode


---@class UnityEngine.UIElements.VisualElement.Hierarchy : System.ValueType
---@field parent UnityEngine.UIElements.VisualElement
---@field childCount number
---@field Item UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.VisualElement.Hierarchy = {}
---@alias CS.UnityEngine.UIElements.VisualElement.Hierarchy UnityEngine.UIElements.VisualElement.Hierarchy
CS.UnityEngine.UIElements.VisualElement.Hierarchy = UnityEngine.UIElements.VisualElement.Hierarchy

---@param child UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement.Hierarchy:Add(child) end
---@param index number
---@param child UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement.Hierarchy:Insert(index, child) end
---@param child UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement.Hierarchy:Remove(child) end
---@param index number
function UnityEngine.UIElements.VisualElement.Hierarchy:RemoveAt(index) end
function UnityEngine.UIElements.VisualElement.Hierarchy:Clear() end
---@param element UnityEngine.UIElements.VisualElement
---@return number
function UnityEngine.UIElements.VisualElement.Hierarchy:IndexOf(element) end
---@param index number
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElement.Hierarchy:ElementAt(index) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.VisualElement.Hierarchy:Children() end
---@param comp System.Comparison
function UnityEngine.UIElements.VisualElement.Hierarchy:Sort(comp) end
---@overload fun(self: UnityEngine.UIElements.VisualElement.Hierarchy, other: UnityEngine.UIElements.VisualElement.Hierarchy) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.VisualElement.Hierarchy:Equals(obj) end
---@return number
function UnityEngine.UIElements.VisualElement.Hierarchy:GetHashCode() end

---@class UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem : UnityEngine.UIElements.ScheduledItem
---@field isScheduled boolean
---@field element UnityEngine.UIElements.VisualElement
---@field isActive boolean
UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem = {}
---@alias CS.UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem
CS.UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem = UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem

---@param delayMs number
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:StartingIn(delayMs) end
---@param stopCondition System.Func
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:Until(stopCondition) end
---@param durationMs number
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:ForDuration(durationMs) end
---@param intervalMs number
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:Every(intervalMs) end
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:Resume() end
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:Pause() end
---@param delayMs number
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:ExecuteLater(delayMs) end
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:OnPanelActivate() end
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:OnPanelDeactivate() end
---@return boolean
function UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem:CanBeActivated() end

---@class UnityEngine.UIElements.VisualElement.VisualElementScheduledItem : UnityEngine.UIElements.VisualElement.BaseVisualElementScheduledItem
---@field updateEvent ActionType
UnityEngine.UIElements.VisualElement.VisualElementScheduledItem = {}
---@alias CS.UnityEngine.UIElements.VisualElement.VisualElementScheduledItem UnityEngine.UIElements.VisualElement.VisualElementScheduledItem
CS.UnityEngine.UIElements.VisualElement.VisualElementScheduledItem = UnityEngine.UIElements.VisualElement.VisualElementScheduledItem

---@param handler UnityEngine.UIElements.VisualElement
---@param upEvent ActionType
---@return UnityEngine.UIElements.VisualElement.VisualElementScheduledItem
function UnityEngine.UIElements.VisualElement.VisualElementScheduledItem.New(handler, upEvent) end
---@param item UnityEngine.UIElements.ScheduledItem
---@param updateEvent ActionType
---@return boolean
function UnityEngine.UIElements.VisualElement.VisualElementScheduledItem.Matches(item, updateEvent) end

---@class UnityEngine.UIElements.VisualElement.TimerStateScheduledItem : UnityEngine.UIElements.VisualElement.VisualElementScheduledItem
---@field updateEvent UnityEngine.UIElements.VisualElement.TimerStateScheduledItem -- infered from UnityEngine.UIElements.VisualElement+VisualElementScheduledItem`1[System.Action`1[UnityEngine.UIElements.TimerState]]
UnityEngine.UIElements.VisualElement.TimerStateScheduledItem = {}
---@alias CS.UnityEngine.UIElements.VisualElement.TimerStateScheduledItem UnityEngine.UIElements.VisualElement.TimerStateScheduledItem
CS.UnityEngine.UIElements.VisualElement.TimerStateScheduledItem = UnityEngine.UIElements.VisualElement.TimerStateScheduledItem

---@param handler UnityEngine.UIElements.VisualElement
---@param updateEvent System.Action
---@return UnityEngine.UIElements.VisualElement.TimerStateScheduledItem
function UnityEngine.UIElements.VisualElement.TimerStateScheduledItem.New(handler, updateEvent) end
---@param state UnityEngine.UIElements.TimerState
function UnityEngine.UIElements.VisualElement.TimerStateScheduledItem:PerformTimerUpdate(state) end

---@class UnityEngine.UIElements.VisualElement.SimpleScheduledItem : UnityEngine.UIElements.VisualElement.VisualElementScheduledItem
---@field updateEvent UnityEngine.UIElements.VisualElement.SimpleScheduledItem -- infered from UnityEngine.UIElements.VisualElement+VisualElementScheduledItem`1[System.Action]
UnityEngine.UIElements.VisualElement.SimpleScheduledItem = {}
---@alias CS.UnityEngine.UIElements.VisualElement.SimpleScheduledItem UnityEngine.UIElements.VisualElement.SimpleScheduledItem
CS.UnityEngine.UIElements.VisualElement.SimpleScheduledItem = UnityEngine.UIElements.VisualElement.SimpleScheduledItem

---@param handler UnityEngine.UIElements.VisualElement
---@param updateEvent System.Action
---@return UnityEngine.UIElements.VisualElement.SimpleScheduledItem
function UnityEngine.UIElements.VisualElement.SimpleScheduledItem.New(handler, updateEvent) end
---@param state UnityEngine.UIElements.TimerState
function UnityEngine.UIElements.VisualElement.SimpleScheduledItem:PerformTimerUpdate(state) end

---@class UnityEngine.UIElements.VisualElement.CustomStyleAccess : System.Object
UnityEngine.UIElements.VisualElement.CustomStyleAccess = {}
---@alias CS.UnityEngine.UIElements.VisualElement.CustomStyleAccess UnityEngine.UIElements.VisualElement.CustomStyleAccess
CS.UnityEngine.UIElements.VisualElement.CustomStyleAccess = UnityEngine.UIElements.VisualElement.CustomStyleAccess

---@return UnityEngine.UIElements.VisualElement.CustomStyleAccess
function UnityEngine.UIElements.VisualElement.CustomStyleAccess.New() end
---@param customProperties System.Collections.Generic.Dictionary
---@param dpiScaling number
function UnityEngine.UIElements.VisualElement.CustomStyleAccess:SetContext(customProperties, dpiScaling) end
---@overload fun(self: UnityEngine.UIElements.VisualElement.CustomStyleAccess, property: UnityEngine.UIElements.CustomStyleProperty, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.UIElements.VisualElement.CustomStyleAccess, property: UnityEngine.UIElements.CustomStyleProperty, out_value: number) : boolean, number
---@overload fun(self: UnityEngine.UIElements.VisualElement.CustomStyleAccess, property: UnityEngine.UIElements.CustomStyleProperty, out_value: boolean) : boolean, boolean
---@overload fun(self: UnityEngine.UIElements.VisualElement.CustomStyleAccess, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.Color) : boolean, UnityEngine.Color
---@overload fun(self: UnityEngine.UIElements.VisualElement.CustomStyleAccess, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.Texture2D) : boolean, UnityEngine.Texture2D
---@overload fun(self: UnityEngine.UIElements.VisualElement.CustomStyleAccess, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.Sprite) : boolean, UnityEngine.Sprite
---@overload fun(self: UnityEngine.UIElements.VisualElement.CustomStyleAccess, property: UnityEngine.UIElements.CustomStyleProperty, out_value: UnityEngine.UIElements.VectorImage) : boolean, UnityEngine.UIElements.VectorImage
---@param property UnityEngine.UIElements.CustomStyleProperty
---@param out_value string
---@return boolean,string
function UnityEngine.UIElements.VisualElement.CustomStyleAccess:TryGetValue(property, out_value) end

---@class UnityEngine.UIElements.VisualElement.TypeData : System.Object
---@field type System.Type
---@field fullTypeName string
---@field typeName string
---@field typeNamespace string
UnityEngine.UIElements.VisualElement.TypeData = {}
---@alias CS.UnityEngine.UIElements.VisualElement.TypeData UnityEngine.UIElements.VisualElement.TypeData
CS.UnityEngine.UIElements.VisualElement.TypeData = UnityEngine.UIElements.VisualElement.TypeData

---@param type System.Type
---@return UnityEngine.UIElements.VisualElement.TypeData
function UnityEngine.UIElements.VisualElement.TypeData.New(type) end

---@class UnityEngine.UIElements.IStyleDataGroup
UnityEngine.UIElements.IStyleDataGroup = {}
---@alias CS.UnityEngine.UIElements.IStyleDataGroup UnityEngine.UIElements.IStyleDataGroup
CS.UnityEngine.UIElements.IStyleDataGroup = UnityEngine.UIElements.IStyleDataGroup

---@return T
function UnityEngine.UIElements.IStyleDataGroup:Copy() end
---@param ref_other T
---@return ,T
function UnityEngine.UIElements.IStyleDataGroup:CopyFrom(ref_other) end

---@class UnityEngine.UIElements.InheritedData : System.ValueType
---@field color UnityEngine.Color
---@field fontSize UnityEngine.UIElements.Length
---@field letterSpacing UnityEngine.UIElements.Length
---@field textShadow UnityEngine.UIElements.TextShadow
---@field unityFont UnityEngine.Font
---@field unityFontDefinition UnityEngine.UIElements.FontDefinition
---@field unityFontStyleAndWeight UnityEngine.FontStyle
---@field unityParagraphSpacing UnityEngine.UIElements.Length
---@field unityTextAlign UnityEngine.TextAnchor
---@field unityTextOutlineColor UnityEngine.Color
---@field unityTextOutlineWidth number
---@field visibility UnityEngine.UIElements.Visibility
---@field whiteSpace UnityEngine.UIElements.WhiteSpace
---@field wordSpacing UnityEngine.UIElements.Length
UnityEngine.UIElements.InheritedData = {}
---@alias CS.UnityEngine.UIElements.InheritedData UnityEngine.UIElements.InheritedData
CS.UnityEngine.UIElements.InheritedData = UnityEngine.UIElements.InheritedData

---@return UnityEngine.UIElements.InheritedData
function UnityEngine.UIElements.InheritedData:Copy() end
---@param ref_other UnityEngine.UIElements.InheritedData
---@return ,UnityEngine.UIElements.InheritedData
function UnityEngine.UIElements.InheritedData:CopyFrom(ref_other) end
---@overload fun(self: UnityEngine.UIElements.InheritedData, other: UnityEngine.UIElements.InheritedData) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.InheritedData:Equals(obj) end
---@return number
function UnityEngine.UIElements.InheritedData:GetHashCode() end

---@class UnityEngine.UIElements.LayoutData : System.ValueType
---@field alignContent UnityEngine.UIElements.Align
---@field alignItems UnityEngine.UIElements.Align
---@field alignSelf UnityEngine.UIElements.Align
---@field borderBottomWidth number
---@field borderLeftWidth number
---@field borderRightWidth number
---@field borderTopWidth number
---@field bottom UnityEngine.UIElements.Length
---@field display UnityEngine.UIElements.DisplayStyle
---@field flexBasis UnityEngine.UIElements.Length
---@field flexDirection UnityEngine.UIElements.FlexDirection
---@field flexGrow number
---@field flexShrink number
---@field flexWrap UnityEngine.UIElements.Wrap
---@field height UnityEngine.UIElements.Length
---@field justifyContent UnityEngine.UIElements.Justify
---@field left UnityEngine.UIElements.Length
---@field marginBottom UnityEngine.UIElements.Length
---@field marginLeft UnityEngine.UIElements.Length
---@field marginRight UnityEngine.UIElements.Length
---@field marginTop UnityEngine.UIElements.Length
---@field maxHeight UnityEngine.UIElements.Length
---@field maxWidth UnityEngine.UIElements.Length
---@field minHeight UnityEngine.UIElements.Length
---@field minWidth UnityEngine.UIElements.Length
---@field paddingBottom UnityEngine.UIElements.Length
---@field paddingLeft UnityEngine.UIElements.Length
---@field paddingRight UnityEngine.UIElements.Length
---@field paddingTop UnityEngine.UIElements.Length
---@field position UnityEngine.UIElements.Position
---@field right UnityEngine.UIElements.Length
---@field top UnityEngine.UIElements.Length
---@field width UnityEngine.UIElements.Length
UnityEngine.UIElements.LayoutData = {}
---@alias CS.UnityEngine.UIElements.LayoutData UnityEngine.UIElements.LayoutData
CS.UnityEngine.UIElements.LayoutData = UnityEngine.UIElements.LayoutData

---@return UnityEngine.UIElements.LayoutData
function UnityEngine.UIElements.LayoutData:Copy() end
---@param ref_other UnityEngine.UIElements.LayoutData
---@return ,UnityEngine.UIElements.LayoutData
function UnityEngine.UIElements.LayoutData:CopyFrom(ref_other) end
---@overload fun(self: UnityEngine.UIElements.LayoutData, other: UnityEngine.UIElements.LayoutData) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.LayoutData:Equals(obj) end
---@return number
function UnityEngine.UIElements.LayoutData:GetHashCode() end

---@class UnityEngine.UIElements.RareData : System.ValueType
---@field cursor UnityEngine.UIElements.Cursor
---@field textOverflow UnityEngine.UIElements.TextOverflow
---@field unityBackgroundImageTintColor UnityEngine.Color
---@field unityOverflowClipBox UnityEngine.UIElements.OverflowClipBox
---@field unitySliceBottom number
---@field unitySliceLeft number
---@field unitySliceRight number
---@field unitySliceScale number
---@field unitySliceTop number
---@field unityTextOverflowPosition UnityEngine.UIElements.TextOverflowPosition
UnityEngine.UIElements.RareData = {}
---@alias CS.UnityEngine.UIElements.RareData UnityEngine.UIElements.RareData
CS.UnityEngine.UIElements.RareData = UnityEngine.UIElements.RareData

---@return UnityEngine.UIElements.RareData
function UnityEngine.UIElements.RareData:Copy() end
---@param ref_other UnityEngine.UIElements.RareData
---@return ,UnityEngine.UIElements.RareData
function UnityEngine.UIElements.RareData:CopyFrom(ref_other) end
---@overload fun(self: UnityEngine.UIElements.RareData, other: UnityEngine.UIElements.RareData) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.RareData:Equals(obj) end
---@return number
function UnityEngine.UIElements.RareData:GetHashCode() end

---@class UnityEngine.UIElements.TransformData : System.ValueType
---@field rotate UnityEngine.UIElements.Rotate
---@field scale UnityEngine.UIElements.Scale
---@field transformOrigin UnityEngine.UIElements.TransformOrigin
---@field translate UnityEngine.UIElements.Translate
UnityEngine.UIElements.TransformData = {}
---@alias CS.UnityEngine.UIElements.TransformData UnityEngine.UIElements.TransformData
CS.UnityEngine.UIElements.TransformData = UnityEngine.UIElements.TransformData

---@return UnityEngine.UIElements.TransformData
function UnityEngine.UIElements.TransformData:Copy() end
---@param ref_other UnityEngine.UIElements.TransformData
---@return ,UnityEngine.UIElements.TransformData
function UnityEngine.UIElements.TransformData:CopyFrom(ref_other) end
---@overload fun(self: UnityEngine.UIElements.TransformData, other: UnityEngine.UIElements.TransformData) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.TransformData:Equals(obj) end
---@return number
function UnityEngine.UIElements.TransformData:GetHashCode() end

---@class UnityEngine.UIElements.TransitionData : System.ValueType
---@field transitionDelay System.Collections.Generic.List
---@field transitionDuration System.Collections.Generic.List
---@field transitionProperty System.Collections.Generic.List
---@field transitionTimingFunction System.Collections.Generic.List
UnityEngine.UIElements.TransitionData = {}
---@alias CS.UnityEngine.UIElements.TransitionData UnityEngine.UIElements.TransitionData
CS.UnityEngine.UIElements.TransitionData = UnityEngine.UIElements.TransitionData

---@return UnityEngine.UIElements.TransitionData
function UnityEngine.UIElements.TransitionData:Copy() end
---@param ref_other UnityEngine.UIElements.TransitionData
---@return ,UnityEngine.UIElements.TransitionData
function UnityEngine.UIElements.TransitionData:CopyFrom(ref_other) end
---@overload fun(self: UnityEngine.UIElements.TransitionData, other: UnityEngine.UIElements.TransitionData) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.TransitionData:Equals(obj) end
---@return number
function UnityEngine.UIElements.TransitionData:GetHashCode() end

---@class UnityEngine.UIElements.VisualData : System.ValueType
---@field backgroundColor UnityEngine.Color
---@field backgroundImage UnityEngine.UIElements.Background
---@field backgroundPositionX UnityEngine.UIElements.BackgroundPosition
---@field backgroundPositionY UnityEngine.UIElements.BackgroundPosition
---@field backgroundRepeat UnityEngine.UIElements.BackgroundRepeat
---@field backgroundSize UnityEngine.UIElements.BackgroundSize
---@field borderBottomColor UnityEngine.Color
---@field borderBottomLeftRadius UnityEngine.UIElements.Length
---@field borderBottomRightRadius UnityEngine.UIElements.Length
---@field borderLeftColor UnityEngine.Color
---@field borderRightColor UnityEngine.Color
---@field borderTopColor UnityEngine.Color
---@field borderTopLeftRadius UnityEngine.UIElements.Length
---@field borderTopRightRadius UnityEngine.UIElements.Length
---@field opacity number
---@field overflow UnityEngine.UIElements.OverflowInternal
UnityEngine.UIElements.VisualData = {}
---@alias CS.UnityEngine.UIElements.VisualData UnityEngine.UIElements.VisualData
CS.UnityEngine.UIElements.VisualData = UnityEngine.UIElements.VisualData

---@return UnityEngine.UIElements.VisualData
function UnityEngine.UIElements.VisualData:Copy() end
---@param ref_other UnityEngine.UIElements.VisualData
---@return ,UnityEngine.UIElements.VisualData
function UnityEngine.UIElements.VisualData:CopyFrom(ref_other) end
---@overload fun(self: UnityEngine.UIElements.VisualData, other: UnityEngine.UIElements.VisualData) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.VisualData:Equals(obj) end
---@return number
function UnityEngine.UIElements.VisualData:GetHashCode() end

---@class UnityEngine.UIElements.StyleDebug : System.Object
UnityEngine.UIElements.StyleDebug = {}
---@alias CS.UnityEngine.UIElements.StyleDebug UnityEngine.UIElements.StyleDebug
CS.UnityEngine.UIElements.StyleDebug = UnityEngine.UIElements.StyleDebug

---@overload fun(ref_computedStyle: UnityEngine.UIElements.ComputedStyle, id: UnityEngine.UIElements.StyleSheets.StylePropertyId) : System.Object, UnityEngine.UIElements.ComputedStyle
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param name string
---@return System.Object,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleDebug.GetComputedStyleValue(ref_computedStyle, name) end
---@overload fun(id: UnityEngine.UIElements.StyleSheets.StylePropertyId) : System.Type
---@param name string
---@return System.Type
function UnityEngine.UIElements.StyleDebug.GetComputedStyleType(name) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return System.Type
function UnityEngine.UIElements.StyleDebug.GetShorthandStyleType(id) end
---@overload fun(style: UnityEngine.UIElements.IStyle, id: UnityEngine.UIElements.StyleSheets.StylePropertyId) : System.Object
---@param style UnityEngine.UIElements.IStyle
---@param name string
---@return System.Object
function UnityEngine.UIElements.StyleDebug.GetInlineStyleValue(style, name) end
---@overload fun(style: UnityEngine.UIElements.IStyle, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, value: System.Object)
---@param style UnityEngine.UIElements.IStyle
---@param name string
---@param value System.Object
function UnityEngine.UIElements.StyleDebug.SetInlineStyleValue(style, name, value) end
---@param style UnityEngine.UIElements.IStyle
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param keyword UnityEngine.UIElements.StyleKeyword
function UnityEngine.UIElements.StyleDebug.SetInlineKeyword(style, id, keyword) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return System.Collections.Generic.List
function UnityEngine.UIElements.StyleDebug.GetValidKeyword(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param value System.Object
---@return System.Object
function UnityEngine.UIElements.StyleDebug.ConvertComputedToInlineStyleValue(id, value) end
---@overload fun(id: UnityEngine.UIElements.StyleSheets.StylePropertyId) : System.Type
---@param name string
---@return System.Type
function UnityEngine.UIElements.StyleDebug.GetInlineStyleType(name) end
---@overload fun(id: UnityEngine.UIElements.StyleSheets.StylePropertyId) : System.String[]
---@param shorthandName string
---@return System.String[]
function UnityEngine.UIElements.StyleDebug.GetLonghandPropertyNames(shorthandName) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StyleDebug.IsShorthandProperty(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StyleDebug.IsInheritedProperty(id) end
---@return UnityEngine.UIElements.StyleSheets.StylePropertyId[]
function UnityEngine.UIElements.StyleDebug.GetInheritedProperties() end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StyleDebug.IsDiscreteTypeProperty(id) end
---@return System.String[]
function UnityEngine.UIElements.StyleDebug.GetStylePropertyNames() end
---@param name string
---@return UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StyleDebug.GetStylePropertyIdFromName(name) end
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@param matchRecords System.Collections.Generic.IEnumerable
---@param result System.Collections.Generic.Dictionary
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleDebug.FindSpecifiedStyles(ref_computedStyle, matchRecords, result) end

---@class UnityEngine.UIElements.StyleValueCollection : System.Object
UnityEngine.UIElements.StyleValueCollection = {}
---@alias CS.UnityEngine.UIElements.StyleValueCollection UnityEngine.UIElements.StyleValueCollection
CS.UnityEngine.UIElements.StyleValueCollection = UnityEngine.UIElements.StyleValueCollection

---@return UnityEngine.UIElements.StyleValueCollection
function UnityEngine.UIElements.StyleValueCollection.New() end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleLength
function UnityEngine.UIElements.StyleValueCollection:GetStyleLength(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleFloat
function UnityEngine.UIElements.StyleValueCollection:GetStyleFloat(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleInt
function UnityEngine.UIElements.StyleValueCollection:GetStyleInt(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleColor
function UnityEngine.UIElements.StyleValueCollection:GetStyleColor(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleBackground
function UnityEngine.UIElements.StyleValueCollection:GetStyleBackground(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleBackgroundPosition
function UnityEngine.UIElements.StyleValueCollection:GetStyleBackgroundPosition(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleBackgroundRepeat
function UnityEngine.UIElements.StyleValueCollection:GetStyleBackgroundRepeat(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleFont
function UnityEngine.UIElements.StyleValueCollection:GetStyleFont(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StyleFontDefinition
function UnityEngine.UIElements.StyleValueCollection:GetStyleFontDefinition(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param ref_value UnityEngine.UIElements.StyleSheets.StyleValue
---@return boolean,UnityEngine.UIElements.StyleSheets.StyleValue
function UnityEngine.UIElements.StyleValueCollection:TryGetStyleValue(id, ref_value) end
---@param value UnityEngine.UIElements.StyleSheets.StyleValue
function UnityEngine.UIElements.StyleValueCollection:SetStyleValue(value) end

---@class UnityEngine.UIElements.LengthUnit
---@field Pixel UnityEngine.UIElements.LengthUnit
---@field Percent UnityEngine.UIElements.LengthUnit
UnityEngine.UIElements.LengthUnit = {}
---@alias CS.UnityEngine.UIElements.LengthUnit UnityEngine.UIElements.LengthUnit
CS.UnityEngine.UIElements.LengthUnit = UnityEngine.UIElements.LengthUnit


---@class UnityEngine.UIElements.Length : System.ValueType
---@field value number
---@field unit UnityEngine.UIElements.LengthUnit
UnityEngine.UIElements.Length = {}
---@alias CS.UnityEngine.UIElements.Length UnityEngine.UIElements.Length
CS.UnityEngine.UIElements.Length = UnityEngine.UIElements.Length

---@overload fun(value: number) : UnityEngine.UIElements.Length
---@param value number
---@param unit UnityEngine.UIElements.LengthUnit
---@return UnityEngine.UIElements.Length
function UnityEngine.UIElements.Length.New(value, unit) end
---@param value number
---@return UnityEngine.UIElements.Length
function UnityEngine.UIElements.Length.Percent(value) end
---@return UnityEngine.UIElements.Length
function UnityEngine.UIElements.Length.Auto() end
---@return UnityEngine.UIElements.Length
function UnityEngine.UIElements.Length.None() end
---@return boolean
function UnityEngine.UIElements.Length:IsAuto() end
---@return boolean
function UnityEngine.UIElements.Length:IsNone() end
---@overload fun(self: UnityEngine.UIElements.Length, other: UnityEngine.UIElements.Length) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.Length:Equals(obj) end
---@return number
function UnityEngine.UIElements.Length:GetHashCode() end
---@return string
function UnityEngine.UIElements.Length:ToString() end

---@class UnityEngine.UIElements.Length.Unit
---@field Pixel UnityEngine.UIElements.Length.Unit
---@field Percent UnityEngine.UIElements.Length.Unit
---@field Auto UnityEngine.UIElements.Length.Unit
---@field None UnityEngine.UIElements.Length.Unit
UnityEngine.UIElements.Length.Unit = {}
---@alias CS.UnityEngine.UIElements.Length.Unit UnityEngine.UIElements.Length.Unit
CS.UnityEngine.UIElements.Length.Unit = UnityEngine.UIElements.Length.Unit


---@class UnityEngine.UIElements.Rotate : System.ValueType
---@field angle UnityEngine.UIElements.Angle
UnityEngine.UIElements.Rotate = {}
---@alias CS.UnityEngine.UIElements.Rotate UnityEngine.UIElements.Rotate
CS.UnityEngine.UIElements.Rotate = UnityEngine.UIElements.Rotate

---@param angle UnityEngine.UIElements.Angle
---@return UnityEngine.UIElements.Rotate
function UnityEngine.UIElements.Rotate.New(angle) end
---@return UnityEngine.UIElements.Rotate
function UnityEngine.UIElements.Rotate.None() end
---@overload fun(self: UnityEngine.UIElements.Rotate, other: UnityEngine.UIElements.Rotate) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.Rotate:Equals(obj) end
---@return number
function UnityEngine.UIElements.Rotate:GetHashCode() end
---@return string
function UnityEngine.UIElements.Rotate:ToString() end

---@class UnityEngine.UIElements.Scale : System.ValueType
---@field value UnityEngine.Vector3
UnityEngine.UIElements.Scale = {}
---@alias CS.UnityEngine.UIElements.Scale UnityEngine.UIElements.Scale
CS.UnityEngine.UIElements.Scale = UnityEngine.UIElements.Scale

---@overload fun(scale: UnityEngine.Vector2) : UnityEngine.UIElements.Scale
---@param scale UnityEngine.Vector3
---@return UnityEngine.UIElements.Scale
function UnityEngine.UIElements.Scale.New(scale) end
---@return UnityEngine.UIElements.Scale
function UnityEngine.UIElements.Scale.None() end
---@overload fun(self: UnityEngine.UIElements.Scale, other: UnityEngine.UIElements.Scale) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.Scale:Equals(obj) end
---@return number
function UnityEngine.UIElements.Scale:GetHashCode() end
---@return string
function UnityEngine.UIElements.Scale:ToString() end

---@class UnityEngine.UIElements.StyleBackground : System.ValueType
---@field value UnityEngine.UIElements.Background
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleBackground = {}
---@alias CS.UnityEngine.UIElements.StyleBackground UnityEngine.UIElements.StyleBackground
CS.UnityEngine.UIElements.StyleBackground = UnityEngine.UIElements.StyleBackground

---@overload fun(v: UnityEngine.UIElements.Background) : UnityEngine.UIElements.StyleBackground
---@overload fun(v: UnityEngine.Texture2D) : UnityEngine.UIElements.StyleBackground
---@overload fun(v: UnityEngine.Sprite) : UnityEngine.UIElements.StyleBackground
---@overload fun(v: UnityEngine.UIElements.VectorImage) : UnityEngine.UIElements.StyleBackground
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleBackground
function UnityEngine.UIElements.StyleBackground.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleBackground, other: UnityEngine.UIElements.StyleBackground) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleBackground:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleBackground:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleBackground:ToString() end

---@class UnityEngine.UIElements.StyleBackgroundPosition : System.ValueType
---@field value UnityEngine.UIElements.BackgroundPosition
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleBackgroundPosition = {}
---@alias CS.UnityEngine.UIElements.StyleBackgroundPosition UnityEngine.UIElements.StyleBackgroundPosition
CS.UnityEngine.UIElements.StyleBackgroundPosition = UnityEngine.UIElements.StyleBackgroundPosition

---@overload fun(v: UnityEngine.UIElements.BackgroundPosition) : UnityEngine.UIElements.StyleBackgroundPosition
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleBackgroundPosition
function UnityEngine.UIElements.StyleBackgroundPosition.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleBackgroundPosition, other: UnityEngine.UIElements.StyleBackgroundPosition) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleBackgroundPosition:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleBackgroundPosition:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleBackgroundPosition:ToString() end

---@class UnityEngine.UIElements.StyleBackgroundRepeat : System.ValueType
---@field value UnityEngine.UIElements.BackgroundRepeat
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleBackgroundRepeat = {}
---@alias CS.UnityEngine.UIElements.StyleBackgroundRepeat UnityEngine.UIElements.StyleBackgroundRepeat
CS.UnityEngine.UIElements.StyleBackgroundRepeat = UnityEngine.UIElements.StyleBackgroundRepeat

---@overload fun(v: UnityEngine.UIElements.BackgroundRepeat) : UnityEngine.UIElements.StyleBackgroundRepeat
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleBackgroundRepeat
function UnityEngine.UIElements.StyleBackgroundRepeat.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleBackgroundRepeat, other: UnityEngine.UIElements.StyleBackgroundRepeat) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleBackgroundRepeat:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleBackgroundRepeat:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleBackgroundRepeat:ToString() end

---@class UnityEngine.UIElements.StyleBackgroundSize : System.ValueType
---@field value UnityEngine.UIElements.BackgroundSize
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleBackgroundSize = {}
---@alias CS.UnityEngine.UIElements.StyleBackgroundSize UnityEngine.UIElements.StyleBackgroundSize
CS.UnityEngine.UIElements.StyleBackgroundSize = UnityEngine.UIElements.StyleBackgroundSize

---@overload fun(v: UnityEngine.UIElements.BackgroundSize) : UnityEngine.UIElements.StyleBackgroundSize
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleBackgroundSize
function UnityEngine.UIElements.StyleBackgroundSize.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleBackgroundSize, other: UnityEngine.UIElements.StyleBackgroundSize) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleBackgroundSize:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleBackgroundSize:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleBackgroundSize:ToString() end

---@class UnityEngine.UIElements.StyleColor : System.ValueType
---@field value UnityEngine.Color
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleColor = {}
---@alias CS.UnityEngine.UIElements.StyleColor UnityEngine.UIElements.StyleColor
CS.UnityEngine.UIElements.StyleColor = UnityEngine.UIElements.StyleColor

---@overload fun(v: UnityEngine.Color) : UnityEngine.UIElements.StyleColor
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleColor
function UnityEngine.UIElements.StyleColor.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleColor, other: UnityEngine.UIElements.StyleColor) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleColor:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleColor:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleColor:ToString() end

---@class UnityEngine.UIElements.StyleCursor : System.ValueType
---@field value UnityEngine.UIElements.Cursor
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleCursor = {}
---@alias CS.UnityEngine.UIElements.StyleCursor UnityEngine.UIElements.StyleCursor
CS.UnityEngine.UIElements.StyleCursor = UnityEngine.UIElements.StyleCursor

---@overload fun(v: UnityEngine.UIElements.Cursor) : UnityEngine.UIElements.StyleCursor
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleCursor
function UnityEngine.UIElements.StyleCursor.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleCursor, other: UnityEngine.UIElements.StyleCursor) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleCursor:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleCursor:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleCursor:ToString() end

---@class UnityEngine.UIElements.StyleDataRef : System.ValueType
---@field refCount number
---@field id number
UnityEngine.UIElements.StyleDataRef = {}
---@alias CS.UnityEngine.UIElements.StyleDataRef UnityEngine.UIElements.StyleDataRef
CS.UnityEngine.UIElements.StyleDataRef = UnityEngine.UIElements.StyleDataRef

---@return UnityEngine.UIElements.StyleDataRef
function UnityEngine.UIElements.StyleDataRef.Create() end
---@return UnityEngine.UIElements.StyleDataRef
function UnityEngine.UIElements.StyleDataRef:Acquire() end
function UnityEngine.UIElements.StyleDataRef:Release() end
---@param other UnityEngine.UIElements.StyleDataRef
function UnityEngine.UIElements.StyleDataRef:CopyFrom(other) end
---@return T&
function UnityEngine.UIElements.StyleDataRef:Read() end
---@return T&
function UnityEngine.UIElements.StyleDataRef:Write() end
---@return number
function UnityEngine.UIElements.StyleDataRef:GetHashCode() end
---@overload fun(self: UnityEngine.UIElements.StyleDataRef, other: UnityEngine.UIElements.StyleDataRef) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleDataRef:Equals(obj) end
---@param other UnityEngine.UIElements.StyleDataRef
---@return boolean
function UnityEngine.UIElements.StyleDataRef:ReferenceEquals(other) end

---@class UnityEngine.UIElements.StyleDataRef.RefCounted : System.Object
---@field value T
---@field refCount number
---@field id number
UnityEngine.UIElements.StyleDataRef.RefCounted = {}
---@alias CS.UnityEngine.UIElements.StyleDataRef.RefCounted UnityEngine.UIElements.StyleDataRef.RefCounted
CS.UnityEngine.UIElements.StyleDataRef.RefCounted = UnityEngine.UIElements.StyleDataRef.RefCounted

---@return UnityEngine.UIElements.StyleDataRef.RefCounted
function UnityEngine.UIElements.StyleDataRef.RefCounted.New() end
function UnityEngine.UIElements.StyleDataRef.RefCounted:Acquire() end
function UnityEngine.UIElements.StyleDataRef.RefCounted:Release() end
---@return UnityEngine.UIElements.StyleDataRef.RefCounted
function UnityEngine.UIElements.StyleDataRef.RefCounted:Copy() end

---@class UnityEngine.UIElements.StyleEnum : System.ValueType
---@field value T
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleEnum = {}
---@alias CS.UnityEngine.UIElements.StyleEnum UnityEngine.UIElements.StyleEnum
CS.UnityEngine.UIElements.StyleEnum = UnityEngine.UIElements.StyleEnum

---@overload fun(v: T) : UnityEngine.UIElements.StyleEnum
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleEnum
function UnityEngine.UIElements.StyleEnum.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleEnum, other: UnityEngine.UIElements.StyleEnum) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleEnum:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleEnum:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleEnum:ToString() end

---@class UnityEngine.UIElements.StyleFloat : System.ValueType
---@field value number
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleFloat = {}
---@alias CS.UnityEngine.UIElements.StyleFloat UnityEngine.UIElements.StyleFloat
CS.UnityEngine.UIElements.StyleFloat = UnityEngine.UIElements.StyleFloat

---@overload fun(v: number) : UnityEngine.UIElements.StyleFloat
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleFloat
function UnityEngine.UIElements.StyleFloat.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleFloat, other: UnityEngine.UIElements.StyleFloat) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleFloat:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleFloat:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleFloat:ToString() end

---@class UnityEngine.UIElements.StyleFont : System.ValueType
---@field value UnityEngine.Font
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleFont = {}
---@alias CS.UnityEngine.UIElements.StyleFont UnityEngine.UIElements.StyleFont
CS.UnityEngine.UIElements.StyleFont = UnityEngine.UIElements.StyleFont

---@overload fun(v: UnityEngine.Font) : UnityEngine.UIElements.StyleFont
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleFont
function UnityEngine.UIElements.StyleFont.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleFont, other: UnityEngine.UIElements.StyleFont) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleFont:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleFont:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleFont:ToString() end

---@class UnityEngine.UIElements.StyleFontDefinition : System.ValueType
---@field value UnityEngine.UIElements.FontDefinition
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleFontDefinition = {}
---@alias CS.UnityEngine.UIElements.StyleFontDefinition UnityEngine.UIElements.StyleFontDefinition
CS.UnityEngine.UIElements.StyleFontDefinition = UnityEngine.UIElements.StyleFontDefinition

---@overload fun(f: UnityEngine.UIElements.FontDefinition) : UnityEngine.UIElements.StyleFontDefinition
---@overload fun(f: UnityEngine.TextCore.Text.FontAsset) : UnityEngine.UIElements.StyleFontDefinition
---@overload fun(f: UnityEngine.Font) : UnityEngine.UIElements.StyleFontDefinition
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleFontDefinition
function UnityEngine.UIElements.StyleFontDefinition.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleFontDefinition, other: UnityEngine.UIElements.StyleFontDefinition) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleFontDefinition:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleFontDefinition:GetHashCode() end

---@class UnityEngine.UIElements.StyleInt : System.ValueType
---@field value number
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleInt = {}
---@alias CS.UnityEngine.UIElements.StyleInt UnityEngine.UIElements.StyleInt
CS.UnityEngine.UIElements.StyleInt = UnityEngine.UIElements.StyleInt

---@overload fun(v: number) : UnityEngine.UIElements.StyleInt
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleInt
function UnityEngine.UIElements.StyleInt.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleInt, other: UnityEngine.UIElements.StyleInt) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleInt:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleInt:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleInt:ToString() end

---@class UnityEngine.UIElements.StyleLength : System.ValueType
---@field value UnityEngine.UIElements.Length
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleLength = {}
---@alias CS.UnityEngine.UIElements.StyleLength UnityEngine.UIElements.StyleLength
CS.UnityEngine.UIElements.StyleLength = UnityEngine.UIElements.StyleLength

---@overload fun(v: number) : UnityEngine.UIElements.StyleLength
---@overload fun(v: UnityEngine.UIElements.Length) : UnityEngine.UIElements.StyleLength
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleLength
function UnityEngine.UIElements.StyleLength.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleLength, other: UnityEngine.UIElements.StyleLength) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleLength:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleLength:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleLength:ToString() end

---@class UnityEngine.UIElements.StyleList : System.ValueType
---@field value System.Collections.Generic.List[T]
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleList = {}
---@alias CS.UnityEngine.UIElements.StyleList UnityEngine.UIElements.StyleList
CS.UnityEngine.UIElements.StyleList = UnityEngine.UIElements.StyleList

---@overload fun(v: System.Collections.Generic.List[T]) : UnityEngine.UIElements.StyleList
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleList
function UnityEngine.UIElements.StyleList.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleList, other: UnityEngine.UIElements.StyleList) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleList:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleList:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleList:ToString() end

---@class UnityEngine.UIElements.StyleRotate : System.ValueType
---@field value UnityEngine.UIElements.Rotate
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleRotate = {}
---@alias CS.UnityEngine.UIElements.StyleRotate UnityEngine.UIElements.StyleRotate
CS.UnityEngine.UIElements.StyleRotate = UnityEngine.UIElements.StyleRotate

---@overload fun(v: UnityEngine.UIElements.Rotate) : UnityEngine.UIElements.StyleRotate
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleRotate
function UnityEngine.UIElements.StyleRotate.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleRotate, other: UnityEngine.UIElements.StyleRotate) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleRotate:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleRotate:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleRotate:ToString() end

---@class UnityEngine.UIElements.StyleScale : System.ValueType
---@field value UnityEngine.UIElements.Scale
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleScale = {}
---@alias CS.UnityEngine.UIElements.StyleScale UnityEngine.UIElements.StyleScale
CS.UnityEngine.UIElements.StyleScale = UnityEngine.UIElements.StyleScale

---@overload fun(v: UnityEngine.UIElements.Scale) : UnityEngine.UIElements.StyleScale
---@overload fun(keyword: UnityEngine.UIElements.StyleKeyword) : UnityEngine.UIElements.StyleScale
---@param scale UnityEngine.Vector2
---@return UnityEngine.UIElements.StyleScale
function UnityEngine.UIElements.StyleScale.New(scale) end
---@overload fun(self: UnityEngine.UIElements.StyleScale, other: UnityEngine.UIElements.StyleScale) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleScale:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleScale:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleScale:ToString() end

---@class UnityEngine.UIElements.StyleTranslate : System.ValueType
---@field value UnityEngine.UIElements.Translate
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleTranslate = {}
---@alias CS.UnityEngine.UIElements.StyleTranslate UnityEngine.UIElements.StyleTranslate
CS.UnityEngine.UIElements.StyleTranslate = UnityEngine.UIElements.StyleTranslate

---@overload fun(v: UnityEngine.UIElements.Translate) : UnityEngine.UIElements.StyleTranslate
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleTranslate
function UnityEngine.UIElements.StyleTranslate.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleTranslate, other: UnityEngine.UIElements.StyleTranslate) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleTranslate:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleTranslate:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleTranslate:ToString() end

---@class UnityEngine.UIElements.StyleTextShadow : System.ValueType
---@field value UnityEngine.UIElements.TextShadow
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleTextShadow = {}
---@alias CS.UnityEngine.UIElements.StyleTextShadow UnityEngine.UIElements.StyleTextShadow
CS.UnityEngine.UIElements.StyleTextShadow = UnityEngine.UIElements.StyleTextShadow

---@overload fun(v: UnityEngine.UIElements.TextShadow) : UnityEngine.UIElements.StyleTextShadow
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleTextShadow
function UnityEngine.UIElements.StyleTextShadow.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleTextShadow, other: UnityEngine.UIElements.StyleTextShadow) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleTextShadow:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleTextShadow:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleTextShadow:ToString() end

---@class UnityEngine.UIElements.StyleTransformOrigin : System.ValueType
---@field value UnityEngine.UIElements.TransformOrigin
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleTransformOrigin = {}
---@alias CS.UnityEngine.UIElements.StyleTransformOrigin UnityEngine.UIElements.StyleTransformOrigin
CS.UnityEngine.UIElements.StyleTransformOrigin = UnityEngine.UIElements.StyleTransformOrigin

---@overload fun(v: UnityEngine.UIElements.TransformOrigin) : UnityEngine.UIElements.StyleTransformOrigin
---@param keyword UnityEngine.UIElements.StyleKeyword
---@return UnityEngine.UIElements.StyleTransformOrigin
function UnityEngine.UIElements.StyleTransformOrigin.New(keyword) end
---@overload fun(self: UnityEngine.UIElements.StyleTransformOrigin, other: UnityEngine.UIElements.StyleTransformOrigin) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleTransformOrigin:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleTransformOrigin:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleTransformOrigin:ToString() end

---@class UnityEngine.UIElements.IStyleValue
---@field value T
---@field keyword UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.IStyleValue = {}
---@alias CS.UnityEngine.UIElements.IStyleValue UnityEngine.UIElements.IStyleValue
CS.UnityEngine.UIElements.IStyleValue = UnityEngine.UIElements.IStyleValue


---@class UnityEngine.UIElements.StyleKeyword
---@field Undefined UnityEngine.UIElements.StyleKeyword
---@field Null UnityEngine.UIElements.StyleKeyword
---@field Auto UnityEngine.UIElements.StyleKeyword
---@field None UnityEngine.UIElements.StyleKeyword
---@field Initial UnityEngine.UIElements.StyleKeyword
UnityEngine.UIElements.StyleKeyword = {}
---@alias CS.UnityEngine.UIElements.StyleKeyword UnityEngine.UIElements.StyleKeyword
CS.UnityEngine.UIElements.StyleKeyword = UnityEngine.UIElements.StyleKeyword


---@class UnityEngine.UIElements.StyleValueExtensions : System.Object
UnityEngine.UIElements.StyleValueExtensions = {}
---@alias CS.UnityEngine.UIElements.StyleValueExtensions UnityEngine.UIElements.StyleValueExtensions
CS.UnityEngine.UIElements.StyleValueExtensions = UnityEngine.UIElements.StyleValueExtensions


---@class UnityEngine.UIElements.TimeUnit
---@field Second UnityEngine.UIElements.TimeUnit
---@field Millisecond UnityEngine.UIElements.TimeUnit
UnityEngine.UIElements.TimeUnit = {}
---@alias CS.UnityEngine.UIElements.TimeUnit UnityEngine.UIElements.TimeUnit
CS.UnityEngine.UIElements.TimeUnit = UnityEngine.UIElements.TimeUnit


---@class UnityEngine.UIElements.TimeValue : System.ValueType
---@field value number
---@field unit UnityEngine.UIElements.TimeUnit
UnityEngine.UIElements.TimeValue = {}
---@alias CS.UnityEngine.UIElements.TimeValue UnityEngine.UIElements.TimeValue
CS.UnityEngine.UIElements.TimeValue = UnityEngine.UIElements.TimeValue

---@overload fun(value: number) : UnityEngine.UIElements.TimeValue
---@param value number
---@param unit UnityEngine.UIElements.TimeUnit
---@return UnityEngine.UIElements.TimeValue
function UnityEngine.UIElements.TimeValue.New(value, unit) end
---@overload fun(self: UnityEngine.UIElements.TimeValue, other: UnityEngine.UIElements.TimeValue) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.TimeValue:Equals(obj) end
---@return number
function UnityEngine.UIElements.TimeValue:GetHashCode() end
---@return string
function UnityEngine.UIElements.TimeValue:ToString() end

---@class UnityEngine.UIElements.TransformOrigin : System.ValueType
---@field x UnityEngine.UIElements.Length
---@field y UnityEngine.UIElements.Length
---@field z number
UnityEngine.UIElements.TransformOrigin = {}
---@alias CS.UnityEngine.UIElements.TransformOrigin UnityEngine.UIElements.TransformOrigin
CS.UnityEngine.UIElements.TransformOrigin = UnityEngine.UIElements.TransformOrigin

---@overload fun(x: UnityEngine.UIElements.Length, y: UnityEngine.UIElements.Length, z: number) : UnityEngine.UIElements.TransformOrigin
---@param x UnityEngine.UIElements.Length
---@param y UnityEngine.UIElements.Length
---@return UnityEngine.UIElements.TransformOrigin
function UnityEngine.UIElements.TransformOrigin.New(x, y) end
---@return UnityEngine.UIElements.TransformOrigin
function UnityEngine.UIElements.TransformOrigin.Initial() end
---@overload fun(self: UnityEngine.UIElements.TransformOrigin, other: UnityEngine.UIElements.TransformOrigin) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.TransformOrigin:Equals(obj) end
---@return number
function UnityEngine.UIElements.TransformOrigin:GetHashCode() end
---@return string
function UnityEngine.UIElements.TransformOrigin:ToString() end

---@class UnityEngine.UIElements.Translate : System.ValueType
---@field x UnityEngine.UIElements.Length
---@field y UnityEngine.UIElements.Length
---@field z number
UnityEngine.UIElements.Translate = {}
---@alias CS.UnityEngine.UIElements.Translate UnityEngine.UIElements.Translate
CS.UnityEngine.UIElements.Translate = UnityEngine.UIElements.Translate

---@overload fun(x: UnityEngine.UIElements.Length, y: UnityEngine.UIElements.Length, z: number) : UnityEngine.UIElements.Translate
---@param x UnityEngine.UIElements.Length
---@param y UnityEngine.UIElements.Length
---@return UnityEngine.UIElements.Translate
function UnityEngine.UIElements.Translate.New(x, y) end
---@return UnityEngine.UIElements.Translate
function UnityEngine.UIElements.Translate.None() end
---@overload fun(self: UnityEngine.UIElements.Translate, other: UnityEngine.UIElements.Translate) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.Translate:Equals(obj) end
---@return number
function UnityEngine.UIElements.Translate:GetHashCode() end
---@return string
function UnityEngine.UIElements.Translate:ToString() end

---@class UnityEngine.UIElements.Position
---@field Relative UnityEngine.UIElements.Position
---@field Absolute UnityEngine.UIElements.Position
UnityEngine.UIElements.Position = {}
---@alias CS.UnityEngine.UIElements.Position UnityEngine.UIElements.Position
CS.UnityEngine.UIElements.Position = UnityEngine.UIElements.Position


---@class UnityEngine.UIElements.Overflow
---@field Visible UnityEngine.UIElements.Overflow
---@field Hidden UnityEngine.UIElements.Overflow
UnityEngine.UIElements.Overflow = {}
---@alias CS.UnityEngine.UIElements.Overflow UnityEngine.UIElements.Overflow
CS.UnityEngine.UIElements.Overflow = UnityEngine.UIElements.Overflow


---@class UnityEngine.UIElements.OverflowInternal
---@field Visible UnityEngine.UIElements.OverflowInternal
---@field Hidden UnityEngine.UIElements.OverflowInternal
---@field Scroll UnityEngine.UIElements.OverflowInternal
UnityEngine.UIElements.OverflowInternal = {}
---@alias CS.UnityEngine.UIElements.OverflowInternal UnityEngine.UIElements.OverflowInternal
CS.UnityEngine.UIElements.OverflowInternal = UnityEngine.UIElements.OverflowInternal


---@class UnityEngine.UIElements.OverflowClipBox
---@field PaddingBox UnityEngine.UIElements.OverflowClipBox
---@field ContentBox UnityEngine.UIElements.OverflowClipBox
UnityEngine.UIElements.OverflowClipBox = {}
---@alias CS.UnityEngine.UIElements.OverflowClipBox UnityEngine.UIElements.OverflowClipBox
CS.UnityEngine.UIElements.OverflowClipBox = UnityEngine.UIElements.OverflowClipBox


---@class UnityEngine.UIElements.FlexDirection
---@field Column UnityEngine.UIElements.FlexDirection
---@field ColumnReverse UnityEngine.UIElements.FlexDirection
---@field Row UnityEngine.UIElements.FlexDirection
---@field RowReverse UnityEngine.UIElements.FlexDirection
UnityEngine.UIElements.FlexDirection = {}
---@alias CS.UnityEngine.UIElements.FlexDirection UnityEngine.UIElements.FlexDirection
CS.UnityEngine.UIElements.FlexDirection = UnityEngine.UIElements.FlexDirection


---@class UnityEngine.UIElements.Wrap
---@field NoWrap UnityEngine.UIElements.Wrap
---@field Wrap UnityEngine.UIElements.Wrap
---@field WrapReverse UnityEngine.UIElements.Wrap
UnityEngine.UIElements.Wrap = {}
---@alias CS.UnityEngine.UIElements.Wrap UnityEngine.UIElements.Wrap
CS.UnityEngine.UIElements.Wrap = UnityEngine.UIElements.Wrap


---@class UnityEngine.UIElements.Align
---@field Auto UnityEngine.UIElements.Align
---@field FlexStart UnityEngine.UIElements.Align
---@field Center UnityEngine.UIElements.Align
---@field FlexEnd UnityEngine.UIElements.Align
---@field Stretch UnityEngine.UIElements.Align
UnityEngine.UIElements.Align = {}
---@alias CS.UnityEngine.UIElements.Align UnityEngine.UIElements.Align
CS.UnityEngine.UIElements.Align = UnityEngine.UIElements.Align


---@class UnityEngine.UIElements.Justify
---@field FlexStart UnityEngine.UIElements.Justify
---@field Center UnityEngine.UIElements.Justify
---@field FlexEnd UnityEngine.UIElements.Justify
---@field SpaceBetween UnityEngine.UIElements.Justify
---@field SpaceAround UnityEngine.UIElements.Justify
UnityEngine.UIElements.Justify = {}
---@alias CS.UnityEngine.UIElements.Justify UnityEngine.UIElements.Justify
CS.UnityEngine.UIElements.Justify = UnityEngine.UIElements.Justify


---@class UnityEngine.UIElements.TextOverflowPosition
---@field End UnityEngine.UIElements.TextOverflowPosition
---@field Start UnityEngine.UIElements.TextOverflowPosition
---@field Middle UnityEngine.UIElements.TextOverflowPosition
UnityEngine.UIElements.TextOverflowPosition = {}
---@alias CS.UnityEngine.UIElements.TextOverflowPosition UnityEngine.UIElements.TextOverflowPosition
CS.UnityEngine.UIElements.TextOverflowPosition = UnityEngine.UIElements.TextOverflowPosition


---@class UnityEngine.UIElements.TextOverflow
---@field Clip UnityEngine.UIElements.TextOverflow
---@field Ellipsis UnityEngine.UIElements.TextOverflow
UnityEngine.UIElements.TextOverflow = {}
---@alias CS.UnityEngine.UIElements.TextOverflow UnityEngine.UIElements.TextOverflow
CS.UnityEngine.UIElements.TextOverflow = UnityEngine.UIElements.TextOverflow


---@class UnityEngine.UIElements.TransformOriginOffset
---@field Left UnityEngine.UIElements.TransformOriginOffset
---@field Right UnityEngine.UIElements.TransformOriginOffset
---@field Top UnityEngine.UIElements.TransformOriginOffset
---@field Bottom UnityEngine.UIElements.TransformOriginOffset
---@field Center UnityEngine.UIElements.TransformOriginOffset
UnityEngine.UIElements.TransformOriginOffset = {}
---@alias CS.UnityEngine.UIElements.TransformOriginOffset UnityEngine.UIElements.TransformOriginOffset
CS.UnityEngine.UIElements.TransformOriginOffset = UnityEngine.UIElements.TransformOriginOffset


---@class UnityEngine.UIElements.Visibility
---@field Visible UnityEngine.UIElements.Visibility
---@field Hidden UnityEngine.UIElements.Visibility
UnityEngine.UIElements.Visibility = {}
---@alias CS.UnityEngine.UIElements.Visibility UnityEngine.UIElements.Visibility
CS.UnityEngine.UIElements.Visibility = UnityEngine.UIElements.Visibility


---@class UnityEngine.UIElements.WhiteSpace
---@field Normal UnityEngine.UIElements.WhiteSpace
---@field NoWrap UnityEngine.UIElements.WhiteSpace
UnityEngine.UIElements.WhiteSpace = {}
---@alias CS.UnityEngine.UIElements.WhiteSpace UnityEngine.UIElements.WhiteSpace
CS.UnityEngine.UIElements.WhiteSpace = UnityEngine.UIElements.WhiteSpace


---@class UnityEngine.UIElements.DisplayStyle
---@field Flex UnityEngine.UIElements.DisplayStyle
---@field None UnityEngine.UIElements.DisplayStyle
UnityEngine.UIElements.DisplayStyle = {}
---@alias CS.UnityEngine.UIElements.DisplayStyle UnityEngine.UIElements.DisplayStyle
CS.UnityEngine.UIElements.DisplayStyle = UnityEngine.UIElements.DisplayStyle


---@class UnityEngine.UIElements.BackgroundPositionKeyword
---@field Center UnityEngine.UIElements.BackgroundPositionKeyword
---@field Top UnityEngine.UIElements.BackgroundPositionKeyword
---@field Bottom UnityEngine.UIElements.BackgroundPositionKeyword
---@field Left UnityEngine.UIElements.BackgroundPositionKeyword
---@field Right UnityEngine.UIElements.BackgroundPositionKeyword
UnityEngine.UIElements.BackgroundPositionKeyword = {}
---@alias CS.UnityEngine.UIElements.BackgroundPositionKeyword UnityEngine.UIElements.BackgroundPositionKeyword
CS.UnityEngine.UIElements.BackgroundPositionKeyword = UnityEngine.UIElements.BackgroundPositionKeyword


---@class UnityEngine.UIElements.Repeat
---@field NoRepeat UnityEngine.UIElements.Repeat
---@field Space UnityEngine.UIElements.Repeat
---@field Round UnityEngine.UIElements.Repeat
---@field Repeat UnityEngine.UIElements.Repeat
UnityEngine.UIElements.Repeat = {}
---@alias CS.UnityEngine.UIElements.Repeat UnityEngine.UIElements.Repeat
CS.UnityEngine.UIElements.Repeat = UnityEngine.UIElements.Repeat


---@class UnityEngine.UIElements.RepeatXY
---@field RepeatX UnityEngine.UIElements.RepeatXY
---@field RepeatY UnityEngine.UIElements.RepeatXY
UnityEngine.UIElements.RepeatXY = {}
---@alias CS.UnityEngine.UIElements.RepeatXY UnityEngine.UIElements.RepeatXY
CS.UnityEngine.UIElements.RepeatXY = UnityEngine.UIElements.RepeatXY


---@class UnityEngine.UIElements.BackgroundSizeType
---@field Length UnityEngine.UIElements.BackgroundSizeType
---@field Cover UnityEngine.UIElements.BackgroundSizeType
---@field Contain UnityEngine.UIElements.BackgroundSizeType
UnityEngine.UIElements.BackgroundSizeType = {}
---@alias CS.UnityEngine.UIElements.BackgroundSizeType UnityEngine.UIElements.BackgroundSizeType
CS.UnityEngine.UIElements.BackgroundSizeType = UnityEngine.UIElements.BackgroundSizeType


---@class UnityEngine.UIElements.IStylePainter
---@field visualElement UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.IStylePainter = {}
---@alias CS.UnityEngine.UIElements.IStylePainter UnityEngine.UIElements.IStylePainter
CS.UnityEngine.UIElements.IStylePainter = UnityEngine.UIElements.IStylePainter

---@param vertexCount number
---@param indexCount number
---@param texture UnityEngine.Texture
---@param material UnityEngine.Material
---@param flags UnityEngine.UIElements.MeshGenerationContext.MeshFlags
---@return UnityEngine.UIElements.MeshWriteData
function UnityEngine.UIElements.IStylePainter:DrawMesh(vertexCount, indexCount, texture, material, flags) end
---@overload fun(self: UnityEngine.UIElements.IStylePainter, te: UnityEngine.UIElements.TextElement)
---@param text string
---@param pos UnityEngine.Vector2
---@param fontSize number
---@param color UnityEngine.Color
---@param font UnityEngine.TextCore.Text.FontAsset
function UnityEngine.UIElements.IStylePainter:DrawText(text, pos, fontSize, color, font) end
---@param rectParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.IStylePainter:DrawRectangle(rectParams) end
---@param borderParams UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams
function UnityEngine.UIElements.IStylePainter:DrawBorder(borderParams) end
---@param callback System.Action
---@param cullingEnabled boolean
function UnityEngine.UIElements.IStylePainter:DrawImmediate(callback, cullingEnabled) end
---@param vectorImage UnityEngine.UIElements.VectorImage
---@param pos UnityEngine.Vector2
---@param rotationAngle UnityEngine.UIElements.Angle
---@param scale UnityEngine.Vector2
function UnityEngine.UIElements.IStylePainter:DrawVectorImage(vectorImage, pos, rotationAngle, scale) end

---@class UnityEngine.UIElements.CursorPositionStylePainterParameters : System.ValueType
---@field rect UnityEngine.Rect
---@field text string
---@field font UnityEngine.Font
---@field fontSize number
---@field fontStyle UnityEngine.FontStyle
---@field anchor UnityEngine.TextAnchor
---@field wordWrapWidth number
---@field richText boolean
---@field cursorIndex number
UnityEngine.UIElements.CursorPositionStylePainterParameters = {}
---@alias CS.UnityEngine.UIElements.CursorPositionStylePainterParameters UnityEngine.UIElements.CursorPositionStylePainterParameters
CS.UnityEngine.UIElements.CursorPositionStylePainterParameters = UnityEngine.UIElements.CursorPositionStylePainterParameters

---@param ve UnityEngine.UIElements.VisualElement
---@param text string
---@return UnityEngine.UIElements.CursorPositionStylePainterParameters
function UnityEngine.UIElements.CursorPositionStylePainterParameters.GetDefault(ve, text) end

---@class UnityEngine.UIElements.IStylePropertyAnimations
---@field runningAnimationCount number
---@field completedAnimationCount number
UnityEngine.UIElements.IStylePropertyAnimations = {}
---@alias CS.UnityEngine.UIElements.IStylePropertyAnimations UnityEngine.UIElements.IStylePropertyAnimations
CS.UnityEngine.UIElements.IStylePropertyAnimations = UnityEngine.UIElements.IStylePropertyAnimations

---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: number, to: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: number, to: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.Length, to: UnityEngine.UIElements.Length, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.Color, to: UnityEngine.Color, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.Background, to: UnityEngine.UIElements.Background, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.FontDefinition, to: UnityEngine.UIElements.FontDefinition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.Font, to: UnityEngine.Font, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.TextShadow, to: UnityEngine.UIElements.TextShadow, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.Scale, to: UnityEngine.UIElements.Scale, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.Translate, to: UnityEngine.UIElements.Translate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.Rotate, to: UnityEngine.UIElements.Rotate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.TransformOrigin, to: UnityEngine.UIElements.TransformOrigin, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.BackgroundPosition, to: UnityEngine.UIElements.BackgroundPosition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimations, id: UnityEngine.UIElements.StyleSheets.StylePropertyId, from: UnityEngine.UIElements.BackgroundRepeat, to: UnityEngine.UIElements.BackgroundRepeat, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param from UnityEngine.UIElements.BackgroundSize
---@param to UnityEngine.UIElements.BackgroundSize
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.IStylePropertyAnimations:Start(id, from, to, durationMs, delayMs, easingCurve) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param from number
---@param to number
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.IStylePropertyAnimations:StartEnum(id, from, to, durationMs, delayMs, easingCurve) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.IStylePropertyAnimations:HasRunningAnimation(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.IStylePropertyAnimations:UpdateAnimation(id) end
---@param outPropertyIds System.Collections.Generic.List
function UnityEngine.UIElements.IStylePropertyAnimations:GetAllAnimations(outPropertyIds) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.IStylePropertyAnimations:CancelAnimation(id) end
function UnityEngine.UIElements.IStylePropertyAnimations:CancelAllAnimations() end

---@class UnityEngine.UIElements.IStylePropertyAnimationSystem
UnityEngine.UIElements.IStylePropertyAnimationSystem = {}
---@alias CS.UnityEngine.UIElements.IStylePropertyAnimationSystem UnityEngine.UIElements.IStylePropertyAnimationSystem
CS.UnityEngine.UIElements.IStylePropertyAnimationSystem = UnityEngine.UIElements.IStylePropertyAnimationSystem

---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: number, endValue: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: number, endValue: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Length, endValue: UnityEngine.UIElements.Length, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.Color, endValue: UnityEngine.Color, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Background, endValue: UnityEngine.UIElements.Background, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.FontDefinition, endValue: UnityEngine.UIElements.FontDefinition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.Font, endValue: UnityEngine.Font, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.TextShadow, endValue: UnityEngine.UIElements.TextShadow, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Scale, endValue: UnityEngine.UIElements.Scale, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.TransformOrigin, endValue: UnityEngine.UIElements.TransformOrigin, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Translate, endValue: UnityEngine.UIElements.Translate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Rotate, endValue: UnityEngine.UIElements.Rotate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.BackgroundPosition, endValue: UnityEngine.UIElements.BackgroundPosition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.IStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.BackgroundRepeat, endValue: UnityEngine.UIElements.BackgroundRepeat, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param startValue UnityEngine.UIElements.BackgroundSize
---@param endValue UnityEngine.UIElements.BackgroundSize
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.IStylePropertyAnimationSystem:StartTransition(owner, prop, startValue, endValue, durationMs, delayMs, easingCurve) end
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param startValue number
---@param endValue number
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.IStylePropertyAnimationSystem:StartAnimationEnum(owner, prop, startValue, endValue, durationMs, delayMs, easingCurve) end
---@overload fun()
---@param owner UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.IStylePropertyAnimationSystem:CancelAllAnimations(owner) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.IStylePropertyAnimationSystem:CancelAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.IStylePropertyAnimationSystem:HasRunningAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.IStylePropertyAnimationSystem:UpdateAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param propertyIds System.Collections.Generic.List
function UnityEngine.UIElements.IStylePropertyAnimationSystem:GetAllAnimations(owner, propertyIds) end
function UnityEngine.UIElements.IStylePropertyAnimationSystem:Update() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem : System.Object
UnityEngine.UIElements.StylePropertyAnimationSystem = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem UnityEngine.UIElements.StylePropertyAnimationSystem
CS.UnityEngine.UIElements.StylePropertyAnimationSystem = UnityEngine.UIElements.StylePropertyAnimationSystem

---@return UnityEngine.UIElements.StylePropertyAnimationSystem
function UnityEngine.UIElements.StylePropertyAnimationSystem.New() end
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: number, endValue: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: number, endValue: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Length, endValue: UnityEngine.UIElements.Length, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.Color, endValue: UnityEngine.Color, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Background, endValue: UnityEngine.UIElements.Background, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.FontDefinition, endValue: UnityEngine.UIElements.FontDefinition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.Font, endValue: UnityEngine.Font, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.TextShadow, endValue: UnityEngine.UIElements.TextShadow, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Scale, endValue: UnityEngine.UIElements.Scale, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Rotate, endValue: UnityEngine.UIElements.Rotate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Translate, endValue: UnityEngine.UIElements.Translate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.TransformOrigin, endValue: UnityEngine.UIElements.TransformOrigin, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.BackgroundPosition, endValue: UnityEngine.UIElements.BackgroundPosition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.BackgroundRepeat, endValue: UnityEngine.UIElements.BackgroundRepeat, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param startValue UnityEngine.UIElements.BackgroundSize
---@param endValue UnityEngine.UIElements.BackgroundSize
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem:StartTransition(owner, prop, startValue, endValue, durationMs, delayMs, easingCurve) end
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param startValue number
---@param endValue number
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem:StartAnimationEnum(owner, prop, startValue, endValue, durationMs, delayMs, easingCurve) end
---@overload fun()
---@param owner UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.StylePropertyAnimationSystem:CancelAllAnimations(owner) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StylePropertyAnimationSystem:CancelAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem:HasRunningAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StylePropertyAnimationSystem:UpdateAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param propertyIds System.Collections.Generic.List
function UnityEngine.UIElements.StylePropertyAnimationSystem:GetAllAnimations(owner, propertyIds) end
function UnityEngine.UIElements.StylePropertyAnimationSystem:Update() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState
---@field None UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState
---@field Running UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState
---@field Started UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState
---@field Ended UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState
---@field Canceled UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState
UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState = UnityEngine.UIElements.StylePropertyAnimationSystem.TransitionState


---@class UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet : System.ValueType
---@field elements UnityEngine.UIElements.VisualElement[]
---@field properties UnityEngine.UIElements.StyleSheets.StylePropertyId[]
---@field timing TTimingData[]
---@field style TStyleData[]
---@field count number
UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet = UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet
function UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet.Create() end
---@param ve UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param out_index number
---@return boolean,number
function UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet:IndexOf(ve, prop, out_index) end
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param timingData TTimingData
---@param styleData TStyleData
function UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet:Add(owner, prop, timingData, styleData) end
---@param cancelledIndex number
function UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet:Remove(cancelledIndex) end
---@param index number
---@param timingData TTimingData
---@param styleData TStyleData
function UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet:Replace(index, timingData, styleData) end
---@overload fun(self: UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet, ve: UnityEngine.UIElements.VisualElement)
function UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet:RemoveAll() end
---@param ve UnityEngine.UIElements.VisualElement
---@param outProperties System.Collections.Generic.List
function UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet:GetActivePropertiesForElement(ve, outProperties) end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair : System.ValueType
---@field Comparer System.Collections.Generic.IEqualityComparer
---@field element UnityEngine.UIElements.VisualElement
---@field property UnityEngine.UIElements.StyleSheets.StylePropertyId
UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair = UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair

---@param element UnityEngine.UIElements.VisualElement
---@param property UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair
function UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.New(element, property) end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer : System.Object
UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer = UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer
function UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer.New() end
---@param x UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair
---@param y UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer:Equals(x, y) end
---@param obj UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair
---@return number
function UnityEngine.UIElements.StylePropertyAnimationSystem.ElementPropertyPair.EqualityComparer:GetHashCode(obj) end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.Values : System.Object
UnityEngine.UIElements.StylePropertyAnimationSystem.Values = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values UnityEngine.UIElements.StylePropertyAnimationSystem.Values
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values = UnityEngine.UIElements.StylePropertyAnimationSystem.Values

---@overload fun()
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:CancelAllAnimations(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:CancelAnimation(ve, id) end
---@param ve UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:HasRunningAnimation(ve, id) end
---@param ve UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:UpdateAnimation(ve, id) end
---@param ve UnityEngine.UIElements.VisualElement
---@param outPropertyIds System.Collections.Generic.List
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:GetAllAnimations(ve, outPropertyIds) end
---@param currentTimeMs number
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:Update(currentTimeMs) end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.Values : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field running UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet[UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TimingData[T],UnityEngine.UIElements.StylePropertyAnimationSystem.Values.StyleData[T]]
---@field completed UnityEngine.UIElements.StylePropertyAnimationSystem.AnimationDataSet[UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData[T],T]
---@field isEmpty boolean
---@field SameFunc System.Func[T,T,System.Boolean]
UnityEngine.UIElements.StylePropertyAnimationSystem.Values = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values UnityEngine.UIElements.StylePropertyAnimationSystem.Values
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values = UnityEngine.UIElements.StylePropertyAnimationSystem.Values

---@overload fun()
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:CancelAllAnimations(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:CancelAnimation(ve, id) end
---@param ve UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:HasRunningAnimation(ve, id) end
---@param ve UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:UpdateAnimation(ve, id) end
---@param ve UnityEngine.UIElements.VisualElement
---@param outPropertyIds System.Collections.Generic.List
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:GetAllAnimations(ve, outPropertyIds) end
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param startValue T
---@param endValue T
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@param currentTimeMs number
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:StartTransition(owner, prop, startValue, endValue, durationMs, delayMs, easingCurve, currentTimeMs) end
---@param currentTimeMs number
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values:Update(currentTimeMs) end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState : System.Object
---@field elementPropertyStateDelta System.Collections.Generic.Dictionary
---@field elementPropertyQueuedEvents System.Collections.Generic.Dictionary
---@field panel UnityEngine.UIElements.IPanel
UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState = UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState.New() end
---@return System.Collections.Generic.Queue
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState.GetPooledQueue() end
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState:RegisterChange() end
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState:UnregisterChange() end
---@return boolean
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState:StateChanged() end
function UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TransitionEventsFrameState:Clear() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TimingData : System.ValueType
---@field startTimeMs number
---@field durationMs number
---@field easingCurve System.Func
---@field easedProgress number
---@field reversingShorteningFactor number
---@field isStarted boolean
---@field delayMs number
UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TimingData = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TimingData UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TimingData
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TimingData = UnityEngine.UIElements.StylePropertyAnimationSystem.Values.TimingData


---@class UnityEngine.UIElements.StylePropertyAnimationSystem.Values.StyleData : System.ValueType
---@field startValue T
---@field endValue T
---@field reversingAdjustedStartValue T
---@field currentValue T
UnityEngine.UIElements.StylePropertyAnimationSystem.Values.StyleData = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.StyleData UnityEngine.UIElements.StylePropertyAnimationSystem.Values.StyleData
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.StyleData = UnityEngine.UIElements.StylePropertyAnimationSystem.Values.StyleData


---@class UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData : System.ValueType
---@field Default UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData
UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData = UnityEngine.UIElements.StylePropertyAnimationSystem.Values.EmptyData


---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFloat.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesInt.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesLength.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesColor.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete : UnityEngine.UIElements.StylePropertyAnimationSystem.Values[T]
---@field SameFunc System.Func[T,T,System.Boolean]
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete


---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum : UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesEnum.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground : UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackground.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition : UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFontDefinition.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont : UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesFont.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTextShadow.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesScale.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesRotate.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTranslate.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesTransformOrigin.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition : UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundPosition.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat : UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesDiscrete
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundRepeat.New() end

---@class UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize : UnityEngine.UIElements.StylePropertyAnimationSystem.Values
---@field SameFunc System.Func
UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize = {}
---@alias CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize
CS.UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize = UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize

---@return UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize
function UnityEngine.UIElements.StylePropertyAnimationSystem.ValuesBackgroundSize.New() end

---@class UnityEngine.UIElements.EmptyStylePropertyAnimationSystem : System.Object
UnityEngine.UIElements.EmptyStylePropertyAnimationSystem = {}
---@alias CS.UnityEngine.UIElements.EmptyStylePropertyAnimationSystem UnityEngine.UIElements.EmptyStylePropertyAnimationSystem
CS.UnityEngine.UIElements.EmptyStylePropertyAnimationSystem = UnityEngine.UIElements.EmptyStylePropertyAnimationSystem

---@return UnityEngine.UIElements.EmptyStylePropertyAnimationSystem
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem.New() end
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: number, endValue: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: number, endValue: number, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Length, endValue: UnityEngine.UIElements.Length, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.Color, endValue: UnityEngine.Color, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Background, endValue: UnityEngine.UIElements.Background, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.FontDefinition, endValue: UnityEngine.UIElements.FontDefinition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.Font, endValue: UnityEngine.Font, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Cursor, endValue: UnityEngine.UIElements.Cursor, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.TextShadow, endValue: UnityEngine.UIElements.TextShadow, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Scale, endValue: UnityEngine.UIElements.Scale, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.TransformOrigin, endValue: UnityEngine.UIElements.TransformOrigin, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Translate, endValue: UnityEngine.UIElements.Translate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.Rotate, endValue: UnityEngine.UIElements.Rotate, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.BackgroundPosition, endValue: UnityEngine.UIElements.BackgroundPosition, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@overload fun(self: UnityEngine.UIElements.EmptyStylePropertyAnimationSystem, owner: UnityEngine.UIElements.VisualElement, prop: UnityEngine.UIElements.StyleSheets.StylePropertyId, startValue: UnityEngine.UIElements.BackgroundRepeat, endValue: UnityEngine.UIElements.BackgroundRepeat, durationMs: number, delayMs: number, easingCurve: System.Func) : boolean
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param startValue UnityEngine.UIElements.BackgroundSize
---@param endValue UnityEngine.UIElements.BackgroundSize
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:StartTransition(owner, prop, startValue, endValue, durationMs, delayMs, easingCurve) end
---@param owner UnityEngine.UIElements.VisualElement
---@param prop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param startValue number
---@param endValue number
---@param durationMs number
---@param delayMs number
---@param easingCurve System.Func
---@return boolean
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:StartAnimationEnum(owner, prop, startValue, endValue, durationMs, delayMs, easingCurve) end
---@overload fun()
---@param owner UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:CancelAllAnimations(owner) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:CancelAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:HasRunningAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:UpdateAnimation(owner, id) end
---@param owner UnityEngine.UIElements.VisualElement
---@param propertyIds System.Collections.Generic.List
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:GetAllAnimations(owner, propertyIds) end
function UnityEngine.UIElements.EmptyStylePropertyAnimationSystem:Update() end

---@class UnityEngine.UIElements.StylePropertyName : System.ValueType
UnityEngine.UIElements.StylePropertyName = {}
---@alias CS.UnityEngine.UIElements.StylePropertyName UnityEngine.UIElements.StylePropertyName
CS.UnityEngine.UIElements.StylePropertyName = UnityEngine.UIElements.StylePropertyName

---@param name string
---@return UnityEngine.UIElements.StylePropertyName
function UnityEngine.UIElements.StylePropertyName.New(name) end
---@param propertyName UnityEngine.UIElements.StylePropertyName
---@return boolean
function UnityEngine.UIElements.StylePropertyName.IsNullOrEmpty(propertyName) end
---@return number
function UnityEngine.UIElements.StylePropertyName:GetHashCode() end
---@overload fun(self: UnityEngine.UIElements.StylePropertyName, other: System.Object) : boolean
---@param other UnityEngine.UIElements.StylePropertyName
---@return boolean
function UnityEngine.UIElements.StylePropertyName:Equals(other) end
---@return string
function UnityEngine.UIElements.StylePropertyName:ToString() end

---@class UnityEngine.UIElements.Salt
---@field TagNameSalt UnityEngine.UIElements.Salt
---@field IdSalt UnityEngine.UIElements.Salt
---@field ClassSalt UnityEngine.UIElements.Salt
UnityEngine.UIElements.Salt = {}
---@alias CS.UnityEngine.UIElements.Salt UnityEngine.UIElements.Salt
CS.UnityEngine.UIElements.Salt = UnityEngine.UIElements.Salt


---@class UnityEngine.UIElements.Hashes : System.ValueType
---@field kSize number
---@field hashes UnityEngine.UIElements.Hashes.<hashes>e__FixedBuffer
UnityEngine.UIElements.Hashes = {}
---@alias CS.UnityEngine.UIElements.Hashes UnityEngine.UIElements.Hashes
CS.UnityEngine.UIElements.Hashes = UnityEngine.UIElements.Hashes


---@class UnityEngine.UIElements.StyleComplexSelector : System.Object
---@field ancestorHashes UnityEngine.UIElements.Hashes
---@field specificity number
---@field rule UnityEngine.UIElements.StyleRule
---@field isSimple boolean
---@field selectors UnityEngine.UIElements.StyleSelector[]
UnityEngine.UIElements.StyleComplexSelector = {}
---@alias CS.UnityEngine.UIElements.StyleComplexSelector UnityEngine.UIElements.StyleComplexSelector
CS.UnityEngine.UIElements.StyleComplexSelector = UnityEngine.UIElements.StyleComplexSelector

---@return UnityEngine.UIElements.StyleComplexSelector
function UnityEngine.UIElements.StyleComplexSelector.New() end
function UnityEngine.UIElements.StyleComplexSelector:OnBeforeSerialize() end
function UnityEngine.UIElements.StyleComplexSelector:OnAfterDeserialize() end
---@return string
function UnityEngine.UIElements.StyleComplexSelector:ToString() end

---@class UnityEngine.UIElements.StyleComplexSelector.PseudoStateData : System.ValueType
---@field state UnityEngine.UIElements.PseudoStates
---@field negate boolean
UnityEngine.UIElements.StyleComplexSelector.PseudoStateData = {}
---@alias CS.UnityEngine.UIElements.StyleComplexSelector.PseudoStateData UnityEngine.UIElements.StyleComplexSelector.PseudoStateData
CS.UnityEngine.UIElements.StyleComplexSelector.PseudoStateData = UnityEngine.UIElements.StyleComplexSelector.PseudoStateData

---@param state UnityEngine.UIElements.PseudoStates
---@param negate boolean
---@return UnityEngine.UIElements.StyleComplexSelector.PseudoStateData
function UnityEngine.UIElements.StyleComplexSelector.PseudoStateData.New(state, negate) end

---@class UnityEngine.UIElements.StyleProperty : System.Object
---@field name string
---@field line number
---@field values UnityEngine.UIElements.StyleValueHandle[]
UnityEngine.UIElements.StyleProperty = {}
---@alias CS.UnityEngine.UIElements.StyleProperty UnityEngine.UIElements.StyleProperty
CS.UnityEngine.UIElements.StyleProperty = UnityEngine.UIElements.StyleProperty

---@return UnityEngine.UIElements.StyleProperty
function UnityEngine.UIElements.StyleProperty.New() end

---@class UnityEngine.UIElements.StyleRule : System.Object
---@field properties UnityEngine.UIElements.StyleProperty[]
UnityEngine.UIElements.StyleRule = {}
---@alias CS.UnityEngine.UIElements.StyleRule UnityEngine.UIElements.StyleRule
CS.UnityEngine.UIElements.StyleRule = UnityEngine.UIElements.StyleRule

---@return UnityEngine.UIElements.StyleRule
function UnityEngine.UIElements.StyleRule.New() end

---@class UnityEngine.UIElements.StyleSelector : System.Object
---@field parts UnityEngine.UIElements.StyleSelectorPart[]
---@field previousRelationship UnityEngine.UIElements.StyleSelectorRelationship
UnityEngine.UIElements.StyleSelector = {}
---@alias CS.UnityEngine.UIElements.StyleSelector UnityEngine.UIElements.StyleSelector
CS.UnityEngine.UIElements.StyleSelector = UnityEngine.UIElements.StyleSelector

---@return UnityEngine.UIElements.StyleSelector
function UnityEngine.UIElements.StyleSelector.New() end
---@return string
function UnityEngine.UIElements.StyleSelector:ToString() end

---@class UnityEngine.UIElements.StyleSelectorPart : System.ValueType
---@field value string
---@field type UnityEngine.UIElements.StyleSelectorType
UnityEngine.UIElements.StyleSelectorPart = {}
---@alias CS.UnityEngine.UIElements.StyleSelectorPart UnityEngine.UIElements.StyleSelectorPart
CS.UnityEngine.UIElements.StyleSelectorPart = UnityEngine.UIElements.StyleSelectorPart

---@param className string
---@return UnityEngine.UIElements.StyleSelectorPart
function UnityEngine.UIElements.StyleSelectorPart.CreateClass(className) end
---@param className string
---@return UnityEngine.UIElements.StyleSelectorPart
function UnityEngine.UIElements.StyleSelectorPart.CreatePseudoClass(className) end
---@param Id string
---@return UnityEngine.UIElements.StyleSelectorPart
function UnityEngine.UIElements.StyleSelectorPart.CreateId(Id) end
---@overload fun(t: System.Type) : UnityEngine.UIElements.StyleSelectorPart
---@param typeName string
---@return UnityEngine.UIElements.StyleSelectorPart
function UnityEngine.UIElements.StyleSelectorPart.CreateType(typeName) end
---@param predicate System.Object
---@return UnityEngine.UIElements.StyleSelectorPart
function UnityEngine.UIElements.StyleSelectorPart.CreatePredicate(predicate) end
---@return UnityEngine.UIElements.StyleSelectorPart
function UnityEngine.UIElements.StyleSelectorPart.CreateWildCard() end
---@return string
function UnityEngine.UIElements.StyleSelectorPart:ToString() end

---@class UnityEngine.UIElements.StyleSelectorRelationship
---@field None UnityEngine.UIElements.StyleSelectorRelationship
---@field Child UnityEngine.UIElements.StyleSelectorRelationship
---@field Descendent UnityEngine.UIElements.StyleSelectorRelationship
UnityEngine.UIElements.StyleSelectorRelationship = {}
---@alias CS.UnityEngine.UIElements.StyleSelectorRelationship UnityEngine.UIElements.StyleSelectorRelationship
CS.UnityEngine.UIElements.StyleSelectorRelationship = UnityEngine.UIElements.StyleSelectorRelationship


---@class UnityEngine.UIElements.StyleSelectorType
---@field Unknown UnityEngine.UIElements.StyleSelectorType
---@field Wildcard UnityEngine.UIElements.StyleSelectorType
---@field Type UnityEngine.UIElements.StyleSelectorType
---@field Class UnityEngine.UIElements.StyleSelectorType
---@field PseudoClass UnityEngine.UIElements.StyleSelectorType
---@field RecursivePseudoClass UnityEngine.UIElements.StyleSelectorType
---@field ID UnityEngine.UIElements.StyleSelectorType
---@field Predicate UnityEngine.UIElements.StyleSelectorType
UnityEngine.UIElements.StyleSelectorType = {}
---@alias CS.UnityEngine.UIElements.StyleSelectorType UnityEngine.UIElements.StyleSelectorType
CS.UnityEngine.UIElements.StyleSelectorType = UnityEngine.UIElements.StyleSelectorType


---@class UnityEngine.UIElements.StyleSheet : UnityEngine.ScriptableObject
---@field importedWithErrors boolean
---@field importedWithWarnings boolean
---@field contentHash number
UnityEngine.UIElements.StyleSheet = {}
---@alias CS.UnityEngine.UIElements.StyleSheet UnityEngine.UIElements.StyleSheet
CS.UnityEngine.UIElements.StyleSheet = UnityEngine.UIElements.StyleSheet

---@return UnityEngine.UIElements.StyleSheet
function UnityEngine.UIElements.StyleSheet.New() end
---@param handle UnityEngine.UIElements.StyleValueHandle
---@return string
function UnityEngine.UIElements.StyleSheet:ReadAsString(handle) end

---@class UnityEngine.UIElements.StyleSheet.ImportStruct : System.ValueType
---@field styleSheet UnityEngine.UIElements.StyleSheet
---@field mediaQueries System.String[]
UnityEngine.UIElements.StyleSheet.ImportStruct = {}
---@alias CS.UnityEngine.UIElements.StyleSheet.ImportStruct UnityEngine.UIElements.StyleSheet.ImportStruct
CS.UnityEngine.UIElements.StyleSheet.ImportStruct = UnityEngine.UIElements.StyleSheet.ImportStruct


---@class UnityEngine.UIElements.StyleValueFunction
---@field Unknown UnityEngine.UIElements.StyleValueFunction
---@field Var UnityEngine.UIElements.StyleValueFunction
---@field Env UnityEngine.UIElements.StyleValueFunction
---@field LinearGradient UnityEngine.UIElements.StyleValueFunction
UnityEngine.UIElements.StyleValueFunction = {}
---@alias CS.UnityEngine.UIElements.StyleValueFunction UnityEngine.UIElements.StyleValueFunction
CS.UnityEngine.UIElements.StyleValueFunction = UnityEngine.UIElements.StyleValueFunction

---@return string
function UnityEngine.UIElements.StyleValueFunction:ToUssString() end

---@class UnityEngine.UIElements.StyleValueFunctionExtension : System.Object
---@field k_Var string
---@field k_Env string
---@field k_LinearGradient string
UnityEngine.UIElements.StyleValueFunctionExtension = {}
---@alias CS.UnityEngine.UIElements.StyleValueFunctionExtension UnityEngine.UIElements.StyleValueFunctionExtension
CS.UnityEngine.UIElements.StyleValueFunctionExtension = UnityEngine.UIElements.StyleValueFunctionExtension

---@param ussValue string
---@return UnityEngine.UIElements.StyleValueFunction
function UnityEngine.UIElements.StyleValueFunctionExtension.FromUssString(ussValue) end
---@param svf UnityEngine.UIElements.StyleValueFunction
---@return string
function UnityEngine.UIElements.StyleValueFunctionExtension.ToUssString(svf) end

---@class UnityEngine.UIElements.StyleValueHandle : System.ValueType
---@field valueType UnityEngine.UIElements.StyleValueType
UnityEngine.UIElements.StyleValueHandle = {}
---@alias CS.UnityEngine.UIElements.StyleValueHandle UnityEngine.UIElements.StyleValueHandle
CS.UnityEngine.UIElements.StyleValueHandle = UnityEngine.UIElements.StyleValueHandle

---@return boolean
function UnityEngine.UIElements.StyleValueHandle:IsVarFunction() end

---@class UnityEngine.UIElements.StyleValueKeyword
---@field Inherit UnityEngine.UIElements.StyleValueKeyword
---@field Initial UnityEngine.UIElements.StyleValueKeyword
---@field Auto UnityEngine.UIElements.StyleValueKeyword
---@field Unset UnityEngine.UIElements.StyleValueKeyword
---@field True UnityEngine.UIElements.StyleValueKeyword
---@field False UnityEngine.UIElements.StyleValueKeyword
---@field None UnityEngine.UIElements.StyleValueKeyword
UnityEngine.UIElements.StyleValueKeyword = {}
---@alias CS.UnityEngine.UIElements.StyleValueKeyword UnityEngine.UIElements.StyleValueKeyword
CS.UnityEngine.UIElements.StyleValueKeyword = UnityEngine.UIElements.StyleValueKeyword

---@return string
function UnityEngine.UIElements.StyleValueKeyword:ToUssString() end

---@class UnityEngine.UIElements.StyleValueKeywordExtension : System.Object
UnityEngine.UIElements.StyleValueKeywordExtension = {}
---@alias CS.UnityEngine.UIElements.StyleValueKeywordExtension UnityEngine.UIElements.StyleValueKeywordExtension
CS.UnityEngine.UIElements.StyleValueKeywordExtension = UnityEngine.UIElements.StyleValueKeywordExtension

---@param svk UnityEngine.UIElements.StyleValueKeyword
---@return string
function UnityEngine.UIElements.StyleValueKeywordExtension.ToUssString(svk) end

---@class UnityEngine.UIElements.StyleValueType
---@field Invalid UnityEngine.UIElements.StyleValueType
---@field Keyword UnityEngine.UIElements.StyleValueType
---@field Float UnityEngine.UIElements.StyleValueType
---@field Dimension UnityEngine.UIElements.StyleValueType
---@field Color UnityEngine.UIElements.StyleValueType
---@field ResourcePath UnityEngine.UIElements.StyleValueType
---@field AssetReference UnityEngine.UIElements.StyleValueType
---@field Enum UnityEngine.UIElements.StyleValueType
---@field Variable UnityEngine.UIElements.StyleValueType
---@field String UnityEngine.UIElements.StyleValueType
---@field Function UnityEngine.UIElements.StyleValueType
---@field CommaSeparator UnityEngine.UIElements.StyleValueType
---@field ScalableImage UnityEngine.UIElements.StyleValueType
---@field MissingAssetReference UnityEngine.UIElements.StyleValueType
UnityEngine.UIElements.StyleValueType = {}
---@alias CS.UnityEngine.UIElements.StyleValueType UnityEngine.UIElements.StyleValueType
CS.UnityEngine.UIElements.StyleValueType = UnityEngine.UIElements.StyleValueType


---@class UnityEngine.UIElements.StyleVariable : System.ValueType
---@field name string
---@field sheet UnityEngine.UIElements.StyleSheet
---@field handles UnityEngine.UIElements.StyleValueHandle[]
UnityEngine.UIElements.StyleVariable = {}
---@alias CS.UnityEngine.UIElements.StyleVariable UnityEngine.UIElements.StyleVariable
CS.UnityEngine.UIElements.StyleVariable = UnityEngine.UIElements.StyleVariable

---@param name string
---@param sheet UnityEngine.UIElements.StyleSheet
---@param handles UnityEngine.UIElements.StyleValueHandle[]
---@return UnityEngine.UIElements.StyleVariable
function UnityEngine.UIElements.StyleVariable.New(name, sheet, handles) end
---@return number
function UnityEngine.UIElements.StyleVariable:GetHashCode() end

---@class UnityEngine.UIElements.StyleVariableContext : System.Object
---@field none UnityEngine.UIElements.StyleVariableContext
---@field variables System.Collections.Generic.List
UnityEngine.UIElements.StyleVariableContext = {}
---@alias CS.UnityEngine.UIElements.StyleVariableContext UnityEngine.UIElements.StyleVariableContext
CS.UnityEngine.UIElements.StyleVariableContext = UnityEngine.UIElements.StyleVariableContext

---@overload fun() : UnityEngine.UIElements.StyleVariableContext
---@param other UnityEngine.UIElements.StyleVariableContext
---@return UnityEngine.UIElements.StyleVariableContext
function UnityEngine.UIElements.StyleVariableContext.New(other) end
---@param sv UnityEngine.UIElements.StyleVariable
function UnityEngine.UIElements.StyleVariableContext:Add(sv) end
---@param other UnityEngine.UIElements.StyleVariableContext
function UnityEngine.UIElements.StyleVariableContext:AddInitialRange(other) end
function UnityEngine.UIElements.StyleVariableContext:Clear() end
---@param name string
---@param out_v UnityEngine.UIElements.StyleVariable
---@return boolean,UnityEngine.UIElements.StyleVariable
function UnityEngine.UIElements.StyleVariableContext:TryFindVariable(name, out_v) end
---@return number
function UnityEngine.UIElements.StyleVariableContext:GetVariableHash() end

---@class UnityEngine.UIElements.StyleVariableResolver : System.Object
---@field resolvedValues System.Collections.Generic.List
---@field variableContext UnityEngine.UIElements.StyleVariableContext
UnityEngine.UIElements.StyleVariableResolver = {}
---@alias CS.UnityEngine.UIElements.StyleVariableResolver UnityEngine.UIElements.StyleVariableResolver
CS.UnityEngine.UIElements.StyleVariableResolver = UnityEngine.UIElements.StyleVariableResolver

---@return UnityEngine.UIElements.StyleVariableResolver
function UnityEngine.UIElements.StyleVariableResolver.New() end
---@param property UnityEngine.UIElements.StyleProperty
---@param sheet UnityEngine.UIElements.StyleSheet
---@param handles UnityEngine.UIElements.StyleValueHandle[]
function UnityEngine.UIElements.StyleVariableResolver:Init(property, sheet, handles) end
---@param handle UnityEngine.UIElements.StyleValueHandle
function UnityEngine.UIElements.StyleVariableResolver:AddValue(handle) end
---@param ref_index number
---@return boolean,number
function UnityEngine.UIElements.StyleVariableResolver:ResolveVarFunction(ref_index) end
---@return boolean
function UnityEngine.UIElements.StyleVariableResolver:ValidateResolvedValues() end

---@class UnityEngine.UIElements.StyleVariableResolver.Result
---@field Valid UnityEngine.UIElements.StyleVariableResolver.Result
---@field Invalid UnityEngine.UIElements.StyleVariableResolver.Result
---@field NotFound UnityEngine.UIElements.StyleVariableResolver.Result
UnityEngine.UIElements.StyleVariableResolver.Result = {}
---@alias CS.UnityEngine.UIElements.StyleVariableResolver.Result UnityEngine.UIElements.StyleVariableResolver.Result
CS.UnityEngine.UIElements.StyleVariableResolver.Result = UnityEngine.UIElements.StyleVariableResolver.Result


---@class UnityEngine.UIElements.StyleVariableResolver.ResolveContext : System.ValueType
---@field sheet UnityEngine.UIElements.StyleSheet
---@field handles UnityEngine.UIElements.StyleValueHandle[]
UnityEngine.UIElements.StyleVariableResolver.ResolveContext = {}
---@alias CS.UnityEngine.UIElements.StyleVariableResolver.ResolveContext UnityEngine.UIElements.StyleVariableResolver.ResolveContext
CS.UnityEngine.UIElements.StyleVariableResolver.ResolveContext = UnityEngine.UIElements.StyleVariableResolver.ResolveContext


---@class UnityEngine.UIElements.ThemeStyleSheet : UnityEngine.UIElements.StyleSheet
UnityEngine.UIElements.ThemeStyleSheet = {}
---@alias CS.UnityEngine.UIElements.ThemeStyleSheet UnityEngine.UIElements.ThemeStyleSheet
CS.UnityEngine.UIElements.ThemeStyleSheet = UnityEngine.UIElements.ThemeStyleSheet

---@return UnityEngine.UIElements.ThemeStyleSheet
function UnityEngine.UIElements.ThemeStyleSheet.New() end

---@class UnityEngine.UIElements.TemplateContainer : UnityEngine.UIElements.BindableElement
---@field templateId string
---@field templateSource UnityEngine.UIElements.VisualTreeAsset
---@field contentContainer UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.TemplateContainer = {}
---@alias CS.UnityEngine.UIElements.TemplateContainer UnityEngine.UIElements.TemplateContainer
CS.UnityEngine.UIElements.TemplateContainer = UnityEngine.UIElements.TemplateContainer

---@overload fun() : UnityEngine.UIElements.TemplateContainer
---@param templateId string
---@return UnityEngine.UIElements.TemplateContainer
function UnityEngine.UIElements.TemplateContainer.New(templateId) end

---@class UnityEngine.UIElements.TemplateContainer.UxmlFactory : UnityEngine.UIElements.UxmlFactory
---@field uxmlName string
---@field uxmlQualifiedName string
UnityEngine.UIElements.TemplateContainer.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.TemplateContainer.UxmlFactory UnityEngine.UIElements.TemplateContainer.UxmlFactory
CS.UnityEngine.UIElements.TemplateContainer.UxmlFactory = UnityEngine.UIElements.TemplateContainer.UxmlFactory

---@return UnityEngine.UIElements.TemplateContainer.UxmlFactory
function UnityEngine.UIElements.TemplateContainer.UxmlFactory.New() end

---@class UnityEngine.UIElements.TemplateContainer.UxmlTraits : UnityEngine.UIElements.BindableElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.TemplateContainer.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.TemplateContainer.UxmlTraits UnityEngine.UIElements.TemplateContainer.UxmlTraits
CS.UnityEngine.UIElements.TemplateContainer.UxmlTraits = UnityEngine.UIElements.TemplateContainer.UxmlTraits

---@return UnityEngine.UIElements.TemplateContainer.UxmlTraits
function UnityEngine.UIElements.TemplateContainer.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.TemplateContainer.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.PanelTextSettings : UnityEngine.TextCore.Text.TextSettings
UnityEngine.UIElements.PanelTextSettings = {}
---@alias CS.UnityEngine.UIElements.PanelTextSettings UnityEngine.UIElements.PanelTextSettings
CS.UnityEngine.UIElements.PanelTextSettings = UnityEngine.UIElements.PanelTextSettings

---@return UnityEngine.UIElements.PanelTextSettings
function UnityEngine.UIElements.PanelTextSettings.New() end

---@class UnityEngine.UIElements.TextEditingManipulator : System.Object
UnityEngine.UIElements.TextEditingManipulator = {}
---@alias CS.UnityEngine.UIElements.TextEditingManipulator UnityEngine.UIElements.TextEditingManipulator
CS.UnityEngine.UIElements.TextEditingManipulator = UnityEngine.UIElements.TextEditingManipulator

---@param textElement UnityEngine.UIElements.TextElement
---@return UnityEngine.UIElements.TextEditingManipulator
function UnityEngine.UIElements.TextEditingManipulator.New(textElement) end

---@class UnityEngine.UIElements.TextSelectingManipulator : System.Object
UnityEngine.UIElements.TextSelectingManipulator = {}
---@alias CS.UnityEngine.UIElements.TextSelectingManipulator UnityEngine.UIElements.TextSelectingManipulator
CS.UnityEngine.UIElements.TextSelectingManipulator = UnityEngine.UIElements.TextSelectingManipulator

---@param textElement UnityEngine.UIElements.TextElement
---@return UnityEngine.UIElements.TextSelectingManipulator
function UnityEngine.UIElements.TextSelectingManipulator.New(textElement) end

---@class UnityEngine.UIElements.UITKTextHandle : UnityEngine.TextCore.Text.TextHandle
---@field MeasuredSizes UnityEngine.Vector2
---@field RoundedSizes UnityEngine.Vector2
UnityEngine.UIElements.UITKTextHandle = {}
---@alias CS.UnityEngine.UIElements.UITKTextHandle UnityEngine.UIElements.UITKTextHandle
CS.UnityEngine.UIElements.UITKTextHandle = UnityEngine.UIElements.UITKTextHandle

---@param te UnityEngine.UIElements.TextElement
---@return UnityEngine.UIElements.UITKTextHandle
function UnityEngine.UIElements.UITKTextHandle.New(te) end
---@param textToMeasure string
---@param wordWrap boolean
---@param width number
---@param height number
---@return number
function UnityEngine.UIElements.UITKTextHandle:ComputeTextWidth(textToMeasure, wordWrap, width, height) end
---@param textToMeasure string
---@param width number
---@param height number
---@return number
function UnityEngine.UIElements.UITKTextHandle:ComputeTextHeight(textToMeasure, width, height) end
---@return UnityEngine.TextCore.Text.TextInfo
function UnityEngine.UIElements.UITKTextHandle:Update() end

---@class UnityEngine.UIElements.TextUtilities : System.Object
UnityEngine.UIElements.TextUtilities = {}
---@alias CS.UnityEngine.UIElements.TextUtilities UnityEngine.UIElements.TextUtilities
CS.UnityEngine.UIElements.TextUtilities = UnityEngine.UIElements.TextUtilities


---@class UnityEngine.UIElements.ITextElement
---@field text string
UnityEngine.UIElements.ITextElement = {}
---@alias CS.UnityEngine.UIElements.ITextElement UnityEngine.UIElements.ITextElement
CS.UnityEngine.UIElements.ITextElement = UnityEngine.UIElements.ITextElement


---@class UnityEngine.UIElements.TextElement : UnityEngine.UIElements.BindableElement
---@field ussClassName string
---@field text string
---@field enableRichText boolean
---@field parseEscapeSequences boolean
---@field displayTooltipWhenElided boolean
---@field isElided boolean
---@field experimental UnityEngine.UIElements.ITextElementExperimentalFeatures
---@field selection UnityEngine.UIElements.ITextSelection
UnityEngine.UIElements.TextElement = {}
---@alias CS.UnityEngine.UIElements.TextElement UnityEngine.UIElements.TextElement
CS.UnityEngine.UIElements.TextElement = UnityEngine.UIElements.TextElement

---@return UnityEngine.UIElements.TextElement
function UnityEngine.UIElements.TextElement.New() end
---@param textToMeasure string
---@param width number
---@param widthMode UnityEngine.UIElements.VisualElement.MeasureMode
---@param height number
---@param heightMode UnityEngine.UIElements.VisualElement.MeasureMode
---@return UnityEngine.Vector2
function UnityEngine.UIElements.TextElement:MeasureTextSize(textToMeasure, width, widthMode, height, heightMode) end

---@class UnityEngine.UIElements.TextElement.UxmlFactory : UnityEngine.UIElements.UxmlFactory
UnityEngine.UIElements.TextElement.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.TextElement.UxmlFactory UnityEngine.UIElements.TextElement.UxmlFactory
CS.UnityEngine.UIElements.TextElement.UxmlFactory = UnityEngine.UIElements.TextElement.UxmlFactory

---@return UnityEngine.UIElements.TextElement.UxmlFactory
function UnityEngine.UIElements.TextElement.UxmlFactory.New() end

---@class UnityEngine.UIElements.TextElement.UxmlTraits : UnityEngine.UIElements.BindableElement.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.TextElement.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.TextElement.UxmlTraits UnityEngine.UIElements.TextElement.UxmlTraits
CS.UnityEngine.UIElements.TextElement.UxmlTraits = UnityEngine.UIElements.TextElement.UxmlTraits

---@return UnityEngine.UIElements.TextElement.UxmlTraits
function UnityEngine.UIElements.TextElement.UxmlTraits.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.TextElement.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.ITextEdition
---@field isReadOnly boolean
---@field maxLength number
---@field isDelayed boolean
---@field maskChar System.Char
---@field isPassword boolean
---@field autoCorrection boolean
---@field hideMobileInput boolean
---@field touchScreenKeyboard UnityEngine.TouchScreenKeyboard
---@field keyboardType UnityEngine.TouchScreenKeyboardType
UnityEngine.UIElements.ITextEdition = {}
---@alias CS.UnityEngine.UIElements.ITextEdition UnityEngine.UIElements.ITextEdition
CS.UnityEngine.UIElements.ITextEdition = UnityEngine.UIElements.ITextEdition


---@class UnityEngine.UIElements.ITextElementExperimentalFeatures
UnityEngine.UIElements.ITextElementExperimentalFeatures = {}
---@alias CS.UnityEngine.UIElements.ITextElementExperimentalFeatures UnityEngine.UIElements.ITextElementExperimentalFeatures
CS.UnityEngine.UIElements.ITextElementExperimentalFeatures = UnityEngine.UIElements.ITextElementExperimentalFeatures

---@param renderedText string
function UnityEngine.UIElements.ITextElementExperimentalFeatures:SetRenderedText(renderedText) end

---@class UnityEngine.UIElements.ITextSelection
---@field isSelectable boolean
---@field cursorColor UnityEngine.Color
---@field cursorIndex number
---@field doubleClickSelectsWord boolean
---@field selectIndex number
---@field selectionColor UnityEngine.Color
---@field tripleClickSelectsLine boolean
---@field cursorPosition UnityEngine.Vector2
UnityEngine.UIElements.ITextSelection = {}
---@alias CS.UnityEngine.UIElements.ITextSelection UnityEngine.UIElements.ITextSelection
CS.UnityEngine.UIElements.ITextSelection = UnityEngine.UIElements.ITextSelection

---@return boolean
function UnityEngine.UIElements.ITextSelection:HasSelection() end
function UnityEngine.UIElements.ITextSelection:SelectAll() end
function UnityEngine.UIElements.ITextSelection:SelectNone() end
---@param cursorIndex number
---@param selectionIndex number
function UnityEngine.UIElements.ITextSelection:SelectRange(cursorIndex, selectionIndex) end

---@class UnityEngine.UIElements.TextShadow : System.ValueType
---@field offset UnityEngine.Vector2
---@field blurRadius number
---@field color UnityEngine.Color
UnityEngine.UIElements.TextShadow = {}
---@alias CS.UnityEngine.UIElements.TextShadow UnityEngine.UIElements.TextShadow
CS.UnityEngine.UIElements.TextShadow = UnityEngine.UIElements.TextShadow

---@overload fun(self: UnityEngine.UIElements.TextShadow, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.TextShadow
---@return boolean
function UnityEngine.UIElements.TextShadow:Equals(other) end
---@return number
function UnityEngine.UIElements.TextShadow:GetHashCode() end
---@return string
function UnityEngine.UIElements.TextShadow:ToString() end

---@class UnityEngine.UIElements.UIElementsBridge : System.Object
UnityEngine.UIElements.UIElementsBridge = {}
---@alias CS.UnityEngine.UIElements.UIElementsBridge UnityEngine.UIElements.UIElementsBridge
CS.UnityEngine.UIElements.UIElementsBridge = UnityEngine.UIElements.UIElementsBridge

---@param value number
function UnityEngine.UIElements.UIElementsBridge:SetWantsMouseJumping(value) end

---@class UnityEngine.UIElements.RuntimeUIElementsBridge : UnityEngine.UIElements.UIElementsBridge
UnityEngine.UIElements.RuntimeUIElementsBridge = {}
---@alias CS.UnityEngine.UIElements.RuntimeUIElementsBridge UnityEngine.UIElements.RuntimeUIElementsBridge
CS.UnityEngine.UIElements.RuntimeUIElementsBridge = UnityEngine.UIElements.RuntimeUIElementsBridge

---@return UnityEngine.UIElements.RuntimeUIElementsBridge
function UnityEngine.UIElements.RuntimeUIElementsBridge.New() end
---@param value number
function UnityEngine.UIElements.RuntimeUIElementsBridge:SetWantsMouseJumping(value) end

---@class UnityEngine.UIElements.UIElementsPackageUtility : System.Object
UnityEngine.UIElements.UIElementsPackageUtility = {}
---@alias CS.UnityEngine.UIElements.UIElementsPackageUtility UnityEngine.UIElements.UIElementsPackageUtility
CS.UnityEngine.UIElements.UIElementsPackageUtility = UnityEngine.UIElements.UIElementsPackageUtility


---@class UnityEngine.UIElements.UIElementsRuntimeUtility : System.Object
UnityEngine.UIElements.UIElementsRuntimeUtility = {}
---@alias CS.UnityEngine.UIElements.UIElementsRuntimeUtility UnityEngine.UIElements.UIElementsRuntimeUtility
CS.UnityEngine.UIElements.UIElementsRuntimeUtility = UnityEngine.UIElements.UIElementsRuntimeUtility

---@param systemEvent UnityEngine.Event
---@return UnityEngine.UIElements.EventBase
function UnityEngine.UIElements.UIElementsRuntimeUtility.CreateEvent(systemEvent) end
---@param ownerObject UnityEngine.ScriptableObject
---@param createDelegate UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate
---@return UnityEngine.UIElements.BaseRuntimePanel
function UnityEngine.UIElements.UIElementsRuntimeUtility.FindOrCreateRuntimePanel(ownerObject, createDelegate) end
---@param ownerObject UnityEngine.ScriptableObject
function UnityEngine.UIElements.UIElementsRuntimeUtility.DisposeRuntimePanel(ownerObject) end
function UnityEngine.UIElements.UIElementsRuntimeUtility.RepaintOverlayPanels() end
function UnityEngine.UIElements.UIElementsRuntimeUtility.RepaintOffscreenPanels() end
---@param panel UnityEngine.UIElements.BaseRuntimePanel
function UnityEngine.UIElements.UIElementsRuntimeUtility.RepaintOverlayPanel(panel) end
---@param eventSystem UnityEngine.Object
function UnityEngine.UIElements.UIElementsRuntimeUtility.RegisterEventSystem(eventSystem) end
---@param eventSystem UnityEngine.Object
function UnityEngine.UIElements.UIElementsRuntimeUtility.UnregisterEventSystem(eventSystem) end
function UnityEngine.UIElements.UIElementsRuntimeUtility.UpdateRuntimePanels() end
function UnityEngine.UIElements.UIElementsRuntimeUtility.RegisterPlayerloopCallback() end
function UnityEngine.UIElements.UIElementsRuntimeUtility.UnregisterPlayerloopCallback() end

---@class UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate : System.MulticastDelegate
UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate = {}
---@alias CS.UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate
CS.UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate = UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate
function UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate.New(object, method) end
---@param ownerObject UnityEngine.ScriptableObject
---@return UnityEngine.UIElements.BaseRuntimePanel
function UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate:Invoke(ownerObject) end
---@param ownerObject UnityEngine.ScriptableObject
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate:BeginInvoke(ownerObject, callback, object) end
---@param result System.IAsyncResult
---@return UnityEngine.UIElements.BaseRuntimePanel
function UnityEngine.UIElements.UIElementsRuntimeUtility.CreateRuntimePanelDelegate:EndInvoke(result) end

---@class UnityEngine.UIElements.IUIElementsUtility
UnityEngine.UIElements.IUIElementsUtility = {}
---@alias CS.UnityEngine.UIElements.IUIElementsUtility UnityEngine.UIElements.IUIElementsUtility
CS.UnityEngine.UIElements.IUIElementsUtility = UnityEngine.UIElements.IUIElementsUtility

---@return boolean
function UnityEngine.UIElements.IUIElementsUtility:TakeCapture() end
---@return boolean
function UnityEngine.UIElements.IUIElementsUtility:ReleaseCapture() end
---@param instanceID number
---@param nativeEventPtr System.IntPtr
---@param ref_eventHandled boolean
---@return boolean,boolean
function UnityEngine.UIElements.IUIElementsUtility:ProcessEvent(instanceID, nativeEventPtr, ref_eventHandled) end
---@return boolean
function UnityEngine.UIElements.IUIElementsUtility:CleanupRoots() end
---@param exception System.Exception
---@return boolean
function UnityEngine.UIElements.IUIElementsUtility:EndContainerGUIFromException(exception) end
---@return boolean
function UnityEngine.UIElements.IUIElementsUtility:MakeCurrentIMGUIContainerDirty() end
function UnityEngine.UIElements.IUIElementsUtility:UpdateSchedulers() end
---@param repaintCallback System.Action
function UnityEngine.UIElements.IUIElementsUtility:RequestRepaintForPanels(repaintCallback) end

---@class UnityEngine.UIElements.UIEventRegistration : System.Object
UnityEngine.UIElements.UIEventRegistration = {}
---@alias CS.UnityEngine.UIElements.UIEventRegistration UnityEngine.UIElements.UIEventRegistration
CS.UnityEngine.UIElements.UIEventRegistration = UnityEngine.UIElements.UIEventRegistration


---@class UnityEngine.UIElements.UIElementsUtility : System.Object
---@field hiddenClassName string
UnityEngine.UIElements.UIElementsUtility = {}
---@alias CS.UnityEngine.UIElements.UIElementsUtility UnityEngine.UIElements.UIElementsUtility
CS.UnityEngine.UIElements.UIElementsUtility = UnityEngine.UIElements.UIElementsUtility

---@param instanceID number
---@param panel UnityEngine.UIElements.Panel
function UnityEngine.UIElements.UIElementsUtility.RegisterCachedPanel(instanceID, panel) end
---@param instanceID number
function UnityEngine.UIElements.UIElementsUtility.RemoveCachedPanel(instanceID) end
---@param instanceID number
---@param out_panel UnityEngine.UIElements.Panel
---@return boolean,UnityEngine.UIElements.Panel
function UnityEngine.UIElements.UIElementsUtility.TryGetPanel(instanceID, out_panel) end

---@class UnityEngine.UIElements.UpgradeConstants : System.Object
---@field EditorNamespace string
---@field EditorAssembly string
UnityEngine.UIElements.UpgradeConstants = {}
---@alias CS.UnityEngine.UIElements.UpgradeConstants UnityEngine.UIElements.UpgradeConstants
CS.UnityEngine.UIElements.UpgradeConstants = UnityEngine.UIElements.UpgradeConstants

---@return UnityEngine.UIElements.UpgradeConstants
function UnityEngine.UIElements.UpgradeConstants.New() end

---@class UnityEngine.UIElements.RuleMatcher : System.ValueType
---@field sheet UnityEngine.UIElements.StyleSheet
---@field complexSelector UnityEngine.UIElements.StyleComplexSelector
UnityEngine.UIElements.RuleMatcher = {}
---@alias CS.UnityEngine.UIElements.RuleMatcher UnityEngine.UIElements.RuleMatcher
CS.UnityEngine.UIElements.RuleMatcher = UnityEngine.UIElements.RuleMatcher

---@param sheet UnityEngine.UIElements.StyleSheet
---@param complexSelector UnityEngine.UIElements.StyleComplexSelector
---@param styleSheetIndexInStack number
---@return UnityEngine.UIElements.RuleMatcher
function UnityEngine.UIElements.RuleMatcher.New(sheet, complexSelector, styleSheetIndexInStack) end
---@return string
function UnityEngine.UIElements.RuleMatcher:ToString() end

---@class UnityEngine.UIElements.UQuery : System.Object
UnityEngine.UIElements.UQuery = {}
---@alias CS.UnityEngine.UIElements.UQuery UnityEngine.UIElements.UQuery
CS.UnityEngine.UIElements.UQuery = UnityEngine.UIElements.UQuery


---@class UnityEngine.UIElements.UQuery.IVisualPredicateWrapper
UnityEngine.UIElements.UQuery.IVisualPredicateWrapper = {}
---@alias CS.UnityEngine.UIElements.UQuery.IVisualPredicateWrapper UnityEngine.UIElements.UQuery.IVisualPredicateWrapper
CS.UnityEngine.UIElements.UQuery.IVisualPredicateWrapper = UnityEngine.UIElements.UQuery.IVisualPredicateWrapper

---@param e System.Object
---@return boolean
function UnityEngine.UIElements.UQuery.IVisualPredicateWrapper:Predicate(e) end

---@class UnityEngine.UIElements.UQuery.IsOfType : System.Object
---@field s_Instance UnityEngine.UIElements.UQuery.IsOfType
UnityEngine.UIElements.UQuery.IsOfType = {}
---@alias CS.UnityEngine.UIElements.UQuery.IsOfType UnityEngine.UIElements.UQuery.IsOfType
CS.UnityEngine.UIElements.UQuery.IsOfType = UnityEngine.UIElements.UQuery.IsOfType

---@return UnityEngine.UIElements.UQuery.IsOfType
function UnityEngine.UIElements.UQuery.IsOfType.New() end
---@param e System.Object
---@return boolean
function UnityEngine.UIElements.UQuery.IsOfType:Predicate(e) end

---@class UnityEngine.UIElements.UQuery.PredicateWrapper : System.Object
UnityEngine.UIElements.UQuery.PredicateWrapper = {}
---@alias CS.UnityEngine.UIElements.UQuery.PredicateWrapper UnityEngine.UIElements.UQuery.PredicateWrapper
CS.UnityEngine.UIElements.UQuery.PredicateWrapper = UnityEngine.UIElements.UQuery.PredicateWrapper

---@param p System.Func[T,System.Boolean]
---@return UnityEngine.UIElements.UQuery.PredicateWrapper
function UnityEngine.UIElements.UQuery.PredicateWrapper.New(p) end
---@param e System.Object
---@return boolean
function UnityEngine.UIElements.UQuery.PredicateWrapper:Predicate(e) end

---@class UnityEngine.UIElements.UQuery.UQueryMatcher : UnityEngine.UIElements.StyleSheets.HierarchyTraversal
UnityEngine.UIElements.UQuery.UQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQuery.UQueryMatcher UnityEngine.UIElements.UQuery.UQueryMatcher
CS.UnityEngine.UIElements.UQuery.UQueryMatcher = UnityEngine.UIElements.UQuery.UQueryMatcher

---@param element UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UQuery.UQueryMatcher:Traverse(element) end
---@param element UnityEngine.UIElements.VisualElement
---@param depth number
function UnityEngine.UIElements.UQuery.UQueryMatcher:TraverseRecursive(element, depth) end
---@param root UnityEngine.UIElements.VisualElement
---@param matchers System.Collections.Generic.List
function UnityEngine.UIElements.UQuery.UQueryMatcher:Run(root, matchers) end

---@class UnityEngine.UIElements.UQuery.SingleQueryMatcher : UnityEngine.UIElements.UQuery.UQueryMatcher
---@field match UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.UQuery.SingleQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQuery.SingleQueryMatcher UnityEngine.UIElements.UQuery.SingleQueryMatcher
CS.UnityEngine.UIElements.UQuery.SingleQueryMatcher = UnityEngine.UIElements.UQuery.SingleQueryMatcher

---@param root UnityEngine.UIElements.VisualElement
---@param matchers System.Collections.Generic.List
function UnityEngine.UIElements.UQuery.SingleQueryMatcher:Run(root, matchers) end
---@return boolean
function UnityEngine.UIElements.UQuery.SingleQueryMatcher:IsInUse() end
---@return UnityEngine.UIElements.UQuery.SingleQueryMatcher
function UnityEngine.UIElements.UQuery.SingleQueryMatcher:CreateNew() end

---@class UnityEngine.UIElements.UQuery.FirstQueryMatcher : UnityEngine.UIElements.UQuery.SingleQueryMatcher
---@field Instance UnityEngine.UIElements.UQuery.FirstQueryMatcher
UnityEngine.UIElements.UQuery.FirstQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQuery.FirstQueryMatcher UnityEngine.UIElements.UQuery.FirstQueryMatcher
CS.UnityEngine.UIElements.UQuery.FirstQueryMatcher = UnityEngine.UIElements.UQuery.FirstQueryMatcher

---@return UnityEngine.UIElements.UQuery.FirstQueryMatcher
function UnityEngine.UIElements.UQuery.FirstQueryMatcher.New() end
---@return UnityEngine.UIElements.UQuery.SingleQueryMatcher
function UnityEngine.UIElements.UQuery.FirstQueryMatcher:CreateNew() end

---@class UnityEngine.UIElements.UQuery.LastQueryMatcher : UnityEngine.UIElements.UQuery.SingleQueryMatcher
---@field Instance UnityEngine.UIElements.UQuery.LastQueryMatcher
UnityEngine.UIElements.UQuery.LastQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQuery.LastQueryMatcher UnityEngine.UIElements.UQuery.LastQueryMatcher
CS.UnityEngine.UIElements.UQuery.LastQueryMatcher = UnityEngine.UIElements.UQuery.LastQueryMatcher

---@return UnityEngine.UIElements.UQuery.LastQueryMatcher
function UnityEngine.UIElements.UQuery.LastQueryMatcher.New() end
---@return UnityEngine.UIElements.UQuery.SingleQueryMatcher
function UnityEngine.UIElements.UQuery.LastQueryMatcher:CreateNew() end

---@class UnityEngine.UIElements.UQuery.IndexQueryMatcher : UnityEngine.UIElements.UQuery.SingleQueryMatcher
---@field Instance UnityEngine.UIElements.UQuery.IndexQueryMatcher
---@field matchIndex number
UnityEngine.UIElements.UQuery.IndexQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQuery.IndexQueryMatcher UnityEngine.UIElements.UQuery.IndexQueryMatcher
CS.UnityEngine.UIElements.UQuery.IndexQueryMatcher = UnityEngine.UIElements.UQuery.IndexQueryMatcher

---@return UnityEngine.UIElements.UQuery.IndexQueryMatcher
function UnityEngine.UIElements.UQuery.IndexQueryMatcher.New() end
---@param root UnityEngine.UIElements.VisualElement
---@param matchers System.Collections.Generic.List
function UnityEngine.UIElements.UQuery.IndexQueryMatcher:Run(root, matchers) end
---@return UnityEngine.UIElements.UQuery.SingleQueryMatcher
function UnityEngine.UIElements.UQuery.IndexQueryMatcher:CreateNew() end

---@class UnityEngine.UIElements.UQueryState : System.ValueType
UnityEngine.UIElements.UQueryState = {}
---@alias CS.UnityEngine.UIElements.UQueryState UnityEngine.UIElements.UQueryState
CS.UnityEngine.UIElements.UQueryState = UnityEngine.UIElements.UQueryState

---@param element UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.UQueryState
function UnityEngine.UIElements.UQueryState:RebuildOn(element) end
---@return T
function UnityEngine.UIElements.UQueryState:First() end
---@return T
function UnityEngine.UIElements.UQueryState:Last() end
---@overload fun(self: UnityEngine.UIElements.UQueryState, results: System.Collections.Generic.List[T])
---@return System.Collections.Generic.List[T]
function UnityEngine.UIElements.UQueryState:ToList() end
---@param index number
---@return T
function UnityEngine.UIElements.UQueryState:AtIndex(index) end
---@param funcCall System.Action[T]
function UnityEngine.UIElements.UQueryState:ForEach(funcCall) end
---@return UnityEngine.UIElements.UQueryState.Enumerator[T]
function UnityEngine.UIElements.UQueryState:GetEnumerator() end
---@overload fun(self: UnityEngine.UIElements.UQueryState, other: UnityEngine.UIElements.UQueryState) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.UQueryState:Equals(obj) end
---@return number
function UnityEngine.UIElements.UQueryState:GetHashCode() end

---@class UnityEngine.UIElements.UQueryState.ListQueryMatcher : UnityEngine.UIElements.UQuery.UQueryMatcher
---@field matches System.Collections.Generic.List[TElement]
UnityEngine.UIElements.UQueryState.ListQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQueryState.ListQueryMatcher UnityEngine.UIElements.UQueryState.ListQueryMatcher
CS.UnityEngine.UIElements.UQueryState.ListQueryMatcher = UnityEngine.UIElements.UQueryState.ListQueryMatcher

---@return UnityEngine.UIElements.UQueryState.ListQueryMatcher
function UnityEngine.UIElements.UQueryState.ListQueryMatcher.New() end
function UnityEngine.UIElements.UQueryState.ListQueryMatcher:Reset() end

---@class UnityEngine.UIElements.UQueryState.ActionQueryMatcher : UnityEngine.UIElements.UQuery.UQueryMatcher
UnityEngine.UIElements.UQueryState.ActionQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQueryState.ActionQueryMatcher UnityEngine.UIElements.UQueryState.ActionQueryMatcher
CS.UnityEngine.UIElements.UQueryState.ActionQueryMatcher = UnityEngine.UIElements.UQueryState.ActionQueryMatcher

---@return UnityEngine.UIElements.UQueryState.ActionQueryMatcher
function UnityEngine.UIElements.UQueryState.ActionQueryMatcher.New() end

---@class UnityEngine.UIElements.UQueryState.DelegateQueryMatcher : UnityEngine.UIElements.UQuery.UQueryMatcher
---@field s_Instance UnityEngine.UIElements.UQueryState.DelegateQueryMatcher
---@field callBack System.Func[T,TReturnType]
---@field result System.Collections.Generic.List[TReturnType]
UnityEngine.UIElements.UQueryState.DelegateQueryMatcher = {}
---@alias CS.UnityEngine.UIElements.UQueryState.DelegateQueryMatcher UnityEngine.UIElements.UQueryState.DelegateQueryMatcher
CS.UnityEngine.UIElements.UQueryState.DelegateQueryMatcher = UnityEngine.UIElements.UQueryState.DelegateQueryMatcher

---@return UnityEngine.UIElements.UQueryState.DelegateQueryMatcher
function UnityEngine.UIElements.UQueryState.DelegateQueryMatcher.New() end

---@class UnityEngine.UIElements.UQueryState.Enumerator : System.ValueType
---@field Current T
UnityEngine.UIElements.UQueryState.Enumerator = {}
---@alias CS.UnityEngine.UIElements.UQueryState.Enumerator UnityEngine.UIElements.UQueryState.Enumerator
CS.UnityEngine.UIElements.UQueryState.Enumerator = UnityEngine.UIElements.UQueryState.Enumerator

---@return boolean
function UnityEngine.UIElements.UQueryState.Enumerator:MoveNext() end
function UnityEngine.UIElements.UQueryState.Enumerator:Reset() end
function UnityEngine.UIElements.UQueryState.Enumerator:Dispose() end

---@class UnityEngine.UIElements.UQueryBuilder : System.ValueType
UnityEngine.UIElements.UQueryBuilder = {}
---@alias CS.UnityEngine.UIElements.UQueryBuilder UnityEngine.UIElements.UQueryBuilder
CS.UnityEngine.UIElements.UQueryBuilder = UnityEngine.UIElements.UQueryBuilder

---@param visualElement UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder.New(visualElement) end
---@param classname string
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Class(classname) end
---@param id string
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Name(id) end
---@param selectorPredicate System.Func[T,System.Boolean]
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Where(selectorPredicate) end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Active() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:NotActive() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Visible() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:NotVisible() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Hovered() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:NotHovered() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Checked() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:NotChecked() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Enabled() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:NotEnabled() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:Focused() end
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryBuilder:NotFocused() end
---@return UnityEngine.UIElements.UQueryState[T]
function UnityEngine.UIElements.UQueryBuilder:Build() end
---@return T
function UnityEngine.UIElements.UQueryBuilder:First() end
---@return T
function UnityEngine.UIElements.UQueryBuilder:Last() end
---@overload fun() : System.Collections.Generic.List[T]
---@param results System.Collections.Generic.List[T]
function UnityEngine.UIElements.UQueryBuilder:ToList(results) end
---@param index number
---@return T
function UnityEngine.UIElements.UQueryBuilder:AtIndex(index) end
---@param funcCall System.Action[T]
function UnityEngine.UIElements.UQueryBuilder:ForEach(funcCall) end
---@overload fun(self: UnityEngine.UIElements.UQueryBuilder, other: UnityEngine.UIElements.UQueryBuilder) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.UQueryBuilder:Equals(obj) end
---@return number
function UnityEngine.UIElements.UQueryBuilder:GetHashCode() end

---@class UnityEngine.UIElements.UQueryExtensions : System.Object
UnityEngine.UIElements.UQueryExtensions = {}
---@alias CS.UnityEngine.UIElements.UQueryExtensions UnityEngine.UIElements.UQueryExtensions
CS.UnityEngine.UIElements.UQueryExtensions = UnityEngine.UIElements.UQueryExtensions

---@overload fun(e: UnityEngine.UIElements.VisualElement, name: string, classes: System.String[]) : UnityEngine.UIElements.VisualElement
---@param e UnityEngine.UIElements.VisualElement
---@param name string
---@param className string
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UQueryExtensions.Q(e, name, className) end
---@overload fun(e: UnityEngine.UIElements.VisualElement, name: string, classes: System.String[]) : UnityEngine.UIElements.UQueryBuilder
---@overload fun(e: UnityEngine.UIElements.VisualElement, name: string, className: string) : UnityEngine.UIElements.UQueryBuilder
---@param e UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.UQueryBuilder
function UnityEngine.UIElements.UQueryExtensions.Query(e) end

---@class UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException : System.Exception
UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException = {}
---@alias CS.UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException
CS.UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException = UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException

---@overload fun() : UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException
---@param message string
---@return UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException
function UnityEngine.UIElements.UQueryExtensions.MissingVisualElementException.New(message) end

---@class UnityEngine.UIElements.IUxmlAttributes
UnityEngine.UIElements.IUxmlAttributes = {}
---@alias CS.UnityEngine.UIElements.IUxmlAttributes UnityEngine.UIElements.IUxmlAttributes
CS.UnityEngine.UIElements.IUxmlAttributes = UnityEngine.UIElements.IUxmlAttributes

---@param attributeName string
---@param out_value string
---@return boolean,string
function UnityEngine.UIElements.IUxmlAttributes:TryGetAttributeValue(attributeName, out_value) end

---@class UnityEngine.UIElements.UxmlGenericAttributeNames : System.Object
UnityEngine.UIElements.UxmlGenericAttributeNames = {}
---@alias CS.UnityEngine.UIElements.UxmlGenericAttributeNames UnityEngine.UIElements.UxmlGenericAttributeNames
CS.UnityEngine.UIElements.UxmlGenericAttributeNames = UnityEngine.UIElements.UxmlGenericAttributeNames

---@return UnityEngine.UIElements.UxmlGenericAttributeNames
function UnityEngine.UIElements.UxmlGenericAttributeNames.New() end

---@class UnityEngine.UIElements.UxmlRootElementFactory : UnityEngine.UIElements.UxmlFactory
---@field uxmlName string
---@field uxmlQualifiedName string
---@field substituteForTypeName string
---@field substituteForTypeNamespace string
---@field substituteForTypeQualifiedName string
UnityEngine.UIElements.UxmlRootElementFactory = {}
---@alias CS.UnityEngine.UIElements.UxmlRootElementFactory UnityEngine.UIElements.UxmlRootElementFactory
CS.UnityEngine.UIElements.UxmlRootElementFactory = UnityEngine.UIElements.UxmlRootElementFactory

---@return UnityEngine.UIElements.UxmlRootElementFactory
function UnityEngine.UIElements.UxmlRootElementFactory.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UxmlRootElementFactory:Create(bag, cc) end

---@class UnityEngine.UIElements.UxmlRootElementTraits : UnityEngine.UIElements.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.UxmlRootElementTraits = {}
---@alias CS.UnityEngine.UIElements.UxmlRootElementTraits UnityEngine.UIElements.UxmlRootElementTraits
CS.UnityEngine.UIElements.UxmlRootElementTraits = UnityEngine.UIElements.UxmlRootElementTraits

---@return UnityEngine.UIElements.UxmlRootElementTraits
function UnityEngine.UIElements.UxmlRootElementTraits.New() end

---@class UnityEngine.UIElements.UxmlStyleFactory : UnityEngine.UIElements.UxmlFactory
---@field uxmlName string
---@field uxmlQualifiedName string
---@field substituteForTypeName string
---@field substituteForTypeNamespace string
---@field substituteForTypeQualifiedName string
UnityEngine.UIElements.UxmlStyleFactory = {}
---@alias CS.UnityEngine.UIElements.UxmlStyleFactory UnityEngine.UIElements.UxmlStyleFactory
CS.UnityEngine.UIElements.UxmlStyleFactory = UnityEngine.UIElements.UxmlStyleFactory

---@return UnityEngine.UIElements.UxmlStyleFactory
function UnityEngine.UIElements.UxmlStyleFactory.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UxmlStyleFactory:Create(bag, cc) end

---@class UnityEngine.UIElements.UxmlStyleTraits : UnityEngine.UIElements.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.UxmlStyleTraits = {}
---@alias CS.UnityEngine.UIElements.UxmlStyleTraits UnityEngine.UIElements.UxmlStyleTraits
CS.UnityEngine.UIElements.UxmlStyleTraits = UnityEngine.UIElements.UxmlStyleTraits

---@return UnityEngine.UIElements.UxmlStyleTraits
function UnityEngine.UIElements.UxmlStyleTraits.New() end

---@class UnityEngine.UIElements.UxmlTemplateFactory : UnityEngine.UIElements.UxmlFactory
---@field uxmlName string
---@field uxmlQualifiedName string
---@field substituteForTypeName string
---@field substituteForTypeNamespace string
---@field substituteForTypeQualifiedName string
UnityEngine.UIElements.UxmlTemplateFactory = {}
---@alias CS.UnityEngine.UIElements.UxmlTemplateFactory UnityEngine.UIElements.UxmlTemplateFactory
CS.UnityEngine.UIElements.UxmlTemplateFactory = UnityEngine.UIElements.UxmlTemplateFactory

---@return UnityEngine.UIElements.UxmlTemplateFactory
function UnityEngine.UIElements.UxmlTemplateFactory.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UxmlTemplateFactory:Create(bag, cc) end

---@class UnityEngine.UIElements.UxmlTemplateTraits : UnityEngine.UIElements.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.UxmlTemplateTraits = {}
---@alias CS.UnityEngine.UIElements.UxmlTemplateTraits UnityEngine.UIElements.UxmlTemplateTraits
CS.UnityEngine.UIElements.UxmlTemplateTraits = UnityEngine.UIElements.UxmlTemplateTraits

---@return UnityEngine.UIElements.UxmlTemplateTraits
function UnityEngine.UIElements.UxmlTemplateTraits.New() end

---@class UnityEngine.UIElements.UxmlAttributeOverridesFactory : UnityEngine.UIElements.UxmlFactory
---@field uxmlName string
---@field uxmlQualifiedName string
---@field substituteForTypeName string
---@field substituteForTypeNamespace string
---@field substituteForTypeQualifiedName string
UnityEngine.UIElements.UxmlAttributeOverridesFactory = {}
---@alias CS.UnityEngine.UIElements.UxmlAttributeOverridesFactory UnityEngine.UIElements.UxmlAttributeOverridesFactory
CS.UnityEngine.UIElements.UxmlAttributeOverridesFactory = UnityEngine.UIElements.UxmlAttributeOverridesFactory

---@return UnityEngine.UIElements.UxmlAttributeOverridesFactory
function UnityEngine.UIElements.UxmlAttributeOverridesFactory.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UxmlAttributeOverridesFactory:Create(bag, cc) end

---@class UnityEngine.UIElements.UxmlAttributeOverridesTraits : UnityEngine.UIElements.UxmlTraits
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.UxmlAttributeOverridesTraits = {}
---@alias CS.UnityEngine.UIElements.UxmlAttributeOverridesTraits UnityEngine.UIElements.UxmlAttributeOverridesTraits
CS.UnityEngine.UIElements.UxmlAttributeOverridesTraits = UnityEngine.UIElements.UxmlAttributeOverridesTraits

---@return UnityEngine.UIElements.UxmlAttributeOverridesTraits
function UnityEngine.UIElements.UxmlAttributeOverridesTraits.New() end

---@class UnityEngine.UIElements.TemplateAsset : UnityEngine.UIElements.VisualElementAsset
---@field templateAlias string
---@field attributeOverrides System.Collections.Generic.List
UnityEngine.UIElements.TemplateAsset = {}
---@alias CS.UnityEngine.UIElements.TemplateAsset UnityEngine.UIElements.TemplateAsset
CS.UnityEngine.UIElements.TemplateAsset = UnityEngine.UIElements.TemplateAsset

---@param templateAlias string
---@param fullTypeName string
---@return UnityEngine.UIElements.TemplateAsset
function UnityEngine.UIElements.TemplateAsset.New(templateAlias, fullTypeName) end
---@param slotName string
---@param resId number
function UnityEngine.UIElements.TemplateAsset:AddSlotUsage(slotName, resId) end

---@class UnityEngine.UIElements.TemplateAsset.AttributeOverride : System.ValueType
---@field m_ElementName string
---@field m_AttributeName string
---@field m_Value string
UnityEngine.UIElements.TemplateAsset.AttributeOverride = {}
---@alias CS.UnityEngine.UIElements.TemplateAsset.AttributeOverride UnityEngine.UIElements.TemplateAsset.AttributeOverride
CS.UnityEngine.UIElements.TemplateAsset.AttributeOverride = UnityEngine.UIElements.TemplateAsset.AttributeOverride


---@class UnityEngine.UIElements.UxmlAssetAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription[T]
---@field defaultValueAsString string
UnityEngine.UIElements.UxmlAssetAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlAssetAttributeDescription UnityEngine.UIElements.UxmlAssetAttributeDescription
CS.UnityEngine.UIElements.UxmlAssetAttributeDescription = UnityEngine.UIElements.UxmlAssetAttributeDescription

---@return UnityEngine.UIElements.UxmlAssetAttributeDescription
function UnityEngine.UIElements.UxmlAssetAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return T
function UnityEngine.UIElements.UxmlAssetAttributeDescription:GetValueFromBag(bag, cc) end

---@class UnityEngine.UIElements.UxmlAttributeDescription : System.Object
---@field name string
---@field obsoleteNames System.Collections.Generic.IEnumerable
---@field type string
---@field typeNamespace string
---@field defaultValueAsString string
---@field use UnityEngine.UIElements.UxmlAttributeDescription.Use
---@field restriction UnityEngine.UIElements.UxmlTypeRestriction
UnityEngine.UIElements.UxmlAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlAttributeDescription UnityEngine.UIElements.UxmlAttributeDescription
CS.UnityEngine.UIElements.UxmlAttributeDescription = UnityEngine.UIElements.UxmlAttributeDescription


---@class UnityEngine.UIElements.UxmlAttributeDescription.Use
---@field None UnityEngine.UIElements.UxmlAttributeDescription.Use
---@field Optional UnityEngine.UIElements.UxmlAttributeDescription.Use
---@field Prohibited UnityEngine.UIElements.UxmlAttributeDescription.Use
---@field Required UnityEngine.UIElements.UxmlAttributeDescription.Use
UnityEngine.UIElements.UxmlAttributeDescription.Use = {}
---@alias CS.UnityEngine.UIElements.UxmlAttributeDescription.Use UnityEngine.UIElements.UxmlAttributeDescription.Use
CS.UnityEngine.UIElements.UxmlAttributeDescription.Use = UnityEngine.UIElements.UxmlAttributeDescription.Use


---@class UnityEngine.UIElements.TypedUxmlAttributeDescription : UnityEngine.UIElements.UxmlAttributeDescription
---@field defaultValue T
---@field defaultValueAsString string
UnityEngine.UIElements.TypedUxmlAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.TypedUxmlAttributeDescription UnityEngine.UIElements.TypedUxmlAttributeDescription
CS.UnityEngine.UIElements.TypedUxmlAttributeDescription = UnityEngine.UIElements.TypedUxmlAttributeDescription

---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return T
function UnityEngine.UIElements.TypedUxmlAttributeDescription:GetValueFromBag(bag, cc) end

---@class UnityEngine.UIElements.UxmlStringAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlStringAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.String]
UnityEngine.UIElements.UxmlStringAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlStringAttributeDescription UnityEngine.UIElements.UxmlStringAttributeDescription
CS.UnityEngine.UIElements.UxmlStringAttributeDescription = UnityEngine.UIElements.UxmlStringAttributeDescription

---@return UnityEngine.UIElements.UxmlStringAttributeDescription
function UnityEngine.UIElements.UxmlStringAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return string
function UnityEngine.UIElements.UxmlStringAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value string
---@return boolean,string
function UnityEngine.UIElements.UxmlStringAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlFloatAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlFloatAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.Single]
UnityEngine.UIElements.UxmlFloatAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlFloatAttributeDescription UnityEngine.UIElements.UxmlFloatAttributeDescription
CS.UnityEngine.UIElements.UxmlFloatAttributeDescription = UnityEngine.UIElements.UxmlFloatAttributeDescription

---@return UnityEngine.UIElements.UxmlFloatAttributeDescription
function UnityEngine.UIElements.UxmlFloatAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return number
function UnityEngine.UIElements.UxmlFloatAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value number
---@return boolean,number
function UnityEngine.UIElements.UxmlFloatAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlDoubleAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlDoubleAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.Double]
UnityEngine.UIElements.UxmlDoubleAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlDoubleAttributeDescription UnityEngine.UIElements.UxmlDoubleAttributeDescription
CS.UnityEngine.UIElements.UxmlDoubleAttributeDescription = UnityEngine.UIElements.UxmlDoubleAttributeDescription

---@return UnityEngine.UIElements.UxmlDoubleAttributeDescription
function UnityEngine.UIElements.UxmlDoubleAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return number
function UnityEngine.UIElements.UxmlDoubleAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value number
---@return boolean,number
function UnityEngine.UIElements.UxmlDoubleAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlIntAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlIntAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.Int32]
UnityEngine.UIElements.UxmlIntAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlIntAttributeDescription UnityEngine.UIElements.UxmlIntAttributeDescription
CS.UnityEngine.UIElements.UxmlIntAttributeDescription = UnityEngine.UIElements.UxmlIntAttributeDescription

---@return UnityEngine.UIElements.UxmlIntAttributeDescription
function UnityEngine.UIElements.UxmlIntAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return number
function UnityEngine.UIElements.UxmlIntAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value number
---@return boolean,number
function UnityEngine.UIElements.UxmlIntAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.UInt32]
UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription
CS.UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription = UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription

---@return UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription
function UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return number
function UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value number
---@return boolean,number
function UnityEngine.UIElements.UxmlUnsignedIntAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.UInt64]
UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription
CS.UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription = UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription

---@return UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription
function UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return number
function UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value number
---@return boolean,number
function UnityEngine.UIElements.UxmlUnsignedLongAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlLongAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlLongAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.Int64]
UnityEngine.UIElements.UxmlLongAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlLongAttributeDescription UnityEngine.UIElements.UxmlLongAttributeDescription
CS.UnityEngine.UIElements.UxmlLongAttributeDescription = UnityEngine.UIElements.UxmlLongAttributeDescription

---@return UnityEngine.UIElements.UxmlLongAttributeDescription
function UnityEngine.UIElements.UxmlLongAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return number
function UnityEngine.UIElements.UxmlLongAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value number
---@return boolean,number
function UnityEngine.UIElements.UxmlLongAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlBoolAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlBoolAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[System.Boolean]
UnityEngine.UIElements.UxmlBoolAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlBoolAttributeDescription UnityEngine.UIElements.UxmlBoolAttributeDescription
CS.UnityEngine.UIElements.UxmlBoolAttributeDescription = UnityEngine.UIElements.UxmlBoolAttributeDescription

---@return UnityEngine.UIElements.UxmlBoolAttributeDescription
function UnityEngine.UIElements.UxmlBoolAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return boolean
function UnityEngine.UIElements.UxmlBoolAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value boolean
---@return boolean,boolean
function UnityEngine.UIElements.UxmlBoolAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlColorAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlColorAttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[UnityEngine.Color]
UnityEngine.UIElements.UxmlColorAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlColorAttributeDescription UnityEngine.UIElements.UxmlColorAttributeDescription
CS.UnityEngine.UIElements.UxmlColorAttributeDescription = UnityEngine.UIElements.UxmlColorAttributeDescription

---@return UnityEngine.UIElements.UxmlColorAttributeDescription
function UnityEngine.UIElements.UxmlColorAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.Color
function UnityEngine.UIElements.UxmlColorAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.UIElements.UxmlColorAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlTypeAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
UnityEngine.UIElements.UxmlTypeAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlTypeAttributeDescription UnityEngine.UIElements.UxmlTypeAttributeDescription
CS.UnityEngine.UIElements.UxmlTypeAttributeDescription = UnityEngine.UIElements.UxmlTypeAttributeDescription

---@return UnityEngine.UIElements.UxmlTypeAttributeDescription
function UnityEngine.UIElements.UxmlTypeAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return System.Type
function UnityEngine.UIElements.UxmlTypeAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value System.Type
---@return boolean,System.Type
function UnityEngine.UIElements.UxmlTypeAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlEnumAttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription[T]
---@field defaultValueAsString string
UnityEngine.UIElements.UxmlEnumAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlEnumAttributeDescription UnityEngine.UIElements.UxmlEnumAttributeDescription
CS.UnityEngine.UIElements.UxmlEnumAttributeDescription = UnityEngine.UIElements.UxmlEnumAttributeDescription

---@return UnityEngine.UIElements.UxmlEnumAttributeDescription
function UnityEngine.UIElements.UxmlEnumAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return T
function UnityEngine.UIElements.UxmlEnumAttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value T
---@return boolean,T
function UnityEngine.UIElements.UxmlEnumAttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlHash128AttributeDescription : UnityEngine.UIElements.TypedUxmlAttributeDescription
---@field defaultValueAsString string
---@field defaultValue UnityEngine.UIElements.UxmlHash128AttributeDescription -- infered from UnityEngine.UIElements.TypedUxmlAttributeDescription`1[UnityEngine.Hash128]
UnityEngine.UIElements.UxmlHash128AttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlHash128AttributeDescription UnityEngine.UIElements.UxmlHash128AttributeDescription
CS.UnityEngine.UIElements.UxmlHash128AttributeDescription = UnityEngine.UIElements.UxmlHash128AttributeDescription

---@return UnityEngine.UIElements.UxmlHash128AttributeDescription
function UnityEngine.UIElements.UxmlHash128AttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.Hash128
function UnityEngine.UIElements.UxmlHash128AttributeDescription:GetValueFromBag(bag, cc) end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@param ref_value UnityEngine.Hash128
---@return boolean,UnityEngine.Hash128
function UnityEngine.UIElements.UxmlHash128AttributeDescription:TryGetValueFromBag(bag, cc, ref_value) end

---@class UnityEngine.UIElements.UxmlObjectAttributeDescription : System.Object
---@field defaultValue T
UnityEngine.UIElements.UxmlObjectAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlObjectAttributeDescription UnityEngine.UIElements.UxmlObjectAttributeDescription
CS.UnityEngine.UIElements.UxmlObjectAttributeDescription = UnityEngine.UIElements.UxmlObjectAttributeDescription

---@return UnityEngine.UIElements.UxmlObjectAttributeDescription
function UnityEngine.UIElements.UxmlObjectAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return T
function UnityEngine.UIElements.UxmlObjectAttributeDescription:GetValueFromBag(bag, cc) end

---@class UnityEngine.UIElements.UxmlObjectListAttributeDescription : UnityEngine.UIElements.UxmlObjectAttributeDescription[System.Collections.Generic.List[T]]
UnityEngine.UIElements.UxmlObjectListAttributeDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlObjectListAttributeDescription UnityEngine.UIElements.UxmlObjectListAttributeDescription
CS.UnityEngine.UIElements.UxmlObjectListAttributeDescription = UnityEngine.UIElements.UxmlObjectListAttributeDescription

---@return UnityEngine.UIElements.UxmlObjectListAttributeDescription
function UnityEngine.UIElements.UxmlObjectListAttributeDescription.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return System.Collections.Generic.List[T]
function UnityEngine.UIElements.UxmlObjectListAttributeDescription:GetValueFromBag(bag, cc) end

---@class UnityEngine.UIElements.UxmlChildElementDescription : System.Object
---@field elementName string
---@field elementNamespace string
UnityEngine.UIElements.UxmlChildElementDescription = {}
---@alias CS.UnityEngine.UIElements.UxmlChildElementDescription UnityEngine.UIElements.UxmlChildElementDescription
CS.UnityEngine.UIElements.UxmlChildElementDescription = UnityEngine.UIElements.UxmlChildElementDescription

---@param t System.Type
---@return UnityEngine.UIElements.UxmlChildElementDescription
function UnityEngine.UIElements.UxmlChildElementDescription.New(t) end

---@class UnityEngine.UIElements.BaseUxmlTraits : System.Object
---@field canHaveAnyAttribute boolean
---@field uxmlAttributesDescription System.Collections.Generic.IEnumerable
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
UnityEngine.UIElements.BaseUxmlTraits = {}
---@alias CS.UnityEngine.UIElements.BaseUxmlTraits UnityEngine.UIElements.BaseUxmlTraits
CS.UnityEngine.UIElements.BaseUxmlTraits = UnityEngine.UIElements.BaseUxmlTraits


---@class UnityEngine.UIElements.UxmlTraits : UnityEngine.UIElements.BaseUxmlTraits
UnityEngine.UIElements.UxmlTraits = {}
---@alias CS.UnityEngine.UIElements.UxmlTraits UnityEngine.UIElements.UxmlTraits
CS.UnityEngine.UIElements.UxmlTraits = UnityEngine.UIElements.UxmlTraits

---@param ve UnityEngine.UIElements.VisualElement
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
function UnityEngine.UIElements.UxmlTraits:Init(ve, bag, cc) end

---@class UnityEngine.UIElements.UxmlObjectTraits : UnityEngine.UIElements.BaseUxmlTraits
UnityEngine.UIElements.UxmlObjectTraits = {}
---@alias CS.UnityEngine.UIElements.UxmlObjectTraits UnityEngine.UIElements.UxmlObjectTraits
CS.UnityEngine.UIElements.UxmlObjectTraits = UnityEngine.UIElements.UxmlObjectTraits

---@param ref_obj T
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return ,T
function UnityEngine.UIElements.UxmlObjectTraits:Init(ref_obj, bag, cc) end

---@class UnityEngine.UIElements.IBaseUxmlFactory
---@field uxmlName string
---@field uxmlNamespace string
---@field uxmlQualifiedName string
---@field uxmlType System.Type
---@field canHaveAnyAttribute boolean
---@field uxmlAttributesDescription System.Collections.Generic.IEnumerable
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
---@field substituteForTypeName string
---@field substituteForTypeNamespace string
---@field substituteForTypeQualifiedName string
UnityEngine.UIElements.IBaseUxmlFactory = {}
---@alias CS.UnityEngine.UIElements.IBaseUxmlFactory UnityEngine.UIElements.IBaseUxmlFactory
CS.UnityEngine.UIElements.IBaseUxmlFactory = UnityEngine.UIElements.IBaseUxmlFactory

---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return boolean
function UnityEngine.UIElements.IBaseUxmlFactory:AcceptsAttributeBag(bag, cc) end

---@class UnityEngine.UIElements.IUxmlFactory
UnityEngine.UIElements.IUxmlFactory = {}
---@alias CS.UnityEngine.UIElements.IUxmlFactory UnityEngine.UIElements.IUxmlFactory
CS.UnityEngine.UIElements.IUxmlFactory = UnityEngine.UIElements.IUxmlFactory

---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.IUxmlFactory:Create(bag, cc) end

---@class UnityEngine.UIElements.IBaseUxmlObjectFactory
UnityEngine.UIElements.IBaseUxmlObjectFactory = {}
---@alias CS.UnityEngine.UIElements.IBaseUxmlObjectFactory UnityEngine.UIElements.IBaseUxmlObjectFactory
CS.UnityEngine.UIElements.IBaseUxmlObjectFactory = UnityEngine.UIElements.IBaseUxmlObjectFactory


---@class UnityEngine.UIElements.IUxmlObjectFactory
UnityEngine.UIElements.IUxmlObjectFactory = {}
---@alias CS.UnityEngine.UIElements.IUxmlObjectFactory UnityEngine.UIElements.IUxmlObjectFactory
CS.UnityEngine.UIElements.IUxmlObjectFactory = UnityEngine.UIElements.IUxmlObjectFactory

---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return T
function UnityEngine.UIElements.IUxmlObjectFactory:CreateObject(bag, cc) end

---@class UnityEngine.UIElements.BaseUxmlFactory : System.Object
---@field uxmlName string
---@field uxmlNamespace string
---@field uxmlQualifiedName string
---@field uxmlType System.Type
---@field canHaveAnyAttribute boolean
---@field uxmlAttributesDescription System.Collections.Generic.IEnumerable
---@field uxmlChildElementsDescription System.Collections.Generic.IEnumerable
---@field substituteForTypeName string
---@field substituteForTypeNamespace string
---@field substituteForTypeQualifiedName string
UnityEngine.UIElements.BaseUxmlFactory = {}
---@alias CS.UnityEngine.UIElements.BaseUxmlFactory UnityEngine.UIElements.BaseUxmlFactory
CS.UnityEngine.UIElements.BaseUxmlFactory = UnityEngine.UIElements.BaseUxmlFactory

---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return boolean
function UnityEngine.UIElements.BaseUxmlFactory:AcceptsAttributeBag(bag, cc) end

---@class UnityEngine.UIElements.UxmlFactory : UnityEngine.UIElements.BaseUxmlFactory[TCreatedType,TTraits]
UnityEngine.UIElements.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.UxmlFactory UnityEngine.UIElements.UxmlFactory
CS.UnityEngine.UIElements.UxmlFactory = UnityEngine.UIElements.UxmlFactory

---@return UnityEngine.UIElements.UxmlFactory
function UnityEngine.UIElements.UxmlFactory.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UxmlFactory:Create(bag, cc) end

---@class UnityEngine.UIElements.UxmlObjectFactory : UnityEngine.UIElements.BaseUxmlFactory[TCreatedType,TTraits]
UnityEngine.UIElements.UxmlObjectFactory = {}
---@alias CS.UnityEngine.UIElements.UxmlObjectFactory UnityEngine.UIElements.UxmlObjectFactory
CS.UnityEngine.UIElements.UxmlObjectFactory = UnityEngine.UIElements.UxmlObjectFactory

---@return UnityEngine.UIElements.UxmlObjectFactory
function UnityEngine.UIElements.UxmlObjectFactory.New() end
---@param bag UnityEngine.UIElements.IUxmlAttributes
---@param cc UnityEngine.UIElements.CreationContext
---@return TCreatedType
function UnityEngine.UIElements.UxmlObjectFactory:CreateObject(bag, cc) end

---@class UnityEngine.UIElements.UxmlFactory : UnityEngine.UIElements.UxmlFactory[TCreatedType,UnityEngine.UIElements.VisualElement.UxmlTraits]
UnityEngine.UIElements.UxmlFactory = {}
---@alias CS.UnityEngine.UIElements.UxmlFactory UnityEngine.UIElements.UxmlFactory
CS.UnityEngine.UIElements.UxmlFactory = UnityEngine.UIElements.UxmlFactory

---@return UnityEngine.UIElements.UxmlFactory
function UnityEngine.UIElements.UxmlFactory.New() end

---@class UnityEngine.UIElements.UxmlAsset : System.Object
---@field fullTypeName string
---@field id number
---@field orderInDocument number
---@field parentId number
UnityEngine.UIElements.UxmlAsset = {}
---@alias CS.UnityEngine.UIElements.UxmlAsset UnityEngine.UIElements.UxmlAsset
CS.UnityEngine.UIElements.UxmlAsset = UnityEngine.UIElements.UxmlAsset

---@param fullTypeName string
---@return UnityEngine.UIElements.UxmlAsset
function UnityEngine.UIElements.UxmlAsset.New(fullTypeName) end
---@return System.Collections.Generic.List
function UnityEngine.UIElements.UxmlAsset:GetProperties() end
---@return boolean
function UnityEngine.UIElements.UxmlAsset:HasParent() end
---@param attributeName string
---@return boolean
function UnityEngine.UIElements.UxmlAsset:HasAttribute(attributeName) end
---@param attributeName string
---@return string
function UnityEngine.UIElements.UxmlAsset:GetAttributeValue(attributeName) end
---@param propertyName string
---@param out_value string
---@return boolean,string
function UnityEngine.UIElements.UxmlAsset:TryGetAttributeValue(propertyName, out_value) end
---@param name string
---@param value string
function UnityEngine.UIElements.UxmlAsset:SetAttribute(name, value) end
---@param attributeName string
function UnityEngine.UIElements.UxmlAsset:RemoveAttribute(attributeName) end

---@class UnityEngine.UIElements.UxmlObjectAsset : UnityEngine.UIElements.UxmlAsset
UnityEngine.UIElements.UxmlObjectAsset = {}
---@alias CS.UnityEngine.UIElements.UxmlObjectAsset UnityEngine.UIElements.UxmlObjectAsset
CS.UnityEngine.UIElements.UxmlObjectAsset = UnityEngine.UIElements.UxmlObjectAsset

---@param fullTypeName string
---@return UnityEngine.UIElements.UxmlObjectAsset
function UnityEngine.UIElements.UxmlObjectAsset.New(fullTypeName) end

---@class UnityEngine.UIElements.UxmlObjectFactoryRegistry : System.Object
UnityEngine.UIElements.UxmlObjectFactoryRegistry = {}
---@alias CS.UnityEngine.UIElements.UxmlObjectFactoryRegistry UnityEngine.UIElements.UxmlObjectFactoryRegistry
CS.UnityEngine.UIElements.UxmlObjectFactoryRegistry = UnityEngine.UIElements.UxmlObjectFactoryRegistry

---@return UnityEngine.UIElements.UxmlObjectFactoryRegistry
function UnityEngine.UIElements.UxmlObjectFactoryRegistry.New() end

---@class UnityEngine.UIElements.UxmlTypeRestriction : System.Object
UnityEngine.UIElements.UxmlTypeRestriction = {}
---@alias CS.UnityEngine.UIElements.UxmlTypeRestriction UnityEngine.UIElements.UxmlTypeRestriction
CS.UnityEngine.UIElements.UxmlTypeRestriction = UnityEngine.UIElements.UxmlTypeRestriction

---@param other UnityEngine.UIElements.UxmlTypeRestriction
---@return boolean
function UnityEngine.UIElements.UxmlTypeRestriction:Equals(other) end

---@class UnityEngine.UIElements.UxmlValueMatches : UnityEngine.UIElements.UxmlTypeRestriction
---@field regex string
UnityEngine.UIElements.UxmlValueMatches = {}
---@alias CS.UnityEngine.UIElements.UxmlValueMatches UnityEngine.UIElements.UxmlValueMatches
CS.UnityEngine.UIElements.UxmlValueMatches = UnityEngine.UIElements.UxmlValueMatches

---@return UnityEngine.UIElements.UxmlValueMatches
function UnityEngine.UIElements.UxmlValueMatches.New() end
---@param other UnityEngine.UIElements.UxmlTypeRestriction
---@return boolean
function UnityEngine.UIElements.UxmlValueMatches:Equals(other) end

---@class UnityEngine.UIElements.UxmlValueBounds : UnityEngine.UIElements.UxmlTypeRestriction
---@field min string
---@field max string
---@field excludeMin boolean
---@field excludeMax boolean
UnityEngine.UIElements.UxmlValueBounds = {}
---@alias CS.UnityEngine.UIElements.UxmlValueBounds UnityEngine.UIElements.UxmlValueBounds
CS.UnityEngine.UIElements.UxmlValueBounds = UnityEngine.UIElements.UxmlValueBounds

---@return UnityEngine.UIElements.UxmlValueBounds
function UnityEngine.UIElements.UxmlValueBounds.New() end
---@param other UnityEngine.UIElements.UxmlTypeRestriction
---@return boolean
function UnityEngine.UIElements.UxmlValueBounds:Equals(other) end

---@class UnityEngine.UIElements.UxmlEnumeration : UnityEngine.UIElements.UxmlTypeRestriction
---@field values System.Collections.Generic.IEnumerable
UnityEngine.UIElements.UxmlEnumeration = {}
---@alias CS.UnityEngine.UIElements.UxmlEnumeration UnityEngine.UIElements.UxmlEnumeration
CS.UnityEngine.UIElements.UxmlEnumeration = UnityEngine.UIElements.UxmlEnumeration

---@return UnityEngine.UIElements.UxmlEnumeration
function UnityEngine.UIElements.UxmlEnumeration.New() end
---@param other UnityEngine.UIElements.UxmlTypeRestriction
---@return boolean
function UnityEngine.UIElements.UxmlEnumeration:Equals(other) end

---@class UnityEngine.UIElements.VisualElementAsset : UnityEngine.UIElements.UxmlAsset
---@field ruleIndex number
---@field classes System.String[]
---@field stylesheetPaths System.Collections.Generic.List
---@field hasStylesheetPaths boolean
---@field stylesheets System.Collections.Generic.List
---@field hasStylesheets boolean
UnityEngine.UIElements.VisualElementAsset = {}
---@alias CS.UnityEngine.UIElements.VisualElementAsset UnityEngine.UIElements.VisualElementAsset
CS.UnityEngine.UIElements.VisualElementAsset = UnityEngine.UIElements.VisualElementAsset

---@param fullTypeName string
---@return UnityEngine.UIElements.VisualElementAsset
function UnityEngine.UIElements.VisualElementAsset.New(fullTypeName) end
function UnityEngine.UIElements.VisualElementAsset:OnBeforeSerialize() end
function UnityEngine.UIElements.VisualElementAsset:OnAfterDeserialize() end

---@class UnityEngine.UIElements.VisualElementFactoryRegistry : System.Object
UnityEngine.UIElements.VisualElementFactoryRegistry = {}
---@alias CS.UnityEngine.UIElements.VisualElementFactoryRegistry UnityEngine.UIElements.VisualElementFactoryRegistry
CS.UnityEngine.UIElements.VisualElementFactoryRegistry = UnityEngine.UIElements.VisualElementFactoryRegistry

---@return UnityEngine.UIElements.VisualElementFactoryRegistry
function UnityEngine.UIElements.VisualElementFactoryRegistry.New() end

---@class UnityEngine.UIElements.VisualTreeAsset : UnityEngine.ScriptableObject
---@field importedWithErrors boolean
---@field importedWithWarnings boolean
---@field templateDependencies System.Collections.Generic.IEnumerable
---@field stylesheets System.Collections.Generic.IEnumerable
---@field contentHash number
UnityEngine.UIElements.VisualTreeAsset = {}
---@alias CS.UnityEngine.UIElements.VisualTreeAsset UnityEngine.UIElements.VisualTreeAsset
CS.UnityEngine.UIElements.VisualTreeAsset = UnityEngine.UIElements.VisualTreeAsset

---@return UnityEngine.UIElements.VisualTreeAsset
function UnityEngine.UIElements.VisualTreeAsset.New() end
---@overload fun() : UnityEngine.UIElements.TemplateContainer
---@param bindingPath string
---@return UnityEngine.UIElements.TemplateContainer
function UnityEngine.UIElements.VisualTreeAsset:Instantiate(bindingPath) end
---@overload fun() : UnityEngine.UIElements.TemplateContainer
---@overload fun(self: UnityEngine.UIElements.VisualTreeAsset, bindingPath: string) : UnityEngine.UIElements.TemplateContainer
---@overload fun(self: UnityEngine.UIElements.VisualTreeAsset, target: UnityEngine.UIElements.VisualElement)
---@param target UnityEngine.UIElements.VisualElement
---@param out_firstElementIndex number
---@param out_elementAddedCount number
---@return ,number,number
function UnityEngine.UIElements.VisualTreeAsset:CloneTree(target, out_firstElementIndex, out_elementAddedCount) end

---@class UnityEngine.UIElements.VisualTreeAsset.UsingEntry : System.ValueType
---@field alias string
---@field path string
---@field asset UnityEngine.UIElements.VisualTreeAsset
UnityEngine.UIElements.VisualTreeAsset.UsingEntry = {}
---@alias CS.UnityEngine.UIElements.VisualTreeAsset.UsingEntry UnityEngine.UIElements.VisualTreeAsset.UsingEntry
CS.UnityEngine.UIElements.VisualTreeAsset.UsingEntry = UnityEngine.UIElements.VisualTreeAsset.UsingEntry

---@overload fun(alias: string, path: string) : UnityEngine.UIElements.VisualTreeAsset.UsingEntry
---@param alias string
---@param asset UnityEngine.UIElements.VisualTreeAsset
---@return UnityEngine.UIElements.VisualTreeAsset.UsingEntry
function UnityEngine.UIElements.VisualTreeAsset.UsingEntry.New(alias, asset) end

---@class UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer : System.Object
UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer = {}
---@alias CS.UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer
CS.UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer = UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer

---@return UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer
function UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer.New() end
---@param x UnityEngine.UIElements.VisualTreeAsset.UsingEntry
---@param y UnityEngine.UIElements.VisualTreeAsset.UsingEntry
---@return number
function UnityEngine.UIElements.VisualTreeAsset.UsingEntryComparer:Compare(x, y) end

---@class UnityEngine.UIElements.VisualTreeAsset.SlotDefinition : System.ValueType
---@field name string
---@field insertionPointId number
UnityEngine.UIElements.VisualTreeAsset.SlotDefinition = {}
---@alias CS.UnityEngine.UIElements.VisualTreeAsset.SlotDefinition UnityEngine.UIElements.VisualTreeAsset.SlotDefinition
CS.UnityEngine.UIElements.VisualTreeAsset.SlotDefinition = UnityEngine.UIElements.VisualTreeAsset.SlotDefinition


---@class UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry : System.ValueType
---@field slotName string
---@field assetId number
UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry = {}
---@alias CS.UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry
CS.UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry = UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry

---@param slotName string
---@param assetId number
---@return UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry
function UnityEngine.UIElements.VisualTreeAsset.SlotUsageEntry.New(slotName, assetId) end

---@class UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry : System.ValueType
---@field parentId number
---@field uxmlObjectAssets System.Collections.Generic.List
UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry = {}
---@alias CS.UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry
CS.UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry = UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry

---@param parentId number
---@param uxmlObjectAssets System.Collections.Generic.List
---@return UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry
function UnityEngine.UIElements.VisualTreeAsset.UxmlObjectEntry.New(parentId, uxmlObjectAssets) end

---@class UnityEngine.UIElements.VisualTreeAsset.AssetEntry : System.ValueType
---@field path string
---@field typeFullName string
---@field asset UnityEngine.Object
---@field type System.Type
UnityEngine.UIElements.VisualTreeAsset.AssetEntry = {}
---@alias CS.UnityEngine.UIElements.VisualTreeAsset.AssetEntry UnityEngine.UIElements.VisualTreeAsset.AssetEntry
CS.UnityEngine.UIElements.VisualTreeAsset.AssetEntry = UnityEngine.UIElements.VisualTreeAsset.AssetEntry

---@param path string
---@param type System.Type
---@param asset UnityEngine.Object
---@return UnityEngine.UIElements.VisualTreeAsset.AssetEntry
function UnityEngine.UIElements.VisualTreeAsset.AssetEntry.New(path, type, asset) end

---@class UnityEngine.UIElements.CreationContext : System.ValueType
---@field Default UnityEngine.UIElements.CreationContext
---@field target UnityEngine.UIElements.VisualElement
---@field visualTreeAsset UnityEngine.UIElements.VisualTreeAsset
---@field slotInsertionPoints System.Collections.Generic.Dictionary
UnityEngine.UIElements.CreationContext = {}
---@alias CS.UnityEngine.UIElements.CreationContext UnityEngine.UIElements.CreationContext
CS.UnityEngine.UIElements.CreationContext = UnityEngine.UIElements.CreationContext

---@overload fun(self: UnityEngine.UIElements.CreationContext, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.CreationContext
---@return boolean
function UnityEngine.UIElements.CreationContext:Equals(other) end
---@return number
function UnityEngine.UIElements.CreationContext:GetHashCode() end

---@class UnityEngine.UIElements.GradientType
---@field Linear UnityEngine.UIElements.GradientType
---@field Radial UnityEngine.UIElements.GradientType
UnityEngine.UIElements.GradientType = {}
---@alias CS.UnityEngine.UIElements.GradientType UnityEngine.UIElements.GradientType
CS.UnityEngine.UIElements.GradientType = UnityEngine.UIElements.GradientType


---@class UnityEngine.UIElements.AddressMode
---@field Wrap UnityEngine.UIElements.AddressMode
---@field Clamp UnityEngine.UIElements.AddressMode
---@field Mirror UnityEngine.UIElements.AddressMode
UnityEngine.UIElements.AddressMode = {}
---@alias CS.UnityEngine.UIElements.AddressMode UnityEngine.UIElements.AddressMode
CS.UnityEngine.UIElements.AddressMode = UnityEngine.UIElements.AddressMode


---@class UnityEngine.UIElements.VectorImageVertex : System.ValueType
---@field position UnityEngine.Vector3
---@field tint UnityEngine.Color32
---@field uv UnityEngine.Vector2
---@field settingIndex number
---@field flags UnityEngine.Color32
---@field circle UnityEngine.Vector4
UnityEngine.UIElements.VectorImageVertex = {}
---@alias CS.UnityEngine.UIElements.VectorImageVertex UnityEngine.UIElements.VectorImageVertex
CS.UnityEngine.UIElements.VectorImageVertex = UnityEngine.UIElements.VectorImageVertex


---@class UnityEngine.UIElements.GradientSettings : System.ValueType
---@field gradientType UnityEngine.UIElements.GradientType
---@field addressMode UnityEngine.UIElements.AddressMode
---@field radialFocus UnityEngine.Vector2
---@field location UnityEngine.RectInt
UnityEngine.UIElements.GradientSettings = {}
---@alias CS.UnityEngine.UIElements.GradientSettings UnityEngine.UIElements.GradientSettings
CS.UnityEngine.UIElements.GradientSettings = UnityEngine.UIElements.GradientSettings


---@class UnityEngine.UIElements.VectorImage : UnityEngine.ScriptableObject
---@field width number
---@field height number
UnityEngine.UIElements.VectorImage = {}
---@alias CS.UnityEngine.UIElements.VectorImage UnityEngine.UIElements.VectorImage
CS.UnityEngine.UIElements.VectorImage = UnityEngine.UIElements.VectorImage

---@return UnityEngine.UIElements.VectorImage
function UnityEngine.UIElements.VectorImage.New() end

---@class UnityEngine.UIElements.PseudoStates
---@field Active UnityEngine.UIElements.PseudoStates
---@field Hover UnityEngine.UIElements.PseudoStates
---@field Checked UnityEngine.UIElements.PseudoStates
---@field Disabled UnityEngine.UIElements.PseudoStates
---@field Focus UnityEngine.UIElements.PseudoStates
---@field Root UnityEngine.UIElements.PseudoStates
UnityEngine.UIElements.PseudoStates = {}
---@alias CS.UnityEngine.UIElements.PseudoStates UnityEngine.UIElements.PseudoStates
CS.UnityEngine.UIElements.PseudoStates = UnityEngine.UIElements.PseudoStates


---@class UnityEngine.UIElements.VisualElementFlags
---@field WorldTransformDirty UnityEngine.UIElements.VisualElementFlags
---@field WorldTransformInverseDirty UnityEngine.UIElements.VisualElementFlags
---@field WorldClipDirty UnityEngine.UIElements.VisualElementFlags
---@field BoundingBoxDirty UnityEngine.UIElements.VisualElementFlags
---@field WorldBoundingBoxDirty UnityEngine.UIElements.VisualElementFlags
---@field EventCallbackParentCategoriesDirty UnityEngine.UIElements.VisualElementFlags
---@field LayoutManual UnityEngine.UIElements.VisualElementFlags
---@field CompositeRoot UnityEngine.UIElements.VisualElementFlags
---@field RequireMeasureFunction UnityEngine.UIElements.VisualElementFlags
---@field EnableViewDataPersistence UnityEngine.UIElements.VisualElementFlags
---@field DisableClipping UnityEngine.UIElements.VisualElementFlags
---@field NeedsAttachToPanelEvent UnityEngine.UIElements.VisualElementFlags
---@field HierarchyDisplayed UnityEngine.UIElements.VisualElementFlags
---@field StyleInitialized UnityEngine.UIElements.VisualElementFlags
---@field Init UnityEngine.UIElements.VisualElementFlags
UnityEngine.UIElements.VisualElementFlags = {}
---@alias CS.UnityEngine.UIElements.VisualElementFlags UnityEngine.UIElements.VisualElementFlags
CS.UnityEngine.UIElements.VisualElementFlags = UnityEngine.UIElements.VisualElementFlags


---@class UnityEngine.UIElements.PickingMode
---@field Position UnityEngine.UIElements.PickingMode
---@field Ignore UnityEngine.UIElements.PickingMode
UnityEngine.UIElements.PickingMode = {}
---@alias CS.UnityEngine.UIElements.PickingMode UnityEngine.UIElements.PickingMode
CS.UnityEngine.UIElements.PickingMode = UnityEngine.UIElements.PickingMode


---@class UnityEngine.UIElements.LanguageDirection
---@field Inherit UnityEngine.UIElements.LanguageDirection
---@field LTR UnityEngine.UIElements.LanguageDirection
---@field RTL UnityEngine.UIElements.LanguageDirection
UnityEngine.UIElements.LanguageDirection = {}
---@alias CS.UnityEngine.UIElements.LanguageDirection UnityEngine.UIElements.LanguageDirection
CS.UnityEngine.UIElements.LanguageDirection = UnityEngine.UIElements.LanguageDirection


---@class UnityEngine.UIElements.VisualElementListPool : System.Object
UnityEngine.UIElements.VisualElementListPool = {}
---@alias CS.UnityEngine.UIElements.VisualElementListPool UnityEngine.UIElements.VisualElementListPool
CS.UnityEngine.UIElements.VisualElementListPool = UnityEngine.UIElements.VisualElementListPool

---@param elements System.Collections.Generic.List
---@return System.Collections.Generic.List
function UnityEngine.UIElements.VisualElementListPool.Copy(elements) end
---@param initialCapacity number
---@return System.Collections.Generic.List
function UnityEngine.UIElements.VisualElementListPool.Get(initialCapacity) end
---@param elements System.Collections.Generic.List
function UnityEngine.UIElements.VisualElementListPool.Release(elements) end

---@class UnityEngine.UIElements.ObjectListPool : System.Object
UnityEngine.UIElements.ObjectListPool = {}
---@alias CS.UnityEngine.UIElements.ObjectListPool UnityEngine.UIElements.ObjectListPool
CS.UnityEngine.UIElements.ObjectListPool = UnityEngine.UIElements.ObjectListPool

---@return UnityEngine.UIElements.ObjectListPool
function UnityEngine.UIElements.ObjectListPool.New() end
---@return System.Collections.Generic.List[T]
function UnityEngine.UIElements.ObjectListPool.Get() end
---@param elements System.Collections.Generic.List[T]
function UnityEngine.UIElements.ObjectListPool.Release(elements) end

---@class UnityEngine.UIElements.StringObjectListPool : UnityEngine.UIElements.ObjectListPool
UnityEngine.UIElements.StringObjectListPool = {}
---@alias CS.UnityEngine.UIElements.StringObjectListPool UnityEngine.UIElements.StringObjectListPool
CS.UnityEngine.UIElements.StringObjectListPool = UnityEngine.UIElements.StringObjectListPool

---@return UnityEngine.UIElements.StringObjectListPool
function UnityEngine.UIElements.StringObjectListPool.New() end

---@class UnityEngine.UIElements.VisualElementExtensions : System.Object
UnityEngine.UIElements.VisualElementExtensions = {}
---@alias CS.UnityEngine.UIElements.VisualElementExtensions UnityEngine.UIElements.VisualElementExtensions
CS.UnityEngine.UIElements.VisualElementExtensions = UnityEngine.UIElements.VisualElementExtensions

---@param elem UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElementExtensions.StretchToParentSize(elem) end
---@param elem UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.VisualElementExtensions.StretchToParentWidth(elem) end
---@param ele UnityEngine.UIElements.VisualElement
---@param manipulator UnityEngine.UIElements.IManipulator
function UnityEngine.UIElements.VisualElementExtensions.AddManipulator(ele, manipulator) end
---@param ele UnityEngine.UIElements.VisualElement
---@param manipulator UnityEngine.UIElements.IManipulator
function UnityEngine.UIElements.VisualElementExtensions.RemoveManipulator(ele, manipulator) end
---@overload fun(ele: UnityEngine.UIElements.VisualElement, p: UnityEngine.Vector2) : UnityEngine.Vector2
---@param ele UnityEngine.UIElements.VisualElement
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.UIElements.VisualElementExtensions.WorldToLocal(ele, r) end
---@overload fun(ele: UnityEngine.UIElements.VisualElement, p: UnityEngine.Vector2) : UnityEngine.Vector2
---@param ele UnityEngine.UIElements.VisualElement
---@param r UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.UIElements.VisualElementExtensions.LocalToWorld(ele, r) end
---@overload fun(src: UnityEngine.UIElements.VisualElement, dest: UnityEngine.UIElements.VisualElement, point: UnityEngine.Vector2) : UnityEngine.Vector2
---@param src UnityEngine.UIElements.VisualElement
---@param dest UnityEngine.UIElements.VisualElement
---@param rect UnityEngine.Rect
---@return UnityEngine.Rect
function UnityEngine.UIElements.VisualElementExtensions.ChangeCoordinatesTo(src, dest, rect) end

---@class UnityEngine.UIElements.VisualElementDebugExtensions : System.Object
UnityEngine.UIElements.VisualElementDebugExtensions = {}
---@alias CS.UnityEngine.UIElements.VisualElementDebugExtensions UnityEngine.UIElements.VisualElementDebugExtensions
CS.UnityEngine.UIElements.VisualElementDebugExtensions = UnityEngine.UIElements.VisualElementDebugExtensions

---@param ve UnityEngine.UIElements.VisualElement
---@param withHashCode boolean
---@return string
function UnityEngine.UIElements.VisualElementDebugExtensions.GetDisplayName(ve, withHashCode) end

---@class UnityEngine.UIElements.EventInterestReflectionUtils : System.Object
UnityEngine.UIElements.EventInterestReflectionUtils = {}
---@alias CS.UnityEngine.UIElements.EventInterestReflectionUtils UnityEngine.UIElements.EventInterestReflectionUtils
CS.UnityEngine.UIElements.EventInterestReflectionUtils = UnityEngine.UIElements.EventInterestReflectionUtils


---@class UnityEngine.UIElements.EventInterestReflectionUtils.DefaultEventInterests : System.ValueType
---@field DefaultActionCategories number
---@field DefaultActionAtTargetCategories number
UnityEngine.UIElements.EventInterestReflectionUtils.DefaultEventInterests = {}
---@alias CS.UnityEngine.UIElements.EventInterestReflectionUtils.DefaultEventInterests UnityEngine.UIElements.EventInterestReflectionUtils.DefaultEventInterests
CS.UnityEngine.UIElements.EventInterestReflectionUtils.DefaultEventInterests = UnityEngine.UIElements.EventInterestReflectionUtils.DefaultEventInterests


---@class UnityEngine.UIElements.EventCategory
---@field Default UnityEngine.UIElements.EventCategory
---@field Pointer UnityEngine.UIElements.EventCategory
---@field PointerMove UnityEngine.UIElements.EventCategory
---@field EnterLeave UnityEngine.UIElements.EventCategory
---@field EnterLeaveWindow UnityEngine.UIElements.EventCategory
---@field Keyboard UnityEngine.UIElements.EventCategory
---@field Geometry UnityEngine.UIElements.EventCategory
---@field Style UnityEngine.UIElements.EventCategory
---@field ChangeValue UnityEngine.UIElements.EventCategory
---@field Bind UnityEngine.UIElements.EventCategory
---@field Focus UnityEngine.UIElements.EventCategory
---@field ChangePanel UnityEngine.UIElements.EventCategory
---@field StyleTransition UnityEngine.UIElements.EventCategory
---@field Navigation UnityEngine.UIElements.EventCategory
---@field Command UnityEngine.UIElements.EventCategory
---@field Tooltip UnityEngine.UIElements.EventCategory
---@field IMGUI UnityEngine.UIElements.EventCategory
---@field Reserved UnityEngine.UIElements.EventCategory
UnityEngine.UIElements.EventCategory = {}
---@alias CS.UnityEngine.UIElements.EventCategory UnityEngine.UIElements.EventCategory
CS.UnityEngine.UIElements.EventCategory = UnityEngine.UIElements.EventCategory


---@class UnityEngine.UIElements.EventCategoryFlags
---@field None UnityEngine.UIElements.EventCategoryFlags
---@field All UnityEngine.UIElements.EventCategoryFlags
---@field TriggeredByOS UnityEngine.UIElements.EventCategoryFlags
---@field TargetOnly UnityEngine.UIElements.EventCategoryFlags
UnityEngine.UIElements.EventCategoryFlags = {}
---@alias CS.UnityEngine.UIElements.EventCategoryFlags UnityEngine.UIElements.EventCategoryFlags
CS.UnityEngine.UIElements.EventCategoryFlags = UnityEngine.UIElements.EventCategoryFlags


---@class UnityEngine.UIElements.EventInterestOptions
---@field Inherit UnityEngine.UIElements.EventInterestOptions
---@field AllEventTypes UnityEngine.UIElements.EventInterestOptions
UnityEngine.UIElements.EventInterestOptions = {}
---@alias CS.UnityEngine.UIElements.EventInterestOptions UnityEngine.UIElements.EventInterestOptions
CS.UnityEngine.UIElements.EventInterestOptions = UnityEngine.UIElements.EventInterestOptions


---@class UnityEngine.UIElements.EventInterestOptionsInternal
---@field TriggeredByOS UnityEngine.UIElements.EventInterestOptionsInternal
UnityEngine.UIElements.EventInterestOptionsInternal = {}
---@alias CS.UnityEngine.UIElements.EventInterestOptionsInternal UnityEngine.UIElements.EventInterestOptionsInternal
CS.UnityEngine.UIElements.EventInterestOptionsInternal = UnityEngine.UIElements.EventInterestOptionsInternal


---@class UnityEngine.UIElements.EventInterestAttribute : System.Attribute
UnityEngine.UIElements.EventInterestAttribute = {}
---@alias CS.UnityEngine.UIElements.EventInterestAttribute UnityEngine.UIElements.EventInterestAttribute
CS.UnityEngine.UIElements.EventInterestAttribute = UnityEngine.UIElements.EventInterestAttribute

---@overload fun(eventTypes: System.Type[]) : UnityEngine.UIElements.EventInterestAttribute
---@param interests UnityEngine.UIElements.EventInterestOptions
---@return UnityEngine.UIElements.EventInterestAttribute
function UnityEngine.UIElements.EventInterestAttribute.New(interests) end

---@class UnityEngine.UIElements.EventCategoryAttribute : System.Attribute
UnityEngine.UIElements.EventCategoryAttribute = {}
---@alias CS.UnityEngine.UIElements.EventCategoryAttribute UnityEngine.UIElements.EventCategoryAttribute
CS.UnityEngine.UIElements.EventCategoryAttribute = UnityEngine.UIElements.EventCategoryAttribute

---@param category UnityEngine.UIElements.EventCategory
---@return UnityEngine.UIElements.EventCategoryAttribute
function UnityEngine.UIElements.EventCategoryAttribute.New(category) end

---@class UnityEngine.UIElements.IExperimentalFeatures
---@field animation UnityEngine.UIElements.Experimental.ITransitionAnimations
UnityEngine.UIElements.IExperimentalFeatures = {}
---@alias CS.UnityEngine.UIElements.IExperimentalFeatures UnityEngine.UIElements.IExperimentalFeatures
CS.UnityEngine.UIElements.IExperimentalFeatures = UnityEngine.UIElements.IExperimentalFeatures


---@class UnityEngine.UIElements.VisualElementFocusChangeDirection : UnityEngine.UIElements.FocusChangeDirection
---@field left UnityEngine.UIElements.FocusChangeDirection
---@field right UnityEngine.UIElements.FocusChangeDirection
UnityEngine.UIElements.VisualElementFocusChangeDirection = {}
---@alias CS.UnityEngine.UIElements.VisualElementFocusChangeDirection UnityEngine.UIElements.VisualElementFocusChangeDirection
CS.UnityEngine.UIElements.VisualElementFocusChangeDirection = UnityEngine.UIElements.VisualElementFocusChangeDirection


---@class UnityEngine.UIElements.VisualElementFocusChangeTarget : UnityEngine.UIElements.FocusChangeDirection
---@field target UnityEngine.UIElements.Focusable
UnityEngine.UIElements.VisualElementFocusChangeTarget = {}
---@alias CS.UnityEngine.UIElements.VisualElementFocusChangeTarget UnityEngine.UIElements.VisualElementFocusChangeTarget
CS.UnityEngine.UIElements.VisualElementFocusChangeTarget = UnityEngine.UIElements.VisualElementFocusChangeTarget

---@return UnityEngine.UIElements.VisualElementFocusChangeTarget
function UnityEngine.UIElements.VisualElementFocusChangeTarget.New() end
---@param target UnityEngine.UIElements.Focusable
---@return UnityEngine.UIElements.VisualElementFocusChangeTarget
function UnityEngine.UIElements.VisualElementFocusChangeTarget.GetPooled(target) end

---@class UnityEngine.UIElements.VisualElementFocusRing : System.Object
---@field defaultFocusOrder UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder
UnityEngine.UIElements.VisualElementFocusRing = {}
---@alias CS.UnityEngine.UIElements.VisualElementFocusRing UnityEngine.UIElements.VisualElementFocusRing
CS.UnityEngine.UIElements.VisualElementFocusRing = UnityEngine.UIElements.VisualElementFocusRing

---@param root UnityEngine.UIElements.VisualElement
---@param dfo UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder
---@return UnityEngine.UIElements.VisualElementFocusRing
function UnityEngine.UIElements.VisualElementFocusRing.New(root, dfo) end
---@param currentFocusable UnityEngine.UIElements.Focusable
---@param e UnityEngine.UIElements.EventBase
---@return UnityEngine.UIElements.FocusChangeDirection
function UnityEngine.UIElements.VisualElementFocusRing:GetFocusChangeDirection(currentFocusable, e) end
---@param currentFocusable UnityEngine.UIElements.Focusable
---@param direction UnityEngine.UIElements.FocusChangeDirection
---@return UnityEngine.UIElements.Focusable
function UnityEngine.UIElements.VisualElementFocusRing:GetNextFocusable(currentFocusable, direction) end

---@class UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder
---@field ChildOrder UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder
---@field PositionXY UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder
---@field PositionYX UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder
UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder = {}
---@alias CS.UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder
CS.UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder = UnityEngine.UIElements.VisualElementFocusRing.DefaultFocusOrder


---@class UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord : System.Object
---@field m_AutoIndex number
---@field m_Focusable UnityEngine.UIElements.Focusable
---@field m_IsSlot boolean
---@field m_ScopeNavigationOrder System.Collections.Generic.List
UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord = {}
---@alias CS.UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord
CS.UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord = UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord

---@return UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord
function UnityEngine.UIElements.VisualElementFocusRing.FocusRingRecord.New() end

---@class UnityEngine.UIElements.IVisualElementScheduledItem
---@field element UnityEngine.UIElements.VisualElement
---@field isActive boolean
UnityEngine.UIElements.IVisualElementScheduledItem = {}
---@alias CS.UnityEngine.UIElements.IVisualElementScheduledItem UnityEngine.UIElements.IVisualElementScheduledItem
CS.UnityEngine.UIElements.IVisualElementScheduledItem = UnityEngine.UIElements.IVisualElementScheduledItem

function UnityEngine.UIElements.IVisualElementScheduledItem:Resume() end
function UnityEngine.UIElements.IVisualElementScheduledItem:Pause() end
---@param delayMs number
function UnityEngine.UIElements.IVisualElementScheduledItem:ExecuteLater(delayMs) end
---@param delayMs number
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.IVisualElementScheduledItem:StartingIn(delayMs) end
---@param intervalMs number
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.IVisualElementScheduledItem:Every(intervalMs) end
---@param stopCondition System.Func
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.IVisualElementScheduledItem:Until(stopCondition) end
---@param durationMs number
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.IVisualElementScheduledItem:ForDuration(durationMs) end

---@class UnityEngine.UIElements.IVisualElementScheduler
UnityEngine.UIElements.IVisualElementScheduler = {}
---@alias CS.UnityEngine.UIElements.IVisualElementScheduler UnityEngine.UIElements.IVisualElementScheduler
CS.UnityEngine.UIElements.IVisualElementScheduler = UnityEngine.UIElements.IVisualElementScheduler

---@overload fun(self: UnityEngine.UIElements.IVisualElementScheduler, timerUpdateEvent: System.Action) : UnityEngine.UIElements.IVisualElementScheduledItem
---@param updateEvent System.Action
---@return UnityEngine.UIElements.IVisualElementScheduledItem
function UnityEngine.UIElements.IVisualElementScheduler:Execute(updateEvent) end

---@class UnityEngine.UIElements.IVisualElementPanelActivatable
---@field element UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.IVisualElementPanelActivatable = {}
---@alias CS.UnityEngine.UIElements.IVisualElementPanelActivatable UnityEngine.UIElements.IVisualElementPanelActivatable
CS.UnityEngine.UIElements.IVisualElementPanelActivatable = UnityEngine.UIElements.IVisualElementPanelActivatable

---@return boolean
function UnityEngine.UIElements.IVisualElementPanelActivatable:CanBeActivated() end
function UnityEngine.UIElements.IVisualElementPanelActivatable:OnPanelActivate() end
function UnityEngine.UIElements.IVisualElementPanelActivatable:OnPanelDeactivate() end

---@class UnityEngine.UIElements.VisualElementPanelActivator : System.Object
---@field isActive boolean
---@field isDetaching boolean
UnityEngine.UIElements.VisualElementPanelActivator = {}
---@alias CS.UnityEngine.UIElements.VisualElementPanelActivator UnityEngine.UIElements.VisualElementPanelActivator
CS.UnityEngine.UIElements.VisualElementPanelActivator = UnityEngine.UIElements.VisualElementPanelActivator

---@param activatable UnityEngine.UIElements.IVisualElementPanelActivatable
---@return UnityEngine.UIElements.VisualElementPanelActivator
function UnityEngine.UIElements.VisualElementPanelActivator.New(activatable) end
---@param action boolean
function UnityEngine.UIElements.VisualElementPanelActivator:SetActive(action) end
function UnityEngine.UIElements.VisualElementPanelActivator:SendActivation() end
function UnityEngine.UIElements.VisualElementPanelActivator:SendDeactivation() end

---@class UnityEngine.UIElements.VisualElementStyleSheetSet : System.ValueType
---@field count number
---@field Item UnityEngine.UIElements.StyleSheet
UnityEngine.UIElements.VisualElementStyleSheetSet = {}
---@alias CS.UnityEngine.UIElements.VisualElementStyleSheetSet UnityEngine.UIElements.VisualElementStyleSheetSet
CS.UnityEngine.UIElements.VisualElementStyleSheetSet = UnityEngine.UIElements.VisualElementStyleSheetSet

---@param styleSheet UnityEngine.UIElements.StyleSheet
function UnityEngine.UIElements.VisualElementStyleSheetSet:Add(styleSheet) end
function UnityEngine.UIElements.VisualElementStyleSheetSet:Clear() end
---@param styleSheet UnityEngine.UIElements.StyleSheet
---@return boolean
function UnityEngine.UIElements.VisualElementStyleSheetSet:Remove(styleSheet) end
---@param styleSheet UnityEngine.UIElements.StyleSheet
---@return boolean
function UnityEngine.UIElements.VisualElementStyleSheetSet:Contains(styleSheet) end
---@overload fun(self: UnityEngine.UIElements.VisualElementStyleSheetSet, other: UnityEngine.UIElements.VisualElementStyleSheetSet) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.VisualElementStyleSheetSet:Equals(obj) end
---@return number
function UnityEngine.UIElements.VisualElementStyleSheetSet:GetHashCode() end

---@class UnityEngine.UIElements.VisualElementUtils : System.Object
UnityEngine.UIElements.VisualElementUtils = {}
---@alias CS.UnityEngine.UIElements.VisualElementUtils UnityEngine.UIElements.VisualElementUtils
CS.UnityEngine.UIElements.VisualElementUtils = UnityEngine.UIElements.VisualElementUtils

---@param nameBase string
---@return string
function UnityEngine.UIElements.VisualElementUtils.GetUniqueName(nameBase) end

---@class UnityEngine.UIElements.VisualElementAnimationSystem : UnityEngine.UIElements.BaseVisualTreeUpdater
---@field profilerMarker Unity.Profiling.ProfilerMarker
UnityEngine.UIElements.VisualElementAnimationSystem = {}
---@alias CS.UnityEngine.UIElements.VisualElementAnimationSystem UnityEngine.UIElements.VisualElementAnimationSystem
CS.UnityEngine.UIElements.VisualElementAnimationSystem = UnityEngine.UIElements.VisualElementAnimationSystem

---@return UnityEngine.UIElements.VisualElementAnimationSystem
function UnityEngine.UIElements.VisualElementAnimationSystem.New() end
---@param anim UnityEngine.UIElements.Experimental.IValueAnimationUpdate
function UnityEngine.UIElements.VisualElementAnimationSystem:UnregisterAnimation(anim) end
---@param anims System.Collections.Generic.List
function UnityEngine.UIElements.VisualElementAnimationSystem:UnregisterAnimations(anims) end
---@param anim UnityEngine.UIElements.Experimental.IValueAnimationUpdate
function UnityEngine.UIElements.VisualElementAnimationSystem:RegisterAnimation(anim) end
---@param anims System.Collections.Generic.List
function UnityEngine.UIElements.VisualElementAnimationSystem:RegisterAnimations(anims) end
function UnityEngine.UIElements.VisualElementAnimationSystem:Update() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.VisualElementAnimationSystem:OnVersionChanged(ve, versionChangeType) end

---@class UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater : UnityEngine.UIElements.BaseVisualTreeUpdater
---@field profilerMarker Unity.Profiling.ProfilerMarker
UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater = {}
---@alias CS.UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater
CS.UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater = UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater

---@return UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater
function UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.VisualTreeHierarchyFlagsUpdater:Update() end

---@class UnityEngine.UIElements.HierarchyChangeType
---@field Add UnityEngine.UIElements.HierarchyChangeType
---@field Remove UnityEngine.UIElements.HierarchyChangeType
---@field Move UnityEngine.UIElements.HierarchyChangeType
UnityEngine.UIElements.HierarchyChangeType = {}
---@alias CS.UnityEngine.UIElements.HierarchyChangeType UnityEngine.UIElements.HierarchyChangeType
CS.UnityEngine.UIElements.HierarchyChangeType = UnityEngine.UIElements.HierarchyChangeType


---@class UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater : UnityEngine.UIElements.BaseVisualTreeUpdater
UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater = {}
---@alias CS.UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater
CS.UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater = UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater

---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater:Update() end

---@class UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State
---@field Waiting UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State
---@field TrackingAddOrMove UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State
---@field TrackingRemove UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State
UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State = {}
---@alias CS.UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State
CS.UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State = UnityEngine.UIElements.BaseVisualTreeHierarchyTrackerUpdater.State


---@class UnityEngine.UIElements.StyleCache : System.Object
UnityEngine.UIElements.StyleCache = {}
---@alias CS.UnityEngine.UIElements.StyleCache UnityEngine.UIElements.StyleCache
CS.UnityEngine.UIElements.StyleCache = UnityEngine.UIElements.StyleCache

---@overload fun(hash: number, out_data: UnityEngine.UIElements.ComputedStyle) : boolean, UnityEngine.UIElements.ComputedStyle
---@overload fun(hash: number, out_data: UnityEngine.UIElements.StyleVariableContext) : boolean, UnityEngine.UIElements.StyleVariableContext
---@param hash number
---@param out_data UnityEngine.UIElements.ComputedTransitionProperty[]
---@return boolean,UnityEngine.UIElements.ComputedTransitionProperty[]
function UnityEngine.UIElements.StyleCache.TryGetValue(hash, out_data) end
---@overload fun(hash: number, ref_data: UnityEngine.UIElements.ComputedStyle) : UnityEngine.UIElements.ComputedStyle
---@overload fun(hash: number, data: UnityEngine.UIElements.StyleVariableContext)
---@param hash number
---@param data UnityEngine.UIElements.ComputedTransitionProperty[]
function UnityEngine.UIElements.StyleCache.SetValue(hash, data) end
function UnityEngine.UIElements.StyleCache.ClearStyleCache() end

---@class UnityEngine.UIElements.VisualTreeStyleUpdater : UnityEngine.UIElements.BaseVisualTreeUpdater
---@field traversal UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal
---@field profilerMarker Unity.Profiling.ProfilerMarker
UnityEngine.UIElements.VisualTreeStyleUpdater = {}
---@alias CS.UnityEngine.UIElements.VisualTreeStyleUpdater UnityEngine.UIElements.VisualTreeStyleUpdater
CS.UnityEngine.UIElements.VisualTreeStyleUpdater = UnityEngine.UIElements.VisualTreeStyleUpdater

---@return UnityEngine.UIElements.VisualTreeStyleUpdater
function UnityEngine.UIElements.VisualTreeStyleUpdater.New() end
function UnityEngine.UIElements.VisualTreeStyleUpdater:DirtyStyleSheets() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.VisualTreeStyleUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.VisualTreeStyleUpdater:Update() end

---@class UnityEngine.UIElements.StyleMatchingContext : System.Object
---@field variableContext UnityEngine.UIElements.StyleVariableContext
---@field currentElement UnityEngine.UIElements.VisualElement
---@field processResult System.Action
---@field ancestorFilter UnityEngine.UIElements.AncestorFilter
---@field styleSheetCount number
UnityEngine.UIElements.StyleMatchingContext = {}
---@alias CS.UnityEngine.UIElements.StyleMatchingContext UnityEngine.UIElements.StyleMatchingContext
CS.UnityEngine.UIElements.StyleMatchingContext = UnityEngine.UIElements.StyleMatchingContext

---@param processResult System.Action
---@return UnityEngine.UIElements.StyleMatchingContext
function UnityEngine.UIElements.StyleMatchingContext.New(processResult) end
---@param sheet UnityEngine.UIElements.StyleSheet
function UnityEngine.UIElements.StyleMatchingContext:AddStyleSheet(sheet) end
---@param index number
---@param count number
function UnityEngine.UIElements.StyleMatchingContext:RemoveStyleSheetRange(index, count) end
---@param index number
---@return UnityEngine.UIElements.StyleSheet
function UnityEngine.UIElements.StyleMatchingContext:GetStyleSheetAt(index) end

---@class UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal : UnityEngine.UIElements.StyleSheets.HierarchyTraversal
---@field styleMatchingContext UnityEngine.UIElements.StyleMatchingContext
UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal = {}
---@alias CS.UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal
CS.UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal = UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal

---@return UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal
function UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal.New() end
---@param pixelsPerPoint number
function UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal:PrepareTraversal(pixelsPerPoint) end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal:AddChangedElement(ve, versionChangeType) end
function UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal:Clear() end
---@param element UnityEngine.UIElements.VisualElement
---@param depth number
function UnityEngine.UIElements.VisualTreeStyleUpdaterTraversal:TraverseRecursive(element, depth) end

---@class UnityEngine.UIElements.VisualTreeEditorUpdatePhase
---@field AssetChange UnityEngine.UIElements.VisualTreeEditorUpdatePhase
---@field Count UnityEngine.UIElements.VisualTreeEditorUpdatePhase
UnityEngine.UIElements.VisualTreeEditorUpdatePhase = {}
---@alias CS.UnityEngine.UIElements.VisualTreeEditorUpdatePhase UnityEngine.UIElements.VisualTreeEditorUpdatePhase
CS.UnityEngine.UIElements.VisualTreeEditorUpdatePhase = UnityEngine.UIElements.VisualTreeEditorUpdatePhase


---@class UnityEngine.UIElements.IVisualTreeEditorUpdater
UnityEngine.UIElements.IVisualTreeEditorUpdater = {}
---@alias CS.UnityEngine.UIElements.IVisualTreeEditorUpdater UnityEngine.UIElements.IVisualTreeEditorUpdater
CS.UnityEngine.UIElements.IVisualTreeEditorUpdater = UnityEngine.UIElements.IVisualTreeEditorUpdater

---@param phase UnityEngine.UIElements.VisualTreeEditorUpdatePhase
---@return UnityEngine.UIElements.IVisualTreeUpdater
function UnityEngine.UIElements.IVisualTreeEditorUpdater:GetUpdater(phase) end
---@param updater UnityEngine.UIElements.IVisualTreeUpdater
---@param phase UnityEngine.UIElements.VisualTreeEditorUpdatePhase
function UnityEngine.UIElements.IVisualTreeEditorUpdater:SetUpdater(updater, phase) end
function UnityEngine.UIElements.IVisualTreeEditorUpdater:Update() end
---@param phase UnityEngine.UIElements.VisualTreeEditorUpdatePhase
function UnityEngine.UIElements.IVisualTreeEditorUpdater:UpdateVisualTreePhase(phase) end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.IVisualTreeEditorUpdater:OnVersionChanged(ve, versionChangeType) end

---@class UnityEngine.UIElements.VisualTreeUpdatePhase
---@field ViewData UnityEngine.UIElements.VisualTreeUpdatePhase
---@field Bindings UnityEngine.UIElements.VisualTreeUpdatePhase
---@field Animation UnityEngine.UIElements.VisualTreeUpdatePhase
---@field Styles UnityEngine.UIElements.VisualTreeUpdatePhase
---@field Layout UnityEngine.UIElements.VisualTreeUpdatePhase
---@field TransformClip UnityEngine.UIElements.VisualTreeUpdatePhase
---@field Repaint UnityEngine.UIElements.VisualTreeUpdatePhase
---@field Count UnityEngine.UIElements.VisualTreeUpdatePhase
UnityEngine.UIElements.VisualTreeUpdatePhase = {}
---@alias CS.UnityEngine.UIElements.VisualTreeUpdatePhase UnityEngine.UIElements.VisualTreeUpdatePhase
CS.UnityEngine.UIElements.VisualTreeUpdatePhase = UnityEngine.UIElements.VisualTreeUpdatePhase


---@class UnityEngine.UIElements.VisualTreeUpdater : System.Object
---@field visualTreeEditorUpdater UnityEngine.UIElements.IVisualTreeEditorUpdater
UnityEngine.UIElements.VisualTreeUpdater = {}
---@alias CS.UnityEngine.UIElements.VisualTreeUpdater UnityEngine.UIElements.VisualTreeUpdater
CS.UnityEngine.UIElements.VisualTreeUpdater = UnityEngine.UIElements.VisualTreeUpdater

---@param panel UnityEngine.UIElements.BaseVisualElementPanel
---@return UnityEngine.UIElements.VisualTreeUpdater
function UnityEngine.UIElements.VisualTreeUpdater.New(panel) end
function UnityEngine.UIElements.VisualTreeUpdater:Dispose() end
function UnityEngine.UIElements.VisualTreeUpdater:UpdateVisualTree() end
---@param phase UnityEngine.UIElements.VisualTreeUpdatePhase
function UnityEngine.UIElements.VisualTreeUpdater:UpdateVisualTreePhase(phase) end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.VisualTreeUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.VisualTreeUpdater:DirtyStyleSheets() end
---@param updater UnityEngine.UIElements.IVisualTreeUpdater
---@param phase UnityEngine.UIElements.VisualTreeUpdatePhase
function UnityEngine.UIElements.VisualTreeUpdater:SetUpdater(updater, phase) end
---@param phase UnityEngine.UIElements.VisualTreeUpdatePhase
---@return UnityEngine.UIElements.IVisualTreeUpdater
function UnityEngine.UIElements.VisualTreeUpdater:GetUpdater(phase) end

---@class UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray : System.Object
---@field Item UnityEngine.UIElements.IVisualTreeUpdater
---@field Item UnityEngine.UIElements.IVisualTreeUpdater
UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray = {}
---@alias CS.UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray
CS.UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray = UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray

---@return UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray
function UnityEngine.UIElements.VisualTreeUpdater.UpdaterArray.New() end

---@class UnityEngine.UIElements.IVisualTreeUpdater
---@field panel UnityEngine.UIElements.BaseVisualElementPanel
---@field profilerMarker Unity.Profiling.ProfilerMarker
UnityEngine.UIElements.IVisualTreeUpdater = {}
---@alias CS.UnityEngine.UIElements.IVisualTreeUpdater UnityEngine.UIElements.IVisualTreeUpdater
CS.UnityEngine.UIElements.IVisualTreeUpdater = UnityEngine.UIElements.IVisualTreeUpdater

function UnityEngine.UIElements.IVisualTreeUpdater:Update() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.IVisualTreeUpdater:OnVersionChanged(ve, versionChangeType) end

---@class UnityEngine.UIElements.BaseVisualTreeUpdater : System.Object
---@field panel UnityEngine.UIElements.BaseVisualElementPanel
---@field visualTree UnityEngine.UIElements.VisualElement
---@field profilerMarker Unity.Profiling.ProfilerMarker
UnityEngine.UIElements.BaseVisualTreeUpdater = {}
---@alias CS.UnityEngine.UIElements.BaseVisualTreeUpdater UnityEngine.UIElements.BaseVisualTreeUpdater
CS.UnityEngine.UIElements.BaseVisualTreeUpdater = UnityEngine.UIElements.BaseVisualTreeUpdater

function UnityEngine.UIElements.BaseVisualTreeUpdater:Dispose() end
function UnityEngine.UIElements.BaseVisualTreeUpdater:Update() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.BaseVisualTreeUpdater:OnVersionChanged(ve, versionChangeType) end

---@class UnityEngine.UIElements.VisualTreeViewDataUpdater : UnityEngine.UIElements.BaseVisualTreeUpdater
---@field profilerMarker Unity.Profiling.ProfilerMarker
UnityEngine.UIElements.VisualTreeViewDataUpdater = {}
---@alias CS.UnityEngine.UIElements.VisualTreeViewDataUpdater UnityEngine.UIElements.VisualTreeViewDataUpdater
CS.UnityEngine.UIElements.VisualTreeViewDataUpdater = UnityEngine.UIElements.VisualTreeViewDataUpdater

---@return UnityEngine.UIElements.VisualTreeViewDataUpdater
function UnityEngine.UIElements.VisualTreeViewDataUpdater.New() end
---@param ve UnityEngine.UIElements.VisualElement
---@param versionChangeType UnityEngine.UIElements.VersionChangeType
function UnityEngine.UIElements.VisualTreeViewDataUpdater:OnVersionChanged(ve, versionChangeType) end
function UnityEngine.UIElements.VisualTreeViewDataUpdater:Update() end

---@class UnityEngine.UIElements.UIR.GfxUpdateBufferRange : System.ValueType
---@field offsetFromWriteStart number
---@field size number
---@field source System.UIntPtr
UnityEngine.UIElements.UIR.GfxUpdateBufferRange = {}
---@alias CS.UnityEngine.UIElements.UIR.GfxUpdateBufferRange UnityEngine.UIElements.UIR.GfxUpdateBufferRange
CS.UnityEngine.UIElements.UIR.GfxUpdateBufferRange = UnityEngine.UIElements.UIR.GfxUpdateBufferRange


---@class UnityEngine.UIElements.UIR.DrawBufferRange : System.ValueType
---@field firstIndex number
---@field indexCount number
---@field minIndexVal number
---@field vertsReferenced number
UnityEngine.UIElements.UIR.DrawBufferRange = {}
---@alias CS.UnityEngine.UIElements.UIR.DrawBufferRange UnityEngine.UIElements.UIR.DrawBufferRange
CS.UnityEngine.UIElements.UIR.DrawBufferRange = UnityEngine.UIElements.UIR.DrawBufferRange


---@class UnityEngine.UIElements.UIR.Utility : System.Object
UnityEngine.UIElements.UIR.Utility = {}
---@alias CS.UnityEngine.UIElements.UIR.Utility UnityEngine.UIElements.UIR.Utility
CS.UnityEngine.UIElements.UIR.Utility = UnityEngine.UIElements.UIR.Utility

---@return UnityEngine.UIElements.UIR.Utility
function UnityEngine.UIElements.UIR.Utility.New() end
---@param vertexAttributes UnityEngine.Rendering.VertexAttributeDescriptor[]
---@return System.IntPtr
function UnityEngine.UIElements.UIR.Utility.GetVertexDeclaration(vertexAttributes) end
---@param camera UnityEngine.Camera
---@param material UnityEngine.Material
---@param transform UnityEngine.Matrix4x4
---@param aabb UnityEngine.Bounds
---@param renderLayer number
---@param shadowCasting number
---@param receiveShadows boolean
---@param sameDistanceSortPriority number
---@param sceneCullingMask number
---@param rendererCallbackFlags number
---@param userData System.IntPtr
---@param userDataSize number
function UnityEngine.UIElements.UIR.Utility.RegisterIntermediateRenderer(camera, material, transform, aabb, renderLayer, shadowCasting, receiveShadows, sameDistanceSortPriority, sceneCullingMask, rendererCallbackFlags, userData, userDataSize) end
---@param ib System.IntPtr
---@param vertexStreams System.IntPtr*
---@param streamCount number
---@param ranges System.IntPtr
---@param rangeCount number
---@param vertexDecl System.IntPtr
function UnityEngine.UIElements.UIR.Utility.DrawRanges(ib, vertexStreams, streamCount, ranges, rangeCount, vertexDecl) end
---@param props UnityEngine.MaterialPropertyBlock
function UnityEngine.UIElements.UIR.Utility.SetPropertyBlock(props) end
---@param scissorRect UnityEngine.RectInt
function UnityEngine.UIElements.UIR.Utility.SetScissorRect(scissorRect) end
function UnityEngine.UIElements.UIR.Utility.DisableScissor() end
---@return boolean
function UnityEngine.UIElements.UIR.Utility.IsScissorEnabled() end
---@param stencilState UnityEngine.Rendering.StencilState
---@return System.IntPtr
function UnityEngine.UIElements.UIR.Utility.CreateStencilState(stencilState) end
---@param stencilState System.IntPtr
---@param stencilRef number
function UnityEngine.UIElements.UIR.Utility.SetStencilState(stencilState, stencilRef) end
---@return boolean
function UnityEngine.UIElements.UIR.Utility.HasMappedBufferRange() end
---@return number
function UnityEngine.UIElements.UIR.Utility.InsertCPUFence() end
---@param fence number
---@return boolean
function UnityEngine.UIElements.UIR.Utility.CPUFencePassed(fence) end
---@param fence number
function UnityEngine.UIElements.UIR.Utility.WaitForCPUFencePassed(fence) end
function UnityEngine.UIElements.UIR.Utility.SyncRenderThread() end
---@return UnityEngine.RectInt
function UnityEngine.UIElements.UIR.Utility.GetActiveViewport() end
function UnityEngine.UIElements.UIR.Utility.ProfileDrawChainBegin() end
function UnityEngine.UIElements.UIR.Utility.ProfileDrawChainEnd() end
---@param subscribe boolean
function UnityEngine.UIElements.UIR.Utility.NotifyOfUIREvents(subscribe) end
---@return UnityEngine.Matrix4x4
function UnityEngine.UIElements.UIR.Utility.GetUnityProjectionMatrix() end
---@return UnityEngine.Matrix4x4
function UnityEngine.UIElements.UIR.Utility.GetDeviceProjectionMatrix() end
---@return boolean
function UnityEngine.UIElements.UIR.Utility.DebugIsMainThread() end

---@class UnityEngine.UIElements.UIR.Utility.RendererCallbacks
---@field RendererCallback_Init UnityEngine.UIElements.UIR.Utility.RendererCallbacks
---@field RendererCallback_Exec UnityEngine.UIElements.UIR.Utility.RendererCallbacks
---@field RendererCallback_Cleanup UnityEngine.UIElements.UIR.Utility.RendererCallbacks
UnityEngine.UIElements.UIR.Utility.RendererCallbacks = {}
---@alias CS.UnityEngine.UIElements.UIR.Utility.RendererCallbacks UnityEngine.UIElements.UIR.Utility.RendererCallbacks
CS.UnityEngine.UIElements.UIR.Utility.RendererCallbacks = UnityEngine.UIElements.UIR.Utility.RendererCallbacks


---@class UnityEngine.UIElements.UIR.Utility.GPUBufferType
---@field Vertex UnityEngine.UIElements.UIR.Utility.GPUBufferType
---@field Index UnityEngine.UIElements.UIR.Utility.GPUBufferType
UnityEngine.UIElements.UIR.Utility.GPUBufferType = {}
---@alias CS.UnityEngine.UIElements.UIR.Utility.GPUBufferType UnityEngine.UIElements.UIR.Utility.GPUBufferType
CS.UnityEngine.UIElements.UIR.Utility.GPUBufferType = UnityEngine.UIElements.UIR.Utility.GPUBufferType


---@class UnityEngine.UIElements.UIR.Utility.GPUBuffer : System.Object
---@field ElementStride number
---@field Count number
UnityEngine.UIElements.UIR.Utility.GPUBuffer = {}
---@alias CS.UnityEngine.UIElements.UIR.Utility.GPUBuffer UnityEngine.UIElements.UIR.Utility.GPUBuffer
CS.UnityEngine.UIElements.UIR.Utility.GPUBuffer = UnityEngine.UIElements.UIR.Utility.GPUBuffer

---@param elementCount number
---@param type UnityEngine.UIElements.UIR.Utility.GPUBufferType
---@return UnityEngine.UIElements.UIR.Utility.GPUBuffer
function UnityEngine.UIElements.UIR.Utility.GPUBuffer.New(elementCount, type) end
function UnityEngine.UIElements.UIR.Utility.GPUBuffer:Dispose() end
---@param ranges Unity.Collections.NativeSlice
---@param rangesMin number
---@param rangesMax number
function UnityEngine.UIElements.UIR.Utility.GPUBuffer:UpdateRanges(ranges, rangesMin, rangesMax) end

---@class UnityEngine.UIElements.UIR.JobProcessor : System.Object
UnityEngine.UIElements.UIR.JobProcessor = {}
---@alias CS.UnityEngine.UIElements.UIR.JobProcessor UnityEngine.UIElements.UIR.JobProcessor
CS.UnityEngine.UIElements.UIR.JobProcessor = UnityEngine.UIElements.UIR.JobProcessor


---@class UnityEngine.UIElements.UIR.Allocator2D : System.Object
---@field minSize UnityEngine.Vector2Int
---@field maxSize UnityEngine.Vector2Int
---@field maxAllocSize UnityEngine.Vector2Int
UnityEngine.UIElements.UIR.Allocator2D = {}
---@alias CS.UnityEngine.UIElements.UIR.Allocator2D UnityEngine.UIElements.UIR.Allocator2D
CS.UnityEngine.UIElements.UIR.Allocator2D = UnityEngine.UIElements.UIR.Allocator2D

---@overload fun(minSize: number, maxSize: number, rowHeightBias: number) : UnityEngine.UIElements.UIR.Allocator2D
---@param minSize UnityEngine.Vector2Int
---@param maxSize UnityEngine.Vector2Int
---@param rowHeightBias number
---@return UnityEngine.UIElements.UIR.Allocator2D
function UnityEngine.UIElements.UIR.Allocator2D.New(minSize, maxSize, rowHeightBias) end
---@param width number
---@param height number
---@param out_alloc2D UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
---@return boolean,UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
function UnityEngine.UIElements.UIR.Allocator2D:TryAllocate(width, height, out_alloc2D) end
---@param alloc2D UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
function UnityEngine.UIElements.UIR.Allocator2D:Free(alloc2D) end

---@class UnityEngine.UIElements.UIR.Allocator2D.Area : System.Object
---@field rect UnityEngine.RectInt
---@field allocator UnityEngine.UIElements.UIR.BestFitAllocator
UnityEngine.UIElements.UIR.Allocator2D.Area = {}
---@alias CS.UnityEngine.UIElements.UIR.Allocator2D.Area UnityEngine.UIElements.UIR.Allocator2D.Area
CS.UnityEngine.UIElements.UIR.Allocator2D.Area = UnityEngine.UIElements.UIR.Allocator2D.Area

---@param rect UnityEngine.RectInt
---@return UnityEngine.UIElements.UIR.Allocator2D.Area
function UnityEngine.UIElements.UIR.Allocator2D.Area.New(rect) end

---@class UnityEngine.UIElements.UIR.Allocator2D.Row : UnityEngine.UIElements.UIR.LinkedPoolItem
---@field pool UnityEngine.UIElements.UIR.LinkedPool
---@field rect UnityEngine.RectInt
---@field area UnityEngine.UIElements.UIR.Allocator2D.Area
---@field allocator UnityEngine.UIElements.UIR.BestFitAllocator
---@field alloc UnityEngine.UIElements.UIR.Alloc
---@field next UnityEngine.UIElements.UIR.Allocator2D.Row
UnityEngine.UIElements.UIR.Allocator2D.Row = {}
---@alias CS.UnityEngine.UIElements.UIR.Allocator2D.Row UnityEngine.UIElements.UIR.Allocator2D.Row
CS.UnityEngine.UIElements.UIR.Allocator2D.Row = UnityEngine.UIElements.UIR.Allocator2D.Row

---@return UnityEngine.UIElements.UIR.Allocator2D.Row
function UnityEngine.UIElements.UIR.Allocator2D.Row.New() end

---@class UnityEngine.UIElements.UIR.Allocator2D.Alloc2D : System.ValueType
---@field rect UnityEngine.RectInt
---@field row UnityEngine.UIElements.UIR.Allocator2D.Row
---@field alloc UnityEngine.UIElements.UIR.Alloc
UnityEngine.UIElements.UIR.Allocator2D.Alloc2D = {}
---@alias CS.UnityEngine.UIElements.UIR.Allocator2D.Alloc2D UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
CS.UnityEngine.UIElements.UIR.Allocator2D.Alloc2D = UnityEngine.UIElements.UIR.Allocator2D.Alloc2D

---@param row UnityEngine.UIElements.UIR.Allocator2D.Row
---@param alloc UnityEngine.UIElements.UIR.Alloc
---@param width number
---@param height number
---@return UnityEngine.UIElements.UIR.Allocator2D.Alloc2D
function UnityEngine.UIElements.UIR.Allocator2D.Alloc2D.New(row, alloc, width, height) end

---@class UnityEngine.UIElements.UIR.DetachedAllocator : System.Object
---@field meshes System.Collections.Generic.List
UnityEngine.UIElements.UIR.DetachedAllocator = {}
---@alias CS.UnityEngine.UIElements.UIR.DetachedAllocator UnityEngine.UIElements.UIR.DetachedAllocator
CS.UnityEngine.UIElements.UIR.DetachedAllocator = UnityEngine.UIElements.UIR.DetachedAllocator

---@return UnityEngine.UIElements.UIR.DetachedAllocator
function UnityEngine.UIElements.UIR.DetachedAllocator.New() end
function UnityEngine.UIElements.UIR.DetachedAllocator:Dispose() end
---@param vertexCount number
---@param indexCount number
---@return UnityEngine.UIElements.MeshWriteData
function UnityEngine.UIElements.UIR.DetachedAllocator:Alloc(vertexCount, indexCount) end
function UnityEngine.UIElements.UIR.DetachedAllocator:Clear() end

---@class UnityEngine.UIElements.UIR.Transform3x4 : System.ValueType
---@field v0 UnityEngine.Vector4
---@field v1 UnityEngine.Vector4
---@field v2 UnityEngine.Vector4
UnityEngine.UIElements.UIR.Transform3x4 = {}
---@alias CS.UnityEngine.UIElements.UIR.Transform3x4 UnityEngine.UIElements.UIR.Transform3x4
CS.UnityEngine.UIElements.UIR.Transform3x4 = UnityEngine.UIElements.UIR.Transform3x4


---@class UnityEngine.UIElements.UIR.MeshHandle : UnityEngine.UIElements.UIR.LinkedPoolItem
UnityEngine.UIElements.UIR.MeshHandle = {}
---@alias CS.UnityEngine.UIElements.UIR.MeshHandle UnityEngine.UIElements.UIR.MeshHandle
CS.UnityEngine.UIElements.UIR.MeshHandle = UnityEngine.UIElements.UIR.MeshHandle

---@return UnityEngine.UIElements.UIR.MeshHandle
function UnityEngine.UIElements.UIR.MeshHandle.New() end

---@class UnityEngine.UIElements.UIR.UIRenderDevice : System.Object
UnityEngine.UIElements.UIR.UIRenderDevice = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice UnityEngine.UIElements.UIR.UIRenderDevice
CS.UnityEngine.UIElements.UIR.UIRenderDevice = UnityEngine.UIElements.UIR.UIRenderDevice

---@param initialVertexCapacity number
---@param initialIndexCapacity number
---@return UnityEngine.UIElements.UIR.UIRenderDevice
function UnityEngine.UIElements.UIR.UIRenderDevice.New(initialVertexCapacity, initialIndexCapacity) end
function UnityEngine.UIElements.UIR.UIRenderDevice:Dispose() end
---@param vertexCount number
---@param indexCount number
---@param out_vertexData Unity.Collections.NativeSlice
---@param out_indexData Unity.Collections.NativeSlice
---@param out_indexOffset number
---@return UnityEngine.UIElements.UIR.MeshHandle,Unity.Collections.NativeSlice,Unity.Collections.NativeSlice,number
function UnityEngine.UIElements.UIR.UIRenderDevice:Allocate(vertexCount, indexCount, out_vertexData, out_indexData, out_indexOffset) end
---@overload fun(self: UnityEngine.UIElements.UIR.UIRenderDevice, mesh: UnityEngine.UIElements.UIR.MeshHandle, vertexCount: number, out_vertexData: Unity.Collections.NativeSlice) : Unity.Collections.NativeSlice
---@param mesh UnityEngine.UIElements.UIR.MeshHandle
---@param vertexCount number
---@param indexCount number
---@param out_vertexData Unity.Collections.NativeSlice
---@param out_indexData Unity.Collections.NativeSlice
---@param out_indexOffset number
---@return ,Unity.Collections.NativeSlice,Unity.Collections.NativeSlice,number
function UnityEngine.UIElements.UIR.UIRenderDevice:Update(mesh, vertexCount, indexCount, out_vertexData, out_indexData, out_indexOffset) end
---@param mesh UnityEngine.UIElements.UIR.MeshHandle
function UnityEngine.UIElements.UIR.UIRenderDevice:Free(mesh) end
function UnityEngine.UIElements.UIR.UIRenderDevice:OnFrameRenderingBegin() end
---@param head UnityEngine.UIElements.UIR.RenderChainCommand
---@param initialMat UnityEngine.Material
---@param defaultMat UnityEngine.Material
---@param gradientSettings UnityEngine.Texture
---@param shaderInfo UnityEngine.Texture
---@param pixelsPerPoint number
---@param transforms Unity.Collections.NativeSlice
---@param clipRects Unity.Collections.NativeSlice
---@param stateMatProps UnityEngine.MaterialPropertyBlock
---@param allowMaterialChange boolean
---@param ref_immediateException System.Exception
---@return ,System.Exception
function UnityEngine.UIElements.UIR.UIRenderDevice:EvaluateChain(head, initialMat, defaultMat, gradientSettings, shaderInfo, pixelsPerPoint, transforms, clipRects, stateMatProps, allowMaterialChange, ref_immediateException) end
function UnityEngine.UIElements.UIR.UIRenderDevice:AdvanceFrame() end

---@class UnityEngine.UIElements.UIR.UIRenderDevice.AllocToUpdate : System.ValueType
---@field id number
---@field allocTime number
---@field meshHandle UnityEngine.UIElements.UIR.MeshHandle
---@field permAllocVerts UnityEngine.UIElements.UIR.Alloc
---@field permAllocIndices UnityEngine.UIElements.UIR.Alloc
---@field permPage UnityEngine.UIElements.UIR.Page
---@field copyBackIndices boolean
UnityEngine.UIElements.UIR.UIRenderDevice.AllocToUpdate = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocToUpdate UnityEngine.UIElements.UIR.UIRenderDevice.AllocToUpdate
CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocToUpdate = UnityEngine.UIElements.UIR.UIRenderDevice.AllocToUpdate


---@class UnityEngine.UIElements.UIR.UIRenderDevice.AllocToFree : System.ValueType
---@field alloc UnityEngine.UIElements.UIR.Alloc
---@field page UnityEngine.UIElements.UIR.Page
---@field vertices boolean
UnityEngine.UIElements.UIR.UIRenderDevice.AllocToFree = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocToFree UnityEngine.UIElements.UIR.UIRenderDevice.AllocToFree
CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocToFree = UnityEngine.UIElements.UIR.UIRenderDevice.AllocToFree


---@class UnityEngine.UIElements.UIR.UIRenderDevice.DeviceToFree : System.ValueType
---@field handle number
---@field page UnityEngine.UIElements.UIR.Page
UnityEngine.UIElements.UIR.UIRenderDevice.DeviceToFree = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice.DeviceToFree UnityEngine.UIElements.UIR.UIRenderDevice.DeviceToFree
CS.UnityEngine.UIElements.UIR.UIRenderDevice.DeviceToFree = UnityEngine.UIElements.UIR.UIRenderDevice.DeviceToFree

function UnityEngine.UIElements.UIR.UIRenderDevice.DeviceToFree:Dispose() end

---@class UnityEngine.UIElements.UIR.UIRenderDevice.EvaluationState : System.ValueType
---@field stateMatProps UnityEngine.MaterialPropertyBlock
---@field defaultMat UnityEngine.Material
---@field curState UnityEngine.UIElements.UIR.State
---@field curPage UnityEngine.UIElements.UIR.Page
---@field mustApplyMaterial boolean
---@field mustApplyCommonBlock boolean
---@field mustApplyStateBlock boolean
---@field mustApplyStencil boolean
UnityEngine.UIElements.UIR.UIRenderDevice.EvaluationState = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice.EvaluationState UnityEngine.UIElements.UIR.UIRenderDevice.EvaluationState
CS.UnityEngine.UIElements.UIR.UIRenderDevice.EvaluationState = UnityEngine.UIElements.UIR.UIRenderDevice.EvaluationState


---@class UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics : System.ValueType
---@field pages UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics.PageStatistics[]
---@field freesDeferred System.Int32[]
---@field completeInit boolean
UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics
CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics = UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics


---@class UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics.PageStatistics : System.ValueType
UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics.PageStatistics = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics.PageStatistics UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics.PageStatistics
CS.UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics.PageStatistics = UnityEngine.UIElements.UIR.UIRenderDevice.AllocationStatistics.PageStatistics


---@class UnityEngine.UIElements.UIR.UIRenderDevice.DrawStatistics : System.ValueType
---@field currentFrameIndex number
---@field totalIndices number
---@field commandCount number
---@field drawCommandCount number
---@field materialSetCount number
---@field drawRangeCount number
---@field drawRangeCallCount number
---@field immediateDraws number
---@field stencilRefChanges number
UnityEngine.UIElements.UIR.UIRenderDevice.DrawStatistics = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRenderDevice.DrawStatistics UnityEngine.UIElements.UIR.UIRenderDevice.DrawStatistics
CS.UnityEngine.UIElements.UIR.UIRenderDevice.DrawStatistics = UnityEngine.UIElements.UIR.UIRenderDevice.DrawStatistics


---@class UnityEngine.UIElements.UIR.Alloc : System.ValueType
---@field start number
---@field size number
UnityEngine.UIElements.UIR.Alloc = {}
---@alias CS.UnityEngine.UIElements.UIR.Alloc UnityEngine.UIElements.UIR.Alloc
CS.UnityEngine.UIElements.UIR.Alloc = UnityEngine.UIElements.UIR.Alloc


---@class UnityEngine.UIElements.UIR.HeapStatistics : System.ValueType
---@field numAllocs number
---@field totalSize number
---@field allocatedSize number
---@field freeSize number
---@field largestAvailableBlock number
---@field availableBlocksCount number
---@field blockCount number
---@field highWatermark number
---@field fragmentation number
---@field subAllocators UnityEngine.UIElements.UIR.HeapStatistics[]
UnityEngine.UIElements.UIR.HeapStatistics = {}
---@alias CS.UnityEngine.UIElements.UIR.HeapStatistics UnityEngine.UIElements.UIR.HeapStatistics
CS.UnityEngine.UIElements.UIR.HeapStatistics = UnityEngine.UIElements.UIR.HeapStatistics


---@class UnityEngine.UIElements.UIR.BestFitAllocator : System.Object
---@field totalSize number
---@field highWatermark number
UnityEngine.UIElements.UIR.BestFitAllocator = {}
---@alias CS.UnityEngine.UIElements.UIR.BestFitAllocator UnityEngine.UIElements.UIR.BestFitAllocator
CS.UnityEngine.UIElements.UIR.BestFitAllocator = UnityEngine.UIElements.UIR.BestFitAllocator

---@param size number
---@return UnityEngine.UIElements.UIR.BestFitAllocator
function UnityEngine.UIElements.UIR.BestFitAllocator.New(size) end
---@param size number
---@return UnityEngine.UIElements.UIR.Alloc
function UnityEngine.UIElements.UIR.BestFitAllocator:Allocate(size) end
---@param alloc UnityEngine.UIElements.UIR.Alloc
function UnityEngine.UIElements.UIR.BestFitAllocator:Free(alloc) end

---@class UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool : UnityEngine.UIElements.UIR.LinkedPool
UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool = {}
---@alias CS.UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool
CS.UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool = UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool

---@return UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool
function UnityEngine.UIElements.UIR.BestFitAllocator.BlockPool.New() end

---@class UnityEngine.UIElements.UIR.BestFitAllocator.Block : UnityEngine.UIElements.UIR.LinkedPoolItem
---@field start number
---@field end number
---@field prev UnityEngine.UIElements.UIR.BestFitAllocator.Block
---@field next UnityEngine.UIElements.UIR.BestFitAllocator.Block
---@field prevAvailable UnityEngine.UIElements.UIR.BestFitAllocator.Block
---@field nextAvailable UnityEngine.UIElements.UIR.BestFitAllocator.Block
---@field allocated boolean
---@field size number
UnityEngine.UIElements.UIR.BestFitAllocator.Block = {}
---@alias CS.UnityEngine.UIElements.UIR.BestFitAllocator.Block UnityEngine.UIElements.UIR.BestFitAllocator.Block
CS.UnityEngine.UIElements.UIR.BestFitAllocator.Block = UnityEngine.UIElements.UIR.BestFitAllocator.Block

---@return UnityEngine.UIElements.UIR.BestFitAllocator.Block
function UnityEngine.UIElements.UIR.BestFitAllocator.Block.New() end

---@class UnityEngine.UIElements.UIR.GPUBufferAllocator : System.Object
---@field isEmpty boolean
UnityEngine.UIElements.UIR.GPUBufferAllocator = {}
---@alias CS.UnityEngine.UIElements.UIR.GPUBufferAllocator UnityEngine.UIElements.UIR.GPUBufferAllocator
CS.UnityEngine.UIElements.UIR.GPUBufferAllocator = UnityEngine.UIElements.UIR.GPUBufferAllocator

---@param maxSize number
---@return UnityEngine.UIElements.UIR.GPUBufferAllocator
function UnityEngine.UIElements.UIR.GPUBufferAllocator.New(maxSize) end
---@param size number
---@param shortLived boolean
---@return UnityEngine.UIElements.UIR.Alloc
function UnityEngine.UIElements.UIR.GPUBufferAllocator:Allocate(size, shortLived) end
---@param alloc UnityEngine.UIElements.UIR.Alloc
function UnityEngine.UIElements.UIR.GPUBufferAllocator:Free(alloc) end
---@return UnityEngine.UIElements.UIR.HeapStatistics
function UnityEngine.UIElements.UIR.GPUBufferAllocator:GatherStatistics() end

---@class UnityEngine.UIElements.UIR.Page : System.Object
---@field vertices UnityEngine.UIElements.UIR.Page.DataSet
---@field indices UnityEngine.UIElements.UIR.Page.DataSet
---@field next UnityEngine.UIElements.UIR.Page
---@field framesEmpty number
---@field isEmpty boolean
UnityEngine.UIElements.UIR.Page = {}
---@alias CS.UnityEngine.UIElements.UIR.Page UnityEngine.UIElements.UIR.Page
CS.UnityEngine.UIElements.UIR.Page = UnityEngine.UIElements.UIR.Page

---@param vertexMaxCount number
---@param indexMaxCount number
---@param maxQueuedFrameCount number
---@param mockPage boolean
---@return UnityEngine.UIElements.UIR.Page
function UnityEngine.UIElements.UIR.Page.New(vertexMaxCount, indexMaxCount, maxQueuedFrameCount, mockPage) end
function UnityEngine.UIElements.UIR.Page:Dispose() end

---@class UnityEngine.UIElements.UIR.Page.DataSet : System.Object
---@field gpuData UnityEngine.UIElements.UIR.Utility.GPUBuffer[T]
---@field cpuData Unity.Collections.NativeArray[T]
---@field updateRanges Unity.Collections.NativeArray
---@field allocator UnityEngine.UIElements.UIR.GPUBufferAllocator
UnityEngine.UIElements.UIR.Page.DataSet = {}
---@alias CS.UnityEngine.UIElements.UIR.Page.DataSet UnityEngine.UIElements.UIR.Page.DataSet
CS.UnityEngine.UIElements.UIR.Page.DataSet = UnityEngine.UIElements.UIR.Page.DataSet

---@param bufferType UnityEngine.UIElements.UIR.Utility.GPUBufferType
---@param totalCount number
---@param maxQueuedFrameCount number
---@param updateRangePoolSize number
---@param mockBuffer boolean
---@return UnityEngine.UIElements.UIR.Page.DataSet
function UnityEngine.UIElements.UIR.Page.DataSet.New(bufferType, totalCount, maxQueuedFrameCount, updateRangePoolSize, mockBuffer) end
---@overload fun()
---@param disposing boolean
function UnityEngine.UIElements.UIR.Page.DataSet:Dispose(disposing) end
---@param start number
---@param size number
function UnityEngine.UIElements.UIR.Page.DataSet:RegisterUpdate(start, size) end
function UnityEngine.UIElements.UIR.Page.DataSet:SendUpdates() end
function UnityEngine.UIElements.UIR.Page.DataSet:SendFullRange() end
function UnityEngine.UIElements.UIR.Page.DataSet:SendPartialRanges() end

---@class UnityEngine.UIElements.UIR.VertexFlags
---@field IsSolid UnityEngine.UIElements.UIR.VertexFlags
---@field IsText UnityEngine.UIElements.UIR.VertexFlags
---@field IsTextured UnityEngine.UIElements.UIR.VertexFlags
---@field IsDynamic UnityEngine.UIElements.UIR.VertexFlags
---@field IsSvgGradients UnityEngine.UIElements.UIR.VertexFlags
---@field IsGraphViewEdge UnityEngine.UIElements.UIR.VertexFlags
UnityEngine.UIElements.UIR.VertexFlags = {}
---@alias CS.UnityEngine.UIElements.UIR.VertexFlags UnityEngine.UIElements.UIR.VertexFlags
CS.UnityEngine.UIElements.UIR.VertexFlags = UnityEngine.UIElements.UIR.VertexFlags


---@class UnityEngine.UIElements.UIR.State : System.ValueType
---@field material UnityEngine.Material
---@field texture UnityEngine.UIElements.TextureId
---@field stencilRef number
---@field sdfScale number
UnityEngine.UIElements.UIR.State = {}
---@alias CS.UnityEngine.UIElements.UIR.State UnityEngine.UIElements.UIR.State
CS.UnityEngine.UIElements.UIR.State = UnityEngine.UIElements.UIR.State


---@class UnityEngine.UIElements.UIR.CommandType
---@field Draw UnityEngine.UIElements.UIR.CommandType
---@field ImmediateCull UnityEngine.UIElements.UIR.CommandType
---@field Immediate UnityEngine.UIElements.UIR.CommandType
---@field PushView UnityEngine.UIElements.UIR.CommandType
---@field PopView UnityEngine.UIElements.UIR.CommandType
---@field PushScissor UnityEngine.UIElements.UIR.CommandType
---@field PopScissor UnityEngine.UIElements.UIR.CommandType
---@field PushRenderTexture UnityEngine.UIElements.UIR.CommandType
---@field PopRenderTexture UnityEngine.UIElements.UIR.CommandType
---@field BlitToPreviousRT UnityEngine.UIElements.UIR.CommandType
---@field PushDefaultMaterial UnityEngine.UIElements.UIR.CommandType
---@field PopDefaultMaterial UnityEngine.UIElements.UIR.CommandType
UnityEngine.UIElements.UIR.CommandType = {}
---@alias CS.UnityEngine.UIElements.UIR.CommandType UnityEngine.UIElements.UIR.CommandType
CS.UnityEngine.UIElements.UIR.CommandType = UnityEngine.UIElements.UIR.CommandType


---@class UnityEngine.UIElements.UIR.DrawParams : System.Object
UnityEngine.UIElements.UIR.DrawParams = {}
---@alias CS.UnityEngine.UIElements.UIR.DrawParams UnityEngine.UIElements.UIR.DrawParams
CS.UnityEngine.UIElements.UIR.DrawParams = UnityEngine.UIElements.UIR.DrawParams

---@return UnityEngine.UIElements.UIR.DrawParams
function UnityEngine.UIElements.UIR.DrawParams.New() end
function UnityEngine.UIElements.UIR.DrawParams:Reset() end

---@class UnityEngine.UIElements.UIR.RenderChainCommand : UnityEngine.UIElements.UIR.LinkedPoolItem
UnityEngine.UIElements.UIR.RenderChainCommand = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderChainCommand UnityEngine.UIElements.UIR.RenderChainCommand
CS.UnityEngine.UIElements.UIR.RenderChainCommand = UnityEngine.UIElements.UIR.RenderChainCommand

---@return UnityEngine.UIElements.UIR.RenderChainCommand
function UnityEngine.UIElements.UIR.RenderChainCommand.New() end

---@class UnityEngine.UIElements.UIR.GradientSettingsAtlas : System.Object
---@field atlas UnityEngine.Texture2D
---@field MustCommit boolean
UnityEngine.UIElements.UIR.GradientSettingsAtlas = {}
---@alias CS.UnityEngine.UIElements.UIR.GradientSettingsAtlas UnityEngine.UIElements.UIR.GradientSettingsAtlas
CS.UnityEngine.UIElements.UIR.GradientSettingsAtlas = UnityEngine.UIElements.UIR.GradientSettingsAtlas

---@param length number
---@return UnityEngine.UIElements.UIR.GradientSettingsAtlas
function UnityEngine.UIElements.UIR.GradientSettingsAtlas.New(length) end
function UnityEngine.UIElements.UIR.GradientSettingsAtlas:Dispose() end
function UnityEngine.UIElements.UIR.GradientSettingsAtlas:Reset() end
---@param count number
---@return UnityEngine.UIElements.UIR.Alloc
function UnityEngine.UIElements.UIR.GradientSettingsAtlas:Add(count) end
---@param alloc UnityEngine.UIElements.UIR.Alloc
function UnityEngine.UIElements.UIR.GradientSettingsAtlas:Remove(alloc) end
---@param alloc UnityEngine.UIElements.UIR.Alloc
---@param settings UnityEngine.UIElements.GradientSettings[]
---@param remap UnityEngine.UIElements.UIR.GradientRemap
function UnityEngine.UIElements.UIR.GradientSettingsAtlas:Write(alloc, settings, remap) end
function UnityEngine.UIElements.UIR.GradientSettingsAtlas:Commit() end

---@class UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture : System.ValueType
---@field rgba UnityEngine.Color32[]
---@field width number
---@field height number
UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture = {}
---@alias CS.UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture
CS.UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture = UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture

---@param v0 number
---@param v1 number
---@param destX number
---@param destY number
function UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture:WriteRawInt2Packed(v0, v1, destX, destY) end
---@param f0 number
---@param f1 number
---@param f2 number
---@param f3 number
---@param destX number
---@param destY number
function UnityEngine.UIElements.UIR.GradientSettingsAtlas.RawTexture:WriteRawFloat4Packed(f0, f1, f2, f3, destX, destY) end

---@class UnityEngine.UIElements.UIR.JobManager : System.Object
UnityEngine.UIElements.UIR.JobManager = {}
---@alias CS.UnityEngine.UIElements.UIR.JobManager UnityEngine.UIElements.UIR.JobManager
CS.UnityEngine.UIElements.UIR.JobManager = UnityEngine.UIElements.UIR.JobManager

---@return UnityEngine.UIElements.UIR.JobManager
function UnityEngine.UIElements.UIR.JobManager.New() end
---@overload fun(self: UnityEngine.UIElements.UIR.JobManager, ref_job: UnityEngine.UIElements.UIR.NudgeJobData) : UnityEngine.UIElements.UIR.NudgeJobData
---@overload fun(self: UnityEngine.UIElements.UIR.JobManager, ref_job: UnityEngine.UIElements.UIR.ConvertMeshJobData) : UnityEngine.UIElements.UIR.ConvertMeshJobData
---@param ref_job UnityEngine.UIElements.UIR.CopyClosingMeshJobData
---@return ,UnityEngine.UIElements.UIR.CopyClosingMeshJobData
function UnityEngine.UIElements.UIR.JobManager:Add(ref_job) end
function UnityEngine.UIElements.UIR.JobManager:CompleteNudgeJobs() end
function UnityEngine.UIElements.UIR.JobManager:CompleteConvertMeshJobs() end
function UnityEngine.UIElements.UIR.JobManager:CompleteClosingMeshJobs() end
function UnityEngine.UIElements.UIR.JobManager:Dispose() end

---@class UnityEngine.UIElements.UIR.NudgeJobData : System.ValueType
---@field src System.IntPtr
---@field dst System.IntPtr
---@field count number
---@field closingSrc System.IntPtr
---@field closingDst System.IntPtr
---@field closingCount number
---@field transform UnityEngine.Matrix4x4
---@field vertsBeforeUVDisplacement number
---@field vertsAfterUVDisplacement number
UnityEngine.UIElements.UIR.NudgeJobData = {}
---@alias CS.UnityEngine.UIElements.UIR.NudgeJobData UnityEngine.UIElements.UIR.NudgeJobData
CS.UnityEngine.UIElements.UIR.NudgeJobData = UnityEngine.UIElements.UIR.NudgeJobData


---@class UnityEngine.UIElements.UIR.ConvertMeshJobData : System.ValueType
---@field vertSrc System.IntPtr
---@field vertDst System.IntPtr
---@field vertCount number
---@field transform UnityEngine.Matrix4x4
---@field transformUVs number
---@field xformClipPages UnityEngine.Color32
---@field ids UnityEngine.Color32
---@field addFlags UnityEngine.Color32
---@field opacityPage UnityEngine.Color32
---@field textCoreSettingsPage UnityEngine.Color32
---@field isText number
---@field textureId number
---@field indexSrc System.IntPtr
---@field indexDst System.IntPtr
---@field indexCount number
---@field indexOffset number
---@field flipIndices number
UnityEngine.UIElements.UIR.ConvertMeshJobData = {}
---@alias CS.UnityEngine.UIElements.UIR.ConvertMeshJobData UnityEngine.UIElements.UIR.ConvertMeshJobData
CS.UnityEngine.UIElements.UIR.ConvertMeshJobData = UnityEngine.UIElements.UIR.ConvertMeshJobData


---@class UnityEngine.UIElements.UIR.CopyClosingMeshJobData : System.ValueType
---@field vertSrc System.IntPtr
---@field vertDst System.IntPtr
---@field vertCount number
---@field indexSrc System.IntPtr
---@field indexDst System.IntPtr
---@field indexCount number
---@field indexOffset number
UnityEngine.UIElements.UIR.CopyClosingMeshJobData = {}
---@alias CS.UnityEngine.UIElements.UIR.CopyClosingMeshJobData UnityEngine.UIElements.UIR.CopyClosingMeshJobData
CS.UnityEngine.UIElements.UIR.CopyClosingMeshJobData = UnityEngine.UIElements.UIR.CopyClosingMeshJobData


---@class UnityEngine.UIElements.UIR.JobMerger : System.Object
UnityEngine.UIElements.UIR.JobMerger = {}
---@alias CS.UnityEngine.UIElements.UIR.JobMerger UnityEngine.UIElements.UIR.JobMerger
CS.UnityEngine.UIElements.UIR.JobMerger = UnityEngine.UIElements.UIR.JobMerger

---@param capacity number
---@return UnityEngine.UIElements.UIR.JobMerger
function UnityEngine.UIElements.UIR.JobMerger.New(capacity) end
---@param job Unity.Jobs.JobHandle
function UnityEngine.UIElements.UIR.JobMerger:Add(job) end
---@return Unity.Jobs.JobHandle
function UnityEngine.UIElements.UIR.JobMerger:MergeAndReset() end
function UnityEngine.UIElements.UIR.JobMerger:Dispose() end

---@class UnityEngine.UIElements.UIR.LinkedPoolItem : System.Object
UnityEngine.UIElements.UIR.LinkedPoolItem = {}
---@alias CS.UnityEngine.UIElements.UIR.LinkedPoolItem UnityEngine.UIElements.UIR.LinkedPoolItem
CS.UnityEngine.UIElements.UIR.LinkedPoolItem = UnityEngine.UIElements.UIR.LinkedPoolItem

---@return UnityEngine.UIElements.UIR.LinkedPoolItem
function UnityEngine.UIElements.UIR.LinkedPoolItem.New() end

---@class UnityEngine.UIElements.UIR.LinkedPool : System.Object
---@field Count number
UnityEngine.UIElements.UIR.LinkedPool = {}
---@alias CS.UnityEngine.UIElements.UIR.LinkedPool UnityEngine.UIElements.UIR.LinkedPool
CS.UnityEngine.UIElements.UIR.LinkedPool = UnityEngine.UIElements.UIR.LinkedPool

---@param createFunc System.Func[T]
---@param resetAction System.Action[T]
---@param limit number
---@return UnityEngine.UIElements.UIR.LinkedPool
function UnityEngine.UIElements.UIR.LinkedPool.New(createFunc, resetAction, limit) end
function UnityEngine.UIElements.UIR.LinkedPool:Clear() end
---@return T
function UnityEngine.UIElements.UIR.LinkedPool:Get() end
---@param item T
function UnityEngine.UIElements.UIR.LinkedPool:Return(item) end

---@class UnityEngine.UIElements.UIR.BasicNode : UnityEngine.UIElements.UIR.LinkedPoolItem[UnityEngine.UIElements.UIR.BasicNode[T]]
---@field next UnityEngine.UIElements.UIR.BasicNode
---@field data T
UnityEngine.UIElements.UIR.BasicNode = {}
---@alias CS.UnityEngine.UIElements.UIR.BasicNode UnityEngine.UIElements.UIR.BasicNode
CS.UnityEngine.UIElements.UIR.BasicNode = UnityEngine.UIElements.UIR.BasicNode

---@return UnityEngine.UIElements.UIR.BasicNode
function UnityEngine.UIElements.UIR.BasicNode.New() end
---@param ref_first UnityEngine.UIElements.UIR.BasicNode
---@return ,UnityEngine.UIElements.UIR.BasicNode
function UnityEngine.UIElements.UIR.BasicNode:InsertFirst(ref_first) end

---@class UnityEngine.UIElements.UIR.BasicNodePool : UnityEngine.UIElements.UIR.LinkedPool[UnityEngine.UIElements.UIR.BasicNode[T]]
UnityEngine.UIElements.UIR.BasicNodePool = {}
---@alias CS.UnityEngine.UIElements.UIR.BasicNodePool UnityEngine.UIElements.UIR.BasicNodePool
CS.UnityEngine.UIElements.UIR.BasicNodePool = UnityEngine.UIElements.UIR.BasicNodePool

---@return UnityEngine.UIElements.UIR.BasicNodePool
function UnityEngine.UIElements.UIR.BasicNodePool.New() end

---@class UnityEngine.UIElements.UIR.MeshBuilder : System.Object
UnityEngine.UIElements.UIR.MeshBuilder = {}
---@alias CS.UnityEngine.UIElements.UIR.MeshBuilder UnityEngine.UIElements.UIR.MeshBuilder
CS.UnityEngine.UIElements.UIR.MeshBuilder = UnityEngine.UIElements.UIR.MeshBuilder


---@class UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData : System.ValueType
UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData = {}
---@alias CS.UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData
CS.UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData = UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData


---@class UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator : System.MulticastDelegate
UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator = {}
---@alias CS.UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator
CS.UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator = UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator
function UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator.New(object, method) end
---@param vertexCount number
---@param indexCount number
---@param ref_allocatorData UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData
---@return UnityEngine.UIElements.MeshWriteData,UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData
function UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator:Invoke(vertexCount, indexCount, ref_allocatorData) end
---@param vertexCount number
---@param indexCount number
---@param ref_allocatorData UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData
function UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator:BeginInvoke(vertexCount, indexCount, ref_allocatorData, callback, object) end
---@param ref_allocatorData UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData
---@param result System.IAsyncResult
---@return UnityEngine.UIElements.MeshWriteData,UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData
function UnityEngine.UIElements.UIR.MeshBuilder.AllocMeshData.Allocator:EndInvoke(ref_allocatorData, result) end

---@class UnityEngine.UIElements.UIR.NativePagedList : System.Object
UnityEngine.UIElements.UIR.NativePagedList = {}
---@alias CS.UnityEngine.UIElements.UIR.NativePagedList UnityEngine.UIElements.UIR.NativePagedList
CS.UnityEngine.UIElements.UIR.NativePagedList = UnityEngine.UIElements.UIR.NativePagedList

---@param poolCapacity number
---@return UnityEngine.UIElements.UIR.NativePagedList
function UnityEngine.UIElements.UIR.NativePagedList.New(poolCapacity) end
---@overload fun(self: UnityEngine.UIElements.UIR.NativePagedList, ref_data: T) : T
---@param data T
function UnityEngine.UIElements.UIR.NativePagedList:Add(data) end
---@return System.Collections.Generic.List[Unity.Collections.NativeSlice[T]]
function UnityEngine.UIElements.UIR.NativePagedList:GetPages() end
function UnityEngine.UIElements.UIR.NativePagedList:Reset() end
function UnityEngine.UIElements.UIR.NativePagedList:Dispose() end

---@class UnityEngine.UIElements.UIR.OpacityIdAccelerator : System.Object
UnityEngine.UIElements.UIR.OpacityIdAccelerator = {}
---@alias CS.UnityEngine.UIElements.UIR.OpacityIdAccelerator UnityEngine.UIElements.UIR.OpacityIdAccelerator
CS.UnityEngine.UIElements.UIR.OpacityIdAccelerator = UnityEngine.UIElements.UIR.OpacityIdAccelerator

---@return UnityEngine.UIElements.UIR.OpacityIdAccelerator
function UnityEngine.UIElements.UIR.OpacityIdAccelerator.New() end
---@param oldVerts Unity.Collections.NativeSlice
---@param newVerts Unity.Collections.NativeSlice
---@param opacityData UnityEngine.Color32
---@param vertexCount number
function UnityEngine.UIElements.UIR.OpacityIdAccelerator:CreateJob(oldVerts, newVerts, opacityData, vertexCount) end
function UnityEngine.UIElements.UIR.OpacityIdAccelerator:CompleteJobs() end
function UnityEngine.UIElements.UIR.OpacityIdAccelerator:Dispose() end

---@class UnityEngine.UIElements.UIR.OpacityIdAccelerator.OpacityIdUpdateJob : System.ValueType
---@field oldVerts Unity.Collections.NativeSlice
---@field newVerts Unity.Collections.NativeSlice
---@field opacityData UnityEngine.Color32
UnityEngine.UIElements.UIR.OpacityIdAccelerator.OpacityIdUpdateJob = {}
---@alias CS.UnityEngine.UIElements.UIR.OpacityIdAccelerator.OpacityIdUpdateJob UnityEngine.UIElements.UIR.OpacityIdAccelerator.OpacityIdUpdateJob
CS.UnityEngine.UIElements.UIR.OpacityIdAccelerator.OpacityIdUpdateJob = UnityEngine.UIElements.UIR.OpacityIdAccelerator.OpacityIdUpdateJob

---@param i number
function UnityEngine.UIElements.UIR.OpacityIdAccelerator.OpacityIdUpdateJob:Execute(i) end

---@class UnityEngine.UIElements.UIR.ChainBuilderStats : System.ValueType
---@field elementsAdded number
---@field elementsRemoved number
---@field recursiveClipUpdates number
---@field recursiveClipUpdatesExpanded number
---@field nonRecursiveClipUpdates number
---@field recursiveTransformUpdates number
---@field recursiveTransformUpdatesExpanded number
---@field recursiveOpacityUpdates number
---@field recursiveOpacityUpdatesExpanded number
---@field opacityIdUpdates number
---@field colorUpdates number
---@field colorUpdatesExpanded number
---@field recursiveVisualUpdates number
---@field recursiveVisualUpdatesExpanded number
---@field nonRecursiveVisualUpdates number
---@field dirtyProcessed number
---@field nudgeTransformed number
---@field boneTransformed number
---@field skipTransformed number
---@field visualUpdateTransformed number
---@field updatedMeshAllocations number
---@field newMeshAllocations number
---@field groupTransformElementsChanged number
---@field immedateRenderersActive number
UnityEngine.UIElements.UIR.ChainBuilderStats = {}
---@alias CS.UnityEngine.UIElements.UIR.ChainBuilderStats UnityEngine.UIElements.UIR.ChainBuilderStats
CS.UnityEngine.UIElements.UIR.ChainBuilderStats = UnityEngine.UIElements.UIR.ChainBuilderStats


---@class UnityEngine.UIElements.UIR.RenderChain : System.Object
---@field opacityIdAccelerator UnityEngine.UIElements.UIR.OpacityIdAccelerator
UnityEngine.UIElements.UIR.RenderChain = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderChain UnityEngine.UIElements.UIR.RenderChain
CS.UnityEngine.UIElements.UIR.RenderChain = UnityEngine.UIElements.UIR.RenderChain

---@param panel UnityEngine.UIElements.BaseVisualElementPanel
---@return UnityEngine.UIElements.UIR.RenderChain
function UnityEngine.UIElements.UIR.RenderChain.New(panel) end
function UnityEngine.UIElements.UIR.RenderChain:Dispose() end
function UnityEngine.UIElements.UIR.RenderChain:ProcessChanges() end
function UnityEngine.UIElements.UIR.RenderChain:Render() end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.RenderChain:UIEOnChildAdded(ve) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.RenderChain:UIEOnChildrenReordered(ve) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.RenderChain:UIEOnChildRemoving(ve) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.RenderChain:UIEOnRenderHintsChanged(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@param hierarchical boolean
function UnityEngine.UIElements.UIR.RenderChain:UIEOnClippingChanged(ve, hierarchical) end
---@param ve UnityEngine.UIElements.VisualElement
---@param hierarchical boolean
function UnityEngine.UIElements.UIR.RenderChain:UIEOnOpacityChanged(ve, hierarchical) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.RenderChain:UIEOnColorChanged(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@param transformChanged boolean
---@param clipRectSizeChanged boolean
function UnityEngine.UIElements.UIR.RenderChain:UIEOnTransformOrSizeChanged(ve, transformChanged, clipRectSizeChanged) end
---@param ve UnityEngine.UIElements.VisualElement
---@param hierarchical boolean
function UnityEngine.UIElements.UIR.RenderChain:UIEOnVisualsChanged(ve, hierarchical) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.RenderChain:UIEOnOpacityIdChanged(ve) end
---@param ve UnityEngine.UIElements.VisualElement
---@param src UnityEngine.Texture
---@param id UnityEngine.UIElements.TextureId
---@param isAtlas boolean
function UnityEngine.UIElements.UIR.RenderChain:InsertTexture(ve, src, id, isAtlas) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.RenderChain:ResetTextures(ve) end

---@class UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking : System.ValueType
---@field heads System.Collections.Generic.List
---@field tails System.Collections.Generic.List
---@field minDepths System.Int32[]
---@field maxDepths System.Int32[]
---@field dirtyID number
UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking
CS.UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking = UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking

---@param maxDepth number
function UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking:EnsureFits(maxDepth) end
---@param ve UnityEngine.UIElements.VisualElement
---@param dirtyTypes UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@param dirtyTypeClass UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
function UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking:RegisterDirty(ve, dirtyTypes, dirtyTypeClass) end
---@param ve UnityEngine.UIElements.VisualElement
---@param dirtyTypesInverse UnityEngine.UIElements.UIR.RenderDataDirtyTypes
function UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking:ClearDirty(ve, dirtyTypesInverse) end
function UnityEngine.UIElements.UIR.RenderChain.DepthOrderedDirtyTracking:Reset() end

---@class UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator : System.ValueType
UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator
CS.UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator = UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator

---@param renderChain UnityEngine.UIElements.UIR.RenderChain
---@return number
function UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator.AllocateIndex(renderChain) end
---@param index number
function UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator.FreeIndex(index) end
---@param index number
---@return UnityEngine.UIElements.UIR.RenderChain
function UnityEngine.UIElements.UIR.RenderChain.RenderChainStaticIndexAllocator.AccessIndex(index) end

---@class UnityEngine.UIElements.UIR.RenderChain.RenderNodeData : System.ValueType
---@field standardMaterial UnityEngine.Material
---@field initialMaterial UnityEngine.Material
---@field matPropBlock UnityEngine.MaterialPropertyBlock
---@field firstCommand UnityEngine.UIElements.UIR.RenderChainCommand
---@field device UnityEngine.UIElements.UIR.UIRenderDevice
---@field vectorAtlas UnityEngine.Texture
---@field shaderInfoAtlas UnityEngine.Texture
---@field dpiScale number
---@field transformConstants Unity.Collections.NativeSlice
---@field clipRectConstants Unity.Collections.NativeSlice
UnityEngine.UIElements.UIR.RenderChain.RenderNodeData = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderChain.RenderNodeData UnityEngine.UIElements.UIR.RenderChain.RenderNodeData
CS.UnityEngine.UIElements.UIR.RenderChain.RenderNodeData = UnityEngine.UIElements.UIR.RenderChain.RenderNodeData


---@class UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field None UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field Transform UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field ClipRectSize UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field Clipping UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field ClippingHierarchy UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field Visuals UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field VisualsHierarchy UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field VisualsOpacityId UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field Opacity UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field OpacityHierarchy UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field Color UnityEngine.UIElements.UIR.RenderDataDirtyTypes
---@field AllVisuals UnityEngine.UIElements.UIR.RenderDataDirtyTypes
UnityEngine.UIElements.UIR.RenderDataDirtyTypes = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderDataDirtyTypes UnityEngine.UIElements.UIR.RenderDataDirtyTypes
CS.UnityEngine.UIElements.UIR.RenderDataDirtyTypes = UnityEngine.UIElements.UIR.RenderDataDirtyTypes


---@class UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
---@field Clipping UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
---@field Opacity UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
---@field Color UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
---@field TransformSize UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
---@field Visuals UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
---@field Count UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses
CS.UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses = UnityEngine.UIElements.UIR.RenderDataDirtyTypeClasses


---@class UnityEngine.UIElements.UIR.RenderDataFlags
---@field IsIgnoringDynamicColorHint UnityEngine.UIElements.UIR.RenderDataFlags
UnityEngine.UIElements.UIR.RenderDataFlags = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderDataFlags UnityEngine.UIElements.UIR.RenderDataFlags
CS.UnityEngine.UIElements.UIR.RenderDataFlags = UnityEngine.UIElements.UIR.RenderDataFlags


---@class UnityEngine.UIElements.UIR.RenderChainVEData : System.ValueType
---@field worldTransformScaleZero boolean
---@field isIgnoringDynamicColorHint boolean
UnityEngine.UIElements.UIR.RenderChainVEData = {}
---@alias CS.UnityEngine.UIElements.UIR.RenderChainVEData UnityEngine.UIElements.UIR.RenderChainVEData
CS.UnityEngine.UIElements.UIR.RenderChainVEData = UnityEngine.UIElements.UIR.RenderChainVEData


---@class UnityEngine.UIElements.UIR.TextureEntry : System.ValueType
---@field source UnityEngine.Texture
---@field actual UnityEngine.UIElements.TextureId
---@field replaced boolean
UnityEngine.UIElements.UIR.TextureEntry = {}
---@alias CS.UnityEngine.UIElements.UIR.TextureEntry UnityEngine.UIElements.UIR.TextureEntry
CS.UnityEngine.UIElements.UIR.TextureEntry = UnityEngine.UIElements.UIR.TextureEntry


---@class UnityEngine.UIElements.UIR.BaseShaderInfoStorage : System.Object
---@field texture UnityEngine.Texture2D
UnityEngine.UIElements.UIR.BaseShaderInfoStorage = {}
---@alias CS.UnityEngine.UIElements.UIR.BaseShaderInfoStorage UnityEngine.UIElements.UIR.BaseShaderInfoStorage
CS.UnityEngine.UIElements.UIR.BaseShaderInfoStorage = UnityEngine.UIElements.UIR.BaseShaderInfoStorage

---@param width number
---@param height number
---@param out_uvs UnityEngine.RectInt
---@return boolean,UnityEngine.RectInt
function UnityEngine.UIElements.UIR.BaseShaderInfoStorage:AllocateRect(width, height, out_uvs) end
---@param x number
---@param y number
---@param color UnityEngine.Color
function UnityEngine.UIElements.UIR.BaseShaderInfoStorage:SetTexel(x, y, color) end
function UnityEngine.UIElements.UIR.BaseShaderInfoStorage:UpdateTexture() end
function UnityEngine.UIElements.UIR.BaseShaderInfoStorage:Dispose() end

---@class UnityEngine.UIElements.UIR.ShaderInfoStorage : UnityEngine.UIElements.UIR.BaseShaderInfoStorage
---@field texture UnityEngine.Texture2D
UnityEngine.UIElements.UIR.ShaderInfoStorage = {}
---@alias CS.UnityEngine.UIElements.UIR.ShaderInfoStorage UnityEngine.UIElements.UIR.ShaderInfoStorage
CS.UnityEngine.UIElements.UIR.ShaderInfoStorage = UnityEngine.UIElements.UIR.ShaderInfoStorage

---@param format UnityEngine.TextureFormat
---@param convert System.Func[UnityEngine.Color,T]
---@param initialSize number
---@param maxSize number
---@return UnityEngine.UIElements.UIR.ShaderInfoStorage
function UnityEngine.UIElements.UIR.ShaderInfoStorage.New(format, convert, initialSize, maxSize) end
---@param width number
---@param height number
---@param out_uvs UnityEngine.RectInt
---@return boolean,UnityEngine.RectInt
function UnityEngine.UIElements.UIR.ShaderInfoStorage:AllocateRect(width, height, out_uvs) end
---@param x number
---@param y number
---@param color UnityEngine.Color
function UnityEngine.UIElements.UIR.ShaderInfoStorage:SetTexel(x, y, color) end
function UnityEngine.UIElements.UIR.ShaderInfoStorage:UpdateTexture() end

---@class UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32 : UnityEngine.UIElements.UIR.ShaderInfoStorage
UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32 = {}
---@alias CS.UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32 UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32
CS.UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32 = UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32

---@param initialSize number
---@param maxSize number
---@return UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32
function UnityEngine.UIElements.UIR.ShaderInfoStorageRGBA32.New(initialSize, maxSize) end

---@class UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat : UnityEngine.UIElements.UIR.ShaderInfoStorage
UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat = {}
---@alias CS.UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat
CS.UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat = UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat

---@param initialSize number
---@param maxSize number
---@return UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat
function UnityEngine.UIElements.UIR.ShaderInfoStorageRGBAFloat.New(initialSize, maxSize) end

---@class UnityEngine.UIElements.UIR.Shaders : System.Object
---@field k_AtlasBlit string
---@field k_Editor string
---@field k_Runtime string
---@field k_RuntimeWorld string
---@field k_GraphView string
---@field k_ColorConversionBlit string
UnityEngine.UIElements.UIR.Shaders = {}
---@alias CS.UnityEngine.UIElements.UIR.Shaders UnityEngine.UIElements.UIR.Shaders
CS.UnityEngine.UIElements.UIR.Shaders = UnityEngine.UIElements.UIR.Shaders


---@class UnityEngine.UIElements.UIR.TempAllocator : System.Object
UnityEngine.UIElements.UIR.TempAllocator = {}
---@alias CS.UnityEngine.UIElements.UIR.TempAllocator UnityEngine.UIElements.UIR.TempAllocator
CS.UnityEngine.UIElements.UIR.TempAllocator = UnityEngine.UIElements.UIR.TempAllocator

---@param poolCapacity number
---@param excessMinCapacity number
---@param excessMaxCapacity number
---@return UnityEngine.UIElements.UIR.TempAllocator
function UnityEngine.UIElements.UIR.TempAllocator.New(poolCapacity, excessMinCapacity, excessMaxCapacity) end
function UnityEngine.UIElements.UIR.TempAllocator:Dispose() end
---@param count number
---@return Unity.Collections.NativeSlice[T]
function UnityEngine.UIElements.UIR.TempAllocator:Alloc(count) end
function UnityEngine.UIElements.UIR.TempAllocator:Reset() end
---@return UnityEngine.UIElements.UIR.TempAllocator.Statistics[T]
function UnityEngine.UIElements.UIR.TempAllocator:GatherStatistics() end

---@class UnityEngine.UIElements.UIR.TempAllocator.Page : System.ValueType
---@field array Unity.Collections.NativeArray[T]
---@field used number
UnityEngine.UIElements.UIR.TempAllocator.Page = {}
---@alias CS.UnityEngine.UIElements.UIR.TempAllocator.Page UnityEngine.UIElements.UIR.TempAllocator.Page
CS.UnityEngine.UIElements.UIR.TempAllocator.Page = UnityEngine.UIElements.UIR.TempAllocator.Page


---@class UnityEngine.UIElements.UIR.TempAllocator.Statistics : System.ValueType
---@field pool UnityEngine.UIElements.UIR.TempAllocator.PageStatistics[T]
---@field excess UnityEngine.UIElements.UIR.TempAllocator.PageStatistics[T][]
UnityEngine.UIElements.UIR.TempAllocator.Statistics = {}
---@alias CS.UnityEngine.UIElements.UIR.TempAllocator.Statistics UnityEngine.UIElements.UIR.TempAllocator.Statistics
CS.UnityEngine.UIElements.UIR.TempAllocator.Statistics = UnityEngine.UIElements.UIR.TempAllocator.Statistics


---@class UnityEngine.UIElements.UIR.TempAllocator.PageStatistics : System.ValueType
---@field size number
---@field used number
UnityEngine.UIElements.UIR.TempAllocator.PageStatistics = {}
---@alias CS.UnityEngine.UIElements.UIR.TempAllocator.PageStatistics UnityEngine.UIElements.UIR.TempAllocator.PageStatistics
CS.UnityEngine.UIElements.UIR.TempAllocator.PageStatistics = UnityEngine.UIElements.UIR.TempAllocator.PageStatistics


---@class UnityEngine.UIElements.UIR.TextCoreSettings : System.ValueType
---@field faceColor UnityEngine.Color
---@field outlineColor UnityEngine.Color
---@field outlineWidth number
---@field underlayColor UnityEngine.Color
---@field underlayOffset UnityEngine.Vector2
---@field underlaySoftness number
UnityEngine.UIElements.UIR.TextCoreSettings = {}
---@alias CS.UnityEngine.UIElements.UIR.TextCoreSettings UnityEngine.UIElements.UIR.TextCoreSettings
CS.UnityEngine.UIElements.UIR.TextCoreSettings = UnityEngine.UIElements.UIR.TextCoreSettings

---@overload fun(self: UnityEngine.UIElements.UIR.TextCoreSettings, obj: System.Object) : boolean
---@param other UnityEngine.UIElements.UIR.TextCoreSettings
---@return boolean
function UnityEngine.UIElements.UIR.TextCoreSettings:Equals(other) end
---@return number
function UnityEngine.UIElements.UIR.TextCoreSettings:GetHashCode() end

---@class UnityEngine.UIElements.UIR.TextureBlitter : System.Object
---@field queueLength number
UnityEngine.UIElements.UIR.TextureBlitter = {}
---@alias CS.UnityEngine.UIElements.UIR.TextureBlitter UnityEngine.UIElements.UIR.TextureBlitter
CS.UnityEngine.UIElements.UIR.TextureBlitter = UnityEngine.UIElements.UIR.TextureBlitter

---@param capacity number
---@return UnityEngine.UIElements.UIR.TextureBlitter
function UnityEngine.UIElements.UIR.TextureBlitter.New(capacity) end
function UnityEngine.UIElements.UIR.TextureBlitter:Dispose() end
---@param src UnityEngine.Texture
---@param srcRect UnityEngine.RectInt
---@param dstPos UnityEngine.Vector2Int
---@param addBorder boolean
---@param tint UnityEngine.Color
function UnityEngine.UIElements.UIR.TextureBlitter:QueueBlit(src, srcRect, dstPos, addBorder, tint) end
---@param dst UnityEngine.RenderTexture
---@param src UnityEngine.Texture
---@param srcRect UnityEngine.RectInt
---@param dstPos UnityEngine.Vector2Int
---@param addBorder boolean
---@param tint UnityEngine.Color
function UnityEngine.UIElements.UIR.TextureBlitter:BlitOneNow(dst, src, srcRect, dstPos, addBorder, tint) end
---@param dst UnityEngine.RenderTexture
function UnityEngine.UIElements.UIR.TextureBlitter:Commit(dst) end
function UnityEngine.UIElements.UIR.TextureBlitter:Reset() end

---@class UnityEngine.UIElements.UIR.TextureBlitter.BlitInfo : System.ValueType
---@field src UnityEngine.Texture
---@field srcRect UnityEngine.RectInt
---@field dstPos UnityEngine.Vector2Int
---@field border number
---@field tint UnityEngine.Color
UnityEngine.UIElements.UIR.TextureBlitter.BlitInfo = {}
---@alias CS.UnityEngine.UIElements.UIR.TextureBlitter.BlitInfo UnityEngine.UIElements.UIR.TextureBlitter.BlitInfo
CS.UnityEngine.UIElements.UIR.TextureBlitter.BlitInfo = UnityEngine.UIElements.UIR.TextureBlitter.BlitInfo


---@class UnityEngine.UIElements.UIR.TextureSlotManager : System.Object
---@field FreeSlots number
UnityEngine.UIElements.UIR.TextureSlotManager = {}
---@alias CS.UnityEngine.UIElements.UIR.TextureSlotManager UnityEngine.UIElements.UIR.TextureSlotManager
CS.UnityEngine.UIElements.UIR.TextureSlotManager = UnityEngine.UIElements.UIR.TextureSlotManager

---@return UnityEngine.UIElements.UIR.TextureSlotManager
function UnityEngine.UIElements.UIR.TextureSlotManager.New() end
function UnityEngine.UIElements.UIR.TextureSlotManager:Reset() end
function UnityEngine.UIElements.UIR.TextureSlotManager:StartNewBatch() end
---@param id UnityEngine.UIElements.TextureId
---@return number
function UnityEngine.UIElements.UIR.TextureSlotManager:IndexOf(id) end
---@param slotIndex number
function UnityEngine.UIElements.UIR.TextureSlotManager:MarkUsed(slotIndex) end
---@return number
function UnityEngine.UIElements.UIR.TextureSlotManager:FindOldestSlot() end
---@param id UnityEngine.UIElements.TextureId
---@param sdfScale number
---@param slot number
---@param mat UnityEngine.MaterialPropertyBlock
function UnityEngine.UIElements.UIR.TextureSlotManager:Bind(id, sdfScale, slot, mat) end
---@param slotIndex number
---@param id UnityEngine.UIElements.TextureId
---@param textureWidth number
---@param textureHeight number
---@param sdfScale number
function UnityEngine.UIElements.UIR.TextureSlotManager:SetGpuData(slotIndex, id, textureWidth, textureHeight, sdfScale) end

---@class UnityEngine.UIElements.UIR.VectorImageRenderInfoPool : UnityEngine.UIElements.UIR.LinkedPool
UnityEngine.UIElements.UIR.VectorImageRenderInfoPool = {}
---@alias CS.UnityEngine.UIElements.UIR.VectorImageRenderInfoPool UnityEngine.UIElements.UIR.VectorImageRenderInfoPool
CS.UnityEngine.UIElements.UIR.VectorImageRenderInfoPool = UnityEngine.UIElements.UIR.VectorImageRenderInfoPool

---@return UnityEngine.UIElements.UIR.VectorImageRenderInfoPool
function UnityEngine.UIElements.UIR.VectorImageRenderInfoPool.New() end

---@class UnityEngine.UIElements.UIR.VectorImageRenderInfo : UnityEngine.UIElements.UIR.LinkedPoolItem
---@field useCount number
---@field firstGradientRemap UnityEngine.UIElements.UIR.GradientRemap
---@field gradientSettingsAlloc UnityEngine.UIElements.UIR.Alloc
UnityEngine.UIElements.UIR.VectorImageRenderInfo = {}
---@alias CS.UnityEngine.UIElements.UIR.VectorImageRenderInfo UnityEngine.UIElements.UIR.VectorImageRenderInfo
CS.UnityEngine.UIElements.UIR.VectorImageRenderInfo = UnityEngine.UIElements.UIR.VectorImageRenderInfo

---@return UnityEngine.UIElements.UIR.VectorImageRenderInfo
function UnityEngine.UIElements.UIR.VectorImageRenderInfo.New() end
function UnityEngine.UIElements.UIR.VectorImageRenderInfo:Reset() end

---@class UnityEngine.UIElements.UIR.GradientRemapPool : UnityEngine.UIElements.UIR.LinkedPool
UnityEngine.UIElements.UIR.GradientRemapPool = {}
---@alias CS.UnityEngine.UIElements.UIR.GradientRemapPool UnityEngine.UIElements.UIR.GradientRemapPool
CS.UnityEngine.UIElements.UIR.GradientRemapPool = UnityEngine.UIElements.UIR.GradientRemapPool

---@return UnityEngine.UIElements.UIR.GradientRemapPool
function UnityEngine.UIElements.UIR.GradientRemapPool.New() end

---@class UnityEngine.UIElements.UIR.GradientRemap : UnityEngine.UIElements.UIR.LinkedPoolItem
---@field origIndex number
---@field destIndex number
---@field location UnityEngine.RectInt
---@field next UnityEngine.UIElements.UIR.GradientRemap
---@field atlas UnityEngine.UIElements.TextureId
UnityEngine.UIElements.UIR.GradientRemap = {}
---@alias CS.UnityEngine.UIElements.UIR.GradientRemap UnityEngine.UIElements.UIR.GradientRemap
CS.UnityEngine.UIElements.UIR.GradientRemap = UnityEngine.UIElements.UIR.GradientRemap

---@return UnityEngine.UIElements.UIR.GradientRemap
function UnityEngine.UIElements.UIR.GradientRemap.New() end
function UnityEngine.UIElements.UIR.GradientRemap:Reset() end

---@class UnityEngine.UIElements.UIR.VectorImageManager : System.Object
---@field instances System.Collections.Generic.List
---@field atlas UnityEngine.Texture2D
UnityEngine.UIElements.UIR.VectorImageManager = {}
---@alias CS.UnityEngine.UIElements.UIR.VectorImageManager UnityEngine.UIElements.UIR.VectorImageManager
CS.UnityEngine.UIElements.UIR.VectorImageManager = UnityEngine.UIElements.UIR.VectorImageManager

---@param atlas UnityEngine.UIElements.AtlasBase
---@return UnityEngine.UIElements.UIR.VectorImageManager
function UnityEngine.UIElements.UIR.VectorImageManager.New(atlas) end
function UnityEngine.UIElements.UIR.VectorImageManager:Dispose() end
function UnityEngine.UIElements.UIR.VectorImageManager:Reset() end
function UnityEngine.UIElements.UIR.VectorImageManager:Commit() end
---@param vi UnityEngine.UIElements.VectorImage
---@param context UnityEngine.UIElements.VisualElement
---@return UnityEngine.UIElements.UIR.GradientRemap
function UnityEngine.UIElements.UIR.VectorImageManager:AddUser(vi, context) end
---@param vi UnityEngine.UIElements.VectorImage
function UnityEngine.UIElements.UIR.VectorImageManager:RemoveUser(vi) end

---@class UnityEngine.UIElements.UIR.OwnedState
---@field Inherited UnityEngine.UIElements.UIR.OwnedState
---@field Owned UnityEngine.UIElements.UIR.OwnedState
UnityEngine.UIElements.UIR.OwnedState = {}
---@alias CS.UnityEngine.UIElements.UIR.OwnedState UnityEngine.UIElements.UIR.OwnedState
CS.UnityEngine.UIElements.UIR.OwnedState = UnityEngine.UIElements.UIR.OwnedState


---@class UnityEngine.UIElements.UIR.BMPAlloc : System.ValueType
---@field Invalid UnityEngine.UIElements.UIR.BMPAlloc
---@field page number
---@field pageLine number
---@field bitIndex number
---@field ownedState UnityEngine.UIElements.UIR.OwnedState
UnityEngine.UIElements.UIR.BMPAlloc = {}
---@alias CS.UnityEngine.UIElements.UIR.BMPAlloc UnityEngine.UIElements.UIR.BMPAlloc
CS.UnityEngine.UIElements.UIR.BMPAlloc = UnityEngine.UIElements.UIR.BMPAlloc

---@param other UnityEngine.UIElements.UIR.BMPAlloc
---@return boolean
function UnityEngine.UIElements.UIR.BMPAlloc:Equals(other) end
---@return boolean
function UnityEngine.UIElements.UIR.BMPAlloc:IsValid() end
---@return string
function UnityEngine.UIElements.UIR.BMPAlloc:ToString() end

---@class UnityEngine.UIElements.UIR.BitmapAllocator32 : System.ValueType
---@field kPageWidth number
---@field entryWidth number
---@field entryHeight number
UnityEngine.UIElements.UIR.BitmapAllocator32 = {}
---@alias CS.UnityEngine.UIElements.UIR.BitmapAllocator32 UnityEngine.UIElements.UIR.BitmapAllocator32
CS.UnityEngine.UIElements.UIR.BitmapAllocator32 = UnityEngine.UIElements.UIR.BitmapAllocator32

---@param pageHeight number
---@param entryWidth number
---@param entryHeight number
function UnityEngine.UIElements.UIR.BitmapAllocator32:Construct(pageHeight, entryWidth, entryHeight) end
---@param firstPageX number
---@param firstPageY number
function UnityEngine.UIElements.UIR.BitmapAllocator32:ForceFirstAlloc(firstPageX, firstPageY) end
---@param storage UnityEngine.UIElements.UIR.BaseShaderInfoStorage
---@return UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.BitmapAllocator32:Allocate(storage) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.BitmapAllocator32:Free(alloc) end

---@class UnityEngine.UIElements.UIR.BitmapAllocator32.Page : System.ValueType
---@field x number
---@field y number
---@field freeSlots number
UnityEngine.UIElements.UIR.BitmapAllocator32.Page = {}
---@alias CS.UnityEngine.UIElements.UIR.BitmapAllocator32.Page UnityEngine.UIElements.UIR.BitmapAllocator32.Page
CS.UnityEngine.UIElements.UIR.BitmapAllocator32.Page = UnityEngine.UIElements.UIR.BitmapAllocator32.Page


---@class UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator : System.ValueType
---@field identityTransform UnityEngine.UIElements.UIR.BMPAlloc
---@field infiniteClipRect UnityEngine.UIElements.UIR.BMPAlloc
---@field fullOpacity UnityEngine.UIElements.UIR.BMPAlloc
---@field clearColor UnityEngine.UIElements.UIR.BMPAlloc
---@field defaultTextCoreSettings UnityEngine.UIElements.UIR.BMPAlloc
---@field transformConstants Unity.Collections.NativeSlice
---@field clipRectConstants Unity.Collections.NativeSlice
---@field atlas UnityEngine.Texture
---@field internalAtlasCreated boolean
UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator = {}
---@alias CS.UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator
CS.UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator = UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator

function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:Construct() end
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:Dispose() end
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:IssuePendingStorageChanges() end
---@return UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:AllocTransform() end
---@return UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:AllocClipRect() end
---@return UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:AllocOpacity() end
---@return UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:AllocColor() end
---@param settings UnityEngine.UIElements.UIR.TextCoreSettings
---@return UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:AllocTextCoreSettings(settings) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@param xform UnityEngine.Matrix4x4
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:SetTransformValue(alloc, xform) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@param clipRect UnityEngine.Vector4
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:SetClipRectValue(alloc, clipRect) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@param opacity number
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:SetOpacityValue(alloc, opacity) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@param color UnityEngine.Color
---@param isEditorContext boolean
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:SetColorValue(alloc, color, isEditorContext) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@param settings UnityEngine.UIElements.UIR.TextCoreSettings
---@param isEditorContext boolean
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:SetTextCoreSettingValue(alloc, settings, isEditorContext) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:FreeTransform(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:FreeClipRect(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:FreeOpacity(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:FreeColor(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:FreeTextCoreSettings(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@return UnityEngine.Color32
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:TransformAllocToVertexData(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@return UnityEngine.Color32
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:ClipRectAllocToVertexData(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@return UnityEngine.Color32
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:OpacityAllocToVertexData(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@return UnityEngine.Color32
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:ColorAllocToVertexData(alloc) end
---@param alloc UnityEngine.UIElements.UIR.BMPAlloc
---@return UnityEngine.Color32
function UnityEngine.UIElements.UIR.UIRVEShaderInfoAllocator:TextCoreSettingsToVertexData(alloc) end

---@class UnityEngine.UIElements.UIR.Implementation.CommandGenerator : System.Object
UnityEngine.UIElements.UIR.Implementation.CommandGenerator = {}
---@alias CS.UnityEngine.UIElements.UIR.Implementation.CommandGenerator UnityEngine.UIElements.UIR.Implementation.CommandGenerator
CS.UnityEngine.UIElements.UIR.Implementation.CommandGenerator = UnityEngine.UIElements.UIR.Implementation.CommandGenerator

---@param renderChain UnityEngine.UIElements.UIR.RenderChain
---@param ve UnityEngine.UIElements.VisualElement
---@param ref_stats UnityEngine.UIElements.UIR.ChainBuilderStats
---@return UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo,UnityEngine.UIElements.UIR.ChainBuilderStats
function UnityEngine.UIElements.UIR.Implementation.CommandGenerator.PaintElement(renderChain, ve, ref_stats) end
---@param ve UnityEngine.UIElements.VisualElement
---@param closingInfo UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo
---@param renderChain UnityEngine.UIElements.UIR.RenderChain
---@param ref_stats UnityEngine.UIElements.UIR.ChainBuilderStats
---@return ,UnityEngine.UIElements.UIR.ChainBuilderStats
function UnityEngine.UIElements.UIR.Implementation.CommandGenerator.ClosePaintElement(ve, closingInfo, renderChain, ref_stats) end
---@param ve UnityEngine.UIElements.VisualElement
---@param renderChain UnityEngine.UIElements.UIR.RenderChain
function UnityEngine.UIElements.UIR.Implementation.CommandGenerator.UpdateOpacityId(ve, renderChain) end
---@param ve UnityEngine.UIElements.VisualElement
---@param renderChain UnityEngine.UIElements.UIR.RenderChain
---@param device UnityEngine.UIElements.UIR.UIRenderDevice
---@return boolean
function UnityEngine.UIElements.UIR.Implementation.CommandGenerator.NudgeVerticesToNewSpace(ve, renderChain, device) end
---@param renderChain UnityEngine.UIElements.UIR.RenderChain
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.Implementation.CommandGenerator.ResetCommands(renderChain, ve) end

---@class UnityEngine.UIElements.UIR.Implementation.ClipMethod
---@field Undetermined UnityEngine.UIElements.UIR.Implementation.ClipMethod
---@field NotClipped UnityEngine.UIElements.UIR.Implementation.ClipMethod
---@field Scissor UnityEngine.UIElements.UIR.Implementation.ClipMethod
---@field ShaderDiscard UnityEngine.UIElements.UIR.Implementation.ClipMethod
---@field Stencil UnityEngine.UIElements.UIR.Implementation.ClipMethod
UnityEngine.UIElements.UIR.Implementation.ClipMethod = {}
---@alias CS.UnityEngine.UIElements.UIR.Implementation.ClipMethod UnityEngine.UIElements.UIR.Implementation.ClipMethod
CS.UnityEngine.UIElements.UIR.Implementation.ClipMethod = UnityEngine.UIElements.UIR.Implementation.ClipMethod


---@class UnityEngine.UIElements.UIR.Implementation.RenderEvents : System.Object
UnityEngine.UIElements.UIR.Implementation.RenderEvents = {}
---@alias CS.UnityEngine.UIElements.UIR.Implementation.RenderEvents UnityEngine.UIElements.UIR.Implementation.RenderEvents
CS.UnityEngine.UIElements.UIR.Implementation.RenderEvents = UnityEngine.UIElements.UIR.Implementation.RenderEvents


---@class UnityEngine.UIElements.UIR.Implementation.UIRStylePainter : System.Object
---@field meshGenerationContext UnityEngine.UIElements.MeshGenerationContext
---@field currentElement UnityEngine.UIElements.VisualElement
---@field entries System.Collections.Generic.List
---@field closingInfo UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo
---@field totalVertices number
---@field totalIndices number
---@field visualElement UnityEngine.UIElements.VisualElement
UnityEngine.UIElements.UIR.Implementation.UIRStylePainter = {}
---@alias CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter UnityEngine.UIElements.UIR.Implementation.UIRStylePainter
CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter = UnityEngine.UIElements.UIR.Implementation.UIRStylePainter

---@param renderChain UnityEngine.UIElements.UIR.RenderChain
---@return UnityEngine.UIElements.UIR.Implementation.UIRStylePainter
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.New(renderChain) end
---@param ve UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:Begin(ve) end
---@param cmd UnityEngine.UIElements.UIR.RenderChainCommand
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:LandClipUnregisterMeshDrawCommand(cmd) end
---@param vertices Unity.Collections.NativeSlice
---@param indices Unity.Collections.NativeSlice
---@param indexOffset number
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:LandClipRegisterMesh(vertices, indices, indexOffset) end
---@param vertexCount number
---@param indexCount number
---@param texture UnityEngine.UIElements.TextureId
---@param material UnityEngine.Material
---@param flags UnityEngine.UIElements.MeshGenerationContext.MeshFlags
---@return UnityEngine.UIElements.MeshWriteData
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:AddGradientsEntry(vertexCount, indexCount, texture, material, flags) end
---@param vertexCount number
---@param indexCount number
---@param texture UnityEngine.Texture
---@param material UnityEngine.Material
---@param flags UnityEngine.UIElements.MeshGenerationContext.MeshFlags
---@return UnityEngine.UIElements.MeshWriteData
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawMesh(vertexCount, indexCount, texture, material, flags) end
---@param meshData UnityEngine.UIElements.MeshWriteDataInterface
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:BuildRawEntryFromNativeMesh(meshData) end
---@overload fun(self: UnityEngine.UIElements.UIR.Implementation.UIRStylePainter, te: UnityEngine.UIElements.TextElement)
---@param text string
---@param pos UnityEngine.Vector2
---@param fontSize number
---@param color UnityEngine.Color
---@param font UnityEngine.TextCore.Text.FontAsset
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawText(text, pos, fontSize, color, font) end
---@param rectParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawRectangle(rectParams) end
---@param borderParams UnityEngine.UIElements.MeshGenerationContextUtils.BorderParams
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawBorder(borderParams) end
---@param callback System.Action
---@param cullingEnabled boolean
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawImmediate(callback, cullingEnabled) end
---@overload fun(self: UnityEngine.UIElements.UIR.Implementation.UIRStylePainter, vectorImage: UnityEngine.UIElements.VectorImage, offset: UnityEngine.Vector2, rotationAngle: UnityEngine.UIElements.Angle, scale: UnityEngine.Vector2)
---@param rectParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawVectorImage(rectParams) end
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawVisualElementBackground() end
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawVisualElementBorder() end
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:ApplyVisualElementClipping() end
---@param rectParams UnityEngine.UIElements.MeshGenerationContextUtils.RectangleParams
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:DrawSprite(rectParams) end
---@param vi UnityEngine.UIElements.VectorImage
---@param out_settingIndexOffset number
---@param out_texture UnityEngine.UIElements.TextureId
---@return ,number,UnityEngine.UIElements.TextureId
function UnityEngine.UIElements.UIR.Implementation.UIRStylePainter:RegisterVectorImageGradient(vi, out_settingIndexOffset, out_texture) end

---@class UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.Entry : System.ValueType
---@field vertices Unity.Collections.NativeSlice
---@field indices Unity.Collections.NativeSlice
---@field material UnityEngine.Material
---@field fontTexSDFScale number
---@field texture UnityEngine.UIElements.TextureId
---@field customCommand UnityEngine.UIElements.UIR.RenderChainCommand
---@field clipRectID UnityEngine.UIElements.UIR.BMPAlloc
---@field addFlags UnityEngine.UIElements.UIR.VertexFlags
---@field uvIsDisplacement boolean
---@field isTextEntry boolean
---@field isClipRegisterEntry boolean
---@field stencilRef number
---@field maskDepth number
UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.Entry = {}
---@alias CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.Entry UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.Entry
CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.Entry = UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.Entry


---@class UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo : System.ValueType
---@field needsClosing boolean
---@field popViewMatrix boolean
---@field popScissorClip boolean
---@field blitAndPopRenderTexture boolean
---@field PopDefaultMaterial boolean
---@field clipUnregisterDrawCommand UnityEngine.UIElements.UIR.RenderChainCommand
---@field clipperRegisterVertices Unity.Collections.NativeSlice
---@field clipperRegisterIndices Unity.Collections.NativeSlice
---@field clipperRegisterIndexOffset number
---@field maskStencilRef number
UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo = {}
---@alias CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo
CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo = UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.ClosingInfo


---@class UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.RepeatRectUV : System.ValueType
---@field rect UnityEngine.Rect
---@field uv UnityEngine.Rect
UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.RepeatRectUV = {}
---@alias CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.RepeatRectUV UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.RepeatRectUV
CS.UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.RepeatRectUV = UnityEngine.UIElements.UIR.Implementation.UIRStylePainter.RepeatRectUV


---@class UnityEngine.UIElements.StyleSheets.HierarchyTraversal : System.Object
UnityEngine.UIElements.StyleSheets.HierarchyTraversal = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.HierarchyTraversal UnityEngine.UIElements.StyleSheets.HierarchyTraversal
CS.UnityEngine.UIElements.StyleSheets.HierarchyTraversal = UnityEngine.UIElements.StyleSheets.HierarchyTraversal

---@param element UnityEngine.UIElements.VisualElement
function UnityEngine.UIElements.StyleSheets.HierarchyTraversal:Traverse(element) end
---@param element UnityEngine.UIElements.VisualElement
---@param depth number
function UnityEngine.UIElements.StyleSheets.HierarchyTraversal:TraverseRecursive(element, depth) end

---@class UnityEngine.UIElements.StyleSheets.InitialStyle : System.Object
---@field alignContent UnityEngine.UIElements.Align
---@field alignItems UnityEngine.UIElements.Align
---@field alignSelf UnityEngine.UIElements.Align
---@field backgroundColor UnityEngine.Color
---@field backgroundImage UnityEngine.UIElements.Background
---@field backgroundPositionX UnityEngine.UIElements.BackgroundPosition
---@field backgroundPositionY UnityEngine.UIElements.BackgroundPosition
---@field backgroundRepeat UnityEngine.UIElements.BackgroundRepeat
---@field backgroundSize UnityEngine.UIElements.BackgroundSize
---@field borderBottomColor UnityEngine.Color
---@field borderBottomLeftRadius UnityEngine.UIElements.Length
---@field borderBottomRightRadius UnityEngine.UIElements.Length
---@field borderBottomWidth number
---@field borderLeftColor UnityEngine.Color
---@field borderLeftWidth number
---@field borderRightColor UnityEngine.Color
---@field borderRightWidth number
---@field borderTopColor UnityEngine.Color
---@field borderTopLeftRadius UnityEngine.UIElements.Length
---@field borderTopRightRadius UnityEngine.UIElements.Length
---@field borderTopWidth number
---@field bottom UnityEngine.UIElements.Length
---@field color UnityEngine.Color
---@field cursor UnityEngine.UIElements.Cursor
---@field display UnityEngine.UIElements.DisplayStyle
---@field flexBasis UnityEngine.UIElements.Length
---@field flexDirection UnityEngine.UIElements.FlexDirection
---@field flexGrow number
---@field flexShrink number
---@field flexWrap UnityEngine.UIElements.Wrap
---@field fontSize UnityEngine.UIElements.Length
---@field height UnityEngine.UIElements.Length
---@field justifyContent UnityEngine.UIElements.Justify
---@field left UnityEngine.UIElements.Length
---@field letterSpacing UnityEngine.UIElements.Length
---@field marginBottom UnityEngine.UIElements.Length
---@field marginLeft UnityEngine.UIElements.Length
---@field marginRight UnityEngine.UIElements.Length
---@field marginTop UnityEngine.UIElements.Length
---@field maxHeight UnityEngine.UIElements.Length
---@field maxWidth UnityEngine.UIElements.Length
---@field minHeight UnityEngine.UIElements.Length
---@field minWidth UnityEngine.UIElements.Length
---@field opacity number
---@field overflow UnityEngine.UIElements.OverflowInternal
---@field paddingBottom UnityEngine.UIElements.Length
---@field paddingLeft UnityEngine.UIElements.Length
---@field paddingRight UnityEngine.UIElements.Length
---@field paddingTop UnityEngine.UIElements.Length
---@field position UnityEngine.UIElements.Position
---@field right UnityEngine.UIElements.Length
---@field rotate UnityEngine.UIElements.Rotate
---@field scale UnityEngine.UIElements.Scale
---@field textOverflow UnityEngine.UIElements.TextOverflow
---@field textShadow UnityEngine.UIElements.TextShadow
---@field top UnityEngine.UIElements.Length
---@field transformOrigin UnityEngine.UIElements.TransformOrigin
---@field transitionDelay System.Collections.Generic.List
---@field transitionDuration System.Collections.Generic.List
---@field transitionProperty System.Collections.Generic.List
---@field transitionTimingFunction System.Collections.Generic.List
---@field translate UnityEngine.UIElements.Translate
---@field unityBackgroundImageTintColor UnityEngine.Color
---@field unityFont UnityEngine.Font
---@field unityFontDefinition UnityEngine.UIElements.FontDefinition
---@field unityFontStyleAndWeight UnityEngine.FontStyle
---@field unityOverflowClipBox UnityEngine.UIElements.OverflowClipBox
---@field unityParagraphSpacing UnityEngine.UIElements.Length
---@field unitySliceBottom number
---@field unitySliceLeft number
---@field unitySliceRight number
---@field unitySliceScale number
---@field unitySliceTop number
---@field unityTextAlign UnityEngine.TextAnchor
---@field unityTextOutlineColor UnityEngine.Color
---@field unityTextOutlineWidth number
---@field unityTextOverflowPosition UnityEngine.UIElements.TextOverflowPosition
---@field visibility UnityEngine.UIElements.Visibility
---@field whiteSpace UnityEngine.UIElements.WhiteSpace
---@field width UnityEngine.UIElements.Length
---@field wordSpacing UnityEngine.UIElements.Length
UnityEngine.UIElements.StyleSheets.InitialStyle = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.InitialStyle UnityEngine.UIElements.StyleSheets.InitialStyle
CS.UnityEngine.UIElements.StyleSheets.InitialStyle = UnityEngine.UIElements.StyleSheets.InitialStyle

---@return UnityEngine.UIElements.ComputedStyle&
function UnityEngine.UIElements.StyleSheets.InitialStyle.Get() end
---@return UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.InitialStyle.Acquire() end

---@class UnityEngine.UIElements.StyleSheets.ShorthandApplicator : System.Object
UnityEngine.UIElements.StyleSheets.ShorthandApplicator = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.ShorthandApplicator UnityEngine.UIElements.StyleSheets.ShorthandApplicator
CS.UnityEngine.UIElements.StyleSheets.ShorthandApplicator = UnityEngine.UIElements.StyleSheets.ShorthandApplicator

---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyBackgroundPosition(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyBorderColor(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyBorderRadius(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyBorderWidth(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyFlex(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyMargin(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyPadding(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyTransition(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyUnityBackgroundScaleMode(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param ref_computedStyle UnityEngine.UIElements.ComputedStyle
---@return ,UnityEngine.UIElements.ComputedStyle
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.ApplyUnityTextOutline(reader, ref_computedStyle) end
---@param reader UnityEngine.UIElements.StyleSheets.StylePropertyReader
---@param out_backgroundPositionX UnityEngine.UIElements.BackgroundPosition
---@param out_backgroundPositionY UnityEngine.UIElements.BackgroundPosition
---@param out_backgroundRepeat UnityEngine.UIElements.BackgroundRepeat
---@param out_backgroundSize UnityEngine.UIElements.BackgroundSize
---@return ,UnityEngine.UIElements.BackgroundPosition,UnityEngine.UIElements.BackgroundPosition,UnityEngine.UIElements.BackgroundRepeat,UnityEngine.UIElements.BackgroundSize
function UnityEngine.UIElements.StyleSheets.ShorthandApplicator.CompileUnityBackgroundScaleMode(reader, out_backgroundPositionX, out_backgroundPositionY, out_backgroundRepeat, out_backgroundSize) end

---@class UnityEngine.UIElements.StyleSheets.StylePropertyCache : System.Object
UnityEngine.UIElements.StyleSheets.StylePropertyCache = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyCache UnityEngine.UIElements.StyleSheets.StylePropertyCache
CS.UnityEngine.UIElements.StyleSheets.StylePropertyCache = UnityEngine.UIElements.StyleSheets.StylePropertyCache

---@param name string
---@param out_syntax string
---@return boolean,string
function UnityEngine.UIElements.StyleSheets.StylePropertyCache.TryGetSyntax(name, out_syntax) end
---@param name string
---@param out_syntax string
---@return boolean,string
function UnityEngine.UIElements.StyleSheets.StylePropertyCache.TryGetNonTerminalValue(name, out_syntax) end
---@param name string
---@return string
function UnityEngine.UIElements.StyleSheets.StylePropertyCache.FindClosestPropertyName(name) end

---@class UnityEngine.UIElements.StyleSheets.StylePropertyGroup
---@field Inherited UnityEngine.UIElements.StyleSheets.StylePropertyGroup
---@field Layout UnityEngine.UIElements.StyleSheets.StylePropertyGroup
---@field Rare UnityEngine.UIElements.StyleSheets.StylePropertyGroup
---@field Shorthand UnityEngine.UIElements.StyleSheets.StylePropertyGroup
---@field Transform UnityEngine.UIElements.StyleSheets.StylePropertyGroup
---@field Transition UnityEngine.UIElements.StyleSheets.StylePropertyGroup
---@field Visual UnityEngine.UIElements.StyleSheets.StylePropertyGroup
UnityEngine.UIElements.StyleSheets.StylePropertyGroup = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyGroup UnityEngine.UIElements.StyleSheets.StylePropertyGroup
CS.UnityEngine.UIElements.StyleSheets.StylePropertyGroup = UnityEngine.UIElements.StyleSheets.StylePropertyGroup


---@class UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field Align UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field BackgroundPositionKeyword UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field BackgroundSizeType UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field DisplayStyle UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field EasingMode UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field FlexDirection UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field FontStyle UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field Justify UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field Overflow UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field OverflowClipBox UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field OverflowInternal UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field Position UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field Repeat UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field RepeatXY UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field ScaleMode UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field TextAnchor UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field TextOverflow UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field TextOverflowPosition UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field TransformOriginOffset UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field Visibility UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field WhiteSpace UnityEngine.UIElements.StyleSheets.StyleEnumType
---@field Wrap UnityEngine.UIElements.StyleSheets.StyleEnumType
UnityEngine.UIElements.StyleSheets.StyleEnumType = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleEnumType UnityEngine.UIElements.StyleSheets.StyleEnumType
CS.UnityEngine.UIElements.StyleSheets.StyleEnumType = UnityEngine.UIElements.StyleSheets.StyleEnumType


---@class UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Unknown UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Custom UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field AlignContent UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field AlignItems UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field AlignSelf UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field All UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BackgroundColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BackgroundImage UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BackgroundPosition UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BackgroundPositionX UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BackgroundPositionY UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BackgroundRepeat UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BackgroundSize UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderBottomColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderBottomLeftRadius UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderBottomRightRadius UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderBottomWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderLeftColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderLeftWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderRadius UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderRightColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderRightWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderTopColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderTopLeftRadius UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderTopRightRadius UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderTopWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field BorderWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Bottom UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Color UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Cursor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Display UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Flex UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field FlexBasis UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field FlexDirection UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field FlexGrow UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field FlexShrink UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field FlexWrap UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field FontSize UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Height UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field JustifyContent UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Left UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field LetterSpacing UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Margin UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MarginBottom UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MarginLeft UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MarginRight UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MarginTop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MaxHeight UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MaxWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MinHeight UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field MinWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Opacity UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Overflow UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Padding UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field PaddingBottom UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field PaddingLeft UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field PaddingRight UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field PaddingTop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Position UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Right UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Rotate UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Scale UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field TextOverflow UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field TextShadow UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Top UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field TransformOrigin UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Transition UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field TransitionDelay UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field TransitionDuration UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field TransitionProperty UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field TransitionTimingFunction UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Translate UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityBackgroundImageTintColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityBackgroundScaleMode UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityFont UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityFontDefinition UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityFontStyleAndWeight UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityOverflowClipBox UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityParagraphSpacing UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnitySliceBottom UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnitySliceLeft UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnitySliceRight UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnitySliceScale UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnitySliceTop UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityTextAlign UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityTextOutline UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityTextOutlineColor UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityTextOutlineWidth UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field UnityTextOverflowPosition UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Visibility UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field WhiteSpace UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field Width UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field WordSpacing UnityEngine.UIElements.StyleSheets.StylePropertyId
UnityEngine.UIElements.StyleSheets.StylePropertyId = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyId UnityEngine.UIElements.StyleSheets.StylePropertyId
CS.UnityEngine.UIElements.StyleSheets.StylePropertyId = UnityEngine.UIElements.StyleSheets.StylePropertyId


---@class UnityEngine.UIElements.StyleSheets.StylePropertyUtil : System.Object
---@field k_GroupOffset number
UnityEngine.UIElements.StyleSheets.StylePropertyUtil = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyUtil UnityEngine.UIElements.StyleSheets.StylePropertyUtil
CS.UnityEngine.UIElements.StyleSheets.StylePropertyUtil = UnityEngine.UIElements.StyleSheets.StylePropertyUtil

---@param enumType UnityEngine.UIElements.StyleSheets.StyleEnumType
---@param value string
---@param out_intValue number
---@return boolean,number
function UnityEngine.UIElements.StyleSheets.StylePropertyUtil.TryGetEnumIntValue(enumType, value, out_intValue) end
---@param shorthand UnityEngine.UIElements.StyleSheets.StylePropertyId
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StyleSheets.StylePropertyUtil.IsMatchingShorthand(shorthand, id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.StyleSheets.StylePropertyUtil.GetAllowedAssetTypesForProperty(id) end
---@param id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@return boolean
function UnityEngine.UIElements.StyleSheets.StylePropertyUtil.IsAnimatable(id) end
---@return System.Collections.Generic.IEnumerable
function UnityEngine.UIElements.StyleSheets.StylePropertyUtil.AllPropertyIds() end

---@class UnityEngine.UIElements.StyleSheets.CSSSpec : System.Object
UnityEngine.UIElements.StyleSheets.CSSSpec = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.CSSSpec UnityEngine.UIElements.StyleSheets.CSSSpec
CS.UnityEngine.UIElements.StyleSheets.CSSSpec = UnityEngine.UIElements.StyleSheets.CSSSpec

---@overload fun(selector: string) : number
---@param parts UnityEngine.UIElements.StyleSelectorPart[]
---@return number
function UnityEngine.UIElements.StyleSheets.CSSSpec.GetSelectorSpecificity(parts) end
---@param selector string
---@param out_parts UnityEngine.UIElements.StyleSelectorPart[]
---@return boolean,UnityEngine.UIElements.StyleSelectorPart[]
function UnityEngine.UIElements.StyleSheets.CSSSpec.ParseSelector(selector, out_parts) end

---@class UnityEngine.UIElements.StyleSheets.Dimension : System.ValueType
---@field unit UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field value number
UnityEngine.UIElements.StyleSheets.Dimension = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Dimension UnityEngine.UIElements.StyleSheets.Dimension
CS.UnityEngine.UIElements.StyleSheets.Dimension = UnityEngine.UIElements.StyleSheets.Dimension

---@param value number
---@param unit UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@return UnityEngine.UIElements.StyleSheets.Dimension
function UnityEngine.UIElements.StyleSheets.Dimension.New(value, unit) end
---@return UnityEngine.UIElements.Length
function UnityEngine.UIElements.StyleSheets.Dimension:ToLength() end
---@return UnityEngine.UIElements.TimeValue
function UnityEngine.UIElements.StyleSheets.Dimension:ToTime() end
---@return UnityEngine.UIElements.Angle
function UnityEngine.UIElements.StyleSheets.Dimension:ToAngle() end
---@overload fun(self: UnityEngine.UIElements.StyleSheets.Dimension, other: UnityEngine.UIElements.StyleSheets.Dimension) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.UIElements.StyleSheets.Dimension:Equals(obj) end
---@return number
function UnityEngine.UIElements.StyleSheets.Dimension:GetHashCode() end
---@return string
function UnityEngine.UIElements.StyleSheets.Dimension:ToString() end

---@class UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Unitless UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Pixel UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Percent UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Second UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Millisecond UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Degree UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Gradian UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Radian UnityEngine.UIElements.StyleSheets.Dimension.Unit
---@field Turn UnityEngine.UIElements.StyleSheets.Dimension.Unit
UnityEngine.UIElements.StyleSheets.Dimension.Unit = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.Dimension.Unit UnityEngine.UIElements.StyleSheets.Dimension.Unit
CS.UnityEngine.UIElements.StyleSheets.Dimension.Unit = UnityEngine.UIElements.StyleSheets.Dimension.Unit


---@class UnityEngine.UIElements.StyleSheets.ScalableImage : System.ValueType
---@field normalImage UnityEngine.Texture2D
---@field highResolutionImage UnityEngine.Texture2D
UnityEngine.UIElements.StyleSheets.ScalableImage = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.ScalableImage UnityEngine.UIElements.StyleSheets.ScalableImage
CS.UnityEngine.UIElements.StyleSheets.ScalableImage = UnityEngine.UIElements.StyleSheets.ScalableImage

---@return string
function UnityEngine.UIElements.StyleSheets.ScalableImage:ToString() end

---@class UnityEngine.UIElements.StyleSheets.StylePropertyValue : System.ValueType
---@field sheet UnityEngine.UIElements.StyleSheet
---@field handle UnityEngine.UIElements.StyleValueHandle
UnityEngine.UIElements.StyleSheets.StylePropertyValue = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyValue UnityEngine.UIElements.StyleSheets.StylePropertyValue
CS.UnityEngine.UIElements.StyleSheets.StylePropertyValue = UnityEngine.UIElements.StyleSheets.StylePropertyValue


---@class UnityEngine.UIElements.StyleSheets.ImageSource : System.ValueType
---@field texture UnityEngine.Texture2D
---@field sprite UnityEngine.Sprite
---@field vectorImage UnityEngine.UIElements.VectorImage
---@field renderTexture UnityEngine.RenderTexture
UnityEngine.UIElements.StyleSheets.ImageSource = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.ImageSource UnityEngine.UIElements.StyleSheets.ImageSource
CS.UnityEngine.UIElements.StyleSheets.ImageSource = UnityEngine.UIElements.StyleSheets.ImageSource

---@return boolean
function UnityEngine.UIElements.StyleSheets.ImageSource:IsNull() end

---@class UnityEngine.UIElements.StyleSheets.StylePropertyReader : System.Object
---@field property UnityEngine.UIElements.StyleProperty
---@field propertyId UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field valueCount number
---@field dpiScaling number
UnityEngine.UIElements.StyleSheets.StylePropertyReader = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyReader UnityEngine.UIElements.StyleSheets.StylePropertyReader
CS.UnityEngine.UIElements.StyleSheets.StylePropertyReader = UnityEngine.UIElements.StyleSheets.StylePropertyReader

---@return UnityEngine.UIElements.StyleSheets.StylePropertyReader
function UnityEngine.UIElements.StyleSheets.StylePropertyReader.New() end
---@overload fun(valCount: number, val1: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val2: UnityEngine.UIElements.StyleSheets.StylePropertyValue, zVvalue: UnityEngine.UIElements.StyleSheets.StylePropertyValue) : UnityEngine.UIElements.TransformOrigin
---@param index number
---@return UnityEngine.UIElements.TransformOrigin
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadTransformOrigin(index) end
---@overload fun(valCount: number, val1: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val2: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val3: UnityEngine.UIElements.StyleSheets.StylePropertyValue) : UnityEngine.UIElements.Translate
---@param index number
---@return UnityEngine.UIElements.Translate
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadTranslate(index) end
---@overload fun(valCount: number, val1: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val2: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val3: UnityEngine.UIElements.StyleSheets.StylePropertyValue) : UnityEngine.UIElements.Scale
---@param index number
---@return UnityEngine.UIElements.Scale
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadScale(index) end
---@overload fun(valCount: number, val1: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val2: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val3: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val4: UnityEngine.UIElements.StyleSheets.StylePropertyValue) : UnityEngine.UIElements.Rotate
---@param index number
---@return UnityEngine.UIElements.Rotate
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadRotate(index) end
---@param value UnityEngine.UIElements.StyleSheets.StylePropertyValue
---@return UnityEngine.UIElements.Angle
function UnityEngine.UIElements.StyleSheets.StylePropertyReader.ReadAngle(value) end
---@param valCount number
---@param val1 UnityEngine.UIElements.StyleSheets.StylePropertyValue
---@param val2 UnityEngine.UIElements.StyleSheets.StylePropertyValue
---@param keyword UnityEngine.UIElements.BackgroundPositionKeyword
---@return UnityEngine.UIElements.BackgroundPosition
function UnityEngine.UIElements.StyleSheets.StylePropertyReader.ReadBackgroundPosition(valCount, val1, val2, keyword) end
---@overload fun(valCount: number, val1: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val2: UnityEngine.UIElements.StyleSheets.StylePropertyValue) : UnityEngine.UIElements.BackgroundRepeat
---@param index number
---@return UnityEngine.UIElements.BackgroundRepeat
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadBackgroundRepeat(index) end
---@overload fun(valCount: number, val1: UnityEngine.UIElements.StyleSheets.StylePropertyValue, val2: UnityEngine.UIElements.StyleSheets.StylePropertyValue) : UnityEngine.UIElements.BackgroundSize
---@param index number
---@return UnityEngine.UIElements.BackgroundSize
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadBackgroundSize(index) end
---@param sheet UnityEngine.UIElements.StyleSheet
---@param selector UnityEngine.UIElements.StyleComplexSelector
---@param varContext UnityEngine.UIElements.StyleVariableContext
---@param dpiScaling number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:SetContext(sheet, selector, varContext, dpiScaling) end
---@param sheet UnityEngine.UIElements.StyleSheet
---@param properties UnityEngine.UIElements.StyleProperty[]
---@param propertyIds UnityEngine.UIElements.StyleSheets.StylePropertyId[]
---@param dpiScaling number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:SetInlineContext(sheet, properties, propertyIds, dpiScaling) end
---@return UnityEngine.UIElements.StyleSheets.StylePropertyId
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:MoveNextProperty() end
---@param index number
---@return UnityEngine.UIElements.StyleSheets.StylePropertyValue
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:GetValue(index) end
---@param index number
---@return UnityEngine.UIElements.StyleValueType
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:GetValueType(index) end
---@param index number
---@param type UnityEngine.UIElements.StyleValueType
---@return boolean
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:IsValueType(index, type) end
---@param index number
---@param keyword UnityEngine.UIElements.StyleValueKeyword
---@return boolean
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:IsKeyword(index, keyword) end
---@param index number
---@return string
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadAsString(index) end
---@param index number
---@return UnityEngine.UIElements.Length
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadLength(index) end
---@param index number
---@return UnityEngine.UIElements.TimeValue
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadTimeValue(index) end
---@param index number
---@return number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadFloat(index) end
---@param index number
---@return number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadInt(index) end
---@param index number
---@return UnityEngine.Color
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadColor(index) end
---@param enumType UnityEngine.UIElements.StyleSheets.StyleEnumType
---@param index number
---@return number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadEnum(enumType, index) end
---@param index number
---@return UnityEngine.UIElements.FontDefinition
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadFontDefinition(index) end
---@param index number
---@return UnityEngine.Font
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadFont(index) end
---@param index number
---@return UnityEngine.UIElements.Background
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadBackground(index) end
---@param index number
---@return UnityEngine.UIElements.Cursor
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadCursor(index) end
---@param index number
---@return UnityEngine.UIElements.TextShadow
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadTextShadow(index) end
---@param index number
---@return UnityEngine.UIElements.BackgroundPosition
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadBackgroundPositionX(index) end
---@param index number
---@return UnityEngine.UIElements.BackgroundPosition
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadBackgroundPositionY(index) end
---@param list System.Collections.Generic.List
---@param index number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadListEasingFunction(list, index) end
---@param list System.Collections.Generic.List
---@param index number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadListTimeValue(list, index) end
---@param list System.Collections.Generic.List
---@param index number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadListStylePropertyName(list, index) end
---@param list System.Collections.Generic.List
---@param index number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader:ReadListString(list, index) end

---@class UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction : System.MulticastDelegate
UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction
CS.UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction = UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction
function UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction.New(object, method) end
---@param sheet UnityEngine.UIElements.StyleSheet
---@param handle UnityEngine.UIElements.StyleValueHandle
---@return number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction:Invoke(sheet, handle) end
---@param sheet UnityEngine.UIElements.StyleSheet
---@param handle UnityEngine.UIElements.StyleValueHandle
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction:BeginInvoke(sheet, handle, callback, object) end
---@param result System.IAsyncResult
---@return number
function UnityEngine.UIElements.StyleSheets.StylePropertyReader.GetCursorIdFunction:EndInvoke(result) end

---@class UnityEngine.UIElements.StyleSheets.MatchResultInfo : System.ValueType
---@field success boolean
---@field triggerPseudoMask UnityEngine.UIElements.PseudoStates
---@field dependencyPseudoMask UnityEngine.UIElements.PseudoStates
UnityEngine.UIElements.StyleSheets.MatchResultInfo = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.MatchResultInfo UnityEngine.UIElements.StyleSheets.MatchResultInfo
CS.UnityEngine.UIElements.StyleSheets.MatchResultInfo = UnityEngine.UIElements.StyleSheets.MatchResultInfo

---@param success boolean
---@param triggerPseudoMask UnityEngine.UIElements.PseudoStates
---@param dependencyPseudoMask UnityEngine.UIElements.PseudoStates
---@return UnityEngine.UIElements.StyleSheets.MatchResultInfo
function UnityEngine.UIElements.StyleSheets.MatchResultInfo.New(success, triggerPseudoMask, dependencyPseudoMask) end

---@class UnityEngine.UIElements.StyleSheets.SelectorMatchRecord : System.ValueType
---@field sheet UnityEngine.UIElements.StyleSheet
---@field styleSheetIndexInStack number
---@field complexSelector UnityEngine.UIElements.StyleComplexSelector
UnityEngine.UIElements.StyleSheets.SelectorMatchRecord = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.SelectorMatchRecord UnityEngine.UIElements.StyleSheets.SelectorMatchRecord
CS.UnityEngine.UIElements.StyleSheets.SelectorMatchRecord = UnityEngine.UIElements.StyleSheets.SelectorMatchRecord

---@param sheet UnityEngine.UIElements.StyleSheet
---@param styleSheetIndexInStack number
---@return UnityEngine.UIElements.StyleSheets.SelectorMatchRecord
function UnityEngine.UIElements.StyleSheets.SelectorMatchRecord.New(sheet, styleSheetIndexInStack) end
---@param a UnityEngine.UIElements.StyleSheets.SelectorMatchRecord
---@param b UnityEngine.UIElements.StyleSheets.SelectorMatchRecord
---@return number
function UnityEngine.UIElements.StyleSheets.SelectorMatchRecord.Compare(a, b) end

---@class UnityEngine.UIElements.StyleSheets.StyleSelectorHelper : System.Object
UnityEngine.UIElements.StyleSheets.StyleSelectorHelper = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSelectorHelper UnityEngine.UIElements.StyleSheets.StyleSelectorHelper
CS.UnityEngine.UIElements.StyleSheets.StyleSelectorHelper = UnityEngine.UIElements.StyleSheets.StyleSelectorHelper

---@param element UnityEngine.UIElements.VisualElement
---@param selector UnityEngine.UIElements.StyleSelector
---@return UnityEngine.UIElements.StyleSheets.MatchResultInfo
function UnityEngine.UIElements.StyleSheets.StyleSelectorHelper.MatchesSelector(element, selector) end
---@param element UnityEngine.UIElements.VisualElement
---@param complexSelector UnityEngine.UIElements.StyleComplexSelector
---@param processResult System.Action
---@return boolean
function UnityEngine.UIElements.StyleSheets.StyleSelectorHelper.MatchRightToLeft(element, complexSelector, processResult) end
---@overload fun(context: UnityEngine.UIElements.StyleMatchingContext, matchedSelectors: System.Collections.Generic.List)
---@param context UnityEngine.UIElements.StyleMatchingContext
---@param matchedSelectors System.Collections.Generic.List
---@param parentSheetIndex number
function UnityEngine.UIElements.StyleSheets.StyleSelectorHelper.FindMatches(context, matchedSelectors, parentSheetIndex) end

---@class UnityEngine.UIElements.StyleSheets.StyleSheetBuilder : System.Object
---@field currentProperty UnityEngine.UIElements.StyleProperty
UnityEngine.UIElements.StyleSheets.StyleSheetBuilder = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetBuilder UnityEngine.UIElements.StyleSheets.StyleSheetBuilder
CS.UnityEngine.UIElements.StyleSheets.StyleSheetBuilder = UnityEngine.UIElements.StyleSheets.StyleSheetBuilder

---@return UnityEngine.UIElements.StyleSheets.StyleSheetBuilder
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.New() end
---@param ruleLine number
---@return UnityEngine.UIElements.StyleRule
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:BeginRule(ruleLine) end
---@param specificity number
---@return UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:BeginComplexSelector(specificity) end
---@param parts UnityEngine.UIElements.StyleSelectorPart[]
---@param previousRelationsip UnityEngine.UIElements.StyleSelectorRelationship
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:AddSimpleSelector(parts, previousRelationsip) end
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:EndComplexSelector() end
---@param name string
---@param line number
---@return UnityEngine.UIElements.StyleProperty
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:BeginProperty(name, line) end
---@param importStruct UnityEngine.UIElements.StyleSheet.ImportStruct
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:AddImport(importStruct) end
---@overload fun(self: UnityEngine.UIElements.StyleSheets.StyleSheetBuilder, value: number)
---@overload fun(self: UnityEngine.UIElements.StyleSheets.StyleSheetBuilder, value: UnityEngine.UIElements.StyleSheets.Dimension)
---@overload fun(self: UnityEngine.UIElements.StyleSheets.StyleSheetBuilder, keyword: UnityEngine.UIElements.StyleValueKeyword)
---@overload fun(self: UnityEngine.UIElements.StyleSheets.StyleSheetBuilder, _function: UnityEngine.UIElements.StyleValueFunction)
---@overload fun(self: UnityEngine.UIElements.StyleSheets.StyleSheetBuilder, value: string, type: UnityEngine.UIElements.StyleValueType)
---@overload fun(self: UnityEngine.UIElements.StyleSheets.StyleSheetBuilder, value: UnityEngine.Color)
---@overload fun(self: UnityEngine.UIElements.StyleSheets.StyleSheetBuilder, value: UnityEngine.Object)
---@param value UnityEngine.UIElements.StyleSheets.ScalableImage
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:AddValue(value) end
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:AddCommaSeparator() end
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:EndProperty() end
---@return number
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:EndRule() end
---@param writeTo UnityEngine.UIElements.StyleSheet
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder:BuildTo(writeTo) end

---@class UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope : System.ValueType
UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope
CS.UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope = UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope

---@param builder UnityEngine.UIElements.StyleSheets.StyleSheetBuilder
---@return UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope.New(builder) end
function UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.ComplexSelectorScope:Dispose() end

---@class UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState
---@field Init UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState
---@field Rule UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState
---@field ComplexSelector UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState
---@field Property UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState
UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState
CS.UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState = UnityEngine.UIElements.StyleSheets.StyleSheetBuilder.BuilderState


---@class UnityEngine.UIElements.StyleSheets.StyleSheetCache : System.Object
UnityEngine.UIElements.StyleSheets.StyleSheetCache = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetCache UnityEngine.UIElements.StyleSheets.StyleSheetCache
CS.UnityEngine.UIElements.StyleSheets.StyleSheetCache = UnityEngine.UIElements.StyleSheets.StyleSheetCache


---@class UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey : System.ValueType
---@field sheetInstanceID number
---@field index number
UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey
CS.UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey = UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey

---@param sheet UnityEngine.UIElements.StyleSheet
---@param index number
---@return UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey
function UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey.New(sheet, index) end

---@class UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer : System.Object
UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer
CS.UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer = UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer

---@return UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer
function UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer.New() end
---@param x UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey
---@param y UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey
---@return boolean
function UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer:Equals(x, y) end
---@param key UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKey
---@return number
function UnityEngine.UIElements.StyleSheets.StyleSheetCache.SheetHandleKeyComparer:GetHashCode(key) end

---@class UnityEngine.UIElements.StyleSheets.StyleSheetColor : System.Object
UnityEngine.UIElements.StyleSheets.StyleSheetColor = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetColor UnityEngine.UIElements.StyleSheets.StyleSheetColor
CS.UnityEngine.UIElements.StyleSheets.StyleSheetColor = UnityEngine.UIElements.StyleSheets.StyleSheetColor

---@param name string
---@param out_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.UIElements.StyleSheets.StyleSheetColor.TryGetColor(name, out_color) end

---@class UnityEngine.UIElements.StyleSheets.StyleSheetExtensions : System.Object
UnityEngine.UIElements.StyleSheets.StyleSheetExtensions = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleSheetExtensions UnityEngine.UIElements.StyleSheets.StyleSheetExtensions
CS.UnityEngine.UIElements.StyleSheets.StyleSheetExtensions = UnityEngine.UIElements.StyleSheets.StyleSheetExtensions

---@param sheet UnityEngine.UIElements.StyleSheet
---@param handle UnityEngine.UIElements.StyleValueHandle
---@return string
function UnityEngine.UIElements.StyleSheets.StyleSheetExtensions.ReadAsString(sheet, handle) end
---@param handle UnityEngine.UIElements.StyleValueHandle
---@return boolean
function UnityEngine.UIElements.StyleSheets.StyleSheetExtensions.IsVarFunction(handle) end

---@class UnityEngine.UIElements.StyleSheets.StyleValue : System.ValueType
---@field id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field keyword UnityEngine.UIElements.StyleKeyword
---@field number number
---@field length UnityEngine.UIElements.Length
---@field color UnityEngine.Color
---@field resource System.Runtime.InteropServices.GCHandle
---@field position UnityEngine.UIElements.BackgroundPosition
---@field repeat UnityEngine.UIElements.BackgroundRepeat
UnityEngine.UIElements.StyleSheets.StyleValue = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleValue UnityEngine.UIElements.StyleSheets.StyleValue
CS.UnityEngine.UIElements.StyleSheets.StyleValue = UnityEngine.UIElements.StyleSheets.StyleValue


---@class UnityEngine.UIElements.StyleSheets.StyleValueManaged : System.ValueType
---@field id UnityEngine.UIElements.StyleSheets.StylePropertyId
---@field keyword UnityEngine.UIElements.StyleKeyword
---@field value System.Object
UnityEngine.UIElements.StyleSheets.StyleValueManaged = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleValueManaged UnityEngine.UIElements.StyleSheets.StyleValueManaged
CS.UnityEngine.UIElements.StyleSheets.StyleValueManaged = UnityEngine.UIElements.StyleSheets.StyleValueManaged


---@class UnityEngine.UIElements.StyleSheets.MatchResultErrorCode
---@field None UnityEngine.UIElements.StyleSheets.MatchResultErrorCode
---@field Syntax UnityEngine.UIElements.StyleSheets.MatchResultErrorCode
---@field EmptyValue UnityEngine.UIElements.StyleSheets.MatchResultErrorCode
---@field ExpectedEndOfValue UnityEngine.UIElements.StyleSheets.MatchResultErrorCode
UnityEngine.UIElements.StyleSheets.MatchResultErrorCode = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.MatchResultErrorCode UnityEngine.UIElements.StyleSheets.MatchResultErrorCode
CS.UnityEngine.UIElements.StyleSheets.MatchResultErrorCode = UnityEngine.UIElements.StyleSheets.MatchResultErrorCode


---@class UnityEngine.UIElements.StyleSheets.MatchResult : System.ValueType
---@field errorCode UnityEngine.UIElements.StyleSheets.MatchResultErrorCode
---@field errorValue string
---@field success boolean
UnityEngine.UIElements.StyleSheets.MatchResult = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.MatchResult UnityEngine.UIElements.StyleSheets.MatchResult
CS.UnityEngine.UIElements.StyleSheets.MatchResult = UnityEngine.UIElements.StyleSheets.MatchResult


---@class UnityEngine.UIElements.StyleSheets.BaseStyleMatcher : System.Object
---@field valueCount number
---@field isCurrentVariable boolean
---@field isCurrentComma boolean
---@field hasCurrent boolean
---@field currentIndex number
---@field matchedVariableCount number
UnityEngine.UIElements.StyleSheets.BaseStyleMatcher = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.BaseStyleMatcher UnityEngine.UIElements.StyleSheets.BaseStyleMatcher
CS.UnityEngine.UIElements.StyleSheets.BaseStyleMatcher = UnityEngine.UIElements.StyleSheets.BaseStyleMatcher

function UnityEngine.UIElements.StyleSheets.BaseStyleMatcher:MoveNext() end
function UnityEngine.UIElements.StyleSheets.BaseStyleMatcher:SaveContext() end
function UnityEngine.UIElements.StyleSheets.BaseStyleMatcher:RestoreContext() end
function UnityEngine.UIElements.StyleSheets.BaseStyleMatcher:DropContext() end

---@class UnityEngine.UIElements.StyleSheets.BaseStyleMatcher.MatchContext : System.ValueType
---@field valueIndex number
---@field matchedVariableCount number
UnityEngine.UIElements.StyleSheets.BaseStyleMatcher.MatchContext = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.BaseStyleMatcher.MatchContext UnityEngine.UIElements.StyleSheets.BaseStyleMatcher.MatchContext
CS.UnityEngine.UIElements.StyleSheets.BaseStyleMatcher.MatchContext = UnityEngine.UIElements.StyleSheets.BaseStyleMatcher.MatchContext


---@class UnityEngine.UIElements.StyleSheets.StyleMatcher : UnityEngine.UIElements.StyleSheets.BaseStyleMatcher
---@field valueCount number
---@field isCurrentVariable boolean
---@field isCurrentComma boolean
UnityEngine.UIElements.StyleSheets.StyleMatcher = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleMatcher UnityEngine.UIElements.StyleSheets.StyleMatcher
CS.UnityEngine.UIElements.StyleSheets.StyleMatcher = UnityEngine.UIElements.StyleSheets.StyleMatcher

---@return UnityEngine.UIElements.StyleSheets.StyleMatcher
function UnityEngine.UIElements.StyleSheets.StyleMatcher.New() end
---@param exp UnityEngine.UIElements.StyleSheets.Syntax.Expression
---@param propertyValue string
---@return UnityEngine.UIElements.StyleSheets.MatchResult
function UnityEngine.UIElements.StyleSheets.StyleMatcher:Match(exp, propertyValue) end

---@class UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher : UnityEngine.UIElements.StyleSheets.BaseStyleMatcher
---@field valueCount number
---@field isCurrentVariable boolean
---@field isCurrentComma boolean
UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher
CS.UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher = UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher

---@return UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher
function UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher.New() end
---@param exp UnityEngine.UIElements.StyleSheets.Syntax.Expression
---@param values System.Collections.Generic.List
---@return UnityEngine.UIElements.StyleSheets.MatchResult
function UnityEngine.UIElements.StyleSheets.StylePropertyValueMatcher:Match(exp, values) end

---@class UnityEngine.UIElements.StyleSheets.StylePropertyValueParser : System.Object
UnityEngine.UIElements.StyleSheets.StylePropertyValueParser = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StylePropertyValueParser UnityEngine.UIElements.StyleSheets.StylePropertyValueParser
CS.UnityEngine.UIElements.StyleSheets.StylePropertyValueParser = UnityEngine.UIElements.StyleSheets.StylePropertyValueParser

---@return UnityEngine.UIElements.StyleSheets.StylePropertyValueParser
function UnityEngine.UIElements.StyleSheets.StylePropertyValueParser.New() end
---@param propertyValue string
---@return System.String[]
function UnityEngine.UIElements.StyleSheets.StylePropertyValueParser:Parse(propertyValue) end

---@class UnityEngine.UIElements.StyleSheets.StyleValidationStatus
---@field Ok UnityEngine.UIElements.StyleSheets.StyleValidationStatus
---@field Error UnityEngine.UIElements.StyleSheets.StyleValidationStatus
---@field Warning UnityEngine.UIElements.StyleSheets.StyleValidationStatus
UnityEngine.UIElements.StyleSheets.StyleValidationStatus = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleValidationStatus UnityEngine.UIElements.StyleSheets.StyleValidationStatus
CS.UnityEngine.UIElements.StyleSheets.StyleValidationStatus = UnityEngine.UIElements.StyleSheets.StyleValidationStatus


---@class UnityEngine.UIElements.StyleSheets.StyleValidationResult : System.ValueType
---@field status UnityEngine.UIElements.StyleSheets.StyleValidationStatus
---@field message string
---@field errorValue string
---@field hint string
---@field success boolean
UnityEngine.UIElements.StyleSheets.StyleValidationResult = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleValidationResult UnityEngine.UIElements.StyleSheets.StyleValidationResult
CS.UnityEngine.UIElements.StyleSheets.StyleValidationResult = UnityEngine.UIElements.StyleSheets.StyleValidationResult


---@class UnityEngine.UIElements.StyleSheets.StyleValidator : System.Object
UnityEngine.UIElements.StyleSheets.StyleValidator = {}
---@alias CS.UnityEngine.UIElements.StyleSheets.StyleValidator UnityEngine.UIElements.StyleSheets.StyleValidator
CS.UnityEngine.UIElements.StyleSheets.StyleValidator = UnityEngine.UIElements.StyleSheets.StyleValidator
