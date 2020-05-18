package js.lib;

typedef URIErrorConstructor = {
	@:selfCall
	function call(?message:String):js.lib.Error.URIError;
	final prototype : js.lib.Error.URIError;
};