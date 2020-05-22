package unit.class_;

/**
	Should add `public function new()`
**/
@:jsRequire("./unit/class", "ClassWithoutExplicitConstructor") extern class ClassWithoutExplicitConstructor {
	function new();
	static var prototype : ClassWithoutExplicitConstructor;
}