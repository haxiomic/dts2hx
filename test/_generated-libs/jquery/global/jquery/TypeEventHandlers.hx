package global.jquery;

typedef TypeEventHandlers<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	@:optional
	var change : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, ChangeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var resize : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, ResizeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var scroll : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, ScrollEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var select : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, SelectEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var submit : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, SubmitEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var click : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, ClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var contextmenu : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, ContextMenuEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var dblclick : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, DoubleClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var mousedown : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, MouseDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var mouseenter : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, MouseEnterEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var mouseleave : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, MouseLeaveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var mousemove : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, MouseMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var mouseout : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, MouseOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var mouseover : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, MouseOverEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var mouseup : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, MouseUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var keydown : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, KeyDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var keypress : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, KeyPressEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var keyup : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, KeyUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var touchcancel : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, TouchCancelEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var touchend : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, TouchEndEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var touchmove : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, TouchMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var touchstart : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, TouchStartEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var blur : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, BlurEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var focus : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, FocusEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var focusin : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, FocusInEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
	@:optional
	var focusout : ts.AnyOf3<Bool, Dynamic, EventHandlerBase<TCurrentTarget, FocusOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>>>;
};