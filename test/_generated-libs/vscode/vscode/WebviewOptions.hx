package vscode;

/**
	Content settings for a webview.
**/
typedef WebviewOptions = {
	/**
		Controls whether scripts are enabled in the webview content or not.
		
		Defaults to false (scripts-disabled).
	**/
	@:optional
	final enableScripts : Bool;
	/**
		Controls whether command uris are enabled in webview content or not.
		
		Defaults to false.
	**/
	@:optional
	final enableCommandUris : Bool;
	/**
		Root paths from which the webview can load local (filesystem) resources using the `vscode-resource:` scheme.
		
		Default to the root folders of the current workspace plus the extension's install directory.
		
		Pass in an empty array to disallow access to any local resources.
	**/
	@:optional
	final localResourceRoots : haxe.ds.ReadOnlyArray<Uri>;
	/**
		Mappings of localhost ports used inside the webview.
		
		Port mapping allow webviews to transparently define how localhost ports are resolved. This can be used
		to allow using a static localhost port inside the webview that is resolved to random port that a service is
		running on.
		
		If a webview accesses localhost content, we recommend that you specify port mappings even if
		the `webviewPort` and `extensionHostPort` ports are the same.
		
		*Note* that port mappings only work for `http` or `https` urls. Websocket urls (e.g. `ws://localhost:3000`)
		cannot be mapped to another port.
	**/
	@:optional
	final portMapping : haxe.ds.ReadOnlyArray<WebviewPortMapping>;
};