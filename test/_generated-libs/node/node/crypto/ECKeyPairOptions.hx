package node.crypto;

typedef ECKeyPairOptions<PubF:(KeyFormat), PrivF:(KeyFormat)> = {
	/**
		Name of the curve to use.
	**/
	var namedCurve : String;
	var publicKeyEncoding : {
		var type : String;
		var format : PubF;
	};
	var privateKeyEncoding : BasePrivateKeyEncodingOptions<PrivF> & {
		var type : String;
	};
};