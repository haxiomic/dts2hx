package node.child_process;
extern typedef ExecSyncOptionsWithStringEncoding = {
	var encoding : String;
	@:optional
	var input : haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>;
	@:optional
	var stdio : haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>;
	@:optional
	var shell : String;
	@:optional
	var killSignal : haxe.extern.EitherType<String, Float>;
	@:optional
	var maxBuffer : Float;
	@:optional
	var windowsHide : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
};