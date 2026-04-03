package node;

typedef WriteStreamOptions = {
	@:optional
	var fs : CreateWriteStreamFSImplementation;
	@:optional
	var flush : Bool;
	@:optional
	var flags : String;
	@:optional
	var encoding : global.nodejs.BufferEncoding;
	@:optional
	var fd : ts.AnyOf2<Float, node.fs.promises.FileHandle>;
	@:optional
	var mode : Float;
	@:optional
	var autoClose : Bool;
	@:optional
	var emitClose : Bool;
	@:optional
	var start : Float;
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var highWaterMark : Float;
};