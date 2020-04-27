package js.html;
@:native("TransformStream") @tsInterface extern class TransformStream<I, O> {
	function new(?transformer:Transformer<I, O>, ?writableStrategy:QueuingStrategy<I>, ?readableStrategy:QueuingStrategy<O>);
	final readable : ReadableStream<O>;
	final writable : WritableStream<I>;
	static var prototype : TransformStream<Any, Any>;
}