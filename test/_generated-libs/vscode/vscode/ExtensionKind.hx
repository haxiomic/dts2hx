package vscode;

/**
	In a remote window the extension kind describes if an extension
	runs where the UI (window) runs or if an extension runs remotely.
**/
@:jsRequire("vscode", "ExtensionKind") extern enum abstract ExtensionKind(Int) from Int to Int {
	/**
		Extension runs where the UI runs.
	**/
	var UI;
	/**
		Extension runs where the remote extension host runs.
	**/
	var Workspace;
}