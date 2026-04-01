package node.http;

@:jsRequire("http", "IncomingMessage") extern class IncomingMessage extends node.stream.Readable {
	function new(socket:node.net.Socket);
	var httpVersion : String;
	var httpVersionMajor : Float;
	var httpVersionMinor : Float;
	var connection : node.net.Socket;
	var headers : IncomingHttpHeaders;
	var rawHeaders : Array<String>;
	var trailers : haxe.DynamicAccess<Null<String>>;
	var rawTrailers : Array<String>;
	function setTimeout(msecs:Float, callback:() -> Void):IncomingMessage;
	/**
		Only valid for request obtained from http.Server.
	**/
	@:optional
	var method : String;
	/**
		Only valid for request obtained from http.Server.
	**/
	@:optional
	var url : String;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusCode : Float;
	/**
		Only valid for response obtained from http.ClientRequest.
	**/
	@:optional
	var statusMessage : String;
	var socket : node.net.Socket;
	function setEncoding(encoding:String):IncomingMessage;
	function pause():IncomingMessage;
	function resume():IncomingMessage;
	function unpipe(?destination:global.nodejs.WritableStream):IncomingMessage;
	function wrap(oldStream:global.nodejs.ReadableStream):IncomingMessage;
	/**
		Event emitter
		The defined events on documents including:
		1. close
		2. data
		3. end
		4. readable
		5. error
	**/
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function addListener(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function on(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function once(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function prependListener(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function prependOnceListener(event:String, listener:() -> Void):IncomingMessage;
	@:overload(function(event:String, listener:(chunk:Dynamic) -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:() -> Void):IncomingMessage { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):IncomingMessage { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage { })
	function removeListener(event:String, listener:() -> Void):IncomingMessage;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):IncomingMessage;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):IncomingMessage;
	function setMaxListeners(n:Float):IncomingMessage;
	static var prototype : IncomingMessage;
}