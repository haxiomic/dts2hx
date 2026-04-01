package vscode;

/**
	Represents semantic tokens, either in a range or in an entire document.
**/
@:jsRequire("vscode", "SemanticTokens") extern class SemanticTokens {
	function new(data:js.lib.Uint32Array_<js.lib.ArrayBuffer>, ?resultId:String);
	/**
		The result id of the tokens.
		
		This is the id that will be passed to `DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits` (if implemented).
	**/
	@:optional
	final resultId : String;
	/**
		The actual tokens data.
	**/
	final data : js.lib.Uint32Array_<js.lib.ArrayBuffer>;
	static var prototype : SemanticTokens;
}