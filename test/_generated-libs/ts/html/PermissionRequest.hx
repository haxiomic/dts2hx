package ts.html;
@:native("PermissionRequest") extern class PermissionRequest {
	function new();
	final state : String;
	function defer():Void;
	static var prototype : IPermissionRequest;
}