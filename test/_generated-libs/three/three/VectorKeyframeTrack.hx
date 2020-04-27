package three;
@:jsRequire("three", "VectorKeyframeTrack") extern class VectorKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:std.Array<Any>, values:std.Array<Any>, ?interpolation:InterpolationModes);
}