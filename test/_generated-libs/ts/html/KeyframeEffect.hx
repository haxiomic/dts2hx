package ts.html;
@:native("KeyframeEffect") extern class KeyframeEffect {
	@:overload(function(source:IKeyframeEffect):IKeyframeEffect { })
	function new(target:Null<IElement>, keyframes:Null<ts.AnyOf2<Array<Keyframe>, PropertyIndexedKeyframes>>, ?options:ts.AnyOf2<Float, KeyframeEffectOptions>);
	var composite : CompositeOperation;
	var iterationComposite : IterationCompositeOperation;
	var target : Null<IElement>;
	function getKeyframes():Array<ComputedKeyframe>;
	function setKeyframes(keyframes:Null<ts.AnyOf2<Array<Keyframe>, PropertyIndexedKeyframes>>):Void;
	function getComputedTiming():ComputedEffectTiming;
	function getTiming():EffectTiming;
	function updateTiming(?timing:OptionalEffectTiming):Void;
	static var prototype : IKeyframeEffect;
}