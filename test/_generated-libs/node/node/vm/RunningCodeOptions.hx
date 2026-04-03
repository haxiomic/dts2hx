package node.vm;

typedef RunningCodeOptions = {
	/**
		Used to specify how the modules should be loaded during the evaluation of this script when `import()` is called. This option is
		part of the experimental modules API. We do not recommend using it in a production environment. For detailed information, see
		[Support of dynamic `import()` in compilation APIs](https://nodejs.org/docs/latest-v22.x/api/vm.html#support-of-dynamic-import-in-compilation-apis).
	**/
	@:optional
	var importModuleDynamically : ts.AnyOf2<Float, DynamicModuleLoader<Script>>;
	/**
		When `true`, if an `Error` occurs while compiling the `code`, the line of code causing the error is attached to the stack trace.
	**/
	@:optional
	var displayErrors : Bool;
	/**
		Specifies the number of milliseconds to execute code before terminating execution.
		If execution is terminated, an `Error` will be thrown. This value must be a strictly positive integer.
	**/
	@:optional
	var timeout : Float;
	/**
		If `true`, the execution will be terminated when `SIGINT` (Ctrl+C) is received.
		Existing handlers for the event that have been attached via `process.on('SIGINT')` will be disabled during script execution, but will continue to work after that.
		If execution is terminated, an `Error` will be thrown.
	**/
	@:optional
	var breakOnSigint : Bool;
	/**
		Specifies the filename used in stack traces produced by this script.
	**/
	@:optional
	var filename : String;
	/**
		Specifies the line number offset that is displayed in stack traces produced by this script.
	**/
	@:optional
	var lineOffset : Float;
	/**
		Specifies the column number offset that is displayed in stack traces produced by this script.
	**/
	@:optional
	var columnOffset : Float;
	/**
		Provides an optional data with V8's code cache data for the supplied source.
	**/
	@:optional
	var cachedData : global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>;
};