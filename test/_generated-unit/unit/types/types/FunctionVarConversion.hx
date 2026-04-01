package unit.types.types;

typedef FunctionVarConversion = {
	@:overload(function(p:Bool):Float { })
	dynamic function exampleWithOverload(p:String):Float;
	@:optional
	@:overload(function(p:Bool):Float { })
	dynamic function nullableExampleWithOverload(p:String):Float;
	@:optional
	@:overload(function(p:Bool):Float { })
	dynamic function optionalExampleWithOverload(p:String):Float;
};