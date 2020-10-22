package lowdb;

typedef Lowdb = {
	@:overload(function<AdapterT>(adapter:AdapterT):LowdbSync<Dynamic> { })
	@:selfCall
	function call<AdapterT>(adapter:AdapterT):js.lib.Promise<LowdbAsync<Dynamic>>;
};