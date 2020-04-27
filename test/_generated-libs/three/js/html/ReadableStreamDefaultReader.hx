package js.html;
extern interface ReadableStreamDefaultReader<R> {
	final closed : js.lib.Promise<Void>;
	function cancel(?reason:Any):js.lib.Promise<Void>;
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
}