package node.crypto;

typedef ScryptOptions = {
	@:optional
	var cost : Float;
	@:optional
	var blockSize : Float;
	@:optional
	var parallelization : Float;
	@:optional
	var N : Float;
	@:optional
	var r : Float;
	@:optional
	var p : Float;
	@:optional
	var maxmem : Float;
};