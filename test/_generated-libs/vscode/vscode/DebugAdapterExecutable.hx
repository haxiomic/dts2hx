package vscode;

/**
	Represents a debug adapter executable and optional arguments and runtime options passed to it.
**/
@:jsRequire("vscode", "DebugAdapterExecutable") extern class DebugAdapterExecutable {
	/**
		Creates a description for a debug adapter based on an executable program.
	**/
	function new(command:String, ?args:Array<String>, ?options:DebugAdapterExecutableOptions);
	/**
		The command or path of the debug adapter executable.
		A command must be either an absolute path of an executable or the name of an command to be looked up via the PATH environment variable.
		The special value 'node' will be mapped to VS Code's built-in Node.js runtime.
	**/
	final command : String;
	/**
		The arguments passed to the debug adapter executable. Defaults to an empty array.
	**/
	final args : Array<String>;
	/**
		Optional options to be used when the debug adapter is started.
		Defaults to undefined.
	**/
	@:optional
	final options : DebugAdapterExecutableOptions;
	static var prototype : DebugAdapterExecutable;
}