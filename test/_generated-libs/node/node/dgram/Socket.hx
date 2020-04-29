package node.dgram;
@:jsRequire("dgram", "Socket") extern class Socket {
	@:overload(function(msg:haxe.extern.EitherType<String, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>, offset:Float, length:Float, port:Float, ?address:String, ?callback:(error:Null<js.lib.IError>, bytes:Float) -> Void):Void { })
	function send(msg:haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<Any>, haxe.extern.EitherType<global.IBuffer, js.lib.IUint8Array>>>, port:Float, ?address:String, ?callback:(error:Null<js.lib.IError>, bytes:Float) -> Void):Void;
	@:overload(function(?port:Float, ?callback:() -> Void):Void { })
	@:overload(function(?callback:() -> Void):Void { })
	@:overload(function(options:BindOptions, ?callback:() -> Void):Void { })
	function bind(?port:Float, ?address:String, ?callback:() -> Void):Void;
	function close(?callback:() -> Void):Void;
	function address():haxe.extern.EitherType<String, node.net.AddressInfo>;
	function setBroadcast(flag:Bool):Void;
	function setTTL(ttl:Float):Void;
	function setMulticastTTL(ttl:Float):Void;
	function setMulticastInterface(multicastInterface:String):Void;
	function setMulticastLoopback(flag:Bool):Void;
	function addMembership(multicastAddress:String, ?multicastInterface:String):Void;
	function dropMembership(multicastAddress:String, ?multicastInterface:String):Void;
	function ref():Socket;
	function unref():Socket;
	function setRecvBufferSize(size:Float):Void;
	function setSendBufferSize(size:Float):Void;
	function getRecvBufferSize():Float;
	function getSendBufferSize():Float;
	/**
		events.EventEmitter
		1. close
		2. error
		3. listening
		4. message
	**/
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.IBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function addListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.IError):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, msg:global.IBuffer, rinfo:RemoteInfo):Bool { })
	function emit(event:haxe.extern.EitherType<String, js.lib.Symbol>, args:std.Array<Any>):Bool;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.IBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function on(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.IBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function once(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.IBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.IError) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.IBuffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependOnceListener(event:String, listener:(args:std.Array<Any>) -> Void):Socket;
	function removeListener(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Socket;
	function off(event:haxe.extern.EitherType<String, js.lib.Symbol>, listener:(args:std.Array<Any>) -> Void):Socket;
	function removeAllListeners(?event:haxe.extern.EitherType<String, js.lib.Symbol>):Socket;
	function setMaxListeners(n:Float):Socket;
	function getMaxListeners():Float;
	function listeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function rawListeners(event:haxe.extern.EitherType<String, js.lib.Symbol>):std.Array<js.lib.IFunction>;
	function eventNames():std.Array<haxe.extern.EitherType<String, js.lib.Symbol>>;
	function listenerCount(type:haxe.extern.EitherType<String, js.lib.Symbol>):Float;
}