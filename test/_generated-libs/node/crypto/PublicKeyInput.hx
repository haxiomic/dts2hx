package node.crypto;
extern typedef PublicKeyInput = {
	var key : ts.AnyOf2<String, global.IBuffer>;
	@:optional
	var format : String;
	@:optional
	var type : String;
};