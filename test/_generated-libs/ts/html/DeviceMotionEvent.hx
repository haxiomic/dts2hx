package ts.html;
/**
	The DeviceMotionEvent provides web developers with information about the speed of changes for the device's position and orientation.
**/
@:native("DeviceMotionEvent") extern class DeviceMotionEvent {
	function new(type:String, ?eventInitDict:DeviceMotionEventInit);
	final acceleration : Null<DeviceMotionEventAcceleration>;
	final accelerationIncludingGravity : Null<DeviceMotionEventAcceleration>;
	final interval : Float;
	final rotationRate : Null<DeviceMotionEventRotationRate>;
	static var prototype : IDeviceMotionEvent;
}