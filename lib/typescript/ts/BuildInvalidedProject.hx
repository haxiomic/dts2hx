package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4763:5
**/
@:native('ts.BuildInvalidedProject')
extern interface BuildInvalidedProject<T> extends typescript.ts.InvalidatedProjectBase {
	function getBuilderProgram(): Null<T>;
	function getProgram(): Null<typescript.ts.Program>;
	function getSourceFile(fileName: String): Null<typescript.ts.SourceFile>;
	function getSourceFiles(): Array<typescript.ts.SourceFile>;
	function getOptionsDiagnostics(?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	function getGlobalDiagnostics(?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	function getConfigFileParsingDiagnostics(): Array<typescript.ts.Diagnostic>;
	function getSyntacticDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	function getAllDependencies(sourceFile: typescript.ts.SourceFile): Array<String>;
	function getSemanticDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	function getSemanticDiagnosticsOfNextAffectedFile(?cancellationToken: typescript.ts.CancellationToken, ?ignoreSourceFile: (sourceFile: typescript.ts.SourceFile) -> Bool): typescript.ts.AffectedFileResult<Array<typescript.ts.Diagnostic>>;
	function emit(?targetSourceFile: typescript.ts.SourceFile, ?writeFile: typescript.ts.WriteFileCallback, ?cancellationToken: typescript.ts.CancellationToken, ?emitOnlyDtsFiles: Bool, ?customTransformers: typescript.ts.CustomTransformers): Null<typescript.ts.EmitResult>;
}

