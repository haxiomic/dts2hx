package node.module.module;

/**
	The `load` hook provides a way to define a custom method of determining how a
	URL should be interpreted, retrieved, and parsed. It is also in charge of
	validating the import attributes.
**/
typedef LoadHook = (url:String, context:LoadHookContext, nextLoad:ts.AnyOf2<(url:String) -> ts.AnyOf2<LoadFnOutput, js.lib.Promise<LoadFnOutput>>, (url:String, context:{ /** Export conditions of the relevant `package.json` **/ @:optional var conditions : Array<String>; /** The format optionally supplied by the `resolve` hook chain **/ @:optional var format : ModuleFormat; @:optional var importAssertions : ImportAttributes; /** An object whose key-value pairs represent the assertions for the module to import **/ @:optional var importAttributes : ImportAttributes; }) -> ts.AnyOf2<LoadFnOutput, js.lib.Promise<LoadFnOutput>>>) -> ts.AnyOf2<LoadFnOutput, js.lib.Promise<LoadFnOutput>>;