package js.html;

typedef ImageDecoderInit = {
	@:optional
	var colorSpaceConversion : ColorSpaceConversion;
	var data : ImageBufferSource;
	@:optional
	var desiredHeight : Float;
	@:optional
	var desiredWidth : Float;
	@:optional
	var preferAnimation : Bool;
	@:optional
	var transfer : Array<js.lib.ArrayBuffer>;
	var type : String;
};