package node.http2;

@:jsRequire("http2", "Http2ServerResponse") extern class Http2ServerResponse extends node.stream.Stream {
	private function new();
	function addTrailers(trailers:node.http.OutgoingHttpHeaders):Void;
	var connection : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	@:overload(function(?data:ts.AnyOf2<String, global.Buffer>, ?callback:() -> Void):Void { })
	@:overload(function(?data:ts.AnyOf2<String, global.Buffer>, ?encoding:String, ?callback:() -> Void):Void { })
	function end(?callback:() -> Void):Void;
	final finished : Bool;
	function getHeader(name:String):String;
	function getHeaderNames():Array<String>;
	function getHeaders():node.http.OutgoingHttpHeaders;
	function hasHeader(name:String):Bool;
	final headersSent : Bool;
	function removeHeader(name:String):Void;
	var sendDate : Bool;
	function setHeader(name:String, value:ts.AnyOf3<String, Float, Array<String>>):Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	var socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	var statusCode : Float;
	var statusMessage : String;
	var stream : ServerHttp2Stream;
	@:overload(function(chunk:ts.AnyOf2<String, global.Buffer>, ?encoding:String, ?callback:(err:js.lib.Error) -> Void):Bool { })
	function write(chunk:ts.AnyOf2<String, global.Buffer>, ?callback:(err:js.lib.Error) -> Void):Bool;
	function writeContinue():Void;
	@:overload(function(statusCode:Float, ?statusMessage:String, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse { })
	function writeHead(statusCode:Float, ?headers:node.http.OutgoingHttpHeaders):Http2ServerResponse;
	function createPushResponse(headers:node.http.OutgoingHttpHeaders, callback:(err:Null<js.lib.Error>, res:Http2ServerResponse) -> Void):Void;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, hadError:Bool, code:Float):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, error:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse;
	@:overload(function(event:String, listener:(hadError:Bool, code:Float) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:(error:js.lib.Error) -> Void):Http2ServerResponse { })
	@:overload(function(event:String, listener:() -> Void):Http2ServerResponse { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2ServerResponse;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2ServerResponse;
	function setMaxListeners(n:Float):Http2ServerResponse;
	static var prototype : Http2ServerResponse;
}