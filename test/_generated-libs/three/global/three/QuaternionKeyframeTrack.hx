package global.three;

@:native("THREE.QuaternionKeyframeTrack") extern class QuaternionKeyframeTrack extends KeyframeTrack {
	function new(name:String, times:Array<Dynamic>, values:Array<Dynamic>, ?interpolation:InterpolationModes);
	static var prototype : QuaternionKeyframeTrack;
}