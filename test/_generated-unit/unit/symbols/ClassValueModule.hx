package unit.symbols;
@:jsRequire("./unit/symbols", "ClassValueModule") @tsInterface extern class ClassValueModule {
	function new(i:Float);
	var field : String;
	static var staticField : Float;
	@:overload(function():Float { })
	static function Fn(overloadParam:Float):Float;
	static var X : Float;
}