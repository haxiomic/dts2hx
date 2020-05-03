package ts.html;
typedef RsaHashedKeyGenParams = {
	var hash : AlgorithmIdentifier;
	var modulusLength : Float;
	var publicExponent : ts.lib.IUint8Array;
	var name : String;
};