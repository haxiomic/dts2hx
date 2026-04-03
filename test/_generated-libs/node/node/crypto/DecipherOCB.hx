package node.crypto;

@:forward
abstract DecipherOCB(DecipherOCBTypedef) from DecipherOCBTypedef to DecipherOCBTypedef {
	/**
		Once the `decipher.final()` method has been called, the `Decipher` object can
		no longer be used to decrypt data. Attempts to call `decipher.final()` more
		than once will result in an error being thrown.
	**/
	public var final_(get, set):() -> node.buffer.NonSharedBuffer;
	inline function get_final_():() -> node.buffer.NonSharedBuffer return js.Syntax.field(cast this, 'final');
	inline function set_final_(v:() -> node.buffer.NonSharedBuffer):() -> node.buffer.NonSharedBuffer { js.Syntax.code("{0}[{1}] = {2}", this, 'final', v); return v; }
}
