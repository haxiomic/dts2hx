package node.net;
extern interface IpcNetConnectOpts extends IpcSocketConnectOpts extends SocketConstructorOpts {
	@:optional
	var timeout : Float;
}