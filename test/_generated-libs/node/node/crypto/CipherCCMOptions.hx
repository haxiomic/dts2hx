package node.crypto;

typedef CipherCCMOptions = {
	var authTagLength : Float;
	@:optional
	function read(size:Float):Void;
	@:optional
	function write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	@:native("final")
	function final_(callback:ts.AnyOf2<() -> Void, (error:js.lib.Error) -> Void>):Void;
	@:optional
	function destroy(error:Null<js.lib.Error>, callback:(error:Null<js.lib.Error>) -> Void):Void;
	@:optional
	function transform(chunk:Dynamic, encoding:String, callback:node.stream.TransformCallback):Void;
	@:optional
	function flush(callback:node.stream.TransformCallback):Void;
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readableObjectMode : Bool;
	@:optional
	var writableObjectMode : Bool;
	@:optional
	var highWaterMark : Float;
	@:optional
	var encoding : String;
	@:optional
	var objectMode : Bool;
	@:optional
	var decodeStrings : Bool;
};