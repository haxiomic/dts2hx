package js.html;
extern typedef DeviceMotionEventInit = EventInit & { @:optional
	var acceleration : DeviceMotionEventAccelerationInit; @:optional
	var accelerationIncludingGravity : DeviceMotionEventAccelerationInit; @:optional
	var interval : Float; @:optional
	var rotationRate : DeviceMotionEventRotationRateInit; };