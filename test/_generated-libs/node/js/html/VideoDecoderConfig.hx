package js.html;

typedef VideoDecoderConfig = {
	var codec : String;
	@:optional
	var codedHeight : Float;
	@:optional
	var codedWidth : Float;
	@:optional
	var colorSpace : VideoColorSpaceInit;
	@:optional
	var description : AllowSharedBufferSource;
	@:optional
	var displayAspectHeight : Float;
	@:optional
	var displayAspectWidth : Float;
	@:optional
	var hardwareAcceleration : HardwareAcceleration;
	@:optional
	var optimizeForLatency : Bool;
};