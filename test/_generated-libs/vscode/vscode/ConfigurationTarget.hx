package vscode;

/**
	The configuration target
**/
@:jsRequire("vscode", "ConfigurationTarget") extern enum abstract ConfigurationTarget(Int) from Int to Int {
	/**
		Global configuration
	**/
	final Global;
	/**
		Workspace configuration
	**/
	final Workspace;
	/**
		Workspace folder configuration
	**/
	final WorkspaceFolder;
}