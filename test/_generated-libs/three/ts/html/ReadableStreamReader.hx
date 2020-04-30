package ts.html;
@:native("ReadableStreamReader") extern class ReadableStreamReader<R> {
	function new();
	function cancel():ts.lib.IPromise<Void>;
	function read():ts.lib.IPromise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
	static var prototype : IReadableStreamReader<Any>;
}