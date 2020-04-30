package ts.html;
/**
	This WebVR API interface represents represents the event object of WebVR-related events (see the list of WebVR window extensions).
**/
@:native("VRDisplayEvent") extern class VRDisplayEvent {
	function new(type:String, eventInitDict:VRDisplayEventInit);
	final display : ts.lib.IVRDisplay;
	final reason : Null<String>;
	static var prototype : IVRDisplayEvent;
}