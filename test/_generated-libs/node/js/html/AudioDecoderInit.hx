package js.html;

typedef AudioDecoderInit = {
	dynamic function error(error:js.html.DOMException):Void;
	dynamic function output(output:AudioData):Void;
};