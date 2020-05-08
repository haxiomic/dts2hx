package ts.html;
/**
	This Streams API interface is the object returned by WritableStream.getWriter() and once created locks the < writer to the WritableStream ensuring that no other streams can write to the underlying sink.
**/
typedef WritableStreamDefaultWriter<W> = {
	final closed : ts.lib.Promise<Void>;
	final desiredSize : Null<Float>;
	final ready : ts.lib.Promise<Void>;
	function abort(?reason:Dynamic):ts.lib.Promise<Void>;
	function close():ts.lib.Promise<Void>;
	function releaseLock():Void;
	function write(chunk:W):ts.lib.Promise<Void>;
};