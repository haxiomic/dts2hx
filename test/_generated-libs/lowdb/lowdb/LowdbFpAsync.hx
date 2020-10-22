package lowdb;

typedef LowdbFpAsync<SchemaT> = {
	@:overload(function<TKey, TSubKey>(path:ts.Tuple2<TKey, TSubKey>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<TKey, TSubKey, TSubKey2>(path:ts.Tuple3<TKey, TSubKey, TSubKey2>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<TKey, TSubKey, TSubKey2, TSubKey3>(path:ts.Tuple4<TKey, TSubKey, TSubKey2, TSubKey3>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<TKey, TSubKey, TSubKey2, TSubKey3, TSubKey4>(path:ts.Tuple5<TKey, TSubKey, TSubKey2, TSubKey3, TSubKey4>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<T>(path:ts.AnyOf2<String, Array<String>>, ?defaultValue:T):FpReturnAsync<T> { })
	@:selfCall
	function call<TKey>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic>;
	function write<T>(?returnValue:T):js.lib.Promise<T>;
	dynamic function getState():SchemaT;
	dynamic function setState(state:SchemaT):LowdbFpAsync<SchemaT>;
};