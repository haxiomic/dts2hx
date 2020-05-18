package node.crypto;

@:jsRequire("crypto", "generateKeyPair") @valueModuleOnly extern class GenerateKeyPair {
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:RSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:DSAKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:String) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:global.Buffer, privateKey:global.Buffer) -> Void):Void { })
	@:overload(function(type:String, options:ECKeyPairKeyObjectOptions, callback:(err:Null<js.lib.Error>, publicKey:KeyObject, privateKey:KeyObject) -> Void):Void { })
	@:selfCall
	static function call(type:String, options:RSAKeyPairOptions<String, String>, callback:(err:Null<js.lib.Error>, publicKey:String, privateKey:String) -> Void):Void;
}