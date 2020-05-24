package vscode;

/**
	Defines a port mapping used for localhost inside the webview.
**/
typedef WebviewPortMapping = {
	/**
		Localhost port to remap inside the webview.
	**/
	final webviewPort : Float;
	/**
		Destination port. The `webviewPort` is resolved to this port.
	**/
	final extensionHostPort : Float;
};