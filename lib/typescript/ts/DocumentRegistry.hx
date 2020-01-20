package typescript.ts;


/**
The document registry represents a store of SourceFile objects that can be shared between
multiple LanguageService instances. A LanguageService instance holds on the SourceFile (AST)
of files in the context.
SourceFile objects account for most of the memory usage by the language service. Sharing
the same DocumentRegistry instance between different instances of LanguageService allow
for more efficient memory utilization since all projects will share at least the library
file (lib.d.ts).

A more advanced use of the document registry is to serialize sourceFile objects to disk
and re-hydrate them when needed.

To create a default DocumentRegistry, use createDocumentRegistry to create one, and pass it
to all subsequent createLanguageService calls.

Generated from: test-definitions/typescript/typescript-extended.d.ts:5813:5
**/

typedef DocumentRegistry = {
	/**
	Request a stored SourceFile with a given fileName and compilationSettings.
	The first call to acquire will call createLanguageServiceSourceFile to generate
	the SourceFile if was not found in the registry.
	**/
	function acquireDocument(fileName: String, compilationSettings: typescript.ts.CompilerOptions, scriptSnapshot: typescript.ts.IScriptSnapshot, version: String, ?scriptKind: typescript.ts.ScriptKind): typescript.ts.SourceFile;
	function acquireDocumentWithKey(fileName: String, path: typescript.ts.Path, compilationSettings: typescript.ts.CompilerOptions, key: typescript.ts.DocumentRegistryBucketKey, scriptSnapshot: typescript.ts.IScriptSnapshot, version: String, ?scriptKind: typescript.ts.ScriptKind): typescript.ts.SourceFile;
	/**
	Request an updated version of an already existing SourceFile with a given fileName
	and compilationSettings. The update will in-turn call updateLanguageServiceSourceFile
	to get an updated SourceFile.
	**/
	function updateDocument(fileName: String, compilationSettings: typescript.ts.CompilerOptions, scriptSnapshot: typescript.ts.IScriptSnapshot, version: String, ?scriptKind: typescript.ts.ScriptKind): typescript.ts.SourceFile;
	function updateDocumentWithKey(fileName: String, path: typescript.ts.Path, compilationSettings: typescript.ts.CompilerOptions, key: typescript.ts.DocumentRegistryBucketKey, scriptSnapshot: typescript.ts.IScriptSnapshot, version: String, ?scriptKind: typescript.ts.ScriptKind): typescript.ts.SourceFile;
	function getKeyForCompilationSettings(settings: typescript.ts.CompilerOptions): typescript.ts.DocumentRegistryBucketKey;
	/**
	Informs the DocumentRegistry that a file is not needed any longer.
	
	Note: It is not allowed to call release on a SourceFile that was not acquired from
	this registry originally.
	**/
	function releaseDocument(fileName: String, compilationSettings: typescript.ts.CompilerOptions): Void;
	function releaseDocumentWithKey(path: typescript.ts.Path, key: typescript.ts.DocumentRegistryBucketKey): Void;
	function reportStats(): String;
}

