package node.cluster;
extern interface ClusterSettings {
	@:optional
	var execArgv : Null<std.Array<String>>;
	@:optional
	var exec : Null<String>;
	@:optional
	var args : Null<std.Array<String>>;
	@:optional
	var silent : Null<Bool>;
	@:optional
	var stdio : Null<std.Array<Any>>;
	@:optional
	var uid : Null<Float>;
	@:optional
	var gid : Null<Float>;
	@:optional
	var inspectPort : Null<haxe.extern.EitherType<Float, () -> Float>>;
}