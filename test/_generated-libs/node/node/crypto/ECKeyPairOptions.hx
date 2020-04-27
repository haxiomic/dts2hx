package node.crypto;
extern interface ECKeyPairOptions<PubF:(String), PrivF:(String)> {
	/**
		Name of the curve to use.
	**/
	var namedCurve : String;
	var publicKeyEncoding : { var type : String; var format : PubF; };
	var privateKeyEncoding : Any;
}