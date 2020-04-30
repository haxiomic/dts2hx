package ts.html;
/**
	A MediaElementSourceNode has no inputs and exactly one output, and is created using the AudioContext.createMediaElementSource method. The amount of channels in the output equals the number of channels of the audio referenced by the HTMLMediaElement used in the creation of the node, or is 1 if the HTMLMediaElement has no audio.
**/
@:native("MediaElementAudioSourceNode") extern class MediaElementAudioSourceNode {
	function new(context:IAudioContext, options:MediaElementAudioSourceOptions);
	final mediaElement : IHTMLMediaElement;
	static var prototype : IMediaElementAudioSourceNode;
}