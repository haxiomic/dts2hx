/**
	When ranges are returned, the array has a "type" property which is the type of
	range that is required (most commonly, "bytes"). Each array element is an object
	with a "start" and "end" property for the portion of the range.
**/
@:jsRequire("range-parser") extern class RangeParser {
	/**
		When ranges are returned, the array has a "type" property which is the type of
		range that is required (most commonly, "bytes"). Each array element is an object
		with a "start" and "end" property for the portion of the range.
	**/
	@:selfCall
	static function call(size:Float, str:String, ?options:range_parser.Options):ts.AnyOf2<Int, range_parser.Ranges>;
}