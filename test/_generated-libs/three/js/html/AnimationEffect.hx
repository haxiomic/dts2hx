package js.html;
@:native("AnimationEffect") extern class AnimationEffect {
	function new();
	function getComputedTiming():ComputedEffectTiming;
	function getTiming():EffectTiming;
	function updateTiming(?timing:OptionalEffectTiming):Void;
	static var prototype : IAnimationEffect;
}