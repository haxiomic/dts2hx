package node.http2;

typedef ClientHttp2Session = {
	function request(?headers:node.http.OutgoingHttpHeaders, ?options:ClientSessionRequestOptions):ClientHttp2Stream;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, alt:String, origin:String, stream:Float):Bool { })
	@:overload(function(event:String, session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>):Bool { })
	@:overload(function(event:String, stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	@:optional
	final alpnProtocol : String;
	function close(?callback:() -> Void):Void;
	final closed : Bool;
	final connecting : Bool;
	function destroy(?error:js.lib.Error, ?code:Float):Void;
	final destroyed : Bool;
	@:optional
	final encrypted : Bool;
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:node.crypto.Binary):Void;
	final localSettings : Settings;
	@:optional
	final originSet : Array<String>;
	final pendingSettingsAck : Bool;
	@:overload(function(payload:node.crypto.Binary, callback:(err:Null<js.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool { })
	function ping(callback:(err:Null<js.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool;
	function ref():Void;
	final remoteSettings : Settings;
	function rstStream(stream:Http2Stream, ?code:Float):Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	final socket : ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>;
	final state : SessionState;
	function priority(stream:Http2Stream, options:StreamPriorityOptions):Void;
	function settings(settings:Settings):Void;
	final type : Float;
	function unref():Void;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ClientHttp2Session;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ClientHttp2Session;
	function setMaxListeners(n:Float):ClientHttp2Session;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<haxe.Constraints.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};