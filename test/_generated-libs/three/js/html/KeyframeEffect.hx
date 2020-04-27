package js.html;
@:native("KeyframeEffect") @tsInterface extern class KeyframeEffect {
	@:overload(function(source:KeyframeEffect):KeyframeEffect { })
	function new(target:Null<Element>, keyframes:Null<haxe.extern.EitherType<std.Array<Keyframe>, PropertyIndexedKeyframes>>, ?options:haxe.extern.EitherType<Float, KeyframeEffectOptions>);
	var composite : String;
	var iterationComposite : String;
	var target : Null<Element>;
	function getKeyframes():std.Array<ComputedKeyframe>;
	function setKeyframes(keyframes:Null<haxe.extern.EitherType<std.Array<Keyframe>, PropertyIndexedKeyframes>>):Void;
	function getComputedTiming():ComputedEffectTiming;
	function getTiming():EffectTiming;
	function updateTiming(?timing:OptionalEffectTiming):Void;
	static var prototype : KeyframeEffect;
}