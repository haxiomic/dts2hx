package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2838:5
**/
@:native('ts.CompilerHost')
extern interface CompilerHost extends typescript.ts.ModuleResolutionHost {
	function getSourceFile(fileName: String, languageVersion: typescript.ts.ScriptTarget, ?onError: (message: String) -> Void, ?shouldCreateNewSourceFile: Bool): Null<typescript.ts.SourceFile>;
	@:optional
	function getSourceFileByPath(fileName: String, path: typescript.ts.Path, languageVersion: typescript.ts.ScriptTarget, ?onError: (message: String) -> Void, ?shouldCreateNewSourceFile: Bool): Null<typescript.ts.SourceFile>;
	@:optional
	function getCancellationToken(): typescript.ts.CancellationToken;
	function getDefaultLibFileName(options: typescript.ts.CompilerOptions): String;
	@:optional
	function getDefaultLibLocation(): String;
	var writeFile: typescript.ts.WriteFileCallback;
	function getCanonicalFileName(fileName: String): String;
	function useCaseSensitiveFileNames(): Bool;
	function getNewLine(): String;
	@:optional
	function readDirectory(rootDir: String, extensions: Array<String>, excludes: Null<Array<String>>, includes: Array<String>, ?depth: Float): Array<String>;
	@:optional
	function resolveModuleNames(moduleNames: Array<String>, containingFile: String, reusedNames: Null<Array<String>>, redirectedReference: Null<typescript.ts.ResolvedProjectReference>, options: typescript.ts.CompilerOptions): Array<Null<typescript.ts.ResolvedModule>>;
	/**
	This method is a companion for 'resolveModuleNames' and is used to resolve 'types' references to actual type declaration files
	**/
	@:optional
	function resolveTypeReferenceDirectives(typeReferenceDirectiveNames: Array<String>, containingFile: String, redirectedReference: Null<typescript.ts.ResolvedProjectReference>, options: typescript.ts.CompilerOptions): Array<Null<typescript.ts.ResolvedTypeReferenceDirective>>;
	@:optional
	function getEnvironmentVariable(name: String): Null<String>;
	@:optional
	function createHash(data: String): String;
	@:optional
	function getParsedCommandLine(fileName: String): Null<typescript.ts.ParsedCommandLine>;
}

