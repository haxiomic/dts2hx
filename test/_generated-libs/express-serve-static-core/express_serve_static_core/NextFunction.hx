package express_serve_static_core;

typedef NextFunction = ts.AnyOf3<() -> Void, (err:Dynamic) -> Void, (deferToNext:String) -> Void>;