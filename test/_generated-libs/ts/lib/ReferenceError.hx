package ts.lib;
@:native("ReferenceError") extern class ReferenceError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):IReferenceError;
	static final prototype : IReferenceError;
}