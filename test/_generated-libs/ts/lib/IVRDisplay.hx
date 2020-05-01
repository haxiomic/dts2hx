package ts.lib;
/**
	This WebVR API interface represents any VR device supported by this API. It includes generic information such as device IDs and descriptions, as well as methods for starting to present a VR scene, retrieving eye parameters and display capabilities, and other important functionality.
**/
typedef IVRDisplay = {
	final capabilities : ts.html.IVRDisplayCapabilities;
	var depthFar : Float;
	var depthNear : Float;
	final displayId : Float;
	final displayName : String;
	final isConnected : Bool;
	final isPresenting : Bool;
	final stageParameters : Null<ts.html.VRStageParameters>;
	function cancelAnimationFrame(handle:Float):Void;
	function exitPresent():IPromise<Void>;
	function getEyeParameters(whichEye:String):ts.html.IVREyeParameters;
	function getFrameData(frameData:ts.html.IVRFrameData):Bool;
	function getLayers():std.Array<ts.html.VRLayer>;
	function getPose():ts.html.IVRPose;
	function requestAnimationFrame(callback:ts.html.FrameRequestCallback):Float;
	@:overload(function(layers:Iterable<ts.html.VRLayer>):IPromise<Void> { })
	function requestPresent(layers:std.Array<ts.html.VRLayer>):IPromise<Void>;
	function resetPose():Void;
	function submitFrame(?pose:ts.html.IVRPose):Void;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	function addEventListener(type:String, listener:Null<ts.AnyOf2<ts.html.EventListener, ts.html.EventListenerObject>>, ?options:ts.AnyOf2<Bool, ts.html.AddEventListenerOptions>):Void;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:ts.html.IEvent):Bool;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	function removeEventListener(type:String, callback:Null<ts.AnyOf2<ts.html.EventListener, ts.html.EventListenerObject>>, ?options:ts.AnyOf2<Bool, ts.html.EventListenerOptions>):Void;
};