package ts.html;
/**
	A change in volume. It is an AudioNode audio-processing module that causes a given gain to be applied to the input data before its propagation to the output. A GainNode always has exactly one input and one output, both with the same number of channels.
**/
@:native("GainNode") extern class GainNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:GainOptions);
	final gain : ts.lib.IAudioParam;
	static var prototype : IGainNode;
}