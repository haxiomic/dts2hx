package three;

@:jsRequire("three", "ColorKeyframeTrack") extern class ColorKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, ?interpolation:InterpolationModes);
	static var prototype : ColorKeyframeTrack;
}