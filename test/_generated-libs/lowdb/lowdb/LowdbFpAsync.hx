package lowdb;

typedef LowdbFpAsync<SchemaT> = {
	@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple2<TKey, TSubKey>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple3<TKey, TSubKey, TSubKey2>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple4<TKey, TSubKey, TSubKey2, TSubKey3>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TSubKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple5<TKey, TSubKey, TSubKey2, TSubKey3, TSubKey4>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic> { })
	@:overload(function<T>(path:ts.AnyOf2<String, Array<String>>, ?defaultValue:T):FpReturnAsync<T> { })
	@:selfCall
	function call<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>, ?defaultValue:Dynamic):FpReturnAsync<Dynamic>;
	function write<T>(?returnValue:T):js.lib.Promise<T>;
	dynamic function getState():SchemaT;
	dynamic function setState(state:SchemaT):LowdbFpAsync<SchemaT>;
};