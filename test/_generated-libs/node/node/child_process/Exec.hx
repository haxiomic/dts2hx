package node.child_process;

@:jsRequire("child_process", "exec") @valueModuleOnly extern class Exec {
	@:overload(function(command:String, options:{ var encoding : Null<String>; } & ExecOptions, ?callback:(error:Null<ExecException>, stdout:global.Buffer, stderr:global.Buffer) -> Void):ChildProcess { })
	@:overload(function(command:String, options:{ var encoding : global.BufferEncoding; } & ExecOptions, ?callback:(error:Null<ExecException>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(command:String, options:{ var encoding : String; } & ExecOptions, ?callback:(error:Null<ExecException>, stdout:ts.AnyOf2<String, global.Buffer>, stderr:ts.AnyOf2<String, global.Buffer>) -> Void):ChildProcess { })
	@:overload(function(command:String, options:ExecOptions, ?callback:(error:Null<ExecException>, stdout:String, stderr:String) -> Void):ChildProcess { })
	@:overload(function(command:String, options:Null<{ @:optional var encoding : String; } & ExecOptions>, ?callback:(error:Null<ExecException>, stdout:ts.AnyOf2<String, global.Buffer>, stderr:ts.AnyOf2<String, global.Buffer>) -> Void):ChildProcess { })
	@:selfCall
	static function call(command:String, ?callback:(error:Null<ExecException>, stdout:String, stderr:String) -> Void):ChildProcess;
}