package global.nodejs;
extern interface HRTime {
	@:selfCall
	function call(?time:js.lib.Tuple2<Float, Float, Float>):js.lib.Tuple2<Float, Float, Float>;
	function bigint():Any;
}