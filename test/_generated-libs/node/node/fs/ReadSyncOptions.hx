package node.fs;

typedef ReadSyncOptions = {
	@:optional
	var offset : Float;
	@:optional
	var length : Float;
	@:optional
	var position : ReadPosition;
};