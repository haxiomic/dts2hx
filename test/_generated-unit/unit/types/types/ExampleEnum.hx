package unit.types.types;

@:jsRequire("./unit/types", "Types.ExampleEnum") @:enum extern abstract ExampleEnum(Int) from Int to Int {
	var A;
	var B;
	var C;
}