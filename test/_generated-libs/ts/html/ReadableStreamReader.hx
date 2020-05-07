package ts.html;
@:native("ReadableStreamReader") extern class ReadableStreamReader<R> {
	function new();
	function cancel():ts.lib.Promise<Void>;
	function read():ts.lib.Promise<ReadableStreamReadResult<R>>;
	function releaseLock():Void;
	static var prototype : ReadableStreamReader<Dynamic>;
}