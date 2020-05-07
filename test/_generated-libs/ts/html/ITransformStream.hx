package ts.html;
typedef ITransformStream<I, O> = {
	final readable : ReadableStream<O>;
	final writable : WritableStream<I>;
};