package node.child_process;
extern typedef ExecSyncOptions = CommonOptions & { @:optional
	var input : haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>; @:optional
	var stdio : haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>; @:optional
	var shell : String; @:optional
	var killSignal : haxe.extern.EitherType<String, Float>; @:optional
	var maxBuffer : Float; @:optional
	var encoding : String; };