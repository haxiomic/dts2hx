package node.crypto;

typedef JsonWebKey = {
	@:optional
	var crv : String;
	@:optional
	var d : String;
	@:optional
	var dp : String;
	@:optional
	var dq : String;
	@:optional
	var e : String;
	@:optional
	var k : String;
	@:optional
	var kty : String;
	@:optional
	var n : String;
	@:optional
	var p : String;
	@:optional
	var q : String;
	@:optional
	var qi : String;
	@:optional
	var x : String;
	@:optional
	var y : String;
};