package node.child_process;

typedef SpawnSyncReturns<T> = {
	var pid : Float;
	var output : Array<Null<T>>;
	var stdout : T;
	var stderr : T;
	var status : Null<Float>;
	var signal : Null<global.nodejs.Signals>;
	@:optional
	var error : js.lib.Error;
};