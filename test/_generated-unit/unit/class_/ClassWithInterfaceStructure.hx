package unit.class_;

@:jsRequire("./unit/class", "ClassWithInterfaceStructure") extern class ClassWithInterfaceStructure {
	function new();
	var interfaceField : String;
	var classField : Float;
	static var prototype : ClassWithInterfaceStructure;
}