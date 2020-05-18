package js.lib;

typedef ReferenceErrorConstructor = {
	@:selfCall
	function call(?message:String):js.lib.Error.ReferenceError;
	final prototype : js.lib.Error.ReferenceError;
};