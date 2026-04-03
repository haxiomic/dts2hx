package js.html;

typedef AudioDataCopyToOptions = {
	@:optional
	var format : AudioSampleFormat;
	@:optional
	var frameCount : Float;
	@:optional
	var frameOffset : Float;
	var planeIndex : Float;
};