package unit;


/**
Generated from: test/unit/class.d.ts:1
**/
@:native('ClassBase')
extern class ClassBase<T> {
	var intField: Float;
	var arrayField: Array<String>;
	var thisClassType: unit.ClassBase;
	var typeParamField: T;
	final readonlyField: Float;
	function new(a: Float);
	function method(a: Float, b: String): Any;
	@:overload(function(a: String, b: Array<{}>): Any { })
	function methodOverloaded(a: Float): Any;
}

