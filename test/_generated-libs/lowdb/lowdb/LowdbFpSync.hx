package lowdb;

typedef LowdbFpSync<SchemaT> = {
	@:overload(function<TKey, TSubKey>(path:ts.Tuple2<TKey, TSubKey>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<TKey, TSubKey, TSubKey2>(path:ts.Tuple3<TKey, TSubKey, TSubKey2>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<TKey, TSubKey, TSubKey2, TSubKey3>(path:ts.Tuple4<TKey, TSubKey, TSubKey2, TSubKey3>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<TKey, TSubKey, TSubKey2, TSubKey3, TSubKey4>(path:ts.Tuple5<TKey, TSubKey, TSubKey2, TSubKey3, TSubKey4>, ?defaultValue:Dynamic):FpReturnSync<Dynamic> { })
	@:overload(function<T>(path:ts.AnyOf2<String, Array<String>>, ?defaultValue:T):FpReturnSync<T> { })
	@:selfCall
	function call<TKey>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, ?defaultValue:Dynamic):FpReturnSync<Dynamic>;
	function write<T>(?returnValue:T):T;
	dynamic function getState():SchemaT;
	dynamic function setState(state:SchemaT):LowdbFpSync<SchemaT>;
};