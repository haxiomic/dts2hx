package unit.type_parameters;

@:jsRequire("./unit/type-parameters", "ExtendsTpEnum") extern class ExtendsTpEnum<T> {
	function new();
	var field : T;
	static var prototype : ExtendsTpEnum<Dynamic>;
}