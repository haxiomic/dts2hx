package node.crypto;
extern interface CipherCCM extends Cipher {
	function setAAD(buffer:global.Buffer, options:{ var plaintextLength : Float; }):CipherCCM;
	function getAuthTag():global.Buffer;
}