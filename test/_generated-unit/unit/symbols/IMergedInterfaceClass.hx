package unit.symbols;

typedef IMergedInterfaceClass = {
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
	var baseClassField : Float;
	var baseInterfaceField : Float;
};