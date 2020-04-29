package js.html;
@:native("InputDeviceInfo") extern class InputDeviceInfo {
	function new();
	function getCapabilities():MediaTrackCapabilities;
	final deviceId : String;
	final groupId : String;
	final kind : String;
	final label : String;
	function toJSON():Any;
	static var prototype : IInputDeviceInfo;
}