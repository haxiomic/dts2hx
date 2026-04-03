package node.crypto;

@:forward
abstract CipherChaCha20Poly1305Options(CipherChaCha20Poly1305OptionsTypedef) from CipherChaCha20Poly1305OptionsTypedef to CipherChaCha20Poly1305OptionsTypedef {
	@:optional
	public var final_(get, set):ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void;
	inline function get_final_():ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void return js.Syntax.field(cast this, 'final');
	inline function set_final_(v:ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void):ts.AnyOf2<() -> Void, js.lib.Error -> Void> -> Void { js.Syntax.code("{0}[{1}] = {2}", this, 'final', v); return v; }
}
