package global.jquery;

typedef TypeEventHandlers<TDelegateTarget, TData, TCurrentTarget, TTarget> = {
	@:optional
	var change : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var resize : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var scroll : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var select : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var submit : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var click : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var contextmenu : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var dblclick : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var mousedown : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var mouseenter : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var mouseleave : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var mousemove : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var mouseout : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var mouseover : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var mouseup : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var keydown : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var keypress : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var keyup : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var touchcancel : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var touchend : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var touchmove : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var touchstart : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var blur : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var focus : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var focusin : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
	@:optional
	var focusout : ts.AnyOf3<Bool, Dynamic, TypeEventHandler<TDelegateTarget, TData, TCurrentTarget, TTarget, String>>;
};