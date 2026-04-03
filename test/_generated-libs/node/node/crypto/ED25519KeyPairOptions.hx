package node.crypto;

typedef ED25519KeyPairOptions<PubF:(KeyFormat), PrivF:(KeyFormat)> = {
	var publicKeyEncoding : {
		var type : String;
		var format : PubF;
	};
	var privateKeyEncoding : BasePrivateKeyEncodingOptions<PrivF> & {
		var type : String;
	};
};