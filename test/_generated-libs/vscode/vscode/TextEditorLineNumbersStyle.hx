package vscode;

/**
	Rendering style of the line numbers.
**/
@:jsRequire("vscode", "TextEditorLineNumbersStyle") extern enum abstract TextEditorLineNumbersStyle(Int) from Int to Int {
	/**
		Do not render the line numbers.
	**/
	final Off;
	/**
		Render the line numbers.
	**/
	final On;
	/**
		Render the line numbers with values relative to the primary cursor location.
	**/
	final Relative;
}