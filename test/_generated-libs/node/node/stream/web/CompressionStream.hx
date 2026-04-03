package node.stream.web;

@:jsRequire("stream/web", "CompressionStream") extern class CompressionStream {
	function new(format:String);
	final readable : ReadableStream<Dynamic>;
	final writable : WritableStream<Dynamic>;
	static var prototype : CompressionStream;
}