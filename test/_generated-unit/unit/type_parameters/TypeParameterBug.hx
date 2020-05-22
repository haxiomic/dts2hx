package unit.type_parameters;

@:jsRequire("./unit/type-parameters", "TypeParameterBug") extern class TypeParameterBug {
	function new();
	function parse<X>(a:X):X;
	static var prototype : TypeParameterBug;
}