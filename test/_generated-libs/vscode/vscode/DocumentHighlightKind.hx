package vscode;

/**
	A document highlight kind.
**/
@:jsRequire("vscode", "DocumentHighlightKind") extern enum abstract DocumentHighlightKind(Int) from Int to Int {
	/**
		A textual occurrence.
	**/
	var Text;
	/**
		Read-access of a symbol, like reading a variable.
	**/
	var Read;
	/**
		Write-access of a symbol, like writing to a variable.
	**/
	var Write;
}