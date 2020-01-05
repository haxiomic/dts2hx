package typescript.ts;


/**
A set of edits to make in response to a refactor action, plus an optional
location where renaming should be invoked from

Generated from: test-definitions/typescript/typescript-extended.d.ts:5275:5
**/

typedef RefactorEditInfo = {
	var edits: Array<typescript.ts.FileTextChanges>;
	@:optional
	var renameFilename: String;
	@:optional
	var renameLocation: Float;
	@:optional
	var commands: Array<typescript.ts.CodeActionCommand>;
}

