package typescript.ts;


/**
Either a parsed command line or a parsed tsconfig.json

Generated from: test-definitions/typescript/typescript-extended.d.ts:2741:5
**/

typedef ParsedCommandLine = {
	var options: typescript.ts.CompilerOptions;
	@:optional
	var typeAcquisition: typescript.ts.TypeAcquisition;
	var fileNames: Array<String>;
	@:optional
	var projectReferences: Array<typescript.ts.ProjectReference>;
	@:optional
	var raw: Any;
	var errors: Array<typescript.ts.Diagnostic>;
	@:optional
	var wildcardDirectories: typescript.ts.MapLike<typescript.ts.WatchDirectoryFlags>;
	@:optional
	var compileOnSave: Bool;
}

