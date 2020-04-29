package js.html;
extern typedef DeviceMotionEventInit = {
	@:optional
	var acceleration : DeviceMotionEventAccelerationInit;
	@:optional
	var accelerationIncludingGravity : DeviceMotionEventAccelerationInit;
	@:optional
	var interval : Float;
	@:optional
	var rotationRate : DeviceMotionEventRotationRateInit;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};