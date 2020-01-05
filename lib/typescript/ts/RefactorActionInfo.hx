package typescript.ts;


/**
Represents a single refactoring action - for example, the "Extract Method..." refactor might
offer several actions, each corresponding to a surround class or closure to extract into.

Generated from: test-definitions/typescript/typescript-extended.d.ts:5259:5
**/

typedef RefactorActionInfo = {
	/**
	The programmatic name of the refactoring action
	**/
	var name: String;
	/**
	A description of this refactoring action to show to the user.
	If the parent refactoring is inlined away, this will be the only text shown,
	so this description should make sense by itself if the parent is inlineable=true
	**/
	var description: String;
}

