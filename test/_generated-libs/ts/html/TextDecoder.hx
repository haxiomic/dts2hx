package ts.html;
/**
	A decoder for a specific method, that is a specific character encoding, like utf-8, iso-8859-2, koi8, cp1261, gbk, etc. A decoder takes a stream of bytes as input and emits a stream of code points. For a more scalable, non-native library, see StringView – a C-like representation of strings based on typed arrays.
**/
@:native("TextDecoder") extern class TextDecoder {
	function new(?label:String, ?options:TextDecoderOptions);
	/**
		Returns the result of running encoding's decoder. The method can be invoked zero or more times with options's stream set to true, and then once without options's stream (or set to false), to process a fragmented stream. If the invocation without options's stream (or set to false) has no input, it's clearest to omit both arguments.
		
		```
		var string = "", decoder = new TextDecoder(encoding), buffer;
		while(buffer = next_chunk()) {
		   string += decoder.decode(buffer, {stream:true});
		}
		string += decoder.decode(); // end-of-stream
		```
		
		If the error mode is "fatal" and encoding's decoder returns error, throws a TypeError.
	**/
	function decode(?input:ts.AnyOf2<ts.lib.IArrayBuffer, ts.lib.ArrayBufferView>, ?options:TextDecodeOptions):String;
	/**
		Returns encoding's name, lowercased.
	**/
	final encoding : String;
	/**
		Returns true if error mode is "fatal", and false otherwise.
	**/
	final fatal : Bool;
	/**
		Returns true if ignore BOM flag is set, and false otherwise.
	**/
	final ignoreBOM : Bool;
	static var prototype : ITextDecoder;
}