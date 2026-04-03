package js.lib;

typedef TextStreamWriter = {
	/**
		Sends a string to an output stream.
	**/
	function Write(s:String):Void;
	/**
		Sends a specified number of blank lines (newline characters) to an output stream.
	**/
	function WriteBlankLines(intLines:Float):Void;
	/**
		Sends a string followed by a newline character to an output stream.
	**/
	function WriteLine(s:String):Void;
	/**
		The column number of the current character position in an input stream.
	**/
	var Column : Float;
	/**
		The current line number in an input stream.
	**/
	var Line : Float;
	/**
		Closes a text stream.
		It is not necessary to close standard streams; they close automatically when the process ends. If
		you close a standard stream, be aware that any other pointers to that standard stream become invalid.
	**/
	function Close():Void;
};