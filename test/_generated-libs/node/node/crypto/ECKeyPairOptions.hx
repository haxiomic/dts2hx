package node.crypto;

typedef ECKeyPairOptions<PubF:(KeyFormat), PrivF:(KeyFormat)> = {
	var publicKeyEncoding : {
		var type : String;
		var format : PubF;
	};
	var privateKeyEncoding : BasePrivateKeyEncodingOptions<PrivF> & {
		var type : String;
	};
	/**
		Name of the curve to use
	**/
	var namedCurve : String;
	/**
		Must be `'named'` or `'explicit'`. Default: `'named'`.
	**/
	@:optional
	var paramEncoding : String;
};