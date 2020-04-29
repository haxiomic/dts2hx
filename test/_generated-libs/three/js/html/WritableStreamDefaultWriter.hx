package js.html;
/**
	This Streams API interface is the object returned by WritableStream.getWriter() and once created locks the < writer to the WritableStream ensuring that no other streams can write to the underlying sink.
**/
extern typedef WritableStreamDefaultWriter<W> = {
	final closed : js.lib.IPromise<Void>;
	final desiredSize : Null<Float>;
	final ready : js.lib.IPromise<Void>;
	function abort(?reason:Any):js.lib.IPromise<Void>;
	function close():js.lib.IPromise<Void>;
	function releaseLock():Void;
	function write(chunk:W):js.lib.IPromise<Void>;
};