package three;
@:jsRequire("three", "NumberKeyframeTrack") extern class NumberKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:std.Array<Dynamic>, values:std.Array<Dynamic>, ?interpolation:InterpolationModes);
}