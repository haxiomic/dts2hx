package vscode;

/**
	Describes how comments for a language work.
**/
typedef CommentRule = {
	/**
		The line comment token, like `// this is a comment`
	**/
	@:optional
	var lineComment : String;
	/**
		The block comment character pair, like `/* block comment *&#47;`
	**/
	@:optional
	var blockComment : CharacterPair;
};