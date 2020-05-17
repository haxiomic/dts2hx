package global.jquery.transport;

typedef SuccessCallback = ts.AnyOf3<(status:Float, statusText:global.jquery.ajax.TextStatus) -> Void, (status:Float, statusText:global.jquery.ajax.TextStatus, responses:global.jquery.PlainObject<Dynamic>) -> Void, (status:Float, statusText:global.jquery.ajax.TextStatus, responses:global.jquery.PlainObject<Dynamic>, headers:String) -> Void>;