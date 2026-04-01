package vscode;

/**
	Describes what to do with the indentation when pressing Enter.
**/
@:jsRequire("vscode", "IndentAction") extern enum abstract IndentAction(Int) from Int to Int {
	/**
		Insert new line and copy the previous line's indentation.
	**/
	var None;
	/**
		Insert new line and indent once (relative to the previous line's indentation).
	**/
	var Indent;
	/**
		Insert two new lines:
		 - the first one indented which will hold the cursor
		 - the second one at the same indentation level
	**/
	var IndentOutdent;
	/**
		Insert new line and outdent once (relative to the previous line's indentation).
	**/
	var Outdent;
}