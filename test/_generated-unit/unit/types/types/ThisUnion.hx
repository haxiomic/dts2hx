package unit.types.types;
@:jsRequire("./unit/types", "Types.ThisUnion") extern class ThisUnion {
	var thisOrString : ts.AnyOf2<String, ThisUnion>;
}