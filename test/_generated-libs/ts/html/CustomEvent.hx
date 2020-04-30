package ts.html;
@:native("CustomEvent") extern class CustomEvent<T> {
	function new(typeArg:String, ?eventInitDict:CustomEventInit<T>);
	/**
		Returns any custom data event was created with. Typically used for synthetic events.
	**/
	final detail : T;
	function initCustomEvent(typeArg:String, canBubbleArg:Bool, cancelableArg:Bool, detailArg:T):Void;
	static var prototype : ICustomEvent<Any>;
}