package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1894:5
**/

typedef Program = typescript.ts.ScriptReferenceHost & {
	/**
	Get a list of root file names that were passed to a 'createProgram'
	**/
	function getRootFileNames(): Array<String>;
	/**
	Get a list of files in the program
	**/
	function getSourceFiles(): Array<typescript.ts.SourceFile>;
	/**
	Emits the JavaScript and declaration files.  If targetSourceFile is not specified, then
	the JavaScript and declaration files will be produced for all the files in this program.
	If targetSourceFile is specified, then only the JavaScript and declaration for that
	specific file will be generated.
	
	If writeFile is not specified then the writeFile callback from the compiler host will be
	used for writing the JavaScript and declaration files.  Otherwise, the writeFile parameter
	will be invoked when writing the JavaScript and declaration files.
	**/
	function emit(?targetSourceFile: typescript.ts.SourceFile, ?writeFile: typescript.ts.WriteFileCallback, ?cancellationToken: typescript.ts.CancellationToken, ?emitOnlyDtsFiles: Bool, ?customTransformers: typescript.ts.CustomTransformers): typescript.ts.EmitResult;
	function getOptionsDiagnostics(?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	function getGlobalDiagnostics(?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	function getSyntacticDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.DiagnosticWithLocation>;
	/**
	The first time this is called, it will return global diagnostics (no location).
	**/
	function getSemanticDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	function getDeclarationDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.DiagnosticWithLocation>;
	function getConfigFileParsingDiagnostics(): Array<typescript.ts.Diagnostic>;
	/**
	Gets a type checker that can be used to semantically analyze source files in the program.
	**/
	function getTypeChecker(): typescript.ts.TypeChecker;
	function getNodeCount(): Float;
	function getIdentifierCount(): Float;
	function getSymbolCount(): Float;
	function getTypeCount(): Float;
	function getRelationCacheSizes(): {	var assignable: Float; 	var identity: Float; 	var subtype: Float;};
	function isSourceFileFromExternalLibrary(file: typescript.ts.SourceFile): Bool;
	function isSourceFileDefaultLibrary(file: typescript.ts.SourceFile): Bool;
	function getProjectReferences(): Null<Array<typescript.ts.ProjectReference>>;
	function getResolvedProjectReferences(): Null<Array<Null<typescript.ts.ResolvedProjectReference>>>;
}

