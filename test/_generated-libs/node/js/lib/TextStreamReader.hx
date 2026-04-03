package js.lib;

typedef TextStreamReader = {
	/**
		Returns a specified number of characters from an input stream, starting at the current pointer position.
		Does not return until the ENTER key is pressed.
		Can only be used on a stream in reading mode; causes an error in writing or appending mode.
	**/
	function Read(characters:Float):String;
	/**
		Returns all characters from an input stream.
		Can only be used on a stream in reading mode; causes an error in writing or appending mode.
	**/
	function ReadAll():String;
	/**
		Returns an entire line from an input stream.
		Although this method extracts the newline character, it does not add it to the returned string.
		Can only be used on a stream in reading mode; causes an error in writing or appending mode.
	**/
	function ReadLine():String;
	/**
		Skips a specified number of characters when reading from an input text stream.
		Can only be used on a stream in reading mode; causes an error in writing or appending mode.
	**/
	function Skip(characters:Float):Void;
	/**
		Skips the next line when reading from an input text stream.
		Can only be used on a stream in reading mode, not writing or appending mode.
	**/
	function SkipLine():Void;
	/**
		Indicates whether the stream pointer position is at the end of a line.
	**/
	var AtEndOfLine : Bool;
	/**
		Indicates whether the stream pointer position is at the end of a stream.
	**/
	var AtEndOfStream : Bool;
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