package node.stream.web;

typedef ICompressionStream = {
	final readable : ReadableStream<Dynamic>;
	final writable : WritableStream<Dynamic>;
};