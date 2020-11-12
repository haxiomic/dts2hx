package lowdb;

typedef LowdbFp = ts.AnyOf2<(adapter:Any) -> js.lib.Promise<LowdbFpAsync<Dynamic>>, (adapter:Any) -> LowdbFpSync<Dynamic>>;