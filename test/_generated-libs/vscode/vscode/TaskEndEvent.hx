package vscode;

/**
	An event signaling the end of an executed task.
	
	This interface is not intended to be implemented.
**/
typedef TaskEndEvent = {
	/**
		The task item representing the task that finished.
	**/
	final execution : TaskExecution;
};