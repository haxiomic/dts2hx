package vscode;

/**
	The event that is fired when an element in the [TreeView](#TreeView) is expanded or collapsed
**/
typedef TreeViewExpansionEvent<T> = {
	/**
		Element that is expanded or collapsed.
	**/
	final element : T;
};