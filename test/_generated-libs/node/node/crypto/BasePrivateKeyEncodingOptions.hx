package node.crypto;
extern interface BasePrivateKeyEncodingOptions<T:(String)> {
	var format : T;
	var cipher : String;
	var passphrase : String;
}