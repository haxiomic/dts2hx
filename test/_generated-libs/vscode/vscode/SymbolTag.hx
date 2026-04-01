package vscode;

/**
	Symbol tags are extra annotations that tweak the rendering of a symbol.
**/
@:jsRequire("vscode", "SymbolTag") extern enum abstract SymbolTag(Int) from Int to Int {
	/**
		Render a symbol as obsolete, usually using a strike-out.
	**/
	var Deprecated;
}