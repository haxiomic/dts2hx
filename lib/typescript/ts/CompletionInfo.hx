package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5522:5
**/

typedef CompletionInfo = {
	/**
	Not true for all global completions. This will be true if the enclosing scope matches a few syntax kinds. See `isSnippetScope`.
	**/
	var isGlobalCompletion: Bool;
	var isMemberCompletion: Bool;
	/**
	true when the current location also allows for a new identifier
	**/
	var isNewIdentifierLocation: Bool;
	var entries: Array<typescript.ts.CompletionEntry>;
}

