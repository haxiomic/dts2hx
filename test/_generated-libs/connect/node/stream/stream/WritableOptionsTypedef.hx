package node.stream.stream;

typedef WritableOptionsTypedef<T:(Writable)> = {
	@:optional
	var decodeStrings : Bool;
	@:optional
	var defaultEncoding : global.nodejs.BufferEncoding;
	@:optional
	dynamic function write(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	dynamic function writev(chunks:Array<{ var chunk : Dynamic; var encoding : global.nodejs.BufferEncoding; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	@:native("final")
	dynamic function final_(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	var emitClose : Bool;
	@:optional
	var highWaterMark : Float;
	@:optional
	var objectMode : Bool;
	@:optional
	dynamic function construct(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	dynamic function destroy(error:Null<js.lib.Error>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	var autoDestroy : Bool;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};