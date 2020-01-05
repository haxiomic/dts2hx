package typescript.ts;


/**
Represents the result of module resolution.
Module resolution will pick up tsx/jsx/js files even if '--jsx' and '--allowJs' are turned off.
The Program will then filter results based on these flags.

Prefer to return a `ResolvedModuleFull` so that the file type does not have to be inferred.

Generated from: test-definitions/typescript/typescript-extended.d.ts:2777:5
**/
@:native('ts.ResolvedModule')
extern interface ResolvedModule {
	/**
	Path of the file the module was resolved to.
	**/
	var resolvedFileName: String;
	/**
	True if `resolvedFileName` comes from `node_modules`.
	**/
	@:optional
	var isExternalLibraryImport: Bool;
}

