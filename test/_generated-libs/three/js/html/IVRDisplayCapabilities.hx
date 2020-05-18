package js.html;

/**
	This WebVR API interface describes the capabilities of a VRDisplay — its features can be used to perform VR device capability tests, for example can it return position information.
**/
typedef IVRDisplayCapabilities = {
	final canPresent : Bool;
	final hasExternalDisplay : Bool;
	final hasOrientation : Bool;
	final hasPosition : Bool;
	final maxLayers : Float;
};