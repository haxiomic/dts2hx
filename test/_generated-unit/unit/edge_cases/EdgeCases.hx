package unit.edge_cases;

/**
	Edge cases and tricky patterns that have caused issues.
**/
@:jsRequire("./unit/edge-cases", "EdgeCases") @valueModuleOnly extern class EdgeCases {
	static function returnsVoidUnion():String;
	static final sym : js.lib.Symbol;
	static final _ : String;
	static final voidUnion : Float;
}