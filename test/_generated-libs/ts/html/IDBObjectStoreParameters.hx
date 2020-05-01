package ts.html;
extern typedef IDBObjectStoreParameters = {
	@:optional
	var autoIncrement : Bool;
	@:optional
	var keyPath : ts.AnyOf2<String, std.Array<String>>;
};