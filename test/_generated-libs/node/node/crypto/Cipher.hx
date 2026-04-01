package node.crypto;

@:forward
abstract Cipher(Cipher_) from Cipher_ to Cipher_ {
	public var final_(get, set):() -> global.Buffer;
	inline function get_final_():() -> global.Buffer return js.Syntax.field(cast this, 'final');
	inline function set_final_(v:() -> global.Buffer):() -> global.Buffer { js.Syntax.code("{0}[{1}] = {2}", this, 'final', v); return v; }
}
