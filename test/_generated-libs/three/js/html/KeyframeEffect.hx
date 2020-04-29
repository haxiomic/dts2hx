package js.html;
@:native("KeyframeEffect") extern class KeyframeEffect {
	@:overload(function(source:IKeyframeEffect):IKeyframeEffect { })
	function new(target:Null<IElement>, keyframes:Null<haxe.extern.EitherType<std.Array<Keyframe>, PropertyIndexedKeyframes>>, ?options:haxe.extern.EitherType<Float, KeyframeEffectOptions>);
	var composite : String;
	var iterationComposite : String;
	var target : Null<IElement>;
	function getKeyframes():std.Array<ComputedKeyframe>;
	function setKeyframes(keyframes:Null<haxe.extern.EitherType<std.Array<Keyframe>, PropertyIndexedKeyframes>>):Void;
	function getComputedTiming():ComputedEffectTiming;
	function getTiming():EffectTiming;
	function updateTiming(?timing:OptionalEffectTiming):Void;
	static var prototype : IKeyframeEffect;
}