package vscode;

/**
	Options to configure the behaviour of the [workspace folder](#WorkspaceFolder) pick UI.
**/
typedef WorkspaceFolderPickOptions = {
	/**
		An optional string to show as placeholder in the input box to guide the user what to pick on.
	**/
	@:optional
	var placeHolder : String;
	/**
		Set to `true` to keep the picker open when focus moves to another part of the editor or to another window.
	**/
	@:optional
	var ignoreFocusOut : Bool;
};