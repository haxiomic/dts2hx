package vscode;

/**
	The configuration target
**/
@:jsRequire("vscode", "ConfigurationTarget") extern enum abstract ConfigurationTarget(Int) from Int to Int {
	/**
		Global configuration
	**/
	var Global;
	/**
		Workspace configuration
	**/
	var Workspace;
	/**
		Workspace folder configuration
	**/
	var WorkspaceFolder;
}