package vscode;

/**
	Collapsible state of the tree item
**/
@:jsRequire("vscode", "TreeItemCollapsibleState") extern enum abstract TreeItemCollapsibleState(Int) from Int to Int {
	/**
		Determines an item can be neither collapsed nor expanded. Implies it has no children.
	**/
	final None;
	/**
		Determines an item is collapsed
	**/
	final Collapsed;
	/**
		Determines an item is expanded
	**/
	final Expanded;
}