package vscode;

/**
	Represents an end of line character sequence in a [document](#TextDocument).
**/
@:jsRequire("vscode", "EndOfLine") @:enum extern abstract EndOfLine(Int) from Int to Int {
	/**
		The line feed `\n` character.
	**/
	var LF;
	/**
		The carriage return line feed `\r\n` sequence.
	**/
	var CRLF;
}