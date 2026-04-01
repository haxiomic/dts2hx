package vscode;

/**
	Rendering style of the cursor.
**/
@:jsRequire("vscode", "TextEditorCursorStyle") extern enum abstract TextEditorCursorStyle(Int) from Int to Int {
	/**
		Render the cursor as a vertical thick line.
	**/
	final Line;
	/**
		Render the cursor as a block filled.
	**/
	final Block;
	/**
		Render the cursor as a thick horizontal line.
	**/
	final Underline;
	/**
		Render the cursor as a vertical thin line.
	**/
	final LineThin;
	/**
		Render the cursor as a block outlined.
	**/
	final BlockOutline;
	/**
		Render the cursor as a thin horizontal line.
	**/
	final UnderlineThin;
}