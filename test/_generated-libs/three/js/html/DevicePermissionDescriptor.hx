package js.html;
extern interface DevicePermissionDescriptor extends PermissionDescriptor {
	@:optional
	var deviceId : String;
	var name : String;
}