package global.nodejs;
extern typedef HRTime = {
	@:selfCall
	function call(?time:js.lib.Tuple2<Float, Float>):js.lib.Tuple2<Float, Float>;
	function bigint():Any;
};