package js.lib;
extern typedef TextStreamWriter = TextStreamBase & { /**
		Sends a string to an output stream.
	**/
	function Write(s:String):Void; /**
		Sends a specified number of blank lines (newline characters) to an output stream.
	**/
	function WriteBlankLines(intLines:Float):Void; /**
		Sends a string followed by a newline character to an output stream.
	**/
	function WriteLine(s:String):Void; };