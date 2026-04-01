package global;

@:native("Big") extern class Big {
	/**
		Returns a new instance of a Big number object
		
		String values may be in exponential, as well as normal (non-exponential) notation.
		There is no limit to the number of digits of a string value (other than that of Javascript's maximum array size), but the largest recommended exponent magnitude is 1e+6.
		Infinity, NaN and hexadecimal literal strings, e.g. '0xff', are not valid.
		String values in octal literal form will be interpreted as decimals, e.g. '011' is 11, not 9.
	**/
	function new(value:big_js.BigSource);
	/**
		Returns a new instance of a Big number object
		
		String values may be in exponential, as well as normal (non-exponential) notation.
		There is no limit to the number of digits of a string value (other than that of Javascript's maximum array size), but the largest recommended exponent magnitude is 1e+6.
		Infinity, NaN and hexadecimal literal strings, e.g. '0xff', are not valid.
		String values in octal literal form will be interpreted as decimals, e.g. '011' is 11, not 9.
	**/
	@:overload(function():big_js.BigConstructor { })
	@:selfCall
	static function call(value:big_js.BigSource):big_js.Big;
	/**
		The maximum number of decimal places of the results of operations involving division.
		It is relevant only to the div and sqrt methods, and the pow method when the exponent is negative.
		
		0 to 1e+6 inclusive
		Default value: 20
	**/
	static var DP : Float;
	/**
		The rounding mode used in the above operations and by round, toExponential, toFixed and toPrecision.
		Default value: 1
	**/
	static var RM : Float;
	/**
		The negative exponent value at and below which toString returns exponential notation.
		
		-1e+6 to 0 inclusive
		Default value: -7
	**/
	static var NE : Float;
	/**
		The positive exponent value at and above which toString returns exponential notation.
		
		0 to 1e+6 inclusive
		Default value: 21
	**/
	static var PE : Float;
}