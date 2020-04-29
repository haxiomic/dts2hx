package node.cluster;
extern typedef ClusterSettings = {
	@:optional
	var execArgv : std.Array<String>;
	@:optional
	var exec : String;
	@:optional
	var args : std.Array<String>;
	@:optional
	var silent : Bool;
	@:optional
	var stdio : std.Array<Any>;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var inspectPort : haxe.extern.EitherType<Float, () -> Float>;
};