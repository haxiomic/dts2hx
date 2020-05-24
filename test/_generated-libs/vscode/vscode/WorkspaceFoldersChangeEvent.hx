package vscode;

/**
	An event describing a change to the set of [workspace folders](#workspace.workspaceFolders).
**/
typedef WorkspaceFoldersChangeEvent = {
	/**
		Added workspace folders.
	**/
	final added : haxe.ds.ReadOnlyArray<WorkspaceFolder>;
	/**
		Removed workspace folders.
	**/
	final removed : haxe.ds.ReadOnlyArray<WorkspaceFolder>;
};