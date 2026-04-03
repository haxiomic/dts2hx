package node.fs;

typedef ReadOptions = {
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
	@:optional
	var position : ReadPosition;
};