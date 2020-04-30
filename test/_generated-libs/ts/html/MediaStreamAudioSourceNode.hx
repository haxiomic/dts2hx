package ts.html;
/**
	A type of AudioNode which operates as an audio source whose media is received from a MediaStream obtained using the WebRTC or Media Capture and Streams APIs.
**/
@:native("MediaStreamAudioSourceNode") extern class MediaStreamAudioSourceNode {
	function new(context:IAudioContext, options:MediaStreamAudioSourceOptions);
	final mediaStream : IMediaStream;
	static var prototype : IMediaStreamAudioSourceNode;
}