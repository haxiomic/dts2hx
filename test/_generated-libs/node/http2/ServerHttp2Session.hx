package node.http2;
typedef ServerHttp2Session = {
	function altsvc(alt:String, originOrStream:ts.AnyOf4<String, Float, node.url.URL, AlternativeServiceOptions>):Void;
	final server : ts.AnyOf2<Http2Server, Http2SecureServer>;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>):Bool { })
	@:overload(function(event:String, stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	@:overload(function(event:String, listener:(session:ServerHttp2Session, socket:ts.AnyOf2<node.net.Socket, node.tls.TLSSocket>) -> Void):ServerHttp2Session { })
	@:overload(function(event:String, listener:(stream:ServerHttp2Stream, headers:IncomingHttpHeaders, flags:Float) -> Void):ServerHttp2Session { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	@:optional
	final alpnProtocol : String;
	function close(?callback:() -> Void):Void;
	final closed : Bool;
	final connecting : Bool;
	function destroy(?error:ts.lib.IError, ?code:Float):Void;
	final destroyed : Bool;
	@:optional
	final encrypted : Bool;
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:ts.AnyOf11<global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>):Void;
	final localSettings : Settings;
	@:optional
	final originSet : std.Array<String>;
	final pendingSettingsAck : Bool;
	@:overload(function(payload:node.crypto.Binary, callback:(err:Null<ts.lib.IError>, duration:Float, payload:global.IBuffer) -> Void):Bool { })
	function ping(callback:(err:Null<ts.lib.IError>, duration:Float, payload:global.IBuffer) -> Void):Bool;
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
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):ServerHttp2Session;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):ServerHttp2Session;
	function setMaxListeners(n:Float):ServerHttp2Session;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};