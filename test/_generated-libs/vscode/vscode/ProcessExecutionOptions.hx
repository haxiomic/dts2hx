package vscode;

/**
	Options for a process execution
**/
typedef ProcessExecutionOptions = {
	/**
		The current working directory of the executed program or shell.
		If omitted the tools current workspace root is used.
	**/
	@:optional
	var cwd : String;
	/**
		The additional environment of the executed program or shell. If omitted
		the parent process' environment is used. If provided it is merged with
		the parent process' environment.
	**/
	@:optional
	var env : haxe.DynamicAccess<String>;
};