package js.html;
@:native("ReadableStreamReader") extern class ReadableStreamReader<R> {
	function new();
	function cancel():js.lib.IPromise<Void>;
	function read():js.lib.IPromise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
	static var prototype : IReadableStreamReader<Any>;
}