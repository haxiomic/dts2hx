package typescript.ts;


/**
Cached module resolutions per containing directory.
This assumes that any module id will have the same resolution for sibling files located in the same folder.

Generated from: test-definitions/typescript/typescript-extended.d.ts:3833:5
**/
@:native('ts.ModuleResolutionCache')
extern interface ModuleResolutionCache extends typescript.ts.NonRelativeModuleNameResolutionCache {
	function getOrCreateCacheForDirectory(directoryName: String, ?redirectedReference: typescript.ts.ResolvedProjectReference): typescript.ts.Map<typescript.ts.ResolvedModuleWithFailedLookupLocations>;
}

