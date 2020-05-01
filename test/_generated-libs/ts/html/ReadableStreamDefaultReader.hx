package ts.html;
extern typedef ReadableStreamDefaultReader<R> = {
	final closed : ts.lib.IPromise<Void>;
	function cancel(?reason:Dynamic):ts.lib.IPromise<Void>;
	function read():ts.lib.IPromise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};