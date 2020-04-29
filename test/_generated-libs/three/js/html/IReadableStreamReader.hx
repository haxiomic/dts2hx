package js.html;
extern typedef IReadableStreamReader<R> = {
	function cancel():js.lib.IPromise<Void>;
	function read():js.lib.IPromise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};