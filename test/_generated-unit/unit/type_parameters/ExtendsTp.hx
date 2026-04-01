package unit.type_parameters;

@:jsRequire("./unit/type-parameters", "ExtendsTp") extern class ExtendsTp<X, T> {
	function new();
	var field : T;
	static var prototype : ExtendsTp<Dynamic, Dynamic>;
}