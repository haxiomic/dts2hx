package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4957:5
**/
@:native('ts.PreProcessedFileInfo')
extern interface PreProcessedFileInfo {
	var referencedFiles: Array<typescript.ts.FileReference>;
	var typeReferenceDirectives: Array<typescript.ts.FileReference>;
	var libReferenceDirectives: Array<typescript.ts.FileReference>;
	var importedFiles: Array<typescript.ts.FileReference>;
	@:optional
	var ambientExternalModules: Array<String>;
	var isLibFile: Bool;
}

