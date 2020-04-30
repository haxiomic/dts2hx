package ts.html;
/**
	Focus-related events like focus, blur, focusin, or focusout.
**/
@:native("FocusEvent") extern class FocusEvent {
	function new(type:String, ?eventInitDict:FocusEventInit);
	final relatedTarget : Null<IEventTarget>;
	static var prototype : IFocusEvent;
}