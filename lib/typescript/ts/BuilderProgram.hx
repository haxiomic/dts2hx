package typescript.ts;


/**
Builder to manage the program state changes

Generated from: test-definitions/typescript/typescript-extended.d.ts:4461:5
**/

typedef BuilderProgram = {
	/**
	Returns current program
	**/
	function getProgram(): typescript.ts.Program;
	/**
	Get compiler options of the program
	**/
	function getCompilerOptions(): typescript.ts.CompilerOptions;
	/**
	Get the source file in the program with file name
	**/
	function getSourceFile(fileName: String): Null<typescript.ts.SourceFile>;
	/**
	Get a list of files in the program
	**/
	function getSourceFiles(): Array<typescript.ts.SourceFile>;
	/**
	Get the diagnostics for compiler options
	**/
	function getOptionsDiagnostics(?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	/**
	Get the diagnostics that dont belong to any file
	**/
	function getGlobalDiagnostics(?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	/**
	Get the diagnostics from config file parsing
	**/
	function getConfigFileParsingDiagnostics(): Array<typescript.ts.Diagnostic>;
	/**
	Get the syntax diagnostics, for all source files if source file is not supplied
	**/
	function getSyntacticDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	/**
	Get the declaration diagnostics, for all source files if source file is not supplied
	**/
	function getDeclarationDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.DiagnosticWithLocation>;
	/**
	Get all the dependencies of the file
	**/
	function getAllDependencies(sourceFile: typescript.ts.SourceFile): Array<String>;
	/**
	Gets the semantic diagnostics from the program corresponding to this state of file (if provided) or whole program
	The semantic diagnostics are cached and managed here
	Note that it is assumed that when asked about semantic diagnostics through this API,
	the file has been taken out of affected files so it is safe to use cache or get from program and cache the diagnostics
	In case of SemanticDiagnosticsBuilderProgram if the source file is not provided,
	it will iterate through all the affected files, to ensure that cache stays valid and yet provide a way to get all semantic diagnostics
	**/
	function getSemanticDiagnostics(?sourceFile: typescript.ts.SourceFile, ?cancellationToken: typescript.ts.CancellationToken): Array<typescript.ts.Diagnostic>;
	/**
	Emits the JavaScript and declaration files.
	When targetSource file is specified, emits the files corresponding to that source file,
	otherwise for the whole program.
	In case of EmitAndSemanticDiagnosticsBuilderProgram, when targetSourceFile is specified,
	it is assumed that that file is handled from affected file list. If targetSourceFile is not specified,
	it will only emit all the affected files instead of whole program
	
	The first of writeFile if provided, writeFile of BuilderProgramHost if provided, writeFile of compiler host
	in that order would be used to write the files
	**/
	function emit(?targetSourceFile: typescript.ts.SourceFile, ?writeFile: typescript.ts.WriteFileCallback, ?cancellationToken: typescript.ts.CancellationToken, ?emitOnlyDtsFiles: Bool, ?customTransformers: typescript.ts.CustomTransformers): typescript.ts.EmitResult;
	/**
	Get the current directory of the program
	**/
	function getCurrentDirectory(): String;
}

