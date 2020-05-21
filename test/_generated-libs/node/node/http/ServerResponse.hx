package node.http;

@:jsRequire("http", "ServerResponse") extern class ServerResponse extends OutgoingMessage {
	function new(req:IncomingMessage);
	var statusCode : Float;
	var statusMessage : String;
	function assignSocket(socket:node.net.Socket):Void;
	function detachSocket(socket:node.net.Socket):Void;
	function writeContinue(?callback:() -> Void):Void;
	@:overload(function(statusCode:Float, ?headers:OutgoingHttpHeaders):ServerResponse { })
	function writeHead(statusCode:Float, ?reasonPhrase:String, ?headers:OutgoingHttpHeaders):ServerResponse;
	function setTimeout(msecs:Float, ?callback:() -> Void):ServerResponse;
	function setDefaultEncoding(encoding:String):ServerResponse;
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
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse { })
	function addListener(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse { })
	function on(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse { })
	function once(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse { })
	function prependListener(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse { })
	function prependOnceListener(event:String, listener:() -> Void):ServerResponse;
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:String, listener:(src:node.stream.Readable) -> Void):ServerResponse { })
	@:overload(function(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse { })
	function removeListener(event:String, listener:() -> Void):ServerResponse;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerResponse;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ServerResponse;
	function setMaxListeners(n:Float):ServerResponse;
	static var prototype : ServerResponse;
}