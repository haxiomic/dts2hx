package vscode;

/**
	A document highlight kind.
**/
@:jsRequire("vscode", "DocumentHighlightKind") extern enum abstract DocumentHighlightKind(Int) from Int to Int {
	/**
		A textual occurrence.
	**/
	final Text;
	/**
		Read-access of a symbol, like reading a variable.
	**/
	final Read;
	/**
		Write-access of a symbol, like writing to a variable.
	**/
	final Write;
}