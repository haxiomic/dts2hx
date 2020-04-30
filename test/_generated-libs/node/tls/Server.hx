package node.tls;
@:jsRequire("tls", "Server") extern class Server extends node.net.Server {
	function addContext(hostName:String, credentials:{ var key : String; var cert : String; var ca : String; }):Void;
}