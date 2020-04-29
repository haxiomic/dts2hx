package js.lib;
extern typedef IRegExp = {
	/**
		Executes a search on a string using a regular expression pattern, and returns an array containing the results of that search.
	**/
	function exec(string:String):Null<RegExpExecArray>;
	/**
		Returns a Boolean value that indicates whether or not a pattern exists in a searched string.
	**/
	function test(string:String):Bool;
	/**
		Returns a copy of the text of the regular expression pattern. Read-only. The regExp argument is a Regular expression object. It can be a variable name or a literal.
	**/
	final source : String;
	/**
		Returns a Boolean value indicating the state of the global flag (g) used with a regular expression. Default is false. Read-only.
	**/
	final global : Bool;
	/**
		Returns a Boolean value indicating the state of the ignoreCase flag (i) used with a regular expression. Default is false. Read-only.
	**/
	final ignoreCase : Bool;
	/**
		Returns a Boolean value indicating the state of the multiline flag (m) used with a regular expression. Default is false. Read-only.
	**/
	final multiline : Bool;
	var lastIndex : Float;
	function compile():IRegExp;
	/**
		Returns a string indicating the flags of the regular expression in question. This field is read-only.
		The characters in this string are sequenced and concatenated in the following order:
		
		    - "g" for global
		    - "i" for ignoreCase
		    - "m" for multiline
		    - "u" for unicode
		    - "y" for sticky
		
		If no flags are set, the value is the empty string.
	**/
	final flags : String;
	/**
		Returns a Boolean value indicating the state of the sticky flag (y) used with a regular
		expression. Default is false. Read-only.
	**/
	final sticky : Bool;
	/**
		Returns a Boolean value indicating the state of the Unicode flag (u) used with a regular
		expression. Default is false. Read-only.
	**/
	final unicode : Bool;
	/**
		Returns a Boolean value indicating the state of the dotAll flag (s) used with a regular expression.
		Default is false. Read-only.
	**/
	final dotAll : Bool;
};