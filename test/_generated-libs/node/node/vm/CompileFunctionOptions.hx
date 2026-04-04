package node.vm;

typedef CompileFunctionOptions = {
	/**
		The sandbox/context in which the said function should be compiled in.
	**/
	@:optional
	var parsingContext : Context;
	/**
		An array containing a collection of context extensions (objects wrapping the current scope) to be applied while compiling
	**/
	@:optional
	var contextExtensions : Array<Dynamic>;
	/**
		Used to specify how the modules should be loaded during the evaluation of this script when `import()` is called. This option is
		part of the experimental modules API. We do not recommend using it in a production environment. For detailed information, see
		[Support of dynamic `import()` in compilation APIs](https://nodejs.org/docs/latest-v22.x/api/vm.html#support-of-dynamic-import-in-compilation-apis).
	**/
	@:optional
	var importModuleDynamically : ts.AnyOf2<Float, DynamicModuleLoader<haxe.Constraints.Function & {
		@:optional
		var cachedData : node.buffer.NonSharedBuffer;
		@:optional
		var cachedDataProduced : Bool;
		/**
			When `cachedData` is supplied to create the `vm.Script`, this value will be set
			to either `true` or `false` depending on acceptance of the data by V8.
			Otherwise the value is `undefined`.
		**/
		@:optional
		var cachedDataRejected : Bool;
	}>>;
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
	@:optional
	var produceCachedData : Bool;
};