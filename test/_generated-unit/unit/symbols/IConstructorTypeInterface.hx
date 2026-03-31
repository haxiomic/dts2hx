package unit.symbols;

typedef IConstructorTypeInterface = {
	function new(overloadNewParam:String);
	@:selfCall
	function call(interfaceCallParam:Dynamic):Void;
	var interfaceField : Float;
};