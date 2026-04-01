package unit.symbols;

@:jsRequire("./unit/symbols", "MergedInterfaceClass") extern class MergedInterfaceClass extends BaseClass {
	function new();
	var interfaceField1 : Float;
	var interfaceField2 : Float;
	var classField : String;
	/**
		Redefine a base interface field
	**/
	function baseInterfaceMethod():Float;
	/**
		Redefine a base class field
	**/
	function baseClassMethod():Float;
	var baseInterfaceField : Float;
	static var prototype : MergedInterfaceClass;
}