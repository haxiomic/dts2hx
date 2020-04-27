package node.child_process;
@:jsRequire("child_process", "exec") extern class Exec {
	@:overload(function(command:String, options:Any):js.lib.Promise<{ var stdout : global.Buffer; var stderr : global.Buffer; }> { })
	@:overload(function(command:String, options:Any):js.lib.Promise<{ var stdout : String; var stderr : String; }> { })
	@:overload(function(command:String, options:ExecOptions):js.lib.Promise<{ var stdout : String; var stderr : String; }> { })
	@:overload(function(command:String, ?options:Any):js.lib.Promise<{ var stdout : haxe.extern.EitherType<String, global.Buffer>; var stderr : haxe.extern.EitherType<String, global.Buffer>; }> { })
	static function __promisify__(command:String):js.lib.Promise<{ var stdout : String; var stderr : String; }>;
}