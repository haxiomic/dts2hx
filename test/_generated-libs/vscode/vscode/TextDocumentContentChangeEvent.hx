package vscode;

/**
	An event describing an individual change in the text of a [document](#TextDocument).
**/
typedef TextDocumentContentChangeEvent = {
	/**
		The range that got replaced.
	**/
	final range : Range;
	/**
		The offset of the range that got replaced.
	**/
	final rangeOffset : Float;
	/**
		The length of the range that got replaced.
	**/
	final rangeLength : Float;
	/**
		The new text for the range.
	**/
	final text : String;
};