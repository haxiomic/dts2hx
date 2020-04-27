package js.html;
@:native("ReadableStreamReader") @tsInterface extern class ReadableStreamReader<R> {
	function new();
	function cancel():js.lib.Promise<Void>;
	function read():js.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
	static var prototype : ReadableStreamReader<Any>;
}