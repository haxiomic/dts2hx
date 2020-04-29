package node.crypto;
extern typedef CipherCCMOptions = {
	var authTagLength : Float;
	@:optional
	function read(size:Float):Void;
	@:optional
	function write(chunk:Any, encoding:String, callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function writev(chunks:std.Array<{ var chunk : Any; var encoding : String; }>, callback:(?error:js.lib.IError) -> Void):Void;
	@:native("final")
	@:optional
	function final_(callback:(?error:js.lib.IError) -> Void):Void;
	@:optional
	function destroy(error:Null<js.lib.IError>, callback:(error:Null<js.lib.IError>) -> Void):Void;
	@:optional
	function transform(chunk:Any, encoding:String, callback:(?error:js.lib.IError, ?data:Any) -> Void):Void;
	@:optional
	function flush(callback:(?error:js.lib.IError, ?data:Any) -> Void):Void;
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