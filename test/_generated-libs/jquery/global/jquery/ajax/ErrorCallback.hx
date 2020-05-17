package global.jquery.ajax;

typedef ErrorCallback<TContext> = (jqXHR:global.jquery.JqXHR<Dynamic>, textStatus:ErrorTextStatus, errorThrown:String) -> Void;