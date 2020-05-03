package node.crypto;
typedef KeyObject = {
	@:optional
	var asymmetricKeyType : String;
	function export(?options:{ var type : String; var format : KeyFormat; @:optional var cipher : String; @:optional var passphrase : ts.AnyOf2<String, global.IBuffer>; }):ts.AnyOf2<String, global.IBuffer>;
	@:optional
	var symmetricSize : Float;
	var type : KeyObjectType;
};