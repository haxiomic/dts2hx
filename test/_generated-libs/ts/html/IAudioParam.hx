package ts.html;
/**
	The Web Audio API's AudioParam interface represents an audio-related parameter, usually a parameter of an AudioNode (such as GainNode.gain).
**/
typedef IAudioParam = {
	var automationRate : AutomationRate;
	final defaultValue : Float;
	final maxValue : Float;
	final minValue : Float;
	var value : Float;
	function cancelAndHoldAtTime(cancelTime:Float):AudioParam;
	function cancelScheduledValues(cancelTime:Float):AudioParam;
	function exponentialRampToValueAtTime(value:Float, endTime:Float):AudioParam;
	function linearRampToValueAtTime(value:Float, endTime:Float):AudioParam;
	function setTargetAtTime(target:Float, startTime:Float, timeConstant:Float):AudioParam;
	function setValueAtTime(value:Float, startTime:Float):AudioParam;
	@:overload(function(values:ts.lib.Iterable<Float>, startTime:Float, duration:Float):AudioParam { })
	function setValueCurveAtTime(values:ts.AnyOf2<ts.lib.Float32Array, Array<Float>>, startTime:Float, duration:Float):AudioParam;
};