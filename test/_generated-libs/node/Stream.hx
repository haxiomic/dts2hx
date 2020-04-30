package node;
@:jsRequire("stream") extern class Stream extends node.events.EventEmitter {
	function pipe<T>(destination:T, ?options:{ @:optional var end : Bool; }):T;
	static function finished(stream:haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, callback:(?err:global.nodejs.ErrnoException) -> Void):() -> Void;
	@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
	@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
	@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
	@:overload(function(streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>>, ?callback:(err:global.nodejs.ErrnoException) -> Void):global.nodejs.WritableStream { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:haxe.extern.EitherType<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:std.Array<haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadWriteStream, (err:global.nodejs.ErrnoException) -> Void>>>):global.nodejs.WritableStream { })
	static function pipeline<T>(stream1:global.nodejs.ReadableStream, stream2:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T;
}