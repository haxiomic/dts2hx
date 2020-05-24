package unit.types.types;

@:jsRequire("./unit/types", "Types.Issue26") extern class Issue26 {
	function new();
	var nonOptionalEnumField : ExampleEnum;
	@:optional
	var optionalEnumField : ExampleEnum;
	var nullOrEnumField : Null<ExampleEnum>;
	var undefinedOrEnumField : Null<ExampleEnum>;
	var undefinedNullEnumField : Null<ExampleEnum>;
	var nonOptionalEnumField2 : StringEnum;
	@:optional
	var optionalEnumField2 : StringEnum;
	var nullOrEnumField2 : Null<StringEnum>;
	var undefinedOrEnumField2 : Null<StringEnum>;
	var undefinedNullEnumField2 : Null<StringEnum>;
	function method(?optionalEnum:ExampleEnum):Null<ExampleEnum>;
	function method2(?optionalEnum:StringEnum):Null<StringEnum>;
	static var prototype : Issue26;
}