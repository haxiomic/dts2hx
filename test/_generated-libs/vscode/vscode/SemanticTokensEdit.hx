package vscode;

/**
	Represents an edit to semantic tokens.
**/
@:jsRequire("vscode", "SemanticTokensEdit") extern class SemanticTokensEdit {
	function new(start:Float, deleteCount:Float, ?data:js.lib.Uint32Array_<js.lib.ArrayBuffer>);
	/**
		The start offset of the edit.
	**/
	final start : Float;
	/**
		The count of elements to remove.
	**/
	final deleteCount : Float;
	/**
		The elements to insert.
	**/
	@:optional
	final data : js.lib.Uint32Array_<js.lib.ArrayBuffer>;
	static var prototype : SemanticTokensEdit;
}