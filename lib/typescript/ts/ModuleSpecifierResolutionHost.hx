package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:3087:5
**/
@:native('ts.ModuleSpecifierResolutionHost')
extern interface ModuleSpecifierResolutionHost extends typescript.ts.GetEffectiveTypeRootsHost {
	@:optional
	function useCaseSensitiveFileNames(): Bool;
	@:optional
	function fileExists(path: String): Bool;
	@:optional
	function readFile(path: String): Null<String>;
}

