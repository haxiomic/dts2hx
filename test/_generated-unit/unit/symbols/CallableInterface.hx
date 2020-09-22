package unit.symbols;

@:jsRequire("./unit/symbols", "CallableInterface") extern class CallableInterface {
	@:selfCall
	function call(anotherSignature:Dynamic):Float;
	@:overload(function():Float { })
	@:selfCall
	static function call_(overloadParam:Float):Float;
	var field : String;
}