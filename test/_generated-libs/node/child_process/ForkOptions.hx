package node.child_process;
extern typedef ForkOptions = {
	@:optional
	var execPath : String;
	@:optional
	var execArgv : std.Array<String>;
	@:optional
	var silent : Bool;
	@:optional
	var stdio : haxe.extern.EitherType<String, std.Array<Null<haxe.extern.EitherType<Float, haxe.extern.EitherType<String, node.stream.Stream>>>>>;
	@:optional
	var detached : Bool;
	@:optional
	var windowsVerbatimArguments : Bool;
	@:optional
	var uid : Float;
	@:optional
	var gid : Float;
	@:optional
	var cwd : String;
	@:optional
	var env : global.nodejs.ProcessEnv;
};