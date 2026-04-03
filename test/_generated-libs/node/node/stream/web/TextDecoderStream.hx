package node.stream.web;

@:jsRequire("stream/web", "TextDecoderStream") extern class TextDecoderStream {
	function new(?encoding:String, ?options:TextDecoderOptions);
	/**
		Returns encoding's name, lower cased.
	**/
	final encoding : String;
	/**
		Returns `true` if error mode is "fatal", and `false` otherwise.
	**/
	final fatal : Bool;
	/**
		Returns `true` if ignore BOM flag is set, and `false` otherwise.
	**/
	final ignoreBOM : Bool;
	final readable : ReadableStream<String>;
	final writable : WritableStream<BufferSource>;
	static var prototype : TextDecoderStream;
}