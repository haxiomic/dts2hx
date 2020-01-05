package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4972:5
**/
@:native('ts.LanguageServiceHost')
extern interface LanguageServiceHost extends typescript.ts.ModuleSpecifierResolutionHost {
	function getCompilationSettings(): typescript.ts.CompilerOptions;
	@:optional
	function getNewLine(): String;
	@:optional
	function getProjectVersion(): String;
	function getScriptFileNames(): Array<String>;
	@:optional
	function getScriptKind(fileName: String): typescript.ts.ScriptKind;
	function getScriptVersion(fileName: String): String;
	function getScriptSnapshot(fileName: String): Null<typescript.ts.IScriptSnapshot>;
	@:optional
	function getProjectReferences(): Null<Array<typescript.ts.ProjectReference>>;
	@:optional
	function getLocalizedDiagnosticMessages(): Any;
	@:optional
	function getCancellationToken(): typescript.ts.HostCancellationToken;
	function getDefaultLibFileName(options: typescript.ts.CompilerOptions): String;
	@:optional
	function log(s: String): Void;
	@:optional
	function trace(s: String): Void;
	@:optional
	function error(s: String): Void;
	@:optional
	function readDirectory(path: String, ?extensions: Array<String>, ?exclude: Array<String>, ?include: Array<String>, ?depth: Float): Array<String>;
	@:optional
	function realpath(path: String): String;
	@:optional
	function getTypeRootsVersion(): Float;
	@:optional
	function resolveModuleNames(moduleNames: Array<String>, containingFile: String, reusedNames: Null<Array<String>>, redirectedReference: Null<typescript.ts.ResolvedProjectReference>, options: typescript.ts.CompilerOptions): Array<Null<typescript.ts.ResolvedModule>>;
	@:optional
	function getResolvedModuleWithFailedLookupLocationsFromCache(modulename: String, containingFile: String): Null<typescript.ts.ResolvedModuleWithFailedLookupLocations>;
	@:optional
	function resolveTypeReferenceDirectives(typeDirectiveNames: Array<String>, containingFile: String, redirectedReference: Null<typescript.ts.ResolvedProjectReference>, options: typescript.ts.CompilerOptions): Array<Null<typescript.ts.ResolvedTypeReferenceDirective>>;
	@:optional
	function getDirectories(directoryName: String): Array<String>;
	/**
	Gets a set of custom transformers to use during emit.
	**/
	@:optional
	function getCustomTransformers(): Null<typescript.ts.CustomTransformers>;
	@:optional
	function isKnownTypesPackageName(name: String): Bool;
	@:optional
	function installPackage(options: typescript.ts.InstallPackageOptions): js.lib.Promise<typescript.ts.ApplyCodeActionCommandResult>;
	@:optional
	function writeFile(fileName: String, content: String): Void;
}

