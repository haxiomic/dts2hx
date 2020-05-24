package vscode;

/**
	Represents edits to semantic tokens.
**/
@:jsRequire("vscode", "SemanticTokensEdits") extern class SemanticTokensEdits {
	function new(edits:Array<SemanticTokensEdit>, ?resultId:String);
	/**
		The result id of the tokens.
		
		This is the id that will be passed to `DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits` (if implemented).
	**/
	@:optional
	final resultId : String;
	/**
		The edits to the tokens data.
		All edits refer to the initial data state.
	**/
	final edits : Array<SemanticTokensEdit>;
	static var prototype : SemanticTokensEdits;
}