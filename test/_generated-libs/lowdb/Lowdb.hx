@:jsRequire("lowdb") extern class Lowdb {
	@:overload(function<AdapterT>(adapter:AdapterT):lowdb.LowdbSync<Dynamic> { })
	@:selfCall
	static function call<AdapterT>(adapter:AdapterT):js.lib.Promise<lowdb.LowdbAsync<Dynamic>>;
}