package vscode;

/**
	Represents a line of text, such as a line of source code.
	
	TextLine objects are __immutable__. When a [document](#TextDocument) changes,
	previously retrieved lines will not represent the latest state.
**/
typedef TextLine = {
	/**
		The zero-based line number.
	**/
	final lineNumber : Float;
	/**
		The text of this line without the line separator characters.
	**/
	final text : String;
	/**
		The range this line covers without the line separator characters.
	**/
	final range : Range;
	/**
		The range this line covers with the line separator characters.
	**/
	final rangeIncludingLineBreak : Range;
	/**
		The offset of the first character which is not a whitespace character as defined
		by `/\s/`. **Note** that if a line is all whitespace the length of the line is returned.
	**/
	final firstNonWhitespaceCharacterIndex : Float;
	/**
		Whether this line is whitespace only, shorthand
		for [TextLine.firstNonWhitespaceCharacterIndex](#TextLine.firstNonWhitespaceCharacterIndex) === [TextLine.text.length](#TextLine.text).
	**/
	final isEmptyOrWhitespace : Bool;
};