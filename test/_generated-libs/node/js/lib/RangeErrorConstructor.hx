package js.lib;

typedef RangeErrorConstructor = {
	@:selfCall
	function call(?message:String):js.lib.Error.RangeError;
	final prototype : js.lib.Error.RangeError;
};