package ts.html;
typedef AudioProcessingEventInit = {
	var inputBuffer : AudioBuffer;
	var outputBuffer : AudioBuffer;
	var playbackTime : Float;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};