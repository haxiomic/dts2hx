package ts.html;
/**
	The Web Audio API events that occur when a ScriptProcessorNode input buffer is ready to be processed.
**/
@:native("AudioProcessingEvent") extern class AudioProcessingEvent {
	function new(type:String, eventInitDict:AudioProcessingEventInit);
	final inputBuffer : IAudioBuffer;
	final outputBuffer : IAudioBuffer;
	final playbackTime : Float;
	static var prototype : IAudioProcessingEvent;
}