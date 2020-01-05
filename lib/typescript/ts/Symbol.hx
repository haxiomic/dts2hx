package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:2227:5
**/
@:native('ts.Symbol')
extern interface Symbol {
	var flags: typescript.ts.SymbolFlags;
	var escapedName: typescript.ts.__String;
	var declarations: Array<typescript.ts.Declaration>;
	var valueDeclaration: typescript.ts.Declaration;
	@:optional
	var members: typescript.ts.SymbolTable;
	@:optional
	var exports: typescript.ts.SymbolTable;
	@:optional
	var globalExports: typescript.ts.SymbolTable;
	final name: String;
	function getFlags(): typescript.ts.SymbolFlags;
	function getEscapedName(): typescript.ts.__String;
	function getName(): String;
	function getDeclarations(): Null<Array<typescript.ts.Declaration>>;
	function getDocumentationComment(typeChecker: Null<typescript.ts.TypeChecker>): Array<typescript.ts.SymbolDisplayPart>;
	function getJsDocTags(): Array<typescript.ts.JSDocTagInfo>;
}

