package js.lib;

/**
	Allows manipulation and formatting of text strings and determination and location of substrings within strings.
**/
typedef IString = {
	/**
		Returns a string representation of a string.
	**/
	function toString():String;
	/**
		Returns the character at the specified index.
	**/
	function charAt(pos:Float):String;
	/**
		Returns the Unicode value of the character at the specified location.
	**/
	function charCodeAt(index:Float):Float;
	/**
		Returns a string that contains the concatenation of two or more strings.
	**/
	function concat(strings:haxe.extern.Rest<String>):String;
	/**
		Returns the position of the first occurrence of a substring.
	**/
	function indexOf(searchString:String, ?position:Float):Float;
	/**
		Returns the last occurrence of a substring in the string.
	**/
	function lastIndexOf(searchString:String, ?position:Float):Float;
	/**
		Determines whether two strings are equivalent in the current locale.
		
		Determines whether two strings are equivalent in the current or specified locale.
	**/
	@:overload(function(that:String, ?locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.Collator.CollatorOptions):Float { })
	function localeCompare(that:String):Float;
	/**
		Matches a string with a regular expression, and returns an array containing the results of that search.
		
		Matches a string an object that supports being matched against, and returns an array containing the results of that search.
	**/
	@:overload(function(matcher:{ }):Null<js.lib.RegExpMatchArray> { })
	function match(regexp:ts.AnyOf2<String, js.lib.RegExp>):Null<js.lib.RegExpMatchArray>;
	/**
		Replaces text in a string, using a regular expression or search string.
		
		Replaces text in a string, using a regular expression or search string.
		
		Replaces text in a string, using an object that supports replacement within a string.
		
		Replaces text in a string, using an object that supports replacement within a string.
	**/
	@:overload(function(searchValue:ts.AnyOf2<String, js.lib.RegExp>, replacer:(substring:String, args:haxe.extern.Rest<Dynamic>) -> String):String { })
	@:overload(function(searchValue:{ }, replaceValue:String):String { })
	@:overload(function(searchValue:{ }, replacer:(substring:String, args:haxe.extern.Rest<Dynamic>) -> String):String { })
	function replace(searchValue:ts.AnyOf2<String, js.lib.RegExp>, replaceValue:String):String;
	/**
		Finds the first substring match in a regular expression search.
		
		Finds the first substring match in a regular expression search.
	**/
	@:overload(function(searcher:{ }):Float { })
	function search(regexp:ts.AnyOf2<String, js.lib.RegExp>):Float;
	/**
		Returns a section of a string.
	**/
	function slice(?start:Float, ?end:Float):String;
	/**
		Split a string into substrings using the specified separator and return them as an array.
		
		Split a string into substrings using the specified separator and return them as an array.
	**/
	@:overload(function(splitter:{ }, ?limit:Float):Array<String> { })
	function split(separator:ts.AnyOf2<String, js.lib.RegExp>, ?limit:Float):Array<String>;
	/**
		Returns the substring at the specified location within a String object.
	**/
	function substring(start:Float, ?end:Float):String;
	/**
		Converts all the alphabetic characters in a string to lowercase.
	**/
	function toLowerCase():String;
	/**
		Converts all alphabetic characters to lowercase, taking into account the host environment's current locale.
	**/
	function toLocaleLowerCase(?locales:ts.AnyOf2<String, Array<String>>):String;
	/**
		Converts all the alphabetic characters in a string to uppercase.
	**/
	function toUpperCase():String;
	/**
		Returns a string where all alphabetic characters have been converted to uppercase, taking into account the host environment's current locale.
	**/
	function toLocaleUpperCase(?locales:ts.AnyOf2<String, Array<String>>):String;
	/**
		Removes the leading and trailing white space and line terminator characters from a string.
	**/
	function trim():String;
	/**
		Returns the length of a String object.
	**/
	final length : Float;
	/**
		Gets a substring beginning at the specified location and having the specified length.
	**/
	function substr(from:Float, ?length:Float):String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():String;
	/**
		Returns a nonnegative integer Number less than 1114112 (0x110000) that is the code point
		value of the UTF-16 encoded code point starting at the string element at position pos in
		the String resulting from converting this object to a String.
		If there is no element at that position, the result is undefined.
		If a valid UTF-16 surrogate pair does not begin at pos, the result is the code unit at pos.
	**/
	function codePointAt(pos:Float):Null<Float>;
	/**
		Returns true if searchString appears as a substring of the result of converting this
		object to a String, at one or more positions that are
		greater than or equal to position; otherwise, returns false.
	**/
	function includes(searchString:String, ?position:Float):Bool;
	/**
		Returns true if the sequence of elements of searchString converted to a String is the
		same as the corresponding elements of this object (converted to a String) starting at
		endPosition – length(this). Otherwise returns false.
	**/
	function endsWith(searchString:String, ?endPosition:Float):Bool;
	/**
		Returns the String value result of normalizing the string into the normalization form
		named by form as specified in Unicode Standard Annex #15, Unicode Normalization Forms.
		
		Returns the String value result of normalizing the string into the normalization form
		named by form as specified in Unicode Standard Annex #15, Unicode Normalization Forms.
	**/
	@:overload(function(?form:String):String { })
	function normalize(form:String):String;
	/**
		Returns a String value that is made from count copies appended together. If count is 0,
		the empty string is returned.
	**/
	function repeat(count:Float):String;
	/**
		Returns true if the sequence of elements of searchString converted to a String is the
		same as the corresponding elements of this object (converted to a String) starting at
		position. Otherwise returns false.
	**/
	function startsWith(searchString:String, ?position:Float):Bool;
	/**
		Returns an <a> HTML anchor element and sets the name attribute to the text value
	**/
	function anchor(name:String):String;
	/**
		Returns a <big> HTML element
	**/
	function big():String;
	/**
		Returns a <blink> HTML element
	**/
	function blink():String;
	/**
		Returns a <b> HTML element
	**/
	function bold():String;
	/**
		Returns a <tt> HTML element
	**/
	function fixed():String;
	/**
		Returns a <font> HTML element and sets the color attribute value
	**/
	function fontcolor(color:String):String;
	/**
		Returns a <font> HTML element and sets the size attribute value
		
		Returns a <font> HTML element and sets the size attribute value
	**/
	@:overload(function(size:String):String { })
	function fontsize(size:Float):String;
	/**
		Returns an <i> HTML element
	**/
	function italics():String;
	/**
		Returns an <a> HTML element and sets the href attribute value
	**/
	function link(url:String):String;
	/**
		Returns a <small> HTML element
	**/
	function small():String;
	/**
		Returns a <strike> HTML element
	**/
	function strike():String;
	/**
		Returns a <sub> HTML element
	**/
	function sub():String;
	/**
		Returns a <sup> HTML element
	**/
	function sup():String;
	/**
		Pads the current string with a given string (possibly repeated) so that the resulting string reaches a given length.
		The padding is applied from the start (left) of the current string.
	**/
	function padStart(maxLength:Float, ?fillString:String):String;
	/**
		Pads the current string with a given string (possibly repeated) so that the resulting string reaches a given length.
		The padding is applied from the end (right) of the current string.
	**/
	function padEnd(maxLength:Float, ?fillString:String):String;
	/**
		Removes whitespace from the left end of a string.
	**/
	function trimLeft():String;
	/**
		Removes whitespace from the right end of a string.
	**/
	function trimRight():String;
};