package ts.lib;
/**
	An intrinsic object that provides basic mathematics functionality and constants.
**/
typedef Math = {
	/**
		The mathematical constant e. This is Euler's number, the base of natural logarithms.
	**/
	final E : Float;
	/**
		The natural logarithm of 10.
	**/
	final LN10 : Float;
	/**
		The natural logarithm of 2.
	**/
	final LN2 : Float;
	/**
		The base-2 logarithm of e.
	**/
	final LOG2E : Float;
	/**
		The base-10 logarithm of e.
	**/
	final LOG10E : Float;
	/**
		Pi. This is the ratio of the circumference of a circle to its diameter.
	**/
	final PI : Float;
	/**
		The square root of 0.5, or, equivalently, one divided by the square root of 2.
	**/
	final SQRT1_2 : Float;
	/**
		The square root of 2.
	**/
	final SQRT2 : Float;
	/**
		Returns the absolute value of a number (the value without regard to whether it is positive or negative).
		For example, the absolute value of -5 is the same as the absolute value of 5.
	**/
	function abs(x:Float):Float;
	/**
		Returns the arc cosine (or inverse cosine) of a number.
	**/
	function acos(x:Float):Float;
	/**
		Returns the arcsine of a number.
	**/
	function asin(x:Float):Float;
	/**
		Returns the arctangent of a number.
	**/
	function atan(x:Float):Float;
	/**
		Returns the angle (in radians) from the X axis to a point.
	**/
	function atan2(y:Float, x:Float):Float;
	/**
		Returns the smallest integer greater than or equal to its numeric argument.
	**/
	function ceil(x:Float):Float;
	/**
		Returns the cosine of a number.
	**/
	function cos(x:Float):Float;
	/**
		Returns e (the base of natural logarithms) raised to a power.
	**/
	function exp(x:Float):Float;
	/**
		Returns the greatest integer less than or equal to its numeric argument.
	**/
	function floor(x:Float):Float;
	/**
		Returns the natural logarithm (base e) of a number.
	**/
	function log(x:Float):Float;
	/**
		Returns the larger of a set of supplied numeric expressions.
	**/
	function max(values:haxe.extern.Rest<Float>):Float;
	/**
		Returns the smaller of a set of supplied numeric expressions.
	**/
	function min(values:haxe.extern.Rest<Float>):Float;
	/**
		Returns the value of a base expression taken to a specified power.
	**/
	function pow(x:Float, y:Float):Float;
	/**
		Returns a pseudorandom number between 0 and 1.
	**/
	function random():Float;
	/**
		Returns a supplied numeric expression rounded to the nearest integer.
	**/
	function round(x:Float):Float;
	/**
		Returns the sine of a number.
	**/
	function sin(x:Float):Float;
	/**
		Returns the square root of a number.
	**/
	function sqrt(x:Float):Float;
	/**
		Returns the tangent of a number.
	**/
	function tan(x:Float):Float;
	/**
		Returns the number of leading zero bits in the 32-bit binary representation of a number.
	**/
	function clz32(x:Float):Float;
	/**
		Returns the result of 32-bit multiplication of two numbers.
	**/
	function imul(x:Float, y:Float):Float;
	/**
		Returns the sign of the x, indicating whether x is positive, negative or zero.
	**/
	function sign(x:Float):Float;
	/**
		Returns the base 10 logarithm of a number.
	**/
	function log10(x:Float):Float;
	/**
		Returns the base 2 logarithm of a number.
	**/
	function log2(x:Float):Float;
	/**
		Returns the natural logarithm of 1 + x.
	**/
	function log1p(x:Float):Float;
	/**
		Returns the result of (e^x - 1), which is an implementation-dependent approximation to
		subtracting 1 from the exponential function of x (e raised to the power of x, where e
		is the base of the natural logarithms).
	**/
	function expm1(x:Float):Float;
	/**
		Returns the hyperbolic cosine of a number.
	**/
	function cosh(x:Float):Float;
	/**
		Returns the hyperbolic sine of a number.
	**/
	function sinh(x:Float):Float;
	/**
		Returns the hyperbolic tangent of a number.
	**/
	function tanh(x:Float):Float;
	/**
		Returns the inverse hyperbolic cosine of a number.
	**/
	function acosh(x:Float):Float;
	/**
		Returns the inverse hyperbolic sine of a number.
	**/
	function asinh(x:Float):Float;
	/**
		Returns the inverse hyperbolic tangent of a number.
	**/
	function atanh(x:Float):Float;
	/**
		Returns the square root of the sum of squares of its arguments.
	**/
	function hypot(values:haxe.extern.Rest<Float>):Float;
	/**
		Returns the integral part of the a numeric expression, x, removing any fractional digits.
		If x is already an integer, the result is x.
	**/
	function trunc(x:Float):Float;
	/**
		Returns the nearest single precision float representation of a number.
	**/
	function fround(x:Float):Float;
	/**
		Returns an implementation-dependent approximation to the cube root of number.
	**/
	function cbrt(x:Float):Float;
};