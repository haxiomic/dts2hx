package global.jquery;
extern typedef TypeEventHandlers<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	@:optional
	var change : ts.AnyOf3<Bool, Any, (t:ChangeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var resize : ts.AnyOf3<Bool, Any, (t:ResizeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var scroll : ts.AnyOf3<Bool, Any, (t:ScrollEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var select : ts.AnyOf3<Bool, Any, (t:SelectEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var submit : ts.AnyOf3<Bool, Any, (t:SubmitEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var click : ts.AnyOf3<Bool, Any, (t:ClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var contextmenu : ts.AnyOf3<Bool, Any, (t:ContextMenuEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var dblclick : ts.AnyOf3<Bool, Any, (t:DoubleClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var mousedown : ts.AnyOf3<Bool, Any, (t:MouseDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var mouseenter : ts.AnyOf3<Bool, Any, (t:MouseEnterEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var mouseleave : ts.AnyOf3<Bool, Any, (t:MouseLeaveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var mousemove : ts.AnyOf3<Bool, Any, (t:MouseMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var mouseout : ts.AnyOf3<Bool, Any, (t:MouseOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var mouseover : ts.AnyOf3<Bool, Any, (t:MouseOverEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var mouseup : ts.AnyOf3<Bool, Any, (t:MouseUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var keydown : ts.AnyOf3<Bool, Any, (t:KeyDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var keypress : ts.AnyOf3<Bool, Any, (t:KeyPressEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var keyup : ts.AnyOf3<Bool, Any, (t:KeyUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var touchcancel : ts.AnyOf3<Bool, Any, (t:TouchCancelEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var touchend : ts.AnyOf3<Bool, Any, (t:TouchEndEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var touchmove : ts.AnyOf3<Bool, Any, (t:TouchMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var touchstart : ts.AnyOf3<Bool, Any, (t:TouchStartEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var blur : ts.AnyOf3<Bool, Any, (t:BlurEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var focus : ts.AnyOf3<Bool, Any, (t:FocusEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var focusin : ts.AnyOf3<Bool, Any, (t:FocusInEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
	@:optional
	var focusout : ts.AnyOf3<Bool, Any, (t:FocusOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Any>) -> Any>;
};