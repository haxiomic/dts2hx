package express;

typedef NextFunction = ts.AnyOf2<ts.AnyOf2<() -> Void, (err:Dynamic) -> Void>, (deferToNext:String) -> Void>;