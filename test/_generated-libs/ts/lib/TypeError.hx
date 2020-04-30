package ts.lib;
@:native("TypeError") extern class TypeError {
	function new(?message:String);
	@:selfCall
	static function call(?message:String):ITypeError;
	static final prototype : ITypeError;
}