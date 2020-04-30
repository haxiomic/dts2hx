package ts.html;
@:native("MediaStreamAudioDestinationNode") extern class MediaStreamAudioDestinationNode {
	function new(context:IAudioContext, ?options:AudioNodeOptions);
	final stream : IMediaStream;
	static var prototype : IMediaStreamAudioDestinationNode;
}