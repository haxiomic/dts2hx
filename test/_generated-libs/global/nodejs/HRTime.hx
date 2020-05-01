package global.nodejs;
extern typedef HRTime = {
	@:selfCall
	function call(?time:ts.Tuple2<Float, Float>):ts.Tuple2<Float, Float>;
	function bigint():ts.lib.BigInt;
};