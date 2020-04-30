package ts.html;
/**
	This Streams API interface represents a readable stream of byte data. The Fetch API offers a concrete instance of a ReadableStream through the body property of a Response object.
**/
@:native("ReadableStream") extern class ReadableStream<R> {
	@:overload(function<R>(?underlyingSource:UnderlyingSource<R>, ?strategy:QueuingStrategy<R>):IReadableStream<R> { })
	function new(underlyingSource:UnderlyingByteSource, ?strategy:{ @:optional var highWaterMark : Float; @:optional var size : Any; });
	final locked : Bool;
	function cancel(?reason:Any):ts.lib.IPromise<Void>;
	@:overload(function():ReadableStreamDefaultReader<R> { })
	function getReader(options:{ var mode : String; }):ReadableStreamBYOBReader;
	function pipeThrough<T>(__0:{ var writable : IWritableStream<R>; var readable : IReadableStream<T>; }, ?options:PipeOptions):IReadableStream<T>;
	function pipeTo(dest:IWritableStream<R>, ?options:PipeOptions):ts.lib.IPromise<Void>;
	function tee():ts.lib.Tuple2<IReadableStream<R>, IReadableStream<R>>;
	static var prototype : IReadableStream<Any>;
}