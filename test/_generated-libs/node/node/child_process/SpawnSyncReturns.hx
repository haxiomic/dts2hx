package node.child_process;
extern typedef SpawnSyncReturns<T> = { var pid : Float; var output : std.Array<String>; var stdout : T; var stderr : T; var status : Float; var signal : String; @:optional
	var error : js.lib.Error; };