package js.html;

typedef VideoEncoderInit = {
	dynamic function error(error:js.html.DOMException):Void;
	dynamic function output(chunk:EncodedVideoChunk, ?metadata:EncodedVideoChunkMetadata):Void;
};