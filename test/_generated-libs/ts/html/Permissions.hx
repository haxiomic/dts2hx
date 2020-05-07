package ts.html;
@:native("Permissions") extern class Permissions {
	function new();
	function query(permissionDesc:ts.AnyOf4<PermissionDescriptor, DevicePermissionDescriptor, MidiPermissionDescriptor, PushPermissionDescriptor>):ts.lib.Promise<PermissionStatus>;
	static var prototype : Permissions;
}