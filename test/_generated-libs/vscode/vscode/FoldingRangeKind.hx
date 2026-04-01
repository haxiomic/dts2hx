package vscode;

/**
	An enumeration of specific folding range kinds. The kind is an optional field of a [FoldingRange](#FoldingRange)
	and is used to distinguish specific folding ranges such as ranges originated from comments. The kind is used by commands like
	`Fold all comments` or `Fold all regions`.
	If the kind is not set on the range, the range originated from a syntax element other than comments, imports or region markers.
**/
@:jsRequire("vscode", "FoldingRangeKind") extern enum abstract FoldingRangeKind(Int) from Int to Int {
	/**
		Kind for folding range representing a comment.
	**/
	var Comment;
	/**
		Kind for folding range representing a import.
	**/
	var Imports;
	/**
		Kind for folding range representing regions originating from folding markers like `#region` and `#endregion`.
	**/
	var Region;
}