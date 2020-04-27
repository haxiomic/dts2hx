package js.lib;
@:native("ReferenceError") @tsInterface extern class ReferenceError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):ReferenceError;
	static final prototype : ReferenceError;
}