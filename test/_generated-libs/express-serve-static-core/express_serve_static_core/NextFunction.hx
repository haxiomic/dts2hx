package express_serve_static_core;

typedef NextFunction = ts.AnyOf2<ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>, (deferToNext:String) -> Void>;