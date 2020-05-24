package vscode;

/**
	A line based folding range. To be valid, start and end line must be bigger than zero and smaller than the number of lines in the document.
	Invalid ranges will be ignored.
**/
@:jsRequire("vscode", "FoldingRange") extern class FoldingRange {
	/**
		Creates a new folding range.
	**/
	function new(start:Float, end:Float, ?kind:FoldingRangeKind);
	/**
		The zero-based start line of the range to fold. The folded area starts after the line's last character.
		To be valid, the end must be zero or larger and smaller than the number of lines in the document.
	**/
	var start : Float;
	/**
		The zero-based end line of the range to fold. The folded area ends with the line's last character.
		To be valid, the end must be zero or larger and smaller than the number of lines in the document.
	**/
	var end : Float;
	/**
		Describes the [Kind](#FoldingRangeKind) of the folding range such as [Comment](#FoldingRangeKind.Comment) or
		[Region](#FoldingRangeKind.Region). The kind is used to categorize folding ranges and used by commands
		like 'Fold all comments'. See
		[FoldingRangeKind](#FoldingRangeKind) for an enumeration of all kinds.
		If not set, the range is originated from a syntax element.
	**/
	@:optional
	var kind : FoldingRangeKind;
	static var prototype : FoldingRange;
}