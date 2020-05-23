package node.crypto;

typedef KeyObject = {
	@:optional
	var asymmetricKeyType : KeyType;
	function export(?options:{ var type : String; var format : KeyFormat; @:optional var cipher : String; @:optional var passphrase : ts.AnyOf2<String, global.Buffer>; }):ts.AnyOf2<String, global.Buffer>;
	@:optional
	var symmetricSize : Float;
	var type : KeyObjectType;
};