package js.lib;
extern typedef TextStreamBase = { /**
		The column number of the current character position in an input stream.
	**/
	var Column : Float; /**
		The current line number in an input stream.
	**/
	var Line : Float; /**
		Closes a text stream.
		It is not necessary to close standard streams; they close automatically when the process ends. If
		you close a standard stream, be aware that any other pointers to that standard stream become invalid.
	**/
	function Close():Void; };