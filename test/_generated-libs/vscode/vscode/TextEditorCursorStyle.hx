package vscode;

/**
	Rendering style of the cursor.
**/
@:jsRequire("vscode", "TextEditorCursorStyle") extern enum abstract TextEditorCursorStyle(Int) from Int to Int {
	/**
		Render the cursor as a vertical thick line.
	**/
	var Line;
	/**
		Render the cursor as a block filled.
	**/
	var Block;
	/**
		Render the cursor as a thick horizontal line.
	**/
	var Underline;
	/**
		Render the cursor as a vertical thin line.
	**/
	var LineThin;
	/**
		Render the cursor as a block outlined.
	**/
	var BlockOutline;
	/**
		Render the cursor as a thin horizontal line.
	**/
	var UnderlineThin;
}