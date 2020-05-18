package js.html;

/**
	This WebVR API interface describes the capabilities of a VRDisplay — its features can be used to perform VR device capability tests, for example can it return position information.
**/
@:native("VRDisplayCapabilities") extern class VRDisplayCapabilities {
	function new();
	final canPresent : Bool;
	final hasExternalDisplay : Bool;
	final hasOrientation : Bool;
	final hasPosition : Bool;
	final maxLayers : Float;
	static var prototype : VRDisplayCapabilities;
}