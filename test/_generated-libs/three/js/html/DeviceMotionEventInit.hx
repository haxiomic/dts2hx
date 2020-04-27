package js.html;
extern interface DeviceMotionEventInit extends EventInit {
	@:optional
	var acceleration : DeviceMotionEventAccelerationInit;
	@:optional
	var accelerationIncludingGravity : DeviceMotionEventAccelerationInit;
	@:optional
	var interval : Float;
	@:optional
	var rotationRate : DeviceMotionEventRotationRateInit;
}