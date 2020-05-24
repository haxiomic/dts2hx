package vscode;

/**
	Describes what to do when pressing Enter.
**/
typedef EnterAction = {
	/**
		Describe what to do with the indentation.
	**/
	var indentAction : IndentAction;
	/**
		Describes text to be appended after the new line and after the indentation.
	**/
	@:optional
	var appendText : String;
	/**
		Describes the number of characters to remove from the new line's indentation.
	**/
	@:optional
	var removeText : Float;
};