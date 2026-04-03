package js.html;

typedef VideoFrameBufferInit = {
	var codedHeight : Float;
	var codedWidth : Float;
	@:optional
	var colorSpace : VideoColorSpaceInit;
	@:optional
	var displayHeight : Float;
	@:optional
	var displayWidth : Float;
	@:optional
	var duration : Float;
	var format : VideoPixelFormat;
	@:optional
	var layout : Array<PlaneLayout>;
	var timestamp : Float;
	@:optional
	var visibleRect : DOMRectInit;
};