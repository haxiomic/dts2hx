package node.stream.web;

/**
	This Streams API interface is the object returned by
	WritableStream.getWriter() and once created locks the < writer to the
	WritableStream ensuring that no other streams can write to the underlying
	sink.
**/
@:jsRequire("stream/web", "WritableStreamDefaultWriter") extern class WritableStreamDefaultWriter<W> {
	function new<W>(stream:WritableStream<W>);
	final closed : js.lib.Promise<ts.Undefined>;
	final desiredSize : Null<Float>;
	final ready : js.lib.Promise<ts.Undefined>;
	function abort(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	function close():js.lib.Promise<ts.Undefined>;
	function releaseLock():Void;
	function write(?chunk:W):js.lib.Promise<ts.Undefined>;
	static var prototype : WritableStreamDefaultWriter<Dynamic>;
}