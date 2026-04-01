package unit.unions_intersections.unionsintersections;

typedef CallbackOrValue<T> = ts.AnyOf2<(error:js.lib.Error) -> T, T>;