package node.fs;

typedef ReadOptionsWithBuffer<T> = {
	@:optional
	var buffer : T;
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
	@:optional
	var position : ReadPosition;
};