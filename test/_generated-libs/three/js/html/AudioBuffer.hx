package js.html;
/**
	A short audio asset residing in memory, created from an audio file using the AudioContext.decodeAudioData() method, or from raw data using AudioContext.createBuffer(). Once put into an AudioBuffer, the audio can then be played by being passed into an AudioBufferSourceNode.
**/
@:native("AudioBuffer") @tsInterface extern class AudioBuffer {
	function new(options:AudioBufferOptions);
	final duration : Float;
	final length : Float;
	final numberOfChannels : Float;
	final sampleRate : Float;
	function copyFromChannel(destination:js.lib.Float32Array, channelNumber:Float, ?startInChannel:Float):Void;
	function copyToChannel(source:js.lib.Float32Array, channelNumber:Float, ?startInChannel:Float):Void;
	function getChannelData(channel:Float):js.lib.Float32Array;
	static var prototype : AudioBuffer;
}