package vscode;

/**
	A semantic tokens legend contains the needed information to decipher
	the integer encoded representation of semantic tokens.
**/
@:jsRequire("vscode", "SemanticTokensLegend") extern class SemanticTokensLegend {
	function new(tokenTypes:Array<String>, ?tokenModifiers:Array<String>);
	/**
		The possible token types.
	**/
	final tokenTypes : Array<String>;
	/**
		The possible token modifiers.
	**/
	final tokenModifiers : Array<String>;
	static var prototype : SemanticTokensLegend;
}