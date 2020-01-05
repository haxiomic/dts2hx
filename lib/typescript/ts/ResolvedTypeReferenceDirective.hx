package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2827:5
**/
@:native('ts.ResolvedTypeReferenceDirective')
extern interface ResolvedTypeReferenceDirective {
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

