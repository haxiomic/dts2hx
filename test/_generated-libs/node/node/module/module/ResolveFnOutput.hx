package node.module.module;

typedef ResolveFnOutput = {
	/**
		A hint to the load hook (it might be ignored)
	**/
	@:optional
	var format : ModuleFormat;
	@:optional
	var importAssertions : ImportAttributes;
	/**
		The import attributes to use when caching the module (optional; if excluded the input will be used)
	**/
	@:optional
	var importAttributes : ImportAttributes;
	/**
		A signal that this hook intends to terminate the chain of `resolve` hooks.
	**/
	@:optional
	var shortCircuit : Bool;
	/**
		The absolute URL to which this input resolves
	**/
	var url : String;
};