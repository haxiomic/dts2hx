package js.html;

typedef AudioEncoderConfig = {
	@:optional
	var bitrate : Float;
	@:optional
	var bitrateMode : BitrateMode;
	var codec : String;
	var numberOfChannels : Float;
	@:optional
	var opus : OpusEncoderConfig;
	var sampleRate : Float;
};