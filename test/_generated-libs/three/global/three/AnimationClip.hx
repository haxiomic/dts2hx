package global.three;

@:native("THREE.AnimationClip") extern class AnimationClip {
	function new(?name:String, ?duration:Float, ?tracks:Array<KeyframeTrack>);
	var name : String;
	var tracks : Array<KeyframeTrack>;
	var duration : Float;
	var uuid : String;
	var results : Array<Dynamic>;
	function resetDuration():Void;
	function trim():AnimationClip;
	function optimize():AnimationClip;
	static var prototype : AnimationClip;
	static function CreateFromMorphTargetSequence(name:String, morphTargetSequence:Array<MorphTarget>, fps:Float, noLoop:Bool):AnimationClip;
	static function findByName(clipArray:Array<AnimationClip>, name:String):AnimationClip;
	static function CreateClipsFromMorphTargetSequences(morphTargets:Array<MorphTarget>, fps:Float, noLoop:Bool):Array<AnimationClip>;
	static function parse(json:Dynamic):AnimationClip;
	static function parseAnimation(animation:Dynamic, bones:Array<Bone>, nodeName:String):AnimationClip;
	static function toJSON():Dynamic;
}