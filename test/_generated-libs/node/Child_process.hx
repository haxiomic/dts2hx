package node;
@:jsRequire("child_process") @valueModuleOnly extern class Child_process {
	@:overload(function(command:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnOptions):node.child_process.ChildProcess { })
	static function spawn(command:String, ?options:node.child_process.SpawnOptions):node.child_process.ChildProcess;
	@:overload(function(command:String, options:{ var encoding : Null<String>; } & node.child_process.ExecOptions, ?callback:(error:Null<node.child_process.ExecException>, stdout:global.IBuffer, stderr:global.IBuffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:{ var encoding : String; } & node.child_process.ExecOptions, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:{ var encoding : String; } & node.child_process.ExecOptions, ?callback:(error:Null<node.child_process.ExecException>, stdout:haxe.extern.EitherType<String, global.IBuffer>, stderr:haxe.extern.EitherType<String, global.IBuffer>) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:node.child_process.ExecOptions, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(command:String, options:Null<{ @:optional var encoding : String; } & node.child_process.ExecOptions>, ?callback:(error:Null<node.child_process.ExecException>, stdout:haxe.extern.EitherType<String, global.IBuffer>, stderr:haxe.extern.EitherType<String, global.IBuffer>) -> Void):node.child_process.ChildProcess { })
	static function exec(command:String, ?callback:(error:Null<node.child_process.ExecException>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess;
	@:overload(function(file:String, options:Null<{ @:optional var encoding : String; } & node.child_process.ExecFileOptions>):node.child_process.ChildProcess { })
	@:overload(function(file:String, ?args:ts.lib.ReadonlyArray<String>):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:Null<{ @:optional var encoding : String; } & node.child_process.ExecFileOptions>):node.child_process.ChildProcess { })
	@:overload(function(file:String, callback:(error:Null<ts.lib.IError>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, callback:(error:Null<ts.lib.IError>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithBufferEncoding, callback:(error:Null<ts.lib.IError>, stdout:global.IBuffer, stderr:global.IBuffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptionsWithBufferEncoding, callback:(error:Null<ts.lib.IError>, stdout:global.IBuffer, stderr:global.IBuffer) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithStringEncoding, callback:(error:Null<ts.lib.IError>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptionsWithStringEncoding, callback:(error:Null<ts.lib.IError>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptionsWithOtherEncoding, callback:(error:Null<ts.lib.IError>, stdout:haxe.extern.EitherType<String, global.IBuffer>, stderr:haxe.extern.EitherType<String, global.IBuffer>) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptionsWithOtherEncoding, callback:(error:Null<ts.lib.IError>, stdout:haxe.extern.EitherType<String, global.IBuffer>, stderr:haxe.extern.EitherType<String, global.IBuffer>) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:node.child_process.ExecFileOptions, callback:(error:Null<ts.lib.IError>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:node.child_process.ExecFileOptions, callback:(error:Null<ts.lib.IError>, stdout:String, stderr:String) -> Void):node.child_process.ChildProcess { })
	@:overload(function(file:String, options:Null<{ @:optional var encoding : String; } & node.child_process.ExecFileOptions>, callback:Null<(error:Null<ts.lib.IError>, stdout:haxe.extern.EitherType<String, global.IBuffer>, stderr:haxe.extern.EitherType<String, global.IBuffer>) -> Void>):node.child_process.ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:Null<{ @:optional var encoding : String; } & node.child_process.ExecFileOptions>, callback:Null<(error:Null<ts.lib.IError>, stdout:haxe.extern.EitherType<String, global.IBuffer>, stderr:haxe.extern.EitherType<String, global.IBuffer>) -> Void>):node.child_process.ChildProcess { })
	static function execFile(file:String):node.child_process.ChildProcess;
	static function fork(modulePath:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.ForkOptions):node.child_process.ChildProcess;
	@:overload(function(command:String, ?options:node.child_process.SpawnSyncOptionsWithStringEncoding):node.child_process.SpawnSyncReturns<String> { })
	@:overload(function(command:String, ?options:node.child_process.SpawnSyncOptionsWithBufferEncoding):node.child_process.SpawnSyncReturns<global.IBuffer> { })
	@:overload(function(command:String, ?options:node.child_process.SpawnSyncOptions):node.child_process.SpawnSyncReturns<global.IBuffer> { })
	@:overload(function(command:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnSyncOptionsWithStringEncoding):node.child_process.SpawnSyncReturns<String> { })
	@:overload(function(command:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnSyncOptionsWithBufferEncoding):node.child_process.SpawnSyncReturns<global.IBuffer> { })
	@:overload(function(command:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.SpawnSyncOptions):node.child_process.SpawnSyncReturns<global.IBuffer> { })
	static function spawnSync(command:String):node.child_process.SpawnSyncReturns<global.IBuffer>;
	@:overload(function(command:String, ?options:node.child_process.ExecSyncOptionsWithStringEncoding):String { })
	@:overload(function(command:String, ?options:node.child_process.ExecSyncOptionsWithBufferEncoding):global.IBuffer { })
	@:overload(function(command:String, ?options:node.child_process.ExecSyncOptions):global.IBuffer { })
	static function execSync(command:String):global.IBuffer;
	@:overload(function(command:String, ?options:node.child_process.ExecFileSyncOptionsWithStringEncoding):String { })
	@:overload(function(command:String, ?options:node.child_process.ExecFileSyncOptionsWithBufferEncoding):global.IBuffer { })
	@:overload(function(command:String, ?options:node.child_process.ExecFileSyncOptions):global.IBuffer { })
	@:overload(function(command:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.ExecFileSyncOptionsWithStringEncoding):String { })
	@:overload(function(command:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.ExecFileSyncOptionsWithBufferEncoding):global.IBuffer { })
	@:overload(function(command:String, ?args:ts.lib.ReadonlyArray<String>, ?options:node.child_process.ExecFileSyncOptions):global.IBuffer { })
	static function execFileSync(command:String):global.IBuffer;
}