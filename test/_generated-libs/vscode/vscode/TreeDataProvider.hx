package vscode;

/**
	A data provider that provides tree data
**/
typedef TreeDataProvider<T> = {
	/**
		An optional event to signal that an element or root has changed.
		This will trigger the view to update the changed element/root and its children recursively (if shown).
		To signal that root has changed, do not pass any argument or pass `undefined` or `null`.
	**/
	@:optional
	dynamic function onDidChangeTreeData(listener:(e:Null<ts.AnyOf2<ts.Undefined, T>>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Get [TreeItem](#TreeItem) representation of the `element`
	**/
	function getTreeItem(element:T):ts.AnyOf2<TreeItem, global.Thenable<TreeItem>>;
	/**
		Get the children of `element` or root if no element is passed.
	**/
	function getChildren(?element:T):ProviderResult<Array<T>>;
	/**
		Optional method to return the parent of `element`.
		Return `null` or `undefined` if `element` is a child of root.
		
		**NOTE:** This method should be implemented in order to access [reveal](#TreeView.reveal) API.
	**/
	@:optional
	function getParent(element:T):ProviderResult<T>;
};