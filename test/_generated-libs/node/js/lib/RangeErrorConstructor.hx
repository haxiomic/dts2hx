package js.lib;
extern interface RangeErrorConstructor {
	@:selfCall
	function call(?message:String):RangeError;
	final prototype : RangeError;
}