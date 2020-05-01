package global.jquery;
extern typedef TypeEventHandlers<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	@:optional
	var change : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:ChangeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var resize : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:ResizeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var scroll : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:ScrollEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var select : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:SelectEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var submit : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:SubmitEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var click : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:ClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var contextmenu : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:ContextMenuEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var dblclick : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:DoubleClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var mousedown : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:MouseDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var mouseenter : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:MouseEnterEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var mouseleave : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:MouseLeaveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var mousemove : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:MouseMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var mouseout : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:MouseOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var mouseover : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:MouseOverEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var mouseup : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:MouseUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var keydown : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:KeyDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var keypress : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:KeyPressEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var keyup : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:KeyUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var touchcancel : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:TouchCancelEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var touchend : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:TouchEndEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var touchmove : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:TouchMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var touchstart : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:TouchStartEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var blur : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:BlurEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var focus : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:FocusEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var focusin : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:FocusInEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
	@:optional
	var focusout : haxe.extern.EitherType<Bool, haxe.extern.EitherType<Any, (t:FocusOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>>;
};