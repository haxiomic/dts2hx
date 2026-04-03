package node.crypto;

typedef CipherInfo = {
	/**
		The name of the cipher.
	**/
	var name : String;
	/**
		The nid of the cipher.
	**/
	var nid : Float;
	/**
		The block size of the cipher in bytes.
		This property is omitted when mode is 'stream'.
	**/
	@:optional
	var blockSize : Float;
	/**
		The expected or default initialization vector length in bytes.
		This property is omitted if the cipher does not use an initialization vector.
	**/
	@:optional
	var ivLength : Float;
	/**
		The expected or default key length in bytes.
	**/
	var keyLength : Float;
	/**
		The cipher mode.
	**/
	var mode : CipherMode;
};