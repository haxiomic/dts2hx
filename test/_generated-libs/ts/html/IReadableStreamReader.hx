package ts.html;
typedef IReadableStreamReader<R> = {
	function cancel():ts.lib.IPromise<Void>;
	function read():ts.lib.IPromise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};