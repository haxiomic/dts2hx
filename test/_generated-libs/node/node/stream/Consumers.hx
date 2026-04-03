package node.stream;

/**
	The utility consumer functions provide common options for consuming
	streams.
**/
@:jsRequire("stream/consumers") @valueModuleOnly extern class Consumers {
	static function arrayBuffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.web.ReadableStream<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>):js.lib.Promise<js.lib.ArrayBuffer>;
	static function blob(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.web.ReadableStream<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>):js.lib.Promise<node.buffer.Blob>;
	static function buffer(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.web.ReadableStream<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>):js.lib.Promise<node.buffer.NonSharedBuffer>;
	static function json(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.web.ReadableStream<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>):js.lib.Promise<Any>;
	static function text(stream:ts.AnyOf3<global.nodejs.ReadableStream, node.stream.web.ReadableStream<Dynamic>, js.lib.AsyncIterable<Dynamic, Dynamic, Dynamic>>):js.lib.Promise<String>;
}