package js.lib;

typedef BigIntConstructor = {
	@:selfCall
	function call(value:ts.AnyOf4<String, Float, ts.BigInt, Bool>):ts.BigInt;
	final prototype : BigInt;
	/**
		Interprets the low bits of a BigInt as a 2's-complement signed integer.
		All higher bits are discarded.
	**/
	function asIntN(bits:Float, int:ts.BigInt):ts.BigInt;
	/**
		Interprets the low bits of a BigInt as an unsigned integer.
		All higher bits are discarded.
	**/
	function asUintN(bits:Float, int:ts.BigInt):ts.BigInt;
};