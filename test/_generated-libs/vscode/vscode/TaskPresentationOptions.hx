package vscode;

/**
	Controls how the task is presented in the UI.
**/
typedef TaskPresentationOptions = {
	/**
		Controls whether the task output is reveal in the user interface.
		Defaults to `RevealKind.Always`.
	**/
	@:optional
	var reveal : TaskRevealKind;
	/**
		Controls whether the command associated with the task is echoed
		in the user interface.
	**/
	@:optional
	var echo : Bool;
	/**
		Controls whether the panel showing the task output is taking focus.
	**/
	@:optional
	var focus : Bool;
	/**
		Controls if the task panel is used for this task only (dedicated),
		shared between tasks (shared) or if a new panel is created on
		every task execution (new). Defaults to `TaskInstanceKind.Shared`
	**/
	@:optional
	var panel : TaskPanelKind;
	/**
		Controls whether to show the "Terminal will be reused by tasks, press any key to close it" message.
	**/
	@:optional
	var showReuseMessage : Bool;
	/**
		Controls whether the terminal is cleared before executing the task.
	**/
	@:optional
	var clear : Bool;
};