package node.crypto;

typedef BasePrivateKeyEncodingOptions<T:(KeyFormat)> = {
	var format : T;
	@:optional
	var cipher : String;
	@:optional
	var passphrase : String;
};