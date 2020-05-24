package vscode;

/**
	The event that is fired when there is a change in [tree view's visibility](#TreeView.visible)
**/
typedef TreeViewVisibilityChangeEvent = {
	/**
		`true` if the [tree view](#TreeView) is visible otherwise `false`.
	**/
	final visible : Bool;
};