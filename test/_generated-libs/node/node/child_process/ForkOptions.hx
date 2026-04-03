package node.child_process;

typedef ForkOptions = {
	@:optional
	var execPath : String;
	@:optional
	var execArgv : Array<String>;
	@:optional
	var silent : Bool;
	/**
		Can be set to 'pipe', 'inherit', 'overlapped', or 'ignore', or an array of these strings.
		If passed as an array, the first element is used for `stdin`, the second for
		`stdout`, and the third for `stderr`. A fourth element can be used to
		specify the `stdio` behavior beyond the standard streams. See
		{@link
		ChildProcess.stdio
		}
		for more information.
	**/
	@:optional
	var stdio : StdioOptions;
	@:optional
	var detached : Bool;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : ts.AnyOf2<String, node.url.URL>;
	@:optional
	var env : global.nodejs.ProcessEnv;
	/**
		Specify the kind of serialization used for sending messages between processes.
	**/
	@:optional
	var serialization : SerializationType;
	/**
		The signal value to be used when the spawned process will be killed by the abort signal.
	**/
	@:optional
	var killSignal : ts.AnyOf2<Float, String>;
	/**
		In milliseconds the maximum amount of time the process is allowed to run.
	**/
	@:optional
	var timeout : Float;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};