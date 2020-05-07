package ts.html;
typedef ReadableStreamBYOBReader = {
	final closed : ts.lib.Promise<Void>;
	function cancel(?reason:Dynamic):ts.lib.Promise<Void>;
	function read<T>(view:T):ts.lib.Promise<ReadableStreamReadResult<T>>;
	function releaseLock():Void;
};