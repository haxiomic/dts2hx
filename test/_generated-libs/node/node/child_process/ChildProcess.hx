package node.child_process;

typedef ChildProcess = {
	var stdin : Null<node.stream.Writable>;
	var stdout : Null<node.stream.Readable>;
	var stderr : Null<node.stream.Readable>;
	@:optional
	final channel : node.stream.Pipe;
	final stdio : ts.Tuple5<Null<node.stream.Writable>, Null<node.stream.Readable>, Null<node.stream.Readable>, Null<ts.AnyOf2<node.stream.Writable, node.stream.Readable>>, Null<ts.AnyOf2<node.stream.Writable, node.stream.Readable>>>;
	final killed : Bool;
	final pid : Float;
	final connected : Bool;
	function kill(?signal:String):Void;
	@:overload(function(message:Dynamic, ?sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>, ?callback:(error:js.lib.Error) -> Void):Bool { })
	@:overload(function(message:Dynamic, ?sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>, ?options:MessageOptions, ?callback:(error:js.lib.Error) -> Void):Bool { })
	function send(message:Dynamic, ?callback:(error:js.lib.Error) -> Void):Bool;
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
	@:overload(function(event:String, listener:(message:Dynamic, sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, code:Float, signal:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, code:Null<Float>, signal:Null<String>):Bool { })
	@:overload(function(event:String, message:Dynamic, sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Dynamic, sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Dynamic, sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Dynamic, sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	@:overload(function(event:String, listener:(code:Float, signal:String) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:() -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(code:Null<Float>, signal:Null<String>) -> Void):ChildProcess { })
	@:overload(function(event:String, listener:(message:Dynamic, sendHandle:ts.AnyOf2<node.net.Socket, node.net.Server>) -> Void):ChildProcess { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ChildProcess;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ChildProcess;
	function setMaxListeners(n:Float):ChildProcess;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};