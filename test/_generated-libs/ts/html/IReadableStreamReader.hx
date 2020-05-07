package ts.html;
typedef IReadableStreamReader<R> = {
	function cancel():ts.lib.Promise<Void>;
	function read():ts.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};