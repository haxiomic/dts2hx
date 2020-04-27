package node.net;
extern interface TcpNetConnectOpts extends TcpSocketConnectOpts extends SocketConstructorOpts {
	@:optional
	var timeout : Float;
}