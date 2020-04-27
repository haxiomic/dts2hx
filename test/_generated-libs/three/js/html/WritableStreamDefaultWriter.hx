package js.html;
/**
	This Streams API interface is the object returned by WritableStream.getWriter() and once created locks the < writer to the WritableStream ensuring that no other streams can write to the underlying sink.
**/
extern typedef WritableStreamDefaultWriter<W> = { final closed : js.lib.Promise<Void>; final desiredSize : Null<Float>; final ready : js.lib.Promise<Void>; function abort(?reason:Any):js.lib.Promise<Void>; function close():js.lib.Promise<Void>; function releaseLock():Void; function write(chunk:W):js.lib.Promise<Void>; };