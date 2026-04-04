package global.jquery;

typedef CallbacksStatic = ts.AnyOf2<() -> Callbacks<Any>, (flags:String) -> Callbacks<Any>>;