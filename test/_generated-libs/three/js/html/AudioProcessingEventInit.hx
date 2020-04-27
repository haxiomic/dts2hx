package js.html;
extern interface AudioProcessingEventInit extends EventInit {
	var inputBuffer : AudioBuffer;
	var outputBuffer : AudioBuffer;
	var playbackTime : Float;
}