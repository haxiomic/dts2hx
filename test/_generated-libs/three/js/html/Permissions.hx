package js.html;
@:native("Permissions") extern class Permissions {
	function new();
	function query(permissionDesc:haxe.extern.EitherType<PermissionDescriptor, haxe.extern.EitherType<DevicePermissionDescriptor, haxe.extern.EitherType<MidiPermissionDescriptor, PushPermissionDescriptor>>>):js.lib.IPromise<IPermissionStatus>;
	static var prototype : IPermissions;
}