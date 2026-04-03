package node.fs.promises;

typedef CreateReadStreamOptions = {
	@:optional
	var encoding : global.nodejs.BufferEncoding;
	@:optional
	var autoClose : Bool;
	@:optional
	var emitClose : Bool;
	@:optional
	var start : Float;
	@:optional
	var end : Float;
	@:optional
	var highWaterMark : Float;
	/**
		When provided the corresponding `AbortController` can be used to cancel an asynchronous action.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};