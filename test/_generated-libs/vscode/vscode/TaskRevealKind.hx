package vscode;

/**
	Controls the behaviour of the terminal's visibility.
**/
@:jsRequire("vscode", "TaskRevealKind") extern enum abstract TaskRevealKind(Int) from Int to Int {
	/**
		Always brings the terminal to front if the task is executed.
	**/
	final Always;
	/**
		Only brings the terminal to front if a problem is detected executing the task
		(e.g. the task couldn't be started because).
	**/
	final Silent;
	/**
		The terminal never comes to front when the task is executed.
	**/
	final Never;
}