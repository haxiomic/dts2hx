package ts.html;
extern typedef IInputDeviceInfo = {
	function getCapabilities():MediaTrackCapabilities;
	final deviceId : String;
	final groupId : String;
	final kind : String;
	final label : String;
	function toJSON():Any;
};