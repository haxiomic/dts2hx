package range_parser;

typedef Options = {
	/**
		The "combine" option can be set to `true` and overlapping & adjacent ranges
		will be combined into a single range.
	**/
	@:optional
	var combine : Bool;
};