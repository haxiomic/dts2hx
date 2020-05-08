package ts.html;
/**
	The MediaDevicesInfo interface contains information that describes a single media input or output device.
**/
@:native("MediaDeviceInfo") extern class MediaDeviceInfo {
	function new();
	final deviceId : String;
	final groupId : String;
	final kind : MediaDeviceKind;
	final label : String;
	function toJSON():Dynamic;
	static var prototype : MediaDeviceInfo;
}