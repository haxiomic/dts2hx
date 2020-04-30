package node.http2;
extern typedef Http2Session = {
	@:optional
	final alpnProtocol : String;
	function close(?callback:() -> Void):Void;
	final closed : Bool;
	final connecting : Bool;
	function destroy(?error:ts.lib.IError, ?code:Float):Void;
	final destroyed : Bool;
	@:optional
	final encrypted : Bool;
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>):Void;
	final localSettings : Settings;
	@:optional
	final originSet : std.Array<String>;
	final pendingSettingsAck : Bool;
	@:overload(function(payload:haxe.extern.EitherType<global.IBuffer, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, ts.lib.IDataView>>>>>>>>>>, callback:(err:Null<ts.lib.IError>, duration:Float, payload:global.IBuffer) -> Void):Bool { })
	function ping(callback:(err:Null<ts.lib.IError>, duration:Float, payload:global.IBuffer) -> Void):Bool;
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
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.IBuffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Any>) -> Void):Http2Session;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.IError):Bool { })
	@:overload(function(event:String, frameType:Float, errorCode:Float, streamID:Float):Bool { })
	@:overload(function(event:String, errorCode:Float, lastStreamID:Float, opaqueData:global.IBuffer):Bool { })
	@:overload(function(event:String, settings:Settings):Bool { })
	@:overload(function(event:String, settings:Settings):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:haxe.extern.Rest<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.IBuffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function on(event:String, listener:(args:haxe.extern.Rest<Any>) -> Void):Http2Session;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.IBuffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function once(event:String, listener:(args:haxe.extern.Rest<Any>) -> Void):Http2Session;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.IBuffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Any>) -> Void):Http2Session;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.IError) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.IBuffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Any>) -> Void):Http2Session;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Http2Session;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Any>) -> Void):Http2Session;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Http2Session;
	function setMaxListeners(n:Float):Http2Session;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<ts.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
};