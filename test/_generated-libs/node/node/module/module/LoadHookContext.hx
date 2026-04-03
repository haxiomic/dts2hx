package node.module.module;

typedef LoadHookContext = {
	/**
		Export conditions of the relevant `package.json`
	**/
	var conditions : Array<String>;
	/**
		The format optionally supplied by the `resolve` hook chain
	**/
	var format : Null<ModuleFormat>;
	var importAssertions : ImportAttributes;
	/**
		An object whose key-value pairs represent the assertions for the module to import
	**/
	var importAttributes : ImportAttributes;
};