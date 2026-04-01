package vscode;

/**
	Represents the alignment of status bar items.
**/
@:jsRequire("vscode", "StatusBarAlignment") extern enum abstract StatusBarAlignment(Int) from Int to Int {
	/**
		Aligned to the left side.
	**/
	var Left;
	/**
		Aligned to the right side.
	**/
	var Right;
}