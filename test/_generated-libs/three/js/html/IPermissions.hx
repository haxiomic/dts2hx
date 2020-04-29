package js.html;
extern typedef IPermissions = {
	function query(permissionDesc:haxe.extern.EitherType<PermissionDescriptor, haxe.extern.EitherType<DevicePermissionDescriptor, haxe.extern.EitherType<MidiPermissionDescriptor, PushPermissionDescriptor>>>):js.lib.IPromise<IPermissionStatus>;
};