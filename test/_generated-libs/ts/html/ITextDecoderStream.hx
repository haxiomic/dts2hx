package ts.html;
typedef ITextDecoderStream = {
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
};