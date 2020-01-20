package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2837:5
**/

typedef ResolvedTypeReferenceDirective = {
	var primary: Bool;
	var resolvedFileName: Null<String>;
	@:optional
	var packageId: typescript.ts.PackageId;
	/**
	True if `resolvedFileName` comes from `node_modules`.
	**/
	@:optional
	var isExternalLibraryImport: Bool;
}

