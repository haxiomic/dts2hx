package typescript.ts;


/**
ResolvedModule with an explicitly provided `extension` property.
Prefer this over `ResolvedModule`.
If changing this, remember to change `moduleResolutionIsEqualTo`.

Generated from: test-definitions/typescript/typescript-extended.d.ts:2788:5
**/
@:native('ts.ResolvedModuleFull')
extern interface ResolvedModuleFull extends typescript.ts.ResolvedModule {
	/**
	Extension of resolvedFileName. This must match what's at the end of resolvedFileName.
	This is optional for backwards-compatibility, but will be added if not provided.
	**/
	var extension: typescript.ts.Extension;
	@:optional
	var packageId: typescript.ts.PackageId;
}

