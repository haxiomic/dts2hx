package vscode;

/**
	An extension context is a collection of utilities private to an
	extension.
	
	An instance of an `ExtensionContext` is provided as the first
	parameter to the `activate`-call of an extension.
**/
typedef ExtensionContext = {
	/**
		An array to which disposables can be added. When this
		extension is deactivated the disposables will be disposed.
	**/
	final subscriptions : Array<{
		function dispose():Dynamic;
	}>;
	/**
		A memento object that stores state in the context
		of the currently opened [workspace](#workspace.workspaceFolders).
	**/
	final workspaceState : Memento;
	/**
		A memento object that stores state independent
		of the current opened [workspace](#workspace.workspaceFolders).
	**/
	final globalState : Memento;
	/**
		The uri of the directory containing the extension.
	**/
	final extensionUri : Uri;
	/**
		The absolute file path of the directory containing the extension. Shorthand
		notation for [ExtensionContext.extensionUri.fsPath](#TextDocument.uri) (independent of the uri scheme).
	**/
	final extensionPath : String;
	/**
		Get the absolute path of a resource contained in the extension.
	**/
	function asAbsolutePath(relativePath:String):String;
	/**
		An absolute file path of a workspace specific directory in which the extension
		can store private state. The directory might not exist on disk and creation is
		up to the extension. However, the parent directory is guaranteed to be existent.
		
		Use [`workspaceState`](#ExtensionContext.workspaceState) or
		[`globalState`](#ExtensionContext.globalState) to store key value data.
	**/
	final storagePath : Null<String>;
	/**
		An absolute file path in which the extension can store global state.
		The directory might not exist on disk and creation is
		up to the extension. However, the parent directory is guaranteed to be existent.
		
		Use [`globalState`](#ExtensionContext.globalState) to store key value data.
	**/
	final globalStoragePath : String;
	/**
		An absolute file path of a directory in which the extension can create log files.
		The directory might not exist on disk and creation is up to the extension. However,
		the parent directory is guaranteed to be existent.
	**/
	final logPath : String;
};