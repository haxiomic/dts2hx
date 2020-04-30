package node.child_process;
extern typedef SpawnOptions = {
	@:optional
	var argv0 : String;
	@:optional
	var stdio : haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>;
	@:optional
	var detached : Bool;
	@:optional
	var shell : haxe.extern.EitherType<String, Bool>;
	@:optional
	var windowsVerbatimArguments : Bool;
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