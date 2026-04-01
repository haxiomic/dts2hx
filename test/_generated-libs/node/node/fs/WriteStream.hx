package node.fs;

@:jsRequire("fs", "WriteStream") extern class WriteStream extends node.stream.Writable {
	function close():Void;
	var bytesWritten : Float;
	var path : ts.AnyOf2<String, global.Buffer>;
	/**
		events.EventEmitter
		  1. open
		  2. close
	**/
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	@:overload(function(event:String, listener:(fd:Float) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function setDefaultEncoding(encoding:String):WriteStream;
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):WriteStream { })
	@:overload(function(event:String, listener:() -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):WriteStream { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream { })
	function removeListener(event:String, listener:() -> Void):WriteStream;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):WriteStream;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):WriteStream;
	function setMaxListeners(n:Float):WriteStream;
	static var prototype : WriteStream;
}