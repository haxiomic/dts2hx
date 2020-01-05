package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:3843:5
**/
@:native('ts.PerModuleNameCache')
extern interface PerModuleNameCache {
	function get(directory: String): Null<typescript.ts.ResolvedModuleWithFailedLookupLocations>;
	function set(directory: String, result: typescript.ts.ResolvedModuleWithFailedLookupLocations): Void;
}

