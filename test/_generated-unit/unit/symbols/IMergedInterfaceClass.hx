package unit.symbols;
typedef IMergedInterfaceClass = {
	var interfaceField1 : Float;
	var interfaceField2 : Float;
	var classField : String;
	/**
		Redefine a base interface field
	**/
	function baseInterfaceMethod():Float;
	function baseClassMethod():Void;
	var baseClassField : Float;
	var baseInterfaceField : Float;
};