package unit.class_;

@:jsRequire("./unit/class", "ClassExtendsWithRedefine") extern class ClassExtendsWithRedefine extends ClassBase<Float, Bool> {
	function method():Array<String>;
	static var prototype : ClassExtendsWithRedefine;
}