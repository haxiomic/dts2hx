package vscode;

/**
	Represents an extension.
	
	To get an instance of an `Extension` use [getExtension](#extensions.getExtension).
**/
typedef Extension<T> = {
	/**
		The canonical extension identifier in the form of: `publisher.name`.
	**/
	final id : String;
	/**
		The uri of the directory containing the extension.
	**/
	final extensionUri : Uri;
	/**
		The absolute file path of the directory containing this extension. Shorthand
		notation for [Extension.extensionUri.fsPath](#Extension.extensionUri) (independent of the uri scheme).
	**/
	final extensionPath : String;
	/**
		`true` if the extension has been activated.
	**/
	final isActive : Bool;
	/**
		The parsed contents of the extension's package.json.
	**/
	final packageJSON : Dynamic;
	/**
		The extension kind describes if an extension runs where the UI runs
		or if an extension runs where the remote extension host runs. The extension kind
		is defined in the `package.json`-file of extensions but can also be refined
		via the `remote.extensionKind`-setting. When no remote extension host exists,
		the value is [`ExtensionKind.UI`](#ExtensionKind.UI).
	**/
	var extensionKind : ExtensionKind;
	/**
		The public API exported by this extension. It is an invalid action
		to access this field before this extension has been activated.
	**/
	final exports : T;
	/**
		Activates this extension and returns its public API.
	**/
	function activate():global.Thenable<T>;
};