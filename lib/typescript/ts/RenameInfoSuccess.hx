package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5476:5
**/

typedef RenameInfoSuccess = {
	var canRename: Bool;
	/**
	File or directory to rename.
	If set, `getEditsForFileRename` should be called instead of `findRenameLocations`.
	**/
	@:optional
	var fileToRename: String;
	var displayName: String;
	var fullDisplayName: String;
	var kind: typescript.ts.ScriptElementKind;
	var kindModifiers: String;
	var triggerSpan: typescript.ts.TextSpan;
}

