package node.crypto;

typedef CipherOCBOptionsTypedef = {
	var authTagLength : Float;
	@:optional
	dynamic function transform(chunk:Dynamic, encoding:global.nodejs.BufferEncoding, callback:node.stream.stream.TransformCallback):Void;
	@:optional
	dynamic function flush(callback:node.stream.stream.TransformCallback):Void;
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readableObjectMode : Bool;
	@:optional
	var writableObjectMode : Bool;
	@:optional
	var readableHighWaterMark : Float;
	@:optional
	var writableHighWaterMark : Float;
	@:optional
	var writableCorked : Float;
	@:optional
	var encoding : global.nodejs.BufferEncoding;
	@:optional
	dynamic function read(size:Float):Void;
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
};