package js.lib;

/**
	An object that represents a number of any kind. All JavaScript numbers are 64-bit floating-point numbers.
**/
typedef INumber = {
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
};