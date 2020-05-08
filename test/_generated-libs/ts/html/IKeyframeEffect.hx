package ts.html;
typedef IKeyframeEffect = {
	var composite : CompositeOperation;
	var iterationComposite : IterationCompositeOperation;
	var target : Null<Element>;
	function getKeyframes():Array<ComputedKeyframe>;
	function setKeyframes(keyframes:Null<ts.AnyOf2<Array<Keyframe>, PropertyIndexedKeyframes>>):Void;
	function getComputedTiming():ComputedEffectTiming;
	function getTiming():EffectTiming;
	function updateTiming(?timing:OptionalEffectTiming):Void;
};