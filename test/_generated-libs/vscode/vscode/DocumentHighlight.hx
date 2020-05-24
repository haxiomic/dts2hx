package vscode;

/**
	A document highlight is a range inside a text document which deserves
	special attention. Usually a document highlight is visualized by changing
	the background color of its range.
**/
@:jsRequire("vscode", "DocumentHighlight") extern class DocumentHighlight {
	/**
		Creates a new document highlight object.
	**/
	function new(range:Range, ?kind:DocumentHighlightKind);
	/**
		The range this highlight applies to.
	**/
	var range : Range;
	/**
		The highlight kind, default is [text](#DocumentHighlightKind.Text).
	**/
	@:optional
	var kind : DocumentHighlightKind;
	static var prototype : DocumentHighlight;
}