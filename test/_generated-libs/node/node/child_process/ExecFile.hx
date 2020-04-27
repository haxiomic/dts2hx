package node.child_process;
@:jsRequire("child_process", "execFile") extern class ExecFile {
	@:overload(function(file:String, args:Null<std.Array<String>>):js.lib.Promise<{ var stdout : String; var stderr : String; }> { })
	@:overload(function(file:String, options:ExecFileOptionsWithBufferEncoding):js.lib.Promise<{ var stdout : global.Buffer; var stderr : global.Buffer; }> { })
	@:overload(function(file:String, args:Null<std.Array<String>>, options:ExecFileOptionsWithBufferEncoding):js.lib.Promise<{ var stdout : global.Buffer; var stderr : global.Buffer; }> { })
	@:overload(function(file:String, options:ExecFileOptionsWithStringEncoding):js.lib.Promise<{ var stdout : String; var stderr : String; }> { })
	@:overload(function(file:String, args:Null<std.Array<String>>, options:ExecFileOptionsWithStringEncoding):js.lib.Promise<{ var stdout : String; var stderr : String; }> { })
	@:overload(function(file:String, options:ExecFileOptionsWithOtherEncoding):js.lib.Promise<{ var stdout : haxe.extern.EitherType<String, global.Buffer>; var stderr : haxe.extern.EitherType<String, global.Buffer>; }> { })
	@:overload(function(file:String, args:Null<std.Array<String>>, options:ExecFileOptionsWithOtherEncoding):js.lib.Promise<{ var stdout : haxe.extern.EitherType<String, global.Buffer>; var stderr : haxe.extern.EitherType<String, global.Buffer>; }> { })
	@:overload(function(file:String, options:ExecFileOptions):js.lib.Promise<{ var stdout : String; var stderr : String; }> { })
	@:overload(function(file:String, args:Null<std.Array<String>>, options:ExecFileOptions):js.lib.Promise<{ var stdout : String; var stderr : String; }> { })
	@:overload(function(file:String, options:Null<Any>):js.lib.Promise<{ var stdout : haxe.extern.EitherType<String, global.Buffer>; var stderr : haxe.extern.EitherType<String, global.Buffer>; }> { })
	@:overload(function(file:String, args:Null<std.Array<String>>, options:Null<Any>):js.lib.Promise<{ var stdout : haxe.extern.EitherType<String, global.Buffer>; var stderr : haxe.extern.EitherType<String, global.Buffer>; }> { })
	static function __promisify__(file:String):js.lib.Promise<{ var stdout : String; var stderr : String; }>;
}