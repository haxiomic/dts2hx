package ts.html;
/**
	The DeviceLightEvent provides web developers with information from photo sensors or similiar detectors about ambient light levels near the device. For example this may be useful to adjust the screen's brightness based on the current ambient light level in order to save energy or provide better readability.
**/
@:native("DeviceLightEvent") extern class DeviceLightEvent {
	function new(typeArg:String, ?eventInitDict:DeviceLightEventInit);
	final value : Float;
	static var prototype : IDeviceLightEvent;
}