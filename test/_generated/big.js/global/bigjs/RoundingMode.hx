package global.bigjs;
@:enum extern abstract RoundingMode(Int) from Int to Int {
	/**
		Rounds towards zero.
		I.e. truncate, no rounding.
	**/
	var RoundDown = 0;
	/**
		Rounds towards nearest neighbour.
		If equidistant, rounds away from zero.
	**/
	var RoundHalfUp = 1;
	/**
		Rounds towards nearest neighbour.
		If equidistant, rounds towards even neighbour.
	**/
	var RoundHalfEven = 2;
	/**
		Rounds away from zero.
	**/
	var RoundUp = 3;
}