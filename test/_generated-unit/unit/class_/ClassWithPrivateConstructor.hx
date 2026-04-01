package unit.class_;

@:jsRequire("./unit/class", "ClassWithPrivateConstructor") extern class ClassWithPrivateConstructor {
	private function new(arg:String);
	static var prototype : ClassWithPrivateConstructor;
	static function create():ClassWithPrivateConstructor;
}