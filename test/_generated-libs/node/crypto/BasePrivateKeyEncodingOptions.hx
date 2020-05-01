package node.crypto;
typedef BasePrivateKeyEncodingOptions<T> = {
	var format : T;
	var cipher : String;
	var passphrase : String;
};