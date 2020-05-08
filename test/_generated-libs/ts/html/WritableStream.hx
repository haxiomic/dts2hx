package ts.html;
/**
	This Streams API interface provides a standard abstraction for writing streaming data to a destination, known as a sink. This object comes with built-in backpressure and queuing.
**/
@:native("WritableStream") extern class WritableStream<W> {
	function new(?underlyingSink:UnderlyingSink<W>, ?strategy:QueuingStrategy<W>);
	final locked : Bool;
	function abort(?reason:Dynamic):ts.lib.Promise<Void>;
	function getWriter():WritableStreamDefaultWriter<W>;
	static var prototype : WritableStream<Dynamic>;
}