package js.html;
extern interface RsaHashedKeyGenParams extends RsaKeyGenParams {
	var hash : haxe.extern.EitherType<String, Algorithm>;
}