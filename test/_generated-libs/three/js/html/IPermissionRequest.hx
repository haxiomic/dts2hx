package js.html;
extern typedef IPermissionRequest = {
	final state : String;
	function defer():Void;
	final id : Float;
	final type : String;
	final uri : String;
	function allow():Void;
	function deny():Void;
};