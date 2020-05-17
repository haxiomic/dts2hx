package global.jquery.jqxhr;

typedef DoneCallback<TResolve, TjqXHR> = (t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:TjqXHR, r:haxe.extern.Rest<Any>) -> Void;