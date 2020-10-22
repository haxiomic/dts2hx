package lowdb;

typedef LowdbFp = {
	@:overload(function<AdapterT>(adapter:AdapterT):LowdbFpSync<Dynamic> { })
	@:selfCall
	function call<AdapterT>(adapter:AdapterT):js.lib.Promise<LowdbFpAsync<Dynamic>>;
};