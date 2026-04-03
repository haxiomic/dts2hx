package js.html;

typedef VideoFrameCopyToOptions = {
	@:optional
	var colorSpace : PredefinedColorSpace;
	@:optional
	var format : VideoPixelFormat;
	@:optional
	var layout : Array<PlaneLayout>;
	@:optional
	var rect : DOMRectInit;
};