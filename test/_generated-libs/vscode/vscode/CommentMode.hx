package vscode;

/**
	Comment mode of a [comment](#Comment)
**/
@:jsRequire("vscode", "CommentMode") extern enum abstract CommentMode(Int) from Int to Int {
	/**
		Displays the comment editor
	**/
	final Editing;
	/**
		Displays the preview of the comment
	**/
	final Preview;
}