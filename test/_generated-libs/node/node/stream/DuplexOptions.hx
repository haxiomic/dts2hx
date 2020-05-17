package node.stream;
typedef DuplexOptions = {
	@:optional
	var allowHalfOpen : Bool;
	@:optional
	var readableObjectMode : Bool;
	@:optional
	var writableObjectMode : Bool;
	@:optional
	function read(size:Float):Void;
	@:optional
	function write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	@:optional
	function writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	@:optional
	@:native("final")
	function final_(callback:ts.AnyOf2<() -> Void, (error:ts.lib.Error) -> Void>):Void;
	@:optional
	function destroy(error:Null<ts.lib.Error>, callback:(error:Null<ts.lib.Error>) -> Void):Void;
	@:optional
	var highWaterMark : Float;
	@:optional
	var encoding : String;
	@:optional
	var objectMode : Bool;
	@:optional
	var decodeStrings : Bool;
};