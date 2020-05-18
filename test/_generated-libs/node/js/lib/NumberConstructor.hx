package js.lib;

typedef NumberConstructor = {
	@:selfCall
	function call(?value:Dynamic):Float;
	final prototype : Number;
	/**
		The largest number that can be represented in JavaScript. Equal to approximately 1.79E+308.
	**/
	final MAX_VALUE : Float;
	/**
		The closest number to zero that can be represented in JavaScript. Equal to approximately 5.00E-324.
	**/
	final MIN_VALUE : Float;
	/**
		A value that is not a number.
		In equality comparisons, NaN does not equal any value, including itself. To test whether a value is equivalent to NaN, use the isNaN function.
	**/
	final NaN : Float;
	/**
		A value that is less than the largest negative number that can be represented in JavaScript.
		JavaScript displays NEGATIVE_INFINITY values as -infinity.
	**/
	final NEGATIVE_INFINITY : Float;
	/**
		A value greater than the largest number that can be represented in JavaScript.
		JavaScript displays POSITIVE_INFINITY values as infinity.
	**/
	final POSITIVE_INFINITY : Float;
	/**
		The value of Number.EPSILON is the difference between 1 and the smallest value greater than 1
		that is representable as a Number value, which is approximately:
		2.2204460492503130808472633361816 x 10‍−‍16.
	**/
	final EPSILON : Float;
	/**
		Returns true if passed value is finite.
		Unlike the global isFinite, Number.isFinite doesn't forcibly convert the parameter to a
		number. Only finite values of the type number, result in true.
	**/
	function isFinite(number:Float):Bool;
	/**
		Returns true if the value passed is an integer, false otherwise.
	**/
	function isInteger(number:Float):Bool;
	/**
		Returns a Boolean value that indicates whether a value is the reserved value NaN (not a
		number). Unlike the global isNaN(), Number.isNaN() doesn't forcefully convert the parameter
		to a number. Only values of the type number, that are also NaN, result in true.
	**/
	function isNaN(number:Float):Bool;
	/**
		Returns true if the value passed is a safe integer.
	**/
	function isSafeInteger(number:Float):Bool;
	/**
		The value of the largest integer n such that n and n + 1 are both exactly representable as
		a Number value.
		The value of Number.MAX_SAFE_INTEGER is 9007199254740991 2^53 − 1.
	**/
	final MAX_SAFE_INTEGER : Float;
	/**
		The value of the smallest integer n such that n and n − 1 are both exactly representable as
		a Number value.
		The value of Number.MIN_SAFE_INTEGER is −9007199254740991 (−(2^53 − 1)).
	**/
	final MIN_SAFE_INTEGER : Float;
	/**
		Converts a string to a floating-point number.
	**/
	function parseFloat(string:String):Float;
	/**
		Converts A string to an integer.
	**/
	function parseInt(string:String, ?radix:Float):Float;
};