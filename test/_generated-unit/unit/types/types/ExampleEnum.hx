package unit.types.types;

@:jsRequire("./unit/types", "Types.ExampleEnum") extern enum abstract ExampleEnum(Int) from Int to Int {
	var A;
	var B;
	var C;
}