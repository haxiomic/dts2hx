package unit.type_parameters;
@:jsRequire("./unit/type-parameters", "TypeParameterBug") extern class TypeParameterBug {
	function parse<X:(String)>(a:X):X;
}