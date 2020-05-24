package vscode;

/**
	Comment mode of a [comment](#Comment)
**/
@:jsRequire("vscode", "CommentMode") @:enum extern abstract CommentMode(Int) from Int to Int {
	/**
		Displays the comment editor
	**/
	var Editing;
	/**
		Displays the preview of the comment
	**/
	var Preview;
}