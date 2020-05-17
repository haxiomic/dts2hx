package node.http2;
typedef Http2Session = {
	@:optional
	final alpnProtocol : String;
	function close(?callback:() -> Void):Void;
	final closed : Bool;
	final connecting : Bool;
	function destroy(?error:ts.lib.Error, ?code:Float):Void;
	final destroyed : Bool;
	@:optional
	final encrypted : Bool;
	function goaway(?code:Float, ?lastStreamID:Float, ?opaqueData:ts.AnyOf11<global.Buffer, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>):Void;
	final localSettings : Settings;
	@:optional
	final originSet : Array<String>;
	final pendingSettingsAck : Bool;
	@:overload(function(payload:node.crypto.Binary, callback:(err:Null<ts.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool { })
	function ping(callback:(err:Null<ts.lib.Error>, duration:Float, payload:global.Buffer) -> Void):Bool;
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
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:ts.lib.Error):Bool { })
	@:overload(function(event:String, frameType:Float, errorCode:Float, streamID:Float):Bool { })
	@:overload(function(event:String, errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer):Bool { })
	@:overload(function(event:String, settings:Settings):Bool { })
	@:overload(function(event:String, settings:Settings):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:(err:ts.lib.Error) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(frameType:Float, errorCode:Float, streamID:Float) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(errorCode:Float, lastStreamID:Float, opaqueData:global.Buffer) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:(settings:Settings) -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	@:overload(function(event:String, listener:() -> Void):Http2Session { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Http2Session;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Http2Session;
	function setMaxListeners(n:Float):Http2Session;
	function getMaxListeners():Float;
	function listeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function rawListeners(event:ts.AnyOf2<String, js.lib.Symbol>):Array<js.lib.Function>;
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	function listenerCount(type:ts.AnyOf2<String, js.lib.Symbol>):Float;
};