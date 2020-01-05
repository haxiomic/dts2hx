package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1851:5
**/
@:native('ts.ScriptReferenceHost')
extern interface ScriptReferenceHost {
	function getCompilerOptions(): typescript.ts.CompilerOptions;
	function getSourceFile(fileName: String): Null<typescript.ts.SourceFile>;
	function getSourceFileByPath(path: typescript.ts.Path): Null<typescript.ts.SourceFile>;
	function getCurrentDirectory(): String;
}

