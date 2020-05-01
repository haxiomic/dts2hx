package ts.html;
typedef IDBObjectStoreParameters = {
	@:optional
	var autoIncrement : Bool;
	@:optional
	var keyPath : ts.AnyOf2<String, std.Array<String>>;
};