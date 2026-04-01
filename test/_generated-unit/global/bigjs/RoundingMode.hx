package global.bigjs;

extern enum abstract RoundingMode(Int) from Int to Int {
	/**
		Rounds towards zero.
		I.e. truncate, no rounding.
	**/
	final RoundDown = 0;
	/**
		Rounds towards nearest neighbour.
		If equidistant, rounds away from zero.
	**/
	final RoundHalfUp = 1;
	/**
		Rounds towards nearest neighbour.
		If equidistant, rounds towards even neighbour.
	**/
	final RoundHalfEven = 2;
	/**
		Rounds away from zero.
	**/
	final RoundUp = 3;
}