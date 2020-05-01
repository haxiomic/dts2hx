package ts.html;
typedef ITransformStream<I, O> = {
	final readable : IReadableStream<O>;
	final writable : IWritableStream<I>;
};