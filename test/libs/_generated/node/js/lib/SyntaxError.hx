package js.lib;
@:native("SyntaxError") @:interface extern class SyntaxError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : Null<String>;
	@:selfCall
	static function call(?message:String):SyntaxError;
	static final prototype : SyntaxError;
}