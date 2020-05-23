package unit.types.types;

@:jsRequire("./unit/types", "Types.Issue26") extern class Issue26 {
	function new();
	var nonOptionalEnumField : ExampleEnum;
	@:optional
	var optionalEnumField : ExampleEnum;
	var nullOrEnumField : Null<ExampleEnum>;
	var undefinedOrEnumField : Null<ExampleEnum>;
	var undefinedNullEnumField : Null<ExampleEnum>;
	static var prototype : Issue26;
}