package js.html;
@:native("DeferredPermissionRequest") @tsInterface extern class DeferredPermissionRequest {
	function new();
	final id : Float;
	final type : String;
	final uri : String;
	function allow():Void;
	function deny():Void;
	static var prototype : DeferredPermissionRequest;
}