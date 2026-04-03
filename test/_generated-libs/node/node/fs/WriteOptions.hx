package node.fs;

typedef WriteOptions = {
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
	@:optional
	var position : Float;
};