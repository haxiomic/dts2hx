package vscode;

/**
	A selection range represents a part of a selection hierarchy. A selection range
	may have a parent selection range that contains it.
**/
@:jsRequire("vscode", "SelectionRange") extern class SelectionRange {
	/**
		Creates a new selection range.
	**/
	function new(range:Range, ?parent:SelectionRange);
	/**
		The [range](#Range) of this selection range.
	**/
	var range : Range;
	/**
		The parent selection range containing this range.
	**/
	@:optional
	var parent : SelectionRange;
	static var prototype : SelectionRange;
}