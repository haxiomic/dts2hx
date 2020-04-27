package js.html;
extern interface IDBObjectStoreParameters {
	@:optional
	var autoIncrement : Bool;
	@:optional
	var keyPath : haxe.extern.EitherType<String, std.Array<String>>;
}