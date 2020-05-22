package unit.symbols;

@:jsRequire("./unit/symbols", "BaseClass") extern class BaseClass {
	function new();
	var baseClassField : Float;
	function baseClassMethod():Void;
	static var prototype : BaseClass;
}