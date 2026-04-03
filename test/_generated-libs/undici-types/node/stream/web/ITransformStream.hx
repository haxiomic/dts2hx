package node.stream.web;

typedef ITransformStream<I, O> = {
	final readable : ReadableStream<O>;
	final writable : WritableStream<I>;
};