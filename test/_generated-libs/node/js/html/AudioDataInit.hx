package js.html;

typedef AudioDataInit = {
	var data : js.lib.BufferSource;
	var format : AudioSampleFormat;
	var numberOfChannels : Float;
	var numberOfFrames : Float;
	var sampleRate : Float;
	var timestamp : Float;
	@:optional
	var transfer : Array<js.lib.ArrayBuffer>;
};