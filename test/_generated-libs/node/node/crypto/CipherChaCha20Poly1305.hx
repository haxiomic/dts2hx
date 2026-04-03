package node.crypto;

@:forward
abstract CipherChaCha20Poly1305(CipherChaCha20Poly1305Typedef) from CipherChaCha20Poly1305Typedef to CipherChaCha20Poly1305Typedef {
	/**
		Once the `cipher.final()` method has been called, the `Cipher` object can no
		longer be used to encrypt data. Attempts to call `cipher.final()` more than
		once will result in an error being thrown.
	**/
	public var final_(get, set):() -> node.buffer.NonSharedBuffer;
	inline function get_final_():() -> node.buffer.NonSharedBuffer return js.Syntax.field(cast this, 'final');
	inline function set_final_(v:() -> node.buffer.NonSharedBuffer):() -> node.buffer.NonSharedBuffer { js.Syntax.code("{0}[{1}] = {2}", this, 'final', v); return v; }
}
