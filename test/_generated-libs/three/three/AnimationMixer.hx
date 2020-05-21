package three;

@:jsRequire("three", "AnimationMixer") extern class AnimationMixer extends EventDispatcher {
	function new(root:Dynamic);
	var time : Float;
	var timeScale : Float;
	function clipAction(clip:AnimationClip, ?root:Dynamic):AnimationAction;
	function existingAction(clip:AnimationClip, ?root:Dynamic):AnimationAction;
	function stopAllAction():AnimationMixer;
	function update(deltaTime:Float):AnimationMixer;
	function getRoot():Dynamic;
	function uncacheClip(clip:AnimationClip):Void;
	function uncacheRoot(root:Dynamic):Void;
	function uncacheAction(clip:AnimationClip, ?root:Dynamic):Void;
	static var prototype : AnimationMixer;
}