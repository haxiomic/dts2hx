package express_serve_static_core;

typedef NextFunction = ts.AnyOf4<() -> Void, (err:Dynamic) -> Void, (deferToNext:String) -> Void, (deferToNext:String) -> Void>;