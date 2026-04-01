package vscode;

/**
	Controls how the task channel is used between tasks
**/
@:jsRequire("vscode", "TaskPanelKind") extern enum abstract TaskPanelKind(Int) from Int to Int {
	/**
		Shares a panel with other tasks. This is the default.
	**/
	var Shared;
	/**
		Uses a dedicated panel for this tasks. The panel is not
		shared with other tasks.
	**/
	var Dedicated;
	/**
		Creates a new panel whenever this task is executed.
	**/
	var New;
}