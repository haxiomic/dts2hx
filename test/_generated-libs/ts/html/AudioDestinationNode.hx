package ts.html;
/**
	AudioDestinationNode has no output (as it is the output, no more AudioNode can be linked after it in the audio graph) and one input. The number of channels in the input must be between 0 and the maxChannelCount value or an exception is raised.
**/
@:native("AudioDestinationNode") extern class AudioDestinationNode {
	function new();
	final maxChannelCount : Float;
	static var prototype : IAudioDestinationNode;
}