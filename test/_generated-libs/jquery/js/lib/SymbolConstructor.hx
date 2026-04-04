package js.lib;

@:forward
abstract SymbolConstructor(SymbolConstructorTypedef) from SymbolConstructorTypedef to SymbolConstructorTypedef {
	/**
		Returns a Symbol object from the global symbol registry matching the given key if found.
		Otherwise, returns a new symbol with this key.
	**/
	public var for_(get, set):String -> js.lib.Symbol;
	inline function get_for_():String -> js.lib.Symbol return js.Syntax.field(cast this, 'for');
	inline function set_for_(v:String -> js.lib.Symbol):String -> js.lib.Symbol { js.Syntax.code("{0}[{1}] = {2}", this, 'for', v); return v; }
	@:selfCall
	inline function call(?description:ts.AnyOf2<String, Float>):js.lib.Symbol return (cast this : SymbolConstructorTypedef).call(description);
}
