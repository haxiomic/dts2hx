package ts.html;
@:native("PermissionRequest") extern class PermissionRequest {
	function new();
	final state : MSWebViewPermissionState;
	function defer():Void;
	final id : Float;
	final type : MSWebViewPermissionType;
	final uri : String;
	function allow():Void;
	function deny():Void;
	static var prototype : IPermissionRequest;
}