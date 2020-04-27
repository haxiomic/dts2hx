package js.lib;
/**
	The Web Audio API's AudioParam interface represents an audio-related parameter, usually a parameter of an AudioNode (such as GainNode.gain).
**/
@:native("AudioParam") @tsInterface extern class AudioParam {
	function new();
	var automationRate : String;
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
	@:overload(function(values:Iterable<Float>, startTime:Float, duration:Float):AudioParam { })
	function setValueCurveAtTime(values:haxe.extern.EitherType<Float32Array, std.Array<Float>>, startTime:Float, duration:Float):AudioParam;
	static var prototype : AudioParam;
}