@:jsRequire("lowdb") extern class Lowdb {
	@:overload(function<AdapterT:(lowdb.AdapterSync<Dynamic>)>(adapter:AdapterT):lowdb.LowdbSync<Dynamic> { })
	@:selfCall
	static function call<AdapterT:(lowdb.AdapterAsync<Dynamic>)>(adapter:AdapterT):js.lib.Promise<lowdb.LowdbAsync<Dynamic>>;
}