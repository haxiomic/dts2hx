package lowdb;

typedef LowdbFpSync<SchemaT> = {
	@:overload(function<TKey:(Dynamic), TSubKey:(Dynamic)>(path:ts.Tuple2<TKey, TSubKey>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<TKey:(Dynamic), TSubKey:(Dynamic), TSubKey2:(Dynamic)>(path:ts.Tuple3<TKey, TSubKey, TSubKey2>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<TKey:(Dynamic), TSubKey:(Dynamic), TSubKey2:(Dynamic), TSubKey3:(Dynamic)>(path:ts.Tuple4<TKey, TSubKey, TSubKey2, TSubKey3>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<TKey:(Dynamic), TSubKey:(Dynamic), TSubKey2:(Dynamic), TSubKey3:(Dynamic), TSubKey4:(Dynamic)>(path:ts.Tuple5<TKey, TSubKey, TSubKey2, TSubKey3, TSubKey4>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<T>(path:ts.AnyOf2<String, Array<String>>, ?defaultValue:T):FpReturnSync<T> { })
	@:selfCall
	function call<TKey:(Dynamic)>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, ?defaultValue:Dynamic):FpReturnSync<Dynamic>;
	function write<T>(?returnValue:T):T;
	dynamic function getState():SchemaT;
	dynamic function setState(state:SchemaT):LowdbFpSync<SchemaT>;
};