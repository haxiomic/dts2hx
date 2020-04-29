package js.html;
extern typedef ReadableStreamDefaultReader<R> = {
	final closed : js.lib.IPromise<Void>;
	function cancel(?reason:Any):js.lib.IPromise<Void>;
	function read():js.lib.IPromise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};