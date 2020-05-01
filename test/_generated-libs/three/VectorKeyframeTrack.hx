package three;
@:jsRequire("three", "VectorKeyframeTrack") extern class VectorKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:std.Array<Dynamic>, values:std.Array<Dynamic>, ?interpolation:InterpolationModes);
}