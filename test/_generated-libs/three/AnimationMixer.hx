package three;
@:jsRequire("three", "AnimationMixer") extern class AnimationMixer extends EventDispatcher {
	function new(root:Any);
	var time : Float;
	var timeScale : Float;
	function clipAction(clip:AnimationClip, ?root:Any):AnimationAction;
	function existingAction(clip:AnimationClip, ?root:Any):AnimationAction;
	function stopAllAction():AnimationMixer;
	function update(deltaTime:Float):AnimationMixer;
	function getRoot():Any;
	function uncacheClip(clip:AnimationClip):Void;
	function uncacheRoot(root:Any):Void;
	function uncacheAction(clip:AnimationClip, ?root:Any):Void;
}