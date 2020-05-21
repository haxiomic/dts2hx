package global.three;

@:native("THREE.NumberKeyframeTrack") extern class NumberKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, ?interpolation:InterpolationModes);
	static var prototype : NumberKeyframeTrack;
}