package node.fs;

typedef WriteFileOptions = Null<ts.AnyOf2<String, {
	@:optional
	var encoding : String;
	@:optional
	var mode : ts.AnyOf2<String, Float>;
	@:optional
	var flag : String;
}>>;