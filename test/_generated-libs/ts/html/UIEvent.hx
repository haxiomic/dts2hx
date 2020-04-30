package ts.html;
/**
	Simple user interface events.
**/
@:native("UIEvent") extern class UIEvent {
	function new(type:String, ?eventInitDict:UIEventInit);
	final detail : Float;
	final view : Null<IWindow>;
	final which : Float;
	static var prototype : IUIEvent;
}