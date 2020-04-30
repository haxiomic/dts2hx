package three;
@:jsRequire("three", "ColorKeyframeTrack") extern class ColorKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:std.Array<Any>, values:std.Array<Any>, ?interpolation:InterpolationModes);
}