package ts.html;
extern typedef RsaHashedKeyGenParams = {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	var modulusLength : Float;
	var publicExponent : ts.lib.IUint8Array;
	var name : String;
};