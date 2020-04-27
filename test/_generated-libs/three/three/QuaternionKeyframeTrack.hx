package three;
@:jsRequire("three", "QuaternionKeyframeTrack") extern class QuaternionKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:std.Array<Any>, values:std.Array<Any>, ?interpolation:InterpolationModes);
}