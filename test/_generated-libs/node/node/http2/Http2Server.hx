package node.http2;

typedef Http2Server = {
	/**
		events.EventEmitter
		  1. close
		  2. connection
		  3. error
		  4. listening
	**/
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Server;
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Server;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Server;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Server;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Server;
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(handle:Dynamic, ?backlog:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(handle:Dynamic, ?listeningListener:() -> Void):Http2Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Http2Server;
	function close(?callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Http2Server;
	function address():Null<ts.AnyOf2<String, node.net.AddressInfo>>;
	function getConnections(cb:(error:Null<js.lib.Error>, count:Float) -> Void):Void;
	function ref():Http2Server;
	function unref():Http2Server;
	var maxConnections : Float;
	var connections : Float;
	var listening : Bool;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Server;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Server;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2Server;
	function setMaxListeners(n:Float):Http2Server;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};