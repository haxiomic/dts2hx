package node.module.module;

/**
	The `resolve` hook chain is responsible for telling Node.js where to find and
	how to cache a given `import` statement or expression, or `require` call. It can
	optionally return a format (such as `'module'`) as a hint to the `load` hook. If
	a format is specified, the `load` hook is ultimately responsible for providing
	the final `format` value (and it is free to ignore the hint provided by
	`resolve`); if `resolve` provides a `format`, a custom `load` hook is required
	even if only to pass the value to the Node.js default `load` hook.
**/
typedef ResolveHook = (specifier:String, context:ResolveHookContext, nextResolve:ts.AnyOf2<(specifier:String) -> ts.AnyOf2<ResolveFnOutput, js.lib.Promise<ResolveFnOutput>>, (specifier:String, context:{ /** Export conditions of the relevant `package.json` **/ @:optional var conditions : Array<String>; @:optional var importAssertions : ImportAttributes; /** An object whose key-value pairs represent the assertions for the module to import **/ @:optional var importAttributes : ImportAttributes; /** The module importing this one, or undefined if this is the Node.js entry point **/ @:optional var parentURL : String; }) -> ts.AnyOf2<ResolveFnOutput, js.lib.Promise<ResolveFnOutput>>>) -> ts.AnyOf2<ResolveFnOutput, js.lib.Promise<ResolveFnOutput>>;