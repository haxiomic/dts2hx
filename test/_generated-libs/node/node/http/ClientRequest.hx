package node.http;
@:jsRequire("http", "ClientRequest") extern class ClientRequest extends OutgoingMessage {
	function new(url:haxe.extern.EitherType<String, haxe.extern.EitherType<node.url.URL, ClientRequestArgs>>, ?cb:(res:IncomingMessage) -> Void);
	var connection : node.net.Socket;
	var socket : node.net.Socket;
	var aborted : Float;
	final path : String;
	function abort():Void;
	function onSocket(socket:node.net.Socket):Void;
	function setTimeout(timeout:Float, ?callback:() -> Void):ClientRequest;
	function setNoDelay(?noDelay:Bool):Void;
	function setSocketKeepAlive(?enable:Bool, ?initialDelay:Float):Void;
}