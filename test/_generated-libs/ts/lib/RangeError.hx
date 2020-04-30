package ts.lib;
@:native("RangeError") extern class RangeError {
	function new(?message:String);
	@:selfCall
	static function call(?message:String):IRangeError;
	static final prototype : IRangeError;
}