package js.html;
extern interface RsaKeyGenParams extends Algorithm {
	var modulusLength : Float;
	var publicExponent : js.lib.Uint8Array;
}