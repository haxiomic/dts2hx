package ts.lib;
/**
	This WebVR API interface represents any VR device supported by this API. It includes generic information such as device IDs and descriptions, as well as methods for starting to present a VR scene, retrieving eye parameters and display capabilities, and other important functionality.
**/
@:native("VRDisplay") extern class VRDisplay {
	function new();
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
	static var prototype : IVRDisplay;
}