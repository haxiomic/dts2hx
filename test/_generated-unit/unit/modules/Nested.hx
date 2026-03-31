package unit.modules;

@:jsRequire("./unit/modules", "Nested") @valueModuleOnly extern class Nested {
	static function create():unit.modules.nested.Inner;
}