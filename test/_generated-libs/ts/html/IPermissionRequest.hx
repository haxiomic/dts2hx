package ts.html;
typedef IPermissionRequest = {
	final state : MSWebViewPermissionState;
	function defer():Void;
	final id : Float;
	final type : MSWebViewPermissionType;
	final uri : String;
	function allow():Void;
	function deny():Void;
};