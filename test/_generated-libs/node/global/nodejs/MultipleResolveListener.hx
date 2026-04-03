package global.nodejs;

typedef MultipleResolveListener = (type:MultipleResolveType, promise:js.lib.Promise<Any>, value:Any) -> Void;