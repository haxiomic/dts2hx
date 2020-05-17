package global.jquery.deferred;

typedef AlwaysCallback<TResolve, TReject> = (args:haxe.extern.Rest<ts.AnyOf2<TResolve, TReject>>) -> Void;