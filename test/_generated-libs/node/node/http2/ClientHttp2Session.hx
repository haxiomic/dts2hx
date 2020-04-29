package node.http2;
extern typedef ClientHttp2Session = {
	function request(?headers:node.http.OutgoingHttpHeaders, ?options:ClientSessionRequestOptions):ClientHttp2Stream;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, alt:String, origin:String, stream:Float):Bool { })
	@:overload(function(event:String, session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>):Bool { })
	@:overload(function(event:String, stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:overload(function(event:String, listener:(alt:String, origin:String, stream:Float) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(session:ClientHttp2Session, socket:haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>) -> Void):ClientHttp2Session { })
	@:overload(function(event:String, listener:(stream:ClientHttp2Stream, headers:IncomingHttpHeaders & IncomingHttpStatusHeader, flags:Float) -> Void):ClientHttp2Session { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):ClientHttp2Session;
	@:optional
	final alpnProtocol : String;
	function close(?callback:() -> Void):Void;
	final closed : Bool;
	final connecting : Bool;
	function destroy(?error:js.lib.IError, ?code:Float):Void;
	final destroyed : Bool;
	@:optional
	final encrypted : Bool;
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, js.lib.IDataView>>>>>>>>>>):Void;
	final localSettings : Settings;
	@:optional
	final originSet : std.Array<String>;
	final pendingSettingsAck : Bool;
	@:overload(function(payload:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, js.lib.IDataView>>>>>>>>>>, callback:(err:Null<js.lib.IError>, duration:Float, payload:global.IBuffer) -> Void):Bool { })
	function ping(callback:(err:Null<js.lib.IError>, duration:Float, payload:global.IBuffer) -> Void):Bool;
	function ref():Void;
	final remoteSettings : Settings;
	function rstStream(stream:Http2Stream, ?code:Float):Void;
	function setTimeout(msecs:Float, ?callback:() -> Void):Void;
	final socket : haxe.extern.EitherType<node.net.Socket, node.tls.TLSSocket>;
	final state : SessionState;
	function priority(stream:Http2Stream, options:StreamPriorityOptions):Void;
	function settings(settings:Settings):Void;
	final type : Float;
	function unref():Void;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):node.events.EventEmitter;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):node.events.EventEmitter;
	function setMaxListeners(n:Float):node.events.EventEmitter;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
};