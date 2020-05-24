package js.html;

/**
	This WebVR API interface represents any VR device supported by this API. It includes generic information such as device IDs and descriptions, as well as methods for starting to present a VR scene, retrieving eye parameters and display capabilities, and other important functionality.
**/
@:native("VRDisplay") extern class VRDisplay {
	function new();
	final capabilities : VRDisplayCapabilities;
	var depthFar : Float;
	var depthNear : Float;
	final displayId : Float;
	final displayName : String;
	final isConnected : Bool;
	final isPresenting : Bool;
	final stageParameters : Null<VRStageParameters>;
	function cancelAnimationFrame(handle:Float):Void;
	function exitPresent():js.lib.Promise<Void>;
	function getEyeParameters(whichEye:String):VREyeParameters;
	function getFrameData(frameData:VRFrameData):Bool;
	function getLayers():Array<VRLayer>;
	function getPose():VRPose;
	function requestAnimationFrame(callback:FrameRequestCallback):Float;
	@:overload(function(layers:Iterable<VRLayer>):js.lib.Promise<Void> { })
	function requestPresent(layers:Array<VRLayer>):js.lib.Promise<Void>;
	function resetPose():Void;
	function submitFrame(?pose:VRPose):Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:js.html.Event):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<EventListenerOrEventListenerObject>, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
	static var prototype : VRDisplay;
}