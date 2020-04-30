package ts.html;
extern typedef IDeferredPermissionRequest = {
	final id : Float;
	final type : String;
	final uri : String;
	function allow():Void;
	function deny():Void;
};