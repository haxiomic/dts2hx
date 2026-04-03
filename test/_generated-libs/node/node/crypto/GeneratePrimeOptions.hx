package node.crypto;

typedef GeneratePrimeOptions = {
	@:optional
	var add : LargeNumberLike;
	@:optional
	var rem : LargeNumberLike;
	@:optional
	var safe : Bool;
	@:optional
	var bigint : Bool;
};