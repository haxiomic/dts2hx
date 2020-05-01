package three;
@:jsRequire("three", "StringKeyframeTrack") extern class StringKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:std.Array<Dynamic>, values:std.Array<Dynamic>, ?interpolation:InterpolationModes);
}