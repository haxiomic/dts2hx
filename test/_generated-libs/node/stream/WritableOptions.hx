package node.stream;
typedef WritableOptions = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var decodeStrings : Bool;
	@:optional
	var objectMode : Bool;
	@:optional
	function write(chunk:Dynamic, encoding:String, callback:ts.AnyOf2<() -> Void, (error:ts.lib.IError) -> Void>):Void;
	@:optional
	function writev(chunks:Array<{ var chunk : Dynamic; var encoding : String; }>, callback:ts.AnyOf2<() -> Void, (error:ts.lib.IError) -> Void>):Void;
	@:optional
	function destroy(error:Null<ts.lib.IError>, callback:(error:Null<ts.lib.IError>) -> Void):Void;
	@:native("final")
	@:optional
	function final_(callback:ts.AnyOf2<() -> Void, (error:ts.lib.IError) -> Void>):Void;
};