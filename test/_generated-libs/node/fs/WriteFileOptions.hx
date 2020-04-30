package node.fs;
typedef WriteFileOptions = Null<haxe.extern.EitherType<String, {
	@:optional
	var encoding : String;
	@:optional
	var mode : haxe.extern.EitherType<String, Float>;
	@:optional
	var flag : String;
}>>;