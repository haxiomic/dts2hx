package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1766:5
**/

typedef SourceFile = typescript.ts.Declaration & {
	var statements: typescript.ts.NodeArray<typescript.ts.Statement>;
	var endOfFileToken: typescript.ts.Token<typescript.ts.SyntaxKind>;
	var fileName: String;
	var text: String;
	var amdDependencies: Array<typescript.ts.AmdDependency>;
	@:optional
	var moduleName: String;
	var referencedFiles: Array<typescript.ts.FileReference>;
	var typeReferenceDirectives: Array<typescript.ts.FileReference>;
	var libReferenceDirectives: Array<typescript.ts.FileReference>;
	var languageVariant: typescript.ts.LanguageVariant;
	var isDeclarationFile: Bool;
	/**
	lib.d.ts should have a reference comment like
	
	  /// <reference no-default-lib="true"/>
	
	If any other file has this comment, it signals not to include lib.d.ts
	because this containing file is intended to act as a default library.
	**/
	var hasNoDefaultLib: Bool;
	var languageVersion: typescript.ts.ScriptTarget;
	function getLineAndCharacterOfPosition(pos: Float): typescript.ts.LineAndCharacter;
	function getLineEndOfPosition(pos: Float): Float;
	function getLineStarts(): Array<Float>;
	function getPositionOfLineAndCharacter(line: Float, character: Float): Float;
	function update(newText: String, textChangeRange: typescript.ts.TextChangeRange): typescript.ts.SourceFile;
}

