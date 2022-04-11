package vscode;

/**
	Options for a debug adapter executable.
**/
typedef DebugAdapterExecutableOptions = {
	/**
		The additional environment of the executed program or shell. If omitted
		the parent process' environment is used. If provided it is merged with
		the parent process' environment.
	**/
	@:optional
	var env : haxe.DynamicAccess<String>;
	/**
		The current working directory for the executed debug adapter.
	**/
	@:optional
	var cwd : String;
};