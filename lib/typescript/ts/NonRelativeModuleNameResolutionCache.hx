package typescript.ts;


/**
Stored map from non-relative module name to a table: directory -> result of module lookup in this directory
We support only non-relative module names because resolution of relative module names is usually more deterministic and thus less expensive.

Generated from: test-definitions/typescript/typescript-extended.d.ts:3850:5
**/

typedef NonRelativeModuleNameResolutionCache = {
	function getOrCreateCacheForModuleName(nonRelativeModuleName: String, ?redirectedReference: typescript.ts.ResolvedProjectReference): typescript.ts.PerModuleNameCache;
}

