package vscode;

/**
	Class used to execute an extension callback as a task.
**/
@:jsRequire("vscode", "CustomExecution") extern class CustomExecution {
	/**
		Constructs a CustomExecution task object. The callback will be executed the task is run, at which point the
		extension should return the Pseudoterminal it will "run in". The task should wait to do further execution until
		[Pseudoterminal.open](#Pseudoterminal.open) is called. Task cancellation should be handled using
		[Pseudoterminal.close](#Pseudoterminal.close). When the task is complete fire
		[Pseudoterminal.onDidClose](#Pseudoterminal.onDidClose).
	**/
	function new(callback:() -> global.Thenable<Pseudoterminal>);
	static var prototype : CustomExecution;
}