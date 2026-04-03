package node.stream.web;

/**
	This Streams API interface provides a standard abstraction for writing
	streaming data to a destination, known as a sink. This object comes with
	built-in back pressure and queuing.
**/
@:jsRequire("stream/web", "WritableStream") extern class WritableStream<W> {
	function new<W>(?underlyingSink:UnderlyingSink<W>, ?strategy:QueuingStrategy<W>);
	final locked : Bool;
	function abort(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	function close():js.lib.Promise<ts.Undefined>;
	function getWriter():WritableStreamDefaultWriter<W>;
	static var prototype : WritableStream<Dynamic>;
}