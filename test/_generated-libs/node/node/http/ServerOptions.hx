package node.http;

typedef ServerOptions = {
	@:optional
	var IncomingMessage : {
		var prototype : IncomingMessage;
		function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
		@:overload(function(streams:Array<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?callback:(err:global.nodejs.ErrnoException) -> Void):global.nodejs.WritableStream { })
		@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:global.nodejs.ErrnoException) -> Void>>):global.nodejs.WritableStream { })
		function pipeline<T>(stream1:global.nodejs.ReadableStream, stream2:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T;
		function listenerCount(emitter:node.events.EventEmitter, event:ts.AnyOf2<String, js.lib.Symbol>):Float;
		var defaultMaxListeners : Float;
	};
	@:optional
	var ServerResponse : {
		var prototype : ServerResponse;
		function finished(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
		@:overload(function<T>(stream1:global.nodejs.ReadableStream, stream2:global.nodejs.ReadWriteStream, stream3:global.nodejs.ReadWriteStream, stream4:global.nodejs.ReadWriteStream, stream5:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T { })
		@:overload(function(streams:Array<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>, ?callback:(err:global.nodejs.ErrnoException) -> Void):global.nodejs.WritableStream { })
		@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:global.nodejs.ErrnoException) -> Void>>):global.nodejs.WritableStream { })
		function pipeline<T>(stream1:global.nodejs.ReadableStream, stream2:T, ?callback:(err:global.nodejs.ErrnoException) -> Void):T;
		function listenerCount(emitter:node.events.EventEmitter, event:ts.AnyOf2<String, js.lib.Symbol>):Float;
		var defaultMaxListeners : Float;
	};
};