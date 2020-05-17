package express;

typedef Send = ts.AnyOf2<() -> express_serve_static_core.Response<Dynamic>, (body:Dynamic) -> express_serve_static_core.Response<Dynamic>>;