package global;
@:native("Big") extern class Big {
	function new(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, big_js.Big>>);
	@:overload(function():big_js.BigConstructor { })
	@:selfCall
	static function call(value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, big_js.Big>>):big_js.Big;
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