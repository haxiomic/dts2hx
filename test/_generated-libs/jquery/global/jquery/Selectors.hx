package global.jquery;

@:forward
abstract Selectors(SelectorsTypedef) from SelectorsTypedef to SelectorsTypedef {
	public var Colon(get, set):global.sizzle.selectors.PseudoFunctions;
	inline function get_Colon():global.sizzle.selectors.PseudoFunctions return js.Syntax.field(cast this, ':');
	inline function set_Colon(v:global.sizzle.selectors.PseudoFunctions):global.sizzle.selectors.PseudoFunctions { js.Syntax.code("{0}[{1}] = {2}", this, ':', v); return v; }
}
