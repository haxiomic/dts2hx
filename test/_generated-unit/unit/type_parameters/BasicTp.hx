package unit.type_parameters;

@:jsRequire("./unit/type-parameters", "BasicTp") extern class BasicTp<T, V> {
	function new();
	var field : T;
	var field2 : V;
	static var prototype : BasicTp<Dynamic, Dynamic>;
}