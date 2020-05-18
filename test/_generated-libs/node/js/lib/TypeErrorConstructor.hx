package js.lib;

typedef TypeErrorConstructor = {
	@:selfCall
	function call(?message:String):js.lib.Error.TypeError;
	final prototype : js.lib.Error.TypeError;
};