package node.cluster;

typedef ClusterSettings = {
	@:optional
	var execArgv : Array<String>;
	@:optional
	var exec : String;
	@:optional
	var args : Array<String>;
	@:optional
	var silent : Bool;
	@:optional
	var stdio : Array<Dynamic>;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var inspectPort : ts.AnyOf2<Float, () -> Float>;
};