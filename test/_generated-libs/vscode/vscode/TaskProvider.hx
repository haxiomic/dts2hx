package vscode;

/**
	A task provider allows to add tasks to the task service.
	A task provider is registered via #tasks.registerTaskProvider.
**/
typedef TaskProvider = {
	/**
		Provides tasks.
	**/
	function provideTasks(?token:CancellationToken):ProviderResult<Array<Task>>;
	/**
		Resolves a task that has no [`execution`](#Task.execution) set. Tasks are
		often created from information found in the `tasks.json`-file. Such tasks miss
		the information on how to execute them and a task provider must fill in
		the missing information in the `resolveTask`-method. This method will not be
		called for tasks returned from the above `provideTasks` method since those
		tasks are always fully resolved. A valid default implementation for the
		`resolveTask` method is to return `undefined`.
	**/
	function resolveTask(task:Task, ?token:CancellationToken):ProviderResult<Task>;
};