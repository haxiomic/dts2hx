package vscode;

/**
	Options for a shell execution
**/
typedef ShellExecutionOptions = {
	/**
		The shell executable.
	**/
	@:optional
	var executable : String;
	/**
		The arguments to be passed to the shell executable used to run the task. Most shells
		require special arguments to execute a command. For  example `bash` requires the `-c`
		argument to execute a command, `PowerShell` requires `-Command` and `cmd` requires both
		`/d` and `/c`.
	**/
	@:optional
	var shellArgs : Array<String>;
	/**
		The shell quotes supported by this shell.
	**/
	@:optional
	var shellQuoting : ShellQuotingOptions;
	/**
		The current working directory of the executed shell.
		If omitted the tools current workspace root is used.
	**/
	@:optional
	var cwd : String;
	/**
		The additional environment of the executed shell. If omitted
		the parent process' environment is used. If provided it is merged with
		the parent process' environment.
	**/
	@:optional
	var env : haxe.DynamicAccess<String>;
};