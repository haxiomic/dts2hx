package unit.symbols;
typedef CallableInterface = {
	@:selfCall
	function call_(anotherSignature:Dynamic):Float;
	@:overload(function():Float { })
	@:selfCall
	function call(overloadParam:Float):Float;
	var field : String;
};