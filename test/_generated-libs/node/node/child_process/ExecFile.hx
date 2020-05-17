package node.child_process;

@:jsRequire("child_process", "execFile") @valueModuleOnly extern class ExecFile {
	@:overload(function(file:String, options:Null<{ @:optional var encoding : String; } & ExecFileOptions>):ChildProcess { })
	@:overload(function(file:String, ?args:ts.lib.ReadonlyArray<String>):ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:Null<{ @:optional var encoding : String; } & ExecFileOptions>):ChildProcess { })
	@:overload(function(file:String, callback:(error:Null<ts.lib.Error>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, callback:(error:Null<ts.lib.Error>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, options:ExecFileOptionsWithBufferEncoding, callback:(error:Null<ts.lib.Error>, stdout:global.Buffer, stderr:global.Buffer) -> Void):ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:ExecFileOptionsWithBufferEncoding, callback:(error:Null<ts.lib.Error>, stdout:global.Buffer, stderr:global.Buffer) -> Void):ChildProcess { })
	@:overload(function(file:String, options:ExecFileOptionsWithStringEncoding, callback:(error:Null<ts.lib.Error>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:ExecFileOptionsWithStringEncoding, callback:(error:Null<ts.lib.Error>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, options:ExecFileOptionsWithOtherEncoding, callback:(error:Null<ts.lib.Error>, stdout:ts.AnyOf2<String, global.Buffer>, stderr:ts.AnyOf2<String, global.Buffer>) -> Void):ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:ExecFileOptionsWithOtherEncoding, callback:(error:Null<ts.lib.Error>, stdout:ts.AnyOf2<String, global.Buffer>, stderr:ts.AnyOf2<String, global.Buffer>) -> Void):ChildProcess { })
	@:overload(function(file:String, options:ExecFileOptions, callback:(error:Null<ts.lib.Error>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:ExecFileOptions, callback:(error:Null<ts.lib.Error>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(file:String, options:Null<{ @:optional var encoding : String; } & ExecFileOptions>, callback:Null<(error:Null<ts.lib.Error>, stdout:ts.AnyOf2<String, global.Buffer>, stderr:ts.AnyOf2<String, global.Buffer>) -> Void>):ChildProcess { })
	@:overload(function(file:String, args:Null<ts.lib.ReadonlyArray<String>>, options:Null<{ @:optional var encoding : String; } & ExecFileOptions>, callback:Null<(error:Null<ts.lib.Error>, stdout:ts.AnyOf2<String, global.Buffer>, stderr:ts.AnyOf2<String, global.Buffer>) -> Void>):ChildProcess { })
	@:selfCall
	static function call(file:String):ChildProcess;
}