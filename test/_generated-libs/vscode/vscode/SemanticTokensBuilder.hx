package vscode;

/**
	A semantic tokens builder can help with creating a `SemanticTokens` instance
	which contains delta encoded semantic tokens.
**/
@:jsRequire("vscode", "SemanticTokensBuilder") extern class SemanticTokensBuilder {
	function new(?legend:SemanticTokensLegend);
	/**
		Add another token.
		
		Add another token. Use only when providing a legend.
	**/
	@:overload(function(range:Range, tokenType:String, ?tokenModifiers:Array<String>):Void { })
	function push(line:Float, char:Float, length:Float, tokenType:Float, ?tokenModifiers:Float):Void;
	/**
		Finish and create a `SemanticTokens` instance.
	**/
	function build(?resultId:String):SemanticTokens;
	static var prototype : SemanticTokensBuilder;
}