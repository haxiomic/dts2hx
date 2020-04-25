package node.crypto;
@:jsRequire("crypto", "generateKeyPair") extern class GenerateKeyPair {
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : String; var privateKey : global.Buffer; }> { })
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : global.Buffer; var privateKey : String; }> { })
	@:overload(function(type:String, options:RSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : global.Buffer; var privateKey : global.Buffer; }> { })
	@:overload(function(type:String, options:RSAKeyPairKeyObjectOptions):js.lib.Promise<KeyPairKeyObjectResult> { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : String; var privateKey : String; }> { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : String; var privateKey : global.Buffer; }> { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : global.Buffer; var privateKey : String; }> { })
	@:overload(function(type:String, options:DSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : global.Buffer; var privateKey : global.Buffer; }> { })
	@:overload(function(type:String, options:DSAKeyPairKeyObjectOptions):js.lib.Promise<KeyPairKeyObjectResult> { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : String; var privateKey : String; }> { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : String; var privateKey : global.Buffer; }> { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : global.Buffer; var privateKey : String; }> { })
	@:overload(function(type:String, options:ECKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : global.Buffer; var privateKey : global.Buffer; }> { })
	@:overload(function(type:String, options:ECKeyPairKeyObjectOptions):js.lib.Promise<KeyPairKeyObjectResult> { })
	static function __promisify__(type:String, options:RSAKeyPairOptions<String, String>):js.lib.Promise<{ var publicKey : String; var privateKey : String; }>;
}