package three;
@:jsRequire("three", "AnimationClip") extern class AnimationClip {
	function new(?name:String, ?duration:Float, ?tracks:std.Array<KeyframeTrack>);
	var name : String;
	var tracks : std.Array<KeyframeTrack>;
	var duration : Float;
	var uuid : String;
	var results : std.Array<Dynamic>;
	function resetDuration():Void;
	function trim():AnimationClip;
	function optimize():AnimationClip;
	static function CreateFromMorphTargetSequence(name:String, morphTargetSequence:std.Array<MorphTarget>, fps:Float, noLoop:Bool):AnimationClip;
	static function findByName(clipArray:std.Array<AnimationClip>, name:String):AnimationClip;
	static function CreateClipsFromMorphTargetSequences(morphTargets:std.Array<MorphTarget>, fps:Float, noLoop:Bool):std.Array<AnimationClip>;
	static function parse(json:Dynamic):AnimationClip;
	static function parseAnimation(animation:Dynamic, bones:std.Array<Bone>, nodeName:String):AnimationClip;
	static function toJSON():Dynamic;
}