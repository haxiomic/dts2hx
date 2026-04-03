package node.module.module;

typedef ResolveHookContext = {
	/**
		Export conditions of the relevant `package.json`
	**/
	var conditions : Array<String>;
	var importAssertions : ImportAttributes;
	/**
		An object whose key-value pairs represent the assertions for the module to import
	**/
	var importAttributes : ImportAttributes;
	/**
		The module importing this one, or undefined if this is the Node.js entry point
	**/
	var parentURL : Null<String>;
};