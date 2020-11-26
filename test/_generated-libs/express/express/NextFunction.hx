package express;

typedef NextFunction = ts.AnyOf3<() -> Void, (err:Dynamic) -> Void, (deferToNext:String) -> Void>;