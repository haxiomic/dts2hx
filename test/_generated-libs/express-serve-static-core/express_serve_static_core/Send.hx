package express_serve_static_core;

typedef Send<ResBody, T> = ts.AnyOf2<() -> T, (body:ResBody) -> T>;