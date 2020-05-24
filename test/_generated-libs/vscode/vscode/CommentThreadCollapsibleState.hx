package vscode;

/**
	Collapsible state of a [comment thread](#CommentThread)
**/
@:jsRequire("vscode", "CommentThreadCollapsibleState") @:enum extern abstract CommentThreadCollapsibleState(Int) from Int to Int {
	/**
		Determines an item is collapsed
	**/
	var Collapsed;
	/**
		Determines an item is expanded
	**/
	var Expanded;
}