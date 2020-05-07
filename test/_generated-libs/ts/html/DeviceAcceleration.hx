package ts.html;
/**
	Provides information about the amount of acceleration the device is experiencing along all three axes.
**/
@:native("DeviceAcceleration") extern class DeviceAcceleration {
	function new();
	final x : Null<Float>;
	final y : Null<Float>;
	final z : Null<Float>;
	static var prototype : DeviceAcceleration;
}