package js.html;
/**
	Provides information about the rate at which the device is rotating around all three axes.
**/
@:native("DeviceRotationRate") @tsInterface extern class DeviceRotationRate {
	function new();
	final alpha : Null<Float>;
	final beta : Null<Float>;
	final gamma : Null<Float>;
	static var prototype : DeviceRotationRate;
}