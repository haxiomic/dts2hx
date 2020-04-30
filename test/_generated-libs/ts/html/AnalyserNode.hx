package ts.html;
/**
	A node able to provide real-time frequency and time-domain analysis information. It is an AudioNode that passes the audio stream unchanged from the input to the output, but allows you to take the generated data, process it, and create audio visualizations.
**/
@:native("AnalyserNode") extern class AnalyserNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:AnalyserOptions);
	var fftSize : Float;
	final frequencyBinCount : Float;
	var maxDecibels : Float;
	var minDecibels : Float;
	var smoothingTimeConstant : Float;
	function getByteFrequencyData(array:ts.lib.IUint8Array):Void;
	function getByteTimeDomainData(array:ts.lib.IUint8Array):Void;
	function getFloatFrequencyData(array:ts.lib.IFloat32Array):Void;
	function getFloatTimeDomainData(array:ts.lib.IFloat32Array):Void;
	static var prototype : IAnalyserNode;
}