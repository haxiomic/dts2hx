package js.lib;
extern interface ReferenceErrorConstructor {
	@:selfCall
	function call(?message:String):ReferenceError;
	final prototype : ReferenceError;
}