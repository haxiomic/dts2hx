package node.child_process;
extern interface SpawnSyncReturns<T> {
	var pid : Float;
	var output : std.Array<String>;
	var stdout : T;
	var stderr : T;
	var status : Float;
	var signal : String;
	@:optional
	var error : Null<js.lib.Error>;
}