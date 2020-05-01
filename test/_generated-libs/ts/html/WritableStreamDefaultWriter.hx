package ts.html;
/**
	This Streams API interface is the object returned by WritableStream.getWriter() and once created locks the < writer to the WritableStream ensuring that no other streams can write to the underlying sink.
**/
extern typedef WritableStreamDefaultWriter<W> = {
	final closed : ts.lib.IPromise<Void>;
	final desiredSize : Null<Float>;
	final ready : ts.lib.IPromise<Void>;
	function abort(?reason:Dynamic):ts.lib.IPromise<Void>;
	function close():ts.lib.IPromise<Void>;
	function releaseLock():Void;
	function write(chunk:W):ts.lib.IPromise<Void>;
};