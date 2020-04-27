package js.html;
@:native("Permissions") @tsInterface extern class Permissions {
	function new();
	function query(permissionDesc:haxe.extern.EitherType<PermissionDescriptor, haxe.extern.EitherType<DevicePermissionDescriptor, haxe.extern.EitherType<MidiPermissionDescriptor, PushPermissionDescriptor>>>):js.lib.Promise<PermissionStatus>;
	static var prototype : Permissions;
}