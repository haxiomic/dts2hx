package lowdb;

typedef Lowdb = ts.AnyOf2<(adapter:Any) -> js.lib.Promise<LowdbAsync<Dynamic>>, (adapter:Any) -> LowdbSync<Dynamic>>;