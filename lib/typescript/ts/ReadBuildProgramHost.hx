package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4568:5
**/
@:native('ts.ReadBuildProgramHost')
extern interface ReadBuildProgramHost {
	function useCaseSensitiveFileNames(): Bool;
	function getCurrentDirectory(): String;
	function readFile(fileName: String): Null<String>;
}

