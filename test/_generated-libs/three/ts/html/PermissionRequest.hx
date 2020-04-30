package ts.html;
@:native("PermissionRequest") extern class PermissionRequest {
	function new();
	final state : String;
	function defer():Void;
	final id : Float;
	final type : String;
	final uri : String;
	function allow():Void;
	function deny():Void;
	static var prototype : IPermissionRequest;
}