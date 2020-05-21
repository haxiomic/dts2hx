package global.three;

@:native("THREE.StringKeyframeTrack") extern class StringKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, ?interpolation:InterpolationModes);
	static var prototype : StringKeyframeTrack;
}