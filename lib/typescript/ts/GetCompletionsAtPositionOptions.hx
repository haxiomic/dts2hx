package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:5091:5
**/

typedef GetCompletionsAtPositionOptions = typescript.ts.UserPreferences & {
	/**
	If the editor is asking for completions because a certain character was typed
	(as opposed to when the user explicitly requested them) this should be set.
	**/
	@:optional
	var triggerCharacter: typescript.ts.CompletionsTriggerCharacter;
	@:optional
	var includeExternalModuleExports: Bool;
	@:optional
	var includeInsertTextCompletions: Bool;
}

