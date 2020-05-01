package ts.html;
extern typedef IKeyframeEffect = {
	var composite : String;
	var iterationComposite : String;
	var target : Null<IElement>;
	function getKeyframes():std.Array<ComputedKeyframe>;
	function setKeyframes(keyframes:Null<ts.AnyOf2<std.Array<Keyframe>, PropertyIndexedKeyframes>>):Void;
	function getComputedTiming():ComputedEffectTiming;
	function getTiming():EffectTiming;
	function updateTiming(?timing:OptionalEffectTiming):Void;
};