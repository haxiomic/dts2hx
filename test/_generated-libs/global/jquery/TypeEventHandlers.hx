package global.jquery;
typedef TypeEventHandlers<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	@:optional
	var change : ts.AnyOf3<Bool, Dynamic, (t:ChangeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var resize : ts.AnyOf3<Bool, Dynamic, (t:ResizeEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var scroll : ts.AnyOf3<Bool, Dynamic, (t:ScrollEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var select : ts.AnyOf3<Bool, Dynamic, (t:SelectEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var submit : ts.AnyOf3<Bool, Dynamic, (t:SubmitEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var click : ts.AnyOf3<Bool, Dynamic, (t:ClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var contextmenu : ts.AnyOf3<Bool, Dynamic, (t:ContextMenuEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var dblclick : ts.AnyOf3<Bool, Dynamic, (t:DoubleClickEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var mousedown : ts.AnyOf3<Bool, Dynamic, (t:MouseDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var mouseenter : ts.AnyOf3<Bool, Dynamic, (t:MouseEnterEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var mouseleave : ts.AnyOf3<Bool, Dynamic, (t:MouseLeaveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var mousemove : ts.AnyOf3<Bool, Dynamic, (t:MouseMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var mouseout : ts.AnyOf3<Bool, Dynamic, (t:MouseOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var mouseover : ts.AnyOf3<Bool, Dynamic, (t:MouseOverEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var mouseup : ts.AnyOf3<Bool, Dynamic, (t:MouseUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var keydown : ts.AnyOf3<Bool, Dynamic, (t:KeyDownEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var keypress : ts.AnyOf3<Bool, Dynamic, (t:KeyPressEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var keyup : ts.AnyOf3<Bool, Dynamic, (t:KeyUpEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var touchcancel : ts.AnyOf3<Bool, Dynamic, (t:TouchCancelEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var touchend : ts.AnyOf3<Bool, Dynamic, (t:TouchEndEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var touchmove : ts.AnyOf3<Bool, Dynamic, (t:TouchMoveEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var touchstart : ts.AnyOf3<Bool, Dynamic, (t:TouchStartEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var blur : ts.AnyOf3<Bool, Dynamic, (t:BlurEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var focus : ts.AnyOf3<Bool, Dynamic, (t:FocusEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var focusin : ts.AnyOf3<Bool, Dynamic, (t:FocusInEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	@:optional
	var focusout : ts.AnyOf3<Bool, Dynamic, (t:FocusOutEvent<TDelegateTarget, TData, TCurrentTarget, TTarget>, args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
};