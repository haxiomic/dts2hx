package node.crypto;

typedef ICertificate = {
	function exportChallenge(spkac:BinaryLike):global.Buffer;
	function exportPublicKey(spkac:BinaryLike):global.Buffer;
	function verifySpkac(spkac:Binary):Bool;
};