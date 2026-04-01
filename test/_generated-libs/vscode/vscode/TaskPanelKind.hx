package vscode;

/**
	Controls how the task channel is used between tasks
**/
@:jsRequire("vscode", "TaskPanelKind") extern enum abstract TaskPanelKind(Int) from Int to Int {
	/**
		Shares a panel with other tasks. This is the default.
	**/
	final Shared;
	/**
		Uses a dedicated panel for this tasks. The panel is not
		shared with other tasks.
	**/
	final Dedicated;
	/**
		Creates a new panel whenever this task is executed.
	**/
	final New;
}