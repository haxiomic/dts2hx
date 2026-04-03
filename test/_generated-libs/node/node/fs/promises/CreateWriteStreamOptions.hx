package node.fs.promises;

typedef CreateWriteStreamOptions = {
	@:optional
	var encoding : global.nodejs.BufferEncoding;
	@:optional
	var autoClose : Bool;
	@:optional
	var emitClose : Bool;
	@:optional
	var start : Float;
	@:optional
	var highWaterMark : Float;
	@:optional
	var flush : Bool;
};