package unit.type_parameters;
@:jsRequire("./unit/type-parameters", "TypeParameterBug") extern class TypeParameterBug {
	/**
		Object3D was reported as having a type parameter
	**/
	function parse<X:(String)>(a:X):X;
}