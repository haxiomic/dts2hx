package ts.lib;
extern typedef BigIntConstructor = {
	@:selfCall
	function call(?value:Any):BigInt;
	final prototype : BigInt;
	/**
		Interprets the low bits of a BigInt as a 2's-complement signed integer.
		All higher bits are discarded.
	**/
	function asIntN(bits:Float, int:BigInt):BigInt;
	/**
		Interprets the low bits of a BigInt as an unsigned integer.
		All higher bits are discarded.
	**/
	function asUintN(bits:Float, int:BigInt):BigInt;
};