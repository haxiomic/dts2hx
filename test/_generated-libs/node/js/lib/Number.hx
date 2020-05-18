package js.lib;

/**
	An object that represents a number of any kind. All JavaScript numbers are 64-bit floating-point numbers.
**/
@:native("Number") extern class Number {
	function new(?value:Dynamic);
	/**
		Returns a string representation of an object.
	**/
	function toString(?radix:Float):String;
	/**
		Returns a string representing a number in fixed-point notation.
	**/
	function toFixed(?fractionDigits:Float):String;
	/**
		Returns a string containing a number represented in exponential notation.
	**/
	function toExponential(?fractionDigits:Float):String;
	/**
		Returns a string containing a number represented either in exponential or fixed-point notation with a specified number of digits.
	**/
	function toPrecision(?precision:Float):String;
	/**
		Returns the primitive value of the specified object.
	**/
	function valueOf():Float;
	/**
		Converts a number to a string by using the current or specified locale.
	**/
	function toLocaleString(?locales:ts.AnyOf2<String, Array<String>>, ?options:js.lib.intl.NumberFormat.NumberFormatOptions):String;
	@:selfCall
	static function call(?value:Dynamic):Float;
	static final prototype : Number;
	/**
		The largest number that can be represented in JavaScript. Equal to approximately 1.79E+308.
	**/
	static final MAX_VALUE : Float;
	/**
		The closest number to zero that can be represented in JavaScript. Equal to approximately 5.00E-324.
	**/
	static final MIN_VALUE : Float;
	/**
		A value that is not a number.
		In equality comparisons, NaN does not equal any value, including itself. To test whether a value is equivalent to NaN, use the isNaN function.
	**/
	static final NaN : Float;
	/**
		A value that is less than the largest negative number that can be represented in JavaScript.
		JavaScript displays NEGATIVE_INFINITY values as -infinity.
	**/
	static final NEGATIVE_INFINITY : Float;
	/**
		A value greater than the largest number that can be represented in JavaScript.
		JavaScript displays POSITIVE_INFINITY values as infinity.
	**/
	static final POSITIVE_INFINITY : Float;
	/**
		The value of Number.EPSILON is the difference between 1 and the smallest value greater than 1
		that is representable as a Number value, which is approximately:
		2.2204460492503130808472633361816 x 10‍−‍16.
	**/
	static final EPSILON : Float;
	/**
		Returns true if passed value is finite.
		Unlike the global isFinite, Number.isFinite doesn't forcibly convert the parameter to a
		number. Only finite values of the type number, result in true.
	**/
	static function isFinite(number:Float):Bool;
	/**
		Returns true if the value passed is an integer, false otherwise.
	**/
	static function isInteger(number:Float):Bool;
	/**
		Returns a Boolean value that indicates whether a value is the reserved value NaN (not a
		number). Unlike the global isNaN(), Number.isNaN() doesn't forcefully convert the parameter
		to a number. Only values of the type number, that are also NaN, result in true.
	**/
	static function isNaN(number:Float):Bool;
	/**
		Returns true if the value passed is a safe integer.
	**/
	static function isSafeInteger(number:Float):Bool;
	/**
		The value of the largest integer n such that n and n + 1 are both exactly representable as
		a Number value.
		The value of Number.MAX_SAFE_INTEGER is 9007199254740991 2^53 − 1.
	**/
	static final MAX_SAFE_INTEGER : Float;
	/**
		The value of the smallest integer n such that n and n − 1 are both exactly representable as
		a Number value.
		The value of Number.MIN_SAFE_INTEGER is −9007199254740991 (−(2^53 − 1)).
	**/
	static final MIN_SAFE_INTEGER : Float;
	/**
		Converts a string to a floating-point number.
	**/
	static function parseFloat(string:String):Float;
	/**
		Converts A string to an integer.
	**/
	static function parseInt(string:String, ?radix:Float):Float;
}