package vscode;

/**
	The event that is fired when there is a change in [tree view's selection](#TreeView.selection)
**/
typedef TreeViewSelectionChangeEvent<T> = {
	/**
		Selected elements.
	**/
	final selection : Array<T>;
};