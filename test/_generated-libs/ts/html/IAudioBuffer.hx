package ts.html;
/**
	A short audio asset residing in memory, created from an audio file using the AudioContext.decodeAudioData() method, or from raw data using AudioContext.createBuffer(). Once put into an AudioBuffer, the audio can then be played by being passed into an AudioBufferSourceNode.
**/
typedef IAudioBuffer = {
	final duration : Float;
	final length : Float;
	final numberOfChannels : Float;
	final sampleRate : Float;
	function copyFromChannel(destination:ts.lib.Float32Array, channelNumber:Float, ?startInChannel:Float):Void;
	function copyToChannel(source:ts.lib.Float32Array, channelNumber:Float, ?startInChannel:Float):Void;
	function getChannelData(channel:Float):ts.lib.Float32Array;
};