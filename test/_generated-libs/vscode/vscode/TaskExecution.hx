package vscode;

/**
	An object representing an executed Task. It can be used
	to terminate a task.
	
	This interface is not intended to be implemented.
**/
typedef TaskExecution = {
	/**
		The task that got started.
	**/
	var task : Task;
	/**
		Terminates the task execution.
	**/
	function terminate():Void;
};