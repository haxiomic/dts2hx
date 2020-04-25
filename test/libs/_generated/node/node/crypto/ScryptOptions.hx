package node.crypto;
extern interface ScryptOptions {
	@:optional
	var N : Null<Float>;
	@:optional
	var r : Null<Float>;
	@:optional
	var p : Null<Float>;
	@:optional
	var maxmem : Null<Float>;
}