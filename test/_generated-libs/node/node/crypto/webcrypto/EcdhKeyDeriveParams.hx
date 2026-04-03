package node.crypto.webcrypto;

@:forward
abstract EcdhKeyDeriveParams(EcdhKeyDeriveParamsTypedef) from EcdhKeyDeriveParamsTypedef to EcdhKeyDeriveParamsTypedef {
	public var public_(get, set):CryptoKey;
	inline function get_public_():CryptoKey return js.Syntax.field(cast this, 'public');
	inline function set_public_(v:CryptoKey):CryptoKey { js.Syntax.code("{0}[{1}] = {2}", this, 'public', v); return v; }
}
