package node.nodecolontest.test;

typedef MockModuleOptions = {
	/**
		If false, each call to `require()` or `import()` generates a new mock module.
		If true, subsequent calls will return the same module mock, and the mock module is inserted into the CommonJS cache.
	**/
	@:optional
	var cache : Bool;
	/**
		The value to use as the mocked module's default export.
		
		If this value is not provided, ESM mocks do not include a default export.
		If the mock is a CommonJS or builtin module, this setting is used as the value of `module.exports`.
		If this value is not provided, CJS and builtin mocks use an empty object as the value of `module.exports`.
	**/
	@:optional
	var defaultExport : Dynamic;
	/**
		An object whose keys and values are used to create the named exports of the mock module.
		
		If the mock is a CommonJS or builtin module, these values are copied onto `module.exports`.
		Therefore, if a mock is created with both named exports and a non-object default export,
		the mock will throw an exception when used as a CJS or builtin module.
	**/
	@:optional
	var namedExports : Dynamic;
};