package node.vm;

typedef CreateContextOptions = {
	/**
		Human-readable name of the newly created context.
	**/
	@:optional
	var name : String;
	/**
		Corresponds to the newly created context for display purposes.
		The origin should be formatted like a `URL`, but with only the scheme, host, and port (if necessary),
		like the value of the `url.origin` property of a URL object.
		Most notably, this string should omit the trailing slash, as that denotes a path.
	**/
	@:optional
	var origin : String;
	@:optional
	var codeGeneration : {
		/**
			If set to false any calls to eval or function constructors (Function, GeneratorFunction, etc)
			will throw an EvalError.
		**/
		@:optional
		var strings : Bool;
		/**
			If set to false any attempt to compile a WebAssembly module will throw a WebAssembly.CompileError.
		**/
		@:optional
		var wasm : Bool;
	};
	/**
		If set to `afterEvaluate`, microtasks will be run immediately after the script has run.
	**/
	@:optional
	var microtaskMode : String;
	/**
		Used to specify how the modules should be loaded during the evaluation of this script when `import()` is called. This option is
		part of the experimental modules API. We do not recommend using it in a production environment. For detailed information, see
		[Support of dynamic `import()` in compilation APIs](https://nodejs.org/docs/latest-v22.x/api/vm.html#support-of-dynamic-import-in-compilation-apis).
	**/
	@:optional
	var importModuleDynamically : ts.AnyOf2<Float, DynamicModuleLoader<Context>>;
};