package vscode;

/**
	Namespace for tasks functionality.
**/
@:jsRequire("vscode", "tasks") @valueModuleOnly extern class Tasks {
	/**
		Register a task provider.
	**/
	static function registerTaskProvider(type:String, provider:TaskProvider):Disposable;
	/**
		Fetches all tasks available in the systems. This includes tasks
		from `tasks.json` files as well as tasks from task providers
		contributed through extensions.
	**/
	static function fetchTasks(?filter:TaskFilter):global.Thenable<Array<Task>>;
	/**
		Executes a task that is managed by VS Code. The returned
		task execution can be used to terminate the task.
	**/
	static function executeTask(task:Task):global.Thenable<TaskExecution>;
	/**
		The currently active task executions or an empty array.
	**/
	static final taskExecutions : haxe.ds.ReadOnlyArray<TaskExecution>;
	/**
		Fires when a task starts.
	**/
	static function onDidStartTask(listener:(e:TaskStartEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Fires when a task ends.
	**/
	static function onDidEndTask(listener:(e:TaskEndEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Fires when the underlying process has been started.
		This event will not fire for tasks that don't
		execute an underlying process.
	**/
	static function onDidStartTaskProcess(listener:(e:TaskProcessStartEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Fires when the underlying process has ended.
		This event will not fire for tasks that don't
		execute an underlying process.
	**/
	static function onDidEndTaskProcess(listener:(e:TaskProcessEndEvent) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
}