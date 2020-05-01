package ts.html;
extern typedef RsaHashedKeyGenParams = {
	var hash : ts.AnyOf2<String, Algorithm>;
	var modulusLength : Float;
	var publicExponent : ts.lib.IUint8Array;
	var name : String;
};