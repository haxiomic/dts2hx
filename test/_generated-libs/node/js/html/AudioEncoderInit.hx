package js.html;

typedef AudioEncoderInit = {
	dynamic function error(error:js.html.DOMException):Void;
	dynamic function output(output:EncodedAudioChunk, ?metadata:EncodedAudioChunkMetadata):Void;
};