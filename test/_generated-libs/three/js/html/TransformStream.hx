package js.html;
@:native("TransformStream") extern class TransformStream<I, O> {
	function new(?transformer:Transformer<I, O>, ?writableStrategy:QueuingStrategy<I>, ?readableStrategy:QueuingStrategy<O>);
	final readable : IReadableStream<O>;
	final writable : IWritableStream<I>;
	static var prototype : ITransformStream<Any, Any>;
}