package js.html;
extern typedef ReadableStreamBYOBReader = {
	final closed : js.lib.IPromise<Void>;
	function cancel(?reason:Any):js.lib.IPromise<Void>;
	function read<T:(js.lib.ArrayBufferView)>(view:T):js.lib.IPromise<ReadableStreamReadResult<T>>;
	function releaseLock():Void;
};