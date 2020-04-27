package node.net;
extern typedef TcpNetConnectOpts = TcpSocketConnectOpts & SocketConstructorOpts & { @:optional
	var timeout : Float; };