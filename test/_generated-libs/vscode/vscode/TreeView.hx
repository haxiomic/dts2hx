package vscode;

/**
	Represents a Tree view
**/
typedef TreeView<T> = {
	/**
		Event that is fired when an element is expanded
	**/
	function onDidExpandElement(listener:(e:TreeViewExpansionEvent<T>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Event that is fired when an element is collapsed
	**/
	function onDidCollapseElement(listener:(e:TreeViewExpansionEvent<T>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Currently selected elements.
	**/
	final selection : Array<T>;
	/**
		Event that is fired when the [selection](#TreeView.selection) has changed
	**/
	function onDidChangeSelection(listener:(e:TreeViewSelectionChangeEvent<T>) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		`true` if the [tree view](#TreeView) is visible otherwise `false`.
	**/
	final visible : Bool;
	/**
		Event that is fired when [visibility](#TreeView.visible) has changed
	**/
	function onDidChangeVisibility(listener:(e:TreeViewVisibilityChangeEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		An optional human-readable message that will be rendered in the view.
		Setting the message to null, undefined, or empty string will remove the message from the view.
	**/
	@:optional
	var message : String;
	/**
		The tree view title is initially taken from the extension package.json
		Changes to the title property will be properly reflected in the UI in the title of the view.
	**/
	@:optional
	var title : String;
	/**
		Reveals the given element in the tree view.
		If the tree view is not visible then the tree view is shown and element is revealed.
		
		By default revealed element is selected.
		In order to not to select, set the option `select` to `false`.
		In order to focus, set the option `focus` to `true`.
		In order to expand the revealed element, set the option `expand` to `true`. To expand recursively set `expand` to the number of levels to expand.
		**NOTE:** You can expand only to 3 levels maximum.
		
		**NOTE:** [TreeDataProvider](#TreeDataProvider) is required to implement [getParent](#TreeDataProvider.getParent) method to access this API.
	**/
	function reveal(element:T, ?options:{ @:optional var select : Bool; @:optional var focus : Bool; @:optional var expand : ts.AnyOf2<Float, Bool>; }):global.Thenable<ts.Undefined>;
	/**
		Dispose this object.
	**/
	function dispose():Dynamic;
};