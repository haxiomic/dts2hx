package unit;

@:jsRequire("./unit/modules") @valueModuleOnly extern class Modules {
	static function simpleFunction():Void;
	/**
		Module pattern coverage: re-exports, namespaces,
		declaration merging, module augmentation.
	**/
	static final simpleConst : String;
	static var simpleLet : Float;
}