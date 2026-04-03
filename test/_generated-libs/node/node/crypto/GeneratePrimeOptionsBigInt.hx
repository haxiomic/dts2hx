package node.crypto;

typedef GeneratePrimeOptionsBigInt = {
	var bigint : Bool;
	@:optional
	var add : LargeNumberLike;
	@:optional
	var rem : LargeNumberLike;
	@:optional
	var safe : Bool;
};