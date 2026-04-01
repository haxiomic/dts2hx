package node.http;

@:jsRequire("http", "OutgoingMessage") extern class OutgoingMessage extends node.stream.Writable {
	function new();
	var upgrading : Bool;
	var chunkedEncoding : Bool;
	var shouldKeepAlive : Bool;
	var useChunkedEncodingByDefault : Bool;
	var sendDate : Bool;
	var finished : Bool;
	var headersSent : Bool;
	var connection : node.net.Socket;
	function setTimeout(msecs:Float, ?callback:() -> Void):OutgoingMessage;
	function setHeader(name:String, value:ts.AnyOf3<String, Float, Array<String>>):Void;
	function getHeader(name:String):Null<ts.AnyOf3<String, Float, Array<String>>>;
	function getHeaders():OutgoingHttpHeaders;
	function getHeaderNames():Array<String>;
	function hasHeader(name:String):Bool;
	function removeHeader(name:String):Void;
	function addTrailers(headers:ts.AnyOf2<Array<ts.Tuple2<String, String>>, OutgoingHttpHeaders>):Void;
	function flushHeaders():Void;
	function setDefaultEncoding(encoding:String):OutgoingMessage;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. drain
		3. error
		4. finish
		5. pipe
		6. unpipe
	**/
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage { })
	function addListener(event:String, listener:() -> Void):OutgoingMessage;
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage { })
	function on(event:String, listener:() -> Void):OutgoingMessage;
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage { })
	function once(event:String, listener:() -> Void):OutgoingMessage;
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage { })
	function prependListener(event:String, listener:() -> Void):OutgoingMessage;
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage { })
	function prependOnceListener(event:String, listener:() -> Void):OutgoingMessage;
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:() -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):OutgoingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage { })
	function removeListener(event:String, listener:() -> Void):OutgoingMessage;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OutgoingMessage;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):OutgoingMessage;
	function setMaxListeners(n:Float):OutgoingMessage;
	static var prototype : OutgoingMessage;
}