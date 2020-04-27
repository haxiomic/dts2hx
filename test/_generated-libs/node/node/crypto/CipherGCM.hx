package node.crypto;
extern interface CipherGCM extends Cipher {
	function setAAD(buffer:global.Buffer, ?options:{ var plaintextLength : Float; }):CipherGCM;
	function getAuthTag():global.Buffer;
}