package node.dgram;

@:jsRequire("dgram", "Socket") extern class Socket extends node.events.EventEmitter {
	@:overload(function(msg:ts.AnyOf3<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer>, offset:Float, length:Float, port:Float, ?address:String, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void { })
	function send(msg:ts.AnyOf4<String, Array<Dynamic>, js.lib.Uint8Array_<js.lib.ArrayBufferLike>, global.Buffer>, port:Float, ?address:String, ?callback:(error:Null<js.lib.Error>, bytes:Float) -> Void):Void;
	@:overload(function(?port:Float, ?callback:() -> Void):Void { })
	@:overload(function(?callback:() -> Void):Void { })
	@:overload(function(options:BindOptions, ?callback:() -> Void):Void { })
	function bind(?port:Float, ?address:String, ?callback:() -> Void):Void;
	function close(?callback:() -> Void):Void;
	function address():ts.AnyOf2<String, node.net.AddressInfo>;
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
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function addListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, err:js.lib.Error):Bool { })
	@:overload(function(event:String):Bool { })
	@:overload(function(event:String, msg:global.Buffer, rinfo:RemoteInfo):Bool { })
	function emit(event:ts.AnyOf2<String, js.lib.Symbol>, args:haxe.extern.Rest<Dynamic>):Bool;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function on(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function once(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(err:js.lib.Error) -> Void):Socket { })
	@:overload(function(event:String, listener:() -> Void):Socket { })
	@:overload(function(event:String, listener:(msg:global.Buffer, rinfo:RemoteInfo) -> Void):Socket { })
	function prependOnceListener(event:String, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	function removeListener(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	function off(event:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):Socket;
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Socket;
	function setMaxListeners(n:Float):Socket;
	static var prototype : Socket;
}