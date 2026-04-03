package node.stream.web;

typedef IDecompressionStream = {
	final writable : WritableStream<Dynamic>;
	final readable : ReadableStream<Dynamic>;
};