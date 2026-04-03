package js.lib;

typedef PromiseSettledResult<T> = ts.AnyOf2<PromiseRejectedResult, PromiseFulfilledResult<T>>;