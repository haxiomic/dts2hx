package js.html;
/**
	The MediaDevicesInfo interface contains information that describes a single media input or output device.
**/
@:native("MediaDeviceInfo") @tsInterface extern class MediaDeviceInfo {
	function new();
	final deviceId : String;
	final groupId : String;
	final kind : String;
	final label : String;
	function toJSON():Any;
	static var prototype : MediaDeviceInfo;
}