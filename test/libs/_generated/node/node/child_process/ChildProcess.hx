package node.child_process;
extern interface ChildProcess extends node.events.EventEmitter {
	var stdin : Null<node.stream.Writable>;
	var stdout : Null<node.stream.Readable>;
	var stderr : Null<node.stream.Readable>;
	@:optional
	final channel : Null<node.stream.Pipe>;
	final stdio : js.lib.Tuple5<Any, Null<node.stream.Writable>, Null<node.stream.Readable>, Null<node.stream.Readable>, Null<haxe.extern.EitherType<node.stream.Writable, node.stream.Readable>>, Null<haxe.extern.EitherType<node.stream.Writable, node.stream.Readable>>>;
	final killed : Bool;
	final pid : Float;
	final connected : Bool;
	function kill(?signal:String):Void;
	@:overload(function(message:Any, ?sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>, ?callback:(error:js.lib.Error) -> Void):Bool { })
	@:overload(function(message:Any, ?sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>, ?options:MessageOptions, ?callback:(error:js.lib.Error) -> Void):Bool { })
	function send(message:Any, ?callback:(error:js.lib.Error) -> Void):Bool;
	function disconnect():Void;
	function unref():Void;
	function ref():Void;
	/**
		events.EventEmitter
		1. close
		2. disconnect
		3. error
		4. exit
		5. message
	**/
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):ChildProcess;
	@:overload(function(event:String, code:Float, signal:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, code:Null<Float>, signal:Null<String>):Bool { })
	@:overload(function(event:String, message:Any, sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Any, sendHandle:haxe.extern.EitherType<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):ChildProcess;
}