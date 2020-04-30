package ts.html;
/**
	The Web Audio API OfflineAudioCompletionEvent interface represents events that occur when the processing of an OfflineAudioContext is terminated. The complete event implements this interface.
**/
@:native("OfflineAudioCompletionEvent") extern class OfflineAudioCompletionEvent {
	function new(type:String, eventInitDict:OfflineAudioCompletionEventInit);
	final renderedBuffer : IAudioBuffer;
	static var prototype : IOfflineAudioCompletionEvent;
}