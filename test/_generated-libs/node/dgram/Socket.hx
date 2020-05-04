package node.dgram;
@:jsRequire("dgram", "Socket") extern class Socket extends node.events.EventEmitter {
	@:overload(function(msg:ts.AnyOf3<String, global.IBuffer, ts.lib.IUint8Array>, offset:Float, length:Float, port:Float, ?address:String, ?callback:(error:Null<ts.lib.IError>, bytes:Float) -> Void):Void { })
	function send(msg:ts.AnyOf4<String, Array<Dynamic>, global.IBuffer, ts.lib.IUint8Array>, port:Float, ?address:String, ?callback:(error:Null<ts.lib.IError>, bytes:Float) -> Void):Void;
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
}