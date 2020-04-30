package ts.html;
@:native("FocusNavigationEvent") extern class FocusNavigationEvent {
	function new(type:String, ?eventInitDict:FocusNavigationEventInit);
	final navigationReason : String;
	final originHeight : Float;
	final originLeft : Float;
	final originTop : Float;
	final originWidth : Float;
	function requestFocus():Void;
	static var prototype : IFocusNavigationEvent;
}