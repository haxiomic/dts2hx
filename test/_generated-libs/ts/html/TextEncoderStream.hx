package ts.html;
@:native("TextEncoderStream") extern class TextEncoderStream {
	function new();
	/**
		Returns a readable stream whose chunks are strings resulting from running encoding's decoder on the chunks written to writable.
	**/
	final readable : ReadableStream<Dynamic>;
	/**
		Returns a writable stream which accepts BufferSource chunks and runs them through encoding's decoder before making them available to readable.
		
		Typically this will be used via the pipeThrough() method on a ReadableStream source.
		
		```
		var decoder = new TextDecoderStream(encoding);
		byteReadable
		   .pipeThrough(decoder)
		   .pipeTo(textWritable);
		```
		
		If the error mode is "fatal" and encoding's decoder returns error, both readable and writable will be errored with a TypeError.
	**/
	final writable : WritableStream<Dynamic>;
	/**
		Returns "utf-8".
	**/
	final encoding : String;
	static var prototype : TextEncoderStream;
}