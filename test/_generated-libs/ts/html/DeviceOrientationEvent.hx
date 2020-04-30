package ts.html;
/**
	The DeviceOrientationEvent provides web developers with information from the physical orientation of the device running the web page.
**/
@:native("DeviceOrientationEvent") extern class DeviceOrientationEvent {
	function new(type:String, ?eventInitDict:DeviceOrientationEventInit);
	final absolute : Bool;
	final alpha : Null<Float>;
	final beta : Null<Float>;
	final gamma : Null<Float>;
	static var prototype : IDeviceOrientationEvent;
}