package node.fs.promises;

typedef FileReadOptions<T> = {
	@:optional
	var buffer : T;
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
	@:optional
	var position : Float;
};