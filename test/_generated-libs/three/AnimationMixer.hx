package three;
@:jsRequire("three", "AnimationMixer") extern class AnimationMixer {
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
	/**
		Adds a listener to an event type.
	**/
	function addEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener(type:String, listener:(event:Event) -> Void):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener(type:String, listener:(event:Event) -> Void):Void;
	/**
		Fire an event type.
	**/
	function dispatchEvent(event:{ var type : String; }):Void;
}