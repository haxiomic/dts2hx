package node.crypto;

@:jsRequire("crypto", "Certificate") extern class Certificate {
	function new();
	function exportChallenge(spkac:BinaryLike):global.Buffer;
	function exportPublicKey(spkac:BinaryLike):global.Buffer;
	function verifySpkac(spkac:Binary):Bool;
	@:selfCall
	static function call():Certificate;
}