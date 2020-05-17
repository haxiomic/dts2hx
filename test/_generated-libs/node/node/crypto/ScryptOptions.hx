package node.crypto;

typedef ScryptOptions = {
	@:optional
	var N : Float;
	@:optional
	var r : Float;
	@:optional
	var p : Float;
	@:optional
	var maxmem : Float;
};