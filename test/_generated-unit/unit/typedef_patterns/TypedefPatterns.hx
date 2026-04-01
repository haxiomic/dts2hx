package unit.typedef_patterns;

/**
	Test coverage for typedef-related patterns:
	- Callable typedefs (types with call signatures)
	- Constructable typedefs (types with construct signatures)
	- Mixed patterns (call + construct + properties)
	- Abstract wrapper candidates
**/
@:jsRequire("./unit/typedef-patterns", "TypedefPatterns") @valueModuleOnly extern class TypedefPatterns {
	static function createInstance<T>(ctor:unit.typedef_patterns.typedefpatterns.Constructor<T>):T;
	static function createWidget(factory:unit.typedef_patterns.typedefpatterns.WidgetFactory):unit.typedef_patterns.typedefpatterns.Widget;
}