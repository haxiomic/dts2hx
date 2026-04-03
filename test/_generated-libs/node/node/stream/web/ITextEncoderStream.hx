package node.stream.web;

typedef ITextEncoderStream = {
	/**
		Returns "utf-8".
	**/
	final encoding : String;
	final readable : ReadableStream<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>;
	final writable : WritableStream<String>;
};