package vscode;

/**
	The configuration target
**/
@:jsRequire("vscode", "ConfigurationTarget") @:enum extern abstract ConfigurationTarget(Int) from Int to Int {
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