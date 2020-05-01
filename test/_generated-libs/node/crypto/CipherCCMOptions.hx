package node.crypto;
extern typedef CipherCCMOptions = {
	var authTagLength : Float;
	@:optional
	function read(size:Float):Void;
	@:optional
	function write(chunk:Dynamic, encoding:String, callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function writev(chunks:std.Array<{ var chunk : Dynamic; var encoding : String; }>, callback:(?error:ts.lib.IError) -> Void):Void;
	@:native("final")
	@:optional
	function final_(callback:(?error:ts.lib.IError) -> Void):Void;
	@:optional
	function destroy(error:Null<ts.lib.IError>, callback:(error:Null<ts.lib.IError>) -> Void):Void;
	@:optional
	function transform(chunk:Dynamic, encoding:String, callback:(?error:ts.lib.IError, ?data:Dynamic) -> Void):Void;
	@:optional
	function flush(callback:(?error:ts.lib.IError, ?data:Dynamic) -> Void):Void;
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