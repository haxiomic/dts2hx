package node.http2;
extern typedef Http2Server = {
	/**
		events.EventEmitter
		   1. close
		   2. connection
		   3. error
		   4. listening
		
		events.EventEmitter
		   1. close
		   2. connection
		   3. error
		   4. listening
		
		events.EventEmitter
		   1. close
		   2. connection
		   3. error
		   4. listening
		
		events.EventEmitter
		   1. close
		   2. connection
		   3. error
		   4. listening
		
		events.EventEmitter
		   1. close
		   2. connection
		   3. error
		   4. listening
		
		events.EventEmitter
		   1. close
		   2. connection
		   3. error
		   4. listening
	**/
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server;
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server;
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server;
	@:overload(function(?port:Float, ?hostname:String, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(?port:Float, ?backlog:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(?port:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(path:String, ?backlog:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(path:String, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(options:node.net.ListenOptions, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(handle:Any, ?backlog:Float, ?listeningListener:() -> Void):Http2Server { })
	@:overload(function(handle:Any, ?listeningListener:() -> Void):Http2Server { })
	function listen(?port:Float, ?hostname:String, ?backlog:Float, ?listeningListener:() -> Void):Http2Server;
	function close(?callback:(?err:js.lib.IError) -> Void):Http2Server;
	function address():Null<haxe.extern.EitherType<String, node.net.AddressInfo>>;
	function getConnections(cb:(error:Null<js.lib.IError>, count:Float) -> Void):Void;
	function ref():Http2Server;
	function unref():Http2Server;
	var maxConnections : Float;
	var connections : Float;
	var listening : Bool;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Http2Server;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Http2Server;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Http2Server;
	function setMaxListeners(n:Float):Http2Server;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
};