package ts.html;
@:native("InputDeviceInfo") extern class InputDeviceInfo {
	function new();
	function getCapabilities():MediaTrackCapabilities;
	static var prototype : IInputDeviceInfo;
}