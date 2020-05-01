package ts.html;
typedef IPermissions = {
	function query(permissionDesc:ts.AnyOf4<PermissionDescriptor, DevicePermissionDescriptor, MidiPermissionDescriptor, PushPermissionDescriptor>):ts.lib.IPromise<IPermissionStatus>;
};