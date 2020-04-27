package js.html;
extern interface PushPermissionDescriptor extends PermissionDescriptor {
	var name : String;
	@:optional
	var userVisibleOnly : Bool;
}