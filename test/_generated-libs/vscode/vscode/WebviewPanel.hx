package vscode;

/**
	A panel that contains a webview.
**/
typedef WebviewPanel = {
	/**
		Identifies the type of the webview panel, such as `'markdown.preview'`.
	**/
	final viewType : String;
	/**
		Title of the panel shown in UI.
	**/
	var title : String;
	/**
		Icon for the panel shown in UI.
	**/
	@:optional
	var iconPath : ts.AnyOf2<Uri, {
		var light : Uri;
		var dark : Uri;
	}>;
	/**
		[`Webview`](#Webview) belonging to the panel.
	**/
	final webview : Webview;
	/**
		Content settings for the webview panel.
	**/
	final options : WebviewPanelOptions;
	/**
		Editor position of the panel. This property is only set if the webview is in
		one of the editor view columns.
	**/
	@:optional
	final viewColumn : ViewColumn;
	/**
		Whether the panel is active (focused by the user).
	**/
	final active : Bool;
	/**
		Whether the panel is visible.
	**/
	final visible : Bool;
	/**
		Fired when the panel's view state changes.
	**/
	function onDidChangeViewState(listener:(e:WebviewPanelOnDidChangeViewStateEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Fired when the panel is disposed.
		
		This may be because the user closed the panel or because `.dispose()` was
		called on it.
		
		Trying to use the panel after it has been disposed throws an exception.
	**/
	function onDidDispose(listener:(e:ts.Undefined) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Show the webview panel in a given column.
		
		A webview panel may only show in a single column at a time. If it is already showing, this
		method moves it to a new column.
	**/
	function reveal(?viewColumn:ViewColumn, ?preserveFocus:Bool):Void;
	/**
		Dispose of the webview panel.
		
		This closes the panel if it showing and disposes of the resources owned by the webview.
		Webview panels are also disposed when the user closes the webview panel. Both cases
		fire the `onDispose` event.
	**/
	function dispose():Dynamic;
};