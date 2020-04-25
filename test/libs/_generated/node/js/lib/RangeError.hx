package js.lib;
@:native("RangeError") @:interface extern class RangeError {
	function new(?message:String);
	var name : String;
	var message : String;
	@:optional
	var stack : Null<String>;
	@:selfCall
	static function call(?message:String):RangeError;
	static final prototype : RangeError;
}