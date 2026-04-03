package node.stream.web;

@:jsRequire("stream/web", "DecompressionStream") extern class DecompressionStream {
	function new(format:String);
	final writable : WritableStream<Dynamic>;
	final readable : ReadableStream<Dynamic>;
	static var prototype : DecompressionStream;
}