package js.html;
extern interface Animatable {
	function animate(keyframes:Null<haxe.extern.EitherType<std.Array<Keyframe>, PropertyIndexedKeyframes>>, ?options:haxe.extern.EitherType<Float, KeyframeAnimationOptions>):Animation;
	function getAnimations():std.Array<Animation>;
}