package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:3087:5
**/

typedef ModuleSpecifierResolutionHost = typescript.ts.GetEffectiveTypeRootsHost & {
	@:optional
	function useCaseSensitiveFileNames(): Bool;
	@:optional
	function fileExists(path: String): Bool;
	@:optional
	function readFile(path: String): Null<String>;
}

