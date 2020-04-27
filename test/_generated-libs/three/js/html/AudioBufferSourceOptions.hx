package js.html;
extern interface AudioBufferSourceOptions {
	@:optional
	var buffer : AudioBuffer;
	@:optional
	var detune : Float;
	@:optional
	var loop : Bool;
	@:optional
	var loopEnd : Float;
	@:optional
	var loopStart : Float;
	@:optional
	var playbackRate : Float;
}