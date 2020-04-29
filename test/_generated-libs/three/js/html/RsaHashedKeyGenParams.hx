package js.html;
extern typedef RsaHashedKeyGenParams = {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	var modulusLength : Float;
	var publicExponent : js.lib.IUint8Array;
	var name : String;
};