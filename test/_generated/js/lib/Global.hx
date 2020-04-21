package js.lib;
@:native("") extern class Global {
	/**
		Allows manipulation and formatting of text strings and determination and location of substrings within strings.
	**/
	static var String : StringConstructor;
	/**
		An object that represents a number of any kind. All JavaScript numbers are 64-bit floating-point numbers.
	**/
	static var Number : NumberConstructor;
	static var Boolean : BooleanConstructor;
	static var Map : MapConstructor;
	static var RegExp : RegExpConstructor;
}