package ts.lib;
@:native("ReferenceError") extern class ReferenceError {
	function new(?message:String);
	@:selfCall
	static function call(?message:String):IReferenceError;
	static final prototype : IReferenceError;
}