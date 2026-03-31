package node.tty;

@:jsRequire("tty", "ReadStream") extern class ReadStream extends node.net.Socket {
	var isRaw : Bool;
	function setRawMode(mode:Bool):Void;
	var isTTY : Bool;
	@:overload(function(port:Float, host:String, ?connectionListener:() -> Void):ReadStream { })
	@:overload(function(port:Float, ?connectionListener:() -> Void):ReadStream { })
	@:overload(function(path:String, ?connectionListener:() -> Void):ReadStream { })
	function connect(options:node.net.SocketConnectOpts, ?connectionListener:() -> Void):ReadStream;
	/**
		events.EventEmitter
		  1. close
		  2. connect
		  3. data
		  4. drain
		  5. end
		  6. error
		  7. lookup
		  8. timeout
	**/
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(had_error:Bool) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(data:global.Buffer) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error, address:String, family:ts.AnyOf2<String, Float>, host:String) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:() -> Void):ReadStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ReadStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ReadStream { })
	function removeListener(event:String, listener:() -> Void):ReadStream;
	static var prototype : ReadStream;
}