package js.html;
@:native("PermissionRequest") @tsInterface extern class PermissionRequest {
	function new();
	final state : String;
	function defer():Void;
	final id : Float;
	final type : String;
	final uri : String;
	function allow():Void;
	function deny():Void;
	static var prototype : PermissionRequest;
}