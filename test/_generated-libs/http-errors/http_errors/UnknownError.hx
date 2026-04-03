package http_errors;

typedef UnknownError = ts.AnyOf3<String, js.lib.Error, haxe.DynamicAccess<Dynamic>>;