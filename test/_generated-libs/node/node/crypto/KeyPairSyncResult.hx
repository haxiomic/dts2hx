package node.crypto;

typedef KeyPairSyncResult<T1:(ts.AnyOf2<String, global.Buffer>), T2:(ts.AnyOf2<String, global.Buffer>)> = {
	var publicKey : T1;
	var privateKey : T2;
};