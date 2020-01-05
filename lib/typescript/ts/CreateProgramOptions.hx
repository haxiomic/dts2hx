package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2749:5
**/
@:native('ts.CreateProgramOptions')
extern interface CreateProgramOptions {
	var rootNames: Array<String>;
	var options: typescript.ts.CompilerOptions;
	@:optional
	var projectReferences: Array<typescript.ts.ProjectReference>;
	@:optional
	var host: typescript.ts.CompilerHost;
	@:optional
	var oldProgram: typescript.ts.Program;
	@:optional
	var configFileParsingDiagnostics: Array<typescript.ts.Diagnostic>;
}

