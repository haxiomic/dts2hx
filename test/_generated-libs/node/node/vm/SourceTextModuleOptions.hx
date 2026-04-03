package node.vm;

typedef SourceTextModuleOptions = {
	/**
		String used in stack traces.
	**/
	@:optional
	var identifier : String;
	@:optional
	var context : Context;
	/**
		Called during evaluation of this module to initialize the `import.meta`.
	**/
	@:optional
	dynamic function initializeImportMeta(meta:js.html.ImportMeta, module:SourceTextModule):Void;
	/**
		Used to specify how the modules should be loaded during the evaluation of this script when `import()` is called. This option is
		part of the experimental modules API. We do not recommend using it in a production environment. For detailed information, see
		[Support of dynamic `import()` in compilation APIs](https://nodejs.org/docs/latest-v22.x/api/vm.html#support-of-dynamic-import-in-compilation-apis).
	**/
	@:optional
	dynamic function importModuleDynamically(specifier:String, referrer:SourceTextModule, importAttributes:node.module.module.ImportAttributes):ts.AnyOf2<Module, js.lib.Promise<Module>>;
	/**
		Provides an optional data with V8's code cache data for the supplied source.
	**/
	@:optional
	var cachedData : global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>;
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