package vscode;

/**
	The scope of a task.
**/
@:jsRequire("vscode", "TaskScope") @:enum extern abstract TaskScope(Int) from Int to Int {
	/**
		The task is a global task. Global tasks are currrently not supported.
	**/
	var Global;
	/**
		The task is a workspace task
	**/
	var Workspace;
}