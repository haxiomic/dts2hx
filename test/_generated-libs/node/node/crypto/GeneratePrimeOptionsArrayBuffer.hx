package node.crypto;

typedef GeneratePrimeOptionsArrayBuffer = {
	@:optional
	var bigint : Bool;
	@:optional
	var add : LargeNumberLike;
	@:optional
	var rem : LargeNumberLike;
	@:optional
	var safe : Bool;
};