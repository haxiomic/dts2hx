package node.vm;

typedef ScriptOptions = {
	/**
		Provides an optional data with V8's code cache data for the supplied source.
	**/
	@:optional
	var cachedData : global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>;
	@:optional
	var produceCachedData : Bool;
	/**
		Used to specify how the modules should be loaded during the evaluation of this script when `import()` is called. This option is
		part of the experimental modules API. We do not recommend using it in a production environment. For detailed information, see
		[Support of dynamic `import()` in compilation APIs](https://nodejs.org/docs/latest-v20.x/api/vm.html#support-of-dynamic-import-in-compilation-apis).
	**/
	@:optional
	var importModuleDynamically : ts.AnyOf2<Float, DynamicModuleLoader<Script>>;
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
};