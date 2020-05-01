package ts.html;
typedef ReadableStreamBYOBReader = {
	final closed : ts.lib.IPromise<Void>;
	function cancel(?reason:Dynamic):ts.lib.IPromise<Void>;
	function read<T>(view:T):ts.lib.IPromise<ReadableStreamReadResult<T>>;
	function releaseLock():Void;
};