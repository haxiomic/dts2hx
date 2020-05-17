package global.jquery.deferred;

typedef CallbackBase<T, U, V, R> = (t:T, u:U, v:V, r:haxe.extern.Rest<R>) -> Void;