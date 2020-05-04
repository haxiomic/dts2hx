package ts.lib;
/**
	The Web Audio API's AudioParam interface represents an audio-related parameter, usually a parameter of an AudioNode (such as GainNode.gain).
**/
@:native("AudioParam") extern class AudioParam {
	function new();
	var automationRate : ts.html.AutomationRate;
	final defaultValue : Float;
	final maxValue : Float;
	final minValue : Float;
	var value : Float;
	function cancelAndHoldAtTime(cancelTime:Float):IAudioParam;
	function cancelScheduledValues(cancelTime:Float):IAudioParam;
	function exponentialRampToValueAtTime(value:Float, endTime:Float):IAudioParam;
	function linearRampToValueAtTime(value:Float, endTime:Float):IAudioParam;
	function setTargetAtTime(target:Float, startTime:Float, timeConstant:Float):IAudioParam;
	function setValueAtTime(value:Float, startTime:Float):IAudioParam;
	@:overload(function(values:Iterable<Float>, startTime:Float, duration:Float):IAudioParam { })
	function setValueCurveAtTime(values:ts.AnyOf2<IFloat32Array, Array<Float>>, startTime:Float, duration:Float):IAudioParam;
	static var prototype : IAudioParam;
}