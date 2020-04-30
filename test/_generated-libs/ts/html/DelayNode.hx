package ts.html;
/**
	A delay-line; an AudioNode audio-processing module that causes a delay between the arrival of an input data and its propagation to the output.
**/
@:native("DelayNode") extern class DelayNode {
	function new(context:ts.lib.IBaseAudioContext, ?options:DelayOptions);
	final delayTime : ts.lib.IAudioParam;
	static var prototype : IDelayNode;
}