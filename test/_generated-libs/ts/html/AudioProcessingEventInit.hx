package ts.html;
typedef AudioProcessingEventInit = {
	var inputBuffer : IAudioBuffer;
	var outputBuffer : IAudioBuffer;
	var playbackTime : Float;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};