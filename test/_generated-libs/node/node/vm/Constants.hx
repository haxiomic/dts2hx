package node.vm;

/**
	Returns an object containing commonly used constants for VM operations.
**/
@:jsRequire("vm", "constants") @valueModuleOnly extern class Constants {
	/**
		A constant that can be used as the `importModuleDynamically` option to `vm.Script`
		and `vm.compileFunction()` so that Node.js uses the default ESM loader from the main
		context to load the requested module.
		
		For detailed information, see [Support of dynamic `import()` in compilation APIs](https://nodejs.org/docs/latest-v20.x/api/vm.html#support-of-dynamic-import-in-compilation-apis).
	**/
	static final USE_MAIN_CONTEXT_DEFAULT_LOADER : Float;
	/**
		This constant, when used as the `contextObject` argument in vm APIs, instructs Node.js to create
		a context without wrapping its global object with another object in a Node.js-specific manner.
		As a result, the `globalThis` value inside the new context would behave more closely to an ordinary
		one.
		
		When `vm.constants.DONT_CONTEXTIFY` is used as the `contextObject` argument to
		{@link
		createContext
		}
		,
		the returned object is a proxy-like object to the global object in the newly created context with
		fewer Node.js-specific quirks. It is reference equal to the `globalThis` value in the new context,
		can be modified from outside the context, and can be used to access built-ins in the new context directly.
	**/
	static final DONT_CONTEXTIFY : Float;
}