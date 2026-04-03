package node.stream.web;

typedef IReadableStreamDefaultReader<R> = {
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
	final closed : js.lib.Promise<ts.Undefined>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
};