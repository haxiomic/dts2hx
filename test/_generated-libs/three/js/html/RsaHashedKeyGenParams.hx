package js.html;
extern typedef RsaHashedKeyGenParams = RsaKeyGenParams & { var hash : haxe.extern.EitherType<String, Algorithm>; };