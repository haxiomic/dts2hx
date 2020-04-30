package ts.html;
/**
	A simple low-order filter, and is created using the AudioContext.createBiquadFilter() method. It is an AudioNode that can represent different kinds of filters, tone control devices, and graphic equalizers.
**/
@:native("BiquadFilterNode") extern class BiquadFilterNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:BiquadFilterOptions);
	final Q : ts.lib.IAudioParam;
	final detune : ts.lib.IAudioParam;
	final frequency : ts.lib.IAudioParam;
	final gain : ts.lib.IAudioParam;
	var type : String;
	function getFrequencyResponse(frequencyHz:ts.lib.IFloat32Array, magResponse:ts.lib.IFloat32Array, phaseResponse:ts.lib.IFloat32Array):Void;
	static var prototype : IBiquadFilterNode;
}