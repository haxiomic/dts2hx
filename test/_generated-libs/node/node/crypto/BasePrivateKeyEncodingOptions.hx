package node.crypto;

typedef BasePrivateKeyEncodingOptions<T:(KeyFormat)> = {
	var format : T;
	var cipher : String;
	var passphrase : String;
};