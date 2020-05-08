package ts.html;
typedef RsaHashedKeyGenParams = {
	var hash : AlgorithmIdentifier;
	var modulusLength : Float;
	var publicExponent : ts.lib.Uint8Array;
	var name : String;
};