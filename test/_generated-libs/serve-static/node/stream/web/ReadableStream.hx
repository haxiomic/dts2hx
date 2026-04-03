package node.stream.web;

/**
	This Streams API interface represents a readable stream of byte data.
**/
@:jsRequire("stream/web", "ReadableStream") extern class ReadableStream<R> {
	@:overload(function<R>(?underlyingSource:UnderlyingSource<R>, ?strategy:QueuingStrategy<R>):ReadableStream<R> { })
	function new(underlyingSource:UnderlyingByteSource, ?strategy:QueuingStrategy<js.lib.Uint8Array_<js.lib.ArrayBufferLike>>);
	final locked : Bool;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	@:overload(function():ReadableStreamDefaultReader<R> { })
	@:overload(function(?options:ReadableStreamGetReaderOptions):ReadableStreamReader<R> { })
	function getReader(options:{ var mode : String; }):ReadableStreamBYOBReader;
	function pipeThrough<T>(transform:ReadableWritablePair<T, R>, ?options:StreamPipeOptions):ReadableStream<T>;
	function pipeTo(destination:WritableStream<R>, ?options:StreamPipeOptions):js.lib.Promise<ts.Undefined>;
	function tee():ts.Tuple2<ReadableStream<R>, ReadableStream<R>>;
	function values(?options:{ @:optional var preventCancel : Bool; }):ReadableStreamAsyncIterator<R>;
	static var prototype : ReadableStream<Dynamic>;
	static function from<T>(iterable:ts.AnyOf2<Iterable<T>, js.lib.AsyncIterable<T, Dynamic, Dynamic>>):ReadableStream<T>;
}