package node.crypto;
extern typedef CipherGCM = Cipher & { function setAAD(buffer:global.Buffer, ?options:{ var plaintextLength : Float; }):CipherGCM; function getAuthTag():global.Buffer; };