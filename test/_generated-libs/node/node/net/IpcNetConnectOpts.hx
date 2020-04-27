package node.net;
extern typedef IpcNetConnectOpts = IpcSocketConnectOpts & SocketConstructorOpts & { @:optional
	var timeout : Float; };