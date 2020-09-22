package unit.symbols;

typedef ICallableInterface = {
	@:selfCall
	function call_(anotherSignature:Dynamic):Float;
	@:overload(function():Float { })
	@:selfCall
	function call(overloadParam:Float):Float;
	var field : String;
};