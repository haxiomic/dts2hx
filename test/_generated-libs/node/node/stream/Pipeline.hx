package node.stream;
@:jsRequire("stream", "pipeline") @valueModuleOnly extern class Pipeline {
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.WritableStream):js.lib.Promise<Void> { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.WritableStream):js.lib.Promise<Void> { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:global.nodejs.WritableStream):js.lib.Promise<Void> { })
	@:overload(function(streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>>):js.lib.Promise<Void> { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:haxe.extern.EitherType<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>>):js.lib.Promise<Void> { })
	static function __promisify__(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.WritableStream):js.lib.Promise<Void>;
}