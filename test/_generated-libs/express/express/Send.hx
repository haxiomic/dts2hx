package express;

typedef Send = ts.AnyOf2<() -> express_serve_static_core.Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>, (body:Dynamic) -> express_serve_static_core.Response<Dynamic, haxe.DynamicAccess<Dynamic>, Float>>;