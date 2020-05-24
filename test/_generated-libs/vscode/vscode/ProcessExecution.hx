package vscode;

/**
	The execution of a task happens as an external process
	without shell interaction.
**/
@:jsRequire("vscode", "ProcessExecution") extern class ProcessExecution {
	/**
		Creates a process execution.
	**/
	@:overload(function(process:String, args:Array<String>, ?options:ProcessExecutionOptions):ProcessExecution { })
	function new(process:String, ?options:ProcessExecutionOptions);
	/**
		The process to be executed.
	**/
	var process : String;
	/**
		The arguments passed to the process. Defaults to an empty array.
	**/
	var args : Array<String>;
	/**
		The process options used when the process is executed.
		Defaults to undefined.
	**/
	@:optional
	var options : ProcessExecutionOptions;
	static var prototype : ProcessExecution;
}