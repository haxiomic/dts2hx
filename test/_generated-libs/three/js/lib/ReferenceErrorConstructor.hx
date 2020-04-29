package js.lib;
extern typedef ReferenceErrorConstructor = {
	@:selfCall
	function call(?message:String):IReferenceError;
	final prototype : IReferenceError;
};