package unit;



@:native('BaseClass')
extern class BaseClass {
	var intField: Float;
	var arrayField: Array<String>;
	var thisClassType: unit.BaseClass;
	final readonlyField: Float;
	function method(a: Float, b: String): Any;
	@:overload(function(a: String, b: Array<{}>): Any { })
	function methodOverloaded(a: Float): Any;
}

