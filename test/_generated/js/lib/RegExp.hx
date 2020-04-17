package js.lib;
extern interface RegExp {
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
	var source : String;
	/**
		Returns a Boolean value indicating the state of the global flag (g) used with a regular expression. Default is false. Read-only.
	**/
	var global : Bool;
	/**
		Returns a Boolean value indicating the state of the ignoreCase flag (i) used with a regular expression. Default is false. Read-only.
	**/
	var ignoreCase : Bool;
	/**
		Returns a Boolean value indicating the state of the multiline flag (m) used with a regular expression. Default is false. Read-only.
	**/
	var multiline : Bool;
	var lastIndex : Float;
	function compile():RegExp;
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
	var flags : String;
	/**
		Returns a Boolean value indicating the state of the sticky flag (y) used with a regular
		expression. Default is false. Read-only.
	**/
	var sticky : Bool;
	/**
		Returns a Boolean value indicating the state of the Unicode flag (u) used with a regular
		expression. Default is false. Read-only.
	**/
	var unicode : Bool;
	/**
		Matches a string with this regular expression, and returns an array containing the results of
		that search.
	**/
	@:native("__@match")
	function __AtMatch(string:String):Null<RegExpMatchArray>;
	/**
		Replaces text in a string, using this regular expression.
		
		
		
		Replaces text in a string, using this regular expression.
	**/
	@:native("__@replace")
	@:overload(function(string:String, replacer:(substring:String, args:Array<Any>) -> String):String { })
	function __AtReplace(string:String, replaceValue:String):String;
	/**
		Finds the position beginning first substring match in a regular expression search
		using this regular expression.
	**/
	@:native("__@search")
	function __AtSearch(string:String):Float;
	/**
		Returns an array of substrings that were delimited by strings in the original input that
		match against this regular expression.
		
		If the regular expression contains capturing parentheses, then each time this
		regular expression matches, the results (including any undefined results) of the
		capturing parentheses are spliced.
	**/
	@:native("__@split")
	function __AtSplit(string:String, ?limit:Float):Array<String>;
}