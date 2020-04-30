package global.nodejs;
extern typedef HRTime = {
	@:selfCall
	function call(?time:ts.lib.Tuple2<Float, Float>):ts.lib.Tuple2<Float, Float>;
	function bigint():Any;
};