package unit.types.types;

@:jsRequire("./unit/types", "Types.ExampleEnum") extern enum abstract ExampleEnum(Int) from Int to Int {
	final A;
	final B;
	final C;
}