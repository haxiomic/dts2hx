package js.html;

typedef VideoEncoderConfig = {
	@:optional
	var alpha : AlphaOption;
	@:optional
	var avc : AvcEncoderConfig;
	@:optional
	var bitrate : Float;
	@:optional
	var bitrateMode : VideoEncoderBitrateMode;
	var codec : String;
	@:optional
	var contentHint : String;
	@:optional
	var displayHeight : Float;
	@:optional
	var displayWidth : Float;
	@:optional
	var framerate : Float;
	@:optional
	var hardwareAcceleration : HardwareAcceleration;
	var height : Float;
	@:optional
	var latencyMode : LatencyMode;
	@:optional
	var scalabilityMode : String;
	var width : Float;
};