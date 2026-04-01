package unit.types.types;

@:jsRequire("./unit/types", "Types.ThisUnion") extern class ThisUnion {
	function new();
	var thisOrString : ts.AnyOf2<String, ThisUnion>;
	static var prototype : ThisUnion;
}