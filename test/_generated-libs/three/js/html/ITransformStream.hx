package js.html;
extern typedef ITransformStream<I, O> = {
	final readable : IReadableStream<O>;
	final writable : IWritableStream<I>;
};