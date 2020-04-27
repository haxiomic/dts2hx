package node.crypto;
extern typedef CipherCCM = Cipher & { function setAAD(buffer:global.Buffer, options:{ var plaintextLength : Float; }):CipherCCM; function getAuthTag():global.Buffer; };