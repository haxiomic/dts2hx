package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5857:5
**/
@:native('ts.TranspileOptions')
extern interface TranspileOptions {
	@:optional
	var compilerOptions: typescript.ts.CompilerOptions;
	@:optional
	var fileName: String;
	@:optional
	var reportDiagnostics: Bool;
	@:optional
	var moduleName: String;
	@:optional
	var renamedDependencies: typescript.ts.MapLike<String>;
	@:optional
	var transformers: typescript.ts.CustomTransformers;
}

