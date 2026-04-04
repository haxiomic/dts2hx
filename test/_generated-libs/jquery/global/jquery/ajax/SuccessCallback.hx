package global.jquery.ajax;

typedef SuccessCallback<TContext> = (data:Dynamic, textStatus:SuccessTextStatus, jqXHR:global.jquery.JqXHR<Dynamic>) -> Void;