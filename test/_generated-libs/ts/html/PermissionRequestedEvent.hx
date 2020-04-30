package ts.html;
@:native("PermissionRequestedEvent") extern class PermissionRequestedEvent {
	function new();
	final permissionRequest : IPermissionRequest;
	static var prototype : IPermissionRequestedEvent;
}