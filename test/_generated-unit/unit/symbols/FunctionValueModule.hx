package unit.symbols;

@:jsRequire("./unit/symbols", "FunctionValueModule") @valueModuleOnly extern class FunctionValueModule {
	@:selfCall
	static function call():Float;
	static final X : Float;
}