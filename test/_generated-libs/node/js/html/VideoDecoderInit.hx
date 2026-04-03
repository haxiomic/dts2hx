package js.html;

typedef VideoDecoderInit = {
	dynamic function error(error:js.html.DOMException):Void;
	dynamic function output(output:VideoFrame):Void;
};