package vscode;

/**
	Value-object describing what options a terminal should use.
**/
typedef TerminalOptions = {
	/**
		A human-readable string which will be used to represent the terminal in the UI.
	**/
	@:optional
	var name : String;
	/**
		A path to a custom shell executable to be used in the terminal.
	**/
	@:optional
	var shellPath : String;
	/**
		Args for the custom shell executable. A string can be used on Windows only which allows
		specifying shell args in [command-line format](https://msdn.microsoft.com/en-au/08dfcab2-eb6e-49a4-80eb-87d4076c98c6).
	**/
	@:optional
	var shellArgs : ts.AnyOf2<String, Array<String>>;
	/**
		A path or Uri for the current working directory to be used for the terminal.
	**/
	@:optional
	var cwd : ts.AnyOf2<String, Uri>;
	/**
		Object with environment variables that will be added to the VS Code process.
	**/
	@:optional
	var env : haxe.DynamicAccess<Null<String>>;
	/**
		Whether the terminal process environment should be exactly as provided in
		`TerminalOptions.env`. When this is false (default), the environment will be based on the
		window's environment and also apply configured platform settings like
		`terminal.integrated.windows.env` on top. When this is true, the complete environment
		must be provided as nothing will be inherited from the process or any configuration.
	**/
	@:optional
	var strictEnv : Bool;
	/**
		When enabled the terminal will run the process as normal but not be surfaced to the user
		until `Terminal.show` is called. The typical usage for this is when you need to run
		something that may need interactivity but only want to tell the user about it when
		interaction is needed. Note that the terminals will still be exposed to all extensions
		as normal.
	**/
	@:optional
	var hideFromUser : Bool;
};