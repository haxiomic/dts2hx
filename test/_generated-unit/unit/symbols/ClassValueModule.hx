package unit.symbols;

@:jsRequire("./unit/symbols", "ClassValueModule") extern class ClassValueModule {
	function new(i:Float);
	@:selfCall
	static function call(arg:Float):Dynamic;
	var field : String;
	static var prototype : ClassValueModule;
	static var staticField : Float;
	@:overload(function():Float { })
	static function Fn(overloadParam:Float):Float;
	static final X : Float;
}