package ts.lib;
typedef ReferenceErrorConstructor = {
	@:selfCall
	function call(?message:String):ReferenceError;
	final prototype : ReferenceError;
};