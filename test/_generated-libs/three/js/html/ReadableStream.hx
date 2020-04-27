package js.html;
/**
	This Streams API interface represents a readable stream of byte data. The Fetch API offers a concrete instance of a ReadableStream through the body property of a Response object.
**/
@:native("ReadableStream") @tsInterface extern class ReadableStream<R> {
	@:overload(function<R>(?underlyingSource:UnderlyingSource<R>, ?strategy:QueuingStrategy<R>):ReadableStream<R> { })
	function new(underlyingSource:UnderlyingByteSource, ?strategy:{ @:optional
	var highWaterMark : Float; @:optional
	var size : Void; });
	final locked : Bool;
	function cancel(?reason:Any):js.lib.Promise<Void>;
	@:overload(function():ReadableStreamDefaultReader<R> { })
	function getReader(options:{ var mode : String; }):ReadableStreamBYOBReader;
	function pipeThrough<T>(__0:{ var writable : WritableStream<R>; var readable : ReadableStream<T>; }, ?options:PipeOptions):ReadableStream<T>;
	function pipeTo(dest:WritableStream<R>, ?options:PipeOptions):js.lib.Promise<Void>;
	function tee():js.lib.Tuple2<ReadableStream<R>, ReadableStream<R>>;
	static var prototype : ReadableStream<Any>;
}