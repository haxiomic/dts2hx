package unit.class_;

@:jsRequire("./unit/class", "ClassWithValueModule") extern class ClassWithValueModule {
	function new();
	var field : Float;
	static var prototype : ClassWithValueModule;
	static final valueModuleField : String;
}