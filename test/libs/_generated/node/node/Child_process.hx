package node;
@:jsRequire("child_process") extern class Child_process {
	@:overload(function(command:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnOptions):node.child_process.ChildProcess { })
	static function spawn(command:String, ?options:node.child_process.SpawnOptions):node.child_process.ChildProcess;
	@:overload(function(command:String, options:Any, ?callback:(error:Null<node.child_process.ExecException>, stdout:global.Buffer, stderr:global.Buffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:Any, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:Any, ?callback:(error:Null<node.child_process.ExecException>, stdout:haxe.extern.EitherType<String, global.Buffer>, stderr:haxe.extern.EitherType<String, global.Buffer>) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:node.child_process.ExecOptions, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:Null<Any>, ?callback:(error:Null<node.child_process.ExecException>, stdout:haxe.extern.EitherType<String, global.Buffer>, stderr:haxe.extern.EitherType<String, global.Buffer>) -> Void):node.child_process.ChildProcess { })
	static function exec(command:String, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess;
	@:overload(function(file:String, options:Null<Any>):node.child_process.ChildProcess { })
	@:overload(function(file:String, ?args:js.lib.ReadonlyArray<String>):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<js.lib.ReadonlyArray<String>>, options:Null<Any>):node.child_process.ChildProcess { })
	@:overload(function(file:String, callback:(error:Null<js.lib.Error>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<js.lib.ReadonlyArray<String>>, callback:(error:Null<js.lib.Error>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithBufferEncoding, callback:(error:Null<js.lib.Error>, stdout:global.Buffer, stderr:global.Buffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<js.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptionsWithBufferEncoding, callback:(error:Null<js.lib.Error>, stdout:global.Buffer, stderr:global.Buffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithStringEncoding, callback:(error:Null<js.lib.Error>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<js.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptionsWithStringEncoding, callback:(error:Null<js.lib.Error>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithOtherEncoding, callback:(error:Null<js.lib.Error>, stdout:haxe.extern.EitherType<String, global.Buffer>, stderr:haxe.extern.EitherType<String, global.Buffer>) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<js.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptionsWithOtherEncoding, callback:(error:Null<js.lib.Error>, stdout:haxe.extern.EitherType<String, global.Buffer>, stderr:haxe.extern.EitherType<String, global.Buffer>) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptions, callback:(error:Null<js.lib.Error>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<js.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptions, callback:(error:Null<js.lib.Error>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:Null<Any>, callback:Null<(error:Null<js.lib.Error>, stdout:haxe.extern.EitherType<String, global.Buffer>, stderr:haxe.extern.EitherType<String, global.Buffer>) -> Void>):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<js.lib.ReadonlyArray<String>>, options:Null<Any>, callback:Null<(error:Null<js.lib.Error>, stdout:haxe.extern.EitherType<String, global.Buffer>, stderr:haxe.extern.EitherType<String, global.Buffer>) -> Void>):node.child_process.ChildProcess { })
	static function execFile(file:String):node.child_process.ChildProcess;
	static function fork(modulePath:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.ForkOptions):node.child_process.ChildProcess;
	@:overload(function(command:String, ?options:node.child_process.SpawnSyncOptionsWithStringEncoding):node.child_process.SpawnSyncReturns<String> { })
	@:overload(function(command:String, ?options:node.child_process.SpawnSyncOptionsWithBufferEncoding):node.child_process.SpawnSyncReturns<global.Buffer> { })
	@:overload(function(command:String, ?options:node.child_process.SpawnSyncOptions):node.child_process.SpawnSyncReturns<global.Buffer> { })
	@:overload(function(command:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnSyncOptionsWithStringEncoding):node.child_process.SpawnSyncReturns<String> { })
	@:overload(function(command:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnSyncOptionsWithBufferEncoding):node.child_process.SpawnSyncReturns<global.Buffer> { })
	@:overload(function(command:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnSyncOptions):node.child_process.SpawnSyncReturns<global.Buffer> { })
	static function spawnSync(command:String):node.child_process.SpawnSyncReturns<global.Buffer>;
	@:overload(function(command:String, ?options:node.child_process.ExecSyncOptionsWithStringEncoding):String { })
	@:overload(function(command:String, ?options:node.child_process.ExecSyncOptionsWithBufferEncoding):global.Buffer { })
	@:overload(function(command:String, ?options:node.child_process.ExecSyncOptions):global.Buffer { })
	static function execSync(command:String):global.Buffer;
	@:overload(function(command:String, ?options:node.child_process.ExecFileSyncOptionsWithStringEncoding):String { })
	@:overload(function(command:String, ?options:node.child_process.ExecFileSyncOptionsWithBufferEncoding):global.Buffer { })
	@:overload(function(command:String, ?options:node.child_process.ExecFileSyncOptions):global.Buffer { })
	@:overload(function(command:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.ExecFileSyncOptionsWithStringEncoding):String { })
	@:overload(function(command:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.ExecFileSyncOptionsWithBufferEncoding):global.Buffer { })
	@:overload(function(command:String, ?args:js.lib.ReadonlyArray<String>, ?options:node.child_process.ExecFileSyncOptions):global.Buffer { })
	static function execFileSync(command:String):global.Buffer;
}