package js.html;

typedef VideoConfiguration = {
	var bitrate : Float;
	@:optional
	var colorGamut : ColorGamut;
	var contentType : String;
	var framerate : Float;
	@:optional
	var hasAlphaChannel : Bool;
	@:optional
	var hdrMetadataType : HdrMetadataType;
	var height : Float;
	@:optional
	var scalabilityMode : String;
	@:optional
	var transferFunction : TransferFunction;
	var width : Float;
};