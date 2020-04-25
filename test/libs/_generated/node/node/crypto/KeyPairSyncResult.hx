package node.crypto;
extern interface KeyPairSyncResult<T1:(haxe.extern.EitherType<String, global.Buffer>), T2:(haxe.extern.EitherType<String, global.Buffer>)> {
	var publicKey : T1;
	var privateKey : T2;
}