package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4575:5
**/
@:native('ts.IncrementalProgramOptions')
extern interface IncrementalProgramOptions<T> {
	var rootNames: Array<String>;
	var options: typescript.ts.CompilerOptions;
	@:optional
	var configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>;
	@:optional
	var projectReferences: Array<typescript.ts.ProjectReference>;
	@:optional
	var host: typescript.ts.CompilerHost;
	@:optional
	var createProgram: typescript.ts.CreateProgram<T>;
}

