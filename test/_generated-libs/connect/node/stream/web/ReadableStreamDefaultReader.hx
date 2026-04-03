package node.stream.web;

@:jsRequire("stream/web", "ReadableStreamDefaultReader") extern class ReadableStreamDefaultReader<R> {
	function new<R>(stream:ReadableStream<R>);
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
	final closed : js.lib.Promise<ts.Undefined>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	static var prototype : ReadableStreamDefaultReader<Dynamic>;
}