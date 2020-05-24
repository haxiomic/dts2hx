package vscode;

typedef TaskFilter = {
	/**
		The task version as used in the tasks.json file.
		The string support the package.json semver notation.
	**/
	@:optional
	var version : String;
	/**
		The task type to return;
	**/
	@:optional
	var type : String;
};