package ts.html;
@:native("DeferredPermissionRequest") extern class DeferredPermissionRequest {
	function new();
	final id : Float;
	final type : MSWebViewPermissionType;
	final uri : String;
	function allow():Void;
	function deny():Void;
	static var prototype : IDeferredPermissionRequest;
}