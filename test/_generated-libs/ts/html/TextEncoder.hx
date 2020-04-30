package ts.html;
/**
	TextEncoder takes a stream of code points as input and emits a stream of bytes. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays.
**/
@:native("TextEncoder") extern class TextEncoder {
	function new();
	/**
		Returns the result of running UTF-8's encoder.
	**/
	function encode(?input:String):ts.lib.IUint8Array;
	/**
		Runs the UTF-8 encoder on source, stores the result of that operation into destination, and returns the progress made as a dictionary whereby read is the number of converted code units of source and written is the number of bytes modified in destination.
	**/
	function encodeInto(source:String, destination:ts.lib.IUint8Array):TextEncoderEncodeIntoResult;
	static var prototype : ITextEncoder;
}