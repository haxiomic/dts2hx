package node.http2;
extern typedef Http2Server = node.net.Server & { /**
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
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server; @:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, request:Http2ServerRequest, response:Http2ServerResponse):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server; @:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(request:Http2ServerRequest, response:Http2ServerResponse) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Http2Server { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):Http2Server { })
	@:overload(function(event:String, listener:() -> Void):Http2Server { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Http2Server; };