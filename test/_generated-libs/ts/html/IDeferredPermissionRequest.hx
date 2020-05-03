package ts.html;
typedef IDeferredPermissionRequest = {
	final id : Float;
	final type : MSWebViewPermissionType;
	final uri : String;
	function allow():Void;
	function deny():Void;
};