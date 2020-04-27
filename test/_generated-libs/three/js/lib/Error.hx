package js.lib;
@:native("Error") @tsInterface extern class Error {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):Error;
	static final prototype : Error;
}