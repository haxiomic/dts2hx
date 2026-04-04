package global;

typedef JQueryPromiseCallback<T> = ts.AnyOf2<() -> Void, (value:T) -> Void>;