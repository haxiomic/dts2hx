package vscode;

/**
	An event signaling the start of a process execution
	triggered through a task
**/
typedef TaskProcessStartEvent = {
	/**
		The task execution for which the process got started.
	**/
	final execution : TaskExecution;
	/**
		The underlying process id.
	**/
	final processId : Float;
};