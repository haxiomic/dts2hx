package ts.html;
typedef ReadableStreamDefaultReader<R> = {
	final closed : ts.lib.Promise<Void>;
	function cancel(?reason:Dynamic):ts.lib.Promise<Void>;
	function read():ts.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
};