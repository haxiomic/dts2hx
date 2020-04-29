package js.lib;
@:native("Error") extern class Error {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	@:selfCall
	static function call(?message:String):IError;
	static final prototype : IError;
}