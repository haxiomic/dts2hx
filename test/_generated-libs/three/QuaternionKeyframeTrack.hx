package three;
@:jsRequire("three", "QuaternionKeyframeTrack") extern class QuaternionKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:std.Array<Dynamic>, values:std.Array<Dynamic>, ?interpolation:InterpolationModes);
}